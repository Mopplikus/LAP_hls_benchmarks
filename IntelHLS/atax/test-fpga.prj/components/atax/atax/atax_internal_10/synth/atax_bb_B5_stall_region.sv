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

// SystemVerilog created from bb_atax_B5_stall_region
// Created for function/kernel atax
// SystemVerilog created on Fri Apr  7 18:08:54 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B5_stall_region (
    input wire [31:0] in_unnamed_atax5_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax5_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax5_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax5_atax_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going14_atax6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going14_atax6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [63:0] in_arrayidx165,
    input wire [0:0] in_exitcond967,
    input wire [0:0] in_forked11,
    input wire [0:0] in_forked3563,
    input wire [63:0] in_idxprom64,
    input wire [0:0] in_memdep_phi3_pop1039_pop1569,
    input wire [0:0] in_memdep_phi3_pop1062,
    input wire [0:0] in_memdep_phi_pop936_pop1466,
    input wire [0:0] in_memdep_phi_pop957,
    input wire [0:0] in_notcmp2668,
    input wire [31:0] in_unnamed_atax4,
    input wire [0:0] in_valid_in,
    input wire [31:0] in_unnamed_atax6_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax6_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax6_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax6_atax_avm_readdatavalid,
    output wire [31:0] out_unnamed_atax5_atax_avm_address,
    output wire [0:0] out_unnamed_atax5_atax_avm_enable,
    output wire [0:0] out_unnamed_atax5_atax_avm_read,
    output wire [0:0] out_unnamed_atax5_atax_avm_write,
    output wire [31:0] out_unnamed_atax5_atax_avm_writedata,
    output wire [3:0] out_unnamed_atax5_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax5_atax_avm_burstcount,
    output wire [0:0] out_c0_exe10128,
    output wire [0:0] out_c0_exe11,
    output wire [0:0] out_c0_exe12,
    output wire [63:0] out_c0_exe2120,
    output wire [31:0] out_c0_exe3121,
    output wire [0:0] out_c0_exe4122,
    output wire [0:0] out_c0_exe5123,
    output wire [0:0] out_c0_exe6124,
    output wire [0:0] out_c0_exe7125,
    output wire [63:0] out_c0_exe8126,
    output wire [0:0] out_c0_exe9127,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_unnamed_atax6_atax_avm_address,
    output wire [0:0] out_unnamed_atax6_atax_avm_enable,
    output wire [0:0] out_unnamed_atax6_atax_avm_read,
    output wire [0:0] out_unnamed_atax6_atax_avm_write,
    output wire [31:0] out_unnamed_atax6_atax_avm_writedata,
    output wire [3:0] out_unnamed_atax6_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax6_atax_avm_burstcount,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] atax_B5_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] atax_B5_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] atax_B5_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] atax_B5_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] atax_B5_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [63:0] atax_B5_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [63:0] atax_B5_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [0:0] atax_B5_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [31:0] atax_B5_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [0:0] atax_B5_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [0:0] atax_B5_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [0:0] atax_B5_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going14_atax6_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going14_atax6_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_pipeline_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_unnamed_atax5_atax_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_unnamed_atax5_atax_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_unnamed_atax5_atax_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_unnamed_atax5_atax_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_unnamed_atax5_atax_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_unnamed_atax5_atax_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_unnamed_atax5_atax_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_unnamed_atax6_atax_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_unnamed_atax6_atax_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_unnamed_atax6_atax_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_unnamed_atax6_atax_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_unnamed_atax6_atax_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_unnamed_atax6_atax_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_unnamed_atax6_atax_avm_writedata;
    wire [63:0] i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_c0_exit118_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_c0_exit118_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_c0_exit118_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_c0_exit118_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_c0_exit118_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_c0_exit118_7_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_c0_exit118_8_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_c0_exit118_9_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_c0_exit118_10_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_c0_exit118_11_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_c0_exit118_12_tpl;
    wire [167:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [63:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [0:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_select_stall_entry_k;
    wire [31:0] bubble_select_stall_entry_l;
    wire [167:0] bubble_join_atax_B5_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_atax_B5_merge_reg_aunroll_x_b;
    wire [0:0] bubble_select_atax_B5_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_atax_B5_merge_reg_aunroll_x_d;
    wire [0:0] bubble_select_atax_B5_merge_reg_aunroll_x_e;
    wire [63:0] bubble_select_atax_B5_merge_reg_aunroll_x_f;
    wire [63:0] bubble_select_atax_B5_merge_reg_aunroll_x_g;
    wire [0:0] bubble_select_atax_B5_merge_reg_aunroll_x_h;
    wire [31:0] bubble_select_atax_B5_merge_reg_aunroll_x_i;
    wire [0:0] bubble_select_atax_B5_merge_reg_aunroll_x_j;
    wire [0:0] bubble_select_atax_B5_merge_reg_aunroll_x_k;
    wire [0:0] bubble_select_atax_B5_merge_reg_aunroll_x_l;
    wire [167:0] bubble_join_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_g;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_i;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_j;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_k;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_l;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_atax_B5_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_atax_B5_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_atax_B5_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_V0;


    // bubble_join_stall_entry(BITJOIN,26)
    assign bubble_join_stall_entry_q = {in_unnamed_atax4, in_notcmp2668, in_memdep_phi_pop957, in_memdep_phi_pop936_pop1466, in_memdep_phi3_pop1062, in_memdep_phi3_pop1039_pop1569, in_idxprom64, in_forked3563, in_forked11, in_exitcond967, in_arrayidx165};

    // bubble_select_stall_entry(BITSELECT,27)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[63:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[64:64]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[65:65]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[66:66]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[130:67]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[131:131]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[132:132]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[133:133]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[134:134]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[135:135]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[167:136]);

    // SE_stall_entry(STALLENABLE,36)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = atax_B5_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // atax_B5_merge_reg_aunroll_x(BLACKBOX,19)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_data_out_5_tpl@1
    // out out_data_out_6_tpl@1
    // out out_data_out_7_tpl@1
    // out out_data_out_8_tpl@1
    // out out_data_out_9_tpl@1
    // out out_data_out_10_tpl@1
    atax_B5_merge_reg theatax_B5_merge_reg_aunroll_x (
        .in_stall_in(SE_out_atax_B5_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_d),
        .in_data_in_1_tpl(bubble_select_stall_entry_j),
        .in_data_in_2_tpl(bubble_select_stall_entry_h),
        .in_data_in_3_tpl(bubble_select_stall_entry_e),
        .in_data_in_4_tpl(bubble_select_stall_entry_f),
        .in_data_in_5_tpl(bubble_select_stall_entry_b),
        .in_data_in_6_tpl(bubble_select_stall_entry_i),
        .in_data_in_7_tpl(bubble_select_stall_entry_l),
        .in_data_in_8_tpl(bubble_select_stall_entry_c),
        .in_data_in_9_tpl(bubble_select_stall_entry_k),
        .in_data_in_10_tpl(bubble_select_stall_entry_g),
        .out_stall_out(atax_B5_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(atax_B5_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(atax_B5_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(atax_B5_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(atax_B5_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(atax_B5_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(atax_B5_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(atax_B5_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(atax_B5_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(atax_B5_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(atax_B5_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(atax_B5_merge_reg_aunroll_x_out_data_out_10_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_atax_B5_merge_reg_aunroll_x(BITJOIN,30)
    assign bubble_join_atax_B5_merge_reg_aunroll_x_q = {atax_B5_merge_reg_aunroll_x_out_data_out_10_tpl, atax_B5_merge_reg_aunroll_x_out_data_out_9_tpl, atax_B5_merge_reg_aunroll_x_out_data_out_8_tpl, atax_B5_merge_reg_aunroll_x_out_data_out_7_tpl, atax_B5_merge_reg_aunroll_x_out_data_out_6_tpl, atax_B5_merge_reg_aunroll_x_out_data_out_5_tpl, atax_B5_merge_reg_aunroll_x_out_data_out_4_tpl, atax_B5_merge_reg_aunroll_x_out_data_out_3_tpl, atax_B5_merge_reg_aunroll_x_out_data_out_2_tpl, atax_B5_merge_reg_aunroll_x_out_data_out_1_tpl, atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_atax_B5_merge_reg_aunroll_x(BITSELECT,31)
    assign bubble_select_atax_B5_merge_reg_aunroll_x_b = $unsigned(bubble_join_atax_B5_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_atax_B5_merge_reg_aunroll_x_c = $unsigned(bubble_join_atax_B5_merge_reg_aunroll_x_q[1:1]);
    assign bubble_select_atax_B5_merge_reg_aunroll_x_d = $unsigned(bubble_join_atax_B5_merge_reg_aunroll_x_q[2:2]);
    assign bubble_select_atax_B5_merge_reg_aunroll_x_e = $unsigned(bubble_join_atax_B5_merge_reg_aunroll_x_q[3:3]);
    assign bubble_select_atax_B5_merge_reg_aunroll_x_f = $unsigned(bubble_join_atax_B5_merge_reg_aunroll_x_q[67:4]);
    assign bubble_select_atax_B5_merge_reg_aunroll_x_g = $unsigned(bubble_join_atax_B5_merge_reg_aunroll_x_q[131:68]);
    assign bubble_select_atax_B5_merge_reg_aunroll_x_h = $unsigned(bubble_join_atax_B5_merge_reg_aunroll_x_q[132:132]);
    assign bubble_select_atax_B5_merge_reg_aunroll_x_i = $unsigned(bubble_join_atax_B5_merge_reg_aunroll_x_q[164:133]);
    assign bubble_select_atax_B5_merge_reg_aunroll_x_j = $unsigned(bubble_join_atax_B5_merge_reg_aunroll_x_q[165:165]);
    assign bubble_select_atax_B5_merge_reg_aunroll_x_k = $unsigned(bubble_join_atax_B5_merge_reg_aunroll_x_q[166:166]);
    assign bubble_select_atax_B5_merge_reg_aunroll_x_l = $unsigned(bubble_join_atax_B5_merge_reg_aunroll_x_q[167:167]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_atax_B5_merge_reg_aunroll_x(STALLENABLE,39)
    // Valid signal propagation
    assign SE_out_atax_B5_merge_reg_aunroll_x_V0 = SE_out_atax_B5_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_atax_B5_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_o_stall | ~ (SE_out_atax_B5_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_atax_B5_merge_reg_aunroll_x_wireValid = atax_B5_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x(STALLENABLE,41)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x(BLACKBOX,24)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going14_atax6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going14_atax6_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@14
    // out out_pipeline_valid_out@20000000
    // out out_unnamed_atax5_atax_avm_address@20000000
    // out out_unnamed_atax5_atax_avm_burstcount@20000000
    // out out_unnamed_atax5_atax_avm_byteenable@20000000
    // out out_unnamed_atax5_atax_avm_enable@20000000
    // out out_unnamed_atax5_atax_avm_read@20000000
    // out out_unnamed_atax5_atax_avm_write@20000000
    // out out_unnamed_atax5_atax_avm_writedata@20000000
    // out out_unnamed_atax6_atax_avm_address@20000000
    // out out_unnamed_atax6_atax_avm_burstcount@20000000
    // out out_unnamed_atax6_atax_avm_byteenable@20000000
    // out out_unnamed_atax6_atax_avm_enable@20000000
    // out out_unnamed_atax6_atax_avm_read@20000000
    // out out_unnamed_atax6_atax_avm_write@20000000
    // out out_unnamed_atax6_atax_avm_writedata@20000000
    // out out_c0_exit118_0_tpl@14
    // out out_c0_exit118_1_tpl@14
    // out out_c0_exit118_2_tpl@14
    // out out_c0_exit118_3_tpl@14
    // out out_c0_exit118_4_tpl@14
    // out out_c0_exit118_5_tpl@14
    // out out_c0_exit118_6_tpl@14
    // out out_c0_exit118_7_tpl@14
    // out out_c0_exit118_8_tpl@14
    // out out_c0_exit118_9_tpl@14
    // out out_c0_exit118_10_tpl@14
    // out out_c0_exit118_11_tpl@14
    // out out_c0_exit118_12_tpl@14
    atax_i_sfc_s_c0_in_for_body8_s_c0_enter10419_atax1 thei_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_backStall),
        .in_i_valid(SE_out_atax_B5_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_unnamed_atax5_atax_avm_readdata(in_unnamed_atax5_atax_avm_readdata),
        .in_unnamed_atax5_atax_avm_readdatavalid(in_unnamed_atax5_atax_avm_readdatavalid),
        .in_unnamed_atax5_atax_avm_waitrequest(in_unnamed_atax5_atax_avm_waitrequest),
        .in_unnamed_atax5_atax_avm_writeack(in_unnamed_atax5_atax_avm_writeack),
        .in_unnamed_atax6_atax_avm_readdata(in_unnamed_atax6_atax_avm_readdata),
        .in_unnamed_atax6_atax_avm_readdatavalid(in_unnamed_atax6_atax_avm_readdatavalid),
        .in_unnamed_atax6_atax_avm_waitrequest(in_unnamed_atax6_atax_avm_waitrequest),
        .in_unnamed_atax6_atax_avm_writeack(in_unnamed_atax6_atax_avm_writeack),
        .in_c0_eni11_0_tpl(GND_q),
        .in_c0_eni11_1_tpl(bubble_select_atax_B5_merge_reg_aunroll_x_b),
        .in_c0_eni11_2_tpl(bubble_select_atax_B5_merge_reg_aunroll_x_f),
        .in_c0_eni11_3_tpl(bubble_select_atax_B5_merge_reg_aunroll_x_i),
        .in_c0_eni11_4_tpl(bubble_select_atax_B5_merge_reg_aunroll_x_h),
        .in_c0_eni11_5_tpl(bubble_select_atax_B5_merge_reg_aunroll_x_l),
        .in_c0_eni11_6_tpl(bubble_select_atax_B5_merge_reg_aunroll_x_e),
        .in_c0_eni11_7_tpl(bubble_select_atax_B5_merge_reg_aunroll_x_g),
        .in_c0_eni11_8_tpl(bubble_select_atax_B5_merge_reg_aunroll_x_j),
        .in_c0_eni11_9_tpl(bubble_select_atax_B5_merge_reg_aunroll_x_k),
        .in_c0_eni11_10_tpl(bubble_select_atax_B5_merge_reg_aunroll_x_c),
        .in_c0_eni11_11_tpl(bubble_select_atax_B5_merge_reg_aunroll_x_d),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going14_atax6_exiting_stall_out(i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going14_atax6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going14_atax6_exiting_valid_out(i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going14_atax6_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_pipeline_valid_out),
        .out_unnamed_atax5_atax_avm_address(i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_unnamed_atax5_atax_avm_address),
        .out_unnamed_atax5_atax_avm_burstcount(i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_unnamed_atax5_atax_avm_burstcount),
        .out_unnamed_atax5_atax_avm_byteenable(i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_unnamed_atax5_atax_avm_byteenable),
        .out_unnamed_atax5_atax_avm_enable(i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_unnamed_atax5_atax_avm_enable),
        .out_unnamed_atax5_atax_avm_read(i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_unnamed_atax5_atax_avm_read),
        .out_unnamed_atax5_atax_avm_write(i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_unnamed_atax5_atax_avm_write),
        .out_unnamed_atax5_atax_avm_writedata(i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_unnamed_atax5_atax_avm_writedata),
        .out_unnamed_atax6_atax_avm_address(i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_unnamed_atax6_atax_avm_address),
        .out_unnamed_atax6_atax_avm_burstcount(i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_unnamed_atax6_atax_avm_burstcount),
        .out_unnamed_atax6_atax_avm_byteenable(i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_unnamed_atax6_atax_avm_byteenable),
        .out_unnamed_atax6_atax_avm_enable(i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_unnamed_atax6_atax_avm_enable),
        .out_unnamed_atax6_atax_avm_read(i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_unnamed_atax6_atax_avm_read),
        .out_unnamed_atax6_atax_avm_write(i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_unnamed_atax6_atax_avm_write),
        .out_unnamed_atax6_atax_avm_writedata(i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_unnamed_atax6_atax_avm_writedata),
        .out_c0_exit118_0_tpl(),
        .out_c0_exit118_1_tpl(),
        .out_c0_exit118_2_tpl(i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_c0_exit118_2_tpl),
        .out_c0_exit118_3_tpl(i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_c0_exit118_3_tpl),
        .out_c0_exit118_4_tpl(i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_c0_exit118_4_tpl),
        .out_c0_exit118_5_tpl(i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_c0_exit118_5_tpl),
        .out_c0_exit118_6_tpl(i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_c0_exit118_6_tpl),
        .out_c0_exit118_7_tpl(i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_c0_exit118_7_tpl),
        .out_c0_exit118_8_tpl(i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_c0_exit118_8_tpl),
        .out_c0_exit118_9_tpl(i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_c0_exit118_9_tpl),
        .out_c0_exit118_10_tpl(i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_c0_exit118_10_tpl),
        .out_c0_exit118_11_tpl(i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_c0_exit118_11_tpl),
        .out_c0_exit118_12_tpl(i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_c0_exit118_12_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going14_atax6_exiting_valid_out = i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going14_atax6_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going14_atax6_exiting_stall_out = i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going14_atax6_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,12)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,17)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,21)
    assign out_unnamed_atax5_atax_avm_address = i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_unnamed_atax5_atax_avm_address;
    assign out_unnamed_atax5_atax_avm_enable = i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_unnamed_atax5_atax_avm_enable;
    assign out_unnamed_atax5_atax_avm_read = i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_unnamed_atax5_atax_avm_read;
    assign out_unnamed_atax5_atax_avm_write = i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_unnamed_atax5_atax_avm_write;
    assign out_unnamed_atax5_atax_avm_writedata = i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_unnamed_atax5_atax_avm_writedata;
    assign out_unnamed_atax5_atax_avm_byteenable = i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_unnamed_atax5_atax_avm_byteenable;
    assign out_unnamed_atax5_atax_avm_burstcount = i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_unnamed_atax5_atax_avm_burstcount;

    // bubble_join_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x(BITJOIN,34)
    assign bubble_join_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_q = {i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_c0_exit118_12_tpl, i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_c0_exit118_11_tpl, i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_c0_exit118_10_tpl, i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_c0_exit118_9_tpl, i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_c0_exit118_8_tpl, i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_c0_exit118_7_tpl, i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_c0_exit118_6_tpl, i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_c0_exit118_5_tpl, i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_c0_exit118_4_tpl, i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_c0_exit118_3_tpl, i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_c0_exit118_2_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x(BITSELECT,35)
    assign bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_q[63:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_q[95:64]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_q[96:96]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_q[97:97]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_q[98:98]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_q[99:99]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_q[163:100]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_q[164:164]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_q[165:165]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_q[166:166]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_q[167:167]);

    // dupName_0_sync_out_x(GPOUT,22)@14
    assign out_c0_exe10128 = bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_j;
    assign out_c0_exe11 = bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_k;
    assign out_c0_exe12 = bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_l;
    assign out_c0_exe2120 = bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_b;
    assign out_c0_exe3121 = bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_c;
    assign out_c0_exe4122 = bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_d;
    assign out_c0_exe5123 = bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_e;
    assign out_c0_exe6124 = bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_f;
    assign out_c0_exe7125 = bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_g;
    assign out_c0_exe8126 = bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_h;
    assign out_c0_exe9127 = bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_i;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,23)
    assign out_unnamed_atax6_atax_avm_address = i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_unnamed_atax6_atax_avm_address;
    assign out_unnamed_atax6_atax_avm_enable = i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_unnamed_atax6_atax_avm_enable;
    assign out_unnamed_atax6_atax_avm_read = i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_unnamed_atax6_atax_avm_read;
    assign out_unnamed_atax6_atax_avm_write = i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_unnamed_atax6_atax_avm_write;
    assign out_unnamed_atax6_atax_avm_writedata = i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_unnamed_atax6_atax_avm_writedata;
    assign out_unnamed_atax6_atax_avm_byteenable = i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_unnamed_atax6_atax_avm_byteenable;
    assign out_unnamed_atax6_atax_avm_burstcount = i_sfc_s_c0_in_for_body8_ataxs_c0_enter10419_atax1_aunroll_x_out_unnamed_atax6_atax_avm_burstcount;

endmodule
