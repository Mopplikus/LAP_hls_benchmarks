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
// SystemVerilog created on Thu Apr 27 14:28:38 2023


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
    input wire [31:0] in_unnamed_covariance6_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance6_covariance_avm_readdatavalid,
    input wire [0:0] in_unnamed_covariance6_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance6_covariance_avm_writeack,
    input wire [31:0] in_unnamed_covariance7_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance7_covariance_avm_readdatavalid,
    input wire [0:0] in_unnamed_covariance7_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance7_covariance_avm_writeack,
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
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_covariance_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_covariance_B0_runOnce_out_valid_out_0;
    wire [0:0] bb_covariance_B10_out_c0_exe441623;
    wire [31:0] bb_covariance_B10_out_c0_exe842027;
    wire [0:0] bb_covariance_B10_out_stall_in_0;
    wire [0:0] bb_covariance_B10_out_stall_out_0;
    wire [0:0] bb_covariance_B10_out_valid_out_0;
    wire [0:0] bb_covariance_B11_out_c0_exe441624;
    wire [31:0] bb_covariance_B11_out_c0_exe842028;
    wire [0:0] bb_covariance_B11_out_c1_exe1369;
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
    wire [0:0] bb_covariance_B12_out_c0_exe10422;
    wire [0:0] bb_covariance_B12_out_c0_exe11423;
    wire [0:0] bb_covariance_B12_out_c0_exe12424;
    wire [63:0] bb_covariance_B12_out_c0_exe1413;
    wire [63:0] bb_covariance_B12_out_c0_exe2414;
    wire [0:0] bb_covariance_B12_out_c0_exe4416;
    wire [31:0] bb_covariance_B12_out_c0_exe5417;
    wire [31:0] bb_covariance_B12_out_c0_exe8420;
    wire [31:0] bb_covariance_B12_out_c0_exe9421;
    wire [0:0] bb_covariance_B12_out_profile_loop_o_valid;
    wire [0:0] bb_covariance_B12_out_stall_in_0;
    wire [0:0] bb_covariance_B12_out_stall_out_1;
    wire [31:0] bb_covariance_B12_out_unnamed_covariance6_covariance_avm_address;
    wire [0:0] bb_covariance_B12_out_unnamed_covariance6_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B12_out_unnamed_covariance6_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B12_out_unnamed_covariance6_covariance_avm_enable;
    wire [0:0] bb_covariance_B12_out_unnamed_covariance6_covariance_avm_read;
    wire [0:0] bb_covariance_B12_out_unnamed_covariance6_covariance_avm_write;
    wire [31:0] bb_covariance_B12_out_unnamed_covariance6_covariance_avm_writedata;
    wire [31:0] bb_covariance_B12_out_unnamed_covariance7_covariance_avm_address;
    wire [0:0] bb_covariance_B12_out_unnamed_covariance7_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B12_out_unnamed_covariance7_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B12_out_unnamed_covariance7_covariance_avm_enable;
    wire [0:0] bb_covariance_B12_out_unnamed_covariance7_covariance_avm_read;
    wire [0:0] bb_covariance_B12_out_unnamed_covariance7_covariance_avm_write;
    wire [31:0] bb_covariance_B12_out_unnamed_covariance7_covariance_avm_writedata;
    wire [0:0] bb_covariance_B12_out_valid_in_1;
    wire [0:0] bb_covariance_B12_out_valid_out_0;
    wire [0:0] bb_covariance_B13_out_feedback_out_17;
    wire [0:0] bb_covariance_B13_out_feedback_valid_out_17;
    wire [0:0] bb_covariance_B13_out_iowr_bl_return_covariance_o_fifodata;
    wire [0:0] bb_covariance_B13_out_iowr_bl_return_covariance_o_fifovalid;
    wire [0:0] bb_covariance_B13_out_stall_in_0;
    wire [0:0] bb_covariance_B13_out_stall_out_0;
    wire [0:0] bb_covariance_B13_out_valid_out_0;
    wire [0:0] bb_covariance_B13_out_wgl_7_exit_exit_stall_in;
    wire [0:0] bb_covariance_B13_out_wgl_7_exit_exit_valid_in;
    wire [31:0] bb_covariance_B1_start_out_c1_exe1;
    wire [0:0] bb_covariance_B1_start_out_feedback_stall_out_16;
    wire [0:0] bb_covariance_B1_start_out_feedback_stall_out_17;
    wire [0:0] bb_covariance_B1_start_out_iord_bl_call_covariance_o_fifoalmost_full;
    wire [0:0] bb_covariance_B1_start_out_iord_bl_call_covariance_o_fifoready;
    wire [0:0] bb_covariance_B1_start_out_memdep_phi1_pop16;
    wire [0:0] bb_covariance_B1_start_out_memdep_phi2_pop17;
    wire [0:0] bb_covariance_B1_start_out_profile_loop_o_valid;
    wire [0:0] bb_covariance_B1_start_out_stall_out_1;
    wire [0:0] bb_covariance_B1_start_out_valid_in_1;
    wire [0:0] bb_covariance_B1_start_out_valid_out_0;
    wire [31:0] bb_covariance_B2_out_c0_exe427915;
    wire [0:0] bb_covariance_B2_out_feedback_out_16;
    wire [0:0] bb_covariance_B2_out_feedback_valid_out_16;
    wire [31:0] bb_covariance_B2_out_reorder_limiter_enter;
    wire [0:0] bb_covariance_B2_out_stall_out_0;
    wire [0:0] bb_covariance_B2_out_valid_out_0;
    wire [0:0] bb_covariance_B2_out_wgl_7_enter_exit_stall_out;
    wire [0:0] bb_covariance_B2_out_wgl_7_enter_exit_valid_out;
    wire [0:0] bb_covariance_B3_out_c0_exe10;
    wire [0:0] bb_covariance_B3_out_c0_exe11;
    wire [0:0] bb_covariance_B3_out_c0_exe1194;
    wire [0:0] bb_covariance_B3_out_c0_exe12;
    wire [0:0] bb_covariance_B3_out_c0_exe2195;
    wire [31:0] bb_covariance_B3_out_c0_exe3;
    wire [31:0] bb_covariance_B3_out_c0_exe4;
    wire [0:0] bb_covariance_B3_out_c0_exe5;
    wire [0:0] bb_covariance_B3_out_c0_exe6;
    wire [0:0] bb_covariance_B3_out_c0_exe7;
    wire [31:0] bb_covariance_B3_out_c0_exe9;
    wire [0:0] bb_covariance_B3_out_feedback_stall_out_22;
    wire [0:0] bb_covariance_B3_out_memdep_phi_pop22;
    wire [0:0] bb_covariance_B3_out_profile_loop_o_valid;
    wire [0:0] bb_covariance_B3_out_stall_out_1;
    wire [0:0] bb_covariance_B3_out_valid_in_1;
    wire [0:0] bb_covariance_B3_out_valid_out_0;
    wire [0:0] bb_covariance_B4_out_c0_exe102358;
    wire [31:0] bb_covariance_B4_out_c0_exe112369;
    wire [31:0] bb_covariance_B4_out_c0_exe1201;
    wire [0:0] bb_covariance_B4_out_c0_exe1223710;
    wire [63:0] bb_covariance_B4_out_c0_exe12261;
    wire [0:0] bb_covariance_B4_out_c0_exe1311;
    wire [0:0] bb_covariance_B4_out_c0_exe1412;
    wire [0:0] bb_covariance_B4_out_c0_exe22272;
    wire [31:0] bb_covariance_B4_out_c0_exe62314;
    wire [0:0] bb_covariance_B4_out_c0_exe72325;
    wire [0:0] bb_covariance_B4_out_c0_exe82336;
    wire [0:0] bb_covariance_B4_out_c0_exe92347;
    wire [0:0] bb_covariance_B4_out_stall_out_0;
    wire [0:0] bb_covariance_B4_out_valid_out_0;
    wire [0:0] bb_covariance_B5_out_c0_exe10235;
    wire [31:0] bb_covariance_B5_out_c0_exe11236;
    wire [0:0] bb_covariance_B5_out_c0_exe12237;
    wire [63:0] bb_covariance_B5_out_c0_exe1226;
    wire [0:0] bb_covariance_B5_out_c0_exe13;
    wire [0:0] bb_covariance_B5_out_c0_exe14;
    wire [0:0] bb_covariance_B5_out_c0_exe2227;
    wire [31:0] bb_covariance_B5_out_c0_exe3228;
    wire [31:0] bb_covariance_B5_out_c0_exe6231;
    wire [0:0] bb_covariance_B5_out_c0_exe7232;
    wire [0:0] bb_covariance_B5_out_c0_exe8233;
    wire [0:0] bb_covariance_B5_out_c0_exe9234;
    wire [0:0] bb_covariance_B5_out_profile_loop_o_valid;
    wire [0:0] bb_covariance_B5_out_stall_in_0;
    wire [0:0] bb_covariance_B5_out_stall_out_1;
    wire [31:0] bb_covariance_B5_out_unnamed_covariance2_covariance_avm_address;
    wire [0:0] bb_covariance_B5_out_unnamed_covariance2_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B5_out_unnamed_covariance2_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B5_out_unnamed_covariance2_covariance_avm_enable;
    wire [0:0] bb_covariance_B5_out_unnamed_covariance2_covariance_avm_read;
    wire [0:0] bb_covariance_B5_out_unnamed_covariance2_covariance_avm_write;
    wire [31:0] bb_covariance_B5_out_unnamed_covariance2_covariance_avm_writedata;
    wire [0:0] bb_covariance_B5_out_valid_in_1;
    wire [0:0] bb_covariance_B5_out_valid_out_0;
    wire [0:0] bb_covariance_B6_out_c0_exe127613;
    wire [31:0] bb_covariance_B6_out_c0_exe427916;
    wire [0:0] bb_covariance_B6_out_feedback_out_22;
    wire [0:0] bb_covariance_B6_out_feedback_valid_out_22;
    wire [0:0] bb_covariance_B6_out_stall_in_0;
    wire [0:0] bb_covariance_B6_out_stall_out_0;
    wire [0:0] bb_covariance_B6_out_valid_out_0;
    wire [0:0] bb_covariance_B7_out_c0_exe1276;
    wire [31:0] bb_covariance_B7_out_c0_exe4279;
    wire [0:0] bb_covariance_B7_out_c0_exe5280;
    wire [0:0] bb_covariance_B7_out_c0_exe6281;
    wire [31:0] bb_covariance_B7_out_memdep_covariance_avm_address;
    wire [0:0] bb_covariance_B7_out_memdep_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B7_out_memdep_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B7_out_memdep_covariance_avm_enable;
    wire [0:0] bb_covariance_B7_out_memdep_covariance_avm_read;
    wire [0:0] bb_covariance_B7_out_memdep_covariance_avm_write;
    wire [31:0] bb_covariance_B7_out_memdep_covariance_avm_writedata;
    wire [0:0] bb_covariance_B7_out_profile_loop_o_valid;
    wire [0:0] bb_covariance_B7_out_stall_in_0;
    wire [0:0] bb_covariance_B7_out_stall_out_1;
    wire [31:0] bb_covariance_B7_out_unnamed_covariance3_covariance_avm_address;
    wire [0:0] bb_covariance_B7_out_unnamed_covariance3_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B7_out_unnamed_covariance3_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B7_out_unnamed_covariance3_covariance_avm_enable;
    wire [0:0] bb_covariance_B7_out_unnamed_covariance3_covariance_avm_read;
    wire [0:0] bb_covariance_B7_out_unnamed_covariance3_covariance_avm_write;
    wire [31:0] bb_covariance_B7_out_unnamed_covariance3_covariance_avm_writedata;
    wire [0:0] bb_covariance_B7_out_valid_in_1;
    wire [0:0] bb_covariance_B7_out_valid_out_0;
    wire [32:0] bb_covariance_B8_out_c0_exe1302;
    wire [0:0] bb_covariance_B8_out_c0_exe3304;
    wire [31:0] bb_covariance_B8_out_c0_exe4305;
    wire [31:0] bb_covariance_B8_out_c0_exe5306;
    wire [31:0] bb_covariance_B8_out_c0_exe6307;
    wire [31:0] bb_covariance_B8_out_c0_exe7308;
    wire [31:0] bb_covariance_B8_out_c0_exe8309;
    wire [0:0] bb_covariance_B8_out_profile_loop_o_valid;
    wire [0:0] bb_covariance_B8_out_stall_out_1;
    wire [0:0] bb_covariance_B8_out_valid_in_1;
    wire [0:0] bb_covariance_B8_out_valid_out_0;
    wire [31:0] bb_covariance_B9_out_c0_exe10351;
    wire [32:0] bb_covariance_B9_out_c0_exe11352;
    wire [0:0] bb_covariance_B9_out_c0_exe12353;
    wire [31:0] bb_covariance_B9_out_c0_exe13354;
    wire [31:0] bb_covariance_B9_out_c0_exe14355;
    wire [31:0] bb_covariance_B9_out_c0_exe15;
    wire [0:0] bb_covariance_B9_out_c0_exe2343;
    wire [31:0] bb_covariance_B9_out_c0_exe3344;
    wire [31:0] bb_covariance_B9_out_c0_exe4345;
    wire [31:0] bb_covariance_B9_out_c0_exe5346;
    wire [0:0] bb_covariance_B9_out_c0_exe6347;
    wire [31:0] bb_covariance_B9_out_c0_exe7348;
    wire [0:0] bb_covariance_B9_out_c0_exe8349;
    wire [31:0] bb_covariance_B9_out_c0_exe9350;
    wire [0:0] bb_covariance_B9_out_profile_loop_o_valid;
    wire [0:0] bb_covariance_B9_out_stall_out_1;
    wire [0:0] bb_covariance_B9_out_valid_in_1;
    wire [0:0] bb_covariance_B9_out_valid_out_0;
    wire [31:0] c_i32_undef113_q;
    wire [32:0] c_i33_undef117_q;
    wire [63:0] c_i64_undef66_q;
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
    wire [31:0] bb_covariance_B12_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_covariance_B12_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [32:0] bb_covariance_B12_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_covariance_B12_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_covariance_B12_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_covariance_B12_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_covariance_B12_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_covariance_B12_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_covariance_B12_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [31:0] bb_covariance_B12_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_covariance_B12_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [31:0] bb_covariance_B12_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_covariance_B12_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [31:0] bb_covariance_B12_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [0:0] bb_covariance_B13_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B13_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_covariance_B13_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_covariance_B13_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_covariance_B1_start_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B1_start_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_covariance_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B2_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_covariance_B2_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_covariance_B2_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_covariance_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B3_sr_1_aunroll_x_out_o_valid;
    wire [31:0] bb_covariance_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_covariance_B3_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_covariance_B3_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_covariance_B3_sr_1_aunroll_x_out_o_data_3_tpl;
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
    wire [31:0] bb_covariance_B5_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_covariance_B5_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_covariance_B5_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_covariance_B5_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_covariance_B5_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_covariance_B5_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_covariance_B5_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_covariance_B5_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [31:0] bb_covariance_B5_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_covariance_B5_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_covariance_B5_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_covariance_B5_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_covariance_B6_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B6_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_covariance_B6_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_covariance_B6_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_covariance_B6_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_covariance_B6_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_covariance_B7_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B7_sr_1_aunroll_x_out_o_valid;
    wire [31:0] bb_covariance_B7_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_covariance_B7_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_covariance_B7_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_covariance_B7_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_covariance_B7_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [63:0] bb_covariance_B7_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_covariance_B7_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_covariance_B7_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_covariance_B7_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_covariance_B7_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_covariance_B7_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_covariance_B7_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_covariance_B8_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B8_sr_1_aunroll_x_out_o_valid;
    wire [31:0] bb_covariance_B8_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_covariance_B8_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_covariance_B9_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B9_sr_1_aunroll_x_out_o_valid;
    wire [31:0] bb_covariance_B9_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_covariance_B9_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [32:0] bb_covariance_B9_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_covariance_B9_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_covariance_B9_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_covariance_B9_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_covariance_B9_sr_1_aunroll_x_out_o_data_6_tpl;
    reg [0:0] rst_sync_rst_sclrn;


    // bb_covariance_B6_sr_0_aunroll_x(BLACKBOX,195)
    covariance_bb_B6_sr_0 thebb_covariance_B6_sr_0_aunroll_x (
        .in_i_stall(bb_covariance_B6_out_stall_out_0),
        .in_i_valid(bb_covariance_B7_out_valid_out_0),
        .in_i_data_0_tpl(bb_covariance_B7_out_c0_exe1276),
        .in_i_data_1_tpl(bb_covariance_B7_out_c0_exe4279),
        .in_i_data_2_tpl(bb_covariance_B7_out_c0_exe5280),
        .in_i_data_3_tpl(bb_covariance_B7_out_c0_exe6281),
        .out_o_stall(bb_covariance_B6_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B6_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_covariance_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_covariance_B6_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_covariance_B6_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_covariance_B6_sr_0_aunroll_x_out_o_data_3_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // c_i64_undef66(CONSTANT,95)
    assign c_i64_undef66_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // bb_covariance_B7(BLACKBOX,13)
    covariance_bb_B7 thebb_covariance_B7 (
        .in_exitcond1072_pop39134_0(GND_q),
        .in_exitcond1072_pop39134_1(bb_covariance_B7_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_flush(in_start),
        .in_idxprom7123_0(c_i64_undef66_q),
        .in_idxprom7123_1(bb_covariance_B7_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_lim_ext53_pop35128_0(c_i32_undef113_q),
        .in_lim_ext53_pop35128_1(bb_covariance_B7_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_lim_ext91_0(c_i32_undef113_q),
        .in_lim_ext91_1(bb_covariance_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_memdep_covariance_avm_readdata(in_memdep_covariance_avm_readdata),
        .in_memdep_covariance_avm_readdatavalid(in_memdep_covariance_avm_readdatavalid),
        .in_memdep_covariance_avm_waitrequest(in_memdep_covariance_avm_waitrequest),
        .in_memdep_covariance_avm_writeack(in_memdep_covariance_avm_writeack),
        .in_memdep_phi1_pop1659_pop36125_0(GND_q),
        .in_memdep_phi1_pop1659_pop36125_1(bb_covariance_B7_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_memdep_phi1_pop1696_0(GND_q),
        .in_memdep_phi1_pop1696_1(bb_covariance_B7_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_memdep_phi2_pop17101_0(GND_q),
        .in_memdep_phi2_pop17101_1(bb_covariance_B7_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_memdep_phi2_pop1762_pop37130_0(GND_q),
        .in_memdep_phi2_pop1762_pop37130_1(bb_covariance_B7_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_memdep_phi4_pop18106_0(GND_q),
        .in_memdep_phi4_pop18106_1(bb_covariance_B7_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_memdep_phi4_pop1865_pop38132_0(GND_q),
        .in_memdep_phi4_pop1865_pop38132_1(bb_covariance_B7_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_mul122_0(c_i32_undef113_q),
        .in_mul122_1(bb_covariance_B7_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_notcmp4374_pop40136_0(GND_q),
        .in_notcmp4374_pop40136_1(bb_covariance_B7_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_stall_in_0(bb_covariance_B6_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_covariance3_covariance_avm_readdata(in_unnamed_covariance3_covariance_avm_readdata),
        .in_unnamed_covariance3_covariance_avm_readdatavalid(in_unnamed_covariance3_covariance_avm_readdatavalid),
        .in_unnamed_covariance3_covariance_avm_waitrequest(in_unnamed_covariance3_covariance_avm_waitrequest),
        .in_unnamed_covariance3_covariance_avm_writeack(in_unnamed_covariance3_covariance_avm_writeack),
        .in_valid_in_0(GND_q),
        .in_valid_in_1(bb_covariance_B7_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe1276(bb_covariance_B7_out_c0_exe1276),
        .out_c0_exe4279(bb_covariance_B7_out_c0_exe4279),
        .out_c0_exe5280(bb_covariance_B7_out_c0_exe5280),
        .out_c0_exe6281(bb_covariance_B7_out_c0_exe6281),
        .out_memdep_covariance_avm_address(bb_covariance_B7_out_memdep_covariance_avm_address),
        .out_memdep_covariance_avm_burstcount(bb_covariance_B7_out_memdep_covariance_avm_burstcount),
        .out_memdep_covariance_avm_byteenable(bb_covariance_B7_out_memdep_covariance_avm_byteenable),
        .out_memdep_covariance_avm_enable(bb_covariance_B7_out_memdep_covariance_avm_enable),
        .out_memdep_covariance_avm_read(bb_covariance_B7_out_memdep_covariance_avm_read),
        .out_memdep_covariance_avm_write(bb_covariance_B7_out_memdep_covariance_avm_write),
        .out_memdep_covariance_avm_writedata(bb_covariance_B7_out_memdep_covariance_avm_writedata),
        .out_profile_loop_o_valid(bb_covariance_B7_out_profile_loop_o_valid),
        .out_stall_in_0(bb_covariance_B7_out_stall_in_0),
        .out_stall_out_0(),
        .out_stall_out_1(bb_covariance_B7_out_stall_out_1),
        .out_unnamed_covariance3_covariance_avm_address(bb_covariance_B7_out_unnamed_covariance3_covariance_avm_address),
        .out_unnamed_covariance3_covariance_avm_burstcount(bb_covariance_B7_out_unnamed_covariance3_covariance_avm_burstcount),
        .out_unnamed_covariance3_covariance_avm_byteenable(bb_covariance_B7_out_unnamed_covariance3_covariance_avm_byteenable),
        .out_unnamed_covariance3_covariance_avm_enable(bb_covariance_B7_out_unnamed_covariance3_covariance_avm_enable),
        .out_unnamed_covariance3_covariance_avm_read(bb_covariance_B7_out_unnamed_covariance3_covariance_avm_read),
        .out_unnamed_covariance3_covariance_avm_write(bb_covariance_B7_out_unnamed_covariance3_covariance_avm_write),
        .out_unnamed_covariance3_covariance_avm_writedata(bb_covariance_B7_out_unnamed_covariance3_covariance_avm_writedata),
        .out_valid_in_1(bb_covariance_B7_out_valid_in_1),
        .out_valid_out_0(bb_covariance_B7_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B7_sr_1_aunroll_x(BLACKBOX,196)
    covariance_bb_B7_sr_1 thebb_covariance_B7_sr_1_aunroll_x (
        .in_i_stall(bb_covariance_B7_out_stall_out_1),
        .in_i_valid(bb_covariance_B4_out_valid_out_0),
        .in_i_data_0_tpl(bb_covariance_B4_out_c0_exe112369),
        .in_i_data_1_tpl(bb_covariance_B4_out_c0_exe1223710),
        .in_i_data_2_tpl(bb_covariance_B4_out_c0_exe1311),
        .in_i_data_3_tpl(bb_covariance_B4_out_c0_exe1412),
        .in_i_data_4_tpl(bb_covariance_B4_out_c0_exe1201),
        .in_i_data_5_tpl(bb_covariance_B4_out_c0_exe12261),
        .in_i_data_6_tpl(bb_covariance_B4_out_c0_exe22272),
        .in_i_data_7_tpl(bb_covariance_B4_out_c0_exe62314),
        .in_i_data_8_tpl(bb_covariance_B4_out_c0_exe72325),
        .in_i_data_9_tpl(bb_covariance_B4_out_c0_exe82336),
        .in_i_data_10_tpl(bb_covariance_B4_out_c0_exe92347),
        .in_i_data_11_tpl(bb_covariance_B4_out_c0_exe102358),
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
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bb_covariance_B4(BLACKBOX,10)
    covariance_bb_B4 thebb_covariance_B4 (
        .in_c0_exe102358_0(bb_covariance_B4_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_c0_exe112369_0(bb_covariance_B4_sr_0_aunroll_x_out_o_data_8_tpl),
        .in_c0_exe1223710_0(bb_covariance_B4_sr_0_aunroll_x_out_o_data_9_tpl),
        .in_c0_exe12261_0(bb_covariance_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe1311_0(bb_covariance_B4_sr_0_aunroll_x_out_o_data_10_tpl),
        .in_c0_exe1412_0(bb_covariance_B4_sr_0_aunroll_x_out_o_data_11_tpl),
        .in_c0_exe22272_0(bb_covariance_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe32283_0(bb_covariance_B4_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe62314_0(bb_covariance_B4_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe72325_0(bb_covariance_B4_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe82336_0(bb_covariance_B4_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe92347_0(bb_covariance_B4_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_stall_in_0(bb_covariance_B7_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(bb_covariance_B4_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe102358(bb_covariance_B4_out_c0_exe102358),
        .out_c0_exe112369(bb_covariance_B4_out_c0_exe112369),
        .out_c0_exe1201(bb_covariance_B4_out_c0_exe1201),
        .out_c0_exe1223710(bb_covariance_B4_out_c0_exe1223710),
        .out_c0_exe12261(bb_covariance_B4_out_c0_exe12261),
        .out_c0_exe1311(bb_covariance_B4_out_c0_exe1311),
        .out_c0_exe1412(bb_covariance_B4_out_c0_exe1412),
        .out_c0_exe22272(bb_covariance_B4_out_c0_exe22272),
        .out_c0_exe62314(bb_covariance_B4_out_c0_exe62314),
        .out_c0_exe72325(bb_covariance_B4_out_c0_exe72325),
        .out_c0_exe82336(bb_covariance_B4_out_c0_exe82336),
        .out_c0_exe92347(bb_covariance_B4_out_c0_exe92347),
        .out_stall_out_0(bb_covariance_B4_out_stall_out_0),
        .out_valid_out_0(bb_covariance_B4_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B4_sr_0_aunroll_x(BLACKBOX,193)
    covariance_bb_B4_sr_0 thebb_covariance_B4_sr_0_aunroll_x (
        .in_i_stall(bb_covariance_B4_out_stall_out_0),
        .in_i_valid(bb_covariance_B5_out_valid_out_0),
        .in_i_data_0_tpl(bb_covariance_B5_out_c0_exe1226),
        .in_i_data_1_tpl(bb_covariance_B5_out_c0_exe2227),
        .in_i_data_2_tpl(bb_covariance_B5_out_c0_exe3228),
        .in_i_data_3_tpl(bb_covariance_B5_out_c0_exe6231),
        .in_i_data_4_tpl(bb_covariance_B5_out_c0_exe7232),
        .in_i_data_5_tpl(bb_covariance_B5_out_c0_exe8233),
        .in_i_data_6_tpl(bb_covariance_B5_out_c0_exe9234),
        .in_i_data_7_tpl(bb_covariance_B5_out_c0_exe10235),
        .in_i_data_8_tpl(bb_covariance_B5_out_c0_exe11236),
        .in_i_data_9_tpl(bb_covariance_B5_out_c0_exe12237),
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
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bb_covariance_B5(BLACKBOX,11)
    covariance_bb_B5 thebb_covariance_B5 (
        .in_exitcond10114_0(GND_q),
        .in_exitcond10114_1(bb_covariance_B5_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_flush(in_start),
        .in_j_039_pop21116_0(c_i32_undef113_q),
        .in_j_039_pop21116_1(bb_covariance_B5_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_lim_ext52_pop23118_0(c_i32_undef113_q),
        .in_lim_ext52_pop23118_1(bb_covariance_B5_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_lim_ext93_0(c_i32_undef113_q),
        .in_lim_ext93_1(bb_covariance_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_memdep_phi1_pop1658_pop24119_0(GND_q),
        .in_memdep_phi1_pop1658_pop24119_1(bb_covariance_B5_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_memdep_phi1_pop1698_0(GND_q),
        .in_memdep_phi1_pop1698_1(bb_covariance_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_memdep_phi2_pop17103_0(GND_q),
        .in_memdep_phi2_pop17103_1(bb_covariance_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_memdep_phi2_pop1761_pop25120_0(GND_q),
        .in_memdep_phi2_pop1761_pop25120_1(bb_covariance_B5_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_memdep_phi4_pop18108_0(GND_q),
        .in_memdep_phi4_pop18108_1(bb_covariance_B5_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_memdep_phi4_pop1864_pop26121_0(GND_q),
        .in_memdep_phi4_pop1864_pop26121_1(bb_covariance_B5_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_memdep_phi_pop22117_0(GND_q),
        .in_memdep_phi_pop22117_1(bb_covariance_B5_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_notcmp43115_0(GND_q),
        .in_notcmp43115_1(bb_covariance_B5_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_stall_in_0(bb_covariance_B4_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_covariance2_covariance_avm_readdata(in_unnamed_covariance2_covariance_avm_readdata),
        .in_unnamed_covariance2_covariance_avm_readdatavalid(in_unnamed_covariance2_covariance_avm_readdatavalid),
        .in_unnamed_covariance2_covariance_avm_waitrequest(in_unnamed_covariance2_covariance_avm_waitrequest),
        .in_unnamed_covariance2_covariance_avm_writeack(in_unnamed_covariance2_covariance_avm_writeack),
        .in_valid_in_0(GND_q),
        .in_valid_in_1(bb_covariance_B5_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10235(bb_covariance_B5_out_c0_exe10235),
        .out_c0_exe11236(bb_covariance_B5_out_c0_exe11236),
        .out_c0_exe12237(bb_covariance_B5_out_c0_exe12237),
        .out_c0_exe1226(bb_covariance_B5_out_c0_exe1226),
        .out_c0_exe13(bb_covariance_B5_out_c0_exe13),
        .out_c0_exe14(bb_covariance_B5_out_c0_exe14),
        .out_c0_exe2227(bb_covariance_B5_out_c0_exe2227),
        .out_c0_exe3228(bb_covariance_B5_out_c0_exe3228),
        .out_c0_exe6231(bb_covariance_B5_out_c0_exe6231),
        .out_c0_exe7232(bb_covariance_B5_out_c0_exe7232),
        .out_c0_exe8233(bb_covariance_B5_out_c0_exe8233),
        .out_c0_exe9234(bb_covariance_B5_out_c0_exe9234),
        .out_profile_loop_o_valid(bb_covariance_B5_out_profile_loop_o_valid),
        .out_stall_in_0(bb_covariance_B5_out_stall_in_0),
        .out_stall_out_0(),
        .out_stall_out_1(bb_covariance_B5_out_stall_out_1),
        .out_unnamed_covariance2_covariance_avm_address(bb_covariance_B5_out_unnamed_covariance2_covariance_avm_address),
        .out_unnamed_covariance2_covariance_avm_burstcount(bb_covariance_B5_out_unnamed_covariance2_covariance_avm_burstcount),
        .out_unnamed_covariance2_covariance_avm_byteenable(bb_covariance_B5_out_unnamed_covariance2_covariance_avm_byteenable),
        .out_unnamed_covariance2_covariance_avm_enable(bb_covariance_B5_out_unnamed_covariance2_covariance_avm_enable),
        .out_unnamed_covariance2_covariance_avm_read(bb_covariance_B5_out_unnamed_covariance2_covariance_avm_read),
        .out_unnamed_covariance2_covariance_avm_write(bb_covariance_B5_out_unnamed_covariance2_covariance_avm_write),
        .out_unnamed_covariance2_covariance_avm_writedata(bb_covariance_B5_out_unnamed_covariance2_covariance_avm_writedata),
        .out_valid_in_1(bb_covariance_B5_out_valid_in_1),
        .out_valid_out_0(bb_covariance_B5_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B5_sr_1_aunroll_x(BLACKBOX,194)
    covariance_bb_B5_sr_1 thebb_covariance_B5_sr_1_aunroll_x (
        .in_i_stall(bb_covariance_B5_out_stall_out_1),
        .in_i_valid(bb_covariance_B3_out_valid_out_0),
        .in_i_data_0_tpl(bb_covariance_B3_out_c0_exe9),
        .in_i_data_1_tpl(bb_covariance_B3_out_c0_exe10),
        .in_i_data_2_tpl(bb_covariance_B3_out_c0_exe11),
        .in_i_data_3_tpl(bb_covariance_B3_out_c0_exe12),
        .in_i_data_4_tpl(bb_covariance_B3_out_c0_exe1194),
        .in_i_data_5_tpl(bb_covariance_B3_out_c0_exe2195),
        .in_i_data_6_tpl(bb_covariance_B3_out_c0_exe3),
        .in_i_data_7_tpl(bb_covariance_B3_out_memdep_phi_pop22),
        .in_i_data_8_tpl(bb_covariance_B3_out_c0_exe4),
        .in_i_data_9_tpl(bb_covariance_B3_out_c0_exe5),
        .in_i_data_10_tpl(bb_covariance_B3_out_c0_exe6),
        .in_i_data_11_tpl(bb_covariance_B3_out_c0_exe7),
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
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // c_i32_undef113(CONSTANT,70)
    assign c_i32_undef113_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_covariance_B2_sr_0_aunroll_x(BLACKBOX,191)
    covariance_bb_B2_sr_0 thebb_covariance_B2_sr_0_aunroll_x (
        .in_i_stall(bb_covariance_B2_out_stall_out_0),
        .in_i_valid(bb_covariance_B6_out_valid_out_0),
        .in_i_data_0_tpl(bb_covariance_B6_out_c0_exe127613),
        .in_i_data_1_tpl(bb_covariance_B6_out_c0_exe427916),
        .out_o_stall(bb_covariance_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B2_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_covariance_B2_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_covariance_B2_sr_0_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bb_covariance_B6(BLACKBOX,12)
    covariance_bb_B6 thebb_covariance_B6 (
        .in_c0_exe127613_0(bb_covariance_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe427916_0(bb_covariance_B6_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe528017_0(bb_covariance_B6_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe628118_0(bb_covariance_B6_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_feedback_stall_in_22(bb_covariance_B3_out_feedback_stall_out_22),
        .in_stall_in_0(bb_covariance_B2_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_covariance_B6_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe127613(bb_covariance_B6_out_c0_exe127613),
        .out_c0_exe427916(bb_covariance_B6_out_c0_exe427916),
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
        .in_lim_ext89_0(c_i32_undef113_q),
        .in_lim_ext89_1(bb_covariance_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_memdep_phi1_pop1694_0(GND_q),
        .in_memdep_phi1_pop1694_1(bb_covariance_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_memdep_phi2_pop1799_0(GND_q),
        .in_memdep_phi2_pop1799_1(bb_covariance_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_memdep_phi4_pop18104_0(GND_q),
        .in_memdep_phi4_pop18104_1(bb_covariance_B3_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_stall_in_0(bb_covariance_B5_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(GND_q),
        .in_valid_in_1(bb_covariance_B3_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10(bb_covariance_B3_out_c0_exe10),
        .out_c0_exe11(bb_covariance_B3_out_c0_exe11),
        .out_c0_exe1194(bb_covariance_B3_out_c0_exe1194),
        .out_c0_exe12(bb_covariance_B3_out_c0_exe12),
        .out_c0_exe2195(bb_covariance_B3_out_c0_exe2195),
        .out_c0_exe3(bb_covariance_B3_out_c0_exe3),
        .out_c0_exe4(bb_covariance_B3_out_c0_exe4),
        .out_c0_exe5(bb_covariance_B3_out_c0_exe5),
        .out_c0_exe6(bb_covariance_B3_out_c0_exe6),
        .out_c0_exe7(bb_covariance_B3_out_c0_exe7),
        .out_c0_exe9(bb_covariance_B3_out_c0_exe9),
        .out_feedback_stall_out_22(bb_covariance_B3_out_feedback_stall_out_22),
        .out_memdep_phi_pop22(bb_covariance_B3_out_memdep_phi_pop22),
        .out_profile_loop_o_valid(bb_covariance_B3_out_profile_loop_o_valid),
        .out_stall_out_0(),
        .out_stall_out_1(bb_covariance_B3_out_stall_out_1),
        .out_valid_in_1(bb_covariance_B3_out_valid_in_1),
        .out_valid_out_0(bb_covariance_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B3_sr_1_aunroll_x(BLACKBOX,192)
    covariance_bb_B3_sr_1 thebb_covariance_B3_sr_1_aunroll_x (
        .in_i_stall(bb_covariance_B3_out_stall_out_1),
        .in_i_valid(bb_covariance_B1_start_out_valid_out_0),
        .in_i_data_0_tpl(bb_covariance_B1_start_out_c1_exe1),
        .in_i_data_1_tpl(bb_covariance_B1_start_out_memdep_phi1_pop16),
        .in_i_data_2_tpl(bb_covariance_B1_start_out_memdep_phi2_pop17),
        .in_i_data_3_tpl(bb_covariance_B1_start_out_memdep_phi2_pop17),
        .out_o_stall(bb_covariance_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B3_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_covariance_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_covariance_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_covariance_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_covariance_B3_sr_1_aunroll_x_out_o_data_3_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bb_covariance_B13_sr_0_aunroll_x(BLACKBOX,189)
    covariance_bb_B13_sr_0 thebb_covariance_B13_sr_0_aunroll_x (
        .in_i_stall(bb_covariance_B13_out_stall_out_0),
        .in_i_valid(bb_covariance_B10_out_valid_out_0),
        .in_i_data_0_tpl(bb_covariance_B10_out_c0_exe441623),
        .in_i_data_1_tpl(bb_covariance_B10_out_c0_exe842027),
        .out_o_stall(bb_covariance_B13_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B13_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_covariance_B13_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_covariance_B13_sr_0_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bb_covariance_B10(BLACKBOX,3)
    covariance_bb_B10 thebb_covariance_B10 (
        .in_c0_exe441623_0(bb_covariance_B10_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe842027_0(bb_covariance_B10_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c1_exe136919_0(bb_covariance_B10_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(bb_covariance_B13_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_covariance_B10_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe441623(bb_covariance_B10_out_c0_exe441623),
        .out_c0_exe842027(bb_covariance_B10_out_c0_exe842027),
        .out_stall_in_0(bb_covariance_B10_out_stall_in_0),
        .out_stall_out_0(bb_covariance_B10_out_stall_out_0),
        .out_valid_out_0(bb_covariance_B10_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B10_sr_0_aunroll_x(BLACKBOX,186)
    covariance_bb_B10_sr_0 thebb_covariance_B10_sr_0_aunroll_x (
        .in_i_stall(bb_covariance_B10_out_stall_out_0),
        .in_i_valid(bb_covariance_B11_out_valid_out_0),
        .in_i_data_0_tpl(bb_covariance_B11_out_c1_exe1369),
        .in_i_data_1_tpl(bb_covariance_B11_out_c0_exe441624),
        .in_i_data_2_tpl(bb_covariance_B11_out_c0_exe842028),
        .out_o_stall(bb_covariance_B10_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B10_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_covariance_B10_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_covariance_B10_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_covariance_B10_sr_0_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bb_covariance_B11(BLACKBOX,4)
    covariance_bb_B11 thebb_covariance_B11 (
        .in_c0_exe1042230_0(bb_covariance_B11_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_c0_exe1142331_0(bb_covariance_B11_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_c0_exe1242432_0(bb_covariance_B11_sr_0_aunroll_x_out_o_data_8_tpl),
        .in_c0_exe141320_0(bb_covariance_B11_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe241421_0(bb_covariance_B11_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe441624_0(bb_covariance_B11_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe541725_0(bb_covariance_B11_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe842028_0(bb_covariance_B11_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe942129_0(bb_covariance_B11_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_flush(in_start),
        .in_stall_in_0(bb_covariance_B10_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_covariance4_covariance_avm_readdata(in_unnamed_covariance4_covariance_avm_readdata),
        .in_unnamed_covariance4_covariance_avm_readdatavalid(in_unnamed_covariance4_covariance_avm_readdatavalid),
        .in_unnamed_covariance4_covariance_avm_waitrequest(in_unnamed_covariance4_covariance_avm_waitrequest),
        .in_unnamed_covariance4_covariance_avm_writeack(in_unnamed_covariance4_covariance_avm_writeack),
        .in_valid_in_0(bb_covariance_B11_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe441624(bb_covariance_B11_out_c0_exe441624),
        .out_c0_exe842028(bb_covariance_B11_out_c0_exe842028),
        .out_c1_exe1369(bb_covariance_B11_out_c1_exe1369),
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

    // bb_covariance_B11_sr_0_aunroll_x(BLACKBOX,187)
    covariance_bb_B11_sr_0 thebb_covariance_B11_sr_0_aunroll_x (
        .in_i_stall(bb_covariance_B11_out_stall_out_0),
        .in_i_valid(bb_covariance_B12_out_valid_out_0),
        .in_i_data_0_tpl(bb_covariance_B12_out_c0_exe1413),
        .in_i_data_1_tpl(bb_covariance_B12_out_c0_exe2414),
        .in_i_data_2_tpl(bb_covariance_B12_out_c0_exe4416),
        .in_i_data_3_tpl(bb_covariance_B12_out_c0_exe5417),
        .in_i_data_4_tpl(bb_covariance_B12_out_c0_exe8420),
        .in_i_data_5_tpl(bb_covariance_B12_out_c0_exe9421),
        .in_i_data_6_tpl(bb_covariance_B12_out_c0_exe10422),
        .in_i_data_7_tpl(bb_covariance_B12_out_c0_exe11423),
        .in_i_data_8_tpl(bb_covariance_B12_out_c0_exe12424),
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
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bb_covariance_B12(BLACKBOX,5)
    covariance_bb_B12 thebb_covariance_B12 (
        .in_flush(in_start),
        .in_forked23164_0(GND_q),
        .in_forked23164_1(bb_covariance_B12_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_fpga_indvars_iv14_pop28151_0(c_i33_undef117_q),
        .in_fpga_indvars_iv14_pop28151_1(bb_covariance_B12_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_i24_034_pop29157_0(c_i32_undef113_q),
        .in_i24_034_pop29157_1(bb_covariance_B12_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_i24_034_pop2983_pop58170_0(c_i32_undef113_q),
        .in_i24_034_pop2983_pop58170_1(bb_covariance_B12_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_j28_033_pop54166_0(c_i32_undef113_q),
        .in_j28_033_pop54166_1(bb_covariance_B12_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_lim_ext54_pop45143_0(c_i32_undef113_q),
        .in_lim_ext54_pop45143_1(bb_covariance_B12_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_lim_ext55_pop30160_0(c_i32_undef113_q),
        .in_lim_ext55_pop30160_1(bb_covariance_B12_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_lim_ext56_pop55167_0(c_i32_undef113_q),
        .in_lim_ext56_pop55167_1(bb_covariance_B12_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_notcmp22165_0(GND_q),
        .in_notcmp22165_1(bb_covariance_B12_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_notcmp27154_0(GND_q),
        .in_notcmp27154_1(bb_covariance_B12_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_notcmp2781_pop57169_0(GND_q),
        .in_notcmp2781_pop57169_1(bb_covariance_B12_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_reorder_limiter_enter112_0(c_i32_undef113_q),
        .in_reorder_limiter_enter112_1(bb_covariance_B12_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_reorder_limiter_enter68_pop31163_0(c_i32_undef113_q),
        .in_reorder_limiter_enter68_pop31163_1(bb_covariance_B12_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_reorder_limiter_enter69_pop56168_0(c_i32_undef113_q),
        .in_reorder_limiter_enter69_pop56168_1(bb_covariance_B12_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_stall_in_0(bb_covariance_B11_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_covariance6_covariance_avm_readdata(in_unnamed_covariance6_covariance_avm_readdata),
        .in_unnamed_covariance6_covariance_avm_readdatavalid(in_unnamed_covariance6_covariance_avm_readdatavalid),
        .in_unnamed_covariance6_covariance_avm_waitrequest(in_unnamed_covariance6_covariance_avm_waitrequest),
        .in_unnamed_covariance6_covariance_avm_writeack(in_unnamed_covariance6_covariance_avm_writeack),
        .in_unnamed_covariance7_covariance_avm_readdata(in_unnamed_covariance7_covariance_avm_readdata),
        .in_unnamed_covariance7_covariance_avm_readdatavalid(in_unnamed_covariance7_covariance_avm_readdatavalid),
        .in_unnamed_covariance7_covariance_avm_waitrequest(in_unnamed_covariance7_covariance_avm_waitrequest),
        .in_unnamed_covariance7_covariance_avm_writeack(in_unnamed_covariance7_covariance_avm_writeack),
        .in_valid_in_0(GND_q),
        .in_valid_in_1(bb_covariance_B12_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10422(bb_covariance_B12_out_c0_exe10422),
        .out_c0_exe11423(bb_covariance_B12_out_c0_exe11423),
        .out_c0_exe12424(bb_covariance_B12_out_c0_exe12424),
        .out_c0_exe1413(bb_covariance_B12_out_c0_exe1413),
        .out_c0_exe2414(bb_covariance_B12_out_c0_exe2414),
        .out_c0_exe4416(bb_covariance_B12_out_c0_exe4416),
        .out_c0_exe5417(bb_covariance_B12_out_c0_exe5417),
        .out_c0_exe8420(bb_covariance_B12_out_c0_exe8420),
        .out_c0_exe9421(bb_covariance_B12_out_c0_exe9421),
        .out_profile_loop_o_valid(bb_covariance_B12_out_profile_loop_o_valid),
        .out_stall_in_0(bb_covariance_B12_out_stall_in_0),
        .out_stall_out_0(),
        .out_stall_out_1(bb_covariance_B12_out_stall_out_1),
        .out_unnamed_covariance6_covariance_avm_address(bb_covariance_B12_out_unnamed_covariance6_covariance_avm_address),
        .out_unnamed_covariance6_covariance_avm_burstcount(bb_covariance_B12_out_unnamed_covariance6_covariance_avm_burstcount),
        .out_unnamed_covariance6_covariance_avm_byteenable(bb_covariance_B12_out_unnamed_covariance6_covariance_avm_byteenable),
        .out_unnamed_covariance6_covariance_avm_enable(bb_covariance_B12_out_unnamed_covariance6_covariance_avm_enable),
        .out_unnamed_covariance6_covariance_avm_read(bb_covariance_B12_out_unnamed_covariance6_covariance_avm_read),
        .out_unnamed_covariance6_covariance_avm_write(bb_covariance_B12_out_unnamed_covariance6_covariance_avm_write),
        .out_unnamed_covariance6_covariance_avm_writedata(bb_covariance_B12_out_unnamed_covariance6_covariance_avm_writedata),
        .out_unnamed_covariance7_covariance_avm_address(bb_covariance_B12_out_unnamed_covariance7_covariance_avm_address),
        .out_unnamed_covariance7_covariance_avm_burstcount(bb_covariance_B12_out_unnamed_covariance7_covariance_avm_burstcount),
        .out_unnamed_covariance7_covariance_avm_byteenable(bb_covariance_B12_out_unnamed_covariance7_covariance_avm_byteenable),
        .out_unnamed_covariance7_covariance_avm_enable(bb_covariance_B12_out_unnamed_covariance7_covariance_avm_enable),
        .out_unnamed_covariance7_covariance_avm_read(bb_covariance_B12_out_unnamed_covariance7_covariance_avm_read),
        .out_unnamed_covariance7_covariance_avm_write(bb_covariance_B12_out_unnamed_covariance7_covariance_avm_write),
        .out_unnamed_covariance7_covariance_avm_writedata(bb_covariance_B12_out_unnamed_covariance7_covariance_avm_writedata),
        .out_valid_in_1(bb_covariance_B12_out_valid_in_1),
        .out_valid_out_0(bb_covariance_B12_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B12_sr_1_aunroll_x(BLACKBOX,188)
    covariance_bb_B12_sr_1 thebb_covariance_B12_sr_1_aunroll_x (
        .in_i_stall(bb_covariance_B12_out_stall_out_1),
        .in_i_valid(bb_covariance_B9_out_valid_out_0),
        .in_i_data_0_tpl(bb_covariance_B9_out_c0_exe9350),
        .in_i_data_1_tpl(bb_covariance_B9_out_c0_exe10351),
        .in_i_data_2_tpl(bb_covariance_B9_out_c0_exe11352),
        .in_i_data_3_tpl(bb_covariance_B9_out_c0_exe12353),
        .in_i_data_4_tpl(bb_covariance_B9_out_c0_exe13354),
        .in_i_data_5_tpl(bb_covariance_B9_out_c0_exe14355),
        .in_i_data_6_tpl(bb_covariance_B9_out_c0_exe15),
        .in_i_data_7_tpl(bb_covariance_B9_out_c0_exe8349),
        .in_i_data_8_tpl(bb_covariance_B9_out_c0_exe2343),
        .in_i_data_9_tpl(bb_covariance_B9_out_c0_exe3344),
        .in_i_data_10_tpl(bb_covariance_B9_out_c0_exe4345),
        .in_i_data_11_tpl(bb_covariance_B9_out_c0_exe5346),
        .in_i_data_12_tpl(bb_covariance_B9_out_c0_exe6347),
        .in_i_data_13_tpl(bb_covariance_B9_out_c0_exe7348),
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
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // c_i33_undef117(CONSTANT,93)
    assign c_i33_undef117_q = $unsigned(33'b000000000000000000000000000000000);

    // bb_covariance_B9(BLACKBOX,15)
    covariance_bb_B9 thebb_covariance_B9 (
        .in_fpga_indvars_iv14_pop28149_0(c_i33_undef117_q),
        .in_fpga_indvars_iv14_pop28149_1(bb_covariance_B9_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_i24_034_pop29155_0(c_i32_undef113_q),
        .in_i24_034_pop29155_1(bb_covariance_B9_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_lim_ext54_pop45144_0(c_i32_undef113_q),
        .in_lim_ext54_pop45144_1(bb_covariance_B9_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_lim_ext55_pop30158_0(c_i32_undef113_q),
        .in_lim_ext55_pop30158_1(bb_covariance_B9_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_notcmp27152_0(GND_q),
        .in_notcmp27152_1(bb_covariance_B9_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_reorder_limiter_enter113_0(c_i32_undef113_q),
        .in_reorder_limiter_enter113_1(bb_covariance_B9_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_reorder_limiter_enter68_pop31161_0(c_i32_undef113_q),
        .in_reorder_limiter_enter68_pop31161_1(bb_covariance_B9_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_stall_in_0(bb_covariance_B12_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(GND_q),
        .in_valid_in_1(bb_covariance_B9_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10351(bb_covariance_B9_out_c0_exe10351),
        .out_c0_exe11352(bb_covariance_B9_out_c0_exe11352),
        .out_c0_exe12353(bb_covariance_B9_out_c0_exe12353),
        .out_c0_exe13354(bb_covariance_B9_out_c0_exe13354),
        .out_c0_exe14355(bb_covariance_B9_out_c0_exe14355),
        .out_c0_exe15(bb_covariance_B9_out_c0_exe15),
        .out_c0_exe2343(bb_covariance_B9_out_c0_exe2343),
        .out_c0_exe3344(bb_covariance_B9_out_c0_exe3344),
        .out_c0_exe4345(bb_covariance_B9_out_c0_exe4345),
        .out_c0_exe5346(bb_covariance_B9_out_c0_exe5346),
        .out_c0_exe6347(bb_covariance_B9_out_c0_exe6347),
        .out_c0_exe7348(bb_covariance_B9_out_c0_exe7348),
        .out_c0_exe8349(bb_covariance_B9_out_c0_exe8349),
        .out_c0_exe9350(bb_covariance_B9_out_c0_exe9350),
        .out_profile_loop_o_valid(bb_covariance_B9_out_profile_loop_o_valid),
        .out_stall_out_0(),
        .out_stall_out_1(bb_covariance_B9_out_stall_out_1),
        .out_valid_in_1(bb_covariance_B9_out_valid_in_1),
        .out_valid_out_0(bb_covariance_B9_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B9_sr_1_aunroll_x(BLACKBOX,198)
    covariance_bb_B9_sr_1 thebb_covariance_B9_sr_1_aunroll_x (
        .in_i_stall(bb_covariance_B9_out_stall_out_1),
        .in_i_valid(bb_covariance_B8_out_valid_out_0),
        .in_i_data_0_tpl(bb_covariance_B8_out_c0_exe7308),
        .in_i_data_1_tpl(bb_covariance_B8_out_c0_exe8309),
        .in_i_data_2_tpl(bb_covariance_B8_out_c0_exe1302),
        .in_i_data_3_tpl(bb_covariance_B8_out_c0_exe3304),
        .in_i_data_4_tpl(bb_covariance_B8_out_c0_exe4305),
        .in_i_data_5_tpl(bb_covariance_B8_out_c0_exe5306),
        .in_i_data_6_tpl(bb_covariance_B8_out_c0_exe6307),
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
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bb_covariance_B8(BLACKBOX,14)
    covariance_bb_B8 thebb_covariance_B8 (
        .in_lim_ext54_pop45140_0(c_i32_undef113_q),
        .in_lim_ext54_pop45140_1(bb_covariance_B8_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_reorder_limiter_enter109_0(c_i32_undef113_q),
        .in_reorder_limiter_enter109_1(bb_covariance_B8_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(bb_covariance_B9_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(GND_q),
        .in_valid_in_1(bb_covariance_B8_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe1302(bb_covariance_B8_out_c0_exe1302),
        .out_c0_exe3304(bb_covariance_B8_out_c0_exe3304),
        .out_c0_exe4305(bb_covariance_B8_out_c0_exe4305),
        .out_c0_exe5306(bb_covariance_B8_out_c0_exe5306),
        .out_c0_exe6307(bb_covariance_B8_out_c0_exe6307),
        .out_c0_exe7308(bb_covariance_B8_out_c0_exe7308),
        .out_c0_exe8309(bb_covariance_B8_out_c0_exe8309),
        .out_profile_loop_o_valid(bb_covariance_B8_out_profile_loop_o_valid),
        .out_stall_out_0(),
        .out_stall_out_1(bb_covariance_B8_out_stall_out_1),
        .out_valid_in_1(bb_covariance_B8_out_valid_in_1),
        .out_valid_out_0(bb_covariance_B8_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B8_sr_1_aunroll_x(BLACKBOX,197)
    covariance_bb_B8_sr_1 thebb_covariance_B8_sr_1_aunroll_x (
        .in_i_stall(bb_covariance_B8_out_stall_out_1),
        .in_i_valid(bb_covariance_B2_out_valid_out_0),
        .in_i_data_0_tpl(bb_covariance_B2_out_reorder_limiter_enter),
        .in_i_data_1_tpl(bb_covariance_B2_out_c0_exe427915),
        .out_o_stall(bb_covariance_B8_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B8_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_covariance_B8_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_covariance_B8_sr_1_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bb_covariance_B2(BLACKBOX,8)
    covariance_bb_B2 thebb_covariance_B2 (
        .in_c0_exe127614_0(bb_covariance_B2_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe427915_0(bb_covariance_B2_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_feedback_stall_in_16(bb_covariance_B1_start_out_feedback_stall_out_16),
        .in_stall_in_0(bb_covariance_B8_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(bb_covariance_B2_sr_0_aunroll_x_out_o_valid),
        .in_wgl_7_enter_exit_stall_in(bb_covariance_B13_out_wgl_7_exit_exit_stall_in),
        .in_wgl_7_enter_exit_valid_in(bb_covariance_B13_out_wgl_7_exit_exit_valid_in),
        .out_c0_exe427915(bb_covariance_B2_out_c0_exe427915),
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
        .in_feedback_in_17(bb_covariance_B13_out_feedback_out_17),
        .in_feedback_valid_in_16(bb_covariance_B2_out_feedback_valid_out_16),
        .in_feedback_valid_in_17(bb_covariance_B13_out_feedback_valid_out_17),
        .in_iord_bl_call_covariance_i_fifodata(in_iord_bl_call_covariance_i_fifodata),
        .in_iord_bl_call_covariance_i_fifovalid(in_iord_bl_call_covariance_i_fifovalid),
        .in_stall_in_0(bb_covariance_B3_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(GND_q),
        .in_valid_in_1(bb_covariance_B1_start_sr_1_aunroll_x_out_o_valid),
        .out_c1_exe1(bb_covariance_B1_start_out_c1_exe1),
        .out_feedback_stall_out_16(bb_covariance_B1_start_out_feedback_stall_out_16),
        .out_feedback_stall_out_17(bb_covariance_B1_start_out_feedback_stall_out_17),
        .out_iord_bl_call_covariance_o_fifoalmost_full(bb_covariance_B1_start_out_iord_bl_call_covariance_o_fifoalmost_full),
        .out_iord_bl_call_covariance_o_fifoready(bb_covariance_B1_start_out_iord_bl_call_covariance_o_fifoready),
        .out_memdep_phi1_pop16(bb_covariance_B1_start_out_memdep_phi1_pop16),
        .out_memdep_phi2_pop17(bb_covariance_B1_start_out_memdep_phi2_pop17),
        .out_profile_loop_o_valid(bb_covariance_B1_start_out_profile_loop_o_valid),
        .out_stall_out_0(),
        .out_stall_out_1(bb_covariance_B1_start_out_stall_out_1),
        .out_valid_in_1(bb_covariance_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_covariance_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B13(BLACKBOX,6)
    covariance_bb_B13 thebb_covariance_B13 (
        .in_c0_exe441622_0(bb_covariance_B13_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe842026_0(bb_covariance_B13_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_feedback_stall_in_17(bb_covariance_B1_start_out_feedback_stall_out_17),
        .in_iowr_bl_return_covariance_i_fifoready(in_iowr_bl_return_covariance_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_covariance_B13_sr_0_aunroll_x_out_o_valid),
        .in_wgl_7_exit_exit_stall_out(bb_covariance_B2_out_wgl_7_enter_exit_stall_out),
        .in_wgl_7_exit_exit_valid_out(bb_covariance_B2_out_wgl_7_enter_exit_valid_out),
        .out_feedback_out_17(bb_covariance_B13_out_feedback_out_17),
        .out_feedback_valid_out_17(bb_covariance_B13_out_feedback_valid_out_17),
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

    // bb_covariance_B0_runOnce(BLACKBOX,2)
    covariance_bb_B0_runOnce thebb_covariance_B0_runOnce (
        .in_stall_in_0(bb_covariance_B1_start_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_covariance_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(bb_covariance_B0_runOnce_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B1_start_sr_1_aunroll_x(BLACKBOX,190)
    covariance_bb_B1_start_sr_1 thebb_covariance_B1_start_sr_1_aunroll_x (
        .in_i_stall(bb_covariance_B1_start_out_stall_out_1),
        .in_i_valid(bb_covariance_B0_runOnce_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_covariance_B1_start_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B1_start_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // covariance_B1_start_x(EXTIFACE,97)
    assign covariance_B1_start_x_i_capture = GND_q;
    assign covariance_B1_start_x_i_clear = GND_q;
    assign covariance_B1_start_x_i_enable = VCC_q;
    assign covariance_B1_start_x_i_shift = GND_q;
    assign covariance_B1_start_x_i_stall_pred = bb_covariance_B1_start_sr_1_aunroll_x_out_o_stall;
    assign covariance_B1_start_x_i_stall_succ = bb_covariance_B13_out_stall_in_0;
    assign covariance_B1_start_x_i_valid_loop = bb_covariance_B1_start_out_profile_loop_o_valid;
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
        .resetn(rst_sync_rst_sclrn[0])
    );

    // covariance_B12_x(EXTIFACE,98)
    assign covariance_B12_x_i_capture = GND_q;
    assign covariance_B12_x_i_clear = GND_q;
    assign covariance_B12_x_i_enable = VCC_q;
    assign covariance_B12_x_i_shift = GND_q;
    assign covariance_B12_x_i_stall_pred = bb_covariance_B12_sr_1_aunroll_x_out_o_stall;
    assign covariance_B12_x_i_stall_succ = bb_covariance_B12_out_stall_in_0;
    assign covariance_B12_x_i_valid_loop = bb_covariance_B12_out_profile_loop_o_valid;
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
        .resetn(rst_sync_rst_sclrn[0])
    );

    // covariance_B3_x(EXTIFACE,99)
    assign covariance_B3_x_i_capture = GND_q;
    assign covariance_B3_x_i_clear = GND_q;
    assign covariance_B3_x_i_enable = VCC_q;
    assign covariance_B3_x_i_shift = GND_q;
    assign covariance_B3_x_i_stall_pred = bb_covariance_B3_sr_1_aunroll_x_out_o_stall;
    assign covariance_B3_x_i_stall_succ = bb_covariance_B6_out_stall_in_0;
    assign covariance_B3_x_i_valid_loop = bb_covariance_B3_out_profile_loop_o_valid;
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
        .resetn(rst_sync_rst_sclrn[0])
    );

    // covariance_B5_x(EXTIFACE,100)
    assign covariance_B5_x_i_capture = GND_q;
    assign covariance_B5_x_i_clear = GND_q;
    assign covariance_B5_x_i_enable = VCC_q;
    assign covariance_B5_x_i_shift = GND_q;
    assign covariance_B5_x_i_stall_pred = bb_covariance_B5_sr_1_aunroll_x_out_o_stall;
    assign covariance_B5_x_i_stall_succ = bb_covariance_B5_out_stall_in_0;
    assign covariance_B5_x_i_valid_loop = bb_covariance_B5_out_profile_loop_o_valid;
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
        .resetn(rst_sync_rst_sclrn[0])
    );

    // covariance_B7_x(EXTIFACE,101)
    assign covariance_B7_x_i_capture = GND_q;
    assign covariance_B7_x_i_clear = GND_q;
    assign covariance_B7_x_i_enable = VCC_q;
    assign covariance_B7_x_i_shift = GND_q;
    assign covariance_B7_x_i_stall_pred = bb_covariance_B7_sr_1_aunroll_x_out_o_stall;
    assign covariance_B7_x_i_stall_succ = bb_covariance_B7_out_stall_in_0;
    assign covariance_B7_x_i_valid_loop = bb_covariance_B7_out_profile_loop_o_valid;
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
        .resetn(rst_sync_rst_sclrn[0])
    );

    // covariance_B8_x(EXTIFACE,102)
    assign covariance_B8_x_i_capture = GND_q;
    assign covariance_B8_x_i_clear = GND_q;
    assign covariance_B8_x_i_enable = VCC_q;
    assign covariance_B8_x_i_shift = GND_q;
    assign covariance_B8_x_i_stall_pred = bb_covariance_B8_sr_1_aunroll_x_out_o_stall;
    assign covariance_B8_x_i_stall_succ = bb_covariance_B10_out_stall_in_0;
    assign covariance_B8_x_i_valid_loop = bb_covariance_B8_out_profile_loop_o_valid;
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
        .resetn(rst_sync_rst_sclrn[0])
    );

    // covariance_B9_x(EXTIFACE,103)
    assign covariance_B9_x_i_capture = GND_q;
    assign covariance_B9_x_i_clear = GND_q;
    assign covariance_B9_x_i_enable = VCC_q;
    assign covariance_B9_x_i_shift = GND_q;
    assign covariance_B9_x_i_stall_pred = bb_covariance_B9_sr_1_aunroll_x_out_o_stall;
    assign covariance_B9_x_i_stall_succ = bb_covariance_B11_out_stall_in_0;
    assign covariance_B9_x_i_valid_loop = bb_covariance_B9_out_profile_loop_o_valid;
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
        .resetn(rst_sync_rst_sclrn[0])
    );

    // out_iord_bl_call_covariance_o_fifoalmost_full(GPOUT,138)
    assign out_iord_bl_call_covariance_o_fifoalmost_full = bb_covariance_B1_start_out_iord_bl_call_covariance_o_fifoalmost_full;

    // out_iord_bl_call_covariance_o_fifoready(GPOUT,139)
    assign out_iord_bl_call_covariance_o_fifoready = bb_covariance_B1_start_out_iord_bl_call_covariance_o_fifoready;

    // out_iowr_bl_return_covariance_o_fifodata(GPOUT,140)
    assign out_iowr_bl_return_covariance_o_fifodata = bb_covariance_B13_out_iowr_bl_return_covariance_o_fifodata;

    // out_iowr_bl_return_covariance_o_fifovalid(GPOUT,141)
    assign out_iowr_bl_return_covariance_o_fifovalid = bb_covariance_B13_out_iowr_bl_return_covariance_o_fifovalid;

    // out_memdep_covariance_avm_address(GPOUT,142)
    assign out_memdep_covariance_avm_address = bb_covariance_B7_out_memdep_covariance_avm_address;

    // out_memdep_covariance_avm_burstcount(GPOUT,143)
    assign out_memdep_covariance_avm_burstcount = bb_covariance_B7_out_memdep_covariance_avm_burstcount;

    // out_memdep_covariance_avm_byteenable(GPOUT,144)
    assign out_memdep_covariance_avm_byteenable = bb_covariance_B7_out_memdep_covariance_avm_byteenable;

    // out_memdep_covariance_avm_enable(GPOUT,145)
    assign out_memdep_covariance_avm_enable = bb_covariance_B7_out_memdep_covariance_avm_enable;

    // out_memdep_covariance_avm_read(GPOUT,146)
    assign out_memdep_covariance_avm_read = bb_covariance_B7_out_memdep_covariance_avm_read;

    // out_memdep_covariance_avm_write(GPOUT,147)
    assign out_memdep_covariance_avm_write = bb_covariance_B7_out_memdep_covariance_avm_write;

    // out_memdep_covariance_avm_writedata(GPOUT,148)
    assign out_memdep_covariance_avm_writedata = bb_covariance_B7_out_memdep_covariance_avm_writedata;

    // out_stall_out(GPOUT,149)
    assign out_stall_out = bb_covariance_B0_runOnce_out_stall_out_0;

    // out_unnamed_covariance2_covariance_avm_address(GPOUT,150)
    assign out_unnamed_covariance2_covariance_avm_address = bb_covariance_B5_out_unnamed_covariance2_covariance_avm_address;

    // out_unnamed_covariance2_covariance_avm_burstcount(GPOUT,151)
    assign out_unnamed_covariance2_covariance_avm_burstcount = bb_covariance_B5_out_unnamed_covariance2_covariance_avm_burstcount;

    // out_unnamed_covariance2_covariance_avm_byteenable(GPOUT,152)
    assign out_unnamed_covariance2_covariance_avm_byteenable = bb_covariance_B5_out_unnamed_covariance2_covariance_avm_byteenable;

    // out_unnamed_covariance2_covariance_avm_enable(GPOUT,153)
    assign out_unnamed_covariance2_covariance_avm_enable = bb_covariance_B5_out_unnamed_covariance2_covariance_avm_enable;

    // out_unnamed_covariance2_covariance_avm_read(GPOUT,154)
    assign out_unnamed_covariance2_covariance_avm_read = bb_covariance_B5_out_unnamed_covariance2_covariance_avm_read;

    // out_unnamed_covariance2_covariance_avm_write(GPOUT,155)
    assign out_unnamed_covariance2_covariance_avm_write = bb_covariance_B5_out_unnamed_covariance2_covariance_avm_write;

    // out_unnamed_covariance2_covariance_avm_writedata(GPOUT,156)
    assign out_unnamed_covariance2_covariance_avm_writedata = bb_covariance_B5_out_unnamed_covariance2_covariance_avm_writedata;

    // out_unnamed_covariance3_covariance_avm_address(GPOUT,157)
    assign out_unnamed_covariance3_covariance_avm_address = bb_covariance_B7_out_unnamed_covariance3_covariance_avm_address;

    // out_unnamed_covariance3_covariance_avm_burstcount(GPOUT,158)
    assign out_unnamed_covariance3_covariance_avm_burstcount = bb_covariance_B7_out_unnamed_covariance3_covariance_avm_burstcount;

    // out_unnamed_covariance3_covariance_avm_byteenable(GPOUT,159)
    assign out_unnamed_covariance3_covariance_avm_byteenable = bb_covariance_B7_out_unnamed_covariance3_covariance_avm_byteenable;

    // out_unnamed_covariance3_covariance_avm_enable(GPOUT,160)
    assign out_unnamed_covariance3_covariance_avm_enable = bb_covariance_B7_out_unnamed_covariance3_covariance_avm_enable;

    // out_unnamed_covariance3_covariance_avm_read(GPOUT,161)
    assign out_unnamed_covariance3_covariance_avm_read = bb_covariance_B7_out_unnamed_covariance3_covariance_avm_read;

    // out_unnamed_covariance3_covariance_avm_write(GPOUT,162)
    assign out_unnamed_covariance3_covariance_avm_write = bb_covariance_B7_out_unnamed_covariance3_covariance_avm_write;

    // out_unnamed_covariance3_covariance_avm_writedata(GPOUT,163)
    assign out_unnamed_covariance3_covariance_avm_writedata = bb_covariance_B7_out_unnamed_covariance3_covariance_avm_writedata;

    // out_unnamed_covariance4_covariance_avm_address(GPOUT,164)
    assign out_unnamed_covariance4_covariance_avm_address = bb_covariance_B11_out_unnamed_covariance4_covariance_avm_address;

    // out_unnamed_covariance4_covariance_avm_burstcount(GPOUT,165)
    assign out_unnamed_covariance4_covariance_avm_burstcount = bb_covariance_B11_out_unnamed_covariance4_covariance_avm_burstcount;

    // out_unnamed_covariance4_covariance_avm_byteenable(GPOUT,166)
    assign out_unnamed_covariance4_covariance_avm_byteenable = bb_covariance_B11_out_unnamed_covariance4_covariance_avm_byteenable;

    // out_unnamed_covariance4_covariance_avm_enable(GPOUT,167)
    assign out_unnamed_covariance4_covariance_avm_enable = bb_covariance_B11_out_unnamed_covariance4_covariance_avm_enable;

    // out_unnamed_covariance4_covariance_avm_read(GPOUT,168)
    assign out_unnamed_covariance4_covariance_avm_read = bb_covariance_B11_out_unnamed_covariance4_covariance_avm_read;

    // out_unnamed_covariance4_covariance_avm_write(GPOUT,169)
    assign out_unnamed_covariance4_covariance_avm_write = bb_covariance_B11_out_unnamed_covariance4_covariance_avm_write;

    // out_unnamed_covariance4_covariance_avm_writedata(GPOUT,170)
    assign out_unnamed_covariance4_covariance_avm_writedata = bb_covariance_B11_out_unnamed_covariance4_covariance_avm_writedata;

    // out_unnamed_covariance6_covariance_avm_address(GPOUT,171)
    assign out_unnamed_covariance6_covariance_avm_address = bb_covariance_B12_out_unnamed_covariance6_covariance_avm_address;

    // out_unnamed_covariance6_covariance_avm_burstcount(GPOUT,172)
    assign out_unnamed_covariance6_covariance_avm_burstcount = bb_covariance_B12_out_unnamed_covariance6_covariance_avm_burstcount;

    // out_unnamed_covariance6_covariance_avm_byteenable(GPOUT,173)
    assign out_unnamed_covariance6_covariance_avm_byteenable = bb_covariance_B12_out_unnamed_covariance6_covariance_avm_byteenable;

    // out_unnamed_covariance6_covariance_avm_enable(GPOUT,174)
    assign out_unnamed_covariance6_covariance_avm_enable = bb_covariance_B12_out_unnamed_covariance6_covariance_avm_enable;

    // out_unnamed_covariance6_covariance_avm_read(GPOUT,175)
    assign out_unnamed_covariance6_covariance_avm_read = bb_covariance_B12_out_unnamed_covariance6_covariance_avm_read;

    // out_unnamed_covariance6_covariance_avm_write(GPOUT,176)
    assign out_unnamed_covariance6_covariance_avm_write = bb_covariance_B12_out_unnamed_covariance6_covariance_avm_write;

    // out_unnamed_covariance6_covariance_avm_writedata(GPOUT,177)
    assign out_unnamed_covariance6_covariance_avm_writedata = bb_covariance_B12_out_unnamed_covariance6_covariance_avm_writedata;

    // out_unnamed_covariance7_covariance_avm_address(GPOUT,178)
    assign out_unnamed_covariance7_covariance_avm_address = bb_covariance_B12_out_unnamed_covariance7_covariance_avm_address;

    // out_unnamed_covariance7_covariance_avm_burstcount(GPOUT,179)
    assign out_unnamed_covariance7_covariance_avm_burstcount = bb_covariance_B12_out_unnamed_covariance7_covariance_avm_burstcount;

    // out_unnamed_covariance7_covariance_avm_byteenable(GPOUT,180)
    assign out_unnamed_covariance7_covariance_avm_byteenable = bb_covariance_B12_out_unnamed_covariance7_covariance_avm_byteenable;

    // out_unnamed_covariance7_covariance_avm_enable(GPOUT,181)
    assign out_unnamed_covariance7_covariance_avm_enable = bb_covariance_B12_out_unnamed_covariance7_covariance_avm_enable;

    // out_unnamed_covariance7_covariance_avm_read(GPOUT,182)
    assign out_unnamed_covariance7_covariance_avm_read = bb_covariance_B12_out_unnamed_covariance7_covariance_avm_read;

    // out_unnamed_covariance7_covariance_avm_write(GPOUT,183)
    assign out_unnamed_covariance7_covariance_avm_write = bb_covariance_B12_out_unnamed_covariance7_covariance_avm_write;

    // out_unnamed_covariance7_covariance_avm_writedata(GPOUT,184)
    assign out_unnamed_covariance7_covariance_avm_writedata = bb_covariance_B12_out_unnamed_covariance7_covariance_avm_writedata;

    // out_valid_out(GPOUT,185)
    assign out_valid_out = GND_q;

    // rst_sync(RESETSYNC,199)
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
