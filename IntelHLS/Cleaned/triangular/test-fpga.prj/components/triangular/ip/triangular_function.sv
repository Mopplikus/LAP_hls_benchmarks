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
// SystemVerilog created on Wed Jun 14 20:51:12 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_function (
    input wire [63:0] in_arg_A,
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_return,
    input wire [63:0] in_arg_x,
    input wire [191:0] in_iord_bl_call_triangular_i_fifodata,
    input wire [0:0] in_iord_bl_call_triangular_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_triangular_i_fifoready,
    input wire [31:0] in_lm1_triangular_avm_readdata,
    input wire [0:0] in_lm1_triangular_avm_readdatavalid,
    input wire [0:0] in_lm1_triangular_avm_waitrequest,
    input wire [0:0] in_lm1_triangular_avm_writeack,
    input wire [31:0] in_lm62_triangular_avm_readdata,
    input wire [0:0] in_lm62_triangular_avm_readdatavalid,
    input wire [0:0] in_lm62_triangular_avm_waitrequest,
    input wire [0:0] in_lm62_triangular_avm_writeack,
    input wire [31:0] in_lm83_triangular_avm_readdata,
    input wire [0:0] in_lm83_triangular_avm_readdatavalid,
    input wire [0:0] in_lm83_triangular_avm_waitrequest,
    input wire [0:0] in_lm83_triangular_avm_writeack,
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
    output wire [31:0] out_lm1_triangular_avm_address,
    output wire [0:0] out_lm1_triangular_avm_burstcount,
    output wire [3:0] out_lm1_triangular_avm_byteenable,
    output wire [0:0] out_lm1_triangular_avm_enable,
    output wire [0:0] out_lm1_triangular_avm_read,
    output wire [0:0] out_lm1_triangular_avm_write,
    output wire [31:0] out_lm1_triangular_avm_writedata,
    output wire [31:0] out_lm62_triangular_avm_address,
    output wire [0:0] out_lm62_triangular_avm_burstcount,
    output wire [3:0] out_lm62_triangular_avm_byteenable,
    output wire [0:0] out_lm62_triangular_avm_enable,
    output wire [0:0] out_lm62_triangular_avm_read,
    output wire [0:0] out_lm62_triangular_avm_write,
    output wire [31:0] out_lm62_triangular_avm_writedata,
    output wire [31:0] out_lm83_triangular_avm_address,
    output wire [0:0] out_lm83_triangular_avm_burstcount,
    output wire [3:0] out_lm83_triangular_avm_byteenable,
    output wire [0:0] out_lm83_triangular_avm_enable,
    output wire [0:0] out_lm83_triangular_avm_read,
    output wire [0:0] out_lm83_triangular_avm_write,
    output wire [31:0] out_lm83_triangular_avm_writedata,
    output wire [31:0] out_memdep_triangular_avm_address,
    output wire [0:0] out_memdep_triangular_avm_burstcount,
    output wire [3:0] out_memdep_triangular_avm_byteenable,
    output wire [0:0] out_memdep_triangular_avm_enable,
    output wire [0:0] out_memdep_triangular_avm_read,
    output wire [0:0] out_memdep_triangular_avm_write,
    output wire [31:0] out_memdep_triangular_avm_writedata,
    output wire [0:0] out_o_active_memdep,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_triangular_B2_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_triangular_B2_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_triangular_B2_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_triangular_B2_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_triangular_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_triangular_B2_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_triangular_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_triangular_B3_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_triangular_B3_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_triangular_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_triangular_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_triangular_B4_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_triangular_B4_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_triangular_B4_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [32:0] bb_triangular_B4_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_triangular_B4_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_triangular_B4_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_triangular_B4_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [63:0] bb_triangular_B4_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_triangular_B4_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_triangular_B4_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_triangular_B4_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [31:0] bb_triangular_B4_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [31:0] bb_triangular_B4_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [0:0] bb_triangular_B4_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_triangular_B4_sr_1_aunroll_x_out_o_valid;
    wire [31:0] bb_triangular_B5_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_triangular_B5_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_triangular_B5_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_triangular_B0_runOnce_out_stall_out_0;
    wire [31:0] bb_triangular_B1_start_out_c1_exe1;
    wire [0:0] bb_triangular_B1_start_out_feedback_stall_out_1;
    wire [63:0] bb_triangular_B1_start_out_intel_reserved_ffwd_0_0;
    wire [31:0] bb_triangular_B1_start_out_intel_reserved_ffwd_1_0;
    wire [0:0] bb_triangular_B1_start_out_intel_reserved_ffwd_2_0;
    wire [63:0] bb_triangular_B1_start_out_intel_reserved_ffwd_3_0;
    wire [31:0] bb_triangular_B1_start_out_intel_reserved_ffwd_4_0;
    wire [32:0] bb_triangular_B1_start_out_intel_reserved_ffwd_5_0;
    wire [0:0] bb_triangular_B1_start_out_iord_bl_call_triangular_o_fifoalmost_full;
    wire [0:0] bb_triangular_B1_start_out_iord_bl_call_triangular_o_fifoready;
    wire [0:0] bb_triangular_B1_start_out_pipeline_valid_out;
    wire [31:0] bb_triangular_B1_start_out_reorder_limiter_enter;
    wire [0:0] bb_triangular_B1_start_out_stall_out_0;
    wire [0:0] bb_triangular_B1_start_out_valid_in_0;
    wire [0:0] bb_triangular_B1_start_out_valid_in_1;
    wire [0:0] bb_triangular_B1_start_out_valid_out_0;
    wire [0:0] bb_triangular_B1_start_out_wgl_6_enter_exit_stall_out;
    wire [0:0] bb_triangular_B1_start_out_wgl_6_enter_exit_valid_out;
    wire [31:0] bb_triangular_B2_out_c0_exe7963;
    wire [0:0] bb_triangular_B2_out_feedback_out_13;
    wire [0:0] bb_triangular_B2_out_feedback_valid_out_13;
    wire [0:0] bb_triangular_B2_out_stall_in_0;
    wire [0:0] bb_triangular_B2_out_stall_out_0;
    wire [0:0] bb_triangular_B2_out_valid_out_0;
    wire [31:0] bb_triangular_B3_out_c0_exe11;
    wire [31:0] bb_triangular_B3_out_c0_exe12;
    wire [32:0] bb_triangular_B3_out_c0_exe168;
    wire [31:0] bb_triangular_B3_out_c0_exe269;
    wire [31:0] bb_triangular_B3_out_c0_exe3;
    wire [0:0] bb_triangular_B3_out_c0_exe4;
    wire [63:0] bb_triangular_B3_out_c0_exe5;
    wire [0:0] bb_triangular_B3_out_c0_exe6;
    wire [0:0] bb_triangular_B3_out_c0_exe7;
    wire [31:0] bb_triangular_B3_out_c0_exe8;
    wire [31:0] bb_triangular_B3_out_c0_exe9;
    wire [0:0] bb_triangular_B3_out_exiting_stall_out;
    wire [0:0] bb_triangular_B3_out_exiting_valid_out;
    wire [0:0] bb_triangular_B3_out_feedback_stall_out_13;
    wire [0:0] bb_triangular_B3_out_memdep_phi4_pop13;
    wire [0:0] bb_triangular_B3_out_pipeline_valid_out;
    wire [0:0] bb_triangular_B3_out_stall_out_0;
    wire [0:0] bb_triangular_B3_out_stall_out_1;
    wire [0:0] bb_triangular_B3_out_valid_in_0;
    wire [0:0] bb_triangular_B3_out_valid_in_1;
    wire [0:0] bb_triangular_B3_out_valid_out_0;
    wire [0:0] bb_triangular_B4_out_c0_exe695;
    wire [31:0] bb_triangular_B4_out_c0_exe796;
    wire [0:0] bb_triangular_B4_out_c0_exe897;
    wire [0:0] bb_triangular_B4_out_exiting_stall_out;
    wire [0:0] bb_triangular_B4_out_exiting_valid_out;
    wire [31:0] bb_triangular_B4_out_lm1_triangular_avm_address;
    wire [0:0] bb_triangular_B4_out_lm1_triangular_avm_burstcount;
    wire [3:0] bb_triangular_B4_out_lm1_triangular_avm_byteenable;
    wire [0:0] bb_triangular_B4_out_lm1_triangular_avm_enable;
    wire [0:0] bb_triangular_B4_out_lm1_triangular_avm_read;
    wire [0:0] bb_triangular_B4_out_lm1_triangular_avm_write;
    wire [31:0] bb_triangular_B4_out_lm1_triangular_avm_writedata;
    wire [31:0] bb_triangular_B4_out_lm62_triangular_avm_address;
    wire [0:0] bb_triangular_B4_out_lm62_triangular_avm_burstcount;
    wire [3:0] bb_triangular_B4_out_lm62_triangular_avm_byteenable;
    wire [0:0] bb_triangular_B4_out_lm62_triangular_avm_enable;
    wire [0:0] bb_triangular_B4_out_lm62_triangular_avm_read;
    wire [0:0] bb_triangular_B4_out_lm62_triangular_avm_write;
    wire [31:0] bb_triangular_B4_out_lm62_triangular_avm_writedata;
    wire [31:0] bb_triangular_B4_out_lm83_triangular_avm_address;
    wire [0:0] bb_triangular_B4_out_lm83_triangular_avm_burstcount;
    wire [3:0] bb_triangular_B4_out_lm83_triangular_avm_byteenable;
    wire [0:0] bb_triangular_B4_out_lm83_triangular_avm_enable;
    wire [0:0] bb_triangular_B4_out_lm83_triangular_avm_read;
    wire [0:0] bb_triangular_B4_out_lm83_triangular_avm_write;
    wire [31:0] bb_triangular_B4_out_lm83_triangular_avm_writedata;
    wire [0:0] bb_triangular_B4_out_lsu_memdep_o_active;
    wire [0:0] bb_triangular_B4_out_memdep;
    wire [31:0] bb_triangular_B4_out_memdep_triangular_avm_address;
    wire [0:0] bb_triangular_B4_out_memdep_triangular_avm_burstcount;
    wire [3:0] bb_triangular_B4_out_memdep_triangular_avm_byteenable;
    wire [0:0] bb_triangular_B4_out_memdep_triangular_avm_enable;
    wire [0:0] bb_triangular_B4_out_memdep_triangular_avm_read;
    wire [0:0] bb_triangular_B4_out_memdep_triangular_avm_write;
    wire [31:0] bb_triangular_B4_out_memdep_triangular_avm_writedata;
    wire [0:0] bb_triangular_B4_out_pipeline_valid_out;
    wire [0:0] bb_triangular_B4_out_stall_in_0;
    wire [0:0] bb_triangular_B4_out_stall_out_0;
    wire [0:0] bb_triangular_B4_out_stall_out_1;
    wire [0:0] bb_triangular_B4_out_valid_in_0;
    wire [0:0] bb_triangular_B4_out_valid_in_1;
    wire [0:0] bb_triangular_B4_out_valid_out_0;
    wire [0:0] bb_triangular_B5_out_feedback_out_1;
    wire [0:0] bb_triangular_B5_out_feedback_valid_out_1;
    wire [0:0] bb_triangular_B5_out_iowr_bl_return_triangular_o_fifodata;
    wire [0:0] bb_triangular_B5_out_iowr_bl_return_triangular_o_fifovalid;
    wire [0:0] bb_triangular_B5_out_stall_in_0;
    wire [0:0] bb_triangular_B5_out_stall_out_0;
    wire [0:0] bb_triangular_B5_out_valid_out_0;
    wire [0:0] bb_triangular_B5_out_wgl_6_exit_exit_stall_in;
    wire [0:0] bb_triangular_B5_out_wgl_6_exit_exit_valid_in;
    wire [1:0] c_i2_050_q;
    wire [63:0] c_i32_addrspace_1025_undef35_q;
    wire [31:0] c_i32_undef15_q;
    wire [32:0] c_i33_undef27_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_triangular2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_triangular2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_triangular2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_triangular2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going32_triangular2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going32_triangular2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going32_triangular2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going32_triangular2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_triangular6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_triangular6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_triangular6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_triangular6_valid_fifo_out_valid_out;
    wire [0:0] loop_limiter_triangular0_out_o_stall;
    wire [0:0] loop_limiter_triangular0_out_o_valid;
    wire [0:0] loop_limiter_triangular1_out_o_stall;
    wire [0:0] loop_limiter_triangular1_out_o_valid;
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
    wire [0:0] triangular_B3_x_i_capture;
    wire triangular_B3_x_i_capture_bitsignaltemp;
    wire [0:0] triangular_B3_x_i_clear;
    wire triangular_B3_x_i_clear_bitsignaltemp;
    wire [0:0] triangular_B3_x_i_enable;
    wire triangular_B3_x_i_enable_bitsignaltemp;
    wire [0:0] triangular_B3_x_i_shift;
    wire triangular_B3_x_i_shift_bitsignaltemp;
    wire [0:0] triangular_B3_x_i_stall_pred;
    wire triangular_B3_x_i_stall_pred_bitsignaltemp;
    wire [0:0] triangular_B3_x_i_stall_succ;
    wire triangular_B3_x_i_stall_succ_bitsignaltemp;
    wire [0:0] triangular_B3_x_i_valid_loop;
    wire triangular_B3_x_i_valid_loop_bitsignaltemp;
    wire [0:0] triangular_B3_x_i_valid_pred;
    wire triangular_B3_x_i_valid_pred_bitsignaltemp;
    wire [0:0] triangular_B3_x_i_valid_succ;
    wire triangular_B3_x_i_valid_succ_bitsignaltemp;
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


    // c_i2_050(CONSTANT,35)
    assign c_i2_050_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going32_triangular2_valid_fifo(BLACKBOX,52)
    triangular_i_llvm_fpga_pipeline_keep_going32_2_valid_fifo thei_llvm_fpga_pipeline_keep_going32_triangular2_valid_fifo (
        .in_data_in(c_i2_050_q),
        .in_stall_in(bb_triangular_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going32_triangular2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going32_triangular2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going32_triangular2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going28_triangular2_valid_fifo(BLACKBOX,50)
    triangular_i_llvm_fpga_pipeline_keep_going28_2_valid_fifo thei_llvm_fpga_pipeline_keep_going28_triangular2_valid_fifo (
        .in_data_in(c_i2_050_q),
        .in_stall_in(bb_triangular_B3_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going28_triangular2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going28_triangular2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going28_triangular2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_triangular6_valid_fifo(BLACKBOX,54)
    triangular_i_llvm_fpga_pipeline_keep_going_6_valid_fifo thei_llvm_fpga_pipeline_keep_going_triangular6_valid_fifo (
        .in_data_in(c_i2_050_q),
        .in_stall_in(bb_triangular_B4_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_triangular6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_triangular6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_triangular6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef27(CONSTANT,47)
    assign c_i33_undef27_q = $unsigned(33'b000000000000000000000000000000000);

    // bb_triangular_B2_sr_0_aunroll_x(BLACKBOX,2)
    triangular_bb_B2_sr_0 thebb_triangular_B2_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_triangular_B4_out_c0_exe695),
        .in_i_data_1_tpl(bb_triangular_B4_out_c0_exe796),
        .in_i_data_2_tpl(bb_triangular_B4_out_c0_exe897),
        .in_i_data_3_tpl(bb_triangular_B4_out_memdep),
        .in_i_stall(bb_triangular_B2_out_stall_out_0),
        .in_i_valid(bb_triangular_B4_out_valid_out_0),
        .out_o_data_0_tpl(bb_triangular_B2_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_triangular_B2_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_triangular_B2_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_triangular_B2_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_stall(bb_triangular_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_triangular_B2_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_triangular6_sr(BLACKBOX,53)
    triangular_i_llvm_fpga_pipeline_keep_going_6_sr thei_llvm_fpga_pipeline_keep_going_triangular6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_triangular6_valid_fifo_out_stall_out),
        .in_i_valid(bb_triangular_B4_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_triangular6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_triangular6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_addrspace_1025_undef35(CONSTANT,38)
    assign c_i32_addrspace_1025_undef35_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // bb_triangular_B4(BLACKBOX,10)
    triangular_bb_B4 thebb_triangular_B4 (
        .in_flush(in_start),
        .in_forked23_0(GND_q),
        .in_forked23_1(bb_triangular_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_i_03650_0(c_i32_undef15_q),
        .in_i_03650_1(bb_triangular_B4_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_intel_reserved_ffwd_0_0(bb_triangular_B1_start_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(bb_triangular_B1_start_out_intel_reserved_ffwd_1_0),
        .in_lim_ext35_pop1455_0(c_i32_undef15_q),
        .in_lim_ext35_pop1455_1(bb_triangular_B4_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_lim_ext46_0(c_i32_undef15_q),
        .in_lim_ext46_1(bb_triangular_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_lm1_triangular_avm_readdata(in_lm1_triangular_avm_readdata),
        .in_lm1_triangular_avm_readdatavalid(in_lm1_triangular_avm_readdatavalid),
        .in_lm1_triangular_avm_waitrequest(in_lm1_triangular_avm_waitrequest),
        .in_lm1_triangular_avm_writeack(in_lm1_triangular_avm_writeack),
        .in_lm62_triangular_avm_readdata(in_lm62_triangular_avm_readdata),
        .in_lm62_triangular_avm_readdatavalid(in_lm62_triangular_avm_readdatavalid),
        .in_lm62_triangular_avm_waitrequest(in_lm62_triangular_avm_waitrequest),
        .in_lm62_triangular_avm_writeack(in_lm62_triangular_avm_writeack),
        .in_lm83_triangular_avm_readdata(in_lm83_triangular_avm_readdata),
        .in_lm83_triangular_avm_readdatavalid(in_lm83_triangular_avm_readdatavalid),
        .in_lm83_triangular_avm_waitrequest(in_lm83_triangular_avm_waitrequest),
        .in_lm83_triangular_avm_writeack(in_lm83_triangular_avm_writeack),
        .in_mPtr_bitcast_index52_0(c_i32_addrspace_1025_undef35_q),
        .in_mPtr_bitcast_index52_1(bb_triangular_B4_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_memdep_phi4_pop1354_0(GND_q),
        .in_memdep_phi4_pop1354_1(bb_triangular_B4_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_memdep_triangular_avm_readdata(in_memdep_triangular_avm_readdata),
        .in_memdep_triangular_avm_readdatavalid(in_memdep_triangular_avm_readdatavalid),
        .in_memdep_triangular_avm_waitrequest(in_memdep_triangular_avm_waitrequest),
        .in_memdep_triangular_avm_writeack(in_memdep_triangular_avm_writeack),
        .in_notcmp2753_0(GND_q),
        .in_notcmp2753_1(bb_triangular_B4_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_triangular6_sr_out_o_stall),
        .in_reorder_limiter_enter37_pop1556_0(c_i32_undef15_q),
        .in_reorder_limiter_enter37_pop1556_1(bb_triangular_B4_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_reorder_limiter_enter49_0(c_i32_undef15_q),
        .in_reorder_limiter_enter49_1(bb_triangular_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_stall_in_0(bb_triangular_B2_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_sub151_0(c_i32_undef15_q),
        .in_sub151_1(bb_triangular_B4_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_unnamed_triangular11_0(c_i33_undef27_q),
        .in_unnamed_triangular11_1(bb_triangular_B4_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_unnamed_triangular12_0(GND_q),
        .in_unnamed_triangular12_1(bb_triangular_B4_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_unnamed_triangular13_0(GND_q),
        .in_unnamed_triangular13_1(bb_triangular_B4_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_triangular6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_triangular_B4_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe695(bb_triangular_B4_out_c0_exe695),
        .out_c0_exe796(bb_triangular_B4_out_c0_exe796),
        .out_c0_exe897(bb_triangular_B4_out_c0_exe897),
        .out_exiting_stall_out(bb_triangular_B4_out_exiting_stall_out),
        .out_exiting_valid_out(bb_triangular_B4_out_exiting_valid_out),
        .out_lm1_triangular_avm_address(bb_triangular_B4_out_lm1_triangular_avm_address),
        .out_lm1_triangular_avm_burstcount(bb_triangular_B4_out_lm1_triangular_avm_burstcount),
        .out_lm1_triangular_avm_byteenable(bb_triangular_B4_out_lm1_triangular_avm_byteenable),
        .out_lm1_triangular_avm_enable(bb_triangular_B4_out_lm1_triangular_avm_enable),
        .out_lm1_triangular_avm_read(bb_triangular_B4_out_lm1_triangular_avm_read),
        .out_lm1_triangular_avm_write(bb_triangular_B4_out_lm1_triangular_avm_write),
        .out_lm1_triangular_avm_writedata(bb_triangular_B4_out_lm1_triangular_avm_writedata),
        .out_lm62_triangular_avm_address(bb_triangular_B4_out_lm62_triangular_avm_address),
        .out_lm62_triangular_avm_burstcount(bb_triangular_B4_out_lm62_triangular_avm_burstcount),
        .out_lm62_triangular_avm_byteenable(bb_triangular_B4_out_lm62_triangular_avm_byteenable),
        .out_lm62_triangular_avm_enable(bb_triangular_B4_out_lm62_triangular_avm_enable),
        .out_lm62_triangular_avm_read(bb_triangular_B4_out_lm62_triangular_avm_read),
        .out_lm62_triangular_avm_write(bb_triangular_B4_out_lm62_triangular_avm_write),
        .out_lm62_triangular_avm_writedata(bb_triangular_B4_out_lm62_triangular_avm_writedata),
        .out_lm83_triangular_avm_address(bb_triangular_B4_out_lm83_triangular_avm_address),
        .out_lm83_triangular_avm_burstcount(bb_triangular_B4_out_lm83_triangular_avm_burstcount),
        .out_lm83_triangular_avm_byteenable(bb_triangular_B4_out_lm83_triangular_avm_byteenable),
        .out_lm83_triangular_avm_enable(bb_triangular_B4_out_lm83_triangular_avm_enable),
        .out_lm83_triangular_avm_read(bb_triangular_B4_out_lm83_triangular_avm_read),
        .out_lm83_triangular_avm_write(bb_triangular_B4_out_lm83_triangular_avm_write),
        .out_lm83_triangular_avm_writedata(bb_triangular_B4_out_lm83_triangular_avm_writedata),
        .out_lsu_memdep_o_active(bb_triangular_B4_out_lsu_memdep_o_active),
        .out_memdep(bb_triangular_B4_out_memdep),
        .out_memdep_triangular_avm_address(bb_triangular_B4_out_memdep_triangular_avm_address),
        .out_memdep_triangular_avm_burstcount(bb_triangular_B4_out_memdep_triangular_avm_burstcount),
        .out_memdep_triangular_avm_byteenable(bb_triangular_B4_out_memdep_triangular_avm_byteenable),
        .out_memdep_triangular_avm_enable(bb_triangular_B4_out_memdep_triangular_avm_enable),
        .out_memdep_triangular_avm_read(bb_triangular_B4_out_memdep_triangular_avm_read),
        .out_memdep_triangular_avm_write(bb_triangular_B4_out_memdep_triangular_avm_write),
        .out_memdep_triangular_avm_writedata(bb_triangular_B4_out_memdep_triangular_avm_writedata),
        .out_pipeline_valid_out(bb_triangular_B4_out_pipeline_valid_out),
        .out_stall_in_0(bb_triangular_B4_out_stall_in_0),
        .out_stall_out_0(bb_triangular_B4_out_stall_out_0),
        .out_stall_out_1(bb_triangular_B4_out_stall_out_1),
        .out_valid_in_0(bb_triangular_B4_out_valid_in_0),
        .out_valid_in_1(bb_triangular_B4_out_valid_in_1),
        .out_valid_out_0(bb_triangular_B4_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_triangular_B4_sr_1_aunroll_x(BLACKBOX,4)
    triangular_bb_B4_sr_1 thebb_triangular_B4_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_triangular_B3_out_c0_exe11),
        .in_i_data_2_tpl(bb_triangular_B3_out_c0_exe12),
        .in_i_data_3_tpl(bb_triangular_B3_out_c0_exe168),
        .in_i_data_4_tpl(bb_triangular_B3_out_c0_exe269),
        .in_i_data_5_tpl(bb_triangular_B3_out_c0_exe3),
        .in_i_data_6_tpl(bb_triangular_B3_out_c0_exe4),
        .in_i_data_7_tpl(bb_triangular_B3_out_c0_exe5),
        .in_i_data_8_tpl(bb_triangular_B3_out_c0_exe6),
        .in_i_data_9_tpl(bb_triangular_B3_out_c0_exe7),
        .in_i_data_10_tpl(bb_triangular_B3_out_memdep_phi4_pop13),
        .in_i_data_11_tpl(bb_triangular_B3_out_c0_exe8),
        .in_i_data_12_tpl(bb_triangular_B3_out_c0_exe9),
        .in_i_stall(bb_triangular_B4_out_stall_out_1),
        .in_i_valid(loop_limiter_triangular1_out_o_valid),
        .out_o_data_0_tpl(bb_triangular_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_triangular_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_triangular_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_triangular_B4_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_triangular_B4_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_triangular_B4_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_triangular_B4_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_triangular_B4_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_triangular_B4_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_triangular_B4_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_triangular_B4_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_triangular_B4_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_triangular_B4_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_stall(bb_triangular_B4_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_triangular_B4_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_triangular1(BLACKBOX,82)
    triangular_loop_limiter_1 theloop_limiter_triangular1 (
        .in_i_stall(bb_triangular_B4_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_triangular_B4_out_exiting_stall_out),
        .in_i_valid(bb_triangular_B3_out_valid_out_0),
        .in_i_valid_exit(bb_triangular_B4_out_exiting_valid_out),
        .out_o_stall(loop_limiter_triangular1_out_o_stall),
        .out_o_valid(loop_limiter_triangular1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going28_triangular2_sr(BLACKBOX,49)
    triangular_i_llvm_fpga_pipeline_keep_going28_2_sr thei_llvm_fpga_pipeline_keep_going28_triangular2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going28_triangular2_valid_fifo_out_stall_out),
        .in_i_valid(bb_triangular_B3_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going28_triangular2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going28_triangular2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef15(CONSTANT,39)
    assign c_i32_undef15_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_triangular_B5_sr_0_aunroll_x(BLACKBOX,5)
    triangular_bb_B5_sr_0 thebb_triangular_B5_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_triangular_B2_out_c0_exe7963),
        .in_i_stall(bb_triangular_B5_out_stall_out_0),
        .in_i_valid(bb_triangular_B2_out_valid_out_0),
        .out_o_data_0_tpl(bb_triangular_B5_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_stall(bb_triangular_B5_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_triangular_B5_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_triangular_B2(BLACKBOX,8)
    triangular_bb_B2 thebb_triangular_B2 (
        .in_c0_exe6951_0(bb_triangular_B2_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe7963_0(bb_triangular_B2_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe8974_0(bb_triangular_B2_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_feedback_stall_in_13(bb_triangular_B3_out_feedback_stall_out_13),
        .in_memdep_5_0(bb_triangular_B2_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_stall_in_0(bb_triangular_B5_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_triangular_B2_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe7963(bb_triangular_B2_out_c0_exe7963),
        .out_feedback_out_13(bb_triangular_B2_out_feedback_out_13),
        .out_feedback_valid_out_13(bb_triangular_B2_out_feedback_valid_out_13),
        .out_stall_in_0(bb_triangular_B2_out_stall_in_0),
        .out_stall_out_0(bb_triangular_B2_out_stall_out_0),
        .out_valid_out_0(bb_triangular_B2_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_triangular_B3(BLACKBOX,9)
    triangular_bb_B3 thebb_triangular_B3 (
        .in_feedback_in_13(bb_triangular_B2_out_feedback_out_13),
        .in_feedback_valid_in_13(bb_triangular_B2_out_feedback_valid_out_13),
        .in_forked_0(GND_q),
        .in_forked_1(bb_triangular_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_1_0(bb_triangular_B1_start_out_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(bb_triangular_B1_start_out_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(bb_triangular_B1_start_out_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(bb_triangular_B1_start_out_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_5_0(bb_triangular_B1_start_out_intel_reserved_ffwd_5_0),
        .in_lim_ext44_0(c_i32_undef15_q),
        .in_lim_ext44_1(bb_triangular_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going28_triangular2_sr_out_o_stall),
        .in_reorder_limiter_enter47_0(c_i32_undef15_q),
        .in_reorder_limiter_enter47_1(bb_triangular_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_stall_in_0(loop_limiter_triangular1_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going28_triangular2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_triangular_B3_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe11(bb_triangular_B3_out_c0_exe11),
        .out_c0_exe12(bb_triangular_B3_out_c0_exe12),
        .out_c0_exe168(bb_triangular_B3_out_c0_exe168),
        .out_c0_exe269(bb_triangular_B3_out_c0_exe269),
        .out_c0_exe3(bb_triangular_B3_out_c0_exe3),
        .out_c0_exe4(bb_triangular_B3_out_c0_exe4),
        .out_c0_exe5(bb_triangular_B3_out_c0_exe5),
        .out_c0_exe6(bb_triangular_B3_out_c0_exe6),
        .out_c0_exe7(bb_triangular_B3_out_c0_exe7),
        .out_c0_exe8(bb_triangular_B3_out_c0_exe8),
        .out_c0_exe9(bb_triangular_B3_out_c0_exe9),
        .out_exiting_stall_out(bb_triangular_B3_out_exiting_stall_out),
        .out_exiting_valid_out(bb_triangular_B3_out_exiting_valid_out),
        .out_feedback_stall_out_13(bb_triangular_B3_out_feedback_stall_out_13),
        .out_memdep_phi4_pop13(bb_triangular_B3_out_memdep_phi4_pop13),
        .out_pipeline_valid_out(bb_triangular_B3_out_pipeline_valid_out),
        .out_stall_out_0(bb_triangular_B3_out_stall_out_0),
        .out_stall_out_1(bb_triangular_B3_out_stall_out_1),
        .out_valid_in_0(bb_triangular_B3_out_valid_in_0),
        .out_valid_in_1(bb_triangular_B3_out_valid_in_1),
        .out_valid_out_0(bb_triangular_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_triangular_B3_sr_1_aunroll_x(BLACKBOX,3)
    triangular_bb_B3_sr_1 thebb_triangular_B3_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_triangular_B1_start_out_c1_exe1),
        .in_i_data_2_tpl(bb_triangular_B1_start_out_reorder_limiter_enter),
        .in_i_stall(bb_triangular_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_triangular0_out_o_valid),
        .out_o_data_0_tpl(bb_triangular_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_triangular_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_triangular_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_stall(bb_triangular_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_triangular_B3_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_triangular0(BLACKBOX,81)
    triangular_loop_limiter_0 theloop_limiter_triangular0 (
        .in_i_stall(bb_triangular_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_triangular_B3_out_exiting_stall_out),
        .in_i_valid(bb_triangular_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_triangular_B3_out_exiting_valid_out),
        .out_o_stall(loop_limiter_triangular0_out_o_stall),
        .out_o_valid(loop_limiter_triangular0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going32_triangular2_sr(BLACKBOX,51)
    triangular_i_llvm_fpga_pipeline_keep_going32_2_sr thei_llvm_fpga_pipeline_keep_going32_triangular2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going32_triangular2_valid_fifo_out_stall_out),
        .in_i_valid(bb_triangular_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going32_triangular2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going32_triangular2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bb_triangular_B5(BLACKBOX,11)
    triangular_bb_B5 thebb_triangular_B5 (
        .in_c0_exe7962_0(bb_triangular_B5_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_feedback_stall_in_1(bb_triangular_B1_start_out_feedback_stall_out_1),
        .in_iowr_bl_return_triangular_i_fifoready(in_iowr_bl_return_triangular_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_triangular_B5_sr_0_aunroll_x_out_o_valid),
        .in_wgl_6_exit_exit_stall_out(bb_triangular_B1_start_out_wgl_6_enter_exit_stall_out),
        .in_wgl_6_exit_exit_valid_out(bb_triangular_B1_start_out_wgl_6_enter_exit_valid_out),
        .out_feedback_out_1(bb_triangular_B5_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_triangular_B5_out_feedback_valid_out_1),
        .out_iowr_bl_return_triangular_o_fifodata(bb_triangular_B5_out_iowr_bl_return_triangular_o_fifodata),
        .out_iowr_bl_return_triangular_o_fifovalid(bb_triangular_B5_out_iowr_bl_return_triangular_o_fifovalid),
        .out_stall_in_0(bb_triangular_B5_out_stall_in_0),
        .out_stall_out_0(bb_triangular_B5_out_stall_out_0),
        .out_valid_out_0(bb_triangular_B5_out_valid_out_0),
        .out_wgl_6_exit_exit_stall_in(bb_triangular_B5_out_wgl_6_exit_exit_stall_in),
        .out_wgl_6_exit_exit_valid_in(bb_triangular_B5_out_wgl_6_exit_exit_valid_in),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_triangular_B1_start(BLACKBOX,7)
    triangular_bb_B1_start thebb_triangular_B1_start (
        .in_feedback_in_1(bb_triangular_B5_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_triangular_B5_out_feedback_valid_out_1),
        .in_forked34_0(GND_q),
        .in_forked34_1(VCC_q),
        .in_iord_bl_call_triangular_i_fifodata(in_iord_bl_call_triangular_i_fifodata),
        .in_iord_bl_call_triangular_i_fifovalid(in_iord_bl_call_triangular_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going32_triangular2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_triangular0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going32_triangular2_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .in_wgl_6_enter_exit_stall_in(bb_triangular_B5_out_wgl_6_exit_exit_stall_in),
        .in_wgl_6_enter_exit_valid_in(bb_triangular_B5_out_wgl_6_exit_exit_valid_in),
        .out_c1_exe1(bb_triangular_B1_start_out_c1_exe1),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_triangular_B1_start_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_triangular_B1_start_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_triangular_B1_start_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_triangular_B1_start_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_triangular_B1_start_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_triangular_B1_start_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_5_0(bb_triangular_B1_start_out_intel_reserved_ffwd_5_0),
        .out_iord_bl_call_triangular_o_fifoalmost_full(bb_triangular_B1_start_out_iord_bl_call_triangular_o_fifoalmost_full),
        .out_iord_bl_call_triangular_o_fifoready(bb_triangular_B1_start_out_iord_bl_call_triangular_o_fifoready),
        .out_pipeline_valid_out(bb_triangular_B1_start_out_pipeline_valid_out),
        .out_reorder_limiter_enter(bb_triangular_B1_start_out_reorder_limiter_enter),
        .out_stall_out_0(bb_triangular_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_in_0(bb_triangular_B1_start_out_valid_in_0),
        .out_valid_in_1(bb_triangular_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_triangular_B1_start_out_valid_out_0),
        .out_wgl_6_enter_exit_stall_out(bb_triangular_B1_start_out_wgl_6_enter_exit_stall_out),
        .out_wgl_6_enter_exit_valid_out(bb_triangular_B1_start_out_wgl_6_enter_exit_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_triangular_o_fifoalmost_full(GPOUT,83)
    assign out_iord_bl_call_triangular_o_fifoalmost_full = bb_triangular_B1_start_out_iord_bl_call_triangular_o_fifoalmost_full;

    // out_iord_bl_call_triangular_o_fifoready(GPOUT,84)
    assign out_iord_bl_call_triangular_o_fifoready = bb_triangular_B1_start_out_iord_bl_call_triangular_o_fifoready;

    // out_iowr_bl_return_triangular_o_fifodata(GPOUT,85)
    assign out_iowr_bl_return_triangular_o_fifodata = bb_triangular_B5_out_iowr_bl_return_triangular_o_fifodata;

    // out_iowr_bl_return_triangular_o_fifovalid(GPOUT,86)
    assign out_iowr_bl_return_triangular_o_fifovalid = bb_triangular_B5_out_iowr_bl_return_triangular_o_fifovalid;

    // out_lm1_triangular_avm_address(GPOUT,87)
    assign out_lm1_triangular_avm_address = bb_triangular_B4_out_lm1_triangular_avm_address;

    // out_lm1_triangular_avm_burstcount(GPOUT,88)
    assign out_lm1_triangular_avm_burstcount = bb_triangular_B4_out_lm1_triangular_avm_burstcount;

    // out_lm1_triangular_avm_byteenable(GPOUT,89)
    assign out_lm1_triangular_avm_byteenable = bb_triangular_B4_out_lm1_triangular_avm_byteenable;

    // out_lm1_triangular_avm_enable(GPOUT,90)
    assign out_lm1_triangular_avm_enable = bb_triangular_B4_out_lm1_triangular_avm_enable;

    // out_lm1_triangular_avm_read(GPOUT,91)
    assign out_lm1_triangular_avm_read = bb_triangular_B4_out_lm1_triangular_avm_read;

    // out_lm1_triangular_avm_write(GPOUT,92)
    assign out_lm1_triangular_avm_write = bb_triangular_B4_out_lm1_triangular_avm_write;

    // out_lm1_triangular_avm_writedata(GPOUT,93)
    assign out_lm1_triangular_avm_writedata = bb_triangular_B4_out_lm1_triangular_avm_writedata;

    // out_lm62_triangular_avm_address(GPOUT,94)
    assign out_lm62_triangular_avm_address = bb_triangular_B4_out_lm62_triangular_avm_address;

    // out_lm62_triangular_avm_burstcount(GPOUT,95)
    assign out_lm62_triangular_avm_burstcount = bb_triangular_B4_out_lm62_triangular_avm_burstcount;

    // out_lm62_triangular_avm_byteenable(GPOUT,96)
    assign out_lm62_triangular_avm_byteenable = bb_triangular_B4_out_lm62_triangular_avm_byteenable;

    // out_lm62_triangular_avm_enable(GPOUT,97)
    assign out_lm62_triangular_avm_enable = bb_triangular_B4_out_lm62_triangular_avm_enable;

    // out_lm62_triangular_avm_read(GPOUT,98)
    assign out_lm62_triangular_avm_read = bb_triangular_B4_out_lm62_triangular_avm_read;

    // out_lm62_triangular_avm_write(GPOUT,99)
    assign out_lm62_triangular_avm_write = bb_triangular_B4_out_lm62_triangular_avm_write;

    // out_lm62_triangular_avm_writedata(GPOUT,100)
    assign out_lm62_triangular_avm_writedata = bb_triangular_B4_out_lm62_triangular_avm_writedata;

    // out_lm83_triangular_avm_address(GPOUT,101)
    assign out_lm83_triangular_avm_address = bb_triangular_B4_out_lm83_triangular_avm_address;

    // out_lm83_triangular_avm_burstcount(GPOUT,102)
    assign out_lm83_triangular_avm_burstcount = bb_triangular_B4_out_lm83_triangular_avm_burstcount;

    // out_lm83_triangular_avm_byteenable(GPOUT,103)
    assign out_lm83_triangular_avm_byteenable = bb_triangular_B4_out_lm83_triangular_avm_byteenable;

    // out_lm83_triangular_avm_enable(GPOUT,104)
    assign out_lm83_triangular_avm_enable = bb_triangular_B4_out_lm83_triangular_avm_enable;

    // out_lm83_triangular_avm_read(GPOUT,105)
    assign out_lm83_triangular_avm_read = bb_triangular_B4_out_lm83_triangular_avm_read;

    // out_lm83_triangular_avm_write(GPOUT,106)
    assign out_lm83_triangular_avm_write = bb_triangular_B4_out_lm83_triangular_avm_write;

    // out_lm83_triangular_avm_writedata(GPOUT,107)
    assign out_lm83_triangular_avm_writedata = bb_triangular_B4_out_lm83_triangular_avm_writedata;

    // out_memdep_triangular_avm_address(GPOUT,108)
    assign out_memdep_triangular_avm_address = bb_triangular_B4_out_memdep_triangular_avm_address;

    // out_memdep_triangular_avm_burstcount(GPOUT,109)
    assign out_memdep_triangular_avm_burstcount = bb_triangular_B4_out_memdep_triangular_avm_burstcount;

    // out_memdep_triangular_avm_byteenable(GPOUT,110)
    assign out_memdep_triangular_avm_byteenable = bb_triangular_B4_out_memdep_triangular_avm_byteenable;

    // out_memdep_triangular_avm_enable(GPOUT,111)
    assign out_memdep_triangular_avm_enable = bb_triangular_B4_out_memdep_triangular_avm_enable;

    // out_memdep_triangular_avm_read(GPOUT,112)
    assign out_memdep_triangular_avm_read = bb_triangular_B4_out_memdep_triangular_avm_read;

    // out_memdep_triangular_avm_write(GPOUT,113)
    assign out_memdep_triangular_avm_write = bb_triangular_B4_out_memdep_triangular_avm_write;

    // out_memdep_triangular_avm_writedata(GPOUT,114)
    assign out_memdep_triangular_avm_writedata = bb_triangular_B4_out_memdep_triangular_avm_writedata;

    // out_o_active_memdep(GPOUT,115)
    assign out_o_active_memdep = bb_triangular_B4_out_lsu_memdep_o_active;

    // bb_triangular_B0_runOnce(BLACKBOX,6)
    triangular_bb_B0_runOnce thebb_triangular_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_triangular_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,116)
    assign out_stall_out = bb_triangular_B0_runOnce_out_stall_out_0;

    // out_valid_out(GPOUT,117)
    assign out_valid_out = GND_q;

    // triangular_B1_start_x(EXTIFACE,118)
    assign triangular_B1_start_x_i_capture = GND_q;
    assign triangular_B1_start_x_i_clear = GND_q;
    assign triangular_B1_start_x_i_enable = VCC_q;
    assign triangular_B1_start_x_i_shift = GND_q;
    assign triangular_B1_start_x_i_stall_pred = GND_q;
    assign triangular_B1_start_x_i_stall_succ = bb_triangular_B5_out_stall_in_0;
    assign triangular_B1_start_x_i_valid_loop = bb_triangular_B1_start_out_valid_in_0;
    assign triangular_B1_start_x_i_valid_pred = bb_triangular_B1_start_out_valid_in_1;
    assign triangular_B1_start_x_i_valid_succ = bb_triangular_B5_out_valid_out_0;
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
        .resetn(resetn)
    );

    // triangular_B3_x(EXTIFACE,119)
    assign triangular_B3_x_i_capture = GND_q;
    assign triangular_B3_x_i_clear = GND_q;
    assign triangular_B3_x_i_enable = VCC_q;
    assign triangular_B3_x_i_shift = GND_q;
    assign triangular_B3_x_i_stall_pred = loop_limiter_triangular0_out_o_stall;
    assign triangular_B3_x_i_stall_succ = bb_triangular_B2_out_stall_in_0;
    assign triangular_B3_x_i_valid_loop = bb_triangular_B3_out_valid_in_0;
    assign triangular_B3_x_i_valid_pred = bb_triangular_B3_out_valid_in_1;
    assign triangular_B3_x_i_valid_succ = bb_triangular_B2_out_valid_out_0;
    assign triangular_B3_x_i_capture_bitsignaltemp = triangular_B3_x_i_capture[0];
    assign triangular_B3_x_i_clear_bitsignaltemp = triangular_B3_x_i_clear[0];
    assign triangular_B3_x_i_enable_bitsignaltemp = triangular_B3_x_i_enable[0];
    assign triangular_B3_x_i_shift_bitsignaltemp = triangular_B3_x_i_shift[0];
    assign triangular_B3_x_i_stall_pred_bitsignaltemp = triangular_B3_x_i_stall_pred[0];
    assign triangular_B3_x_i_stall_succ_bitsignaltemp = triangular_B3_x_i_stall_succ[0];
    assign triangular_B3_x_i_valid_loop_bitsignaltemp = triangular_B3_x_i_valid_loop[0];
    assign triangular_B3_x_i_valid_pred_bitsignaltemp = triangular_B3_x_i_valid_pred[0];
    assign triangular_B3_x_i_valid_succ_bitsignaltemp = triangular_B3_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("triangular.B3")
    ) thetriangular_B3_x (
        .i_capture(triangular_B3_x_i_capture_bitsignaltemp),
        .i_clear(triangular_B3_x_i_clear_bitsignaltemp),
        .i_enable(triangular_B3_x_i_enable_bitsignaltemp),
        .i_shift(triangular_B3_x_i_shift_bitsignaltemp),
        .i_stall_pred(triangular_B3_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(triangular_B3_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(triangular_B3_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(triangular_B3_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(triangular_B3_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // triangular_B4_x(EXTIFACE,120)
    assign triangular_B4_x_i_capture = GND_q;
    assign triangular_B4_x_i_clear = GND_q;
    assign triangular_B4_x_i_enable = VCC_q;
    assign triangular_B4_x_i_shift = GND_q;
    assign triangular_B4_x_i_stall_pred = loop_limiter_triangular1_out_o_stall;
    assign triangular_B4_x_i_stall_succ = bb_triangular_B4_out_stall_in_0;
    assign triangular_B4_x_i_valid_loop = bb_triangular_B4_out_valid_in_0;
    assign triangular_B4_x_i_valid_pred = bb_triangular_B4_out_valid_in_1;
    assign triangular_B4_x_i_valid_succ = bb_triangular_B4_out_valid_out_0;
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
        .resetn(resetn)
    );

endmodule
