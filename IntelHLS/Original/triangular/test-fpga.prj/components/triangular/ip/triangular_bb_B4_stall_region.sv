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

// SystemVerilog created from bb_triangular_B4_stall_region
// Created for function/kernel triangular
// SystemVerilog created on Tue Apr 25 22:47:05 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_bb_B4_stall_region (
    input wire [0:0] in_feedback_in_13,
    output wire [0:0] out_feedback_stall_out_13,
    input wire [0:0] in_feedback_valid_in_13,
    input wire [31:0] in_intel_reserved_ffwd_0_0,
    input wire [0:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    input wire [32:0] in_intel_reserved_ffwd_3_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_lim_ext32,
    input wire [31:0] in_reorder_limiter_enter35,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe10,
    output wire [31:0] out_c0_exe11,
    output wire [32:0] out_c0_exe159,
    output wire [31:0] out_c0_exe260,
    output wire [31:0] out_c0_exe3,
    output wire [0:0] out_c0_exe4,
    output wire [0:0] out_c0_exe5,
    output wire [0:0] out_c0_exe6,
    output wire [31:0] out_c0_exe7,
    output wire [31:0] out_c0_exe8,
    output wire [0:0] out_memdep_phi4_pop13,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop13_triangular5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop13_triangular5_out_feedback_stall_out_13;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop13_triangular5_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop13_triangular5_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_out_profile_loop_o_valid;
    wire [32:0] i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_out_c0_exit58_1_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_out_c0_exit58_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_out_c0_exit58_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_out_c0_exit58_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_out_c0_exit58_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_out_c0_exit58_6_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_out_c0_exit58_7_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_out_c0_exit58_8_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_out_c0_exit58_9_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_out_c0_exit58_10_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_out_c0_exit58_11_tpl;
    wire [228:0] join_for_coalesced_delay_0_q;
    wire [32:0] sel_for_coalesced_delay_0_b;
    wire [31:0] sel_for_coalesced_delay_0_c;
    wire [31:0] sel_for_coalesced_delay_0_d;
    wire [31:0] sel_for_coalesced_delay_0_e;
    wire [31:0] sel_for_coalesced_delay_0_f;
    wire [31:0] sel_for_coalesced_delay_0_g;
    wire [31:0] sel_for_coalesced_delay_0_h;
    wire [0:0] sel_for_coalesced_delay_0_i;
    wire [0:0] sel_for_coalesced_delay_0_j;
    wire [0:0] sel_for_coalesced_delay_0_k;
    wire [0:0] sel_for_coalesced_delay_0_l;
    reg [228:0] coalesced_delay_0_0_q;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi4_pop13_triangular5_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi4_pop13_triangular5_b;
    wire [63:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [229:0] bubble_join_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_b;
    wire [32:0] bubble_select_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_h;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_i;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_j;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_k;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_l;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_m;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop13_triangular5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop13_triangular5_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop13_triangular5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop13_triangular5_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_V1;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;
    reg [0:0] rst_sync_rst_sclrn;


    // SE_coalesced_delay_0_0(STALLENABLE,59)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop13_triangular5_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_V1;
    // Backward Stall generation
    assign SE_coalesced_delay_0_0_backStall = ~ (SE_coalesced_delay_0_0_v_s_0);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
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

    // bubble_join_stall_entry(BITJOIN,45)
    assign bubble_join_stall_entry_q = {in_reorder_limiter_enter35, in_lim_ext32};

    // bubble_select_stall_entry(BITSELECT,46)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[63:32]);

    // SE_stall_entry(STALLENABLE,53)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_out_o_stall | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x(BLACKBOX,24)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@10
    // out out_profile_loop_o_valid@10
    // out out_c0_exit58_0_tpl@10
    // out out_c0_exit58_1_tpl@10
    // out out_c0_exit58_2_tpl@10
    // out out_c0_exit58_3_tpl@10
    // out out_c0_exit58_4_tpl@10
    // out out_c0_exit58_5_tpl@10
    // out out_c0_exit58_6_tpl@10
    // out out_c0_exit58_7_tpl@10
    // out out_c0_exit58_8_tpl@10
    // out out_c0_exit58_9_tpl@10
    // out out_c0_exit58_10_tpl@10
    // out out_c0_exit58_11_tpl@10
    triangular_i_sfc_s_c0_in_for_body_s_c0_enter547_triangular3 thei_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V0),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_c0_eni3_0_tpl(GND_q),
        .in_c0_eni3_1_tpl(GND_q),
        .in_c0_eni3_2_tpl(bubble_select_stall_entry_b),
        .in_c0_eni3_3_tpl(bubble_select_stall_entry_c),
        .out_o_stall(i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_out_o_valid),
        .out_profile_loop_o_valid(i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_out_profile_loop_o_valid),
        .out_c0_exit58_0_tpl(),
        .out_c0_exit58_1_tpl(i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_out_c0_exit58_1_tpl),
        .out_c0_exit58_2_tpl(i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_out_c0_exit58_2_tpl),
        .out_c0_exit58_3_tpl(i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_out_c0_exit58_3_tpl),
        .out_c0_exit58_4_tpl(i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_out_c0_exit58_4_tpl),
        .out_c0_exit58_5_tpl(i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_out_c0_exit58_5_tpl),
        .out_c0_exit58_6_tpl(i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_out_c0_exit58_6_tpl),
        .out_c0_exit58_7_tpl(i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_out_c0_exit58_7_tpl),
        .out_c0_exit58_8_tpl(i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_out_c0_exit58_8_tpl),
        .out_c0_exit58_9_tpl(i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_out_c0_exit58_9_tpl),
        .out_c0_exit58_10_tpl(i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_out_c0_exit58_10_tpl),
        .out_c0_exit58_11_tpl(i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_out_c0_exit58_11_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x(STALLENABLE,56)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_consumed0 = (~ (i_llvm_fpga_pop_i1_memdep_phi4_pop13_triangular5_out_stall_out) & SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_consumed1 = (~ (SE_coalesced_delay_0_0_backStall) & SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_wireValid = i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_out_o_valid;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop13_triangular5(STALLENABLE,52)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop13_triangular5_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop13_triangular5_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop13_triangular5_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop13_triangular5_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop13_triangular5_and0 = i_llvm_fpga_pop_i1_memdep_phi4_pop13_triangular5_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop13_triangular5_wireValid = SE_coalesced_delay_0_0_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop13_triangular5_and0;

    // bubble_join_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x(BITJOIN,49)
    assign bubble_join_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_q = {i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_out_c0_exit58_11_tpl, i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_out_c0_exit58_10_tpl, i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_out_c0_exit58_9_tpl, i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_out_c0_exit58_8_tpl, i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_out_c0_exit58_7_tpl, i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_out_c0_exit58_6_tpl, i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_out_c0_exit58_5_tpl, i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_out_c0_exit58_4_tpl, i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_out_c0_exit58_3_tpl, i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_out_c0_exit58_2_tpl, i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_out_c0_exit58_1_tpl, i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_out_profile_loop_o_valid};

    // bubble_select_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x(BITSELECT,50)
    assign bubble_select_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_q[33:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_q[65:34]);
    assign bubble_select_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_q[97:66]);
    assign bubble_select_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_q[98:98]);
    assign bubble_select_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_q[99:99]);
    assign bubble_select_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_q[100:100]);
    assign bubble_select_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_q[132:101]);
    assign bubble_select_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_q[164:133]);
    assign bubble_select_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_q[165:165]);
    assign bubble_select_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_q[197:166]);
    assign bubble_select_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_q[229:198]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_pop_i1_memdep_phi4_pop13_triangular5(BLACKBOX,9)@10
    // in in_stall_in@20000000
    // out out_data_out@11
    // out out_feedback_stall_out_13@20000000
    // out out_stall_out@20000000
    // out out_valid_out@11
    triangular_i_llvm_fpga_pop_i1_memdep_phi4_pop13_0 thei_llvm_fpga_pop_i1_memdep_phi4_pop13_triangular5 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_k),
        .in_feedback_in_13(in_feedback_in_13),
        .in_feedback_valid_in_13(in_feedback_valid_in_13),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop13_triangular5_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi4_pop13_triangular5_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_i1_memdep_phi4_pop13_triangular5_out_feedback_stall_out_13),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi4_pop13_triangular5_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi4_pop13_triangular5_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // feedback_stall_out_13_sync(GPOUT,7)
    assign out_feedback_stall_out_13 = i_llvm_fpga_pop_i1_memdep_phi4_pop13_triangular5_out_feedback_stall_out_13;

    // sync_out(GPOUT,21)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi4_pop13_triangular5(BITJOIN,41)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi4_pop13_triangular5_q = i_llvm_fpga_pop_i1_memdep_phi4_pop13_triangular5_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi4_pop13_triangular5(BITSELECT,42)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi4_pop13_triangular5_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi4_pop13_triangular5_q[0:0]);

    // join_for_coalesced_delay_0(BITJOIN,37)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_h, bubble_select_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_g, bubble_select_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_f, bubble_select_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_b, bubble_select_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_m, bubble_select_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_l, bubble_select_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_j, bubble_select_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_i, bubble_select_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_e, bubble_select_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_d, bubble_select_i_sfc_s_c0_in_for_body_triangulars_c0_enter547_triangular3_aunroll_x_c};

    // coalesced_delay_0_0(REG,39)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_0_0_q <= $unsigned(229'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,38)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[32:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[64:33]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_0_q[96:65]);
    assign sel_for_coalesced_delay_0_e = $unsigned(coalesced_delay_0_0_q[128:97]);
    assign sel_for_coalesced_delay_0_f = $unsigned(coalesced_delay_0_0_q[160:129]);
    assign sel_for_coalesced_delay_0_g = $unsigned(coalesced_delay_0_0_q[192:161]);
    assign sel_for_coalesced_delay_0_h = $unsigned(coalesced_delay_0_0_q[224:193]);
    assign sel_for_coalesced_delay_0_i = $unsigned(coalesced_delay_0_0_q[225:225]);
    assign sel_for_coalesced_delay_0_j = $unsigned(coalesced_delay_0_0_q[226:226]);
    assign sel_for_coalesced_delay_0_k = $unsigned(coalesced_delay_0_0_q[227:227]);
    assign sel_for_coalesced_delay_0_l = $unsigned(coalesced_delay_0_0_q[228:228]);

    // dupName_0_sync_out_x(GPOUT,23)@11
    assign out_c0_exe10 = sel_for_coalesced_delay_0_g;
    assign out_c0_exe11 = sel_for_coalesced_delay_0_h;
    assign out_c0_exe159 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe260 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe3 = sel_for_coalesced_delay_0_d;
    assign out_c0_exe4 = sel_for_coalesced_delay_0_j;
    assign out_c0_exe5 = sel_for_coalesced_delay_0_k;
    assign out_c0_exe6 = sel_for_coalesced_delay_0_l;
    assign out_c0_exe7 = sel_for_coalesced_delay_0_e;
    assign out_c0_exe8 = sel_for_coalesced_delay_0_f;
    assign out_memdep_phi4_pop13 = bubble_select_i_llvm_fpga_pop_i1_memdep_phi4_pop13_triangular5_b;
    assign out_profile_loop_o_valid = sel_for_coalesced_delay_0_i;
    assign out_valid_out = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop13_triangular5_V0;

    // rst_sync(RESETSYNC,76)
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
