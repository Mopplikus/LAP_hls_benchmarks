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

// SystemVerilog created from bb_fir_B4_stall_region
// Created for function/kernel fir
// SystemVerilog created on Wed Apr  5 16:46:39 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module fir_bb_B4_stall_region (
    input wire [0:0] in_iowr_bl_return_fir_i_fifoready,
    output wire [31:0] out_iowr_bl_return_fir_o_fifodata,
    output wire [0:0] out_iowr_bl_return_fir_o_fifovalid,
    output wire [0:0] out_feedback_out_1,
    input wire [0:0] in_feedback_stall_in_1,
    output wire [0:0] out_feedback_valid_out_1,
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [31:0] i_iowr_bl_return_fir_unnamed_fir7_fir1_out_iowr_bl_return_fir_o_fifodata;
    wire [0:0] i_iowr_bl_return_fir_unnamed_fir7_fir1_out_iowr_bl_return_fir_o_fifovalid;
    wire [0:0] i_iowr_bl_return_fir_unnamed_fir7_fir1_out_o_ack;
    wire [0:0] i_iowr_bl_return_fir_unnamed_fir7_fir1_out_o_stall;
    wire [0:0] i_iowr_bl_return_fir_unnamed_fir7_fir1_out_o_valid;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_add7_fir0_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_add7_fir0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_add7_fir0_out_valid_out;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_fir2_out_feedback_out_1;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_fir2_out_feedback_valid_out_1;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_fir2_out_stall_out;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_fir2_out_valid_out;
    wire [0:0] bubble_join_i_iowr_bl_return_fir_unnamed_fir7_fir1_q;
    wire [0:0] bubble_select_i_iowr_bl_return_fir_unnamed_fir7_fir1_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_add7_fir0_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_add7_fir0_b;
    wire [0:0] SE_out_i_iowr_bl_return_fir_unnamed_fir7_fir1_wireValid;
    wire [0:0] SE_out_i_iowr_bl_return_fir_unnamed_fir7_fir1_backStall;
    wire [0:0] SE_out_i_iowr_bl_return_fir_unnamed_fir7_fir1_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_throttle_push_fir2_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_throttle_push_fir2_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;


    // SE_stall_entry(STALLENABLE,39)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = i_llvm_fpga_ffwd_dest_i32_add7_fir0_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // i_llvm_fpga_ffwd_dest_i32_add7_fir0(BLACKBOX,10)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_2_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    fir_i_llvm_fpga_ffwd_dest_i32_add7_0 thei_llvm_fpga_ffwd_dest_i32_add7_fir0 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i32_add7_fir0_out_dest_data_out_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_add7_fir0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_add7_fir0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0(STALLENABLE,36)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_consumed0 = (~ (in_stall_in) & SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_consumed1 = (~ (i_iowr_bl_return_fir_unnamed_fir7_fir1_out_o_stall) & SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_backStall & SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_or0 = SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_backStall = SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_V1 = SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_wireValid = i_llvm_fpga_ffwd_dest_i32_add7_fir0_out_valid_out;

    // SE_out_i_llvm_fpga_push_token_i1_throttle_push_fir2(STALLENABLE,38)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_token_i1_throttle_push_fir2_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_token_i1_throttle_push_fir2_wireValid = i_llvm_fpga_push_token_i1_throttle_push_fir2_out_valid_out;

    // bubble_join_i_iowr_bl_return_fir_unnamed_fir7_fir1(BITJOIN,26)
    assign bubble_join_i_iowr_bl_return_fir_unnamed_fir7_fir1_q = i_iowr_bl_return_fir_unnamed_fir7_fir1_out_o_ack;

    // bubble_select_i_iowr_bl_return_fir_unnamed_fir7_fir1(BITSELECT,27)
    assign bubble_select_i_iowr_bl_return_fir_unnamed_fir7_fir1_b = $unsigned(bubble_join_i_iowr_bl_return_fir_unnamed_fir7_fir1_q[0:0]);

    // i_llvm_fpga_push_token_i1_throttle_push_fir2(BLACKBOX,11)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_out_1@20000000
    // out out_feedback_valid_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    fir_i_llvm_fpga_push_token_i1_throttle_push_0 thei_llvm_fpga_push_token_i1_throttle_push_fir2 (
        .in_data_in(bubble_select_i_iowr_bl_return_fir_unnamed_fir7_fir1_b),
        .in_feedback_stall_in_1(in_feedback_stall_in_1),
        .in_stall_in(SE_out_i_llvm_fpga_push_token_i1_throttle_push_fir2_backStall),
        .in_valid_in(SE_out_i_iowr_bl_return_fir_unnamed_fir7_fir1_V0),
        .out_data_out(),
        .out_feedback_out_1(i_llvm_fpga_push_token_i1_throttle_push_fir2_out_feedback_out_1),
        .out_feedback_valid_out_1(i_llvm_fpga_push_token_i1_throttle_push_fir2_out_feedback_valid_out_1),
        .out_stall_out(i_llvm_fpga_push_token_i1_throttle_push_fir2_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_token_i1_throttle_push_fir2_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iowr_bl_return_fir_unnamed_fir7_fir1(STALLENABLE,34)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_return_fir_unnamed_fir7_fir1_V0 = SE_out_i_iowr_bl_return_fir_unnamed_fir7_fir1_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_return_fir_unnamed_fir7_fir1_backStall = i_llvm_fpga_push_token_i1_throttle_push_fir2_out_stall_out | ~ (SE_out_i_iowr_bl_return_fir_unnamed_fir7_fir1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_return_fir_unnamed_fir7_fir1_wireValid = i_iowr_bl_return_fir_unnamed_fir7_fir1_out_o_valid;

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_add7_fir0(BITJOIN,29)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_add7_fir0_q = i_llvm_fpga_ffwd_dest_i32_add7_fir0_out_dest_data_out_2_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_add7_fir0(BITSELECT,30)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_add7_fir0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_add7_fir0_q[31:0]);

    // i_iowr_bl_return_fir_unnamed_fir7_fir1(BLACKBOX,9)@1
    // in in_i_stall@20000000
    // out out_iowr_bl_return_fir_o_fifodata@20000000
    // out out_iowr_bl_return_fir_o_fifovalid@20000000
    // out out_o_stall@20000000
    fir_i_iowr_bl_return_unnamed_fir7_fir0 thei_iowr_bl_return_fir_unnamed_fir7_fir1 (
        .in_i_data(bubble_select_i_llvm_fpga_ffwd_dest_i32_add7_fir0_b),
        .in_i_stall(SE_out_i_iowr_bl_return_fir_unnamed_fir7_fir1_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_V1),
        .in_iowr_bl_return_fir_i_fifoready(in_iowr_bl_return_fir_i_fifoready),
        .out_iowr_bl_return_fir_o_fifodata(i_iowr_bl_return_fir_unnamed_fir7_fir1_out_iowr_bl_return_fir_o_fifodata),
        .out_iowr_bl_return_fir_o_fifovalid(i_iowr_bl_return_fir_unnamed_fir7_fir1_out_iowr_bl_return_fir_o_fifovalid),
        .out_o_ack(i_iowr_bl_return_fir_unnamed_fir7_fir1_out_o_ack),
        .out_o_stall(i_iowr_bl_return_fir_unnamed_fir7_fir1_out_o_stall),
        .out_o_valid(i_iowr_bl_return_fir_unnamed_fir7_fir1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,5)
    assign out_iowr_bl_return_fir_o_fifodata = i_iowr_bl_return_fir_unnamed_fir7_fir1_out_iowr_bl_return_fir_o_fifodata;
    assign out_iowr_bl_return_fir_o_fifovalid = i_iowr_bl_return_fir_unnamed_fir7_fir1_out_iowr_bl_return_fir_o_fifovalid;

    // feedback_out_1_sync(GPOUT,6)
    assign out_feedback_out_1 = i_llvm_fpga_push_token_i1_throttle_push_fir2_out_feedback_out_1;

    // feedback_valid_out_1_sync(GPOUT,8)
    assign out_feedback_valid_out_1 = i_llvm_fpga_push_token_i1_throttle_push_fir2_out_feedback_valid_out_1;

    // sync_out(GPOUT,22)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_sync_out_x(GPOUT,24)@1
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_dest_i32_add7_fir0_V0;

endmodule
