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
// SystemVerilog created on Wed Apr  5 16:26:34 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module bicg_function_wrapper (
    input wire [63:0] A,
    input wire [31:0] avm_memdep_1_bicg_readdata,
    input wire [0:0] avm_memdep_1_bicg_readdatavalid,
    input wire [0:0] avm_memdep_1_bicg_waitrequest,
    input wire [0:0] avm_memdep_1_bicg_writeack,
    input wire [31:0] avm_memdep_2_bicg_readdata,
    input wire [0:0] avm_memdep_2_bicg_readdatavalid,
    input wire [0:0] avm_memdep_2_bicg_waitrequest,
    input wire [0:0] avm_memdep_2_bicg_writeack,
    input wire [31:0] avm_memdep_3_bicg_readdata,
    input wire [0:0] avm_memdep_3_bicg_readdatavalid,
    input wire [0:0] avm_memdep_3_bicg_waitrequest,
    input wire [0:0] avm_memdep_3_bicg_writeack,
    input wire [31:0] avm_memdep_4_bicg_readdata,
    input wire [0:0] avm_memdep_4_bicg_readdatavalid,
    input wire [0:0] avm_memdep_4_bicg_waitrequest,
    input wire [0:0] avm_memdep_4_bicg_writeack,
    input wire [31:0] avm_memdep_5_bicg_readdata,
    input wire [0:0] avm_memdep_5_bicg_readdatavalid,
    input wire [0:0] avm_memdep_5_bicg_waitrequest,
    input wire [0:0] avm_memdep_5_bicg_writeack,
    input wire [31:0] avm_memdep_6_bicg_readdata,
    input wire [0:0] avm_memdep_6_bicg_readdatavalid,
    input wire [0:0] avm_memdep_6_bicg_waitrequest,
    input wire [0:0] avm_memdep_6_bicg_writeack,
    input wire [63:0] avm_memdep_7_bicg_readdata,
    input wire [0:0] avm_memdep_7_bicg_readdatavalid,
    input wire [0:0] avm_memdep_7_bicg_waitrequest,
    input wire [0:0] avm_memdep_7_bicg_writeack,
    input wire [31:0] avm_memdep_bicg_readdata,
    input wire [0:0] avm_memdep_bicg_readdatavalid,
    input wire [0:0] avm_memdep_bicg_waitrequest,
    input wire [0:0] avm_memdep_bicg_writeack,
    input wire [63:0] avm_unnamed_bicg10_bicg_readdata,
    input wire [0:0] avm_unnamed_bicg10_bicg_readdatavalid,
    input wire [0:0] avm_unnamed_bicg10_bicg_waitrequest,
    input wire [0:0] avm_unnamed_bicg10_bicg_writeack,
    input wire [63:0] avm_unnamed_bicg11_bicg_readdata,
    input wire [0:0] avm_unnamed_bicg11_bicg_readdatavalid,
    input wire [0:0] avm_unnamed_bicg11_bicg_waitrequest,
    input wire [0:0] avm_unnamed_bicg11_bicg_writeack,
    input wire [63:0] avm_unnamed_bicg12_bicg_readdata,
    input wire [0:0] avm_unnamed_bicg12_bicg_readdatavalid,
    input wire [0:0] avm_unnamed_bicg12_bicg_waitrequest,
    input wire [0:0] avm_unnamed_bicg12_bicg_writeack,
    input wire [31:0] avm_unnamed_bicg13_bicg_readdata,
    input wire [0:0] avm_unnamed_bicg13_bicg_readdatavalid,
    input wire [0:0] avm_unnamed_bicg13_bicg_waitrequest,
    input wire [0:0] avm_unnamed_bicg13_bicg_writeack,
    input wire [31:0] avm_unnamed_bicg15_bicg_readdata,
    input wire [0:0] avm_unnamed_bicg15_bicg_readdatavalid,
    input wire [0:0] avm_unnamed_bicg15_bicg_waitrequest,
    input wire [0:0] avm_unnamed_bicg15_bicg_writeack,
    input wire [31:0] avm_unnamed_bicg16_bicg_readdata,
    input wire [0:0] avm_unnamed_bicg16_bicg_readdatavalid,
    input wire [0:0] avm_unnamed_bicg16_bicg_waitrequest,
    input wire [0:0] avm_unnamed_bicg16_bicg_writeack,
    input wire [31:0] avm_unnamed_bicg17_bicg_readdata,
    input wire [0:0] avm_unnamed_bicg17_bicg_readdatavalid,
    input wire [0:0] avm_unnamed_bicg17_bicg_waitrequest,
    input wire [0:0] avm_unnamed_bicg17_bicg_writeack,
    input wire [31:0] avm_unnamed_bicg18_bicg_readdata,
    input wire [0:0] avm_unnamed_bicg18_bicg_readdatavalid,
    input wire [0:0] avm_unnamed_bicg18_bicg_waitrequest,
    input wire [0:0] avm_unnamed_bicg18_bicg_writeack,
    input wire [31:0] avm_unnamed_bicg20_bicg_readdata,
    input wire [0:0] avm_unnamed_bicg20_bicg_readdatavalid,
    input wire [0:0] avm_unnamed_bicg20_bicg_waitrequest,
    input wire [0:0] avm_unnamed_bicg20_bicg_writeack,
    input wire [63:0] avm_unnamed_bicg8_bicg_readdata,
    input wire [0:0] avm_unnamed_bicg8_bicg_readdatavalid,
    input wire [0:0] avm_unnamed_bicg8_bicg_waitrequest,
    input wire [0:0] avm_unnamed_bicg8_bicg_writeack,
    input wire [63:0] avm_unnamed_bicg9_bicg_readdata,
    input wire [0:0] avm_unnamed_bicg9_bicg_readdatavalid,
    input wire [0:0] avm_unnamed_bicg9_bicg_waitrequest,
    input wire [0:0] avm_unnamed_bicg9_bicg_writeack,
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
    output wire [31:0] avm_memdep_1_bicg_address,
    output wire [0:0] avm_memdep_1_bicg_burstcount,
    output wire [3:0] avm_memdep_1_bicg_byteenable,
    output wire [0:0] avm_memdep_1_bicg_enable,
    output wire [0:0] avm_memdep_1_bicg_read,
    output wire [0:0] avm_memdep_1_bicg_write,
    output wire [31:0] avm_memdep_1_bicg_writedata,
    output wire [31:0] avm_memdep_2_bicg_address,
    output wire [0:0] avm_memdep_2_bicg_burstcount,
    output wire [3:0] avm_memdep_2_bicg_byteenable,
    output wire [0:0] avm_memdep_2_bicg_enable,
    output wire [0:0] avm_memdep_2_bicg_read,
    output wire [0:0] avm_memdep_2_bicg_write,
    output wire [31:0] avm_memdep_2_bicg_writedata,
    output wire [31:0] avm_memdep_3_bicg_address,
    output wire [0:0] avm_memdep_3_bicg_burstcount,
    output wire [3:0] avm_memdep_3_bicg_byteenable,
    output wire [0:0] avm_memdep_3_bicg_enable,
    output wire [0:0] avm_memdep_3_bicg_read,
    output wire [0:0] avm_memdep_3_bicg_write,
    output wire [31:0] avm_memdep_3_bicg_writedata,
    output wire [31:0] avm_memdep_4_bicg_address,
    output wire [0:0] avm_memdep_4_bicg_burstcount,
    output wire [3:0] avm_memdep_4_bicg_byteenable,
    output wire [0:0] avm_memdep_4_bicg_enable,
    output wire [0:0] avm_memdep_4_bicg_read,
    output wire [0:0] avm_memdep_4_bicg_write,
    output wire [31:0] avm_memdep_4_bicg_writedata,
    output wire [31:0] avm_memdep_5_bicg_address,
    output wire [0:0] avm_memdep_5_bicg_burstcount,
    output wire [3:0] avm_memdep_5_bicg_byteenable,
    output wire [0:0] avm_memdep_5_bicg_enable,
    output wire [0:0] avm_memdep_5_bicg_read,
    output wire [0:0] avm_memdep_5_bicg_write,
    output wire [31:0] avm_memdep_5_bicg_writedata,
    output wire [31:0] avm_memdep_6_bicg_address,
    output wire [0:0] avm_memdep_6_bicg_burstcount,
    output wire [3:0] avm_memdep_6_bicg_byteenable,
    output wire [0:0] avm_memdep_6_bicg_enable,
    output wire [0:0] avm_memdep_6_bicg_read,
    output wire [0:0] avm_memdep_6_bicg_write,
    output wire [31:0] avm_memdep_6_bicg_writedata,
    output wire [63:0] avm_memdep_7_bicg_address,
    output wire [0:0] avm_memdep_7_bicg_burstcount,
    output wire [7:0] avm_memdep_7_bicg_byteenable,
    output wire [0:0] avm_memdep_7_bicg_enable,
    output wire [0:0] avm_memdep_7_bicg_read,
    output wire [0:0] avm_memdep_7_bicg_write,
    output wire [63:0] avm_memdep_7_bicg_writedata,
    output wire [31:0] avm_memdep_bicg_address,
    output wire [0:0] avm_memdep_bicg_burstcount,
    output wire [3:0] avm_memdep_bicg_byteenable,
    output wire [0:0] avm_memdep_bicg_enable,
    output wire [0:0] avm_memdep_bicg_read,
    output wire [0:0] avm_memdep_bicg_write,
    output wire [31:0] avm_memdep_bicg_writedata,
    output wire [63:0] avm_unnamed_bicg10_bicg_address,
    output wire [0:0] avm_unnamed_bicg10_bicg_burstcount,
    output wire [7:0] avm_unnamed_bicg10_bicg_byteenable,
    output wire [0:0] avm_unnamed_bicg10_bicg_enable,
    output wire [0:0] avm_unnamed_bicg10_bicg_read,
    output wire [0:0] avm_unnamed_bicg10_bicg_write,
    output wire [63:0] avm_unnamed_bicg10_bicg_writedata,
    output wire [63:0] avm_unnamed_bicg11_bicg_address,
    output wire [0:0] avm_unnamed_bicg11_bicg_burstcount,
    output wire [7:0] avm_unnamed_bicg11_bicg_byteenable,
    output wire [0:0] avm_unnamed_bicg11_bicg_enable,
    output wire [0:0] avm_unnamed_bicg11_bicg_read,
    output wire [0:0] avm_unnamed_bicg11_bicg_write,
    output wire [63:0] avm_unnamed_bicg11_bicg_writedata,
    output wire [63:0] avm_unnamed_bicg12_bicg_address,
    output wire [0:0] avm_unnamed_bicg12_bicg_burstcount,
    output wire [7:0] avm_unnamed_bicg12_bicg_byteenable,
    output wire [0:0] avm_unnamed_bicg12_bicg_enable,
    output wire [0:0] avm_unnamed_bicg12_bicg_read,
    output wire [0:0] avm_unnamed_bicg12_bicg_write,
    output wire [63:0] avm_unnamed_bicg12_bicg_writedata,
    output wire [31:0] avm_unnamed_bicg13_bicg_address,
    output wire [0:0] avm_unnamed_bicg13_bicg_burstcount,
    output wire [3:0] avm_unnamed_bicg13_bicg_byteenable,
    output wire [0:0] avm_unnamed_bicg13_bicg_enable,
    output wire [0:0] avm_unnamed_bicg13_bicg_read,
    output wire [0:0] avm_unnamed_bicg13_bicg_write,
    output wire [31:0] avm_unnamed_bicg13_bicg_writedata,
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
    output wire [31:0] avm_unnamed_bicg17_bicg_address,
    output wire [0:0] avm_unnamed_bicg17_bicg_burstcount,
    output wire [3:0] avm_unnamed_bicg17_bicg_byteenable,
    output wire [0:0] avm_unnamed_bicg17_bicg_enable,
    output wire [0:0] avm_unnamed_bicg17_bicg_read,
    output wire [0:0] avm_unnamed_bicg17_bicg_write,
    output wire [31:0] avm_unnamed_bicg17_bicg_writedata,
    output wire [31:0] avm_unnamed_bicg18_bicg_address,
    output wire [0:0] avm_unnamed_bicg18_bicg_burstcount,
    output wire [3:0] avm_unnamed_bicg18_bicg_byteenable,
    output wire [0:0] avm_unnamed_bicg18_bicg_enable,
    output wire [0:0] avm_unnamed_bicg18_bicg_read,
    output wire [0:0] avm_unnamed_bicg18_bicg_write,
    output wire [31:0] avm_unnamed_bicg18_bicg_writedata,
    output wire [31:0] avm_unnamed_bicg20_bicg_address,
    output wire [0:0] avm_unnamed_bicg20_bicg_burstcount,
    output wire [3:0] avm_unnamed_bicg20_bicg_byteenable,
    output wire [0:0] avm_unnamed_bicg20_bicg_enable,
    output wire [0:0] avm_unnamed_bicg20_bicg_read,
    output wire [0:0] avm_unnamed_bicg20_bicg_write,
    output wire [31:0] avm_unnamed_bicg20_bicg_writedata,
    output wire [63:0] avm_unnamed_bicg8_bicg_address,
    output wire [0:0] avm_unnamed_bicg8_bicg_burstcount,
    output wire [7:0] avm_unnamed_bicg8_bicg_byteenable,
    output wire [0:0] avm_unnamed_bicg8_bicg_enable,
    output wire [0:0] avm_unnamed_bicg8_bicg_read,
    output wire [0:0] avm_unnamed_bicg8_bicg_write,
    output wire [63:0] avm_unnamed_bicg8_bicg_writedata,
    output wire [63:0] avm_unnamed_bicg9_bicg_address,
    output wire [0:0] avm_unnamed_bicg9_bicg_burstcount,
    output wire [7:0] avm_unnamed_bicg9_bicg_byteenable,
    output wire [0:0] avm_unnamed_bicg9_bicg_enable,
    output wire [0:0] avm_unnamed_bicg9_bicg_read,
    output wire [0:0] avm_unnamed_bicg9_bicg_write,
    output wire [63:0] avm_unnamed_bicg9_bicg_writedata,
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
    wire [31:0] bicg_function_out_memdep_1_bicg_avm_address;
    wire [0:0] bicg_function_out_memdep_1_bicg_avm_burstcount;
    wire [3:0] bicg_function_out_memdep_1_bicg_avm_byteenable;
    wire [0:0] bicg_function_out_memdep_1_bicg_avm_enable;
    wire [0:0] bicg_function_out_memdep_1_bicg_avm_read;
    wire [0:0] bicg_function_out_memdep_1_bicg_avm_write;
    wire [31:0] bicg_function_out_memdep_1_bicg_avm_writedata;
    wire [31:0] bicg_function_out_memdep_2_bicg_avm_address;
    wire [0:0] bicg_function_out_memdep_2_bicg_avm_burstcount;
    wire [3:0] bicg_function_out_memdep_2_bicg_avm_byteenable;
    wire [0:0] bicg_function_out_memdep_2_bicg_avm_enable;
    wire [0:0] bicg_function_out_memdep_2_bicg_avm_read;
    wire [0:0] bicg_function_out_memdep_2_bicg_avm_write;
    wire [31:0] bicg_function_out_memdep_2_bicg_avm_writedata;
    wire [31:0] bicg_function_out_memdep_3_bicg_avm_address;
    wire [0:0] bicg_function_out_memdep_3_bicg_avm_burstcount;
    wire [3:0] bicg_function_out_memdep_3_bicg_avm_byteenable;
    wire [0:0] bicg_function_out_memdep_3_bicg_avm_enable;
    wire [0:0] bicg_function_out_memdep_3_bicg_avm_read;
    wire [0:0] bicg_function_out_memdep_3_bicg_avm_write;
    wire [31:0] bicg_function_out_memdep_3_bicg_avm_writedata;
    wire [31:0] bicg_function_out_memdep_4_bicg_avm_address;
    wire [0:0] bicg_function_out_memdep_4_bicg_avm_burstcount;
    wire [3:0] bicg_function_out_memdep_4_bicg_avm_byteenable;
    wire [0:0] bicg_function_out_memdep_4_bicg_avm_enable;
    wire [0:0] bicg_function_out_memdep_4_bicg_avm_read;
    wire [0:0] bicg_function_out_memdep_4_bicg_avm_write;
    wire [31:0] bicg_function_out_memdep_4_bicg_avm_writedata;
    wire [31:0] bicg_function_out_memdep_5_bicg_avm_address;
    wire [0:0] bicg_function_out_memdep_5_bicg_avm_burstcount;
    wire [3:0] bicg_function_out_memdep_5_bicg_avm_byteenable;
    wire [0:0] bicg_function_out_memdep_5_bicg_avm_enable;
    wire [0:0] bicg_function_out_memdep_5_bicg_avm_read;
    wire [0:0] bicg_function_out_memdep_5_bicg_avm_write;
    wire [31:0] bicg_function_out_memdep_5_bicg_avm_writedata;
    wire [31:0] bicg_function_out_memdep_6_bicg_avm_address;
    wire [0:0] bicg_function_out_memdep_6_bicg_avm_burstcount;
    wire [3:0] bicg_function_out_memdep_6_bicg_avm_byteenable;
    wire [0:0] bicg_function_out_memdep_6_bicg_avm_enable;
    wire [0:0] bicg_function_out_memdep_6_bicg_avm_read;
    wire [0:0] bicg_function_out_memdep_6_bicg_avm_write;
    wire [31:0] bicg_function_out_memdep_6_bicg_avm_writedata;
    wire [63:0] bicg_function_out_memdep_7_bicg_avm_address;
    wire [0:0] bicg_function_out_memdep_7_bicg_avm_burstcount;
    wire [7:0] bicg_function_out_memdep_7_bicg_avm_byteenable;
    wire [0:0] bicg_function_out_memdep_7_bicg_avm_enable;
    wire [0:0] bicg_function_out_memdep_7_bicg_avm_read;
    wire [0:0] bicg_function_out_memdep_7_bicg_avm_write;
    wire [63:0] bicg_function_out_memdep_7_bicg_avm_writedata;
    wire [31:0] bicg_function_out_memdep_bicg_avm_address;
    wire [0:0] bicg_function_out_memdep_bicg_avm_burstcount;
    wire [3:0] bicg_function_out_memdep_bicg_avm_byteenable;
    wire [0:0] bicg_function_out_memdep_bicg_avm_enable;
    wire [0:0] bicg_function_out_memdep_bicg_avm_read;
    wire [0:0] bicg_function_out_memdep_bicg_avm_write;
    wire [31:0] bicg_function_out_memdep_bicg_avm_writedata;
    wire [63:0] bicg_function_out_unnamed_bicg10_bicg_avm_address;
    wire [0:0] bicg_function_out_unnamed_bicg10_bicg_avm_burstcount;
    wire [7:0] bicg_function_out_unnamed_bicg10_bicg_avm_byteenable;
    wire [0:0] bicg_function_out_unnamed_bicg10_bicg_avm_enable;
    wire [0:0] bicg_function_out_unnamed_bicg10_bicg_avm_read;
    wire [0:0] bicg_function_out_unnamed_bicg10_bicg_avm_write;
    wire [63:0] bicg_function_out_unnamed_bicg10_bicg_avm_writedata;
    wire [63:0] bicg_function_out_unnamed_bicg11_bicg_avm_address;
    wire [0:0] bicg_function_out_unnamed_bicg11_bicg_avm_burstcount;
    wire [7:0] bicg_function_out_unnamed_bicg11_bicg_avm_byteenable;
    wire [0:0] bicg_function_out_unnamed_bicg11_bicg_avm_enable;
    wire [0:0] bicg_function_out_unnamed_bicg11_bicg_avm_read;
    wire [0:0] bicg_function_out_unnamed_bicg11_bicg_avm_write;
    wire [63:0] bicg_function_out_unnamed_bicg11_bicg_avm_writedata;
    wire [63:0] bicg_function_out_unnamed_bicg12_bicg_avm_address;
    wire [0:0] bicg_function_out_unnamed_bicg12_bicg_avm_burstcount;
    wire [7:0] bicg_function_out_unnamed_bicg12_bicg_avm_byteenable;
    wire [0:0] bicg_function_out_unnamed_bicg12_bicg_avm_enable;
    wire [0:0] bicg_function_out_unnamed_bicg12_bicg_avm_read;
    wire [0:0] bicg_function_out_unnamed_bicg12_bicg_avm_write;
    wire [63:0] bicg_function_out_unnamed_bicg12_bicg_avm_writedata;
    wire [31:0] bicg_function_out_unnamed_bicg13_bicg_avm_address;
    wire [0:0] bicg_function_out_unnamed_bicg13_bicg_avm_burstcount;
    wire [3:0] bicg_function_out_unnamed_bicg13_bicg_avm_byteenable;
    wire [0:0] bicg_function_out_unnamed_bicg13_bicg_avm_enable;
    wire [0:0] bicg_function_out_unnamed_bicg13_bicg_avm_read;
    wire [0:0] bicg_function_out_unnamed_bicg13_bicg_avm_write;
    wire [31:0] bicg_function_out_unnamed_bicg13_bicg_avm_writedata;
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
    wire [31:0] bicg_function_out_unnamed_bicg17_bicg_avm_address;
    wire [0:0] bicg_function_out_unnamed_bicg17_bicg_avm_burstcount;
    wire [3:0] bicg_function_out_unnamed_bicg17_bicg_avm_byteenable;
    wire [0:0] bicg_function_out_unnamed_bicg17_bicg_avm_enable;
    wire [0:0] bicg_function_out_unnamed_bicg17_bicg_avm_read;
    wire [0:0] bicg_function_out_unnamed_bicg17_bicg_avm_write;
    wire [31:0] bicg_function_out_unnamed_bicg17_bicg_avm_writedata;
    wire [31:0] bicg_function_out_unnamed_bicg18_bicg_avm_address;
    wire [0:0] bicg_function_out_unnamed_bicg18_bicg_avm_burstcount;
    wire [3:0] bicg_function_out_unnamed_bicg18_bicg_avm_byteenable;
    wire [0:0] bicg_function_out_unnamed_bicg18_bicg_avm_enable;
    wire [0:0] bicg_function_out_unnamed_bicg18_bicg_avm_read;
    wire [0:0] bicg_function_out_unnamed_bicg18_bicg_avm_write;
    wire [31:0] bicg_function_out_unnamed_bicg18_bicg_avm_writedata;
    wire [31:0] bicg_function_out_unnamed_bicg20_bicg_avm_address;
    wire [0:0] bicg_function_out_unnamed_bicg20_bicg_avm_burstcount;
    wire [3:0] bicg_function_out_unnamed_bicg20_bicg_avm_byteenable;
    wire [0:0] bicg_function_out_unnamed_bicg20_bicg_avm_enable;
    wire [0:0] bicg_function_out_unnamed_bicg20_bicg_avm_read;
    wire [0:0] bicg_function_out_unnamed_bicg20_bicg_avm_write;
    wire [31:0] bicg_function_out_unnamed_bicg20_bicg_avm_writedata;
    wire [63:0] bicg_function_out_unnamed_bicg8_bicg_avm_address;
    wire [0:0] bicg_function_out_unnamed_bicg8_bicg_avm_burstcount;
    wire [7:0] bicg_function_out_unnamed_bicg8_bicg_avm_byteenable;
    wire [0:0] bicg_function_out_unnamed_bicg8_bicg_avm_enable;
    wire [0:0] bicg_function_out_unnamed_bicg8_bicg_avm_read;
    wire [0:0] bicg_function_out_unnamed_bicg8_bicg_avm_write;
    wire [63:0] bicg_function_out_unnamed_bicg8_bicg_avm_writedata;
    wire [63:0] bicg_function_out_unnamed_bicg9_bicg_avm_address;
    wire [0:0] bicg_function_out_unnamed_bicg9_bicg_avm_burstcount;
    wire [7:0] bicg_function_out_unnamed_bicg9_bicg_avm_byteenable;
    wire [0:0] bicg_function_out_unnamed_bicg9_bicg_avm_enable;
    wire [0:0] bicg_function_out_unnamed_bicg9_bicg_avm_read;
    wire [0:0] bicg_function_out_unnamed_bicg9_bicg_avm_write;
    wire [63:0] bicg_function_out_unnamed_bicg9_bicg_avm_writedata;
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

    // not_stall(LOGICAL,100)
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
        .in_memdep_1_bicg_avm_readdata(avm_memdep_1_bicg_readdata),
        .in_memdep_1_bicg_avm_readdatavalid(avm_memdep_1_bicg_readdatavalid),
        .in_memdep_1_bicg_avm_waitrequest(avm_memdep_1_bicg_waitrequest),
        .in_memdep_1_bicg_avm_writeack(avm_memdep_1_bicg_writeack),
        .in_memdep_2_bicg_avm_readdata(avm_memdep_2_bicg_readdata),
        .in_memdep_2_bicg_avm_readdatavalid(avm_memdep_2_bicg_readdatavalid),
        .in_memdep_2_bicg_avm_waitrequest(avm_memdep_2_bicg_waitrequest),
        .in_memdep_2_bicg_avm_writeack(avm_memdep_2_bicg_writeack),
        .in_memdep_3_bicg_avm_readdata(avm_memdep_3_bicg_readdata),
        .in_memdep_3_bicg_avm_readdatavalid(avm_memdep_3_bicg_readdatavalid),
        .in_memdep_3_bicg_avm_waitrequest(avm_memdep_3_bicg_waitrequest),
        .in_memdep_3_bicg_avm_writeack(avm_memdep_3_bicg_writeack),
        .in_memdep_4_bicg_avm_readdata(avm_memdep_4_bicg_readdata),
        .in_memdep_4_bicg_avm_readdatavalid(avm_memdep_4_bicg_readdatavalid),
        .in_memdep_4_bicg_avm_waitrequest(avm_memdep_4_bicg_waitrequest),
        .in_memdep_4_bicg_avm_writeack(avm_memdep_4_bicg_writeack),
        .in_memdep_5_bicg_avm_readdata(avm_memdep_5_bicg_readdata),
        .in_memdep_5_bicg_avm_readdatavalid(avm_memdep_5_bicg_readdatavalid),
        .in_memdep_5_bicg_avm_waitrequest(avm_memdep_5_bicg_waitrequest),
        .in_memdep_5_bicg_avm_writeack(avm_memdep_5_bicg_writeack),
        .in_memdep_6_bicg_avm_readdata(avm_memdep_6_bicg_readdata),
        .in_memdep_6_bicg_avm_readdatavalid(avm_memdep_6_bicg_readdatavalid),
        .in_memdep_6_bicg_avm_waitrequest(avm_memdep_6_bicg_waitrequest),
        .in_memdep_6_bicg_avm_writeack(avm_memdep_6_bicg_writeack),
        .in_memdep_7_bicg_avm_readdata(avm_memdep_7_bicg_readdata),
        .in_memdep_7_bicg_avm_readdatavalid(avm_memdep_7_bicg_readdatavalid),
        .in_memdep_7_bicg_avm_waitrequest(avm_memdep_7_bicg_waitrequest),
        .in_memdep_7_bicg_avm_writeack(avm_memdep_7_bicg_writeack),
        .in_memdep_bicg_avm_readdata(avm_memdep_bicg_readdata),
        .in_memdep_bicg_avm_readdatavalid(avm_memdep_bicg_readdatavalid),
        .in_memdep_bicg_avm_waitrequest(avm_memdep_bicg_waitrequest),
        .in_memdep_bicg_avm_writeack(avm_memdep_bicg_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_unnamed_bicg10_bicg_avm_readdata(avm_unnamed_bicg10_bicg_readdata),
        .in_unnamed_bicg10_bicg_avm_readdatavalid(avm_unnamed_bicg10_bicg_readdatavalid),
        .in_unnamed_bicg10_bicg_avm_waitrequest(avm_unnamed_bicg10_bicg_waitrequest),
        .in_unnamed_bicg10_bicg_avm_writeack(avm_unnamed_bicg10_bicg_writeack),
        .in_unnamed_bicg11_bicg_avm_readdata(avm_unnamed_bicg11_bicg_readdata),
        .in_unnamed_bicg11_bicg_avm_readdatavalid(avm_unnamed_bicg11_bicg_readdatavalid),
        .in_unnamed_bicg11_bicg_avm_waitrequest(avm_unnamed_bicg11_bicg_waitrequest),
        .in_unnamed_bicg11_bicg_avm_writeack(avm_unnamed_bicg11_bicg_writeack),
        .in_unnamed_bicg12_bicg_avm_readdata(avm_unnamed_bicg12_bicg_readdata),
        .in_unnamed_bicg12_bicg_avm_readdatavalid(avm_unnamed_bicg12_bicg_readdatavalid),
        .in_unnamed_bicg12_bicg_avm_waitrequest(avm_unnamed_bicg12_bicg_waitrequest),
        .in_unnamed_bicg12_bicg_avm_writeack(avm_unnamed_bicg12_bicg_writeack),
        .in_unnamed_bicg13_bicg_avm_readdata(avm_unnamed_bicg13_bicg_readdata),
        .in_unnamed_bicg13_bicg_avm_readdatavalid(avm_unnamed_bicg13_bicg_readdatavalid),
        .in_unnamed_bicg13_bicg_avm_waitrequest(avm_unnamed_bicg13_bicg_waitrequest),
        .in_unnamed_bicg13_bicg_avm_writeack(avm_unnamed_bicg13_bicg_writeack),
        .in_unnamed_bicg15_bicg_avm_readdata(avm_unnamed_bicg15_bicg_readdata),
        .in_unnamed_bicg15_bicg_avm_readdatavalid(avm_unnamed_bicg15_bicg_readdatavalid),
        .in_unnamed_bicg15_bicg_avm_waitrequest(avm_unnamed_bicg15_bicg_waitrequest),
        .in_unnamed_bicg15_bicg_avm_writeack(avm_unnamed_bicg15_bicg_writeack),
        .in_unnamed_bicg16_bicg_avm_readdata(avm_unnamed_bicg16_bicg_readdata),
        .in_unnamed_bicg16_bicg_avm_readdatavalid(avm_unnamed_bicg16_bicg_readdatavalid),
        .in_unnamed_bicg16_bicg_avm_waitrequest(avm_unnamed_bicg16_bicg_waitrequest),
        .in_unnamed_bicg16_bicg_avm_writeack(avm_unnamed_bicg16_bicg_writeack),
        .in_unnamed_bicg17_bicg_avm_readdata(avm_unnamed_bicg17_bicg_readdata),
        .in_unnamed_bicg17_bicg_avm_readdatavalid(avm_unnamed_bicg17_bicg_readdatavalid),
        .in_unnamed_bicg17_bicg_avm_waitrequest(avm_unnamed_bicg17_bicg_waitrequest),
        .in_unnamed_bicg17_bicg_avm_writeack(avm_unnamed_bicg17_bicg_writeack),
        .in_unnamed_bicg18_bicg_avm_readdata(avm_unnamed_bicg18_bicg_readdata),
        .in_unnamed_bicg18_bicg_avm_readdatavalid(avm_unnamed_bicg18_bicg_readdatavalid),
        .in_unnamed_bicg18_bicg_avm_waitrequest(avm_unnamed_bicg18_bicg_waitrequest),
        .in_unnamed_bicg18_bicg_avm_writeack(avm_unnamed_bicg18_bicg_writeack),
        .in_unnamed_bicg20_bicg_avm_readdata(avm_unnamed_bicg20_bicg_readdata),
        .in_unnamed_bicg20_bicg_avm_readdatavalid(avm_unnamed_bicg20_bicg_readdatavalid),
        .in_unnamed_bicg20_bicg_avm_waitrequest(avm_unnamed_bicg20_bicg_waitrequest),
        .in_unnamed_bicg20_bicg_avm_writeack(avm_unnamed_bicg20_bicg_writeack),
        .in_unnamed_bicg8_bicg_avm_readdata(avm_unnamed_bicg8_bicg_readdata),
        .in_unnamed_bicg8_bicg_avm_readdatavalid(avm_unnamed_bicg8_bicg_readdatavalid),
        .in_unnamed_bicg8_bicg_avm_waitrequest(avm_unnamed_bicg8_bicg_waitrequest),
        .in_unnamed_bicg8_bicg_avm_writeack(avm_unnamed_bicg8_bicg_writeack),
        .in_unnamed_bicg9_bicg_avm_readdata(avm_unnamed_bicg9_bicg_readdata),
        .in_unnamed_bicg9_bicg_avm_readdatavalid(avm_unnamed_bicg9_bicg_readdatavalid),
        .in_unnamed_bicg9_bicg_avm_waitrequest(avm_unnamed_bicg9_bicg_waitrequest),
        .in_unnamed_bicg9_bicg_avm_writeack(avm_unnamed_bicg9_bicg_writeack),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_bicg_o_fifoalmost_full(bicg_function_out_iord_bl_call_bicg_o_fifoalmost_full),
        .out_iord_bl_call_bicg_o_fifoready(bicg_function_out_iord_bl_call_bicg_o_fifoready),
        .out_iowr_bl_return_bicg_o_fifodata(bicg_function_out_iowr_bl_return_bicg_o_fifodata),
        .out_iowr_bl_return_bicg_o_fifovalid(bicg_function_out_iowr_bl_return_bicg_o_fifovalid),
        .out_memdep_1_bicg_avm_address(bicg_function_out_memdep_1_bicg_avm_address),
        .out_memdep_1_bicg_avm_burstcount(bicg_function_out_memdep_1_bicg_avm_burstcount),
        .out_memdep_1_bicg_avm_byteenable(bicg_function_out_memdep_1_bicg_avm_byteenable),
        .out_memdep_1_bicg_avm_enable(bicg_function_out_memdep_1_bicg_avm_enable),
        .out_memdep_1_bicg_avm_read(bicg_function_out_memdep_1_bicg_avm_read),
        .out_memdep_1_bicg_avm_write(bicg_function_out_memdep_1_bicg_avm_write),
        .out_memdep_1_bicg_avm_writedata(bicg_function_out_memdep_1_bicg_avm_writedata),
        .out_memdep_2_bicg_avm_address(bicg_function_out_memdep_2_bicg_avm_address),
        .out_memdep_2_bicg_avm_burstcount(bicg_function_out_memdep_2_bicg_avm_burstcount),
        .out_memdep_2_bicg_avm_byteenable(bicg_function_out_memdep_2_bicg_avm_byteenable),
        .out_memdep_2_bicg_avm_enable(bicg_function_out_memdep_2_bicg_avm_enable),
        .out_memdep_2_bicg_avm_read(bicg_function_out_memdep_2_bicg_avm_read),
        .out_memdep_2_bicg_avm_write(bicg_function_out_memdep_2_bicg_avm_write),
        .out_memdep_2_bicg_avm_writedata(bicg_function_out_memdep_2_bicg_avm_writedata),
        .out_memdep_3_bicg_avm_address(bicg_function_out_memdep_3_bicg_avm_address),
        .out_memdep_3_bicg_avm_burstcount(bicg_function_out_memdep_3_bicg_avm_burstcount),
        .out_memdep_3_bicg_avm_byteenable(bicg_function_out_memdep_3_bicg_avm_byteenable),
        .out_memdep_3_bicg_avm_enable(bicg_function_out_memdep_3_bicg_avm_enable),
        .out_memdep_3_bicg_avm_read(bicg_function_out_memdep_3_bicg_avm_read),
        .out_memdep_3_bicg_avm_write(bicg_function_out_memdep_3_bicg_avm_write),
        .out_memdep_3_bicg_avm_writedata(bicg_function_out_memdep_3_bicg_avm_writedata),
        .out_memdep_4_bicg_avm_address(bicg_function_out_memdep_4_bicg_avm_address),
        .out_memdep_4_bicg_avm_burstcount(bicg_function_out_memdep_4_bicg_avm_burstcount),
        .out_memdep_4_bicg_avm_byteenable(bicg_function_out_memdep_4_bicg_avm_byteenable),
        .out_memdep_4_bicg_avm_enable(bicg_function_out_memdep_4_bicg_avm_enable),
        .out_memdep_4_bicg_avm_read(bicg_function_out_memdep_4_bicg_avm_read),
        .out_memdep_4_bicg_avm_write(bicg_function_out_memdep_4_bicg_avm_write),
        .out_memdep_4_bicg_avm_writedata(bicg_function_out_memdep_4_bicg_avm_writedata),
        .out_memdep_5_bicg_avm_address(bicg_function_out_memdep_5_bicg_avm_address),
        .out_memdep_5_bicg_avm_burstcount(bicg_function_out_memdep_5_bicg_avm_burstcount),
        .out_memdep_5_bicg_avm_byteenable(bicg_function_out_memdep_5_bicg_avm_byteenable),
        .out_memdep_5_bicg_avm_enable(bicg_function_out_memdep_5_bicg_avm_enable),
        .out_memdep_5_bicg_avm_read(bicg_function_out_memdep_5_bicg_avm_read),
        .out_memdep_5_bicg_avm_write(bicg_function_out_memdep_5_bicg_avm_write),
        .out_memdep_5_bicg_avm_writedata(bicg_function_out_memdep_5_bicg_avm_writedata),
        .out_memdep_6_bicg_avm_address(bicg_function_out_memdep_6_bicg_avm_address),
        .out_memdep_6_bicg_avm_burstcount(bicg_function_out_memdep_6_bicg_avm_burstcount),
        .out_memdep_6_bicg_avm_byteenable(bicg_function_out_memdep_6_bicg_avm_byteenable),
        .out_memdep_6_bicg_avm_enable(bicg_function_out_memdep_6_bicg_avm_enable),
        .out_memdep_6_bicg_avm_read(bicg_function_out_memdep_6_bicg_avm_read),
        .out_memdep_6_bicg_avm_write(bicg_function_out_memdep_6_bicg_avm_write),
        .out_memdep_6_bicg_avm_writedata(bicg_function_out_memdep_6_bicg_avm_writedata),
        .out_memdep_7_bicg_avm_address(bicg_function_out_memdep_7_bicg_avm_address),
        .out_memdep_7_bicg_avm_burstcount(bicg_function_out_memdep_7_bicg_avm_burstcount),
        .out_memdep_7_bicg_avm_byteenable(bicg_function_out_memdep_7_bicg_avm_byteenable),
        .out_memdep_7_bicg_avm_enable(bicg_function_out_memdep_7_bicg_avm_enable),
        .out_memdep_7_bicg_avm_read(bicg_function_out_memdep_7_bicg_avm_read),
        .out_memdep_7_bicg_avm_write(bicg_function_out_memdep_7_bicg_avm_write),
        .out_memdep_7_bicg_avm_writedata(bicg_function_out_memdep_7_bicg_avm_writedata),
        .out_memdep_bicg_avm_address(bicg_function_out_memdep_bicg_avm_address),
        .out_memdep_bicg_avm_burstcount(bicg_function_out_memdep_bicg_avm_burstcount),
        .out_memdep_bicg_avm_byteenable(bicg_function_out_memdep_bicg_avm_byteenable),
        .out_memdep_bicg_avm_enable(bicg_function_out_memdep_bicg_avm_enable),
        .out_memdep_bicg_avm_read(bicg_function_out_memdep_bicg_avm_read),
        .out_memdep_bicg_avm_write(bicg_function_out_memdep_bicg_avm_write),
        .out_memdep_bicg_avm_writedata(bicg_function_out_memdep_bicg_avm_writedata),
        .out_o_active_memdep_7(),
        .out_stall_out(),
        .out_unnamed_bicg10_bicg_avm_address(bicg_function_out_unnamed_bicg10_bicg_avm_address),
        .out_unnamed_bicg10_bicg_avm_burstcount(bicg_function_out_unnamed_bicg10_bicg_avm_burstcount),
        .out_unnamed_bicg10_bicg_avm_byteenable(bicg_function_out_unnamed_bicg10_bicg_avm_byteenable),
        .out_unnamed_bicg10_bicg_avm_enable(bicg_function_out_unnamed_bicg10_bicg_avm_enable),
        .out_unnamed_bicg10_bicg_avm_read(bicg_function_out_unnamed_bicg10_bicg_avm_read),
        .out_unnamed_bicg10_bicg_avm_write(bicg_function_out_unnamed_bicg10_bicg_avm_write),
        .out_unnamed_bicg10_bicg_avm_writedata(bicg_function_out_unnamed_bicg10_bicg_avm_writedata),
        .out_unnamed_bicg11_bicg_avm_address(bicg_function_out_unnamed_bicg11_bicg_avm_address),
        .out_unnamed_bicg11_bicg_avm_burstcount(bicg_function_out_unnamed_bicg11_bicg_avm_burstcount),
        .out_unnamed_bicg11_bicg_avm_byteenable(bicg_function_out_unnamed_bicg11_bicg_avm_byteenable),
        .out_unnamed_bicg11_bicg_avm_enable(bicg_function_out_unnamed_bicg11_bicg_avm_enable),
        .out_unnamed_bicg11_bicg_avm_read(bicg_function_out_unnamed_bicg11_bicg_avm_read),
        .out_unnamed_bicg11_bicg_avm_write(bicg_function_out_unnamed_bicg11_bicg_avm_write),
        .out_unnamed_bicg11_bicg_avm_writedata(bicg_function_out_unnamed_bicg11_bicg_avm_writedata),
        .out_unnamed_bicg12_bicg_avm_address(bicg_function_out_unnamed_bicg12_bicg_avm_address),
        .out_unnamed_bicg12_bicg_avm_burstcount(bicg_function_out_unnamed_bicg12_bicg_avm_burstcount),
        .out_unnamed_bicg12_bicg_avm_byteenable(bicg_function_out_unnamed_bicg12_bicg_avm_byteenable),
        .out_unnamed_bicg12_bicg_avm_enable(bicg_function_out_unnamed_bicg12_bicg_avm_enable),
        .out_unnamed_bicg12_bicg_avm_read(bicg_function_out_unnamed_bicg12_bicg_avm_read),
        .out_unnamed_bicg12_bicg_avm_write(bicg_function_out_unnamed_bicg12_bicg_avm_write),
        .out_unnamed_bicg12_bicg_avm_writedata(bicg_function_out_unnamed_bicg12_bicg_avm_writedata),
        .out_unnamed_bicg13_bicg_avm_address(bicg_function_out_unnamed_bicg13_bicg_avm_address),
        .out_unnamed_bicg13_bicg_avm_burstcount(bicg_function_out_unnamed_bicg13_bicg_avm_burstcount),
        .out_unnamed_bicg13_bicg_avm_byteenable(bicg_function_out_unnamed_bicg13_bicg_avm_byteenable),
        .out_unnamed_bicg13_bicg_avm_enable(bicg_function_out_unnamed_bicg13_bicg_avm_enable),
        .out_unnamed_bicg13_bicg_avm_read(bicg_function_out_unnamed_bicg13_bicg_avm_read),
        .out_unnamed_bicg13_bicg_avm_write(bicg_function_out_unnamed_bicg13_bicg_avm_write),
        .out_unnamed_bicg13_bicg_avm_writedata(bicg_function_out_unnamed_bicg13_bicg_avm_writedata),
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
        .out_unnamed_bicg17_bicg_avm_address(bicg_function_out_unnamed_bicg17_bicg_avm_address),
        .out_unnamed_bicg17_bicg_avm_burstcount(bicg_function_out_unnamed_bicg17_bicg_avm_burstcount),
        .out_unnamed_bicg17_bicg_avm_byteenable(bicg_function_out_unnamed_bicg17_bicg_avm_byteenable),
        .out_unnamed_bicg17_bicg_avm_enable(bicg_function_out_unnamed_bicg17_bicg_avm_enable),
        .out_unnamed_bicg17_bicg_avm_read(bicg_function_out_unnamed_bicg17_bicg_avm_read),
        .out_unnamed_bicg17_bicg_avm_write(bicg_function_out_unnamed_bicg17_bicg_avm_write),
        .out_unnamed_bicg17_bicg_avm_writedata(bicg_function_out_unnamed_bicg17_bicg_avm_writedata),
        .out_unnamed_bicg18_bicg_avm_address(bicg_function_out_unnamed_bicg18_bicg_avm_address),
        .out_unnamed_bicg18_bicg_avm_burstcount(bicg_function_out_unnamed_bicg18_bicg_avm_burstcount),
        .out_unnamed_bicg18_bicg_avm_byteenable(bicg_function_out_unnamed_bicg18_bicg_avm_byteenable),
        .out_unnamed_bicg18_bicg_avm_enable(bicg_function_out_unnamed_bicg18_bicg_avm_enable),
        .out_unnamed_bicg18_bicg_avm_read(bicg_function_out_unnamed_bicg18_bicg_avm_read),
        .out_unnamed_bicg18_bicg_avm_write(bicg_function_out_unnamed_bicg18_bicg_avm_write),
        .out_unnamed_bicg18_bicg_avm_writedata(bicg_function_out_unnamed_bicg18_bicg_avm_writedata),
        .out_unnamed_bicg20_bicg_avm_address(bicg_function_out_unnamed_bicg20_bicg_avm_address),
        .out_unnamed_bicg20_bicg_avm_burstcount(bicg_function_out_unnamed_bicg20_bicg_avm_burstcount),
        .out_unnamed_bicg20_bicg_avm_byteenable(bicg_function_out_unnamed_bicg20_bicg_avm_byteenable),
        .out_unnamed_bicg20_bicg_avm_enable(bicg_function_out_unnamed_bicg20_bicg_avm_enable),
        .out_unnamed_bicg20_bicg_avm_read(bicg_function_out_unnamed_bicg20_bicg_avm_read),
        .out_unnamed_bicg20_bicg_avm_write(bicg_function_out_unnamed_bicg20_bicg_avm_write),
        .out_unnamed_bicg20_bicg_avm_writedata(bicg_function_out_unnamed_bicg20_bicg_avm_writedata),
        .out_unnamed_bicg8_bicg_avm_address(bicg_function_out_unnamed_bicg8_bicg_avm_address),
        .out_unnamed_bicg8_bicg_avm_burstcount(bicg_function_out_unnamed_bicg8_bicg_avm_burstcount),
        .out_unnamed_bicg8_bicg_avm_byteenable(bicg_function_out_unnamed_bicg8_bicg_avm_byteenable),
        .out_unnamed_bicg8_bicg_avm_enable(bicg_function_out_unnamed_bicg8_bicg_avm_enable),
        .out_unnamed_bicg8_bicg_avm_read(bicg_function_out_unnamed_bicg8_bicg_avm_read),
        .out_unnamed_bicg8_bicg_avm_write(bicg_function_out_unnamed_bicg8_bicg_avm_write),
        .out_unnamed_bicg8_bicg_avm_writedata(bicg_function_out_unnamed_bicg8_bicg_avm_writedata),
        .out_unnamed_bicg9_bicg_avm_address(bicg_function_out_unnamed_bicg9_bicg_avm_address),
        .out_unnamed_bicg9_bicg_avm_burstcount(bicg_function_out_unnamed_bicg9_bicg_avm_burstcount),
        .out_unnamed_bicg9_bicg_avm_byteenable(bicg_function_out_unnamed_bicg9_bicg_avm_byteenable),
        .out_unnamed_bicg9_bicg_avm_enable(bicg_function_out_unnamed_bicg9_bicg_avm_enable),
        .out_unnamed_bicg9_bicg_avm_read(bicg_function_out_unnamed_bicg9_bicg_avm_read),
        .out_unnamed_bicg9_bicg_avm_write(bicg_function_out_unnamed_bicg9_bicg_avm_write),
        .out_unnamed_bicg9_bicg_avm_writedata(bicg_function_out_unnamed_bicg9_bicg_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_memdep_1_bicg_address(GPOUT,101)
    assign avm_memdep_1_bicg_address = bicg_function_out_memdep_1_bicg_avm_address;

    // avm_memdep_1_bicg_burstcount(GPOUT,102)
    assign avm_memdep_1_bicg_burstcount = bicg_function_out_memdep_1_bicg_avm_burstcount;

    // avm_memdep_1_bicg_byteenable(GPOUT,103)
    assign avm_memdep_1_bicg_byteenable = bicg_function_out_memdep_1_bicg_avm_byteenable;

    // avm_memdep_1_bicg_enable(GPOUT,104)
    assign avm_memdep_1_bicg_enable = bicg_function_out_memdep_1_bicg_avm_enable;

    // avm_memdep_1_bicg_read(GPOUT,105)
    assign avm_memdep_1_bicg_read = bicg_function_out_memdep_1_bicg_avm_read;

    // avm_memdep_1_bicg_write(GPOUT,106)
    assign avm_memdep_1_bicg_write = bicg_function_out_memdep_1_bicg_avm_write;

    // avm_memdep_1_bicg_writedata(GPOUT,107)
    assign avm_memdep_1_bicg_writedata = bicg_function_out_memdep_1_bicg_avm_writedata;

    // avm_memdep_2_bicg_address(GPOUT,108)
    assign avm_memdep_2_bicg_address = bicg_function_out_memdep_2_bicg_avm_address;

    // avm_memdep_2_bicg_burstcount(GPOUT,109)
    assign avm_memdep_2_bicg_burstcount = bicg_function_out_memdep_2_bicg_avm_burstcount;

    // avm_memdep_2_bicg_byteenable(GPOUT,110)
    assign avm_memdep_2_bicg_byteenable = bicg_function_out_memdep_2_bicg_avm_byteenable;

    // avm_memdep_2_bicg_enable(GPOUT,111)
    assign avm_memdep_2_bicg_enable = bicg_function_out_memdep_2_bicg_avm_enable;

    // avm_memdep_2_bicg_read(GPOUT,112)
    assign avm_memdep_2_bicg_read = bicg_function_out_memdep_2_bicg_avm_read;

    // avm_memdep_2_bicg_write(GPOUT,113)
    assign avm_memdep_2_bicg_write = bicg_function_out_memdep_2_bicg_avm_write;

    // avm_memdep_2_bicg_writedata(GPOUT,114)
    assign avm_memdep_2_bicg_writedata = bicg_function_out_memdep_2_bicg_avm_writedata;

    // avm_memdep_3_bicg_address(GPOUT,115)
    assign avm_memdep_3_bicg_address = bicg_function_out_memdep_3_bicg_avm_address;

    // avm_memdep_3_bicg_burstcount(GPOUT,116)
    assign avm_memdep_3_bicg_burstcount = bicg_function_out_memdep_3_bicg_avm_burstcount;

    // avm_memdep_3_bicg_byteenable(GPOUT,117)
    assign avm_memdep_3_bicg_byteenable = bicg_function_out_memdep_3_bicg_avm_byteenable;

    // avm_memdep_3_bicg_enable(GPOUT,118)
    assign avm_memdep_3_bicg_enable = bicg_function_out_memdep_3_bicg_avm_enable;

    // avm_memdep_3_bicg_read(GPOUT,119)
    assign avm_memdep_3_bicg_read = bicg_function_out_memdep_3_bicg_avm_read;

    // avm_memdep_3_bicg_write(GPOUT,120)
    assign avm_memdep_3_bicg_write = bicg_function_out_memdep_3_bicg_avm_write;

    // avm_memdep_3_bicg_writedata(GPOUT,121)
    assign avm_memdep_3_bicg_writedata = bicg_function_out_memdep_3_bicg_avm_writedata;

    // avm_memdep_4_bicg_address(GPOUT,122)
    assign avm_memdep_4_bicg_address = bicg_function_out_memdep_4_bicg_avm_address;

    // avm_memdep_4_bicg_burstcount(GPOUT,123)
    assign avm_memdep_4_bicg_burstcount = bicg_function_out_memdep_4_bicg_avm_burstcount;

    // avm_memdep_4_bicg_byteenable(GPOUT,124)
    assign avm_memdep_4_bicg_byteenable = bicg_function_out_memdep_4_bicg_avm_byteenable;

    // avm_memdep_4_bicg_enable(GPOUT,125)
    assign avm_memdep_4_bicg_enable = bicg_function_out_memdep_4_bicg_avm_enable;

    // avm_memdep_4_bicg_read(GPOUT,126)
    assign avm_memdep_4_bicg_read = bicg_function_out_memdep_4_bicg_avm_read;

    // avm_memdep_4_bicg_write(GPOUT,127)
    assign avm_memdep_4_bicg_write = bicg_function_out_memdep_4_bicg_avm_write;

    // avm_memdep_4_bicg_writedata(GPOUT,128)
    assign avm_memdep_4_bicg_writedata = bicg_function_out_memdep_4_bicg_avm_writedata;

    // avm_memdep_5_bicg_address(GPOUT,129)
    assign avm_memdep_5_bicg_address = bicg_function_out_memdep_5_bicg_avm_address;

    // avm_memdep_5_bicg_burstcount(GPOUT,130)
    assign avm_memdep_5_bicg_burstcount = bicg_function_out_memdep_5_bicg_avm_burstcount;

    // avm_memdep_5_bicg_byteenable(GPOUT,131)
    assign avm_memdep_5_bicg_byteenable = bicg_function_out_memdep_5_bicg_avm_byteenable;

    // avm_memdep_5_bicg_enable(GPOUT,132)
    assign avm_memdep_5_bicg_enable = bicg_function_out_memdep_5_bicg_avm_enable;

    // avm_memdep_5_bicg_read(GPOUT,133)
    assign avm_memdep_5_bicg_read = bicg_function_out_memdep_5_bicg_avm_read;

    // avm_memdep_5_bicg_write(GPOUT,134)
    assign avm_memdep_5_bicg_write = bicg_function_out_memdep_5_bicg_avm_write;

    // avm_memdep_5_bicg_writedata(GPOUT,135)
    assign avm_memdep_5_bicg_writedata = bicg_function_out_memdep_5_bicg_avm_writedata;

    // avm_memdep_6_bicg_address(GPOUT,136)
    assign avm_memdep_6_bicg_address = bicg_function_out_memdep_6_bicg_avm_address;

    // avm_memdep_6_bicg_burstcount(GPOUT,137)
    assign avm_memdep_6_bicg_burstcount = bicg_function_out_memdep_6_bicg_avm_burstcount;

    // avm_memdep_6_bicg_byteenable(GPOUT,138)
    assign avm_memdep_6_bicg_byteenable = bicg_function_out_memdep_6_bicg_avm_byteenable;

    // avm_memdep_6_bicg_enable(GPOUT,139)
    assign avm_memdep_6_bicg_enable = bicg_function_out_memdep_6_bicg_avm_enable;

    // avm_memdep_6_bicg_read(GPOUT,140)
    assign avm_memdep_6_bicg_read = bicg_function_out_memdep_6_bicg_avm_read;

    // avm_memdep_6_bicg_write(GPOUT,141)
    assign avm_memdep_6_bicg_write = bicg_function_out_memdep_6_bicg_avm_write;

    // avm_memdep_6_bicg_writedata(GPOUT,142)
    assign avm_memdep_6_bicg_writedata = bicg_function_out_memdep_6_bicg_avm_writedata;

    // avm_memdep_7_bicg_address(GPOUT,143)
    assign avm_memdep_7_bicg_address = bicg_function_out_memdep_7_bicg_avm_address;

    // avm_memdep_7_bicg_burstcount(GPOUT,144)
    assign avm_memdep_7_bicg_burstcount = bicg_function_out_memdep_7_bicg_avm_burstcount;

    // avm_memdep_7_bicg_byteenable(GPOUT,145)
    assign avm_memdep_7_bicg_byteenable = bicg_function_out_memdep_7_bicg_avm_byteenable;

    // avm_memdep_7_bicg_enable(GPOUT,146)
    assign avm_memdep_7_bicg_enable = bicg_function_out_memdep_7_bicg_avm_enable;

    // avm_memdep_7_bicg_read(GPOUT,147)
    assign avm_memdep_7_bicg_read = bicg_function_out_memdep_7_bicg_avm_read;

    // avm_memdep_7_bicg_write(GPOUT,148)
    assign avm_memdep_7_bicg_write = bicg_function_out_memdep_7_bicg_avm_write;

    // avm_memdep_7_bicg_writedata(GPOUT,149)
    assign avm_memdep_7_bicg_writedata = bicg_function_out_memdep_7_bicg_avm_writedata;

    // avm_memdep_bicg_address(GPOUT,150)
    assign avm_memdep_bicg_address = bicg_function_out_memdep_bicg_avm_address;

    // avm_memdep_bicg_burstcount(GPOUT,151)
    assign avm_memdep_bicg_burstcount = bicg_function_out_memdep_bicg_avm_burstcount;

    // avm_memdep_bicg_byteenable(GPOUT,152)
    assign avm_memdep_bicg_byteenable = bicg_function_out_memdep_bicg_avm_byteenable;

    // avm_memdep_bicg_enable(GPOUT,153)
    assign avm_memdep_bicg_enable = bicg_function_out_memdep_bicg_avm_enable;

    // avm_memdep_bicg_read(GPOUT,154)
    assign avm_memdep_bicg_read = bicg_function_out_memdep_bicg_avm_read;

    // avm_memdep_bicg_write(GPOUT,155)
    assign avm_memdep_bicg_write = bicg_function_out_memdep_bicg_avm_write;

    // avm_memdep_bicg_writedata(GPOUT,156)
    assign avm_memdep_bicg_writedata = bicg_function_out_memdep_bicg_avm_writedata;

    // avm_unnamed_bicg10_bicg_address(GPOUT,157)
    assign avm_unnamed_bicg10_bicg_address = bicg_function_out_unnamed_bicg10_bicg_avm_address;

    // avm_unnamed_bicg10_bicg_burstcount(GPOUT,158)
    assign avm_unnamed_bicg10_bicg_burstcount = bicg_function_out_unnamed_bicg10_bicg_avm_burstcount;

    // avm_unnamed_bicg10_bicg_byteenable(GPOUT,159)
    assign avm_unnamed_bicg10_bicg_byteenable = bicg_function_out_unnamed_bicg10_bicg_avm_byteenable;

    // avm_unnamed_bicg10_bicg_enable(GPOUT,160)
    assign avm_unnamed_bicg10_bicg_enable = bicg_function_out_unnamed_bicg10_bicg_avm_enable;

    // avm_unnamed_bicg10_bicg_read(GPOUT,161)
    assign avm_unnamed_bicg10_bicg_read = bicg_function_out_unnamed_bicg10_bicg_avm_read;

    // avm_unnamed_bicg10_bicg_write(GPOUT,162)
    assign avm_unnamed_bicg10_bicg_write = bicg_function_out_unnamed_bicg10_bicg_avm_write;

    // avm_unnamed_bicg10_bicg_writedata(GPOUT,163)
    assign avm_unnamed_bicg10_bicg_writedata = bicg_function_out_unnamed_bicg10_bicg_avm_writedata;

    // avm_unnamed_bicg11_bicg_address(GPOUT,164)
    assign avm_unnamed_bicg11_bicg_address = bicg_function_out_unnamed_bicg11_bicg_avm_address;

    // avm_unnamed_bicg11_bicg_burstcount(GPOUT,165)
    assign avm_unnamed_bicg11_bicg_burstcount = bicg_function_out_unnamed_bicg11_bicg_avm_burstcount;

    // avm_unnamed_bicg11_bicg_byteenable(GPOUT,166)
    assign avm_unnamed_bicg11_bicg_byteenable = bicg_function_out_unnamed_bicg11_bicg_avm_byteenable;

    // avm_unnamed_bicg11_bicg_enable(GPOUT,167)
    assign avm_unnamed_bicg11_bicg_enable = bicg_function_out_unnamed_bicg11_bicg_avm_enable;

    // avm_unnamed_bicg11_bicg_read(GPOUT,168)
    assign avm_unnamed_bicg11_bicg_read = bicg_function_out_unnamed_bicg11_bicg_avm_read;

    // avm_unnamed_bicg11_bicg_write(GPOUT,169)
    assign avm_unnamed_bicg11_bicg_write = bicg_function_out_unnamed_bicg11_bicg_avm_write;

    // avm_unnamed_bicg11_bicg_writedata(GPOUT,170)
    assign avm_unnamed_bicg11_bicg_writedata = bicg_function_out_unnamed_bicg11_bicg_avm_writedata;

    // avm_unnamed_bicg12_bicg_address(GPOUT,171)
    assign avm_unnamed_bicg12_bicg_address = bicg_function_out_unnamed_bicg12_bicg_avm_address;

    // avm_unnamed_bicg12_bicg_burstcount(GPOUT,172)
    assign avm_unnamed_bicg12_bicg_burstcount = bicg_function_out_unnamed_bicg12_bicg_avm_burstcount;

    // avm_unnamed_bicg12_bicg_byteenable(GPOUT,173)
    assign avm_unnamed_bicg12_bicg_byteenable = bicg_function_out_unnamed_bicg12_bicg_avm_byteenable;

    // avm_unnamed_bicg12_bicg_enable(GPOUT,174)
    assign avm_unnamed_bicg12_bicg_enable = bicg_function_out_unnamed_bicg12_bicg_avm_enable;

    // avm_unnamed_bicg12_bicg_read(GPOUT,175)
    assign avm_unnamed_bicg12_bicg_read = bicg_function_out_unnamed_bicg12_bicg_avm_read;

    // avm_unnamed_bicg12_bicg_write(GPOUT,176)
    assign avm_unnamed_bicg12_bicg_write = bicg_function_out_unnamed_bicg12_bicg_avm_write;

    // avm_unnamed_bicg12_bicg_writedata(GPOUT,177)
    assign avm_unnamed_bicg12_bicg_writedata = bicg_function_out_unnamed_bicg12_bicg_avm_writedata;

    // avm_unnamed_bicg13_bicg_address(GPOUT,178)
    assign avm_unnamed_bicg13_bicg_address = bicg_function_out_unnamed_bicg13_bicg_avm_address;

    // avm_unnamed_bicg13_bicg_burstcount(GPOUT,179)
    assign avm_unnamed_bicg13_bicg_burstcount = bicg_function_out_unnamed_bicg13_bicg_avm_burstcount;

    // avm_unnamed_bicg13_bicg_byteenable(GPOUT,180)
    assign avm_unnamed_bicg13_bicg_byteenable = bicg_function_out_unnamed_bicg13_bicg_avm_byteenable;

    // avm_unnamed_bicg13_bicg_enable(GPOUT,181)
    assign avm_unnamed_bicg13_bicg_enable = bicg_function_out_unnamed_bicg13_bicg_avm_enable;

    // avm_unnamed_bicg13_bicg_read(GPOUT,182)
    assign avm_unnamed_bicg13_bicg_read = bicg_function_out_unnamed_bicg13_bicg_avm_read;

    // avm_unnamed_bicg13_bicg_write(GPOUT,183)
    assign avm_unnamed_bicg13_bicg_write = bicg_function_out_unnamed_bicg13_bicg_avm_write;

    // avm_unnamed_bicg13_bicg_writedata(GPOUT,184)
    assign avm_unnamed_bicg13_bicg_writedata = bicg_function_out_unnamed_bicg13_bicg_avm_writedata;

    // avm_unnamed_bicg15_bicg_address(GPOUT,185)
    assign avm_unnamed_bicg15_bicg_address = bicg_function_out_unnamed_bicg15_bicg_avm_address;

    // avm_unnamed_bicg15_bicg_burstcount(GPOUT,186)
    assign avm_unnamed_bicg15_bicg_burstcount = bicg_function_out_unnamed_bicg15_bicg_avm_burstcount;

    // avm_unnamed_bicg15_bicg_byteenable(GPOUT,187)
    assign avm_unnamed_bicg15_bicg_byteenable = bicg_function_out_unnamed_bicg15_bicg_avm_byteenable;

    // avm_unnamed_bicg15_bicg_enable(GPOUT,188)
    assign avm_unnamed_bicg15_bicg_enable = bicg_function_out_unnamed_bicg15_bicg_avm_enable;

    // avm_unnamed_bicg15_bicg_read(GPOUT,189)
    assign avm_unnamed_bicg15_bicg_read = bicg_function_out_unnamed_bicg15_bicg_avm_read;

    // avm_unnamed_bicg15_bicg_write(GPOUT,190)
    assign avm_unnamed_bicg15_bicg_write = bicg_function_out_unnamed_bicg15_bicg_avm_write;

    // avm_unnamed_bicg15_bicg_writedata(GPOUT,191)
    assign avm_unnamed_bicg15_bicg_writedata = bicg_function_out_unnamed_bicg15_bicg_avm_writedata;

    // avm_unnamed_bicg16_bicg_address(GPOUT,192)
    assign avm_unnamed_bicg16_bicg_address = bicg_function_out_unnamed_bicg16_bicg_avm_address;

    // avm_unnamed_bicg16_bicg_burstcount(GPOUT,193)
    assign avm_unnamed_bicg16_bicg_burstcount = bicg_function_out_unnamed_bicg16_bicg_avm_burstcount;

    // avm_unnamed_bicg16_bicg_byteenable(GPOUT,194)
    assign avm_unnamed_bicg16_bicg_byteenable = bicg_function_out_unnamed_bicg16_bicg_avm_byteenable;

    // avm_unnamed_bicg16_bicg_enable(GPOUT,195)
    assign avm_unnamed_bicg16_bicg_enable = bicg_function_out_unnamed_bicg16_bicg_avm_enable;

    // avm_unnamed_bicg16_bicg_read(GPOUT,196)
    assign avm_unnamed_bicg16_bicg_read = bicg_function_out_unnamed_bicg16_bicg_avm_read;

    // avm_unnamed_bicg16_bicg_write(GPOUT,197)
    assign avm_unnamed_bicg16_bicg_write = bicg_function_out_unnamed_bicg16_bicg_avm_write;

    // avm_unnamed_bicg16_bicg_writedata(GPOUT,198)
    assign avm_unnamed_bicg16_bicg_writedata = bicg_function_out_unnamed_bicg16_bicg_avm_writedata;

    // avm_unnamed_bicg17_bicg_address(GPOUT,199)
    assign avm_unnamed_bicg17_bicg_address = bicg_function_out_unnamed_bicg17_bicg_avm_address;

    // avm_unnamed_bicg17_bicg_burstcount(GPOUT,200)
    assign avm_unnamed_bicg17_bicg_burstcount = bicg_function_out_unnamed_bicg17_bicg_avm_burstcount;

    // avm_unnamed_bicg17_bicg_byteenable(GPOUT,201)
    assign avm_unnamed_bicg17_bicg_byteenable = bicg_function_out_unnamed_bicg17_bicg_avm_byteenable;

    // avm_unnamed_bicg17_bicg_enable(GPOUT,202)
    assign avm_unnamed_bicg17_bicg_enable = bicg_function_out_unnamed_bicg17_bicg_avm_enable;

    // avm_unnamed_bicg17_bicg_read(GPOUT,203)
    assign avm_unnamed_bicg17_bicg_read = bicg_function_out_unnamed_bicg17_bicg_avm_read;

    // avm_unnamed_bicg17_bicg_write(GPOUT,204)
    assign avm_unnamed_bicg17_bicg_write = bicg_function_out_unnamed_bicg17_bicg_avm_write;

    // avm_unnamed_bicg17_bicg_writedata(GPOUT,205)
    assign avm_unnamed_bicg17_bicg_writedata = bicg_function_out_unnamed_bicg17_bicg_avm_writedata;

    // avm_unnamed_bicg18_bicg_address(GPOUT,206)
    assign avm_unnamed_bicg18_bicg_address = bicg_function_out_unnamed_bicg18_bicg_avm_address;

    // avm_unnamed_bicg18_bicg_burstcount(GPOUT,207)
    assign avm_unnamed_bicg18_bicg_burstcount = bicg_function_out_unnamed_bicg18_bicg_avm_burstcount;

    // avm_unnamed_bicg18_bicg_byteenable(GPOUT,208)
    assign avm_unnamed_bicg18_bicg_byteenable = bicg_function_out_unnamed_bicg18_bicg_avm_byteenable;

    // avm_unnamed_bicg18_bicg_enable(GPOUT,209)
    assign avm_unnamed_bicg18_bicg_enable = bicg_function_out_unnamed_bicg18_bicg_avm_enable;

    // avm_unnamed_bicg18_bicg_read(GPOUT,210)
    assign avm_unnamed_bicg18_bicg_read = bicg_function_out_unnamed_bicg18_bicg_avm_read;

    // avm_unnamed_bicg18_bicg_write(GPOUT,211)
    assign avm_unnamed_bicg18_bicg_write = bicg_function_out_unnamed_bicg18_bicg_avm_write;

    // avm_unnamed_bicg18_bicg_writedata(GPOUT,212)
    assign avm_unnamed_bicg18_bicg_writedata = bicg_function_out_unnamed_bicg18_bicg_avm_writedata;

    // avm_unnamed_bicg20_bicg_address(GPOUT,213)
    assign avm_unnamed_bicg20_bicg_address = bicg_function_out_unnamed_bicg20_bicg_avm_address;

    // avm_unnamed_bicg20_bicg_burstcount(GPOUT,214)
    assign avm_unnamed_bicg20_bicg_burstcount = bicg_function_out_unnamed_bicg20_bicg_avm_burstcount;

    // avm_unnamed_bicg20_bicg_byteenable(GPOUT,215)
    assign avm_unnamed_bicg20_bicg_byteenable = bicg_function_out_unnamed_bicg20_bicg_avm_byteenable;

    // avm_unnamed_bicg20_bicg_enable(GPOUT,216)
    assign avm_unnamed_bicg20_bicg_enable = bicg_function_out_unnamed_bicg20_bicg_avm_enable;

    // avm_unnamed_bicg20_bicg_read(GPOUT,217)
    assign avm_unnamed_bicg20_bicg_read = bicg_function_out_unnamed_bicg20_bicg_avm_read;

    // avm_unnamed_bicg20_bicg_write(GPOUT,218)
    assign avm_unnamed_bicg20_bicg_write = bicg_function_out_unnamed_bicg20_bicg_avm_write;

    // avm_unnamed_bicg20_bicg_writedata(GPOUT,219)
    assign avm_unnamed_bicg20_bicg_writedata = bicg_function_out_unnamed_bicg20_bicg_avm_writedata;

    // avm_unnamed_bicg8_bicg_address(GPOUT,220)
    assign avm_unnamed_bicg8_bicg_address = bicg_function_out_unnamed_bicg8_bicg_avm_address;

    // avm_unnamed_bicg8_bicg_burstcount(GPOUT,221)
    assign avm_unnamed_bicg8_bicg_burstcount = bicg_function_out_unnamed_bicg8_bicg_avm_burstcount;

    // avm_unnamed_bicg8_bicg_byteenable(GPOUT,222)
    assign avm_unnamed_bicg8_bicg_byteenable = bicg_function_out_unnamed_bicg8_bicg_avm_byteenable;

    // avm_unnamed_bicg8_bicg_enable(GPOUT,223)
    assign avm_unnamed_bicg8_bicg_enable = bicg_function_out_unnamed_bicg8_bicg_avm_enable;

    // avm_unnamed_bicg8_bicg_read(GPOUT,224)
    assign avm_unnamed_bicg8_bicg_read = bicg_function_out_unnamed_bicg8_bicg_avm_read;

    // avm_unnamed_bicg8_bicg_write(GPOUT,225)
    assign avm_unnamed_bicg8_bicg_write = bicg_function_out_unnamed_bicg8_bicg_avm_write;

    // avm_unnamed_bicg8_bicg_writedata(GPOUT,226)
    assign avm_unnamed_bicg8_bicg_writedata = bicg_function_out_unnamed_bicg8_bicg_avm_writedata;

    // avm_unnamed_bicg9_bicg_address(GPOUT,227)
    assign avm_unnamed_bicg9_bicg_address = bicg_function_out_unnamed_bicg9_bicg_avm_address;

    // avm_unnamed_bicg9_bicg_burstcount(GPOUT,228)
    assign avm_unnamed_bicg9_bicg_burstcount = bicg_function_out_unnamed_bicg9_bicg_avm_burstcount;

    // avm_unnamed_bicg9_bicg_byteenable(GPOUT,229)
    assign avm_unnamed_bicg9_bicg_byteenable = bicg_function_out_unnamed_bicg9_bicg_avm_byteenable;

    // avm_unnamed_bicg9_bicg_enable(GPOUT,230)
    assign avm_unnamed_bicg9_bicg_enable = bicg_function_out_unnamed_bicg9_bicg_avm_enable;

    // avm_unnamed_bicg9_bicg_read(GPOUT,231)
    assign avm_unnamed_bicg9_bicg_read = bicg_function_out_unnamed_bicg9_bicg_avm_read;

    // avm_unnamed_bicg9_bicg_write(GPOUT,232)
    assign avm_unnamed_bicg9_bicg_write = bicg_function_out_unnamed_bicg9_bicg_avm_write;

    // avm_unnamed_bicg9_bicg_writedata(GPOUT,233)
    assign avm_unnamed_bicg9_bicg_writedata = bicg_function_out_unnamed_bicg9_bicg_avm_writedata;

    // avst_iord_bl_call_bicg_almost_full(GPOUT,234)
    assign avst_iord_bl_call_bicg_almost_full = bicg_function_out_iord_bl_call_bicg_o_fifoalmost_full;

    // avst_iord_bl_call_bicg_ready(GPOUT,235)
    assign avst_iord_bl_call_bicg_ready = bicg_function_out_iord_bl_call_bicg_o_fifoready;

    // avst_iowr_bl_return_bicg_data(GPOUT,236)
    assign avst_iowr_bl_return_bicg_data = bicg_function_out_iowr_bl_return_bicg_o_fifodata;

    // avst_iowr_bl_return_bicg_valid(GPOUT,237)
    assign avst_iowr_bl_return_bicg_valid = bicg_function_out_iowr_bl_return_bicg_o_fifovalid;

    // not_ready(LOGICAL,99)
    assign not_ready_q = ~ (bicg_function_out_iord_bl_call_bicg_o_fifoready);

    // busy_and(LOGICAL,4)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,244)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,241)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,5)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,238)
    assign busy = busy_or_q;

    // done(GPOUT,239)
    assign done = bicg_function_out_iowr_bl_return_bicg_o_fifovalid;

endmodule
