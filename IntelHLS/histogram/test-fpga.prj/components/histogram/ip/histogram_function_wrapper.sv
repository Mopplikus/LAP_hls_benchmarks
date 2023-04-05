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
// SystemVerilog created on Tue Apr  4 14:08:06 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module histogram_function_wrapper (
    input wire [31:0] avm_lm113_histogram_readdata,
    input wire [0:0] avm_lm113_histogram_readdatavalid,
    input wire [0:0] avm_lm113_histogram_waitrequest,
    input wire [0:0] avm_lm113_histogram_writeack,
    input wire [31:0] avm_lm1_histogram_readdata,
    input wire [0:0] avm_lm1_histogram_readdatavalid,
    input wire [0:0] avm_lm1_histogram_waitrequest,
    input wire [0:0] avm_lm1_histogram_writeack,
    input wire [31:0] avm_lm92_histogram_readdata,
    input wire [0:0] avm_lm92_histogram_readdatavalid,
    input wire [0:0] avm_lm92_histogram_waitrequest,
    input wire [0:0] avm_lm92_histogram_writeack,
    input wire [31:0] avm_memdep_4_histogram_readdata,
    input wire [0:0] avm_memdep_4_histogram_readdatavalid,
    input wire [0:0] avm_memdep_4_histogram_waitrequest,
    input wire [0:0] avm_memdep_4_histogram_writeack,
    input wire [31:0] avm_memdep_5_histogram_readdata,
    input wire [0:0] avm_memdep_5_histogram_readdatavalid,
    input wire [0:0] avm_memdep_5_histogram_waitrequest,
    input wire [0:0] avm_memdep_5_histogram_writeack,
    input wire [31:0] avm_memdep_6_histogram_readdata,
    input wire [0:0] avm_memdep_6_histogram_readdatavalid,
    input wire [0:0] avm_memdep_6_histogram_waitrequest,
    input wire [0:0] avm_memdep_6_histogram_writeack,
    input wire [31:0] avm_memdep_histogram_readdata,
    input wire [0:0] avm_memdep_histogram_readdatavalid,
    input wire [0:0] avm_memdep_histogram_waitrequest,
    input wire [0:0] avm_memdep_histogram_writeack,
    input wire [31:0] avm_unnamed_histogram8_histogram_readdata,
    input wire [0:0] avm_unnamed_histogram8_histogram_readdatavalid,
    input wire [0:0] avm_unnamed_histogram8_histogram_waitrequest,
    input wire [0:0] avm_unnamed_histogram8_histogram_writeack,
    input wire [63:0] avm_unnamed_histogram9_histogram_readdata,
    input wire [0:0] avm_unnamed_histogram9_histogram_readdatavalid,
    input wire [0:0] avm_unnamed_histogram9_histogram_waitrequest,
    input wire [0:0] avm_unnamed_histogram9_histogram_writeack,
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
    output wire [31:0] avm_lm113_histogram_address,
    output wire [0:0] avm_lm113_histogram_burstcount,
    output wire [3:0] avm_lm113_histogram_byteenable,
    output wire [0:0] avm_lm113_histogram_enable,
    output wire [0:0] avm_lm113_histogram_read,
    output wire [0:0] avm_lm113_histogram_write,
    output wire [31:0] avm_lm113_histogram_writedata,
    output wire [31:0] avm_lm1_histogram_address,
    output wire [0:0] avm_lm1_histogram_burstcount,
    output wire [3:0] avm_lm1_histogram_byteenable,
    output wire [0:0] avm_lm1_histogram_enable,
    output wire [0:0] avm_lm1_histogram_read,
    output wire [0:0] avm_lm1_histogram_write,
    output wire [31:0] avm_lm1_histogram_writedata,
    output wire [31:0] avm_lm92_histogram_address,
    output wire [0:0] avm_lm92_histogram_burstcount,
    output wire [3:0] avm_lm92_histogram_byteenable,
    output wire [0:0] avm_lm92_histogram_enable,
    output wire [0:0] avm_lm92_histogram_read,
    output wire [0:0] avm_lm92_histogram_write,
    output wire [31:0] avm_lm92_histogram_writedata,
    output wire [31:0] avm_memdep_4_histogram_address,
    output wire [0:0] avm_memdep_4_histogram_burstcount,
    output wire [3:0] avm_memdep_4_histogram_byteenable,
    output wire [0:0] avm_memdep_4_histogram_enable,
    output wire [0:0] avm_memdep_4_histogram_read,
    output wire [0:0] avm_memdep_4_histogram_write,
    output wire [31:0] avm_memdep_4_histogram_writedata,
    output wire [31:0] avm_memdep_5_histogram_address,
    output wire [0:0] avm_memdep_5_histogram_burstcount,
    output wire [3:0] avm_memdep_5_histogram_byteenable,
    output wire [0:0] avm_memdep_5_histogram_enable,
    output wire [0:0] avm_memdep_5_histogram_read,
    output wire [0:0] avm_memdep_5_histogram_write,
    output wire [31:0] avm_memdep_5_histogram_writedata,
    output wire [31:0] avm_memdep_6_histogram_address,
    output wire [0:0] avm_memdep_6_histogram_burstcount,
    output wire [3:0] avm_memdep_6_histogram_byteenable,
    output wire [0:0] avm_memdep_6_histogram_enable,
    output wire [0:0] avm_memdep_6_histogram_read,
    output wire [0:0] avm_memdep_6_histogram_write,
    output wire [31:0] avm_memdep_6_histogram_writedata,
    output wire [31:0] avm_memdep_histogram_address,
    output wire [0:0] avm_memdep_histogram_burstcount,
    output wire [3:0] avm_memdep_histogram_byteenable,
    output wire [0:0] avm_memdep_histogram_enable,
    output wire [0:0] avm_memdep_histogram_read,
    output wire [0:0] avm_memdep_histogram_write,
    output wire [31:0] avm_memdep_histogram_writedata,
    output wire [31:0] avm_unnamed_histogram8_histogram_address,
    output wire [0:0] avm_unnamed_histogram8_histogram_burstcount,
    output wire [3:0] avm_unnamed_histogram8_histogram_byteenable,
    output wire [0:0] avm_unnamed_histogram8_histogram_enable,
    output wire [0:0] avm_unnamed_histogram8_histogram_read,
    output wire [0:0] avm_unnamed_histogram8_histogram_write,
    output wire [31:0] avm_unnamed_histogram8_histogram_writedata,
    output wire [63:0] avm_unnamed_histogram9_histogram_address,
    output wire [0:0] avm_unnamed_histogram9_histogram_burstcount,
    output wire [7:0] avm_unnamed_histogram9_histogram_byteenable,
    output wire [0:0] avm_unnamed_histogram9_histogram_enable,
    output wire [0:0] avm_unnamed_histogram9_histogram_read,
    output wire [0:0] avm_unnamed_histogram9_histogram_write,
    output wire [63:0] avm_unnamed_histogram9_histogram_writedata,
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
    wire [31:0] histogram_function_out_lm113_histogram_avm_address;
    wire [0:0] histogram_function_out_lm113_histogram_avm_burstcount;
    wire [3:0] histogram_function_out_lm113_histogram_avm_byteenable;
    wire [0:0] histogram_function_out_lm113_histogram_avm_enable;
    wire [0:0] histogram_function_out_lm113_histogram_avm_read;
    wire [0:0] histogram_function_out_lm113_histogram_avm_write;
    wire [31:0] histogram_function_out_lm113_histogram_avm_writedata;
    wire [31:0] histogram_function_out_lm1_histogram_avm_address;
    wire [0:0] histogram_function_out_lm1_histogram_avm_burstcount;
    wire [3:0] histogram_function_out_lm1_histogram_avm_byteenable;
    wire [0:0] histogram_function_out_lm1_histogram_avm_enable;
    wire [0:0] histogram_function_out_lm1_histogram_avm_read;
    wire [0:0] histogram_function_out_lm1_histogram_avm_write;
    wire [31:0] histogram_function_out_lm1_histogram_avm_writedata;
    wire [31:0] histogram_function_out_lm92_histogram_avm_address;
    wire [0:0] histogram_function_out_lm92_histogram_avm_burstcount;
    wire [3:0] histogram_function_out_lm92_histogram_avm_byteenable;
    wire [0:0] histogram_function_out_lm92_histogram_avm_enable;
    wire [0:0] histogram_function_out_lm92_histogram_avm_read;
    wire [0:0] histogram_function_out_lm92_histogram_avm_write;
    wire [31:0] histogram_function_out_lm92_histogram_avm_writedata;
    wire [31:0] histogram_function_out_memdep_4_histogram_avm_address;
    wire [0:0] histogram_function_out_memdep_4_histogram_avm_burstcount;
    wire [3:0] histogram_function_out_memdep_4_histogram_avm_byteenable;
    wire [0:0] histogram_function_out_memdep_4_histogram_avm_enable;
    wire [0:0] histogram_function_out_memdep_4_histogram_avm_read;
    wire [0:0] histogram_function_out_memdep_4_histogram_avm_write;
    wire [31:0] histogram_function_out_memdep_4_histogram_avm_writedata;
    wire [31:0] histogram_function_out_memdep_5_histogram_avm_address;
    wire [0:0] histogram_function_out_memdep_5_histogram_avm_burstcount;
    wire [3:0] histogram_function_out_memdep_5_histogram_avm_byteenable;
    wire [0:0] histogram_function_out_memdep_5_histogram_avm_enable;
    wire [0:0] histogram_function_out_memdep_5_histogram_avm_read;
    wire [0:0] histogram_function_out_memdep_5_histogram_avm_write;
    wire [31:0] histogram_function_out_memdep_5_histogram_avm_writedata;
    wire [31:0] histogram_function_out_memdep_6_histogram_avm_address;
    wire [0:0] histogram_function_out_memdep_6_histogram_avm_burstcount;
    wire [3:0] histogram_function_out_memdep_6_histogram_avm_byteenable;
    wire [0:0] histogram_function_out_memdep_6_histogram_avm_enable;
    wire [0:0] histogram_function_out_memdep_6_histogram_avm_read;
    wire [0:0] histogram_function_out_memdep_6_histogram_avm_write;
    wire [31:0] histogram_function_out_memdep_6_histogram_avm_writedata;
    wire [31:0] histogram_function_out_memdep_histogram_avm_address;
    wire [0:0] histogram_function_out_memdep_histogram_avm_burstcount;
    wire [3:0] histogram_function_out_memdep_histogram_avm_byteenable;
    wire [0:0] histogram_function_out_memdep_histogram_avm_enable;
    wire [0:0] histogram_function_out_memdep_histogram_avm_read;
    wire [0:0] histogram_function_out_memdep_histogram_avm_write;
    wire [31:0] histogram_function_out_memdep_histogram_avm_writedata;
    wire [31:0] histogram_function_out_unnamed_histogram8_histogram_avm_address;
    wire [0:0] histogram_function_out_unnamed_histogram8_histogram_avm_burstcount;
    wire [3:0] histogram_function_out_unnamed_histogram8_histogram_avm_byteenable;
    wire [0:0] histogram_function_out_unnamed_histogram8_histogram_avm_enable;
    wire [0:0] histogram_function_out_unnamed_histogram8_histogram_avm_read;
    wire [0:0] histogram_function_out_unnamed_histogram8_histogram_avm_write;
    wire [31:0] histogram_function_out_unnamed_histogram8_histogram_avm_writedata;
    wire [63:0] histogram_function_out_unnamed_histogram9_histogram_avm_address;
    wire [0:0] histogram_function_out_unnamed_histogram9_histogram_avm_burstcount;
    wire [7:0] histogram_function_out_unnamed_histogram9_histogram_avm_byteenable;
    wire [0:0] histogram_function_out_unnamed_histogram9_histogram_avm_enable;
    wire [0:0] histogram_function_out_unnamed_histogram9_histogram_avm_read;
    wire [0:0] histogram_function_out_unnamed_histogram9_histogram_avm_write;
    wire [63:0] histogram_function_out_unnamed_histogram9_histogram_avm_writedata;
    wire [127:0] implicit_input_q;
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

    // not_stall(LOGICAL,58)
    assign not_stall_q = ~ (stall);

    // implicit_input_pad_const_end(CONSTANT,10)
    assign implicit_input_pad_const_end_q = $unsigned(32'b00000000000000000000000000000000);

    // implicit_input(BITJOIN,9)
    assign implicit_input_q = {implicit_input_pad_const_end_q, n, hist_r};

    // call_const(CONSTANT,4)
    assign call_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // histogram_function(BLACKBOX,8)
    histogram_function thehistogram_function (
        .in_arg_call(call_const_q),
        .in_arg_hist_r(call_const_q),
        .in_arg_return(call_const_q),
        .in_iord_bl_call_histogram_i_fifodata(implicit_input_q),
        .in_iord_bl_call_histogram_i_fifovalid(start),
        .in_iowr_bl_return_histogram_i_fifoready(not_stall_q),
        .in_lm113_histogram_avm_readdata(avm_lm113_histogram_readdata),
        .in_lm113_histogram_avm_readdatavalid(avm_lm113_histogram_readdatavalid),
        .in_lm113_histogram_avm_waitrequest(avm_lm113_histogram_waitrequest),
        .in_lm113_histogram_avm_writeack(avm_lm113_histogram_writeack),
        .in_lm1_histogram_avm_readdata(avm_lm1_histogram_readdata),
        .in_lm1_histogram_avm_readdatavalid(avm_lm1_histogram_readdatavalid),
        .in_lm1_histogram_avm_waitrequest(avm_lm1_histogram_waitrequest),
        .in_lm1_histogram_avm_writeack(avm_lm1_histogram_writeack),
        .in_lm92_histogram_avm_readdata(avm_lm92_histogram_readdata),
        .in_lm92_histogram_avm_readdatavalid(avm_lm92_histogram_readdatavalid),
        .in_lm92_histogram_avm_waitrequest(avm_lm92_histogram_waitrequest),
        .in_lm92_histogram_avm_writeack(avm_lm92_histogram_writeack),
        .in_memdep_4_histogram_avm_readdata(avm_memdep_4_histogram_readdata),
        .in_memdep_4_histogram_avm_readdatavalid(avm_memdep_4_histogram_readdatavalid),
        .in_memdep_4_histogram_avm_waitrequest(avm_memdep_4_histogram_waitrequest),
        .in_memdep_4_histogram_avm_writeack(avm_memdep_4_histogram_writeack),
        .in_memdep_5_histogram_avm_readdata(avm_memdep_5_histogram_readdata),
        .in_memdep_5_histogram_avm_readdatavalid(avm_memdep_5_histogram_readdatavalid),
        .in_memdep_5_histogram_avm_waitrequest(avm_memdep_5_histogram_waitrequest),
        .in_memdep_5_histogram_avm_writeack(avm_memdep_5_histogram_writeack),
        .in_memdep_6_histogram_avm_readdata(avm_memdep_6_histogram_readdata),
        .in_memdep_6_histogram_avm_readdatavalid(avm_memdep_6_histogram_readdatavalid),
        .in_memdep_6_histogram_avm_waitrequest(avm_memdep_6_histogram_waitrequest),
        .in_memdep_6_histogram_avm_writeack(avm_memdep_6_histogram_writeack),
        .in_memdep_histogram_avm_readdata(avm_memdep_histogram_readdata),
        .in_memdep_histogram_avm_readdatavalid(avm_memdep_histogram_readdatavalid),
        .in_memdep_histogram_avm_waitrequest(avm_memdep_histogram_waitrequest),
        .in_memdep_histogram_avm_writeack(avm_memdep_histogram_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_unnamed_histogram8_histogram_avm_readdata(avm_unnamed_histogram8_histogram_readdata),
        .in_unnamed_histogram8_histogram_avm_readdatavalid(avm_unnamed_histogram8_histogram_readdatavalid),
        .in_unnamed_histogram8_histogram_avm_waitrequest(avm_unnamed_histogram8_histogram_waitrequest),
        .in_unnamed_histogram8_histogram_avm_writeack(avm_unnamed_histogram8_histogram_writeack),
        .in_unnamed_histogram9_histogram_avm_readdata(avm_unnamed_histogram9_histogram_readdata),
        .in_unnamed_histogram9_histogram_avm_readdatavalid(avm_unnamed_histogram9_histogram_readdatavalid),
        .in_unnamed_histogram9_histogram_avm_waitrequest(avm_unnamed_histogram9_histogram_waitrequest),
        .in_unnamed_histogram9_histogram_avm_writeack(avm_unnamed_histogram9_histogram_writeack),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_histogram_o_fifoalmost_full(histogram_function_out_iord_bl_call_histogram_o_fifoalmost_full),
        .out_iord_bl_call_histogram_o_fifoready(histogram_function_out_iord_bl_call_histogram_o_fifoready),
        .out_iowr_bl_return_histogram_o_fifodata(histogram_function_out_iowr_bl_return_histogram_o_fifodata),
        .out_iowr_bl_return_histogram_o_fifovalid(histogram_function_out_iowr_bl_return_histogram_o_fifovalid),
        .out_lm113_histogram_avm_address(histogram_function_out_lm113_histogram_avm_address),
        .out_lm113_histogram_avm_burstcount(histogram_function_out_lm113_histogram_avm_burstcount),
        .out_lm113_histogram_avm_byteenable(histogram_function_out_lm113_histogram_avm_byteenable),
        .out_lm113_histogram_avm_enable(histogram_function_out_lm113_histogram_avm_enable),
        .out_lm113_histogram_avm_read(histogram_function_out_lm113_histogram_avm_read),
        .out_lm113_histogram_avm_write(histogram_function_out_lm113_histogram_avm_write),
        .out_lm113_histogram_avm_writedata(histogram_function_out_lm113_histogram_avm_writedata),
        .out_lm1_histogram_avm_address(histogram_function_out_lm1_histogram_avm_address),
        .out_lm1_histogram_avm_burstcount(histogram_function_out_lm1_histogram_avm_burstcount),
        .out_lm1_histogram_avm_byteenable(histogram_function_out_lm1_histogram_avm_byteenable),
        .out_lm1_histogram_avm_enable(histogram_function_out_lm1_histogram_avm_enable),
        .out_lm1_histogram_avm_read(histogram_function_out_lm1_histogram_avm_read),
        .out_lm1_histogram_avm_write(histogram_function_out_lm1_histogram_avm_write),
        .out_lm1_histogram_avm_writedata(histogram_function_out_lm1_histogram_avm_writedata),
        .out_lm92_histogram_avm_address(histogram_function_out_lm92_histogram_avm_address),
        .out_lm92_histogram_avm_burstcount(histogram_function_out_lm92_histogram_avm_burstcount),
        .out_lm92_histogram_avm_byteenable(histogram_function_out_lm92_histogram_avm_byteenable),
        .out_lm92_histogram_avm_enable(histogram_function_out_lm92_histogram_avm_enable),
        .out_lm92_histogram_avm_read(histogram_function_out_lm92_histogram_avm_read),
        .out_lm92_histogram_avm_write(histogram_function_out_lm92_histogram_avm_write),
        .out_lm92_histogram_avm_writedata(histogram_function_out_lm92_histogram_avm_writedata),
        .out_memdep_4_histogram_avm_address(histogram_function_out_memdep_4_histogram_avm_address),
        .out_memdep_4_histogram_avm_burstcount(histogram_function_out_memdep_4_histogram_avm_burstcount),
        .out_memdep_4_histogram_avm_byteenable(histogram_function_out_memdep_4_histogram_avm_byteenable),
        .out_memdep_4_histogram_avm_enable(histogram_function_out_memdep_4_histogram_avm_enable),
        .out_memdep_4_histogram_avm_read(histogram_function_out_memdep_4_histogram_avm_read),
        .out_memdep_4_histogram_avm_write(histogram_function_out_memdep_4_histogram_avm_write),
        .out_memdep_4_histogram_avm_writedata(histogram_function_out_memdep_4_histogram_avm_writedata),
        .out_memdep_5_histogram_avm_address(histogram_function_out_memdep_5_histogram_avm_address),
        .out_memdep_5_histogram_avm_burstcount(histogram_function_out_memdep_5_histogram_avm_burstcount),
        .out_memdep_5_histogram_avm_byteenable(histogram_function_out_memdep_5_histogram_avm_byteenable),
        .out_memdep_5_histogram_avm_enable(histogram_function_out_memdep_5_histogram_avm_enable),
        .out_memdep_5_histogram_avm_read(histogram_function_out_memdep_5_histogram_avm_read),
        .out_memdep_5_histogram_avm_write(histogram_function_out_memdep_5_histogram_avm_write),
        .out_memdep_5_histogram_avm_writedata(histogram_function_out_memdep_5_histogram_avm_writedata),
        .out_memdep_6_histogram_avm_address(histogram_function_out_memdep_6_histogram_avm_address),
        .out_memdep_6_histogram_avm_burstcount(histogram_function_out_memdep_6_histogram_avm_burstcount),
        .out_memdep_6_histogram_avm_byteenable(histogram_function_out_memdep_6_histogram_avm_byteenable),
        .out_memdep_6_histogram_avm_enable(histogram_function_out_memdep_6_histogram_avm_enable),
        .out_memdep_6_histogram_avm_read(histogram_function_out_memdep_6_histogram_avm_read),
        .out_memdep_6_histogram_avm_write(histogram_function_out_memdep_6_histogram_avm_write),
        .out_memdep_6_histogram_avm_writedata(histogram_function_out_memdep_6_histogram_avm_writedata),
        .out_memdep_histogram_avm_address(histogram_function_out_memdep_histogram_avm_address),
        .out_memdep_histogram_avm_burstcount(histogram_function_out_memdep_histogram_avm_burstcount),
        .out_memdep_histogram_avm_byteenable(histogram_function_out_memdep_histogram_avm_byteenable),
        .out_memdep_histogram_avm_enable(histogram_function_out_memdep_histogram_avm_enable),
        .out_memdep_histogram_avm_read(histogram_function_out_memdep_histogram_avm_read),
        .out_memdep_histogram_avm_write(histogram_function_out_memdep_histogram_avm_write),
        .out_memdep_histogram_avm_writedata(histogram_function_out_memdep_histogram_avm_writedata),
        .out_o_active_unnamed_histogram9(),
        .out_stall_out(),
        .out_unnamed_histogram8_histogram_avm_address(histogram_function_out_unnamed_histogram8_histogram_avm_address),
        .out_unnamed_histogram8_histogram_avm_burstcount(histogram_function_out_unnamed_histogram8_histogram_avm_burstcount),
        .out_unnamed_histogram8_histogram_avm_byteenable(histogram_function_out_unnamed_histogram8_histogram_avm_byteenable),
        .out_unnamed_histogram8_histogram_avm_enable(histogram_function_out_unnamed_histogram8_histogram_avm_enable),
        .out_unnamed_histogram8_histogram_avm_read(histogram_function_out_unnamed_histogram8_histogram_avm_read),
        .out_unnamed_histogram8_histogram_avm_write(histogram_function_out_unnamed_histogram8_histogram_avm_write),
        .out_unnamed_histogram8_histogram_avm_writedata(histogram_function_out_unnamed_histogram8_histogram_avm_writedata),
        .out_unnamed_histogram9_histogram_avm_address(histogram_function_out_unnamed_histogram9_histogram_avm_address),
        .out_unnamed_histogram9_histogram_avm_burstcount(histogram_function_out_unnamed_histogram9_histogram_avm_burstcount),
        .out_unnamed_histogram9_histogram_avm_byteenable(histogram_function_out_unnamed_histogram9_histogram_avm_byteenable),
        .out_unnamed_histogram9_histogram_avm_enable(histogram_function_out_unnamed_histogram9_histogram_avm_enable),
        .out_unnamed_histogram9_histogram_avm_read(histogram_function_out_unnamed_histogram9_histogram_avm_read),
        .out_unnamed_histogram9_histogram_avm_write(histogram_function_out_unnamed_histogram9_histogram_avm_write),
        .out_unnamed_histogram9_histogram_avm_writedata(histogram_function_out_unnamed_histogram9_histogram_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_lm113_histogram_address(GPOUT,59)
    assign avm_lm113_histogram_address = histogram_function_out_lm113_histogram_avm_address;

    // avm_lm113_histogram_burstcount(GPOUT,60)
    assign avm_lm113_histogram_burstcount = histogram_function_out_lm113_histogram_avm_burstcount;

    // avm_lm113_histogram_byteenable(GPOUT,61)
    assign avm_lm113_histogram_byteenable = histogram_function_out_lm113_histogram_avm_byteenable;

    // avm_lm113_histogram_enable(GPOUT,62)
    assign avm_lm113_histogram_enable = histogram_function_out_lm113_histogram_avm_enable;

    // avm_lm113_histogram_read(GPOUT,63)
    assign avm_lm113_histogram_read = histogram_function_out_lm113_histogram_avm_read;

    // avm_lm113_histogram_write(GPOUT,64)
    assign avm_lm113_histogram_write = histogram_function_out_lm113_histogram_avm_write;

    // avm_lm113_histogram_writedata(GPOUT,65)
    assign avm_lm113_histogram_writedata = histogram_function_out_lm113_histogram_avm_writedata;

    // avm_lm1_histogram_address(GPOUT,66)
    assign avm_lm1_histogram_address = histogram_function_out_lm1_histogram_avm_address;

    // avm_lm1_histogram_burstcount(GPOUT,67)
    assign avm_lm1_histogram_burstcount = histogram_function_out_lm1_histogram_avm_burstcount;

    // avm_lm1_histogram_byteenable(GPOUT,68)
    assign avm_lm1_histogram_byteenable = histogram_function_out_lm1_histogram_avm_byteenable;

    // avm_lm1_histogram_enable(GPOUT,69)
    assign avm_lm1_histogram_enable = histogram_function_out_lm1_histogram_avm_enable;

    // avm_lm1_histogram_read(GPOUT,70)
    assign avm_lm1_histogram_read = histogram_function_out_lm1_histogram_avm_read;

    // avm_lm1_histogram_write(GPOUT,71)
    assign avm_lm1_histogram_write = histogram_function_out_lm1_histogram_avm_write;

    // avm_lm1_histogram_writedata(GPOUT,72)
    assign avm_lm1_histogram_writedata = histogram_function_out_lm1_histogram_avm_writedata;

    // avm_lm92_histogram_address(GPOUT,73)
    assign avm_lm92_histogram_address = histogram_function_out_lm92_histogram_avm_address;

    // avm_lm92_histogram_burstcount(GPOUT,74)
    assign avm_lm92_histogram_burstcount = histogram_function_out_lm92_histogram_avm_burstcount;

    // avm_lm92_histogram_byteenable(GPOUT,75)
    assign avm_lm92_histogram_byteenable = histogram_function_out_lm92_histogram_avm_byteenable;

    // avm_lm92_histogram_enable(GPOUT,76)
    assign avm_lm92_histogram_enable = histogram_function_out_lm92_histogram_avm_enable;

    // avm_lm92_histogram_read(GPOUT,77)
    assign avm_lm92_histogram_read = histogram_function_out_lm92_histogram_avm_read;

    // avm_lm92_histogram_write(GPOUT,78)
    assign avm_lm92_histogram_write = histogram_function_out_lm92_histogram_avm_write;

    // avm_lm92_histogram_writedata(GPOUT,79)
    assign avm_lm92_histogram_writedata = histogram_function_out_lm92_histogram_avm_writedata;

    // avm_memdep_4_histogram_address(GPOUT,80)
    assign avm_memdep_4_histogram_address = histogram_function_out_memdep_4_histogram_avm_address;

    // avm_memdep_4_histogram_burstcount(GPOUT,81)
    assign avm_memdep_4_histogram_burstcount = histogram_function_out_memdep_4_histogram_avm_burstcount;

    // avm_memdep_4_histogram_byteenable(GPOUT,82)
    assign avm_memdep_4_histogram_byteenable = histogram_function_out_memdep_4_histogram_avm_byteenable;

    // avm_memdep_4_histogram_enable(GPOUT,83)
    assign avm_memdep_4_histogram_enable = histogram_function_out_memdep_4_histogram_avm_enable;

    // avm_memdep_4_histogram_read(GPOUT,84)
    assign avm_memdep_4_histogram_read = histogram_function_out_memdep_4_histogram_avm_read;

    // avm_memdep_4_histogram_write(GPOUT,85)
    assign avm_memdep_4_histogram_write = histogram_function_out_memdep_4_histogram_avm_write;

    // avm_memdep_4_histogram_writedata(GPOUT,86)
    assign avm_memdep_4_histogram_writedata = histogram_function_out_memdep_4_histogram_avm_writedata;

    // avm_memdep_5_histogram_address(GPOUT,87)
    assign avm_memdep_5_histogram_address = histogram_function_out_memdep_5_histogram_avm_address;

    // avm_memdep_5_histogram_burstcount(GPOUT,88)
    assign avm_memdep_5_histogram_burstcount = histogram_function_out_memdep_5_histogram_avm_burstcount;

    // avm_memdep_5_histogram_byteenable(GPOUT,89)
    assign avm_memdep_5_histogram_byteenable = histogram_function_out_memdep_5_histogram_avm_byteenable;

    // avm_memdep_5_histogram_enable(GPOUT,90)
    assign avm_memdep_5_histogram_enable = histogram_function_out_memdep_5_histogram_avm_enable;

    // avm_memdep_5_histogram_read(GPOUT,91)
    assign avm_memdep_5_histogram_read = histogram_function_out_memdep_5_histogram_avm_read;

    // avm_memdep_5_histogram_write(GPOUT,92)
    assign avm_memdep_5_histogram_write = histogram_function_out_memdep_5_histogram_avm_write;

    // avm_memdep_5_histogram_writedata(GPOUT,93)
    assign avm_memdep_5_histogram_writedata = histogram_function_out_memdep_5_histogram_avm_writedata;

    // avm_memdep_6_histogram_address(GPOUT,94)
    assign avm_memdep_6_histogram_address = histogram_function_out_memdep_6_histogram_avm_address;

    // avm_memdep_6_histogram_burstcount(GPOUT,95)
    assign avm_memdep_6_histogram_burstcount = histogram_function_out_memdep_6_histogram_avm_burstcount;

    // avm_memdep_6_histogram_byteenable(GPOUT,96)
    assign avm_memdep_6_histogram_byteenable = histogram_function_out_memdep_6_histogram_avm_byteenable;

    // avm_memdep_6_histogram_enable(GPOUT,97)
    assign avm_memdep_6_histogram_enable = histogram_function_out_memdep_6_histogram_avm_enable;

    // avm_memdep_6_histogram_read(GPOUT,98)
    assign avm_memdep_6_histogram_read = histogram_function_out_memdep_6_histogram_avm_read;

    // avm_memdep_6_histogram_write(GPOUT,99)
    assign avm_memdep_6_histogram_write = histogram_function_out_memdep_6_histogram_avm_write;

    // avm_memdep_6_histogram_writedata(GPOUT,100)
    assign avm_memdep_6_histogram_writedata = histogram_function_out_memdep_6_histogram_avm_writedata;

    // avm_memdep_histogram_address(GPOUT,101)
    assign avm_memdep_histogram_address = histogram_function_out_memdep_histogram_avm_address;

    // avm_memdep_histogram_burstcount(GPOUT,102)
    assign avm_memdep_histogram_burstcount = histogram_function_out_memdep_histogram_avm_burstcount;

    // avm_memdep_histogram_byteenable(GPOUT,103)
    assign avm_memdep_histogram_byteenable = histogram_function_out_memdep_histogram_avm_byteenable;

    // avm_memdep_histogram_enable(GPOUT,104)
    assign avm_memdep_histogram_enable = histogram_function_out_memdep_histogram_avm_enable;

    // avm_memdep_histogram_read(GPOUT,105)
    assign avm_memdep_histogram_read = histogram_function_out_memdep_histogram_avm_read;

    // avm_memdep_histogram_write(GPOUT,106)
    assign avm_memdep_histogram_write = histogram_function_out_memdep_histogram_avm_write;

    // avm_memdep_histogram_writedata(GPOUT,107)
    assign avm_memdep_histogram_writedata = histogram_function_out_memdep_histogram_avm_writedata;

    // avm_unnamed_histogram8_histogram_address(GPOUT,108)
    assign avm_unnamed_histogram8_histogram_address = histogram_function_out_unnamed_histogram8_histogram_avm_address;

    // avm_unnamed_histogram8_histogram_burstcount(GPOUT,109)
    assign avm_unnamed_histogram8_histogram_burstcount = histogram_function_out_unnamed_histogram8_histogram_avm_burstcount;

    // avm_unnamed_histogram8_histogram_byteenable(GPOUT,110)
    assign avm_unnamed_histogram8_histogram_byteenable = histogram_function_out_unnamed_histogram8_histogram_avm_byteenable;

    // avm_unnamed_histogram8_histogram_enable(GPOUT,111)
    assign avm_unnamed_histogram8_histogram_enable = histogram_function_out_unnamed_histogram8_histogram_avm_enable;

    // avm_unnamed_histogram8_histogram_read(GPOUT,112)
    assign avm_unnamed_histogram8_histogram_read = histogram_function_out_unnamed_histogram8_histogram_avm_read;

    // avm_unnamed_histogram8_histogram_write(GPOUT,113)
    assign avm_unnamed_histogram8_histogram_write = histogram_function_out_unnamed_histogram8_histogram_avm_write;

    // avm_unnamed_histogram8_histogram_writedata(GPOUT,114)
    assign avm_unnamed_histogram8_histogram_writedata = histogram_function_out_unnamed_histogram8_histogram_avm_writedata;

    // avm_unnamed_histogram9_histogram_address(GPOUT,115)
    assign avm_unnamed_histogram9_histogram_address = histogram_function_out_unnamed_histogram9_histogram_avm_address;

    // avm_unnamed_histogram9_histogram_burstcount(GPOUT,116)
    assign avm_unnamed_histogram9_histogram_burstcount = histogram_function_out_unnamed_histogram9_histogram_avm_burstcount;

    // avm_unnamed_histogram9_histogram_byteenable(GPOUT,117)
    assign avm_unnamed_histogram9_histogram_byteenable = histogram_function_out_unnamed_histogram9_histogram_avm_byteenable;

    // avm_unnamed_histogram9_histogram_enable(GPOUT,118)
    assign avm_unnamed_histogram9_histogram_enable = histogram_function_out_unnamed_histogram9_histogram_avm_enable;

    // avm_unnamed_histogram9_histogram_read(GPOUT,119)
    assign avm_unnamed_histogram9_histogram_read = histogram_function_out_unnamed_histogram9_histogram_avm_read;

    // avm_unnamed_histogram9_histogram_write(GPOUT,120)
    assign avm_unnamed_histogram9_histogram_write = histogram_function_out_unnamed_histogram9_histogram_avm_write;

    // avm_unnamed_histogram9_histogram_writedata(GPOUT,121)
    assign avm_unnamed_histogram9_histogram_writedata = histogram_function_out_unnamed_histogram9_histogram_avm_writedata;

    // avst_iord_bl_call_histogram_almost_full(GPOUT,122)
    assign avst_iord_bl_call_histogram_almost_full = histogram_function_out_iord_bl_call_histogram_o_fifoalmost_full;

    // avst_iord_bl_call_histogram_ready(GPOUT,123)
    assign avst_iord_bl_call_histogram_ready = histogram_function_out_iord_bl_call_histogram_o_fifoready;

    // avst_iowr_bl_return_histogram_data(GPOUT,124)
    assign avst_iowr_bl_return_histogram_data = histogram_function_out_iowr_bl_return_histogram_o_fifodata;

    // avst_iowr_bl_return_histogram_valid(GPOUT,125)
    assign avst_iowr_bl_return_histogram_valid = histogram_function_out_iowr_bl_return_histogram_o_fifovalid;

    // not_ready(LOGICAL,57)
    assign not_ready_q = ~ (histogram_function_out_iord_bl_call_histogram_o_fifoready);

    // busy_and(LOGICAL,2)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,129)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,128)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,3)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,126)
    assign busy = busy_or_q;

    // done(GPOUT,127)
    assign done = histogram_function_out_iowr_bl_return_histogram_o_fifovalid;

endmodule
