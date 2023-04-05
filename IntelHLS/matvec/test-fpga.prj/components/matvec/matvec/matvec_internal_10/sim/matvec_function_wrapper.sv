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

// SystemVerilog created from matvec_function_wrapper
// Created for function/kernel matvec
// SystemVerilog created on Wed Apr  5 15:28:29 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module matvec_function_wrapper (
    input wire [63:0] M,
    input wire [63:0] Out0,
    input wire [63:0] V,
    input wire [31:0] avm_memdep_1_matvec_readdata,
    input wire [0:0] avm_memdep_1_matvec_readdatavalid,
    input wire [0:0] avm_memdep_1_matvec_waitrequest,
    input wire [0:0] avm_memdep_1_matvec_writeack,
    input wire [31:0] avm_memdep_2_matvec_readdata,
    input wire [0:0] avm_memdep_2_matvec_readdatavalid,
    input wire [0:0] avm_memdep_2_matvec_waitrequest,
    input wire [0:0] avm_memdep_2_matvec_writeack,
    input wire [31:0] avm_memdep_3_matvec_readdata,
    input wire [0:0] avm_memdep_3_matvec_readdatavalid,
    input wire [0:0] avm_memdep_3_matvec_waitrequest,
    input wire [0:0] avm_memdep_3_matvec_writeack,
    input wire [63:0] avm_memdep_4_matvec_readdata,
    input wire [0:0] avm_memdep_4_matvec_readdatavalid,
    input wire [0:0] avm_memdep_4_matvec_waitrequest,
    input wire [0:0] avm_memdep_4_matvec_writeack,
    input wire [31:0] avm_memdep_matvec_readdata,
    input wire [0:0] avm_memdep_matvec_readdatavalid,
    input wire [0:0] avm_memdep_matvec_waitrequest,
    input wire [0:0] avm_memdep_matvec_writeack,
    input wire [31:0] avm_unnamed_matvec10_matvec_readdata,
    input wire [0:0] avm_unnamed_matvec10_matvec_readdatavalid,
    input wire [0:0] avm_unnamed_matvec10_matvec_waitrequest,
    input wire [0:0] avm_unnamed_matvec10_matvec_writeack,
    input wire [31:0] avm_unnamed_matvec11_matvec_readdata,
    input wire [0:0] avm_unnamed_matvec11_matvec_readdatavalid,
    input wire [0:0] avm_unnamed_matvec11_matvec_waitrequest,
    input wire [0:0] avm_unnamed_matvec11_matvec_writeack,
    input wire [63:0] avm_unnamed_matvec6_matvec_readdata,
    input wire [0:0] avm_unnamed_matvec6_matvec_readdatavalid,
    input wire [0:0] avm_unnamed_matvec6_matvec_waitrequest,
    input wire [0:0] avm_unnamed_matvec6_matvec_writeack,
    input wire [63:0] avm_unnamed_matvec7_matvec_readdata,
    input wire [0:0] avm_unnamed_matvec7_matvec_readdatavalid,
    input wire [0:0] avm_unnamed_matvec7_matvec_waitrequest,
    input wire [0:0] avm_unnamed_matvec7_matvec_writeack,
    input wire [63:0] avm_unnamed_matvec8_matvec_readdata,
    input wire [0:0] avm_unnamed_matvec8_matvec_readdatavalid,
    input wire [0:0] avm_unnamed_matvec8_matvec_waitrequest,
    input wire [0:0] avm_unnamed_matvec8_matvec_writeack,
    input wire [31:0] avm_unnamed_matvec9_matvec_readdata,
    input wire [0:0] avm_unnamed_matvec9_matvec_readdatavalid,
    input wire [0:0] avm_unnamed_matvec9_matvec_waitrequest,
    input wire [0:0] avm_unnamed_matvec9_matvec_writeack,
    input wire [191:0] avst_iord_bl_call_matvec_data,
    input wire [0:0] avst_iord_bl_call_matvec_valid,
    input wire [0:0] avst_iowr_bl_return_matvec_almostfull,
    input wire [0:0] avst_iowr_bl_return_matvec_ready,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [31:0] avm_memdep_1_matvec_address,
    output wire [0:0] avm_memdep_1_matvec_burstcount,
    output wire [3:0] avm_memdep_1_matvec_byteenable,
    output wire [0:0] avm_memdep_1_matvec_enable,
    output wire [0:0] avm_memdep_1_matvec_read,
    output wire [0:0] avm_memdep_1_matvec_write,
    output wire [31:0] avm_memdep_1_matvec_writedata,
    output wire [31:0] avm_memdep_2_matvec_address,
    output wire [0:0] avm_memdep_2_matvec_burstcount,
    output wire [3:0] avm_memdep_2_matvec_byteenable,
    output wire [0:0] avm_memdep_2_matvec_enable,
    output wire [0:0] avm_memdep_2_matvec_read,
    output wire [0:0] avm_memdep_2_matvec_write,
    output wire [31:0] avm_memdep_2_matvec_writedata,
    output wire [31:0] avm_memdep_3_matvec_address,
    output wire [0:0] avm_memdep_3_matvec_burstcount,
    output wire [3:0] avm_memdep_3_matvec_byteenable,
    output wire [0:0] avm_memdep_3_matvec_enable,
    output wire [0:0] avm_memdep_3_matvec_read,
    output wire [0:0] avm_memdep_3_matvec_write,
    output wire [31:0] avm_memdep_3_matvec_writedata,
    output wire [63:0] avm_memdep_4_matvec_address,
    output wire [0:0] avm_memdep_4_matvec_burstcount,
    output wire [7:0] avm_memdep_4_matvec_byteenable,
    output wire [0:0] avm_memdep_4_matvec_enable,
    output wire [0:0] avm_memdep_4_matvec_read,
    output wire [0:0] avm_memdep_4_matvec_write,
    output wire [63:0] avm_memdep_4_matvec_writedata,
    output wire [31:0] avm_memdep_matvec_address,
    output wire [0:0] avm_memdep_matvec_burstcount,
    output wire [3:0] avm_memdep_matvec_byteenable,
    output wire [0:0] avm_memdep_matvec_enable,
    output wire [0:0] avm_memdep_matvec_read,
    output wire [0:0] avm_memdep_matvec_write,
    output wire [31:0] avm_memdep_matvec_writedata,
    output wire [31:0] avm_unnamed_matvec10_matvec_address,
    output wire [0:0] avm_unnamed_matvec10_matvec_burstcount,
    output wire [3:0] avm_unnamed_matvec10_matvec_byteenable,
    output wire [0:0] avm_unnamed_matvec10_matvec_enable,
    output wire [0:0] avm_unnamed_matvec10_matvec_read,
    output wire [0:0] avm_unnamed_matvec10_matvec_write,
    output wire [31:0] avm_unnamed_matvec10_matvec_writedata,
    output wire [31:0] avm_unnamed_matvec11_matvec_address,
    output wire [0:0] avm_unnamed_matvec11_matvec_burstcount,
    output wire [3:0] avm_unnamed_matvec11_matvec_byteenable,
    output wire [0:0] avm_unnamed_matvec11_matvec_enable,
    output wire [0:0] avm_unnamed_matvec11_matvec_read,
    output wire [0:0] avm_unnamed_matvec11_matvec_write,
    output wire [31:0] avm_unnamed_matvec11_matvec_writedata,
    output wire [63:0] avm_unnamed_matvec6_matvec_address,
    output wire [0:0] avm_unnamed_matvec6_matvec_burstcount,
    output wire [7:0] avm_unnamed_matvec6_matvec_byteenable,
    output wire [0:0] avm_unnamed_matvec6_matvec_enable,
    output wire [0:0] avm_unnamed_matvec6_matvec_read,
    output wire [0:0] avm_unnamed_matvec6_matvec_write,
    output wire [63:0] avm_unnamed_matvec6_matvec_writedata,
    output wire [63:0] avm_unnamed_matvec7_matvec_address,
    output wire [0:0] avm_unnamed_matvec7_matvec_burstcount,
    output wire [7:0] avm_unnamed_matvec7_matvec_byteenable,
    output wire [0:0] avm_unnamed_matvec7_matvec_enable,
    output wire [0:0] avm_unnamed_matvec7_matvec_read,
    output wire [0:0] avm_unnamed_matvec7_matvec_write,
    output wire [63:0] avm_unnamed_matvec7_matvec_writedata,
    output wire [63:0] avm_unnamed_matvec8_matvec_address,
    output wire [0:0] avm_unnamed_matvec8_matvec_burstcount,
    output wire [7:0] avm_unnamed_matvec8_matvec_byteenable,
    output wire [0:0] avm_unnamed_matvec8_matvec_enable,
    output wire [0:0] avm_unnamed_matvec8_matvec_read,
    output wire [0:0] avm_unnamed_matvec8_matvec_write,
    output wire [63:0] avm_unnamed_matvec8_matvec_writedata,
    output wire [31:0] avm_unnamed_matvec9_matvec_address,
    output wire [0:0] avm_unnamed_matvec9_matvec_burstcount,
    output wire [3:0] avm_unnamed_matvec9_matvec_byteenable,
    output wire [0:0] avm_unnamed_matvec9_matvec_enable,
    output wire [0:0] avm_unnamed_matvec9_matvec_read,
    output wire [0:0] avm_unnamed_matvec9_matvec_write,
    output wire [31:0] avm_unnamed_matvec9_matvec_writedata,
    output wire [0:0] avst_iord_bl_call_matvec_almost_full,
    output wire [0:0] avst_iord_bl_call_matvec_ready,
    output wire [0:0] avst_iowr_bl_return_matvec_data,
    output wire [0:0] avst_iowr_bl_return_matvec_valid,
    output wire [0:0] busy,
    output wire [0:0] done,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] M_const_q;
    wire [0:0] busy_and_q;
    wire [0:0] busy_or_q;
    wire [191:0] implicit_input_q;
    wire [0:0] matvec_function_out_iord_bl_call_matvec_o_fifoalmost_full;
    wire [0:0] matvec_function_out_iord_bl_call_matvec_o_fifoready;
    wire [0:0] matvec_function_out_iowr_bl_return_matvec_o_fifodata;
    wire [0:0] matvec_function_out_iowr_bl_return_matvec_o_fifovalid;
    wire [31:0] matvec_function_out_memdep_1_matvec_avm_address;
    wire [0:0] matvec_function_out_memdep_1_matvec_avm_burstcount;
    wire [3:0] matvec_function_out_memdep_1_matvec_avm_byteenable;
    wire [0:0] matvec_function_out_memdep_1_matvec_avm_enable;
    wire [0:0] matvec_function_out_memdep_1_matvec_avm_read;
    wire [0:0] matvec_function_out_memdep_1_matvec_avm_write;
    wire [31:0] matvec_function_out_memdep_1_matvec_avm_writedata;
    wire [31:0] matvec_function_out_memdep_2_matvec_avm_address;
    wire [0:0] matvec_function_out_memdep_2_matvec_avm_burstcount;
    wire [3:0] matvec_function_out_memdep_2_matvec_avm_byteenable;
    wire [0:0] matvec_function_out_memdep_2_matvec_avm_enable;
    wire [0:0] matvec_function_out_memdep_2_matvec_avm_read;
    wire [0:0] matvec_function_out_memdep_2_matvec_avm_write;
    wire [31:0] matvec_function_out_memdep_2_matvec_avm_writedata;
    wire [31:0] matvec_function_out_memdep_3_matvec_avm_address;
    wire [0:0] matvec_function_out_memdep_3_matvec_avm_burstcount;
    wire [3:0] matvec_function_out_memdep_3_matvec_avm_byteenable;
    wire [0:0] matvec_function_out_memdep_3_matvec_avm_enable;
    wire [0:0] matvec_function_out_memdep_3_matvec_avm_read;
    wire [0:0] matvec_function_out_memdep_3_matvec_avm_write;
    wire [31:0] matvec_function_out_memdep_3_matvec_avm_writedata;
    wire [63:0] matvec_function_out_memdep_4_matvec_avm_address;
    wire [0:0] matvec_function_out_memdep_4_matvec_avm_burstcount;
    wire [7:0] matvec_function_out_memdep_4_matvec_avm_byteenable;
    wire [0:0] matvec_function_out_memdep_4_matvec_avm_enable;
    wire [0:0] matvec_function_out_memdep_4_matvec_avm_read;
    wire [0:0] matvec_function_out_memdep_4_matvec_avm_write;
    wire [63:0] matvec_function_out_memdep_4_matvec_avm_writedata;
    wire [31:0] matvec_function_out_memdep_matvec_avm_address;
    wire [0:0] matvec_function_out_memdep_matvec_avm_burstcount;
    wire [3:0] matvec_function_out_memdep_matvec_avm_byteenable;
    wire [0:0] matvec_function_out_memdep_matvec_avm_enable;
    wire [0:0] matvec_function_out_memdep_matvec_avm_read;
    wire [0:0] matvec_function_out_memdep_matvec_avm_write;
    wire [31:0] matvec_function_out_memdep_matvec_avm_writedata;
    wire [31:0] matvec_function_out_unnamed_matvec10_matvec_avm_address;
    wire [0:0] matvec_function_out_unnamed_matvec10_matvec_avm_burstcount;
    wire [3:0] matvec_function_out_unnamed_matvec10_matvec_avm_byteenable;
    wire [0:0] matvec_function_out_unnamed_matvec10_matvec_avm_enable;
    wire [0:0] matvec_function_out_unnamed_matvec10_matvec_avm_read;
    wire [0:0] matvec_function_out_unnamed_matvec10_matvec_avm_write;
    wire [31:0] matvec_function_out_unnamed_matvec10_matvec_avm_writedata;
    wire [31:0] matvec_function_out_unnamed_matvec11_matvec_avm_address;
    wire [0:0] matvec_function_out_unnamed_matvec11_matvec_avm_burstcount;
    wire [3:0] matvec_function_out_unnamed_matvec11_matvec_avm_byteenable;
    wire [0:0] matvec_function_out_unnamed_matvec11_matvec_avm_enable;
    wire [0:0] matvec_function_out_unnamed_matvec11_matvec_avm_read;
    wire [0:0] matvec_function_out_unnamed_matvec11_matvec_avm_write;
    wire [31:0] matvec_function_out_unnamed_matvec11_matvec_avm_writedata;
    wire [63:0] matvec_function_out_unnamed_matvec6_matvec_avm_address;
    wire [0:0] matvec_function_out_unnamed_matvec6_matvec_avm_burstcount;
    wire [7:0] matvec_function_out_unnamed_matvec6_matvec_avm_byteenable;
    wire [0:0] matvec_function_out_unnamed_matvec6_matvec_avm_enable;
    wire [0:0] matvec_function_out_unnamed_matvec6_matvec_avm_read;
    wire [0:0] matvec_function_out_unnamed_matvec6_matvec_avm_write;
    wire [63:0] matvec_function_out_unnamed_matvec6_matvec_avm_writedata;
    wire [63:0] matvec_function_out_unnamed_matvec7_matvec_avm_address;
    wire [0:0] matvec_function_out_unnamed_matvec7_matvec_avm_burstcount;
    wire [7:0] matvec_function_out_unnamed_matvec7_matvec_avm_byteenable;
    wire [0:0] matvec_function_out_unnamed_matvec7_matvec_avm_enable;
    wire [0:0] matvec_function_out_unnamed_matvec7_matvec_avm_read;
    wire [0:0] matvec_function_out_unnamed_matvec7_matvec_avm_write;
    wire [63:0] matvec_function_out_unnamed_matvec7_matvec_avm_writedata;
    wire [63:0] matvec_function_out_unnamed_matvec8_matvec_avm_address;
    wire [0:0] matvec_function_out_unnamed_matvec8_matvec_avm_burstcount;
    wire [7:0] matvec_function_out_unnamed_matvec8_matvec_avm_byteenable;
    wire [0:0] matvec_function_out_unnamed_matvec8_matvec_avm_enable;
    wire [0:0] matvec_function_out_unnamed_matvec8_matvec_avm_read;
    wire [0:0] matvec_function_out_unnamed_matvec8_matvec_avm_write;
    wire [63:0] matvec_function_out_unnamed_matvec8_matvec_avm_writedata;
    wire [31:0] matvec_function_out_unnamed_matvec9_matvec_avm_address;
    wire [0:0] matvec_function_out_unnamed_matvec9_matvec_avm_burstcount;
    wire [3:0] matvec_function_out_unnamed_matvec9_matvec_avm_byteenable;
    wire [0:0] matvec_function_out_unnamed_matvec9_matvec_avm_enable;
    wire [0:0] matvec_function_out_unnamed_matvec9_matvec_avm_read;
    wire [0:0] matvec_function_out_unnamed_matvec9_matvec_avm_write;
    wire [31:0] matvec_function_out_unnamed_matvec9_matvec_avm_writedata;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,68)
    assign not_stall_q = ~ (stall);

    // implicit_input(BITJOIN,10)
    assign implicit_input_q = {Out0, V, M};

    // M_const(CONSTANT,2)
    assign M_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // matvec_function(BLACKBOX,66)
    matvec_function thematvec_function (
        .in_arg_M(M_const_q),
        .in_arg_Out0(M_const_q),
        .in_arg_V(M_const_q),
        .in_arg_call(M_const_q),
        .in_arg_return(M_const_q),
        .in_iord_bl_call_matvec_i_fifodata(implicit_input_q),
        .in_iord_bl_call_matvec_i_fifovalid(start),
        .in_iowr_bl_return_matvec_i_fifoready(not_stall_q),
        .in_memdep_1_matvec_avm_readdata(avm_memdep_1_matvec_readdata),
        .in_memdep_1_matvec_avm_readdatavalid(avm_memdep_1_matvec_readdatavalid),
        .in_memdep_1_matvec_avm_waitrequest(avm_memdep_1_matvec_waitrequest),
        .in_memdep_1_matvec_avm_writeack(avm_memdep_1_matvec_writeack),
        .in_memdep_2_matvec_avm_readdata(avm_memdep_2_matvec_readdata),
        .in_memdep_2_matvec_avm_readdatavalid(avm_memdep_2_matvec_readdatavalid),
        .in_memdep_2_matvec_avm_waitrequest(avm_memdep_2_matvec_waitrequest),
        .in_memdep_2_matvec_avm_writeack(avm_memdep_2_matvec_writeack),
        .in_memdep_3_matvec_avm_readdata(avm_memdep_3_matvec_readdata),
        .in_memdep_3_matvec_avm_readdatavalid(avm_memdep_3_matvec_readdatavalid),
        .in_memdep_3_matvec_avm_waitrequest(avm_memdep_3_matvec_waitrequest),
        .in_memdep_3_matvec_avm_writeack(avm_memdep_3_matvec_writeack),
        .in_memdep_4_matvec_avm_readdata(avm_memdep_4_matvec_readdata),
        .in_memdep_4_matvec_avm_readdatavalid(avm_memdep_4_matvec_readdatavalid),
        .in_memdep_4_matvec_avm_waitrequest(avm_memdep_4_matvec_waitrequest),
        .in_memdep_4_matvec_avm_writeack(avm_memdep_4_matvec_writeack),
        .in_memdep_matvec_avm_readdata(avm_memdep_matvec_readdata),
        .in_memdep_matvec_avm_readdatavalid(avm_memdep_matvec_readdatavalid),
        .in_memdep_matvec_avm_waitrequest(avm_memdep_matvec_waitrequest),
        .in_memdep_matvec_avm_writeack(avm_memdep_matvec_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_unnamed_matvec10_matvec_avm_readdata(avm_unnamed_matvec10_matvec_readdata),
        .in_unnamed_matvec10_matvec_avm_readdatavalid(avm_unnamed_matvec10_matvec_readdatavalid),
        .in_unnamed_matvec10_matvec_avm_waitrequest(avm_unnamed_matvec10_matvec_waitrequest),
        .in_unnamed_matvec10_matvec_avm_writeack(avm_unnamed_matvec10_matvec_writeack),
        .in_unnamed_matvec11_matvec_avm_readdata(avm_unnamed_matvec11_matvec_readdata),
        .in_unnamed_matvec11_matvec_avm_readdatavalid(avm_unnamed_matvec11_matvec_readdatavalid),
        .in_unnamed_matvec11_matvec_avm_waitrequest(avm_unnamed_matvec11_matvec_waitrequest),
        .in_unnamed_matvec11_matvec_avm_writeack(avm_unnamed_matvec11_matvec_writeack),
        .in_unnamed_matvec6_matvec_avm_readdata(avm_unnamed_matvec6_matvec_readdata),
        .in_unnamed_matvec6_matvec_avm_readdatavalid(avm_unnamed_matvec6_matvec_readdatavalid),
        .in_unnamed_matvec6_matvec_avm_waitrequest(avm_unnamed_matvec6_matvec_waitrequest),
        .in_unnamed_matvec6_matvec_avm_writeack(avm_unnamed_matvec6_matvec_writeack),
        .in_unnamed_matvec7_matvec_avm_readdata(avm_unnamed_matvec7_matvec_readdata),
        .in_unnamed_matvec7_matvec_avm_readdatavalid(avm_unnamed_matvec7_matvec_readdatavalid),
        .in_unnamed_matvec7_matvec_avm_waitrequest(avm_unnamed_matvec7_matvec_waitrequest),
        .in_unnamed_matvec7_matvec_avm_writeack(avm_unnamed_matvec7_matvec_writeack),
        .in_unnamed_matvec8_matvec_avm_readdata(avm_unnamed_matvec8_matvec_readdata),
        .in_unnamed_matvec8_matvec_avm_readdatavalid(avm_unnamed_matvec8_matvec_readdatavalid),
        .in_unnamed_matvec8_matvec_avm_waitrequest(avm_unnamed_matvec8_matvec_waitrequest),
        .in_unnamed_matvec8_matvec_avm_writeack(avm_unnamed_matvec8_matvec_writeack),
        .in_unnamed_matvec9_matvec_avm_readdata(avm_unnamed_matvec9_matvec_readdata),
        .in_unnamed_matvec9_matvec_avm_readdatavalid(avm_unnamed_matvec9_matvec_readdatavalid),
        .in_unnamed_matvec9_matvec_avm_waitrequest(avm_unnamed_matvec9_matvec_waitrequest),
        .in_unnamed_matvec9_matvec_avm_writeack(avm_unnamed_matvec9_matvec_writeack),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_matvec_o_fifoalmost_full(matvec_function_out_iord_bl_call_matvec_o_fifoalmost_full),
        .out_iord_bl_call_matvec_o_fifoready(matvec_function_out_iord_bl_call_matvec_o_fifoready),
        .out_iowr_bl_return_matvec_o_fifodata(matvec_function_out_iowr_bl_return_matvec_o_fifodata),
        .out_iowr_bl_return_matvec_o_fifovalid(matvec_function_out_iowr_bl_return_matvec_o_fifovalid),
        .out_memdep_1_matvec_avm_address(matvec_function_out_memdep_1_matvec_avm_address),
        .out_memdep_1_matvec_avm_burstcount(matvec_function_out_memdep_1_matvec_avm_burstcount),
        .out_memdep_1_matvec_avm_byteenable(matvec_function_out_memdep_1_matvec_avm_byteenable),
        .out_memdep_1_matvec_avm_enable(matvec_function_out_memdep_1_matvec_avm_enable),
        .out_memdep_1_matvec_avm_read(matvec_function_out_memdep_1_matvec_avm_read),
        .out_memdep_1_matvec_avm_write(matvec_function_out_memdep_1_matvec_avm_write),
        .out_memdep_1_matvec_avm_writedata(matvec_function_out_memdep_1_matvec_avm_writedata),
        .out_memdep_2_matvec_avm_address(matvec_function_out_memdep_2_matvec_avm_address),
        .out_memdep_2_matvec_avm_burstcount(matvec_function_out_memdep_2_matvec_avm_burstcount),
        .out_memdep_2_matvec_avm_byteenable(matvec_function_out_memdep_2_matvec_avm_byteenable),
        .out_memdep_2_matvec_avm_enable(matvec_function_out_memdep_2_matvec_avm_enable),
        .out_memdep_2_matvec_avm_read(matvec_function_out_memdep_2_matvec_avm_read),
        .out_memdep_2_matvec_avm_write(matvec_function_out_memdep_2_matvec_avm_write),
        .out_memdep_2_matvec_avm_writedata(matvec_function_out_memdep_2_matvec_avm_writedata),
        .out_memdep_3_matvec_avm_address(matvec_function_out_memdep_3_matvec_avm_address),
        .out_memdep_3_matvec_avm_burstcount(matvec_function_out_memdep_3_matvec_avm_burstcount),
        .out_memdep_3_matvec_avm_byteenable(matvec_function_out_memdep_3_matvec_avm_byteenable),
        .out_memdep_3_matvec_avm_enable(matvec_function_out_memdep_3_matvec_avm_enable),
        .out_memdep_3_matvec_avm_read(matvec_function_out_memdep_3_matvec_avm_read),
        .out_memdep_3_matvec_avm_write(matvec_function_out_memdep_3_matvec_avm_write),
        .out_memdep_3_matvec_avm_writedata(matvec_function_out_memdep_3_matvec_avm_writedata),
        .out_memdep_4_matvec_avm_address(matvec_function_out_memdep_4_matvec_avm_address),
        .out_memdep_4_matvec_avm_burstcount(matvec_function_out_memdep_4_matvec_avm_burstcount),
        .out_memdep_4_matvec_avm_byteenable(matvec_function_out_memdep_4_matvec_avm_byteenable),
        .out_memdep_4_matvec_avm_enable(matvec_function_out_memdep_4_matvec_avm_enable),
        .out_memdep_4_matvec_avm_read(matvec_function_out_memdep_4_matvec_avm_read),
        .out_memdep_4_matvec_avm_write(matvec_function_out_memdep_4_matvec_avm_write),
        .out_memdep_4_matvec_avm_writedata(matvec_function_out_memdep_4_matvec_avm_writedata),
        .out_memdep_matvec_avm_address(matvec_function_out_memdep_matvec_avm_address),
        .out_memdep_matvec_avm_burstcount(matvec_function_out_memdep_matvec_avm_burstcount),
        .out_memdep_matvec_avm_byteenable(matvec_function_out_memdep_matvec_avm_byteenable),
        .out_memdep_matvec_avm_enable(matvec_function_out_memdep_matvec_avm_enable),
        .out_memdep_matvec_avm_read(matvec_function_out_memdep_matvec_avm_read),
        .out_memdep_matvec_avm_write(matvec_function_out_memdep_matvec_avm_write),
        .out_memdep_matvec_avm_writedata(matvec_function_out_memdep_matvec_avm_writedata),
        .out_o_active_memdep_4(),
        .out_stall_out(),
        .out_unnamed_matvec10_matvec_avm_address(matvec_function_out_unnamed_matvec10_matvec_avm_address),
        .out_unnamed_matvec10_matvec_avm_burstcount(matvec_function_out_unnamed_matvec10_matvec_avm_burstcount),
        .out_unnamed_matvec10_matvec_avm_byteenable(matvec_function_out_unnamed_matvec10_matvec_avm_byteenable),
        .out_unnamed_matvec10_matvec_avm_enable(matvec_function_out_unnamed_matvec10_matvec_avm_enable),
        .out_unnamed_matvec10_matvec_avm_read(matvec_function_out_unnamed_matvec10_matvec_avm_read),
        .out_unnamed_matvec10_matvec_avm_write(matvec_function_out_unnamed_matvec10_matvec_avm_write),
        .out_unnamed_matvec10_matvec_avm_writedata(matvec_function_out_unnamed_matvec10_matvec_avm_writedata),
        .out_unnamed_matvec11_matvec_avm_address(matvec_function_out_unnamed_matvec11_matvec_avm_address),
        .out_unnamed_matvec11_matvec_avm_burstcount(matvec_function_out_unnamed_matvec11_matvec_avm_burstcount),
        .out_unnamed_matvec11_matvec_avm_byteenable(matvec_function_out_unnamed_matvec11_matvec_avm_byteenable),
        .out_unnamed_matvec11_matvec_avm_enable(matvec_function_out_unnamed_matvec11_matvec_avm_enable),
        .out_unnamed_matvec11_matvec_avm_read(matvec_function_out_unnamed_matvec11_matvec_avm_read),
        .out_unnamed_matvec11_matvec_avm_write(matvec_function_out_unnamed_matvec11_matvec_avm_write),
        .out_unnamed_matvec11_matvec_avm_writedata(matvec_function_out_unnamed_matvec11_matvec_avm_writedata),
        .out_unnamed_matvec6_matvec_avm_address(matvec_function_out_unnamed_matvec6_matvec_avm_address),
        .out_unnamed_matvec6_matvec_avm_burstcount(matvec_function_out_unnamed_matvec6_matvec_avm_burstcount),
        .out_unnamed_matvec6_matvec_avm_byteenable(matvec_function_out_unnamed_matvec6_matvec_avm_byteenable),
        .out_unnamed_matvec6_matvec_avm_enable(matvec_function_out_unnamed_matvec6_matvec_avm_enable),
        .out_unnamed_matvec6_matvec_avm_read(matvec_function_out_unnamed_matvec6_matvec_avm_read),
        .out_unnamed_matvec6_matvec_avm_write(matvec_function_out_unnamed_matvec6_matvec_avm_write),
        .out_unnamed_matvec6_matvec_avm_writedata(matvec_function_out_unnamed_matvec6_matvec_avm_writedata),
        .out_unnamed_matvec7_matvec_avm_address(matvec_function_out_unnamed_matvec7_matvec_avm_address),
        .out_unnamed_matvec7_matvec_avm_burstcount(matvec_function_out_unnamed_matvec7_matvec_avm_burstcount),
        .out_unnamed_matvec7_matvec_avm_byteenable(matvec_function_out_unnamed_matvec7_matvec_avm_byteenable),
        .out_unnamed_matvec7_matvec_avm_enable(matvec_function_out_unnamed_matvec7_matvec_avm_enable),
        .out_unnamed_matvec7_matvec_avm_read(matvec_function_out_unnamed_matvec7_matvec_avm_read),
        .out_unnamed_matvec7_matvec_avm_write(matvec_function_out_unnamed_matvec7_matvec_avm_write),
        .out_unnamed_matvec7_matvec_avm_writedata(matvec_function_out_unnamed_matvec7_matvec_avm_writedata),
        .out_unnamed_matvec8_matvec_avm_address(matvec_function_out_unnamed_matvec8_matvec_avm_address),
        .out_unnamed_matvec8_matvec_avm_burstcount(matvec_function_out_unnamed_matvec8_matvec_avm_burstcount),
        .out_unnamed_matvec8_matvec_avm_byteenable(matvec_function_out_unnamed_matvec8_matvec_avm_byteenable),
        .out_unnamed_matvec8_matvec_avm_enable(matvec_function_out_unnamed_matvec8_matvec_avm_enable),
        .out_unnamed_matvec8_matvec_avm_read(matvec_function_out_unnamed_matvec8_matvec_avm_read),
        .out_unnamed_matvec8_matvec_avm_write(matvec_function_out_unnamed_matvec8_matvec_avm_write),
        .out_unnamed_matvec8_matvec_avm_writedata(matvec_function_out_unnamed_matvec8_matvec_avm_writedata),
        .out_unnamed_matvec9_matvec_avm_address(matvec_function_out_unnamed_matvec9_matvec_avm_address),
        .out_unnamed_matvec9_matvec_avm_burstcount(matvec_function_out_unnamed_matvec9_matvec_avm_burstcount),
        .out_unnamed_matvec9_matvec_avm_byteenable(matvec_function_out_unnamed_matvec9_matvec_avm_byteenable),
        .out_unnamed_matvec9_matvec_avm_enable(matvec_function_out_unnamed_matvec9_matvec_avm_enable),
        .out_unnamed_matvec9_matvec_avm_read(matvec_function_out_unnamed_matvec9_matvec_avm_read),
        .out_unnamed_matvec9_matvec_avm_write(matvec_function_out_unnamed_matvec9_matvec_avm_write),
        .out_unnamed_matvec9_matvec_avm_writedata(matvec_function_out_unnamed_matvec9_matvec_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_memdep_1_matvec_address(GPOUT,69)
    assign avm_memdep_1_matvec_address = matvec_function_out_memdep_1_matvec_avm_address;

    // avm_memdep_1_matvec_burstcount(GPOUT,70)
    assign avm_memdep_1_matvec_burstcount = matvec_function_out_memdep_1_matvec_avm_burstcount;

    // avm_memdep_1_matvec_byteenable(GPOUT,71)
    assign avm_memdep_1_matvec_byteenable = matvec_function_out_memdep_1_matvec_avm_byteenable;

    // avm_memdep_1_matvec_enable(GPOUT,72)
    assign avm_memdep_1_matvec_enable = matvec_function_out_memdep_1_matvec_avm_enable;

    // avm_memdep_1_matvec_read(GPOUT,73)
    assign avm_memdep_1_matvec_read = matvec_function_out_memdep_1_matvec_avm_read;

    // avm_memdep_1_matvec_write(GPOUT,74)
    assign avm_memdep_1_matvec_write = matvec_function_out_memdep_1_matvec_avm_write;

    // avm_memdep_1_matvec_writedata(GPOUT,75)
    assign avm_memdep_1_matvec_writedata = matvec_function_out_memdep_1_matvec_avm_writedata;

    // avm_memdep_2_matvec_address(GPOUT,76)
    assign avm_memdep_2_matvec_address = matvec_function_out_memdep_2_matvec_avm_address;

    // avm_memdep_2_matvec_burstcount(GPOUT,77)
    assign avm_memdep_2_matvec_burstcount = matvec_function_out_memdep_2_matvec_avm_burstcount;

    // avm_memdep_2_matvec_byteenable(GPOUT,78)
    assign avm_memdep_2_matvec_byteenable = matvec_function_out_memdep_2_matvec_avm_byteenable;

    // avm_memdep_2_matvec_enable(GPOUT,79)
    assign avm_memdep_2_matvec_enable = matvec_function_out_memdep_2_matvec_avm_enable;

    // avm_memdep_2_matvec_read(GPOUT,80)
    assign avm_memdep_2_matvec_read = matvec_function_out_memdep_2_matvec_avm_read;

    // avm_memdep_2_matvec_write(GPOUT,81)
    assign avm_memdep_2_matvec_write = matvec_function_out_memdep_2_matvec_avm_write;

    // avm_memdep_2_matvec_writedata(GPOUT,82)
    assign avm_memdep_2_matvec_writedata = matvec_function_out_memdep_2_matvec_avm_writedata;

    // avm_memdep_3_matvec_address(GPOUT,83)
    assign avm_memdep_3_matvec_address = matvec_function_out_memdep_3_matvec_avm_address;

    // avm_memdep_3_matvec_burstcount(GPOUT,84)
    assign avm_memdep_3_matvec_burstcount = matvec_function_out_memdep_3_matvec_avm_burstcount;

    // avm_memdep_3_matvec_byteenable(GPOUT,85)
    assign avm_memdep_3_matvec_byteenable = matvec_function_out_memdep_3_matvec_avm_byteenable;

    // avm_memdep_3_matvec_enable(GPOUT,86)
    assign avm_memdep_3_matvec_enable = matvec_function_out_memdep_3_matvec_avm_enable;

    // avm_memdep_3_matvec_read(GPOUT,87)
    assign avm_memdep_3_matvec_read = matvec_function_out_memdep_3_matvec_avm_read;

    // avm_memdep_3_matvec_write(GPOUT,88)
    assign avm_memdep_3_matvec_write = matvec_function_out_memdep_3_matvec_avm_write;

    // avm_memdep_3_matvec_writedata(GPOUT,89)
    assign avm_memdep_3_matvec_writedata = matvec_function_out_memdep_3_matvec_avm_writedata;

    // avm_memdep_4_matvec_address(GPOUT,90)
    assign avm_memdep_4_matvec_address = matvec_function_out_memdep_4_matvec_avm_address;

    // avm_memdep_4_matvec_burstcount(GPOUT,91)
    assign avm_memdep_4_matvec_burstcount = matvec_function_out_memdep_4_matvec_avm_burstcount;

    // avm_memdep_4_matvec_byteenable(GPOUT,92)
    assign avm_memdep_4_matvec_byteenable = matvec_function_out_memdep_4_matvec_avm_byteenable;

    // avm_memdep_4_matvec_enable(GPOUT,93)
    assign avm_memdep_4_matvec_enable = matvec_function_out_memdep_4_matvec_avm_enable;

    // avm_memdep_4_matvec_read(GPOUT,94)
    assign avm_memdep_4_matvec_read = matvec_function_out_memdep_4_matvec_avm_read;

    // avm_memdep_4_matvec_write(GPOUT,95)
    assign avm_memdep_4_matvec_write = matvec_function_out_memdep_4_matvec_avm_write;

    // avm_memdep_4_matvec_writedata(GPOUT,96)
    assign avm_memdep_4_matvec_writedata = matvec_function_out_memdep_4_matvec_avm_writedata;

    // avm_memdep_matvec_address(GPOUT,97)
    assign avm_memdep_matvec_address = matvec_function_out_memdep_matvec_avm_address;

    // avm_memdep_matvec_burstcount(GPOUT,98)
    assign avm_memdep_matvec_burstcount = matvec_function_out_memdep_matvec_avm_burstcount;

    // avm_memdep_matvec_byteenable(GPOUT,99)
    assign avm_memdep_matvec_byteenable = matvec_function_out_memdep_matvec_avm_byteenable;

    // avm_memdep_matvec_enable(GPOUT,100)
    assign avm_memdep_matvec_enable = matvec_function_out_memdep_matvec_avm_enable;

    // avm_memdep_matvec_read(GPOUT,101)
    assign avm_memdep_matvec_read = matvec_function_out_memdep_matvec_avm_read;

    // avm_memdep_matvec_write(GPOUT,102)
    assign avm_memdep_matvec_write = matvec_function_out_memdep_matvec_avm_write;

    // avm_memdep_matvec_writedata(GPOUT,103)
    assign avm_memdep_matvec_writedata = matvec_function_out_memdep_matvec_avm_writedata;

    // avm_unnamed_matvec10_matvec_address(GPOUT,104)
    assign avm_unnamed_matvec10_matvec_address = matvec_function_out_unnamed_matvec10_matvec_avm_address;

    // avm_unnamed_matvec10_matvec_burstcount(GPOUT,105)
    assign avm_unnamed_matvec10_matvec_burstcount = matvec_function_out_unnamed_matvec10_matvec_avm_burstcount;

    // avm_unnamed_matvec10_matvec_byteenable(GPOUT,106)
    assign avm_unnamed_matvec10_matvec_byteenable = matvec_function_out_unnamed_matvec10_matvec_avm_byteenable;

    // avm_unnamed_matvec10_matvec_enable(GPOUT,107)
    assign avm_unnamed_matvec10_matvec_enable = matvec_function_out_unnamed_matvec10_matvec_avm_enable;

    // avm_unnamed_matvec10_matvec_read(GPOUT,108)
    assign avm_unnamed_matvec10_matvec_read = matvec_function_out_unnamed_matvec10_matvec_avm_read;

    // avm_unnamed_matvec10_matvec_write(GPOUT,109)
    assign avm_unnamed_matvec10_matvec_write = matvec_function_out_unnamed_matvec10_matvec_avm_write;

    // avm_unnamed_matvec10_matvec_writedata(GPOUT,110)
    assign avm_unnamed_matvec10_matvec_writedata = matvec_function_out_unnamed_matvec10_matvec_avm_writedata;

    // avm_unnamed_matvec11_matvec_address(GPOUT,111)
    assign avm_unnamed_matvec11_matvec_address = matvec_function_out_unnamed_matvec11_matvec_avm_address;

    // avm_unnamed_matvec11_matvec_burstcount(GPOUT,112)
    assign avm_unnamed_matvec11_matvec_burstcount = matvec_function_out_unnamed_matvec11_matvec_avm_burstcount;

    // avm_unnamed_matvec11_matvec_byteenable(GPOUT,113)
    assign avm_unnamed_matvec11_matvec_byteenable = matvec_function_out_unnamed_matvec11_matvec_avm_byteenable;

    // avm_unnamed_matvec11_matvec_enable(GPOUT,114)
    assign avm_unnamed_matvec11_matvec_enable = matvec_function_out_unnamed_matvec11_matvec_avm_enable;

    // avm_unnamed_matvec11_matvec_read(GPOUT,115)
    assign avm_unnamed_matvec11_matvec_read = matvec_function_out_unnamed_matvec11_matvec_avm_read;

    // avm_unnamed_matvec11_matvec_write(GPOUT,116)
    assign avm_unnamed_matvec11_matvec_write = matvec_function_out_unnamed_matvec11_matvec_avm_write;

    // avm_unnamed_matvec11_matvec_writedata(GPOUT,117)
    assign avm_unnamed_matvec11_matvec_writedata = matvec_function_out_unnamed_matvec11_matvec_avm_writedata;

    // avm_unnamed_matvec6_matvec_address(GPOUT,118)
    assign avm_unnamed_matvec6_matvec_address = matvec_function_out_unnamed_matvec6_matvec_avm_address;

    // avm_unnamed_matvec6_matvec_burstcount(GPOUT,119)
    assign avm_unnamed_matvec6_matvec_burstcount = matvec_function_out_unnamed_matvec6_matvec_avm_burstcount;

    // avm_unnamed_matvec6_matvec_byteenable(GPOUT,120)
    assign avm_unnamed_matvec6_matvec_byteenable = matvec_function_out_unnamed_matvec6_matvec_avm_byteenable;

    // avm_unnamed_matvec6_matvec_enable(GPOUT,121)
    assign avm_unnamed_matvec6_matvec_enable = matvec_function_out_unnamed_matvec6_matvec_avm_enable;

    // avm_unnamed_matvec6_matvec_read(GPOUT,122)
    assign avm_unnamed_matvec6_matvec_read = matvec_function_out_unnamed_matvec6_matvec_avm_read;

    // avm_unnamed_matvec6_matvec_write(GPOUT,123)
    assign avm_unnamed_matvec6_matvec_write = matvec_function_out_unnamed_matvec6_matvec_avm_write;

    // avm_unnamed_matvec6_matvec_writedata(GPOUT,124)
    assign avm_unnamed_matvec6_matvec_writedata = matvec_function_out_unnamed_matvec6_matvec_avm_writedata;

    // avm_unnamed_matvec7_matvec_address(GPOUT,125)
    assign avm_unnamed_matvec7_matvec_address = matvec_function_out_unnamed_matvec7_matvec_avm_address;

    // avm_unnamed_matvec7_matvec_burstcount(GPOUT,126)
    assign avm_unnamed_matvec7_matvec_burstcount = matvec_function_out_unnamed_matvec7_matvec_avm_burstcount;

    // avm_unnamed_matvec7_matvec_byteenable(GPOUT,127)
    assign avm_unnamed_matvec7_matvec_byteenable = matvec_function_out_unnamed_matvec7_matvec_avm_byteenable;

    // avm_unnamed_matvec7_matvec_enable(GPOUT,128)
    assign avm_unnamed_matvec7_matvec_enable = matvec_function_out_unnamed_matvec7_matvec_avm_enable;

    // avm_unnamed_matvec7_matvec_read(GPOUT,129)
    assign avm_unnamed_matvec7_matvec_read = matvec_function_out_unnamed_matvec7_matvec_avm_read;

    // avm_unnamed_matvec7_matvec_write(GPOUT,130)
    assign avm_unnamed_matvec7_matvec_write = matvec_function_out_unnamed_matvec7_matvec_avm_write;

    // avm_unnamed_matvec7_matvec_writedata(GPOUT,131)
    assign avm_unnamed_matvec7_matvec_writedata = matvec_function_out_unnamed_matvec7_matvec_avm_writedata;

    // avm_unnamed_matvec8_matvec_address(GPOUT,132)
    assign avm_unnamed_matvec8_matvec_address = matvec_function_out_unnamed_matvec8_matvec_avm_address;

    // avm_unnamed_matvec8_matvec_burstcount(GPOUT,133)
    assign avm_unnamed_matvec8_matvec_burstcount = matvec_function_out_unnamed_matvec8_matvec_avm_burstcount;

    // avm_unnamed_matvec8_matvec_byteenable(GPOUT,134)
    assign avm_unnamed_matvec8_matvec_byteenable = matvec_function_out_unnamed_matvec8_matvec_avm_byteenable;

    // avm_unnamed_matvec8_matvec_enable(GPOUT,135)
    assign avm_unnamed_matvec8_matvec_enable = matvec_function_out_unnamed_matvec8_matvec_avm_enable;

    // avm_unnamed_matvec8_matvec_read(GPOUT,136)
    assign avm_unnamed_matvec8_matvec_read = matvec_function_out_unnamed_matvec8_matvec_avm_read;

    // avm_unnamed_matvec8_matvec_write(GPOUT,137)
    assign avm_unnamed_matvec8_matvec_write = matvec_function_out_unnamed_matvec8_matvec_avm_write;

    // avm_unnamed_matvec8_matvec_writedata(GPOUT,138)
    assign avm_unnamed_matvec8_matvec_writedata = matvec_function_out_unnamed_matvec8_matvec_avm_writedata;

    // avm_unnamed_matvec9_matvec_address(GPOUT,139)
    assign avm_unnamed_matvec9_matvec_address = matvec_function_out_unnamed_matvec9_matvec_avm_address;

    // avm_unnamed_matvec9_matvec_burstcount(GPOUT,140)
    assign avm_unnamed_matvec9_matvec_burstcount = matvec_function_out_unnamed_matvec9_matvec_avm_burstcount;

    // avm_unnamed_matvec9_matvec_byteenable(GPOUT,141)
    assign avm_unnamed_matvec9_matvec_byteenable = matvec_function_out_unnamed_matvec9_matvec_avm_byteenable;

    // avm_unnamed_matvec9_matvec_enable(GPOUT,142)
    assign avm_unnamed_matvec9_matvec_enable = matvec_function_out_unnamed_matvec9_matvec_avm_enable;

    // avm_unnamed_matvec9_matvec_read(GPOUT,143)
    assign avm_unnamed_matvec9_matvec_read = matvec_function_out_unnamed_matvec9_matvec_avm_read;

    // avm_unnamed_matvec9_matvec_write(GPOUT,144)
    assign avm_unnamed_matvec9_matvec_write = matvec_function_out_unnamed_matvec9_matvec_avm_write;

    // avm_unnamed_matvec9_matvec_writedata(GPOUT,145)
    assign avm_unnamed_matvec9_matvec_writedata = matvec_function_out_unnamed_matvec9_matvec_avm_writedata;

    // avst_iord_bl_call_matvec_almost_full(GPOUT,146)
    assign avst_iord_bl_call_matvec_almost_full = matvec_function_out_iord_bl_call_matvec_o_fifoalmost_full;

    // avst_iord_bl_call_matvec_ready(GPOUT,147)
    assign avst_iord_bl_call_matvec_ready = matvec_function_out_iord_bl_call_matvec_o_fifoready;

    // avst_iowr_bl_return_matvec_data(GPOUT,148)
    assign avst_iowr_bl_return_matvec_data = matvec_function_out_iowr_bl_return_matvec_o_fifodata;

    // avst_iowr_bl_return_matvec_valid(GPOUT,149)
    assign avst_iowr_bl_return_matvec_valid = matvec_function_out_iowr_bl_return_matvec_o_fifovalid;

    // not_ready(LOGICAL,67)
    assign not_ready_q = ~ (matvec_function_out_iord_bl_call_matvec_o_fifoready);

    // busy_and(LOGICAL,5)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,153)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,152)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,6)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,150)
    assign busy = busy_or_q;

    // done(GPOUT,151)
    assign done = matvec_function_out_iowr_bl_return_matvec_o_fifovalid;

endmodule
