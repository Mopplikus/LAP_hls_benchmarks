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

// SystemVerilog created from histogram_function_wrapper
// Created for function/kernel histogram
// SystemVerilog created on Wed Apr 26 12:05:11 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module histogram_function_wrapper (
    input wire [31:0] avm_lm1_histogram_readdata,
    input wire [0:0] avm_lm1_histogram_readdatavalid,
    input wire [0:0] avm_lm1_histogram_waitrequest,
    input wire [0:0] avm_lm1_histogram_writeack,
    input wire [31:0] avm_lm52_histogram_readdata,
    input wire [0:0] avm_lm52_histogram_readdatavalid,
    input wire [0:0] avm_lm52_histogram_waitrequest,
    input wire [0:0] avm_lm52_histogram_writeack,
    input wire [31:0] avm_lm73_histogram_readdata,
    input wire [0:0] avm_lm73_histogram_readdatavalid,
    input wire [0:0] avm_lm73_histogram_waitrequest,
    input wire [0:0] avm_lm73_histogram_writeack,
    input wire [31:0] avm_memdep_histogram_readdata,
    input wire [0:0] avm_memdep_histogram_readdatavalid,
    input wire [0:0] avm_memdep_histogram_waitrequest,
    input wire [0:0] avm_memdep_histogram_writeack,
    input wire [127:0] avst_iord_bl_call_histogram_data,
    input wire [0:0] avst_iord_bl_call_histogram_valid,
    input wire [0:0] avst_iowr_bl_return_histogram_almostfull,
    input wire [0:0] avst_iowr_bl_return_histogram_ready,
    input wire [63:0] hist_r,
    input wire [31:0] n,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [31:0] avm_lm1_histogram_address,
    output wire [0:0] avm_lm1_histogram_burstcount,
    output wire [3:0] avm_lm1_histogram_byteenable,
    output wire [0:0] avm_lm1_histogram_enable,
    output wire [0:0] avm_lm1_histogram_read,
    output wire [0:0] avm_lm1_histogram_write,
    output wire [31:0] avm_lm1_histogram_writedata,
    output wire [31:0] avm_lm52_histogram_address,
    output wire [0:0] avm_lm52_histogram_burstcount,
    output wire [3:0] avm_lm52_histogram_byteenable,
    output wire [0:0] avm_lm52_histogram_enable,
    output wire [0:0] avm_lm52_histogram_read,
    output wire [0:0] avm_lm52_histogram_write,
    output wire [31:0] avm_lm52_histogram_writedata,
    output wire [31:0] avm_lm73_histogram_address,
    output wire [0:0] avm_lm73_histogram_burstcount,
    output wire [3:0] avm_lm73_histogram_byteenable,
    output wire [0:0] avm_lm73_histogram_enable,
    output wire [0:0] avm_lm73_histogram_read,
    output wire [0:0] avm_lm73_histogram_write,
    output wire [31:0] avm_lm73_histogram_writedata,
    output wire [31:0] avm_memdep_histogram_address,
    output wire [0:0] avm_memdep_histogram_burstcount,
    output wire [3:0] avm_memdep_histogram_byteenable,
    output wire [0:0] avm_memdep_histogram_enable,
    output wire [0:0] avm_memdep_histogram_read,
    output wire [0:0] avm_memdep_histogram_write,
    output wire [31:0] avm_memdep_histogram_writedata,
    output wire [0:0] avst_iord_bl_call_histogram_almost_full,
    output wire [0:0] avst_iord_bl_call_histogram_ready,
    output wire [0:0] avst_iowr_bl_return_histogram_data,
    output wire [0:0] avst_iowr_bl_return_histogram_valid,
    output wire [0:0] busy,
    output wire [0:0] done,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] busy_and_q;
    wire [0:0] busy_or_q;
    wire [63:0] call_const_q;
    wire [0:0] histogram_function_out_iord_bl_call_histogram_o_fifoalmost_full;
    wire [0:0] histogram_function_out_iord_bl_call_histogram_o_fifoready;
    wire [0:0] histogram_function_out_iowr_bl_return_histogram_o_fifodata;
    wire [0:0] histogram_function_out_iowr_bl_return_histogram_o_fifovalid;
    wire [31:0] histogram_function_out_lm1_histogram_avm_address;
    wire [0:0] histogram_function_out_lm1_histogram_avm_burstcount;
    wire [3:0] histogram_function_out_lm1_histogram_avm_byteenable;
    wire [0:0] histogram_function_out_lm1_histogram_avm_enable;
    wire [0:0] histogram_function_out_lm1_histogram_avm_read;
    wire [0:0] histogram_function_out_lm1_histogram_avm_write;
    wire [31:0] histogram_function_out_lm1_histogram_avm_writedata;
    wire [31:0] histogram_function_out_lm52_histogram_avm_address;
    wire [0:0] histogram_function_out_lm52_histogram_avm_burstcount;
    wire [3:0] histogram_function_out_lm52_histogram_avm_byteenable;
    wire [0:0] histogram_function_out_lm52_histogram_avm_enable;
    wire [0:0] histogram_function_out_lm52_histogram_avm_read;
    wire [0:0] histogram_function_out_lm52_histogram_avm_write;
    wire [31:0] histogram_function_out_lm52_histogram_avm_writedata;
    wire [31:0] histogram_function_out_lm73_histogram_avm_address;
    wire [0:0] histogram_function_out_lm73_histogram_avm_burstcount;
    wire [3:0] histogram_function_out_lm73_histogram_avm_byteenable;
    wire [0:0] histogram_function_out_lm73_histogram_avm_enable;
    wire [0:0] histogram_function_out_lm73_histogram_avm_read;
    wire [0:0] histogram_function_out_lm73_histogram_avm_write;
    wire [31:0] histogram_function_out_lm73_histogram_avm_writedata;
    wire [31:0] histogram_function_out_memdep_histogram_avm_address;
    wire [0:0] histogram_function_out_memdep_histogram_avm_burstcount;
    wire [3:0] histogram_function_out_memdep_histogram_avm_byteenable;
    wire [0:0] histogram_function_out_memdep_histogram_avm_enable;
    wire [0:0] histogram_function_out_memdep_histogram_avm_read;
    wire [0:0] histogram_function_out_memdep_histogram_avm_write;
    wire [31:0] histogram_function_out_memdep_histogram_avm_writedata;
    wire [0:0] histogram_function_out_stall_out;
    wire [127:0] implicit_input_q;
    wire [31:0] implicit_input_pad_const_end_q;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] start_mask_and_q;
    wire [0:0] start_pulse_out_o_valid;
    wire [0:0] wait_pulse_extender_inst_out_o_sclrn;
    reg [0:0] rst_sync_rst_sclrn;


    // wait_pulse_extender_inst(BLACKBOX,76)
    histogram_wait_pulse_extender_inst thewait_pulse_extender_inst (
        .out_o_sclrn(wait_pulse_extender_inst_out_o_sclrn),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // start_pulse(BLACKBOX,75)
    histogram_start_pulse thestart_pulse (
        .in_i_stall(histogram_function_out_stall_out),
        .in_i_valid(wait_pulse_extender_inst_out_o_sclrn),
        .out_o_valid(start_pulse_out_o_valid),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall(LOGICAL,37)
    assign not_stall_q = ~ (stall);

    // start_mask_and(LOGICAL,74)
    assign start_mask_and_q = start & wait_pulse_extender_inst_out_o_sclrn;

    // implicit_input_pad_const_end(CONSTANT,9)
    assign implicit_input_pad_const_end_q = $unsigned(32'b00000000000000000000000000000000);

    // implicit_input(BITJOIN,8)
    assign implicit_input_q = {implicit_input_pad_const_end_q, n, hist_r};

    // call_const(CONSTANT,4)
    assign call_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // histogram_function(BLACKBOX,7)
    histogram_function thehistogram_function (
        .in_arg_call(call_const_q),
        .in_arg_hist_r(call_const_q),
        .in_arg_return(call_const_q),
        .in_iord_bl_call_histogram_i_fifodata(implicit_input_q),
        .in_iord_bl_call_histogram_i_fifovalid(start_mask_and_q),
        .in_iowr_bl_return_histogram_i_fifoready(not_stall_q),
        .in_lm1_histogram_avm_readdata(avm_lm1_histogram_readdata),
        .in_lm1_histogram_avm_readdatavalid(avm_lm1_histogram_readdatavalid),
        .in_lm1_histogram_avm_waitrequest(avm_lm1_histogram_waitrequest),
        .in_lm1_histogram_avm_writeack(avm_lm1_histogram_writeack),
        .in_lm52_histogram_avm_readdata(avm_lm52_histogram_readdata),
        .in_lm52_histogram_avm_readdatavalid(avm_lm52_histogram_readdatavalid),
        .in_lm52_histogram_avm_waitrequest(avm_lm52_histogram_waitrequest),
        .in_lm52_histogram_avm_writeack(avm_lm52_histogram_writeack),
        .in_lm73_histogram_avm_readdata(avm_lm73_histogram_readdata),
        .in_lm73_histogram_avm_readdatavalid(avm_lm73_histogram_readdatavalid),
        .in_lm73_histogram_avm_waitrequest(avm_lm73_histogram_waitrequest),
        .in_lm73_histogram_avm_writeack(avm_lm73_histogram_writeack),
        .in_memdep_histogram_avm_readdata(avm_memdep_histogram_readdata),
        .in_memdep_histogram_avm_readdatavalid(avm_memdep_histogram_readdatavalid),
        .in_memdep_histogram_avm_waitrequest(avm_memdep_histogram_waitrequest),
        .in_memdep_histogram_avm_writeack(avm_memdep_histogram_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_valid_in(start_pulse_out_o_valid),
        .out_iord_bl_call_histogram_o_fifoalmost_full(histogram_function_out_iord_bl_call_histogram_o_fifoalmost_full),
        .out_iord_bl_call_histogram_o_fifoready(histogram_function_out_iord_bl_call_histogram_o_fifoready),
        .out_iowr_bl_return_histogram_o_fifodata(histogram_function_out_iowr_bl_return_histogram_o_fifodata),
        .out_iowr_bl_return_histogram_o_fifovalid(histogram_function_out_iowr_bl_return_histogram_o_fifovalid),
        .out_lm1_histogram_avm_address(histogram_function_out_lm1_histogram_avm_address),
        .out_lm1_histogram_avm_burstcount(histogram_function_out_lm1_histogram_avm_burstcount),
        .out_lm1_histogram_avm_byteenable(histogram_function_out_lm1_histogram_avm_byteenable),
        .out_lm1_histogram_avm_enable(histogram_function_out_lm1_histogram_avm_enable),
        .out_lm1_histogram_avm_read(histogram_function_out_lm1_histogram_avm_read),
        .out_lm1_histogram_avm_write(histogram_function_out_lm1_histogram_avm_write),
        .out_lm1_histogram_avm_writedata(histogram_function_out_lm1_histogram_avm_writedata),
        .out_lm52_histogram_avm_address(histogram_function_out_lm52_histogram_avm_address),
        .out_lm52_histogram_avm_burstcount(histogram_function_out_lm52_histogram_avm_burstcount),
        .out_lm52_histogram_avm_byteenable(histogram_function_out_lm52_histogram_avm_byteenable),
        .out_lm52_histogram_avm_enable(histogram_function_out_lm52_histogram_avm_enable),
        .out_lm52_histogram_avm_read(histogram_function_out_lm52_histogram_avm_read),
        .out_lm52_histogram_avm_write(histogram_function_out_lm52_histogram_avm_write),
        .out_lm52_histogram_avm_writedata(histogram_function_out_lm52_histogram_avm_writedata),
        .out_lm73_histogram_avm_address(histogram_function_out_lm73_histogram_avm_address),
        .out_lm73_histogram_avm_burstcount(histogram_function_out_lm73_histogram_avm_burstcount),
        .out_lm73_histogram_avm_byteenable(histogram_function_out_lm73_histogram_avm_byteenable),
        .out_lm73_histogram_avm_enable(histogram_function_out_lm73_histogram_avm_enable),
        .out_lm73_histogram_avm_read(histogram_function_out_lm73_histogram_avm_read),
        .out_lm73_histogram_avm_write(histogram_function_out_lm73_histogram_avm_write),
        .out_lm73_histogram_avm_writedata(histogram_function_out_lm73_histogram_avm_writedata),
        .out_memdep_histogram_avm_address(histogram_function_out_memdep_histogram_avm_address),
        .out_memdep_histogram_avm_burstcount(histogram_function_out_memdep_histogram_avm_burstcount),
        .out_memdep_histogram_avm_byteenable(histogram_function_out_memdep_histogram_avm_byteenable),
        .out_memdep_histogram_avm_enable(histogram_function_out_memdep_histogram_avm_enable),
        .out_memdep_histogram_avm_read(histogram_function_out_memdep_histogram_avm_read),
        .out_memdep_histogram_avm_write(histogram_function_out_memdep_histogram_avm_write),
        .out_memdep_histogram_avm_writedata(histogram_function_out_memdep_histogram_avm_writedata),
        .out_stall_out(histogram_function_out_stall_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_lm1_histogram_address(GPOUT,38)
    assign avm_lm1_histogram_address = histogram_function_out_lm1_histogram_avm_address;

    // avm_lm1_histogram_burstcount(GPOUT,39)
    assign avm_lm1_histogram_burstcount = histogram_function_out_lm1_histogram_avm_burstcount;

    // avm_lm1_histogram_byteenable(GPOUT,40)
    assign avm_lm1_histogram_byteenable = histogram_function_out_lm1_histogram_avm_byteenable;

    // avm_lm1_histogram_enable(GPOUT,41)
    assign avm_lm1_histogram_enable = histogram_function_out_lm1_histogram_avm_enable;

    // avm_lm1_histogram_read(GPOUT,42)
    assign avm_lm1_histogram_read = histogram_function_out_lm1_histogram_avm_read;

    // avm_lm1_histogram_write(GPOUT,43)
    assign avm_lm1_histogram_write = histogram_function_out_lm1_histogram_avm_write;

    // avm_lm1_histogram_writedata(GPOUT,44)
    assign avm_lm1_histogram_writedata = histogram_function_out_lm1_histogram_avm_writedata;

    // avm_lm52_histogram_address(GPOUT,45)
    assign avm_lm52_histogram_address = histogram_function_out_lm52_histogram_avm_address;

    // avm_lm52_histogram_burstcount(GPOUT,46)
    assign avm_lm52_histogram_burstcount = histogram_function_out_lm52_histogram_avm_burstcount;

    // avm_lm52_histogram_byteenable(GPOUT,47)
    assign avm_lm52_histogram_byteenable = histogram_function_out_lm52_histogram_avm_byteenable;

    // avm_lm52_histogram_enable(GPOUT,48)
    assign avm_lm52_histogram_enable = histogram_function_out_lm52_histogram_avm_enable;

    // avm_lm52_histogram_read(GPOUT,49)
    assign avm_lm52_histogram_read = histogram_function_out_lm52_histogram_avm_read;

    // avm_lm52_histogram_write(GPOUT,50)
    assign avm_lm52_histogram_write = histogram_function_out_lm52_histogram_avm_write;

    // avm_lm52_histogram_writedata(GPOUT,51)
    assign avm_lm52_histogram_writedata = histogram_function_out_lm52_histogram_avm_writedata;

    // avm_lm73_histogram_address(GPOUT,52)
    assign avm_lm73_histogram_address = histogram_function_out_lm73_histogram_avm_address;

    // avm_lm73_histogram_burstcount(GPOUT,53)
    assign avm_lm73_histogram_burstcount = histogram_function_out_lm73_histogram_avm_burstcount;

    // avm_lm73_histogram_byteenable(GPOUT,54)
    assign avm_lm73_histogram_byteenable = histogram_function_out_lm73_histogram_avm_byteenable;

    // avm_lm73_histogram_enable(GPOUT,55)
    assign avm_lm73_histogram_enable = histogram_function_out_lm73_histogram_avm_enable;

    // avm_lm73_histogram_read(GPOUT,56)
    assign avm_lm73_histogram_read = histogram_function_out_lm73_histogram_avm_read;

    // avm_lm73_histogram_write(GPOUT,57)
    assign avm_lm73_histogram_write = histogram_function_out_lm73_histogram_avm_write;

    // avm_lm73_histogram_writedata(GPOUT,58)
    assign avm_lm73_histogram_writedata = histogram_function_out_lm73_histogram_avm_writedata;

    // avm_memdep_histogram_address(GPOUT,59)
    assign avm_memdep_histogram_address = histogram_function_out_memdep_histogram_avm_address;

    // avm_memdep_histogram_burstcount(GPOUT,60)
    assign avm_memdep_histogram_burstcount = histogram_function_out_memdep_histogram_avm_burstcount;

    // avm_memdep_histogram_byteenable(GPOUT,61)
    assign avm_memdep_histogram_byteenable = histogram_function_out_memdep_histogram_avm_byteenable;

    // avm_memdep_histogram_enable(GPOUT,62)
    assign avm_memdep_histogram_enable = histogram_function_out_memdep_histogram_avm_enable;

    // avm_memdep_histogram_read(GPOUT,63)
    assign avm_memdep_histogram_read = histogram_function_out_memdep_histogram_avm_read;

    // avm_memdep_histogram_write(GPOUT,64)
    assign avm_memdep_histogram_write = histogram_function_out_memdep_histogram_avm_write;

    // avm_memdep_histogram_writedata(GPOUT,65)
    assign avm_memdep_histogram_writedata = histogram_function_out_memdep_histogram_avm_writedata;

    // avst_iord_bl_call_histogram_almost_full(GPOUT,66)
    assign avst_iord_bl_call_histogram_almost_full = histogram_function_out_iord_bl_call_histogram_o_fifoalmost_full;

    // avst_iord_bl_call_histogram_ready(GPOUT,67)
    assign avst_iord_bl_call_histogram_ready = histogram_function_out_iord_bl_call_histogram_o_fifoready;

    // avst_iowr_bl_return_histogram_data(GPOUT,68)
    assign avst_iowr_bl_return_histogram_data = histogram_function_out_iowr_bl_return_histogram_o_fifodata;

    // avst_iowr_bl_return_histogram_valid(GPOUT,69)
    assign avst_iowr_bl_return_histogram_valid = histogram_function_out_iowr_bl_return_histogram_o_fifovalid;

    // not_ready(LOGICAL,36)
    assign not_ready_q = ~ (histogram_function_out_iord_bl_call_histogram_o_fifoready);

    // busy_and(LOGICAL,2)
    assign busy_and_q = not_ready_q & start;

    // pos_reset(LOGICAL,72)
    assign pos_reset_q = ~ (wait_pulse_extender_inst_out_o_sclrn);

    // busy_or(LOGICAL,3)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,70)
    assign busy = busy_or_q;

    // done(GPOUT,71)
    assign done = histogram_function_out_iowr_bl_return_histogram_o_fifovalid;

    // rst_sync(RESETSYNC,77)
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
