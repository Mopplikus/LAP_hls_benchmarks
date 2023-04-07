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

// SystemVerilog created from bb_kernel_3mm_B6_stall_region
// Created for function/kernel kernel_3mm
// SystemVerilog created on Fri Apr  7 18:25:08 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_bb_B6_stall_region (
    input wire [31:0] in_unnamed_kernel_3mm8_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm8_kernel_3mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_3mm8_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm8_kernel_3mm_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [63:0] in_arrayidx444236,
    input wire [0:0] in_forked37,
    input wire [0:0] in_forked81135,
    input wire [0:0] in_forked8183_pop24179,
    input wire [0:0] in_forked8185_pop51218,
    input wire [31:0] in_i_060_pop23109_pop56228,
    input wire [31:0] in_i_060_pop23169,
    input wire [63:0] in_idxprom11121_pop59215,
    input wire [63:0] in_idxprom119_pop58213,
    input wire [0:0] in_memdep_235,
    input wire [0:0] in_memdep_phi2_pop18149,
    input wire [0:0] in_memdep_phi2_pop1891_pop26189,
    input wire [0:0] in_memdep_phi2_pop1893_pop53222,
    input wire [0:0] in_memdep_phi3_pop19156,
    input wire [0:0] in_memdep_phi3_pop1995_pop27194,
    input wire [0:0] in_memdep_phi3_pop1997_pop54224,
    input wire [0:0] in_memdep_phi5_pop20101_pop55226,
    input wire [0:0] in_memdep_phi5_pop20163,
    input wire [0:0] in_memdep_phi5_pop2099_pop28199,
    input wire [0:0] in_memdep_phi_pop17142,
    input wire [0:0] in_memdep_phi_pop1787_pop25184,
    input wire [0:0] in_memdep_phi_pop1789_pop52220,
    input wire [0:0] in_notcmp68124_pop61233,
    input wire [0:0] in_notcmp73112_pop57230,
    input wire [0:0] in_notcmp73174,
    input wire [31:0] in_unnamed_kernel_3mm7,
    input wire [0:0] in_valid_in,
    input wire [31:0] in_unnamed_kernel_3mm9_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm9_kernel_3mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_3mm9_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm9_kernel_3mm_avm_readdatavalid,
    output wire [31:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount,
    output wire [31:0] out_c0_exe2497,
    output wire [0:0] out_c0_exe3498,
    output wire [0:0] out_c0_exe4499,
    output wire [0:0] out_c0_exe5500,
    output wire [0:0] out_c0_exe6501,
    output wire [0:0] out_c0_exe7502,
    output wire [63:0] out_c0_exe9504,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_pipeline_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm8_kernel_3mm_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm8_kernel_3mm_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm8_kernel_3mm_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm8_kernel_3mm_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm9_kernel_3mm_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm9_kernel_3mm_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm9_kernel_3mm_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm9_kernel_3mm_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_c0_exit495_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_c0_exit495_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_c0_exit495_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_c0_exit495_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_c0_exit495_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_c0_exit495_7_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_c0_exit495_9_tpl;
    wire [0:0] kernel_3mm_B6_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] kernel_3mm_B6_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [0:0] kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [31:0] kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [0:0] kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [0:0] kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [0:0] kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [0:0] kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [0:0] kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_11_tpl;
    wire [0:0] kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_12_tpl;
    wire [63:0] kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_13_tpl;
    wire [63:0] kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_14_tpl;
    wire [0:0] kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_15_tpl;
    wire [0:0] kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_16_tpl;
    wire [0:0] kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_17_tpl;
    wire [0:0] kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_18_tpl;
    wire [0:0] kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_19_tpl;
    wire [31:0] kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_20_tpl;
    wire [0:0] kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_21_tpl;
    wire [0:0] kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_22_tpl;
    wire [0:0] kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_23_tpl;
    wire [63:0] kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_24_tpl;
    wire [31:0] kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_25_tpl;
    wire [307:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
    wire [63:0] bubble_select_stall_entry_i;
    wire [63:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_select_stall_entry_k;
    wire [0:0] bubble_select_stall_entry_l;
    wire [0:0] bubble_select_stall_entry_m;
    wire [0:0] bubble_select_stall_entry_n;
    wire [0:0] bubble_select_stall_entry_o;
    wire [0:0] bubble_select_stall_entry_p;
    wire [0:0] bubble_select_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_r;
    wire [0:0] bubble_select_stall_entry_s;
    wire [0:0] bubble_select_stall_entry_t;
    wire [0:0] bubble_select_stall_entry_u;
    wire [0:0] bubble_select_stall_entry_v;
    wire [0:0] bubble_select_stall_entry_w;
    wire [0:0] bubble_select_stall_entry_x;
    wire [0:0] bubble_select_stall_entry_y;
    wire [0:0] bubble_select_stall_entry_z;
    wire [31:0] bubble_select_stall_entry_aa;
    wire [100:0] bubble_join_i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_g;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_h;
    wire [307:0] bubble_join_kernel_3mm_B6_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_b;
    wire [0:0] bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_d;
    wire [0:0] bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_f;
    wire [0:0] bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_g;
    wire [31:0] bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_h;
    wire [0:0] bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_i;
    wire [0:0] bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_j;
    wire [0:0] bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_k;
    wire [0:0] bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_l;
    wire [0:0] bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_m;
    wire [0:0] bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_n;
    wire [63:0] bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_o;
    wire [63:0] bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_p;
    wire [0:0] bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_r;
    wire [0:0] bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_s;
    wire [0:0] bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_t;
    wire [0:0] bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_u;
    wire [31:0] bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_v;
    wire [0:0] bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_w;
    wire [0:0] bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_x;
    wire [0:0] bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_y;
    wire [63:0] bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_z;
    wire [31:0] bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_aa;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_V0;
    wire [0:0] SE_out_kernel_3mm_B6_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_kernel_3mm_B6_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_kernel_3mm_B6_merge_reg_aunroll_x_V0;


    // bubble_join_stall_entry(BITJOIN,26)
    assign bubble_join_stall_entry_q = {in_unnamed_kernel_3mm7, in_notcmp73174, in_notcmp73112_pop57230, in_notcmp68124_pop61233, in_memdep_phi_pop1789_pop52220, in_memdep_phi_pop1787_pop25184, in_memdep_phi_pop17142, in_memdep_phi5_pop2099_pop28199, in_memdep_phi5_pop20163, in_memdep_phi5_pop20101_pop55226, in_memdep_phi3_pop1997_pop54224, in_memdep_phi3_pop1995_pop27194, in_memdep_phi3_pop19156, in_memdep_phi2_pop1893_pop53222, in_memdep_phi2_pop1891_pop26189, in_memdep_phi2_pop18149, in_memdep_235, in_idxprom119_pop58213, in_idxprom11121_pop59215, in_i_060_pop23169, in_i_060_pop23109_pop56228, in_forked8185_pop51218, in_forked8183_pop24179, in_forked81135, in_forked37, in_arrayidx444236};

    // bubble_select_stall_entry(BITSELECT,27)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[63:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[64:64]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[65:65]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[66:66]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[67:67]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[99:68]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[131:100]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[195:132]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[259:196]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[260:260]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[261:261]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[262:262]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[263:263]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[264:264]);
    assign bubble_select_stall_entry_p = $unsigned(bubble_join_stall_entry_q[265:265]);
    assign bubble_select_stall_entry_q = $unsigned(bubble_join_stall_entry_q[266:266]);
    assign bubble_select_stall_entry_r = $unsigned(bubble_join_stall_entry_q[267:267]);
    assign bubble_select_stall_entry_s = $unsigned(bubble_join_stall_entry_q[268:268]);
    assign bubble_select_stall_entry_t = $unsigned(bubble_join_stall_entry_q[269:269]);
    assign bubble_select_stall_entry_u = $unsigned(bubble_join_stall_entry_q[270:270]);
    assign bubble_select_stall_entry_v = $unsigned(bubble_join_stall_entry_q[271:271]);
    assign bubble_select_stall_entry_w = $unsigned(bubble_join_stall_entry_q[272:272]);
    assign bubble_select_stall_entry_x = $unsigned(bubble_join_stall_entry_q[273:273]);
    assign bubble_select_stall_entry_y = $unsigned(bubble_join_stall_entry_q[274:274]);
    assign bubble_select_stall_entry_z = $unsigned(bubble_join_stall_entry_q[275:275]);
    assign bubble_select_stall_entry_aa = $unsigned(bubble_join_stall_entry_q[307:276]);

    // SE_stall_entry(STALLENABLE,36)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = kernel_3mm_B6_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // kernel_3mm_B6_merge_reg_aunroll_x(BLACKBOX,24)@0
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
    // out out_data_out_19_tpl@1
    // out out_data_out_20_tpl@1
    // out out_data_out_21_tpl@1
    // out out_data_out_22_tpl@1
    // out out_data_out_23_tpl@1
    // out out_data_out_24_tpl@1
    // out out_data_out_25_tpl@1
    kernel_3mm_B6_merge_reg thekernel_3mm_B6_merge_reg_aunroll_x (
        .in_stall_in(SE_out_kernel_3mm_B6_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_c),
        .in_data_in_1_tpl(bubble_select_stall_entry_d),
        .in_data_in_2_tpl(bubble_select_stall_entry_u),
        .in_data_in_3_tpl(bubble_select_stall_entry_l),
        .in_data_in_4_tpl(bubble_select_stall_entry_o),
        .in_data_in_5_tpl(bubble_select_stall_entry_s),
        .in_data_in_6_tpl(bubble_select_stall_entry_h),
        .in_data_in_7_tpl(bubble_select_stall_entry_z),
        .in_data_in_8_tpl(bubble_select_stall_entry_e),
        .in_data_in_9_tpl(bubble_select_stall_entry_v),
        .in_data_in_10_tpl(bubble_select_stall_entry_m),
        .in_data_in_11_tpl(bubble_select_stall_entry_p),
        .in_data_in_12_tpl(bubble_select_stall_entry_t),
        .in_data_in_13_tpl(bubble_select_stall_entry_j),
        .in_data_in_14_tpl(bubble_select_stall_entry_i),
        .in_data_in_15_tpl(bubble_select_stall_entry_f),
        .in_data_in_16_tpl(bubble_select_stall_entry_w),
        .in_data_in_17_tpl(bubble_select_stall_entry_n),
        .in_data_in_18_tpl(bubble_select_stall_entry_q),
        .in_data_in_19_tpl(bubble_select_stall_entry_r),
        .in_data_in_20_tpl(bubble_select_stall_entry_g),
        .in_data_in_21_tpl(bubble_select_stall_entry_y),
        .in_data_in_22_tpl(bubble_select_stall_entry_x),
        .in_data_in_23_tpl(bubble_select_stall_entry_k),
        .in_data_in_24_tpl(bubble_select_stall_entry_b),
        .in_data_in_25_tpl(bubble_select_stall_entry_aa),
        .out_stall_out(kernel_3mm_B6_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(kernel_3mm_B6_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_16_tpl),
        .out_data_out_17_tpl(kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_17_tpl),
        .out_data_out_18_tpl(kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_18_tpl),
        .out_data_out_19_tpl(kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_19_tpl),
        .out_data_out_20_tpl(kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_20_tpl),
        .out_data_out_21_tpl(kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_21_tpl),
        .out_data_out_22_tpl(kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_22_tpl),
        .out_data_out_23_tpl(kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_23_tpl),
        .out_data_out_24_tpl(kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_24_tpl),
        .out_data_out_25_tpl(kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_25_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_kernel_3mm_B6_merge_reg_aunroll_x(BITJOIN,33)
    assign bubble_join_kernel_3mm_B6_merge_reg_aunroll_x_q = {kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_25_tpl, kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_24_tpl, kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_23_tpl, kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_22_tpl, kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_21_tpl, kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_20_tpl, kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_19_tpl, kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_18_tpl, kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_17_tpl, kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_16_tpl, kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_15_tpl, kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_14_tpl, kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_13_tpl, kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_12_tpl, kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_11_tpl, kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_10_tpl, kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_9_tpl, kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_8_tpl, kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_7_tpl, kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_6_tpl, kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_5_tpl, kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_4_tpl, kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_3_tpl, kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_2_tpl, kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_1_tpl, kernel_3mm_B6_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_kernel_3mm_B6_merge_reg_aunroll_x(BITSELECT,34)
    assign bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_b = $unsigned(bubble_join_kernel_3mm_B6_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_c = $unsigned(bubble_join_kernel_3mm_B6_merge_reg_aunroll_x_q[1:1]);
    assign bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_d = $unsigned(bubble_join_kernel_3mm_B6_merge_reg_aunroll_x_q[2:2]);
    assign bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_e = $unsigned(bubble_join_kernel_3mm_B6_merge_reg_aunroll_x_q[3:3]);
    assign bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_f = $unsigned(bubble_join_kernel_3mm_B6_merge_reg_aunroll_x_q[4:4]);
    assign bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_g = $unsigned(bubble_join_kernel_3mm_B6_merge_reg_aunroll_x_q[5:5]);
    assign bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_h = $unsigned(bubble_join_kernel_3mm_B6_merge_reg_aunroll_x_q[37:6]);
    assign bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_i = $unsigned(bubble_join_kernel_3mm_B6_merge_reg_aunroll_x_q[38:38]);
    assign bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_j = $unsigned(bubble_join_kernel_3mm_B6_merge_reg_aunroll_x_q[39:39]);
    assign bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_k = $unsigned(bubble_join_kernel_3mm_B6_merge_reg_aunroll_x_q[40:40]);
    assign bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_l = $unsigned(bubble_join_kernel_3mm_B6_merge_reg_aunroll_x_q[41:41]);
    assign bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_m = $unsigned(bubble_join_kernel_3mm_B6_merge_reg_aunroll_x_q[42:42]);
    assign bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_n = $unsigned(bubble_join_kernel_3mm_B6_merge_reg_aunroll_x_q[43:43]);
    assign bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_o = $unsigned(bubble_join_kernel_3mm_B6_merge_reg_aunroll_x_q[107:44]);
    assign bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_p = $unsigned(bubble_join_kernel_3mm_B6_merge_reg_aunroll_x_q[171:108]);
    assign bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_q = $unsigned(bubble_join_kernel_3mm_B6_merge_reg_aunroll_x_q[172:172]);
    assign bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_r = $unsigned(bubble_join_kernel_3mm_B6_merge_reg_aunroll_x_q[173:173]);
    assign bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_s = $unsigned(bubble_join_kernel_3mm_B6_merge_reg_aunroll_x_q[174:174]);
    assign bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_t = $unsigned(bubble_join_kernel_3mm_B6_merge_reg_aunroll_x_q[175:175]);
    assign bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_u = $unsigned(bubble_join_kernel_3mm_B6_merge_reg_aunroll_x_q[176:176]);
    assign bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_v = $unsigned(bubble_join_kernel_3mm_B6_merge_reg_aunroll_x_q[208:177]);
    assign bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_w = $unsigned(bubble_join_kernel_3mm_B6_merge_reg_aunroll_x_q[209:209]);
    assign bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_x = $unsigned(bubble_join_kernel_3mm_B6_merge_reg_aunroll_x_q[210:210]);
    assign bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_y = $unsigned(bubble_join_kernel_3mm_B6_merge_reg_aunroll_x_q[211:211]);
    assign bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_z = $unsigned(bubble_join_kernel_3mm_B6_merge_reg_aunroll_x_q[275:212]);
    assign bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_aa = $unsigned(bubble_join_kernel_3mm_B6_merge_reg_aunroll_x_q[307:276]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_kernel_3mm_B6_merge_reg_aunroll_x(STALLENABLE,41)
    // Valid signal propagation
    assign SE_out_kernel_3mm_B6_merge_reg_aunroll_x_V0 = SE_out_kernel_3mm_B6_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_kernel_3mm_B6_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_o_stall | ~ (SE_out_kernel_3mm_B6_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_kernel_3mm_B6_merge_reg_aunroll_x_wireValid = kernel_3mm_B6_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x(STALLENABLE,39)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x(BLACKBOX,23)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@14
    // out out_pipeline_valid_out@20000000
    // out out_unnamed_kernel_3mm8_kernel_3mm_avm_address@20000000
    // out out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount@20000000
    // out out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable@20000000
    // out out_unnamed_kernel_3mm8_kernel_3mm_avm_enable@20000000
    // out out_unnamed_kernel_3mm8_kernel_3mm_avm_read@20000000
    // out out_unnamed_kernel_3mm8_kernel_3mm_avm_write@20000000
    // out out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata@20000000
    // out out_unnamed_kernel_3mm9_kernel_3mm_avm_address@20000000
    // out out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount@20000000
    // out out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable@20000000
    // out out_unnamed_kernel_3mm9_kernel_3mm_avm_enable@20000000
    // out out_unnamed_kernel_3mm9_kernel_3mm_avm_read@20000000
    // out out_unnamed_kernel_3mm9_kernel_3mm_avm_write@20000000
    // out out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata@20000000
    // out out_c0_exit495_0_tpl@14
    // out out_c0_exit495_1_tpl@14
    // out out_c0_exit495_2_tpl@14
    // out out_c0_exit495_3_tpl@14
    // out out_c0_exit495_4_tpl@14
    // out out_c0_exit495_5_tpl@14
    // out out_c0_exit495_6_tpl@14
    // out out_c0_exit495_7_tpl@14
    // out out_c0_exit495_8_tpl@14
    // out out_c0_exit495_9_tpl@14
    // out out_c0_exit495_10_tpl@14
    // out out_c0_exit495_11_tpl@14
    // out out_c0_exit495_12_tpl@14
    // out out_c0_exit495_13_tpl@14
    // out out_c0_exit495_14_tpl@14
    // out out_c0_exit495_15_tpl@14
    // out out_c0_exit495_16_tpl@14
    // out out_c0_exit495_17_tpl@14
    // out out_c0_exit495_18_tpl@14
    // out out_c0_exit495_19_tpl@14
    // out out_c0_exit495_20_tpl@14
    // out out_c0_exit495_21_tpl@14
    kernel_3mm_i_sfc_s_c0_in_for_body47_s_c0_enter44852_kernel_3mm1 thei_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_backStall),
        .in_i_valid(SE_out_kernel_3mm_B6_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_unnamed_kernel_3mm8_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm8_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm8_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm8_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm8_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm8_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm8_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm8_kernel_3mm_avm_writeack),
        .in_unnamed_kernel_3mm9_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm9_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm9_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm9_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm9_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm9_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm9_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm9_kernel_3mm_avm_writeack),
        .in_c0_eni26_0_tpl(GND_q),
        .in_c0_eni26_1_tpl(bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_b),
        .in_c0_eni26_2_tpl(bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_o),
        .in_c0_eni26_3_tpl(bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_p),
        .in_c0_eni26_4_tpl(bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_aa),
        .in_c0_eni26_5_tpl(bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_q),
        .in_c0_eni26_6_tpl(bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_r),
        .in_c0_eni26_7_tpl(bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_s),
        .in_c0_eni26_8_tpl(bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_t),
        .in_c0_eni26_9_tpl(bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_u),
        .in_c0_eni26_10_tpl(bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_v),
        .in_c0_eni26_11_tpl(bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_w),
        .in_c0_eni26_12_tpl(bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_x),
        .in_c0_eni26_13_tpl(bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_y),
        .in_c0_eni26_14_tpl(bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_z),
        .in_c0_eni26_15_tpl(bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_c),
        .in_c0_eni26_16_tpl(bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_d),
        .in_c0_eni26_17_tpl(bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_e),
        .in_c0_eni26_18_tpl(bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_f),
        .in_c0_eni26_19_tpl(bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_g),
        .in_c0_eni26_20_tpl(bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_h),
        .in_c0_eni26_21_tpl(bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_i),
        .in_c0_eni26_22_tpl(bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_j),
        .in_c0_eni26_23_tpl(bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_k),
        .in_c0_eni26_24_tpl(bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_l),
        .in_c0_eni26_25_tpl(bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_m),
        .in_c0_eni26_26_tpl(bubble_select_kernel_3mm_B6_merge_reg_aunroll_x_n),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_exiting_stall_out(i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_exiting_valid_out(i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_pipeline_valid_out),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_address(i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm8_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount(i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable(i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_enable(i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm8_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_read(i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm8_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_write(i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm8_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata(i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_address(i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm9_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount(i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable(i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_enable(i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm9_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_read(i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm9_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_write(i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm9_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata(i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata),
        .out_c0_exit495_0_tpl(),
        .out_c0_exit495_1_tpl(),
        .out_c0_exit495_2_tpl(i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_c0_exit495_2_tpl),
        .out_c0_exit495_3_tpl(i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_c0_exit495_3_tpl),
        .out_c0_exit495_4_tpl(i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_c0_exit495_4_tpl),
        .out_c0_exit495_5_tpl(i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_c0_exit495_5_tpl),
        .out_c0_exit495_6_tpl(i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_c0_exit495_6_tpl),
        .out_c0_exit495_7_tpl(i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_c0_exit495_7_tpl),
        .out_c0_exit495_8_tpl(),
        .out_c0_exit495_9_tpl(i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_c0_exit495_9_tpl),
        .out_c0_exit495_10_tpl(),
        .out_c0_exit495_11_tpl(),
        .out_c0_exit495_12_tpl(),
        .out_c0_exit495_13_tpl(),
        .out_c0_exit495_14_tpl(),
        .out_c0_exit495_15_tpl(),
        .out_c0_exit495_16_tpl(),
        .out_c0_exit495_17_tpl(),
        .out_c0_exit495_18_tpl(),
        .out_c0_exit495_19_tpl(),
        .out_c0_exit495_20_tpl(),
        .out_c0_exit495_21_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_exiting_valid_out = i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_exiting_stall_out = i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,12)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,17)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,20)
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_address = i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm8_kernel_3mm_avm_address;
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_enable = i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm8_kernel_3mm_avm_enable;
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_read = i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm8_kernel_3mm_avm_read;
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_write = i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm8_kernel_3mm_avm_write;
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata = i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata;
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable = i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable;
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount = i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount;

    // bubble_join_i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x(BITJOIN,30)
    assign bubble_join_i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_q = {i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_c0_exit495_9_tpl, i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_c0_exit495_7_tpl, i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_c0_exit495_6_tpl, i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_c0_exit495_5_tpl, i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_c0_exit495_4_tpl, i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_c0_exit495_3_tpl, i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_c0_exit495_2_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x(BITSELECT,31)
    assign bubble_select_i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_q[31:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_q[32:32]);
    assign bubble_select_i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_q[33:33]);
    assign bubble_select_i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_q[34:34]);
    assign bubble_select_i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_q[35:35]);
    assign bubble_select_i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_q[36:36]);
    assign bubble_select_i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_q[100:37]);

    // dupName_0_sync_out_x(GPOUT,21)@14
    assign out_c0_exe2497 = bubble_select_i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_b;
    assign out_c0_exe3498 = bubble_select_i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_c;
    assign out_c0_exe4499 = bubble_select_i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_d;
    assign out_c0_exe5500 = bubble_select_i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_e;
    assign out_c0_exe6501 = bubble_select_i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_f;
    assign out_c0_exe7502 = bubble_select_i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_g;
    assign out_c0_exe9504 = bubble_select_i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_h;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,22)
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_address = i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm9_kernel_3mm_avm_address;
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_enable = i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm9_kernel_3mm_avm_enable;
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_read = i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm9_kernel_3mm_avm_read;
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_write = i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm9_kernel_3mm_avm_write;
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata = i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata;
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable = i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable;
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount = i_sfc_s_c0_in_for_body47_kernel_3mms_c0_enter44852_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount;

endmodule
