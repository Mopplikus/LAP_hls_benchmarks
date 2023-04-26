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

// SystemVerilog created from atax_function
// Created for function/kernel atax
// SystemVerilog created on Wed Apr 26 13:39:41 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_function (
    input wire [63:0] in_arg_A,
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_return,
    input wire [63:0] in_arg_tmp,
    input wire [63:0] in_arg_x,
    input wire [63:0] in_arg_y,
    input wire [255:0] in_iord_bl_call_atax_i_fifodata,
    input wire [0:0] in_iord_bl_call_atax_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_atax_i_fifoready,
    input wire [31:0] in_memdep_1_atax_avm_readdata,
    input wire [0:0] in_memdep_1_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_1_atax_avm_waitrequest,
    input wire [0:0] in_memdep_1_atax_avm_writeack,
    input wire [31:0] in_memdep_atax_avm_readdata,
    input wire [0:0] in_memdep_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_atax_avm_waitrequest,
    input wire [0:0] in_memdep_atax_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [31:0] in_unnamed_atax2_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax2_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax2_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax2_atax_avm_writeack,
    input wire [31:0] in_unnamed_atax4_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax4_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax4_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax4_atax_avm_writeack,
    input wire [31:0] in_unnamed_atax5_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax5_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax5_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax5_atax_avm_writeack,
    input wire [31:0] in_unnamed_atax7_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax7_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax7_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax7_atax_avm_writeack,
    input wire [31:0] in_unnamed_atax8_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax8_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax8_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax8_atax_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_atax_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_atax_o_fifoready,
    output wire [0:0] out_iowr_bl_return_atax_o_fifodata,
    output wire [0:0] out_iowr_bl_return_atax_o_fifovalid,
    output wire [31:0] out_memdep_1_atax_avm_address,
    output wire [0:0] out_memdep_1_atax_avm_burstcount,
    output wire [3:0] out_memdep_1_atax_avm_byteenable,
    output wire [0:0] out_memdep_1_atax_avm_enable,
    output wire [0:0] out_memdep_1_atax_avm_read,
    output wire [0:0] out_memdep_1_atax_avm_write,
    output wire [31:0] out_memdep_1_atax_avm_writedata,
    output wire [31:0] out_memdep_atax_avm_address,
    output wire [0:0] out_memdep_atax_avm_burstcount,
    output wire [3:0] out_memdep_atax_avm_byteenable,
    output wire [0:0] out_memdep_atax_avm_enable,
    output wire [0:0] out_memdep_atax_avm_read,
    output wire [0:0] out_memdep_atax_avm_write,
    output wire [31:0] out_memdep_atax_avm_writedata,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_atax2_atax_avm_address,
    output wire [0:0] out_unnamed_atax2_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax2_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax2_atax_avm_enable,
    output wire [0:0] out_unnamed_atax2_atax_avm_read,
    output wire [0:0] out_unnamed_atax2_atax_avm_write,
    output wire [31:0] out_unnamed_atax2_atax_avm_writedata,
    output wire [31:0] out_unnamed_atax4_atax_avm_address,
    output wire [0:0] out_unnamed_atax4_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax4_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax4_atax_avm_enable,
    output wire [0:0] out_unnamed_atax4_atax_avm_read,
    output wire [0:0] out_unnamed_atax4_atax_avm_write,
    output wire [31:0] out_unnamed_atax4_atax_avm_writedata,
    output wire [31:0] out_unnamed_atax5_atax_avm_address,
    output wire [0:0] out_unnamed_atax5_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax5_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax5_atax_avm_enable,
    output wire [0:0] out_unnamed_atax5_atax_avm_read,
    output wire [0:0] out_unnamed_atax5_atax_avm_write,
    output wire [31:0] out_unnamed_atax5_atax_avm_writedata,
    output wire [31:0] out_unnamed_atax7_atax_avm_address,
    output wire [0:0] out_unnamed_atax7_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax7_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax7_atax_avm_enable,
    output wire [0:0] out_unnamed_atax7_atax_avm_read,
    output wire [0:0] out_unnamed_atax7_atax_avm_write,
    output wire [31:0] out_unnamed_atax7_atax_avm_writedata,
    output wire [31:0] out_unnamed_atax8_atax_avm_address,
    output wire [0:0] out_unnamed_atax8_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax8_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax8_atax_avm_enable,
    output wire [0:0] out_unnamed_atax8_atax_avm_read,
    output wire [0:0] out_unnamed_atax8_atax_avm_write,
    output wire [31:0] out_unnamed_atax8_atax_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] atax_B1_start_x_i_capture;
    wire atax_B1_start_x_i_capture_bitsignaltemp;
    wire [0:0] atax_B1_start_x_i_clear;
    wire atax_B1_start_x_i_clear_bitsignaltemp;
    wire [0:0] atax_B1_start_x_i_enable;
    wire atax_B1_start_x_i_enable_bitsignaltemp;
    wire [0:0] atax_B1_start_x_i_shift;
    wire atax_B1_start_x_i_shift_bitsignaltemp;
    wire [0:0] atax_B1_start_x_i_stall_pred;
    wire atax_B1_start_x_i_stall_pred_bitsignaltemp;
    wire [0:0] atax_B1_start_x_i_stall_succ;
    wire atax_B1_start_x_i_stall_succ_bitsignaltemp;
    wire [0:0] atax_B1_start_x_i_valid_loop;
    wire atax_B1_start_x_i_valid_loop_bitsignaltemp;
    wire [0:0] atax_B1_start_x_i_valid_pred;
    wire atax_B1_start_x_i_valid_pred_bitsignaltemp;
    wire [0:0] atax_B1_start_x_i_valid_succ;
    wire atax_B1_start_x_i_valid_succ_bitsignaltemp;
    wire [0:0] atax_B3_x_i_capture;
    wire atax_B3_x_i_capture_bitsignaltemp;
    wire [0:0] atax_B3_x_i_clear;
    wire atax_B3_x_i_clear_bitsignaltemp;
    wire [0:0] atax_B3_x_i_enable;
    wire atax_B3_x_i_enable_bitsignaltemp;
    wire [0:0] atax_B3_x_i_shift;
    wire atax_B3_x_i_shift_bitsignaltemp;
    wire [0:0] atax_B3_x_i_stall_pred;
    wire atax_B3_x_i_stall_pred_bitsignaltemp;
    wire [0:0] atax_B3_x_i_stall_succ;
    wire atax_B3_x_i_stall_succ_bitsignaltemp;
    wire [0:0] atax_B3_x_i_valid_loop;
    wire atax_B3_x_i_valid_loop_bitsignaltemp;
    wire [0:0] atax_B3_x_i_valid_pred;
    wire atax_B3_x_i_valid_pred_bitsignaltemp;
    wire [0:0] atax_B3_x_i_valid_succ;
    wire atax_B3_x_i_valid_succ_bitsignaltemp;
    wire [0:0] atax_B5_x_i_capture;
    wire atax_B5_x_i_capture_bitsignaltemp;
    wire [0:0] atax_B5_x_i_clear;
    wire atax_B5_x_i_clear_bitsignaltemp;
    wire [0:0] atax_B5_x_i_enable;
    wire atax_B5_x_i_enable_bitsignaltemp;
    wire [0:0] atax_B5_x_i_shift;
    wire atax_B5_x_i_shift_bitsignaltemp;
    wire [0:0] atax_B5_x_i_stall_pred;
    wire atax_B5_x_i_stall_pred_bitsignaltemp;
    wire [0:0] atax_B5_x_i_stall_succ;
    wire atax_B5_x_i_stall_succ_bitsignaltemp;
    wire [0:0] atax_B5_x_i_valid_loop;
    wire atax_B5_x_i_valid_loop_bitsignaltemp;
    wire [0:0] atax_B5_x_i_valid_pred;
    wire atax_B5_x_i_valid_pred_bitsignaltemp;
    wire [0:0] atax_B5_x_i_valid_succ;
    wire atax_B5_x_i_valid_succ_bitsignaltemp;
    wire [0:0] atax_B7_x_i_capture;
    wire atax_B7_x_i_capture_bitsignaltemp;
    wire [0:0] atax_B7_x_i_clear;
    wire atax_B7_x_i_clear_bitsignaltemp;
    wire [0:0] atax_B7_x_i_enable;
    wire atax_B7_x_i_enable_bitsignaltemp;
    wire [0:0] atax_B7_x_i_shift;
    wire atax_B7_x_i_shift_bitsignaltemp;
    wire [0:0] atax_B7_x_i_stall_pred;
    wire atax_B7_x_i_stall_pred_bitsignaltemp;
    wire [0:0] atax_B7_x_i_stall_succ;
    wire atax_B7_x_i_stall_succ_bitsignaltemp;
    wire [0:0] atax_B7_x_i_valid_loop;
    wire atax_B7_x_i_valid_loop_bitsignaltemp;
    wire [0:0] atax_B7_x_i_valid_pred;
    wire atax_B7_x_i_valid_pred_bitsignaltemp;
    wire [0:0] atax_B7_x_i_valid_succ;
    wire atax_B7_x_i_valid_succ_bitsignaltemp;
    wire [0:0] bb_atax_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_atax_B0_runOnce_out_valid_out_0;
    wire [0:0] bb_atax_B1_start_out_feedback_stall_out_10;
    wire [0:0] bb_atax_B1_start_out_iord_bl_call_atax_o_fifoalmost_full;
    wire [0:0] bb_atax_B1_start_out_iord_bl_call_atax_o_fifoready;
    wire [0:0] bb_atax_B1_start_out_memdep_phi_pop9;
    wire [0:0] bb_atax_B1_start_out_stall_out_0;
    wire [0:0] bb_atax_B1_start_out_valid_in_0;
    wire [0:0] bb_atax_B1_start_out_valid_out_0;
    wire [0:0] bb_atax_B2_out_feedback_almost_empty_out_10;
    wire [0:0] bb_atax_B2_out_feedback_data_out_10;
    wire [0:0] bb_atax_B2_out_feedback_empty_out_10;
    wire [0:0] bb_atax_B2_out_iowr_bl_return_atax_o_fifodata;
    wire [0:0] bb_atax_B2_out_iowr_bl_return_atax_o_fifovalid;
    wire [0:0] bb_atax_B2_out_stall_in_0;
    wire [0:0] bb_atax_B2_out_stall_out_0;
    wire [0:0] bb_atax_B2_out_valid_in_0;
    wire [0:0] bb_atax_B2_out_valid_out_0;
    wire [0:0] bb_atax_B3_out_c0_exe10;
    wire [63:0] bb_atax_B3_out_c0_exe189;
    wire [63:0] bb_atax_B3_out_c0_exe290;
    wire [0:0] bb_atax_B3_out_c0_exe3;
    wire [31:0] bb_atax_B3_out_c0_exe4;
    wire [0:0] bb_atax_B3_out_c0_exe5;
    wire [0:0] bb_atax_B3_out_c0_exe6;
    wire [0:0] bb_atax_B3_out_c0_exe7;
    wire [0:0] bb_atax_B3_out_c0_exe8;
    wire [0:0] bb_atax_B3_out_c0_exe9;
    wire [0:0] bb_atax_B3_out_stall_out_0;
    wire [31:0] bb_atax_B3_out_unnamed_atax2_atax_avm_address;
    wire [0:0] bb_atax_B3_out_unnamed_atax2_atax_avm_burstcount;
    wire [3:0] bb_atax_B3_out_unnamed_atax2_atax_avm_byteenable;
    wire [0:0] bb_atax_B3_out_unnamed_atax2_atax_avm_enable;
    wire [0:0] bb_atax_B3_out_unnamed_atax2_atax_avm_read;
    wire [0:0] bb_atax_B3_out_unnamed_atax2_atax_avm_write;
    wire [31:0] bb_atax_B3_out_unnamed_atax2_atax_avm_writedata;
    wire [0:0] bb_atax_B3_out_valid_in_0;
    wire [0:0] bb_atax_B3_out_valid_out_0;
    wire [0:0] bb_atax_B4_out_c0_exe101188;
    wire [63:0] bb_atax_B4_out_c0_exe11091;
    wire [0:0] bb_atax_B4_out_c0_exe119;
    wire [0:0] bb_atax_B4_out_c0_exe1210;
    wire [31:0] bb_atax_B4_out_c0_exe21102;
    wire [0:0] bb_atax_B4_out_c0_exe51133;
    wire [0:0] bb_atax_B4_out_c0_exe61144;
    wire [63:0] bb_atax_B4_out_c0_exe81166;
    wire [0:0] bb_atax_B4_out_c0_exe91177;
    wire [0:0] bb_atax_B4_out_feedback_stall_out_13;
    wire [0:0] bb_atax_B4_out_memdep_phi2_pop13;
    wire [0:0] bb_atax_B4_out_stall_out_0;
    wire [0:0] bb_atax_B4_out_valid_out_0;
    wire [0:0] bb_atax_B5_out_c0_exe10118;
    wire [0:0] bb_atax_B5_out_c0_exe11;
    wire [63:0] bb_atax_B5_out_c0_exe1109;
    wire [0:0] bb_atax_B5_out_c0_exe12;
    wire [31:0] bb_atax_B5_out_c0_exe2110;
    wire [0:0] bb_atax_B5_out_c0_exe5113;
    wire [0:0] bb_atax_B5_out_c0_exe6114;
    wire [0:0] bb_atax_B5_out_c0_exe7115;
    wire [63:0] bb_atax_B5_out_c0_exe8116;
    wire [0:0] bb_atax_B5_out_c0_exe9117;
    wire [0:0] bb_atax_B5_out_profile_loop_o_valid;
    wire [0:0] bb_atax_B5_out_stall_in_0;
    wire [0:0] bb_atax_B5_out_stall_out_0;
    wire [31:0] bb_atax_B5_out_unnamed_atax4_atax_avm_address;
    wire [0:0] bb_atax_B5_out_unnamed_atax4_atax_avm_burstcount;
    wire [3:0] bb_atax_B5_out_unnamed_atax4_atax_avm_byteenable;
    wire [0:0] bb_atax_B5_out_unnamed_atax4_atax_avm_enable;
    wire [0:0] bb_atax_B5_out_unnamed_atax4_atax_avm_read;
    wire [0:0] bb_atax_B5_out_unnamed_atax4_atax_avm_write;
    wire [31:0] bb_atax_B5_out_unnamed_atax4_atax_avm_writedata;
    wire [31:0] bb_atax_B5_out_unnamed_atax5_atax_avm_address;
    wire [0:0] bb_atax_B5_out_unnamed_atax5_atax_avm_burstcount;
    wire [3:0] bb_atax_B5_out_unnamed_atax5_atax_avm_byteenable;
    wire [0:0] bb_atax_B5_out_unnamed_atax5_atax_avm_enable;
    wire [0:0] bb_atax_B5_out_unnamed_atax5_atax_avm_read;
    wire [0:0] bb_atax_B5_out_unnamed_atax5_atax_avm_write;
    wire [31:0] bb_atax_B5_out_unnamed_atax5_atax_avm_writedata;
    wire [0:0] bb_atax_B5_out_valid_in_0;
    wire [0:0] bb_atax_B5_out_valid_out_0;
    wire [0:0] bb_atax_B6_out_c0_exe1126;
    wire [0:0] bb_atax_B6_out_feedback_almost_empty_out_13;
    wire [0:0] bb_atax_B6_out_feedback_data_out_13;
    wire [0:0] bb_atax_B6_out_feedback_empty_out_13;
    wire [31:0] bb_atax_B6_out_memdep_atax_avm_address;
    wire [0:0] bb_atax_B6_out_memdep_atax_avm_burstcount;
    wire [3:0] bb_atax_B6_out_memdep_atax_avm_byteenable;
    wire [0:0] bb_atax_B6_out_memdep_atax_avm_enable;
    wire [0:0] bb_atax_B6_out_memdep_atax_avm_read;
    wire [0:0] bb_atax_B6_out_memdep_atax_avm_write;
    wire [31:0] bb_atax_B6_out_memdep_atax_avm_writedata;
    wire [0:0] bb_atax_B6_out_stall_in_0;
    wire [0:0] bb_atax_B6_out_stall_out_0;
    wire [0:0] bb_atax_B6_out_valid_in_0;
    wire [0:0] bb_atax_B6_out_valid_out_0;
    wire [31:0] bb_atax_B7_out_c0_exe1160;
    wire [0:0] bb_atax_B7_out_c0_exe2161;
    wire [63:0] bb_atax_B7_out_c0_exe5164;
    wire [0:0] bb_atax_B7_out_c0_exe6165;
    wire [0:0] bb_atax_B7_out_c0_exe7166;
    wire [31:0] bb_atax_B7_out_memdep_1_atax_avm_address;
    wire [0:0] bb_atax_B7_out_memdep_1_atax_avm_burstcount;
    wire [3:0] bb_atax_B7_out_memdep_1_atax_avm_byteenable;
    wire [0:0] bb_atax_B7_out_memdep_1_atax_avm_enable;
    wire [0:0] bb_atax_B7_out_memdep_1_atax_avm_read;
    wire [0:0] bb_atax_B7_out_memdep_1_atax_avm_write;
    wire [31:0] bb_atax_B7_out_memdep_1_atax_avm_writedata;
    wire [0:0] bb_atax_B7_out_profile_loop_o_valid;
    wire [0:0] bb_atax_B7_out_stall_in_0;
    wire [0:0] bb_atax_B7_out_stall_out_0;
    wire [31:0] bb_atax_B7_out_unnamed_atax7_atax_avm_address;
    wire [0:0] bb_atax_B7_out_unnamed_atax7_atax_avm_burstcount;
    wire [3:0] bb_atax_B7_out_unnamed_atax7_atax_avm_byteenable;
    wire [0:0] bb_atax_B7_out_unnamed_atax7_atax_avm_enable;
    wire [0:0] bb_atax_B7_out_unnamed_atax7_atax_avm_read;
    wire [0:0] bb_atax_B7_out_unnamed_atax7_atax_avm_write;
    wire [31:0] bb_atax_B7_out_unnamed_atax7_atax_avm_writedata;
    wire [31:0] bb_atax_B7_out_unnamed_atax8_atax_avm_address;
    wire [0:0] bb_atax_B7_out_unnamed_atax8_atax_avm_burstcount;
    wire [3:0] bb_atax_B7_out_unnamed_atax8_atax_avm_byteenable;
    wire [0:0] bb_atax_B7_out_unnamed_atax8_atax_avm_enable;
    wire [0:0] bb_atax_B7_out_unnamed_atax8_atax_avm_read;
    wire [0:0] bb_atax_B7_out_unnamed_atax8_atax_avm_write;
    wire [31:0] bb_atax_B7_out_unnamed_atax8_atax_avm_writedata;
    wire [0:0] bb_atax_B7_out_valid_in_0;
    wire [0:0] bb_atax_B7_out_valid_out_0;
    reg [0:0] rst_sync_rst_sclrn;


    // bb_atax_B3(BLACKBOX,9)
    atax_bb_B3 thebb_atax_B3 (
        .in_flush(in_start),
        .in_memdep_phi3_pop1048_0(bb_atax_B1_start_out_memdep_phi_pop9),
        .in_memdep_phi_pop943_0(bb_atax_B1_start_out_memdep_phi_pop9),
        .in_stall_in_0(bb_atax_B5_out_stall_out_0),
        .in_unnamed_atax2_atax_avm_readdata(in_unnamed_atax2_atax_avm_readdata),
        .in_unnamed_atax2_atax_avm_readdatavalid(in_unnamed_atax2_atax_avm_readdatavalid),
        .in_unnamed_atax2_atax_avm_waitrequest(in_unnamed_atax2_atax_avm_waitrequest),
        .in_unnamed_atax2_atax_avm_writeack(in_unnamed_atax2_atax_avm_writeack),
        .in_valid_in_0(bb_atax_B1_start_out_valid_out_0),
        .out_c0_exe10(bb_atax_B3_out_c0_exe10),
        .out_c0_exe189(bb_atax_B3_out_c0_exe189),
        .out_c0_exe290(bb_atax_B3_out_c0_exe290),
        .out_c0_exe3(bb_atax_B3_out_c0_exe3),
        .out_c0_exe4(bb_atax_B3_out_c0_exe4),
        .out_c0_exe5(bb_atax_B3_out_c0_exe5),
        .out_c0_exe6(bb_atax_B3_out_c0_exe6),
        .out_c0_exe7(bb_atax_B3_out_c0_exe7),
        .out_c0_exe8(bb_atax_B3_out_c0_exe8),
        .out_c0_exe9(bb_atax_B3_out_c0_exe9),
        .out_stall_out_0(bb_atax_B3_out_stall_out_0),
        .out_unnamed_atax2_atax_avm_address(bb_atax_B3_out_unnamed_atax2_atax_avm_address),
        .out_unnamed_atax2_atax_avm_burstcount(bb_atax_B3_out_unnamed_atax2_atax_avm_burstcount),
        .out_unnamed_atax2_atax_avm_byteenable(bb_atax_B3_out_unnamed_atax2_atax_avm_byteenable),
        .out_unnamed_atax2_atax_avm_enable(bb_atax_B3_out_unnamed_atax2_atax_avm_enable),
        .out_unnamed_atax2_atax_avm_read(bb_atax_B3_out_unnamed_atax2_atax_avm_read),
        .out_unnamed_atax2_atax_avm_write(bb_atax_B3_out_unnamed_atax2_atax_avm_write),
        .out_unnamed_atax2_atax_avm_writedata(bb_atax_B3_out_unnamed_atax2_atax_avm_writedata),
        .out_valid_in_0(bb_atax_B3_out_valid_in_0),
        .out_valid_out_0(bb_atax_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B5(BLACKBOX,11)
    atax_bb_B5 thebb_atax_B5 (
        .in_arrayidx155_0(bb_atax_B3_out_c0_exe290),
        .in_exitcond957_0(bb_atax_B3_out_c0_exe5),
        .in_flush(in_start),
        .in_forked2353_0(bb_atax_B3_out_c0_exe8),
        .in_idxprom54_0(bb_atax_B3_out_c0_exe189),
        .in_memdep_phi3_pop1027_pop1559_0(bb_atax_B3_out_c0_exe7),
        .in_memdep_phi3_pop1052_0(bb_atax_B3_out_c0_exe10),
        .in_memdep_phi_pop924_pop1456_0(bb_atax_B3_out_c0_exe3),
        .in_memdep_phi_pop947_0(bb_atax_B3_out_c0_exe9),
        .in_notcmp1558_0(bb_atax_B3_out_c0_exe6),
        .in_stall_in_0(bb_atax_B4_out_stall_out_0),
        .in_unnamed_atax3_0(bb_atax_B3_out_c0_exe4),
        .in_unnamed_atax4_atax_avm_readdata(in_unnamed_atax4_atax_avm_readdata),
        .in_unnamed_atax4_atax_avm_readdatavalid(in_unnamed_atax4_atax_avm_readdatavalid),
        .in_unnamed_atax4_atax_avm_waitrequest(in_unnamed_atax4_atax_avm_waitrequest),
        .in_unnamed_atax4_atax_avm_writeack(in_unnamed_atax4_atax_avm_writeack),
        .in_unnamed_atax5_atax_avm_readdata(in_unnamed_atax5_atax_avm_readdata),
        .in_unnamed_atax5_atax_avm_readdatavalid(in_unnamed_atax5_atax_avm_readdatavalid),
        .in_unnamed_atax5_atax_avm_waitrequest(in_unnamed_atax5_atax_avm_waitrequest),
        .in_unnamed_atax5_atax_avm_writeack(in_unnamed_atax5_atax_avm_writeack),
        .in_valid_in_0(bb_atax_B3_out_valid_out_0),
        .out_c0_exe10118(bb_atax_B5_out_c0_exe10118),
        .out_c0_exe11(bb_atax_B5_out_c0_exe11),
        .out_c0_exe1109(bb_atax_B5_out_c0_exe1109),
        .out_c0_exe12(bb_atax_B5_out_c0_exe12),
        .out_c0_exe2110(bb_atax_B5_out_c0_exe2110),
        .out_c0_exe5113(bb_atax_B5_out_c0_exe5113),
        .out_c0_exe6114(bb_atax_B5_out_c0_exe6114),
        .out_c0_exe7115(bb_atax_B5_out_c0_exe7115),
        .out_c0_exe8116(bb_atax_B5_out_c0_exe8116),
        .out_c0_exe9117(bb_atax_B5_out_c0_exe9117),
        .out_profile_loop_o_valid(bb_atax_B5_out_profile_loop_o_valid),
        .out_stall_in_0(bb_atax_B5_out_stall_in_0),
        .out_stall_out_0(bb_atax_B5_out_stall_out_0),
        .out_unnamed_atax4_atax_avm_address(bb_atax_B5_out_unnamed_atax4_atax_avm_address),
        .out_unnamed_atax4_atax_avm_burstcount(bb_atax_B5_out_unnamed_atax4_atax_avm_burstcount),
        .out_unnamed_atax4_atax_avm_byteenable(bb_atax_B5_out_unnamed_atax4_atax_avm_byteenable),
        .out_unnamed_atax4_atax_avm_enable(bb_atax_B5_out_unnamed_atax4_atax_avm_enable),
        .out_unnamed_atax4_atax_avm_read(bb_atax_B5_out_unnamed_atax4_atax_avm_read),
        .out_unnamed_atax4_atax_avm_write(bb_atax_B5_out_unnamed_atax4_atax_avm_write),
        .out_unnamed_atax4_atax_avm_writedata(bb_atax_B5_out_unnamed_atax4_atax_avm_writedata),
        .out_unnamed_atax5_atax_avm_address(bb_atax_B5_out_unnamed_atax5_atax_avm_address),
        .out_unnamed_atax5_atax_avm_burstcount(bb_atax_B5_out_unnamed_atax5_atax_avm_burstcount),
        .out_unnamed_atax5_atax_avm_byteenable(bb_atax_B5_out_unnamed_atax5_atax_avm_byteenable),
        .out_unnamed_atax5_atax_avm_enable(bb_atax_B5_out_unnamed_atax5_atax_avm_enable),
        .out_unnamed_atax5_atax_avm_read(bb_atax_B5_out_unnamed_atax5_atax_avm_read),
        .out_unnamed_atax5_atax_avm_write(bb_atax_B5_out_unnamed_atax5_atax_avm_write),
        .out_unnamed_atax5_atax_avm_writedata(bb_atax_B5_out_unnamed_atax5_atax_avm_writedata),
        .out_valid_in_0(bb_atax_B5_out_valid_in_0),
        .out_valid_out_0(bb_atax_B5_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B4(BLACKBOX,10)
    atax_bb_B4 thebb_atax_B4 (
        .in_c0_exe101188_0(bb_atax_B5_out_c0_exe10118),
        .in_c0_exe11091_0(bb_atax_B5_out_c0_exe1109),
        .in_c0_exe119_0(bb_atax_B5_out_c0_exe11),
        .in_c0_exe1210_0(bb_atax_B5_out_c0_exe12),
        .in_c0_exe21102_0(bb_atax_B5_out_c0_exe2110),
        .in_c0_exe51133_0(bb_atax_B5_out_c0_exe5113),
        .in_c0_exe61144_0(bb_atax_B5_out_c0_exe6114),
        .in_c0_exe71155_0(bb_atax_B5_out_c0_exe7115),
        .in_c0_exe81166_0(bb_atax_B5_out_c0_exe8116),
        .in_c0_exe91177_0(bb_atax_B5_out_c0_exe9117),
        .in_feedback_almost_empty_in_13(bb_atax_B6_out_feedback_almost_empty_out_13),
        .in_feedback_data_in_13(bb_atax_B6_out_feedback_data_out_13),
        .in_feedback_empty_in_13(bb_atax_B6_out_feedback_empty_out_13),
        .in_stall_in_0(bb_atax_B7_out_stall_out_0),
        .in_valid_in_0(bb_atax_B5_out_valid_out_0),
        .out_c0_exe101188(bb_atax_B4_out_c0_exe101188),
        .out_c0_exe11091(bb_atax_B4_out_c0_exe11091),
        .out_c0_exe119(bb_atax_B4_out_c0_exe119),
        .out_c0_exe1210(bb_atax_B4_out_c0_exe1210),
        .out_c0_exe21102(bb_atax_B4_out_c0_exe21102),
        .out_c0_exe51133(bb_atax_B4_out_c0_exe51133),
        .out_c0_exe61144(bb_atax_B4_out_c0_exe61144),
        .out_c0_exe81166(bb_atax_B4_out_c0_exe81166),
        .out_c0_exe91177(bb_atax_B4_out_c0_exe91177),
        .out_feedback_stall_out_13(bb_atax_B4_out_feedback_stall_out_13),
        .out_memdep_phi2_pop13(bb_atax_B4_out_memdep_phi2_pop13),
        .out_stall_out_0(bb_atax_B4_out_stall_out_0),
        .out_valid_out_0(bb_atax_B4_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B7(BLACKBOX,13)
    atax_bb_B7 thebb_atax_B7 (
        .in_add63_0(bb_atax_B4_out_c0_exe21102),
        .in_arrayidx134_pop2370_0(bb_atax_B4_out_c0_exe81166),
        .in_exitcond936_pop2472_0(bb_atax_B4_out_c0_exe91177),
        .in_flush(in_start),
        .in_idxprom32_pop2261_0(bb_atax_B4_out_c0_exe11091),
        .in_memdep_1_atax_avm_readdata(in_memdep_1_atax_avm_readdata),
        .in_memdep_1_atax_avm_readdatavalid(in_memdep_1_atax_avm_readdatavalid),
        .in_memdep_1_atax_avm_waitrequest(in_memdep_1_atax_avm_waitrequest),
        .in_memdep_1_atax_avm_writeack(in_memdep_1_atax_avm_writeack),
        .in_memdep_phi2_pop1360_0(bb_atax_B4_out_memdep_phi2_pop13),
        .in_memdep_phi3_pop1028_pop2067_0(bb_atax_B4_out_c0_exe61144),
        .in_memdep_phi3_pop1050_0(bb_atax_B4_out_c0_exe1210),
        .in_memdep_phi_pop925_pop1965_0(bb_atax_B4_out_c0_exe51133),
        .in_memdep_phi_pop945_0(bb_atax_B4_out_c0_exe119),
        .in_notcmp1538_pop2574_0(bb_atax_B4_out_c0_exe101188),
        .in_stall_in_0(bb_atax_B6_out_stall_out_0),
        .in_unnamed_atax7_atax_avm_readdata(in_unnamed_atax7_atax_avm_readdata),
        .in_unnamed_atax7_atax_avm_readdatavalid(in_unnamed_atax7_atax_avm_readdatavalid),
        .in_unnamed_atax7_atax_avm_waitrequest(in_unnamed_atax7_atax_avm_waitrequest),
        .in_unnamed_atax7_atax_avm_writeack(in_unnamed_atax7_atax_avm_writeack),
        .in_unnamed_atax8_atax_avm_readdata(in_unnamed_atax8_atax_avm_readdata),
        .in_unnamed_atax8_atax_avm_readdatavalid(in_unnamed_atax8_atax_avm_readdatavalid),
        .in_unnamed_atax8_atax_avm_waitrequest(in_unnamed_atax8_atax_avm_waitrequest),
        .in_unnamed_atax8_atax_avm_writeack(in_unnamed_atax8_atax_avm_writeack),
        .in_valid_in_0(bb_atax_B4_out_valid_out_0),
        .out_c0_exe1160(bb_atax_B7_out_c0_exe1160),
        .out_c0_exe2161(bb_atax_B7_out_c0_exe2161),
        .out_c0_exe5164(bb_atax_B7_out_c0_exe5164),
        .out_c0_exe6165(bb_atax_B7_out_c0_exe6165),
        .out_c0_exe7166(bb_atax_B7_out_c0_exe7166),
        .out_memdep_1_atax_avm_address(bb_atax_B7_out_memdep_1_atax_avm_address),
        .out_memdep_1_atax_avm_burstcount(bb_atax_B7_out_memdep_1_atax_avm_burstcount),
        .out_memdep_1_atax_avm_byteenable(bb_atax_B7_out_memdep_1_atax_avm_byteenable),
        .out_memdep_1_atax_avm_enable(bb_atax_B7_out_memdep_1_atax_avm_enable),
        .out_memdep_1_atax_avm_read(bb_atax_B7_out_memdep_1_atax_avm_read),
        .out_memdep_1_atax_avm_write(bb_atax_B7_out_memdep_1_atax_avm_write),
        .out_memdep_1_atax_avm_writedata(bb_atax_B7_out_memdep_1_atax_avm_writedata),
        .out_profile_loop_o_valid(bb_atax_B7_out_profile_loop_o_valid),
        .out_stall_in_0(bb_atax_B7_out_stall_in_0),
        .out_stall_out_0(bb_atax_B7_out_stall_out_0),
        .out_unnamed_atax7_atax_avm_address(bb_atax_B7_out_unnamed_atax7_atax_avm_address),
        .out_unnamed_atax7_atax_avm_burstcount(bb_atax_B7_out_unnamed_atax7_atax_avm_burstcount),
        .out_unnamed_atax7_atax_avm_byteenable(bb_atax_B7_out_unnamed_atax7_atax_avm_byteenable),
        .out_unnamed_atax7_atax_avm_enable(bb_atax_B7_out_unnamed_atax7_atax_avm_enable),
        .out_unnamed_atax7_atax_avm_read(bb_atax_B7_out_unnamed_atax7_atax_avm_read),
        .out_unnamed_atax7_atax_avm_write(bb_atax_B7_out_unnamed_atax7_atax_avm_write),
        .out_unnamed_atax7_atax_avm_writedata(bb_atax_B7_out_unnamed_atax7_atax_avm_writedata),
        .out_unnamed_atax8_atax_avm_address(bb_atax_B7_out_unnamed_atax8_atax_avm_address),
        .out_unnamed_atax8_atax_avm_burstcount(bb_atax_B7_out_unnamed_atax8_atax_avm_burstcount),
        .out_unnamed_atax8_atax_avm_byteenable(bb_atax_B7_out_unnamed_atax8_atax_avm_byteenable),
        .out_unnamed_atax8_atax_avm_enable(bb_atax_B7_out_unnamed_atax8_atax_avm_enable),
        .out_unnamed_atax8_atax_avm_read(bb_atax_B7_out_unnamed_atax8_atax_avm_read),
        .out_unnamed_atax8_atax_avm_write(bb_atax_B7_out_unnamed_atax8_atax_avm_write),
        .out_unnamed_atax8_atax_avm_writedata(bb_atax_B7_out_unnamed_atax8_atax_avm_writedata),
        .out_valid_in_0(bb_atax_B7_out_valid_in_0),
        .out_valid_out_0(bb_atax_B7_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B6(BLACKBOX,12)
    atax_bb_B6 thebb_atax_B6 (
        .in_c0_exe116012_0(bb_atax_B7_out_c0_exe1160),
        .in_c0_exe216113_0(bb_atax_B7_out_c0_exe2161),
        .in_c0_exe516414_0(bb_atax_B7_out_c0_exe5164),
        .in_c0_exe616515_0(bb_atax_B7_out_c0_exe6165),
        .in_c0_exe716616_0(bb_atax_B7_out_c0_exe7166),
        .in_feedback_stall_in_13(bb_atax_B4_out_feedback_stall_out_13),
        .in_flush(in_start),
        .in_memdep_atax_avm_readdata(in_memdep_atax_avm_readdata),
        .in_memdep_atax_avm_readdatavalid(in_memdep_atax_avm_readdatavalid),
        .in_memdep_atax_avm_waitrequest(in_memdep_atax_avm_waitrequest),
        .in_memdep_atax_avm_writeack(in_memdep_atax_avm_writeack),
        .in_stall_in_0(bb_atax_B2_out_stall_out_0),
        .in_valid_in_0(bb_atax_B7_out_valid_out_0),
        .out_c0_exe1126(bb_atax_B6_out_c0_exe1126),
        .out_feedback_almost_empty_out_13(bb_atax_B6_out_feedback_almost_empty_out_13),
        .out_feedback_data_out_13(bb_atax_B6_out_feedback_data_out_13),
        .out_feedback_empty_out_13(bb_atax_B6_out_feedback_empty_out_13),
        .out_memdep_atax_avm_address(bb_atax_B6_out_memdep_atax_avm_address),
        .out_memdep_atax_avm_burstcount(bb_atax_B6_out_memdep_atax_avm_burstcount),
        .out_memdep_atax_avm_byteenable(bb_atax_B6_out_memdep_atax_avm_byteenable),
        .out_memdep_atax_avm_enable(bb_atax_B6_out_memdep_atax_avm_enable),
        .out_memdep_atax_avm_read(bb_atax_B6_out_memdep_atax_avm_read),
        .out_memdep_atax_avm_write(bb_atax_B6_out_memdep_atax_avm_write),
        .out_memdep_atax_avm_writedata(bb_atax_B6_out_memdep_atax_avm_writedata),
        .out_stall_in_0(bb_atax_B6_out_stall_in_0),
        .out_stall_out_0(bb_atax_B6_out_stall_out_0),
        .out_valid_in_0(bb_atax_B6_out_valid_in_0),
        .out_valid_out_0(bb_atax_B6_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B2(BLACKBOX,8)
    atax_bb_B2 thebb_atax_B2 (
        .in_c0_exe112611_0(bb_atax_B6_out_c0_exe1126),
        .in_feedback_stall_in_10(bb_atax_B1_start_out_feedback_stall_out_10),
        .in_iowr_bl_return_atax_i_fifoready(in_iowr_bl_return_atax_i_fifoready),
        .in_stall_in_0(in_stall_in),
        .in_valid_in_0(bb_atax_B6_out_valid_out_0),
        .out_feedback_almost_empty_out_10(bb_atax_B2_out_feedback_almost_empty_out_10),
        .out_feedback_data_out_10(bb_atax_B2_out_feedback_data_out_10),
        .out_feedback_empty_out_10(bb_atax_B2_out_feedback_empty_out_10),
        .out_iowr_bl_return_atax_o_fifodata(bb_atax_B2_out_iowr_bl_return_atax_o_fifodata),
        .out_iowr_bl_return_atax_o_fifovalid(bb_atax_B2_out_iowr_bl_return_atax_o_fifovalid),
        .out_stall_in_0(bb_atax_B2_out_stall_in_0),
        .out_stall_out_0(bb_atax_B2_out_stall_out_0),
        .out_valid_in_0(bb_atax_B2_out_valid_in_0),
        .out_valid_out_0(bb_atax_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B0_runOnce(BLACKBOX,6)
    atax_bb_B0_runOnce thebb_atax_B0_runOnce (
        .in_stall_in_0(bb_atax_B1_start_out_stall_out_0),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_atax_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(bb_atax_B0_runOnce_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B1_start(BLACKBOX,7)
    atax_bb_B1_start thebb_atax_B1_start (
        .in_feedback_almost_empty_in_10(bb_atax_B2_out_feedback_almost_empty_out_10),
        .in_feedback_data_in_10(bb_atax_B2_out_feedback_data_out_10),
        .in_feedback_empty_in_10(bb_atax_B2_out_feedback_empty_out_10),
        .in_iord_bl_call_atax_i_fifodata(in_iord_bl_call_atax_i_fifodata),
        .in_iord_bl_call_atax_i_fifovalid(in_iord_bl_call_atax_i_fifovalid),
        .in_stall_in_0(bb_atax_B3_out_stall_out_0),
        .in_valid_in_0(bb_atax_B0_runOnce_out_valid_out_0),
        .out_feedback_stall_out_10(bb_atax_B1_start_out_feedback_stall_out_10),
        .out_iord_bl_call_atax_o_fifoalmost_full(bb_atax_B1_start_out_iord_bl_call_atax_o_fifoalmost_full),
        .out_iord_bl_call_atax_o_fifoready(bb_atax_B1_start_out_iord_bl_call_atax_o_fifoready),
        .out_memdep_phi_pop9(bb_atax_B1_start_out_memdep_phi_pop9),
        .out_stall_out_0(bb_atax_B1_start_out_stall_out_0),
        .out_valid_in_0(bb_atax_B1_start_out_valid_in_0),
        .out_valid_out_0(bb_atax_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // atax_B1_start_x(EXTIFACE,2)
    assign atax_B1_start_x_i_capture = GND_q;
    assign atax_B1_start_x_i_clear = GND_q;
    assign atax_B1_start_x_i_enable = VCC_q;
    assign atax_B1_start_x_i_shift = GND_q;
    assign atax_B1_start_x_i_stall_pred = bb_atax_B1_start_out_stall_out_0;
    assign atax_B1_start_x_i_stall_succ = bb_atax_B2_out_stall_in_0;
    assign atax_B1_start_x_i_valid_loop = bb_atax_B2_out_valid_in_0;
    assign atax_B1_start_x_i_valid_pred = bb_atax_B1_start_out_valid_in_0;
    assign atax_B1_start_x_i_valid_succ = bb_atax_B2_out_valid_out_0;
    assign atax_B1_start_x_i_capture_bitsignaltemp = atax_B1_start_x_i_capture[0];
    assign atax_B1_start_x_i_clear_bitsignaltemp = atax_B1_start_x_i_clear[0];
    assign atax_B1_start_x_i_enable_bitsignaltemp = atax_B1_start_x_i_enable[0];
    assign atax_B1_start_x_i_shift_bitsignaltemp = atax_B1_start_x_i_shift[0];
    assign atax_B1_start_x_i_stall_pred_bitsignaltemp = atax_B1_start_x_i_stall_pred[0];
    assign atax_B1_start_x_i_stall_succ_bitsignaltemp = atax_B1_start_x_i_stall_succ[0];
    assign atax_B1_start_x_i_valid_loop_bitsignaltemp = atax_B1_start_x_i_valid_loop[0];
    assign atax_B1_start_x_i_valid_pred_bitsignaltemp = atax_B1_start_x_i_valid_pred[0];
    assign atax_B1_start_x_i_valid_succ_bitsignaltemp = atax_B1_start_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("atax.B1.start")
    ) theatax_B1_start_x (
        .i_capture(atax_B1_start_x_i_capture_bitsignaltemp),
        .i_clear(atax_B1_start_x_i_clear_bitsignaltemp),
        .i_enable(atax_B1_start_x_i_enable_bitsignaltemp),
        .i_shift(atax_B1_start_x_i_shift_bitsignaltemp),
        .i_stall_pred(atax_B1_start_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(atax_B1_start_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(atax_B1_start_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(atax_B1_start_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(atax_B1_start_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // atax_B3_x(EXTIFACE,3)
    assign atax_B3_x_i_capture = GND_q;
    assign atax_B3_x_i_clear = GND_q;
    assign atax_B3_x_i_enable = VCC_q;
    assign atax_B3_x_i_shift = GND_q;
    assign atax_B3_x_i_stall_pred = bb_atax_B3_out_stall_out_0;
    assign atax_B3_x_i_stall_succ = bb_atax_B6_out_stall_in_0;
    assign atax_B3_x_i_valid_loop = bb_atax_B6_out_valid_in_0;
    assign atax_B3_x_i_valid_pred = bb_atax_B3_out_valid_in_0;
    assign atax_B3_x_i_valid_succ = bb_atax_B6_out_valid_out_0;
    assign atax_B3_x_i_capture_bitsignaltemp = atax_B3_x_i_capture[0];
    assign atax_B3_x_i_clear_bitsignaltemp = atax_B3_x_i_clear[0];
    assign atax_B3_x_i_enable_bitsignaltemp = atax_B3_x_i_enable[0];
    assign atax_B3_x_i_shift_bitsignaltemp = atax_B3_x_i_shift[0];
    assign atax_B3_x_i_stall_pred_bitsignaltemp = atax_B3_x_i_stall_pred[0];
    assign atax_B3_x_i_stall_succ_bitsignaltemp = atax_B3_x_i_stall_succ[0];
    assign atax_B3_x_i_valid_loop_bitsignaltemp = atax_B3_x_i_valid_loop[0];
    assign atax_B3_x_i_valid_pred_bitsignaltemp = atax_B3_x_i_valid_pred[0];
    assign atax_B3_x_i_valid_succ_bitsignaltemp = atax_B3_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("atax.B3")
    ) theatax_B3_x (
        .i_capture(atax_B3_x_i_capture_bitsignaltemp),
        .i_clear(atax_B3_x_i_clear_bitsignaltemp),
        .i_enable(atax_B3_x_i_enable_bitsignaltemp),
        .i_shift(atax_B3_x_i_shift_bitsignaltemp),
        .i_stall_pred(atax_B3_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(atax_B3_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(atax_B3_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(atax_B3_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(atax_B3_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // atax_B5_x(EXTIFACE,4)
    assign atax_B5_x_i_capture = GND_q;
    assign atax_B5_x_i_clear = GND_q;
    assign atax_B5_x_i_enable = VCC_q;
    assign atax_B5_x_i_shift = GND_q;
    assign atax_B5_x_i_stall_pred = bb_atax_B5_out_stall_out_0;
    assign atax_B5_x_i_stall_succ = bb_atax_B5_out_stall_in_0;
    assign atax_B5_x_i_valid_loop = bb_atax_B5_out_profile_loop_o_valid;
    assign atax_B5_x_i_valid_pred = bb_atax_B5_out_valid_in_0;
    assign atax_B5_x_i_valid_succ = bb_atax_B5_out_valid_out_0;
    assign atax_B5_x_i_capture_bitsignaltemp = atax_B5_x_i_capture[0];
    assign atax_B5_x_i_clear_bitsignaltemp = atax_B5_x_i_clear[0];
    assign atax_B5_x_i_enable_bitsignaltemp = atax_B5_x_i_enable[0];
    assign atax_B5_x_i_shift_bitsignaltemp = atax_B5_x_i_shift[0];
    assign atax_B5_x_i_stall_pred_bitsignaltemp = atax_B5_x_i_stall_pred[0];
    assign atax_B5_x_i_stall_succ_bitsignaltemp = atax_B5_x_i_stall_succ[0];
    assign atax_B5_x_i_valid_loop_bitsignaltemp = atax_B5_x_i_valid_loop[0];
    assign atax_B5_x_i_valid_pred_bitsignaltemp = atax_B5_x_i_valid_pred[0];
    assign atax_B5_x_i_valid_succ_bitsignaltemp = atax_B5_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("atax.B5")
    ) theatax_B5_x (
        .i_capture(atax_B5_x_i_capture_bitsignaltemp),
        .i_clear(atax_B5_x_i_clear_bitsignaltemp),
        .i_enable(atax_B5_x_i_enable_bitsignaltemp),
        .i_shift(atax_B5_x_i_shift_bitsignaltemp),
        .i_stall_pred(atax_B5_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(atax_B5_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(atax_B5_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(atax_B5_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(atax_B5_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // atax_B7_x(EXTIFACE,5)
    assign atax_B7_x_i_capture = GND_q;
    assign atax_B7_x_i_clear = GND_q;
    assign atax_B7_x_i_enable = VCC_q;
    assign atax_B7_x_i_shift = GND_q;
    assign atax_B7_x_i_stall_pred = bb_atax_B7_out_stall_out_0;
    assign atax_B7_x_i_stall_succ = bb_atax_B7_out_stall_in_0;
    assign atax_B7_x_i_valid_loop = bb_atax_B7_out_profile_loop_o_valid;
    assign atax_B7_x_i_valid_pred = bb_atax_B7_out_valid_in_0;
    assign atax_B7_x_i_valid_succ = bb_atax_B7_out_valid_out_0;
    assign atax_B7_x_i_capture_bitsignaltemp = atax_B7_x_i_capture[0];
    assign atax_B7_x_i_clear_bitsignaltemp = atax_B7_x_i_clear[0];
    assign atax_B7_x_i_enable_bitsignaltemp = atax_B7_x_i_enable[0];
    assign atax_B7_x_i_shift_bitsignaltemp = atax_B7_x_i_shift[0];
    assign atax_B7_x_i_stall_pred_bitsignaltemp = atax_B7_x_i_stall_pred[0];
    assign atax_B7_x_i_stall_succ_bitsignaltemp = atax_B7_x_i_stall_succ[0];
    assign atax_B7_x_i_valid_loop_bitsignaltemp = atax_B7_x_i_valid_loop[0];
    assign atax_B7_x_i_valid_pred_bitsignaltemp = atax_B7_x_i_valid_pred[0];
    assign atax_B7_x_i_valid_succ_bitsignaltemp = atax_B7_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("atax.B7")
    ) theatax_B7_x (
        .i_capture(atax_B7_x_i_capture_bitsignaltemp),
        .i_clear(atax_B7_x_i_clear_bitsignaltemp),
        .i_enable(atax_B7_x_i_enable_bitsignaltemp),
        .i_shift(atax_B7_x_i_shift_bitsignaltemp),
        .i_stall_pred(atax_B7_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(atax_B7_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(atax_B7_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(atax_B7_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(atax_B7_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // out_iord_bl_call_atax_o_fifoalmost_full(GPOUT,62)
    assign out_iord_bl_call_atax_o_fifoalmost_full = bb_atax_B1_start_out_iord_bl_call_atax_o_fifoalmost_full;

    // out_iord_bl_call_atax_o_fifoready(GPOUT,63)
    assign out_iord_bl_call_atax_o_fifoready = bb_atax_B1_start_out_iord_bl_call_atax_o_fifoready;

    // out_iowr_bl_return_atax_o_fifodata(GPOUT,64)
    assign out_iowr_bl_return_atax_o_fifodata = bb_atax_B2_out_iowr_bl_return_atax_o_fifodata;

    // out_iowr_bl_return_atax_o_fifovalid(GPOUT,65)
    assign out_iowr_bl_return_atax_o_fifovalid = bb_atax_B2_out_iowr_bl_return_atax_o_fifovalid;

    // out_memdep_1_atax_avm_address(GPOUT,66)
    assign out_memdep_1_atax_avm_address = bb_atax_B7_out_memdep_1_atax_avm_address;

    // out_memdep_1_atax_avm_burstcount(GPOUT,67)
    assign out_memdep_1_atax_avm_burstcount = bb_atax_B7_out_memdep_1_atax_avm_burstcount;

    // out_memdep_1_atax_avm_byteenable(GPOUT,68)
    assign out_memdep_1_atax_avm_byteenable = bb_atax_B7_out_memdep_1_atax_avm_byteenable;

    // out_memdep_1_atax_avm_enable(GPOUT,69)
    assign out_memdep_1_atax_avm_enable = bb_atax_B7_out_memdep_1_atax_avm_enable;

    // out_memdep_1_atax_avm_read(GPOUT,70)
    assign out_memdep_1_atax_avm_read = bb_atax_B7_out_memdep_1_atax_avm_read;

    // out_memdep_1_atax_avm_write(GPOUT,71)
    assign out_memdep_1_atax_avm_write = bb_atax_B7_out_memdep_1_atax_avm_write;

    // out_memdep_1_atax_avm_writedata(GPOUT,72)
    assign out_memdep_1_atax_avm_writedata = bb_atax_B7_out_memdep_1_atax_avm_writedata;

    // out_memdep_atax_avm_address(GPOUT,73)
    assign out_memdep_atax_avm_address = bb_atax_B6_out_memdep_atax_avm_address;

    // out_memdep_atax_avm_burstcount(GPOUT,74)
    assign out_memdep_atax_avm_burstcount = bb_atax_B6_out_memdep_atax_avm_burstcount;

    // out_memdep_atax_avm_byteenable(GPOUT,75)
    assign out_memdep_atax_avm_byteenable = bb_atax_B6_out_memdep_atax_avm_byteenable;

    // out_memdep_atax_avm_enable(GPOUT,76)
    assign out_memdep_atax_avm_enable = bb_atax_B6_out_memdep_atax_avm_enable;

    // out_memdep_atax_avm_read(GPOUT,77)
    assign out_memdep_atax_avm_read = bb_atax_B6_out_memdep_atax_avm_read;

    // out_memdep_atax_avm_write(GPOUT,78)
    assign out_memdep_atax_avm_write = bb_atax_B6_out_memdep_atax_avm_write;

    // out_memdep_atax_avm_writedata(GPOUT,79)
    assign out_memdep_atax_avm_writedata = bb_atax_B6_out_memdep_atax_avm_writedata;

    // out_stall_out(GPOUT,80)
    assign out_stall_out = bb_atax_B0_runOnce_out_stall_out_0;

    // out_unnamed_atax2_atax_avm_address(GPOUT,81)
    assign out_unnamed_atax2_atax_avm_address = bb_atax_B3_out_unnamed_atax2_atax_avm_address;

    // out_unnamed_atax2_atax_avm_burstcount(GPOUT,82)
    assign out_unnamed_atax2_atax_avm_burstcount = bb_atax_B3_out_unnamed_atax2_atax_avm_burstcount;

    // out_unnamed_atax2_atax_avm_byteenable(GPOUT,83)
    assign out_unnamed_atax2_atax_avm_byteenable = bb_atax_B3_out_unnamed_atax2_atax_avm_byteenable;

    // out_unnamed_atax2_atax_avm_enable(GPOUT,84)
    assign out_unnamed_atax2_atax_avm_enable = bb_atax_B3_out_unnamed_atax2_atax_avm_enable;

    // out_unnamed_atax2_atax_avm_read(GPOUT,85)
    assign out_unnamed_atax2_atax_avm_read = bb_atax_B3_out_unnamed_atax2_atax_avm_read;

    // out_unnamed_atax2_atax_avm_write(GPOUT,86)
    assign out_unnamed_atax2_atax_avm_write = bb_atax_B3_out_unnamed_atax2_atax_avm_write;

    // out_unnamed_atax2_atax_avm_writedata(GPOUT,87)
    assign out_unnamed_atax2_atax_avm_writedata = bb_atax_B3_out_unnamed_atax2_atax_avm_writedata;

    // out_unnamed_atax4_atax_avm_address(GPOUT,88)
    assign out_unnamed_atax4_atax_avm_address = bb_atax_B5_out_unnamed_atax4_atax_avm_address;

    // out_unnamed_atax4_atax_avm_burstcount(GPOUT,89)
    assign out_unnamed_atax4_atax_avm_burstcount = bb_atax_B5_out_unnamed_atax4_atax_avm_burstcount;

    // out_unnamed_atax4_atax_avm_byteenable(GPOUT,90)
    assign out_unnamed_atax4_atax_avm_byteenable = bb_atax_B5_out_unnamed_atax4_atax_avm_byteenable;

    // out_unnamed_atax4_atax_avm_enable(GPOUT,91)
    assign out_unnamed_atax4_atax_avm_enable = bb_atax_B5_out_unnamed_atax4_atax_avm_enable;

    // out_unnamed_atax4_atax_avm_read(GPOUT,92)
    assign out_unnamed_atax4_atax_avm_read = bb_atax_B5_out_unnamed_atax4_atax_avm_read;

    // out_unnamed_atax4_atax_avm_write(GPOUT,93)
    assign out_unnamed_atax4_atax_avm_write = bb_atax_B5_out_unnamed_atax4_atax_avm_write;

    // out_unnamed_atax4_atax_avm_writedata(GPOUT,94)
    assign out_unnamed_atax4_atax_avm_writedata = bb_atax_B5_out_unnamed_atax4_atax_avm_writedata;

    // out_unnamed_atax5_atax_avm_address(GPOUT,95)
    assign out_unnamed_atax5_atax_avm_address = bb_atax_B5_out_unnamed_atax5_atax_avm_address;

    // out_unnamed_atax5_atax_avm_burstcount(GPOUT,96)
    assign out_unnamed_atax5_atax_avm_burstcount = bb_atax_B5_out_unnamed_atax5_atax_avm_burstcount;

    // out_unnamed_atax5_atax_avm_byteenable(GPOUT,97)
    assign out_unnamed_atax5_atax_avm_byteenable = bb_atax_B5_out_unnamed_atax5_atax_avm_byteenable;

    // out_unnamed_atax5_atax_avm_enable(GPOUT,98)
    assign out_unnamed_atax5_atax_avm_enable = bb_atax_B5_out_unnamed_atax5_atax_avm_enable;

    // out_unnamed_atax5_atax_avm_read(GPOUT,99)
    assign out_unnamed_atax5_atax_avm_read = bb_atax_B5_out_unnamed_atax5_atax_avm_read;

    // out_unnamed_atax5_atax_avm_write(GPOUT,100)
    assign out_unnamed_atax5_atax_avm_write = bb_atax_B5_out_unnamed_atax5_atax_avm_write;

    // out_unnamed_atax5_atax_avm_writedata(GPOUT,101)
    assign out_unnamed_atax5_atax_avm_writedata = bb_atax_B5_out_unnamed_atax5_atax_avm_writedata;

    // out_unnamed_atax7_atax_avm_address(GPOUT,102)
    assign out_unnamed_atax7_atax_avm_address = bb_atax_B7_out_unnamed_atax7_atax_avm_address;

    // out_unnamed_atax7_atax_avm_burstcount(GPOUT,103)
    assign out_unnamed_atax7_atax_avm_burstcount = bb_atax_B7_out_unnamed_atax7_atax_avm_burstcount;

    // out_unnamed_atax7_atax_avm_byteenable(GPOUT,104)
    assign out_unnamed_atax7_atax_avm_byteenable = bb_atax_B7_out_unnamed_atax7_atax_avm_byteenable;

    // out_unnamed_atax7_atax_avm_enable(GPOUT,105)
    assign out_unnamed_atax7_atax_avm_enable = bb_atax_B7_out_unnamed_atax7_atax_avm_enable;

    // out_unnamed_atax7_atax_avm_read(GPOUT,106)
    assign out_unnamed_atax7_atax_avm_read = bb_atax_B7_out_unnamed_atax7_atax_avm_read;

    // out_unnamed_atax7_atax_avm_write(GPOUT,107)
    assign out_unnamed_atax7_atax_avm_write = bb_atax_B7_out_unnamed_atax7_atax_avm_write;

    // out_unnamed_atax7_atax_avm_writedata(GPOUT,108)
    assign out_unnamed_atax7_atax_avm_writedata = bb_atax_B7_out_unnamed_atax7_atax_avm_writedata;

    // out_unnamed_atax8_atax_avm_address(GPOUT,109)
    assign out_unnamed_atax8_atax_avm_address = bb_atax_B7_out_unnamed_atax8_atax_avm_address;

    // out_unnamed_atax8_atax_avm_burstcount(GPOUT,110)
    assign out_unnamed_atax8_atax_avm_burstcount = bb_atax_B7_out_unnamed_atax8_atax_avm_burstcount;

    // out_unnamed_atax8_atax_avm_byteenable(GPOUT,111)
    assign out_unnamed_atax8_atax_avm_byteenable = bb_atax_B7_out_unnamed_atax8_atax_avm_byteenable;

    // out_unnamed_atax8_atax_avm_enable(GPOUT,112)
    assign out_unnamed_atax8_atax_avm_enable = bb_atax_B7_out_unnamed_atax8_atax_avm_enable;

    // out_unnamed_atax8_atax_avm_read(GPOUT,113)
    assign out_unnamed_atax8_atax_avm_read = bb_atax_B7_out_unnamed_atax8_atax_avm_read;

    // out_unnamed_atax8_atax_avm_write(GPOUT,114)
    assign out_unnamed_atax8_atax_avm_write = bb_atax_B7_out_unnamed_atax8_atax_avm_write;

    // out_unnamed_atax8_atax_avm_writedata(GPOUT,115)
    assign out_unnamed_atax8_atax_avm_writedata = bb_atax_B7_out_unnamed_atax8_atax_avm_writedata;

    // out_valid_out(GPOUT,116)
    assign out_valid_out = bb_atax_B2_out_valid_out_0;

    // rst_sync(RESETSYNC,117)
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
