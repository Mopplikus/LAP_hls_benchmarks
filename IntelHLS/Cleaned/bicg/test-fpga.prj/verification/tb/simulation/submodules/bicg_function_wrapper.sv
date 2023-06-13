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

// SystemVerilog created from bicg_function_wrapper
// Created for function/kernel bicg
// SystemVerilog created on Tue Jun 13 02:00:08 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module bicg_function_wrapper (
    input wire [63:0] A,
    input wire [31:0] avm_memdep_6_bicg_readdata,
    input wire [0:0] avm_memdep_6_bicg_readdatavalid,
    input wire [0:0] avm_memdep_6_bicg_waitrequest,
    input wire [0:0] avm_memdep_6_bicg_writeack,
    input wire [31:0] avm_memdep_bicg_readdata,
    input wire [0:0] avm_memdep_bicg_readdatavalid,
    input wire [0:0] avm_memdep_bicg_waitrequest,
    input wire [0:0] avm_memdep_bicg_writeack,
    input wire [31:0] avm_unnamed_bicg12_bicg_readdata,
    input wire [0:0] avm_unnamed_bicg12_bicg_readdatavalid,
    input wire [0:0] avm_unnamed_bicg12_bicg_waitrequest,
    input wire [0:0] avm_unnamed_bicg12_bicg_writeack,
    input wire [31:0] avm_unnamed_bicg14_bicg_readdata,
    input wire [0:0] avm_unnamed_bicg14_bicg_readdatavalid,
    input wire [0:0] avm_unnamed_bicg14_bicg_waitrequest,
    input wire [0:0] avm_unnamed_bicg14_bicg_writeack,
    input wire [31:0] avm_unnamed_bicg15_bicg_readdata,
    input wire [0:0] avm_unnamed_bicg15_bicg_readdatavalid,
    input wire [0:0] avm_unnamed_bicg15_bicg_waitrequest,
    input wire [0:0] avm_unnamed_bicg15_bicg_writeack,
    input wire [31:0] avm_unnamed_bicg16_bicg_readdata,
    input wire [0:0] avm_unnamed_bicg16_bicg_readdatavalid,
    input wire [0:0] avm_unnamed_bicg16_bicg_waitrequest,
    input wire [0:0] avm_unnamed_bicg16_bicg_writeack,
    input wire [31:0] avm_unnamed_bicg8_bicg_readdata,
    input wire [0:0] avm_unnamed_bicg8_bicg_readdatavalid,
    input wire [0:0] avm_unnamed_bicg8_bicg_waitrequest,
    input wire [0:0] avm_unnamed_bicg8_bicg_writeack,
    input wire [319:0] avst_iord_bl_call_bicg_data,
    input wire [0:0] avst_iord_bl_call_bicg_valid,
    input wire [0:0] avst_iowr_bl_return_bicg_almostfull,
    input wire [0:0] avst_iowr_bl_return_bicg_ready,
    input wire [63:0] p,
    input wire [63:0] q,
    input wire [63:0] r,
    input wire [63:0] s,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [31:0] avm_memdep_6_bicg_address,
    output wire [0:0] avm_memdep_6_bicg_burstcount,
    output wire [3:0] avm_memdep_6_bicg_byteenable,
    output wire [0:0] avm_memdep_6_bicg_enable,
    output wire [0:0] avm_memdep_6_bicg_read,
    output wire [0:0] avm_memdep_6_bicg_write,
    output wire [31:0] avm_memdep_6_bicg_writedata,
    output wire [31:0] avm_memdep_bicg_address,
    output wire [0:0] avm_memdep_bicg_burstcount,
    output wire [3:0] avm_memdep_bicg_byteenable,
    output wire [0:0] avm_memdep_bicg_enable,
    output wire [0:0] avm_memdep_bicg_read,
    output wire [0:0] avm_memdep_bicg_write,
    output wire [31:0] avm_memdep_bicg_writedata,
    output wire [31:0] avm_unnamed_bicg12_bicg_address,
    output wire [0:0] avm_unnamed_bicg12_bicg_burstcount,
    output wire [3:0] avm_unnamed_bicg12_bicg_byteenable,
    output wire [0:0] avm_unnamed_bicg12_bicg_enable,
    output wire [0:0] avm_unnamed_bicg12_bicg_read,
    output wire [0:0] avm_unnamed_bicg12_bicg_write,
    output wire [31:0] avm_unnamed_bicg12_bicg_writedata,
    output wire [31:0] avm_unnamed_bicg14_bicg_address,
    output wire [0:0] avm_unnamed_bicg14_bicg_burstcount,
    output wire [3:0] avm_unnamed_bicg14_bicg_byteenable,
    output wire [0:0] avm_unnamed_bicg14_bicg_enable,
    output wire [0:0] avm_unnamed_bicg14_bicg_read,
    output wire [0:0] avm_unnamed_bicg14_bicg_write,
    output wire [31:0] avm_unnamed_bicg14_bicg_writedata,
    output wire [31:0] avm_unnamed_bicg15_bicg_address,
    output wire [0:0] avm_unnamed_bicg15_bicg_burstcount,
    output wire [3:0] avm_unnamed_bicg15_bicg_byteenable,
    output wire [0:0] avm_unnamed_bicg15_bicg_enable,
    output wire [0:0] avm_unnamed_bicg15_bicg_read,
    output wire [0:0] avm_unnamed_bicg15_bicg_write,
    output wire [31:0] avm_unnamed_bicg15_bicg_writedata,
    output wire [31:0] avm_unnamed_bicg16_bicg_address,
    output wire [0:0] avm_unnamed_bicg16_bicg_burstcount,
    output wire [3:0] avm_unnamed_bicg16_bicg_byteenable,
    output wire [0:0] avm_unnamed_bicg16_bicg_enable,
    output wire [0:0] avm_unnamed_bicg16_bicg_read,
    output wire [0:0] avm_unnamed_bicg16_bicg_write,
    output wire [31:0] avm_unnamed_bicg16_bicg_writedata,
    output wire [31:0] avm_unnamed_bicg8_bicg_address,
    output wire [0:0] avm_unnamed_bicg8_bicg_burstcount,
    output wire [3:0] avm_unnamed_bicg8_bicg_byteenable,
    output wire [0:0] avm_unnamed_bicg8_bicg_enable,
    output wire [0:0] avm_unnamed_bicg8_bicg_read,
    output wire [0:0] avm_unnamed_bicg8_bicg_write,
    output wire [31:0] avm_unnamed_bicg8_bicg_writedata,
    output wire [0:0] avst_iord_bl_call_bicg_almost_full,
    output wire [0:0] avst_iord_bl_call_bicg_ready,
    output wire [0:0] avst_iowr_bl_return_bicg_data,
    output wire [0:0] avst_iowr_bl_return_bicg_valid,
    output wire [0:0] busy,
    output wire [0:0] done,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] A_const_q;
    wire [0:0] bicg_function_out_iord_bl_call_bicg_o_fifoalmost_full;
    wire [0:0] bicg_function_out_iord_bl_call_bicg_o_fifoready;
    wire [0:0] bicg_function_out_iowr_bl_return_bicg_o_fifodata;
    wire [0:0] bicg_function_out_iowr_bl_return_bicg_o_fifovalid;
    wire [31:0] bicg_function_out_memdep_6_bicg_avm_address;
    wire [0:0] bicg_function_out_memdep_6_bicg_avm_burstcount;
    wire [3:0] bicg_function_out_memdep_6_bicg_avm_byteenable;
    wire [0:0] bicg_function_out_memdep_6_bicg_avm_enable;
    wire [0:0] bicg_function_out_memdep_6_bicg_avm_read;
    wire [0:0] bicg_function_out_memdep_6_bicg_avm_write;
    wire [31:0] bicg_function_out_memdep_6_bicg_avm_writedata;
    wire [31:0] bicg_function_out_memdep_bicg_avm_address;
    wire [0:0] bicg_function_out_memdep_bicg_avm_burstcount;
    wire [3:0] bicg_function_out_memdep_bicg_avm_byteenable;
    wire [0:0] bicg_function_out_memdep_bicg_avm_enable;
    wire [0:0] bicg_function_out_memdep_bicg_avm_read;
    wire [0:0] bicg_function_out_memdep_bicg_avm_write;
    wire [31:0] bicg_function_out_memdep_bicg_avm_writedata;
    wire [31:0] bicg_function_out_unnamed_bicg12_bicg_avm_address;
    wire [0:0] bicg_function_out_unnamed_bicg12_bicg_avm_burstcount;
    wire [3:0] bicg_function_out_unnamed_bicg12_bicg_avm_byteenable;
    wire [0:0] bicg_function_out_unnamed_bicg12_bicg_avm_enable;
    wire [0:0] bicg_function_out_unnamed_bicg12_bicg_avm_read;
    wire [0:0] bicg_function_out_unnamed_bicg12_bicg_avm_write;
    wire [31:0] bicg_function_out_unnamed_bicg12_bicg_avm_writedata;
    wire [31:0] bicg_function_out_unnamed_bicg14_bicg_avm_address;
    wire [0:0] bicg_function_out_unnamed_bicg14_bicg_avm_burstcount;
    wire [3:0] bicg_function_out_unnamed_bicg14_bicg_avm_byteenable;
    wire [0:0] bicg_function_out_unnamed_bicg14_bicg_avm_enable;
    wire [0:0] bicg_function_out_unnamed_bicg14_bicg_avm_read;
    wire [0:0] bicg_function_out_unnamed_bicg14_bicg_avm_write;
    wire [31:0] bicg_function_out_unnamed_bicg14_bicg_avm_writedata;
    wire [31:0] bicg_function_out_unnamed_bicg15_bicg_avm_address;
    wire [0:0] bicg_function_out_unnamed_bicg15_bicg_avm_burstcount;
    wire [3:0] bicg_function_out_unnamed_bicg15_bicg_avm_byteenable;
    wire [0:0] bicg_function_out_unnamed_bicg15_bicg_avm_enable;
    wire [0:0] bicg_function_out_unnamed_bicg15_bicg_avm_read;
    wire [0:0] bicg_function_out_unnamed_bicg15_bicg_avm_write;
    wire [31:0] bicg_function_out_unnamed_bicg15_bicg_avm_writedata;
    wire [31:0] bicg_function_out_unnamed_bicg16_bicg_avm_address;
    wire [0:0] bicg_function_out_unnamed_bicg16_bicg_avm_burstcount;
    wire [3:0] bicg_function_out_unnamed_bicg16_bicg_avm_byteenable;
    wire [0:0] bicg_function_out_unnamed_bicg16_bicg_avm_enable;
    wire [0:0] bicg_function_out_unnamed_bicg16_bicg_avm_read;
    wire [0:0] bicg_function_out_unnamed_bicg16_bicg_avm_write;
    wire [31:0] bicg_function_out_unnamed_bicg16_bicg_avm_writedata;
    wire [31:0] bicg_function_out_unnamed_bicg8_bicg_avm_address;
    wire [0:0] bicg_function_out_unnamed_bicg8_bicg_avm_burstcount;
    wire [3:0] bicg_function_out_unnamed_bicg8_bicg_avm_byteenable;
    wire [0:0] bicg_function_out_unnamed_bicg8_bicg_avm_enable;
    wire [0:0] bicg_function_out_unnamed_bicg8_bicg_avm_read;
    wire [0:0] bicg_function_out_unnamed_bicg8_bicg_avm_write;
    wire [31:0] bicg_function_out_unnamed_bicg8_bicg_avm_writedata;
    wire [0:0] busy_and_q;
    wire [0:0] busy_or_q;
    wire [319:0] implicit_input_q;
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
    assign implicit_input_q = {r, p, q, s, A};

    // A_const(CONSTANT,2)
    assign A_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // bicg_function(BLACKBOX,3)
    bicg_function thebicg_function (
        .in_arg_A(A_const_q),
        .in_arg_call(A_const_q),
        .in_arg_p(A_const_q),
        .in_arg_q(A_const_q),
        .in_arg_r(A_const_q),
        .in_arg_return(A_const_q),
        .in_arg_s(A_const_q),
        .in_iord_bl_call_bicg_i_fifodata(implicit_input_q),
        .in_iord_bl_call_bicg_i_fifovalid(start),
        .in_iowr_bl_return_bicg_i_fifoready(not_stall_q),
        .in_memdep_6_bicg_avm_readdata(avm_memdep_6_bicg_readdata),
        .in_memdep_6_bicg_avm_readdatavalid(avm_memdep_6_bicg_readdatavalid),
        .in_memdep_6_bicg_avm_waitrequest(avm_memdep_6_bicg_waitrequest),
        .in_memdep_6_bicg_avm_writeack(avm_memdep_6_bicg_writeack),
        .in_memdep_bicg_avm_readdata(avm_memdep_bicg_readdata),
        .in_memdep_bicg_avm_readdatavalid(avm_memdep_bicg_readdatavalid),
        .in_memdep_bicg_avm_waitrequest(avm_memdep_bicg_waitrequest),
        .in_memdep_bicg_avm_writeack(avm_memdep_bicg_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_unnamed_bicg12_bicg_avm_readdata(avm_unnamed_bicg12_bicg_readdata),
        .in_unnamed_bicg12_bicg_avm_readdatavalid(avm_unnamed_bicg12_bicg_readdatavalid),
        .in_unnamed_bicg12_bicg_avm_waitrequest(avm_unnamed_bicg12_bicg_waitrequest),
        .in_unnamed_bicg12_bicg_avm_writeack(avm_unnamed_bicg12_bicg_writeack),
        .in_unnamed_bicg14_bicg_avm_readdata(avm_unnamed_bicg14_bicg_readdata),
        .in_unnamed_bicg14_bicg_avm_readdatavalid(avm_unnamed_bicg14_bicg_readdatavalid),
        .in_unnamed_bicg14_bicg_avm_waitrequest(avm_unnamed_bicg14_bicg_waitrequest),
        .in_unnamed_bicg14_bicg_avm_writeack(avm_unnamed_bicg14_bicg_writeack),
        .in_unnamed_bicg15_bicg_avm_readdata(avm_unnamed_bicg15_bicg_readdata),
        .in_unnamed_bicg15_bicg_avm_readdatavalid(avm_unnamed_bicg15_bicg_readdatavalid),
        .in_unnamed_bicg15_bicg_avm_waitrequest(avm_unnamed_bicg15_bicg_waitrequest),
        .in_unnamed_bicg15_bicg_avm_writeack(avm_unnamed_bicg15_bicg_writeack),
        .in_unnamed_bicg16_bicg_avm_readdata(avm_unnamed_bicg16_bicg_readdata),
        .in_unnamed_bicg16_bicg_avm_readdatavalid(avm_unnamed_bicg16_bicg_readdatavalid),
        .in_unnamed_bicg16_bicg_avm_waitrequest(avm_unnamed_bicg16_bicg_waitrequest),
        .in_unnamed_bicg16_bicg_avm_writeack(avm_unnamed_bicg16_bicg_writeack),
        .in_unnamed_bicg8_bicg_avm_readdata(avm_unnamed_bicg8_bicg_readdata),
        .in_unnamed_bicg8_bicg_avm_readdatavalid(avm_unnamed_bicg8_bicg_readdatavalid),
        .in_unnamed_bicg8_bicg_avm_waitrequest(avm_unnamed_bicg8_bicg_waitrequest),
        .in_unnamed_bicg8_bicg_avm_writeack(avm_unnamed_bicg8_bicg_writeack),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_bicg_o_fifoalmost_full(bicg_function_out_iord_bl_call_bicg_o_fifoalmost_full),
        .out_iord_bl_call_bicg_o_fifoready(bicg_function_out_iord_bl_call_bicg_o_fifoready),
        .out_iowr_bl_return_bicg_o_fifodata(bicg_function_out_iowr_bl_return_bicg_o_fifodata),
        .out_iowr_bl_return_bicg_o_fifovalid(bicg_function_out_iowr_bl_return_bicg_o_fifovalid),
        .out_memdep_6_bicg_avm_address(bicg_function_out_memdep_6_bicg_avm_address),
        .out_memdep_6_bicg_avm_burstcount(bicg_function_out_memdep_6_bicg_avm_burstcount),
        .out_memdep_6_bicg_avm_byteenable(bicg_function_out_memdep_6_bicg_avm_byteenable),
        .out_memdep_6_bicg_avm_enable(bicg_function_out_memdep_6_bicg_avm_enable),
        .out_memdep_6_bicg_avm_read(bicg_function_out_memdep_6_bicg_avm_read),
        .out_memdep_6_bicg_avm_write(bicg_function_out_memdep_6_bicg_avm_write),
        .out_memdep_6_bicg_avm_writedata(bicg_function_out_memdep_6_bicg_avm_writedata),
        .out_memdep_bicg_avm_address(bicg_function_out_memdep_bicg_avm_address),
        .out_memdep_bicg_avm_burstcount(bicg_function_out_memdep_bicg_avm_burstcount),
        .out_memdep_bicg_avm_byteenable(bicg_function_out_memdep_bicg_avm_byteenable),
        .out_memdep_bicg_avm_enable(bicg_function_out_memdep_bicg_avm_enable),
        .out_memdep_bicg_avm_read(bicg_function_out_memdep_bicg_avm_read),
        .out_memdep_bicg_avm_write(bicg_function_out_memdep_bicg_avm_write),
        .out_memdep_bicg_avm_writedata(bicg_function_out_memdep_bicg_avm_writedata),
        .out_o_active_memdep(),
        .out_o_active_memdep_6(),
        .out_stall_out(),
        .out_unnamed_bicg12_bicg_avm_address(bicg_function_out_unnamed_bicg12_bicg_avm_address),
        .out_unnamed_bicg12_bicg_avm_burstcount(bicg_function_out_unnamed_bicg12_bicg_avm_burstcount),
        .out_unnamed_bicg12_bicg_avm_byteenable(bicg_function_out_unnamed_bicg12_bicg_avm_byteenable),
        .out_unnamed_bicg12_bicg_avm_enable(bicg_function_out_unnamed_bicg12_bicg_avm_enable),
        .out_unnamed_bicg12_bicg_avm_read(bicg_function_out_unnamed_bicg12_bicg_avm_read),
        .out_unnamed_bicg12_bicg_avm_write(bicg_function_out_unnamed_bicg12_bicg_avm_write),
        .out_unnamed_bicg12_bicg_avm_writedata(bicg_function_out_unnamed_bicg12_bicg_avm_writedata),
        .out_unnamed_bicg14_bicg_avm_address(bicg_function_out_unnamed_bicg14_bicg_avm_address),
        .out_unnamed_bicg14_bicg_avm_burstcount(bicg_function_out_unnamed_bicg14_bicg_avm_burstcount),
        .out_unnamed_bicg14_bicg_avm_byteenable(bicg_function_out_unnamed_bicg14_bicg_avm_byteenable),
        .out_unnamed_bicg14_bicg_avm_enable(bicg_function_out_unnamed_bicg14_bicg_avm_enable),
        .out_unnamed_bicg14_bicg_avm_read(bicg_function_out_unnamed_bicg14_bicg_avm_read),
        .out_unnamed_bicg14_bicg_avm_write(bicg_function_out_unnamed_bicg14_bicg_avm_write),
        .out_unnamed_bicg14_bicg_avm_writedata(bicg_function_out_unnamed_bicg14_bicg_avm_writedata),
        .out_unnamed_bicg15_bicg_avm_address(bicg_function_out_unnamed_bicg15_bicg_avm_address),
        .out_unnamed_bicg15_bicg_avm_burstcount(bicg_function_out_unnamed_bicg15_bicg_avm_burstcount),
        .out_unnamed_bicg15_bicg_avm_byteenable(bicg_function_out_unnamed_bicg15_bicg_avm_byteenable),
        .out_unnamed_bicg15_bicg_avm_enable(bicg_function_out_unnamed_bicg15_bicg_avm_enable),
        .out_unnamed_bicg15_bicg_avm_read(bicg_function_out_unnamed_bicg15_bicg_avm_read),
        .out_unnamed_bicg15_bicg_avm_write(bicg_function_out_unnamed_bicg15_bicg_avm_write),
        .out_unnamed_bicg15_bicg_avm_writedata(bicg_function_out_unnamed_bicg15_bicg_avm_writedata),
        .out_unnamed_bicg16_bicg_avm_address(bicg_function_out_unnamed_bicg16_bicg_avm_address),
        .out_unnamed_bicg16_bicg_avm_burstcount(bicg_function_out_unnamed_bicg16_bicg_avm_burstcount),
        .out_unnamed_bicg16_bicg_avm_byteenable(bicg_function_out_unnamed_bicg16_bicg_avm_byteenable),
        .out_unnamed_bicg16_bicg_avm_enable(bicg_function_out_unnamed_bicg16_bicg_avm_enable),
        .out_unnamed_bicg16_bicg_avm_read(bicg_function_out_unnamed_bicg16_bicg_avm_read),
        .out_unnamed_bicg16_bicg_avm_write(bicg_function_out_unnamed_bicg16_bicg_avm_write),
        .out_unnamed_bicg16_bicg_avm_writedata(bicg_function_out_unnamed_bicg16_bicg_avm_writedata),
        .out_unnamed_bicg8_bicg_avm_address(bicg_function_out_unnamed_bicg8_bicg_avm_address),
        .out_unnamed_bicg8_bicg_avm_burstcount(bicg_function_out_unnamed_bicg8_bicg_avm_burstcount),
        .out_unnamed_bicg8_bicg_avm_byteenable(bicg_function_out_unnamed_bicg8_bicg_avm_byteenable),
        .out_unnamed_bicg8_bicg_avm_enable(bicg_function_out_unnamed_bicg8_bicg_avm_enable),
        .out_unnamed_bicg8_bicg_avm_read(bicg_function_out_unnamed_bicg8_bicg_avm_read),
        .out_unnamed_bicg8_bicg_avm_write(bicg_function_out_unnamed_bicg8_bicg_avm_write),
        .out_unnamed_bicg8_bicg_avm_writedata(bicg_function_out_unnamed_bicg8_bicg_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_memdep_6_bicg_address(GPOUT,53)
    assign avm_memdep_6_bicg_address = bicg_function_out_memdep_6_bicg_avm_address;

    // avm_memdep_6_bicg_burstcount(GPOUT,54)
    assign avm_memdep_6_bicg_burstcount = bicg_function_out_memdep_6_bicg_avm_burstcount;

    // avm_memdep_6_bicg_byteenable(GPOUT,55)
    assign avm_memdep_6_bicg_byteenable = bicg_function_out_memdep_6_bicg_avm_byteenable;

    // avm_memdep_6_bicg_enable(GPOUT,56)
    assign avm_memdep_6_bicg_enable = bicg_function_out_memdep_6_bicg_avm_enable;

    // avm_memdep_6_bicg_read(GPOUT,57)
    assign avm_memdep_6_bicg_read = bicg_function_out_memdep_6_bicg_avm_read;

    // avm_memdep_6_bicg_write(GPOUT,58)
    assign avm_memdep_6_bicg_write = bicg_function_out_memdep_6_bicg_avm_write;

    // avm_memdep_6_bicg_writedata(GPOUT,59)
    assign avm_memdep_6_bicg_writedata = bicg_function_out_memdep_6_bicg_avm_writedata;

    // avm_memdep_bicg_address(GPOUT,60)
    assign avm_memdep_bicg_address = bicg_function_out_memdep_bicg_avm_address;

    // avm_memdep_bicg_burstcount(GPOUT,61)
    assign avm_memdep_bicg_burstcount = bicg_function_out_memdep_bicg_avm_burstcount;

    // avm_memdep_bicg_byteenable(GPOUT,62)
    assign avm_memdep_bicg_byteenable = bicg_function_out_memdep_bicg_avm_byteenable;

    // avm_memdep_bicg_enable(GPOUT,63)
    assign avm_memdep_bicg_enable = bicg_function_out_memdep_bicg_avm_enable;

    // avm_memdep_bicg_read(GPOUT,64)
    assign avm_memdep_bicg_read = bicg_function_out_memdep_bicg_avm_read;

    // avm_memdep_bicg_write(GPOUT,65)
    assign avm_memdep_bicg_write = bicg_function_out_memdep_bicg_avm_write;

    // avm_memdep_bicg_writedata(GPOUT,66)
    assign avm_memdep_bicg_writedata = bicg_function_out_memdep_bicg_avm_writedata;

    // avm_unnamed_bicg12_bicg_address(GPOUT,67)
    assign avm_unnamed_bicg12_bicg_address = bicg_function_out_unnamed_bicg12_bicg_avm_address;

    // avm_unnamed_bicg12_bicg_burstcount(GPOUT,68)
    assign avm_unnamed_bicg12_bicg_burstcount = bicg_function_out_unnamed_bicg12_bicg_avm_burstcount;

    // avm_unnamed_bicg12_bicg_byteenable(GPOUT,69)
    assign avm_unnamed_bicg12_bicg_byteenable = bicg_function_out_unnamed_bicg12_bicg_avm_byteenable;

    // avm_unnamed_bicg12_bicg_enable(GPOUT,70)
    assign avm_unnamed_bicg12_bicg_enable = bicg_function_out_unnamed_bicg12_bicg_avm_enable;

    // avm_unnamed_bicg12_bicg_read(GPOUT,71)
    assign avm_unnamed_bicg12_bicg_read = bicg_function_out_unnamed_bicg12_bicg_avm_read;

    // avm_unnamed_bicg12_bicg_write(GPOUT,72)
    assign avm_unnamed_bicg12_bicg_write = bicg_function_out_unnamed_bicg12_bicg_avm_write;

    // avm_unnamed_bicg12_bicg_writedata(GPOUT,73)
    assign avm_unnamed_bicg12_bicg_writedata = bicg_function_out_unnamed_bicg12_bicg_avm_writedata;

    // avm_unnamed_bicg14_bicg_address(GPOUT,74)
    assign avm_unnamed_bicg14_bicg_address = bicg_function_out_unnamed_bicg14_bicg_avm_address;

    // avm_unnamed_bicg14_bicg_burstcount(GPOUT,75)
    assign avm_unnamed_bicg14_bicg_burstcount = bicg_function_out_unnamed_bicg14_bicg_avm_burstcount;

    // avm_unnamed_bicg14_bicg_byteenable(GPOUT,76)
    assign avm_unnamed_bicg14_bicg_byteenable = bicg_function_out_unnamed_bicg14_bicg_avm_byteenable;

    // avm_unnamed_bicg14_bicg_enable(GPOUT,77)
    assign avm_unnamed_bicg14_bicg_enable = bicg_function_out_unnamed_bicg14_bicg_avm_enable;

    // avm_unnamed_bicg14_bicg_read(GPOUT,78)
    assign avm_unnamed_bicg14_bicg_read = bicg_function_out_unnamed_bicg14_bicg_avm_read;

    // avm_unnamed_bicg14_bicg_write(GPOUT,79)
    assign avm_unnamed_bicg14_bicg_write = bicg_function_out_unnamed_bicg14_bicg_avm_write;

    // avm_unnamed_bicg14_bicg_writedata(GPOUT,80)
    assign avm_unnamed_bicg14_bicg_writedata = bicg_function_out_unnamed_bicg14_bicg_avm_writedata;

    // avm_unnamed_bicg15_bicg_address(GPOUT,81)
    assign avm_unnamed_bicg15_bicg_address = bicg_function_out_unnamed_bicg15_bicg_avm_address;

    // avm_unnamed_bicg15_bicg_burstcount(GPOUT,82)
    assign avm_unnamed_bicg15_bicg_burstcount = bicg_function_out_unnamed_bicg15_bicg_avm_burstcount;

    // avm_unnamed_bicg15_bicg_byteenable(GPOUT,83)
    assign avm_unnamed_bicg15_bicg_byteenable = bicg_function_out_unnamed_bicg15_bicg_avm_byteenable;

    // avm_unnamed_bicg15_bicg_enable(GPOUT,84)
    assign avm_unnamed_bicg15_bicg_enable = bicg_function_out_unnamed_bicg15_bicg_avm_enable;

    // avm_unnamed_bicg15_bicg_read(GPOUT,85)
    assign avm_unnamed_bicg15_bicg_read = bicg_function_out_unnamed_bicg15_bicg_avm_read;

    // avm_unnamed_bicg15_bicg_write(GPOUT,86)
    assign avm_unnamed_bicg15_bicg_write = bicg_function_out_unnamed_bicg15_bicg_avm_write;

    // avm_unnamed_bicg15_bicg_writedata(GPOUT,87)
    assign avm_unnamed_bicg15_bicg_writedata = bicg_function_out_unnamed_bicg15_bicg_avm_writedata;

    // avm_unnamed_bicg16_bicg_address(GPOUT,88)
    assign avm_unnamed_bicg16_bicg_address = bicg_function_out_unnamed_bicg16_bicg_avm_address;

    // avm_unnamed_bicg16_bicg_burstcount(GPOUT,89)
    assign avm_unnamed_bicg16_bicg_burstcount = bicg_function_out_unnamed_bicg16_bicg_avm_burstcount;

    // avm_unnamed_bicg16_bicg_byteenable(GPOUT,90)
    assign avm_unnamed_bicg16_bicg_byteenable = bicg_function_out_unnamed_bicg16_bicg_avm_byteenable;

    // avm_unnamed_bicg16_bicg_enable(GPOUT,91)
    assign avm_unnamed_bicg16_bicg_enable = bicg_function_out_unnamed_bicg16_bicg_avm_enable;

    // avm_unnamed_bicg16_bicg_read(GPOUT,92)
    assign avm_unnamed_bicg16_bicg_read = bicg_function_out_unnamed_bicg16_bicg_avm_read;

    // avm_unnamed_bicg16_bicg_write(GPOUT,93)
    assign avm_unnamed_bicg16_bicg_write = bicg_function_out_unnamed_bicg16_bicg_avm_write;

    // avm_unnamed_bicg16_bicg_writedata(GPOUT,94)
    assign avm_unnamed_bicg16_bicg_writedata = bicg_function_out_unnamed_bicg16_bicg_avm_writedata;

    // avm_unnamed_bicg8_bicg_address(GPOUT,95)
    assign avm_unnamed_bicg8_bicg_address = bicg_function_out_unnamed_bicg8_bicg_avm_address;

    // avm_unnamed_bicg8_bicg_burstcount(GPOUT,96)
    assign avm_unnamed_bicg8_bicg_burstcount = bicg_function_out_unnamed_bicg8_bicg_avm_burstcount;

    // avm_unnamed_bicg8_bicg_byteenable(GPOUT,97)
    assign avm_unnamed_bicg8_bicg_byteenable = bicg_function_out_unnamed_bicg8_bicg_avm_byteenable;

    // avm_unnamed_bicg8_bicg_enable(GPOUT,98)
    assign avm_unnamed_bicg8_bicg_enable = bicg_function_out_unnamed_bicg8_bicg_avm_enable;

    // avm_unnamed_bicg8_bicg_read(GPOUT,99)
    assign avm_unnamed_bicg8_bicg_read = bicg_function_out_unnamed_bicg8_bicg_avm_read;

    // avm_unnamed_bicg8_bicg_write(GPOUT,100)
    assign avm_unnamed_bicg8_bicg_write = bicg_function_out_unnamed_bicg8_bicg_avm_write;

    // avm_unnamed_bicg8_bicg_writedata(GPOUT,101)
    assign avm_unnamed_bicg8_bicg_writedata = bicg_function_out_unnamed_bicg8_bicg_avm_writedata;

    // avst_iord_bl_call_bicg_almost_full(GPOUT,102)
    assign avst_iord_bl_call_bicg_almost_full = bicg_function_out_iord_bl_call_bicg_o_fifoalmost_full;

    // avst_iord_bl_call_bicg_ready(GPOUT,103)
    assign avst_iord_bl_call_bicg_ready = bicg_function_out_iord_bl_call_bicg_o_fifoready;

    // avst_iowr_bl_return_bicg_data(GPOUT,104)
    assign avst_iowr_bl_return_bicg_data = bicg_function_out_iowr_bl_return_bicg_o_fifodata;

    // avst_iowr_bl_return_bicg_valid(GPOUT,105)
    assign avst_iowr_bl_return_bicg_valid = bicg_function_out_iowr_bl_return_bicg_o_fifovalid;

    // not_ready(LOGICAL,51)
    assign not_ready_q = ~ (bicg_function_out_iord_bl_call_bicg_o_fifoready);

    // busy_and(LOGICAL,4)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,112)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,109)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,5)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,106)
    assign busy = busy_or_q;

    // done(GPOUT,107)
    assign done = bicg_function_out_iowr_bl_return_bicg_o_fifovalid;

endmodule
