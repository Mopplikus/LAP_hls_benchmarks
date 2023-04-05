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

// SystemVerilog created from stencil_2d_function
// Created for function/kernel stencil_2d
// SystemVerilog created on Tue Apr  4 22:01:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_function (
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_return,
    input wire [0:0] in_iord_bl_call_stencil_2d_i_fifodata,
    input wire [0:0] in_iord_bl_call_stencil_2d_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_stencil_2d_i_fifoready,
    input wire [31:0] in_memdep_1_stencil_2d_avm_readdata,
    input wire [0:0] in_memdep_1_stencil_2d_avm_readdatavalid,
    input wire [0:0] in_memdep_1_stencil_2d_avm_waitrequest,
    input wire [0:0] in_memdep_1_stencil_2d_avm_writeack,
    input wire [31:0] in_memdep_stencil_2d_avm_readdata,
    input wire [0:0] in_memdep_stencil_2d_avm_readdatavalid,
    input wire [0:0] in_memdep_stencil_2d_avm_waitrequest,
    input wire [0:0] in_memdep_stencil_2d_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [31:0] in_unnamed_stencil_2d4_stencil_2d_avm_readdata,
    input wire [0:0] in_unnamed_stencil_2d4_stencil_2d_avm_readdatavalid,
    input wire [0:0] in_unnamed_stencil_2d4_stencil_2d_avm_waitrequest,
    input wire [0:0] in_unnamed_stencil_2d4_stencil_2d_avm_writeack,
    input wire [31:0] in_unnamed_stencil_2d5_stencil_2d_avm_readdata,
    input wire [0:0] in_unnamed_stencil_2d5_stencil_2d_avm_readdatavalid,
    input wire [0:0] in_unnamed_stencil_2d5_stencil_2d_avm_waitrequest,
    input wire [0:0] in_unnamed_stencil_2d5_stencil_2d_avm_writeack,
    input wire [31:0] in_unnamed_stencil_2d6_stencil_2d_avm_readdata,
    input wire [0:0] in_unnamed_stencil_2d6_stencil_2d_avm_readdatavalid,
    input wire [0:0] in_unnamed_stencil_2d6_stencil_2d_avm_waitrequest,
    input wire [0:0] in_unnamed_stencil_2d6_stencil_2d_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_stencil_2d_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_stencil_2d_o_fifoready,
    output wire [31:0] out_iowr_bl_return_stencil_2d_o_fifodata,
    output wire [0:0] out_iowr_bl_return_stencil_2d_o_fifovalid,
    output wire [31:0] out_memdep_1_stencil_2d_avm_address,
    output wire [0:0] out_memdep_1_stencil_2d_avm_burstcount,
    output wire [3:0] out_memdep_1_stencil_2d_avm_byteenable,
    output wire [0:0] out_memdep_1_stencil_2d_avm_enable,
    output wire [0:0] out_memdep_1_stencil_2d_avm_read,
    output wire [0:0] out_memdep_1_stencil_2d_avm_write,
    output wire [31:0] out_memdep_1_stencil_2d_avm_writedata,
    output wire [31:0] out_memdep_stencil_2d_avm_address,
    output wire [0:0] out_memdep_stencil_2d_avm_burstcount,
    output wire [3:0] out_memdep_stencil_2d_avm_byteenable,
    output wire [0:0] out_memdep_stencil_2d_avm_enable,
    output wire [0:0] out_memdep_stencil_2d_avm_read,
    output wire [0:0] out_memdep_stencil_2d_avm_write,
    output wire [31:0] out_memdep_stencil_2d_avm_writedata,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_stencil_2d4_stencil_2d_avm_address,
    output wire [0:0] out_unnamed_stencil_2d4_stencil_2d_avm_burstcount,
    output wire [3:0] out_unnamed_stencil_2d4_stencil_2d_avm_byteenable,
    output wire [0:0] out_unnamed_stencil_2d4_stencil_2d_avm_enable,
    output wire [0:0] out_unnamed_stencil_2d4_stencil_2d_avm_read,
    output wire [0:0] out_unnamed_stencil_2d4_stencil_2d_avm_write,
    output wire [31:0] out_unnamed_stencil_2d4_stencil_2d_avm_writedata,
    output wire [31:0] out_unnamed_stencil_2d5_stencil_2d_avm_address,
    output wire [0:0] out_unnamed_stencil_2d5_stencil_2d_avm_burstcount,
    output wire [3:0] out_unnamed_stencil_2d5_stencil_2d_avm_byteenable,
    output wire [0:0] out_unnamed_stencil_2d5_stencil_2d_avm_enable,
    output wire [0:0] out_unnamed_stencil_2d5_stencil_2d_avm_read,
    output wire [0:0] out_unnamed_stencil_2d5_stencil_2d_avm_write,
    output wire [31:0] out_unnamed_stencil_2d5_stencil_2d_avm_writedata,
    output wire [31:0] out_unnamed_stencil_2d6_stencil_2d_avm_address,
    output wire [0:0] out_unnamed_stencil_2d6_stencil_2d_avm_burstcount,
    output wire [3:0] out_unnamed_stencil_2d6_stencil_2d_avm_byteenable,
    output wire [0:0] out_unnamed_stencil_2d6_stencil_2d_avm_enable,
    output wire [0:0] out_unnamed_stencil_2d6_stencil_2d_avm_read,
    output wire [0:0] out_unnamed_stencil_2d6_stencil_2d_avm_write,
    output wire [31:0] out_unnamed_stencil_2d6_stencil_2d_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_stencil_2d_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_stencil_2d_B10_out_c0_exe10;
    wire [31:0] bb_stencil_2d_B10_out_c0_exe11;
    wire [31:0] bb_stencil_2d_B10_out_c0_exe12;
    wire [31:0] bb_stencil_2d_B10_out_c0_exe1212;
    wire [0:0] bb_stencil_2d_B10_out_c0_exe13;
    wire [0:0] bb_stencil_2d_B10_out_c0_exe14;
    wire [31:0] bb_stencil_2d_B10_out_c0_exe15;
    wire [31:0] bb_stencil_2d_B10_out_c0_exe16;
    wire [31:0] bb_stencil_2d_B10_out_c0_exe17;
    wire [0:0] bb_stencil_2d_B10_out_c0_exe18;
    wire [31:0] bb_stencil_2d_B10_out_c0_exe2213;
    wire [31:0] bb_stencil_2d_B10_out_c0_exe3214;
    wire [31:0] bb_stencil_2d_B10_out_c0_exe4215;
    wire [0:0] bb_stencil_2d_B10_out_c0_exe5216;
    wire [0:0] bb_stencil_2d_B10_out_c0_exe6217;
    wire [31:0] bb_stencil_2d_B10_out_c0_exe7218;
    wire [0:0] bb_stencil_2d_B10_out_c0_exe8219;
    wire [0:0] bb_stencil_2d_B10_out_c0_exe9220;
    wire [0:0] bb_stencil_2d_B10_out_exiting_stall_out;
    wire [0:0] bb_stencil_2d_B10_out_exiting_valid_out;
    wire [0:0] bb_stencil_2d_B10_out_pipeline_valid_out;
    wire [0:0] bb_stencil_2d_B10_out_stall_out_0;
    wire [0:0] bb_stencil_2d_B10_out_stall_out_1;
    wire [0:0] bb_stencil_2d_B10_out_valid_in_0;
    wire [0:0] bb_stencil_2d_B10_out_valid_in_1;
    wire [0:0] bb_stencil_2d_B10_out_valid_out_0;
    wire [0:0] bb_stencil_2d_B11_out_c0_exe52616;
    wire [0:0] bb_stencil_2d_B11_out_stall_in_0;
    wire [0:0] bb_stencil_2d_B11_out_stall_out_0;
    wire [31:0] bb_stencil_2d_B11_out_unnamed_stencil_2d4_stencil_2d_avm_address;
    wire [0:0] bb_stencil_2d_B11_out_unnamed_stencil_2d4_stencil_2d_avm_burstcount;
    wire [3:0] bb_stencil_2d_B11_out_unnamed_stencil_2d4_stencil_2d_avm_byteenable;
    wire [0:0] bb_stencil_2d_B11_out_unnamed_stencil_2d4_stencil_2d_avm_enable;
    wire [0:0] bb_stencil_2d_B11_out_unnamed_stencil_2d4_stencil_2d_avm_read;
    wire [0:0] bb_stencil_2d_B11_out_unnamed_stencil_2d4_stencil_2d_avm_write;
    wire [31:0] bb_stencil_2d_B11_out_unnamed_stencil_2d4_stencil_2d_avm_writedata;
    wire [0:0] bb_stencil_2d_B11_out_valid_out_0;
    wire [31:0] bb_stencil_2d_B12_out_c0_exe22582;
    wire [31:0] bb_stencil_2d_B12_out_c0_exe42604;
    wire [0:0] bb_stencil_2d_B12_out_c0_exe52617;
    wire [0:0] bb_stencil_2d_B12_out_c0_exe62629;
    wire [31:0] bb_stencil_2d_B12_out_c0_exe726311;
    wire [0:0] bb_stencil_2d_B12_out_stall_in_0;
    wire [0:0] bb_stencil_2d_B12_out_stall_out_0;
    wire [0:0] bb_stencil_2d_B12_out_valid_out_0;
    wire [31:0] bb_stencil_2d_B13_out_c0_exe2258;
    wire [31:0] bb_stencil_2d_B13_out_c0_exe4260;
    wire [0:0] bb_stencil_2d_B13_out_c0_exe5261;
    wire [0:0] bb_stencil_2d_B13_out_c0_exe6262;
    wire [31:0] bb_stencil_2d_B13_out_c0_exe7263;
    wire [0:0] bb_stencil_2d_B13_out_c0_exe8264;
    wire [0:0] bb_stencil_2d_B13_out_exiting_stall_out;
    wire [0:0] bb_stencil_2d_B13_out_exiting_valid_out;
    wire [31:0] bb_stencil_2d_B13_out_intel_reserved_ffwd_0_0;
    wire [0:0] bb_stencil_2d_B13_out_pipeline_valid_out;
    wire [0:0] bb_stencil_2d_B13_out_stall_in_0;
    wire [0:0] bb_stencil_2d_B13_out_stall_out_0;
    wire [0:0] bb_stencil_2d_B13_out_stall_out_1;
    wire [31:0] bb_stencil_2d_B13_out_unnamed_stencil_2d5_stencil_2d_avm_address;
    wire [0:0] bb_stencil_2d_B13_out_unnamed_stencil_2d5_stencil_2d_avm_burstcount;
    wire [3:0] bb_stencil_2d_B13_out_unnamed_stencil_2d5_stencil_2d_avm_byteenable;
    wire [0:0] bb_stencil_2d_B13_out_unnamed_stencil_2d5_stencil_2d_avm_enable;
    wire [0:0] bb_stencil_2d_B13_out_unnamed_stencil_2d5_stencil_2d_avm_read;
    wire [0:0] bb_stencil_2d_B13_out_unnamed_stencil_2d5_stencil_2d_avm_write;
    wire [31:0] bb_stencil_2d_B13_out_unnamed_stencil_2d5_stencil_2d_avm_writedata;
    wire [31:0] bb_stencil_2d_B13_out_unnamed_stencil_2d6_stencil_2d_avm_address;
    wire [0:0] bb_stencil_2d_B13_out_unnamed_stencil_2d6_stencil_2d_avm_burstcount;
    wire [3:0] bb_stencil_2d_B13_out_unnamed_stencil_2d6_stencil_2d_avm_byteenable;
    wire [0:0] bb_stencil_2d_B13_out_unnamed_stencil_2d6_stencil_2d_avm_enable;
    wire [0:0] bb_stencil_2d_B13_out_unnamed_stencil_2d6_stencil_2d_avm_read;
    wire [0:0] bb_stencil_2d_B13_out_unnamed_stencil_2d6_stencil_2d_avm_write;
    wire [31:0] bb_stencil_2d_B13_out_unnamed_stencil_2d6_stencil_2d_avm_writedata;
    wire [0:0] bb_stencil_2d_B13_out_valid_in_0;
    wire [0:0] bb_stencil_2d_B13_out_valid_in_1;
    wire [0:0] bb_stencil_2d_B13_out_valid_out_0;
    wire [0:0] bb_stencil_2d_B1_start_out_feedback_stall_out_1;
    wire [0:0] bb_stencil_2d_B1_start_out_iord_bl_call_stencil_2d_o_fifoalmost_full;
    wire [0:0] bb_stencil_2d_B1_start_out_iord_bl_call_stencil_2d_o_fifoready;
    wire [0:0] bb_stencil_2d_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_stencil_2d_B1_start_out_stall_out_0;
    wire [0:0] bb_stencil_2d_B1_start_out_valid_in_0;
    wire [0:0] bb_stencil_2d_B1_start_out_valid_in_1;
    wire [0:0] bb_stencil_2d_B1_start_out_valid_out_0;
    wire [0:0] bb_stencil_2d_B2_out_stall_out_0;
    wire [0:0] bb_stencil_2d_B2_out_valid_out_0;
    wire [0:0] bb_stencil_2d_B3_out_exiting_stall_out;
    wire [0:0] bb_stencil_2d_B3_out_exiting_valid_out;
    wire [31:0] bb_stencil_2d_B3_out_memdep_stencil_2d_avm_address;
    wire [0:0] bb_stencil_2d_B3_out_memdep_stencil_2d_avm_burstcount;
    wire [3:0] bb_stencil_2d_B3_out_memdep_stencil_2d_avm_byteenable;
    wire [0:0] bb_stencil_2d_B3_out_memdep_stencil_2d_avm_enable;
    wire [0:0] bb_stencil_2d_B3_out_memdep_stencil_2d_avm_read;
    wire [0:0] bb_stencil_2d_B3_out_memdep_stencil_2d_avm_write;
    wire [31:0] bb_stencil_2d_B3_out_memdep_stencil_2d_avm_writedata;
    wire [0:0] bb_stencil_2d_B3_out_pipeline_valid_out;
    wire [0:0] bb_stencil_2d_B3_out_stall_in_0;
    wire [0:0] bb_stencil_2d_B3_out_stall_out_0;
    wire [0:0] bb_stencil_2d_B3_out_stall_out_1;
    wire [0:0] bb_stencil_2d_B3_out_valid_in_0;
    wire [0:0] bb_stencil_2d_B3_out_valid_in_1;
    wire [0:0] bb_stencil_2d_B3_out_valid_out_0;
    wire [0:0] bb_stencil_2d_B4_out_stall_out_0;
    wire [0:0] bb_stencil_2d_B4_out_valid_out_0;
    wire [0:0] bb_stencil_2d_B5_out_exiting_stall_out;
    wire [0:0] bb_stencil_2d_B5_out_exiting_valid_out;
    wire [31:0] bb_stencil_2d_B5_out_memdep_1_stencil_2d_avm_address;
    wire [0:0] bb_stencil_2d_B5_out_memdep_1_stencil_2d_avm_burstcount;
    wire [3:0] bb_stencil_2d_B5_out_memdep_1_stencil_2d_avm_byteenable;
    wire [0:0] bb_stencil_2d_B5_out_memdep_1_stencil_2d_avm_enable;
    wire [0:0] bb_stencil_2d_B5_out_memdep_1_stencil_2d_avm_read;
    wire [0:0] bb_stencil_2d_B5_out_memdep_1_stencil_2d_avm_write;
    wire [31:0] bb_stencil_2d_B5_out_memdep_1_stencil_2d_avm_writedata;
    wire [0:0] bb_stencil_2d_B5_out_pipeline_valid_out;
    wire [0:0] bb_stencil_2d_B5_out_stall_in_0;
    wire [0:0] bb_stencil_2d_B5_out_stall_out_0;
    wire [0:0] bb_stencil_2d_B5_out_stall_out_1;
    wire [0:0] bb_stencil_2d_B5_out_valid_in_0;
    wire [0:0] bb_stencil_2d_B5_out_valid_in_1;
    wire [0:0] bb_stencil_2d_B5_out_valid_out_0;
    wire [31:0] bb_stencil_2d_B6_out_c0_exe1179;
    wire [31:0] bb_stencil_2d_B6_out_c0_exe2180;
    wire [0:0] bb_stencil_2d_B6_out_c0_exe4;
    wire [0:0] bb_stencil_2d_B6_out_exiting_stall_out;
    wire [0:0] bb_stencil_2d_B6_out_exiting_valid_out;
    wire [0:0] bb_stencil_2d_B6_out_pipeline_valid_out;
    wire [0:0] bb_stencil_2d_B6_out_stall_out_0;
    wire [0:0] bb_stencil_2d_B6_out_stall_out_1;
    wire [0:0] bb_stencil_2d_B6_out_valid_in_0;
    wire [0:0] bb_stencil_2d_B6_out_valid_in_1;
    wire [0:0] bb_stencil_2d_B6_out_valid_out_0;
    wire [0:0] bb_stencil_2d_B7_out_feedback_out_1;
    wire [0:0] bb_stencil_2d_B7_out_feedback_valid_out_1;
    wire [31:0] bb_stencil_2d_B7_out_iowr_bl_return_stencil_2d_o_fifodata;
    wire [0:0] bb_stencil_2d_B7_out_iowr_bl_return_stencil_2d_o_fifovalid;
    wire [0:0] bb_stencil_2d_B7_out_stall_in_0;
    wire [0:0] bb_stencil_2d_B7_out_stall_out_0;
    wire [0:0] bb_stencil_2d_B7_out_valid_out_0;
    wire [0:0] bb_stencil_2d_B8_out_c0_exe2190;
    wire [31:0] bb_stencil_2d_B8_out_c0_exe3191;
    wire [31:0] bb_stencil_2d_B8_out_c0_exe4192;
    wire [31:0] bb_stencil_2d_B8_out_c0_exe5;
    wire [0:0] bb_stencil_2d_B8_out_c0_exe6;
    wire [31:0] bb_stencil_2d_B8_out_c0_exe7;
    wire [31:0] bb_stencil_2d_B8_out_c0_exe8;
    wire [0:0] bb_stencil_2d_B8_out_c0_exe9;
    wire [0:0] bb_stencil_2d_B8_out_exiting_stall_out;
    wire [0:0] bb_stencil_2d_B8_out_exiting_valid_out;
    wire [0:0] bb_stencil_2d_B8_out_pipeline_valid_out;
    wire [0:0] bb_stencil_2d_B8_out_stall_out_0;
    wire [0:0] bb_stencil_2d_B8_out_stall_out_1;
    wire [0:0] bb_stencil_2d_B8_out_valid_in_0;
    wire [0:0] bb_stencil_2d_B8_out_valid_in_1;
    wire [0:0] bb_stencil_2d_B8_out_valid_out_0;
    wire [0:0] bb_stencil_2d_B9_out_stall_in_0;
    wire [0:0] bb_stencil_2d_B9_out_stall_out_0;
    wire [0:0] bb_stencil_2d_B9_out_valid_out_0;
    wire [1:0] c_i2_0100_q;
    wire [31:0] c_i32_undef18_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going31_stencil_2d2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going31_stencil_2d2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going31_stencil_2d2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going31_stencil_2d2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going36_stencil_2d2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going36_stencil_2d2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going36_stencil_2d2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going36_stencil_2d2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going41_stencil_2d2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going41_stencil_2d2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going41_stencil_2d2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going41_stencil_2d2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_stencil_2d6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_stencil_2d6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_stencil_2d6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_stencil_2d6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going64_stencil_2d6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going64_stencil_2d6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going64_stencil_2d6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going64_stencil_2d6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going77_stencil_2d1_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going77_stencil_2d1_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going77_stencil_2d1_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going77_stencil_2d1_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_stencil_2d8_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_stencil_2d8_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_stencil_2d8_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_stencil_2d8_valid_fifo_out_valid_out;
    wire [0:0] loop_limiter_stencil_2d0_out_o_stall;
    wire [0:0] loop_limiter_stencil_2d0_out_o_valid;
    wire [0:0] loop_limiter_stencil_2d1_out_o_stall;
    wire [0:0] loop_limiter_stencil_2d1_out_o_valid;
    wire [0:0] loop_limiter_stencil_2d2_out_o_stall;
    wire [0:0] loop_limiter_stencil_2d2_out_o_valid;
    wire [0:0] loop_limiter_stencil_2d3_out_o_stall;
    wire [0:0] loop_limiter_stencil_2d3_out_o_valid;
    wire [0:0] loop_limiter_stencil_2d4_out_o_stall;
    wire [0:0] loop_limiter_stencil_2d4_out_o_valid;
    wire [0:0] loop_limiter_stencil_2d5_out_o_stall;
    wire [0:0] loop_limiter_stencil_2d5_out_o_valid;
    wire [0:0] stencil_2d_B1_start_x_i_capture;
    wire stencil_2d_B1_start_x_i_capture_bitsignaltemp;
    wire [0:0] stencil_2d_B1_start_x_i_clear;
    wire stencil_2d_B1_start_x_i_clear_bitsignaltemp;
    wire [0:0] stencil_2d_B1_start_x_i_enable;
    wire stencil_2d_B1_start_x_i_enable_bitsignaltemp;
    wire [0:0] stencil_2d_B1_start_x_i_shift;
    wire stencil_2d_B1_start_x_i_shift_bitsignaltemp;
    wire [0:0] stencil_2d_B1_start_x_i_stall_pred;
    wire stencil_2d_B1_start_x_i_stall_pred_bitsignaltemp;
    wire [0:0] stencil_2d_B1_start_x_i_stall_succ;
    wire stencil_2d_B1_start_x_i_stall_succ_bitsignaltemp;
    wire [0:0] stencil_2d_B1_start_x_i_valid_loop;
    wire stencil_2d_B1_start_x_i_valid_loop_bitsignaltemp;
    wire [0:0] stencil_2d_B1_start_x_i_valid_pred;
    wire stencil_2d_B1_start_x_i_valid_pred_bitsignaltemp;
    wire [0:0] stencil_2d_B1_start_x_i_valid_succ;
    wire stencil_2d_B1_start_x_i_valid_succ_bitsignaltemp;
    wire [0:0] stencil_2d_B10_x_i_capture;
    wire stencil_2d_B10_x_i_capture_bitsignaltemp;
    wire [0:0] stencil_2d_B10_x_i_clear;
    wire stencil_2d_B10_x_i_clear_bitsignaltemp;
    wire [0:0] stencil_2d_B10_x_i_enable;
    wire stencil_2d_B10_x_i_enable_bitsignaltemp;
    wire [0:0] stencil_2d_B10_x_i_shift;
    wire stencil_2d_B10_x_i_shift_bitsignaltemp;
    wire [0:0] stencil_2d_B10_x_i_stall_pred;
    wire stencil_2d_B10_x_i_stall_pred_bitsignaltemp;
    wire [0:0] stencil_2d_B10_x_i_stall_succ;
    wire stencil_2d_B10_x_i_stall_succ_bitsignaltemp;
    wire [0:0] stencil_2d_B10_x_i_valid_loop;
    wire stencil_2d_B10_x_i_valid_loop_bitsignaltemp;
    wire [0:0] stencil_2d_B10_x_i_valid_pred;
    wire stencil_2d_B10_x_i_valid_pred_bitsignaltemp;
    wire [0:0] stencil_2d_B10_x_i_valid_succ;
    wire stencil_2d_B10_x_i_valid_succ_bitsignaltemp;
    wire [0:0] stencil_2d_B13_x_i_capture;
    wire stencil_2d_B13_x_i_capture_bitsignaltemp;
    wire [0:0] stencil_2d_B13_x_i_clear;
    wire stencil_2d_B13_x_i_clear_bitsignaltemp;
    wire [0:0] stencil_2d_B13_x_i_enable;
    wire stencil_2d_B13_x_i_enable_bitsignaltemp;
    wire [0:0] stencil_2d_B13_x_i_shift;
    wire stencil_2d_B13_x_i_shift_bitsignaltemp;
    wire [0:0] stencil_2d_B13_x_i_stall_pred;
    wire stencil_2d_B13_x_i_stall_pred_bitsignaltemp;
    wire [0:0] stencil_2d_B13_x_i_stall_succ;
    wire stencil_2d_B13_x_i_stall_succ_bitsignaltemp;
    wire [0:0] stencil_2d_B13_x_i_valid_loop;
    wire stencil_2d_B13_x_i_valid_loop_bitsignaltemp;
    wire [0:0] stencil_2d_B13_x_i_valid_pred;
    wire stencil_2d_B13_x_i_valid_pred_bitsignaltemp;
    wire [0:0] stencil_2d_B13_x_i_valid_succ;
    wire stencil_2d_B13_x_i_valid_succ_bitsignaltemp;
    wire [0:0] stencil_2d_B3_x_i_capture;
    wire stencil_2d_B3_x_i_capture_bitsignaltemp;
    wire [0:0] stencil_2d_B3_x_i_clear;
    wire stencil_2d_B3_x_i_clear_bitsignaltemp;
    wire [0:0] stencil_2d_B3_x_i_enable;
    wire stencil_2d_B3_x_i_enable_bitsignaltemp;
    wire [0:0] stencil_2d_B3_x_i_shift;
    wire stencil_2d_B3_x_i_shift_bitsignaltemp;
    wire [0:0] stencil_2d_B3_x_i_stall_pred;
    wire stencil_2d_B3_x_i_stall_pred_bitsignaltemp;
    wire [0:0] stencil_2d_B3_x_i_stall_succ;
    wire stencil_2d_B3_x_i_stall_succ_bitsignaltemp;
    wire [0:0] stencil_2d_B3_x_i_valid_loop;
    wire stencil_2d_B3_x_i_valid_loop_bitsignaltemp;
    wire [0:0] stencil_2d_B3_x_i_valid_pred;
    wire stencil_2d_B3_x_i_valid_pred_bitsignaltemp;
    wire [0:0] stencil_2d_B3_x_i_valid_succ;
    wire stencil_2d_B3_x_i_valid_succ_bitsignaltemp;
    wire [0:0] stencil_2d_B5_x_i_capture;
    wire stencil_2d_B5_x_i_capture_bitsignaltemp;
    wire [0:0] stencil_2d_B5_x_i_clear;
    wire stencil_2d_B5_x_i_clear_bitsignaltemp;
    wire [0:0] stencil_2d_B5_x_i_enable;
    wire stencil_2d_B5_x_i_enable_bitsignaltemp;
    wire [0:0] stencil_2d_B5_x_i_shift;
    wire stencil_2d_B5_x_i_shift_bitsignaltemp;
    wire [0:0] stencil_2d_B5_x_i_stall_pred;
    wire stencil_2d_B5_x_i_stall_pred_bitsignaltemp;
    wire [0:0] stencil_2d_B5_x_i_stall_succ;
    wire stencil_2d_B5_x_i_stall_succ_bitsignaltemp;
    wire [0:0] stencil_2d_B5_x_i_valid_loop;
    wire stencil_2d_B5_x_i_valid_loop_bitsignaltemp;
    wire [0:0] stencil_2d_B5_x_i_valid_pred;
    wire stencil_2d_B5_x_i_valid_pred_bitsignaltemp;
    wire [0:0] stencil_2d_B5_x_i_valid_succ;
    wire stencil_2d_B5_x_i_valid_succ_bitsignaltemp;
    wire [0:0] stencil_2d_B6_x_i_capture;
    wire stencil_2d_B6_x_i_capture_bitsignaltemp;
    wire [0:0] stencil_2d_B6_x_i_clear;
    wire stencil_2d_B6_x_i_clear_bitsignaltemp;
    wire [0:0] stencil_2d_B6_x_i_enable;
    wire stencil_2d_B6_x_i_enable_bitsignaltemp;
    wire [0:0] stencil_2d_B6_x_i_shift;
    wire stencil_2d_B6_x_i_shift_bitsignaltemp;
    wire [0:0] stencil_2d_B6_x_i_stall_pred;
    wire stencil_2d_B6_x_i_stall_pred_bitsignaltemp;
    wire [0:0] stencil_2d_B6_x_i_stall_succ;
    wire stencil_2d_B6_x_i_stall_succ_bitsignaltemp;
    wire [0:0] stencil_2d_B6_x_i_valid_loop;
    wire stencil_2d_B6_x_i_valid_loop_bitsignaltemp;
    wire [0:0] stencil_2d_B6_x_i_valid_pred;
    wire stencil_2d_B6_x_i_valid_pred_bitsignaltemp;
    wire [0:0] stencil_2d_B6_x_i_valid_succ;
    wire stencil_2d_B6_x_i_valid_succ_bitsignaltemp;
    wire [0:0] stencil_2d_B8_x_i_capture;
    wire stencil_2d_B8_x_i_capture_bitsignaltemp;
    wire [0:0] stencil_2d_B8_x_i_clear;
    wire stencil_2d_B8_x_i_clear_bitsignaltemp;
    wire [0:0] stencil_2d_B8_x_i_enable;
    wire stencil_2d_B8_x_i_enable_bitsignaltemp;
    wire [0:0] stencil_2d_B8_x_i_shift;
    wire stencil_2d_B8_x_i_shift_bitsignaltemp;
    wire [0:0] stencil_2d_B8_x_i_stall_pred;
    wire stencil_2d_B8_x_i_stall_pred_bitsignaltemp;
    wire [0:0] stencil_2d_B8_x_i_stall_succ;
    wire stencil_2d_B8_x_i_stall_succ_bitsignaltemp;
    wire [0:0] stencil_2d_B8_x_i_valid_loop;
    wire stencil_2d_B8_x_i_valid_loop_bitsignaltemp;
    wire [0:0] stencil_2d_B8_x_i_valid_pred;
    wire stencil_2d_B8_x_i_valid_pred_bitsignaltemp;
    wire [0:0] stencil_2d_B8_x_i_valid_succ;
    wire stencil_2d_B8_x_i_valid_succ_bitsignaltemp;
    wire [0:0] bb_stencil_2d_B10_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_stencil_2d_B10_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_stencil_2d_B10_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_stencil_2d_B10_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_stencil_2d_B10_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_stencil_2d_B10_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_stencil_2d_B10_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_stencil_2d_B10_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_stencil_2d_B10_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_stencil_2d_B10_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_stencil_2d_B10_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_stencil_2d_B11_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_stencil_2d_B11_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_stencil_2d_B11_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_stencil_2d_B11_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_stencil_2d_B11_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_stencil_2d_B11_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_stencil_2d_B11_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_stencil_2d_B12_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_stencil_2d_B12_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_stencil_2d_B12_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_stencil_2d_B12_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_stencil_2d_B12_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_stencil_2d_B12_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_stencil_2d_B12_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_stencil_2d_B12_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_stencil_2d_B13_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_stencil_2d_B13_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [31:0] bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [31:0] bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [31:0] bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [0:0] bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_14_tpl;
    wire [0:0] bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_15_tpl;
    wire [31:0] bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_16_tpl;
    wire [0:0] bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_17_tpl;
    wire [0:0] bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_18_tpl;
    wire [0:0] bb_stencil_2d_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_stencil_2d_B2_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_stencil_2d_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_stencil_2d_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_stencil_2d_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_stencil_2d_B4_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_stencil_2d_B4_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_stencil_2d_B5_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_stencil_2d_B5_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_stencil_2d_B5_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_stencil_2d_B6_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_stencil_2d_B6_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_stencil_2d_B7_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_stencil_2d_B7_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_stencil_2d_B8_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_stencil_2d_B8_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_stencil_2d_B8_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_stencil_2d_B8_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_stencil_2d_B8_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_stencil_2d_B8_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_stencil_2d_B9_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_stencil_2d_B9_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_stencil_2d_B9_sr_0_aunroll_x_out_o_data_0_tpl;


    // c_i2_0100(CONSTANT,72)
    assign c_i2_0100_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going77_stencil_2d1_valid_fifo(BLACKBOX,108)
    stencil_2d_i_llvm_fpga_pipeline_keep_going77_1_valid_fifo thei_llvm_fpga_pipeline_keep_going77_stencil_2d1_valid_fifo (
        .in_data_in(c_i2_0100_q),
        .in_stall_in(bb_stencil_2d_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going77_stencil_2d1_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going77_stencil_2d1_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going77_stencil_2d1_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going64_stencil_2d6_valid_fifo(BLACKBOX,106)
    stencil_2d_i_llvm_fpga_pipeline_keep_going64_6_valid_fifo thei_llvm_fpga_pipeline_keep_going64_stencil_2d6_valid_fifo (
        .in_data_in(c_i2_0100_q),
        .in_stall_in(bb_stencil_2d_B3_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going64_stencil_2d6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going64_stencil_2d6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going64_stencil_2d6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going48_stencil_2d6_valid_fifo(BLACKBOX,104)
    stencil_2d_i_llvm_fpga_pipeline_keep_going48_6_valid_fifo thei_llvm_fpga_pipeline_keep_going48_stencil_2d6_valid_fifo (
        .in_data_in(c_i2_0100_q),
        .in_stall_in(bb_stencil_2d_B5_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going48_stencil_2d6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going48_stencil_2d6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going48_stencil_2d6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going41_stencil_2d2_valid_fifo(BLACKBOX,102)
    stencil_2d_i_llvm_fpga_pipeline_keep_going41_2_valid_fifo thei_llvm_fpga_pipeline_keep_going41_stencil_2d2_valid_fifo (
        .in_data_in(c_i2_0100_q),
        .in_stall_in(bb_stencil_2d_B6_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going41_stencil_2d2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going41_stencil_2d2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going41_stencil_2d2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going36_stencil_2d2_valid_fifo(BLACKBOX,100)
    stencil_2d_i_llvm_fpga_pipeline_keep_going36_2_valid_fifo thei_llvm_fpga_pipeline_keep_going36_stencil_2d2_valid_fifo (
        .in_data_in(c_i2_0100_q),
        .in_stall_in(bb_stencil_2d_B8_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going36_stencil_2d2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going36_stencil_2d2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going36_stencil_2d2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going31_stencil_2d2_valid_fifo(BLACKBOX,98)
    stencil_2d_i_llvm_fpga_pipeline_keep_going31_2_valid_fifo thei_llvm_fpga_pipeline_keep_going31_stencil_2d2_valid_fifo (
        .in_data_in(c_i2_0100_q),
        .in_stall_in(bb_stencil_2d_B10_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going31_stencil_2d2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going31_stencil_2d2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going31_stencil_2d2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_stencil_2d8_valid_fifo(BLACKBOX,110)
    stencil_2d_i_llvm_fpga_pipeline_keep_going_8_valid_fifo thei_llvm_fpga_pipeline_keep_going_stencil_2d8_valid_fifo (
        .in_data_in(c_i2_0100_q),
        .in_stall_in(bb_stencil_2d_B13_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_stencil_2d8_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_stencil_2d8_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_stencil_2d8_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B7_sr_0_aunroll_x(BLACKBOX,202)
    stencil_2d_bb_B7_sr_0 thebb_stencil_2d_B7_sr_0_aunroll_x (
        .in_i_stall(bb_stencil_2d_B7_out_stall_out_0),
        .in_i_valid(bb_stencil_2d_B9_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_stencil_2d_B7_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_stencil_2d_B7_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B9(BLACKBOX,15)
    stencil_2d_bb_B9 thebb_stencil_2d_B9 (
        .in_c0_exe52615_0(bb_stencil_2d_B9_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(bb_stencil_2d_B7_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_stencil_2d_B9_sr_0_aunroll_x_out_o_valid),
        .out_stall_in_0(bb_stencil_2d_B9_out_stall_in_0),
        .out_stall_out_0(bb_stencil_2d_B9_out_stall_out_0),
        .out_valid_out_0(bb_stencil_2d_B9_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B9_sr_0_aunroll_x(BLACKBOX,204)
    stencil_2d_bb_B9_sr_0 thebb_stencil_2d_B9_sr_0_aunroll_x (
        .in_i_stall(bb_stencil_2d_B9_out_stall_out_0),
        .in_i_valid(bb_stencil_2d_B11_out_valid_out_0),
        .in_i_data_0_tpl(bb_stencil_2d_B11_out_c0_exe52616),
        .out_o_stall(bb_stencil_2d_B9_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_stencil_2d_B9_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_stencil_2d_B9_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B11(BLACKBOX,4)
    stencil_2d_bb_B11 thebb_stencil_2d_B11 (
        .in_c0_exe22581_0(bb_stencil_2d_B11_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe42603_0(bb_stencil_2d_B11_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe52616_0(bb_stencil_2d_B11_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe62628_0(bb_stencil_2d_B11_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe726310_0(bb_stencil_2d_B11_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_flush(in_start),
        .in_stall_in_0(bb_stencil_2d_B9_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_stencil_2d4_stencil_2d_avm_readdata(in_unnamed_stencil_2d4_stencil_2d_avm_readdata),
        .in_unnamed_stencil_2d4_stencil_2d_avm_readdatavalid(in_unnamed_stencil_2d4_stencil_2d_avm_readdatavalid),
        .in_unnamed_stencil_2d4_stencil_2d_avm_waitrequest(in_unnamed_stencil_2d4_stencil_2d_avm_waitrequest),
        .in_unnamed_stencil_2d4_stencil_2d_avm_writeack(in_unnamed_stencil_2d4_stencil_2d_avm_writeack),
        .in_valid_in_0(bb_stencil_2d_B11_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe52616(bb_stencil_2d_B11_out_c0_exe52616),
        .out_stall_in_0(bb_stencil_2d_B11_out_stall_in_0),
        .out_stall_out_0(bb_stencil_2d_B11_out_stall_out_0),
        .out_unnamed_stencil_2d4_stencil_2d_avm_address(bb_stencil_2d_B11_out_unnamed_stencil_2d4_stencil_2d_avm_address),
        .out_unnamed_stencil_2d4_stencil_2d_avm_burstcount(bb_stencil_2d_B11_out_unnamed_stencil_2d4_stencil_2d_avm_burstcount),
        .out_unnamed_stencil_2d4_stencil_2d_avm_byteenable(bb_stencil_2d_B11_out_unnamed_stencil_2d4_stencil_2d_avm_byteenable),
        .out_unnamed_stencil_2d4_stencil_2d_avm_enable(bb_stencil_2d_B11_out_unnamed_stencil_2d4_stencil_2d_avm_enable),
        .out_unnamed_stencil_2d4_stencil_2d_avm_read(bb_stencil_2d_B11_out_unnamed_stencil_2d4_stencil_2d_avm_read),
        .out_unnamed_stencil_2d4_stencil_2d_avm_write(bb_stencil_2d_B11_out_unnamed_stencil_2d4_stencil_2d_avm_write),
        .out_unnamed_stencil_2d4_stencil_2d_avm_writedata(bb_stencil_2d_B11_out_unnamed_stencil_2d4_stencil_2d_avm_writedata),
        .out_valid_out_0(bb_stencil_2d_B11_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B11_sr_0_aunroll_x(BLACKBOX,194)
    stencil_2d_bb_B11_sr_0 thebb_stencil_2d_B11_sr_0_aunroll_x (
        .in_i_stall(bb_stencil_2d_B11_out_stall_out_0),
        .in_i_valid(bb_stencil_2d_B12_out_valid_out_0),
        .in_i_data_0_tpl(bb_stencil_2d_B12_out_c0_exe22582),
        .in_i_data_1_tpl(bb_stencil_2d_B12_out_c0_exe42604),
        .in_i_data_2_tpl(bb_stencil_2d_B12_out_c0_exe52617),
        .in_i_data_3_tpl(bb_stencil_2d_B12_out_c0_exe62629),
        .in_i_data_4_tpl(bb_stencil_2d_B12_out_c0_exe726311),
        .out_o_stall(bb_stencil_2d_B11_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_stencil_2d_B11_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_stencil_2d_B11_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_stencil_2d_B11_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_stencil_2d_B11_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_stencil_2d_B11_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_stencil_2d_B11_sr_0_aunroll_x_out_o_data_4_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B12(BLACKBOX,5)
    stencil_2d_bb_B12 thebb_stencil_2d_B12 (
        .in_c0_exe22582_0(bb_stencil_2d_B12_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe42604_0(bb_stencil_2d_B12_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe52617_0(bb_stencil_2d_B12_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe62629_0(bb_stencil_2d_B12_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe726311_0(bb_stencil_2d_B12_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe826412_0(bb_stencil_2d_B12_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_stall_in_0(bb_stencil_2d_B11_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_stencil_2d_B12_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe22582(bb_stencil_2d_B12_out_c0_exe22582),
        .out_c0_exe42604(bb_stencil_2d_B12_out_c0_exe42604),
        .out_c0_exe52617(bb_stencil_2d_B12_out_c0_exe52617),
        .out_c0_exe62629(bb_stencil_2d_B12_out_c0_exe62629),
        .out_c0_exe726311(bb_stencil_2d_B12_out_c0_exe726311),
        .out_stall_in_0(bb_stencil_2d_B12_out_stall_in_0),
        .out_stall_out_0(bb_stencil_2d_B12_out_stall_out_0),
        .out_valid_out_0(bb_stencil_2d_B12_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B12_sr_0_aunroll_x(BLACKBOX,195)
    stencil_2d_bb_B12_sr_0 thebb_stencil_2d_B12_sr_0_aunroll_x (
        .in_i_stall(bb_stencil_2d_B12_out_stall_out_0),
        .in_i_valid(bb_stencil_2d_B13_out_valid_out_0),
        .in_i_data_0_tpl(bb_stencil_2d_B13_out_c0_exe2258),
        .in_i_data_1_tpl(bb_stencil_2d_B13_out_c0_exe4260),
        .in_i_data_2_tpl(bb_stencil_2d_B13_out_c0_exe5261),
        .in_i_data_3_tpl(bb_stencil_2d_B13_out_c0_exe6262),
        .in_i_data_4_tpl(bb_stencil_2d_B13_out_c0_exe7263),
        .in_i_data_5_tpl(bb_stencil_2d_B13_out_c0_exe8264),
        .out_o_stall(bb_stencil_2d_B12_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_stencil_2d_B12_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_stencil_2d_B12_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_stencil_2d_B12_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_stencil_2d_B12_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_stencil_2d_B12_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_stencil_2d_B12_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_stencil_2d_B12_sr_0_aunroll_x_out_o_data_5_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_stencil_2d8_sr(BLACKBOX,109)
    stencil_2d_i_llvm_fpga_pipeline_keep_going_8_sr thei_llvm_fpga_pipeline_keep_going_stencil_2d8_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_stencil_2d8_valid_fifo_out_stall_out),
        .in_i_valid(bb_stencil_2d_B13_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_stencil_2d8_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_stencil_2d8_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B13(BLACKBOX,6)
    stencil_2d_bb_B13 thebb_stencil_2d_B13 (
        .in_c_035_pop27129_0(c_i32_undef18_q),
        .in_c_035_pop27129_1(bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_c_035_pop2794_pop37142_0(c_i32_undef18_q),
        .in_c_035_pop2794_pop37142_1(bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_dot_prod_add143_0(c_i32_undef18_q),
        .in_dot_prod_add143_1(bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_exitcond10144_0(GND_q),
        .in_exitcond10144_1(bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_14_tpl),
        .in_flush(in_start),
        .in_forked79139_0(GND_q),
        .in_forked79139_1(bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_forked_0(GND_q),
        .in_forked_1(bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_mul33_add18140_0(c_i32_undef18_q),
        .in_mul33_add18140_1(bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_mul50117_0(c_i32_undef18_q),
        .in_mul50117_1(bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_mul5086_pop29135_0(c_i32_undef18_q),
        .in_mul5086_pop29135_1(bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_mul5087_pop34146_0(c_i32_undef18_q),
        .in_mul5087_pop34146_1(bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_16_tpl),
        .in_notcmp29145_0(GND_q),
        .in_notcmp29145_1(bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_15_tpl),
        .in_notcmp34126_0(GND_q),
        .in_notcmp34126_1(bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_notcmp3492_pop36148_0(GND_q),
        .in_notcmp3492_pop36148_1(bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_18_tpl),
        .in_notcmp39122_0(GND_q),
        .in_notcmp39122_1(bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_notcmp3989_pop30138_0(GND_q),
        .in_notcmp3989_pop30138_1(bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_notcmp3990_pop35147_0(GND_q),
        .in_notcmp3990_pop35147_1(bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_17_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_stencil_2d8_sr_out_o_stall),
        .in_r_036_pop25112_0(c_i32_undef18_q),
        .in_r_036_pop25112_1(bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_r_036_pop2583_pop28132_0(c_i32_undef18_q),
        .in_r_036_pop2583_pop28132_1(bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_r_036_pop2584_pop33141_0(c_i32_undef18_q),
        .in_r_036_pop2584_pop33141_1(bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_stall_in_0(bb_stencil_2d_B12_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_stencil_2d5_stencil_2d_avm_readdata(in_unnamed_stencil_2d5_stencil_2d_avm_readdata),
        .in_unnamed_stencil_2d5_stencil_2d_avm_readdatavalid(in_unnamed_stencil_2d5_stencil_2d_avm_readdatavalid),
        .in_unnamed_stencil_2d5_stencil_2d_avm_waitrequest(in_unnamed_stencil_2d5_stencil_2d_avm_waitrequest),
        .in_unnamed_stencil_2d5_stencil_2d_avm_writeack(in_unnamed_stencil_2d5_stencil_2d_avm_writeack),
        .in_unnamed_stencil_2d6_stencil_2d_avm_readdata(in_unnamed_stencil_2d6_stencil_2d_avm_readdata),
        .in_unnamed_stencil_2d6_stencil_2d_avm_readdatavalid(in_unnamed_stencil_2d6_stencil_2d_avm_readdatavalid),
        .in_unnamed_stencil_2d6_stencil_2d_avm_waitrequest(in_unnamed_stencil_2d6_stencil_2d_avm_waitrequest),
        .in_unnamed_stencil_2d6_stencil_2d_avm_writeack(in_unnamed_stencil_2d6_stencil_2d_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_stencil_2d8_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_stencil_2d_B13_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2258(bb_stencil_2d_B13_out_c0_exe2258),
        .out_c0_exe4260(bb_stencil_2d_B13_out_c0_exe4260),
        .out_c0_exe5261(bb_stencil_2d_B13_out_c0_exe5261),
        .out_c0_exe6262(bb_stencil_2d_B13_out_c0_exe6262),
        .out_c0_exe7263(bb_stencil_2d_B13_out_c0_exe7263),
        .out_c0_exe8264(bb_stencil_2d_B13_out_c0_exe8264),
        .out_exiting_stall_out(bb_stencil_2d_B13_out_exiting_stall_out),
        .out_exiting_valid_out(bb_stencil_2d_B13_out_exiting_valid_out),
        .out_intel_reserved_ffwd_0_0(bb_stencil_2d_B13_out_intel_reserved_ffwd_0_0),
        .out_pipeline_valid_out(bb_stencil_2d_B13_out_pipeline_valid_out),
        .out_stall_in_0(bb_stencil_2d_B13_out_stall_in_0),
        .out_stall_out_0(bb_stencil_2d_B13_out_stall_out_0),
        .out_stall_out_1(bb_stencil_2d_B13_out_stall_out_1),
        .out_unnamed_stencil_2d5_stencil_2d_avm_address(bb_stencil_2d_B13_out_unnamed_stencil_2d5_stencil_2d_avm_address),
        .out_unnamed_stencil_2d5_stencil_2d_avm_burstcount(bb_stencil_2d_B13_out_unnamed_stencil_2d5_stencil_2d_avm_burstcount),
        .out_unnamed_stencil_2d5_stencil_2d_avm_byteenable(bb_stencil_2d_B13_out_unnamed_stencil_2d5_stencil_2d_avm_byteenable),
        .out_unnamed_stencil_2d5_stencil_2d_avm_enable(bb_stencil_2d_B13_out_unnamed_stencil_2d5_stencil_2d_avm_enable),
        .out_unnamed_stencil_2d5_stencil_2d_avm_read(bb_stencil_2d_B13_out_unnamed_stencil_2d5_stencil_2d_avm_read),
        .out_unnamed_stencil_2d5_stencil_2d_avm_write(bb_stencil_2d_B13_out_unnamed_stencil_2d5_stencil_2d_avm_write),
        .out_unnamed_stencil_2d5_stencil_2d_avm_writedata(bb_stencil_2d_B13_out_unnamed_stencil_2d5_stencil_2d_avm_writedata),
        .out_unnamed_stencil_2d6_stencil_2d_avm_address(bb_stencil_2d_B13_out_unnamed_stencil_2d6_stencil_2d_avm_address),
        .out_unnamed_stencil_2d6_stencil_2d_avm_burstcount(bb_stencil_2d_B13_out_unnamed_stencil_2d6_stencil_2d_avm_burstcount),
        .out_unnamed_stencil_2d6_stencil_2d_avm_byteenable(bb_stencil_2d_B13_out_unnamed_stencil_2d6_stencil_2d_avm_byteenable),
        .out_unnamed_stencil_2d6_stencil_2d_avm_enable(bb_stencil_2d_B13_out_unnamed_stencil_2d6_stencil_2d_avm_enable),
        .out_unnamed_stencil_2d6_stencil_2d_avm_read(bb_stencil_2d_B13_out_unnamed_stencil_2d6_stencil_2d_avm_read),
        .out_unnamed_stencil_2d6_stencil_2d_avm_write(bb_stencil_2d_B13_out_unnamed_stencil_2d6_stencil_2d_avm_write),
        .out_unnamed_stencil_2d6_stencil_2d_avm_writedata(bb_stencil_2d_B13_out_unnamed_stencil_2d6_stencil_2d_avm_writedata),
        .out_valid_in_0(bb_stencil_2d_B13_out_valid_in_0),
        .out_valid_in_1(bb_stencil_2d_B13_out_valid_in_1),
        .out_valid_out_0(bb_stencil_2d_B13_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // bb_stencil_2d_B13_sr_1_aunroll_x(BLACKBOX,196)
    stencil_2d_bb_B13_sr_1 thebb_stencil_2d_B13_sr_1_aunroll_x (
        .in_i_stall(bb_stencil_2d_B13_out_stall_out_1),
        .in_i_valid(loop_limiter_stencil_2d5_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_stencil_2d_B10_out_c0_exe11),
        .in_i_data_2_tpl(bb_stencil_2d_B10_out_c0_exe12),
        .in_i_data_3_tpl(bb_stencil_2d_B10_out_c0_exe13),
        .in_i_data_4_tpl(bb_stencil_2d_B10_out_c0_exe14),
        .in_i_data_5_tpl(bb_stencil_2d_B10_out_c0_exe15),
        .in_i_data_6_tpl(bb_stencil_2d_B10_out_c0_exe16),
        .in_i_data_7_tpl(bb_stencil_2d_B10_out_c0_exe17),
        .in_i_data_8_tpl(bb_stencil_2d_B10_out_c0_exe18),
        .in_i_data_9_tpl(bb_stencil_2d_B10_out_c0_exe10),
        .in_i_data_10_tpl(bb_stencil_2d_B10_out_c0_exe1212),
        .in_i_data_11_tpl(bb_stencil_2d_B10_out_c0_exe2213),
        .in_i_data_12_tpl(bb_stencil_2d_B10_out_c0_exe3214),
        .in_i_data_13_tpl(bb_stencil_2d_B10_out_c0_exe4215),
        .in_i_data_14_tpl(bb_stencil_2d_B10_out_c0_exe5216),
        .in_i_data_15_tpl(bb_stencil_2d_B10_out_c0_exe6217),
        .in_i_data_16_tpl(bb_stencil_2d_B10_out_c0_exe7218),
        .in_i_data_17_tpl(bb_stencil_2d_B10_out_c0_exe8219),
        .in_i_data_18_tpl(bb_stencil_2d_B10_out_c0_exe9220),
        .out_o_stall(bb_stencil_2d_B13_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_stencil_2d_B13_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_17_tpl),
        .out_o_data_18_tpl(bb_stencil_2d_B13_sr_1_aunroll_x_out_o_data_18_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_stencil_2d5(BLACKBOX,144)
    stencil_2d_loop_limiter_5 theloop_limiter_stencil_2d5 (
        .in_i_stall(bb_stencil_2d_B13_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_stencil_2d_B13_out_exiting_stall_out),
        .in_i_valid(bb_stencil_2d_B10_out_valid_out_0),
        .in_i_valid_exit(bb_stencil_2d_B13_out_exiting_valid_out),
        .out_o_stall(loop_limiter_stencil_2d5_out_o_stall),
        .out_o_valid(loop_limiter_stencil_2d5_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going31_stencil_2d2_sr(BLACKBOX,97)
    stencil_2d_i_llvm_fpga_pipeline_keep_going31_2_sr thei_llvm_fpga_pipeline_keep_going31_stencil_2d2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going31_stencil_2d2_valid_fifo_out_stall_out),
        .in_i_valid(bb_stencil_2d_B10_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going31_stencil_2d2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going31_stencil_2d2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B10(BLACKBOX,3)
    stencil_2d_bb_B10 thebb_stencil_2d_B10 (
        .in_c_035_pop27127_0(c_i32_undef18_q),
        .in_c_035_pop27127_1(bb_stencil_2d_B10_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_forked79_0(GND_q),
        .in_forked79_1(bb_stencil_2d_B10_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_mul50118_0(c_i32_undef18_q),
        .in_mul50118_1(bb_stencil_2d_B10_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_mul5086_pop29133_0(c_i32_undef18_q),
        .in_mul5086_pop29133_1(bb_stencil_2d_B10_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_notcmp34124_0(GND_q),
        .in_notcmp34124_1(bb_stencil_2d_B10_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_notcmp39123_0(GND_q),
        .in_notcmp39123_1(bb_stencil_2d_B10_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_notcmp3989_pop30136_0(GND_q),
        .in_notcmp3989_pop30136_1(bb_stencil_2d_B10_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going31_stencil_2d2_sr_out_o_stall),
        .in_r_036_pop25113_0(c_i32_undef18_q),
        .in_r_036_pop25113_1(bb_stencil_2d_B10_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_r_036_pop2583_pop28130_0(c_i32_undef18_q),
        .in_r_036_pop2583_pop28130_1(bb_stencil_2d_B10_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_stall_in_0(loop_limiter_stencil_2d5_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going31_stencil_2d2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_stencil_2d_B10_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10(bb_stencil_2d_B10_out_c0_exe10),
        .out_c0_exe11(bb_stencil_2d_B10_out_c0_exe11),
        .out_c0_exe12(bb_stencil_2d_B10_out_c0_exe12),
        .out_c0_exe1212(bb_stencil_2d_B10_out_c0_exe1212),
        .out_c0_exe13(bb_stencil_2d_B10_out_c0_exe13),
        .out_c0_exe14(bb_stencil_2d_B10_out_c0_exe14),
        .out_c0_exe15(bb_stencil_2d_B10_out_c0_exe15),
        .out_c0_exe16(bb_stencil_2d_B10_out_c0_exe16),
        .out_c0_exe17(bb_stencil_2d_B10_out_c0_exe17),
        .out_c0_exe18(bb_stencil_2d_B10_out_c0_exe18),
        .out_c0_exe2213(bb_stencil_2d_B10_out_c0_exe2213),
        .out_c0_exe3214(bb_stencil_2d_B10_out_c0_exe3214),
        .out_c0_exe4215(bb_stencil_2d_B10_out_c0_exe4215),
        .out_c0_exe5216(bb_stencil_2d_B10_out_c0_exe5216),
        .out_c0_exe6217(bb_stencil_2d_B10_out_c0_exe6217),
        .out_c0_exe7218(bb_stencil_2d_B10_out_c0_exe7218),
        .out_c0_exe8219(bb_stencil_2d_B10_out_c0_exe8219),
        .out_c0_exe9220(bb_stencil_2d_B10_out_c0_exe9220),
        .out_exiting_stall_out(bb_stencil_2d_B10_out_exiting_stall_out),
        .out_exiting_valid_out(bb_stencil_2d_B10_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_stencil_2d_B10_out_pipeline_valid_out),
        .out_stall_out_0(bb_stencil_2d_B10_out_stall_out_0),
        .out_stall_out_1(bb_stencil_2d_B10_out_stall_out_1),
        .out_valid_in_0(bb_stencil_2d_B10_out_valid_in_0),
        .out_valid_in_1(bb_stencil_2d_B10_out_valid_in_1),
        .out_valid_out_0(bb_stencil_2d_B10_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B10_sr_1_aunroll_x(BLACKBOX,193)
    stencil_2d_bb_B10_sr_1 thebb_stencil_2d_B10_sr_1_aunroll_x (
        .in_i_stall(bb_stencil_2d_B10_out_stall_out_1),
        .in_i_valid(loop_limiter_stencil_2d4_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_stencil_2d_B8_out_c0_exe7),
        .in_i_data_2_tpl(bb_stencil_2d_B8_out_c0_exe8),
        .in_i_data_3_tpl(bb_stencil_2d_B8_out_c0_exe9),
        .in_i_data_4_tpl(bb_stencil_2d_B8_out_c0_exe2190),
        .in_i_data_5_tpl(bb_stencil_2d_B8_out_c0_exe3191),
        .in_i_data_6_tpl(bb_stencil_2d_B8_out_c0_exe4192),
        .in_i_data_7_tpl(bb_stencil_2d_B8_out_c0_exe5),
        .in_i_data_8_tpl(bb_stencil_2d_B8_out_c0_exe6),
        .out_o_stall(bb_stencil_2d_B10_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_stencil_2d_B10_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_stencil_2d_B10_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_stencil_2d_B10_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_stencil_2d_B10_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_stencil_2d_B10_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_stencil_2d_B10_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_stencil_2d_B10_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_stencil_2d_B10_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_stencil_2d_B10_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_stencil_2d_B10_sr_1_aunroll_x_out_o_data_8_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_stencil_2d4(BLACKBOX,143)
    stencil_2d_loop_limiter_4 theloop_limiter_stencil_2d4 (
        .in_i_stall(bb_stencil_2d_B10_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_stencil_2d_B10_out_exiting_stall_out),
        .in_i_valid(bb_stencil_2d_B8_out_valid_out_0),
        .in_i_valid_exit(bb_stencil_2d_B10_out_exiting_valid_out),
        .out_o_stall(loop_limiter_stencil_2d4_out_o_stall),
        .out_o_valid(loop_limiter_stencil_2d4_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going36_stencil_2d2_sr(BLACKBOX,99)
    stencil_2d_i_llvm_fpga_pipeline_keep_going36_2_sr thei_llvm_fpga_pipeline_keep_going36_stencil_2d2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going36_stencil_2d2_valid_fifo_out_stall_out),
        .in_i_valid(bb_stencil_2d_B8_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going36_stencil_2d2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going36_stencil_2d2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef18(CONSTANT,79)
    assign c_i32_undef18_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_stencil_2d_B8(BLACKBOX,14)
    stencil_2d_bb_B8 thebb_stencil_2d_B8 (
        .in_forked82_0(GND_q),
        .in_forked82_1(bb_stencil_2d_B8_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_mul50114_0(c_i32_undef18_q),
        .in_mul50114_1(bb_stencil_2d_B8_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_notcmp39119_0(GND_q),
        .in_notcmp39119_1(bb_stencil_2d_B8_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going36_stencil_2d2_sr_out_o_stall),
        .in_r_036_pop25109_0(c_i32_undef18_q),
        .in_r_036_pop25109_1(bb_stencil_2d_B8_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_stall_in_0(loop_limiter_stencil_2d4_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going36_stencil_2d2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_stencil_2d_B8_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2190(bb_stencil_2d_B8_out_c0_exe2190),
        .out_c0_exe3191(bb_stencil_2d_B8_out_c0_exe3191),
        .out_c0_exe4192(bb_stencil_2d_B8_out_c0_exe4192),
        .out_c0_exe5(bb_stencil_2d_B8_out_c0_exe5),
        .out_c0_exe6(bb_stencil_2d_B8_out_c0_exe6),
        .out_c0_exe7(bb_stencil_2d_B8_out_c0_exe7),
        .out_c0_exe8(bb_stencil_2d_B8_out_c0_exe8),
        .out_c0_exe9(bb_stencil_2d_B8_out_c0_exe9),
        .out_exiting_stall_out(bb_stencil_2d_B8_out_exiting_stall_out),
        .out_exiting_valid_out(bb_stencil_2d_B8_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_stencil_2d_B8_out_pipeline_valid_out),
        .out_stall_out_0(bb_stencil_2d_B8_out_stall_out_0),
        .out_stall_out_1(bb_stencil_2d_B8_out_stall_out_1),
        .out_valid_in_0(bb_stencil_2d_B8_out_valid_in_0),
        .out_valid_in_1(bb_stencil_2d_B8_out_valid_in_1),
        .out_valid_out_0(bb_stencil_2d_B8_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B8_sr_1_aunroll_x(BLACKBOX,203)
    stencil_2d_bb_B8_sr_1 thebb_stencil_2d_B8_sr_1_aunroll_x (
        .in_i_stall(bb_stencil_2d_B8_out_stall_out_1),
        .in_i_valid(loop_limiter_stencil_2d3_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_stencil_2d_B6_out_c0_exe1179),
        .in_i_data_2_tpl(bb_stencil_2d_B6_out_c0_exe2180),
        .in_i_data_3_tpl(bb_stencil_2d_B6_out_c0_exe4),
        .out_o_stall(bb_stencil_2d_B8_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_stencil_2d_B8_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_stencil_2d_B8_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_stencil_2d_B8_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_stencil_2d_B8_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_stencil_2d_B8_sr_1_aunroll_x_out_o_data_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_stencil_2d3(BLACKBOX,142)
    stencil_2d_loop_limiter_3 theloop_limiter_stencil_2d3 (
        .in_i_stall(bb_stencil_2d_B8_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_stencil_2d_B8_out_exiting_stall_out),
        .in_i_valid(bb_stencil_2d_B6_out_valid_out_0),
        .in_i_valid_exit(bb_stencil_2d_B8_out_exiting_valid_out),
        .out_o_stall(loop_limiter_stencil_2d3_out_o_stall),
        .out_o_valid(loop_limiter_stencil_2d3_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going41_stencil_2d2_sr(BLACKBOX,101)
    stencil_2d_i_llvm_fpga_pipeline_keep_going41_2_sr thei_llvm_fpga_pipeline_keep_going41_stencil_2d2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going41_stencil_2d2_valid_fifo_out_stall_out),
        .in_i_valid(bb_stencil_2d_B6_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going41_stencil_2d2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going41_stencil_2d2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B6(BLACKBOX,12)
    stencil_2d_bb_B6 thebb_stencil_2d_B6 (
        .in_forked81_0(GND_q),
        .in_forked81_1(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going41_stencil_2d2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_stencil_2d3_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going41_stencil_2d2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe1179(bb_stencil_2d_B6_out_c0_exe1179),
        .out_c0_exe2180(bb_stencil_2d_B6_out_c0_exe2180),
        .out_c0_exe4(bb_stencil_2d_B6_out_c0_exe4),
        .out_exiting_stall_out(bb_stencil_2d_B6_out_exiting_stall_out),
        .out_exiting_valid_out(bb_stencil_2d_B6_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_stencil_2d_B6_out_pipeline_valid_out),
        .out_stall_out_0(bb_stencil_2d_B6_out_stall_out_0),
        .out_stall_out_1(bb_stencil_2d_B6_out_stall_out_1),
        .out_valid_in_0(bb_stencil_2d_B6_out_valid_in_0),
        .out_valid_in_1(bb_stencil_2d_B6_out_valid_in_1),
        .out_valid_out_0(bb_stencil_2d_B6_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B6_sr_1_aunroll_x(BLACKBOX,201)
    stencil_2d_bb_B6_sr_1 thebb_stencil_2d_B6_sr_1_aunroll_x (
        .in_i_stall(bb_stencil_2d_B6_out_stall_out_1),
        .in_i_valid(loop_limiter_stencil_2d2_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_stencil_2d2(BLACKBOX,141)
    stencil_2d_loop_limiter_2 theloop_limiter_stencil_2d2 (
        .in_i_stall(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_stencil_2d_B6_out_exiting_stall_out),
        .in_i_valid(bb_stencil_2d_B4_out_valid_out_0),
        .in_i_valid_exit(bb_stencil_2d_B6_out_exiting_valid_out),
        .out_o_stall(loop_limiter_stencil_2d2_out_o_stall),
        .out_o_valid(loop_limiter_stencil_2d2_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B4(BLACKBOX,10)
    stencil_2d_bb_B4 thebb_stencil_2d_B4 (
        .in_stall_in_0(loop_limiter_stencil_2d2_out_o_stall),
        .in_valid_in_0(bb_stencil_2d_B4_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_stencil_2d_B4_out_stall_out_0),
        .out_valid_out_0(bb_stencil_2d_B4_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B4_sr_0_aunroll_x(BLACKBOX,199)
    stencil_2d_bb_B4_sr_0 thebb_stencil_2d_B4_sr_0_aunroll_x (
        .in_i_stall(bb_stencil_2d_B4_out_stall_out_0),
        .in_i_valid(bb_stencil_2d_B5_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_stencil_2d_B4_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_stencil_2d_B4_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going48_stencil_2d6_sr(BLACKBOX,103)
    stencil_2d_i_llvm_fpga_pipeline_keep_going48_6_sr thei_llvm_fpga_pipeline_keep_going48_stencil_2d6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going48_stencil_2d6_valid_fifo_out_stall_out),
        .in_i_valid(bb_stencil_2d_B5_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going48_stencil_2d6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going48_stencil_2d6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B5(BLACKBOX,11)
    stencil_2d_bb_B5 thebb_stencil_2d_B5 (
        .in_flush(in_start),
        .in_forked45_0(GND_q),
        .in_forked45_1(bb_stencil_2d_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_memdep_1_stencil_2d_avm_readdata(in_memdep_1_stencil_2d_avm_readdata),
        .in_memdep_1_stencil_2d_avm_readdatavalid(in_memdep_1_stencil_2d_avm_readdatavalid),
        .in_memdep_1_stencil_2d_avm_waitrequest(in_memdep_1_stencil_2d_avm_waitrequest),
        .in_memdep_1_stencil_2d_avm_writeack(in_memdep_1_stencil_2d_avm_writeack),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going48_stencil_2d6_sr_out_o_stall),
        .in_stall_in_0(bb_stencil_2d_B4_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going48_stencil_2d6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_stencil_2d_B5_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(bb_stencil_2d_B5_out_exiting_stall_out),
        .out_exiting_valid_out(bb_stencil_2d_B5_out_exiting_valid_out),
        .out_memdep_1_stencil_2d_avm_address(bb_stencil_2d_B5_out_memdep_1_stencil_2d_avm_address),
        .out_memdep_1_stencil_2d_avm_burstcount(bb_stencil_2d_B5_out_memdep_1_stencil_2d_avm_burstcount),
        .out_memdep_1_stencil_2d_avm_byteenable(bb_stencil_2d_B5_out_memdep_1_stencil_2d_avm_byteenable),
        .out_memdep_1_stencil_2d_avm_enable(bb_stencil_2d_B5_out_memdep_1_stencil_2d_avm_enable),
        .out_memdep_1_stencil_2d_avm_read(bb_stencil_2d_B5_out_memdep_1_stencil_2d_avm_read),
        .out_memdep_1_stencil_2d_avm_write(bb_stencil_2d_B5_out_memdep_1_stencil_2d_avm_write),
        .out_memdep_1_stencil_2d_avm_writedata(bb_stencil_2d_B5_out_memdep_1_stencil_2d_avm_writedata),
        .out_pipeline_valid_out(bb_stencil_2d_B5_out_pipeline_valid_out),
        .out_stall_in_0(bb_stencil_2d_B5_out_stall_in_0),
        .out_stall_out_0(bb_stencil_2d_B5_out_stall_out_0),
        .out_stall_out_1(bb_stencil_2d_B5_out_stall_out_1),
        .out_valid_in_0(bb_stencil_2d_B5_out_valid_in_0),
        .out_valid_in_1(bb_stencil_2d_B5_out_valid_in_1),
        .out_valid_out_0(bb_stencil_2d_B5_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B5_sr_1_aunroll_x(BLACKBOX,200)
    stencil_2d_bb_B5_sr_1 thebb_stencil_2d_B5_sr_1_aunroll_x (
        .in_i_stall(bb_stencil_2d_B5_out_stall_out_1),
        .in_i_valid(loop_limiter_stencil_2d1_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_stencil_2d_B5_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_stencil_2d_B5_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_stencil_2d_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_stencil_2d1(BLACKBOX,140)
    stencil_2d_loop_limiter_1 theloop_limiter_stencil_2d1 (
        .in_i_stall(bb_stencil_2d_B5_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_stencil_2d_B5_out_exiting_stall_out),
        .in_i_valid(bb_stencil_2d_B2_out_valid_out_0),
        .in_i_valid_exit(bb_stencil_2d_B5_out_exiting_valid_out),
        .out_o_stall(loop_limiter_stencil_2d1_out_o_stall),
        .out_o_valid(loop_limiter_stencil_2d1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B2(BLACKBOX,8)
    stencil_2d_bb_B2 thebb_stencil_2d_B2 (
        .in_stall_in_0(loop_limiter_stencil_2d1_out_o_stall),
        .in_valid_in_0(bb_stencil_2d_B2_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_stencil_2d_B2_out_stall_out_0),
        .out_valid_out_0(bb_stencil_2d_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B2_sr_0_aunroll_x(BLACKBOX,197)
    stencil_2d_bb_B2_sr_0 thebb_stencil_2d_B2_sr_0_aunroll_x (
        .in_i_stall(bb_stencil_2d_B2_out_stall_out_0),
        .in_i_valid(bb_stencil_2d_B3_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_stencil_2d_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_stencil_2d_B2_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going64_stencil_2d6_sr(BLACKBOX,105)
    stencil_2d_i_llvm_fpga_pipeline_keep_going64_6_sr thei_llvm_fpga_pipeline_keep_going64_stencil_2d6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going64_stencil_2d6_valid_fifo_out_stall_out),
        .in_i_valid(bb_stencil_2d_B3_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going64_stencil_2d6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going64_stencil_2d6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bb_stencil_2d_B3(BLACKBOX,9)
    stencil_2d_bb_B3 thebb_stencil_2d_B3 (
        .in_flush(in_start),
        .in_forked61_0(GND_q),
        .in_forked61_1(bb_stencil_2d_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_memdep_stencil_2d_avm_readdata(in_memdep_stencil_2d_avm_readdata),
        .in_memdep_stencil_2d_avm_readdatavalid(in_memdep_stencil_2d_avm_readdatavalid),
        .in_memdep_stencil_2d_avm_waitrequest(in_memdep_stencil_2d_avm_waitrequest),
        .in_memdep_stencil_2d_avm_writeack(in_memdep_stencil_2d_avm_writeack),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going64_stencil_2d6_sr_out_o_stall),
        .in_stall_in_0(bb_stencil_2d_B2_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going64_stencil_2d6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_stencil_2d_B3_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(bb_stencil_2d_B3_out_exiting_stall_out),
        .out_exiting_valid_out(bb_stencil_2d_B3_out_exiting_valid_out),
        .out_memdep_stencil_2d_avm_address(bb_stencil_2d_B3_out_memdep_stencil_2d_avm_address),
        .out_memdep_stencil_2d_avm_burstcount(bb_stencil_2d_B3_out_memdep_stencil_2d_avm_burstcount),
        .out_memdep_stencil_2d_avm_byteenable(bb_stencil_2d_B3_out_memdep_stencil_2d_avm_byteenable),
        .out_memdep_stencil_2d_avm_enable(bb_stencil_2d_B3_out_memdep_stencil_2d_avm_enable),
        .out_memdep_stencil_2d_avm_read(bb_stencil_2d_B3_out_memdep_stencil_2d_avm_read),
        .out_memdep_stencil_2d_avm_write(bb_stencil_2d_B3_out_memdep_stencil_2d_avm_write),
        .out_memdep_stencil_2d_avm_writedata(bb_stencil_2d_B3_out_memdep_stencil_2d_avm_writedata),
        .out_pipeline_valid_out(bb_stencil_2d_B3_out_pipeline_valid_out),
        .out_stall_in_0(bb_stencil_2d_B3_out_stall_in_0),
        .out_stall_out_0(bb_stencil_2d_B3_out_stall_out_0),
        .out_stall_out_1(bb_stencil_2d_B3_out_stall_out_1),
        .out_valid_in_0(bb_stencil_2d_B3_out_valid_in_0),
        .out_valid_in_1(bb_stencil_2d_B3_out_valid_in_1),
        .out_valid_out_0(bb_stencil_2d_B3_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B3_sr_1_aunroll_x(BLACKBOX,198)
    stencil_2d_bb_B3_sr_1 thebb_stencil_2d_B3_sr_1_aunroll_x (
        .in_i_stall(bb_stencil_2d_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_stencil_2d0_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_stencil_2d_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_stencil_2d_B3_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_stencil_2d_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_stencil_2d0(BLACKBOX,139)
    stencil_2d_loop_limiter_0 theloop_limiter_stencil_2d0 (
        .in_i_stall(bb_stencil_2d_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_stencil_2d_B3_out_exiting_stall_out),
        .in_i_valid(bb_stencil_2d_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_stencil_2d_B3_out_exiting_valid_out),
        .out_o_stall(loop_limiter_stencil_2d0_out_o_stall),
        .out_o_valid(loop_limiter_stencil_2d0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going77_stencil_2d1_sr(BLACKBOX,107)
    stencil_2d_i_llvm_fpga_pipeline_keep_going77_1_sr thei_llvm_fpga_pipeline_keep_going77_stencil_2d1_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going77_stencil_2d1_valid_fifo_out_stall_out),
        .in_i_valid(bb_stencil_2d_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going77_stencil_2d1_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going77_stencil_2d1_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B7(BLACKBOX,13)
    stencil_2d_bb_B7 thebb_stencil_2d_B7 (
        .in_feedback_stall_in_1(bb_stencil_2d_B1_start_out_feedback_stall_out_1),
        .in_intel_reserved_ffwd_0_0(bb_stencil_2d_B13_out_intel_reserved_ffwd_0_0),
        .in_iowr_bl_return_stencil_2d_i_fifoready(in_iowr_bl_return_stencil_2d_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_stencil_2d_B7_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_stencil_2d_B7_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_stencil_2d_B7_out_feedback_valid_out_1),
        .out_iowr_bl_return_stencil_2d_o_fifodata(bb_stencil_2d_B7_out_iowr_bl_return_stencil_2d_o_fifodata),
        .out_iowr_bl_return_stencil_2d_o_fifovalid(bb_stencil_2d_B7_out_iowr_bl_return_stencil_2d_o_fifovalid),
        .out_stall_in_0(bb_stencil_2d_B7_out_stall_in_0),
        .out_stall_out_0(bb_stencil_2d_B7_out_stall_out_0),
        .out_valid_out_0(bb_stencil_2d_B7_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B1_start(BLACKBOX,7)
    stencil_2d_bb_B1_start thebb_stencil_2d_B1_start (
        .in_feedback_in_1(bb_stencil_2d_B7_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_stencil_2d_B7_out_feedback_valid_out_1),
        .in_iord_bl_call_stencil_2d_i_fifodata(in_iord_bl_call_stencil_2d_i_fifodata),
        .in_iord_bl_call_stencil_2d_i_fifovalid(in_iord_bl_call_stencil_2d_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going77_stencil_2d1_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_stencil_2d0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going77_stencil_2d1_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_stencil_2d_B1_start_out_feedback_stall_out_1),
        .out_iord_bl_call_stencil_2d_o_fifoalmost_full(bb_stencil_2d_B1_start_out_iord_bl_call_stencil_2d_o_fifoalmost_full),
        .out_iord_bl_call_stencil_2d_o_fifoready(bb_stencil_2d_B1_start_out_iord_bl_call_stencil_2d_o_fifoready),
        .out_pipeline_valid_out(bb_stencil_2d_B1_start_out_pipeline_valid_out),
        .out_stall_out_0(bb_stencil_2d_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_in_0(bb_stencil_2d_B1_start_out_valid_in_0),
        .out_valid_in_1(bb_stencil_2d_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_stencil_2d_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_stencil_2d_o_fifoalmost_full(GPOUT,145)
    assign out_iord_bl_call_stencil_2d_o_fifoalmost_full = bb_stencil_2d_B1_start_out_iord_bl_call_stencil_2d_o_fifoalmost_full;

    // out_iord_bl_call_stencil_2d_o_fifoready(GPOUT,146)
    assign out_iord_bl_call_stencil_2d_o_fifoready = bb_stencil_2d_B1_start_out_iord_bl_call_stencil_2d_o_fifoready;

    // out_iowr_bl_return_stencil_2d_o_fifodata(GPOUT,147)
    assign out_iowr_bl_return_stencil_2d_o_fifodata = bb_stencil_2d_B7_out_iowr_bl_return_stencil_2d_o_fifodata;

    // out_iowr_bl_return_stencil_2d_o_fifovalid(GPOUT,148)
    assign out_iowr_bl_return_stencil_2d_o_fifovalid = bb_stencil_2d_B7_out_iowr_bl_return_stencil_2d_o_fifovalid;

    // out_memdep_1_stencil_2d_avm_address(GPOUT,149)
    assign out_memdep_1_stencil_2d_avm_address = bb_stencil_2d_B5_out_memdep_1_stencil_2d_avm_address;

    // out_memdep_1_stencil_2d_avm_burstcount(GPOUT,150)
    assign out_memdep_1_stencil_2d_avm_burstcount = bb_stencil_2d_B5_out_memdep_1_stencil_2d_avm_burstcount;

    // out_memdep_1_stencil_2d_avm_byteenable(GPOUT,151)
    assign out_memdep_1_stencil_2d_avm_byteenable = bb_stencil_2d_B5_out_memdep_1_stencil_2d_avm_byteenable;

    // out_memdep_1_stencil_2d_avm_enable(GPOUT,152)
    assign out_memdep_1_stencil_2d_avm_enable = bb_stencil_2d_B5_out_memdep_1_stencil_2d_avm_enable;

    // out_memdep_1_stencil_2d_avm_read(GPOUT,153)
    assign out_memdep_1_stencil_2d_avm_read = bb_stencil_2d_B5_out_memdep_1_stencil_2d_avm_read;

    // out_memdep_1_stencil_2d_avm_write(GPOUT,154)
    assign out_memdep_1_stencil_2d_avm_write = bb_stencil_2d_B5_out_memdep_1_stencil_2d_avm_write;

    // out_memdep_1_stencil_2d_avm_writedata(GPOUT,155)
    assign out_memdep_1_stencil_2d_avm_writedata = bb_stencil_2d_B5_out_memdep_1_stencil_2d_avm_writedata;

    // out_memdep_stencil_2d_avm_address(GPOUT,156)
    assign out_memdep_stencil_2d_avm_address = bb_stencil_2d_B3_out_memdep_stencil_2d_avm_address;

    // out_memdep_stencil_2d_avm_burstcount(GPOUT,157)
    assign out_memdep_stencil_2d_avm_burstcount = bb_stencil_2d_B3_out_memdep_stencil_2d_avm_burstcount;

    // out_memdep_stencil_2d_avm_byteenable(GPOUT,158)
    assign out_memdep_stencil_2d_avm_byteenable = bb_stencil_2d_B3_out_memdep_stencil_2d_avm_byteenable;

    // out_memdep_stencil_2d_avm_enable(GPOUT,159)
    assign out_memdep_stencil_2d_avm_enable = bb_stencil_2d_B3_out_memdep_stencil_2d_avm_enable;

    // out_memdep_stencil_2d_avm_read(GPOUT,160)
    assign out_memdep_stencil_2d_avm_read = bb_stencil_2d_B3_out_memdep_stencil_2d_avm_read;

    // out_memdep_stencil_2d_avm_write(GPOUT,161)
    assign out_memdep_stencil_2d_avm_write = bb_stencil_2d_B3_out_memdep_stencil_2d_avm_write;

    // out_memdep_stencil_2d_avm_writedata(GPOUT,162)
    assign out_memdep_stencil_2d_avm_writedata = bb_stencil_2d_B3_out_memdep_stencil_2d_avm_writedata;

    // bb_stencil_2d_B0_runOnce(BLACKBOX,2)
    stencil_2d_bb_B0_runOnce thebb_stencil_2d_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_stencil_2d_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,163)
    assign out_stall_out = bb_stencil_2d_B0_runOnce_out_stall_out_0;

    // out_unnamed_stencil_2d4_stencil_2d_avm_address(GPOUT,164)
    assign out_unnamed_stencil_2d4_stencil_2d_avm_address = bb_stencil_2d_B11_out_unnamed_stencil_2d4_stencil_2d_avm_address;

    // out_unnamed_stencil_2d4_stencil_2d_avm_burstcount(GPOUT,165)
    assign out_unnamed_stencil_2d4_stencil_2d_avm_burstcount = bb_stencil_2d_B11_out_unnamed_stencil_2d4_stencil_2d_avm_burstcount;

    // out_unnamed_stencil_2d4_stencil_2d_avm_byteenable(GPOUT,166)
    assign out_unnamed_stencil_2d4_stencil_2d_avm_byteenable = bb_stencil_2d_B11_out_unnamed_stencil_2d4_stencil_2d_avm_byteenable;

    // out_unnamed_stencil_2d4_stencil_2d_avm_enable(GPOUT,167)
    assign out_unnamed_stencil_2d4_stencil_2d_avm_enable = bb_stencil_2d_B11_out_unnamed_stencil_2d4_stencil_2d_avm_enable;

    // out_unnamed_stencil_2d4_stencil_2d_avm_read(GPOUT,168)
    assign out_unnamed_stencil_2d4_stencil_2d_avm_read = bb_stencil_2d_B11_out_unnamed_stencil_2d4_stencil_2d_avm_read;

    // out_unnamed_stencil_2d4_stencil_2d_avm_write(GPOUT,169)
    assign out_unnamed_stencil_2d4_stencil_2d_avm_write = bb_stencil_2d_B11_out_unnamed_stencil_2d4_stencil_2d_avm_write;

    // out_unnamed_stencil_2d4_stencil_2d_avm_writedata(GPOUT,170)
    assign out_unnamed_stencil_2d4_stencil_2d_avm_writedata = bb_stencil_2d_B11_out_unnamed_stencil_2d4_stencil_2d_avm_writedata;

    // out_unnamed_stencil_2d5_stencil_2d_avm_address(GPOUT,171)
    assign out_unnamed_stencil_2d5_stencil_2d_avm_address = bb_stencil_2d_B13_out_unnamed_stencil_2d5_stencil_2d_avm_address;

    // out_unnamed_stencil_2d5_stencil_2d_avm_burstcount(GPOUT,172)
    assign out_unnamed_stencil_2d5_stencil_2d_avm_burstcount = bb_stencil_2d_B13_out_unnamed_stencil_2d5_stencil_2d_avm_burstcount;

    // out_unnamed_stencil_2d5_stencil_2d_avm_byteenable(GPOUT,173)
    assign out_unnamed_stencil_2d5_stencil_2d_avm_byteenable = bb_stencil_2d_B13_out_unnamed_stencil_2d5_stencil_2d_avm_byteenable;

    // out_unnamed_stencil_2d5_stencil_2d_avm_enable(GPOUT,174)
    assign out_unnamed_stencil_2d5_stencil_2d_avm_enable = bb_stencil_2d_B13_out_unnamed_stencil_2d5_stencil_2d_avm_enable;

    // out_unnamed_stencil_2d5_stencil_2d_avm_read(GPOUT,175)
    assign out_unnamed_stencil_2d5_stencil_2d_avm_read = bb_stencil_2d_B13_out_unnamed_stencil_2d5_stencil_2d_avm_read;

    // out_unnamed_stencil_2d5_stencil_2d_avm_write(GPOUT,176)
    assign out_unnamed_stencil_2d5_stencil_2d_avm_write = bb_stencil_2d_B13_out_unnamed_stencil_2d5_stencil_2d_avm_write;

    // out_unnamed_stencil_2d5_stencil_2d_avm_writedata(GPOUT,177)
    assign out_unnamed_stencil_2d5_stencil_2d_avm_writedata = bb_stencil_2d_B13_out_unnamed_stencil_2d5_stencil_2d_avm_writedata;

    // out_unnamed_stencil_2d6_stencil_2d_avm_address(GPOUT,178)
    assign out_unnamed_stencil_2d6_stencil_2d_avm_address = bb_stencil_2d_B13_out_unnamed_stencil_2d6_stencil_2d_avm_address;

    // out_unnamed_stencil_2d6_stencil_2d_avm_burstcount(GPOUT,179)
    assign out_unnamed_stencil_2d6_stencil_2d_avm_burstcount = bb_stencil_2d_B13_out_unnamed_stencil_2d6_stencil_2d_avm_burstcount;

    // out_unnamed_stencil_2d6_stencil_2d_avm_byteenable(GPOUT,180)
    assign out_unnamed_stencil_2d6_stencil_2d_avm_byteenable = bb_stencil_2d_B13_out_unnamed_stencil_2d6_stencil_2d_avm_byteenable;

    // out_unnamed_stencil_2d6_stencil_2d_avm_enable(GPOUT,181)
    assign out_unnamed_stencil_2d6_stencil_2d_avm_enable = bb_stencil_2d_B13_out_unnamed_stencil_2d6_stencil_2d_avm_enable;

    // out_unnamed_stencil_2d6_stencil_2d_avm_read(GPOUT,182)
    assign out_unnamed_stencil_2d6_stencil_2d_avm_read = bb_stencil_2d_B13_out_unnamed_stencil_2d6_stencil_2d_avm_read;

    // out_unnamed_stencil_2d6_stencil_2d_avm_write(GPOUT,183)
    assign out_unnamed_stencil_2d6_stencil_2d_avm_write = bb_stencil_2d_B13_out_unnamed_stencil_2d6_stencil_2d_avm_write;

    // out_unnamed_stencil_2d6_stencil_2d_avm_writedata(GPOUT,184)
    assign out_unnamed_stencil_2d6_stencil_2d_avm_writedata = bb_stencil_2d_B13_out_unnamed_stencil_2d6_stencil_2d_avm_writedata;

    // out_valid_out(GPOUT,185)
    assign out_valid_out = GND_q;

    // stencil_2d_B1_start_x(EXTIFACE,186)
    assign stencil_2d_B1_start_x_i_capture = GND_q;
    assign stencil_2d_B1_start_x_i_clear = GND_q;
    assign stencil_2d_B1_start_x_i_enable = VCC_q;
    assign stencil_2d_B1_start_x_i_shift = GND_q;
    assign stencil_2d_B1_start_x_i_stall_pred = GND_q;
    assign stencil_2d_B1_start_x_i_stall_succ = bb_stencil_2d_B7_out_stall_in_0;
    assign stencil_2d_B1_start_x_i_valid_loop = bb_stencil_2d_B1_start_out_valid_in_0;
    assign stencil_2d_B1_start_x_i_valid_pred = bb_stencil_2d_B1_start_out_valid_in_1;
    assign stencil_2d_B1_start_x_i_valid_succ = bb_stencil_2d_B7_out_valid_out_0;
    assign stencil_2d_B1_start_x_i_capture_bitsignaltemp = stencil_2d_B1_start_x_i_capture[0];
    assign stencil_2d_B1_start_x_i_clear_bitsignaltemp = stencil_2d_B1_start_x_i_clear[0];
    assign stencil_2d_B1_start_x_i_enable_bitsignaltemp = stencil_2d_B1_start_x_i_enable[0];
    assign stencil_2d_B1_start_x_i_shift_bitsignaltemp = stencil_2d_B1_start_x_i_shift[0];
    assign stencil_2d_B1_start_x_i_stall_pred_bitsignaltemp = stencil_2d_B1_start_x_i_stall_pred[0];
    assign stencil_2d_B1_start_x_i_stall_succ_bitsignaltemp = stencil_2d_B1_start_x_i_stall_succ[0];
    assign stencil_2d_B1_start_x_i_valid_loop_bitsignaltemp = stencil_2d_B1_start_x_i_valid_loop[0];
    assign stencil_2d_B1_start_x_i_valid_pred_bitsignaltemp = stencil_2d_B1_start_x_i_valid_pred[0];
    assign stencil_2d_B1_start_x_i_valid_succ_bitsignaltemp = stencil_2d_B1_start_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("stencil_2d.B1.start")
    ) thestencil_2d_B1_start_x (
        .i_capture(stencil_2d_B1_start_x_i_capture_bitsignaltemp),
        .i_clear(stencil_2d_B1_start_x_i_clear_bitsignaltemp),
        .i_enable(stencil_2d_B1_start_x_i_enable_bitsignaltemp),
        .i_shift(stencil_2d_B1_start_x_i_shift_bitsignaltemp),
        .i_stall_pred(stencil_2d_B1_start_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(stencil_2d_B1_start_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(stencil_2d_B1_start_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(stencil_2d_B1_start_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(stencil_2d_B1_start_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // stencil_2d_B10_x(EXTIFACE,187)
    assign stencil_2d_B10_x_i_capture = GND_q;
    assign stencil_2d_B10_x_i_clear = GND_q;
    assign stencil_2d_B10_x_i_enable = VCC_q;
    assign stencil_2d_B10_x_i_shift = GND_q;
    assign stencil_2d_B10_x_i_stall_pred = loop_limiter_stencil_2d4_out_o_stall;
    assign stencil_2d_B10_x_i_stall_succ = bb_stencil_2d_B12_out_stall_in_0;
    assign stencil_2d_B10_x_i_valid_loop = bb_stencil_2d_B10_out_valid_in_0;
    assign stencil_2d_B10_x_i_valid_pred = bb_stencil_2d_B10_out_valid_in_1;
    assign stencil_2d_B10_x_i_valid_succ = bb_stencil_2d_B12_out_valid_out_0;
    assign stencil_2d_B10_x_i_capture_bitsignaltemp = stencil_2d_B10_x_i_capture[0];
    assign stencil_2d_B10_x_i_clear_bitsignaltemp = stencil_2d_B10_x_i_clear[0];
    assign stencil_2d_B10_x_i_enable_bitsignaltemp = stencil_2d_B10_x_i_enable[0];
    assign stencil_2d_B10_x_i_shift_bitsignaltemp = stencil_2d_B10_x_i_shift[0];
    assign stencil_2d_B10_x_i_stall_pred_bitsignaltemp = stencil_2d_B10_x_i_stall_pred[0];
    assign stencil_2d_B10_x_i_stall_succ_bitsignaltemp = stencil_2d_B10_x_i_stall_succ[0];
    assign stencil_2d_B10_x_i_valid_loop_bitsignaltemp = stencil_2d_B10_x_i_valid_loop[0];
    assign stencil_2d_B10_x_i_valid_pred_bitsignaltemp = stencil_2d_B10_x_i_valid_pred[0];
    assign stencil_2d_B10_x_i_valid_succ_bitsignaltemp = stencil_2d_B10_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("stencil_2d.B10")
    ) thestencil_2d_B10_x (
        .i_capture(stencil_2d_B10_x_i_capture_bitsignaltemp),
        .i_clear(stencil_2d_B10_x_i_clear_bitsignaltemp),
        .i_enable(stencil_2d_B10_x_i_enable_bitsignaltemp),
        .i_shift(stencil_2d_B10_x_i_shift_bitsignaltemp),
        .i_stall_pred(stencil_2d_B10_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(stencil_2d_B10_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(stencil_2d_B10_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(stencil_2d_B10_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(stencil_2d_B10_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // stencil_2d_B13_x(EXTIFACE,188)
    assign stencil_2d_B13_x_i_capture = GND_q;
    assign stencil_2d_B13_x_i_clear = GND_q;
    assign stencil_2d_B13_x_i_enable = VCC_q;
    assign stencil_2d_B13_x_i_shift = GND_q;
    assign stencil_2d_B13_x_i_stall_pred = loop_limiter_stencil_2d5_out_o_stall;
    assign stencil_2d_B13_x_i_stall_succ = bb_stencil_2d_B13_out_stall_in_0;
    assign stencil_2d_B13_x_i_valid_loop = bb_stencil_2d_B13_out_valid_in_0;
    assign stencil_2d_B13_x_i_valid_pred = bb_stencil_2d_B13_out_valid_in_1;
    assign stencil_2d_B13_x_i_valid_succ = bb_stencil_2d_B13_out_valid_out_0;
    assign stencil_2d_B13_x_i_capture_bitsignaltemp = stencil_2d_B13_x_i_capture[0];
    assign stencil_2d_B13_x_i_clear_bitsignaltemp = stencil_2d_B13_x_i_clear[0];
    assign stencil_2d_B13_x_i_enable_bitsignaltemp = stencil_2d_B13_x_i_enable[0];
    assign stencil_2d_B13_x_i_shift_bitsignaltemp = stencil_2d_B13_x_i_shift[0];
    assign stencil_2d_B13_x_i_stall_pred_bitsignaltemp = stencil_2d_B13_x_i_stall_pred[0];
    assign stencil_2d_B13_x_i_stall_succ_bitsignaltemp = stencil_2d_B13_x_i_stall_succ[0];
    assign stencil_2d_B13_x_i_valid_loop_bitsignaltemp = stencil_2d_B13_x_i_valid_loop[0];
    assign stencil_2d_B13_x_i_valid_pred_bitsignaltemp = stencil_2d_B13_x_i_valid_pred[0];
    assign stencil_2d_B13_x_i_valid_succ_bitsignaltemp = stencil_2d_B13_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("stencil_2d.B13")
    ) thestencil_2d_B13_x (
        .i_capture(stencil_2d_B13_x_i_capture_bitsignaltemp),
        .i_clear(stencil_2d_B13_x_i_clear_bitsignaltemp),
        .i_enable(stencil_2d_B13_x_i_enable_bitsignaltemp),
        .i_shift(stencil_2d_B13_x_i_shift_bitsignaltemp),
        .i_stall_pred(stencil_2d_B13_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(stencil_2d_B13_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(stencil_2d_B13_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(stencil_2d_B13_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(stencil_2d_B13_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // stencil_2d_B3_x(EXTIFACE,189)
    assign stencil_2d_B3_x_i_capture = GND_q;
    assign stencil_2d_B3_x_i_clear = GND_q;
    assign stencil_2d_B3_x_i_enable = VCC_q;
    assign stencil_2d_B3_x_i_shift = GND_q;
    assign stencil_2d_B3_x_i_stall_pred = loop_limiter_stencil_2d0_out_o_stall;
    assign stencil_2d_B3_x_i_stall_succ = bb_stencil_2d_B3_out_stall_in_0;
    assign stencil_2d_B3_x_i_valid_loop = bb_stencil_2d_B3_out_valid_in_0;
    assign stencil_2d_B3_x_i_valid_pred = bb_stencil_2d_B3_out_valid_in_1;
    assign stencil_2d_B3_x_i_valid_succ = bb_stencil_2d_B3_out_valid_out_0;
    assign stencil_2d_B3_x_i_capture_bitsignaltemp = stencil_2d_B3_x_i_capture[0];
    assign stencil_2d_B3_x_i_clear_bitsignaltemp = stencil_2d_B3_x_i_clear[0];
    assign stencil_2d_B3_x_i_enable_bitsignaltemp = stencil_2d_B3_x_i_enable[0];
    assign stencil_2d_B3_x_i_shift_bitsignaltemp = stencil_2d_B3_x_i_shift[0];
    assign stencil_2d_B3_x_i_stall_pred_bitsignaltemp = stencil_2d_B3_x_i_stall_pred[0];
    assign stencil_2d_B3_x_i_stall_succ_bitsignaltemp = stencil_2d_B3_x_i_stall_succ[0];
    assign stencil_2d_B3_x_i_valid_loop_bitsignaltemp = stencil_2d_B3_x_i_valid_loop[0];
    assign stencil_2d_B3_x_i_valid_pred_bitsignaltemp = stencil_2d_B3_x_i_valid_pred[0];
    assign stencil_2d_B3_x_i_valid_succ_bitsignaltemp = stencil_2d_B3_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("stencil_2d.B3")
    ) thestencil_2d_B3_x (
        .i_capture(stencil_2d_B3_x_i_capture_bitsignaltemp),
        .i_clear(stencil_2d_B3_x_i_clear_bitsignaltemp),
        .i_enable(stencil_2d_B3_x_i_enable_bitsignaltemp),
        .i_shift(stencil_2d_B3_x_i_shift_bitsignaltemp),
        .i_stall_pred(stencil_2d_B3_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(stencil_2d_B3_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(stencil_2d_B3_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(stencil_2d_B3_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(stencil_2d_B3_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // stencil_2d_B5_x(EXTIFACE,190)
    assign stencil_2d_B5_x_i_capture = GND_q;
    assign stencil_2d_B5_x_i_clear = GND_q;
    assign stencil_2d_B5_x_i_enable = VCC_q;
    assign stencil_2d_B5_x_i_shift = GND_q;
    assign stencil_2d_B5_x_i_stall_pred = loop_limiter_stencil_2d1_out_o_stall;
    assign stencil_2d_B5_x_i_stall_succ = bb_stencil_2d_B5_out_stall_in_0;
    assign stencil_2d_B5_x_i_valid_loop = bb_stencil_2d_B5_out_valid_in_0;
    assign stencil_2d_B5_x_i_valid_pred = bb_stencil_2d_B5_out_valid_in_1;
    assign stencil_2d_B5_x_i_valid_succ = bb_stencil_2d_B5_out_valid_out_0;
    assign stencil_2d_B5_x_i_capture_bitsignaltemp = stencil_2d_B5_x_i_capture[0];
    assign stencil_2d_B5_x_i_clear_bitsignaltemp = stencil_2d_B5_x_i_clear[0];
    assign stencil_2d_B5_x_i_enable_bitsignaltemp = stencil_2d_B5_x_i_enable[0];
    assign stencil_2d_B5_x_i_shift_bitsignaltemp = stencil_2d_B5_x_i_shift[0];
    assign stencil_2d_B5_x_i_stall_pred_bitsignaltemp = stencil_2d_B5_x_i_stall_pred[0];
    assign stencil_2d_B5_x_i_stall_succ_bitsignaltemp = stencil_2d_B5_x_i_stall_succ[0];
    assign stencil_2d_B5_x_i_valid_loop_bitsignaltemp = stencil_2d_B5_x_i_valid_loop[0];
    assign stencil_2d_B5_x_i_valid_pred_bitsignaltemp = stencil_2d_B5_x_i_valid_pred[0];
    assign stencil_2d_B5_x_i_valid_succ_bitsignaltemp = stencil_2d_B5_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("stencil_2d.B5")
    ) thestencil_2d_B5_x (
        .i_capture(stencil_2d_B5_x_i_capture_bitsignaltemp),
        .i_clear(stencil_2d_B5_x_i_clear_bitsignaltemp),
        .i_enable(stencil_2d_B5_x_i_enable_bitsignaltemp),
        .i_shift(stencil_2d_B5_x_i_shift_bitsignaltemp),
        .i_stall_pred(stencil_2d_B5_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(stencil_2d_B5_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(stencil_2d_B5_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(stencil_2d_B5_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(stencil_2d_B5_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // stencil_2d_B6_x(EXTIFACE,191)
    assign stencil_2d_B6_x_i_capture = GND_q;
    assign stencil_2d_B6_x_i_clear = GND_q;
    assign stencil_2d_B6_x_i_enable = VCC_q;
    assign stencil_2d_B6_x_i_shift = GND_q;
    assign stencil_2d_B6_x_i_stall_pred = loop_limiter_stencil_2d2_out_o_stall;
    assign stencil_2d_B6_x_i_stall_succ = bb_stencil_2d_B9_out_stall_in_0;
    assign stencil_2d_B6_x_i_valid_loop = bb_stencil_2d_B6_out_valid_in_0;
    assign stencil_2d_B6_x_i_valid_pred = bb_stencil_2d_B6_out_valid_in_1;
    assign stencil_2d_B6_x_i_valid_succ = bb_stencil_2d_B9_out_valid_out_0;
    assign stencil_2d_B6_x_i_capture_bitsignaltemp = stencil_2d_B6_x_i_capture[0];
    assign stencil_2d_B6_x_i_clear_bitsignaltemp = stencil_2d_B6_x_i_clear[0];
    assign stencil_2d_B6_x_i_enable_bitsignaltemp = stencil_2d_B6_x_i_enable[0];
    assign stencil_2d_B6_x_i_shift_bitsignaltemp = stencil_2d_B6_x_i_shift[0];
    assign stencil_2d_B6_x_i_stall_pred_bitsignaltemp = stencil_2d_B6_x_i_stall_pred[0];
    assign stencil_2d_B6_x_i_stall_succ_bitsignaltemp = stencil_2d_B6_x_i_stall_succ[0];
    assign stencil_2d_B6_x_i_valid_loop_bitsignaltemp = stencil_2d_B6_x_i_valid_loop[0];
    assign stencil_2d_B6_x_i_valid_pred_bitsignaltemp = stencil_2d_B6_x_i_valid_pred[0];
    assign stencil_2d_B6_x_i_valid_succ_bitsignaltemp = stencil_2d_B6_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("stencil_2d.B6")
    ) thestencil_2d_B6_x (
        .i_capture(stencil_2d_B6_x_i_capture_bitsignaltemp),
        .i_clear(stencil_2d_B6_x_i_clear_bitsignaltemp),
        .i_enable(stencil_2d_B6_x_i_enable_bitsignaltemp),
        .i_shift(stencil_2d_B6_x_i_shift_bitsignaltemp),
        .i_stall_pred(stencil_2d_B6_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(stencil_2d_B6_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(stencil_2d_B6_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(stencil_2d_B6_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(stencil_2d_B6_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // stencil_2d_B8_x(EXTIFACE,192)
    assign stencil_2d_B8_x_i_capture = GND_q;
    assign stencil_2d_B8_x_i_clear = GND_q;
    assign stencil_2d_B8_x_i_enable = VCC_q;
    assign stencil_2d_B8_x_i_shift = GND_q;
    assign stencil_2d_B8_x_i_stall_pred = loop_limiter_stencil_2d3_out_o_stall;
    assign stencil_2d_B8_x_i_stall_succ = bb_stencil_2d_B11_out_stall_in_0;
    assign stencil_2d_B8_x_i_valid_loop = bb_stencil_2d_B8_out_valid_in_0;
    assign stencil_2d_B8_x_i_valid_pred = bb_stencil_2d_B8_out_valid_in_1;
    assign stencil_2d_B8_x_i_valid_succ = bb_stencil_2d_B11_out_valid_out_0;
    assign stencil_2d_B8_x_i_capture_bitsignaltemp = stencil_2d_B8_x_i_capture[0];
    assign stencil_2d_B8_x_i_clear_bitsignaltemp = stencil_2d_B8_x_i_clear[0];
    assign stencil_2d_B8_x_i_enable_bitsignaltemp = stencil_2d_B8_x_i_enable[0];
    assign stencil_2d_B8_x_i_shift_bitsignaltemp = stencil_2d_B8_x_i_shift[0];
    assign stencil_2d_B8_x_i_stall_pred_bitsignaltemp = stencil_2d_B8_x_i_stall_pred[0];
    assign stencil_2d_B8_x_i_stall_succ_bitsignaltemp = stencil_2d_B8_x_i_stall_succ[0];
    assign stencil_2d_B8_x_i_valid_loop_bitsignaltemp = stencil_2d_B8_x_i_valid_loop[0];
    assign stencil_2d_B8_x_i_valid_pred_bitsignaltemp = stencil_2d_B8_x_i_valid_pred[0];
    assign stencil_2d_B8_x_i_valid_succ_bitsignaltemp = stencil_2d_B8_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("stencil_2d.B8")
    ) thestencil_2d_B8_x (
        .i_capture(stencil_2d_B8_x_i_capture_bitsignaltemp),
        .i_clear(stencil_2d_B8_x_i_clear_bitsignaltemp),
        .i_enable(stencil_2d_B8_x_i_enable_bitsignaltemp),
        .i_shift(stencil_2d_B8_x_i_shift_bitsignaltemp),
        .i_stall_pred(stencil_2d_B8_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(stencil_2d_B8_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(stencil_2d_B8_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(stencil_2d_B8_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(stencil_2d_B8_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

endmodule
