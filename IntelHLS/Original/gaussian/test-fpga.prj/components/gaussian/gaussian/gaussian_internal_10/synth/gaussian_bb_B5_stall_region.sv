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

// SystemVerilog created from bb_gaussian_B5_stall_region
// Created for function/kernel gaussian
// SystemVerilog created on Thu Apr 27 14:24:40 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_bb_B5_stall_region (
    input wire [0:0] in_feedback_in_10,
    output wire [0:0] out_feedback_stall_out_10,
    input wire [0:0] in_feedback_valid_in_10,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_add52,
    input wire [0:0] in_cmp41655,
    input wire [31:0] in_fpga_indvars_iv743,
    input wire [31:0] in_fpga_indvars_iv940,
    input wire [31:0] in_j_01846,
    input wire [0:0] in_memdep_phi4_pop72549,
    input wire [32:0] in_unnamed_gaussian3,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe11,
    output wire [0:0] out_c0_exe1108,
    output wire [31:0] out_c0_exe12,
    output wire [31:0] out_c0_exe13,
    output wire [0:0] out_c0_exe14,
    output wire [32:0] out_c0_exe15,
    output wire [31:0] out_c0_exe16,
    output wire [0:0] out_c0_exe17,
    output wire [0:0] out_c0_exe2109,
    output wire [0:0] out_c0_exe3,
    output wire [31:0] out_c0_exe4,
    output wire [0:0] out_c0_exe5,
    output wire [31:0] out_c0_exe6,
    output wire [31:0] out_c0_exe7,
    output wire [31:0] out_c0_exe8,
    output wire [31:0] out_c0_exe9,
    output wire [0:0] out_memdep_phi_pop10,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop10_gaussian10_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop10_gaussian10_out_feedback_stall_out_10;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop10_gaussian10_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop10_gaussian10_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_profile_loop_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_3_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_5_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_6_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_7_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_8_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_9_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_10_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_11_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_12_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_13_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_14_tpl;
    wire [32:0] i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_15_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_16_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_17_tpl;
    wire [327:0] join_for_coalesced_delay_0_q;
    wire [32:0] sel_for_coalesced_delay_0_b;
    wire [31:0] sel_for_coalesced_delay_0_c;
    wire [31:0] sel_for_coalesced_delay_0_d;
    wire [31:0] sel_for_coalesced_delay_0_e;
    wire [31:0] sel_for_coalesced_delay_0_f;
    wire [31:0] sel_for_coalesced_delay_0_g;
    wire [31:0] sel_for_coalesced_delay_0_h;
    wire [31:0] sel_for_coalesced_delay_0_i;
    wire [31:0] sel_for_coalesced_delay_0_j;
    wire [31:0] sel_for_coalesced_delay_0_k;
    wire [0:0] sel_for_coalesced_delay_0_l;
    wire [0:0] sel_for_coalesced_delay_0_m;
    wire [0:0] sel_for_coalesced_delay_0_n;
    wire [0:0] sel_for_coalesced_delay_0_o;
    wire [0:0] sel_for_coalesced_delay_0_p;
    wire [0:0] sel_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_r;
    reg [327:0] coalesced_delay_0_0_q;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop10_gaussian10_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop10_gaussian10_b;
    wire [162:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [32:0] bubble_select_stall_entry_h;
    wire [328:0] bubble_join_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_e;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_g;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_h;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_i;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_j;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_k;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_l;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_m;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_n;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_o;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_p;
    wire [32:0] bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_r;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_s;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_gaussian10_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_gaussian10_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_gaussian10_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_gaussian10_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_V1;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;
    reg [0:0] rst_sync_rst_sclrn;


    // SE_coalesced_delay_0_0(STALLENABLE,61)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_gaussian10_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_V1;
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

    // bubble_join_stall_entry(BITJOIN,47)
    assign bubble_join_stall_entry_q = {in_unnamed_gaussian3, in_memdep_phi4_pop72549, in_j_01846, in_fpga_indvars_iv940, in_fpga_indvars_iv743, in_cmp41655, in_add52};

    // bubble_select_stall_entry(BITSELECT,48)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[64:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[96:65]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[128:97]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[129:129]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[162:130]);

    // SE_stall_entry(STALLENABLE,55)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_o_stall | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x(BLACKBOX,20)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@8
    // out out_profile_loop_o_valid@8
    // out out_c0_exit107_0_tpl@8
    // out out_c0_exit107_1_tpl@8
    // out out_c0_exit107_2_tpl@8
    // out out_c0_exit107_3_tpl@8
    // out out_c0_exit107_4_tpl@8
    // out out_c0_exit107_5_tpl@8
    // out out_c0_exit107_6_tpl@8
    // out out_c0_exit107_7_tpl@8
    // out out_c0_exit107_8_tpl@8
    // out out_c0_exit107_9_tpl@8
    // out out_c0_exit107_10_tpl@8
    // out out_c0_exit107_11_tpl@8
    // out out_c0_exit107_12_tpl@8
    // out out_c0_exit107_13_tpl@8
    // out out_c0_exit107_14_tpl@8
    // out out_c0_exit107_15_tpl@8
    // out out_c0_exit107_16_tpl@8
    // out out_c0_exit107_17_tpl@8
    gaussian_i_sfc_s_c0_in_for_body6_s_c0_enter10218_gaussian8 thei_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V0),
        .in_c0_eni8_0_tpl(GND_q),
        .in_c0_eni8_1_tpl(bubble_select_stall_entry_h),
        .in_c0_eni8_2_tpl(GND_q),
        .in_c0_eni8_3_tpl(bubble_select_stall_entry_c),
        .in_c0_eni8_4_tpl(bubble_select_stall_entry_b),
        .in_c0_eni8_5_tpl(bubble_select_stall_entry_g),
        .in_c0_eni8_6_tpl(bubble_select_stall_entry_e),
        .in_c0_eni8_7_tpl(bubble_select_stall_entry_d),
        .in_c0_eni8_8_tpl(bubble_select_stall_entry_f),
        .out_o_stall(i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_o_valid),
        .out_profile_loop_o_valid(i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_profile_loop_o_valid),
        .out_c0_exit107_0_tpl(),
        .out_c0_exit107_1_tpl(i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_1_tpl),
        .out_c0_exit107_2_tpl(i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_2_tpl),
        .out_c0_exit107_3_tpl(i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_3_tpl),
        .out_c0_exit107_4_tpl(i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_4_tpl),
        .out_c0_exit107_5_tpl(i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_5_tpl),
        .out_c0_exit107_6_tpl(i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_6_tpl),
        .out_c0_exit107_7_tpl(i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_7_tpl),
        .out_c0_exit107_8_tpl(i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_8_tpl),
        .out_c0_exit107_9_tpl(i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_9_tpl),
        .out_c0_exit107_10_tpl(i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_10_tpl),
        .out_c0_exit107_11_tpl(i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_11_tpl),
        .out_c0_exit107_12_tpl(i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_12_tpl),
        .out_c0_exit107_13_tpl(i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_13_tpl),
        .out_c0_exit107_14_tpl(i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_14_tpl),
        .out_c0_exit107_15_tpl(i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_15_tpl),
        .out_c0_exit107_16_tpl(i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_16_tpl),
        .out_c0_exit107_17_tpl(i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_17_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x(STALLENABLE,58)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_consumed0 = (~ (i_llvm_fpga_pop_i1_memdep_phi_pop10_gaussian10_out_stall_out) & SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_consumed1 = (~ (SE_coalesced_delay_0_0_backStall) & SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_wireValid = i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_o_valid;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_gaussian10(STALLENABLE,54)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_gaussian10_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_gaussian10_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_gaussian10_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_gaussian10_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_gaussian10_and0 = i_llvm_fpga_pop_i1_memdep_phi_pop10_gaussian10_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_gaussian10_wireValid = SE_coalesced_delay_0_0_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_gaussian10_and0;

    // bubble_join_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x(BITJOIN,51)
    assign bubble_join_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_q = {i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_17_tpl, i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_16_tpl, i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_15_tpl, i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_14_tpl, i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_13_tpl, i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_12_tpl, i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_11_tpl, i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_10_tpl, i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_9_tpl, i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_8_tpl, i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_7_tpl, i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_6_tpl, i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_5_tpl, i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_4_tpl, i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_3_tpl, i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_2_tpl, i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_c0_exit107_1_tpl, i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_out_profile_loop_o_valid};

    // bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x(BITSELECT,52)
    assign bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_q[2:2]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_q[3:3]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_q[35:4]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_q[36:36]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_q[68:37]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_q[100:69]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_q[132:101]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_q[164:133]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_q[165:165]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_q[197:166]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_q[229:198]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_q[261:230]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_p = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_q[262:262]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_q = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_q[295:263]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_r = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_q[327:296]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_s = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_q[328:328]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_pop_i1_memdep_phi_pop10_gaussian10(BLACKBOX,9)@8
    // in in_stall_in@20000000
    // out out_data_out@9
    // out out_feedback_stall_out_10@20000000
    // out out_stall_out@20000000
    // out out_valid_out@9
    gaussian_i_llvm_fpga_pop_i1_memdep_phi_pop10_0 thei_llvm_fpga_pop_i1_memdep_phi_pop10_gaussian10 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_l),
        .in_feedback_in_10(in_feedback_in_10),
        .in_feedback_valid_in_10(in_feedback_valid_in_10),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_gaussian10_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop10_gaussian10_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i1_memdep_phi_pop10_gaussian10_out_feedback_stall_out_10),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop10_gaussian10_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop10_gaussian10_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // feedback_stall_out_10_sync(GPOUT,7)
    assign out_feedback_stall_out_10 = i_llvm_fpga_pop_i1_memdep_phi_pop10_gaussian10_out_feedback_stall_out_10;

    // sync_out(GPOUT,17)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop10_gaussian10(BITJOIN,43)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop10_gaussian10_q = i_llvm_fpga_pop_i1_memdep_phi_pop10_gaussian10_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop10_gaussian10(BITSELECT,44)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop10_gaussian10_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop10_gaussian10_q[0:0]);

    // join_for_coalesced_delay_0(BITJOIN,39)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_d, bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_e, bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_g, bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_p, bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_b, bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_s, bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_o, bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_n, bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_m, bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_k, bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_j, bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_i, bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_h, bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_f, bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_r, bubble_select_i_sfc_s_c0_in_for_body6_gaussians_c0_enter10218_gaussian8_aunroll_x_q};

    // coalesced_delay_0_0(REG,41)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            coalesced_delay_0_0_q <= $unsigned(328'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,40)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[32:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[64:33]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_0_q[96:65]);
    assign sel_for_coalesced_delay_0_e = $unsigned(coalesced_delay_0_0_q[128:97]);
    assign sel_for_coalesced_delay_0_f = $unsigned(coalesced_delay_0_0_q[160:129]);
    assign sel_for_coalesced_delay_0_g = $unsigned(coalesced_delay_0_0_q[192:161]);
    assign sel_for_coalesced_delay_0_h = $unsigned(coalesced_delay_0_0_q[224:193]);
    assign sel_for_coalesced_delay_0_i = $unsigned(coalesced_delay_0_0_q[256:225]);
    assign sel_for_coalesced_delay_0_j = $unsigned(coalesced_delay_0_0_q[288:257]);
    assign sel_for_coalesced_delay_0_k = $unsigned(coalesced_delay_0_0_q[320:289]);
    assign sel_for_coalesced_delay_0_l = $unsigned(coalesced_delay_0_0_q[321:321]);
    assign sel_for_coalesced_delay_0_m = $unsigned(coalesced_delay_0_0_q[322:322]);
    assign sel_for_coalesced_delay_0_n = $unsigned(coalesced_delay_0_0_q[323:323]);
    assign sel_for_coalesced_delay_0_o = $unsigned(coalesced_delay_0_0_q[324:324]);
    assign sel_for_coalesced_delay_0_p = $unsigned(coalesced_delay_0_0_q[325:325]);
    assign sel_for_coalesced_delay_0_q = $unsigned(coalesced_delay_0_0_q[326:326]);
    assign sel_for_coalesced_delay_0_r = $unsigned(coalesced_delay_0_0_q[327:327]);

    // dupName_0_sync_out_x(GPOUT,19)@9
    assign out_c0_exe11 = sel_for_coalesced_delay_0_i;
    assign out_c0_exe1108 = sel_for_coalesced_delay_0_r;
    assign out_c0_exe12 = sel_for_coalesced_delay_0_j;
    assign out_c0_exe13 = sel_for_coalesced_delay_0_k;
    assign out_c0_exe14 = sel_for_coalesced_delay_0_n;
    assign out_c0_exe15 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe16 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe17 = sel_for_coalesced_delay_0_l;
    assign out_c0_exe2109 = sel_for_coalesced_delay_0_q;
    assign out_c0_exe3 = sel_for_coalesced_delay_0_p;
    assign out_c0_exe4 = sel_for_coalesced_delay_0_d;
    assign out_c0_exe5 = sel_for_coalesced_delay_0_o;
    assign out_c0_exe6 = sel_for_coalesced_delay_0_e;
    assign out_c0_exe7 = sel_for_coalesced_delay_0_f;
    assign out_c0_exe8 = sel_for_coalesced_delay_0_g;
    assign out_c0_exe9 = sel_for_coalesced_delay_0_h;
    assign out_memdep_phi_pop10 = bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop10_gaussian10_b;
    assign out_profile_loop_o_valid = sel_for_coalesced_delay_0_m;
    assign out_valid_out = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_gaussian10_V0;

    // rst_sync(RESETSYNC,78)
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
