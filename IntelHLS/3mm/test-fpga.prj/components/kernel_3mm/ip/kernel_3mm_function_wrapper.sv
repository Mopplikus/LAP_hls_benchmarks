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

// SystemVerilog created from kernel_3mm_function_wrapper
// Created for function/kernel kernel_3mm
// SystemVerilog created on Fri Apr  7 18:25:08 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_function_wrapper (
    input wire [63:0] A,
    input wire [63:0] B,
    input wire [63:0] C,
    input wire [63:0] D,
    input wire [63:0] E,
    input wire [63:0] F,
    input wire [63:0] G,
    input wire [31:0] avm_memdep_1_kernel_3mm_readdata,
    input wire [0:0] avm_memdep_1_kernel_3mm_readdatavalid,
    input wire [0:0] avm_memdep_1_kernel_3mm_waitrequest,
    input wire [0:0] avm_memdep_1_kernel_3mm_writeack,
    input wire [31:0] avm_memdep_6_kernel_3mm_readdata,
    input wire [0:0] avm_memdep_6_kernel_3mm_readdatavalid,
    input wire [0:0] avm_memdep_6_kernel_3mm_waitrequest,
    input wire [0:0] avm_memdep_6_kernel_3mm_writeack,
    input wire [31:0] avm_memdep_kernel_3mm_readdata,
    input wire [0:0] avm_memdep_kernel_3mm_readdatavalid,
    input wire [0:0] avm_memdep_kernel_3mm_waitrequest,
    input wire [0:0] avm_memdep_kernel_3mm_writeack,
    input wire [31:0] avm_unnamed_kernel_3mm10_kernel_3mm_readdata,
    input wire [0:0] avm_unnamed_kernel_3mm10_kernel_3mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_3mm10_kernel_3mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_3mm10_kernel_3mm_writeack,
    input wire [31:0] avm_unnamed_kernel_3mm12_kernel_3mm_readdata,
    input wire [0:0] avm_unnamed_kernel_3mm12_kernel_3mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_3mm12_kernel_3mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_3mm12_kernel_3mm_writeack,
    input wire [31:0] avm_unnamed_kernel_3mm13_kernel_3mm_readdata,
    input wire [0:0] avm_unnamed_kernel_3mm13_kernel_3mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_3mm13_kernel_3mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_3mm13_kernel_3mm_writeack,
    input wire [31:0] avm_unnamed_kernel_3mm2_kernel_3mm_readdata,
    input wire [0:0] avm_unnamed_kernel_3mm2_kernel_3mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_3mm2_kernel_3mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_3mm2_kernel_3mm_writeack,
    input wire [31:0] avm_unnamed_kernel_3mm4_kernel_3mm_readdata,
    input wire [0:0] avm_unnamed_kernel_3mm4_kernel_3mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_3mm4_kernel_3mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_3mm4_kernel_3mm_writeack,
    input wire [31:0] avm_unnamed_kernel_3mm5_kernel_3mm_readdata,
    input wire [0:0] avm_unnamed_kernel_3mm5_kernel_3mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_3mm5_kernel_3mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_3mm5_kernel_3mm_writeack,
    input wire [31:0] avm_unnamed_kernel_3mm6_kernel_3mm_readdata,
    input wire [0:0] avm_unnamed_kernel_3mm6_kernel_3mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_3mm6_kernel_3mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_3mm6_kernel_3mm_writeack,
    input wire [31:0] avm_unnamed_kernel_3mm8_kernel_3mm_readdata,
    input wire [0:0] avm_unnamed_kernel_3mm8_kernel_3mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_3mm8_kernel_3mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_3mm8_kernel_3mm_writeack,
    input wire [31:0] avm_unnamed_kernel_3mm9_kernel_3mm_readdata,
    input wire [0:0] avm_unnamed_kernel_3mm9_kernel_3mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_3mm9_kernel_3mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_3mm9_kernel_3mm_writeack,
    input wire [447:0] avst_iord_bl_call_kernel_3mm_data,
    input wire [0:0] avst_iord_bl_call_kernel_3mm_valid,
    input wire [0:0] avst_iowr_bl_return_kernel_3mm_almostfull,
    input wire [0:0] avst_iowr_bl_return_kernel_3mm_ready,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [31:0] avm_memdep_1_kernel_3mm_address,
    output wire [0:0] avm_memdep_1_kernel_3mm_burstcount,
    output wire [3:0] avm_memdep_1_kernel_3mm_byteenable,
    output wire [0:0] avm_memdep_1_kernel_3mm_enable,
    output wire [0:0] avm_memdep_1_kernel_3mm_read,
    output wire [0:0] avm_memdep_1_kernel_3mm_write,
    output wire [31:0] avm_memdep_1_kernel_3mm_writedata,
    output wire [31:0] avm_memdep_6_kernel_3mm_address,
    output wire [0:0] avm_memdep_6_kernel_3mm_burstcount,
    output wire [3:0] avm_memdep_6_kernel_3mm_byteenable,
    output wire [0:0] avm_memdep_6_kernel_3mm_enable,
    output wire [0:0] avm_memdep_6_kernel_3mm_read,
    output wire [0:0] avm_memdep_6_kernel_3mm_write,
    output wire [31:0] avm_memdep_6_kernel_3mm_writedata,
    output wire [31:0] avm_memdep_kernel_3mm_address,
    output wire [0:0] avm_memdep_kernel_3mm_burstcount,
    output wire [3:0] avm_memdep_kernel_3mm_byteenable,
    output wire [0:0] avm_memdep_kernel_3mm_enable,
    output wire [0:0] avm_memdep_kernel_3mm_read,
    output wire [0:0] avm_memdep_kernel_3mm_write,
    output wire [31:0] avm_memdep_kernel_3mm_writedata,
    output wire [31:0] avm_unnamed_kernel_3mm10_kernel_3mm_address,
    output wire [0:0] avm_unnamed_kernel_3mm10_kernel_3mm_burstcount,
    output wire [3:0] avm_unnamed_kernel_3mm10_kernel_3mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_3mm10_kernel_3mm_enable,
    output wire [0:0] avm_unnamed_kernel_3mm10_kernel_3mm_read,
    output wire [0:0] avm_unnamed_kernel_3mm10_kernel_3mm_write,
    output wire [31:0] avm_unnamed_kernel_3mm10_kernel_3mm_writedata,
    output wire [31:0] avm_unnamed_kernel_3mm12_kernel_3mm_address,
    output wire [0:0] avm_unnamed_kernel_3mm12_kernel_3mm_burstcount,
    output wire [3:0] avm_unnamed_kernel_3mm12_kernel_3mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_3mm12_kernel_3mm_enable,
    output wire [0:0] avm_unnamed_kernel_3mm12_kernel_3mm_read,
    output wire [0:0] avm_unnamed_kernel_3mm12_kernel_3mm_write,
    output wire [31:0] avm_unnamed_kernel_3mm12_kernel_3mm_writedata,
    output wire [31:0] avm_unnamed_kernel_3mm13_kernel_3mm_address,
    output wire [0:0] avm_unnamed_kernel_3mm13_kernel_3mm_burstcount,
    output wire [3:0] avm_unnamed_kernel_3mm13_kernel_3mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_3mm13_kernel_3mm_enable,
    output wire [0:0] avm_unnamed_kernel_3mm13_kernel_3mm_read,
    output wire [0:0] avm_unnamed_kernel_3mm13_kernel_3mm_write,
    output wire [31:0] avm_unnamed_kernel_3mm13_kernel_3mm_writedata,
    output wire [31:0] avm_unnamed_kernel_3mm2_kernel_3mm_address,
    output wire [0:0] avm_unnamed_kernel_3mm2_kernel_3mm_burstcount,
    output wire [3:0] avm_unnamed_kernel_3mm2_kernel_3mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_3mm2_kernel_3mm_enable,
    output wire [0:0] avm_unnamed_kernel_3mm2_kernel_3mm_read,
    output wire [0:0] avm_unnamed_kernel_3mm2_kernel_3mm_write,
    output wire [31:0] avm_unnamed_kernel_3mm2_kernel_3mm_writedata,
    output wire [31:0] avm_unnamed_kernel_3mm4_kernel_3mm_address,
    output wire [0:0] avm_unnamed_kernel_3mm4_kernel_3mm_burstcount,
    output wire [3:0] avm_unnamed_kernel_3mm4_kernel_3mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_3mm4_kernel_3mm_enable,
    output wire [0:0] avm_unnamed_kernel_3mm4_kernel_3mm_read,
    output wire [0:0] avm_unnamed_kernel_3mm4_kernel_3mm_write,
    output wire [31:0] avm_unnamed_kernel_3mm4_kernel_3mm_writedata,
    output wire [31:0] avm_unnamed_kernel_3mm5_kernel_3mm_address,
    output wire [0:0] avm_unnamed_kernel_3mm5_kernel_3mm_burstcount,
    output wire [3:0] avm_unnamed_kernel_3mm5_kernel_3mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_3mm5_kernel_3mm_enable,
    output wire [0:0] avm_unnamed_kernel_3mm5_kernel_3mm_read,
    output wire [0:0] avm_unnamed_kernel_3mm5_kernel_3mm_write,
    output wire [31:0] avm_unnamed_kernel_3mm5_kernel_3mm_writedata,
    output wire [31:0] avm_unnamed_kernel_3mm6_kernel_3mm_address,
    output wire [0:0] avm_unnamed_kernel_3mm6_kernel_3mm_burstcount,
    output wire [3:0] avm_unnamed_kernel_3mm6_kernel_3mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_3mm6_kernel_3mm_enable,
    output wire [0:0] avm_unnamed_kernel_3mm6_kernel_3mm_read,
    output wire [0:0] avm_unnamed_kernel_3mm6_kernel_3mm_write,
    output wire [31:0] avm_unnamed_kernel_3mm6_kernel_3mm_writedata,
    output wire [31:0] avm_unnamed_kernel_3mm8_kernel_3mm_address,
    output wire [0:0] avm_unnamed_kernel_3mm8_kernel_3mm_burstcount,
    output wire [3:0] avm_unnamed_kernel_3mm8_kernel_3mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_3mm8_kernel_3mm_enable,
    output wire [0:0] avm_unnamed_kernel_3mm8_kernel_3mm_read,
    output wire [0:0] avm_unnamed_kernel_3mm8_kernel_3mm_write,
    output wire [31:0] avm_unnamed_kernel_3mm8_kernel_3mm_writedata,
    output wire [31:0] avm_unnamed_kernel_3mm9_kernel_3mm_address,
    output wire [0:0] avm_unnamed_kernel_3mm9_kernel_3mm_burstcount,
    output wire [3:0] avm_unnamed_kernel_3mm9_kernel_3mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_3mm9_kernel_3mm_enable,
    output wire [0:0] avm_unnamed_kernel_3mm9_kernel_3mm_read,
    output wire [0:0] avm_unnamed_kernel_3mm9_kernel_3mm_write,
    output wire [31:0] avm_unnamed_kernel_3mm9_kernel_3mm_writedata,
    output wire [0:0] avst_iord_bl_call_kernel_3mm_almost_full,
    output wire [0:0] avst_iord_bl_call_kernel_3mm_ready,
    output wire [0:0] avst_iowr_bl_return_kernel_3mm_data,
    output wire [0:0] avst_iowr_bl_return_kernel_3mm_valid,
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
    wire [447:0] implicit_input_q;
    wire [0:0] kernel_3mm_function_out_iord_bl_call_kernel_3mm_o_fifoalmost_full;
    wire [0:0] kernel_3mm_function_out_iord_bl_call_kernel_3mm_o_fifoready;
    wire [0:0] kernel_3mm_function_out_iowr_bl_return_kernel_3mm_o_fifodata;
    wire [0:0] kernel_3mm_function_out_iowr_bl_return_kernel_3mm_o_fifovalid;
    wire [31:0] kernel_3mm_function_out_memdep_1_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_memdep_1_kernel_3mm_avm_burstcount;
    wire [3:0] kernel_3mm_function_out_memdep_1_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_memdep_1_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_memdep_1_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_memdep_1_kernel_3mm_avm_write;
    wire [31:0] kernel_3mm_function_out_memdep_1_kernel_3mm_avm_writedata;
    wire [31:0] kernel_3mm_function_out_memdep_6_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_memdep_6_kernel_3mm_avm_burstcount;
    wire [3:0] kernel_3mm_function_out_memdep_6_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_memdep_6_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_memdep_6_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_memdep_6_kernel_3mm_avm_write;
    wire [31:0] kernel_3mm_function_out_memdep_6_kernel_3mm_avm_writedata;
    wire [31:0] kernel_3mm_function_out_memdep_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_memdep_kernel_3mm_avm_burstcount;
    wire [3:0] kernel_3mm_function_out_memdep_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_memdep_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_memdep_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_memdep_kernel_3mm_avm_write;
    wire [31:0] kernel_3mm_function_out_memdep_kernel_3mm_avm_writedata;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount;
    wire [3:0] kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_write;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount;
    wire [3:0] kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_write;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount;
    wire [3:0] kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_write;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm2_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm2_kernel_3mm_avm_burstcount;
    wire [3:0] kernel_3mm_function_out_unnamed_kernel_3mm2_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm2_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm2_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm2_kernel_3mm_avm_write;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm2_kernel_3mm_avm_writedata;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm4_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount;
    wire [3:0] kernel_3mm_function_out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm4_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm4_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm4_kernel_3mm_avm_write;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm5_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount;
    wire [3:0] kernel_3mm_function_out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm5_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm5_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm5_kernel_3mm_avm_write;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm6_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm6_kernel_3mm_avm_burstcount;
    wire [3:0] kernel_3mm_function_out_unnamed_kernel_3mm6_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm6_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm6_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm6_kernel_3mm_avm_write;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm6_kernel_3mm_avm_writedata;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm8_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount;
    wire [3:0] kernel_3mm_function_out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm8_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm8_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm8_kernel_3mm_avm_write;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm9_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount;
    wire [3:0] kernel_3mm_function_out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm9_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm9_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm9_kernel_3mm_avm_write;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,80)
    assign not_stall_q = ~ (stall);

    // implicit_input(BITJOIN,14)
    assign implicit_input_q = {G, F, E, D, C, B, A};

    // A_const(CONSTANT,2)
    assign A_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // kernel_3mm_function(BLACKBOX,78)
    kernel_3mm_function thekernel_3mm_function (
        .in_arg_A(A_const_q),
        .in_arg_B(A_const_q),
        .in_arg_C(A_const_q),
        .in_arg_D(A_const_q),
        .in_arg_E(A_const_q),
        .in_arg_F(A_const_q),
        .in_arg_G(A_const_q),
        .in_arg_call(A_const_q),
        .in_arg_return(A_const_q),
        .in_iord_bl_call_kernel_3mm_i_fifodata(implicit_input_q),
        .in_iord_bl_call_kernel_3mm_i_fifovalid(start),
        .in_iowr_bl_return_kernel_3mm_i_fifoready(not_stall_q),
        .in_memdep_1_kernel_3mm_avm_readdata(avm_memdep_1_kernel_3mm_readdata),
        .in_memdep_1_kernel_3mm_avm_readdatavalid(avm_memdep_1_kernel_3mm_readdatavalid),
        .in_memdep_1_kernel_3mm_avm_waitrequest(avm_memdep_1_kernel_3mm_waitrequest),
        .in_memdep_1_kernel_3mm_avm_writeack(avm_memdep_1_kernel_3mm_writeack),
        .in_memdep_6_kernel_3mm_avm_readdata(avm_memdep_6_kernel_3mm_readdata),
        .in_memdep_6_kernel_3mm_avm_readdatavalid(avm_memdep_6_kernel_3mm_readdatavalid),
        .in_memdep_6_kernel_3mm_avm_waitrequest(avm_memdep_6_kernel_3mm_waitrequest),
        .in_memdep_6_kernel_3mm_avm_writeack(avm_memdep_6_kernel_3mm_writeack),
        .in_memdep_kernel_3mm_avm_readdata(avm_memdep_kernel_3mm_readdata),
        .in_memdep_kernel_3mm_avm_readdatavalid(avm_memdep_kernel_3mm_readdatavalid),
        .in_memdep_kernel_3mm_avm_waitrequest(avm_memdep_kernel_3mm_waitrequest),
        .in_memdep_kernel_3mm_avm_writeack(avm_memdep_kernel_3mm_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_unnamed_kernel_3mm10_kernel_3mm_avm_readdata(avm_unnamed_kernel_3mm10_kernel_3mm_readdata),
        .in_unnamed_kernel_3mm10_kernel_3mm_avm_readdatavalid(avm_unnamed_kernel_3mm10_kernel_3mm_readdatavalid),
        .in_unnamed_kernel_3mm10_kernel_3mm_avm_waitrequest(avm_unnamed_kernel_3mm10_kernel_3mm_waitrequest),
        .in_unnamed_kernel_3mm10_kernel_3mm_avm_writeack(avm_unnamed_kernel_3mm10_kernel_3mm_writeack),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_readdata(avm_unnamed_kernel_3mm12_kernel_3mm_readdata),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_readdatavalid(avm_unnamed_kernel_3mm12_kernel_3mm_readdatavalid),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_waitrequest(avm_unnamed_kernel_3mm12_kernel_3mm_waitrequest),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_writeack(avm_unnamed_kernel_3mm12_kernel_3mm_writeack),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_readdata(avm_unnamed_kernel_3mm13_kernel_3mm_readdata),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_readdatavalid(avm_unnamed_kernel_3mm13_kernel_3mm_readdatavalid),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_waitrequest(avm_unnamed_kernel_3mm13_kernel_3mm_waitrequest),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_writeack(avm_unnamed_kernel_3mm13_kernel_3mm_writeack),
        .in_unnamed_kernel_3mm2_kernel_3mm_avm_readdata(avm_unnamed_kernel_3mm2_kernel_3mm_readdata),
        .in_unnamed_kernel_3mm2_kernel_3mm_avm_readdatavalid(avm_unnamed_kernel_3mm2_kernel_3mm_readdatavalid),
        .in_unnamed_kernel_3mm2_kernel_3mm_avm_waitrequest(avm_unnamed_kernel_3mm2_kernel_3mm_waitrequest),
        .in_unnamed_kernel_3mm2_kernel_3mm_avm_writeack(avm_unnamed_kernel_3mm2_kernel_3mm_writeack),
        .in_unnamed_kernel_3mm4_kernel_3mm_avm_readdata(avm_unnamed_kernel_3mm4_kernel_3mm_readdata),
        .in_unnamed_kernel_3mm4_kernel_3mm_avm_readdatavalid(avm_unnamed_kernel_3mm4_kernel_3mm_readdatavalid),
        .in_unnamed_kernel_3mm4_kernel_3mm_avm_waitrequest(avm_unnamed_kernel_3mm4_kernel_3mm_waitrequest),
        .in_unnamed_kernel_3mm4_kernel_3mm_avm_writeack(avm_unnamed_kernel_3mm4_kernel_3mm_writeack),
        .in_unnamed_kernel_3mm5_kernel_3mm_avm_readdata(avm_unnamed_kernel_3mm5_kernel_3mm_readdata),
        .in_unnamed_kernel_3mm5_kernel_3mm_avm_readdatavalid(avm_unnamed_kernel_3mm5_kernel_3mm_readdatavalid),
        .in_unnamed_kernel_3mm5_kernel_3mm_avm_waitrequest(avm_unnamed_kernel_3mm5_kernel_3mm_waitrequest),
        .in_unnamed_kernel_3mm5_kernel_3mm_avm_writeack(avm_unnamed_kernel_3mm5_kernel_3mm_writeack),
        .in_unnamed_kernel_3mm6_kernel_3mm_avm_readdata(avm_unnamed_kernel_3mm6_kernel_3mm_readdata),
        .in_unnamed_kernel_3mm6_kernel_3mm_avm_readdatavalid(avm_unnamed_kernel_3mm6_kernel_3mm_readdatavalid),
        .in_unnamed_kernel_3mm6_kernel_3mm_avm_waitrequest(avm_unnamed_kernel_3mm6_kernel_3mm_waitrequest),
        .in_unnamed_kernel_3mm6_kernel_3mm_avm_writeack(avm_unnamed_kernel_3mm6_kernel_3mm_writeack),
        .in_unnamed_kernel_3mm8_kernel_3mm_avm_readdata(avm_unnamed_kernel_3mm8_kernel_3mm_readdata),
        .in_unnamed_kernel_3mm8_kernel_3mm_avm_readdatavalid(avm_unnamed_kernel_3mm8_kernel_3mm_readdatavalid),
        .in_unnamed_kernel_3mm8_kernel_3mm_avm_waitrequest(avm_unnamed_kernel_3mm8_kernel_3mm_waitrequest),
        .in_unnamed_kernel_3mm8_kernel_3mm_avm_writeack(avm_unnamed_kernel_3mm8_kernel_3mm_writeack),
        .in_unnamed_kernel_3mm9_kernel_3mm_avm_readdata(avm_unnamed_kernel_3mm9_kernel_3mm_readdata),
        .in_unnamed_kernel_3mm9_kernel_3mm_avm_readdatavalid(avm_unnamed_kernel_3mm9_kernel_3mm_readdatavalid),
        .in_unnamed_kernel_3mm9_kernel_3mm_avm_waitrequest(avm_unnamed_kernel_3mm9_kernel_3mm_waitrequest),
        .in_unnamed_kernel_3mm9_kernel_3mm_avm_writeack(avm_unnamed_kernel_3mm9_kernel_3mm_writeack),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_kernel_3mm_o_fifoalmost_full(kernel_3mm_function_out_iord_bl_call_kernel_3mm_o_fifoalmost_full),
        .out_iord_bl_call_kernel_3mm_o_fifoready(kernel_3mm_function_out_iord_bl_call_kernel_3mm_o_fifoready),
        .out_iowr_bl_return_kernel_3mm_o_fifodata(kernel_3mm_function_out_iowr_bl_return_kernel_3mm_o_fifodata),
        .out_iowr_bl_return_kernel_3mm_o_fifovalid(kernel_3mm_function_out_iowr_bl_return_kernel_3mm_o_fifovalid),
        .out_memdep_1_kernel_3mm_avm_address(kernel_3mm_function_out_memdep_1_kernel_3mm_avm_address),
        .out_memdep_1_kernel_3mm_avm_burstcount(kernel_3mm_function_out_memdep_1_kernel_3mm_avm_burstcount),
        .out_memdep_1_kernel_3mm_avm_byteenable(kernel_3mm_function_out_memdep_1_kernel_3mm_avm_byteenable),
        .out_memdep_1_kernel_3mm_avm_enable(kernel_3mm_function_out_memdep_1_kernel_3mm_avm_enable),
        .out_memdep_1_kernel_3mm_avm_read(kernel_3mm_function_out_memdep_1_kernel_3mm_avm_read),
        .out_memdep_1_kernel_3mm_avm_write(kernel_3mm_function_out_memdep_1_kernel_3mm_avm_write),
        .out_memdep_1_kernel_3mm_avm_writedata(kernel_3mm_function_out_memdep_1_kernel_3mm_avm_writedata),
        .out_memdep_6_kernel_3mm_avm_address(kernel_3mm_function_out_memdep_6_kernel_3mm_avm_address),
        .out_memdep_6_kernel_3mm_avm_burstcount(kernel_3mm_function_out_memdep_6_kernel_3mm_avm_burstcount),
        .out_memdep_6_kernel_3mm_avm_byteenable(kernel_3mm_function_out_memdep_6_kernel_3mm_avm_byteenable),
        .out_memdep_6_kernel_3mm_avm_enable(kernel_3mm_function_out_memdep_6_kernel_3mm_avm_enable),
        .out_memdep_6_kernel_3mm_avm_read(kernel_3mm_function_out_memdep_6_kernel_3mm_avm_read),
        .out_memdep_6_kernel_3mm_avm_write(kernel_3mm_function_out_memdep_6_kernel_3mm_avm_write),
        .out_memdep_6_kernel_3mm_avm_writedata(kernel_3mm_function_out_memdep_6_kernel_3mm_avm_writedata),
        .out_memdep_kernel_3mm_avm_address(kernel_3mm_function_out_memdep_kernel_3mm_avm_address),
        .out_memdep_kernel_3mm_avm_burstcount(kernel_3mm_function_out_memdep_kernel_3mm_avm_burstcount),
        .out_memdep_kernel_3mm_avm_byteenable(kernel_3mm_function_out_memdep_kernel_3mm_avm_byteenable),
        .out_memdep_kernel_3mm_avm_enable(kernel_3mm_function_out_memdep_kernel_3mm_avm_enable),
        .out_memdep_kernel_3mm_avm_read(kernel_3mm_function_out_memdep_kernel_3mm_avm_read),
        .out_memdep_kernel_3mm_avm_write(kernel_3mm_function_out_memdep_kernel_3mm_avm_write),
        .out_memdep_kernel_3mm_avm_writedata(kernel_3mm_function_out_memdep_kernel_3mm_avm_writedata),
        .out_stall_out(),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_address(kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount(kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable(kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_enable(kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_read(kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_write(kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata(kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_address(kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount(kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable(kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_enable(kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_read(kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_write(kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata(kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_address(kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount(kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable(kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_enable(kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_read(kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_write(kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata(kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm2_kernel_3mm_avm_address(kernel_3mm_function_out_unnamed_kernel_3mm2_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm2_kernel_3mm_avm_burstcount(kernel_3mm_function_out_unnamed_kernel_3mm2_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm2_kernel_3mm_avm_byteenable(kernel_3mm_function_out_unnamed_kernel_3mm2_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm2_kernel_3mm_avm_enable(kernel_3mm_function_out_unnamed_kernel_3mm2_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm2_kernel_3mm_avm_read(kernel_3mm_function_out_unnamed_kernel_3mm2_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm2_kernel_3mm_avm_write(kernel_3mm_function_out_unnamed_kernel_3mm2_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm2_kernel_3mm_avm_writedata(kernel_3mm_function_out_unnamed_kernel_3mm2_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_address(kernel_3mm_function_out_unnamed_kernel_3mm4_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount(kernel_3mm_function_out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable(kernel_3mm_function_out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_enable(kernel_3mm_function_out_unnamed_kernel_3mm4_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_read(kernel_3mm_function_out_unnamed_kernel_3mm4_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_write(kernel_3mm_function_out_unnamed_kernel_3mm4_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata(kernel_3mm_function_out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_address(kernel_3mm_function_out_unnamed_kernel_3mm5_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount(kernel_3mm_function_out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable(kernel_3mm_function_out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_enable(kernel_3mm_function_out_unnamed_kernel_3mm5_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_read(kernel_3mm_function_out_unnamed_kernel_3mm5_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_write(kernel_3mm_function_out_unnamed_kernel_3mm5_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata(kernel_3mm_function_out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm6_kernel_3mm_avm_address(kernel_3mm_function_out_unnamed_kernel_3mm6_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm6_kernel_3mm_avm_burstcount(kernel_3mm_function_out_unnamed_kernel_3mm6_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm6_kernel_3mm_avm_byteenable(kernel_3mm_function_out_unnamed_kernel_3mm6_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm6_kernel_3mm_avm_enable(kernel_3mm_function_out_unnamed_kernel_3mm6_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm6_kernel_3mm_avm_read(kernel_3mm_function_out_unnamed_kernel_3mm6_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm6_kernel_3mm_avm_write(kernel_3mm_function_out_unnamed_kernel_3mm6_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm6_kernel_3mm_avm_writedata(kernel_3mm_function_out_unnamed_kernel_3mm6_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_address(kernel_3mm_function_out_unnamed_kernel_3mm8_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount(kernel_3mm_function_out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable(kernel_3mm_function_out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_enable(kernel_3mm_function_out_unnamed_kernel_3mm8_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_read(kernel_3mm_function_out_unnamed_kernel_3mm8_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_write(kernel_3mm_function_out_unnamed_kernel_3mm8_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata(kernel_3mm_function_out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_address(kernel_3mm_function_out_unnamed_kernel_3mm9_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount(kernel_3mm_function_out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable(kernel_3mm_function_out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_enable(kernel_3mm_function_out_unnamed_kernel_3mm9_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_read(kernel_3mm_function_out_unnamed_kernel_3mm9_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_write(kernel_3mm_function_out_unnamed_kernel_3mm9_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata(kernel_3mm_function_out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_memdep_1_kernel_3mm_address(GPOUT,81)
    assign avm_memdep_1_kernel_3mm_address = kernel_3mm_function_out_memdep_1_kernel_3mm_avm_address;

    // avm_memdep_1_kernel_3mm_burstcount(GPOUT,82)
    assign avm_memdep_1_kernel_3mm_burstcount = kernel_3mm_function_out_memdep_1_kernel_3mm_avm_burstcount;

    // avm_memdep_1_kernel_3mm_byteenable(GPOUT,83)
    assign avm_memdep_1_kernel_3mm_byteenable = kernel_3mm_function_out_memdep_1_kernel_3mm_avm_byteenable;

    // avm_memdep_1_kernel_3mm_enable(GPOUT,84)
    assign avm_memdep_1_kernel_3mm_enable = kernel_3mm_function_out_memdep_1_kernel_3mm_avm_enable;

    // avm_memdep_1_kernel_3mm_read(GPOUT,85)
    assign avm_memdep_1_kernel_3mm_read = kernel_3mm_function_out_memdep_1_kernel_3mm_avm_read;

    // avm_memdep_1_kernel_3mm_write(GPOUT,86)
    assign avm_memdep_1_kernel_3mm_write = kernel_3mm_function_out_memdep_1_kernel_3mm_avm_write;

    // avm_memdep_1_kernel_3mm_writedata(GPOUT,87)
    assign avm_memdep_1_kernel_3mm_writedata = kernel_3mm_function_out_memdep_1_kernel_3mm_avm_writedata;

    // avm_memdep_6_kernel_3mm_address(GPOUT,88)
    assign avm_memdep_6_kernel_3mm_address = kernel_3mm_function_out_memdep_6_kernel_3mm_avm_address;

    // avm_memdep_6_kernel_3mm_burstcount(GPOUT,89)
    assign avm_memdep_6_kernel_3mm_burstcount = kernel_3mm_function_out_memdep_6_kernel_3mm_avm_burstcount;

    // avm_memdep_6_kernel_3mm_byteenable(GPOUT,90)
    assign avm_memdep_6_kernel_3mm_byteenable = kernel_3mm_function_out_memdep_6_kernel_3mm_avm_byteenable;

    // avm_memdep_6_kernel_3mm_enable(GPOUT,91)
    assign avm_memdep_6_kernel_3mm_enable = kernel_3mm_function_out_memdep_6_kernel_3mm_avm_enable;

    // avm_memdep_6_kernel_3mm_read(GPOUT,92)
    assign avm_memdep_6_kernel_3mm_read = kernel_3mm_function_out_memdep_6_kernel_3mm_avm_read;

    // avm_memdep_6_kernel_3mm_write(GPOUT,93)
    assign avm_memdep_6_kernel_3mm_write = kernel_3mm_function_out_memdep_6_kernel_3mm_avm_write;

    // avm_memdep_6_kernel_3mm_writedata(GPOUT,94)
    assign avm_memdep_6_kernel_3mm_writedata = kernel_3mm_function_out_memdep_6_kernel_3mm_avm_writedata;

    // avm_memdep_kernel_3mm_address(GPOUT,95)
    assign avm_memdep_kernel_3mm_address = kernel_3mm_function_out_memdep_kernel_3mm_avm_address;

    // avm_memdep_kernel_3mm_burstcount(GPOUT,96)
    assign avm_memdep_kernel_3mm_burstcount = kernel_3mm_function_out_memdep_kernel_3mm_avm_burstcount;

    // avm_memdep_kernel_3mm_byteenable(GPOUT,97)
    assign avm_memdep_kernel_3mm_byteenable = kernel_3mm_function_out_memdep_kernel_3mm_avm_byteenable;

    // avm_memdep_kernel_3mm_enable(GPOUT,98)
    assign avm_memdep_kernel_3mm_enable = kernel_3mm_function_out_memdep_kernel_3mm_avm_enable;

    // avm_memdep_kernel_3mm_read(GPOUT,99)
    assign avm_memdep_kernel_3mm_read = kernel_3mm_function_out_memdep_kernel_3mm_avm_read;

    // avm_memdep_kernel_3mm_write(GPOUT,100)
    assign avm_memdep_kernel_3mm_write = kernel_3mm_function_out_memdep_kernel_3mm_avm_write;

    // avm_memdep_kernel_3mm_writedata(GPOUT,101)
    assign avm_memdep_kernel_3mm_writedata = kernel_3mm_function_out_memdep_kernel_3mm_avm_writedata;

    // avm_unnamed_kernel_3mm10_kernel_3mm_address(GPOUT,102)
    assign avm_unnamed_kernel_3mm10_kernel_3mm_address = kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_address;

    // avm_unnamed_kernel_3mm10_kernel_3mm_burstcount(GPOUT,103)
    assign avm_unnamed_kernel_3mm10_kernel_3mm_burstcount = kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount;

    // avm_unnamed_kernel_3mm10_kernel_3mm_byteenable(GPOUT,104)
    assign avm_unnamed_kernel_3mm10_kernel_3mm_byteenable = kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable;

    // avm_unnamed_kernel_3mm10_kernel_3mm_enable(GPOUT,105)
    assign avm_unnamed_kernel_3mm10_kernel_3mm_enable = kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_enable;

    // avm_unnamed_kernel_3mm10_kernel_3mm_read(GPOUT,106)
    assign avm_unnamed_kernel_3mm10_kernel_3mm_read = kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_read;

    // avm_unnamed_kernel_3mm10_kernel_3mm_write(GPOUT,107)
    assign avm_unnamed_kernel_3mm10_kernel_3mm_write = kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_write;

    // avm_unnamed_kernel_3mm10_kernel_3mm_writedata(GPOUT,108)
    assign avm_unnamed_kernel_3mm10_kernel_3mm_writedata = kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata;

    // avm_unnamed_kernel_3mm12_kernel_3mm_address(GPOUT,109)
    assign avm_unnamed_kernel_3mm12_kernel_3mm_address = kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_address;

    // avm_unnamed_kernel_3mm12_kernel_3mm_burstcount(GPOUT,110)
    assign avm_unnamed_kernel_3mm12_kernel_3mm_burstcount = kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount;

    // avm_unnamed_kernel_3mm12_kernel_3mm_byteenable(GPOUT,111)
    assign avm_unnamed_kernel_3mm12_kernel_3mm_byteenable = kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable;

    // avm_unnamed_kernel_3mm12_kernel_3mm_enable(GPOUT,112)
    assign avm_unnamed_kernel_3mm12_kernel_3mm_enable = kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_enable;

    // avm_unnamed_kernel_3mm12_kernel_3mm_read(GPOUT,113)
    assign avm_unnamed_kernel_3mm12_kernel_3mm_read = kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_read;

    // avm_unnamed_kernel_3mm12_kernel_3mm_write(GPOUT,114)
    assign avm_unnamed_kernel_3mm12_kernel_3mm_write = kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_write;

    // avm_unnamed_kernel_3mm12_kernel_3mm_writedata(GPOUT,115)
    assign avm_unnamed_kernel_3mm12_kernel_3mm_writedata = kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata;

    // avm_unnamed_kernel_3mm13_kernel_3mm_address(GPOUT,116)
    assign avm_unnamed_kernel_3mm13_kernel_3mm_address = kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_address;

    // avm_unnamed_kernel_3mm13_kernel_3mm_burstcount(GPOUT,117)
    assign avm_unnamed_kernel_3mm13_kernel_3mm_burstcount = kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount;

    // avm_unnamed_kernel_3mm13_kernel_3mm_byteenable(GPOUT,118)
    assign avm_unnamed_kernel_3mm13_kernel_3mm_byteenable = kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable;

    // avm_unnamed_kernel_3mm13_kernel_3mm_enable(GPOUT,119)
    assign avm_unnamed_kernel_3mm13_kernel_3mm_enable = kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_enable;

    // avm_unnamed_kernel_3mm13_kernel_3mm_read(GPOUT,120)
    assign avm_unnamed_kernel_3mm13_kernel_3mm_read = kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_read;

    // avm_unnamed_kernel_3mm13_kernel_3mm_write(GPOUT,121)
    assign avm_unnamed_kernel_3mm13_kernel_3mm_write = kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_write;

    // avm_unnamed_kernel_3mm13_kernel_3mm_writedata(GPOUT,122)
    assign avm_unnamed_kernel_3mm13_kernel_3mm_writedata = kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata;

    // avm_unnamed_kernel_3mm2_kernel_3mm_address(GPOUT,123)
    assign avm_unnamed_kernel_3mm2_kernel_3mm_address = kernel_3mm_function_out_unnamed_kernel_3mm2_kernel_3mm_avm_address;

    // avm_unnamed_kernel_3mm2_kernel_3mm_burstcount(GPOUT,124)
    assign avm_unnamed_kernel_3mm2_kernel_3mm_burstcount = kernel_3mm_function_out_unnamed_kernel_3mm2_kernel_3mm_avm_burstcount;

    // avm_unnamed_kernel_3mm2_kernel_3mm_byteenable(GPOUT,125)
    assign avm_unnamed_kernel_3mm2_kernel_3mm_byteenable = kernel_3mm_function_out_unnamed_kernel_3mm2_kernel_3mm_avm_byteenable;

    // avm_unnamed_kernel_3mm2_kernel_3mm_enable(GPOUT,126)
    assign avm_unnamed_kernel_3mm2_kernel_3mm_enable = kernel_3mm_function_out_unnamed_kernel_3mm2_kernel_3mm_avm_enable;

    // avm_unnamed_kernel_3mm2_kernel_3mm_read(GPOUT,127)
    assign avm_unnamed_kernel_3mm2_kernel_3mm_read = kernel_3mm_function_out_unnamed_kernel_3mm2_kernel_3mm_avm_read;

    // avm_unnamed_kernel_3mm2_kernel_3mm_write(GPOUT,128)
    assign avm_unnamed_kernel_3mm2_kernel_3mm_write = kernel_3mm_function_out_unnamed_kernel_3mm2_kernel_3mm_avm_write;

    // avm_unnamed_kernel_3mm2_kernel_3mm_writedata(GPOUT,129)
    assign avm_unnamed_kernel_3mm2_kernel_3mm_writedata = kernel_3mm_function_out_unnamed_kernel_3mm2_kernel_3mm_avm_writedata;

    // avm_unnamed_kernel_3mm4_kernel_3mm_address(GPOUT,130)
    assign avm_unnamed_kernel_3mm4_kernel_3mm_address = kernel_3mm_function_out_unnamed_kernel_3mm4_kernel_3mm_avm_address;

    // avm_unnamed_kernel_3mm4_kernel_3mm_burstcount(GPOUT,131)
    assign avm_unnamed_kernel_3mm4_kernel_3mm_burstcount = kernel_3mm_function_out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount;

    // avm_unnamed_kernel_3mm4_kernel_3mm_byteenable(GPOUT,132)
    assign avm_unnamed_kernel_3mm4_kernel_3mm_byteenable = kernel_3mm_function_out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable;

    // avm_unnamed_kernel_3mm4_kernel_3mm_enable(GPOUT,133)
    assign avm_unnamed_kernel_3mm4_kernel_3mm_enable = kernel_3mm_function_out_unnamed_kernel_3mm4_kernel_3mm_avm_enable;

    // avm_unnamed_kernel_3mm4_kernel_3mm_read(GPOUT,134)
    assign avm_unnamed_kernel_3mm4_kernel_3mm_read = kernel_3mm_function_out_unnamed_kernel_3mm4_kernel_3mm_avm_read;

    // avm_unnamed_kernel_3mm4_kernel_3mm_write(GPOUT,135)
    assign avm_unnamed_kernel_3mm4_kernel_3mm_write = kernel_3mm_function_out_unnamed_kernel_3mm4_kernel_3mm_avm_write;

    // avm_unnamed_kernel_3mm4_kernel_3mm_writedata(GPOUT,136)
    assign avm_unnamed_kernel_3mm4_kernel_3mm_writedata = kernel_3mm_function_out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata;

    // avm_unnamed_kernel_3mm5_kernel_3mm_address(GPOUT,137)
    assign avm_unnamed_kernel_3mm5_kernel_3mm_address = kernel_3mm_function_out_unnamed_kernel_3mm5_kernel_3mm_avm_address;

    // avm_unnamed_kernel_3mm5_kernel_3mm_burstcount(GPOUT,138)
    assign avm_unnamed_kernel_3mm5_kernel_3mm_burstcount = kernel_3mm_function_out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount;

    // avm_unnamed_kernel_3mm5_kernel_3mm_byteenable(GPOUT,139)
    assign avm_unnamed_kernel_3mm5_kernel_3mm_byteenable = kernel_3mm_function_out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable;

    // avm_unnamed_kernel_3mm5_kernel_3mm_enable(GPOUT,140)
    assign avm_unnamed_kernel_3mm5_kernel_3mm_enable = kernel_3mm_function_out_unnamed_kernel_3mm5_kernel_3mm_avm_enable;

    // avm_unnamed_kernel_3mm5_kernel_3mm_read(GPOUT,141)
    assign avm_unnamed_kernel_3mm5_kernel_3mm_read = kernel_3mm_function_out_unnamed_kernel_3mm5_kernel_3mm_avm_read;

    // avm_unnamed_kernel_3mm5_kernel_3mm_write(GPOUT,142)
    assign avm_unnamed_kernel_3mm5_kernel_3mm_write = kernel_3mm_function_out_unnamed_kernel_3mm5_kernel_3mm_avm_write;

    // avm_unnamed_kernel_3mm5_kernel_3mm_writedata(GPOUT,143)
    assign avm_unnamed_kernel_3mm5_kernel_3mm_writedata = kernel_3mm_function_out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata;

    // avm_unnamed_kernel_3mm6_kernel_3mm_address(GPOUT,144)
    assign avm_unnamed_kernel_3mm6_kernel_3mm_address = kernel_3mm_function_out_unnamed_kernel_3mm6_kernel_3mm_avm_address;

    // avm_unnamed_kernel_3mm6_kernel_3mm_burstcount(GPOUT,145)
    assign avm_unnamed_kernel_3mm6_kernel_3mm_burstcount = kernel_3mm_function_out_unnamed_kernel_3mm6_kernel_3mm_avm_burstcount;

    // avm_unnamed_kernel_3mm6_kernel_3mm_byteenable(GPOUT,146)
    assign avm_unnamed_kernel_3mm6_kernel_3mm_byteenable = kernel_3mm_function_out_unnamed_kernel_3mm6_kernel_3mm_avm_byteenable;

    // avm_unnamed_kernel_3mm6_kernel_3mm_enable(GPOUT,147)
    assign avm_unnamed_kernel_3mm6_kernel_3mm_enable = kernel_3mm_function_out_unnamed_kernel_3mm6_kernel_3mm_avm_enable;

    // avm_unnamed_kernel_3mm6_kernel_3mm_read(GPOUT,148)
    assign avm_unnamed_kernel_3mm6_kernel_3mm_read = kernel_3mm_function_out_unnamed_kernel_3mm6_kernel_3mm_avm_read;

    // avm_unnamed_kernel_3mm6_kernel_3mm_write(GPOUT,149)
    assign avm_unnamed_kernel_3mm6_kernel_3mm_write = kernel_3mm_function_out_unnamed_kernel_3mm6_kernel_3mm_avm_write;

    // avm_unnamed_kernel_3mm6_kernel_3mm_writedata(GPOUT,150)
    assign avm_unnamed_kernel_3mm6_kernel_3mm_writedata = kernel_3mm_function_out_unnamed_kernel_3mm6_kernel_3mm_avm_writedata;

    // avm_unnamed_kernel_3mm8_kernel_3mm_address(GPOUT,151)
    assign avm_unnamed_kernel_3mm8_kernel_3mm_address = kernel_3mm_function_out_unnamed_kernel_3mm8_kernel_3mm_avm_address;

    // avm_unnamed_kernel_3mm8_kernel_3mm_burstcount(GPOUT,152)
    assign avm_unnamed_kernel_3mm8_kernel_3mm_burstcount = kernel_3mm_function_out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount;

    // avm_unnamed_kernel_3mm8_kernel_3mm_byteenable(GPOUT,153)
    assign avm_unnamed_kernel_3mm8_kernel_3mm_byteenable = kernel_3mm_function_out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable;

    // avm_unnamed_kernel_3mm8_kernel_3mm_enable(GPOUT,154)
    assign avm_unnamed_kernel_3mm8_kernel_3mm_enable = kernel_3mm_function_out_unnamed_kernel_3mm8_kernel_3mm_avm_enable;

    // avm_unnamed_kernel_3mm8_kernel_3mm_read(GPOUT,155)
    assign avm_unnamed_kernel_3mm8_kernel_3mm_read = kernel_3mm_function_out_unnamed_kernel_3mm8_kernel_3mm_avm_read;

    // avm_unnamed_kernel_3mm8_kernel_3mm_write(GPOUT,156)
    assign avm_unnamed_kernel_3mm8_kernel_3mm_write = kernel_3mm_function_out_unnamed_kernel_3mm8_kernel_3mm_avm_write;

    // avm_unnamed_kernel_3mm8_kernel_3mm_writedata(GPOUT,157)
    assign avm_unnamed_kernel_3mm8_kernel_3mm_writedata = kernel_3mm_function_out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata;

    // avm_unnamed_kernel_3mm9_kernel_3mm_address(GPOUT,158)
    assign avm_unnamed_kernel_3mm9_kernel_3mm_address = kernel_3mm_function_out_unnamed_kernel_3mm9_kernel_3mm_avm_address;

    // avm_unnamed_kernel_3mm9_kernel_3mm_burstcount(GPOUT,159)
    assign avm_unnamed_kernel_3mm9_kernel_3mm_burstcount = kernel_3mm_function_out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount;

    // avm_unnamed_kernel_3mm9_kernel_3mm_byteenable(GPOUT,160)
    assign avm_unnamed_kernel_3mm9_kernel_3mm_byteenable = kernel_3mm_function_out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable;

    // avm_unnamed_kernel_3mm9_kernel_3mm_enable(GPOUT,161)
    assign avm_unnamed_kernel_3mm9_kernel_3mm_enable = kernel_3mm_function_out_unnamed_kernel_3mm9_kernel_3mm_avm_enable;

    // avm_unnamed_kernel_3mm9_kernel_3mm_read(GPOUT,162)
    assign avm_unnamed_kernel_3mm9_kernel_3mm_read = kernel_3mm_function_out_unnamed_kernel_3mm9_kernel_3mm_avm_read;

    // avm_unnamed_kernel_3mm9_kernel_3mm_write(GPOUT,163)
    assign avm_unnamed_kernel_3mm9_kernel_3mm_write = kernel_3mm_function_out_unnamed_kernel_3mm9_kernel_3mm_avm_write;

    // avm_unnamed_kernel_3mm9_kernel_3mm_writedata(GPOUT,164)
    assign avm_unnamed_kernel_3mm9_kernel_3mm_writedata = kernel_3mm_function_out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata;

    // avst_iord_bl_call_kernel_3mm_almost_full(GPOUT,165)
    assign avst_iord_bl_call_kernel_3mm_almost_full = kernel_3mm_function_out_iord_bl_call_kernel_3mm_o_fifoalmost_full;

    // avst_iord_bl_call_kernel_3mm_ready(GPOUT,166)
    assign avst_iord_bl_call_kernel_3mm_ready = kernel_3mm_function_out_iord_bl_call_kernel_3mm_o_fifoready;

    // avst_iowr_bl_return_kernel_3mm_data(GPOUT,167)
    assign avst_iowr_bl_return_kernel_3mm_data = kernel_3mm_function_out_iowr_bl_return_kernel_3mm_o_fifodata;

    // avst_iowr_bl_return_kernel_3mm_valid(GPOUT,168)
    assign avst_iowr_bl_return_kernel_3mm_valid = kernel_3mm_function_out_iowr_bl_return_kernel_3mm_o_fifovalid;

    // not_ready(LOGICAL,79)
    assign not_ready_q = ~ (kernel_3mm_function_out_iord_bl_call_kernel_3mm_o_fifoready);

    // busy_and(LOGICAL,9)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,172)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,171)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,10)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,169)
    assign busy = busy_or_q;

    // done(GPOUT,170)
    assign done = kernel_3mm_function_out_iowr_bl_return_kernel_3mm_o_fifovalid;

endmodule
