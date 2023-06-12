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

// SystemVerilog created from gaussian_function
// Created for function/kernel gaussian
// SystemVerilog created on Thu Apr 27 14:24:40 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_function (
    input wire [63:0] in_arg_A_r,
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_return,
    input wire [63:0] in_iord_bl_call_gaussian_i_fifodata,
    input wire [0:0] in_iord_bl_call_gaussian_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_gaussian_i_fifoready,
    input wire [31:0] in_lm1_gaussian_avm_readdata,
    input wire [0:0] in_lm1_gaussian_avm_readdatavalid,
    input wire [0:0] in_lm1_gaussian_avm_waitrequest,
    input wire [0:0] in_lm1_gaussian_avm_writeack,
    input wire [31:0] in_lm62_gaussian_avm_readdata,
    input wire [0:0] in_lm62_gaussian_avm_readdatavalid,
    input wire [0:0] in_lm62_gaussian_avm_waitrequest,
    input wire [0:0] in_lm62_gaussian_avm_writeack,
    input wire [31:0] in_lm83_gaussian_avm_readdata,
    input wire [0:0] in_lm83_gaussian_avm_readdatavalid,
    input wire [0:0] in_lm83_gaussian_avm_waitrequest,
    input wire [0:0] in_lm83_gaussian_avm_writeack,
    input wire [31:0] in_memdep_gaussian_avm_readdata,
    input wire [0:0] in_memdep_gaussian_avm_readdatavalid,
    input wire [0:0] in_memdep_gaussian_avm_waitrequest,
    input wire [0:0] in_memdep_gaussian_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_gaussian_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_gaussian_o_fifoready,
    output wire [0:0] out_iowr_bl_return_gaussian_o_fifodata,
    output wire [0:0] out_iowr_bl_return_gaussian_o_fifovalid,
    output wire [31:0] out_lm1_gaussian_avm_address,
    output wire [0:0] out_lm1_gaussian_avm_burstcount,
    output wire [3:0] out_lm1_gaussian_avm_byteenable,
    output wire [0:0] out_lm1_gaussian_avm_enable,
    output wire [0:0] out_lm1_gaussian_avm_read,
    output wire [0:0] out_lm1_gaussian_avm_write,
    output wire [31:0] out_lm1_gaussian_avm_writedata,
    output wire [31:0] out_lm62_gaussian_avm_address,
    output wire [0:0] out_lm62_gaussian_avm_burstcount,
    output wire [3:0] out_lm62_gaussian_avm_byteenable,
    output wire [0:0] out_lm62_gaussian_avm_enable,
    output wire [0:0] out_lm62_gaussian_avm_read,
    output wire [0:0] out_lm62_gaussian_avm_write,
    output wire [31:0] out_lm62_gaussian_avm_writedata,
    output wire [31:0] out_lm83_gaussian_avm_address,
    output wire [0:0] out_lm83_gaussian_avm_burstcount,
    output wire [3:0] out_lm83_gaussian_avm_byteenable,
    output wire [0:0] out_lm83_gaussian_avm_enable,
    output wire [0:0] out_lm83_gaussian_avm_read,
    output wire [0:0] out_lm83_gaussian_avm_write,
    output wire [31:0] out_lm83_gaussian_avm_writedata,
    output wire [31:0] out_memdep_gaussian_avm_address,
    output wire [0:0] out_memdep_gaussian_avm_burstcount,
    output wire [3:0] out_memdep_gaussian_avm_byteenable,
    output wire [0:0] out_memdep_gaussian_avm_enable,
    output wire [0:0] out_memdep_gaussian_avm_read,
    output wire [0:0] out_memdep_gaussian_avm_write,
    output wire [31:0] out_memdep_gaussian_avm_writedata,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_gaussian_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_gaussian_B0_runOnce_out_valid_out_0;
    wire [0:0] bb_gaussian_B1_start_out_feedback_stall_out_7;
    wire [0:0] bb_gaussian_B1_start_out_iord_bl_call_gaussian_o_fifoalmost_full;
    wire [0:0] bb_gaussian_B1_start_out_iord_bl_call_gaussian_o_fifoready;
    wire [0:0] bb_gaussian_B1_start_out_memdep_phi4_pop7;
    wire [0:0] bb_gaussian_B1_start_out_profile_loop_o_valid;
    wire [0:0] bb_gaussian_B1_start_out_stall_out_1;
    wire [0:0] bb_gaussian_B1_start_out_valid_in_1;
    wire [0:0] bb_gaussian_B1_start_out_valid_out_0;
    wire [31:0] bb_gaussian_B2_out_c0_exe187;
    wire [0:0] bb_gaussian_B2_out_c0_exe21465;
    wire [0:0] bb_gaussian_B2_out_c0_exe41486;
    wire [31:0] bb_gaussian_B2_out_c0_exe815212;
    wire [31:0] bb_gaussian_B2_out_c1_exe1;
    wire [0:0] bb_gaussian_B2_out_stall_in_0;
    wire [0:0] bb_gaussian_B2_out_stall_out_0;
    wire [0:0] bb_gaussian_B2_out_valid_out_0;
    wire [0:0] bb_gaussian_B2_out_valid_out_1;
    wire [0:0] bb_gaussian_B3_out_feedback_out_7;
    wire [0:0] bb_gaussian_B3_out_feedback_valid_out_7;
    wire [0:0] bb_gaussian_B3_out_iowr_bl_return_gaussian_o_fifodata;
    wire [0:0] bb_gaussian_B3_out_iowr_bl_return_gaussian_o_fifovalid;
    wire [0:0] bb_gaussian_B3_out_stall_in_0;
    wire [0:0] bb_gaussian_B3_out_stall_out_0;
    wire [0:0] bb_gaussian_B3_out_valid_out_0;
    wire [32:0] bb_gaussian_B4_out_c0_exe193;
    wire [31:0] bb_gaussian_B4_out_c1_exe199;
    wire [0:0] bb_gaussian_B4_out_c1_exe2;
    wire [31:0] bb_gaussian_B4_out_fpga_indvars_iv7;
    wire [31:0] bb_gaussian_B4_out_fpga_indvars_iv9;
    wire [31:0] bb_gaussian_B4_out_j_018;
    wire [0:0] bb_gaussian_B4_out_memdep_phi4_pop725;
    wire [0:0] bb_gaussian_B4_out_stall_out_0;
    wire [0:0] bb_gaussian_B4_out_stall_out_1;
    wire [0:0] bb_gaussian_B4_out_valid_in_0;
    wire [0:0] bb_gaussian_B4_out_valid_in_1;
    wire [0:0] bb_gaussian_B4_out_valid_out_0;
    wire [31:0] bb_gaussian_B5_out_c0_exe11;
    wire [0:0] bb_gaussian_B5_out_c0_exe1108;
    wire [31:0] bb_gaussian_B5_out_c0_exe12;
    wire [31:0] bb_gaussian_B5_out_c0_exe13;
    wire [0:0] bb_gaussian_B5_out_c0_exe14;
    wire [32:0] bb_gaussian_B5_out_c0_exe15;
    wire [31:0] bb_gaussian_B5_out_c0_exe16;
    wire [0:0] bb_gaussian_B5_out_c0_exe17;
    wire [0:0] bb_gaussian_B5_out_c0_exe2109;
    wire [0:0] bb_gaussian_B5_out_c0_exe3;
    wire [31:0] bb_gaussian_B5_out_c0_exe4;
    wire [0:0] bb_gaussian_B5_out_c0_exe5;
    wire [31:0] bb_gaussian_B5_out_c0_exe6;
    wire [31:0] bb_gaussian_B5_out_c0_exe7;
    wire [31:0] bb_gaussian_B5_out_c0_exe8;
    wire [31:0] bb_gaussian_B5_out_c0_exe9;
    wire [0:0] bb_gaussian_B5_out_feedback_stall_out_10;
    wire [0:0] bb_gaussian_B5_out_memdep_phi_pop10;
    wire [0:0] bb_gaussian_B5_out_profile_loop_o_valid;
    wire [0:0] bb_gaussian_B5_out_stall_out_1;
    wire [0:0] bb_gaussian_B5_out_valid_in_1;
    wire [0:0] bb_gaussian_B5_out_valid_out_0;
    wire [0:0] bb_gaussian_B6_out_c0_exe11452;
    wire [0:0] bb_gaussian_B6_out_c0_exe21463;
    wire [0:0] bb_gaussian_B6_out_c0_exe41487;
    wire [31:0] bb_gaussian_B6_out_c0_exe61509;
    wire [31:0] bb_gaussian_B6_out_c0_exe715111;
    wire [31:0] bb_gaussian_B6_out_c0_exe815213;
    wire [0:0] bb_gaussian_B6_out_feedback_out_10;
    wire [0:0] bb_gaussian_B6_out_feedback_valid_out_10;
    wire [0:0] bb_gaussian_B6_out_stall_in_0;
    wire [0:0] bb_gaussian_B6_out_stall_out_0;
    wire [0:0] bb_gaussian_B6_out_valid_out_0;
    wire [0:0] bb_gaussian_B7_out_c0_exe10154;
    wire [0:0] bb_gaussian_B7_out_c0_exe1145;
    wire [0:0] bb_gaussian_B7_out_c0_exe2146;
    wire [0:0] bb_gaussian_B7_out_c0_exe4148;
    wire [31:0] bb_gaussian_B7_out_c0_exe6150;
    wire [31:0] bb_gaussian_B7_out_c0_exe7151;
    wire [31:0] bb_gaussian_B7_out_c0_exe8152;
    wire [0:0] bb_gaussian_B7_out_c0_exe9153;
    wire [31:0] bb_gaussian_B7_out_lm1_gaussian_avm_address;
    wire [0:0] bb_gaussian_B7_out_lm1_gaussian_avm_burstcount;
    wire [3:0] bb_gaussian_B7_out_lm1_gaussian_avm_byteenable;
    wire [0:0] bb_gaussian_B7_out_lm1_gaussian_avm_enable;
    wire [0:0] bb_gaussian_B7_out_lm1_gaussian_avm_read;
    wire [0:0] bb_gaussian_B7_out_lm1_gaussian_avm_write;
    wire [31:0] bb_gaussian_B7_out_lm1_gaussian_avm_writedata;
    wire [31:0] bb_gaussian_B7_out_lm62_gaussian_avm_address;
    wire [0:0] bb_gaussian_B7_out_lm62_gaussian_avm_burstcount;
    wire [3:0] bb_gaussian_B7_out_lm62_gaussian_avm_byteenable;
    wire [0:0] bb_gaussian_B7_out_lm62_gaussian_avm_enable;
    wire [0:0] bb_gaussian_B7_out_lm62_gaussian_avm_read;
    wire [0:0] bb_gaussian_B7_out_lm62_gaussian_avm_write;
    wire [31:0] bb_gaussian_B7_out_lm62_gaussian_avm_writedata;
    wire [31:0] bb_gaussian_B7_out_lm83_gaussian_avm_address;
    wire [0:0] bb_gaussian_B7_out_lm83_gaussian_avm_burstcount;
    wire [3:0] bb_gaussian_B7_out_lm83_gaussian_avm_byteenable;
    wire [0:0] bb_gaussian_B7_out_lm83_gaussian_avm_enable;
    wire [0:0] bb_gaussian_B7_out_lm83_gaussian_avm_read;
    wire [0:0] bb_gaussian_B7_out_lm83_gaussian_avm_write;
    wire [31:0] bb_gaussian_B7_out_lm83_gaussian_avm_writedata;
    wire [31:0] bb_gaussian_B7_out_memdep_gaussian_avm_address;
    wire [0:0] bb_gaussian_B7_out_memdep_gaussian_avm_burstcount;
    wire [3:0] bb_gaussian_B7_out_memdep_gaussian_avm_byteenable;
    wire [0:0] bb_gaussian_B7_out_memdep_gaussian_avm_enable;
    wire [0:0] bb_gaussian_B7_out_memdep_gaussian_avm_read;
    wire [0:0] bb_gaussian_B7_out_memdep_gaussian_avm_write;
    wire [31:0] bb_gaussian_B7_out_memdep_gaussian_avm_writedata;
    wire [0:0] bb_gaussian_B7_out_profile_loop_o_valid;
    wire [0:0] bb_gaussian_B7_out_stall_in_0;
    wire [0:0] bb_gaussian_B7_out_stall_out_1;
    wire [0:0] bb_gaussian_B7_out_valid_in_1;
    wire [0:0] bb_gaussian_B7_out_valid_out_0;
    wire [31:0] c_i32_118_q;
    wire [31:0] c_i32_312_q;
    wire [31:0] c_i32_315_q;
    wire [31:0] c_i32_undef22_q;
    wire [32:0] c_i33_undef30_q;
    wire [0:0] gaussian_B1_start_x_i_capture;
    wire gaussian_B1_start_x_i_capture_bitsignaltemp;
    wire [0:0] gaussian_B1_start_x_i_clear;
    wire gaussian_B1_start_x_i_clear_bitsignaltemp;
    wire [0:0] gaussian_B1_start_x_i_enable;
    wire gaussian_B1_start_x_i_enable_bitsignaltemp;
    wire [0:0] gaussian_B1_start_x_i_shift;
    wire gaussian_B1_start_x_i_shift_bitsignaltemp;
    wire [0:0] gaussian_B1_start_x_i_stall_pred;
    wire gaussian_B1_start_x_i_stall_pred_bitsignaltemp;
    wire [0:0] gaussian_B1_start_x_i_stall_succ;
    wire gaussian_B1_start_x_i_stall_succ_bitsignaltemp;
    wire [0:0] gaussian_B1_start_x_i_valid_loop;
    wire gaussian_B1_start_x_i_valid_loop_bitsignaltemp;
    wire [0:0] gaussian_B1_start_x_i_valid_pred;
    wire gaussian_B1_start_x_i_valid_pred_bitsignaltemp;
    wire [0:0] gaussian_B1_start_x_i_valid_succ;
    wire gaussian_B1_start_x_i_valid_succ_bitsignaltemp;
    wire [0:0] gaussian_B4_x_i_capture;
    wire gaussian_B4_x_i_capture_bitsignaltemp;
    wire [0:0] gaussian_B4_x_i_clear;
    wire gaussian_B4_x_i_clear_bitsignaltemp;
    wire [0:0] gaussian_B4_x_i_enable;
    wire gaussian_B4_x_i_enable_bitsignaltemp;
    wire [0:0] gaussian_B4_x_i_shift;
    wire gaussian_B4_x_i_shift_bitsignaltemp;
    wire [0:0] gaussian_B4_x_i_stall_pred;
    wire gaussian_B4_x_i_stall_pred_bitsignaltemp;
    wire [0:0] gaussian_B4_x_i_stall_succ;
    wire gaussian_B4_x_i_stall_succ_bitsignaltemp;
    wire [0:0] gaussian_B4_x_i_valid_loop;
    wire gaussian_B4_x_i_valid_loop_bitsignaltemp;
    wire [0:0] gaussian_B4_x_i_valid_pred;
    wire gaussian_B4_x_i_valid_pred_bitsignaltemp;
    wire [0:0] gaussian_B4_x_i_valid_succ;
    wire gaussian_B4_x_i_valid_succ_bitsignaltemp;
    wire [0:0] gaussian_B5_x_i_capture;
    wire gaussian_B5_x_i_capture_bitsignaltemp;
    wire [0:0] gaussian_B5_x_i_clear;
    wire gaussian_B5_x_i_clear_bitsignaltemp;
    wire [0:0] gaussian_B5_x_i_enable;
    wire gaussian_B5_x_i_enable_bitsignaltemp;
    wire [0:0] gaussian_B5_x_i_shift;
    wire gaussian_B5_x_i_shift_bitsignaltemp;
    wire [0:0] gaussian_B5_x_i_stall_pred;
    wire gaussian_B5_x_i_stall_pred_bitsignaltemp;
    wire [0:0] gaussian_B5_x_i_stall_succ;
    wire gaussian_B5_x_i_stall_succ_bitsignaltemp;
    wire [0:0] gaussian_B5_x_i_valid_loop;
    wire gaussian_B5_x_i_valid_loop_bitsignaltemp;
    wire [0:0] gaussian_B5_x_i_valid_pred;
    wire gaussian_B5_x_i_valid_pred_bitsignaltemp;
    wire [0:0] gaussian_B5_x_i_valid_succ;
    wire gaussian_B5_x_i_valid_succ_bitsignaltemp;
    wire [0:0] gaussian_B7_x_i_capture;
    wire gaussian_B7_x_i_capture_bitsignaltemp;
    wire [0:0] gaussian_B7_x_i_clear;
    wire gaussian_B7_x_i_clear_bitsignaltemp;
    wire [0:0] gaussian_B7_x_i_enable;
    wire gaussian_B7_x_i_enable_bitsignaltemp;
    wire [0:0] gaussian_B7_x_i_shift;
    wire gaussian_B7_x_i_shift_bitsignaltemp;
    wire [0:0] gaussian_B7_x_i_stall_pred;
    wire gaussian_B7_x_i_stall_pred_bitsignaltemp;
    wire [0:0] gaussian_B7_x_i_stall_succ;
    wire gaussian_B7_x_i_stall_succ_bitsignaltemp;
    wire [0:0] gaussian_B7_x_i_valid_loop;
    wire gaussian_B7_x_i_valid_loop_bitsignaltemp;
    wire [0:0] gaussian_B7_x_i_valid_pred;
    wire gaussian_B7_x_i_valid_pred_bitsignaltemp;
    wire [0:0] gaussian_B7_x_i_valid_succ;
    wire gaussian_B7_x_i_valid_succ_bitsignaltemp;
    wire [0:0] loop_limiter_gaussian0_out_o_stall;
    wire [0:0] loop_limiter_gaussian0_out_o_valid;
    wire [0:0] bb_gaussian_B1_start_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_gaussian_B1_start_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_gaussian_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_gaussian_B2_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_gaussian_B2_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_gaussian_B2_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_gaussian_B2_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_gaussian_B2_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_gaussian_B2_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_gaussian_B2_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_gaussian_B3_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_gaussian_B3_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_gaussian_B3_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_gaussian_B4_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_gaussian_B4_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_gaussian_B4_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_gaussian_B4_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_gaussian_B4_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_gaussian_B4_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_gaussian_B4_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_gaussian_B4_sr_1_aunroll_x_out_o_valid;
    wire [31:0] bb_gaussian_B4_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_gaussian_B4_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_gaussian_B4_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_gaussian_B4_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_gaussian_B5_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_gaussian_B5_sr_1_aunroll_x_out_o_valid;
    wire [31:0] bb_gaussian_B5_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_gaussian_B5_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_gaussian_B5_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_gaussian_B5_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [32:0] bb_gaussian_B5_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_gaussian_B5_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_gaussian_B5_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_gaussian_B6_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_gaussian_B6_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_gaussian_B6_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_gaussian_B6_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_gaussian_B6_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_gaussian_B6_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_gaussian_B6_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_gaussian_B6_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_gaussian_B6_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_gaussian_B6_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_valid;
    wire [31:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [32:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [31:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [31:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_data_14_tpl;
    wire [31:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_data_15_tpl;
    wire [31:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_data_16_tpl;
    reg [0:0] rst_sync_rst_sclrn;


    // c_i33_undef30(CONSTANT,50)
    assign c_i33_undef30_q = $unsigned(33'b000000000000000000000000000000000);

    // bb_gaussian_B6_sr_0_aunroll_x(BLACKBOX,123)
    gaussian_bb_B6_sr_0 thebb_gaussian_B6_sr_0_aunroll_x (
        .in_i_stall(bb_gaussian_B6_out_stall_out_0),
        .in_i_valid(bb_gaussian_B7_out_valid_out_0),
        .in_i_data_0_tpl(bb_gaussian_B7_out_c0_exe1145),
        .in_i_data_1_tpl(bb_gaussian_B7_out_c0_exe2146),
        .in_i_data_2_tpl(bb_gaussian_B7_out_c0_exe4148),
        .in_i_data_3_tpl(bb_gaussian_B7_out_c0_exe6150),
        .in_i_data_4_tpl(bb_gaussian_B7_out_c0_exe7151),
        .in_i_data_5_tpl(bb_gaussian_B7_out_c0_exe8152),
        .in_i_data_6_tpl(bb_gaussian_B7_out_c0_exe9153),
        .in_i_data_7_tpl(bb_gaussian_B7_out_c0_exe10154),
        .out_o_stall(bb_gaussian_B6_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_gaussian_B6_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_gaussian_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_gaussian_B6_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_gaussian_B6_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_gaussian_B6_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_gaussian_B6_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_gaussian_B6_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_gaussian_B6_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_gaussian_B6_sr_0_aunroll_x_out_o_data_7_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bb_gaussian_B7(BLACKBOX,9)
    gaussian_bb_B7 thebb_gaussian_B7 (
        .in_add32_pop1566_0(c_i32_undef22_q),
        .in_add32_pop1566_1(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_16_tpl),
        .in_add54_0(c_i32_undef22_q),
        .in_add54_1(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_cmp41634_pop1658_0(GND_q),
        .in_cmp41634_pop1658_1(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_cmp41657_0(GND_q),
        .in_cmp41657_1(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_flush(in_start),
        .in_fpga_indvars_iv728_pop1364_0(c_i32_undef22_q),
        .in_fpga_indvars_iv728_pop1364_1(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_14_tpl),
        .in_fpga_indvars_iv745_0(c_i32_undef22_q),
        .in_fpga_indvars_iv745_1(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_fpga_indvars_iv926_pop1263_0(c_i32_undef22_q),
        .in_fpga_indvars_iv926_pop1263_1(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_fpga_indvars_iv942_0(c_i32_undef22_q),
        .in_fpga_indvars_iv942_1(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_i_017_pop960_0(c_i32_undef22_q),
        .in_i_017_pop960_1(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_j_01830_pop1465_0(c_i32_undef22_q),
        .in_j_01830_pop1465_1(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_15_tpl),
        .in_j_01848_0(c_i32_undef22_q),
        .in_j_01848_1(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_lm1_gaussian_avm_readdata(in_lm1_gaussian_avm_readdata),
        .in_lm1_gaussian_avm_readdatavalid(in_lm1_gaussian_avm_readdatavalid),
        .in_lm1_gaussian_avm_waitrequest(in_lm1_gaussian_avm_waitrequest),
        .in_lm1_gaussian_avm_writeack(in_lm1_gaussian_avm_writeack),
        .in_lm62_gaussian_avm_readdata(in_lm62_gaussian_avm_readdata),
        .in_lm62_gaussian_avm_readdatavalid(in_lm62_gaussian_avm_readdatavalid),
        .in_lm62_gaussian_avm_waitrequest(in_lm62_gaussian_avm_waitrequest),
        .in_lm62_gaussian_avm_writeack(in_lm62_gaussian_avm_writeack),
        .in_lm83_gaussian_avm_readdata(in_lm83_gaussian_avm_readdata),
        .in_lm83_gaussian_avm_readdatavalid(in_lm83_gaussian_avm_readdatavalid),
        .in_lm83_gaussian_avm_waitrequest(in_lm83_gaussian_avm_waitrequest),
        .in_lm83_gaussian_avm_writeack(in_lm83_gaussian_avm_writeack),
        .in_memdep_gaussian_avm_readdata(in_memdep_gaussian_avm_readdata),
        .in_memdep_gaussian_avm_readdatavalid(in_memdep_gaussian_avm_readdatavalid),
        .in_memdep_gaussian_avm_waitrequest(in_memdep_gaussian_avm_waitrequest),
        .in_memdep_gaussian_avm_writeack(in_memdep_gaussian_avm_writeack),
        .in_memdep_phi4_pop723_pop1162_0(GND_q),
        .in_memdep_phi4_pop723_pop1162_1(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_memdep_phi4_pop72551_0(GND_q),
        .in_memdep_phi4_pop72551_1(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_memdep_phi_pop1061_0(GND_q),
        .in_memdep_phi_pop1061_1(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_notcmp1459_0(GND_q),
        .in_notcmp1459_1(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_stall_in_0(bb_gaussian_B6_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_gaussian4_0(c_i33_undef30_q),
        .in_unnamed_gaussian4_1(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_unnamed_gaussian5_0(GND_q),
        .in_unnamed_gaussian5_1(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_valid_in_0(GND_q),
        .in_valid_in_1(bb_gaussian_B7_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10154(bb_gaussian_B7_out_c0_exe10154),
        .out_c0_exe1145(bb_gaussian_B7_out_c0_exe1145),
        .out_c0_exe2146(bb_gaussian_B7_out_c0_exe2146),
        .out_c0_exe4148(bb_gaussian_B7_out_c0_exe4148),
        .out_c0_exe6150(bb_gaussian_B7_out_c0_exe6150),
        .out_c0_exe7151(bb_gaussian_B7_out_c0_exe7151),
        .out_c0_exe8152(bb_gaussian_B7_out_c0_exe8152),
        .out_c0_exe9153(bb_gaussian_B7_out_c0_exe9153),
        .out_lm1_gaussian_avm_address(bb_gaussian_B7_out_lm1_gaussian_avm_address),
        .out_lm1_gaussian_avm_burstcount(bb_gaussian_B7_out_lm1_gaussian_avm_burstcount),
        .out_lm1_gaussian_avm_byteenable(bb_gaussian_B7_out_lm1_gaussian_avm_byteenable),
        .out_lm1_gaussian_avm_enable(bb_gaussian_B7_out_lm1_gaussian_avm_enable),
        .out_lm1_gaussian_avm_read(bb_gaussian_B7_out_lm1_gaussian_avm_read),
        .out_lm1_gaussian_avm_write(bb_gaussian_B7_out_lm1_gaussian_avm_write),
        .out_lm1_gaussian_avm_writedata(bb_gaussian_B7_out_lm1_gaussian_avm_writedata),
        .out_lm62_gaussian_avm_address(bb_gaussian_B7_out_lm62_gaussian_avm_address),
        .out_lm62_gaussian_avm_burstcount(bb_gaussian_B7_out_lm62_gaussian_avm_burstcount),
        .out_lm62_gaussian_avm_byteenable(bb_gaussian_B7_out_lm62_gaussian_avm_byteenable),
        .out_lm62_gaussian_avm_enable(bb_gaussian_B7_out_lm62_gaussian_avm_enable),
        .out_lm62_gaussian_avm_read(bb_gaussian_B7_out_lm62_gaussian_avm_read),
        .out_lm62_gaussian_avm_write(bb_gaussian_B7_out_lm62_gaussian_avm_write),
        .out_lm62_gaussian_avm_writedata(bb_gaussian_B7_out_lm62_gaussian_avm_writedata),
        .out_lm83_gaussian_avm_address(bb_gaussian_B7_out_lm83_gaussian_avm_address),
        .out_lm83_gaussian_avm_burstcount(bb_gaussian_B7_out_lm83_gaussian_avm_burstcount),
        .out_lm83_gaussian_avm_byteenable(bb_gaussian_B7_out_lm83_gaussian_avm_byteenable),
        .out_lm83_gaussian_avm_enable(bb_gaussian_B7_out_lm83_gaussian_avm_enable),
        .out_lm83_gaussian_avm_read(bb_gaussian_B7_out_lm83_gaussian_avm_read),
        .out_lm83_gaussian_avm_write(bb_gaussian_B7_out_lm83_gaussian_avm_write),
        .out_lm83_gaussian_avm_writedata(bb_gaussian_B7_out_lm83_gaussian_avm_writedata),
        .out_memdep_gaussian_avm_address(bb_gaussian_B7_out_memdep_gaussian_avm_address),
        .out_memdep_gaussian_avm_burstcount(bb_gaussian_B7_out_memdep_gaussian_avm_burstcount),
        .out_memdep_gaussian_avm_byteenable(bb_gaussian_B7_out_memdep_gaussian_avm_byteenable),
        .out_memdep_gaussian_avm_enable(bb_gaussian_B7_out_memdep_gaussian_avm_enable),
        .out_memdep_gaussian_avm_read(bb_gaussian_B7_out_memdep_gaussian_avm_read),
        .out_memdep_gaussian_avm_write(bb_gaussian_B7_out_memdep_gaussian_avm_write),
        .out_memdep_gaussian_avm_writedata(bb_gaussian_B7_out_memdep_gaussian_avm_writedata),
        .out_profile_loop_o_valid(bb_gaussian_B7_out_profile_loop_o_valid),
        .out_stall_in_0(bb_gaussian_B7_out_stall_in_0),
        .out_stall_out_0(),
        .out_stall_out_1(bb_gaussian_B7_out_stall_out_1),
        .out_valid_in_1(bb_gaussian_B7_out_valid_in_1),
        .out_valid_out_0(bb_gaussian_B7_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B7_sr_1_aunroll_x(BLACKBOX,124)
    gaussian_bb_B7_sr_1 thebb_gaussian_B7_sr_1_aunroll_x (
        .in_i_stall(bb_gaussian_B7_out_stall_out_1),
        .in_i_valid(bb_gaussian_B5_out_valid_out_0),
        .in_i_data_0_tpl(bb_gaussian_B5_out_c0_exe11),
        .in_i_data_1_tpl(bb_gaussian_B5_out_c0_exe12),
        .in_i_data_2_tpl(bb_gaussian_B5_out_c0_exe13),
        .in_i_data_3_tpl(bb_gaussian_B5_out_c0_exe14),
        .in_i_data_4_tpl(bb_gaussian_B5_out_c0_exe15),
        .in_i_data_5_tpl(bb_gaussian_B5_out_c0_exe16),
        .in_i_data_6_tpl(bb_gaussian_B5_out_c0_exe17),
        .in_i_data_7_tpl(bb_gaussian_B5_out_c0_exe1108),
        .in_i_data_8_tpl(bb_gaussian_B5_out_c0_exe2109),
        .in_i_data_9_tpl(bb_gaussian_B5_out_c0_exe3),
        .in_i_data_10_tpl(bb_gaussian_B5_out_c0_exe4),
        .in_i_data_11_tpl(bb_gaussian_B5_out_memdep_phi_pop10),
        .in_i_data_12_tpl(bb_gaussian_B5_out_c0_exe5),
        .in_i_data_13_tpl(bb_gaussian_B5_out_c0_exe6),
        .in_i_data_14_tpl(bb_gaussian_B5_out_c0_exe7),
        .in_i_data_15_tpl(bb_gaussian_B5_out_c0_exe8),
        .in_i_data_16_tpl(bb_gaussian_B5_out_c0_exe9),
        .out_o_stall(bb_gaussian_B7_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_gaussian_B7_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_16_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bb_gaussian_B6(BLACKBOX,8)
    gaussian_bb_B6 thebb_gaussian_B6 (
        .in_c0_exe1015415_0(bb_gaussian_B6_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_c0_exe11452_0(bb_gaussian_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe21463_0(bb_gaussian_B6_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe41487_0(bb_gaussian_B6_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe61509_0(bb_gaussian_B6_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe715111_0(bb_gaussian_B6_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe815213_0(bb_gaussian_B6_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe915314_0(bb_gaussian_B6_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_feedback_stall_in_10(bb_gaussian_B5_out_feedback_stall_out_10),
        .in_stall_in_0(bb_gaussian_B2_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_gaussian_B6_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe11452(bb_gaussian_B6_out_c0_exe11452),
        .out_c0_exe21463(bb_gaussian_B6_out_c0_exe21463),
        .out_c0_exe41487(bb_gaussian_B6_out_c0_exe41487),
        .out_c0_exe61509(bb_gaussian_B6_out_c0_exe61509),
        .out_c0_exe715111(bb_gaussian_B6_out_c0_exe715111),
        .out_c0_exe815213(bb_gaussian_B6_out_c0_exe815213),
        .out_feedback_out_10(bb_gaussian_B6_out_feedback_out_10),
        .out_feedback_valid_out_10(bb_gaussian_B6_out_feedback_valid_out_10),
        .out_stall_in_0(bb_gaussian_B6_out_stall_in_0),
        .out_stall_out_0(bb_gaussian_B6_out_stall_out_0),
        .out_valid_out_0(bb_gaussian_B6_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef22(CONSTANT,37)
    assign c_i32_undef22_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_gaussian_B5(BLACKBOX,7)
    gaussian_bb_B5 thebb_gaussian_B5 (
        .in_add52_0(c_i32_undef22_q),
        .in_add52_1(bb_gaussian_B5_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_cmp41655_0(GND_q),
        .in_cmp41655_1(bb_gaussian_B5_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_feedback_in_10(bb_gaussian_B6_out_feedback_out_10),
        .in_feedback_valid_in_10(bb_gaussian_B6_out_feedback_valid_out_10),
        .in_fpga_indvars_iv743_0(c_i32_undef22_q),
        .in_fpga_indvars_iv743_1(bb_gaussian_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_fpga_indvars_iv940_0(c_i32_undef22_q),
        .in_fpga_indvars_iv940_1(bb_gaussian_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_j_01846_0(c_i32_undef22_q),
        .in_j_01846_1(bb_gaussian_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_memdep_phi4_pop72549_0(GND_q),
        .in_memdep_phi4_pop72549_1(bb_gaussian_B5_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_stall_in_0(bb_gaussian_B7_sr_1_aunroll_x_out_o_stall),
        .in_unnamed_gaussian3_0(c_i33_undef30_q),
        .in_unnamed_gaussian3_1(bb_gaussian_B5_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_valid_in_0(GND_q),
        .in_valid_in_1(bb_gaussian_B5_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe11(bb_gaussian_B5_out_c0_exe11),
        .out_c0_exe1108(bb_gaussian_B5_out_c0_exe1108),
        .out_c0_exe12(bb_gaussian_B5_out_c0_exe12),
        .out_c0_exe13(bb_gaussian_B5_out_c0_exe13),
        .out_c0_exe14(bb_gaussian_B5_out_c0_exe14),
        .out_c0_exe15(bb_gaussian_B5_out_c0_exe15),
        .out_c0_exe16(bb_gaussian_B5_out_c0_exe16),
        .out_c0_exe17(bb_gaussian_B5_out_c0_exe17),
        .out_c0_exe2109(bb_gaussian_B5_out_c0_exe2109),
        .out_c0_exe3(bb_gaussian_B5_out_c0_exe3),
        .out_c0_exe4(bb_gaussian_B5_out_c0_exe4),
        .out_c0_exe5(bb_gaussian_B5_out_c0_exe5),
        .out_c0_exe6(bb_gaussian_B5_out_c0_exe6),
        .out_c0_exe7(bb_gaussian_B5_out_c0_exe7),
        .out_c0_exe8(bb_gaussian_B5_out_c0_exe8),
        .out_c0_exe9(bb_gaussian_B5_out_c0_exe9),
        .out_feedback_stall_out_10(bb_gaussian_B5_out_feedback_stall_out_10),
        .out_memdep_phi_pop10(bb_gaussian_B5_out_memdep_phi_pop10),
        .out_profile_loop_o_valid(bb_gaussian_B5_out_profile_loop_o_valid),
        .out_stall_out_0(),
        .out_stall_out_1(bb_gaussian_B5_out_stall_out_1),
        .out_valid_in_1(bb_gaussian_B5_out_valid_in_1),
        .out_valid_out_0(bb_gaussian_B5_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B5_sr_1_aunroll_x(BLACKBOX,122)
    gaussian_bb_B5_sr_1 thebb_gaussian_B5_sr_1_aunroll_x (
        .in_i_stall(bb_gaussian_B5_out_stall_out_1),
        .in_i_valid(bb_gaussian_B4_out_valid_out_0),
        .in_i_data_0_tpl(bb_gaussian_B4_out_fpga_indvars_iv9),
        .in_i_data_1_tpl(bb_gaussian_B4_out_fpga_indvars_iv7),
        .in_i_data_2_tpl(bb_gaussian_B4_out_j_018),
        .in_i_data_3_tpl(bb_gaussian_B4_out_memdep_phi4_pop725),
        .in_i_data_4_tpl(bb_gaussian_B4_out_c0_exe193),
        .in_i_data_5_tpl(bb_gaussian_B4_out_c1_exe199),
        .in_i_data_6_tpl(bb_gaussian_B4_out_c1_exe2),
        .out_o_stall(bb_gaussian_B5_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_gaussian_B5_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_gaussian_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_gaussian_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_gaussian_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_gaussian_B5_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_gaussian_B5_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_gaussian_B5_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_gaussian_B5_sr_1_aunroll_x_out_o_data_6_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bb_gaussian_B4(BLACKBOX,6)
    gaussian_bb_B4 thebb_gaussian_B4 (
        .in_fpga_indvars_iv7_0(bb_gaussian_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_fpga_indvars_iv7_1(bb_gaussian_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_fpga_indvars_iv9_0(bb_gaussian_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_fpga_indvars_iv9_1(bb_gaussian_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_j_018_0(bb_gaussian_B4_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_j_018_1(bb_gaussian_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_memdep_phi4_pop725_0(bb_gaussian_B4_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_memdep_phi4_pop725_1(bb_gaussian_B4_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_stall_in_0(bb_gaussian_B5_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(bb_gaussian_B4_sr_0_aunroll_x_out_o_valid),
        .in_valid_in_1(bb_gaussian_B4_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe193(bb_gaussian_B4_out_c0_exe193),
        .out_c1_exe199(bb_gaussian_B4_out_c1_exe199),
        .out_c1_exe2(bb_gaussian_B4_out_c1_exe2),
        .out_fpga_indvars_iv7(bb_gaussian_B4_out_fpga_indvars_iv7),
        .out_fpga_indvars_iv9(bb_gaussian_B4_out_fpga_indvars_iv9),
        .out_j_018(bb_gaussian_B4_out_j_018),
        .out_memdep_phi4_pop725(bb_gaussian_B4_out_memdep_phi4_pop725),
        .out_stall_out_0(bb_gaussian_B4_out_stall_out_0),
        .out_stall_out_1(bb_gaussian_B4_out_stall_out_1),
        .out_valid_in_0(bb_gaussian_B4_out_valid_in_0),
        .out_valid_in_1(bb_gaussian_B4_out_valid_in_1),
        .out_valid_out_0(bb_gaussian_B4_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B4_sr_0_aunroll_x(BLACKBOX,120)
    gaussian_bb_B4_sr_0 thebb_gaussian_B4_sr_0_aunroll_x (
        .in_i_stall(bb_gaussian_B4_out_stall_out_0),
        .in_i_valid(bb_gaussian_B2_out_valid_out_0),
        .in_i_data_0_tpl(bb_gaussian_B2_out_c0_exe187),
        .in_i_data_1_tpl(bb_gaussian_B2_out_c1_exe1),
        .in_i_data_2_tpl(bb_gaussian_B2_out_c0_exe815212),
        .in_i_data_3_tpl(bb_gaussian_B2_out_c0_exe41486),
        .out_o_stall(bb_gaussian_B4_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_gaussian_B4_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_gaussian_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_gaussian_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_gaussian_B4_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_gaussian_B4_sr_0_aunroll_x_out_o_data_3_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bb_gaussian_B2_sr_0_aunroll_x(BLACKBOX,118)
    gaussian_bb_B2_sr_0 thebb_gaussian_B2_sr_0_aunroll_x (
        .in_i_stall(bb_gaussian_B2_out_stall_out_0),
        .in_i_valid(bb_gaussian_B6_out_valid_out_0),
        .in_i_data_0_tpl(bb_gaussian_B6_out_c0_exe11452),
        .in_i_data_1_tpl(bb_gaussian_B6_out_c0_exe21463),
        .in_i_data_2_tpl(bb_gaussian_B6_out_c0_exe41487),
        .in_i_data_3_tpl(bb_gaussian_B6_out_c0_exe61509),
        .in_i_data_4_tpl(bb_gaussian_B6_out_c0_exe715111),
        .in_i_data_5_tpl(bb_gaussian_B6_out_c0_exe815213),
        .out_o_stall(bb_gaussian_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_gaussian_B2_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_gaussian_B2_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_gaussian_B2_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_gaussian_B2_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_gaussian_B2_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_gaussian_B2_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_gaussian_B2_sr_0_aunroll_x_out_o_data_5_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bb_gaussian_B2(BLACKBOX,4)
    gaussian_bb_B2 thebb_gaussian_B2 (
        .in_c0_exe11451_0(bb_gaussian_B2_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe21465_0(bb_gaussian_B2_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe41486_0(bb_gaussian_B2_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe61508_0(bb_gaussian_B2_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe715110_0(bb_gaussian_B2_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe815212_0(bb_gaussian_B2_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_stall_in_0(bb_gaussian_B4_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(bb_gaussian_B3_sr_0_aunroll_x_out_o_stall),
        .in_valid_in_0(bb_gaussian_B2_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe187(bb_gaussian_B2_out_c0_exe187),
        .out_c0_exe21465(bb_gaussian_B2_out_c0_exe21465),
        .out_c0_exe41486(bb_gaussian_B2_out_c0_exe41486),
        .out_c0_exe815212(bb_gaussian_B2_out_c0_exe815212),
        .out_c1_exe1(bb_gaussian_B2_out_c1_exe1),
        .out_stall_in_0(bb_gaussian_B2_out_stall_in_0),
        .out_stall_out_0(bb_gaussian_B2_out_stall_out_0),
        .out_valid_out_0(bb_gaussian_B2_out_valid_out_0),
        .out_valid_out_1(bb_gaussian_B2_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B3_sr_0_aunroll_x(BLACKBOX,119)
    gaussian_bb_B3_sr_0 thebb_gaussian_B3_sr_0_aunroll_x (
        .in_i_stall(bb_gaussian_B3_out_stall_out_0),
        .in_i_valid(bb_gaussian_B2_out_valid_out_1),
        .in_i_data_0_tpl(bb_gaussian_B2_out_c0_exe21465),
        .out_o_stall(bb_gaussian_B3_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_gaussian_B3_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_gaussian_B3_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // c_i32_118(CONSTANT,34)
    assign c_i32_118_q = $unsigned(32'b00000000000000000000000000000001);

    // c_i32_315(CONSTANT,36)
    assign c_i32_315_q = $unsigned(32'b00000000000000000000000000000011);

    // c_i32_312(CONSTANT,35)
    assign c_i32_312_q = $unsigned(32'b11111111111111111111111111111101);

    // bb_gaussian_B4_sr_1_aunroll_x(BLACKBOX,121)
    gaussian_bb_B4_sr_1 thebb_gaussian_B4_sr_1_aunroll_x (
        .in_i_stall(bb_gaussian_B4_out_stall_out_1),
        .in_i_valid(loop_limiter_gaussian0_out_o_valid),
        .in_i_data_0_tpl(c_i32_312_q),
        .in_i_data_1_tpl(c_i32_315_q),
        .in_i_data_2_tpl(c_i32_118_q),
        .in_i_data_3_tpl(bb_gaussian_B1_start_out_memdep_phi4_pop7),
        .out_o_stall(bb_gaussian_B4_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_gaussian_B4_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_gaussian_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_gaussian_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_gaussian_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_gaussian_B4_sr_1_aunroll_x_out_o_data_3_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // loop_limiter_gaussian0(BLACKBOX,82)
    gaussian_loop_limiter_0 theloop_limiter_gaussian0 (
        .in_i_stall(bb_gaussian_B4_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_gaussian_B3_sr_0_aunroll_x_out_o_stall),
        .in_i_valid(bb_gaussian_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_gaussian_B2_out_valid_out_1),
        .out_o_stall(loop_limiter_gaussian0_out_o_stall),
        .out_o_valid(loop_limiter_gaussian0_out_o_valid),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bb_gaussian_B1_start(BLACKBOX,3)
    gaussian_bb_B1_start thebb_gaussian_B1_start (
        .in_feedback_in_7(bb_gaussian_B3_out_feedback_out_7),
        .in_feedback_valid_in_7(bb_gaussian_B3_out_feedback_valid_out_7),
        .in_iord_bl_call_gaussian_i_fifodata(in_iord_bl_call_gaussian_i_fifodata),
        .in_iord_bl_call_gaussian_i_fifovalid(in_iord_bl_call_gaussian_i_fifovalid),
        .in_stall_in_0(loop_limiter_gaussian0_out_o_stall),
        .in_valid_in_0(GND_q),
        .in_valid_in_1(bb_gaussian_B1_start_sr_1_aunroll_x_out_o_valid),
        .out_feedback_stall_out_7(bb_gaussian_B1_start_out_feedback_stall_out_7),
        .out_iord_bl_call_gaussian_o_fifoalmost_full(bb_gaussian_B1_start_out_iord_bl_call_gaussian_o_fifoalmost_full),
        .out_iord_bl_call_gaussian_o_fifoready(bb_gaussian_B1_start_out_iord_bl_call_gaussian_o_fifoready),
        .out_memdep_phi4_pop7(bb_gaussian_B1_start_out_memdep_phi4_pop7),
        .out_profile_loop_o_valid(bb_gaussian_B1_start_out_profile_loop_o_valid),
        .out_stall_out_0(),
        .out_stall_out_1(bb_gaussian_B1_start_out_stall_out_1),
        .out_valid_in_1(bb_gaussian_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_gaussian_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B3(BLACKBOX,5)
    gaussian_bb_B3 thebb_gaussian_B3 (
        .in_c0_exe21464_0(bb_gaussian_B3_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_feedback_stall_in_7(bb_gaussian_B1_start_out_feedback_stall_out_7),
        .in_iowr_bl_return_gaussian_i_fifoready(in_iowr_bl_return_gaussian_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_gaussian_B3_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_7(bb_gaussian_B3_out_feedback_out_7),
        .out_feedback_valid_out_7(bb_gaussian_B3_out_feedback_valid_out_7),
        .out_iowr_bl_return_gaussian_o_fifodata(bb_gaussian_B3_out_iowr_bl_return_gaussian_o_fifodata),
        .out_iowr_bl_return_gaussian_o_fifovalid(bb_gaussian_B3_out_iowr_bl_return_gaussian_o_fifovalid),
        .out_stall_in_0(bb_gaussian_B3_out_stall_in_0),
        .out_stall_out_0(bb_gaussian_B3_out_stall_out_0),
        .out_valid_out_0(bb_gaussian_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B0_runOnce(BLACKBOX,2)
    gaussian_bb_B0_runOnce thebb_gaussian_B0_runOnce (
        .in_stall_in_0(bb_gaussian_B1_start_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_gaussian_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(bb_gaussian_B0_runOnce_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B1_start_sr_1_aunroll_x(BLACKBOX,117)
    gaussian_bb_B1_start_sr_1 thebb_gaussian_B1_start_sr_1_aunroll_x (
        .in_i_stall(bb_gaussian_B1_start_out_stall_out_1),
        .in_i_valid(bb_gaussian_B0_runOnce_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_gaussian_B1_start_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_gaussian_B1_start_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // gaussian_B1_start_x(EXTIFACE,53)
    assign gaussian_B1_start_x_i_capture = GND_q;
    assign gaussian_B1_start_x_i_clear = GND_q;
    assign gaussian_B1_start_x_i_enable = VCC_q;
    assign gaussian_B1_start_x_i_shift = GND_q;
    assign gaussian_B1_start_x_i_stall_pred = bb_gaussian_B1_start_sr_1_aunroll_x_out_o_stall;
    assign gaussian_B1_start_x_i_stall_succ = bb_gaussian_B3_out_stall_in_0;
    assign gaussian_B1_start_x_i_valid_loop = bb_gaussian_B1_start_out_profile_loop_o_valid;
    assign gaussian_B1_start_x_i_valid_pred = bb_gaussian_B1_start_out_valid_in_1;
    assign gaussian_B1_start_x_i_valid_succ = bb_gaussian_B3_out_valid_out_0;
    assign gaussian_B1_start_x_i_capture_bitsignaltemp = gaussian_B1_start_x_i_capture[0];
    assign gaussian_B1_start_x_i_clear_bitsignaltemp = gaussian_B1_start_x_i_clear[0];
    assign gaussian_B1_start_x_i_enable_bitsignaltemp = gaussian_B1_start_x_i_enable[0];
    assign gaussian_B1_start_x_i_shift_bitsignaltemp = gaussian_B1_start_x_i_shift[0];
    assign gaussian_B1_start_x_i_stall_pred_bitsignaltemp = gaussian_B1_start_x_i_stall_pred[0];
    assign gaussian_B1_start_x_i_stall_succ_bitsignaltemp = gaussian_B1_start_x_i_stall_succ[0];
    assign gaussian_B1_start_x_i_valid_loop_bitsignaltemp = gaussian_B1_start_x_i_valid_loop[0];
    assign gaussian_B1_start_x_i_valid_pred_bitsignaltemp = gaussian_B1_start_x_i_valid_pred[0];
    assign gaussian_B1_start_x_i_valid_succ_bitsignaltemp = gaussian_B1_start_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("gaussian.B1.start")
    ) thegaussian_B1_start_x (
        .i_capture(gaussian_B1_start_x_i_capture_bitsignaltemp),
        .i_clear(gaussian_B1_start_x_i_clear_bitsignaltemp),
        .i_enable(gaussian_B1_start_x_i_enable_bitsignaltemp),
        .i_shift(gaussian_B1_start_x_i_shift_bitsignaltemp),
        .i_stall_pred(gaussian_B1_start_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(gaussian_B1_start_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(gaussian_B1_start_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(gaussian_B1_start_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(gaussian_B1_start_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // gaussian_B4_x(EXTIFACE,54)
    assign gaussian_B4_x_i_capture = GND_q;
    assign gaussian_B4_x_i_clear = GND_q;
    assign gaussian_B4_x_i_enable = VCC_q;
    assign gaussian_B4_x_i_shift = GND_q;
    assign gaussian_B4_x_i_stall_pred = loop_limiter_gaussian0_out_o_stall;
    assign gaussian_B4_x_i_stall_succ = bb_gaussian_B2_out_stall_in_0;
    assign gaussian_B4_x_i_valid_loop = bb_gaussian_B4_out_valid_in_0;
    assign gaussian_B4_x_i_valid_pred = bb_gaussian_B4_out_valid_in_1;
    assign gaussian_B4_x_i_valid_succ = bb_gaussian_B2_out_valid_out_0;
    assign gaussian_B4_x_i_capture_bitsignaltemp = gaussian_B4_x_i_capture[0];
    assign gaussian_B4_x_i_clear_bitsignaltemp = gaussian_B4_x_i_clear[0];
    assign gaussian_B4_x_i_enable_bitsignaltemp = gaussian_B4_x_i_enable[0];
    assign gaussian_B4_x_i_shift_bitsignaltemp = gaussian_B4_x_i_shift[0];
    assign gaussian_B4_x_i_stall_pred_bitsignaltemp = gaussian_B4_x_i_stall_pred[0];
    assign gaussian_B4_x_i_stall_succ_bitsignaltemp = gaussian_B4_x_i_stall_succ[0];
    assign gaussian_B4_x_i_valid_loop_bitsignaltemp = gaussian_B4_x_i_valid_loop[0];
    assign gaussian_B4_x_i_valid_pred_bitsignaltemp = gaussian_B4_x_i_valid_pred[0];
    assign gaussian_B4_x_i_valid_succ_bitsignaltemp = gaussian_B4_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("gaussian.B4")
    ) thegaussian_B4_x (
        .i_capture(gaussian_B4_x_i_capture_bitsignaltemp),
        .i_clear(gaussian_B4_x_i_clear_bitsignaltemp),
        .i_enable(gaussian_B4_x_i_enable_bitsignaltemp),
        .i_shift(gaussian_B4_x_i_shift_bitsignaltemp),
        .i_stall_pred(gaussian_B4_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(gaussian_B4_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(gaussian_B4_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(gaussian_B4_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(gaussian_B4_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // gaussian_B5_x(EXTIFACE,55)
    assign gaussian_B5_x_i_capture = GND_q;
    assign gaussian_B5_x_i_clear = GND_q;
    assign gaussian_B5_x_i_enable = VCC_q;
    assign gaussian_B5_x_i_shift = GND_q;
    assign gaussian_B5_x_i_stall_pred = bb_gaussian_B5_sr_1_aunroll_x_out_o_stall;
    assign gaussian_B5_x_i_stall_succ = bb_gaussian_B6_out_stall_in_0;
    assign gaussian_B5_x_i_valid_loop = bb_gaussian_B5_out_profile_loop_o_valid;
    assign gaussian_B5_x_i_valid_pred = bb_gaussian_B5_out_valid_in_1;
    assign gaussian_B5_x_i_valid_succ = bb_gaussian_B6_out_valid_out_0;
    assign gaussian_B5_x_i_capture_bitsignaltemp = gaussian_B5_x_i_capture[0];
    assign gaussian_B5_x_i_clear_bitsignaltemp = gaussian_B5_x_i_clear[0];
    assign gaussian_B5_x_i_enable_bitsignaltemp = gaussian_B5_x_i_enable[0];
    assign gaussian_B5_x_i_shift_bitsignaltemp = gaussian_B5_x_i_shift[0];
    assign gaussian_B5_x_i_stall_pred_bitsignaltemp = gaussian_B5_x_i_stall_pred[0];
    assign gaussian_B5_x_i_stall_succ_bitsignaltemp = gaussian_B5_x_i_stall_succ[0];
    assign gaussian_B5_x_i_valid_loop_bitsignaltemp = gaussian_B5_x_i_valid_loop[0];
    assign gaussian_B5_x_i_valid_pred_bitsignaltemp = gaussian_B5_x_i_valid_pred[0];
    assign gaussian_B5_x_i_valid_succ_bitsignaltemp = gaussian_B5_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("gaussian.B5")
    ) thegaussian_B5_x (
        .i_capture(gaussian_B5_x_i_capture_bitsignaltemp),
        .i_clear(gaussian_B5_x_i_clear_bitsignaltemp),
        .i_enable(gaussian_B5_x_i_enable_bitsignaltemp),
        .i_shift(gaussian_B5_x_i_shift_bitsignaltemp),
        .i_stall_pred(gaussian_B5_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(gaussian_B5_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(gaussian_B5_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(gaussian_B5_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(gaussian_B5_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // gaussian_B7_x(EXTIFACE,56)
    assign gaussian_B7_x_i_capture = GND_q;
    assign gaussian_B7_x_i_clear = GND_q;
    assign gaussian_B7_x_i_enable = VCC_q;
    assign gaussian_B7_x_i_shift = GND_q;
    assign gaussian_B7_x_i_stall_pred = bb_gaussian_B7_sr_1_aunroll_x_out_o_stall;
    assign gaussian_B7_x_i_stall_succ = bb_gaussian_B7_out_stall_in_0;
    assign gaussian_B7_x_i_valid_loop = bb_gaussian_B7_out_profile_loop_o_valid;
    assign gaussian_B7_x_i_valid_pred = bb_gaussian_B7_out_valid_in_1;
    assign gaussian_B7_x_i_valid_succ = bb_gaussian_B7_out_valid_out_0;
    assign gaussian_B7_x_i_capture_bitsignaltemp = gaussian_B7_x_i_capture[0];
    assign gaussian_B7_x_i_clear_bitsignaltemp = gaussian_B7_x_i_clear[0];
    assign gaussian_B7_x_i_enable_bitsignaltemp = gaussian_B7_x_i_enable[0];
    assign gaussian_B7_x_i_shift_bitsignaltemp = gaussian_B7_x_i_shift[0];
    assign gaussian_B7_x_i_stall_pred_bitsignaltemp = gaussian_B7_x_i_stall_pred[0];
    assign gaussian_B7_x_i_stall_succ_bitsignaltemp = gaussian_B7_x_i_stall_succ[0];
    assign gaussian_B7_x_i_valid_loop_bitsignaltemp = gaussian_B7_x_i_valid_loop[0];
    assign gaussian_B7_x_i_valid_pred_bitsignaltemp = gaussian_B7_x_i_valid_pred[0];
    assign gaussian_B7_x_i_valid_succ_bitsignaltemp = gaussian_B7_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("gaussian.B7")
    ) thegaussian_B7_x (
        .i_capture(gaussian_B7_x_i_capture_bitsignaltemp),
        .i_clear(gaussian_B7_x_i_clear_bitsignaltemp),
        .i_enable(gaussian_B7_x_i_enable_bitsignaltemp),
        .i_shift(gaussian_B7_x_i_shift_bitsignaltemp),
        .i_stall_pred(gaussian_B7_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(gaussian_B7_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(gaussian_B7_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(gaussian_B7_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(gaussian_B7_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // out_iord_bl_call_gaussian_o_fifoalmost_full(GPOUT,83)
    assign out_iord_bl_call_gaussian_o_fifoalmost_full = bb_gaussian_B1_start_out_iord_bl_call_gaussian_o_fifoalmost_full;

    // out_iord_bl_call_gaussian_o_fifoready(GPOUT,84)
    assign out_iord_bl_call_gaussian_o_fifoready = bb_gaussian_B1_start_out_iord_bl_call_gaussian_o_fifoready;

    // out_iowr_bl_return_gaussian_o_fifodata(GPOUT,85)
    assign out_iowr_bl_return_gaussian_o_fifodata = bb_gaussian_B3_out_iowr_bl_return_gaussian_o_fifodata;

    // out_iowr_bl_return_gaussian_o_fifovalid(GPOUT,86)
    assign out_iowr_bl_return_gaussian_o_fifovalid = bb_gaussian_B3_out_iowr_bl_return_gaussian_o_fifovalid;

    // out_lm1_gaussian_avm_address(GPOUT,87)
    assign out_lm1_gaussian_avm_address = bb_gaussian_B7_out_lm1_gaussian_avm_address;

    // out_lm1_gaussian_avm_burstcount(GPOUT,88)
    assign out_lm1_gaussian_avm_burstcount = bb_gaussian_B7_out_lm1_gaussian_avm_burstcount;

    // out_lm1_gaussian_avm_byteenable(GPOUT,89)
    assign out_lm1_gaussian_avm_byteenable = bb_gaussian_B7_out_lm1_gaussian_avm_byteenable;

    // out_lm1_gaussian_avm_enable(GPOUT,90)
    assign out_lm1_gaussian_avm_enable = bb_gaussian_B7_out_lm1_gaussian_avm_enable;

    // out_lm1_gaussian_avm_read(GPOUT,91)
    assign out_lm1_gaussian_avm_read = bb_gaussian_B7_out_lm1_gaussian_avm_read;

    // out_lm1_gaussian_avm_write(GPOUT,92)
    assign out_lm1_gaussian_avm_write = bb_gaussian_B7_out_lm1_gaussian_avm_write;

    // out_lm1_gaussian_avm_writedata(GPOUT,93)
    assign out_lm1_gaussian_avm_writedata = bb_gaussian_B7_out_lm1_gaussian_avm_writedata;

    // out_lm62_gaussian_avm_address(GPOUT,94)
    assign out_lm62_gaussian_avm_address = bb_gaussian_B7_out_lm62_gaussian_avm_address;

    // out_lm62_gaussian_avm_burstcount(GPOUT,95)
    assign out_lm62_gaussian_avm_burstcount = bb_gaussian_B7_out_lm62_gaussian_avm_burstcount;

    // out_lm62_gaussian_avm_byteenable(GPOUT,96)
    assign out_lm62_gaussian_avm_byteenable = bb_gaussian_B7_out_lm62_gaussian_avm_byteenable;

    // out_lm62_gaussian_avm_enable(GPOUT,97)
    assign out_lm62_gaussian_avm_enable = bb_gaussian_B7_out_lm62_gaussian_avm_enable;

    // out_lm62_gaussian_avm_read(GPOUT,98)
    assign out_lm62_gaussian_avm_read = bb_gaussian_B7_out_lm62_gaussian_avm_read;

    // out_lm62_gaussian_avm_write(GPOUT,99)
    assign out_lm62_gaussian_avm_write = bb_gaussian_B7_out_lm62_gaussian_avm_write;

    // out_lm62_gaussian_avm_writedata(GPOUT,100)
    assign out_lm62_gaussian_avm_writedata = bb_gaussian_B7_out_lm62_gaussian_avm_writedata;

    // out_lm83_gaussian_avm_address(GPOUT,101)
    assign out_lm83_gaussian_avm_address = bb_gaussian_B7_out_lm83_gaussian_avm_address;

    // out_lm83_gaussian_avm_burstcount(GPOUT,102)
    assign out_lm83_gaussian_avm_burstcount = bb_gaussian_B7_out_lm83_gaussian_avm_burstcount;

    // out_lm83_gaussian_avm_byteenable(GPOUT,103)
    assign out_lm83_gaussian_avm_byteenable = bb_gaussian_B7_out_lm83_gaussian_avm_byteenable;

    // out_lm83_gaussian_avm_enable(GPOUT,104)
    assign out_lm83_gaussian_avm_enable = bb_gaussian_B7_out_lm83_gaussian_avm_enable;

    // out_lm83_gaussian_avm_read(GPOUT,105)
    assign out_lm83_gaussian_avm_read = bb_gaussian_B7_out_lm83_gaussian_avm_read;

    // out_lm83_gaussian_avm_write(GPOUT,106)
    assign out_lm83_gaussian_avm_write = bb_gaussian_B7_out_lm83_gaussian_avm_write;

    // out_lm83_gaussian_avm_writedata(GPOUT,107)
    assign out_lm83_gaussian_avm_writedata = bb_gaussian_B7_out_lm83_gaussian_avm_writedata;

    // out_memdep_gaussian_avm_address(GPOUT,108)
    assign out_memdep_gaussian_avm_address = bb_gaussian_B7_out_memdep_gaussian_avm_address;

    // out_memdep_gaussian_avm_burstcount(GPOUT,109)
    assign out_memdep_gaussian_avm_burstcount = bb_gaussian_B7_out_memdep_gaussian_avm_burstcount;

    // out_memdep_gaussian_avm_byteenable(GPOUT,110)
    assign out_memdep_gaussian_avm_byteenable = bb_gaussian_B7_out_memdep_gaussian_avm_byteenable;

    // out_memdep_gaussian_avm_enable(GPOUT,111)
    assign out_memdep_gaussian_avm_enable = bb_gaussian_B7_out_memdep_gaussian_avm_enable;

    // out_memdep_gaussian_avm_read(GPOUT,112)
    assign out_memdep_gaussian_avm_read = bb_gaussian_B7_out_memdep_gaussian_avm_read;

    // out_memdep_gaussian_avm_write(GPOUT,113)
    assign out_memdep_gaussian_avm_write = bb_gaussian_B7_out_memdep_gaussian_avm_write;

    // out_memdep_gaussian_avm_writedata(GPOUT,114)
    assign out_memdep_gaussian_avm_writedata = bb_gaussian_B7_out_memdep_gaussian_avm_writedata;

    // out_stall_out(GPOUT,115)
    assign out_stall_out = bb_gaussian_B0_runOnce_out_stall_out_0;

    // out_valid_out(GPOUT,116)
    assign out_valid_out = GND_q;

    // rst_sync(RESETSYNC,125)
    acl_reset_handler #(
        .ASYNC_RESET(0),
        .USE_SYNCHRONIZER(1),
        .PULSE_EXTENSION(0),
        .PIPE_DEPTH(3),
        .DUPLICATE(1)
    ) therst_sync (
        .clk(clock),
        .i_resetn(resetn),
        .o_sclrn(rst_sync_rst_sclrn)
    );

endmodule
