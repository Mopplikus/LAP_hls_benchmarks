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

// SystemVerilog created from matvec_function
// Created for function/kernel matvec
// SystemVerilog created on Fri Apr  7 16:55:33 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module matvec_function (
    input wire [63:0] in_arg_M,
    input wire [63:0] in_arg_Out0,
    input wire [63:0] in_arg_V,
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_return,
    input wire [191:0] in_iord_bl_call_matvec_i_fifodata,
    input wire [0:0] in_iord_bl_call_matvec_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_matvec_i_fifoready,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [31:0] in_unnamed_matvec3_matvec_avm_readdata,
    input wire [0:0] in_unnamed_matvec3_matvec_avm_readdatavalid,
    input wire [0:0] in_unnamed_matvec3_matvec_avm_waitrequest,
    input wire [0:0] in_unnamed_matvec3_matvec_avm_writeack,
    input wire [31:0] in_unnamed_matvec4_matvec_avm_readdata,
    input wire [0:0] in_unnamed_matvec4_matvec_avm_readdatavalid,
    input wire [0:0] in_unnamed_matvec4_matvec_avm_waitrequest,
    input wire [0:0] in_unnamed_matvec4_matvec_avm_writeack,
    input wire [31:0] in_unnamed_matvec5_matvec_avm_readdata,
    input wire [0:0] in_unnamed_matvec5_matvec_avm_readdatavalid,
    input wire [0:0] in_unnamed_matvec5_matvec_avm_waitrequest,
    input wire [0:0] in_unnamed_matvec5_matvec_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_matvec_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_matvec_o_fifoready,
    output wire [0:0] out_iowr_bl_return_matvec_o_fifodata,
    output wire [0:0] out_iowr_bl_return_matvec_o_fifovalid,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_matvec3_matvec_avm_address,
    output wire [0:0] out_unnamed_matvec3_matvec_avm_burstcount,
    output wire [3:0] out_unnamed_matvec3_matvec_avm_byteenable,
    output wire [0:0] out_unnamed_matvec3_matvec_avm_enable,
    output wire [0:0] out_unnamed_matvec3_matvec_avm_read,
    output wire [0:0] out_unnamed_matvec3_matvec_avm_write,
    output wire [31:0] out_unnamed_matvec3_matvec_avm_writedata,
    output wire [31:0] out_unnamed_matvec4_matvec_avm_address,
    output wire [0:0] out_unnamed_matvec4_matvec_avm_burstcount,
    output wire [3:0] out_unnamed_matvec4_matvec_avm_byteenable,
    output wire [0:0] out_unnamed_matvec4_matvec_avm_enable,
    output wire [0:0] out_unnamed_matvec4_matvec_avm_read,
    output wire [0:0] out_unnamed_matvec4_matvec_avm_write,
    output wire [31:0] out_unnamed_matvec4_matvec_avm_writedata,
    output wire [31:0] out_unnamed_matvec5_matvec_avm_address,
    output wire [0:0] out_unnamed_matvec5_matvec_avm_burstcount,
    output wire [3:0] out_unnamed_matvec5_matvec_avm_byteenable,
    output wire [0:0] out_unnamed_matvec5_matvec_avm_enable,
    output wire [0:0] out_unnamed_matvec5_matvec_avm_read,
    output wire [0:0] out_unnamed_matvec5_matvec_avm_write,
    output wire [31:0] out_unnamed_matvec5_matvec_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_matvec_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_matvec_B1_start_out_iord_bl_call_matvec_o_fifoalmost_full;
    wire [0:0] bb_matvec_B1_start_out_iord_bl_call_matvec_o_fifoready;
    wire [0:0] bb_matvec_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_matvec_B1_start_out_stall_out_0;
    wire [0:0] bb_matvec_B1_start_out_valid_in_0;
    wire [0:0] bb_matvec_B1_start_out_valid_in_1;
    wire [0:0] bb_matvec_B1_start_out_valid_out_0;
    wire [0:0] bb_matvec_B2_out_c0_exe2;
    wire [31:0] bb_matvec_B2_out_c0_exe3;
    wire [0:0] bb_matvec_B2_out_exiting_stall_out;
    wire [0:0] bb_matvec_B2_out_exiting_valid_out;
    wire [0:0] bb_matvec_B2_out_pipeline_valid_out;
    wire [0:0] bb_matvec_B2_out_stall_out_0;
    wire [0:0] bb_matvec_B2_out_stall_out_1;
    wire [0:0] bb_matvec_B2_out_valid_in_0;
    wire [0:0] bb_matvec_B2_out_valid_in_1;
    wire [0:0] bb_matvec_B2_out_valid_out_0;
    wire [63:0] bb_matvec_B3_out_c0_exe233;
    wire [31:0] bb_matvec_B3_out_c0_exe334;
    wire [0:0] bb_matvec_B3_out_c0_exe5;
    wire [0:0] bb_matvec_B3_out_exiting_stall_out;
    wire [0:0] bb_matvec_B3_out_exiting_valid_out;
    wire [0:0] bb_matvec_B3_out_pipeline_valid_out;
    wire [0:0] bb_matvec_B3_out_stall_in_0;
    wire [0:0] bb_matvec_B3_out_stall_out_0;
    wire [0:0] bb_matvec_B3_out_stall_out_1;
    wire [31:0] bb_matvec_B3_out_unnamed_matvec3_matvec_avm_address;
    wire [0:0] bb_matvec_B3_out_unnamed_matvec3_matvec_avm_burstcount;
    wire [3:0] bb_matvec_B3_out_unnamed_matvec3_matvec_avm_byteenable;
    wire [0:0] bb_matvec_B3_out_unnamed_matvec3_matvec_avm_enable;
    wire [0:0] bb_matvec_B3_out_unnamed_matvec3_matvec_avm_read;
    wire [0:0] bb_matvec_B3_out_unnamed_matvec3_matvec_avm_write;
    wire [31:0] bb_matvec_B3_out_unnamed_matvec3_matvec_avm_writedata;
    wire [31:0] bb_matvec_B3_out_unnamed_matvec4_matvec_avm_address;
    wire [0:0] bb_matvec_B3_out_unnamed_matvec4_matvec_avm_burstcount;
    wire [3:0] bb_matvec_B3_out_unnamed_matvec4_matvec_avm_byteenable;
    wire [0:0] bb_matvec_B3_out_unnamed_matvec4_matvec_avm_enable;
    wire [0:0] bb_matvec_B3_out_unnamed_matvec4_matvec_avm_read;
    wire [0:0] bb_matvec_B3_out_unnamed_matvec4_matvec_avm_write;
    wire [31:0] bb_matvec_B3_out_unnamed_matvec4_matvec_avm_writedata;
    wire [0:0] bb_matvec_B3_out_valid_in_0;
    wire [0:0] bb_matvec_B3_out_valid_in_1;
    wire [0:0] bb_matvec_B3_out_valid_out_0;
    wire [0:0] bb_matvec_B4_out_stall_in_0;
    wire [0:0] bb_matvec_B4_out_stall_out_0;
    wire [31:0] bb_matvec_B4_out_unnamed_matvec5_matvec_avm_address;
    wire [0:0] bb_matvec_B4_out_unnamed_matvec5_matvec_avm_burstcount;
    wire [3:0] bb_matvec_B4_out_unnamed_matvec5_matvec_avm_byteenable;
    wire [0:0] bb_matvec_B4_out_unnamed_matvec5_matvec_avm_enable;
    wire [0:0] bb_matvec_B4_out_unnamed_matvec5_matvec_avm_read;
    wire [0:0] bb_matvec_B4_out_unnamed_matvec5_matvec_avm_write;
    wire [31:0] bb_matvec_B4_out_unnamed_matvec5_matvec_avm_writedata;
    wire [0:0] bb_matvec_B4_out_valid_out_0;
    wire [0:0] bb_matvec_B5_out_iowr_bl_return_matvec_o_fifodata;
    wire [0:0] bb_matvec_B5_out_iowr_bl_return_matvec_o_fifovalid;
    wire [0:0] bb_matvec_B5_out_stall_in_0;
    wire [0:0] bb_matvec_B5_out_stall_out_0;
    wire [0:0] bb_matvec_B5_out_valid_out_0;
    wire [1:0] c_i2_022_q;
    wire [31:0] c_i32_undef15_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going10_matvec1_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going10_matvec1_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going10_matvec1_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going10_matvec1_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going6_matvec2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going6_matvec2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going6_matvec2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going6_matvec2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_matvec6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_matvec6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_matvec6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_matvec6_valid_fifo_out_valid_out;
    wire [0:0] loop_limiter_matvec0_out_o_stall;
    wire [0:0] loop_limiter_matvec0_out_o_valid;
    wire [0:0] loop_limiter_matvec1_out_o_stall;
    wire [0:0] loop_limiter_matvec1_out_o_valid;
    wire [0:0] matvec_B1_start_x_i_capture;
    wire matvec_B1_start_x_i_capture_bitsignaltemp;
    wire [0:0] matvec_B1_start_x_i_clear;
    wire matvec_B1_start_x_i_clear_bitsignaltemp;
    wire [0:0] matvec_B1_start_x_i_enable;
    wire matvec_B1_start_x_i_enable_bitsignaltemp;
    wire [0:0] matvec_B1_start_x_i_shift;
    wire matvec_B1_start_x_i_shift_bitsignaltemp;
    wire [0:0] matvec_B1_start_x_i_stall_pred;
    wire matvec_B1_start_x_i_stall_pred_bitsignaltemp;
    wire [0:0] matvec_B1_start_x_i_stall_succ;
    wire matvec_B1_start_x_i_stall_succ_bitsignaltemp;
    wire [0:0] matvec_B1_start_x_i_valid_loop;
    wire matvec_B1_start_x_i_valid_loop_bitsignaltemp;
    wire [0:0] matvec_B1_start_x_i_valid_pred;
    wire matvec_B1_start_x_i_valid_pred_bitsignaltemp;
    wire [0:0] matvec_B1_start_x_i_valid_succ;
    wire matvec_B1_start_x_i_valid_succ_bitsignaltemp;
    wire [0:0] matvec_B2_x_i_capture;
    wire matvec_B2_x_i_capture_bitsignaltemp;
    wire [0:0] matvec_B2_x_i_clear;
    wire matvec_B2_x_i_clear_bitsignaltemp;
    wire [0:0] matvec_B2_x_i_enable;
    wire matvec_B2_x_i_enable_bitsignaltemp;
    wire [0:0] matvec_B2_x_i_shift;
    wire matvec_B2_x_i_shift_bitsignaltemp;
    wire [0:0] matvec_B2_x_i_stall_pred;
    wire matvec_B2_x_i_stall_pred_bitsignaltemp;
    wire [0:0] matvec_B2_x_i_stall_succ;
    wire matvec_B2_x_i_stall_succ_bitsignaltemp;
    wire [0:0] matvec_B2_x_i_valid_loop;
    wire matvec_B2_x_i_valid_loop_bitsignaltemp;
    wire [0:0] matvec_B2_x_i_valid_pred;
    wire matvec_B2_x_i_valid_pred_bitsignaltemp;
    wire [0:0] matvec_B2_x_i_valid_succ;
    wire matvec_B2_x_i_valid_succ_bitsignaltemp;
    wire [0:0] matvec_B3_x_i_capture;
    wire matvec_B3_x_i_capture_bitsignaltemp;
    wire [0:0] matvec_B3_x_i_clear;
    wire matvec_B3_x_i_clear_bitsignaltemp;
    wire [0:0] matvec_B3_x_i_enable;
    wire matvec_B3_x_i_enable_bitsignaltemp;
    wire [0:0] matvec_B3_x_i_shift;
    wire matvec_B3_x_i_shift_bitsignaltemp;
    wire [0:0] matvec_B3_x_i_stall_pred;
    wire matvec_B3_x_i_stall_pred_bitsignaltemp;
    wire [0:0] matvec_B3_x_i_stall_succ;
    wire matvec_B3_x_i_stall_succ_bitsignaltemp;
    wire [0:0] matvec_B3_x_i_valid_loop;
    wire matvec_B3_x_i_valid_loop_bitsignaltemp;
    wire [0:0] matvec_B3_x_i_valid_pred;
    wire matvec_B3_x_i_valid_pred_bitsignaltemp;
    wire [0:0] matvec_B3_x_i_valid_succ;
    wire matvec_B3_x_i_valid_succ_bitsignaltemp;
    wire [0:0] bb_matvec_B2_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_matvec_B2_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_matvec_B2_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_matvec_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_matvec_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_matvec_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_matvec_B3_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_matvec_B3_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_matvec_B4_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_matvec_B4_sr_0_aunroll_x_out_o_valid;
    wire [63:0] bb_matvec_B4_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_matvec_B4_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_matvec_B4_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_matvec_B5_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_matvec_B5_sr_0_aunroll_x_out_o_valid;


    // c_i2_022(CONSTANT,27)
    assign c_i2_022_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going10_matvec1_valid_fifo(BLACKBOX,33)
    matvec_i_llvm_fpga_pipeline_keep_going10_1_valid_fifo thei_llvm_fpga_pipeline_keep_going10_matvec1_valid_fifo (
        .in_data_in(c_i2_022_q),
        .in_stall_in(bb_matvec_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going10_matvec1_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going10_matvec1_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going10_matvec1_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going6_matvec2_valid_fifo(BLACKBOX,35)
    matvec_i_llvm_fpga_pipeline_keep_going6_2_valid_fifo thei_llvm_fpga_pipeline_keep_going6_matvec2_valid_fifo (
        .in_data_in(c_i2_022_q),
        .in_stall_in(bb_matvec_B2_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going6_matvec2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going6_matvec2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going6_matvec2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_matvec6_valid_fifo(BLACKBOX,37)
    matvec_i_llvm_fpga_pipeline_keep_going_6_valid_fifo thei_llvm_fpga_pipeline_keep_going_matvec6_valid_fifo (
        .in_data_in(c_i2_022_q),
        .in_stall_in(bb_matvec_B3_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_matvec6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_matvec6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_matvec6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_matvec_B5_sr_0_aunroll_x(BLACKBOX,96)
    matvec_bb_B5_sr_0 thebb_matvec_B5_sr_0_aunroll_x (
        .in_i_stall(bb_matvec_B5_out_stall_out_0),
        .in_i_valid(bb_matvec_B4_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_matvec_B5_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_matvec_B5_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_matvec_B4(BLACKBOX,6)
    matvec_bb_B4 thebb_matvec_B4 (
        .in_c0_exe2331_0(bb_matvec_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe3342_0(bb_matvec_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe53_0(bb_matvec_B4_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_flush(in_start),
        .in_stall_in_0(bb_matvec_B5_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_matvec5_matvec_avm_readdata(in_unnamed_matvec5_matvec_avm_readdata),
        .in_unnamed_matvec5_matvec_avm_readdatavalid(in_unnamed_matvec5_matvec_avm_readdatavalid),
        .in_unnamed_matvec5_matvec_avm_waitrequest(in_unnamed_matvec5_matvec_avm_waitrequest),
        .in_unnamed_matvec5_matvec_avm_writeack(in_unnamed_matvec5_matvec_avm_writeack),
        .in_valid_in_0(bb_matvec_B4_sr_0_aunroll_x_out_o_valid),
        .out_stall_in_0(bb_matvec_B4_out_stall_in_0),
        .out_stall_out_0(bb_matvec_B4_out_stall_out_0),
        .out_unnamed_matvec5_matvec_avm_address(bb_matvec_B4_out_unnamed_matvec5_matvec_avm_address),
        .out_unnamed_matvec5_matvec_avm_burstcount(bb_matvec_B4_out_unnamed_matvec5_matvec_avm_burstcount),
        .out_unnamed_matvec5_matvec_avm_byteenable(bb_matvec_B4_out_unnamed_matvec5_matvec_avm_byteenable),
        .out_unnamed_matvec5_matvec_avm_enable(bb_matvec_B4_out_unnamed_matvec5_matvec_avm_enable),
        .out_unnamed_matvec5_matvec_avm_read(bb_matvec_B4_out_unnamed_matvec5_matvec_avm_read),
        .out_unnamed_matvec5_matvec_avm_write(bb_matvec_B4_out_unnamed_matvec5_matvec_avm_write),
        .out_unnamed_matvec5_matvec_avm_writedata(bb_matvec_B4_out_unnamed_matvec5_matvec_avm_writedata),
        .out_valid_out_0(bb_matvec_B4_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_matvec_B4_sr_0_aunroll_x(BLACKBOX,95)
    matvec_bb_B4_sr_0 thebb_matvec_B4_sr_0_aunroll_x (
        .in_i_stall(bb_matvec_B4_out_stall_out_0),
        .in_i_valid(bb_matvec_B3_out_valid_out_0),
        .in_i_data_0_tpl(bb_matvec_B3_out_c0_exe233),
        .in_i_data_1_tpl(bb_matvec_B3_out_c0_exe334),
        .in_i_data_2_tpl(bb_matvec_B3_out_c0_exe5),
        .out_o_stall(bb_matvec_B4_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_matvec_B4_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_matvec_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_matvec_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_matvec_B4_sr_0_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_matvec6_sr(BLACKBOX,36)
    matvec_i_llvm_fpga_pipeline_keep_going_6_sr thei_llvm_fpga_pipeline_keep_going_matvec6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_matvec6_valid_fifo_out_stall_out),
        .in_i_valid(bb_matvec_B3_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_matvec6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_matvec6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef15(CONSTANT,30)
    assign c_i32_undef15_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_matvec_B3(BLACKBOX,5)
    matvec_bb_B3 thebb_matvec_B3 (
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_matvec_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_i_013_pop817_0(c_i32_undef15_q),
        .in_i_013_pop817_1(bb_matvec_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_notcmp416_0(GND_q),
        .in_notcmp416_1(bb_matvec_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_matvec6_sr_out_o_stall),
        .in_stall_in_0(bb_matvec_B4_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_matvec3_matvec_avm_readdata(in_unnamed_matvec3_matvec_avm_readdata),
        .in_unnamed_matvec3_matvec_avm_readdatavalid(in_unnamed_matvec3_matvec_avm_readdatavalid),
        .in_unnamed_matvec3_matvec_avm_waitrequest(in_unnamed_matvec3_matvec_avm_waitrequest),
        .in_unnamed_matvec3_matvec_avm_writeack(in_unnamed_matvec3_matvec_avm_writeack),
        .in_unnamed_matvec4_matvec_avm_readdata(in_unnamed_matvec4_matvec_avm_readdata),
        .in_unnamed_matvec4_matvec_avm_readdatavalid(in_unnamed_matvec4_matvec_avm_readdatavalid),
        .in_unnamed_matvec4_matvec_avm_waitrequest(in_unnamed_matvec4_matvec_avm_waitrequest),
        .in_unnamed_matvec4_matvec_avm_writeack(in_unnamed_matvec4_matvec_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_matvec6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_matvec_B3_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe233(bb_matvec_B3_out_c0_exe233),
        .out_c0_exe334(bb_matvec_B3_out_c0_exe334),
        .out_c0_exe5(bb_matvec_B3_out_c0_exe5),
        .out_exiting_stall_out(bb_matvec_B3_out_exiting_stall_out),
        .out_exiting_valid_out(bb_matvec_B3_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_matvec_B3_out_pipeline_valid_out),
        .out_stall_in_0(bb_matvec_B3_out_stall_in_0),
        .out_stall_out_0(bb_matvec_B3_out_stall_out_0),
        .out_stall_out_1(bb_matvec_B3_out_stall_out_1),
        .out_unnamed_matvec3_matvec_avm_address(bb_matvec_B3_out_unnamed_matvec3_matvec_avm_address),
        .out_unnamed_matvec3_matvec_avm_burstcount(bb_matvec_B3_out_unnamed_matvec3_matvec_avm_burstcount),
        .out_unnamed_matvec3_matvec_avm_byteenable(bb_matvec_B3_out_unnamed_matvec3_matvec_avm_byteenable),
        .out_unnamed_matvec3_matvec_avm_enable(bb_matvec_B3_out_unnamed_matvec3_matvec_avm_enable),
        .out_unnamed_matvec3_matvec_avm_read(bb_matvec_B3_out_unnamed_matvec3_matvec_avm_read),
        .out_unnamed_matvec3_matvec_avm_write(bb_matvec_B3_out_unnamed_matvec3_matvec_avm_write),
        .out_unnamed_matvec3_matvec_avm_writedata(bb_matvec_B3_out_unnamed_matvec3_matvec_avm_writedata),
        .out_unnamed_matvec4_matvec_avm_address(bb_matvec_B3_out_unnamed_matvec4_matvec_avm_address),
        .out_unnamed_matvec4_matvec_avm_burstcount(bb_matvec_B3_out_unnamed_matvec4_matvec_avm_burstcount),
        .out_unnamed_matvec4_matvec_avm_byteenable(bb_matvec_B3_out_unnamed_matvec4_matvec_avm_byteenable),
        .out_unnamed_matvec4_matvec_avm_enable(bb_matvec_B3_out_unnamed_matvec4_matvec_avm_enable),
        .out_unnamed_matvec4_matvec_avm_read(bb_matvec_B3_out_unnamed_matvec4_matvec_avm_read),
        .out_unnamed_matvec4_matvec_avm_write(bb_matvec_B3_out_unnamed_matvec4_matvec_avm_write),
        .out_unnamed_matvec4_matvec_avm_writedata(bb_matvec_B3_out_unnamed_matvec4_matvec_avm_writedata),
        .out_valid_in_0(bb_matvec_B3_out_valid_in_0),
        .out_valid_in_1(bb_matvec_B3_out_valid_in_1),
        .out_valid_out_0(bb_matvec_B3_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_matvec_B3_sr_1_aunroll_x(BLACKBOX,94)
    matvec_bb_B3_sr_1 thebb_matvec_B3_sr_1_aunroll_x (
        .in_i_stall(bb_matvec_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_matvec1_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_matvec_B2_out_c0_exe2),
        .in_i_data_2_tpl(bb_matvec_B2_out_c0_exe3),
        .out_o_stall(bb_matvec_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_matvec_B3_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_matvec_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_matvec_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_matvec_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_matvec1(BLACKBOX,62)
    matvec_loop_limiter_1 theloop_limiter_matvec1 (
        .in_i_stall(bb_matvec_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_matvec_B3_out_exiting_stall_out),
        .in_i_valid(bb_matvec_B2_out_valid_out_0),
        .in_i_valid_exit(bb_matvec_B3_out_exiting_valid_out),
        .out_o_stall(loop_limiter_matvec1_out_o_stall),
        .out_o_valid(loop_limiter_matvec1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going6_matvec2_sr(BLACKBOX,34)
    matvec_i_llvm_fpga_pipeline_keep_going6_2_sr thei_llvm_fpga_pipeline_keep_going6_matvec2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going6_matvec2_valid_fifo_out_stall_out),
        .in_i_valid(bb_matvec_B2_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going6_matvec2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going6_matvec2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_matvec_B2(BLACKBOX,4)
    matvec_bb_B2 thebb_matvec_B2 (
        .in_forked13_0(GND_q),
        .in_forked13_1(bb_matvec_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going6_matvec2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_matvec1_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going6_matvec2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_matvec_B2_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2(bb_matvec_B2_out_c0_exe2),
        .out_c0_exe3(bb_matvec_B2_out_c0_exe3),
        .out_exiting_stall_out(bb_matvec_B2_out_exiting_stall_out),
        .out_exiting_valid_out(bb_matvec_B2_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_matvec_B2_out_pipeline_valid_out),
        .out_stall_out_0(bb_matvec_B2_out_stall_out_0),
        .out_stall_out_1(bb_matvec_B2_out_stall_out_1),
        .out_valid_in_0(bb_matvec_B2_out_valid_in_0),
        .out_valid_in_1(bb_matvec_B2_out_valid_in_1),
        .out_valid_out_0(bb_matvec_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_matvec_B2_sr_1_aunroll_x(BLACKBOX,93)
    matvec_bb_B2_sr_1 thebb_matvec_B2_sr_1_aunroll_x (
        .in_i_stall(bb_matvec_B2_out_stall_out_1),
        .in_i_valid(loop_limiter_matvec0_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_matvec_B2_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_matvec_B2_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_matvec_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_matvec0(BLACKBOX,61)
    matvec_loop_limiter_0 theloop_limiter_matvec0 (
        .in_i_stall(bb_matvec_B2_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_matvec_B2_out_exiting_stall_out),
        .in_i_valid(bb_matvec_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_matvec_B2_out_exiting_valid_out),
        .out_o_stall(loop_limiter_matvec0_out_o_stall),
        .out_o_valid(loop_limiter_matvec0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going10_matvec1_sr(BLACKBOX,32)
    matvec_i_llvm_fpga_pipeline_keep_going10_1_sr thei_llvm_fpga_pipeline_keep_going10_matvec1_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going10_matvec1_valid_fifo_out_stall_out),
        .in_i_valid(bb_matvec_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going10_matvec1_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going10_matvec1_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_matvec_B1_start(BLACKBOX,3)
    matvec_bb_B1_start thebb_matvec_B1_start (
        .in_iord_bl_call_matvec_i_fifodata(in_iord_bl_call_matvec_i_fifodata),
        .in_iord_bl_call_matvec_i_fifovalid(in_iord_bl_call_matvec_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going10_matvec1_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_matvec0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going10_matvec1_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_iord_bl_call_matvec_o_fifoalmost_full(bb_matvec_B1_start_out_iord_bl_call_matvec_o_fifoalmost_full),
        .out_iord_bl_call_matvec_o_fifoready(bb_matvec_B1_start_out_iord_bl_call_matvec_o_fifoready),
        .out_pipeline_valid_out(bb_matvec_B1_start_out_pipeline_valid_out),
        .out_stall_out_0(bb_matvec_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_in_0(bb_matvec_B1_start_out_valid_in_0),
        .out_valid_in_1(bb_matvec_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_matvec_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_matvec_B5(BLACKBOX,7)
    matvec_bb_B5 thebb_matvec_B5 (
        .in_iowr_bl_return_matvec_i_fifoready(in_iowr_bl_return_matvec_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_matvec_B5_sr_0_aunroll_x_out_o_valid),
        .out_iowr_bl_return_matvec_o_fifodata(bb_matvec_B5_out_iowr_bl_return_matvec_o_fifodata),
        .out_iowr_bl_return_matvec_o_fifovalid(bb_matvec_B5_out_iowr_bl_return_matvec_o_fifovalid),
        .out_stall_in_0(bb_matvec_B5_out_stall_in_0),
        .out_stall_out_0(bb_matvec_B5_out_stall_out_0),
        .out_valid_out_0(bb_matvec_B5_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // matvec_B1_start_x(EXTIFACE,63)
    assign matvec_B1_start_x_i_capture = GND_q;
    assign matvec_B1_start_x_i_clear = GND_q;
    assign matvec_B1_start_x_i_enable = VCC_q;
    assign matvec_B1_start_x_i_shift = GND_q;
    assign matvec_B1_start_x_i_stall_pred = GND_q;
    assign matvec_B1_start_x_i_stall_succ = bb_matvec_B5_out_stall_in_0;
    assign matvec_B1_start_x_i_valid_loop = bb_matvec_B1_start_out_valid_in_0;
    assign matvec_B1_start_x_i_valid_pred = bb_matvec_B1_start_out_valid_in_1;
    assign matvec_B1_start_x_i_valid_succ = bb_matvec_B5_out_valid_out_0;
    assign matvec_B1_start_x_i_capture_bitsignaltemp = matvec_B1_start_x_i_capture[0];
    assign matvec_B1_start_x_i_clear_bitsignaltemp = matvec_B1_start_x_i_clear[0];
    assign matvec_B1_start_x_i_enable_bitsignaltemp = matvec_B1_start_x_i_enable[0];
    assign matvec_B1_start_x_i_shift_bitsignaltemp = matvec_B1_start_x_i_shift[0];
    assign matvec_B1_start_x_i_stall_pred_bitsignaltemp = matvec_B1_start_x_i_stall_pred[0];
    assign matvec_B1_start_x_i_stall_succ_bitsignaltemp = matvec_B1_start_x_i_stall_succ[0];
    assign matvec_B1_start_x_i_valid_loop_bitsignaltemp = matvec_B1_start_x_i_valid_loop[0];
    assign matvec_B1_start_x_i_valid_pred_bitsignaltemp = matvec_B1_start_x_i_valid_pred[0];
    assign matvec_B1_start_x_i_valid_succ_bitsignaltemp = matvec_B1_start_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("matvec.B1.start")
    ) thematvec_B1_start_x (
        .i_capture(matvec_B1_start_x_i_capture_bitsignaltemp),
        .i_clear(matvec_B1_start_x_i_clear_bitsignaltemp),
        .i_enable(matvec_B1_start_x_i_enable_bitsignaltemp),
        .i_shift(matvec_B1_start_x_i_shift_bitsignaltemp),
        .i_stall_pred(matvec_B1_start_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(matvec_B1_start_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(matvec_B1_start_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(matvec_B1_start_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(matvec_B1_start_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // matvec_B2_x(EXTIFACE,64)
    assign matvec_B2_x_i_capture = GND_q;
    assign matvec_B2_x_i_clear = GND_q;
    assign matvec_B2_x_i_enable = VCC_q;
    assign matvec_B2_x_i_shift = GND_q;
    assign matvec_B2_x_i_stall_pred = loop_limiter_matvec0_out_o_stall;
    assign matvec_B2_x_i_stall_succ = bb_matvec_B4_out_stall_in_0;
    assign matvec_B2_x_i_valid_loop = bb_matvec_B2_out_valid_in_0;
    assign matvec_B2_x_i_valid_pred = bb_matvec_B2_out_valid_in_1;
    assign matvec_B2_x_i_valid_succ = bb_matvec_B4_out_valid_out_0;
    assign matvec_B2_x_i_capture_bitsignaltemp = matvec_B2_x_i_capture[0];
    assign matvec_B2_x_i_clear_bitsignaltemp = matvec_B2_x_i_clear[0];
    assign matvec_B2_x_i_enable_bitsignaltemp = matvec_B2_x_i_enable[0];
    assign matvec_B2_x_i_shift_bitsignaltemp = matvec_B2_x_i_shift[0];
    assign matvec_B2_x_i_stall_pred_bitsignaltemp = matvec_B2_x_i_stall_pred[0];
    assign matvec_B2_x_i_stall_succ_bitsignaltemp = matvec_B2_x_i_stall_succ[0];
    assign matvec_B2_x_i_valid_loop_bitsignaltemp = matvec_B2_x_i_valid_loop[0];
    assign matvec_B2_x_i_valid_pred_bitsignaltemp = matvec_B2_x_i_valid_pred[0];
    assign matvec_B2_x_i_valid_succ_bitsignaltemp = matvec_B2_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("matvec.B2")
    ) thematvec_B2_x (
        .i_capture(matvec_B2_x_i_capture_bitsignaltemp),
        .i_clear(matvec_B2_x_i_clear_bitsignaltemp),
        .i_enable(matvec_B2_x_i_enable_bitsignaltemp),
        .i_shift(matvec_B2_x_i_shift_bitsignaltemp),
        .i_stall_pred(matvec_B2_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(matvec_B2_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(matvec_B2_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(matvec_B2_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(matvec_B2_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // matvec_B3_x(EXTIFACE,65)
    assign matvec_B3_x_i_capture = GND_q;
    assign matvec_B3_x_i_clear = GND_q;
    assign matvec_B3_x_i_enable = VCC_q;
    assign matvec_B3_x_i_shift = GND_q;
    assign matvec_B3_x_i_stall_pred = loop_limiter_matvec1_out_o_stall;
    assign matvec_B3_x_i_stall_succ = bb_matvec_B3_out_stall_in_0;
    assign matvec_B3_x_i_valid_loop = bb_matvec_B3_out_valid_in_0;
    assign matvec_B3_x_i_valid_pred = bb_matvec_B3_out_valid_in_1;
    assign matvec_B3_x_i_valid_succ = bb_matvec_B3_out_valid_out_0;
    assign matvec_B3_x_i_capture_bitsignaltemp = matvec_B3_x_i_capture[0];
    assign matvec_B3_x_i_clear_bitsignaltemp = matvec_B3_x_i_clear[0];
    assign matvec_B3_x_i_enable_bitsignaltemp = matvec_B3_x_i_enable[0];
    assign matvec_B3_x_i_shift_bitsignaltemp = matvec_B3_x_i_shift[0];
    assign matvec_B3_x_i_stall_pred_bitsignaltemp = matvec_B3_x_i_stall_pred[0];
    assign matvec_B3_x_i_stall_succ_bitsignaltemp = matvec_B3_x_i_stall_succ[0];
    assign matvec_B3_x_i_valid_loop_bitsignaltemp = matvec_B3_x_i_valid_loop[0];
    assign matvec_B3_x_i_valid_pred_bitsignaltemp = matvec_B3_x_i_valid_pred[0];
    assign matvec_B3_x_i_valid_succ_bitsignaltemp = matvec_B3_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("matvec.B3")
    ) thematvec_B3_x (
        .i_capture(matvec_B3_x_i_capture_bitsignaltemp),
        .i_clear(matvec_B3_x_i_clear_bitsignaltemp),
        .i_enable(matvec_B3_x_i_enable_bitsignaltemp),
        .i_shift(matvec_B3_x_i_shift_bitsignaltemp),
        .i_stall_pred(matvec_B3_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(matvec_B3_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(matvec_B3_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(matvec_B3_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(matvec_B3_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_matvec_o_fifoalmost_full(GPOUT,66)
    assign out_iord_bl_call_matvec_o_fifoalmost_full = bb_matvec_B1_start_out_iord_bl_call_matvec_o_fifoalmost_full;

    // out_iord_bl_call_matvec_o_fifoready(GPOUT,67)
    assign out_iord_bl_call_matvec_o_fifoready = bb_matvec_B1_start_out_iord_bl_call_matvec_o_fifoready;

    // out_iowr_bl_return_matvec_o_fifodata(GPOUT,68)
    assign out_iowr_bl_return_matvec_o_fifodata = bb_matvec_B5_out_iowr_bl_return_matvec_o_fifodata;

    // out_iowr_bl_return_matvec_o_fifovalid(GPOUT,69)
    assign out_iowr_bl_return_matvec_o_fifovalid = bb_matvec_B5_out_iowr_bl_return_matvec_o_fifovalid;

    // bb_matvec_B0_runOnce(BLACKBOX,2)
    matvec_bb_B0_runOnce thebb_matvec_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_matvec_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,70)
    assign out_stall_out = bb_matvec_B0_runOnce_out_stall_out_0;

    // out_unnamed_matvec3_matvec_avm_address(GPOUT,71)
    assign out_unnamed_matvec3_matvec_avm_address = bb_matvec_B3_out_unnamed_matvec3_matvec_avm_address;

    // out_unnamed_matvec3_matvec_avm_burstcount(GPOUT,72)
    assign out_unnamed_matvec3_matvec_avm_burstcount = bb_matvec_B3_out_unnamed_matvec3_matvec_avm_burstcount;

    // out_unnamed_matvec3_matvec_avm_byteenable(GPOUT,73)
    assign out_unnamed_matvec3_matvec_avm_byteenable = bb_matvec_B3_out_unnamed_matvec3_matvec_avm_byteenable;

    // out_unnamed_matvec3_matvec_avm_enable(GPOUT,74)
    assign out_unnamed_matvec3_matvec_avm_enable = bb_matvec_B3_out_unnamed_matvec3_matvec_avm_enable;

    // out_unnamed_matvec3_matvec_avm_read(GPOUT,75)
    assign out_unnamed_matvec3_matvec_avm_read = bb_matvec_B3_out_unnamed_matvec3_matvec_avm_read;

    // out_unnamed_matvec3_matvec_avm_write(GPOUT,76)
    assign out_unnamed_matvec3_matvec_avm_write = bb_matvec_B3_out_unnamed_matvec3_matvec_avm_write;

    // out_unnamed_matvec3_matvec_avm_writedata(GPOUT,77)
    assign out_unnamed_matvec3_matvec_avm_writedata = bb_matvec_B3_out_unnamed_matvec3_matvec_avm_writedata;

    // out_unnamed_matvec4_matvec_avm_address(GPOUT,78)
    assign out_unnamed_matvec4_matvec_avm_address = bb_matvec_B3_out_unnamed_matvec4_matvec_avm_address;

    // out_unnamed_matvec4_matvec_avm_burstcount(GPOUT,79)
    assign out_unnamed_matvec4_matvec_avm_burstcount = bb_matvec_B3_out_unnamed_matvec4_matvec_avm_burstcount;

    // out_unnamed_matvec4_matvec_avm_byteenable(GPOUT,80)
    assign out_unnamed_matvec4_matvec_avm_byteenable = bb_matvec_B3_out_unnamed_matvec4_matvec_avm_byteenable;

    // out_unnamed_matvec4_matvec_avm_enable(GPOUT,81)
    assign out_unnamed_matvec4_matvec_avm_enable = bb_matvec_B3_out_unnamed_matvec4_matvec_avm_enable;

    // out_unnamed_matvec4_matvec_avm_read(GPOUT,82)
    assign out_unnamed_matvec4_matvec_avm_read = bb_matvec_B3_out_unnamed_matvec4_matvec_avm_read;

    // out_unnamed_matvec4_matvec_avm_write(GPOUT,83)
    assign out_unnamed_matvec4_matvec_avm_write = bb_matvec_B3_out_unnamed_matvec4_matvec_avm_write;

    // out_unnamed_matvec4_matvec_avm_writedata(GPOUT,84)
    assign out_unnamed_matvec4_matvec_avm_writedata = bb_matvec_B3_out_unnamed_matvec4_matvec_avm_writedata;

    // out_unnamed_matvec5_matvec_avm_address(GPOUT,85)
    assign out_unnamed_matvec5_matvec_avm_address = bb_matvec_B4_out_unnamed_matvec5_matvec_avm_address;

    // out_unnamed_matvec5_matvec_avm_burstcount(GPOUT,86)
    assign out_unnamed_matvec5_matvec_avm_burstcount = bb_matvec_B4_out_unnamed_matvec5_matvec_avm_burstcount;

    // out_unnamed_matvec5_matvec_avm_byteenable(GPOUT,87)
    assign out_unnamed_matvec5_matvec_avm_byteenable = bb_matvec_B4_out_unnamed_matvec5_matvec_avm_byteenable;

    // out_unnamed_matvec5_matvec_avm_enable(GPOUT,88)
    assign out_unnamed_matvec5_matvec_avm_enable = bb_matvec_B4_out_unnamed_matvec5_matvec_avm_enable;

    // out_unnamed_matvec5_matvec_avm_read(GPOUT,89)
    assign out_unnamed_matvec5_matvec_avm_read = bb_matvec_B4_out_unnamed_matvec5_matvec_avm_read;

    // out_unnamed_matvec5_matvec_avm_write(GPOUT,90)
    assign out_unnamed_matvec5_matvec_avm_write = bb_matvec_B4_out_unnamed_matvec5_matvec_avm_write;

    // out_unnamed_matvec5_matvec_avm_writedata(GPOUT,91)
    assign out_unnamed_matvec5_matvec_avm_writedata = bb_matvec_B4_out_unnamed_matvec5_matvec_avm_writedata;

    // out_valid_out(GPOUT,92)
    assign out_valid_out = GND_q;

endmodule
