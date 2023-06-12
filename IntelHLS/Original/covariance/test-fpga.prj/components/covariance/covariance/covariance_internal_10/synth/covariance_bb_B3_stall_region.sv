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

// SystemVerilog created from bb_covariance_B3_stall_region
// Created for function/kernel covariance
// SystemVerilog created on Thu Apr 27 14:28:37 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B3_stall_region (
    input wire [0:0] in_feedback_in_22,
    output wire [0:0] out_feedback_stall_out_22,
    input wire [0:0] in_feedback_valid_in_22,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_lim_ext89,
    input wire [0:0] in_memdep_phi1_pop1694,
    input wire [0:0] in_memdep_phi2_pop1799,
    input wire [0:0] in_memdep_phi4_pop18104,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe10,
    output wire [0:0] out_c0_exe11,
    output wire [0:0] out_c0_exe1194,
    output wire [0:0] out_c0_exe12,
    output wire [0:0] out_c0_exe2195,
    output wire [31:0] out_c0_exe3,
    output wire [31:0] out_c0_exe4,
    output wire [0:0] out_c0_exe5,
    output wire [0:0] out_c0_exe6,
    output wire [0:0] out_c0_exe7,
    output wire [31:0] out_c0_exe9,
    output wire [0:0] out_memdep_phi_pop22,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop22_covariance7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop22_covariance7_out_feedback_stall_out_22;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop22_covariance7_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop22_covariance7_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_out_profile_loop_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_out_c0_exit193_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_out_c0_exit193_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_out_c0_exit193_3_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_out_c0_exit193_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_out_c0_exit193_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_out_c0_exit193_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_out_c0_exit193_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_out_c0_exit193_8_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_out_c0_exit193_9_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_out_c0_exit193_10_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_out_c0_exit193_11_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_out_c0_exit193_12_tpl;
    wire [104:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [31:0] sel_for_coalesced_delay_0_c;
    wire [31:0] sel_for_coalesced_delay_0_d;
    wire [0:0] sel_for_coalesced_delay_0_e;
    wire [0:0] sel_for_coalesced_delay_0_f;
    wire [0:0] sel_for_coalesced_delay_0_g;
    wire [0:0] sel_for_coalesced_delay_0_h;
    wire [0:0] sel_for_coalesced_delay_0_i;
    wire [0:0] sel_for_coalesced_delay_0_j;
    wire [0:0] sel_for_coalesced_delay_0_k;
    wire [0:0] sel_for_coalesced_delay_0_l;
    wire [0:0] sel_for_coalesced_delay_0_m;
    reg [104:0] coalesced_delay_0_0_q;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop22_covariance7_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop22_covariance7_b;
    wire [34:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [105:0] bubble_join_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_e;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_i;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_j;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_k;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_l;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_m;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_n;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_covariance7_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_covariance7_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_covariance7_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_covariance7_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_V1;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;
    reg [0:0] rst_sync_rst_sclrn;


    // SE_coalesced_delay_0_0(STALLENABLE,56)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_covariance7_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_V1;
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

    // bubble_join_stall_entry(BITJOIN,42)
    assign bubble_join_stall_entry_q = {in_memdep_phi4_pop18104, in_memdep_phi2_pop1799, in_memdep_phi1_pop1694, in_lim_ext89};

    // bubble_select_stall_entry(BITSELECT,43)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[33:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[34:34]);

    // SE_stall_entry(STALLENABLE,50)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_out_o_stall | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x(BLACKBOX,20)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@8
    // out out_profile_loop_o_valid@8
    // out out_c0_exit193_0_tpl@8
    // out out_c0_exit193_1_tpl@8
    // out out_c0_exit193_2_tpl@8
    // out out_c0_exit193_3_tpl@8
    // out out_c0_exit193_4_tpl@8
    // out out_c0_exit193_5_tpl@8
    // out out_c0_exit193_6_tpl@8
    // out out_c0_exit193_7_tpl@8
    // out out_c0_exit193_8_tpl@8
    // out out_c0_exit193_9_tpl@8
    // out out_c0_exit193_10_tpl@8
    // out out_c0_exit193_11_tpl@8
    // out out_c0_exit193_12_tpl@8
    covariance_i_sfc_s_c0_in_for_body_s_c0_enter18934_covariance5 thei_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V0),
        .in_c0_eni5_0_tpl(GND_q),
        .in_c0_eni5_1_tpl(GND_q),
        .in_c0_eni5_2_tpl(bubble_select_stall_entry_b),
        .in_c0_eni5_3_tpl(bubble_select_stall_entry_c),
        .in_c0_eni5_4_tpl(bubble_select_stall_entry_d),
        .in_c0_eni5_5_tpl(bubble_select_stall_entry_e),
        .out_o_stall(i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_out_o_valid),
        .out_profile_loop_o_valid(i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_out_profile_loop_o_valid),
        .out_c0_exit193_0_tpl(),
        .out_c0_exit193_1_tpl(i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_out_c0_exit193_1_tpl),
        .out_c0_exit193_2_tpl(i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_out_c0_exit193_2_tpl),
        .out_c0_exit193_3_tpl(i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_out_c0_exit193_3_tpl),
        .out_c0_exit193_4_tpl(i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_out_c0_exit193_4_tpl),
        .out_c0_exit193_5_tpl(i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_out_c0_exit193_5_tpl),
        .out_c0_exit193_6_tpl(i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_out_c0_exit193_6_tpl),
        .out_c0_exit193_7_tpl(i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_out_c0_exit193_7_tpl),
        .out_c0_exit193_8_tpl(i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_out_c0_exit193_8_tpl),
        .out_c0_exit193_9_tpl(i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_out_c0_exit193_9_tpl),
        .out_c0_exit193_10_tpl(i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_out_c0_exit193_10_tpl),
        .out_c0_exit193_11_tpl(i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_out_c0_exit193_11_tpl),
        .out_c0_exit193_12_tpl(i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_out_c0_exit193_12_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x(STALLENABLE,53)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_consumed0 = (~ (i_llvm_fpga_pop_i1_memdep_phi_pop22_covariance7_out_stall_out) & SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_consumed1 = (~ (SE_coalesced_delay_0_0_backStall) & SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_wireValid = i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_out_o_valid;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_covariance7(STALLENABLE,49)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_covariance7_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_covariance7_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_covariance7_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_covariance7_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_covariance7_and0 = i_llvm_fpga_pop_i1_memdep_phi_pop22_covariance7_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_covariance7_wireValid = SE_coalesced_delay_0_0_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_covariance7_and0;

    // bubble_join_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x(BITJOIN,46)
    assign bubble_join_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_q = {i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_out_c0_exit193_12_tpl, i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_out_c0_exit193_11_tpl, i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_out_c0_exit193_10_tpl, i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_out_c0_exit193_9_tpl, i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_out_c0_exit193_8_tpl, i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_out_c0_exit193_7_tpl, i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_out_c0_exit193_6_tpl, i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_out_c0_exit193_5_tpl, i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_out_c0_exit193_4_tpl, i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_out_c0_exit193_3_tpl, i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_out_c0_exit193_2_tpl, i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_out_c0_exit193_1_tpl, i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_out_profile_loop_o_valid};

    // bubble_select_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x(BITSELECT,47)
    assign bubble_select_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_q[2:2]);
    assign bubble_select_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_q[34:3]);
    assign bubble_select_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_q[66:35]);
    assign bubble_select_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_q[67:67]);
    assign bubble_select_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_q[68:68]);
    assign bubble_select_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_q[69:69]);
    assign bubble_select_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_q[70:70]);
    assign bubble_select_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_q[102:71]);
    assign bubble_select_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_q[103:103]);
    assign bubble_select_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_q[104:104]);
    assign bubble_select_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_q[105:105]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_pop_i1_memdep_phi_pop22_covariance7(BLACKBOX,9)@8
    // in in_stall_in@20000000
    // out out_data_out@9
    // out out_feedback_stall_out_22@20000000
    // out out_stall_out@20000000
    // out out_valid_out@9
    covariance_i_llvm_fpga_pop_i1_memdep_phi_pop22_0 thei_llvm_fpga_pop_i1_memdep_phi_pop22_covariance7 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_j),
        .in_feedback_in_22(in_feedback_in_22),
        .in_feedback_valid_in_22(in_feedback_valid_in_22),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_covariance7_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop22_covariance7_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_i1_memdep_phi_pop22_covariance7_out_feedback_stall_out_22),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop22_covariance7_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop22_covariance7_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // feedback_stall_out_22_sync(GPOUT,7)
    assign out_feedback_stall_out_22 = i_llvm_fpga_pop_i1_memdep_phi_pop22_covariance7_out_feedback_stall_out_22;

    // sync_out(GPOUT,17)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop22_covariance7(BITJOIN,38)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop22_covariance7_q = i_llvm_fpga_pop_i1_memdep_phi_pop22_covariance7_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop22_covariance7(BITSELECT,39)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop22_covariance7_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop22_covariance7_q[0:0]);

    // join_for_coalesced_delay_0(BITJOIN,34)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_n, bubble_select_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_m, bubble_select_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_l, bubble_select_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_i, bubble_select_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_h, bubble_select_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_g, bubble_select_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_d, bubble_select_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_b, bubble_select_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_k, bubble_select_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_f, bubble_select_i_sfc_s_c0_in_for_body_covariances_c0_enter18934_covariance5_aunroll_x_e};

    // coalesced_delay_0_0(REG,36)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_0_0_q <= $unsigned(105'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,35)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[63:32]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_0_q[95:64]);
    assign sel_for_coalesced_delay_0_e = $unsigned(coalesced_delay_0_0_q[96:96]);
    assign sel_for_coalesced_delay_0_f = $unsigned(coalesced_delay_0_0_q[97:97]);
    assign sel_for_coalesced_delay_0_g = $unsigned(coalesced_delay_0_0_q[98:98]);
    assign sel_for_coalesced_delay_0_h = $unsigned(coalesced_delay_0_0_q[99:99]);
    assign sel_for_coalesced_delay_0_i = $unsigned(coalesced_delay_0_0_q[100:100]);
    assign sel_for_coalesced_delay_0_j = $unsigned(coalesced_delay_0_0_q[101:101]);
    assign sel_for_coalesced_delay_0_k = $unsigned(coalesced_delay_0_0_q[102:102]);
    assign sel_for_coalesced_delay_0_l = $unsigned(coalesced_delay_0_0_q[103:103]);
    assign sel_for_coalesced_delay_0_m = $unsigned(coalesced_delay_0_0_q[104:104]);

    // dupName_0_sync_out_x(GPOUT,19)@9
    assign out_c0_exe10 = sel_for_coalesced_delay_0_k;
    assign out_c0_exe11 = sel_for_coalesced_delay_0_l;
    assign out_c0_exe1194 = sel_for_coalesced_delay_0_f;
    assign out_c0_exe12 = sel_for_coalesced_delay_0_m;
    assign out_c0_exe2195 = sel_for_coalesced_delay_0_g;
    assign out_c0_exe3 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe4 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe5 = sel_for_coalesced_delay_0_h;
    assign out_c0_exe6 = sel_for_coalesced_delay_0_i;
    assign out_c0_exe7 = sel_for_coalesced_delay_0_j;
    assign out_c0_exe9 = sel_for_coalesced_delay_0_d;
    assign out_memdep_phi_pop22 = bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop22_covariance7_b;
    assign out_profile_loop_o_valid = sel_for_coalesced_delay_0_e;
    assign out_valid_out = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_covariance7_V0;

    // rst_sync(RESETSYNC,73)
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
