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

// SystemVerilog created from triangular_function_wrapper
// Created for function/kernel triangular
// SystemVerilog created on Fri Apr  7 16:28:15 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_function_wrapper (
    input wire [63:0] A,
    input wire [31:0] avm_lm113_triangular_readdata,
    input wire [0:0] avm_lm113_triangular_readdatavalid,
    input wire [0:0] avm_lm113_triangular_waitrequest,
    input wire [0:0] avm_lm113_triangular_writeack,
    input wire [31:0] avm_lm1_triangular_readdata,
    input wire [0:0] avm_lm1_triangular_readdatavalid,
    input wire [0:0] avm_lm1_triangular_waitrequest,
    input wire [0:0] avm_lm1_triangular_writeack,
    input wire [31:0] avm_lm92_triangular_readdata,
    input wire [0:0] avm_lm92_triangular_readdatavalid,
    input wire [0:0] avm_lm92_triangular_waitrequest,
    input wire [0:0] avm_lm92_triangular_writeack,
    input wire [31:0] avm_memdep_triangular_readdata,
    input wire [0:0] avm_memdep_triangular_readdatavalid,
    input wire [0:0] avm_memdep_triangular_waitrequest,
    input wire [0:0] avm_memdep_triangular_writeack,
    input wire [191:0] avst_iord_bl_call_triangular_data,
    input wire [0:0] avst_iord_bl_call_triangular_valid,
    input wire [0:0] avst_iowr_bl_return_triangular_almostfull,
    input wire [0:0] avst_iowr_bl_return_triangular_ready,
    input wire [31:0] n,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    input wire [63:0] x,
    output wire [31:0] avm_lm113_triangular_address,
    output wire [0:0] avm_lm113_triangular_burstcount,
    output wire [3:0] avm_lm113_triangular_byteenable,
    output wire [0:0] avm_lm113_triangular_enable,
    output wire [0:0] avm_lm113_triangular_read,
    output wire [0:0] avm_lm113_triangular_write,
    output wire [31:0] avm_lm113_triangular_writedata,
    output wire [31:0] avm_lm1_triangular_address,
    output wire [0:0] avm_lm1_triangular_burstcount,
    output wire [3:0] avm_lm1_triangular_byteenable,
    output wire [0:0] avm_lm1_triangular_enable,
    output wire [0:0] avm_lm1_triangular_read,
    output wire [0:0] avm_lm1_triangular_write,
    output wire [31:0] avm_lm1_triangular_writedata,
    output wire [31:0] avm_lm92_triangular_address,
    output wire [0:0] avm_lm92_triangular_burstcount,
    output wire [3:0] avm_lm92_triangular_byteenable,
    output wire [0:0] avm_lm92_triangular_enable,
    output wire [0:0] avm_lm92_triangular_read,
    output wire [0:0] avm_lm92_triangular_write,
    output wire [31:0] avm_lm92_triangular_writedata,
    output wire [31:0] avm_memdep_triangular_address,
    output wire [0:0] avm_memdep_triangular_burstcount,
    output wire [3:0] avm_memdep_triangular_byteenable,
    output wire [0:0] avm_memdep_triangular_enable,
    output wire [0:0] avm_memdep_triangular_read,
    output wire [0:0] avm_memdep_triangular_write,
    output wire [31:0] avm_memdep_triangular_writedata,
    output wire [0:0] avst_iord_bl_call_triangular_almost_full,
    output wire [0:0] avst_iord_bl_call_triangular_ready,
    output wire [0:0] avst_iowr_bl_return_triangular_data,
    output wire [0:0] avst_iowr_bl_return_triangular_valid,
    output wire [0:0] busy,
    output wire [0:0] done,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] A_const_q;
    wire [0:0] busy_and_q;
    wire [0:0] busy_or_q;
    wire [191:0] implicit_input_q;
    wire [31:0] implicit_input_pad_const_end_q;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;
    wire [0:0] triangular_function_out_iord_bl_call_triangular_o_fifoalmost_full;
    wire [0:0] triangular_function_out_iord_bl_call_triangular_o_fifoready;
    wire [0:0] triangular_function_out_iowr_bl_return_triangular_o_fifodata;
    wire [0:0] triangular_function_out_iowr_bl_return_triangular_o_fifovalid;
    wire [31:0] triangular_function_out_lm113_triangular_avm_address;
    wire [0:0] triangular_function_out_lm113_triangular_avm_burstcount;
    wire [3:0] triangular_function_out_lm113_triangular_avm_byteenable;
    wire [0:0] triangular_function_out_lm113_triangular_avm_enable;
    wire [0:0] triangular_function_out_lm113_triangular_avm_read;
    wire [0:0] triangular_function_out_lm113_triangular_avm_write;
    wire [31:0] triangular_function_out_lm113_triangular_avm_writedata;
    wire [31:0] triangular_function_out_lm1_triangular_avm_address;
    wire [0:0] triangular_function_out_lm1_triangular_avm_burstcount;
    wire [3:0] triangular_function_out_lm1_triangular_avm_byteenable;
    wire [0:0] triangular_function_out_lm1_triangular_avm_enable;
    wire [0:0] triangular_function_out_lm1_triangular_avm_read;
    wire [0:0] triangular_function_out_lm1_triangular_avm_write;
    wire [31:0] triangular_function_out_lm1_triangular_avm_writedata;
    wire [31:0] triangular_function_out_lm92_triangular_avm_address;
    wire [0:0] triangular_function_out_lm92_triangular_avm_burstcount;
    wire [3:0] triangular_function_out_lm92_triangular_avm_byteenable;
    wire [0:0] triangular_function_out_lm92_triangular_avm_enable;
    wire [0:0] triangular_function_out_lm92_triangular_avm_read;
    wire [0:0] triangular_function_out_lm92_triangular_avm_write;
    wire [31:0] triangular_function_out_lm92_triangular_avm_writedata;
    wire [31:0] triangular_function_out_memdep_triangular_avm_address;
    wire [0:0] triangular_function_out_memdep_triangular_avm_burstcount;
    wire [3:0] triangular_function_out_memdep_triangular_avm_byteenable;
    wire [0:0] triangular_function_out_memdep_triangular_avm_enable;
    wire [0:0] triangular_function_out_memdep_triangular_avm_read;
    wire [0:0] triangular_function_out_memdep_triangular_avm_write;
    wire [31:0] triangular_function_out_memdep_triangular_avm_writedata;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,38)
    assign not_stall_q = ~ (stall);

    // implicit_input_pad_const_end(CONSTANT,9)
    assign implicit_input_pad_const_end_q = $unsigned(32'b00000000000000000000000000000000);

    // implicit_input(BITJOIN,8)
    assign implicit_input_q = {implicit_input_pad_const_end_q, n, A, x};

    // A_const(CONSTANT,2)
    assign A_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // triangular_function(BLACKBOX,76)
    triangular_function thetriangular_function (
        .in_arg_A(A_const_q),
        .in_arg_call(A_const_q),
        .in_arg_return(A_const_q),
        .in_arg_x(A_const_q),
        .in_iord_bl_call_triangular_i_fifodata(implicit_input_q),
        .in_iord_bl_call_triangular_i_fifovalid(start),
        .in_iowr_bl_return_triangular_i_fifoready(not_stall_q),
        .in_lm113_triangular_avm_readdata(avm_lm113_triangular_readdata),
        .in_lm113_triangular_avm_readdatavalid(avm_lm113_triangular_readdatavalid),
        .in_lm113_triangular_avm_waitrequest(avm_lm113_triangular_waitrequest),
        .in_lm113_triangular_avm_writeack(avm_lm113_triangular_writeack),
        .in_lm1_triangular_avm_readdata(avm_lm1_triangular_readdata),
        .in_lm1_triangular_avm_readdatavalid(avm_lm1_triangular_readdatavalid),
        .in_lm1_triangular_avm_waitrequest(avm_lm1_triangular_waitrequest),
        .in_lm1_triangular_avm_writeack(avm_lm1_triangular_writeack),
        .in_lm92_triangular_avm_readdata(avm_lm92_triangular_readdata),
        .in_lm92_triangular_avm_readdatavalid(avm_lm92_triangular_readdatavalid),
        .in_lm92_triangular_avm_waitrequest(avm_lm92_triangular_waitrequest),
        .in_lm92_triangular_avm_writeack(avm_lm92_triangular_writeack),
        .in_memdep_triangular_avm_readdata(avm_memdep_triangular_readdata),
        .in_memdep_triangular_avm_readdatavalid(avm_memdep_triangular_readdatavalid),
        .in_memdep_triangular_avm_waitrequest(avm_memdep_triangular_waitrequest),
        .in_memdep_triangular_avm_writeack(avm_memdep_triangular_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_triangular_o_fifoalmost_full(triangular_function_out_iord_bl_call_triangular_o_fifoalmost_full),
        .out_iord_bl_call_triangular_o_fifoready(triangular_function_out_iord_bl_call_triangular_o_fifoready),
        .out_iowr_bl_return_triangular_o_fifodata(triangular_function_out_iowr_bl_return_triangular_o_fifodata),
        .out_iowr_bl_return_triangular_o_fifovalid(triangular_function_out_iowr_bl_return_triangular_o_fifovalid),
        .out_lm113_triangular_avm_address(triangular_function_out_lm113_triangular_avm_address),
        .out_lm113_triangular_avm_burstcount(triangular_function_out_lm113_triangular_avm_burstcount),
        .out_lm113_triangular_avm_byteenable(triangular_function_out_lm113_triangular_avm_byteenable),
        .out_lm113_triangular_avm_enable(triangular_function_out_lm113_triangular_avm_enable),
        .out_lm113_triangular_avm_read(triangular_function_out_lm113_triangular_avm_read),
        .out_lm113_triangular_avm_write(triangular_function_out_lm113_triangular_avm_write),
        .out_lm113_triangular_avm_writedata(triangular_function_out_lm113_triangular_avm_writedata),
        .out_lm1_triangular_avm_address(triangular_function_out_lm1_triangular_avm_address),
        .out_lm1_triangular_avm_burstcount(triangular_function_out_lm1_triangular_avm_burstcount),
        .out_lm1_triangular_avm_byteenable(triangular_function_out_lm1_triangular_avm_byteenable),
        .out_lm1_triangular_avm_enable(triangular_function_out_lm1_triangular_avm_enable),
        .out_lm1_triangular_avm_read(triangular_function_out_lm1_triangular_avm_read),
        .out_lm1_triangular_avm_write(triangular_function_out_lm1_triangular_avm_write),
        .out_lm1_triangular_avm_writedata(triangular_function_out_lm1_triangular_avm_writedata),
        .out_lm92_triangular_avm_address(triangular_function_out_lm92_triangular_avm_address),
        .out_lm92_triangular_avm_burstcount(triangular_function_out_lm92_triangular_avm_burstcount),
        .out_lm92_triangular_avm_byteenable(triangular_function_out_lm92_triangular_avm_byteenable),
        .out_lm92_triangular_avm_enable(triangular_function_out_lm92_triangular_avm_enable),
        .out_lm92_triangular_avm_read(triangular_function_out_lm92_triangular_avm_read),
        .out_lm92_triangular_avm_write(triangular_function_out_lm92_triangular_avm_write),
        .out_lm92_triangular_avm_writedata(triangular_function_out_lm92_triangular_avm_writedata),
        .out_memdep_triangular_avm_address(triangular_function_out_memdep_triangular_avm_address),
        .out_memdep_triangular_avm_burstcount(triangular_function_out_memdep_triangular_avm_burstcount),
        .out_memdep_triangular_avm_byteenable(triangular_function_out_memdep_triangular_avm_byteenable),
        .out_memdep_triangular_avm_enable(triangular_function_out_memdep_triangular_avm_enable),
        .out_memdep_triangular_avm_read(triangular_function_out_memdep_triangular_avm_read),
        .out_memdep_triangular_avm_write(triangular_function_out_memdep_triangular_avm_write),
        .out_memdep_triangular_avm_writedata(triangular_function_out_memdep_triangular_avm_writedata),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_lm113_triangular_address(GPOUT,39)
    assign avm_lm113_triangular_address = triangular_function_out_lm113_triangular_avm_address;

    // avm_lm113_triangular_burstcount(GPOUT,40)
    assign avm_lm113_triangular_burstcount = triangular_function_out_lm113_triangular_avm_burstcount;

    // avm_lm113_triangular_byteenable(GPOUT,41)
    assign avm_lm113_triangular_byteenable = triangular_function_out_lm113_triangular_avm_byteenable;

    // avm_lm113_triangular_enable(GPOUT,42)
    assign avm_lm113_triangular_enable = triangular_function_out_lm113_triangular_avm_enable;

    // avm_lm113_triangular_read(GPOUT,43)
    assign avm_lm113_triangular_read = triangular_function_out_lm113_triangular_avm_read;

    // avm_lm113_triangular_write(GPOUT,44)
    assign avm_lm113_triangular_write = triangular_function_out_lm113_triangular_avm_write;

    // avm_lm113_triangular_writedata(GPOUT,45)
    assign avm_lm113_triangular_writedata = triangular_function_out_lm113_triangular_avm_writedata;

    // avm_lm1_triangular_address(GPOUT,46)
    assign avm_lm1_triangular_address = triangular_function_out_lm1_triangular_avm_address;

    // avm_lm1_triangular_burstcount(GPOUT,47)
    assign avm_lm1_triangular_burstcount = triangular_function_out_lm1_triangular_avm_burstcount;

    // avm_lm1_triangular_byteenable(GPOUT,48)
    assign avm_lm1_triangular_byteenable = triangular_function_out_lm1_triangular_avm_byteenable;

    // avm_lm1_triangular_enable(GPOUT,49)
    assign avm_lm1_triangular_enable = triangular_function_out_lm1_triangular_avm_enable;

    // avm_lm1_triangular_read(GPOUT,50)
    assign avm_lm1_triangular_read = triangular_function_out_lm1_triangular_avm_read;

    // avm_lm1_triangular_write(GPOUT,51)
    assign avm_lm1_triangular_write = triangular_function_out_lm1_triangular_avm_write;

    // avm_lm1_triangular_writedata(GPOUT,52)
    assign avm_lm1_triangular_writedata = triangular_function_out_lm1_triangular_avm_writedata;

    // avm_lm92_triangular_address(GPOUT,53)
    assign avm_lm92_triangular_address = triangular_function_out_lm92_triangular_avm_address;

    // avm_lm92_triangular_burstcount(GPOUT,54)
    assign avm_lm92_triangular_burstcount = triangular_function_out_lm92_triangular_avm_burstcount;

    // avm_lm92_triangular_byteenable(GPOUT,55)
    assign avm_lm92_triangular_byteenable = triangular_function_out_lm92_triangular_avm_byteenable;

    // avm_lm92_triangular_enable(GPOUT,56)
    assign avm_lm92_triangular_enable = triangular_function_out_lm92_triangular_avm_enable;

    // avm_lm92_triangular_read(GPOUT,57)
    assign avm_lm92_triangular_read = triangular_function_out_lm92_triangular_avm_read;

    // avm_lm92_triangular_write(GPOUT,58)
    assign avm_lm92_triangular_write = triangular_function_out_lm92_triangular_avm_write;

    // avm_lm92_triangular_writedata(GPOUT,59)
    assign avm_lm92_triangular_writedata = triangular_function_out_lm92_triangular_avm_writedata;

    // avm_memdep_triangular_address(GPOUT,60)
    assign avm_memdep_triangular_address = triangular_function_out_memdep_triangular_avm_address;

    // avm_memdep_triangular_burstcount(GPOUT,61)
    assign avm_memdep_triangular_burstcount = triangular_function_out_memdep_triangular_avm_burstcount;

    // avm_memdep_triangular_byteenable(GPOUT,62)
    assign avm_memdep_triangular_byteenable = triangular_function_out_memdep_triangular_avm_byteenable;

    // avm_memdep_triangular_enable(GPOUT,63)
    assign avm_memdep_triangular_enable = triangular_function_out_memdep_triangular_avm_enable;

    // avm_memdep_triangular_read(GPOUT,64)
    assign avm_memdep_triangular_read = triangular_function_out_memdep_triangular_avm_read;

    // avm_memdep_triangular_write(GPOUT,65)
    assign avm_memdep_triangular_write = triangular_function_out_memdep_triangular_avm_write;

    // avm_memdep_triangular_writedata(GPOUT,66)
    assign avm_memdep_triangular_writedata = triangular_function_out_memdep_triangular_avm_writedata;

    // avst_iord_bl_call_triangular_almost_full(GPOUT,67)
    assign avst_iord_bl_call_triangular_almost_full = triangular_function_out_iord_bl_call_triangular_o_fifoalmost_full;

    // avst_iord_bl_call_triangular_ready(GPOUT,68)
    assign avst_iord_bl_call_triangular_ready = triangular_function_out_iord_bl_call_triangular_o_fifoready;

    // avst_iowr_bl_return_triangular_data(GPOUT,69)
    assign avst_iowr_bl_return_triangular_data = triangular_function_out_iowr_bl_return_triangular_o_fifodata;

    // avst_iowr_bl_return_triangular_valid(GPOUT,70)
    assign avst_iowr_bl_return_triangular_valid = triangular_function_out_iowr_bl_return_triangular_o_fifovalid;

    // not_ready(LOGICAL,37)
    assign not_ready_q = ~ (triangular_function_out_iord_bl_call_triangular_o_fifoready);

    // busy_and(LOGICAL,3)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,74)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,73)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,4)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,71)
    assign busy = busy_or_q;

    // done(GPOUT,72)
    assign done = triangular_function_out_iowr_bl_return_triangular_o_fifovalid;

endmodule
