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

// SystemVerilog created from bb_if_loop_1_B3_stall_region
// Created for function/kernel if_loop_1
// SystemVerilog created on Tue Apr 18 14:38:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module if_loop_1_bb_B3_stall_region (
    input wire [0:0] in_iowr_bl_return_if_loop_1_i_fifoready,
    output wire [31:0] out_iowr_bl_return_if_loop_1_o_fifodata,
    output wire [0:0] out_iowr_bl_return_if_loop_1_o_fifovalid,
    output wire [0:0] out_feedback_out_1,
    input wire [0:0] in_feedback_stall_in_1,
    output wire [0:0] out_feedback_valid_out_1,
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [31:0] c_i32_05_q;
    wire [31:0] i_iowr_bl_return_if_loop_1_unnamed_if_loop_17_if_loop_13_out_iowr_bl_return_if_loop_1_o_fifodata;
    wire [0:0] i_iowr_bl_return_if_loop_1_unnamed_if_loop_17_if_loop_13_out_iowr_bl_return_if_loop_1_o_fifovalid;
    wire [0:0] i_iowr_bl_return_if_loop_1_unnamed_if_loop_17_if_loop_13_out_o_ack;
    wire [0:0] i_iowr_bl_return_if_loop_1_unnamed_if_loop_17_if_loop_13_out_o_stall;
    wire [0:0] i_iowr_bl_return_if_loop_1_unnamed_if_loop_17_if_loop_13_out_o_valid;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp94_if_loop_10_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp94_if_loop_10_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp94_if_loop_10_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_out_valid_out;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_if_loop_14_out_feedback_out_1;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_if_loop_14_out_feedback_valid_out_1;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_if_loop_14_out_stall_out;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_if_loop_14_out_valid_out;
    wire [0:0] i_sum_0_lcssa_select_if_loop_12_s;
    reg [31:0] i_sum_0_lcssa_select_if_loop_12_q;
    wire [0:0] bubble_join_i_iowr_bl_return_if_loop_1_unnamed_if_loop_17_if_loop_13_q;
    wire [0:0] bubble_select_i_iowr_bl_return_if_loop_1_unnamed_if_loop_17_if_loop_13_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp94_if_loop_10_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp94_if_loop_10_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_b;
    wire [0:0] SE_out_i_iowr_bl_return_if_loop_1_unnamed_if_loop_17_if_loop_13_wireValid;
    wire [0:0] SE_out_i_iowr_bl_return_if_loop_1_unnamed_if_loop_17_if_loop_13_backStall;
    wire [0:0] SE_out_i_iowr_bl_return_if_loop_1_unnamed_if_loop_17_if_loop_13_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_throttle_push_if_loop_14_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_throttle_push_if_loop_14_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;


    // SE_stall_entry(STALLENABLE,53)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i1_cmp94_if_loop_10_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed1 & SE_stall_entry_or0);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // i_llvm_fpga_ffwd_dest_i1_cmp94_if_loop_10(BLACKBOX,11)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_0_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    if_loop_1_i_llvm_fpga_ffwd_dest_i1_cmp94_0 thei_llvm_fpga_ffwd_dest_i1_cmp94_if_loop_10 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp94_if_loop_10_out_dest_data_out_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp94_if_loop_10_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp94_if_loop_10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11(BLACKBOX,12)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_2_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    if_loop_1_i_llvm_fpga_ffwd_dest_i32_spec_select7_0 thei_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_out_dest_data_out_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11(STALLENABLE,49)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_consumed0 = (~ (i_iowr_bl_return_if_loop_1_unnamed_if_loop_17_if_loop_13_out_o_stall) & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_consumed1 = (~ (in_stall_in) & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_backStall & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_or0 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_backStall = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_V1 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_and0 = i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_wireValid = i_llvm_fpga_ffwd_dest_i1_cmp94_if_loop_10_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_and0;

    // SE_out_i_llvm_fpga_push_token_i1_throttle_push_if_loop_14(STALLENABLE,51)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_token_i1_throttle_push_if_loop_14_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_token_i1_throttle_push_if_loop_14_wireValid = i_llvm_fpga_push_token_i1_throttle_push_if_loop_14_out_valid_out;

    // bubble_join_i_iowr_bl_return_if_loop_1_unnamed_if_loop_17_if_loop_13(BITJOIN,32)
    assign bubble_join_i_iowr_bl_return_if_loop_1_unnamed_if_loop_17_if_loop_13_q = i_iowr_bl_return_if_loop_1_unnamed_if_loop_17_if_loop_13_out_o_ack;

    // bubble_select_i_iowr_bl_return_if_loop_1_unnamed_if_loop_17_if_loop_13(BITSELECT,33)
    assign bubble_select_i_iowr_bl_return_if_loop_1_unnamed_if_loop_17_if_loop_13_b = $unsigned(bubble_join_i_iowr_bl_return_if_loop_1_unnamed_if_loop_17_if_loop_13_q[0:0]);

    // i_llvm_fpga_push_token_i1_throttle_push_if_loop_14(BLACKBOX,13)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_out_1@20000000
    // out out_feedback_valid_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    if_loop_1_i_llvm_fpga_push_token_i1_throttle_push_0 thei_llvm_fpga_push_token_i1_throttle_push_if_loop_14 (
        .in_data_in(bubble_select_i_iowr_bl_return_if_loop_1_unnamed_if_loop_17_if_loop_13_b),
        .in_feedback_stall_in_1(in_feedback_stall_in_1),
        .in_stall_in(SE_out_i_llvm_fpga_push_token_i1_throttle_push_if_loop_14_backStall),
        .in_valid_in(SE_out_i_iowr_bl_return_if_loop_1_unnamed_if_loop_17_if_loop_13_V0),
        .out_data_out(),
        .out_feedback_out_1(i_llvm_fpga_push_token_i1_throttle_push_if_loop_14_out_feedback_out_1),
        .out_feedback_valid_out_1(i_llvm_fpga_push_token_i1_throttle_push_if_loop_14_out_feedback_valid_out_1),
        .out_stall_out(i_llvm_fpga_push_token_i1_throttle_push_if_loop_14_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_token_i1_throttle_push_if_loop_14_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iowr_bl_return_if_loop_1_unnamed_if_loop_17_if_loop_13(STALLENABLE,45)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_return_if_loop_1_unnamed_if_loop_17_if_loop_13_V0 = SE_out_i_iowr_bl_return_if_loop_1_unnamed_if_loop_17_if_loop_13_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_return_if_loop_1_unnamed_if_loop_17_if_loop_13_backStall = i_llvm_fpga_push_token_i1_throttle_push_if_loop_14_out_stall_out | ~ (SE_out_i_iowr_bl_return_if_loop_1_unnamed_if_loop_17_if_loop_13_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_return_if_loop_1_unnamed_if_loop_17_if_loop_13_wireValid = i_iowr_bl_return_if_loop_1_unnamed_if_loop_17_if_loop_13_out_o_valid;

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11(BITJOIN,39)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_q = i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_out_dest_data_out_2_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11(BITSELECT,40)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_q[31:0]);

    // c_i32_05(CONSTANT,2)
    assign c_i32_05_q = $unsigned(32'b00000000000000000000000000000000);

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp94_if_loop_10(BITJOIN,35)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp94_if_loop_10_q = i_llvm_fpga_ffwd_dest_i1_cmp94_if_loop_10_out_dest_data_out_0_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp94_if_loop_10(BITSELECT,36)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp94_if_loop_10_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp94_if_loop_10_q[0:0]);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_sum_0_lcssa_select_if_loop_12(MUX,14)@1
    assign i_sum_0_lcssa_select_if_loop_12_s = bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp94_if_loop_10_b;
    always @(i_sum_0_lcssa_select_if_loop_12_s or c_i32_05_q or bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_b)
    begin
        unique case (i_sum_0_lcssa_select_if_loop_12_s)
            1'b0 : i_sum_0_lcssa_select_if_loop_12_q = c_i32_05_q;
            1'b1 : i_sum_0_lcssa_select_if_loop_12_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_b;
            default : i_sum_0_lcssa_select_if_loop_12_q = 32'b0;
        endcase
    end

    // i_iowr_bl_return_if_loop_1_unnamed_if_loop_17_if_loop_13(BLACKBOX,10)@1
    // in in_i_stall@20000000
    // out out_iowr_bl_return_if_loop_1_o_fifodata@20000000
    // out out_iowr_bl_return_if_loop_1_o_fifovalid@20000000
    // out out_o_stall@20000000
    if_loop_1_i_iowr_bl_return_unnamed_if_loop_17_if_loop_10 thei_iowr_bl_return_if_loop_1_unnamed_if_loop_17_if_loop_13 (
        .in_i_data(i_sum_0_lcssa_select_if_loop_12_q),
        .in_i_stall(SE_out_i_iowr_bl_return_if_loop_1_unnamed_if_loop_17_if_loop_13_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_V0),
        .in_iowr_bl_return_if_loop_1_i_fifoready(in_iowr_bl_return_if_loop_1_i_fifoready),
        .out_iowr_bl_return_if_loop_1_o_fifodata(i_iowr_bl_return_if_loop_1_unnamed_if_loop_17_if_loop_13_out_iowr_bl_return_if_loop_1_o_fifodata),
        .out_iowr_bl_return_if_loop_1_o_fifovalid(i_iowr_bl_return_if_loop_1_unnamed_if_loop_17_if_loop_13_out_iowr_bl_return_if_loop_1_o_fifovalid),
        .out_o_ack(i_iowr_bl_return_if_loop_1_unnamed_if_loop_17_if_loop_13_out_o_ack),
        .out_o_stall(i_iowr_bl_return_if_loop_1_unnamed_if_loop_17_if_loop_13_out_o_stall),
        .out_o_valid(i_iowr_bl_return_if_loop_1_unnamed_if_loop_17_if_loop_13_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_iowr_bl_return_if_loop_1_o_fifodata = i_iowr_bl_return_if_loop_1_unnamed_if_loop_17_if_loop_13_out_iowr_bl_return_if_loop_1_o_fifodata;
    assign out_iowr_bl_return_if_loop_1_o_fifovalid = i_iowr_bl_return_if_loop_1_unnamed_if_loop_17_if_loop_13_out_iowr_bl_return_if_loop_1_o_fifovalid;

    // feedback_out_1_sync(GPOUT,7)
    assign out_feedback_out_1 = i_llvm_fpga_push_token_i1_throttle_push_if_loop_14_out_feedback_out_1;

    // feedback_valid_out_1_sync(GPOUT,9)
    assign out_feedback_valid_out_1 = i_llvm_fpga_push_token_i1_throttle_push_if_loop_14_out_feedback_valid_out_1;

    // sync_out(GPOUT,28)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_sync_out_x(GPOUT,30)@1
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select7_if_loop_11_V1;

endmodule
