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

// SystemVerilog created from bb_if_loop_2_B1_start_stall_region
// Created for function/kernel if_loop_2
// SystemVerilog created on Thu Apr 27 00:09:17 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module if_loop_2_bb_B1_start_stall_region (
    input wire [127:0] in_iord_bl_call_if_loop_2_i_fifodata,
    input wire [0:0] in_iord_bl_call_if_loop_2_i_fifovalid,
    output wire [0:0] out_iord_bl_call_if_loop_2_o_fifoready,
    output wire [0:0] out_iord_bl_call_if_loop_2_o_fifoalmost_full,
    input wire [0:0] in_feedback_almost_empty_in_1,
    input wire [0:0] in_feedback_data_in_1,
    input wire [0:0] in_feedback_empty_in_1,
    output wire [0:0] out_feedback_stall_out_1,
    output wire [0:0] out_intel_reserved_ffwd_0_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_valid_in,
    output wire [32:0] out_intel_reserved_ffwd_1_0,
    output wire [0:0] out_almost_empty_out,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_almost_empty_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_data_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_empty_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_feedback_stall_out_1;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_valid_out;
    wire [0:0] i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_iord_bl_call_if_loop_2_o_fifoalmost_full;
    wire [0:0] i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_iord_bl_call_if_loop_2_o_fifoready;
    wire [0:0] i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_almost_empty;
    wire [0:0] i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_empty;
    wire [0:0] i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_valid;
    wire [63:0] i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_data_0_tpl;
    wire [31:0] i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_data_1_tpl;
    wire [0:0] i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_out_almost_empty_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_out_empty_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_out_almost_empty_out;
    wire [0:0] i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_out_empty_out;
    wire [0:0] i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_out_intel_reserved_ffwd_0_0;
    wire [32:0] i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_out_intel_reserved_ffwd_1_0;
    wire [0:0] i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_out_o_valid;
    wire [0:0] bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_b;
    wire [95:0] bubble_join_i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_q;
    wire [63:0] bubble_select_i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_b;
    wire [31:0] bubble_select_i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_c;
    wire [0:0] merged_in_SE_stall_entry_backStall;
    wire [0:0] merged_in_SE_stall_entry_V0;
    wire [0:0] merged_in_SE_stall_entry_V1;
    wire [0:0] merged_in_SE_stall_entry_V2;
    wire [0:0] merged_in_SE_stall_entry_temp_back_stall;
    wire [0:0] merged_in_SE_out_i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_backStall;
    wire [0:0] merged_in_SE_out_i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_V0;
    wire [0:0] merged_in_SE_out_i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_V1;
    wire [0:0] merged_in_SE_out_i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_V2;
    wire [0:0] merged_in_SE_out_i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_temp_back_stall;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_backStall;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_V0;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_V1;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_V2;
    wire [0:0] merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_temp_back_stall;
    wire [0:0] merged_in_SE_bubble_select_i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_backStall;
    wire [0:0] merged_in_SE_bubble_select_i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_V0;
    wire [0:0] merged_in_SE_bubble_select_i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_V1;
    wire [0:0] merged_in_SE_bubble_select_i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_V2;
    wire [0:0] merged_in_SE_bubble_select_i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_temp_back_stall;
    wire [0:0] merged_in_SE_out_i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_backStall;
    wire [0:0] merged_in_SE_out_i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_V0;
    wire [0:0] merged_in_SE_out_i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_V1;
    wire [0:0] merged_in_SE_out_i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_V2;
    wire [0:0] merged_in_SE_out_i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_temp_back_stall;
    reg [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_almost_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_data_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_data_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_valid_out_reg0_q;
    reg [0:0] stall_entry_frontStall_reg0_q;
    reg [0:0] stall_entry_frontStall_reg1_q;
    reg [0:0] stall_entry_frontValid_reg1_q;
    reg [0:0] stall_entry_frontValid_reg0_q;
    reg [0:0] stall_entry_frontEmpty_reg1_q;
    reg [0:0] stall_entry_frontEmpty_reg0_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg1_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg0_q;
    reg [0:0] i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_in_i_stall_reg0_q;
    reg [0:0] i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_in_i_stall_reg1_q;
    reg [0:0] i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_almost_empty_reg1_q;
    reg [0:0] i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_almost_empty_reg0_q;
    reg [0:0] i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_empty_reg1_q;
    reg [0:0] i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_empty_reg0_q;
    reg [0:0] i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_valid_reg1_q;
    reg [0:0] i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_valid_reg0_q;
    reg [63:0] i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_data_0_tpl_reg1_q;
    reg [63:0] i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_data_0_tpl_reg0_q;
    reg [31:0] i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_data_1_tpl_reg1_q;
    reg [31:0] i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_data_1_tpl_reg0_q;
    reg [0:0] i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_in_i_stall_reg0_q;
    reg [0:0] i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_in_i_stall_reg1_q;
    reg [0:0] i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_out_almost_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_out_almost_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_out_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_out_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_out_o_valid_reg1_q;
    reg [0:0] i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_out_o_valid_reg0_q;
    reg [0:0] i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_in_i_stall_reg0_q;
    reg [0:0] i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_in_i_stall_reg1_q;
    reg [0:0] i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_out_almost_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_out_almost_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_out_empty_out_reg1_q;
    reg [0:0] i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_out_empty_out_reg0_q;
    reg [0:0] i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_out_o_valid_reg1_q;
    reg [0:0] i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_out_o_valid_reg0_q;
    reg [0:0] rst_sync_rst_sclrn;


    // i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_almost_empty_reg0(REG,91)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_almost_empty_reg0_q <= $unsigned(i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_almost_empty);
        end
    end

    // i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_almost_empty_reg1(REG,90)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_almost_empty_reg1_q <= $unsigned(i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_almost_empty_reg0_q);
        end
    end

    // i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_empty_reg0(REG,93)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_empty_reg0_q <= $unsigned(i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_empty);
        end
    end

    // i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_empty_reg1(REG,92)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_empty_reg1_q <= $unsigned(i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_empty_reg0_q);
        end
    end

    // i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_data_1_tpl_reg0(REG,99)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_data_1_tpl_reg0_q <= $unsigned(i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_data_1_tpl);
        end
    end

    // i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_data_1_tpl_reg1(REG,98)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_data_1_tpl_reg1_q <= $unsigned(i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_data_1_tpl_reg0_q);
        end
    end

    // i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_data_0_tpl_reg0(REG,97)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_data_0_tpl_reg0_q <= $unsigned(i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_data_0_tpl);
        end
    end

    // i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_data_0_tpl_reg1(REG,96)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_data_0_tpl_reg1_q <= $unsigned(i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_data_0_tpl_reg0_q);
        end
    end

    // bubble_join_i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x(BITJOIN,37)
    assign bubble_join_i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_q = {i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_data_1_tpl_reg1_q, i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_data_0_tpl_reg1_q};

    // bubble_select_i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x(BITSELECT,38)
    assign bubble_select_i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_b = $unsigned(bubble_join_i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_q[63:0]);
    assign bubble_select_i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_c = $unsigned(bubble_join_i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_q[95:64]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_out_almost_empty_out_reg0(REG,111)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_out_almost_empty_out_reg0_q <= $unsigned(i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_out_almost_empty_out);
        end
    end

    // i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_out_almost_empty_out_reg1(REG,110)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_out_almost_empty_out_reg1_q <= $unsigned(i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_out_almost_empty_out_reg0_q);
        end
    end

    // i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_out_empty_out_reg0(REG,113)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_out_empty_out_reg0_q <= $unsigned(i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_out_empty_out);
        end
    end

    // i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_out_empty_out_reg1(REG,112)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_out_empty_out_reg1_q <= $unsigned(i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_out_empty_out_reg0_q);
        end
    end

    // i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_out_o_valid_reg0(REG,115)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_out_o_valid_reg0_q <= $unsigned(i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_out_o_valid);
        end
    end

    // i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_out_o_valid_reg1(REG,114)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_out_o_valid_reg1_q <= $unsigned(i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_out_o_valid_reg0_q);
        end
    end

    // merged_in_SE_out_i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x(STALLENABLE,69)
    assign merged_in_SE_out_i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_backStall = in_stall_in;
    assign merged_in_SE_out_i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_V0 = i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_out_o_valid_reg1_q;
    assign merged_in_SE_out_i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_V1 = i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_out_empty_out_reg1_q;
    assign merged_in_SE_out_i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_V2 = i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_out_almost_empty_out_reg1_q;

    // i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_in_i_stall_reg0(REG,108)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_in_i_stall_reg0_q <= $unsigned(merged_in_SE_out_i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_backStall);
        end
    end

    // i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_in_i_stall_reg1(REG,109)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_in_i_stall_reg1_q <= $unsigned(i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_in_i_stall_reg0_q);
        end
    end

    // i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x(BLACKBOX,31)@76
    // in in_i_stall@20000000
    // out out_almost_empty_out@110
    // out out_empty_out@110
    // out out_intel_reserved_ffwd_0_0@20000000
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@110
    // out out_c1_exit_0_tpl@110
    if_loop_2_i_sfc_s_c1_in_wt_entry_s_c1_enter_if_loop_24 thei_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_V2),
        .in_empty_in(merged_in_SE_bubble_select_i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_V1),
        .in_i_stall(i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_bubble_select_i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_V0),
        .in_c1_eni1_0_tpl(GND_q),
        .in_c1_eni1_1_tpl(bubble_select_i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_b),
        .in_c1_eni1_2_tpl(bubble_select_i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_c),
        .out_almost_empty_out(i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_out_almost_empty_out),
        .out_empty_out(i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_out_empty_out),
        .out_intel_reserved_ffwd_0_0(i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_out_intel_reserved_ffwd_1_0),
        .out_o_stall(i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_out_o_valid),
        .out_c1_exit_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_valid_reg0(REG,95)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_valid_reg0_q <= $unsigned(i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_valid);
        end
    end

    // i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_valid_reg1(REG,94)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_valid_reg1_q <= $unsigned(i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_valid_reg0_q);
        end
    end

    // merged_in_SE_bubble_select_i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x(STALLENABLE,68)
    assign merged_in_SE_bubble_select_i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_backStall = i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_out_o_stall;
    assign merged_in_SE_bubble_select_i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_V0 = i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_valid_reg1_q;
    assign merged_in_SE_bubble_select_i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_V1 = i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_empty_reg1_q;
    assign merged_in_SE_bubble_select_i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_V2 = i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_almost_empty_reg1_q;

    // i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_in_i_stall_reg0(REG,88)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_in_i_stall_reg0_q <= $unsigned(merged_in_SE_bubble_select_i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_backStall);
        end
    end

    // i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_in_i_stall_reg1(REG,89)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_in_i_stall_reg1_q <= $unsigned(i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_in_i_stall_reg0_q);
        end
    end

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_in_stall_in_reg0(REG,70)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_in_stall_in_reg0_q <= $unsigned(merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_backStall);
        end
    end

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_in_stall_in_reg1(REG,71)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_in_stall_in_reg1_q <= $unsigned(i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_in_stall_in_reg0_q);
        end
    end

    // i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_in_i_stall_reg0(REG,100)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_in_i_stall_reg0_q <= $unsigned(merged_in_SE_out_i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_backStall);
        end
    end

    // i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_in_i_stall_reg1(REG,101)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_in_i_stall_reg1_q <= $unsigned(i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_in_i_stall_reg0_q);
        end
    end

    // stall_entry_frontAlmostEmpty_reg0(REG,87)
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

    // stall_entry_frontAlmostEmpty_reg1(REG,86)
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

    // stall_entry_frontEmpty_reg0(REG,85)
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

    // stall_entry_frontEmpty_reg1(REG,84)
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

    // stall_entry_frontValid_reg0(REG,83)
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

    // stall_entry_frontValid_reg1(REG,82)
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

    // merged_in_SE_stall_entry(STALLENABLE,65)
    assign merged_in_SE_stall_entry_backStall = i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_out_o_stall;
    assign merged_in_SE_stall_entry_V0 = stall_entry_frontValid_reg1_q;
    assign merged_in_SE_stall_entry_V1 = stall_entry_frontEmpty_reg1_q;
    assign merged_in_SE_stall_entry_V2 = stall_entry_frontAlmostEmpty_reg1_q;

    // i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x(BLACKBOX,30)@0
    // in in_i_stall@20000000
    // out out_almost_empty_out@35
    // out out_empty_out@35
    // out out_o_stall@20000000
    // out out_o_valid@35
    // out out_c0_exit_0_tpl@35
    // out out_c0_exit_1_tpl@35
    if_loop_2_i_sfc_s_c0_in_wt_entry_s_c0_enter1_if_loop_20 thei_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x (
        .in_almost_empty_in(merged_in_SE_stall_entry_V2),
        .in_empty_in(merged_in_SE_stall_entry_V1),
        .in_i_stall(i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_stall_entry_V0),
        .in_unnamed_if_loop_20_0_tpl(GND_q),
        .out_almost_empty_out(i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_out_almost_empty_out),
        .out_empty_out(i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_out_empty_out),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_out_o_valid),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_out_almost_empty_out_reg0(REG,103)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_out_almost_empty_out_reg0_q <= $unsigned(i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_out_almost_empty_out);
        end
    end

    // i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_out_almost_empty_out_reg1(REG,102)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_out_almost_empty_out_reg1_q <= $unsigned(i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_out_almost_empty_out_reg0_q);
        end
    end

    // i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_out_empty_out_reg0(REG,105)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_out_empty_out_reg0_q <= $unsigned(i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_out_empty_out);
        end
    end

    // i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_out_empty_out_reg1(REG,104)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_out_empty_out_reg1_q <= $unsigned(i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_out_empty_out_reg0_q);
        end
    end

    // i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_out_o_valid_reg0(REG,107)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_out_o_valid_reg0_q <= $unsigned(i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_out_o_valid);
        end
    end

    // i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_out_o_valid_reg1(REG,106)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_out_o_valid_reg1_q <= $unsigned(i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_out_o_valid_reg0_q);
        end
    end

    // merged_in_SE_out_i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x(STALLENABLE,66)
    assign merged_in_SE_out_i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_backStall = i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_stall_out;
    assign merged_in_SE_out_i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_V0 = i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_out_o_valid_reg1_q;
    assign merged_in_SE_out_i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_V1 = i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_out_empty_out_reg1_q;
    assign merged_in_SE_out_i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_V2 = i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_out_almost_empty_out_reg1_q;

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21(BLACKBOX,12)@35
    // in in_stall_in@20000000
    // out out_almost_empty_out@52
    // out out_data_out@52
    // out out_empty_out@52
    // out out_feedback_stall_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@52
    if_loop_2_i_llvm_fpga_pop_throttle_i1_throttle_pop_0 thei_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21 (
        .in_almost_empty_in(merged_in_SE_out_i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_V2),
        .in_data_in(GND_q),
        .in_dir_in(GND_q),
        .in_empty_in(merged_in_SE_out_i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_V1),
        .in_feedback_almost_empty_in_1(in_feedback_almost_empty_in_1),
        .in_feedback_data_in_1(in_feedback_data_in_1),
        .in_feedback_empty_in_1(in_feedback_empty_in_1),
        .in_stall_in(i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_out_i_sfc_s_c0_in_wt_entry_if_loop_2s_c0_enter1_if_loop_20_aunroll_x_V0),
        .out_almost_empty_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_almost_empty_out),
        .out_data_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_data_out),
        .out_empty_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_empty_out),
        .out_feedback_stall_out_1(i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_feedback_stall_out_1),
        .out_stall_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_data_out_reg0(REG,75)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_data_out_reg0_q <= $unsigned(i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_data_out);
        end
    end

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_data_out_reg1(REG,74)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_data_out_reg1_q <= $unsigned(i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_data_out_reg0_q);
        end
    end

    // bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21(BITJOIN,33)
    assign bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_q = i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_data_out_reg1_q;

    // bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21(BITSELECT,34)
    assign bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_b = $unsigned(bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_q[0:0]);

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_almost_empty_out_reg0(REG,73)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_almost_empty_out_reg0_q <= $unsigned(i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_almost_empty_out);
        end
    end

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_almost_empty_out_reg1(REG,72)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_almost_empty_out_reg1_q <= $unsigned(i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_almost_empty_out_reg0_q);
        end
    end

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_empty_out_reg0(REG,77)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_empty_out_reg0_q <= $unsigned(i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_empty_out);
        end
    end

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_empty_out_reg1(REG,76)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_empty_out_reg1_q <= $unsigned(i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_empty_out_reg0_q);
        end
    end

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_valid_out_reg0(REG,79)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_valid_out_reg0_q <= $unsigned(i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_valid_out);
        end
    end

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_valid_out_reg1(REG,78)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_valid_out_reg1_q <= $unsigned(i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_valid_out_reg0_q);
        end
    end

    // merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21(STALLENABLE,67)
    assign merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_backStall = i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_stall;
    assign merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_V0 = i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_valid_out_reg1_q;
    assign merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_V1 = i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_empty_out_reg1_q;
    assign merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_V2 = i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_almost_empty_out_reg1_q;

    // i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x(BLACKBOX,29)@52
    // in in_i_stall@20000000
    // out out_iord_bl_call_if_loop_2_o_fifoalmost_full@20000000
    // out out_iord_bl_call_if_loop_2_o_fifoready@20000000
    // out out_o_almost_empty@76
    // out out_o_empty@76
    // out out_o_stall@20000000
    // out out_o_valid@76
    // out out_o_data_0_tpl@76
    // out out_o_data_1_tpl@76
    if_loop_2_i_iord_bl_call_unnamed_if_loop_21_if_loop_20 thei_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x (
        .in_almost_empty_in(merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_V2),
        .in_empty_in(merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_V1),
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_b),
        .in_i_stall(i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_in_i_stall_reg1_q),
        .in_i_valid(merged_in_SE_bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_V0),
        .in_iord_bl_call_if_loop_2_i_fifodata(in_iord_bl_call_if_loop_2_i_fifodata),
        .in_iord_bl_call_if_loop_2_i_fifovalid(in_iord_bl_call_if_loop_2_i_fifovalid),
        .out_iord_bl_call_if_loop_2_o_fifoalmost_full(i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_iord_bl_call_if_loop_2_o_fifoalmost_full),
        .out_iord_bl_call_if_loop_2_o_fifoready(i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_iord_bl_call_if_loop_2_o_fifoready),
        .out_o_almost_empty(i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_almost_empty),
        .out_o_empty(i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_empty),
        .out_o_stall(i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,7)
    assign out_iord_bl_call_if_loop_2_o_fifoready = i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_iord_bl_call_if_loop_2_o_fifoready;
    assign out_iord_bl_call_if_loop_2_o_fifoalmost_full = i_iord_bl_call_if_loop_2_unnamed_if_loop_21_if_loop_22_aunroll_x_out_iord_bl_call_if_loop_2_o_fifoalmost_full;

    // feedback_stall_out_1_sync(GPOUT,11)
    assign out_feedback_stall_out_1 = i_llvm_fpga_pop_throttle_i1_throttle_pop_if_loop_21_out_feedback_stall_out_1;

    // regfree_osync(GPOUT,21)
    assign out_intel_reserved_ffwd_0_0 = i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_out_intel_reserved_ffwd_0_0;

    // stall_entry_frontStall_reg0(REG,80)
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

    // stall_entry_frontStall_reg1(REG,81)
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

    // sync_out(GPOUT,25)@0
    assign out_stall_out = stall_entry_frontStall_reg1_q;

    // dupName_0_regfree_osync_x(GPOUT,27)
    assign out_intel_reserved_ffwd_1_0 = i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_out_intel_reserved_ffwd_1_0;

    // dupName_0_sync_out_x(GPOUT,28)@110
    assign out_almost_empty_out = merged_in_SE_out_i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_V2;
    assign out_empty_out = merged_in_SE_out_i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_V1;
    assign out_valid_out = merged_in_SE_out_i_sfc_s_c1_in_wt_entry_if_loop_2s_c1_enter_if_loop_24_aunroll_x_V0;

    // rst_sync(RESETSYNC,116)
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
