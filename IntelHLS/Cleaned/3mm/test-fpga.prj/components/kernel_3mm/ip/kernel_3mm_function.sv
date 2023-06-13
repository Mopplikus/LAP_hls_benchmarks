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

// SystemVerilog created from kernel_3mm_function
// Created for function/kernel kernel_3mm
// SystemVerilog created on Tue Jun 13 01:45:42 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_function (
    input wire [63:0] in_arg_A,
    input wire [63:0] in_arg_B,
    input wire [63:0] in_arg_C,
    input wire [63:0] in_arg_D,
    input wire [63:0] in_arg_E,
    input wire [63:0] in_arg_F,
    input wire [63:0] in_arg_G,
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_return,
    input wire [447:0] in_iord_bl_call_kernel_3mm_i_fifodata,
    input wire [0:0] in_iord_bl_call_kernel_3mm_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_kernel_3mm_i_fifoready,
    input wire [31:0] in_memdep_3_kernel_3mm_avm_readdata,
    input wire [0:0] in_memdep_3_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_memdep_3_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_memdep_3_kernel_3mm_avm_writeack,
    input wire [31:0] in_memdep_7_kernel_3mm_avm_readdata,
    input wire [0:0] in_memdep_7_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_memdep_7_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_memdep_7_kernel_3mm_avm_writeack,
    input wire [31:0] in_memdep_kernel_3mm_avm_readdata,
    input wire [0:0] in_memdep_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_memdep_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_memdep_kernel_3mm_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [31:0] in_unnamed_kernel_3mm10_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm10_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm10_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm10_kernel_3mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_3mm16_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm16_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm16_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm16_kernel_3mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_3mm17_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm17_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm17_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm17_kernel_3mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_3mm20_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm20_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm20_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm20_kernel_3mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_3mm26_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm26_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm26_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm26_kernel_3mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_3mm27_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm27_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm27_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm27_kernel_3mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_3mm29_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm29_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm29_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm29_kernel_3mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_3mm34_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm34_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm34_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm34_kernel_3mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_3mm35_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm35_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm35_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm35_kernel_3mm_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_kernel_3mm_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_kernel_3mm_o_fifoready,
    output wire [0:0] out_iowr_bl_return_kernel_3mm_o_fifodata,
    output wire [0:0] out_iowr_bl_return_kernel_3mm_o_fifovalid,
    output wire [31:0] out_memdep_3_kernel_3mm_avm_address,
    output wire [0:0] out_memdep_3_kernel_3mm_avm_burstcount,
    output wire [3:0] out_memdep_3_kernel_3mm_avm_byteenable,
    output wire [0:0] out_memdep_3_kernel_3mm_avm_enable,
    output wire [0:0] out_memdep_3_kernel_3mm_avm_read,
    output wire [0:0] out_memdep_3_kernel_3mm_avm_write,
    output wire [31:0] out_memdep_3_kernel_3mm_avm_writedata,
    output wire [31:0] out_memdep_7_kernel_3mm_avm_address,
    output wire [0:0] out_memdep_7_kernel_3mm_avm_burstcount,
    output wire [3:0] out_memdep_7_kernel_3mm_avm_byteenable,
    output wire [0:0] out_memdep_7_kernel_3mm_avm_enable,
    output wire [0:0] out_memdep_7_kernel_3mm_avm_read,
    output wire [0:0] out_memdep_7_kernel_3mm_avm_write,
    output wire [31:0] out_memdep_7_kernel_3mm_avm_writedata,
    output wire [31:0] out_memdep_kernel_3mm_avm_address,
    output wire [0:0] out_memdep_kernel_3mm_avm_burstcount,
    output wire [3:0] out_memdep_kernel_3mm_avm_byteenable,
    output wire [0:0] out_memdep_kernel_3mm_avm_enable,
    output wire [0:0] out_memdep_kernel_3mm_avm_read,
    output wire [0:0] out_memdep_kernel_3mm_avm_write,
    output wire [31:0] out_memdep_kernel_3mm_avm_writedata,
    output wire [0:0] out_o_active_memdep,
    output wire [0:0] out_o_active_memdep_3,
    output wire [0:0] out_o_active_memdep_7,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_3mm16_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm16_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm16_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm16_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm16_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm16_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm16_kernel_3mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_3mm17_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm17_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm17_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm17_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm17_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm17_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm17_kernel_3mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_3mm20_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm20_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm20_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm20_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm20_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm20_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm20_kernel_3mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_3mm26_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm26_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm26_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm26_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm26_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm26_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm26_kernel_3mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_3mm27_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm27_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm27_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm27_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm27_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm27_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm27_kernel_3mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_3mm29_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm29_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm29_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm29_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm29_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm29_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm29_kernel_3mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_3mm34_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm34_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm34_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm34_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm34_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm34_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm34_kernel_3mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_3mm35_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm35_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm35_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm35_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm35_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm35_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm35_kernel_3mm_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [63:0] bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [31:0] bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [0:0] bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [0:0] bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_14_tpl;
    wire [0:0] bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B11_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_3mm_B11_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_kernel_3mm_B11_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_kernel_3mm_B11_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_kernel_3mm_B11_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_kernel_3mm_B11_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_kernel_3mm_B11_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B11_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B12_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_3mm_B12_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_kernel_3mm_B12_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_kernel_3mm_B12_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B12_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B13_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B13_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B14_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_3mm_B14_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B14_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B15_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_kernel_3mm_B15_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_kernel_3mm_B15_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_kernel_3mm_B15_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_kernel_3mm_B15_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_kernel_3mm_B15_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B15_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [63:0] bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [31:0] bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [0:0] bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [0:0] bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_14_tpl;
    wire [0:0] bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B17_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_3mm_B17_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_kernel_3mm_B17_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_kernel_3mm_B17_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_kernel_3mm_B17_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_kernel_3mm_B17_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_kernel_3mm_B17_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B17_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B18_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_3mm_B18_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_kernel_3mm_B18_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_kernel_3mm_B18_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B18_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B19_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B19_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B2_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_3mm_B2_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B2_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [63:0] bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [31:0] bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [0:0] bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [0:0] bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_14_tpl;
    wire [0:0] bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B6_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_3mm_B6_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_kernel_3mm_B6_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_kernel_3mm_B6_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B6_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B7_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B7_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B8_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_3mm_B8_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B8_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B9_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_kernel_3mm_B9_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_kernel_3mm_B9_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_kernel_3mm_B9_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_kernel_3mm_B9_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_kernel_3mm_B9_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B9_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B10_out_c0_exe10422;
    wire [0:0] bb_kernel_3mm_B10_out_c0_exe11423;
    wire [0:0] bb_kernel_3mm_B10_out_c0_exe7419;
    wire [0:0] bb_kernel_3mm_B10_out_c0_exe8420;
    wire [63:0] bb_kernel_3mm_B10_out_c0_exe9421;
    wire [31:0] bb_kernel_3mm_B10_out_c1_exe1443;
    wire [0:0] bb_kernel_3mm_B10_out_exiting_stall_out;
    wire [0:0] bb_kernel_3mm_B10_out_exiting_valid_out;
    wire [0:0] bb_kernel_3mm_B10_out_pipeline_valid_out;
    wire [0:0] bb_kernel_3mm_B10_out_stall_in_0;
    wire [0:0] bb_kernel_3mm_B10_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B10_out_stall_out_1;
    wire [31:0] bb_kernel_3mm_B10_out_unnamed_kernel_3mm26_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B10_out_unnamed_kernel_3mm26_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B10_out_unnamed_kernel_3mm26_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B10_out_unnamed_kernel_3mm26_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B10_out_unnamed_kernel_3mm26_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B10_out_unnamed_kernel_3mm26_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B10_out_unnamed_kernel_3mm26_kernel_3mm_avm_writedata;
    wire [31:0] bb_kernel_3mm_B10_out_unnamed_kernel_3mm27_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B10_out_unnamed_kernel_3mm27_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B10_out_unnamed_kernel_3mm27_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B10_out_unnamed_kernel_3mm27_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B10_out_unnamed_kernel_3mm27_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B10_out_unnamed_kernel_3mm27_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B10_out_unnamed_kernel_3mm27_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B10_out_valid_in_0;
    wire [0:0] bb_kernel_3mm_B10_out_valid_in_1;
    wire [0:0] bb_kernel_3mm_B10_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B11_out_c0_exe741911;
    wire [0:0] bb_kernel_3mm_B11_out_c0_exe842013;
    wire [0:0] bb_kernel_3mm_B11_out_feedback_out_40;
    wire [0:0] bb_kernel_3mm_B11_out_feedback_valid_out_40;
    wire [0:0] bb_kernel_3mm_B11_out_lsu_memdep_3_o_active;
    wire [0:0] bb_kernel_3mm_B11_out_memdep_3;
    wire [31:0] bb_kernel_3mm_B11_out_memdep_3_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B11_out_memdep_3_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B11_out_memdep_3_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B11_out_memdep_3_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B11_out_memdep_3_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B11_out_memdep_3_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B11_out_memdep_3_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B11_out_stall_in_0;
    wire [0:0] bb_kernel_3mm_B11_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B11_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B12_out_feedback_out_27;
    wire [0:0] bb_kernel_3mm_B12_out_feedback_valid_out_27;
    wire [0:0] bb_kernel_3mm_B12_out_stall_in_0;
    wire [0:0] bb_kernel_3mm_B12_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B12_out_valid_out_0;
    wire [63:0] bb_kernel_3mm_B13_out_intel_reserved_ffwd_11_0;
    wire [0:0] bb_kernel_3mm_B13_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B13_out_valid_out_0;
    wire [31:0] bb_kernel_3mm_B14_out_c0_exe1452;
    wire [0:0] bb_kernel_3mm_B14_out_c0_exe2453;
    wire [0:0] bb_kernel_3mm_B14_out_c0_exe3454;
    wire [0:0] bb_kernel_3mm_B14_out_exiting_stall_out;
    wire [0:0] bb_kernel_3mm_B14_out_exiting_valid_out;
    wire [0:0] bb_kernel_3mm_B14_out_feedback_stall_out_30;
    wire [0:0] bb_kernel_3mm_B14_out_memdep_phi9_pop30;
    wire [0:0] bb_kernel_3mm_B14_out_pipeline_valid_out;
    wire [0:0] bb_kernel_3mm_B14_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B14_out_stall_out_1;
    wire [0:0] bb_kernel_3mm_B14_out_valid_in_0;
    wire [0:0] bb_kernel_3mm_B14_out_valid_in_1;
    wire [0:0] bb_kernel_3mm_B14_out_valid_out_0;
    wire [31:0] bb_kernel_3mm_B15_out_c0_exe10490;
    wire [0:0] bb_kernel_3mm_B15_out_c0_exe11491;
    wire [0:0] bb_kernel_3mm_B15_out_c0_exe12492;
    wire [0:0] bb_kernel_3mm_B15_out_c0_exe13493;
    wire [31:0] bb_kernel_3mm_B15_out_c0_exe1481;
    wire [31:0] bb_kernel_3mm_B15_out_c0_exe2482;
    wire [63:0] bb_kernel_3mm_B15_out_c0_exe3483;
    wire [0:0] bb_kernel_3mm_B15_out_c0_exe4484;
    wire [0:0] bb_kernel_3mm_B15_out_c0_exe5485;
    wire [0:0] bb_kernel_3mm_B15_out_c0_exe6486;
    wire [0:0] bb_kernel_3mm_B15_out_c0_exe7487;
    wire [0:0] bb_kernel_3mm_B15_out_c0_exe8488;
    wire [0:0] bb_kernel_3mm_B15_out_exiting_stall_out;
    wire [0:0] bb_kernel_3mm_B15_out_exiting_valid_out;
    wire [0:0] bb_kernel_3mm_B15_out_feedback_stall_out_47;
    wire [0:0] bb_kernel_3mm_B15_out_memdep_phi8_pop47;
    wire [0:0] bb_kernel_3mm_B15_out_pipeline_valid_out;
    wire [0:0] bb_kernel_3mm_B15_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B15_out_stall_out_1;
    wire [31:0] bb_kernel_3mm_B15_out_unnamed_kernel_3mm29;
    wire [31:0] bb_kernel_3mm_B15_out_unnamed_kernel_3mm29_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B15_out_unnamed_kernel_3mm29_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B15_out_unnamed_kernel_3mm29_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B15_out_unnamed_kernel_3mm29_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B15_out_unnamed_kernel_3mm29_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B15_out_unnamed_kernel_3mm29_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B15_out_unnamed_kernel_3mm29_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B15_out_valid_in_0;
    wire [0:0] bb_kernel_3mm_B15_out_valid_in_1;
    wire [0:0] bb_kernel_3mm_B15_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B16_out_c0_exe10552;
    wire [0:0] bb_kernel_3mm_B16_out_c0_exe11553;
    wire [0:0] bb_kernel_3mm_B16_out_c0_exe7549;
    wire [0:0] bb_kernel_3mm_B16_out_c0_exe8550;
    wire [63:0] bb_kernel_3mm_B16_out_c0_exe9551;
    wire [31:0] bb_kernel_3mm_B16_out_c1_exe1573;
    wire [0:0] bb_kernel_3mm_B16_out_exiting_stall_out;
    wire [0:0] bb_kernel_3mm_B16_out_exiting_valid_out;
    wire [0:0] bb_kernel_3mm_B16_out_pipeline_valid_out;
    wire [0:0] bb_kernel_3mm_B16_out_stall_in_0;
    wire [0:0] bb_kernel_3mm_B16_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B16_out_stall_out_1;
    wire [31:0] bb_kernel_3mm_B16_out_unnamed_kernel_3mm34_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B16_out_unnamed_kernel_3mm34_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B16_out_unnamed_kernel_3mm34_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B16_out_unnamed_kernel_3mm34_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B16_out_unnamed_kernel_3mm34_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B16_out_unnamed_kernel_3mm34_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B16_out_unnamed_kernel_3mm34_kernel_3mm_avm_writedata;
    wire [31:0] bb_kernel_3mm_B16_out_unnamed_kernel_3mm35_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B16_out_unnamed_kernel_3mm35_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B16_out_unnamed_kernel_3mm35_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B16_out_unnamed_kernel_3mm35_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B16_out_unnamed_kernel_3mm35_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B16_out_unnamed_kernel_3mm35_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B16_out_unnamed_kernel_3mm35_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B16_out_valid_in_0;
    wire [0:0] bb_kernel_3mm_B16_out_valid_in_1;
    wire [0:0] bb_kernel_3mm_B16_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B17_out_c0_exe754920;
    wire [0:0] bb_kernel_3mm_B17_out_c0_exe855022;
    wire [0:0] bb_kernel_3mm_B17_out_feedback_out_47;
    wire [0:0] bb_kernel_3mm_B17_out_feedback_valid_out_47;
    wire [0:0] bb_kernel_3mm_B17_out_lsu_memdep_7_o_active;
    wire [0:0] bb_kernel_3mm_B17_out_memdep_7;
    wire [31:0] bb_kernel_3mm_B17_out_memdep_7_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B17_out_memdep_7_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B17_out_memdep_7_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B17_out_memdep_7_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B17_out_memdep_7_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B17_out_memdep_7_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B17_out_memdep_7_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B17_out_stall_in_0;
    wire [0:0] bb_kernel_3mm_B17_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B17_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B18_out_feedback_out_30;
    wire [0:0] bb_kernel_3mm_B18_out_feedback_valid_out_30;
    wire [0:0] bb_kernel_3mm_B18_out_stall_in_0;
    wire [0:0] bb_kernel_3mm_B18_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B18_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B19_out_feedback_out_1;
    wire [0:0] bb_kernel_3mm_B19_out_feedback_valid_out_1;
    wire [0:0] bb_kernel_3mm_B19_out_iowr_bl_return_kernel_3mm_o_fifodata;
    wire [0:0] bb_kernel_3mm_B19_out_iowr_bl_return_kernel_3mm_o_fifovalid;
    wire [0:0] bb_kernel_3mm_B19_out_stall_in_0;
    wire [0:0] bb_kernel_3mm_B19_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B19_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B1_start_out_feedback_stall_out_1;
    wire [63:0] bb_kernel_3mm_B1_start_out_intel_reserved_ffwd_0_0;
    wire [63:0] bb_kernel_3mm_B1_start_out_intel_reserved_ffwd_1_0;
    wire [63:0] bb_kernel_3mm_B1_start_out_intel_reserved_ffwd_2_0;
    wire [63:0] bb_kernel_3mm_B1_start_out_intel_reserved_ffwd_3_0;
    wire [63:0] bb_kernel_3mm_B1_start_out_intel_reserved_ffwd_4_0;
    wire [63:0] bb_kernel_3mm_B1_start_out_intel_reserved_ffwd_5_0;
    wire [63:0] bb_kernel_3mm_B1_start_out_intel_reserved_ffwd_6_0;
    wire [0:0] bb_kernel_3mm_B1_start_out_iord_bl_call_kernel_3mm_o_fifoalmost_full;
    wire [0:0] bb_kernel_3mm_B1_start_out_iord_bl_call_kernel_3mm_o_fifoready;
    wire [0:0] bb_kernel_3mm_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_kernel_3mm_B1_start_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B1_start_out_valid_in_0;
    wire [0:0] bb_kernel_3mm_B1_start_out_valid_in_1;
    wire [0:0] bb_kernel_3mm_B1_start_out_valid_out_0;
    wire [31:0] bb_kernel_3mm_B2_out_c0_exe1263;
    wire [0:0] bb_kernel_3mm_B2_out_c0_exe2;
    wire [0:0] bb_kernel_3mm_B2_out_c0_exe3;
    wire [0:0] bb_kernel_3mm_B2_out_exiting_stall_out;
    wire [0:0] bb_kernel_3mm_B2_out_exiting_valid_out;
    wire [0:0] bb_kernel_3mm_B2_out_feedback_stall_out_24;
    wire [0:0] bb_kernel_3mm_B2_out_memdep_phi1_pop24;
    wire [0:0] bb_kernel_3mm_B2_out_pipeline_valid_out;
    wire [0:0] bb_kernel_3mm_B2_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B2_out_stall_out_1;
    wire [0:0] bb_kernel_3mm_B2_out_valid_in_0;
    wire [0:0] bb_kernel_3mm_B2_out_valid_in_1;
    wire [0:0] bb_kernel_3mm_B2_out_valid_out_0;
    wire [31:0] bb_kernel_3mm_B3_out_c0_exe10;
    wire [0:0] bb_kernel_3mm_B3_out_c0_exe11;
    wire [0:0] bb_kernel_3mm_B3_out_c0_exe12;
    wire [31:0] bb_kernel_3mm_B3_out_c0_exe1272;
    wire [0:0] bb_kernel_3mm_B3_out_c0_exe13;
    wire [31:0] bb_kernel_3mm_B3_out_c0_exe2273;
    wire [63:0] bb_kernel_3mm_B3_out_c0_exe3274;
    wire [0:0] bb_kernel_3mm_B3_out_c0_exe4275;
    wire [0:0] bb_kernel_3mm_B3_out_c0_exe5;
    wire [0:0] bb_kernel_3mm_B3_out_c0_exe6;
    wire [0:0] bb_kernel_3mm_B3_out_c0_exe7;
    wire [0:0] bb_kernel_3mm_B3_out_c0_exe8;
    wire [0:0] bb_kernel_3mm_B3_out_exiting_stall_out;
    wire [0:0] bb_kernel_3mm_B3_out_exiting_valid_out;
    wire [0:0] bb_kernel_3mm_B3_out_feedback_stall_out_33;
    wire [63:0] bb_kernel_3mm_B3_out_intel_reserved_ffwd_7_0;
    wire [0:0] bb_kernel_3mm_B3_out_memdep_phi_pop33;
    wire [0:0] bb_kernel_3mm_B3_out_pipeline_valid_out;
    wire [0:0] bb_kernel_3mm_B3_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B3_out_stall_out_1;
    wire [31:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm10;
    wire [31:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm10_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm10_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm10_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm10_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B3_out_valid_in_0;
    wire [0:0] bb_kernel_3mm_B3_out_valid_in_1;
    wire [0:0] bb_kernel_3mm_B3_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B4_out_c0_exe10310;
    wire [0:0] bb_kernel_3mm_B4_out_c0_exe11311;
    wire [0:0] bb_kernel_3mm_B4_out_c0_exe7307;
    wire [0:0] bb_kernel_3mm_B4_out_c0_exe8308;
    wire [63:0] bb_kernel_3mm_B4_out_c0_exe9309;
    wire [31:0] bb_kernel_3mm_B4_out_c1_exe1;
    wire [0:0] bb_kernel_3mm_B4_out_exiting_stall_out;
    wire [0:0] bb_kernel_3mm_B4_out_exiting_valid_out;
    wire [0:0] bb_kernel_3mm_B4_out_pipeline_valid_out;
    wire [0:0] bb_kernel_3mm_B4_out_stall_in_0;
    wire [0:0] bb_kernel_3mm_B4_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B4_out_stall_out_1;
    wire [31:0] bb_kernel_3mm_B4_out_unnamed_kernel_3mm16_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B4_out_unnamed_kernel_3mm16_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B4_out_unnamed_kernel_3mm16_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B4_out_unnamed_kernel_3mm16_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B4_out_unnamed_kernel_3mm16_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B4_out_unnamed_kernel_3mm16_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B4_out_unnamed_kernel_3mm16_kernel_3mm_avm_writedata;
    wire [31:0] bb_kernel_3mm_B4_out_unnamed_kernel_3mm17_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B4_out_unnamed_kernel_3mm17_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B4_out_unnamed_kernel_3mm17_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B4_out_unnamed_kernel_3mm17_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B4_out_unnamed_kernel_3mm17_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B4_out_unnamed_kernel_3mm17_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B4_out_unnamed_kernel_3mm17_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B4_out_valid_in_0;
    wire [0:0] bb_kernel_3mm_B4_out_valid_in_1;
    wire [0:0] bb_kernel_3mm_B4_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B5_out_c0_exe73072;
    wire [0:0] bb_kernel_3mm_B5_out_c0_exe83084;
    wire [0:0] bb_kernel_3mm_B5_out_feedback_out_33;
    wire [0:0] bb_kernel_3mm_B5_out_feedback_valid_out_33;
    wire [0:0] bb_kernel_3mm_B5_out_lsu_memdep_o_active;
    wire [0:0] bb_kernel_3mm_B5_out_memdep;
    wire [31:0] bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B5_out_stall_in_0;
    wire [0:0] bb_kernel_3mm_B5_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B5_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B6_out_feedback_out_24;
    wire [0:0] bb_kernel_3mm_B6_out_feedback_valid_out_24;
    wire [0:0] bb_kernel_3mm_B6_out_stall_in_0;
    wire [0:0] bb_kernel_3mm_B6_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B6_out_valid_out_0;
    wire [63:0] bb_kernel_3mm_B7_out_intel_reserved_ffwd_8_0;
    wire [63:0] bb_kernel_3mm_B7_out_intel_reserved_ffwd_9_0;
    wire [0:0] bb_kernel_3mm_B7_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B7_out_valid_out_0;
    wire [31:0] bb_kernel_3mm_B8_out_c0_exe1322;
    wire [0:0] bb_kernel_3mm_B8_out_c0_exe2323;
    wire [0:0] bb_kernel_3mm_B8_out_c0_exe3324;
    wire [0:0] bb_kernel_3mm_B8_out_exiting_stall_out;
    wire [0:0] bb_kernel_3mm_B8_out_exiting_valid_out;
    wire [0:0] bb_kernel_3mm_B8_out_feedback_stall_out_27;
    wire [0:0] bb_kernel_3mm_B8_out_memdep_phi5_pop27;
    wire [0:0] bb_kernel_3mm_B8_out_pipeline_valid_out;
    wire [0:0] bb_kernel_3mm_B8_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B8_out_stall_out_1;
    wire [0:0] bb_kernel_3mm_B8_out_valid_in_0;
    wire [0:0] bb_kernel_3mm_B8_out_valid_in_1;
    wire [0:0] bb_kernel_3mm_B8_out_valid_out_0;
    wire [31:0] bb_kernel_3mm_B9_out_c0_exe10360;
    wire [0:0] bb_kernel_3mm_B9_out_c0_exe11361;
    wire [0:0] bb_kernel_3mm_B9_out_c0_exe12362;
    wire [0:0] bb_kernel_3mm_B9_out_c0_exe13363;
    wire [31:0] bb_kernel_3mm_B9_out_c0_exe1351;
    wire [31:0] bb_kernel_3mm_B9_out_c0_exe2352;
    wire [63:0] bb_kernel_3mm_B9_out_c0_exe3353;
    wire [0:0] bb_kernel_3mm_B9_out_c0_exe4354;
    wire [0:0] bb_kernel_3mm_B9_out_c0_exe5355;
    wire [0:0] bb_kernel_3mm_B9_out_c0_exe6356;
    wire [0:0] bb_kernel_3mm_B9_out_c0_exe7357;
    wire [0:0] bb_kernel_3mm_B9_out_c0_exe8358;
    wire [0:0] bb_kernel_3mm_B9_out_exiting_stall_out;
    wire [0:0] bb_kernel_3mm_B9_out_exiting_valid_out;
    wire [0:0] bb_kernel_3mm_B9_out_feedback_stall_out_40;
    wire [63:0] bb_kernel_3mm_B9_out_intel_reserved_ffwd_10_0;
    wire [0:0] bb_kernel_3mm_B9_out_memdep_phi4_pop40;
    wire [0:0] bb_kernel_3mm_B9_out_pipeline_valid_out;
    wire [0:0] bb_kernel_3mm_B9_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B9_out_stall_out_1;
    wire [31:0] bb_kernel_3mm_B9_out_unnamed_kernel_3mm20;
    wire [31:0] bb_kernel_3mm_B9_out_unnamed_kernel_3mm20_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B9_out_unnamed_kernel_3mm20_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B9_out_unnamed_kernel_3mm20_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B9_out_unnamed_kernel_3mm20_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B9_out_unnamed_kernel_3mm20_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B9_out_unnamed_kernel_3mm20_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B9_out_unnamed_kernel_3mm20_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B9_out_valid_in_0;
    wire [0:0] bb_kernel_3mm_B9_out_valid_in_1;
    wire [0:0] bb_kernel_3mm_B9_out_valid_out_0;
    wire [1:0] c_i2_0182_q;
    wire [63:0] c_i32_addrspace_1025_undef155_q;
    wire [31:0] c_i32_undef100_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going113_kernel_3mm2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going113_kernel_3mm2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going113_kernel_3mm2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going113_kernel_3mm2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going118_kernel_3mm2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going118_kernel_3mm2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going118_kernel_3mm2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going118_kernel_3mm2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going122_kernel_3mm1_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going122_kernel_3mm1_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going122_kernel_3mm1_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going122_kernel_3mm1_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going66_kernel_3mm2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going66_kernel_3mm2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going66_kernel_3mm2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going66_kernel_3mm2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going87_kernel_3mm2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going87_kernel_3mm2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going87_kernel_3mm2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going87_kernel_3mm2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going92_kernel_3mm2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going92_kernel_3mm2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going92_kernel_3mm2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going92_kernel_3mm2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going99_kernel_3mm6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going99_kernel_3mm6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going99_kernel_3mm6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going99_kernel_3mm6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kernel_3mm6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kernel_3mm6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kernel_3mm6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kernel_3mm6_valid_fifo_out_valid_out;
    wire [0:0] kernel_3mm_B1_start_x_i_capture;
    wire kernel_3mm_B1_start_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_3mm_B1_start_x_i_clear;
    wire kernel_3mm_B1_start_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_3mm_B1_start_x_i_enable;
    wire kernel_3mm_B1_start_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_3mm_B1_start_x_i_shift;
    wire kernel_3mm_B1_start_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_3mm_B1_start_x_i_stall_pred;
    wire kernel_3mm_B1_start_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B1_start_x_i_stall_succ;
    wire kernel_3mm_B1_start_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B1_start_x_i_valid_loop;
    wire kernel_3mm_B1_start_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_3mm_B1_start_x_i_valid_pred;
    wire kernel_3mm_B1_start_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B1_start_x_i_valid_succ;
    wire kernel_3mm_B1_start_x_i_valid_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B10_x_i_capture;
    wire kernel_3mm_B10_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_3mm_B10_x_i_clear;
    wire kernel_3mm_B10_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_3mm_B10_x_i_enable;
    wire kernel_3mm_B10_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_3mm_B10_x_i_shift;
    wire kernel_3mm_B10_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_3mm_B10_x_i_stall_pred;
    wire kernel_3mm_B10_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B10_x_i_stall_succ;
    wire kernel_3mm_B10_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B10_x_i_valid_loop;
    wire kernel_3mm_B10_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_3mm_B10_x_i_valid_pred;
    wire kernel_3mm_B10_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B10_x_i_valid_succ;
    wire kernel_3mm_B10_x_i_valid_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B14_x_i_capture;
    wire kernel_3mm_B14_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_3mm_B14_x_i_clear;
    wire kernel_3mm_B14_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_3mm_B14_x_i_enable;
    wire kernel_3mm_B14_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_3mm_B14_x_i_shift;
    wire kernel_3mm_B14_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_3mm_B14_x_i_stall_pred;
    wire kernel_3mm_B14_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B14_x_i_stall_succ;
    wire kernel_3mm_B14_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B14_x_i_valid_loop;
    wire kernel_3mm_B14_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_3mm_B14_x_i_valid_pred;
    wire kernel_3mm_B14_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B14_x_i_valid_succ;
    wire kernel_3mm_B14_x_i_valid_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B15_x_i_capture;
    wire kernel_3mm_B15_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_3mm_B15_x_i_clear;
    wire kernel_3mm_B15_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_3mm_B15_x_i_enable;
    wire kernel_3mm_B15_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_3mm_B15_x_i_shift;
    wire kernel_3mm_B15_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_3mm_B15_x_i_stall_pred;
    wire kernel_3mm_B15_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B15_x_i_stall_succ;
    wire kernel_3mm_B15_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B15_x_i_valid_loop;
    wire kernel_3mm_B15_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_3mm_B15_x_i_valid_pred;
    wire kernel_3mm_B15_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B15_x_i_valid_succ;
    wire kernel_3mm_B15_x_i_valid_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B16_x_i_capture;
    wire kernel_3mm_B16_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_3mm_B16_x_i_clear;
    wire kernel_3mm_B16_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_3mm_B16_x_i_enable;
    wire kernel_3mm_B16_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_3mm_B16_x_i_shift;
    wire kernel_3mm_B16_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_3mm_B16_x_i_stall_pred;
    wire kernel_3mm_B16_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B16_x_i_stall_succ;
    wire kernel_3mm_B16_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B16_x_i_valid_loop;
    wire kernel_3mm_B16_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_3mm_B16_x_i_valid_pred;
    wire kernel_3mm_B16_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B16_x_i_valid_succ;
    wire kernel_3mm_B16_x_i_valid_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B2_x_i_capture;
    wire kernel_3mm_B2_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_3mm_B2_x_i_clear;
    wire kernel_3mm_B2_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_3mm_B2_x_i_enable;
    wire kernel_3mm_B2_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_3mm_B2_x_i_shift;
    wire kernel_3mm_B2_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_3mm_B2_x_i_stall_pred;
    wire kernel_3mm_B2_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B2_x_i_stall_succ;
    wire kernel_3mm_B2_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B2_x_i_valid_loop;
    wire kernel_3mm_B2_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_3mm_B2_x_i_valid_pred;
    wire kernel_3mm_B2_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B2_x_i_valid_succ;
    wire kernel_3mm_B2_x_i_valid_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B3_x_i_capture;
    wire kernel_3mm_B3_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_3mm_B3_x_i_clear;
    wire kernel_3mm_B3_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_3mm_B3_x_i_enable;
    wire kernel_3mm_B3_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_3mm_B3_x_i_shift;
    wire kernel_3mm_B3_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_3mm_B3_x_i_stall_pred;
    wire kernel_3mm_B3_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B3_x_i_stall_succ;
    wire kernel_3mm_B3_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B3_x_i_valid_loop;
    wire kernel_3mm_B3_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_3mm_B3_x_i_valid_pred;
    wire kernel_3mm_B3_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B3_x_i_valid_succ;
    wire kernel_3mm_B3_x_i_valid_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B4_x_i_capture;
    wire kernel_3mm_B4_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_3mm_B4_x_i_clear;
    wire kernel_3mm_B4_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_3mm_B4_x_i_enable;
    wire kernel_3mm_B4_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_3mm_B4_x_i_shift;
    wire kernel_3mm_B4_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_3mm_B4_x_i_stall_pred;
    wire kernel_3mm_B4_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B4_x_i_stall_succ;
    wire kernel_3mm_B4_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B4_x_i_valid_loop;
    wire kernel_3mm_B4_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_3mm_B4_x_i_valid_pred;
    wire kernel_3mm_B4_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B4_x_i_valid_succ;
    wire kernel_3mm_B4_x_i_valid_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B8_x_i_capture;
    wire kernel_3mm_B8_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_3mm_B8_x_i_clear;
    wire kernel_3mm_B8_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_3mm_B8_x_i_enable;
    wire kernel_3mm_B8_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_3mm_B8_x_i_shift;
    wire kernel_3mm_B8_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_3mm_B8_x_i_stall_pred;
    wire kernel_3mm_B8_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B8_x_i_stall_succ;
    wire kernel_3mm_B8_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B8_x_i_valid_loop;
    wire kernel_3mm_B8_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_3mm_B8_x_i_valid_pred;
    wire kernel_3mm_B8_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B8_x_i_valid_succ;
    wire kernel_3mm_B8_x_i_valid_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B9_x_i_capture;
    wire kernel_3mm_B9_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_3mm_B9_x_i_clear;
    wire kernel_3mm_B9_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_3mm_B9_x_i_enable;
    wire kernel_3mm_B9_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_3mm_B9_x_i_shift;
    wire kernel_3mm_B9_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_3mm_B9_x_i_stall_pred;
    wire kernel_3mm_B9_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B9_x_i_stall_succ;
    wire kernel_3mm_B9_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B9_x_i_valid_loop;
    wire kernel_3mm_B9_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_3mm_B9_x_i_valid_pred;
    wire kernel_3mm_B9_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B9_x_i_valid_succ;
    wire kernel_3mm_B9_x_i_valid_succ_bitsignaltemp;
    wire [0:0] loop_limiter_kernel_3mm0_out_o_stall;
    wire [0:0] loop_limiter_kernel_3mm0_out_o_valid;
    wire [0:0] loop_limiter_kernel_3mm1_out_o_stall;
    wire [0:0] loop_limiter_kernel_3mm1_out_o_valid;
    wire [0:0] loop_limiter_kernel_3mm2_out_o_stall;
    wire [0:0] loop_limiter_kernel_3mm2_out_o_valid;
    wire [0:0] loop_limiter_kernel_3mm3_out_o_stall;
    wire [0:0] loop_limiter_kernel_3mm3_out_o_valid;
    wire [0:0] loop_limiter_kernel_3mm4_out_o_stall;
    wire [0:0] loop_limiter_kernel_3mm4_out_o_valid;
    wire [0:0] loop_limiter_kernel_3mm5_out_o_stall;
    wire [0:0] loop_limiter_kernel_3mm5_out_o_valid;
    wire [0:0] loop_limiter_kernel_3mm6_out_o_stall;
    wire [0:0] loop_limiter_kernel_3mm6_out_o_valid;
    wire [0:0] loop_limiter_kernel_3mm7_out_o_stall;
    wire [0:0] loop_limiter_kernel_3mm7_out_o_valid;
    wire [0:0] loop_limiter_kernel_3mm8_out_o_stall;
    wire [0:0] loop_limiter_kernel_3mm8_out_o_valid;


    // c_i2_0182(CONSTANT,138)
    assign c_i2_0182_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going122_kernel_3mm1_valid_fifo(BLACKBOX,172)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going122_1_valid_fifo thei_llvm_fpga_pipeline_keep_going122_kernel_3mm1_valid_fifo (
        .in_data_in(c_i2_0182_q),
        .in_stall_in(bb_kernel_3mm_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going122_kernel_3mm1_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going122_kernel_3mm1_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going122_kernel_3mm1_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going118_kernel_3mm2_valid_fifo(BLACKBOX,170)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going118_2_valid_fifo thei_llvm_fpga_pipeline_keep_going118_kernel_3mm2_valid_fifo (
        .in_data_in(c_i2_0182_q),
        .in_stall_in(bb_kernel_3mm_B2_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going118_kernel_3mm2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going118_kernel_3mm2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going118_kernel_3mm2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going113_kernel_3mm2_valid_fifo(BLACKBOX,168)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going113_2_valid_fifo thei_llvm_fpga_pipeline_keep_going113_kernel_3mm2_valid_fifo (
        .in_data_in(c_i2_0182_q),
        .in_stall_in(bb_kernel_3mm_B3_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going113_kernel_3mm2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going113_kernel_3mm2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going113_kernel_3mm2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going99_kernel_3mm6_valid_fifo(BLACKBOX,184)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going99_6_valid_fifo thei_llvm_fpga_pipeline_keep_going99_kernel_3mm6_valid_fifo (
        .in_data_in(c_i2_0182_q),
        .in_stall_in(bb_kernel_3mm_B4_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going99_kernel_3mm6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going99_kernel_3mm6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going99_kernel_3mm6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B5_sr_0_aunroll_x(BLACKBOX,15)
    kernel_3mm_bb_B5_sr_0 thebb_kernel_3mm_B5_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_kernel_3mm_B4_out_c0_exe7307),
        .in_i_data_1_tpl(bb_kernel_3mm_B4_out_c0_exe8308),
        .in_i_data_2_tpl(bb_kernel_3mm_B4_out_c0_exe9309),
        .in_i_data_3_tpl(bb_kernel_3mm_B4_out_c0_exe10310),
        .in_i_data_4_tpl(bb_kernel_3mm_B4_out_c0_exe11311),
        .in_i_data_5_tpl(bb_kernel_3mm_B4_out_c1_exe1),
        .in_i_stall(bb_kernel_3mm_B5_out_stall_out_0),
        .in_i_valid(bb_kernel_3mm_B4_out_valid_out_0),
        .out_o_data_0_tpl(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_stall(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going99_kernel_3mm6_sr(BLACKBOX,183)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going99_6_sr thei_llvm_fpga_pipeline_keep_going99_kernel_3mm6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going99_kernel_3mm6_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_3mm_B4_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going99_kernel_3mm6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going99_kernel_3mm6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_addrspace_1025_undef155(CONSTANT,148)
    assign c_i32_addrspace_1025_undef155_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // bb_kernel_3mm_B4(BLACKBOX,34)
    kernel_3mm_bb_B4 thebb_kernel_3mm_B4 (
        .in_exitcond13185_0(GND_q),
        .in_exitcond13185_1(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_exitcond16131_pop35188_0(GND_q),
        .in_exitcond16131_pop35188_1(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_exitcond16175_0(GND_q),
        .in_exitcond16175_1(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_flush(in_start),
        .in_forked96_0(GND_q),
        .in_forked96_1(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_5_0(bb_kernel_3mm_B1_start_out_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_6_0(bb_kernel_3mm_B1_start_out_intel_reserved_ffwd_6_0),
        .in_j_0155_pop32182_0(c_i32_undef100_q),
        .in_j_0155_pop32182_1(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_mPtr_bitcast_index168184_0(c_i32_addrspace_1025_undef155_q),
        .in_mPtr_bitcast_index168184_1(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_memdep_phi1_pop24135_pop37190_0(GND_q),
        .in_memdep_phi1_pop24135_pop37190_1(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_14_tpl),
        .in_memdep_phi1_pop24181_0(GND_q),
        .in_memdep_phi1_pop24181_1(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_memdep_phi_pop33187_0(GND_q),
        .in_memdep_phi_pop33187_1(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_mul_add36129_pop34183_0(c_i32_undef100_q),
        .in_mul_add36129_pop34183_1(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_mul_add36172_0(c_i32_undef100_q),
        .in_mul_add36172_1(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_notcmp111186_0(GND_q),
        .in_notcmp111186_1(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_notcmp116133_pop36189_0(GND_q),
        .in_notcmp116133_pop36189_1(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_notcmp116178_0(GND_q),
        .in_notcmp116178_1(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going99_kernel_3mm6_sr_out_o_stall),
        .in_stall_in_0(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_kernel_3mm13_0(c_i32_undef100_q),
        .in_unnamed_kernel_3mm13_1(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_unnamed_kernel_3mm16_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm16_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm16_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm16_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm16_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm16_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm16_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm16_kernel_3mm_avm_writeack),
        .in_unnamed_kernel_3mm17_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm17_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm17_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm17_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm17_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm17_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm17_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm17_kernel_3mm_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going99_kernel_3mm6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10310(bb_kernel_3mm_B4_out_c0_exe10310),
        .out_c0_exe11311(bb_kernel_3mm_B4_out_c0_exe11311),
        .out_c0_exe7307(bb_kernel_3mm_B4_out_c0_exe7307),
        .out_c0_exe8308(bb_kernel_3mm_B4_out_c0_exe8308),
        .out_c0_exe9309(bb_kernel_3mm_B4_out_c0_exe9309),
        .out_c1_exe1(bb_kernel_3mm_B4_out_c1_exe1),
        .out_exiting_stall_out(bb_kernel_3mm_B4_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_3mm_B4_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_kernel_3mm_B4_out_pipeline_valid_out),
        .out_stall_in_0(bb_kernel_3mm_B4_out_stall_in_0),
        .out_stall_out_0(bb_kernel_3mm_B4_out_stall_out_0),
        .out_stall_out_1(bb_kernel_3mm_B4_out_stall_out_1),
        .out_unnamed_kernel_3mm16_kernel_3mm_avm_address(bb_kernel_3mm_B4_out_unnamed_kernel_3mm16_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm16_kernel_3mm_avm_burstcount(bb_kernel_3mm_B4_out_unnamed_kernel_3mm16_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm16_kernel_3mm_avm_byteenable(bb_kernel_3mm_B4_out_unnamed_kernel_3mm16_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm16_kernel_3mm_avm_enable(bb_kernel_3mm_B4_out_unnamed_kernel_3mm16_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm16_kernel_3mm_avm_read(bb_kernel_3mm_B4_out_unnamed_kernel_3mm16_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm16_kernel_3mm_avm_write(bb_kernel_3mm_B4_out_unnamed_kernel_3mm16_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm16_kernel_3mm_avm_writedata(bb_kernel_3mm_B4_out_unnamed_kernel_3mm16_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm17_kernel_3mm_avm_address(bb_kernel_3mm_B4_out_unnamed_kernel_3mm17_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm17_kernel_3mm_avm_burstcount(bb_kernel_3mm_B4_out_unnamed_kernel_3mm17_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm17_kernel_3mm_avm_byteenable(bb_kernel_3mm_B4_out_unnamed_kernel_3mm17_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm17_kernel_3mm_avm_enable(bb_kernel_3mm_B4_out_unnamed_kernel_3mm17_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm17_kernel_3mm_avm_read(bb_kernel_3mm_B4_out_unnamed_kernel_3mm17_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm17_kernel_3mm_avm_write(bb_kernel_3mm_B4_out_unnamed_kernel_3mm17_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm17_kernel_3mm_avm_writedata(bb_kernel_3mm_B4_out_unnamed_kernel_3mm17_kernel_3mm_avm_writedata),
        .out_valid_in_0(bb_kernel_3mm_B4_out_valid_in_0),
        .out_valid_in_1(bb_kernel_3mm_B4_out_valid_in_1),
        .out_valid_out_0(bb_kernel_3mm_B4_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B4_sr_1_aunroll_x(BLACKBOX,14)
    kernel_3mm_bb_B4_sr_1 thebb_kernel_3mm_B4_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_kernel_3mm_B3_out_c0_exe10),
        .in_i_data_2_tpl(bb_kernel_3mm_B3_out_c0_exe11),
        .in_i_data_3_tpl(bb_kernel_3mm_B3_out_c0_exe12),
        .in_i_data_4_tpl(bb_kernel_3mm_B3_out_c0_exe13),
        .in_i_data_5_tpl(bb_kernel_3mm_B3_out_c0_exe1272),
        .in_i_data_6_tpl(bb_kernel_3mm_B3_out_c0_exe2273),
        .in_i_data_7_tpl(bb_kernel_3mm_B3_out_c0_exe3274),
        .in_i_data_8_tpl(bb_kernel_3mm_B3_out_unnamed_kernel_3mm10),
        .in_i_data_9_tpl(bb_kernel_3mm_B3_out_c0_exe4275),
        .in_i_data_10_tpl(bb_kernel_3mm_B3_out_c0_exe5),
        .in_i_data_11_tpl(bb_kernel_3mm_B3_out_memdep_phi_pop33),
        .in_i_data_12_tpl(bb_kernel_3mm_B3_out_c0_exe6),
        .in_i_data_13_tpl(bb_kernel_3mm_B3_out_c0_exe7),
        .in_i_data_14_tpl(bb_kernel_3mm_B3_out_c0_exe8),
        .in_i_stall(bb_kernel_3mm_B4_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_3mm6_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_14_tpl),
        .out_o_stall(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_3mm6(BLACKBOX,266)
    kernel_3mm_loop_limiter_6 theloop_limiter_kernel_3mm6 (
        .in_i_stall(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_3mm_B4_out_exiting_stall_out),
        .in_i_valid(bb_kernel_3mm_B3_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_3mm_B4_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_3mm6_out_o_stall),
        .out_o_valid(loop_limiter_kernel_3mm6_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going113_kernel_3mm2_sr(BLACKBOX,167)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going113_2_sr thei_llvm_fpga_pipeline_keep_going113_kernel_3mm2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going113_kernel_3mm2_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_3mm_B3_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going113_kernel_3mm2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going113_kernel_3mm2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef100(CONSTANT,151)
    assign c_i32_undef100_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_kernel_3mm_B6_sr_0_aunroll_x(BLACKBOX,16)
    kernel_3mm_bb_B6_sr_0 thebb_kernel_3mm_B6_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_kernel_3mm_B5_out_c0_exe73072),
        .in_i_data_1_tpl(bb_kernel_3mm_B5_out_c0_exe83084),
        .in_i_data_2_tpl(bb_kernel_3mm_B5_out_memdep),
        .in_i_stall(bb_kernel_3mm_B6_out_stall_out_0),
        .in_i_valid(bb_kernel_3mm_B5_out_valid_out_0),
        .out_o_data_0_tpl(bb_kernel_3mm_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_3mm_B6_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_3mm_B6_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_stall(bb_kernel_3mm_B6_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B6_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B5(BLACKBOX,35)
    kernel_3mm_bb_B5 thebb_kernel_3mm_B5 (
        .in_c0_exe103106_0(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe113117_0(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe73072_0(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe83084_0(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe93095_0(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c1_exe18_0(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_feedback_stall_in_33(bb_kernel_3mm_B3_out_feedback_stall_out_33),
        .in_flush(in_start),
        .in_memdep_kernel_3mm_avm_readdata(in_memdep_kernel_3mm_avm_readdata),
        .in_memdep_kernel_3mm_avm_readdatavalid(in_memdep_kernel_3mm_avm_readdatavalid),
        .in_memdep_kernel_3mm_avm_waitrequest(in_memdep_kernel_3mm_avm_waitrequest),
        .in_memdep_kernel_3mm_avm_writeack(in_memdep_kernel_3mm_avm_writeack),
        .in_stall_in_0(bb_kernel_3mm_B6_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe73072(bb_kernel_3mm_B5_out_c0_exe73072),
        .out_c0_exe83084(bb_kernel_3mm_B5_out_c0_exe83084),
        .out_feedback_out_33(bb_kernel_3mm_B5_out_feedback_out_33),
        .out_feedback_valid_out_33(bb_kernel_3mm_B5_out_feedback_valid_out_33),
        .out_lsu_memdep_o_active(bb_kernel_3mm_B5_out_lsu_memdep_o_active),
        .out_memdep(bb_kernel_3mm_B5_out_memdep),
        .out_memdep_kernel_3mm_avm_address(bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_address),
        .out_memdep_kernel_3mm_avm_burstcount(bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_burstcount),
        .out_memdep_kernel_3mm_avm_byteenable(bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_byteenable),
        .out_memdep_kernel_3mm_avm_enable(bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_enable),
        .out_memdep_kernel_3mm_avm_read(bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_read),
        .out_memdep_kernel_3mm_avm_write(bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_write),
        .out_memdep_kernel_3mm_avm_writedata(bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_writedata),
        .out_stall_in_0(bb_kernel_3mm_B5_out_stall_in_0),
        .out_stall_out_0(bb_kernel_3mm_B5_out_stall_out_0),
        .out_valid_out_0(bb_kernel_3mm_B5_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B3(BLACKBOX,33)
    kernel_3mm_bb_B3 thebb_kernel_3mm_B3 (
        .in_exitcond16173_0(GND_q),
        .in_exitcond16173_1(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_feedback_in_33(bb_kernel_3mm_B5_out_feedback_out_33),
        .in_feedback_valid_in_33(bb_kernel_3mm_B5_out_feedback_valid_out_33),
        .in_flush(in_start),
        .in_forked128_0(GND_q),
        .in_forked128_1(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_2_0(bb_kernel_3mm_B1_start_out_intel_reserved_ffwd_2_0),
        .in_memdep_phi1_pop24179_0(GND_q),
        .in_memdep_phi1_pop24179_1(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_mul_add36170_0(c_i32_undef100_q),
        .in_mul_add36170_1(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_notcmp116176_0(GND_q),
        .in_notcmp116176_1(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going113_kernel_3mm2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_kernel_3mm6_out_o_stall),
        .in_unnamed_kernel_3mm10_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm10_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm10_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm10_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm10_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm10_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm10_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm10_kernel_3mm_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going113_kernel_3mm2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10(bb_kernel_3mm_B3_out_c0_exe10),
        .out_c0_exe11(bb_kernel_3mm_B3_out_c0_exe11),
        .out_c0_exe12(bb_kernel_3mm_B3_out_c0_exe12),
        .out_c0_exe1272(bb_kernel_3mm_B3_out_c0_exe1272),
        .out_c0_exe13(bb_kernel_3mm_B3_out_c0_exe13),
        .out_c0_exe2273(bb_kernel_3mm_B3_out_c0_exe2273),
        .out_c0_exe3274(bb_kernel_3mm_B3_out_c0_exe3274),
        .out_c0_exe4275(bb_kernel_3mm_B3_out_c0_exe4275),
        .out_c0_exe5(bb_kernel_3mm_B3_out_c0_exe5),
        .out_c0_exe6(bb_kernel_3mm_B3_out_c0_exe6),
        .out_c0_exe7(bb_kernel_3mm_B3_out_c0_exe7),
        .out_c0_exe8(bb_kernel_3mm_B3_out_c0_exe8),
        .out_exiting_stall_out(bb_kernel_3mm_B3_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_3mm_B3_out_exiting_valid_out),
        .out_feedback_stall_out_33(bb_kernel_3mm_B3_out_feedback_stall_out_33),
        .out_intel_reserved_ffwd_7_0(bb_kernel_3mm_B3_out_intel_reserved_ffwd_7_0),
        .out_memdep_phi_pop33(bb_kernel_3mm_B3_out_memdep_phi_pop33),
        .out_pipeline_valid_out(bb_kernel_3mm_B3_out_pipeline_valid_out),
        .out_stall_out_0(bb_kernel_3mm_B3_out_stall_out_0),
        .out_stall_out_1(bb_kernel_3mm_B3_out_stall_out_1),
        .out_unnamed_kernel_3mm10(bb_kernel_3mm_B3_out_unnamed_kernel_3mm10),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_address(bb_kernel_3mm_B3_out_unnamed_kernel_3mm10_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount(bb_kernel_3mm_B3_out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable(bb_kernel_3mm_B3_out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_enable(bb_kernel_3mm_B3_out_unnamed_kernel_3mm10_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_read(bb_kernel_3mm_B3_out_unnamed_kernel_3mm10_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_write(bb_kernel_3mm_B3_out_unnamed_kernel_3mm10_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata(bb_kernel_3mm_B3_out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata),
        .out_valid_in_0(bb_kernel_3mm_B3_out_valid_in_0),
        .out_valid_in_1(bb_kernel_3mm_B3_out_valid_in_1),
        .out_valid_out_0(bb_kernel_3mm_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B3_sr_1_aunroll_x(BLACKBOX,13)
    kernel_3mm_bb_B3_sr_1 thebb_kernel_3mm_B3_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_kernel_3mm_B2_out_c0_exe1263),
        .in_i_data_2_tpl(bb_kernel_3mm_B2_out_c0_exe2),
        .in_i_data_3_tpl(bb_kernel_3mm_B2_out_c0_exe3),
        .in_i_data_4_tpl(bb_kernel_3mm_B2_out_memdep_phi1_pop24),
        .in_i_stall(bb_kernel_3mm_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_3mm3_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_stall(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_3mm3(BLACKBOX,263)
    kernel_3mm_loop_limiter_3 theloop_limiter_kernel_3mm3 (
        .in_i_stall(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_3mm_B3_out_exiting_stall_out),
        .in_i_valid(bb_kernel_3mm_B2_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_3mm_B3_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_3mm3_out_o_stall),
        .out_o_valid(loop_limiter_kernel_3mm3_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going118_kernel_3mm2_sr(BLACKBOX,169)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going118_2_sr thei_llvm_fpga_pipeline_keep_going118_kernel_3mm2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going118_kernel_3mm2_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_3mm_B2_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going118_kernel_3mm2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going118_kernel_3mm2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going92_kernel_3mm2_valid_fifo(BLACKBOX,182)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going92_2_valid_fifo thei_llvm_fpga_pipeline_keep_going92_kernel_3mm2_valid_fifo (
        .in_data_in(c_i2_0182_q),
        .in_stall_in(bb_kernel_3mm_B8_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going92_kernel_3mm2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going92_kernel_3mm2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going92_kernel_3mm2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going87_kernel_3mm2_valid_fifo(BLACKBOX,180)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going87_2_valid_fifo thei_llvm_fpga_pipeline_keep_going87_kernel_3mm2_valid_fifo (
        .in_data_in(c_i2_0182_q),
        .in_stall_in(bb_kernel_3mm_B9_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going87_kernel_3mm2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going87_kernel_3mm2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going87_kernel_3mm2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_valid_fifo(BLACKBOX,178)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going73_6_valid_fifo thei_llvm_fpga_pipeline_keep_going73_kernel_3mm6_valid_fifo (
        .in_data_in(c_i2_0182_q),
        .in_stall_in(bb_kernel_3mm_B10_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B11_sr_0_aunroll_x(BLACKBOX,3)
    kernel_3mm_bb_B11_sr_0 thebb_kernel_3mm_B11_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_kernel_3mm_B10_out_c0_exe7419),
        .in_i_data_1_tpl(bb_kernel_3mm_B10_out_c0_exe8420),
        .in_i_data_2_tpl(bb_kernel_3mm_B10_out_c0_exe9421),
        .in_i_data_3_tpl(bb_kernel_3mm_B10_out_c0_exe10422),
        .in_i_data_4_tpl(bb_kernel_3mm_B10_out_c0_exe11423),
        .in_i_data_5_tpl(bb_kernel_3mm_B10_out_c1_exe1443),
        .in_i_stall(bb_kernel_3mm_B11_out_stall_out_0),
        .in_i_valid(bb_kernel_3mm_B10_out_valid_out_0),
        .out_o_data_0_tpl(bb_kernel_3mm_B11_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_3mm_B11_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_3mm_B11_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_kernel_3mm_B11_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_kernel_3mm_B11_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_kernel_3mm_B11_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_stall(bb_kernel_3mm_B11_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B11_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_sr(BLACKBOX,177)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going73_6_sr thei_llvm_fpga_pipeline_keep_going73_kernel_3mm6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_3mm_B10_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B10(BLACKBOX,21)
    kernel_3mm_bb_B10 thebb_kernel_3mm_B10 (
        .in_exitcond22215_0(GND_q),
        .in_exitcond22215_1(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_exitcond25140_pop42218_0(GND_q),
        .in_exitcond25140_pop42218_1(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_exitcond25205_0(GND_q),
        .in_exitcond25205_1(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_flush(in_start),
        .in_forked70_0(GND_q),
        .in_forked70_1(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_8_0(bb_kernel_3mm_B7_out_intel_reserved_ffwd_8_0),
        .in_intel_reserved_ffwd_9_0(bb_kernel_3mm_B7_out_intel_reserved_ffwd_9_0),
        .in_j_1151_pop39212_0(c_i32_undef100_q),
        .in_j_1151_pop39212_1(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_mPtr_bitcast_index174214_0(c_i32_addrspace_1025_undef155_q),
        .in_mPtr_bitcast_index174214_1(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_memdep_phi4_pop40217_0(GND_q),
        .in_memdep_phi4_pop40217_1(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_memdep_phi5_pop27144_pop44220_0(GND_q),
        .in_memdep_phi5_pop27144_pop44220_1(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_14_tpl),
        .in_memdep_phi5_pop27211_0(GND_q),
        .in_memdep_phi5_pop27211_1(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_mul31_add40138_pop41213_0(c_i32_undef100_q),
        .in_mul31_add40138_pop41213_1(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_mul31_add40202_0(c_i32_undef100_q),
        .in_mul31_add40202_1(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_notcmp85216_0(GND_q),
        .in_notcmp85216_1(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_notcmp90142_pop43219_0(GND_q),
        .in_notcmp90142_pop43219_1(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_notcmp90208_0(GND_q),
        .in_notcmp90208_1(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_sr_out_o_stall),
        .in_stall_in_0(bb_kernel_3mm_B11_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_kernel_3mm23_0(c_i32_undef100_q),
        .in_unnamed_kernel_3mm23_1(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_unnamed_kernel_3mm26_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm26_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm26_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm26_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm26_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm26_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm26_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm26_kernel_3mm_avm_writeack),
        .in_unnamed_kernel_3mm27_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm27_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm27_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm27_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm27_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm27_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm27_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm27_kernel_3mm_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10422(bb_kernel_3mm_B10_out_c0_exe10422),
        .out_c0_exe11423(bb_kernel_3mm_B10_out_c0_exe11423),
        .out_c0_exe7419(bb_kernel_3mm_B10_out_c0_exe7419),
        .out_c0_exe8420(bb_kernel_3mm_B10_out_c0_exe8420),
        .out_c0_exe9421(bb_kernel_3mm_B10_out_c0_exe9421),
        .out_c1_exe1443(bb_kernel_3mm_B10_out_c1_exe1443),
        .out_exiting_stall_out(bb_kernel_3mm_B10_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_3mm_B10_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_kernel_3mm_B10_out_pipeline_valid_out),
        .out_stall_in_0(bb_kernel_3mm_B10_out_stall_in_0),
        .out_stall_out_0(bb_kernel_3mm_B10_out_stall_out_0),
        .out_stall_out_1(bb_kernel_3mm_B10_out_stall_out_1),
        .out_unnamed_kernel_3mm26_kernel_3mm_avm_address(bb_kernel_3mm_B10_out_unnamed_kernel_3mm26_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm26_kernel_3mm_avm_burstcount(bb_kernel_3mm_B10_out_unnamed_kernel_3mm26_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm26_kernel_3mm_avm_byteenable(bb_kernel_3mm_B10_out_unnamed_kernel_3mm26_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm26_kernel_3mm_avm_enable(bb_kernel_3mm_B10_out_unnamed_kernel_3mm26_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm26_kernel_3mm_avm_read(bb_kernel_3mm_B10_out_unnamed_kernel_3mm26_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm26_kernel_3mm_avm_write(bb_kernel_3mm_B10_out_unnamed_kernel_3mm26_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm26_kernel_3mm_avm_writedata(bb_kernel_3mm_B10_out_unnamed_kernel_3mm26_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm27_kernel_3mm_avm_address(bb_kernel_3mm_B10_out_unnamed_kernel_3mm27_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm27_kernel_3mm_avm_burstcount(bb_kernel_3mm_B10_out_unnamed_kernel_3mm27_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm27_kernel_3mm_avm_byteenable(bb_kernel_3mm_B10_out_unnamed_kernel_3mm27_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm27_kernel_3mm_avm_enable(bb_kernel_3mm_B10_out_unnamed_kernel_3mm27_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm27_kernel_3mm_avm_read(bb_kernel_3mm_B10_out_unnamed_kernel_3mm27_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm27_kernel_3mm_avm_write(bb_kernel_3mm_B10_out_unnamed_kernel_3mm27_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm27_kernel_3mm_avm_writedata(bb_kernel_3mm_B10_out_unnamed_kernel_3mm27_kernel_3mm_avm_writedata),
        .out_valid_in_0(bb_kernel_3mm_B10_out_valid_in_0),
        .out_valid_in_1(bb_kernel_3mm_B10_out_valid_in_1),
        .out_valid_out_0(bb_kernel_3mm_B10_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B10_sr_1_aunroll_x(BLACKBOX,2)
    kernel_3mm_bb_B10_sr_1 thebb_kernel_3mm_B10_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_kernel_3mm_B9_out_c0_exe10360),
        .in_i_data_2_tpl(bb_kernel_3mm_B9_out_c0_exe11361),
        .in_i_data_3_tpl(bb_kernel_3mm_B9_out_c0_exe12362),
        .in_i_data_4_tpl(bb_kernel_3mm_B9_out_c0_exe13363),
        .in_i_data_5_tpl(bb_kernel_3mm_B9_out_c0_exe1351),
        .in_i_data_6_tpl(bb_kernel_3mm_B9_out_c0_exe2352),
        .in_i_data_7_tpl(bb_kernel_3mm_B9_out_c0_exe3353),
        .in_i_data_8_tpl(bb_kernel_3mm_B9_out_unnamed_kernel_3mm20),
        .in_i_data_9_tpl(bb_kernel_3mm_B9_out_c0_exe4354),
        .in_i_data_10_tpl(bb_kernel_3mm_B9_out_c0_exe5355),
        .in_i_data_11_tpl(bb_kernel_3mm_B9_out_memdep_phi4_pop40),
        .in_i_data_12_tpl(bb_kernel_3mm_B9_out_c0_exe6356),
        .in_i_data_13_tpl(bb_kernel_3mm_B9_out_c0_exe7357),
        .in_i_data_14_tpl(bb_kernel_3mm_B9_out_c0_exe8358),
        .in_i_stall(bb_kernel_3mm_B10_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_3mm7_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_14_tpl),
        .out_o_stall(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_3mm7(BLACKBOX,267)
    kernel_3mm_loop_limiter_7 theloop_limiter_kernel_3mm7 (
        .in_i_stall(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_3mm_B10_out_exiting_stall_out),
        .in_i_valid(bb_kernel_3mm_B9_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_3mm_B10_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_3mm7_out_o_stall),
        .out_o_valid(loop_limiter_kernel_3mm7_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going87_kernel_3mm2_sr(BLACKBOX,179)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going87_2_sr thei_llvm_fpga_pipeline_keep_going87_kernel_3mm2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going87_kernel_3mm2_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_3mm_B9_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going87_kernel_3mm2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going87_kernel_3mm2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B12_sr_0_aunroll_x(BLACKBOX,4)
    kernel_3mm_bb_B12_sr_0 thebb_kernel_3mm_B12_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_kernel_3mm_B11_out_c0_exe741911),
        .in_i_data_1_tpl(bb_kernel_3mm_B11_out_c0_exe842013),
        .in_i_data_2_tpl(bb_kernel_3mm_B11_out_memdep_3),
        .in_i_stall(bb_kernel_3mm_B12_out_stall_out_0),
        .in_i_valid(bb_kernel_3mm_B11_out_valid_out_0),
        .out_o_data_0_tpl(bb_kernel_3mm_B12_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_3mm_B12_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_3mm_B12_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_stall(bb_kernel_3mm_B12_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B12_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B11(BLACKBOX,22)
    kernel_3mm_bb_B11 thebb_kernel_3mm_B11 (
        .in_c0_exe1042215_0(bb_kernel_3mm_B11_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe1142316_0(bb_kernel_3mm_B11_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe741911_0(bb_kernel_3mm_B11_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe842013_0(bb_kernel_3mm_B11_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe942114_0(bb_kernel_3mm_B11_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c1_exe144317_0(bb_kernel_3mm_B11_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_feedback_stall_in_40(bb_kernel_3mm_B9_out_feedback_stall_out_40),
        .in_flush(in_start),
        .in_memdep_3_kernel_3mm_avm_readdata(in_memdep_3_kernel_3mm_avm_readdata),
        .in_memdep_3_kernel_3mm_avm_readdatavalid(in_memdep_3_kernel_3mm_avm_readdatavalid),
        .in_memdep_3_kernel_3mm_avm_waitrequest(in_memdep_3_kernel_3mm_avm_waitrequest),
        .in_memdep_3_kernel_3mm_avm_writeack(in_memdep_3_kernel_3mm_avm_writeack),
        .in_stall_in_0(bb_kernel_3mm_B12_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_kernel_3mm_B11_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe741911(bb_kernel_3mm_B11_out_c0_exe741911),
        .out_c0_exe842013(bb_kernel_3mm_B11_out_c0_exe842013),
        .out_feedback_out_40(bb_kernel_3mm_B11_out_feedback_out_40),
        .out_feedback_valid_out_40(bb_kernel_3mm_B11_out_feedback_valid_out_40),
        .out_lsu_memdep_3_o_active(bb_kernel_3mm_B11_out_lsu_memdep_3_o_active),
        .out_memdep_3(bb_kernel_3mm_B11_out_memdep_3),
        .out_memdep_3_kernel_3mm_avm_address(bb_kernel_3mm_B11_out_memdep_3_kernel_3mm_avm_address),
        .out_memdep_3_kernel_3mm_avm_burstcount(bb_kernel_3mm_B11_out_memdep_3_kernel_3mm_avm_burstcount),
        .out_memdep_3_kernel_3mm_avm_byteenable(bb_kernel_3mm_B11_out_memdep_3_kernel_3mm_avm_byteenable),
        .out_memdep_3_kernel_3mm_avm_enable(bb_kernel_3mm_B11_out_memdep_3_kernel_3mm_avm_enable),
        .out_memdep_3_kernel_3mm_avm_read(bb_kernel_3mm_B11_out_memdep_3_kernel_3mm_avm_read),
        .out_memdep_3_kernel_3mm_avm_write(bb_kernel_3mm_B11_out_memdep_3_kernel_3mm_avm_write),
        .out_memdep_3_kernel_3mm_avm_writedata(bb_kernel_3mm_B11_out_memdep_3_kernel_3mm_avm_writedata),
        .out_stall_in_0(bb_kernel_3mm_B11_out_stall_in_0),
        .out_stall_out_0(bb_kernel_3mm_B11_out_stall_out_0),
        .out_valid_out_0(bb_kernel_3mm_B11_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B9(BLACKBOX,39)
    kernel_3mm_bb_B9 thebb_kernel_3mm_B9 (
        .in_exitcond25203_0(GND_q),
        .in_exitcond25203_1(bb_kernel_3mm_B9_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_feedback_in_40(bb_kernel_3mm_B11_out_feedback_out_40),
        .in_feedback_valid_in_40(bb_kernel_3mm_B11_out_feedback_valid_out_40),
        .in_flush(in_start),
        .in_forked137_0(GND_q),
        .in_forked137_1(bb_kernel_3mm_B9_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_3_0(bb_kernel_3mm_B1_start_out_intel_reserved_ffwd_3_0),
        .in_memdep_phi5_pop27209_0(GND_q),
        .in_memdep_phi5_pop27209_1(bb_kernel_3mm_B9_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_mul31_add40200_0(c_i32_undef100_q),
        .in_mul31_add40200_1(bb_kernel_3mm_B9_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_notcmp90206_0(GND_q),
        .in_notcmp90206_1(bb_kernel_3mm_B9_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going87_kernel_3mm2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_kernel_3mm7_out_o_stall),
        .in_unnamed_kernel_3mm20_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm20_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm20_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm20_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm20_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm20_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm20_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm20_kernel_3mm_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going87_kernel_3mm2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_3mm_B9_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10360(bb_kernel_3mm_B9_out_c0_exe10360),
        .out_c0_exe11361(bb_kernel_3mm_B9_out_c0_exe11361),
        .out_c0_exe12362(bb_kernel_3mm_B9_out_c0_exe12362),
        .out_c0_exe13363(bb_kernel_3mm_B9_out_c0_exe13363),
        .out_c0_exe1351(bb_kernel_3mm_B9_out_c0_exe1351),
        .out_c0_exe2352(bb_kernel_3mm_B9_out_c0_exe2352),
        .out_c0_exe3353(bb_kernel_3mm_B9_out_c0_exe3353),
        .out_c0_exe4354(bb_kernel_3mm_B9_out_c0_exe4354),
        .out_c0_exe5355(bb_kernel_3mm_B9_out_c0_exe5355),
        .out_c0_exe6356(bb_kernel_3mm_B9_out_c0_exe6356),
        .out_c0_exe7357(bb_kernel_3mm_B9_out_c0_exe7357),
        .out_c0_exe8358(bb_kernel_3mm_B9_out_c0_exe8358),
        .out_exiting_stall_out(bb_kernel_3mm_B9_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_3mm_B9_out_exiting_valid_out),
        .out_feedback_stall_out_40(bb_kernel_3mm_B9_out_feedback_stall_out_40),
        .out_intel_reserved_ffwd_10_0(bb_kernel_3mm_B9_out_intel_reserved_ffwd_10_0),
        .out_memdep_phi4_pop40(bb_kernel_3mm_B9_out_memdep_phi4_pop40),
        .out_pipeline_valid_out(bb_kernel_3mm_B9_out_pipeline_valid_out),
        .out_stall_out_0(bb_kernel_3mm_B9_out_stall_out_0),
        .out_stall_out_1(bb_kernel_3mm_B9_out_stall_out_1),
        .out_unnamed_kernel_3mm20(bb_kernel_3mm_B9_out_unnamed_kernel_3mm20),
        .out_unnamed_kernel_3mm20_kernel_3mm_avm_address(bb_kernel_3mm_B9_out_unnamed_kernel_3mm20_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm20_kernel_3mm_avm_burstcount(bb_kernel_3mm_B9_out_unnamed_kernel_3mm20_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm20_kernel_3mm_avm_byteenable(bb_kernel_3mm_B9_out_unnamed_kernel_3mm20_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm20_kernel_3mm_avm_enable(bb_kernel_3mm_B9_out_unnamed_kernel_3mm20_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm20_kernel_3mm_avm_read(bb_kernel_3mm_B9_out_unnamed_kernel_3mm20_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm20_kernel_3mm_avm_write(bb_kernel_3mm_B9_out_unnamed_kernel_3mm20_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm20_kernel_3mm_avm_writedata(bb_kernel_3mm_B9_out_unnamed_kernel_3mm20_kernel_3mm_avm_writedata),
        .out_valid_in_0(bb_kernel_3mm_B9_out_valid_in_0),
        .out_valid_in_1(bb_kernel_3mm_B9_out_valid_in_1),
        .out_valid_out_0(bb_kernel_3mm_B9_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B9_sr_1_aunroll_x(BLACKBOX,19)
    kernel_3mm_bb_B9_sr_1 thebb_kernel_3mm_B9_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_kernel_3mm_B8_out_c0_exe1322),
        .in_i_data_2_tpl(bb_kernel_3mm_B8_out_c0_exe2323),
        .in_i_data_3_tpl(bb_kernel_3mm_B8_out_c0_exe3324),
        .in_i_data_4_tpl(bb_kernel_3mm_B8_out_memdep_phi5_pop27),
        .in_i_stall(bb_kernel_3mm_B9_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_3mm4_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_3mm_B9_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_3mm_B9_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_3mm_B9_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_kernel_3mm_B9_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_kernel_3mm_B9_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_stall(bb_kernel_3mm_B9_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B9_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_3mm4(BLACKBOX,264)
    kernel_3mm_loop_limiter_4 theloop_limiter_kernel_3mm4 (
        .in_i_stall(bb_kernel_3mm_B9_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_3mm_B9_out_exiting_stall_out),
        .in_i_valid(bb_kernel_3mm_B8_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_3mm_B9_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_3mm4_out_o_stall),
        .out_o_valid(loop_limiter_kernel_3mm4_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going92_kernel_3mm2_sr(BLACKBOX,181)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going92_2_sr thei_llvm_fpga_pipeline_keep_going92_kernel_3mm2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going92_kernel_3mm2_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_3mm_B8_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going92_kernel_3mm2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going92_kernel_3mm2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going66_kernel_3mm2_valid_fifo(BLACKBOX,176)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going66_2_valid_fifo thei_llvm_fpga_pipeline_keep_going66_kernel_3mm2_valid_fifo (
        .in_data_in(c_i2_0182_q),
        .in_stall_in(bb_kernel_3mm_B14_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going66_kernel_3mm2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going66_kernel_3mm2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going66_kernel_3mm2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_valid_fifo(BLACKBOX,174)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going61_2_valid_fifo thei_llvm_fpga_pipeline_keep_going61_kernel_3mm2_valid_fifo (
        .in_data_in(c_i2_0182_q),
        .in_stall_in(bb_kernel_3mm_B15_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_kernel_3mm6_valid_fifo(BLACKBOX,186)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going_6_valid_fifo thei_llvm_fpga_pipeline_keep_going_kernel_3mm6_valid_fifo (
        .in_data_in(c_i2_0182_q),
        .in_stall_in(bb_kernel_3mm_B16_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_kernel_3mm6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_kernel_3mm6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_kernel_3mm6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B17_sr_0_aunroll_x(BLACKBOX,9)
    kernel_3mm_bb_B17_sr_0 thebb_kernel_3mm_B17_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_kernel_3mm_B16_out_c0_exe7549),
        .in_i_data_1_tpl(bb_kernel_3mm_B16_out_c0_exe8550),
        .in_i_data_2_tpl(bb_kernel_3mm_B16_out_c0_exe9551),
        .in_i_data_3_tpl(bb_kernel_3mm_B16_out_c0_exe10552),
        .in_i_data_4_tpl(bb_kernel_3mm_B16_out_c0_exe11553),
        .in_i_data_5_tpl(bb_kernel_3mm_B16_out_c1_exe1573),
        .in_i_stall(bb_kernel_3mm_B17_out_stall_out_0),
        .in_i_valid(bb_kernel_3mm_B16_out_valid_out_0),
        .out_o_data_0_tpl(bb_kernel_3mm_B17_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_3mm_B17_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_3mm_B17_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_kernel_3mm_B17_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_kernel_3mm_B17_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_kernel_3mm_B17_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_stall(bb_kernel_3mm_B17_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B17_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_kernel_3mm6_sr(BLACKBOX,185)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going_6_sr thei_llvm_fpga_pipeline_keep_going_kernel_3mm6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_kernel_3mm6_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_3mm_B16_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_kernel_3mm6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_kernel_3mm6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B16(BLACKBOX,27)
    kernel_3mm_bb_B16 thebb_kernel_3mm_B16 (
        .in_exitcond31245_0(GND_q),
        .in_exitcond31245_1(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_exitcond34149_pop49248_0(GND_q),
        .in_exitcond34149_pop49248_1(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_exitcond34235_0(GND_q),
        .in_exitcond34235_1(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_10_0(bb_kernel_3mm_B9_out_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_7_0(bb_kernel_3mm_B3_out_intel_reserved_ffwd_7_0),
        .in_j_2147_pop46242_0(c_i32_undef100_q),
        .in_j_2147_pop46242_1(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_mPtr_bitcast_index178244_0(c_i32_addrspace_1025_undef155_q),
        .in_mPtr_bitcast_index178244_1(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_memdep_phi8_pop47247_0(GND_q),
        .in_memdep_phi8_pop47247_1(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_memdep_phi9_pop30153_pop51250_0(GND_q),
        .in_memdep_phi9_pop30153_pop51250_1(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_14_tpl),
        .in_memdep_phi9_pop30241_0(GND_q),
        .in_memdep_phi9_pop30241_1(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_mul64_add44147_pop48243_0(c_i32_undef100_q),
        .in_mul64_add44147_pop48243_1(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_mul64_add44232_0(c_i32_undef100_q),
        .in_mul64_add44232_1(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_notcmp59246_0(GND_q),
        .in_notcmp59246_1(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_notcmp64151_pop50249_0(GND_q),
        .in_notcmp64151_pop50249_1(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_notcmp64238_0(GND_q),
        .in_notcmp64238_1(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_kernel_3mm6_sr_out_o_stall),
        .in_stall_in_0(bb_kernel_3mm_B17_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_kernel_3mm31_0(c_i32_undef100_q),
        .in_unnamed_kernel_3mm31_1(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_unnamed_kernel_3mm34_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm34_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm34_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm34_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm34_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm34_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm34_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm34_kernel_3mm_avm_writeack),
        .in_unnamed_kernel_3mm35_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm35_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm35_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm35_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm35_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm35_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm35_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm35_kernel_3mm_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_kernel_3mm6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10552(bb_kernel_3mm_B16_out_c0_exe10552),
        .out_c0_exe11553(bb_kernel_3mm_B16_out_c0_exe11553),
        .out_c0_exe7549(bb_kernel_3mm_B16_out_c0_exe7549),
        .out_c0_exe8550(bb_kernel_3mm_B16_out_c0_exe8550),
        .out_c0_exe9551(bb_kernel_3mm_B16_out_c0_exe9551),
        .out_c1_exe1573(bb_kernel_3mm_B16_out_c1_exe1573),
        .out_exiting_stall_out(bb_kernel_3mm_B16_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_3mm_B16_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_kernel_3mm_B16_out_pipeline_valid_out),
        .out_stall_in_0(bb_kernel_3mm_B16_out_stall_in_0),
        .out_stall_out_0(bb_kernel_3mm_B16_out_stall_out_0),
        .out_stall_out_1(bb_kernel_3mm_B16_out_stall_out_1),
        .out_unnamed_kernel_3mm34_kernel_3mm_avm_address(bb_kernel_3mm_B16_out_unnamed_kernel_3mm34_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm34_kernel_3mm_avm_burstcount(bb_kernel_3mm_B16_out_unnamed_kernel_3mm34_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm34_kernel_3mm_avm_byteenable(bb_kernel_3mm_B16_out_unnamed_kernel_3mm34_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm34_kernel_3mm_avm_enable(bb_kernel_3mm_B16_out_unnamed_kernel_3mm34_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm34_kernel_3mm_avm_read(bb_kernel_3mm_B16_out_unnamed_kernel_3mm34_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm34_kernel_3mm_avm_write(bb_kernel_3mm_B16_out_unnamed_kernel_3mm34_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm34_kernel_3mm_avm_writedata(bb_kernel_3mm_B16_out_unnamed_kernel_3mm34_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm35_kernel_3mm_avm_address(bb_kernel_3mm_B16_out_unnamed_kernel_3mm35_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm35_kernel_3mm_avm_burstcount(bb_kernel_3mm_B16_out_unnamed_kernel_3mm35_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm35_kernel_3mm_avm_byteenable(bb_kernel_3mm_B16_out_unnamed_kernel_3mm35_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm35_kernel_3mm_avm_enable(bb_kernel_3mm_B16_out_unnamed_kernel_3mm35_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm35_kernel_3mm_avm_read(bb_kernel_3mm_B16_out_unnamed_kernel_3mm35_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm35_kernel_3mm_avm_write(bb_kernel_3mm_B16_out_unnamed_kernel_3mm35_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm35_kernel_3mm_avm_writedata(bb_kernel_3mm_B16_out_unnamed_kernel_3mm35_kernel_3mm_avm_writedata),
        .out_valid_in_0(bb_kernel_3mm_B16_out_valid_in_0),
        .out_valid_in_1(bb_kernel_3mm_B16_out_valid_in_1),
        .out_valid_out_0(bb_kernel_3mm_B16_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B16_sr_1_aunroll_x(BLACKBOX,8)
    kernel_3mm_bb_B16_sr_1 thebb_kernel_3mm_B16_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_kernel_3mm_B15_out_c0_exe10490),
        .in_i_data_2_tpl(bb_kernel_3mm_B15_out_c0_exe11491),
        .in_i_data_3_tpl(bb_kernel_3mm_B15_out_c0_exe12492),
        .in_i_data_4_tpl(bb_kernel_3mm_B15_out_c0_exe13493),
        .in_i_data_5_tpl(bb_kernel_3mm_B15_out_c0_exe1481),
        .in_i_data_6_tpl(bb_kernel_3mm_B15_out_c0_exe2482),
        .in_i_data_7_tpl(bb_kernel_3mm_B15_out_c0_exe3483),
        .in_i_data_8_tpl(bb_kernel_3mm_B15_out_unnamed_kernel_3mm29),
        .in_i_data_9_tpl(bb_kernel_3mm_B15_out_c0_exe4484),
        .in_i_data_10_tpl(bb_kernel_3mm_B15_out_c0_exe5485),
        .in_i_data_11_tpl(bb_kernel_3mm_B15_out_memdep_phi8_pop47),
        .in_i_data_12_tpl(bb_kernel_3mm_B15_out_c0_exe6486),
        .in_i_data_13_tpl(bb_kernel_3mm_B15_out_c0_exe7487),
        .in_i_data_14_tpl(bb_kernel_3mm_B15_out_c0_exe8488),
        .in_i_stall(bb_kernel_3mm_B16_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_3mm8_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_14_tpl),
        .out_o_stall(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_3mm8(BLACKBOX,268)
    kernel_3mm_loop_limiter_8 theloop_limiter_kernel_3mm8 (
        .in_i_stall(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_3mm_B16_out_exiting_stall_out),
        .in_i_valid(bb_kernel_3mm_B15_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_3mm_B16_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_3mm8_out_o_stall),
        .out_o_valid(loop_limiter_kernel_3mm8_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_sr(BLACKBOX,173)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going61_2_sr thei_llvm_fpga_pipeline_keep_going61_kernel_3mm2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_3mm_B15_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B18_sr_0_aunroll_x(BLACKBOX,10)
    kernel_3mm_bb_B18_sr_0 thebb_kernel_3mm_B18_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_kernel_3mm_B17_out_c0_exe754920),
        .in_i_data_1_tpl(bb_kernel_3mm_B17_out_c0_exe855022),
        .in_i_data_2_tpl(bb_kernel_3mm_B17_out_memdep_7),
        .in_i_stall(bb_kernel_3mm_B18_out_stall_out_0),
        .in_i_valid(bb_kernel_3mm_B17_out_valid_out_0),
        .out_o_data_0_tpl(bb_kernel_3mm_B18_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_3mm_B18_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_3mm_B18_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_stall(bb_kernel_3mm_B18_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B18_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B17(BLACKBOX,28)
    kernel_3mm_bb_B17 thebb_kernel_3mm_B17 (
        .in_c0_exe1055224_0(bb_kernel_3mm_B17_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe1155325_0(bb_kernel_3mm_B17_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe754920_0(bb_kernel_3mm_B17_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe855022_0(bb_kernel_3mm_B17_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe955123_0(bb_kernel_3mm_B17_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c1_exe157326_0(bb_kernel_3mm_B17_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_feedback_stall_in_47(bb_kernel_3mm_B15_out_feedback_stall_out_47),
        .in_flush(in_start),
        .in_memdep_7_kernel_3mm_avm_readdata(in_memdep_7_kernel_3mm_avm_readdata),
        .in_memdep_7_kernel_3mm_avm_readdatavalid(in_memdep_7_kernel_3mm_avm_readdatavalid),
        .in_memdep_7_kernel_3mm_avm_waitrequest(in_memdep_7_kernel_3mm_avm_waitrequest),
        .in_memdep_7_kernel_3mm_avm_writeack(in_memdep_7_kernel_3mm_avm_writeack),
        .in_stall_in_0(bb_kernel_3mm_B18_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_kernel_3mm_B17_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe754920(bb_kernel_3mm_B17_out_c0_exe754920),
        .out_c0_exe855022(bb_kernel_3mm_B17_out_c0_exe855022),
        .out_feedback_out_47(bb_kernel_3mm_B17_out_feedback_out_47),
        .out_feedback_valid_out_47(bb_kernel_3mm_B17_out_feedback_valid_out_47),
        .out_lsu_memdep_7_o_active(bb_kernel_3mm_B17_out_lsu_memdep_7_o_active),
        .out_memdep_7(bb_kernel_3mm_B17_out_memdep_7),
        .out_memdep_7_kernel_3mm_avm_address(bb_kernel_3mm_B17_out_memdep_7_kernel_3mm_avm_address),
        .out_memdep_7_kernel_3mm_avm_burstcount(bb_kernel_3mm_B17_out_memdep_7_kernel_3mm_avm_burstcount),
        .out_memdep_7_kernel_3mm_avm_byteenable(bb_kernel_3mm_B17_out_memdep_7_kernel_3mm_avm_byteenable),
        .out_memdep_7_kernel_3mm_avm_enable(bb_kernel_3mm_B17_out_memdep_7_kernel_3mm_avm_enable),
        .out_memdep_7_kernel_3mm_avm_read(bb_kernel_3mm_B17_out_memdep_7_kernel_3mm_avm_read),
        .out_memdep_7_kernel_3mm_avm_write(bb_kernel_3mm_B17_out_memdep_7_kernel_3mm_avm_write),
        .out_memdep_7_kernel_3mm_avm_writedata(bb_kernel_3mm_B17_out_memdep_7_kernel_3mm_avm_writedata),
        .out_stall_in_0(bb_kernel_3mm_B17_out_stall_in_0),
        .out_stall_out_0(bb_kernel_3mm_B17_out_stall_out_0),
        .out_valid_out_0(bb_kernel_3mm_B17_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B15(BLACKBOX,26)
    kernel_3mm_bb_B15 thebb_kernel_3mm_B15 (
        .in_exitcond34233_0(GND_q),
        .in_exitcond34233_1(bb_kernel_3mm_B15_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_feedback_in_47(bb_kernel_3mm_B17_out_feedback_out_47),
        .in_feedback_valid_in_47(bb_kernel_3mm_B17_out_feedback_valid_out_47),
        .in_flush(in_start),
        .in_forked146_0(GND_q),
        .in_forked146_1(bb_kernel_3mm_B15_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_11_0(bb_kernel_3mm_B13_out_intel_reserved_ffwd_11_0),
        .in_memdep_phi9_pop30239_0(GND_q),
        .in_memdep_phi9_pop30239_1(bb_kernel_3mm_B15_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_mul64_add44230_0(c_i32_undef100_q),
        .in_mul64_add44230_1(bb_kernel_3mm_B15_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_notcmp64236_0(GND_q),
        .in_notcmp64236_1(bb_kernel_3mm_B15_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_kernel_3mm8_out_o_stall),
        .in_unnamed_kernel_3mm29_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm29_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm29_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm29_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm29_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm29_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm29_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm29_kernel_3mm_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_3mm_B15_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10490(bb_kernel_3mm_B15_out_c0_exe10490),
        .out_c0_exe11491(bb_kernel_3mm_B15_out_c0_exe11491),
        .out_c0_exe12492(bb_kernel_3mm_B15_out_c0_exe12492),
        .out_c0_exe13493(bb_kernel_3mm_B15_out_c0_exe13493),
        .out_c0_exe1481(bb_kernel_3mm_B15_out_c0_exe1481),
        .out_c0_exe2482(bb_kernel_3mm_B15_out_c0_exe2482),
        .out_c0_exe3483(bb_kernel_3mm_B15_out_c0_exe3483),
        .out_c0_exe4484(bb_kernel_3mm_B15_out_c0_exe4484),
        .out_c0_exe5485(bb_kernel_3mm_B15_out_c0_exe5485),
        .out_c0_exe6486(bb_kernel_3mm_B15_out_c0_exe6486),
        .out_c0_exe7487(bb_kernel_3mm_B15_out_c0_exe7487),
        .out_c0_exe8488(bb_kernel_3mm_B15_out_c0_exe8488),
        .out_exiting_stall_out(bb_kernel_3mm_B15_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_3mm_B15_out_exiting_valid_out),
        .out_feedback_stall_out_47(bb_kernel_3mm_B15_out_feedback_stall_out_47),
        .out_memdep_phi8_pop47(bb_kernel_3mm_B15_out_memdep_phi8_pop47),
        .out_pipeline_valid_out(bb_kernel_3mm_B15_out_pipeline_valid_out),
        .out_stall_out_0(bb_kernel_3mm_B15_out_stall_out_0),
        .out_stall_out_1(bb_kernel_3mm_B15_out_stall_out_1),
        .out_unnamed_kernel_3mm29(bb_kernel_3mm_B15_out_unnamed_kernel_3mm29),
        .out_unnamed_kernel_3mm29_kernel_3mm_avm_address(bb_kernel_3mm_B15_out_unnamed_kernel_3mm29_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm29_kernel_3mm_avm_burstcount(bb_kernel_3mm_B15_out_unnamed_kernel_3mm29_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm29_kernel_3mm_avm_byteenable(bb_kernel_3mm_B15_out_unnamed_kernel_3mm29_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm29_kernel_3mm_avm_enable(bb_kernel_3mm_B15_out_unnamed_kernel_3mm29_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm29_kernel_3mm_avm_read(bb_kernel_3mm_B15_out_unnamed_kernel_3mm29_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm29_kernel_3mm_avm_write(bb_kernel_3mm_B15_out_unnamed_kernel_3mm29_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm29_kernel_3mm_avm_writedata(bb_kernel_3mm_B15_out_unnamed_kernel_3mm29_kernel_3mm_avm_writedata),
        .out_valid_in_0(bb_kernel_3mm_B15_out_valid_in_0),
        .out_valid_in_1(bb_kernel_3mm_B15_out_valid_in_1),
        .out_valid_out_0(bb_kernel_3mm_B15_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B15_sr_1_aunroll_x(BLACKBOX,7)
    kernel_3mm_bb_B15_sr_1 thebb_kernel_3mm_B15_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_kernel_3mm_B14_out_c0_exe1452),
        .in_i_data_2_tpl(bb_kernel_3mm_B14_out_c0_exe2453),
        .in_i_data_3_tpl(bb_kernel_3mm_B14_out_c0_exe3454),
        .in_i_data_4_tpl(bb_kernel_3mm_B14_out_memdep_phi9_pop30),
        .in_i_stall(bb_kernel_3mm_B15_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_3mm5_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_3mm_B15_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_3mm_B15_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_3mm_B15_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_kernel_3mm_B15_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_kernel_3mm_B15_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_stall(bb_kernel_3mm_B15_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B15_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_3mm5(BLACKBOX,265)
    kernel_3mm_loop_limiter_5 theloop_limiter_kernel_3mm5 (
        .in_i_stall(bb_kernel_3mm_B15_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_3mm_B15_out_exiting_stall_out),
        .in_i_valid(bb_kernel_3mm_B14_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_3mm_B15_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_3mm5_out_o_stall),
        .out_o_valid(loop_limiter_kernel_3mm5_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going66_kernel_3mm2_sr(BLACKBOX,175)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going66_2_sr thei_llvm_fpga_pipeline_keep_going66_kernel_3mm2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going66_kernel_3mm2_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_3mm_B14_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going66_kernel_3mm2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going66_kernel_3mm2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B19_sr_0_aunroll_x(BLACKBOX,11)
    kernel_3mm_bb_B19_sr_0 thebb_kernel_3mm_B19_sr_0_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_kernel_3mm_B19_out_stall_out_0),
        .in_i_valid(bb_kernel_3mm_B18_out_valid_out_0),
        .out_o_data_0_tpl(),
        .out_o_stall(bb_kernel_3mm_B19_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B19_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B18(BLACKBOX,29)
    kernel_3mm_bb_B18 thebb_kernel_3mm_B18 (
        .in_c0_exe754919_0(bb_kernel_3mm_B18_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe855021_0(bb_kernel_3mm_B18_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_feedback_stall_in_30(bb_kernel_3mm_B14_out_feedback_stall_out_30),
        .in_memdep_727_0(bb_kernel_3mm_B18_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_stall_in_0(bb_kernel_3mm_B19_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_kernel_3mm_B18_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_30(bb_kernel_3mm_B18_out_feedback_out_30),
        .out_feedback_valid_out_30(bb_kernel_3mm_B18_out_feedback_valid_out_30),
        .out_stall_in_0(bb_kernel_3mm_B18_out_stall_in_0),
        .out_stall_out_0(bb_kernel_3mm_B18_out_stall_out_0),
        .out_valid_out_0(bb_kernel_3mm_B18_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B14(BLACKBOX,25)
    kernel_3mm_bb_B14 thebb_kernel_3mm_B14 (
        .in_feedback_in_30(bb_kernel_3mm_B18_out_feedback_out_30),
        .in_feedback_valid_in_30(bb_kernel_3mm_B18_out_feedback_valid_out_30),
        .in_forked127_0(GND_q),
        .in_forked127_1(bb_kernel_3mm_B14_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going66_kernel_3mm2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_kernel_3mm5_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going66_kernel_3mm2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_3mm_B14_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe1452(bb_kernel_3mm_B14_out_c0_exe1452),
        .out_c0_exe2453(bb_kernel_3mm_B14_out_c0_exe2453),
        .out_c0_exe3454(bb_kernel_3mm_B14_out_c0_exe3454),
        .out_exiting_stall_out(bb_kernel_3mm_B14_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_3mm_B14_out_exiting_valid_out),
        .out_feedback_stall_out_30(bb_kernel_3mm_B14_out_feedback_stall_out_30),
        .out_memdep_phi9_pop30(bb_kernel_3mm_B14_out_memdep_phi9_pop30),
        .out_pipeline_valid_out(bb_kernel_3mm_B14_out_pipeline_valid_out),
        .out_stall_out_0(bb_kernel_3mm_B14_out_stall_out_0),
        .out_stall_out_1(bb_kernel_3mm_B14_out_stall_out_1),
        .out_valid_in_0(bb_kernel_3mm_B14_out_valid_in_0),
        .out_valid_in_1(bb_kernel_3mm_B14_out_valid_in_1),
        .out_valid_out_0(bb_kernel_3mm_B14_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B14_sr_1_aunroll_x(BLACKBOX,6)
    kernel_3mm_bb_B14_sr_1 thebb_kernel_3mm_B14_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_stall(bb_kernel_3mm_B14_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_3mm2_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_3mm_B14_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_stall(bb_kernel_3mm_B14_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B14_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_3mm2(BLACKBOX,262)
    kernel_3mm_loop_limiter_2 theloop_limiter_kernel_3mm2 (
        .in_i_stall(bb_kernel_3mm_B14_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_3mm_B14_out_exiting_stall_out),
        .in_i_valid(bb_kernel_3mm_B13_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_3mm_B14_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_3mm2_out_o_stall),
        .out_o_valid(loop_limiter_kernel_3mm2_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B13(BLACKBOX,24)
    kernel_3mm_bb_B13 thebb_kernel_3mm_B13 (
        .in_intel_reserved_ffwd_4_0(bb_kernel_3mm_B1_start_out_intel_reserved_ffwd_4_0),
        .in_stall_in_0(loop_limiter_kernel_3mm2_out_o_stall),
        .in_valid_in_0(bb_kernel_3mm_B13_sr_0_aunroll_x_out_o_valid),
        .out_intel_reserved_ffwd_11_0(bb_kernel_3mm_B13_out_intel_reserved_ffwd_11_0),
        .out_stall_out_0(bb_kernel_3mm_B13_out_stall_out_0),
        .out_valid_out_0(bb_kernel_3mm_B13_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B13_sr_0_aunroll_x(BLACKBOX,5)
    kernel_3mm_bb_B13_sr_0 thebb_kernel_3mm_B13_sr_0_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_kernel_3mm_B13_out_stall_out_0),
        .in_i_valid(bb_kernel_3mm_B12_out_valid_out_0),
        .out_o_data_0_tpl(),
        .out_o_stall(bb_kernel_3mm_B13_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B13_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B12(BLACKBOX,23)
    kernel_3mm_bb_B12 thebb_kernel_3mm_B12 (
        .in_c0_exe741910_0(bb_kernel_3mm_B12_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe842012_0(bb_kernel_3mm_B12_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_feedback_stall_in_27(bb_kernel_3mm_B8_out_feedback_stall_out_27),
        .in_memdep_318_0(bb_kernel_3mm_B12_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_stall_in_0(bb_kernel_3mm_B13_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_kernel_3mm_B12_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_27(bb_kernel_3mm_B12_out_feedback_out_27),
        .out_feedback_valid_out_27(bb_kernel_3mm_B12_out_feedback_valid_out_27),
        .out_stall_in_0(bb_kernel_3mm_B12_out_stall_in_0),
        .out_stall_out_0(bb_kernel_3mm_B12_out_stall_out_0),
        .out_valid_out_0(bb_kernel_3mm_B12_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B8(BLACKBOX,38)
    kernel_3mm_bb_B8 thebb_kernel_3mm_B8 (
        .in_feedback_in_27(bb_kernel_3mm_B12_out_feedback_out_27),
        .in_feedback_valid_in_27(bb_kernel_3mm_B12_out_feedback_valid_out_27),
        .in_forked126_0(GND_q),
        .in_forked126_1(bb_kernel_3mm_B8_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going92_kernel_3mm2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_kernel_3mm4_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going92_kernel_3mm2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_3mm_B8_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe1322(bb_kernel_3mm_B8_out_c0_exe1322),
        .out_c0_exe2323(bb_kernel_3mm_B8_out_c0_exe2323),
        .out_c0_exe3324(bb_kernel_3mm_B8_out_c0_exe3324),
        .out_exiting_stall_out(bb_kernel_3mm_B8_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_3mm_B8_out_exiting_valid_out),
        .out_feedback_stall_out_27(bb_kernel_3mm_B8_out_feedback_stall_out_27),
        .out_memdep_phi5_pop27(bb_kernel_3mm_B8_out_memdep_phi5_pop27),
        .out_pipeline_valid_out(bb_kernel_3mm_B8_out_pipeline_valid_out),
        .out_stall_out_0(bb_kernel_3mm_B8_out_stall_out_0),
        .out_stall_out_1(bb_kernel_3mm_B8_out_stall_out_1),
        .out_valid_in_0(bb_kernel_3mm_B8_out_valid_in_0),
        .out_valid_in_1(bb_kernel_3mm_B8_out_valid_in_1),
        .out_valid_out_0(bb_kernel_3mm_B8_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B8_sr_1_aunroll_x(BLACKBOX,18)
    kernel_3mm_bb_B8_sr_1 thebb_kernel_3mm_B8_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_stall(bb_kernel_3mm_B8_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_3mm1_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_3mm_B8_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_stall(bb_kernel_3mm_B8_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B8_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_3mm1(BLACKBOX,261)
    kernel_3mm_loop_limiter_1 theloop_limiter_kernel_3mm1 (
        .in_i_stall(bb_kernel_3mm_B8_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_3mm_B8_out_exiting_stall_out),
        .in_i_valid(bb_kernel_3mm_B7_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_3mm_B8_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_3mm1_out_o_stall),
        .out_o_valid(loop_limiter_kernel_3mm1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B7(BLACKBOX,37)
    kernel_3mm_bb_B7 thebb_kernel_3mm_B7 (
        .in_intel_reserved_ffwd_0_0(bb_kernel_3mm_B1_start_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(bb_kernel_3mm_B1_start_out_intel_reserved_ffwd_1_0),
        .in_stall_in_0(loop_limiter_kernel_3mm1_out_o_stall),
        .in_valid_in_0(bb_kernel_3mm_B7_sr_0_aunroll_x_out_o_valid),
        .out_intel_reserved_ffwd_8_0(bb_kernel_3mm_B7_out_intel_reserved_ffwd_8_0),
        .out_intel_reserved_ffwd_9_0(bb_kernel_3mm_B7_out_intel_reserved_ffwd_9_0),
        .out_stall_out_0(bb_kernel_3mm_B7_out_stall_out_0),
        .out_valid_out_0(bb_kernel_3mm_B7_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B7_sr_0_aunroll_x(BLACKBOX,17)
    kernel_3mm_bb_B7_sr_0 thebb_kernel_3mm_B7_sr_0_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_kernel_3mm_B7_out_stall_out_0),
        .in_i_valid(bb_kernel_3mm_B6_out_valid_out_0),
        .out_o_data_0_tpl(),
        .out_o_stall(bb_kernel_3mm_B7_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B7_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B6(BLACKBOX,36)
    kernel_3mm_bb_B6 thebb_kernel_3mm_B6 (
        .in_c0_exe73071_0(bb_kernel_3mm_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe83083_0(bb_kernel_3mm_B6_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_feedback_stall_in_24(bb_kernel_3mm_B2_out_feedback_stall_out_24),
        .in_memdep_9_0(bb_kernel_3mm_B6_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_stall_in_0(bb_kernel_3mm_B7_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_kernel_3mm_B6_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_24(bb_kernel_3mm_B6_out_feedback_out_24),
        .out_feedback_valid_out_24(bb_kernel_3mm_B6_out_feedback_valid_out_24),
        .out_stall_in_0(bb_kernel_3mm_B6_out_stall_in_0),
        .out_stall_out_0(bb_kernel_3mm_B6_out_stall_out_0),
        .out_valid_out_0(bb_kernel_3mm_B6_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B2(BLACKBOX,32)
    kernel_3mm_bb_B2 thebb_kernel_3mm_B2 (
        .in_feedback_in_24(bb_kernel_3mm_B6_out_feedback_out_24),
        .in_feedback_valid_in_24(bb_kernel_3mm_B6_out_feedback_valid_out_24),
        .in_forked125_0(GND_q),
        .in_forked125_1(bb_kernel_3mm_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going118_kernel_3mm2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_kernel_3mm3_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going118_kernel_3mm2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_3mm_B2_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe1263(bb_kernel_3mm_B2_out_c0_exe1263),
        .out_c0_exe2(bb_kernel_3mm_B2_out_c0_exe2),
        .out_c0_exe3(bb_kernel_3mm_B2_out_c0_exe3),
        .out_exiting_stall_out(bb_kernel_3mm_B2_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_3mm_B2_out_exiting_valid_out),
        .out_feedback_stall_out_24(bb_kernel_3mm_B2_out_feedback_stall_out_24),
        .out_memdep_phi1_pop24(bb_kernel_3mm_B2_out_memdep_phi1_pop24),
        .out_pipeline_valid_out(bb_kernel_3mm_B2_out_pipeline_valid_out),
        .out_stall_out_0(bb_kernel_3mm_B2_out_stall_out_0),
        .out_stall_out_1(bb_kernel_3mm_B2_out_stall_out_1),
        .out_valid_in_0(bb_kernel_3mm_B2_out_valid_in_0),
        .out_valid_in_1(bb_kernel_3mm_B2_out_valid_in_1),
        .out_valid_out_0(bb_kernel_3mm_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B2_sr_1_aunroll_x(BLACKBOX,12)
    kernel_3mm_bb_B2_sr_1 thebb_kernel_3mm_B2_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_stall(bb_kernel_3mm_B2_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_3mm0_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_3mm_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_stall(bb_kernel_3mm_B2_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B2_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_3mm0(BLACKBOX,260)
    kernel_3mm_loop_limiter_0 theloop_limiter_kernel_3mm0 (
        .in_i_stall(bb_kernel_3mm_B2_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_3mm_B2_out_exiting_stall_out),
        .in_i_valid(bb_kernel_3mm_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_3mm_B2_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_3mm0_out_o_stall),
        .out_o_valid(loop_limiter_kernel_3mm0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going122_kernel_3mm1_sr(BLACKBOX,171)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going122_1_sr thei_llvm_fpga_pipeline_keep_going122_kernel_3mm1_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going122_kernel_3mm1_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_3mm_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going122_kernel_3mm1_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going122_kernel_3mm1_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B1_start(BLACKBOX,31)
    kernel_3mm_bb_B1_start thebb_kernel_3mm_B1_start (
        .in_feedback_in_1(bb_kernel_3mm_B19_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_kernel_3mm_B19_out_feedback_valid_out_1),
        .in_iord_bl_call_kernel_3mm_i_fifodata(in_iord_bl_call_kernel_3mm_i_fifodata),
        .in_iord_bl_call_kernel_3mm_i_fifovalid(in_iord_bl_call_kernel_3mm_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going122_kernel_3mm1_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_kernel_3mm0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going122_kernel_3mm1_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_kernel_3mm_B1_start_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_kernel_3mm_B1_start_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_kernel_3mm_B1_start_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_kernel_3mm_B1_start_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_kernel_3mm_B1_start_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_kernel_3mm_B1_start_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_5_0(bb_kernel_3mm_B1_start_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_6_0(bb_kernel_3mm_B1_start_out_intel_reserved_ffwd_6_0),
        .out_iord_bl_call_kernel_3mm_o_fifoalmost_full(bb_kernel_3mm_B1_start_out_iord_bl_call_kernel_3mm_o_fifoalmost_full),
        .out_iord_bl_call_kernel_3mm_o_fifoready(bb_kernel_3mm_B1_start_out_iord_bl_call_kernel_3mm_o_fifoready),
        .out_pipeline_valid_out(bb_kernel_3mm_B1_start_out_pipeline_valid_out),
        .out_stall_out_0(bb_kernel_3mm_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_in_0(bb_kernel_3mm_B1_start_out_valid_in_0),
        .out_valid_in_1(bb_kernel_3mm_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_kernel_3mm_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B19(BLACKBOX,30)
    kernel_3mm_bb_B19 thebb_kernel_3mm_B19 (
        .in_feedback_stall_in_1(bb_kernel_3mm_B1_start_out_feedback_stall_out_1),
        .in_iowr_bl_return_kernel_3mm_i_fifoready(in_iowr_bl_return_kernel_3mm_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_kernel_3mm_B19_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_kernel_3mm_B19_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_kernel_3mm_B19_out_feedback_valid_out_1),
        .out_iowr_bl_return_kernel_3mm_o_fifodata(bb_kernel_3mm_B19_out_iowr_bl_return_kernel_3mm_o_fifodata),
        .out_iowr_bl_return_kernel_3mm_o_fifovalid(bb_kernel_3mm_B19_out_iowr_bl_return_kernel_3mm_o_fifovalid),
        .out_stall_in_0(bb_kernel_3mm_B19_out_stall_in_0),
        .out_stall_out_0(bb_kernel_3mm_B19_out_stall_out_0),
        .out_valid_out_0(bb_kernel_3mm_B19_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // kernel_3mm_B1_start_x(EXTIFACE,250)
    assign kernel_3mm_B1_start_x_i_capture = GND_q;
    assign kernel_3mm_B1_start_x_i_clear = GND_q;
    assign kernel_3mm_B1_start_x_i_enable = VCC_q;
    assign kernel_3mm_B1_start_x_i_shift = GND_q;
    assign kernel_3mm_B1_start_x_i_stall_pred = GND_q;
    assign kernel_3mm_B1_start_x_i_stall_succ = bb_kernel_3mm_B19_out_stall_in_0;
    assign kernel_3mm_B1_start_x_i_valid_loop = bb_kernel_3mm_B1_start_out_valid_in_0;
    assign kernel_3mm_B1_start_x_i_valid_pred = bb_kernel_3mm_B1_start_out_valid_in_1;
    assign kernel_3mm_B1_start_x_i_valid_succ = bb_kernel_3mm_B19_out_valid_out_0;
    assign kernel_3mm_B1_start_x_i_capture_bitsignaltemp = kernel_3mm_B1_start_x_i_capture[0];
    assign kernel_3mm_B1_start_x_i_clear_bitsignaltemp = kernel_3mm_B1_start_x_i_clear[0];
    assign kernel_3mm_B1_start_x_i_enable_bitsignaltemp = kernel_3mm_B1_start_x_i_enable[0];
    assign kernel_3mm_B1_start_x_i_shift_bitsignaltemp = kernel_3mm_B1_start_x_i_shift[0];
    assign kernel_3mm_B1_start_x_i_stall_pred_bitsignaltemp = kernel_3mm_B1_start_x_i_stall_pred[0];
    assign kernel_3mm_B1_start_x_i_stall_succ_bitsignaltemp = kernel_3mm_B1_start_x_i_stall_succ[0];
    assign kernel_3mm_B1_start_x_i_valid_loop_bitsignaltemp = kernel_3mm_B1_start_x_i_valid_loop[0];
    assign kernel_3mm_B1_start_x_i_valid_pred_bitsignaltemp = kernel_3mm_B1_start_x_i_valid_pred[0];
    assign kernel_3mm_B1_start_x_i_valid_succ_bitsignaltemp = kernel_3mm_B1_start_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_3mm.B1.start")
    ) thekernel_3mm_B1_start_x (
        .i_capture(kernel_3mm_B1_start_x_i_capture_bitsignaltemp),
        .i_clear(kernel_3mm_B1_start_x_i_clear_bitsignaltemp),
        .i_enable(kernel_3mm_B1_start_x_i_enable_bitsignaltemp),
        .i_shift(kernel_3mm_B1_start_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_3mm_B1_start_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_3mm_B1_start_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_3mm_B1_start_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_3mm_B1_start_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_3mm_B1_start_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B10_x(EXTIFACE,251)
    assign kernel_3mm_B10_x_i_capture = GND_q;
    assign kernel_3mm_B10_x_i_clear = GND_q;
    assign kernel_3mm_B10_x_i_enable = VCC_q;
    assign kernel_3mm_B10_x_i_shift = GND_q;
    assign kernel_3mm_B10_x_i_stall_pred = loop_limiter_kernel_3mm7_out_o_stall;
    assign kernel_3mm_B10_x_i_stall_succ = bb_kernel_3mm_B10_out_stall_in_0;
    assign kernel_3mm_B10_x_i_valid_loop = bb_kernel_3mm_B10_out_valid_in_0;
    assign kernel_3mm_B10_x_i_valid_pred = bb_kernel_3mm_B10_out_valid_in_1;
    assign kernel_3mm_B10_x_i_valid_succ = bb_kernel_3mm_B10_out_valid_out_0;
    assign kernel_3mm_B10_x_i_capture_bitsignaltemp = kernel_3mm_B10_x_i_capture[0];
    assign kernel_3mm_B10_x_i_clear_bitsignaltemp = kernel_3mm_B10_x_i_clear[0];
    assign kernel_3mm_B10_x_i_enable_bitsignaltemp = kernel_3mm_B10_x_i_enable[0];
    assign kernel_3mm_B10_x_i_shift_bitsignaltemp = kernel_3mm_B10_x_i_shift[0];
    assign kernel_3mm_B10_x_i_stall_pred_bitsignaltemp = kernel_3mm_B10_x_i_stall_pred[0];
    assign kernel_3mm_B10_x_i_stall_succ_bitsignaltemp = kernel_3mm_B10_x_i_stall_succ[0];
    assign kernel_3mm_B10_x_i_valid_loop_bitsignaltemp = kernel_3mm_B10_x_i_valid_loop[0];
    assign kernel_3mm_B10_x_i_valid_pred_bitsignaltemp = kernel_3mm_B10_x_i_valid_pred[0];
    assign kernel_3mm_B10_x_i_valid_succ_bitsignaltemp = kernel_3mm_B10_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_3mm.B10")
    ) thekernel_3mm_B10_x (
        .i_capture(kernel_3mm_B10_x_i_capture_bitsignaltemp),
        .i_clear(kernel_3mm_B10_x_i_clear_bitsignaltemp),
        .i_enable(kernel_3mm_B10_x_i_enable_bitsignaltemp),
        .i_shift(kernel_3mm_B10_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_3mm_B10_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_3mm_B10_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_3mm_B10_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_3mm_B10_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_3mm_B10_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B14_x(EXTIFACE,252)
    assign kernel_3mm_B14_x_i_capture = GND_q;
    assign kernel_3mm_B14_x_i_clear = GND_q;
    assign kernel_3mm_B14_x_i_enable = VCC_q;
    assign kernel_3mm_B14_x_i_shift = GND_q;
    assign kernel_3mm_B14_x_i_stall_pred = loop_limiter_kernel_3mm2_out_o_stall;
    assign kernel_3mm_B14_x_i_stall_succ = bb_kernel_3mm_B18_out_stall_in_0;
    assign kernel_3mm_B14_x_i_valid_loop = bb_kernel_3mm_B14_out_valid_in_0;
    assign kernel_3mm_B14_x_i_valid_pred = bb_kernel_3mm_B14_out_valid_in_1;
    assign kernel_3mm_B14_x_i_valid_succ = bb_kernel_3mm_B18_out_valid_out_0;
    assign kernel_3mm_B14_x_i_capture_bitsignaltemp = kernel_3mm_B14_x_i_capture[0];
    assign kernel_3mm_B14_x_i_clear_bitsignaltemp = kernel_3mm_B14_x_i_clear[0];
    assign kernel_3mm_B14_x_i_enable_bitsignaltemp = kernel_3mm_B14_x_i_enable[0];
    assign kernel_3mm_B14_x_i_shift_bitsignaltemp = kernel_3mm_B14_x_i_shift[0];
    assign kernel_3mm_B14_x_i_stall_pred_bitsignaltemp = kernel_3mm_B14_x_i_stall_pred[0];
    assign kernel_3mm_B14_x_i_stall_succ_bitsignaltemp = kernel_3mm_B14_x_i_stall_succ[0];
    assign kernel_3mm_B14_x_i_valid_loop_bitsignaltemp = kernel_3mm_B14_x_i_valid_loop[0];
    assign kernel_3mm_B14_x_i_valid_pred_bitsignaltemp = kernel_3mm_B14_x_i_valid_pred[0];
    assign kernel_3mm_B14_x_i_valid_succ_bitsignaltemp = kernel_3mm_B14_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_3mm.B14")
    ) thekernel_3mm_B14_x (
        .i_capture(kernel_3mm_B14_x_i_capture_bitsignaltemp),
        .i_clear(kernel_3mm_B14_x_i_clear_bitsignaltemp),
        .i_enable(kernel_3mm_B14_x_i_enable_bitsignaltemp),
        .i_shift(kernel_3mm_B14_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_3mm_B14_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_3mm_B14_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_3mm_B14_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_3mm_B14_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_3mm_B14_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B15_x(EXTIFACE,253)
    assign kernel_3mm_B15_x_i_capture = GND_q;
    assign kernel_3mm_B15_x_i_clear = GND_q;
    assign kernel_3mm_B15_x_i_enable = VCC_q;
    assign kernel_3mm_B15_x_i_shift = GND_q;
    assign kernel_3mm_B15_x_i_stall_pred = loop_limiter_kernel_3mm5_out_o_stall;
    assign kernel_3mm_B15_x_i_stall_succ = bb_kernel_3mm_B17_out_stall_in_0;
    assign kernel_3mm_B15_x_i_valid_loop = bb_kernel_3mm_B15_out_valid_in_0;
    assign kernel_3mm_B15_x_i_valid_pred = bb_kernel_3mm_B15_out_valid_in_1;
    assign kernel_3mm_B15_x_i_valid_succ = bb_kernel_3mm_B17_out_valid_out_0;
    assign kernel_3mm_B15_x_i_capture_bitsignaltemp = kernel_3mm_B15_x_i_capture[0];
    assign kernel_3mm_B15_x_i_clear_bitsignaltemp = kernel_3mm_B15_x_i_clear[0];
    assign kernel_3mm_B15_x_i_enable_bitsignaltemp = kernel_3mm_B15_x_i_enable[0];
    assign kernel_3mm_B15_x_i_shift_bitsignaltemp = kernel_3mm_B15_x_i_shift[0];
    assign kernel_3mm_B15_x_i_stall_pred_bitsignaltemp = kernel_3mm_B15_x_i_stall_pred[0];
    assign kernel_3mm_B15_x_i_stall_succ_bitsignaltemp = kernel_3mm_B15_x_i_stall_succ[0];
    assign kernel_3mm_B15_x_i_valid_loop_bitsignaltemp = kernel_3mm_B15_x_i_valid_loop[0];
    assign kernel_3mm_B15_x_i_valid_pred_bitsignaltemp = kernel_3mm_B15_x_i_valid_pred[0];
    assign kernel_3mm_B15_x_i_valid_succ_bitsignaltemp = kernel_3mm_B15_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_3mm.B15")
    ) thekernel_3mm_B15_x (
        .i_capture(kernel_3mm_B15_x_i_capture_bitsignaltemp),
        .i_clear(kernel_3mm_B15_x_i_clear_bitsignaltemp),
        .i_enable(kernel_3mm_B15_x_i_enable_bitsignaltemp),
        .i_shift(kernel_3mm_B15_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_3mm_B15_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_3mm_B15_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_3mm_B15_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_3mm_B15_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_3mm_B15_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B16_x(EXTIFACE,254)
    assign kernel_3mm_B16_x_i_capture = GND_q;
    assign kernel_3mm_B16_x_i_clear = GND_q;
    assign kernel_3mm_B16_x_i_enable = VCC_q;
    assign kernel_3mm_B16_x_i_shift = GND_q;
    assign kernel_3mm_B16_x_i_stall_pred = loop_limiter_kernel_3mm8_out_o_stall;
    assign kernel_3mm_B16_x_i_stall_succ = bb_kernel_3mm_B16_out_stall_in_0;
    assign kernel_3mm_B16_x_i_valid_loop = bb_kernel_3mm_B16_out_valid_in_0;
    assign kernel_3mm_B16_x_i_valid_pred = bb_kernel_3mm_B16_out_valid_in_1;
    assign kernel_3mm_B16_x_i_valid_succ = bb_kernel_3mm_B16_out_valid_out_0;
    assign kernel_3mm_B16_x_i_capture_bitsignaltemp = kernel_3mm_B16_x_i_capture[0];
    assign kernel_3mm_B16_x_i_clear_bitsignaltemp = kernel_3mm_B16_x_i_clear[0];
    assign kernel_3mm_B16_x_i_enable_bitsignaltemp = kernel_3mm_B16_x_i_enable[0];
    assign kernel_3mm_B16_x_i_shift_bitsignaltemp = kernel_3mm_B16_x_i_shift[0];
    assign kernel_3mm_B16_x_i_stall_pred_bitsignaltemp = kernel_3mm_B16_x_i_stall_pred[0];
    assign kernel_3mm_B16_x_i_stall_succ_bitsignaltemp = kernel_3mm_B16_x_i_stall_succ[0];
    assign kernel_3mm_B16_x_i_valid_loop_bitsignaltemp = kernel_3mm_B16_x_i_valid_loop[0];
    assign kernel_3mm_B16_x_i_valid_pred_bitsignaltemp = kernel_3mm_B16_x_i_valid_pred[0];
    assign kernel_3mm_B16_x_i_valid_succ_bitsignaltemp = kernel_3mm_B16_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_3mm.B16")
    ) thekernel_3mm_B16_x (
        .i_capture(kernel_3mm_B16_x_i_capture_bitsignaltemp),
        .i_clear(kernel_3mm_B16_x_i_clear_bitsignaltemp),
        .i_enable(kernel_3mm_B16_x_i_enable_bitsignaltemp),
        .i_shift(kernel_3mm_B16_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_3mm_B16_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_3mm_B16_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_3mm_B16_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_3mm_B16_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_3mm_B16_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B2_x(EXTIFACE,255)
    assign kernel_3mm_B2_x_i_capture = GND_q;
    assign kernel_3mm_B2_x_i_clear = GND_q;
    assign kernel_3mm_B2_x_i_enable = VCC_q;
    assign kernel_3mm_B2_x_i_shift = GND_q;
    assign kernel_3mm_B2_x_i_stall_pred = loop_limiter_kernel_3mm0_out_o_stall;
    assign kernel_3mm_B2_x_i_stall_succ = bb_kernel_3mm_B6_out_stall_in_0;
    assign kernel_3mm_B2_x_i_valid_loop = bb_kernel_3mm_B2_out_valid_in_0;
    assign kernel_3mm_B2_x_i_valid_pred = bb_kernel_3mm_B2_out_valid_in_1;
    assign kernel_3mm_B2_x_i_valid_succ = bb_kernel_3mm_B6_out_valid_out_0;
    assign kernel_3mm_B2_x_i_capture_bitsignaltemp = kernel_3mm_B2_x_i_capture[0];
    assign kernel_3mm_B2_x_i_clear_bitsignaltemp = kernel_3mm_B2_x_i_clear[0];
    assign kernel_3mm_B2_x_i_enable_bitsignaltemp = kernel_3mm_B2_x_i_enable[0];
    assign kernel_3mm_B2_x_i_shift_bitsignaltemp = kernel_3mm_B2_x_i_shift[0];
    assign kernel_3mm_B2_x_i_stall_pred_bitsignaltemp = kernel_3mm_B2_x_i_stall_pred[0];
    assign kernel_3mm_B2_x_i_stall_succ_bitsignaltemp = kernel_3mm_B2_x_i_stall_succ[0];
    assign kernel_3mm_B2_x_i_valid_loop_bitsignaltemp = kernel_3mm_B2_x_i_valid_loop[0];
    assign kernel_3mm_B2_x_i_valid_pred_bitsignaltemp = kernel_3mm_B2_x_i_valid_pred[0];
    assign kernel_3mm_B2_x_i_valid_succ_bitsignaltemp = kernel_3mm_B2_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_3mm.B2")
    ) thekernel_3mm_B2_x (
        .i_capture(kernel_3mm_B2_x_i_capture_bitsignaltemp),
        .i_clear(kernel_3mm_B2_x_i_clear_bitsignaltemp),
        .i_enable(kernel_3mm_B2_x_i_enable_bitsignaltemp),
        .i_shift(kernel_3mm_B2_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_3mm_B2_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_3mm_B2_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_3mm_B2_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_3mm_B2_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_3mm_B2_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B3_x(EXTIFACE,256)
    assign kernel_3mm_B3_x_i_capture = GND_q;
    assign kernel_3mm_B3_x_i_clear = GND_q;
    assign kernel_3mm_B3_x_i_enable = VCC_q;
    assign kernel_3mm_B3_x_i_shift = GND_q;
    assign kernel_3mm_B3_x_i_stall_pred = loop_limiter_kernel_3mm3_out_o_stall;
    assign kernel_3mm_B3_x_i_stall_succ = bb_kernel_3mm_B5_out_stall_in_0;
    assign kernel_3mm_B3_x_i_valid_loop = bb_kernel_3mm_B3_out_valid_in_0;
    assign kernel_3mm_B3_x_i_valid_pred = bb_kernel_3mm_B3_out_valid_in_1;
    assign kernel_3mm_B3_x_i_valid_succ = bb_kernel_3mm_B5_out_valid_out_0;
    assign kernel_3mm_B3_x_i_capture_bitsignaltemp = kernel_3mm_B3_x_i_capture[0];
    assign kernel_3mm_B3_x_i_clear_bitsignaltemp = kernel_3mm_B3_x_i_clear[0];
    assign kernel_3mm_B3_x_i_enable_bitsignaltemp = kernel_3mm_B3_x_i_enable[0];
    assign kernel_3mm_B3_x_i_shift_bitsignaltemp = kernel_3mm_B3_x_i_shift[0];
    assign kernel_3mm_B3_x_i_stall_pred_bitsignaltemp = kernel_3mm_B3_x_i_stall_pred[0];
    assign kernel_3mm_B3_x_i_stall_succ_bitsignaltemp = kernel_3mm_B3_x_i_stall_succ[0];
    assign kernel_3mm_B3_x_i_valid_loop_bitsignaltemp = kernel_3mm_B3_x_i_valid_loop[0];
    assign kernel_3mm_B3_x_i_valid_pred_bitsignaltemp = kernel_3mm_B3_x_i_valid_pred[0];
    assign kernel_3mm_B3_x_i_valid_succ_bitsignaltemp = kernel_3mm_B3_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_3mm.B3")
    ) thekernel_3mm_B3_x (
        .i_capture(kernel_3mm_B3_x_i_capture_bitsignaltemp),
        .i_clear(kernel_3mm_B3_x_i_clear_bitsignaltemp),
        .i_enable(kernel_3mm_B3_x_i_enable_bitsignaltemp),
        .i_shift(kernel_3mm_B3_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_3mm_B3_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_3mm_B3_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_3mm_B3_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_3mm_B3_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_3mm_B3_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B4_x(EXTIFACE,257)
    assign kernel_3mm_B4_x_i_capture = GND_q;
    assign kernel_3mm_B4_x_i_clear = GND_q;
    assign kernel_3mm_B4_x_i_enable = VCC_q;
    assign kernel_3mm_B4_x_i_shift = GND_q;
    assign kernel_3mm_B4_x_i_stall_pred = loop_limiter_kernel_3mm6_out_o_stall;
    assign kernel_3mm_B4_x_i_stall_succ = bb_kernel_3mm_B4_out_stall_in_0;
    assign kernel_3mm_B4_x_i_valid_loop = bb_kernel_3mm_B4_out_valid_in_0;
    assign kernel_3mm_B4_x_i_valid_pred = bb_kernel_3mm_B4_out_valid_in_1;
    assign kernel_3mm_B4_x_i_valid_succ = bb_kernel_3mm_B4_out_valid_out_0;
    assign kernel_3mm_B4_x_i_capture_bitsignaltemp = kernel_3mm_B4_x_i_capture[0];
    assign kernel_3mm_B4_x_i_clear_bitsignaltemp = kernel_3mm_B4_x_i_clear[0];
    assign kernel_3mm_B4_x_i_enable_bitsignaltemp = kernel_3mm_B4_x_i_enable[0];
    assign kernel_3mm_B4_x_i_shift_bitsignaltemp = kernel_3mm_B4_x_i_shift[0];
    assign kernel_3mm_B4_x_i_stall_pred_bitsignaltemp = kernel_3mm_B4_x_i_stall_pred[0];
    assign kernel_3mm_B4_x_i_stall_succ_bitsignaltemp = kernel_3mm_B4_x_i_stall_succ[0];
    assign kernel_3mm_B4_x_i_valid_loop_bitsignaltemp = kernel_3mm_B4_x_i_valid_loop[0];
    assign kernel_3mm_B4_x_i_valid_pred_bitsignaltemp = kernel_3mm_B4_x_i_valid_pred[0];
    assign kernel_3mm_B4_x_i_valid_succ_bitsignaltemp = kernel_3mm_B4_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_3mm.B4")
    ) thekernel_3mm_B4_x (
        .i_capture(kernel_3mm_B4_x_i_capture_bitsignaltemp),
        .i_clear(kernel_3mm_B4_x_i_clear_bitsignaltemp),
        .i_enable(kernel_3mm_B4_x_i_enable_bitsignaltemp),
        .i_shift(kernel_3mm_B4_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_3mm_B4_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_3mm_B4_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_3mm_B4_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_3mm_B4_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_3mm_B4_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B8_x(EXTIFACE,258)
    assign kernel_3mm_B8_x_i_capture = GND_q;
    assign kernel_3mm_B8_x_i_clear = GND_q;
    assign kernel_3mm_B8_x_i_enable = VCC_q;
    assign kernel_3mm_B8_x_i_shift = GND_q;
    assign kernel_3mm_B8_x_i_stall_pred = loop_limiter_kernel_3mm1_out_o_stall;
    assign kernel_3mm_B8_x_i_stall_succ = bb_kernel_3mm_B12_out_stall_in_0;
    assign kernel_3mm_B8_x_i_valid_loop = bb_kernel_3mm_B8_out_valid_in_0;
    assign kernel_3mm_B8_x_i_valid_pred = bb_kernel_3mm_B8_out_valid_in_1;
    assign kernel_3mm_B8_x_i_valid_succ = bb_kernel_3mm_B12_out_valid_out_0;
    assign kernel_3mm_B8_x_i_capture_bitsignaltemp = kernel_3mm_B8_x_i_capture[0];
    assign kernel_3mm_B8_x_i_clear_bitsignaltemp = kernel_3mm_B8_x_i_clear[0];
    assign kernel_3mm_B8_x_i_enable_bitsignaltemp = kernel_3mm_B8_x_i_enable[0];
    assign kernel_3mm_B8_x_i_shift_bitsignaltemp = kernel_3mm_B8_x_i_shift[0];
    assign kernel_3mm_B8_x_i_stall_pred_bitsignaltemp = kernel_3mm_B8_x_i_stall_pred[0];
    assign kernel_3mm_B8_x_i_stall_succ_bitsignaltemp = kernel_3mm_B8_x_i_stall_succ[0];
    assign kernel_3mm_B8_x_i_valid_loop_bitsignaltemp = kernel_3mm_B8_x_i_valid_loop[0];
    assign kernel_3mm_B8_x_i_valid_pred_bitsignaltemp = kernel_3mm_B8_x_i_valid_pred[0];
    assign kernel_3mm_B8_x_i_valid_succ_bitsignaltemp = kernel_3mm_B8_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_3mm.B8")
    ) thekernel_3mm_B8_x (
        .i_capture(kernel_3mm_B8_x_i_capture_bitsignaltemp),
        .i_clear(kernel_3mm_B8_x_i_clear_bitsignaltemp),
        .i_enable(kernel_3mm_B8_x_i_enable_bitsignaltemp),
        .i_shift(kernel_3mm_B8_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_3mm_B8_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_3mm_B8_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_3mm_B8_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_3mm_B8_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_3mm_B8_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B9_x(EXTIFACE,259)
    assign kernel_3mm_B9_x_i_capture = GND_q;
    assign kernel_3mm_B9_x_i_clear = GND_q;
    assign kernel_3mm_B9_x_i_enable = VCC_q;
    assign kernel_3mm_B9_x_i_shift = GND_q;
    assign kernel_3mm_B9_x_i_stall_pred = loop_limiter_kernel_3mm4_out_o_stall;
    assign kernel_3mm_B9_x_i_stall_succ = bb_kernel_3mm_B11_out_stall_in_0;
    assign kernel_3mm_B9_x_i_valid_loop = bb_kernel_3mm_B9_out_valid_in_0;
    assign kernel_3mm_B9_x_i_valid_pred = bb_kernel_3mm_B9_out_valid_in_1;
    assign kernel_3mm_B9_x_i_valid_succ = bb_kernel_3mm_B11_out_valid_out_0;
    assign kernel_3mm_B9_x_i_capture_bitsignaltemp = kernel_3mm_B9_x_i_capture[0];
    assign kernel_3mm_B9_x_i_clear_bitsignaltemp = kernel_3mm_B9_x_i_clear[0];
    assign kernel_3mm_B9_x_i_enable_bitsignaltemp = kernel_3mm_B9_x_i_enable[0];
    assign kernel_3mm_B9_x_i_shift_bitsignaltemp = kernel_3mm_B9_x_i_shift[0];
    assign kernel_3mm_B9_x_i_stall_pred_bitsignaltemp = kernel_3mm_B9_x_i_stall_pred[0];
    assign kernel_3mm_B9_x_i_stall_succ_bitsignaltemp = kernel_3mm_B9_x_i_stall_succ[0];
    assign kernel_3mm_B9_x_i_valid_loop_bitsignaltemp = kernel_3mm_B9_x_i_valid_loop[0];
    assign kernel_3mm_B9_x_i_valid_pred_bitsignaltemp = kernel_3mm_B9_x_i_valid_pred[0];
    assign kernel_3mm_B9_x_i_valid_succ_bitsignaltemp = kernel_3mm_B9_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_3mm.B9")
    ) thekernel_3mm_B9_x (
        .i_capture(kernel_3mm_B9_x_i_capture_bitsignaltemp),
        .i_clear(kernel_3mm_B9_x_i_clear_bitsignaltemp),
        .i_enable(kernel_3mm_B9_x_i_enable_bitsignaltemp),
        .i_shift(kernel_3mm_B9_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_3mm_B9_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_3mm_B9_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_3mm_B9_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_3mm_B9_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_3mm_B9_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_kernel_3mm_o_fifoalmost_full(GPOUT,269)
    assign out_iord_bl_call_kernel_3mm_o_fifoalmost_full = bb_kernel_3mm_B1_start_out_iord_bl_call_kernel_3mm_o_fifoalmost_full;

    // out_iord_bl_call_kernel_3mm_o_fifoready(GPOUT,270)
    assign out_iord_bl_call_kernel_3mm_o_fifoready = bb_kernel_3mm_B1_start_out_iord_bl_call_kernel_3mm_o_fifoready;

    // out_iowr_bl_return_kernel_3mm_o_fifodata(GPOUT,271)
    assign out_iowr_bl_return_kernel_3mm_o_fifodata = bb_kernel_3mm_B19_out_iowr_bl_return_kernel_3mm_o_fifodata;

    // out_iowr_bl_return_kernel_3mm_o_fifovalid(GPOUT,272)
    assign out_iowr_bl_return_kernel_3mm_o_fifovalid = bb_kernel_3mm_B19_out_iowr_bl_return_kernel_3mm_o_fifovalid;

    // out_memdep_3_kernel_3mm_avm_address(GPOUT,273)
    assign out_memdep_3_kernel_3mm_avm_address = bb_kernel_3mm_B11_out_memdep_3_kernel_3mm_avm_address;

    // out_memdep_3_kernel_3mm_avm_burstcount(GPOUT,274)
    assign out_memdep_3_kernel_3mm_avm_burstcount = bb_kernel_3mm_B11_out_memdep_3_kernel_3mm_avm_burstcount;

    // out_memdep_3_kernel_3mm_avm_byteenable(GPOUT,275)
    assign out_memdep_3_kernel_3mm_avm_byteenable = bb_kernel_3mm_B11_out_memdep_3_kernel_3mm_avm_byteenable;

    // out_memdep_3_kernel_3mm_avm_enable(GPOUT,276)
    assign out_memdep_3_kernel_3mm_avm_enable = bb_kernel_3mm_B11_out_memdep_3_kernel_3mm_avm_enable;

    // out_memdep_3_kernel_3mm_avm_read(GPOUT,277)
    assign out_memdep_3_kernel_3mm_avm_read = bb_kernel_3mm_B11_out_memdep_3_kernel_3mm_avm_read;

    // out_memdep_3_kernel_3mm_avm_write(GPOUT,278)
    assign out_memdep_3_kernel_3mm_avm_write = bb_kernel_3mm_B11_out_memdep_3_kernel_3mm_avm_write;

    // out_memdep_3_kernel_3mm_avm_writedata(GPOUT,279)
    assign out_memdep_3_kernel_3mm_avm_writedata = bb_kernel_3mm_B11_out_memdep_3_kernel_3mm_avm_writedata;

    // out_memdep_7_kernel_3mm_avm_address(GPOUT,280)
    assign out_memdep_7_kernel_3mm_avm_address = bb_kernel_3mm_B17_out_memdep_7_kernel_3mm_avm_address;

    // out_memdep_7_kernel_3mm_avm_burstcount(GPOUT,281)
    assign out_memdep_7_kernel_3mm_avm_burstcount = bb_kernel_3mm_B17_out_memdep_7_kernel_3mm_avm_burstcount;

    // out_memdep_7_kernel_3mm_avm_byteenable(GPOUT,282)
    assign out_memdep_7_kernel_3mm_avm_byteenable = bb_kernel_3mm_B17_out_memdep_7_kernel_3mm_avm_byteenable;

    // out_memdep_7_kernel_3mm_avm_enable(GPOUT,283)
    assign out_memdep_7_kernel_3mm_avm_enable = bb_kernel_3mm_B17_out_memdep_7_kernel_3mm_avm_enable;

    // out_memdep_7_kernel_3mm_avm_read(GPOUT,284)
    assign out_memdep_7_kernel_3mm_avm_read = bb_kernel_3mm_B17_out_memdep_7_kernel_3mm_avm_read;

    // out_memdep_7_kernel_3mm_avm_write(GPOUT,285)
    assign out_memdep_7_kernel_3mm_avm_write = bb_kernel_3mm_B17_out_memdep_7_kernel_3mm_avm_write;

    // out_memdep_7_kernel_3mm_avm_writedata(GPOUT,286)
    assign out_memdep_7_kernel_3mm_avm_writedata = bb_kernel_3mm_B17_out_memdep_7_kernel_3mm_avm_writedata;

    // out_memdep_kernel_3mm_avm_address(GPOUT,287)
    assign out_memdep_kernel_3mm_avm_address = bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_address;

    // out_memdep_kernel_3mm_avm_burstcount(GPOUT,288)
    assign out_memdep_kernel_3mm_avm_burstcount = bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_burstcount;

    // out_memdep_kernel_3mm_avm_byteenable(GPOUT,289)
    assign out_memdep_kernel_3mm_avm_byteenable = bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_byteenable;

    // out_memdep_kernel_3mm_avm_enable(GPOUT,290)
    assign out_memdep_kernel_3mm_avm_enable = bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_enable;

    // out_memdep_kernel_3mm_avm_read(GPOUT,291)
    assign out_memdep_kernel_3mm_avm_read = bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_read;

    // out_memdep_kernel_3mm_avm_write(GPOUT,292)
    assign out_memdep_kernel_3mm_avm_write = bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_write;

    // out_memdep_kernel_3mm_avm_writedata(GPOUT,293)
    assign out_memdep_kernel_3mm_avm_writedata = bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_writedata;

    // out_o_active_memdep(GPOUT,294)
    assign out_o_active_memdep = bb_kernel_3mm_B5_out_lsu_memdep_o_active;

    // out_o_active_memdep_3(GPOUT,295)
    assign out_o_active_memdep_3 = bb_kernel_3mm_B11_out_lsu_memdep_3_o_active;

    // out_o_active_memdep_7(GPOUT,296)
    assign out_o_active_memdep_7 = bb_kernel_3mm_B17_out_lsu_memdep_7_o_active;

    // bb_kernel_3mm_B0_runOnce(BLACKBOX,20)
    kernel_3mm_bb_B0_runOnce thebb_kernel_3mm_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_kernel_3mm_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,297)
    assign out_stall_out = bb_kernel_3mm_B0_runOnce_out_stall_out_0;

    // out_unnamed_kernel_3mm10_kernel_3mm_avm_address(GPOUT,298)
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_address = bb_kernel_3mm_B3_out_unnamed_kernel_3mm10_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount(GPOUT,299)
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount = bb_kernel_3mm_B3_out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable(GPOUT,300)
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable = bb_kernel_3mm_B3_out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm10_kernel_3mm_avm_enable(GPOUT,301)
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_enable = bb_kernel_3mm_B3_out_unnamed_kernel_3mm10_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm10_kernel_3mm_avm_read(GPOUT,302)
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_read = bb_kernel_3mm_B3_out_unnamed_kernel_3mm10_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm10_kernel_3mm_avm_write(GPOUT,303)
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_write = bb_kernel_3mm_B3_out_unnamed_kernel_3mm10_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata(GPOUT,304)
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata = bb_kernel_3mm_B3_out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm16_kernel_3mm_avm_address(GPOUT,305)
    assign out_unnamed_kernel_3mm16_kernel_3mm_avm_address = bb_kernel_3mm_B4_out_unnamed_kernel_3mm16_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm16_kernel_3mm_avm_burstcount(GPOUT,306)
    assign out_unnamed_kernel_3mm16_kernel_3mm_avm_burstcount = bb_kernel_3mm_B4_out_unnamed_kernel_3mm16_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm16_kernel_3mm_avm_byteenable(GPOUT,307)
    assign out_unnamed_kernel_3mm16_kernel_3mm_avm_byteenable = bb_kernel_3mm_B4_out_unnamed_kernel_3mm16_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm16_kernel_3mm_avm_enable(GPOUT,308)
    assign out_unnamed_kernel_3mm16_kernel_3mm_avm_enable = bb_kernel_3mm_B4_out_unnamed_kernel_3mm16_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm16_kernel_3mm_avm_read(GPOUT,309)
    assign out_unnamed_kernel_3mm16_kernel_3mm_avm_read = bb_kernel_3mm_B4_out_unnamed_kernel_3mm16_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm16_kernel_3mm_avm_write(GPOUT,310)
    assign out_unnamed_kernel_3mm16_kernel_3mm_avm_write = bb_kernel_3mm_B4_out_unnamed_kernel_3mm16_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm16_kernel_3mm_avm_writedata(GPOUT,311)
    assign out_unnamed_kernel_3mm16_kernel_3mm_avm_writedata = bb_kernel_3mm_B4_out_unnamed_kernel_3mm16_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm17_kernel_3mm_avm_address(GPOUT,312)
    assign out_unnamed_kernel_3mm17_kernel_3mm_avm_address = bb_kernel_3mm_B4_out_unnamed_kernel_3mm17_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm17_kernel_3mm_avm_burstcount(GPOUT,313)
    assign out_unnamed_kernel_3mm17_kernel_3mm_avm_burstcount = bb_kernel_3mm_B4_out_unnamed_kernel_3mm17_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm17_kernel_3mm_avm_byteenable(GPOUT,314)
    assign out_unnamed_kernel_3mm17_kernel_3mm_avm_byteenable = bb_kernel_3mm_B4_out_unnamed_kernel_3mm17_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm17_kernel_3mm_avm_enable(GPOUT,315)
    assign out_unnamed_kernel_3mm17_kernel_3mm_avm_enable = bb_kernel_3mm_B4_out_unnamed_kernel_3mm17_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm17_kernel_3mm_avm_read(GPOUT,316)
    assign out_unnamed_kernel_3mm17_kernel_3mm_avm_read = bb_kernel_3mm_B4_out_unnamed_kernel_3mm17_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm17_kernel_3mm_avm_write(GPOUT,317)
    assign out_unnamed_kernel_3mm17_kernel_3mm_avm_write = bb_kernel_3mm_B4_out_unnamed_kernel_3mm17_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm17_kernel_3mm_avm_writedata(GPOUT,318)
    assign out_unnamed_kernel_3mm17_kernel_3mm_avm_writedata = bb_kernel_3mm_B4_out_unnamed_kernel_3mm17_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm20_kernel_3mm_avm_address(GPOUT,319)
    assign out_unnamed_kernel_3mm20_kernel_3mm_avm_address = bb_kernel_3mm_B9_out_unnamed_kernel_3mm20_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm20_kernel_3mm_avm_burstcount(GPOUT,320)
    assign out_unnamed_kernel_3mm20_kernel_3mm_avm_burstcount = bb_kernel_3mm_B9_out_unnamed_kernel_3mm20_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm20_kernel_3mm_avm_byteenable(GPOUT,321)
    assign out_unnamed_kernel_3mm20_kernel_3mm_avm_byteenable = bb_kernel_3mm_B9_out_unnamed_kernel_3mm20_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm20_kernel_3mm_avm_enable(GPOUT,322)
    assign out_unnamed_kernel_3mm20_kernel_3mm_avm_enable = bb_kernel_3mm_B9_out_unnamed_kernel_3mm20_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm20_kernel_3mm_avm_read(GPOUT,323)
    assign out_unnamed_kernel_3mm20_kernel_3mm_avm_read = bb_kernel_3mm_B9_out_unnamed_kernel_3mm20_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm20_kernel_3mm_avm_write(GPOUT,324)
    assign out_unnamed_kernel_3mm20_kernel_3mm_avm_write = bb_kernel_3mm_B9_out_unnamed_kernel_3mm20_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm20_kernel_3mm_avm_writedata(GPOUT,325)
    assign out_unnamed_kernel_3mm20_kernel_3mm_avm_writedata = bb_kernel_3mm_B9_out_unnamed_kernel_3mm20_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm26_kernel_3mm_avm_address(GPOUT,326)
    assign out_unnamed_kernel_3mm26_kernel_3mm_avm_address = bb_kernel_3mm_B10_out_unnamed_kernel_3mm26_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm26_kernel_3mm_avm_burstcount(GPOUT,327)
    assign out_unnamed_kernel_3mm26_kernel_3mm_avm_burstcount = bb_kernel_3mm_B10_out_unnamed_kernel_3mm26_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm26_kernel_3mm_avm_byteenable(GPOUT,328)
    assign out_unnamed_kernel_3mm26_kernel_3mm_avm_byteenable = bb_kernel_3mm_B10_out_unnamed_kernel_3mm26_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm26_kernel_3mm_avm_enable(GPOUT,329)
    assign out_unnamed_kernel_3mm26_kernel_3mm_avm_enable = bb_kernel_3mm_B10_out_unnamed_kernel_3mm26_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm26_kernel_3mm_avm_read(GPOUT,330)
    assign out_unnamed_kernel_3mm26_kernel_3mm_avm_read = bb_kernel_3mm_B10_out_unnamed_kernel_3mm26_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm26_kernel_3mm_avm_write(GPOUT,331)
    assign out_unnamed_kernel_3mm26_kernel_3mm_avm_write = bb_kernel_3mm_B10_out_unnamed_kernel_3mm26_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm26_kernel_3mm_avm_writedata(GPOUT,332)
    assign out_unnamed_kernel_3mm26_kernel_3mm_avm_writedata = bb_kernel_3mm_B10_out_unnamed_kernel_3mm26_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm27_kernel_3mm_avm_address(GPOUT,333)
    assign out_unnamed_kernel_3mm27_kernel_3mm_avm_address = bb_kernel_3mm_B10_out_unnamed_kernel_3mm27_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm27_kernel_3mm_avm_burstcount(GPOUT,334)
    assign out_unnamed_kernel_3mm27_kernel_3mm_avm_burstcount = bb_kernel_3mm_B10_out_unnamed_kernel_3mm27_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm27_kernel_3mm_avm_byteenable(GPOUT,335)
    assign out_unnamed_kernel_3mm27_kernel_3mm_avm_byteenable = bb_kernel_3mm_B10_out_unnamed_kernel_3mm27_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm27_kernel_3mm_avm_enable(GPOUT,336)
    assign out_unnamed_kernel_3mm27_kernel_3mm_avm_enable = bb_kernel_3mm_B10_out_unnamed_kernel_3mm27_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm27_kernel_3mm_avm_read(GPOUT,337)
    assign out_unnamed_kernel_3mm27_kernel_3mm_avm_read = bb_kernel_3mm_B10_out_unnamed_kernel_3mm27_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm27_kernel_3mm_avm_write(GPOUT,338)
    assign out_unnamed_kernel_3mm27_kernel_3mm_avm_write = bb_kernel_3mm_B10_out_unnamed_kernel_3mm27_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm27_kernel_3mm_avm_writedata(GPOUT,339)
    assign out_unnamed_kernel_3mm27_kernel_3mm_avm_writedata = bb_kernel_3mm_B10_out_unnamed_kernel_3mm27_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm29_kernel_3mm_avm_address(GPOUT,340)
    assign out_unnamed_kernel_3mm29_kernel_3mm_avm_address = bb_kernel_3mm_B15_out_unnamed_kernel_3mm29_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm29_kernel_3mm_avm_burstcount(GPOUT,341)
    assign out_unnamed_kernel_3mm29_kernel_3mm_avm_burstcount = bb_kernel_3mm_B15_out_unnamed_kernel_3mm29_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm29_kernel_3mm_avm_byteenable(GPOUT,342)
    assign out_unnamed_kernel_3mm29_kernel_3mm_avm_byteenable = bb_kernel_3mm_B15_out_unnamed_kernel_3mm29_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm29_kernel_3mm_avm_enable(GPOUT,343)
    assign out_unnamed_kernel_3mm29_kernel_3mm_avm_enable = bb_kernel_3mm_B15_out_unnamed_kernel_3mm29_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm29_kernel_3mm_avm_read(GPOUT,344)
    assign out_unnamed_kernel_3mm29_kernel_3mm_avm_read = bb_kernel_3mm_B15_out_unnamed_kernel_3mm29_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm29_kernel_3mm_avm_write(GPOUT,345)
    assign out_unnamed_kernel_3mm29_kernel_3mm_avm_write = bb_kernel_3mm_B15_out_unnamed_kernel_3mm29_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm29_kernel_3mm_avm_writedata(GPOUT,346)
    assign out_unnamed_kernel_3mm29_kernel_3mm_avm_writedata = bb_kernel_3mm_B15_out_unnamed_kernel_3mm29_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm34_kernel_3mm_avm_address(GPOUT,347)
    assign out_unnamed_kernel_3mm34_kernel_3mm_avm_address = bb_kernel_3mm_B16_out_unnamed_kernel_3mm34_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm34_kernel_3mm_avm_burstcount(GPOUT,348)
    assign out_unnamed_kernel_3mm34_kernel_3mm_avm_burstcount = bb_kernel_3mm_B16_out_unnamed_kernel_3mm34_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm34_kernel_3mm_avm_byteenable(GPOUT,349)
    assign out_unnamed_kernel_3mm34_kernel_3mm_avm_byteenable = bb_kernel_3mm_B16_out_unnamed_kernel_3mm34_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm34_kernel_3mm_avm_enable(GPOUT,350)
    assign out_unnamed_kernel_3mm34_kernel_3mm_avm_enable = bb_kernel_3mm_B16_out_unnamed_kernel_3mm34_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm34_kernel_3mm_avm_read(GPOUT,351)
    assign out_unnamed_kernel_3mm34_kernel_3mm_avm_read = bb_kernel_3mm_B16_out_unnamed_kernel_3mm34_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm34_kernel_3mm_avm_write(GPOUT,352)
    assign out_unnamed_kernel_3mm34_kernel_3mm_avm_write = bb_kernel_3mm_B16_out_unnamed_kernel_3mm34_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm34_kernel_3mm_avm_writedata(GPOUT,353)
    assign out_unnamed_kernel_3mm34_kernel_3mm_avm_writedata = bb_kernel_3mm_B16_out_unnamed_kernel_3mm34_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm35_kernel_3mm_avm_address(GPOUT,354)
    assign out_unnamed_kernel_3mm35_kernel_3mm_avm_address = bb_kernel_3mm_B16_out_unnamed_kernel_3mm35_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm35_kernel_3mm_avm_burstcount(GPOUT,355)
    assign out_unnamed_kernel_3mm35_kernel_3mm_avm_burstcount = bb_kernel_3mm_B16_out_unnamed_kernel_3mm35_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm35_kernel_3mm_avm_byteenable(GPOUT,356)
    assign out_unnamed_kernel_3mm35_kernel_3mm_avm_byteenable = bb_kernel_3mm_B16_out_unnamed_kernel_3mm35_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm35_kernel_3mm_avm_enable(GPOUT,357)
    assign out_unnamed_kernel_3mm35_kernel_3mm_avm_enable = bb_kernel_3mm_B16_out_unnamed_kernel_3mm35_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm35_kernel_3mm_avm_read(GPOUT,358)
    assign out_unnamed_kernel_3mm35_kernel_3mm_avm_read = bb_kernel_3mm_B16_out_unnamed_kernel_3mm35_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm35_kernel_3mm_avm_write(GPOUT,359)
    assign out_unnamed_kernel_3mm35_kernel_3mm_avm_write = bb_kernel_3mm_B16_out_unnamed_kernel_3mm35_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm35_kernel_3mm_avm_writedata(GPOUT,360)
    assign out_unnamed_kernel_3mm35_kernel_3mm_avm_writedata = bb_kernel_3mm_B16_out_unnamed_kernel_3mm35_kernel_3mm_avm_writedata;

    // out_valid_out(GPOUT,361)
    assign out_valid_out = GND_q;

endmodule
