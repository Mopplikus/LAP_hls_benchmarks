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

// SystemVerilog created from gaussian_function_wrapper
// Created for function/kernel gaussian
// SystemVerilog created on Thu Apr 27 14:24:40 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_function_wrapper (
    input wire [63:0] A_r,
    input wire [31:0] avm_lm1_gaussian_readdata,
    input wire [0:0] avm_lm1_gaussian_readdatavalid,
    input wire [0:0] avm_lm1_gaussian_waitrequest,
    input wire [0:0] avm_lm1_gaussian_writeack,
    input wire [31:0] avm_lm62_gaussian_readdata,
    input wire [0:0] avm_lm62_gaussian_readdatavalid,
    input wire [0:0] avm_lm62_gaussian_waitrequest,
    input wire [0:0] avm_lm62_gaussian_writeack,
    input wire [31:0] avm_lm83_gaussian_readdata,
    input wire [0:0] avm_lm83_gaussian_readdatavalid,
    input wire [0:0] avm_lm83_gaussian_waitrequest,
    input wire [0:0] avm_lm83_gaussian_writeack,
    input wire [31:0] avm_memdep_gaussian_readdata,
    input wire [0:0] avm_memdep_gaussian_readdatavalid,
    input wire [0:0] avm_memdep_gaussian_waitrequest,
    input wire [0:0] avm_memdep_gaussian_writeack,
    input wire [63:0] avst_iord_bl_call_gaussian_data,
    input wire [0:0] avst_iord_bl_call_gaussian_valid,
    input wire [0:0] avst_iowr_bl_return_gaussian_almostfull,
    input wire [0:0] avst_iowr_bl_return_gaussian_ready,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [31:0] avm_lm1_gaussian_address,
    output wire [0:0] avm_lm1_gaussian_burstcount,
    output wire [3:0] avm_lm1_gaussian_byteenable,
    output wire [0:0] avm_lm1_gaussian_enable,
    output wire [0:0] avm_lm1_gaussian_read,
    output wire [0:0] avm_lm1_gaussian_write,
    output wire [31:0] avm_lm1_gaussian_writedata,
    output wire [31:0] avm_lm62_gaussian_address,
    output wire [0:0] avm_lm62_gaussian_burstcount,
    output wire [3:0] avm_lm62_gaussian_byteenable,
    output wire [0:0] avm_lm62_gaussian_enable,
    output wire [0:0] avm_lm62_gaussian_read,
    output wire [0:0] avm_lm62_gaussian_write,
    output wire [31:0] avm_lm62_gaussian_writedata,
    output wire [31:0] avm_lm83_gaussian_address,
    output wire [0:0] avm_lm83_gaussian_burstcount,
    output wire [3:0] avm_lm83_gaussian_byteenable,
    output wire [0:0] avm_lm83_gaussian_enable,
    output wire [0:0] avm_lm83_gaussian_read,
    output wire [0:0] avm_lm83_gaussian_write,
    output wire [31:0] avm_lm83_gaussian_writedata,
    output wire [31:0] avm_memdep_gaussian_address,
    output wire [0:0] avm_memdep_gaussian_burstcount,
    output wire [3:0] avm_memdep_gaussian_byteenable,
    output wire [0:0] avm_memdep_gaussian_enable,
    output wire [0:0] avm_memdep_gaussian_read,
    output wire [0:0] avm_memdep_gaussian_write,
    output wire [31:0] avm_memdep_gaussian_writedata,
    output wire [0:0] avst_iord_bl_call_gaussian_almost_full,
    output wire [0:0] avst_iord_bl_call_gaussian_ready,
    output wire [0:0] avst_iowr_bl_return_gaussian_data,
    output wire [0:0] avst_iowr_bl_return_gaussian_valid,
    output wire [0:0] busy,
    output wire [0:0] done,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] A_r_const_q;
    wire [0:0] busy_and_q;
    wire [0:0] busy_or_q;
    wire [0:0] gaussian_function_out_iord_bl_call_gaussian_o_fifoalmost_full;
    wire [0:0] gaussian_function_out_iord_bl_call_gaussian_o_fifoready;
    wire [0:0] gaussian_function_out_iowr_bl_return_gaussian_o_fifodata;
    wire [0:0] gaussian_function_out_iowr_bl_return_gaussian_o_fifovalid;
    wire [31:0] gaussian_function_out_lm1_gaussian_avm_address;
    wire [0:0] gaussian_function_out_lm1_gaussian_avm_burstcount;
    wire [3:0] gaussian_function_out_lm1_gaussian_avm_byteenable;
    wire [0:0] gaussian_function_out_lm1_gaussian_avm_enable;
    wire [0:0] gaussian_function_out_lm1_gaussian_avm_read;
    wire [0:0] gaussian_function_out_lm1_gaussian_avm_write;
    wire [31:0] gaussian_function_out_lm1_gaussian_avm_writedata;
    wire [31:0] gaussian_function_out_lm62_gaussian_avm_address;
    wire [0:0] gaussian_function_out_lm62_gaussian_avm_burstcount;
    wire [3:0] gaussian_function_out_lm62_gaussian_avm_byteenable;
    wire [0:0] gaussian_function_out_lm62_gaussian_avm_enable;
    wire [0:0] gaussian_function_out_lm62_gaussian_avm_read;
    wire [0:0] gaussian_function_out_lm62_gaussian_avm_write;
    wire [31:0] gaussian_function_out_lm62_gaussian_avm_writedata;
    wire [31:0] gaussian_function_out_lm83_gaussian_avm_address;
    wire [0:0] gaussian_function_out_lm83_gaussian_avm_burstcount;
    wire [3:0] gaussian_function_out_lm83_gaussian_avm_byteenable;
    wire [0:0] gaussian_function_out_lm83_gaussian_avm_enable;
    wire [0:0] gaussian_function_out_lm83_gaussian_avm_read;
    wire [0:0] gaussian_function_out_lm83_gaussian_avm_write;
    wire [31:0] gaussian_function_out_lm83_gaussian_avm_writedata;
    wire [31:0] gaussian_function_out_memdep_gaussian_avm_address;
    wire [0:0] gaussian_function_out_memdep_gaussian_avm_burstcount;
    wire [3:0] gaussian_function_out_memdep_gaussian_avm_byteenable;
    wire [0:0] gaussian_function_out_memdep_gaussian_avm_enable;
    wire [0:0] gaussian_function_out_memdep_gaussian_avm_read;
    wire [0:0] gaussian_function_out_memdep_gaussian_avm_write;
    wire [31:0] gaussian_function_out_memdep_gaussian_avm_writedata;
    wire [0:0] gaussian_function_out_stall_out;
    wire [63:0] implicit_input_q;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] start_pulse_out_o_valid;
    wire [0:0] wait_pulse_extender_inst_out_o_sclrn;
    reg [0:0] rst_sync_rst_sclrn;


    // wait_pulse_extender_inst(BLACKBOX,73)
    gaussian_wait_pulse_extender_inst thewait_pulse_extender_inst (
        .out_o_sclrn(wait_pulse_extender_inst_out_o_sclrn),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // start_pulse(BLACKBOX,72)
    gaussian_start_pulse thestart_pulse (
        .in_i_stall(gaussian_function_out_stall_out),
        .in_i_valid(wait_pulse_extender_inst_out_o_sclrn),
        .out_o_valid(start_pulse_out_o_valid),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall(LOGICAL,35)
    assign not_stall_q = ~ (stall);

    // implicit_input(BITJOIN,8)
    assign implicit_input_q = A_r;

    // A_r_const(CONSTANT,2)
    assign A_r_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // gaussian_function(BLACKBOX,7)
    gaussian_function thegaussian_function (
        .in_arg_A_r(A_r_const_q),
        .in_arg_call(A_r_const_q),
        .in_arg_return(A_r_const_q),
        .in_iord_bl_call_gaussian_i_fifodata(implicit_input_q),
        .in_iord_bl_call_gaussian_i_fifovalid(start),
        .in_iowr_bl_return_gaussian_i_fifoready(not_stall_q),
        .in_lm1_gaussian_avm_readdata(avm_lm1_gaussian_readdata),
        .in_lm1_gaussian_avm_readdatavalid(avm_lm1_gaussian_readdatavalid),
        .in_lm1_gaussian_avm_waitrequest(avm_lm1_gaussian_waitrequest),
        .in_lm1_gaussian_avm_writeack(avm_lm1_gaussian_writeack),
        .in_lm62_gaussian_avm_readdata(avm_lm62_gaussian_readdata),
        .in_lm62_gaussian_avm_readdatavalid(avm_lm62_gaussian_readdatavalid),
        .in_lm62_gaussian_avm_waitrequest(avm_lm62_gaussian_waitrequest),
        .in_lm62_gaussian_avm_writeack(avm_lm62_gaussian_writeack),
        .in_lm83_gaussian_avm_readdata(avm_lm83_gaussian_readdata),
        .in_lm83_gaussian_avm_readdatavalid(avm_lm83_gaussian_readdatavalid),
        .in_lm83_gaussian_avm_waitrequest(avm_lm83_gaussian_waitrequest),
        .in_lm83_gaussian_avm_writeack(avm_lm83_gaussian_writeack),
        .in_memdep_gaussian_avm_readdata(avm_memdep_gaussian_readdata),
        .in_memdep_gaussian_avm_readdatavalid(avm_memdep_gaussian_readdatavalid),
        .in_memdep_gaussian_avm_waitrequest(avm_memdep_gaussian_waitrequest),
        .in_memdep_gaussian_avm_writeack(avm_memdep_gaussian_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_valid_in(start_pulse_out_o_valid),
        .out_iord_bl_call_gaussian_o_fifoalmost_full(gaussian_function_out_iord_bl_call_gaussian_o_fifoalmost_full),
        .out_iord_bl_call_gaussian_o_fifoready(gaussian_function_out_iord_bl_call_gaussian_o_fifoready),
        .out_iowr_bl_return_gaussian_o_fifodata(gaussian_function_out_iowr_bl_return_gaussian_o_fifodata),
        .out_iowr_bl_return_gaussian_o_fifovalid(gaussian_function_out_iowr_bl_return_gaussian_o_fifovalid),
        .out_lm1_gaussian_avm_address(gaussian_function_out_lm1_gaussian_avm_address),
        .out_lm1_gaussian_avm_burstcount(gaussian_function_out_lm1_gaussian_avm_burstcount),
        .out_lm1_gaussian_avm_byteenable(gaussian_function_out_lm1_gaussian_avm_byteenable),
        .out_lm1_gaussian_avm_enable(gaussian_function_out_lm1_gaussian_avm_enable),
        .out_lm1_gaussian_avm_read(gaussian_function_out_lm1_gaussian_avm_read),
        .out_lm1_gaussian_avm_write(gaussian_function_out_lm1_gaussian_avm_write),
        .out_lm1_gaussian_avm_writedata(gaussian_function_out_lm1_gaussian_avm_writedata),
        .out_lm62_gaussian_avm_address(gaussian_function_out_lm62_gaussian_avm_address),
        .out_lm62_gaussian_avm_burstcount(gaussian_function_out_lm62_gaussian_avm_burstcount),
        .out_lm62_gaussian_avm_byteenable(gaussian_function_out_lm62_gaussian_avm_byteenable),
        .out_lm62_gaussian_avm_enable(gaussian_function_out_lm62_gaussian_avm_enable),
        .out_lm62_gaussian_avm_read(gaussian_function_out_lm62_gaussian_avm_read),
        .out_lm62_gaussian_avm_write(gaussian_function_out_lm62_gaussian_avm_write),
        .out_lm62_gaussian_avm_writedata(gaussian_function_out_lm62_gaussian_avm_writedata),
        .out_lm83_gaussian_avm_address(gaussian_function_out_lm83_gaussian_avm_address),
        .out_lm83_gaussian_avm_burstcount(gaussian_function_out_lm83_gaussian_avm_burstcount),
        .out_lm83_gaussian_avm_byteenable(gaussian_function_out_lm83_gaussian_avm_byteenable),
        .out_lm83_gaussian_avm_enable(gaussian_function_out_lm83_gaussian_avm_enable),
        .out_lm83_gaussian_avm_read(gaussian_function_out_lm83_gaussian_avm_read),
        .out_lm83_gaussian_avm_write(gaussian_function_out_lm83_gaussian_avm_write),
        .out_lm83_gaussian_avm_writedata(gaussian_function_out_lm83_gaussian_avm_writedata),
        .out_memdep_gaussian_avm_address(gaussian_function_out_memdep_gaussian_avm_address),
        .out_memdep_gaussian_avm_burstcount(gaussian_function_out_memdep_gaussian_avm_burstcount),
        .out_memdep_gaussian_avm_byteenable(gaussian_function_out_memdep_gaussian_avm_byteenable),
        .out_memdep_gaussian_avm_enable(gaussian_function_out_memdep_gaussian_avm_enable),
        .out_memdep_gaussian_avm_read(gaussian_function_out_memdep_gaussian_avm_read),
        .out_memdep_gaussian_avm_write(gaussian_function_out_memdep_gaussian_avm_write),
        .out_memdep_gaussian_avm_writedata(gaussian_function_out_memdep_gaussian_avm_writedata),
        .out_stall_out(gaussian_function_out_stall_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_lm1_gaussian_address(GPOUT,36)
    assign avm_lm1_gaussian_address = gaussian_function_out_lm1_gaussian_avm_address;

    // avm_lm1_gaussian_burstcount(GPOUT,37)
    assign avm_lm1_gaussian_burstcount = gaussian_function_out_lm1_gaussian_avm_burstcount;

    // avm_lm1_gaussian_byteenable(GPOUT,38)
    assign avm_lm1_gaussian_byteenable = gaussian_function_out_lm1_gaussian_avm_byteenable;

    // avm_lm1_gaussian_enable(GPOUT,39)
    assign avm_lm1_gaussian_enable = gaussian_function_out_lm1_gaussian_avm_enable;

    // avm_lm1_gaussian_read(GPOUT,40)
    assign avm_lm1_gaussian_read = gaussian_function_out_lm1_gaussian_avm_read;

    // avm_lm1_gaussian_write(GPOUT,41)
    assign avm_lm1_gaussian_write = gaussian_function_out_lm1_gaussian_avm_write;

    // avm_lm1_gaussian_writedata(GPOUT,42)
    assign avm_lm1_gaussian_writedata = gaussian_function_out_lm1_gaussian_avm_writedata;

    // avm_lm62_gaussian_address(GPOUT,43)
    assign avm_lm62_gaussian_address = gaussian_function_out_lm62_gaussian_avm_address;

    // avm_lm62_gaussian_burstcount(GPOUT,44)
    assign avm_lm62_gaussian_burstcount = gaussian_function_out_lm62_gaussian_avm_burstcount;

    // avm_lm62_gaussian_byteenable(GPOUT,45)
    assign avm_lm62_gaussian_byteenable = gaussian_function_out_lm62_gaussian_avm_byteenable;

    // avm_lm62_gaussian_enable(GPOUT,46)
    assign avm_lm62_gaussian_enable = gaussian_function_out_lm62_gaussian_avm_enable;

    // avm_lm62_gaussian_read(GPOUT,47)
    assign avm_lm62_gaussian_read = gaussian_function_out_lm62_gaussian_avm_read;

    // avm_lm62_gaussian_write(GPOUT,48)
    assign avm_lm62_gaussian_write = gaussian_function_out_lm62_gaussian_avm_write;

    // avm_lm62_gaussian_writedata(GPOUT,49)
    assign avm_lm62_gaussian_writedata = gaussian_function_out_lm62_gaussian_avm_writedata;

    // avm_lm83_gaussian_address(GPOUT,50)
    assign avm_lm83_gaussian_address = gaussian_function_out_lm83_gaussian_avm_address;

    // avm_lm83_gaussian_burstcount(GPOUT,51)
    assign avm_lm83_gaussian_burstcount = gaussian_function_out_lm83_gaussian_avm_burstcount;

    // avm_lm83_gaussian_byteenable(GPOUT,52)
    assign avm_lm83_gaussian_byteenable = gaussian_function_out_lm83_gaussian_avm_byteenable;

    // avm_lm83_gaussian_enable(GPOUT,53)
    assign avm_lm83_gaussian_enable = gaussian_function_out_lm83_gaussian_avm_enable;

    // avm_lm83_gaussian_read(GPOUT,54)
    assign avm_lm83_gaussian_read = gaussian_function_out_lm83_gaussian_avm_read;

    // avm_lm83_gaussian_write(GPOUT,55)
    assign avm_lm83_gaussian_write = gaussian_function_out_lm83_gaussian_avm_write;

    // avm_lm83_gaussian_writedata(GPOUT,56)
    assign avm_lm83_gaussian_writedata = gaussian_function_out_lm83_gaussian_avm_writedata;

    // avm_memdep_gaussian_address(GPOUT,57)
    assign avm_memdep_gaussian_address = gaussian_function_out_memdep_gaussian_avm_address;

    // avm_memdep_gaussian_burstcount(GPOUT,58)
    assign avm_memdep_gaussian_burstcount = gaussian_function_out_memdep_gaussian_avm_burstcount;

    // avm_memdep_gaussian_byteenable(GPOUT,59)
    assign avm_memdep_gaussian_byteenable = gaussian_function_out_memdep_gaussian_avm_byteenable;

    // avm_memdep_gaussian_enable(GPOUT,60)
    assign avm_memdep_gaussian_enable = gaussian_function_out_memdep_gaussian_avm_enable;

    // avm_memdep_gaussian_read(GPOUT,61)
    assign avm_memdep_gaussian_read = gaussian_function_out_memdep_gaussian_avm_read;

    // avm_memdep_gaussian_write(GPOUT,62)
    assign avm_memdep_gaussian_write = gaussian_function_out_memdep_gaussian_avm_write;

    // avm_memdep_gaussian_writedata(GPOUT,63)
    assign avm_memdep_gaussian_writedata = gaussian_function_out_memdep_gaussian_avm_writedata;

    // avst_iord_bl_call_gaussian_almost_full(GPOUT,64)
    assign avst_iord_bl_call_gaussian_almost_full = gaussian_function_out_iord_bl_call_gaussian_o_fifoalmost_full;

    // avst_iord_bl_call_gaussian_ready(GPOUT,65)
    assign avst_iord_bl_call_gaussian_ready = gaussian_function_out_iord_bl_call_gaussian_o_fifoready;

    // avst_iowr_bl_return_gaussian_data(GPOUT,66)
    assign avst_iowr_bl_return_gaussian_data = gaussian_function_out_iowr_bl_return_gaussian_o_fifodata;

    // avst_iowr_bl_return_gaussian_valid(GPOUT,67)
    assign avst_iowr_bl_return_gaussian_valid = gaussian_function_out_iowr_bl_return_gaussian_o_fifovalid;

    // not_ready(LOGICAL,34)
    assign not_ready_q = ~ (gaussian_function_out_iord_bl_call_gaussian_o_fifoready);

    // busy_and(LOGICAL,3)
    assign busy_and_q = not_ready_q & start;

    // pos_reset(LOGICAL,70)
    assign pos_reset_q = ~ (wait_pulse_extender_inst_out_o_sclrn);

    // busy_or(LOGICAL,4)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,68)
    assign busy = busy_or_q;

    // done(GPOUT,69)
    assign done = gaussian_function_out_iowr_bl_return_gaussian_o_fifovalid;

    // rst_sync(RESETSYNC,74)
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
