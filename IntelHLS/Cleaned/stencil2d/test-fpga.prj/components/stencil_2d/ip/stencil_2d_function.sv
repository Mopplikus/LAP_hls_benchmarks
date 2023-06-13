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

// SystemVerilog created from stencil_2d_function
// Created for function/kernel stencil_2d
// SystemVerilog created on Tue Jun 13 03:01:28 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_function (
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_filter,
    input wire [63:0] in_arg_orig,
    input wire [63:0] in_arg_return,
    input wire [63:0] in_arg_sol,
    input wire [191:0] in_iord_bl_call_stencil_2d_i_fifodata,
    input wire [0:0] in_iord_bl_call_stencil_2d_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_stencil_2d_i_fifoready,
    input wire [31:0] in_memdep_stencil_2d_avm_readdata,
    input wire [0:0] in_memdep_stencil_2d_avm_readdatavalid,
    input wire [0:0] in_memdep_stencil_2d_avm_waitrequest,
    input wire [0:0] in_memdep_stencil_2d_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [31:0] in_unnamed_stencil_2d10_stencil_2d_avm_readdata,
    input wire [0:0] in_unnamed_stencil_2d10_stencil_2d_avm_readdatavalid,
    input wire [0:0] in_unnamed_stencil_2d10_stencil_2d_avm_waitrequest,
    input wire [0:0] in_unnamed_stencil_2d10_stencil_2d_avm_writeack,
    input wire [31:0] in_unnamed_stencil_2d11_stencil_2d_avm_readdata,
    input wire [0:0] in_unnamed_stencil_2d11_stencil_2d_avm_readdatavalid,
    input wire [0:0] in_unnamed_stencil_2d11_stencil_2d_avm_waitrequest,
    input wire [0:0] in_unnamed_stencil_2d11_stencil_2d_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_stencil_2d_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_stencil_2d_o_fifoready,
    output wire [0:0] out_iowr_bl_return_stencil_2d_o_fifodata,
    output wire [0:0] out_iowr_bl_return_stencil_2d_o_fifovalid,
    output wire [31:0] out_memdep_stencil_2d_avm_address,
    output wire [0:0] out_memdep_stencil_2d_avm_burstcount,
    output wire [3:0] out_memdep_stencil_2d_avm_byteenable,
    output wire [0:0] out_memdep_stencil_2d_avm_enable,
    output wire [0:0] out_memdep_stencil_2d_avm_read,
    output wire [0:0] out_memdep_stencil_2d_avm_write,
    output wire [31:0] out_memdep_stencil_2d_avm_writedata,
    output wire [0:0] out_o_active_memdep,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_stencil_2d10_stencil_2d_avm_address,
    output wire [0:0] out_unnamed_stencil_2d10_stencil_2d_avm_burstcount,
    output wire [3:0] out_unnamed_stencil_2d10_stencil_2d_avm_byteenable,
    output wire [0:0] out_unnamed_stencil_2d10_stencil_2d_avm_enable,
    output wire [0:0] out_unnamed_stencil_2d10_stencil_2d_avm_read,
    output wire [0:0] out_unnamed_stencil_2d10_stencil_2d_avm_write,
    output wire [31:0] out_unnamed_stencil_2d10_stencil_2d_avm_writedata,
    output wire [31:0] out_unnamed_stencil_2d11_stencil_2d_avm_address,
    output wire [0:0] out_unnamed_stencil_2d11_stencil_2d_avm_burstcount,
    output wire [3:0] out_unnamed_stencil_2d11_stencil_2d_avm_byteenable,
    output wire [0:0] out_unnamed_stencil_2d11_stencil_2d_avm_enable,
    output wire [0:0] out_unnamed_stencil_2d11_stencil_2d_avm_read,
    output wire [0:0] out_unnamed_stencil_2d11_stencil_2d_avm_write,
    output wire [31:0] out_unnamed_stencil_2d11_stencil_2d_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_stencil_2d_B2_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_stencil_2d_B2_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_stencil_2d_B2_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_stencil_2d_B3_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_stencil_2d_B3_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_stencil_2d_B4_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_stencil_2d_B4_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_stencil_2d_B4_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_stencil_2d_B4_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_stencil_2d_B4_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_stencil_2d_B4_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_stencil_2d_B4_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_stencil_2d_B4_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_stencil_2d_B5_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_stencil_2d_B5_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_stencil_2d_B5_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_stencil_2d_B5_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_stencil_2d_B5_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [31:0] bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [31:0] bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [0:0] bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [0:0] bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_14_tpl;
    wire [0:0] bb_stencil_2d_B6_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_stencil_2d_B6_sr_1_aunroll_x_out_o_valid;
    wire [31:0] bb_stencil_2d_B7_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_stencil_2d_B7_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_stencil_2d_B7_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_stencil_2d_B7_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_stencil_2d_B7_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_stencil_2d_B7_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_stencil_2d_B7_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_stencil_2d_B7_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_stencil_2d_B7_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_stencil_2d_B8_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_stencil_2d_B8_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_stencil_2d_B8_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_stencil_2d_B8_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_stencil_2d_B8_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_stencil_2d_B8_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_stencil_2d_B8_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_stencil_2d_B8_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_stencil_2d_B8_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_stencil_2d_B8_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [31:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [31:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [0:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [0:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_14_tpl;
    wire [0:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_15_tpl;
    wire [31:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_16_tpl;
    wire [31:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_17_tpl;
    wire [31:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_18_tpl;
    wire [31:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_19_tpl;
    wire [0:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_20_tpl;
    wire [0:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_21_tpl;
    wire [31:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_22_tpl;
    wire [0:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_23_tpl;
    wire [0:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_24_tpl;
    wire [0:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_25_tpl;
    wire [0:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_26_tpl;
    wire [0:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_27_tpl;
    wire [0:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_28_tpl;
    wire [0:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_stencil_2d_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_stencil_2d_B1_start_out_feedback_stall_out_1;
    wire [63:0] bb_stencil_2d_B1_start_out_intel_reserved_ffwd_0_0;
    wire [63:0] bb_stencil_2d_B1_start_out_intel_reserved_ffwd_1_0;
    wire [63:0] bb_stencil_2d_B1_start_out_intel_reserved_ffwd_2_0;
    wire [0:0] bb_stencil_2d_B1_start_out_iord_bl_call_stencil_2d_o_fifoalmost_full;
    wire [0:0] bb_stencil_2d_B1_start_out_iord_bl_call_stencil_2d_o_fifoready;
    wire [0:0] bb_stencil_2d_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_stencil_2d_B1_start_out_stall_out_0;
    wire [0:0] bb_stencil_2d_B1_start_out_valid_in_0;
    wire [0:0] bb_stencil_2d_B1_start_out_valid_in_1;
    wire [0:0] bb_stencil_2d_B1_start_out_valid_out_0;
    wire [31:0] bb_stencil_2d_B2_out_c0_exe1156;
    wire [31:0] bb_stencil_2d_B2_out_c0_exe2;
    wire [0:0] bb_stencil_2d_B2_out_c0_exe3;
    wire [0:0] bb_stencil_2d_B2_out_c0_exe4;
    wire [0:0] bb_stencil_2d_B2_out_exiting_stall_out;
    wire [0:0] bb_stencil_2d_B2_out_exiting_valid_out;
    wire [0:0] bb_stencil_2d_B2_out_feedback_stall_out_14;
    wire [0:0] bb_stencil_2d_B2_out_memdep_phi1_pop14;
    wire [0:0] bb_stencil_2d_B2_out_pipeline_valid_out;
    wire [0:0] bb_stencil_2d_B2_out_stall_out_0;
    wire [0:0] bb_stencil_2d_B2_out_stall_out_1;
    wire [0:0] bb_stencil_2d_B2_out_valid_in_0;
    wire [0:0] bb_stencil_2d_B2_out_valid_in_1;
    wire [0:0] bb_stencil_2d_B2_out_valid_out_0;
    wire [0:0] bb_stencil_2d_B3_out_feedback_out_1;
    wire [0:0] bb_stencil_2d_B3_out_feedback_valid_out_1;
    wire [0:0] bb_stencil_2d_B3_out_iowr_bl_return_stencil_2d_o_fifodata;
    wire [0:0] bb_stencil_2d_B3_out_iowr_bl_return_stencil_2d_o_fifovalid;
    wire [0:0] bb_stencil_2d_B3_out_stall_in_0;
    wire [0:0] bb_stencil_2d_B3_out_stall_out_0;
    wire [0:0] bb_stencil_2d_B3_out_valid_out_0;
    wire [31:0] bb_stencil_2d_B4_out_c0_exe10;
    wire [31:0] bb_stencil_2d_B4_out_c0_exe11;
    wire [0:0] bb_stencil_2d_B4_out_c0_exe1166;
    wire [0:0] bb_stencil_2d_B4_out_c0_exe12;
    wire [0:0] bb_stencil_2d_B4_out_c0_exe13;
    wire [0:0] bb_stencil_2d_B4_out_c0_exe14;
    wire [0:0] bb_stencil_2d_B4_out_c0_exe2167;
    wire [31:0] bb_stencil_2d_B4_out_c0_exe3168;
    wire [31:0] bb_stencil_2d_B4_out_c0_exe4169;
    wire [31:0] bb_stencil_2d_B4_out_c0_exe5170;
    wire [0:0] bb_stencil_2d_B4_out_c0_exe6;
    wire [0:0] bb_stencil_2d_B4_out_c0_exe7;
    wire [0:0] bb_stencil_2d_B4_out_c0_exe8;
    wire [0:0] bb_stencil_2d_B4_out_exiting_stall_out;
    wire [0:0] bb_stencil_2d_B4_out_exiting_valid_out;
    wire [0:0] bb_stencil_2d_B4_out_feedback_stall_out_17;
    wire [0:0] bb_stencil_2d_B4_out_memdep_phi_pop17;
    wire [0:0] bb_stencil_2d_B4_out_pipeline_valid_out;
    wire [0:0] bb_stencil_2d_B4_out_stall_out_0;
    wire [0:0] bb_stencil_2d_B4_out_stall_out_1;
    wire [0:0] bb_stencil_2d_B4_out_valid_in_0;
    wire [0:0] bb_stencil_2d_B4_out_valid_in_1;
    wire [0:0] bb_stencil_2d_B4_out_valid_out_0;
    wire [0:0] bb_stencil_2d_B5_out_feedback_out_14;
    wire [0:0] bb_stencil_2d_B5_out_feedback_valid_out_14;
    wire [0:0] bb_stencil_2d_B5_out_stall_in_0;
    wire [0:0] bb_stencil_2d_B5_out_stall_out_0;
    wire [0:0] bb_stencil_2d_B5_out_valid_out_0;
    wire [0:0] bb_stencil_2d_B6_out_c0_exe10208;
    wire [0:0] bb_stencil_2d_B6_out_c0_exe11209;
    wire [31:0] bb_stencil_2d_B6_out_c0_exe1199;
    wire [0:0] bb_stencil_2d_B6_out_c0_exe12210;
    wire [0:0] bb_stencil_2d_B6_out_c0_exe13211;
    wire [0:0] bb_stencil_2d_B6_out_c0_exe14212;
    wire [31:0] bb_stencil_2d_B6_out_c0_exe15;
    wire [31:0] bb_stencil_2d_B6_out_c0_exe16;
    wire [0:0] bb_stencil_2d_B6_out_c0_exe17;
    wire [0:0] bb_stencil_2d_B6_out_c0_exe18;
    wire [0:0] bb_stencil_2d_B6_out_c0_exe19;
    wire [0:0] bb_stencil_2d_B6_out_c0_exe20;
    wire [0:0] bb_stencil_2d_B6_out_c0_exe21;
    wire [31:0] bb_stencil_2d_B6_out_c0_exe22;
    wire [31:0] bb_stencil_2d_B6_out_c0_exe2200;
    wire [0:0] bb_stencil_2d_B6_out_c0_exe23;
    wire [31:0] bb_stencil_2d_B6_out_c0_exe24;
    wire [31:0] bb_stencil_2d_B6_out_c0_exe25;
    wire [0:0] bb_stencil_2d_B6_out_c0_exe26;
    wire [0:0] bb_stencil_2d_B6_out_c0_exe27;
    wire [0:0] bb_stencil_2d_B6_out_c0_exe28;
    wire [31:0] bb_stencil_2d_B6_out_c0_exe3201;
    wire [31:0] bb_stencil_2d_B6_out_c0_exe4202;
    wire [0:0] bb_stencil_2d_B6_out_c0_exe5203;
    wire [0:0] bb_stencil_2d_B6_out_c0_exe6204;
    wire [31:0] bb_stencil_2d_B6_out_c0_exe7205;
    wire [0:0] bb_stencil_2d_B6_out_c0_exe8206;
    wire [0:0] bb_stencil_2d_B6_out_c0_exe9207;
    wire [0:0] bb_stencil_2d_B6_out_exiting_stall_out;
    wire [0:0] bb_stencil_2d_B6_out_exiting_valid_out;
    wire [0:0] bb_stencil_2d_B6_out_pipeline_valid_out;
    wire [0:0] bb_stencil_2d_B6_out_stall_out_0;
    wire [0:0] bb_stencil_2d_B6_out_stall_out_1;
    wire [0:0] bb_stencil_2d_B6_out_valid_in_0;
    wire [0:0] bb_stencil_2d_B6_out_valid_in_1;
    wire [0:0] bb_stencil_2d_B6_out_valid_out_0;
    wire [0:0] bb_stencil_2d_B7_out_c0_exe102825;
    wire [0:0] bb_stencil_2d_B7_out_c0_exe112838;
    wire [0:0] bb_stencil_2d_B7_out_feedback_out_17;
    wire [0:0] bb_stencil_2d_B7_out_feedback_valid_out_17;
    wire [0:0] bb_stencil_2d_B7_out_lsu_memdep_o_active;
    wire [0:0] bb_stencil_2d_B7_out_memdep;
    wire [31:0] bb_stencil_2d_B7_out_memdep_stencil_2d_avm_address;
    wire [0:0] bb_stencil_2d_B7_out_memdep_stencil_2d_avm_burstcount;
    wire [3:0] bb_stencil_2d_B7_out_memdep_stencil_2d_avm_byteenable;
    wire [0:0] bb_stencil_2d_B7_out_memdep_stencil_2d_avm_enable;
    wire [0:0] bb_stencil_2d_B7_out_memdep_stencil_2d_avm_read;
    wire [0:0] bb_stencil_2d_B7_out_memdep_stencil_2d_avm_write;
    wire [31:0] bb_stencil_2d_B7_out_memdep_stencil_2d_avm_writedata;
    wire [0:0] bb_stencil_2d_B7_out_stall_in_0;
    wire [0:0] bb_stencil_2d_B7_out_stall_out_0;
    wire [0:0] bb_stencil_2d_B7_out_valid_out_0;
    wire [0:0] bb_stencil_2d_B8_out_c0_exe102826;
    wire [0:0] bb_stencil_2d_B8_out_c0_exe112839;
    wire [0:0] bb_stencil_2d_B8_out_c0_exe1228411;
    wire [0:0] bb_stencil_2d_B8_out_c0_exe1328513;
    wire [31:0] bb_stencil_2d_B8_out_c0_exe1428615;
    wire [31:0] bb_stencil_2d_B8_out_c0_exe92813;
    wire [31:0] bb_stencil_2d_B8_out_c1_exe118;
    wire [0:0] bb_stencil_2d_B8_out_stall_in_0;
    wire [0:0] bb_stencil_2d_B8_out_stall_out_0;
    wire [0:0] bb_stencil_2d_B8_out_valid_out_0;
    wire [0:0] bb_stencil_2d_B9_out_c0_exe10282;
    wire [0:0] bb_stencil_2d_B9_out_c0_exe11283;
    wire [0:0] bb_stencil_2d_B9_out_c0_exe12284;
    wire [0:0] bb_stencil_2d_B9_out_c0_exe13285;
    wire [31:0] bb_stencil_2d_B9_out_c0_exe14286;
    wire [0:0] bb_stencil_2d_B9_out_c0_exe15287;
    wire [31:0] bb_stencil_2d_B9_out_c0_exe9281;
    wire [31:0] bb_stencil_2d_B9_out_c1_exe1;
    wire [0:0] bb_stencil_2d_B9_out_exiting_stall_out;
    wire [0:0] bb_stencil_2d_B9_out_exiting_valid_out;
    wire [0:0] bb_stencil_2d_B9_out_pipeline_valid_out;
    wire [0:0] bb_stencil_2d_B9_out_stall_in_0;
    wire [0:0] bb_stencil_2d_B9_out_stall_out_0;
    wire [0:0] bb_stencil_2d_B9_out_stall_out_1;
    wire [31:0] bb_stencil_2d_B9_out_unnamed_stencil_2d10_stencil_2d_avm_address;
    wire [0:0] bb_stencil_2d_B9_out_unnamed_stencil_2d10_stencil_2d_avm_burstcount;
    wire [3:0] bb_stencil_2d_B9_out_unnamed_stencil_2d10_stencil_2d_avm_byteenable;
    wire [0:0] bb_stencil_2d_B9_out_unnamed_stencil_2d10_stencil_2d_avm_enable;
    wire [0:0] bb_stencil_2d_B9_out_unnamed_stencil_2d10_stencil_2d_avm_read;
    wire [0:0] bb_stencil_2d_B9_out_unnamed_stencil_2d10_stencil_2d_avm_write;
    wire [31:0] bb_stencil_2d_B9_out_unnamed_stencil_2d10_stencil_2d_avm_writedata;
    wire [31:0] bb_stencil_2d_B9_out_unnamed_stencil_2d11_stencil_2d_avm_address;
    wire [0:0] bb_stencil_2d_B9_out_unnamed_stencil_2d11_stencil_2d_avm_burstcount;
    wire [3:0] bb_stencil_2d_B9_out_unnamed_stencil_2d11_stencil_2d_avm_byteenable;
    wire [0:0] bb_stencil_2d_B9_out_unnamed_stencil_2d11_stencil_2d_avm_enable;
    wire [0:0] bb_stencil_2d_B9_out_unnamed_stencil_2d11_stencil_2d_avm_read;
    wire [0:0] bb_stencil_2d_B9_out_unnamed_stencil_2d11_stencil_2d_avm_write;
    wire [31:0] bb_stencil_2d_B9_out_unnamed_stencil_2d11_stencil_2d_avm_writedata;
    wire [0:0] bb_stencil_2d_B9_out_valid_in_0;
    wire [0:0] bb_stencil_2d_B9_out_valid_in_1;
    wire [0:0] bb_stencil_2d_B9_out_valid_out_0;
    wire [1:0] c_i2_0135_q;
    wire [31:0] c_i32_undef107_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going19_stencil_2d2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going19_stencil_2d2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going19_stencil_2d2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going19_stencil_2d2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going24_stencil_2d2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going24_stencil_2d2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going24_stencil_2d2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going24_stencil_2d2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going29_stencil_2d2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going29_stencil_2d2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going29_stencil_2d2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going29_stencil_2d2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going33_stencil_2d1_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going33_stencil_2d1_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going33_stencil_2d1_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going33_stencil_2d1_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_stencil_2d8_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_stencil_2d8_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_stencil_2d8_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_stencil_2d8_valid_fifo_out_valid_out;
    wire [0:0] loop_limiter_stencil_2d0_out_o_stall;
    wire [0:0] loop_limiter_stencil_2d0_out_o_valid;
    wire [0:0] loop_limiter_stencil_2d1_out_o_stall;
    wire [0:0] loop_limiter_stencil_2d1_out_o_valid;
    wire [0:0] loop_limiter_stencil_2d2_out_o_stall;
    wire [0:0] loop_limiter_stencil_2d2_out_o_valid;
    wire [0:0] loop_limiter_stencil_2d3_out_o_stall;
    wire [0:0] loop_limiter_stencil_2d3_out_o_valid;
    wire [0:0] stencil_2d_B1_start_x_i_capture;
    wire stencil_2d_B1_start_x_i_capture_bitsignaltemp;
    wire [0:0] stencil_2d_B1_start_x_i_clear;
    wire stencil_2d_B1_start_x_i_clear_bitsignaltemp;
    wire [0:0] stencil_2d_B1_start_x_i_enable;
    wire stencil_2d_B1_start_x_i_enable_bitsignaltemp;
    wire [0:0] stencil_2d_B1_start_x_i_shift;
    wire stencil_2d_B1_start_x_i_shift_bitsignaltemp;
    wire [0:0] stencil_2d_B1_start_x_i_stall_pred;
    wire stencil_2d_B1_start_x_i_stall_pred_bitsignaltemp;
    wire [0:0] stencil_2d_B1_start_x_i_stall_succ;
    wire stencil_2d_B1_start_x_i_stall_succ_bitsignaltemp;
    wire [0:0] stencil_2d_B1_start_x_i_valid_loop;
    wire stencil_2d_B1_start_x_i_valid_loop_bitsignaltemp;
    wire [0:0] stencil_2d_B1_start_x_i_valid_pred;
    wire stencil_2d_B1_start_x_i_valid_pred_bitsignaltemp;
    wire [0:0] stencil_2d_B1_start_x_i_valid_succ;
    wire stencil_2d_B1_start_x_i_valid_succ_bitsignaltemp;
    wire [0:0] stencil_2d_B2_x_i_capture;
    wire stencil_2d_B2_x_i_capture_bitsignaltemp;
    wire [0:0] stencil_2d_B2_x_i_clear;
    wire stencil_2d_B2_x_i_clear_bitsignaltemp;
    wire [0:0] stencil_2d_B2_x_i_enable;
    wire stencil_2d_B2_x_i_enable_bitsignaltemp;
    wire [0:0] stencil_2d_B2_x_i_shift;
    wire stencil_2d_B2_x_i_shift_bitsignaltemp;
    wire [0:0] stencil_2d_B2_x_i_stall_pred;
    wire stencil_2d_B2_x_i_stall_pred_bitsignaltemp;
    wire [0:0] stencil_2d_B2_x_i_stall_succ;
    wire stencil_2d_B2_x_i_stall_succ_bitsignaltemp;
    wire [0:0] stencil_2d_B2_x_i_valid_loop;
    wire stencil_2d_B2_x_i_valid_loop_bitsignaltemp;
    wire [0:0] stencil_2d_B2_x_i_valid_pred;
    wire stencil_2d_B2_x_i_valid_pred_bitsignaltemp;
    wire [0:0] stencil_2d_B2_x_i_valid_succ;
    wire stencil_2d_B2_x_i_valid_succ_bitsignaltemp;
    wire [0:0] stencil_2d_B4_x_i_capture;
    wire stencil_2d_B4_x_i_capture_bitsignaltemp;
    wire [0:0] stencil_2d_B4_x_i_clear;
    wire stencil_2d_B4_x_i_clear_bitsignaltemp;
    wire [0:0] stencil_2d_B4_x_i_enable;
    wire stencil_2d_B4_x_i_enable_bitsignaltemp;
    wire [0:0] stencil_2d_B4_x_i_shift;
    wire stencil_2d_B4_x_i_shift_bitsignaltemp;
    wire [0:0] stencil_2d_B4_x_i_stall_pred;
    wire stencil_2d_B4_x_i_stall_pred_bitsignaltemp;
    wire [0:0] stencil_2d_B4_x_i_stall_succ;
    wire stencil_2d_B4_x_i_stall_succ_bitsignaltemp;
    wire [0:0] stencil_2d_B4_x_i_valid_loop;
    wire stencil_2d_B4_x_i_valid_loop_bitsignaltemp;
    wire [0:0] stencil_2d_B4_x_i_valid_pred;
    wire stencil_2d_B4_x_i_valid_pred_bitsignaltemp;
    wire [0:0] stencil_2d_B4_x_i_valid_succ;
    wire stencil_2d_B4_x_i_valid_succ_bitsignaltemp;
    wire [0:0] stencil_2d_B6_x_i_capture;
    wire stencil_2d_B6_x_i_capture_bitsignaltemp;
    wire [0:0] stencil_2d_B6_x_i_clear;
    wire stencil_2d_B6_x_i_clear_bitsignaltemp;
    wire [0:0] stencil_2d_B6_x_i_enable;
    wire stencil_2d_B6_x_i_enable_bitsignaltemp;
    wire [0:0] stencil_2d_B6_x_i_shift;
    wire stencil_2d_B6_x_i_shift_bitsignaltemp;
    wire [0:0] stencil_2d_B6_x_i_stall_pred;
    wire stencil_2d_B6_x_i_stall_pred_bitsignaltemp;
    wire [0:0] stencil_2d_B6_x_i_stall_succ;
    wire stencil_2d_B6_x_i_stall_succ_bitsignaltemp;
    wire [0:0] stencil_2d_B6_x_i_valid_loop;
    wire stencil_2d_B6_x_i_valid_loop_bitsignaltemp;
    wire [0:0] stencil_2d_B6_x_i_valid_pred;
    wire stencil_2d_B6_x_i_valid_pred_bitsignaltemp;
    wire [0:0] stencil_2d_B6_x_i_valid_succ;
    wire stencil_2d_B6_x_i_valid_succ_bitsignaltemp;
    wire [0:0] stencil_2d_B9_x_i_capture;
    wire stencil_2d_B9_x_i_capture_bitsignaltemp;
    wire [0:0] stencil_2d_B9_x_i_clear;
    wire stencil_2d_B9_x_i_clear_bitsignaltemp;
    wire [0:0] stencil_2d_B9_x_i_enable;
    wire stencil_2d_B9_x_i_enable_bitsignaltemp;
    wire [0:0] stencil_2d_B9_x_i_shift;
    wire stencil_2d_B9_x_i_shift_bitsignaltemp;
    wire [0:0] stencil_2d_B9_x_i_stall_pred;
    wire stencil_2d_B9_x_i_stall_pred_bitsignaltemp;
    wire [0:0] stencil_2d_B9_x_i_stall_succ;
    wire stencil_2d_B9_x_i_stall_succ_bitsignaltemp;
    wire [0:0] stencil_2d_B9_x_i_valid_loop;
    wire stencil_2d_B9_x_i_valid_loop_bitsignaltemp;
    wire [0:0] stencil_2d_B9_x_i_valid_pred;
    wire stencil_2d_B9_x_i_valid_pred_bitsignaltemp;
    wire [0:0] stencil_2d_B9_x_i_valid_succ;
    wire stencil_2d_B9_x_i_valid_succ_bitsignaltemp;


    // c_i2_0135(CONSTANT,80)
    assign c_i2_0135_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going33_stencil_2d1_valid_fifo(BLACKBOX,110)
    stencil_2d_i_llvm_fpga_pipeline_keep_going33_1_valid_fifo thei_llvm_fpga_pipeline_keep_going33_stencil_2d1_valid_fifo (
        .in_data_in(c_i2_0135_q),
        .in_stall_in(bb_stencil_2d_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going33_stencil_2d1_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going33_stencil_2d1_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going33_stencil_2d1_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going29_stencil_2d2_valid_fifo(BLACKBOX,108)
    stencil_2d_i_llvm_fpga_pipeline_keep_going29_2_valid_fifo thei_llvm_fpga_pipeline_keep_going29_stencil_2d2_valid_fifo (
        .in_data_in(c_i2_0135_q),
        .in_stall_in(bb_stencil_2d_B2_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going29_stencil_2d2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going29_stencil_2d2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going29_stencil_2d2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going24_stencil_2d2_valid_fifo(BLACKBOX,106)
    stencil_2d_i_llvm_fpga_pipeline_keep_going24_2_valid_fifo thei_llvm_fpga_pipeline_keep_going24_stencil_2d2_valid_fifo (
        .in_data_in(c_i2_0135_q),
        .in_stall_in(bb_stencil_2d_B4_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going24_stencil_2d2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going24_stencil_2d2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going24_stencil_2d2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going19_stencil_2d2_valid_fifo(BLACKBOX,104)
    stencil_2d_i_llvm_fpga_pipeline_keep_going19_2_valid_fifo thei_llvm_fpga_pipeline_keep_going19_stencil_2d2_valid_fifo (
        .in_data_in(c_i2_0135_q),
        .in_stall_in(bb_stencil_2d_B6_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going19_stencil_2d2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going19_stencil_2d2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going19_stencil_2d2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_stencil_2d8_valid_fifo(BLACKBOX,112)
    stencil_2d_i_llvm_fpga_pipeline_keep_going_8_valid_fifo thei_llvm_fpga_pipeline_keep_going_stencil_2d8_valid_fifo (
        .in_data_in(c_i2_0135_q),
        .in_stall_in(bb_stencil_2d_B9_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_stencil_2d8_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_stencil_2d8_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_stencil_2d8_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B7_sr_0_aunroll_x(BLACKBOX,7)
    stencil_2d_bb_B7_sr_0 thebb_stencil_2d_B7_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_stencil_2d_B8_out_c0_exe92813),
        .in_i_data_1_tpl(bb_stencil_2d_B8_out_c0_exe102826),
        .in_i_data_2_tpl(bb_stencil_2d_B8_out_c0_exe112839),
        .in_i_data_3_tpl(bb_stencil_2d_B8_out_c0_exe1228411),
        .in_i_data_4_tpl(bb_stencil_2d_B8_out_c0_exe1328513),
        .in_i_data_5_tpl(bb_stencil_2d_B8_out_c0_exe1428615),
        .in_i_data_6_tpl(bb_stencil_2d_B8_out_c1_exe118),
        .in_i_stall(bb_stencil_2d_B7_out_stall_out_0),
        .in_i_valid(bb_stencil_2d_B8_out_valid_out_0),
        .out_o_data_0_tpl(bb_stencil_2d_B7_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_stencil_2d_B7_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_stencil_2d_B7_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_stencil_2d_B7_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_stencil_2d_B7_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_stencil_2d_B7_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_stencil_2d_B7_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_stall(bb_stencil_2d_B7_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_stencil_2d_B7_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B8(BLACKBOX,18)
    stencil_2d_bb_B8 thebb_stencil_2d_B8 (
        .in_c0_exe102826_0(bb_stencil_2d_B8_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe112839_0(bb_stencil_2d_B8_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe1228411_0(bb_stencil_2d_B8_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe1328513_0(bb_stencil_2d_B8_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe1428615_0(bb_stencil_2d_B8_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe1528716_0(bb_stencil_2d_B8_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_c0_exe92813_0(bb_stencil_2d_B8_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c1_exe118_0(bb_stencil_2d_B8_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_stall_in_0(bb_stencil_2d_B7_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_stencil_2d_B8_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe102826(bb_stencil_2d_B8_out_c0_exe102826),
        .out_c0_exe112839(bb_stencil_2d_B8_out_c0_exe112839),
        .out_c0_exe1228411(bb_stencil_2d_B8_out_c0_exe1228411),
        .out_c0_exe1328513(bb_stencil_2d_B8_out_c0_exe1328513),
        .out_c0_exe1428615(bb_stencil_2d_B8_out_c0_exe1428615),
        .out_c0_exe92813(bb_stencil_2d_B8_out_c0_exe92813),
        .out_c1_exe118(bb_stencil_2d_B8_out_c1_exe118),
        .out_stall_in_0(bb_stencil_2d_B8_out_stall_in_0),
        .out_stall_out_0(bb_stencil_2d_B8_out_stall_out_0),
        .out_valid_out_0(bb_stencil_2d_B8_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B8_sr_0_aunroll_x(BLACKBOX,8)
    stencil_2d_bb_B8_sr_0 thebb_stencil_2d_B8_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_stencil_2d_B9_out_c0_exe9281),
        .in_i_data_1_tpl(bb_stencil_2d_B9_out_c0_exe10282),
        .in_i_data_2_tpl(bb_stencil_2d_B9_out_c0_exe11283),
        .in_i_data_3_tpl(bb_stencil_2d_B9_out_c0_exe12284),
        .in_i_data_4_tpl(bb_stencil_2d_B9_out_c0_exe13285),
        .in_i_data_5_tpl(bb_stencil_2d_B9_out_c0_exe14286),
        .in_i_data_6_tpl(bb_stencil_2d_B9_out_c0_exe15287),
        .in_i_data_7_tpl(bb_stencil_2d_B9_out_c1_exe1),
        .in_i_stall(bb_stencil_2d_B8_out_stall_out_0),
        .in_i_valid(bb_stencil_2d_B9_out_valid_out_0),
        .out_o_data_0_tpl(bb_stencil_2d_B8_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_stencil_2d_B8_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_stencil_2d_B8_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_stencil_2d_B8_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_stencil_2d_B8_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_stencil_2d_B8_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_stencil_2d_B8_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_stencil_2d_B8_sr_0_aunroll_x_out_o_data_7_tpl),
        .out_o_stall(bb_stencil_2d_B8_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_stencil_2d_B8_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_stencil_2d8_sr(BLACKBOX,111)
    stencil_2d_i_llvm_fpga_pipeline_keep_going_8_sr thei_llvm_fpga_pipeline_keep_going_stencil_2d8_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_stencil_2d8_valid_fifo_out_stall_out),
        .in_i_valid(bb_stencil_2d_B9_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_stencil_2d8_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_stencil_2d8_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B9(BLACKBOX,19)
    stencil_2d_bb_B9 thebb_stencil_2d_B9 (
        .in_c_043_pop16102_0(c_i32_undef107_q),
        .in_c_043_pop16102_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_c_043_pop1658_pop32124_0(c_i32_undef107_q),
        .in_c_043_pop1658_pop32124_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_18_tpl),
        .in_dot_prod_add125_0(c_i32_undef107_q),
        .in_dot_prod_add125_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_19_tpl),
        .in_exitcond1145_pop20114_0(GND_q),
        .in_exitcond1145_pop20114_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_exitcond1146_pop27129_0(GND_q),
        .in_exitcond1146_pop27129_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_23_tpl),
        .in_exitcond1182_0(GND_q),
        .in_exitcond1182_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_exitcond5126_0(GND_q),
        .in_exitcond5126_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_20_tpl),
        .in_exitcond854_pop30132_0(GND_q),
        .in_exitcond854_pop30132_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_26_tpl),
        .in_exitcond896_0(GND_q),
        .in_exitcond896_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_flush(in_start),
        .in_forked35121_0(GND_q),
        .in_forked35121_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_15_tpl),
        .in_forked_0(GND_q),
        .in_forked_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_0_0(bb_stencil_2d_B1_start_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(bb_stencil_2d_B1_start_out_intel_reserved_ffwd_1_0),
        .in_memdep_phi1_pop1451_pop22120_0(GND_q),
        .in_memdep_phi1_pop1451_pop22120_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_14_tpl),
        .in_memdep_phi1_pop1452_pop29131_0(GND_q),
        .in_memdep_phi1_pop1452_pop29131_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_25_tpl),
        .in_memdep_phi1_pop1492_0(GND_q),
        .in_memdep_phi1_pop1492_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_memdep_phi_pop17105_0(GND_q),
        .in_memdep_phi_pop17105_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_memdep_phi_pop1760_pop33134_0(GND_q),
        .in_memdep_phi_pop1760_pop33134_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_28_tpl),
        .in_mul13_add13122_0(c_i32_undef107_q),
        .in_mul13_add13122_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_16_tpl),
        .in_mul2442_pop19111_0(c_i32_undef107_q),
        .in_mul2442_pop19111_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_mul2443_pop26128_0(c_i32_undef107_q),
        .in_mul2443_pop26128_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_22_tpl),
        .in_mul2477_0(c_i32_undef107_q),
        .in_mul2477_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_notcmp17127_0(GND_q),
        .in_notcmp17127_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_21_tpl),
        .in_notcmp2256_pop31133_0(GND_q),
        .in_notcmp2256_pop31133_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_27_tpl),
        .in_notcmp2299_0(GND_q),
        .in_notcmp2299_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_notcmp2748_pop21117_0(GND_q),
        .in_notcmp2748_pop21117_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_notcmp2749_pop28130_0(GND_q),
        .in_notcmp2749_pop28130_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_24_tpl),
        .in_notcmp2787_0(GND_q),
        .in_notcmp2787_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_stencil_2d8_sr_out_o_stall),
        .in_r_044_pop1339_pop18108_0(c_i32_undef107_q),
        .in_r_044_pop1339_pop18108_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_r_044_pop1340_pop25123_0(c_i32_undef107_q),
        .in_r_044_pop1340_pop25123_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_17_tpl),
        .in_r_044_pop1372_0(c_i32_undef107_q),
        .in_r_044_pop1372_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_stall_in_0(bb_stencil_2d_B8_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_stencil_2d10_stencil_2d_avm_readdata(in_unnamed_stencil_2d10_stencil_2d_avm_readdata),
        .in_unnamed_stencil_2d10_stencil_2d_avm_readdatavalid(in_unnamed_stencil_2d10_stencil_2d_avm_readdatavalid),
        .in_unnamed_stencil_2d10_stencil_2d_avm_waitrequest(in_unnamed_stencil_2d10_stencil_2d_avm_waitrequest),
        .in_unnamed_stencil_2d10_stencil_2d_avm_writeack(in_unnamed_stencil_2d10_stencil_2d_avm_writeack),
        .in_unnamed_stencil_2d11_stencil_2d_avm_readdata(in_unnamed_stencil_2d11_stencil_2d_avm_readdata),
        .in_unnamed_stencil_2d11_stencil_2d_avm_readdatavalid(in_unnamed_stencil_2d11_stencil_2d_avm_readdatavalid),
        .in_unnamed_stencil_2d11_stencil_2d_avm_waitrequest(in_unnamed_stencil_2d11_stencil_2d_avm_waitrequest),
        .in_unnamed_stencil_2d11_stencil_2d_avm_writeack(in_unnamed_stencil_2d11_stencil_2d_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_stencil_2d8_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10282(bb_stencil_2d_B9_out_c0_exe10282),
        .out_c0_exe11283(bb_stencil_2d_B9_out_c0_exe11283),
        .out_c0_exe12284(bb_stencil_2d_B9_out_c0_exe12284),
        .out_c0_exe13285(bb_stencil_2d_B9_out_c0_exe13285),
        .out_c0_exe14286(bb_stencil_2d_B9_out_c0_exe14286),
        .out_c0_exe15287(bb_stencil_2d_B9_out_c0_exe15287),
        .out_c0_exe9281(bb_stencil_2d_B9_out_c0_exe9281),
        .out_c1_exe1(bb_stencil_2d_B9_out_c1_exe1),
        .out_exiting_stall_out(bb_stencil_2d_B9_out_exiting_stall_out),
        .out_exiting_valid_out(bb_stencil_2d_B9_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_stencil_2d_B9_out_pipeline_valid_out),
        .out_stall_in_0(bb_stencil_2d_B9_out_stall_in_0),
        .out_stall_out_0(bb_stencil_2d_B9_out_stall_out_0),
        .out_stall_out_1(bb_stencil_2d_B9_out_stall_out_1),
        .out_unnamed_stencil_2d10_stencil_2d_avm_address(bb_stencil_2d_B9_out_unnamed_stencil_2d10_stencil_2d_avm_address),
        .out_unnamed_stencil_2d10_stencil_2d_avm_burstcount(bb_stencil_2d_B9_out_unnamed_stencil_2d10_stencil_2d_avm_burstcount),
        .out_unnamed_stencil_2d10_stencil_2d_avm_byteenable(bb_stencil_2d_B9_out_unnamed_stencil_2d10_stencil_2d_avm_byteenable),
        .out_unnamed_stencil_2d10_stencil_2d_avm_enable(bb_stencil_2d_B9_out_unnamed_stencil_2d10_stencil_2d_avm_enable),
        .out_unnamed_stencil_2d10_stencil_2d_avm_read(bb_stencil_2d_B9_out_unnamed_stencil_2d10_stencil_2d_avm_read),
        .out_unnamed_stencil_2d10_stencil_2d_avm_write(bb_stencil_2d_B9_out_unnamed_stencil_2d10_stencil_2d_avm_write),
        .out_unnamed_stencil_2d10_stencil_2d_avm_writedata(bb_stencil_2d_B9_out_unnamed_stencil_2d10_stencil_2d_avm_writedata),
        .out_unnamed_stencil_2d11_stencil_2d_avm_address(bb_stencil_2d_B9_out_unnamed_stencil_2d11_stencil_2d_avm_address),
        .out_unnamed_stencil_2d11_stencil_2d_avm_burstcount(bb_stencil_2d_B9_out_unnamed_stencil_2d11_stencil_2d_avm_burstcount),
        .out_unnamed_stencil_2d11_stencil_2d_avm_byteenable(bb_stencil_2d_B9_out_unnamed_stencil_2d11_stencil_2d_avm_byteenable),
        .out_unnamed_stencil_2d11_stencil_2d_avm_enable(bb_stencil_2d_B9_out_unnamed_stencil_2d11_stencil_2d_avm_enable),
        .out_unnamed_stencil_2d11_stencil_2d_avm_read(bb_stencil_2d_B9_out_unnamed_stencil_2d11_stencil_2d_avm_read),
        .out_unnamed_stencil_2d11_stencil_2d_avm_write(bb_stencil_2d_B9_out_unnamed_stencil_2d11_stencil_2d_avm_write),
        .out_unnamed_stencil_2d11_stencil_2d_avm_writedata(bb_stencil_2d_B9_out_unnamed_stencil_2d11_stencil_2d_avm_writedata),
        .out_valid_in_0(bb_stencil_2d_B9_out_valid_in_0),
        .out_valid_in_1(bb_stencil_2d_B9_out_valid_in_1),
        .out_valid_out_0(bb_stencil_2d_B9_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // bb_stencil_2d_B9_sr_1_aunroll_x(BLACKBOX,9)
    stencil_2d_bb_B9_sr_1 thebb_stencil_2d_B9_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_stencil_2d_B6_out_c0_exe15),
        .in_i_data_2_tpl(bb_stencil_2d_B6_out_c0_exe16),
        .in_i_data_3_tpl(bb_stencil_2d_B6_out_c0_exe17),
        .in_i_data_4_tpl(bb_stencil_2d_B6_out_c0_exe18),
        .in_i_data_5_tpl(bb_stencil_2d_B6_out_c0_exe19),
        .in_i_data_6_tpl(bb_stencil_2d_B6_out_c0_exe20),
        .in_i_data_7_tpl(bb_stencil_2d_B6_out_c0_exe21),
        .in_i_data_8_tpl(bb_stencil_2d_B6_out_c0_exe22),
        .in_i_data_9_tpl(bb_stencil_2d_B6_out_c0_exe23),
        .in_i_data_10_tpl(bb_stencil_2d_B6_out_c0_exe24),
        .in_i_data_11_tpl(bb_stencil_2d_B6_out_c0_exe25),
        .in_i_data_12_tpl(bb_stencil_2d_B6_out_c0_exe26),
        .in_i_data_13_tpl(bb_stencil_2d_B6_out_c0_exe27),
        .in_i_data_14_tpl(bb_stencil_2d_B6_out_c0_exe28),
        .in_i_data_15_tpl(bb_stencil_2d_B6_out_c0_exe14212),
        .in_i_data_16_tpl(bb_stencil_2d_B6_out_c0_exe1199),
        .in_i_data_17_tpl(bb_stencil_2d_B6_out_c0_exe2200),
        .in_i_data_18_tpl(bb_stencil_2d_B6_out_c0_exe3201),
        .in_i_data_19_tpl(bb_stencil_2d_B6_out_c0_exe4202),
        .in_i_data_20_tpl(bb_stencil_2d_B6_out_c0_exe5203),
        .in_i_data_21_tpl(bb_stencil_2d_B6_out_c0_exe6204),
        .in_i_data_22_tpl(bb_stencil_2d_B6_out_c0_exe7205),
        .in_i_data_23_tpl(bb_stencil_2d_B6_out_c0_exe8206),
        .in_i_data_24_tpl(bb_stencil_2d_B6_out_c0_exe9207),
        .in_i_data_25_tpl(bb_stencil_2d_B6_out_c0_exe10208),
        .in_i_data_26_tpl(bb_stencil_2d_B6_out_c0_exe11209),
        .in_i_data_27_tpl(bb_stencil_2d_B6_out_c0_exe12210),
        .in_i_data_28_tpl(bb_stencil_2d_B6_out_c0_exe13211),
        .in_i_stall(bb_stencil_2d_B9_out_stall_out_1),
        .in_i_valid(loop_limiter_stencil_2d3_out_o_valid),
        .out_o_data_0_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_17_tpl),
        .out_o_data_18_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_18_tpl),
        .out_o_data_19_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_19_tpl),
        .out_o_data_20_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_20_tpl),
        .out_o_data_21_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_21_tpl),
        .out_o_data_22_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_22_tpl),
        .out_o_data_23_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_23_tpl),
        .out_o_data_24_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_24_tpl),
        .out_o_data_25_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_25_tpl),
        .out_o_data_26_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_26_tpl),
        .out_o_data_27_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_27_tpl),
        .out_o_data_28_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_28_tpl),
        .out_o_stall(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_stencil_2d3(BLACKBOX,139)
    stencil_2d_loop_limiter_3 theloop_limiter_stencil_2d3 (
        .in_i_stall(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_stencil_2d_B9_out_exiting_stall_out),
        .in_i_valid(bb_stencil_2d_B6_out_valid_out_0),
        .in_i_valid_exit(bb_stencil_2d_B9_out_exiting_valid_out),
        .out_o_stall(loop_limiter_stencil_2d3_out_o_stall),
        .out_o_valid(loop_limiter_stencil_2d3_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going19_stencil_2d2_sr(BLACKBOX,103)
    stencil_2d_i_llvm_fpga_pipeline_keep_going19_2_sr thei_llvm_fpga_pipeline_keep_going19_stencil_2d2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going19_stencil_2d2_valid_fifo_out_stall_out),
        .in_i_valid(bb_stencil_2d_B6_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going19_stencil_2d2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going19_stencil_2d2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B6(BLACKBOX,16)
    stencil_2d_bb_B6 thebb_stencil_2d_B6 (
        .in_c_043_pop16100_0(c_i32_undef107_q),
        .in_c_043_pop16100_1(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_exitcond1145_pop20112_0(GND_q),
        .in_exitcond1145_pop20112_1(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_exitcond1183_0(GND_q),
        .in_exitcond1183_1(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_exitcond894_0(GND_q),
        .in_exitcond894_1(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_forked35_0(GND_q),
        .in_forked35_1(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_memdep_phi1_pop1451_pop22118_0(GND_q),
        .in_memdep_phi1_pop1451_pop22118_1(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_14_tpl),
        .in_memdep_phi1_pop1493_0(GND_q),
        .in_memdep_phi1_pop1493_1(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_memdep_phi_pop17103_0(GND_q),
        .in_memdep_phi_pop17103_1(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_mul2442_pop19109_0(c_i32_undef107_q),
        .in_mul2442_pop19109_1(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_mul2478_0(c_i32_undef107_q),
        .in_mul2478_1(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_notcmp2297_0(GND_q),
        .in_notcmp2297_1(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_notcmp2748_pop21115_0(GND_q),
        .in_notcmp2748_pop21115_1(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_notcmp2788_0(GND_q),
        .in_notcmp2788_1(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going19_stencil_2d2_sr_out_o_stall),
        .in_r_044_pop1339_pop18106_0(c_i32_undef107_q),
        .in_r_044_pop1339_pop18106_1(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_r_044_pop1373_0(c_i32_undef107_q),
        .in_r_044_pop1373_1(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_stall_in_0(loop_limiter_stencil_2d3_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going19_stencil_2d2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10208(bb_stencil_2d_B6_out_c0_exe10208),
        .out_c0_exe11209(bb_stencil_2d_B6_out_c0_exe11209),
        .out_c0_exe1199(bb_stencil_2d_B6_out_c0_exe1199),
        .out_c0_exe12210(bb_stencil_2d_B6_out_c0_exe12210),
        .out_c0_exe13211(bb_stencil_2d_B6_out_c0_exe13211),
        .out_c0_exe14212(bb_stencil_2d_B6_out_c0_exe14212),
        .out_c0_exe15(bb_stencil_2d_B6_out_c0_exe15),
        .out_c0_exe16(bb_stencil_2d_B6_out_c0_exe16),
        .out_c0_exe17(bb_stencil_2d_B6_out_c0_exe17),
        .out_c0_exe18(bb_stencil_2d_B6_out_c0_exe18),
        .out_c0_exe19(bb_stencil_2d_B6_out_c0_exe19),
        .out_c0_exe20(bb_stencil_2d_B6_out_c0_exe20),
        .out_c0_exe21(bb_stencil_2d_B6_out_c0_exe21),
        .out_c0_exe22(bb_stencil_2d_B6_out_c0_exe22),
        .out_c0_exe2200(bb_stencil_2d_B6_out_c0_exe2200),
        .out_c0_exe23(bb_stencil_2d_B6_out_c0_exe23),
        .out_c0_exe24(bb_stencil_2d_B6_out_c0_exe24),
        .out_c0_exe25(bb_stencil_2d_B6_out_c0_exe25),
        .out_c0_exe26(bb_stencil_2d_B6_out_c0_exe26),
        .out_c0_exe27(bb_stencil_2d_B6_out_c0_exe27),
        .out_c0_exe28(bb_stencil_2d_B6_out_c0_exe28),
        .out_c0_exe3201(bb_stencil_2d_B6_out_c0_exe3201),
        .out_c0_exe4202(bb_stencil_2d_B6_out_c0_exe4202),
        .out_c0_exe5203(bb_stencil_2d_B6_out_c0_exe5203),
        .out_c0_exe6204(bb_stencil_2d_B6_out_c0_exe6204),
        .out_c0_exe7205(bb_stencil_2d_B6_out_c0_exe7205),
        .out_c0_exe8206(bb_stencil_2d_B6_out_c0_exe8206),
        .out_c0_exe9207(bb_stencil_2d_B6_out_c0_exe9207),
        .out_exiting_stall_out(bb_stencil_2d_B6_out_exiting_stall_out),
        .out_exiting_valid_out(bb_stencil_2d_B6_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_stencil_2d_B6_out_pipeline_valid_out),
        .out_stall_out_0(bb_stencil_2d_B6_out_stall_out_0),
        .out_stall_out_1(bb_stencil_2d_B6_out_stall_out_1),
        .out_valid_in_0(bb_stencil_2d_B6_out_valid_in_0),
        .out_valid_in_1(bb_stencil_2d_B6_out_valid_in_1),
        .out_valid_out_0(bb_stencil_2d_B6_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B6_sr_1_aunroll_x(BLACKBOX,6)
    stencil_2d_bb_B6_sr_1 thebb_stencil_2d_B6_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_stencil_2d_B4_out_c0_exe10),
        .in_i_data_2_tpl(bb_stencil_2d_B4_out_c0_exe11),
        .in_i_data_3_tpl(bb_stencil_2d_B4_out_c0_exe12),
        .in_i_data_4_tpl(bb_stencil_2d_B4_out_c0_exe13),
        .in_i_data_5_tpl(bb_stencil_2d_B4_out_c0_exe14),
        .in_i_data_6_tpl(bb_stencil_2d_B4_out_c0_exe1166),
        .in_i_data_7_tpl(bb_stencil_2d_B4_out_c0_exe2167),
        .in_i_data_8_tpl(bb_stencil_2d_B4_out_c0_exe3168),
        .in_i_data_9_tpl(bb_stencil_2d_B4_out_memdep_phi_pop17),
        .in_i_data_10_tpl(bb_stencil_2d_B4_out_c0_exe4169),
        .in_i_data_11_tpl(bb_stencil_2d_B4_out_c0_exe5170),
        .in_i_data_12_tpl(bb_stencil_2d_B4_out_c0_exe6),
        .in_i_data_13_tpl(bb_stencil_2d_B4_out_c0_exe7),
        .in_i_data_14_tpl(bb_stencil_2d_B4_out_c0_exe8),
        .in_i_stall(bb_stencil_2d_B6_out_stall_out_1),
        .in_i_valid(loop_limiter_stencil_2d2_out_o_valid),
        .out_o_data_0_tpl(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_14_tpl),
        .out_o_stall(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_stencil_2d2(BLACKBOX,138)
    stencil_2d_loop_limiter_2 theloop_limiter_stencil_2d2 (
        .in_i_stall(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_stencil_2d_B6_out_exiting_stall_out),
        .in_i_valid(bb_stencil_2d_B4_out_valid_out_0),
        .in_i_valid_exit(bb_stencil_2d_B6_out_exiting_valid_out),
        .out_o_stall(loop_limiter_stencil_2d2_out_o_stall),
        .out_o_valid(loop_limiter_stencil_2d2_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going24_stencil_2d2_sr(BLACKBOX,105)
    stencil_2d_i_llvm_fpga_pipeline_keep_going24_2_sr thei_llvm_fpga_pipeline_keep_going24_stencil_2d2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going24_stencil_2d2_valid_fifo_out_stall_out),
        .in_i_valid(bb_stencil_2d_B4_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going24_stencil_2d2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going24_stencil_2d2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef107(CONSTANT,85)
    assign c_i32_undef107_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_stencil_2d_B5_sr_0_aunroll_x(BLACKBOX,5)
    stencil_2d_bb_B5_sr_0 thebb_stencil_2d_B5_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_stencil_2d_B7_out_memdep),
        .in_i_data_1_tpl(bb_stencil_2d_B7_out_c0_exe102825),
        .in_i_data_2_tpl(bb_stencil_2d_B7_out_c0_exe112838),
        .in_i_stall(bb_stencil_2d_B5_out_stall_out_0),
        .in_i_valid(bb_stencil_2d_B7_out_valid_out_0),
        .out_o_data_0_tpl(bb_stencil_2d_B5_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_stencil_2d_B5_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_stencil_2d_B5_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_stall(bb_stencil_2d_B5_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_stencil_2d_B5_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B7(BLACKBOX,17)
    stencil_2d_bb_B7 thebb_stencil_2d_B7 (
        .in_c0_exe102825_0(bb_stencil_2d_B7_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe112838_0(bb_stencil_2d_B7_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe1228410_0(bb_stencil_2d_B7_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe1328512_0(bb_stencil_2d_B7_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe1428614_0(bb_stencil_2d_B7_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe92812_0(bb_stencil_2d_B7_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c1_exe117_0(bb_stencil_2d_B7_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_feedback_stall_in_17(bb_stencil_2d_B4_out_feedback_stall_out_17),
        .in_flush(in_start),
        .in_intel_reserved_ffwd_2_0(bb_stencil_2d_B1_start_out_intel_reserved_ffwd_2_0),
        .in_memdep_stencil_2d_avm_readdata(in_memdep_stencil_2d_avm_readdata),
        .in_memdep_stencil_2d_avm_readdatavalid(in_memdep_stencil_2d_avm_readdatavalid),
        .in_memdep_stencil_2d_avm_waitrequest(in_memdep_stencil_2d_avm_waitrequest),
        .in_memdep_stencil_2d_avm_writeack(in_memdep_stencil_2d_avm_writeack),
        .in_stall_in_0(bb_stencil_2d_B5_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_stencil_2d_B7_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe102825(bb_stencil_2d_B7_out_c0_exe102825),
        .out_c0_exe112838(bb_stencil_2d_B7_out_c0_exe112838),
        .out_feedback_out_17(bb_stencil_2d_B7_out_feedback_out_17),
        .out_feedback_valid_out_17(bb_stencil_2d_B7_out_feedback_valid_out_17),
        .out_lsu_memdep_o_active(bb_stencil_2d_B7_out_lsu_memdep_o_active),
        .out_memdep(bb_stencil_2d_B7_out_memdep),
        .out_memdep_stencil_2d_avm_address(bb_stencil_2d_B7_out_memdep_stencil_2d_avm_address),
        .out_memdep_stencil_2d_avm_burstcount(bb_stencil_2d_B7_out_memdep_stencil_2d_avm_burstcount),
        .out_memdep_stencil_2d_avm_byteenable(bb_stencil_2d_B7_out_memdep_stencil_2d_avm_byteenable),
        .out_memdep_stencil_2d_avm_enable(bb_stencil_2d_B7_out_memdep_stencil_2d_avm_enable),
        .out_memdep_stencil_2d_avm_read(bb_stencil_2d_B7_out_memdep_stencil_2d_avm_read),
        .out_memdep_stencil_2d_avm_write(bb_stencil_2d_B7_out_memdep_stencil_2d_avm_write),
        .out_memdep_stencil_2d_avm_writedata(bb_stencil_2d_B7_out_memdep_stencil_2d_avm_writedata),
        .out_stall_in_0(bb_stencil_2d_B7_out_stall_in_0),
        .out_stall_out_0(bb_stencil_2d_B7_out_stall_out_0),
        .out_valid_out_0(bb_stencil_2d_B7_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B4(BLACKBOX,14)
    stencil_2d_bb_B4 thebb_stencil_2d_B4 (
        .in_exitcond1179_0(GND_q),
        .in_exitcond1179_1(bb_stencil_2d_B4_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_feedback_in_17(bb_stencil_2d_B7_out_feedback_out_17),
        .in_feedback_valid_in_17(bb_stencil_2d_B7_out_feedback_valid_out_17),
        .in_forked38_0(GND_q),
        .in_forked38_1(bb_stencil_2d_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_memdep_phi1_pop1489_0(GND_q),
        .in_memdep_phi1_pop1489_1(bb_stencil_2d_B4_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_mul2474_0(c_i32_undef107_q),
        .in_mul2474_1(bb_stencil_2d_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_notcmp2784_0(GND_q),
        .in_notcmp2784_1(bb_stencil_2d_B4_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going24_stencil_2d2_sr_out_o_stall),
        .in_r_044_pop1369_0(c_i32_undef107_q),
        .in_r_044_pop1369_1(bb_stencil_2d_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_stall_in_0(loop_limiter_stencil_2d2_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going24_stencil_2d2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_stencil_2d_B4_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10(bb_stencil_2d_B4_out_c0_exe10),
        .out_c0_exe11(bb_stencil_2d_B4_out_c0_exe11),
        .out_c0_exe1166(bb_stencil_2d_B4_out_c0_exe1166),
        .out_c0_exe12(bb_stencil_2d_B4_out_c0_exe12),
        .out_c0_exe13(bb_stencil_2d_B4_out_c0_exe13),
        .out_c0_exe14(bb_stencil_2d_B4_out_c0_exe14),
        .out_c0_exe2167(bb_stencil_2d_B4_out_c0_exe2167),
        .out_c0_exe3168(bb_stencil_2d_B4_out_c0_exe3168),
        .out_c0_exe4169(bb_stencil_2d_B4_out_c0_exe4169),
        .out_c0_exe5170(bb_stencil_2d_B4_out_c0_exe5170),
        .out_c0_exe6(bb_stencil_2d_B4_out_c0_exe6),
        .out_c0_exe7(bb_stencil_2d_B4_out_c0_exe7),
        .out_c0_exe8(bb_stencil_2d_B4_out_c0_exe8),
        .out_exiting_stall_out(bb_stencil_2d_B4_out_exiting_stall_out),
        .out_exiting_valid_out(bb_stencil_2d_B4_out_exiting_valid_out),
        .out_feedback_stall_out_17(bb_stencil_2d_B4_out_feedback_stall_out_17),
        .out_memdep_phi_pop17(bb_stencil_2d_B4_out_memdep_phi_pop17),
        .out_pipeline_valid_out(bb_stencil_2d_B4_out_pipeline_valid_out),
        .out_stall_out_0(bb_stencil_2d_B4_out_stall_out_0),
        .out_stall_out_1(bb_stencil_2d_B4_out_stall_out_1),
        .out_valid_in_0(bb_stencil_2d_B4_out_valid_in_0),
        .out_valid_in_1(bb_stencil_2d_B4_out_valid_in_1),
        .out_valid_out_0(bb_stencil_2d_B4_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B4_sr_1_aunroll_x(BLACKBOX,4)
    stencil_2d_bb_B4_sr_1 thebb_stencil_2d_B4_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_stencil_2d_B2_out_c0_exe1156),
        .in_i_data_2_tpl(bb_stencil_2d_B2_out_c0_exe2),
        .in_i_data_3_tpl(bb_stencil_2d_B2_out_c0_exe3),
        .in_i_data_4_tpl(bb_stencil_2d_B2_out_c0_exe4),
        .in_i_data_5_tpl(bb_stencil_2d_B2_out_memdep_phi1_pop14),
        .in_i_stall(bb_stencil_2d_B4_out_stall_out_1),
        .in_i_valid(loop_limiter_stencil_2d1_out_o_valid),
        .out_o_data_0_tpl(bb_stencil_2d_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_stencil_2d_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_stencil_2d_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_stencil_2d_B4_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_stencil_2d_B4_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_stencil_2d_B4_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_stall(bb_stencil_2d_B4_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_stencil_2d_B4_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_stencil_2d1(BLACKBOX,137)
    stencil_2d_loop_limiter_1 theloop_limiter_stencil_2d1 (
        .in_i_stall(bb_stencil_2d_B4_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_stencil_2d_B4_out_exiting_stall_out),
        .in_i_valid(bb_stencil_2d_B2_out_valid_out_0),
        .in_i_valid_exit(bb_stencil_2d_B4_out_exiting_valid_out),
        .out_o_stall(loop_limiter_stencil_2d1_out_o_stall),
        .out_o_valid(loop_limiter_stencil_2d1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going29_stencil_2d2_sr(BLACKBOX,107)
    stencil_2d_i_llvm_fpga_pipeline_keep_going29_2_sr thei_llvm_fpga_pipeline_keep_going29_stencil_2d2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going29_stencil_2d2_valid_fifo_out_stall_out),
        .in_i_valid(bb_stencil_2d_B2_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going29_stencil_2d2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going29_stencil_2d2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bb_stencil_2d_B3_sr_0_aunroll_x(BLACKBOX,3)
    stencil_2d_bb_B3_sr_0 thebb_stencil_2d_B3_sr_0_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_stencil_2d_B3_out_stall_out_0),
        .in_i_valid(bb_stencil_2d_B5_out_valid_out_0),
        .out_o_data_0_tpl(),
        .out_o_stall(bb_stencil_2d_B3_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_stencil_2d_B3_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B5(BLACKBOX,15)
    stencil_2d_bb_B5 thebb_stencil_2d_B5 (
        .in_c0_exe102824_0(bb_stencil_2d_B5_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe112837_0(bb_stencil_2d_B5_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_feedback_stall_in_14(bb_stencil_2d_B2_out_feedback_stall_out_14),
        .in_memdep_1_0(bb_stencil_2d_B5_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(bb_stencil_2d_B3_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_stencil_2d_B5_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_14(bb_stencil_2d_B5_out_feedback_out_14),
        .out_feedback_valid_out_14(bb_stencil_2d_B5_out_feedback_valid_out_14),
        .out_stall_in_0(bb_stencil_2d_B5_out_stall_in_0),
        .out_stall_out_0(bb_stencil_2d_B5_out_stall_out_0),
        .out_valid_out_0(bb_stencil_2d_B5_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B2(BLACKBOX,12)
    stencil_2d_bb_B2 thebb_stencil_2d_B2 (
        .in_feedback_in_14(bb_stencil_2d_B5_out_feedback_out_14),
        .in_feedback_valid_in_14(bb_stencil_2d_B5_out_feedback_valid_out_14),
        .in_forked37_0(GND_q),
        .in_forked37_1(bb_stencil_2d_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going29_stencil_2d2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_stencil_2d1_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going29_stencil_2d2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_stencil_2d_B2_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe1156(bb_stencil_2d_B2_out_c0_exe1156),
        .out_c0_exe2(bb_stencil_2d_B2_out_c0_exe2),
        .out_c0_exe3(bb_stencil_2d_B2_out_c0_exe3),
        .out_c0_exe4(bb_stencil_2d_B2_out_c0_exe4),
        .out_exiting_stall_out(bb_stencil_2d_B2_out_exiting_stall_out),
        .out_exiting_valid_out(bb_stencil_2d_B2_out_exiting_valid_out),
        .out_feedback_stall_out_14(bb_stencil_2d_B2_out_feedback_stall_out_14),
        .out_memdep_phi1_pop14(bb_stencil_2d_B2_out_memdep_phi1_pop14),
        .out_pipeline_valid_out(bb_stencil_2d_B2_out_pipeline_valid_out),
        .out_stall_out_0(bb_stencil_2d_B2_out_stall_out_0),
        .out_stall_out_1(bb_stencil_2d_B2_out_stall_out_1),
        .out_valid_in_0(bb_stencil_2d_B2_out_valid_in_0),
        .out_valid_in_1(bb_stencil_2d_B2_out_valid_in_1),
        .out_valid_out_0(bb_stencil_2d_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B2_sr_1_aunroll_x(BLACKBOX,2)
    stencil_2d_bb_B2_sr_1 thebb_stencil_2d_B2_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_stall(bb_stencil_2d_B2_out_stall_out_1),
        .in_i_valid(loop_limiter_stencil_2d0_out_o_valid),
        .out_o_data_0_tpl(bb_stencil_2d_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_stall(bb_stencil_2d_B2_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_stencil_2d_B2_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_stencil_2d0(BLACKBOX,136)
    stencil_2d_loop_limiter_0 theloop_limiter_stencil_2d0 (
        .in_i_stall(bb_stencil_2d_B2_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_stencil_2d_B2_out_exiting_stall_out),
        .in_i_valid(bb_stencil_2d_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_stencil_2d_B2_out_exiting_valid_out),
        .out_o_stall(loop_limiter_stencil_2d0_out_o_stall),
        .out_o_valid(loop_limiter_stencil_2d0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going33_stencil_2d1_sr(BLACKBOX,109)
    stencil_2d_i_llvm_fpga_pipeline_keep_going33_1_sr thei_llvm_fpga_pipeline_keep_going33_stencil_2d1_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going33_stencil_2d1_valid_fifo_out_stall_out),
        .in_i_valid(bb_stencil_2d_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going33_stencil_2d1_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going33_stencil_2d1_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B3(BLACKBOX,13)
    stencil_2d_bb_B3 thebb_stencil_2d_B3 (
        .in_feedback_stall_in_1(bb_stencil_2d_B1_start_out_feedback_stall_out_1),
        .in_iowr_bl_return_stencil_2d_i_fifoready(in_iowr_bl_return_stencil_2d_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_stencil_2d_B3_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_stencil_2d_B3_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_stencil_2d_B3_out_feedback_valid_out_1),
        .out_iowr_bl_return_stencil_2d_o_fifodata(bb_stencil_2d_B3_out_iowr_bl_return_stencil_2d_o_fifodata),
        .out_iowr_bl_return_stencil_2d_o_fifovalid(bb_stencil_2d_B3_out_iowr_bl_return_stencil_2d_o_fifovalid),
        .out_stall_in_0(bb_stencil_2d_B3_out_stall_in_0),
        .out_stall_out_0(bb_stencil_2d_B3_out_stall_out_0),
        .out_valid_out_0(bb_stencil_2d_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B1_start(BLACKBOX,11)
    stencil_2d_bb_B1_start thebb_stencil_2d_B1_start (
        .in_feedback_in_1(bb_stencil_2d_B3_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_stencil_2d_B3_out_feedback_valid_out_1),
        .in_iord_bl_call_stencil_2d_i_fifodata(in_iord_bl_call_stencil_2d_i_fifodata),
        .in_iord_bl_call_stencil_2d_i_fifovalid(in_iord_bl_call_stencil_2d_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going33_stencil_2d1_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_stencil_2d0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going33_stencil_2d1_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_stencil_2d_B1_start_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_stencil_2d_B1_start_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_stencil_2d_B1_start_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_stencil_2d_B1_start_out_intel_reserved_ffwd_2_0),
        .out_iord_bl_call_stencil_2d_o_fifoalmost_full(bb_stencil_2d_B1_start_out_iord_bl_call_stencil_2d_o_fifoalmost_full),
        .out_iord_bl_call_stencil_2d_o_fifoready(bb_stencil_2d_B1_start_out_iord_bl_call_stencil_2d_o_fifoready),
        .out_pipeline_valid_out(bb_stencil_2d_B1_start_out_pipeline_valid_out),
        .out_stall_out_0(bb_stencil_2d_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_in_0(bb_stencil_2d_B1_start_out_valid_in_0),
        .out_valid_in_1(bb_stencil_2d_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_stencil_2d_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_stencil_2d_o_fifoalmost_full(GPOUT,140)
    assign out_iord_bl_call_stencil_2d_o_fifoalmost_full = bb_stencil_2d_B1_start_out_iord_bl_call_stencil_2d_o_fifoalmost_full;

    // out_iord_bl_call_stencil_2d_o_fifoready(GPOUT,141)
    assign out_iord_bl_call_stencil_2d_o_fifoready = bb_stencil_2d_B1_start_out_iord_bl_call_stencil_2d_o_fifoready;

    // out_iowr_bl_return_stencil_2d_o_fifodata(GPOUT,142)
    assign out_iowr_bl_return_stencil_2d_o_fifodata = bb_stencil_2d_B3_out_iowr_bl_return_stencil_2d_o_fifodata;

    // out_iowr_bl_return_stencil_2d_o_fifovalid(GPOUT,143)
    assign out_iowr_bl_return_stencil_2d_o_fifovalid = bb_stencil_2d_B3_out_iowr_bl_return_stencil_2d_o_fifovalid;

    // out_memdep_stencil_2d_avm_address(GPOUT,144)
    assign out_memdep_stencil_2d_avm_address = bb_stencil_2d_B7_out_memdep_stencil_2d_avm_address;

    // out_memdep_stencil_2d_avm_burstcount(GPOUT,145)
    assign out_memdep_stencil_2d_avm_burstcount = bb_stencil_2d_B7_out_memdep_stencil_2d_avm_burstcount;

    // out_memdep_stencil_2d_avm_byteenable(GPOUT,146)
    assign out_memdep_stencil_2d_avm_byteenable = bb_stencil_2d_B7_out_memdep_stencil_2d_avm_byteenable;

    // out_memdep_stencil_2d_avm_enable(GPOUT,147)
    assign out_memdep_stencil_2d_avm_enable = bb_stencil_2d_B7_out_memdep_stencil_2d_avm_enable;

    // out_memdep_stencil_2d_avm_read(GPOUT,148)
    assign out_memdep_stencil_2d_avm_read = bb_stencil_2d_B7_out_memdep_stencil_2d_avm_read;

    // out_memdep_stencil_2d_avm_write(GPOUT,149)
    assign out_memdep_stencil_2d_avm_write = bb_stencil_2d_B7_out_memdep_stencil_2d_avm_write;

    // out_memdep_stencil_2d_avm_writedata(GPOUT,150)
    assign out_memdep_stencil_2d_avm_writedata = bb_stencil_2d_B7_out_memdep_stencil_2d_avm_writedata;

    // out_o_active_memdep(GPOUT,151)
    assign out_o_active_memdep = bb_stencil_2d_B7_out_lsu_memdep_o_active;

    // bb_stencil_2d_B0_runOnce(BLACKBOX,10)
    stencil_2d_bb_B0_runOnce thebb_stencil_2d_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_stencil_2d_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,152)
    assign out_stall_out = bb_stencil_2d_B0_runOnce_out_stall_out_0;

    // out_unnamed_stencil_2d10_stencil_2d_avm_address(GPOUT,153)
    assign out_unnamed_stencil_2d10_stencil_2d_avm_address = bb_stencil_2d_B9_out_unnamed_stencil_2d10_stencil_2d_avm_address;

    // out_unnamed_stencil_2d10_stencil_2d_avm_burstcount(GPOUT,154)
    assign out_unnamed_stencil_2d10_stencil_2d_avm_burstcount = bb_stencil_2d_B9_out_unnamed_stencil_2d10_stencil_2d_avm_burstcount;

    // out_unnamed_stencil_2d10_stencil_2d_avm_byteenable(GPOUT,155)
    assign out_unnamed_stencil_2d10_stencil_2d_avm_byteenable = bb_stencil_2d_B9_out_unnamed_stencil_2d10_stencil_2d_avm_byteenable;

    // out_unnamed_stencil_2d10_stencil_2d_avm_enable(GPOUT,156)
    assign out_unnamed_stencil_2d10_stencil_2d_avm_enable = bb_stencil_2d_B9_out_unnamed_stencil_2d10_stencil_2d_avm_enable;

    // out_unnamed_stencil_2d10_stencil_2d_avm_read(GPOUT,157)
    assign out_unnamed_stencil_2d10_stencil_2d_avm_read = bb_stencil_2d_B9_out_unnamed_stencil_2d10_stencil_2d_avm_read;

    // out_unnamed_stencil_2d10_stencil_2d_avm_write(GPOUT,158)
    assign out_unnamed_stencil_2d10_stencil_2d_avm_write = bb_stencil_2d_B9_out_unnamed_stencil_2d10_stencil_2d_avm_write;

    // out_unnamed_stencil_2d10_stencil_2d_avm_writedata(GPOUT,159)
    assign out_unnamed_stencil_2d10_stencil_2d_avm_writedata = bb_stencil_2d_B9_out_unnamed_stencil_2d10_stencil_2d_avm_writedata;

    // out_unnamed_stencil_2d11_stencil_2d_avm_address(GPOUT,160)
    assign out_unnamed_stencil_2d11_stencil_2d_avm_address = bb_stencil_2d_B9_out_unnamed_stencil_2d11_stencil_2d_avm_address;

    // out_unnamed_stencil_2d11_stencil_2d_avm_burstcount(GPOUT,161)
    assign out_unnamed_stencil_2d11_stencil_2d_avm_burstcount = bb_stencil_2d_B9_out_unnamed_stencil_2d11_stencil_2d_avm_burstcount;

    // out_unnamed_stencil_2d11_stencil_2d_avm_byteenable(GPOUT,162)
    assign out_unnamed_stencil_2d11_stencil_2d_avm_byteenable = bb_stencil_2d_B9_out_unnamed_stencil_2d11_stencil_2d_avm_byteenable;

    // out_unnamed_stencil_2d11_stencil_2d_avm_enable(GPOUT,163)
    assign out_unnamed_stencil_2d11_stencil_2d_avm_enable = bb_stencil_2d_B9_out_unnamed_stencil_2d11_stencil_2d_avm_enable;

    // out_unnamed_stencil_2d11_stencil_2d_avm_read(GPOUT,164)
    assign out_unnamed_stencil_2d11_stencil_2d_avm_read = bb_stencil_2d_B9_out_unnamed_stencil_2d11_stencil_2d_avm_read;

    // out_unnamed_stencil_2d11_stencil_2d_avm_write(GPOUT,165)
    assign out_unnamed_stencil_2d11_stencil_2d_avm_write = bb_stencil_2d_B9_out_unnamed_stencil_2d11_stencil_2d_avm_write;

    // out_unnamed_stencil_2d11_stencil_2d_avm_writedata(GPOUT,166)
    assign out_unnamed_stencil_2d11_stencil_2d_avm_writedata = bb_stencil_2d_B9_out_unnamed_stencil_2d11_stencil_2d_avm_writedata;

    // out_valid_out(GPOUT,167)
    assign out_valid_out = GND_q;

    // stencil_2d_B1_start_x(EXTIFACE,168)
    assign stencil_2d_B1_start_x_i_capture = GND_q;
    assign stencil_2d_B1_start_x_i_clear = GND_q;
    assign stencil_2d_B1_start_x_i_enable = VCC_q;
    assign stencil_2d_B1_start_x_i_shift = GND_q;
    assign stencil_2d_B1_start_x_i_stall_pred = GND_q;
    assign stencil_2d_B1_start_x_i_stall_succ = bb_stencil_2d_B3_out_stall_in_0;
    assign stencil_2d_B1_start_x_i_valid_loop = bb_stencil_2d_B1_start_out_valid_in_0;
    assign stencil_2d_B1_start_x_i_valid_pred = bb_stencil_2d_B1_start_out_valid_in_1;
    assign stencil_2d_B1_start_x_i_valid_succ = bb_stencil_2d_B3_out_valid_out_0;
    assign stencil_2d_B1_start_x_i_capture_bitsignaltemp = stencil_2d_B1_start_x_i_capture[0];
    assign stencil_2d_B1_start_x_i_clear_bitsignaltemp = stencil_2d_B1_start_x_i_clear[0];
    assign stencil_2d_B1_start_x_i_enable_bitsignaltemp = stencil_2d_B1_start_x_i_enable[0];
    assign stencil_2d_B1_start_x_i_shift_bitsignaltemp = stencil_2d_B1_start_x_i_shift[0];
    assign stencil_2d_B1_start_x_i_stall_pred_bitsignaltemp = stencil_2d_B1_start_x_i_stall_pred[0];
    assign stencil_2d_B1_start_x_i_stall_succ_bitsignaltemp = stencil_2d_B1_start_x_i_stall_succ[0];
    assign stencil_2d_B1_start_x_i_valid_loop_bitsignaltemp = stencil_2d_B1_start_x_i_valid_loop[0];
    assign stencil_2d_B1_start_x_i_valid_pred_bitsignaltemp = stencil_2d_B1_start_x_i_valid_pred[0];
    assign stencil_2d_B1_start_x_i_valid_succ_bitsignaltemp = stencil_2d_B1_start_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("stencil_2d.B1.start")
    ) thestencil_2d_B1_start_x (
        .i_capture(stencil_2d_B1_start_x_i_capture_bitsignaltemp),
        .i_clear(stencil_2d_B1_start_x_i_clear_bitsignaltemp),
        .i_enable(stencil_2d_B1_start_x_i_enable_bitsignaltemp),
        .i_shift(stencil_2d_B1_start_x_i_shift_bitsignaltemp),
        .i_stall_pred(stencil_2d_B1_start_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(stencil_2d_B1_start_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(stencil_2d_B1_start_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(stencil_2d_B1_start_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(stencil_2d_B1_start_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // stencil_2d_B2_x(EXTIFACE,169)
    assign stencil_2d_B2_x_i_capture = GND_q;
    assign stencil_2d_B2_x_i_clear = GND_q;
    assign stencil_2d_B2_x_i_enable = VCC_q;
    assign stencil_2d_B2_x_i_shift = GND_q;
    assign stencil_2d_B2_x_i_stall_pred = loop_limiter_stencil_2d0_out_o_stall;
    assign stencil_2d_B2_x_i_stall_succ = bb_stencil_2d_B5_out_stall_in_0;
    assign stencil_2d_B2_x_i_valid_loop = bb_stencil_2d_B2_out_valid_in_0;
    assign stencil_2d_B2_x_i_valid_pred = bb_stencil_2d_B2_out_valid_in_1;
    assign stencil_2d_B2_x_i_valid_succ = bb_stencil_2d_B5_out_valid_out_0;
    assign stencil_2d_B2_x_i_capture_bitsignaltemp = stencil_2d_B2_x_i_capture[0];
    assign stencil_2d_B2_x_i_clear_bitsignaltemp = stencil_2d_B2_x_i_clear[0];
    assign stencil_2d_B2_x_i_enable_bitsignaltemp = stencil_2d_B2_x_i_enable[0];
    assign stencil_2d_B2_x_i_shift_bitsignaltemp = stencil_2d_B2_x_i_shift[0];
    assign stencil_2d_B2_x_i_stall_pred_bitsignaltemp = stencil_2d_B2_x_i_stall_pred[0];
    assign stencil_2d_B2_x_i_stall_succ_bitsignaltemp = stencil_2d_B2_x_i_stall_succ[0];
    assign stencil_2d_B2_x_i_valid_loop_bitsignaltemp = stencil_2d_B2_x_i_valid_loop[0];
    assign stencil_2d_B2_x_i_valid_pred_bitsignaltemp = stencil_2d_B2_x_i_valid_pred[0];
    assign stencil_2d_B2_x_i_valid_succ_bitsignaltemp = stencil_2d_B2_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("stencil_2d.B2")
    ) thestencil_2d_B2_x (
        .i_capture(stencil_2d_B2_x_i_capture_bitsignaltemp),
        .i_clear(stencil_2d_B2_x_i_clear_bitsignaltemp),
        .i_enable(stencil_2d_B2_x_i_enable_bitsignaltemp),
        .i_shift(stencil_2d_B2_x_i_shift_bitsignaltemp),
        .i_stall_pred(stencil_2d_B2_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(stencil_2d_B2_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(stencil_2d_B2_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(stencil_2d_B2_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(stencil_2d_B2_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // stencil_2d_B4_x(EXTIFACE,170)
    assign stencil_2d_B4_x_i_capture = GND_q;
    assign stencil_2d_B4_x_i_clear = GND_q;
    assign stencil_2d_B4_x_i_enable = VCC_q;
    assign stencil_2d_B4_x_i_shift = GND_q;
    assign stencil_2d_B4_x_i_stall_pred = loop_limiter_stencil_2d1_out_o_stall;
    assign stencil_2d_B4_x_i_stall_succ = bb_stencil_2d_B7_out_stall_in_0;
    assign stencil_2d_B4_x_i_valid_loop = bb_stencil_2d_B4_out_valid_in_0;
    assign stencil_2d_B4_x_i_valid_pred = bb_stencil_2d_B4_out_valid_in_1;
    assign stencil_2d_B4_x_i_valid_succ = bb_stencil_2d_B7_out_valid_out_0;
    assign stencil_2d_B4_x_i_capture_bitsignaltemp = stencil_2d_B4_x_i_capture[0];
    assign stencil_2d_B4_x_i_clear_bitsignaltemp = stencil_2d_B4_x_i_clear[0];
    assign stencil_2d_B4_x_i_enable_bitsignaltemp = stencil_2d_B4_x_i_enable[0];
    assign stencil_2d_B4_x_i_shift_bitsignaltemp = stencil_2d_B4_x_i_shift[0];
    assign stencil_2d_B4_x_i_stall_pred_bitsignaltemp = stencil_2d_B4_x_i_stall_pred[0];
    assign stencil_2d_B4_x_i_stall_succ_bitsignaltemp = stencil_2d_B4_x_i_stall_succ[0];
    assign stencil_2d_B4_x_i_valid_loop_bitsignaltemp = stencil_2d_B4_x_i_valid_loop[0];
    assign stencil_2d_B4_x_i_valid_pred_bitsignaltemp = stencil_2d_B4_x_i_valid_pred[0];
    assign stencil_2d_B4_x_i_valid_succ_bitsignaltemp = stencil_2d_B4_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("stencil_2d.B4")
    ) thestencil_2d_B4_x (
        .i_capture(stencil_2d_B4_x_i_capture_bitsignaltemp),
        .i_clear(stencil_2d_B4_x_i_clear_bitsignaltemp),
        .i_enable(stencil_2d_B4_x_i_enable_bitsignaltemp),
        .i_shift(stencil_2d_B4_x_i_shift_bitsignaltemp),
        .i_stall_pred(stencil_2d_B4_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(stencil_2d_B4_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(stencil_2d_B4_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(stencil_2d_B4_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(stencil_2d_B4_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // stencil_2d_B6_x(EXTIFACE,171)
    assign stencil_2d_B6_x_i_capture = GND_q;
    assign stencil_2d_B6_x_i_clear = GND_q;
    assign stencil_2d_B6_x_i_enable = VCC_q;
    assign stencil_2d_B6_x_i_shift = GND_q;
    assign stencil_2d_B6_x_i_stall_pred = loop_limiter_stencil_2d2_out_o_stall;
    assign stencil_2d_B6_x_i_stall_succ = bb_stencil_2d_B8_out_stall_in_0;
    assign stencil_2d_B6_x_i_valid_loop = bb_stencil_2d_B6_out_valid_in_0;
    assign stencil_2d_B6_x_i_valid_pred = bb_stencil_2d_B6_out_valid_in_1;
    assign stencil_2d_B6_x_i_valid_succ = bb_stencil_2d_B8_out_valid_out_0;
    assign stencil_2d_B6_x_i_capture_bitsignaltemp = stencil_2d_B6_x_i_capture[0];
    assign stencil_2d_B6_x_i_clear_bitsignaltemp = stencil_2d_B6_x_i_clear[0];
    assign stencil_2d_B6_x_i_enable_bitsignaltemp = stencil_2d_B6_x_i_enable[0];
    assign stencil_2d_B6_x_i_shift_bitsignaltemp = stencil_2d_B6_x_i_shift[0];
    assign stencil_2d_B6_x_i_stall_pred_bitsignaltemp = stencil_2d_B6_x_i_stall_pred[0];
    assign stencil_2d_B6_x_i_stall_succ_bitsignaltemp = stencil_2d_B6_x_i_stall_succ[0];
    assign stencil_2d_B6_x_i_valid_loop_bitsignaltemp = stencil_2d_B6_x_i_valid_loop[0];
    assign stencil_2d_B6_x_i_valid_pred_bitsignaltemp = stencil_2d_B6_x_i_valid_pred[0];
    assign stencil_2d_B6_x_i_valid_succ_bitsignaltemp = stencil_2d_B6_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("stencil_2d.B6")
    ) thestencil_2d_B6_x (
        .i_capture(stencil_2d_B6_x_i_capture_bitsignaltemp),
        .i_clear(stencil_2d_B6_x_i_clear_bitsignaltemp),
        .i_enable(stencil_2d_B6_x_i_enable_bitsignaltemp),
        .i_shift(stencil_2d_B6_x_i_shift_bitsignaltemp),
        .i_stall_pred(stencil_2d_B6_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(stencil_2d_B6_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(stencil_2d_B6_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(stencil_2d_B6_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(stencil_2d_B6_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // stencil_2d_B9_x(EXTIFACE,172)
    assign stencil_2d_B9_x_i_capture = GND_q;
    assign stencil_2d_B9_x_i_clear = GND_q;
    assign stencil_2d_B9_x_i_enable = VCC_q;
    assign stencil_2d_B9_x_i_shift = GND_q;
    assign stencil_2d_B9_x_i_stall_pred = loop_limiter_stencil_2d3_out_o_stall;
    assign stencil_2d_B9_x_i_stall_succ = bb_stencil_2d_B9_out_stall_in_0;
    assign stencil_2d_B9_x_i_valid_loop = bb_stencil_2d_B9_out_valid_in_0;
    assign stencil_2d_B9_x_i_valid_pred = bb_stencil_2d_B9_out_valid_in_1;
    assign stencil_2d_B9_x_i_valid_succ = bb_stencil_2d_B9_out_valid_out_0;
    assign stencil_2d_B9_x_i_capture_bitsignaltemp = stencil_2d_B9_x_i_capture[0];
    assign stencil_2d_B9_x_i_clear_bitsignaltemp = stencil_2d_B9_x_i_clear[0];
    assign stencil_2d_B9_x_i_enable_bitsignaltemp = stencil_2d_B9_x_i_enable[0];
    assign stencil_2d_B9_x_i_shift_bitsignaltemp = stencil_2d_B9_x_i_shift[0];
    assign stencil_2d_B9_x_i_stall_pred_bitsignaltemp = stencil_2d_B9_x_i_stall_pred[0];
    assign stencil_2d_B9_x_i_stall_succ_bitsignaltemp = stencil_2d_B9_x_i_stall_succ[0];
    assign stencil_2d_B9_x_i_valid_loop_bitsignaltemp = stencil_2d_B9_x_i_valid_loop[0];
    assign stencil_2d_B9_x_i_valid_pred_bitsignaltemp = stencil_2d_B9_x_i_valid_pred[0];
    assign stencil_2d_B9_x_i_valid_succ_bitsignaltemp = stencil_2d_B9_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("stencil_2d.B9")
    ) thestencil_2d_B9_x (
        .i_capture(stencil_2d_B9_x_i_capture_bitsignaltemp),
        .i_clear(stencil_2d_B9_x_i_clear_bitsignaltemp),
        .i_enable(stencil_2d_B9_x_i_enable_bitsignaltemp),
        .i_shift(stencil_2d_B9_x_i_shift_bitsignaltemp),
        .i_stall_pred(stencil_2d_B9_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(stencil_2d_B9_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(stencil_2d_B9_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(stencil_2d_B9_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(stencil_2d_B9_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

endmodule
