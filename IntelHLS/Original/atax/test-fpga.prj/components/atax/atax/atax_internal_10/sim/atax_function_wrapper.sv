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

// SystemVerilog created from atax_function_wrapper
// Created for function/kernel atax
// SystemVerilog created on Wed Apr 26 13:39:41 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_function_wrapper (
    input wire [63:0] A,
    input wire [31:0] avm_memdep_1_atax_readdata,
    input wire [0:0] avm_memdep_1_atax_readdatavalid,
    input wire [0:0] avm_memdep_1_atax_waitrequest,
    input wire [0:0] avm_memdep_1_atax_writeack,
    input wire [31:0] avm_memdep_atax_readdata,
    input wire [0:0] avm_memdep_atax_readdatavalid,
    input wire [0:0] avm_memdep_atax_waitrequest,
    input wire [0:0] avm_memdep_atax_writeack,
    input wire [31:0] avm_unnamed_atax2_atax_readdata,
    input wire [0:0] avm_unnamed_atax2_atax_readdatavalid,
    input wire [0:0] avm_unnamed_atax2_atax_waitrequest,
    input wire [0:0] avm_unnamed_atax2_atax_writeack,
    input wire [31:0] avm_unnamed_atax4_atax_readdata,
    input wire [0:0] avm_unnamed_atax4_atax_readdatavalid,
    input wire [0:0] avm_unnamed_atax4_atax_waitrequest,
    input wire [0:0] avm_unnamed_atax4_atax_writeack,
    input wire [31:0] avm_unnamed_atax5_atax_readdata,
    input wire [0:0] avm_unnamed_atax5_atax_readdatavalid,
    input wire [0:0] avm_unnamed_atax5_atax_waitrequest,
    input wire [0:0] avm_unnamed_atax5_atax_writeack,
    input wire [31:0] avm_unnamed_atax7_atax_readdata,
    input wire [0:0] avm_unnamed_atax7_atax_readdatavalid,
    input wire [0:0] avm_unnamed_atax7_atax_waitrequest,
    input wire [0:0] avm_unnamed_atax7_atax_writeack,
    input wire [31:0] avm_unnamed_atax8_atax_readdata,
    input wire [0:0] avm_unnamed_atax8_atax_readdatavalid,
    input wire [0:0] avm_unnamed_atax8_atax_waitrequest,
    input wire [0:0] avm_unnamed_atax8_atax_writeack,
    input wire [255:0] avst_iord_bl_call_atax_data,
    input wire [0:0] avst_iord_bl_call_atax_valid,
    input wire [0:0] avst_iowr_bl_return_atax_almostfull,
    input wire [0:0] avst_iowr_bl_return_atax_ready,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [63:0] tmp,
    input wire [0:0] valid_in,
    input wire [63:0] x,
    input wire [63:0] y,
    output wire [31:0] avm_memdep_1_atax_address,
    output wire [0:0] avm_memdep_1_atax_burstcount,
    output wire [3:0] avm_memdep_1_atax_byteenable,
    output wire [0:0] avm_memdep_1_atax_enable,
    output wire [0:0] avm_memdep_1_atax_read,
    output wire [0:0] avm_memdep_1_atax_write,
    output wire [31:0] avm_memdep_1_atax_writedata,
    output wire [31:0] avm_memdep_atax_address,
    output wire [0:0] avm_memdep_atax_burstcount,
    output wire [3:0] avm_memdep_atax_byteenable,
    output wire [0:0] avm_memdep_atax_enable,
    output wire [0:0] avm_memdep_atax_read,
    output wire [0:0] avm_memdep_atax_write,
    output wire [31:0] avm_memdep_atax_writedata,
    output wire [31:0] avm_unnamed_atax2_atax_address,
    output wire [0:0] avm_unnamed_atax2_atax_burstcount,
    output wire [3:0] avm_unnamed_atax2_atax_byteenable,
    output wire [0:0] avm_unnamed_atax2_atax_enable,
    output wire [0:0] avm_unnamed_atax2_atax_read,
    output wire [0:0] avm_unnamed_atax2_atax_write,
    output wire [31:0] avm_unnamed_atax2_atax_writedata,
    output wire [31:0] avm_unnamed_atax4_atax_address,
    output wire [0:0] avm_unnamed_atax4_atax_burstcount,
    output wire [3:0] avm_unnamed_atax4_atax_byteenable,
    output wire [0:0] avm_unnamed_atax4_atax_enable,
    output wire [0:0] avm_unnamed_atax4_atax_read,
    output wire [0:0] avm_unnamed_atax4_atax_write,
    output wire [31:0] avm_unnamed_atax4_atax_writedata,
    output wire [31:0] avm_unnamed_atax5_atax_address,
    output wire [0:0] avm_unnamed_atax5_atax_burstcount,
    output wire [3:0] avm_unnamed_atax5_atax_byteenable,
    output wire [0:0] avm_unnamed_atax5_atax_enable,
    output wire [0:0] avm_unnamed_atax5_atax_read,
    output wire [0:0] avm_unnamed_atax5_atax_write,
    output wire [31:0] avm_unnamed_atax5_atax_writedata,
    output wire [31:0] avm_unnamed_atax7_atax_address,
    output wire [0:0] avm_unnamed_atax7_atax_burstcount,
    output wire [3:0] avm_unnamed_atax7_atax_byteenable,
    output wire [0:0] avm_unnamed_atax7_atax_enable,
    output wire [0:0] avm_unnamed_atax7_atax_read,
    output wire [0:0] avm_unnamed_atax7_atax_write,
    output wire [31:0] avm_unnamed_atax7_atax_writedata,
    output wire [31:0] avm_unnamed_atax8_atax_address,
    output wire [0:0] avm_unnamed_atax8_atax_burstcount,
    output wire [3:0] avm_unnamed_atax8_atax_byteenable,
    output wire [0:0] avm_unnamed_atax8_atax_enable,
    output wire [0:0] avm_unnamed_atax8_atax_read,
    output wire [0:0] avm_unnamed_atax8_atax_write,
    output wire [31:0] avm_unnamed_atax8_atax_writedata,
    output wire [0:0] avst_iord_bl_call_atax_almost_full,
    output wire [0:0] avst_iord_bl_call_atax_ready,
    output wire [0:0] avst_iowr_bl_return_atax_data,
    output wire [0:0] avst_iowr_bl_return_atax_valid,
    output wire [0:0] busy,
    output wire [0:0] done,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] A_const_q;
    wire [0:0] atax_function_out_iord_bl_call_atax_o_fifoalmost_full;
    wire [0:0] atax_function_out_iord_bl_call_atax_o_fifoready;
    wire [0:0] atax_function_out_iowr_bl_return_atax_o_fifodata;
    wire [0:0] atax_function_out_iowr_bl_return_atax_o_fifovalid;
    wire [31:0] atax_function_out_memdep_1_atax_avm_address;
    wire [0:0] atax_function_out_memdep_1_atax_avm_burstcount;
    wire [3:0] atax_function_out_memdep_1_atax_avm_byteenable;
    wire [0:0] atax_function_out_memdep_1_atax_avm_enable;
    wire [0:0] atax_function_out_memdep_1_atax_avm_read;
    wire [0:0] atax_function_out_memdep_1_atax_avm_write;
    wire [31:0] atax_function_out_memdep_1_atax_avm_writedata;
    wire [31:0] atax_function_out_memdep_atax_avm_address;
    wire [0:0] atax_function_out_memdep_atax_avm_burstcount;
    wire [3:0] atax_function_out_memdep_atax_avm_byteenable;
    wire [0:0] atax_function_out_memdep_atax_avm_enable;
    wire [0:0] atax_function_out_memdep_atax_avm_read;
    wire [0:0] atax_function_out_memdep_atax_avm_write;
    wire [31:0] atax_function_out_memdep_atax_avm_writedata;
    wire [0:0] atax_function_out_stall_out;
    wire [31:0] atax_function_out_unnamed_atax2_atax_avm_address;
    wire [0:0] atax_function_out_unnamed_atax2_atax_avm_burstcount;
    wire [3:0] atax_function_out_unnamed_atax2_atax_avm_byteenable;
    wire [0:0] atax_function_out_unnamed_atax2_atax_avm_enable;
    wire [0:0] atax_function_out_unnamed_atax2_atax_avm_read;
    wire [0:0] atax_function_out_unnamed_atax2_atax_avm_write;
    wire [31:0] atax_function_out_unnamed_atax2_atax_avm_writedata;
    wire [31:0] atax_function_out_unnamed_atax4_atax_avm_address;
    wire [0:0] atax_function_out_unnamed_atax4_atax_avm_burstcount;
    wire [3:0] atax_function_out_unnamed_atax4_atax_avm_byteenable;
    wire [0:0] atax_function_out_unnamed_atax4_atax_avm_enable;
    wire [0:0] atax_function_out_unnamed_atax4_atax_avm_read;
    wire [0:0] atax_function_out_unnamed_atax4_atax_avm_write;
    wire [31:0] atax_function_out_unnamed_atax4_atax_avm_writedata;
    wire [31:0] atax_function_out_unnamed_atax5_atax_avm_address;
    wire [0:0] atax_function_out_unnamed_atax5_atax_avm_burstcount;
    wire [3:0] atax_function_out_unnamed_atax5_atax_avm_byteenable;
    wire [0:0] atax_function_out_unnamed_atax5_atax_avm_enable;
    wire [0:0] atax_function_out_unnamed_atax5_atax_avm_read;
    wire [0:0] atax_function_out_unnamed_atax5_atax_avm_write;
    wire [31:0] atax_function_out_unnamed_atax5_atax_avm_writedata;
    wire [31:0] atax_function_out_unnamed_atax7_atax_avm_address;
    wire [0:0] atax_function_out_unnamed_atax7_atax_avm_burstcount;
    wire [3:0] atax_function_out_unnamed_atax7_atax_avm_byteenable;
    wire [0:0] atax_function_out_unnamed_atax7_atax_avm_enable;
    wire [0:0] atax_function_out_unnamed_atax7_atax_avm_read;
    wire [0:0] atax_function_out_unnamed_atax7_atax_avm_write;
    wire [31:0] atax_function_out_unnamed_atax7_atax_avm_writedata;
    wire [31:0] atax_function_out_unnamed_atax8_atax_avm_address;
    wire [0:0] atax_function_out_unnamed_atax8_atax_avm_burstcount;
    wire [3:0] atax_function_out_unnamed_atax8_atax_avm_byteenable;
    wire [0:0] atax_function_out_unnamed_atax8_atax_avm_enable;
    wire [0:0] atax_function_out_unnamed_atax8_atax_avm_read;
    wire [0:0] atax_function_out_unnamed_atax8_atax_avm_write;
    wire [31:0] atax_function_out_unnamed_atax8_atax_avm_writedata;
    wire [0:0] busy_and_q;
    wire [0:0] busy_or_q;
    wire [255:0] implicit_input_q;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] start_mask_and_q;
    wire [0:0] start_pulse_out_o_valid;
    wire [0:0] wait_pulse_extender_inst_out_o_sclrn;
    reg [0:0] rst_sync_rst_sclrn;


    // wait_pulse_extender_inst(BLACKBOX,111)
    atax_wait_pulse_extender_inst thewait_pulse_extender_inst (
        .out_o_sclrn(wait_pulse_extender_inst_out_o_sclrn),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // start_pulse(BLACKBOX,109)
    atax_start_pulse thestart_pulse (
        .in_i_stall(atax_function_out_stall_out),
        .in_i_valid(wait_pulse_extender_inst_out_o_sclrn),
        .out_o_valid(start_pulse_out_o_valid),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall(LOGICAL,50)
    assign not_stall_q = ~ (stall);

    // start_mask_and(LOGICAL,108)
    assign start_mask_and_q = start & wait_pulse_extender_inst_out_o_sclrn;

    // implicit_input(BITJOIN,8)
    assign implicit_input_q = {tmp, y, x, A};

    // A_const(CONSTANT,2)
    assign A_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // atax_function(BLACKBOX,3)
    atax_function theatax_function (
        .in_arg_A(A_const_q),
        .in_arg_call(A_const_q),
        .in_arg_return(A_const_q),
        .in_arg_tmp(A_const_q),
        .in_arg_x(A_const_q),
        .in_arg_y(A_const_q),
        .in_iord_bl_call_atax_i_fifodata(implicit_input_q),
        .in_iord_bl_call_atax_i_fifovalid(start_mask_and_q),
        .in_iowr_bl_return_atax_i_fifoready(not_stall_q),
        .in_memdep_1_atax_avm_readdata(avm_memdep_1_atax_readdata),
        .in_memdep_1_atax_avm_readdatavalid(avm_memdep_1_atax_readdatavalid),
        .in_memdep_1_atax_avm_waitrequest(avm_memdep_1_atax_waitrequest),
        .in_memdep_1_atax_avm_writeack(avm_memdep_1_atax_writeack),
        .in_memdep_atax_avm_readdata(avm_memdep_atax_readdata),
        .in_memdep_atax_avm_readdatavalid(avm_memdep_atax_readdatavalid),
        .in_memdep_atax_avm_waitrequest(avm_memdep_atax_waitrequest),
        .in_memdep_atax_avm_writeack(avm_memdep_atax_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_unnamed_atax2_atax_avm_readdata(avm_unnamed_atax2_atax_readdata),
        .in_unnamed_atax2_atax_avm_readdatavalid(avm_unnamed_atax2_atax_readdatavalid),
        .in_unnamed_atax2_atax_avm_waitrequest(avm_unnamed_atax2_atax_waitrequest),
        .in_unnamed_atax2_atax_avm_writeack(avm_unnamed_atax2_atax_writeack),
        .in_unnamed_atax4_atax_avm_readdata(avm_unnamed_atax4_atax_readdata),
        .in_unnamed_atax4_atax_avm_readdatavalid(avm_unnamed_atax4_atax_readdatavalid),
        .in_unnamed_atax4_atax_avm_waitrequest(avm_unnamed_atax4_atax_waitrequest),
        .in_unnamed_atax4_atax_avm_writeack(avm_unnamed_atax4_atax_writeack),
        .in_unnamed_atax5_atax_avm_readdata(avm_unnamed_atax5_atax_readdata),
        .in_unnamed_atax5_atax_avm_readdatavalid(avm_unnamed_atax5_atax_readdatavalid),
        .in_unnamed_atax5_atax_avm_waitrequest(avm_unnamed_atax5_atax_waitrequest),
        .in_unnamed_atax5_atax_avm_writeack(avm_unnamed_atax5_atax_writeack),
        .in_unnamed_atax7_atax_avm_readdata(avm_unnamed_atax7_atax_readdata),
        .in_unnamed_atax7_atax_avm_readdatavalid(avm_unnamed_atax7_atax_readdatavalid),
        .in_unnamed_atax7_atax_avm_waitrequest(avm_unnamed_atax7_atax_waitrequest),
        .in_unnamed_atax7_atax_avm_writeack(avm_unnamed_atax7_atax_writeack),
        .in_unnamed_atax8_atax_avm_readdata(avm_unnamed_atax8_atax_readdata),
        .in_unnamed_atax8_atax_avm_readdatavalid(avm_unnamed_atax8_atax_readdatavalid),
        .in_unnamed_atax8_atax_avm_waitrequest(avm_unnamed_atax8_atax_waitrequest),
        .in_unnamed_atax8_atax_avm_writeack(avm_unnamed_atax8_atax_writeack),
        .in_valid_in(start_pulse_out_o_valid),
        .out_iord_bl_call_atax_o_fifoalmost_full(atax_function_out_iord_bl_call_atax_o_fifoalmost_full),
        .out_iord_bl_call_atax_o_fifoready(atax_function_out_iord_bl_call_atax_o_fifoready),
        .out_iowr_bl_return_atax_o_fifodata(atax_function_out_iowr_bl_return_atax_o_fifodata),
        .out_iowr_bl_return_atax_o_fifovalid(atax_function_out_iowr_bl_return_atax_o_fifovalid),
        .out_memdep_1_atax_avm_address(atax_function_out_memdep_1_atax_avm_address),
        .out_memdep_1_atax_avm_burstcount(atax_function_out_memdep_1_atax_avm_burstcount),
        .out_memdep_1_atax_avm_byteenable(atax_function_out_memdep_1_atax_avm_byteenable),
        .out_memdep_1_atax_avm_enable(atax_function_out_memdep_1_atax_avm_enable),
        .out_memdep_1_atax_avm_read(atax_function_out_memdep_1_atax_avm_read),
        .out_memdep_1_atax_avm_write(atax_function_out_memdep_1_atax_avm_write),
        .out_memdep_1_atax_avm_writedata(atax_function_out_memdep_1_atax_avm_writedata),
        .out_memdep_atax_avm_address(atax_function_out_memdep_atax_avm_address),
        .out_memdep_atax_avm_burstcount(atax_function_out_memdep_atax_avm_burstcount),
        .out_memdep_atax_avm_byteenable(atax_function_out_memdep_atax_avm_byteenable),
        .out_memdep_atax_avm_enable(atax_function_out_memdep_atax_avm_enable),
        .out_memdep_atax_avm_read(atax_function_out_memdep_atax_avm_read),
        .out_memdep_atax_avm_write(atax_function_out_memdep_atax_avm_write),
        .out_memdep_atax_avm_writedata(atax_function_out_memdep_atax_avm_writedata),
        .out_stall_out(atax_function_out_stall_out),
        .out_unnamed_atax2_atax_avm_address(atax_function_out_unnamed_atax2_atax_avm_address),
        .out_unnamed_atax2_atax_avm_burstcount(atax_function_out_unnamed_atax2_atax_avm_burstcount),
        .out_unnamed_atax2_atax_avm_byteenable(atax_function_out_unnamed_atax2_atax_avm_byteenable),
        .out_unnamed_atax2_atax_avm_enable(atax_function_out_unnamed_atax2_atax_avm_enable),
        .out_unnamed_atax2_atax_avm_read(atax_function_out_unnamed_atax2_atax_avm_read),
        .out_unnamed_atax2_atax_avm_write(atax_function_out_unnamed_atax2_atax_avm_write),
        .out_unnamed_atax2_atax_avm_writedata(atax_function_out_unnamed_atax2_atax_avm_writedata),
        .out_unnamed_atax4_atax_avm_address(atax_function_out_unnamed_atax4_atax_avm_address),
        .out_unnamed_atax4_atax_avm_burstcount(atax_function_out_unnamed_atax4_atax_avm_burstcount),
        .out_unnamed_atax4_atax_avm_byteenable(atax_function_out_unnamed_atax4_atax_avm_byteenable),
        .out_unnamed_atax4_atax_avm_enable(atax_function_out_unnamed_atax4_atax_avm_enable),
        .out_unnamed_atax4_atax_avm_read(atax_function_out_unnamed_atax4_atax_avm_read),
        .out_unnamed_atax4_atax_avm_write(atax_function_out_unnamed_atax4_atax_avm_write),
        .out_unnamed_atax4_atax_avm_writedata(atax_function_out_unnamed_atax4_atax_avm_writedata),
        .out_unnamed_atax5_atax_avm_address(atax_function_out_unnamed_atax5_atax_avm_address),
        .out_unnamed_atax5_atax_avm_burstcount(atax_function_out_unnamed_atax5_atax_avm_burstcount),
        .out_unnamed_atax5_atax_avm_byteenable(atax_function_out_unnamed_atax5_atax_avm_byteenable),
        .out_unnamed_atax5_atax_avm_enable(atax_function_out_unnamed_atax5_atax_avm_enable),
        .out_unnamed_atax5_atax_avm_read(atax_function_out_unnamed_atax5_atax_avm_read),
        .out_unnamed_atax5_atax_avm_write(atax_function_out_unnamed_atax5_atax_avm_write),
        .out_unnamed_atax5_atax_avm_writedata(atax_function_out_unnamed_atax5_atax_avm_writedata),
        .out_unnamed_atax7_atax_avm_address(atax_function_out_unnamed_atax7_atax_avm_address),
        .out_unnamed_atax7_atax_avm_burstcount(atax_function_out_unnamed_atax7_atax_avm_burstcount),
        .out_unnamed_atax7_atax_avm_byteenable(atax_function_out_unnamed_atax7_atax_avm_byteenable),
        .out_unnamed_atax7_atax_avm_enable(atax_function_out_unnamed_atax7_atax_avm_enable),
        .out_unnamed_atax7_atax_avm_read(atax_function_out_unnamed_atax7_atax_avm_read),
        .out_unnamed_atax7_atax_avm_write(atax_function_out_unnamed_atax7_atax_avm_write),
        .out_unnamed_atax7_atax_avm_writedata(atax_function_out_unnamed_atax7_atax_avm_writedata),
        .out_unnamed_atax8_atax_avm_address(atax_function_out_unnamed_atax8_atax_avm_address),
        .out_unnamed_atax8_atax_avm_burstcount(atax_function_out_unnamed_atax8_atax_avm_burstcount),
        .out_unnamed_atax8_atax_avm_byteenable(atax_function_out_unnamed_atax8_atax_avm_byteenable),
        .out_unnamed_atax8_atax_avm_enable(atax_function_out_unnamed_atax8_atax_avm_enable),
        .out_unnamed_atax8_atax_avm_read(atax_function_out_unnamed_atax8_atax_avm_read),
        .out_unnamed_atax8_atax_avm_write(atax_function_out_unnamed_atax8_atax_avm_write),
        .out_unnamed_atax8_atax_avm_writedata(atax_function_out_unnamed_atax8_atax_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_memdep_1_atax_address(GPOUT,51)
    assign avm_memdep_1_atax_address = atax_function_out_memdep_1_atax_avm_address;

    // avm_memdep_1_atax_burstcount(GPOUT,52)
    assign avm_memdep_1_atax_burstcount = atax_function_out_memdep_1_atax_avm_burstcount;

    // avm_memdep_1_atax_byteenable(GPOUT,53)
    assign avm_memdep_1_atax_byteenable = atax_function_out_memdep_1_atax_avm_byteenable;

    // avm_memdep_1_atax_enable(GPOUT,54)
    assign avm_memdep_1_atax_enable = atax_function_out_memdep_1_atax_avm_enable;

    // avm_memdep_1_atax_read(GPOUT,55)
    assign avm_memdep_1_atax_read = atax_function_out_memdep_1_atax_avm_read;

    // avm_memdep_1_atax_write(GPOUT,56)
    assign avm_memdep_1_atax_write = atax_function_out_memdep_1_atax_avm_write;

    // avm_memdep_1_atax_writedata(GPOUT,57)
    assign avm_memdep_1_atax_writedata = atax_function_out_memdep_1_atax_avm_writedata;

    // avm_memdep_atax_address(GPOUT,58)
    assign avm_memdep_atax_address = atax_function_out_memdep_atax_avm_address;

    // avm_memdep_atax_burstcount(GPOUT,59)
    assign avm_memdep_atax_burstcount = atax_function_out_memdep_atax_avm_burstcount;

    // avm_memdep_atax_byteenable(GPOUT,60)
    assign avm_memdep_atax_byteenable = atax_function_out_memdep_atax_avm_byteenable;

    // avm_memdep_atax_enable(GPOUT,61)
    assign avm_memdep_atax_enable = atax_function_out_memdep_atax_avm_enable;

    // avm_memdep_atax_read(GPOUT,62)
    assign avm_memdep_atax_read = atax_function_out_memdep_atax_avm_read;

    // avm_memdep_atax_write(GPOUT,63)
    assign avm_memdep_atax_write = atax_function_out_memdep_atax_avm_write;

    // avm_memdep_atax_writedata(GPOUT,64)
    assign avm_memdep_atax_writedata = atax_function_out_memdep_atax_avm_writedata;

    // avm_unnamed_atax2_atax_address(GPOUT,65)
    assign avm_unnamed_atax2_atax_address = atax_function_out_unnamed_atax2_atax_avm_address;

    // avm_unnamed_atax2_atax_burstcount(GPOUT,66)
    assign avm_unnamed_atax2_atax_burstcount = atax_function_out_unnamed_atax2_atax_avm_burstcount;

    // avm_unnamed_atax2_atax_byteenable(GPOUT,67)
    assign avm_unnamed_atax2_atax_byteenable = atax_function_out_unnamed_atax2_atax_avm_byteenable;

    // avm_unnamed_atax2_atax_enable(GPOUT,68)
    assign avm_unnamed_atax2_atax_enable = atax_function_out_unnamed_atax2_atax_avm_enable;

    // avm_unnamed_atax2_atax_read(GPOUT,69)
    assign avm_unnamed_atax2_atax_read = atax_function_out_unnamed_atax2_atax_avm_read;

    // avm_unnamed_atax2_atax_write(GPOUT,70)
    assign avm_unnamed_atax2_atax_write = atax_function_out_unnamed_atax2_atax_avm_write;

    // avm_unnamed_atax2_atax_writedata(GPOUT,71)
    assign avm_unnamed_atax2_atax_writedata = atax_function_out_unnamed_atax2_atax_avm_writedata;

    // avm_unnamed_atax4_atax_address(GPOUT,72)
    assign avm_unnamed_atax4_atax_address = atax_function_out_unnamed_atax4_atax_avm_address;

    // avm_unnamed_atax4_atax_burstcount(GPOUT,73)
    assign avm_unnamed_atax4_atax_burstcount = atax_function_out_unnamed_atax4_atax_avm_burstcount;

    // avm_unnamed_atax4_atax_byteenable(GPOUT,74)
    assign avm_unnamed_atax4_atax_byteenable = atax_function_out_unnamed_atax4_atax_avm_byteenable;

    // avm_unnamed_atax4_atax_enable(GPOUT,75)
    assign avm_unnamed_atax4_atax_enable = atax_function_out_unnamed_atax4_atax_avm_enable;

    // avm_unnamed_atax4_atax_read(GPOUT,76)
    assign avm_unnamed_atax4_atax_read = atax_function_out_unnamed_atax4_atax_avm_read;

    // avm_unnamed_atax4_atax_write(GPOUT,77)
    assign avm_unnamed_atax4_atax_write = atax_function_out_unnamed_atax4_atax_avm_write;

    // avm_unnamed_atax4_atax_writedata(GPOUT,78)
    assign avm_unnamed_atax4_atax_writedata = atax_function_out_unnamed_atax4_atax_avm_writedata;

    // avm_unnamed_atax5_atax_address(GPOUT,79)
    assign avm_unnamed_atax5_atax_address = atax_function_out_unnamed_atax5_atax_avm_address;

    // avm_unnamed_atax5_atax_burstcount(GPOUT,80)
    assign avm_unnamed_atax5_atax_burstcount = atax_function_out_unnamed_atax5_atax_avm_burstcount;

    // avm_unnamed_atax5_atax_byteenable(GPOUT,81)
    assign avm_unnamed_atax5_atax_byteenable = atax_function_out_unnamed_atax5_atax_avm_byteenable;

    // avm_unnamed_atax5_atax_enable(GPOUT,82)
    assign avm_unnamed_atax5_atax_enable = atax_function_out_unnamed_atax5_atax_avm_enable;

    // avm_unnamed_atax5_atax_read(GPOUT,83)
    assign avm_unnamed_atax5_atax_read = atax_function_out_unnamed_atax5_atax_avm_read;

    // avm_unnamed_atax5_atax_write(GPOUT,84)
    assign avm_unnamed_atax5_atax_write = atax_function_out_unnamed_atax5_atax_avm_write;

    // avm_unnamed_atax5_atax_writedata(GPOUT,85)
    assign avm_unnamed_atax5_atax_writedata = atax_function_out_unnamed_atax5_atax_avm_writedata;

    // avm_unnamed_atax7_atax_address(GPOUT,86)
    assign avm_unnamed_atax7_atax_address = atax_function_out_unnamed_atax7_atax_avm_address;

    // avm_unnamed_atax7_atax_burstcount(GPOUT,87)
    assign avm_unnamed_atax7_atax_burstcount = atax_function_out_unnamed_atax7_atax_avm_burstcount;

    // avm_unnamed_atax7_atax_byteenable(GPOUT,88)
    assign avm_unnamed_atax7_atax_byteenable = atax_function_out_unnamed_atax7_atax_avm_byteenable;

    // avm_unnamed_atax7_atax_enable(GPOUT,89)
    assign avm_unnamed_atax7_atax_enable = atax_function_out_unnamed_atax7_atax_avm_enable;

    // avm_unnamed_atax7_atax_read(GPOUT,90)
    assign avm_unnamed_atax7_atax_read = atax_function_out_unnamed_atax7_atax_avm_read;

    // avm_unnamed_atax7_atax_write(GPOUT,91)
    assign avm_unnamed_atax7_atax_write = atax_function_out_unnamed_atax7_atax_avm_write;

    // avm_unnamed_atax7_atax_writedata(GPOUT,92)
    assign avm_unnamed_atax7_atax_writedata = atax_function_out_unnamed_atax7_atax_avm_writedata;

    // avm_unnamed_atax8_atax_address(GPOUT,93)
    assign avm_unnamed_atax8_atax_address = atax_function_out_unnamed_atax8_atax_avm_address;

    // avm_unnamed_atax8_atax_burstcount(GPOUT,94)
    assign avm_unnamed_atax8_atax_burstcount = atax_function_out_unnamed_atax8_atax_avm_burstcount;

    // avm_unnamed_atax8_atax_byteenable(GPOUT,95)
    assign avm_unnamed_atax8_atax_byteenable = atax_function_out_unnamed_atax8_atax_avm_byteenable;

    // avm_unnamed_atax8_atax_enable(GPOUT,96)
    assign avm_unnamed_atax8_atax_enable = atax_function_out_unnamed_atax8_atax_avm_enable;

    // avm_unnamed_atax8_atax_read(GPOUT,97)
    assign avm_unnamed_atax8_atax_read = atax_function_out_unnamed_atax8_atax_avm_read;

    // avm_unnamed_atax8_atax_write(GPOUT,98)
    assign avm_unnamed_atax8_atax_write = atax_function_out_unnamed_atax8_atax_avm_write;

    // avm_unnamed_atax8_atax_writedata(GPOUT,99)
    assign avm_unnamed_atax8_atax_writedata = atax_function_out_unnamed_atax8_atax_avm_writedata;

    // avst_iord_bl_call_atax_almost_full(GPOUT,100)
    assign avst_iord_bl_call_atax_almost_full = atax_function_out_iord_bl_call_atax_o_fifoalmost_full;

    // avst_iord_bl_call_atax_ready(GPOUT,101)
    assign avst_iord_bl_call_atax_ready = atax_function_out_iord_bl_call_atax_o_fifoready;

    // avst_iowr_bl_return_atax_data(GPOUT,102)
    assign avst_iowr_bl_return_atax_data = atax_function_out_iowr_bl_return_atax_o_fifodata;

    // avst_iowr_bl_return_atax_valid(GPOUT,103)
    assign avst_iowr_bl_return_atax_valid = atax_function_out_iowr_bl_return_atax_o_fifovalid;

    // not_ready(LOGICAL,49)
    assign not_ready_q = ~ (atax_function_out_iord_bl_call_atax_o_fifoready);

    // busy_and(LOGICAL,4)
    assign busy_and_q = not_ready_q & start;

    // pos_reset(LOGICAL,106)
    assign pos_reset_q = ~ (wait_pulse_extender_inst_out_o_sclrn);

    // busy_or(LOGICAL,5)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,104)
    assign busy = busy_or_q;

    // done(GPOUT,105)
    assign done = atax_function_out_iowr_bl_return_atax_o_fifovalid;

    // rst_sync(RESETSYNC,114)
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
