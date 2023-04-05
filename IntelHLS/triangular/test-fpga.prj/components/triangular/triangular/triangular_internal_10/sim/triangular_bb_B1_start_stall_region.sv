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
// SystemVerilog created on Wed Apr  5 14:46:57 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_bb_B1_start_stall_region (
    input wire [191:0] in_iord_bl_call_triangular_i_fifodata,
    input wire [0:0] in_iord_bl_call_triangular_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going89_triangular2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going89_triangular2_exiting_stall_out,
    input wire [0:0] in_feedback_in_1,
    output wire [0:0] out_feedback_stall_out_1,
    input wire [0:0] in_feedback_valid_in_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [63:0] out_intel_reserved_ffwd_0_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked91,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_triangular_o_fifoready,
    output wire [0:0] out_iord_bl_call_triangular_o_fifoalmost_full,
    output wire [63:0] out_intel_reserved_ffwd_1_0,
    output wire [31:0] out_c1_exe1,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_intel_reserved_ffwd_2_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular11_out_intel_reserved_ffwd_2_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular11_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular11_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_triangular3_triangular10_out_intel_reserved_ffwd_1_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_triangular3_triangular10_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_triangular3_triangular10_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_triangular2_triangular9_out_intel_reserved_ffwd_0_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_triangular2_triangular9_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_triangular2_triangular9_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_out_feedback_stall_out_1;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_out_valid_out;
    wire [0:0] i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_iord_bl_call_triangular_o_fifoalmost_full;
    wire [0:0] i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_iord_bl_call_triangular_o_fifoready;
    wire [0:0] i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_valid;
    wire [63:0] i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_data_0_tpl;
    wire [63:0] i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_data_1_tpl;
    wire [31:0] i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_data_2_tpl;
    wire [0:0] i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going89_triangular2_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going89_triangular2_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_out_c0_exit_1_tpl;
    wire [0:0] i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_out_c0_exit_2_tpl;
    wire [0:0] i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl;
    wire [0:0] triangular_B1_start_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] triangular_B1_start_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] triangular_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [159:0] bubble_join_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_q;
    wire [63:0] bubble_select_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_b;
    wire [63:0] bubble_select_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_c;
    wire [31:0] bubble_select_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_d;
    wire [1:0] bubble_join_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_c;
    wire [31:0] bubble_join_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_b;
    wire [0:0] bubble_join_triangular_B1_start_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_triangular_B1_start_merge_reg_aunroll_x_b;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_wireStall;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_StallValid;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_toReg0;
    reg [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_consumed0;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_toReg1;
    reg [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_consumed1;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_toReg2;
    reg [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_consumed2;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_or0;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_or1;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_backStall;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_V0;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_V1;
    wire [0:0] SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_and0;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_and1;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_and2;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_V0;
    wire [0:0] SE_out_triangular_B1_start_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_triangular_B1_start_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_triangular_B1_start_merge_reg_aunroll_x_V0;


    // bubble_join_stall_entry(BITJOIN,54)
    assign bubble_join_stall_entry_q = in_forked91;

    // bubble_select_stall_entry(BITSELECT,55)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,80)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = triangular_B1_start_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // triangular_B1_start_merge_reg_aunroll_x(BLACKBOX,46)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    triangular_B1_start_merge_reg thetriangular_B1_start_merge_reg_aunroll_x (
        .in_stall_in(SE_out_triangular_B1_start_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(triangular_B1_start_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(triangular_B1_start_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(triangular_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_triangular_B1_start_merge_reg_aunroll_x(BITJOIN,69)
    assign bubble_join_triangular_B1_start_merge_reg_aunroll_x_q = triangular_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_triangular_B1_start_merge_reg_aunroll_x(BITSELECT,70)
    assign bubble_select_triangular_B1_start_merge_reg_aunroll_x_b = $unsigned(bubble_join_triangular_B1_start_merge_reg_aunroll_x_q[0:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_triangular_B1_start_merge_reg_aunroll_x(STALLENABLE,89)
    // Valid signal propagation
    assign SE_out_triangular_B1_start_merge_reg_aunroll_x_V0 = SE_out_triangular_B1_start_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_triangular_B1_start_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_out_o_stall | ~ (SE_out_triangular_B1_start_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_triangular_B1_start_merge_reg_aunroll_x_wireValid = triangular_B1_start_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3(STALLENABLE,79)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_V0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_backStall = i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_wireValid = i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_out_valid_out;

    // bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3(BITJOIN,51)
    assign bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_q = i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_out_data_out;

    // bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3(BITSELECT,52)
    assign bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_b = $unsigned(bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_q[0:0]);

    // i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x(BLACKBOX,43)@2
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

    // SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x(STALLENABLE,83)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg0 <= '0;
            SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg1 <= '0;
            SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg0 <= SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg1 <= SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg2 <= SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_consumed0 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular11_out_stall_out) & SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_wireValid) | SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg0;
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_consumed1 = (~ (i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_triangular3_triangular10_out_stall_out) & SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_wireValid) | SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg1;
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_consumed2 = (~ (i_llvm_fpga_ffwd_source_p1024i32_unnamed_triangular2_triangular9_out_stall_out) & SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_wireValid) | SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_StallValid = SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_backStall & SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_wireValid;
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_toReg0 = SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_StallValid & SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_toReg1 = SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_StallValid & SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_consumed1;
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_toReg2 = SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_StallValid & SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_or0 = SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_or1 = SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_consumed1 & SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_or0;
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_wireStall = ~ (SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_consumed2 & SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_or1);
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_backStall = SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_V0 = SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg0);
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_V1 = SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg1);
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_V2 = SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_wireValid = i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_valid;

    // bubble_join_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x(BITJOIN,58)
    assign bubble_join_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_q = {i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_data_2_tpl, i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_data_1_tpl, i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_o_data_0_tpl};

    // bubble_select_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x(BITSELECT,59)
    assign bubble_select_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_b = $unsigned(bubble_join_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_q[63:0]);
    assign bubble_select_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_c = $unsigned(bubble_join_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_q[127:64]);
    assign bubble_select_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_d = $unsigned(bubble_join_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_q[159:128]);

    // i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular11(BLACKBOX,11)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_stall_out@20000000
    triangular_i_llvm_fpga_ffwd_source_i32_unnamed_4_triangular0 thei_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular11 (
        .in_predicate_in(GND_q),
        .in_src_data_in_2_0(bubble_select_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_d),
        .in_stall_in(SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_V0),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular11_out_intel_reserved_ffwd_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular11_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular11_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_triangular3_triangular10(BLACKBOX,12)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_stall_out@20000000
    triangular_i_llvm_fpga_ffwd_source_p10240000nnamed_3_triangular0 thei_llvm_fpga_ffwd_source_p1024a100i32_unnamed_triangular3_triangular10 (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(bubble_select_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_c),
        .in_stall_in(SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_V1),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_triangular3_triangular10_out_intel_reserved_ffwd_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_triangular3_triangular10_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_triangular3_triangular10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_triangular2_triangular9(BLACKBOX,13)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_0_0@20000000
    // out out_stall_out@20000000
    triangular_i_llvm_fpga_ffwd_source_p10240000nnamed_2_triangular0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_triangular2_triangular9 (
        .in_predicate_in(GND_q),
        .in_src_data_in_0_0(bubble_select_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_b),
        .in_stall_in(SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_V2),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_triangular2_triangular9_out_intel_reserved_ffwd_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_triangular2_triangular9_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_triangular2_triangular9_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x(STALLENABLE,87)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_V0 = SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_and0 = i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_o_valid;
    assign SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_and1 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_triangular2_triangular9_out_valid_out & SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_and0;
    assign SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_and2 = i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_triangular3_triangular10_out_valid_out & SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_and1;
    assign SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular11_out_valid_out & SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_and2;

    // bubble_join_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x(BITJOIN,61)
    assign bubble_join_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_q = {i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_out_c0_exit_2_tpl, i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_out_c0_exit_1_tpl};

    // bubble_select_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x(BITSELECT,62)
    assign bubble_select_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_q[1:1]);

    // i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x(BLACKBOX,45)@1
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@2
    // out out_c1_exit_0_tpl@2
    // out out_c1_exit_1_tpl@2
    triangular_i_sfc_s_c1_in_wt_entry_s_c1_enter_triangular5 thei_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x (
        .in_c0_exe1(bubble_select_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_b),
        .in_c0_exe2(bubble_select_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_c),
        .in_i_stall(SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_V1),
        .in_c1_eni1_0_tpl(GND_q),
        .in_c1_eni1_1_tpl(bubble_select_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_c),
        .out_o_stall(i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_o_valid),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3(BLACKBOX,14)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    triangular_i_llvm_fpga_pop_throttle_i1_throttle_pop_0 thei_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3 (
        .in_data_in(GND_q),
        .in_dir(GND_q),
        .in_feedback_in_1(in_feedback_in_1),
        .in_feedback_valid_in_1(in_feedback_valid_in_1),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_V0),
        .out_data_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_out_data_out),
        .out_feedback_stall_out_1(i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_out_feedback_stall_out_1),
        .out_stall_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x(STALLENABLE,85)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_consumed0 = (~ (i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_out_stall_out) & SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_consumed1 = (~ (i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_o_stall) & SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_wireValid = i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x(BLACKBOX,44)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going89_triangular2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going89_triangular2_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_pipeline_valid_out@20000000
    triangular_i_sfc_s_c0_in_wt_entry_s_c0_enter11_triangular1 thei_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_backStall),
        .in_i_valid(SE_out_triangular_B1_start_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(bubble_select_triangular_B1_start_merge_reg_aunroll_x_b),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going89_triangular2_exiting_stall_out(i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going89_triangular2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going89_triangular2_exiting_valid_out(i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going89_triangular2_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_out_c0_exit_1_tpl),
        .out_c0_exit_2_tpl(i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_out_c0_exit_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,7)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going89_triangular2_exiting_valid_out = i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going89_triangular2_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going89_triangular2_exiting_stall_out = i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going89_triangular2_exiting_stall_out;

    // feedback_stall_out_1_sync(GPOUT,9)
    assign out_feedback_stall_out_1 = i_llvm_fpga_pop_throttle_i1_throttle_pop_triangular3_out_feedback_stall_out_1;

    // pipeline_valid_out_sync(GPOUT,32)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_wt_entry_triangulars_c0_enter11_triangular1_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,33)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_triangular2_triangular9_out_intel_reserved_ffwd_0_0;

    // sync_out(GPOUT,37)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,39)
    assign out_iord_bl_call_triangular_o_fifoready = i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_iord_bl_call_triangular_o_fifoready;
    assign out_iord_bl_call_triangular_o_fifoalmost_full = i_iord_bl_call_triangular_unnamed_triangular1_triangular7_aunroll_x_out_iord_bl_call_triangular_o_fifoalmost_full;

    // dupName_0_regfree_osync_x(GPOUT,40)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_triangular3_triangular10_out_intel_reserved_ffwd_1_0;

    // bubble_join_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x(BITJOIN,65)
    assign bubble_join_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_q = i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_out_c1_exit_1_tpl;

    // bubble_select_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x(BITSELECT,66)
    assign bubble_select_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_q[31:0]);

    // dupName_0_sync_out_x(GPOUT,41)@2
    assign out_c1_exe1 = bubble_select_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_b;
    assign out_valid_out = SE_out_i_sfc_s_c1_in_wt_entry_triangulars_c1_enter_triangular5_aunroll_x_V0;

    // dupName_1_regfree_osync_x(GPOUT,42)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_i32_unnamed_triangular4_triangular11_out_intel_reserved_ffwd_2_0;

endmodule
