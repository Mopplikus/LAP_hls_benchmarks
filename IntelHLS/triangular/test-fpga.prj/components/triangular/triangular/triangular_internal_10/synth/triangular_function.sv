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

// SystemVerilog created from triangular_function
// Created for function/kernel triangular
// SystemVerilog created on Tue Apr 25 22:47:05 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_function (
    input wire [63:0] in_arg_A,
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_return,
    input wire [63:0] in_arg_x,
    input wire [191:0] in_iord_bl_call_triangular_i_fifodata,
    input wire [0:0] in_iord_bl_call_triangular_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_triangular_i_fifoready,
    input wire [31:0] in_lm113_triangular_avm_readdata,
    input wire [0:0] in_lm113_triangular_avm_readdatavalid,
    input wire [0:0] in_lm113_triangular_avm_waitrequest,
    input wire [0:0] in_lm113_triangular_avm_writeack,
    input wire [31:0] in_lm1_triangular_avm_readdata,
    input wire [0:0] in_lm1_triangular_avm_readdatavalid,
    input wire [0:0] in_lm1_triangular_avm_waitrequest,
    input wire [0:0] in_lm1_triangular_avm_writeack,
    input wire [31:0] in_lm92_triangular_avm_readdata,
    input wire [0:0] in_lm92_triangular_avm_readdatavalid,
    input wire [0:0] in_lm92_triangular_avm_waitrequest,
    input wire [0:0] in_lm92_triangular_avm_writeack,
    input wire [31:0] in_memdep_triangular_avm_readdata,
    input wire [0:0] in_memdep_triangular_avm_readdatavalid,
    input wire [0:0] in_memdep_triangular_avm_waitrequest,
    input wire [0:0] in_memdep_triangular_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_triangular_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_triangular_o_fifoready,
    output wire [0:0] out_iowr_bl_return_triangular_o_fifodata,
    output wire [0:0] out_iowr_bl_return_triangular_o_fifovalid,
    output wire [31:0] out_lm113_triangular_avm_address,
    output wire [0:0] out_lm113_triangular_avm_burstcount,
    output wire [3:0] out_lm113_triangular_avm_byteenable,
    output wire [0:0] out_lm113_triangular_avm_enable,
    output wire [0:0] out_lm113_triangular_avm_read,
    output wire [0:0] out_lm113_triangular_avm_write,
    output wire [31:0] out_lm113_triangular_avm_writedata,
    output wire [31:0] out_lm1_triangular_avm_address,
    output wire [0:0] out_lm1_triangular_avm_burstcount,
    output wire [3:0] out_lm1_triangular_avm_byteenable,
    output wire [0:0] out_lm1_triangular_avm_enable,
    output wire [0:0] out_lm1_triangular_avm_read,
    output wire [0:0] out_lm1_triangular_avm_write,
    output wire [31:0] out_lm1_triangular_avm_writedata,
    output wire [31:0] out_lm92_triangular_avm_address,
    output wire [0:0] out_lm92_triangular_avm_burstcount,
    output wire [3:0] out_lm92_triangular_avm_byteenable,
    output wire [0:0] out_lm92_triangular_avm_enable,
    output wire [0:0] out_lm92_triangular_avm_read,
    output wire [0:0] out_lm92_triangular_avm_write,
    output wire [31:0] out_lm92_triangular_avm_writedata,
    output wire [31:0] out_memdep_triangular_avm_address,
    output wire [0:0] out_memdep_triangular_avm_burstcount,
    output wire [3:0] out_memdep_triangular_avm_byteenable,
    output wire [0:0] out_memdep_triangular_avm_enable,
    output wire [0:0] out_memdep_triangular_avm_read,
    output wire [0:0] out_memdep_triangular_avm_write,
    output wire [31:0] out_memdep_triangular_avm_writedata,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_triangular_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_triangular_B0_runOnce_out_valid_out_0;
    wire [31:0] bb_triangular_B1_start_out_c1_exe1;
    wire [0:0] bb_triangular_B1_start_out_feedback_stall_out_1;
    wire [31:0] bb_triangular_B1_start_out_intel_reserved_ffwd_0_0;
    wire [0:0] bb_triangular_B1_start_out_intel_reserved_ffwd_1_0;
    wire [31:0] bb_triangular_B1_start_out_intel_reserved_ffwd_2_0;
    wire [32:0] bb_triangular_B1_start_out_intel_reserved_ffwd_3_0;
    wire [0:0] bb_triangular_B1_start_out_iord_bl_call_triangular_o_fifoalmost_full;
    wire [0:0] bb_triangular_B1_start_out_iord_bl_call_triangular_o_fifoready;
    wire [0:0] bb_triangular_B1_start_out_profile_loop_o_valid;
    wire [31:0] bb_triangular_B1_start_out_reorder_limiter_enter;
    wire [0:0] bb_triangular_B1_start_out_stall_out_1;
    wire [0:0] bb_triangular_B1_start_out_valid_in_1;
    wire [0:0] bb_triangular_B1_start_out_valid_out_0;
    wire [0:0] bb_triangular_B1_start_out_wgl_6_enter_exit_stall_out;
    wire [0:0] bb_triangular_B1_start_out_wgl_6_enter_exit_valid_out;
    wire [31:0] bb_triangular_B2_out_c0_exe5814;
    wire [0:0] bb_triangular_B2_out_feedback_out_13;
    wire [0:0] bb_triangular_B2_out_feedback_valid_out_13;
    wire [0:0] bb_triangular_B2_out_stall_in_0;
    wire [0:0] bb_triangular_B2_out_stall_out_0;
    wire [0:0] bb_triangular_B2_out_valid_out_0;
    wire [0:0] bb_triangular_B3_out_feedback_out_1;
    wire [0:0] bb_triangular_B3_out_feedback_valid_out_1;
    wire [0:0] bb_triangular_B3_out_iowr_bl_return_triangular_o_fifodata;
    wire [0:0] bb_triangular_B3_out_iowr_bl_return_triangular_o_fifovalid;
    wire [0:0] bb_triangular_B3_out_stall_in_0;
    wire [0:0] bb_triangular_B3_out_stall_out_0;
    wire [0:0] bb_triangular_B3_out_valid_out_0;
    wire [0:0] bb_triangular_B3_out_wgl_6_exit_exit_stall_in;
    wire [0:0] bb_triangular_B3_out_wgl_6_exit_exit_valid_in;
    wire [31:0] bb_triangular_B4_out_c0_exe10;
    wire [31:0] bb_triangular_B4_out_c0_exe11;
    wire [32:0] bb_triangular_B4_out_c0_exe159;
    wire [31:0] bb_triangular_B4_out_c0_exe260;
    wire [31:0] bb_triangular_B4_out_c0_exe3;
    wire [0:0] bb_triangular_B4_out_c0_exe4;
    wire [0:0] bb_triangular_B4_out_c0_exe5;
    wire [0:0] bb_triangular_B4_out_c0_exe6;
    wire [31:0] bb_triangular_B4_out_c0_exe7;
    wire [31:0] bb_triangular_B4_out_c0_exe8;
    wire [0:0] bb_triangular_B4_out_feedback_stall_out_13;
    wire [0:0] bb_triangular_B4_out_memdep_phi4_pop13;
    wire [0:0] bb_triangular_B4_out_profile_loop_o_valid;
    wire [0:0] bb_triangular_B4_out_stall_out_1;
    wire [0:0] bb_triangular_B4_out_valid_in_1;
    wire [0:0] bb_triangular_B4_out_valid_out_0;
    wire [0:0] bb_triangular_B5_out_c0_exe177;
    wire [0:0] bb_triangular_B5_out_c0_exe480;
    wire [31:0] bb_triangular_B5_out_c0_exe581;
    wire [0:0] bb_triangular_B5_out_c0_exe682;
    wire [31:0] bb_triangular_B5_out_lm113_triangular_avm_address;
    wire [0:0] bb_triangular_B5_out_lm113_triangular_avm_burstcount;
    wire [3:0] bb_triangular_B5_out_lm113_triangular_avm_byteenable;
    wire [0:0] bb_triangular_B5_out_lm113_triangular_avm_enable;
    wire [0:0] bb_triangular_B5_out_lm113_triangular_avm_read;
    wire [0:0] bb_triangular_B5_out_lm113_triangular_avm_write;
    wire [31:0] bb_triangular_B5_out_lm113_triangular_avm_writedata;
    wire [31:0] bb_triangular_B5_out_lm1_triangular_avm_address;
    wire [0:0] bb_triangular_B5_out_lm1_triangular_avm_burstcount;
    wire [3:0] bb_triangular_B5_out_lm1_triangular_avm_byteenable;
    wire [0:0] bb_triangular_B5_out_lm1_triangular_avm_enable;
    wire [0:0] bb_triangular_B5_out_lm1_triangular_avm_read;
    wire [0:0] bb_triangular_B5_out_lm1_triangular_avm_write;
    wire [31:0] bb_triangular_B5_out_lm1_triangular_avm_writedata;
    wire [31:0] bb_triangular_B5_out_lm92_triangular_avm_address;
    wire [0:0] bb_triangular_B5_out_lm92_triangular_avm_burstcount;
    wire [3:0] bb_triangular_B5_out_lm92_triangular_avm_byteenable;
    wire [0:0] bb_triangular_B5_out_lm92_triangular_avm_enable;
    wire [0:0] bb_triangular_B5_out_lm92_triangular_avm_read;
    wire [0:0] bb_triangular_B5_out_lm92_triangular_avm_write;
    wire [31:0] bb_triangular_B5_out_lm92_triangular_avm_writedata;
    wire [31:0] bb_triangular_B5_out_memdep_triangular_avm_address;
    wire [0:0] bb_triangular_B5_out_memdep_triangular_avm_burstcount;
    wire [3:0] bb_triangular_B5_out_memdep_triangular_avm_byteenable;
    wire [0:0] bb_triangular_B5_out_memdep_triangular_avm_enable;
    wire [0:0] bb_triangular_B5_out_memdep_triangular_avm_read;
    wire [0:0] bb_triangular_B5_out_memdep_triangular_avm_write;
    wire [31:0] bb_triangular_B5_out_memdep_triangular_avm_writedata;
    wire [0:0] bb_triangular_B5_out_profile_loop_o_valid;
    wire [0:0] bb_triangular_B5_out_stall_in_0;
    wire [0:0] bb_triangular_B5_out_stall_out_1;
    wire [0:0] bb_triangular_B5_out_valid_in_1;
    wire [0:0] bb_triangular_B5_out_valid_out_0;
    wire [31:0] c_i32_undef10_q;
    wire [32:0] c_i33_undef19_q;
    wire [0:0] triangular_B1_start_x_i_capture;
    wire triangular_B1_start_x_i_capture_bitsignaltemp;
    wire [0:0] triangular_B1_start_x_i_clear;
    wire triangular_B1_start_x_i_clear_bitsignaltemp;
    wire [0:0] triangular_B1_start_x_i_enable;
    wire triangular_B1_start_x_i_enable_bitsignaltemp;
    wire [0:0] triangular_B1_start_x_i_shift;
    wire triangular_B1_start_x_i_shift_bitsignaltemp;
    wire [0:0] triangular_B1_start_x_i_stall_pred;
    wire triangular_B1_start_x_i_stall_pred_bitsignaltemp;
    wire [0:0] triangular_B1_start_x_i_stall_succ;
    wire triangular_B1_start_x_i_stall_succ_bitsignaltemp;
    wire [0:0] triangular_B1_start_x_i_valid_loop;
    wire triangular_B1_start_x_i_valid_loop_bitsignaltemp;
    wire [0:0] triangular_B1_start_x_i_valid_pred;
    wire triangular_B1_start_x_i_valid_pred_bitsignaltemp;
    wire [0:0] triangular_B1_start_x_i_valid_succ;
    wire triangular_B1_start_x_i_valid_succ_bitsignaltemp;
    wire [0:0] triangular_B4_x_i_capture;
    wire triangular_B4_x_i_capture_bitsignaltemp;
    wire [0:0] triangular_B4_x_i_clear;
    wire triangular_B4_x_i_clear_bitsignaltemp;
    wire [0:0] triangular_B4_x_i_enable;
    wire triangular_B4_x_i_enable_bitsignaltemp;
    wire [0:0] triangular_B4_x_i_shift;
    wire triangular_B4_x_i_shift_bitsignaltemp;
    wire [0:0] triangular_B4_x_i_stall_pred;
    wire triangular_B4_x_i_stall_pred_bitsignaltemp;
    wire [0:0] triangular_B4_x_i_stall_succ;
    wire triangular_B4_x_i_stall_succ_bitsignaltemp;
    wire [0:0] triangular_B4_x_i_valid_loop;
    wire triangular_B4_x_i_valid_loop_bitsignaltemp;
    wire [0:0] triangular_B4_x_i_valid_pred;
    wire triangular_B4_x_i_valid_pred_bitsignaltemp;
    wire [0:0] triangular_B4_x_i_valid_succ;
    wire triangular_B4_x_i_valid_succ_bitsignaltemp;
    wire [0:0] triangular_B5_x_i_capture;
    wire triangular_B5_x_i_capture_bitsignaltemp;
    wire [0:0] triangular_B5_x_i_clear;
    wire triangular_B5_x_i_clear_bitsignaltemp;
    wire [0:0] triangular_B5_x_i_enable;
    wire triangular_B5_x_i_enable_bitsignaltemp;
    wire [0:0] triangular_B5_x_i_shift;
    wire triangular_B5_x_i_shift_bitsignaltemp;
    wire [0:0] triangular_B5_x_i_stall_pred;
    wire triangular_B5_x_i_stall_pred_bitsignaltemp;
    wire [0:0] triangular_B5_x_i_stall_succ;
    wire triangular_B5_x_i_stall_succ_bitsignaltemp;
    wire [0:0] triangular_B5_x_i_valid_loop;
    wire triangular_B5_x_i_valid_loop_bitsignaltemp;
    wire [0:0] triangular_B5_x_i_valid_pred;
    wire triangular_B5_x_i_valid_pred_bitsignaltemp;
    wire [0:0] triangular_B5_x_i_valid_succ;
    wire triangular_B5_x_i_valid_succ_bitsignaltemp;
    wire [0:0] bb_triangular_B1_start_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_triangular_B1_start_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_triangular_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_triangular_B2_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_triangular_B2_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_triangular_B2_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_triangular_B2_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_triangular_B2_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_triangular_B3_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_triangular_B3_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_triangular_B3_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_triangular_B4_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_triangular_B4_sr_1_aunroll_x_out_o_valid;
    wire [31:0] bb_triangular_B4_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_triangular_B4_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_triangular_B5_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_triangular_B5_sr_1_aunroll_x_out_o_valid;
    wire [31:0] bb_triangular_B5_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_triangular_B5_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [32:0] bb_triangular_B5_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_triangular_B5_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_triangular_B5_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_triangular_B5_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_triangular_B5_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_triangular_B5_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_triangular_B5_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [31:0] bb_triangular_B5_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_triangular_B5_sr_1_aunroll_x_out_o_data_10_tpl;
    reg [0:0] rst_sync_rst_sclrn;


    // bb_triangular_B0_runOnce(BLACKBOX,2)
    triangular_bb_B0_runOnce thebb_triangular_B0_runOnce (
        .in_stall_in_0(bb_triangular_B1_start_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_triangular_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(bb_triangular_B0_runOnce_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_triangular_B1_start_sr_1_aunroll_x(BLACKBOX,98)
    triangular_bb_B1_start_sr_1 thebb_triangular_B1_start_sr_1_aunroll_x (
        .in_i_stall(bb_triangular_B1_start_out_stall_out_1),
        .in_i_valid(bb_triangular_B0_runOnce_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_triangular_B1_start_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_triangular_B1_start_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // c_i33_undef19(CONSTANT,33)
    assign c_i33_undef19_q = $unsigned(33'b000000000000000000000000000000000);

    // bb_triangular_B2_sr_0_aunroll_x(BLACKBOX,99)
    triangular_bb_B2_sr_0 thebb_triangular_B2_sr_0_aunroll_x (
        .in_i_stall(bb_triangular_B2_out_stall_out_0),
        .in_i_valid(bb_triangular_B5_out_valid_out_0),
        .in_i_data_0_tpl(bb_triangular_B5_out_c0_exe177),
        .in_i_data_1_tpl(bb_triangular_B5_out_c0_exe480),
        .in_i_data_2_tpl(bb_triangular_B5_out_c0_exe581),
        .in_i_data_3_tpl(bb_triangular_B5_out_c0_exe682),
        .out_o_stall(bb_triangular_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_triangular_B2_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_triangular_B2_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_triangular_B2_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_triangular_B2_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_triangular_B2_sr_0_aunroll_x_out_o_data_3_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bb_triangular_B5(BLACKBOX,7)
    triangular_bb_B5 thebb_triangular_B5 (
        .in_flush(in_start),
        .in_i_01838_0(c_i32_undef10_q),
        .in_i_01838_1(bb_triangular_B5_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_intel_reserved_ffwd_0_0(bb_triangular_B1_start_out_intel_reserved_ffwd_0_0),
        .in_lim_ext25_pop1442_0(c_i32_undef10_q),
        .in_lim_ext25_pop1442_1(bb_triangular_B5_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_lim_ext34_0(c_i32_undef10_q),
        .in_lim_ext34_1(bb_triangular_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_lm113_triangular_avm_readdata(in_lm113_triangular_avm_readdata),
        .in_lm113_triangular_avm_readdatavalid(in_lm113_triangular_avm_readdatavalid),
        .in_lm113_triangular_avm_waitrequest(in_lm113_triangular_avm_waitrequest),
        .in_lm113_triangular_avm_writeack(in_lm113_triangular_avm_writeack),
        .in_lm1_triangular_avm_readdata(in_lm1_triangular_avm_readdata),
        .in_lm1_triangular_avm_readdatavalid(in_lm1_triangular_avm_readdatavalid),
        .in_lm1_triangular_avm_waitrequest(in_lm1_triangular_avm_waitrequest),
        .in_lm1_triangular_avm_writeack(in_lm1_triangular_avm_writeack),
        .in_lm92_triangular_avm_readdata(in_lm92_triangular_avm_readdata),
        .in_lm92_triangular_avm_readdatavalid(in_lm92_triangular_avm_readdatavalid),
        .in_lm92_triangular_avm_waitrequest(in_lm92_triangular_avm_waitrequest),
        .in_lm92_triangular_avm_writeack(in_lm92_triangular_avm_writeack),
        .in_memdep_phi4_pop1341_0(GND_q),
        .in_memdep_phi4_pop1341_1(bb_triangular_B5_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_memdep_triangular_avm_readdata(in_memdep_triangular_avm_readdata),
        .in_memdep_triangular_avm_readdatavalid(in_memdep_triangular_avm_readdatavalid),
        .in_memdep_triangular_avm_waitrequest(in_memdep_triangular_avm_waitrequest),
        .in_memdep_triangular_avm_writeack(in_memdep_triangular_avm_writeack),
        .in_notcmp1740_0(GND_q),
        .in_notcmp1740_1(bb_triangular_B5_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_reorder_limiter_enter27_pop1543_0(c_i32_undef10_q),
        .in_reorder_limiter_enter27_pop1543_1(bb_triangular_B5_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_reorder_limiter_enter37_0(c_i32_undef10_q),
        .in_reorder_limiter_enter37_1(bb_triangular_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_stall_in_0(bb_triangular_B2_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_sub339_0(c_i32_undef10_q),
        .in_sub339_1(bb_triangular_B5_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_unnamed_triangular12_0(c_i33_undef19_q),
        .in_unnamed_triangular12_1(bb_triangular_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_unnamed_triangular13_0(GND_q),
        .in_unnamed_triangular13_1(bb_triangular_B5_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_unnamed_triangular14_0(GND_q),
        .in_unnamed_triangular14_1(bb_triangular_B5_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_valid_in_0(GND_q),
        .in_valid_in_1(bb_triangular_B5_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe177(bb_triangular_B5_out_c0_exe177),
        .out_c0_exe480(bb_triangular_B5_out_c0_exe480),
        .out_c0_exe581(bb_triangular_B5_out_c0_exe581),
        .out_c0_exe682(bb_triangular_B5_out_c0_exe682),
        .out_lm113_triangular_avm_address(bb_triangular_B5_out_lm113_triangular_avm_address),
        .out_lm113_triangular_avm_burstcount(bb_triangular_B5_out_lm113_triangular_avm_burstcount),
        .out_lm113_triangular_avm_byteenable(bb_triangular_B5_out_lm113_triangular_avm_byteenable),
        .out_lm113_triangular_avm_enable(bb_triangular_B5_out_lm113_triangular_avm_enable),
        .out_lm113_triangular_avm_read(bb_triangular_B5_out_lm113_triangular_avm_read),
        .out_lm113_triangular_avm_write(bb_triangular_B5_out_lm113_triangular_avm_write),
        .out_lm113_triangular_avm_writedata(bb_triangular_B5_out_lm113_triangular_avm_writedata),
        .out_lm1_triangular_avm_address(bb_triangular_B5_out_lm1_triangular_avm_address),
        .out_lm1_triangular_avm_burstcount(bb_triangular_B5_out_lm1_triangular_avm_burstcount),
        .out_lm1_triangular_avm_byteenable(bb_triangular_B5_out_lm1_triangular_avm_byteenable),
        .out_lm1_triangular_avm_enable(bb_triangular_B5_out_lm1_triangular_avm_enable),
        .out_lm1_triangular_avm_read(bb_triangular_B5_out_lm1_triangular_avm_read),
        .out_lm1_triangular_avm_write(bb_triangular_B5_out_lm1_triangular_avm_write),
        .out_lm1_triangular_avm_writedata(bb_triangular_B5_out_lm1_triangular_avm_writedata),
        .out_lm92_triangular_avm_address(bb_triangular_B5_out_lm92_triangular_avm_address),
        .out_lm92_triangular_avm_burstcount(bb_triangular_B5_out_lm92_triangular_avm_burstcount),
        .out_lm92_triangular_avm_byteenable(bb_triangular_B5_out_lm92_triangular_avm_byteenable),
        .out_lm92_triangular_avm_enable(bb_triangular_B5_out_lm92_triangular_avm_enable),
        .out_lm92_triangular_avm_read(bb_triangular_B5_out_lm92_triangular_avm_read),
        .out_lm92_triangular_avm_write(bb_triangular_B5_out_lm92_triangular_avm_write),
        .out_lm92_triangular_avm_writedata(bb_triangular_B5_out_lm92_triangular_avm_writedata),
        .out_memdep_triangular_avm_address(bb_triangular_B5_out_memdep_triangular_avm_address),
        .out_memdep_triangular_avm_burstcount(bb_triangular_B5_out_memdep_triangular_avm_burstcount),
        .out_memdep_triangular_avm_byteenable(bb_triangular_B5_out_memdep_triangular_avm_byteenable),
        .out_memdep_triangular_avm_enable(bb_triangular_B5_out_memdep_triangular_avm_enable),
        .out_memdep_triangular_avm_read(bb_triangular_B5_out_memdep_triangular_avm_read),
        .out_memdep_triangular_avm_write(bb_triangular_B5_out_memdep_triangular_avm_write),
        .out_memdep_triangular_avm_writedata(bb_triangular_B5_out_memdep_triangular_avm_writedata),
        .out_profile_loop_o_valid(bb_triangular_B5_out_profile_loop_o_valid),
        .out_stall_in_0(bb_triangular_B5_out_stall_in_0),
        .out_stall_out_0(),
        .out_stall_out_1(bb_triangular_B5_out_stall_out_1),
        .out_valid_in_1(bb_triangular_B5_out_valid_in_1),
        .out_valid_out_0(bb_triangular_B5_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_triangular_B5_sr_1_aunroll_x(BLACKBOX,102)
    triangular_bb_B5_sr_1 thebb_triangular_B5_sr_1_aunroll_x (
        .in_i_stall(bb_triangular_B5_out_stall_out_1),
        .in_i_valid(bb_triangular_B4_out_valid_out_0),
        .in_i_data_0_tpl(bb_triangular_B4_out_c0_exe10),
        .in_i_data_1_tpl(bb_triangular_B4_out_c0_exe11),
        .in_i_data_2_tpl(bb_triangular_B4_out_c0_exe159),
        .in_i_data_3_tpl(bb_triangular_B4_out_c0_exe260),
        .in_i_data_4_tpl(bb_triangular_B4_out_c0_exe3),
        .in_i_data_5_tpl(bb_triangular_B4_out_c0_exe4),
        .in_i_data_6_tpl(bb_triangular_B4_out_c0_exe5),
        .in_i_data_7_tpl(bb_triangular_B4_out_c0_exe6),
        .in_i_data_8_tpl(bb_triangular_B4_out_memdep_phi4_pop13),
        .in_i_data_9_tpl(bb_triangular_B4_out_c0_exe7),
        .in_i_data_10_tpl(bb_triangular_B4_out_c0_exe8),
        .out_o_stall(bb_triangular_B5_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_triangular_B5_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_triangular_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_triangular_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_triangular_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_triangular_B5_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_triangular_B5_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_triangular_B5_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_triangular_B5_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_triangular_B5_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_triangular_B5_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_triangular_B5_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_triangular_B5_sr_1_aunroll_x_out_o_data_10_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // c_i32_undef10(CONSTANT,25)
    assign c_i32_undef10_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_triangular_B3_sr_0_aunroll_x(BLACKBOX,100)
    triangular_bb_B3_sr_0 thebb_triangular_B3_sr_0_aunroll_x (
        .in_i_stall(bb_triangular_B3_out_stall_out_0),
        .in_i_valid(bb_triangular_B2_out_valid_out_0),
        .in_i_data_0_tpl(bb_triangular_B2_out_c0_exe5814),
        .out_o_stall(bb_triangular_B3_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_triangular_B3_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_triangular_B3_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bb_triangular_B2(BLACKBOX,4)
    triangular_bb_B2 thebb_triangular_B2 (
        .in_c0_exe1771_0(bb_triangular_B2_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe4802_0(bb_triangular_B2_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe5814_0(bb_triangular_B2_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe6825_0(bb_triangular_B2_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_feedback_stall_in_13(bb_triangular_B4_out_feedback_stall_out_13),
        .in_stall_in_0(bb_triangular_B3_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_triangular_B2_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe5814(bb_triangular_B2_out_c0_exe5814),
        .out_feedback_out_13(bb_triangular_B2_out_feedback_out_13),
        .out_feedback_valid_out_13(bb_triangular_B2_out_feedback_valid_out_13),
        .out_stall_in_0(bb_triangular_B2_out_stall_in_0),
        .out_stall_out_0(bb_triangular_B2_out_stall_out_0),
        .out_valid_out_0(bb_triangular_B2_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_triangular_B4(BLACKBOX,6)
    triangular_bb_B4 thebb_triangular_B4 (
        .in_feedback_in_13(bb_triangular_B2_out_feedback_out_13),
        .in_feedback_valid_in_13(bb_triangular_B2_out_feedback_valid_out_13),
        .in_intel_reserved_ffwd_0_0(bb_triangular_B1_start_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(bb_triangular_B1_start_out_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(bb_triangular_B1_start_out_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(bb_triangular_B1_start_out_intel_reserved_ffwd_3_0),
        .in_lim_ext32_0(c_i32_undef10_q),
        .in_lim_ext32_1(bb_triangular_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_reorder_limiter_enter35_0(c_i32_undef10_q),
        .in_reorder_limiter_enter35_1(bb_triangular_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_stall_in_0(bb_triangular_B5_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(GND_q),
        .in_valid_in_1(bb_triangular_B4_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10(bb_triangular_B4_out_c0_exe10),
        .out_c0_exe11(bb_triangular_B4_out_c0_exe11),
        .out_c0_exe159(bb_triangular_B4_out_c0_exe159),
        .out_c0_exe260(bb_triangular_B4_out_c0_exe260),
        .out_c0_exe3(bb_triangular_B4_out_c0_exe3),
        .out_c0_exe4(bb_triangular_B4_out_c0_exe4),
        .out_c0_exe5(bb_triangular_B4_out_c0_exe5),
        .out_c0_exe6(bb_triangular_B4_out_c0_exe6),
        .out_c0_exe7(bb_triangular_B4_out_c0_exe7),
        .out_c0_exe8(bb_triangular_B4_out_c0_exe8),
        .out_feedback_stall_out_13(bb_triangular_B4_out_feedback_stall_out_13),
        .out_memdep_phi4_pop13(bb_triangular_B4_out_memdep_phi4_pop13),
        .out_profile_loop_o_valid(bb_triangular_B4_out_profile_loop_o_valid),
        .out_stall_out_0(),
        .out_stall_out_1(bb_triangular_B4_out_stall_out_1),
        .out_valid_in_1(bb_triangular_B4_out_valid_in_1),
        .out_valid_out_0(bb_triangular_B4_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_triangular_B4_sr_1_aunroll_x(BLACKBOX,101)
    triangular_bb_B4_sr_1 thebb_triangular_B4_sr_1_aunroll_x (
        .in_i_stall(bb_triangular_B4_out_stall_out_1),
        .in_i_valid(bb_triangular_B1_start_out_valid_out_0),
        .in_i_data_0_tpl(bb_triangular_B1_start_out_c1_exe1),
        .in_i_data_1_tpl(bb_triangular_B1_start_out_reorder_limiter_enter),
        .out_o_stall(bb_triangular_B4_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_triangular_B4_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_triangular_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_triangular_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bb_triangular_B3(BLACKBOX,5)
    triangular_bb_B3 thebb_triangular_B3 (
        .in_c0_exe5813_0(bb_triangular_B3_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_feedback_stall_in_1(bb_triangular_B1_start_out_feedback_stall_out_1),
        .in_iowr_bl_return_triangular_i_fifoready(in_iowr_bl_return_triangular_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_triangular_B3_sr_0_aunroll_x_out_o_valid),
        .in_wgl_6_exit_exit_stall_out(bb_triangular_B1_start_out_wgl_6_enter_exit_stall_out),
        .in_wgl_6_exit_exit_valid_out(bb_triangular_B1_start_out_wgl_6_enter_exit_valid_out),
        .out_feedback_out_1(bb_triangular_B3_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_triangular_B3_out_feedback_valid_out_1),
        .out_iowr_bl_return_triangular_o_fifodata(bb_triangular_B3_out_iowr_bl_return_triangular_o_fifodata),
        .out_iowr_bl_return_triangular_o_fifovalid(bb_triangular_B3_out_iowr_bl_return_triangular_o_fifovalid),
        .out_stall_in_0(bb_triangular_B3_out_stall_in_0),
        .out_stall_out_0(bb_triangular_B3_out_stall_out_0),
        .out_valid_out_0(bb_triangular_B3_out_valid_out_0),
        .out_wgl_6_exit_exit_stall_in(bb_triangular_B3_out_wgl_6_exit_exit_stall_in),
        .out_wgl_6_exit_exit_valid_in(bb_triangular_B3_out_wgl_6_exit_exit_valid_in),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_triangular_B1_start(BLACKBOX,3)
    triangular_bb_B1_start thebb_triangular_B1_start (
        .in_feedback_in_1(bb_triangular_B3_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_triangular_B3_out_feedback_valid_out_1),
        .in_iord_bl_call_triangular_i_fifodata(in_iord_bl_call_triangular_i_fifodata),
        .in_iord_bl_call_triangular_i_fifovalid(in_iord_bl_call_triangular_i_fifovalid),
        .in_stall_in_0(bb_triangular_B4_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(GND_q),
        .in_valid_in_1(bb_triangular_B1_start_sr_1_aunroll_x_out_o_valid),
        .in_wgl_6_enter_exit_stall_in(bb_triangular_B3_out_wgl_6_exit_exit_stall_in),
        .in_wgl_6_enter_exit_valid_in(bb_triangular_B3_out_wgl_6_exit_exit_valid_in),
        .out_c1_exe1(bb_triangular_B1_start_out_c1_exe1),
        .out_feedback_stall_out_1(bb_triangular_B1_start_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_triangular_B1_start_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_triangular_B1_start_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_triangular_B1_start_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_triangular_B1_start_out_intel_reserved_ffwd_3_0),
        .out_iord_bl_call_triangular_o_fifoalmost_full(bb_triangular_B1_start_out_iord_bl_call_triangular_o_fifoalmost_full),
        .out_iord_bl_call_triangular_o_fifoready(bb_triangular_B1_start_out_iord_bl_call_triangular_o_fifoready),
        .out_profile_loop_o_valid(bb_triangular_B1_start_out_profile_loop_o_valid),
        .out_reorder_limiter_enter(bb_triangular_B1_start_out_reorder_limiter_enter),
        .out_stall_out_0(),
        .out_stall_out_1(bb_triangular_B1_start_out_stall_out_1),
        .out_valid_in_1(bb_triangular_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_triangular_B1_start_out_valid_out_0),
        .out_wgl_6_enter_exit_stall_out(bb_triangular_B1_start_out_wgl_6_enter_exit_stall_out),
        .out_wgl_6_enter_exit_valid_out(bb_triangular_B1_start_out_wgl_6_enter_exit_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_triangular_o_fifoalmost_full(GPOUT,61)
    assign out_iord_bl_call_triangular_o_fifoalmost_full = bb_triangular_B1_start_out_iord_bl_call_triangular_o_fifoalmost_full;

    // out_iord_bl_call_triangular_o_fifoready(GPOUT,62)
    assign out_iord_bl_call_triangular_o_fifoready = bb_triangular_B1_start_out_iord_bl_call_triangular_o_fifoready;

    // out_iowr_bl_return_triangular_o_fifodata(GPOUT,63)
    assign out_iowr_bl_return_triangular_o_fifodata = bb_triangular_B3_out_iowr_bl_return_triangular_o_fifodata;

    // out_iowr_bl_return_triangular_o_fifovalid(GPOUT,64)
    assign out_iowr_bl_return_triangular_o_fifovalid = bb_triangular_B3_out_iowr_bl_return_triangular_o_fifovalid;

    // out_lm113_triangular_avm_address(GPOUT,65)
    assign out_lm113_triangular_avm_address = bb_triangular_B5_out_lm113_triangular_avm_address;

    // out_lm113_triangular_avm_burstcount(GPOUT,66)
    assign out_lm113_triangular_avm_burstcount = bb_triangular_B5_out_lm113_triangular_avm_burstcount;

    // out_lm113_triangular_avm_byteenable(GPOUT,67)
    assign out_lm113_triangular_avm_byteenable = bb_triangular_B5_out_lm113_triangular_avm_byteenable;

    // out_lm113_triangular_avm_enable(GPOUT,68)
    assign out_lm113_triangular_avm_enable = bb_triangular_B5_out_lm113_triangular_avm_enable;

    // out_lm113_triangular_avm_read(GPOUT,69)
    assign out_lm113_triangular_avm_read = bb_triangular_B5_out_lm113_triangular_avm_read;

    // out_lm113_triangular_avm_write(GPOUT,70)
    assign out_lm113_triangular_avm_write = bb_triangular_B5_out_lm113_triangular_avm_write;

    // out_lm113_triangular_avm_writedata(GPOUT,71)
    assign out_lm113_triangular_avm_writedata = bb_triangular_B5_out_lm113_triangular_avm_writedata;

    // out_lm1_triangular_avm_address(GPOUT,72)
    assign out_lm1_triangular_avm_address = bb_triangular_B5_out_lm1_triangular_avm_address;

    // out_lm1_triangular_avm_burstcount(GPOUT,73)
    assign out_lm1_triangular_avm_burstcount = bb_triangular_B5_out_lm1_triangular_avm_burstcount;

    // out_lm1_triangular_avm_byteenable(GPOUT,74)
    assign out_lm1_triangular_avm_byteenable = bb_triangular_B5_out_lm1_triangular_avm_byteenable;

    // out_lm1_triangular_avm_enable(GPOUT,75)
    assign out_lm1_triangular_avm_enable = bb_triangular_B5_out_lm1_triangular_avm_enable;

    // out_lm1_triangular_avm_read(GPOUT,76)
    assign out_lm1_triangular_avm_read = bb_triangular_B5_out_lm1_triangular_avm_read;

    // out_lm1_triangular_avm_write(GPOUT,77)
    assign out_lm1_triangular_avm_write = bb_triangular_B5_out_lm1_triangular_avm_write;

    // out_lm1_triangular_avm_writedata(GPOUT,78)
    assign out_lm1_triangular_avm_writedata = bb_triangular_B5_out_lm1_triangular_avm_writedata;

    // out_lm92_triangular_avm_address(GPOUT,79)
    assign out_lm92_triangular_avm_address = bb_triangular_B5_out_lm92_triangular_avm_address;

    // out_lm92_triangular_avm_burstcount(GPOUT,80)
    assign out_lm92_triangular_avm_burstcount = bb_triangular_B5_out_lm92_triangular_avm_burstcount;

    // out_lm92_triangular_avm_byteenable(GPOUT,81)
    assign out_lm92_triangular_avm_byteenable = bb_triangular_B5_out_lm92_triangular_avm_byteenable;

    // out_lm92_triangular_avm_enable(GPOUT,82)
    assign out_lm92_triangular_avm_enable = bb_triangular_B5_out_lm92_triangular_avm_enable;

    // out_lm92_triangular_avm_read(GPOUT,83)
    assign out_lm92_triangular_avm_read = bb_triangular_B5_out_lm92_triangular_avm_read;

    // out_lm92_triangular_avm_write(GPOUT,84)
    assign out_lm92_triangular_avm_write = bb_triangular_B5_out_lm92_triangular_avm_write;

    // out_lm92_triangular_avm_writedata(GPOUT,85)
    assign out_lm92_triangular_avm_writedata = bb_triangular_B5_out_lm92_triangular_avm_writedata;

    // out_memdep_triangular_avm_address(GPOUT,86)
    assign out_memdep_triangular_avm_address = bb_triangular_B5_out_memdep_triangular_avm_address;

    // out_memdep_triangular_avm_burstcount(GPOUT,87)
    assign out_memdep_triangular_avm_burstcount = bb_triangular_B5_out_memdep_triangular_avm_burstcount;

    // out_memdep_triangular_avm_byteenable(GPOUT,88)
    assign out_memdep_triangular_avm_byteenable = bb_triangular_B5_out_memdep_triangular_avm_byteenable;

    // out_memdep_triangular_avm_enable(GPOUT,89)
    assign out_memdep_triangular_avm_enable = bb_triangular_B5_out_memdep_triangular_avm_enable;

    // out_memdep_triangular_avm_read(GPOUT,90)
    assign out_memdep_triangular_avm_read = bb_triangular_B5_out_memdep_triangular_avm_read;

    // out_memdep_triangular_avm_write(GPOUT,91)
    assign out_memdep_triangular_avm_write = bb_triangular_B5_out_memdep_triangular_avm_write;

    // out_memdep_triangular_avm_writedata(GPOUT,92)
    assign out_memdep_triangular_avm_writedata = bb_triangular_B5_out_memdep_triangular_avm_writedata;

    // out_stall_out(GPOUT,93)
    assign out_stall_out = bb_triangular_B0_runOnce_out_stall_out_0;

    // out_valid_out(GPOUT,94)
    assign out_valid_out = GND_q;

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // triangular_B1_start_x(EXTIFACE,95)
    assign triangular_B1_start_x_i_capture = GND_q;
    assign triangular_B1_start_x_i_clear = GND_q;
    assign triangular_B1_start_x_i_enable = VCC_q;
    assign triangular_B1_start_x_i_shift = GND_q;
    assign triangular_B1_start_x_i_stall_pred = bb_triangular_B1_start_sr_1_aunroll_x_out_o_stall;
    assign triangular_B1_start_x_i_stall_succ = bb_triangular_B3_out_stall_in_0;
    assign triangular_B1_start_x_i_valid_loop = bb_triangular_B1_start_out_profile_loop_o_valid;
    assign triangular_B1_start_x_i_valid_pred = bb_triangular_B1_start_out_valid_in_1;
    assign triangular_B1_start_x_i_valid_succ = bb_triangular_B3_out_valid_out_0;
    assign triangular_B1_start_x_i_capture_bitsignaltemp = triangular_B1_start_x_i_capture[0];
    assign triangular_B1_start_x_i_clear_bitsignaltemp = triangular_B1_start_x_i_clear[0];
    assign triangular_B1_start_x_i_enable_bitsignaltemp = triangular_B1_start_x_i_enable[0];
    assign triangular_B1_start_x_i_shift_bitsignaltemp = triangular_B1_start_x_i_shift[0];
    assign triangular_B1_start_x_i_stall_pred_bitsignaltemp = triangular_B1_start_x_i_stall_pred[0];
    assign triangular_B1_start_x_i_stall_succ_bitsignaltemp = triangular_B1_start_x_i_stall_succ[0];
    assign triangular_B1_start_x_i_valid_loop_bitsignaltemp = triangular_B1_start_x_i_valid_loop[0];
    assign triangular_B1_start_x_i_valid_pred_bitsignaltemp = triangular_B1_start_x_i_valid_pred[0];
    assign triangular_B1_start_x_i_valid_succ_bitsignaltemp = triangular_B1_start_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("triangular.B1.start")
    ) thetriangular_B1_start_x (
        .i_capture(triangular_B1_start_x_i_capture_bitsignaltemp),
        .i_clear(triangular_B1_start_x_i_clear_bitsignaltemp),
        .i_enable(triangular_B1_start_x_i_enable_bitsignaltemp),
        .i_shift(triangular_B1_start_x_i_shift_bitsignaltemp),
        .i_stall_pred(triangular_B1_start_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(triangular_B1_start_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(triangular_B1_start_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(triangular_B1_start_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(triangular_B1_start_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // triangular_B4_x(EXTIFACE,96)
    assign triangular_B4_x_i_capture = GND_q;
    assign triangular_B4_x_i_clear = GND_q;
    assign triangular_B4_x_i_enable = VCC_q;
    assign triangular_B4_x_i_shift = GND_q;
    assign triangular_B4_x_i_stall_pred = bb_triangular_B4_sr_1_aunroll_x_out_o_stall;
    assign triangular_B4_x_i_stall_succ = bb_triangular_B2_out_stall_in_0;
    assign triangular_B4_x_i_valid_loop = bb_triangular_B4_out_profile_loop_o_valid;
    assign triangular_B4_x_i_valid_pred = bb_triangular_B4_out_valid_in_1;
    assign triangular_B4_x_i_valid_succ = bb_triangular_B2_out_valid_out_0;
    assign triangular_B4_x_i_capture_bitsignaltemp = triangular_B4_x_i_capture[0];
    assign triangular_B4_x_i_clear_bitsignaltemp = triangular_B4_x_i_clear[0];
    assign triangular_B4_x_i_enable_bitsignaltemp = triangular_B4_x_i_enable[0];
    assign triangular_B4_x_i_shift_bitsignaltemp = triangular_B4_x_i_shift[0];
    assign triangular_B4_x_i_stall_pred_bitsignaltemp = triangular_B4_x_i_stall_pred[0];
    assign triangular_B4_x_i_stall_succ_bitsignaltemp = triangular_B4_x_i_stall_succ[0];
    assign triangular_B4_x_i_valid_loop_bitsignaltemp = triangular_B4_x_i_valid_loop[0];
    assign triangular_B4_x_i_valid_pred_bitsignaltemp = triangular_B4_x_i_valid_pred[0];
    assign triangular_B4_x_i_valid_succ_bitsignaltemp = triangular_B4_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("triangular.B4")
    ) thetriangular_B4_x (
        .i_capture(triangular_B4_x_i_capture_bitsignaltemp),
        .i_clear(triangular_B4_x_i_clear_bitsignaltemp),
        .i_enable(triangular_B4_x_i_enable_bitsignaltemp),
        .i_shift(triangular_B4_x_i_shift_bitsignaltemp),
        .i_stall_pred(triangular_B4_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(triangular_B4_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(triangular_B4_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(triangular_B4_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(triangular_B4_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // triangular_B5_x(EXTIFACE,97)
    assign triangular_B5_x_i_capture = GND_q;
    assign triangular_B5_x_i_clear = GND_q;
    assign triangular_B5_x_i_enable = VCC_q;
    assign triangular_B5_x_i_shift = GND_q;
    assign triangular_B5_x_i_stall_pred = bb_triangular_B5_sr_1_aunroll_x_out_o_stall;
    assign triangular_B5_x_i_stall_succ = bb_triangular_B5_out_stall_in_0;
    assign triangular_B5_x_i_valid_loop = bb_triangular_B5_out_profile_loop_o_valid;
    assign triangular_B5_x_i_valid_pred = bb_triangular_B5_out_valid_in_1;
    assign triangular_B5_x_i_valid_succ = bb_triangular_B5_out_valid_out_0;
    assign triangular_B5_x_i_capture_bitsignaltemp = triangular_B5_x_i_capture[0];
    assign triangular_B5_x_i_clear_bitsignaltemp = triangular_B5_x_i_clear[0];
    assign triangular_B5_x_i_enable_bitsignaltemp = triangular_B5_x_i_enable[0];
    assign triangular_B5_x_i_shift_bitsignaltemp = triangular_B5_x_i_shift[0];
    assign triangular_B5_x_i_stall_pred_bitsignaltemp = triangular_B5_x_i_stall_pred[0];
    assign triangular_B5_x_i_stall_succ_bitsignaltemp = triangular_B5_x_i_stall_succ[0];
    assign triangular_B5_x_i_valid_loop_bitsignaltemp = triangular_B5_x_i_valid_loop[0];
    assign triangular_B5_x_i_valid_pred_bitsignaltemp = triangular_B5_x_i_valid_pred[0];
    assign triangular_B5_x_i_valid_succ_bitsignaltemp = triangular_B5_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("triangular.B5")
    ) thetriangular_B5_x (
        .i_capture(triangular_B5_x_i_capture_bitsignaltemp),
        .i_clear(triangular_B5_x_i_clear_bitsignaltemp),
        .i_enable(triangular_B5_x_i_enable_bitsignaltemp),
        .i_shift(triangular_B5_x_i_shift_bitsignaltemp),
        .i_stall_pred(triangular_B5_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(triangular_B5_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(triangular_B5_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(triangular_B5_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(triangular_B5_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // rst_sync(RESETSYNC,103)
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
