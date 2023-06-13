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

// SystemVerilog created from i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir0
// Created for function/kernel fir
// SystemVerilog created on Tue Jun 13 02:11:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module fir_i_llvm_fpga_sfc_exit_s_c1_out_for_body_s_c1_exit_fir0 (
    output wire [0:0] out_data_out_0_tpl,
    output wire [0:0] out_enable,
    output wire [0:0] out_valid_mask,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_data_in_0_tpl,
    input wire [0:0] in_dec_pipelined_thread,
    input wire [0:0] in_inc_pipelined_thread,
    input wire [0:0] in_input_accepted,
    input wire [0:0] in_valid_in,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_entry,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [6:0] c_i7_05_q;
    wire [7:0] dsdk_ip_adapt_bitjoin2_q;
    wire [7:0] element_extension4_q;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_data_in;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_dec_pipelined_thread;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_dec_pipelined_thread_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_inc_pipelined_thread;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_inc_pipelined_thread_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_input_accepted;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_input_accepted_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_stall_in;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_valid_in;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_valid_in_bitsignaltemp;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_data_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_enable;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_enable_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_stall_entry;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_stall_entry_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_valid_mask;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_valid_mask_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_valid_out;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_valid_out_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect7_b;
    wire [0:0] not_keep_going_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_keep_going(LOGICAL,9)
    assign not_keep_going_q = ~ (in_dec_pipelined_thread);

    // c_i7_05(CONSTANT,4)
    assign c_i7_05_q = $unsigned(7'b0000000);

    // element_extension4(BITJOIN,6)
    assign element_extension4_q = {c_i7_05_q, in_data_in_0_tpl};

    // dsdk_ip_adapt_bitjoin2(BITJOIN,5)
    assign dsdk_ip_adapt_bitjoin2_q = element_extension4_q;

    // i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1(EXTIFACE,7)
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_data_in = dsdk_ip_adapt_bitjoin2_q;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_dec_pipelined_thread = not_keep_going_q;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_inc_pipelined_thread = in_inc_pipelined_thread;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_input_accepted = in_input_accepted;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_stall_in = in_stall_in;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_valid_in = in_valid_in;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_dec_pipelined_thread_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_dec_pipelined_thread[0];
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_inc_pipelined_thread_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_inc_pipelined_thread[0];
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_input_accepted_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_input_accepted[0];
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_stall_in_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_stall_in[0];
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_valid_in_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_valid_in[0];
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_enable[0] = i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_enable_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_stall_entry[0] = i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_stall_entry_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_valid_mask[0] = i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_valid_mask_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_valid_out[0] = i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_valid_out_bitsignaltemp;
    acl_enable_sink #(
        .PIPELINE_DEPTH(5),
        .SCHEDULEII(1),
        .ASYNC_RESET(1),
        .DATA_WIDTH(8),
        .IP_PIPELINE_LATENCY_PLUS1(1),
        .SYNCHRONIZE_RESET(0)
    ) thei_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1 (
        .data_in(dsdk_ip_adapt_bitjoin2_q),
        .dec_pipelined_thread(i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_dec_pipelined_thread_bitsignaltemp),
        .inc_pipelined_thread(i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_inc_pipelined_thread_bitsignaltemp),
        .input_accepted(i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_input_accepted_bitsignaltemp),
        .stall_in(i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_valid_in_bitsignaltemp),
        .data_out(i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_data_out),
        .enable(i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_enable_bitsignaltemp),
        .stall_entry(i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_stall_entry_bitsignaltemp),
        .valid_mask(i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_valid_mask_bitsignaltemp),
        .valid_out(i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // ip_dsdk_adapt_bitselect7(BITSELECT,8)
    assign ip_dsdk_adapt_bitselect7_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_data_out[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,2)@43
    assign out_data_out_0_tpl = ip_dsdk_adapt_bitselect7_b;
    assign out_enable = i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_enable;
    assign out_valid_mask = i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_valid_mask;
    assign out_valid_out = i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_valid_out;

    // sync_out(GPOUT,11)@20000000
    assign out_stall_entry = i_llvm_fpga_sfc_exit_s_c1_out_for_body_firs_c1_exit_fir1_stall_entry;

endmodule
