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
// SystemVerilog created on Tue Apr  4 21:38:49 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_function_wrapper (
    input wire [63:0] A_r,
    input wire [31:0] avm_lm113_gaussian_readdata,
    input wire [0:0] avm_lm113_gaussian_readdatavalid,
    input wire [0:0] avm_lm113_gaussian_waitrequest,
    input wire [0:0] avm_lm113_gaussian_writeack,
    input wire [31:0] avm_lm1_gaussian_readdata,
    input wire [0:0] avm_lm1_gaussian_readdatavalid,
    input wire [0:0] avm_lm1_gaussian_waitrequest,
    input wire [0:0] avm_lm1_gaussian_writeack,
    input wire [31:0] avm_lm92_gaussian_readdata,
    input wire [0:0] avm_lm92_gaussian_readdatavalid,
    input wire [0:0] avm_lm92_gaussian_waitrequest,
    input wire [0:0] avm_lm92_gaussian_writeack,
    input wire [31:0] avm_memdep_4_gaussian_readdata,
    input wire [0:0] avm_memdep_4_gaussian_readdatavalid,
    input wire [0:0] avm_memdep_4_gaussian_waitrequest,
    input wire [0:0] avm_memdep_4_gaussian_writeack,
    input wire [31:0] avm_memdep_5_gaussian_readdata,
    input wire [0:0] avm_memdep_5_gaussian_readdatavalid,
    input wire [0:0] avm_memdep_5_gaussian_waitrequest,
    input wire [0:0] avm_memdep_5_gaussian_writeack,
    input wire [31:0] avm_memdep_gaussian_readdata,
    input wire [0:0] avm_memdep_gaussian_readdatavalid,
    input wire [0:0] avm_memdep_gaussian_waitrequest,
    input wire [0:0] avm_memdep_gaussian_writeack,
    input wire [31:0] avm_unnamed_gaussian15_gaussian_readdata,
    input wire [0:0] avm_unnamed_gaussian15_gaussian_readdatavalid,
    input wire [0:0] avm_unnamed_gaussian15_gaussian_waitrequest,
    input wire [0:0] avm_unnamed_gaussian15_gaussian_writeack,
    input wire [63:0] avm_unnamed_gaussian16_gaussian_readdata,
    input wire [0:0] avm_unnamed_gaussian16_gaussian_readdatavalid,
    input wire [0:0] avm_unnamed_gaussian16_gaussian_waitrequest,
    input wire [0:0] avm_unnamed_gaussian16_gaussian_writeack,
    input wire [63:0] avst_iord_bl_call_gaussian_data,
    input wire [0:0] avst_iord_bl_call_gaussian_valid,
    input wire [0:0] avst_iowr_bl_return_gaussian_almostfull,
    input wire [0:0] avst_iowr_bl_return_gaussian_ready,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [31:0] avm_lm113_gaussian_address,
    output wire [0:0] avm_lm113_gaussian_burstcount,
    output wire [3:0] avm_lm113_gaussian_byteenable,
    output wire [0:0] avm_lm113_gaussian_enable,
    output wire [0:0] avm_lm113_gaussian_read,
    output wire [0:0] avm_lm113_gaussian_write,
    output wire [31:0] avm_lm113_gaussian_writedata,
    output wire [31:0] avm_lm1_gaussian_address,
    output wire [0:0] avm_lm1_gaussian_burstcount,
    output wire [3:0] avm_lm1_gaussian_byteenable,
    output wire [0:0] avm_lm1_gaussian_enable,
    output wire [0:0] avm_lm1_gaussian_read,
    output wire [0:0] avm_lm1_gaussian_write,
    output wire [31:0] avm_lm1_gaussian_writedata,
    output wire [31:0] avm_lm92_gaussian_address,
    output wire [0:0] avm_lm92_gaussian_burstcount,
    output wire [3:0] avm_lm92_gaussian_byteenable,
    output wire [0:0] avm_lm92_gaussian_enable,
    output wire [0:0] avm_lm92_gaussian_read,
    output wire [0:0] avm_lm92_gaussian_write,
    output wire [31:0] avm_lm92_gaussian_writedata,
    output wire [31:0] avm_memdep_4_gaussian_address,
    output wire [0:0] avm_memdep_4_gaussian_burstcount,
    output wire [3:0] avm_memdep_4_gaussian_byteenable,
    output wire [0:0] avm_memdep_4_gaussian_enable,
    output wire [0:0] avm_memdep_4_gaussian_read,
    output wire [0:0] avm_memdep_4_gaussian_write,
    output wire [31:0] avm_memdep_4_gaussian_writedata,
    output wire [31:0] avm_memdep_5_gaussian_address,
    output wire [0:0] avm_memdep_5_gaussian_burstcount,
    output wire [3:0] avm_memdep_5_gaussian_byteenable,
    output wire [0:0] avm_memdep_5_gaussian_enable,
    output wire [0:0] avm_memdep_5_gaussian_read,
    output wire [0:0] avm_memdep_5_gaussian_write,
    output wire [31:0] avm_memdep_5_gaussian_writedata,
    output wire [31:0] avm_memdep_gaussian_address,
    output wire [0:0] avm_memdep_gaussian_burstcount,
    output wire [3:0] avm_memdep_gaussian_byteenable,
    output wire [0:0] avm_memdep_gaussian_enable,
    output wire [0:0] avm_memdep_gaussian_read,
    output wire [0:0] avm_memdep_gaussian_write,
    output wire [31:0] avm_memdep_gaussian_writedata,
    output wire [31:0] avm_unnamed_gaussian15_gaussian_address,
    output wire [0:0] avm_unnamed_gaussian15_gaussian_burstcount,
    output wire [3:0] avm_unnamed_gaussian15_gaussian_byteenable,
    output wire [0:0] avm_unnamed_gaussian15_gaussian_enable,
    output wire [0:0] avm_unnamed_gaussian15_gaussian_read,
    output wire [0:0] avm_unnamed_gaussian15_gaussian_write,
    output wire [31:0] avm_unnamed_gaussian15_gaussian_writedata,
    output wire [63:0] avm_unnamed_gaussian16_gaussian_address,
    output wire [0:0] avm_unnamed_gaussian16_gaussian_burstcount,
    output wire [7:0] avm_unnamed_gaussian16_gaussian_byteenable,
    output wire [0:0] avm_unnamed_gaussian16_gaussian_enable,
    output wire [0:0] avm_unnamed_gaussian16_gaussian_read,
    output wire [0:0] avm_unnamed_gaussian16_gaussian_write,
    output wire [63:0] avm_unnamed_gaussian16_gaussian_writedata,
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
    wire [31:0] gaussian_function_out_lm113_gaussian_avm_address;
    wire [0:0] gaussian_function_out_lm113_gaussian_avm_burstcount;
    wire [3:0] gaussian_function_out_lm113_gaussian_avm_byteenable;
    wire [0:0] gaussian_function_out_lm113_gaussian_avm_enable;
    wire [0:0] gaussian_function_out_lm113_gaussian_avm_read;
    wire [0:0] gaussian_function_out_lm113_gaussian_avm_write;
    wire [31:0] gaussian_function_out_lm113_gaussian_avm_writedata;
    wire [31:0] gaussian_function_out_lm1_gaussian_avm_address;
    wire [0:0] gaussian_function_out_lm1_gaussian_avm_burstcount;
    wire [3:0] gaussian_function_out_lm1_gaussian_avm_byteenable;
    wire [0:0] gaussian_function_out_lm1_gaussian_avm_enable;
    wire [0:0] gaussian_function_out_lm1_gaussian_avm_read;
    wire [0:0] gaussian_function_out_lm1_gaussian_avm_write;
    wire [31:0] gaussian_function_out_lm1_gaussian_avm_writedata;
    wire [31:0] gaussian_function_out_lm92_gaussian_avm_address;
    wire [0:0] gaussian_function_out_lm92_gaussian_avm_burstcount;
    wire [3:0] gaussian_function_out_lm92_gaussian_avm_byteenable;
    wire [0:0] gaussian_function_out_lm92_gaussian_avm_enable;
    wire [0:0] gaussian_function_out_lm92_gaussian_avm_read;
    wire [0:0] gaussian_function_out_lm92_gaussian_avm_write;
    wire [31:0] gaussian_function_out_lm92_gaussian_avm_writedata;
    wire [31:0] gaussian_function_out_memdep_4_gaussian_avm_address;
    wire [0:0] gaussian_function_out_memdep_4_gaussian_avm_burstcount;
    wire [3:0] gaussian_function_out_memdep_4_gaussian_avm_byteenable;
    wire [0:0] gaussian_function_out_memdep_4_gaussian_avm_enable;
    wire [0:0] gaussian_function_out_memdep_4_gaussian_avm_read;
    wire [0:0] gaussian_function_out_memdep_4_gaussian_avm_write;
    wire [31:0] gaussian_function_out_memdep_4_gaussian_avm_writedata;
    wire [31:0] gaussian_function_out_memdep_5_gaussian_avm_address;
    wire [0:0] gaussian_function_out_memdep_5_gaussian_avm_burstcount;
    wire [3:0] gaussian_function_out_memdep_5_gaussian_avm_byteenable;
    wire [0:0] gaussian_function_out_memdep_5_gaussian_avm_enable;
    wire [0:0] gaussian_function_out_memdep_5_gaussian_avm_read;
    wire [0:0] gaussian_function_out_memdep_5_gaussian_avm_write;
    wire [31:0] gaussian_function_out_memdep_5_gaussian_avm_writedata;
    wire [31:0] gaussian_function_out_memdep_gaussian_avm_address;
    wire [0:0] gaussian_function_out_memdep_gaussian_avm_burstcount;
    wire [3:0] gaussian_function_out_memdep_gaussian_avm_byteenable;
    wire [0:0] gaussian_function_out_memdep_gaussian_avm_enable;
    wire [0:0] gaussian_function_out_memdep_gaussian_avm_read;
    wire [0:0] gaussian_function_out_memdep_gaussian_avm_write;
    wire [31:0] gaussian_function_out_memdep_gaussian_avm_writedata;
    wire [31:0] gaussian_function_out_unnamed_gaussian15_gaussian_avm_address;
    wire [0:0] gaussian_function_out_unnamed_gaussian15_gaussian_avm_burstcount;
    wire [3:0] gaussian_function_out_unnamed_gaussian15_gaussian_avm_byteenable;
    wire [0:0] gaussian_function_out_unnamed_gaussian15_gaussian_avm_enable;
    wire [0:0] gaussian_function_out_unnamed_gaussian15_gaussian_avm_read;
    wire [0:0] gaussian_function_out_unnamed_gaussian15_gaussian_avm_write;
    wire [31:0] gaussian_function_out_unnamed_gaussian15_gaussian_avm_writedata;
    wire [63:0] gaussian_function_out_unnamed_gaussian16_gaussian_avm_address;
    wire [0:0] gaussian_function_out_unnamed_gaussian16_gaussian_avm_burstcount;
    wire [7:0] gaussian_function_out_unnamed_gaussian16_gaussian_avm_byteenable;
    wire [0:0] gaussian_function_out_unnamed_gaussian16_gaussian_avm_enable;
    wire [0:0] gaussian_function_out_unnamed_gaussian16_gaussian_avm_read;
    wire [0:0] gaussian_function_out_unnamed_gaussian16_gaussian_avm_write;
    wire [63:0] gaussian_function_out_unnamed_gaussian16_gaussian_avm_writedata;
    wire [63:0] implicit_input_q;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,52)
    assign not_stall_q = ~ (stall);

    // implicit_input(BITJOIN,9)
    assign implicit_input_q = A_r;

    // A_r_const(CONSTANT,2)
    assign A_r_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // gaussian_function(BLACKBOX,8)
    gaussian_function thegaussian_function (
        .in_arg_A_r(A_r_const_q),
        .in_arg_call(A_r_const_q),
        .in_arg_return(A_r_const_q),
        .in_iord_bl_call_gaussian_i_fifodata(implicit_input_q),
        .in_iord_bl_call_gaussian_i_fifovalid(start),
        .in_iowr_bl_return_gaussian_i_fifoready(not_stall_q),
        .in_lm113_gaussian_avm_readdata(avm_lm113_gaussian_readdata),
        .in_lm113_gaussian_avm_readdatavalid(avm_lm113_gaussian_readdatavalid),
        .in_lm113_gaussian_avm_waitrequest(avm_lm113_gaussian_waitrequest),
        .in_lm113_gaussian_avm_writeack(avm_lm113_gaussian_writeack),
        .in_lm1_gaussian_avm_readdata(avm_lm1_gaussian_readdata),
        .in_lm1_gaussian_avm_readdatavalid(avm_lm1_gaussian_readdatavalid),
        .in_lm1_gaussian_avm_waitrequest(avm_lm1_gaussian_waitrequest),
        .in_lm1_gaussian_avm_writeack(avm_lm1_gaussian_writeack),
        .in_lm92_gaussian_avm_readdata(avm_lm92_gaussian_readdata),
        .in_lm92_gaussian_avm_readdatavalid(avm_lm92_gaussian_readdatavalid),
        .in_lm92_gaussian_avm_waitrequest(avm_lm92_gaussian_waitrequest),
        .in_lm92_gaussian_avm_writeack(avm_lm92_gaussian_writeack),
        .in_memdep_4_gaussian_avm_readdata(avm_memdep_4_gaussian_readdata),
        .in_memdep_4_gaussian_avm_readdatavalid(avm_memdep_4_gaussian_readdatavalid),
        .in_memdep_4_gaussian_avm_waitrequest(avm_memdep_4_gaussian_waitrequest),
        .in_memdep_4_gaussian_avm_writeack(avm_memdep_4_gaussian_writeack),
        .in_memdep_5_gaussian_avm_readdata(avm_memdep_5_gaussian_readdata),
        .in_memdep_5_gaussian_avm_readdatavalid(avm_memdep_5_gaussian_readdatavalid),
        .in_memdep_5_gaussian_avm_waitrequest(avm_memdep_5_gaussian_waitrequest),
        .in_memdep_5_gaussian_avm_writeack(avm_memdep_5_gaussian_writeack),
        .in_memdep_gaussian_avm_readdata(avm_memdep_gaussian_readdata),
        .in_memdep_gaussian_avm_readdatavalid(avm_memdep_gaussian_readdatavalid),
        .in_memdep_gaussian_avm_waitrequest(avm_memdep_gaussian_waitrequest),
        .in_memdep_gaussian_avm_writeack(avm_memdep_gaussian_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_unnamed_gaussian15_gaussian_avm_readdata(avm_unnamed_gaussian15_gaussian_readdata),
        .in_unnamed_gaussian15_gaussian_avm_readdatavalid(avm_unnamed_gaussian15_gaussian_readdatavalid),
        .in_unnamed_gaussian15_gaussian_avm_waitrequest(avm_unnamed_gaussian15_gaussian_waitrequest),
        .in_unnamed_gaussian15_gaussian_avm_writeack(avm_unnamed_gaussian15_gaussian_writeack),
        .in_unnamed_gaussian16_gaussian_avm_readdata(avm_unnamed_gaussian16_gaussian_readdata),
        .in_unnamed_gaussian16_gaussian_avm_readdatavalid(avm_unnamed_gaussian16_gaussian_readdatavalid),
        .in_unnamed_gaussian16_gaussian_avm_waitrequest(avm_unnamed_gaussian16_gaussian_waitrequest),
        .in_unnamed_gaussian16_gaussian_avm_writeack(avm_unnamed_gaussian16_gaussian_writeack),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_gaussian_o_fifoalmost_full(gaussian_function_out_iord_bl_call_gaussian_o_fifoalmost_full),
        .out_iord_bl_call_gaussian_o_fifoready(gaussian_function_out_iord_bl_call_gaussian_o_fifoready),
        .out_iowr_bl_return_gaussian_o_fifodata(gaussian_function_out_iowr_bl_return_gaussian_o_fifodata),
        .out_iowr_bl_return_gaussian_o_fifovalid(gaussian_function_out_iowr_bl_return_gaussian_o_fifovalid),
        .out_lm113_gaussian_avm_address(gaussian_function_out_lm113_gaussian_avm_address),
        .out_lm113_gaussian_avm_burstcount(gaussian_function_out_lm113_gaussian_avm_burstcount),
        .out_lm113_gaussian_avm_byteenable(gaussian_function_out_lm113_gaussian_avm_byteenable),
        .out_lm113_gaussian_avm_enable(gaussian_function_out_lm113_gaussian_avm_enable),
        .out_lm113_gaussian_avm_read(gaussian_function_out_lm113_gaussian_avm_read),
        .out_lm113_gaussian_avm_write(gaussian_function_out_lm113_gaussian_avm_write),
        .out_lm113_gaussian_avm_writedata(gaussian_function_out_lm113_gaussian_avm_writedata),
        .out_lm1_gaussian_avm_address(gaussian_function_out_lm1_gaussian_avm_address),
        .out_lm1_gaussian_avm_burstcount(gaussian_function_out_lm1_gaussian_avm_burstcount),
        .out_lm1_gaussian_avm_byteenable(gaussian_function_out_lm1_gaussian_avm_byteenable),
        .out_lm1_gaussian_avm_enable(gaussian_function_out_lm1_gaussian_avm_enable),
        .out_lm1_gaussian_avm_read(gaussian_function_out_lm1_gaussian_avm_read),
        .out_lm1_gaussian_avm_write(gaussian_function_out_lm1_gaussian_avm_write),
        .out_lm1_gaussian_avm_writedata(gaussian_function_out_lm1_gaussian_avm_writedata),
        .out_lm92_gaussian_avm_address(gaussian_function_out_lm92_gaussian_avm_address),
        .out_lm92_gaussian_avm_burstcount(gaussian_function_out_lm92_gaussian_avm_burstcount),
        .out_lm92_gaussian_avm_byteenable(gaussian_function_out_lm92_gaussian_avm_byteenable),
        .out_lm92_gaussian_avm_enable(gaussian_function_out_lm92_gaussian_avm_enable),
        .out_lm92_gaussian_avm_read(gaussian_function_out_lm92_gaussian_avm_read),
        .out_lm92_gaussian_avm_write(gaussian_function_out_lm92_gaussian_avm_write),
        .out_lm92_gaussian_avm_writedata(gaussian_function_out_lm92_gaussian_avm_writedata),
        .out_memdep_4_gaussian_avm_address(gaussian_function_out_memdep_4_gaussian_avm_address),
        .out_memdep_4_gaussian_avm_burstcount(gaussian_function_out_memdep_4_gaussian_avm_burstcount),
        .out_memdep_4_gaussian_avm_byteenable(gaussian_function_out_memdep_4_gaussian_avm_byteenable),
        .out_memdep_4_gaussian_avm_enable(gaussian_function_out_memdep_4_gaussian_avm_enable),
        .out_memdep_4_gaussian_avm_read(gaussian_function_out_memdep_4_gaussian_avm_read),
        .out_memdep_4_gaussian_avm_write(gaussian_function_out_memdep_4_gaussian_avm_write),
        .out_memdep_4_gaussian_avm_writedata(gaussian_function_out_memdep_4_gaussian_avm_writedata),
        .out_memdep_5_gaussian_avm_address(gaussian_function_out_memdep_5_gaussian_avm_address),
        .out_memdep_5_gaussian_avm_burstcount(gaussian_function_out_memdep_5_gaussian_avm_burstcount),
        .out_memdep_5_gaussian_avm_byteenable(gaussian_function_out_memdep_5_gaussian_avm_byteenable),
        .out_memdep_5_gaussian_avm_enable(gaussian_function_out_memdep_5_gaussian_avm_enable),
        .out_memdep_5_gaussian_avm_read(gaussian_function_out_memdep_5_gaussian_avm_read),
        .out_memdep_5_gaussian_avm_write(gaussian_function_out_memdep_5_gaussian_avm_write),
        .out_memdep_5_gaussian_avm_writedata(gaussian_function_out_memdep_5_gaussian_avm_writedata),
        .out_memdep_gaussian_avm_address(gaussian_function_out_memdep_gaussian_avm_address),
        .out_memdep_gaussian_avm_burstcount(gaussian_function_out_memdep_gaussian_avm_burstcount),
        .out_memdep_gaussian_avm_byteenable(gaussian_function_out_memdep_gaussian_avm_byteenable),
        .out_memdep_gaussian_avm_enable(gaussian_function_out_memdep_gaussian_avm_enable),
        .out_memdep_gaussian_avm_read(gaussian_function_out_memdep_gaussian_avm_read),
        .out_memdep_gaussian_avm_write(gaussian_function_out_memdep_gaussian_avm_write),
        .out_memdep_gaussian_avm_writedata(gaussian_function_out_memdep_gaussian_avm_writedata),
        .out_o_active_unnamed_gaussian16(),
        .out_stall_out(),
        .out_unnamed_gaussian15_gaussian_avm_address(gaussian_function_out_unnamed_gaussian15_gaussian_avm_address),
        .out_unnamed_gaussian15_gaussian_avm_burstcount(gaussian_function_out_unnamed_gaussian15_gaussian_avm_burstcount),
        .out_unnamed_gaussian15_gaussian_avm_byteenable(gaussian_function_out_unnamed_gaussian15_gaussian_avm_byteenable),
        .out_unnamed_gaussian15_gaussian_avm_enable(gaussian_function_out_unnamed_gaussian15_gaussian_avm_enable),
        .out_unnamed_gaussian15_gaussian_avm_read(gaussian_function_out_unnamed_gaussian15_gaussian_avm_read),
        .out_unnamed_gaussian15_gaussian_avm_write(gaussian_function_out_unnamed_gaussian15_gaussian_avm_write),
        .out_unnamed_gaussian15_gaussian_avm_writedata(gaussian_function_out_unnamed_gaussian15_gaussian_avm_writedata),
        .out_unnamed_gaussian16_gaussian_avm_address(gaussian_function_out_unnamed_gaussian16_gaussian_avm_address),
        .out_unnamed_gaussian16_gaussian_avm_burstcount(gaussian_function_out_unnamed_gaussian16_gaussian_avm_burstcount),
        .out_unnamed_gaussian16_gaussian_avm_byteenable(gaussian_function_out_unnamed_gaussian16_gaussian_avm_byteenable),
        .out_unnamed_gaussian16_gaussian_avm_enable(gaussian_function_out_unnamed_gaussian16_gaussian_avm_enable),
        .out_unnamed_gaussian16_gaussian_avm_read(gaussian_function_out_unnamed_gaussian16_gaussian_avm_read),
        .out_unnamed_gaussian16_gaussian_avm_write(gaussian_function_out_unnamed_gaussian16_gaussian_avm_write),
        .out_unnamed_gaussian16_gaussian_avm_writedata(gaussian_function_out_unnamed_gaussian16_gaussian_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_lm113_gaussian_address(GPOUT,53)
    assign avm_lm113_gaussian_address = gaussian_function_out_lm113_gaussian_avm_address;

    // avm_lm113_gaussian_burstcount(GPOUT,54)
    assign avm_lm113_gaussian_burstcount = gaussian_function_out_lm113_gaussian_avm_burstcount;

    // avm_lm113_gaussian_byteenable(GPOUT,55)
    assign avm_lm113_gaussian_byteenable = gaussian_function_out_lm113_gaussian_avm_byteenable;

    // avm_lm113_gaussian_enable(GPOUT,56)
    assign avm_lm113_gaussian_enable = gaussian_function_out_lm113_gaussian_avm_enable;

    // avm_lm113_gaussian_read(GPOUT,57)
    assign avm_lm113_gaussian_read = gaussian_function_out_lm113_gaussian_avm_read;

    // avm_lm113_gaussian_write(GPOUT,58)
    assign avm_lm113_gaussian_write = gaussian_function_out_lm113_gaussian_avm_write;

    // avm_lm113_gaussian_writedata(GPOUT,59)
    assign avm_lm113_gaussian_writedata = gaussian_function_out_lm113_gaussian_avm_writedata;

    // avm_lm1_gaussian_address(GPOUT,60)
    assign avm_lm1_gaussian_address = gaussian_function_out_lm1_gaussian_avm_address;

    // avm_lm1_gaussian_burstcount(GPOUT,61)
    assign avm_lm1_gaussian_burstcount = gaussian_function_out_lm1_gaussian_avm_burstcount;

    // avm_lm1_gaussian_byteenable(GPOUT,62)
    assign avm_lm1_gaussian_byteenable = gaussian_function_out_lm1_gaussian_avm_byteenable;

    // avm_lm1_gaussian_enable(GPOUT,63)
    assign avm_lm1_gaussian_enable = gaussian_function_out_lm1_gaussian_avm_enable;

    // avm_lm1_gaussian_read(GPOUT,64)
    assign avm_lm1_gaussian_read = gaussian_function_out_lm1_gaussian_avm_read;

    // avm_lm1_gaussian_write(GPOUT,65)
    assign avm_lm1_gaussian_write = gaussian_function_out_lm1_gaussian_avm_write;

    // avm_lm1_gaussian_writedata(GPOUT,66)
    assign avm_lm1_gaussian_writedata = gaussian_function_out_lm1_gaussian_avm_writedata;

    // avm_lm92_gaussian_address(GPOUT,67)
    assign avm_lm92_gaussian_address = gaussian_function_out_lm92_gaussian_avm_address;

    // avm_lm92_gaussian_burstcount(GPOUT,68)
    assign avm_lm92_gaussian_burstcount = gaussian_function_out_lm92_gaussian_avm_burstcount;

    // avm_lm92_gaussian_byteenable(GPOUT,69)
    assign avm_lm92_gaussian_byteenable = gaussian_function_out_lm92_gaussian_avm_byteenable;

    // avm_lm92_gaussian_enable(GPOUT,70)
    assign avm_lm92_gaussian_enable = gaussian_function_out_lm92_gaussian_avm_enable;

    // avm_lm92_gaussian_read(GPOUT,71)
    assign avm_lm92_gaussian_read = gaussian_function_out_lm92_gaussian_avm_read;

    // avm_lm92_gaussian_write(GPOUT,72)
    assign avm_lm92_gaussian_write = gaussian_function_out_lm92_gaussian_avm_write;

    // avm_lm92_gaussian_writedata(GPOUT,73)
    assign avm_lm92_gaussian_writedata = gaussian_function_out_lm92_gaussian_avm_writedata;

    // avm_memdep_4_gaussian_address(GPOUT,74)
    assign avm_memdep_4_gaussian_address = gaussian_function_out_memdep_4_gaussian_avm_address;

    // avm_memdep_4_gaussian_burstcount(GPOUT,75)
    assign avm_memdep_4_gaussian_burstcount = gaussian_function_out_memdep_4_gaussian_avm_burstcount;

    // avm_memdep_4_gaussian_byteenable(GPOUT,76)
    assign avm_memdep_4_gaussian_byteenable = gaussian_function_out_memdep_4_gaussian_avm_byteenable;

    // avm_memdep_4_gaussian_enable(GPOUT,77)
    assign avm_memdep_4_gaussian_enable = gaussian_function_out_memdep_4_gaussian_avm_enable;

    // avm_memdep_4_gaussian_read(GPOUT,78)
    assign avm_memdep_4_gaussian_read = gaussian_function_out_memdep_4_gaussian_avm_read;

    // avm_memdep_4_gaussian_write(GPOUT,79)
    assign avm_memdep_4_gaussian_write = gaussian_function_out_memdep_4_gaussian_avm_write;

    // avm_memdep_4_gaussian_writedata(GPOUT,80)
    assign avm_memdep_4_gaussian_writedata = gaussian_function_out_memdep_4_gaussian_avm_writedata;

    // avm_memdep_5_gaussian_address(GPOUT,81)
    assign avm_memdep_5_gaussian_address = gaussian_function_out_memdep_5_gaussian_avm_address;

    // avm_memdep_5_gaussian_burstcount(GPOUT,82)
    assign avm_memdep_5_gaussian_burstcount = gaussian_function_out_memdep_5_gaussian_avm_burstcount;

    // avm_memdep_5_gaussian_byteenable(GPOUT,83)
    assign avm_memdep_5_gaussian_byteenable = gaussian_function_out_memdep_5_gaussian_avm_byteenable;

    // avm_memdep_5_gaussian_enable(GPOUT,84)
    assign avm_memdep_5_gaussian_enable = gaussian_function_out_memdep_5_gaussian_avm_enable;

    // avm_memdep_5_gaussian_read(GPOUT,85)
    assign avm_memdep_5_gaussian_read = gaussian_function_out_memdep_5_gaussian_avm_read;

    // avm_memdep_5_gaussian_write(GPOUT,86)
    assign avm_memdep_5_gaussian_write = gaussian_function_out_memdep_5_gaussian_avm_write;

    // avm_memdep_5_gaussian_writedata(GPOUT,87)
    assign avm_memdep_5_gaussian_writedata = gaussian_function_out_memdep_5_gaussian_avm_writedata;

    // avm_memdep_gaussian_address(GPOUT,88)
    assign avm_memdep_gaussian_address = gaussian_function_out_memdep_gaussian_avm_address;

    // avm_memdep_gaussian_burstcount(GPOUT,89)
    assign avm_memdep_gaussian_burstcount = gaussian_function_out_memdep_gaussian_avm_burstcount;

    // avm_memdep_gaussian_byteenable(GPOUT,90)
    assign avm_memdep_gaussian_byteenable = gaussian_function_out_memdep_gaussian_avm_byteenable;

    // avm_memdep_gaussian_enable(GPOUT,91)
    assign avm_memdep_gaussian_enable = gaussian_function_out_memdep_gaussian_avm_enable;

    // avm_memdep_gaussian_read(GPOUT,92)
    assign avm_memdep_gaussian_read = gaussian_function_out_memdep_gaussian_avm_read;

    // avm_memdep_gaussian_write(GPOUT,93)
    assign avm_memdep_gaussian_write = gaussian_function_out_memdep_gaussian_avm_write;

    // avm_memdep_gaussian_writedata(GPOUT,94)
    assign avm_memdep_gaussian_writedata = gaussian_function_out_memdep_gaussian_avm_writedata;

    // avm_unnamed_gaussian15_gaussian_address(GPOUT,95)
    assign avm_unnamed_gaussian15_gaussian_address = gaussian_function_out_unnamed_gaussian15_gaussian_avm_address;

    // avm_unnamed_gaussian15_gaussian_burstcount(GPOUT,96)
    assign avm_unnamed_gaussian15_gaussian_burstcount = gaussian_function_out_unnamed_gaussian15_gaussian_avm_burstcount;

    // avm_unnamed_gaussian15_gaussian_byteenable(GPOUT,97)
    assign avm_unnamed_gaussian15_gaussian_byteenable = gaussian_function_out_unnamed_gaussian15_gaussian_avm_byteenable;

    // avm_unnamed_gaussian15_gaussian_enable(GPOUT,98)
    assign avm_unnamed_gaussian15_gaussian_enable = gaussian_function_out_unnamed_gaussian15_gaussian_avm_enable;

    // avm_unnamed_gaussian15_gaussian_read(GPOUT,99)
    assign avm_unnamed_gaussian15_gaussian_read = gaussian_function_out_unnamed_gaussian15_gaussian_avm_read;

    // avm_unnamed_gaussian15_gaussian_write(GPOUT,100)
    assign avm_unnamed_gaussian15_gaussian_write = gaussian_function_out_unnamed_gaussian15_gaussian_avm_write;

    // avm_unnamed_gaussian15_gaussian_writedata(GPOUT,101)
    assign avm_unnamed_gaussian15_gaussian_writedata = gaussian_function_out_unnamed_gaussian15_gaussian_avm_writedata;

    // avm_unnamed_gaussian16_gaussian_address(GPOUT,102)
    assign avm_unnamed_gaussian16_gaussian_address = gaussian_function_out_unnamed_gaussian16_gaussian_avm_address;

    // avm_unnamed_gaussian16_gaussian_burstcount(GPOUT,103)
    assign avm_unnamed_gaussian16_gaussian_burstcount = gaussian_function_out_unnamed_gaussian16_gaussian_avm_burstcount;

    // avm_unnamed_gaussian16_gaussian_byteenable(GPOUT,104)
    assign avm_unnamed_gaussian16_gaussian_byteenable = gaussian_function_out_unnamed_gaussian16_gaussian_avm_byteenable;

    // avm_unnamed_gaussian16_gaussian_enable(GPOUT,105)
    assign avm_unnamed_gaussian16_gaussian_enable = gaussian_function_out_unnamed_gaussian16_gaussian_avm_enable;

    // avm_unnamed_gaussian16_gaussian_read(GPOUT,106)
    assign avm_unnamed_gaussian16_gaussian_read = gaussian_function_out_unnamed_gaussian16_gaussian_avm_read;

    // avm_unnamed_gaussian16_gaussian_write(GPOUT,107)
    assign avm_unnamed_gaussian16_gaussian_write = gaussian_function_out_unnamed_gaussian16_gaussian_avm_write;

    // avm_unnamed_gaussian16_gaussian_writedata(GPOUT,108)
    assign avm_unnamed_gaussian16_gaussian_writedata = gaussian_function_out_unnamed_gaussian16_gaussian_avm_writedata;

    // avst_iord_bl_call_gaussian_almost_full(GPOUT,109)
    assign avst_iord_bl_call_gaussian_almost_full = gaussian_function_out_iord_bl_call_gaussian_o_fifoalmost_full;

    // avst_iord_bl_call_gaussian_ready(GPOUT,110)
    assign avst_iord_bl_call_gaussian_ready = gaussian_function_out_iord_bl_call_gaussian_o_fifoready;

    // avst_iowr_bl_return_gaussian_data(GPOUT,111)
    assign avst_iowr_bl_return_gaussian_data = gaussian_function_out_iowr_bl_return_gaussian_o_fifodata;

    // avst_iowr_bl_return_gaussian_valid(GPOUT,112)
    assign avst_iowr_bl_return_gaussian_valid = gaussian_function_out_iowr_bl_return_gaussian_o_fifovalid;

    // not_ready(LOGICAL,51)
    assign not_ready_q = ~ (gaussian_function_out_iord_bl_call_gaussian_o_fifoready);

    // busy_and(LOGICAL,3)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,116)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,115)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,4)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,113)
    assign busy = busy_or_q;

    // done(GPOUT,114)
    assign done = gaussian_function_out_iowr_bl_return_gaussian_o_fifovalid;

endmodule
