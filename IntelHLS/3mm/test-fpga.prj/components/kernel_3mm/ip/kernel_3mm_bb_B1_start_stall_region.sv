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

// SystemVerilog created from bb_kernel_3mm_B1_start_stall_region
// Created for function/kernel kernel_3mm
// SystemVerilog created on Fri Apr  7 18:25:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_bb_B1_start_stall_region (
    input wire [447:0] in_iord_bl_call_kernel_3mm_i_fifodata,
    input wire [0:0] in_iord_bl_call_kernel_3mm_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_kernel_3mm2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_kernel_3mm2_exiting_stall_out,
    input wire [0:0] in_feedback_in_17,
    input wire [0:0] in_feedback_in_20,
    output wire [0:0] out_feedback_stall_out_17,
    output wire [0:0] out_feedback_stall_out_20,
    input wire [0:0] in_feedback_valid_in_17,
    input wire [0:0] in_feedback_valid_in_20,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked81,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_kernel_3mm_o_fifoready,
    output wire [0:0] out_iord_bl_call_kernel_3mm_o_fifoalmost_full,
    output wire [0:0] out_c0_exe2,
    output wire [0:0] out_memdep_phi3_pop19,
    output wire [0:0] out_memdep_phi_pop17,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop19_kernel_3mm5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop19_kernel_3mm5_out_feedback_stall_out_20;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop19_kernel_3mm5_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop19_kernel_3mm5_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop17_kernel_3mm4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop17_kernel_3mm4_out_feedback_stall_out_17;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop17_kernel_3mm4_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop17_kernel_3mm4_out_valid_out;
    wire [0:0] i_iord_bl_call_kernel_3mm_unnamed_kernel_3mm1_kernel_3mm3_aunroll_x_out_iord_bl_call_kernel_3mm_o_fifoalmost_full;
    wire [0:0] i_iord_bl_call_kernel_3mm_unnamed_kernel_3mm1_kernel_3mm3_aunroll_x_out_iord_bl_call_kernel_3mm_o_fifoready;
    wire [0:0] i_iord_bl_call_kernel_3mm_unnamed_kernel_3mm1_kernel_3mm3_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_call_kernel_3mm_unnamed_kernel_3mm1_kernel_3mm3_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_kernel_3mm2_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_kernel_3mm2_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl;
    wire [0:0] kernel_3mm_B1_start_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] kernel_3mm_B1_start_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] kernel_3mm_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl;
    reg [0:0] redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_q;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi3_pop19_kernel_3mm5_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi3_pop19_kernel_3mm5_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop17_kernel_3mm4_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop17_kernel_3mm4_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_b;
    wire [0:0] bubble_join_kernel_3mm_B1_start_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_kernel_3mm_B1_start_merge_reg_aunroll_x_b;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop17_kernel_3mm4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop17_kernel_3mm4_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop17_kernel_3mm4_and1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop17_kernel_3mm4_and2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop17_kernel_3mm4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop17_kernel_3mm4_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_V2;
    wire [0:0] SE_out_kernel_3mm_B1_start_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_kernel_3mm_B1_start_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_kernel_3mm_B1_start_merge_reg_aunroll_x_V0;
    reg [0:0] SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0;
    reg [0:0] SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_1;
    wire [0:0] SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_v_s_0;
    wire [0:0] SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_0;
    wire [0:0] SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_1;
    wire [0:0] SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_backEN;
    wire [0:0] SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_or0;
    wire [0:0] SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_backStall;
    wire [0:0] SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_V0;
    wire [0:0] SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_V1;


    // bubble_join_stall_entry(BITJOIN,48)
    assign bubble_join_stall_entry_q = in_forked81;

    // bubble_select_stall_entry(BITSELECT,49)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,64)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = kernel_3mm_B1_start_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // kernel_3mm_B1_start_merge_reg_aunroll_x(BLACKBOX,36)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    kernel_3mm_B1_start_merge_reg thekernel_3mm_B1_start_merge_reg_aunroll_x (
        .in_stall_in(SE_out_kernel_3mm_B1_start_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(kernel_3mm_B1_start_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(kernel_3mm_B1_start_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(kernel_3mm_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_kernel_3mm_B1_start_merge_reg_aunroll_x(BITJOIN,57)
    assign bubble_join_kernel_3mm_B1_start_merge_reg_aunroll_x_q = kernel_3mm_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_kernel_3mm_B1_start_merge_reg_aunroll_x(BITSELECT,58)
    assign bubble_select_kernel_3mm_B1_start_merge_reg_aunroll_x_b = $unsigned(bubble_join_kernel_3mm_B1_start_merge_reg_aunroll_x_q[0:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_kernel_3mm_B1_start_merge_reg_aunroll_x(STALLENABLE,71)
    // Valid signal propagation
    assign SE_out_kernel_3mm_B1_start_merge_reg_aunroll_x_V0 = SE_out_kernel_3mm_B1_start_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_kernel_3mm_B1_start_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_o_stall | ~ (SE_out_kernel_3mm_B1_start_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_kernel_3mm_B1_start_merge_reg_aunroll_x_wireValid = kernel_3mm_B1_start_merge_reg_aunroll_x_out_valid_out;

    // i_iord_bl_call_kernel_3mm_unnamed_kernel_3mm1_kernel_3mm3_aunroll_x(BLACKBOX,34)@2
    // in in_i_stall@20000000
    // out out_iord_bl_call_kernel_3mm_o_fifoalmost_full@20000000
    // out out_iord_bl_call_kernel_3mm_o_fifoready@20000000
    // out out_o_stall@20000000
    kernel_3mm_i_iord_bl_call_unnamed_kernel_3mm1_kernel_3mm0 thei_iord_bl_call_kernel_3mm_unnamed_kernel_3mm1_kernel_3mm3_aunroll_x (
        .in_i_stall(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop17_kernel_3mm4_backStall),
        .in_i_valid(SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_V1),
        .in_iord_bl_call_kernel_3mm_i_fifodata(in_iord_bl_call_kernel_3mm_i_fifodata),
        .in_iord_bl_call_kernel_3mm_i_fifovalid(in_iord_bl_call_kernel_3mm_i_fifovalid),
        .out_iord_bl_call_kernel_3mm_o_fifoalmost_full(i_iord_bl_call_kernel_3mm_unnamed_kernel_3mm1_kernel_3mm3_aunroll_x_out_iord_bl_call_kernel_3mm_o_fifoalmost_full),
        .out_iord_bl_call_kernel_3mm_o_fifoready(i_iord_bl_call_kernel_3mm_unnamed_kernel_3mm1_kernel_3mm3_aunroll_x_out_iord_bl_call_kernel_3mm_o_fifoready),
        .out_o_stall(i_iord_bl_call_kernel_3mm_unnamed_kernel_3mm1_kernel_3mm3_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_bl_call_kernel_3mm_unnamed_kernel_3mm1_kernel_3mm3_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .out_o_data_1_tpl(),
        .out_o_data_2_tpl(),
        .out_o_data_3_tpl(),
        .out_o_data_4_tpl(),
        .out_o_data_5_tpl(),
        .out_o_data_6_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop17_kernel_3mm4(STALLENABLE,63)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop17_kernel_3mm4_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop17_kernel_3mm4_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop17_kernel_3mm4_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop17_kernel_3mm4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop17_kernel_3mm4_and0 = i_llvm_fpga_pop_i1_memdep_phi_pop17_kernel_3mm4_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop17_kernel_3mm4_and1 = i_llvm_fpga_pop_i1_memdep_phi3_pop19_kernel_3mm5_out_valid_out & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop17_kernel_3mm4_and0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop17_kernel_3mm4_and2 = i_iord_bl_call_kernel_3mm_unnamed_kernel_3mm1_kernel_3mm3_aunroll_x_out_o_valid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop17_kernel_3mm4_and1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop17_kernel_3mm4_wireValid = SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop17_kernel_3mm4_and2;

    // bubble_join_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x(BITJOIN,53)
    assign bubble_join_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_q = i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl;

    // bubble_select_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x(BITSELECT,54)
    assign bubble_select_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_q[0:0]);

    // i_llvm_fpga_pop_i1_memdep_phi_pop17_kernel_3mm4(BLACKBOX,14)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_17@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    kernel_3mm_i_llvm_fpga_pop_i1_memdep_phi_pop17_0 thei_llvm_fpga_pop_i1_memdep_phi_pop17_kernel_3mm4 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_b),
        .in_feedback_in_17(in_feedback_in_17),
        .in_feedback_valid_in_17(in_feedback_valid_in_17),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop17_kernel_3mm4_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_V2),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop17_kernel_3mm4_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i1_memdep_phi_pop17_kernel_3mm4_out_feedback_stall_out_17),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop17_kernel_3mm4_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop17_kernel_3mm4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi3_pop19_kernel_3mm5(BLACKBOX,13)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_20@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    kernel_3mm_i_llvm_fpga_pop_i1_memdep_phi3_pop19_0 thei_llvm_fpga_pop_i1_memdep_phi3_pop19_kernel_3mm5 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_b),
        .in_feedback_in_20(in_feedback_in_20),
        .in_feedback_valid_in_20(in_feedback_valid_in_20),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop17_kernel_3mm4_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_V1),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi3_pop19_kernel_3mm5_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_i1_memdep_phi3_pop19_kernel_3mm5_out_feedback_stall_out_20),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi3_pop19_kernel_3mm5_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi3_pop19_kernel_3mm5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0(STALLENABLE,72)
    // Valid signal propagation
    assign SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_V0 = SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0;
    assign SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_V1 = SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop17_kernel_3mm4_backStall & SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0;
    assign SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_1 = i_iord_bl_call_kernel_3mm_unnamed_kernel_3mm1_kernel_3mm3_aunroll_x_out_o_stall & SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_or0 = SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_0;
    assign SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_backEN = ~ (SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_1 | SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_v_s_0 = SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_backEN & SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_V0;
    // Backward Stall generation
    assign SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_backStall = ~ (SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0 <= 1'b0;
            SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0 <= SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0 & SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0 <= SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_v_s_0;
            end

            if (SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_1 <= SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_1 & SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_1;
            end
            else
            begin
                SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_1 <= SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x(STALLENABLE,69)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_consumed0 = (~ (SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_backStall) & SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_consumed1 = (~ (i_llvm_fpga_pop_i1_memdep_phi3_pop19_kernel_3mm5_out_stall_out) & SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_consumed2 = (~ (i_llvm_fpga_pop_i1_memdep_phi_pop17_kernel_3mm4_out_stall_out) & SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_or1);
    assign SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_wireValid = i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x(BLACKBOX,35)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_kernel_3mm2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_kernel_3mm2_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_pipeline_valid_out@20000000
    kernel_3mm_i_sfc_s_c0_in_wt_entry_s_c0_enter46_kernel_3mm1 thei_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_backStall),
        .in_i_valid(SE_out_kernel_3mm_B1_start_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(bubble_select_kernel_3mm_B1_start_merge_reg_aunroll_x_b),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_kernel_3mm2_exiting_stall_out(i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_kernel_3mm2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_kernel_3mm2_exiting_valid_out(i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_kernel_3mm2_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(),
        .out_c0_exit_2_tpl(i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_kernel_3mm2_exiting_valid_out = i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_kernel_3mm2_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_kernel_3mm2_exiting_stall_out = i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_kernel_3mm2_exiting_stall_out;

    // feedback_stall_out_17_sync(GPOUT,9)
    assign out_feedback_stall_out_17 = i_llvm_fpga_pop_i1_memdep_phi_pop17_kernel_3mm4_out_feedback_stall_out_17;

    // feedback_stall_out_20_sync(GPOUT,10)
    assign out_feedback_stall_out_20 = i_llvm_fpga_pop_i1_memdep_phi3_pop19_kernel_3mm5_out_feedback_stall_out_20;

    // pipeline_valid_out_sync(GPOUT,26)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,30)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,32)
    assign out_iord_bl_call_kernel_3mm_o_fifoready = i_iord_bl_call_kernel_3mm_unnamed_kernel_3mm1_kernel_3mm3_aunroll_x_out_iord_bl_call_kernel_3mm_o_fifoready;
    assign out_iord_bl_call_kernel_3mm_o_fifoalmost_full = i_iord_bl_call_kernel_3mm_unnamed_kernel_3mm1_kernel_3mm3_aunroll_x_out_iord_bl_call_kernel_3mm_o_fifoalmost_full;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop17_kernel_3mm4(BITJOIN,44)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop17_kernel_3mm4_q = i_llvm_fpga_pop_i1_memdep_phi_pop17_kernel_3mm4_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop17_kernel_3mm4(BITSELECT,45)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop17_kernel_3mm4_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop17_kernel_3mm4_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi3_pop19_kernel_3mm5(BITJOIN,40)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi3_pop19_kernel_3mm5_q = i_llvm_fpga_pop_i1_memdep_phi3_pop19_kernel_3mm5_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi3_pop19_kernel_3mm5(BITSELECT,41)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi3_pop19_kernel_3mm5_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi3_pop19_kernel_3mm5_q[0:0]);

    // redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0(REG,38)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_backEN == 1'b1)
        begin
            redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_q <= $unsigned(bubble_select_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_b);
        end
    end

    // dupName_0_sync_out_x(GPOUT,33)@2
    assign out_c0_exe2 = redist0_i_sfc_s_c0_in_wt_entry_kernel_3mms_c0_enter46_kernel_3mm1_aunroll_x_out_c0_exit_2_tpl_1_0_q;
    assign out_memdep_phi3_pop19 = bubble_select_i_llvm_fpga_pop_i1_memdep_phi3_pop19_kernel_3mm5_b;
    assign out_memdep_phi_pop17 = bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop17_kernel_3mm4_b;
    assign out_valid_out = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop17_kernel_3mm4_V0;

endmodule
