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

// SystemVerilog created from bb_bicg_B1_start_stall_region
// Created for function/kernel bicg
// SystemVerilog created on Fri Apr  7 18:01:04 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module bicg_bb_B1_start_stall_region (
    input wire [319:0] in_iord_bl_call_bicg_i_fifodata,
    input wire [0:0] in_iord_bl_call_bicg_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_bicg2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_bicg2_exiting_stall_out,
    input wire [0:0] in_feedback_in_8,
    output wire [0:0] out_feedback_stall_out_8,
    input wire [0:0] in_feedback_valid_in_8,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked15,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_bicg_o_fifoready,
    output wire [0:0] out_iord_bl_call_bicg_o_fifoalmost_full,
    output wire [0:0] out_memdep_phi_pop7,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop7_bicg4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop7_bicg4_out_feedback_stall_out_8;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop7_bicg4_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop7_bicg4_out_valid_out;
    wire [0:0] bicg_B1_start_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] bicg_B1_start_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] bicg_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_iord_bl_call_bicg_unnamed_bicg1_bicg3_aunroll_x_out_iord_bl_call_bicg_o_fifoalmost_full;
    wire [0:0] i_iord_bl_call_bicg_unnamed_bicg1_bicg3_aunroll_x_out_iord_bl_call_bicg_o_fifoready;
    wire [0:0] i_iord_bl_call_bicg_unnamed_bicg1_bicg3_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_call_bicg_unnamed_bicg1_bicg3_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_bicg2_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_bicg2_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_out_c0_exit_2_tpl;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop7_bicg4_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop7_bicg4_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_bicg_B1_start_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_bicg_B1_start_merge_reg_aunroll_x_b;
    wire [0:0] bubble_join_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_b;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop7_bicg4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop7_bicg4_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop7_bicg4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop7_bicg4_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_bicg_B1_start_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_bicg_B1_start_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_bicg_B1_start_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_V1;
    reg [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_1_reg_R_v_0;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_1_reg_v_s_0;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_1_reg_backEN;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_1_reg_backStall;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_1_reg_V0;


    // bubble_join_stall_entry(BITJOIN,36)
    assign bubble_join_stall_entry_q = in_forked15;

    // bubble_select_stall_entry(BITSELECT,37)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,50)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = bicg_B1_start_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bicg_B1_start_merge_reg_aunroll_x(BLACKBOX,26)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    bicg_B1_start_merge_reg thebicg_B1_start_merge_reg_aunroll_x (
        .in_stall_in(SE_out_bicg_B1_start_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(bicg_B1_start_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(bicg_B1_start_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(bicg_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_bicg_B1_start_merge_reg_aunroll_x(BITJOIN,40)
    assign bubble_join_bicg_B1_start_merge_reg_aunroll_x_q = bicg_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_bicg_B1_start_merge_reg_aunroll_x(BITSELECT,41)
    assign bubble_select_bicg_B1_start_merge_reg_aunroll_x_b = $unsigned(bubble_join_bicg_B1_start_merge_reg_aunroll_x_q[0:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_bicg_B1_start_merge_reg_aunroll_x(STALLENABLE,53)
    // Valid signal propagation
    assign SE_out_bicg_B1_start_merge_reg_aunroll_x_V0 = SE_out_bicg_B1_start_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_bicg_B1_start_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_out_o_stall | ~ (SE_out_bicg_B1_start_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bicg_B1_start_merge_reg_aunroll_x_wireValid = bicg_B1_start_merge_reg_aunroll_x_out_valid_out;

    // i_iord_bl_call_bicg_unnamed_bicg1_bicg3_aunroll_x(BLACKBOX,29)@2
    // in in_i_stall@20000000
    // out out_iord_bl_call_bicg_o_fifoalmost_full@20000000
    // out out_iord_bl_call_bicg_o_fifoready@20000000
    // out out_o_stall@20000000
    bicg_i_iord_bl_call_unnamed_bicg1_bicg0 thei_iord_bl_call_bicg_unnamed_bicg1_bicg3_aunroll_x (
        .in_i_stall(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop7_bicg4_backStall),
        .in_i_valid(bubble_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_1_reg_V0),
        .in_iord_bl_call_bicg_i_fifodata(in_iord_bl_call_bicg_i_fifodata),
        .in_iord_bl_call_bicg_i_fifovalid(in_iord_bl_call_bicg_i_fifovalid),
        .out_iord_bl_call_bicg_o_fifoalmost_full(i_iord_bl_call_bicg_unnamed_bicg1_bicg3_aunroll_x_out_iord_bl_call_bicg_o_fifoalmost_full),
        .out_iord_bl_call_bicg_o_fifoready(i_iord_bl_call_bicg_unnamed_bicg1_bicg3_aunroll_x_out_iord_bl_call_bicg_o_fifoready),
        .out_o_stall(i_iord_bl_call_bicg_unnamed_bicg1_bicg3_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_bl_call_bicg_unnamed_bicg1_bicg3_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .out_o_data_1_tpl(),
        .out_o_data_2_tpl(),
        .out_o_data_3_tpl(),
        .out_o_data_4_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop7_bicg4(STALLENABLE,49)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop7_bicg4_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop7_bicg4_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop7_bicg4_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop7_bicg4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop7_bicg4_and0 = i_llvm_fpga_pop_i1_memdep_phi_pop7_bicg4_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop7_bicg4_wireValid = i_iord_bl_call_bicg_unnamed_bicg1_bicg3_aunroll_x_out_o_valid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop7_bicg4_and0;

    // bubble_join_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x(BITJOIN,45)
    assign bubble_join_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_q = i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_out_c0_exit_2_tpl;

    // bubble_select_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x(BITSELECT,46)
    assign bubble_select_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_q[0:0]);

    // i_llvm_fpga_pop_i1_memdep_phi_pop7_bicg4(BLACKBOX,10)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_8@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    bicg_i_llvm_fpga_pop_i1_memdep_phi_pop7_0 thei_llvm_fpga_pop_i1_memdep_phi_pop7_bicg4 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_b),
        .in_feedback_in_8(in_feedback_in_8),
        .in_feedback_valid_in_8(in_feedback_valid_in_8),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop7_bicg4_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_V1),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop7_bicg4_out_data_out),
        .out_feedback_stall_out_8(i_llvm_fpga_pop_i1_memdep_phi_pop7_bicg4_out_feedback_stall_out_8),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop7_bicg4_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop7_bicg4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_1_reg(STALLENABLE,84)
    // Valid signal propagation
    assign bubble_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_1_reg_V0 = bubble_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_1_reg_s_tv_0 = i_iord_bl_call_bicg_unnamed_bicg1_bicg3_aunroll_x_out_o_stall & bubble_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_1_reg_backEN = ~ (bubble_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_1_reg_v_s_0 = bubble_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_1_reg_backEN & SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_V0;
    // Backward Stall generation
    assign bubble_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_1_reg_backStall = ~ (bubble_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_1_reg_R_v_0 <= bubble_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_1_reg_R_v_0 & bubble_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_1_reg_R_v_0 <= bubble_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x(STALLENABLE,57)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_consumed0 = (~ (bubble_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_1_reg_backStall) & SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_consumed1 = (~ (i_llvm_fpga_pop_i1_memdep_phi_pop7_bicg4_out_stall_out) & SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_wireValid = i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x(BLACKBOX,30)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_bicg2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_bicg2_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_pipeline_valid_out@20000000
    bicg_i_sfc_s_c0_in_wt_entry_s_c0_enter8_bicg1 thei_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_backStall),
        .in_i_valid(SE_out_bicg_B1_start_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(bubble_select_bicg_B1_start_merge_reg_aunroll_x_b),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_bicg2_exiting_stall_out(i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_bicg2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_bicg2_exiting_valid_out(i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_bicg2_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(),
        .out_c0_exit_2_tpl(i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_out_c0_exit_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_bicg2_exiting_valid_out = i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_bicg2_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_bicg2_exiting_stall_out = i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_bicg2_exiting_stall_out;

    // feedback_stall_out_8_sync(GPOUT,8)
    assign out_feedback_stall_out_8 = i_llvm_fpga_pop_i1_memdep_phi_pop7_bicg4_out_feedback_stall_out_8;

    // pipeline_valid_out_sync(GPOUT,20)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_wt_entry_bicgs_c0_enter8_bicg1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,24)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,27)
    assign out_iord_bl_call_bicg_o_fifoready = i_iord_bl_call_bicg_unnamed_bicg1_bicg3_aunroll_x_out_iord_bl_call_bicg_o_fifoready;
    assign out_iord_bl_call_bicg_o_fifoalmost_full = i_iord_bl_call_bicg_unnamed_bicg1_bicg3_aunroll_x_out_iord_bl_call_bicg_o_fifoalmost_full;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop7_bicg4(BITJOIN,32)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop7_bicg4_q = i_llvm_fpga_pop_i1_memdep_phi_pop7_bicg4_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop7_bicg4(BITSELECT,33)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop7_bicg4_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop7_bicg4_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,28)@2
    assign out_memdep_phi_pop7 = bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop7_bicg4_b;
    assign out_valid_out = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop7_bicg4_V0;

endmodule
