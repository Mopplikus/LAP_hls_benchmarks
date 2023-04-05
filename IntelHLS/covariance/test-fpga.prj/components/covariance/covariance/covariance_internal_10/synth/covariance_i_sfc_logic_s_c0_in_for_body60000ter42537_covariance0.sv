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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body68_covariances_c0_enter42537_covariance0
// Created for function/kernel covariance
// SystemVerilog created on Wed Apr  5 02:12:06 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_i_sfc_logic_s_c0_in_for_body60000ter42537_covariance0 (
    input wire [31:0] in_unnamed_covariance8_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance8_covariance_avm_writeack,
    input wire [0:0] in_unnamed_covariance8_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance8_covariance_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going46_covariance6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going46_covariance6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [31:0] in_unnamed_covariance9_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance9_covariance_avm_writeack,
    input wire [0:0] in_unnamed_covariance9_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance9_covariance_avm_readdatavalid,
    output wire [31:0] out_unnamed_covariance8_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance8_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance8_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance8_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance8_covariance_avm_writedata,
    output wire [3:0] out_unnamed_covariance8_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance8_covariance_avm_burstcount,
    output wire [31:0] out_unnamed_covariance9_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance9_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance9_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance9_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance9_covariance_avm_writedata,
    output wire [3:0] out_unnamed_covariance9_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance9_covariance_avm_burstcount,
    output wire [0:0] out_c0_exi17_0_tpl,
    output wire [0:0] out_c0_exi17_1_tpl,
    output wire [63:0] out_c0_exi17_2_tpl,
    output wire [63:0] out_c0_exi17_3_tpl,
    output wire [31:0] out_c0_exi17_4_tpl,
    output wire [0:0] out_c0_exi17_5_tpl,
    output wire [31:0] out_c0_exi17_6_tpl,
    output wire [31:0] out_c0_exi17_7_tpl,
    output wire [0:0] out_c0_exi17_8_tpl,
    output wire [0:0] out_c0_exi17_9_tpl,
    output wire [0:0] out_c0_exi17_10_tpl,
    output wire [31:0] out_c0_exi17_11_tpl,
    output wire [31:0] out_c0_exi17_12_tpl,
    output wire [32:0] out_c0_exi17_13_tpl,
    output wire [0:0] out_c0_exi17_14_tpl,
    output wire [31:0] out_c0_exi17_15_tpl,
    output wire [31:0] out_c0_exi17_16_tpl,
    output wire [31:0] out_c0_exi17_17_tpl,
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
    wire [1:0] c_i2_181_q;
    wire [31:0] c_i32_083_q;
    wire [31:0] c_i32_184_q;
    wire [5:0] c_i6_187_q;
    wire [5:0] c_i6_3085_q;
    wire [32:0] i_add78_covariance26_a;
    wire [32:0] i_add78_covariance26_b;
    logic [32:0] i_add78_covariance26_o;
    wire [32:0] i_add78_covariance26_q;
    wire [1:0] i_arrayidx725_covariance20_vt_const_1_q;
    wire [63:0] i_arrayidx725_covariance20_vt_join_q;
    wire [61:0] i_arrayidx725_covariance20_vt_select_63_b;
    wire [63:0] i_arrayidx766_covariance22_vt_join_q;
    wire [61:0] i_arrayidx766_covariance22_vt_select_63_b;
    wire [1:0] i_cleanups_shl50_covariance5_vt_join_q;
    wire [0:0] i_cleanups_shl50_covariance5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor52_covariance4_q;
    wire [6:0] i_fpga_indvars_iv_next18_covariance38_a;
    wire [6:0] i_fpga_indvars_iv_next18_covariance38_b;
    logic [6:0] i_fpga_indvars_iv_next18_covariance38_o;
    wire [6:0] i_fpga_indvars_iv_next18_covariance38_q;
    wire [63:0] i_idxprom69_covariance19_vt_join_q;
    wire [31:0] i_idxprom69_covariance19_vt_select_31_b;
    wire [63:0] i_idxprom71_covariance17_vt_join_q;
    wire [31:0] i_idxprom71_covariance17_vt_select_31_b;
    wire [63:0] i_idxprom75_covariance14_vt_join_q;
    wire [31:0] i_idxprom75_covariance14_vt_select_31_b;
    wire [32:0] i_inc80_covariance28_a;
    wire [32:0] i_inc80_covariance28_b;
    logic [32:0] i_inc80_covariance28_o;
    wire [32:0] i_inc80_covariance28_q;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance8_covariance21_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance8_covariance21_out_unnamed_covariance8_covariance_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance8_covariance21_out_unnamed_covariance8_covariance_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_covariance8_covariance21_out_unnamed_covariance8_covariance_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance8_covariance21_out_unnamed_covariance8_covariance_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance8_covariance21_out_unnamed_covariance8_covariance_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance8_covariance21_out_unnamed_covariance8_covariance_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance8_covariance21_out_unnamed_covariance8_covariance_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance9_covariance23_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance9_covariance23_out_unnamed_covariance9_covariance_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance9_covariance23_out_unnamed_covariance9_covariance_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_covariance9_covariance23_out_unnamed_covariance9_covariance_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance9_covariance23_out_unnamed_covariance9_covariance_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance9_covariance23_out_unnamed_covariance9_covariance_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance9_covariance23_out_unnamed_covariance9_covariance_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance9_covariance23_out_unnamed_covariance9_covariance_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going46_covariance6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going46_covariance6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going46_covariance6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going46_covariance6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going46_covariance6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going46_covariance6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_forked59162_pop87_covariance47_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_forked59162_pop87_covariance47_out_feedback_stall_out_87;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp58163_pop88_covariance49_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp58163_pop88_covariance49_out_feedback_stall_out_88;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp63157_pop85_covariance45_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp63157_pop85_covariance45_out_feedback_stall_out_85;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups49_pop82_covariance2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups49_pop82_covariance2_out_feedback_stall_out_82;
    wire [1:0] i_llvm_fpga_pop_i2_initerations44_pop81_covariance7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations44_pop81_covariance7_out_feedback_stall_out_81;
    wire [31:0] i_llvm_fpga_pop_i32_c_053_pop80_covariance25_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_c_053_pop80_covariance25_out_feedback_stall_out_80;
    wire [31:0] i_llvm_fpga_pop_i32_i56_057_pop35159_pop86_covariance15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i56_057_pop35159_pop86_covariance15_out_feedback_stall_out_86;
    wire [31:0] i_llvm_fpga_pop_i32_j60_056_pop67164_pop89_covariance12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j60_056_pop67164_pop89_covariance12_out_feedback_stall_out_89;
    wire [31:0] i_llvm_fpga_pop_i32_k_054_pop79_covariance18_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k_054_pop79_covariance18_out_feedback_stall_out_79;
    wire [31:0] i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_feedback_stall_out_83;
    wire [31:0] i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_feedback_stall_out_84;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv17_pop78_covariance30_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv17_pop78_covariance30_out_feedback_stall_out_78;
    wire [0:0] i_llvm_fpga_push_i1_forked59162_push87_covariance48_out_feedback_out_87;
    wire [0:0] i_llvm_fpga_push_i1_forked59162_push87_covariance48_out_feedback_valid_out_87;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration48_covariance11_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration48_covariance11_out_feedback_valid_out_6;
    wire [0:0] i_llvm_fpga_push_i1_notcmp58163_push88_covariance50_out_feedback_out_88;
    wire [0:0] i_llvm_fpga_push_i1_notcmp58163_push88_covariance50_out_feedback_valid_out_88;
    wire [0:0] i_llvm_fpga_push_i1_notcmp63157_push85_covariance46_out_feedback_out_85;
    wire [0:0] i_llvm_fpga_push_i1_notcmp63157_push85_covariance46_out_feedback_valid_out_85;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond56_covariance34_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond56_covariance34_out_feedback_valid_out_7;
    wire [7:0] i_llvm_fpga_push_i2_cleanups49_push82_covariance37_out_feedback_out_82;
    wire [0:0] i_llvm_fpga_push_i2_cleanups49_push82_covariance37_out_feedback_valid_out_82;
    wire [7:0] i_llvm_fpga_push_i2_initerations44_push81_covariance9_out_feedback_out_81;
    wire [0:0] i_llvm_fpga_push_i2_initerations44_push81_covariance9_out_feedback_valid_out_81;
    wire [31:0] i_llvm_fpga_push_i32_c_053_push80_covariance27_out_feedback_out_80;
    wire [0:0] i_llvm_fpga_push_i32_c_053_push80_covariance27_out_feedback_valid_out_80;
    wire [31:0] i_llvm_fpga_push_i32_i56_057_pop35159_push86_covariance16_out_feedback_out_86;
    wire [0:0] i_llvm_fpga_push_i32_i56_057_pop35159_push86_covariance16_out_feedback_valid_out_86;
    wire [31:0] i_llvm_fpga_push_i32_j60_056_pop67164_push89_covariance13_out_feedback_out_89;
    wire [0:0] i_llvm_fpga_push_i32_j60_056_pop67164_push89_covariance13_out_feedback_valid_out_89;
    wire [31:0] i_llvm_fpga_push_i32_k_054_push79_covariance29_out_feedback_out_79;
    wire [0:0] i_llvm_fpga_push_i32_k_054_push79_covariance29_out_feedback_valid_out_79;
    wire [31:0] i_llvm_fpga_push_i32_lim_ext139_push83_covariance42_out_feedback_out_83;
    wire [0:0] i_llvm_fpga_push_i32_lim_ext139_push83_covariance42_out_feedback_valid_out_83;
    wire [31:0] i_llvm_fpga_push_i32_reorder_limiter_enter144_push84_covariance44_out_feedback_out_84;
    wire [0:0] i_llvm_fpga_push_i32_reorder_limiter_enter144_push84_covariance44_out_feedback_valid_out_84;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv17_push78_covariance39_out_feedback_out_78;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv17_push78_covariance39_out_feedback_valid_out_78;
    wire [0:0] i_masked55_covariance40_qi;
    reg [0:0] i_masked55_covariance40_q;
    wire [0:0] i_next_cleanups54_covariance36_s;
    reg [1:0] i_next_cleanups54_covariance36_q;
    wire [1:0] i_next_initerations45_covariance8_vt_join_q;
    wire [0:0] i_next_initerations45_covariance8_vt_select_0_b;
    wire [0:0] i_notcmp42_covariance33_q;
    wire [0:0] i_or53_covariance35_q;
    wire [31:0] bgTrunc_i_add78_covariance26_sel_x_b;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next18_covariance38_sel_x_b;
    wire [31:0] bgTrunc_i_inc80_covariance28_sel_x_b;
    wire [63:0] bgTrunc_i_mul77_covariance24_sel_x_in;
    wire [31:0] bgTrunc_i_mul77_covariance24_sel_x_b;
    wire [12:0] i_arrayidx725_covariance0_add_x_a;
    wire [12:0] i_arrayidx725_covariance0_add_x_b;
    logic [12:0] i_arrayidx725_covariance0_add_x_o;
    wire [12:0] i_arrayidx725_covariance0_add_x_q;
    wire [63:0] i_arrayidx725_covariance0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx725_covariance0_c_i7_01_x_q;
    wire [4:0] i_arrayidx725_covariance0_narrow_x_b;
    wire [11:0] i_arrayidx725_covariance0_shift_join_x_q;
    wire [12:0] i_arrayidx725_covariance0_dupName_0_add_x_a;
    wire [12:0] i_arrayidx725_covariance0_dupName_0_add_x_b;
    logic [12:0] i_arrayidx725_covariance0_dupName_0_add_x_o;
    wire [12:0] i_arrayidx725_covariance0_dupName_0_add_x_q;
    wire [9:0] i_arrayidx725_covariance0_dupName_0_narrow_x_b;
    wire [11:0] i_arrayidx725_covariance0_dupName_0_shift_join_x_q;
    wire [11:0] i_arrayidx725_covariance0_dupName_0_trunc_sel_x_b;
    wire [11:0] i_arrayidx725_covariance0_dupName_2_trunc_sel_x_b;
    wire [11:0] i_arrayidx725_covariance0_dupName_3_trunc_sel_x_b;
    wire [11:0] i_arrayidx725_covariance0_dupName_5_trunc_sel_x_b;
    wire [63:0] i_arrayidx766_covariance0_append_upper_bits_x_q;
    wire [12:0] i_arrayidx766_covariance0_dupName_0_add_x_a;
    wire [12:0] i_arrayidx766_covariance0_dupName_0_add_x_b;
    logic [12:0] i_arrayidx766_covariance0_dupName_0_add_x_o;
    wire [12:0] i_arrayidx766_covariance0_dupName_0_add_x_q;
    wire [9:0] i_arrayidx766_covariance0_dupName_0_narrow_x_b;
    wire [11:0] i_arrayidx766_covariance0_dupName_0_shift_join_x_q;
    wire [11:0] i_arrayidx766_covariance0_dupName_3_trunc_sel_x_b;
    wire [11:0] i_arrayidx766_covariance0_dupName_5_trunc_sel_x_b;
    wire [0:0] i_first_cleanup51_covariance3_sel_x_b;
    wire [63:0] i_idxprom69_covariance19_sel_x_b;
    wire [63:0] i_idxprom71_covariance17_sel_x_b;
    wire [63:0] i_idxprom75_covariance14_sel_x_b;
    wire [0:0] i_last_initeration47_covariance10_sel_x_b;
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
    wire [0:0] i_exitcond19_covariance31_cmp_nsign_q;
    wire [63:0] i_mul77_covariance24_sums_join_0_q;
    wire [50:0] i_mul77_covariance24_sums_align_1_q;
    wire [50:0] i_mul77_covariance24_sums_align_1_qint;
    wire [64:0] i_mul77_covariance24_sums_result_add_0_0_a;
    wire [64:0] i_mul77_covariance24_sums_result_add_0_0_b;
    logic [64:0] i_mul77_covariance24_sums_result_add_0_0_o;
    wire [64:0] i_mul77_covariance24_sums_result_add_0_0_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid233_i_cleanups_shl50_covariance0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid233_i_cleanups_shl50_covariance0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid234_i_cleanups_shl50_covariance0_shift_x_q;
    wire [0:0] leftShiftStage0_uid236_i_cleanups_shl50_covariance0_shift_x_s;
    reg [1:0] leftShiftStage0_uid236_i_cleanups_shl50_covariance0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid240_i_next_initerations45_covariance0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid242_i_next_initerations45_covariance0_shift_x_q;
    wire [0:0] rightShiftStage0_uid244_i_next_initerations45_covariance0_shift_x_s;
    reg [1:0] rightShiftStage0_uid244_i_next_initerations45_covariance0_shift_x_q;
    wire i_mul77_covariance24_im0_cma_reset;
    wire [13:0] i_mul77_covariance24_im0_cma_a0;
    wire [13:0] i_mul77_covariance24_im0_cma_c0;
    wire [27:0] i_mul77_covariance24_im0_cma_s0;
    wire [27:0] i_mul77_covariance24_im0_cma_qq;
    wire [27:0] i_mul77_covariance24_im0_cma_q;
    wire i_mul77_covariance24_im0_cma_ena0;
    wire i_mul77_covariance24_im0_cma_ena1;
    wire i_mul77_covariance24_im0_cma_ena2;
    wire i_mul77_covariance24_im8_cma_reset;
    wire [17:0] i_mul77_covariance24_im8_cma_a0;
    wire [17:0] i_mul77_covariance24_im8_cma_c0;
    wire [35:0] i_mul77_covariance24_im8_cma_s0;
    wire [35:0] i_mul77_covariance24_im8_cma_qq;
    wire [35:0] i_mul77_covariance24_im8_cma_q;
    wire i_mul77_covariance24_im8_cma_ena0;
    wire i_mul77_covariance24_im8_cma_ena1;
    wire i_mul77_covariance24_im8_cma_ena2;
    wire i_mul77_covariance24_ma3_cma_reset;
    wire [13:0] i_mul77_covariance24_ma3_cma_a0;
    wire [17:0] i_mul77_covariance24_ma3_cma_c0;
    wire [13:0] i_mul77_covariance24_ma3_cma_a1;
    wire [17:0] i_mul77_covariance24_ma3_cma_c1;
    wire [32:0] i_mul77_covariance24_ma3_cma_s0;
    wire [32:0] i_mul77_covariance24_ma3_cma_qq;
    wire [32:0] i_mul77_covariance24_ma3_cma_q;
    wire i_mul77_covariance24_ma3_cma_ena0;
    wire i_mul77_covariance24_ma3_cma_ena1;
    wire i_mul77_covariance24_ma3_cma_ena2;
    wire [51:0] i_arrayidx725_covariance0_upper_bits_x_merged_bit_select_b;
    wire [11:0] i_arrayidx725_covariance0_upper_bits_x_merged_bit_select_c;
    wire [13:0] i_mul77_covariance24_bs2_merged_bit_select_b;
    wire [17:0] i_mul77_covariance24_bs2_merged_bit_select_c;
    wire [13:0] i_mul77_covariance24_bs1_merged_bit_select_b;
    wire [17:0] i_mul77_covariance24_bs1_merged_bit_select_c;
    reg [0:0] redist0_sync_together120_aunroll_x_in_c0_eni15_1_tpl_1_q;
    reg [0:0] redist1_sync_together120_aunroll_x_in_c0_eni15_1_tpl_9_q;
    reg [31:0] redist2_sync_together120_aunroll_x_in_c0_eni15_2_tpl_1_q;
    reg [31:0] redist3_sync_together120_aunroll_x_in_c0_eni15_3_tpl_1_q;
    reg [31:0] redist4_sync_together120_aunroll_x_in_c0_eni15_4_tpl_1_q;
    reg [31:0] redist5_sync_together120_aunroll_x_in_c0_eni15_5_tpl_1_q;
    reg [0:0] redist6_sync_together120_aunroll_x_in_c0_eni15_6_tpl_1_q;
    reg [0:0] redist7_sync_together120_aunroll_x_in_c0_eni15_7_tpl_9_q;
    reg [0:0] redist8_sync_together120_aunroll_x_in_c0_eni15_8_tpl_1_q;
    reg [0:0] redist12_sync_together120_aunroll_x_in_c0_eni15_12_tpl_9_q;
    reg [0:0] redist16_sync_together120_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist17_sync_together120_aunroll_x_in_i_valid_8_q;
    reg [31:0] redist18_bgTrunc_i_mul77_covariance24_sel_x_b_1_q;
    reg [0:0] redist19_i_masked55_covariance40_q_8_q;
    reg [0:0] redist22_i_llvm_fpga_pop_i1_notcmp63157_pop85_covariance45_out_data_out_8_q;
    reg [0:0] redist23_i_llvm_fpga_pop_i1_notcmp58163_pop88_covariance49_out_data_out_8_q;
    reg [0:0] redist24_i_llvm_fpga_pipeline_keep_going46_covariance6_out_data_out_1_q;
    reg [0:0] redist25_i_llvm_fpga_pipeline_keep_going46_covariance6_out_data_out_9_q;
    wire redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_mem_reset0;
    wire [31:0] redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_mem_ia;
    wire [2:0] redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_mem_aa;
    wire [2:0] redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_mem_ab;
    wire [31:0] redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_mem_iq;
    wire [31:0] redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_mem_q;
    wire [2:0] redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_rdcnt_i;
    reg [2:0] redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_wraddr_q;
    wire [3:0] redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_mem_last_q;
    wire [3:0] redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_cmp_b;
    wire [0:0] redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_cmpReg_q;
    wire [0:0] redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_notEnable_q;
    wire [0:0] redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_sticky_ena_q;
    wire [0:0] redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_enaAnd_q;
    wire redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_mem_reset0;
    wire [31:0] redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_mem_ia;
    wire [2:0] redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_mem_aa;
    wire [2:0] redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_mem_ab;
    wire [31:0] redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_mem_iq;
    wire [31:0] redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_mem_q;
    wire [2:0] redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_rdcnt_i;
    reg [2:0] redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_wraddr_q;
    wire [3:0] redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_mem_last_q;
    wire [3:0] redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_cmp_b;
    wire [0:0] redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_cmpReg_q;
    wire [0:0] redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_notEnable_q;
    wire [0:0] redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_sticky_ena_q;
    wire [0:0] redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_enaAnd_q;
    wire redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_mem_reset0;
    wire [32:0] redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_mem_ia;
    wire [2:0] redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_mem_aa;
    wire [2:0] redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_mem_ab;
    wire [32:0] redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_mem_iq;
    wire [32:0] redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_mem_q;
    wire [2:0] redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_rdcnt_i;
    reg [2:0] redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_wraddr_q;
    wire [3:0] redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_mem_last_q;
    wire [3:0] redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_cmp_b;
    wire [0:0] redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_cmpReg_q;
    wire [0:0] redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_notEnable_q;
    wire [0:0] redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_sticky_ena_q;
    wire [0:0] redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_enaAnd_q;
    wire redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_mem_reset0;
    wire [31:0] redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_mem_ia;
    wire [2:0] redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_mem_aa;
    wire [2:0] redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_mem_ab;
    wire [31:0] redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_mem_iq;
    wire [31:0] redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_mem_q;
    wire [2:0] redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_rdcnt_i;
    reg [2:0] redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_wraddr_q;
    wire [3:0] redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_mem_last_q;
    wire [3:0] redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_cmp_b;
    wire [0:0] redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_cmpReg_q;
    wire [0:0] redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_notEnable_q;
    wire [0:0] redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_sticky_ena_q;
    wire [0:0] redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_enaAnd_q;
    wire redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_mem_reset0;
    wire [31:0] redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_mem_ia;
    wire [2:0] redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_mem_aa;
    wire [2:0] redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_mem_ab;
    wire [31:0] redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_mem_iq;
    wire [31:0] redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_mem_q;
    wire [2:0] redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_rdcnt_i;
    reg [2:0] redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_wraddr_q;
    wire [3:0] redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_mem_last_q;
    wire [3:0] redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_cmp_b;
    wire [0:0] redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_cmpReg_q;
    wire [0:0] redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_notEnable_q;
    wire [0:0] redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_sticky_ena_q;
    wire [0:0] redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_enaAnd_q;
    wire redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_mem_reset0;
    wire [31:0] redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_mem_ia;
    wire [2:0] redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_mem_aa;
    wire [2:0] redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_mem_ab;
    wire [31:0] redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_mem_iq;
    wire [31:0] redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_mem_q;
    wire [2:0] redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_rdcnt_i;
    reg [2:0] redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_wraddr_q;
    wire [3:0] redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_mem_last_q;
    wire [3:0] redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_cmp_b;
    wire [0:0] redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_cmpReg_q;
    wire [0:0] redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_notEnable_q;
    wire [0:0] redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_sticky_ena_q;
    wire [0:0] redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_enaAnd_q;
    wire redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_mem_reset0;
    wire [31:0] redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_mem_ia;
    wire [2:0] redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_mem_aa;
    wire [2:0] redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_mem_ab;
    wire [31:0] redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_mem_iq;
    wire [31:0] redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_mem_q;
    wire [2:0] redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_rdcnt_q;
    (* preserve *) reg [2:0] redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_rdcnt_i;
    (* preserve *) reg redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_rdcnt_eq;
    reg [2:0] redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_wraddr_q;
    wire [3:0] redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_mem_last_q;
    wire [3:0] redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_cmp_b;
    wire [0:0] redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_cmp_q;
    (* dont_merge *) reg [0:0] redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_cmpReg_q;
    wire [0:0] redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_notEnable_q;
    wire [0:0] redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_nor_q;
    (* dont_merge *) reg [0:0] redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_sticky_ena_q;
    wire [0:0] redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_enaAnd_q;
    wire redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_mem_reset0;
    wire [31:0] redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_mem_ia;
    wire [2:0] redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_mem_aa;
    wire [2:0] redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_mem_ab;
    wire [31:0] redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_mem_iq;
    wire [31:0] redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_mem_q;
    wire [2:0] redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_rdcnt_q;
    (* preserve *) reg [2:0] redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_rdcnt_i;
    (* preserve *) reg redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_rdcnt_eq;
    reg [2:0] redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_wraddr_q;
    wire [3:0] redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_mem_last_q;
    wire [3:0] redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_cmp_b;
    wire [0:0] redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_cmp_q;
    (* dont_merge *) reg [0:0] redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_cmpReg_q;
    wire [0:0] redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_notEnable_q;
    wire [0:0] redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_nor_q;
    (* dont_merge *) reg [0:0] redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_sticky_ena_q;
    wire [0:0] redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_enaAnd_q;
    wire redist26_i_idxprom75_covariance14_vt_join_q_8_mem_reset0;
    wire [63:0] redist26_i_idxprom75_covariance14_vt_join_q_8_mem_ia;
    wire [2:0] redist26_i_idxprom75_covariance14_vt_join_q_8_mem_aa;
    wire [2:0] redist26_i_idxprom75_covariance14_vt_join_q_8_mem_ab;
    wire [63:0] redist26_i_idxprom75_covariance14_vt_join_q_8_mem_iq;
    wire [63:0] redist26_i_idxprom75_covariance14_vt_join_q_8_mem_q;
    wire [2:0] redist26_i_idxprom75_covariance14_vt_join_q_8_rdcnt_q;
    (* preserve *) reg [2:0] redist26_i_idxprom75_covariance14_vt_join_q_8_rdcnt_i;
    (* preserve *) reg redist26_i_idxprom75_covariance14_vt_join_q_8_rdcnt_eq;
    reg [2:0] redist26_i_idxprom75_covariance14_vt_join_q_8_wraddr_q;
    wire [3:0] redist26_i_idxprom75_covariance14_vt_join_q_8_mem_last_q;
    wire [3:0] redist26_i_idxprom75_covariance14_vt_join_q_8_cmp_b;
    wire [0:0] redist26_i_idxprom75_covariance14_vt_join_q_8_cmp_q;
    (* dont_merge *) reg [0:0] redist26_i_idxprom75_covariance14_vt_join_q_8_cmpReg_q;
    wire [0:0] redist26_i_idxprom75_covariance14_vt_join_q_8_notEnable_q;
    wire [0:0] redist26_i_idxprom75_covariance14_vt_join_q_8_nor_q;
    (* dont_merge *) reg [0:0] redist26_i_idxprom75_covariance14_vt_join_q_8_sticky_ena_q;
    wire [0:0] redist26_i_idxprom75_covariance14_vt_join_q_8_enaAnd_q;
    wire redist27_i_idxprom71_covariance17_vt_join_q_8_mem_reset0;
    wire [63:0] redist27_i_idxprom71_covariance17_vt_join_q_8_mem_ia;
    wire [2:0] redist27_i_idxprom71_covariance17_vt_join_q_8_mem_aa;
    wire [2:0] redist27_i_idxprom71_covariance17_vt_join_q_8_mem_ab;
    wire [63:0] redist27_i_idxprom71_covariance17_vt_join_q_8_mem_iq;
    wire [63:0] redist27_i_idxprom71_covariance17_vt_join_q_8_mem_q;
    wire [2:0] redist27_i_idxprom71_covariance17_vt_join_q_8_rdcnt_q;
    (* preserve *) reg [2:0] redist27_i_idxprom71_covariance17_vt_join_q_8_rdcnt_i;
    (* preserve *) reg redist27_i_idxprom71_covariance17_vt_join_q_8_rdcnt_eq;
    reg [2:0] redist27_i_idxprom71_covariance17_vt_join_q_8_wraddr_q;
    wire [3:0] redist27_i_idxprom71_covariance17_vt_join_q_8_mem_last_q;
    wire [3:0] redist27_i_idxprom71_covariance17_vt_join_q_8_cmp_b;
    wire [0:0] redist27_i_idxprom71_covariance17_vt_join_q_8_cmp_q;
    (* dont_merge *) reg [0:0] redist27_i_idxprom71_covariance17_vt_join_q_8_cmpReg_q;
    wire [0:0] redist27_i_idxprom71_covariance17_vt_join_q_8_notEnable_q;
    wire [0:0] redist27_i_idxprom71_covariance17_vt_join_q_8_nor_q;
    (* dont_merge *) reg [0:0] redist27_i_idxprom71_covariance17_vt_join_q_8_sticky_ena_q;
    wire [0:0] redist27_i_idxprom71_covariance17_vt_join_q_8_enaAnd_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist16_sync_together120_aunroll_x_in_i_valid_1(DELAY,267)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together120_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist16_sync_together120_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist24_i_llvm_fpga_pipeline_keep_going46_covariance6_out_data_out_1(DELAY,275)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_llvm_fpga_pipeline_keep_going46_covariance6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist24_i_llvm_fpga_pipeline_keep_going46_covariance6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going46_covariance6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid233_i_cleanups_shl50_covariance0_shift_x(BITSELECT,232)@2
    assign leftShiftStage0Idx1Rng1_uid233_i_cleanups_shl50_covariance0_shift_x_in = i_llvm_fpga_pop_i2_cleanups49_pop82_covariance2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid233_i_cleanups_shl50_covariance0_shift_x_b = leftShiftStage0Idx1Rng1_uid233_i_cleanups_shl50_covariance0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid234_i_cleanups_shl50_covariance0_shift_x(BITJOIN,233)@2
    assign leftShiftStage0Idx1_uid234_i_cleanups_shl50_covariance0_shift_x_q = {leftShiftStage0Idx1Rng1_uid233_i_cleanups_shl50_covariance0_shift_x_b, GND_q};

    // leftShiftStage0_uid236_i_cleanups_shl50_covariance0_shift_x(MUX,235)@2
    assign leftShiftStage0_uid236_i_cleanups_shl50_covariance0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid236_i_cleanups_shl50_covariance0_shift_x_s or i_llvm_fpga_pop_i2_cleanups49_pop82_covariance2_out_data_out or leftShiftStage0Idx1_uid234_i_cleanups_shl50_covariance0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid236_i_cleanups_shl50_covariance0_shift_x_s)
            1'b0 : leftShiftStage0_uid236_i_cleanups_shl50_covariance0_shift_x_q = i_llvm_fpga_pop_i2_cleanups49_pop82_covariance2_out_data_out;
            1'b1 : leftShiftStage0_uid236_i_cleanups_shl50_covariance0_shift_x_q = leftShiftStage0Idx1_uid234_i_cleanups_shl50_covariance0_shift_x_q;
            default : leftShiftStage0_uid236_i_cleanups_shl50_covariance0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl50_covariance5_vt_select_1(BITSELECT,53)@2
    assign i_cleanups_shl50_covariance5_vt_select_1_b = leftShiftStage0_uid236_i_cleanups_shl50_covariance0_shift_x_q[1:1];

    // i_cleanups_shl50_covariance5_vt_join(BITJOIN,52)@2
    assign i_cleanups_shl50_covariance5_vt_join_q = {i_cleanups_shl50_covariance5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor52_covariance4(LOGICAL,56)@2
    assign i_first_cleanup_xor52_covariance4_q = i_first_cleanup51_covariance3_sel_x_b ^ VCC_q;

    // i_notcmp42_covariance33(LOGICAL,107)@2
    assign i_notcmp42_covariance33_q = i_exitcond19_covariance31_cmp_nsign_q ^ VCC_q;

    // i_or53_covariance35(LOGICAL,108)@2
    assign i_or53_covariance35_q = i_notcmp42_covariance33_q | i_first_cleanup_xor52_covariance4_q;

    // i_next_cleanups54_covariance36(MUX,103)@2
    assign i_next_cleanups54_covariance36_s = i_or53_covariance35_q;
    always @(i_next_cleanups54_covariance36_s or i_llvm_fpga_pop_i2_cleanups49_pop82_covariance2_out_data_out or i_cleanups_shl50_covariance5_vt_join_q)
    begin
        unique case (i_next_cleanups54_covariance36_s)
            1'b0 : i_next_cleanups54_covariance36_q = i_llvm_fpga_pop_i2_cleanups49_pop82_covariance2_out_data_out;
            1'b1 : i_next_cleanups54_covariance36_q = i_cleanups_shl50_covariance5_vt_join_q;
            default : i_next_cleanups54_covariance36_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups49_push82_covariance37(BLACKBOX,92)@2
    // out out_feedback_out_82@20000000
    // out out_feedback_valid_out_82@20000000
    covariance_i_llvm_fpga_push_i2_cleanups49_push82_0 thei_llvm_fpga_push_i2_cleanups49_push82_covariance37 (
        .in_data_in(i_next_cleanups54_covariance36_q),
        .in_feedback_stall_in_82(i_llvm_fpga_pop_i2_cleanups49_pop82_covariance2_out_feedback_stall_out_82),
        .in_keep_going46(redist24_i_llvm_fpga_pipeline_keep_going46_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist16_sync_together120_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_82(i_llvm_fpga_push_i2_cleanups49_push82_covariance37_out_feedback_out_82),
        .out_feedback_valid_out_82(i_llvm_fpga_push_i2_cleanups49_push82_covariance37_out_feedback_valid_out_82),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together120_aunroll_x_in_c0_eni15_1_tpl_1(DELAY,251)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together120_aunroll_x_in_c0_eni15_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together120_aunroll_x_in_c0_eni15_1_tpl_1_q <= $unsigned(in_c0_eni15_1_tpl);
        end
    end

    // c_i2_181(CONSTANT,37)
    assign c_i2_181_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups49_pop82_covariance2(BLACKBOX,78)@2
    // out out_feedback_stall_out_82@20000000
    covariance_i_llvm_fpga_pop_i2_cleanups49_pop82_0 thei_llvm_fpga_pop_i2_cleanups49_pop82_covariance2 (
        .in_data_in(c_i2_181_q),
        .in_dir(redist0_sync_together120_aunroll_x_in_c0_eni15_1_tpl_1_q),
        .in_feedback_in_82(i_llvm_fpga_push_i2_cleanups49_push82_covariance37_out_feedback_out_82),
        .in_feedback_valid_in_82(i_llvm_fpga_push_i2_cleanups49_push82_covariance37_out_feedback_valid_out_82),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist16_sync_together120_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups49_pop82_covariance2_out_data_out),
        .out_feedback_stall_out_82(i_llvm_fpga_pop_i2_cleanups49_pop82_covariance2_out_feedback_stall_out_82),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup51_covariance3_sel_x(BITSELECT,166)@2
    assign i_first_cleanup51_covariance3_sel_x_b = i_llvm_fpga_pop_i2_cleanups49_pop82_covariance2_out_data_out[0:0];

    // c_i6_187(CONSTANT,40)
    assign c_i6_187_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next18_covariance38(ADD,57)@2
    assign i_fpga_indvars_iv_next18_covariance38_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv17_pop78_covariance30_out_data_out};
    assign i_fpga_indvars_iv_next18_covariance38_b = {1'b0, c_i6_187_q};
    assign i_fpga_indvars_iv_next18_covariance38_o = $unsigned(i_fpga_indvars_iv_next18_covariance38_a) + $unsigned(i_fpga_indvars_iv_next18_covariance38_b);
    assign i_fpga_indvars_iv_next18_covariance38_q = i_fpga_indvars_iv_next18_covariance38_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next18_covariance38_sel_x(BITSELECT,115)@2
    assign bgTrunc_i_fpga_indvars_iv_next18_covariance38_sel_x_b = i_fpga_indvars_iv_next18_covariance38_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv17_push78_covariance39(BLACKBOX,100)@2
    // out out_feedback_out_78@20000000
    // out out_feedback_valid_out_78@20000000
    covariance_i_llvm_fpga_push_i6_fpga_indvars_iv17_push78_0 thei_llvm_fpga_push_i6_fpga_indvars_iv17_push78_covariance39 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next18_covariance38_sel_x_b),
        .in_feedback_stall_in_78(i_llvm_fpga_pop_i6_fpga_indvars_iv17_pop78_covariance30_out_feedback_stall_out_78),
        .in_keep_going46(redist24_i_llvm_fpga_pipeline_keep_going46_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist16_sync_together120_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_78(i_llvm_fpga_push_i6_fpga_indvars_iv17_push78_covariance39_out_feedback_out_78),
        .out_feedback_valid_out_78(i_llvm_fpga_push_i6_fpga_indvars_iv17_push78_covariance39_out_feedback_valid_out_78),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_3085(CONSTANT,41)
    assign c_i6_3085_q = $unsigned(6'b011110);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv17_pop78_covariance30(BLACKBOX,86)@2
    // out out_feedback_stall_out_78@20000000
    covariance_i_llvm_fpga_pop_i6_fpga_indvars_iv17_pop78_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv17_pop78_covariance30 (
        .in_data_in(c_i6_3085_q),
        .in_dir(redist0_sync_together120_aunroll_x_in_c0_eni15_1_tpl_1_q),
        .in_feedback_in_78(i_llvm_fpga_push_i6_fpga_indvars_iv17_push78_covariance39_out_feedback_out_78),
        .in_feedback_valid_in_78(i_llvm_fpga_push_i6_fpga_indvars_iv17_push78_covariance39_out_feedback_valid_out_78),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist16_sync_together120_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv17_pop78_covariance30_out_data_out),
        .out_feedback_stall_out_78(i_llvm_fpga_pop_i6_fpga_indvars_iv17_pop78_covariance30_out_feedback_stall_out_78),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond19_covariance31_cmp_nsign(LOGICAL,213)@2
    assign i_exitcond19_covariance31_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv17_pop78_covariance30_out_data_out[5:5]));

    // i_llvm_fpga_push_i1_notexitcond56_covariance34(BLACKBOX,91)@2
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    covariance_i_llvm_fpga_push_i1_notexitcond56_0 thei_llvm_fpga_push_i1_notexitcond56_covariance34 (
        .in_data_in(i_exitcond19_covariance31_cmp_nsign_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pipeline_keep_going46_covariance6_out_not_exitcond_stall_out),
        .in_first_cleanup51(i_first_cleanup51_covariance3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist16_sync_together120_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i1_notexitcond56_covariance34_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i1_notexitcond56_covariance34_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,180)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid240_i_next_initerations45_covariance0_shift_x(BITSELECT,239)@2
    assign rightShiftStage0Idx1Rng1_uid240_i_next_initerations45_covariance0_shift_x_b = i_llvm_fpga_pop_i2_initerations44_pop81_covariance7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid242_i_next_initerations45_covariance0_shift_x(BITJOIN,241)@2
    assign rightShiftStage0Idx1_uid242_i_next_initerations45_covariance0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid240_i_next_initerations45_covariance0_shift_x_b};

    // valid_fanout_reg1(REG,178)@1 + 1
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

    // valid_fanout_reg2(REG,179)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations44_push81_covariance9(BLACKBOX,93)@2
    // out out_feedback_out_81@20000000
    // out out_feedback_valid_out_81@20000000
    covariance_i_llvm_fpga_push_i2_initerations44_push81_0 thei_llvm_fpga_push_i2_initerations44_push81_covariance9 (
        .in_data_in(i_next_initerations45_covariance8_vt_join_q),
        .in_feedback_stall_in_81(i_llvm_fpga_pop_i2_initerations44_pop81_covariance7_out_feedback_stall_out_81),
        .in_keep_going46(redist24_i_llvm_fpga_pipeline_keep_going46_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_81(i_llvm_fpga_push_i2_initerations44_push81_covariance9_out_feedback_out_81),
        .out_feedback_valid_out_81(i_llvm_fpga_push_i2_initerations44_push81_covariance9_out_feedback_valid_out_81),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations44_pop81_covariance7(BLACKBOX,79)@2
    // out out_feedback_stall_out_81@20000000
    covariance_i_llvm_fpga_pop_i2_initerations44_pop81_0 thei_llvm_fpga_pop_i2_initerations44_pop81_covariance7 (
        .in_data_in(c_i2_181_q),
        .in_dir(redist0_sync_together120_aunroll_x_in_c0_eni15_1_tpl_1_q),
        .in_feedback_in_81(i_llvm_fpga_push_i2_initerations44_push81_covariance9_out_feedback_out_81),
        .in_feedback_valid_in_81(i_llvm_fpga_push_i2_initerations44_push81_covariance9_out_feedback_valid_out_81),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations44_pop81_covariance7_out_data_out),
        .out_feedback_stall_out_81(i_llvm_fpga_pop_i2_initerations44_pop81_covariance7_out_feedback_stall_out_81),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid244_i_next_initerations45_covariance0_shift_x(MUX,243)@2
    assign rightShiftStage0_uid244_i_next_initerations45_covariance0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid244_i_next_initerations45_covariance0_shift_x_s or i_llvm_fpga_pop_i2_initerations44_pop81_covariance7_out_data_out or rightShiftStage0Idx1_uid242_i_next_initerations45_covariance0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid244_i_next_initerations45_covariance0_shift_x_s)
            1'b0 : rightShiftStage0_uid244_i_next_initerations45_covariance0_shift_x_q = i_llvm_fpga_pop_i2_initerations44_pop81_covariance7_out_data_out;
            1'b1 : rightShiftStage0_uid244_i_next_initerations45_covariance0_shift_x_q = rightShiftStage0Idx1_uid242_i_next_initerations45_covariance0_shift_x_q;
            default : rightShiftStage0_uid244_i_next_initerations45_covariance0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations45_covariance8_vt_select_0(BITSELECT,106)@2
    assign i_next_initerations45_covariance8_vt_select_0_b = rightShiftStage0_uid244_i_next_initerations45_covariance0_shift_x_q[0:0];

    // i_next_initerations45_covariance8_vt_join(BITJOIN,105)@2
    assign i_next_initerations45_covariance8_vt_join_q = {GND_q, i_next_initerations45_covariance8_vt_select_0_b};

    // i_last_initeration47_covariance10_sel_x(BITSELECT,170)@2
    assign i_last_initeration47_covariance10_sel_x_b = i_next_initerations45_covariance8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration48_covariance11(BLACKBOX,88)@2
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    covariance_i_llvm_fpga_push_i1_lastiniteration48_0 thei_llvm_fpga_push_i1_lastiniteration48_covariance11 (
        .in_data_in(i_last_initeration47_covariance10_sel_x_b),
        .in_feedback_stall_in_6(i_llvm_fpga_pipeline_keep_going46_covariance6_out_initeration_stall_out),
        .in_keep_going46(redist24_i_llvm_fpga_pipeline_keep_going46_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i1_lastiniteration48_covariance11_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i1_lastiniteration48_covariance11_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going46_covariance6(BLACKBOX,74)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    covariance_i_llvm_fpga_pipeline_keep_going46_0 thei_llvm_fpga_pipeline_keep_going46_covariance6 (
        .in_data_in(in_c0_eni15_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration48_covariance11_out_feedback_out_6),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration48_covariance11_out_feedback_valid_out_6),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond56_covariance34_out_feedback_out_7),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond56_covariance34_out_feedback_valid_out_7),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going46_covariance6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going46_covariance6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going46_covariance6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going46_covariance6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going46_covariance6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going46_covariance6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,43)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going46_covariance6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going46_covariance6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going46_covariance6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going46_covariance6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,111)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going46_covariance6_out_pipeline_valid_out;

    // valid_fanout_reg9(REG,186)@1 + 1
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

    // i_arrayidx725_covariance0_upper_bits_x_merged_bit_select(BITSELECT,248)@2
    assign i_arrayidx725_covariance0_upper_bits_x_merged_bit_select_b = c_covariance_data_local_pmem_q[63:12];
    assign i_arrayidx725_covariance0_upper_bits_x_merged_bit_select_c = c_covariance_data_local_pmem_q[11:0];

    // c_i32_083(CONSTANT,38)
    assign c_i32_083_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg6(REG,183)@1 + 1
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

    // valid_fanout_reg7(REG,184)@1 + 1
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

    // i_llvm_fpga_push_i32_i56_057_pop35159_push86_covariance16(BLACKBOX,95)@2
    // out out_feedback_out_86@20000000
    // out out_feedback_valid_out_86@20000000
    covariance_i_llvm_fpga_push_i32_i56_057_pop35159_push86_0 thei_llvm_fpga_push_i32_i56_057_pop35159_push86_covariance16 (
        .in_data_in(i_llvm_fpga_pop_i32_i56_057_pop35159_pop86_covariance15_out_data_out),
        .in_feedback_stall_in_86(i_llvm_fpga_pop_i32_i56_057_pop35159_pop86_covariance15_out_feedback_stall_out_86),
        .in_keep_going46(redist24_i_llvm_fpga_pipeline_keep_going46_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_86(i_llvm_fpga_push_i32_i56_057_pop35159_push86_covariance16_out_feedback_out_86),
        .out_feedback_valid_out_86(i_llvm_fpga_push_i32_i56_057_pop35159_push86_covariance16_out_feedback_valid_out_86),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together120_aunroll_x_in_c0_eni15_3_tpl_1(DELAY,254)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together120_aunroll_x_in_c0_eni15_3_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together120_aunroll_x_in_c0_eni15_3_tpl_1_q <= $unsigned(in_c0_eni15_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_i56_057_pop35159_pop86_covariance15(BLACKBOX,81)@2
    // out out_feedback_stall_out_86@20000000
    covariance_i_llvm_fpga_pop_i32_i56_057_pop35159_pop86_0 thei_llvm_fpga_pop_i32_i56_057_pop35159_pop86_covariance15 (
        .in_data_in(redist3_sync_together120_aunroll_x_in_c0_eni15_3_tpl_1_q),
        .in_dir(redist0_sync_together120_aunroll_x_in_c0_eni15_1_tpl_1_q),
        .in_feedback_in_86(i_llvm_fpga_push_i32_i56_057_pop35159_push86_covariance16_out_feedback_out_86),
        .in_feedback_valid_in_86(i_llvm_fpga_push_i32_i56_057_pop35159_push86_covariance16_out_feedback_valid_out_86),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_i56_057_pop35159_pop86_covariance15_out_data_out),
        .out_feedback_stall_out_86(i_llvm_fpga_pop_i32_i56_057_pop35159_pop86_covariance15_out_feedback_stall_out_86),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom71_covariance17_sel_x(BITSELECT,168)@2
    assign i_idxprom71_covariance17_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i56_057_pop35159_pop86_covariance15_out_data_out[31:0]};

    // i_idxprom71_covariance17_vt_select_31(BITSELECT,65)@2
    assign i_idxprom71_covariance17_vt_select_31_b = i_idxprom71_covariance17_sel_x_b[31:0];

    // i_idxprom71_covariance17_vt_join(BITJOIN,64)@2
    assign i_idxprom71_covariance17_vt_join_q = {c_i32_083_q, i_idxprom71_covariance17_vt_select_31_b};

    // i_arrayidx725_covariance0_dupName_3_trunc_sel_x(BITSELECT,140)@2
    assign i_arrayidx725_covariance0_dupName_3_trunc_sel_x_b = i_idxprom71_covariance17_vt_join_q[11:0];

    // i_arrayidx725_covariance0_dupName_0_narrow_x(BITSELECT,131)@2
    assign i_arrayidx725_covariance0_dupName_0_narrow_x_b = i_arrayidx725_covariance0_dupName_3_trunc_sel_x_b[9:0];

    // i_arrayidx725_covariance0_dupName_0_shift_join_x(BITJOIN,132)@2
    assign i_arrayidx725_covariance0_dupName_0_shift_join_x_q = {i_arrayidx725_covariance0_dupName_0_narrow_x_b, i_arrayidx725_covariance20_vt_const_1_q};

    // valid_fanout_reg8(REG,185)@1 + 1
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

    // valid_fanout_reg13(REG,190)@1 + 1
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

    // c_i32_184(CONSTANT,39)
    assign c_i32_184_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc80_covariance28(ADD,70)@2
    assign i_inc80_covariance28_a = {1'b0, i_llvm_fpga_pop_i32_k_054_pop79_covariance18_out_data_out};
    assign i_inc80_covariance28_b = {1'b0, c_i32_184_q};
    assign i_inc80_covariance28_o = $unsigned(i_inc80_covariance28_a) + $unsigned(i_inc80_covariance28_b);
    assign i_inc80_covariance28_q = i_inc80_covariance28_o[32:0];

    // bgTrunc_i_inc80_covariance28_sel_x(BITSELECT,116)@2
    assign bgTrunc_i_inc80_covariance28_sel_x_b = i_inc80_covariance28_q[31:0];

    // i_llvm_fpga_push_i32_k_054_push79_covariance29(BLACKBOX,97)@2
    // out out_feedback_out_79@20000000
    // out out_feedback_valid_out_79@20000000
    covariance_i_llvm_fpga_push_i32_k_054_push79_0 thei_llvm_fpga_push_i32_k_054_push79_covariance29 (
        .in_data_in(bgTrunc_i_inc80_covariance28_sel_x_b),
        .in_feedback_stall_in_79(i_llvm_fpga_pop_i32_k_054_pop79_covariance18_out_feedback_stall_out_79),
        .in_keep_going46(redist24_i_llvm_fpga_pipeline_keep_going46_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_79(i_llvm_fpga_push_i32_k_054_push79_covariance29_out_feedback_out_79),
        .out_feedback_valid_out_79(i_llvm_fpga_push_i32_k_054_push79_covariance29_out_feedback_valid_out_79),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_k_054_pop79_covariance18(BLACKBOX,83)@2
    // out out_feedback_stall_out_79@20000000
    covariance_i_llvm_fpga_pop_i32_k_054_pop79_0 thei_llvm_fpga_pop_i32_k_054_pop79_covariance18 (
        .in_data_in(c_i32_083_q),
        .in_dir(redist0_sync_together120_aunroll_x_in_c0_eni15_1_tpl_1_q),
        .in_feedback_in_79(i_llvm_fpga_push_i32_k_054_push79_covariance29_out_feedback_out_79),
        .in_feedback_valid_in_79(i_llvm_fpga_push_i32_k_054_push79_covariance29_out_feedback_valid_out_79),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_i32_k_054_pop79_covariance18_out_data_out),
        .out_feedback_stall_out_79(i_llvm_fpga_pop_i32_k_054_pop79_covariance18_out_feedback_stall_out_79),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom69_covariance19_sel_x(BITSELECT,167)@2
    assign i_idxprom69_covariance19_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_k_054_pop79_covariance18_out_data_out[31:0]};

    // i_idxprom69_covariance19_vt_select_31(BITSELECT,61)@2
    assign i_idxprom69_covariance19_vt_select_31_b = i_idxprom69_covariance19_sel_x_b[31:0];

    // i_idxprom69_covariance19_vt_join(BITJOIN,60)@2
    assign i_idxprom69_covariance19_vt_join_q = {c_i32_083_q, i_idxprom69_covariance19_vt_select_31_b};

    // i_arrayidx725_covariance0_dupName_0_trunc_sel_x(BITSELECT,138)@2
    assign i_arrayidx725_covariance0_dupName_0_trunc_sel_x_b = i_idxprom69_covariance19_vt_join_q[11:0];

    // i_arrayidx725_covariance0_narrow_x(BITSELECT,126)@2
    assign i_arrayidx725_covariance0_narrow_x_b = i_arrayidx725_covariance0_dupName_0_trunc_sel_x_b[4:0];

    // i_arrayidx725_covariance0_c_i7_01_x(CONSTANT,125)
    assign i_arrayidx725_covariance0_c_i7_01_x_q = $unsigned(7'b0000000);

    // i_arrayidx725_covariance0_shift_join_x(BITJOIN,127)@2
    assign i_arrayidx725_covariance0_shift_join_x_q = {i_arrayidx725_covariance0_narrow_x_b, i_arrayidx725_covariance0_c_i7_01_x_q};

    // i_arrayidx725_covariance0_add_x(ADD,122)@2
    assign i_arrayidx725_covariance0_add_x_a = {1'b0, i_arrayidx725_covariance0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx725_covariance0_add_x_b = {1'b0, i_arrayidx725_covariance0_shift_join_x_q};
    assign i_arrayidx725_covariance0_add_x_o = $unsigned(i_arrayidx725_covariance0_add_x_a) + $unsigned(i_arrayidx725_covariance0_add_x_b);
    assign i_arrayidx725_covariance0_add_x_q = i_arrayidx725_covariance0_add_x_o[12:0];

    // i_arrayidx725_covariance0_dupName_2_trunc_sel_x(BITSELECT,139)@2
    assign i_arrayidx725_covariance0_dupName_2_trunc_sel_x_b = i_arrayidx725_covariance0_add_x_q[11:0];

    // i_arrayidx725_covariance0_dupName_0_add_x(ADD,130)@2
    assign i_arrayidx725_covariance0_dupName_0_add_x_a = {1'b0, i_arrayidx725_covariance0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx725_covariance0_dupName_0_add_x_b = {1'b0, i_arrayidx725_covariance0_dupName_0_shift_join_x_q};
    assign i_arrayidx725_covariance0_dupName_0_add_x_o = $unsigned(i_arrayidx725_covariance0_dupName_0_add_x_a) + $unsigned(i_arrayidx725_covariance0_dupName_0_add_x_b);
    assign i_arrayidx725_covariance0_dupName_0_add_x_q = i_arrayidx725_covariance0_dupName_0_add_x_o[12:0];

    // i_arrayidx725_covariance0_dupName_5_trunc_sel_x(BITSELECT,141)@2
    assign i_arrayidx725_covariance0_dupName_5_trunc_sel_x_b = i_arrayidx725_covariance0_dupName_0_add_x_q[11:0];

    // i_arrayidx725_covariance0_append_upper_bits_x(BITJOIN,123)@2
    assign i_arrayidx725_covariance0_append_upper_bits_x_q = {i_arrayidx725_covariance0_upper_bits_x_merged_bit_select_b, i_arrayidx725_covariance0_dupName_5_trunc_sel_x_b};

    // i_arrayidx725_covariance20_vt_select_63(BITSELECT,47)@2
    assign i_arrayidx725_covariance20_vt_select_63_b = i_arrayidx725_covariance0_append_upper_bits_x_q[63:2];

    // i_arrayidx725_covariance20_vt_const_1(CONSTANT,45)
    assign i_arrayidx725_covariance20_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx725_covariance20_vt_join(BITJOIN,46)@2
    assign i_arrayidx725_covariance20_vt_join_q = {i_arrayidx725_covariance20_vt_select_63_b, i_arrayidx725_covariance20_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_covariance8_covariance21(BLACKBOX,72)@2
    // in in_i_stall@20000000
    // out out_o_readdata@6
    // out out_o_stall@5
    // out out_o_valid@6
    // out out_unnamed_covariance8_covariance_avm_address@20000000
    // out out_unnamed_covariance8_covariance_avm_burstcount@20000000
    // out out_unnamed_covariance8_covariance_avm_byteenable@20000000
    // out out_unnamed_covariance8_covariance_avm_enable@20000000
    // out out_unnamed_covariance8_covariance_avm_read@20000000
    // out out_unnamed_covariance8_covariance_avm_write@20000000
    // out out_unnamed_covariance8_covariance_avm_writedata@20000000
    covariance_i_llvm_fpga_mem_unnamed_8_covariance0 thei_llvm_fpga_mem_unnamed_covariance8_covariance21 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx725_covariance20_vt_join_q),
        .in_i_predicate(i_first_cleanup_xor52_covariance4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg9_q),
        .in_unnamed_covariance8_covariance_avm_readdata(in_unnamed_covariance8_covariance_avm_readdata),
        .in_unnamed_covariance8_covariance_avm_readdatavalid(in_unnamed_covariance8_covariance_avm_readdatavalid),
        .in_unnamed_covariance8_covariance_avm_waitrequest(in_unnamed_covariance8_covariance_avm_waitrequest),
        .in_unnamed_covariance8_covariance_avm_writeack(in_unnamed_covariance8_covariance_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_covariance8_covariance21_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_covariance8_covariance_avm_address(i_llvm_fpga_mem_unnamed_covariance8_covariance21_out_unnamed_covariance8_covariance_avm_address),
        .out_unnamed_covariance8_covariance_avm_burstcount(i_llvm_fpga_mem_unnamed_covariance8_covariance21_out_unnamed_covariance8_covariance_avm_burstcount),
        .out_unnamed_covariance8_covariance_avm_byteenable(i_llvm_fpga_mem_unnamed_covariance8_covariance21_out_unnamed_covariance8_covariance_avm_byteenable),
        .out_unnamed_covariance8_covariance_avm_enable(i_llvm_fpga_mem_unnamed_covariance8_covariance21_out_unnamed_covariance8_covariance_avm_enable),
        .out_unnamed_covariance8_covariance_avm_read(i_llvm_fpga_mem_unnamed_covariance8_covariance21_out_unnamed_covariance8_covariance_avm_read),
        .out_unnamed_covariance8_covariance_avm_write(i_llvm_fpga_mem_unnamed_covariance8_covariance21_out_unnamed_covariance8_covariance_avm_write),
        .out_unnamed_covariance8_covariance_avm_writedata(i_llvm_fpga_mem_unnamed_covariance8_covariance21_out_unnamed_covariance8_covariance_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,120)
    assign out_unnamed_covariance8_covariance_avm_address = i_llvm_fpga_mem_unnamed_covariance8_covariance21_out_unnamed_covariance8_covariance_avm_address;
    assign out_unnamed_covariance8_covariance_avm_enable = i_llvm_fpga_mem_unnamed_covariance8_covariance21_out_unnamed_covariance8_covariance_avm_enable;
    assign out_unnamed_covariance8_covariance_avm_read = i_llvm_fpga_mem_unnamed_covariance8_covariance21_out_unnamed_covariance8_covariance_avm_read;
    assign out_unnamed_covariance8_covariance_avm_write = i_llvm_fpga_mem_unnamed_covariance8_covariance21_out_unnamed_covariance8_covariance_avm_write;
    assign out_unnamed_covariance8_covariance_avm_writedata = i_llvm_fpga_mem_unnamed_covariance8_covariance21_out_unnamed_covariance8_covariance_avm_writedata;
    assign out_unnamed_covariance8_covariance_avm_byteenable = i_llvm_fpga_mem_unnamed_covariance8_covariance21_out_unnamed_covariance8_covariance_avm_byteenable;
    assign out_unnamed_covariance8_covariance_avm_burstcount = i_llvm_fpga_mem_unnamed_covariance8_covariance21_out_unnamed_covariance8_covariance_avm_burstcount;

    // valid_fanout_reg10(REG,187)@1 + 1
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

    // valid_fanout_reg4(REG,181)@1 + 1
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

    // valid_fanout_reg5(REG,182)@1 + 1
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

    // i_llvm_fpga_push_i32_j60_056_pop67164_push89_covariance13(BLACKBOX,96)@2
    // out out_feedback_out_89@20000000
    // out out_feedback_valid_out_89@20000000
    covariance_i_llvm_fpga_push_i32_j60_056_pop67164_push89_0 thei_llvm_fpga_push_i32_j60_056_pop67164_push89_covariance13 (
        .in_data_in(i_llvm_fpga_pop_i32_j60_056_pop67164_pop89_covariance12_out_data_out),
        .in_feedback_stall_in_89(i_llvm_fpga_pop_i32_j60_056_pop67164_pop89_covariance12_out_feedback_stall_out_89),
        .in_keep_going46(redist24_i_llvm_fpga_pipeline_keep_going46_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_89(i_llvm_fpga_push_i32_j60_056_pop67164_push89_covariance13_out_feedback_out_89),
        .out_feedback_valid_out_89(i_llvm_fpga_push_i32_j60_056_pop67164_push89_covariance13_out_feedback_valid_out_89),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together120_aunroll_x_in_c0_eni15_2_tpl_1(DELAY,253)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together120_aunroll_x_in_c0_eni15_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together120_aunroll_x_in_c0_eni15_2_tpl_1_q <= $unsigned(in_c0_eni15_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_j60_056_pop67164_pop89_covariance12(BLACKBOX,82)@2
    // out out_feedback_stall_out_89@20000000
    covariance_i_llvm_fpga_pop_i32_j60_056_pop67164_pop89_0 thei_llvm_fpga_pop_i32_j60_056_pop67164_pop89_covariance12 (
        .in_data_in(redist2_sync_together120_aunroll_x_in_c0_eni15_2_tpl_1_q),
        .in_dir(redist0_sync_together120_aunroll_x_in_c0_eni15_1_tpl_1_q),
        .in_feedback_in_89(i_llvm_fpga_push_i32_j60_056_pop67164_push89_covariance13_out_feedback_out_89),
        .in_feedback_valid_in_89(i_llvm_fpga_push_i32_j60_056_pop67164_push89_covariance13_out_feedback_valid_out_89),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_j60_056_pop67164_pop89_covariance12_out_data_out),
        .out_feedback_stall_out_89(i_llvm_fpga_pop_i32_j60_056_pop67164_pop89_covariance12_out_feedback_stall_out_89),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom75_covariance14_sel_x(BITSELECT,169)@2
    assign i_idxprom75_covariance14_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j60_056_pop67164_pop89_covariance12_out_data_out[31:0]};

    // i_idxprom75_covariance14_vt_select_31(BITSELECT,69)@2
    assign i_idxprom75_covariance14_vt_select_31_b = i_idxprom75_covariance14_sel_x_b[31:0];

    // i_idxprom75_covariance14_vt_join(BITJOIN,68)@2
    assign i_idxprom75_covariance14_vt_join_q = {c_i32_083_q, i_idxprom75_covariance14_vt_select_31_b};

    // i_arrayidx766_covariance0_dupName_3_trunc_sel_x(BITSELECT,160)@2
    assign i_arrayidx766_covariance0_dupName_3_trunc_sel_x_b = i_idxprom75_covariance14_vt_join_q[11:0];

    // i_arrayidx766_covariance0_dupName_0_narrow_x(BITSELECT,151)@2
    assign i_arrayidx766_covariance0_dupName_0_narrow_x_b = i_arrayidx766_covariance0_dupName_3_trunc_sel_x_b[9:0];

    // i_arrayidx766_covariance0_dupName_0_shift_join_x(BITJOIN,152)@2
    assign i_arrayidx766_covariance0_dupName_0_shift_join_x_q = {i_arrayidx766_covariance0_dupName_0_narrow_x_b, i_arrayidx725_covariance20_vt_const_1_q};

    // i_arrayidx766_covariance0_dupName_0_add_x(ADD,150)@2
    assign i_arrayidx766_covariance0_dupName_0_add_x_a = {1'b0, i_arrayidx725_covariance0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx766_covariance0_dupName_0_add_x_b = {1'b0, i_arrayidx766_covariance0_dupName_0_shift_join_x_q};
    assign i_arrayidx766_covariance0_dupName_0_add_x_o = $unsigned(i_arrayidx766_covariance0_dupName_0_add_x_a) + $unsigned(i_arrayidx766_covariance0_dupName_0_add_x_b);
    assign i_arrayidx766_covariance0_dupName_0_add_x_q = i_arrayidx766_covariance0_dupName_0_add_x_o[12:0];

    // i_arrayidx766_covariance0_dupName_5_trunc_sel_x(BITSELECT,161)@2
    assign i_arrayidx766_covariance0_dupName_5_trunc_sel_x_b = i_arrayidx766_covariance0_dupName_0_add_x_q[11:0];

    // i_arrayidx766_covariance0_append_upper_bits_x(BITJOIN,143)@2
    assign i_arrayidx766_covariance0_append_upper_bits_x_q = {i_arrayidx725_covariance0_upper_bits_x_merged_bit_select_b, i_arrayidx766_covariance0_dupName_5_trunc_sel_x_b};

    // i_arrayidx766_covariance22_vt_select_63(BITSELECT,50)@2
    assign i_arrayidx766_covariance22_vt_select_63_b = i_arrayidx766_covariance0_append_upper_bits_x_q[63:2];

    // i_arrayidx766_covariance22_vt_join(BITJOIN,49)@2
    assign i_arrayidx766_covariance22_vt_join_q = {i_arrayidx766_covariance22_vt_select_63_b, i_arrayidx725_covariance20_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_covariance9_covariance23(BLACKBOX,73)@2
    // in in_i_stall@20000000
    // out out_o_readdata@6
    // out out_o_stall@5
    // out out_o_valid@6
    // out out_unnamed_covariance9_covariance_avm_address@20000000
    // out out_unnamed_covariance9_covariance_avm_burstcount@20000000
    // out out_unnamed_covariance9_covariance_avm_byteenable@20000000
    // out out_unnamed_covariance9_covariance_avm_enable@20000000
    // out out_unnamed_covariance9_covariance_avm_read@20000000
    // out out_unnamed_covariance9_covariance_avm_write@20000000
    // out out_unnamed_covariance9_covariance_avm_writedata@20000000
    covariance_i_llvm_fpga_mem_unnamed_9_covariance0 thei_llvm_fpga_mem_unnamed_covariance9_covariance23 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx766_covariance22_vt_join_q),
        .in_i_predicate(i_first_cleanup_xor52_covariance4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg10_q),
        .in_unnamed_covariance9_covariance_avm_readdata(in_unnamed_covariance9_covariance_avm_readdata),
        .in_unnamed_covariance9_covariance_avm_readdatavalid(in_unnamed_covariance9_covariance_avm_readdatavalid),
        .in_unnamed_covariance9_covariance_avm_waitrequest(in_unnamed_covariance9_covariance_avm_waitrequest),
        .in_unnamed_covariance9_covariance_avm_writeack(in_unnamed_covariance9_covariance_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_covariance9_covariance23_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_covariance9_covariance_avm_address(i_llvm_fpga_mem_unnamed_covariance9_covariance23_out_unnamed_covariance9_covariance_avm_address),
        .out_unnamed_covariance9_covariance_avm_burstcount(i_llvm_fpga_mem_unnamed_covariance9_covariance23_out_unnamed_covariance9_covariance_avm_burstcount),
        .out_unnamed_covariance9_covariance_avm_byteenable(i_llvm_fpga_mem_unnamed_covariance9_covariance23_out_unnamed_covariance9_covariance_avm_byteenable),
        .out_unnamed_covariance9_covariance_avm_enable(i_llvm_fpga_mem_unnamed_covariance9_covariance23_out_unnamed_covariance9_covariance_avm_enable),
        .out_unnamed_covariance9_covariance_avm_read(i_llvm_fpga_mem_unnamed_covariance9_covariance23_out_unnamed_covariance9_covariance_avm_read),
        .out_unnamed_covariance9_covariance_avm_write(i_llvm_fpga_mem_unnamed_covariance9_covariance23_out_unnamed_covariance9_covariance_avm_write),
        .out_unnamed_covariance9_covariance_avm_writedata(i_llvm_fpga_mem_unnamed_covariance9_covariance23_out_unnamed_covariance9_covariance_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,121)
    assign out_unnamed_covariance9_covariance_avm_address = i_llvm_fpga_mem_unnamed_covariance9_covariance23_out_unnamed_covariance9_covariance_avm_address;
    assign out_unnamed_covariance9_covariance_avm_enable = i_llvm_fpga_mem_unnamed_covariance9_covariance23_out_unnamed_covariance9_covariance_avm_enable;
    assign out_unnamed_covariance9_covariance_avm_read = i_llvm_fpga_mem_unnamed_covariance9_covariance23_out_unnamed_covariance9_covariance_avm_read;
    assign out_unnamed_covariance9_covariance_avm_write = i_llvm_fpga_mem_unnamed_covariance9_covariance23_out_unnamed_covariance9_covariance_avm_write;
    assign out_unnamed_covariance9_covariance_avm_writedata = i_llvm_fpga_mem_unnamed_covariance9_covariance23_out_unnamed_covariance9_covariance_avm_writedata;
    assign out_unnamed_covariance9_covariance_avm_byteenable = i_llvm_fpga_mem_unnamed_covariance9_covariance23_out_unnamed_covariance9_covariance_avm_byteenable;
    assign out_unnamed_covariance9_covariance_avm_burstcount = i_llvm_fpga_mem_unnamed_covariance9_covariance23_out_unnamed_covariance9_covariance_avm_burstcount;

    // redist17_sync_together120_aunroll_x_in_i_valid_8(DELAY,268)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist17_sync_together120_aunroll_x_in_i_valid_8 ( .xin(redist16_sync_together120_aunroll_x_in_i_valid_1_q), .xout(redist17_sync_together120_aunroll_x_in_i_valid_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg0(REG,177)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist17_sync_together120_aunroll_x_in_i_valid_8_q);
        end
    end

    // redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_notEnable(LOGICAL,335)
    assign redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_nor(LOGICAL,336)
    assign redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_nor_q = ~ (redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_notEnable_q | redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_sticky_ena_q);

    // redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_mem_last(CONSTANT,332)
    assign redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_mem_last_q = $unsigned(4'b0110);

    // redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_cmp(LOGICAL,333)
    assign redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_cmp_b = {1'b0, redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_rdcnt_q};
    assign redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_cmp_q = $unsigned(redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_mem_last_q == redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_cmpReg(REG,334)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_cmpReg_q <= $unsigned(redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_cmp_q);
        end
    end

    // redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_sticky_ena(REG,337)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_nor_q == 1'b1)
        begin
            redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_sticky_ena_q <= $unsigned(redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_cmpReg_q);
        end
    end

    // redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_enaAnd(LOGICAL,338)
    assign redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_enaAnd_q = redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_sticky_ena_q & VCC_q;

    // redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_rdcnt(COUNTER,330)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_rdcnt_i <= 3'd0;
        end
        else
        begin
            redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_rdcnt_i <= $unsigned(redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_rdcnt_i) + $unsigned(3'd1);
        end
    end
    assign redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_rdcnt_q = redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_rdcnt_i[2:0];

    // redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_wraddr(REG,331)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_wraddr_q <= $unsigned(3'b111);
        end
        else
        begin
            redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_wraddr_q <= $unsigned(redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_rdcnt_q);
        end
    end

    // redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_mem(DUALMEM,329)
    assign redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_mem_ia = $unsigned(in_c0_eni15_15_tpl);
    assign redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_mem_aa = redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_wraddr_q;
    assign redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_mem_ab = redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_rdcnt_q;
    assign redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_mem_reset0 = ~ (resetn);
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
    ) redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_mem_dmem (
        .clocken1(redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_mem_aa),
        .data_a(redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_mem_ab),
        .q_b(redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_mem_iq),
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
    assign redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_mem_q = redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_mem_iq[31:0];

    // redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_notEnable(LOGICAL,325)
    assign redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_nor(LOGICAL,326)
    assign redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_nor_q = ~ (redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_notEnable_q | redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_sticky_ena_q);

    // redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_mem_last(CONSTANT,322)
    assign redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_mem_last_q = $unsigned(4'b0110);

    // redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_cmp(LOGICAL,323)
    assign redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_cmp_b = {1'b0, redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_rdcnt_q};
    assign redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_cmp_q = $unsigned(redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_mem_last_q == redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_cmpReg(REG,324)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_cmpReg_q <= $unsigned(redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_cmp_q);
        end
    end

    // redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_sticky_ena(REG,327)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_nor_q == 1'b1)
        begin
            redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_sticky_ena_q <= $unsigned(redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_cmpReg_q);
        end
    end

    // redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_enaAnd(LOGICAL,328)
    assign redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_enaAnd_q = redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_sticky_ena_q & VCC_q;

    // redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_rdcnt(COUNTER,320)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_rdcnt_i <= 3'd0;
        end
        else
        begin
            redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_rdcnt_i <= $unsigned(redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_rdcnt_i) + $unsigned(3'd1);
        end
    end
    assign redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_rdcnt_q = redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_rdcnt_i[2:0];

    // redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_wraddr(REG,321)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_wraddr_q <= $unsigned(3'b111);
        end
        else
        begin
            redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_wraddr_q <= $unsigned(redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_rdcnt_q);
        end
    end

    // redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_mem(DUALMEM,319)
    assign redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_mem_ia = $unsigned(in_c0_eni15_14_tpl);
    assign redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_mem_aa = redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_wraddr_q;
    assign redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_mem_ab = redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_rdcnt_q;
    assign redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_mem_reset0 = ~ (resetn);
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
    ) redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_mem_dmem (
        .clocken1(redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_mem_aa),
        .data_a(redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_mem_ab),
        .q_b(redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_mem_iq),
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
    assign redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_mem_q = redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_mem_iq[31:0];

    // redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_notEnable(LOGICAL,315)
    assign redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_nor(LOGICAL,316)
    assign redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_nor_q = ~ (redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_notEnable_q | redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_sticky_ena_q);

    // redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_mem_last(CONSTANT,312)
    assign redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_mem_last_q = $unsigned(4'b0110);

    // redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_cmp(LOGICAL,313)
    assign redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_cmp_b = {1'b0, redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_rdcnt_q};
    assign redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_cmp_q = $unsigned(redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_mem_last_q == redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_cmpReg(REG,314)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_cmpReg_q <= $unsigned(redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_cmp_q);
        end
    end

    // redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_sticky_ena(REG,317)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_nor_q == 1'b1)
        begin
            redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_sticky_ena_q <= $unsigned(redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_cmpReg_q);
        end
    end

    // redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_enaAnd(LOGICAL,318)
    assign redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_enaAnd_q = redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_sticky_ena_q & VCC_q;

    // redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_rdcnt(COUNTER,310)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_rdcnt_i <= 3'd0;
        end
        else
        begin
            redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_rdcnt_i <= $unsigned(redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_rdcnt_i) + $unsigned(3'd1);
        end
    end
    assign redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_rdcnt_q = redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_rdcnt_i[2:0];

    // redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_wraddr(REG,311)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_wraddr_q <= $unsigned(3'b111);
        end
        else
        begin
            redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_wraddr_q <= $unsigned(redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_rdcnt_q);
        end
    end

    // redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_mem(DUALMEM,309)
    assign redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_mem_ia = $unsigned(in_c0_eni15_13_tpl);
    assign redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_mem_aa = redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_wraddr_q;
    assign redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_mem_ab = redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_rdcnt_q;
    assign redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_mem_reset0 = ~ (resetn);
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
    ) redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_mem_dmem (
        .clocken1(redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_mem_aa),
        .data_a(redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_mem_ab),
        .q_b(redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_mem_iq),
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
    assign redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_mem_q = redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_mem_iq[31:0];

    // redist12_sync_together120_aunroll_x_in_c0_eni15_12_tpl_9(DELAY,263)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist12_sync_together120_aunroll_x_in_c0_eni15_12_tpl_9 ( .xin(in_c0_eni15_12_tpl), .xout(redist12_sync_together120_aunroll_x_in_c0_eni15_12_tpl_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_notEnable(LOGICAL,305)
    assign redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_nor(LOGICAL,306)
    assign redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_nor_q = ~ (redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_notEnable_q | redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_sticky_ena_q);

    // redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_mem_last(CONSTANT,302)
    assign redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_mem_last_q = $unsigned(4'b0110);

    // redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_cmp(LOGICAL,303)
    assign redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_cmp_b = {1'b0, redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_rdcnt_q};
    assign redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_cmp_q = $unsigned(redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_mem_last_q == redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_cmpReg(REG,304)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_cmpReg_q <= $unsigned(redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_cmp_q);
        end
    end

    // redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_sticky_ena(REG,307)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_nor_q == 1'b1)
        begin
            redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_sticky_ena_q <= $unsigned(redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_cmpReg_q);
        end
    end

    // redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_enaAnd(LOGICAL,308)
    assign redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_enaAnd_q = redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_sticky_ena_q & VCC_q;

    // redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_rdcnt(COUNTER,300)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_rdcnt_i <= 3'd0;
        end
        else
        begin
            redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_rdcnt_i <= $unsigned(redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_rdcnt_i) + $unsigned(3'd1);
        end
    end
    assign redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_rdcnt_q = redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_rdcnt_i[2:0];

    // redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_wraddr(REG,301)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_wraddr_q <= $unsigned(3'b111);
        end
        else
        begin
            redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_wraddr_q <= $unsigned(redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_rdcnt_q);
        end
    end

    // redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_mem(DUALMEM,299)
    assign redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_mem_ia = $unsigned(in_c0_eni15_11_tpl);
    assign redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_mem_aa = redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_wraddr_q;
    assign redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_mem_ab = redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_rdcnt_q;
    assign redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_mem_reset0 = ~ (resetn);
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
    ) redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_mem_dmem (
        .clocken1(redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_mem_aa),
        .data_a(redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_mem_ab),
        .q_b(redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_mem_iq),
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
    assign redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_mem_q = redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_mem_iq[32:0];

    // redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_notEnable(LOGICAL,295)
    assign redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_nor(LOGICAL,296)
    assign redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_nor_q = ~ (redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_notEnable_q | redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_sticky_ena_q);

    // redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_mem_last(CONSTANT,292)
    assign redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_mem_last_q = $unsigned(4'b0110);

    // redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_cmp(LOGICAL,293)
    assign redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_cmp_b = {1'b0, redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_rdcnt_q};
    assign redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_cmp_q = $unsigned(redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_mem_last_q == redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_cmpReg(REG,294)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_cmpReg_q <= $unsigned(redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_cmp_q);
        end
    end

    // redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_sticky_ena(REG,297)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_nor_q == 1'b1)
        begin
            redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_sticky_ena_q <= $unsigned(redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_cmpReg_q);
        end
    end

    // redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_enaAnd(LOGICAL,298)
    assign redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_enaAnd_q = redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_sticky_ena_q & VCC_q;

    // redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_rdcnt(COUNTER,290)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_rdcnt_i <= 3'd0;
        end
        else
        begin
            redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_rdcnt_i <= $unsigned(redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_rdcnt_i) + $unsigned(3'd1);
        end
    end
    assign redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_rdcnt_q = redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_rdcnt_i[2:0];

    // redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_wraddr(REG,291)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_wraddr_q <= $unsigned(3'b111);
        end
        else
        begin
            redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_wraddr_q <= $unsigned(redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_rdcnt_q);
        end
    end

    // redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_mem(DUALMEM,289)
    assign redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_mem_ia = $unsigned(in_c0_eni15_10_tpl);
    assign redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_mem_aa = redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_wraddr_q;
    assign redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_mem_ab = redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_rdcnt_q;
    assign redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_mem_reset0 = ~ (resetn);
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
    ) redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_mem_dmem (
        .clocken1(redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_mem_aa),
        .data_a(redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_mem_ab),
        .q_b(redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_mem_iq),
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
    assign redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_mem_q = redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_mem_iq[31:0];

    // redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_notEnable(LOGICAL,285)
    assign redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_nor(LOGICAL,286)
    assign redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_nor_q = ~ (redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_notEnable_q | redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_sticky_ena_q);

    // redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_mem_last(CONSTANT,282)
    assign redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_mem_last_q = $unsigned(4'b0110);

    // redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_cmp(LOGICAL,283)
    assign redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_cmp_b = {1'b0, redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_rdcnt_q};
    assign redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_cmp_q = $unsigned(redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_mem_last_q == redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_cmpReg(REG,284)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_cmpReg_q <= $unsigned(redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_cmp_q);
        end
    end

    // redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_sticky_ena(REG,287)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_nor_q == 1'b1)
        begin
            redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_sticky_ena_q <= $unsigned(redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_cmpReg_q);
        end
    end

    // redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_enaAnd(LOGICAL,288)
    assign redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_enaAnd_q = redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_sticky_ena_q & VCC_q;

    // redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_rdcnt(COUNTER,280)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_rdcnt_i <= 3'd0;
        end
        else
        begin
            redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_rdcnt_i <= $unsigned(redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_rdcnt_i) + $unsigned(3'd1);
        end
    end
    assign redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_rdcnt_q = redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_rdcnt_i[2:0];

    // redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_wraddr(REG,281)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_wraddr_q <= $unsigned(3'b111);
        end
        else
        begin
            redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_wraddr_q <= $unsigned(redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_rdcnt_q);
        end
    end

    // redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_mem(DUALMEM,279)
    assign redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_mem_ia = $unsigned(in_c0_eni15_9_tpl);
    assign redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_mem_aa = redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_wraddr_q;
    assign redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_mem_ab = redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_rdcnt_q;
    assign redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_mem_reset0 = ~ (resetn);
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
    ) redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_mem_dmem (
        .clocken1(redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_mem_aa),
        .data_a(redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_mem_ab),
        .q_b(redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_mem_iq),
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
    assign redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_mem_q = redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_mem_iq[31:0];

    // valid_fanout_reg22(REG,199)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg22_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg23(REG,200)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_notcmp58163_push88_covariance50(BLACKBOX,89)@2
    // out out_feedback_out_88@20000000
    // out out_feedback_valid_out_88@20000000
    covariance_i_llvm_fpga_push_i1_notcmp58163_push88_0 thei_llvm_fpga_push_i1_notcmp58163_push88_covariance50 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp58163_pop88_covariance49_out_data_out),
        .in_feedback_stall_in_88(i_llvm_fpga_pop_i1_notcmp58163_pop88_covariance49_out_feedback_stall_out_88),
        .in_keep_going46(redist24_i_llvm_fpga_pipeline_keep_going46_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(),
        .out_feedback_out_88(i_llvm_fpga_push_i1_notcmp58163_push88_covariance50_out_feedback_out_88),
        .out_feedback_valid_out_88(i_llvm_fpga_push_i1_notcmp58163_push88_covariance50_out_feedback_valid_out_88),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_sync_together120_aunroll_x_in_c0_eni15_8_tpl_1(DELAY,259)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together120_aunroll_x_in_c0_eni15_8_tpl_1_q <= '0;
        end
        else
        begin
            redist8_sync_together120_aunroll_x_in_c0_eni15_8_tpl_1_q <= $unsigned(in_c0_eni15_8_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp58163_pop88_covariance49(BLACKBOX,76)@2
    // out out_feedback_stall_out_88@20000000
    covariance_i_llvm_fpga_pop_i1_notcmp58163_pop88_0 thei_llvm_fpga_pop_i1_notcmp58163_pop88_covariance49 (
        .in_data_in(redist8_sync_together120_aunroll_x_in_c0_eni15_8_tpl_1_q),
        .in_dir(redist0_sync_together120_aunroll_x_in_c0_eni15_1_tpl_1_q),
        .in_feedback_in_88(i_llvm_fpga_push_i1_notcmp58163_push88_covariance50_out_feedback_out_88),
        .in_feedback_valid_in_88(i_llvm_fpga_push_i1_notcmp58163_push88_covariance50_out_feedback_valid_out_88),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp58163_pop88_covariance49_out_data_out),
        .out_feedback_stall_out_88(i_llvm_fpga_pop_i1_notcmp58163_pop88_covariance49_out_feedback_stall_out_88),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist23_i_llvm_fpga_pop_i1_notcmp58163_pop88_covariance49_out_data_out_8(DELAY,274)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist23_i_llvm_fpga_pop_i1_notcmp58163_pop88_covariance49_out_data_out_8 ( .xin(i_llvm_fpga_pop_i1_notcmp58163_pop88_covariance49_out_data_out), .xout(redist23_i_llvm_fpga_pop_i1_notcmp58163_pop88_covariance49_out_data_out_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg20(REG,197)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg20_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist17_sync_together120_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg21(REG,198)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist17_sync_together120_aunroll_x_in_i_valid_8_q);
        end
    end

    // i_llvm_fpga_push_i1_forked59162_push87_covariance48(BLACKBOX,87)@10
    // out out_feedback_out_87@20000000
    // out out_feedback_valid_out_87@20000000
    covariance_i_llvm_fpga_push_i1_forked59162_push87_0 thei_llvm_fpga_push_i1_forked59162_push87_covariance48 (
        .in_data_in(i_llvm_fpga_pop_i1_forked59162_pop87_covariance47_out_data_out),
        .in_feedback_stall_in_87(i_llvm_fpga_pop_i1_forked59162_pop87_covariance47_out_feedback_stall_out_87),
        .in_keep_going46(redist25_i_llvm_fpga_pipeline_keep_going46_covariance6_out_data_out_9_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(),
        .out_feedback_out_87(i_llvm_fpga_push_i1_forked59162_push87_covariance48_out_feedback_out_87),
        .out_feedback_valid_out_87(i_llvm_fpga_push_i1_forked59162_push87_covariance48_out_feedback_valid_out_87),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together120_aunroll_x_in_c0_eni15_1_tpl_9(DELAY,252)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist1_sync_together120_aunroll_x_in_c0_eni15_1_tpl_9 ( .xin(redist0_sync_together120_aunroll_x_in_c0_eni15_1_tpl_1_q), .xout(redist1_sync_together120_aunroll_x_in_c0_eni15_1_tpl_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist7_sync_together120_aunroll_x_in_c0_eni15_7_tpl_9(DELAY,258)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist7_sync_together120_aunroll_x_in_c0_eni15_7_tpl_9 ( .xin(in_c0_eni15_7_tpl), .xout(redist7_sync_together120_aunroll_x_in_c0_eni15_7_tpl_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i1_forked59162_pop87_covariance47(BLACKBOX,75)@10
    // out out_feedback_stall_out_87@20000000
    covariance_i_llvm_fpga_pop_i1_forked59162_pop87_0 thei_llvm_fpga_pop_i1_forked59162_pop87_covariance47 (
        .in_data_in(redist7_sync_together120_aunroll_x_in_c0_eni15_7_tpl_9_q),
        .in_dir(redist1_sync_together120_aunroll_x_in_c0_eni15_1_tpl_9_q),
        .in_feedback_in_87(i_llvm_fpga_push_i1_forked59162_push87_covariance48_out_feedback_out_87),
        .in_feedback_valid_in_87(i_llvm_fpga_push_i1_forked59162_push87_covariance48_out_feedback_valid_out_87),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(i_llvm_fpga_pop_i1_forked59162_pop87_covariance47_out_data_out),
        .out_feedback_stall_out_87(i_llvm_fpga_pop_i1_forked59162_pop87_covariance47_out_feedback_stall_out_87),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg18(REG,195)@1 + 1
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

    // valid_fanout_reg19(REG,196)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_notcmp63157_push85_covariance46(BLACKBOX,90)@2
    // out out_feedback_out_85@20000000
    // out out_feedback_valid_out_85@20000000
    covariance_i_llvm_fpga_push_i1_notcmp63157_push85_0 thei_llvm_fpga_push_i1_notcmp63157_push85_covariance46 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp63157_pop85_covariance45_out_data_out),
        .in_feedback_stall_in_85(i_llvm_fpga_pop_i1_notcmp63157_pop85_covariance45_out_feedback_stall_out_85),
        .in_keep_going46(redist24_i_llvm_fpga_pipeline_keep_going46_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(),
        .out_feedback_out_85(i_llvm_fpga_push_i1_notcmp63157_push85_covariance46_out_feedback_out_85),
        .out_feedback_valid_out_85(i_llvm_fpga_push_i1_notcmp63157_push85_covariance46_out_feedback_valid_out_85),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together120_aunroll_x_in_c0_eni15_6_tpl_1(DELAY,257)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together120_aunroll_x_in_c0_eni15_6_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together120_aunroll_x_in_c0_eni15_6_tpl_1_q <= $unsigned(in_c0_eni15_6_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp63157_pop85_covariance45(BLACKBOX,77)@2
    // out out_feedback_stall_out_85@20000000
    covariance_i_llvm_fpga_pop_i1_notcmp63157_pop85_0 thei_llvm_fpga_pop_i1_notcmp63157_pop85_covariance45 (
        .in_data_in(redist6_sync_together120_aunroll_x_in_c0_eni15_6_tpl_1_q),
        .in_dir(redist0_sync_together120_aunroll_x_in_c0_eni15_1_tpl_1_q),
        .in_feedback_in_85(i_llvm_fpga_push_i1_notcmp63157_push85_covariance46_out_feedback_out_85),
        .in_feedback_valid_in_85(i_llvm_fpga_push_i1_notcmp63157_push85_covariance46_out_feedback_valid_out_85),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp63157_pop85_covariance45_out_data_out),
        .out_feedback_stall_out_85(i_llvm_fpga_pop_i1_notcmp63157_pop85_covariance45_out_feedback_stall_out_85),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist22_i_llvm_fpga_pop_i1_notcmp63157_pop85_covariance45_out_data_out_8(DELAY,273)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist22_i_llvm_fpga_pop_i1_notcmp63157_pop85_covariance45_out_data_out_8 ( .xin(i_llvm_fpga_pop_i1_notcmp63157_pop85_covariance45_out_data_out), .xout(redist22_i_llvm_fpga_pop_i1_notcmp63157_pop85_covariance45_out_data_out_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_notEnable(LOGICAL,345)
    assign redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_notEnable_q = $unsigned(~ (VCC_q));

    // redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_nor(LOGICAL,346)
    assign redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_nor_q = ~ (redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_notEnable_q | redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_sticky_ena_q);

    // redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_mem_last(CONSTANT,342)
    assign redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_mem_last_q = $unsigned(4'b0101);

    // redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_cmp(LOGICAL,343)
    assign redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_cmp_b = {1'b0, redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_rdcnt_q};
    assign redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_cmp_q = $unsigned(redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_mem_last_q == redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_cmp_b ? 1'b1 : 1'b0);

    // redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_cmpReg(REG,344)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_cmpReg_q <= $unsigned(redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_cmp_q);
        end
    end

    // redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_sticky_ena(REG,347)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_nor_q == 1'b1)
        begin
            redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_sticky_ena_q <= $unsigned(redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_cmpReg_q);
        end
    end

    // redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_enaAnd(LOGICAL,348)
    assign redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_enaAnd_q = redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_sticky_ena_q & VCC_q;

    // redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_rdcnt(COUNTER,340)
    // low=0, high=6, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_rdcnt_i <= 3'd0;
            redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_rdcnt_i == 3'd5)
            begin
                redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_rdcnt_eq <= 1'b0;
            end
            if (redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_rdcnt_eq == 1'b1)
            begin
                redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_rdcnt_i <= $unsigned(redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_rdcnt_i) + $unsigned(3'd2);
            end
            else
            begin
                redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_rdcnt_i <= $unsigned(redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_rdcnt_q = redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_rdcnt_i[2:0];

    // valid_fanout_reg16(REG,193)@1 + 1
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

    // valid_fanout_reg17(REG,194)@1 + 1
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

    // i_llvm_fpga_push_i32_reorder_limiter_enter144_push84_covariance44(BLACKBOX,99)@2
    // out out_feedback_out_84@20000000
    // out out_feedback_valid_out_84@20000000
    covariance_i_llvm_fpga_push_i32_reorder_0000er_enter144_push84_0 thei_llvm_fpga_push_i32_reorder_limiter_enter144_push84_covariance44 (
        .in_data_in(i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out),
        .in_feedback_stall_in_84(i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_feedback_stall_out_84),
        .in_keep_going46(redist24_i_llvm_fpga_pipeline_keep_going46_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(),
        .out_feedback_out_84(i_llvm_fpga_push_i32_reorder_limiter_enter144_push84_covariance44_out_feedback_out_84),
        .out_feedback_valid_out_84(i_llvm_fpga_push_i32_reorder_limiter_enter144_push84_covariance44_out_feedback_valid_out_84),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together120_aunroll_x_in_c0_eni15_5_tpl_1(DELAY,256)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together120_aunroll_x_in_c0_eni15_5_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together120_aunroll_x_in_c0_eni15_5_tpl_1_q <= $unsigned(in_c0_eni15_5_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43(BLACKBOX,85)@2
    // out out_feedback_stall_out_84@20000000
    covariance_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_0 thei_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43 (
        .in_data_in(redist5_sync_together120_aunroll_x_in_c0_eni15_5_tpl_1_q),
        .in_dir(redist0_sync_together120_aunroll_x_in_c0_eni15_1_tpl_1_q),
        .in_feedback_in_84(i_llvm_fpga_push_i32_reorder_limiter_enter144_push84_covariance44_out_feedback_out_84),
        .in_feedback_valid_in_84(i_llvm_fpga_push_i32_reorder_limiter_enter144_push84_covariance44_out_feedback_valid_out_84),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out),
        .out_feedback_stall_out_84(i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_feedback_stall_out_84),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_wraddr(REG,341)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_wraddr_q <= $unsigned(3'b110);
        end
        else
        begin
            redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_wraddr_q <= $unsigned(redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_rdcnt_q);
        end
    end

    // redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_mem(DUALMEM,339)
    assign redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_mem_ia = $unsigned(i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out);
    assign redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_mem_aa = redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_wraddr_q;
    assign redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_mem_ab = redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_rdcnt_q;
    assign redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_mem_reset0 = ~ (resetn);
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
    ) redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_mem_dmem (
        .clocken1(redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_mem_reset0),
        .clock1(clock),
        .address_a(redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_mem_aa),
        .data_a(redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_mem_ab),
        .q_b(redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_mem_iq),
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
    assign redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_mem_q = redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_mem_iq[31:0];

    // redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_notEnable(LOGICAL,355)
    assign redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_notEnable_q = $unsigned(~ (VCC_q));

    // redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_nor(LOGICAL,356)
    assign redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_nor_q = ~ (redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_notEnable_q | redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_sticky_ena_q);

    // redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_mem_last(CONSTANT,352)
    assign redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_mem_last_q = $unsigned(4'b0101);

    // redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_cmp(LOGICAL,353)
    assign redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_cmp_b = {1'b0, redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_rdcnt_q};
    assign redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_cmp_q = $unsigned(redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_mem_last_q == redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_cmp_b ? 1'b1 : 1'b0);

    // redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_cmpReg(REG,354)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_cmpReg_q <= $unsigned(redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_cmp_q);
        end
    end

    // redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_sticky_ena(REG,357)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_nor_q == 1'b1)
        begin
            redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_sticky_ena_q <= $unsigned(redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_cmpReg_q);
        end
    end

    // redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_enaAnd(LOGICAL,358)
    assign redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_enaAnd_q = redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_sticky_ena_q & VCC_q;

    // redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_rdcnt(COUNTER,350)
    // low=0, high=6, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_rdcnt_i <= 3'd0;
            redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_rdcnt_i == 3'd5)
            begin
                redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_rdcnt_eq <= 1'b0;
            end
            if (redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_rdcnt_eq == 1'b1)
            begin
                redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_rdcnt_i <= $unsigned(redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_rdcnt_i) + $unsigned(3'd2);
            end
            else
            begin
                redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_rdcnt_i <= $unsigned(redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_rdcnt_q = redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_rdcnt_i[2:0];

    // valid_fanout_reg14(REG,191)@1 + 1
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

    // valid_fanout_reg15(REG,192)@1 + 1
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

    // i_llvm_fpga_push_i32_lim_ext139_push83_covariance42(BLACKBOX,98)@2
    // out out_feedback_out_83@20000000
    // out out_feedback_valid_out_83@20000000
    covariance_i_llvm_fpga_push_i32_lim_ext139_push83_0 thei_llvm_fpga_push_i32_lim_ext139_push83_covariance42 (
        .in_data_in(i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out),
        .in_feedback_stall_in_83(i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_feedback_stall_out_83),
        .in_keep_going46(redist24_i_llvm_fpga_pipeline_keep_going46_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_83(i_llvm_fpga_push_i32_lim_ext139_push83_covariance42_out_feedback_out_83),
        .out_feedback_valid_out_83(i_llvm_fpga_push_i32_lim_ext139_push83_covariance42_out_feedback_valid_out_83),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together120_aunroll_x_in_c0_eni15_4_tpl_1(DELAY,255)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together120_aunroll_x_in_c0_eni15_4_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together120_aunroll_x_in_c0_eni15_4_tpl_1_q <= $unsigned(in_c0_eni15_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41(BLACKBOX,84)@2
    // out out_feedback_stall_out_83@20000000
    covariance_i_llvm_fpga_pop_i32_lim_ext139_pop83_0 thei_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41 (
        .in_data_in(redist4_sync_together120_aunroll_x_in_c0_eni15_4_tpl_1_q),
        .in_dir(redist0_sync_together120_aunroll_x_in_c0_eni15_1_tpl_1_q),
        .in_feedback_in_83(i_llvm_fpga_push_i32_lim_ext139_push83_covariance42_out_feedback_out_83),
        .in_feedback_valid_in_83(i_llvm_fpga_push_i32_lim_ext139_push83_covariance42_out_feedback_valid_out_83),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out),
        .out_feedback_stall_out_83(i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_feedback_stall_out_83),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_wraddr(REG,351)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_wraddr_q <= $unsigned(3'b110);
        end
        else
        begin
            redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_wraddr_q <= $unsigned(redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_rdcnt_q);
        end
    end

    // redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_mem(DUALMEM,349)
    assign redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_mem_ia = $unsigned(i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out);
    assign redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_mem_aa = redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_wraddr_q;
    assign redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_mem_ab = redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_rdcnt_q;
    assign redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_mem_reset0 = ~ (resetn);
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
    ) redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_mem_dmem (
        .clocken1(redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_mem_reset0),
        .clock1(clock),
        .address_a(redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_mem_aa),
        .data_a(redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_mem_ab),
        .q_b(redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_mem_iq),
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
    assign redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_mem_q = redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_mem_iq[31:0];

    // i_masked55_covariance40(LOGICAL,101)@2 + 1
    assign i_masked55_covariance40_qi = i_notcmp42_covariance33_q & i_first_cleanup51_covariance3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked55_covariance40_delay ( .xin(i_masked55_covariance40_qi), .xout(i_masked55_covariance40_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist19_i_masked55_covariance40_q_8(DELAY,270)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist19_i_masked55_covariance40_q_8 ( .xin(i_masked55_covariance40_q), .xout(redist19_i_masked55_covariance40_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg11(REG,188)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist17_sync_together120_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg12(REG,189)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist17_sync_together120_aunroll_x_in_i_valid_8_q);
        end
    end

    // i_llvm_fpga_push_i32_c_053_push80_covariance27(BLACKBOX,94)@10
    // out out_feedback_out_80@20000000
    // out out_feedback_valid_out_80@20000000
    covariance_i_llvm_fpga_push_i32_c_053_push80_0 thei_llvm_fpga_push_i32_c_053_push80_covariance27 (
        .in_data_in(bgTrunc_i_add78_covariance26_sel_x_b),
        .in_feedback_stall_in_80(i_llvm_fpga_pop_i32_c_053_pop80_covariance25_out_feedback_stall_out_80),
        .in_keep_going46(redist25_i_llvm_fpga_pipeline_keep_going46_covariance6_out_data_out_9_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_80(i_llvm_fpga_push_i32_c_053_push80_covariance27_out_feedback_out_80),
        .out_feedback_valid_out_80(i_llvm_fpga_push_i32_c_053_push80_covariance27_out_feedback_valid_out_80),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_c_053_pop80_covariance25(BLACKBOX,80)@10
    // out out_feedback_stall_out_80@20000000
    covariance_i_llvm_fpga_pop_i32_c_053_pop80_0 thei_llvm_fpga_pop_i32_c_053_pop80_covariance25 (
        .in_data_in(c_i32_083_q),
        .in_dir(redist1_sync_together120_aunroll_x_in_c0_eni15_1_tpl_9_q),
        .in_feedback_in_80(i_llvm_fpga_push_i32_c_053_push80_covariance27_out_feedback_out_80),
        .in_feedback_valid_in_80(i_llvm_fpga_push_i32_c_053_push80_covariance27_out_feedback_valid_out_80),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i32_c_053_pop80_covariance25_out_data_out),
        .out_feedback_stall_out_80(i_llvm_fpga_pop_i32_c_053_pop80_covariance25_out_feedback_stall_out_80),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul77_covariance24_bs2_merged_bit_select(BITSELECT,249)@6
    assign i_mul77_covariance24_bs2_merged_bit_select_b = i_llvm_fpga_mem_unnamed_covariance8_covariance21_out_o_readdata[31:18];
    assign i_mul77_covariance24_bs2_merged_bit_select_c = i_llvm_fpga_mem_unnamed_covariance8_covariance21_out_o_readdata[17:0];

    // i_mul77_covariance24_bs1_merged_bit_select(BITSELECT,250)@6
    assign i_mul77_covariance24_bs1_merged_bit_select_b = i_llvm_fpga_mem_unnamed_covariance9_covariance23_out_o_readdata[31:18];
    assign i_mul77_covariance24_bs1_merged_bit_select_c = i_llvm_fpga_mem_unnamed_covariance9_covariance23_out_o_readdata[17:0];

    // i_mul77_covariance24_ma3_cma(CHAINMULTADD,247)@6 + 3
    assign i_mul77_covariance24_ma3_cma_reset = ~ (resetn);
    assign i_mul77_covariance24_ma3_cma_ena0 = 1'b1;
    assign i_mul77_covariance24_ma3_cma_ena1 = i_mul77_covariance24_ma3_cma_ena0;
    assign i_mul77_covariance24_ma3_cma_ena2 = i_mul77_covariance24_ma3_cma_ena0;

    assign i_mul77_covariance24_ma3_cma_a0 = i_mul77_covariance24_bs1_merged_bit_select_b;
    assign i_mul77_covariance24_ma3_cma_c0 = i_mul77_covariance24_bs2_merged_bit_select_c;
    assign i_mul77_covariance24_ma3_cma_a1 = i_mul77_covariance24_bs2_merged_bit_select_b;
    assign i_mul77_covariance24_ma3_cma_c1 = i_mul77_covariance24_bs1_merged_bit_select_c;
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
    ) i_mul77_covariance24_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul77_covariance24_ma3_cma_ena2, i_mul77_covariance24_ma3_cma_ena1, i_mul77_covariance24_ma3_cma_ena0 }),
        .aclr({ i_mul77_covariance24_ma3_cma_reset, i_mul77_covariance24_ma3_cma_reset }),
        .ay(i_mul77_covariance24_ma3_cma_a1),
        .by(i_mul77_covariance24_ma3_cma_a0),
        .ax(i_mul77_covariance24_ma3_cma_c1),
        .bx(i_mul77_covariance24_ma3_cma_c0),
        .resulta(i_mul77_covariance24_ma3_cma_s0),
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
    i_mul77_covariance24_ma3_cma_delay ( .xin(i_mul77_covariance24_ma3_cma_s0), .xout(i_mul77_covariance24_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul77_covariance24_ma3_cma_q = $unsigned(i_mul77_covariance24_ma3_cma_qq[32:0]);

    // i_mul77_covariance24_sums_align_1(BITSHIFT,226)@9
    assign i_mul77_covariance24_sums_align_1_qint = { i_mul77_covariance24_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul77_covariance24_sums_align_1_q = i_mul77_covariance24_sums_align_1_qint[50:0];

    // i_mul77_covariance24_im0_cma(CHAINMULTADD,245)@6 + 3
    assign i_mul77_covariance24_im0_cma_reset = ~ (resetn);
    assign i_mul77_covariance24_im0_cma_ena0 = 1'b1;
    assign i_mul77_covariance24_im0_cma_ena1 = i_mul77_covariance24_im0_cma_ena0;
    assign i_mul77_covariance24_im0_cma_ena2 = i_mul77_covariance24_im0_cma_ena0;

    assign i_mul77_covariance24_im0_cma_a0 = i_mul77_covariance24_bs1_merged_bit_select_b;
    assign i_mul77_covariance24_im0_cma_c0 = i_mul77_covariance24_bs2_merged_bit_select_b;
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
    ) i_mul77_covariance24_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul77_covariance24_im0_cma_ena2, i_mul77_covariance24_im0_cma_ena1, i_mul77_covariance24_im0_cma_ena0 }),
        .aclr({ i_mul77_covariance24_im0_cma_reset, i_mul77_covariance24_im0_cma_reset }),
        .ay(i_mul77_covariance24_im0_cma_a0),
        .ax(i_mul77_covariance24_im0_cma_c0),
        .resulta(i_mul77_covariance24_im0_cma_s0),
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
    i_mul77_covariance24_im0_cma_delay ( .xin(i_mul77_covariance24_im0_cma_s0), .xout(i_mul77_covariance24_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul77_covariance24_im0_cma_q = $unsigned(i_mul77_covariance24_im0_cma_qq[27:0]);

    // i_mul77_covariance24_im8_cma(CHAINMULTADD,246)@6 + 3
    assign i_mul77_covariance24_im8_cma_reset = ~ (resetn);
    assign i_mul77_covariance24_im8_cma_ena0 = 1'b1;
    assign i_mul77_covariance24_im8_cma_ena1 = i_mul77_covariance24_im8_cma_ena0;
    assign i_mul77_covariance24_im8_cma_ena2 = i_mul77_covariance24_im8_cma_ena0;

    assign i_mul77_covariance24_im8_cma_a0 = i_mul77_covariance24_bs1_merged_bit_select_c;
    assign i_mul77_covariance24_im8_cma_c0 = i_mul77_covariance24_bs2_merged_bit_select_c;
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
    ) i_mul77_covariance24_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul77_covariance24_im8_cma_ena2, i_mul77_covariance24_im8_cma_ena1, i_mul77_covariance24_im8_cma_ena0 }),
        .aclr({ i_mul77_covariance24_im8_cma_reset, i_mul77_covariance24_im8_cma_reset }),
        .ay(i_mul77_covariance24_im8_cma_a0),
        .ax(i_mul77_covariance24_im8_cma_c0),
        .resulta(i_mul77_covariance24_im8_cma_s0),
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
    i_mul77_covariance24_im8_cma_delay ( .xin(i_mul77_covariance24_im8_cma_s0), .xout(i_mul77_covariance24_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul77_covariance24_im8_cma_q = $unsigned(i_mul77_covariance24_im8_cma_qq[35:0]);

    // i_mul77_covariance24_sums_join_0(BITJOIN,225)@9
    assign i_mul77_covariance24_sums_join_0_q = {i_mul77_covariance24_im0_cma_q, i_mul77_covariance24_im8_cma_q};

    // i_mul77_covariance24_sums_result_add_0_0(ADD,228)@9
    assign i_mul77_covariance24_sums_result_add_0_0_a = {1'b0, i_mul77_covariance24_sums_join_0_q};
    assign i_mul77_covariance24_sums_result_add_0_0_b = {14'b00000000000000, i_mul77_covariance24_sums_align_1_q};
    assign i_mul77_covariance24_sums_result_add_0_0_o = $unsigned(i_mul77_covariance24_sums_result_add_0_0_a) + $unsigned(i_mul77_covariance24_sums_result_add_0_0_b);
    assign i_mul77_covariance24_sums_result_add_0_0_q = i_mul77_covariance24_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul77_covariance24_sel_x(BITSELECT,117)@9
    assign bgTrunc_i_mul77_covariance24_sel_x_in = i_mul77_covariance24_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul77_covariance24_sel_x_b = bgTrunc_i_mul77_covariance24_sel_x_in[31:0];

    // redist18_bgTrunc_i_mul77_covariance24_sel_x_b_1(DELAY,269)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_bgTrunc_i_mul77_covariance24_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist18_bgTrunc_i_mul77_covariance24_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul77_covariance24_sel_x_b);
        end
    end

    // i_add78_covariance26(ADD,44)@10
    assign i_add78_covariance26_a = {1'b0, redist18_bgTrunc_i_mul77_covariance24_sel_x_b_1_q};
    assign i_add78_covariance26_b = {1'b0, i_llvm_fpga_pop_i32_c_053_pop80_covariance25_out_data_out};
    assign i_add78_covariance26_o = $unsigned(i_add78_covariance26_a) + $unsigned(i_add78_covariance26_b);
    assign i_add78_covariance26_q = i_add78_covariance26_o[32:0];

    // bgTrunc_i_add78_covariance26_sel_x(BITSELECT,114)@10
    assign bgTrunc_i_add78_covariance26_sel_x_b = i_add78_covariance26_q[31:0];

    // redist27_i_idxprom71_covariance17_vt_join_q_8_notEnable(LOGICAL,375)
    assign redist27_i_idxprom71_covariance17_vt_join_q_8_notEnable_q = $unsigned(~ (VCC_q));

    // redist27_i_idxprom71_covariance17_vt_join_q_8_nor(LOGICAL,376)
    assign redist27_i_idxprom71_covariance17_vt_join_q_8_nor_q = ~ (redist27_i_idxprom71_covariance17_vt_join_q_8_notEnable_q | redist27_i_idxprom71_covariance17_vt_join_q_8_sticky_ena_q);

    // redist27_i_idxprom71_covariance17_vt_join_q_8_mem_last(CONSTANT,372)
    assign redist27_i_idxprom71_covariance17_vt_join_q_8_mem_last_q = $unsigned(4'b0101);

    // redist27_i_idxprom71_covariance17_vt_join_q_8_cmp(LOGICAL,373)
    assign redist27_i_idxprom71_covariance17_vt_join_q_8_cmp_b = {1'b0, redist27_i_idxprom71_covariance17_vt_join_q_8_rdcnt_q};
    assign redist27_i_idxprom71_covariance17_vt_join_q_8_cmp_q = $unsigned(redist27_i_idxprom71_covariance17_vt_join_q_8_mem_last_q == redist27_i_idxprom71_covariance17_vt_join_q_8_cmp_b ? 1'b1 : 1'b0);

    // redist27_i_idxprom71_covariance17_vt_join_q_8_cmpReg(REG,374)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_idxprom71_covariance17_vt_join_q_8_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist27_i_idxprom71_covariance17_vt_join_q_8_cmpReg_q <= $unsigned(redist27_i_idxprom71_covariance17_vt_join_q_8_cmp_q);
        end
    end

    // redist27_i_idxprom71_covariance17_vt_join_q_8_sticky_ena(REG,377)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_idxprom71_covariance17_vt_join_q_8_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist27_i_idxprom71_covariance17_vt_join_q_8_nor_q == 1'b1)
        begin
            redist27_i_idxprom71_covariance17_vt_join_q_8_sticky_ena_q <= $unsigned(redist27_i_idxprom71_covariance17_vt_join_q_8_cmpReg_q);
        end
    end

    // redist27_i_idxprom71_covariance17_vt_join_q_8_enaAnd(LOGICAL,378)
    assign redist27_i_idxprom71_covariance17_vt_join_q_8_enaAnd_q = redist27_i_idxprom71_covariance17_vt_join_q_8_sticky_ena_q & VCC_q;

    // redist27_i_idxprom71_covariance17_vt_join_q_8_rdcnt(COUNTER,370)
    // low=0, high=6, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_idxprom71_covariance17_vt_join_q_8_rdcnt_i <= 3'd0;
            redist27_i_idxprom71_covariance17_vt_join_q_8_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist27_i_idxprom71_covariance17_vt_join_q_8_rdcnt_i == 3'd5)
            begin
                redist27_i_idxprom71_covariance17_vt_join_q_8_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist27_i_idxprom71_covariance17_vt_join_q_8_rdcnt_eq <= 1'b0;
            end
            if (redist27_i_idxprom71_covariance17_vt_join_q_8_rdcnt_eq == 1'b1)
            begin
                redist27_i_idxprom71_covariance17_vt_join_q_8_rdcnt_i <= $unsigned(redist27_i_idxprom71_covariance17_vt_join_q_8_rdcnt_i) + $unsigned(3'd2);
            end
            else
            begin
                redist27_i_idxprom71_covariance17_vt_join_q_8_rdcnt_i <= $unsigned(redist27_i_idxprom71_covariance17_vt_join_q_8_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist27_i_idxprom71_covariance17_vt_join_q_8_rdcnt_q = redist27_i_idxprom71_covariance17_vt_join_q_8_rdcnt_i[2:0];

    // redist27_i_idxprom71_covariance17_vt_join_q_8_wraddr(REG,371)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_idxprom71_covariance17_vt_join_q_8_wraddr_q <= $unsigned(3'b110);
        end
        else
        begin
            redist27_i_idxprom71_covariance17_vt_join_q_8_wraddr_q <= $unsigned(redist27_i_idxprom71_covariance17_vt_join_q_8_rdcnt_q);
        end
    end

    // redist27_i_idxprom71_covariance17_vt_join_q_8_mem(DUALMEM,369)
    assign redist27_i_idxprom71_covariance17_vt_join_q_8_mem_ia = $unsigned(i_idxprom71_covariance17_vt_join_q);
    assign redist27_i_idxprom71_covariance17_vt_join_q_8_mem_aa = redist27_i_idxprom71_covariance17_vt_join_q_8_wraddr_q;
    assign redist27_i_idxprom71_covariance17_vt_join_q_8_mem_ab = redist27_i_idxprom71_covariance17_vt_join_q_8_rdcnt_q;
    assign redist27_i_idxprom71_covariance17_vt_join_q_8_mem_reset0 = ~ (resetn);
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
    ) redist27_i_idxprom71_covariance17_vt_join_q_8_mem_dmem (
        .clocken1(redist27_i_idxprom71_covariance17_vt_join_q_8_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist27_i_idxprom71_covariance17_vt_join_q_8_mem_reset0),
        .clock1(clock),
        .address_a(redist27_i_idxprom71_covariance17_vt_join_q_8_mem_aa),
        .data_a(redist27_i_idxprom71_covariance17_vt_join_q_8_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist27_i_idxprom71_covariance17_vt_join_q_8_mem_ab),
        .q_b(redist27_i_idxprom71_covariance17_vt_join_q_8_mem_iq),
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
    assign redist27_i_idxprom71_covariance17_vt_join_q_8_mem_q = redist27_i_idxprom71_covariance17_vt_join_q_8_mem_iq[63:0];

    // redist26_i_idxprom75_covariance14_vt_join_q_8_notEnable(LOGICAL,365)
    assign redist26_i_idxprom75_covariance14_vt_join_q_8_notEnable_q = $unsigned(~ (VCC_q));

    // redist26_i_idxprom75_covariance14_vt_join_q_8_nor(LOGICAL,366)
    assign redist26_i_idxprom75_covariance14_vt_join_q_8_nor_q = ~ (redist26_i_idxprom75_covariance14_vt_join_q_8_notEnable_q | redist26_i_idxprom75_covariance14_vt_join_q_8_sticky_ena_q);

    // redist26_i_idxprom75_covariance14_vt_join_q_8_mem_last(CONSTANT,362)
    assign redist26_i_idxprom75_covariance14_vt_join_q_8_mem_last_q = $unsigned(4'b0101);

    // redist26_i_idxprom75_covariance14_vt_join_q_8_cmp(LOGICAL,363)
    assign redist26_i_idxprom75_covariance14_vt_join_q_8_cmp_b = {1'b0, redist26_i_idxprom75_covariance14_vt_join_q_8_rdcnt_q};
    assign redist26_i_idxprom75_covariance14_vt_join_q_8_cmp_q = $unsigned(redist26_i_idxprom75_covariance14_vt_join_q_8_mem_last_q == redist26_i_idxprom75_covariance14_vt_join_q_8_cmp_b ? 1'b1 : 1'b0);

    // redist26_i_idxprom75_covariance14_vt_join_q_8_cmpReg(REG,364)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_idxprom75_covariance14_vt_join_q_8_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist26_i_idxprom75_covariance14_vt_join_q_8_cmpReg_q <= $unsigned(redist26_i_idxprom75_covariance14_vt_join_q_8_cmp_q);
        end
    end

    // redist26_i_idxprom75_covariance14_vt_join_q_8_sticky_ena(REG,367)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_idxprom75_covariance14_vt_join_q_8_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist26_i_idxprom75_covariance14_vt_join_q_8_nor_q == 1'b1)
        begin
            redist26_i_idxprom75_covariance14_vt_join_q_8_sticky_ena_q <= $unsigned(redist26_i_idxprom75_covariance14_vt_join_q_8_cmpReg_q);
        end
    end

    // redist26_i_idxprom75_covariance14_vt_join_q_8_enaAnd(LOGICAL,368)
    assign redist26_i_idxprom75_covariance14_vt_join_q_8_enaAnd_q = redist26_i_idxprom75_covariance14_vt_join_q_8_sticky_ena_q & VCC_q;

    // redist26_i_idxprom75_covariance14_vt_join_q_8_rdcnt(COUNTER,360)
    // low=0, high=6, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_idxprom75_covariance14_vt_join_q_8_rdcnt_i <= 3'd0;
            redist26_i_idxprom75_covariance14_vt_join_q_8_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist26_i_idxprom75_covariance14_vt_join_q_8_rdcnt_i == 3'd5)
            begin
                redist26_i_idxprom75_covariance14_vt_join_q_8_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist26_i_idxprom75_covariance14_vt_join_q_8_rdcnt_eq <= 1'b0;
            end
            if (redist26_i_idxprom75_covariance14_vt_join_q_8_rdcnt_eq == 1'b1)
            begin
                redist26_i_idxprom75_covariance14_vt_join_q_8_rdcnt_i <= $unsigned(redist26_i_idxprom75_covariance14_vt_join_q_8_rdcnt_i) + $unsigned(3'd2);
            end
            else
            begin
                redist26_i_idxprom75_covariance14_vt_join_q_8_rdcnt_i <= $unsigned(redist26_i_idxprom75_covariance14_vt_join_q_8_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist26_i_idxprom75_covariance14_vt_join_q_8_rdcnt_q = redist26_i_idxprom75_covariance14_vt_join_q_8_rdcnt_i[2:0];

    // redist26_i_idxprom75_covariance14_vt_join_q_8_wraddr(REG,361)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_idxprom75_covariance14_vt_join_q_8_wraddr_q <= $unsigned(3'b110);
        end
        else
        begin
            redist26_i_idxprom75_covariance14_vt_join_q_8_wraddr_q <= $unsigned(redist26_i_idxprom75_covariance14_vt_join_q_8_rdcnt_q);
        end
    end

    // redist26_i_idxprom75_covariance14_vt_join_q_8_mem(DUALMEM,359)
    assign redist26_i_idxprom75_covariance14_vt_join_q_8_mem_ia = $unsigned(i_idxprom75_covariance14_vt_join_q);
    assign redist26_i_idxprom75_covariance14_vt_join_q_8_mem_aa = redist26_i_idxprom75_covariance14_vt_join_q_8_wraddr_q;
    assign redist26_i_idxprom75_covariance14_vt_join_q_8_mem_ab = redist26_i_idxprom75_covariance14_vt_join_q_8_rdcnt_q;
    assign redist26_i_idxprom75_covariance14_vt_join_q_8_mem_reset0 = ~ (resetn);
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
    ) redist26_i_idxprom75_covariance14_vt_join_q_8_mem_dmem (
        .clocken1(redist26_i_idxprom75_covariance14_vt_join_q_8_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist26_i_idxprom75_covariance14_vt_join_q_8_mem_reset0),
        .clock1(clock),
        .address_a(redist26_i_idxprom75_covariance14_vt_join_q_8_mem_aa),
        .data_a(redist26_i_idxprom75_covariance14_vt_join_q_8_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist26_i_idxprom75_covariance14_vt_join_q_8_mem_ab),
        .q_b(redist26_i_idxprom75_covariance14_vt_join_q_8_mem_iq),
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
    assign redist26_i_idxprom75_covariance14_vt_join_q_8_mem_q = redist26_i_idxprom75_covariance14_vt_join_q_8_mem_iq[63:0];

    // redist25_i_llvm_fpga_pipeline_keep_going46_covariance6_out_data_out_9(DELAY,276)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist25_i_llvm_fpga_pipeline_keep_going46_covariance6_out_data_out_9 ( .xin(redist24_i_llvm_fpga_pipeline_keep_going46_covariance6_out_data_out_1_q), .xout(redist25_i_llvm_fpga_pipeline_keep_going46_covariance6_out_data_out_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,175)@10
    assign out_c0_exi17_0_tpl = GND_q;
    assign out_c0_exi17_1_tpl = redist25_i_llvm_fpga_pipeline_keep_going46_covariance6_out_data_out_9_q;
    assign out_c0_exi17_2_tpl = redist26_i_idxprom75_covariance14_vt_join_q_8_mem_q;
    assign out_c0_exi17_3_tpl = redist27_i_idxprom71_covariance17_vt_join_q_8_mem_q;
    assign out_c0_exi17_4_tpl = bgTrunc_i_add78_covariance26_sel_x_b;
    assign out_c0_exi17_5_tpl = redist19_i_masked55_covariance40_q_8_q;
    assign out_c0_exi17_6_tpl = redist21_i_llvm_fpga_pop_i32_lim_ext139_pop83_covariance41_out_data_out_8_mem_q;
    assign out_c0_exi17_7_tpl = redist20_i_llvm_fpga_pop_i32_reorder_limiter_enter144_pop84_covariance43_out_data_out_8_mem_q;
    assign out_c0_exi17_8_tpl = redist22_i_llvm_fpga_pop_i1_notcmp63157_pop85_covariance45_out_data_out_8_q;
    assign out_c0_exi17_9_tpl = i_llvm_fpga_pop_i1_forked59162_pop87_covariance47_out_data_out;
    assign out_c0_exi17_10_tpl = redist23_i_llvm_fpga_pop_i1_notcmp58163_pop88_covariance49_out_data_out_8_q;
    assign out_c0_exi17_11_tpl = redist9_sync_together120_aunroll_x_in_c0_eni15_9_tpl_9_mem_q;
    assign out_c0_exi17_12_tpl = redist10_sync_together120_aunroll_x_in_c0_eni15_10_tpl_9_mem_q;
    assign out_c0_exi17_13_tpl = redist11_sync_together120_aunroll_x_in_c0_eni15_11_tpl_9_mem_q;
    assign out_c0_exi17_14_tpl = redist12_sync_together120_aunroll_x_in_c0_eni15_12_tpl_9_q;
    assign out_c0_exi17_15_tpl = redist13_sync_together120_aunroll_x_in_c0_eni15_13_tpl_9_mem_q;
    assign out_c0_exi17_16_tpl = redist14_sync_together120_aunroll_x_in_c0_eni15_14_tpl_9_mem_q;
    assign out_c0_exi17_17_tpl = redist15_sync_together120_aunroll_x_in_c0_eni15_15_tpl_9_mem_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_covariance0 = GND_q;

endmodule
