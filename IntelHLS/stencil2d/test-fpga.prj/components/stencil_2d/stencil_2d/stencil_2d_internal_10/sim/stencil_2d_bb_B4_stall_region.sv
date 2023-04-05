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

// SystemVerilog created from bb_stencil_2d_B4_stall_region
// Created for function/kernel stencil_2d
// SystemVerilog created on Wed Mar 29 16:57:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_bb_B4_stall_region (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_stencil_2d2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_stencil_2d2_exiting_stall_out,
    input wire [0:0] in_feedback_in_17,
    output wire [0:0] out_feedback_stall_out_17,
    input wire [0:0] in_feedback_valid_in_17,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_exitcond1181,
    input wire [0:0] in_forked40,
    input wire [0:0] in_memdep_phi1_pop1491,
    input wire [31:0] in_mul2576,
    input wire [0:0] in_notcmp2986,
    input wire [31:0] in_r_026_pop1371,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe10,
    output wire [31:0] out_c0_exe11,
    output wire [0:0] out_c0_exe1168,
    output wire [0:0] out_c0_exe12,
    output wire [0:0] out_c0_exe13,
    output wire [0:0] out_c0_exe14,
    output wire [0:0] out_c0_exe2169,
    output wire [31:0] out_c0_exe3170,
    output wire [31:0] out_c0_exe4171,
    output wire [31:0] out_c0_exe5172,
    output wire [0:0] out_c0_exe6,
    output wire [0:0] out_c0_exe7,
    output wire [0:0] out_c0_exe8,
    output wire [0:0] out_memdep_phi_pop17,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop17_stencil_2d3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop17_stencil_2d3_out_feedback_stall_out_17;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop17_stencil_2d3_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop17_stencil_2d3_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_stencil_2d2_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_stencil_2d2_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_c0_exit167_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_c0_exit167_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_c0_exit167_3_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_c0_exit167_4_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_c0_exit167_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_c0_exit167_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_c0_exit167_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_c0_exit167_8_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_c0_exit167_9_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_c0_exit167_10_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_c0_exit167_11_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_c0_exit167_12_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_c0_exit167_13_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_c0_exit167_14_tpl;
    wire [0:0] stencil_2d_B4_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] stencil_2d_B4_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] stencil_2d_B4_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] stencil_2d_B4_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [31:0] stencil_2d_B4_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] stencil_2d_B4_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] stencil_2d_B4_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [0:0] stencil_2d_B4_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [167:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [31:0] sel_for_coalesced_delay_0_c;
    wire [31:0] sel_for_coalesced_delay_0_d;
    wire [31:0] sel_for_coalesced_delay_0_e;
    wire [31:0] sel_for_coalesced_delay_0_f;
    wire [0:0] sel_for_coalesced_delay_0_g;
    wire [0:0] sel_for_coalesced_delay_0_h;
    wire [0:0] sel_for_coalesced_delay_0_i;
    wire [0:0] sel_for_coalesced_delay_0_j;
    wire [0:0] sel_for_coalesced_delay_0_k;
    wire [0:0] sel_for_coalesced_delay_0_l;
    wire [0:0] sel_for_coalesced_delay_0_m;
    wire [0:0] sel_for_coalesced_delay_0_n;
    reg [167:0] coalesced_delay_0_0_q;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop17_stencil_2d3_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop17_stencil_2d3_b;
    wire [67:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [168:0] bubble_join_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_e;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_i;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_j;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_k;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_l;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_m;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_n;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_o;
    wire [67:0] bubble_join_stencil_2d_B4_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_stencil_2d_B4_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_stencil_2d_B4_merge_reg_aunroll_x_c;
    wire [31:0] bubble_select_stencil_2d_B4_merge_reg_aunroll_x_d;
    wire [0:0] bubble_select_stencil_2d_B4_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_stencil_2d_B4_merge_reg_aunroll_x_f;
    wire [0:0] bubble_select_stencil_2d_B4_merge_reg_aunroll_x_g;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop17_stencil_2d3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop17_stencil_2d3_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop17_stencil_2d3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop17_stencil_2d3_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_V1;
    wire [0:0] SE_out_stencil_2d_B4_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_stencil_2d_B4_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_stencil_2d_B4_merge_reg_aunroll_x_V0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;


    // bubble_join_stall_entry(BITJOIN,48)
    assign bubble_join_stall_entry_q = {in_r_026_pop1371, in_notcmp2986, in_mul2576, in_memdep_phi1_pop1491, in_forked40, in_exitcond1181};

    // bubble_select_stall_entry(BITSELECT,49)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[2:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[34:3]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[35:35]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[67:36]);

    // SE_stall_entry(STALLENABLE,60)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = stencil_2d_B4_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // stencil_2d_B4_merge_reg_aunroll_x(BLACKBOX,25)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_data_out_5_tpl@1
    stencil_2d_B4_merge_reg thestencil_2d_B4_merge_reg_aunroll_x (
        .in_stall_in(SE_out_stencil_2d_B4_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_c),
        .in_data_in_1_tpl(bubble_select_stall_entry_g),
        .in_data_in_2_tpl(bubble_select_stall_entry_e),
        .in_data_in_3_tpl(bubble_select_stall_entry_b),
        .in_data_in_4_tpl(bubble_select_stall_entry_f),
        .in_data_in_5_tpl(bubble_select_stall_entry_d),
        .out_stall_out(stencil_2d_B4_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(stencil_2d_B4_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(stencil_2d_B4_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(stencil_2d_B4_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(stencil_2d_B4_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(stencil_2d_B4_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(stencil_2d_B4_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(stencil_2d_B4_merge_reg_aunroll_x_out_data_out_5_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_stencil_2d_B4_merge_reg_aunroll_x(BITJOIN,55)
    assign bubble_join_stencil_2d_B4_merge_reg_aunroll_x_q = {stencil_2d_B4_merge_reg_aunroll_x_out_data_out_5_tpl, stencil_2d_B4_merge_reg_aunroll_x_out_data_out_4_tpl, stencil_2d_B4_merge_reg_aunroll_x_out_data_out_3_tpl, stencil_2d_B4_merge_reg_aunroll_x_out_data_out_2_tpl, stencil_2d_B4_merge_reg_aunroll_x_out_data_out_1_tpl, stencil_2d_B4_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_stencil_2d_B4_merge_reg_aunroll_x(BITSELECT,56)
    assign bubble_select_stencil_2d_B4_merge_reg_aunroll_x_b = $unsigned(bubble_join_stencil_2d_B4_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_stencil_2d_B4_merge_reg_aunroll_x_c = $unsigned(bubble_join_stencil_2d_B4_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_stencil_2d_B4_merge_reg_aunroll_x_d = $unsigned(bubble_join_stencil_2d_B4_merge_reg_aunroll_x_q[64:33]);
    assign bubble_select_stencil_2d_B4_merge_reg_aunroll_x_e = $unsigned(bubble_join_stencil_2d_B4_merge_reg_aunroll_x_q[65:65]);
    assign bubble_select_stencil_2d_B4_merge_reg_aunroll_x_f = $unsigned(bubble_join_stencil_2d_B4_merge_reg_aunroll_x_q[66:66]);
    assign bubble_select_stencil_2d_B4_merge_reg_aunroll_x_g = $unsigned(bubble_join_stencil_2d_B4_merge_reg_aunroll_x_q[67:67]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_stencil_2d_B4_merge_reg_aunroll_x(STALLENABLE,65)
    // Valid signal propagation
    assign SE_out_stencil_2d_B4_merge_reg_aunroll_x_V0 = SE_out_stencil_2d_B4_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_stencil_2d_B4_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_o_stall | ~ (SE_out_stencil_2d_B4_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_stencil_2d_B4_merge_reg_aunroll_x_wireValid = stencil_2d_B4_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop17_stencil_2d3(STALLENABLE,59)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop17_stencil_2d3_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop17_stencil_2d3_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop17_stencil_2d3_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop17_stencil_2d3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop17_stencil_2d3_and0 = i_llvm_fpga_pop_i1_memdep_phi_pop17_stencil_2d3_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop17_stencil_2d3_wireValid = SE_coalesced_delay_0_0_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop17_stencil_2d3_and0;

    // SE_coalesced_delay_0_0(STALLENABLE,68)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop17_stencil_2d3_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_V1;
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

    // bubble_join_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x(BITJOIN,52)
    assign bubble_join_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_q = {i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_c0_exit167_14_tpl, i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_c0_exit167_13_tpl, i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_c0_exit167_12_tpl, i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_c0_exit167_11_tpl, i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_c0_exit167_10_tpl, i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_c0_exit167_9_tpl, i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_c0_exit167_8_tpl, i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_c0_exit167_7_tpl, i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_c0_exit167_6_tpl, i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_c0_exit167_5_tpl, i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_c0_exit167_4_tpl, i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_c0_exit167_3_tpl, i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_c0_exit167_2_tpl, i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_c0_exit167_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x(BITSELECT,53)
    assign bubble_select_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_q[33:2]);
    assign bubble_select_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_q[65:34]);
    assign bubble_select_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_q[97:66]);
    assign bubble_select_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_q[98:98]);
    assign bubble_select_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_q[99:99]);
    assign bubble_select_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_q[100:100]);
    assign bubble_select_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_q[101:101]);
    assign bubble_select_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_q[133:102]);
    assign bubble_select_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_q[165:134]);
    assign bubble_select_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_q[166:166]);
    assign bubble_select_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_q[167:167]);
    assign bubble_select_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_q[168:168]);

    // i_llvm_fpga_pop_i1_memdep_phi_pop17_stencil_2d3(BLACKBOX,9)@5
    // in in_stall_in@20000000
    // out out_data_out@6
    // out out_feedback_stall_out_17@20000000
    // out out_stall_out@20000000
    // out out_valid_out@6
    stencil_2d_i_llvm_fpga_pop_i1_memdep_phi_pop17_0 thei_llvm_fpga_pop_i1_memdep_phi_pop17_stencil_2d3 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_j),
        .in_feedback_in_17(in_feedback_in_17),
        .in_feedback_valid_in_17(in_feedback_valid_in_17),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop17_stencil_2d3_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop17_stencil_2d3_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i1_memdep_phi_pop17_stencil_2d3_out_feedback_stall_out_17),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop17_stencil_2d3_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop17_stencil_2d3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x(STALLENABLE,63)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_consumed0 = (~ (i_llvm_fpga_pop_i1_memdep_phi_pop17_stencil_2d3_out_stall_out) & SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_consumed1 = (~ (SE_coalesced_delay_0_0_backStall) & SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x(BLACKBOX,24)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_stencil_2d2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_stencil_2d2_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit167_0_tpl@5
    // out out_c0_exit167_1_tpl@5
    // out out_c0_exit167_2_tpl@5
    // out out_c0_exit167_3_tpl@5
    // out out_c0_exit167_4_tpl@5
    // out out_c0_exit167_5_tpl@5
    // out out_c0_exit167_6_tpl@5
    // out out_c0_exit167_7_tpl@5
    // out out_c0_exit167_8_tpl@5
    // out out_c0_exit167_9_tpl@5
    // out out_c0_exit167_10_tpl@5
    // out out_c0_exit167_11_tpl@5
    // out out_c0_exit167_12_tpl@5
    // out out_c0_exit167_13_tpl@5
    // out out_c0_exit167_14_tpl@5
    stencil_2d_i_sfc_s_c0_in_for_cond5_prehe0000ter16021_stencil_2d1 thei_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_backStall),
        .in_i_valid(SE_out_stencil_2d_B4_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni6_0_tpl(GND_q),
        .in_c0_eni6_1_tpl(bubble_select_stencil_2d_B4_merge_reg_aunroll_x_b),
        .in_c0_eni6_2_tpl(bubble_select_stencil_2d_B4_merge_reg_aunroll_x_c),
        .in_c0_eni6_3_tpl(bubble_select_stencil_2d_B4_merge_reg_aunroll_x_d),
        .in_c0_eni6_4_tpl(bubble_select_stencil_2d_B4_merge_reg_aunroll_x_e),
        .in_c0_eni6_5_tpl(bubble_select_stencil_2d_B4_merge_reg_aunroll_x_f),
        .in_c0_eni6_6_tpl(bubble_select_stencil_2d_B4_merge_reg_aunroll_x_g),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_stencil_2d2_exiting_stall_out(i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_stencil_2d2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_stencil_2d2_exiting_valid_out(i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_stencil_2d2_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit167_0_tpl(),
        .out_c0_exit167_1_tpl(i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_c0_exit167_1_tpl),
        .out_c0_exit167_2_tpl(i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_c0_exit167_2_tpl),
        .out_c0_exit167_3_tpl(i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_c0_exit167_3_tpl),
        .out_c0_exit167_4_tpl(i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_c0_exit167_4_tpl),
        .out_c0_exit167_5_tpl(i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_c0_exit167_5_tpl),
        .out_c0_exit167_6_tpl(i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_c0_exit167_6_tpl),
        .out_c0_exit167_7_tpl(i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_c0_exit167_7_tpl),
        .out_c0_exit167_8_tpl(i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_c0_exit167_8_tpl),
        .out_c0_exit167_9_tpl(i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_c0_exit167_9_tpl),
        .out_c0_exit167_10_tpl(i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_c0_exit167_10_tpl),
        .out_c0_exit167_11_tpl(i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_c0_exit167_11_tpl),
        .out_c0_exit167_12_tpl(i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_c0_exit167_12_tpl),
        .out_c0_exit167_13_tpl(i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_c0_exit167_13_tpl),
        .out_c0_exit167_14_tpl(i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_c0_exit167_14_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,5)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_stencil_2d2_exiting_valid_out = i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_stencil_2d2_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_stencil_2d2_exiting_stall_out = i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_stencil_2d2_exiting_stall_out;

    // feedback_stall_out_17_sync(GPOUT,7)
    assign out_feedback_stall_out_17 = i_llvm_fpga_pop_i1_memdep_phi_pop17_stencil_2d3_out_feedback_stall_out_17;

    // pipeline_valid_out_sync(GPOUT,17)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,21)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop17_stencil_2d3(BITJOIN,44)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop17_stencil_2d3_q = i_llvm_fpga_pop_i1_memdep_phi_pop17_stencil_2d3_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop17_stencil_2d3(BITSELECT,45)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop17_stencil_2d3_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop17_stencil_2d3_q[0:0]);

    // join_for_coalesced_delay_0(BITJOIN,40)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_o, bubble_select_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_n, bubble_select_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_m, bubble_select_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_i, bubble_select_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_h, bubble_select_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_g, bubble_select_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_b, bubble_select_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_l, bubble_select_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_k, bubble_select_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_f, bubble_select_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_e, bubble_select_i_sfc_s_c0_in_for_cond5_preheader_stencil_2ds_c0_enter16021_stencil_2d1_aunroll_x_d};

    // coalesced_delay_0_0(REG,42)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(168'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,41)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[63:32]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_0_q[95:64]);
    assign sel_for_coalesced_delay_0_e = $unsigned(coalesced_delay_0_0_q[127:96]);
    assign sel_for_coalesced_delay_0_f = $unsigned(coalesced_delay_0_0_q[159:128]);
    assign sel_for_coalesced_delay_0_g = $unsigned(coalesced_delay_0_0_q[160:160]);
    assign sel_for_coalesced_delay_0_h = $unsigned(coalesced_delay_0_0_q[161:161]);
    assign sel_for_coalesced_delay_0_i = $unsigned(coalesced_delay_0_0_q[162:162]);
    assign sel_for_coalesced_delay_0_j = $unsigned(coalesced_delay_0_0_q[163:163]);
    assign sel_for_coalesced_delay_0_k = $unsigned(coalesced_delay_0_0_q[164:164]);
    assign sel_for_coalesced_delay_0_l = $unsigned(coalesced_delay_0_0_q[165:165]);
    assign sel_for_coalesced_delay_0_m = $unsigned(coalesced_delay_0_0_q[166:166]);
    assign sel_for_coalesced_delay_0_n = $unsigned(coalesced_delay_0_0_q[167:167]);

    // dupName_0_sync_out_x(GPOUT,23)@6
    assign out_c0_exe10 = sel_for_coalesced_delay_0_e;
    assign out_c0_exe11 = sel_for_coalesced_delay_0_f;
    assign out_c0_exe1168 = sel_for_coalesced_delay_0_g;
    assign out_c0_exe12 = sel_for_coalesced_delay_0_l;
    assign out_c0_exe13 = sel_for_coalesced_delay_0_m;
    assign out_c0_exe14 = sel_for_coalesced_delay_0_n;
    assign out_c0_exe2169 = sel_for_coalesced_delay_0_h;
    assign out_c0_exe3170 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe4171 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe5172 = sel_for_coalesced_delay_0_d;
    assign out_c0_exe6 = sel_for_coalesced_delay_0_i;
    assign out_c0_exe7 = sel_for_coalesced_delay_0_j;
    assign out_c0_exe8 = sel_for_coalesced_delay_0_k;
    assign out_memdep_phi_pop17 = bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop17_stencil_2d3_b;
    assign out_valid_out = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop17_stencil_2d3_V0;

endmodule
