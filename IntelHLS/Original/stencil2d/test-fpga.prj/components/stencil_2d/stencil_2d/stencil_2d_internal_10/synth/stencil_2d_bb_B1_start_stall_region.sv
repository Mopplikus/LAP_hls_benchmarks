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

// SystemVerilog created from bb_stencil_2d_B1_start_stall_region
// Created for function/kernel stencil_2d
// SystemVerilog created on Thu Apr 27 14:23:39 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_bb_B1_start_stall_region (
    input wire [0:0] in_iord_bl_call_stencil_2d_i_fifodata,
    input wire [0:0] in_iord_bl_call_stencil_2d_i_fifovalid,
    output wire [0:0] out_iord_bl_call_stencil_2d_o_fifoready,
    output wire [0:0] out_iord_bl_call_stencil_2d_o_fifoalmost_full,
    input wire [0:0] in_feedback_in_1,
    output wire [0:0] out_feedback_stall_out_1,
    input wire [0:0] in_feedback_valid_in_1,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_iord_bl_call_stencil_2d_unnamed_stencil_2d1_stencil_2d2_out_iord_bl_call_stencil_2d_o_fifoalmost_full;
    wire [0:0] i_iord_bl_call_stencil_2d_unnamed_stencil_2d1_stencil_2d2_out_iord_bl_call_stencil_2d_o_fifoready;
    wire [0:0] i_iord_bl_call_stencil_2d_unnamed_stencil_2d1_stencil_2d2_out_o_stall;
    wire [0:0] i_iord_bl_call_stencil_2d_unnamed_stencil_2d1_stencil_2d2_out_o_valid;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_stencil_2d1_out_data_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_stencil_2d1_out_feedback_stall_out_1;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_stencil_2d1_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_stencil_2d1_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_out_profile_loop_o_valid;
    reg [0:0] redist0_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_out_profile_loop_o_valid_1_0_q;
    wire [0:0] bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_stencil_2d1_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_stencil_2d1_b;
    wire [0:0] bubble_join_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_b;
    wire [0:0] SE_out_i_iord_bl_call_stencil_2d_unnamed_stencil_2d1_stencil_2d2_wireValid;
    wire [0:0] SE_out_i_iord_bl_call_stencil_2d_unnamed_stencil_2d1_stencil_2d2_and0;
    wire [0:0] SE_out_i_iord_bl_call_stencil_2d_unnamed_stencil_2d1_stencil_2d2_backStall;
    wire [0:0] SE_out_i_iord_bl_call_stencil_2d_unnamed_stencil_2d1_stencil_2d2_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_stencil_2d1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_stencil_2d1_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_stencil_2d1_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_V1;
    reg [0:0] SE_redist0_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_out_profile_loop_o_valid_1_0_R_v_0;
    wire [0:0] SE_redist0_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_out_profile_loop_o_valid_1_0_v_s_0;
    wire [0:0] SE_redist0_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_out_profile_loop_o_valid_1_0_s_tv_0;
    wire [0:0] SE_redist0_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_out_profile_loop_o_valid_1_0_backEN;
    wire [0:0] SE_redist0_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_out_profile_loop_o_valid_1_0_backStall;
    wire [0:0] SE_redist0_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_out_profile_loop_o_valid_1_0_V0;
    reg [0:0] rst_sync_rst_sclrn;


    // SE_redist0_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_out_profile_loop_o_valid_1_0(STALLENABLE,45)
    // Valid signal propagation
    assign SE_redist0_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_out_profile_loop_o_valid_1_0_V0 = SE_redist0_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_out_profile_loop_o_valid_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_out_profile_loop_o_valid_1_0_s_tv_0 = SE_out_i_iord_bl_call_stencil_2d_unnamed_stencil_2d1_stencil_2d2_backStall & SE_redist0_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_out_profile_loop_o_valid_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_out_profile_loop_o_valid_1_0_backEN = ~ (SE_redist0_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_out_profile_loop_o_valid_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_out_profile_loop_o_valid_1_0_v_s_0 = SE_redist0_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_out_profile_loop_o_valid_1_0_backEN & SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_V1;
    // Backward Stall generation
    assign SE_redist0_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_out_profile_loop_o_valid_1_0_backStall = ~ (SE_redist0_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_out_profile_loop_o_valid_1_0_v_s_0);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist0_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_out_profile_loop_o_valid_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_out_profile_loop_o_valid_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_out_profile_loop_o_valid_1_0_R_v_0 <= SE_redist0_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_out_profile_loop_o_valid_1_0_R_v_0 & SE_redist0_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_out_profile_loop_o_valid_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_out_profile_loop_o_valid_1_0_R_v_0 <= SE_redist0_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_out_profile_loop_o_valid_1_0_v_s_0;
            end

        end
    end

    // SE_stall_entry(STALLENABLE,41)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_out_o_stall | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x(BLACKBOX,25)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@8
    // out out_profile_loop_o_valid@8
    // out out_c0_exit_0_tpl@8
    // out out_c0_exit_1_tpl@8
    stencil_2d_i_sfc_s_c0_in_wt_entry_s_c0_enter13_stencil_2d0 thei_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V0),
        .in_unnamed_stencil_2d0_0_tpl(GND_q),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_out_o_valid),
        .out_profile_loop_o_valid(i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_out_profile_loop_o_valid),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x(STALLENABLE,44)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_consumed0 = (~ (i_llvm_fpga_pop_throttle_i1_throttle_pop_stencil_2d1_out_stall_out) & SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_consumed1 = (~ (SE_redist0_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_out_profile_loop_o_valid_1_0_backStall) & SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_wireValid = i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_out_o_valid;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_stencil_2d1(BLACKBOX,12)@8
    // in in_stall_in@20000000
    // out out_data_out@9
    // out out_feedback_stall_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@9
    stencil_2d_i_llvm_fpga_pop_throttle_i1_throttle_pop_0 thei_llvm_fpga_pop_throttle_i1_throttle_pop_stencil_2d1 (
        .in_data_in(GND_q),
        .in_dir(GND_q),
        .in_feedback_in_1(in_feedback_in_1),
        .in_feedback_valid_in_1(in_feedback_valid_in_1),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_stencil_2d1_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_V0),
        .out_data_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_stencil_2d1_out_data_out),
        .out_feedback_stall_out_1(i_llvm_fpga_pop_throttle_i1_throttle_pop_stencil_2d1_out_feedback_stall_out_1),
        .out_stall_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_stencil_2d1_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_stencil_2d1_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_stencil_2d1(STALLENABLE,40)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_stencil_2d1_V0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_stencil_2d1_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_stencil_2d1_backStall = i_iord_bl_call_stencil_2d_unnamed_stencil_2d1_stencil_2d2_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_stencil_2d1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_stencil_2d1_wireValid = i_llvm_fpga_pop_throttle_i1_throttle_pop_stencil_2d1_out_valid_out;

    // SE_out_i_iord_bl_call_stencil_2d_unnamed_stencil_2d1_stencil_2d2(STALLENABLE,38)
    // Valid signal propagation
    assign SE_out_i_iord_bl_call_stencil_2d_unnamed_stencil_2d1_stencil_2d2_V0 = SE_out_i_iord_bl_call_stencil_2d_unnamed_stencil_2d1_stencil_2d2_wireValid;
    // Backward Stall generation
    assign SE_out_i_iord_bl_call_stencil_2d_unnamed_stencil_2d1_stencil_2d2_backStall = in_stall_in | ~ (SE_out_i_iord_bl_call_stencil_2d_unnamed_stencil_2d1_stencil_2d2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_call_stencil_2d_unnamed_stencil_2d1_stencil_2d2_and0 = i_iord_bl_call_stencil_2d_unnamed_stencil_2d1_stencil_2d2_out_o_valid;
    assign SE_out_i_iord_bl_call_stencil_2d_unnamed_stencil_2d1_stencil_2d2_wireValid = SE_redist0_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_out_profile_loop_o_valid_1_0_V0 & SE_out_i_iord_bl_call_stencil_2d_unnamed_stencil_2d1_stencil_2d2_and0;

    // bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_stencil_2d1(BITJOIN,30)
    assign bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_stencil_2d1_q = i_llvm_fpga_pop_throttle_i1_throttle_pop_stencil_2d1_out_data_out;

    // bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_stencil_2d1(BITSELECT,31)
    assign bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_stencil_2d1_b = $unsigned(bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_stencil_2d1_q[0:0]);

    // i_iord_bl_call_stencil_2d_unnamed_stencil_2d1_stencil_2d2(BLACKBOX,11)@9
    // in in_i_stall@20000000
    // out out_iord_bl_call_stencil_2d_o_fifoalmost_full@20000000
    // out out_iord_bl_call_stencil_2d_o_fifoready@20000000
    // out out_o_stall@20000000
    stencil_2d_i_iord_bl_call_unnamed_stencil_2d1_stencil_2d0 thei_iord_bl_call_stencil_2d_unnamed_stencil_2d1_stencil_2d2 (
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_stencil_2d1_b),
        .in_i_stall(SE_out_i_iord_bl_call_stencil_2d_unnamed_stencil_2d1_stencil_2d2_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_stencil_2d1_V0),
        .in_iord_bl_call_stencil_2d_i_fifodata(in_iord_bl_call_stencil_2d_i_fifodata),
        .in_iord_bl_call_stencil_2d_i_fifovalid(in_iord_bl_call_stencil_2d_i_fifovalid),
        .out_iord_bl_call_stencil_2d_o_fifoalmost_full(i_iord_bl_call_stencil_2d_unnamed_stencil_2d1_stencil_2d2_out_iord_bl_call_stencil_2d_o_fifoalmost_full),
        .out_iord_bl_call_stencil_2d_o_fifoready(i_iord_bl_call_stencil_2d_unnamed_stencil_2d1_stencil_2d2_out_iord_bl_call_stencil_2d_o_fifoready),
        .out_o_data(),
        .out_o_stall(i_iord_bl_call_stencil_2d_unnamed_stencil_2d1_stencil_2d2_out_o_stall),
        .out_o_valid(i_iord_bl_call_stencil_2d_unnamed_stencil_2d1_stencil_2d2_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,7)
    assign out_iord_bl_call_stencil_2d_o_fifoready = i_iord_bl_call_stencil_2d_unnamed_stencil_2d1_stencil_2d2_out_iord_bl_call_stencil_2d_o_fifoready;
    assign out_iord_bl_call_stencil_2d_o_fifoalmost_full = i_iord_bl_call_stencil_2d_unnamed_stencil_2d1_stencil_2d2_out_iord_bl_call_stencil_2d_o_fifoalmost_full;

    // feedback_stall_out_1_sync(GPOUT,9)
    assign out_feedback_stall_out_1 = i_llvm_fpga_pop_throttle_i1_throttle_pop_stencil_2d1_out_feedback_stall_out_1;

    // sync_out(GPOUT,22)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x(BITJOIN,34)
    assign bubble_join_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_q = i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_out_profile_loop_o_valid;

    // bubble_select_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x(BITSELECT,35)
    assign bubble_select_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_q[0:0]);

    // redist0_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_out_profile_loop_o_valid_1_0(REG,27)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist0_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_out_profile_loop_o_valid_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_out_profile_loop_o_valid_1_0_backEN == 1'b1)
        begin
            redist0_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_out_profile_loop_o_valid_1_0_q <= $unsigned(bubble_select_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_b);
        end
    end

    // dupName_0_sync_out_x(GPOUT,24)@9
    assign out_profile_loop_o_valid = redist0_i_sfc_s_c0_in_wt_entry_stencil_2ds_c0_enter13_stencil_2d0_aunroll_x_out_profile_loop_o_valid_1_0_q;
    assign out_valid_out = SE_out_i_iord_bl_call_stencil_2d_unnamed_stencil_2d1_stencil_2d2_V0;

    // rst_sync(RESETSYNC,60)
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
