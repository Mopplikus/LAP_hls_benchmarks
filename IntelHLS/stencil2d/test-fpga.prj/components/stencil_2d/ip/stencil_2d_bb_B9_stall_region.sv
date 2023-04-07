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

// SystemVerilog created from bb_stencil_2d_B9_stall_region
// Created for function/kernel stencil_2d
// SystemVerilog created on Fri Apr  7 16:44:44 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_bb_B9_stall_region (
    input wire [31:0] in_unnamed_stencil_2d5_stencil_2d_avm_readdata,
    input wire [0:0] in_unnamed_stencil_2d5_stencil_2d_avm_writeack,
    input wire [0:0] in_unnamed_stencil_2d5_stencil_2d_avm_waitrequest,
    input wire [0:0] in_unnamed_stencil_2d5_stencil_2d_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    output wire [31:0] out_intel_reserved_ffwd_0_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_c_025_pop1547_pop2589,
    input wire [31:0] in_c_025_pop1576,
    input wire [31:0] in_dot_prod_add90,
    input wire [0:0] in_exitcond391,
    input wire [0:0] in_forked,
    input wire [0:0] in_forked3286,
    input wire [31:0] in_mul16_add1187,
    input wire [31:0] in_mul2839_pop1782,
    input wire [31:0] in_mul2840_pop2293,
    input wire [31:0] in_mul2864,
    input wire [0:0] in_notcmp1492,
    input wire [0:0] in_notcmp1945_pop2495,
    input wire [0:0] in_notcmp1973,
    input wire [0:0] in_notcmp2442_pop1885,
    input wire [0:0] in_notcmp2443_pop2394,
    input wire [0:0] in_notcmp2469,
    input wire [31:0] in_r_026_pop1336_pop1679,
    input wire [31:0] in_r_026_pop1337_pop2188,
    input wire [31:0] in_r_026_pop1359,
    input wire [0:0] in_valid_in,
    input wire [31:0] in_unnamed_stencil_2d6_stencil_2d_avm_readdata,
    input wire [0:0] in_unnamed_stencil_2d6_stencil_2d_avm_writeack,
    input wire [0:0] in_unnamed_stencil_2d6_stencil_2d_avm_waitrequest,
    input wire [0:0] in_unnamed_stencil_2d6_stencil_2d_avm_readdatavalid,
    output wire [31:0] out_unnamed_stencil_2d5_stencil_2d_avm_address,
    output wire [0:0] out_unnamed_stencil_2d5_stencil_2d_avm_enable,
    output wire [0:0] out_unnamed_stencil_2d5_stencil_2d_avm_read,
    output wire [0:0] out_unnamed_stencil_2d5_stencil_2d_avm_write,
    output wire [31:0] out_unnamed_stencil_2d5_stencil_2d_avm_writedata,
    output wire [3:0] out_unnamed_stencil_2d5_stencil_2d_avm_byteenable,
    output wire [0:0] out_unnamed_stencil_2d5_stencil_2d_avm_burstcount,
    output wire [31:0] out_c0_exe2189,
    output wire [0:0] out_c0_exe3190,
    output wire [31:0] out_c0_exe4191,
    output wire [0:0] out_c0_exe5192,
    output wire [0:0] out_c0_exe6193,
    output wire [31:0] out_c0_exe7194,
    output wire [0:0] out_c0_exe8195,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_unnamed_stencil_2d6_stencil_2d_avm_address,
    output wire [0:0] out_unnamed_stencil_2d6_stencil_2d_avm_enable,
    output wire [0:0] out_unnamed_stencil_2d6_stencil_2d_avm_read,
    output wire [0:0] out_unnamed_stencil_2d6_stencil_2d_avm_write,
    output wire [31:0] out_unnamed_stencil_2d6_stencil_2d_avm_writedata,
    output wire [3:0] out_unnamed_stencil_2d6_stencil_2d_avm_byteenable,
    output wire [0:0] out_unnamed_stencil_2d6_stencil_2d_avm_burstcount,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_intel_reserved_ffwd_0_0;
    wire [0:0] i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_pipeline_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_unnamed_stencil_2d5_stencil_2d_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_unnamed_stencil_2d5_stencil_2d_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_unnamed_stencil_2d5_stencil_2d_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_unnamed_stencil_2d5_stencil_2d_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_unnamed_stencil_2d5_stencil_2d_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_unnamed_stencil_2d5_stencil_2d_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_unnamed_stencil_2d5_stencil_2d_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_unnamed_stencil_2d6_stencil_2d_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_unnamed_stencil_2d6_stencil_2d_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_unnamed_stencil_2d6_stencil_2d_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_unnamed_stencil_2d6_stencil_2d_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_unnamed_stencil_2d6_stencil_2d_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_unnamed_stencil_2d6_stencil_2d_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_unnamed_stencil_2d6_stencil_2d_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_c0_exit187_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_c0_exit187_3_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_c0_exit187_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_c0_exit187_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_c0_exit187_6_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_c0_exit187_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_c0_exit187_8_tpl;
    wire [0:0] stencil_2d_B9_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] stencil_2d_B9_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [31:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [31:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [31:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [31:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [0:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [0:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [31:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [31:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_11_tpl;
    wire [31:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_12_tpl;
    wire [31:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_13_tpl;
    wire [0:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_14_tpl;
    wire [0:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_15_tpl;
    wire [31:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_16_tpl;
    wire [0:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_17_tpl;
    wire [0:0] stencil_2d_B9_merge_reg_aunroll_x_out_data_out_18_tpl;
    wire [328:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
    wire [31:0] bubble_select_stall_entry_i;
    wire [31:0] bubble_select_stall_entry_j;
    wire [31:0] bubble_select_stall_entry_k;
    wire [0:0] bubble_select_stall_entry_l;
    wire [0:0] bubble_select_stall_entry_m;
    wire [0:0] bubble_select_stall_entry_n;
    wire [0:0] bubble_select_stall_entry_o;
    wire [0:0] bubble_select_stall_entry_p;
    wire [0:0] bubble_select_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_r;
    wire [31:0] bubble_select_stall_entry_s;
    wire [31:0] bubble_select_stall_entry_t;
    wire [99:0] bubble_join_i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_f;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_h;
    wire [328:0] bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_c;
    wire [31:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_d;
    wire [0:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_f;
    wire [31:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_g;
    wire [31:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_h;
    wire [31:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_i;
    wire [0:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_j;
    wire [0:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_k;
    wire [31:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_l;
    wire [31:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_m;
    wire [31:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_n;
    wire [31:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_o;
    wire [0:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_p;
    wire [0:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_q;
    wire [31:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_r;
    wire [0:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_s;
    wire [0:0] bubble_select_stencil_2d_B9_merge_reg_aunroll_x_t;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_V0;
    wire [0:0] SE_out_stencil_2d_B9_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_stencil_2d_B9_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_stencil_2d_B9_merge_reg_aunroll_x_V0;


    // bubble_join_stall_entry(BITJOIN,27)
    assign bubble_join_stall_entry_q = {in_r_026_pop1359, in_r_026_pop1337_pop2188, in_r_026_pop1336_pop1679, in_notcmp2469, in_notcmp2443_pop2394, in_notcmp2442_pop1885, in_notcmp1973, in_notcmp1945_pop2495, in_notcmp1492, in_mul2864, in_mul2840_pop2293, in_mul2839_pop1782, in_mul16_add1187, in_forked3286, in_forked, in_exitcond391, in_dot_prod_add90, in_c_025_pop1576, in_c_025_pop1547_pop2589};

    // bubble_select_stall_entry(BITSELECT,28)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[63:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[95:64]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[96:96]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[97:97]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[98:98]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[130:99]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[162:131]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[194:163]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[226:195]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[227:227]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[228:228]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[229:229]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[230:230]);
    assign bubble_select_stall_entry_p = $unsigned(bubble_join_stall_entry_q[231:231]);
    assign bubble_select_stall_entry_q = $unsigned(bubble_join_stall_entry_q[232:232]);
    assign bubble_select_stall_entry_r = $unsigned(bubble_join_stall_entry_q[264:233]);
    assign bubble_select_stall_entry_s = $unsigned(bubble_join_stall_entry_q[296:265]);
    assign bubble_select_stall_entry_t = $unsigned(bubble_join_stall_entry_q[328:297]);

    // SE_stall_entry(STALLENABLE,37)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = stencil_2d_B9_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // stencil_2d_B9_merge_reg_aunroll_x(BLACKBOX,25)@0
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
    // out out_data_out_11_tpl@1
    // out out_data_out_12_tpl@1
    // out out_data_out_13_tpl@1
    // out out_data_out_14_tpl@1
    // out out_data_out_15_tpl@1
    // out out_data_out_16_tpl@1
    // out out_data_out_17_tpl@1
    // out out_data_out_18_tpl@1
    stencil_2d_B9_merge_reg thestencil_2d_B9_merge_reg_aunroll_x (
        .in_stall_in(SE_out_stencil_2d_B9_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_f),
        .in_data_in_1_tpl(bubble_select_stall_entry_t),
        .in_data_in_2_tpl(bubble_select_stall_entry_k),
        .in_data_in_3_tpl(bubble_select_stall_entry_q),
        .in_data_in_4_tpl(bubble_select_stall_entry_n),
        .in_data_in_5_tpl(bubble_select_stall_entry_c),
        .in_data_in_6_tpl(bubble_select_stall_entry_r),
        .in_data_in_7_tpl(bubble_select_stall_entry_i),
        .in_data_in_8_tpl(bubble_select_stall_entry_o),
        .in_data_in_9_tpl(bubble_select_stall_entry_g),
        .in_data_in_10_tpl(bubble_select_stall_entry_h),
        .in_data_in_11_tpl(bubble_select_stall_entry_s),
        .in_data_in_12_tpl(bubble_select_stall_entry_b),
        .in_data_in_13_tpl(bubble_select_stall_entry_d),
        .in_data_in_14_tpl(bubble_select_stall_entry_e),
        .in_data_in_15_tpl(bubble_select_stall_entry_l),
        .in_data_in_16_tpl(bubble_select_stall_entry_j),
        .in_data_in_17_tpl(bubble_select_stall_entry_p),
        .in_data_in_18_tpl(bubble_select_stall_entry_m),
        .out_stall_out(stencil_2d_B9_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(stencil_2d_B9_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_16_tpl),
        .out_data_out_17_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_17_tpl),
        .out_data_out_18_tpl(stencil_2d_B9_merge_reg_aunroll_x_out_data_out_18_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_stencil_2d_B9_merge_reg_aunroll_x(BITJOIN,34)
    assign bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q = {stencil_2d_B9_merge_reg_aunroll_x_out_data_out_18_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_17_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_16_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_15_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_14_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_13_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_12_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_11_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_10_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_9_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_8_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_7_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_6_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_5_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_4_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_3_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_2_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_1_tpl, stencil_2d_B9_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_stencil_2d_B9_merge_reg_aunroll_x(BITSELECT,35)
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_b = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_c = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_d = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[64:33]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_e = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[65:65]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_f = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[66:66]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_g = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[98:67]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_h = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[130:99]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_i = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[162:131]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_j = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[163:163]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_k = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[164:164]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_l = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[196:165]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_m = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[228:197]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_n = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[260:229]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_o = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[292:261]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_p = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[293:293]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_q = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[294:294]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_r = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[326:295]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_s = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[327:327]);
    assign bubble_select_stencil_2d_B9_merge_reg_aunroll_x_t = $unsigned(bubble_join_stencil_2d_B9_merge_reg_aunroll_x_q[328:328]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_stencil_2d_B9_merge_reg_aunroll_x(STALLENABLE,42)
    // Valid signal propagation
    assign SE_out_stencil_2d_B9_merge_reg_aunroll_x_V0 = SE_out_stencil_2d_B9_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_stencil_2d_B9_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_o_stall | ~ (SE_out_stencil_2d_B9_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_stencil_2d_B9_merge_reg_aunroll_x_wireValid = stencil_2d_B9_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x(STALLENABLE,40)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x(BLACKBOX,24)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_valid_out@20000000
    // out out_intel_reserved_ffwd_0_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@14
    // out out_pipeline_valid_out@20000000
    // out out_unnamed_stencil_2d5_stencil_2d_avm_address@20000000
    // out out_unnamed_stencil_2d5_stencil_2d_avm_burstcount@20000000
    // out out_unnamed_stencil_2d5_stencil_2d_avm_byteenable@20000000
    // out out_unnamed_stencil_2d5_stencil_2d_avm_enable@20000000
    // out out_unnamed_stencil_2d5_stencil_2d_avm_read@20000000
    // out out_unnamed_stencil_2d5_stencil_2d_avm_write@20000000
    // out out_unnamed_stencil_2d5_stencil_2d_avm_writedata@20000000
    // out out_unnamed_stencil_2d6_stencil_2d_avm_address@20000000
    // out out_unnamed_stencil_2d6_stencil_2d_avm_burstcount@20000000
    // out out_unnamed_stencil_2d6_stencil_2d_avm_byteenable@20000000
    // out out_unnamed_stencil_2d6_stencil_2d_avm_enable@20000000
    // out out_unnamed_stencil_2d6_stencil_2d_avm_read@20000000
    // out out_unnamed_stencil_2d6_stencil_2d_avm_write@20000000
    // out out_unnamed_stencil_2d6_stencil_2d_avm_writedata@20000000
    // out out_c0_exit187_0_tpl@14
    // out out_c0_exit187_1_tpl@14
    // out out_c0_exit187_2_tpl@14
    // out out_c0_exit187_3_tpl@14
    // out out_c0_exit187_4_tpl@14
    // out out_c0_exit187_5_tpl@14
    // out out_c0_exit187_6_tpl@14
    // out out_c0_exit187_7_tpl@14
    // out out_c0_exit187_8_tpl@14
    // out out_c0_exit187_9_tpl@14
    // out out_c0_exit187_10_tpl@14
    // out out_c0_exit187_11_tpl@14
    // out out_c0_exit187_12_tpl@14
    // out out_c0_exit187_13_tpl@14
    // out out_c0_exit187_14_tpl@14
    // out out_c0_exit187_15_tpl@14
    // out out_c0_exit187_16_tpl@14
    stencil_2d_i_sfc_s_c0_in_for_body15_s_c0_enter16117_stencil_2d1 thei_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_backStall),
        .in_i_valid(SE_out_stencil_2d_B9_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_unnamed_stencil_2d5_stencil_2d_avm_readdata(in_unnamed_stencil_2d5_stencil_2d_avm_readdata),
        .in_unnamed_stencil_2d5_stencil_2d_avm_readdatavalid(in_unnamed_stencil_2d5_stencil_2d_avm_readdatavalid),
        .in_unnamed_stencil_2d5_stencil_2d_avm_waitrequest(in_unnamed_stencil_2d5_stencil_2d_avm_waitrequest),
        .in_unnamed_stencil_2d5_stencil_2d_avm_writeack(in_unnamed_stencil_2d5_stencil_2d_avm_writeack),
        .in_unnamed_stencil_2d6_stencil_2d_avm_readdata(in_unnamed_stencil_2d6_stencil_2d_avm_readdata),
        .in_unnamed_stencil_2d6_stencil_2d_avm_readdatavalid(in_unnamed_stencil_2d6_stencil_2d_avm_readdatavalid),
        .in_unnamed_stencil_2d6_stencil_2d_avm_waitrequest(in_unnamed_stencil_2d6_stencil_2d_avm_waitrequest),
        .in_unnamed_stencil_2d6_stencil_2d_avm_writeack(in_unnamed_stencil_2d6_stencil_2d_avm_writeack),
        .in_c0_eni19_0_tpl(GND_q),
        .in_c0_eni19_1_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_k),
        .in_c0_eni19_2_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_b),
        .in_c0_eni19_3_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_p),
        .in_c0_eni19_4_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_l),
        .in_c0_eni19_5_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_o),
        .in_c0_eni19_6_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_m),
        .in_c0_eni19_7_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_r),
        .in_c0_eni19_8_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_s),
        .in_c0_eni19_9_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_t),
        .in_c0_eni19_10_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_n),
        .in_c0_eni19_11_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_q),
        .in_c0_eni19_12_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_c),
        .in_c0_eni19_13_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_d),
        .in_c0_eni19_14_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_e),
        .in_c0_eni19_15_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_f),
        .in_c0_eni19_16_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_g),
        .in_c0_eni19_17_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_h),
        .in_c0_eni19_18_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_i),
        .in_c0_eni19_19_tpl(bubble_select_stencil_2d_B9_merge_reg_aunroll_x_j),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_stall_out(i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_valid_out(i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_valid_out),
        .out_intel_reserved_ffwd_0_0(i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_intel_reserved_ffwd_0_0),
        .out_o_stall(i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_pipeline_valid_out),
        .out_unnamed_stencil_2d5_stencil_2d_avm_address(i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_unnamed_stencil_2d5_stencil_2d_avm_address),
        .out_unnamed_stencil_2d5_stencil_2d_avm_burstcount(i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_unnamed_stencil_2d5_stencil_2d_avm_burstcount),
        .out_unnamed_stencil_2d5_stencil_2d_avm_byteenable(i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_unnamed_stencil_2d5_stencil_2d_avm_byteenable),
        .out_unnamed_stencil_2d5_stencil_2d_avm_enable(i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_unnamed_stencil_2d5_stencil_2d_avm_enable),
        .out_unnamed_stencil_2d5_stencil_2d_avm_read(i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_unnamed_stencil_2d5_stencil_2d_avm_read),
        .out_unnamed_stencil_2d5_stencil_2d_avm_write(i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_unnamed_stencil_2d5_stencil_2d_avm_write),
        .out_unnamed_stencil_2d5_stencil_2d_avm_writedata(i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_unnamed_stencil_2d5_stencil_2d_avm_writedata),
        .out_unnamed_stencil_2d6_stencil_2d_avm_address(i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_unnamed_stencil_2d6_stencil_2d_avm_address),
        .out_unnamed_stencil_2d6_stencil_2d_avm_burstcount(i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_unnamed_stencil_2d6_stencil_2d_avm_burstcount),
        .out_unnamed_stencil_2d6_stencil_2d_avm_byteenable(i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_unnamed_stencil_2d6_stencil_2d_avm_byteenable),
        .out_unnamed_stencil_2d6_stencil_2d_avm_enable(i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_unnamed_stencil_2d6_stencil_2d_avm_enable),
        .out_unnamed_stencil_2d6_stencil_2d_avm_read(i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_unnamed_stencil_2d6_stencil_2d_avm_read),
        .out_unnamed_stencil_2d6_stencil_2d_avm_write(i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_unnamed_stencil_2d6_stencil_2d_avm_write),
        .out_unnamed_stencil_2d6_stencil_2d_avm_writedata(i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_unnamed_stencil_2d6_stencil_2d_avm_writedata),
        .out_c0_exit187_0_tpl(),
        .out_c0_exit187_1_tpl(),
        .out_c0_exit187_2_tpl(i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_c0_exit187_2_tpl),
        .out_c0_exit187_3_tpl(i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_c0_exit187_3_tpl),
        .out_c0_exit187_4_tpl(i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_c0_exit187_4_tpl),
        .out_c0_exit187_5_tpl(i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_c0_exit187_5_tpl),
        .out_c0_exit187_6_tpl(i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_c0_exit187_6_tpl),
        .out_c0_exit187_7_tpl(i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_c0_exit187_7_tpl),
        .out_c0_exit187_8_tpl(i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_c0_exit187_8_tpl),
        .out_c0_exit187_9_tpl(),
        .out_c0_exit187_10_tpl(),
        .out_c0_exit187_11_tpl(),
        .out_c0_exit187_12_tpl(),
        .out_c0_exit187_13_tpl(),
        .out_c0_exit187_14_tpl(),
        .out_c0_exit187_15_tpl(),
        .out_c0_exit187_16_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_valid_out = i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_stall_out = i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,12)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,14)
    assign out_intel_reserved_ffwd_0_0 = i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_intel_reserved_ffwd_0_0;

    // sync_out(GPOUT,18)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,21)
    assign out_unnamed_stencil_2d5_stencil_2d_avm_address = i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_unnamed_stencil_2d5_stencil_2d_avm_address;
    assign out_unnamed_stencil_2d5_stencil_2d_avm_enable = i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_unnamed_stencil_2d5_stencil_2d_avm_enable;
    assign out_unnamed_stencil_2d5_stencil_2d_avm_read = i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_unnamed_stencil_2d5_stencil_2d_avm_read;
    assign out_unnamed_stencil_2d5_stencil_2d_avm_write = i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_unnamed_stencil_2d5_stencil_2d_avm_write;
    assign out_unnamed_stencil_2d5_stencil_2d_avm_writedata = i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_unnamed_stencil_2d5_stencil_2d_avm_writedata;
    assign out_unnamed_stencil_2d5_stencil_2d_avm_byteenable = i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_unnamed_stencil_2d5_stencil_2d_avm_byteenable;
    assign out_unnamed_stencil_2d5_stencil_2d_avm_burstcount = i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_unnamed_stencil_2d5_stencil_2d_avm_burstcount;

    // bubble_join_i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x(BITJOIN,31)
    assign bubble_join_i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_q = {i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_c0_exit187_8_tpl, i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_c0_exit187_7_tpl, i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_c0_exit187_6_tpl, i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_c0_exit187_5_tpl, i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_c0_exit187_4_tpl, i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_c0_exit187_3_tpl, i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_c0_exit187_2_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x(BITSELECT,32)
    assign bubble_select_i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_q[31:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_q[32:32]);
    assign bubble_select_i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_q[64:33]);
    assign bubble_select_i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_q[65:65]);
    assign bubble_select_i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_q[66:66]);
    assign bubble_select_i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_q[98:67]);
    assign bubble_select_i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_q[99:99]);

    // dupName_0_sync_out_x(GPOUT,22)@14
    assign out_c0_exe2189 = bubble_select_i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_b;
    assign out_c0_exe3190 = bubble_select_i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_c;
    assign out_c0_exe4191 = bubble_select_i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_d;
    assign out_c0_exe5192 = bubble_select_i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_e;
    assign out_c0_exe6193 = bubble_select_i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_f;
    assign out_c0_exe7194 = bubble_select_i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_g;
    assign out_c0_exe8195 = bubble_select_i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_h;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,23)
    assign out_unnamed_stencil_2d6_stencil_2d_avm_address = i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_unnamed_stencil_2d6_stencil_2d_avm_address;
    assign out_unnamed_stencil_2d6_stencil_2d_avm_enable = i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_unnamed_stencil_2d6_stencil_2d_avm_enable;
    assign out_unnamed_stencil_2d6_stencil_2d_avm_read = i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_unnamed_stencil_2d6_stencil_2d_avm_read;
    assign out_unnamed_stencil_2d6_stencil_2d_avm_write = i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_unnamed_stencil_2d6_stencil_2d_avm_write;
    assign out_unnamed_stencil_2d6_stencil_2d_avm_writedata = i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_unnamed_stencil_2d6_stencil_2d_avm_writedata;
    assign out_unnamed_stencil_2d6_stencil_2d_avm_byteenable = i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_unnamed_stencil_2d6_stencil_2d_avm_byteenable;
    assign out_unnamed_stencil_2d6_stencil_2d_avm_burstcount = i_sfc_s_c0_in_for_body15_stencil_2ds_c0_enter16117_stencil_2d1_aunroll_x_out_unnamed_stencil_2d6_stencil_2d_avm_burstcount;

endmodule
