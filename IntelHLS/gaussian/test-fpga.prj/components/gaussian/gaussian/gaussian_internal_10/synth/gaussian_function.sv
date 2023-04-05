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
// SystemVerilog created on Wed Mar 29 19:22:59 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_function (
    input wire [63:0] in_arg_A,
    input wire [63:0] in_arg_c,
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_return,
    input wire [127:0] in_iord_bl_call_gaussian_i_fifodata,
    input wire [0:0] in_iord_bl_call_gaussian_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_gaussian_i_fifoready,
    input wire [63:0] in_lm1_gaussian_avm_readdata,
    input wire [0:0] in_lm1_gaussian_avm_readdatavalid,
    input wire [0:0] in_lm1_gaussian_avm_waitrequest,
    input wire [0:0] in_lm1_gaussian_avm_writeack,
    input wire [63:0] in_lm32_gaussian_avm_readdata,
    input wire [0:0] in_lm32_gaussian_avm_readdatavalid,
    input wire [0:0] in_lm32_gaussian_avm_waitrequest,
    input wire [0:0] in_lm32_gaussian_avm_writeack,
    input wire [63:0] in_lm53_gaussian_avm_readdata,
    input wire [0:0] in_lm53_gaussian_avm_readdatavalid,
    input wire [0:0] in_lm53_gaussian_avm_waitrequest,
    input wire [0:0] in_lm53_gaussian_avm_writeack,
    input wire [63:0] in_memdep_gaussian_avm_readdata,
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
    output wire [63:0] out_lm1_gaussian_avm_address,
    output wire [0:0] out_lm1_gaussian_avm_burstcount,
    output wire [7:0] out_lm1_gaussian_avm_byteenable,
    output wire [0:0] out_lm1_gaussian_avm_enable,
    output wire [0:0] out_lm1_gaussian_avm_read,
    output wire [0:0] out_lm1_gaussian_avm_write,
    output wire [63:0] out_lm1_gaussian_avm_writedata,
    output wire [63:0] out_lm32_gaussian_avm_address,
    output wire [0:0] out_lm32_gaussian_avm_burstcount,
    output wire [7:0] out_lm32_gaussian_avm_byteenable,
    output wire [0:0] out_lm32_gaussian_avm_enable,
    output wire [0:0] out_lm32_gaussian_avm_read,
    output wire [0:0] out_lm32_gaussian_avm_write,
    output wire [63:0] out_lm32_gaussian_avm_writedata,
    output wire [63:0] out_lm53_gaussian_avm_address,
    output wire [0:0] out_lm53_gaussian_avm_burstcount,
    output wire [7:0] out_lm53_gaussian_avm_byteenable,
    output wire [0:0] out_lm53_gaussian_avm_enable,
    output wire [0:0] out_lm53_gaussian_avm_read,
    output wire [0:0] out_lm53_gaussian_avm_write,
    output wire [63:0] out_lm53_gaussian_avm_writedata,
    output wire [63:0] out_memdep_gaussian_avm_address,
    output wire [0:0] out_memdep_gaussian_avm_burstcount,
    output wire [7:0] out_memdep_gaussian_avm_byteenable,
    output wire [0:0] out_memdep_gaussian_avm_enable,
    output wire [0:0] out_memdep_gaussian_avm_read,
    output wire [0:0] out_memdep_gaussian_avm_write,
    output wire [63:0] out_memdep_gaussian_avm_writedata,
    output wire [0:0] out_o_active_memdep,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_gaussian_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_gaussian_B1_start_out_feedback_stall_out_1;
    wire [63:0] bb_gaussian_B1_start_out_intel_reserved_ffwd_0_0;
    wire [63:0] bb_gaussian_B1_start_out_intel_reserved_ffwd_1_0;
    wire [0:0] bb_gaussian_B1_start_out_iord_bl_call_gaussian_o_fifoalmost_full;
    wire [0:0] bb_gaussian_B1_start_out_iord_bl_call_gaussian_o_fifoready;
    wire [0:0] bb_gaussian_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_gaussian_B1_start_out_stall_out_0;
    wire [0:0] bb_gaussian_B1_start_out_valid_in_0;
    wire [0:0] bb_gaussian_B1_start_out_valid_in_1;
    wire [0:0] bb_gaussian_B1_start_out_valid_out_0;
    wire [31:0] bb_gaussian_B2_out_add40_push172;
    wire [31:0] bb_gaussian_B2_out_intel_reserved_ffwd_2_0;
    wire [31:0] bb_gaussian_B2_out_intel_reserved_ffwd_3_0;
    wire [0:0] bb_gaussian_B2_out_stall_in_0;
    wire [0:0] bb_gaussian_B2_out_stall_out_0;
    wire [0:0] bb_gaussian_B2_out_valid_out_0;
    wire [0:0] bb_gaussian_B2_out_valid_out_1;
    wire [0:0] bb_gaussian_B3_out_feedback_out_1;
    wire [0:0] bb_gaussian_B3_out_feedback_valid_out_1;
    wire [0:0] bb_gaussian_B3_out_iowr_bl_return_gaussian_o_fifodata;
    wire [0:0] bb_gaussian_B3_out_iowr_bl_return_gaussian_o_fifovalid;
    wire [0:0] bb_gaussian_B3_out_stall_in_0;
    wire [0:0] bb_gaussian_B3_out_stall_out_0;
    wire [0:0] bb_gaussian_B3_out_valid_out_0;
    wire [31:0] bb_gaussian_B4_out_add;
    wire [31:0] bb_gaussian_B4_out_intel_reserved_ffwd_4_0;
    wire [31:0] bb_gaussian_B4_out_intel_reserved_ffwd_5_0;
    wire [31:0] bb_gaussian_B4_out_intel_reserved_ffwd_6_0;
    wire [32:0] bb_gaussian_B4_out_intel_reserved_ffwd_7_0;
    wire [31:0] bb_gaussian_B4_out_intel_reserved_ffwd_8_0;
    wire [0:0] bb_gaussian_B4_out_intel_reserved_ffwd_9_0;
    wire [0:0] bb_gaussian_B4_out_stall_out_0;
    wire [0:0] bb_gaussian_B4_out_stall_out_1;
    wire [0:0] bb_gaussian_B4_out_valid_in_0;
    wire [0:0] bb_gaussian_B4_out_valid_in_1;
    wire [0:0] bb_gaussian_B4_out_valid_out_0;
    wire [31:0] bb_gaussian_B5_out_c0_exe159;
    wire [0:0] bb_gaussian_B5_out_c0_exe2;
    wire [0:0] bb_gaussian_B5_out_c0_exe3;
    wire [31:0] bb_gaussian_B5_out_c0_exe4;
    wire [0:0] bb_gaussian_B5_out_exiting_stall_out;
    wire [0:0] bb_gaussian_B5_out_exiting_valid_out;
    wire [0:0] bb_gaussian_B5_out_feedback_stall_out_10;
    wire [0:0] bb_gaussian_B5_out_memdep_phi_pop10;
    wire [0:0] bb_gaussian_B5_out_pipeline_valid_out;
    wire [0:0] bb_gaussian_B5_out_stall_out_0;
    wire [0:0] bb_gaussian_B5_out_stall_out_1;
    wire [0:0] bb_gaussian_B5_out_valid_in_0;
    wire [0:0] bb_gaussian_B5_out_valid_in_1;
    wire [0:0] bb_gaussian_B5_out_valid_out_0;
    wire [31:0] bb_gaussian_B6_out_add40_push173;
    wire [0:0] bb_gaussian_B6_out_feedback_out_10;
    wire [0:0] bb_gaussian_B6_out_feedback_valid_out_10;
    wire [0:0] bb_gaussian_B6_out_stall_in_0;
    wire [0:0] bb_gaussian_B6_out_stall_out_0;
    wire [0:0] bb_gaussian_B6_out_valid_out_0;
    wire [31:0] bb_gaussian_B7_out_add40_push17;
    wire [0:0] bb_gaussian_B7_out_exiting_stall_out;
    wire [0:0] bb_gaussian_B7_out_exiting_valid_out;
    wire [63:0] bb_gaussian_B7_out_lm1_gaussian_avm_address;
    wire [0:0] bb_gaussian_B7_out_lm1_gaussian_avm_burstcount;
    wire [7:0] bb_gaussian_B7_out_lm1_gaussian_avm_byteenable;
    wire [0:0] bb_gaussian_B7_out_lm1_gaussian_avm_enable;
    wire [0:0] bb_gaussian_B7_out_lm1_gaussian_avm_read;
    wire [0:0] bb_gaussian_B7_out_lm1_gaussian_avm_write;
    wire [63:0] bb_gaussian_B7_out_lm1_gaussian_avm_writedata;
    wire [63:0] bb_gaussian_B7_out_lm32_gaussian_avm_address;
    wire [0:0] bb_gaussian_B7_out_lm32_gaussian_avm_burstcount;
    wire [7:0] bb_gaussian_B7_out_lm32_gaussian_avm_byteenable;
    wire [0:0] bb_gaussian_B7_out_lm32_gaussian_avm_enable;
    wire [0:0] bb_gaussian_B7_out_lm32_gaussian_avm_read;
    wire [0:0] bb_gaussian_B7_out_lm32_gaussian_avm_write;
    wire [63:0] bb_gaussian_B7_out_lm32_gaussian_avm_writedata;
    wire [63:0] bb_gaussian_B7_out_lm53_gaussian_avm_address;
    wire [0:0] bb_gaussian_B7_out_lm53_gaussian_avm_burstcount;
    wire [7:0] bb_gaussian_B7_out_lm53_gaussian_avm_byteenable;
    wire [0:0] bb_gaussian_B7_out_lm53_gaussian_avm_enable;
    wire [0:0] bb_gaussian_B7_out_lm53_gaussian_avm_read;
    wire [0:0] bb_gaussian_B7_out_lm53_gaussian_avm_write;
    wire [63:0] bb_gaussian_B7_out_lm53_gaussian_avm_writedata;
    wire [0:0] bb_gaussian_B7_out_lsu_memdep_o_active;
    wire [0:0] bb_gaussian_B7_out_memdep;
    wire [63:0] bb_gaussian_B7_out_memdep_gaussian_avm_address;
    wire [0:0] bb_gaussian_B7_out_memdep_gaussian_avm_burstcount;
    wire [7:0] bb_gaussian_B7_out_memdep_gaussian_avm_byteenable;
    wire [0:0] bb_gaussian_B7_out_memdep_gaussian_avm_enable;
    wire [0:0] bb_gaussian_B7_out_memdep_gaussian_avm_read;
    wire [0:0] bb_gaussian_B7_out_memdep_gaussian_avm_write;
    wire [63:0] bb_gaussian_B7_out_memdep_gaussian_avm_writedata;
    wire [0:0] bb_gaussian_B7_out_notcmp3142_pop20;
    wire [0:0] bb_gaussian_B7_out_pipeline_valid_out;
    wire [0:0] bb_gaussian_B7_out_pop19;
    wire [0:0] bb_gaussian_B7_out_stall_in_0;
    wire [0:0] bb_gaussian_B7_out_stall_out_0;
    wire [0:0] bb_gaussian_B7_out_stall_out_1;
    wire [0:0] bb_gaussian_B7_out_valid_in_0;
    wire [0:0] bb_gaussian_B7_out_valid_in_1;
    wire [0:0] bb_gaussian_B7_out_valid_out_0;
    wire [1:0] c_i2_038_q;
    wire [31:0] c_i32_17_q;
    wire [31:0] c_i32_undef16_q;
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
    wire [0:0] i_llvm_fpga_pipeline_keep_going32_gaussian2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going32_gaussian2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going32_gaussian2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going32_gaussian2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going36_gaussian1_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going36_gaussian1_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going36_gaussian1_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going36_gaussian1_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gaussian4_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gaussian4_sr_out_o_valid;
    wire [0:0] loop_limiter_gaussian0_out_o_stall;
    wire [0:0] loop_limiter_gaussian0_out_o_valid;
    wire [0:0] loop_limiter_gaussian1_out_o_stall;
    wire [0:0] loop_limiter_gaussian1_out_o_valid;
    wire [0:0] loop_limiter_gaussian2_out_o_stall;
    wire [0:0] loop_limiter_gaussian2_out_o_valid;
    wire [0:0] bb_gaussian_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_gaussian_B2_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_gaussian_B2_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_gaussian_B3_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_gaussian_B3_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_gaussian_B4_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_gaussian_B4_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_gaussian_B4_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_gaussian_B4_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_gaussian_B4_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_gaussian_B4_sr_1_aunroll_x_out_o_valid;
    wire [31:0] bb_gaussian_B4_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_gaussian_B4_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_gaussian_B5_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_gaussian_B5_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_gaussian_B5_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_gaussian_B5_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_gaussian_B6_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_gaussian_B6_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_gaussian_B6_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_gaussian_B6_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_gaussian_B6_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_gaussian_B6_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_data_5_tpl;


    // c_i2_038(CONSTANT,35)
    assign c_i2_038_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going36_gaussian1_valid_fifo(BLACKBOX,49)
    gaussian_i_llvm_fpga_pipeline_keep_going36_1_valid_fifo thei_llvm_fpga_pipeline_keep_going36_gaussian1_valid_fifo (
        .in_data_in(c_i2_038_q),
        .in_stall_in(bb_gaussian_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going36_gaussian1_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going36_gaussian1_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going36_gaussian1_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B4_sr_0_aunroll_x(BLACKBOX,117)
    gaussian_bb_B4_sr_0 thebb_gaussian_B4_sr_0_aunroll_x (
        .in_i_stall(bb_gaussian_B4_out_stall_out_0),
        .in_i_valid(bb_gaussian_B2_out_valid_out_0),
        .in_i_data_0_tpl(bb_gaussian_B2_out_add40_push172),
        .in_i_data_1_tpl(GND_q),
        .out_o_stall(bb_gaussian_B4_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_gaussian_B4_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_gaussian_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_gaussian_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going32_gaussian2_valid_fifo(BLACKBOX,47)
    gaussian_i_llvm_fpga_pipeline_keep_going32_2_valid_fifo thei_llvm_fpga_pipeline_keep_going32_gaussian2_valid_fifo (
        .in_data_in(c_i2_038_q),
        .in_stall_in(bb_gaussian_B5_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going32_gaussian2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going32_gaussian2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going32_gaussian2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B6_sr_0_aunroll_x(BLACKBOX,120)
    gaussian_bb_B6_sr_0 thebb_gaussian_B6_sr_0_aunroll_x (
        .in_i_stall(bb_gaussian_B6_out_stall_out_0),
        .in_i_valid(bb_gaussian_B7_out_valid_out_0),
        .in_i_data_0_tpl(bb_gaussian_B7_out_memdep),
        .in_i_data_1_tpl(bb_gaussian_B7_out_add40_push17),
        .in_i_data_2_tpl(bb_gaussian_B7_out_pop19),
        .in_i_data_3_tpl(bb_gaussian_B7_out_notcmp3142_pop20),
        .out_o_stall(bb_gaussian_B6_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_gaussian_B6_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_gaussian_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_gaussian_B6_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_gaussian_B6_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_gaussian_B6_sr_0_aunroll_x_out_o_data_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_gaussian4_sr(BLACKBOX,50)
    gaussian_i_llvm_fpga_pipeline_keep_going_4_sr thei_llvm_fpga_pipeline_keep_going_gaussian4_sr (
        .in_i_data(GND_q),
        .in_i_stall(bb_gaussian_B7_out_stall_out_0),
        .in_i_valid(bb_gaussian_B7_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_gaussian4_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_gaussian4_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B7(BLACKBOX,9)
    gaussian_bb_B7 thebb_gaussian_B7 (
        .in_add39_pop1150_0(c_i32_undef16_q),
        .in_add39_pop1150_1(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_flush(in_start),
        .in_forked27_0(GND_q),
        .in_forked27_1(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_i_019_replace_phi47_0(c_i32_undef16_q),
        .in_i_019_replace_phi47_1(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_intel_reserved_ffwd_0_0(bb_gaussian_B1_start_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(bb_gaussian_B1_start_out_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_4_0(bb_gaussian_B4_out_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_9_0(bb_gaussian_B4_out_intel_reserved_ffwd_9_0),
        .in_lm1_gaussian_avm_readdata(in_lm1_gaussian_avm_readdata),
        .in_lm1_gaussian_avm_readdatavalid(in_lm1_gaussian_avm_readdatavalid),
        .in_lm1_gaussian_avm_waitrequest(in_lm1_gaussian_avm_waitrequest),
        .in_lm1_gaussian_avm_writeack(in_lm1_gaussian_avm_writeack),
        .in_lm32_gaussian_avm_readdata(in_lm32_gaussian_avm_readdata),
        .in_lm32_gaussian_avm_readdatavalid(in_lm32_gaussian_avm_readdatavalid),
        .in_lm32_gaussian_avm_waitrequest(in_lm32_gaussian_avm_waitrequest),
        .in_lm32_gaussian_avm_writeack(in_lm32_gaussian_avm_writeack),
        .in_lm53_gaussian_avm_readdata(in_lm53_gaussian_avm_readdata),
        .in_lm53_gaussian_avm_readdatavalid(in_lm53_gaussian_avm_readdatavalid),
        .in_lm53_gaussian_avm_waitrequest(in_lm53_gaussian_avm_waitrequest),
        .in_lm53_gaussian_avm_writeack(in_lm53_gaussian_avm_writeack),
        .in_memdep_gaussian_avm_readdata(in_memdep_gaussian_avm_readdata),
        .in_memdep_gaussian_avm_readdatavalid(in_memdep_gaussian_avm_readdatavalid),
        .in_memdep_gaussian_avm_waitrequest(in_memdep_gaussian_avm_waitrequest),
        .in_memdep_gaussian_avm_writeack(in_memdep_gaussian_avm_writeack),
        .in_memdep_phi_pop1049_0(GND_q),
        .in_memdep_phi_pop1049_1(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_notcmp3148_0(GND_q),
        .in_notcmp3148_1(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_gaussian4_sr_out_o_stall),
        .in_stall_in_0(bb_gaussian_B6_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_gaussian15_0(GND_q),
        .in_unnamed_gaussian15_1(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_gaussian4_sr_out_o_valid),
        .in_valid_in_1(bb_gaussian_B7_sr_1_aunroll_x_out_o_valid),
        .out_add40_push17(bb_gaussian_B7_out_add40_push17),
        .out_exiting_stall_out(bb_gaussian_B7_out_exiting_stall_out),
        .out_exiting_valid_out(bb_gaussian_B7_out_exiting_valid_out),
        .out_lm1_gaussian_avm_address(bb_gaussian_B7_out_lm1_gaussian_avm_address),
        .out_lm1_gaussian_avm_burstcount(bb_gaussian_B7_out_lm1_gaussian_avm_burstcount),
        .out_lm1_gaussian_avm_byteenable(bb_gaussian_B7_out_lm1_gaussian_avm_byteenable),
        .out_lm1_gaussian_avm_enable(bb_gaussian_B7_out_lm1_gaussian_avm_enable),
        .out_lm1_gaussian_avm_read(bb_gaussian_B7_out_lm1_gaussian_avm_read),
        .out_lm1_gaussian_avm_write(bb_gaussian_B7_out_lm1_gaussian_avm_write),
        .out_lm1_gaussian_avm_writedata(bb_gaussian_B7_out_lm1_gaussian_avm_writedata),
        .out_lm32_gaussian_avm_address(bb_gaussian_B7_out_lm32_gaussian_avm_address),
        .out_lm32_gaussian_avm_burstcount(bb_gaussian_B7_out_lm32_gaussian_avm_burstcount),
        .out_lm32_gaussian_avm_byteenable(bb_gaussian_B7_out_lm32_gaussian_avm_byteenable),
        .out_lm32_gaussian_avm_enable(bb_gaussian_B7_out_lm32_gaussian_avm_enable),
        .out_lm32_gaussian_avm_read(bb_gaussian_B7_out_lm32_gaussian_avm_read),
        .out_lm32_gaussian_avm_write(bb_gaussian_B7_out_lm32_gaussian_avm_write),
        .out_lm32_gaussian_avm_writedata(bb_gaussian_B7_out_lm32_gaussian_avm_writedata),
        .out_lm53_gaussian_avm_address(bb_gaussian_B7_out_lm53_gaussian_avm_address),
        .out_lm53_gaussian_avm_burstcount(bb_gaussian_B7_out_lm53_gaussian_avm_burstcount),
        .out_lm53_gaussian_avm_byteenable(bb_gaussian_B7_out_lm53_gaussian_avm_byteenable),
        .out_lm53_gaussian_avm_enable(bb_gaussian_B7_out_lm53_gaussian_avm_enable),
        .out_lm53_gaussian_avm_read(bb_gaussian_B7_out_lm53_gaussian_avm_read),
        .out_lm53_gaussian_avm_write(bb_gaussian_B7_out_lm53_gaussian_avm_write),
        .out_lm53_gaussian_avm_writedata(bb_gaussian_B7_out_lm53_gaussian_avm_writedata),
        .out_lsu_memdep_o_active(bb_gaussian_B7_out_lsu_memdep_o_active),
        .out_memdep(bb_gaussian_B7_out_memdep),
        .out_memdep_gaussian_avm_address(bb_gaussian_B7_out_memdep_gaussian_avm_address),
        .out_memdep_gaussian_avm_burstcount(bb_gaussian_B7_out_memdep_gaussian_avm_burstcount),
        .out_memdep_gaussian_avm_byteenable(bb_gaussian_B7_out_memdep_gaussian_avm_byteenable),
        .out_memdep_gaussian_avm_enable(bb_gaussian_B7_out_memdep_gaussian_avm_enable),
        .out_memdep_gaussian_avm_read(bb_gaussian_B7_out_memdep_gaussian_avm_read),
        .out_memdep_gaussian_avm_write(bb_gaussian_B7_out_memdep_gaussian_avm_write),
        .out_memdep_gaussian_avm_writedata(bb_gaussian_B7_out_memdep_gaussian_avm_writedata),
        .out_notcmp3142_pop20(bb_gaussian_B7_out_notcmp3142_pop20),
        .out_pipeline_valid_out(bb_gaussian_B7_out_pipeline_valid_out),
        .out_pop19(bb_gaussian_B7_out_pop19),
        .out_stall_in_0(bb_gaussian_B7_out_stall_in_0),
        .out_stall_out_0(bb_gaussian_B7_out_stall_out_0),
        .out_stall_out_1(bb_gaussian_B7_out_stall_out_1),
        .out_valid_in_0(bb_gaussian_B7_out_valid_in_0),
        .out_valid_in_1(bb_gaussian_B7_out_valid_in_1),
        .out_valid_out_0(bb_gaussian_B7_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B7_sr_1_aunroll_x(BLACKBOX,121)
    gaussian_bb_B7_sr_1 thebb_gaussian_B7_sr_1_aunroll_x (
        .in_i_stall(bb_gaussian_B7_out_stall_out_1),
        .in_i_valid(loop_limiter_gaussian2_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_gaussian_B5_out_c0_exe159),
        .in_i_data_2_tpl(bb_gaussian_B5_out_c0_exe2),
        .in_i_data_3_tpl(bb_gaussian_B5_out_c0_exe3),
        .in_i_data_4_tpl(bb_gaussian_B5_out_memdep_phi_pop10),
        .in_i_data_5_tpl(bb_gaussian_B5_out_c0_exe4),
        .out_o_stall(bb_gaussian_B7_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_gaussian_B7_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_5_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_gaussian2(BLACKBOX,79)
    gaussian_loop_limiter_2 theloop_limiter_gaussian2 (
        .in_i_stall(bb_gaussian_B7_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_gaussian_B7_out_exiting_stall_out),
        .in_i_valid(bb_gaussian_B5_out_valid_out_0),
        .in_i_valid_exit(bb_gaussian_B7_out_exiting_valid_out),
        .out_o_stall(loop_limiter_gaussian2_out_o_stall),
        .out_o_valid(loop_limiter_gaussian2_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going32_gaussian2_sr(BLACKBOX,46)
    gaussian_i_llvm_fpga_pipeline_keep_going32_2_sr thei_llvm_fpga_pipeline_keep_going32_gaussian2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going32_gaussian2_valid_fifo_out_stall_out),
        .in_i_valid(bb_gaussian_B5_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going32_gaussian2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going32_gaussian2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B6(BLACKBOX,8)
    gaussian_bb_B6 thebb_gaussian_B6 (
        .in_add40_push173_0(bb_gaussian_B6_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_feedback_stall_in_10(bb_gaussian_B5_out_feedback_stall_out_10),
        .in_memdep_1_0(bb_gaussian_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_notcmp3142_pop205_0(bb_gaussian_B6_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_pop194_0(bb_gaussian_B6_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_stall_in_0(bb_gaussian_B2_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_gaussian_B6_sr_0_aunroll_x_out_o_valid),
        .out_add40_push173(bb_gaussian_B6_out_add40_push173),
        .out_feedback_out_10(bb_gaussian_B6_out_feedback_out_10),
        .out_feedback_valid_out_10(bb_gaussian_B6_out_feedback_valid_out_10),
        .out_stall_in_0(bb_gaussian_B6_out_stall_in_0),
        .out_stall_out_0(bb_gaussian_B6_out_stall_out_0),
        .out_valid_out_0(bb_gaussian_B6_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef16(CONSTANT,38)
    assign c_i32_undef16_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_gaussian_B5(BLACKBOX,7)
    gaussian_bb_B5 thebb_gaussian_B5 (
        .in_add44_0(c_i32_undef16_q),
        .in_add44_1(bb_gaussian_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_feedback_in_10(bb_gaussian_B6_out_feedback_out_10),
        .in_feedback_valid_in_10(bb_gaussian_B6_out_feedback_valid_out_10),
        .in_forked21_0(GND_q),
        .in_forked21_1(bb_gaussian_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_7_0(bb_gaussian_B4_out_intel_reserved_ffwd_7_0),
        .in_intel_reserved_ffwd_8_0(bb_gaussian_B4_out_intel_reserved_ffwd_8_0),
        .in_intel_reserved_ffwd_9_0(bb_gaussian_B4_out_intel_reserved_ffwd_9_0),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going32_gaussian2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_gaussian2_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going32_gaussian2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_gaussian_B5_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe159(bb_gaussian_B5_out_c0_exe159),
        .out_c0_exe2(bb_gaussian_B5_out_c0_exe2),
        .out_c0_exe3(bb_gaussian_B5_out_c0_exe3),
        .out_c0_exe4(bb_gaussian_B5_out_c0_exe4),
        .out_exiting_stall_out(bb_gaussian_B5_out_exiting_stall_out),
        .out_exiting_valid_out(bb_gaussian_B5_out_exiting_valid_out),
        .out_feedback_stall_out_10(bb_gaussian_B5_out_feedback_stall_out_10),
        .out_memdep_phi_pop10(bb_gaussian_B5_out_memdep_phi_pop10),
        .out_pipeline_valid_out(bb_gaussian_B5_out_pipeline_valid_out),
        .out_stall_out_0(bb_gaussian_B5_out_stall_out_0),
        .out_stall_out_1(bb_gaussian_B5_out_stall_out_1),
        .out_valid_in_0(bb_gaussian_B5_out_valid_in_0),
        .out_valid_in_1(bb_gaussian_B5_out_valid_in_1),
        .out_valid_out_0(bb_gaussian_B5_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B5_sr_1_aunroll_x(BLACKBOX,119)
    gaussian_bb_B5_sr_1 thebb_gaussian_B5_sr_1_aunroll_x (
        .in_i_stall(bb_gaussian_B5_out_stall_out_1),
        .in_i_valid(loop_limiter_gaussian1_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_gaussian_B4_out_add),
        .out_o_stall(bb_gaussian_B5_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_gaussian_B5_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_gaussian_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_gaussian_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_gaussian1(BLACKBOX,78)
    gaussian_loop_limiter_1 theloop_limiter_gaussian1 (
        .in_i_stall(bb_gaussian_B5_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_gaussian_B5_out_exiting_stall_out),
        .in_i_valid(bb_gaussian_B4_out_valid_out_0),
        .in_i_valid_exit(bb_gaussian_B5_out_exiting_valid_out),
        .out_o_stall(loop_limiter_gaussian1_out_o_stall),
        .out_o_valid(loop_limiter_gaussian1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B4(BLACKBOX,6)
    gaussian_bb_B4 thebb_gaussian_B4 (
        .in_forked_0(bb_gaussian_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_forked_1(bb_gaussian_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_intel_reserved_ffwd_2_0(bb_gaussian_B2_out_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(bb_gaussian_B2_out_intel_reserved_ffwd_3_0),
        .in_j_020_0(bb_gaussian_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_j_020_1(bb_gaussian_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(loop_limiter_gaussian1_out_o_stall),
        .in_valid_in_0(bb_gaussian_B4_sr_0_aunroll_x_out_o_valid),
        .in_valid_in_1(bb_gaussian_B4_sr_1_aunroll_x_out_o_valid),
        .out_add(bb_gaussian_B4_out_add),
        .out_intel_reserved_ffwd_4_0(bb_gaussian_B4_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_5_0(bb_gaussian_B4_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_6_0(bb_gaussian_B4_out_intel_reserved_ffwd_6_0),
        .out_intel_reserved_ffwd_7_0(bb_gaussian_B4_out_intel_reserved_ffwd_7_0),
        .out_intel_reserved_ffwd_8_0(bb_gaussian_B4_out_intel_reserved_ffwd_8_0),
        .out_intel_reserved_ffwd_9_0(bb_gaussian_B4_out_intel_reserved_ffwd_9_0),
        .out_stall_out_0(bb_gaussian_B4_out_stall_out_0),
        .out_stall_out_1(bb_gaussian_B4_out_stall_out_1),
        .out_valid_in_0(bb_gaussian_B4_out_valid_in_0),
        .out_valid_in_1(bb_gaussian_B4_out_valid_in_1),
        .out_valid_out_0(bb_gaussian_B4_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B2_sr_0_aunroll_x(BLACKBOX,115)
    gaussian_bb_B2_sr_0 thebb_gaussian_B2_sr_0_aunroll_x (
        .in_i_stall(bb_gaussian_B2_out_stall_out_0),
        .in_i_valid(bb_gaussian_B6_out_valid_out_0),
        .in_i_data_0_tpl(bb_gaussian_B6_out_add40_push173),
        .out_o_stall(bb_gaussian_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_gaussian_B2_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_gaussian_B2_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B2(BLACKBOX,4)
    gaussian_bb_B2 thebb_gaussian_B2 (
        .in_add40_push172_0(bb_gaussian_B2_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_5_0(bb_gaussian_B4_out_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_6_0(bb_gaussian_B4_out_intel_reserved_ffwd_6_0),
        .in_intel_reserved_ffwd_9_0(bb_gaussian_B4_out_intel_reserved_ffwd_9_0),
        .in_stall_in_0(bb_gaussian_B4_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(bb_gaussian_B3_sr_0_aunroll_x_out_o_stall),
        .in_valid_in_0(bb_gaussian_B2_sr_0_aunroll_x_out_o_valid),
        .out_add40_push172(bb_gaussian_B2_out_add40_push172),
        .out_intel_reserved_ffwd_2_0(bb_gaussian_B2_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_gaussian_B2_out_intel_reserved_ffwd_3_0),
        .out_stall_in_0(bb_gaussian_B2_out_stall_in_0),
        .out_stall_out_0(bb_gaussian_B2_out_stall_out_0),
        .out_valid_out_0(bb_gaussian_B2_out_valid_out_0),
        .out_valid_out_1(bb_gaussian_B2_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B3_sr_0_aunroll_x(BLACKBOX,116)
    gaussian_bb_B3_sr_0 thebb_gaussian_B3_sr_0_aunroll_x (
        .in_i_stall(bb_gaussian_B3_out_stall_out_0),
        .in_i_valid(bb_gaussian_B2_out_valid_out_1),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_gaussian_B3_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_gaussian_B3_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_17(CONSTANT,37)
    assign c_i32_17_q = $unsigned(32'b00000000000000000000000000000001);

    // bb_gaussian_B4_sr_1_aunroll_x(BLACKBOX,118)
    gaussian_bb_B4_sr_1 thebb_gaussian_B4_sr_1_aunroll_x (
        .in_i_stall(bb_gaussian_B4_out_stall_out_1),
        .in_i_valid(loop_limiter_gaussian0_out_o_valid),
        .in_i_data_0_tpl(c_i32_17_q),
        .in_i_data_1_tpl(VCC_q),
        .out_o_stall(bb_gaussian_B4_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_gaussian_B4_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_gaussian_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_gaussian_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_gaussian0(BLACKBOX,77)
    gaussian_loop_limiter_0 theloop_limiter_gaussian0 (
        .in_i_stall(bb_gaussian_B4_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_gaussian_B3_sr_0_aunroll_x_out_o_stall),
        .in_i_valid(bb_gaussian_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_gaussian_B2_out_valid_out_1),
        .out_o_stall(loop_limiter_gaussian0_out_o_stall),
        .out_o_valid(loop_limiter_gaussian0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going36_gaussian1_sr(BLACKBOX,48)
    gaussian_i_llvm_fpga_pipeline_keep_going36_1_sr thei_llvm_fpga_pipeline_keep_going36_gaussian1_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going36_gaussian1_valid_fifo_out_stall_out),
        .in_i_valid(bb_gaussian_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going36_gaussian1_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going36_gaussian1_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B1_start(BLACKBOX,3)
    gaussian_bb_B1_start thebb_gaussian_B1_start (
        .in_feedback_in_1(bb_gaussian_B3_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_gaussian_B3_out_feedback_valid_out_1),
        .in_iord_bl_call_gaussian_i_fifodata(in_iord_bl_call_gaussian_i_fifodata),
        .in_iord_bl_call_gaussian_i_fifovalid(in_iord_bl_call_gaussian_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going36_gaussian1_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_gaussian0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going36_gaussian1_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_gaussian_B1_start_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_gaussian_B1_start_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_gaussian_B1_start_out_intel_reserved_ffwd_1_0),
        .out_iord_bl_call_gaussian_o_fifoalmost_full(bb_gaussian_B1_start_out_iord_bl_call_gaussian_o_fifoalmost_full),
        .out_iord_bl_call_gaussian_o_fifoready(bb_gaussian_B1_start_out_iord_bl_call_gaussian_o_fifoready),
        .out_pipeline_valid_out(bb_gaussian_B1_start_out_pipeline_valid_out),
        .out_stall_out_0(bb_gaussian_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_in_0(bb_gaussian_B1_start_out_valid_in_0),
        .out_valid_in_1(bb_gaussian_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_gaussian_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B3(BLACKBOX,5)
    gaussian_bb_B3 thebb_gaussian_B3 (
        .in_feedback_stall_in_1(bb_gaussian_B1_start_out_feedback_stall_out_1),
        .in_iowr_bl_return_gaussian_i_fifoready(in_iowr_bl_return_gaussian_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_gaussian_B3_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_gaussian_B3_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_gaussian_B3_out_feedback_valid_out_1),
        .out_iowr_bl_return_gaussian_o_fifodata(bb_gaussian_B3_out_iowr_bl_return_gaussian_o_fifodata),
        .out_iowr_bl_return_gaussian_o_fifovalid(bb_gaussian_B3_out_iowr_bl_return_gaussian_o_fifovalid),
        .out_stall_in_0(bb_gaussian_B3_out_stall_in_0),
        .out_stall_out_0(bb_gaussian_B3_out_stall_out_0),
        .out_valid_out_0(bb_gaussian_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // gaussian_B1_start_x(EXTIFACE,42)
    assign gaussian_B1_start_x_i_capture = GND_q;
    assign gaussian_B1_start_x_i_clear = GND_q;
    assign gaussian_B1_start_x_i_enable = VCC_q;
    assign gaussian_B1_start_x_i_shift = GND_q;
    assign gaussian_B1_start_x_i_stall_pred = GND_q;
    assign gaussian_B1_start_x_i_stall_succ = bb_gaussian_B3_out_stall_in_0;
    assign gaussian_B1_start_x_i_valid_loop = bb_gaussian_B1_start_out_valid_in_0;
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
        .resetn(resetn)
    );

    // gaussian_B4_x(EXTIFACE,43)
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
        .resetn(resetn)
    );

    // gaussian_B5_x(EXTIFACE,44)
    assign gaussian_B5_x_i_capture = GND_q;
    assign gaussian_B5_x_i_clear = GND_q;
    assign gaussian_B5_x_i_enable = VCC_q;
    assign gaussian_B5_x_i_shift = GND_q;
    assign gaussian_B5_x_i_stall_pred = loop_limiter_gaussian1_out_o_stall;
    assign gaussian_B5_x_i_stall_succ = bb_gaussian_B6_out_stall_in_0;
    assign gaussian_B5_x_i_valid_loop = bb_gaussian_B5_out_valid_in_0;
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
        .resetn(resetn)
    );

    // gaussian_B7_x(EXTIFACE,45)
    assign gaussian_B7_x_i_capture = GND_q;
    assign gaussian_B7_x_i_clear = GND_q;
    assign gaussian_B7_x_i_enable = VCC_q;
    assign gaussian_B7_x_i_shift = GND_q;
    assign gaussian_B7_x_i_stall_pred = loop_limiter_gaussian2_out_o_stall;
    assign gaussian_B7_x_i_stall_succ = bb_gaussian_B7_out_stall_in_0;
    assign gaussian_B7_x_i_valid_loop = bb_gaussian_B7_out_valid_in_0;
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
        .resetn(resetn)
    );

    // out_iord_bl_call_gaussian_o_fifoalmost_full(GPOUT,80)
    assign out_iord_bl_call_gaussian_o_fifoalmost_full = bb_gaussian_B1_start_out_iord_bl_call_gaussian_o_fifoalmost_full;

    // out_iord_bl_call_gaussian_o_fifoready(GPOUT,81)
    assign out_iord_bl_call_gaussian_o_fifoready = bb_gaussian_B1_start_out_iord_bl_call_gaussian_o_fifoready;

    // out_iowr_bl_return_gaussian_o_fifodata(GPOUT,82)
    assign out_iowr_bl_return_gaussian_o_fifodata = bb_gaussian_B3_out_iowr_bl_return_gaussian_o_fifodata;

    // out_iowr_bl_return_gaussian_o_fifovalid(GPOUT,83)
    assign out_iowr_bl_return_gaussian_o_fifovalid = bb_gaussian_B3_out_iowr_bl_return_gaussian_o_fifovalid;

    // out_lm1_gaussian_avm_address(GPOUT,84)
    assign out_lm1_gaussian_avm_address = bb_gaussian_B7_out_lm1_gaussian_avm_address;

    // out_lm1_gaussian_avm_burstcount(GPOUT,85)
    assign out_lm1_gaussian_avm_burstcount = bb_gaussian_B7_out_lm1_gaussian_avm_burstcount;

    // out_lm1_gaussian_avm_byteenable(GPOUT,86)
    assign out_lm1_gaussian_avm_byteenable = bb_gaussian_B7_out_lm1_gaussian_avm_byteenable;

    // out_lm1_gaussian_avm_enable(GPOUT,87)
    assign out_lm1_gaussian_avm_enable = bb_gaussian_B7_out_lm1_gaussian_avm_enable;

    // out_lm1_gaussian_avm_read(GPOUT,88)
    assign out_lm1_gaussian_avm_read = bb_gaussian_B7_out_lm1_gaussian_avm_read;

    // out_lm1_gaussian_avm_write(GPOUT,89)
    assign out_lm1_gaussian_avm_write = bb_gaussian_B7_out_lm1_gaussian_avm_write;

    // out_lm1_gaussian_avm_writedata(GPOUT,90)
    assign out_lm1_gaussian_avm_writedata = bb_gaussian_B7_out_lm1_gaussian_avm_writedata;

    // out_lm32_gaussian_avm_address(GPOUT,91)
    assign out_lm32_gaussian_avm_address = bb_gaussian_B7_out_lm32_gaussian_avm_address;

    // out_lm32_gaussian_avm_burstcount(GPOUT,92)
    assign out_lm32_gaussian_avm_burstcount = bb_gaussian_B7_out_lm32_gaussian_avm_burstcount;

    // out_lm32_gaussian_avm_byteenable(GPOUT,93)
    assign out_lm32_gaussian_avm_byteenable = bb_gaussian_B7_out_lm32_gaussian_avm_byteenable;

    // out_lm32_gaussian_avm_enable(GPOUT,94)
    assign out_lm32_gaussian_avm_enable = bb_gaussian_B7_out_lm32_gaussian_avm_enable;

    // out_lm32_gaussian_avm_read(GPOUT,95)
    assign out_lm32_gaussian_avm_read = bb_gaussian_B7_out_lm32_gaussian_avm_read;

    // out_lm32_gaussian_avm_write(GPOUT,96)
    assign out_lm32_gaussian_avm_write = bb_gaussian_B7_out_lm32_gaussian_avm_write;

    // out_lm32_gaussian_avm_writedata(GPOUT,97)
    assign out_lm32_gaussian_avm_writedata = bb_gaussian_B7_out_lm32_gaussian_avm_writedata;

    // out_lm53_gaussian_avm_address(GPOUT,98)
    assign out_lm53_gaussian_avm_address = bb_gaussian_B7_out_lm53_gaussian_avm_address;

    // out_lm53_gaussian_avm_burstcount(GPOUT,99)
    assign out_lm53_gaussian_avm_burstcount = bb_gaussian_B7_out_lm53_gaussian_avm_burstcount;

    // out_lm53_gaussian_avm_byteenable(GPOUT,100)
    assign out_lm53_gaussian_avm_byteenable = bb_gaussian_B7_out_lm53_gaussian_avm_byteenable;

    // out_lm53_gaussian_avm_enable(GPOUT,101)
    assign out_lm53_gaussian_avm_enable = bb_gaussian_B7_out_lm53_gaussian_avm_enable;

    // out_lm53_gaussian_avm_read(GPOUT,102)
    assign out_lm53_gaussian_avm_read = bb_gaussian_B7_out_lm53_gaussian_avm_read;

    // out_lm53_gaussian_avm_write(GPOUT,103)
    assign out_lm53_gaussian_avm_write = bb_gaussian_B7_out_lm53_gaussian_avm_write;

    // out_lm53_gaussian_avm_writedata(GPOUT,104)
    assign out_lm53_gaussian_avm_writedata = bb_gaussian_B7_out_lm53_gaussian_avm_writedata;

    // out_memdep_gaussian_avm_address(GPOUT,105)
    assign out_memdep_gaussian_avm_address = bb_gaussian_B7_out_memdep_gaussian_avm_address;

    // out_memdep_gaussian_avm_burstcount(GPOUT,106)
    assign out_memdep_gaussian_avm_burstcount = bb_gaussian_B7_out_memdep_gaussian_avm_burstcount;

    // out_memdep_gaussian_avm_byteenable(GPOUT,107)
    assign out_memdep_gaussian_avm_byteenable = bb_gaussian_B7_out_memdep_gaussian_avm_byteenable;

    // out_memdep_gaussian_avm_enable(GPOUT,108)
    assign out_memdep_gaussian_avm_enable = bb_gaussian_B7_out_memdep_gaussian_avm_enable;

    // out_memdep_gaussian_avm_read(GPOUT,109)
    assign out_memdep_gaussian_avm_read = bb_gaussian_B7_out_memdep_gaussian_avm_read;

    // out_memdep_gaussian_avm_write(GPOUT,110)
    assign out_memdep_gaussian_avm_write = bb_gaussian_B7_out_memdep_gaussian_avm_write;

    // out_memdep_gaussian_avm_writedata(GPOUT,111)
    assign out_memdep_gaussian_avm_writedata = bb_gaussian_B7_out_memdep_gaussian_avm_writedata;

    // out_o_active_memdep(GPOUT,112)
    assign out_o_active_memdep = bb_gaussian_B7_out_lsu_memdep_o_active;

    // bb_gaussian_B0_runOnce(BLACKBOX,2)
    gaussian_bb_B0_runOnce thebb_gaussian_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_gaussian_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,113)
    assign out_stall_out = bb_gaussian_B0_runOnce_out_stall_out_0;

    // out_valid_out(GPOUT,114)
    assign out_valid_out = GND_q;

endmodule
