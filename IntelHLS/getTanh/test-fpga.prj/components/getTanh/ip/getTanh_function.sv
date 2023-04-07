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

// SystemVerilog created from getTanh_function
// Created for function/kernel getTanh
// SystemVerilog created on Fri Apr  7 17:19:40 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module getTanh_function (
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_return,
    input wire [0:0] in_iord_bl_call_getTanh_i_fifodata,
    input wire [0:0] in_iord_bl_call_getTanh_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_getTanh_i_fifoready,
    input wire [31:0] in_memdep_getTanh_avm_readdata,
    input wire [0:0] in_memdep_getTanh_avm_readdatavalid,
    input wire [0:0] in_memdep_getTanh_avm_waitrequest,
    input wire [0:0] in_memdep_getTanh_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [31:0] in_unnamed_getTanh4_getTanh_avm_readdata,
    input wire [0:0] in_unnamed_getTanh4_getTanh_avm_readdatavalid,
    input wire [0:0] in_unnamed_getTanh4_getTanh_avm_waitrequest,
    input wire [0:0] in_unnamed_getTanh4_getTanh_avm_writeack,
    input wire [31:0] in_unnamed_getTanh5_getTanh_avm_readdata,
    input wire [0:0] in_unnamed_getTanh5_getTanh_avm_readdatavalid,
    input wire [0:0] in_unnamed_getTanh5_getTanh_avm_waitrequest,
    input wire [0:0] in_unnamed_getTanh5_getTanh_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_getTanh_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_getTanh_o_fifoready,
    output wire [31:0] out_iowr_bl_return_getTanh_o_fifodata,
    output wire [0:0] out_iowr_bl_return_getTanh_o_fifovalid,
    output wire [31:0] out_memdep_getTanh_avm_address,
    output wire [0:0] out_memdep_getTanh_avm_burstcount,
    output wire [3:0] out_memdep_getTanh_avm_byteenable,
    output wire [0:0] out_memdep_getTanh_avm_enable,
    output wire [0:0] out_memdep_getTanh_avm_read,
    output wire [0:0] out_memdep_getTanh_avm_write,
    output wire [31:0] out_memdep_getTanh_avm_writedata,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_getTanh4_getTanh_avm_address,
    output wire [0:0] out_unnamed_getTanh4_getTanh_avm_burstcount,
    output wire [3:0] out_unnamed_getTanh4_getTanh_avm_byteenable,
    output wire [0:0] out_unnamed_getTanh4_getTanh_avm_enable,
    output wire [0:0] out_unnamed_getTanh4_getTanh_avm_read,
    output wire [0:0] out_unnamed_getTanh4_getTanh_avm_write,
    output wire [31:0] out_unnamed_getTanh4_getTanh_avm_writedata,
    output wire [31:0] out_unnamed_getTanh5_getTanh_avm_address,
    output wire [0:0] out_unnamed_getTanh5_getTanh_avm_burstcount,
    output wire [3:0] out_unnamed_getTanh5_getTanh_avm_byteenable,
    output wire [0:0] out_unnamed_getTanh5_getTanh_avm_enable,
    output wire [0:0] out_unnamed_getTanh5_getTanh_avm_read,
    output wire [0:0] out_unnamed_getTanh5_getTanh_avm_write,
    output wire [31:0] out_unnamed_getTanh5_getTanh_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_getTanh_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_getTanh_B1_start_out_feedback_stall_out_1;
    wire [0:0] bb_getTanh_B1_start_out_iord_bl_call_getTanh_o_fifoalmost_full;
    wire [0:0] bb_getTanh_B1_start_out_iord_bl_call_getTanh_o_fifoready;
    wire [0:0] bb_getTanh_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_getTanh_B1_start_out_stall_out_0;
    wire [0:0] bb_getTanh_B1_start_out_valid_in_0;
    wire [0:0] bb_getTanh_B1_start_out_valid_in_1;
    wire [0:0] bb_getTanh_B1_start_out_valid_out_0;
    wire [0:0] bb_getTanh_B2_out_feedback_out_1;
    wire [0:0] bb_getTanh_B2_out_feedback_valid_out_1;
    wire [31:0] bb_getTanh_B2_out_iowr_bl_return_getTanh_o_fifodata;
    wire [0:0] bb_getTanh_B2_out_iowr_bl_return_getTanh_o_fifovalid;
    wire [0:0] bb_getTanh_B2_out_stall_in_0;
    wire [0:0] bb_getTanh_B2_out_stall_out_0;
    wire [0:0] bb_getTanh_B2_out_valid_out_0;
    wire [0:0] bb_getTanh_B3_out_exiting_stall_out;
    wire [0:0] bb_getTanh_B3_out_exiting_valid_out;
    wire [31:0] bb_getTanh_B3_out_intel_reserved_ffwd_0_0;
    wire [31:0] bb_getTanh_B3_out_memdep_getTanh_avm_address;
    wire [0:0] bb_getTanh_B3_out_memdep_getTanh_avm_burstcount;
    wire [3:0] bb_getTanh_B3_out_memdep_getTanh_avm_byteenable;
    wire [0:0] bb_getTanh_B3_out_memdep_getTanh_avm_enable;
    wire [0:0] bb_getTanh_B3_out_memdep_getTanh_avm_read;
    wire [0:0] bb_getTanh_B3_out_memdep_getTanh_avm_write;
    wire [31:0] bb_getTanh_B3_out_memdep_getTanh_avm_writedata;
    wire [0:0] bb_getTanh_B3_out_pipeline_valid_out;
    wire [0:0] bb_getTanh_B3_out_stall_in_0;
    wire [0:0] bb_getTanh_B3_out_stall_out_0;
    wire [0:0] bb_getTanh_B3_out_stall_out_1;
    wire [31:0] bb_getTanh_B3_out_unnamed_getTanh4_getTanh_avm_address;
    wire [0:0] bb_getTanh_B3_out_unnamed_getTanh4_getTanh_avm_burstcount;
    wire [3:0] bb_getTanh_B3_out_unnamed_getTanh4_getTanh_avm_byteenable;
    wire [0:0] bb_getTanh_B3_out_unnamed_getTanh4_getTanh_avm_enable;
    wire [0:0] bb_getTanh_B3_out_unnamed_getTanh4_getTanh_avm_read;
    wire [0:0] bb_getTanh_B3_out_unnamed_getTanh4_getTanh_avm_write;
    wire [31:0] bb_getTanh_B3_out_unnamed_getTanh4_getTanh_avm_writedata;
    wire [31:0] bb_getTanh_B3_out_unnamed_getTanh5_getTanh_avm_address;
    wire [0:0] bb_getTanh_B3_out_unnamed_getTanh5_getTanh_avm_burstcount;
    wire [3:0] bb_getTanh_B3_out_unnamed_getTanh5_getTanh_avm_byteenable;
    wire [0:0] bb_getTanh_B3_out_unnamed_getTanh5_getTanh_avm_enable;
    wire [0:0] bb_getTanh_B3_out_unnamed_getTanh5_getTanh_avm_read;
    wire [0:0] bb_getTanh_B3_out_unnamed_getTanh5_getTanh_avm_write;
    wire [31:0] bb_getTanh_B3_out_unnamed_getTanh5_getTanh_avm_writedata;
    wire [0:0] bb_getTanh_B3_out_valid_in_0;
    wire [0:0] bb_getTanh_B3_out_valid_in_1;
    wire [0:0] bb_getTanh_B3_out_valid_out_0;
    wire [1:0] c_i2_010_q;
    wire [0:0] getTanh_B1_start_x_i_capture;
    wire getTanh_B1_start_x_i_capture_bitsignaltemp;
    wire [0:0] getTanh_B1_start_x_i_clear;
    wire getTanh_B1_start_x_i_clear_bitsignaltemp;
    wire [0:0] getTanh_B1_start_x_i_enable;
    wire getTanh_B1_start_x_i_enable_bitsignaltemp;
    wire [0:0] getTanh_B1_start_x_i_shift;
    wire getTanh_B1_start_x_i_shift_bitsignaltemp;
    wire [0:0] getTanh_B1_start_x_i_stall_pred;
    wire getTanh_B1_start_x_i_stall_pred_bitsignaltemp;
    wire [0:0] getTanh_B1_start_x_i_stall_succ;
    wire getTanh_B1_start_x_i_stall_succ_bitsignaltemp;
    wire [0:0] getTanh_B1_start_x_i_valid_loop;
    wire getTanh_B1_start_x_i_valid_loop_bitsignaltemp;
    wire [0:0] getTanh_B1_start_x_i_valid_pred;
    wire getTanh_B1_start_x_i_valid_pred_bitsignaltemp;
    wire [0:0] getTanh_B1_start_x_i_valid_succ;
    wire getTanh_B1_start_x_i_valid_succ_bitsignaltemp;
    wire [0:0] getTanh_B3_x_i_capture;
    wire getTanh_B3_x_i_capture_bitsignaltemp;
    wire [0:0] getTanh_B3_x_i_clear;
    wire getTanh_B3_x_i_clear_bitsignaltemp;
    wire [0:0] getTanh_B3_x_i_enable;
    wire getTanh_B3_x_i_enable_bitsignaltemp;
    wire [0:0] getTanh_B3_x_i_shift;
    wire getTanh_B3_x_i_shift_bitsignaltemp;
    wire [0:0] getTanh_B3_x_i_stall_pred;
    wire getTanh_B3_x_i_stall_pred_bitsignaltemp;
    wire [0:0] getTanh_B3_x_i_stall_succ;
    wire getTanh_B3_x_i_stall_succ_bitsignaltemp;
    wire [0:0] getTanh_B3_x_i_valid_loop;
    wire getTanh_B3_x_i_valid_loop_bitsignaltemp;
    wire [0:0] getTanh_B3_x_i_valid_pred;
    wire getTanh_B3_x_i_valid_pred_bitsignaltemp;
    wire [0:0] getTanh_B3_x_i_valid_succ;
    wire getTanh_B3_x_i_valid_succ_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pipeline_keep_going4_gettanh1_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going4_gettanh1_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going4_gettanh1_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going4_gettanh1_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gettanh6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gettanh6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gettanh6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gettanh6_valid_fifo_out_valid_out;
    wire [0:0] loop_limiter_getTanh0_out_o_stall;
    wire [0:0] loop_limiter_getTanh0_out_o_valid;
    wire [0:0] bb_getTanh_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_getTanh_B2_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_getTanh_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_getTanh_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_getTanh_B3_sr_1_aunroll_x_out_o_data_0_tpl;


    // c_i2_010(CONSTANT,18)
    assign c_i2_010_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going4_gettanh1_valid_fifo(BLACKBOX,24)
    getTanh_i_llvm_fpga_pipeline_keep_going4_gettanh1_valid_fifo thei_llvm_fpga_pipeline_keep_going4_gettanh1_valid_fifo (
        .in_data_in(c_i2_010_q),
        .in_stall_in(bb_getTanh_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going4_gettanh1_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going4_gettanh1_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going4_gettanh1_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_gettanh6_valid_fifo(BLACKBOX,26)
    getTanh_i_llvm_fpga_pipeline_keep_going_gettanh6_valid_fifo thei_llvm_fpga_pipeline_keep_going_gettanh6_valid_fifo (
        .in_data_in(c_i2_010_q),
        .in_stall_in(bb_getTanh_B3_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_gettanh6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_gettanh6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_gettanh6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_getTanh_B2_sr_0_aunroll_x(BLACKBOX,75)
    getTanh_bb_B2_sr_0 thebb_getTanh_B2_sr_0_aunroll_x (
        .in_i_stall(bb_getTanh_B2_out_stall_out_0),
        .in_i_valid(bb_getTanh_B3_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_getTanh_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_getTanh_B2_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_gettanh6_sr(BLACKBOX,25)
    getTanh_i_llvm_fpga_pipeline_keep_going_gettanh6_sr thei_llvm_fpga_pipeline_keep_going_gettanh6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_gettanh6_valid_fifo_out_stall_out),
        .in_i_valid(bb_getTanh_B3_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_gettanh6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_gettanh6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_getTanh_B3(BLACKBOX,5)
    getTanh_bb_B3 thebb_getTanh_B3 (
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_getTanh_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_memdep_getTanh_avm_readdata(in_memdep_getTanh_avm_readdata),
        .in_memdep_getTanh_avm_readdatavalid(in_memdep_getTanh_avm_readdatavalid),
        .in_memdep_getTanh_avm_waitrequest(in_memdep_getTanh_avm_waitrequest),
        .in_memdep_getTanh_avm_writeack(in_memdep_getTanh_avm_writeack),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_gettanh6_sr_out_o_stall),
        .in_stall_in_0(bb_getTanh_B2_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_getTanh4_getTanh_avm_readdata(in_unnamed_getTanh4_getTanh_avm_readdata),
        .in_unnamed_getTanh4_getTanh_avm_readdatavalid(in_unnamed_getTanh4_getTanh_avm_readdatavalid),
        .in_unnamed_getTanh4_getTanh_avm_waitrequest(in_unnamed_getTanh4_getTanh_avm_waitrequest),
        .in_unnamed_getTanh4_getTanh_avm_writeack(in_unnamed_getTanh4_getTanh_avm_writeack),
        .in_unnamed_getTanh5_getTanh_avm_readdata(in_unnamed_getTanh5_getTanh_avm_readdata),
        .in_unnamed_getTanh5_getTanh_avm_readdatavalid(in_unnamed_getTanh5_getTanh_avm_readdatavalid),
        .in_unnamed_getTanh5_getTanh_avm_waitrequest(in_unnamed_getTanh5_getTanh_avm_waitrequest),
        .in_unnamed_getTanh5_getTanh_avm_writeack(in_unnamed_getTanh5_getTanh_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_gettanh6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_getTanh_B3_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(bb_getTanh_B3_out_exiting_stall_out),
        .out_exiting_valid_out(bb_getTanh_B3_out_exiting_valid_out),
        .out_intel_reserved_ffwd_0_0(bb_getTanh_B3_out_intel_reserved_ffwd_0_0),
        .out_memdep_getTanh_avm_address(bb_getTanh_B3_out_memdep_getTanh_avm_address),
        .out_memdep_getTanh_avm_burstcount(bb_getTanh_B3_out_memdep_getTanh_avm_burstcount),
        .out_memdep_getTanh_avm_byteenable(bb_getTanh_B3_out_memdep_getTanh_avm_byteenable),
        .out_memdep_getTanh_avm_enable(bb_getTanh_B3_out_memdep_getTanh_avm_enable),
        .out_memdep_getTanh_avm_read(bb_getTanh_B3_out_memdep_getTanh_avm_read),
        .out_memdep_getTanh_avm_write(bb_getTanh_B3_out_memdep_getTanh_avm_write),
        .out_memdep_getTanh_avm_writedata(bb_getTanh_B3_out_memdep_getTanh_avm_writedata),
        .out_pipeline_valid_out(bb_getTanh_B3_out_pipeline_valid_out),
        .out_stall_in_0(bb_getTanh_B3_out_stall_in_0),
        .out_stall_out_0(bb_getTanh_B3_out_stall_out_0),
        .out_stall_out_1(bb_getTanh_B3_out_stall_out_1),
        .out_unnamed_getTanh4_getTanh_avm_address(bb_getTanh_B3_out_unnamed_getTanh4_getTanh_avm_address),
        .out_unnamed_getTanh4_getTanh_avm_burstcount(bb_getTanh_B3_out_unnamed_getTanh4_getTanh_avm_burstcount),
        .out_unnamed_getTanh4_getTanh_avm_byteenable(bb_getTanh_B3_out_unnamed_getTanh4_getTanh_avm_byteenable),
        .out_unnamed_getTanh4_getTanh_avm_enable(bb_getTanh_B3_out_unnamed_getTanh4_getTanh_avm_enable),
        .out_unnamed_getTanh4_getTanh_avm_read(bb_getTanh_B3_out_unnamed_getTanh4_getTanh_avm_read),
        .out_unnamed_getTanh4_getTanh_avm_write(bb_getTanh_B3_out_unnamed_getTanh4_getTanh_avm_write),
        .out_unnamed_getTanh4_getTanh_avm_writedata(bb_getTanh_B3_out_unnamed_getTanh4_getTanh_avm_writedata),
        .out_unnamed_getTanh5_getTanh_avm_address(bb_getTanh_B3_out_unnamed_getTanh5_getTanh_avm_address),
        .out_unnamed_getTanh5_getTanh_avm_burstcount(bb_getTanh_B3_out_unnamed_getTanh5_getTanh_avm_burstcount),
        .out_unnamed_getTanh5_getTanh_avm_byteenable(bb_getTanh_B3_out_unnamed_getTanh5_getTanh_avm_byteenable),
        .out_unnamed_getTanh5_getTanh_avm_enable(bb_getTanh_B3_out_unnamed_getTanh5_getTanh_avm_enable),
        .out_unnamed_getTanh5_getTanh_avm_read(bb_getTanh_B3_out_unnamed_getTanh5_getTanh_avm_read),
        .out_unnamed_getTanh5_getTanh_avm_write(bb_getTanh_B3_out_unnamed_getTanh5_getTanh_avm_write),
        .out_unnamed_getTanh5_getTanh_avm_writedata(bb_getTanh_B3_out_unnamed_getTanh5_getTanh_avm_writedata),
        .out_valid_in_0(bb_getTanh_B3_out_valid_in_0),
        .out_valid_in_1(bb_getTanh_B3_out_valid_in_1),
        .out_valid_out_0(bb_getTanh_B3_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_getTanh_B3_sr_1_aunroll_x(BLACKBOX,76)
    getTanh_bb_B3_sr_1 thebb_getTanh_B3_sr_1_aunroll_x (
        .in_i_stall(bb_getTanh_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_getTanh0_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_getTanh_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_getTanh_B3_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_getTanh_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_getTanh0(BLACKBOX,47)
    getTanh_loop_limiter_0 theloop_limiter_getTanh0 (
        .in_i_stall(bb_getTanh_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_getTanh_B3_out_exiting_stall_out),
        .in_i_valid(bb_getTanh_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_getTanh_B3_out_exiting_valid_out),
        .out_o_stall(loop_limiter_getTanh0_out_o_stall),
        .out_o_valid(loop_limiter_getTanh0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going4_gettanh1_sr(BLACKBOX,23)
    getTanh_i_llvm_fpga_pipeline_keep_going4_gettanh1_sr thei_llvm_fpga_pipeline_keep_going4_gettanh1_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going4_gettanh1_valid_fifo_out_stall_out),
        .in_i_valid(bb_getTanh_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going4_gettanh1_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going4_gettanh1_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_getTanh_B1_start(BLACKBOX,3)
    getTanh_bb_B1_start thebb_getTanh_B1_start (
        .in_feedback_in_1(bb_getTanh_B2_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_getTanh_B2_out_feedback_valid_out_1),
        .in_iord_bl_call_getTanh_i_fifodata(in_iord_bl_call_getTanh_i_fifodata),
        .in_iord_bl_call_getTanh_i_fifovalid(in_iord_bl_call_getTanh_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going4_gettanh1_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_getTanh0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going4_gettanh1_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_getTanh_B1_start_out_feedback_stall_out_1),
        .out_iord_bl_call_getTanh_o_fifoalmost_full(bb_getTanh_B1_start_out_iord_bl_call_getTanh_o_fifoalmost_full),
        .out_iord_bl_call_getTanh_o_fifoready(bb_getTanh_B1_start_out_iord_bl_call_getTanh_o_fifoready),
        .out_pipeline_valid_out(bb_getTanh_B1_start_out_pipeline_valid_out),
        .out_stall_out_0(bb_getTanh_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_in_0(bb_getTanh_B1_start_out_valid_in_0),
        .out_valid_in_1(bb_getTanh_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_getTanh_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_getTanh_B2(BLACKBOX,4)
    getTanh_bb_B2 thebb_getTanh_B2 (
        .in_feedback_stall_in_1(bb_getTanh_B1_start_out_feedback_stall_out_1),
        .in_intel_reserved_ffwd_0_0(bb_getTanh_B3_out_intel_reserved_ffwd_0_0),
        .in_iowr_bl_return_getTanh_i_fifoready(in_iowr_bl_return_getTanh_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_getTanh_B2_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_getTanh_B2_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_getTanh_B2_out_feedback_valid_out_1),
        .out_iowr_bl_return_getTanh_o_fifodata(bb_getTanh_B2_out_iowr_bl_return_getTanh_o_fifodata),
        .out_iowr_bl_return_getTanh_o_fifovalid(bb_getTanh_B2_out_iowr_bl_return_getTanh_o_fifovalid),
        .out_stall_in_0(bb_getTanh_B2_out_stall_in_0),
        .out_stall_out_0(bb_getTanh_B2_out_stall_out_0),
        .out_valid_out_0(bb_getTanh_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // getTanh_B1_start_x(EXTIFACE,21)
    assign getTanh_B1_start_x_i_capture = GND_q;
    assign getTanh_B1_start_x_i_clear = GND_q;
    assign getTanh_B1_start_x_i_enable = VCC_q;
    assign getTanh_B1_start_x_i_shift = GND_q;
    assign getTanh_B1_start_x_i_stall_pred = GND_q;
    assign getTanh_B1_start_x_i_stall_succ = bb_getTanh_B2_out_stall_in_0;
    assign getTanh_B1_start_x_i_valid_loop = bb_getTanh_B1_start_out_valid_in_0;
    assign getTanh_B1_start_x_i_valid_pred = bb_getTanh_B1_start_out_valid_in_1;
    assign getTanh_B1_start_x_i_valid_succ = bb_getTanh_B2_out_valid_out_0;
    assign getTanh_B1_start_x_i_capture_bitsignaltemp = getTanh_B1_start_x_i_capture[0];
    assign getTanh_B1_start_x_i_clear_bitsignaltemp = getTanh_B1_start_x_i_clear[0];
    assign getTanh_B1_start_x_i_enable_bitsignaltemp = getTanh_B1_start_x_i_enable[0];
    assign getTanh_B1_start_x_i_shift_bitsignaltemp = getTanh_B1_start_x_i_shift[0];
    assign getTanh_B1_start_x_i_stall_pred_bitsignaltemp = getTanh_B1_start_x_i_stall_pred[0];
    assign getTanh_B1_start_x_i_stall_succ_bitsignaltemp = getTanh_B1_start_x_i_stall_succ[0];
    assign getTanh_B1_start_x_i_valid_loop_bitsignaltemp = getTanh_B1_start_x_i_valid_loop[0];
    assign getTanh_B1_start_x_i_valid_pred_bitsignaltemp = getTanh_B1_start_x_i_valid_pred[0];
    assign getTanh_B1_start_x_i_valid_succ_bitsignaltemp = getTanh_B1_start_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("getTanh.B1.start")
    ) thegetTanh_B1_start_x (
        .i_capture(getTanh_B1_start_x_i_capture_bitsignaltemp),
        .i_clear(getTanh_B1_start_x_i_clear_bitsignaltemp),
        .i_enable(getTanh_B1_start_x_i_enable_bitsignaltemp),
        .i_shift(getTanh_B1_start_x_i_shift_bitsignaltemp),
        .i_stall_pred(getTanh_B1_start_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(getTanh_B1_start_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(getTanh_B1_start_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(getTanh_B1_start_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(getTanh_B1_start_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // getTanh_B3_x(EXTIFACE,22)
    assign getTanh_B3_x_i_capture = GND_q;
    assign getTanh_B3_x_i_clear = GND_q;
    assign getTanh_B3_x_i_enable = VCC_q;
    assign getTanh_B3_x_i_shift = GND_q;
    assign getTanh_B3_x_i_stall_pred = loop_limiter_getTanh0_out_o_stall;
    assign getTanh_B3_x_i_stall_succ = bb_getTanh_B3_out_stall_in_0;
    assign getTanh_B3_x_i_valid_loop = bb_getTanh_B3_out_valid_in_0;
    assign getTanh_B3_x_i_valid_pred = bb_getTanh_B3_out_valid_in_1;
    assign getTanh_B3_x_i_valid_succ = bb_getTanh_B3_out_valid_out_0;
    assign getTanh_B3_x_i_capture_bitsignaltemp = getTanh_B3_x_i_capture[0];
    assign getTanh_B3_x_i_clear_bitsignaltemp = getTanh_B3_x_i_clear[0];
    assign getTanh_B3_x_i_enable_bitsignaltemp = getTanh_B3_x_i_enable[0];
    assign getTanh_B3_x_i_shift_bitsignaltemp = getTanh_B3_x_i_shift[0];
    assign getTanh_B3_x_i_stall_pred_bitsignaltemp = getTanh_B3_x_i_stall_pred[0];
    assign getTanh_B3_x_i_stall_succ_bitsignaltemp = getTanh_B3_x_i_stall_succ[0];
    assign getTanh_B3_x_i_valid_loop_bitsignaltemp = getTanh_B3_x_i_valid_loop[0];
    assign getTanh_B3_x_i_valid_pred_bitsignaltemp = getTanh_B3_x_i_valid_pred[0];
    assign getTanh_B3_x_i_valid_succ_bitsignaltemp = getTanh_B3_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("getTanh.B3")
    ) thegetTanh_B3_x (
        .i_capture(getTanh_B3_x_i_capture_bitsignaltemp),
        .i_clear(getTanh_B3_x_i_clear_bitsignaltemp),
        .i_enable(getTanh_B3_x_i_enable_bitsignaltemp),
        .i_shift(getTanh_B3_x_i_shift_bitsignaltemp),
        .i_stall_pred(getTanh_B3_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(getTanh_B3_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(getTanh_B3_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(getTanh_B3_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(getTanh_B3_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_getTanh_o_fifoalmost_full(GPOUT,48)
    assign out_iord_bl_call_getTanh_o_fifoalmost_full = bb_getTanh_B1_start_out_iord_bl_call_getTanh_o_fifoalmost_full;

    // out_iord_bl_call_getTanh_o_fifoready(GPOUT,49)
    assign out_iord_bl_call_getTanh_o_fifoready = bb_getTanh_B1_start_out_iord_bl_call_getTanh_o_fifoready;

    // out_iowr_bl_return_getTanh_o_fifodata(GPOUT,50)
    assign out_iowr_bl_return_getTanh_o_fifodata = bb_getTanh_B2_out_iowr_bl_return_getTanh_o_fifodata;

    // out_iowr_bl_return_getTanh_o_fifovalid(GPOUT,51)
    assign out_iowr_bl_return_getTanh_o_fifovalid = bb_getTanh_B2_out_iowr_bl_return_getTanh_o_fifovalid;

    // out_memdep_getTanh_avm_address(GPOUT,52)
    assign out_memdep_getTanh_avm_address = bb_getTanh_B3_out_memdep_getTanh_avm_address;

    // out_memdep_getTanh_avm_burstcount(GPOUT,53)
    assign out_memdep_getTanh_avm_burstcount = bb_getTanh_B3_out_memdep_getTanh_avm_burstcount;

    // out_memdep_getTanh_avm_byteenable(GPOUT,54)
    assign out_memdep_getTanh_avm_byteenable = bb_getTanh_B3_out_memdep_getTanh_avm_byteenable;

    // out_memdep_getTanh_avm_enable(GPOUT,55)
    assign out_memdep_getTanh_avm_enable = bb_getTanh_B3_out_memdep_getTanh_avm_enable;

    // out_memdep_getTanh_avm_read(GPOUT,56)
    assign out_memdep_getTanh_avm_read = bb_getTanh_B3_out_memdep_getTanh_avm_read;

    // out_memdep_getTanh_avm_write(GPOUT,57)
    assign out_memdep_getTanh_avm_write = bb_getTanh_B3_out_memdep_getTanh_avm_write;

    // out_memdep_getTanh_avm_writedata(GPOUT,58)
    assign out_memdep_getTanh_avm_writedata = bb_getTanh_B3_out_memdep_getTanh_avm_writedata;

    // bb_getTanh_B0_runOnce(BLACKBOX,2)
    getTanh_bb_B0_runOnce thebb_getTanh_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_getTanh_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,59)
    assign out_stall_out = bb_getTanh_B0_runOnce_out_stall_out_0;

    // out_unnamed_getTanh4_getTanh_avm_address(GPOUT,60)
    assign out_unnamed_getTanh4_getTanh_avm_address = bb_getTanh_B3_out_unnamed_getTanh4_getTanh_avm_address;

    // out_unnamed_getTanh4_getTanh_avm_burstcount(GPOUT,61)
    assign out_unnamed_getTanh4_getTanh_avm_burstcount = bb_getTanh_B3_out_unnamed_getTanh4_getTanh_avm_burstcount;

    // out_unnamed_getTanh4_getTanh_avm_byteenable(GPOUT,62)
    assign out_unnamed_getTanh4_getTanh_avm_byteenable = bb_getTanh_B3_out_unnamed_getTanh4_getTanh_avm_byteenable;

    // out_unnamed_getTanh4_getTanh_avm_enable(GPOUT,63)
    assign out_unnamed_getTanh4_getTanh_avm_enable = bb_getTanh_B3_out_unnamed_getTanh4_getTanh_avm_enable;

    // out_unnamed_getTanh4_getTanh_avm_read(GPOUT,64)
    assign out_unnamed_getTanh4_getTanh_avm_read = bb_getTanh_B3_out_unnamed_getTanh4_getTanh_avm_read;

    // out_unnamed_getTanh4_getTanh_avm_write(GPOUT,65)
    assign out_unnamed_getTanh4_getTanh_avm_write = bb_getTanh_B3_out_unnamed_getTanh4_getTanh_avm_write;

    // out_unnamed_getTanh4_getTanh_avm_writedata(GPOUT,66)
    assign out_unnamed_getTanh4_getTanh_avm_writedata = bb_getTanh_B3_out_unnamed_getTanh4_getTanh_avm_writedata;

    // out_unnamed_getTanh5_getTanh_avm_address(GPOUT,67)
    assign out_unnamed_getTanh5_getTanh_avm_address = bb_getTanh_B3_out_unnamed_getTanh5_getTanh_avm_address;

    // out_unnamed_getTanh5_getTanh_avm_burstcount(GPOUT,68)
    assign out_unnamed_getTanh5_getTanh_avm_burstcount = bb_getTanh_B3_out_unnamed_getTanh5_getTanh_avm_burstcount;

    // out_unnamed_getTanh5_getTanh_avm_byteenable(GPOUT,69)
    assign out_unnamed_getTanh5_getTanh_avm_byteenable = bb_getTanh_B3_out_unnamed_getTanh5_getTanh_avm_byteenable;

    // out_unnamed_getTanh5_getTanh_avm_enable(GPOUT,70)
    assign out_unnamed_getTanh5_getTanh_avm_enable = bb_getTanh_B3_out_unnamed_getTanh5_getTanh_avm_enable;

    // out_unnamed_getTanh5_getTanh_avm_read(GPOUT,71)
    assign out_unnamed_getTanh5_getTanh_avm_read = bb_getTanh_B3_out_unnamed_getTanh5_getTanh_avm_read;

    // out_unnamed_getTanh5_getTanh_avm_write(GPOUT,72)
    assign out_unnamed_getTanh5_getTanh_avm_write = bb_getTanh_B3_out_unnamed_getTanh5_getTanh_avm_write;

    // out_unnamed_getTanh5_getTanh_avm_writedata(GPOUT,73)
    assign out_unnamed_getTanh5_getTanh_avm_writedata = bb_getTanh_B3_out_unnamed_getTanh5_getTanh_avm_writedata;

    // out_valid_out(GPOUT,74)
    assign out_valid_out = GND_q;

endmodule
