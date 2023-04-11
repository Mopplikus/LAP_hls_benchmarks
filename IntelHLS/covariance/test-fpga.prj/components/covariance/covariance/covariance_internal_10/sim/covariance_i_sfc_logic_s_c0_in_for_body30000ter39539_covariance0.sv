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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body36_covariances_c0_enter39539_covariance0
// Created for function/kernel covariance
// SystemVerilog created on Fri Apr  7 17:50:02 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_i_sfc_logic_s_c0_in_for_body30000ter39539_covariance0 (
    input wire [31:0] in_unnamed_covariance5_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance5_covariance_avm_writeack,
    input wire [0:0] in_unnamed_covariance5_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance5_covariance_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_covariance6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_covariance6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [31:0] in_unnamed_covariance6_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance6_covariance_avm_writeack,
    input wire [0:0] in_unnamed_covariance6_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance6_covariance_avm_readdatavalid,
    output wire [31:0] out_unnamed_covariance5_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance5_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance5_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance5_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance5_covariance_avm_writedata,
    output wire [3:0] out_unnamed_covariance5_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance5_covariance_avm_burstcount,
    output wire [31:0] out_unnamed_covariance6_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance6_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance6_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance6_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance6_covariance_avm_writedata,
    output wire [3:0] out_unnamed_covariance6_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance6_covariance_avm_burstcount,
    output wire [0:0] out_c0_exi19_0_tpl,
    output wire [0:0] out_c0_exi19_1_tpl,
    output wire [63:0] out_c0_exi19_2_tpl,
    output wire [63:0] out_c0_exi19_3_tpl,
    output wire [0:0] out_c0_exi19_4_tpl,
    output wire [0:0] out_c0_exi19_5_tpl,
    output wire [31:0] out_c0_exi19_6_tpl,
    output wire [0:0] out_c0_exi19_7_tpl,
    output wire [31:0] out_c0_exi19_8_tpl,
    output wire [31:0] out_c0_exi19_9_tpl,
    output wire [0:0] out_c0_exi19_10_tpl,
    output wire [0:0] out_c0_exi19_11_tpl,
    output wire [0:0] out_c0_exi19_12_tpl,
    output wire [31:0] out_c0_exi19_13_tpl,
    output wire [31:0] out_c0_exi19_14_tpl,
    output wire [32:0] out_c0_exi19_15_tpl,
    output wire [0:0] out_c0_exi19_16_tpl,
    output wire [31:0] out_c0_exi19_17_tpl,
    output wire [31:0] out_c0_exi19_18_tpl,
    output wire [31:0] out_c0_exi19_19_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_covariance0,
    input wire [0:0] in_c0_eni15_0_tpl,
    input wire [0:0] in_c0_eni15_1_tpl,
    input wire [31:0] in_c0_eni15_2_tpl,
    input wire [31:0] in_c0_eni15_3_tpl,
    input wire [31:0] in_c0_eni15_4_tpl,
    input wire [31:0] in_c0_eni15_5_tpl,
    input wire [0:0] in_c0_eni15_6_tpl,
    input wire [0:0] in_c0_eni15_7_tpl,
    input wire [0:0] in_c0_eni15_8_tpl,
    input wire [31:0] in_c0_eni15_9_tpl,
    input wire [31:0] in_c0_eni15_10_tpl,
    input wire [32:0] in_c0_eni15_11_tpl,
    input wire [0:0] in_c0_eni15_12_tpl,
    input wire [31:0] in_c0_eni15_13_tpl,
    input wire [31:0] in_c0_eni15_14_tpl,
    input wire [31:0] in_c0_eni15_15_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_covariance_data_local_pmem_q;
    wire [1:0] c_i2_183_q;
    wire [31:0] c_i32_085_q;
    wire [31:0] c_i32_186_q;
    wire [5:0] c_i6_189_q;
    wire [5:0] c_i6_3087_q;
    wire [32:0] i_add46_covariance28_a;
    wire [32:0] i_add46_covariance28_b;
    logic [32:0] i_add46_covariance28_o;
    wire [32:0] i_add46_covariance28_q;
    wire [1:0] i_arrayidx403_covariance20_vt_const_1_q;
    wire [63:0] i_arrayidx403_covariance20_vt_join_q;
    wire [61:0] i_arrayidx403_covariance20_vt_select_63_b;
    wire [63:0] i_arrayidx444_covariance23_vt_join_q;
    wire [61:0] i_arrayidx444_covariance23_vt_select_63_b;
    wire [1:0] i_cleanups_shl_covariance5_vt_join_q;
    wire [0:0] i_cleanups_shl_covariance5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor_covariance4_q;
    wire [6:0] i_fpga_indvars_iv_next12_covariance40_a;
    wire [6:0] i_fpga_indvars_iv_next12_covariance40_b;
    logic [6:0] i_fpga_indvars_iv_next12_covariance40_o;
    wire [6:0] i_fpga_indvars_iv_next12_covariance40_q;
    wire [63:0] i_idxprom37_covariance19_vt_join_q;
    wire [31:0] i_idxprom37_covariance19_vt_select_31_b;
    wire [63:0] i_idxprom39_covariance17_vt_join_q;
    wire [31:0] i_idxprom39_covariance17_vt_select_31_b;
    wire [63:0] i_idxprom43_covariance14_vt_join_q;
    wire [31:0] i_idxprom43_covariance14_vt_select_31_b;
    wire [32:0] i_inc48_covariance30_a;
    wire [32:0] i_inc48_covariance30_b;
    logic [32:0] i_inc48_covariance30_o;
    wire [32:0] i_inc48_covariance30_q;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance5_covariance21_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance5_covariance21_out_unnamed_covariance5_covariance_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance5_covariance21_out_unnamed_covariance5_covariance_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_covariance5_covariance21_out_unnamed_covariance5_covariance_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance5_covariance21_out_unnamed_covariance5_covariance_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance5_covariance21_out_unnamed_covariance5_covariance_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance5_covariance21_out_unnamed_covariance5_covariance_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance5_covariance21_out_unnamed_covariance5_covariance_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance6_covariance24_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance6_covariance24_out_unnamed_covariance6_covariance_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance6_covariance24_out_unnamed_covariance6_covariance_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_covariance6_covariance24_out_unnamed_covariance6_covariance_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance6_covariance24_out_unnamed_covariance6_covariance_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance6_covariance24_out_unnamed_covariance6_covariance_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance6_covariance24_out_unnamed_covariance6_covariance_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance6_covariance24_out_unnamed_covariance6_covariance_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_covariance6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_covariance6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_covariance6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_covariance6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_covariance6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_forked23106_pop72_covariance49_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_forked23106_pop72_covariance49_out_feedback_stall_out_72;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp22107_pop73_covariance51_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp22107_pop73_covariance51_out_feedback_stall_out_73;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp27103_pop70_covariance47_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp27103_pop70_covariance47_out_feedback_stall_out_70;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop67_covariance2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop67_covariance2_out_feedback_stall_out_67;
    wire [1:0] i_llvm_fpga_pop_i2_initerations_pop66_covariance7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop66_covariance7_out_feedback_stall_out_66;
    wire [31:0] i_llvm_fpga_pop_i32_c_030_pop65_covariance27_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_c_030_pop65_covariance27_out_feedback_stall_out_65;
    wire [31:0] i_llvm_fpga_pop_i32_i24_034_pop29105_pop71_covariance15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i24_034_pop29105_pop71_covariance15_out_feedback_stall_out_71;
    wire [31:0] i_llvm_fpga_pop_i32_j28_033_pop58108_pop74_covariance12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j28_033_pop58108_pop74_covariance12_out_feedback_stall_out_74;
    wire [31:0] i_llvm_fpga_pop_i32_k_031_pop64_covariance18_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k_031_pop64_covariance18_out_feedback_stall_out_64;
    wire [31:0] i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_feedback_stall_out_68;
    wire [31:0] i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_feedback_stall_out_69;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop63_covariance32_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop63_covariance32_out_feedback_stall_out_63;
    wire [0:0] i_llvm_fpga_push_i1_forked23106_push72_covariance50_out_feedback_out_72;
    wire [0:0] i_llvm_fpga_push_i1_forked23106_push72_covariance50_out_feedback_valid_out_72;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_covariance11_out_feedback_out_1;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_covariance11_out_feedback_valid_out_1;
    wire [0:0] i_llvm_fpga_push_i1_notcmp22107_push73_covariance52_out_feedback_out_73;
    wire [0:0] i_llvm_fpga_push_i1_notcmp22107_push73_covariance52_out_feedback_valid_out_73;
    wire [0:0] i_llvm_fpga_push_i1_notcmp27103_push70_covariance48_out_feedback_out_70;
    wire [0:0] i_llvm_fpga_push_i1_notcmp27103_push70_covariance48_out_feedback_valid_out_70;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_covariance36_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_covariance36_out_feedback_valid_out_2;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push67_covariance39_out_feedback_out_67;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push67_covariance39_out_feedback_valid_out_67;
    wire [7:0] i_llvm_fpga_push_i2_initerations_push66_covariance9_out_feedback_out_66;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push66_covariance9_out_feedback_valid_out_66;
    wire [31:0] i_llvm_fpga_push_i32_c_030_push65_covariance29_out_feedback_out_65;
    wire [0:0] i_llvm_fpga_push_i32_c_030_push65_covariance29_out_feedback_valid_out_65;
    wire [31:0] i_llvm_fpga_push_i32_i24_034_pop29105_push71_covariance16_out_feedback_out_71;
    wire [0:0] i_llvm_fpga_push_i32_i24_034_pop29105_push71_covariance16_out_feedback_valid_out_71;
    wire [31:0] i_llvm_fpga_push_i32_j28_033_pop58108_push74_covariance13_out_feedback_out_74;
    wire [0:0] i_llvm_fpga_push_i32_j28_033_pop58108_push74_covariance13_out_feedback_valid_out_74;
    wire [31:0] i_llvm_fpga_push_i32_k_031_push64_covariance31_out_feedback_out_64;
    wire [0:0] i_llvm_fpga_push_i32_k_031_push64_covariance31_out_feedback_valid_out_64;
    wire [31:0] i_llvm_fpga_push_i32_lim_ext80_push68_covariance44_out_feedback_out_68;
    wire [0:0] i_llvm_fpga_push_i32_lim_ext80_push68_covariance44_out_feedback_valid_out_68;
    wire [31:0] i_llvm_fpga_push_i32_reorder_limiter_enter93_push69_covariance46_out_feedback_out_69;
    wire [0:0] i_llvm_fpga_push_i32_reorder_limiter_enter93_push69_covariance46_out_feedback_valid_out_69;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv11_push63_covariance41_out_feedback_out_63;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv11_push63_covariance41_out_feedback_valid_out_63;
    wire [0:0] i_masked_covariance42_qi;
    reg [0:0] i_masked_covariance42_q;
    wire [0:0] i_next_cleanups_covariance38_s;
    reg [1:0] i_next_cleanups_covariance38_q;
    wire [1:0] i_next_initerations_covariance8_vt_join_q;
    wire [0:0] i_next_initerations_covariance8_vt_select_0_b;
    wire [0:0] i_notcmp_covariance35_q;
    wire [0:0] i_or_covariance37_q;
    wire [31:0] bgTrunc_i_add46_covariance28_sel_x_b;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next12_covariance40_sel_x_b;
    wire [31:0] bgTrunc_i_inc48_covariance30_sel_x_b;
    wire [63:0] bgTrunc_i_mul45_covariance26_sel_x_in;
    wire [31:0] bgTrunc_i_mul45_covariance26_sel_x_b;
    wire [12:0] i_arrayidx403_covariance0_add_x_a;
    wire [12:0] i_arrayidx403_covariance0_add_x_b;
    logic [12:0] i_arrayidx403_covariance0_add_x_o;
    wire [12:0] i_arrayidx403_covariance0_add_x_q;
    wire [63:0] i_arrayidx403_covariance0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx403_covariance0_c_i7_01_x_q;
    wire [4:0] i_arrayidx403_covariance0_narrow_x_b;
    wire [11:0] i_arrayidx403_covariance0_shift_join_x_q;
    wire [12:0] i_arrayidx403_covariance0_dupName_0_add_x_a;
    wire [12:0] i_arrayidx403_covariance0_dupName_0_add_x_b;
    logic [12:0] i_arrayidx403_covariance0_dupName_0_add_x_o;
    wire [12:0] i_arrayidx403_covariance0_dupName_0_add_x_q;
    wire [9:0] i_arrayidx403_covariance0_dupName_0_narrow_x_b;
    wire [11:0] i_arrayidx403_covariance0_dupName_0_shift_join_x_q;
    wire [11:0] i_arrayidx403_covariance0_dupName_0_trunc_sel_x_b;
    wire [11:0] i_arrayidx403_covariance0_dupName_2_trunc_sel_x_b;
    wire [11:0] i_arrayidx403_covariance0_dupName_3_trunc_sel_x_b;
    wire [11:0] i_arrayidx403_covariance0_dupName_5_trunc_sel_x_b;
    wire [63:0] i_arrayidx444_covariance0_append_upper_bits_x_q;
    wire [12:0] i_arrayidx444_covariance0_dupName_0_add_x_a;
    wire [12:0] i_arrayidx444_covariance0_dupName_0_add_x_b;
    logic [12:0] i_arrayidx444_covariance0_dupName_0_add_x_o;
    wire [12:0] i_arrayidx444_covariance0_dupName_0_add_x_q;
    wire [9:0] i_arrayidx444_covariance0_dupName_0_narrow_x_b;
    wire [11:0] i_arrayidx444_covariance0_dupName_0_shift_join_x_q;
    wire [11:0] i_arrayidx444_covariance0_dupName_3_trunc_sel_x_b;
    wire [11:0] i_arrayidx444_covariance0_dupName_5_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_covariance3_sel_x_b;
    wire [63:0] i_idxprom37_covariance19_sel_x_b;
    wire [63:0] i_idxprom39_covariance17_sel_x_b;
    wire [63:0] i_idxprom43_covariance14_sel_x_b;
    wire [0:0] i_last_initeration_covariance10_sel_x_b;
    wire [0:0] i_toi1_intcast3_covariance25_sel_x_b;
    wire [0:0] i_toi1_intcast_covariance22_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg9_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg10_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg11_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg12_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg13_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg14_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg15_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg16_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg17_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg18_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg19_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg20_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg21_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg22_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg23_q;
    wire [0:0] i_exitcond13_covariance33_cmp_nsign_q;
    wire [13:0] i_mul45_covariance26_bs1_b;
    wire [13:0] i_mul45_covariance26_bs2_b;
    wire [17:0] i_mul45_covariance26_bs4_in;
    wire [17:0] i_mul45_covariance26_bs4_b;
    wire [17:0] i_mul45_covariance26_bs7_in;
    wire [17:0] i_mul45_covariance26_bs7_b;
    wire [63:0] i_mul45_covariance26_sums_join_0_q;
    wire [50:0] i_mul45_covariance26_sums_align_1_q;
    wire [50:0] i_mul45_covariance26_sums_align_1_qint;
    wire [64:0] i_mul45_covariance26_sums_result_add_0_0_a;
    wire [64:0] i_mul45_covariance26_sums_result_add_0_0_b;
    logic [64:0] i_mul45_covariance26_sums_result_add_0_0_o;
    wire [64:0] i_mul45_covariance26_sums_result_add_0_0_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid239_i_cleanups_shl_covariance0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid239_i_cleanups_shl_covariance0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid240_i_cleanups_shl_covariance0_shift_x_q;
    wire [0:0] leftShiftStage0_uid242_i_cleanups_shl_covariance0_shift_x_s;
    reg [1:0] leftShiftStage0_uid242_i_cleanups_shl_covariance0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid246_i_next_initerations_covariance0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid248_i_next_initerations_covariance0_shift_x_q;
    wire [0:0] rightShiftStage0_uid250_i_next_initerations_covariance0_shift_x_s;
    reg [1:0] rightShiftStage0_uid250_i_next_initerations_covariance0_shift_x_q;
    wire i_mul45_covariance26_im0_cma_reset;
    wire [13:0] i_mul45_covariance26_im0_cma_a0;
    wire [13:0] i_mul45_covariance26_im0_cma_c0;
    wire [27:0] i_mul45_covariance26_im0_cma_s0;
    wire [27:0] i_mul45_covariance26_im0_cma_qq;
    wire [27:0] i_mul45_covariance26_im0_cma_q;
    wire i_mul45_covariance26_im0_cma_ena0;
    wire i_mul45_covariance26_im0_cma_ena1;
    wire i_mul45_covariance26_im0_cma_ena2;
    wire i_mul45_covariance26_im8_cma_reset;
    wire [17:0] i_mul45_covariance26_im8_cma_a0;
    wire [17:0] i_mul45_covariance26_im8_cma_c0;
    wire [35:0] i_mul45_covariance26_im8_cma_s0;
    wire [35:0] i_mul45_covariance26_im8_cma_qq;
    wire [35:0] i_mul45_covariance26_im8_cma_q;
    wire i_mul45_covariance26_im8_cma_ena0;
    wire i_mul45_covariance26_im8_cma_ena1;
    wire i_mul45_covariance26_im8_cma_ena2;
    wire i_mul45_covariance26_ma3_cma_reset;
    wire [13:0] i_mul45_covariance26_ma3_cma_a0;
    wire [17:0] i_mul45_covariance26_ma3_cma_c0;
    wire [13:0] i_mul45_covariance26_ma3_cma_a1;
    wire [17:0] i_mul45_covariance26_ma3_cma_c1;
    wire [32:0] i_mul45_covariance26_ma3_cma_s0;
    wire [32:0] i_mul45_covariance26_ma3_cma_qq;
    wire [32:0] i_mul45_covariance26_ma3_cma_q;
    wire i_mul45_covariance26_ma3_cma_ena0;
    wire i_mul45_covariance26_ma3_cma_ena1;
    wire i_mul45_covariance26_ma3_cma_ena2;
    wire [51:0] i_arrayidx403_covariance0_upper_bits_x_merged_bit_select_b;
    wire [11:0] i_arrayidx403_covariance0_upper_bits_x_merged_bit_select_c;
    reg [0:0] redist0_sync_together122_aunroll_x_in_c0_eni15_1_tpl_1_q;
    reg [0:0] redist1_sync_together122_aunroll_x_in_c0_eni15_1_tpl_9_q;
    reg [31:0] redist2_sync_together122_aunroll_x_in_c0_eni15_2_tpl_1_q;
    reg [31:0] redist3_sync_together122_aunroll_x_in_c0_eni15_3_tpl_1_q;
    reg [31:0] redist4_sync_together122_aunroll_x_in_c0_eni15_4_tpl_1_q;
    reg [31:0] redist5_sync_together122_aunroll_x_in_c0_eni15_5_tpl_1_q;
    reg [0:0] redist6_sync_together122_aunroll_x_in_c0_eni15_6_tpl_1_q;
    reg [0:0] redist7_sync_together122_aunroll_x_in_c0_eni15_7_tpl_9_q;
    reg [0:0] redist8_sync_together122_aunroll_x_in_c0_eni15_8_tpl_9_q;
    reg [0:0] redist12_sync_together122_aunroll_x_in_c0_eni15_12_tpl_9_q;
    reg [0:0] redist16_sync_together122_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist17_sync_together122_aunroll_x_in_i_valid_8_q;
    reg [0:0] redist18_i_toi1_intcast_covariance22_sel_x_b_4_q;
    reg [0:0] redist18_i_toi1_intcast_covariance22_sel_x_b_4_delay_0;
    reg [0:0] redist18_i_toi1_intcast_covariance22_sel_x_b_4_delay_1;
    reg [0:0] redist18_i_toi1_intcast_covariance22_sel_x_b_4_delay_2;
    reg [0:0] redist19_i_toi1_intcast3_covariance25_sel_x_b_4_q;
    reg [0:0] redist19_i_toi1_intcast3_covariance25_sel_x_b_4_delay_0;
    reg [0:0] redist19_i_toi1_intcast3_covariance25_sel_x_b_4_delay_1;
    reg [0:0] redist19_i_toi1_intcast3_covariance25_sel_x_b_4_delay_2;
    reg [31:0] redist20_bgTrunc_i_mul45_covariance26_sel_x_b_1_q;
    reg [0:0] redist21_i_masked_covariance42_q_8_q;
    reg [0:0] redist24_i_llvm_fpga_pop_i1_notcmp27103_pop70_covariance47_out_data_out_1_q;
    reg [0:0] redist25_i_llvm_fpga_pop_i1_notcmp27103_pop70_covariance47_out_data_out_8_q;
    reg [0:0] redist26_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_1_q;
    reg [0:0] redist27_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_2_q;
    reg [0:0] redist28_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_9_q;
    wire redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_mem_reset0;
    wire [31:0] redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_mem_ia;
    wire [2:0] redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_mem_aa;
    wire [2:0] redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_mem_ab;
    wire [31:0] redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_mem_iq;
    wire [31:0] redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_mem_q;
    wire [2:0] redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_rdcnt_i;
    reg [2:0] redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_wraddr_q;
    wire [3:0] redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_mem_last_q;
    wire [3:0] redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_cmp_b;
    wire [0:0] redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_cmpReg_q;
    wire [0:0] redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_notEnable_q;
    wire [0:0] redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_sticky_ena_q;
    wire [0:0] redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_enaAnd_q;
    wire redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_mem_reset0;
    wire [31:0] redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_mem_ia;
    wire [2:0] redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_mem_aa;
    wire [2:0] redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_mem_ab;
    wire [31:0] redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_mem_iq;
    wire [31:0] redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_mem_q;
    wire [2:0] redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_rdcnt_i;
    reg [2:0] redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_wraddr_q;
    wire [3:0] redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_mem_last_q;
    wire [3:0] redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_cmp_b;
    wire [0:0] redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_cmpReg_q;
    wire [0:0] redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_notEnable_q;
    wire [0:0] redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_sticky_ena_q;
    wire [0:0] redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_enaAnd_q;
    wire redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_mem_reset0;
    wire [32:0] redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_mem_ia;
    wire [2:0] redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_mem_aa;
    wire [2:0] redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_mem_ab;
    wire [32:0] redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_mem_iq;
    wire [32:0] redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_mem_q;
    wire [2:0] redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_rdcnt_i;
    reg [2:0] redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_wraddr_q;
    wire [3:0] redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_mem_last_q;
    wire [3:0] redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_cmp_b;
    wire [0:0] redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_cmpReg_q;
    wire [0:0] redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_notEnable_q;
    wire [0:0] redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_sticky_ena_q;
    wire [0:0] redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_enaAnd_q;
    wire redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_mem_reset0;
    wire [31:0] redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_mem_ia;
    wire [2:0] redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_mem_aa;
    wire [2:0] redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_mem_ab;
    wire [31:0] redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_mem_iq;
    wire [31:0] redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_mem_q;
    wire [2:0] redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_rdcnt_i;
    reg [2:0] redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_wraddr_q;
    wire [3:0] redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_mem_last_q;
    wire [3:0] redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_cmp_b;
    wire [0:0] redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_cmpReg_q;
    wire [0:0] redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_notEnable_q;
    wire [0:0] redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_sticky_ena_q;
    wire [0:0] redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_enaAnd_q;
    wire redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_mem_reset0;
    wire [31:0] redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_mem_ia;
    wire [2:0] redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_mem_aa;
    wire [2:0] redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_mem_ab;
    wire [31:0] redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_mem_iq;
    wire [31:0] redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_mem_q;
    wire [2:0] redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_rdcnt_i;
    reg [2:0] redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_wraddr_q;
    wire [3:0] redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_mem_last_q;
    wire [3:0] redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_cmp_b;
    wire [0:0] redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_cmpReg_q;
    wire [0:0] redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_notEnable_q;
    wire [0:0] redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_sticky_ena_q;
    wire [0:0] redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_enaAnd_q;
    wire redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_mem_reset0;
    wire [31:0] redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_mem_ia;
    wire [2:0] redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_mem_aa;
    wire [2:0] redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_mem_ab;
    wire [31:0] redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_mem_iq;
    wire [31:0] redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_mem_q;
    wire [2:0] redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_rdcnt_i;
    reg [2:0] redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_wraddr_q;
    wire [3:0] redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_mem_last_q;
    wire [3:0] redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_cmp_b;
    wire [0:0] redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_cmpReg_q;
    wire [0:0] redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_notEnable_q;
    wire [0:0] redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_sticky_ena_q;
    wire [0:0] redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_enaAnd_q;
    wire redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_mem_reset0;
    wire [31:0] redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_mem_ia;
    wire [2:0] redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_mem_aa;
    wire [2:0] redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_mem_ab;
    wire [31:0] redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_mem_iq;
    wire [31:0] redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_mem_q;
    wire [2:0] redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_rdcnt_q;
    (* preserve *) reg [2:0] redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_rdcnt_i;
    (* preserve *) reg redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_rdcnt_eq;
    reg [2:0] redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_wraddr_q;
    wire [3:0] redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_mem_last_q;
    wire [3:0] redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_cmp_b;
    wire [0:0] redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_cmp_q;
    (* dont_merge *) reg [0:0] redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_cmpReg_q;
    wire [0:0] redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_notEnable_q;
    wire [0:0] redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_nor_q;
    (* dont_merge *) reg [0:0] redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_sticky_ena_q;
    wire [0:0] redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_enaAnd_q;
    wire redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_mem_reset0;
    wire [31:0] redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_mem_ia;
    wire [2:0] redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_mem_aa;
    wire [2:0] redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_mem_ab;
    wire [31:0] redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_mem_iq;
    wire [31:0] redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_mem_q;
    wire [2:0] redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_rdcnt_q;
    (* preserve *) reg [2:0] redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_rdcnt_i;
    (* preserve *) reg redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_rdcnt_eq;
    reg [2:0] redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_wraddr_q;
    wire [3:0] redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_mem_last_q;
    wire [3:0] redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_cmp_b;
    wire [0:0] redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_cmp_q;
    (* dont_merge *) reg [0:0] redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_cmpReg_q;
    wire [0:0] redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_notEnable_q;
    wire [0:0] redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_nor_q;
    (* dont_merge *) reg [0:0] redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_sticky_ena_q;
    wire [0:0] redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_enaAnd_q;
    wire redist29_i_idxprom43_covariance14_vt_join_q_8_mem_reset0;
    wire [63:0] redist29_i_idxprom43_covariance14_vt_join_q_8_mem_ia;
    wire [2:0] redist29_i_idxprom43_covariance14_vt_join_q_8_mem_aa;
    wire [2:0] redist29_i_idxprom43_covariance14_vt_join_q_8_mem_ab;
    wire [63:0] redist29_i_idxprom43_covariance14_vt_join_q_8_mem_iq;
    wire [63:0] redist29_i_idxprom43_covariance14_vt_join_q_8_mem_q;
    wire [2:0] redist29_i_idxprom43_covariance14_vt_join_q_8_rdcnt_q;
    (* preserve *) reg [2:0] redist29_i_idxprom43_covariance14_vt_join_q_8_rdcnt_i;
    (* preserve *) reg redist29_i_idxprom43_covariance14_vt_join_q_8_rdcnt_eq;
    reg [2:0] redist29_i_idxprom43_covariance14_vt_join_q_8_wraddr_q;
    wire [3:0] redist29_i_idxprom43_covariance14_vt_join_q_8_mem_last_q;
    wire [3:0] redist29_i_idxprom43_covariance14_vt_join_q_8_cmp_b;
    wire [0:0] redist29_i_idxprom43_covariance14_vt_join_q_8_cmp_q;
    (* dont_merge *) reg [0:0] redist29_i_idxprom43_covariance14_vt_join_q_8_cmpReg_q;
    wire [0:0] redist29_i_idxprom43_covariance14_vt_join_q_8_notEnable_q;
    wire [0:0] redist29_i_idxprom43_covariance14_vt_join_q_8_nor_q;
    (* dont_merge *) reg [0:0] redist29_i_idxprom43_covariance14_vt_join_q_8_sticky_ena_q;
    wire [0:0] redist29_i_idxprom43_covariance14_vt_join_q_8_enaAnd_q;
    wire redist30_i_idxprom39_covariance17_vt_join_q_8_mem_reset0;
    wire [63:0] redist30_i_idxprom39_covariance17_vt_join_q_8_mem_ia;
    wire [2:0] redist30_i_idxprom39_covariance17_vt_join_q_8_mem_aa;
    wire [2:0] redist30_i_idxprom39_covariance17_vt_join_q_8_mem_ab;
    wire [63:0] redist30_i_idxprom39_covariance17_vt_join_q_8_mem_iq;
    wire [63:0] redist30_i_idxprom39_covariance17_vt_join_q_8_mem_q;
    wire [2:0] redist30_i_idxprom39_covariance17_vt_join_q_8_rdcnt_q;
    (* preserve *) reg [2:0] redist30_i_idxprom39_covariance17_vt_join_q_8_rdcnt_i;
    (* preserve *) reg redist30_i_idxprom39_covariance17_vt_join_q_8_rdcnt_eq;
    reg [2:0] redist30_i_idxprom39_covariance17_vt_join_q_8_wraddr_q;
    wire [3:0] redist30_i_idxprom39_covariance17_vt_join_q_8_mem_last_q;
    wire [3:0] redist30_i_idxprom39_covariance17_vt_join_q_8_cmp_b;
    wire [0:0] redist30_i_idxprom39_covariance17_vt_join_q_8_cmp_q;
    (* dont_merge *) reg [0:0] redist30_i_idxprom39_covariance17_vt_join_q_8_cmpReg_q;
    wire [0:0] redist30_i_idxprom39_covariance17_vt_join_q_8_notEnable_q;
    wire [0:0] redist30_i_idxprom39_covariance17_vt_join_q_8_nor_q;
    (* dont_merge *) reg [0:0] redist30_i_idxprom39_covariance17_vt_join_q_8_sticky_ena_q;
    wire [0:0] redist30_i_idxprom39_covariance17_vt_join_q_8_enaAnd_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist16_sync_together122_aunroll_x_in_i_valid_1(DELAY,271)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together122_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist16_sync_together122_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist26_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_1(DELAY,281)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist26_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid239_i_cleanups_shl_covariance0_shift_x(BITSELECT,238)@2
    assign leftShiftStage0Idx1Rng1_uid239_i_cleanups_shl_covariance0_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop67_covariance2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid239_i_cleanups_shl_covariance0_shift_x_b = leftShiftStage0Idx1Rng1_uid239_i_cleanups_shl_covariance0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid240_i_cleanups_shl_covariance0_shift_x(BITJOIN,239)@2
    assign leftShiftStage0Idx1_uid240_i_cleanups_shl_covariance0_shift_x_q = {leftShiftStage0Idx1Rng1_uid239_i_cleanups_shl_covariance0_shift_x_b, GND_q};

    // leftShiftStage0_uid242_i_cleanups_shl_covariance0_shift_x(MUX,241)@2
    assign leftShiftStage0_uid242_i_cleanups_shl_covariance0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid242_i_cleanups_shl_covariance0_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop67_covariance2_out_data_out or leftShiftStage0Idx1_uid240_i_cleanups_shl_covariance0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid242_i_cleanups_shl_covariance0_shift_x_s)
            1'b0 : leftShiftStage0_uid242_i_cleanups_shl_covariance0_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop67_covariance2_out_data_out;
            1'b1 : leftShiftStage0_uid242_i_cleanups_shl_covariance0_shift_x_q = leftShiftStage0Idx1_uid240_i_cleanups_shl_covariance0_shift_x_q;
            default : leftShiftStage0_uid242_i_cleanups_shl_covariance0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_covariance5_vt_select_1(BITSELECT,53)@2
    assign i_cleanups_shl_covariance5_vt_select_1_b = leftShiftStage0_uid242_i_cleanups_shl_covariance0_shift_x_q[1:1];

    // i_cleanups_shl_covariance5_vt_join(BITJOIN,52)@2
    assign i_cleanups_shl_covariance5_vt_join_q = {i_cleanups_shl_covariance5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor_covariance4(LOGICAL,56)@2
    assign i_first_cleanup_xor_covariance4_q = i_first_cleanup_covariance3_sel_x_b ^ VCC_q;

    // i_notcmp_covariance35(LOGICAL,107)@2
    assign i_notcmp_covariance35_q = i_exitcond13_covariance33_cmp_nsign_q ^ VCC_q;

    // i_or_covariance37(LOGICAL,108)@2
    assign i_or_covariance37_q = i_notcmp_covariance35_q | i_first_cleanup_xor_covariance4_q;

    // i_next_cleanups_covariance38(MUX,103)@2
    assign i_next_cleanups_covariance38_s = i_or_covariance37_q;
    always @(i_next_cleanups_covariance38_s or i_llvm_fpga_pop_i2_cleanups_pop67_covariance2_out_data_out or i_cleanups_shl_covariance5_vt_join_q)
    begin
        unique case (i_next_cleanups_covariance38_s)
            1'b0 : i_next_cleanups_covariance38_q = i_llvm_fpga_pop_i2_cleanups_pop67_covariance2_out_data_out;
            1'b1 : i_next_cleanups_covariance38_q = i_cleanups_shl_covariance5_vt_join_q;
            default : i_next_cleanups_covariance38_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push67_covariance39(BLACKBOX,92)@2
    // out out_feedback_out_67@20000000
    // out out_feedback_valid_out_67@20000000
    covariance_i_llvm_fpga_push_i2_cleanups_push67_0 thei_llvm_fpga_push_i2_cleanups_push67_covariance39 (
        .in_data_in(i_next_cleanups_covariance38_q),
        .in_feedback_stall_in_67(i_llvm_fpga_pop_i2_cleanups_pop67_covariance2_out_feedback_stall_out_67),
        .in_keep_going(redist26_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist16_sync_together122_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_67(i_llvm_fpga_push_i2_cleanups_push67_covariance39_out_feedback_out_67),
        .out_feedback_valid_out_67(i_llvm_fpga_push_i2_cleanups_push67_covariance39_out_feedback_valid_out_67),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together122_aunroll_x_in_c0_eni15_1_tpl_1(DELAY,255)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together122_aunroll_x_in_c0_eni15_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together122_aunroll_x_in_c0_eni15_1_tpl_1_q <= $unsigned(in_c0_eni15_1_tpl);
        end
    end

    // c_i2_183(CONSTANT,37)
    assign c_i2_183_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop67_covariance2(BLACKBOX,78)@2
    // out out_feedback_stall_out_67@20000000
    covariance_i_llvm_fpga_pop_i2_cleanups_pop67_0 thei_llvm_fpga_pop_i2_cleanups_pop67_covariance2 (
        .in_data_in(c_i2_183_q),
        .in_dir(redist0_sync_together122_aunroll_x_in_c0_eni15_1_tpl_1_q),
        .in_feedback_in_67(i_llvm_fpga_push_i2_cleanups_push67_covariance39_out_feedback_out_67),
        .in_feedback_valid_in_67(i_llvm_fpga_push_i2_cleanups_push67_covariance39_out_feedback_valid_out_67),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist16_sync_together122_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop67_covariance2_out_data_out),
        .out_feedback_stall_out_67(i_llvm_fpga_pop_i2_cleanups_pop67_covariance2_out_feedback_stall_out_67),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_covariance3_sel_x(BITSELECT,168)@2
    assign i_first_cleanup_covariance3_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop67_covariance2_out_data_out[0:0];

    // c_i6_189(CONSTANT,40)
    assign c_i6_189_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next12_covariance40(ADD,57)@2
    assign i_fpga_indvars_iv_next12_covariance40_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop63_covariance32_out_data_out};
    assign i_fpga_indvars_iv_next12_covariance40_b = {1'b0, c_i6_189_q};
    assign i_fpga_indvars_iv_next12_covariance40_o = $unsigned(i_fpga_indvars_iv_next12_covariance40_a) + $unsigned(i_fpga_indvars_iv_next12_covariance40_b);
    assign i_fpga_indvars_iv_next12_covariance40_q = i_fpga_indvars_iv_next12_covariance40_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next12_covariance40_sel_x(BITSELECT,117)@2
    assign bgTrunc_i_fpga_indvars_iv_next12_covariance40_sel_x_b = i_fpga_indvars_iv_next12_covariance40_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv11_push63_covariance41(BLACKBOX,100)@2
    // out out_feedback_out_63@20000000
    // out out_feedback_valid_out_63@20000000
    covariance_i_llvm_fpga_push_i6_fpga_indvars_iv11_push63_0 thei_llvm_fpga_push_i6_fpga_indvars_iv11_push63_covariance41 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next12_covariance40_sel_x_b),
        .in_feedback_stall_in_63(i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop63_covariance32_out_feedback_stall_out_63),
        .in_keep_going(redist26_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist16_sync_together122_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_63(i_llvm_fpga_push_i6_fpga_indvars_iv11_push63_covariance41_out_feedback_out_63),
        .out_feedback_valid_out_63(i_llvm_fpga_push_i6_fpga_indvars_iv11_push63_covariance41_out_feedback_valid_out_63),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_3087(CONSTANT,41)
    assign c_i6_3087_q = $unsigned(6'b011110);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop63_covariance32(BLACKBOX,86)@2
    // out out_feedback_stall_out_63@20000000
    covariance_i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop63_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv11_pop63_covariance32 (
        .in_data_in(c_i6_3087_q),
        .in_dir(redist0_sync_together122_aunroll_x_in_c0_eni15_1_tpl_1_q),
        .in_feedback_in_63(i_llvm_fpga_push_i6_fpga_indvars_iv11_push63_covariance41_out_feedback_out_63),
        .in_feedback_valid_in_63(i_llvm_fpga_push_i6_fpga_indvars_iv11_push63_covariance41_out_feedback_valid_out_63),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist16_sync_together122_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop63_covariance32_out_data_out),
        .out_feedback_stall_out_63(i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop63_covariance32_out_feedback_stall_out_63),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond13_covariance33_cmp_nsign(LOGICAL,219)@2
    assign i_exitcond13_covariance33_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop63_covariance32_out_data_out[5:5]));

    // i_llvm_fpga_push_i1_notexitcond_covariance36(BLACKBOX,91)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    covariance_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_covariance36 (
        .in_data_in(i_exitcond13_covariance33_cmp_nsign_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_covariance6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_covariance3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist16_sync_together122_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_notexitcond_covariance36_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_notexitcond_covariance36_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,184)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(in_i_valid);
        end
    end

    // rightShiftStage0Idx1Rng1_uid246_i_next_initerations_covariance0_shift_x(BITSELECT,245)@2
    assign rightShiftStage0Idx1Rng1_uid246_i_next_initerations_covariance0_shift_x_b = i_llvm_fpga_pop_i2_initerations_pop66_covariance7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid248_i_next_initerations_covariance0_shift_x(BITJOIN,247)@2
    assign rightShiftStage0Idx1_uid248_i_next_initerations_covariance0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid246_i_next_initerations_covariance0_shift_x_b};

    // valid_fanout_reg1(REG,182)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg2(REG,183)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i2_initerations_push66_covariance9(BLACKBOX,93)@2
    // out out_feedback_out_66@20000000
    // out out_feedback_valid_out_66@20000000
    covariance_i_llvm_fpga_push_i2_initerations_push66_0 thei_llvm_fpga_push_i2_initerations_push66_covariance9 (
        .in_data_in(i_next_initerations_covariance8_vt_join_q),
        .in_feedback_stall_in_66(i_llvm_fpga_pop_i2_initerations_pop66_covariance7_out_feedback_stall_out_66),
        .in_keep_going(redist26_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_66(i_llvm_fpga_push_i2_initerations_push66_covariance9_out_feedback_out_66),
        .out_feedback_valid_out_66(i_llvm_fpga_push_i2_initerations_push66_covariance9_out_feedback_valid_out_66),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations_pop66_covariance7(BLACKBOX,79)@2
    // out out_feedback_stall_out_66@20000000
    covariance_i_llvm_fpga_pop_i2_initerations_pop66_0 thei_llvm_fpga_pop_i2_initerations_pop66_covariance7 (
        .in_data_in(c_i2_183_q),
        .in_dir(redist0_sync_together122_aunroll_x_in_c0_eni15_1_tpl_1_q),
        .in_feedback_in_66(i_llvm_fpga_push_i2_initerations_push66_covariance9_out_feedback_out_66),
        .in_feedback_valid_in_66(i_llvm_fpga_push_i2_initerations_push66_covariance9_out_feedback_valid_out_66),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations_pop66_covariance7_out_data_out),
        .out_feedback_stall_out_66(i_llvm_fpga_pop_i2_initerations_pop66_covariance7_out_feedback_stall_out_66),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid250_i_next_initerations_covariance0_shift_x(MUX,249)@2
    assign rightShiftStage0_uid250_i_next_initerations_covariance0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid250_i_next_initerations_covariance0_shift_x_s or i_llvm_fpga_pop_i2_initerations_pop66_covariance7_out_data_out or rightShiftStage0Idx1_uid248_i_next_initerations_covariance0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid250_i_next_initerations_covariance0_shift_x_s)
            1'b0 : rightShiftStage0_uid250_i_next_initerations_covariance0_shift_x_q = i_llvm_fpga_pop_i2_initerations_pop66_covariance7_out_data_out;
            1'b1 : rightShiftStage0_uid250_i_next_initerations_covariance0_shift_x_q = rightShiftStage0Idx1_uid248_i_next_initerations_covariance0_shift_x_q;
            default : rightShiftStage0_uid250_i_next_initerations_covariance0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations_covariance8_vt_select_0(BITSELECT,106)@2
    assign i_next_initerations_covariance8_vt_select_0_b = rightShiftStage0_uid250_i_next_initerations_covariance0_shift_x_q[0:0];

    // i_next_initerations_covariance8_vt_join(BITJOIN,105)@2
    assign i_next_initerations_covariance8_vt_join_q = {GND_q, i_next_initerations_covariance8_vt_select_0_b};

    // i_last_initeration_covariance10_sel_x(BITSELECT,172)@2
    assign i_last_initeration_covariance10_sel_x_b = i_next_initerations_covariance8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_covariance11(BLACKBOX,88)@2
    // out out_feedback_out_1@20000000
    // out out_feedback_valid_out_1@20000000
    covariance_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_covariance11 (
        .in_data_in(i_last_initeration_covariance10_sel_x_b),
        .in_feedback_stall_in_1(i_llvm_fpga_pipeline_keep_going_covariance6_out_initeration_stall_out),
        .in_keep_going(redist26_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_1(i_llvm_fpga_push_i1_lastiniteration_covariance11_out_feedback_out_1),
        .out_feedback_valid_out_1(i_llvm_fpga_push_i1_lastiniteration_covariance11_out_feedback_valid_out_1),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_covariance6(BLACKBOX,74)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    covariance_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_covariance6 (
        .in_data_in(in_c0_eni15_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_covariance11_out_feedback_out_1),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_covariance11_out_feedback_valid_out_1),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_covariance36_out_feedback_out_2),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_covariance36_out_feedback_valid_out_2),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_covariance6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_covariance6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_covariance6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_covariance6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_covariance6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,43)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_covariance6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_covariance6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_covariance6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_covariance6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,113)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_covariance6_out_pipeline_valid_out;

    // valid_fanout_reg9(REG,190)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(in_i_valid);
        end
    end

    // c_covariance_data_local_pmem(CONSTANT,6)
    assign c_covariance_data_local_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx403_covariance0_upper_bits_x_merged_bit_select(BITSELECT,254)@2
    assign i_arrayidx403_covariance0_upper_bits_x_merged_bit_select_b = c_covariance_data_local_pmem_q[63:12];
    assign i_arrayidx403_covariance0_upper_bits_x_merged_bit_select_c = c_covariance_data_local_pmem_q[11:0];

    // c_i32_085(CONSTANT,38)
    assign c_i32_085_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg6(REG,187)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg7(REG,188)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_i24_034_pop29105_push71_covariance16(BLACKBOX,95)@2
    // out out_feedback_out_71@20000000
    // out out_feedback_valid_out_71@20000000
    covariance_i_llvm_fpga_push_i32_i24_034_pop29105_push71_0 thei_llvm_fpga_push_i32_i24_034_pop29105_push71_covariance16 (
        .in_data_in(i_llvm_fpga_pop_i32_i24_034_pop29105_pop71_covariance15_out_data_out),
        .in_feedback_stall_in_71(i_llvm_fpga_pop_i32_i24_034_pop29105_pop71_covariance15_out_feedback_stall_out_71),
        .in_keep_going(redist26_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_71(i_llvm_fpga_push_i32_i24_034_pop29105_push71_covariance16_out_feedback_out_71),
        .out_feedback_valid_out_71(i_llvm_fpga_push_i32_i24_034_pop29105_push71_covariance16_out_feedback_valid_out_71),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together122_aunroll_x_in_c0_eni15_3_tpl_1(DELAY,258)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together122_aunroll_x_in_c0_eni15_3_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together122_aunroll_x_in_c0_eni15_3_tpl_1_q <= $unsigned(in_c0_eni15_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_i24_034_pop29105_pop71_covariance15(BLACKBOX,81)@2
    // out out_feedback_stall_out_71@20000000
    covariance_i_llvm_fpga_pop_i32_i24_034_pop29105_pop71_0 thei_llvm_fpga_pop_i32_i24_034_pop29105_pop71_covariance15 (
        .in_data_in(redist3_sync_together122_aunroll_x_in_c0_eni15_3_tpl_1_q),
        .in_dir(redist0_sync_together122_aunroll_x_in_c0_eni15_1_tpl_1_q),
        .in_feedback_in_71(i_llvm_fpga_push_i32_i24_034_pop29105_push71_covariance16_out_feedback_out_71),
        .in_feedback_valid_in_71(i_llvm_fpga_push_i32_i24_034_pop29105_push71_covariance16_out_feedback_valid_out_71),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_i24_034_pop29105_pop71_covariance15_out_data_out),
        .out_feedback_stall_out_71(i_llvm_fpga_pop_i32_i24_034_pop29105_pop71_covariance15_out_feedback_stall_out_71),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom39_covariance17_sel_x(BITSELECT,170)@2
    assign i_idxprom39_covariance17_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i24_034_pop29105_pop71_covariance15_out_data_out[31:0]};

    // i_idxprom39_covariance17_vt_select_31(BITSELECT,65)@2
    assign i_idxprom39_covariance17_vt_select_31_b = i_idxprom39_covariance17_sel_x_b[31:0];

    // i_idxprom39_covariance17_vt_join(BITJOIN,64)@2
    assign i_idxprom39_covariance17_vt_join_q = {c_i32_085_q, i_idxprom39_covariance17_vt_select_31_b};

    // i_arrayidx403_covariance0_dupName_3_trunc_sel_x(BITSELECT,142)@2
    assign i_arrayidx403_covariance0_dupName_3_trunc_sel_x_b = i_idxprom39_covariance17_vt_join_q[11:0];

    // i_arrayidx403_covariance0_dupName_0_narrow_x(BITSELECT,133)@2
    assign i_arrayidx403_covariance0_dupName_0_narrow_x_b = i_arrayidx403_covariance0_dupName_3_trunc_sel_x_b[9:0];

    // i_arrayidx403_covariance0_dupName_0_shift_join_x(BITJOIN,134)@2
    assign i_arrayidx403_covariance0_dupName_0_shift_join_x_q = {i_arrayidx403_covariance0_dupName_0_narrow_x_b, i_arrayidx403_covariance20_vt_const_1_q};

    // valid_fanout_reg8(REG,189)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg13(REG,194)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(in_i_valid);
        end
    end

    // c_i32_186(CONSTANT,39)
    assign c_i32_186_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc48_covariance30(ADD,70)@2
    assign i_inc48_covariance30_a = {1'b0, i_llvm_fpga_pop_i32_k_031_pop64_covariance18_out_data_out};
    assign i_inc48_covariance30_b = {1'b0, c_i32_186_q};
    assign i_inc48_covariance30_o = $unsigned(i_inc48_covariance30_a) + $unsigned(i_inc48_covariance30_b);
    assign i_inc48_covariance30_q = i_inc48_covariance30_o[32:0];

    // bgTrunc_i_inc48_covariance30_sel_x(BITSELECT,118)@2
    assign bgTrunc_i_inc48_covariance30_sel_x_b = i_inc48_covariance30_q[31:0];

    // i_llvm_fpga_push_i32_k_031_push64_covariance31(BLACKBOX,97)@2
    // out out_feedback_out_64@20000000
    // out out_feedback_valid_out_64@20000000
    covariance_i_llvm_fpga_push_i32_k_031_push64_0 thei_llvm_fpga_push_i32_k_031_push64_covariance31 (
        .in_data_in(bgTrunc_i_inc48_covariance30_sel_x_b),
        .in_feedback_stall_in_64(i_llvm_fpga_pop_i32_k_031_pop64_covariance18_out_feedback_stall_out_64),
        .in_keep_going(redist26_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_64(i_llvm_fpga_push_i32_k_031_push64_covariance31_out_feedback_out_64),
        .out_feedback_valid_out_64(i_llvm_fpga_push_i32_k_031_push64_covariance31_out_feedback_valid_out_64),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_k_031_pop64_covariance18(BLACKBOX,83)@2
    // out out_feedback_stall_out_64@20000000
    covariance_i_llvm_fpga_pop_i32_k_031_pop64_0 thei_llvm_fpga_pop_i32_k_031_pop64_covariance18 (
        .in_data_in(c_i32_085_q),
        .in_dir(redist0_sync_together122_aunroll_x_in_c0_eni15_1_tpl_1_q),
        .in_feedback_in_64(i_llvm_fpga_push_i32_k_031_push64_covariance31_out_feedback_out_64),
        .in_feedback_valid_in_64(i_llvm_fpga_push_i32_k_031_push64_covariance31_out_feedback_valid_out_64),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_i32_k_031_pop64_covariance18_out_data_out),
        .out_feedback_stall_out_64(i_llvm_fpga_pop_i32_k_031_pop64_covariance18_out_feedback_stall_out_64),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom37_covariance19_sel_x(BITSELECT,169)@2
    assign i_idxprom37_covariance19_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_k_031_pop64_covariance18_out_data_out[31:0]};

    // i_idxprom37_covariance19_vt_select_31(BITSELECT,61)@2
    assign i_idxprom37_covariance19_vt_select_31_b = i_idxprom37_covariance19_sel_x_b[31:0];

    // i_idxprom37_covariance19_vt_join(BITJOIN,60)@2
    assign i_idxprom37_covariance19_vt_join_q = {c_i32_085_q, i_idxprom37_covariance19_vt_select_31_b};

    // i_arrayidx403_covariance0_dupName_0_trunc_sel_x(BITSELECT,140)@2
    assign i_arrayidx403_covariance0_dupName_0_trunc_sel_x_b = i_idxprom37_covariance19_vt_join_q[11:0];

    // i_arrayidx403_covariance0_narrow_x(BITSELECT,128)@2
    assign i_arrayidx403_covariance0_narrow_x_b = i_arrayidx403_covariance0_dupName_0_trunc_sel_x_b[4:0];

    // i_arrayidx403_covariance0_c_i7_01_x(CONSTANT,127)
    assign i_arrayidx403_covariance0_c_i7_01_x_q = $unsigned(7'b0000000);

    // i_arrayidx403_covariance0_shift_join_x(BITJOIN,129)@2
    assign i_arrayidx403_covariance0_shift_join_x_q = {i_arrayidx403_covariance0_narrow_x_b, i_arrayidx403_covariance0_c_i7_01_x_q};

    // i_arrayidx403_covariance0_add_x(ADD,124)@2
    assign i_arrayidx403_covariance0_add_x_a = {1'b0, i_arrayidx403_covariance0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx403_covariance0_add_x_b = {1'b0, i_arrayidx403_covariance0_shift_join_x_q};
    assign i_arrayidx403_covariance0_add_x_o = $unsigned(i_arrayidx403_covariance0_add_x_a) + $unsigned(i_arrayidx403_covariance0_add_x_b);
    assign i_arrayidx403_covariance0_add_x_q = i_arrayidx403_covariance0_add_x_o[12:0];

    // i_arrayidx403_covariance0_dupName_2_trunc_sel_x(BITSELECT,141)@2
    assign i_arrayidx403_covariance0_dupName_2_trunc_sel_x_b = i_arrayidx403_covariance0_add_x_q[11:0];

    // i_arrayidx403_covariance0_dupName_0_add_x(ADD,132)@2
    assign i_arrayidx403_covariance0_dupName_0_add_x_a = {1'b0, i_arrayidx403_covariance0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx403_covariance0_dupName_0_add_x_b = {1'b0, i_arrayidx403_covariance0_dupName_0_shift_join_x_q};
    assign i_arrayidx403_covariance0_dupName_0_add_x_o = $unsigned(i_arrayidx403_covariance0_dupName_0_add_x_a) + $unsigned(i_arrayidx403_covariance0_dupName_0_add_x_b);
    assign i_arrayidx403_covariance0_dupName_0_add_x_q = i_arrayidx403_covariance0_dupName_0_add_x_o[12:0];

    // i_arrayidx403_covariance0_dupName_5_trunc_sel_x(BITSELECT,143)@2
    assign i_arrayidx403_covariance0_dupName_5_trunc_sel_x_b = i_arrayidx403_covariance0_dupName_0_add_x_q[11:0];

    // i_arrayidx403_covariance0_append_upper_bits_x(BITJOIN,125)@2
    assign i_arrayidx403_covariance0_append_upper_bits_x_q = {i_arrayidx403_covariance0_upper_bits_x_merged_bit_select_b, i_arrayidx403_covariance0_dupName_5_trunc_sel_x_b};

    // i_arrayidx403_covariance20_vt_select_63(BITSELECT,47)@2
    assign i_arrayidx403_covariance20_vt_select_63_b = i_arrayidx403_covariance0_append_upper_bits_x_q[63:2];

    // i_arrayidx403_covariance20_vt_const_1(CONSTANT,45)
    assign i_arrayidx403_covariance20_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx403_covariance20_vt_join(BITJOIN,46)@2
    assign i_arrayidx403_covariance20_vt_join_q = {i_arrayidx403_covariance20_vt_select_63_b, i_arrayidx403_covariance20_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_covariance5_covariance21(BLACKBOX,72)@2
    // in in_i_stall@20000000
    // out out_o_readdata@6
    // out out_o_stall@5
    // out out_o_valid@6
    // out out_unnamed_covariance5_covariance_avm_address@20000000
    // out out_unnamed_covariance5_covariance_avm_burstcount@20000000
    // out out_unnamed_covariance5_covariance_avm_byteenable@20000000
    // out out_unnamed_covariance5_covariance_avm_enable@20000000
    // out out_unnamed_covariance5_covariance_avm_read@20000000
    // out out_unnamed_covariance5_covariance_avm_write@20000000
    // out out_unnamed_covariance5_covariance_avm_writedata@20000000
    covariance_i_llvm_fpga_mem_unnamed_5_covariance0 thei_llvm_fpga_mem_unnamed_covariance5_covariance21 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx403_covariance20_vt_join_q),
        .in_i_predicate(i_first_cleanup_xor_covariance4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg9_q),
        .in_unnamed_covariance5_covariance_avm_readdata(in_unnamed_covariance5_covariance_avm_readdata),
        .in_unnamed_covariance5_covariance_avm_readdatavalid(in_unnamed_covariance5_covariance_avm_readdatavalid),
        .in_unnamed_covariance5_covariance_avm_waitrequest(in_unnamed_covariance5_covariance_avm_waitrequest),
        .in_unnamed_covariance5_covariance_avm_writeack(in_unnamed_covariance5_covariance_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_covariance5_covariance21_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_covariance5_covariance_avm_address(i_llvm_fpga_mem_unnamed_covariance5_covariance21_out_unnamed_covariance5_covariance_avm_address),
        .out_unnamed_covariance5_covariance_avm_burstcount(i_llvm_fpga_mem_unnamed_covariance5_covariance21_out_unnamed_covariance5_covariance_avm_burstcount),
        .out_unnamed_covariance5_covariance_avm_byteenable(i_llvm_fpga_mem_unnamed_covariance5_covariance21_out_unnamed_covariance5_covariance_avm_byteenable),
        .out_unnamed_covariance5_covariance_avm_enable(i_llvm_fpga_mem_unnamed_covariance5_covariance21_out_unnamed_covariance5_covariance_avm_enable),
        .out_unnamed_covariance5_covariance_avm_read(i_llvm_fpga_mem_unnamed_covariance5_covariance21_out_unnamed_covariance5_covariance_avm_read),
        .out_unnamed_covariance5_covariance_avm_write(i_llvm_fpga_mem_unnamed_covariance5_covariance21_out_unnamed_covariance5_covariance_avm_write),
        .out_unnamed_covariance5_covariance_avm_writedata(i_llvm_fpga_mem_unnamed_covariance5_covariance21_out_unnamed_covariance5_covariance_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,122)
    assign out_unnamed_covariance5_covariance_avm_address = i_llvm_fpga_mem_unnamed_covariance5_covariance21_out_unnamed_covariance5_covariance_avm_address;
    assign out_unnamed_covariance5_covariance_avm_enable = i_llvm_fpga_mem_unnamed_covariance5_covariance21_out_unnamed_covariance5_covariance_avm_enable;
    assign out_unnamed_covariance5_covariance_avm_read = i_llvm_fpga_mem_unnamed_covariance5_covariance21_out_unnamed_covariance5_covariance_avm_read;
    assign out_unnamed_covariance5_covariance_avm_write = i_llvm_fpga_mem_unnamed_covariance5_covariance21_out_unnamed_covariance5_covariance_avm_write;
    assign out_unnamed_covariance5_covariance_avm_writedata = i_llvm_fpga_mem_unnamed_covariance5_covariance21_out_unnamed_covariance5_covariance_avm_writedata;
    assign out_unnamed_covariance5_covariance_avm_byteenable = i_llvm_fpga_mem_unnamed_covariance5_covariance21_out_unnamed_covariance5_covariance_avm_byteenable;
    assign out_unnamed_covariance5_covariance_avm_burstcount = i_llvm_fpga_mem_unnamed_covariance5_covariance21_out_unnamed_covariance5_covariance_avm_burstcount;

    // valid_fanout_reg10(REG,191)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg4(REG,185)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg5(REG,186)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_j28_033_pop58108_push74_covariance13(BLACKBOX,96)@2
    // out out_feedback_out_74@20000000
    // out out_feedback_valid_out_74@20000000
    covariance_i_llvm_fpga_push_i32_j28_033_pop58108_push74_0 thei_llvm_fpga_push_i32_j28_033_pop58108_push74_covariance13 (
        .in_data_in(i_llvm_fpga_pop_i32_j28_033_pop58108_pop74_covariance12_out_data_out),
        .in_feedback_stall_in_74(i_llvm_fpga_pop_i32_j28_033_pop58108_pop74_covariance12_out_feedback_stall_out_74),
        .in_keep_going(redist26_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_74(i_llvm_fpga_push_i32_j28_033_pop58108_push74_covariance13_out_feedback_out_74),
        .out_feedback_valid_out_74(i_llvm_fpga_push_i32_j28_033_pop58108_push74_covariance13_out_feedback_valid_out_74),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together122_aunroll_x_in_c0_eni15_2_tpl_1(DELAY,257)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together122_aunroll_x_in_c0_eni15_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together122_aunroll_x_in_c0_eni15_2_tpl_1_q <= $unsigned(in_c0_eni15_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_j28_033_pop58108_pop74_covariance12(BLACKBOX,82)@2
    // out out_feedback_stall_out_74@20000000
    covariance_i_llvm_fpga_pop_i32_j28_033_pop58108_pop74_0 thei_llvm_fpga_pop_i32_j28_033_pop58108_pop74_covariance12 (
        .in_data_in(redist2_sync_together122_aunroll_x_in_c0_eni15_2_tpl_1_q),
        .in_dir(redist0_sync_together122_aunroll_x_in_c0_eni15_1_tpl_1_q),
        .in_feedback_in_74(i_llvm_fpga_push_i32_j28_033_pop58108_push74_covariance13_out_feedback_out_74),
        .in_feedback_valid_in_74(i_llvm_fpga_push_i32_j28_033_pop58108_push74_covariance13_out_feedback_valid_out_74),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_j28_033_pop58108_pop74_covariance12_out_data_out),
        .out_feedback_stall_out_74(i_llvm_fpga_pop_i32_j28_033_pop58108_pop74_covariance12_out_feedback_stall_out_74),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom43_covariance14_sel_x(BITSELECT,171)@2
    assign i_idxprom43_covariance14_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j28_033_pop58108_pop74_covariance12_out_data_out[31:0]};

    // i_idxprom43_covariance14_vt_select_31(BITSELECT,69)@2
    assign i_idxprom43_covariance14_vt_select_31_b = i_idxprom43_covariance14_sel_x_b[31:0];

    // i_idxprom43_covariance14_vt_join(BITJOIN,68)@2
    assign i_idxprom43_covariance14_vt_join_q = {c_i32_085_q, i_idxprom43_covariance14_vt_select_31_b};

    // i_arrayidx444_covariance0_dupName_3_trunc_sel_x(BITSELECT,162)@2
    assign i_arrayidx444_covariance0_dupName_3_trunc_sel_x_b = i_idxprom43_covariance14_vt_join_q[11:0];

    // i_arrayidx444_covariance0_dupName_0_narrow_x(BITSELECT,153)@2
    assign i_arrayidx444_covariance0_dupName_0_narrow_x_b = i_arrayidx444_covariance0_dupName_3_trunc_sel_x_b[9:0];

    // i_arrayidx444_covariance0_dupName_0_shift_join_x(BITJOIN,154)@2
    assign i_arrayidx444_covariance0_dupName_0_shift_join_x_q = {i_arrayidx444_covariance0_dupName_0_narrow_x_b, i_arrayidx403_covariance20_vt_const_1_q};

    // i_arrayidx444_covariance0_dupName_0_add_x(ADD,152)@2
    assign i_arrayidx444_covariance0_dupName_0_add_x_a = {1'b0, i_arrayidx403_covariance0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx444_covariance0_dupName_0_add_x_b = {1'b0, i_arrayidx444_covariance0_dupName_0_shift_join_x_q};
    assign i_arrayidx444_covariance0_dupName_0_add_x_o = $unsigned(i_arrayidx444_covariance0_dupName_0_add_x_a) + $unsigned(i_arrayidx444_covariance0_dupName_0_add_x_b);
    assign i_arrayidx444_covariance0_dupName_0_add_x_q = i_arrayidx444_covariance0_dupName_0_add_x_o[12:0];

    // i_arrayidx444_covariance0_dupName_5_trunc_sel_x(BITSELECT,163)@2
    assign i_arrayidx444_covariance0_dupName_5_trunc_sel_x_b = i_arrayidx444_covariance0_dupName_0_add_x_q[11:0];

    // i_arrayidx444_covariance0_append_upper_bits_x(BITJOIN,145)@2
    assign i_arrayidx444_covariance0_append_upper_bits_x_q = {i_arrayidx403_covariance0_upper_bits_x_merged_bit_select_b, i_arrayidx444_covariance0_dupName_5_trunc_sel_x_b};

    // i_arrayidx444_covariance23_vt_select_63(BITSELECT,50)@2
    assign i_arrayidx444_covariance23_vt_select_63_b = i_arrayidx444_covariance0_append_upper_bits_x_q[63:2];

    // i_arrayidx444_covariance23_vt_join(BITJOIN,49)@2
    assign i_arrayidx444_covariance23_vt_join_q = {i_arrayidx444_covariance23_vt_select_63_b, i_arrayidx403_covariance20_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_covariance6_covariance24(BLACKBOX,73)@2
    // in in_i_stall@20000000
    // out out_o_readdata@6
    // out out_o_stall@5
    // out out_o_valid@6
    // out out_unnamed_covariance6_covariance_avm_address@20000000
    // out out_unnamed_covariance6_covariance_avm_burstcount@20000000
    // out out_unnamed_covariance6_covariance_avm_byteenable@20000000
    // out out_unnamed_covariance6_covariance_avm_enable@20000000
    // out out_unnamed_covariance6_covariance_avm_read@20000000
    // out out_unnamed_covariance6_covariance_avm_write@20000000
    // out out_unnamed_covariance6_covariance_avm_writedata@20000000
    covariance_i_llvm_fpga_mem_unnamed_6_covariance0 thei_llvm_fpga_mem_unnamed_covariance6_covariance24 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx444_covariance23_vt_join_q),
        .in_i_predicate(i_first_cleanup_xor_covariance4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg10_q),
        .in_unnamed_covariance6_covariance_avm_readdata(in_unnamed_covariance6_covariance_avm_readdata),
        .in_unnamed_covariance6_covariance_avm_readdatavalid(in_unnamed_covariance6_covariance_avm_readdatavalid),
        .in_unnamed_covariance6_covariance_avm_waitrequest(in_unnamed_covariance6_covariance_avm_waitrequest),
        .in_unnamed_covariance6_covariance_avm_writeack(in_unnamed_covariance6_covariance_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_covariance6_covariance24_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_covariance6_covariance_avm_address(i_llvm_fpga_mem_unnamed_covariance6_covariance24_out_unnamed_covariance6_covariance_avm_address),
        .out_unnamed_covariance6_covariance_avm_burstcount(i_llvm_fpga_mem_unnamed_covariance6_covariance24_out_unnamed_covariance6_covariance_avm_burstcount),
        .out_unnamed_covariance6_covariance_avm_byteenable(i_llvm_fpga_mem_unnamed_covariance6_covariance24_out_unnamed_covariance6_covariance_avm_byteenable),
        .out_unnamed_covariance6_covariance_avm_enable(i_llvm_fpga_mem_unnamed_covariance6_covariance24_out_unnamed_covariance6_covariance_avm_enable),
        .out_unnamed_covariance6_covariance_avm_read(i_llvm_fpga_mem_unnamed_covariance6_covariance24_out_unnamed_covariance6_covariance_avm_read),
        .out_unnamed_covariance6_covariance_avm_write(i_llvm_fpga_mem_unnamed_covariance6_covariance24_out_unnamed_covariance6_covariance_avm_write),
        .out_unnamed_covariance6_covariance_avm_writedata(i_llvm_fpga_mem_unnamed_covariance6_covariance24_out_unnamed_covariance6_covariance_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,123)
    assign out_unnamed_covariance6_covariance_avm_address = i_llvm_fpga_mem_unnamed_covariance6_covariance24_out_unnamed_covariance6_covariance_avm_address;
    assign out_unnamed_covariance6_covariance_avm_enable = i_llvm_fpga_mem_unnamed_covariance6_covariance24_out_unnamed_covariance6_covariance_avm_enable;
    assign out_unnamed_covariance6_covariance_avm_read = i_llvm_fpga_mem_unnamed_covariance6_covariance24_out_unnamed_covariance6_covariance_avm_read;
    assign out_unnamed_covariance6_covariance_avm_write = i_llvm_fpga_mem_unnamed_covariance6_covariance24_out_unnamed_covariance6_covariance_avm_write;
    assign out_unnamed_covariance6_covariance_avm_writedata = i_llvm_fpga_mem_unnamed_covariance6_covariance24_out_unnamed_covariance6_covariance_avm_writedata;
    assign out_unnamed_covariance6_covariance_avm_byteenable = i_llvm_fpga_mem_unnamed_covariance6_covariance24_out_unnamed_covariance6_covariance_avm_byteenable;
    assign out_unnamed_covariance6_covariance_avm_burstcount = i_llvm_fpga_mem_unnamed_covariance6_covariance24_out_unnamed_covariance6_covariance_avm_burstcount;

    // redist17_sync_together122_aunroll_x_in_i_valid_8(DELAY,272)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist17_sync_together122_aunroll_x_in_i_valid_8 ( .xin(redist16_sync_together122_aunroll_x_in_i_valid_1_q), .xout(redist17_sync_together122_aunroll_x_in_i_valid_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg0(REG,181)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist17_sync_together122_aunroll_x_in_i_valid_8_q);
        end
    end

    // redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_notEnable(LOGICAL,342)
    assign redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_nor(LOGICAL,343)
    assign redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_nor_q = ~ (redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_notEnable_q | redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_sticky_ena_q);

    // redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_mem_last(CONSTANT,339)
    assign redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_mem_last_q = $unsigned(4'b0110);

    // redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_cmp(LOGICAL,340)
    assign redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_cmp_b = {1'b0, redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_rdcnt_q};
    assign redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_cmp_q = $unsigned(redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_mem_last_q == redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_cmpReg(REG,341)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_cmpReg_q <= $unsigned(redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_cmp_q);
        end
    end

    // redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_sticky_ena(REG,344)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_nor_q == 1'b1)
        begin
            redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_sticky_ena_q <= $unsigned(redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_cmpReg_q);
        end
    end

    // redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_enaAnd(LOGICAL,345)
    assign redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_enaAnd_q = redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_sticky_ena_q & VCC_q;

    // redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_rdcnt(COUNTER,337)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_rdcnt_i <= 3'd0;
        end
        else
        begin
            redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_rdcnt_i <= $unsigned(redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_rdcnt_i) + $unsigned(3'd1);
        end
    end
    assign redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_rdcnt_q = redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_rdcnt_i[2:0];

    // redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_wraddr(REG,338)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_wraddr_q <= $unsigned(3'b111);
        end
        else
        begin
            redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_wraddr_q <= $unsigned(redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_rdcnt_q);
        end
    end

    // redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_mem(DUALMEM,336)
    assign redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_mem_ia = $unsigned(in_c0_eni15_15_tpl);
    assign redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_mem_aa = redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_wraddr_q;
    assign redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_mem_ab = redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_rdcnt_q;
    assign redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(8),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(8),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_mem_dmem (
        .clocken1(redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_mem_aa),
        .data_a(redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_mem_ab),
        .q_b(redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_mem_q = redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_mem_iq[31:0];

    // redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_notEnable(LOGICAL,332)
    assign redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_nor(LOGICAL,333)
    assign redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_nor_q = ~ (redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_notEnable_q | redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_sticky_ena_q);

    // redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_mem_last(CONSTANT,329)
    assign redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_mem_last_q = $unsigned(4'b0110);

    // redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_cmp(LOGICAL,330)
    assign redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_cmp_b = {1'b0, redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_rdcnt_q};
    assign redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_cmp_q = $unsigned(redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_mem_last_q == redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_cmpReg(REG,331)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_cmpReg_q <= $unsigned(redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_cmp_q);
        end
    end

    // redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_sticky_ena(REG,334)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_nor_q == 1'b1)
        begin
            redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_sticky_ena_q <= $unsigned(redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_cmpReg_q);
        end
    end

    // redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_enaAnd(LOGICAL,335)
    assign redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_enaAnd_q = redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_sticky_ena_q & VCC_q;

    // redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_rdcnt(COUNTER,327)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_rdcnt_i <= 3'd0;
        end
        else
        begin
            redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_rdcnt_i <= $unsigned(redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_rdcnt_i) + $unsigned(3'd1);
        end
    end
    assign redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_rdcnt_q = redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_rdcnt_i[2:0];

    // redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_wraddr(REG,328)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_wraddr_q <= $unsigned(3'b111);
        end
        else
        begin
            redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_wraddr_q <= $unsigned(redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_rdcnt_q);
        end
    end

    // redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_mem(DUALMEM,326)
    assign redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_mem_ia = $unsigned(in_c0_eni15_14_tpl);
    assign redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_mem_aa = redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_wraddr_q;
    assign redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_mem_ab = redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_rdcnt_q;
    assign redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(8),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(8),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_mem_dmem (
        .clocken1(redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_mem_aa),
        .data_a(redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_mem_ab),
        .q_b(redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_mem_q = redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_mem_iq[31:0];

    // redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_notEnable(LOGICAL,322)
    assign redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_nor(LOGICAL,323)
    assign redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_nor_q = ~ (redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_notEnable_q | redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_sticky_ena_q);

    // redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_mem_last(CONSTANT,319)
    assign redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_mem_last_q = $unsigned(4'b0110);

    // redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_cmp(LOGICAL,320)
    assign redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_cmp_b = {1'b0, redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_rdcnt_q};
    assign redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_cmp_q = $unsigned(redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_mem_last_q == redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_cmpReg(REG,321)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_cmpReg_q <= $unsigned(redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_cmp_q);
        end
    end

    // redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_sticky_ena(REG,324)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_nor_q == 1'b1)
        begin
            redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_sticky_ena_q <= $unsigned(redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_cmpReg_q);
        end
    end

    // redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_enaAnd(LOGICAL,325)
    assign redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_enaAnd_q = redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_sticky_ena_q & VCC_q;

    // redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_rdcnt(COUNTER,317)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_rdcnt_i <= 3'd0;
        end
        else
        begin
            redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_rdcnt_i <= $unsigned(redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_rdcnt_i) + $unsigned(3'd1);
        end
    end
    assign redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_rdcnt_q = redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_rdcnt_i[2:0];

    // redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_wraddr(REG,318)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_wraddr_q <= $unsigned(3'b111);
        end
        else
        begin
            redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_wraddr_q <= $unsigned(redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_rdcnt_q);
        end
    end

    // redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_mem(DUALMEM,316)
    assign redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_mem_ia = $unsigned(in_c0_eni15_13_tpl);
    assign redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_mem_aa = redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_wraddr_q;
    assign redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_mem_ab = redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_rdcnt_q;
    assign redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(8),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(8),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_mem_dmem (
        .clocken1(redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_mem_aa),
        .data_a(redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_mem_ab),
        .q_b(redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_mem_q = redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_mem_iq[31:0];

    // redist12_sync_together122_aunroll_x_in_c0_eni15_12_tpl_9(DELAY,267)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist12_sync_together122_aunroll_x_in_c0_eni15_12_tpl_9 ( .xin(in_c0_eni15_12_tpl), .xout(redist12_sync_together122_aunroll_x_in_c0_eni15_12_tpl_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_notEnable(LOGICAL,312)
    assign redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_nor(LOGICAL,313)
    assign redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_nor_q = ~ (redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_notEnable_q | redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_sticky_ena_q);

    // redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_mem_last(CONSTANT,309)
    assign redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_mem_last_q = $unsigned(4'b0110);

    // redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_cmp(LOGICAL,310)
    assign redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_cmp_b = {1'b0, redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_rdcnt_q};
    assign redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_cmp_q = $unsigned(redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_mem_last_q == redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_cmpReg(REG,311)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_cmpReg_q <= $unsigned(redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_cmp_q);
        end
    end

    // redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_sticky_ena(REG,314)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_nor_q == 1'b1)
        begin
            redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_sticky_ena_q <= $unsigned(redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_cmpReg_q);
        end
    end

    // redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_enaAnd(LOGICAL,315)
    assign redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_enaAnd_q = redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_sticky_ena_q & VCC_q;

    // redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_rdcnt(COUNTER,307)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_rdcnt_i <= 3'd0;
        end
        else
        begin
            redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_rdcnt_i <= $unsigned(redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_rdcnt_i) + $unsigned(3'd1);
        end
    end
    assign redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_rdcnt_q = redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_rdcnt_i[2:0];

    // redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_wraddr(REG,308)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_wraddr_q <= $unsigned(3'b111);
        end
        else
        begin
            redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_wraddr_q <= $unsigned(redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_rdcnt_q);
        end
    end

    // redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_mem(DUALMEM,306)
    assign redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_mem_ia = $unsigned(in_c0_eni15_11_tpl);
    assign redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_mem_aa = redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_wraddr_q;
    assign redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_mem_ab = redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_rdcnt_q;
    assign redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(33),
        .widthad_a(3),
        .numwords_a(8),
        .width_b(33),
        .widthad_b(3),
        .numwords_b(8),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_mem_dmem (
        .clocken1(redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_mem_aa),
        .data_a(redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_mem_ab),
        .q_b(redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_mem_q = redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_mem_iq[32:0];

    // redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_notEnable(LOGICAL,302)
    assign redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_nor(LOGICAL,303)
    assign redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_nor_q = ~ (redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_notEnable_q | redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_sticky_ena_q);

    // redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_mem_last(CONSTANT,299)
    assign redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_mem_last_q = $unsigned(4'b0110);

    // redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_cmp(LOGICAL,300)
    assign redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_cmp_b = {1'b0, redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_rdcnt_q};
    assign redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_cmp_q = $unsigned(redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_mem_last_q == redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_cmpReg(REG,301)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_cmpReg_q <= $unsigned(redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_cmp_q);
        end
    end

    // redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_sticky_ena(REG,304)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_nor_q == 1'b1)
        begin
            redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_sticky_ena_q <= $unsigned(redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_cmpReg_q);
        end
    end

    // redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_enaAnd(LOGICAL,305)
    assign redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_enaAnd_q = redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_sticky_ena_q & VCC_q;

    // redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_rdcnt(COUNTER,297)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_rdcnt_i <= 3'd0;
        end
        else
        begin
            redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_rdcnt_i <= $unsigned(redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_rdcnt_i) + $unsigned(3'd1);
        end
    end
    assign redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_rdcnt_q = redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_rdcnt_i[2:0];

    // redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_wraddr(REG,298)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_wraddr_q <= $unsigned(3'b111);
        end
        else
        begin
            redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_wraddr_q <= $unsigned(redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_rdcnt_q);
        end
    end

    // redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_mem(DUALMEM,296)
    assign redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_mem_ia = $unsigned(in_c0_eni15_10_tpl);
    assign redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_mem_aa = redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_wraddr_q;
    assign redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_mem_ab = redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_rdcnt_q;
    assign redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(8),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(8),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_mem_dmem (
        .clocken1(redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_mem_aa),
        .data_a(redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_mem_ab),
        .q_b(redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_mem_q = redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_mem_iq[31:0];

    // redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_notEnable(LOGICAL,292)
    assign redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_nor(LOGICAL,293)
    assign redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_nor_q = ~ (redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_notEnable_q | redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_sticky_ena_q);

    // redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_mem_last(CONSTANT,289)
    assign redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_mem_last_q = $unsigned(4'b0110);

    // redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_cmp(LOGICAL,290)
    assign redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_cmp_b = {1'b0, redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_rdcnt_q};
    assign redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_cmp_q = $unsigned(redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_mem_last_q == redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_cmpReg(REG,291)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_cmpReg_q <= $unsigned(redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_cmp_q);
        end
    end

    // redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_sticky_ena(REG,294)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_nor_q == 1'b1)
        begin
            redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_sticky_ena_q <= $unsigned(redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_cmpReg_q);
        end
    end

    // redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_enaAnd(LOGICAL,295)
    assign redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_enaAnd_q = redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_sticky_ena_q & VCC_q;

    // redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_rdcnt(COUNTER,287)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_rdcnt_i <= 3'd0;
        end
        else
        begin
            redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_rdcnt_i <= $unsigned(redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_rdcnt_i) + $unsigned(3'd1);
        end
    end
    assign redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_rdcnt_q = redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_rdcnt_i[2:0];

    // redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_wraddr(REG,288)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_wraddr_q <= $unsigned(3'b111);
        end
        else
        begin
            redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_wraddr_q <= $unsigned(redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_rdcnt_q);
        end
    end

    // redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_mem(DUALMEM,286)
    assign redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_mem_ia = $unsigned(in_c0_eni15_9_tpl);
    assign redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_mem_aa = redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_wraddr_q;
    assign redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_mem_ab = redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_rdcnt_q;
    assign redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(8),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(8),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_mem_dmem (
        .clocken1(redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_mem_aa),
        .data_a(redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_mem_ab),
        .q_b(redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_mem_q = redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_mem_iq[31:0];

    // valid_fanout_reg22(REG,203)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg22_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist17_sync_together122_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg23(REG,204)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(redist17_sync_together122_aunroll_x_in_i_valid_8_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp22107_push73_covariance52(BLACKBOX,89)@10
    // out out_feedback_out_73@20000000
    // out out_feedback_valid_out_73@20000000
    covariance_i_llvm_fpga_push_i1_notcmp22107_push73_0 thei_llvm_fpga_push_i1_notcmp22107_push73_covariance52 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp22107_pop73_covariance51_out_data_out),
        .in_feedback_stall_in_73(i_llvm_fpga_pop_i1_notcmp22107_pop73_covariance51_out_feedback_stall_out_73),
        .in_keep_going(redist28_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_9_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(),
        .out_feedback_out_73(i_llvm_fpga_push_i1_notcmp22107_push73_covariance52_out_feedback_out_73),
        .out_feedback_valid_out_73(i_llvm_fpga_push_i1_notcmp22107_push73_covariance52_out_feedback_valid_out_73),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together122_aunroll_x_in_c0_eni15_1_tpl_9(DELAY,256)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist1_sync_together122_aunroll_x_in_c0_eni15_1_tpl_9 ( .xin(redist0_sync_together122_aunroll_x_in_c0_eni15_1_tpl_1_q), .xout(redist1_sync_together122_aunroll_x_in_c0_eni15_1_tpl_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist8_sync_together122_aunroll_x_in_c0_eni15_8_tpl_9(DELAY,263)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist8_sync_together122_aunroll_x_in_c0_eni15_8_tpl_9 ( .xin(in_c0_eni15_8_tpl), .xout(redist8_sync_together122_aunroll_x_in_c0_eni15_8_tpl_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i1_notcmp22107_pop73_covariance51(BLACKBOX,76)@10
    // out out_feedback_stall_out_73@20000000
    covariance_i_llvm_fpga_pop_i1_notcmp22107_pop73_0 thei_llvm_fpga_pop_i1_notcmp22107_pop73_covariance51 (
        .in_data_in(redist8_sync_together122_aunroll_x_in_c0_eni15_8_tpl_9_q),
        .in_dir(redist1_sync_together122_aunroll_x_in_c0_eni15_1_tpl_9_q),
        .in_feedback_in_73(i_llvm_fpga_push_i1_notcmp22107_push73_covariance52_out_feedback_out_73),
        .in_feedback_valid_in_73(i_llvm_fpga_push_i1_notcmp22107_push73_covariance52_out_feedback_valid_out_73),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp22107_pop73_covariance51_out_data_out),
        .out_feedback_stall_out_73(i_llvm_fpga_pop_i1_notcmp22107_pop73_covariance51_out_feedback_stall_out_73),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg20(REG,201)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg20_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist17_sync_together122_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg21(REG,202)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist17_sync_together122_aunroll_x_in_i_valid_8_q);
        end
    end

    // i_llvm_fpga_push_i1_forked23106_push72_covariance50(BLACKBOX,87)@10
    // out out_feedback_out_72@20000000
    // out out_feedback_valid_out_72@20000000
    covariance_i_llvm_fpga_push_i1_forked23106_push72_0 thei_llvm_fpga_push_i1_forked23106_push72_covariance50 (
        .in_data_in(i_llvm_fpga_pop_i1_forked23106_pop72_covariance49_out_data_out),
        .in_feedback_stall_in_72(i_llvm_fpga_pop_i1_forked23106_pop72_covariance49_out_feedback_stall_out_72),
        .in_keep_going(redist28_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_9_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(),
        .out_feedback_out_72(i_llvm_fpga_push_i1_forked23106_push72_covariance50_out_feedback_out_72),
        .out_feedback_valid_out_72(i_llvm_fpga_push_i1_forked23106_push72_covariance50_out_feedback_valid_out_72),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together122_aunroll_x_in_c0_eni15_7_tpl_9(DELAY,262)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist7_sync_together122_aunroll_x_in_c0_eni15_7_tpl_9 ( .xin(in_c0_eni15_7_tpl), .xout(redist7_sync_together122_aunroll_x_in_c0_eni15_7_tpl_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i1_forked23106_pop72_covariance49(BLACKBOX,75)@10
    // out out_feedback_stall_out_72@20000000
    covariance_i_llvm_fpga_pop_i1_forked23106_pop72_0 thei_llvm_fpga_pop_i1_forked23106_pop72_covariance49 (
        .in_data_in(redist7_sync_together122_aunroll_x_in_c0_eni15_7_tpl_9_q),
        .in_dir(redist1_sync_together122_aunroll_x_in_c0_eni15_1_tpl_9_q),
        .in_feedback_in_72(i_llvm_fpga_push_i1_forked23106_push72_covariance50_out_feedback_out_72),
        .in_feedback_valid_in_72(i_llvm_fpga_push_i1_forked23106_push72_covariance50_out_feedback_valid_out_72),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(i_llvm_fpga_pop_i1_forked23106_pop72_covariance49_out_data_out),
        .out_feedback_stall_out_72(i_llvm_fpga_pop_i1_forked23106_pop72_covariance49_out_feedback_stall_out_72),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg18(REG,199)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg19(REG,200)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist16_sync_together122_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist27_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_2(DELAY,282)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist27_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_2_q <= $unsigned(redist26_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_1_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp27103_push70_covariance48(BLACKBOX,90)@3
    // out out_feedback_out_70@20000000
    // out out_feedback_valid_out_70@20000000
    covariance_i_llvm_fpga_push_i1_notcmp27103_push70_0 thei_llvm_fpga_push_i1_notcmp27103_push70_covariance48 (
        .in_data_in(redist24_i_llvm_fpga_pop_i1_notcmp27103_pop70_covariance47_out_data_out_1_q),
        .in_feedback_stall_in_70(i_llvm_fpga_pop_i1_notcmp27103_pop70_covariance47_out_feedback_stall_out_70),
        .in_keep_going(redist27_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(),
        .out_feedback_out_70(i_llvm_fpga_push_i1_notcmp27103_push70_covariance48_out_feedback_out_70),
        .out_feedback_valid_out_70(i_llvm_fpga_push_i1_notcmp27103_push70_covariance48_out_feedback_valid_out_70),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together122_aunroll_x_in_c0_eni15_6_tpl_1(DELAY,261)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together122_aunroll_x_in_c0_eni15_6_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together122_aunroll_x_in_c0_eni15_6_tpl_1_q <= $unsigned(in_c0_eni15_6_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp27103_pop70_covariance47(BLACKBOX,77)@2
    // out out_feedback_stall_out_70@20000000
    covariance_i_llvm_fpga_pop_i1_notcmp27103_pop70_0 thei_llvm_fpga_pop_i1_notcmp27103_pop70_covariance47 (
        .in_data_in(redist6_sync_together122_aunroll_x_in_c0_eni15_6_tpl_1_q),
        .in_dir(redist0_sync_together122_aunroll_x_in_c0_eni15_1_tpl_1_q),
        .in_feedback_in_70(i_llvm_fpga_push_i1_notcmp27103_push70_covariance48_out_feedback_out_70),
        .in_feedback_valid_in_70(i_llvm_fpga_push_i1_notcmp27103_push70_covariance48_out_feedback_valid_out_70),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp27103_pop70_covariance47_out_data_out),
        .out_feedback_stall_out_70(i_llvm_fpga_pop_i1_notcmp27103_pop70_covariance47_out_feedback_stall_out_70),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist24_i_llvm_fpga_pop_i1_notcmp27103_pop70_covariance47_out_data_out_1(DELAY,279)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_llvm_fpga_pop_i1_notcmp27103_pop70_covariance47_out_data_out_1_q <= '0;
        end
        else
        begin
            redist24_i_llvm_fpga_pop_i1_notcmp27103_pop70_covariance47_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_notcmp27103_pop70_covariance47_out_data_out);
        end
    end

    // redist25_i_llvm_fpga_pop_i1_notcmp27103_pop70_covariance47_out_data_out_8(DELAY,280)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist25_i_llvm_fpga_pop_i1_notcmp27103_pop70_covariance47_out_data_out_8 ( .xin(redist24_i_llvm_fpga_pop_i1_notcmp27103_pop70_covariance47_out_data_out_1_q), .xout(redist25_i_llvm_fpga_pop_i1_notcmp27103_pop70_covariance47_out_data_out_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_notEnable(LOGICAL,352)
    assign redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_notEnable_q = $unsigned(~ (VCC_q));

    // redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_nor(LOGICAL,353)
    assign redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_nor_q = ~ (redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_notEnable_q | redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_sticky_ena_q);

    // redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_mem_last(CONSTANT,349)
    assign redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_mem_last_q = $unsigned(4'b0101);

    // redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_cmp(LOGICAL,350)
    assign redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_cmp_b = {1'b0, redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_rdcnt_q};
    assign redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_cmp_q = $unsigned(redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_mem_last_q == redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_cmp_b ? 1'b1 : 1'b0);

    // redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_cmpReg(REG,351)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_cmpReg_q <= $unsigned(redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_cmp_q);
        end
    end

    // redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_sticky_ena(REG,354)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_nor_q == 1'b1)
        begin
            redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_sticky_ena_q <= $unsigned(redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_cmpReg_q);
        end
    end

    // redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_enaAnd(LOGICAL,355)
    assign redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_enaAnd_q = redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_sticky_ena_q & VCC_q;

    // redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_rdcnt(COUNTER,347)
    // low=0, high=6, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_rdcnt_i <= 3'd0;
            redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_rdcnt_i == 3'd5)
            begin
                redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_rdcnt_eq <= 1'b0;
            end
            if (redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_rdcnt_eq == 1'b1)
            begin
                redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_rdcnt_i <= $unsigned(redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_rdcnt_i) + $unsigned(3'd2);
            end
            else
            begin
                redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_rdcnt_i <= $unsigned(redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_rdcnt_q = redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_rdcnt_i[2:0];

    // valid_fanout_reg16(REG,197)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg17(REG,198)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_reorder_limiter_enter93_push69_covariance46(BLACKBOX,99)@2
    // out out_feedback_out_69@20000000
    // out out_feedback_valid_out_69@20000000
    covariance_i_llvm_fpga_push_i32_reorder_limiter_enter93_push69_0 thei_llvm_fpga_push_i32_reorder_limiter_enter93_push69_covariance46 (
        .in_data_in(i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out),
        .in_feedback_stall_in_69(i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_feedback_stall_out_69),
        .in_keep_going(redist26_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(),
        .out_feedback_out_69(i_llvm_fpga_push_i32_reorder_limiter_enter93_push69_covariance46_out_feedback_out_69),
        .out_feedback_valid_out_69(i_llvm_fpga_push_i32_reorder_limiter_enter93_push69_covariance46_out_feedback_valid_out_69),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together122_aunroll_x_in_c0_eni15_5_tpl_1(DELAY,260)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together122_aunroll_x_in_c0_eni15_5_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together122_aunroll_x_in_c0_eni15_5_tpl_1_q <= $unsigned(in_c0_eni15_5_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45(BLACKBOX,85)@2
    // out out_feedback_stall_out_69@20000000
    covariance_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_0 thei_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45 (
        .in_data_in(redist5_sync_together122_aunroll_x_in_c0_eni15_5_tpl_1_q),
        .in_dir(redist0_sync_together122_aunroll_x_in_c0_eni15_1_tpl_1_q),
        .in_feedback_in_69(i_llvm_fpga_push_i32_reorder_limiter_enter93_push69_covariance46_out_feedback_out_69),
        .in_feedback_valid_in_69(i_llvm_fpga_push_i32_reorder_limiter_enter93_push69_covariance46_out_feedback_valid_out_69),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out),
        .out_feedback_stall_out_69(i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_feedback_stall_out_69),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_wraddr(REG,348)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_wraddr_q <= $unsigned(3'b110);
        end
        else
        begin
            redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_wraddr_q <= $unsigned(redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_rdcnt_q);
        end
    end

    // redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_mem(DUALMEM,346)
    assign redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_mem_ia = $unsigned(i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out);
    assign redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_mem_aa = redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_wraddr_q;
    assign redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_mem_ab = redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_rdcnt_q;
    assign redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(7),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(7),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_mem_dmem (
        .clocken1(redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_mem_reset0),
        .clock1(clock),
        .address_a(redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_mem_aa),
        .data_a(redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_mem_ab),
        .q_b(redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_mem_q = redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_mem_iq[31:0];

    // redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_notEnable(LOGICAL,362)
    assign redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_notEnable_q = $unsigned(~ (VCC_q));

    // redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_nor(LOGICAL,363)
    assign redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_nor_q = ~ (redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_notEnable_q | redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_sticky_ena_q);

    // redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_mem_last(CONSTANT,359)
    assign redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_mem_last_q = $unsigned(4'b0101);

    // redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_cmp(LOGICAL,360)
    assign redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_cmp_b = {1'b0, redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_rdcnt_q};
    assign redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_cmp_q = $unsigned(redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_mem_last_q == redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_cmp_b ? 1'b1 : 1'b0);

    // redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_cmpReg(REG,361)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_cmpReg_q <= $unsigned(redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_cmp_q);
        end
    end

    // redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_sticky_ena(REG,364)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_nor_q == 1'b1)
        begin
            redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_sticky_ena_q <= $unsigned(redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_cmpReg_q);
        end
    end

    // redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_enaAnd(LOGICAL,365)
    assign redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_enaAnd_q = redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_sticky_ena_q & VCC_q;

    // redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_rdcnt(COUNTER,357)
    // low=0, high=6, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_rdcnt_i <= 3'd0;
            redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_rdcnt_i == 3'd5)
            begin
                redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_rdcnt_eq <= 1'b0;
            end
            if (redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_rdcnt_eq == 1'b1)
            begin
                redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_rdcnt_i <= $unsigned(redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_rdcnt_i) + $unsigned(3'd2);
            end
            else
            begin
                redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_rdcnt_i <= $unsigned(redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_rdcnt_q = redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_rdcnt_i[2:0];

    // valid_fanout_reg14(REG,195)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg15(REG,196)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_lim_ext80_push68_covariance44(BLACKBOX,98)@2
    // out out_feedback_out_68@20000000
    // out out_feedback_valid_out_68@20000000
    covariance_i_llvm_fpga_push_i32_lim_ext80_push68_0 thei_llvm_fpga_push_i32_lim_ext80_push68_covariance44 (
        .in_data_in(i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out),
        .in_feedback_stall_in_68(i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_feedback_stall_out_68),
        .in_keep_going(redist26_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_68(i_llvm_fpga_push_i32_lim_ext80_push68_covariance44_out_feedback_out_68),
        .out_feedback_valid_out_68(i_llvm_fpga_push_i32_lim_ext80_push68_covariance44_out_feedback_valid_out_68),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together122_aunroll_x_in_c0_eni15_4_tpl_1(DELAY,259)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together122_aunroll_x_in_c0_eni15_4_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together122_aunroll_x_in_c0_eni15_4_tpl_1_q <= $unsigned(in_c0_eni15_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43(BLACKBOX,84)@2
    // out out_feedback_stall_out_68@20000000
    covariance_i_llvm_fpga_pop_i32_lim_ext80_pop68_0 thei_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43 (
        .in_data_in(redist4_sync_together122_aunroll_x_in_c0_eni15_4_tpl_1_q),
        .in_dir(redist0_sync_together122_aunroll_x_in_c0_eni15_1_tpl_1_q),
        .in_feedback_in_68(i_llvm_fpga_push_i32_lim_ext80_push68_covariance44_out_feedback_out_68),
        .in_feedback_valid_in_68(i_llvm_fpga_push_i32_lim_ext80_push68_covariance44_out_feedback_valid_out_68),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out),
        .out_feedback_stall_out_68(i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_feedback_stall_out_68),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_wraddr(REG,358)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_wraddr_q <= $unsigned(3'b110);
        end
        else
        begin
            redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_wraddr_q <= $unsigned(redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_rdcnt_q);
        end
    end

    // redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_mem(DUALMEM,356)
    assign redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_mem_ia = $unsigned(i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out);
    assign redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_mem_aa = redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_wraddr_q;
    assign redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_mem_ab = redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_rdcnt_q;
    assign redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(7),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(7),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_mem_dmem (
        .clocken1(redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_mem_reset0),
        .clock1(clock),
        .address_a(redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_mem_aa),
        .data_a(redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_mem_ab),
        .q_b(redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_mem_q = redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_mem_iq[31:0];

    // i_masked_covariance42(LOGICAL,101)@2 + 1
    assign i_masked_covariance42_qi = i_notcmp_covariance35_q & i_first_cleanup_covariance3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_covariance42_delay ( .xin(i_masked_covariance42_qi), .xout(i_masked_covariance42_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist21_i_masked_covariance42_q_8(DELAY,276)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist21_i_masked_covariance42_q_8 ( .xin(i_masked_covariance42_q), .xout(redist21_i_masked_covariance42_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg11(REG,192)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist17_sync_together122_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg12(REG,193)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist17_sync_together122_aunroll_x_in_i_valid_8_q);
        end
    end

    // i_llvm_fpga_push_i32_c_030_push65_covariance29(BLACKBOX,94)@10
    // out out_feedback_out_65@20000000
    // out out_feedback_valid_out_65@20000000
    covariance_i_llvm_fpga_push_i32_c_030_push65_0 thei_llvm_fpga_push_i32_c_030_push65_covariance29 (
        .in_data_in(bgTrunc_i_add46_covariance28_sel_x_b),
        .in_feedback_stall_in_65(i_llvm_fpga_pop_i32_c_030_pop65_covariance27_out_feedback_stall_out_65),
        .in_keep_going(redist28_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_9_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_65(i_llvm_fpga_push_i32_c_030_push65_covariance29_out_feedback_out_65),
        .out_feedback_valid_out_65(i_llvm_fpga_push_i32_c_030_push65_covariance29_out_feedback_valid_out_65),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_c_030_pop65_covariance27(BLACKBOX,80)@10
    // out out_feedback_stall_out_65@20000000
    covariance_i_llvm_fpga_pop_i32_c_030_pop65_0 thei_llvm_fpga_pop_i32_c_030_pop65_covariance27 (
        .in_data_in(c_i32_085_q),
        .in_dir(redist1_sync_together122_aunroll_x_in_c0_eni15_1_tpl_9_q),
        .in_feedback_in_65(i_llvm_fpga_push_i32_c_030_push65_covariance29_out_feedback_out_65),
        .in_feedback_valid_in_65(i_llvm_fpga_push_i32_c_030_push65_covariance29_out_feedback_valid_out_65),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i32_c_030_pop65_covariance27_out_data_out),
        .out_feedback_stall_out_65(i_llvm_fpga_pop_i32_c_030_pop65_covariance27_out_feedback_stall_out_65),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul45_covariance26_bs4(BITSELECT,224)@6
    assign i_mul45_covariance26_bs4_in = i_llvm_fpga_mem_unnamed_covariance6_covariance24_out_o_readdata[17:0];
    assign i_mul45_covariance26_bs4_b = i_mul45_covariance26_bs4_in[17:0];

    // i_mul45_covariance26_bs2(BITSELECT,222)@6
    assign i_mul45_covariance26_bs2_b = i_llvm_fpga_mem_unnamed_covariance5_covariance21_out_o_readdata[31:18];

    // i_mul45_covariance26_bs7(BITSELECT,227)@6
    assign i_mul45_covariance26_bs7_in = i_llvm_fpga_mem_unnamed_covariance5_covariance21_out_o_readdata[17:0];
    assign i_mul45_covariance26_bs7_b = i_mul45_covariance26_bs7_in[17:0];

    // i_mul45_covariance26_bs1(BITSELECT,221)@6
    assign i_mul45_covariance26_bs1_b = i_llvm_fpga_mem_unnamed_covariance6_covariance24_out_o_readdata[31:18];

    // i_mul45_covariance26_ma3_cma(CHAINMULTADD,253)@6 + 3
    assign i_mul45_covariance26_ma3_cma_reset = ~ (resetn);
    assign i_mul45_covariance26_ma3_cma_ena0 = 1'b1;
    assign i_mul45_covariance26_ma3_cma_ena1 = i_mul45_covariance26_ma3_cma_ena0;
    assign i_mul45_covariance26_ma3_cma_ena2 = i_mul45_covariance26_ma3_cma_ena0;

    assign i_mul45_covariance26_ma3_cma_a0 = i_mul45_covariance26_bs1_b;
    assign i_mul45_covariance26_ma3_cma_c0 = i_mul45_covariance26_bs7_b;
    assign i_mul45_covariance26_ma3_cma_a1 = i_mul45_covariance26_bs2_b;
    assign i_mul45_covariance26_ma3_cma_c1 = i_mul45_covariance26_bs4_b;
    twentynm_mac #(
        .operation_mode("m18x18_sumof2"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .by_clock("0"),
        .by_width(14),
        .ax_clock("0"),
        .bx_clock("0"),
        .ax_width(18),
        .bx_width(18),
        .signed_may("false"),
        .signed_mby("false"),
        .signed_max("false"),
        .signed_mbx("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(33)
    ) i_mul45_covariance26_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul45_covariance26_ma3_cma_ena2, i_mul45_covariance26_ma3_cma_ena1, i_mul45_covariance26_ma3_cma_ena0 }),
        .aclr({ i_mul45_covariance26_ma3_cma_reset, i_mul45_covariance26_ma3_cma_reset }),
        .ay(i_mul45_covariance26_ma3_cma_a1),
        .by(i_mul45_covariance26_ma3_cma_a0),
        .ax(i_mul45_covariance26_ma3_cma_c1),
        .bx(i_mul45_covariance26_ma3_cma_c0),
        .resulta(i_mul45_covariance26_ma3_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul45_covariance26_ma3_cma_delay ( .xin(i_mul45_covariance26_ma3_cma_s0), .xout(i_mul45_covariance26_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul45_covariance26_ma3_cma_q = $unsigned(i_mul45_covariance26_ma3_cma_qq[32:0]);

    // i_mul45_covariance26_sums_align_1(BITSHIFT,232)@9
    assign i_mul45_covariance26_sums_align_1_qint = { i_mul45_covariance26_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul45_covariance26_sums_align_1_q = i_mul45_covariance26_sums_align_1_qint[50:0];

    // i_mul45_covariance26_im0_cma(CHAINMULTADD,251)@6 + 3
    assign i_mul45_covariance26_im0_cma_reset = ~ (resetn);
    assign i_mul45_covariance26_im0_cma_ena0 = 1'b1;
    assign i_mul45_covariance26_im0_cma_ena1 = i_mul45_covariance26_im0_cma_ena0;
    assign i_mul45_covariance26_im0_cma_ena2 = i_mul45_covariance26_im0_cma_ena0;

    assign i_mul45_covariance26_im0_cma_a0 = i_mul45_covariance26_bs1_b;
    assign i_mul45_covariance26_im0_cma_c0 = i_mul45_covariance26_bs2_b;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .ax_clock("0"),
        .ax_width(14),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(28)
    ) i_mul45_covariance26_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul45_covariance26_im0_cma_ena2, i_mul45_covariance26_im0_cma_ena1, i_mul45_covariance26_im0_cma_ena0 }),
        .aclr({ i_mul45_covariance26_im0_cma_reset, i_mul45_covariance26_im0_cma_reset }),
        .ay(i_mul45_covariance26_im0_cma_a0),
        .ax(i_mul45_covariance26_im0_cma_c0),
        .resulta(i_mul45_covariance26_im0_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul45_covariance26_im0_cma_delay ( .xin(i_mul45_covariance26_im0_cma_s0), .xout(i_mul45_covariance26_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul45_covariance26_im0_cma_q = $unsigned(i_mul45_covariance26_im0_cma_qq[27:0]);

    // i_mul45_covariance26_im8_cma(CHAINMULTADD,252)@6 + 3
    assign i_mul45_covariance26_im8_cma_reset = ~ (resetn);
    assign i_mul45_covariance26_im8_cma_ena0 = 1'b1;
    assign i_mul45_covariance26_im8_cma_ena1 = i_mul45_covariance26_im8_cma_ena0;
    assign i_mul45_covariance26_im8_cma_ena2 = i_mul45_covariance26_im8_cma_ena0;

    assign i_mul45_covariance26_im8_cma_a0 = i_mul45_covariance26_bs4_b;
    assign i_mul45_covariance26_im8_cma_c0 = i_mul45_covariance26_bs7_b;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .ax_clock("0"),
        .ax_width(18),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(36)
    ) i_mul45_covariance26_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul45_covariance26_im8_cma_ena2, i_mul45_covariance26_im8_cma_ena1, i_mul45_covariance26_im8_cma_ena0 }),
        .aclr({ i_mul45_covariance26_im8_cma_reset, i_mul45_covariance26_im8_cma_reset }),
        .ay(i_mul45_covariance26_im8_cma_a0),
        .ax(i_mul45_covariance26_im8_cma_c0),
        .resulta(i_mul45_covariance26_im8_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul45_covariance26_im8_cma_delay ( .xin(i_mul45_covariance26_im8_cma_s0), .xout(i_mul45_covariance26_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul45_covariance26_im8_cma_q = $unsigned(i_mul45_covariance26_im8_cma_qq[35:0]);

    // i_mul45_covariance26_sums_join_0(BITJOIN,231)@9
    assign i_mul45_covariance26_sums_join_0_q = {i_mul45_covariance26_im0_cma_q, i_mul45_covariance26_im8_cma_q};

    // i_mul45_covariance26_sums_result_add_0_0(ADD,234)@9
    assign i_mul45_covariance26_sums_result_add_0_0_a = {1'b0, i_mul45_covariance26_sums_join_0_q};
    assign i_mul45_covariance26_sums_result_add_0_0_b = {14'b00000000000000, i_mul45_covariance26_sums_align_1_q};
    assign i_mul45_covariance26_sums_result_add_0_0_o = $unsigned(i_mul45_covariance26_sums_result_add_0_0_a) + $unsigned(i_mul45_covariance26_sums_result_add_0_0_b);
    assign i_mul45_covariance26_sums_result_add_0_0_q = i_mul45_covariance26_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul45_covariance26_sel_x(BITSELECT,119)@9
    assign bgTrunc_i_mul45_covariance26_sel_x_in = i_mul45_covariance26_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul45_covariance26_sel_x_b = bgTrunc_i_mul45_covariance26_sel_x_in[31:0];

    // redist20_bgTrunc_i_mul45_covariance26_sel_x_b_1(DELAY,275)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_bgTrunc_i_mul45_covariance26_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist20_bgTrunc_i_mul45_covariance26_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul45_covariance26_sel_x_b);
        end
    end

    // i_add46_covariance28(ADD,44)@10
    assign i_add46_covariance28_a = {1'b0, redist20_bgTrunc_i_mul45_covariance26_sel_x_b_1_q};
    assign i_add46_covariance28_b = {1'b0, i_llvm_fpga_pop_i32_c_030_pop65_covariance27_out_data_out};
    assign i_add46_covariance28_o = $unsigned(i_add46_covariance28_a) + $unsigned(i_add46_covariance28_b);
    assign i_add46_covariance28_q = i_add46_covariance28_o[32:0];

    // bgTrunc_i_add46_covariance28_sel_x(BITSELECT,116)@10
    assign bgTrunc_i_add46_covariance28_sel_x_b = i_add46_covariance28_q[31:0];

    // i_toi1_intcast3_covariance25_sel_x(BITSELECT,177)@6
    assign i_toi1_intcast3_covariance25_sel_x_b = i_llvm_fpga_mem_unnamed_covariance6_covariance24_out_o_readdata[0:0];

    // redist19_i_toi1_intcast3_covariance25_sel_x_b_4(DELAY,274)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_toi1_intcast3_covariance25_sel_x_b_4_delay_0 <= '0;
            redist19_i_toi1_intcast3_covariance25_sel_x_b_4_delay_1 <= '0;
            redist19_i_toi1_intcast3_covariance25_sel_x_b_4_delay_2 <= '0;
            redist19_i_toi1_intcast3_covariance25_sel_x_b_4_q <= '0;
        end
        else
        begin
            redist19_i_toi1_intcast3_covariance25_sel_x_b_4_delay_0 <= $unsigned(i_toi1_intcast3_covariance25_sel_x_b);
            redist19_i_toi1_intcast3_covariance25_sel_x_b_4_delay_1 <= redist19_i_toi1_intcast3_covariance25_sel_x_b_4_delay_0;
            redist19_i_toi1_intcast3_covariance25_sel_x_b_4_delay_2 <= redist19_i_toi1_intcast3_covariance25_sel_x_b_4_delay_1;
            redist19_i_toi1_intcast3_covariance25_sel_x_b_4_q <= redist19_i_toi1_intcast3_covariance25_sel_x_b_4_delay_2;
        end
    end

    // i_toi1_intcast_covariance22_sel_x(BITSELECT,178)@6
    assign i_toi1_intcast_covariance22_sel_x_b = i_llvm_fpga_mem_unnamed_covariance5_covariance21_out_o_readdata[0:0];

    // redist18_i_toi1_intcast_covariance22_sel_x_b_4(DELAY,273)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_toi1_intcast_covariance22_sel_x_b_4_delay_0 <= '0;
            redist18_i_toi1_intcast_covariance22_sel_x_b_4_delay_1 <= '0;
            redist18_i_toi1_intcast_covariance22_sel_x_b_4_delay_2 <= '0;
            redist18_i_toi1_intcast_covariance22_sel_x_b_4_q <= '0;
        end
        else
        begin
            redist18_i_toi1_intcast_covariance22_sel_x_b_4_delay_0 <= $unsigned(i_toi1_intcast_covariance22_sel_x_b);
            redist18_i_toi1_intcast_covariance22_sel_x_b_4_delay_1 <= redist18_i_toi1_intcast_covariance22_sel_x_b_4_delay_0;
            redist18_i_toi1_intcast_covariance22_sel_x_b_4_delay_2 <= redist18_i_toi1_intcast_covariance22_sel_x_b_4_delay_1;
            redist18_i_toi1_intcast_covariance22_sel_x_b_4_q <= redist18_i_toi1_intcast_covariance22_sel_x_b_4_delay_2;
        end
    end

    // redist30_i_idxprom39_covariance17_vt_join_q_8_notEnable(LOGICAL,382)
    assign redist30_i_idxprom39_covariance17_vt_join_q_8_notEnable_q = $unsigned(~ (VCC_q));

    // redist30_i_idxprom39_covariance17_vt_join_q_8_nor(LOGICAL,383)
    assign redist30_i_idxprom39_covariance17_vt_join_q_8_nor_q = ~ (redist30_i_idxprom39_covariance17_vt_join_q_8_notEnable_q | redist30_i_idxprom39_covariance17_vt_join_q_8_sticky_ena_q);

    // redist30_i_idxprom39_covariance17_vt_join_q_8_mem_last(CONSTANT,379)
    assign redist30_i_idxprom39_covariance17_vt_join_q_8_mem_last_q = $unsigned(4'b0101);

    // redist30_i_idxprom39_covariance17_vt_join_q_8_cmp(LOGICAL,380)
    assign redist30_i_idxprom39_covariance17_vt_join_q_8_cmp_b = {1'b0, redist30_i_idxprom39_covariance17_vt_join_q_8_rdcnt_q};
    assign redist30_i_idxprom39_covariance17_vt_join_q_8_cmp_q = $unsigned(redist30_i_idxprom39_covariance17_vt_join_q_8_mem_last_q == redist30_i_idxprom39_covariance17_vt_join_q_8_cmp_b ? 1'b1 : 1'b0);

    // redist30_i_idxprom39_covariance17_vt_join_q_8_cmpReg(REG,381)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_idxprom39_covariance17_vt_join_q_8_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist30_i_idxprom39_covariance17_vt_join_q_8_cmpReg_q <= $unsigned(redist30_i_idxprom39_covariance17_vt_join_q_8_cmp_q);
        end
    end

    // redist30_i_idxprom39_covariance17_vt_join_q_8_sticky_ena(REG,384)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_idxprom39_covariance17_vt_join_q_8_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist30_i_idxprom39_covariance17_vt_join_q_8_nor_q == 1'b1)
        begin
            redist30_i_idxprom39_covariance17_vt_join_q_8_sticky_ena_q <= $unsigned(redist30_i_idxprom39_covariance17_vt_join_q_8_cmpReg_q);
        end
    end

    // redist30_i_idxprom39_covariance17_vt_join_q_8_enaAnd(LOGICAL,385)
    assign redist30_i_idxprom39_covariance17_vt_join_q_8_enaAnd_q = redist30_i_idxprom39_covariance17_vt_join_q_8_sticky_ena_q & VCC_q;

    // redist30_i_idxprom39_covariance17_vt_join_q_8_rdcnt(COUNTER,377)
    // low=0, high=6, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_idxprom39_covariance17_vt_join_q_8_rdcnt_i <= 3'd0;
            redist30_i_idxprom39_covariance17_vt_join_q_8_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist30_i_idxprom39_covariance17_vt_join_q_8_rdcnt_i == 3'd5)
            begin
                redist30_i_idxprom39_covariance17_vt_join_q_8_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist30_i_idxprom39_covariance17_vt_join_q_8_rdcnt_eq <= 1'b0;
            end
            if (redist30_i_idxprom39_covariance17_vt_join_q_8_rdcnt_eq == 1'b1)
            begin
                redist30_i_idxprom39_covariance17_vt_join_q_8_rdcnt_i <= $unsigned(redist30_i_idxprom39_covariance17_vt_join_q_8_rdcnt_i) + $unsigned(3'd2);
            end
            else
            begin
                redist30_i_idxprom39_covariance17_vt_join_q_8_rdcnt_i <= $unsigned(redist30_i_idxprom39_covariance17_vt_join_q_8_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist30_i_idxprom39_covariance17_vt_join_q_8_rdcnt_q = redist30_i_idxprom39_covariance17_vt_join_q_8_rdcnt_i[2:0];

    // redist30_i_idxprom39_covariance17_vt_join_q_8_wraddr(REG,378)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_idxprom39_covariance17_vt_join_q_8_wraddr_q <= $unsigned(3'b110);
        end
        else
        begin
            redist30_i_idxprom39_covariance17_vt_join_q_8_wraddr_q <= $unsigned(redist30_i_idxprom39_covariance17_vt_join_q_8_rdcnt_q);
        end
    end

    // redist30_i_idxprom39_covariance17_vt_join_q_8_mem(DUALMEM,376)
    assign redist30_i_idxprom39_covariance17_vt_join_q_8_mem_ia = $unsigned(i_idxprom39_covariance17_vt_join_q);
    assign redist30_i_idxprom39_covariance17_vt_join_q_8_mem_aa = redist30_i_idxprom39_covariance17_vt_join_q_8_wraddr_q;
    assign redist30_i_idxprom39_covariance17_vt_join_q_8_mem_ab = redist30_i_idxprom39_covariance17_vt_join_q_8_rdcnt_q;
    assign redist30_i_idxprom39_covariance17_vt_join_q_8_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(3),
        .numwords_a(7),
        .width_b(64),
        .widthad_b(3),
        .numwords_b(7),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist30_i_idxprom39_covariance17_vt_join_q_8_mem_dmem (
        .clocken1(redist30_i_idxprom39_covariance17_vt_join_q_8_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist30_i_idxprom39_covariance17_vt_join_q_8_mem_reset0),
        .clock1(clock),
        .address_a(redist30_i_idxprom39_covariance17_vt_join_q_8_mem_aa),
        .data_a(redist30_i_idxprom39_covariance17_vt_join_q_8_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist30_i_idxprom39_covariance17_vt_join_q_8_mem_ab),
        .q_b(redist30_i_idxprom39_covariance17_vt_join_q_8_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist30_i_idxprom39_covariance17_vt_join_q_8_mem_q = redist30_i_idxprom39_covariance17_vt_join_q_8_mem_iq[63:0];

    // redist29_i_idxprom43_covariance14_vt_join_q_8_notEnable(LOGICAL,372)
    assign redist29_i_idxprom43_covariance14_vt_join_q_8_notEnable_q = $unsigned(~ (VCC_q));

    // redist29_i_idxprom43_covariance14_vt_join_q_8_nor(LOGICAL,373)
    assign redist29_i_idxprom43_covariance14_vt_join_q_8_nor_q = ~ (redist29_i_idxprom43_covariance14_vt_join_q_8_notEnable_q | redist29_i_idxprom43_covariance14_vt_join_q_8_sticky_ena_q);

    // redist29_i_idxprom43_covariance14_vt_join_q_8_mem_last(CONSTANT,369)
    assign redist29_i_idxprom43_covariance14_vt_join_q_8_mem_last_q = $unsigned(4'b0101);

    // redist29_i_idxprom43_covariance14_vt_join_q_8_cmp(LOGICAL,370)
    assign redist29_i_idxprom43_covariance14_vt_join_q_8_cmp_b = {1'b0, redist29_i_idxprom43_covariance14_vt_join_q_8_rdcnt_q};
    assign redist29_i_idxprom43_covariance14_vt_join_q_8_cmp_q = $unsigned(redist29_i_idxprom43_covariance14_vt_join_q_8_mem_last_q == redist29_i_idxprom43_covariance14_vt_join_q_8_cmp_b ? 1'b1 : 1'b0);

    // redist29_i_idxprom43_covariance14_vt_join_q_8_cmpReg(REG,371)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_idxprom43_covariance14_vt_join_q_8_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist29_i_idxprom43_covariance14_vt_join_q_8_cmpReg_q <= $unsigned(redist29_i_idxprom43_covariance14_vt_join_q_8_cmp_q);
        end
    end

    // redist29_i_idxprom43_covariance14_vt_join_q_8_sticky_ena(REG,374)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_idxprom43_covariance14_vt_join_q_8_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist29_i_idxprom43_covariance14_vt_join_q_8_nor_q == 1'b1)
        begin
            redist29_i_idxprom43_covariance14_vt_join_q_8_sticky_ena_q <= $unsigned(redist29_i_idxprom43_covariance14_vt_join_q_8_cmpReg_q);
        end
    end

    // redist29_i_idxprom43_covariance14_vt_join_q_8_enaAnd(LOGICAL,375)
    assign redist29_i_idxprom43_covariance14_vt_join_q_8_enaAnd_q = redist29_i_idxprom43_covariance14_vt_join_q_8_sticky_ena_q & VCC_q;

    // redist29_i_idxprom43_covariance14_vt_join_q_8_rdcnt(COUNTER,367)
    // low=0, high=6, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_idxprom43_covariance14_vt_join_q_8_rdcnt_i <= 3'd0;
            redist29_i_idxprom43_covariance14_vt_join_q_8_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist29_i_idxprom43_covariance14_vt_join_q_8_rdcnt_i == 3'd5)
            begin
                redist29_i_idxprom43_covariance14_vt_join_q_8_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist29_i_idxprom43_covariance14_vt_join_q_8_rdcnt_eq <= 1'b0;
            end
            if (redist29_i_idxprom43_covariance14_vt_join_q_8_rdcnt_eq == 1'b1)
            begin
                redist29_i_idxprom43_covariance14_vt_join_q_8_rdcnt_i <= $unsigned(redist29_i_idxprom43_covariance14_vt_join_q_8_rdcnt_i) + $unsigned(3'd2);
            end
            else
            begin
                redist29_i_idxprom43_covariance14_vt_join_q_8_rdcnt_i <= $unsigned(redist29_i_idxprom43_covariance14_vt_join_q_8_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist29_i_idxprom43_covariance14_vt_join_q_8_rdcnt_q = redist29_i_idxprom43_covariance14_vt_join_q_8_rdcnt_i[2:0];

    // redist29_i_idxprom43_covariance14_vt_join_q_8_wraddr(REG,368)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_idxprom43_covariance14_vt_join_q_8_wraddr_q <= $unsigned(3'b110);
        end
        else
        begin
            redist29_i_idxprom43_covariance14_vt_join_q_8_wraddr_q <= $unsigned(redist29_i_idxprom43_covariance14_vt_join_q_8_rdcnt_q);
        end
    end

    // redist29_i_idxprom43_covariance14_vt_join_q_8_mem(DUALMEM,366)
    assign redist29_i_idxprom43_covariance14_vt_join_q_8_mem_ia = $unsigned(i_idxprom43_covariance14_vt_join_q);
    assign redist29_i_idxprom43_covariance14_vt_join_q_8_mem_aa = redist29_i_idxprom43_covariance14_vt_join_q_8_wraddr_q;
    assign redist29_i_idxprom43_covariance14_vt_join_q_8_mem_ab = redist29_i_idxprom43_covariance14_vt_join_q_8_rdcnt_q;
    assign redist29_i_idxprom43_covariance14_vt_join_q_8_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(3),
        .numwords_a(7),
        .width_b(64),
        .widthad_b(3),
        .numwords_b(7),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist29_i_idxprom43_covariance14_vt_join_q_8_mem_dmem (
        .clocken1(redist29_i_idxprom43_covariance14_vt_join_q_8_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist29_i_idxprom43_covariance14_vt_join_q_8_mem_reset0),
        .clock1(clock),
        .address_a(redist29_i_idxprom43_covariance14_vt_join_q_8_mem_aa),
        .data_a(redist29_i_idxprom43_covariance14_vt_join_q_8_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist29_i_idxprom43_covariance14_vt_join_q_8_mem_ab),
        .q_b(redist29_i_idxprom43_covariance14_vt_join_q_8_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist29_i_idxprom43_covariance14_vt_join_q_8_mem_q = redist29_i_idxprom43_covariance14_vt_join_q_8_mem_iq[63:0];

    // redist28_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_9(DELAY,283)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist28_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_9 ( .xin(redist27_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_2_q), .xout(redist28_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,179)@10
    assign out_c0_exi19_0_tpl = GND_q;
    assign out_c0_exi19_1_tpl = redist28_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_9_q;
    assign out_c0_exi19_2_tpl = redist29_i_idxprom43_covariance14_vt_join_q_8_mem_q;
    assign out_c0_exi19_3_tpl = redist30_i_idxprom39_covariance17_vt_join_q_8_mem_q;
    assign out_c0_exi19_4_tpl = redist18_i_toi1_intcast_covariance22_sel_x_b_4_q;
    assign out_c0_exi19_5_tpl = redist19_i_toi1_intcast3_covariance25_sel_x_b_4_q;
    assign out_c0_exi19_6_tpl = bgTrunc_i_add46_covariance28_sel_x_b;
    assign out_c0_exi19_7_tpl = redist21_i_masked_covariance42_q_8_q;
    assign out_c0_exi19_8_tpl = redist23_i_llvm_fpga_pop_i32_lim_ext80_pop68_covariance43_out_data_out_8_mem_q;
    assign out_c0_exi19_9_tpl = redist22_i_llvm_fpga_pop_i32_reorder_limiter_enter93_pop69_covariance45_out_data_out_8_mem_q;
    assign out_c0_exi19_10_tpl = redist25_i_llvm_fpga_pop_i1_notcmp27103_pop70_covariance47_out_data_out_8_q;
    assign out_c0_exi19_11_tpl = i_llvm_fpga_pop_i1_forked23106_pop72_covariance49_out_data_out;
    assign out_c0_exi19_12_tpl = i_llvm_fpga_pop_i1_notcmp22107_pop73_covariance51_out_data_out;
    assign out_c0_exi19_13_tpl = redist9_sync_together122_aunroll_x_in_c0_eni15_9_tpl_9_mem_q;
    assign out_c0_exi19_14_tpl = redist10_sync_together122_aunroll_x_in_c0_eni15_10_tpl_9_mem_q;
    assign out_c0_exi19_15_tpl = redist11_sync_together122_aunroll_x_in_c0_eni15_11_tpl_9_mem_q;
    assign out_c0_exi19_16_tpl = redist12_sync_together122_aunroll_x_in_c0_eni15_12_tpl_9_q;
    assign out_c0_exi19_17_tpl = redist13_sync_together122_aunroll_x_in_c0_eni15_13_tpl_9_mem_q;
    assign out_c0_exi19_18_tpl = redist14_sync_together122_aunroll_x_in_c0_eni15_14_tpl_9_mem_q;
    assign out_c0_exi19_19_tpl = redist15_sync_together122_aunroll_x_in_c0_eni15_15_tpl_9_mem_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_covariance0 = GND_q;

endmodule
