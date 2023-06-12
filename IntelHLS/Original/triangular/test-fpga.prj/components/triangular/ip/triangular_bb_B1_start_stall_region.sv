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

// SystemVerilog created from bb_triangular_B1_start_stall_region
// Created for function/kernel triangular
// SystemVerilog created on Tue Apr 25 22:47:04 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_bb_B1_start_stall_region (
    input wire [191:0] in_iord_bl_call_triangular_i_fifodata,
    input wire [0:0] in_iord_bl_call_triangular_i_fifovalid,
    output wire [0:0] out_iord_bl_call_triangular_o_fifoready,
    output wire [0:0] out_iord_bl_call_triangular_o_fifoalmost_full,
    input wire [0:0] in_feedback_in_1,
    output wire [0:0] out_feedback_stall_out_1,
    input wire [0:0] in_feedback_valid_in_1,
    output wire [31:0] out_intel_reserved_ffwd_0_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    input wire [0:0] in_wgl_6_enter_exit_valid_in,
    input wire [0:0] in_wgl_6_enter_exit_stall_in,
    output wire [0:0] out_wgl_6_enter_exit_valid_out,
    output wire [0:0] out_wgl_6_enter_exit_stall_out,
    output wire [0:0] out_intel_reserved_ffwd_1_0,
    output wire [31:0] out_c1_exe1,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [31:0] out_reorder_limiter_enter,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_intel_reserved_ffwd_2_0,
    output wire [32:0] out_intel_reserved_ffwd_3_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_out_feedback_stall_out_1;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_out_valid_out;
    wire [31:0] i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_out_o_data;
    wire [0:0] i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_out_o_stall;
    wire [0:0] i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_out_o_valid;
    wire [0:0] i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_out_wgl_6_enter_exit_stall_out;
    wire [0:0] i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_out_wgl_6_enter_exit_valid_out;
    wire [0:0] i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_iord_bl_call_triangular_o_fifoalmost_full;
    wire [0:0] i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_iord_bl_call_triangular_o_fifoready;
    wire [0:0] i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_valid;
    wire [63:0] i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_data_0_tpl;
    wire [63:0] i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_data_1_tpl;
    wire [31:0] i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_data_2_tpl;
    wire [0:0] i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_c0_exit_1_tpl;
    wire [0:0] i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_c0_exit_2_tpl;
    wire [0:0] i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl;
    wire [31:0] i_sfc_s_c2_in_wt_entry_triangulars_c2_enter_triangular10_aunroll_x_out_intel_reserved_ffwd_0_0;
    wire [0:0] i_sfc_s_c2_in_wt_entry_triangulars_c2_enter_triangular10_aunroll_x_out_intel_reserved_ffwd_1_0;
    wire [31:0] i_sfc_s_c2_in_wt_entry_triangulars_c2_enter_triangular10_aunroll_x_out_intel_reserved_ffwd_2_0;
    wire [32:0] i_sfc_s_c2_in_wt_entry_triangulars_c2_enter_triangular10_aunroll_x_out_intel_reserved_ffwd_3_0;
    wire [0:0] i_sfc_s_c2_in_wt_entry_triangulars_c2_enter_triangular10_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c2_in_wt_entry_triangulars_c2_enter_triangular10_aunroll_x_out_o_valid;
    reg [31:0] redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_q;
    wire [0:0] redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_i_valid;
    wire redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_i_valid_bitsignaltemp;
    wire [0:0] redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_i_stall;
    wire redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_i_stall_bitsignaltemp;
    wire [0:0] redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_i_data;
    wire [0:0] redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_o_valid;
    wire redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_o_valid_bitsignaltemp;
    wire [0:0] redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_o_stall;
    wire redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_o_stall_bitsignaltemp;
    wire [0:0] redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_o_data;
    wire [0:0] bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_b;
    wire [31:0] bubble_join_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_q;
    wire [31:0] bubble_select_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_b;
    wire [159:0] bubble_join_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_q;
    wire [63:0] bubble_select_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_b;
    wire [63:0] bubble_select_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_c;
    wire [31:0] bubble_select_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_d;
    wire [2:0] bubble_join_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_d;
    wire [31:0] bubble_join_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_b;
    wire [0:0] bubble_join_redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_q;
    wire [0:0] bubble_select_redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_b;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_backStall;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_V1;
    reg [0:0] SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_R_v_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_v_s_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_s_tv_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_backEN;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_backStall;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_V0;
    wire [0:0] SE_out_redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_wireValid;
    wire [0:0] SE_out_redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_and0;
    wire [0:0] SE_out_redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_and1;
    wire [0:0] SE_out_redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_and2;
    wire [0:0] SE_out_redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_backStall;
    wire [0:0] SE_out_redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_V0;
    reg [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_1_reg_R_v_0;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_1_reg_v_s_0;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_1_reg_backEN;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_1_reg_backStall;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_1_reg_V0;
    reg [0:0] rst_sync_rst_sclrn;


    // bubble_join_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x(BITJOIN,57)
    assign bubble_join_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_q = {i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_c0_exit_2_tpl, i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_c0_exit_1_tpl, i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid};

    // bubble_select_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x(BITSELECT,58)
    assign bubble_select_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_q[2:2]);

    // SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x(STALLENABLE,78)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_consumed0 = (~ (SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_backStall) & SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_consumed1 = (~ (i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_out_o_stall) & SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_StallValid = SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_backStall & SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_toReg0 = SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_toReg1 = SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_or0 = SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_consumed1 & SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_or0);
    assign SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_backStall = SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_V0 = SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_V1 = SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_wireValid = i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_o_valid;

    // SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0(STALLENABLE,81)
    // Valid signal propagation
    assign SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_V0 = SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_s_tv_0 = SE_out_redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_backStall & SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_backEN = ~ (SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_v_s_0 = SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_backEN & SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_V0;
    // Backward Stall generation
    assign SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_backStall = ~ (SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_v_s_0);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_R_v_0 <= SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_R_v_0 & SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_R_v_0 <= SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_v_s_0;
            end

        end
    end

    // bubble_join_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x(BITJOIN,54)
    assign bubble_join_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_q = {i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_data_2_tpl, i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_data_1_tpl, i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_data_0_tpl};

    // bubble_select_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x(BITSELECT,55)
    assign bubble_select_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_b = $unsigned(bubble_join_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_q[63:0]);
    assign bubble_select_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_c = $unsigned(bubble_join_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_q[127:64]);
    assign bubble_select_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_d = $unsigned(bubble_join_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_q[159:128]);

    // i_sfc_s_c2_in_wt_entry_triangulars_c2_enter_triangular10_aunroll_x(BLACKBOX,40)@10
    // in in_i_stall@20000000
    // out out_intel_reserved_ffwd_0_0@20000000
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_intel_reserved_ffwd_3_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@17
    // out out_c2_exit_0_tpl@17
    triangular_i_sfc_s_c2_in_wt_entry_s_c2_enter_triangular10 thei_sfc_s_c2_in_wt_entry_triangulars_c2_enter_triangular10_aunroll_x (
        .in_i_stall(SE_out_redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_backStall),
        .in_i_valid(SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_V0),
        .in_c2_eni1_0_tpl(GND_q),
        .in_c2_eni1_1_tpl(bubble_select_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_b),
        .in_c2_eni1_2_tpl(bubble_select_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_c),
        .in_c2_eni1_3_tpl(bubble_select_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_d),
        .out_intel_reserved_ffwd_0_0(i_sfc_s_c2_in_wt_entry_triangulars_c2_enter_triangular10_aunroll_x_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(i_sfc_s_c2_in_wt_entry_triangulars_c2_enter_triangular10_aunroll_x_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(i_sfc_s_c2_in_wt_entry_triangulars_c2_enter_triangular10_aunroll_x_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(i_sfc_s_c2_in_wt_entry_triangulars_c2_enter_triangular10_aunroll_x_out_intel_reserved_ffwd_3_0),
        .out_o_stall(i_sfc_s_c2_in_wt_entry_triangulars_c2_enter_triangular10_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c2_in_wt_entry_triangulars_c2_enter_triangular10_aunroll_x_out_o_valid),
        .out_c2_exit_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x(BITJOIN,61)
    assign bubble_join_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_q = i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl;

    // bubble_select_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x(BITSELECT,62)
    assign bubble_select_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_q[31:0]);

    // i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8(BLACKBOX,12)@16
    // in in_i_stall@20000000
    // out out_o_data@17
    // out out_o_stall@20000000
    // out out_o_valid@17
    // out out_wgl_6_enter_exit_stall_out@20000000
    // out out_wgl_6_enter_exit_valid_out@20000000
    triangular_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_0 thei_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8 (
        .in_i_data(bubble_select_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_b),
        .in_i_stall(SE_out_redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_V1),
        .in_wgl_6_enter_exit_stall_in(in_wgl_6_enter_exit_stall_in),
        .in_wgl_6_enter_exit_valid_in(in_wgl_6_enter_exit_valid_in),
        .out_o_data(i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_out_o_data),
        .out_o_stall(i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_out_o_stall),
        .out_o_valid(i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_out_o_valid),
        .out_wgl_6_enter_exit_stall_out(i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_out_wgl_6_enter_exit_stall_out),
        .out_wgl_6_enter_exit_valid_out(i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_out_wgl_6_enter_exit_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // SE_out_redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo(STALLENABLE,83)
    // Valid signal propagation
    assign SE_out_redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_V0 = SE_out_redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_backStall = in_stall_in | ~ (SE_out_redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_and0 = redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_o_valid;
    assign SE_out_redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_and1 = i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_out_o_valid & SE_out_redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_and0;
    assign SE_out_redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_and2 = i_sfc_s_c2_in_wt_entry_triangulars_c2_enter_triangular10_aunroll_x_out_o_valid & SE_out_redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_and1;
    assign SE_out_redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_wireValid = SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_V0 & SE_out_redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_and2;

    // redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo(STALLFIFO,44)
    assign redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_i_valid = SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_V2;
    assign redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_i_stall = SE_out_redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_backStall;
    assign redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_i_data = bubble_select_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_b;
    assign redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_i_valid_bitsignaltemp = redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_i_valid[0];
    assign redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_i_stall_bitsignaltemp = redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_i_stall[0];
    assign redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_o_valid[0] = redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_o_valid_bitsignaltemp;
    assign redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_o_stall[0] = redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_o_stall_bitsignaltemp;
    hld_fifo #(
        .DEPTH(10),
        .WIDTH(1),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .STALL_IN_EARLINESS(0),
        .VALID_IN_EARLINESS(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .NEVER_OVERFLOWS(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1)
    ) theredist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo (
        .i_valid(redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_i_valid_bitsignaltemp),
        .i_stall(redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_i_stall_bitsignaltemp),
        .i_data(bubble_select_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_b),
        .o_valid(redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_o_valid_bitsignaltemp),
        .o_stall(redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_o_stall_bitsignaltemp),
        .o_data(redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x(BLACKBOX,39)@8
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@16
    // out out_c1_exit_0_tpl@16
    // out out_c1_exit_1_tpl@16
    triangular_i_sfc_s_c1_in_wt_entry_s_c1_enter_triangular5 thei_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x (
        .in_c0_exe1(bubble_select_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_c),
        .in_c0_exe2(bubble_select_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_d),
        .in_i_stall(SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_V1),
        .in_c1_eni1_0_tpl(GND_q),
        .in_c1_eni1_1_tpl(bubble_select_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_d),
        .out_o_stall(i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_o_valid),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,71)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_o_stall | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x(BLACKBOX,38)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@8
    // out out_profile_loop_o_valid@8
    // out out_c0_exit_0_tpl@8
    // out out_c0_exit_1_tpl@8
    // out out_c0_exit_2_tpl@8
    triangular_i_sfc_s_c0_in_wt_entry_s_c0_enter6_triangular1 thei_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V0),
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(GND_q),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_o_valid),
        .out_profile_loop_o_valid(i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_c0_exit_1_tpl),
        .out_c0_exit_2_tpl(i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_c0_exit_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x(STALLENABLE,76)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_consumed0 = (~ (bubble_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_1_reg_backStall) & SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_consumed1 = (~ (i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_o_stall) & SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_consumed2 = (~ (redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_o_stall) & SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_or1);
    assign SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_wireValid = i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_o_valid;

    // bubble_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_1_reg(STALLENABLE,116)
    // Valid signal propagation
    assign bubble_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_1_reg_V0 = bubble_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_1_reg_s_tv_0 = i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_out_stall_out & bubble_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_1_reg_backEN = ~ (bubble_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_1_reg_v_s_0 = bubble_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_1_reg_backEN & SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_V0;
    // Backward Stall generation
    assign bubble_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_1_reg_backStall = ~ (bubble_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_1_reg_v_s_0);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            bubble_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_1_reg_R_v_0 <= bubble_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_1_reg_R_v_0 & bubble_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_1_reg_R_v_0 <= bubble_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_1_reg_v_s_0;
            end

        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3(BLACKBOX,11)@9
    // in in_stall_in@20000000
    // out out_data_out@10
    // out out_feedback_stall_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@10
    triangular_i_llvm_fpga_pop_throttle_i1_throttle_pop_0 thei_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3 (
        .in_data_in(GND_q),
        .in_dir(GND_q),
        .in_feedback_in_1(in_feedback_in_1),
        .in_feedback_valid_in_1(in_feedback_valid_in_1),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_backStall),
        .in_valid_in(bubble_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_1_reg_V0),
        .out_data_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_out_data_out),
        .out_feedback_stall_out_1(i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_out_feedback_stall_out_1),
        .out_stall_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3(STALLENABLE,68)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_V0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_backStall = i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_wireValid = i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_out_valid_out;

    // SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x(STALLENABLE,74)
    // Valid signal propagation
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_V0 = SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_backStall = i_sfc_s_c2_in_wt_entry_triangulars_c2_enter_triangular10_aunroll_x_out_o_stall | ~ (SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_wireValid = i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_valid;

    // bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3(BITJOIN,46)
    assign bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_q = i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_out_data_out;

    // bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3(BITSELECT,47)
    assign bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_b = $unsigned(bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_q[0:0]);

    // i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x(BLACKBOX,37)@10
    // in in_i_stall@20000000
    // out out_iord_bl_call_triangular_o_fifoalmost_full@20000000
    // out out_iord_bl_call_triangular_o_fifoready@20000000
    // out out_o_stall@20000000
    triangular_i_iord_bl_call_unnamed_triangular1_triangular0 thei_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x (
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_b),
        .in_i_stall(SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_V0),
        .in_iord_bl_call_triangular_i_fifodata(in_iord_bl_call_triangular_i_fifodata),
        .in_iord_bl_call_triangular_i_fifovalid(in_iord_bl_call_triangular_i_fifovalid),
        .out_iord_bl_call_triangular_o_fifoalmost_full(i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_iord_bl_call_triangular_o_fifoalmost_full),
        .out_iord_bl_call_triangular_o_fifoready(i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_iord_bl_call_triangular_o_fifoready),
        .out_o_stall(i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,7)
    assign out_iord_bl_call_triangular_o_fifoready = i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_iord_bl_call_triangular_o_fifoready;
    assign out_iord_bl_call_triangular_o_fifoalmost_full = i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_iord_bl_call_triangular_o_fifoalmost_full;

    // feedback_stall_out_1_sync(GPOUT,9)
    assign out_feedback_stall_out_1 = i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_out_feedback_stall_out_1;

    // regfree_osync(GPOUT,25)
    assign out_intel_reserved_ffwd_0_0 = i_sfc_s_c2_in_wt_entry_triangulars_c2_enter_triangular10_aunroll_x_out_intel_reserved_ffwd_0_0;

    // sync_out(GPOUT,29)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,32)
    assign out_wgl_6_enter_exit_valid_out = i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_out_wgl_6_enter_exit_valid_out;
    assign out_wgl_6_enter_exit_stall_out = i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_out_wgl_6_enter_exit_stall_out;

    // dupName_0_regfree_osync_x(GPOUT,33)
    assign out_intel_reserved_ffwd_1_0 = i_sfc_s_c2_in_wt_entry_triangulars_c2_enter_triangular10_aunroll_x_out_intel_reserved_ffwd_1_0;

    // bubble_join_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8(BITJOIN,49)
    assign bubble_join_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_q = i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_out_o_data;

    // bubble_select_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8(BITSELECT,50)
    assign bubble_select_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_b = $unsigned(bubble_join_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_q[31:0]);

    // bubble_join_redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo(BITJOIN,65)
    assign bubble_join_redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_q = redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_o_data;

    // bubble_select_redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo(BITSELECT,66)
    assign bubble_select_redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_b = $unsigned(bubble_join_redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_q[0:0]);

    // redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0(REG,43)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_backEN == 1'b1)
        begin
            redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_q <= $unsigned(bubble_select_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_b);
        end
    end

    // dupName_0_sync_out_x(GPOUT,34)@17
    assign out_c1_exe1 = redist0_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl_1_0_q;
    assign out_profile_loop_o_valid = bubble_select_redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_b;
    assign out_reorder_limiter_enter = bubble_select_i_llvm_fpga_wg_limiter_enter_reorder_limiter_enter_triangular8_b;
    assign out_valid_out = SE_out_redist1_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter6_triangular1_aunroll_x_out_profile_loop_o_valid_9_fifo_V0;

    // dupName_1_regfree_osync_x(GPOUT,35)
    assign out_intel_reserved_ffwd_2_0 = i_sfc_s_c2_in_wt_entry_triangulars_c2_enter_triangular10_aunroll_x_out_intel_reserved_ffwd_2_0;

    // dupName_2_regfree_osync_x(GPOUT,36)
    assign out_intel_reserved_ffwd_3_0 = i_sfc_s_c2_in_wt_entry_triangulars_c2_enter_triangular10_aunroll_x_out_intel_reserved_ffwd_3_0;

    // rst_sync(RESETSYNC,117)
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
