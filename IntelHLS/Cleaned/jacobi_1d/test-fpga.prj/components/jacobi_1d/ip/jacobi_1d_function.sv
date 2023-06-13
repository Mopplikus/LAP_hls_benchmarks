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

// SystemVerilog created from jacobi_1d_function
// Created for function/kernel jacobi_1d
// SystemVerilog created on Tue Jun 13 02:54:34 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module jacobi_1d_function (
    input wire [63:0] in_arg_A_1,
    input wire [63:0] in_arg_A_2,
    input wire [63:0] in_arg_B,
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_return,
    input wire [191:0] in_iord_bl_call_jacobi_1d_i_fifodata,
    input wire [0:0] in_iord_bl_call_jacobi_1d_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_jacobi_1d_i_fifoready,
    input wire [31:0] in_memdep_5_jacobi_1d_avm_readdata,
    input wire [0:0] in_memdep_5_jacobi_1d_avm_readdatavalid,
    input wire [0:0] in_memdep_5_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_memdep_5_jacobi_1d_avm_writeack,
    input wire [31:0] in_memdep_jacobi_1d_avm_readdata,
    input wire [0:0] in_memdep_jacobi_1d_avm_readdatavalid,
    input wire [0:0] in_memdep_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_memdep_jacobi_1d_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [31:0] in_unnamed_jacobi_1d11_jacobi_1d_avm_readdata,
    input wire [0:0] in_unnamed_jacobi_1d11_jacobi_1d_avm_readdatavalid,
    input wire [0:0] in_unnamed_jacobi_1d11_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_unnamed_jacobi_1d11_jacobi_1d_avm_writeack,
    input wire [31:0] in_unnamed_jacobi_1d13_jacobi_1d_avm_readdata,
    input wire [0:0] in_unnamed_jacobi_1d13_jacobi_1d_avm_readdatavalid,
    input wire [0:0] in_unnamed_jacobi_1d13_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_unnamed_jacobi_1d13_jacobi_1d_avm_writeack,
    input wire [31:0] in_unnamed_jacobi_1d7_jacobi_1d_avm_readdata,
    input wire [0:0] in_unnamed_jacobi_1d7_jacobi_1d_avm_readdatavalid,
    input wire [0:0] in_unnamed_jacobi_1d7_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_unnamed_jacobi_1d7_jacobi_1d_avm_writeack,
    input wire [31:0] in_unnamed_jacobi_1d9_jacobi_1d_avm_readdata,
    input wire [0:0] in_unnamed_jacobi_1d9_jacobi_1d_avm_readdatavalid,
    input wire [0:0] in_unnamed_jacobi_1d9_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_unnamed_jacobi_1d9_jacobi_1d_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_jacobi_1d_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_jacobi_1d_o_fifoready,
    output wire [0:0] out_iowr_bl_return_jacobi_1d_o_fifodata,
    output wire [0:0] out_iowr_bl_return_jacobi_1d_o_fifovalid,
    output wire [31:0] out_memdep_5_jacobi_1d_avm_address,
    output wire [0:0] out_memdep_5_jacobi_1d_avm_burstcount,
    output wire [3:0] out_memdep_5_jacobi_1d_avm_byteenable,
    output wire [0:0] out_memdep_5_jacobi_1d_avm_enable,
    output wire [0:0] out_memdep_5_jacobi_1d_avm_read,
    output wire [0:0] out_memdep_5_jacobi_1d_avm_write,
    output wire [31:0] out_memdep_5_jacobi_1d_avm_writedata,
    output wire [31:0] out_memdep_jacobi_1d_avm_address,
    output wire [0:0] out_memdep_jacobi_1d_avm_burstcount,
    output wire [3:0] out_memdep_jacobi_1d_avm_byteenable,
    output wire [0:0] out_memdep_jacobi_1d_avm_enable,
    output wire [0:0] out_memdep_jacobi_1d_avm_read,
    output wire [0:0] out_memdep_jacobi_1d_avm_write,
    output wire [31:0] out_memdep_jacobi_1d_avm_writedata,
    output wire [0:0] out_o_active_memdep,
    output wire [0:0] out_o_active_memdep_5,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_jacobi_1d11_jacobi_1d_avm_address,
    output wire [0:0] out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount,
    output wire [3:0] out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable,
    output wire [0:0] out_unnamed_jacobi_1d11_jacobi_1d_avm_enable,
    output wire [0:0] out_unnamed_jacobi_1d11_jacobi_1d_avm_read,
    output wire [0:0] out_unnamed_jacobi_1d11_jacobi_1d_avm_write,
    output wire [31:0] out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata,
    output wire [31:0] out_unnamed_jacobi_1d13_jacobi_1d_avm_address,
    output wire [0:0] out_unnamed_jacobi_1d13_jacobi_1d_avm_burstcount,
    output wire [3:0] out_unnamed_jacobi_1d13_jacobi_1d_avm_byteenable,
    output wire [0:0] out_unnamed_jacobi_1d13_jacobi_1d_avm_enable,
    output wire [0:0] out_unnamed_jacobi_1d13_jacobi_1d_avm_read,
    output wire [0:0] out_unnamed_jacobi_1d13_jacobi_1d_avm_write,
    output wire [31:0] out_unnamed_jacobi_1d13_jacobi_1d_avm_writedata,
    output wire [31:0] out_unnamed_jacobi_1d7_jacobi_1d_avm_address,
    output wire [0:0] out_unnamed_jacobi_1d7_jacobi_1d_avm_burstcount,
    output wire [3:0] out_unnamed_jacobi_1d7_jacobi_1d_avm_byteenable,
    output wire [0:0] out_unnamed_jacobi_1d7_jacobi_1d_avm_enable,
    output wire [0:0] out_unnamed_jacobi_1d7_jacobi_1d_avm_read,
    output wire [0:0] out_unnamed_jacobi_1d7_jacobi_1d_avm_write,
    output wire [31:0] out_unnamed_jacobi_1d7_jacobi_1d_avm_writedata,
    output wire [31:0] out_unnamed_jacobi_1d9_jacobi_1d_avm_address,
    output wire [0:0] out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount,
    output wire [3:0] out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable,
    output wire [0:0] out_unnamed_jacobi_1d9_jacobi_1d_avm_enable,
    output wire [0:0] out_unnamed_jacobi_1d9_jacobi_1d_avm_read,
    output wire [0:0] out_unnamed_jacobi_1d9_jacobi_1d_avm_write,
    output wire [31:0] out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_jacobi_1d_B2_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_jacobi_1d_B2_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_jacobi_1d_B2_sr_1_aunroll_x_out_o_valid;
    wire [63:0] bb_jacobi_1d_B3_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_jacobi_1d_B3_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_jacobi_1d_B3_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_jacobi_1d_B3_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_jacobi_1d_B3_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_jacobi_1d_B3_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_jacobi_1d_B3_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_jacobi_1d_B4_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_jacobi_1d_B4_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_jacobi_1d_B4_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_jacobi_1d_B4_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_jacobi_1d_B4_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_jacobi_1d_B4_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_jacobi_1d_B4_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_jacobi_1d_B4_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_jacobi_1d_B5_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [63:0] bb_jacobi_1d_B5_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_jacobi_1d_B5_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_jacobi_1d_B5_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_jacobi_1d_B5_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_jacobi_1d_B5_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_jacobi_1d_B5_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_jacobi_1d_B6_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_jacobi_1d_B6_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_jacobi_1d_B6_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_jacobi_1d_B6_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_jacobi_1d_B6_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_jacobi_1d_B7_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_jacobi_1d_B7_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_jacobi_1d_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_jacobi_1d_B1_start_out_feedback_stall_out_1;
    wire [63:0] bb_jacobi_1d_B1_start_out_intel_reserved_ffwd_0_0;
    wire [63:0] bb_jacobi_1d_B1_start_out_intel_reserved_ffwd_1_0;
    wire [63:0] bb_jacobi_1d_B1_start_out_intel_reserved_ffwd_2_0;
    wire [0:0] bb_jacobi_1d_B1_start_out_iord_bl_call_jacobi_1d_o_fifoalmost_full;
    wire [0:0] bb_jacobi_1d_B1_start_out_iord_bl_call_jacobi_1d_o_fifoready;
    wire [0:0] bb_jacobi_1d_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_jacobi_1d_B1_start_out_stall_out_0;
    wire [0:0] bb_jacobi_1d_B1_start_out_valid_in_0;
    wire [0:0] bb_jacobi_1d_B1_start_out_valid_in_1;
    wire [0:0] bb_jacobi_1d_B1_start_out_valid_out_0;
    wire [0:0] bb_jacobi_1d_B2_out_c0_exe179;
    wire [0:0] bb_jacobi_1d_B2_out_c0_exe2;
    wire [0:0] bb_jacobi_1d_B2_out_exiting_stall_out;
    wire [0:0] bb_jacobi_1d_B2_out_exiting_valid_out;
    wire [0:0] bb_jacobi_1d_B2_out_feedback_stall_out_11;
    wire [0:0] bb_jacobi_1d_B2_out_feedback_stall_out_13;
    wire [0:0] bb_jacobi_1d_B2_out_memdep_phi1_pop11;
    wire [0:0] bb_jacobi_1d_B2_out_memdep_phi4_pop12;
    wire [0:0] bb_jacobi_1d_B2_out_pipeline_valid_out;
    wire [0:0] bb_jacobi_1d_B2_out_stall_out_0;
    wire [0:0] bb_jacobi_1d_B2_out_stall_out_1;
    wire [0:0] bb_jacobi_1d_B2_out_valid_in_0;
    wire [0:0] bb_jacobi_1d_B2_out_valid_in_1;
    wire [0:0] bb_jacobi_1d_B2_out_valid_out_0;
    wire [0:0] bb_jacobi_1d_B3_out_exitcond1749_pop194;
    wire [0:0] bb_jacobi_1d_B3_out_feedback_out_11;
    wire [0:0] bb_jacobi_1d_B3_out_feedback_valid_out_11;
    wire [63:0] bb_jacobi_1d_B3_out_mPtr_bitcast70761;
    wire [0:0] bb_jacobi_1d_B3_out_memdep_phi6_pop1355_pop232;
    wire [0:0] bb_jacobi_1d_B3_out_notcmp3951_pop205;
    wire [0:0] bb_jacobi_1d_B3_out_stall_out_0;
    wire [0:0] bb_jacobi_1d_B3_out_valid_out_0;
    wire [0:0] bb_jacobi_1d_B4_out_exitcond1749_pop19;
    wire [0:0] bb_jacobi_1d_B4_out_exiting_stall_out;
    wire [0:0] bb_jacobi_1d_B4_out_exiting_valid_out;
    wire [0:0] bb_jacobi_1d_B4_out_lsu_memdep_o_active;
    wire [63:0] bb_jacobi_1d_B4_out_mPtr_bitcast7076;
    wire [0:0] bb_jacobi_1d_B4_out_memdep;
    wire [31:0] bb_jacobi_1d_B4_out_memdep_jacobi_1d_avm_address;
    wire [0:0] bb_jacobi_1d_B4_out_memdep_jacobi_1d_avm_burstcount;
    wire [3:0] bb_jacobi_1d_B4_out_memdep_jacobi_1d_avm_byteenable;
    wire [0:0] bb_jacobi_1d_B4_out_memdep_jacobi_1d_avm_enable;
    wire [0:0] bb_jacobi_1d_B4_out_memdep_jacobi_1d_avm_read;
    wire [0:0] bb_jacobi_1d_B4_out_memdep_jacobi_1d_avm_write;
    wire [31:0] bb_jacobi_1d_B4_out_memdep_jacobi_1d_avm_writedata;
    wire [0:0] bb_jacobi_1d_B4_out_memdep_phi6_pop1355_pop23;
    wire [0:0] bb_jacobi_1d_B4_out_notcmp3951_pop20;
    wire [0:0] bb_jacobi_1d_B4_out_pipeline_valid_out;
    wire [0:0] bb_jacobi_1d_B4_out_stall_in_0;
    wire [0:0] bb_jacobi_1d_B4_out_stall_out_0;
    wire [0:0] bb_jacobi_1d_B4_out_stall_out_1;
    wire [31:0] bb_jacobi_1d_B4_out_unnamed_jacobi_1d11_jacobi_1d_avm_address;
    wire [0:0] bb_jacobi_1d_B4_out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount;
    wire [3:0] bb_jacobi_1d_B4_out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable;
    wire [0:0] bb_jacobi_1d_B4_out_unnamed_jacobi_1d11_jacobi_1d_avm_enable;
    wire [0:0] bb_jacobi_1d_B4_out_unnamed_jacobi_1d11_jacobi_1d_avm_read;
    wire [0:0] bb_jacobi_1d_B4_out_unnamed_jacobi_1d11_jacobi_1d_avm_write;
    wire [31:0] bb_jacobi_1d_B4_out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata;
    wire [31:0] bb_jacobi_1d_B4_out_unnamed_jacobi_1d7_jacobi_1d_avm_address;
    wire [0:0] bb_jacobi_1d_B4_out_unnamed_jacobi_1d7_jacobi_1d_avm_burstcount;
    wire [3:0] bb_jacobi_1d_B4_out_unnamed_jacobi_1d7_jacobi_1d_avm_byteenable;
    wire [0:0] bb_jacobi_1d_B4_out_unnamed_jacobi_1d7_jacobi_1d_avm_enable;
    wire [0:0] bb_jacobi_1d_B4_out_unnamed_jacobi_1d7_jacobi_1d_avm_read;
    wire [0:0] bb_jacobi_1d_B4_out_unnamed_jacobi_1d7_jacobi_1d_avm_write;
    wire [31:0] bb_jacobi_1d_B4_out_unnamed_jacobi_1d7_jacobi_1d_avm_writedata;
    wire [31:0] bb_jacobi_1d_B4_out_unnamed_jacobi_1d9_jacobi_1d_avm_address;
    wire [0:0] bb_jacobi_1d_B4_out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount;
    wire [3:0] bb_jacobi_1d_B4_out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable;
    wire [0:0] bb_jacobi_1d_B4_out_unnamed_jacobi_1d9_jacobi_1d_avm_enable;
    wire [0:0] bb_jacobi_1d_B4_out_unnamed_jacobi_1d9_jacobi_1d_avm_read;
    wire [0:0] bb_jacobi_1d_B4_out_unnamed_jacobi_1d9_jacobi_1d_avm_write;
    wire [31:0] bb_jacobi_1d_B4_out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata;
    wire [0:0] bb_jacobi_1d_B4_out_valid_in_0;
    wire [0:0] bb_jacobi_1d_B4_out_valid_in_1;
    wire [0:0] bb_jacobi_1d_B4_out_valid_out_0;
    wire [0:0] bb_jacobi_1d_B5_out_exitcond1750_pop29;
    wire [0:0] bb_jacobi_1d_B5_out_exiting_stall_out;
    wire [0:0] bb_jacobi_1d_B5_out_exiting_valid_out;
    wire [0:0] bb_jacobi_1d_B5_out_lsu_memdep_5_o_active;
    wire [31:0] bb_jacobi_1d_B5_out_memdep_5_jacobi_1d_avm_address;
    wire [0:0] bb_jacobi_1d_B5_out_memdep_5_jacobi_1d_avm_burstcount;
    wire [3:0] bb_jacobi_1d_B5_out_memdep_5_jacobi_1d_avm_byteenable;
    wire [0:0] bb_jacobi_1d_B5_out_memdep_5_jacobi_1d_avm_enable;
    wire [0:0] bb_jacobi_1d_B5_out_memdep_5_jacobi_1d_avm_read;
    wire [0:0] bb_jacobi_1d_B5_out_memdep_5_jacobi_1d_avm_write;
    wire [31:0] bb_jacobi_1d_B5_out_memdep_5_jacobi_1d_avm_writedata;
    wire [0:0] bb_jacobi_1d_B5_out_notcmp3952_pop30;
    wire [0:0] bb_jacobi_1d_B5_out_pipeline_valid_out;
    wire [0:0] bb_jacobi_1d_B5_out_stall_in_0;
    wire [0:0] bb_jacobi_1d_B5_out_stall_out_0;
    wire [0:0] bb_jacobi_1d_B5_out_stall_out_1;
    wire [0:0] bb_jacobi_1d_B5_out_toi1_intcast;
    wire [31:0] bb_jacobi_1d_B5_out_unnamed_jacobi_1d13_jacobi_1d_avm_address;
    wire [0:0] bb_jacobi_1d_B5_out_unnamed_jacobi_1d13_jacobi_1d_avm_burstcount;
    wire [3:0] bb_jacobi_1d_B5_out_unnamed_jacobi_1d13_jacobi_1d_avm_byteenable;
    wire [0:0] bb_jacobi_1d_B5_out_unnamed_jacobi_1d13_jacobi_1d_avm_enable;
    wire [0:0] bb_jacobi_1d_B5_out_unnamed_jacobi_1d13_jacobi_1d_avm_read;
    wire [0:0] bb_jacobi_1d_B5_out_unnamed_jacobi_1d13_jacobi_1d_avm_write;
    wire [31:0] bb_jacobi_1d_B5_out_unnamed_jacobi_1d13_jacobi_1d_avm_writedata;
    wire [0:0] bb_jacobi_1d_B5_out_valid_in_0;
    wire [0:0] bb_jacobi_1d_B5_out_valid_in_1;
    wire [0:0] bb_jacobi_1d_B5_out_valid_out_0;
    wire [0:0] bb_jacobi_1d_B6_out_feedback_out_13;
    wire [0:0] bb_jacobi_1d_B6_out_feedback_valid_out_13;
    wire [0:0] bb_jacobi_1d_B6_out_stall_in_0;
    wire [0:0] bb_jacobi_1d_B6_out_stall_out_0;
    wire [0:0] bb_jacobi_1d_B6_out_valid_out_0;
    wire [0:0] bb_jacobi_1d_B7_out_feedback_out_1;
    wire [0:0] bb_jacobi_1d_B7_out_feedback_valid_out_1;
    wire [0:0] bb_jacobi_1d_B7_out_iowr_bl_return_jacobi_1d_o_fifodata;
    wire [0:0] bb_jacobi_1d_B7_out_iowr_bl_return_jacobi_1d_o_fifovalid;
    wire [0:0] bb_jacobi_1d_B7_out_stall_in_0;
    wire [0:0] bb_jacobi_1d_B7_out_stall_out_0;
    wire [0:0] bb_jacobi_1d_B7_out_valid_out_0;
    wire [1:0] c_i2_044_q;
    wire [63:0] c_i32_addrspace_1025_undef31_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going45_jacobi_1d1_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going45_jacobi_1d1_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going45_jacobi_1d1_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going45_jacobi_1d1_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_jacobi_1d4_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_jacobi_1d4_sr_out_o_valid;
    wire [0:0] jacobi_1d_B1_start_x_i_capture;
    wire jacobi_1d_B1_start_x_i_capture_bitsignaltemp;
    wire [0:0] jacobi_1d_B1_start_x_i_clear;
    wire jacobi_1d_B1_start_x_i_clear_bitsignaltemp;
    wire [0:0] jacobi_1d_B1_start_x_i_enable;
    wire jacobi_1d_B1_start_x_i_enable_bitsignaltemp;
    wire [0:0] jacobi_1d_B1_start_x_i_shift;
    wire jacobi_1d_B1_start_x_i_shift_bitsignaltemp;
    wire [0:0] jacobi_1d_B1_start_x_i_stall_pred;
    wire jacobi_1d_B1_start_x_i_stall_pred_bitsignaltemp;
    wire [0:0] jacobi_1d_B1_start_x_i_stall_succ;
    wire jacobi_1d_B1_start_x_i_stall_succ_bitsignaltemp;
    wire [0:0] jacobi_1d_B1_start_x_i_valid_loop;
    wire jacobi_1d_B1_start_x_i_valid_loop_bitsignaltemp;
    wire [0:0] jacobi_1d_B1_start_x_i_valid_pred;
    wire jacobi_1d_B1_start_x_i_valid_pred_bitsignaltemp;
    wire [0:0] jacobi_1d_B1_start_x_i_valid_succ;
    wire jacobi_1d_B1_start_x_i_valid_succ_bitsignaltemp;
    wire [0:0] jacobi_1d_B2_x_i_capture;
    wire jacobi_1d_B2_x_i_capture_bitsignaltemp;
    wire [0:0] jacobi_1d_B2_x_i_clear;
    wire jacobi_1d_B2_x_i_clear_bitsignaltemp;
    wire [0:0] jacobi_1d_B2_x_i_enable;
    wire jacobi_1d_B2_x_i_enable_bitsignaltemp;
    wire [0:0] jacobi_1d_B2_x_i_shift;
    wire jacobi_1d_B2_x_i_shift_bitsignaltemp;
    wire [0:0] jacobi_1d_B2_x_i_stall_pred;
    wire jacobi_1d_B2_x_i_stall_pred_bitsignaltemp;
    wire [0:0] jacobi_1d_B2_x_i_stall_succ;
    wire jacobi_1d_B2_x_i_stall_succ_bitsignaltemp;
    wire [0:0] jacobi_1d_B2_x_i_valid_loop;
    wire jacobi_1d_B2_x_i_valid_loop_bitsignaltemp;
    wire [0:0] jacobi_1d_B2_x_i_valid_pred;
    wire jacobi_1d_B2_x_i_valid_pred_bitsignaltemp;
    wire [0:0] jacobi_1d_B2_x_i_valid_succ;
    wire jacobi_1d_B2_x_i_valid_succ_bitsignaltemp;
    wire [0:0] jacobi_1d_B4_x_i_capture;
    wire jacobi_1d_B4_x_i_capture_bitsignaltemp;
    wire [0:0] jacobi_1d_B4_x_i_clear;
    wire jacobi_1d_B4_x_i_clear_bitsignaltemp;
    wire [0:0] jacobi_1d_B4_x_i_enable;
    wire jacobi_1d_B4_x_i_enable_bitsignaltemp;
    wire [0:0] jacobi_1d_B4_x_i_shift;
    wire jacobi_1d_B4_x_i_shift_bitsignaltemp;
    wire [0:0] jacobi_1d_B4_x_i_stall_pred;
    wire jacobi_1d_B4_x_i_stall_pred_bitsignaltemp;
    wire [0:0] jacobi_1d_B4_x_i_stall_succ;
    wire jacobi_1d_B4_x_i_stall_succ_bitsignaltemp;
    wire [0:0] jacobi_1d_B4_x_i_valid_loop;
    wire jacobi_1d_B4_x_i_valid_loop_bitsignaltemp;
    wire [0:0] jacobi_1d_B4_x_i_valid_pred;
    wire jacobi_1d_B4_x_i_valid_pred_bitsignaltemp;
    wire [0:0] jacobi_1d_B4_x_i_valid_succ;
    wire jacobi_1d_B4_x_i_valid_succ_bitsignaltemp;
    wire [0:0] jacobi_1d_B5_x_i_capture;
    wire jacobi_1d_B5_x_i_capture_bitsignaltemp;
    wire [0:0] jacobi_1d_B5_x_i_clear;
    wire jacobi_1d_B5_x_i_clear_bitsignaltemp;
    wire [0:0] jacobi_1d_B5_x_i_enable;
    wire jacobi_1d_B5_x_i_enable_bitsignaltemp;
    wire [0:0] jacobi_1d_B5_x_i_shift;
    wire jacobi_1d_B5_x_i_shift_bitsignaltemp;
    wire [0:0] jacobi_1d_B5_x_i_stall_pred;
    wire jacobi_1d_B5_x_i_stall_pred_bitsignaltemp;
    wire [0:0] jacobi_1d_B5_x_i_stall_succ;
    wire jacobi_1d_B5_x_i_stall_succ_bitsignaltemp;
    wire [0:0] jacobi_1d_B5_x_i_valid_loop;
    wire jacobi_1d_B5_x_i_valid_loop_bitsignaltemp;
    wire [0:0] jacobi_1d_B5_x_i_valid_pred;
    wire jacobi_1d_B5_x_i_valid_pred_bitsignaltemp;
    wire [0:0] jacobi_1d_B5_x_i_valid_succ;
    wire jacobi_1d_B5_x_i_valid_succ_bitsignaltemp;
    wire [0:0] loop_limiter_jacobi_1d0_out_o_stall;
    wire [0:0] loop_limiter_jacobi_1d0_out_o_valid;
    wire [0:0] loop_limiter_jacobi_1d1_out_o_stall;
    wire [0:0] loop_limiter_jacobi_1d1_out_o_valid;
    wire [0:0] loop_limiter_jacobi_1d2_out_o_stall;
    wire [0:0] loop_limiter_jacobi_1d2_out_o_valid;


    // c_i2_044(CONSTANT,48)
    assign c_i2_044_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going45_jacobi_1d1_valid_fifo(BLACKBOX,56)
    jacobi_1d_i_llvm_fpga_pipeline_keep_going45_1_valid_fifo thei_llvm_fpga_pipeline_keep_going45_jacobi_1d1_valid_fifo (
        .in_data_in(c_i2_044_q),
        .in_stall_in(bb_jacobi_1d_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going45_jacobi_1d1_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going45_jacobi_1d1_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going45_jacobi_1d1_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_valid_fifo(BLACKBOX,54)
    jacobi_1d_i_llvm_fpga_pipeline_keep_going41_2_valid_fifo thei_llvm_fpga_pipeline_keep_going41_jacobi_1d2_valid_fifo (
        .in_data_in(c_i2_044_q),
        .in_stall_in(bb_jacobi_1d_B2_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B3_sr_0_aunroll_x(BLACKBOX,3)
    jacobi_1d_bb_B3_sr_0 thebb_jacobi_1d_B3_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_jacobi_1d_B4_out_mPtr_bitcast7076),
        .in_i_data_1_tpl(bb_jacobi_1d_B4_out_memdep_phi6_pop1355_pop23),
        .in_i_data_2_tpl(bb_jacobi_1d_B4_out_memdep),
        .in_i_data_3_tpl(bb_jacobi_1d_B4_out_exitcond1749_pop19),
        .in_i_data_4_tpl(bb_jacobi_1d_B4_out_notcmp3951_pop20),
        .in_i_stall(bb_jacobi_1d_B3_out_stall_out_0),
        .in_i_valid(bb_jacobi_1d_B4_out_valid_out_0),
        .out_o_data_0_tpl(bb_jacobi_1d_B3_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_jacobi_1d_B3_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_jacobi_1d_B3_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_jacobi_1d_B3_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_jacobi_1d_B3_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_stall(bb_jacobi_1d_B3_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_jacobi_1d_B3_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_sr(BLACKBOX,52)
    jacobi_1d_i_llvm_fpga_pipeline_keep_going27_4_sr thei_llvm_fpga_pipeline_keep_going27_jacobi_1d4_sr (
        .in_i_data(GND_q),
        .in_i_stall(bb_jacobi_1d_B4_out_stall_out_0),
        .in_i_valid(bb_jacobi_1d_B4_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B4(BLACKBOX,12)
    jacobi_1d_bb_B4 thebb_jacobi_1d_B4 (
        .in_exitcond1758_0(GND_q),
        .in_exitcond1758_1(bb_jacobi_1d_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_flush(in_start),
        .in_forked24_0(GND_q),
        .in_forked24_1(bb_jacobi_1d_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_0_0(bb_jacobi_1d_B1_start_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(bb_jacobi_1d_B1_start_out_intel_reserved_ffwd_1_0),
        .in_memdep_jacobi_1d_avm_readdata(in_memdep_jacobi_1d_avm_readdata),
        .in_memdep_jacobi_1d_avm_readdatavalid(in_memdep_jacobi_1d_avm_readdatavalid),
        .in_memdep_jacobi_1d_avm_waitrequest(in_memdep_jacobi_1d_avm_waitrequest),
        .in_memdep_jacobi_1d_avm_writeack(in_memdep_jacobi_1d_avm_writeack),
        .in_memdep_phi1_pop1160_0(GND_q),
        .in_memdep_phi1_pop1160_1(bb_jacobi_1d_B4_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_memdep_phi4_pop1261_0(GND_q),
        .in_memdep_phi4_pop1261_1(bb_jacobi_1d_B4_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_memdep_phi6_pop1362_0(GND_q),
        .in_memdep_phi6_pop1362_1(bb_jacobi_1d_B4_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_notcmp3959_0(GND_q),
        .in_notcmp3959_1(bb_jacobi_1d_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_sr_out_o_stall),
        .in_stall_in_0(bb_jacobi_1d_B3_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_jacobi_1d11_jacobi_1d_avm_readdata(in_unnamed_jacobi_1d11_jacobi_1d_avm_readdata),
        .in_unnamed_jacobi_1d11_jacobi_1d_avm_readdatavalid(in_unnamed_jacobi_1d11_jacobi_1d_avm_readdatavalid),
        .in_unnamed_jacobi_1d11_jacobi_1d_avm_waitrequest(in_unnamed_jacobi_1d11_jacobi_1d_avm_waitrequest),
        .in_unnamed_jacobi_1d11_jacobi_1d_avm_writeack(in_unnamed_jacobi_1d11_jacobi_1d_avm_writeack),
        .in_unnamed_jacobi_1d7_jacobi_1d_avm_readdata(in_unnamed_jacobi_1d7_jacobi_1d_avm_readdata),
        .in_unnamed_jacobi_1d7_jacobi_1d_avm_readdatavalid(in_unnamed_jacobi_1d7_jacobi_1d_avm_readdatavalid),
        .in_unnamed_jacobi_1d7_jacobi_1d_avm_waitrequest(in_unnamed_jacobi_1d7_jacobi_1d_avm_waitrequest),
        .in_unnamed_jacobi_1d7_jacobi_1d_avm_writeack(in_unnamed_jacobi_1d7_jacobi_1d_avm_writeack),
        .in_unnamed_jacobi_1d9_jacobi_1d_avm_readdata(in_unnamed_jacobi_1d9_jacobi_1d_avm_readdata),
        .in_unnamed_jacobi_1d9_jacobi_1d_avm_readdatavalid(in_unnamed_jacobi_1d9_jacobi_1d_avm_readdatavalid),
        .in_unnamed_jacobi_1d9_jacobi_1d_avm_waitrequest(in_unnamed_jacobi_1d9_jacobi_1d_avm_waitrequest),
        .in_unnamed_jacobi_1d9_jacobi_1d_avm_writeack(in_unnamed_jacobi_1d9_jacobi_1d_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_sr_out_o_valid),
        .in_valid_in_1(bb_jacobi_1d_B4_sr_1_aunroll_x_out_o_valid),
        .out_exitcond1749_pop19(bb_jacobi_1d_B4_out_exitcond1749_pop19),
        .out_exiting_stall_out(bb_jacobi_1d_B4_out_exiting_stall_out),
        .out_exiting_valid_out(bb_jacobi_1d_B4_out_exiting_valid_out),
        .out_lsu_memdep_o_active(bb_jacobi_1d_B4_out_lsu_memdep_o_active),
        .out_mPtr_bitcast7076(bb_jacobi_1d_B4_out_mPtr_bitcast7076),
        .out_memdep(bb_jacobi_1d_B4_out_memdep),
        .out_memdep_jacobi_1d_avm_address(bb_jacobi_1d_B4_out_memdep_jacobi_1d_avm_address),
        .out_memdep_jacobi_1d_avm_burstcount(bb_jacobi_1d_B4_out_memdep_jacobi_1d_avm_burstcount),
        .out_memdep_jacobi_1d_avm_byteenable(bb_jacobi_1d_B4_out_memdep_jacobi_1d_avm_byteenable),
        .out_memdep_jacobi_1d_avm_enable(bb_jacobi_1d_B4_out_memdep_jacobi_1d_avm_enable),
        .out_memdep_jacobi_1d_avm_read(bb_jacobi_1d_B4_out_memdep_jacobi_1d_avm_read),
        .out_memdep_jacobi_1d_avm_write(bb_jacobi_1d_B4_out_memdep_jacobi_1d_avm_write),
        .out_memdep_jacobi_1d_avm_writedata(bb_jacobi_1d_B4_out_memdep_jacobi_1d_avm_writedata),
        .out_memdep_phi6_pop1355_pop23(bb_jacobi_1d_B4_out_memdep_phi6_pop1355_pop23),
        .out_notcmp3951_pop20(bb_jacobi_1d_B4_out_notcmp3951_pop20),
        .out_pipeline_valid_out(bb_jacobi_1d_B4_out_pipeline_valid_out),
        .out_stall_in_0(bb_jacobi_1d_B4_out_stall_in_0),
        .out_stall_out_0(bb_jacobi_1d_B4_out_stall_out_0),
        .out_stall_out_1(bb_jacobi_1d_B4_out_stall_out_1),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_address(bb_jacobi_1d_B4_out_unnamed_jacobi_1d11_jacobi_1d_avm_address),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount(bb_jacobi_1d_B4_out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable(bb_jacobi_1d_B4_out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_enable(bb_jacobi_1d_B4_out_unnamed_jacobi_1d11_jacobi_1d_avm_enable),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_read(bb_jacobi_1d_B4_out_unnamed_jacobi_1d11_jacobi_1d_avm_read),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_write(bb_jacobi_1d_B4_out_unnamed_jacobi_1d11_jacobi_1d_avm_write),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata(bb_jacobi_1d_B4_out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata),
        .out_unnamed_jacobi_1d7_jacobi_1d_avm_address(bb_jacobi_1d_B4_out_unnamed_jacobi_1d7_jacobi_1d_avm_address),
        .out_unnamed_jacobi_1d7_jacobi_1d_avm_burstcount(bb_jacobi_1d_B4_out_unnamed_jacobi_1d7_jacobi_1d_avm_burstcount),
        .out_unnamed_jacobi_1d7_jacobi_1d_avm_byteenable(bb_jacobi_1d_B4_out_unnamed_jacobi_1d7_jacobi_1d_avm_byteenable),
        .out_unnamed_jacobi_1d7_jacobi_1d_avm_enable(bb_jacobi_1d_B4_out_unnamed_jacobi_1d7_jacobi_1d_avm_enable),
        .out_unnamed_jacobi_1d7_jacobi_1d_avm_read(bb_jacobi_1d_B4_out_unnamed_jacobi_1d7_jacobi_1d_avm_read),
        .out_unnamed_jacobi_1d7_jacobi_1d_avm_write(bb_jacobi_1d_B4_out_unnamed_jacobi_1d7_jacobi_1d_avm_write),
        .out_unnamed_jacobi_1d7_jacobi_1d_avm_writedata(bb_jacobi_1d_B4_out_unnamed_jacobi_1d7_jacobi_1d_avm_writedata),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_address(bb_jacobi_1d_B4_out_unnamed_jacobi_1d9_jacobi_1d_avm_address),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount(bb_jacobi_1d_B4_out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable(bb_jacobi_1d_B4_out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_enable(bb_jacobi_1d_B4_out_unnamed_jacobi_1d9_jacobi_1d_avm_enable),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_read(bb_jacobi_1d_B4_out_unnamed_jacobi_1d9_jacobi_1d_avm_read),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_write(bb_jacobi_1d_B4_out_unnamed_jacobi_1d9_jacobi_1d_avm_write),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata(bb_jacobi_1d_B4_out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata),
        .out_valid_in_0(bb_jacobi_1d_B4_out_valid_in_0),
        .out_valid_in_1(bb_jacobi_1d_B4_out_valid_in_1),
        .out_valid_out_0(bb_jacobi_1d_B4_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B4_sr_1_aunroll_x(BLACKBOX,4)
    jacobi_1d_bb_B4_sr_1 thebb_jacobi_1d_B4_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_jacobi_1d_B2_out_c0_exe179),
        .in_i_data_2_tpl(bb_jacobi_1d_B2_out_c0_exe2),
        .in_i_data_3_tpl(bb_jacobi_1d_B2_out_memdep_phi1_pop11),
        .in_i_data_4_tpl(bb_jacobi_1d_B2_out_memdep_phi4_pop12),
        .in_i_data_5_tpl(bb_jacobi_1d_B2_out_memdep_phi4_pop12),
        .in_i_stall(bb_jacobi_1d_B4_out_stall_out_1),
        .in_i_valid(loop_limiter_jacobi_1d1_out_o_valid),
        .out_o_data_0_tpl(bb_jacobi_1d_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_jacobi_1d_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_jacobi_1d_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_jacobi_1d_B4_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_jacobi_1d_B4_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_jacobi_1d_B4_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_stall(bb_jacobi_1d_B4_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_jacobi_1d_B4_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_jacobi_1d1(BLACKBOX,98)
    jacobi_1d_loop_limiter_1 theloop_limiter_jacobi_1d1 (
        .in_i_stall(bb_jacobi_1d_B4_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_jacobi_1d_B4_out_exiting_stall_out),
        .in_i_valid(bb_jacobi_1d_B2_out_valid_out_0),
        .in_i_valid_exit(bb_jacobi_1d_B4_out_exiting_valid_out),
        .out_o_stall(loop_limiter_jacobi_1d1_out_o_stall),
        .out_o_valid(loop_limiter_jacobi_1d1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_sr(BLACKBOX,53)
    jacobi_1d_i_llvm_fpga_pipeline_keep_going41_2_sr thei_llvm_fpga_pipeline_keep_going41_jacobi_1d2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_valid_fifo_out_stall_out),
        .in_i_valid(bb_jacobi_1d_B2_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B7_sr_0_aunroll_x(BLACKBOX,7)
    jacobi_1d_bb_B7_sr_0 thebb_jacobi_1d_B7_sr_0_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_jacobi_1d_B7_out_stall_out_0),
        .in_i_valid(bb_jacobi_1d_B6_out_valid_out_0),
        .out_o_data_0_tpl(),
        .out_o_stall(bb_jacobi_1d_B7_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_jacobi_1d_B7_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_jacobi_1d4_sr(BLACKBOX,57)
    jacobi_1d_i_llvm_fpga_pipeline_keep_going_4_sr thei_llvm_fpga_pipeline_keep_going_jacobi_1d4_sr (
        .in_i_data(GND_q),
        .in_i_stall(bb_jacobi_1d_B5_out_stall_out_0),
        .in_i_valid(bb_jacobi_1d_B5_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_jacobi_1d4_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_jacobi_1d4_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_addrspace_1025_undef31(CONSTANT,50)
    assign c_i32_addrspace_1025_undef31_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // loop_limiter_jacobi_1d2(BLACKBOX,99)
    jacobi_1d_loop_limiter_2 theloop_limiter_jacobi_1d2 (
        .in_i_stall(bb_jacobi_1d_B5_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_jacobi_1d_B5_out_exiting_stall_out),
        .in_i_valid(bb_jacobi_1d_B3_out_valid_out_0),
        .in_i_valid_exit(bb_jacobi_1d_B5_out_exiting_valid_out),
        .out_o_stall(loop_limiter_jacobi_1d2_out_o_stall),
        .out_o_valid(loop_limiter_jacobi_1d2_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B5_sr_1_aunroll_x(BLACKBOX,5)
    jacobi_1d_bb_B5_sr_1 thebb_jacobi_1d_B5_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_jacobi_1d_B3_out_mPtr_bitcast70761),
        .in_i_data_2_tpl(bb_jacobi_1d_B3_out_memdep_phi6_pop1355_pop232),
        .in_i_data_3_tpl(bb_jacobi_1d_B3_out_exitcond1749_pop194),
        .in_i_data_4_tpl(bb_jacobi_1d_B3_out_notcmp3951_pop205),
        .in_i_stall(bb_jacobi_1d_B5_out_stall_out_1),
        .in_i_valid(loop_limiter_jacobi_1d2_out_o_valid),
        .out_o_data_0_tpl(bb_jacobi_1d_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_jacobi_1d_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_jacobi_1d_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_jacobi_1d_B5_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_jacobi_1d_B5_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_stall(bb_jacobi_1d_B5_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_jacobi_1d_B5_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B5(BLACKBOX,13)
    jacobi_1d_bb_B5 thebb_jacobi_1d_B5 (
        .in_exitcond1749_pop1968_0(GND_q),
        .in_exitcond1749_pop1968_1(bb_jacobi_1d_B5_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_jacobi_1d_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_2_0(bb_jacobi_1d_B1_start_out_intel_reserved_ffwd_2_0),
        .in_mPtr_bitcast707663_0(c_i32_addrspace_1025_undef31_q),
        .in_mPtr_bitcast707663_1(bb_jacobi_1d_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_memdep_5_jacobi_1d_avm_readdata(in_memdep_5_jacobi_1d_avm_readdata),
        .in_memdep_5_jacobi_1d_avm_readdatavalid(in_memdep_5_jacobi_1d_avm_readdatavalid),
        .in_memdep_5_jacobi_1d_avm_waitrequest(in_memdep_5_jacobi_1d_avm_waitrequest),
        .in_memdep_5_jacobi_1d_avm_writeack(in_memdep_5_jacobi_1d_avm_writeack),
        .in_memdep_phi6_pop1355_pop2365_0(GND_q),
        .in_memdep_phi6_pop1355_pop2365_1(bb_jacobi_1d_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_notcmp3951_pop2070_0(GND_q),
        .in_notcmp3951_pop2070_1(bb_jacobi_1d_B5_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_jacobi_1d4_sr_out_o_stall),
        .in_stall_in_0(bb_jacobi_1d_B6_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_jacobi_1d13_jacobi_1d_avm_readdata(in_unnamed_jacobi_1d13_jacobi_1d_avm_readdata),
        .in_unnamed_jacobi_1d13_jacobi_1d_avm_readdatavalid(in_unnamed_jacobi_1d13_jacobi_1d_avm_readdatavalid),
        .in_unnamed_jacobi_1d13_jacobi_1d_avm_waitrequest(in_unnamed_jacobi_1d13_jacobi_1d_avm_waitrequest),
        .in_unnamed_jacobi_1d13_jacobi_1d_avm_writeack(in_unnamed_jacobi_1d13_jacobi_1d_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_jacobi_1d4_sr_out_o_valid),
        .in_valid_in_1(bb_jacobi_1d_B5_sr_1_aunroll_x_out_o_valid),
        .out_exitcond1750_pop29(bb_jacobi_1d_B5_out_exitcond1750_pop29),
        .out_exiting_stall_out(bb_jacobi_1d_B5_out_exiting_stall_out),
        .out_exiting_valid_out(bb_jacobi_1d_B5_out_exiting_valid_out),
        .out_lsu_memdep_5_o_active(bb_jacobi_1d_B5_out_lsu_memdep_5_o_active),
        .out_memdep_5_jacobi_1d_avm_address(bb_jacobi_1d_B5_out_memdep_5_jacobi_1d_avm_address),
        .out_memdep_5_jacobi_1d_avm_burstcount(bb_jacobi_1d_B5_out_memdep_5_jacobi_1d_avm_burstcount),
        .out_memdep_5_jacobi_1d_avm_byteenable(bb_jacobi_1d_B5_out_memdep_5_jacobi_1d_avm_byteenable),
        .out_memdep_5_jacobi_1d_avm_enable(bb_jacobi_1d_B5_out_memdep_5_jacobi_1d_avm_enable),
        .out_memdep_5_jacobi_1d_avm_read(bb_jacobi_1d_B5_out_memdep_5_jacobi_1d_avm_read),
        .out_memdep_5_jacobi_1d_avm_write(bb_jacobi_1d_B5_out_memdep_5_jacobi_1d_avm_write),
        .out_memdep_5_jacobi_1d_avm_writedata(bb_jacobi_1d_B5_out_memdep_5_jacobi_1d_avm_writedata),
        .out_notcmp3952_pop30(bb_jacobi_1d_B5_out_notcmp3952_pop30),
        .out_pipeline_valid_out(bb_jacobi_1d_B5_out_pipeline_valid_out),
        .out_stall_in_0(bb_jacobi_1d_B5_out_stall_in_0),
        .out_stall_out_0(bb_jacobi_1d_B5_out_stall_out_0),
        .out_stall_out_1(bb_jacobi_1d_B5_out_stall_out_1),
        .out_toi1_intcast(bb_jacobi_1d_B5_out_toi1_intcast),
        .out_unnamed_jacobi_1d13_jacobi_1d_avm_address(bb_jacobi_1d_B5_out_unnamed_jacobi_1d13_jacobi_1d_avm_address),
        .out_unnamed_jacobi_1d13_jacobi_1d_avm_burstcount(bb_jacobi_1d_B5_out_unnamed_jacobi_1d13_jacobi_1d_avm_burstcount),
        .out_unnamed_jacobi_1d13_jacobi_1d_avm_byteenable(bb_jacobi_1d_B5_out_unnamed_jacobi_1d13_jacobi_1d_avm_byteenable),
        .out_unnamed_jacobi_1d13_jacobi_1d_avm_enable(bb_jacobi_1d_B5_out_unnamed_jacobi_1d13_jacobi_1d_avm_enable),
        .out_unnamed_jacobi_1d13_jacobi_1d_avm_read(bb_jacobi_1d_B5_out_unnamed_jacobi_1d13_jacobi_1d_avm_read),
        .out_unnamed_jacobi_1d13_jacobi_1d_avm_write(bb_jacobi_1d_B5_out_unnamed_jacobi_1d13_jacobi_1d_avm_write),
        .out_unnamed_jacobi_1d13_jacobi_1d_avm_writedata(bb_jacobi_1d_B5_out_unnamed_jacobi_1d13_jacobi_1d_avm_writedata),
        .out_valid_in_0(bb_jacobi_1d_B5_out_valid_in_0),
        .out_valid_in_1(bb_jacobi_1d_B5_out_valid_in_1),
        .out_valid_out_0(bb_jacobi_1d_B5_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B6_sr_0_aunroll_x(BLACKBOX,6)
    jacobi_1d_bb_B6_sr_0 thebb_jacobi_1d_B6_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_jacobi_1d_B5_out_toi1_intcast),
        .in_i_data_1_tpl(bb_jacobi_1d_B5_out_exitcond1750_pop29),
        .in_i_data_2_tpl(bb_jacobi_1d_B5_out_notcmp3952_pop30),
        .in_i_stall(bb_jacobi_1d_B6_out_stall_out_0),
        .in_i_valid(bb_jacobi_1d_B5_out_valid_out_0),
        .out_o_data_0_tpl(bb_jacobi_1d_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_jacobi_1d_B6_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_jacobi_1d_B6_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_stall(bb_jacobi_1d_B6_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_jacobi_1d_B6_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B6(BLACKBOX,14)
    jacobi_1d_bb_B6 thebb_jacobi_1d_B6 (
        .in_exitcond1750_pop297_0(bb_jacobi_1d_B6_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_feedback_stall_in_13(bb_jacobi_1d_B2_out_feedback_stall_out_13),
        .in_notcmp3952_pop308_0(bb_jacobi_1d_B6_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_stall_in_0(bb_jacobi_1d_B7_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_toi1_intcast6_0(bb_jacobi_1d_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_valid_in_0(bb_jacobi_1d_B6_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_13(bb_jacobi_1d_B6_out_feedback_out_13),
        .out_feedback_valid_out_13(bb_jacobi_1d_B6_out_feedback_valid_out_13),
        .out_stall_in_0(bb_jacobi_1d_B6_out_stall_in_0),
        .out_stall_out_0(bb_jacobi_1d_B6_out_stall_out_0),
        .out_valid_out_0(bb_jacobi_1d_B6_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B3(BLACKBOX,11)
    jacobi_1d_bb_B3 thebb_jacobi_1d_B3 (
        .in_exitcond1749_pop194_0(bb_jacobi_1d_B3_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_feedback_stall_in_11(bb_jacobi_1d_B2_out_feedback_stall_out_11),
        .in_mPtr_bitcast70761_0(bb_jacobi_1d_B3_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_memdep_3_0(bb_jacobi_1d_B3_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_memdep_phi6_pop1355_pop232_0(bb_jacobi_1d_B3_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_notcmp3951_pop205_0(bb_jacobi_1d_B3_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_stall_in_0(loop_limiter_jacobi_1d2_out_o_stall),
        .in_valid_in_0(bb_jacobi_1d_B3_sr_0_aunroll_x_out_o_valid),
        .out_exitcond1749_pop194(bb_jacobi_1d_B3_out_exitcond1749_pop194),
        .out_feedback_out_11(bb_jacobi_1d_B3_out_feedback_out_11),
        .out_feedback_valid_out_11(bb_jacobi_1d_B3_out_feedback_valid_out_11),
        .out_mPtr_bitcast70761(bb_jacobi_1d_B3_out_mPtr_bitcast70761),
        .out_memdep_phi6_pop1355_pop232(bb_jacobi_1d_B3_out_memdep_phi6_pop1355_pop232),
        .out_notcmp3951_pop205(bb_jacobi_1d_B3_out_notcmp3951_pop205),
        .out_stall_out_0(bb_jacobi_1d_B3_out_stall_out_0),
        .out_valid_out_0(bb_jacobi_1d_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B2(BLACKBOX,10)
    jacobi_1d_bb_B2 thebb_jacobi_1d_B2 (
        .in_feedback_in_11(bb_jacobi_1d_B3_out_feedback_out_11),
        .in_feedback_in_13(bb_jacobi_1d_B6_out_feedback_out_13),
        .in_feedback_valid_in_11(bb_jacobi_1d_B3_out_feedback_valid_out_11),
        .in_feedback_valid_in_13(bb_jacobi_1d_B6_out_feedback_valid_out_13),
        .in_forked48_0(GND_q),
        .in_forked48_1(bb_jacobi_1d_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_jacobi_1d1_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_jacobi_1d_B2_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe179(bb_jacobi_1d_B2_out_c0_exe179),
        .out_c0_exe2(bb_jacobi_1d_B2_out_c0_exe2),
        .out_exiting_stall_out(bb_jacobi_1d_B2_out_exiting_stall_out),
        .out_exiting_valid_out(bb_jacobi_1d_B2_out_exiting_valid_out),
        .out_feedback_stall_out_11(bb_jacobi_1d_B2_out_feedback_stall_out_11),
        .out_feedback_stall_out_13(bb_jacobi_1d_B2_out_feedback_stall_out_13),
        .out_memdep_phi1_pop11(bb_jacobi_1d_B2_out_memdep_phi1_pop11),
        .out_memdep_phi4_pop12(bb_jacobi_1d_B2_out_memdep_phi4_pop12),
        .out_pipeline_valid_out(bb_jacobi_1d_B2_out_pipeline_valid_out),
        .out_stall_out_0(bb_jacobi_1d_B2_out_stall_out_0),
        .out_stall_out_1(bb_jacobi_1d_B2_out_stall_out_1),
        .out_valid_in_0(bb_jacobi_1d_B2_out_valid_in_0),
        .out_valid_in_1(bb_jacobi_1d_B2_out_valid_in_1),
        .out_valid_out_0(bb_jacobi_1d_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B2_sr_1_aunroll_x(BLACKBOX,2)
    jacobi_1d_bb_B2_sr_1 thebb_jacobi_1d_B2_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_stall(bb_jacobi_1d_B2_out_stall_out_1),
        .in_i_valid(loop_limiter_jacobi_1d0_out_o_valid),
        .out_o_data_0_tpl(bb_jacobi_1d_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_stall(bb_jacobi_1d_B2_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_jacobi_1d_B2_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_jacobi_1d0(BLACKBOX,97)
    jacobi_1d_loop_limiter_0 theloop_limiter_jacobi_1d0 (
        .in_i_stall(bb_jacobi_1d_B2_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_jacobi_1d_B2_out_exiting_stall_out),
        .in_i_valid(bb_jacobi_1d_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_jacobi_1d_B2_out_exiting_valid_out),
        .out_o_stall(loop_limiter_jacobi_1d0_out_o_stall),
        .out_o_valid(loop_limiter_jacobi_1d0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going45_jacobi_1d1_sr(BLACKBOX,55)
    jacobi_1d_i_llvm_fpga_pipeline_keep_going45_1_sr thei_llvm_fpga_pipeline_keep_going45_jacobi_1d1_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going45_jacobi_1d1_valid_fifo_out_stall_out),
        .in_i_valid(bb_jacobi_1d_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going45_jacobi_1d1_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going45_jacobi_1d1_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B1_start(BLACKBOX,9)
    jacobi_1d_bb_B1_start thebb_jacobi_1d_B1_start (
        .in_feedback_in_1(bb_jacobi_1d_B7_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_jacobi_1d_B7_out_feedback_valid_out_1),
        .in_iord_bl_call_jacobi_1d_i_fifodata(in_iord_bl_call_jacobi_1d_i_fifodata),
        .in_iord_bl_call_jacobi_1d_i_fifovalid(in_iord_bl_call_jacobi_1d_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going45_jacobi_1d1_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_jacobi_1d0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going45_jacobi_1d1_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_jacobi_1d_B1_start_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_jacobi_1d_B1_start_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_jacobi_1d_B1_start_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_jacobi_1d_B1_start_out_intel_reserved_ffwd_2_0),
        .out_iord_bl_call_jacobi_1d_o_fifoalmost_full(bb_jacobi_1d_B1_start_out_iord_bl_call_jacobi_1d_o_fifoalmost_full),
        .out_iord_bl_call_jacobi_1d_o_fifoready(bb_jacobi_1d_B1_start_out_iord_bl_call_jacobi_1d_o_fifoready),
        .out_pipeline_valid_out(bb_jacobi_1d_B1_start_out_pipeline_valid_out),
        .out_stall_out_0(bb_jacobi_1d_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_in_0(bb_jacobi_1d_B1_start_out_valid_in_0),
        .out_valid_in_1(bb_jacobi_1d_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_jacobi_1d_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B7(BLACKBOX,15)
    jacobi_1d_bb_B7 thebb_jacobi_1d_B7 (
        .in_feedback_stall_in_1(bb_jacobi_1d_B1_start_out_feedback_stall_out_1),
        .in_iowr_bl_return_jacobi_1d_i_fifoready(in_iowr_bl_return_jacobi_1d_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_jacobi_1d_B7_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_jacobi_1d_B7_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_jacobi_1d_B7_out_feedback_valid_out_1),
        .out_iowr_bl_return_jacobi_1d_o_fifodata(bb_jacobi_1d_B7_out_iowr_bl_return_jacobi_1d_o_fifodata),
        .out_iowr_bl_return_jacobi_1d_o_fifovalid(bb_jacobi_1d_B7_out_iowr_bl_return_jacobi_1d_o_fifovalid),
        .out_stall_in_0(bb_jacobi_1d_B7_out_stall_in_0),
        .out_stall_out_0(bb_jacobi_1d_B7_out_stall_out_0),
        .out_valid_out_0(bb_jacobi_1d_B7_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // jacobi_1d_B1_start_x(EXTIFACE,93)
    assign jacobi_1d_B1_start_x_i_capture = GND_q;
    assign jacobi_1d_B1_start_x_i_clear = GND_q;
    assign jacobi_1d_B1_start_x_i_enable = VCC_q;
    assign jacobi_1d_B1_start_x_i_shift = GND_q;
    assign jacobi_1d_B1_start_x_i_stall_pred = GND_q;
    assign jacobi_1d_B1_start_x_i_stall_succ = bb_jacobi_1d_B7_out_stall_in_0;
    assign jacobi_1d_B1_start_x_i_valid_loop = bb_jacobi_1d_B1_start_out_valid_in_0;
    assign jacobi_1d_B1_start_x_i_valid_pred = bb_jacobi_1d_B1_start_out_valid_in_1;
    assign jacobi_1d_B1_start_x_i_valid_succ = bb_jacobi_1d_B7_out_valid_out_0;
    assign jacobi_1d_B1_start_x_i_capture_bitsignaltemp = jacobi_1d_B1_start_x_i_capture[0];
    assign jacobi_1d_B1_start_x_i_clear_bitsignaltemp = jacobi_1d_B1_start_x_i_clear[0];
    assign jacobi_1d_B1_start_x_i_enable_bitsignaltemp = jacobi_1d_B1_start_x_i_enable[0];
    assign jacobi_1d_B1_start_x_i_shift_bitsignaltemp = jacobi_1d_B1_start_x_i_shift[0];
    assign jacobi_1d_B1_start_x_i_stall_pred_bitsignaltemp = jacobi_1d_B1_start_x_i_stall_pred[0];
    assign jacobi_1d_B1_start_x_i_stall_succ_bitsignaltemp = jacobi_1d_B1_start_x_i_stall_succ[0];
    assign jacobi_1d_B1_start_x_i_valid_loop_bitsignaltemp = jacobi_1d_B1_start_x_i_valid_loop[0];
    assign jacobi_1d_B1_start_x_i_valid_pred_bitsignaltemp = jacobi_1d_B1_start_x_i_valid_pred[0];
    assign jacobi_1d_B1_start_x_i_valid_succ_bitsignaltemp = jacobi_1d_B1_start_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("jacobi_1d.B1.start")
    ) thejacobi_1d_B1_start_x (
        .i_capture(jacobi_1d_B1_start_x_i_capture_bitsignaltemp),
        .i_clear(jacobi_1d_B1_start_x_i_clear_bitsignaltemp),
        .i_enable(jacobi_1d_B1_start_x_i_enable_bitsignaltemp),
        .i_shift(jacobi_1d_B1_start_x_i_shift_bitsignaltemp),
        .i_stall_pred(jacobi_1d_B1_start_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(jacobi_1d_B1_start_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(jacobi_1d_B1_start_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(jacobi_1d_B1_start_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(jacobi_1d_B1_start_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // jacobi_1d_B2_x(EXTIFACE,94)
    assign jacobi_1d_B2_x_i_capture = GND_q;
    assign jacobi_1d_B2_x_i_clear = GND_q;
    assign jacobi_1d_B2_x_i_enable = VCC_q;
    assign jacobi_1d_B2_x_i_shift = GND_q;
    assign jacobi_1d_B2_x_i_stall_pred = loop_limiter_jacobi_1d0_out_o_stall;
    assign jacobi_1d_B2_x_i_stall_succ = bb_jacobi_1d_B6_out_stall_in_0;
    assign jacobi_1d_B2_x_i_valid_loop = bb_jacobi_1d_B2_out_valid_in_0;
    assign jacobi_1d_B2_x_i_valid_pred = bb_jacobi_1d_B2_out_valid_in_1;
    assign jacobi_1d_B2_x_i_valid_succ = bb_jacobi_1d_B6_out_valid_out_0;
    assign jacobi_1d_B2_x_i_capture_bitsignaltemp = jacobi_1d_B2_x_i_capture[0];
    assign jacobi_1d_B2_x_i_clear_bitsignaltemp = jacobi_1d_B2_x_i_clear[0];
    assign jacobi_1d_B2_x_i_enable_bitsignaltemp = jacobi_1d_B2_x_i_enable[0];
    assign jacobi_1d_B2_x_i_shift_bitsignaltemp = jacobi_1d_B2_x_i_shift[0];
    assign jacobi_1d_B2_x_i_stall_pred_bitsignaltemp = jacobi_1d_B2_x_i_stall_pred[0];
    assign jacobi_1d_B2_x_i_stall_succ_bitsignaltemp = jacobi_1d_B2_x_i_stall_succ[0];
    assign jacobi_1d_B2_x_i_valid_loop_bitsignaltemp = jacobi_1d_B2_x_i_valid_loop[0];
    assign jacobi_1d_B2_x_i_valid_pred_bitsignaltemp = jacobi_1d_B2_x_i_valid_pred[0];
    assign jacobi_1d_B2_x_i_valid_succ_bitsignaltemp = jacobi_1d_B2_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("jacobi_1d.B2")
    ) thejacobi_1d_B2_x (
        .i_capture(jacobi_1d_B2_x_i_capture_bitsignaltemp),
        .i_clear(jacobi_1d_B2_x_i_clear_bitsignaltemp),
        .i_enable(jacobi_1d_B2_x_i_enable_bitsignaltemp),
        .i_shift(jacobi_1d_B2_x_i_shift_bitsignaltemp),
        .i_stall_pred(jacobi_1d_B2_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(jacobi_1d_B2_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(jacobi_1d_B2_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(jacobi_1d_B2_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(jacobi_1d_B2_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // jacobi_1d_B4_x(EXTIFACE,95)
    assign jacobi_1d_B4_x_i_capture = GND_q;
    assign jacobi_1d_B4_x_i_clear = GND_q;
    assign jacobi_1d_B4_x_i_enable = VCC_q;
    assign jacobi_1d_B4_x_i_shift = GND_q;
    assign jacobi_1d_B4_x_i_stall_pred = loop_limiter_jacobi_1d1_out_o_stall;
    assign jacobi_1d_B4_x_i_stall_succ = bb_jacobi_1d_B4_out_stall_in_0;
    assign jacobi_1d_B4_x_i_valid_loop = bb_jacobi_1d_B4_out_valid_in_0;
    assign jacobi_1d_B4_x_i_valid_pred = bb_jacobi_1d_B4_out_valid_in_1;
    assign jacobi_1d_B4_x_i_valid_succ = bb_jacobi_1d_B4_out_valid_out_0;
    assign jacobi_1d_B4_x_i_capture_bitsignaltemp = jacobi_1d_B4_x_i_capture[0];
    assign jacobi_1d_B4_x_i_clear_bitsignaltemp = jacobi_1d_B4_x_i_clear[0];
    assign jacobi_1d_B4_x_i_enable_bitsignaltemp = jacobi_1d_B4_x_i_enable[0];
    assign jacobi_1d_B4_x_i_shift_bitsignaltemp = jacobi_1d_B4_x_i_shift[0];
    assign jacobi_1d_B4_x_i_stall_pred_bitsignaltemp = jacobi_1d_B4_x_i_stall_pred[0];
    assign jacobi_1d_B4_x_i_stall_succ_bitsignaltemp = jacobi_1d_B4_x_i_stall_succ[0];
    assign jacobi_1d_B4_x_i_valid_loop_bitsignaltemp = jacobi_1d_B4_x_i_valid_loop[0];
    assign jacobi_1d_B4_x_i_valid_pred_bitsignaltemp = jacobi_1d_B4_x_i_valid_pred[0];
    assign jacobi_1d_B4_x_i_valid_succ_bitsignaltemp = jacobi_1d_B4_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("jacobi_1d.B4")
    ) thejacobi_1d_B4_x (
        .i_capture(jacobi_1d_B4_x_i_capture_bitsignaltemp),
        .i_clear(jacobi_1d_B4_x_i_clear_bitsignaltemp),
        .i_enable(jacobi_1d_B4_x_i_enable_bitsignaltemp),
        .i_shift(jacobi_1d_B4_x_i_shift_bitsignaltemp),
        .i_stall_pred(jacobi_1d_B4_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(jacobi_1d_B4_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(jacobi_1d_B4_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(jacobi_1d_B4_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(jacobi_1d_B4_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // jacobi_1d_B5_x(EXTIFACE,96)
    assign jacobi_1d_B5_x_i_capture = GND_q;
    assign jacobi_1d_B5_x_i_clear = GND_q;
    assign jacobi_1d_B5_x_i_enable = VCC_q;
    assign jacobi_1d_B5_x_i_shift = GND_q;
    assign jacobi_1d_B5_x_i_stall_pred = loop_limiter_jacobi_1d2_out_o_stall;
    assign jacobi_1d_B5_x_i_stall_succ = bb_jacobi_1d_B5_out_stall_in_0;
    assign jacobi_1d_B5_x_i_valid_loop = bb_jacobi_1d_B5_out_valid_in_0;
    assign jacobi_1d_B5_x_i_valid_pred = bb_jacobi_1d_B5_out_valid_in_1;
    assign jacobi_1d_B5_x_i_valid_succ = bb_jacobi_1d_B5_out_valid_out_0;
    assign jacobi_1d_B5_x_i_capture_bitsignaltemp = jacobi_1d_B5_x_i_capture[0];
    assign jacobi_1d_B5_x_i_clear_bitsignaltemp = jacobi_1d_B5_x_i_clear[0];
    assign jacobi_1d_B5_x_i_enable_bitsignaltemp = jacobi_1d_B5_x_i_enable[0];
    assign jacobi_1d_B5_x_i_shift_bitsignaltemp = jacobi_1d_B5_x_i_shift[0];
    assign jacobi_1d_B5_x_i_stall_pred_bitsignaltemp = jacobi_1d_B5_x_i_stall_pred[0];
    assign jacobi_1d_B5_x_i_stall_succ_bitsignaltemp = jacobi_1d_B5_x_i_stall_succ[0];
    assign jacobi_1d_B5_x_i_valid_loop_bitsignaltemp = jacobi_1d_B5_x_i_valid_loop[0];
    assign jacobi_1d_B5_x_i_valid_pred_bitsignaltemp = jacobi_1d_B5_x_i_valid_pred[0];
    assign jacobi_1d_B5_x_i_valid_succ_bitsignaltemp = jacobi_1d_B5_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("jacobi_1d.B5")
    ) thejacobi_1d_B5_x (
        .i_capture(jacobi_1d_B5_x_i_capture_bitsignaltemp),
        .i_clear(jacobi_1d_B5_x_i_clear_bitsignaltemp),
        .i_enable(jacobi_1d_B5_x_i_enable_bitsignaltemp),
        .i_shift(jacobi_1d_B5_x_i_shift_bitsignaltemp),
        .i_stall_pred(jacobi_1d_B5_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(jacobi_1d_B5_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(jacobi_1d_B5_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(jacobi_1d_B5_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(jacobi_1d_B5_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_jacobi_1d_o_fifoalmost_full(GPOUT,100)
    assign out_iord_bl_call_jacobi_1d_o_fifoalmost_full = bb_jacobi_1d_B1_start_out_iord_bl_call_jacobi_1d_o_fifoalmost_full;

    // out_iord_bl_call_jacobi_1d_o_fifoready(GPOUT,101)
    assign out_iord_bl_call_jacobi_1d_o_fifoready = bb_jacobi_1d_B1_start_out_iord_bl_call_jacobi_1d_o_fifoready;

    // out_iowr_bl_return_jacobi_1d_o_fifodata(GPOUT,102)
    assign out_iowr_bl_return_jacobi_1d_o_fifodata = bb_jacobi_1d_B7_out_iowr_bl_return_jacobi_1d_o_fifodata;

    // out_iowr_bl_return_jacobi_1d_o_fifovalid(GPOUT,103)
    assign out_iowr_bl_return_jacobi_1d_o_fifovalid = bb_jacobi_1d_B7_out_iowr_bl_return_jacobi_1d_o_fifovalid;

    // out_memdep_5_jacobi_1d_avm_address(GPOUT,104)
    assign out_memdep_5_jacobi_1d_avm_address = bb_jacobi_1d_B5_out_memdep_5_jacobi_1d_avm_address;

    // out_memdep_5_jacobi_1d_avm_burstcount(GPOUT,105)
    assign out_memdep_5_jacobi_1d_avm_burstcount = bb_jacobi_1d_B5_out_memdep_5_jacobi_1d_avm_burstcount;

    // out_memdep_5_jacobi_1d_avm_byteenable(GPOUT,106)
    assign out_memdep_5_jacobi_1d_avm_byteenable = bb_jacobi_1d_B5_out_memdep_5_jacobi_1d_avm_byteenable;

    // out_memdep_5_jacobi_1d_avm_enable(GPOUT,107)
    assign out_memdep_5_jacobi_1d_avm_enable = bb_jacobi_1d_B5_out_memdep_5_jacobi_1d_avm_enable;

    // out_memdep_5_jacobi_1d_avm_read(GPOUT,108)
    assign out_memdep_5_jacobi_1d_avm_read = bb_jacobi_1d_B5_out_memdep_5_jacobi_1d_avm_read;

    // out_memdep_5_jacobi_1d_avm_write(GPOUT,109)
    assign out_memdep_5_jacobi_1d_avm_write = bb_jacobi_1d_B5_out_memdep_5_jacobi_1d_avm_write;

    // out_memdep_5_jacobi_1d_avm_writedata(GPOUT,110)
    assign out_memdep_5_jacobi_1d_avm_writedata = bb_jacobi_1d_B5_out_memdep_5_jacobi_1d_avm_writedata;

    // out_memdep_jacobi_1d_avm_address(GPOUT,111)
    assign out_memdep_jacobi_1d_avm_address = bb_jacobi_1d_B4_out_memdep_jacobi_1d_avm_address;

    // out_memdep_jacobi_1d_avm_burstcount(GPOUT,112)
    assign out_memdep_jacobi_1d_avm_burstcount = bb_jacobi_1d_B4_out_memdep_jacobi_1d_avm_burstcount;

    // out_memdep_jacobi_1d_avm_byteenable(GPOUT,113)
    assign out_memdep_jacobi_1d_avm_byteenable = bb_jacobi_1d_B4_out_memdep_jacobi_1d_avm_byteenable;

    // out_memdep_jacobi_1d_avm_enable(GPOUT,114)
    assign out_memdep_jacobi_1d_avm_enable = bb_jacobi_1d_B4_out_memdep_jacobi_1d_avm_enable;

    // out_memdep_jacobi_1d_avm_read(GPOUT,115)
    assign out_memdep_jacobi_1d_avm_read = bb_jacobi_1d_B4_out_memdep_jacobi_1d_avm_read;

    // out_memdep_jacobi_1d_avm_write(GPOUT,116)
    assign out_memdep_jacobi_1d_avm_write = bb_jacobi_1d_B4_out_memdep_jacobi_1d_avm_write;

    // out_memdep_jacobi_1d_avm_writedata(GPOUT,117)
    assign out_memdep_jacobi_1d_avm_writedata = bb_jacobi_1d_B4_out_memdep_jacobi_1d_avm_writedata;

    // out_o_active_memdep(GPOUT,118)
    assign out_o_active_memdep = bb_jacobi_1d_B4_out_lsu_memdep_o_active;

    // out_o_active_memdep_5(GPOUT,119)
    assign out_o_active_memdep_5 = bb_jacobi_1d_B5_out_lsu_memdep_5_o_active;

    // bb_jacobi_1d_B0_runOnce(BLACKBOX,8)
    jacobi_1d_bb_B0_runOnce thebb_jacobi_1d_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_jacobi_1d_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,120)
    assign out_stall_out = bb_jacobi_1d_B0_runOnce_out_stall_out_0;

    // out_unnamed_jacobi_1d11_jacobi_1d_avm_address(GPOUT,121)
    assign out_unnamed_jacobi_1d11_jacobi_1d_avm_address = bb_jacobi_1d_B4_out_unnamed_jacobi_1d11_jacobi_1d_avm_address;

    // out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount(GPOUT,122)
    assign out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount = bb_jacobi_1d_B4_out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount;

    // out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable(GPOUT,123)
    assign out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable = bb_jacobi_1d_B4_out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable;

    // out_unnamed_jacobi_1d11_jacobi_1d_avm_enable(GPOUT,124)
    assign out_unnamed_jacobi_1d11_jacobi_1d_avm_enable = bb_jacobi_1d_B4_out_unnamed_jacobi_1d11_jacobi_1d_avm_enable;

    // out_unnamed_jacobi_1d11_jacobi_1d_avm_read(GPOUT,125)
    assign out_unnamed_jacobi_1d11_jacobi_1d_avm_read = bb_jacobi_1d_B4_out_unnamed_jacobi_1d11_jacobi_1d_avm_read;

    // out_unnamed_jacobi_1d11_jacobi_1d_avm_write(GPOUT,126)
    assign out_unnamed_jacobi_1d11_jacobi_1d_avm_write = bb_jacobi_1d_B4_out_unnamed_jacobi_1d11_jacobi_1d_avm_write;

    // out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata(GPOUT,127)
    assign out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata = bb_jacobi_1d_B4_out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata;

    // out_unnamed_jacobi_1d13_jacobi_1d_avm_address(GPOUT,128)
    assign out_unnamed_jacobi_1d13_jacobi_1d_avm_address = bb_jacobi_1d_B5_out_unnamed_jacobi_1d13_jacobi_1d_avm_address;

    // out_unnamed_jacobi_1d13_jacobi_1d_avm_burstcount(GPOUT,129)
    assign out_unnamed_jacobi_1d13_jacobi_1d_avm_burstcount = bb_jacobi_1d_B5_out_unnamed_jacobi_1d13_jacobi_1d_avm_burstcount;

    // out_unnamed_jacobi_1d13_jacobi_1d_avm_byteenable(GPOUT,130)
    assign out_unnamed_jacobi_1d13_jacobi_1d_avm_byteenable = bb_jacobi_1d_B5_out_unnamed_jacobi_1d13_jacobi_1d_avm_byteenable;

    // out_unnamed_jacobi_1d13_jacobi_1d_avm_enable(GPOUT,131)
    assign out_unnamed_jacobi_1d13_jacobi_1d_avm_enable = bb_jacobi_1d_B5_out_unnamed_jacobi_1d13_jacobi_1d_avm_enable;

    // out_unnamed_jacobi_1d13_jacobi_1d_avm_read(GPOUT,132)
    assign out_unnamed_jacobi_1d13_jacobi_1d_avm_read = bb_jacobi_1d_B5_out_unnamed_jacobi_1d13_jacobi_1d_avm_read;

    // out_unnamed_jacobi_1d13_jacobi_1d_avm_write(GPOUT,133)
    assign out_unnamed_jacobi_1d13_jacobi_1d_avm_write = bb_jacobi_1d_B5_out_unnamed_jacobi_1d13_jacobi_1d_avm_write;

    // out_unnamed_jacobi_1d13_jacobi_1d_avm_writedata(GPOUT,134)
    assign out_unnamed_jacobi_1d13_jacobi_1d_avm_writedata = bb_jacobi_1d_B5_out_unnamed_jacobi_1d13_jacobi_1d_avm_writedata;

    // out_unnamed_jacobi_1d7_jacobi_1d_avm_address(GPOUT,135)
    assign out_unnamed_jacobi_1d7_jacobi_1d_avm_address = bb_jacobi_1d_B4_out_unnamed_jacobi_1d7_jacobi_1d_avm_address;

    // out_unnamed_jacobi_1d7_jacobi_1d_avm_burstcount(GPOUT,136)
    assign out_unnamed_jacobi_1d7_jacobi_1d_avm_burstcount = bb_jacobi_1d_B4_out_unnamed_jacobi_1d7_jacobi_1d_avm_burstcount;

    // out_unnamed_jacobi_1d7_jacobi_1d_avm_byteenable(GPOUT,137)
    assign out_unnamed_jacobi_1d7_jacobi_1d_avm_byteenable = bb_jacobi_1d_B4_out_unnamed_jacobi_1d7_jacobi_1d_avm_byteenable;

    // out_unnamed_jacobi_1d7_jacobi_1d_avm_enable(GPOUT,138)
    assign out_unnamed_jacobi_1d7_jacobi_1d_avm_enable = bb_jacobi_1d_B4_out_unnamed_jacobi_1d7_jacobi_1d_avm_enable;

    // out_unnamed_jacobi_1d7_jacobi_1d_avm_read(GPOUT,139)
    assign out_unnamed_jacobi_1d7_jacobi_1d_avm_read = bb_jacobi_1d_B4_out_unnamed_jacobi_1d7_jacobi_1d_avm_read;

    // out_unnamed_jacobi_1d7_jacobi_1d_avm_write(GPOUT,140)
    assign out_unnamed_jacobi_1d7_jacobi_1d_avm_write = bb_jacobi_1d_B4_out_unnamed_jacobi_1d7_jacobi_1d_avm_write;

    // out_unnamed_jacobi_1d7_jacobi_1d_avm_writedata(GPOUT,141)
    assign out_unnamed_jacobi_1d7_jacobi_1d_avm_writedata = bb_jacobi_1d_B4_out_unnamed_jacobi_1d7_jacobi_1d_avm_writedata;

    // out_unnamed_jacobi_1d9_jacobi_1d_avm_address(GPOUT,142)
    assign out_unnamed_jacobi_1d9_jacobi_1d_avm_address = bb_jacobi_1d_B4_out_unnamed_jacobi_1d9_jacobi_1d_avm_address;

    // out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount(GPOUT,143)
    assign out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount = bb_jacobi_1d_B4_out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount;

    // out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable(GPOUT,144)
    assign out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable = bb_jacobi_1d_B4_out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable;

    // out_unnamed_jacobi_1d9_jacobi_1d_avm_enable(GPOUT,145)
    assign out_unnamed_jacobi_1d9_jacobi_1d_avm_enable = bb_jacobi_1d_B4_out_unnamed_jacobi_1d9_jacobi_1d_avm_enable;

    // out_unnamed_jacobi_1d9_jacobi_1d_avm_read(GPOUT,146)
    assign out_unnamed_jacobi_1d9_jacobi_1d_avm_read = bb_jacobi_1d_B4_out_unnamed_jacobi_1d9_jacobi_1d_avm_read;

    // out_unnamed_jacobi_1d9_jacobi_1d_avm_write(GPOUT,147)
    assign out_unnamed_jacobi_1d9_jacobi_1d_avm_write = bb_jacobi_1d_B4_out_unnamed_jacobi_1d9_jacobi_1d_avm_write;

    // out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata(GPOUT,148)
    assign out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata = bb_jacobi_1d_B4_out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata;

    // out_valid_out(GPOUT,149)
    assign out_valid_out = GND_q;

endmodule
