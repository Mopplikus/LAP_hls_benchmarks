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

// SystemVerilog created from stencil_2d_function_wrapper
// Created for function/kernel stencil_2d
// SystemVerilog created on Fri Apr  7 16:44:44 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_function_wrapper (
    input wire [31:0] avm_unnamed_stencil_2d4_stencil_2d_readdata,
    input wire [0:0] avm_unnamed_stencil_2d4_stencil_2d_readdatavalid,
    input wire [0:0] avm_unnamed_stencil_2d4_stencil_2d_waitrequest,
    input wire [0:0] avm_unnamed_stencil_2d4_stencil_2d_writeack,
    input wire [31:0] avm_unnamed_stencil_2d5_stencil_2d_readdata,
    input wire [0:0] avm_unnamed_stencil_2d5_stencil_2d_readdatavalid,
    input wire [0:0] avm_unnamed_stencil_2d5_stencil_2d_waitrequest,
    input wire [0:0] avm_unnamed_stencil_2d5_stencil_2d_writeack,
    input wire [31:0] avm_unnamed_stencil_2d6_stencil_2d_readdata,
    input wire [0:0] avm_unnamed_stencil_2d6_stencil_2d_readdatavalid,
    input wire [0:0] avm_unnamed_stencil_2d6_stencil_2d_waitrequest,
    input wire [0:0] avm_unnamed_stencil_2d6_stencil_2d_writeack,
    input wire [0:0] avst_iord_bl_call_stencil_2d_data,
    input wire [0:0] avst_iord_bl_call_stencil_2d_valid,
    input wire [0:0] avst_iowr_bl_return_stencil_2d_almostfull,
    input wire [0:0] avst_iowr_bl_return_stencil_2d_ready,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [31:0] avm_unnamed_stencil_2d4_stencil_2d_address,
    output wire [0:0] avm_unnamed_stencil_2d4_stencil_2d_burstcount,
    output wire [3:0] avm_unnamed_stencil_2d4_stencil_2d_byteenable,
    output wire [0:0] avm_unnamed_stencil_2d4_stencil_2d_enable,
    output wire [0:0] avm_unnamed_stencil_2d4_stencil_2d_read,
    output wire [0:0] avm_unnamed_stencil_2d4_stencil_2d_write,
    output wire [31:0] avm_unnamed_stencil_2d4_stencil_2d_writedata,
    output wire [31:0] avm_unnamed_stencil_2d5_stencil_2d_address,
    output wire [0:0] avm_unnamed_stencil_2d5_stencil_2d_burstcount,
    output wire [3:0] avm_unnamed_stencil_2d5_stencil_2d_byteenable,
    output wire [0:0] avm_unnamed_stencil_2d5_stencil_2d_enable,
    output wire [0:0] avm_unnamed_stencil_2d5_stencil_2d_read,
    output wire [0:0] avm_unnamed_stencil_2d5_stencil_2d_write,
    output wire [31:0] avm_unnamed_stencil_2d5_stencil_2d_writedata,
    output wire [31:0] avm_unnamed_stencil_2d6_stencil_2d_address,
    output wire [0:0] avm_unnamed_stencil_2d6_stencil_2d_burstcount,
    output wire [3:0] avm_unnamed_stencil_2d6_stencil_2d_byteenable,
    output wire [0:0] avm_unnamed_stencil_2d6_stencil_2d_enable,
    output wire [0:0] avm_unnamed_stencil_2d6_stencil_2d_read,
    output wire [0:0] avm_unnamed_stencil_2d6_stencil_2d_write,
    output wire [31:0] avm_unnamed_stencil_2d6_stencil_2d_writedata,
    output wire [0:0] avst_iord_bl_call_stencil_2d_almost_full,
    output wire [0:0] avst_iord_bl_call_stencil_2d_ready,
    output wire [31:0] avst_iowr_bl_return_stencil_2d_data,
    output wire [0:0] avst_iowr_bl_return_stencil_2d_valid,
    output wire [0:0] busy,
    output wire [0:0] done,
    output wire [31:0] returndata,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] busy_and_q;
    wire [0:0] busy_or_q;
    wire [63:0] call_const_q;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;
    wire [0:0] stencil_2d_function_out_iord_bl_call_stencil_2d_o_fifoalmost_full;
    wire [0:0] stencil_2d_function_out_iord_bl_call_stencil_2d_o_fifoready;
    wire [31:0] stencil_2d_function_out_iowr_bl_return_stencil_2d_o_fifodata;
    wire [0:0] stencil_2d_function_out_iowr_bl_return_stencil_2d_o_fifovalid;
    wire [31:0] stencil_2d_function_out_unnamed_stencil_2d4_stencil_2d_avm_address;
    wire [0:0] stencil_2d_function_out_unnamed_stencil_2d4_stencil_2d_avm_burstcount;
    wire [3:0] stencil_2d_function_out_unnamed_stencil_2d4_stencil_2d_avm_byteenable;
    wire [0:0] stencil_2d_function_out_unnamed_stencil_2d4_stencil_2d_avm_enable;
    wire [0:0] stencil_2d_function_out_unnamed_stencil_2d4_stencil_2d_avm_read;
    wire [0:0] stencil_2d_function_out_unnamed_stencil_2d4_stencil_2d_avm_write;
    wire [31:0] stencil_2d_function_out_unnamed_stencil_2d4_stencil_2d_avm_writedata;
    wire [31:0] stencil_2d_function_out_unnamed_stencil_2d5_stencil_2d_avm_address;
    wire [0:0] stencil_2d_function_out_unnamed_stencil_2d5_stencil_2d_avm_burstcount;
    wire [3:0] stencil_2d_function_out_unnamed_stencil_2d5_stencil_2d_avm_byteenable;
    wire [0:0] stencil_2d_function_out_unnamed_stencil_2d5_stencil_2d_avm_enable;
    wire [0:0] stencil_2d_function_out_unnamed_stencil_2d5_stencil_2d_avm_read;
    wire [0:0] stencil_2d_function_out_unnamed_stencil_2d5_stencil_2d_avm_write;
    wire [31:0] stencil_2d_function_out_unnamed_stencil_2d5_stencil_2d_avm_writedata;
    wire [31:0] stencil_2d_function_out_unnamed_stencil_2d6_stencil_2d_avm_address;
    wire [0:0] stencil_2d_function_out_unnamed_stencil_2d6_stencil_2d_avm_burstcount;
    wire [3:0] stencil_2d_function_out_unnamed_stencil_2d6_stencil_2d_avm_byteenable;
    wire [0:0] stencil_2d_function_out_unnamed_stencil_2d6_stencil_2d_avm_enable;
    wire [0:0] stencil_2d_function_out_unnamed_stencil_2d6_stencil_2d_avm_read;
    wire [0:0] stencil_2d_function_out_unnamed_stencil_2d6_stencil_2d_avm_write;
    wire [31:0] stencil_2d_function_out_unnamed_stencil_2d6_stencil_2d_avm_writedata;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,28)
    assign not_stall_q = ~ (stall);

    // call_const(CONSTANT,4)
    assign call_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // stencil_2d_function(BLACKBOX,61)
    stencil_2d_function thestencil_2d_function (
        .in_arg_call(call_const_q),
        .in_arg_return(call_const_q),
        .in_iord_bl_call_stencil_2d_i_fifodata(avst_iord_bl_call_stencil_2d_data),
        .in_iord_bl_call_stencil_2d_i_fifovalid(start),
        .in_iowr_bl_return_stencil_2d_i_fifoready(not_stall_q),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_unnamed_stencil_2d4_stencil_2d_avm_readdata(avm_unnamed_stencil_2d4_stencil_2d_readdata),
        .in_unnamed_stencil_2d4_stencil_2d_avm_readdatavalid(avm_unnamed_stencil_2d4_stencil_2d_readdatavalid),
        .in_unnamed_stencil_2d4_stencil_2d_avm_waitrequest(avm_unnamed_stencil_2d4_stencil_2d_waitrequest),
        .in_unnamed_stencil_2d4_stencil_2d_avm_writeack(avm_unnamed_stencil_2d4_stencil_2d_writeack),
        .in_unnamed_stencil_2d5_stencil_2d_avm_readdata(avm_unnamed_stencil_2d5_stencil_2d_readdata),
        .in_unnamed_stencil_2d5_stencil_2d_avm_readdatavalid(avm_unnamed_stencil_2d5_stencil_2d_readdatavalid),
        .in_unnamed_stencil_2d5_stencil_2d_avm_waitrequest(avm_unnamed_stencil_2d5_stencil_2d_waitrequest),
        .in_unnamed_stencil_2d5_stencil_2d_avm_writeack(avm_unnamed_stencil_2d5_stencil_2d_writeack),
        .in_unnamed_stencil_2d6_stencil_2d_avm_readdata(avm_unnamed_stencil_2d6_stencil_2d_readdata),
        .in_unnamed_stencil_2d6_stencil_2d_avm_readdatavalid(avm_unnamed_stencil_2d6_stencil_2d_readdatavalid),
        .in_unnamed_stencil_2d6_stencil_2d_avm_waitrequest(avm_unnamed_stencil_2d6_stencil_2d_waitrequest),
        .in_unnamed_stencil_2d6_stencil_2d_avm_writeack(avm_unnamed_stencil_2d6_stencil_2d_writeack),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_stencil_2d_o_fifoalmost_full(stencil_2d_function_out_iord_bl_call_stencil_2d_o_fifoalmost_full),
        .out_iord_bl_call_stencil_2d_o_fifoready(stencil_2d_function_out_iord_bl_call_stencil_2d_o_fifoready),
        .out_iowr_bl_return_stencil_2d_o_fifodata(stencil_2d_function_out_iowr_bl_return_stencil_2d_o_fifodata),
        .out_iowr_bl_return_stencil_2d_o_fifovalid(stencil_2d_function_out_iowr_bl_return_stencil_2d_o_fifovalid),
        .out_stall_out(),
        .out_unnamed_stencil_2d4_stencil_2d_avm_address(stencil_2d_function_out_unnamed_stencil_2d4_stencil_2d_avm_address),
        .out_unnamed_stencil_2d4_stencil_2d_avm_burstcount(stencil_2d_function_out_unnamed_stencil_2d4_stencil_2d_avm_burstcount),
        .out_unnamed_stencil_2d4_stencil_2d_avm_byteenable(stencil_2d_function_out_unnamed_stencil_2d4_stencil_2d_avm_byteenable),
        .out_unnamed_stencil_2d4_stencil_2d_avm_enable(stencil_2d_function_out_unnamed_stencil_2d4_stencil_2d_avm_enable),
        .out_unnamed_stencil_2d4_stencil_2d_avm_read(stencil_2d_function_out_unnamed_stencil_2d4_stencil_2d_avm_read),
        .out_unnamed_stencil_2d4_stencil_2d_avm_write(stencil_2d_function_out_unnamed_stencil_2d4_stencil_2d_avm_write),
        .out_unnamed_stencil_2d4_stencil_2d_avm_writedata(stencil_2d_function_out_unnamed_stencil_2d4_stencil_2d_avm_writedata),
        .out_unnamed_stencil_2d5_stencil_2d_avm_address(stencil_2d_function_out_unnamed_stencil_2d5_stencil_2d_avm_address),
        .out_unnamed_stencil_2d5_stencil_2d_avm_burstcount(stencil_2d_function_out_unnamed_stencil_2d5_stencil_2d_avm_burstcount),
        .out_unnamed_stencil_2d5_stencil_2d_avm_byteenable(stencil_2d_function_out_unnamed_stencil_2d5_stencil_2d_avm_byteenable),
        .out_unnamed_stencil_2d5_stencil_2d_avm_enable(stencil_2d_function_out_unnamed_stencil_2d5_stencil_2d_avm_enable),
        .out_unnamed_stencil_2d5_stencil_2d_avm_read(stencil_2d_function_out_unnamed_stencil_2d5_stencil_2d_avm_read),
        .out_unnamed_stencil_2d5_stencil_2d_avm_write(stencil_2d_function_out_unnamed_stencil_2d5_stencil_2d_avm_write),
        .out_unnamed_stencil_2d5_stencil_2d_avm_writedata(stencil_2d_function_out_unnamed_stencil_2d5_stencil_2d_avm_writedata),
        .out_unnamed_stencil_2d6_stencil_2d_avm_address(stencil_2d_function_out_unnamed_stencil_2d6_stencil_2d_avm_address),
        .out_unnamed_stencil_2d6_stencil_2d_avm_burstcount(stencil_2d_function_out_unnamed_stencil_2d6_stencil_2d_avm_burstcount),
        .out_unnamed_stencil_2d6_stencil_2d_avm_byteenable(stencil_2d_function_out_unnamed_stencil_2d6_stencil_2d_avm_byteenable),
        .out_unnamed_stencil_2d6_stencil_2d_avm_enable(stencil_2d_function_out_unnamed_stencil_2d6_stencil_2d_avm_enable),
        .out_unnamed_stencil_2d6_stencil_2d_avm_read(stencil_2d_function_out_unnamed_stencil_2d6_stencil_2d_avm_read),
        .out_unnamed_stencil_2d6_stencil_2d_avm_write(stencil_2d_function_out_unnamed_stencil_2d6_stencil_2d_avm_write),
        .out_unnamed_stencil_2d6_stencil_2d_avm_writedata(stencil_2d_function_out_unnamed_stencil_2d6_stencil_2d_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_unnamed_stencil_2d4_stencil_2d_address(GPOUT,29)
    assign avm_unnamed_stencil_2d4_stencil_2d_address = stencil_2d_function_out_unnamed_stencil_2d4_stencil_2d_avm_address;

    // avm_unnamed_stencil_2d4_stencil_2d_burstcount(GPOUT,30)
    assign avm_unnamed_stencil_2d4_stencil_2d_burstcount = stencil_2d_function_out_unnamed_stencil_2d4_stencil_2d_avm_burstcount;

    // avm_unnamed_stencil_2d4_stencil_2d_byteenable(GPOUT,31)
    assign avm_unnamed_stencil_2d4_stencil_2d_byteenable = stencil_2d_function_out_unnamed_stencil_2d4_stencil_2d_avm_byteenable;

    // avm_unnamed_stencil_2d4_stencil_2d_enable(GPOUT,32)
    assign avm_unnamed_stencil_2d4_stencil_2d_enable = stencil_2d_function_out_unnamed_stencil_2d4_stencil_2d_avm_enable;

    // avm_unnamed_stencil_2d4_stencil_2d_read(GPOUT,33)
    assign avm_unnamed_stencil_2d4_stencil_2d_read = stencil_2d_function_out_unnamed_stencil_2d4_stencil_2d_avm_read;

    // avm_unnamed_stencil_2d4_stencil_2d_write(GPOUT,34)
    assign avm_unnamed_stencil_2d4_stencil_2d_write = stencil_2d_function_out_unnamed_stencil_2d4_stencil_2d_avm_write;

    // avm_unnamed_stencil_2d4_stencil_2d_writedata(GPOUT,35)
    assign avm_unnamed_stencil_2d4_stencil_2d_writedata = stencil_2d_function_out_unnamed_stencil_2d4_stencil_2d_avm_writedata;

    // avm_unnamed_stencil_2d5_stencil_2d_address(GPOUT,36)
    assign avm_unnamed_stencil_2d5_stencil_2d_address = stencil_2d_function_out_unnamed_stencil_2d5_stencil_2d_avm_address;

    // avm_unnamed_stencil_2d5_stencil_2d_burstcount(GPOUT,37)
    assign avm_unnamed_stencil_2d5_stencil_2d_burstcount = stencil_2d_function_out_unnamed_stencil_2d5_stencil_2d_avm_burstcount;

    // avm_unnamed_stencil_2d5_stencil_2d_byteenable(GPOUT,38)
    assign avm_unnamed_stencil_2d5_stencil_2d_byteenable = stencil_2d_function_out_unnamed_stencil_2d5_stencil_2d_avm_byteenable;

    // avm_unnamed_stencil_2d5_stencil_2d_enable(GPOUT,39)
    assign avm_unnamed_stencil_2d5_stencil_2d_enable = stencil_2d_function_out_unnamed_stencil_2d5_stencil_2d_avm_enable;

    // avm_unnamed_stencil_2d5_stencil_2d_read(GPOUT,40)
    assign avm_unnamed_stencil_2d5_stencil_2d_read = stencil_2d_function_out_unnamed_stencil_2d5_stencil_2d_avm_read;

    // avm_unnamed_stencil_2d5_stencil_2d_write(GPOUT,41)
    assign avm_unnamed_stencil_2d5_stencil_2d_write = stencil_2d_function_out_unnamed_stencil_2d5_stencil_2d_avm_write;

    // avm_unnamed_stencil_2d5_stencil_2d_writedata(GPOUT,42)
    assign avm_unnamed_stencil_2d5_stencil_2d_writedata = stencil_2d_function_out_unnamed_stencil_2d5_stencil_2d_avm_writedata;

    // avm_unnamed_stencil_2d6_stencil_2d_address(GPOUT,43)
    assign avm_unnamed_stencil_2d6_stencil_2d_address = stencil_2d_function_out_unnamed_stencil_2d6_stencil_2d_avm_address;

    // avm_unnamed_stencil_2d6_stencil_2d_burstcount(GPOUT,44)
    assign avm_unnamed_stencil_2d6_stencil_2d_burstcount = stencil_2d_function_out_unnamed_stencil_2d6_stencil_2d_avm_burstcount;

    // avm_unnamed_stencil_2d6_stencil_2d_byteenable(GPOUT,45)
    assign avm_unnamed_stencil_2d6_stencil_2d_byteenable = stencil_2d_function_out_unnamed_stencil_2d6_stencil_2d_avm_byteenable;

    // avm_unnamed_stencil_2d6_stencil_2d_enable(GPOUT,46)
    assign avm_unnamed_stencil_2d6_stencil_2d_enable = stencil_2d_function_out_unnamed_stencil_2d6_stencil_2d_avm_enable;

    // avm_unnamed_stencil_2d6_stencil_2d_read(GPOUT,47)
    assign avm_unnamed_stencil_2d6_stencil_2d_read = stencil_2d_function_out_unnamed_stencil_2d6_stencil_2d_avm_read;

    // avm_unnamed_stencil_2d6_stencil_2d_write(GPOUT,48)
    assign avm_unnamed_stencil_2d6_stencil_2d_write = stencil_2d_function_out_unnamed_stencil_2d6_stencil_2d_avm_write;

    // avm_unnamed_stencil_2d6_stencil_2d_writedata(GPOUT,49)
    assign avm_unnamed_stencil_2d6_stencil_2d_writedata = stencil_2d_function_out_unnamed_stencil_2d6_stencil_2d_avm_writedata;

    // avst_iord_bl_call_stencil_2d_almost_full(GPOUT,50)
    assign avst_iord_bl_call_stencil_2d_almost_full = stencil_2d_function_out_iord_bl_call_stencil_2d_o_fifoalmost_full;

    // avst_iord_bl_call_stencil_2d_ready(GPOUT,51)
    assign avst_iord_bl_call_stencil_2d_ready = stencil_2d_function_out_iord_bl_call_stencil_2d_o_fifoready;

    // avst_iowr_bl_return_stencil_2d_data(GPOUT,52)
    assign avst_iowr_bl_return_stencil_2d_data = stencil_2d_function_out_iowr_bl_return_stencil_2d_o_fifodata;

    // avst_iowr_bl_return_stencil_2d_valid(GPOUT,53)
    assign avst_iowr_bl_return_stencil_2d_valid = stencil_2d_function_out_iowr_bl_return_stencil_2d_o_fifovalid;

    // not_ready(LOGICAL,27)
    assign not_ready_q = ~ (stencil_2d_function_out_iord_bl_call_stencil_2d_o_fifoready);

    // busy_and(LOGICAL,2)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,58)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,57)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,3)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,54)
    assign busy = busy_or_q;

    // done(GPOUT,55)
    assign done = stencil_2d_function_out_iowr_bl_return_stencil_2d_o_fifovalid;

    // returndata(GPOUT,56)
    assign returndata = stencil_2d_function_out_iowr_bl_return_stencil_2d_o_fifodata;

endmodule
