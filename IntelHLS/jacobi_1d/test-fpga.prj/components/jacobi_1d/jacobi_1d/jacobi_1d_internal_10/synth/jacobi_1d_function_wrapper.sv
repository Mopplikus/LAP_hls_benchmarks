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

// SystemVerilog created from jacobi_1d_function_wrapper
// Created for function/kernel jacobi_1d
// SystemVerilog created on Wed Apr  5 13:32:11 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module jacobi_1d_function_wrapper (
    input wire [63:0] A_1,
    input wire [63:0] A_2,
    input wire [63:0] B,
    input wire [31:0] avm_memdep_2_jacobi_1d_readdata,
    input wire [0:0] avm_memdep_2_jacobi_1d_readdatavalid,
    input wire [0:0] avm_memdep_2_jacobi_1d_waitrequest,
    input wire [0:0] avm_memdep_2_jacobi_1d_writeack,
    input wire [31:0] avm_memdep_3_jacobi_1d_readdata,
    input wire [0:0] avm_memdep_3_jacobi_1d_readdatavalid,
    input wire [0:0] avm_memdep_3_jacobi_1d_waitrequest,
    input wire [0:0] avm_memdep_3_jacobi_1d_writeack,
    input wire [31:0] avm_memdep_4_jacobi_1d_readdata,
    input wire [0:0] avm_memdep_4_jacobi_1d_readdatavalid,
    input wire [0:0] avm_memdep_4_jacobi_1d_waitrequest,
    input wire [0:0] avm_memdep_4_jacobi_1d_writeack,
    input wire [31:0] avm_memdep_5_jacobi_1d_readdata,
    input wire [0:0] avm_memdep_5_jacobi_1d_readdatavalid,
    input wire [0:0] avm_memdep_5_jacobi_1d_waitrequest,
    input wire [0:0] avm_memdep_5_jacobi_1d_writeack,
    input wire [63:0] avm_memdep_6_jacobi_1d_readdata,
    input wire [0:0] avm_memdep_6_jacobi_1d_readdatavalid,
    input wire [0:0] avm_memdep_6_jacobi_1d_waitrequest,
    input wire [0:0] avm_memdep_6_jacobi_1d_writeack,
    input wire [63:0] avm_memdep_7_jacobi_1d_readdata,
    input wire [0:0] avm_memdep_7_jacobi_1d_readdatavalid,
    input wire [0:0] avm_memdep_7_jacobi_1d_waitrequest,
    input wire [0:0] avm_memdep_7_jacobi_1d_writeack,
    input wire [31:0] avm_memdep_jacobi_1d_readdata,
    input wire [0:0] avm_memdep_jacobi_1d_readdatavalid,
    input wire [0:0] avm_memdep_jacobi_1d_waitrequest,
    input wire [0:0] avm_memdep_jacobi_1d_writeack,
    input wire [31:0] avm_pre_pre1_jacobi_1d_readdata,
    input wire [0:0] avm_pre_pre1_jacobi_1d_readdatavalid,
    input wire [0:0] avm_pre_pre1_jacobi_1d_waitrequest,
    input wire [0:0] avm_pre_pre1_jacobi_1d_writeack,
    input wire [63:0] avm_unnamed_jacobi_1d10_jacobi_1d_readdata,
    input wire [0:0] avm_unnamed_jacobi_1d10_jacobi_1d_readdatavalid,
    input wire [0:0] avm_unnamed_jacobi_1d10_jacobi_1d_waitrequest,
    input wire [0:0] avm_unnamed_jacobi_1d10_jacobi_1d_writeack,
    input wire [63:0] avm_unnamed_jacobi_1d11_jacobi_1d_readdata,
    input wire [0:0] avm_unnamed_jacobi_1d11_jacobi_1d_readdatavalid,
    input wire [0:0] avm_unnamed_jacobi_1d11_jacobi_1d_waitrequest,
    input wire [0:0] avm_unnamed_jacobi_1d11_jacobi_1d_writeack,
    input wire [31:0] avm_unnamed_jacobi_1d12_jacobi_1d_readdata,
    input wire [0:0] avm_unnamed_jacobi_1d12_jacobi_1d_readdatavalid,
    input wire [0:0] avm_unnamed_jacobi_1d12_jacobi_1d_waitrequest,
    input wire [0:0] avm_unnamed_jacobi_1d12_jacobi_1d_writeack,
    input wire [31:0] avm_unnamed_jacobi_1d13_jacobi_1d_readdata,
    input wire [0:0] avm_unnamed_jacobi_1d13_jacobi_1d_readdatavalid,
    input wire [0:0] avm_unnamed_jacobi_1d13_jacobi_1d_waitrequest,
    input wire [0:0] avm_unnamed_jacobi_1d13_jacobi_1d_writeack,
    input wire [31:0] avm_unnamed_jacobi_1d14_jacobi_1d_readdata,
    input wire [0:0] avm_unnamed_jacobi_1d14_jacobi_1d_readdatavalid,
    input wire [0:0] avm_unnamed_jacobi_1d14_jacobi_1d_waitrequest,
    input wire [0:0] avm_unnamed_jacobi_1d14_jacobi_1d_writeack,
    input wire [31:0] avm_unnamed_jacobi_1d15_jacobi_1d_readdata,
    input wire [0:0] avm_unnamed_jacobi_1d15_jacobi_1d_readdatavalid,
    input wire [0:0] avm_unnamed_jacobi_1d15_jacobi_1d_waitrequest,
    input wire [0:0] avm_unnamed_jacobi_1d15_jacobi_1d_writeack,
    input wire [63:0] avm_unnamed_jacobi_1d9_jacobi_1d_readdata,
    input wire [0:0] avm_unnamed_jacobi_1d9_jacobi_1d_readdatavalid,
    input wire [0:0] avm_unnamed_jacobi_1d9_jacobi_1d_waitrequest,
    input wire [0:0] avm_unnamed_jacobi_1d9_jacobi_1d_writeack,
    input wire [191:0] avst_iord_bl_call_jacobi_1d_data,
    input wire [0:0] avst_iord_bl_call_jacobi_1d_valid,
    input wire [0:0] avst_iowr_bl_return_jacobi_1d_almostfull,
    input wire [0:0] avst_iowr_bl_return_jacobi_1d_ready,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [31:0] avm_memdep_2_jacobi_1d_address,
    output wire [0:0] avm_memdep_2_jacobi_1d_burstcount,
    output wire [3:0] avm_memdep_2_jacobi_1d_byteenable,
    output wire [0:0] avm_memdep_2_jacobi_1d_enable,
    output wire [0:0] avm_memdep_2_jacobi_1d_read,
    output wire [0:0] avm_memdep_2_jacobi_1d_write,
    output wire [31:0] avm_memdep_2_jacobi_1d_writedata,
    output wire [31:0] avm_memdep_3_jacobi_1d_address,
    output wire [0:0] avm_memdep_3_jacobi_1d_burstcount,
    output wire [3:0] avm_memdep_3_jacobi_1d_byteenable,
    output wire [0:0] avm_memdep_3_jacobi_1d_enable,
    output wire [0:0] avm_memdep_3_jacobi_1d_read,
    output wire [0:0] avm_memdep_3_jacobi_1d_write,
    output wire [31:0] avm_memdep_3_jacobi_1d_writedata,
    output wire [31:0] avm_memdep_4_jacobi_1d_address,
    output wire [0:0] avm_memdep_4_jacobi_1d_burstcount,
    output wire [3:0] avm_memdep_4_jacobi_1d_byteenable,
    output wire [0:0] avm_memdep_4_jacobi_1d_enable,
    output wire [0:0] avm_memdep_4_jacobi_1d_read,
    output wire [0:0] avm_memdep_4_jacobi_1d_write,
    output wire [31:0] avm_memdep_4_jacobi_1d_writedata,
    output wire [31:0] avm_memdep_5_jacobi_1d_address,
    output wire [0:0] avm_memdep_5_jacobi_1d_burstcount,
    output wire [3:0] avm_memdep_5_jacobi_1d_byteenable,
    output wire [0:0] avm_memdep_5_jacobi_1d_enable,
    output wire [0:0] avm_memdep_5_jacobi_1d_read,
    output wire [0:0] avm_memdep_5_jacobi_1d_write,
    output wire [31:0] avm_memdep_5_jacobi_1d_writedata,
    output wire [63:0] avm_memdep_6_jacobi_1d_address,
    output wire [0:0] avm_memdep_6_jacobi_1d_burstcount,
    output wire [7:0] avm_memdep_6_jacobi_1d_byteenable,
    output wire [0:0] avm_memdep_6_jacobi_1d_enable,
    output wire [0:0] avm_memdep_6_jacobi_1d_read,
    output wire [0:0] avm_memdep_6_jacobi_1d_write,
    output wire [63:0] avm_memdep_6_jacobi_1d_writedata,
    output wire [63:0] avm_memdep_7_jacobi_1d_address,
    output wire [0:0] avm_memdep_7_jacobi_1d_burstcount,
    output wire [7:0] avm_memdep_7_jacobi_1d_byteenable,
    output wire [0:0] avm_memdep_7_jacobi_1d_enable,
    output wire [0:0] avm_memdep_7_jacobi_1d_read,
    output wire [0:0] avm_memdep_7_jacobi_1d_write,
    output wire [63:0] avm_memdep_7_jacobi_1d_writedata,
    output wire [31:0] avm_memdep_jacobi_1d_address,
    output wire [0:0] avm_memdep_jacobi_1d_burstcount,
    output wire [3:0] avm_memdep_jacobi_1d_byteenable,
    output wire [0:0] avm_memdep_jacobi_1d_enable,
    output wire [0:0] avm_memdep_jacobi_1d_read,
    output wire [0:0] avm_memdep_jacobi_1d_write,
    output wire [31:0] avm_memdep_jacobi_1d_writedata,
    output wire [31:0] avm_pre_pre1_jacobi_1d_address,
    output wire [0:0] avm_pre_pre1_jacobi_1d_burstcount,
    output wire [3:0] avm_pre_pre1_jacobi_1d_byteenable,
    output wire [0:0] avm_pre_pre1_jacobi_1d_enable,
    output wire [0:0] avm_pre_pre1_jacobi_1d_read,
    output wire [0:0] avm_pre_pre1_jacobi_1d_write,
    output wire [31:0] avm_pre_pre1_jacobi_1d_writedata,
    output wire [63:0] avm_unnamed_jacobi_1d10_jacobi_1d_address,
    output wire [0:0] avm_unnamed_jacobi_1d10_jacobi_1d_burstcount,
    output wire [7:0] avm_unnamed_jacobi_1d10_jacobi_1d_byteenable,
    output wire [0:0] avm_unnamed_jacobi_1d10_jacobi_1d_enable,
    output wire [0:0] avm_unnamed_jacobi_1d10_jacobi_1d_read,
    output wire [0:0] avm_unnamed_jacobi_1d10_jacobi_1d_write,
    output wire [63:0] avm_unnamed_jacobi_1d10_jacobi_1d_writedata,
    output wire [63:0] avm_unnamed_jacobi_1d11_jacobi_1d_address,
    output wire [0:0] avm_unnamed_jacobi_1d11_jacobi_1d_burstcount,
    output wire [7:0] avm_unnamed_jacobi_1d11_jacobi_1d_byteenable,
    output wire [0:0] avm_unnamed_jacobi_1d11_jacobi_1d_enable,
    output wire [0:0] avm_unnamed_jacobi_1d11_jacobi_1d_read,
    output wire [0:0] avm_unnamed_jacobi_1d11_jacobi_1d_write,
    output wire [63:0] avm_unnamed_jacobi_1d11_jacobi_1d_writedata,
    output wire [31:0] avm_unnamed_jacobi_1d12_jacobi_1d_address,
    output wire [0:0] avm_unnamed_jacobi_1d12_jacobi_1d_burstcount,
    output wire [3:0] avm_unnamed_jacobi_1d12_jacobi_1d_byteenable,
    output wire [0:0] avm_unnamed_jacobi_1d12_jacobi_1d_enable,
    output wire [0:0] avm_unnamed_jacobi_1d12_jacobi_1d_read,
    output wire [0:0] avm_unnamed_jacobi_1d12_jacobi_1d_write,
    output wire [31:0] avm_unnamed_jacobi_1d12_jacobi_1d_writedata,
    output wire [31:0] avm_unnamed_jacobi_1d13_jacobi_1d_address,
    output wire [0:0] avm_unnamed_jacobi_1d13_jacobi_1d_burstcount,
    output wire [3:0] avm_unnamed_jacobi_1d13_jacobi_1d_byteenable,
    output wire [0:0] avm_unnamed_jacobi_1d13_jacobi_1d_enable,
    output wire [0:0] avm_unnamed_jacobi_1d13_jacobi_1d_read,
    output wire [0:0] avm_unnamed_jacobi_1d13_jacobi_1d_write,
    output wire [31:0] avm_unnamed_jacobi_1d13_jacobi_1d_writedata,
    output wire [31:0] avm_unnamed_jacobi_1d14_jacobi_1d_address,
    output wire [0:0] avm_unnamed_jacobi_1d14_jacobi_1d_burstcount,
    output wire [3:0] avm_unnamed_jacobi_1d14_jacobi_1d_byteenable,
    output wire [0:0] avm_unnamed_jacobi_1d14_jacobi_1d_enable,
    output wire [0:0] avm_unnamed_jacobi_1d14_jacobi_1d_read,
    output wire [0:0] avm_unnamed_jacobi_1d14_jacobi_1d_write,
    output wire [31:0] avm_unnamed_jacobi_1d14_jacobi_1d_writedata,
    output wire [31:0] avm_unnamed_jacobi_1d15_jacobi_1d_address,
    output wire [0:0] avm_unnamed_jacobi_1d15_jacobi_1d_burstcount,
    output wire [3:0] avm_unnamed_jacobi_1d15_jacobi_1d_byteenable,
    output wire [0:0] avm_unnamed_jacobi_1d15_jacobi_1d_enable,
    output wire [0:0] avm_unnamed_jacobi_1d15_jacobi_1d_read,
    output wire [0:0] avm_unnamed_jacobi_1d15_jacobi_1d_write,
    output wire [31:0] avm_unnamed_jacobi_1d15_jacobi_1d_writedata,
    output wire [63:0] avm_unnamed_jacobi_1d9_jacobi_1d_address,
    output wire [0:0] avm_unnamed_jacobi_1d9_jacobi_1d_burstcount,
    output wire [7:0] avm_unnamed_jacobi_1d9_jacobi_1d_byteenable,
    output wire [0:0] avm_unnamed_jacobi_1d9_jacobi_1d_enable,
    output wire [0:0] avm_unnamed_jacobi_1d9_jacobi_1d_read,
    output wire [0:0] avm_unnamed_jacobi_1d9_jacobi_1d_write,
    output wire [63:0] avm_unnamed_jacobi_1d9_jacobi_1d_writedata,
    output wire [0:0] avst_iord_bl_call_jacobi_1d_almost_full,
    output wire [0:0] avst_iord_bl_call_jacobi_1d_ready,
    output wire [0:0] avst_iowr_bl_return_jacobi_1d_data,
    output wire [0:0] avst_iowr_bl_return_jacobi_1d_valid,
    output wire [0:0] busy,
    output wire [0:0] done,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] A_1_const_q;
    wire [0:0] busy_and_q;
    wire [0:0] busy_or_q;
    wire [191:0] implicit_input_q;
    wire [0:0] jacobi_1d_function_out_iord_bl_call_jacobi_1d_o_fifoalmost_full;
    wire [0:0] jacobi_1d_function_out_iord_bl_call_jacobi_1d_o_fifoready;
    wire [0:0] jacobi_1d_function_out_iowr_bl_return_jacobi_1d_o_fifodata;
    wire [0:0] jacobi_1d_function_out_iowr_bl_return_jacobi_1d_o_fifovalid;
    wire [31:0] jacobi_1d_function_out_memdep_2_jacobi_1d_avm_address;
    wire [0:0] jacobi_1d_function_out_memdep_2_jacobi_1d_avm_burstcount;
    wire [3:0] jacobi_1d_function_out_memdep_2_jacobi_1d_avm_byteenable;
    wire [0:0] jacobi_1d_function_out_memdep_2_jacobi_1d_avm_enable;
    wire [0:0] jacobi_1d_function_out_memdep_2_jacobi_1d_avm_read;
    wire [0:0] jacobi_1d_function_out_memdep_2_jacobi_1d_avm_write;
    wire [31:0] jacobi_1d_function_out_memdep_2_jacobi_1d_avm_writedata;
    wire [31:0] jacobi_1d_function_out_memdep_3_jacobi_1d_avm_address;
    wire [0:0] jacobi_1d_function_out_memdep_3_jacobi_1d_avm_burstcount;
    wire [3:0] jacobi_1d_function_out_memdep_3_jacobi_1d_avm_byteenable;
    wire [0:0] jacobi_1d_function_out_memdep_3_jacobi_1d_avm_enable;
    wire [0:0] jacobi_1d_function_out_memdep_3_jacobi_1d_avm_read;
    wire [0:0] jacobi_1d_function_out_memdep_3_jacobi_1d_avm_write;
    wire [31:0] jacobi_1d_function_out_memdep_3_jacobi_1d_avm_writedata;
    wire [31:0] jacobi_1d_function_out_memdep_4_jacobi_1d_avm_address;
    wire [0:0] jacobi_1d_function_out_memdep_4_jacobi_1d_avm_burstcount;
    wire [3:0] jacobi_1d_function_out_memdep_4_jacobi_1d_avm_byteenable;
    wire [0:0] jacobi_1d_function_out_memdep_4_jacobi_1d_avm_enable;
    wire [0:0] jacobi_1d_function_out_memdep_4_jacobi_1d_avm_read;
    wire [0:0] jacobi_1d_function_out_memdep_4_jacobi_1d_avm_write;
    wire [31:0] jacobi_1d_function_out_memdep_4_jacobi_1d_avm_writedata;
    wire [31:0] jacobi_1d_function_out_memdep_5_jacobi_1d_avm_address;
    wire [0:0] jacobi_1d_function_out_memdep_5_jacobi_1d_avm_burstcount;
    wire [3:0] jacobi_1d_function_out_memdep_5_jacobi_1d_avm_byteenable;
    wire [0:0] jacobi_1d_function_out_memdep_5_jacobi_1d_avm_enable;
    wire [0:0] jacobi_1d_function_out_memdep_5_jacobi_1d_avm_read;
    wire [0:0] jacobi_1d_function_out_memdep_5_jacobi_1d_avm_write;
    wire [31:0] jacobi_1d_function_out_memdep_5_jacobi_1d_avm_writedata;
    wire [63:0] jacobi_1d_function_out_memdep_6_jacobi_1d_avm_address;
    wire [0:0] jacobi_1d_function_out_memdep_6_jacobi_1d_avm_burstcount;
    wire [7:0] jacobi_1d_function_out_memdep_6_jacobi_1d_avm_byteenable;
    wire [0:0] jacobi_1d_function_out_memdep_6_jacobi_1d_avm_enable;
    wire [0:0] jacobi_1d_function_out_memdep_6_jacobi_1d_avm_read;
    wire [0:0] jacobi_1d_function_out_memdep_6_jacobi_1d_avm_write;
    wire [63:0] jacobi_1d_function_out_memdep_6_jacobi_1d_avm_writedata;
    wire [63:0] jacobi_1d_function_out_memdep_7_jacobi_1d_avm_address;
    wire [0:0] jacobi_1d_function_out_memdep_7_jacobi_1d_avm_burstcount;
    wire [7:0] jacobi_1d_function_out_memdep_7_jacobi_1d_avm_byteenable;
    wire [0:0] jacobi_1d_function_out_memdep_7_jacobi_1d_avm_enable;
    wire [0:0] jacobi_1d_function_out_memdep_7_jacobi_1d_avm_read;
    wire [0:0] jacobi_1d_function_out_memdep_7_jacobi_1d_avm_write;
    wire [63:0] jacobi_1d_function_out_memdep_7_jacobi_1d_avm_writedata;
    wire [31:0] jacobi_1d_function_out_memdep_jacobi_1d_avm_address;
    wire [0:0] jacobi_1d_function_out_memdep_jacobi_1d_avm_burstcount;
    wire [3:0] jacobi_1d_function_out_memdep_jacobi_1d_avm_byteenable;
    wire [0:0] jacobi_1d_function_out_memdep_jacobi_1d_avm_enable;
    wire [0:0] jacobi_1d_function_out_memdep_jacobi_1d_avm_read;
    wire [0:0] jacobi_1d_function_out_memdep_jacobi_1d_avm_write;
    wire [31:0] jacobi_1d_function_out_memdep_jacobi_1d_avm_writedata;
    wire [31:0] jacobi_1d_function_out_pre_pre1_jacobi_1d_avm_address;
    wire [0:0] jacobi_1d_function_out_pre_pre1_jacobi_1d_avm_burstcount;
    wire [3:0] jacobi_1d_function_out_pre_pre1_jacobi_1d_avm_byteenable;
    wire [0:0] jacobi_1d_function_out_pre_pre1_jacobi_1d_avm_enable;
    wire [0:0] jacobi_1d_function_out_pre_pre1_jacobi_1d_avm_read;
    wire [0:0] jacobi_1d_function_out_pre_pre1_jacobi_1d_avm_write;
    wire [31:0] jacobi_1d_function_out_pre_pre1_jacobi_1d_avm_writedata;
    wire [63:0] jacobi_1d_function_out_unnamed_jacobi_1d10_jacobi_1d_avm_address;
    wire [0:0] jacobi_1d_function_out_unnamed_jacobi_1d10_jacobi_1d_avm_burstcount;
    wire [7:0] jacobi_1d_function_out_unnamed_jacobi_1d10_jacobi_1d_avm_byteenable;
    wire [0:0] jacobi_1d_function_out_unnamed_jacobi_1d10_jacobi_1d_avm_enable;
    wire [0:0] jacobi_1d_function_out_unnamed_jacobi_1d10_jacobi_1d_avm_read;
    wire [0:0] jacobi_1d_function_out_unnamed_jacobi_1d10_jacobi_1d_avm_write;
    wire [63:0] jacobi_1d_function_out_unnamed_jacobi_1d10_jacobi_1d_avm_writedata;
    wire [63:0] jacobi_1d_function_out_unnamed_jacobi_1d11_jacobi_1d_avm_address;
    wire [0:0] jacobi_1d_function_out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount;
    wire [7:0] jacobi_1d_function_out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable;
    wire [0:0] jacobi_1d_function_out_unnamed_jacobi_1d11_jacobi_1d_avm_enable;
    wire [0:0] jacobi_1d_function_out_unnamed_jacobi_1d11_jacobi_1d_avm_read;
    wire [0:0] jacobi_1d_function_out_unnamed_jacobi_1d11_jacobi_1d_avm_write;
    wire [63:0] jacobi_1d_function_out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata;
    wire [31:0] jacobi_1d_function_out_unnamed_jacobi_1d12_jacobi_1d_avm_address;
    wire [0:0] jacobi_1d_function_out_unnamed_jacobi_1d12_jacobi_1d_avm_burstcount;
    wire [3:0] jacobi_1d_function_out_unnamed_jacobi_1d12_jacobi_1d_avm_byteenable;
    wire [0:0] jacobi_1d_function_out_unnamed_jacobi_1d12_jacobi_1d_avm_enable;
    wire [0:0] jacobi_1d_function_out_unnamed_jacobi_1d12_jacobi_1d_avm_read;
    wire [0:0] jacobi_1d_function_out_unnamed_jacobi_1d12_jacobi_1d_avm_write;
    wire [31:0] jacobi_1d_function_out_unnamed_jacobi_1d12_jacobi_1d_avm_writedata;
    wire [31:0] jacobi_1d_function_out_unnamed_jacobi_1d13_jacobi_1d_avm_address;
    wire [0:0] jacobi_1d_function_out_unnamed_jacobi_1d13_jacobi_1d_avm_burstcount;
    wire [3:0] jacobi_1d_function_out_unnamed_jacobi_1d13_jacobi_1d_avm_byteenable;
    wire [0:0] jacobi_1d_function_out_unnamed_jacobi_1d13_jacobi_1d_avm_enable;
    wire [0:0] jacobi_1d_function_out_unnamed_jacobi_1d13_jacobi_1d_avm_read;
    wire [0:0] jacobi_1d_function_out_unnamed_jacobi_1d13_jacobi_1d_avm_write;
    wire [31:0] jacobi_1d_function_out_unnamed_jacobi_1d13_jacobi_1d_avm_writedata;
    wire [31:0] jacobi_1d_function_out_unnamed_jacobi_1d14_jacobi_1d_avm_address;
    wire [0:0] jacobi_1d_function_out_unnamed_jacobi_1d14_jacobi_1d_avm_burstcount;
    wire [3:0] jacobi_1d_function_out_unnamed_jacobi_1d14_jacobi_1d_avm_byteenable;
    wire [0:0] jacobi_1d_function_out_unnamed_jacobi_1d14_jacobi_1d_avm_enable;
    wire [0:0] jacobi_1d_function_out_unnamed_jacobi_1d14_jacobi_1d_avm_read;
    wire [0:0] jacobi_1d_function_out_unnamed_jacobi_1d14_jacobi_1d_avm_write;
    wire [31:0] jacobi_1d_function_out_unnamed_jacobi_1d14_jacobi_1d_avm_writedata;
    wire [31:0] jacobi_1d_function_out_unnamed_jacobi_1d15_jacobi_1d_avm_address;
    wire [0:0] jacobi_1d_function_out_unnamed_jacobi_1d15_jacobi_1d_avm_burstcount;
    wire [3:0] jacobi_1d_function_out_unnamed_jacobi_1d15_jacobi_1d_avm_byteenable;
    wire [0:0] jacobi_1d_function_out_unnamed_jacobi_1d15_jacobi_1d_avm_enable;
    wire [0:0] jacobi_1d_function_out_unnamed_jacobi_1d15_jacobi_1d_avm_read;
    wire [0:0] jacobi_1d_function_out_unnamed_jacobi_1d15_jacobi_1d_avm_write;
    wire [31:0] jacobi_1d_function_out_unnamed_jacobi_1d15_jacobi_1d_avm_writedata;
    wire [63:0] jacobi_1d_function_out_unnamed_jacobi_1d9_jacobi_1d_avm_address;
    wire [0:0] jacobi_1d_function_out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount;
    wire [7:0] jacobi_1d_function_out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable;
    wire [0:0] jacobi_1d_function_out_unnamed_jacobi_1d9_jacobi_1d_avm_enable;
    wire [0:0] jacobi_1d_function_out_unnamed_jacobi_1d9_jacobi_1d_avm_read;
    wire [0:0] jacobi_1d_function_out_unnamed_jacobi_1d9_jacobi_1d_avm_write;
    wire [63:0] jacobi_1d_function_out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,84)
    assign not_stall_q = ~ (stall);

    // implicit_input(BITJOIN,10)
    assign implicit_input_q = {B, A_2, A_1};

    // A_1_const(CONSTANT,2)
    assign A_1_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // jacobi_1d_function(BLACKBOX,82)
    jacobi_1d_function thejacobi_1d_function (
        .in_arg_A_1(A_1_const_q),
        .in_arg_A_2(A_1_const_q),
        .in_arg_B(A_1_const_q),
        .in_arg_call(A_1_const_q),
        .in_arg_return(A_1_const_q),
        .in_iord_bl_call_jacobi_1d_i_fifodata(implicit_input_q),
        .in_iord_bl_call_jacobi_1d_i_fifovalid(start),
        .in_iowr_bl_return_jacobi_1d_i_fifoready(not_stall_q),
        .in_memdep_2_jacobi_1d_avm_readdata(avm_memdep_2_jacobi_1d_readdata),
        .in_memdep_2_jacobi_1d_avm_readdatavalid(avm_memdep_2_jacobi_1d_readdatavalid),
        .in_memdep_2_jacobi_1d_avm_waitrequest(avm_memdep_2_jacobi_1d_waitrequest),
        .in_memdep_2_jacobi_1d_avm_writeack(avm_memdep_2_jacobi_1d_writeack),
        .in_memdep_3_jacobi_1d_avm_readdata(avm_memdep_3_jacobi_1d_readdata),
        .in_memdep_3_jacobi_1d_avm_readdatavalid(avm_memdep_3_jacobi_1d_readdatavalid),
        .in_memdep_3_jacobi_1d_avm_waitrequest(avm_memdep_3_jacobi_1d_waitrequest),
        .in_memdep_3_jacobi_1d_avm_writeack(avm_memdep_3_jacobi_1d_writeack),
        .in_memdep_4_jacobi_1d_avm_readdata(avm_memdep_4_jacobi_1d_readdata),
        .in_memdep_4_jacobi_1d_avm_readdatavalid(avm_memdep_4_jacobi_1d_readdatavalid),
        .in_memdep_4_jacobi_1d_avm_waitrequest(avm_memdep_4_jacobi_1d_waitrequest),
        .in_memdep_4_jacobi_1d_avm_writeack(avm_memdep_4_jacobi_1d_writeack),
        .in_memdep_5_jacobi_1d_avm_readdata(avm_memdep_5_jacobi_1d_readdata),
        .in_memdep_5_jacobi_1d_avm_readdatavalid(avm_memdep_5_jacobi_1d_readdatavalid),
        .in_memdep_5_jacobi_1d_avm_waitrequest(avm_memdep_5_jacobi_1d_waitrequest),
        .in_memdep_5_jacobi_1d_avm_writeack(avm_memdep_5_jacobi_1d_writeack),
        .in_memdep_6_jacobi_1d_avm_readdata(avm_memdep_6_jacobi_1d_readdata),
        .in_memdep_6_jacobi_1d_avm_readdatavalid(avm_memdep_6_jacobi_1d_readdatavalid),
        .in_memdep_6_jacobi_1d_avm_waitrequest(avm_memdep_6_jacobi_1d_waitrequest),
        .in_memdep_6_jacobi_1d_avm_writeack(avm_memdep_6_jacobi_1d_writeack),
        .in_memdep_7_jacobi_1d_avm_readdata(avm_memdep_7_jacobi_1d_readdata),
        .in_memdep_7_jacobi_1d_avm_readdatavalid(avm_memdep_7_jacobi_1d_readdatavalid),
        .in_memdep_7_jacobi_1d_avm_waitrequest(avm_memdep_7_jacobi_1d_waitrequest),
        .in_memdep_7_jacobi_1d_avm_writeack(avm_memdep_7_jacobi_1d_writeack),
        .in_memdep_jacobi_1d_avm_readdata(avm_memdep_jacobi_1d_readdata),
        .in_memdep_jacobi_1d_avm_readdatavalid(avm_memdep_jacobi_1d_readdatavalid),
        .in_memdep_jacobi_1d_avm_waitrequest(avm_memdep_jacobi_1d_waitrequest),
        .in_memdep_jacobi_1d_avm_writeack(avm_memdep_jacobi_1d_writeack),
        .in_pre_pre1_jacobi_1d_avm_readdata(avm_pre_pre1_jacobi_1d_readdata),
        .in_pre_pre1_jacobi_1d_avm_readdatavalid(avm_pre_pre1_jacobi_1d_readdatavalid),
        .in_pre_pre1_jacobi_1d_avm_waitrequest(avm_pre_pre1_jacobi_1d_waitrequest),
        .in_pre_pre1_jacobi_1d_avm_writeack(avm_pre_pre1_jacobi_1d_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_unnamed_jacobi_1d10_jacobi_1d_avm_readdata(avm_unnamed_jacobi_1d10_jacobi_1d_readdata),
        .in_unnamed_jacobi_1d10_jacobi_1d_avm_readdatavalid(avm_unnamed_jacobi_1d10_jacobi_1d_readdatavalid),
        .in_unnamed_jacobi_1d10_jacobi_1d_avm_waitrequest(avm_unnamed_jacobi_1d10_jacobi_1d_waitrequest),
        .in_unnamed_jacobi_1d10_jacobi_1d_avm_writeack(avm_unnamed_jacobi_1d10_jacobi_1d_writeack),
        .in_unnamed_jacobi_1d11_jacobi_1d_avm_readdata(avm_unnamed_jacobi_1d11_jacobi_1d_readdata),
        .in_unnamed_jacobi_1d11_jacobi_1d_avm_readdatavalid(avm_unnamed_jacobi_1d11_jacobi_1d_readdatavalid),
        .in_unnamed_jacobi_1d11_jacobi_1d_avm_waitrequest(avm_unnamed_jacobi_1d11_jacobi_1d_waitrequest),
        .in_unnamed_jacobi_1d11_jacobi_1d_avm_writeack(avm_unnamed_jacobi_1d11_jacobi_1d_writeack),
        .in_unnamed_jacobi_1d12_jacobi_1d_avm_readdata(avm_unnamed_jacobi_1d12_jacobi_1d_readdata),
        .in_unnamed_jacobi_1d12_jacobi_1d_avm_readdatavalid(avm_unnamed_jacobi_1d12_jacobi_1d_readdatavalid),
        .in_unnamed_jacobi_1d12_jacobi_1d_avm_waitrequest(avm_unnamed_jacobi_1d12_jacobi_1d_waitrequest),
        .in_unnamed_jacobi_1d12_jacobi_1d_avm_writeack(avm_unnamed_jacobi_1d12_jacobi_1d_writeack),
        .in_unnamed_jacobi_1d13_jacobi_1d_avm_readdata(avm_unnamed_jacobi_1d13_jacobi_1d_readdata),
        .in_unnamed_jacobi_1d13_jacobi_1d_avm_readdatavalid(avm_unnamed_jacobi_1d13_jacobi_1d_readdatavalid),
        .in_unnamed_jacobi_1d13_jacobi_1d_avm_waitrequest(avm_unnamed_jacobi_1d13_jacobi_1d_waitrequest),
        .in_unnamed_jacobi_1d13_jacobi_1d_avm_writeack(avm_unnamed_jacobi_1d13_jacobi_1d_writeack),
        .in_unnamed_jacobi_1d14_jacobi_1d_avm_readdata(avm_unnamed_jacobi_1d14_jacobi_1d_readdata),
        .in_unnamed_jacobi_1d14_jacobi_1d_avm_readdatavalid(avm_unnamed_jacobi_1d14_jacobi_1d_readdatavalid),
        .in_unnamed_jacobi_1d14_jacobi_1d_avm_waitrequest(avm_unnamed_jacobi_1d14_jacobi_1d_waitrequest),
        .in_unnamed_jacobi_1d14_jacobi_1d_avm_writeack(avm_unnamed_jacobi_1d14_jacobi_1d_writeack),
        .in_unnamed_jacobi_1d15_jacobi_1d_avm_readdata(avm_unnamed_jacobi_1d15_jacobi_1d_readdata),
        .in_unnamed_jacobi_1d15_jacobi_1d_avm_readdatavalid(avm_unnamed_jacobi_1d15_jacobi_1d_readdatavalid),
        .in_unnamed_jacobi_1d15_jacobi_1d_avm_waitrequest(avm_unnamed_jacobi_1d15_jacobi_1d_waitrequest),
        .in_unnamed_jacobi_1d15_jacobi_1d_avm_writeack(avm_unnamed_jacobi_1d15_jacobi_1d_writeack),
        .in_unnamed_jacobi_1d9_jacobi_1d_avm_readdata(avm_unnamed_jacobi_1d9_jacobi_1d_readdata),
        .in_unnamed_jacobi_1d9_jacobi_1d_avm_readdatavalid(avm_unnamed_jacobi_1d9_jacobi_1d_readdatavalid),
        .in_unnamed_jacobi_1d9_jacobi_1d_avm_waitrequest(avm_unnamed_jacobi_1d9_jacobi_1d_waitrequest),
        .in_unnamed_jacobi_1d9_jacobi_1d_avm_writeack(avm_unnamed_jacobi_1d9_jacobi_1d_writeack),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_jacobi_1d_o_fifoalmost_full(jacobi_1d_function_out_iord_bl_call_jacobi_1d_o_fifoalmost_full),
        .out_iord_bl_call_jacobi_1d_o_fifoready(jacobi_1d_function_out_iord_bl_call_jacobi_1d_o_fifoready),
        .out_iowr_bl_return_jacobi_1d_o_fifodata(jacobi_1d_function_out_iowr_bl_return_jacobi_1d_o_fifodata),
        .out_iowr_bl_return_jacobi_1d_o_fifovalid(jacobi_1d_function_out_iowr_bl_return_jacobi_1d_o_fifovalid),
        .out_memdep_2_jacobi_1d_avm_address(jacobi_1d_function_out_memdep_2_jacobi_1d_avm_address),
        .out_memdep_2_jacobi_1d_avm_burstcount(jacobi_1d_function_out_memdep_2_jacobi_1d_avm_burstcount),
        .out_memdep_2_jacobi_1d_avm_byteenable(jacobi_1d_function_out_memdep_2_jacobi_1d_avm_byteenable),
        .out_memdep_2_jacobi_1d_avm_enable(jacobi_1d_function_out_memdep_2_jacobi_1d_avm_enable),
        .out_memdep_2_jacobi_1d_avm_read(jacobi_1d_function_out_memdep_2_jacobi_1d_avm_read),
        .out_memdep_2_jacobi_1d_avm_write(jacobi_1d_function_out_memdep_2_jacobi_1d_avm_write),
        .out_memdep_2_jacobi_1d_avm_writedata(jacobi_1d_function_out_memdep_2_jacobi_1d_avm_writedata),
        .out_memdep_3_jacobi_1d_avm_address(jacobi_1d_function_out_memdep_3_jacobi_1d_avm_address),
        .out_memdep_3_jacobi_1d_avm_burstcount(jacobi_1d_function_out_memdep_3_jacobi_1d_avm_burstcount),
        .out_memdep_3_jacobi_1d_avm_byteenable(jacobi_1d_function_out_memdep_3_jacobi_1d_avm_byteenable),
        .out_memdep_3_jacobi_1d_avm_enable(jacobi_1d_function_out_memdep_3_jacobi_1d_avm_enable),
        .out_memdep_3_jacobi_1d_avm_read(jacobi_1d_function_out_memdep_3_jacobi_1d_avm_read),
        .out_memdep_3_jacobi_1d_avm_write(jacobi_1d_function_out_memdep_3_jacobi_1d_avm_write),
        .out_memdep_3_jacobi_1d_avm_writedata(jacobi_1d_function_out_memdep_3_jacobi_1d_avm_writedata),
        .out_memdep_4_jacobi_1d_avm_address(jacobi_1d_function_out_memdep_4_jacobi_1d_avm_address),
        .out_memdep_4_jacobi_1d_avm_burstcount(jacobi_1d_function_out_memdep_4_jacobi_1d_avm_burstcount),
        .out_memdep_4_jacobi_1d_avm_byteenable(jacobi_1d_function_out_memdep_4_jacobi_1d_avm_byteenable),
        .out_memdep_4_jacobi_1d_avm_enable(jacobi_1d_function_out_memdep_4_jacobi_1d_avm_enable),
        .out_memdep_4_jacobi_1d_avm_read(jacobi_1d_function_out_memdep_4_jacobi_1d_avm_read),
        .out_memdep_4_jacobi_1d_avm_write(jacobi_1d_function_out_memdep_4_jacobi_1d_avm_write),
        .out_memdep_4_jacobi_1d_avm_writedata(jacobi_1d_function_out_memdep_4_jacobi_1d_avm_writedata),
        .out_memdep_5_jacobi_1d_avm_address(jacobi_1d_function_out_memdep_5_jacobi_1d_avm_address),
        .out_memdep_5_jacobi_1d_avm_burstcount(jacobi_1d_function_out_memdep_5_jacobi_1d_avm_burstcount),
        .out_memdep_5_jacobi_1d_avm_byteenable(jacobi_1d_function_out_memdep_5_jacobi_1d_avm_byteenable),
        .out_memdep_5_jacobi_1d_avm_enable(jacobi_1d_function_out_memdep_5_jacobi_1d_avm_enable),
        .out_memdep_5_jacobi_1d_avm_read(jacobi_1d_function_out_memdep_5_jacobi_1d_avm_read),
        .out_memdep_5_jacobi_1d_avm_write(jacobi_1d_function_out_memdep_5_jacobi_1d_avm_write),
        .out_memdep_5_jacobi_1d_avm_writedata(jacobi_1d_function_out_memdep_5_jacobi_1d_avm_writedata),
        .out_memdep_6_jacobi_1d_avm_address(jacobi_1d_function_out_memdep_6_jacobi_1d_avm_address),
        .out_memdep_6_jacobi_1d_avm_burstcount(jacobi_1d_function_out_memdep_6_jacobi_1d_avm_burstcount),
        .out_memdep_6_jacobi_1d_avm_byteenable(jacobi_1d_function_out_memdep_6_jacobi_1d_avm_byteenable),
        .out_memdep_6_jacobi_1d_avm_enable(jacobi_1d_function_out_memdep_6_jacobi_1d_avm_enable),
        .out_memdep_6_jacobi_1d_avm_read(jacobi_1d_function_out_memdep_6_jacobi_1d_avm_read),
        .out_memdep_6_jacobi_1d_avm_write(jacobi_1d_function_out_memdep_6_jacobi_1d_avm_write),
        .out_memdep_6_jacobi_1d_avm_writedata(jacobi_1d_function_out_memdep_6_jacobi_1d_avm_writedata),
        .out_memdep_7_jacobi_1d_avm_address(jacobi_1d_function_out_memdep_7_jacobi_1d_avm_address),
        .out_memdep_7_jacobi_1d_avm_burstcount(jacobi_1d_function_out_memdep_7_jacobi_1d_avm_burstcount),
        .out_memdep_7_jacobi_1d_avm_byteenable(jacobi_1d_function_out_memdep_7_jacobi_1d_avm_byteenable),
        .out_memdep_7_jacobi_1d_avm_enable(jacobi_1d_function_out_memdep_7_jacobi_1d_avm_enable),
        .out_memdep_7_jacobi_1d_avm_read(jacobi_1d_function_out_memdep_7_jacobi_1d_avm_read),
        .out_memdep_7_jacobi_1d_avm_write(jacobi_1d_function_out_memdep_7_jacobi_1d_avm_write),
        .out_memdep_7_jacobi_1d_avm_writedata(jacobi_1d_function_out_memdep_7_jacobi_1d_avm_writedata),
        .out_memdep_jacobi_1d_avm_address(jacobi_1d_function_out_memdep_jacobi_1d_avm_address),
        .out_memdep_jacobi_1d_avm_burstcount(jacobi_1d_function_out_memdep_jacobi_1d_avm_burstcount),
        .out_memdep_jacobi_1d_avm_byteenable(jacobi_1d_function_out_memdep_jacobi_1d_avm_byteenable),
        .out_memdep_jacobi_1d_avm_enable(jacobi_1d_function_out_memdep_jacobi_1d_avm_enable),
        .out_memdep_jacobi_1d_avm_read(jacobi_1d_function_out_memdep_jacobi_1d_avm_read),
        .out_memdep_jacobi_1d_avm_write(jacobi_1d_function_out_memdep_jacobi_1d_avm_write),
        .out_memdep_jacobi_1d_avm_writedata(jacobi_1d_function_out_memdep_jacobi_1d_avm_writedata),
        .out_o_active_memdep_6(),
        .out_o_active_memdep_7(),
        .out_pre_pre1_jacobi_1d_avm_address(jacobi_1d_function_out_pre_pre1_jacobi_1d_avm_address),
        .out_pre_pre1_jacobi_1d_avm_burstcount(jacobi_1d_function_out_pre_pre1_jacobi_1d_avm_burstcount),
        .out_pre_pre1_jacobi_1d_avm_byteenable(jacobi_1d_function_out_pre_pre1_jacobi_1d_avm_byteenable),
        .out_pre_pre1_jacobi_1d_avm_enable(jacobi_1d_function_out_pre_pre1_jacobi_1d_avm_enable),
        .out_pre_pre1_jacobi_1d_avm_read(jacobi_1d_function_out_pre_pre1_jacobi_1d_avm_read),
        .out_pre_pre1_jacobi_1d_avm_write(jacobi_1d_function_out_pre_pre1_jacobi_1d_avm_write),
        .out_pre_pre1_jacobi_1d_avm_writedata(jacobi_1d_function_out_pre_pre1_jacobi_1d_avm_writedata),
        .out_stall_out(),
        .out_unnamed_jacobi_1d10_jacobi_1d_avm_address(jacobi_1d_function_out_unnamed_jacobi_1d10_jacobi_1d_avm_address),
        .out_unnamed_jacobi_1d10_jacobi_1d_avm_burstcount(jacobi_1d_function_out_unnamed_jacobi_1d10_jacobi_1d_avm_burstcount),
        .out_unnamed_jacobi_1d10_jacobi_1d_avm_byteenable(jacobi_1d_function_out_unnamed_jacobi_1d10_jacobi_1d_avm_byteenable),
        .out_unnamed_jacobi_1d10_jacobi_1d_avm_enable(jacobi_1d_function_out_unnamed_jacobi_1d10_jacobi_1d_avm_enable),
        .out_unnamed_jacobi_1d10_jacobi_1d_avm_read(jacobi_1d_function_out_unnamed_jacobi_1d10_jacobi_1d_avm_read),
        .out_unnamed_jacobi_1d10_jacobi_1d_avm_write(jacobi_1d_function_out_unnamed_jacobi_1d10_jacobi_1d_avm_write),
        .out_unnamed_jacobi_1d10_jacobi_1d_avm_writedata(jacobi_1d_function_out_unnamed_jacobi_1d10_jacobi_1d_avm_writedata),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_address(jacobi_1d_function_out_unnamed_jacobi_1d11_jacobi_1d_avm_address),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount(jacobi_1d_function_out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable(jacobi_1d_function_out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_enable(jacobi_1d_function_out_unnamed_jacobi_1d11_jacobi_1d_avm_enable),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_read(jacobi_1d_function_out_unnamed_jacobi_1d11_jacobi_1d_avm_read),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_write(jacobi_1d_function_out_unnamed_jacobi_1d11_jacobi_1d_avm_write),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata(jacobi_1d_function_out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata),
        .out_unnamed_jacobi_1d12_jacobi_1d_avm_address(jacobi_1d_function_out_unnamed_jacobi_1d12_jacobi_1d_avm_address),
        .out_unnamed_jacobi_1d12_jacobi_1d_avm_burstcount(jacobi_1d_function_out_unnamed_jacobi_1d12_jacobi_1d_avm_burstcount),
        .out_unnamed_jacobi_1d12_jacobi_1d_avm_byteenable(jacobi_1d_function_out_unnamed_jacobi_1d12_jacobi_1d_avm_byteenable),
        .out_unnamed_jacobi_1d12_jacobi_1d_avm_enable(jacobi_1d_function_out_unnamed_jacobi_1d12_jacobi_1d_avm_enable),
        .out_unnamed_jacobi_1d12_jacobi_1d_avm_read(jacobi_1d_function_out_unnamed_jacobi_1d12_jacobi_1d_avm_read),
        .out_unnamed_jacobi_1d12_jacobi_1d_avm_write(jacobi_1d_function_out_unnamed_jacobi_1d12_jacobi_1d_avm_write),
        .out_unnamed_jacobi_1d12_jacobi_1d_avm_writedata(jacobi_1d_function_out_unnamed_jacobi_1d12_jacobi_1d_avm_writedata),
        .out_unnamed_jacobi_1d13_jacobi_1d_avm_address(jacobi_1d_function_out_unnamed_jacobi_1d13_jacobi_1d_avm_address),
        .out_unnamed_jacobi_1d13_jacobi_1d_avm_burstcount(jacobi_1d_function_out_unnamed_jacobi_1d13_jacobi_1d_avm_burstcount),
        .out_unnamed_jacobi_1d13_jacobi_1d_avm_byteenable(jacobi_1d_function_out_unnamed_jacobi_1d13_jacobi_1d_avm_byteenable),
        .out_unnamed_jacobi_1d13_jacobi_1d_avm_enable(jacobi_1d_function_out_unnamed_jacobi_1d13_jacobi_1d_avm_enable),
        .out_unnamed_jacobi_1d13_jacobi_1d_avm_read(jacobi_1d_function_out_unnamed_jacobi_1d13_jacobi_1d_avm_read),
        .out_unnamed_jacobi_1d13_jacobi_1d_avm_write(jacobi_1d_function_out_unnamed_jacobi_1d13_jacobi_1d_avm_write),
        .out_unnamed_jacobi_1d13_jacobi_1d_avm_writedata(jacobi_1d_function_out_unnamed_jacobi_1d13_jacobi_1d_avm_writedata),
        .out_unnamed_jacobi_1d14_jacobi_1d_avm_address(jacobi_1d_function_out_unnamed_jacobi_1d14_jacobi_1d_avm_address),
        .out_unnamed_jacobi_1d14_jacobi_1d_avm_burstcount(jacobi_1d_function_out_unnamed_jacobi_1d14_jacobi_1d_avm_burstcount),
        .out_unnamed_jacobi_1d14_jacobi_1d_avm_byteenable(jacobi_1d_function_out_unnamed_jacobi_1d14_jacobi_1d_avm_byteenable),
        .out_unnamed_jacobi_1d14_jacobi_1d_avm_enable(jacobi_1d_function_out_unnamed_jacobi_1d14_jacobi_1d_avm_enable),
        .out_unnamed_jacobi_1d14_jacobi_1d_avm_read(jacobi_1d_function_out_unnamed_jacobi_1d14_jacobi_1d_avm_read),
        .out_unnamed_jacobi_1d14_jacobi_1d_avm_write(jacobi_1d_function_out_unnamed_jacobi_1d14_jacobi_1d_avm_write),
        .out_unnamed_jacobi_1d14_jacobi_1d_avm_writedata(jacobi_1d_function_out_unnamed_jacobi_1d14_jacobi_1d_avm_writedata),
        .out_unnamed_jacobi_1d15_jacobi_1d_avm_address(jacobi_1d_function_out_unnamed_jacobi_1d15_jacobi_1d_avm_address),
        .out_unnamed_jacobi_1d15_jacobi_1d_avm_burstcount(jacobi_1d_function_out_unnamed_jacobi_1d15_jacobi_1d_avm_burstcount),
        .out_unnamed_jacobi_1d15_jacobi_1d_avm_byteenable(jacobi_1d_function_out_unnamed_jacobi_1d15_jacobi_1d_avm_byteenable),
        .out_unnamed_jacobi_1d15_jacobi_1d_avm_enable(jacobi_1d_function_out_unnamed_jacobi_1d15_jacobi_1d_avm_enable),
        .out_unnamed_jacobi_1d15_jacobi_1d_avm_read(jacobi_1d_function_out_unnamed_jacobi_1d15_jacobi_1d_avm_read),
        .out_unnamed_jacobi_1d15_jacobi_1d_avm_write(jacobi_1d_function_out_unnamed_jacobi_1d15_jacobi_1d_avm_write),
        .out_unnamed_jacobi_1d15_jacobi_1d_avm_writedata(jacobi_1d_function_out_unnamed_jacobi_1d15_jacobi_1d_avm_writedata),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_address(jacobi_1d_function_out_unnamed_jacobi_1d9_jacobi_1d_avm_address),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount(jacobi_1d_function_out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable(jacobi_1d_function_out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_enable(jacobi_1d_function_out_unnamed_jacobi_1d9_jacobi_1d_avm_enable),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_read(jacobi_1d_function_out_unnamed_jacobi_1d9_jacobi_1d_avm_read),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_write(jacobi_1d_function_out_unnamed_jacobi_1d9_jacobi_1d_avm_write),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata(jacobi_1d_function_out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_memdep_2_jacobi_1d_address(GPOUT,85)
    assign avm_memdep_2_jacobi_1d_address = jacobi_1d_function_out_memdep_2_jacobi_1d_avm_address;

    // avm_memdep_2_jacobi_1d_burstcount(GPOUT,86)
    assign avm_memdep_2_jacobi_1d_burstcount = jacobi_1d_function_out_memdep_2_jacobi_1d_avm_burstcount;

    // avm_memdep_2_jacobi_1d_byteenable(GPOUT,87)
    assign avm_memdep_2_jacobi_1d_byteenable = jacobi_1d_function_out_memdep_2_jacobi_1d_avm_byteenable;

    // avm_memdep_2_jacobi_1d_enable(GPOUT,88)
    assign avm_memdep_2_jacobi_1d_enable = jacobi_1d_function_out_memdep_2_jacobi_1d_avm_enable;

    // avm_memdep_2_jacobi_1d_read(GPOUT,89)
    assign avm_memdep_2_jacobi_1d_read = jacobi_1d_function_out_memdep_2_jacobi_1d_avm_read;

    // avm_memdep_2_jacobi_1d_write(GPOUT,90)
    assign avm_memdep_2_jacobi_1d_write = jacobi_1d_function_out_memdep_2_jacobi_1d_avm_write;

    // avm_memdep_2_jacobi_1d_writedata(GPOUT,91)
    assign avm_memdep_2_jacobi_1d_writedata = jacobi_1d_function_out_memdep_2_jacobi_1d_avm_writedata;

    // avm_memdep_3_jacobi_1d_address(GPOUT,92)
    assign avm_memdep_3_jacobi_1d_address = jacobi_1d_function_out_memdep_3_jacobi_1d_avm_address;

    // avm_memdep_3_jacobi_1d_burstcount(GPOUT,93)
    assign avm_memdep_3_jacobi_1d_burstcount = jacobi_1d_function_out_memdep_3_jacobi_1d_avm_burstcount;

    // avm_memdep_3_jacobi_1d_byteenable(GPOUT,94)
    assign avm_memdep_3_jacobi_1d_byteenable = jacobi_1d_function_out_memdep_3_jacobi_1d_avm_byteenable;

    // avm_memdep_3_jacobi_1d_enable(GPOUT,95)
    assign avm_memdep_3_jacobi_1d_enable = jacobi_1d_function_out_memdep_3_jacobi_1d_avm_enable;

    // avm_memdep_3_jacobi_1d_read(GPOUT,96)
    assign avm_memdep_3_jacobi_1d_read = jacobi_1d_function_out_memdep_3_jacobi_1d_avm_read;

    // avm_memdep_3_jacobi_1d_write(GPOUT,97)
    assign avm_memdep_3_jacobi_1d_write = jacobi_1d_function_out_memdep_3_jacobi_1d_avm_write;

    // avm_memdep_3_jacobi_1d_writedata(GPOUT,98)
    assign avm_memdep_3_jacobi_1d_writedata = jacobi_1d_function_out_memdep_3_jacobi_1d_avm_writedata;

    // avm_memdep_4_jacobi_1d_address(GPOUT,99)
    assign avm_memdep_4_jacobi_1d_address = jacobi_1d_function_out_memdep_4_jacobi_1d_avm_address;

    // avm_memdep_4_jacobi_1d_burstcount(GPOUT,100)
    assign avm_memdep_4_jacobi_1d_burstcount = jacobi_1d_function_out_memdep_4_jacobi_1d_avm_burstcount;

    // avm_memdep_4_jacobi_1d_byteenable(GPOUT,101)
    assign avm_memdep_4_jacobi_1d_byteenable = jacobi_1d_function_out_memdep_4_jacobi_1d_avm_byteenable;

    // avm_memdep_4_jacobi_1d_enable(GPOUT,102)
    assign avm_memdep_4_jacobi_1d_enable = jacobi_1d_function_out_memdep_4_jacobi_1d_avm_enable;

    // avm_memdep_4_jacobi_1d_read(GPOUT,103)
    assign avm_memdep_4_jacobi_1d_read = jacobi_1d_function_out_memdep_4_jacobi_1d_avm_read;

    // avm_memdep_4_jacobi_1d_write(GPOUT,104)
    assign avm_memdep_4_jacobi_1d_write = jacobi_1d_function_out_memdep_4_jacobi_1d_avm_write;

    // avm_memdep_4_jacobi_1d_writedata(GPOUT,105)
    assign avm_memdep_4_jacobi_1d_writedata = jacobi_1d_function_out_memdep_4_jacobi_1d_avm_writedata;

    // avm_memdep_5_jacobi_1d_address(GPOUT,106)
    assign avm_memdep_5_jacobi_1d_address = jacobi_1d_function_out_memdep_5_jacobi_1d_avm_address;

    // avm_memdep_5_jacobi_1d_burstcount(GPOUT,107)
    assign avm_memdep_5_jacobi_1d_burstcount = jacobi_1d_function_out_memdep_5_jacobi_1d_avm_burstcount;

    // avm_memdep_5_jacobi_1d_byteenable(GPOUT,108)
    assign avm_memdep_5_jacobi_1d_byteenable = jacobi_1d_function_out_memdep_5_jacobi_1d_avm_byteenable;

    // avm_memdep_5_jacobi_1d_enable(GPOUT,109)
    assign avm_memdep_5_jacobi_1d_enable = jacobi_1d_function_out_memdep_5_jacobi_1d_avm_enable;

    // avm_memdep_5_jacobi_1d_read(GPOUT,110)
    assign avm_memdep_5_jacobi_1d_read = jacobi_1d_function_out_memdep_5_jacobi_1d_avm_read;

    // avm_memdep_5_jacobi_1d_write(GPOUT,111)
    assign avm_memdep_5_jacobi_1d_write = jacobi_1d_function_out_memdep_5_jacobi_1d_avm_write;

    // avm_memdep_5_jacobi_1d_writedata(GPOUT,112)
    assign avm_memdep_5_jacobi_1d_writedata = jacobi_1d_function_out_memdep_5_jacobi_1d_avm_writedata;

    // avm_memdep_6_jacobi_1d_address(GPOUT,113)
    assign avm_memdep_6_jacobi_1d_address = jacobi_1d_function_out_memdep_6_jacobi_1d_avm_address;

    // avm_memdep_6_jacobi_1d_burstcount(GPOUT,114)
    assign avm_memdep_6_jacobi_1d_burstcount = jacobi_1d_function_out_memdep_6_jacobi_1d_avm_burstcount;

    // avm_memdep_6_jacobi_1d_byteenable(GPOUT,115)
    assign avm_memdep_6_jacobi_1d_byteenable = jacobi_1d_function_out_memdep_6_jacobi_1d_avm_byteenable;

    // avm_memdep_6_jacobi_1d_enable(GPOUT,116)
    assign avm_memdep_6_jacobi_1d_enable = jacobi_1d_function_out_memdep_6_jacobi_1d_avm_enable;

    // avm_memdep_6_jacobi_1d_read(GPOUT,117)
    assign avm_memdep_6_jacobi_1d_read = jacobi_1d_function_out_memdep_6_jacobi_1d_avm_read;

    // avm_memdep_6_jacobi_1d_write(GPOUT,118)
    assign avm_memdep_6_jacobi_1d_write = jacobi_1d_function_out_memdep_6_jacobi_1d_avm_write;

    // avm_memdep_6_jacobi_1d_writedata(GPOUT,119)
    assign avm_memdep_6_jacobi_1d_writedata = jacobi_1d_function_out_memdep_6_jacobi_1d_avm_writedata;

    // avm_memdep_7_jacobi_1d_address(GPOUT,120)
    assign avm_memdep_7_jacobi_1d_address = jacobi_1d_function_out_memdep_7_jacobi_1d_avm_address;

    // avm_memdep_7_jacobi_1d_burstcount(GPOUT,121)
    assign avm_memdep_7_jacobi_1d_burstcount = jacobi_1d_function_out_memdep_7_jacobi_1d_avm_burstcount;

    // avm_memdep_7_jacobi_1d_byteenable(GPOUT,122)
    assign avm_memdep_7_jacobi_1d_byteenable = jacobi_1d_function_out_memdep_7_jacobi_1d_avm_byteenable;

    // avm_memdep_7_jacobi_1d_enable(GPOUT,123)
    assign avm_memdep_7_jacobi_1d_enable = jacobi_1d_function_out_memdep_7_jacobi_1d_avm_enable;

    // avm_memdep_7_jacobi_1d_read(GPOUT,124)
    assign avm_memdep_7_jacobi_1d_read = jacobi_1d_function_out_memdep_7_jacobi_1d_avm_read;

    // avm_memdep_7_jacobi_1d_write(GPOUT,125)
    assign avm_memdep_7_jacobi_1d_write = jacobi_1d_function_out_memdep_7_jacobi_1d_avm_write;

    // avm_memdep_7_jacobi_1d_writedata(GPOUT,126)
    assign avm_memdep_7_jacobi_1d_writedata = jacobi_1d_function_out_memdep_7_jacobi_1d_avm_writedata;

    // avm_memdep_jacobi_1d_address(GPOUT,127)
    assign avm_memdep_jacobi_1d_address = jacobi_1d_function_out_memdep_jacobi_1d_avm_address;

    // avm_memdep_jacobi_1d_burstcount(GPOUT,128)
    assign avm_memdep_jacobi_1d_burstcount = jacobi_1d_function_out_memdep_jacobi_1d_avm_burstcount;

    // avm_memdep_jacobi_1d_byteenable(GPOUT,129)
    assign avm_memdep_jacobi_1d_byteenable = jacobi_1d_function_out_memdep_jacobi_1d_avm_byteenable;

    // avm_memdep_jacobi_1d_enable(GPOUT,130)
    assign avm_memdep_jacobi_1d_enable = jacobi_1d_function_out_memdep_jacobi_1d_avm_enable;

    // avm_memdep_jacobi_1d_read(GPOUT,131)
    assign avm_memdep_jacobi_1d_read = jacobi_1d_function_out_memdep_jacobi_1d_avm_read;

    // avm_memdep_jacobi_1d_write(GPOUT,132)
    assign avm_memdep_jacobi_1d_write = jacobi_1d_function_out_memdep_jacobi_1d_avm_write;

    // avm_memdep_jacobi_1d_writedata(GPOUT,133)
    assign avm_memdep_jacobi_1d_writedata = jacobi_1d_function_out_memdep_jacobi_1d_avm_writedata;

    // avm_pre_pre1_jacobi_1d_address(GPOUT,134)
    assign avm_pre_pre1_jacobi_1d_address = jacobi_1d_function_out_pre_pre1_jacobi_1d_avm_address;

    // avm_pre_pre1_jacobi_1d_burstcount(GPOUT,135)
    assign avm_pre_pre1_jacobi_1d_burstcount = jacobi_1d_function_out_pre_pre1_jacobi_1d_avm_burstcount;

    // avm_pre_pre1_jacobi_1d_byteenable(GPOUT,136)
    assign avm_pre_pre1_jacobi_1d_byteenable = jacobi_1d_function_out_pre_pre1_jacobi_1d_avm_byteenable;

    // avm_pre_pre1_jacobi_1d_enable(GPOUT,137)
    assign avm_pre_pre1_jacobi_1d_enable = jacobi_1d_function_out_pre_pre1_jacobi_1d_avm_enable;

    // avm_pre_pre1_jacobi_1d_read(GPOUT,138)
    assign avm_pre_pre1_jacobi_1d_read = jacobi_1d_function_out_pre_pre1_jacobi_1d_avm_read;

    // avm_pre_pre1_jacobi_1d_write(GPOUT,139)
    assign avm_pre_pre1_jacobi_1d_write = jacobi_1d_function_out_pre_pre1_jacobi_1d_avm_write;

    // avm_pre_pre1_jacobi_1d_writedata(GPOUT,140)
    assign avm_pre_pre1_jacobi_1d_writedata = jacobi_1d_function_out_pre_pre1_jacobi_1d_avm_writedata;

    // avm_unnamed_jacobi_1d10_jacobi_1d_address(GPOUT,141)
    assign avm_unnamed_jacobi_1d10_jacobi_1d_address = jacobi_1d_function_out_unnamed_jacobi_1d10_jacobi_1d_avm_address;

    // avm_unnamed_jacobi_1d10_jacobi_1d_burstcount(GPOUT,142)
    assign avm_unnamed_jacobi_1d10_jacobi_1d_burstcount = jacobi_1d_function_out_unnamed_jacobi_1d10_jacobi_1d_avm_burstcount;

    // avm_unnamed_jacobi_1d10_jacobi_1d_byteenable(GPOUT,143)
    assign avm_unnamed_jacobi_1d10_jacobi_1d_byteenable = jacobi_1d_function_out_unnamed_jacobi_1d10_jacobi_1d_avm_byteenable;

    // avm_unnamed_jacobi_1d10_jacobi_1d_enable(GPOUT,144)
    assign avm_unnamed_jacobi_1d10_jacobi_1d_enable = jacobi_1d_function_out_unnamed_jacobi_1d10_jacobi_1d_avm_enable;

    // avm_unnamed_jacobi_1d10_jacobi_1d_read(GPOUT,145)
    assign avm_unnamed_jacobi_1d10_jacobi_1d_read = jacobi_1d_function_out_unnamed_jacobi_1d10_jacobi_1d_avm_read;

    // avm_unnamed_jacobi_1d10_jacobi_1d_write(GPOUT,146)
    assign avm_unnamed_jacobi_1d10_jacobi_1d_write = jacobi_1d_function_out_unnamed_jacobi_1d10_jacobi_1d_avm_write;

    // avm_unnamed_jacobi_1d10_jacobi_1d_writedata(GPOUT,147)
    assign avm_unnamed_jacobi_1d10_jacobi_1d_writedata = jacobi_1d_function_out_unnamed_jacobi_1d10_jacobi_1d_avm_writedata;

    // avm_unnamed_jacobi_1d11_jacobi_1d_address(GPOUT,148)
    assign avm_unnamed_jacobi_1d11_jacobi_1d_address = jacobi_1d_function_out_unnamed_jacobi_1d11_jacobi_1d_avm_address;

    // avm_unnamed_jacobi_1d11_jacobi_1d_burstcount(GPOUT,149)
    assign avm_unnamed_jacobi_1d11_jacobi_1d_burstcount = jacobi_1d_function_out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount;

    // avm_unnamed_jacobi_1d11_jacobi_1d_byteenable(GPOUT,150)
    assign avm_unnamed_jacobi_1d11_jacobi_1d_byteenable = jacobi_1d_function_out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable;

    // avm_unnamed_jacobi_1d11_jacobi_1d_enable(GPOUT,151)
    assign avm_unnamed_jacobi_1d11_jacobi_1d_enable = jacobi_1d_function_out_unnamed_jacobi_1d11_jacobi_1d_avm_enable;

    // avm_unnamed_jacobi_1d11_jacobi_1d_read(GPOUT,152)
    assign avm_unnamed_jacobi_1d11_jacobi_1d_read = jacobi_1d_function_out_unnamed_jacobi_1d11_jacobi_1d_avm_read;

    // avm_unnamed_jacobi_1d11_jacobi_1d_write(GPOUT,153)
    assign avm_unnamed_jacobi_1d11_jacobi_1d_write = jacobi_1d_function_out_unnamed_jacobi_1d11_jacobi_1d_avm_write;

    // avm_unnamed_jacobi_1d11_jacobi_1d_writedata(GPOUT,154)
    assign avm_unnamed_jacobi_1d11_jacobi_1d_writedata = jacobi_1d_function_out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata;

    // avm_unnamed_jacobi_1d12_jacobi_1d_address(GPOUT,155)
    assign avm_unnamed_jacobi_1d12_jacobi_1d_address = jacobi_1d_function_out_unnamed_jacobi_1d12_jacobi_1d_avm_address;

    // avm_unnamed_jacobi_1d12_jacobi_1d_burstcount(GPOUT,156)
    assign avm_unnamed_jacobi_1d12_jacobi_1d_burstcount = jacobi_1d_function_out_unnamed_jacobi_1d12_jacobi_1d_avm_burstcount;

    // avm_unnamed_jacobi_1d12_jacobi_1d_byteenable(GPOUT,157)
    assign avm_unnamed_jacobi_1d12_jacobi_1d_byteenable = jacobi_1d_function_out_unnamed_jacobi_1d12_jacobi_1d_avm_byteenable;

    // avm_unnamed_jacobi_1d12_jacobi_1d_enable(GPOUT,158)
    assign avm_unnamed_jacobi_1d12_jacobi_1d_enable = jacobi_1d_function_out_unnamed_jacobi_1d12_jacobi_1d_avm_enable;

    // avm_unnamed_jacobi_1d12_jacobi_1d_read(GPOUT,159)
    assign avm_unnamed_jacobi_1d12_jacobi_1d_read = jacobi_1d_function_out_unnamed_jacobi_1d12_jacobi_1d_avm_read;

    // avm_unnamed_jacobi_1d12_jacobi_1d_write(GPOUT,160)
    assign avm_unnamed_jacobi_1d12_jacobi_1d_write = jacobi_1d_function_out_unnamed_jacobi_1d12_jacobi_1d_avm_write;

    // avm_unnamed_jacobi_1d12_jacobi_1d_writedata(GPOUT,161)
    assign avm_unnamed_jacobi_1d12_jacobi_1d_writedata = jacobi_1d_function_out_unnamed_jacobi_1d12_jacobi_1d_avm_writedata;

    // avm_unnamed_jacobi_1d13_jacobi_1d_address(GPOUT,162)
    assign avm_unnamed_jacobi_1d13_jacobi_1d_address = jacobi_1d_function_out_unnamed_jacobi_1d13_jacobi_1d_avm_address;

    // avm_unnamed_jacobi_1d13_jacobi_1d_burstcount(GPOUT,163)
    assign avm_unnamed_jacobi_1d13_jacobi_1d_burstcount = jacobi_1d_function_out_unnamed_jacobi_1d13_jacobi_1d_avm_burstcount;

    // avm_unnamed_jacobi_1d13_jacobi_1d_byteenable(GPOUT,164)
    assign avm_unnamed_jacobi_1d13_jacobi_1d_byteenable = jacobi_1d_function_out_unnamed_jacobi_1d13_jacobi_1d_avm_byteenable;

    // avm_unnamed_jacobi_1d13_jacobi_1d_enable(GPOUT,165)
    assign avm_unnamed_jacobi_1d13_jacobi_1d_enable = jacobi_1d_function_out_unnamed_jacobi_1d13_jacobi_1d_avm_enable;

    // avm_unnamed_jacobi_1d13_jacobi_1d_read(GPOUT,166)
    assign avm_unnamed_jacobi_1d13_jacobi_1d_read = jacobi_1d_function_out_unnamed_jacobi_1d13_jacobi_1d_avm_read;

    // avm_unnamed_jacobi_1d13_jacobi_1d_write(GPOUT,167)
    assign avm_unnamed_jacobi_1d13_jacobi_1d_write = jacobi_1d_function_out_unnamed_jacobi_1d13_jacobi_1d_avm_write;

    // avm_unnamed_jacobi_1d13_jacobi_1d_writedata(GPOUT,168)
    assign avm_unnamed_jacobi_1d13_jacobi_1d_writedata = jacobi_1d_function_out_unnamed_jacobi_1d13_jacobi_1d_avm_writedata;

    // avm_unnamed_jacobi_1d14_jacobi_1d_address(GPOUT,169)
    assign avm_unnamed_jacobi_1d14_jacobi_1d_address = jacobi_1d_function_out_unnamed_jacobi_1d14_jacobi_1d_avm_address;

    // avm_unnamed_jacobi_1d14_jacobi_1d_burstcount(GPOUT,170)
    assign avm_unnamed_jacobi_1d14_jacobi_1d_burstcount = jacobi_1d_function_out_unnamed_jacobi_1d14_jacobi_1d_avm_burstcount;

    // avm_unnamed_jacobi_1d14_jacobi_1d_byteenable(GPOUT,171)
    assign avm_unnamed_jacobi_1d14_jacobi_1d_byteenable = jacobi_1d_function_out_unnamed_jacobi_1d14_jacobi_1d_avm_byteenable;

    // avm_unnamed_jacobi_1d14_jacobi_1d_enable(GPOUT,172)
    assign avm_unnamed_jacobi_1d14_jacobi_1d_enable = jacobi_1d_function_out_unnamed_jacobi_1d14_jacobi_1d_avm_enable;

    // avm_unnamed_jacobi_1d14_jacobi_1d_read(GPOUT,173)
    assign avm_unnamed_jacobi_1d14_jacobi_1d_read = jacobi_1d_function_out_unnamed_jacobi_1d14_jacobi_1d_avm_read;

    // avm_unnamed_jacobi_1d14_jacobi_1d_write(GPOUT,174)
    assign avm_unnamed_jacobi_1d14_jacobi_1d_write = jacobi_1d_function_out_unnamed_jacobi_1d14_jacobi_1d_avm_write;

    // avm_unnamed_jacobi_1d14_jacobi_1d_writedata(GPOUT,175)
    assign avm_unnamed_jacobi_1d14_jacobi_1d_writedata = jacobi_1d_function_out_unnamed_jacobi_1d14_jacobi_1d_avm_writedata;

    // avm_unnamed_jacobi_1d15_jacobi_1d_address(GPOUT,176)
    assign avm_unnamed_jacobi_1d15_jacobi_1d_address = jacobi_1d_function_out_unnamed_jacobi_1d15_jacobi_1d_avm_address;

    // avm_unnamed_jacobi_1d15_jacobi_1d_burstcount(GPOUT,177)
    assign avm_unnamed_jacobi_1d15_jacobi_1d_burstcount = jacobi_1d_function_out_unnamed_jacobi_1d15_jacobi_1d_avm_burstcount;

    // avm_unnamed_jacobi_1d15_jacobi_1d_byteenable(GPOUT,178)
    assign avm_unnamed_jacobi_1d15_jacobi_1d_byteenable = jacobi_1d_function_out_unnamed_jacobi_1d15_jacobi_1d_avm_byteenable;

    // avm_unnamed_jacobi_1d15_jacobi_1d_enable(GPOUT,179)
    assign avm_unnamed_jacobi_1d15_jacobi_1d_enable = jacobi_1d_function_out_unnamed_jacobi_1d15_jacobi_1d_avm_enable;

    // avm_unnamed_jacobi_1d15_jacobi_1d_read(GPOUT,180)
    assign avm_unnamed_jacobi_1d15_jacobi_1d_read = jacobi_1d_function_out_unnamed_jacobi_1d15_jacobi_1d_avm_read;

    // avm_unnamed_jacobi_1d15_jacobi_1d_write(GPOUT,181)
    assign avm_unnamed_jacobi_1d15_jacobi_1d_write = jacobi_1d_function_out_unnamed_jacobi_1d15_jacobi_1d_avm_write;

    // avm_unnamed_jacobi_1d15_jacobi_1d_writedata(GPOUT,182)
    assign avm_unnamed_jacobi_1d15_jacobi_1d_writedata = jacobi_1d_function_out_unnamed_jacobi_1d15_jacobi_1d_avm_writedata;

    // avm_unnamed_jacobi_1d9_jacobi_1d_address(GPOUT,183)
    assign avm_unnamed_jacobi_1d9_jacobi_1d_address = jacobi_1d_function_out_unnamed_jacobi_1d9_jacobi_1d_avm_address;

    // avm_unnamed_jacobi_1d9_jacobi_1d_burstcount(GPOUT,184)
    assign avm_unnamed_jacobi_1d9_jacobi_1d_burstcount = jacobi_1d_function_out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount;

    // avm_unnamed_jacobi_1d9_jacobi_1d_byteenable(GPOUT,185)
    assign avm_unnamed_jacobi_1d9_jacobi_1d_byteenable = jacobi_1d_function_out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable;

    // avm_unnamed_jacobi_1d9_jacobi_1d_enable(GPOUT,186)
    assign avm_unnamed_jacobi_1d9_jacobi_1d_enable = jacobi_1d_function_out_unnamed_jacobi_1d9_jacobi_1d_avm_enable;

    // avm_unnamed_jacobi_1d9_jacobi_1d_read(GPOUT,187)
    assign avm_unnamed_jacobi_1d9_jacobi_1d_read = jacobi_1d_function_out_unnamed_jacobi_1d9_jacobi_1d_avm_read;

    // avm_unnamed_jacobi_1d9_jacobi_1d_write(GPOUT,188)
    assign avm_unnamed_jacobi_1d9_jacobi_1d_write = jacobi_1d_function_out_unnamed_jacobi_1d9_jacobi_1d_avm_write;

    // avm_unnamed_jacobi_1d9_jacobi_1d_writedata(GPOUT,189)
    assign avm_unnamed_jacobi_1d9_jacobi_1d_writedata = jacobi_1d_function_out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata;

    // avst_iord_bl_call_jacobi_1d_almost_full(GPOUT,190)
    assign avst_iord_bl_call_jacobi_1d_almost_full = jacobi_1d_function_out_iord_bl_call_jacobi_1d_o_fifoalmost_full;

    // avst_iord_bl_call_jacobi_1d_ready(GPOUT,191)
    assign avst_iord_bl_call_jacobi_1d_ready = jacobi_1d_function_out_iord_bl_call_jacobi_1d_o_fifoready;

    // avst_iowr_bl_return_jacobi_1d_data(GPOUT,192)
    assign avst_iowr_bl_return_jacobi_1d_data = jacobi_1d_function_out_iowr_bl_return_jacobi_1d_o_fifodata;

    // avst_iowr_bl_return_jacobi_1d_valid(GPOUT,193)
    assign avst_iowr_bl_return_jacobi_1d_valid = jacobi_1d_function_out_iowr_bl_return_jacobi_1d_o_fifovalid;

    // not_ready(LOGICAL,83)
    assign not_ready_q = ~ (jacobi_1d_function_out_iord_bl_call_jacobi_1d_o_fifoready);

    // busy_and(LOGICAL,5)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,197)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,196)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,6)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,194)
    assign busy = busy_or_q;

    // done(GPOUT,195)
    assign done = jacobi_1d_function_out_iowr_bl_return_jacobi_1d_o_fifovalid;

endmodule
