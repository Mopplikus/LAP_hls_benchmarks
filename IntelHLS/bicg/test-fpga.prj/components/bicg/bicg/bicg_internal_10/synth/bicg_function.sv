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
// SystemVerilog created on Wed Apr 26 14:15:49 2023


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
    input wire [31:0] in_memdep_bicg_avm_readdata,
    input wire [0:0] in_memdep_bicg_avm_readdatavalid,
    input wire [0:0] in_memdep_bicg_avm_waitrequest,
    input wire [0:0] in_memdep_bicg_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [31:0] in_unnamed_bicg2_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg2_bicg_avm_readdatavalid,
    input wire [0:0] in_unnamed_bicg2_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg2_bicg_avm_writeack,
    input wire [31:0] in_unnamed_bicg5_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg5_bicg_avm_readdatavalid,
    input wire [0:0] in_unnamed_bicg5_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg5_bicg_avm_writeack,
    input wire [31:0] in_unnamed_bicg6_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg6_bicg_avm_readdatavalid,
    input wire [0:0] in_unnamed_bicg6_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg6_bicg_avm_writeack,
    input wire [31:0] in_unnamed_bicg7_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg7_bicg_avm_readdatavalid,
    input wire [0:0] in_unnamed_bicg7_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg7_bicg_avm_writeack,
    input wire [31:0] in_unnamed_bicg8_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg8_bicg_avm_readdatavalid,
    input wire [0:0] in_unnamed_bicg8_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg8_bicg_avm_writeack,
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
    output wire [31:0] out_memdep_bicg_avm_address,
    output wire [0:0] out_memdep_bicg_avm_burstcount,
    output wire [3:0] out_memdep_bicg_avm_byteenable,
    output wire [0:0] out_memdep_bicg_avm_enable,
    output wire [0:0] out_memdep_bicg_avm_read,
    output wire [0:0] out_memdep_bicg_avm_write,
    output wire [31:0] out_memdep_bicg_avm_writedata,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_bicg2_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg2_bicg_avm_burstcount,
    output wire [3:0] out_unnamed_bicg2_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg2_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg2_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg2_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg2_bicg_avm_writedata,
    output wire [31:0] out_unnamed_bicg5_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg5_bicg_avm_burstcount,
    output wire [3:0] out_unnamed_bicg5_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg5_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg5_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg5_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg5_bicg_avm_writedata,
    output wire [31:0] out_unnamed_bicg6_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg6_bicg_avm_burstcount,
    output wire [3:0] out_unnamed_bicg6_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg6_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg6_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg6_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg6_bicg_avm_writedata,
    output wire [31:0] out_unnamed_bicg7_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg7_bicg_avm_burstcount,
    output wire [3:0] out_unnamed_bicg7_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg7_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg7_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg7_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg7_bicg_avm_writedata,
    output wire [31:0] out_unnamed_bicg8_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg8_bicg_avm_burstcount,
    output wire [3:0] out_unnamed_bicg8_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg8_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg8_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg8_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg8_bicg_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_bicg_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_bicg_B0_runOnce_out_valid_out_0;
    wire [0:0] bb_bicg_B1_start_out_feedback_stall_out_8;
    wire [0:0] bb_bicg_B1_start_out_iord_bl_call_bicg_o_fifoalmost_full;
    wire [0:0] bb_bicg_B1_start_out_iord_bl_call_bicg_o_fifoready;
    wire [0:0] bb_bicg_B1_start_out_memdep_phi_pop7;
    wire [0:0] bb_bicg_B1_start_out_stall_out_0;
    wire [0:0] bb_bicg_B1_start_out_valid_in_0;
    wire [0:0] bb_bicg_B1_start_out_valid_out_0;
    wire [0:0] bb_bicg_B2_out_feedback_almost_empty_out_8;
    wire [0:0] bb_bicg_B2_out_feedback_data_out_8;
    wire [0:0] bb_bicg_B2_out_feedback_empty_out_8;
    wire [0:0] bb_bicg_B2_out_iowr_bl_return_bicg_o_fifodata;
    wire [0:0] bb_bicg_B2_out_iowr_bl_return_bicg_o_fifovalid;
    wire [0:0] bb_bicg_B2_out_stall_in_0;
    wire [0:0] bb_bicg_B2_out_stall_out_0;
    wire [0:0] bb_bicg_B2_out_valid_in_0;
    wire [0:0] bb_bicg_B2_out_valid_out_0;
    wire [0:0] bb_bicg_B3_out_c0_exe10;
    wire [63:0] bb_bicg_B3_out_c0_exe153;
    wire [63:0] bb_bicg_B3_out_c0_exe254;
    wire [0:0] bb_bicg_B3_out_c0_exe3;
    wire [31:0] bb_bicg_B3_out_c0_exe4;
    wire [0:0] bb_bicg_B3_out_c0_exe5;
    wire [0:0] bb_bicg_B3_out_c0_exe6;
    wire [0:0] bb_bicg_B3_out_c0_exe7;
    wire [0:0] bb_bicg_B3_out_c0_exe9;
    wire [0:0] bb_bicg_B3_out_feedback_stall_out_11;
    wire [0:0] bb_bicg_B3_out_memdep_phi2_pop11;
    wire [0:0] bb_bicg_B3_out_stall_out_0;
    wire [31:0] bb_bicg_B3_out_unnamed_bicg2_bicg_avm_address;
    wire [0:0] bb_bicg_B3_out_unnamed_bicg2_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B3_out_unnamed_bicg2_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B3_out_unnamed_bicg2_bicg_avm_enable;
    wire [0:0] bb_bicg_B3_out_unnamed_bicg2_bicg_avm_read;
    wire [0:0] bb_bicg_B3_out_unnamed_bicg2_bicg_avm_write;
    wire [31:0] bb_bicg_B3_out_unnamed_bicg2_bicg_avm_writedata;
    wire [0:0] bb_bicg_B3_out_valid_in_0;
    wire [0:0] bb_bicg_B3_out_valid_out_0;
    wire [0:0] bb_bicg_B4_out_c0_exe162;
    wire [0:0] bb_bicg_B4_out_feedback_almost_empty_out_11;
    wire [0:0] bb_bicg_B4_out_feedback_data_out_11;
    wire [0:0] bb_bicg_B4_out_feedback_empty_out_11;
    wire [31:0] bb_bicg_B4_out_memdep_bicg_avm_address;
    wire [0:0] bb_bicg_B4_out_memdep_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B4_out_memdep_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B4_out_memdep_bicg_avm_enable;
    wire [0:0] bb_bicg_B4_out_memdep_bicg_avm_read;
    wire [0:0] bb_bicg_B4_out_memdep_bicg_avm_write;
    wire [31:0] bb_bicg_B4_out_memdep_bicg_avm_writedata;
    wire [0:0] bb_bicg_B4_out_stall_in_0;
    wire [0:0] bb_bicg_B4_out_stall_out_0;
    wire [0:0] bb_bicg_B4_out_valid_in_0;
    wire [0:0] bb_bicg_B4_out_valid_out_0;
    wire [0:0] bb_bicg_B5_out_c0_exe180;
    wire [31:0] bb_bicg_B5_out_c0_exe281;
    wire [63:0] bb_bicg_B5_out_c0_exe584;
    wire [0:0] bb_bicg_B5_out_c0_exe685;
    wire [0:0] bb_bicg_B5_out_c0_exe786;
    wire [31:0] bb_bicg_B5_out_memdep_1_bicg_avm_address;
    wire [0:0] bb_bicg_B5_out_memdep_1_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B5_out_memdep_1_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B5_out_memdep_1_bicg_avm_enable;
    wire [0:0] bb_bicg_B5_out_memdep_1_bicg_avm_read;
    wire [0:0] bb_bicg_B5_out_memdep_1_bicg_avm_write;
    wire [31:0] bb_bicg_B5_out_memdep_1_bicg_avm_writedata;
    wire [0:0] bb_bicg_B5_out_profile_loop_o_valid;
    wire [0:0] bb_bicg_B5_out_stall_in_0;
    wire [0:0] bb_bicg_B5_out_stall_out_0;
    wire [31:0] bb_bicg_B5_out_unnamed_bicg5_bicg_avm_address;
    wire [0:0] bb_bicg_B5_out_unnamed_bicg5_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B5_out_unnamed_bicg5_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B5_out_unnamed_bicg5_bicg_avm_enable;
    wire [0:0] bb_bicg_B5_out_unnamed_bicg5_bicg_avm_read;
    wire [0:0] bb_bicg_B5_out_unnamed_bicg5_bicg_avm_write;
    wire [31:0] bb_bicg_B5_out_unnamed_bicg5_bicg_avm_writedata;
    wire [31:0] bb_bicg_B5_out_unnamed_bicg6_bicg_avm_address;
    wire [0:0] bb_bicg_B5_out_unnamed_bicg6_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B5_out_unnamed_bicg6_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B5_out_unnamed_bicg6_bicg_avm_enable;
    wire [0:0] bb_bicg_B5_out_unnamed_bicg6_bicg_avm_read;
    wire [0:0] bb_bicg_B5_out_unnamed_bicg6_bicg_avm_write;
    wire [31:0] bb_bicg_B5_out_unnamed_bicg6_bicg_avm_writedata;
    wire [31:0] bb_bicg_B5_out_unnamed_bicg7_bicg_avm_address;
    wire [0:0] bb_bicg_B5_out_unnamed_bicg7_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B5_out_unnamed_bicg7_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B5_out_unnamed_bicg7_bicg_avm_enable;
    wire [0:0] bb_bicg_B5_out_unnamed_bicg7_bicg_avm_read;
    wire [0:0] bb_bicg_B5_out_unnamed_bicg7_bicg_avm_write;
    wire [31:0] bb_bicg_B5_out_unnamed_bicg7_bicg_avm_writedata;
    wire [31:0] bb_bicg_B5_out_unnamed_bicg8_bicg_avm_address;
    wire [0:0] bb_bicg_B5_out_unnamed_bicg8_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B5_out_unnamed_bicg8_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B5_out_unnamed_bicg8_bicg_avm_enable;
    wire [0:0] bb_bicg_B5_out_unnamed_bicg8_bicg_avm_read;
    wire [0:0] bb_bicg_B5_out_unnamed_bicg8_bicg_avm_write;
    wire [31:0] bb_bicg_B5_out_unnamed_bicg8_bicg_avm_writedata;
    wire [0:0] bb_bicg_B5_out_valid_in_0;
    wire [0:0] bb_bicg_B5_out_valid_out_0;
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
    reg [0:0] rst_sync_rst_sclrn;


    // bb_bicg_B3(BLACKBOX,5)
    bicg_bb_B3 thebb_bicg_B3 (
        .in_feedback_almost_empty_in_11(bb_bicg_B4_out_feedback_almost_empty_out_11),
        .in_feedback_data_in_11(bb_bicg_B4_out_feedback_data_out_11),
        .in_feedback_empty_in_11(bb_bicg_B4_out_feedback_empty_out_11),
        .in_flush(in_start),
        .in_memdep_phi3_pop829_0(bb_bicg_B1_start_out_memdep_phi_pop7),
        .in_memdep_phi_pop726_0(bb_bicg_B1_start_out_memdep_phi_pop7),
        .in_stall_in_0(bb_bicg_B5_out_stall_out_0),
        .in_unnamed_bicg2_bicg_avm_readdata(in_unnamed_bicg2_bicg_avm_readdata),
        .in_unnamed_bicg2_bicg_avm_readdatavalid(in_unnamed_bicg2_bicg_avm_readdatavalid),
        .in_unnamed_bicg2_bicg_avm_waitrequest(in_unnamed_bicg2_bicg_avm_waitrequest),
        .in_unnamed_bicg2_bicg_avm_writeack(in_unnamed_bicg2_bicg_avm_writeack),
        .in_valid_in_0(bb_bicg_B1_start_out_valid_out_0),
        .out_c0_exe10(bb_bicg_B3_out_c0_exe10),
        .out_c0_exe153(bb_bicg_B3_out_c0_exe153),
        .out_c0_exe254(bb_bicg_B3_out_c0_exe254),
        .out_c0_exe3(bb_bicg_B3_out_c0_exe3),
        .out_c0_exe4(bb_bicg_B3_out_c0_exe4),
        .out_c0_exe5(bb_bicg_B3_out_c0_exe5),
        .out_c0_exe6(bb_bicg_B3_out_c0_exe6),
        .out_c0_exe7(bb_bicg_B3_out_c0_exe7),
        .out_c0_exe9(bb_bicg_B3_out_c0_exe9),
        .out_feedback_stall_out_11(bb_bicg_B3_out_feedback_stall_out_11),
        .out_memdep_phi2_pop11(bb_bicg_B3_out_memdep_phi2_pop11),
        .out_stall_out_0(bb_bicg_B3_out_stall_out_0),
        .out_unnamed_bicg2_bicg_avm_address(bb_bicg_B3_out_unnamed_bicg2_bicg_avm_address),
        .out_unnamed_bicg2_bicg_avm_burstcount(bb_bicg_B3_out_unnamed_bicg2_bicg_avm_burstcount),
        .out_unnamed_bicg2_bicg_avm_byteenable(bb_bicg_B3_out_unnamed_bicg2_bicg_avm_byteenable),
        .out_unnamed_bicg2_bicg_avm_enable(bb_bicg_B3_out_unnamed_bicg2_bicg_avm_enable),
        .out_unnamed_bicg2_bicg_avm_read(bb_bicg_B3_out_unnamed_bicg2_bicg_avm_read),
        .out_unnamed_bicg2_bicg_avm_write(bb_bicg_B3_out_unnamed_bicg2_bicg_avm_write),
        .out_unnamed_bicg2_bicg_avm_writedata(bb_bicg_B3_out_unnamed_bicg2_bicg_avm_writedata),
        .out_valid_in_0(bb_bicg_B3_out_valid_in_0),
        .out_valid_out_0(bb_bicg_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_bicg_B5(BLACKBOX,7)
    bicg_bb_B5 thebb_bicg_B5 (
        .in_arrayidx134_0(bb_bicg_B3_out_c0_exe254),
        .in_exitcond636_0(bb_bicg_B3_out_c0_exe5),
        .in_flush(in_start),
        .in_idxprom32_0(bb_bicg_B3_out_c0_exe153),
        .in_memdep_1_bicg_avm_readdata(in_memdep_1_bicg_avm_readdata),
        .in_memdep_1_bicg_avm_readdatavalid(in_memdep_1_bicg_avm_readdatavalid),
        .in_memdep_1_bicg_avm_waitrequest(in_memdep_1_bicg_avm_waitrequest),
        .in_memdep_1_bicg_avm_writeack(in_memdep_1_bicg_avm_writeack),
        .in_memdep_phi2_pop1138_0(bb_bicg_B3_out_memdep_phi2_pop11),
        .in_memdep_phi3_pop818_pop1339_0(bb_bicg_B3_out_c0_exe7),
        .in_memdep_phi3_pop831_0(bb_bicg_B3_out_c0_exe10),
        .in_memdep_phi_pop716_pop1235_0(bb_bicg_B3_out_c0_exe3),
        .in_memdep_phi_pop728_0(bb_bicg_B3_out_c0_exe9),
        .in_notcmp737_0(bb_bicg_B3_out_c0_exe6),
        .in_stall_in_0(bb_bicg_B4_out_stall_out_0),
        .in_unnamed_bicg4_0(bb_bicg_B3_out_c0_exe4),
        .in_unnamed_bicg5_bicg_avm_readdata(in_unnamed_bicg5_bicg_avm_readdata),
        .in_unnamed_bicg5_bicg_avm_readdatavalid(in_unnamed_bicg5_bicg_avm_readdatavalid),
        .in_unnamed_bicg5_bicg_avm_waitrequest(in_unnamed_bicg5_bicg_avm_waitrequest),
        .in_unnamed_bicg5_bicg_avm_writeack(in_unnamed_bicg5_bicg_avm_writeack),
        .in_unnamed_bicg6_bicg_avm_readdata(in_unnamed_bicg6_bicg_avm_readdata),
        .in_unnamed_bicg6_bicg_avm_readdatavalid(in_unnamed_bicg6_bicg_avm_readdatavalid),
        .in_unnamed_bicg6_bicg_avm_waitrequest(in_unnamed_bicg6_bicg_avm_waitrequest),
        .in_unnamed_bicg6_bicg_avm_writeack(in_unnamed_bicg6_bicg_avm_writeack),
        .in_unnamed_bicg7_bicg_avm_readdata(in_unnamed_bicg7_bicg_avm_readdata),
        .in_unnamed_bicg7_bicg_avm_readdatavalid(in_unnamed_bicg7_bicg_avm_readdatavalid),
        .in_unnamed_bicg7_bicg_avm_waitrequest(in_unnamed_bicg7_bicg_avm_waitrequest),
        .in_unnamed_bicg7_bicg_avm_writeack(in_unnamed_bicg7_bicg_avm_writeack),
        .in_unnamed_bicg8_bicg_avm_readdata(in_unnamed_bicg8_bicg_avm_readdata),
        .in_unnamed_bicg8_bicg_avm_readdatavalid(in_unnamed_bicg8_bicg_avm_readdatavalid),
        .in_unnamed_bicg8_bicg_avm_waitrequest(in_unnamed_bicg8_bicg_avm_waitrequest),
        .in_unnamed_bicg8_bicg_avm_writeack(in_unnamed_bicg8_bicg_avm_writeack),
        .in_valid_in_0(bb_bicg_B3_out_valid_out_0),
        .out_c0_exe180(bb_bicg_B5_out_c0_exe180),
        .out_c0_exe281(bb_bicg_B5_out_c0_exe281),
        .out_c0_exe584(bb_bicg_B5_out_c0_exe584),
        .out_c0_exe685(bb_bicg_B5_out_c0_exe685),
        .out_c0_exe786(bb_bicg_B5_out_c0_exe786),
        .out_memdep_1_bicg_avm_address(bb_bicg_B5_out_memdep_1_bicg_avm_address),
        .out_memdep_1_bicg_avm_burstcount(bb_bicg_B5_out_memdep_1_bicg_avm_burstcount),
        .out_memdep_1_bicg_avm_byteenable(bb_bicg_B5_out_memdep_1_bicg_avm_byteenable),
        .out_memdep_1_bicg_avm_enable(bb_bicg_B5_out_memdep_1_bicg_avm_enable),
        .out_memdep_1_bicg_avm_read(bb_bicg_B5_out_memdep_1_bicg_avm_read),
        .out_memdep_1_bicg_avm_write(bb_bicg_B5_out_memdep_1_bicg_avm_write),
        .out_memdep_1_bicg_avm_writedata(bb_bicg_B5_out_memdep_1_bicg_avm_writedata),
        .out_profile_loop_o_valid(bb_bicg_B5_out_profile_loop_o_valid),
        .out_stall_in_0(bb_bicg_B5_out_stall_in_0),
        .out_stall_out_0(bb_bicg_B5_out_stall_out_0),
        .out_unnamed_bicg5_bicg_avm_address(bb_bicg_B5_out_unnamed_bicg5_bicg_avm_address),
        .out_unnamed_bicg5_bicg_avm_burstcount(bb_bicg_B5_out_unnamed_bicg5_bicg_avm_burstcount),
        .out_unnamed_bicg5_bicg_avm_byteenable(bb_bicg_B5_out_unnamed_bicg5_bicg_avm_byteenable),
        .out_unnamed_bicg5_bicg_avm_enable(bb_bicg_B5_out_unnamed_bicg5_bicg_avm_enable),
        .out_unnamed_bicg5_bicg_avm_read(bb_bicg_B5_out_unnamed_bicg5_bicg_avm_read),
        .out_unnamed_bicg5_bicg_avm_write(bb_bicg_B5_out_unnamed_bicg5_bicg_avm_write),
        .out_unnamed_bicg5_bicg_avm_writedata(bb_bicg_B5_out_unnamed_bicg5_bicg_avm_writedata),
        .out_unnamed_bicg6_bicg_avm_address(bb_bicg_B5_out_unnamed_bicg6_bicg_avm_address),
        .out_unnamed_bicg6_bicg_avm_burstcount(bb_bicg_B5_out_unnamed_bicg6_bicg_avm_burstcount),
        .out_unnamed_bicg6_bicg_avm_byteenable(bb_bicg_B5_out_unnamed_bicg6_bicg_avm_byteenable),
        .out_unnamed_bicg6_bicg_avm_enable(bb_bicg_B5_out_unnamed_bicg6_bicg_avm_enable),
        .out_unnamed_bicg6_bicg_avm_read(bb_bicg_B5_out_unnamed_bicg6_bicg_avm_read),
        .out_unnamed_bicg6_bicg_avm_write(bb_bicg_B5_out_unnamed_bicg6_bicg_avm_write),
        .out_unnamed_bicg6_bicg_avm_writedata(bb_bicg_B5_out_unnamed_bicg6_bicg_avm_writedata),
        .out_unnamed_bicg7_bicg_avm_address(bb_bicg_B5_out_unnamed_bicg7_bicg_avm_address),
        .out_unnamed_bicg7_bicg_avm_burstcount(bb_bicg_B5_out_unnamed_bicg7_bicg_avm_burstcount),
        .out_unnamed_bicg7_bicg_avm_byteenable(bb_bicg_B5_out_unnamed_bicg7_bicg_avm_byteenable),
        .out_unnamed_bicg7_bicg_avm_enable(bb_bicg_B5_out_unnamed_bicg7_bicg_avm_enable),
        .out_unnamed_bicg7_bicg_avm_read(bb_bicg_B5_out_unnamed_bicg7_bicg_avm_read),
        .out_unnamed_bicg7_bicg_avm_write(bb_bicg_B5_out_unnamed_bicg7_bicg_avm_write),
        .out_unnamed_bicg7_bicg_avm_writedata(bb_bicg_B5_out_unnamed_bicg7_bicg_avm_writedata),
        .out_unnamed_bicg8_bicg_avm_address(bb_bicg_B5_out_unnamed_bicg8_bicg_avm_address),
        .out_unnamed_bicg8_bicg_avm_burstcount(bb_bicg_B5_out_unnamed_bicg8_bicg_avm_burstcount),
        .out_unnamed_bicg8_bicg_avm_byteenable(bb_bicg_B5_out_unnamed_bicg8_bicg_avm_byteenable),
        .out_unnamed_bicg8_bicg_avm_enable(bb_bicg_B5_out_unnamed_bicg8_bicg_avm_enable),
        .out_unnamed_bicg8_bicg_avm_read(bb_bicg_B5_out_unnamed_bicg8_bicg_avm_read),
        .out_unnamed_bicg8_bicg_avm_write(bb_bicg_B5_out_unnamed_bicg8_bicg_avm_write),
        .out_unnamed_bicg8_bicg_avm_writedata(bb_bicg_B5_out_unnamed_bicg8_bicg_avm_writedata),
        .out_valid_in_0(bb_bicg_B5_out_valid_in_0),
        .out_valid_out_0(bb_bicg_B5_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_bicg_B4(BLACKBOX,6)
    bicg_bb_B4 thebb_bicg_B4 (
        .in_c0_exe1802_0(bb_bicg_B5_out_c0_exe180),
        .in_c0_exe2813_0(bb_bicg_B5_out_c0_exe281),
        .in_c0_exe5844_0(bb_bicg_B5_out_c0_exe584),
        .in_c0_exe6855_0(bb_bicg_B5_out_c0_exe685),
        .in_c0_exe7866_0(bb_bicg_B5_out_c0_exe786),
        .in_feedback_stall_in_11(bb_bicg_B3_out_feedback_stall_out_11),
        .in_flush(in_start),
        .in_memdep_bicg_avm_readdata(in_memdep_bicg_avm_readdata),
        .in_memdep_bicg_avm_readdatavalid(in_memdep_bicg_avm_readdatavalid),
        .in_memdep_bicg_avm_waitrequest(in_memdep_bicg_avm_waitrequest),
        .in_memdep_bicg_avm_writeack(in_memdep_bicg_avm_writeack),
        .in_stall_in_0(bb_bicg_B2_out_stall_out_0),
        .in_valid_in_0(bb_bicg_B5_out_valid_out_0),
        .out_c0_exe162(bb_bicg_B4_out_c0_exe162),
        .out_feedback_almost_empty_out_11(bb_bicg_B4_out_feedback_almost_empty_out_11),
        .out_feedback_data_out_11(bb_bicg_B4_out_feedback_data_out_11),
        .out_feedback_empty_out_11(bb_bicg_B4_out_feedback_empty_out_11),
        .out_memdep_bicg_avm_address(bb_bicg_B4_out_memdep_bicg_avm_address),
        .out_memdep_bicg_avm_burstcount(bb_bicg_B4_out_memdep_bicg_avm_burstcount),
        .out_memdep_bicg_avm_byteenable(bb_bicg_B4_out_memdep_bicg_avm_byteenable),
        .out_memdep_bicg_avm_enable(bb_bicg_B4_out_memdep_bicg_avm_enable),
        .out_memdep_bicg_avm_read(bb_bicg_B4_out_memdep_bicg_avm_read),
        .out_memdep_bicg_avm_write(bb_bicg_B4_out_memdep_bicg_avm_write),
        .out_memdep_bicg_avm_writedata(bb_bicg_B4_out_memdep_bicg_avm_writedata),
        .out_stall_in_0(bb_bicg_B4_out_stall_in_0),
        .out_stall_out_0(bb_bicg_B4_out_stall_out_0),
        .out_valid_in_0(bb_bicg_B4_out_valid_in_0),
        .out_valid_out_0(bb_bicg_B4_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_bicg_B2(BLACKBOX,4)
    bicg_bb_B2 thebb_bicg_B2 (
        .in_c0_exe1621_0(bb_bicg_B4_out_c0_exe162),
        .in_feedback_stall_in_8(bb_bicg_B1_start_out_feedback_stall_out_8),
        .in_iowr_bl_return_bicg_i_fifoready(in_iowr_bl_return_bicg_i_fifoready),
        .in_stall_in_0(in_stall_in),
        .in_valid_in_0(bb_bicg_B4_out_valid_out_0),
        .out_feedback_almost_empty_out_8(bb_bicg_B2_out_feedback_almost_empty_out_8),
        .out_feedback_data_out_8(bb_bicg_B2_out_feedback_data_out_8),
        .out_feedback_empty_out_8(bb_bicg_B2_out_feedback_empty_out_8),
        .out_iowr_bl_return_bicg_o_fifodata(bb_bicg_B2_out_iowr_bl_return_bicg_o_fifodata),
        .out_iowr_bl_return_bicg_o_fifovalid(bb_bicg_B2_out_iowr_bl_return_bicg_o_fifovalid),
        .out_stall_in_0(bb_bicg_B2_out_stall_in_0),
        .out_stall_out_0(bb_bicg_B2_out_stall_out_0),
        .out_valid_in_0(bb_bicg_B2_out_valid_in_0),
        .out_valid_out_0(bb_bicg_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_bicg_B0_runOnce(BLACKBOX,2)
    bicg_bb_B0_runOnce thebb_bicg_B0_runOnce (
        .in_stall_in_0(bb_bicg_B1_start_out_stall_out_0),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_bicg_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(bb_bicg_B0_runOnce_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_bicg_B1_start(BLACKBOX,3)
    bicg_bb_B1_start thebb_bicg_B1_start (
        .in_feedback_almost_empty_in_8(bb_bicg_B2_out_feedback_almost_empty_out_8),
        .in_feedback_data_in_8(bb_bicg_B2_out_feedback_data_out_8),
        .in_feedback_empty_in_8(bb_bicg_B2_out_feedback_empty_out_8),
        .in_iord_bl_call_bicg_i_fifodata(in_iord_bl_call_bicg_i_fifodata),
        .in_iord_bl_call_bicg_i_fifovalid(in_iord_bl_call_bicg_i_fifovalid),
        .in_stall_in_0(bb_bicg_B3_out_stall_out_0),
        .in_valid_in_0(bb_bicg_B0_runOnce_out_valid_out_0),
        .out_feedback_stall_out_8(bb_bicg_B1_start_out_feedback_stall_out_8),
        .out_iord_bl_call_bicg_o_fifoalmost_full(bb_bicg_B1_start_out_iord_bl_call_bicg_o_fifoalmost_full),
        .out_iord_bl_call_bicg_o_fifoready(bb_bicg_B1_start_out_iord_bl_call_bicg_o_fifoready),
        .out_memdep_phi_pop7(bb_bicg_B1_start_out_memdep_phi_pop7),
        .out_stall_out_0(bb_bicg_B1_start_out_stall_out_0),
        .out_valid_in_0(bb_bicg_B1_start_out_valid_in_0),
        .out_valid_out_0(bb_bicg_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bicg_B1_start_x(EXTIFACE,8)
    assign bicg_B1_start_x_i_capture = GND_q;
    assign bicg_B1_start_x_i_clear = GND_q;
    assign bicg_B1_start_x_i_enable = VCC_q;
    assign bicg_B1_start_x_i_shift = GND_q;
    assign bicg_B1_start_x_i_stall_pred = bb_bicg_B1_start_out_stall_out_0;
    assign bicg_B1_start_x_i_stall_succ = bb_bicg_B2_out_stall_in_0;
    assign bicg_B1_start_x_i_valid_loop = bb_bicg_B2_out_valid_in_0;
    assign bicg_B1_start_x_i_valid_pred = bb_bicg_B1_start_out_valid_in_0;
    assign bicg_B1_start_x_i_valid_succ = bb_bicg_B2_out_valid_out_0;
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
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bicg_B3_x(EXTIFACE,9)
    assign bicg_B3_x_i_capture = GND_q;
    assign bicg_B3_x_i_clear = GND_q;
    assign bicg_B3_x_i_enable = VCC_q;
    assign bicg_B3_x_i_shift = GND_q;
    assign bicg_B3_x_i_stall_pred = bb_bicg_B3_out_stall_out_0;
    assign bicg_B3_x_i_stall_succ = bb_bicg_B4_out_stall_in_0;
    assign bicg_B3_x_i_valid_loop = bb_bicg_B4_out_valid_in_0;
    assign bicg_B3_x_i_valid_pred = bb_bicg_B3_out_valid_in_0;
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
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bicg_B5_x(EXTIFACE,10)
    assign bicg_B5_x_i_capture = GND_q;
    assign bicg_B5_x_i_clear = GND_q;
    assign bicg_B5_x_i_enable = VCC_q;
    assign bicg_B5_x_i_shift = GND_q;
    assign bicg_B5_x_i_stall_pred = bb_bicg_B5_out_stall_out_0;
    assign bicg_B5_x_i_stall_succ = bb_bicg_B5_out_stall_in_0;
    assign bicg_B5_x_i_valid_loop = bb_bicg_B5_out_profile_loop_o_valid;
    assign bicg_B5_x_i_valid_pred = bb_bicg_B5_out_valid_in_0;
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
        .resetn(rst_sync_rst_sclrn[0])
    );

    // out_iord_bl_call_bicg_o_fifoalmost_full(GPOUT,58)
    assign out_iord_bl_call_bicg_o_fifoalmost_full = bb_bicg_B1_start_out_iord_bl_call_bicg_o_fifoalmost_full;

    // out_iord_bl_call_bicg_o_fifoready(GPOUT,59)
    assign out_iord_bl_call_bicg_o_fifoready = bb_bicg_B1_start_out_iord_bl_call_bicg_o_fifoready;

    // out_iowr_bl_return_bicg_o_fifodata(GPOUT,60)
    assign out_iowr_bl_return_bicg_o_fifodata = bb_bicg_B2_out_iowr_bl_return_bicg_o_fifodata;

    // out_iowr_bl_return_bicg_o_fifovalid(GPOUT,61)
    assign out_iowr_bl_return_bicg_o_fifovalid = bb_bicg_B2_out_iowr_bl_return_bicg_o_fifovalid;

    // out_memdep_1_bicg_avm_address(GPOUT,62)
    assign out_memdep_1_bicg_avm_address = bb_bicg_B5_out_memdep_1_bicg_avm_address;

    // out_memdep_1_bicg_avm_burstcount(GPOUT,63)
    assign out_memdep_1_bicg_avm_burstcount = bb_bicg_B5_out_memdep_1_bicg_avm_burstcount;

    // out_memdep_1_bicg_avm_byteenable(GPOUT,64)
    assign out_memdep_1_bicg_avm_byteenable = bb_bicg_B5_out_memdep_1_bicg_avm_byteenable;

    // out_memdep_1_bicg_avm_enable(GPOUT,65)
    assign out_memdep_1_bicg_avm_enable = bb_bicg_B5_out_memdep_1_bicg_avm_enable;

    // out_memdep_1_bicg_avm_read(GPOUT,66)
    assign out_memdep_1_bicg_avm_read = bb_bicg_B5_out_memdep_1_bicg_avm_read;

    // out_memdep_1_bicg_avm_write(GPOUT,67)
    assign out_memdep_1_bicg_avm_write = bb_bicg_B5_out_memdep_1_bicg_avm_write;

    // out_memdep_1_bicg_avm_writedata(GPOUT,68)
    assign out_memdep_1_bicg_avm_writedata = bb_bicg_B5_out_memdep_1_bicg_avm_writedata;

    // out_memdep_bicg_avm_address(GPOUT,69)
    assign out_memdep_bicg_avm_address = bb_bicg_B4_out_memdep_bicg_avm_address;

    // out_memdep_bicg_avm_burstcount(GPOUT,70)
    assign out_memdep_bicg_avm_burstcount = bb_bicg_B4_out_memdep_bicg_avm_burstcount;

    // out_memdep_bicg_avm_byteenable(GPOUT,71)
    assign out_memdep_bicg_avm_byteenable = bb_bicg_B4_out_memdep_bicg_avm_byteenable;

    // out_memdep_bicg_avm_enable(GPOUT,72)
    assign out_memdep_bicg_avm_enable = bb_bicg_B4_out_memdep_bicg_avm_enable;

    // out_memdep_bicg_avm_read(GPOUT,73)
    assign out_memdep_bicg_avm_read = bb_bicg_B4_out_memdep_bicg_avm_read;

    // out_memdep_bicg_avm_write(GPOUT,74)
    assign out_memdep_bicg_avm_write = bb_bicg_B4_out_memdep_bicg_avm_write;

    // out_memdep_bicg_avm_writedata(GPOUT,75)
    assign out_memdep_bicg_avm_writedata = bb_bicg_B4_out_memdep_bicg_avm_writedata;

    // out_stall_out(GPOUT,76)
    assign out_stall_out = bb_bicg_B0_runOnce_out_stall_out_0;

    // out_unnamed_bicg2_bicg_avm_address(GPOUT,77)
    assign out_unnamed_bicg2_bicg_avm_address = bb_bicg_B3_out_unnamed_bicg2_bicg_avm_address;

    // out_unnamed_bicg2_bicg_avm_burstcount(GPOUT,78)
    assign out_unnamed_bicg2_bicg_avm_burstcount = bb_bicg_B3_out_unnamed_bicg2_bicg_avm_burstcount;

    // out_unnamed_bicg2_bicg_avm_byteenable(GPOUT,79)
    assign out_unnamed_bicg2_bicg_avm_byteenable = bb_bicg_B3_out_unnamed_bicg2_bicg_avm_byteenable;

    // out_unnamed_bicg2_bicg_avm_enable(GPOUT,80)
    assign out_unnamed_bicg2_bicg_avm_enable = bb_bicg_B3_out_unnamed_bicg2_bicg_avm_enable;

    // out_unnamed_bicg2_bicg_avm_read(GPOUT,81)
    assign out_unnamed_bicg2_bicg_avm_read = bb_bicg_B3_out_unnamed_bicg2_bicg_avm_read;

    // out_unnamed_bicg2_bicg_avm_write(GPOUT,82)
    assign out_unnamed_bicg2_bicg_avm_write = bb_bicg_B3_out_unnamed_bicg2_bicg_avm_write;

    // out_unnamed_bicg2_bicg_avm_writedata(GPOUT,83)
    assign out_unnamed_bicg2_bicg_avm_writedata = bb_bicg_B3_out_unnamed_bicg2_bicg_avm_writedata;

    // out_unnamed_bicg5_bicg_avm_address(GPOUT,84)
    assign out_unnamed_bicg5_bicg_avm_address = bb_bicg_B5_out_unnamed_bicg5_bicg_avm_address;

    // out_unnamed_bicg5_bicg_avm_burstcount(GPOUT,85)
    assign out_unnamed_bicg5_bicg_avm_burstcount = bb_bicg_B5_out_unnamed_bicg5_bicg_avm_burstcount;

    // out_unnamed_bicg5_bicg_avm_byteenable(GPOUT,86)
    assign out_unnamed_bicg5_bicg_avm_byteenable = bb_bicg_B5_out_unnamed_bicg5_bicg_avm_byteenable;

    // out_unnamed_bicg5_bicg_avm_enable(GPOUT,87)
    assign out_unnamed_bicg5_bicg_avm_enable = bb_bicg_B5_out_unnamed_bicg5_bicg_avm_enable;

    // out_unnamed_bicg5_bicg_avm_read(GPOUT,88)
    assign out_unnamed_bicg5_bicg_avm_read = bb_bicg_B5_out_unnamed_bicg5_bicg_avm_read;

    // out_unnamed_bicg5_bicg_avm_write(GPOUT,89)
    assign out_unnamed_bicg5_bicg_avm_write = bb_bicg_B5_out_unnamed_bicg5_bicg_avm_write;

    // out_unnamed_bicg5_bicg_avm_writedata(GPOUT,90)
    assign out_unnamed_bicg5_bicg_avm_writedata = bb_bicg_B5_out_unnamed_bicg5_bicg_avm_writedata;

    // out_unnamed_bicg6_bicg_avm_address(GPOUT,91)
    assign out_unnamed_bicg6_bicg_avm_address = bb_bicg_B5_out_unnamed_bicg6_bicg_avm_address;

    // out_unnamed_bicg6_bicg_avm_burstcount(GPOUT,92)
    assign out_unnamed_bicg6_bicg_avm_burstcount = bb_bicg_B5_out_unnamed_bicg6_bicg_avm_burstcount;

    // out_unnamed_bicg6_bicg_avm_byteenable(GPOUT,93)
    assign out_unnamed_bicg6_bicg_avm_byteenable = bb_bicg_B5_out_unnamed_bicg6_bicg_avm_byteenable;

    // out_unnamed_bicg6_bicg_avm_enable(GPOUT,94)
    assign out_unnamed_bicg6_bicg_avm_enable = bb_bicg_B5_out_unnamed_bicg6_bicg_avm_enable;

    // out_unnamed_bicg6_bicg_avm_read(GPOUT,95)
    assign out_unnamed_bicg6_bicg_avm_read = bb_bicg_B5_out_unnamed_bicg6_bicg_avm_read;

    // out_unnamed_bicg6_bicg_avm_write(GPOUT,96)
    assign out_unnamed_bicg6_bicg_avm_write = bb_bicg_B5_out_unnamed_bicg6_bicg_avm_write;

    // out_unnamed_bicg6_bicg_avm_writedata(GPOUT,97)
    assign out_unnamed_bicg6_bicg_avm_writedata = bb_bicg_B5_out_unnamed_bicg6_bicg_avm_writedata;

    // out_unnamed_bicg7_bicg_avm_address(GPOUT,98)
    assign out_unnamed_bicg7_bicg_avm_address = bb_bicg_B5_out_unnamed_bicg7_bicg_avm_address;

    // out_unnamed_bicg7_bicg_avm_burstcount(GPOUT,99)
    assign out_unnamed_bicg7_bicg_avm_burstcount = bb_bicg_B5_out_unnamed_bicg7_bicg_avm_burstcount;

    // out_unnamed_bicg7_bicg_avm_byteenable(GPOUT,100)
    assign out_unnamed_bicg7_bicg_avm_byteenable = bb_bicg_B5_out_unnamed_bicg7_bicg_avm_byteenable;

    // out_unnamed_bicg7_bicg_avm_enable(GPOUT,101)
    assign out_unnamed_bicg7_bicg_avm_enable = bb_bicg_B5_out_unnamed_bicg7_bicg_avm_enable;

    // out_unnamed_bicg7_bicg_avm_read(GPOUT,102)
    assign out_unnamed_bicg7_bicg_avm_read = bb_bicg_B5_out_unnamed_bicg7_bicg_avm_read;

    // out_unnamed_bicg7_bicg_avm_write(GPOUT,103)
    assign out_unnamed_bicg7_bicg_avm_write = bb_bicg_B5_out_unnamed_bicg7_bicg_avm_write;

    // out_unnamed_bicg7_bicg_avm_writedata(GPOUT,104)
    assign out_unnamed_bicg7_bicg_avm_writedata = bb_bicg_B5_out_unnamed_bicg7_bicg_avm_writedata;

    // out_unnamed_bicg8_bicg_avm_address(GPOUT,105)
    assign out_unnamed_bicg8_bicg_avm_address = bb_bicg_B5_out_unnamed_bicg8_bicg_avm_address;

    // out_unnamed_bicg8_bicg_avm_burstcount(GPOUT,106)
    assign out_unnamed_bicg8_bicg_avm_burstcount = bb_bicg_B5_out_unnamed_bicg8_bicg_avm_burstcount;

    // out_unnamed_bicg8_bicg_avm_byteenable(GPOUT,107)
    assign out_unnamed_bicg8_bicg_avm_byteenable = bb_bicg_B5_out_unnamed_bicg8_bicg_avm_byteenable;

    // out_unnamed_bicg8_bicg_avm_enable(GPOUT,108)
    assign out_unnamed_bicg8_bicg_avm_enable = bb_bicg_B5_out_unnamed_bicg8_bicg_avm_enable;

    // out_unnamed_bicg8_bicg_avm_read(GPOUT,109)
    assign out_unnamed_bicg8_bicg_avm_read = bb_bicg_B5_out_unnamed_bicg8_bicg_avm_read;

    // out_unnamed_bicg8_bicg_avm_write(GPOUT,110)
    assign out_unnamed_bicg8_bicg_avm_write = bb_bicg_B5_out_unnamed_bicg8_bicg_avm_write;

    // out_unnamed_bicg8_bicg_avm_writedata(GPOUT,111)
    assign out_unnamed_bicg8_bicg_avm_writedata = bb_bicg_B5_out_unnamed_bicg8_bicg_avm_writedata;

    // out_valid_out(GPOUT,112)
    assign out_valid_out = bb_bicg_B2_out_valid_out_0;

    // rst_sync(RESETSYNC,113)
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
