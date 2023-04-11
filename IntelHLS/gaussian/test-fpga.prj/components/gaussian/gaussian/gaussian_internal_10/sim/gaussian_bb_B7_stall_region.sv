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

// SystemVerilog created from bb_gaussian_B7_stall_region
// Created for function/kernel gaussian
// SystemVerilog created on Fri Apr  7 17:25:52 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_bb_B7_stall_region (
    input wire [31:0] in_lm1_gaussian_avm_readdata,
    input wire [0:0] in_lm1_gaussian_avm_writeack,
    input wire [0:0] in_lm1_gaussian_avm_waitrequest,
    input wire [0:0] in_lm1_gaussian_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_add36_pop1569,
    input wire [31:0] in_add57,
    input wire [0:0] in_cmp41638_pop1661,
    input wire [0:0] in_cmp41660,
    input wire [0:0] in_forked,
    input wire [31:0] in_fpga_indvars_iv732_pop1367,
    input wire [31:0] in_fpga_indvars_iv748,
    input wire [31:0] in_fpga_indvars_iv930_pop1266,
    input wire [31:0] in_fpga_indvars_iv945,
    input wire [31:0] in_i_017_pop963,
    input wire [31:0] in_j_01834_pop1468,
    input wire [31:0] in_j_01851,
    input wire [0:0] in_memdep_phi4_pop727_pop1165,
    input wire [0:0] in_memdep_phi4_pop72954,
    input wire [0:0] in_memdep_phi_pop1064,
    input wire [0:0] in_notcmp1762,
    input wire [32:0] in_unnamed_gaussian5,
    input wire [0:0] in_unnamed_gaussian6,
    input wire [0:0] in_valid_in,
    input wire [31:0] in_lm62_gaussian_avm_readdata,
    input wire [0:0] in_lm62_gaussian_avm_writeack,
    input wire [0:0] in_lm62_gaussian_avm_waitrequest,
    input wire [0:0] in_lm62_gaussian_avm_readdatavalid,
    output wire [31:0] out_lm1_gaussian_avm_address,
    output wire [0:0] out_lm1_gaussian_avm_enable,
    output wire [0:0] out_lm1_gaussian_avm_read,
    output wire [0:0] out_lm1_gaussian_avm_write,
    output wire [31:0] out_lm1_gaussian_avm_writedata,
    output wire [3:0] out_lm1_gaussian_avm_byteenable,
    output wire [0:0] out_lm1_gaussian_avm_burstcount,
    output wire [0:0] out_c0_exe10137,
    output wire [0:0] out_c0_exe2129,
    output wire [0:0] out_c0_exe3130,
    output wire [0:0] out_c0_exe4131,
    output wire [0:0] out_c0_exe5132,
    output wire [31:0] out_c0_exe6133,
    output wire [31:0] out_c0_exe7134,
    output wire [31:0] out_c0_exe8135,
    output wire [0:0] out_c0_exe9136,
    output wire [0:0] out_valid_out,
    input wire [31:0] in_lm83_gaussian_avm_readdata,
    input wire [0:0] in_lm83_gaussian_avm_writeack,
    input wire [0:0] in_lm83_gaussian_avm_waitrequest,
    input wire [0:0] in_lm83_gaussian_avm_readdatavalid,
    output wire [31:0] out_lm62_gaussian_avm_address,
    output wire [0:0] out_lm62_gaussian_avm_enable,
    output wire [0:0] out_lm62_gaussian_avm_read,
    output wire [0:0] out_lm62_gaussian_avm_write,
    output wire [31:0] out_lm62_gaussian_avm_writedata,
    output wire [3:0] out_lm62_gaussian_avm_byteenable,
    output wire [0:0] out_lm62_gaussian_avm_burstcount,
    input wire [31:0] in_memdep_gaussian_avm_readdata,
    input wire [0:0] in_memdep_gaussian_avm_writeack,
    input wire [0:0] in_memdep_gaussian_avm_waitrequest,
    input wire [0:0] in_memdep_gaussian_avm_readdatavalid,
    output wire [31:0] out_lm83_gaussian_avm_address,
    output wire [0:0] out_lm83_gaussian_avm_enable,
    output wire [0:0] out_lm83_gaussian_avm_read,
    output wire [0:0] out_lm83_gaussian_avm_write,
    output wire [31:0] out_lm83_gaussian_avm_writedata,
    output wire [3:0] out_lm83_gaussian_avm_byteenable,
    output wire [0:0] out_lm83_gaussian_avm_burstcount,
    output wire [31:0] out_memdep_gaussian_avm_address,
    output wire [0:0] out_memdep_gaussian_avm_enable,
    output wire [0:0] out_memdep_gaussian_avm_read,
    output wire [0:0] out_memdep_gaussian_avm_write,
    output wire [31:0] out_memdep_gaussian_avm_writedata,
    output wire [3:0] out_memdep_gaussian_avm_byteenable,
    output wire [0:0] out_memdep_gaussian_avm_burstcount,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] gaussian_B7_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] gaussian_B7_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] gaussian_B7_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [31:0] gaussian_B7_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [31:0] gaussian_B7_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] gaussian_B7_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [32:0] gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [31:0] gaussian_B7_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [0:0] gaussian_B7_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [0:0] gaussian_B7_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [0:0] gaussian_B7_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [0:0] gaussian_B7_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [31:0] gaussian_B7_merge_reg_aunroll_x_out_data_out_11_tpl;
    wire [0:0] gaussian_B7_merge_reg_aunroll_x_out_data_out_12_tpl;
    wire [0:0] gaussian_B7_merge_reg_aunroll_x_out_data_out_13_tpl;
    wire [31:0] gaussian_B7_merge_reg_aunroll_x_out_data_out_14_tpl;
    wire [31:0] gaussian_B7_merge_reg_aunroll_x_out_data_out_15_tpl;
    wire [31:0] gaussian_B7_merge_reg_aunroll_x_out_data_out_16_tpl;
    wire [31:0] gaussian_B7_merge_reg_aunroll_x_out_data_out_17_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian6_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian6_exiting_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm1_gaussian_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm1_gaussian_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm1_gaussian_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm1_gaussian_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm1_gaussian_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm1_gaussian_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm1_gaussian_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm62_gaussian_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm62_gaussian_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm62_gaussian_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm62_gaussian_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm62_gaussian_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm62_gaussian_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm62_gaussian_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm83_gaussian_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm83_gaussian_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm83_gaussian_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm83_gaussian_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm83_gaussian_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm83_gaussian_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm83_gaussian_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_memdep_gaussian_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_memdep_gaussian_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_memdep_gaussian_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_memdep_gaussian_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_memdep_gaussian_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_memdep_gaussian_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_memdep_gaussian_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_c0_exit127_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_c0_exit127_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_c0_exit127_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_c0_exit127_5_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_c0_exit127_6_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_c0_exit127_7_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_c0_exit127_8_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_c0_exit127_9_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_c0_exit127_10_tpl;
    wire [328:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
    wire [31:0] bubble_select_stall_entry_i;
    wire [31:0] bubble_select_stall_entry_j;
    wire [31:0] bubble_select_stall_entry_k;
    wire [31:0] bubble_select_stall_entry_l;
    wire [31:0] bubble_select_stall_entry_m;
    wire [0:0] bubble_select_stall_entry_n;
    wire [0:0] bubble_select_stall_entry_o;
    wire [0:0] bubble_select_stall_entry_p;
    wire [0:0] bubble_select_stall_entry_q;
    wire [32:0] bubble_select_stall_entry_r;
    wire [0:0] bubble_select_stall_entry_s;
    wire [328:0] bubble_join_gaussian_B7_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_gaussian_B7_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_gaussian_B7_merge_reg_aunroll_x_c;
    wire [31:0] bubble_select_gaussian_B7_merge_reg_aunroll_x_d;
    wire [31:0] bubble_select_gaussian_B7_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_gaussian_B7_merge_reg_aunroll_x_f;
    wire [32:0] bubble_select_gaussian_B7_merge_reg_aunroll_x_g;
    wire [31:0] bubble_select_gaussian_B7_merge_reg_aunroll_x_h;
    wire [0:0] bubble_select_gaussian_B7_merge_reg_aunroll_x_i;
    wire [0:0] bubble_select_gaussian_B7_merge_reg_aunroll_x_j;
    wire [0:0] bubble_select_gaussian_B7_merge_reg_aunroll_x_k;
    wire [0:0] bubble_select_gaussian_B7_merge_reg_aunroll_x_l;
    wire [31:0] bubble_select_gaussian_B7_merge_reg_aunroll_x_m;
    wire [0:0] bubble_select_gaussian_B7_merge_reg_aunroll_x_n;
    wire [0:0] bubble_select_gaussian_B7_merge_reg_aunroll_x_o;
    wire [31:0] bubble_select_gaussian_B7_merge_reg_aunroll_x_p;
    wire [31:0] bubble_select_gaussian_B7_merge_reg_aunroll_x_q;
    wire [31:0] bubble_select_gaussian_B7_merge_reg_aunroll_x_r;
    wire [31:0] bubble_select_gaussian_B7_merge_reg_aunroll_x_s;
    wire [101:0] bubble_join_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_e;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_f;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_g;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_i;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_j;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_gaussian_B7_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_V0;


    // bubble_join_stall_entry(BITJOIN,30)
    assign bubble_join_stall_entry_q = {in_unnamed_gaussian6, in_unnamed_gaussian5, in_notcmp1762, in_memdep_phi_pop1064, in_memdep_phi4_pop72954, in_memdep_phi4_pop727_pop1165, in_j_01851, in_j_01834_pop1468, in_i_017_pop963, in_fpga_indvars_iv945, in_fpga_indvars_iv930_pop1266, in_fpga_indvars_iv748, in_fpga_indvars_iv732_pop1367, in_forked, in_cmp41660, in_cmp41638_pop1661, in_add57, in_add36_pop1569};

    // bubble_select_stall_entry(BITSELECT,31)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[63:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[64:64]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[65:65]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[66:66]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[98:67]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[130:99]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[162:131]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[194:163]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[226:195]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[258:227]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[290:259]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[291:291]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[292:292]);
    assign bubble_select_stall_entry_p = $unsigned(bubble_join_stall_entry_q[293:293]);
    assign bubble_select_stall_entry_q = $unsigned(bubble_join_stall_entry_q[294:294]);
    assign bubble_select_stall_entry_r = $unsigned(bubble_join_stall_entry_q[327:295]);
    assign bubble_select_stall_entry_s = $unsigned(bubble_join_stall_entry_q[328:328]);

    // SE_stall_entry(STALLENABLE,40)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = gaussian_B7_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // gaussian_B7_merge_reg_aunroll_x(BLACKBOX,27)@0
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
    gaussian_B7_merge_reg thegaussian_B7_merge_reg_aunroll_x (
        .in_stall_in(SE_out_gaussian_B7_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_f),
        .in_data_in_1_tpl(bubble_select_stall_entry_j),
        .in_data_in_2_tpl(bubble_select_stall_entry_h),
        .in_data_in_3_tpl(bubble_select_stall_entry_m),
        .in_data_in_4_tpl(bubble_select_stall_entry_o),
        .in_data_in_5_tpl(bubble_select_stall_entry_r),
        .in_data_in_6_tpl(bubble_select_stall_entry_c),
        .in_data_in_7_tpl(bubble_select_stall_entry_e),
        .in_data_in_8_tpl(bubble_select_stall_entry_d),
        .in_data_in_9_tpl(bubble_select_stall_entry_s),
        .in_data_in_10_tpl(bubble_select_stall_entry_q),
        .in_data_in_11_tpl(bubble_select_stall_entry_k),
        .in_data_in_12_tpl(bubble_select_stall_entry_p),
        .in_data_in_13_tpl(bubble_select_stall_entry_n),
        .in_data_in_14_tpl(bubble_select_stall_entry_i),
        .in_data_in_15_tpl(bubble_select_stall_entry_g),
        .in_data_in_16_tpl(bubble_select_stall_entry_l),
        .in_data_in_17_tpl(bubble_select_stall_entry_b),
        .out_stall_out(gaussian_B7_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(gaussian_B7_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(gaussian_B7_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(gaussian_B7_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(gaussian_B7_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(gaussian_B7_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(gaussian_B7_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(gaussian_B7_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(gaussian_B7_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(gaussian_B7_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(gaussian_B7_merge_reg_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(gaussian_B7_merge_reg_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(gaussian_B7_merge_reg_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(gaussian_B7_merge_reg_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(gaussian_B7_merge_reg_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(gaussian_B7_merge_reg_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(gaussian_B7_merge_reg_aunroll_x_out_data_out_16_tpl),
        .out_data_out_17_tpl(gaussian_B7_merge_reg_aunroll_x_out_data_out_17_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_gaussian_B7_merge_reg_aunroll_x(BITJOIN,34)
    assign bubble_join_gaussian_B7_merge_reg_aunroll_x_q = {gaussian_B7_merge_reg_aunroll_x_out_data_out_17_tpl, gaussian_B7_merge_reg_aunroll_x_out_data_out_16_tpl, gaussian_B7_merge_reg_aunroll_x_out_data_out_15_tpl, gaussian_B7_merge_reg_aunroll_x_out_data_out_14_tpl, gaussian_B7_merge_reg_aunroll_x_out_data_out_13_tpl, gaussian_B7_merge_reg_aunroll_x_out_data_out_12_tpl, gaussian_B7_merge_reg_aunroll_x_out_data_out_11_tpl, gaussian_B7_merge_reg_aunroll_x_out_data_out_10_tpl, gaussian_B7_merge_reg_aunroll_x_out_data_out_9_tpl, gaussian_B7_merge_reg_aunroll_x_out_data_out_8_tpl, gaussian_B7_merge_reg_aunroll_x_out_data_out_7_tpl, gaussian_B7_merge_reg_aunroll_x_out_data_out_6_tpl, gaussian_B7_merge_reg_aunroll_x_out_data_out_5_tpl, gaussian_B7_merge_reg_aunroll_x_out_data_out_4_tpl, gaussian_B7_merge_reg_aunroll_x_out_data_out_3_tpl, gaussian_B7_merge_reg_aunroll_x_out_data_out_2_tpl, gaussian_B7_merge_reg_aunroll_x_out_data_out_1_tpl, gaussian_B7_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_gaussian_B7_merge_reg_aunroll_x(BITSELECT,35)
    assign bubble_select_gaussian_B7_merge_reg_aunroll_x_b = $unsigned(bubble_join_gaussian_B7_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_gaussian_B7_merge_reg_aunroll_x_c = $unsigned(bubble_join_gaussian_B7_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_gaussian_B7_merge_reg_aunroll_x_d = $unsigned(bubble_join_gaussian_B7_merge_reg_aunroll_x_q[64:33]);
    assign bubble_select_gaussian_B7_merge_reg_aunroll_x_e = $unsigned(bubble_join_gaussian_B7_merge_reg_aunroll_x_q[96:65]);
    assign bubble_select_gaussian_B7_merge_reg_aunroll_x_f = $unsigned(bubble_join_gaussian_B7_merge_reg_aunroll_x_q[97:97]);
    assign bubble_select_gaussian_B7_merge_reg_aunroll_x_g = $unsigned(bubble_join_gaussian_B7_merge_reg_aunroll_x_q[130:98]);
    assign bubble_select_gaussian_B7_merge_reg_aunroll_x_h = $unsigned(bubble_join_gaussian_B7_merge_reg_aunroll_x_q[162:131]);
    assign bubble_select_gaussian_B7_merge_reg_aunroll_x_i = $unsigned(bubble_join_gaussian_B7_merge_reg_aunroll_x_q[163:163]);
    assign bubble_select_gaussian_B7_merge_reg_aunroll_x_j = $unsigned(bubble_join_gaussian_B7_merge_reg_aunroll_x_q[164:164]);
    assign bubble_select_gaussian_B7_merge_reg_aunroll_x_k = $unsigned(bubble_join_gaussian_B7_merge_reg_aunroll_x_q[165:165]);
    assign bubble_select_gaussian_B7_merge_reg_aunroll_x_l = $unsigned(bubble_join_gaussian_B7_merge_reg_aunroll_x_q[166:166]);
    assign bubble_select_gaussian_B7_merge_reg_aunroll_x_m = $unsigned(bubble_join_gaussian_B7_merge_reg_aunroll_x_q[198:167]);
    assign bubble_select_gaussian_B7_merge_reg_aunroll_x_n = $unsigned(bubble_join_gaussian_B7_merge_reg_aunroll_x_q[199:199]);
    assign bubble_select_gaussian_B7_merge_reg_aunroll_x_o = $unsigned(bubble_join_gaussian_B7_merge_reg_aunroll_x_q[200:200]);
    assign bubble_select_gaussian_B7_merge_reg_aunroll_x_p = $unsigned(bubble_join_gaussian_B7_merge_reg_aunroll_x_q[232:201]);
    assign bubble_select_gaussian_B7_merge_reg_aunroll_x_q = $unsigned(bubble_join_gaussian_B7_merge_reg_aunroll_x_q[264:233]);
    assign bubble_select_gaussian_B7_merge_reg_aunroll_x_r = $unsigned(bubble_join_gaussian_B7_merge_reg_aunroll_x_q[296:265]);
    assign bubble_select_gaussian_B7_merge_reg_aunroll_x_s = $unsigned(bubble_join_gaussian_B7_merge_reg_aunroll_x_q[328:297]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_gaussian_B7_merge_reg_aunroll_x(STALLENABLE,43)
    // Valid signal propagation
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_V0 = SE_out_gaussian_B7_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_o_stall | ~ (SE_out_gaussian_B7_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_gaussian_B7_merge_reg_aunroll_x_wireValid = gaussian_B7_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x(STALLENABLE,45)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x(BLACKBOX,28)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian6_exiting_valid_out@20000000
    // out out_lm1_gaussian_avm_address@20000000
    // out out_lm1_gaussian_avm_burstcount@20000000
    // out out_lm1_gaussian_avm_byteenable@20000000
    // out out_lm1_gaussian_avm_enable@20000000
    // out out_lm1_gaussian_avm_read@20000000
    // out out_lm1_gaussian_avm_write@20000000
    // out out_lm1_gaussian_avm_writedata@20000000
    // out out_lm62_gaussian_avm_address@20000000
    // out out_lm62_gaussian_avm_burstcount@20000000
    // out out_lm62_gaussian_avm_byteenable@20000000
    // out out_lm62_gaussian_avm_enable@20000000
    // out out_lm62_gaussian_avm_read@20000000
    // out out_lm62_gaussian_avm_write@20000000
    // out out_lm62_gaussian_avm_writedata@20000000
    // out out_lm83_gaussian_avm_address@20000000
    // out out_lm83_gaussian_avm_burstcount@20000000
    // out out_lm83_gaussian_avm_byteenable@20000000
    // out out_lm83_gaussian_avm_enable@20000000
    // out out_lm83_gaussian_avm_read@20000000
    // out out_lm83_gaussian_avm_write@20000000
    // out out_lm83_gaussian_avm_writedata@20000000
    // out out_memdep_gaussian_avm_address@20000000
    // out out_memdep_gaussian_avm_burstcount@20000000
    // out out_memdep_gaussian_avm_byteenable@20000000
    // out out_memdep_gaussian_avm_enable@20000000
    // out out_memdep_gaussian_avm_read@20000000
    // out out_memdep_gaussian_avm_write@20000000
    // out out_memdep_gaussian_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@13
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit127_0_tpl@13
    // out out_c0_exit127_1_tpl@13
    // out out_c0_exit127_2_tpl@13
    // out out_c0_exit127_3_tpl@13
    // out out_c0_exit127_4_tpl@13
    // out out_c0_exit127_5_tpl@13
    // out out_c0_exit127_6_tpl@13
    // out out_c0_exit127_7_tpl@13
    // out out_c0_exit127_8_tpl@13
    // out out_c0_exit127_9_tpl@13
    // out out_c0_exit127_10_tpl@13
    // out out_c0_exit127_11_tpl@13
    // out out_c0_exit127_12_tpl@13
    // out out_c0_exit127_13_tpl@13
    // out out_c0_exit127_14_tpl@13
    // out out_c0_exit127_15_tpl@13
    // out out_c0_exit127_16_tpl@13
    // out out_c0_exit127_17_tpl@13
    gaussian_i_sfc_s_c0_in_for_body10_s_c0_enter10118_gaussian1 thei_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_backStall),
        .in_i_valid(SE_out_gaussian_B7_merge_reg_aunroll_x_V0),
        .in_lm1_gaussian_avm_readdata(in_lm1_gaussian_avm_readdata),
        .in_lm1_gaussian_avm_readdatavalid(in_lm1_gaussian_avm_readdatavalid),
        .in_lm1_gaussian_avm_waitrequest(in_lm1_gaussian_avm_waitrequest),
        .in_lm1_gaussian_avm_writeack(in_lm1_gaussian_avm_writeack),
        .in_lm62_gaussian_avm_readdata(in_lm62_gaussian_avm_readdata),
        .in_lm62_gaussian_avm_readdatavalid(in_lm62_gaussian_avm_readdatavalid),
        .in_lm62_gaussian_avm_waitrequest(in_lm62_gaussian_avm_waitrequest),
        .in_lm62_gaussian_avm_writeack(in_lm62_gaussian_avm_writeack),
        .in_lm83_gaussian_avm_readdata(in_lm83_gaussian_avm_readdata),
        .in_lm83_gaussian_avm_readdatavalid(in_lm83_gaussian_avm_readdatavalid),
        .in_lm83_gaussian_avm_waitrequest(in_lm83_gaussian_avm_waitrequest),
        .in_lm83_gaussian_avm_writeack(in_lm83_gaussian_avm_writeack),
        .in_memdep_gaussian_avm_readdata(in_memdep_gaussian_avm_readdata),
        .in_memdep_gaussian_avm_readdatavalid(in_memdep_gaussian_avm_readdatavalid),
        .in_memdep_gaussian_avm_waitrequest(in_memdep_gaussian_avm_waitrequest),
        .in_memdep_gaussian_avm_writeack(in_memdep_gaussian_avm_writeack),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni18_0_tpl(GND_q),
        .in_c0_eni18_1_tpl(bubble_select_gaussian_B7_merge_reg_aunroll_x_b),
        .in_c0_eni18_2_tpl(bubble_select_gaussian_B7_merge_reg_aunroll_x_m),
        .in_c0_eni18_3_tpl(bubble_select_gaussian_B7_merge_reg_aunroll_x_j),
        .in_c0_eni18_4_tpl(bubble_select_gaussian_B7_merge_reg_aunroll_x_r),
        .in_c0_eni18_5_tpl(bubble_select_gaussian_B7_merge_reg_aunroll_x_o),
        .in_c0_eni18_6_tpl(bubble_select_gaussian_B7_merge_reg_aunroll_x_n),
        .in_c0_eni18_7_tpl(bubble_select_gaussian_B7_merge_reg_aunroll_x_p),
        .in_c0_eni18_8_tpl(bubble_select_gaussian_B7_merge_reg_aunroll_x_q),
        .in_c0_eni18_9_tpl(bubble_select_gaussian_B7_merge_reg_aunroll_x_s),
        .in_c0_eni18_10_tpl(bubble_select_gaussian_B7_merge_reg_aunroll_x_k),
        .in_c0_eni18_11_tpl(bubble_select_gaussian_B7_merge_reg_aunroll_x_l),
        .in_c0_eni18_12_tpl(bubble_select_gaussian_B7_merge_reg_aunroll_x_c),
        .in_c0_eni18_13_tpl(bubble_select_gaussian_B7_merge_reg_aunroll_x_d),
        .in_c0_eni18_14_tpl(bubble_select_gaussian_B7_merge_reg_aunroll_x_e),
        .in_c0_eni18_15_tpl(bubble_select_gaussian_B7_merge_reg_aunroll_x_f),
        .in_c0_eni18_16_tpl(bubble_select_gaussian_B7_merge_reg_aunroll_x_g),
        .in_c0_eni18_17_tpl(bubble_select_gaussian_B7_merge_reg_aunroll_x_h),
        .in_c0_eni18_18_tpl(bubble_select_gaussian_B7_merge_reg_aunroll_x_i),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian6_exiting_stall_out(i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian6_exiting_valid_out(i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian6_exiting_valid_out),
        .out_lm1_gaussian_avm_address(i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm1_gaussian_avm_address),
        .out_lm1_gaussian_avm_burstcount(i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm1_gaussian_avm_burstcount),
        .out_lm1_gaussian_avm_byteenable(i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm1_gaussian_avm_byteenable),
        .out_lm1_gaussian_avm_enable(i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm1_gaussian_avm_enable),
        .out_lm1_gaussian_avm_read(i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm1_gaussian_avm_read),
        .out_lm1_gaussian_avm_write(i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm1_gaussian_avm_write),
        .out_lm1_gaussian_avm_writedata(i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm1_gaussian_avm_writedata),
        .out_lm62_gaussian_avm_address(i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm62_gaussian_avm_address),
        .out_lm62_gaussian_avm_burstcount(i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm62_gaussian_avm_burstcount),
        .out_lm62_gaussian_avm_byteenable(i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm62_gaussian_avm_byteenable),
        .out_lm62_gaussian_avm_enable(i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm62_gaussian_avm_enable),
        .out_lm62_gaussian_avm_read(i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm62_gaussian_avm_read),
        .out_lm62_gaussian_avm_write(i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm62_gaussian_avm_write),
        .out_lm62_gaussian_avm_writedata(i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm62_gaussian_avm_writedata),
        .out_lm83_gaussian_avm_address(i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm83_gaussian_avm_address),
        .out_lm83_gaussian_avm_burstcount(i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm83_gaussian_avm_burstcount),
        .out_lm83_gaussian_avm_byteenable(i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm83_gaussian_avm_byteenable),
        .out_lm83_gaussian_avm_enable(i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm83_gaussian_avm_enable),
        .out_lm83_gaussian_avm_read(i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm83_gaussian_avm_read),
        .out_lm83_gaussian_avm_write(i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm83_gaussian_avm_write),
        .out_lm83_gaussian_avm_writedata(i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm83_gaussian_avm_writedata),
        .out_memdep_gaussian_avm_address(i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_memdep_gaussian_avm_address),
        .out_memdep_gaussian_avm_burstcount(i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_memdep_gaussian_avm_burstcount),
        .out_memdep_gaussian_avm_byteenable(i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_memdep_gaussian_avm_byteenable),
        .out_memdep_gaussian_avm_enable(i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_memdep_gaussian_avm_enable),
        .out_memdep_gaussian_avm_read(i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_memdep_gaussian_avm_read),
        .out_memdep_gaussian_avm_write(i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_memdep_gaussian_avm_write),
        .out_memdep_gaussian_avm_writedata(i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_memdep_gaussian_avm_writedata),
        .out_o_stall(i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit127_0_tpl(),
        .out_c0_exit127_1_tpl(),
        .out_c0_exit127_2_tpl(i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_c0_exit127_2_tpl),
        .out_c0_exit127_3_tpl(i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_c0_exit127_3_tpl),
        .out_c0_exit127_4_tpl(i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_c0_exit127_4_tpl),
        .out_c0_exit127_5_tpl(i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_c0_exit127_5_tpl),
        .out_c0_exit127_6_tpl(i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_c0_exit127_6_tpl),
        .out_c0_exit127_7_tpl(i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_c0_exit127_7_tpl),
        .out_c0_exit127_8_tpl(i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_c0_exit127_8_tpl),
        .out_c0_exit127_9_tpl(i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_c0_exit127_9_tpl),
        .out_c0_exit127_10_tpl(i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_c0_exit127_10_tpl),
        .out_c0_exit127_11_tpl(),
        .out_c0_exit127_12_tpl(),
        .out_c0_exit127_13_tpl(),
        .out_c0_exit127_14_tpl(),
        .out_c0_exit127_15_tpl(),
        .out_c0_exit127_16_tpl(),
        .out_c0_exit127_17_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian6_exiting_valid_out = i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian6_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian6_exiting_stall_out = i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian6_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,12)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,17)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,20)
    assign out_lm1_gaussian_avm_address = i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm1_gaussian_avm_address;
    assign out_lm1_gaussian_avm_enable = i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm1_gaussian_avm_enable;
    assign out_lm1_gaussian_avm_read = i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm1_gaussian_avm_read;
    assign out_lm1_gaussian_avm_write = i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm1_gaussian_avm_write;
    assign out_lm1_gaussian_avm_writedata = i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm1_gaussian_avm_writedata;
    assign out_lm1_gaussian_avm_byteenable = i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm1_gaussian_avm_byteenable;
    assign out_lm1_gaussian_avm_burstcount = i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm1_gaussian_avm_burstcount;

    // bubble_join_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x(BITJOIN,38)
    assign bubble_join_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_q = {i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_c0_exit127_10_tpl, i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_c0_exit127_9_tpl, i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_c0_exit127_8_tpl, i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_c0_exit127_7_tpl, i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_c0_exit127_6_tpl, i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_c0_exit127_5_tpl, i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_c0_exit127_4_tpl, i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_c0_exit127_3_tpl, i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_c0_exit127_2_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x(BITSELECT,39)
    assign bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_q[2:2]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_q[3:3]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_q[35:4]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_q[67:36]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_q[99:68]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_q[100:100]);
    assign bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_q[101:101]);

    // dupName_0_sync_out_x(GPOUT,21)@13
    assign out_c0_exe10137 = bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_j;
    assign out_c0_exe2129 = bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_b;
    assign out_c0_exe3130 = bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_c;
    assign out_c0_exe4131 = bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_d;
    assign out_c0_exe5132 = bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_e;
    assign out_c0_exe6133 = bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_f;
    assign out_c0_exe7134 = bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_g;
    assign out_c0_exe8135 = bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_h;
    assign out_c0_exe9136 = bubble_select_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_i;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,23)
    assign out_lm62_gaussian_avm_address = i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm62_gaussian_avm_address;
    assign out_lm62_gaussian_avm_enable = i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm62_gaussian_avm_enable;
    assign out_lm62_gaussian_avm_read = i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm62_gaussian_avm_read;
    assign out_lm62_gaussian_avm_write = i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm62_gaussian_avm_write;
    assign out_lm62_gaussian_avm_writedata = i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm62_gaussian_avm_writedata;
    assign out_lm62_gaussian_avm_byteenable = i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm62_gaussian_avm_byteenable;
    assign out_lm62_gaussian_avm_burstcount = i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm62_gaussian_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,25)
    assign out_lm83_gaussian_avm_address = i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm83_gaussian_avm_address;
    assign out_lm83_gaussian_avm_enable = i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm83_gaussian_avm_enable;
    assign out_lm83_gaussian_avm_read = i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm83_gaussian_avm_read;
    assign out_lm83_gaussian_avm_write = i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm83_gaussian_avm_write;
    assign out_lm83_gaussian_avm_writedata = i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm83_gaussian_avm_writedata;
    assign out_lm83_gaussian_avm_byteenable = i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm83_gaussian_avm_byteenable;
    assign out_lm83_gaussian_avm_burstcount = i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_lm83_gaussian_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,26)
    assign out_memdep_gaussian_avm_address = i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_memdep_gaussian_avm_address;
    assign out_memdep_gaussian_avm_enable = i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_memdep_gaussian_avm_enable;
    assign out_memdep_gaussian_avm_read = i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_memdep_gaussian_avm_read;
    assign out_memdep_gaussian_avm_write = i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_memdep_gaussian_avm_write;
    assign out_memdep_gaussian_avm_writedata = i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_memdep_gaussian_avm_writedata;
    assign out_memdep_gaussian_avm_byteenable = i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_memdep_gaussian_avm_byteenable;
    assign out_memdep_gaussian_avm_burstcount = i_sfc_s_c0_in_for_body10_gaussians_c0_enter10118_gaussian1_aunroll_x_out_memdep_gaussian_avm_burstcount;

endmodule
