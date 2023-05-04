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

// SystemVerilog created from bb_if_loop_3_B5_stall_region
// Created for function/kernel if_loop_3
// SystemVerilog created on Thu May  4 08:54:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module if_loop_3_bb_B5_stall_region (
    input wire [0:0] in_iowr_bl_return_if_loop_3_i_fifoready,
    output wire [31:0] out_iowr_bl_return_if_loop_3_o_fifodata,
    output wire [0:0] out_iowr_bl_return_if_loop_3_o_fifovalid,
    output wire [0:0] out_feedback_almost_empty_out_1,
    output wire [0:0] out_feedback_data_out_1,
    output wire [0:0] out_feedback_empty_out_1,
    input wire [0:0] in_feedback_stall_in_1,
    input wire [0:0] in_intel_reserved_ffwd_3_0,
    input wire [31:0] in_intel_reserved_ffwd_5_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_almost_empty_out,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_iowr_bl_return_if_loop_3_o_fifodata;
    wire [0:0] i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_iowr_bl_return_if_loop_3_o_fifovalid;
    wire [0:0] i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_ack;
    wire [0:0] i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_almost_empty;
    wire [0:0] i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_empty;
    wire [0:0] i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_stall;
    wire [0:0] i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_valid;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_out_almost_empty_out;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_out_empty_out;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_out_feedback_almost_empty_out_1;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_out_feedback_data_out_1;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_out_feedback_empty_out_1;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_out_stall_out;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_almost_empty_out;
    wire [0:0] i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_empty_out;
    wire [0:0] i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_c0_exit46_1_tpl;
    wire [0:0] bubble_join_i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_q;
    wire [0:0] bubble_select_i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_b;
    wire [31:0] bubble_join_i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_b;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_temp_back_stall;
    wire [0:0] merged_in_SE_stall_entry_backStall;
    wire [0:0] merged_in_SE_stall_entry_V0;
    wire [0:0] merged_in_SE_stall_entry_V1;
    wire [0:0] merged_in_SE_stall_entry_V2;
    wire [0:0] merged_in_SE_stall_entry_temp_back_stall;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_backStall;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_V0;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_V2;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_V4;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_V1;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_V3;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_V5;
    wire [0:0] merged_in_SE_bubble_select_i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_temp_back_stall;
    wire [0:0] merged_in_SE_bubble_select_i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_backStall;
    wire [0:0] merged_in_SE_bubble_select_i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_V0;
    wire [0:0] merged_in_SE_bubble_select_i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_V1;
    wire [0:0] merged_in_SE_bubble_select_i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_V2;
    wire [0:0] merged_in_SE_bubble_select_i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_temp_back_stall;
    reg [0:0] i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_in_i_stall_reg0_q;
    reg [0:0] i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_in_i_stall_reg1_q;
    reg [0:0] i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_ack_reg1_q;
    reg [0:0] i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_ack_reg0_q;
    reg [0:0] i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_almost_empty_reg1_q;
    reg [0:0] i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_almost_empty_reg0_q;
    reg [0:0] i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_empty_reg1_q;
    reg [0:0] i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_empty_reg0_q;
    reg [0:0] i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_valid_reg1_q;
    reg [0:0] i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_valid_reg0_q;
    reg [0:0] i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_out_almost_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_out_valid_out_reg0_q;
    reg [0:0] stall_entry_frontStall_reg0_q;
    reg [0:0] stall_entry_frontStall_reg1_q;
    reg [0:0] stall_entry_frontValid_reg1_q;
    reg [0:0] stall_entry_frontValid_reg0_q;
    reg [0:0] stall_entry_frontEmpty_reg1_q;
    reg [0:0] stall_entry_frontEmpty_reg0_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg1_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_in_i_stall_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_in_i_stall_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_almost_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_almost_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_o_valid_reg1_q;
    reg [0:0] i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_o_valid_reg0_q;
    reg [31:0] i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_c0_exit46_1_tpl_reg1_q;
    reg [31:0] i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_c0_exit46_1_tpl_reg0_q;
    reg [0:0] rst_sync_rst_sclrn;


    // i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_almost_empty_reg0(REG,64)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_almost_empty_reg0_q <= $unsigned(i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_almost_empty);
        end
    end

    // i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_almost_empty_reg1(REG,63)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_almost_empty_reg1_q <= $unsigned(i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_almost_empty_reg0_q);
        end
    end

    // i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_empty_reg0(REG,66)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_empty_reg0_q <= $unsigned(i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_empty);
        end
    end

    // i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_empty_reg1(REG,65)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_empty_reg1_q <= $unsigned(i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_empty_reg0_q);
        end
    end

    // i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_out_almost_empty_out_reg0(REG,72)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_out_almost_empty_out_reg0_q <= $unsigned(i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_out_almost_empty_out);
        end
    end

    // i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_out_almost_empty_out_reg1(REG,71)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_out_almost_empty_out_reg1_q <= $unsigned(i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_out_almost_empty_out_reg0_q);
        end
    end

    // i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_out_empty_out_reg0(REG,74)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_out_empty_out_reg0_q <= $unsigned(i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_out_empty_out);
        end
    end

    // i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_out_empty_out_reg1(REG,73)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_out_empty_out_reg1_q <= $unsigned(i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_out_empty_out_reg0_q);
        end
    end

    // i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_out_valid_out_reg0(REG,76)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_out_valid_out_reg0_q <= $unsigned(i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_out_valid_out);
        end
    end

    // i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_out_valid_out_reg1(REG,75)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_out_valid_out_reg1_q <= $unsigned(i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_out_valid_out_reg0_q);
        end
    end

    // SE_out_i_llvm_fpga_push_token_i1_throttle_push_if_loop_33(STALLENABLE,39)
    assign SE_out_i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_backStall = $unsigned(1'b0);

    // i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_in_stall_in_reg0(REG,69)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_in_stall_in_reg0_q <= $unsigned(SE_out_i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_backStall);
        end
    end

    // i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_in_stall_in_reg1(REG,70)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_in_stall_in_reg1_q <= $unsigned(i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_in_stall_in_reg0_q);
        end
    end

    // i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_ack_reg0(REG,62)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_ack_reg0_q <= $unsigned(i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_ack);
        end
    end

    // i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_ack_reg1(REG,61)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_ack_reg1_q <= $unsigned(i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_ack_reg0_q);
        end
    end

    // bubble_join_i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32(BITJOIN,29)
    assign bubble_join_i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_q = i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_ack_reg1_q;

    // bubble_select_i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32(BITSELECT,30)
    assign bubble_select_i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_b = $unsigned(bubble_join_i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_q[0:0]);

    // i_llvm_fpga_push_token_i1_throttle_push_if_loop_33(BLACKBOX,12)@56
    // in in_stall_in@20000000
    // out out_almost_empty_out@73
    // out out_data_out@73
    // out out_empty_out@73
    // out out_feedback_almost_empty_out_1@20000000
    // out out_feedback_data_out_1@20000000
    // out out_feedback_empty_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@73
    if_loop_3_i_llvm_fpga_push_token_i1_throttle_push_0 thei_llvm_fpga_push_token_i1_throttle_push_if_loop_33 (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_V2),
        .in_data_in(bubble_select_i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_b),
        .in_empty_in(merged_in_SE_bubble_select_i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_V1),
        .in_feedback_stall_in_1(in_feedback_stall_in_1),
        .in_stall_in(i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_select_i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_V0),
        .out_almost_empty_out(i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_out_almost_empty_out),
        .out_data_out(),
        .out_empty_out(i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_out_empty_out),
        .out_feedback_almost_empty_out_1(i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_out_feedback_almost_empty_out_1),
        .out_feedback_data_out_1(i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_out_feedback_data_out_1),
        .out_feedback_empty_out_1(i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_out_feedback_empty_out_1),
        .out_stall_out(i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_valid_reg0(REG,68)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_valid_reg0_q <= $unsigned(i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_valid);
        end
    end

    // i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_valid_reg1(REG,67)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_valid_reg1_q <= $unsigned(i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_valid_reg0_q);
        end
    end

    // merged_in_SE_bubble_select_i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32(STALLENABLE,58)
    assign merged_in_SE_bubble_select_i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_backStall = i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_out_stall_out;
    assign merged_in_SE_bubble_select_i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_V0 = i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_valid_reg1_q;
    assign merged_in_SE_bubble_select_i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_V1 = i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_empty_reg1_q;
    assign merged_in_SE_bubble_select_i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_V2 = i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_almost_empty_reg1_q;

    // i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_in_i_stall_reg0(REG,59)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_in_i_stall_reg0_q <= $unsigned(merged_in_SE_bubble_select_i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_backStall);
        end
    end

    // i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_in_i_stall_reg1(REG,60)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_in_i_stall_reg1_q <= $unsigned(i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_in_i_stall_reg0_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_in_i_stall_reg0(REG,85)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_in_i_stall_reg0_q <= $unsigned(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_backStall);
        end
    end

    // i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_in_i_stall_reg1(REG,86)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_in_i_stall_reg1_q <= $unsigned(i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_in_i_stall_reg0_q);
        end
    end

    // stall_entry_frontAlmostEmpty_reg0(REG,84)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontAlmostEmpty_reg0_q <= $unsigned(in_almost_empty_in);
        end
    end

    // stall_entry_frontAlmostEmpty_reg1(REG,83)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontAlmostEmpty_reg1_q <= $unsigned(stall_entry_frontAlmostEmpty_reg0_q);
        end
    end

    // stall_entry_frontEmpty_reg0(REG,82)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontEmpty_reg0_q <= $unsigned(in_empty_in);
        end
    end

    // stall_entry_frontEmpty_reg1(REG,81)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontEmpty_reg1_q <= $unsigned(stall_entry_frontEmpty_reg0_q);
        end
    end

    // stall_entry_frontValid_reg0(REG,80)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontValid_reg0_q <= $unsigned(in_valid_in);
        end
    end

    // stall_entry_frontValid_reg1(REG,79)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontValid_reg1_q <= $unsigned(stall_entry_frontValid_reg0_q);
        end
    end

    // merged_in_SE_stall_entry(STALLENABLE,56)
    assign merged_in_SE_stall_entry_backStall = i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_o_stall;
    assign merged_in_SE_stall_entry_V0 = stall_entry_frontValid_reg1_q;
    assign merged_in_SE_stall_entry_V1 = stall_entry_frontEmpty_reg1_q;
    assign merged_in_SE_stall_entry_V2 = stall_entry_frontAlmostEmpty_reg1_q;

    // i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x(BLACKBOX,27)@0
    // in in_i_stall@20000000
    // out out_almost_empty_out@32
    // out out_empty_out@32
    // out out_o_stall@20000000
    // out out_o_valid@32
    // out out_c0_exit46_0_tpl@32
    // out out_c0_exit46_1_tpl@32
    if_loop_3_i_sfc_s_c0_in_for_end19_loopex00000_enter44_if_loop_30 thei_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x (
        .in_almost_empty_in(merged_in_SE_stall_entry_V2),
        .in_empty_in(merged_in_SE_stall_entry_V1),
        .in_i_stall(i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_stall_entry_V0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_unnamed_if_loop_316_0_tpl(GND_q),
        .out_almost_empty_out(i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_almost_empty_out),
        .out_empty_out(i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_empty_out),
        .out_o_stall(i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_o_valid),
        .out_c0_exit46_0_tpl(),
        .out_c0_exit46_1_tpl(i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_c0_exit46_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_c0_exit46_1_tpl_reg0(REG,94)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_c0_exit46_1_tpl_reg0_q <= $unsigned(i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_c0_exit46_1_tpl);
        end
    end

    // i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_c0_exit46_1_tpl_reg1(REG,93)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_c0_exit46_1_tpl_reg1_q <= $unsigned(i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_c0_exit46_1_tpl_reg0_q);
        end
    end

    // bubble_join_i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x(BITJOIN,33)
    assign bubble_join_i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_q = i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_c0_exit46_1_tpl_reg1_q;

    // bubble_select_i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x(BITSELECT,34)
    assign bubble_select_i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_q[31:0]);

    // i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_almost_empty_out_reg0(REG,88)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_almost_empty_out_reg0_q <= $unsigned(i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_almost_empty_out);
        end
    end

    // i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_almost_empty_out_reg1(REG,87)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_almost_empty_out_reg1_q <= $unsigned(i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_almost_empty_out_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_empty_out_reg0(REG,90)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_empty_out_reg0_q <= $unsigned(i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_empty_out);
        end
    end

    // i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_empty_out_reg1(REG,89)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_empty_out_reg1_q <= $unsigned(i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_empty_out_reg0_q);
        end
    end

    // i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_o_valid_reg0(REG,92)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_o_valid_reg0_q <= $unsigned(i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_o_valid);
        end
    end

    // i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_o_valid_reg1(REG,91)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_o_valid_reg1_q <= $unsigned(i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_o_valid_reg0_q);
        end
    end

    // merged_in_SE_bubble_select_i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x(STALLENABLE,57)
    // Desync
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_temp_back_stall = in_stall_in | i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_stall;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_backStall = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_temp_back_stall;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_V0 = i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_o_valid_reg1_q;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_V2 = i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_empty_out_reg1_q;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_V4 = i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_out_almost_empty_out_reg1_q;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_V1 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_V0;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_V3 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_V2;
    assign merged_in_SE_bubble_select_i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_V5 = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_V4;

    // i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32(BLACKBOX,11)@32
    // in in_i_stall@20000000
    // out out_iowr_bl_return_if_loop_3_o_fifodata@20000000
    // out out_iowr_bl_return_if_loop_3_o_fifovalid@20000000
    // out out_o_ack@56
    // out out_o_almost_empty@56
    // out out_o_empty@56
    // out out_o_stall@20000000
    // out out_o_valid@56
    if_loop_3_i_iowr_bl_return_unnamed_if_loop_317_if_loop_30 thei_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32 (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_V5),
        .in_empty_in(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_V3),
        .in_i_data(bubble_select_i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_b),
        .in_i_stall(i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_bubble_select_i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_V1),
        .in_iowr_bl_return_if_loop_3_i_fifoready(in_iowr_bl_return_if_loop_3_i_fifoready),
        .out_iowr_bl_return_if_loop_3_o_fifodata(i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_iowr_bl_return_if_loop_3_o_fifodata),
        .out_iowr_bl_return_if_loop_3_o_fifovalid(i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_iowr_bl_return_if_loop_3_o_fifovalid),
        .out_o_ack(i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_ack),
        .out_o_almost_empty(i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_almost_empty),
        .out_o_empty(i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_empty),
        .out_o_stall(i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_stall),
        .out_o_valid(i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_iowr_bl_return_if_loop_3_o_fifodata = i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_iowr_bl_return_if_loop_3_o_fifodata;
    assign out_iowr_bl_return_if_loop_3_o_fifovalid = i_iowr_bl_return_if_loop_3_unnamed_if_loop_317_if_loop_32_out_iowr_bl_return_if_loop_3_o_fifovalid;

    // feedback_almost_empty_out_1_sync(GPOUT,7)
    assign out_feedback_almost_empty_out_1 = i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_out_feedback_almost_empty_out_1;

    // feedback_data_out_1_sync(GPOUT,8)
    assign out_feedback_data_out_1 = i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_out_feedback_data_out_1;

    // feedback_empty_out_1_sync(GPOUT,9)
    assign out_feedback_empty_out_1 = i_llvm_fpga_push_token_i1_throttle_push_if_loop_33_out_feedback_empty_out_1;

    // stall_entry_frontStall_reg0(REG,77)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontStall_reg0_q <= $unsigned(merged_in_SE_stall_entry_backStall);
        end
    end

    // stall_entry_frontStall_reg1(REG,78)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontStall_reg1_q <= $unsigned(stall_entry_frontStall_reg0_q);
        end
    end

    // sync_out(GPOUT,24)@0
    assign out_stall_out = stall_entry_frontStall_reg1_q;

    // dupName_0_sync_out_x(GPOUT,26)@32
    assign out_almost_empty_out = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_V4;
    assign out_empty_out = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_V2;
    assign out_valid_out = merged_in_SE_bubble_select_i_sfc_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30_aunroll_x_V0;

    // rst_sync(RESETSYNC,95)
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
