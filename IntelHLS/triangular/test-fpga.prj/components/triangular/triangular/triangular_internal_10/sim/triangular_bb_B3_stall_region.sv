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

// SystemVerilog created from bb_triangular_B3_stall_region
// Created for function/kernel triangular
// SystemVerilog created on Fri Apr  7 16:28:14 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_bb_B3_stall_region (
    input wire [0:0] in_wgl_6_exit_exit_valid_out,
    input wire [0:0] in_wgl_6_exit_exit_stall_out,
    output wire [0:0] out_wgl_6_exit_exit_valid_in,
    output wire [0:0] out_wgl_6_exit_exit_stall_in,
    output wire [0:0] out_feedback_out_1,
    input wire [0:0] in_feedback_stall_in_1,
    output wire [0:0] out_feedback_valid_out_1,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_c0_exe5803,
    input wire [0:0] in_valid_in,
    input wire [0:0] in_iowr_bl_return_triangular_i_fifoready,
    output wire [0:0] out_iowr_bl_return_triangular_o_fifodata,
    output wire [0:0] out_iowr_bl_return_triangular_o_fifovalid,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_iowr_bl_return_triangular_unnamed_triangular7_triangular1_out_iowr_bl_return_triangular_o_fifodata;
    wire [0:0] i_iowr_bl_return_triangular_unnamed_triangular7_triangular1_out_iowr_bl_return_triangular_o_fifovalid;
    wire [0:0] i_iowr_bl_return_triangular_unnamed_triangular7_triangular1_out_o_ack;
    wire [0:0] i_iowr_bl_return_triangular_unnamed_triangular7_triangular1_out_o_stall;
    wire [0:0] i_iowr_bl_return_triangular_unnamed_triangular7_triangular1_out_o_valid;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_triangular2_out_feedback_out_1;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_triangular2_out_feedback_valid_out_1;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_triangular2_out_stall_out;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_triangular2_out_valid_out;
    wire [0:0] i_llvm_fpga_wg_limiter_exit_unnamed_triangular6_triangular0_out_exit_stall_in;
    wire [0:0] i_llvm_fpga_wg_limiter_exit_unnamed_triangular6_triangular0_out_exit_valid_in;
    wire [0:0] i_llvm_fpga_wg_limiter_exit_unnamed_triangular6_triangular0_out_stall_out;
    wire [0:0] i_llvm_fpga_wg_limiter_exit_unnamed_triangular6_triangular0_out_valid_out;
    wire [0:0] bubble_join_i_iowr_bl_return_triangular_unnamed_triangular7_triangular1_q;
    wire [0:0] bubble_select_i_iowr_bl_return_triangular_unnamed_triangular7_triangular1_b;
    wire [31:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [0:0] SE_out_i_iowr_bl_return_triangular_unnamed_triangular7_triangular1_wireValid;
    wire [0:0] SE_out_i_iowr_bl_return_triangular_unnamed_triangular7_triangular1_backStall;
    wire [0:0] SE_out_i_iowr_bl_return_triangular_unnamed_triangular7_triangular1_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_throttle_push_triangular2_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_throttle_push_triangular2_backStall;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_exit_unnamed_triangular6_triangular0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_wg_limiter_exit_unnamed_triangular6_triangular0_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_toReg2;
    reg [0:0] SE_stall_entry_fromReg2;
    wire [0:0] SE_stall_entry_consumed2;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_stall_entry_V2;


    // SE_out_i_llvm_fpga_push_token_i1_throttle_push_triangular2(STALLENABLE,39)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_token_i1_throttle_push_triangular2_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_token_i1_throttle_push_triangular2_wireValid = i_llvm_fpga_push_token_i1_throttle_push_triangular2_out_valid_out;

    // bubble_join_i_iowr_bl_return_triangular_unnamed_triangular7_triangular1(BITJOIN,28)
    assign bubble_join_i_iowr_bl_return_triangular_unnamed_triangular7_triangular1_q = i_iowr_bl_return_triangular_unnamed_triangular7_triangular1_out_o_ack;

    // bubble_select_i_iowr_bl_return_triangular_unnamed_triangular7_triangular1(BITSELECT,29)
    assign bubble_select_i_iowr_bl_return_triangular_unnamed_triangular7_triangular1_b = $unsigned(bubble_join_i_iowr_bl_return_triangular_unnamed_triangular7_triangular1_q[0:0]);

    // i_llvm_fpga_push_token_i1_throttle_push_triangular2(BLACKBOX,11)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_feedback_out_1@20000000
    // out out_feedback_valid_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    triangular_i_llvm_fpga_push_token_i1_throttle_push_0 thei_llvm_fpga_push_token_i1_throttle_push_triangular2 (
        .in_data_in(bubble_select_i_iowr_bl_return_triangular_unnamed_triangular7_triangular1_b),
        .in_feedback_stall_in_1(in_feedback_stall_in_1),
        .in_stall_in(SE_out_i_llvm_fpga_push_token_i1_throttle_push_triangular2_backStall),
        .in_valid_in(SE_out_i_iowr_bl_return_triangular_unnamed_triangular7_triangular1_V0),
        .out_data_out(),
        .out_feedback_out_1(i_llvm_fpga_push_token_i1_throttle_push_triangular2_out_feedback_out_1),
        .out_feedback_valid_out_1(i_llvm_fpga_push_token_i1_throttle_push_triangular2_out_feedback_valid_out_1),
        .out_stall_out(i_llvm_fpga_push_token_i1_throttle_push_triangular2_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_token_i1_throttle_push_triangular2_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iowr_bl_return_triangular_unnamed_triangular7_triangular1(STALLENABLE,37)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_return_triangular_unnamed_triangular7_triangular1_V0 = SE_out_i_iowr_bl_return_triangular_unnamed_triangular7_triangular1_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_return_triangular_unnamed_triangular7_triangular1_backStall = i_llvm_fpga_push_token_i1_throttle_push_triangular2_out_stall_out | ~ (SE_out_i_iowr_bl_return_triangular_unnamed_triangular7_triangular1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_return_triangular_unnamed_triangular7_triangular1_wireValid = i_iowr_bl_return_triangular_unnamed_triangular7_triangular1_out_o_valid;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_iowr_bl_return_triangular_unnamed_triangular7_triangular1(BLACKBOX,10)@0
    // in in_i_stall@20000000
    // out out_iowr_bl_return_triangular_o_fifodata@20000000
    // out out_iowr_bl_return_triangular_o_fifovalid@20000000
    // out out_o_stall@20000000
    triangular_i_iowr_bl_return_unnamed_triangular7_triangular0 thei_iowr_bl_return_triangular_unnamed_triangular7_triangular1 (
        .in_i_data(GND_q),
        .in_i_stall(SE_out_i_iowr_bl_return_triangular_unnamed_triangular7_triangular1_backStall),
        .in_i_valid(SE_stall_entry_V0),
        .in_iowr_bl_return_triangular_i_fifoready(in_iowr_bl_return_triangular_i_fifoready),
        .out_iowr_bl_return_triangular_o_fifodata(i_iowr_bl_return_triangular_unnamed_triangular7_triangular1_out_iowr_bl_return_triangular_o_fifodata),
        .out_iowr_bl_return_triangular_o_fifovalid(i_iowr_bl_return_triangular_unnamed_triangular7_triangular1_out_iowr_bl_return_triangular_o_fifovalid),
        .out_o_ack(i_iowr_bl_return_triangular_unnamed_triangular7_triangular1_out_o_ack),
        .out_o_stall(i_iowr_bl_return_triangular_unnamed_triangular7_triangular1_out_o_stall),
        .out_o_valid(i_iowr_bl_return_triangular_unnamed_triangular7_triangular1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,42)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
            SE_stall_entry_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
            // Successor 2
            SE_stall_entry_fromReg2 <= SE_stall_entry_toReg2;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_iowr_bl_return_triangular_unnamed_triangular7_triangular1_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (in_stall_in) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (i_llvm_fpga_wg_limiter_exit_unnamed_triangular6_triangular0_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    assign SE_stall_entry_toReg2 = SE_stall_entry_StallValid & SE_stall_entry_consumed2;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed2 & SE_stall_entry_or1);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    assign SE_stall_entry_V2 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg2);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_out_i_llvm_fpga_wg_limiter_exit_unnamed_triangular6_triangular0(STALLENABLE,41)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_wg_limiter_exit_unnamed_triangular6_triangular0_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_wg_limiter_exit_unnamed_triangular6_triangular0_wireValid = i_llvm_fpga_wg_limiter_exit_unnamed_triangular6_triangular0_out_valid_out;

    // bubble_join_stall_entry(BITJOIN,31)
    assign bubble_join_stall_entry_q = in_c0_exe5803;

    // bubble_select_stall_entry(BITSELECT,32)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);

    // i_llvm_fpga_wg_limiter_exit_unnamed_triangular6_triangular0(BLACKBOX,12)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_exit_stall_in@1
    // out out_exit_valid_in@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    triangular_i_llvm_fpga_wg_limiter_exit_unnamed_6_triangular0 thei_llvm_fpga_wg_limiter_exit_unnamed_triangular6_triangular0 (
        .in_data_in(bubble_select_stall_entry_b),
        .in_exit_stall_out(in_wgl_6_exit_exit_stall_out),
        .in_exit_valid_out(in_wgl_6_exit_exit_valid_out),
        .in_stall_in(SE_out_i_llvm_fpga_wg_limiter_exit_unnamed_triangular6_triangular0_backStall),
        .in_valid_in(SE_stall_entry_V2),
        .out_data_out(),
        .out_exit_stall_in(i_llvm_fpga_wg_limiter_exit_unnamed_triangular6_triangular0_out_exit_stall_in),
        .out_exit_valid_in(i_llvm_fpga_wg_limiter_exit_unnamed_triangular6_triangular0_out_exit_valid_in),
        .out_stall_out(i_llvm_fpga_wg_limiter_exit_unnamed_triangular6_triangular0_out_stall_out),
        .out_valid_out(i_llvm_fpga_wg_limiter_exit_unnamed_triangular6_triangular0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_wgl_6_exit_exit_valid_in = i_llvm_fpga_wg_limiter_exit_unnamed_triangular6_triangular0_out_exit_valid_in;
    assign out_wgl_6_exit_exit_stall_in = i_llvm_fpga_wg_limiter_exit_unnamed_triangular6_triangular0_out_exit_stall_in;

    // feedback_out_1_sync(GPOUT,7)
    assign out_feedback_out_1 = i_llvm_fpga_push_token_i1_throttle_push_triangular2_out_feedback_out_1;

    // feedback_valid_out_1_sync(GPOUT,9)
    assign out_feedback_valid_out_1 = i_llvm_fpga_push_token_i1_throttle_push_triangular2_out_feedback_valid_out_1;

    // sync_out(GPOUT,22)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,25)
    assign out_iowr_bl_return_triangular_o_fifodata = i_iowr_bl_return_triangular_unnamed_triangular7_triangular1_out_iowr_bl_return_triangular_o_fifodata;
    assign out_iowr_bl_return_triangular_o_fifovalid = i_iowr_bl_return_triangular_unnamed_triangular7_triangular1_out_iowr_bl_return_triangular_o_fifovalid;

    // dupName_0_sync_out_x(GPOUT,26)@0
    assign out_valid_out = SE_stall_entry_V1;

endmodule
