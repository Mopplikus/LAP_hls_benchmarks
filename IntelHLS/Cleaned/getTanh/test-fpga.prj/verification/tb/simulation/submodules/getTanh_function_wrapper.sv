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

// SystemVerilog created from getTanh_function_wrapper
// Created for function/kernel getTanh
// SystemVerilog created on Tue Jun 13 02:26:23 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module getTanh_function_wrapper (
    input wire [63:0] A,
    input wire [63:0] addr,
    input wire [31:0] avm_memdep_getTanh_readdata,
    input wire [0:0] avm_memdep_getTanh_readdatavalid,
    input wire [0:0] avm_memdep_getTanh_waitrequest,
    input wire [0:0] avm_memdep_getTanh_writeack,
    input wire [31:0] avm_unnamed_getTanh7_getTanh_readdata,
    input wire [0:0] avm_unnamed_getTanh7_getTanh_readdatavalid,
    input wire [0:0] avm_unnamed_getTanh7_getTanh_waitrequest,
    input wire [0:0] avm_unnamed_getTanh7_getTanh_writeack,
    input wire [31:0] avm_unnamed_getTanh9_getTanh_readdata,
    input wire [0:0] avm_unnamed_getTanh9_getTanh_readdatavalid,
    input wire [0:0] avm_unnamed_getTanh9_getTanh_waitrequest,
    input wire [0:0] avm_unnamed_getTanh9_getTanh_writeack,
    input wire [127:0] avst_iord_bl_call_getTanh_data,
    input wire [0:0] avst_iord_bl_call_getTanh_valid,
    input wire [0:0] avst_iowr_bl_return_getTanh_almostfull,
    input wire [0:0] avst_iowr_bl_return_getTanh_ready,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [31:0] avm_memdep_getTanh_address,
    output wire [0:0] avm_memdep_getTanh_burstcount,
    output wire [3:0] avm_memdep_getTanh_byteenable,
    output wire [0:0] avm_memdep_getTanh_enable,
    output wire [0:0] avm_memdep_getTanh_read,
    output wire [0:0] avm_memdep_getTanh_write,
    output wire [31:0] avm_memdep_getTanh_writedata,
    output wire [31:0] avm_unnamed_getTanh7_getTanh_address,
    output wire [0:0] avm_unnamed_getTanh7_getTanh_burstcount,
    output wire [3:0] avm_unnamed_getTanh7_getTanh_byteenable,
    output wire [0:0] avm_unnamed_getTanh7_getTanh_enable,
    output wire [0:0] avm_unnamed_getTanh7_getTanh_read,
    output wire [0:0] avm_unnamed_getTanh7_getTanh_write,
    output wire [31:0] avm_unnamed_getTanh7_getTanh_writedata,
    output wire [31:0] avm_unnamed_getTanh9_getTanh_address,
    output wire [0:0] avm_unnamed_getTanh9_getTanh_burstcount,
    output wire [3:0] avm_unnamed_getTanh9_getTanh_byteenable,
    output wire [0:0] avm_unnamed_getTanh9_getTanh_enable,
    output wire [0:0] avm_unnamed_getTanh9_getTanh_read,
    output wire [0:0] avm_unnamed_getTanh9_getTanh_write,
    output wire [31:0] avm_unnamed_getTanh9_getTanh_writedata,
    output wire [0:0] avst_iord_bl_call_getTanh_almost_full,
    output wire [0:0] avst_iord_bl_call_getTanh_ready,
    output wire [31:0] avst_iowr_bl_return_getTanh_data,
    output wire [0:0] avst_iowr_bl_return_getTanh_valid,
    output wire [0:0] busy,
    output wire [0:0] done,
    output wire [31:0] returndata,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] A_const_q;
    wire [0:0] busy_and_q;
    wire [0:0] busy_or_q;
    wire [0:0] getTanh_function_out_iord_bl_call_getTanh_o_fifoalmost_full;
    wire [0:0] getTanh_function_out_iord_bl_call_getTanh_o_fifoready;
    wire [31:0] getTanh_function_out_iowr_bl_return_getTanh_o_fifodata;
    wire [0:0] getTanh_function_out_iowr_bl_return_getTanh_o_fifovalid;
    wire [31:0] getTanh_function_out_memdep_getTanh_avm_address;
    wire [0:0] getTanh_function_out_memdep_getTanh_avm_burstcount;
    wire [3:0] getTanh_function_out_memdep_getTanh_avm_byteenable;
    wire [0:0] getTanh_function_out_memdep_getTanh_avm_enable;
    wire [0:0] getTanh_function_out_memdep_getTanh_avm_read;
    wire [0:0] getTanh_function_out_memdep_getTanh_avm_write;
    wire [31:0] getTanh_function_out_memdep_getTanh_avm_writedata;
    wire [31:0] getTanh_function_out_unnamed_getTanh7_getTanh_avm_address;
    wire [0:0] getTanh_function_out_unnamed_getTanh7_getTanh_avm_burstcount;
    wire [3:0] getTanh_function_out_unnamed_getTanh7_getTanh_avm_byteenable;
    wire [0:0] getTanh_function_out_unnamed_getTanh7_getTanh_avm_enable;
    wire [0:0] getTanh_function_out_unnamed_getTanh7_getTanh_avm_read;
    wire [0:0] getTanh_function_out_unnamed_getTanh7_getTanh_avm_write;
    wire [31:0] getTanh_function_out_unnamed_getTanh7_getTanh_avm_writedata;
    wire [31:0] getTanh_function_out_unnamed_getTanh9_getTanh_avm_address;
    wire [0:0] getTanh_function_out_unnamed_getTanh9_getTanh_avm_burstcount;
    wire [3:0] getTanh_function_out_unnamed_getTanh9_getTanh_avm_byteenable;
    wire [0:0] getTanh_function_out_unnamed_getTanh9_getTanh_avm_enable;
    wire [0:0] getTanh_function_out_unnamed_getTanh9_getTanh_avm_read;
    wire [0:0] getTanh_function_out_unnamed_getTanh9_getTanh_avm_write;
    wire [31:0] getTanh_function_out_unnamed_getTanh9_getTanh_avm_writedata;
    wire [127:0] implicit_input_q;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,34)
    assign not_stall_q = ~ (stall);

    // implicit_input(BITJOIN,10)
    assign implicit_input_q = {addr, A};

    // A_const(CONSTANT,2)
    assign A_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // getTanh_function(BLACKBOX,9)
    getTanh_function thegetTanh_function (
        .in_arg_A(A_const_q),
        .in_arg_addr(A_const_q),
        .in_arg_call(A_const_q),
        .in_arg_return(A_const_q),
        .in_iord_bl_call_getTanh_i_fifodata(implicit_input_q),
        .in_iord_bl_call_getTanh_i_fifovalid(start),
        .in_iowr_bl_return_getTanh_i_fifoready(not_stall_q),
        .in_memdep_getTanh_avm_readdata(avm_memdep_getTanh_readdata),
        .in_memdep_getTanh_avm_readdatavalid(avm_memdep_getTanh_readdatavalid),
        .in_memdep_getTanh_avm_waitrequest(avm_memdep_getTanh_waitrequest),
        .in_memdep_getTanh_avm_writeack(avm_memdep_getTanh_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_unnamed_getTanh7_getTanh_avm_readdata(avm_unnamed_getTanh7_getTanh_readdata),
        .in_unnamed_getTanh7_getTanh_avm_readdatavalid(avm_unnamed_getTanh7_getTanh_readdatavalid),
        .in_unnamed_getTanh7_getTanh_avm_waitrequest(avm_unnamed_getTanh7_getTanh_waitrequest),
        .in_unnamed_getTanh7_getTanh_avm_writeack(avm_unnamed_getTanh7_getTanh_writeack),
        .in_unnamed_getTanh9_getTanh_avm_readdata(avm_unnamed_getTanh9_getTanh_readdata),
        .in_unnamed_getTanh9_getTanh_avm_readdatavalid(avm_unnamed_getTanh9_getTanh_readdatavalid),
        .in_unnamed_getTanh9_getTanh_avm_waitrequest(avm_unnamed_getTanh9_getTanh_waitrequest),
        .in_unnamed_getTanh9_getTanh_avm_writeack(avm_unnamed_getTanh9_getTanh_writeack),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_getTanh_o_fifoalmost_full(getTanh_function_out_iord_bl_call_getTanh_o_fifoalmost_full),
        .out_iord_bl_call_getTanh_o_fifoready(getTanh_function_out_iord_bl_call_getTanh_o_fifoready),
        .out_iowr_bl_return_getTanh_o_fifodata(getTanh_function_out_iowr_bl_return_getTanh_o_fifodata),
        .out_iowr_bl_return_getTanh_o_fifovalid(getTanh_function_out_iowr_bl_return_getTanh_o_fifovalid),
        .out_memdep_getTanh_avm_address(getTanh_function_out_memdep_getTanh_avm_address),
        .out_memdep_getTanh_avm_burstcount(getTanh_function_out_memdep_getTanh_avm_burstcount),
        .out_memdep_getTanh_avm_byteenable(getTanh_function_out_memdep_getTanh_avm_byteenable),
        .out_memdep_getTanh_avm_enable(getTanh_function_out_memdep_getTanh_avm_enable),
        .out_memdep_getTanh_avm_read(getTanh_function_out_memdep_getTanh_avm_read),
        .out_memdep_getTanh_avm_write(getTanh_function_out_memdep_getTanh_avm_write),
        .out_memdep_getTanh_avm_writedata(getTanh_function_out_memdep_getTanh_avm_writedata),
        .out_o_active_memdep(),
        .out_stall_out(),
        .out_unnamed_getTanh7_getTanh_avm_address(getTanh_function_out_unnamed_getTanh7_getTanh_avm_address),
        .out_unnamed_getTanh7_getTanh_avm_burstcount(getTanh_function_out_unnamed_getTanh7_getTanh_avm_burstcount),
        .out_unnamed_getTanh7_getTanh_avm_byteenable(getTanh_function_out_unnamed_getTanh7_getTanh_avm_byteenable),
        .out_unnamed_getTanh7_getTanh_avm_enable(getTanh_function_out_unnamed_getTanh7_getTanh_avm_enable),
        .out_unnamed_getTanh7_getTanh_avm_read(getTanh_function_out_unnamed_getTanh7_getTanh_avm_read),
        .out_unnamed_getTanh7_getTanh_avm_write(getTanh_function_out_unnamed_getTanh7_getTanh_avm_write),
        .out_unnamed_getTanh7_getTanh_avm_writedata(getTanh_function_out_unnamed_getTanh7_getTanh_avm_writedata),
        .out_unnamed_getTanh9_getTanh_avm_address(getTanh_function_out_unnamed_getTanh9_getTanh_avm_address),
        .out_unnamed_getTanh9_getTanh_avm_burstcount(getTanh_function_out_unnamed_getTanh9_getTanh_avm_burstcount),
        .out_unnamed_getTanh9_getTanh_avm_byteenable(getTanh_function_out_unnamed_getTanh9_getTanh_avm_byteenable),
        .out_unnamed_getTanh9_getTanh_avm_enable(getTanh_function_out_unnamed_getTanh9_getTanh_avm_enable),
        .out_unnamed_getTanh9_getTanh_avm_read(getTanh_function_out_unnamed_getTanh9_getTanh_avm_read),
        .out_unnamed_getTanh9_getTanh_avm_write(getTanh_function_out_unnamed_getTanh9_getTanh_avm_write),
        .out_unnamed_getTanh9_getTanh_avm_writedata(getTanh_function_out_unnamed_getTanh9_getTanh_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_memdep_getTanh_address(GPOUT,35)
    assign avm_memdep_getTanh_address = getTanh_function_out_memdep_getTanh_avm_address;

    // avm_memdep_getTanh_burstcount(GPOUT,36)
    assign avm_memdep_getTanh_burstcount = getTanh_function_out_memdep_getTanh_avm_burstcount;

    // avm_memdep_getTanh_byteenable(GPOUT,37)
    assign avm_memdep_getTanh_byteenable = getTanh_function_out_memdep_getTanh_avm_byteenable;

    // avm_memdep_getTanh_enable(GPOUT,38)
    assign avm_memdep_getTanh_enable = getTanh_function_out_memdep_getTanh_avm_enable;

    // avm_memdep_getTanh_read(GPOUT,39)
    assign avm_memdep_getTanh_read = getTanh_function_out_memdep_getTanh_avm_read;

    // avm_memdep_getTanh_write(GPOUT,40)
    assign avm_memdep_getTanh_write = getTanh_function_out_memdep_getTanh_avm_write;

    // avm_memdep_getTanh_writedata(GPOUT,41)
    assign avm_memdep_getTanh_writedata = getTanh_function_out_memdep_getTanh_avm_writedata;

    // avm_unnamed_getTanh7_getTanh_address(GPOUT,42)
    assign avm_unnamed_getTanh7_getTanh_address = getTanh_function_out_unnamed_getTanh7_getTanh_avm_address;

    // avm_unnamed_getTanh7_getTanh_burstcount(GPOUT,43)
    assign avm_unnamed_getTanh7_getTanh_burstcount = getTanh_function_out_unnamed_getTanh7_getTanh_avm_burstcount;

    // avm_unnamed_getTanh7_getTanh_byteenable(GPOUT,44)
    assign avm_unnamed_getTanh7_getTanh_byteenable = getTanh_function_out_unnamed_getTanh7_getTanh_avm_byteenable;

    // avm_unnamed_getTanh7_getTanh_enable(GPOUT,45)
    assign avm_unnamed_getTanh7_getTanh_enable = getTanh_function_out_unnamed_getTanh7_getTanh_avm_enable;

    // avm_unnamed_getTanh7_getTanh_read(GPOUT,46)
    assign avm_unnamed_getTanh7_getTanh_read = getTanh_function_out_unnamed_getTanh7_getTanh_avm_read;

    // avm_unnamed_getTanh7_getTanh_write(GPOUT,47)
    assign avm_unnamed_getTanh7_getTanh_write = getTanh_function_out_unnamed_getTanh7_getTanh_avm_write;

    // avm_unnamed_getTanh7_getTanh_writedata(GPOUT,48)
    assign avm_unnamed_getTanh7_getTanh_writedata = getTanh_function_out_unnamed_getTanh7_getTanh_avm_writedata;

    // avm_unnamed_getTanh9_getTanh_address(GPOUT,49)
    assign avm_unnamed_getTanh9_getTanh_address = getTanh_function_out_unnamed_getTanh9_getTanh_avm_address;

    // avm_unnamed_getTanh9_getTanh_burstcount(GPOUT,50)
    assign avm_unnamed_getTanh9_getTanh_burstcount = getTanh_function_out_unnamed_getTanh9_getTanh_avm_burstcount;

    // avm_unnamed_getTanh9_getTanh_byteenable(GPOUT,51)
    assign avm_unnamed_getTanh9_getTanh_byteenable = getTanh_function_out_unnamed_getTanh9_getTanh_avm_byteenable;

    // avm_unnamed_getTanh9_getTanh_enable(GPOUT,52)
    assign avm_unnamed_getTanh9_getTanh_enable = getTanh_function_out_unnamed_getTanh9_getTanh_avm_enable;

    // avm_unnamed_getTanh9_getTanh_read(GPOUT,53)
    assign avm_unnamed_getTanh9_getTanh_read = getTanh_function_out_unnamed_getTanh9_getTanh_avm_read;

    // avm_unnamed_getTanh9_getTanh_write(GPOUT,54)
    assign avm_unnamed_getTanh9_getTanh_write = getTanh_function_out_unnamed_getTanh9_getTanh_avm_write;

    // avm_unnamed_getTanh9_getTanh_writedata(GPOUT,55)
    assign avm_unnamed_getTanh9_getTanh_writedata = getTanh_function_out_unnamed_getTanh9_getTanh_avm_writedata;

    // avst_iord_bl_call_getTanh_almost_full(GPOUT,56)
    assign avst_iord_bl_call_getTanh_almost_full = getTanh_function_out_iord_bl_call_getTanh_o_fifoalmost_full;

    // avst_iord_bl_call_getTanh_ready(GPOUT,57)
    assign avst_iord_bl_call_getTanh_ready = getTanh_function_out_iord_bl_call_getTanh_o_fifoready;

    // avst_iowr_bl_return_getTanh_data(GPOUT,58)
    assign avst_iowr_bl_return_getTanh_data = getTanh_function_out_iowr_bl_return_getTanh_o_fifodata;

    // avst_iowr_bl_return_getTanh_valid(GPOUT,59)
    assign avst_iowr_bl_return_getTanh_valid = getTanh_function_out_iowr_bl_return_getTanh_o_fifovalid;

    // not_ready(LOGICAL,33)
    assign not_ready_q = ~ (getTanh_function_out_iord_bl_call_getTanh_o_fifoready);

    // busy_and(LOGICAL,4)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,64)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,63)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,5)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,60)
    assign busy = busy_or_q;

    // done(GPOUT,61)
    assign done = getTanh_function_out_iowr_bl_return_getTanh_o_fifovalid;

    // returndata(GPOUT,62)
    assign returndata = getTanh_function_out_iowr_bl_return_getTanh_o_fifodata;

endmodule
