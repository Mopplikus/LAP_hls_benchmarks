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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body13_covariances_c0_enter26537_covariance0
// Created for function/kernel covariance
// SystemVerilog created on Fri Apr  7 17:50:02 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_i_sfc_logic_s_c0_in_for_body10000ter26537_covariance0 (
    input wire [31:0] in_unnamed_covariance3_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance3_covariance_avm_writeack,
    input wire [0:0] in_unnamed_covariance3_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance3_covariance_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going37_covariance6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going37_covariance6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [31:0] in_memdep_covariance_avm_readdata,
    input wire [0:0] in_memdep_covariance_avm_writeack,
    input wire [0:0] in_memdep_covariance_avm_waitrequest,
    input wire [0:0] in_memdep_covariance_avm_readdatavalid,
    output wire [31:0] out_unnamed_covariance3_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance3_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance3_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance3_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance3_covariance_avm_writedata,
    output wire [3:0] out_unnamed_covariance3_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance3_covariance_avm_burstcount,
    output wire [31:0] out_memdep_covariance_avm_address,
    output wire [0:0] out_memdep_covariance_avm_enable,
    output wire [0:0] out_memdep_covariance_avm_read,
    output wire [0:0] out_memdep_covariance_avm_write,
    output wire [31:0] out_memdep_covariance_avm_writedata,
    output wire [3:0] out_memdep_covariance_avm_byteenable,
    output wire [0:0] out_memdep_covariance_avm_burstcount,
    output wire [0:0] out_c0_exi10288_0_tpl,
    output wire [0:0] out_c0_exi10288_1_tpl,
    output wire [0:0] out_c0_exi10288_2_tpl,
    output wire [0:0] out_c0_exi10288_3_tpl,
    output wire [31:0] out_c0_exi10288_4_tpl,
    output wire [0:0] out_c0_exi10288_5_tpl,
    output wire [0:0] out_c0_exi10288_6_tpl,
    output wire [31:0] out_c0_exi10288_7_tpl,
    output wire [0:0] out_c0_exi10288_8_tpl,
    output wire [0:0] out_c0_exi10288_9_tpl,
    output wire [0:0] out_c0_exi10288_10_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_covariance0,
    input wire [0:0] in_c0_eni13264_0_tpl,
    input wire [0:0] in_c0_eni13264_1_tpl,
    input wire [63:0] in_c0_eni13264_2_tpl,
    input wire [0:0] in_c0_eni13264_3_tpl,
    input wire [31:0] in_c0_eni13264_4_tpl,
    input wire [0:0] in_c0_eni13264_5_tpl,
    input wire [0:0] in_c0_eni13264_6_tpl,
    input wire [31:0] in_c0_eni13264_7_tpl,
    input wire [0:0] in_c0_eni13264_8_tpl,
    input wire [0:0] in_c0_eni13264_9_tpl,
    input wire [31:0] in_c0_eni13264_10_tpl,
    input wire [0:0] in_c0_eni13264_11_tpl,
    input wire [0:0] in_c0_eni13264_12_tpl,
    input wire [0:0] in_c0_eni13264_13_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_covariance_data_local_pmem_q;
    wire [1:0] c_i2_178_q;
    wire [31:0] c_i32_080_q;
    wire [31:0] c_i32_181_q;
    wire [5:0] c_i6_184_q;
    wire [5:0] c_i6_3082_q;
    wire [1:0] i_arrayidx172_covariance16_vt_const_1_q;
    wire [63:0] i_arrayidx172_covariance16_vt_join_q;
    wire [61:0] i_arrayidx172_covariance16_vt_select_63_b;
    wire [1:0] i_cleanups_shl41_covariance5_vt_join_q;
    wire [0:0] i_cleanups_shl41_covariance5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor43_covariance4_q;
    wire [6:0] i_fpga_indvars_iv_next6_covariance39_a;
    wire [6:0] i_fpga_indvars_iv_next6_covariance39_b;
    logic [6:0] i_fpga_indvars_iv_next6_covariance39_o;
    wire [6:0] i_fpga_indvars_iv_next6_covariance39_q;
    wire [63:0] i_idxprom14_covariance13_vt_join_q;
    wire [31:0] i_idxprom14_covariance13_vt_select_31_b;
    wire [32:0] i_inc19_covariance29_a;
    wire [32:0] i_inc19_covariance29_b;
    logic [32:0] i_inc19_covariance29_o;
    wire [32:0] i_inc19_covariance29_q;
    wire [31:0] i_llvm_fpga_mem_memdep_covariance28_out_memdep_covariance_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_covariance28_out_memdep_covariance_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_covariance28_out_memdep_covariance_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_covariance28_out_memdep_covariance_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_covariance28_out_memdep_covariance_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_covariance28_out_memdep_covariance_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_covariance28_out_memdep_covariance_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_covariance28_out_o_writeack;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance3_covariance19_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance3_covariance19_out_unnamed_covariance3_covariance_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance3_covariance19_out_unnamed_covariance3_covariance_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_covariance3_covariance19_out_unnamed_covariance3_covariance_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance3_covariance19_out_unnamed_covariance3_covariance_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance3_covariance19_out_unnamed_covariance3_covariance_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance3_covariance19_out_unnamed_covariance3_covariance_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance3_covariance19_out_unnamed_covariance3_covariance_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going37_covariance6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going37_covariance6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going37_covariance6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going37_covariance6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going37_covariance6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going37_covariance6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1095_pop53_covariance44_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1095_pop53_covariance44_out_feedback_stall_out_53;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop1683_pop50_covariance17_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop1683_pop50_covariance17_out_feedback_stall_out_50;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1786_pop51_covariance23_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1786_pop51_covariance23_out_feedback_stall_out_51;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop1889_pop52_covariance25_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop1889_pop52_covariance25_out_feedback_stall_out_52;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp6597_pop54_covariance46_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp6597_pop54_covariance46_out_feedback_stall_out_54;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups40_pop48_covariance2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups40_pop48_covariance2_out_feedback_stall_out_48;
    wire [1:0] i_llvm_fpga_pop_i2_initerations35_pop47_covariance7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations35_pop47_covariance7_out_feedback_stall_out_47;
    wire [31:0] i_llvm_fpga_pop_i32_i9_038_pop46_covariance12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i9_038_pop46_covariance12_out_feedback_stall_out_46;
    wire [31:0] i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_feedback_stall_out_49;
    wire [31:0] i_llvm_fpga_pop_i32_mul100_pop55_covariance20_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul100_pop55_covariance20_out_feedback_stall_out_55;
    wire [63:0] i_llvm_fpga_pop_i64_idxprom7101_pop56_covariance14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_idxprom7101_pop56_covariance14_out_feedback_stall_out_56;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv5_pop45_covariance31_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv5_pop45_covariance31_out_feedback_stall_out_45;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1095_push53_covariance45_out_feedback_out_53;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1095_push53_covariance45_out_feedback_valid_out_53;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration39_covariance11_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration39_covariance11_out_feedback_valid_out_8;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1683_push50_covariance18_out_feedback_out_50;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1683_push50_covariance18_out_feedback_valid_out_50;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1786_push51_covariance24_out_feedback_out_51;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1786_push51_covariance24_out_feedback_valid_out_51;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop1889_push52_covariance26_out_feedback_out_52;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop1889_push52_covariance26_out_feedback_valid_out_52;
    wire [0:0] i_llvm_fpga_push_i1_notcmp6597_push54_covariance47_out_feedback_out_54;
    wire [0:0] i_llvm_fpga_push_i1_notcmp6597_push54_covariance47_out_feedback_valid_out_54;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond47_covariance35_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond47_covariance35_out_feedback_valid_out_9;
    wire [7:0] i_llvm_fpga_push_i2_cleanups40_push48_covariance38_out_feedback_out_48;
    wire [0:0] i_llvm_fpga_push_i2_cleanups40_push48_covariance38_out_feedback_valid_out_48;
    wire [7:0] i_llvm_fpga_push_i2_initerations35_push47_covariance9_out_feedback_out_47;
    wire [0:0] i_llvm_fpga_push_i2_initerations35_push47_covariance9_out_feedback_valid_out_47;
    wire [31:0] i_llvm_fpga_push_i32_i9_038_push46_covariance30_out_feedback_out_46;
    wire [0:0] i_llvm_fpga_push_i32_i9_038_push46_covariance30_out_feedback_valid_out_46;
    wire [31:0] i_llvm_fpga_push_i32_lim_ext77_push49_covariance43_out_feedback_out_49;
    wire [0:0] i_llvm_fpga_push_i32_lim_ext77_push49_covariance43_out_feedback_valid_out_49;
    wire [31:0] i_llvm_fpga_push_i32_mul100_push55_covariance21_out_feedback_out_55;
    wire [0:0] i_llvm_fpga_push_i32_mul100_push55_covariance21_out_feedback_valid_out_55;
    wire [63:0] i_llvm_fpga_push_i64_idxprom7101_push56_covariance15_out_feedback_out_56;
    wire [0:0] i_llvm_fpga_push_i64_idxprom7101_push56_covariance15_out_feedback_valid_out_56;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv5_push45_covariance40_out_feedback_out_45;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv5_push45_covariance40_out_feedback_valid_out_45;
    wire [0:0] i_masked46_covariance41_qi;
    reg [0:0] i_masked46_covariance41_q;
    wire [0:0] i_memdep_phi4_or_covariance27_qi;
    reg [0:0] i_memdep_phi4_or_covariance27_q;
    wire [0:0] i_next_cleanups45_covariance37_s;
    reg [1:0] i_next_cleanups45_covariance37_q;
    wire [1:0] i_next_initerations36_covariance8_vt_join_q;
    wire [0:0] i_next_initerations36_covariance8_vt_select_0_b;
    wire [0:0] i_notcmp33_covariance34_q;
    wire [0:0] i_or44_covariance36_q;
    wire [32:0] i_sub_covariance22_a;
    wire [32:0] i_sub_covariance22_b;
    logic [32:0] i_sub_covariance22_o;
    wire [32:0] i_sub_covariance22_q;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next6_covariance39_sel_x_b;
    wire [31:0] bgTrunc_i_inc19_covariance29_sel_x_b;
    wire [31:0] bgTrunc_i_sub_covariance22_sel_x_b;
    wire [12:0] i_arrayidx172_covariance0_add_x_a;
    wire [12:0] i_arrayidx172_covariance0_add_x_b;
    logic [12:0] i_arrayidx172_covariance0_add_x_o;
    wire [12:0] i_arrayidx172_covariance0_add_x_q;
    wire [63:0] i_arrayidx172_covariance0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx172_covariance0_c_i7_01_x_q;
    wire [4:0] i_arrayidx172_covariance0_narrow_x_b;
    wire [11:0] i_arrayidx172_covariance0_shift_join_x_q;
    wire [12:0] i_arrayidx172_covariance0_dupName_0_add_x_a;
    wire [12:0] i_arrayidx172_covariance0_dupName_0_add_x_b;
    logic [12:0] i_arrayidx172_covariance0_dupName_0_add_x_o;
    wire [12:0] i_arrayidx172_covariance0_dupName_0_add_x_q;
    wire [9:0] i_arrayidx172_covariance0_dupName_0_narrow_x_b;
    wire [11:0] i_arrayidx172_covariance0_dupName_0_shift_join_x_q;
    wire [11:0] i_arrayidx172_covariance0_dupName_0_trunc_sel_x_b;
    wire [11:0] i_arrayidx172_covariance0_dupName_2_trunc_sel_x_b;
    wire [11:0] i_arrayidx172_covariance0_dupName_3_trunc_sel_x_b;
    wire [11:0] i_arrayidx172_covariance0_dupName_5_trunc_sel_x_b;
    wire [0:0] i_first_cleanup42_covariance3_sel_x_b;
    wire [63:0] i_idxprom14_covariance13_sel_x_b;
    wire [0:0] i_last_initeration38_covariance10_sel_x_b;
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
    wire [0:0] i_exitcond7_covariance32_cmp_nsign_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid180_i_cleanups_shl41_covariance0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid180_i_cleanups_shl41_covariance0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid181_i_cleanups_shl41_covariance0_shift_x_q;
    wire [0:0] leftShiftStage0_uid183_i_cleanups_shl41_covariance0_shift_x_s;
    reg [1:0] leftShiftStage0_uid183_i_cleanups_shl41_covariance0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid187_i_next_initerations36_covariance0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid189_i_next_initerations36_covariance0_shift_x_q;
    wire [0:0] rightShiftStage0_uid191_i_next_initerations36_covariance0_shift_x_s;
    reg [1:0] rightShiftStage0_uid191_i_next_initerations36_covariance0_shift_x_q;
    wire [51:0] i_arrayidx172_covariance0_upper_bits_x_merged_bit_select_b;
    wire [11:0] i_arrayidx172_covariance0_upper_bits_x_merged_bit_select_c;
    reg [0:0] redist0_sync_together115_aunroll_x_in_c0_eni13264_1_tpl_1_q;
    reg [63:0] redist1_sync_together115_aunroll_x_in_c0_eni13264_2_tpl_1_q;
    reg [0:0] redist2_sync_together115_aunroll_x_in_c0_eni13264_3_tpl_1_q;
    reg [31:0] redist3_sync_together115_aunroll_x_in_c0_eni13264_4_tpl_1_q;
    reg [0:0] redist4_sync_together115_aunroll_x_in_c0_eni13264_5_tpl_1_q;
    reg [0:0] redist5_sync_together115_aunroll_x_in_c0_eni13264_6_tpl_1_q;
    reg [31:0] redist6_sync_together115_aunroll_x_in_c0_eni13264_7_tpl_1_q;
    reg [0:0] redist7_sync_together115_aunroll_x_in_c0_eni13264_8_tpl_1_q;
    reg [0:0] redist8_sync_together115_aunroll_x_in_c0_eni13264_9_tpl_1_q;
    reg [0:0] redist10_sync_together115_aunroll_x_in_c0_eni13264_11_tpl_6_q;
    reg [0:0] redist11_sync_together115_aunroll_x_in_c0_eni13264_12_tpl_6_q;
    reg [0:0] redist12_sync_together115_aunroll_x_in_c0_eni13264_13_tpl_6_q;
    reg [0:0] redist13_sync_together115_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist14_sync_together115_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist14_sync_together115_aunroll_x_in_i_valid_4_delay_0;
    reg [0:0] redist14_sync_together115_aunroll_x_in_i_valid_4_delay_1;
    reg [0:0] redist15_sync_together115_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist16_i_memdep_phi4_or_covariance27_q_4_q;
    reg [0:0] redist16_i_memdep_phi4_or_covariance27_q_4_delay_0;
    reg [0:0] redist16_i_memdep_phi4_or_covariance27_q_4_delay_1;
    reg [0:0] redist17_i_masked46_covariance41_q_5_q;
    reg [0:0] redist17_i_masked46_covariance41_q_5_delay_0;
    reg [0:0] redist17_i_masked46_covariance41_q_5_delay_1;
    reg [0:0] redist17_i_masked46_covariance41_q_5_delay_2;
    reg [31:0] redist18_i_llvm_fpga_pop_i32_mul100_pop55_covariance20_out_data_out_1_q;
    reg [31:0] redist19_i_llvm_fpga_pop_i32_mul100_pop55_covariance20_out_data_out_4_q;
    reg [31:0] redist19_i_llvm_fpga_pop_i32_mul100_pop55_covariance20_out_data_out_4_delay_0;
    reg [31:0] redist20_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_1_q;
    reg [0:0] redist22_i_llvm_fpga_pop_i1_notcmp6597_pop54_covariance46_out_data_out_1_q;
    reg [0:0] redist23_i_llvm_fpga_pop_i1_notcmp6597_pop54_covariance46_out_data_out_5_q;
    reg [0:0] redist23_i_llvm_fpga_pop_i1_notcmp6597_pop54_covariance46_out_data_out_5_delay_0;
    reg [0:0] redist23_i_llvm_fpga_pop_i1_notcmp6597_pop54_covariance46_out_data_out_5_delay_1;
    reg [0:0] redist23_i_llvm_fpga_pop_i1_notcmp6597_pop54_covariance46_out_data_out_5_delay_2;
    reg [0:0] redist24_i_llvm_fpga_pop_i1_exitcond1095_pop53_covariance44_out_data_out_1_q;
    reg [0:0] redist25_i_llvm_fpga_pop_i1_exitcond1095_pop53_covariance44_out_data_out_5_q;
    reg [0:0] redist25_i_llvm_fpga_pop_i1_exitcond1095_pop53_covariance44_out_data_out_5_delay_0;
    reg [0:0] redist25_i_llvm_fpga_pop_i1_exitcond1095_pop53_covariance44_out_data_out_5_delay_1;
    reg [0:0] redist25_i_llvm_fpga_pop_i1_exitcond1095_pop53_covariance44_out_data_out_5_delay_2;
    reg [0:0] redist26_i_llvm_fpga_pipeline_keep_going37_covariance6_out_data_out_1_q;
    reg [0:0] redist27_i_llvm_fpga_pipeline_keep_going37_covariance6_out_data_out_2_q;
    reg [0:0] redist28_i_llvm_fpga_pipeline_keep_going37_covariance6_out_data_out_6_q;
    reg [0:0] redist28_i_llvm_fpga_pipeline_keep_going37_covariance6_out_data_out_6_delay_0;
    reg [0:0] redist28_i_llvm_fpga_pipeline_keep_going37_covariance6_out_data_out_6_delay_1;
    reg [0:0] redist28_i_llvm_fpga_pipeline_keep_going37_covariance6_out_data_out_6_delay_2;
    reg [0:0] redist29_i_first_cleanup_xor43_covariance4_q_4_q;
    reg [0:0] redist29_i_first_cleanup_xor43_covariance4_q_4_delay_0;
    reg [0:0] redist29_i_first_cleanup_xor43_covariance4_q_4_delay_1;
    reg [0:0] redist29_i_first_cleanup_xor43_covariance4_q_4_delay_2;
    wire redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_mem_reset0;
    wire [31:0] redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_mem_ia;
    wire [2:0] redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_mem_aa;
    wire [2:0] redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_mem_ab;
    wire [31:0] redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_mem_iq;
    wire [31:0] redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_mem_q;
    wire [2:0] redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_rdcnt_q;
    (* preserve *) reg [2:0] redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_rdcnt_i;
    (* preserve *) reg redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_rdcnt_eq;
    reg [2:0] redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_wraddr_q;
    wire [2:0] redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_mem_last_q;
    wire [0:0] redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_cmpReg_q;
    wire [0:0] redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_notEnable_q;
    wire [0:0] redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_sticky_ena_q;
    wire [0:0] redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_enaAnd_q;
    reg [31:0] redist19_i_llvm_fpga_pop_i32_mul100_pop55_covariance20_out_data_out_4_outputreg0_q;
    wire redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_mem_reset0;
    wire [31:0] redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_mem_ia;
    wire [1:0] redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_mem_aa;
    wire [1:0] redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_mem_ab;
    wire [31:0] redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_mem_iq;
    wire [31:0] redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_mem_q;
    wire [1:0] redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_rdcnt_q;
    (* preserve *) reg [1:0] redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_rdcnt_i;
    (* preserve *) reg redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_rdcnt_eq;
    reg [1:0] redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_wraddr_q;
    wire [1:0] redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_mem_last_q;
    wire [0:0] redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_cmp_q;
    (* dont_merge *) reg [0:0] redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_cmpReg_q;
    wire [0:0] redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_notEnable_q;
    wire [0:0] redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_nor_q;
    (* dont_merge *) reg [0:0] redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_sticky_ena_q;
    wire [0:0] redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_enaAnd_q;
    reg [63:0] redist30_i_arrayidx172_covariance16_vt_join_q_4_inputreg0_q;
    wire redist30_i_arrayidx172_covariance16_vt_join_q_4_mem_reset0;
    wire [63:0] redist30_i_arrayidx172_covariance16_vt_join_q_4_mem_ia;
    wire [0:0] redist30_i_arrayidx172_covariance16_vt_join_q_4_mem_aa;
    wire [0:0] redist30_i_arrayidx172_covariance16_vt_join_q_4_mem_ab;
    wire [63:0] redist30_i_arrayidx172_covariance16_vt_join_q_4_mem_iq;
    wire [63:0] redist30_i_arrayidx172_covariance16_vt_join_q_4_mem_q;
    wire [0:0] redist30_i_arrayidx172_covariance16_vt_join_q_4_rdcnt_q;
    (* preserve *) reg [0:0] redist30_i_arrayidx172_covariance16_vt_join_q_4_rdcnt_i;
    reg [0:0] redist30_i_arrayidx172_covariance16_vt_join_q_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist30_i_arrayidx172_covariance16_vt_join_q_4_cmpReg_q;
    wire [0:0] redist30_i_arrayidx172_covariance16_vt_join_q_4_notEnable_q;
    wire [0:0] redist30_i_arrayidx172_covariance16_vt_join_q_4_nor_q;
    (* dont_merge *) reg [0:0] redist30_i_arrayidx172_covariance16_vt_join_q_4_sticky_ena_q;
    wire [0:0] redist30_i_arrayidx172_covariance16_vt_join_q_4_enaAnd_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist13_sync_together115_aunroll_x_in_i_valid_1(DELAY,206)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together115_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist13_sync_together115_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist26_i_llvm_fpga_pipeline_keep_going37_covariance6_out_data_out_1(DELAY,219)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_pipeline_keep_going37_covariance6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist26_i_llvm_fpga_pipeline_keep_going37_covariance6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going37_covariance6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid180_i_cleanups_shl41_covariance0_shift_x(BITSELECT,179)@2
    assign leftShiftStage0Idx1Rng1_uid180_i_cleanups_shl41_covariance0_shift_x_in = i_llvm_fpga_pop_i2_cleanups40_pop48_covariance2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid180_i_cleanups_shl41_covariance0_shift_x_b = leftShiftStage0Idx1Rng1_uid180_i_cleanups_shl41_covariance0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid181_i_cleanups_shl41_covariance0_shift_x(BITJOIN,180)@2
    assign leftShiftStage0Idx1_uid181_i_cleanups_shl41_covariance0_shift_x_q = {leftShiftStage0Idx1Rng1_uid180_i_cleanups_shl41_covariance0_shift_x_b, GND_q};

    // leftShiftStage0_uid183_i_cleanups_shl41_covariance0_shift_x(MUX,182)@2
    assign leftShiftStage0_uid183_i_cleanups_shl41_covariance0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid183_i_cleanups_shl41_covariance0_shift_x_s or i_llvm_fpga_pop_i2_cleanups40_pop48_covariance2_out_data_out or leftShiftStage0Idx1_uid181_i_cleanups_shl41_covariance0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid183_i_cleanups_shl41_covariance0_shift_x_s)
            1'b0 : leftShiftStage0_uid183_i_cleanups_shl41_covariance0_shift_x_q = i_llvm_fpga_pop_i2_cleanups40_pop48_covariance2_out_data_out;
            1'b1 : leftShiftStage0_uid183_i_cleanups_shl41_covariance0_shift_x_q = leftShiftStage0Idx1_uid181_i_cleanups_shl41_covariance0_shift_x_q;
            default : leftShiftStage0_uid183_i_cleanups_shl41_covariance0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl41_covariance5_vt_select_1(BITSELECT,48)@2
    assign i_cleanups_shl41_covariance5_vt_select_1_b = leftShiftStage0_uid183_i_cleanups_shl41_covariance0_shift_x_q[1:1];

    // i_cleanups_shl41_covariance5_vt_join(BITJOIN,47)@2
    assign i_cleanups_shl41_covariance5_vt_join_q = {i_cleanups_shl41_covariance5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor43_covariance4(LOGICAL,51)@2
    assign i_first_cleanup_xor43_covariance4_q = i_first_cleanup42_covariance3_sel_x_b ^ VCC_q;

    // i_notcmp33_covariance34(LOGICAL,94)@2
    assign i_notcmp33_covariance34_q = i_exitcond7_covariance32_cmp_nsign_q ^ VCC_q;

    // i_or44_covariance36(LOGICAL,95)@2
    assign i_or44_covariance36_q = i_notcmp33_covariance34_q | i_first_cleanup_xor43_covariance4_q;

    // i_next_cleanups45_covariance37(MUX,90)@2
    assign i_next_cleanups45_covariance37_s = i_or44_covariance36_q;
    always @(i_next_cleanups45_covariance37_s or i_llvm_fpga_pop_i2_cleanups40_pop48_covariance2_out_data_out or i_cleanups_shl41_covariance5_vt_join_q)
    begin
        unique case (i_next_cleanups45_covariance37_s)
            1'b0 : i_next_cleanups45_covariance37_q = i_llvm_fpga_pop_i2_cleanups40_pop48_covariance2_out_data_out;
            1'b1 : i_next_cleanups45_covariance37_q = i_cleanups_shl41_covariance5_vt_join_q;
            default : i_next_cleanups45_covariance37_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups40_push48_covariance38(BLACKBOX,81)@2
    // out out_feedback_out_48@20000000
    // out out_feedback_valid_out_48@20000000
    covariance_i_llvm_fpga_push_i2_cleanups40_push48_0 thei_llvm_fpga_push_i2_cleanups40_push48_covariance38 (
        .in_data_in(i_next_cleanups45_covariance37_q),
        .in_feedback_stall_in_48(i_llvm_fpga_pop_i2_cleanups40_pop48_covariance2_out_feedback_stall_out_48),
        .in_keep_going37(redist26_i_llvm_fpga_pipeline_keep_going37_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist13_sync_together115_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_48(i_llvm_fpga_push_i2_cleanups40_push48_covariance38_out_feedback_out_48),
        .out_feedback_valid_out_48(i_llvm_fpga_push_i2_cleanups40_push48_covariance38_out_feedback_valid_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together115_aunroll_x_in_c0_eni13264_1_tpl_1(DELAY,193)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together115_aunroll_x_in_c0_eni13264_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together115_aunroll_x_in_c0_eni13264_1_tpl_1_q <= $unsigned(in_c0_eni13264_1_tpl);
        end
    end

    // c_i2_178(CONSTANT,36)
    assign c_i2_178_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups40_pop48_covariance2(BLACKBOX,67)@2
    // out out_feedback_stall_out_48@20000000
    covariance_i_llvm_fpga_pop_i2_cleanups40_pop48_0 thei_llvm_fpga_pop_i2_cleanups40_pop48_covariance2 (
        .in_data_in(c_i2_178_q),
        .in_dir(redist0_sync_together115_aunroll_x_in_c0_eni13264_1_tpl_1_q),
        .in_feedback_in_48(i_llvm_fpga_push_i2_cleanups40_push48_covariance38_out_feedback_out_48),
        .in_feedback_valid_in_48(i_llvm_fpga_push_i2_cleanups40_push48_covariance38_out_feedback_valid_out_48),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist13_sync_together115_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups40_pop48_covariance2_out_data_out),
        .out_feedback_stall_out_48(i_llvm_fpga_pop_i2_cleanups40_pop48_covariance2_out_feedback_stall_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup42_covariance3_sel_x(BITSELECT,133)@2
    assign i_first_cleanup42_covariance3_sel_x_b = i_llvm_fpga_pop_i2_cleanups40_pop48_covariance2_out_data_out[0:0];

    // c_i6_184(CONSTANT,39)
    assign c_i6_184_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next6_covariance39(ADD,52)@2
    assign i_fpga_indvars_iv_next6_covariance39_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv5_pop45_covariance31_out_data_out};
    assign i_fpga_indvars_iv_next6_covariance39_b = {1'b0, c_i6_184_q};
    assign i_fpga_indvars_iv_next6_covariance39_o = $unsigned(i_fpga_indvars_iv_next6_covariance39_a) + $unsigned(i_fpga_indvars_iv_next6_covariance39_b);
    assign i_fpga_indvars_iv_next6_covariance39_q = i_fpga_indvars_iv_next6_covariance39_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next6_covariance39_sel_x(BITSELECT,102)@2
    assign bgTrunc_i_fpga_indvars_iv_next6_covariance39_sel_x_b = i_fpga_indvars_iv_next6_covariance39_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv5_push45_covariance40(BLACKBOX,87)@2
    // out out_feedback_out_45@20000000
    // out out_feedback_valid_out_45@20000000
    covariance_i_llvm_fpga_push_i6_fpga_indvars_iv5_push45_0 thei_llvm_fpga_push_i6_fpga_indvars_iv5_push45_covariance40 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next6_covariance39_sel_x_b),
        .in_feedback_stall_in_45(i_llvm_fpga_pop_i6_fpga_indvars_iv5_pop45_covariance31_out_feedback_stall_out_45),
        .in_keep_going37(redist26_i_llvm_fpga_pipeline_keep_going37_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist13_sync_together115_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_45(i_llvm_fpga_push_i6_fpga_indvars_iv5_push45_covariance40_out_feedback_out_45),
        .out_feedback_valid_out_45(i_llvm_fpga_push_i6_fpga_indvars_iv5_push45_covariance40_out_feedback_valid_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_3082(CONSTANT,40)
    assign c_i6_3082_q = $unsigned(6'b011110);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv5_pop45_covariance31(BLACKBOX,73)@2
    // out out_feedback_stall_out_45@20000000
    covariance_i_llvm_fpga_pop_i6_fpga_indvars_iv5_pop45_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv5_pop45_covariance31 (
        .in_data_in(c_i6_3082_q),
        .in_dir(redist0_sync_together115_aunroll_x_in_c0_eni13264_1_tpl_1_q),
        .in_feedback_in_45(i_llvm_fpga_push_i6_fpga_indvars_iv5_push45_covariance40_out_feedback_out_45),
        .in_feedback_valid_in_45(i_llvm_fpga_push_i6_fpga_indvars_iv5_push45_covariance40_out_feedback_valid_out_45),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist13_sync_together115_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv5_pop45_covariance31_out_data_out),
        .out_feedback_stall_out_45(i_llvm_fpga_pop_i6_fpga_indvars_iv5_pop45_covariance31_out_feedback_stall_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond7_covariance32_cmp_nsign(LOGICAL,175)@2
    assign i_exitcond7_covariance32_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv5_pop45_covariance31_out_data_out[5:5]));

    // i_llvm_fpga_push_i1_notexitcond47_covariance35(BLACKBOX,80)@2
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    covariance_i_llvm_fpga_push_i1_notexitcond47_0 thei_llvm_fpga_push_i1_notexitcond47_covariance35 (
        .in_data_in(i_exitcond7_covariance32_cmp_nsign_q),
        .in_feedback_stall_in_9(i_llvm_fpga_pipeline_keep_going37_covariance6_out_not_exitcond_stall_out),
        .in_first_cleanup42(i_first_cleanup42_covariance3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist13_sync_together115_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i1_notexitcond47_covariance35_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i1_notexitcond47_covariance35_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,145)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid187_i_next_initerations36_covariance0_shift_x(BITSELECT,186)@2
    assign rightShiftStage0Idx1Rng1_uid187_i_next_initerations36_covariance0_shift_x_b = i_llvm_fpga_pop_i2_initerations35_pop47_covariance7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid189_i_next_initerations36_covariance0_shift_x(BITJOIN,188)@2
    assign rightShiftStage0Idx1_uid189_i_next_initerations36_covariance0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid187_i_next_initerations36_covariance0_shift_x_b};

    // valid_fanout_reg1(REG,143)@1 + 1
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

    // valid_fanout_reg2(REG,144)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations35_push47_covariance9(BLACKBOX,82)@2
    // out out_feedback_out_47@20000000
    // out out_feedback_valid_out_47@20000000
    covariance_i_llvm_fpga_push_i2_initerations35_push47_0 thei_llvm_fpga_push_i2_initerations35_push47_covariance9 (
        .in_data_in(i_next_initerations36_covariance8_vt_join_q),
        .in_feedback_stall_in_47(i_llvm_fpga_pop_i2_initerations35_pop47_covariance7_out_feedback_stall_out_47),
        .in_keep_going37(redist26_i_llvm_fpga_pipeline_keep_going37_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_47(i_llvm_fpga_push_i2_initerations35_push47_covariance9_out_feedback_out_47),
        .out_feedback_valid_out_47(i_llvm_fpga_push_i2_initerations35_push47_covariance9_out_feedback_valid_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations35_pop47_covariance7(BLACKBOX,68)@2
    // out out_feedback_stall_out_47@20000000
    covariance_i_llvm_fpga_pop_i2_initerations35_pop47_0 thei_llvm_fpga_pop_i2_initerations35_pop47_covariance7 (
        .in_data_in(c_i2_178_q),
        .in_dir(redist0_sync_together115_aunroll_x_in_c0_eni13264_1_tpl_1_q),
        .in_feedback_in_47(i_llvm_fpga_push_i2_initerations35_push47_covariance9_out_feedback_out_47),
        .in_feedback_valid_in_47(i_llvm_fpga_push_i2_initerations35_push47_covariance9_out_feedback_valid_out_47),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations35_pop47_covariance7_out_data_out),
        .out_feedback_stall_out_47(i_llvm_fpga_pop_i2_initerations35_pop47_covariance7_out_feedback_stall_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid191_i_next_initerations36_covariance0_shift_x(MUX,190)@2
    assign rightShiftStage0_uid191_i_next_initerations36_covariance0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid191_i_next_initerations36_covariance0_shift_x_s or i_llvm_fpga_pop_i2_initerations35_pop47_covariance7_out_data_out or rightShiftStage0Idx1_uid189_i_next_initerations36_covariance0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid191_i_next_initerations36_covariance0_shift_x_s)
            1'b0 : rightShiftStage0_uid191_i_next_initerations36_covariance0_shift_x_q = i_llvm_fpga_pop_i2_initerations35_pop47_covariance7_out_data_out;
            1'b1 : rightShiftStage0_uid191_i_next_initerations36_covariance0_shift_x_q = rightShiftStage0Idx1_uid189_i_next_initerations36_covariance0_shift_x_q;
            default : rightShiftStage0_uid191_i_next_initerations36_covariance0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations36_covariance8_vt_select_0(BITSELECT,93)@2
    assign i_next_initerations36_covariance8_vt_select_0_b = rightShiftStage0_uid191_i_next_initerations36_covariance0_shift_x_q[0:0];

    // i_next_initerations36_covariance8_vt_join(BITJOIN,92)@2
    assign i_next_initerations36_covariance8_vt_join_q = {GND_q, i_next_initerations36_covariance8_vt_select_0_b};

    // i_last_initeration38_covariance10_sel_x(BITSELECT,135)@2
    assign i_last_initeration38_covariance10_sel_x_b = i_next_initerations36_covariance8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration39_covariance11(BLACKBOX,75)@2
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    covariance_i_llvm_fpga_push_i1_lastiniteration39_0 thei_llvm_fpga_push_i1_lastiniteration39_covariance11 (
        .in_data_in(i_last_initeration38_covariance10_sel_x_b),
        .in_feedback_stall_in_8(i_llvm_fpga_pipeline_keep_going37_covariance6_out_initeration_stall_out),
        .in_keep_going37(redist26_i_llvm_fpga_pipeline_keep_going37_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i1_lastiniteration39_covariance11_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i1_lastiniteration39_covariance11_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going37_covariance6(BLACKBOX,61)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    covariance_i_llvm_fpga_pipeline_keep_going37_0 thei_llvm_fpga_pipeline_keep_going37_covariance6 (
        .in_data_in(in_c0_eni13264_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration39_covariance11_out_feedback_out_8),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration39_covariance11_out_feedback_valid_out_8),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond47_covariance35_out_feedback_out_9),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond47_covariance35_out_feedback_valid_out_9),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going37_covariance6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going37_covariance6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going37_covariance6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going37_covariance6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going37_covariance6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going37_covariance6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,42)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going37_covariance6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going37_covariance6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going37_covariance6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going37_covariance6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,99)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going37_covariance6_out_pipeline_valid_out;

    // valid_fanout_reg9(REG,151)@1 + 1
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

    // valid_fanout_reg7(REG,149)@1 + 1
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

    // valid_fanout_reg8(REG,150)@1 + 1
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

    // i_llvm_fpga_push_i1_memdep_phi1_pop1683_push50_covariance18(BLACKBOX,76)@2
    // out out_feedback_out_50@20000000
    // out out_feedback_valid_out_50@20000000
    covariance_i_llvm_fpga_push_i1_memdep_phi1_pop1683_push50_0 thei_llvm_fpga_push_i1_memdep_phi1_pop1683_push50_covariance18 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi1_pop1683_pop50_covariance17_out_data_out),
        .in_feedback_stall_in_50(i_llvm_fpga_pop_i1_memdep_phi1_pop1683_pop50_covariance17_out_feedback_stall_out_50),
        .in_keep_going37(redist26_i_llvm_fpga_pipeline_keep_going37_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_50(i_llvm_fpga_push_i1_memdep_phi1_pop1683_push50_covariance18_out_feedback_out_50),
        .out_feedback_valid_out_50(i_llvm_fpga_push_i1_memdep_phi1_pop1683_push50_covariance18_out_feedback_valid_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together115_aunroll_x_in_c0_eni13264_3_tpl_1(DELAY,195)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together115_aunroll_x_in_c0_eni13264_3_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together115_aunroll_x_in_c0_eni13264_3_tpl_1_q <= $unsigned(in_c0_eni13264_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi1_pop1683_pop50_covariance17(BLACKBOX,63)@2
    // out out_feedback_stall_out_50@20000000
    covariance_i_llvm_fpga_pop_i1_memdep_phi1_pop1683_pop50_0 thei_llvm_fpga_pop_i1_memdep_phi1_pop1683_pop50_covariance17 (
        .in_data_in(redist2_sync_together115_aunroll_x_in_c0_eni13264_3_tpl_1_q),
        .in_dir(redist0_sync_together115_aunroll_x_in_c0_eni13264_1_tpl_1_q),
        .in_feedback_in_50(i_llvm_fpga_push_i1_memdep_phi1_pop1683_push50_covariance18_out_feedback_out_50),
        .in_feedback_valid_in_50(i_llvm_fpga_push_i1_memdep_phi1_pop1683_push50_covariance18_out_feedback_valid_out_50),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi1_pop1683_pop50_covariance17_out_data_out),
        .out_feedback_stall_out_50(i_llvm_fpga_pop_i1_memdep_phi1_pop1683_pop50_covariance17_out_feedback_stall_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_covariance_data_local_pmem(CONSTANT,5)
    assign c_covariance_data_local_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx172_covariance0_upper_bits_x_merged_bit_select(BITSELECT,192)@2
    assign i_arrayidx172_covariance0_upper_bits_x_merged_bit_select_b = c_covariance_data_local_pmem_q[63:12];
    assign i_arrayidx172_covariance0_upper_bits_x_merged_bit_select_c = c_covariance_data_local_pmem_q[11:0];

    // valid_fanout_reg5(REG,147)@1 + 1
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

    // valid_fanout_reg6(REG,148)@1 + 1
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

    // i_llvm_fpga_push_i64_idxprom7101_push56_covariance15(BLACKBOX,86)@2
    // out out_feedback_out_56@20000000
    // out out_feedback_valid_out_56@20000000
    covariance_i_llvm_fpga_push_i64_idxprom7101_push56_0 thei_llvm_fpga_push_i64_idxprom7101_push56_covariance15 (
        .in_data_in(i_llvm_fpga_pop_i64_idxprom7101_pop56_covariance14_out_data_out),
        .in_feedback_stall_in_56(i_llvm_fpga_pop_i64_idxprom7101_pop56_covariance14_out_feedback_stall_out_56),
        .in_keep_going37(redist26_i_llvm_fpga_pipeline_keep_going37_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_56(i_llvm_fpga_push_i64_idxprom7101_push56_covariance15_out_feedback_out_56),
        .out_feedback_valid_out_56(i_llvm_fpga_push_i64_idxprom7101_push56_covariance15_out_feedback_valid_out_56),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together115_aunroll_x_in_c0_eni13264_2_tpl_1(DELAY,194)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together115_aunroll_x_in_c0_eni13264_2_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together115_aunroll_x_in_c0_eni13264_2_tpl_1_q <= $unsigned(in_c0_eni13264_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i64_idxprom7101_pop56_covariance14(BLACKBOX,72)@2
    // out out_feedback_stall_out_56@20000000
    covariance_i_llvm_fpga_pop_i64_idxprom7101_pop56_0 thei_llvm_fpga_pop_i64_idxprom7101_pop56_covariance14 (
        .in_data_in(redist1_sync_together115_aunroll_x_in_c0_eni13264_2_tpl_1_q),
        .in_dir(redist0_sync_together115_aunroll_x_in_c0_eni13264_1_tpl_1_q),
        .in_feedback_in_56(i_llvm_fpga_push_i64_idxprom7101_push56_covariance15_out_feedback_out_56),
        .in_feedback_valid_in_56(i_llvm_fpga_push_i64_idxprom7101_push56_covariance15_out_feedback_valid_out_56),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i64_idxprom7101_pop56_covariance14_out_data_out),
        .out_feedback_stall_out_56(i_llvm_fpga_pop_i64_idxprom7101_pop56_covariance14_out_feedback_stall_out_56),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx172_covariance0_dupName_3_trunc_sel_x(BITSELECT,127)@2
    assign i_arrayidx172_covariance0_dupName_3_trunc_sel_x_b = i_llvm_fpga_pop_i64_idxprom7101_pop56_covariance14_out_data_out[11:0];

    // i_arrayidx172_covariance0_dupName_0_narrow_x(BITSELECT,118)@2
    assign i_arrayidx172_covariance0_dupName_0_narrow_x_b = i_arrayidx172_covariance0_dupName_3_trunc_sel_x_b[9:0];

    // i_arrayidx172_covariance0_dupName_0_shift_join_x(BITJOIN,119)@2
    assign i_arrayidx172_covariance0_dupName_0_shift_join_x_q = {i_arrayidx172_covariance0_dupName_0_narrow_x_b, i_arrayidx172_covariance16_vt_const_1_q};

    // c_i32_080(CONSTANT,37)
    assign c_i32_080_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg4(REG,146)@1 + 1
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

    // valid_fanout_reg17(REG,159)@1 + 1
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

    // c_i32_181(CONSTANT,38)
    assign c_i32_181_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc19_covariance29(ADD,57)@2
    assign i_inc19_covariance29_a = {1'b0, i_llvm_fpga_pop_i32_i9_038_pop46_covariance12_out_data_out};
    assign i_inc19_covariance29_b = {1'b0, c_i32_181_q};
    assign i_inc19_covariance29_o = $unsigned(i_inc19_covariance29_a) + $unsigned(i_inc19_covariance29_b);
    assign i_inc19_covariance29_q = i_inc19_covariance29_o[32:0];

    // bgTrunc_i_inc19_covariance29_sel_x(BITSELECT,103)@2
    assign bgTrunc_i_inc19_covariance29_sel_x_b = i_inc19_covariance29_q[31:0];

    // i_llvm_fpga_push_i32_i9_038_push46_covariance30(BLACKBOX,83)@2
    // out out_feedback_out_46@20000000
    // out out_feedback_valid_out_46@20000000
    covariance_i_llvm_fpga_push_i32_i9_038_push46_0 thei_llvm_fpga_push_i32_i9_038_push46_covariance30 (
        .in_data_in(bgTrunc_i_inc19_covariance29_sel_x_b),
        .in_feedback_stall_in_46(i_llvm_fpga_pop_i32_i9_038_pop46_covariance12_out_feedback_stall_out_46),
        .in_keep_going37(redist26_i_llvm_fpga_pipeline_keep_going37_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(),
        .out_feedback_out_46(i_llvm_fpga_push_i32_i9_038_push46_covariance30_out_feedback_out_46),
        .out_feedback_valid_out_46(i_llvm_fpga_push_i32_i9_038_push46_covariance30_out_feedback_valid_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i9_038_pop46_covariance12(BLACKBOX,69)@2
    // out out_feedback_stall_out_46@20000000
    covariance_i_llvm_fpga_pop_i32_i9_038_pop46_0 thei_llvm_fpga_pop_i32_i9_038_pop46_covariance12 (
        .in_data_in(c_i32_080_q),
        .in_dir(redist0_sync_together115_aunroll_x_in_c0_eni13264_1_tpl_1_q),
        .in_feedback_in_46(i_llvm_fpga_push_i32_i9_038_push46_covariance30_out_feedback_out_46),
        .in_feedback_valid_in_46(i_llvm_fpga_push_i32_i9_038_push46_covariance30_out_feedback_valid_out_46),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_i9_038_pop46_covariance12_out_data_out),
        .out_feedback_stall_out_46(i_llvm_fpga_pop_i32_i9_038_pop46_covariance12_out_feedback_stall_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom14_covariance13_sel_x(BITSELECT,134)@2
    assign i_idxprom14_covariance13_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i9_038_pop46_covariance12_out_data_out[31:0]};

    // i_idxprom14_covariance13_vt_select_31(BITSELECT,56)@2
    assign i_idxprom14_covariance13_vt_select_31_b = i_idxprom14_covariance13_sel_x_b[31:0];

    // i_idxprom14_covariance13_vt_join(BITJOIN,55)@2
    assign i_idxprom14_covariance13_vt_join_q = {c_i32_080_q, i_idxprom14_covariance13_vt_select_31_b};

    // i_arrayidx172_covariance0_dupName_0_trunc_sel_x(BITSELECT,125)@2
    assign i_arrayidx172_covariance0_dupName_0_trunc_sel_x_b = i_idxprom14_covariance13_vt_join_q[11:0];

    // i_arrayidx172_covariance0_narrow_x(BITSELECT,113)@2
    assign i_arrayidx172_covariance0_narrow_x_b = i_arrayidx172_covariance0_dupName_0_trunc_sel_x_b[4:0];

    // i_arrayidx172_covariance0_c_i7_01_x(CONSTANT,112)
    assign i_arrayidx172_covariance0_c_i7_01_x_q = $unsigned(7'b0000000);

    // i_arrayidx172_covariance0_shift_join_x(BITJOIN,114)@2
    assign i_arrayidx172_covariance0_shift_join_x_q = {i_arrayidx172_covariance0_narrow_x_b, i_arrayidx172_covariance0_c_i7_01_x_q};

    // i_arrayidx172_covariance0_add_x(ADD,109)@2
    assign i_arrayidx172_covariance0_add_x_a = {1'b0, i_arrayidx172_covariance0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx172_covariance0_add_x_b = {1'b0, i_arrayidx172_covariance0_shift_join_x_q};
    assign i_arrayidx172_covariance0_add_x_o = $unsigned(i_arrayidx172_covariance0_add_x_a) + $unsigned(i_arrayidx172_covariance0_add_x_b);
    assign i_arrayidx172_covariance0_add_x_q = i_arrayidx172_covariance0_add_x_o[12:0];

    // i_arrayidx172_covariance0_dupName_2_trunc_sel_x(BITSELECT,126)@2
    assign i_arrayidx172_covariance0_dupName_2_trunc_sel_x_b = i_arrayidx172_covariance0_add_x_q[11:0];

    // i_arrayidx172_covariance0_dupName_0_add_x(ADD,117)@2
    assign i_arrayidx172_covariance0_dupName_0_add_x_a = {1'b0, i_arrayidx172_covariance0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx172_covariance0_dupName_0_add_x_b = {1'b0, i_arrayidx172_covariance0_dupName_0_shift_join_x_q};
    assign i_arrayidx172_covariance0_dupName_0_add_x_o = $unsigned(i_arrayidx172_covariance0_dupName_0_add_x_a) + $unsigned(i_arrayidx172_covariance0_dupName_0_add_x_b);
    assign i_arrayidx172_covariance0_dupName_0_add_x_q = i_arrayidx172_covariance0_dupName_0_add_x_o[12:0];

    // i_arrayidx172_covariance0_dupName_5_trunc_sel_x(BITSELECT,128)@2
    assign i_arrayidx172_covariance0_dupName_5_trunc_sel_x_b = i_arrayidx172_covariance0_dupName_0_add_x_q[11:0];

    // i_arrayidx172_covariance0_append_upper_bits_x(BITJOIN,110)@2
    assign i_arrayidx172_covariance0_append_upper_bits_x_q = {i_arrayidx172_covariance0_upper_bits_x_merged_bit_select_b, i_arrayidx172_covariance0_dupName_5_trunc_sel_x_b};

    // i_arrayidx172_covariance16_vt_select_63(BITSELECT,45)@2
    assign i_arrayidx172_covariance16_vt_select_63_b = i_arrayidx172_covariance0_append_upper_bits_x_q[63:2];

    // i_arrayidx172_covariance16_vt_const_1(CONSTANT,43)
    assign i_arrayidx172_covariance16_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx172_covariance16_vt_join(BITJOIN,44)@2
    assign i_arrayidx172_covariance16_vt_join_q = {i_arrayidx172_covariance16_vt_select_63_b, i_arrayidx172_covariance16_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_covariance3_covariance19(BLACKBOX,60)@2
    // in in_i_stall@20000000
    // out out_o_readdata@6
    // out out_o_stall@5
    // out out_o_valid@6
    // out out_unnamed_covariance3_covariance_avm_address@20000000
    // out out_unnamed_covariance3_covariance_avm_burstcount@20000000
    // out out_unnamed_covariance3_covariance_avm_byteenable@20000000
    // out out_unnamed_covariance3_covariance_avm_enable@20000000
    // out out_unnamed_covariance3_covariance_avm_read@20000000
    // out out_unnamed_covariance3_covariance_avm_write@20000000
    // out out_unnamed_covariance3_covariance_avm_writedata@20000000
    covariance_i_llvm_fpga_mem_unnamed_3_covariance0 thei_llvm_fpga_mem_unnamed_covariance3_covariance19 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx172_covariance16_vt_join_q),
        .in_i_dependence(i_llvm_fpga_pop_i1_memdep_phi1_pop1683_pop50_covariance17_out_data_out),
        .in_i_predicate(i_first_cleanup_xor43_covariance4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg9_q),
        .in_unnamed_covariance3_covariance_avm_readdata(in_unnamed_covariance3_covariance_avm_readdata),
        .in_unnamed_covariance3_covariance_avm_readdatavalid(in_unnamed_covariance3_covariance_avm_readdatavalid),
        .in_unnamed_covariance3_covariance_avm_waitrequest(in_unnamed_covariance3_covariance_avm_waitrequest),
        .in_unnamed_covariance3_covariance_avm_writeack(in_unnamed_covariance3_covariance_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_covariance3_covariance19_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_covariance3_covariance_avm_address(i_llvm_fpga_mem_unnamed_covariance3_covariance19_out_unnamed_covariance3_covariance_avm_address),
        .out_unnamed_covariance3_covariance_avm_burstcount(i_llvm_fpga_mem_unnamed_covariance3_covariance19_out_unnamed_covariance3_covariance_avm_burstcount),
        .out_unnamed_covariance3_covariance_avm_byteenable(i_llvm_fpga_mem_unnamed_covariance3_covariance19_out_unnamed_covariance3_covariance_avm_byteenable),
        .out_unnamed_covariance3_covariance_avm_enable(i_llvm_fpga_mem_unnamed_covariance3_covariance19_out_unnamed_covariance3_covariance_avm_enable),
        .out_unnamed_covariance3_covariance_avm_read(i_llvm_fpga_mem_unnamed_covariance3_covariance19_out_unnamed_covariance3_covariance_avm_read),
        .out_unnamed_covariance3_covariance_avm_write(i_llvm_fpga_mem_unnamed_covariance3_covariance19_out_unnamed_covariance3_covariance_avm_write),
        .out_unnamed_covariance3_covariance_avm_writedata(i_llvm_fpga_mem_unnamed_covariance3_covariance19_out_unnamed_covariance3_covariance_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,107)
    assign out_unnamed_covariance3_covariance_avm_address = i_llvm_fpga_mem_unnamed_covariance3_covariance19_out_unnamed_covariance3_covariance_avm_address;
    assign out_unnamed_covariance3_covariance_avm_enable = i_llvm_fpga_mem_unnamed_covariance3_covariance19_out_unnamed_covariance3_covariance_avm_enable;
    assign out_unnamed_covariance3_covariance_avm_read = i_llvm_fpga_mem_unnamed_covariance3_covariance19_out_unnamed_covariance3_covariance_avm_read;
    assign out_unnamed_covariance3_covariance_avm_write = i_llvm_fpga_mem_unnamed_covariance3_covariance19_out_unnamed_covariance3_covariance_avm_write;
    assign out_unnamed_covariance3_covariance_avm_writedata = i_llvm_fpga_mem_unnamed_covariance3_covariance19_out_unnamed_covariance3_covariance_avm_writedata;
    assign out_unnamed_covariance3_covariance_avm_byteenable = i_llvm_fpga_mem_unnamed_covariance3_covariance19_out_unnamed_covariance3_covariance_avm_byteenable;
    assign out_unnamed_covariance3_covariance_avm_burstcount = i_llvm_fpga_mem_unnamed_covariance3_covariance19_out_unnamed_covariance3_covariance_avm_burstcount;

    // valid_fanout_reg10(REG,152)@1 + 1
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

    // valid_fanout_reg11(REG,153)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist13_sync_together115_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist27_i_llvm_fpga_pipeline_keep_going37_covariance6_out_data_out_2(DELAY,220)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_pipeline_keep_going37_covariance6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist27_i_llvm_fpga_pipeline_keep_going37_covariance6_out_data_out_2_q <= $unsigned(redist26_i_llvm_fpga_pipeline_keep_going37_covariance6_out_data_out_1_q);
        end
    end

    // i_llvm_fpga_push_i32_mul100_push55_covariance21(BLACKBOX,85)@3
    // out out_feedback_out_55@20000000
    // out out_feedback_valid_out_55@20000000
    covariance_i_llvm_fpga_push_i32_mul100_push55_0 thei_llvm_fpga_push_i32_mul100_push55_covariance21 (
        .in_data_in(redist18_i_llvm_fpga_pop_i32_mul100_pop55_covariance20_out_data_out_1_q),
        .in_feedback_stall_in_55(i_llvm_fpga_pop_i32_mul100_pop55_covariance20_out_feedback_stall_out_55),
        .in_keep_going37(redist27_i_llvm_fpga_pipeline_keep_going37_covariance6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_55(i_llvm_fpga_push_i32_mul100_push55_covariance21_out_feedback_out_55),
        .out_feedback_valid_out_55(i_llvm_fpga_push_i32_mul100_push55_covariance21_out_feedback_valid_out_55),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together115_aunroll_x_in_c0_eni13264_4_tpl_1(DELAY,196)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together115_aunroll_x_in_c0_eni13264_4_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together115_aunroll_x_in_c0_eni13264_4_tpl_1_q <= $unsigned(in_c0_eni13264_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_mul100_pop55_covariance20(BLACKBOX,71)@2
    // out out_feedback_stall_out_55@20000000
    covariance_i_llvm_fpga_pop_i32_mul100_pop55_0 thei_llvm_fpga_pop_i32_mul100_pop55_covariance20 (
        .in_data_in(redist3_sync_together115_aunroll_x_in_c0_eni13264_4_tpl_1_q),
        .in_dir(redist0_sync_together115_aunroll_x_in_c0_eni13264_1_tpl_1_q),
        .in_feedback_in_55(i_llvm_fpga_push_i32_mul100_push55_covariance21_out_feedback_out_55),
        .in_feedback_valid_in_55(i_llvm_fpga_push_i32_mul100_push55_covariance21_out_feedback_valid_out_55),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul100_pop55_covariance20_out_data_out),
        .out_feedback_stall_out_55(i_llvm_fpga_pop_i32_mul100_pop55_covariance20_out_feedback_stall_out_55),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist18_i_llvm_fpga_pop_i32_mul100_pop55_covariance20_out_data_out_1(DELAY,211)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_pop_i32_mul100_pop55_covariance20_out_data_out_1_q <= '0;
        end
        else
        begin
            redist18_i_llvm_fpga_pop_i32_mul100_pop55_covariance20_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_mul100_pop55_covariance20_out_data_out);
        end
    end

    // redist19_i_llvm_fpga_pop_i32_mul100_pop55_covariance20_out_data_out_4(DELAY,212)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_pop_i32_mul100_pop55_covariance20_out_data_out_4_delay_0 <= '0;
            redist19_i_llvm_fpga_pop_i32_mul100_pop55_covariance20_out_data_out_4_q <= '0;
        end
        else
        begin
            redist19_i_llvm_fpga_pop_i32_mul100_pop55_covariance20_out_data_out_4_delay_0 <= $unsigned(redist18_i_llvm_fpga_pop_i32_mul100_pop55_covariance20_out_data_out_1_q);
            redist19_i_llvm_fpga_pop_i32_mul100_pop55_covariance20_out_data_out_4_q <= redist19_i_llvm_fpga_pop_i32_mul100_pop55_covariance20_out_data_out_4_delay_0;
        end
    end

    // redist19_i_llvm_fpga_pop_i32_mul100_pop55_covariance20_out_data_out_4_outputreg0(DELAY,234)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_pop_i32_mul100_pop55_covariance20_out_data_out_4_outputreg0_q <= '0;
        end
        else
        begin
            redist19_i_llvm_fpga_pop_i32_mul100_pop55_covariance20_out_data_out_4_outputreg0_q <= $unsigned(redist19_i_llvm_fpga_pop_i32_mul100_pop55_covariance20_out_data_out_4_q);
        end
    end

    // i_sub_covariance22(SUB,96)@6
    assign i_sub_covariance22_a = {1'b0, i_llvm_fpga_mem_unnamed_covariance3_covariance19_out_o_readdata};
    assign i_sub_covariance22_b = {1'b0, redist19_i_llvm_fpga_pop_i32_mul100_pop55_covariance20_out_data_out_4_outputreg0_q};
    assign i_sub_covariance22_o = $unsigned(i_sub_covariance22_a) - $unsigned(i_sub_covariance22_b);
    assign i_sub_covariance22_q = i_sub_covariance22_o[32:0];

    // bgTrunc_i_sub_covariance22_sel_x(BITSELECT,104)@6
    assign bgTrunc_i_sub_covariance22_sel_x_b = $unsigned(i_sub_covariance22_q[31:0]);

    // redist14_sync_together115_aunroll_x_in_i_valid_4(DELAY,207)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together115_aunroll_x_in_i_valid_4_delay_0 <= '0;
            redist14_sync_together115_aunroll_x_in_i_valid_4_delay_1 <= '0;
            redist14_sync_together115_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist14_sync_together115_aunroll_x_in_i_valid_4_delay_0 <= $unsigned(redist13_sync_together115_aunroll_x_in_i_valid_1_q);
            redist14_sync_together115_aunroll_x_in_i_valid_4_delay_1 <= redist14_sync_together115_aunroll_x_in_i_valid_4_delay_0;
            redist14_sync_together115_aunroll_x_in_i_valid_4_q <= redist14_sync_together115_aunroll_x_in_i_valid_4_delay_1;
        end
    end

    // valid_fanout_reg16(REG,158)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist14_sync_together115_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist29_i_first_cleanup_xor43_covariance4_q_4(DELAY,222)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_first_cleanup_xor43_covariance4_q_4_delay_0 <= '0;
            redist29_i_first_cleanup_xor43_covariance4_q_4_delay_1 <= '0;
            redist29_i_first_cleanup_xor43_covariance4_q_4_delay_2 <= '0;
            redist29_i_first_cleanup_xor43_covariance4_q_4_q <= '0;
        end
        else
        begin
            redist29_i_first_cleanup_xor43_covariance4_q_4_delay_0 <= $unsigned(i_first_cleanup_xor43_covariance4_q);
            redist29_i_first_cleanup_xor43_covariance4_q_4_delay_1 <= redist29_i_first_cleanup_xor43_covariance4_q_4_delay_0;
            redist29_i_first_cleanup_xor43_covariance4_q_4_delay_2 <= redist29_i_first_cleanup_xor43_covariance4_q_4_delay_1;
            redist29_i_first_cleanup_xor43_covariance4_q_4_q <= redist29_i_first_cleanup_xor43_covariance4_q_4_delay_2;
        end
    end

    // valid_fanout_reg14(REG,156)@1 + 1
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

    // valid_fanout_reg15(REG,157)@1 + 1
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

    // i_llvm_fpga_push_i1_memdep_phi4_pop1889_push52_covariance26(BLACKBOX,78)@2
    // out out_feedback_out_52@20000000
    // out out_feedback_valid_out_52@20000000
    covariance_i_llvm_fpga_push_i1_memdep_phi4_pop1889_push52_0 thei_llvm_fpga_push_i1_memdep_phi4_pop1889_push52_covariance26 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi4_pop1889_pop52_covariance25_out_data_out),
        .in_feedback_stall_in_52(i_llvm_fpga_pop_i1_memdep_phi4_pop1889_pop52_covariance25_out_feedback_stall_out_52),
        .in_keep_going37(redist26_i_llvm_fpga_pipeline_keep_going37_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_52(i_llvm_fpga_push_i1_memdep_phi4_pop1889_push52_covariance26_out_feedback_out_52),
        .out_feedback_valid_out_52(i_llvm_fpga_push_i1_memdep_phi4_pop1889_push52_covariance26_out_feedback_valid_out_52),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together115_aunroll_x_in_c0_eni13264_6_tpl_1(DELAY,198)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together115_aunroll_x_in_c0_eni13264_6_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together115_aunroll_x_in_c0_eni13264_6_tpl_1_q <= $unsigned(in_c0_eni13264_6_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi4_pop1889_pop52_covariance25(BLACKBOX,65)@2
    // out out_feedback_stall_out_52@20000000
    covariance_i_llvm_fpga_pop_i1_memdep_phi4_pop1889_pop52_0 thei_llvm_fpga_pop_i1_memdep_phi4_pop1889_pop52_covariance25 (
        .in_data_in(redist5_sync_together115_aunroll_x_in_c0_eni13264_6_tpl_1_q),
        .in_dir(redist0_sync_together115_aunroll_x_in_c0_eni13264_1_tpl_1_q),
        .in_feedback_in_52(i_llvm_fpga_push_i1_memdep_phi4_pop1889_push52_covariance26_out_feedback_out_52),
        .in_feedback_valid_in_52(i_llvm_fpga_push_i1_memdep_phi4_pop1889_push52_covariance26_out_feedback_valid_out_52),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi4_pop1889_pop52_covariance25_out_data_out),
        .out_feedback_stall_out_52(i_llvm_fpga_pop_i1_memdep_phi4_pop1889_pop52_covariance25_out_feedback_stall_out_52),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg12(REG,154)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg13(REG,155)@1 + 1
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

    // i_llvm_fpga_push_i1_memdep_phi2_pop1786_push51_covariance24(BLACKBOX,77)@2
    // out out_feedback_out_51@20000000
    // out out_feedback_valid_out_51@20000000
    covariance_i_llvm_fpga_push_i1_memdep_phi2_pop1786_push51_0 thei_llvm_fpga_push_i1_memdep_phi2_pop1786_push51_covariance24 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi2_pop1786_pop51_covariance23_out_data_out),
        .in_feedback_stall_in_51(i_llvm_fpga_pop_i1_memdep_phi2_pop1786_pop51_covariance23_out_feedback_stall_out_51),
        .in_keep_going37(redist26_i_llvm_fpga_pipeline_keep_going37_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_51(i_llvm_fpga_push_i1_memdep_phi2_pop1786_push51_covariance24_out_feedback_out_51),
        .out_feedback_valid_out_51(i_llvm_fpga_push_i1_memdep_phi2_pop1786_push51_covariance24_out_feedback_valid_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together115_aunroll_x_in_c0_eni13264_5_tpl_1(DELAY,197)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together115_aunroll_x_in_c0_eni13264_5_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together115_aunroll_x_in_c0_eni13264_5_tpl_1_q <= $unsigned(in_c0_eni13264_5_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi2_pop1786_pop51_covariance23(BLACKBOX,64)@2
    // out out_feedback_stall_out_51@20000000
    covariance_i_llvm_fpga_pop_i1_memdep_phi2_pop1786_pop51_0 thei_llvm_fpga_pop_i1_memdep_phi2_pop1786_pop51_covariance23 (
        .in_data_in(redist4_sync_together115_aunroll_x_in_c0_eni13264_5_tpl_1_q),
        .in_dir(redist0_sync_together115_aunroll_x_in_c0_eni13264_1_tpl_1_q),
        .in_feedback_in_51(i_llvm_fpga_push_i1_memdep_phi2_pop1786_push51_covariance24_out_feedback_out_51),
        .in_feedback_valid_in_51(i_llvm_fpga_push_i1_memdep_phi2_pop1786_push51_covariance24_out_feedback_valid_out_51),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi2_pop1786_pop51_covariance23_out_data_out),
        .out_feedback_stall_out_51(i_llvm_fpga_pop_i1_memdep_phi2_pop1786_pop51_covariance23_out_feedback_stall_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_memdep_phi4_or_covariance27(LOGICAL,89)@2 + 1
    assign i_memdep_phi4_or_covariance27_qi = i_llvm_fpga_pop_i1_memdep_phi2_pop1786_pop51_covariance23_out_data_out | i_llvm_fpga_pop_i1_memdep_phi4_pop1889_pop52_covariance25_out_data_out;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_memdep_phi4_or_covariance27_delay ( .xin(i_memdep_phi4_or_covariance27_qi), .xout(i_memdep_phi4_or_covariance27_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist16_i_memdep_phi4_or_covariance27_q_4(DELAY,209)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_memdep_phi4_or_covariance27_q_4_delay_0 <= '0;
            redist16_i_memdep_phi4_or_covariance27_q_4_delay_1 <= '0;
            redist16_i_memdep_phi4_or_covariance27_q_4_q <= '0;
        end
        else
        begin
            redist16_i_memdep_phi4_or_covariance27_q_4_delay_0 <= $unsigned(i_memdep_phi4_or_covariance27_q);
            redist16_i_memdep_phi4_or_covariance27_q_4_delay_1 <= redist16_i_memdep_phi4_or_covariance27_q_4_delay_0;
            redist16_i_memdep_phi4_or_covariance27_q_4_q <= redist16_i_memdep_phi4_or_covariance27_q_4_delay_1;
        end
    end

    // redist30_i_arrayidx172_covariance16_vt_join_q_4_notEnable(LOGICAL,250)
    assign redist30_i_arrayidx172_covariance16_vt_join_q_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist30_i_arrayidx172_covariance16_vt_join_q_4_nor(LOGICAL,251)
    assign redist30_i_arrayidx172_covariance16_vt_join_q_4_nor_q = ~ (redist30_i_arrayidx172_covariance16_vt_join_q_4_notEnable_q | redist30_i_arrayidx172_covariance16_vt_join_q_4_sticky_ena_q);

    // redist30_i_arrayidx172_covariance16_vt_join_q_4_cmpReg(REG,249)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_arrayidx172_covariance16_vt_join_q_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist30_i_arrayidx172_covariance16_vt_join_q_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist30_i_arrayidx172_covariance16_vt_join_q_4_sticky_ena(REG,252)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_arrayidx172_covariance16_vt_join_q_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist30_i_arrayidx172_covariance16_vt_join_q_4_nor_q == 1'b1)
        begin
            redist30_i_arrayidx172_covariance16_vt_join_q_4_sticky_ena_q <= $unsigned(redist30_i_arrayidx172_covariance16_vt_join_q_4_cmpReg_q);
        end
    end

    // redist30_i_arrayidx172_covariance16_vt_join_q_4_enaAnd(LOGICAL,253)
    assign redist30_i_arrayidx172_covariance16_vt_join_q_4_enaAnd_q = redist30_i_arrayidx172_covariance16_vt_join_q_4_sticky_ena_q & VCC_q;

    // redist30_i_arrayidx172_covariance16_vt_join_q_4_rdcnt(COUNTER,247)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_arrayidx172_covariance16_vt_join_q_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist30_i_arrayidx172_covariance16_vt_join_q_4_rdcnt_i <= $unsigned(redist30_i_arrayidx172_covariance16_vt_join_q_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist30_i_arrayidx172_covariance16_vt_join_q_4_rdcnt_q = redist30_i_arrayidx172_covariance16_vt_join_q_4_rdcnt_i[0:0];

    // redist30_i_arrayidx172_covariance16_vt_join_q_4_inputreg0(DELAY,245)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_arrayidx172_covariance16_vt_join_q_4_inputreg0_q <= '0;
        end
        else
        begin
            redist30_i_arrayidx172_covariance16_vt_join_q_4_inputreg0_q <= $unsigned(i_arrayidx172_covariance16_vt_join_q);
        end
    end

    // redist30_i_arrayidx172_covariance16_vt_join_q_4_wraddr(REG,248)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_arrayidx172_covariance16_vt_join_q_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist30_i_arrayidx172_covariance16_vt_join_q_4_wraddr_q <= $unsigned(redist30_i_arrayidx172_covariance16_vt_join_q_4_rdcnt_q);
        end
    end

    // redist30_i_arrayidx172_covariance16_vt_join_q_4_mem(DUALMEM,246)
    assign redist30_i_arrayidx172_covariance16_vt_join_q_4_mem_ia = $unsigned(redist30_i_arrayidx172_covariance16_vt_join_q_4_inputreg0_q);
    assign redist30_i_arrayidx172_covariance16_vt_join_q_4_mem_aa = redist30_i_arrayidx172_covariance16_vt_join_q_4_wraddr_q;
    assign redist30_i_arrayidx172_covariance16_vt_join_q_4_mem_ab = redist30_i_arrayidx172_covariance16_vt_join_q_4_rdcnt_q;
    assign redist30_i_arrayidx172_covariance16_vt_join_q_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(64),
        .widthad_b(1),
        .numwords_b(2),
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
    ) redist30_i_arrayidx172_covariance16_vt_join_q_4_mem_dmem (
        .clocken1(redist30_i_arrayidx172_covariance16_vt_join_q_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist30_i_arrayidx172_covariance16_vt_join_q_4_mem_reset0),
        .clock1(clock),
        .address_a(redist30_i_arrayidx172_covariance16_vt_join_q_4_mem_aa),
        .data_a(redist30_i_arrayidx172_covariance16_vt_join_q_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist30_i_arrayidx172_covariance16_vt_join_q_4_mem_ab),
        .q_b(redist30_i_arrayidx172_covariance16_vt_join_q_4_mem_iq),
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
    assign redist30_i_arrayidx172_covariance16_vt_join_q_4_mem_q = redist30_i_arrayidx172_covariance16_vt_join_q_4_mem_iq[63:0];

    // i_llvm_fpga_mem_memdep_covariance28(BLACKBOX,59)@6
    // out out_memdep_covariance_avm_address@20000000
    // out out_memdep_covariance_avm_burstcount@20000000
    // out out_memdep_covariance_avm_byteenable@20000000
    // out out_memdep_covariance_avm_enable@20000000
    // out out_memdep_covariance_avm_read@20000000
    // out out_memdep_covariance_avm_write@20000000
    // out out_memdep_covariance_avm_writedata@20000000
    // out out_o_stall@7
    // out out_o_valid@7
    // out out_o_writeack@7
    covariance_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_covariance28 (
        .in_flush(in_flush),
        .in_i_address(redist30_i_arrayidx172_covariance16_vt_join_q_4_mem_q),
        .in_i_dependence(redist16_i_memdep_phi4_or_covariance27_q_4_q),
        .in_i_predicate(redist29_i_first_cleanup_xor43_covariance4_q_4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg16_q),
        .in_i_writedata(bgTrunc_i_sub_covariance22_sel_x_b),
        .in_memdep_covariance_avm_readdata(in_memdep_covariance_avm_readdata),
        .in_memdep_covariance_avm_readdatavalid(in_memdep_covariance_avm_readdatavalid),
        .in_memdep_covariance_avm_waitrequest(in_memdep_covariance_avm_waitrequest),
        .in_memdep_covariance_avm_writeack(in_memdep_covariance_avm_writeack),
        .out_memdep_covariance_avm_address(i_llvm_fpga_mem_memdep_covariance28_out_memdep_covariance_avm_address),
        .out_memdep_covariance_avm_burstcount(i_llvm_fpga_mem_memdep_covariance28_out_memdep_covariance_avm_burstcount),
        .out_memdep_covariance_avm_byteenable(i_llvm_fpga_mem_memdep_covariance28_out_memdep_covariance_avm_byteenable),
        .out_memdep_covariance_avm_enable(i_llvm_fpga_mem_memdep_covariance28_out_memdep_covariance_avm_enable),
        .out_memdep_covariance_avm_read(i_llvm_fpga_mem_memdep_covariance28_out_memdep_covariance_avm_read),
        .out_memdep_covariance_avm_write(i_llvm_fpga_mem_memdep_covariance28_out_memdep_covariance_avm_write),
        .out_memdep_covariance_avm_writedata(i_llvm_fpga_mem_memdep_covariance28_out_memdep_covariance_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(i_llvm_fpga_mem_memdep_covariance28_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,108)
    assign out_memdep_covariance_avm_address = i_llvm_fpga_mem_memdep_covariance28_out_memdep_covariance_avm_address;
    assign out_memdep_covariance_avm_enable = i_llvm_fpga_mem_memdep_covariance28_out_memdep_covariance_avm_enable;
    assign out_memdep_covariance_avm_read = i_llvm_fpga_mem_memdep_covariance28_out_memdep_covariance_avm_read;
    assign out_memdep_covariance_avm_write = i_llvm_fpga_mem_memdep_covariance28_out_memdep_covariance_avm_write;
    assign out_memdep_covariance_avm_writedata = i_llvm_fpga_mem_memdep_covariance28_out_memdep_covariance_avm_writedata;
    assign out_memdep_covariance_avm_byteenable = i_llvm_fpga_mem_memdep_covariance28_out_memdep_covariance_avm_byteenable;
    assign out_memdep_covariance_avm_burstcount = i_llvm_fpga_mem_memdep_covariance28_out_memdep_covariance_avm_burstcount;

    // redist15_sync_together115_aunroll_x_in_i_valid_5(DELAY,208)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together115_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist15_sync_together115_aunroll_x_in_i_valid_5_q <= $unsigned(redist14_sync_together115_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg0(REG,142)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist15_sync_together115_aunroll_x_in_i_valid_5_q);
        end
    end

    // redist12_sync_together115_aunroll_x_in_c0_eni13264_13_tpl_6(DELAY,205)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist12_sync_together115_aunroll_x_in_c0_eni13264_13_tpl_6 ( .xin(in_c0_eni13264_13_tpl), .xout(redist12_sync_together115_aunroll_x_in_c0_eni13264_13_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist11_sync_together115_aunroll_x_in_c0_eni13264_12_tpl_6(DELAY,204)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist11_sync_together115_aunroll_x_in_c0_eni13264_12_tpl_6 ( .xin(in_c0_eni13264_12_tpl), .xout(redist11_sync_together115_aunroll_x_in_c0_eni13264_12_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist10_sync_together115_aunroll_x_in_c0_eni13264_11_tpl_6(DELAY,203)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist10_sync_together115_aunroll_x_in_c0_eni13264_11_tpl_6 ( .xin(in_c0_eni13264_11_tpl), .xout(redist10_sync_together115_aunroll_x_in_c0_eni13264_11_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_notEnable(LOGICAL,230)
    assign redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_nor(LOGICAL,231)
    assign redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_nor_q = ~ (redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_notEnable_q | redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_sticky_ena_q);

    // redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_mem_last(CONSTANT,227)
    assign redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_mem_last_q = $unsigned(3'b011);

    // redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_cmp(LOGICAL,228)
    assign redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_cmp_q = $unsigned(redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_mem_last_q == redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_rdcnt_q ? 1'b1 : 1'b0);

    // redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_cmpReg(REG,229)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_cmpReg_q <= $unsigned(redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_cmp_q);
        end
    end

    // redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_sticky_ena(REG,232)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_nor_q == 1'b1)
        begin
            redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_sticky_ena_q <= $unsigned(redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_cmpReg_q);
        end
    end

    // redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_enaAnd(LOGICAL,233)
    assign redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_enaAnd_q = redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_sticky_ena_q & VCC_q;

    // redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_rdcnt(COUNTER,225)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_rdcnt_i <= 3'd0;
            redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_rdcnt_i == 3'd3)
            begin
                redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_rdcnt_eq <= 1'b0;
            end
            if (redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_rdcnt_eq == 1'b1)
            begin
                redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_rdcnt_i <= $unsigned(redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_rdcnt_i <= $unsigned(redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_rdcnt_q = redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_rdcnt_i[2:0];

    // redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_wraddr(REG,226)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_wraddr_q <= $unsigned(redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_rdcnt_q);
        end
    end

    // redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_mem(DUALMEM,224)
    assign redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_mem_ia = $unsigned(in_c0_eni13264_10_tpl);
    assign redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_mem_aa = redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_wraddr_q;
    assign redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_mem_ab = redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_rdcnt_q;
    assign redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(5),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(5),
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
    ) redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_mem_dmem (
        .clocken1(redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_mem_aa),
        .data_a(redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_mem_ab),
        .q_b(redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_mem_iq),
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
    assign redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_mem_q = redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_mem_iq[31:0];

    // valid_fanout_reg22(REG,164)@1 + 1
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

    // valid_fanout_reg23(REG,165)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(redist13_sync_together115_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp6597_push54_covariance47(BLACKBOX,79)@3
    // out out_feedback_out_54@20000000
    // out out_feedback_valid_out_54@20000000
    covariance_i_llvm_fpga_push_i1_notcmp6597_push54_0 thei_llvm_fpga_push_i1_notcmp6597_push54_covariance47 (
        .in_data_in(redist22_i_llvm_fpga_pop_i1_notcmp6597_pop54_covariance46_out_data_out_1_q),
        .in_feedback_stall_in_54(i_llvm_fpga_pop_i1_notcmp6597_pop54_covariance46_out_feedback_stall_out_54),
        .in_keep_going37(redist27_i_llvm_fpga_pipeline_keep_going37_covariance6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(),
        .out_feedback_out_54(i_llvm_fpga_push_i1_notcmp6597_push54_covariance47_out_feedback_out_54),
        .out_feedback_valid_out_54(i_llvm_fpga_push_i1_notcmp6597_push54_covariance47_out_feedback_valid_out_54),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_sync_together115_aunroll_x_in_c0_eni13264_9_tpl_1(DELAY,201)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together115_aunroll_x_in_c0_eni13264_9_tpl_1_q <= '0;
        end
        else
        begin
            redist8_sync_together115_aunroll_x_in_c0_eni13264_9_tpl_1_q <= $unsigned(in_c0_eni13264_9_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp6597_pop54_covariance46(BLACKBOX,66)@2
    // out out_feedback_stall_out_54@20000000
    covariance_i_llvm_fpga_pop_i1_notcmp6597_pop54_0 thei_llvm_fpga_pop_i1_notcmp6597_pop54_covariance46 (
        .in_data_in(redist8_sync_together115_aunroll_x_in_c0_eni13264_9_tpl_1_q),
        .in_dir(redist0_sync_together115_aunroll_x_in_c0_eni13264_1_tpl_1_q),
        .in_feedback_in_54(i_llvm_fpga_push_i1_notcmp6597_push54_covariance47_out_feedback_out_54),
        .in_feedback_valid_in_54(i_llvm_fpga_push_i1_notcmp6597_push54_covariance47_out_feedback_valid_out_54),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp6597_pop54_covariance46_out_data_out),
        .out_feedback_stall_out_54(i_llvm_fpga_pop_i1_notcmp6597_pop54_covariance46_out_feedback_stall_out_54),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist22_i_llvm_fpga_pop_i1_notcmp6597_pop54_covariance46_out_data_out_1(DELAY,215)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_pop_i1_notcmp6597_pop54_covariance46_out_data_out_1_q <= '0;
        end
        else
        begin
            redist22_i_llvm_fpga_pop_i1_notcmp6597_pop54_covariance46_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_notcmp6597_pop54_covariance46_out_data_out);
        end
    end

    // redist23_i_llvm_fpga_pop_i1_notcmp6597_pop54_covariance46_out_data_out_5(DELAY,216)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_pop_i1_notcmp6597_pop54_covariance46_out_data_out_5_delay_0 <= '0;
            redist23_i_llvm_fpga_pop_i1_notcmp6597_pop54_covariance46_out_data_out_5_delay_1 <= '0;
            redist23_i_llvm_fpga_pop_i1_notcmp6597_pop54_covariance46_out_data_out_5_delay_2 <= '0;
            redist23_i_llvm_fpga_pop_i1_notcmp6597_pop54_covariance46_out_data_out_5_q <= '0;
        end
        else
        begin
            redist23_i_llvm_fpga_pop_i1_notcmp6597_pop54_covariance46_out_data_out_5_delay_0 <= $unsigned(redist22_i_llvm_fpga_pop_i1_notcmp6597_pop54_covariance46_out_data_out_1_q);
            redist23_i_llvm_fpga_pop_i1_notcmp6597_pop54_covariance46_out_data_out_5_delay_1 <= redist23_i_llvm_fpga_pop_i1_notcmp6597_pop54_covariance46_out_data_out_5_delay_0;
            redist23_i_llvm_fpga_pop_i1_notcmp6597_pop54_covariance46_out_data_out_5_delay_2 <= redist23_i_llvm_fpga_pop_i1_notcmp6597_pop54_covariance46_out_data_out_5_delay_1;
            redist23_i_llvm_fpga_pop_i1_notcmp6597_pop54_covariance46_out_data_out_5_q <= redist23_i_llvm_fpga_pop_i1_notcmp6597_pop54_covariance46_out_data_out_5_delay_2;
        end
    end

    // valid_fanout_reg20(REG,162)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg20_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg21(REG,163)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist13_sync_together115_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i1_exitcond1095_push53_covariance45(BLACKBOX,74)@3
    // out out_feedback_out_53@20000000
    // out out_feedback_valid_out_53@20000000
    covariance_i_llvm_fpga_push_i1_exitcond1095_push53_0 thei_llvm_fpga_push_i1_exitcond1095_push53_covariance45 (
        .in_data_in(redist24_i_llvm_fpga_pop_i1_exitcond1095_pop53_covariance44_out_data_out_1_q),
        .in_feedback_stall_in_53(i_llvm_fpga_pop_i1_exitcond1095_pop53_covariance44_out_feedback_stall_out_53),
        .in_keep_going37(redist27_i_llvm_fpga_pipeline_keep_going37_covariance6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(),
        .out_feedback_out_53(i_llvm_fpga_push_i1_exitcond1095_push53_covariance45_out_feedback_out_53),
        .out_feedback_valid_out_53(i_llvm_fpga_push_i1_exitcond1095_push53_covariance45_out_feedback_valid_out_53),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together115_aunroll_x_in_c0_eni13264_8_tpl_1(DELAY,200)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together115_aunroll_x_in_c0_eni13264_8_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together115_aunroll_x_in_c0_eni13264_8_tpl_1_q <= $unsigned(in_c0_eni13264_8_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_exitcond1095_pop53_covariance44(BLACKBOX,62)@2
    // out out_feedback_stall_out_53@20000000
    covariance_i_llvm_fpga_pop_i1_exitcond1095_pop53_0 thei_llvm_fpga_pop_i1_exitcond1095_pop53_covariance44 (
        .in_data_in(redist7_sync_together115_aunroll_x_in_c0_eni13264_8_tpl_1_q),
        .in_dir(redist0_sync_together115_aunroll_x_in_c0_eni13264_1_tpl_1_q),
        .in_feedback_in_53(i_llvm_fpga_push_i1_exitcond1095_push53_covariance45_out_feedback_out_53),
        .in_feedback_valid_in_53(i_llvm_fpga_push_i1_exitcond1095_push53_covariance45_out_feedback_valid_out_53),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond1095_pop53_covariance44_out_data_out),
        .out_feedback_stall_out_53(i_llvm_fpga_pop_i1_exitcond1095_pop53_covariance44_out_feedback_stall_out_53),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist24_i_llvm_fpga_pop_i1_exitcond1095_pop53_covariance44_out_data_out_1(DELAY,217)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_llvm_fpga_pop_i1_exitcond1095_pop53_covariance44_out_data_out_1_q <= '0;
        end
        else
        begin
            redist24_i_llvm_fpga_pop_i1_exitcond1095_pop53_covariance44_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_exitcond1095_pop53_covariance44_out_data_out);
        end
    end

    // redist25_i_llvm_fpga_pop_i1_exitcond1095_pop53_covariance44_out_data_out_5(DELAY,218)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_pop_i1_exitcond1095_pop53_covariance44_out_data_out_5_delay_0 <= '0;
            redist25_i_llvm_fpga_pop_i1_exitcond1095_pop53_covariance44_out_data_out_5_delay_1 <= '0;
            redist25_i_llvm_fpga_pop_i1_exitcond1095_pop53_covariance44_out_data_out_5_delay_2 <= '0;
            redist25_i_llvm_fpga_pop_i1_exitcond1095_pop53_covariance44_out_data_out_5_q <= '0;
        end
        else
        begin
            redist25_i_llvm_fpga_pop_i1_exitcond1095_pop53_covariance44_out_data_out_5_delay_0 <= $unsigned(redist24_i_llvm_fpga_pop_i1_exitcond1095_pop53_covariance44_out_data_out_1_q);
            redist25_i_llvm_fpga_pop_i1_exitcond1095_pop53_covariance44_out_data_out_5_delay_1 <= redist25_i_llvm_fpga_pop_i1_exitcond1095_pop53_covariance44_out_data_out_5_delay_0;
            redist25_i_llvm_fpga_pop_i1_exitcond1095_pop53_covariance44_out_data_out_5_delay_2 <= redist25_i_llvm_fpga_pop_i1_exitcond1095_pop53_covariance44_out_data_out_5_delay_1;
            redist25_i_llvm_fpga_pop_i1_exitcond1095_pop53_covariance44_out_data_out_5_q <= redist25_i_llvm_fpga_pop_i1_exitcond1095_pop53_covariance44_out_data_out_5_delay_2;
        end
    end

    // redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_notEnable(LOGICAL,241)
    assign redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_nor(LOGICAL,242)
    assign redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_nor_q = ~ (redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_notEnable_q | redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_sticky_ena_q);

    // redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_mem_last(CONSTANT,238)
    assign redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_mem_last_q = $unsigned(2'b01);

    // redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_cmp(LOGICAL,239)
    assign redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_cmp_q = $unsigned(redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_mem_last_q == redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_rdcnt_q ? 1'b1 : 1'b0);

    // redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_cmpReg(REG,240)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_cmpReg_q <= $unsigned(redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_cmp_q);
        end
    end

    // redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_sticky_ena(REG,243)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_nor_q == 1'b1)
        begin
            redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_sticky_ena_q <= $unsigned(redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_cmpReg_q);
        end
    end

    // redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_enaAnd(LOGICAL,244)
    assign redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_enaAnd_q = redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_sticky_ena_q & VCC_q;

    // redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_rdcnt(COUNTER,236)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_rdcnt_i <= 2'd0;
            redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_rdcnt_i == 2'd1)
            begin
                redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_rdcnt_eq <= 1'b0;
            end
            if (redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_rdcnt_eq == 1'b1)
            begin
                redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_rdcnt_i <= $unsigned(redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_rdcnt_i <= $unsigned(redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_rdcnt_q = redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_rdcnt_i[1:0];

    // valid_fanout_reg18(REG,160)@1 + 1
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

    // valid_fanout_reg19(REG,161)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist13_sync_together115_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i32_lim_ext77_push49_covariance43(BLACKBOX,84)@3
    // out out_feedback_out_49@20000000
    // out out_feedback_valid_out_49@20000000
    covariance_i_llvm_fpga_push_i32_lim_ext77_push49_0 thei_llvm_fpga_push_i32_lim_ext77_push49_covariance43 (
        .in_data_in(redist20_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_1_q),
        .in_feedback_stall_in_49(i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_feedback_stall_out_49),
        .in_keep_going37(redist27_i_llvm_fpga_pipeline_keep_going37_covariance6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(),
        .out_feedback_out_49(i_llvm_fpga_push_i32_lim_ext77_push49_covariance43_out_feedback_out_49),
        .out_feedback_valid_out_49(i_llvm_fpga_push_i32_lim_ext77_push49_covariance43_out_feedback_valid_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together115_aunroll_x_in_c0_eni13264_7_tpl_1(DELAY,199)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together115_aunroll_x_in_c0_eni13264_7_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together115_aunroll_x_in_c0_eni13264_7_tpl_1_q <= $unsigned(in_c0_eni13264_7_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42(BLACKBOX,70)@2
    // out out_feedback_stall_out_49@20000000
    covariance_i_llvm_fpga_pop_i32_lim_ext77_pop49_0 thei_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42 (
        .in_data_in(redist6_sync_together115_aunroll_x_in_c0_eni13264_7_tpl_1_q),
        .in_dir(redist0_sync_together115_aunroll_x_in_c0_eni13264_1_tpl_1_q),
        .in_feedback_in_49(i_llvm_fpga_push_i32_lim_ext77_push49_covariance43_out_feedback_out_49),
        .in_feedback_valid_in_49(i_llvm_fpga_push_i32_lim_ext77_push49_covariance43_out_feedback_valid_out_49),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out),
        .out_feedback_stall_out_49(i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_feedback_stall_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist20_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_1(DELAY,213)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_1_q <= '0;
        end
        else
        begin
            redist20_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out);
        end
    end

    // redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_wraddr(REG,237)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_wraddr_q <= $unsigned(redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_rdcnt_q);
        end
    end

    // redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_mem(DUALMEM,235)
    assign redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_mem_ia = $unsigned(redist20_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_1_q);
    assign redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_mem_aa = redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_wraddr_q;
    assign redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_mem_ab = redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_rdcnt_q;
    assign redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(3),
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
    ) redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_mem_dmem (
        .clocken1(redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_mem_reset0),
        .clock1(clock),
        .address_a(redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_mem_aa),
        .data_a(redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_mem_ab),
        .q_b(redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_mem_iq),
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
    assign redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_mem_q = redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_mem_iq[31:0];

    // i_masked46_covariance41(LOGICAL,88)@2 + 1
    assign i_masked46_covariance41_qi = i_notcmp33_covariance34_q & i_first_cleanup42_covariance3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked46_covariance41_delay ( .xin(i_masked46_covariance41_qi), .xout(i_masked46_covariance41_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist17_i_masked46_covariance41_q_5(DELAY,210)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_masked46_covariance41_q_5_delay_0 <= '0;
            redist17_i_masked46_covariance41_q_5_delay_1 <= '0;
            redist17_i_masked46_covariance41_q_5_delay_2 <= '0;
            redist17_i_masked46_covariance41_q_5_q <= '0;
        end
        else
        begin
            redist17_i_masked46_covariance41_q_5_delay_0 <= $unsigned(i_masked46_covariance41_q);
            redist17_i_masked46_covariance41_q_5_delay_1 <= redist17_i_masked46_covariance41_q_5_delay_0;
            redist17_i_masked46_covariance41_q_5_delay_2 <= redist17_i_masked46_covariance41_q_5_delay_1;
            redist17_i_masked46_covariance41_q_5_q <= redist17_i_masked46_covariance41_q_5_delay_2;
        end
    end

    // redist28_i_llvm_fpga_pipeline_keep_going37_covariance6_out_data_out_6(DELAY,221)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_llvm_fpga_pipeline_keep_going37_covariance6_out_data_out_6_delay_0 <= '0;
            redist28_i_llvm_fpga_pipeline_keep_going37_covariance6_out_data_out_6_delay_1 <= '0;
            redist28_i_llvm_fpga_pipeline_keep_going37_covariance6_out_data_out_6_delay_2 <= '0;
            redist28_i_llvm_fpga_pipeline_keep_going37_covariance6_out_data_out_6_q <= '0;
        end
        else
        begin
            redist28_i_llvm_fpga_pipeline_keep_going37_covariance6_out_data_out_6_delay_0 <= $unsigned(redist27_i_llvm_fpga_pipeline_keep_going37_covariance6_out_data_out_2_q);
            redist28_i_llvm_fpga_pipeline_keep_going37_covariance6_out_data_out_6_delay_1 <= redist28_i_llvm_fpga_pipeline_keep_going37_covariance6_out_data_out_6_delay_0;
            redist28_i_llvm_fpga_pipeline_keep_going37_covariance6_out_data_out_6_delay_2 <= redist28_i_llvm_fpga_pipeline_keep_going37_covariance6_out_data_out_6_delay_1;
            redist28_i_llvm_fpga_pipeline_keep_going37_covariance6_out_data_out_6_q <= redist28_i_llvm_fpga_pipeline_keep_going37_covariance6_out_data_out_6_delay_2;
        end
    end

    // sync_out_aunroll_x(GPOUT,140)@7
    assign out_c0_exi10288_0_tpl = GND_q;
    assign out_c0_exi10288_1_tpl = redist28_i_llvm_fpga_pipeline_keep_going37_covariance6_out_data_out_6_q;
    assign out_c0_exi10288_2_tpl = i_llvm_fpga_mem_memdep_covariance28_out_o_writeack;
    assign out_c0_exi10288_3_tpl = redist17_i_masked46_covariance41_q_5_q;
    assign out_c0_exi10288_4_tpl = redist21_i_llvm_fpga_pop_i32_lim_ext77_pop49_covariance42_out_data_out_5_mem_q;
    assign out_c0_exi10288_5_tpl = redist25_i_llvm_fpga_pop_i1_exitcond1095_pop53_covariance44_out_data_out_5_q;
    assign out_c0_exi10288_6_tpl = redist23_i_llvm_fpga_pop_i1_notcmp6597_pop54_covariance46_out_data_out_5_q;
    assign out_c0_exi10288_7_tpl = redist9_sync_together115_aunroll_x_in_c0_eni13264_10_tpl_6_mem_q;
    assign out_c0_exi10288_8_tpl = redist10_sync_together115_aunroll_x_in_c0_eni13264_11_tpl_6_q;
    assign out_c0_exi10288_9_tpl = redist11_sync_together115_aunroll_x_in_c0_eni13264_12_tpl_6_q;
    assign out_c0_exi10288_10_tpl = redist12_sync_together115_aunroll_x_in_c0_eni13264_13_tpl_6_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_covariance0 = GND_q;

endmodule
