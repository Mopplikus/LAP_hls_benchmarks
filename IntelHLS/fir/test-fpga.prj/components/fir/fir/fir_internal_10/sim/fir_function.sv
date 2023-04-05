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

// SystemVerilog created from fir_function
// Created for function/kernel fir
// SystemVerilog created on Wed Apr  5 16:46:39 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module fir_function (
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_d_i,
    input wire [63:0] in_arg_idx,
    input wire [63:0] in_arg_return,
    input wire [127:0] in_iord_bl_call_fir_i_fifodata,
    input wire [0:0] in_iord_bl_call_fir_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_fir_i_fifoready,
    input wire [31:0] in_memdep_1_fir_avm_readdata,
    input wire [0:0] in_memdep_1_fir_avm_readdatavalid,
    input wire [0:0] in_memdep_1_fir_avm_waitrequest,
    input wire [0:0] in_memdep_1_fir_avm_writeack,
    input wire [31:0] in_memdep_fir_avm_readdata,
    input wire [0:0] in_memdep_fir_avm_readdatavalid,
    input wire [0:0] in_memdep_fir_avm_waitrequest,
    input wire [0:0] in_memdep_fir_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [63:0] in_unnamed_fir5_fir_avm_readdata,
    input wire [0:0] in_unnamed_fir5_fir_avm_readdatavalid,
    input wire [0:0] in_unnamed_fir5_fir_avm_waitrequest,
    input wire [0:0] in_unnamed_fir5_fir_avm_writeack,
    input wire [63:0] in_unnamed_fir6_fir_avm_readdata,
    input wire [0:0] in_unnamed_fir6_fir_avm_readdatavalid,
    input wire [0:0] in_unnamed_fir6_fir_avm_waitrequest,
    input wire [0:0] in_unnamed_fir6_fir_avm_writeack,
    input wire [31:0] in_unnamed_fir8_fir_avm_readdata,
    input wire [0:0] in_unnamed_fir8_fir_avm_readdatavalid,
    input wire [0:0] in_unnamed_fir8_fir_avm_waitrequest,
    input wire [0:0] in_unnamed_fir8_fir_avm_writeack,
    input wire [31:0] in_unnamed_fir9_fir_avm_readdata,
    input wire [0:0] in_unnamed_fir9_fir_avm_readdatavalid,
    input wire [0:0] in_unnamed_fir9_fir_avm_waitrequest,
    input wire [0:0] in_unnamed_fir9_fir_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_fir_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_fir_o_fifoready,
    output wire [31:0] out_iowr_bl_return_fir_o_fifodata,
    output wire [0:0] out_iowr_bl_return_fir_o_fifovalid,
    output wire [31:0] out_memdep_1_fir_avm_address,
    output wire [0:0] out_memdep_1_fir_avm_burstcount,
    output wire [3:0] out_memdep_1_fir_avm_byteenable,
    output wire [0:0] out_memdep_1_fir_avm_enable,
    output wire [0:0] out_memdep_1_fir_avm_read,
    output wire [0:0] out_memdep_1_fir_avm_write,
    output wire [31:0] out_memdep_1_fir_avm_writedata,
    output wire [31:0] out_memdep_fir_avm_address,
    output wire [0:0] out_memdep_fir_avm_burstcount,
    output wire [3:0] out_memdep_fir_avm_byteenable,
    output wire [0:0] out_memdep_fir_avm_enable,
    output wire [0:0] out_memdep_fir_avm_read,
    output wire [0:0] out_memdep_fir_avm_write,
    output wire [31:0] out_memdep_fir_avm_writedata,
    output wire [0:0] out_stall_out,
    output wire [63:0] out_unnamed_fir5_fir_avm_address,
    output wire [0:0] out_unnamed_fir5_fir_avm_burstcount,
    output wire [7:0] out_unnamed_fir5_fir_avm_byteenable,
    output wire [0:0] out_unnamed_fir5_fir_avm_enable,
    output wire [0:0] out_unnamed_fir5_fir_avm_read,
    output wire [0:0] out_unnamed_fir5_fir_avm_write,
    output wire [63:0] out_unnamed_fir5_fir_avm_writedata,
    output wire [63:0] out_unnamed_fir6_fir_avm_address,
    output wire [0:0] out_unnamed_fir6_fir_avm_burstcount,
    output wire [7:0] out_unnamed_fir6_fir_avm_byteenable,
    output wire [0:0] out_unnamed_fir6_fir_avm_enable,
    output wire [0:0] out_unnamed_fir6_fir_avm_read,
    output wire [0:0] out_unnamed_fir6_fir_avm_write,
    output wire [63:0] out_unnamed_fir6_fir_avm_writedata,
    output wire [31:0] out_unnamed_fir8_fir_avm_address,
    output wire [0:0] out_unnamed_fir8_fir_avm_burstcount,
    output wire [3:0] out_unnamed_fir8_fir_avm_byteenable,
    output wire [0:0] out_unnamed_fir8_fir_avm_enable,
    output wire [0:0] out_unnamed_fir8_fir_avm_read,
    output wire [0:0] out_unnamed_fir8_fir_avm_write,
    output wire [31:0] out_unnamed_fir8_fir_avm_writedata,
    output wire [31:0] out_unnamed_fir9_fir_avm_address,
    output wire [0:0] out_unnamed_fir9_fir_avm_burstcount,
    output wire [3:0] out_unnamed_fir9_fir_avm_byteenable,
    output wire [0:0] out_unnamed_fir9_fir_avm_enable,
    output wire [0:0] out_unnamed_fir9_fir_avm_read,
    output wire [0:0] out_unnamed_fir9_fir_avm_write,
    output wire [31:0] out_unnamed_fir9_fir_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_fir_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_fir_B1_start_out_feedback_stall_out_1;
    wire [63:0] bb_fir_B1_start_out_intel_reserved_ffwd_0_0;
    wire [63:0] bb_fir_B1_start_out_intel_reserved_ffwd_1_0;
    wire [0:0] bb_fir_B1_start_out_iord_bl_call_fir_o_fifoalmost_full;
    wire [0:0] bb_fir_B1_start_out_iord_bl_call_fir_o_fifoready;
    wire [0:0] bb_fir_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_fir_B1_start_out_stall_out_0;
    wire [0:0] bb_fir_B1_start_out_valid_in_0;
    wire [0:0] bb_fir_B1_start_out_valid_in_1;
    wire [0:0] bb_fir_B1_start_out_valid_out_0;
    wire [0:0] bb_fir_B2_out_stall_out_0;
    wire [0:0] bb_fir_B2_out_valid_out_0;
    wire [0:0] bb_fir_B3_out_exiting_stall_out;
    wire [0:0] bb_fir_B3_out_exiting_valid_out;
    wire [31:0] bb_fir_B3_out_memdep_1_fir_avm_address;
    wire [0:0] bb_fir_B3_out_memdep_1_fir_avm_burstcount;
    wire [3:0] bb_fir_B3_out_memdep_1_fir_avm_byteenable;
    wire [0:0] bb_fir_B3_out_memdep_1_fir_avm_enable;
    wire [0:0] bb_fir_B3_out_memdep_1_fir_avm_read;
    wire [0:0] bb_fir_B3_out_memdep_1_fir_avm_write;
    wire [31:0] bb_fir_B3_out_memdep_1_fir_avm_writedata;
    wire [31:0] bb_fir_B3_out_memdep_fir_avm_address;
    wire [0:0] bb_fir_B3_out_memdep_fir_avm_burstcount;
    wire [3:0] bb_fir_B3_out_memdep_fir_avm_byteenable;
    wire [0:0] bb_fir_B3_out_memdep_fir_avm_enable;
    wire [0:0] bb_fir_B3_out_memdep_fir_avm_read;
    wire [0:0] bb_fir_B3_out_memdep_fir_avm_write;
    wire [31:0] bb_fir_B3_out_memdep_fir_avm_writedata;
    wire [0:0] bb_fir_B3_out_pipeline_valid_out;
    wire [0:0] bb_fir_B3_out_stall_in_0;
    wire [0:0] bb_fir_B3_out_stall_out_0;
    wire [0:0] bb_fir_B3_out_stall_out_1;
    wire [63:0] bb_fir_B3_out_unnamed_fir5_fir_avm_address;
    wire [0:0] bb_fir_B3_out_unnamed_fir5_fir_avm_burstcount;
    wire [7:0] bb_fir_B3_out_unnamed_fir5_fir_avm_byteenable;
    wire [0:0] bb_fir_B3_out_unnamed_fir5_fir_avm_enable;
    wire [0:0] bb_fir_B3_out_unnamed_fir5_fir_avm_read;
    wire [0:0] bb_fir_B3_out_unnamed_fir5_fir_avm_write;
    wire [63:0] bb_fir_B3_out_unnamed_fir5_fir_avm_writedata;
    wire [63:0] bb_fir_B3_out_unnamed_fir6_fir_avm_address;
    wire [0:0] bb_fir_B3_out_unnamed_fir6_fir_avm_burstcount;
    wire [7:0] bb_fir_B3_out_unnamed_fir6_fir_avm_byteenable;
    wire [0:0] bb_fir_B3_out_unnamed_fir6_fir_avm_enable;
    wire [0:0] bb_fir_B3_out_unnamed_fir6_fir_avm_read;
    wire [0:0] bb_fir_B3_out_unnamed_fir6_fir_avm_write;
    wire [63:0] bb_fir_B3_out_unnamed_fir6_fir_avm_writedata;
    wire [0:0] bb_fir_B3_out_valid_in_0;
    wire [0:0] bb_fir_B3_out_valid_in_1;
    wire [0:0] bb_fir_B3_out_valid_out_0;
    wire [0:0] bb_fir_B4_out_feedback_out_1;
    wire [0:0] bb_fir_B4_out_feedback_valid_out_1;
    wire [31:0] bb_fir_B4_out_iowr_bl_return_fir_o_fifodata;
    wire [0:0] bb_fir_B4_out_iowr_bl_return_fir_o_fifovalid;
    wire [0:0] bb_fir_B4_out_stall_in_0;
    wire [0:0] bb_fir_B4_out_stall_out_0;
    wire [0:0] bb_fir_B4_out_valid_out_0;
    wire [0:0] bb_fir_B5_out_exiting_stall_out;
    wire [0:0] bb_fir_B5_out_exiting_valid_out;
    wire [31:0] bb_fir_B5_out_intel_reserved_ffwd_2_0;
    wire [0:0] bb_fir_B5_out_pipeline_valid_out;
    wire [0:0] bb_fir_B5_out_stall_in_0;
    wire [0:0] bb_fir_B5_out_stall_out_0;
    wire [0:0] bb_fir_B5_out_stall_out_1;
    wire [31:0] bb_fir_B5_out_unnamed_fir8_fir_avm_address;
    wire [0:0] bb_fir_B5_out_unnamed_fir8_fir_avm_burstcount;
    wire [3:0] bb_fir_B5_out_unnamed_fir8_fir_avm_byteenable;
    wire [0:0] bb_fir_B5_out_unnamed_fir8_fir_avm_enable;
    wire [0:0] bb_fir_B5_out_unnamed_fir8_fir_avm_read;
    wire [0:0] bb_fir_B5_out_unnamed_fir8_fir_avm_write;
    wire [31:0] bb_fir_B5_out_unnamed_fir8_fir_avm_writedata;
    wire [31:0] bb_fir_B5_out_unnamed_fir9_fir_avm_address;
    wire [0:0] bb_fir_B5_out_unnamed_fir9_fir_avm_burstcount;
    wire [3:0] bb_fir_B5_out_unnamed_fir9_fir_avm_byteenable;
    wire [0:0] bb_fir_B5_out_unnamed_fir9_fir_avm_enable;
    wire [0:0] bb_fir_B5_out_unnamed_fir9_fir_avm_read;
    wire [0:0] bb_fir_B5_out_unnamed_fir9_fir_avm_write;
    wire [31:0] bb_fir_B5_out_unnamed_fir9_fir_avm_writedata;
    wire [0:0] bb_fir_B5_out_valid_in_0;
    wire [0:0] bb_fir_B5_out_valid_in_1;
    wire [0:0] bb_fir_B5_out_valid_out_0;
    wire [1:0] c_i2_014_q;
    wire [0:0] fir_B1_start_x_i_capture;
    wire fir_B1_start_x_i_capture_bitsignaltemp;
    wire [0:0] fir_B1_start_x_i_clear;
    wire fir_B1_start_x_i_clear_bitsignaltemp;
    wire [0:0] fir_B1_start_x_i_enable;
    wire fir_B1_start_x_i_enable_bitsignaltemp;
    wire [0:0] fir_B1_start_x_i_shift;
    wire fir_B1_start_x_i_shift_bitsignaltemp;
    wire [0:0] fir_B1_start_x_i_stall_pred;
    wire fir_B1_start_x_i_stall_pred_bitsignaltemp;
    wire [0:0] fir_B1_start_x_i_stall_succ;
    wire fir_B1_start_x_i_stall_succ_bitsignaltemp;
    wire [0:0] fir_B1_start_x_i_valid_loop;
    wire fir_B1_start_x_i_valid_loop_bitsignaltemp;
    wire [0:0] fir_B1_start_x_i_valid_pred;
    wire fir_B1_start_x_i_valid_pred_bitsignaltemp;
    wire [0:0] fir_B1_start_x_i_valid_succ;
    wire fir_B1_start_x_i_valid_succ_bitsignaltemp;
    wire [0:0] fir_B3_x_i_capture;
    wire fir_B3_x_i_capture_bitsignaltemp;
    wire [0:0] fir_B3_x_i_clear;
    wire fir_B3_x_i_clear_bitsignaltemp;
    wire [0:0] fir_B3_x_i_enable;
    wire fir_B3_x_i_enable_bitsignaltemp;
    wire [0:0] fir_B3_x_i_shift;
    wire fir_B3_x_i_shift_bitsignaltemp;
    wire [0:0] fir_B3_x_i_stall_pred;
    wire fir_B3_x_i_stall_pred_bitsignaltemp;
    wire [0:0] fir_B3_x_i_stall_succ;
    wire fir_B3_x_i_stall_succ_bitsignaltemp;
    wire [0:0] fir_B3_x_i_valid_loop;
    wire fir_B3_x_i_valid_loop_bitsignaltemp;
    wire [0:0] fir_B3_x_i_valid_pred;
    wire fir_B3_x_i_valid_pred_bitsignaltemp;
    wire [0:0] fir_B3_x_i_valid_succ;
    wire fir_B3_x_i_valid_succ_bitsignaltemp;
    wire [0:0] fir_B5_x_i_capture;
    wire fir_B5_x_i_capture_bitsignaltemp;
    wire [0:0] fir_B5_x_i_clear;
    wire fir_B5_x_i_clear_bitsignaltemp;
    wire [0:0] fir_B5_x_i_enable;
    wire fir_B5_x_i_enable_bitsignaltemp;
    wire [0:0] fir_B5_x_i_shift;
    wire fir_B5_x_i_shift_bitsignaltemp;
    wire [0:0] fir_B5_x_i_stall_pred;
    wire fir_B5_x_i_stall_pred_bitsignaltemp;
    wire [0:0] fir_B5_x_i_stall_succ;
    wire fir_B5_x_i_stall_succ_bitsignaltemp;
    wire [0:0] fir_B5_x_i_valid_loop;
    wire fir_B5_x_i_valid_loop_bitsignaltemp;
    wire [0:0] fir_B5_x_i_valid_pred;
    wire fir_B5_x_i_valid_pred_bitsignaltemp;
    wire [0:0] fir_B5_x_i_valid_succ;
    wire fir_B5_x_i_valid_succ_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pipeline_keep_going13_fir6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going13_fir6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going13_fir6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going13_fir6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_fir1_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_fir1_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_fir1_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_fir1_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fir6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fir6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fir6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fir6_valid_fifo_out_valid_out;
    wire [0:0] loop_limiter_fir0_out_o_stall;
    wire [0:0] loop_limiter_fir0_out_o_valid;
    wire [0:0] loop_limiter_fir1_out_o_stall;
    wire [0:0] loop_limiter_fir1_out_o_valid;
    wire [0:0] bb_fir_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_fir_B2_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_fir_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_fir_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_fir_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_fir_B4_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_fir_B4_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_fir_B5_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_fir_B5_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_fir_B5_sr_1_aunroll_x_out_o_data_0_tpl;


    // c_i2_014(CONSTANT,27)
    assign c_i2_014_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going26_fir1_valid_fifo(BLACKBOX,37)
    fir_i_llvm_fpga_pipeline_keep_going26_1_valid_fifo thei_llvm_fpga_pipeline_keep_going26_fir1_valid_fifo (
        .in_data_in(c_i2_014_q),
        .in_stall_in(bb_fir_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going26_fir1_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going26_fir1_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going26_fir1_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going13_fir6_valid_fifo(BLACKBOX,35)
    fir_i_llvm_fpga_pipeline_keep_going13_6_valid_fifo thei_llvm_fpga_pipeline_keep_going13_fir6_valid_fifo (
        .in_data_in(c_i2_014_q),
        .in_stall_in(bb_fir_B3_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going13_fir6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going13_fir6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going13_fir6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_fir6_valid_fifo(BLACKBOX,39)
    fir_i_llvm_fpga_pipeline_keep_going_6_valid_fifo thei_llvm_fpga_pipeline_keep_going_fir6_valid_fifo (
        .in_data_in(c_i2_014_q),
        .in_stall_in(bb_fir_B5_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_fir6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_fir6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_fir6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_fir_B4_sr_0_aunroll_x(BLACKBOX,126)
    fir_bb_B4_sr_0 thebb_fir_B4_sr_0_aunroll_x (
        .in_i_stall(bb_fir_B4_out_stall_out_0),
        .in_i_valid(bb_fir_B5_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_fir_B4_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_fir_B4_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_fir6_sr(BLACKBOX,38)
    fir_i_llvm_fpga_pipeline_keep_going_6_sr thei_llvm_fpga_pipeline_keep_going_fir6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_fir6_valid_fifo_out_stall_out),
        .in_i_valid(bb_fir_B5_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_fir6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_fir6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_fir_B5(BLACKBOX,7)
    fir_bb_B5 thebb_fir_B5 (
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_fir_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_fir6_sr_out_o_stall),
        .in_stall_in_0(bb_fir_B4_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_fir8_fir_avm_readdata(in_unnamed_fir8_fir_avm_readdata),
        .in_unnamed_fir8_fir_avm_readdatavalid(in_unnamed_fir8_fir_avm_readdatavalid),
        .in_unnamed_fir8_fir_avm_waitrequest(in_unnamed_fir8_fir_avm_waitrequest),
        .in_unnamed_fir8_fir_avm_writeack(in_unnamed_fir8_fir_avm_writeack),
        .in_unnamed_fir9_fir_avm_readdata(in_unnamed_fir9_fir_avm_readdata),
        .in_unnamed_fir9_fir_avm_readdatavalid(in_unnamed_fir9_fir_avm_readdatavalid),
        .in_unnamed_fir9_fir_avm_waitrequest(in_unnamed_fir9_fir_avm_waitrequest),
        .in_unnamed_fir9_fir_avm_writeack(in_unnamed_fir9_fir_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_fir6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_fir_B5_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(bb_fir_B5_out_exiting_stall_out),
        .out_exiting_valid_out(bb_fir_B5_out_exiting_valid_out),
        .out_intel_reserved_ffwd_2_0(bb_fir_B5_out_intel_reserved_ffwd_2_0),
        .out_pipeline_valid_out(bb_fir_B5_out_pipeline_valid_out),
        .out_stall_in_0(bb_fir_B5_out_stall_in_0),
        .out_stall_out_0(bb_fir_B5_out_stall_out_0),
        .out_stall_out_1(bb_fir_B5_out_stall_out_1),
        .out_unnamed_fir8_fir_avm_address(bb_fir_B5_out_unnamed_fir8_fir_avm_address),
        .out_unnamed_fir8_fir_avm_burstcount(bb_fir_B5_out_unnamed_fir8_fir_avm_burstcount),
        .out_unnamed_fir8_fir_avm_byteenable(bb_fir_B5_out_unnamed_fir8_fir_avm_byteenable),
        .out_unnamed_fir8_fir_avm_enable(bb_fir_B5_out_unnamed_fir8_fir_avm_enable),
        .out_unnamed_fir8_fir_avm_read(bb_fir_B5_out_unnamed_fir8_fir_avm_read),
        .out_unnamed_fir8_fir_avm_write(bb_fir_B5_out_unnamed_fir8_fir_avm_write),
        .out_unnamed_fir8_fir_avm_writedata(bb_fir_B5_out_unnamed_fir8_fir_avm_writedata),
        .out_unnamed_fir9_fir_avm_address(bb_fir_B5_out_unnamed_fir9_fir_avm_address),
        .out_unnamed_fir9_fir_avm_burstcount(bb_fir_B5_out_unnamed_fir9_fir_avm_burstcount),
        .out_unnamed_fir9_fir_avm_byteenable(bb_fir_B5_out_unnamed_fir9_fir_avm_byteenable),
        .out_unnamed_fir9_fir_avm_enable(bb_fir_B5_out_unnamed_fir9_fir_avm_enable),
        .out_unnamed_fir9_fir_avm_read(bb_fir_B5_out_unnamed_fir9_fir_avm_read),
        .out_unnamed_fir9_fir_avm_write(bb_fir_B5_out_unnamed_fir9_fir_avm_write),
        .out_unnamed_fir9_fir_avm_writedata(bb_fir_B5_out_unnamed_fir9_fir_avm_writedata),
        .out_valid_in_0(bb_fir_B5_out_valid_in_0),
        .out_valid_in_1(bb_fir_B5_out_valid_in_1),
        .out_valid_out_0(bb_fir_B5_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_fir_B5_sr_1_aunroll_x(BLACKBOX,127)
    fir_bb_B5_sr_1 thebb_fir_B5_sr_1_aunroll_x (
        .in_i_stall(bb_fir_B5_out_stall_out_1),
        .in_i_valid(loop_limiter_fir1_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_fir_B5_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_fir_B5_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_fir_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_fir1(BLACKBOX,75)
    fir_loop_limiter_1 theloop_limiter_fir1 (
        .in_i_stall(bb_fir_B5_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_fir_B5_out_exiting_stall_out),
        .in_i_valid(bb_fir_B2_out_valid_out_0),
        .in_i_valid_exit(bb_fir_B5_out_exiting_valid_out),
        .out_o_stall(loop_limiter_fir1_out_o_stall),
        .out_o_valid(loop_limiter_fir1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_fir_B2(BLACKBOX,4)
    fir_bb_B2 thebb_fir_B2 (
        .in_stall_in_0(loop_limiter_fir1_out_o_stall),
        .in_valid_in_0(bb_fir_B2_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_fir_B2_out_stall_out_0),
        .out_valid_out_0(bb_fir_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_fir_B2_sr_0_aunroll_x(BLACKBOX,124)
    fir_bb_B2_sr_0 thebb_fir_B2_sr_0_aunroll_x (
        .in_i_stall(bb_fir_B2_out_stall_out_0),
        .in_i_valid(bb_fir_B3_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_fir_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_fir_B2_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going13_fir6_sr(BLACKBOX,34)
    fir_i_llvm_fpga_pipeline_keep_going13_6_sr thei_llvm_fpga_pipeline_keep_going13_fir6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going13_fir6_valid_fifo_out_stall_out),
        .in_i_valid(bb_fir_B3_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going13_fir6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going13_fir6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_fir_B3(BLACKBOX,5)
    fir_bb_B3 thebb_fir_B3 (
        .in_flush(in_start),
        .in_forked10_0(GND_q),
        .in_forked10_1(bb_fir_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_0_0(bb_fir_B1_start_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(bb_fir_B1_start_out_intel_reserved_ffwd_1_0),
        .in_memdep_1_fir_avm_readdata(in_memdep_1_fir_avm_readdata),
        .in_memdep_1_fir_avm_readdatavalid(in_memdep_1_fir_avm_readdatavalid),
        .in_memdep_1_fir_avm_waitrequest(in_memdep_1_fir_avm_waitrequest),
        .in_memdep_1_fir_avm_writeack(in_memdep_1_fir_avm_writeack),
        .in_memdep_fir_avm_readdata(in_memdep_fir_avm_readdata),
        .in_memdep_fir_avm_readdatavalid(in_memdep_fir_avm_readdatavalid),
        .in_memdep_fir_avm_waitrequest(in_memdep_fir_avm_waitrequest),
        .in_memdep_fir_avm_writeack(in_memdep_fir_avm_writeack),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going13_fir6_sr_out_o_stall),
        .in_stall_in_0(bb_fir_B2_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_fir5_fir_avm_readdata(in_unnamed_fir5_fir_avm_readdata),
        .in_unnamed_fir5_fir_avm_readdatavalid(in_unnamed_fir5_fir_avm_readdatavalid),
        .in_unnamed_fir5_fir_avm_waitrequest(in_unnamed_fir5_fir_avm_waitrequest),
        .in_unnamed_fir5_fir_avm_writeack(in_unnamed_fir5_fir_avm_writeack),
        .in_unnamed_fir6_fir_avm_readdata(in_unnamed_fir6_fir_avm_readdata),
        .in_unnamed_fir6_fir_avm_readdatavalid(in_unnamed_fir6_fir_avm_readdatavalid),
        .in_unnamed_fir6_fir_avm_waitrequest(in_unnamed_fir6_fir_avm_waitrequest),
        .in_unnamed_fir6_fir_avm_writeack(in_unnamed_fir6_fir_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going13_fir6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_fir_B3_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(bb_fir_B3_out_exiting_stall_out),
        .out_exiting_valid_out(bb_fir_B3_out_exiting_valid_out),
        .out_memdep_1_fir_avm_address(bb_fir_B3_out_memdep_1_fir_avm_address),
        .out_memdep_1_fir_avm_burstcount(bb_fir_B3_out_memdep_1_fir_avm_burstcount),
        .out_memdep_1_fir_avm_byteenable(bb_fir_B3_out_memdep_1_fir_avm_byteenable),
        .out_memdep_1_fir_avm_enable(bb_fir_B3_out_memdep_1_fir_avm_enable),
        .out_memdep_1_fir_avm_read(bb_fir_B3_out_memdep_1_fir_avm_read),
        .out_memdep_1_fir_avm_write(bb_fir_B3_out_memdep_1_fir_avm_write),
        .out_memdep_1_fir_avm_writedata(bb_fir_B3_out_memdep_1_fir_avm_writedata),
        .out_memdep_fir_avm_address(bb_fir_B3_out_memdep_fir_avm_address),
        .out_memdep_fir_avm_burstcount(bb_fir_B3_out_memdep_fir_avm_burstcount),
        .out_memdep_fir_avm_byteenable(bb_fir_B3_out_memdep_fir_avm_byteenable),
        .out_memdep_fir_avm_enable(bb_fir_B3_out_memdep_fir_avm_enable),
        .out_memdep_fir_avm_read(bb_fir_B3_out_memdep_fir_avm_read),
        .out_memdep_fir_avm_write(bb_fir_B3_out_memdep_fir_avm_write),
        .out_memdep_fir_avm_writedata(bb_fir_B3_out_memdep_fir_avm_writedata),
        .out_pipeline_valid_out(bb_fir_B3_out_pipeline_valid_out),
        .out_stall_in_0(bb_fir_B3_out_stall_in_0),
        .out_stall_out_0(bb_fir_B3_out_stall_out_0),
        .out_stall_out_1(bb_fir_B3_out_stall_out_1),
        .out_unnamed_fir5_fir_avm_address(bb_fir_B3_out_unnamed_fir5_fir_avm_address),
        .out_unnamed_fir5_fir_avm_burstcount(bb_fir_B3_out_unnamed_fir5_fir_avm_burstcount),
        .out_unnamed_fir5_fir_avm_byteenable(bb_fir_B3_out_unnamed_fir5_fir_avm_byteenable),
        .out_unnamed_fir5_fir_avm_enable(bb_fir_B3_out_unnamed_fir5_fir_avm_enable),
        .out_unnamed_fir5_fir_avm_read(bb_fir_B3_out_unnamed_fir5_fir_avm_read),
        .out_unnamed_fir5_fir_avm_write(bb_fir_B3_out_unnamed_fir5_fir_avm_write),
        .out_unnamed_fir5_fir_avm_writedata(bb_fir_B3_out_unnamed_fir5_fir_avm_writedata),
        .out_unnamed_fir6_fir_avm_address(bb_fir_B3_out_unnamed_fir6_fir_avm_address),
        .out_unnamed_fir6_fir_avm_burstcount(bb_fir_B3_out_unnamed_fir6_fir_avm_burstcount),
        .out_unnamed_fir6_fir_avm_byteenable(bb_fir_B3_out_unnamed_fir6_fir_avm_byteenable),
        .out_unnamed_fir6_fir_avm_enable(bb_fir_B3_out_unnamed_fir6_fir_avm_enable),
        .out_unnamed_fir6_fir_avm_read(bb_fir_B3_out_unnamed_fir6_fir_avm_read),
        .out_unnamed_fir6_fir_avm_write(bb_fir_B3_out_unnamed_fir6_fir_avm_write),
        .out_unnamed_fir6_fir_avm_writedata(bb_fir_B3_out_unnamed_fir6_fir_avm_writedata),
        .out_valid_in_0(bb_fir_B3_out_valid_in_0),
        .out_valid_in_1(bb_fir_B3_out_valid_in_1),
        .out_valid_out_0(bb_fir_B3_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_fir_B3_sr_1_aunroll_x(BLACKBOX,125)
    fir_bb_B3_sr_1 thebb_fir_B3_sr_1_aunroll_x (
        .in_i_stall(bb_fir_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_fir0_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_fir_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_fir_B3_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_fir_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_fir0(BLACKBOX,74)
    fir_loop_limiter_0 theloop_limiter_fir0 (
        .in_i_stall(bb_fir_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_fir_B3_out_exiting_stall_out),
        .in_i_valid(bb_fir_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_fir_B3_out_exiting_valid_out),
        .out_o_stall(loop_limiter_fir0_out_o_stall),
        .out_o_valid(loop_limiter_fir0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going26_fir1_sr(BLACKBOX,36)
    fir_i_llvm_fpga_pipeline_keep_going26_1_sr thei_llvm_fpga_pipeline_keep_going26_fir1_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going26_fir1_valid_fifo_out_stall_out),
        .in_i_valid(bb_fir_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going26_fir1_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going26_fir1_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_fir_B1_start(BLACKBOX,3)
    fir_bb_B1_start thebb_fir_B1_start (
        .in_feedback_in_1(bb_fir_B4_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_fir_B4_out_feedback_valid_out_1),
        .in_iord_bl_call_fir_i_fifodata(in_iord_bl_call_fir_i_fifodata),
        .in_iord_bl_call_fir_i_fifovalid(in_iord_bl_call_fir_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going26_fir1_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_fir0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going26_fir1_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_fir_B1_start_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_fir_B1_start_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_fir_B1_start_out_intel_reserved_ffwd_1_0),
        .out_iord_bl_call_fir_o_fifoalmost_full(bb_fir_B1_start_out_iord_bl_call_fir_o_fifoalmost_full),
        .out_iord_bl_call_fir_o_fifoready(bb_fir_B1_start_out_iord_bl_call_fir_o_fifoready),
        .out_pipeline_valid_out(bb_fir_B1_start_out_pipeline_valid_out),
        .out_stall_out_0(bb_fir_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_in_0(bb_fir_B1_start_out_valid_in_0),
        .out_valid_in_1(bb_fir_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_fir_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_fir_B4(BLACKBOX,6)
    fir_bb_B4 thebb_fir_B4 (
        .in_feedback_stall_in_1(bb_fir_B1_start_out_feedback_stall_out_1),
        .in_intel_reserved_ffwd_2_0(bb_fir_B5_out_intel_reserved_ffwd_2_0),
        .in_iowr_bl_return_fir_i_fifoready(in_iowr_bl_return_fir_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_fir_B4_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_fir_B4_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_fir_B4_out_feedback_valid_out_1),
        .out_iowr_bl_return_fir_o_fifodata(bb_fir_B4_out_iowr_bl_return_fir_o_fifodata),
        .out_iowr_bl_return_fir_o_fifovalid(bb_fir_B4_out_iowr_bl_return_fir_o_fifovalid),
        .out_stall_in_0(bb_fir_B4_out_stall_in_0),
        .out_stall_out_0(bb_fir_B4_out_stall_out_0),
        .out_valid_out_0(bb_fir_B4_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // fir_B1_start_x(EXTIFACE,31)
    assign fir_B1_start_x_i_capture = GND_q;
    assign fir_B1_start_x_i_clear = GND_q;
    assign fir_B1_start_x_i_enable = VCC_q;
    assign fir_B1_start_x_i_shift = GND_q;
    assign fir_B1_start_x_i_stall_pred = GND_q;
    assign fir_B1_start_x_i_stall_succ = bb_fir_B4_out_stall_in_0;
    assign fir_B1_start_x_i_valid_loop = bb_fir_B1_start_out_valid_in_0;
    assign fir_B1_start_x_i_valid_pred = bb_fir_B1_start_out_valid_in_1;
    assign fir_B1_start_x_i_valid_succ = bb_fir_B4_out_valid_out_0;
    assign fir_B1_start_x_i_capture_bitsignaltemp = fir_B1_start_x_i_capture[0];
    assign fir_B1_start_x_i_clear_bitsignaltemp = fir_B1_start_x_i_clear[0];
    assign fir_B1_start_x_i_enable_bitsignaltemp = fir_B1_start_x_i_enable[0];
    assign fir_B1_start_x_i_shift_bitsignaltemp = fir_B1_start_x_i_shift[0];
    assign fir_B1_start_x_i_stall_pred_bitsignaltemp = fir_B1_start_x_i_stall_pred[0];
    assign fir_B1_start_x_i_stall_succ_bitsignaltemp = fir_B1_start_x_i_stall_succ[0];
    assign fir_B1_start_x_i_valid_loop_bitsignaltemp = fir_B1_start_x_i_valid_loop[0];
    assign fir_B1_start_x_i_valid_pred_bitsignaltemp = fir_B1_start_x_i_valid_pred[0];
    assign fir_B1_start_x_i_valid_succ_bitsignaltemp = fir_B1_start_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("fir.B1.start")
    ) thefir_B1_start_x (
        .i_capture(fir_B1_start_x_i_capture_bitsignaltemp),
        .i_clear(fir_B1_start_x_i_clear_bitsignaltemp),
        .i_enable(fir_B1_start_x_i_enable_bitsignaltemp),
        .i_shift(fir_B1_start_x_i_shift_bitsignaltemp),
        .i_stall_pred(fir_B1_start_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(fir_B1_start_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(fir_B1_start_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(fir_B1_start_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(fir_B1_start_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // fir_B3_x(EXTIFACE,32)
    assign fir_B3_x_i_capture = GND_q;
    assign fir_B3_x_i_clear = GND_q;
    assign fir_B3_x_i_enable = VCC_q;
    assign fir_B3_x_i_shift = GND_q;
    assign fir_B3_x_i_stall_pred = loop_limiter_fir0_out_o_stall;
    assign fir_B3_x_i_stall_succ = bb_fir_B3_out_stall_in_0;
    assign fir_B3_x_i_valid_loop = bb_fir_B3_out_valid_in_0;
    assign fir_B3_x_i_valid_pred = bb_fir_B3_out_valid_in_1;
    assign fir_B3_x_i_valid_succ = bb_fir_B3_out_valid_out_0;
    assign fir_B3_x_i_capture_bitsignaltemp = fir_B3_x_i_capture[0];
    assign fir_B3_x_i_clear_bitsignaltemp = fir_B3_x_i_clear[0];
    assign fir_B3_x_i_enable_bitsignaltemp = fir_B3_x_i_enable[0];
    assign fir_B3_x_i_shift_bitsignaltemp = fir_B3_x_i_shift[0];
    assign fir_B3_x_i_stall_pred_bitsignaltemp = fir_B3_x_i_stall_pred[0];
    assign fir_B3_x_i_stall_succ_bitsignaltemp = fir_B3_x_i_stall_succ[0];
    assign fir_B3_x_i_valid_loop_bitsignaltemp = fir_B3_x_i_valid_loop[0];
    assign fir_B3_x_i_valid_pred_bitsignaltemp = fir_B3_x_i_valid_pred[0];
    assign fir_B3_x_i_valid_succ_bitsignaltemp = fir_B3_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("fir.B3")
    ) thefir_B3_x (
        .i_capture(fir_B3_x_i_capture_bitsignaltemp),
        .i_clear(fir_B3_x_i_clear_bitsignaltemp),
        .i_enable(fir_B3_x_i_enable_bitsignaltemp),
        .i_shift(fir_B3_x_i_shift_bitsignaltemp),
        .i_stall_pred(fir_B3_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(fir_B3_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(fir_B3_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(fir_B3_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(fir_B3_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // fir_B5_x(EXTIFACE,33)
    assign fir_B5_x_i_capture = GND_q;
    assign fir_B5_x_i_clear = GND_q;
    assign fir_B5_x_i_enable = VCC_q;
    assign fir_B5_x_i_shift = GND_q;
    assign fir_B5_x_i_stall_pred = loop_limiter_fir1_out_o_stall;
    assign fir_B5_x_i_stall_succ = bb_fir_B5_out_stall_in_0;
    assign fir_B5_x_i_valid_loop = bb_fir_B5_out_valid_in_0;
    assign fir_B5_x_i_valid_pred = bb_fir_B5_out_valid_in_1;
    assign fir_B5_x_i_valid_succ = bb_fir_B5_out_valid_out_0;
    assign fir_B5_x_i_capture_bitsignaltemp = fir_B5_x_i_capture[0];
    assign fir_B5_x_i_clear_bitsignaltemp = fir_B5_x_i_clear[0];
    assign fir_B5_x_i_enable_bitsignaltemp = fir_B5_x_i_enable[0];
    assign fir_B5_x_i_shift_bitsignaltemp = fir_B5_x_i_shift[0];
    assign fir_B5_x_i_stall_pred_bitsignaltemp = fir_B5_x_i_stall_pred[0];
    assign fir_B5_x_i_stall_succ_bitsignaltemp = fir_B5_x_i_stall_succ[0];
    assign fir_B5_x_i_valid_loop_bitsignaltemp = fir_B5_x_i_valid_loop[0];
    assign fir_B5_x_i_valid_pred_bitsignaltemp = fir_B5_x_i_valid_pred[0];
    assign fir_B5_x_i_valid_succ_bitsignaltemp = fir_B5_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("fir.B5")
    ) thefir_B5_x (
        .i_capture(fir_B5_x_i_capture_bitsignaltemp),
        .i_clear(fir_B5_x_i_clear_bitsignaltemp),
        .i_enable(fir_B5_x_i_enable_bitsignaltemp),
        .i_shift(fir_B5_x_i_shift_bitsignaltemp),
        .i_stall_pred(fir_B5_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(fir_B5_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(fir_B5_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(fir_B5_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(fir_B5_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_fir_o_fifoalmost_full(GPOUT,76)
    assign out_iord_bl_call_fir_o_fifoalmost_full = bb_fir_B1_start_out_iord_bl_call_fir_o_fifoalmost_full;

    // out_iord_bl_call_fir_o_fifoready(GPOUT,77)
    assign out_iord_bl_call_fir_o_fifoready = bb_fir_B1_start_out_iord_bl_call_fir_o_fifoready;

    // out_iowr_bl_return_fir_o_fifodata(GPOUT,78)
    assign out_iowr_bl_return_fir_o_fifodata = bb_fir_B4_out_iowr_bl_return_fir_o_fifodata;

    // out_iowr_bl_return_fir_o_fifovalid(GPOUT,79)
    assign out_iowr_bl_return_fir_o_fifovalid = bb_fir_B4_out_iowr_bl_return_fir_o_fifovalid;

    // out_memdep_1_fir_avm_address(GPOUT,80)
    assign out_memdep_1_fir_avm_address = bb_fir_B3_out_memdep_1_fir_avm_address;

    // out_memdep_1_fir_avm_burstcount(GPOUT,81)
    assign out_memdep_1_fir_avm_burstcount = bb_fir_B3_out_memdep_1_fir_avm_burstcount;

    // out_memdep_1_fir_avm_byteenable(GPOUT,82)
    assign out_memdep_1_fir_avm_byteenable = bb_fir_B3_out_memdep_1_fir_avm_byteenable;

    // out_memdep_1_fir_avm_enable(GPOUT,83)
    assign out_memdep_1_fir_avm_enable = bb_fir_B3_out_memdep_1_fir_avm_enable;

    // out_memdep_1_fir_avm_read(GPOUT,84)
    assign out_memdep_1_fir_avm_read = bb_fir_B3_out_memdep_1_fir_avm_read;

    // out_memdep_1_fir_avm_write(GPOUT,85)
    assign out_memdep_1_fir_avm_write = bb_fir_B3_out_memdep_1_fir_avm_write;

    // out_memdep_1_fir_avm_writedata(GPOUT,86)
    assign out_memdep_1_fir_avm_writedata = bb_fir_B3_out_memdep_1_fir_avm_writedata;

    // out_memdep_fir_avm_address(GPOUT,87)
    assign out_memdep_fir_avm_address = bb_fir_B3_out_memdep_fir_avm_address;

    // out_memdep_fir_avm_burstcount(GPOUT,88)
    assign out_memdep_fir_avm_burstcount = bb_fir_B3_out_memdep_fir_avm_burstcount;

    // out_memdep_fir_avm_byteenable(GPOUT,89)
    assign out_memdep_fir_avm_byteenable = bb_fir_B3_out_memdep_fir_avm_byteenable;

    // out_memdep_fir_avm_enable(GPOUT,90)
    assign out_memdep_fir_avm_enable = bb_fir_B3_out_memdep_fir_avm_enable;

    // out_memdep_fir_avm_read(GPOUT,91)
    assign out_memdep_fir_avm_read = bb_fir_B3_out_memdep_fir_avm_read;

    // out_memdep_fir_avm_write(GPOUT,92)
    assign out_memdep_fir_avm_write = bb_fir_B3_out_memdep_fir_avm_write;

    // out_memdep_fir_avm_writedata(GPOUT,93)
    assign out_memdep_fir_avm_writedata = bb_fir_B3_out_memdep_fir_avm_writedata;

    // bb_fir_B0_runOnce(BLACKBOX,2)
    fir_bb_B0_runOnce thebb_fir_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_fir_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,94)
    assign out_stall_out = bb_fir_B0_runOnce_out_stall_out_0;

    // out_unnamed_fir5_fir_avm_address(GPOUT,95)
    assign out_unnamed_fir5_fir_avm_address = bb_fir_B3_out_unnamed_fir5_fir_avm_address;

    // out_unnamed_fir5_fir_avm_burstcount(GPOUT,96)
    assign out_unnamed_fir5_fir_avm_burstcount = bb_fir_B3_out_unnamed_fir5_fir_avm_burstcount;

    // out_unnamed_fir5_fir_avm_byteenable(GPOUT,97)
    assign out_unnamed_fir5_fir_avm_byteenable = bb_fir_B3_out_unnamed_fir5_fir_avm_byteenable;

    // out_unnamed_fir5_fir_avm_enable(GPOUT,98)
    assign out_unnamed_fir5_fir_avm_enable = bb_fir_B3_out_unnamed_fir5_fir_avm_enable;

    // out_unnamed_fir5_fir_avm_read(GPOUT,99)
    assign out_unnamed_fir5_fir_avm_read = bb_fir_B3_out_unnamed_fir5_fir_avm_read;

    // out_unnamed_fir5_fir_avm_write(GPOUT,100)
    assign out_unnamed_fir5_fir_avm_write = bb_fir_B3_out_unnamed_fir5_fir_avm_write;

    // out_unnamed_fir5_fir_avm_writedata(GPOUT,101)
    assign out_unnamed_fir5_fir_avm_writedata = bb_fir_B3_out_unnamed_fir5_fir_avm_writedata;

    // out_unnamed_fir6_fir_avm_address(GPOUT,102)
    assign out_unnamed_fir6_fir_avm_address = bb_fir_B3_out_unnamed_fir6_fir_avm_address;

    // out_unnamed_fir6_fir_avm_burstcount(GPOUT,103)
    assign out_unnamed_fir6_fir_avm_burstcount = bb_fir_B3_out_unnamed_fir6_fir_avm_burstcount;

    // out_unnamed_fir6_fir_avm_byteenable(GPOUT,104)
    assign out_unnamed_fir6_fir_avm_byteenable = bb_fir_B3_out_unnamed_fir6_fir_avm_byteenable;

    // out_unnamed_fir6_fir_avm_enable(GPOUT,105)
    assign out_unnamed_fir6_fir_avm_enable = bb_fir_B3_out_unnamed_fir6_fir_avm_enable;

    // out_unnamed_fir6_fir_avm_read(GPOUT,106)
    assign out_unnamed_fir6_fir_avm_read = bb_fir_B3_out_unnamed_fir6_fir_avm_read;

    // out_unnamed_fir6_fir_avm_write(GPOUT,107)
    assign out_unnamed_fir6_fir_avm_write = bb_fir_B3_out_unnamed_fir6_fir_avm_write;

    // out_unnamed_fir6_fir_avm_writedata(GPOUT,108)
    assign out_unnamed_fir6_fir_avm_writedata = bb_fir_B3_out_unnamed_fir6_fir_avm_writedata;

    // out_unnamed_fir8_fir_avm_address(GPOUT,109)
    assign out_unnamed_fir8_fir_avm_address = bb_fir_B5_out_unnamed_fir8_fir_avm_address;

    // out_unnamed_fir8_fir_avm_burstcount(GPOUT,110)
    assign out_unnamed_fir8_fir_avm_burstcount = bb_fir_B5_out_unnamed_fir8_fir_avm_burstcount;

    // out_unnamed_fir8_fir_avm_byteenable(GPOUT,111)
    assign out_unnamed_fir8_fir_avm_byteenable = bb_fir_B5_out_unnamed_fir8_fir_avm_byteenable;

    // out_unnamed_fir8_fir_avm_enable(GPOUT,112)
    assign out_unnamed_fir8_fir_avm_enable = bb_fir_B5_out_unnamed_fir8_fir_avm_enable;

    // out_unnamed_fir8_fir_avm_read(GPOUT,113)
    assign out_unnamed_fir8_fir_avm_read = bb_fir_B5_out_unnamed_fir8_fir_avm_read;

    // out_unnamed_fir8_fir_avm_write(GPOUT,114)
    assign out_unnamed_fir8_fir_avm_write = bb_fir_B5_out_unnamed_fir8_fir_avm_write;

    // out_unnamed_fir8_fir_avm_writedata(GPOUT,115)
    assign out_unnamed_fir8_fir_avm_writedata = bb_fir_B5_out_unnamed_fir8_fir_avm_writedata;

    // out_unnamed_fir9_fir_avm_address(GPOUT,116)
    assign out_unnamed_fir9_fir_avm_address = bb_fir_B5_out_unnamed_fir9_fir_avm_address;

    // out_unnamed_fir9_fir_avm_burstcount(GPOUT,117)
    assign out_unnamed_fir9_fir_avm_burstcount = bb_fir_B5_out_unnamed_fir9_fir_avm_burstcount;

    // out_unnamed_fir9_fir_avm_byteenable(GPOUT,118)
    assign out_unnamed_fir9_fir_avm_byteenable = bb_fir_B5_out_unnamed_fir9_fir_avm_byteenable;

    // out_unnamed_fir9_fir_avm_enable(GPOUT,119)
    assign out_unnamed_fir9_fir_avm_enable = bb_fir_B5_out_unnamed_fir9_fir_avm_enable;

    // out_unnamed_fir9_fir_avm_read(GPOUT,120)
    assign out_unnamed_fir9_fir_avm_read = bb_fir_B5_out_unnamed_fir9_fir_avm_read;

    // out_unnamed_fir9_fir_avm_write(GPOUT,121)
    assign out_unnamed_fir9_fir_avm_write = bb_fir_B5_out_unnamed_fir9_fir_avm_write;

    // out_unnamed_fir9_fir_avm_writedata(GPOUT,122)
    assign out_unnamed_fir9_fir_avm_writedata = bb_fir_B5_out_unnamed_fir9_fir_avm_writedata;

    // out_valid_out(GPOUT,123)
    assign out_valid_out = GND_q;

endmodule
