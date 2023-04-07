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

// SystemVerilog created from jacobi_1d_function
// Created for function/kernel jacobi_1d
// SystemVerilog created on Fri Apr  7 17:06:24 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module jacobi_1d_function (
    input wire [63:0] in_arg_A_1,
    input wire [63:0] in_arg_A_2,
    input wire [63:0] in_arg_B,
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_return,
    input wire [191:0] in_iord_bl_call_jacobi_1d_i_fifodata,
    input wire [0:0] in_iord_bl_call_jacobi_1d_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_jacobi_1d_i_fifoready,
    input wire [31:0] in_pre_pre1_jacobi_1d_avm_readdata,
    input wire [0:0] in_pre_pre1_jacobi_1d_avm_readdatavalid,
    input wire [0:0] in_pre_pre1_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_pre_pre1_jacobi_1d_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [31:0] in_unnamed_jacobi_1d5_jacobi_1d_avm_readdata,
    input wire [0:0] in_unnamed_jacobi_1d5_jacobi_1d_avm_readdatavalid,
    input wire [0:0] in_unnamed_jacobi_1d5_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_unnamed_jacobi_1d5_jacobi_1d_avm_writeack,
    input wire [31:0] in_unnamed_jacobi_1d6_jacobi_1d_avm_readdata,
    input wire [0:0] in_unnamed_jacobi_1d6_jacobi_1d_avm_readdatavalid,
    input wire [0:0] in_unnamed_jacobi_1d6_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_unnamed_jacobi_1d6_jacobi_1d_avm_writeack,
    input wire [31:0] in_unnamed_jacobi_1d7_jacobi_1d_avm_readdata,
    input wire [0:0] in_unnamed_jacobi_1d7_jacobi_1d_avm_readdatavalid,
    input wire [0:0] in_unnamed_jacobi_1d7_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_unnamed_jacobi_1d7_jacobi_1d_avm_writeack,
    input wire [31:0] in_unnamed_jacobi_1d8_jacobi_1d_avm_readdata,
    input wire [0:0] in_unnamed_jacobi_1d8_jacobi_1d_avm_readdatavalid,
    input wire [0:0] in_unnamed_jacobi_1d8_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_unnamed_jacobi_1d8_jacobi_1d_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_jacobi_1d_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_jacobi_1d_o_fifoready,
    output wire [0:0] out_iowr_bl_return_jacobi_1d_o_fifodata,
    output wire [0:0] out_iowr_bl_return_jacobi_1d_o_fifovalid,
    output wire [31:0] out_pre_pre1_jacobi_1d_avm_address,
    output wire [0:0] out_pre_pre1_jacobi_1d_avm_burstcount,
    output wire [3:0] out_pre_pre1_jacobi_1d_avm_byteenable,
    output wire [0:0] out_pre_pre1_jacobi_1d_avm_enable,
    output wire [0:0] out_pre_pre1_jacobi_1d_avm_read,
    output wire [0:0] out_pre_pre1_jacobi_1d_avm_write,
    output wire [31:0] out_pre_pre1_jacobi_1d_avm_writedata,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_jacobi_1d5_jacobi_1d_avm_address,
    output wire [0:0] out_unnamed_jacobi_1d5_jacobi_1d_avm_burstcount,
    output wire [3:0] out_unnamed_jacobi_1d5_jacobi_1d_avm_byteenable,
    output wire [0:0] out_unnamed_jacobi_1d5_jacobi_1d_avm_enable,
    output wire [0:0] out_unnamed_jacobi_1d5_jacobi_1d_avm_read,
    output wire [0:0] out_unnamed_jacobi_1d5_jacobi_1d_avm_write,
    output wire [31:0] out_unnamed_jacobi_1d5_jacobi_1d_avm_writedata,
    output wire [31:0] out_unnamed_jacobi_1d6_jacobi_1d_avm_address,
    output wire [0:0] out_unnamed_jacobi_1d6_jacobi_1d_avm_burstcount,
    output wire [3:0] out_unnamed_jacobi_1d6_jacobi_1d_avm_byteenable,
    output wire [0:0] out_unnamed_jacobi_1d6_jacobi_1d_avm_enable,
    output wire [0:0] out_unnamed_jacobi_1d6_jacobi_1d_avm_read,
    output wire [0:0] out_unnamed_jacobi_1d6_jacobi_1d_avm_write,
    output wire [31:0] out_unnamed_jacobi_1d6_jacobi_1d_avm_writedata,
    output wire [31:0] out_unnamed_jacobi_1d7_jacobi_1d_avm_address,
    output wire [0:0] out_unnamed_jacobi_1d7_jacobi_1d_avm_burstcount,
    output wire [3:0] out_unnamed_jacobi_1d7_jacobi_1d_avm_byteenable,
    output wire [0:0] out_unnamed_jacobi_1d7_jacobi_1d_avm_enable,
    output wire [0:0] out_unnamed_jacobi_1d7_jacobi_1d_avm_read,
    output wire [0:0] out_unnamed_jacobi_1d7_jacobi_1d_avm_write,
    output wire [31:0] out_unnamed_jacobi_1d7_jacobi_1d_avm_writedata,
    output wire [31:0] out_unnamed_jacobi_1d8_jacobi_1d_avm_address,
    output wire [0:0] out_unnamed_jacobi_1d8_jacobi_1d_avm_burstcount,
    output wire [3:0] out_unnamed_jacobi_1d8_jacobi_1d_avm_byteenable,
    output wire [0:0] out_unnamed_jacobi_1d8_jacobi_1d_avm_enable,
    output wire [0:0] out_unnamed_jacobi_1d8_jacobi_1d_avm_read,
    output wire [0:0] out_unnamed_jacobi_1d8_jacobi_1d_avm_write,
    output wire [31:0] out_unnamed_jacobi_1d8_jacobi_1d_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_jacobi_1d_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_jacobi_1d_B1_start_out_feedback_stall_out_1;
    wire [31:0] bb_jacobi_1d_B1_start_out_intel_reserved_ffwd_0_0;
    wire [0:0] bb_jacobi_1d_B1_start_out_iord_bl_call_jacobi_1d_o_fifoalmost_full;
    wire [0:0] bb_jacobi_1d_B1_start_out_iord_bl_call_jacobi_1d_o_fifoready;
    wire [0:0] bb_jacobi_1d_B1_start_out_pipeline_valid_out;
    wire [31:0] bb_jacobi_1d_B1_start_out_pre_pre1_jacobi_1d_avm_address;
    wire [0:0] bb_jacobi_1d_B1_start_out_pre_pre1_jacobi_1d_avm_burstcount;
    wire [3:0] bb_jacobi_1d_B1_start_out_pre_pre1_jacobi_1d_avm_byteenable;
    wire [0:0] bb_jacobi_1d_B1_start_out_pre_pre1_jacobi_1d_avm_enable;
    wire [0:0] bb_jacobi_1d_B1_start_out_pre_pre1_jacobi_1d_avm_read;
    wire [0:0] bb_jacobi_1d_B1_start_out_pre_pre1_jacobi_1d_avm_write;
    wire [31:0] bb_jacobi_1d_B1_start_out_pre_pre1_jacobi_1d_avm_writedata;
    wire [0:0] bb_jacobi_1d_B1_start_out_stall_out_0;
    wire [0:0] bb_jacobi_1d_B1_start_out_valid_in_0;
    wire [0:0] bb_jacobi_1d_B1_start_out_valid_in_1;
    wire [0:0] bb_jacobi_1d_B1_start_out_valid_out_0;
    wire [0:0] bb_jacobi_1d_B2_out_c0_exe2;
    wire [0:0] bb_jacobi_1d_B2_out_exiting_stall_out;
    wire [0:0] bb_jacobi_1d_B2_out_exiting_valid_out;
    wire [0:0] bb_jacobi_1d_B2_out_pipeline_valid_out;
    wire [0:0] bb_jacobi_1d_B2_out_stall_out_0;
    wire [0:0] bb_jacobi_1d_B2_out_stall_out_1;
    wire [0:0] bb_jacobi_1d_B2_out_valid_in_0;
    wire [0:0] bb_jacobi_1d_B2_out_valid_in_1;
    wire [0:0] bb_jacobi_1d_B2_out_valid_out_0;
    wire [0:0] bb_jacobi_1d_B3_out_c0_exe3;
    wire [0:0] bb_jacobi_1d_B3_out_exiting_stall_out;
    wire [0:0] bb_jacobi_1d_B3_out_exiting_valid_out;
    wire [0:0] bb_jacobi_1d_B3_out_pipeline_valid_out;
    wire [0:0] bb_jacobi_1d_B3_out_stall_in_0;
    wire [0:0] bb_jacobi_1d_B3_out_stall_out_0;
    wire [0:0] bb_jacobi_1d_B3_out_stall_out_1;
    wire [31:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d5_jacobi_1d_avm_address;
    wire [0:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d5_jacobi_1d_avm_burstcount;
    wire [3:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d5_jacobi_1d_avm_byteenable;
    wire [0:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d5_jacobi_1d_avm_enable;
    wire [0:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d5_jacobi_1d_avm_read;
    wire [0:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d5_jacobi_1d_avm_write;
    wire [31:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d5_jacobi_1d_avm_writedata;
    wire [31:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d6_jacobi_1d_avm_address;
    wire [0:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d6_jacobi_1d_avm_burstcount;
    wire [3:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d6_jacobi_1d_avm_byteenable;
    wire [0:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d6_jacobi_1d_avm_enable;
    wire [0:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d6_jacobi_1d_avm_read;
    wire [0:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d6_jacobi_1d_avm_write;
    wire [31:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d6_jacobi_1d_avm_writedata;
    wire [31:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d7_jacobi_1d_avm_address;
    wire [0:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d7_jacobi_1d_avm_burstcount;
    wire [3:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d7_jacobi_1d_avm_byteenable;
    wire [0:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d7_jacobi_1d_avm_enable;
    wire [0:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d7_jacobi_1d_avm_read;
    wire [0:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d7_jacobi_1d_avm_write;
    wire [31:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d7_jacobi_1d_avm_writedata;
    wire [31:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d8_jacobi_1d_avm_address;
    wire [0:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d8_jacobi_1d_avm_burstcount;
    wire [3:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d8_jacobi_1d_avm_byteenable;
    wire [0:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d8_jacobi_1d_avm_enable;
    wire [0:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d8_jacobi_1d_avm_read;
    wire [0:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d8_jacobi_1d_avm_write;
    wire [31:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d8_jacobi_1d_avm_writedata;
    wire [0:0] bb_jacobi_1d_B3_out_valid_in_0;
    wire [0:0] bb_jacobi_1d_B3_out_valid_in_1;
    wire [0:0] bb_jacobi_1d_B3_out_valid_out_0;
    wire [0:0] bb_jacobi_1d_B4_out_stall_in_0;
    wire [0:0] bb_jacobi_1d_B4_out_stall_out_0;
    wire [0:0] bb_jacobi_1d_B4_out_valid_out_0;
    wire [0:0] bb_jacobi_1d_B5_out_feedback_out_1;
    wire [0:0] bb_jacobi_1d_B5_out_feedback_valid_out_1;
    wire [0:0] bb_jacobi_1d_B5_out_iowr_bl_return_jacobi_1d_o_fifodata;
    wire [0:0] bb_jacobi_1d_B5_out_iowr_bl_return_jacobi_1d_o_fifovalid;
    wire [0:0] bb_jacobi_1d_B5_out_stall_in_0;
    wire [0:0] bb_jacobi_1d_B5_out_stall_out_0;
    wire [0:0] bb_jacobi_1d_B5_out_valid_out_0;
    wire [1:0] c_i2_018_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going10_jacobi_1d2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going10_jacobi_1d2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going10_jacobi_1d2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going10_jacobi_1d2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going14_jacobi_1d1_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going14_jacobi_1d1_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going14_jacobi_1d1_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going14_jacobi_1d1_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_jacobi_1d6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_jacobi_1d6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_jacobi_1d6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_jacobi_1d6_valid_fifo_out_valid_out;
    wire [0:0] jacobi_1d_B1_start_x_i_capture;
    wire jacobi_1d_B1_start_x_i_capture_bitsignaltemp;
    wire [0:0] jacobi_1d_B1_start_x_i_clear;
    wire jacobi_1d_B1_start_x_i_clear_bitsignaltemp;
    wire [0:0] jacobi_1d_B1_start_x_i_enable;
    wire jacobi_1d_B1_start_x_i_enable_bitsignaltemp;
    wire [0:0] jacobi_1d_B1_start_x_i_shift;
    wire jacobi_1d_B1_start_x_i_shift_bitsignaltemp;
    wire [0:0] jacobi_1d_B1_start_x_i_stall_pred;
    wire jacobi_1d_B1_start_x_i_stall_pred_bitsignaltemp;
    wire [0:0] jacobi_1d_B1_start_x_i_stall_succ;
    wire jacobi_1d_B1_start_x_i_stall_succ_bitsignaltemp;
    wire [0:0] jacobi_1d_B1_start_x_i_valid_loop;
    wire jacobi_1d_B1_start_x_i_valid_loop_bitsignaltemp;
    wire [0:0] jacobi_1d_B1_start_x_i_valid_pred;
    wire jacobi_1d_B1_start_x_i_valid_pred_bitsignaltemp;
    wire [0:0] jacobi_1d_B1_start_x_i_valid_succ;
    wire jacobi_1d_B1_start_x_i_valid_succ_bitsignaltemp;
    wire [0:0] jacobi_1d_B2_x_i_capture;
    wire jacobi_1d_B2_x_i_capture_bitsignaltemp;
    wire [0:0] jacobi_1d_B2_x_i_clear;
    wire jacobi_1d_B2_x_i_clear_bitsignaltemp;
    wire [0:0] jacobi_1d_B2_x_i_enable;
    wire jacobi_1d_B2_x_i_enable_bitsignaltemp;
    wire [0:0] jacobi_1d_B2_x_i_shift;
    wire jacobi_1d_B2_x_i_shift_bitsignaltemp;
    wire [0:0] jacobi_1d_B2_x_i_stall_pred;
    wire jacobi_1d_B2_x_i_stall_pred_bitsignaltemp;
    wire [0:0] jacobi_1d_B2_x_i_stall_succ;
    wire jacobi_1d_B2_x_i_stall_succ_bitsignaltemp;
    wire [0:0] jacobi_1d_B2_x_i_valid_loop;
    wire jacobi_1d_B2_x_i_valid_loop_bitsignaltemp;
    wire [0:0] jacobi_1d_B2_x_i_valid_pred;
    wire jacobi_1d_B2_x_i_valid_pred_bitsignaltemp;
    wire [0:0] jacobi_1d_B2_x_i_valid_succ;
    wire jacobi_1d_B2_x_i_valid_succ_bitsignaltemp;
    wire [0:0] jacobi_1d_B3_x_i_capture;
    wire jacobi_1d_B3_x_i_capture_bitsignaltemp;
    wire [0:0] jacobi_1d_B3_x_i_clear;
    wire jacobi_1d_B3_x_i_clear_bitsignaltemp;
    wire [0:0] jacobi_1d_B3_x_i_enable;
    wire jacobi_1d_B3_x_i_enable_bitsignaltemp;
    wire [0:0] jacobi_1d_B3_x_i_shift;
    wire jacobi_1d_B3_x_i_shift_bitsignaltemp;
    wire [0:0] jacobi_1d_B3_x_i_stall_pred;
    wire jacobi_1d_B3_x_i_stall_pred_bitsignaltemp;
    wire [0:0] jacobi_1d_B3_x_i_stall_succ;
    wire jacobi_1d_B3_x_i_stall_succ_bitsignaltemp;
    wire [0:0] jacobi_1d_B3_x_i_valid_loop;
    wire jacobi_1d_B3_x_i_valid_loop_bitsignaltemp;
    wire [0:0] jacobi_1d_B3_x_i_valid_pred;
    wire jacobi_1d_B3_x_i_valid_pred_bitsignaltemp;
    wire [0:0] jacobi_1d_B3_x_i_valid_succ;
    wire jacobi_1d_B3_x_i_valid_succ_bitsignaltemp;
    wire [0:0] loop_limiter_jacobi_1d0_out_o_stall;
    wire [0:0] loop_limiter_jacobi_1d0_out_o_valid;
    wire [0:0] loop_limiter_jacobi_1d1_out_o_stall;
    wire [0:0] loop_limiter_jacobi_1d1_out_o_valid;
    wire [0:0] bb_jacobi_1d_B2_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_jacobi_1d_B2_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_jacobi_1d_B2_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_jacobi_1d_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_jacobi_1d_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_jacobi_1d_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_jacobi_1d_B3_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_jacobi_1d_B4_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_jacobi_1d_B4_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_jacobi_1d_B4_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_jacobi_1d_B5_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_jacobi_1d_B5_sr_0_aunroll_x_out_o_valid;


    // c_i2_018(CONSTANT,27)
    assign c_i2_018_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going14_jacobi_1d1_valid_fifo(BLACKBOX,34)
    jacobi_1d_i_llvm_fpga_pipeline_keep_going14_1_valid_fifo thei_llvm_fpga_pipeline_keep_going14_jacobi_1d1_valid_fifo (
        .in_data_in(c_i2_018_q),
        .in_stall_in(bb_jacobi_1d_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going14_jacobi_1d1_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going14_jacobi_1d1_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going14_jacobi_1d1_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going10_jacobi_1d2_valid_fifo(BLACKBOX,32)
    jacobi_1d_i_llvm_fpga_pipeline_keep_going10_2_valid_fifo thei_llvm_fpga_pipeline_keep_going10_jacobi_1d2_valid_fifo (
        .in_data_in(c_i2_018_q),
        .in_stall_in(bb_jacobi_1d_B2_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going10_jacobi_1d2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going10_jacobi_1d2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going10_jacobi_1d2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_jacobi_1d6_valid_fifo(BLACKBOX,36)
    jacobi_1d_i_llvm_fpga_pipeline_keep_going_6_valid_fifo thei_llvm_fpga_pipeline_keep_going_jacobi_1d6_valid_fifo (
        .in_data_in(c_i2_018_q),
        .in_stall_in(bb_jacobi_1d_B3_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_jacobi_1d6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_jacobi_1d6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_jacobi_1d6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B5_sr_0_aunroll_x(BLACKBOX,117)
    jacobi_1d_bb_B5_sr_0 thebb_jacobi_1d_B5_sr_0_aunroll_x (
        .in_i_stall(bb_jacobi_1d_B5_out_stall_out_0),
        .in_i_valid(bb_jacobi_1d_B4_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_jacobi_1d_B5_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_jacobi_1d_B5_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B4(BLACKBOX,6)
    jacobi_1d_bb_B4 thebb_jacobi_1d_B4 (
        .in_c0_exe31_0(bb_jacobi_1d_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(bb_jacobi_1d_B5_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_jacobi_1d_B4_sr_0_aunroll_x_out_o_valid),
        .out_stall_in_0(bb_jacobi_1d_B4_out_stall_in_0),
        .out_stall_out_0(bb_jacobi_1d_B4_out_stall_out_0),
        .out_valid_out_0(bb_jacobi_1d_B4_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B4_sr_0_aunroll_x(BLACKBOX,116)
    jacobi_1d_bb_B4_sr_0 thebb_jacobi_1d_B4_sr_0_aunroll_x (
        .in_i_stall(bb_jacobi_1d_B4_out_stall_out_0),
        .in_i_valid(bb_jacobi_1d_B3_out_valid_out_0),
        .in_i_data_0_tpl(bb_jacobi_1d_B3_out_c0_exe3),
        .out_o_stall(bb_jacobi_1d_B4_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_jacobi_1d_B4_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_jacobi_1d_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_jacobi_1d6_sr(BLACKBOX,35)
    jacobi_1d_i_llvm_fpga_pipeline_keep_going_6_sr thei_llvm_fpga_pipeline_keep_going_jacobi_1d6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_jacobi_1d6_valid_fifo_out_stall_out),
        .in_i_valid(bb_jacobi_1d_B3_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_jacobi_1d6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_jacobi_1d6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B3(BLACKBOX,5)
    jacobi_1d_bb_B3 thebb_jacobi_1d_B3 (
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_jacobi_1d_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_0_0(bb_jacobi_1d_B1_start_out_intel_reserved_ffwd_0_0),
        .in_notcmp819_0(GND_q),
        .in_notcmp819_1(bb_jacobi_1d_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_jacobi_1d6_sr_out_o_stall),
        .in_stall_in_0(bb_jacobi_1d_B4_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_jacobi_1d5_jacobi_1d_avm_readdata(in_unnamed_jacobi_1d5_jacobi_1d_avm_readdata),
        .in_unnamed_jacobi_1d5_jacobi_1d_avm_readdatavalid(in_unnamed_jacobi_1d5_jacobi_1d_avm_readdatavalid),
        .in_unnamed_jacobi_1d5_jacobi_1d_avm_waitrequest(in_unnamed_jacobi_1d5_jacobi_1d_avm_waitrequest),
        .in_unnamed_jacobi_1d5_jacobi_1d_avm_writeack(in_unnamed_jacobi_1d5_jacobi_1d_avm_writeack),
        .in_unnamed_jacobi_1d6_jacobi_1d_avm_readdata(in_unnamed_jacobi_1d6_jacobi_1d_avm_readdata),
        .in_unnamed_jacobi_1d6_jacobi_1d_avm_readdatavalid(in_unnamed_jacobi_1d6_jacobi_1d_avm_readdatavalid),
        .in_unnamed_jacobi_1d6_jacobi_1d_avm_waitrequest(in_unnamed_jacobi_1d6_jacobi_1d_avm_waitrequest),
        .in_unnamed_jacobi_1d6_jacobi_1d_avm_writeack(in_unnamed_jacobi_1d6_jacobi_1d_avm_writeack),
        .in_unnamed_jacobi_1d7_jacobi_1d_avm_readdata(in_unnamed_jacobi_1d7_jacobi_1d_avm_readdata),
        .in_unnamed_jacobi_1d7_jacobi_1d_avm_readdatavalid(in_unnamed_jacobi_1d7_jacobi_1d_avm_readdatavalid),
        .in_unnamed_jacobi_1d7_jacobi_1d_avm_waitrequest(in_unnamed_jacobi_1d7_jacobi_1d_avm_waitrequest),
        .in_unnamed_jacobi_1d7_jacobi_1d_avm_writeack(in_unnamed_jacobi_1d7_jacobi_1d_avm_writeack),
        .in_unnamed_jacobi_1d8_jacobi_1d_avm_readdata(in_unnamed_jacobi_1d8_jacobi_1d_avm_readdata),
        .in_unnamed_jacobi_1d8_jacobi_1d_avm_readdatavalid(in_unnamed_jacobi_1d8_jacobi_1d_avm_readdatavalid),
        .in_unnamed_jacobi_1d8_jacobi_1d_avm_waitrequest(in_unnamed_jacobi_1d8_jacobi_1d_avm_waitrequest),
        .in_unnamed_jacobi_1d8_jacobi_1d_avm_writeack(in_unnamed_jacobi_1d8_jacobi_1d_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_jacobi_1d6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_jacobi_1d_B3_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe3(bb_jacobi_1d_B3_out_c0_exe3),
        .out_exiting_stall_out(bb_jacobi_1d_B3_out_exiting_stall_out),
        .out_exiting_valid_out(bb_jacobi_1d_B3_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_jacobi_1d_B3_out_pipeline_valid_out),
        .out_stall_in_0(bb_jacobi_1d_B3_out_stall_in_0),
        .out_stall_out_0(bb_jacobi_1d_B3_out_stall_out_0),
        .out_stall_out_1(bb_jacobi_1d_B3_out_stall_out_1),
        .out_unnamed_jacobi_1d5_jacobi_1d_avm_address(bb_jacobi_1d_B3_out_unnamed_jacobi_1d5_jacobi_1d_avm_address),
        .out_unnamed_jacobi_1d5_jacobi_1d_avm_burstcount(bb_jacobi_1d_B3_out_unnamed_jacobi_1d5_jacobi_1d_avm_burstcount),
        .out_unnamed_jacobi_1d5_jacobi_1d_avm_byteenable(bb_jacobi_1d_B3_out_unnamed_jacobi_1d5_jacobi_1d_avm_byteenable),
        .out_unnamed_jacobi_1d5_jacobi_1d_avm_enable(bb_jacobi_1d_B3_out_unnamed_jacobi_1d5_jacobi_1d_avm_enable),
        .out_unnamed_jacobi_1d5_jacobi_1d_avm_read(bb_jacobi_1d_B3_out_unnamed_jacobi_1d5_jacobi_1d_avm_read),
        .out_unnamed_jacobi_1d5_jacobi_1d_avm_write(bb_jacobi_1d_B3_out_unnamed_jacobi_1d5_jacobi_1d_avm_write),
        .out_unnamed_jacobi_1d5_jacobi_1d_avm_writedata(bb_jacobi_1d_B3_out_unnamed_jacobi_1d5_jacobi_1d_avm_writedata),
        .out_unnamed_jacobi_1d6_jacobi_1d_avm_address(bb_jacobi_1d_B3_out_unnamed_jacobi_1d6_jacobi_1d_avm_address),
        .out_unnamed_jacobi_1d6_jacobi_1d_avm_burstcount(bb_jacobi_1d_B3_out_unnamed_jacobi_1d6_jacobi_1d_avm_burstcount),
        .out_unnamed_jacobi_1d6_jacobi_1d_avm_byteenable(bb_jacobi_1d_B3_out_unnamed_jacobi_1d6_jacobi_1d_avm_byteenable),
        .out_unnamed_jacobi_1d6_jacobi_1d_avm_enable(bb_jacobi_1d_B3_out_unnamed_jacobi_1d6_jacobi_1d_avm_enable),
        .out_unnamed_jacobi_1d6_jacobi_1d_avm_read(bb_jacobi_1d_B3_out_unnamed_jacobi_1d6_jacobi_1d_avm_read),
        .out_unnamed_jacobi_1d6_jacobi_1d_avm_write(bb_jacobi_1d_B3_out_unnamed_jacobi_1d6_jacobi_1d_avm_write),
        .out_unnamed_jacobi_1d6_jacobi_1d_avm_writedata(bb_jacobi_1d_B3_out_unnamed_jacobi_1d6_jacobi_1d_avm_writedata),
        .out_unnamed_jacobi_1d7_jacobi_1d_avm_address(bb_jacobi_1d_B3_out_unnamed_jacobi_1d7_jacobi_1d_avm_address),
        .out_unnamed_jacobi_1d7_jacobi_1d_avm_burstcount(bb_jacobi_1d_B3_out_unnamed_jacobi_1d7_jacobi_1d_avm_burstcount),
        .out_unnamed_jacobi_1d7_jacobi_1d_avm_byteenable(bb_jacobi_1d_B3_out_unnamed_jacobi_1d7_jacobi_1d_avm_byteenable),
        .out_unnamed_jacobi_1d7_jacobi_1d_avm_enable(bb_jacobi_1d_B3_out_unnamed_jacobi_1d7_jacobi_1d_avm_enable),
        .out_unnamed_jacobi_1d7_jacobi_1d_avm_read(bb_jacobi_1d_B3_out_unnamed_jacobi_1d7_jacobi_1d_avm_read),
        .out_unnamed_jacobi_1d7_jacobi_1d_avm_write(bb_jacobi_1d_B3_out_unnamed_jacobi_1d7_jacobi_1d_avm_write),
        .out_unnamed_jacobi_1d7_jacobi_1d_avm_writedata(bb_jacobi_1d_B3_out_unnamed_jacobi_1d7_jacobi_1d_avm_writedata),
        .out_unnamed_jacobi_1d8_jacobi_1d_avm_address(bb_jacobi_1d_B3_out_unnamed_jacobi_1d8_jacobi_1d_avm_address),
        .out_unnamed_jacobi_1d8_jacobi_1d_avm_burstcount(bb_jacobi_1d_B3_out_unnamed_jacobi_1d8_jacobi_1d_avm_burstcount),
        .out_unnamed_jacobi_1d8_jacobi_1d_avm_byteenable(bb_jacobi_1d_B3_out_unnamed_jacobi_1d8_jacobi_1d_avm_byteenable),
        .out_unnamed_jacobi_1d8_jacobi_1d_avm_enable(bb_jacobi_1d_B3_out_unnamed_jacobi_1d8_jacobi_1d_avm_enable),
        .out_unnamed_jacobi_1d8_jacobi_1d_avm_read(bb_jacobi_1d_B3_out_unnamed_jacobi_1d8_jacobi_1d_avm_read),
        .out_unnamed_jacobi_1d8_jacobi_1d_avm_write(bb_jacobi_1d_B3_out_unnamed_jacobi_1d8_jacobi_1d_avm_write),
        .out_unnamed_jacobi_1d8_jacobi_1d_avm_writedata(bb_jacobi_1d_B3_out_unnamed_jacobi_1d8_jacobi_1d_avm_writedata),
        .out_valid_in_0(bb_jacobi_1d_B3_out_valid_in_0),
        .out_valid_in_1(bb_jacobi_1d_B3_out_valid_in_1),
        .out_valid_out_0(bb_jacobi_1d_B3_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B3_sr_1_aunroll_x(BLACKBOX,115)
    jacobi_1d_bb_B3_sr_1 thebb_jacobi_1d_B3_sr_1_aunroll_x (
        .in_i_stall(bb_jacobi_1d_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_jacobi_1d1_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_jacobi_1d_B2_out_c0_exe2),
        .out_o_stall(bb_jacobi_1d_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_jacobi_1d_B3_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_jacobi_1d_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_jacobi_1d_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_jacobi_1d1(BLACKBOX,72)
    jacobi_1d_loop_limiter_1 theloop_limiter_jacobi_1d1 (
        .in_i_stall(bb_jacobi_1d_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_jacobi_1d_B3_out_exiting_stall_out),
        .in_i_valid(bb_jacobi_1d_B2_out_valid_out_0),
        .in_i_valid_exit(bb_jacobi_1d_B3_out_exiting_valid_out),
        .out_o_stall(loop_limiter_jacobi_1d1_out_o_stall),
        .out_o_valid(loop_limiter_jacobi_1d1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going10_jacobi_1d2_sr(BLACKBOX,31)
    jacobi_1d_i_llvm_fpga_pipeline_keep_going10_2_sr thei_llvm_fpga_pipeline_keep_going10_jacobi_1d2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going10_jacobi_1d2_valid_fifo_out_stall_out),
        .in_i_valid(bb_jacobi_1d_B2_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going10_jacobi_1d2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going10_jacobi_1d2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B2(BLACKBOX,4)
    jacobi_1d_bb_B2 thebb_jacobi_1d_B2 (
        .in_forked17_0(GND_q),
        .in_forked17_1(bb_jacobi_1d_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going10_jacobi_1d2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_jacobi_1d1_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going10_jacobi_1d2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_jacobi_1d_B2_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2(bb_jacobi_1d_B2_out_c0_exe2),
        .out_exiting_stall_out(bb_jacobi_1d_B2_out_exiting_stall_out),
        .out_exiting_valid_out(bb_jacobi_1d_B2_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_jacobi_1d_B2_out_pipeline_valid_out),
        .out_stall_out_0(bb_jacobi_1d_B2_out_stall_out_0),
        .out_stall_out_1(bb_jacobi_1d_B2_out_stall_out_1),
        .out_valid_in_0(bb_jacobi_1d_B2_out_valid_in_0),
        .out_valid_in_1(bb_jacobi_1d_B2_out_valid_in_1),
        .out_valid_out_0(bb_jacobi_1d_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B2_sr_1_aunroll_x(BLACKBOX,114)
    jacobi_1d_bb_B2_sr_1 thebb_jacobi_1d_B2_sr_1_aunroll_x (
        .in_i_stall(bb_jacobi_1d_B2_out_stall_out_1),
        .in_i_valid(loop_limiter_jacobi_1d0_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_jacobi_1d_B2_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_jacobi_1d_B2_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_jacobi_1d_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_jacobi_1d0(BLACKBOX,71)
    jacobi_1d_loop_limiter_0 theloop_limiter_jacobi_1d0 (
        .in_i_stall(bb_jacobi_1d_B2_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_jacobi_1d_B2_out_exiting_stall_out),
        .in_i_valid(bb_jacobi_1d_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_jacobi_1d_B2_out_exiting_valid_out),
        .out_o_stall(loop_limiter_jacobi_1d0_out_o_stall),
        .out_o_valid(loop_limiter_jacobi_1d0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going14_jacobi_1d1_sr(BLACKBOX,33)
    jacobi_1d_i_llvm_fpga_pipeline_keep_going14_1_sr thei_llvm_fpga_pipeline_keep_going14_jacobi_1d1_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going14_jacobi_1d1_valid_fifo_out_stall_out),
        .in_i_valid(bb_jacobi_1d_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going14_jacobi_1d1_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going14_jacobi_1d1_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B1_start(BLACKBOX,3)
    jacobi_1d_bb_B1_start thebb_jacobi_1d_B1_start (
        .in_feedback_in_1(bb_jacobi_1d_B5_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_jacobi_1d_B5_out_feedback_valid_out_1),
        .in_flush(in_start),
        .in_iord_bl_call_jacobi_1d_i_fifodata(in_iord_bl_call_jacobi_1d_i_fifodata),
        .in_iord_bl_call_jacobi_1d_i_fifovalid(in_iord_bl_call_jacobi_1d_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going14_jacobi_1d1_sr_out_o_stall),
        .in_pre_pre1_jacobi_1d_avm_readdata(in_pre_pre1_jacobi_1d_avm_readdata),
        .in_pre_pre1_jacobi_1d_avm_readdatavalid(in_pre_pre1_jacobi_1d_avm_readdatavalid),
        .in_pre_pre1_jacobi_1d_avm_waitrequest(in_pre_pre1_jacobi_1d_avm_waitrequest),
        .in_pre_pre1_jacobi_1d_avm_writeack(in_pre_pre1_jacobi_1d_avm_writeack),
        .in_stall_in_0(loop_limiter_jacobi_1d0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going14_jacobi_1d1_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_jacobi_1d_B1_start_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_jacobi_1d_B1_start_out_intel_reserved_ffwd_0_0),
        .out_iord_bl_call_jacobi_1d_o_fifoalmost_full(bb_jacobi_1d_B1_start_out_iord_bl_call_jacobi_1d_o_fifoalmost_full),
        .out_iord_bl_call_jacobi_1d_o_fifoready(bb_jacobi_1d_B1_start_out_iord_bl_call_jacobi_1d_o_fifoready),
        .out_pipeline_valid_out(bb_jacobi_1d_B1_start_out_pipeline_valid_out),
        .out_pre_pre1_jacobi_1d_avm_address(bb_jacobi_1d_B1_start_out_pre_pre1_jacobi_1d_avm_address),
        .out_pre_pre1_jacobi_1d_avm_burstcount(bb_jacobi_1d_B1_start_out_pre_pre1_jacobi_1d_avm_burstcount),
        .out_pre_pre1_jacobi_1d_avm_byteenable(bb_jacobi_1d_B1_start_out_pre_pre1_jacobi_1d_avm_byteenable),
        .out_pre_pre1_jacobi_1d_avm_enable(bb_jacobi_1d_B1_start_out_pre_pre1_jacobi_1d_avm_enable),
        .out_pre_pre1_jacobi_1d_avm_read(bb_jacobi_1d_B1_start_out_pre_pre1_jacobi_1d_avm_read),
        .out_pre_pre1_jacobi_1d_avm_write(bb_jacobi_1d_B1_start_out_pre_pre1_jacobi_1d_avm_write),
        .out_pre_pre1_jacobi_1d_avm_writedata(bb_jacobi_1d_B1_start_out_pre_pre1_jacobi_1d_avm_writedata),
        .out_stall_out_0(bb_jacobi_1d_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_in_0(bb_jacobi_1d_B1_start_out_valid_in_0),
        .out_valid_in_1(bb_jacobi_1d_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_jacobi_1d_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B5(BLACKBOX,7)
    jacobi_1d_bb_B5 thebb_jacobi_1d_B5 (
        .in_feedback_stall_in_1(bb_jacobi_1d_B1_start_out_feedback_stall_out_1),
        .in_iowr_bl_return_jacobi_1d_i_fifoready(in_iowr_bl_return_jacobi_1d_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_jacobi_1d_B5_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_jacobi_1d_B5_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_jacobi_1d_B5_out_feedback_valid_out_1),
        .out_iowr_bl_return_jacobi_1d_o_fifodata(bb_jacobi_1d_B5_out_iowr_bl_return_jacobi_1d_o_fifodata),
        .out_iowr_bl_return_jacobi_1d_o_fifovalid(bb_jacobi_1d_B5_out_iowr_bl_return_jacobi_1d_o_fifovalid),
        .out_stall_in_0(bb_jacobi_1d_B5_out_stall_in_0),
        .out_stall_out_0(bb_jacobi_1d_B5_out_stall_out_0),
        .out_valid_out_0(bb_jacobi_1d_B5_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // jacobi_1d_B1_start_x(EXTIFACE,68)
    assign jacobi_1d_B1_start_x_i_capture = GND_q;
    assign jacobi_1d_B1_start_x_i_clear = GND_q;
    assign jacobi_1d_B1_start_x_i_enable = VCC_q;
    assign jacobi_1d_B1_start_x_i_shift = GND_q;
    assign jacobi_1d_B1_start_x_i_stall_pred = GND_q;
    assign jacobi_1d_B1_start_x_i_stall_succ = bb_jacobi_1d_B5_out_stall_in_0;
    assign jacobi_1d_B1_start_x_i_valid_loop = bb_jacobi_1d_B1_start_out_valid_in_0;
    assign jacobi_1d_B1_start_x_i_valid_pred = bb_jacobi_1d_B1_start_out_valid_in_1;
    assign jacobi_1d_B1_start_x_i_valid_succ = bb_jacobi_1d_B5_out_valid_out_0;
    assign jacobi_1d_B1_start_x_i_capture_bitsignaltemp = jacobi_1d_B1_start_x_i_capture[0];
    assign jacobi_1d_B1_start_x_i_clear_bitsignaltemp = jacobi_1d_B1_start_x_i_clear[0];
    assign jacobi_1d_B1_start_x_i_enable_bitsignaltemp = jacobi_1d_B1_start_x_i_enable[0];
    assign jacobi_1d_B1_start_x_i_shift_bitsignaltemp = jacobi_1d_B1_start_x_i_shift[0];
    assign jacobi_1d_B1_start_x_i_stall_pred_bitsignaltemp = jacobi_1d_B1_start_x_i_stall_pred[0];
    assign jacobi_1d_B1_start_x_i_stall_succ_bitsignaltemp = jacobi_1d_B1_start_x_i_stall_succ[0];
    assign jacobi_1d_B1_start_x_i_valid_loop_bitsignaltemp = jacobi_1d_B1_start_x_i_valid_loop[0];
    assign jacobi_1d_B1_start_x_i_valid_pred_bitsignaltemp = jacobi_1d_B1_start_x_i_valid_pred[0];
    assign jacobi_1d_B1_start_x_i_valid_succ_bitsignaltemp = jacobi_1d_B1_start_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("jacobi_1d.B1.start")
    ) thejacobi_1d_B1_start_x (
        .i_capture(jacobi_1d_B1_start_x_i_capture_bitsignaltemp),
        .i_clear(jacobi_1d_B1_start_x_i_clear_bitsignaltemp),
        .i_enable(jacobi_1d_B1_start_x_i_enable_bitsignaltemp),
        .i_shift(jacobi_1d_B1_start_x_i_shift_bitsignaltemp),
        .i_stall_pred(jacobi_1d_B1_start_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(jacobi_1d_B1_start_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(jacobi_1d_B1_start_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(jacobi_1d_B1_start_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(jacobi_1d_B1_start_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // jacobi_1d_B2_x(EXTIFACE,69)
    assign jacobi_1d_B2_x_i_capture = GND_q;
    assign jacobi_1d_B2_x_i_clear = GND_q;
    assign jacobi_1d_B2_x_i_enable = VCC_q;
    assign jacobi_1d_B2_x_i_shift = GND_q;
    assign jacobi_1d_B2_x_i_stall_pred = loop_limiter_jacobi_1d0_out_o_stall;
    assign jacobi_1d_B2_x_i_stall_succ = bb_jacobi_1d_B4_out_stall_in_0;
    assign jacobi_1d_B2_x_i_valid_loop = bb_jacobi_1d_B2_out_valid_in_0;
    assign jacobi_1d_B2_x_i_valid_pred = bb_jacobi_1d_B2_out_valid_in_1;
    assign jacobi_1d_B2_x_i_valid_succ = bb_jacobi_1d_B4_out_valid_out_0;
    assign jacobi_1d_B2_x_i_capture_bitsignaltemp = jacobi_1d_B2_x_i_capture[0];
    assign jacobi_1d_B2_x_i_clear_bitsignaltemp = jacobi_1d_B2_x_i_clear[0];
    assign jacobi_1d_B2_x_i_enable_bitsignaltemp = jacobi_1d_B2_x_i_enable[0];
    assign jacobi_1d_B2_x_i_shift_bitsignaltemp = jacobi_1d_B2_x_i_shift[0];
    assign jacobi_1d_B2_x_i_stall_pred_bitsignaltemp = jacobi_1d_B2_x_i_stall_pred[0];
    assign jacobi_1d_B2_x_i_stall_succ_bitsignaltemp = jacobi_1d_B2_x_i_stall_succ[0];
    assign jacobi_1d_B2_x_i_valid_loop_bitsignaltemp = jacobi_1d_B2_x_i_valid_loop[0];
    assign jacobi_1d_B2_x_i_valid_pred_bitsignaltemp = jacobi_1d_B2_x_i_valid_pred[0];
    assign jacobi_1d_B2_x_i_valid_succ_bitsignaltemp = jacobi_1d_B2_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("jacobi_1d.B2")
    ) thejacobi_1d_B2_x (
        .i_capture(jacobi_1d_B2_x_i_capture_bitsignaltemp),
        .i_clear(jacobi_1d_B2_x_i_clear_bitsignaltemp),
        .i_enable(jacobi_1d_B2_x_i_enable_bitsignaltemp),
        .i_shift(jacobi_1d_B2_x_i_shift_bitsignaltemp),
        .i_stall_pred(jacobi_1d_B2_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(jacobi_1d_B2_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(jacobi_1d_B2_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(jacobi_1d_B2_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(jacobi_1d_B2_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // jacobi_1d_B3_x(EXTIFACE,70)
    assign jacobi_1d_B3_x_i_capture = GND_q;
    assign jacobi_1d_B3_x_i_clear = GND_q;
    assign jacobi_1d_B3_x_i_enable = VCC_q;
    assign jacobi_1d_B3_x_i_shift = GND_q;
    assign jacobi_1d_B3_x_i_stall_pred = loop_limiter_jacobi_1d1_out_o_stall;
    assign jacobi_1d_B3_x_i_stall_succ = bb_jacobi_1d_B3_out_stall_in_0;
    assign jacobi_1d_B3_x_i_valid_loop = bb_jacobi_1d_B3_out_valid_in_0;
    assign jacobi_1d_B3_x_i_valid_pred = bb_jacobi_1d_B3_out_valid_in_1;
    assign jacobi_1d_B3_x_i_valid_succ = bb_jacobi_1d_B3_out_valid_out_0;
    assign jacobi_1d_B3_x_i_capture_bitsignaltemp = jacobi_1d_B3_x_i_capture[0];
    assign jacobi_1d_B3_x_i_clear_bitsignaltemp = jacobi_1d_B3_x_i_clear[0];
    assign jacobi_1d_B3_x_i_enable_bitsignaltemp = jacobi_1d_B3_x_i_enable[0];
    assign jacobi_1d_B3_x_i_shift_bitsignaltemp = jacobi_1d_B3_x_i_shift[0];
    assign jacobi_1d_B3_x_i_stall_pred_bitsignaltemp = jacobi_1d_B3_x_i_stall_pred[0];
    assign jacobi_1d_B3_x_i_stall_succ_bitsignaltemp = jacobi_1d_B3_x_i_stall_succ[0];
    assign jacobi_1d_B3_x_i_valid_loop_bitsignaltemp = jacobi_1d_B3_x_i_valid_loop[0];
    assign jacobi_1d_B3_x_i_valid_pred_bitsignaltemp = jacobi_1d_B3_x_i_valid_pred[0];
    assign jacobi_1d_B3_x_i_valid_succ_bitsignaltemp = jacobi_1d_B3_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("jacobi_1d.B3")
    ) thejacobi_1d_B3_x (
        .i_capture(jacobi_1d_B3_x_i_capture_bitsignaltemp),
        .i_clear(jacobi_1d_B3_x_i_clear_bitsignaltemp),
        .i_enable(jacobi_1d_B3_x_i_enable_bitsignaltemp),
        .i_shift(jacobi_1d_B3_x_i_shift_bitsignaltemp),
        .i_stall_pred(jacobi_1d_B3_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(jacobi_1d_B3_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(jacobi_1d_B3_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(jacobi_1d_B3_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(jacobi_1d_B3_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_jacobi_1d_o_fifoalmost_full(GPOUT,73)
    assign out_iord_bl_call_jacobi_1d_o_fifoalmost_full = bb_jacobi_1d_B1_start_out_iord_bl_call_jacobi_1d_o_fifoalmost_full;

    // out_iord_bl_call_jacobi_1d_o_fifoready(GPOUT,74)
    assign out_iord_bl_call_jacobi_1d_o_fifoready = bb_jacobi_1d_B1_start_out_iord_bl_call_jacobi_1d_o_fifoready;

    // out_iowr_bl_return_jacobi_1d_o_fifodata(GPOUT,75)
    assign out_iowr_bl_return_jacobi_1d_o_fifodata = bb_jacobi_1d_B5_out_iowr_bl_return_jacobi_1d_o_fifodata;

    // out_iowr_bl_return_jacobi_1d_o_fifovalid(GPOUT,76)
    assign out_iowr_bl_return_jacobi_1d_o_fifovalid = bb_jacobi_1d_B5_out_iowr_bl_return_jacobi_1d_o_fifovalid;

    // out_pre_pre1_jacobi_1d_avm_address(GPOUT,77)
    assign out_pre_pre1_jacobi_1d_avm_address = bb_jacobi_1d_B1_start_out_pre_pre1_jacobi_1d_avm_address;

    // out_pre_pre1_jacobi_1d_avm_burstcount(GPOUT,78)
    assign out_pre_pre1_jacobi_1d_avm_burstcount = bb_jacobi_1d_B1_start_out_pre_pre1_jacobi_1d_avm_burstcount;

    // out_pre_pre1_jacobi_1d_avm_byteenable(GPOUT,79)
    assign out_pre_pre1_jacobi_1d_avm_byteenable = bb_jacobi_1d_B1_start_out_pre_pre1_jacobi_1d_avm_byteenable;

    // out_pre_pre1_jacobi_1d_avm_enable(GPOUT,80)
    assign out_pre_pre1_jacobi_1d_avm_enable = bb_jacobi_1d_B1_start_out_pre_pre1_jacobi_1d_avm_enable;

    // out_pre_pre1_jacobi_1d_avm_read(GPOUT,81)
    assign out_pre_pre1_jacobi_1d_avm_read = bb_jacobi_1d_B1_start_out_pre_pre1_jacobi_1d_avm_read;

    // out_pre_pre1_jacobi_1d_avm_write(GPOUT,82)
    assign out_pre_pre1_jacobi_1d_avm_write = bb_jacobi_1d_B1_start_out_pre_pre1_jacobi_1d_avm_write;

    // out_pre_pre1_jacobi_1d_avm_writedata(GPOUT,83)
    assign out_pre_pre1_jacobi_1d_avm_writedata = bb_jacobi_1d_B1_start_out_pre_pre1_jacobi_1d_avm_writedata;

    // bb_jacobi_1d_B0_runOnce(BLACKBOX,2)
    jacobi_1d_bb_B0_runOnce thebb_jacobi_1d_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_jacobi_1d_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,84)
    assign out_stall_out = bb_jacobi_1d_B0_runOnce_out_stall_out_0;

    // out_unnamed_jacobi_1d5_jacobi_1d_avm_address(GPOUT,85)
    assign out_unnamed_jacobi_1d5_jacobi_1d_avm_address = bb_jacobi_1d_B3_out_unnamed_jacobi_1d5_jacobi_1d_avm_address;

    // out_unnamed_jacobi_1d5_jacobi_1d_avm_burstcount(GPOUT,86)
    assign out_unnamed_jacobi_1d5_jacobi_1d_avm_burstcount = bb_jacobi_1d_B3_out_unnamed_jacobi_1d5_jacobi_1d_avm_burstcount;

    // out_unnamed_jacobi_1d5_jacobi_1d_avm_byteenable(GPOUT,87)
    assign out_unnamed_jacobi_1d5_jacobi_1d_avm_byteenable = bb_jacobi_1d_B3_out_unnamed_jacobi_1d5_jacobi_1d_avm_byteenable;

    // out_unnamed_jacobi_1d5_jacobi_1d_avm_enable(GPOUT,88)
    assign out_unnamed_jacobi_1d5_jacobi_1d_avm_enable = bb_jacobi_1d_B3_out_unnamed_jacobi_1d5_jacobi_1d_avm_enable;

    // out_unnamed_jacobi_1d5_jacobi_1d_avm_read(GPOUT,89)
    assign out_unnamed_jacobi_1d5_jacobi_1d_avm_read = bb_jacobi_1d_B3_out_unnamed_jacobi_1d5_jacobi_1d_avm_read;

    // out_unnamed_jacobi_1d5_jacobi_1d_avm_write(GPOUT,90)
    assign out_unnamed_jacobi_1d5_jacobi_1d_avm_write = bb_jacobi_1d_B3_out_unnamed_jacobi_1d5_jacobi_1d_avm_write;

    // out_unnamed_jacobi_1d5_jacobi_1d_avm_writedata(GPOUT,91)
    assign out_unnamed_jacobi_1d5_jacobi_1d_avm_writedata = bb_jacobi_1d_B3_out_unnamed_jacobi_1d5_jacobi_1d_avm_writedata;

    // out_unnamed_jacobi_1d6_jacobi_1d_avm_address(GPOUT,92)
    assign out_unnamed_jacobi_1d6_jacobi_1d_avm_address = bb_jacobi_1d_B3_out_unnamed_jacobi_1d6_jacobi_1d_avm_address;

    // out_unnamed_jacobi_1d6_jacobi_1d_avm_burstcount(GPOUT,93)
    assign out_unnamed_jacobi_1d6_jacobi_1d_avm_burstcount = bb_jacobi_1d_B3_out_unnamed_jacobi_1d6_jacobi_1d_avm_burstcount;

    // out_unnamed_jacobi_1d6_jacobi_1d_avm_byteenable(GPOUT,94)
    assign out_unnamed_jacobi_1d6_jacobi_1d_avm_byteenable = bb_jacobi_1d_B3_out_unnamed_jacobi_1d6_jacobi_1d_avm_byteenable;

    // out_unnamed_jacobi_1d6_jacobi_1d_avm_enable(GPOUT,95)
    assign out_unnamed_jacobi_1d6_jacobi_1d_avm_enable = bb_jacobi_1d_B3_out_unnamed_jacobi_1d6_jacobi_1d_avm_enable;

    // out_unnamed_jacobi_1d6_jacobi_1d_avm_read(GPOUT,96)
    assign out_unnamed_jacobi_1d6_jacobi_1d_avm_read = bb_jacobi_1d_B3_out_unnamed_jacobi_1d6_jacobi_1d_avm_read;

    // out_unnamed_jacobi_1d6_jacobi_1d_avm_write(GPOUT,97)
    assign out_unnamed_jacobi_1d6_jacobi_1d_avm_write = bb_jacobi_1d_B3_out_unnamed_jacobi_1d6_jacobi_1d_avm_write;

    // out_unnamed_jacobi_1d6_jacobi_1d_avm_writedata(GPOUT,98)
    assign out_unnamed_jacobi_1d6_jacobi_1d_avm_writedata = bb_jacobi_1d_B3_out_unnamed_jacobi_1d6_jacobi_1d_avm_writedata;

    // out_unnamed_jacobi_1d7_jacobi_1d_avm_address(GPOUT,99)
    assign out_unnamed_jacobi_1d7_jacobi_1d_avm_address = bb_jacobi_1d_B3_out_unnamed_jacobi_1d7_jacobi_1d_avm_address;

    // out_unnamed_jacobi_1d7_jacobi_1d_avm_burstcount(GPOUT,100)
    assign out_unnamed_jacobi_1d7_jacobi_1d_avm_burstcount = bb_jacobi_1d_B3_out_unnamed_jacobi_1d7_jacobi_1d_avm_burstcount;

    // out_unnamed_jacobi_1d7_jacobi_1d_avm_byteenable(GPOUT,101)
    assign out_unnamed_jacobi_1d7_jacobi_1d_avm_byteenable = bb_jacobi_1d_B3_out_unnamed_jacobi_1d7_jacobi_1d_avm_byteenable;

    // out_unnamed_jacobi_1d7_jacobi_1d_avm_enable(GPOUT,102)
    assign out_unnamed_jacobi_1d7_jacobi_1d_avm_enable = bb_jacobi_1d_B3_out_unnamed_jacobi_1d7_jacobi_1d_avm_enable;

    // out_unnamed_jacobi_1d7_jacobi_1d_avm_read(GPOUT,103)
    assign out_unnamed_jacobi_1d7_jacobi_1d_avm_read = bb_jacobi_1d_B3_out_unnamed_jacobi_1d7_jacobi_1d_avm_read;

    // out_unnamed_jacobi_1d7_jacobi_1d_avm_write(GPOUT,104)
    assign out_unnamed_jacobi_1d7_jacobi_1d_avm_write = bb_jacobi_1d_B3_out_unnamed_jacobi_1d7_jacobi_1d_avm_write;

    // out_unnamed_jacobi_1d7_jacobi_1d_avm_writedata(GPOUT,105)
    assign out_unnamed_jacobi_1d7_jacobi_1d_avm_writedata = bb_jacobi_1d_B3_out_unnamed_jacobi_1d7_jacobi_1d_avm_writedata;

    // out_unnamed_jacobi_1d8_jacobi_1d_avm_address(GPOUT,106)
    assign out_unnamed_jacobi_1d8_jacobi_1d_avm_address = bb_jacobi_1d_B3_out_unnamed_jacobi_1d8_jacobi_1d_avm_address;

    // out_unnamed_jacobi_1d8_jacobi_1d_avm_burstcount(GPOUT,107)
    assign out_unnamed_jacobi_1d8_jacobi_1d_avm_burstcount = bb_jacobi_1d_B3_out_unnamed_jacobi_1d8_jacobi_1d_avm_burstcount;

    // out_unnamed_jacobi_1d8_jacobi_1d_avm_byteenable(GPOUT,108)
    assign out_unnamed_jacobi_1d8_jacobi_1d_avm_byteenable = bb_jacobi_1d_B3_out_unnamed_jacobi_1d8_jacobi_1d_avm_byteenable;

    // out_unnamed_jacobi_1d8_jacobi_1d_avm_enable(GPOUT,109)
    assign out_unnamed_jacobi_1d8_jacobi_1d_avm_enable = bb_jacobi_1d_B3_out_unnamed_jacobi_1d8_jacobi_1d_avm_enable;

    // out_unnamed_jacobi_1d8_jacobi_1d_avm_read(GPOUT,110)
    assign out_unnamed_jacobi_1d8_jacobi_1d_avm_read = bb_jacobi_1d_B3_out_unnamed_jacobi_1d8_jacobi_1d_avm_read;

    // out_unnamed_jacobi_1d8_jacobi_1d_avm_write(GPOUT,111)
    assign out_unnamed_jacobi_1d8_jacobi_1d_avm_write = bb_jacobi_1d_B3_out_unnamed_jacobi_1d8_jacobi_1d_avm_write;

    // out_unnamed_jacobi_1d8_jacobi_1d_avm_writedata(GPOUT,112)
    assign out_unnamed_jacobi_1d8_jacobi_1d_avm_writedata = bb_jacobi_1d_B3_out_unnamed_jacobi_1d8_jacobi_1d_avm_writedata;

    // out_valid_out(GPOUT,113)
    assign out_valid_out = GND_q;

endmodule
