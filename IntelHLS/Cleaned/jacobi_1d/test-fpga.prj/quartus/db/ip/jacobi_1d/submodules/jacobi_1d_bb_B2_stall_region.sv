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

// SystemVerilog created from bb_jacobi_1d_B2_stall_region
// Created for function/kernel jacobi_1d
// SystemVerilog created on Tue Jun 13 02:54:34 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module jacobi_1d_bb_B2_stall_region (
    output wire [0:0] out_c0_exe179,
    output wire [0:0] out_c0_exe2,
    output wire [0:0] out_memdep_phi1_pop11,
    output wire [0:0] out_memdep_phi4_pop12,
    output wire [0:0] out_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_exiting_stall_out,
    input wire [0:0] in_feedback_in_11,
    input wire [0:0] in_feedback_in_13,
    output wire [0:0] out_feedback_stall_out_11,
    output wire [0:0] out_feedback_stall_out_13,
    input wire [0:0] in_feedback_valid_in_11,
    input wire [0:0] in_feedback_valid_in_13,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked48,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_out_c0_exit78_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_out_c0_exit78_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_out_c0_exit78_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] jacobi_1d_B2_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] jacobi_1d_B2_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] jacobi_1d_B2_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop11_jacobi_1d3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop11_jacobi_1d3_out_feedback_stall_out_11;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop11_jacobi_1d3_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop11_jacobi_1d3_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop12_jacobi_1d4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop12_jacobi_1d4_out_feedback_stall_out_13;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop12_jacobi_1d4_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop12_jacobi_1d4_out_valid_out;
    wire [1:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    reg [1:0] coalesced_delay_0_0_q;
    wire [2:0] bubble_join_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_d;
    wire [0:0] bubble_join_jacobi_1d_B2_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_jacobi_1d_B2_merge_reg_aunroll_x_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop11_jacobi_1d3_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop11_jacobi_1d3_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi4_pop12_jacobi_1d4_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi4_pop12_jacobi_1d4_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_V2;
    wire [0:0] SE_out_jacobi_1d_B2_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_jacobi_1d_B2_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_jacobi_1d_B2_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop12_jacobi_1d4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop12_jacobi_1d4_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop12_jacobi_1d4_and1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop12_jacobi_1d4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop12_jacobi_1d4_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;


    // SE_stall_entry(STALLENABLE,65)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = jacobi_1d_B2_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,54)
    assign bubble_join_stall_entry_q = in_forked48;

    // bubble_select_stall_entry(BITSELECT,55)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // jacobi_1d_B2_merge_reg_aunroll_x(BLACKBOX,4)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    jacobi_1d_B2_merge_reg thejacobi_1d_B2_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_stall_in(SE_out_jacobi_1d_B2_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(jacobi_1d_B2_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_stall_out(jacobi_1d_B2_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(jacobi_1d_B2_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_jacobi_1d_B2_merge_reg_aunroll_x(STALLENABLE,60)
    // Valid signal propagation
    assign SE_out_jacobi_1d_B2_merge_reg_aunroll_x_V0 = SE_out_jacobi_1d_B2_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_jacobi_1d_B2_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_out_o_stall | ~ (SE_out_jacobi_1d_B2_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_jacobi_1d_B2_merge_reg_aunroll_x_wireValid = jacobi_1d_B2_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_jacobi_1d_B2_merge_reg_aunroll_x(BITJOIN,42)
    assign bubble_join_jacobi_1d_B2_merge_reg_aunroll_x_q = jacobi_1d_B2_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_jacobi_1d_B2_merge_reg_aunroll_x(BITSELECT,43)
    assign bubble_select_jacobi_1d_B2_merge_reg_aunroll_x_b = $unsigned(bubble_join_jacobi_1d_B2_merge_reg_aunroll_x_q[0:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x(BLACKBOX,3)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_pipeline_valid_out@20000000
    jacobi_1d_i_sfc_s_c0_in_for_cond1_prehea0000enter7610_jacobi_1d1 thei_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x (
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(bubble_select_jacobi_1d_B2_merge_reg_aunroll_x_b),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_backStall),
        .in_i_valid(SE_out_jacobi_1d_B2_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .out_c0_exit78_0_tpl(),
        .out_c0_exit78_1_tpl(i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_out_c0_exit78_1_tpl),
        .out_c0_exit78_2_tpl(i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_out_c0_exit78_2_tpl),
        .out_c0_exit78_3_tpl(i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_out_c0_exit78_3_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_exiting_stall_out(i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_exiting_valid_out(i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_out_pipeline_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x(STALLENABLE,58)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_consumed0 = (~ (i_llvm_fpga_pop_i1_memdep_phi1_pop11_jacobi_1d3_out_stall_out) & SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_consumed1 = (~ (i_llvm_fpga_pop_i1_memdep_phi4_pop12_jacobi_1d4_out_stall_out) & SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_consumed2 = (~ (SE_coalesced_delay_0_0_backStall) & SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_or1);
    assign SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_out_o_valid;

    // SE_coalesced_delay_0_0(STALLENABLE,69)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop12_jacobi_1d4_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_V2;
    // Backward Stall generation
    assign SE_coalesced_delay_0_0_backStall = ~ (SE_coalesced_delay_0_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_R_v_0 & SE_coalesced_delay_0_0_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_v_s_0;
            end

        end
    end

    // bubble_join_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x(BITJOIN,39)
    assign bubble_join_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_q = {i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_out_c0_exit78_3_tpl, i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_out_c0_exit78_2_tpl, i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_out_c0_exit78_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x(BITSELECT,40)
    assign bubble_select_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_q[2:2]);

    // i_llvm_fpga_pop_i1_memdep_phi1_pop11_jacobi_1d3(BLACKBOX,15)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_11@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    jacobi_1d_i_llvm_fpga_pop_i1_memdep_phi1_pop11_0 thei_llvm_fpga_pop_i1_memdep_phi1_pop11_jacobi_1d3 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_d),
        .in_feedback_in_11(in_feedback_in_11),
        .in_feedback_valid_in_11(in_feedback_valid_in_11),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop12_jacobi_1d4_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi1_pop11_jacobi_1d3_out_data_out),
        .out_feedback_stall_out_11(i_llvm_fpga_pop_i1_memdep_phi1_pop11_jacobi_1d3_out_feedback_stall_out_11),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi1_pop11_jacobi_1d3_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi1_pop11_jacobi_1d3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi4_pop12_jacobi_1d4(BLACKBOX,16)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_13@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    jacobi_1d_i_llvm_fpga_pop_i1_memdep_phi4_pop12_0 thei_llvm_fpga_pop_i1_memdep_phi4_pop12_jacobi_1d4 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_d),
        .in_feedback_in_13(in_feedback_in_13),
        .in_feedback_valid_in_13(in_feedback_valid_in_13),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop12_jacobi_1d4_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_V1),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi4_pop12_jacobi_1d4_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_i1_memdep_phi4_pop12_jacobi_1d4_out_feedback_stall_out_13),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi4_pop12_jacobi_1d4_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi4_pop12_jacobi_1d4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop12_jacobi_1d4(STALLENABLE,64)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop12_jacobi_1d4_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop12_jacobi_1d4_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop12_jacobi_1d4_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop12_jacobi_1d4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop12_jacobi_1d4_and0 = i_llvm_fpga_pop_i1_memdep_phi4_pop12_jacobi_1d4_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop12_jacobi_1d4_and1 = i_llvm_fpga_pop_i1_memdep_phi1_pop11_jacobi_1d3_out_valid_out & SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop12_jacobi_1d4_and0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop12_jacobi_1d4_wireValid = SE_coalesced_delay_0_0_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop12_jacobi_1d4_and1;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi4_pop12_jacobi_1d4(BITJOIN,50)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi4_pop12_jacobi_1d4_q = i_llvm_fpga_pop_i1_memdep_phi4_pop12_jacobi_1d4_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi4_pop12_jacobi_1d4(BITSELECT,51)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi4_pop12_jacobi_1d4_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi4_pop12_jacobi_1d4_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop11_jacobi_1d3(BITJOIN,46)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop11_jacobi_1d3_q = i_llvm_fpga_pop_i1_memdep_phi1_pop11_jacobi_1d3_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop11_jacobi_1d3(BITSELECT,47)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop11_jacobi_1d3_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop11_jacobi_1d3_q[0:0]);

    // join_for_coalesced_delay_0(BITJOIN,35)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_b};

    // coalesced_delay_0_0(REG,37)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(2'b00);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,36)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[1:1]);

    // dupName_0_sync_out_x(GPOUT,2)@2
    assign out_c0_exe179 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe2 = sel_for_coalesced_delay_0_c;
    assign out_memdep_phi1_pop11 = bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop11_jacobi_1d3_b;
    assign out_memdep_phi4_pop12 = bubble_select_i_llvm_fpga_pop_i1_memdep_phi4_pop12_jacobi_1d4_b;
    assign out_valid_out = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop12_jacobi_1d4_V0;

    // ext_sig_sync_out(GPOUT,8)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_exiting_valid_out = i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_exiting_stall_out = i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_exiting_stall_out;

    // feedback_stall_out_11_sync(GPOUT,11)
    assign out_feedback_stall_out_11 = i_llvm_fpga_pop_i1_memdep_phi1_pop11_jacobi_1d3_out_feedback_stall_out_11;

    // feedback_stall_out_13_sync(GPOUT,12)
    assign out_feedback_stall_out_13 = i_llvm_fpga_pop_i1_memdep_phi4_pop12_jacobi_1d4_out_feedback_stall_out_13;

    // pipeline_valid_out_sync(GPOUT,26)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,30)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
