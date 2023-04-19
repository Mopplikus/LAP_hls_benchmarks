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

// SystemVerilog created from if_loop_1_function
// Created for function/kernel if_loop_1
// SystemVerilog created on Tue Apr 18 14:38:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module if_loop_1_function (
    input wire [63:0] in_arg_a,
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_return,
    input wire [127:0] in_iord_bl_call_if_loop_1_i_fifodata,
    input wire [0:0] in_iord_bl_call_if_loop_1_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_if_loop_1_i_fifoready,
    input wire [31:0] in_lm1_if_loop_1_avm_readdata,
    input wire [0:0] in_lm1_if_loop_1_avm_readdatavalid,
    input wire [0:0] in_lm1_if_loop_1_avm_waitrequest,
    input wire [0:0] in_lm1_if_loop_1_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_if_loop_1_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_if_loop_1_o_fifoready,
    output wire [31:0] out_iowr_bl_return_if_loop_1_o_fifodata,
    output wire [0:0] out_iowr_bl_return_if_loop_1_o_fifovalid,
    output wire [31:0] out_lm1_if_loop_1_avm_address,
    output wire [0:0] out_lm1_if_loop_1_avm_burstcount,
    output wire [3:0] out_lm1_if_loop_1_avm_byteenable,
    output wire [0:0] out_lm1_if_loop_1_avm_enable,
    output wire [0:0] out_lm1_if_loop_1_avm_read,
    output wire [0:0] out_lm1_if_loop_1_avm_write,
    output wire [31:0] out_lm1_if_loop_1_avm_writedata,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_if_loop_1_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_if_loop_1_B1_start_out_feedback_stall_out_1;
    wire [0:0] bb_if_loop_1_B1_start_out_intel_reserved_ffwd_0_0;
    wire [32:0] bb_if_loop_1_B1_start_out_intel_reserved_ffwd_1_0;
    wire [0:0] bb_if_loop_1_B1_start_out_iord_bl_call_if_loop_1_o_fifoalmost_full;
    wire [0:0] bb_if_loop_1_B1_start_out_iord_bl_call_if_loop_1_o_fifoready;
    wire [0:0] bb_if_loop_1_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_if_loop_1_B1_start_out_stall_out_0;
    wire [0:0] bb_if_loop_1_B1_start_out_valid_in_0;
    wire [0:0] bb_if_loop_1_B1_start_out_valid_in_1;
    wire [0:0] bb_if_loop_1_B1_start_out_valid_out_0;
    wire [0:0] bb_if_loop_1_B2_out_exiting_stall_out;
    wire [0:0] bb_if_loop_1_B2_out_exiting_valid_out;
    wire [31:0] bb_if_loop_1_B2_out_intel_reserved_ffwd_2_0;
    wire [31:0] bb_if_loop_1_B2_out_lm1_if_loop_1_avm_address;
    wire [0:0] bb_if_loop_1_B2_out_lm1_if_loop_1_avm_burstcount;
    wire [3:0] bb_if_loop_1_B2_out_lm1_if_loop_1_avm_byteenable;
    wire [0:0] bb_if_loop_1_B2_out_lm1_if_loop_1_avm_enable;
    wire [0:0] bb_if_loop_1_B2_out_lm1_if_loop_1_avm_read;
    wire [0:0] bb_if_loop_1_B2_out_lm1_if_loop_1_avm_write;
    wire [31:0] bb_if_loop_1_B2_out_lm1_if_loop_1_avm_writedata;
    wire [0:0] bb_if_loop_1_B2_out_pipeline_valid_out;
    wire [0:0] bb_if_loop_1_B2_out_stall_in_0;
    wire [0:0] bb_if_loop_1_B2_out_stall_out_0;
    wire [0:0] bb_if_loop_1_B2_out_stall_out_1;
    wire [0:0] bb_if_loop_1_B2_out_valid_in_0;
    wire [0:0] bb_if_loop_1_B2_out_valid_in_1;
    wire [0:0] bb_if_loop_1_B2_out_valid_out_0;
    wire [0:0] bb_if_loop_1_B3_out_feedback_out_1;
    wire [0:0] bb_if_loop_1_B3_out_feedback_valid_out_1;
    wire [31:0] bb_if_loop_1_B3_out_iowr_bl_return_if_loop_1_o_fifodata;
    wire [0:0] bb_if_loop_1_B3_out_iowr_bl_return_if_loop_1_o_fifovalid;
    wire [0:0] bb_if_loop_1_B3_out_stall_in_0;
    wire [0:0] bb_if_loop_1_B3_out_stall_out_0;
    wire [0:0] bb_if_loop_1_B3_out_valid_out_0;
    wire [1:0] c_i2_011_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going10_if_loop_11_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going10_if_loop_11_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going10_if_loop_11_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going10_if_loop_11_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_16_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_16_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_16_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_16_valid_fifo_out_valid_out;
    wire [0:0] if_loop_1_B1_start_x_i_capture;
    wire if_loop_1_B1_start_x_i_capture_bitsignaltemp;
    wire [0:0] if_loop_1_B1_start_x_i_clear;
    wire if_loop_1_B1_start_x_i_clear_bitsignaltemp;
    wire [0:0] if_loop_1_B1_start_x_i_enable;
    wire if_loop_1_B1_start_x_i_enable_bitsignaltemp;
    wire [0:0] if_loop_1_B1_start_x_i_shift;
    wire if_loop_1_B1_start_x_i_shift_bitsignaltemp;
    wire [0:0] if_loop_1_B1_start_x_i_stall_pred;
    wire if_loop_1_B1_start_x_i_stall_pred_bitsignaltemp;
    wire [0:0] if_loop_1_B1_start_x_i_stall_succ;
    wire if_loop_1_B1_start_x_i_stall_succ_bitsignaltemp;
    wire [0:0] if_loop_1_B1_start_x_i_valid_loop;
    wire if_loop_1_B1_start_x_i_valid_loop_bitsignaltemp;
    wire [0:0] if_loop_1_B1_start_x_i_valid_pred;
    wire if_loop_1_B1_start_x_i_valid_pred_bitsignaltemp;
    wire [0:0] if_loop_1_B1_start_x_i_valid_succ;
    wire if_loop_1_B1_start_x_i_valid_succ_bitsignaltemp;
    wire [0:0] if_loop_1_B2_x_i_capture;
    wire if_loop_1_B2_x_i_capture_bitsignaltemp;
    wire [0:0] if_loop_1_B2_x_i_clear;
    wire if_loop_1_B2_x_i_clear_bitsignaltemp;
    wire [0:0] if_loop_1_B2_x_i_enable;
    wire if_loop_1_B2_x_i_enable_bitsignaltemp;
    wire [0:0] if_loop_1_B2_x_i_shift;
    wire if_loop_1_B2_x_i_shift_bitsignaltemp;
    wire [0:0] if_loop_1_B2_x_i_stall_pred;
    wire if_loop_1_B2_x_i_stall_pred_bitsignaltemp;
    wire [0:0] if_loop_1_B2_x_i_stall_succ;
    wire if_loop_1_B2_x_i_stall_succ_bitsignaltemp;
    wire [0:0] if_loop_1_B2_x_i_valid_loop;
    wire if_loop_1_B2_x_i_valid_loop_bitsignaltemp;
    wire [0:0] if_loop_1_B2_x_i_valid_pred;
    wire if_loop_1_B2_x_i_valid_pred_bitsignaltemp;
    wire [0:0] if_loop_1_B2_x_i_valid_succ;
    wire if_loop_1_B2_x_i_valid_succ_bitsignaltemp;
    wire [0:0] loop_limiter_if_loop_10_out_o_stall;
    wire [0:0] loop_limiter_if_loop_10_out_o_valid;
    wire [0:0] bb_if_loop_1_B2_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_if_loop_1_B2_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_if_loop_1_B2_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_if_loop_1_B3_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_if_loop_1_B3_sr_0_aunroll_x_out_o_valid;


    // c_i2_011(CONSTANT,18)
    assign c_i2_011_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going10_if_loop_11_valid_fifo(BLACKBOX,22)
    if_loop_1_i_llvm_fpga_pipeline_keep_going10_1_valid_fifo thei_llvm_fpga_pipeline_keep_going10_if_loop_11_valid_fifo (
        .in_data_in(c_i2_011_q),
        .in_stall_in(bb_if_loop_1_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going10_if_loop_11_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going10_if_loop_11_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going10_if_loop_11_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_if_loop_16_valid_fifo(BLACKBOX,24)
    if_loop_1_i_llvm_fpga_pipeline_keep_going_6_valid_fifo thei_llvm_fpga_pipeline_keep_going_if_loop_16_valid_fifo (
        .in_data_in(c_i2_011_q),
        .in_stall_in(bb_if_loop_1_B2_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_if_loop_16_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_if_loop_16_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_if_loop_16_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_if_loop_1_B3_sr_0_aunroll_x(BLACKBOX,55)
    if_loop_1_bb_B3_sr_0 thebb_if_loop_1_B3_sr_0_aunroll_x (
        .in_i_stall(bb_if_loop_1_B3_out_stall_out_0),
        .in_i_valid(bb_if_loop_1_B2_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_if_loop_1_B3_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_if_loop_1_B3_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_if_loop_16_sr(BLACKBOX,23)
    if_loop_1_i_llvm_fpga_pipeline_keep_going_6_sr thei_llvm_fpga_pipeline_keep_going_if_loop_16_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_if_loop_16_valid_fifo_out_stall_out),
        .in_i_valid(bb_if_loop_1_B2_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_if_loop_16_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_if_loop_16_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_if_loop_1_B2(BLACKBOX,4)
    if_loop_1_bb_B2 thebb_if_loop_1_B2 (
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_if_loop_1_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_0_0(bb_if_loop_1_B1_start_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(bb_if_loop_1_B1_start_out_intel_reserved_ffwd_1_0),
        .in_lm1_if_loop_1_avm_readdata(in_lm1_if_loop_1_avm_readdata),
        .in_lm1_if_loop_1_avm_readdatavalid(in_lm1_if_loop_1_avm_readdatavalid),
        .in_lm1_if_loop_1_avm_waitrequest(in_lm1_if_loop_1_avm_waitrequest),
        .in_lm1_if_loop_1_avm_writeack(in_lm1_if_loop_1_avm_writeack),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_if_loop_16_sr_out_o_stall),
        .in_stall_in_0(bb_if_loop_1_B3_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_if_loop_16_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_if_loop_1_B2_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(bb_if_loop_1_B2_out_exiting_stall_out),
        .out_exiting_valid_out(bb_if_loop_1_B2_out_exiting_valid_out),
        .out_intel_reserved_ffwd_2_0(bb_if_loop_1_B2_out_intel_reserved_ffwd_2_0),
        .out_lm1_if_loop_1_avm_address(bb_if_loop_1_B2_out_lm1_if_loop_1_avm_address),
        .out_lm1_if_loop_1_avm_burstcount(bb_if_loop_1_B2_out_lm1_if_loop_1_avm_burstcount),
        .out_lm1_if_loop_1_avm_byteenable(bb_if_loop_1_B2_out_lm1_if_loop_1_avm_byteenable),
        .out_lm1_if_loop_1_avm_enable(bb_if_loop_1_B2_out_lm1_if_loop_1_avm_enable),
        .out_lm1_if_loop_1_avm_read(bb_if_loop_1_B2_out_lm1_if_loop_1_avm_read),
        .out_lm1_if_loop_1_avm_write(bb_if_loop_1_B2_out_lm1_if_loop_1_avm_write),
        .out_lm1_if_loop_1_avm_writedata(bb_if_loop_1_B2_out_lm1_if_loop_1_avm_writedata),
        .out_pipeline_valid_out(bb_if_loop_1_B2_out_pipeline_valid_out),
        .out_stall_in_0(bb_if_loop_1_B2_out_stall_in_0),
        .out_stall_out_0(bb_if_loop_1_B2_out_stall_out_0),
        .out_stall_out_1(bb_if_loop_1_B2_out_stall_out_1),
        .out_valid_in_0(bb_if_loop_1_B2_out_valid_in_0),
        .out_valid_in_1(bb_if_loop_1_B2_out_valid_in_1),
        .out_valid_out_0(bb_if_loop_1_B2_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_if_loop_1_B2_sr_1_aunroll_x(BLACKBOX,54)
    if_loop_1_bb_B2_sr_1 thebb_if_loop_1_B2_sr_1_aunroll_x (
        .in_i_stall(bb_if_loop_1_B2_out_stall_out_1),
        .in_i_valid(loop_limiter_if_loop_10_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_if_loop_1_B2_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_if_loop_1_B2_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_if_loop_1_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_if_loop_10(BLACKBOX,40)
    if_loop_1_loop_limiter_0 theloop_limiter_if_loop_10 (
        .in_i_stall(bb_if_loop_1_B2_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_if_loop_1_B2_out_exiting_stall_out),
        .in_i_valid(bb_if_loop_1_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_if_loop_1_B2_out_exiting_valid_out),
        .out_o_stall(loop_limiter_if_loop_10_out_o_stall),
        .out_o_valid(loop_limiter_if_loop_10_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going10_if_loop_11_sr(BLACKBOX,21)
    if_loop_1_i_llvm_fpga_pipeline_keep_going10_1_sr thei_llvm_fpga_pipeline_keep_going10_if_loop_11_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going10_if_loop_11_valid_fifo_out_stall_out),
        .in_i_valid(bb_if_loop_1_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going10_if_loop_11_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going10_if_loop_11_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_if_loop_1_B1_start(BLACKBOX,3)
    if_loop_1_bb_B1_start thebb_if_loop_1_B1_start (
        .in_feedback_in_1(bb_if_loop_1_B3_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_if_loop_1_B3_out_feedback_valid_out_1),
        .in_iord_bl_call_if_loop_1_i_fifodata(in_iord_bl_call_if_loop_1_i_fifodata),
        .in_iord_bl_call_if_loop_1_i_fifovalid(in_iord_bl_call_if_loop_1_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going10_if_loop_11_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_if_loop_10_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going10_if_loop_11_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_if_loop_1_B1_start_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_if_loop_1_B1_start_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_if_loop_1_B1_start_out_intel_reserved_ffwd_1_0),
        .out_iord_bl_call_if_loop_1_o_fifoalmost_full(bb_if_loop_1_B1_start_out_iord_bl_call_if_loop_1_o_fifoalmost_full),
        .out_iord_bl_call_if_loop_1_o_fifoready(bb_if_loop_1_B1_start_out_iord_bl_call_if_loop_1_o_fifoready),
        .out_pipeline_valid_out(bb_if_loop_1_B1_start_out_pipeline_valid_out),
        .out_stall_out_0(bb_if_loop_1_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_in_0(bb_if_loop_1_B1_start_out_valid_in_0),
        .out_valid_in_1(bb_if_loop_1_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_if_loop_1_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_if_loop_1_B3(BLACKBOX,5)
    if_loop_1_bb_B3 thebb_if_loop_1_B3 (
        .in_feedback_stall_in_1(bb_if_loop_1_B1_start_out_feedback_stall_out_1),
        .in_intel_reserved_ffwd_0_0(bb_if_loop_1_B1_start_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_2_0(bb_if_loop_1_B2_out_intel_reserved_ffwd_2_0),
        .in_iowr_bl_return_if_loop_1_i_fifoready(in_iowr_bl_return_if_loop_1_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_if_loop_1_B3_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_if_loop_1_B3_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_if_loop_1_B3_out_feedback_valid_out_1),
        .out_iowr_bl_return_if_loop_1_o_fifodata(bb_if_loop_1_B3_out_iowr_bl_return_if_loop_1_o_fifodata),
        .out_iowr_bl_return_if_loop_1_o_fifovalid(bb_if_loop_1_B3_out_iowr_bl_return_if_loop_1_o_fifovalid),
        .out_stall_in_0(bb_if_loop_1_B3_out_stall_in_0),
        .out_stall_out_0(bb_if_loop_1_B3_out_stall_out_0),
        .out_valid_out_0(bb_if_loop_1_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // if_loop_1_B1_start_x(EXTIFACE,25)
    assign if_loop_1_B1_start_x_i_capture = GND_q;
    assign if_loop_1_B1_start_x_i_clear = GND_q;
    assign if_loop_1_B1_start_x_i_enable = VCC_q;
    assign if_loop_1_B1_start_x_i_shift = GND_q;
    assign if_loop_1_B1_start_x_i_stall_pred = GND_q;
    assign if_loop_1_B1_start_x_i_stall_succ = bb_if_loop_1_B3_out_stall_in_0;
    assign if_loop_1_B1_start_x_i_valid_loop = bb_if_loop_1_B1_start_out_valid_in_0;
    assign if_loop_1_B1_start_x_i_valid_pred = bb_if_loop_1_B1_start_out_valid_in_1;
    assign if_loop_1_B1_start_x_i_valid_succ = bb_if_loop_1_B3_out_valid_out_0;
    assign if_loop_1_B1_start_x_i_capture_bitsignaltemp = if_loop_1_B1_start_x_i_capture[0];
    assign if_loop_1_B1_start_x_i_clear_bitsignaltemp = if_loop_1_B1_start_x_i_clear[0];
    assign if_loop_1_B1_start_x_i_enable_bitsignaltemp = if_loop_1_B1_start_x_i_enable[0];
    assign if_loop_1_B1_start_x_i_shift_bitsignaltemp = if_loop_1_B1_start_x_i_shift[0];
    assign if_loop_1_B1_start_x_i_stall_pred_bitsignaltemp = if_loop_1_B1_start_x_i_stall_pred[0];
    assign if_loop_1_B1_start_x_i_stall_succ_bitsignaltemp = if_loop_1_B1_start_x_i_stall_succ[0];
    assign if_loop_1_B1_start_x_i_valid_loop_bitsignaltemp = if_loop_1_B1_start_x_i_valid_loop[0];
    assign if_loop_1_B1_start_x_i_valid_pred_bitsignaltemp = if_loop_1_B1_start_x_i_valid_pred[0];
    assign if_loop_1_B1_start_x_i_valid_succ_bitsignaltemp = if_loop_1_B1_start_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("if_loop_1.B1.start")
    ) theif_loop_1_B1_start_x (
        .i_capture(if_loop_1_B1_start_x_i_capture_bitsignaltemp),
        .i_clear(if_loop_1_B1_start_x_i_clear_bitsignaltemp),
        .i_enable(if_loop_1_B1_start_x_i_enable_bitsignaltemp),
        .i_shift(if_loop_1_B1_start_x_i_shift_bitsignaltemp),
        .i_stall_pred(if_loop_1_B1_start_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(if_loop_1_B1_start_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(if_loop_1_B1_start_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(if_loop_1_B1_start_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(if_loop_1_B1_start_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // if_loop_1_B2_x(EXTIFACE,26)
    assign if_loop_1_B2_x_i_capture = GND_q;
    assign if_loop_1_B2_x_i_clear = GND_q;
    assign if_loop_1_B2_x_i_enable = VCC_q;
    assign if_loop_1_B2_x_i_shift = GND_q;
    assign if_loop_1_B2_x_i_stall_pred = loop_limiter_if_loop_10_out_o_stall;
    assign if_loop_1_B2_x_i_stall_succ = bb_if_loop_1_B2_out_stall_in_0;
    assign if_loop_1_B2_x_i_valid_loop = bb_if_loop_1_B2_out_valid_in_0;
    assign if_loop_1_B2_x_i_valid_pred = bb_if_loop_1_B2_out_valid_in_1;
    assign if_loop_1_B2_x_i_valid_succ = bb_if_loop_1_B2_out_valid_out_0;
    assign if_loop_1_B2_x_i_capture_bitsignaltemp = if_loop_1_B2_x_i_capture[0];
    assign if_loop_1_B2_x_i_clear_bitsignaltemp = if_loop_1_B2_x_i_clear[0];
    assign if_loop_1_B2_x_i_enable_bitsignaltemp = if_loop_1_B2_x_i_enable[0];
    assign if_loop_1_B2_x_i_shift_bitsignaltemp = if_loop_1_B2_x_i_shift[0];
    assign if_loop_1_B2_x_i_stall_pred_bitsignaltemp = if_loop_1_B2_x_i_stall_pred[0];
    assign if_loop_1_B2_x_i_stall_succ_bitsignaltemp = if_loop_1_B2_x_i_stall_succ[0];
    assign if_loop_1_B2_x_i_valid_loop_bitsignaltemp = if_loop_1_B2_x_i_valid_loop[0];
    assign if_loop_1_B2_x_i_valid_pred_bitsignaltemp = if_loop_1_B2_x_i_valid_pred[0];
    assign if_loop_1_B2_x_i_valid_succ_bitsignaltemp = if_loop_1_B2_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("if_loop_1.B2")
    ) theif_loop_1_B2_x (
        .i_capture(if_loop_1_B2_x_i_capture_bitsignaltemp),
        .i_clear(if_loop_1_B2_x_i_clear_bitsignaltemp),
        .i_enable(if_loop_1_B2_x_i_enable_bitsignaltemp),
        .i_shift(if_loop_1_B2_x_i_shift_bitsignaltemp),
        .i_stall_pred(if_loop_1_B2_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(if_loop_1_B2_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(if_loop_1_B2_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(if_loop_1_B2_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(if_loop_1_B2_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_if_loop_1_o_fifoalmost_full(GPOUT,41)
    assign out_iord_bl_call_if_loop_1_o_fifoalmost_full = bb_if_loop_1_B1_start_out_iord_bl_call_if_loop_1_o_fifoalmost_full;

    // out_iord_bl_call_if_loop_1_o_fifoready(GPOUT,42)
    assign out_iord_bl_call_if_loop_1_o_fifoready = bb_if_loop_1_B1_start_out_iord_bl_call_if_loop_1_o_fifoready;

    // out_iowr_bl_return_if_loop_1_o_fifodata(GPOUT,43)
    assign out_iowr_bl_return_if_loop_1_o_fifodata = bb_if_loop_1_B3_out_iowr_bl_return_if_loop_1_o_fifodata;

    // out_iowr_bl_return_if_loop_1_o_fifovalid(GPOUT,44)
    assign out_iowr_bl_return_if_loop_1_o_fifovalid = bb_if_loop_1_B3_out_iowr_bl_return_if_loop_1_o_fifovalid;

    // out_lm1_if_loop_1_avm_address(GPOUT,45)
    assign out_lm1_if_loop_1_avm_address = bb_if_loop_1_B2_out_lm1_if_loop_1_avm_address;

    // out_lm1_if_loop_1_avm_burstcount(GPOUT,46)
    assign out_lm1_if_loop_1_avm_burstcount = bb_if_loop_1_B2_out_lm1_if_loop_1_avm_burstcount;

    // out_lm1_if_loop_1_avm_byteenable(GPOUT,47)
    assign out_lm1_if_loop_1_avm_byteenable = bb_if_loop_1_B2_out_lm1_if_loop_1_avm_byteenable;

    // out_lm1_if_loop_1_avm_enable(GPOUT,48)
    assign out_lm1_if_loop_1_avm_enable = bb_if_loop_1_B2_out_lm1_if_loop_1_avm_enable;

    // out_lm1_if_loop_1_avm_read(GPOUT,49)
    assign out_lm1_if_loop_1_avm_read = bb_if_loop_1_B2_out_lm1_if_loop_1_avm_read;

    // out_lm1_if_loop_1_avm_write(GPOUT,50)
    assign out_lm1_if_loop_1_avm_write = bb_if_loop_1_B2_out_lm1_if_loop_1_avm_write;

    // out_lm1_if_loop_1_avm_writedata(GPOUT,51)
    assign out_lm1_if_loop_1_avm_writedata = bb_if_loop_1_B2_out_lm1_if_loop_1_avm_writedata;

    // bb_if_loop_1_B0_runOnce(BLACKBOX,2)
    if_loop_1_bb_B0_runOnce thebb_if_loop_1_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_if_loop_1_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,52)
    assign out_stall_out = bb_if_loop_1_B0_runOnce_out_stall_out_0;

    // out_valid_out(GPOUT,53)
    assign out_valid_out = GND_q;

endmodule
