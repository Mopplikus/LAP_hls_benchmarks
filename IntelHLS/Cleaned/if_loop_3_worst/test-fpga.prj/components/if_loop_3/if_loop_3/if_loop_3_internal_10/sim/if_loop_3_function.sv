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

// SystemVerilog created from if_loop_3_function
// Created for function/kernel if_loop_3
// SystemVerilog created on Thu May  4 08:54:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module if_loop_3_function (
    input wire [63:0] in_arg_a,
    input wire [63:0] in_arg_b,
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_return,
    input wire [191:0] in_iord_bl_call_if_loop_3_i_fifodata,
    input wire [0:0] in_iord_bl_call_if_loop_3_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_if_loop_3_i_fifoready,
    input wire [31:0] in_lm1_if_loop_3_avm_readdata,
    input wire [0:0] in_lm1_if_loop_3_avm_readdatavalid,
    input wire [0:0] in_lm1_if_loop_3_avm_waitrequest,
    input wire [0:0] in_lm1_if_loop_3_avm_writeack,
    input wire [31:0] in_lm62_if_loop_3_avm_readdata,
    input wire [0:0] in_lm62_if_loop_3_avm_readdatavalid,
    input wire [0:0] in_lm62_if_loop_3_avm_waitrequest,
    input wire [0:0] in_lm62_if_loop_3_avm_writeack,
    input wire [31:0] in_memdep_3_if_loop_3_avm_readdata,
    input wire [0:0] in_memdep_3_if_loop_3_avm_readdatavalid,
    input wire [0:0] in_memdep_3_if_loop_3_avm_waitrequest,
    input wire [0:0] in_memdep_3_if_loop_3_avm_writeack,
    input wire [31:0] in_memdep_if_loop_3_avm_readdata,
    input wire [0:0] in_memdep_if_loop_3_avm_readdatavalid,
    input wire [0:0] in_memdep_if_loop_3_avm_waitrequest,
    input wire [0:0] in_memdep_if_loop_3_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [63:0] in_unnamed_if_loop_311_if_loop_3_avm_readdata,
    input wire [0:0] in_unnamed_if_loop_311_if_loop_3_avm_readdatavalid,
    input wire [0:0] in_unnamed_if_loop_311_if_loop_3_avm_waitrequest,
    input wire [0:0] in_unnamed_if_loop_311_if_loop_3_avm_writeack,
    input wire [63:0] in_unnamed_if_loop_312_if_loop_3_avm_readdata,
    input wire [0:0] in_unnamed_if_loop_312_if_loop_3_avm_readdatavalid,
    input wire [0:0] in_unnamed_if_loop_312_if_loop_3_avm_waitrequest,
    input wire [0:0] in_unnamed_if_loop_312_if_loop_3_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_if_loop_3_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_if_loop_3_o_fifoready,
    output wire [31:0] out_iowr_bl_return_if_loop_3_o_fifodata,
    output wire [0:0] out_iowr_bl_return_if_loop_3_o_fifovalid,
    output wire [31:0] out_lm1_if_loop_3_avm_address,
    output wire [0:0] out_lm1_if_loop_3_avm_burstcount,
    output wire [3:0] out_lm1_if_loop_3_avm_byteenable,
    output wire [0:0] out_lm1_if_loop_3_avm_enable,
    output wire [0:0] out_lm1_if_loop_3_avm_read,
    output wire [0:0] out_lm1_if_loop_3_avm_write,
    output wire [31:0] out_lm1_if_loop_3_avm_writedata,
    output wire [31:0] out_lm62_if_loop_3_avm_address,
    output wire [0:0] out_lm62_if_loop_3_avm_burstcount,
    output wire [3:0] out_lm62_if_loop_3_avm_byteenable,
    output wire [0:0] out_lm62_if_loop_3_avm_enable,
    output wire [0:0] out_lm62_if_loop_3_avm_read,
    output wire [0:0] out_lm62_if_loop_3_avm_write,
    output wire [31:0] out_lm62_if_loop_3_avm_writedata,
    output wire [31:0] out_memdep_3_if_loop_3_avm_address,
    output wire [0:0] out_memdep_3_if_loop_3_avm_burstcount,
    output wire [3:0] out_memdep_3_if_loop_3_avm_byteenable,
    output wire [0:0] out_memdep_3_if_loop_3_avm_enable,
    output wire [0:0] out_memdep_3_if_loop_3_avm_read,
    output wire [0:0] out_memdep_3_if_loop_3_avm_write,
    output wire [31:0] out_memdep_3_if_loop_3_avm_writedata,
    output wire [31:0] out_memdep_if_loop_3_avm_address,
    output wire [0:0] out_memdep_if_loop_3_avm_burstcount,
    output wire [3:0] out_memdep_if_loop_3_avm_byteenable,
    output wire [0:0] out_memdep_if_loop_3_avm_enable,
    output wire [0:0] out_memdep_if_loop_3_avm_read,
    output wire [0:0] out_memdep_if_loop_3_avm_write,
    output wire [31:0] out_memdep_if_loop_3_avm_writedata,
    output wire [0:0] out_stall_out,
    output wire [63:0] out_unnamed_if_loop_311_if_loop_3_avm_address,
    output wire [0:0] out_unnamed_if_loop_311_if_loop_3_avm_burstcount,
    output wire [7:0] out_unnamed_if_loop_311_if_loop_3_avm_byteenable,
    output wire [0:0] out_unnamed_if_loop_311_if_loop_3_avm_enable,
    output wire [0:0] out_unnamed_if_loop_311_if_loop_3_avm_read,
    output wire [0:0] out_unnamed_if_loop_311_if_loop_3_avm_write,
    output wire [63:0] out_unnamed_if_loop_311_if_loop_3_avm_writedata,
    output wire [63:0] out_unnamed_if_loop_312_if_loop_3_avm_address,
    output wire [0:0] out_unnamed_if_loop_312_if_loop_3_avm_burstcount,
    output wire [7:0] out_unnamed_if_loop_312_if_loop_3_avm_byteenable,
    output wire [0:0] out_unnamed_if_loop_312_if_loop_3_avm_enable,
    output wire [0:0] out_unnamed_if_loop_312_if_loop_3_avm_read,
    output wire [0:0] out_unnamed_if_loop_312_if_loop_3_avm_write,
    output wire [63:0] out_unnamed_if_loop_312_if_loop_3_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_if_loop_3_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_if_loop_3_B0_runOnce_out_valid_out_0;
    wire [0:0] bb_if_loop_3_B1_start_out_feedback_stall_out_1;
    wire [63:0] bb_if_loop_3_B1_start_out_intel_reserved_ffwd_0_0;
    wire [63:0] bb_if_loop_3_B1_start_out_intel_reserved_ffwd_1_0;
    wire [31:0] bb_if_loop_3_B1_start_out_intel_reserved_ffwd_2_0;
    wire [0:0] bb_if_loop_3_B1_start_out_iord_bl_call_if_loop_3_o_fifoalmost_full;
    wire [0:0] bb_if_loop_3_B1_start_out_iord_bl_call_if_loop_3_o_fifoready;
    wire [0:0] bb_if_loop_3_B1_start_out_stall_out_0;
    wire [0:0] bb_if_loop_3_B1_start_out_valid_in_0;
    wire [0:0] bb_if_loop_3_B1_start_out_valid_out_0;
    wire [0:0] bb_if_loop_3_B2_out_intel_reserved_ffwd_3_0;
    wire [32:0] bb_if_loop_3_B2_out_intel_reserved_ffwd_4_0;
    wire [0:0] bb_if_loop_3_B2_out_stall_out_0;
    wire [0:0] bb_if_loop_3_B2_out_valid_out_0;
    wire [31:0] bb_if_loop_3_B3_out_memdep_3_if_loop_3_avm_address;
    wire [0:0] bb_if_loop_3_B3_out_memdep_3_if_loop_3_avm_burstcount;
    wire [3:0] bb_if_loop_3_B3_out_memdep_3_if_loop_3_avm_byteenable;
    wire [0:0] bb_if_loop_3_B3_out_memdep_3_if_loop_3_avm_enable;
    wire [0:0] bb_if_loop_3_B3_out_memdep_3_if_loop_3_avm_read;
    wire [0:0] bb_if_loop_3_B3_out_memdep_3_if_loop_3_avm_write;
    wire [31:0] bb_if_loop_3_B3_out_memdep_3_if_loop_3_avm_writedata;
    wire [31:0] bb_if_loop_3_B3_out_memdep_if_loop_3_avm_address;
    wire [0:0] bb_if_loop_3_B3_out_memdep_if_loop_3_avm_burstcount;
    wire [3:0] bb_if_loop_3_B3_out_memdep_if_loop_3_avm_byteenable;
    wire [0:0] bb_if_loop_3_B3_out_memdep_if_loop_3_avm_enable;
    wire [0:0] bb_if_loop_3_B3_out_memdep_if_loop_3_avm_read;
    wire [0:0] bb_if_loop_3_B3_out_memdep_if_loop_3_avm_write;
    wire [31:0] bb_if_loop_3_B3_out_memdep_if_loop_3_avm_writedata;
    wire [0:0] bb_if_loop_3_B3_out_profile_loop_o_valid;
    wire [0:0] bb_if_loop_3_B3_out_stall_in_0;
    wire [0:0] bb_if_loop_3_B3_out_stall_out_0;
    wire [63:0] bb_if_loop_3_B3_out_unnamed_if_loop_311_if_loop_3_avm_address;
    wire [0:0] bb_if_loop_3_B3_out_unnamed_if_loop_311_if_loop_3_avm_burstcount;
    wire [7:0] bb_if_loop_3_B3_out_unnamed_if_loop_311_if_loop_3_avm_byteenable;
    wire [0:0] bb_if_loop_3_B3_out_unnamed_if_loop_311_if_loop_3_avm_enable;
    wire [0:0] bb_if_loop_3_B3_out_unnamed_if_loop_311_if_loop_3_avm_read;
    wire [0:0] bb_if_loop_3_B3_out_unnamed_if_loop_311_if_loop_3_avm_write;
    wire [63:0] bb_if_loop_3_B3_out_unnamed_if_loop_311_if_loop_3_avm_writedata;
    wire [63:0] bb_if_loop_3_B3_out_unnamed_if_loop_312_if_loop_3_avm_address;
    wire [0:0] bb_if_loop_3_B3_out_unnamed_if_loop_312_if_loop_3_avm_burstcount;
    wire [7:0] bb_if_loop_3_B3_out_unnamed_if_loop_312_if_loop_3_avm_byteenable;
    wire [0:0] bb_if_loop_3_B3_out_unnamed_if_loop_312_if_loop_3_avm_enable;
    wire [0:0] bb_if_loop_3_B3_out_unnamed_if_loop_312_if_loop_3_avm_read;
    wire [0:0] bb_if_loop_3_B3_out_unnamed_if_loop_312_if_loop_3_avm_write;
    wire [63:0] bb_if_loop_3_B3_out_unnamed_if_loop_312_if_loop_3_avm_writedata;
    wire [0:0] bb_if_loop_3_B3_out_valid_in_0;
    wire [0:0] bb_if_loop_3_B3_out_valid_out_0;
    wire [31:0] bb_if_loop_3_B4_out_intel_reserved_ffwd_5_0;
    wire [31:0] bb_if_loop_3_B4_out_lm1_if_loop_3_avm_address;
    wire [0:0] bb_if_loop_3_B4_out_lm1_if_loop_3_avm_burstcount;
    wire [3:0] bb_if_loop_3_B4_out_lm1_if_loop_3_avm_byteenable;
    wire [0:0] bb_if_loop_3_B4_out_lm1_if_loop_3_avm_enable;
    wire [0:0] bb_if_loop_3_B4_out_lm1_if_loop_3_avm_read;
    wire [0:0] bb_if_loop_3_B4_out_lm1_if_loop_3_avm_write;
    wire [31:0] bb_if_loop_3_B4_out_lm1_if_loop_3_avm_writedata;
    wire [31:0] bb_if_loop_3_B4_out_lm62_if_loop_3_avm_address;
    wire [0:0] bb_if_loop_3_B4_out_lm62_if_loop_3_avm_burstcount;
    wire [3:0] bb_if_loop_3_B4_out_lm62_if_loop_3_avm_byteenable;
    wire [0:0] bb_if_loop_3_B4_out_lm62_if_loop_3_avm_enable;
    wire [0:0] bb_if_loop_3_B4_out_lm62_if_loop_3_avm_read;
    wire [0:0] bb_if_loop_3_B4_out_lm62_if_loop_3_avm_write;
    wire [31:0] bb_if_loop_3_B4_out_lm62_if_loop_3_avm_writedata;
    wire [0:0] bb_if_loop_3_B4_out_profile_loop_o_valid;
    wire [0:0] bb_if_loop_3_B4_out_stall_in_0;
    wire [0:0] bb_if_loop_3_B4_out_stall_out_0;
    wire [0:0] bb_if_loop_3_B4_out_valid_in_0;
    wire [0:0] bb_if_loop_3_B4_out_valid_out_0;
    wire [0:0] bb_if_loop_3_B5_out_feedback_almost_empty_out_1;
    wire [0:0] bb_if_loop_3_B5_out_feedback_data_out_1;
    wire [0:0] bb_if_loop_3_B5_out_feedback_empty_out_1;
    wire [31:0] bb_if_loop_3_B5_out_iowr_bl_return_if_loop_3_o_fifodata;
    wire [0:0] bb_if_loop_3_B5_out_iowr_bl_return_if_loop_3_o_fifovalid;
    wire [0:0] bb_if_loop_3_B5_out_stall_in_0;
    wire [0:0] bb_if_loop_3_B5_out_stall_out_0;
    wire [0:0] bb_if_loop_3_B5_out_valid_in_0;
    wire [0:0] bb_if_loop_3_B5_out_valid_out_0;
    wire [0:0] if_loop_3_B1_start_x_i_capture;
    wire if_loop_3_B1_start_x_i_capture_bitsignaltemp;
    wire [0:0] if_loop_3_B1_start_x_i_clear;
    wire if_loop_3_B1_start_x_i_clear_bitsignaltemp;
    wire [0:0] if_loop_3_B1_start_x_i_enable;
    wire if_loop_3_B1_start_x_i_enable_bitsignaltemp;
    wire [0:0] if_loop_3_B1_start_x_i_shift;
    wire if_loop_3_B1_start_x_i_shift_bitsignaltemp;
    wire [0:0] if_loop_3_B1_start_x_i_stall_pred;
    wire if_loop_3_B1_start_x_i_stall_pred_bitsignaltemp;
    wire [0:0] if_loop_3_B1_start_x_i_stall_succ;
    wire if_loop_3_B1_start_x_i_stall_succ_bitsignaltemp;
    wire [0:0] if_loop_3_B1_start_x_i_valid_loop;
    wire if_loop_3_B1_start_x_i_valid_loop_bitsignaltemp;
    wire [0:0] if_loop_3_B1_start_x_i_valid_pred;
    wire if_loop_3_B1_start_x_i_valid_pred_bitsignaltemp;
    wire [0:0] if_loop_3_B1_start_x_i_valid_succ;
    wire if_loop_3_B1_start_x_i_valid_succ_bitsignaltemp;
    wire [0:0] if_loop_3_B3_x_i_capture;
    wire if_loop_3_B3_x_i_capture_bitsignaltemp;
    wire [0:0] if_loop_3_B3_x_i_clear;
    wire if_loop_3_B3_x_i_clear_bitsignaltemp;
    wire [0:0] if_loop_3_B3_x_i_enable;
    wire if_loop_3_B3_x_i_enable_bitsignaltemp;
    wire [0:0] if_loop_3_B3_x_i_shift;
    wire if_loop_3_B3_x_i_shift_bitsignaltemp;
    wire [0:0] if_loop_3_B3_x_i_stall_pred;
    wire if_loop_3_B3_x_i_stall_pred_bitsignaltemp;
    wire [0:0] if_loop_3_B3_x_i_stall_succ;
    wire if_loop_3_B3_x_i_stall_succ_bitsignaltemp;
    wire [0:0] if_loop_3_B3_x_i_valid_loop;
    wire if_loop_3_B3_x_i_valid_loop_bitsignaltemp;
    wire [0:0] if_loop_3_B3_x_i_valid_pred;
    wire if_loop_3_B3_x_i_valid_pred_bitsignaltemp;
    wire [0:0] if_loop_3_B3_x_i_valid_succ;
    wire if_loop_3_B3_x_i_valid_succ_bitsignaltemp;
    wire [0:0] if_loop_3_B4_x_i_capture;
    wire if_loop_3_B4_x_i_capture_bitsignaltemp;
    wire [0:0] if_loop_3_B4_x_i_clear;
    wire if_loop_3_B4_x_i_clear_bitsignaltemp;
    wire [0:0] if_loop_3_B4_x_i_enable;
    wire if_loop_3_B4_x_i_enable_bitsignaltemp;
    wire [0:0] if_loop_3_B4_x_i_shift;
    wire if_loop_3_B4_x_i_shift_bitsignaltemp;
    wire [0:0] if_loop_3_B4_x_i_stall_pred;
    wire if_loop_3_B4_x_i_stall_pred_bitsignaltemp;
    wire [0:0] if_loop_3_B4_x_i_stall_succ;
    wire if_loop_3_B4_x_i_stall_succ_bitsignaltemp;
    wire [0:0] if_loop_3_B4_x_i_valid_loop;
    wire if_loop_3_B4_x_i_valid_loop_bitsignaltemp;
    wire [0:0] if_loop_3_B4_x_i_valid_pred;
    wire if_loop_3_B4_x_i_valid_pred_bitsignaltemp;
    wire [0:0] if_loop_3_B4_x_i_valid_succ;
    wire if_loop_3_B4_x_i_valid_succ_bitsignaltemp;
    reg [0:0] rst_sync_rst_sclrn;


    // bb_if_loop_3_B4(BLACKBOX,6)
    if_loop_3_bb_B4 thebb_if_loop_3_B4 (
        .in_flush(in_start),
        .in_intel_reserved_ffwd_3_0(bb_if_loop_3_B2_out_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(bb_if_loop_3_B2_out_intel_reserved_ffwd_4_0),
        .in_lm1_if_loop_3_avm_readdata(in_lm1_if_loop_3_avm_readdata),
        .in_lm1_if_loop_3_avm_readdatavalid(in_lm1_if_loop_3_avm_readdatavalid),
        .in_lm1_if_loop_3_avm_waitrequest(in_lm1_if_loop_3_avm_waitrequest),
        .in_lm1_if_loop_3_avm_writeack(in_lm1_if_loop_3_avm_writeack),
        .in_lm62_if_loop_3_avm_readdata(in_lm62_if_loop_3_avm_readdata),
        .in_lm62_if_loop_3_avm_readdatavalid(in_lm62_if_loop_3_avm_readdatavalid),
        .in_lm62_if_loop_3_avm_waitrequest(in_lm62_if_loop_3_avm_waitrequest),
        .in_lm62_if_loop_3_avm_writeack(in_lm62_if_loop_3_avm_writeack),
        .in_stall_in_0(bb_if_loop_3_B5_out_stall_out_0),
        .in_valid_in_0(bb_if_loop_3_B2_out_valid_out_0),
        .out_intel_reserved_ffwd_5_0(bb_if_loop_3_B4_out_intel_reserved_ffwd_5_0),
        .out_lm1_if_loop_3_avm_address(bb_if_loop_3_B4_out_lm1_if_loop_3_avm_address),
        .out_lm1_if_loop_3_avm_burstcount(bb_if_loop_3_B4_out_lm1_if_loop_3_avm_burstcount),
        .out_lm1_if_loop_3_avm_byteenable(bb_if_loop_3_B4_out_lm1_if_loop_3_avm_byteenable),
        .out_lm1_if_loop_3_avm_enable(bb_if_loop_3_B4_out_lm1_if_loop_3_avm_enable),
        .out_lm1_if_loop_3_avm_read(bb_if_loop_3_B4_out_lm1_if_loop_3_avm_read),
        .out_lm1_if_loop_3_avm_write(bb_if_loop_3_B4_out_lm1_if_loop_3_avm_write),
        .out_lm1_if_loop_3_avm_writedata(bb_if_loop_3_B4_out_lm1_if_loop_3_avm_writedata),
        .out_lm62_if_loop_3_avm_address(bb_if_loop_3_B4_out_lm62_if_loop_3_avm_address),
        .out_lm62_if_loop_3_avm_burstcount(bb_if_loop_3_B4_out_lm62_if_loop_3_avm_burstcount),
        .out_lm62_if_loop_3_avm_byteenable(bb_if_loop_3_B4_out_lm62_if_loop_3_avm_byteenable),
        .out_lm62_if_loop_3_avm_enable(bb_if_loop_3_B4_out_lm62_if_loop_3_avm_enable),
        .out_lm62_if_loop_3_avm_read(bb_if_loop_3_B4_out_lm62_if_loop_3_avm_read),
        .out_lm62_if_loop_3_avm_write(bb_if_loop_3_B4_out_lm62_if_loop_3_avm_write),
        .out_lm62_if_loop_3_avm_writedata(bb_if_loop_3_B4_out_lm62_if_loop_3_avm_writedata),
        .out_profile_loop_o_valid(bb_if_loop_3_B4_out_profile_loop_o_valid),
        .out_stall_in_0(bb_if_loop_3_B4_out_stall_in_0),
        .out_stall_out_0(bb_if_loop_3_B4_out_stall_out_0),
        .out_valid_in_0(bb_if_loop_3_B4_out_valid_in_0),
        .out_valid_out_0(bb_if_loop_3_B4_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_if_loop_3_B3(BLACKBOX,5)
    if_loop_3_bb_B3 thebb_if_loop_3_B3 (
        .in_flush(in_start),
        .in_intel_reserved_ffwd_0_0(bb_if_loop_3_B1_start_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(bb_if_loop_3_B1_start_out_intel_reserved_ffwd_1_0),
        .in_memdep_3_if_loop_3_avm_readdata(in_memdep_3_if_loop_3_avm_readdata),
        .in_memdep_3_if_loop_3_avm_readdatavalid(in_memdep_3_if_loop_3_avm_readdatavalid),
        .in_memdep_3_if_loop_3_avm_waitrequest(in_memdep_3_if_loop_3_avm_waitrequest),
        .in_memdep_3_if_loop_3_avm_writeack(in_memdep_3_if_loop_3_avm_writeack),
        .in_memdep_if_loop_3_avm_readdata(in_memdep_if_loop_3_avm_readdata),
        .in_memdep_if_loop_3_avm_readdatavalid(in_memdep_if_loop_3_avm_readdatavalid),
        .in_memdep_if_loop_3_avm_waitrequest(in_memdep_if_loop_3_avm_waitrequest),
        .in_memdep_if_loop_3_avm_writeack(in_memdep_if_loop_3_avm_writeack),
        .in_stall_in_0(bb_if_loop_3_B2_out_stall_out_0),
        .in_unnamed_if_loop_311_if_loop_3_avm_readdata(in_unnamed_if_loop_311_if_loop_3_avm_readdata),
        .in_unnamed_if_loop_311_if_loop_3_avm_readdatavalid(in_unnamed_if_loop_311_if_loop_3_avm_readdatavalid),
        .in_unnamed_if_loop_311_if_loop_3_avm_waitrequest(in_unnamed_if_loop_311_if_loop_3_avm_waitrequest),
        .in_unnamed_if_loop_311_if_loop_3_avm_writeack(in_unnamed_if_loop_311_if_loop_3_avm_writeack),
        .in_unnamed_if_loop_312_if_loop_3_avm_readdata(in_unnamed_if_loop_312_if_loop_3_avm_readdata),
        .in_unnamed_if_loop_312_if_loop_3_avm_readdatavalid(in_unnamed_if_loop_312_if_loop_3_avm_readdatavalid),
        .in_unnamed_if_loop_312_if_loop_3_avm_waitrequest(in_unnamed_if_loop_312_if_loop_3_avm_waitrequest),
        .in_unnamed_if_loop_312_if_loop_3_avm_writeack(in_unnamed_if_loop_312_if_loop_3_avm_writeack),
        .in_valid_in_0(bb_if_loop_3_B1_start_out_valid_out_0),
        .out_memdep_3_if_loop_3_avm_address(bb_if_loop_3_B3_out_memdep_3_if_loop_3_avm_address),
        .out_memdep_3_if_loop_3_avm_burstcount(bb_if_loop_3_B3_out_memdep_3_if_loop_3_avm_burstcount),
        .out_memdep_3_if_loop_3_avm_byteenable(bb_if_loop_3_B3_out_memdep_3_if_loop_3_avm_byteenable),
        .out_memdep_3_if_loop_3_avm_enable(bb_if_loop_3_B3_out_memdep_3_if_loop_3_avm_enable),
        .out_memdep_3_if_loop_3_avm_read(bb_if_loop_3_B3_out_memdep_3_if_loop_3_avm_read),
        .out_memdep_3_if_loop_3_avm_write(bb_if_loop_3_B3_out_memdep_3_if_loop_3_avm_write),
        .out_memdep_3_if_loop_3_avm_writedata(bb_if_loop_3_B3_out_memdep_3_if_loop_3_avm_writedata),
        .out_memdep_if_loop_3_avm_address(bb_if_loop_3_B3_out_memdep_if_loop_3_avm_address),
        .out_memdep_if_loop_3_avm_burstcount(bb_if_loop_3_B3_out_memdep_if_loop_3_avm_burstcount),
        .out_memdep_if_loop_3_avm_byteenable(bb_if_loop_3_B3_out_memdep_if_loop_3_avm_byteenable),
        .out_memdep_if_loop_3_avm_enable(bb_if_loop_3_B3_out_memdep_if_loop_3_avm_enable),
        .out_memdep_if_loop_3_avm_read(bb_if_loop_3_B3_out_memdep_if_loop_3_avm_read),
        .out_memdep_if_loop_3_avm_write(bb_if_loop_3_B3_out_memdep_if_loop_3_avm_write),
        .out_memdep_if_loop_3_avm_writedata(bb_if_loop_3_B3_out_memdep_if_loop_3_avm_writedata),
        .out_profile_loop_o_valid(bb_if_loop_3_B3_out_profile_loop_o_valid),
        .out_stall_in_0(bb_if_loop_3_B3_out_stall_in_0),
        .out_stall_out_0(bb_if_loop_3_B3_out_stall_out_0),
        .out_unnamed_if_loop_311_if_loop_3_avm_address(bb_if_loop_3_B3_out_unnamed_if_loop_311_if_loop_3_avm_address),
        .out_unnamed_if_loop_311_if_loop_3_avm_burstcount(bb_if_loop_3_B3_out_unnamed_if_loop_311_if_loop_3_avm_burstcount),
        .out_unnamed_if_loop_311_if_loop_3_avm_byteenable(bb_if_loop_3_B3_out_unnamed_if_loop_311_if_loop_3_avm_byteenable),
        .out_unnamed_if_loop_311_if_loop_3_avm_enable(bb_if_loop_3_B3_out_unnamed_if_loop_311_if_loop_3_avm_enable),
        .out_unnamed_if_loop_311_if_loop_3_avm_read(bb_if_loop_3_B3_out_unnamed_if_loop_311_if_loop_3_avm_read),
        .out_unnamed_if_loop_311_if_loop_3_avm_write(bb_if_loop_3_B3_out_unnamed_if_loop_311_if_loop_3_avm_write),
        .out_unnamed_if_loop_311_if_loop_3_avm_writedata(bb_if_loop_3_B3_out_unnamed_if_loop_311_if_loop_3_avm_writedata),
        .out_unnamed_if_loop_312_if_loop_3_avm_address(bb_if_loop_3_B3_out_unnamed_if_loop_312_if_loop_3_avm_address),
        .out_unnamed_if_loop_312_if_loop_3_avm_burstcount(bb_if_loop_3_B3_out_unnamed_if_loop_312_if_loop_3_avm_burstcount),
        .out_unnamed_if_loop_312_if_loop_3_avm_byteenable(bb_if_loop_3_B3_out_unnamed_if_loop_312_if_loop_3_avm_byteenable),
        .out_unnamed_if_loop_312_if_loop_3_avm_enable(bb_if_loop_3_B3_out_unnamed_if_loop_312_if_loop_3_avm_enable),
        .out_unnamed_if_loop_312_if_loop_3_avm_read(bb_if_loop_3_B3_out_unnamed_if_loop_312_if_loop_3_avm_read),
        .out_unnamed_if_loop_312_if_loop_3_avm_write(bb_if_loop_3_B3_out_unnamed_if_loop_312_if_loop_3_avm_write),
        .out_unnamed_if_loop_312_if_loop_3_avm_writedata(bb_if_loop_3_B3_out_unnamed_if_loop_312_if_loop_3_avm_writedata),
        .out_valid_in_0(bb_if_loop_3_B3_out_valid_in_0),
        .out_valid_out_0(bb_if_loop_3_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_if_loop_3_B2(BLACKBOX,4)
    if_loop_3_bb_B2 thebb_if_loop_3_B2 (
        .in_intel_reserved_ffwd_2_0(bb_if_loop_3_B1_start_out_intel_reserved_ffwd_2_0),
        .in_stall_in_0(bb_if_loop_3_B4_out_stall_out_0),
        .in_valid_in_0(bb_if_loop_3_B3_out_valid_out_0),
        .out_intel_reserved_ffwd_3_0(bb_if_loop_3_B2_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_if_loop_3_B2_out_intel_reserved_ffwd_4_0),
        .out_stall_out_0(bb_if_loop_3_B2_out_stall_out_0),
        .out_valid_out_0(bb_if_loop_3_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_if_loop_3_B5(BLACKBOX,7)
    if_loop_3_bb_B5 thebb_if_loop_3_B5 (
        .in_feedback_stall_in_1(bb_if_loop_3_B1_start_out_feedback_stall_out_1),
        .in_intel_reserved_ffwd_3_0(bb_if_loop_3_B2_out_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_5_0(bb_if_loop_3_B4_out_intel_reserved_ffwd_5_0),
        .in_iowr_bl_return_if_loop_3_i_fifoready(in_iowr_bl_return_if_loop_3_i_fifoready),
        .in_stall_in_0(in_stall_in),
        .in_valid_in_0(bb_if_loop_3_B4_out_valid_out_0),
        .out_feedback_almost_empty_out_1(bb_if_loop_3_B5_out_feedback_almost_empty_out_1),
        .out_feedback_data_out_1(bb_if_loop_3_B5_out_feedback_data_out_1),
        .out_feedback_empty_out_1(bb_if_loop_3_B5_out_feedback_empty_out_1),
        .out_iowr_bl_return_if_loop_3_o_fifodata(bb_if_loop_3_B5_out_iowr_bl_return_if_loop_3_o_fifodata),
        .out_iowr_bl_return_if_loop_3_o_fifovalid(bb_if_loop_3_B5_out_iowr_bl_return_if_loop_3_o_fifovalid),
        .out_stall_in_0(bb_if_loop_3_B5_out_stall_in_0),
        .out_stall_out_0(bb_if_loop_3_B5_out_stall_out_0),
        .out_valid_in_0(bb_if_loop_3_B5_out_valid_in_0),
        .out_valid_out_0(bb_if_loop_3_B5_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_if_loop_3_B0_runOnce(BLACKBOX,2)
    if_loop_3_bb_B0_runOnce thebb_if_loop_3_B0_runOnce (
        .in_stall_in_0(bb_if_loop_3_B1_start_out_stall_out_0),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_if_loop_3_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(bb_if_loop_3_B0_runOnce_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_if_loop_3_B1_start(BLACKBOX,3)
    if_loop_3_bb_B1_start thebb_if_loop_3_B1_start (
        .in_feedback_almost_empty_in_1(bb_if_loop_3_B5_out_feedback_almost_empty_out_1),
        .in_feedback_data_in_1(bb_if_loop_3_B5_out_feedback_data_out_1),
        .in_feedback_empty_in_1(bb_if_loop_3_B5_out_feedback_empty_out_1),
        .in_iord_bl_call_if_loop_3_i_fifodata(in_iord_bl_call_if_loop_3_i_fifodata),
        .in_iord_bl_call_if_loop_3_i_fifovalid(in_iord_bl_call_if_loop_3_i_fifovalid),
        .in_stall_in_0(bb_if_loop_3_B3_out_stall_out_0),
        .in_valid_in_0(bb_if_loop_3_B0_runOnce_out_valid_out_0),
        .out_feedback_stall_out_1(bb_if_loop_3_B1_start_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_if_loop_3_B1_start_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_if_loop_3_B1_start_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_if_loop_3_B1_start_out_intel_reserved_ffwd_2_0),
        .out_iord_bl_call_if_loop_3_o_fifoalmost_full(bb_if_loop_3_B1_start_out_iord_bl_call_if_loop_3_o_fifoalmost_full),
        .out_iord_bl_call_if_loop_3_o_fifoready(bb_if_loop_3_B1_start_out_iord_bl_call_if_loop_3_o_fifoready),
        .out_stall_out_0(bb_if_loop_3_B1_start_out_stall_out_0),
        .out_valid_in_0(bb_if_loop_3_B1_start_out_valid_in_0),
        .out_valid_out_0(bb_if_loop_3_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // if_loop_3_B1_start_x(EXTIFACE,14)
    assign if_loop_3_B1_start_x_i_capture = GND_q;
    assign if_loop_3_B1_start_x_i_clear = GND_q;
    assign if_loop_3_B1_start_x_i_enable = VCC_q;
    assign if_loop_3_B1_start_x_i_shift = GND_q;
    assign if_loop_3_B1_start_x_i_stall_pred = bb_if_loop_3_B1_start_out_stall_out_0;
    assign if_loop_3_B1_start_x_i_stall_succ = bb_if_loop_3_B5_out_stall_in_0;
    assign if_loop_3_B1_start_x_i_valid_loop = bb_if_loop_3_B5_out_valid_in_0;
    assign if_loop_3_B1_start_x_i_valid_pred = bb_if_loop_3_B1_start_out_valid_in_0;
    assign if_loop_3_B1_start_x_i_valid_succ = bb_if_loop_3_B5_out_valid_out_0;
    assign if_loop_3_B1_start_x_i_capture_bitsignaltemp = if_loop_3_B1_start_x_i_capture[0];
    assign if_loop_3_B1_start_x_i_clear_bitsignaltemp = if_loop_3_B1_start_x_i_clear[0];
    assign if_loop_3_B1_start_x_i_enable_bitsignaltemp = if_loop_3_B1_start_x_i_enable[0];
    assign if_loop_3_B1_start_x_i_shift_bitsignaltemp = if_loop_3_B1_start_x_i_shift[0];
    assign if_loop_3_B1_start_x_i_stall_pred_bitsignaltemp = if_loop_3_B1_start_x_i_stall_pred[0];
    assign if_loop_3_B1_start_x_i_stall_succ_bitsignaltemp = if_loop_3_B1_start_x_i_stall_succ[0];
    assign if_loop_3_B1_start_x_i_valid_loop_bitsignaltemp = if_loop_3_B1_start_x_i_valid_loop[0];
    assign if_loop_3_B1_start_x_i_valid_pred_bitsignaltemp = if_loop_3_B1_start_x_i_valid_pred[0];
    assign if_loop_3_B1_start_x_i_valid_succ_bitsignaltemp = if_loop_3_B1_start_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("if_loop_3.B1.start")
    ) theif_loop_3_B1_start_x (
        .i_capture(if_loop_3_B1_start_x_i_capture_bitsignaltemp),
        .i_clear(if_loop_3_B1_start_x_i_clear_bitsignaltemp),
        .i_enable(if_loop_3_B1_start_x_i_enable_bitsignaltemp),
        .i_shift(if_loop_3_B1_start_x_i_shift_bitsignaltemp),
        .i_stall_pred(if_loop_3_B1_start_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(if_loop_3_B1_start_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(if_loop_3_B1_start_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(if_loop_3_B1_start_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(if_loop_3_B1_start_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // if_loop_3_B3_x(EXTIFACE,15)
    assign if_loop_3_B3_x_i_capture = GND_q;
    assign if_loop_3_B3_x_i_clear = GND_q;
    assign if_loop_3_B3_x_i_enable = VCC_q;
    assign if_loop_3_B3_x_i_shift = GND_q;
    assign if_loop_3_B3_x_i_stall_pred = bb_if_loop_3_B3_out_stall_out_0;
    assign if_loop_3_B3_x_i_stall_succ = bb_if_loop_3_B3_out_stall_in_0;
    assign if_loop_3_B3_x_i_valid_loop = bb_if_loop_3_B3_out_profile_loop_o_valid;
    assign if_loop_3_B3_x_i_valid_pred = bb_if_loop_3_B3_out_valid_in_0;
    assign if_loop_3_B3_x_i_valid_succ = bb_if_loop_3_B3_out_valid_out_0;
    assign if_loop_3_B3_x_i_capture_bitsignaltemp = if_loop_3_B3_x_i_capture[0];
    assign if_loop_3_B3_x_i_clear_bitsignaltemp = if_loop_3_B3_x_i_clear[0];
    assign if_loop_3_B3_x_i_enable_bitsignaltemp = if_loop_3_B3_x_i_enable[0];
    assign if_loop_3_B3_x_i_shift_bitsignaltemp = if_loop_3_B3_x_i_shift[0];
    assign if_loop_3_B3_x_i_stall_pred_bitsignaltemp = if_loop_3_B3_x_i_stall_pred[0];
    assign if_loop_3_B3_x_i_stall_succ_bitsignaltemp = if_loop_3_B3_x_i_stall_succ[0];
    assign if_loop_3_B3_x_i_valid_loop_bitsignaltemp = if_loop_3_B3_x_i_valid_loop[0];
    assign if_loop_3_B3_x_i_valid_pred_bitsignaltemp = if_loop_3_B3_x_i_valid_pred[0];
    assign if_loop_3_B3_x_i_valid_succ_bitsignaltemp = if_loop_3_B3_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("if_loop_3.B3")
    ) theif_loop_3_B3_x (
        .i_capture(if_loop_3_B3_x_i_capture_bitsignaltemp),
        .i_clear(if_loop_3_B3_x_i_clear_bitsignaltemp),
        .i_enable(if_loop_3_B3_x_i_enable_bitsignaltemp),
        .i_shift(if_loop_3_B3_x_i_shift_bitsignaltemp),
        .i_stall_pred(if_loop_3_B3_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(if_loop_3_B3_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(if_loop_3_B3_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(if_loop_3_B3_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(if_loop_3_B3_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // if_loop_3_B4_x(EXTIFACE,16)
    assign if_loop_3_B4_x_i_capture = GND_q;
    assign if_loop_3_B4_x_i_clear = GND_q;
    assign if_loop_3_B4_x_i_enable = VCC_q;
    assign if_loop_3_B4_x_i_shift = GND_q;
    assign if_loop_3_B4_x_i_stall_pred = bb_if_loop_3_B4_out_stall_out_0;
    assign if_loop_3_B4_x_i_stall_succ = bb_if_loop_3_B4_out_stall_in_0;
    assign if_loop_3_B4_x_i_valid_loop = bb_if_loop_3_B4_out_profile_loop_o_valid;
    assign if_loop_3_B4_x_i_valid_pred = bb_if_loop_3_B4_out_valid_in_0;
    assign if_loop_3_B4_x_i_valid_succ = bb_if_loop_3_B4_out_valid_out_0;
    assign if_loop_3_B4_x_i_capture_bitsignaltemp = if_loop_3_B4_x_i_capture[0];
    assign if_loop_3_B4_x_i_clear_bitsignaltemp = if_loop_3_B4_x_i_clear[0];
    assign if_loop_3_B4_x_i_enable_bitsignaltemp = if_loop_3_B4_x_i_enable[0];
    assign if_loop_3_B4_x_i_shift_bitsignaltemp = if_loop_3_B4_x_i_shift[0];
    assign if_loop_3_B4_x_i_stall_pred_bitsignaltemp = if_loop_3_B4_x_i_stall_pred[0];
    assign if_loop_3_B4_x_i_stall_succ_bitsignaltemp = if_loop_3_B4_x_i_stall_succ[0];
    assign if_loop_3_B4_x_i_valid_loop_bitsignaltemp = if_loop_3_B4_x_i_valid_loop[0];
    assign if_loop_3_B4_x_i_valid_pred_bitsignaltemp = if_loop_3_B4_x_i_valid_pred[0];
    assign if_loop_3_B4_x_i_valid_succ_bitsignaltemp = if_loop_3_B4_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("if_loop_3.B4")
    ) theif_loop_3_B4_x (
        .i_capture(if_loop_3_B4_x_i_capture_bitsignaltemp),
        .i_clear(if_loop_3_B4_x_i_clear_bitsignaltemp),
        .i_enable(if_loop_3_B4_x_i_enable_bitsignaltemp),
        .i_shift(if_loop_3_B4_x_i_shift_bitsignaltemp),
        .i_stall_pred(if_loop_3_B4_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(if_loop_3_B4_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(if_loop_3_B4_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(if_loop_3_B4_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(if_loop_3_B4_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // out_iord_bl_call_if_loop_3_o_fifoalmost_full(GPOUT,51)
    assign out_iord_bl_call_if_loop_3_o_fifoalmost_full = bb_if_loop_3_B1_start_out_iord_bl_call_if_loop_3_o_fifoalmost_full;

    // out_iord_bl_call_if_loop_3_o_fifoready(GPOUT,52)
    assign out_iord_bl_call_if_loop_3_o_fifoready = bb_if_loop_3_B1_start_out_iord_bl_call_if_loop_3_o_fifoready;

    // out_iowr_bl_return_if_loop_3_o_fifodata(GPOUT,53)
    assign out_iowr_bl_return_if_loop_3_o_fifodata = bb_if_loop_3_B5_out_iowr_bl_return_if_loop_3_o_fifodata;

    // out_iowr_bl_return_if_loop_3_o_fifovalid(GPOUT,54)
    assign out_iowr_bl_return_if_loop_3_o_fifovalid = bb_if_loop_3_B5_out_iowr_bl_return_if_loop_3_o_fifovalid;

    // out_lm1_if_loop_3_avm_address(GPOUT,55)
    assign out_lm1_if_loop_3_avm_address = bb_if_loop_3_B4_out_lm1_if_loop_3_avm_address;

    // out_lm1_if_loop_3_avm_burstcount(GPOUT,56)
    assign out_lm1_if_loop_3_avm_burstcount = bb_if_loop_3_B4_out_lm1_if_loop_3_avm_burstcount;

    // out_lm1_if_loop_3_avm_byteenable(GPOUT,57)
    assign out_lm1_if_loop_3_avm_byteenable = bb_if_loop_3_B4_out_lm1_if_loop_3_avm_byteenable;

    // out_lm1_if_loop_3_avm_enable(GPOUT,58)
    assign out_lm1_if_loop_3_avm_enable = bb_if_loop_3_B4_out_lm1_if_loop_3_avm_enable;

    // out_lm1_if_loop_3_avm_read(GPOUT,59)
    assign out_lm1_if_loop_3_avm_read = bb_if_loop_3_B4_out_lm1_if_loop_3_avm_read;

    // out_lm1_if_loop_3_avm_write(GPOUT,60)
    assign out_lm1_if_loop_3_avm_write = bb_if_loop_3_B4_out_lm1_if_loop_3_avm_write;

    // out_lm1_if_loop_3_avm_writedata(GPOUT,61)
    assign out_lm1_if_loop_3_avm_writedata = bb_if_loop_3_B4_out_lm1_if_loop_3_avm_writedata;

    // out_lm62_if_loop_3_avm_address(GPOUT,62)
    assign out_lm62_if_loop_3_avm_address = bb_if_loop_3_B4_out_lm62_if_loop_3_avm_address;

    // out_lm62_if_loop_3_avm_burstcount(GPOUT,63)
    assign out_lm62_if_loop_3_avm_burstcount = bb_if_loop_3_B4_out_lm62_if_loop_3_avm_burstcount;

    // out_lm62_if_loop_3_avm_byteenable(GPOUT,64)
    assign out_lm62_if_loop_3_avm_byteenable = bb_if_loop_3_B4_out_lm62_if_loop_3_avm_byteenable;

    // out_lm62_if_loop_3_avm_enable(GPOUT,65)
    assign out_lm62_if_loop_3_avm_enable = bb_if_loop_3_B4_out_lm62_if_loop_3_avm_enable;

    // out_lm62_if_loop_3_avm_read(GPOUT,66)
    assign out_lm62_if_loop_3_avm_read = bb_if_loop_3_B4_out_lm62_if_loop_3_avm_read;

    // out_lm62_if_loop_3_avm_write(GPOUT,67)
    assign out_lm62_if_loop_3_avm_write = bb_if_loop_3_B4_out_lm62_if_loop_3_avm_write;

    // out_lm62_if_loop_3_avm_writedata(GPOUT,68)
    assign out_lm62_if_loop_3_avm_writedata = bb_if_loop_3_B4_out_lm62_if_loop_3_avm_writedata;

    // out_memdep_3_if_loop_3_avm_address(GPOUT,69)
    assign out_memdep_3_if_loop_3_avm_address = bb_if_loop_3_B3_out_memdep_3_if_loop_3_avm_address;

    // out_memdep_3_if_loop_3_avm_burstcount(GPOUT,70)
    assign out_memdep_3_if_loop_3_avm_burstcount = bb_if_loop_3_B3_out_memdep_3_if_loop_3_avm_burstcount;

    // out_memdep_3_if_loop_3_avm_byteenable(GPOUT,71)
    assign out_memdep_3_if_loop_3_avm_byteenable = bb_if_loop_3_B3_out_memdep_3_if_loop_3_avm_byteenable;

    // out_memdep_3_if_loop_3_avm_enable(GPOUT,72)
    assign out_memdep_3_if_loop_3_avm_enable = bb_if_loop_3_B3_out_memdep_3_if_loop_3_avm_enable;

    // out_memdep_3_if_loop_3_avm_read(GPOUT,73)
    assign out_memdep_3_if_loop_3_avm_read = bb_if_loop_3_B3_out_memdep_3_if_loop_3_avm_read;

    // out_memdep_3_if_loop_3_avm_write(GPOUT,74)
    assign out_memdep_3_if_loop_3_avm_write = bb_if_loop_3_B3_out_memdep_3_if_loop_3_avm_write;

    // out_memdep_3_if_loop_3_avm_writedata(GPOUT,75)
    assign out_memdep_3_if_loop_3_avm_writedata = bb_if_loop_3_B3_out_memdep_3_if_loop_3_avm_writedata;

    // out_memdep_if_loop_3_avm_address(GPOUT,76)
    assign out_memdep_if_loop_3_avm_address = bb_if_loop_3_B3_out_memdep_if_loop_3_avm_address;

    // out_memdep_if_loop_3_avm_burstcount(GPOUT,77)
    assign out_memdep_if_loop_3_avm_burstcount = bb_if_loop_3_B3_out_memdep_if_loop_3_avm_burstcount;

    // out_memdep_if_loop_3_avm_byteenable(GPOUT,78)
    assign out_memdep_if_loop_3_avm_byteenable = bb_if_loop_3_B3_out_memdep_if_loop_3_avm_byteenable;

    // out_memdep_if_loop_3_avm_enable(GPOUT,79)
    assign out_memdep_if_loop_3_avm_enable = bb_if_loop_3_B3_out_memdep_if_loop_3_avm_enable;

    // out_memdep_if_loop_3_avm_read(GPOUT,80)
    assign out_memdep_if_loop_3_avm_read = bb_if_loop_3_B3_out_memdep_if_loop_3_avm_read;

    // out_memdep_if_loop_3_avm_write(GPOUT,81)
    assign out_memdep_if_loop_3_avm_write = bb_if_loop_3_B3_out_memdep_if_loop_3_avm_write;

    // out_memdep_if_loop_3_avm_writedata(GPOUT,82)
    assign out_memdep_if_loop_3_avm_writedata = bb_if_loop_3_B3_out_memdep_if_loop_3_avm_writedata;

    // out_stall_out(GPOUT,83)
    assign out_stall_out = bb_if_loop_3_B0_runOnce_out_stall_out_0;

    // out_unnamed_if_loop_311_if_loop_3_avm_address(GPOUT,84)
    assign out_unnamed_if_loop_311_if_loop_3_avm_address = bb_if_loop_3_B3_out_unnamed_if_loop_311_if_loop_3_avm_address;

    // out_unnamed_if_loop_311_if_loop_3_avm_burstcount(GPOUT,85)
    assign out_unnamed_if_loop_311_if_loop_3_avm_burstcount = bb_if_loop_3_B3_out_unnamed_if_loop_311_if_loop_3_avm_burstcount;

    // out_unnamed_if_loop_311_if_loop_3_avm_byteenable(GPOUT,86)
    assign out_unnamed_if_loop_311_if_loop_3_avm_byteenable = bb_if_loop_3_B3_out_unnamed_if_loop_311_if_loop_3_avm_byteenable;

    // out_unnamed_if_loop_311_if_loop_3_avm_enable(GPOUT,87)
    assign out_unnamed_if_loop_311_if_loop_3_avm_enable = bb_if_loop_3_B3_out_unnamed_if_loop_311_if_loop_3_avm_enable;

    // out_unnamed_if_loop_311_if_loop_3_avm_read(GPOUT,88)
    assign out_unnamed_if_loop_311_if_loop_3_avm_read = bb_if_loop_3_B3_out_unnamed_if_loop_311_if_loop_3_avm_read;

    // out_unnamed_if_loop_311_if_loop_3_avm_write(GPOUT,89)
    assign out_unnamed_if_loop_311_if_loop_3_avm_write = bb_if_loop_3_B3_out_unnamed_if_loop_311_if_loop_3_avm_write;

    // out_unnamed_if_loop_311_if_loop_3_avm_writedata(GPOUT,90)
    assign out_unnamed_if_loop_311_if_loop_3_avm_writedata = bb_if_loop_3_B3_out_unnamed_if_loop_311_if_loop_3_avm_writedata;

    // out_unnamed_if_loop_312_if_loop_3_avm_address(GPOUT,91)
    assign out_unnamed_if_loop_312_if_loop_3_avm_address = bb_if_loop_3_B3_out_unnamed_if_loop_312_if_loop_3_avm_address;

    // out_unnamed_if_loop_312_if_loop_3_avm_burstcount(GPOUT,92)
    assign out_unnamed_if_loop_312_if_loop_3_avm_burstcount = bb_if_loop_3_B3_out_unnamed_if_loop_312_if_loop_3_avm_burstcount;

    // out_unnamed_if_loop_312_if_loop_3_avm_byteenable(GPOUT,93)
    assign out_unnamed_if_loop_312_if_loop_3_avm_byteenable = bb_if_loop_3_B3_out_unnamed_if_loop_312_if_loop_3_avm_byteenable;

    // out_unnamed_if_loop_312_if_loop_3_avm_enable(GPOUT,94)
    assign out_unnamed_if_loop_312_if_loop_3_avm_enable = bb_if_loop_3_B3_out_unnamed_if_loop_312_if_loop_3_avm_enable;

    // out_unnamed_if_loop_312_if_loop_3_avm_read(GPOUT,95)
    assign out_unnamed_if_loop_312_if_loop_3_avm_read = bb_if_loop_3_B3_out_unnamed_if_loop_312_if_loop_3_avm_read;

    // out_unnamed_if_loop_312_if_loop_3_avm_write(GPOUT,96)
    assign out_unnamed_if_loop_312_if_loop_3_avm_write = bb_if_loop_3_B3_out_unnamed_if_loop_312_if_loop_3_avm_write;

    // out_unnamed_if_loop_312_if_loop_3_avm_writedata(GPOUT,97)
    assign out_unnamed_if_loop_312_if_loop_3_avm_writedata = bb_if_loop_3_B3_out_unnamed_if_loop_312_if_loop_3_avm_writedata;

    // out_valid_out(GPOUT,98)
    assign out_valid_out = bb_if_loop_3_B5_out_valid_out_0;

    // rst_sync(RESETSYNC,99)
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
