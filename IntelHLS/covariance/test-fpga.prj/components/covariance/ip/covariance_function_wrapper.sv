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

// SystemVerilog created from covariance_function_wrapper
// Created for function/kernel covariance
// SystemVerilog created on Wed Apr  5 02:12:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_function_wrapper (
    input wire [31:0] avm_memdep_1_covariance_readdata,
    input wire [0:0] avm_memdep_1_covariance_readdatavalid,
    input wire [0:0] avm_memdep_1_covariance_waitrequest,
    input wire [0:0] avm_memdep_1_covariance_writeack,
    input wire [31:0] avm_memdep_2_covariance_readdata,
    input wire [0:0] avm_memdep_2_covariance_readdatavalid,
    input wire [0:0] avm_memdep_2_covariance_waitrequest,
    input wire [0:0] avm_memdep_2_covariance_writeack,
    input wire [31:0] avm_memdep_3_covariance_readdata,
    input wire [0:0] avm_memdep_3_covariance_readdatavalid,
    input wire [0:0] avm_memdep_3_covariance_waitrequest,
    input wire [0:0] avm_memdep_3_covariance_writeack,
    input wire [63:0] avm_memdep_4_covariance_readdata,
    input wire [0:0] avm_memdep_4_covariance_readdatavalid,
    input wire [0:0] avm_memdep_4_covariance_waitrequest,
    input wire [0:0] avm_memdep_4_covariance_writeack,
    input wire [31:0] avm_memdep_covariance_readdata,
    input wire [0:0] avm_memdep_covariance_readdatavalid,
    input wire [0:0] avm_memdep_covariance_waitrequest,
    input wire [0:0] avm_memdep_covariance_writeack,
    input wire [31:0] avm_unnamed_covariance11_covariance_readdata,
    input wire [0:0] avm_unnamed_covariance11_covariance_readdatavalid,
    input wire [0:0] avm_unnamed_covariance11_covariance_waitrequest,
    input wire [0:0] avm_unnamed_covariance11_covariance_writeack,
    input wire [63:0] avm_unnamed_covariance4_covariance_readdata,
    input wire [0:0] avm_unnamed_covariance4_covariance_readdatavalid,
    input wire [0:0] avm_unnamed_covariance4_covariance_waitrequest,
    input wire [0:0] avm_unnamed_covariance4_covariance_writeack,
    input wire [63:0] avm_unnamed_covariance5_covariance_readdata,
    input wire [0:0] avm_unnamed_covariance5_covariance_readdatavalid,
    input wire [0:0] avm_unnamed_covariance5_covariance_waitrequest,
    input wire [0:0] avm_unnamed_covariance5_covariance_writeack,
    input wire [31:0] avm_unnamed_covariance6_covariance_readdata,
    input wire [0:0] avm_unnamed_covariance6_covariance_readdatavalid,
    input wire [0:0] avm_unnamed_covariance6_covariance_waitrequest,
    input wire [0:0] avm_unnamed_covariance6_covariance_writeack,
    input wire [31:0] avm_unnamed_covariance7_covariance_readdata,
    input wire [0:0] avm_unnamed_covariance7_covariance_readdatavalid,
    input wire [0:0] avm_unnamed_covariance7_covariance_waitrequest,
    input wire [0:0] avm_unnamed_covariance7_covariance_writeack,
    input wire [31:0] avm_unnamed_covariance8_covariance_readdata,
    input wire [0:0] avm_unnamed_covariance8_covariance_readdatavalid,
    input wire [0:0] avm_unnamed_covariance8_covariance_waitrequest,
    input wire [0:0] avm_unnamed_covariance8_covariance_writeack,
    input wire [31:0] avm_unnamed_covariance9_covariance_readdata,
    input wire [0:0] avm_unnamed_covariance9_covariance_readdatavalid,
    input wire [0:0] avm_unnamed_covariance9_covariance_waitrequest,
    input wire [0:0] avm_unnamed_covariance9_covariance_writeack,
    input wire [127:0] avst_iord_bl_call_covariance_data,
    input wire [0:0] avst_iord_bl_call_covariance_valid,
    input wire [0:0] avst_iowr_bl_return_covariance_almostfull,
    input wire [0:0] avst_iowr_bl_return_covariance_ready,
    input wire [63:0] cov,
    input wire [63:0] data,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [31:0] avm_memdep_1_covariance_address,
    output wire [0:0] avm_memdep_1_covariance_burstcount,
    output wire [3:0] avm_memdep_1_covariance_byteenable,
    output wire [0:0] avm_memdep_1_covariance_enable,
    output wire [0:0] avm_memdep_1_covariance_read,
    output wire [0:0] avm_memdep_1_covariance_write,
    output wire [31:0] avm_memdep_1_covariance_writedata,
    output wire [31:0] avm_memdep_2_covariance_address,
    output wire [0:0] avm_memdep_2_covariance_burstcount,
    output wire [3:0] avm_memdep_2_covariance_byteenable,
    output wire [0:0] avm_memdep_2_covariance_enable,
    output wire [0:0] avm_memdep_2_covariance_read,
    output wire [0:0] avm_memdep_2_covariance_write,
    output wire [31:0] avm_memdep_2_covariance_writedata,
    output wire [31:0] avm_memdep_3_covariance_address,
    output wire [0:0] avm_memdep_3_covariance_burstcount,
    output wire [3:0] avm_memdep_3_covariance_byteenable,
    output wire [0:0] avm_memdep_3_covariance_enable,
    output wire [0:0] avm_memdep_3_covariance_read,
    output wire [0:0] avm_memdep_3_covariance_write,
    output wire [31:0] avm_memdep_3_covariance_writedata,
    output wire [63:0] avm_memdep_4_covariance_address,
    output wire [0:0] avm_memdep_4_covariance_burstcount,
    output wire [7:0] avm_memdep_4_covariance_byteenable,
    output wire [0:0] avm_memdep_4_covariance_enable,
    output wire [0:0] avm_memdep_4_covariance_read,
    output wire [0:0] avm_memdep_4_covariance_write,
    output wire [63:0] avm_memdep_4_covariance_writedata,
    output wire [31:0] avm_memdep_covariance_address,
    output wire [0:0] avm_memdep_covariance_burstcount,
    output wire [3:0] avm_memdep_covariance_byteenable,
    output wire [0:0] avm_memdep_covariance_enable,
    output wire [0:0] avm_memdep_covariance_read,
    output wire [0:0] avm_memdep_covariance_write,
    output wire [31:0] avm_memdep_covariance_writedata,
    output wire [31:0] avm_unnamed_covariance11_covariance_address,
    output wire [0:0] avm_unnamed_covariance11_covariance_burstcount,
    output wire [3:0] avm_unnamed_covariance11_covariance_byteenable,
    output wire [0:0] avm_unnamed_covariance11_covariance_enable,
    output wire [0:0] avm_unnamed_covariance11_covariance_read,
    output wire [0:0] avm_unnamed_covariance11_covariance_write,
    output wire [31:0] avm_unnamed_covariance11_covariance_writedata,
    output wire [63:0] avm_unnamed_covariance4_covariance_address,
    output wire [0:0] avm_unnamed_covariance4_covariance_burstcount,
    output wire [7:0] avm_unnamed_covariance4_covariance_byteenable,
    output wire [0:0] avm_unnamed_covariance4_covariance_enable,
    output wire [0:0] avm_unnamed_covariance4_covariance_read,
    output wire [0:0] avm_unnamed_covariance4_covariance_write,
    output wire [63:0] avm_unnamed_covariance4_covariance_writedata,
    output wire [63:0] avm_unnamed_covariance5_covariance_address,
    output wire [0:0] avm_unnamed_covariance5_covariance_burstcount,
    output wire [7:0] avm_unnamed_covariance5_covariance_byteenable,
    output wire [0:0] avm_unnamed_covariance5_covariance_enable,
    output wire [0:0] avm_unnamed_covariance5_covariance_read,
    output wire [0:0] avm_unnamed_covariance5_covariance_write,
    output wire [63:0] avm_unnamed_covariance5_covariance_writedata,
    output wire [31:0] avm_unnamed_covariance6_covariance_address,
    output wire [0:0] avm_unnamed_covariance6_covariance_burstcount,
    output wire [3:0] avm_unnamed_covariance6_covariance_byteenable,
    output wire [0:0] avm_unnamed_covariance6_covariance_enable,
    output wire [0:0] avm_unnamed_covariance6_covariance_read,
    output wire [0:0] avm_unnamed_covariance6_covariance_write,
    output wire [31:0] avm_unnamed_covariance6_covariance_writedata,
    output wire [31:0] avm_unnamed_covariance7_covariance_address,
    output wire [0:0] avm_unnamed_covariance7_covariance_burstcount,
    output wire [3:0] avm_unnamed_covariance7_covariance_byteenable,
    output wire [0:0] avm_unnamed_covariance7_covariance_enable,
    output wire [0:0] avm_unnamed_covariance7_covariance_read,
    output wire [0:0] avm_unnamed_covariance7_covariance_write,
    output wire [31:0] avm_unnamed_covariance7_covariance_writedata,
    output wire [31:0] avm_unnamed_covariance8_covariance_address,
    output wire [0:0] avm_unnamed_covariance8_covariance_burstcount,
    output wire [3:0] avm_unnamed_covariance8_covariance_byteenable,
    output wire [0:0] avm_unnamed_covariance8_covariance_enable,
    output wire [0:0] avm_unnamed_covariance8_covariance_read,
    output wire [0:0] avm_unnamed_covariance8_covariance_write,
    output wire [31:0] avm_unnamed_covariance8_covariance_writedata,
    output wire [31:0] avm_unnamed_covariance9_covariance_address,
    output wire [0:0] avm_unnamed_covariance9_covariance_burstcount,
    output wire [3:0] avm_unnamed_covariance9_covariance_byteenable,
    output wire [0:0] avm_unnamed_covariance9_covariance_enable,
    output wire [0:0] avm_unnamed_covariance9_covariance_read,
    output wire [0:0] avm_unnamed_covariance9_covariance_write,
    output wire [31:0] avm_unnamed_covariance9_covariance_writedata,
    output wire [0:0] avst_iord_bl_call_covariance_almost_full,
    output wire [0:0] avst_iord_bl_call_covariance_ready,
    output wire [0:0] avst_iowr_bl_return_covariance_data,
    output wire [0:0] avst_iowr_bl_return_covariance_valid,
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
    wire [0:0] covariance_function_out_iord_bl_call_covariance_o_fifoalmost_full;
    wire [0:0] covariance_function_out_iord_bl_call_covariance_o_fifoready;
    wire [0:0] covariance_function_out_iowr_bl_return_covariance_o_fifodata;
    wire [0:0] covariance_function_out_iowr_bl_return_covariance_o_fifovalid;
    wire [31:0] covariance_function_out_memdep_1_covariance_avm_address;
    wire [0:0] covariance_function_out_memdep_1_covariance_avm_burstcount;
    wire [3:0] covariance_function_out_memdep_1_covariance_avm_byteenable;
    wire [0:0] covariance_function_out_memdep_1_covariance_avm_enable;
    wire [0:0] covariance_function_out_memdep_1_covariance_avm_read;
    wire [0:0] covariance_function_out_memdep_1_covariance_avm_write;
    wire [31:0] covariance_function_out_memdep_1_covariance_avm_writedata;
    wire [31:0] covariance_function_out_memdep_2_covariance_avm_address;
    wire [0:0] covariance_function_out_memdep_2_covariance_avm_burstcount;
    wire [3:0] covariance_function_out_memdep_2_covariance_avm_byteenable;
    wire [0:0] covariance_function_out_memdep_2_covariance_avm_enable;
    wire [0:0] covariance_function_out_memdep_2_covariance_avm_read;
    wire [0:0] covariance_function_out_memdep_2_covariance_avm_write;
    wire [31:0] covariance_function_out_memdep_2_covariance_avm_writedata;
    wire [31:0] covariance_function_out_memdep_3_covariance_avm_address;
    wire [0:0] covariance_function_out_memdep_3_covariance_avm_burstcount;
    wire [3:0] covariance_function_out_memdep_3_covariance_avm_byteenable;
    wire [0:0] covariance_function_out_memdep_3_covariance_avm_enable;
    wire [0:0] covariance_function_out_memdep_3_covariance_avm_read;
    wire [0:0] covariance_function_out_memdep_3_covariance_avm_write;
    wire [31:0] covariance_function_out_memdep_3_covariance_avm_writedata;
    wire [63:0] covariance_function_out_memdep_4_covariance_avm_address;
    wire [0:0] covariance_function_out_memdep_4_covariance_avm_burstcount;
    wire [7:0] covariance_function_out_memdep_4_covariance_avm_byteenable;
    wire [0:0] covariance_function_out_memdep_4_covariance_avm_enable;
    wire [0:0] covariance_function_out_memdep_4_covariance_avm_read;
    wire [0:0] covariance_function_out_memdep_4_covariance_avm_write;
    wire [63:0] covariance_function_out_memdep_4_covariance_avm_writedata;
    wire [31:0] covariance_function_out_memdep_covariance_avm_address;
    wire [0:0] covariance_function_out_memdep_covariance_avm_burstcount;
    wire [3:0] covariance_function_out_memdep_covariance_avm_byteenable;
    wire [0:0] covariance_function_out_memdep_covariance_avm_enable;
    wire [0:0] covariance_function_out_memdep_covariance_avm_read;
    wire [0:0] covariance_function_out_memdep_covariance_avm_write;
    wire [31:0] covariance_function_out_memdep_covariance_avm_writedata;
    wire [31:0] covariance_function_out_unnamed_covariance11_covariance_avm_address;
    wire [0:0] covariance_function_out_unnamed_covariance11_covariance_avm_burstcount;
    wire [3:0] covariance_function_out_unnamed_covariance11_covariance_avm_byteenable;
    wire [0:0] covariance_function_out_unnamed_covariance11_covariance_avm_enable;
    wire [0:0] covariance_function_out_unnamed_covariance11_covariance_avm_read;
    wire [0:0] covariance_function_out_unnamed_covariance11_covariance_avm_write;
    wire [31:0] covariance_function_out_unnamed_covariance11_covariance_avm_writedata;
    wire [63:0] covariance_function_out_unnamed_covariance4_covariance_avm_address;
    wire [0:0] covariance_function_out_unnamed_covariance4_covariance_avm_burstcount;
    wire [7:0] covariance_function_out_unnamed_covariance4_covariance_avm_byteenable;
    wire [0:0] covariance_function_out_unnamed_covariance4_covariance_avm_enable;
    wire [0:0] covariance_function_out_unnamed_covariance4_covariance_avm_read;
    wire [0:0] covariance_function_out_unnamed_covariance4_covariance_avm_write;
    wire [63:0] covariance_function_out_unnamed_covariance4_covariance_avm_writedata;
    wire [63:0] covariance_function_out_unnamed_covariance5_covariance_avm_address;
    wire [0:0] covariance_function_out_unnamed_covariance5_covariance_avm_burstcount;
    wire [7:0] covariance_function_out_unnamed_covariance5_covariance_avm_byteenable;
    wire [0:0] covariance_function_out_unnamed_covariance5_covariance_avm_enable;
    wire [0:0] covariance_function_out_unnamed_covariance5_covariance_avm_read;
    wire [0:0] covariance_function_out_unnamed_covariance5_covariance_avm_write;
    wire [63:0] covariance_function_out_unnamed_covariance5_covariance_avm_writedata;
    wire [31:0] covariance_function_out_unnamed_covariance6_covariance_avm_address;
    wire [0:0] covariance_function_out_unnamed_covariance6_covariance_avm_burstcount;
    wire [3:0] covariance_function_out_unnamed_covariance6_covariance_avm_byteenable;
    wire [0:0] covariance_function_out_unnamed_covariance6_covariance_avm_enable;
    wire [0:0] covariance_function_out_unnamed_covariance6_covariance_avm_read;
    wire [0:0] covariance_function_out_unnamed_covariance6_covariance_avm_write;
    wire [31:0] covariance_function_out_unnamed_covariance6_covariance_avm_writedata;
    wire [31:0] covariance_function_out_unnamed_covariance7_covariance_avm_address;
    wire [0:0] covariance_function_out_unnamed_covariance7_covariance_avm_burstcount;
    wire [3:0] covariance_function_out_unnamed_covariance7_covariance_avm_byteenable;
    wire [0:0] covariance_function_out_unnamed_covariance7_covariance_avm_enable;
    wire [0:0] covariance_function_out_unnamed_covariance7_covariance_avm_read;
    wire [0:0] covariance_function_out_unnamed_covariance7_covariance_avm_write;
    wire [31:0] covariance_function_out_unnamed_covariance7_covariance_avm_writedata;
    wire [31:0] covariance_function_out_unnamed_covariance8_covariance_avm_address;
    wire [0:0] covariance_function_out_unnamed_covariance8_covariance_avm_burstcount;
    wire [3:0] covariance_function_out_unnamed_covariance8_covariance_avm_byteenable;
    wire [0:0] covariance_function_out_unnamed_covariance8_covariance_avm_enable;
    wire [0:0] covariance_function_out_unnamed_covariance8_covariance_avm_read;
    wire [0:0] covariance_function_out_unnamed_covariance8_covariance_avm_write;
    wire [31:0] covariance_function_out_unnamed_covariance8_covariance_avm_writedata;
    wire [31:0] covariance_function_out_unnamed_covariance9_covariance_avm_address;
    wire [0:0] covariance_function_out_unnamed_covariance9_covariance_avm_burstcount;
    wire [3:0] covariance_function_out_unnamed_covariance9_covariance_avm_byteenable;
    wire [0:0] covariance_function_out_unnamed_covariance9_covariance_avm_enable;
    wire [0:0] covariance_function_out_unnamed_covariance9_covariance_avm_read;
    wire [0:0] covariance_function_out_unnamed_covariance9_covariance_avm_write;
    wire [31:0] covariance_function_out_unnamed_covariance9_covariance_avm_writedata;
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

    // not_stall(LOGICAL,70)
    assign not_stall_q = ~ (stall);

    // implicit_input(BITJOIN,10)
    assign implicit_input_q = {cov, data};

    // call_const(CONSTANT,4)
    assign call_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // covariance_function(BLACKBOX,8)
    covariance_function thecovariance_function (
        .in_arg_call(call_const_q),
        .in_arg_cov(call_const_q),
        .in_arg_data(call_const_q),
        .in_arg_return(call_const_q),
        .in_iord_bl_call_covariance_i_fifodata(implicit_input_q),
        .in_iord_bl_call_covariance_i_fifovalid(start),
        .in_iowr_bl_return_covariance_i_fifoready(not_stall_q),
        .in_memdep_1_covariance_avm_readdata(avm_memdep_1_covariance_readdata),
        .in_memdep_1_covariance_avm_readdatavalid(avm_memdep_1_covariance_readdatavalid),
        .in_memdep_1_covariance_avm_waitrequest(avm_memdep_1_covariance_waitrequest),
        .in_memdep_1_covariance_avm_writeack(avm_memdep_1_covariance_writeack),
        .in_memdep_2_covariance_avm_readdata(avm_memdep_2_covariance_readdata),
        .in_memdep_2_covariance_avm_readdatavalid(avm_memdep_2_covariance_readdatavalid),
        .in_memdep_2_covariance_avm_waitrequest(avm_memdep_2_covariance_waitrequest),
        .in_memdep_2_covariance_avm_writeack(avm_memdep_2_covariance_writeack),
        .in_memdep_3_covariance_avm_readdata(avm_memdep_3_covariance_readdata),
        .in_memdep_3_covariance_avm_readdatavalid(avm_memdep_3_covariance_readdatavalid),
        .in_memdep_3_covariance_avm_waitrequest(avm_memdep_3_covariance_waitrequest),
        .in_memdep_3_covariance_avm_writeack(avm_memdep_3_covariance_writeack),
        .in_memdep_4_covariance_avm_readdata(avm_memdep_4_covariance_readdata),
        .in_memdep_4_covariance_avm_readdatavalid(avm_memdep_4_covariance_readdatavalid),
        .in_memdep_4_covariance_avm_waitrequest(avm_memdep_4_covariance_waitrequest),
        .in_memdep_4_covariance_avm_writeack(avm_memdep_4_covariance_writeack),
        .in_memdep_covariance_avm_readdata(avm_memdep_covariance_readdata),
        .in_memdep_covariance_avm_readdatavalid(avm_memdep_covariance_readdatavalid),
        .in_memdep_covariance_avm_waitrequest(avm_memdep_covariance_waitrequest),
        .in_memdep_covariance_avm_writeack(avm_memdep_covariance_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_unnamed_covariance11_covariance_avm_readdata(avm_unnamed_covariance11_covariance_readdata),
        .in_unnamed_covariance11_covariance_avm_readdatavalid(avm_unnamed_covariance11_covariance_readdatavalid),
        .in_unnamed_covariance11_covariance_avm_waitrequest(avm_unnamed_covariance11_covariance_waitrequest),
        .in_unnamed_covariance11_covariance_avm_writeack(avm_unnamed_covariance11_covariance_writeack),
        .in_unnamed_covariance4_covariance_avm_readdata(avm_unnamed_covariance4_covariance_readdata),
        .in_unnamed_covariance4_covariance_avm_readdatavalid(avm_unnamed_covariance4_covariance_readdatavalid),
        .in_unnamed_covariance4_covariance_avm_waitrequest(avm_unnamed_covariance4_covariance_waitrequest),
        .in_unnamed_covariance4_covariance_avm_writeack(avm_unnamed_covariance4_covariance_writeack),
        .in_unnamed_covariance5_covariance_avm_readdata(avm_unnamed_covariance5_covariance_readdata),
        .in_unnamed_covariance5_covariance_avm_readdatavalid(avm_unnamed_covariance5_covariance_readdatavalid),
        .in_unnamed_covariance5_covariance_avm_waitrequest(avm_unnamed_covariance5_covariance_waitrequest),
        .in_unnamed_covariance5_covariance_avm_writeack(avm_unnamed_covariance5_covariance_writeack),
        .in_unnamed_covariance6_covariance_avm_readdata(avm_unnamed_covariance6_covariance_readdata),
        .in_unnamed_covariance6_covariance_avm_readdatavalid(avm_unnamed_covariance6_covariance_readdatavalid),
        .in_unnamed_covariance6_covariance_avm_waitrequest(avm_unnamed_covariance6_covariance_waitrequest),
        .in_unnamed_covariance6_covariance_avm_writeack(avm_unnamed_covariance6_covariance_writeack),
        .in_unnamed_covariance7_covariance_avm_readdata(avm_unnamed_covariance7_covariance_readdata),
        .in_unnamed_covariance7_covariance_avm_readdatavalid(avm_unnamed_covariance7_covariance_readdatavalid),
        .in_unnamed_covariance7_covariance_avm_waitrequest(avm_unnamed_covariance7_covariance_waitrequest),
        .in_unnamed_covariance7_covariance_avm_writeack(avm_unnamed_covariance7_covariance_writeack),
        .in_unnamed_covariance8_covariance_avm_readdata(avm_unnamed_covariance8_covariance_readdata),
        .in_unnamed_covariance8_covariance_avm_readdatavalid(avm_unnamed_covariance8_covariance_readdatavalid),
        .in_unnamed_covariance8_covariance_avm_waitrequest(avm_unnamed_covariance8_covariance_waitrequest),
        .in_unnamed_covariance8_covariance_avm_writeack(avm_unnamed_covariance8_covariance_writeack),
        .in_unnamed_covariance9_covariance_avm_readdata(avm_unnamed_covariance9_covariance_readdata),
        .in_unnamed_covariance9_covariance_avm_readdatavalid(avm_unnamed_covariance9_covariance_readdatavalid),
        .in_unnamed_covariance9_covariance_avm_waitrequest(avm_unnamed_covariance9_covariance_waitrequest),
        .in_unnamed_covariance9_covariance_avm_writeack(avm_unnamed_covariance9_covariance_writeack),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_covariance_o_fifoalmost_full(covariance_function_out_iord_bl_call_covariance_o_fifoalmost_full),
        .out_iord_bl_call_covariance_o_fifoready(covariance_function_out_iord_bl_call_covariance_o_fifoready),
        .out_iowr_bl_return_covariance_o_fifodata(covariance_function_out_iowr_bl_return_covariance_o_fifodata),
        .out_iowr_bl_return_covariance_o_fifovalid(covariance_function_out_iowr_bl_return_covariance_o_fifovalid),
        .out_memdep_1_covariance_avm_address(covariance_function_out_memdep_1_covariance_avm_address),
        .out_memdep_1_covariance_avm_burstcount(covariance_function_out_memdep_1_covariance_avm_burstcount),
        .out_memdep_1_covariance_avm_byteenable(covariance_function_out_memdep_1_covariance_avm_byteenable),
        .out_memdep_1_covariance_avm_enable(covariance_function_out_memdep_1_covariance_avm_enable),
        .out_memdep_1_covariance_avm_read(covariance_function_out_memdep_1_covariance_avm_read),
        .out_memdep_1_covariance_avm_write(covariance_function_out_memdep_1_covariance_avm_write),
        .out_memdep_1_covariance_avm_writedata(covariance_function_out_memdep_1_covariance_avm_writedata),
        .out_memdep_2_covariance_avm_address(covariance_function_out_memdep_2_covariance_avm_address),
        .out_memdep_2_covariance_avm_burstcount(covariance_function_out_memdep_2_covariance_avm_burstcount),
        .out_memdep_2_covariance_avm_byteenable(covariance_function_out_memdep_2_covariance_avm_byteenable),
        .out_memdep_2_covariance_avm_enable(covariance_function_out_memdep_2_covariance_avm_enable),
        .out_memdep_2_covariance_avm_read(covariance_function_out_memdep_2_covariance_avm_read),
        .out_memdep_2_covariance_avm_write(covariance_function_out_memdep_2_covariance_avm_write),
        .out_memdep_2_covariance_avm_writedata(covariance_function_out_memdep_2_covariance_avm_writedata),
        .out_memdep_3_covariance_avm_address(covariance_function_out_memdep_3_covariance_avm_address),
        .out_memdep_3_covariance_avm_burstcount(covariance_function_out_memdep_3_covariance_avm_burstcount),
        .out_memdep_3_covariance_avm_byteenable(covariance_function_out_memdep_3_covariance_avm_byteenable),
        .out_memdep_3_covariance_avm_enable(covariance_function_out_memdep_3_covariance_avm_enable),
        .out_memdep_3_covariance_avm_read(covariance_function_out_memdep_3_covariance_avm_read),
        .out_memdep_3_covariance_avm_write(covariance_function_out_memdep_3_covariance_avm_write),
        .out_memdep_3_covariance_avm_writedata(covariance_function_out_memdep_3_covariance_avm_writedata),
        .out_memdep_4_covariance_avm_address(covariance_function_out_memdep_4_covariance_avm_address),
        .out_memdep_4_covariance_avm_burstcount(covariance_function_out_memdep_4_covariance_avm_burstcount),
        .out_memdep_4_covariance_avm_byteenable(covariance_function_out_memdep_4_covariance_avm_byteenable),
        .out_memdep_4_covariance_avm_enable(covariance_function_out_memdep_4_covariance_avm_enable),
        .out_memdep_4_covariance_avm_read(covariance_function_out_memdep_4_covariance_avm_read),
        .out_memdep_4_covariance_avm_write(covariance_function_out_memdep_4_covariance_avm_write),
        .out_memdep_4_covariance_avm_writedata(covariance_function_out_memdep_4_covariance_avm_writedata),
        .out_memdep_covariance_avm_address(covariance_function_out_memdep_covariance_avm_address),
        .out_memdep_covariance_avm_burstcount(covariance_function_out_memdep_covariance_avm_burstcount),
        .out_memdep_covariance_avm_byteenable(covariance_function_out_memdep_covariance_avm_byteenable),
        .out_memdep_covariance_avm_enable(covariance_function_out_memdep_covariance_avm_enable),
        .out_memdep_covariance_avm_read(covariance_function_out_memdep_covariance_avm_read),
        .out_memdep_covariance_avm_write(covariance_function_out_memdep_covariance_avm_write),
        .out_memdep_covariance_avm_writedata(covariance_function_out_memdep_covariance_avm_writedata),
        .out_o_active_memdep_4(),
        .out_stall_out(),
        .out_unnamed_covariance11_covariance_avm_address(covariance_function_out_unnamed_covariance11_covariance_avm_address),
        .out_unnamed_covariance11_covariance_avm_burstcount(covariance_function_out_unnamed_covariance11_covariance_avm_burstcount),
        .out_unnamed_covariance11_covariance_avm_byteenable(covariance_function_out_unnamed_covariance11_covariance_avm_byteenable),
        .out_unnamed_covariance11_covariance_avm_enable(covariance_function_out_unnamed_covariance11_covariance_avm_enable),
        .out_unnamed_covariance11_covariance_avm_read(covariance_function_out_unnamed_covariance11_covariance_avm_read),
        .out_unnamed_covariance11_covariance_avm_write(covariance_function_out_unnamed_covariance11_covariance_avm_write),
        .out_unnamed_covariance11_covariance_avm_writedata(covariance_function_out_unnamed_covariance11_covariance_avm_writedata),
        .out_unnamed_covariance4_covariance_avm_address(covariance_function_out_unnamed_covariance4_covariance_avm_address),
        .out_unnamed_covariance4_covariance_avm_burstcount(covariance_function_out_unnamed_covariance4_covariance_avm_burstcount),
        .out_unnamed_covariance4_covariance_avm_byteenable(covariance_function_out_unnamed_covariance4_covariance_avm_byteenable),
        .out_unnamed_covariance4_covariance_avm_enable(covariance_function_out_unnamed_covariance4_covariance_avm_enable),
        .out_unnamed_covariance4_covariance_avm_read(covariance_function_out_unnamed_covariance4_covariance_avm_read),
        .out_unnamed_covariance4_covariance_avm_write(covariance_function_out_unnamed_covariance4_covariance_avm_write),
        .out_unnamed_covariance4_covariance_avm_writedata(covariance_function_out_unnamed_covariance4_covariance_avm_writedata),
        .out_unnamed_covariance5_covariance_avm_address(covariance_function_out_unnamed_covariance5_covariance_avm_address),
        .out_unnamed_covariance5_covariance_avm_burstcount(covariance_function_out_unnamed_covariance5_covariance_avm_burstcount),
        .out_unnamed_covariance5_covariance_avm_byteenable(covariance_function_out_unnamed_covariance5_covariance_avm_byteenable),
        .out_unnamed_covariance5_covariance_avm_enable(covariance_function_out_unnamed_covariance5_covariance_avm_enable),
        .out_unnamed_covariance5_covariance_avm_read(covariance_function_out_unnamed_covariance5_covariance_avm_read),
        .out_unnamed_covariance5_covariance_avm_write(covariance_function_out_unnamed_covariance5_covariance_avm_write),
        .out_unnamed_covariance5_covariance_avm_writedata(covariance_function_out_unnamed_covariance5_covariance_avm_writedata),
        .out_unnamed_covariance6_covariance_avm_address(covariance_function_out_unnamed_covariance6_covariance_avm_address),
        .out_unnamed_covariance6_covariance_avm_burstcount(covariance_function_out_unnamed_covariance6_covariance_avm_burstcount),
        .out_unnamed_covariance6_covariance_avm_byteenable(covariance_function_out_unnamed_covariance6_covariance_avm_byteenable),
        .out_unnamed_covariance6_covariance_avm_enable(covariance_function_out_unnamed_covariance6_covariance_avm_enable),
        .out_unnamed_covariance6_covariance_avm_read(covariance_function_out_unnamed_covariance6_covariance_avm_read),
        .out_unnamed_covariance6_covariance_avm_write(covariance_function_out_unnamed_covariance6_covariance_avm_write),
        .out_unnamed_covariance6_covariance_avm_writedata(covariance_function_out_unnamed_covariance6_covariance_avm_writedata),
        .out_unnamed_covariance7_covariance_avm_address(covariance_function_out_unnamed_covariance7_covariance_avm_address),
        .out_unnamed_covariance7_covariance_avm_burstcount(covariance_function_out_unnamed_covariance7_covariance_avm_burstcount),
        .out_unnamed_covariance7_covariance_avm_byteenable(covariance_function_out_unnamed_covariance7_covariance_avm_byteenable),
        .out_unnamed_covariance7_covariance_avm_enable(covariance_function_out_unnamed_covariance7_covariance_avm_enable),
        .out_unnamed_covariance7_covariance_avm_read(covariance_function_out_unnamed_covariance7_covariance_avm_read),
        .out_unnamed_covariance7_covariance_avm_write(covariance_function_out_unnamed_covariance7_covariance_avm_write),
        .out_unnamed_covariance7_covariance_avm_writedata(covariance_function_out_unnamed_covariance7_covariance_avm_writedata),
        .out_unnamed_covariance8_covariance_avm_address(covariance_function_out_unnamed_covariance8_covariance_avm_address),
        .out_unnamed_covariance8_covariance_avm_burstcount(covariance_function_out_unnamed_covariance8_covariance_avm_burstcount),
        .out_unnamed_covariance8_covariance_avm_byteenable(covariance_function_out_unnamed_covariance8_covariance_avm_byteenable),
        .out_unnamed_covariance8_covariance_avm_enable(covariance_function_out_unnamed_covariance8_covariance_avm_enable),
        .out_unnamed_covariance8_covariance_avm_read(covariance_function_out_unnamed_covariance8_covariance_avm_read),
        .out_unnamed_covariance8_covariance_avm_write(covariance_function_out_unnamed_covariance8_covariance_avm_write),
        .out_unnamed_covariance8_covariance_avm_writedata(covariance_function_out_unnamed_covariance8_covariance_avm_writedata),
        .out_unnamed_covariance9_covariance_avm_address(covariance_function_out_unnamed_covariance9_covariance_avm_address),
        .out_unnamed_covariance9_covariance_avm_burstcount(covariance_function_out_unnamed_covariance9_covariance_avm_burstcount),
        .out_unnamed_covariance9_covariance_avm_byteenable(covariance_function_out_unnamed_covariance9_covariance_avm_byteenable),
        .out_unnamed_covariance9_covariance_avm_enable(covariance_function_out_unnamed_covariance9_covariance_avm_enable),
        .out_unnamed_covariance9_covariance_avm_read(covariance_function_out_unnamed_covariance9_covariance_avm_read),
        .out_unnamed_covariance9_covariance_avm_write(covariance_function_out_unnamed_covariance9_covariance_avm_write),
        .out_unnamed_covariance9_covariance_avm_writedata(covariance_function_out_unnamed_covariance9_covariance_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_memdep_1_covariance_address(GPOUT,71)
    assign avm_memdep_1_covariance_address = covariance_function_out_memdep_1_covariance_avm_address;

    // avm_memdep_1_covariance_burstcount(GPOUT,72)
    assign avm_memdep_1_covariance_burstcount = covariance_function_out_memdep_1_covariance_avm_burstcount;

    // avm_memdep_1_covariance_byteenable(GPOUT,73)
    assign avm_memdep_1_covariance_byteenable = covariance_function_out_memdep_1_covariance_avm_byteenable;

    // avm_memdep_1_covariance_enable(GPOUT,74)
    assign avm_memdep_1_covariance_enable = covariance_function_out_memdep_1_covariance_avm_enable;

    // avm_memdep_1_covariance_read(GPOUT,75)
    assign avm_memdep_1_covariance_read = covariance_function_out_memdep_1_covariance_avm_read;

    // avm_memdep_1_covariance_write(GPOUT,76)
    assign avm_memdep_1_covariance_write = covariance_function_out_memdep_1_covariance_avm_write;

    // avm_memdep_1_covariance_writedata(GPOUT,77)
    assign avm_memdep_1_covariance_writedata = covariance_function_out_memdep_1_covariance_avm_writedata;

    // avm_memdep_2_covariance_address(GPOUT,78)
    assign avm_memdep_2_covariance_address = covariance_function_out_memdep_2_covariance_avm_address;

    // avm_memdep_2_covariance_burstcount(GPOUT,79)
    assign avm_memdep_2_covariance_burstcount = covariance_function_out_memdep_2_covariance_avm_burstcount;

    // avm_memdep_2_covariance_byteenable(GPOUT,80)
    assign avm_memdep_2_covariance_byteenable = covariance_function_out_memdep_2_covariance_avm_byteenable;

    // avm_memdep_2_covariance_enable(GPOUT,81)
    assign avm_memdep_2_covariance_enable = covariance_function_out_memdep_2_covariance_avm_enable;

    // avm_memdep_2_covariance_read(GPOUT,82)
    assign avm_memdep_2_covariance_read = covariance_function_out_memdep_2_covariance_avm_read;

    // avm_memdep_2_covariance_write(GPOUT,83)
    assign avm_memdep_2_covariance_write = covariance_function_out_memdep_2_covariance_avm_write;

    // avm_memdep_2_covariance_writedata(GPOUT,84)
    assign avm_memdep_2_covariance_writedata = covariance_function_out_memdep_2_covariance_avm_writedata;

    // avm_memdep_3_covariance_address(GPOUT,85)
    assign avm_memdep_3_covariance_address = covariance_function_out_memdep_3_covariance_avm_address;

    // avm_memdep_3_covariance_burstcount(GPOUT,86)
    assign avm_memdep_3_covariance_burstcount = covariance_function_out_memdep_3_covariance_avm_burstcount;

    // avm_memdep_3_covariance_byteenable(GPOUT,87)
    assign avm_memdep_3_covariance_byteenable = covariance_function_out_memdep_3_covariance_avm_byteenable;

    // avm_memdep_3_covariance_enable(GPOUT,88)
    assign avm_memdep_3_covariance_enable = covariance_function_out_memdep_3_covariance_avm_enable;

    // avm_memdep_3_covariance_read(GPOUT,89)
    assign avm_memdep_3_covariance_read = covariance_function_out_memdep_3_covariance_avm_read;

    // avm_memdep_3_covariance_write(GPOUT,90)
    assign avm_memdep_3_covariance_write = covariance_function_out_memdep_3_covariance_avm_write;

    // avm_memdep_3_covariance_writedata(GPOUT,91)
    assign avm_memdep_3_covariance_writedata = covariance_function_out_memdep_3_covariance_avm_writedata;

    // avm_memdep_4_covariance_address(GPOUT,92)
    assign avm_memdep_4_covariance_address = covariance_function_out_memdep_4_covariance_avm_address;

    // avm_memdep_4_covariance_burstcount(GPOUT,93)
    assign avm_memdep_4_covariance_burstcount = covariance_function_out_memdep_4_covariance_avm_burstcount;

    // avm_memdep_4_covariance_byteenable(GPOUT,94)
    assign avm_memdep_4_covariance_byteenable = covariance_function_out_memdep_4_covariance_avm_byteenable;

    // avm_memdep_4_covariance_enable(GPOUT,95)
    assign avm_memdep_4_covariance_enable = covariance_function_out_memdep_4_covariance_avm_enable;

    // avm_memdep_4_covariance_read(GPOUT,96)
    assign avm_memdep_4_covariance_read = covariance_function_out_memdep_4_covariance_avm_read;

    // avm_memdep_4_covariance_write(GPOUT,97)
    assign avm_memdep_4_covariance_write = covariance_function_out_memdep_4_covariance_avm_write;

    // avm_memdep_4_covariance_writedata(GPOUT,98)
    assign avm_memdep_4_covariance_writedata = covariance_function_out_memdep_4_covariance_avm_writedata;

    // avm_memdep_covariance_address(GPOUT,99)
    assign avm_memdep_covariance_address = covariance_function_out_memdep_covariance_avm_address;

    // avm_memdep_covariance_burstcount(GPOUT,100)
    assign avm_memdep_covariance_burstcount = covariance_function_out_memdep_covariance_avm_burstcount;

    // avm_memdep_covariance_byteenable(GPOUT,101)
    assign avm_memdep_covariance_byteenable = covariance_function_out_memdep_covariance_avm_byteenable;

    // avm_memdep_covariance_enable(GPOUT,102)
    assign avm_memdep_covariance_enable = covariance_function_out_memdep_covariance_avm_enable;

    // avm_memdep_covariance_read(GPOUT,103)
    assign avm_memdep_covariance_read = covariance_function_out_memdep_covariance_avm_read;

    // avm_memdep_covariance_write(GPOUT,104)
    assign avm_memdep_covariance_write = covariance_function_out_memdep_covariance_avm_write;

    // avm_memdep_covariance_writedata(GPOUT,105)
    assign avm_memdep_covariance_writedata = covariance_function_out_memdep_covariance_avm_writedata;

    // avm_unnamed_covariance11_covariance_address(GPOUT,106)
    assign avm_unnamed_covariance11_covariance_address = covariance_function_out_unnamed_covariance11_covariance_avm_address;

    // avm_unnamed_covariance11_covariance_burstcount(GPOUT,107)
    assign avm_unnamed_covariance11_covariance_burstcount = covariance_function_out_unnamed_covariance11_covariance_avm_burstcount;

    // avm_unnamed_covariance11_covariance_byteenable(GPOUT,108)
    assign avm_unnamed_covariance11_covariance_byteenable = covariance_function_out_unnamed_covariance11_covariance_avm_byteenable;

    // avm_unnamed_covariance11_covariance_enable(GPOUT,109)
    assign avm_unnamed_covariance11_covariance_enable = covariance_function_out_unnamed_covariance11_covariance_avm_enable;

    // avm_unnamed_covariance11_covariance_read(GPOUT,110)
    assign avm_unnamed_covariance11_covariance_read = covariance_function_out_unnamed_covariance11_covariance_avm_read;

    // avm_unnamed_covariance11_covariance_write(GPOUT,111)
    assign avm_unnamed_covariance11_covariance_write = covariance_function_out_unnamed_covariance11_covariance_avm_write;

    // avm_unnamed_covariance11_covariance_writedata(GPOUT,112)
    assign avm_unnamed_covariance11_covariance_writedata = covariance_function_out_unnamed_covariance11_covariance_avm_writedata;

    // avm_unnamed_covariance4_covariance_address(GPOUT,113)
    assign avm_unnamed_covariance4_covariance_address = covariance_function_out_unnamed_covariance4_covariance_avm_address;

    // avm_unnamed_covariance4_covariance_burstcount(GPOUT,114)
    assign avm_unnamed_covariance4_covariance_burstcount = covariance_function_out_unnamed_covariance4_covariance_avm_burstcount;

    // avm_unnamed_covariance4_covariance_byteenable(GPOUT,115)
    assign avm_unnamed_covariance4_covariance_byteenable = covariance_function_out_unnamed_covariance4_covariance_avm_byteenable;

    // avm_unnamed_covariance4_covariance_enable(GPOUT,116)
    assign avm_unnamed_covariance4_covariance_enable = covariance_function_out_unnamed_covariance4_covariance_avm_enable;

    // avm_unnamed_covariance4_covariance_read(GPOUT,117)
    assign avm_unnamed_covariance4_covariance_read = covariance_function_out_unnamed_covariance4_covariance_avm_read;

    // avm_unnamed_covariance4_covariance_write(GPOUT,118)
    assign avm_unnamed_covariance4_covariance_write = covariance_function_out_unnamed_covariance4_covariance_avm_write;

    // avm_unnamed_covariance4_covariance_writedata(GPOUT,119)
    assign avm_unnamed_covariance4_covariance_writedata = covariance_function_out_unnamed_covariance4_covariance_avm_writedata;

    // avm_unnamed_covariance5_covariance_address(GPOUT,120)
    assign avm_unnamed_covariance5_covariance_address = covariance_function_out_unnamed_covariance5_covariance_avm_address;

    // avm_unnamed_covariance5_covariance_burstcount(GPOUT,121)
    assign avm_unnamed_covariance5_covariance_burstcount = covariance_function_out_unnamed_covariance5_covariance_avm_burstcount;

    // avm_unnamed_covariance5_covariance_byteenable(GPOUT,122)
    assign avm_unnamed_covariance5_covariance_byteenable = covariance_function_out_unnamed_covariance5_covariance_avm_byteenable;

    // avm_unnamed_covariance5_covariance_enable(GPOUT,123)
    assign avm_unnamed_covariance5_covariance_enable = covariance_function_out_unnamed_covariance5_covariance_avm_enable;

    // avm_unnamed_covariance5_covariance_read(GPOUT,124)
    assign avm_unnamed_covariance5_covariance_read = covariance_function_out_unnamed_covariance5_covariance_avm_read;

    // avm_unnamed_covariance5_covariance_write(GPOUT,125)
    assign avm_unnamed_covariance5_covariance_write = covariance_function_out_unnamed_covariance5_covariance_avm_write;

    // avm_unnamed_covariance5_covariance_writedata(GPOUT,126)
    assign avm_unnamed_covariance5_covariance_writedata = covariance_function_out_unnamed_covariance5_covariance_avm_writedata;

    // avm_unnamed_covariance6_covariance_address(GPOUT,127)
    assign avm_unnamed_covariance6_covariance_address = covariance_function_out_unnamed_covariance6_covariance_avm_address;

    // avm_unnamed_covariance6_covariance_burstcount(GPOUT,128)
    assign avm_unnamed_covariance6_covariance_burstcount = covariance_function_out_unnamed_covariance6_covariance_avm_burstcount;

    // avm_unnamed_covariance6_covariance_byteenable(GPOUT,129)
    assign avm_unnamed_covariance6_covariance_byteenable = covariance_function_out_unnamed_covariance6_covariance_avm_byteenable;

    // avm_unnamed_covariance6_covariance_enable(GPOUT,130)
    assign avm_unnamed_covariance6_covariance_enable = covariance_function_out_unnamed_covariance6_covariance_avm_enable;

    // avm_unnamed_covariance6_covariance_read(GPOUT,131)
    assign avm_unnamed_covariance6_covariance_read = covariance_function_out_unnamed_covariance6_covariance_avm_read;

    // avm_unnamed_covariance6_covariance_write(GPOUT,132)
    assign avm_unnamed_covariance6_covariance_write = covariance_function_out_unnamed_covariance6_covariance_avm_write;

    // avm_unnamed_covariance6_covariance_writedata(GPOUT,133)
    assign avm_unnamed_covariance6_covariance_writedata = covariance_function_out_unnamed_covariance6_covariance_avm_writedata;

    // avm_unnamed_covariance7_covariance_address(GPOUT,134)
    assign avm_unnamed_covariance7_covariance_address = covariance_function_out_unnamed_covariance7_covariance_avm_address;

    // avm_unnamed_covariance7_covariance_burstcount(GPOUT,135)
    assign avm_unnamed_covariance7_covariance_burstcount = covariance_function_out_unnamed_covariance7_covariance_avm_burstcount;

    // avm_unnamed_covariance7_covariance_byteenable(GPOUT,136)
    assign avm_unnamed_covariance7_covariance_byteenable = covariance_function_out_unnamed_covariance7_covariance_avm_byteenable;

    // avm_unnamed_covariance7_covariance_enable(GPOUT,137)
    assign avm_unnamed_covariance7_covariance_enable = covariance_function_out_unnamed_covariance7_covariance_avm_enable;

    // avm_unnamed_covariance7_covariance_read(GPOUT,138)
    assign avm_unnamed_covariance7_covariance_read = covariance_function_out_unnamed_covariance7_covariance_avm_read;

    // avm_unnamed_covariance7_covariance_write(GPOUT,139)
    assign avm_unnamed_covariance7_covariance_write = covariance_function_out_unnamed_covariance7_covariance_avm_write;

    // avm_unnamed_covariance7_covariance_writedata(GPOUT,140)
    assign avm_unnamed_covariance7_covariance_writedata = covariance_function_out_unnamed_covariance7_covariance_avm_writedata;

    // avm_unnamed_covariance8_covariance_address(GPOUT,141)
    assign avm_unnamed_covariance8_covariance_address = covariance_function_out_unnamed_covariance8_covariance_avm_address;

    // avm_unnamed_covariance8_covariance_burstcount(GPOUT,142)
    assign avm_unnamed_covariance8_covariance_burstcount = covariance_function_out_unnamed_covariance8_covariance_avm_burstcount;

    // avm_unnamed_covariance8_covariance_byteenable(GPOUT,143)
    assign avm_unnamed_covariance8_covariance_byteenable = covariance_function_out_unnamed_covariance8_covariance_avm_byteenable;

    // avm_unnamed_covariance8_covariance_enable(GPOUT,144)
    assign avm_unnamed_covariance8_covariance_enable = covariance_function_out_unnamed_covariance8_covariance_avm_enable;

    // avm_unnamed_covariance8_covariance_read(GPOUT,145)
    assign avm_unnamed_covariance8_covariance_read = covariance_function_out_unnamed_covariance8_covariance_avm_read;

    // avm_unnamed_covariance8_covariance_write(GPOUT,146)
    assign avm_unnamed_covariance8_covariance_write = covariance_function_out_unnamed_covariance8_covariance_avm_write;

    // avm_unnamed_covariance8_covariance_writedata(GPOUT,147)
    assign avm_unnamed_covariance8_covariance_writedata = covariance_function_out_unnamed_covariance8_covariance_avm_writedata;

    // avm_unnamed_covariance9_covariance_address(GPOUT,148)
    assign avm_unnamed_covariance9_covariance_address = covariance_function_out_unnamed_covariance9_covariance_avm_address;

    // avm_unnamed_covariance9_covariance_burstcount(GPOUT,149)
    assign avm_unnamed_covariance9_covariance_burstcount = covariance_function_out_unnamed_covariance9_covariance_avm_burstcount;

    // avm_unnamed_covariance9_covariance_byteenable(GPOUT,150)
    assign avm_unnamed_covariance9_covariance_byteenable = covariance_function_out_unnamed_covariance9_covariance_avm_byteenable;

    // avm_unnamed_covariance9_covariance_enable(GPOUT,151)
    assign avm_unnamed_covariance9_covariance_enable = covariance_function_out_unnamed_covariance9_covariance_avm_enable;

    // avm_unnamed_covariance9_covariance_read(GPOUT,152)
    assign avm_unnamed_covariance9_covariance_read = covariance_function_out_unnamed_covariance9_covariance_avm_read;

    // avm_unnamed_covariance9_covariance_write(GPOUT,153)
    assign avm_unnamed_covariance9_covariance_write = covariance_function_out_unnamed_covariance9_covariance_avm_write;

    // avm_unnamed_covariance9_covariance_writedata(GPOUT,154)
    assign avm_unnamed_covariance9_covariance_writedata = covariance_function_out_unnamed_covariance9_covariance_avm_writedata;

    // avst_iord_bl_call_covariance_almost_full(GPOUT,155)
    assign avst_iord_bl_call_covariance_almost_full = covariance_function_out_iord_bl_call_covariance_o_fifoalmost_full;

    // avst_iord_bl_call_covariance_ready(GPOUT,156)
    assign avst_iord_bl_call_covariance_ready = covariance_function_out_iord_bl_call_covariance_o_fifoready;

    // avst_iowr_bl_return_covariance_data(GPOUT,157)
    assign avst_iowr_bl_return_covariance_data = covariance_function_out_iowr_bl_return_covariance_o_fifodata;

    // avst_iowr_bl_return_covariance_valid(GPOUT,158)
    assign avst_iowr_bl_return_covariance_valid = covariance_function_out_iowr_bl_return_covariance_o_fifovalid;

    // not_ready(LOGICAL,69)
    assign not_ready_q = ~ (covariance_function_out_iord_bl_call_covariance_o_fifoready);

    // busy_and(LOGICAL,2)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,162)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,161)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,3)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,159)
    assign busy = busy_or_q;

    // done(GPOUT,160)
    assign done = covariance_function_out_iowr_bl_return_covariance_o_fifovalid;

endmodule
