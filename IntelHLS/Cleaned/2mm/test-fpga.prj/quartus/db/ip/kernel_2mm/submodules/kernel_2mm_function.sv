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

// SystemVerilog created from kernel_2mm_function
// Created for function/kernel kernel_2mm
// SystemVerilog created on Tue Jun 13 12:37:16 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_function (
    input wire [63:0] in_arg_A,
    input wire [63:0] in_arg_B,
    input wire [63:0] in_arg_C,
    input wire [63:0] in_arg_D,
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_return,
    input wire [319:0] in_iord_bl_call_kernel_2mm_i_fifodata,
    input wire [0:0] in_iord_bl_call_kernel_2mm_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_kernel_2mm_i_fifoready,
    input wire [31:0] in_memdep_1_kernel_2mm_avm_readdata,
    input wire [0:0] in_memdep_1_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_memdep_1_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_memdep_1_kernel_2mm_avm_writeack,
    input wire [31:0] in_memdep_2_kernel_2mm_avm_readdata,
    input wire [0:0] in_memdep_2_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_memdep_2_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_memdep_2_kernel_2mm_avm_writeack,
    input wire [31:0] in_memdep_kernel_2mm_avm_readdata,
    input wire [0:0] in_memdep_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_memdep_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_memdep_kernel_2mm_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [31:0] in_unnamed_kernel_2mm11_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm11_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm11_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm11_kernel_2mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_2mm15_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm15_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm15_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm15_kernel_2mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_2mm16_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm16_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm16_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm16_kernel_2mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_2mm19_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm19_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm19_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm19_kernel_2mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_2mm20_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm20_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm20_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm20_kernel_2mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_2mm22_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm22_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm22_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm22_kernel_2mm_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_kernel_2mm_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_kernel_2mm_o_fifoready,
    output wire [0:0] out_iowr_bl_return_kernel_2mm_o_fifodata,
    output wire [0:0] out_iowr_bl_return_kernel_2mm_o_fifovalid,
    output wire [31:0] out_memdep_1_kernel_2mm_avm_address,
    output wire [0:0] out_memdep_1_kernel_2mm_avm_burstcount,
    output wire [3:0] out_memdep_1_kernel_2mm_avm_byteenable,
    output wire [0:0] out_memdep_1_kernel_2mm_avm_enable,
    output wire [0:0] out_memdep_1_kernel_2mm_avm_read,
    output wire [0:0] out_memdep_1_kernel_2mm_avm_write,
    output wire [31:0] out_memdep_1_kernel_2mm_avm_writedata,
    output wire [31:0] out_memdep_2_kernel_2mm_avm_address,
    output wire [0:0] out_memdep_2_kernel_2mm_avm_burstcount,
    output wire [3:0] out_memdep_2_kernel_2mm_avm_byteenable,
    output wire [0:0] out_memdep_2_kernel_2mm_avm_enable,
    output wire [0:0] out_memdep_2_kernel_2mm_avm_read,
    output wire [0:0] out_memdep_2_kernel_2mm_avm_write,
    output wire [31:0] out_memdep_2_kernel_2mm_avm_writedata,
    output wire [31:0] out_memdep_kernel_2mm_avm_address,
    output wire [0:0] out_memdep_kernel_2mm_avm_burstcount,
    output wire [3:0] out_memdep_kernel_2mm_avm_byteenable,
    output wire [0:0] out_memdep_kernel_2mm_avm_enable,
    output wire [0:0] out_memdep_kernel_2mm_avm_read,
    output wire [0:0] out_memdep_kernel_2mm_avm_write,
    output wire [31:0] out_memdep_kernel_2mm_avm_writedata,
    output wire [0:0] out_o_active_memdep_2,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_2mm16_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm16_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm16_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm16_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm16_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm16_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm16_kernel_2mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_2mm19_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm19_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm19_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm19_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm19_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm19_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm19_kernel_2mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_2mm20_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm20_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm20_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm20_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm20_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm20_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm20_kernel_2mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_2mm22_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm22_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm22_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm22_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm22_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm22_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm22_kernel_2mm_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_kernel_2mm_B10_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [63:0] bb_kernel_2mm_B10_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_kernel_2mm_B10_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_kernel_2mm_B10_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_kernel_2mm_B10_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_2mm_B10_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [63:0] bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [31:0] bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_2mm_B12_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_2mm_B12_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_2mm_B12_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_2mm_B13_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_2mm_B13_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_2mm_B14_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_2mm_B14_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_kernel_2mm_B14_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_kernel_2mm_B14_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_2mm_B14_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_2mm_B16_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_2mm_B16_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_kernel_2mm_B16_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_kernel_2mm_B16_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_kernel_2mm_B16_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_kernel_2mm_B16_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_kernel_2mm_B16_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_2mm_B16_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [63:0] bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [31:0] bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [31:0] bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [0:0] bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_14_tpl;
    wire [0:0] bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_15_tpl;
    wire [0:0] bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_16_tpl;
    wire [0:0] bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_2mm_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_2mm_B2_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_2mm_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_2mm_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_2mm_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_2mm_B4_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_2mm_B4_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_2mm_B4_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_2mm_B5_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_2mm_B5_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_kernel_2mm_B5_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_kernel_2mm_B5_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_2mm_B5_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_2mm_B6_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_2mm_B6_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_2mm_B7_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_2mm_B7_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_2mm_B7_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_2mm_B8_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_2mm_B8_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_2mm_B8_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_2mm_B9_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_kernel_2mm_B9_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_kernel_2mm_B9_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_kernel_2mm_B9_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_kernel_2mm_B9_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_2mm_B9_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_2mm_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B10_out_c0_exe62573;
    wire [31:0] bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B10_out_stall_in_0;
    wire [0:0] bb_kernel_2mm_B10_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B10_out_valid_out_0;
    wire [0:0] bb_kernel_2mm_B11_out_c0_exe6257;
    wire [63:0] bb_kernel_2mm_B11_out_c0_exe7258;
    wire [0:0] bb_kernel_2mm_B11_out_c0_exe8259;
    wire [31:0] bb_kernel_2mm_B11_out_c1_exe1;
    wire [0:0] bb_kernel_2mm_B11_out_exiting_stall_out;
    wire [0:0] bb_kernel_2mm_B11_out_exiting_valid_out;
    wire [0:0] bb_kernel_2mm_B11_out_pipeline_valid_out;
    wire [0:0] bb_kernel_2mm_B11_out_stall_in_0;
    wire [0:0] bb_kernel_2mm_B11_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B11_out_stall_out_1;
    wire [31:0] bb_kernel_2mm_B11_out_unnamed_kernel_2mm15_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B11_out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B11_out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B11_out_unnamed_kernel_2mm15_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B11_out_unnamed_kernel_2mm15_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B11_out_unnamed_kernel_2mm15_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B11_out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata;
    wire [31:0] bb_kernel_2mm_B11_out_unnamed_kernel_2mm16_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B11_out_unnamed_kernel_2mm16_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B11_out_unnamed_kernel_2mm16_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B11_out_unnamed_kernel_2mm16_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B11_out_unnamed_kernel_2mm16_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B11_out_unnamed_kernel_2mm16_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B11_out_unnamed_kernel_2mm16_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B11_out_valid_in_0;
    wire [0:0] bb_kernel_2mm_B11_out_valid_in_1;
    wire [0:0] bb_kernel_2mm_B11_out_valid_out_0;
    wire [31:0] bb_kernel_2mm_B12_out_c0_exe1272;
    wire [31:0] bb_kernel_2mm_B12_out_c0_exe2273;
    wire [0:0] bb_kernel_2mm_B12_out_c0_exe3274;
    wire [0:0] bb_kernel_2mm_B12_out_c0_exe4275;
    wire [0:0] bb_kernel_2mm_B12_out_exiting_stall_out;
    wire [0:0] bb_kernel_2mm_B12_out_exiting_valid_out;
    wire [0:0] bb_kernel_2mm_B12_out_feedback_stall_out_26;
    wire [0:0] bb_kernel_2mm_B12_out_memdep_phi3_pop26;
    wire [0:0] bb_kernel_2mm_B12_out_pipeline_valid_out;
    wire [0:0] bb_kernel_2mm_B12_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B12_out_stall_out_1;
    wire [0:0] bb_kernel_2mm_B12_out_valid_in_0;
    wire [0:0] bb_kernel_2mm_B12_out_valid_in_1;
    wire [0:0] bb_kernel_2mm_B12_out_valid_out_0;
    wire [0:0] bb_kernel_2mm_B13_out_feedback_out_1;
    wire [0:0] bb_kernel_2mm_B13_out_feedback_valid_out_1;
    wire [0:0] bb_kernel_2mm_B13_out_iowr_bl_return_kernel_2mm_o_fifodata;
    wire [0:0] bb_kernel_2mm_B13_out_iowr_bl_return_kernel_2mm_o_fifovalid;
    wire [0:0] bb_kernel_2mm_B13_out_stall_in_0;
    wire [0:0] bb_kernel_2mm_B13_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B13_out_valid_out_0;
    wire [0:0] bb_kernel_2mm_B14_out_feedback_out_26;
    wire [0:0] bb_kernel_2mm_B14_out_feedback_valid_out_26;
    wire [0:0] bb_kernel_2mm_B14_out_stall_in_0;
    wire [0:0] bb_kernel_2mm_B14_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B14_out_valid_out_0;
    wire [31:0] bb_kernel_2mm_B15_out_c0_exe11314;
    wire [31:0] bb_kernel_2mm_B15_out_c0_exe12315;
    wire [31:0] bb_kernel_2mm_B15_out_c0_exe1304;
    wire [0:0] bb_kernel_2mm_B15_out_c0_exe13316;
    wire [0:0] bb_kernel_2mm_B15_out_c0_exe14;
    wire [0:0] bb_kernel_2mm_B15_out_c0_exe15;
    wire [31:0] bb_kernel_2mm_B15_out_c0_exe2305;
    wire [63:0] bb_kernel_2mm_B15_out_c0_exe3306;
    wire [0:0] bb_kernel_2mm_B15_out_c0_exe4307;
    wire [0:0] bb_kernel_2mm_B15_out_c0_exe5308;
    wire [31:0] bb_kernel_2mm_B15_out_c0_exe6309;
    wire [0:0] bb_kernel_2mm_B15_out_c0_exe7310;
    wire [0:0] bb_kernel_2mm_B15_out_c0_exe8311;
    wire [0:0] bb_kernel_2mm_B15_out_c0_exe9312;
    wire [31:0] bb_kernel_2mm_B15_out_c1_exe1322;
    wire [0:0] bb_kernel_2mm_B15_out_exiting_stall_out;
    wire [0:0] bb_kernel_2mm_B15_out_exiting_valid_out;
    wire [0:0] bb_kernel_2mm_B15_out_feedback_stall_out_40;
    wire [0:0] bb_kernel_2mm_B15_out_memdep_phi_pop40;
    wire [0:0] bb_kernel_2mm_B15_out_pipeline_valid_out;
    wire [0:0] bb_kernel_2mm_B15_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B15_out_stall_out_1;
    wire [31:0] bb_kernel_2mm_B15_out_unnamed_kernel_2mm19_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B15_out_unnamed_kernel_2mm19_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B15_out_unnamed_kernel_2mm19_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B15_out_unnamed_kernel_2mm19_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B15_out_unnamed_kernel_2mm19_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B15_out_unnamed_kernel_2mm19_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B15_out_unnamed_kernel_2mm19_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B15_out_valid_in_0;
    wire [0:0] bb_kernel_2mm_B15_out_valid_in_1;
    wire [0:0] bb_kernel_2mm_B15_out_valid_out_0;
    wire [0:0] bb_kernel_2mm_B16_out_c0_exe73689;
    wire [0:0] bb_kernel_2mm_B16_out_c0_exe836911;
    wire [0:0] bb_kernel_2mm_B16_out_feedback_out_40;
    wire [0:0] bb_kernel_2mm_B16_out_feedback_valid_out_40;
    wire [0:0] bb_kernel_2mm_B16_out_lsu_memdep_2_o_active;
    wire [0:0] bb_kernel_2mm_B16_out_memdep_2;
    wire [31:0] bb_kernel_2mm_B16_out_memdep_2_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B16_out_memdep_2_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B16_out_memdep_2_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B16_out_memdep_2_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B16_out_memdep_2_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B16_out_memdep_2_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B16_out_memdep_2_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B16_out_stall_in_0;
    wire [0:0] bb_kernel_2mm_B16_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B16_out_valid_out_0;
    wire [0:0] bb_kernel_2mm_B17_out_c0_exe10371;
    wire [0:0] bb_kernel_2mm_B17_out_c0_exe11372;
    wire [0:0] bb_kernel_2mm_B17_out_c0_exe7368;
    wire [0:0] bb_kernel_2mm_B17_out_c0_exe8369;
    wire [63:0] bb_kernel_2mm_B17_out_c0_exe9370;
    wire [31:0] bb_kernel_2mm_B17_out_c1_exe1390;
    wire [0:0] bb_kernel_2mm_B17_out_exiting_stall_out;
    wire [0:0] bb_kernel_2mm_B17_out_exiting_valid_out;
    wire [0:0] bb_kernel_2mm_B17_out_pipeline_valid_out;
    wire [0:0] bb_kernel_2mm_B17_out_stall_in_0;
    wire [0:0] bb_kernel_2mm_B17_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B17_out_stall_out_1;
    wire [31:0] bb_kernel_2mm_B17_out_unnamed_kernel_2mm20_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B17_out_unnamed_kernel_2mm20_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B17_out_unnamed_kernel_2mm20_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B17_out_unnamed_kernel_2mm20_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B17_out_unnamed_kernel_2mm20_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B17_out_unnamed_kernel_2mm20_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B17_out_unnamed_kernel_2mm20_kernel_2mm_avm_writedata;
    wire [31:0] bb_kernel_2mm_B17_out_unnamed_kernel_2mm22_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B17_out_unnamed_kernel_2mm22_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B17_out_unnamed_kernel_2mm22_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B17_out_unnamed_kernel_2mm22_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B17_out_unnamed_kernel_2mm22_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B17_out_unnamed_kernel_2mm22_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B17_out_unnamed_kernel_2mm22_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B17_out_valid_in_0;
    wire [0:0] bb_kernel_2mm_B17_out_valid_in_1;
    wire [0:0] bb_kernel_2mm_B17_out_valid_out_0;
    wire [0:0] bb_kernel_2mm_B1_start_out_feedback_stall_out_1;
    wire [31:0] bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_0_0;
    wire [31:0] bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_1_0;
    wire [63:0] bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_2_0;
    wire [63:0] bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_3_0;
    wire [63:0] bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_4_0;
    wire [63:0] bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_5_0;
    wire [0:0] bb_kernel_2mm_B1_start_out_iord_bl_call_kernel_2mm_o_fifoalmost_full;
    wire [0:0] bb_kernel_2mm_B1_start_out_iord_bl_call_kernel_2mm_o_fifoready;
    wire [0:0] bb_kernel_2mm_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_kernel_2mm_B1_start_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B1_start_out_valid_in_0;
    wire [0:0] bb_kernel_2mm_B1_start_out_valid_in_1;
    wire [0:0] bb_kernel_2mm_B1_start_out_valid_out_0;
    wire [0:0] bb_kernel_2mm_B2_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B2_out_valid_out_0;
    wire [0:0] bb_kernel_2mm_B3_out_c0_exe2;
    wire [31:0] bb_kernel_2mm_B3_out_c0_exe3;
    wire [0:0] bb_kernel_2mm_B3_out_exiting_stall_out;
    wire [0:0] bb_kernel_2mm_B3_out_exiting_valid_out;
    wire [0:0] bb_kernel_2mm_B3_out_pipeline_valid_out;
    wire [0:0] bb_kernel_2mm_B3_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B3_out_stall_out_1;
    wire [0:0] bb_kernel_2mm_B3_out_valid_in_0;
    wire [0:0] bb_kernel_2mm_B3_out_valid_in_1;
    wire [0:0] bb_kernel_2mm_B3_out_valid_out_0;
    wire [0:0] bb_kernel_2mm_B4_out_stall_in_0;
    wire [0:0] bb_kernel_2mm_B4_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B4_out_valid_out_0;
    wire [0:0] bb_kernel_2mm_B5_out_c0_exe3204;
    wire [0:0] bb_kernel_2mm_B5_out_exiting_stall_out;
    wire [0:0] bb_kernel_2mm_B5_out_exiting_valid_out;
    wire [31:0] bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B5_out_pipeline_valid_out;
    wire [0:0] bb_kernel_2mm_B5_out_stall_in_0;
    wire [0:0] bb_kernel_2mm_B5_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B5_out_stall_out_1;
    wire [0:0] bb_kernel_2mm_B5_out_valid_in_0;
    wire [0:0] bb_kernel_2mm_B5_out_valid_in_1;
    wire [0:0] bb_kernel_2mm_B5_out_valid_out_0;
    wire [63:0] bb_kernel_2mm_B6_out_intel_reserved_ffwd_6_0;
    wire [63:0] bb_kernel_2mm_B6_out_intel_reserved_ffwd_7_0;
    wire [0:0] bb_kernel_2mm_B6_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B6_out_valid_out_0;
    wire [31:0] bb_kernel_2mm_B7_out_c0_exe1212;
    wire [31:0] bb_kernel_2mm_B7_out_c0_exe2213;
    wire [0:0] bb_kernel_2mm_B7_out_c0_exe4;
    wire [0:0] bb_kernel_2mm_B7_out_exiting_stall_out;
    wire [0:0] bb_kernel_2mm_B7_out_exiting_valid_out;
    wire [0:0] bb_kernel_2mm_B7_out_pipeline_valid_out;
    wire [0:0] bb_kernel_2mm_B7_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B7_out_stall_out_1;
    wire [0:0] bb_kernel_2mm_B7_out_valid_in_0;
    wire [0:0] bb_kernel_2mm_B7_out_valid_in_1;
    wire [0:0] bb_kernel_2mm_B7_out_valid_out_0;
    wire [0:0] bb_kernel_2mm_B8_out_stall_in_0;
    wire [0:0] bb_kernel_2mm_B8_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B8_out_valid_out_0;
    wire [31:0] bb_kernel_2mm_B9_out_c0_exe10;
    wire [0:0] bb_kernel_2mm_B9_out_c0_exe11;
    wire [31:0] bb_kernel_2mm_B9_out_c0_exe1227;
    wire [31:0] bb_kernel_2mm_B9_out_c0_exe2228;
    wire [63:0] bb_kernel_2mm_B9_out_c0_exe3229;
    wire [31:0] bb_kernel_2mm_B9_out_c0_exe4230;
    wire [0:0] bb_kernel_2mm_B9_out_c0_exe6;
    wire [31:0] bb_kernel_2mm_B9_out_c0_exe7;
    wire [0:0] bb_kernel_2mm_B9_out_c0_exe8;
    wire [31:0] bb_kernel_2mm_B9_out_c0_exe9;
    wire [0:0] bb_kernel_2mm_B9_out_exiting_stall_out;
    wire [0:0] bb_kernel_2mm_B9_out_exiting_valid_out;
    wire [0:0] bb_kernel_2mm_B9_out_pipeline_valid_out;
    wire [0:0] bb_kernel_2mm_B9_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B9_out_stall_out_1;
    wire [31:0] bb_kernel_2mm_B9_out_unnamed_kernel_2mm11_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B9_out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B9_out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B9_out_unnamed_kernel_2mm11_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B9_out_unnamed_kernel_2mm11_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B9_out_unnamed_kernel_2mm11_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B9_out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B9_out_valid_in_0;
    wire [0:0] bb_kernel_2mm_B9_out_valid_in_1;
    wire [0:0] bb_kernel_2mm_B9_out_valid_out_0;
    wire [1:0] c_i2_0127_q;
    wire [63:0] c_i32_addrspace_1025_undef107_q;
    wire [31:0] c_i32_undef103_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_kernel_2mm2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_kernel_2mm2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_kernel_2mm2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_kernel_2mm2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_kernel_2mm2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_kernel_2mm2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_kernel_2mm2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_kernel_2mm2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going74_kernel_2mm2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going74_kernel_2mm2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going74_kernel_2mm2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going74_kernel_2mm2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going95_kernel_2mm2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going95_kernel_2mm2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going95_kernel_2mm2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going95_kernel_2mm2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going99_kernel_2mm1_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going99_kernel_2mm1_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going99_kernel_2mm1_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going99_kernel_2mm1_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kernel_2mm6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kernel_2mm6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kernel_2mm6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kernel_2mm6_valid_fifo_out_valid_out;
    wire [0:0] kernel_2mm_B1_start_x_i_capture;
    wire kernel_2mm_B1_start_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_2mm_B1_start_x_i_clear;
    wire kernel_2mm_B1_start_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_2mm_B1_start_x_i_enable;
    wire kernel_2mm_B1_start_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_2mm_B1_start_x_i_shift;
    wire kernel_2mm_B1_start_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_2mm_B1_start_x_i_stall_pred;
    wire kernel_2mm_B1_start_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B1_start_x_i_stall_succ;
    wire kernel_2mm_B1_start_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_2mm_B1_start_x_i_valid_loop;
    wire kernel_2mm_B1_start_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_2mm_B1_start_x_i_valid_pred;
    wire kernel_2mm_B1_start_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B1_start_x_i_valid_succ;
    wire kernel_2mm_B1_start_x_i_valid_succ_bitsignaltemp;
    wire [0:0] kernel_2mm_B11_x_i_capture;
    wire kernel_2mm_B11_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_2mm_B11_x_i_clear;
    wire kernel_2mm_B11_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_2mm_B11_x_i_enable;
    wire kernel_2mm_B11_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_2mm_B11_x_i_shift;
    wire kernel_2mm_B11_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_2mm_B11_x_i_stall_pred;
    wire kernel_2mm_B11_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B11_x_i_stall_succ;
    wire kernel_2mm_B11_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_2mm_B11_x_i_valid_loop;
    wire kernel_2mm_B11_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_2mm_B11_x_i_valid_pred;
    wire kernel_2mm_B11_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B11_x_i_valid_succ;
    wire kernel_2mm_B11_x_i_valid_succ_bitsignaltemp;
    wire [0:0] kernel_2mm_B12_x_i_capture;
    wire kernel_2mm_B12_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_2mm_B12_x_i_clear;
    wire kernel_2mm_B12_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_2mm_B12_x_i_enable;
    wire kernel_2mm_B12_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_2mm_B12_x_i_shift;
    wire kernel_2mm_B12_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_2mm_B12_x_i_stall_pred;
    wire kernel_2mm_B12_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B12_x_i_stall_succ;
    wire kernel_2mm_B12_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_2mm_B12_x_i_valid_loop;
    wire kernel_2mm_B12_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_2mm_B12_x_i_valid_pred;
    wire kernel_2mm_B12_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B12_x_i_valid_succ;
    wire kernel_2mm_B12_x_i_valid_succ_bitsignaltemp;
    wire [0:0] kernel_2mm_B15_x_i_capture;
    wire kernel_2mm_B15_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_2mm_B15_x_i_clear;
    wire kernel_2mm_B15_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_2mm_B15_x_i_enable;
    wire kernel_2mm_B15_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_2mm_B15_x_i_shift;
    wire kernel_2mm_B15_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_2mm_B15_x_i_stall_pred;
    wire kernel_2mm_B15_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B15_x_i_stall_succ;
    wire kernel_2mm_B15_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_2mm_B15_x_i_valid_loop;
    wire kernel_2mm_B15_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_2mm_B15_x_i_valid_pred;
    wire kernel_2mm_B15_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B15_x_i_valid_succ;
    wire kernel_2mm_B15_x_i_valid_succ_bitsignaltemp;
    wire [0:0] kernel_2mm_B17_x_i_capture;
    wire kernel_2mm_B17_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_2mm_B17_x_i_clear;
    wire kernel_2mm_B17_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_2mm_B17_x_i_enable;
    wire kernel_2mm_B17_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_2mm_B17_x_i_shift;
    wire kernel_2mm_B17_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_2mm_B17_x_i_stall_pred;
    wire kernel_2mm_B17_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B17_x_i_stall_succ;
    wire kernel_2mm_B17_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_2mm_B17_x_i_valid_loop;
    wire kernel_2mm_B17_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_2mm_B17_x_i_valid_pred;
    wire kernel_2mm_B17_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B17_x_i_valid_succ;
    wire kernel_2mm_B17_x_i_valid_succ_bitsignaltemp;
    wire [0:0] kernel_2mm_B3_x_i_capture;
    wire kernel_2mm_B3_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_2mm_B3_x_i_clear;
    wire kernel_2mm_B3_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_2mm_B3_x_i_enable;
    wire kernel_2mm_B3_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_2mm_B3_x_i_shift;
    wire kernel_2mm_B3_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_2mm_B3_x_i_stall_pred;
    wire kernel_2mm_B3_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B3_x_i_stall_succ;
    wire kernel_2mm_B3_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_2mm_B3_x_i_valid_loop;
    wire kernel_2mm_B3_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_2mm_B3_x_i_valid_pred;
    wire kernel_2mm_B3_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B3_x_i_valid_succ;
    wire kernel_2mm_B3_x_i_valid_succ_bitsignaltemp;
    wire [0:0] kernel_2mm_B5_x_i_capture;
    wire kernel_2mm_B5_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_2mm_B5_x_i_clear;
    wire kernel_2mm_B5_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_2mm_B5_x_i_enable;
    wire kernel_2mm_B5_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_2mm_B5_x_i_shift;
    wire kernel_2mm_B5_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_2mm_B5_x_i_stall_pred;
    wire kernel_2mm_B5_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B5_x_i_stall_succ;
    wire kernel_2mm_B5_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_2mm_B5_x_i_valid_loop;
    wire kernel_2mm_B5_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_2mm_B5_x_i_valid_pred;
    wire kernel_2mm_B5_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B5_x_i_valid_succ;
    wire kernel_2mm_B5_x_i_valid_succ_bitsignaltemp;
    wire [0:0] kernel_2mm_B7_x_i_capture;
    wire kernel_2mm_B7_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_2mm_B7_x_i_clear;
    wire kernel_2mm_B7_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_2mm_B7_x_i_enable;
    wire kernel_2mm_B7_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_2mm_B7_x_i_shift;
    wire kernel_2mm_B7_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_2mm_B7_x_i_stall_pred;
    wire kernel_2mm_B7_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B7_x_i_stall_succ;
    wire kernel_2mm_B7_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_2mm_B7_x_i_valid_loop;
    wire kernel_2mm_B7_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_2mm_B7_x_i_valid_pred;
    wire kernel_2mm_B7_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B7_x_i_valid_succ;
    wire kernel_2mm_B7_x_i_valid_succ_bitsignaltemp;
    wire [0:0] kernel_2mm_B9_x_i_capture;
    wire kernel_2mm_B9_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_2mm_B9_x_i_clear;
    wire kernel_2mm_B9_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_2mm_B9_x_i_enable;
    wire kernel_2mm_B9_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_2mm_B9_x_i_shift;
    wire kernel_2mm_B9_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_2mm_B9_x_i_stall_pred;
    wire kernel_2mm_B9_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B9_x_i_stall_succ;
    wire kernel_2mm_B9_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_2mm_B9_x_i_valid_loop;
    wire kernel_2mm_B9_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_2mm_B9_x_i_valid_pred;
    wire kernel_2mm_B9_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B9_x_i_valid_succ;
    wire kernel_2mm_B9_x_i_valid_succ_bitsignaltemp;
    wire [0:0] loop_limiter_kernel_2mm0_out_o_stall;
    wire [0:0] loop_limiter_kernel_2mm0_out_o_valid;
    wire [0:0] loop_limiter_kernel_2mm1_out_o_stall;
    wire [0:0] loop_limiter_kernel_2mm1_out_o_valid;
    wire [0:0] loop_limiter_kernel_2mm2_out_o_stall;
    wire [0:0] loop_limiter_kernel_2mm2_out_o_valid;
    wire [0:0] loop_limiter_kernel_2mm3_out_o_stall;
    wire [0:0] loop_limiter_kernel_2mm3_out_o_valid;
    wire [0:0] loop_limiter_kernel_2mm4_out_o_stall;
    wire [0:0] loop_limiter_kernel_2mm4_out_o_valid;
    wire [0:0] loop_limiter_kernel_2mm5_out_o_stall;
    wire [0:0] loop_limiter_kernel_2mm5_out_o_valid;
    wire [0:0] loop_limiter_kernel_2mm6_out_o_stall;
    wire [0:0] loop_limiter_kernel_2mm6_out_o_valid;
    wire [0:0] loop_limiter_kernel_2mm7_out_o_stall;
    wire [0:0] loop_limiter_kernel_2mm7_out_o_valid;


    // c_i2_0127(CONSTANT,109)
    assign c_i2_0127_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going99_kernel_2mm1_valid_fifo(BLACKBOX,153)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going99_1_valid_fifo thei_llvm_fpga_pipeline_keep_going99_kernel_2mm1_valid_fifo (
        .in_data_in(c_i2_0127_q),
        .in_stall_in(bb_kernel_2mm_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going99_kernel_2mm1_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going99_kernel_2mm1_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going99_kernel_2mm1_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going95_kernel_2mm2_valid_fifo(BLACKBOX,151)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going95_2_valid_fifo thei_llvm_fpga_pipeline_keep_going95_kernel_2mm2_valid_fifo (
        .in_data_in(c_i2_0127_q),
        .in_stall_in(bb_kernel_2mm_B3_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going95_kernel_2mm2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going95_kernel_2mm2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going95_kernel_2mm2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_valid_fifo(BLACKBOX,149)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going81_6_valid_fifo thei_llvm_fpga_pipeline_keep_going81_kernel_2mm6_valid_fifo (
        .in_data_in(c_i2_0127_q),
        .in_stall_in(bb_kernel_2mm_B5_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going74_kernel_2mm2_valid_fifo(BLACKBOX,147)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going74_2_valid_fifo thei_llvm_fpga_pipeline_keep_going74_kernel_2mm2_valid_fifo (
        .in_data_in(c_i2_0127_q),
        .in_stall_in(bb_kernel_2mm_B7_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going74_kernel_2mm2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going74_kernel_2mm2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going74_kernel_2mm2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_valid_fifo(BLACKBOX,145)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going69_2_valid_fifo thei_llvm_fpga_pipeline_keep_going69_kernel_2mm2_valid_fifo (
        .in_data_in(c_i2_0127_q),
        .in_stall_in(bb_kernel_2mm_B9_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_valid_fifo(BLACKBOX,143)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going55_6_valid_fifo thei_llvm_fpga_pipeline_keep_going55_kernel_2mm6_valid_fifo (
        .in_data_in(c_i2_0127_q),
        .in_stall_in(bb_kernel_2mm_B11_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going48_kernel_2mm2_valid_fifo(BLACKBOX,141)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going48_2_valid_fifo thei_llvm_fpga_pipeline_keep_going48_kernel_2mm2_valid_fifo (
        .in_data_in(c_i2_0127_q),
        .in_stall_in(bb_kernel_2mm_B12_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going48_kernel_2mm2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going48_kernel_2mm2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going48_kernel_2mm2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going43_kernel_2mm2_valid_fifo(BLACKBOX,139)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going43_2_valid_fifo thei_llvm_fpga_pipeline_keep_going43_kernel_2mm2_valid_fifo (
        .in_data_in(c_i2_0127_q),
        .in_stall_in(bb_kernel_2mm_B15_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going43_kernel_2mm2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going43_kernel_2mm2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going43_kernel_2mm2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_kernel_2mm6_valid_fifo(BLACKBOX,155)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going_6_valid_fifo thei_llvm_fpga_pipeline_keep_going_kernel_2mm6_valid_fifo (
        .in_data_in(c_i2_0127_q),
        .in_stall_in(bb_kernel_2mm_B17_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_kernel_2mm6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_kernel_2mm6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_kernel_2mm6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B16_sr_0_aunroll_x(BLACKBOX,8)
    kernel_2mm_bb_B16_sr_0 thebb_kernel_2mm_B16_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_kernel_2mm_B17_out_c0_exe7368),
        .in_i_data_1_tpl(bb_kernel_2mm_B17_out_c0_exe8369),
        .in_i_data_2_tpl(bb_kernel_2mm_B17_out_c0_exe9370),
        .in_i_data_3_tpl(bb_kernel_2mm_B17_out_c0_exe10371),
        .in_i_data_4_tpl(bb_kernel_2mm_B17_out_c0_exe11372),
        .in_i_data_5_tpl(bb_kernel_2mm_B17_out_c1_exe1390),
        .in_i_stall(bb_kernel_2mm_B16_out_stall_out_0),
        .in_i_valid(bb_kernel_2mm_B17_out_valid_out_0),
        .out_o_data_0_tpl(bb_kernel_2mm_B16_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_2mm_B16_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_2mm_B16_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_kernel_2mm_B16_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_kernel_2mm_B16_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_kernel_2mm_B16_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_stall(bb_kernel_2mm_B16_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_2mm_B16_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_kernel_2mm6_sr(BLACKBOX,154)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going_6_sr thei_llvm_fpga_pipeline_keep_going_kernel_2mm6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_kernel_2mm6_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_2mm_B17_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_kernel_2mm6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_kernel_2mm6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B17(BLACKBOX,26)
    kernel_2mm_bb_B17 thebb_kernel_2mm_B17 (
        .in_exitcond21175_0(GND_q),
        .in_exitcond21175_1(bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_exitcond24119_pop43179_0(GND_q),
        .in_exitcond24119_pop43179_1(bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_14_tpl),
        .in_exitcond24164_0(GND_q),
        .in_exitcond24164_1(bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_i48_078_pop25115_pop41178_0(c_i32_undef103_q),
        .in_i48_078_pop25115_pop41178_1(bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_i48_078_pop25158_0(c_i32_undef103_q),
        .in_i48_078_pop25158_1(bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_intel_reserved_ffwd_7_0(bb_kernel_2mm_B6_out_intel_reserved_ffwd_7_0),
        .in_j53_077_pop39171_0(c_i32_undef103_q),
        .in_j53_077_pop39171_1(bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_mPtr_bitcast_index92173_0(c_i32_addrspace_1025_undef107_q),
        .in_mPtr_bitcast_index92173_1(bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_memdep_phi3_pop26123_pop45181_0(GND_q),
        .in_memdep_phi3_pop26123_pop45181_1(bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_16_tpl),
        .in_memdep_phi3_pop26170_0(GND_q),
        .in_memdep_phi3_pop26170_1(bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_memdep_phi_pop40177_0(GND_q),
        .in_memdep_phi_pop40177_1(bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_mul59_add30117_pop42172_0(c_i32_undef103_q),
        .in_mul59_add30117_pop42172_1(bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_mul59_add30161_0(c_i32_undef103_q),
        .in_mul59_add30161_1(bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_mul62174_0(c_i32_undef103_q),
        .in_mul62174_1(bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_notcmp41176_0(GND_q),
        .in_notcmp41176_1(bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_notcmp46121_pop44180_0(GND_q),
        .in_notcmp46121_pop44180_1(bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_15_tpl),
        .in_notcmp46167_0(GND_q),
        .in_notcmp46167_1(bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_kernel_2mm6_sr_out_o_stall),
        .in_stall_in_0(bb_kernel_2mm_B16_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_kernel_2mm20_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm20_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm20_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm20_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm20_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm20_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm20_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm20_kernel_2mm_avm_writeack),
        .in_unnamed_kernel_2mm22_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm22_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm22_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm22_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm22_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm22_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm22_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm22_kernel_2mm_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_kernel_2mm6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10371(bb_kernel_2mm_B17_out_c0_exe10371),
        .out_c0_exe11372(bb_kernel_2mm_B17_out_c0_exe11372),
        .out_c0_exe7368(bb_kernel_2mm_B17_out_c0_exe7368),
        .out_c0_exe8369(bb_kernel_2mm_B17_out_c0_exe8369),
        .out_c0_exe9370(bb_kernel_2mm_B17_out_c0_exe9370),
        .out_c1_exe1390(bb_kernel_2mm_B17_out_c1_exe1390),
        .out_exiting_stall_out(bb_kernel_2mm_B17_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_2mm_B17_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_kernel_2mm_B17_out_pipeline_valid_out),
        .out_stall_in_0(bb_kernel_2mm_B17_out_stall_in_0),
        .out_stall_out_0(bb_kernel_2mm_B17_out_stall_out_0),
        .out_stall_out_1(bb_kernel_2mm_B17_out_stall_out_1),
        .out_unnamed_kernel_2mm20_kernel_2mm_avm_address(bb_kernel_2mm_B17_out_unnamed_kernel_2mm20_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm20_kernel_2mm_avm_burstcount(bb_kernel_2mm_B17_out_unnamed_kernel_2mm20_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm20_kernel_2mm_avm_byteenable(bb_kernel_2mm_B17_out_unnamed_kernel_2mm20_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm20_kernel_2mm_avm_enable(bb_kernel_2mm_B17_out_unnamed_kernel_2mm20_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm20_kernel_2mm_avm_read(bb_kernel_2mm_B17_out_unnamed_kernel_2mm20_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm20_kernel_2mm_avm_write(bb_kernel_2mm_B17_out_unnamed_kernel_2mm20_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm20_kernel_2mm_avm_writedata(bb_kernel_2mm_B17_out_unnamed_kernel_2mm20_kernel_2mm_avm_writedata),
        .out_unnamed_kernel_2mm22_kernel_2mm_avm_address(bb_kernel_2mm_B17_out_unnamed_kernel_2mm22_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm22_kernel_2mm_avm_burstcount(bb_kernel_2mm_B17_out_unnamed_kernel_2mm22_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm22_kernel_2mm_avm_byteenable(bb_kernel_2mm_B17_out_unnamed_kernel_2mm22_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm22_kernel_2mm_avm_enable(bb_kernel_2mm_B17_out_unnamed_kernel_2mm22_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm22_kernel_2mm_avm_read(bb_kernel_2mm_B17_out_unnamed_kernel_2mm22_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm22_kernel_2mm_avm_write(bb_kernel_2mm_B17_out_unnamed_kernel_2mm22_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm22_kernel_2mm_avm_writedata(bb_kernel_2mm_B17_out_unnamed_kernel_2mm22_kernel_2mm_avm_writedata),
        .out_valid_in_0(bb_kernel_2mm_B17_out_valid_in_0),
        .out_valid_in_1(bb_kernel_2mm_B17_out_valid_in_1),
        .out_valid_out_0(bb_kernel_2mm_B17_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B17_sr_1_aunroll_x(BLACKBOX,9)
    kernel_2mm_bb_B17_sr_1 thebb_kernel_2mm_B17_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_kernel_2mm_B15_out_c0_exe11314),
        .in_i_data_2_tpl(bb_kernel_2mm_B15_out_c0_exe12315),
        .in_i_data_3_tpl(bb_kernel_2mm_B15_out_c0_exe13316),
        .in_i_data_4_tpl(bb_kernel_2mm_B15_out_c0_exe14),
        .in_i_data_5_tpl(bb_kernel_2mm_B15_out_c0_exe15),
        .in_i_data_6_tpl(bb_kernel_2mm_B15_out_c0_exe1304),
        .in_i_data_7_tpl(bb_kernel_2mm_B15_out_c0_exe2305),
        .in_i_data_8_tpl(bb_kernel_2mm_B15_out_c0_exe3306),
        .in_i_data_9_tpl(bb_kernel_2mm_B15_out_c1_exe1322),
        .in_i_data_10_tpl(bb_kernel_2mm_B15_out_c0_exe4307),
        .in_i_data_11_tpl(bb_kernel_2mm_B15_out_c0_exe5308),
        .in_i_data_12_tpl(bb_kernel_2mm_B15_out_memdep_phi_pop40),
        .in_i_data_13_tpl(bb_kernel_2mm_B15_out_c0_exe6309),
        .in_i_data_14_tpl(bb_kernel_2mm_B15_out_c0_exe7310),
        .in_i_data_15_tpl(bb_kernel_2mm_B15_out_c0_exe8311),
        .in_i_data_16_tpl(bb_kernel_2mm_B15_out_c0_exe9312),
        .in_i_stall(bb_kernel_2mm_B17_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_2mm7_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_data_16_tpl),
        .out_o_stall(bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_2mm7(BLACKBOX,220)
    kernel_2mm_loop_limiter_7 theloop_limiter_kernel_2mm7 (
        .in_i_stall(bb_kernel_2mm_B17_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_2mm_B17_out_exiting_stall_out),
        .in_i_valid(bb_kernel_2mm_B15_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_2mm_B17_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_2mm7_out_o_stall),
        .out_o_valid(loop_limiter_kernel_2mm7_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going43_kernel_2mm2_sr(BLACKBOX,138)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going43_2_sr thei_llvm_fpga_pipeline_keep_going43_kernel_2mm2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going43_kernel_2mm2_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_2mm_B15_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going43_kernel_2mm2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going43_kernel_2mm2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B14_sr_0_aunroll_x(BLACKBOX,6)
    kernel_2mm_bb_B14_sr_0 thebb_kernel_2mm_B14_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_kernel_2mm_B16_out_memdep_2),
        .in_i_data_1_tpl(bb_kernel_2mm_B16_out_c0_exe73689),
        .in_i_data_2_tpl(bb_kernel_2mm_B16_out_c0_exe836911),
        .in_i_stall(bb_kernel_2mm_B14_out_stall_out_0),
        .in_i_valid(bb_kernel_2mm_B16_out_valid_out_0),
        .out_o_data_0_tpl(bb_kernel_2mm_B14_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_2mm_B14_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_2mm_B14_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_stall(bb_kernel_2mm_B14_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_2mm_B14_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B16(BLACKBOX,25)
    kernel_2mm_bb_B16 thebb_kernel_2mm_B16 (
        .in_c0_exe1037113_0(bb_kernel_2mm_B16_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe1137214_0(bb_kernel_2mm_B16_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe73689_0(bb_kernel_2mm_B16_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe836911_0(bb_kernel_2mm_B16_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe937012_0(bb_kernel_2mm_B16_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c1_exe139015_0(bb_kernel_2mm_B16_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_feedback_stall_in_40(bb_kernel_2mm_B15_out_feedback_stall_out_40),
        .in_flush(in_start),
        .in_memdep_2_kernel_2mm_avm_readdata(in_memdep_2_kernel_2mm_avm_readdata),
        .in_memdep_2_kernel_2mm_avm_readdatavalid(in_memdep_2_kernel_2mm_avm_readdatavalid),
        .in_memdep_2_kernel_2mm_avm_waitrequest(in_memdep_2_kernel_2mm_avm_waitrequest),
        .in_memdep_2_kernel_2mm_avm_writeack(in_memdep_2_kernel_2mm_avm_writeack),
        .in_stall_in_0(bb_kernel_2mm_B14_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_kernel_2mm_B16_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe73689(bb_kernel_2mm_B16_out_c0_exe73689),
        .out_c0_exe836911(bb_kernel_2mm_B16_out_c0_exe836911),
        .out_feedback_out_40(bb_kernel_2mm_B16_out_feedback_out_40),
        .out_feedback_valid_out_40(bb_kernel_2mm_B16_out_feedback_valid_out_40),
        .out_lsu_memdep_2_o_active(bb_kernel_2mm_B16_out_lsu_memdep_2_o_active),
        .out_memdep_2(bb_kernel_2mm_B16_out_memdep_2),
        .out_memdep_2_kernel_2mm_avm_address(bb_kernel_2mm_B16_out_memdep_2_kernel_2mm_avm_address),
        .out_memdep_2_kernel_2mm_avm_burstcount(bb_kernel_2mm_B16_out_memdep_2_kernel_2mm_avm_burstcount),
        .out_memdep_2_kernel_2mm_avm_byteenable(bb_kernel_2mm_B16_out_memdep_2_kernel_2mm_avm_byteenable),
        .out_memdep_2_kernel_2mm_avm_enable(bb_kernel_2mm_B16_out_memdep_2_kernel_2mm_avm_enable),
        .out_memdep_2_kernel_2mm_avm_read(bb_kernel_2mm_B16_out_memdep_2_kernel_2mm_avm_read),
        .out_memdep_2_kernel_2mm_avm_write(bb_kernel_2mm_B16_out_memdep_2_kernel_2mm_avm_write),
        .out_memdep_2_kernel_2mm_avm_writedata(bb_kernel_2mm_B16_out_memdep_2_kernel_2mm_avm_writedata),
        .out_stall_in_0(bb_kernel_2mm_B16_out_stall_in_0),
        .out_stall_out_0(bb_kernel_2mm_B16_out_stall_out_0),
        .out_valid_out_0(bb_kernel_2mm_B16_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B15(BLACKBOX,24)
    kernel_2mm_bb_B15 thebb_kernel_2mm_B15 (
        .in_exitcond24162_0(GND_q),
        .in_exitcond24162_1(bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_feedback_in_40(bb_kernel_2mm_B16_out_feedback_out_40),
        .in_feedback_valid_in_40(bb_kernel_2mm_B16_out_feedback_valid_out_40),
        .in_flush(in_start),
        .in_forked114_0(GND_q),
        .in_forked114_1(bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_i48_078_pop25156_0(c_i32_undef103_q),
        .in_i48_078_pop25156_1(bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_intel_reserved_ffwd_1_0(bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_6_0(bb_kernel_2mm_B6_out_intel_reserved_ffwd_6_0),
        .in_memdep_phi3_pop26168_0(GND_q),
        .in_memdep_phi3_pop26168_1(bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_mul59_add30159_0(c_i32_undef103_q),
        .in_mul59_add30159_1(bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_notcmp46165_0(GND_q),
        .in_notcmp46165_1(bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going43_kernel_2mm2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_kernel_2mm7_out_o_stall),
        .in_unnamed_kernel_2mm19_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm19_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm19_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm19_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm19_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm19_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm19_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm19_kernel_2mm_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going43_kernel_2mm2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe11314(bb_kernel_2mm_B15_out_c0_exe11314),
        .out_c0_exe12315(bb_kernel_2mm_B15_out_c0_exe12315),
        .out_c0_exe1304(bb_kernel_2mm_B15_out_c0_exe1304),
        .out_c0_exe13316(bb_kernel_2mm_B15_out_c0_exe13316),
        .out_c0_exe14(bb_kernel_2mm_B15_out_c0_exe14),
        .out_c0_exe15(bb_kernel_2mm_B15_out_c0_exe15),
        .out_c0_exe2305(bb_kernel_2mm_B15_out_c0_exe2305),
        .out_c0_exe3306(bb_kernel_2mm_B15_out_c0_exe3306),
        .out_c0_exe4307(bb_kernel_2mm_B15_out_c0_exe4307),
        .out_c0_exe5308(bb_kernel_2mm_B15_out_c0_exe5308),
        .out_c0_exe6309(bb_kernel_2mm_B15_out_c0_exe6309),
        .out_c0_exe7310(bb_kernel_2mm_B15_out_c0_exe7310),
        .out_c0_exe8311(bb_kernel_2mm_B15_out_c0_exe8311),
        .out_c0_exe9312(bb_kernel_2mm_B15_out_c0_exe9312),
        .out_c1_exe1322(bb_kernel_2mm_B15_out_c1_exe1322),
        .out_exiting_stall_out(bb_kernel_2mm_B15_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_2mm_B15_out_exiting_valid_out),
        .out_feedback_stall_out_40(bb_kernel_2mm_B15_out_feedback_stall_out_40),
        .out_memdep_phi_pop40(bb_kernel_2mm_B15_out_memdep_phi_pop40),
        .out_pipeline_valid_out(bb_kernel_2mm_B15_out_pipeline_valid_out),
        .out_stall_out_0(bb_kernel_2mm_B15_out_stall_out_0),
        .out_stall_out_1(bb_kernel_2mm_B15_out_stall_out_1),
        .out_unnamed_kernel_2mm19_kernel_2mm_avm_address(bb_kernel_2mm_B15_out_unnamed_kernel_2mm19_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm19_kernel_2mm_avm_burstcount(bb_kernel_2mm_B15_out_unnamed_kernel_2mm19_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm19_kernel_2mm_avm_byteenable(bb_kernel_2mm_B15_out_unnamed_kernel_2mm19_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm19_kernel_2mm_avm_enable(bb_kernel_2mm_B15_out_unnamed_kernel_2mm19_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm19_kernel_2mm_avm_read(bb_kernel_2mm_B15_out_unnamed_kernel_2mm19_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm19_kernel_2mm_avm_write(bb_kernel_2mm_B15_out_unnamed_kernel_2mm19_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm19_kernel_2mm_avm_writedata(bb_kernel_2mm_B15_out_unnamed_kernel_2mm19_kernel_2mm_avm_writedata),
        .out_valid_in_0(bb_kernel_2mm_B15_out_valid_in_0),
        .out_valid_in_1(bb_kernel_2mm_B15_out_valid_in_1),
        .out_valid_out_0(bb_kernel_2mm_B15_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B15_sr_1_aunroll_x(BLACKBOX,7)
    kernel_2mm_bb_B15_sr_1 thebb_kernel_2mm_B15_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_kernel_2mm_B12_out_c0_exe1272),
        .in_i_data_2_tpl(bb_kernel_2mm_B12_out_c0_exe2273),
        .in_i_data_3_tpl(bb_kernel_2mm_B12_out_c0_exe3274),
        .in_i_data_4_tpl(bb_kernel_2mm_B12_out_c0_exe4275),
        .in_i_data_5_tpl(bb_kernel_2mm_B12_out_memdep_phi3_pop26),
        .in_i_stall(bb_kernel_2mm_B15_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_2mm5_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_stall(bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_2mm5(BLACKBOX,218)
    kernel_2mm_loop_limiter_5 theloop_limiter_kernel_2mm5 (
        .in_i_stall(bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_2mm_B15_out_exiting_stall_out),
        .in_i_valid(bb_kernel_2mm_B12_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_2mm_B15_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_2mm5_out_o_stall),
        .out_o_valid(loop_limiter_kernel_2mm5_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going48_kernel_2mm2_sr(BLACKBOX,140)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going48_2_sr thei_llvm_fpga_pipeline_keep_going48_kernel_2mm2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going48_kernel_2mm2_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_2mm_B12_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going48_kernel_2mm2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going48_kernel_2mm2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B13_sr_0_aunroll_x(BLACKBOX,5)
    kernel_2mm_bb_B13_sr_0 thebb_kernel_2mm_B13_sr_0_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_kernel_2mm_B13_out_stall_out_0),
        .in_i_valid(bb_kernel_2mm_B14_out_valid_out_0),
        .out_o_data_0_tpl(),
        .out_o_stall(bb_kernel_2mm_B13_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_2mm_B13_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B14(BLACKBOX,23)
    kernel_2mm_bb_B14 thebb_kernel_2mm_B14 (
        .in_c0_exe73688_0(bb_kernel_2mm_B14_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe836910_0(bb_kernel_2mm_B14_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_feedback_stall_in_26(bb_kernel_2mm_B12_out_feedback_stall_out_26),
        .in_memdep_27_0(bb_kernel_2mm_B14_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(bb_kernel_2mm_B13_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_kernel_2mm_B14_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_26(bb_kernel_2mm_B14_out_feedback_out_26),
        .out_feedback_valid_out_26(bb_kernel_2mm_B14_out_feedback_valid_out_26),
        .out_stall_in_0(bb_kernel_2mm_B14_out_stall_in_0),
        .out_stall_out_0(bb_kernel_2mm_B14_out_stall_out_0),
        .out_valid_out_0(bb_kernel_2mm_B14_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B12(BLACKBOX,21)
    kernel_2mm_bb_B12 thebb_kernel_2mm_B12 (
        .in_feedback_in_26(bb_kernel_2mm_B14_out_feedback_out_26),
        .in_feedback_valid_in_26(bb_kernel_2mm_B14_out_feedback_valid_out_26),
        .in_forked104_0(GND_q),
        .in_forked104_1(bb_kernel_2mm_B12_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going48_kernel_2mm2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_kernel_2mm5_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going48_kernel_2mm2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_2mm_B12_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe1272(bb_kernel_2mm_B12_out_c0_exe1272),
        .out_c0_exe2273(bb_kernel_2mm_B12_out_c0_exe2273),
        .out_c0_exe3274(bb_kernel_2mm_B12_out_c0_exe3274),
        .out_c0_exe4275(bb_kernel_2mm_B12_out_c0_exe4275),
        .out_exiting_stall_out(bb_kernel_2mm_B12_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_2mm_B12_out_exiting_valid_out),
        .out_feedback_stall_out_26(bb_kernel_2mm_B12_out_feedback_stall_out_26),
        .out_memdep_phi3_pop26(bb_kernel_2mm_B12_out_memdep_phi3_pop26),
        .out_pipeline_valid_out(bb_kernel_2mm_B12_out_pipeline_valid_out),
        .out_stall_out_0(bb_kernel_2mm_B12_out_stall_out_0),
        .out_stall_out_1(bb_kernel_2mm_B12_out_stall_out_1),
        .out_valid_in_0(bb_kernel_2mm_B12_out_valid_in_0),
        .out_valid_in_1(bb_kernel_2mm_B12_out_valid_in_1),
        .out_valid_out_0(bb_kernel_2mm_B12_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B12_sr_1_aunroll_x(BLACKBOX,4)
    kernel_2mm_bb_B12_sr_1 thebb_kernel_2mm_B12_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_stall(bb_kernel_2mm_B12_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_2mm2_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_2mm_B12_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_stall(bb_kernel_2mm_B12_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_2mm_B12_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_2mm2(BLACKBOX,215)
    kernel_2mm_loop_limiter_2 theloop_limiter_kernel_2mm2 (
        .in_i_stall(bb_kernel_2mm_B12_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_2mm_B12_out_exiting_stall_out),
        .in_i_valid(bb_kernel_2mm_B6_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_2mm_B12_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_2mm2_out_o_stall),
        .out_o_valid(loop_limiter_kernel_2mm2_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B6(BLACKBOX,32)
    kernel_2mm_bb_B6 thebb_kernel_2mm_B6 (
        .in_intel_reserved_ffwd_2_0(bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_3_0),
        .in_stall_in_0(loop_limiter_kernel_2mm2_out_o_stall),
        .in_valid_in_0(bb_kernel_2mm_B6_sr_0_aunroll_x_out_o_valid),
        .out_intel_reserved_ffwd_6_0(bb_kernel_2mm_B6_out_intel_reserved_ffwd_6_0),
        .out_intel_reserved_ffwd_7_0(bb_kernel_2mm_B6_out_intel_reserved_ffwd_7_0),
        .out_stall_out_0(bb_kernel_2mm_B6_out_stall_out_0),
        .out_valid_out_0(bb_kernel_2mm_B6_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B6_sr_0_aunroll_x(BLACKBOX,14)
    kernel_2mm_bb_B6_sr_0 thebb_kernel_2mm_B6_sr_0_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_kernel_2mm_B6_out_stall_out_0),
        .in_i_valid(bb_kernel_2mm_B8_out_valid_out_0),
        .out_o_data_0_tpl(),
        .out_o_stall(bb_kernel_2mm_B6_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_2mm_B6_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B8(BLACKBOX,34)
    kernel_2mm_bb_B8 thebb_kernel_2mm_B8 (
        .in_c0_exe62572_0(bb_kernel_2mm_B8_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(bb_kernel_2mm_B6_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_kernel_2mm_B8_sr_0_aunroll_x_out_o_valid),
        .out_stall_in_0(bb_kernel_2mm_B8_out_stall_in_0),
        .out_stall_out_0(bb_kernel_2mm_B8_out_stall_out_0),
        .out_valid_out_0(bb_kernel_2mm_B8_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B8_sr_0_aunroll_x(BLACKBOX,16)
    kernel_2mm_bb_B8_sr_0 thebb_kernel_2mm_B8_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_kernel_2mm_B10_out_c0_exe62573),
        .in_i_stall(bb_kernel_2mm_B8_out_stall_out_0),
        .in_i_valid(bb_kernel_2mm_B10_out_valid_out_0),
        .out_o_data_0_tpl(bb_kernel_2mm_B8_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_stall(bb_kernel_2mm_B8_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_2mm_B8_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B10(BLACKBOX,19)
    kernel_2mm_bb_B10 thebb_kernel_2mm_B10 (
        .in_c0_exe62573_0(bb_kernel_2mm_B10_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe72584_0(bb_kernel_2mm_B10_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe82595_0(bb_kernel_2mm_B10_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c1_exe16_0(bb_kernel_2mm_B10_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_flush(in_start),
        .in_memdep_1_kernel_2mm_avm_readdata(in_memdep_1_kernel_2mm_avm_readdata),
        .in_memdep_1_kernel_2mm_avm_readdatavalid(in_memdep_1_kernel_2mm_avm_readdatavalid),
        .in_memdep_1_kernel_2mm_avm_waitrequest(in_memdep_1_kernel_2mm_avm_waitrequest),
        .in_memdep_1_kernel_2mm_avm_writeack(in_memdep_1_kernel_2mm_avm_writeack),
        .in_stall_in_0(bb_kernel_2mm_B8_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_kernel_2mm_B10_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe62573(bb_kernel_2mm_B10_out_c0_exe62573),
        .out_memdep_1_kernel_2mm_avm_address(bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_address),
        .out_memdep_1_kernel_2mm_avm_burstcount(bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_burstcount),
        .out_memdep_1_kernel_2mm_avm_byteenable(bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_byteenable),
        .out_memdep_1_kernel_2mm_avm_enable(bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_enable),
        .out_memdep_1_kernel_2mm_avm_read(bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_read),
        .out_memdep_1_kernel_2mm_avm_write(bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_write),
        .out_memdep_1_kernel_2mm_avm_writedata(bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_writedata),
        .out_stall_in_0(bb_kernel_2mm_B10_out_stall_in_0),
        .out_stall_out_0(bb_kernel_2mm_B10_out_stall_out_0),
        .out_valid_out_0(bb_kernel_2mm_B10_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B10_sr_0_aunroll_x(BLACKBOX,2)
    kernel_2mm_bb_B10_sr_0 thebb_kernel_2mm_B10_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_kernel_2mm_B11_out_c0_exe6257),
        .in_i_data_1_tpl(bb_kernel_2mm_B11_out_c0_exe7258),
        .in_i_data_2_tpl(bb_kernel_2mm_B11_out_c0_exe8259),
        .in_i_data_3_tpl(bb_kernel_2mm_B11_out_c1_exe1),
        .in_i_stall(bb_kernel_2mm_B10_out_stall_out_0),
        .in_i_valid(bb_kernel_2mm_B11_out_valid_out_0),
        .out_o_data_0_tpl(bb_kernel_2mm_B10_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_2mm_B10_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_2mm_B10_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_kernel_2mm_B10_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_stall(bb_kernel_2mm_B10_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_2mm_B10_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_sr(BLACKBOX,142)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going55_6_sr thei_llvm_fpga_pipeline_keep_going55_kernel_2mm6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_2mm_B11_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_addrspace_1025_undef107(CONSTANT,118)
    assign c_i32_addrspace_1025_undef107_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // bb_kernel_2mm_B11(BLACKBOX,20)
    kernel_2mm_bb_B11 thebb_kernel_2mm_B11 (
        .in_arrayidx243147_0(c_i32_addrspace_1025_undef107_q),
        .in_arrayidx243147_1(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_flush(in_start),
        .in_forked52_0(GND_q),
        .in_forked52_1(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_i11_082_pop23108_pop35145_0(c_i32_undef103_q),
        .in_i11_082_pop23108_pop35145_1(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_i11_082_pop23138_0(c_i32_undef103_q),
        .in_i11_082_pop23138_1(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_intel_reserved_ffwd_0_0(bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_4_0(bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_5_0(bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_5_0),
        .in_j16_081_pop34146_0(c_i32_undef103_q),
        .in_j16_081_pop34146_1(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_mul_add26110_pop36149_0(c_i32_undef103_q),
        .in_mul_add26110_pop36149_1(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_mul_add26141_0(c_i32_undef103_q),
        .in_mul_add26141_1(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_notcmp67148_0(GND_q),
        .in_notcmp67148_1(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_notcmp72112_pop37150_0(GND_q),
        .in_notcmp72112_pop37150_1(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_notcmp72144_0(GND_q),
        .in_notcmp72144_1(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_sr_out_o_stall),
        .in_stall_in_0(bb_kernel_2mm_B10_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_kernel_2mm12_0(c_i32_undef103_q),
        .in_unnamed_kernel_2mm12_1(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_unnamed_kernel_2mm15_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm15_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm15_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm15_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm15_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm15_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm15_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm15_kernel_2mm_avm_writeack),
        .in_unnamed_kernel_2mm16_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm16_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm16_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm16_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm16_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm16_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm16_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm16_kernel_2mm_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe6257(bb_kernel_2mm_B11_out_c0_exe6257),
        .out_c0_exe7258(bb_kernel_2mm_B11_out_c0_exe7258),
        .out_c0_exe8259(bb_kernel_2mm_B11_out_c0_exe8259),
        .out_c1_exe1(bb_kernel_2mm_B11_out_c1_exe1),
        .out_exiting_stall_out(bb_kernel_2mm_B11_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_2mm_B11_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_kernel_2mm_B11_out_pipeline_valid_out),
        .out_stall_in_0(bb_kernel_2mm_B11_out_stall_in_0),
        .out_stall_out_0(bb_kernel_2mm_B11_out_stall_out_0),
        .out_stall_out_1(bb_kernel_2mm_B11_out_stall_out_1),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_address(bb_kernel_2mm_B11_out_unnamed_kernel_2mm15_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount(bb_kernel_2mm_B11_out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable(bb_kernel_2mm_B11_out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_enable(bb_kernel_2mm_B11_out_unnamed_kernel_2mm15_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_read(bb_kernel_2mm_B11_out_unnamed_kernel_2mm15_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_write(bb_kernel_2mm_B11_out_unnamed_kernel_2mm15_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata(bb_kernel_2mm_B11_out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata),
        .out_unnamed_kernel_2mm16_kernel_2mm_avm_address(bb_kernel_2mm_B11_out_unnamed_kernel_2mm16_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm16_kernel_2mm_avm_burstcount(bb_kernel_2mm_B11_out_unnamed_kernel_2mm16_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm16_kernel_2mm_avm_byteenable(bb_kernel_2mm_B11_out_unnamed_kernel_2mm16_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm16_kernel_2mm_avm_enable(bb_kernel_2mm_B11_out_unnamed_kernel_2mm16_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm16_kernel_2mm_avm_read(bb_kernel_2mm_B11_out_unnamed_kernel_2mm16_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm16_kernel_2mm_avm_write(bb_kernel_2mm_B11_out_unnamed_kernel_2mm16_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm16_kernel_2mm_avm_writedata(bb_kernel_2mm_B11_out_unnamed_kernel_2mm16_kernel_2mm_avm_writedata),
        .out_valid_in_0(bb_kernel_2mm_B11_out_valid_in_0),
        .out_valid_in_1(bb_kernel_2mm_B11_out_valid_in_1),
        .out_valid_out_0(bb_kernel_2mm_B11_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B11_sr_1_aunroll_x(BLACKBOX,3)
    kernel_2mm_bb_B11_sr_1 thebb_kernel_2mm_B11_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_kernel_2mm_B9_out_c0_exe9),
        .in_i_data_2_tpl(bb_kernel_2mm_B9_out_c0_exe10),
        .in_i_data_3_tpl(bb_kernel_2mm_B9_out_c0_exe11),
        .in_i_data_4_tpl(bb_kernel_2mm_B9_out_c0_exe1227),
        .in_i_data_5_tpl(bb_kernel_2mm_B9_out_c0_exe2228),
        .in_i_data_6_tpl(bb_kernel_2mm_B9_out_c0_exe3229),
        .in_i_data_7_tpl(bb_kernel_2mm_B9_out_c0_exe4230),
        .in_i_data_8_tpl(bb_kernel_2mm_B9_out_c0_exe6),
        .in_i_data_9_tpl(bb_kernel_2mm_B9_out_c0_exe7),
        .in_i_data_10_tpl(bb_kernel_2mm_B9_out_c0_exe8),
        .in_i_stall(bb_kernel_2mm_B11_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_2mm6_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_stall(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_2mm6(BLACKBOX,219)
    kernel_2mm_loop_limiter_6 theloop_limiter_kernel_2mm6 (
        .in_i_stall(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_2mm_B11_out_exiting_stall_out),
        .in_i_valid(bb_kernel_2mm_B9_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_2mm_B11_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_2mm6_out_o_stall),
        .out_o_valid(loop_limiter_kernel_2mm6_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_sr(BLACKBOX,144)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going69_2_sr thei_llvm_fpga_pipeline_keep_going69_kernel_2mm2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_2mm_B9_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B9(BLACKBOX,35)
    kernel_2mm_bb_B9 thebb_kernel_2mm_B9 (
        .in_flush(in_start),
        .in_forked107_0(GND_q),
        .in_forked107_1(bb_kernel_2mm_B9_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_i11_082_pop23136_0(c_i32_undef103_q),
        .in_i11_082_pop23136_1(bb_kernel_2mm_B9_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_mul_add26139_0(c_i32_undef103_q),
        .in_mul_add26139_1(bb_kernel_2mm_B9_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_notcmp72142_0(GND_q),
        .in_notcmp72142_1(bb_kernel_2mm_B9_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_kernel_2mm6_out_o_stall),
        .in_unnamed_kernel_2mm11_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm11_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm11_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm11_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm11_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm11_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm11_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm11_kernel_2mm_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_2mm_B9_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10(bb_kernel_2mm_B9_out_c0_exe10),
        .out_c0_exe11(bb_kernel_2mm_B9_out_c0_exe11),
        .out_c0_exe1227(bb_kernel_2mm_B9_out_c0_exe1227),
        .out_c0_exe2228(bb_kernel_2mm_B9_out_c0_exe2228),
        .out_c0_exe3229(bb_kernel_2mm_B9_out_c0_exe3229),
        .out_c0_exe4230(bb_kernel_2mm_B9_out_c0_exe4230),
        .out_c0_exe6(bb_kernel_2mm_B9_out_c0_exe6),
        .out_c0_exe7(bb_kernel_2mm_B9_out_c0_exe7),
        .out_c0_exe8(bb_kernel_2mm_B9_out_c0_exe8),
        .out_c0_exe9(bb_kernel_2mm_B9_out_c0_exe9),
        .out_exiting_stall_out(bb_kernel_2mm_B9_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_2mm_B9_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_kernel_2mm_B9_out_pipeline_valid_out),
        .out_stall_out_0(bb_kernel_2mm_B9_out_stall_out_0),
        .out_stall_out_1(bb_kernel_2mm_B9_out_stall_out_1),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_address(bb_kernel_2mm_B9_out_unnamed_kernel_2mm11_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount(bb_kernel_2mm_B9_out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable(bb_kernel_2mm_B9_out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_enable(bb_kernel_2mm_B9_out_unnamed_kernel_2mm11_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_read(bb_kernel_2mm_B9_out_unnamed_kernel_2mm11_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_write(bb_kernel_2mm_B9_out_unnamed_kernel_2mm11_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata(bb_kernel_2mm_B9_out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata),
        .out_valid_in_0(bb_kernel_2mm_B9_out_valid_in_0),
        .out_valid_in_1(bb_kernel_2mm_B9_out_valid_in_1),
        .out_valid_out_0(bb_kernel_2mm_B9_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B9_sr_1_aunroll_x(BLACKBOX,17)
    kernel_2mm_bb_B9_sr_1 thebb_kernel_2mm_B9_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_kernel_2mm_B7_out_c0_exe1212),
        .in_i_data_2_tpl(bb_kernel_2mm_B7_out_c0_exe2213),
        .in_i_data_3_tpl(bb_kernel_2mm_B7_out_c0_exe4),
        .in_i_stall(bb_kernel_2mm_B9_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_2mm4_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_2mm_B9_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_2mm_B9_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_2mm_B9_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_kernel_2mm_B9_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_stall(bb_kernel_2mm_B9_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_2mm_B9_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_2mm4(BLACKBOX,217)
    kernel_2mm_loop_limiter_4 theloop_limiter_kernel_2mm4 (
        .in_i_stall(bb_kernel_2mm_B9_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_2mm_B9_out_exiting_stall_out),
        .in_i_valid(bb_kernel_2mm_B7_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_2mm_B9_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_2mm4_out_o_stall),
        .out_o_valid(loop_limiter_kernel_2mm4_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going74_kernel_2mm2_sr(BLACKBOX,146)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going74_2_sr thei_llvm_fpga_pipeline_keep_going74_kernel_2mm2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going74_kernel_2mm2_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_2mm_B7_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going74_kernel_2mm2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going74_kernel_2mm2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B7(BLACKBOX,33)
    kernel_2mm_bb_B7 thebb_kernel_2mm_B7 (
        .in_forked103_0(GND_q),
        .in_forked103_1(bb_kernel_2mm_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going74_kernel_2mm2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_kernel_2mm4_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going74_kernel_2mm2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_2mm_B7_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe1212(bb_kernel_2mm_B7_out_c0_exe1212),
        .out_c0_exe2213(bb_kernel_2mm_B7_out_c0_exe2213),
        .out_c0_exe4(bb_kernel_2mm_B7_out_c0_exe4),
        .out_exiting_stall_out(bb_kernel_2mm_B7_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_2mm_B7_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_kernel_2mm_B7_out_pipeline_valid_out),
        .out_stall_out_0(bb_kernel_2mm_B7_out_stall_out_0),
        .out_stall_out_1(bb_kernel_2mm_B7_out_stall_out_1),
        .out_valid_in_0(bb_kernel_2mm_B7_out_valid_in_0),
        .out_valid_in_1(bb_kernel_2mm_B7_out_valid_in_1),
        .out_valid_out_0(bb_kernel_2mm_B7_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B7_sr_1_aunroll_x(BLACKBOX,15)
    kernel_2mm_bb_B7_sr_1 thebb_kernel_2mm_B7_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_stall(bb_kernel_2mm_B7_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_2mm1_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_2mm_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_stall(bb_kernel_2mm_B7_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_2mm_B7_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_2mm1(BLACKBOX,214)
    kernel_2mm_loop_limiter_1 theloop_limiter_kernel_2mm1 (
        .in_i_stall(bb_kernel_2mm_B7_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_2mm_B7_out_exiting_stall_out),
        .in_i_valid(bb_kernel_2mm_B2_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_2mm_B7_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_2mm1_out_o_stall),
        .out_o_valid(loop_limiter_kernel_2mm1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B2(BLACKBOX,28)
    kernel_2mm_bb_B2 thebb_kernel_2mm_B2 (
        .in_stall_in_0(loop_limiter_kernel_2mm1_out_o_stall),
        .in_valid_in_0(bb_kernel_2mm_B2_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_kernel_2mm_B2_out_stall_out_0),
        .out_valid_out_0(bb_kernel_2mm_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B2_sr_0_aunroll_x(BLACKBOX,10)
    kernel_2mm_bb_B2_sr_0 thebb_kernel_2mm_B2_sr_0_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_kernel_2mm_B2_out_stall_out_0),
        .in_i_valid(bb_kernel_2mm_B4_out_valid_out_0),
        .out_o_data_0_tpl(),
        .out_o_stall(bb_kernel_2mm_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_2mm_B2_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B4(BLACKBOX,30)
    kernel_2mm_bb_B4 thebb_kernel_2mm_B4 (
        .in_c0_exe32041_0(bb_kernel_2mm_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(bb_kernel_2mm_B2_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_kernel_2mm_B4_sr_0_aunroll_x_out_o_valid),
        .out_stall_in_0(bb_kernel_2mm_B4_out_stall_in_0),
        .out_stall_out_0(bb_kernel_2mm_B4_out_stall_out_0),
        .out_valid_out_0(bb_kernel_2mm_B4_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B4_sr_0_aunroll_x(BLACKBOX,12)
    kernel_2mm_bb_B4_sr_0 thebb_kernel_2mm_B4_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_kernel_2mm_B5_out_c0_exe3204),
        .in_i_stall(bb_kernel_2mm_B4_out_stall_out_0),
        .in_i_valid(bb_kernel_2mm_B5_out_valid_out_0),
        .out_o_data_0_tpl(bb_kernel_2mm_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_stall(bb_kernel_2mm_B4_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_2mm_B4_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_sr(BLACKBOX,148)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going81_6_sr thei_llvm_fpga_pipeline_keep_going81_kernel_2mm6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_2mm_B5_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef103(CONSTANT,120)
    assign c_i32_undef103_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_kernel_2mm_B5(BLACKBOX,31)
    kernel_2mm_bb_B5 thebb_kernel_2mm_B5 (
        .in_flush(in_start),
        .in_forked78_0(GND_q),
        .in_forked78_1(bb_kernel_2mm_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_i_084_pop21134_0(c_i32_undef103_q),
        .in_i_084_pop21134_1(bb_kernel_2mm_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_memdep_kernel_2mm_avm_readdata(in_memdep_kernel_2mm_avm_readdata),
        .in_memdep_kernel_2mm_avm_readdatavalid(in_memdep_kernel_2mm_avm_readdatavalid),
        .in_memdep_kernel_2mm_avm_waitrequest(in_memdep_kernel_2mm_avm_waitrequest),
        .in_memdep_kernel_2mm_avm_writeack(in_memdep_kernel_2mm_avm_writeack),
        .in_notcmp93133_0(GND_q),
        .in_notcmp93133_1(bb_kernel_2mm_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_sr_out_o_stall),
        .in_stall_in_0(bb_kernel_2mm_B4_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_2mm_B5_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe3204(bb_kernel_2mm_B5_out_c0_exe3204),
        .out_exiting_stall_out(bb_kernel_2mm_B5_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_2mm_B5_out_exiting_valid_out),
        .out_memdep_kernel_2mm_avm_address(bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_address),
        .out_memdep_kernel_2mm_avm_burstcount(bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_burstcount),
        .out_memdep_kernel_2mm_avm_byteenable(bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_byteenable),
        .out_memdep_kernel_2mm_avm_enable(bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_enable),
        .out_memdep_kernel_2mm_avm_read(bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_read),
        .out_memdep_kernel_2mm_avm_write(bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_write),
        .out_memdep_kernel_2mm_avm_writedata(bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_writedata),
        .out_pipeline_valid_out(bb_kernel_2mm_B5_out_pipeline_valid_out),
        .out_stall_in_0(bb_kernel_2mm_B5_out_stall_in_0),
        .out_stall_out_0(bb_kernel_2mm_B5_out_stall_out_0),
        .out_stall_out_1(bb_kernel_2mm_B5_out_stall_out_1),
        .out_valid_in_0(bb_kernel_2mm_B5_out_valid_in_0),
        .out_valid_in_1(bb_kernel_2mm_B5_out_valid_in_1),
        .out_valid_out_0(bb_kernel_2mm_B5_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B5_sr_1_aunroll_x(BLACKBOX,13)
    kernel_2mm_bb_B5_sr_1 thebb_kernel_2mm_B5_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_kernel_2mm_B3_out_c0_exe2),
        .in_i_data_2_tpl(bb_kernel_2mm_B3_out_c0_exe3),
        .in_i_stall(bb_kernel_2mm_B5_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_2mm3_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_2mm_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_2mm_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_2mm_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_stall(bb_kernel_2mm_B5_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_2mm_B5_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_2mm3(BLACKBOX,216)
    kernel_2mm_loop_limiter_3 theloop_limiter_kernel_2mm3 (
        .in_i_stall(bb_kernel_2mm_B5_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_2mm_B5_out_exiting_stall_out),
        .in_i_valid(bb_kernel_2mm_B3_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_2mm_B5_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_2mm3_out_o_stall),
        .out_o_valid(loop_limiter_kernel_2mm3_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going95_kernel_2mm2_sr(BLACKBOX,150)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going95_2_sr thei_llvm_fpga_pipeline_keep_going95_kernel_2mm2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going95_kernel_2mm2_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_2mm_B3_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going95_kernel_2mm2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going95_kernel_2mm2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B3(BLACKBOX,29)
    kernel_2mm_bb_B3 thebb_kernel_2mm_B3 (
        .in_forked102_0(GND_q),
        .in_forked102_1(bb_kernel_2mm_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going95_kernel_2mm2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_kernel_2mm3_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going95_kernel_2mm2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_2mm_B3_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2(bb_kernel_2mm_B3_out_c0_exe2),
        .out_c0_exe3(bb_kernel_2mm_B3_out_c0_exe3),
        .out_exiting_stall_out(bb_kernel_2mm_B3_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_2mm_B3_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_kernel_2mm_B3_out_pipeline_valid_out),
        .out_stall_out_0(bb_kernel_2mm_B3_out_stall_out_0),
        .out_stall_out_1(bb_kernel_2mm_B3_out_stall_out_1),
        .out_valid_in_0(bb_kernel_2mm_B3_out_valid_in_0),
        .out_valid_in_1(bb_kernel_2mm_B3_out_valid_in_1),
        .out_valid_out_0(bb_kernel_2mm_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B3_sr_1_aunroll_x(BLACKBOX,11)
    kernel_2mm_bb_B3_sr_1 thebb_kernel_2mm_B3_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_stall(bb_kernel_2mm_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_2mm0_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_2mm_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_stall(bb_kernel_2mm_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_2mm_B3_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_2mm0(BLACKBOX,213)
    kernel_2mm_loop_limiter_0 theloop_limiter_kernel_2mm0 (
        .in_i_stall(bb_kernel_2mm_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_2mm_B3_out_exiting_stall_out),
        .in_i_valid(bb_kernel_2mm_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_2mm_B3_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_2mm0_out_o_stall),
        .out_o_valid(loop_limiter_kernel_2mm0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going99_kernel_2mm1_sr(BLACKBOX,152)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going99_1_sr thei_llvm_fpga_pipeline_keep_going99_kernel_2mm1_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going99_kernel_2mm1_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_2mm_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going99_kernel_2mm1_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going99_kernel_2mm1_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B1_start(BLACKBOX,27)
    kernel_2mm_bb_B1_start thebb_kernel_2mm_B1_start (
        .in_feedback_in_1(bb_kernel_2mm_B13_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_kernel_2mm_B13_out_feedback_valid_out_1),
        .in_iord_bl_call_kernel_2mm_i_fifodata(in_iord_bl_call_kernel_2mm_i_fifodata),
        .in_iord_bl_call_kernel_2mm_i_fifovalid(in_iord_bl_call_kernel_2mm_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going99_kernel_2mm1_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_kernel_2mm0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going99_kernel_2mm1_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_kernel_2mm_B1_start_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_5_0(bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_5_0),
        .out_iord_bl_call_kernel_2mm_o_fifoalmost_full(bb_kernel_2mm_B1_start_out_iord_bl_call_kernel_2mm_o_fifoalmost_full),
        .out_iord_bl_call_kernel_2mm_o_fifoready(bb_kernel_2mm_B1_start_out_iord_bl_call_kernel_2mm_o_fifoready),
        .out_pipeline_valid_out(bb_kernel_2mm_B1_start_out_pipeline_valid_out),
        .out_stall_out_0(bb_kernel_2mm_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_in_0(bb_kernel_2mm_B1_start_out_valid_in_0),
        .out_valid_in_1(bb_kernel_2mm_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_kernel_2mm_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B13(BLACKBOX,22)
    kernel_2mm_bb_B13 thebb_kernel_2mm_B13 (
        .in_feedback_stall_in_1(bb_kernel_2mm_B1_start_out_feedback_stall_out_1),
        .in_iowr_bl_return_kernel_2mm_i_fifoready(in_iowr_bl_return_kernel_2mm_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_kernel_2mm_B13_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_kernel_2mm_B13_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_kernel_2mm_B13_out_feedback_valid_out_1),
        .out_iowr_bl_return_kernel_2mm_o_fifodata(bb_kernel_2mm_B13_out_iowr_bl_return_kernel_2mm_o_fifodata),
        .out_iowr_bl_return_kernel_2mm_o_fifovalid(bb_kernel_2mm_B13_out_iowr_bl_return_kernel_2mm_o_fifovalid),
        .out_stall_in_0(bb_kernel_2mm_B13_out_stall_in_0),
        .out_stall_out_0(bb_kernel_2mm_B13_out_stall_out_0),
        .out_valid_out_0(bb_kernel_2mm_B13_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // kernel_2mm_B1_start_x(EXTIFACE,204)
    assign kernel_2mm_B1_start_x_i_capture = GND_q;
    assign kernel_2mm_B1_start_x_i_clear = GND_q;
    assign kernel_2mm_B1_start_x_i_enable = VCC_q;
    assign kernel_2mm_B1_start_x_i_shift = GND_q;
    assign kernel_2mm_B1_start_x_i_stall_pred = GND_q;
    assign kernel_2mm_B1_start_x_i_stall_succ = bb_kernel_2mm_B13_out_stall_in_0;
    assign kernel_2mm_B1_start_x_i_valid_loop = bb_kernel_2mm_B1_start_out_valid_in_0;
    assign kernel_2mm_B1_start_x_i_valid_pred = bb_kernel_2mm_B1_start_out_valid_in_1;
    assign kernel_2mm_B1_start_x_i_valid_succ = bb_kernel_2mm_B13_out_valid_out_0;
    assign kernel_2mm_B1_start_x_i_capture_bitsignaltemp = kernel_2mm_B1_start_x_i_capture[0];
    assign kernel_2mm_B1_start_x_i_clear_bitsignaltemp = kernel_2mm_B1_start_x_i_clear[0];
    assign kernel_2mm_B1_start_x_i_enable_bitsignaltemp = kernel_2mm_B1_start_x_i_enable[0];
    assign kernel_2mm_B1_start_x_i_shift_bitsignaltemp = kernel_2mm_B1_start_x_i_shift[0];
    assign kernel_2mm_B1_start_x_i_stall_pred_bitsignaltemp = kernel_2mm_B1_start_x_i_stall_pred[0];
    assign kernel_2mm_B1_start_x_i_stall_succ_bitsignaltemp = kernel_2mm_B1_start_x_i_stall_succ[0];
    assign kernel_2mm_B1_start_x_i_valid_loop_bitsignaltemp = kernel_2mm_B1_start_x_i_valid_loop[0];
    assign kernel_2mm_B1_start_x_i_valid_pred_bitsignaltemp = kernel_2mm_B1_start_x_i_valid_pred[0];
    assign kernel_2mm_B1_start_x_i_valid_succ_bitsignaltemp = kernel_2mm_B1_start_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_2mm.B1.start")
    ) thekernel_2mm_B1_start_x (
        .i_capture(kernel_2mm_B1_start_x_i_capture_bitsignaltemp),
        .i_clear(kernel_2mm_B1_start_x_i_clear_bitsignaltemp),
        .i_enable(kernel_2mm_B1_start_x_i_enable_bitsignaltemp),
        .i_shift(kernel_2mm_B1_start_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_2mm_B1_start_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_2mm_B1_start_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_2mm_B1_start_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_2mm_B1_start_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_2mm_B1_start_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_2mm_B11_x(EXTIFACE,205)
    assign kernel_2mm_B11_x_i_capture = GND_q;
    assign kernel_2mm_B11_x_i_clear = GND_q;
    assign kernel_2mm_B11_x_i_enable = VCC_q;
    assign kernel_2mm_B11_x_i_shift = GND_q;
    assign kernel_2mm_B11_x_i_stall_pred = loop_limiter_kernel_2mm6_out_o_stall;
    assign kernel_2mm_B11_x_i_stall_succ = bb_kernel_2mm_B11_out_stall_in_0;
    assign kernel_2mm_B11_x_i_valid_loop = bb_kernel_2mm_B11_out_valid_in_0;
    assign kernel_2mm_B11_x_i_valid_pred = bb_kernel_2mm_B11_out_valid_in_1;
    assign kernel_2mm_B11_x_i_valid_succ = bb_kernel_2mm_B11_out_valid_out_0;
    assign kernel_2mm_B11_x_i_capture_bitsignaltemp = kernel_2mm_B11_x_i_capture[0];
    assign kernel_2mm_B11_x_i_clear_bitsignaltemp = kernel_2mm_B11_x_i_clear[0];
    assign kernel_2mm_B11_x_i_enable_bitsignaltemp = kernel_2mm_B11_x_i_enable[0];
    assign kernel_2mm_B11_x_i_shift_bitsignaltemp = kernel_2mm_B11_x_i_shift[0];
    assign kernel_2mm_B11_x_i_stall_pred_bitsignaltemp = kernel_2mm_B11_x_i_stall_pred[0];
    assign kernel_2mm_B11_x_i_stall_succ_bitsignaltemp = kernel_2mm_B11_x_i_stall_succ[0];
    assign kernel_2mm_B11_x_i_valid_loop_bitsignaltemp = kernel_2mm_B11_x_i_valid_loop[0];
    assign kernel_2mm_B11_x_i_valid_pred_bitsignaltemp = kernel_2mm_B11_x_i_valid_pred[0];
    assign kernel_2mm_B11_x_i_valid_succ_bitsignaltemp = kernel_2mm_B11_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_2mm.B11")
    ) thekernel_2mm_B11_x (
        .i_capture(kernel_2mm_B11_x_i_capture_bitsignaltemp),
        .i_clear(kernel_2mm_B11_x_i_clear_bitsignaltemp),
        .i_enable(kernel_2mm_B11_x_i_enable_bitsignaltemp),
        .i_shift(kernel_2mm_B11_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_2mm_B11_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_2mm_B11_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_2mm_B11_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_2mm_B11_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_2mm_B11_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_2mm_B12_x(EXTIFACE,206)
    assign kernel_2mm_B12_x_i_capture = GND_q;
    assign kernel_2mm_B12_x_i_clear = GND_q;
    assign kernel_2mm_B12_x_i_enable = VCC_q;
    assign kernel_2mm_B12_x_i_shift = GND_q;
    assign kernel_2mm_B12_x_i_stall_pred = loop_limiter_kernel_2mm2_out_o_stall;
    assign kernel_2mm_B12_x_i_stall_succ = bb_kernel_2mm_B14_out_stall_in_0;
    assign kernel_2mm_B12_x_i_valid_loop = bb_kernel_2mm_B12_out_valid_in_0;
    assign kernel_2mm_B12_x_i_valid_pred = bb_kernel_2mm_B12_out_valid_in_1;
    assign kernel_2mm_B12_x_i_valid_succ = bb_kernel_2mm_B14_out_valid_out_0;
    assign kernel_2mm_B12_x_i_capture_bitsignaltemp = kernel_2mm_B12_x_i_capture[0];
    assign kernel_2mm_B12_x_i_clear_bitsignaltemp = kernel_2mm_B12_x_i_clear[0];
    assign kernel_2mm_B12_x_i_enable_bitsignaltemp = kernel_2mm_B12_x_i_enable[0];
    assign kernel_2mm_B12_x_i_shift_bitsignaltemp = kernel_2mm_B12_x_i_shift[0];
    assign kernel_2mm_B12_x_i_stall_pred_bitsignaltemp = kernel_2mm_B12_x_i_stall_pred[0];
    assign kernel_2mm_B12_x_i_stall_succ_bitsignaltemp = kernel_2mm_B12_x_i_stall_succ[0];
    assign kernel_2mm_B12_x_i_valid_loop_bitsignaltemp = kernel_2mm_B12_x_i_valid_loop[0];
    assign kernel_2mm_B12_x_i_valid_pred_bitsignaltemp = kernel_2mm_B12_x_i_valid_pred[0];
    assign kernel_2mm_B12_x_i_valid_succ_bitsignaltemp = kernel_2mm_B12_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_2mm.B12")
    ) thekernel_2mm_B12_x (
        .i_capture(kernel_2mm_B12_x_i_capture_bitsignaltemp),
        .i_clear(kernel_2mm_B12_x_i_clear_bitsignaltemp),
        .i_enable(kernel_2mm_B12_x_i_enable_bitsignaltemp),
        .i_shift(kernel_2mm_B12_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_2mm_B12_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_2mm_B12_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_2mm_B12_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_2mm_B12_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_2mm_B12_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_2mm_B15_x(EXTIFACE,207)
    assign kernel_2mm_B15_x_i_capture = GND_q;
    assign kernel_2mm_B15_x_i_clear = GND_q;
    assign kernel_2mm_B15_x_i_enable = VCC_q;
    assign kernel_2mm_B15_x_i_shift = GND_q;
    assign kernel_2mm_B15_x_i_stall_pred = loop_limiter_kernel_2mm5_out_o_stall;
    assign kernel_2mm_B15_x_i_stall_succ = bb_kernel_2mm_B16_out_stall_in_0;
    assign kernel_2mm_B15_x_i_valid_loop = bb_kernel_2mm_B15_out_valid_in_0;
    assign kernel_2mm_B15_x_i_valid_pred = bb_kernel_2mm_B15_out_valid_in_1;
    assign kernel_2mm_B15_x_i_valid_succ = bb_kernel_2mm_B16_out_valid_out_0;
    assign kernel_2mm_B15_x_i_capture_bitsignaltemp = kernel_2mm_B15_x_i_capture[0];
    assign kernel_2mm_B15_x_i_clear_bitsignaltemp = kernel_2mm_B15_x_i_clear[0];
    assign kernel_2mm_B15_x_i_enable_bitsignaltemp = kernel_2mm_B15_x_i_enable[0];
    assign kernel_2mm_B15_x_i_shift_bitsignaltemp = kernel_2mm_B15_x_i_shift[0];
    assign kernel_2mm_B15_x_i_stall_pred_bitsignaltemp = kernel_2mm_B15_x_i_stall_pred[0];
    assign kernel_2mm_B15_x_i_stall_succ_bitsignaltemp = kernel_2mm_B15_x_i_stall_succ[0];
    assign kernel_2mm_B15_x_i_valid_loop_bitsignaltemp = kernel_2mm_B15_x_i_valid_loop[0];
    assign kernel_2mm_B15_x_i_valid_pred_bitsignaltemp = kernel_2mm_B15_x_i_valid_pred[0];
    assign kernel_2mm_B15_x_i_valid_succ_bitsignaltemp = kernel_2mm_B15_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_2mm.B15")
    ) thekernel_2mm_B15_x (
        .i_capture(kernel_2mm_B15_x_i_capture_bitsignaltemp),
        .i_clear(kernel_2mm_B15_x_i_clear_bitsignaltemp),
        .i_enable(kernel_2mm_B15_x_i_enable_bitsignaltemp),
        .i_shift(kernel_2mm_B15_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_2mm_B15_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_2mm_B15_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_2mm_B15_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_2mm_B15_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_2mm_B15_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_2mm_B17_x(EXTIFACE,208)
    assign kernel_2mm_B17_x_i_capture = GND_q;
    assign kernel_2mm_B17_x_i_clear = GND_q;
    assign kernel_2mm_B17_x_i_enable = VCC_q;
    assign kernel_2mm_B17_x_i_shift = GND_q;
    assign kernel_2mm_B17_x_i_stall_pred = loop_limiter_kernel_2mm7_out_o_stall;
    assign kernel_2mm_B17_x_i_stall_succ = bb_kernel_2mm_B17_out_stall_in_0;
    assign kernel_2mm_B17_x_i_valid_loop = bb_kernel_2mm_B17_out_valid_in_0;
    assign kernel_2mm_B17_x_i_valid_pred = bb_kernel_2mm_B17_out_valid_in_1;
    assign kernel_2mm_B17_x_i_valid_succ = bb_kernel_2mm_B17_out_valid_out_0;
    assign kernel_2mm_B17_x_i_capture_bitsignaltemp = kernel_2mm_B17_x_i_capture[0];
    assign kernel_2mm_B17_x_i_clear_bitsignaltemp = kernel_2mm_B17_x_i_clear[0];
    assign kernel_2mm_B17_x_i_enable_bitsignaltemp = kernel_2mm_B17_x_i_enable[0];
    assign kernel_2mm_B17_x_i_shift_bitsignaltemp = kernel_2mm_B17_x_i_shift[0];
    assign kernel_2mm_B17_x_i_stall_pred_bitsignaltemp = kernel_2mm_B17_x_i_stall_pred[0];
    assign kernel_2mm_B17_x_i_stall_succ_bitsignaltemp = kernel_2mm_B17_x_i_stall_succ[0];
    assign kernel_2mm_B17_x_i_valid_loop_bitsignaltemp = kernel_2mm_B17_x_i_valid_loop[0];
    assign kernel_2mm_B17_x_i_valid_pred_bitsignaltemp = kernel_2mm_B17_x_i_valid_pred[0];
    assign kernel_2mm_B17_x_i_valid_succ_bitsignaltemp = kernel_2mm_B17_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_2mm.B17")
    ) thekernel_2mm_B17_x (
        .i_capture(kernel_2mm_B17_x_i_capture_bitsignaltemp),
        .i_clear(kernel_2mm_B17_x_i_clear_bitsignaltemp),
        .i_enable(kernel_2mm_B17_x_i_enable_bitsignaltemp),
        .i_shift(kernel_2mm_B17_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_2mm_B17_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_2mm_B17_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_2mm_B17_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_2mm_B17_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_2mm_B17_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_2mm_B3_x(EXTIFACE,209)
    assign kernel_2mm_B3_x_i_capture = GND_q;
    assign kernel_2mm_B3_x_i_clear = GND_q;
    assign kernel_2mm_B3_x_i_enable = VCC_q;
    assign kernel_2mm_B3_x_i_shift = GND_q;
    assign kernel_2mm_B3_x_i_stall_pred = loop_limiter_kernel_2mm0_out_o_stall;
    assign kernel_2mm_B3_x_i_stall_succ = bb_kernel_2mm_B4_out_stall_in_0;
    assign kernel_2mm_B3_x_i_valid_loop = bb_kernel_2mm_B3_out_valid_in_0;
    assign kernel_2mm_B3_x_i_valid_pred = bb_kernel_2mm_B3_out_valid_in_1;
    assign kernel_2mm_B3_x_i_valid_succ = bb_kernel_2mm_B4_out_valid_out_0;
    assign kernel_2mm_B3_x_i_capture_bitsignaltemp = kernel_2mm_B3_x_i_capture[0];
    assign kernel_2mm_B3_x_i_clear_bitsignaltemp = kernel_2mm_B3_x_i_clear[0];
    assign kernel_2mm_B3_x_i_enable_bitsignaltemp = kernel_2mm_B3_x_i_enable[0];
    assign kernel_2mm_B3_x_i_shift_bitsignaltemp = kernel_2mm_B3_x_i_shift[0];
    assign kernel_2mm_B3_x_i_stall_pred_bitsignaltemp = kernel_2mm_B3_x_i_stall_pred[0];
    assign kernel_2mm_B3_x_i_stall_succ_bitsignaltemp = kernel_2mm_B3_x_i_stall_succ[0];
    assign kernel_2mm_B3_x_i_valid_loop_bitsignaltemp = kernel_2mm_B3_x_i_valid_loop[0];
    assign kernel_2mm_B3_x_i_valid_pred_bitsignaltemp = kernel_2mm_B3_x_i_valid_pred[0];
    assign kernel_2mm_B3_x_i_valid_succ_bitsignaltemp = kernel_2mm_B3_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_2mm.B3")
    ) thekernel_2mm_B3_x (
        .i_capture(kernel_2mm_B3_x_i_capture_bitsignaltemp),
        .i_clear(kernel_2mm_B3_x_i_clear_bitsignaltemp),
        .i_enable(kernel_2mm_B3_x_i_enable_bitsignaltemp),
        .i_shift(kernel_2mm_B3_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_2mm_B3_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_2mm_B3_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_2mm_B3_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_2mm_B3_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_2mm_B3_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_2mm_B5_x(EXTIFACE,210)
    assign kernel_2mm_B5_x_i_capture = GND_q;
    assign kernel_2mm_B5_x_i_clear = GND_q;
    assign kernel_2mm_B5_x_i_enable = VCC_q;
    assign kernel_2mm_B5_x_i_shift = GND_q;
    assign kernel_2mm_B5_x_i_stall_pred = loop_limiter_kernel_2mm3_out_o_stall;
    assign kernel_2mm_B5_x_i_stall_succ = bb_kernel_2mm_B5_out_stall_in_0;
    assign kernel_2mm_B5_x_i_valid_loop = bb_kernel_2mm_B5_out_valid_in_0;
    assign kernel_2mm_B5_x_i_valid_pred = bb_kernel_2mm_B5_out_valid_in_1;
    assign kernel_2mm_B5_x_i_valid_succ = bb_kernel_2mm_B5_out_valid_out_0;
    assign kernel_2mm_B5_x_i_capture_bitsignaltemp = kernel_2mm_B5_x_i_capture[0];
    assign kernel_2mm_B5_x_i_clear_bitsignaltemp = kernel_2mm_B5_x_i_clear[0];
    assign kernel_2mm_B5_x_i_enable_bitsignaltemp = kernel_2mm_B5_x_i_enable[0];
    assign kernel_2mm_B5_x_i_shift_bitsignaltemp = kernel_2mm_B5_x_i_shift[0];
    assign kernel_2mm_B5_x_i_stall_pred_bitsignaltemp = kernel_2mm_B5_x_i_stall_pred[0];
    assign kernel_2mm_B5_x_i_stall_succ_bitsignaltemp = kernel_2mm_B5_x_i_stall_succ[0];
    assign kernel_2mm_B5_x_i_valid_loop_bitsignaltemp = kernel_2mm_B5_x_i_valid_loop[0];
    assign kernel_2mm_B5_x_i_valid_pred_bitsignaltemp = kernel_2mm_B5_x_i_valid_pred[0];
    assign kernel_2mm_B5_x_i_valid_succ_bitsignaltemp = kernel_2mm_B5_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_2mm.B5")
    ) thekernel_2mm_B5_x (
        .i_capture(kernel_2mm_B5_x_i_capture_bitsignaltemp),
        .i_clear(kernel_2mm_B5_x_i_clear_bitsignaltemp),
        .i_enable(kernel_2mm_B5_x_i_enable_bitsignaltemp),
        .i_shift(kernel_2mm_B5_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_2mm_B5_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_2mm_B5_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_2mm_B5_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_2mm_B5_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_2mm_B5_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_2mm_B7_x(EXTIFACE,211)
    assign kernel_2mm_B7_x_i_capture = GND_q;
    assign kernel_2mm_B7_x_i_clear = GND_q;
    assign kernel_2mm_B7_x_i_enable = VCC_q;
    assign kernel_2mm_B7_x_i_shift = GND_q;
    assign kernel_2mm_B7_x_i_stall_pred = loop_limiter_kernel_2mm1_out_o_stall;
    assign kernel_2mm_B7_x_i_stall_succ = bb_kernel_2mm_B8_out_stall_in_0;
    assign kernel_2mm_B7_x_i_valid_loop = bb_kernel_2mm_B7_out_valid_in_0;
    assign kernel_2mm_B7_x_i_valid_pred = bb_kernel_2mm_B7_out_valid_in_1;
    assign kernel_2mm_B7_x_i_valid_succ = bb_kernel_2mm_B8_out_valid_out_0;
    assign kernel_2mm_B7_x_i_capture_bitsignaltemp = kernel_2mm_B7_x_i_capture[0];
    assign kernel_2mm_B7_x_i_clear_bitsignaltemp = kernel_2mm_B7_x_i_clear[0];
    assign kernel_2mm_B7_x_i_enable_bitsignaltemp = kernel_2mm_B7_x_i_enable[0];
    assign kernel_2mm_B7_x_i_shift_bitsignaltemp = kernel_2mm_B7_x_i_shift[0];
    assign kernel_2mm_B7_x_i_stall_pred_bitsignaltemp = kernel_2mm_B7_x_i_stall_pred[0];
    assign kernel_2mm_B7_x_i_stall_succ_bitsignaltemp = kernel_2mm_B7_x_i_stall_succ[0];
    assign kernel_2mm_B7_x_i_valid_loop_bitsignaltemp = kernel_2mm_B7_x_i_valid_loop[0];
    assign kernel_2mm_B7_x_i_valid_pred_bitsignaltemp = kernel_2mm_B7_x_i_valid_pred[0];
    assign kernel_2mm_B7_x_i_valid_succ_bitsignaltemp = kernel_2mm_B7_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_2mm.B7")
    ) thekernel_2mm_B7_x (
        .i_capture(kernel_2mm_B7_x_i_capture_bitsignaltemp),
        .i_clear(kernel_2mm_B7_x_i_clear_bitsignaltemp),
        .i_enable(kernel_2mm_B7_x_i_enable_bitsignaltemp),
        .i_shift(kernel_2mm_B7_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_2mm_B7_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_2mm_B7_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_2mm_B7_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_2mm_B7_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_2mm_B7_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_2mm_B9_x(EXTIFACE,212)
    assign kernel_2mm_B9_x_i_capture = GND_q;
    assign kernel_2mm_B9_x_i_clear = GND_q;
    assign kernel_2mm_B9_x_i_enable = VCC_q;
    assign kernel_2mm_B9_x_i_shift = GND_q;
    assign kernel_2mm_B9_x_i_stall_pred = loop_limiter_kernel_2mm4_out_o_stall;
    assign kernel_2mm_B9_x_i_stall_succ = bb_kernel_2mm_B10_out_stall_in_0;
    assign kernel_2mm_B9_x_i_valid_loop = bb_kernel_2mm_B9_out_valid_in_0;
    assign kernel_2mm_B9_x_i_valid_pred = bb_kernel_2mm_B9_out_valid_in_1;
    assign kernel_2mm_B9_x_i_valid_succ = bb_kernel_2mm_B10_out_valid_out_0;
    assign kernel_2mm_B9_x_i_capture_bitsignaltemp = kernel_2mm_B9_x_i_capture[0];
    assign kernel_2mm_B9_x_i_clear_bitsignaltemp = kernel_2mm_B9_x_i_clear[0];
    assign kernel_2mm_B9_x_i_enable_bitsignaltemp = kernel_2mm_B9_x_i_enable[0];
    assign kernel_2mm_B9_x_i_shift_bitsignaltemp = kernel_2mm_B9_x_i_shift[0];
    assign kernel_2mm_B9_x_i_stall_pred_bitsignaltemp = kernel_2mm_B9_x_i_stall_pred[0];
    assign kernel_2mm_B9_x_i_stall_succ_bitsignaltemp = kernel_2mm_B9_x_i_stall_succ[0];
    assign kernel_2mm_B9_x_i_valid_loop_bitsignaltemp = kernel_2mm_B9_x_i_valid_loop[0];
    assign kernel_2mm_B9_x_i_valid_pred_bitsignaltemp = kernel_2mm_B9_x_i_valid_pred[0];
    assign kernel_2mm_B9_x_i_valid_succ_bitsignaltemp = kernel_2mm_B9_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_2mm.B9")
    ) thekernel_2mm_B9_x (
        .i_capture(kernel_2mm_B9_x_i_capture_bitsignaltemp),
        .i_clear(kernel_2mm_B9_x_i_clear_bitsignaltemp),
        .i_enable(kernel_2mm_B9_x_i_enable_bitsignaltemp),
        .i_shift(kernel_2mm_B9_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_2mm_B9_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_2mm_B9_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_2mm_B9_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_2mm_B9_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_2mm_B9_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_kernel_2mm_o_fifoalmost_full(GPOUT,221)
    assign out_iord_bl_call_kernel_2mm_o_fifoalmost_full = bb_kernel_2mm_B1_start_out_iord_bl_call_kernel_2mm_o_fifoalmost_full;

    // out_iord_bl_call_kernel_2mm_o_fifoready(GPOUT,222)
    assign out_iord_bl_call_kernel_2mm_o_fifoready = bb_kernel_2mm_B1_start_out_iord_bl_call_kernel_2mm_o_fifoready;

    // out_iowr_bl_return_kernel_2mm_o_fifodata(GPOUT,223)
    assign out_iowr_bl_return_kernel_2mm_o_fifodata = bb_kernel_2mm_B13_out_iowr_bl_return_kernel_2mm_o_fifodata;

    // out_iowr_bl_return_kernel_2mm_o_fifovalid(GPOUT,224)
    assign out_iowr_bl_return_kernel_2mm_o_fifovalid = bb_kernel_2mm_B13_out_iowr_bl_return_kernel_2mm_o_fifovalid;

    // out_memdep_1_kernel_2mm_avm_address(GPOUT,225)
    assign out_memdep_1_kernel_2mm_avm_address = bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_address;

    // out_memdep_1_kernel_2mm_avm_burstcount(GPOUT,226)
    assign out_memdep_1_kernel_2mm_avm_burstcount = bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_burstcount;

    // out_memdep_1_kernel_2mm_avm_byteenable(GPOUT,227)
    assign out_memdep_1_kernel_2mm_avm_byteenable = bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_byteenable;

    // out_memdep_1_kernel_2mm_avm_enable(GPOUT,228)
    assign out_memdep_1_kernel_2mm_avm_enable = bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_enable;

    // out_memdep_1_kernel_2mm_avm_read(GPOUT,229)
    assign out_memdep_1_kernel_2mm_avm_read = bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_read;

    // out_memdep_1_kernel_2mm_avm_write(GPOUT,230)
    assign out_memdep_1_kernel_2mm_avm_write = bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_write;

    // out_memdep_1_kernel_2mm_avm_writedata(GPOUT,231)
    assign out_memdep_1_kernel_2mm_avm_writedata = bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_writedata;

    // out_memdep_2_kernel_2mm_avm_address(GPOUT,232)
    assign out_memdep_2_kernel_2mm_avm_address = bb_kernel_2mm_B16_out_memdep_2_kernel_2mm_avm_address;

    // out_memdep_2_kernel_2mm_avm_burstcount(GPOUT,233)
    assign out_memdep_2_kernel_2mm_avm_burstcount = bb_kernel_2mm_B16_out_memdep_2_kernel_2mm_avm_burstcount;

    // out_memdep_2_kernel_2mm_avm_byteenable(GPOUT,234)
    assign out_memdep_2_kernel_2mm_avm_byteenable = bb_kernel_2mm_B16_out_memdep_2_kernel_2mm_avm_byteenable;

    // out_memdep_2_kernel_2mm_avm_enable(GPOUT,235)
    assign out_memdep_2_kernel_2mm_avm_enable = bb_kernel_2mm_B16_out_memdep_2_kernel_2mm_avm_enable;

    // out_memdep_2_kernel_2mm_avm_read(GPOUT,236)
    assign out_memdep_2_kernel_2mm_avm_read = bb_kernel_2mm_B16_out_memdep_2_kernel_2mm_avm_read;

    // out_memdep_2_kernel_2mm_avm_write(GPOUT,237)
    assign out_memdep_2_kernel_2mm_avm_write = bb_kernel_2mm_B16_out_memdep_2_kernel_2mm_avm_write;

    // out_memdep_2_kernel_2mm_avm_writedata(GPOUT,238)
    assign out_memdep_2_kernel_2mm_avm_writedata = bb_kernel_2mm_B16_out_memdep_2_kernel_2mm_avm_writedata;

    // out_memdep_kernel_2mm_avm_address(GPOUT,239)
    assign out_memdep_kernel_2mm_avm_address = bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_address;

    // out_memdep_kernel_2mm_avm_burstcount(GPOUT,240)
    assign out_memdep_kernel_2mm_avm_burstcount = bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_burstcount;

    // out_memdep_kernel_2mm_avm_byteenable(GPOUT,241)
    assign out_memdep_kernel_2mm_avm_byteenable = bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_byteenable;

    // out_memdep_kernel_2mm_avm_enable(GPOUT,242)
    assign out_memdep_kernel_2mm_avm_enable = bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_enable;

    // out_memdep_kernel_2mm_avm_read(GPOUT,243)
    assign out_memdep_kernel_2mm_avm_read = bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_read;

    // out_memdep_kernel_2mm_avm_write(GPOUT,244)
    assign out_memdep_kernel_2mm_avm_write = bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_write;

    // out_memdep_kernel_2mm_avm_writedata(GPOUT,245)
    assign out_memdep_kernel_2mm_avm_writedata = bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_writedata;

    // out_o_active_memdep_2(GPOUT,246)
    assign out_o_active_memdep_2 = bb_kernel_2mm_B16_out_lsu_memdep_2_o_active;

    // bb_kernel_2mm_B0_runOnce(BLACKBOX,18)
    kernel_2mm_bb_B0_runOnce thebb_kernel_2mm_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_kernel_2mm_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,247)
    assign out_stall_out = bb_kernel_2mm_B0_runOnce_out_stall_out_0;

    // out_unnamed_kernel_2mm11_kernel_2mm_avm_address(GPOUT,248)
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_address = bb_kernel_2mm_B9_out_unnamed_kernel_2mm11_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount(GPOUT,249)
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount = bb_kernel_2mm_B9_out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable(GPOUT,250)
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable = bb_kernel_2mm_B9_out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm11_kernel_2mm_avm_enable(GPOUT,251)
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_enable = bb_kernel_2mm_B9_out_unnamed_kernel_2mm11_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm11_kernel_2mm_avm_read(GPOUT,252)
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_read = bb_kernel_2mm_B9_out_unnamed_kernel_2mm11_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm11_kernel_2mm_avm_write(GPOUT,253)
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_write = bb_kernel_2mm_B9_out_unnamed_kernel_2mm11_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata(GPOUT,254)
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata = bb_kernel_2mm_B9_out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata;

    // out_unnamed_kernel_2mm15_kernel_2mm_avm_address(GPOUT,255)
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_address = bb_kernel_2mm_B11_out_unnamed_kernel_2mm15_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount(GPOUT,256)
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount = bb_kernel_2mm_B11_out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable(GPOUT,257)
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable = bb_kernel_2mm_B11_out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm15_kernel_2mm_avm_enable(GPOUT,258)
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_enable = bb_kernel_2mm_B11_out_unnamed_kernel_2mm15_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm15_kernel_2mm_avm_read(GPOUT,259)
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_read = bb_kernel_2mm_B11_out_unnamed_kernel_2mm15_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm15_kernel_2mm_avm_write(GPOUT,260)
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_write = bb_kernel_2mm_B11_out_unnamed_kernel_2mm15_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata(GPOUT,261)
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata = bb_kernel_2mm_B11_out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata;

    // out_unnamed_kernel_2mm16_kernel_2mm_avm_address(GPOUT,262)
    assign out_unnamed_kernel_2mm16_kernel_2mm_avm_address = bb_kernel_2mm_B11_out_unnamed_kernel_2mm16_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm16_kernel_2mm_avm_burstcount(GPOUT,263)
    assign out_unnamed_kernel_2mm16_kernel_2mm_avm_burstcount = bb_kernel_2mm_B11_out_unnamed_kernel_2mm16_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm16_kernel_2mm_avm_byteenable(GPOUT,264)
    assign out_unnamed_kernel_2mm16_kernel_2mm_avm_byteenable = bb_kernel_2mm_B11_out_unnamed_kernel_2mm16_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm16_kernel_2mm_avm_enable(GPOUT,265)
    assign out_unnamed_kernel_2mm16_kernel_2mm_avm_enable = bb_kernel_2mm_B11_out_unnamed_kernel_2mm16_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm16_kernel_2mm_avm_read(GPOUT,266)
    assign out_unnamed_kernel_2mm16_kernel_2mm_avm_read = bb_kernel_2mm_B11_out_unnamed_kernel_2mm16_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm16_kernel_2mm_avm_write(GPOUT,267)
    assign out_unnamed_kernel_2mm16_kernel_2mm_avm_write = bb_kernel_2mm_B11_out_unnamed_kernel_2mm16_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm16_kernel_2mm_avm_writedata(GPOUT,268)
    assign out_unnamed_kernel_2mm16_kernel_2mm_avm_writedata = bb_kernel_2mm_B11_out_unnamed_kernel_2mm16_kernel_2mm_avm_writedata;

    // out_unnamed_kernel_2mm19_kernel_2mm_avm_address(GPOUT,269)
    assign out_unnamed_kernel_2mm19_kernel_2mm_avm_address = bb_kernel_2mm_B15_out_unnamed_kernel_2mm19_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm19_kernel_2mm_avm_burstcount(GPOUT,270)
    assign out_unnamed_kernel_2mm19_kernel_2mm_avm_burstcount = bb_kernel_2mm_B15_out_unnamed_kernel_2mm19_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm19_kernel_2mm_avm_byteenable(GPOUT,271)
    assign out_unnamed_kernel_2mm19_kernel_2mm_avm_byteenable = bb_kernel_2mm_B15_out_unnamed_kernel_2mm19_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm19_kernel_2mm_avm_enable(GPOUT,272)
    assign out_unnamed_kernel_2mm19_kernel_2mm_avm_enable = bb_kernel_2mm_B15_out_unnamed_kernel_2mm19_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm19_kernel_2mm_avm_read(GPOUT,273)
    assign out_unnamed_kernel_2mm19_kernel_2mm_avm_read = bb_kernel_2mm_B15_out_unnamed_kernel_2mm19_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm19_kernel_2mm_avm_write(GPOUT,274)
    assign out_unnamed_kernel_2mm19_kernel_2mm_avm_write = bb_kernel_2mm_B15_out_unnamed_kernel_2mm19_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm19_kernel_2mm_avm_writedata(GPOUT,275)
    assign out_unnamed_kernel_2mm19_kernel_2mm_avm_writedata = bb_kernel_2mm_B15_out_unnamed_kernel_2mm19_kernel_2mm_avm_writedata;

    // out_unnamed_kernel_2mm20_kernel_2mm_avm_address(GPOUT,276)
    assign out_unnamed_kernel_2mm20_kernel_2mm_avm_address = bb_kernel_2mm_B17_out_unnamed_kernel_2mm20_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm20_kernel_2mm_avm_burstcount(GPOUT,277)
    assign out_unnamed_kernel_2mm20_kernel_2mm_avm_burstcount = bb_kernel_2mm_B17_out_unnamed_kernel_2mm20_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm20_kernel_2mm_avm_byteenable(GPOUT,278)
    assign out_unnamed_kernel_2mm20_kernel_2mm_avm_byteenable = bb_kernel_2mm_B17_out_unnamed_kernel_2mm20_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm20_kernel_2mm_avm_enable(GPOUT,279)
    assign out_unnamed_kernel_2mm20_kernel_2mm_avm_enable = bb_kernel_2mm_B17_out_unnamed_kernel_2mm20_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm20_kernel_2mm_avm_read(GPOUT,280)
    assign out_unnamed_kernel_2mm20_kernel_2mm_avm_read = bb_kernel_2mm_B17_out_unnamed_kernel_2mm20_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm20_kernel_2mm_avm_write(GPOUT,281)
    assign out_unnamed_kernel_2mm20_kernel_2mm_avm_write = bb_kernel_2mm_B17_out_unnamed_kernel_2mm20_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm20_kernel_2mm_avm_writedata(GPOUT,282)
    assign out_unnamed_kernel_2mm20_kernel_2mm_avm_writedata = bb_kernel_2mm_B17_out_unnamed_kernel_2mm20_kernel_2mm_avm_writedata;

    // out_unnamed_kernel_2mm22_kernel_2mm_avm_address(GPOUT,283)
    assign out_unnamed_kernel_2mm22_kernel_2mm_avm_address = bb_kernel_2mm_B17_out_unnamed_kernel_2mm22_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm22_kernel_2mm_avm_burstcount(GPOUT,284)
    assign out_unnamed_kernel_2mm22_kernel_2mm_avm_burstcount = bb_kernel_2mm_B17_out_unnamed_kernel_2mm22_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm22_kernel_2mm_avm_byteenable(GPOUT,285)
    assign out_unnamed_kernel_2mm22_kernel_2mm_avm_byteenable = bb_kernel_2mm_B17_out_unnamed_kernel_2mm22_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm22_kernel_2mm_avm_enable(GPOUT,286)
    assign out_unnamed_kernel_2mm22_kernel_2mm_avm_enable = bb_kernel_2mm_B17_out_unnamed_kernel_2mm22_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm22_kernel_2mm_avm_read(GPOUT,287)
    assign out_unnamed_kernel_2mm22_kernel_2mm_avm_read = bb_kernel_2mm_B17_out_unnamed_kernel_2mm22_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm22_kernel_2mm_avm_write(GPOUT,288)
    assign out_unnamed_kernel_2mm22_kernel_2mm_avm_write = bb_kernel_2mm_B17_out_unnamed_kernel_2mm22_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm22_kernel_2mm_avm_writedata(GPOUT,289)
    assign out_unnamed_kernel_2mm22_kernel_2mm_avm_writedata = bb_kernel_2mm_B17_out_unnamed_kernel_2mm22_kernel_2mm_avm_writedata;

    // out_valid_out(GPOUT,290)
    assign out_valid_out = GND_q;

endmodule
