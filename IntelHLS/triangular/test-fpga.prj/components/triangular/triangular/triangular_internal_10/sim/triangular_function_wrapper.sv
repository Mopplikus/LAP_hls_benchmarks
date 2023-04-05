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
// SystemVerilog created on Wed Apr  5 14:46:59 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_function_wrapper (
    input wire [63:0] A,
    input wire [31:0] avm_lm122_triangular_readdata,
    input wire [0:0] avm_lm122_triangular_readdatavalid,
    input wire [0:0] avm_lm122_triangular_waitrequest,
    input wire [0:0] avm_lm122_triangular_writeack,
    input wire [31:0] avm_lm143_triangular_readdata,
    input wire [0:0] avm_lm143_triangular_readdatavalid,
    input wire [0:0] avm_lm143_triangular_waitrequest,
    input wire [0:0] avm_lm143_triangular_writeack,
    input wire [31:0] avm_lm1_triangular_readdata,
    input wire [0:0] avm_lm1_triangular_readdatavalid,
    input wire [0:0] avm_lm1_triangular_waitrequest,
    input wire [0:0] avm_lm1_triangular_writeack,
    input wire [31:0] avm_memdep_4_triangular_readdata,
    input wire [0:0] avm_memdep_4_triangular_readdatavalid,
    input wire [0:0] avm_memdep_4_triangular_waitrequest,
    input wire [0:0] avm_memdep_4_triangular_writeack,
    input wire [31:0] avm_memdep_5_triangular_readdata,
    input wire [0:0] avm_memdep_5_triangular_readdatavalid,
    input wire [0:0] avm_memdep_5_triangular_waitrequest,
    input wire [0:0] avm_memdep_5_triangular_writeack,
    input wire [63:0] avm_memdep_8_triangular_readdata,
    input wire [0:0] avm_memdep_8_triangular_readdatavalid,
    input wire [0:0] avm_memdep_8_triangular_waitrequest,
    input wire [0:0] avm_memdep_8_triangular_writeack,
    input wire [31:0] avm_memdep_triangular_readdata,
    input wire [0:0] avm_memdep_triangular_readdatavalid,
    input wire [0:0] avm_memdep_triangular_waitrequest,
    input wire [0:0] avm_memdep_triangular_writeack,
    input wire [31:0] avm_unnamed_triangular17_triangular_readdata,
    input wire [0:0] avm_unnamed_triangular17_triangular_readdatavalid,
    input wire [0:0] avm_unnamed_triangular17_triangular_waitrequest,
    input wire [0:0] avm_unnamed_triangular17_triangular_writeack,
    input wire [63:0] avm_unnamed_triangular8_triangular_readdata,
    input wire [0:0] avm_unnamed_triangular8_triangular_readdatavalid,
    input wire [0:0] avm_unnamed_triangular8_triangular_waitrequest,
    input wire [0:0] avm_unnamed_triangular8_triangular_writeack,
    input wire [63:0] avm_unnamed_triangular9_triangular_readdata,
    input wire [0:0] avm_unnamed_triangular9_triangular_readdatavalid,
    input wire [0:0] avm_unnamed_triangular9_triangular_waitrequest,
    input wire [0:0] avm_unnamed_triangular9_triangular_writeack,
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
    output wire [31:0] avm_lm122_triangular_address,
    output wire [0:0] avm_lm122_triangular_burstcount,
    output wire [3:0] avm_lm122_triangular_byteenable,
    output wire [0:0] avm_lm122_triangular_enable,
    output wire [0:0] avm_lm122_triangular_read,
    output wire [0:0] avm_lm122_triangular_write,
    output wire [31:0] avm_lm122_triangular_writedata,
    output wire [31:0] avm_lm143_triangular_address,
    output wire [0:0] avm_lm143_triangular_burstcount,
    output wire [3:0] avm_lm143_triangular_byteenable,
    output wire [0:0] avm_lm143_triangular_enable,
    output wire [0:0] avm_lm143_triangular_read,
    output wire [0:0] avm_lm143_triangular_write,
    output wire [31:0] avm_lm143_triangular_writedata,
    output wire [31:0] avm_lm1_triangular_address,
    output wire [0:0] avm_lm1_triangular_burstcount,
    output wire [3:0] avm_lm1_triangular_byteenable,
    output wire [0:0] avm_lm1_triangular_enable,
    output wire [0:0] avm_lm1_triangular_read,
    output wire [0:0] avm_lm1_triangular_write,
    output wire [31:0] avm_lm1_triangular_writedata,
    output wire [31:0] avm_memdep_4_triangular_address,
    output wire [0:0] avm_memdep_4_triangular_burstcount,
    output wire [3:0] avm_memdep_4_triangular_byteenable,
    output wire [0:0] avm_memdep_4_triangular_enable,
    output wire [0:0] avm_memdep_4_triangular_read,
    output wire [0:0] avm_memdep_4_triangular_write,
    output wire [31:0] avm_memdep_4_triangular_writedata,
    output wire [31:0] avm_memdep_5_triangular_address,
    output wire [0:0] avm_memdep_5_triangular_burstcount,
    output wire [3:0] avm_memdep_5_triangular_byteenable,
    output wire [0:0] avm_memdep_5_triangular_enable,
    output wire [0:0] avm_memdep_5_triangular_read,
    output wire [0:0] avm_memdep_5_triangular_write,
    output wire [31:0] avm_memdep_5_triangular_writedata,
    output wire [63:0] avm_memdep_8_triangular_address,
    output wire [0:0] avm_memdep_8_triangular_burstcount,
    output wire [7:0] avm_memdep_8_triangular_byteenable,
    output wire [0:0] avm_memdep_8_triangular_enable,
    output wire [0:0] avm_memdep_8_triangular_read,
    output wire [0:0] avm_memdep_8_triangular_write,
    output wire [63:0] avm_memdep_8_triangular_writedata,
    output wire [31:0] avm_memdep_triangular_address,
    output wire [0:0] avm_memdep_triangular_burstcount,
    output wire [3:0] avm_memdep_triangular_byteenable,
    output wire [0:0] avm_memdep_triangular_enable,
    output wire [0:0] avm_memdep_triangular_read,
    output wire [0:0] avm_memdep_triangular_write,
    output wire [31:0] avm_memdep_triangular_writedata,
    output wire [31:0] avm_unnamed_triangular17_triangular_address,
    output wire [0:0] avm_unnamed_triangular17_triangular_burstcount,
    output wire [3:0] avm_unnamed_triangular17_triangular_byteenable,
    output wire [0:0] avm_unnamed_triangular17_triangular_enable,
    output wire [0:0] avm_unnamed_triangular17_triangular_read,
    output wire [0:0] avm_unnamed_triangular17_triangular_write,
    output wire [31:0] avm_unnamed_triangular17_triangular_writedata,
    output wire [63:0] avm_unnamed_triangular8_triangular_address,
    output wire [0:0] avm_unnamed_triangular8_triangular_burstcount,
    output wire [7:0] avm_unnamed_triangular8_triangular_byteenable,
    output wire [0:0] avm_unnamed_triangular8_triangular_enable,
    output wire [0:0] avm_unnamed_triangular8_triangular_read,
    output wire [0:0] avm_unnamed_triangular8_triangular_write,
    output wire [63:0] avm_unnamed_triangular8_triangular_writedata,
    output wire [63:0] avm_unnamed_triangular9_triangular_address,
    output wire [0:0] avm_unnamed_triangular9_triangular_burstcount,
    output wire [7:0] avm_unnamed_triangular9_triangular_byteenable,
    output wire [0:0] avm_unnamed_triangular9_triangular_enable,
    output wire [0:0] avm_unnamed_triangular9_triangular_read,
    output wire [0:0] avm_unnamed_triangular9_triangular_write,
    output wire [63:0] avm_unnamed_triangular9_triangular_writedata,
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
    wire [31:0] triangular_function_out_lm122_triangular_avm_address;
    wire [0:0] triangular_function_out_lm122_triangular_avm_burstcount;
    wire [3:0] triangular_function_out_lm122_triangular_avm_byteenable;
    wire [0:0] triangular_function_out_lm122_triangular_avm_enable;
    wire [0:0] triangular_function_out_lm122_triangular_avm_read;
    wire [0:0] triangular_function_out_lm122_triangular_avm_write;
    wire [31:0] triangular_function_out_lm122_triangular_avm_writedata;
    wire [31:0] triangular_function_out_lm143_triangular_avm_address;
    wire [0:0] triangular_function_out_lm143_triangular_avm_burstcount;
    wire [3:0] triangular_function_out_lm143_triangular_avm_byteenable;
    wire [0:0] triangular_function_out_lm143_triangular_avm_enable;
    wire [0:0] triangular_function_out_lm143_triangular_avm_read;
    wire [0:0] triangular_function_out_lm143_triangular_avm_write;
    wire [31:0] triangular_function_out_lm143_triangular_avm_writedata;
    wire [31:0] triangular_function_out_lm1_triangular_avm_address;
    wire [0:0] triangular_function_out_lm1_triangular_avm_burstcount;
    wire [3:0] triangular_function_out_lm1_triangular_avm_byteenable;
    wire [0:0] triangular_function_out_lm1_triangular_avm_enable;
    wire [0:0] triangular_function_out_lm1_triangular_avm_read;
    wire [0:0] triangular_function_out_lm1_triangular_avm_write;
    wire [31:0] triangular_function_out_lm1_triangular_avm_writedata;
    wire [31:0] triangular_function_out_memdep_4_triangular_avm_address;
    wire [0:0] triangular_function_out_memdep_4_triangular_avm_burstcount;
    wire [3:0] triangular_function_out_memdep_4_triangular_avm_byteenable;
    wire [0:0] triangular_function_out_memdep_4_triangular_avm_enable;
    wire [0:0] triangular_function_out_memdep_4_triangular_avm_read;
    wire [0:0] triangular_function_out_memdep_4_triangular_avm_write;
    wire [31:0] triangular_function_out_memdep_4_triangular_avm_writedata;
    wire [31:0] triangular_function_out_memdep_5_triangular_avm_address;
    wire [0:0] triangular_function_out_memdep_5_triangular_avm_burstcount;
    wire [3:0] triangular_function_out_memdep_5_triangular_avm_byteenable;
    wire [0:0] triangular_function_out_memdep_5_triangular_avm_enable;
    wire [0:0] triangular_function_out_memdep_5_triangular_avm_read;
    wire [0:0] triangular_function_out_memdep_5_triangular_avm_write;
    wire [31:0] triangular_function_out_memdep_5_triangular_avm_writedata;
    wire [63:0] triangular_function_out_memdep_8_triangular_avm_address;
    wire [0:0] triangular_function_out_memdep_8_triangular_avm_burstcount;
    wire [7:0] triangular_function_out_memdep_8_triangular_avm_byteenable;
    wire [0:0] triangular_function_out_memdep_8_triangular_avm_enable;
    wire [0:0] triangular_function_out_memdep_8_triangular_avm_read;
    wire [0:0] triangular_function_out_memdep_8_triangular_avm_write;
    wire [63:0] triangular_function_out_memdep_8_triangular_avm_writedata;
    wire [31:0] triangular_function_out_memdep_triangular_avm_address;
    wire [0:0] triangular_function_out_memdep_triangular_avm_burstcount;
    wire [3:0] triangular_function_out_memdep_triangular_avm_byteenable;
    wire [0:0] triangular_function_out_memdep_triangular_avm_enable;
    wire [0:0] triangular_function_out_memdep_triangular_avm_read;
    wire [0:0] triangular_function_out_memdep_triangular_avm_write;
    wire [31:0] triangular_function_out_memdep_triangular_avm_writedata;
    wire [31:0] triangular_function_out_unnamed_triangular17_triangular_avm_address;
    wire [0:0] triangular_function_out_unnamed_triangular17_triangular_avm_burstcount;
    wire [3:0] triangular_function_out_unnamed_triangular17_triangular_avm_byteenable;
    wire [0:0] triangular_function_out_unnamed_triangular17_triangular_avm_enable;
    wire [0:0] triangular_function_out_unnamed_triangular17_triangular_avm_read;
    wire [0:0] triangular_function_out_unnamed_triangular17_triangular_avm_write;
    wire [31:0] triangular_function_out_unnamed_triangular17_triangular_avm_writedata;
    wire [63:0] triangular_function_out_unnamed_triangular8_triangular_avm_address;
    wire [0:0] triangular_function_out_unnamed_triangular8_triangular_avm_burstcount;
    wire [7:0] triangular_function_out_unnamed_triangular8_triangular_avm_byteenable;
    wire [0:0] triangular_function_out_unnamed_triangular8_triangular_avm_enable;
    wire [0:0] triangular_function_out_unnamed_triangular8_triangular_avm_read;
    wire [0:0] triangular_function_out_unnamed_triangular8_triangular_avm_write;
    wire [63:0] triangular_function_out_unnamed_triangular8_triangular_avm_writedata;
    wire [63:0] triangular_function_out_unnamed_triangular9_triangular_avm_address;
    wire [0:0] triangular_function_out_unnamed_triangular9_triangular_avm_burstcount;
    wire [7:0] triangular_function_out_unnamed_triangular9_triangular_avm_byteenable;
    wire [0:0] triangular_function_out_unnamed_triangular9_triangular_avm_enable;
    wire [0:0] triangular_function_out_unnamed_triangular9_triangular_avm_read;
    wire [0:0] triangular_function_out_unnamed_triangular9_triangular_avm_write;
    wire [63:0] triangular_function_out_unnamed_triangular9_triangular_avm_writedata;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,62)
    assign not_stall_q = ~ (stall);

    // implicit_input_pad_const_end(CONSTANT,9)
    assign implicit_input_pad_const_end_q = $unsigned(32'b00000000000000000000000000000000);

    // implicit_input(BITJOIN,8)
    assign implicit_input_q = {implicit_input_pad_const_end_q, n, A, x};

    // A_const(CONSTANT,2)
    assign A_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // triangular_function(BLACKBOX,142)
    triangular_function thetriangular_function (
        .in_arg_A(A_const_q),
        .in_arg_call(A_const_q),
        .in_arg_return(A_const_q),
        .in_arg_x(A_const_q),
        .in_iord_bl_call_triangular_i_fifodata(implicit_input_q),
        .in_iord_bl_call_triangular_i_fifovalid(start),
        .in_iowr_bl_return_triangular_i_fifoready(not_stall_q),
        .in_lm122_triangular_avm_readdata(avm_lm122_triangular_readdata),
        .in_lm122_triangular_avm_readdatavalid(avm_lm122_triangular_readdatavalid),
        .in_lm122_triangular_avm_waitrequest(avm_lm122_triangular_waitrequest),
        .in_lm122_triangular_avm_writeack(avm_lm122_triangular_writeack),
        .in_lm143_triangular_avm_readdata(avm_lm143_triangular_readdata),
        .in_lm143_triangular_avm_readdatavalid(avm_lm143_triangular_readdatavalid),
        .in_lm143_triangular_avm_waitrequest(avm_lm143_triangular_waitrequest),
        .in_lm143_triangular_avm_writeack(avm_lm143_triangular_writeack),
        .in_lm1_triangular_avm_readdata(avm_lm1_triangular_readdata),
        .in_lm1_triangular_avm_readdatavalid(avm_lm1_triangular_readdatavalid),
        .in_lm1_triangular_avm_waitrequest(avm_lm1_triangular_waitrequest),
        .in_lm1_triangular_avm_writeack(avm_lm1_triangular_writeack),
        .in_memdep_4_triangular_avm_readdata(avm_memdep_4_triangular_readdata),
        .in_memdep_4_triangular_avm_readdatavalid(avm_memdep_4_triangular_readdatavalid),
        .in_memdep_4_triangular_avm_waitrequest(avm_memdep_4_triangular_waitrequest),
        .in_memdep_4_triangular_avm_writeack(avm_memdep_4_triangular_writeack),
        .in_memdep_5_triangular_avm_readdata(avm_memdep_5_triangular_readdata),
        .in_memdep_5_triangular_avm_readdatavalid(avm_memdep_5_triangular_readdatavalid),
        .in_memdep_5_triangular_avm_waitrequest(avm_memdep_5_triangular_waitrequest),
        .in_memdep_5_triangular_avm_writeack(avm_memdep_5_triangular_writeack),
        .in_memdep_8_triangular_avm_readdata(avm_memdep_8_triangular_readdata),
        .in_memdep_8_triangular_avm_readdatavalid(avm_memdep_8_triangular_readdatavalid),
        .in_memdep_8_triangular_avm_waitrequest(avm_memdep_8_triangular_waitrequest),
        .in_memdep_8_triangular_avm_writeack(avm_memdep_8_triangular_writeack),
        .in_memdep_triangular_avm_readdata(avm_memdep_triangular_readdata),
        .in_memdep_triangular_avm_readdatavalid(avm_memdep_triangular_readdatavalid),
        .in_memdep_triangular_avm_waitrequest(avm_memdep_triangular_waitrequest),
        .in_memdep_triangular_avm_writeack(avm_memdep_triangular_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_unnamed_triangular17_triangular_avm_readdata(avm_unnamed_triangular17_triangular_readdata),
        .in_unnamed_triangular17_triangular_avm_readdatavalid(avm_unnamed_triangular17_triangular_readdatavalid),
        .in_unnamed_triangular17_triangular_avm_waitrequest(avm_unnamed_triangular17_triangular_waitrequest),
        .in_unnamed_triangular17_triangular_avm_writeack(avm_unnamed_triangular17_triangular_writeack),
        .in_unnamed_triangular8_triangular_avm_readdata(avm_unnamed_triangular8_triangular_readdata),
        .in_unnamed_triangular8_triangular_avm_readdatavalid(avm_unnamed_triangular8_triangular_readdatavalid),
        .in_unnamed_triangular8_triangular_avm_waitrequest(avm_unnamed_triangular8_triangular_waitrequest),
        .in_unnamed_triangular8_triangular_avm_writeack(avm_unnamed_triangular8_triangular_writeack),
        .in_unnamed_triangular9_triangular_avm_readdata(avm_unnamed_triangular9_triangular_readdata),
        .in_unnamed_triangular9_triangular_avm_readdatavalid(avm_unnamed_triangular9_triangular_readdatavalid),
        .in_unnamed_triangular9_triangular_avm_waitrequest(avm_unnamed_triangular9_triangular_waitrequest),
        .in_unnamed_triangular9_triangular_avm_writeack(avm_unnamed_triangular9_triangular_writeack),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_triangular_o_fifoalmost_full(triangular_function_out_iord_bl_call_triangular_o_fifoalmost_full),
        .out_iord_bl_call_triangular_o_fifoready(triangular_function_out_iord_bl_call_triangular_o_fifoready),
        .out_iowr_bl_return_triangular_o_fifodata(triangular_function_out_iowr_bl_return_triangular_o_fifodata),
        .out_iowr_bl_return_triangular_o_fifovalid(triangular_function_out_iowr_bl_return_triangular_o_fifovalid),
        .out_lm122_triangular_avm_address(triangular_function_out_lm122_triangular_avm_address),
        .out_lm122_triangular_avm_burstcount(triangular_function_out_lm122_triangular_avm_burstcount),
        .out_lm122_triangular_avm_byteenable(triangular_function_out_lm122_triangular_avm_byteenable),
        .out_lm122_triangular_avm_enable(triangular_function_out_lm122_triangular_avm_enable),
        .out_lm122_triangular_avm_read(triangular_function_out_lm122_triangular_avm_read),
        .out_lm122_triangular_avm_write(triangular_function_out_lm122_triangular_avm_write),
        .out_lm122_triangular_avm_writedata(triangular_function_out_lm122_triangular_avm_writedata),
        .out_lm143_triangular_avm_address(triangular_function_out_lm143_triangular_avm_address),
        .out_lm143_triangular_avm_burstcount(triangular_function_out_lm143_triangular_avm_burstcount),
        .out_lm143_triangular_avm_byteenable(triangular_function_out_lm143_triangular_avm_byteenable),
        .out_lm143_triangular_avm_enable(triangular_function_out_lm143_triangular_avm_enable),
        .out_lm143_triangular_avm_read(triangular_function_out_lm143_triangular_avm_read),
        .out_lm143_triangular_avm_write(triangular_function_out_lm143_triangular_avm_write),
        .out_lm143_triangular_avm_writedata(triangular_function_out_lm143_triangular_avm_writedata),
        .out_lm1_triangular_avm_address(triangular_function_out_lm1_triangular_avm_address),
        .out_lm1_triangular_avm_burstcount(triangular_function_out_lm1_triangular_avm_burstcount),
        .out_lm1_triangular_avm_byteenable(triangular_function_out_lm1_triangular_avm_byteenable),
        .out_lm1_triangular_avm_enable(triangular_function_out_lm1_triangular_avm_enable),
        .out_lm1_triangular_avm_read(triangular_function_out_lm1_triangular_avm_read),
        .out_lm1_triangular_avm_write(triangular_function_out_lm1_triangular_avm_write),
        .out_lm1_triangular_avm_writedata(triangular_function_out_lm1_triangular_avm_writedata),
        .out_memdep_4_triangular_avm_address(triangular_function_out_memdep_4_triangular_avm_address),
        .out_memdep_4_triangular_avm_burstcount(triangular_function_out_memdep_4_triangular_avm_burstcount),
        .out_memdep_4_triangular_avm_byteenable(triangular_function_out_memdep_4_triangular_avm_byteenable),
        .out_memdep_4_triangular_avm_enable(triangular_function_out_memdep_4_triangular_avm_enable),
        .out_memdep_4_triangular_avm_read(triangular_function_out_memdep_4_triangular_avm_read),
        .out_memdep_4_triangular_avm_write(triangular_function_out_memdep_4_triangular_avm_write),
        .out_memdep_4_triangular_avm_writedata(triangular_function_out_memdep_4_triangular_avm_writedata),
        .out_memdep_5_triangular_avm_address(triangular_function_out_memdep_5_triangular_avm_address),
        .out_memdep_5_triangular_avm_burstcount(triangular_function_out_memdep_5_triangular_avm_burstcount),
        .out_memdep_5_triangular_avm_byteenable(triangular_function_out_memdep_5_triangular_avm_byteenable),
        .out_memdep_5_triangular_avm_enable(triangular_function_out_memdep_5_triangular_avm_enable),
        .out_memdep_5_triangular_avm_read(triangular_function_out_memdep_5_triangular_avm_read),
        .out_memdep_5_triangular_avm_write(triangular_function_out_memdep_5_triangular_avm_write),
        .out_memdep_5_triangular_avm_writedata(triangular_function_out_memdep_5_triangular_avm_writedata),
        .out_memdep_8_triangular_avm_address(triangular_function_out_memdep_8_triangular_avm_address),
        .out_memdep_8_triangular_avm_burstcount(triangular_function_out_memdep_8_triangular_avm_burstcount),
        .out_memdep_8_triangular_avm_byteenable(triangular_function_out_memdep_8_triangular_avm_byteenable),
        .out_memdep_8_triangular_avm_enable(triangular_function_out_memdep_8_triangular_avm_enable),
        .out_memdep_8_triangular_avm_read(triangular_function_out_memdep_8_triangular_avm_read),
        .out_memdep_8_triangular_avm_write(triangular_function_out_memdep_8_triangular_avm_write),
        .out_memdep_8_triangular_avm_writedata(triangular_function_out_memdep_8_triangular_avm_writedata),
        .out_memdep_triangular_avm_address(triangular_function_out_memdep_triangular_avm_address),
        .out_memdep_triangular_avm_burstcount(triangular_function_out_memdep_triangular_avm_burstcount),
        .out_memdep_triangular_avm_byteenable(triangular_function_out_memdep_triangular_avm_byteenable),
        .out_memdep_triangular_avm_enable(triangular_function_out_memdep_triangular_avm_enable),
        .out_memdep_triangular_avm_read(triangular_function_out_memdep_triangular_avm_read),
        .out_memdep_triangular_avm_write(triangular_function_out_memdep_triangular_avm_write),
        .out_memdep_triangular_avm_writedata(triangular_function_out_memdep_triangular_avm_writedata),
        .out_o_active_memdep_8(),
        .out_stall_out(),
        .out_unnamed_triangular17_triangular_avm_address(triangular_function_out_unnamed_triangular17_triangular_avm_address),
        .out_unnamed_triangular17_triangular_avm_burstcount(triangular_function_out_unnamed_triangular17_triangular_avm_burstcount),
        .out_unnamed_triangular17_triangular_avm_byteenable(triangular_function_out_unnamed_triangular17_triangular_avm_byteenable),
        .out_unnamed_triangular17_triangular_avm_enable(triangular_function_out_unnamed_triangular17_triangular_avm_enable),
        .out_unnamed_triangular17_triangular_avm_read(triangular_function_out_unnamed_triangular17_triangular_avm_read),
        .out_unnamed_triangular17_triangular_avm_write(triangular_function_out_unnamed_triangular17_triangular_avm_write),
        .out_unnamed_triangular17_triangular_avm_writedata(triangular_function_out_unnamed_triangular17_triangular_avm_writedata),
        .out_unnamed_triangular8_triangular_avm_address(triangular_function_out_unnamed_triangular8_triangular_avm_address),
        .out_unnamed_triangular8_triangular_avm_burstcount(triangular_function_out_unnamed_triangular8_triangular_avm_burstcount),
        .out_unnamed_triangular8_triangular_avm_byteenable(triangular_function_out_unnamed_triangular8_triangular_avm_byteenable),
        .out_unnamed_triangular8_triangular_avm_enable(triangular_function_out_unnamed_triangular8_triangular_avm_enable),
        .out_unnamed_triangular8_triangular_avm_read(triangular_function_out_unnamed_triangular8_triangular_avm_read),
        .out_unnamed_triangular8_triangular_avm_write(triangular_function_out_unnamed_triangular8_triangular_avm_write),
        .out_unnamed_triangular8_triangular_avm_writedata(triangular_function_out_unnamed_triangular8_triangular_avm_writedata),
        .out_unnamed_triangular9_triangular_avm_address(triangular_function_out_unnamed_triangular9_triangular_avm_address),
        .out_unnamed_triangular9_triangular_avm_burstcount(triangular_function_out_unnamed_triangular9_triangular_avm_burstcount),
        .out_unnamed_triangular9_triangular_avm_byteenable(triangular_function_out_unnamed_triangular9_triangular_avm_byteenable),
        .out_unnamed_triangular9_triangular_avm_enable(triangular_function_out_unnamed_triangular9_triangular_avm_enable),
        .out_unnamed_triangular9_triangular_avm_read(triangular_function_out_unnamed_triangular9_triangular_avm_read),
        .out_unnamed_triangular9_triangular_avm_write(triangular_function_out_unnamed_triangular9_triangular_avm_write),
        .out_unnamed_triangular9_triangular_avm_writedata(triangular_function_out_unnamed_triangular9_triangular_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_lm122_triangular_address(GPOUT,63)
    assign avm_lm122_triangular_address = triangular_function_out_lm122_triangular_avm_address;

    // avm_lm122_triangular_burstcount(GPOUT,64)
    assign avm_lm122_triangular_burstcount = triangular_function_out_lm122_triangular_avm_burstcount;

    // avm_lm122_triangular_byteenable(GPOUT,65)
    assign avm_lm122_triangular_byteenable = triangular_function_out_lm122_triangular_avm_byteenable;

    // avm_lm122_triangular_enable(GPOUT,66)
    assign avm_lm122_triangular_enable = triangular_function_out_lm122_triangular_avm_enable;

    // avm_lm122_triangular_read(GPOUT,67)
    assign avm_lm122_triangular_read = triangular_function_out_lm122_triangular_avm_read;

    // avm_lm122_triangular_write(GPOUT,68)
    assign avm_lm122_triangular_write = triangular_function_out_lm122_triangular_avm_write;

    // avm_lm122_triangular_writedata(GPOUT,69)
    assign avm_lm122_triangular_writedata = triangular_function_out_lm122_triangular_avm_writedata;

    // avm_lm143_triangular_address(GPOUT,70)
    assign avm_lm143_triangular_address = triangular_function_out_lm143_triangular_avm_address;

    // avm_lm143_triangular_burstcount(GPOUT,71)
    assign avm_lm143_triangular_burstcount = triangular_function_out_lm143_triangular_avm_burstcount;

    // avm_lm143_triangular_byteenable(GPOUT,72)
    assign avm_lm143_triangular_byteenable = triangular_function_out_lm143_triangular_avm_byteenable;

    // avm_lm143_triangular_enable(GPOUT,73)
    assign avm_lm143_triangular_enable = triangular_function_out_lm143_triangular_avm_enable;

    // avm_lm143_triangular_read(GPOUT,74)
    assign avm_lm143_triangular_read = triangular_function_out_lm143_triangular_avm_read;

    // avm_lm143_triangular_write(GPOUT,75)
    assign avm_lm143_triangular_write = triangular_function_out_lm143_triangular_avm_write;

    // avm_lm143_triangular_writedata(GPOUT,76)
    assign avm_lm143_triangular_writedata = triangular_function_out_lm143_triangular_avm_writedata;

    // avm_lm1_triangular_address(GPOUT,77)
    assign avm_lm1_triangular_address = triangular_function_out_lm1_triangular_avm_address;

    // avm_lm1_triangular_burstcount(GPOUT,78)
    assign avm_lm1_triangular_burstcount = triangular_function_out_lm1_triangular_avm_burstcount;

    // avm_lm1_triangular_byteenable(GPOUT,79)
    assign avm_lm1_triangular_byteenable = triangular_function_out_lm1_triangular_avm_byteenable;

    // avm_lm1_triangular_enable(GPOUT,80)
    assign avm_lm1_triangular_enable = triangular_function_out_lm1_triangular_avm_enable;

    // avm_lm1_triangular_read(GPOUT,81)
    assign avm_lm1_triangular_read = triangular_function_out_lm1_triangular_avm_read;

    // avm_lm1_triangular_write(GPOUT,82)
    assign avm_lm1_triangular_write = triangular_function_out_lm1_triangular_avm_write;

    // avm_lm1_triangular_writedata(GPOUT,83)
    assign avm_lm1_triangular_writedata = triangular_function_out_lm1_triangular_avm_writedata;

    // avm_memdep_4_triangular_address(GPOUT,84)
    assign avm_memdep_4_triangular_address = triangular_function_out_memdep_4_triangular_avm_address;

    // avm_memdep_4_triangular_burstcount(GPOUT,85)
    assign avm_memdep_4_triangular_burstcount = triangular_function_out_memdep_4_triangular_avm_burstcount;

    // avm_memdep_4_triangular_byteenable(GPOUT,86)
    assign avm_memdep_4_triangular_byteenable = triangular_function_out_memdep_4_triangular_avm_byteenable;

    // avm_memdep_4_triangular_enable(GPOUT,87)
    assign avm_memdep_4_triangular_enable = triangular_function_out_memdep_4_triangular_avm_enable;

    // avm_memdep_4_triangular_read(GPOUT,88)
    assign avm_memdep_4_triangular_read = triangular_function_out_memdep_4_triangular_avm_read;

    // avm_memdep_4_triangular_write(GPOUT,89)
    assign avm_memdep_4_triangular_write = triangular_function_out_memdep_4_triangular_avm_write;

    // avm_memdep_4_triangular_writedata(GPOUT,90)
    assign avm_memdep_4_triangular_writedata = triangular_function_out_memdep_4_triangular_avm_writedata;

    // avm_memdep_5_triangular_address(GPOUT,91)
    assign avm_memdep_5_triangular_address = triangular_function_out_memdep_5_triangular_avm_address;

    // avm_memdep_5_triangular_burstcount(GPOUT,92)
    assign avm_memdep_5_triangular_burstcount = triangular_function_out_memdep_5_triangular_avm_burstcount;

    // avm_memdep_5_triangular_byteenable(GPOUT,93)
    assign avm_memdep_5_triangular_byteenable = triangular_function_out_memdep_5_triangular_avm_byteenable;

    // avm_memdep_5_triangular_enable(GPOUT,94)
    assign avm_memdep_5_triangular_enable = triangular_function_out_memdep_5_triangular_avm_enable;

    // avm_memdep_5_triangular_read(GPOUT,95)
    assign avm_memdep_5_triangular_read = triangular_function_out_memdep_5_triangular_avm_read;

    // avm_memdep_5_triangular_write(GPOUT,96)
    assign avm_memdep_5_triangular_write = triangular_function_out_memdep_5_triangular_avm_write;

    // avm_memdep_5_triangular_writedata(GPOUT,97)
    assign avm_memdep_5_triangular_writedata = triangular_function_out_memdep_5_triangular_avm_writedata;

    // avm_memdep_8_triangular_address(GPOUT,98)
    assign avm_memdep_8_triangular_address = triangular_function_out_memdep_8_triangular_avm_address;

    // avm_memdep_8_triangular_burstcount(GPOUT,99)
    assign avm_memdep_8_triangular_burstcount = triangular_function_out_memdep_8_triangular_avm_burstcount;

    // avm_memdep_8_triangular_byteenable(GPOUT,100)
    assign avm_memdep_8_triangular_byteenable = triangular_function_out_memdep_8_triangular_avm_byteenable;

    // avm_memdep_8_triangular_enable(GPOUT,101)
    assign avm_memdep_8_triangular_enable = triangular_function_out_memdep_8_triangular_avm_enable;

    // avm_memdep_8_triangular_read(GPOUT,102)
    assign avm_memdep_8_triangular_read = triangular_function_out_memdep_8_triangular_avm_read;

    // avm_memdep_8_triangular_write(GPOUT,103)
    assign avm_memdep_8_triangular_write = triangular_function_out_memdep_8_triangular_avm_write;

    // avm_memdep_8_triangular_writedata(GPOUT,104)
    assign avm_memdep_8_triangular_writedata = triangular_function_out_memdep_8_triangular_avm_writedata;

    // avm_memdep_triangular_address(GPOUT,105)
    assign avm_memdep_triangular_address = triangular_function_out_memdep_triangular_avm_address;

    // avm_memdep_triangular_burstcount(GPOUT,106)
    assign avm_memdep_triangular_burstcount = triangular_function_out_memdep_triangular_avm_burstcount;

    // avm_memdep_triangular_byteenable(GPOUT,107)
    assign avm_memdep_triangular_byteenable = triangular_function_out_memdep_triangular_avm_byteenable;

    // avm_memdep_triangular_enable(GPOUT,108)
    assign avm_memdep_triangular_enable = triangular_function_out_memdep_triangular_avm_enable;

    // avm_memdep_triangular_read(GPOUT,109)
    assign avm_memdep_triangular_read = triangular_function_out_memdep_triangular_avm_read;

    // avm_memdep_triangular_write(GPOUT,110)
    assign avm_memdep_triangular_write = triangular_function_out_memdep_triangular_avm_write;

    // avm_memdep_triangular_writedata(GPOUT,111)
    assign avm_memdep_triangular_writedata = triangular_function_out_memdep_triangular_avm_writedata;

    // avm_unnamed_triangular17_triangular_address(GPOUT,112)
    assign avm_unnamed_triangular17_triangular_address = triangular_function_out_unnamed_triangular17_triangular_avm_address;

    // avm_unnamed_triangular17_triangular_burstcount(GPOUT,113)
    assign avm_unnamed_triangular17_triangular_burstcount = triangular_function_out_unnamed_triangular17_triangular_avm_burstcount;

    // avm_unnamed_triangular17_triangular_byteenable(GPOUT,114)
    assign avm_unnamed_triangular17_triangular_byteenable = triangular_function_out_unnamed_triangular17_triangular_avm_byteenable;

    // avm_unnamed_triangular17_triangular_enable(GPOUT,115)
    assign avm_unnamed_triangular17_triangular_enable = triangular_function_out_unnamed_triangular17_triangular_avm_enable;

    // avm_unnamed_triangular17_triangular_read(GPOUT,116)
    assign avm_unnamed_triangular17_triangular_read = triangular_function_out_unnamed_triangular17_triangular_avm_read;

    // avm_unnamed_triangular17_triangular_write(GPOUT,117)
    assign avm_unnamed_triangular17_triangular_write = triangular_function_out_unnamed_triangular17_triangular_avm_write;

    // avm_unnamed_triangular17_triangular_writedata(GPOUT,118)
    assign avm_unnamed_triangular17_triangular_writedata = triangular_function_out_unnamed_triangular17_triangular_avm_writedata;

    // avm_unnamed_triangular8_triangular_address(GPOUT,119)
    assign avm_unnamed_triangular8_triangular_address = triangular_function_out_unnamed_triangular8_triangular_avm_address;

    // avm_unnamed_triangular8_triangular_burstcount(GPOUT,120)
    assign avm_unnamed_triangular8_triangular_burstcount = triangular_function_out_unnamed_triangular8_triangular_avm_burstcount;

    // avm_unnamed_triangular8_triangular_byteenable(GPOUT,121)
    assign avm_unnamed_triangular8_triangular_byteenable = triangular_function_out_unnamed_triangular8_triangular_avm_byteenable;

    // avm_unnamed_triangular8_triangular_enable(GPOUT,122)
    assign avm_unnamed_triangular8_triangular_enable = triangular_function_out_unnamed_triangular8_triangular_avm_enable;

    // avm_unnamed_triangular8_triangular_read(GPOUT,123)
    assign avm_unnamed_triangular8_triangular_read = triangular_function_out_unnamed_triangular8_triangular_avm_read;

    // avm_unnamed_triangular8_triangular_write(GPOUT,124)
    assign avm_unnamed_triangular8_triangular_write = triangular_function_out_unnamed_triangular8_triangular_avm_write;

    // avm_unnamed_triangular8_triangular_writedata(GPOUT,125)
    assign avm_unnamed_triangular8_triangular_writedata = triangular_function_out_unnamed_triangular8_triangular_avm_writedata;

    // avm_unnamed_triangular9_triangular_address(GPOUT,126)
    assign avm_unnamed_triangular9_triangular_address = triangular_function_out_unnamed_triangular9_triangular_avm_address;

    // avm_unnamed_triangular9_triangular_burstcount(GPOUT,127)
    assign avm_unnamed_triangular9_triangular_burstcount = triangular_function_out_unnamed_triangular9_triangular_avm_burstcount;

    // avm_unnamed_triangular9_triangular_byteenable(GPOUT,128)
    assign avm_unnamed_triangular9_triangular_byteenable = triangular_function_out_unnamed_triangular9_triangular_avm_byteenable;

    // avm_unnamed_triangular9_triangular_enable(GPOUT,129)
    assign avm_unnamed_triangular9_triangular_enable = triangular_function_out_unnamed_triangular9_triangular_avm_enable;

    // avm_unnamed_triangular9_triangular_read(GPOUT,130)
    assign avm_unnamed_triangular9_triangular_read = triangular_function_out_unnamed_triangular9_triangular_avm_read;

    // avm_unnamed_triangular9_triangular_write(GPOUT,131)
    assign avm_unnamed_triangular9_triangular_write = triangular_function_out_unnamed_triangular9_triangular_avm_write;

    // avm_unnamed_triangular9_triangular_writedata(GPOUT,132)
    assign avm_unnamed_triangular9_triangular_writedata = triangular_function_out_unnamed_triangular9_triangular_avm_writedata;

    // avst_iord_bl_call_triangular_almost_full(GPOUT,133)
    assign avst_iord_bl_call_triangular_almost_full = triangular_function_out_iord_bl_call_triangular_o_fifoalmost_full;

    // avst_iord_bl_call_triangular_ready(GPOUT,134)
    assign avst_iord_bl_call_triangular_ready = triangular_function_out_iord_bl_call_triangular_o_fifoready;

    // avst_iowr_bl_return_triangular_data(GPOUT,135)
    assign avst_iowr_bl_return_triangular_data = triangular_function_out_iowr_bl_return_triangular_o_fifodata;

    // avst_iowr_bl_return_triangular_valid(GPOUT,136)
    assign avst_iowr_bl_return_triangular_valid = triangular_function_out_iowr_bl_return_triangular_o_fifovalid;

    // not_ready(LOGICAL,61)
    assign not_ready_q = ~ (triangular_function_out_iord_bl_call_triangular_o_fifoready);

    // busy_and(LOGICAL,3)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,140)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,139)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,4)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,137)
    assign busy = busy_or_q;

    // done(GPOUT,138)
    assign done = triangular_function_out_iowr_bl_return_triangular_o_fifovalid;

endmodule
