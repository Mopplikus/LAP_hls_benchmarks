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

// SystemVerilog created from example_function_wrapper
// Created for function/kernel example
// SystemVerilog created on Tue Mar 14 13:54:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module example_function_wrapper (
    input wire [63:0] A,
    input wire [63:0] B,
    input wire [63:0] avm_unnamed_example5_example_readdata,
    input wire [0:0] avm_unnamed_example5_example_readdatavalid,
    input wire [0:0] avm_unnamed_example5_example_waitrequest,
    input wire [0:0] avm_unnamed_example5_example_writeack,
    input wire [63:0] avm_unnamed_example6_example_readdata,
    input wire [0:0] avm_unnamed_example6_example_readdatavalid,
    input wire [0:0] avm_unnamed_example6_example_waitrequest,
    input wire [0:0] avm_unnamed_example6_example_writeack,
    input wire [127:0] avst_iord_bl_call_example_data,
    input wire [0:0] avst_iord_bl_call_example_valid,
    input wire [0:0] avst_iowr_bl_return_example_almostfull,
    input wire [0:0] avst_iowr_bl_return_example_ready,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [63:0] avm_unnamed_example5_example_address,
    output wire [0:0] avm_unnamed_example5_example_burstcount,
    output wire [7:0] avm_unnamed_example5_example_byteenable,
    output wire [0:0] avm_unnamed_example5_example_enable,
    output wire [0:0] avm_unnamed_example5_example_read,
    output wire [0:0] avm_unnamed_example5_example_write,
    output wire [63:0] avm_unnamed_example5_example_writedata,
    output wire [63:0] avm_unnamed_example6_example_address,
    output wire [0:0] avm_unnamed_example6_example_burstcount,
    output wire [7:0] avm_unnamed_example6_example_byteenable,
    output wire [0:0] avm_unnamed_example6_example_enable,
    output wire [0:0] avm_unnamed_example6_example_read,
    output wire [0:0] avm_unnamed_example6_example_write,
    output wire [63:0] avm_unnamed_example6_example_writedata,
    output wire [0:0] avst_iord_bl_call_example_almost_full,
    output wire [0:0] avst_iord_bl_call_example_ready,
    output wire [31:0] avst_iowr_bl_return_example_data,
    output wire [0:0] avst_iowr_bl_return_example_valid,
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
    wire [0:0] example_function_out_iord_bl_call_example_o_fifoalmost_full;
    wire [0:0] example_function_out_iord_bl_call_example_o_fifoready;
    wire [31:0] example_function_out_iowr_bl_return_example_o_fifodata;
    wire [0:0] example_function_out_iowr_bl_return_example_o_fifovalid;
    wire [63:0] example_function_out_unnamed_example5_example_avm_address;
    wire [0:0] example_function_out_unnamed_example5_example_avm_burstcount;
    wire [7:0] example_function_out_unnamed_example5_example_avm_byteenable;
    wire [0:0] example_function_out_unnamed_example5_example_avm_enable;
    wire [0:0] example_function_out_unnamed_example5_example_avm_read;
    wire [0:0] example_function_out_unnamed_example5_example_avm_write;
    wire [63:0] example_function_out_unnamed_example5_example_avm_writedata;
    wire [63:0] example_function_out_unnamed_example6_example_avm_address;
    wire [0:0] example_function_out_unnamed_example6_example_avm_burstcount;
    wire [7:0] example_function_out_unnamed_example6_example_avm_byteenable;
    wire [0:0] example_function_out_unnamed_example6_example_avm_enable;
    wire [0:0] example_function_out_unnamed_example6_example_avm_read;
    wire [0:0] example_function_out_unnamed_example6_example_avm_write;
    wire [63:0] example_function_out_unnamed_example6_example_avm_writedata;
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

    // not_stall(LOGICAL,30)
    assign not_stall_q = ~ (stall);

    // implicit_input(BITJOIN,10)
    assign implicit_input_q = {B, A};

    // A_const(CONSTANT,2)
    assign A_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // example_function(BLACKBOX,9)
    example_function theexample_function (
        .in_arg_A(A_const_q),
        .in_arg_B(A_const_q),
        .in_arg_call(A_const_q),
        .in_arg_return(A_const_q),
        .in_iord_bl_call_example_i_fifodata(implicit_input_q),
        .in_iord_bl_call_example_i_fifovalid(start),
        .in_iowr_bl_return_example_i_fifoready(not_stall_q),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_unnamed_example5_example_avm_readdata(avm_unnamed_example5_example_readdata),
        .in_unnamed_example5_example_avm_readdatavalid(avm_unnamed_example5_example_readdatavalid),
        .in_unnamed_example5_example_avm_waitrequest(avm_unnamed_example5_example_waitrequest),
        .in_unnamed_example5_example_avm_writeack(avm_unnamed_example5_example_writeack),
        .in_unnamed_example6_example_avm_readdata(avm_unnamed_example6_example_readdata),
        .in_unnamed_example6_example_avm_readdatavalid(avm_unnamed_example6_example_readdatavalid),
        .in_unnamed_example6_example_avm_waitrequest(avm_unnamed_example6_example_waitrequest),
        .in_unnamed_example6_example_avm_writeack(avm_unnamed_example6_example_writeack),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_example_o_fifoalmost_full(example_function_out_iord_bl_call_example_o_fifoalmost_full),
        .out_iord_bl_call_example_o_fifoready(example_function_out_iord_bl_call_example_o_fifoready),
        .out_iowr_bl_return_example_o_fifodata(example_function_out_iowr_bl_return_example_o_fifodata),
        .out_iowr_bl_return_example_o_fifovalid(example_function_out_iowr_bl_return_example_o_fifovalid),
        .out_stall_out(),
        .out_unnamed_example5_example_avm_address(example_function_out_unnamed_example5_example_avm_address),
        .out_unnamed_example5_example_avm_burstcount(example_function_out_unnamed_example5_example_avm_burstcount),
        .out_unnamed_example5_example_avm_byteenable(example_function_out_unnamed_example5_example_avm_byteenable),
        .out_unnamed_example5_example_avm_enable(example_function_out_unnamed_example5_example_avm_enable),
        .out_unnamed_example5_example_avm_read(example_function_out_unnamed_example5_example_avm_read),
        .out_unnamed_example5_example_avm_write(example_function_out_unnamed_example5_example_avm_write),
        .out_unnamed_example5_example_avm_writedata(example_function_out_unnamed_example5_example_avm_writedata),
        .out_unnamed_example6_example_avm_address(example_function_out_unnamed_example6_example_avm_address),
        .out_unnamed_example6_example_avm_burstcount(example_function_out_unnamed_example6_example_avm_burstcount),
        .out_unnamed_example6_example_avm_byteenable(example_function_out_unnamed_example6_example_avm_byteenable),
        .out_unnamed_example6_example_avm_enable(example_function_out_unnamed_example6_example_avm_enable),
        .out_unnamed_example6_example_avm_read(example_function_out_unnamed_example6_example_avm_read),
        .out_unnamed_example6_example_avm_write(example_function_out_unnamed_example6_example_avm_write),
        .out_unnamed_example6_example_avm_writedata(example_function_out_unnamed_example6_example_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_unnamed_example5_example_address(GPOUT,31)
    assign avm_unnamed_example5_example_address = example_function_out_unnamed_example5_example_avm_address;

    // avm_unnamed_example5_example_burstcount(GPOUT,32)
    assign avm_unnamed_example5_example_burstcount = example_function_out_unnamed_example5_example_avm_burstcount;

    // avm_unnamed_example5_example_byteenable(GPOUT,33)
    assign avm_unnamed_example5_example_byteenable = example_function_out_unnamed_example5_example_avm_byteenable;

    // avm_unnamed_example5_example_enable(GPOUT,34)
    assign avm_unnamed_example5_example_enable = example_function_out_unnamed_example5_example_avm_enable;

    // avm_unnamed_example5_example_read(GPOUT,35)
    assign avm_unnamed_example5_example_read = example_function_out_unnamed_example5_example_avm_read;

    // avm_unnamed_example5_example_write(GPOUT,36)
    assign avm_unnamed_example5_example_write = example_function_out_unnamed_example5_example_avm_write;

    // avm_unnamed_example5_example_writedata(GPOUT,37)
    assign avm_unnamed_example5_example_writedata = example_function_out_unnamed_example5_example_avm_writedata;

    // avm_unnamed_example6_example_address(GPOUT,38)
    assign avm_unnamed_example6_example_address = example_function_out_unnamed_example6_example_avm_address;

    // avm_unnamed_example6_example_burstcount(GPOUT,39)
    assign avm_unnamed_example6_example_burstcount = example_function_out_unnamed_example6_example_avm_burstcount;

    // avm_unnamed_example6_example_byteenable(GPOUT,40)
    assign avm_unnamed_example6_example_byteenable = example_function_out_unnamed_example6_example_avm_byteenable;

    // avm_unnamed_example6_example_enable(GPOUT,41)
    assign avm_unnamed_example6_example_enable = example_function_out_unnamed_example6_example_avm_enable;

    // avm_unnamed_example6_example_read(GPOUT,42)
    assign avm_unnamed_example6_example_read = example_function_out_unnamed_example6_example_avm_read;

    // avm_unnamed_example6_example_write(GPOUT,43)
    assign avm_unnamed_example6_example_write = example_function_out_unnamed_example6_example_avm_write;

    // avm_unnamed_example6_example_writedata(GPOUT,44)
    assign avm_unnamed_example6_example_writedata = example_function_out_unnamed_example6_example_avm_writedata;

    // avst_iord_bl_call_example_almost_full(GPOUT,45)
    assign avst_iord_bl_call_example_almost_full = example_function_out_iord_bl_call_example_o_fifoalmost_full;

    // avst_iord_bl_call_example_ready(GPOUT,46)
    assign avst_iord_bl_call_example_ready = example_function_out_iord_bl_call_example_o_fifoready;

    // avst_iowr_bl_return_example_data(GPOUT,47)
    assign avst_iowr_bl_return_example_data = example_function_out_iowr_bl_return_example_o_fifodata;

    // avst_iowr_bl_return_example_valid(GPOUT,48)
    assign avst_iowr_bl_return_example_valid = example_function_out_iowr_bl_return_example_o_fifovalid;

    // not_ready(LOGICAL,29)
    assign not_ready_q = ~ (example_function_out_iord_bl_call_example_o_fifoready);

    // busy_and(LOGICAL,4)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,53)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,52)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,5)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,49)
    assign busy = busy_or_q;

    // done(GPOUT,50)
    assign done = example_function_out_iowr_bl_return_example_o_fifovalid;

    // returndata(GPOUT,51)
    assign returndata = example_function_out_iowr_bl_return_example_o_fifodata;

endmodule
