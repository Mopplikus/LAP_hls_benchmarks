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

// SystemVerilog created from if_loop_3_function_wrapper
// Created for function/kernel if_loop_3
// SystemVerilog created on Mon May  8 14:21:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module if_loop_3_function_wrapper (
    input wire [63:0] a,
    input wire [255:0] avm_lm1_if_loop_3_readdata,
    input wire [0:0] avm_lm1_if_loop_3_readdatavalid,
    input wire [0:0] avm_lm1_if_loop_3_waitrequest,
    input wire [0:0] avm_lm1_if_loop_3_writeack,
    input wire [255:0] avm_lm22_if_loop_3_readdata,
    input wire [0:0] avm_lm22_if_loop_3_readdatavalid,
    input wire [0:0] avm_lm22_if_loop_3_waitrequest,
    input wire [0:0] avm_lm22_if_loop_3_writeack,
    input wire [191:0] avst_iord_bl_call_if_loop_3_data,
    input wire [0:0] avst_iord_bl_call_if_loop_3_valid,
    input wire [0:0] avst_iowr_bl_return_if_loop_3_almostfull,
    input wire [0:0] avst_iowr_bl_return_if_loop_3_ready,
    input wire [63:0] b,
    input wire [31:0] n,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [31:0] avm_lm1_if_loop_3_address,
    output wire [0:0] avm_lm1_if_loop_3_burstcount,
    output wire [31:0] avm_lm1_if_loop_3_byteenable,
    output wire [0:0] avm_lm1_if_loop_3_enable,
    output wire [0:0] avm_lm1_if_loop_3_read,
    output wire [0:0] avm_lm1_if_loop_3_write,
    output wire [255:0] avm_lm1_if_loop_3_writedata,
    output wire [31:0] avm_lm22_if_loop_3_address,
    output wire [0:0] avm_lm22_if_loop_3_burstcount,
    output wire [31:0] avm_lm22_if_loop_3_byteenable,
    output wire [0:0] avm_lm22_if_loop_3_enable,
    output wire [0:0] avm_lm22_if_loop_3_read,
    output wire [0:0] avm_lm22_if_loop_3_write,
    output wire [255:0] avm_lm22_if_loop_3_writedata,
    output wire [0:0] avst_iord_bl_call_if_loop_3_almost_full,
    output wire [0:0] avst_iord_bl_call_if_loop_3_ready,
    output wire [31:0] avst_iowr_bl_return_if_loop_3_data,
    output wire [0:0] avst_iowr_bl_return_if_loop_3_valid,
    output wire [0:0] busy,
    output wire [0:0] done,
    output wire [31:0] returndata,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] a_const_q;
    wire [0:0] busy_and_q;
    wire [0:0] busy_or_q;
    wire [0:0] if_loop_3_function_out_iord_bl_call_if_loop_3_o_fifoalmost_full;
    wire [0:0] if_loop_3_function_out_iord_bl_call_if_loop_3_o_fifoready;
    wire [31:0] if_loop_3_function_out_iowr_bl_return_if_loop_3_o_fifodata;
    wire [0:0] if_loop_3_function_out_iowr_bl_return_if_loop_3_o_fifovalid;
    wire [31:0] if_loop_3_function_out_lm1_if_loop_3_avm_address;
    wire [0:0] if_loop_3_function_out_lm1_if_loop_3_avm_burstcount;
    wire [31:0] if_loop_3_function_out_lm1_if_loop_3_avm_byteenable;
    wire [0:0] if_loop_3_function_out_lm1_if_loop_3_avm_enable;
    wire [0:0] if_loop_3_function_out_lm1_if_loop_3_avm_read;
    wire [0:0] if_loop_3_function_out_lm1_if_loop_3_avm_write;
    wire [255:0] if_loop_3_function_out_lm1_if_loop_3_avm_writedata;
    wire [31:0] if_loop_3_function_out_lm22_if_loop_3_avm_address;
    wire [0:0] if_loop_3_function_out_lm22_if_loop_3_avm_burstcount;
    wire [31:0] if_loop_3_function_out_lm22_if_loop_3_avm_byteenable;
    wire [0:0] if_loop_3_function_out_lm22_if_loop_3_avm_enable;
    wire [0:0] if_loop_3_function_out_lm22_if_loop_3_avm_read;
    wire [0:0] if_loop_3_function_out_lm22_if_loop_3_avm_write;
    wire [255:0] if_loop_3_function_out_lm22_if_loop_3_avm_writedata;
    wire [191:0] implicit_input_q;
    wire [31:0] implicit_input_pad_const_end_q;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,32)
    assign not_stall_q = ~ (stall);

    // implicit_input_pad_const_end(CONSTANT,11)
    assign implicit_input_pad_const_end_q = $unsigned(32'b00000000000000000000000000000000);

    // implicit_input(BITJOIN,10)
    assign implicit_input_q = {implicit_input_pad_const_end_q, n, b, a};

    // a_const(CONSTANT,2)
    assign a_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // if_loop_3_function(BLACKBOX,9)
    if_loop_3_function theif_loop_3_function (
        .in_arg_a(a_const_q),
        .in_arg_b(a_const_q),
        .in_arg_call(a_const_q),
        .in_arg_return(a_const_q),
        .in_iord_bl_call_if_loop_3_i_fifodata(implicit_input_q),
        .in_iord_bl_call_if_loop_3_i_fifovalid(start),
        .in_iowr_bl_return_if_loop_3_i_fifoready(not_stall_q),
        .in_lm1_if_loop_3_avm_readdata(avm_lm1_if_loop_3_readdata),
        .in_lm1_if_loop_3_avm_readdatavalid(avm_lm1_if_loop_3_readdatavalid),
        .in_lm1_if_loop_3_avm_waitrequest(avm_lm1_if_loop_3_waitrequest),
        .in_lm1_if_loop_3_avm_writeack(avm_lm1_if_loop_3_writeack),
        .in_lm22_if_loop_3_avm_readdata(avm_lm22_if_loop_3_readdata),
        .in_lm22_if_loop_3_avm_readdatavalid(avm_lm22_if_loop_3_readdatavalid),
        .in_lm22_if_loop_3_avm_waitrequest(avm_lm22_if_loop_3_waitrequest),
        .in_lm22_if_loop_3_avm_writeack(avm_lm22_if_loop_3_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_if_loop_3_o_fifoalmost_full(if_loop_3_function_out_iord_bl_call_if_loop_3_o_fifoalmost_full),
        .out_iord_bl_call_if_loop_3_o_fifoready(if_loop_3_function_out_iord_bl_call_if_loop_3_o_fifoready),
        .out_iowr_bl_return_if_loop_3_o_fifodata(if_loop_3_function_out_iowr_bl_return_if_loop_3_o_fifodata),
        .out_iowr_bl_return_if_loop_3_o_fifovalid(if_loop_3_function_out_iowr_bl_return_if_loop_3_o_fifovalid),
        .out_lm1_if_loop_3_avm_address(if_loop_3_function_out_lm1_if_loop_3_avm_address),
        .out_lm1_if_loop_3_avm_burstcount(if_loop_3_function_out_lm1_if_loop_3_avm_burstcount),
        .out_lm1_if_loop_3_avm_byteenable(if_loop_3_function_out_lm1_if_loop_3_avm_byteenable),
        .out_lm1_if_loop_3_avm_enable(if_loop_3_function_out_lm1_if_loop_3_avm_enable),
        .out_lm1_if_loop_3_avm_read(if_loop_3_function_out_lm1_if_loop_3_avm_read),
        .out_lm1_if_loop_3_avm_write(if_loop_3_function_out_lm1_if_loop_3_avm_write),
        .out_lm1_if_loop_3_avm_writedata(if_loop_3_function_out_lm1_if_loop_3_avm_writedata),
        .out_lm22_if_loop_3_avm_address(if_loop_3_function_out_lm22_if_loop_3_avm_address),
        .out_lm22_if_loop_3_avm_burstcount(if_loop_3_function_out_lm22_if_loop_3_avm_burstcount),
        .out_lm22_if_loop_3_avm_byteenable(if_loop_3_function_out_lm22_if_loop_3_avm_byteenable),
        .out_lm22_if_loop_3_avm_enable(if_loop_3_function_out_lm22_if_loop_3_avm_enable),
        .out_lm22_if_loop_3_avm_read(if_loop_3_function_out_lm22_if_loop_3_avm_read),
        .out_lm22_if_loop_3_avm_write(if_loop_3_function_out_lm22_if_loop_3_avm_write),
        .out_lm22_if_loop_3_avm_writedata(if_loop_3_function_out_lm22_if_loop_3_avm_writedata),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_lm1_if_loop_3_address(GPOUT,33)
    assign avm_lm1_if_loop_3_address = if_loop_3_function_out_lm1_if_loop_3_avm_address;

    // avm_lm1_if_loop_3_burstcount(GPOUT,34)
    assign avm_lm1_if_loop_3_burstcount = if_loop_3_function_out_lm1_if_loop_3_avm_burstcount;

    // avm_lm1_if_loop_3_byteenable(GPOUT,35)
    assign avm_lm1_if_loop_3_byteenable = if_loop_3_function_out_lm1_if_loop_3_avm_byteenable;

    // avm_lm1_if_loop_3_enable(GPOUT,36)
    assign avm_lm1_if_loop_3_enable = if_loop_3_function_out_lm1_if_loop_3_avm_enable;

    // avm_lm1_if_loop_3_read(GPOUT,37)
    assign avm_lm1_if_loop_3_read = if_loop_3_function_out_lm1_if_loop_3_avm_read;

    // avm_lm1_if_loop_3_write(GPOUT,38)
    assign avm_lm1_if_loop_3_write = if_loop_3_function_out_lm1_if_loop_3_avm_write;

    // avm_lm1_if_loop_3_writedata(GPOUT,39)
    assign avm_lm1_if_loop_3_writedata = if_loop_3_function_out_lm1_if_loop_3_avm_writedata;

    // avm_lm22_if_loop_3_address(GPOUT,40)
    assign avm_lm22_if_loop_3_address = if_loop_3_function_out_lm22_if_loop_3_avm_address;

    // avm_lm22_if_loop_3_burstcount(GPOUT,41)
    assign avm_lm22_if_loop_3_burstcount = if_loop_3_function_out_lm22_if_loop_3_avm_burstcount;

    // avm_lm22_if_loop_3_byteenable(GPOUT,42)
    assign avm_lm22_if_loop_3_byteenable = if_loop_3_function_out_lm22_if_loop_3_avm_byteenable;

    // avm_lm22_if_loop_3_enable(GPOUT,43)
    assign avm_lm22_if_loop_3_enable = if_loop_3_function_out_lm22_if_loop_3_avm_enable;

    // avm_lm22_if_loop_3_read(GPOUT,44)
    assign avm_lm22_if_loop_3_read = if_loop_3_function_out_lm22_if_loop_3_avm_read;

    // avm_lm22_if_loop_3_write(GPOUT,45)
    assign avm_lm22_if_loop_3_write = if_loop_3_function_out_lm22_if_loop_3_avm_write;

    // avm_lm22_if_loop_3_writedata(GPOUT,46)
    assign avm_lm22_if_loop_3_writedata = if_loop_3_function_out_lm22_if_loop_3_avm_writedata;

    // avst_iord_bl_call_if_loop_3_almost_full(GPOUT,47)
    assign avst_iord_bl_call_if_loop_3_almost_full = if_loop_3_function_out_iord_bl_call_if_loop_3_o_fifoalmost_full;

    // avst_iord_bl_call_if_loop_3_ready(GPOUT,48)
    assign avst_iord_bl_call_if_loop_3_ready = if_loop_3_function_out_iord_bl_call_if_loop_3_o_fifoready;

    // avst_iowr_bl_return_if_loop_3_data(GPOUT,49)
    assign avst_iowr_bl_return_if_loop_3_data = if_loop_3_function_out_iowr_bl_return_if_loop_3_o_fifodata;

    // avst_iowr_bl_return_if_loop_3_valid(GPOUT,50)
    assign avst_iowr_bl_return_if_loop_3_valid = if_loop_3_function_out_iowr_bl_return_if_loop_3_o_fifovalid;

    // not_ready(LOGICAL,31)
    assign not_ready_q = ~ (if_loop_3_function_out_iord_bl_call_if_loop_3_o_fifoready);

    // busy_and(LOGICAL,4)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,55)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,54)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,5)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,51)
    assign busy = busy_or_q;

    // done(GPOUT,52)
    assign done = if_loop_3_function_out_iowr_bl_return_if_loop_3_o_fifovalid;

    // returndata(GPOUT,53)
    assign returndata = if_loop_3_function_out_iowr_bl_return_if_loop_3_o_fifodata;

endmodule
