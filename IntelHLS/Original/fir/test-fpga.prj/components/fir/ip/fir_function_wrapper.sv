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

// SystemVerilog created from fir_function_wrapper
// Created for function/kernel fir
// SystemVerilog created on Tue Apr 25 23:40:01 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module fir_function_wrapper (
    input wire [31:0] avm_unnamed_fir5_fir_readdata,
    input wire [0:0] avm_unnamed_fir5_fir_readdatavalid,
    input wire [0:0] avm_unnamed_fir5_fir_waitrequest,
    input wire [0:0] avm_unnamed_fir5_fir_writeack,
    input wire [31:0] avm_unnamed_fir6_fir_readdata,
    input wire [0:0] avm_unnamed_fir6_fir_readdatavalid,
    input wire [0:0] avm_unnamed_fir6_fir_waitrequest,
    input wire [0:0] avm_unnamed_fir6_fir_writeack,
    input wire [127:0] avst_iord_bl_call_fir_data,
    input wire [0:0] avst_iord_bl_call_fir_valid,
    input wire [0:0] avst_iowr_bl_return_fir_almostfull,
    input wire [0:0] avst_iowr_bl_return_fir_ready,
    input wire [63:0] d_i,
    input wire [63:0] idx,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [31:0] avm_unnamed_fir5_fir_address,
    output wire [0:0] avm_unnamed_fir5_fir_burstcount,
    output wire [3:0] avm_unnamed_fir5_fir_byteenable,
    output wire [0:0] avm_unnamed_fir5_fir_enable,
    output wire [0:0] avm_unnamed_fir5_fir_read,
    output wire [0:0] avm_unnamed_fir5_fir_write,
    output wire [31:0] avm_unnamed_fir5_fir_writedata,
    output wire [31:0] avm_unnamed_fir6_fir_address,
    output wire [0:0] avm_unnamed_fir6_fir_burstcount,
    output wire [3:0] avm_unnamed_fir6_fir_byteenable,
    output wire [0:0] avm_unnamed_fir6_fir_enable,
    output wire [0:0] avm_unnamed_fir6_fir_read,
    output wire [0:0] avm_unnamed_fir6_fir_write,
    output wire [31:0] avm_unnamed_fir6_fir_writedata,
    output wire [0:0] avst_iord_bl_call_fir_almost_full,
    output wire [0:0] avst_iord_bl_call_fir_ready,
    output wire [31:0] avst_iowr_bl_return_fir_data,
    output wire [0:0] avst_iowr_bl_return_fir_valid,
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
    wire [0:0] fir_function_out_iord_bl_call_fir_o_fifoalmost_full;
    wire [0:0] fir_function_out_iord_bl_call_fir_o_fifoready;
    wire [31:0] fir_function_out_iowr_bl_return_fir_o_fifodata;
    wire [0:0] fir_function_out_iowr_bl_return_fir_o_fifovalid;
    wire [0:0] fir_function_out_stall_out;
    wire [31:0] fir_function_out_unnamed_fir5_fir_avm_address;
    wire [0:0] fir_function_out_unnamed_fir5_fir_avm_burstcount;
    wire [3:0] fir_function_out_unnamed_fir5_fir_avm_byteenable;
    wire [0:0] fir_function_out_unnamed_fir5_fir_avm_enable;
    wire [0:0] fir_function_out_unnamed_fir5_fir_avm_read;
    wire [0:0] fir_function_out_unnamed_fir5_fir_avm_write;
    wire [31:0] fir_function_out_unnamed_fir5_fir_avm_writedata;
    wire [31:0] fir_function_out_unnamed_fir6_fir_avm_address;
    wire [0:0] fir_function_out_unnamed_fir6_fir_avm_burstcount;
    wire [3:0] fir_function_out_unnamed_fir6_fir_avm_byteenable;
    wire [0:0] fir_function_out_unnamed_fir6_fir_avm_enable;
    wire [0:0] fir_function_out_unnamed_fir6_fir_avm_read;
    wire [0:0] fir_function_out_unnamed_fir6_fir_avm_write;
    wire [31:0] fir_function_out_unnamed_fir6_fir_avm_writedata;
    wire [127:0] implicit_input_q;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] start_mask_and_q;
    wire [0:0] start_pulse_out_o_valid;
    wire [0:0] wait_pulse_extender_inst_out_o_sclrn;
    reg [0:0] rst_sync_rst_sclrn;


    // wait_pulse_extender_inst(BLACKBOX,56)
    fir_wait_pulse_extender_inst thewait_pulse_extender_inst (
        .out_o_sclrn(wait_pulse_extender_inst_out_o_sclrn),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // start_pulse(BLACKBOX,55)
    fir_start_pulse thestart_pulse (
        .in_i_stall(fir_function_out_stall_out),
        .in_i_valid(wait_pulse_extender_inst_out_o_sclrn),
        .out_o_valid(start_pulse_out_o_valid),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall(LOGICAL,29)
    assign not_stall_q = ~ (stall);

    // start_mask_and(LOGICAL,54)
    assign start_mask_and_q = start & wait_pulse_extender_inst_out_o_sclrn;

    // implicit_input(BITJOIN,9)
    assign implicit_input_q = {idx, d_i};

    // call_const(CONSTANT,4)
    assign call_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // fir_function(BLACKBOX,7)
    fir_function thefir_function (
        .in_arg_call(call_const_q),
        .in_arg_d_i(call_const_q),
        .in_arg_idx(call_const_q),
        .in_arg_return(call_const_q),
        .in_iord_bl_call_fir_i_fifodata(implicit_input_q),
        .in_iord_bl_call_fir_i_fifovalid(start_mask_and_q),
        .in_iowr_bl_return_fir_i_fifoready(not_stall_q),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_unnamed_fir5_fir_avm_readdata(avm_unnamed_fir5_fir_readdata),
        .in_unnamed_fir5_fir_avm_readdatavalid(avm_unnamed_fir5_fir_readdatavalid),
        .in_unnamed_fir5_fir_avm_waitrequest(avm_unnamed_fir5_fir_waitrequest),
        .in_unnamed_fir5_fir_avm_writeack(avm_unnamed_fir5_fir_writeack),
        .in_unnamed_fir6_fir_avm_readdata(avm_unnamed_fir6_fir_readdata),
        .in_unnamed_fir6_fir_avm_readdatavalid(avm_unnamed_fir6_fir_readdatavalid),
        .in_unnamed_fir6_fir_avm_waitrequest(avm_unnamed_fir6_fir_waitrequest),
        .in_unnamed_fir6_fir_avm_writeack(avm_unnamed_fir6_fir_writeack),
        .in_valid_in(start_pulse_out_o_valid),
        .out_iord_bl_call_fir_o_fifoalmost_full(fir_function_out_iord_bl_call_fir_o_fifoalmost_full),
        .out_iord_bl_call_fir_o_fifoready(fir_function_out_iord_bl_call_fir_o_fifoready),
        .out_iowr_bl_return_fir_o_fifodata(fir_function_out_iowr_bl_return_fir_o_fifodata),
        .out_iowr_bl_return_fir_o_fifovalid(fir_function_out_iowr_bl_return_fir_o_fifovalid),
        .out_stall_out(fir_function_out_stall_out),
        .out_unnamed_fir5_fir_avm_address(fir_function_out_unnamed_fir5_fir_avm_address),
        .out_unnamed_fir5_fir_avm_burstcount(fir_function_out_unnamed_fir5_fir_avm_burstcount),
        .out_unnamed_fir5_fir_avm_byteenable(fir_function_out_unnamed_fir5_fir_avm_byteenable),
        .out_unnamed_fir5_fir_avm_enable(fir_function_out_unnamed_fir5_fir_avm_enable),
        .out_unnamed_fir5_fir_avm_read(fir_function_out_unnamed_fir5_fir_avm_read),
        .out_unnamed_fir5_fir_avm_write(fir_function_out_unnamed_fir5_fir_avm_write),
        .out_unnamed_fir5_fir_avm_writedata(fir_function_out_unnamed_fir5_fir_avm_writedata),
        .out_unnamed_fir6_fir_avm_address(fir_function_out_unnamed_fir6_fir_avm_address),
        .out_unnamed_fir6_fir_avm_burstcount(fir_function_out_unnamed_fir6_fir_avm_burstcount),
        .out_unnamed_fir6_fir_avm_byteenable(fir_function_out_unnamed_fir6_fir_avm_byteenable),
        .out_unnamed_fir6_fir_avm_enable(fir_function_out_unnamed_fir6_fir_avm_enable),
        .out_unnamed_fir6_fir_avm_read(fir_function_out_unnamed_fir6_fir_avm_read),
        .out_unnamed_fir6_fir_avm_write(fir_function_out_unnamed_fir6_fir_avm_write),
        .out_unnamed_fir6_fir_avm_writedata(fir_function_out_unnamed_fir6_fir_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_unnamed_fir5_fir_address(GPOUT,30)
    assign avm_unnamed_fir5_fir_address = fir_function_out_unnamed_fir5_fir_avm_address;

    // avm_unnamed_fir5_fir_burstcount(GPOUT,31)
    assign avm_unnamed_fir5_fir_burstcount = fir_function_out_unnamed_fir5_fir_avm_burstcount;

    // avm_unnamed_fir5_fir_byteenable(GPOUT,32)
    assign avm_unnamed_fir5_fir_byteenable = fir_function_out_unnamed_fir5_fir_avm_byteenable;

    // avm_unnamed_fir5_fir_enable(GPOUT,33)
    assign avm_unnamed_fir5_fir_enable = fir_function_out_unnamed_fir5_fir_avm_enable;

    // avm_unnamed_fir5_fir_read(GPOUT,34)
    assign avm_unnamed_fir5_fir_read = fir_function_out_unnamed_fir5_fir_avm_read;

    // avm_unnamed_fir5_fir_write(GPOUT,35)
    assign avm_unnamed_fir5_fir_write = fir_function_out_unnamed_fir5_fir_avm_write;

    // avm_unnamed_fir5_fir_writedata(GPOUT,36)
    assign avm_unnamed_fir5_fir_writedata = fir_function_out_unnamed_fir5_fir_avm_writedata;

    // avm_unnamed_fir6_fir_address(GPOUT,37)
    assign avm_unnamed_fir6_fir_address = fir_function_out_unnamed_fir6_fir_avm_address;

    // avm_unnamed_fir6_fir_burstcount(GPOUT,38)
    assign avm_unnamed_fir6_fir_burstcount = fir_function_out_unnamed_fir6_fir_avm_burstcount;

    // avm_unnamed_fir6_fir_byteenable(GPOUT,39)
    assign avm_unnamed_fir6_fir_byteenable = fir_function_out_unnamed_fir6_fir_avm_byteenable;

    // avm_unnamed_fir6_fir_enable(GPOUT,40)
    assign avm_unnamed_fir6_fir_enable = fir_function_out_unnamed_fir6_fir_avm_enable;

    // avm_unnamed_fir6_fir_read(GPOUT,41)
    assign avm_unnamed_fir6_fir_read = fir_function_out_unnamed_fir6_fir_avm_read;

    // avm_unnamed_fir6_fir_write(GPOUT,42)
    assign avm_unnamed_fir6_fir_write = fir_function_out_unnamed_fir6_fir_avm_write;

    // avm_unnamed_fir6_fir_writedata(GPOUT,43)
    assign avm_unnamed_fir6_fir_writedata = fir_function_out_unnamed_fir6_fir_avm_writedata;

    // avst_iord_bl_call_fir_almost_full(GPOUT,44)
    assign avst_iord_bl_call_fir_almost_full = fir_function_out_iord_bl_call_fir_o_fifoalmost_full;

    // avst_iord_bl_call_fir_ready(GPOUT,45)
    assign avst_iord_bl_call_fir_ready = fir_function_out_iord_bl_call_fir_o_fifoready;

    // avst_iowr_bl_return_fir_data(GPOUT,46)
    assign avst_iowr_bl_return_fir_data = fir_function_out_iowr_bl_return_fir_o_fifodata;

    // avst_iowr_bl_return_fir_valid(GPOUT,47)
    assign avst_iowr_bl_return_fir_valid = fir_function_out_iowr_bl_return_fir_o_fifovalid;

    // not_ready(LOGICAL,28)
    assign not_ready_q = ~ (fir_function_out_iord_bl_call_fir_o_fifoready);

    // busy_and(LOGICAL,2)
    assign busy_and_q = not_ready_q & start;

    // pos_reset(LOGICAL,51)
    assign pos_reset_q = ~ (wait_pulse_extender_inst_out_o_sclrn);

    // busy_or(LOGICAL,3)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,48)
    assign busy = busy_or_q;

    // done(GPOUT,49)
    assign done = fir_function_out_iowr_bl_return_fir_o_fifovalid;

    // returndata(GPOUT,50)
    assign returndata = fir_function_out_iowr_bl_return_fir_o_fifodata;

    // rst_sync(RESETSYNC,57)
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
