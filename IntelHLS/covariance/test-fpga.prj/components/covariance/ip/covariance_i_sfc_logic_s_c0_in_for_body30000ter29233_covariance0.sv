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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body33_covariances_c0_enter29233_covariance0
// Created for function/kernel covariance
// SystemVerilog created on Wed Apr  5 02:12:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_i_sfc_logic_s_c0_in_for_body30000ter29233_covariance0 (
    input wire [31:0] in_unnamed_covariance6_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance6_covariance_avm_writeack,
    input wire [0:0] in_unnamed_covariance6_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance6_covariance_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going89_covariance6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going89_covariance6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    output wire [31:0] out_unnamed_covariance6_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance6_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance6_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance6_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance6_covariance_avm_writedata,
    output wire [3:0] out_unnamed_covariance6_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance6_covariance_avm_burstcount,
    output wire [0:0] out_c0_exi8305_0_tpl,
    output wire [0:0] out_c0_exi8305_1_tpl,
    output wire [63:0] out_c0_exi8305_2_tpl,
    output wire [31:0] out_c0_exi8305_3_tpl,
    output wire [0:0] out_c0_exi8305_4_tpl,
    output wire [31:0] out_c0_exi8305_5_tpl,
    output wire [0:0] out_c0_exi8305_6_tpl,
    output wire [0:0] out_c0_exi8305_7_tpl,
    output wire [31:0] out_c0_exi8305_8_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_covariance0,
    input wire [0:0] in_c0_eni7_0_tpl,
    input wire [0:0] in_c0_eni7_1_tpl,
    input wire [31:0] in_c0_eni7_2_tpl,
    input wire [0:0] in_c0_eni7_3_tpl,
    input wire [31:0] in_c0_eni7_4_tpl,
    input wire [0:0] in_c0_eni7_5_tpl,
    input wire [0:0] in_c0_eni7_6_tpl,
    input wire [31:0] in_c0_eni7_7_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_covariance_data_local_pmem_q;
    wire [1:0] c_i2_168_q;
    wire [31:0] c_i32_070_q;
    wire [31:0] c_i32_171_q;
    wire [5:0] c_i6_174_q;
    wire [5:0] c_i6_3072_q;
    wire [32:0] i_add_covariance22_a;
    wire [32:0] i_add_covariance22_b;
    logic [32:0] i_add_covariance22_o;
    wire [32:0] i_add_covariance22_q;
    wire [1:0] i_arrayidx373_covariance17_vt_const_1_q;
    wire [63:0] i_arrayidx373_covariance17_vt_join_q;
    wire [61:0] i_arrayidx373_covariance17_vt_select_63_b;
    wire [1:0] i_cleanups_shl93_covariance5_vt_join_q;
    wire [0:0] i_cleanups_shl93_covariance5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor95_covariance4_q;
    wire [6:0] i_fpga_indvars_iv_next9_covariance34_a;
    wire [6:0] i_fpga_indvars_iv_next9_covariance34_b;
    logic [6:0] i_fpga_indvars_iv_next9_covariance34_o;
    wire [6:0] i_fpga_indvars_iv_next9_covariance34_q;
    wire [63:0] i_idxprom34_covariance16_vt_join_q;
    wire [31:0] i_idxprom34_covariance16_vt_select_31_b;
    wire [63:0] i_idxprom36_covariance14_vt_join_q;
    wire [31:0] i_idxprom36_covariance14_vt_select_31_b;
    wire [32:0] i_inc39_covariance24_a;
    wire [32:0] i_inc39_covariance24_b;
    logic [32:0] i_inc39_covariance24_o;
    wire [32:0] i_inc39_covariance24_q;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance6_covariance20_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance6_covariance20_out_unnamed_covariance6_covariance_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance6_covariance20_out_unnamed_covariance6_covariance_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_covariance6_covariance20_out_unnamed_covariance6_covariance_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance6_covariance20_out_unnamed_covariance6_covariance_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance6_covariance20_out_unnamed_covariance6_covariance_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance6_covariance20_out_unnamed_covariance6_covariance_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance6_covariance20_out_unnamed_covariance6_covariance_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going89_covariance6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going89_covariance6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going89_covariance6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going89_covariance6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going89_covariance6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going89_covariance6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond16148_pop53_covariance39_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond16148_pop53_covariance39_out_feedback_stall_out_53;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop31153_pop56_covariance18_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop31153_pop56_covariance18_out_feedback_stall_out_56;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp101150_pop54_covariance41_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp101150_pop54_covariance41_out_feedback_stall_out_54;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups92_pop51_covariance2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups92_pop51_covariance2_out_feedback_stall_out_51;
    wire [1:0] i_llvm_fpga_pop_i2_initerations87_pop50_covariance7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations87_pop50_covariance7_out_feedback_stall_out_50;
    wire [31:0] i_llvm_fpga_pop_i32_i29_060_pop48_covariance15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i29_060_pop48_covariance15_out_feedback_stall_out_48;
    wire [31:0] i_llvm_fpga_pop_i32_j24_062_pop30152_pop55_covariance12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j24_062_pop30152_pop55_covariance12_out_feedback_stall_out_55;
    wire [31:0] i_llvm_fpga_pop_i32_lim_ext135_pop52_covariance37_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_lim_ext135_pop52_covariance37_out_feedback_stall_out_52;
    wire [31:0] i_llvm_fpga_pop_i32_m_059_pop49_covariance21_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_m_059_pop49_covariance21_out_feedback_stall_out_49;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv8_pop47_covariance26_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv8_pop47_covariance26_out_feedback_stall_out_47;
    wire [0:0] i_llvm_fpga_push_i1_exitcond16148_push53_covariance40_out_feedback_out_53;
    wire [0:0] i_llvm_fpga_push_i1_exitcond16148_push53_covariance40_out_feedback_valid_out_53;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration91_covariance11_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration91_covariance11_out_feedback_valid_out_15;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop31153_push56_covariance19_out_feedback_out_56;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop31153_push56_covariance19_out_feedback_valid_out_56;
    wire [0:0] i_llvm_fpga_push_i1_notcmp101150_push54_covariance42_out_feedback_out_54;
    wire [0:0] i_llvm_fpga_push_i1_notcmp101150_push54_covariance42_out_feedback_valid_out_54;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond99_covariance30_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond99_covariance30_out_feedback_valid_out_16;
    wire [7:0] i_llvm_fpga_push_i2_cleanups92_push51_covariance33_out_feedback_out_51;
    wire [0:0] i_llvm_fpga_push_i2_cleanups92_push51_covariance33_out_feedback_valid_out_51;
    wire [7:0] i_llvm_fpga_push_i2_initerations87_push50_covariance9_out_feedback_out_50;
    wire [0:0] i_llvm_fpga_push_i2_initerations87_push50_covariance9_out_feedback_valid_out_50;
    wire [31:0] i_llvm_fpga_push_i32_i29_060_push48_covariance25_out_feedback_out_48;
    wire [0:0] i_llvm_fpga_push_i32_i29_060_push48_covariance25_out_feedback_valid_out_48;
    wire [31:0] i_llvm_fpga_push_i32_j24_062_pop30152_push55_covariance13_out_feedback_out_55;
    wire [0:0] i_llvm_fpga_push_i32_j24_062_pop30152_push55_covariance13_out_feedback_valid_out_55;
    wire [31:0] i_llvm_fpga_push_i32_lim_ext135_push52_covariance38_out_feedback_out_52;
    wire [0:0] i_llvm_fpga_push_i32_lim_ext135_push52_covariance38_out_feedback_valid_out_52;
    wire [31:0] i_llvm_fpga_push_i32_m_059_push49_covariance23_out_feedback_out_49;
    wire [0:0] i_llvm_fpga_push_i32_m_059_push49_covariance23_out_feedback_valid_out_49;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv8_push47_covariance35_out_feedback_out_47;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv8_push47_covariance35_out_feedback_valid_out_47;
    wire [0:0] i_masked98_covariance36_qi;
    reg [0:0] i_masked98_covariance36_q;
    wire [0:0] i_next_cleanups97_covariance32_s;
    reg [1:0] i_next_cleanups97_covariance32_q;
    wire [1:0] i_next_initerations88_covariance8_vt_join_q;
    wire [0:0] i_next_initerations88_covariance8_vt_select_0_b;
    wire [0:0] i_notcmp85_covariance29_q;
    wire [0:0] i_or96_covariance31_q;
    wire [31:0] bgTrunc_i_add_covariance22_sel_x_b;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next9_covariance34_sel_x_b;
    wire [31:0] bgTrunc_i_inc39_covariance24_sel_x_b;
    wire [12:0] i_arrayidx373_covariance0_add_x_a;
    wire [12:0] i_arrayidx373_covariance0_add_x_b;
    logic [12:0] i_arrayidx373_covariance0_add_x_o;
    wire [12:0] i_arrayidx373_covariance0_add_x_q;
    wire [63:0] i_arrayidx373_covariance0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx373_covariance0_c_i7_01_x_q;
    wire [4:0] i_arrayidx373_covariance0_narrow_x_b;
    wire [11:0] i_arrayidx373_covariance0_shift_join_x_q;
    wire [12:0] i_arrayidx373_covariance0_dupName_0_add_x_a;
    wire [12:0] i_arrayidx373_covariance0_dupName_0_add_x_b;
    logic [12:0] i_arrayidx373_covariance0_dupName_0_add_x_o;
    wire [12:0] i_arrayidx373_covariance0_dupName_0_add_x_q;
    wire [9:0] i_arrayidx373_covariance0_dupName_0_narrow_x_b;
    wire [11:0] i_arrayidx373_covariance0_dupName_0_shift_join_x_q;
    wire [11:0] i_arrayidx373_covariance0_dupName_0_trunc_sel_x_b;
    wire [11:0] i_arrayidx373_covariance0_dupName_2_trunc_sel_x_b;
    wire [11:0] i_arrayidx373_covariance0_dupName_3_trunc_sel_x_b;
    wire [11:0] i_arrayidx373_covariance0_dupName_5_trunc_sel_x_b;
    wire [0:0] i_first_cleanup94_covariance3_sel_x_b;
    wire [63:0] i_idxprom34_covariance16_sel_x_b;
    wire [63:0] i_idxprom36_covariance14_sel_x_b;
    wire [0:0] i_last_initeration90_covariance10_sel_x_b;
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
    wire [0:0] i_exitcond10_covariance27_cmp_nsign_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid168_i_cleanups_shl93_covariance0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid168_i_cleanups_shl93_covariance0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid169_i_cleanups_shl93_covariance0_shift_x_q;
    wire [0:0] leftShiftStage0_uid171_i_cleanups_shl93_covariance0_shift_x_s;
    reg [1:0] leftShiftStage0_uid171_i_cleanups_shl93_covariance0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid175_i_next_initerations88_covariance0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid177_i_next_initerations88_covariance0_shift_x_q;
    wire [0:0] rightShiftStage0_uid179_i_next_initerations88_covariance0_shift_x_s;
    reg [1:0] rightShiftStage0_uid179_i_next_initerations88_covariance0_shift_x_q;
    wire [51:0] i_arrayidx373_covariance0_upper_bits_x_merged_bit_select_b;
    wire [11:0] i_arrayidx373_covariance0_upper_bits_x_merged_bit_select_c;
    reg [0:0] redist0_sync_together102_aunroll_x_in_c0_eni7_1_tpl_1_q;
    reg [0:0] redist1_sync_together102_aunroll_x_in_c0_eni7_1_tpl_5_q;
    reg [0:0] redist1_sync_together102_aunroll_x_in_c0_eni7_1_tpl_5_delay_0;
    reg [0:0] redist1_sync_together102_aunroll_x_in_c0_eni7_1_tpl_5_delay_1;
    reg [0:0] redist1_sync_together102_aunroll_x_in_c0_eni7_1_tpl_5_delay_2;
    reg [31:0] redist2_sync_together102_aunroll_x_in_c0_eni7_2_tpl_1_q;
    reg [0:0] redist3_sync_together102_aunroll_x_in_c0_eni7_3_tpl_1_q;
    reg [0:0] redist5_sync_together102_aunroll_x_in_c0_eni7_5_tpl_5_q;
    reg [0:0] redist5_sync_together102_aunroll_x_in_c0_eni7_5_tpl_5_delay_0;
    reg [0:0] redist5_sync_together102_aunroll_x_in_c0_eni7_5_tpl_5_delay_1;
    reg [0:0] redist5_sync_together102_aunroll_x_in_c0_eni7_5_tpl_5_delay_2;
    reg [0:0] redist5_sync_together102_aunroll_x_in_c0_eni7_5_tpl_5_delay_3;
    reg [0:0] redist6_sync_together102_aunroll_x_in_c0_eni7_6_tpl_1_q;
    reg [0:0] redist8_sync_together102_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist9_sync_together102_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist9_sync_together102_aunroll_x_in_i_valid_4_delay_0;
    reg [0:0] redist9_sync_together102_aunroll_x_in_i_valid_4_delay_1;
    reg [0:0] redist10_i_masked98_covariance36_q_4_q;
    reg [0:0] redist10_i_masked98_covariance36_q_4_delay_0;
    reg [0:0] redist10_i_masked98_covariance36_q_4_delay_1;
    reg [0:0] redist11_i_llvm_fpga_pop_i1_notcmp101150_pop54_covariance41_out_data_out_4_q;
    reg [0:0] redist11_i_llvm_fpga_pop_i1_notcmp101150_pop54_covariance41_out_data_out_4_delay_0;
    reg [0:0] redist11_i_llvm_fpga_pop_i1_notcmp101150_pop54_covariance41_out_data_out_4_delay_1;
    reg [0:0] redist11_i_llvm_fpga_pop_i1_notcmp101150_pop54_covariance41_out_data_out_4_delay_2;
    reg [0:0] redist12_i_llvm_fpga_pipeline_keep_going89_covariance6_out_data_out_1_q;
    reg [0:0] redist13_i_llvm_fpga_pipeline_keep_going89_covariance6_out_data_out_5_q;
    reg [0:0] redist13_i_llvm_fpga_pipeline_keep_going89_covariance6_out_data_out_5_delay_0;
    reg [0:0] redist13_i_llvm_fpga_pipeline_keep_going89_covariance6_out_data_out_5_delay_1;
    reg [0:0] redist13_i_llvm_fpga_pipeline_keep_going89_covariance6_out_data_out_5_delay_2;
    wire redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_mem_reset0;
    wire [31:0] redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_mem_ia;
    wire [1:0] redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_mem_aa;
    wire [1:0] redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_mem_ab;
    wire [31:0] redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_mem_iq;
    wire [31:0] redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_mem_q;
    wire [1:0] redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_rdcnt_i;
    reg [1:0] redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_wraddr_q;
    wire [2:0] redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_mem_last_q;
    wire [2:0] redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_cmp_b;
    wire [0:0] redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_cmpReg_q;
    wire [0:0] redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_notEnable_q;
    wire [0:0] redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_sticky_ena_q;
    wire [0:0] redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_enaAnd_q;
    wire redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_mem_reset0;
    wire [31:0] redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_mem_ia;
    wire [1:0] redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_mem_aa;
    wire [1:0] redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_mem_ab;
    wire [31:0] redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_mem_iq;
    wire [31:0] redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_mem_q;
    wire [1:0] redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_rdcnt_i;
    reg [1:0] redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_wraddr_q;
    wire [2:0] redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_mem_last_q;
    wire [2:0] redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_cmp_b;
    wire [0:0] redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_cmpReg_q;
    wire [0:0] redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_notEnable_q;
    wire [0:0] redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_sticky_ena_q;
    wire [0:0] redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_enaAnd_q;
    wire redist14_i_idxprom36_covariance14_vt_join_q_4_mem_reset0;
    wire [63:0] redist14_i_idxprom36_covariance14_vt_join_q_4_mem_ia;
    wire [1:0] redist14_i_idxprom36_covariance14_vt_join_q_4_mem_aa;
    wire [1:0] redist14_i_idxprom36_covariance14_vt_join_q_4_mem_ab;
    wire [63:0] redist14_i_idxprom36_covariance14_vt_join_q_4_mem_iq;
    wire [63:0] redist14_i_idxprom36_covariance14_vt_join_q_4_mem_q;
    wire [1:0] redist14_i_idxprom36_covariance14_vt_join_q_4_rdcnt_q;
    (* preserve *) reg [1:0] redist14_i_idxprom36_covariance14_vt_join_q_4_rdcnt_i;
    (* preserve *) reg redist14_i_idxprom36_covariance14_vt_join_q_4_rdcnt_eq;
    reg [1:0] redist14_i_idxprom36_covariance14_vt_join_q_4_wraddr_q;
    wire [1:0] redist14_i_idxprom36_covariance14_vt_join_q_4_mem_last_q;
    wire [0:0] redist14_i_idxprom36_covariance14_vt_join_q_4_cmp_q;
    (* dont_merge *) reg [0:0] redist14_i_idxprom36_covariance14_vt_join_q_4_cmpReg_q;
    wire [0:0] redist14_i_idxprom36_covariance14_vt_join_q_4_notEnable_q;
    wire [0:0] redist14_i_idxprom36_covariance14_vt_join_q_4_nor_q;
    (* dont_merge *) reg [0:0] redist14_i_idxprom36_covariance14_vt_join_q_4_sticky_ena_q;
    wire [0:0] redist14_i_idxprom36_covariance14_vt_join_q_4_enaAnd_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist8_sync_together102_aunroll_x_in_i_valid_1(DELAY,189)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together102_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist8_sync_together102_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist12_i_llvm_fpga_pipeline_keep_going89_covariance6_out_data_out_1(DELAY,193)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_pipeline_keep_going89_covariance6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist12_i_llvm_fpga_pipeline_keep_going89_covariance6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going89_covariance6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid168_i_cleanups_shl93_covariance0_shift_x(BITSELECT,167)@2
    assign leftShiftStage0Idx1Rng1_uid168_i_cleanups_shl93_covariance0_shift_x_in = i_llvm_fpga_pop_i2_cleanups92_pop51_covariance2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid168_i_cleanups_shl93_covariance0_shift_x_b = leftShiftStage0Idx1Rng1_uid168_i_cleanups_shl93_covariance0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid169_i_cleanups_shl93_covariance0_shift_x(BITJOIN,168)@2
    assign leftShiftStage0Idx1_uid169_i_cleanups_shl93_covariance0_shift_x_q = {leftShiftStage0Idx1Rng1_uid168_i_cleanups_shl93_covariance0_shift_x_b, GND_q};

    // leftShiftStage0_uid171_i_cleanups_shl93_covariance0_shift_x(MUX,170)@2
    assign leftShiftStage0_uid171_i_cleanups_shl93_covariance0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid171_i_cleanups_shl93_covariance0_shift_x_s or i_llvm_fpga_pop_i2_cleanups92_pop51_covariance2_out_data_out or leftShiftStage0Idx1_uid169_i_cleanups_shl93_covariance0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid171_i_cleanups_shl93_covariance0_shift_x_s)
            1'b0 : leftShiftStage0_uid171_i_cleanups_shl93_covariance0_shift_x_q = i_llvm_fpga_pop_i2_cleanups92_pop51_covariance2_out_data_out;
            1'b1 : leftShiftStage0_uid171_i_cleanups_shl93_covariance0_shift_x_q = leftShiftStage0Idx1_uid169_i_cleanups_shl93_covariance0_shift_x_q;
            default : leftShiftStage0_uid171_i_cleanups_shl93_covariance0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl93_covariance5_vt_select_1(BITSELECT,44)@2
    assign i_cleanups_shl93_covariance5_vt_select_1_b = leftShiftStage0_uid171_i_cleanups_shl93_covariance0_shift_x_q[1:1];

    // i_cleanups_shl93_covariance5_vt_join(BITJOIN,43)@2
    assign i_cleanups_shl93_covariance5_vt_join_q = {i_cleanups_shl93_covariance5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor95_covariance4(LOGICAL,47)@2
    assign i_first_cleanup_xor95_covariance4_q = i_first_cleanup94_covariance3_sel_x_b ^ VCC_q;

    // i_notcmp85_covariance29(LOGICAL,88)@2
    assign i_notcmp85_covariance29_q = i_exitcond10_covariance27_cmp_nsign_q ^ VCC_q;

    // i_or96_covariance31(LOGICAL,89)@2
    assign i_or96_covariance31_q = i_notcmp85_covariance29_q | i_first_cleanup_xor95_covariance4_q;

    // i_next_cleanups97_covariance32(MUX,84)@2
    assign i_next_cleanups97_covariance32_s = i_or96_covariance31_q;
    always @(i_next_cleanups97_covariance32_s or i_llvm_fpga_pop_i2_cleanups92_pop51_covariance2_out_data_out or i_cleanups_shl93_covariance5_vt_join_q)
    begin
        unique case (i_next_cleanups97_covariance32_s)
            1'b0 : i_next_cleanups97_covariance32_q = i_llvm_fpga_pop_i2_cleanups92_pop51_covariance2_out_data_out;
            1'b1 : i_next_cleanups97_covariance32_q = i_cleanups_shl93_covariance5_vt_join_q;
            default : i_next_cleanups97_covariance32_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups92_push51_covariance33(BLACKBOX,76)@2
    // out out_feedback_out_51@20000000
    // out out_feedback_valid_out_51@20000000
    covariance_i_llvm_fpga_push_i2_cleanups92_push51_0 thei_llvm_fpga_push_i2_cleanups92_push51_covariance33 (
        .in_data_in(i_next_cleanups97_covariance32_q),
        .in_feedback_stall_in_51(i_llvm_fpga_pop_i2_cleanups92_pop51_covariance2_out_feedback_stall_out_51),
        .in_keep_going89(redist12_i_llvm_fpga_pipeline_keep_going89_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist8_sync_together102_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_51(i_llvm_fpga_push_i2_cleanups92_push51_covariance33_out_feedback_out_51),
        .out_feedback_valid_out_51(i_llvm_fpga_push_i2_cleanups92_push51_covariance33_out_feedback_valid_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together102_aunroll_x_in_c0_eni7_1_tpl_1(DELAY,181)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together102_aunroll_x_in_c0_eni7_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together102_aunroll_x_in_c0_eni7_1_tpl_1_q <= $unsigned(in_c0_eni7_1_tpl);
        end
    end

    // c_i2_168(CONSTANT,31)
    assign c_i2_168_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups92_pop51_covariance2(BLACKBOX,64)@2
    // out out_feedback_stall_out_51@20000000
    covariance_i_llvm_fpga_pop_i2_cleanups92_pop51_0 thei_llvm_fpga_pop_i2_cleanups92_pop51_covariance2 (
        .in_data_in(c_i2_168_q),
        .in_dir(redist0_sync_together102_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_51(i_llvm_fpga_push_i2_cleanups92_push51_covariance33_out_feedback_out_51),
        .in_feedback_valid_in_51(i_llvm_fpga_push_i2_cleanups92_push51_covariance33_out_feedback_valid_out_51),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist8_sync_together102_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups92_pop51_covariance2_out_data_out),
        .out_feedback_stall_out_51(i_llvm_fpga_pop_i2_cleanups92_pop51_covariance2_out_feedback_stall_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup94_covariance3_sel_x(BITSELECT,124)@2
    assign i_first_cleanup94_covariance3_sel_x_b = i_llvm_fpga_pop_i2_cleanups92_pop51_covariance2_out_data_out[0:0];

    // c_i6_174(CONSTANT,34)
    assign c_i6_174_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next9_covariance34(ADD,48)@2
    assign i_fpga_indvars_iv_next9_covariance34_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv8_pop47_covariance26_out_data_out};
    assign i_fpga_indvars_iv_next9_covariance34_b = {1'b0, c_i6_174_q};
    assign i_fpga_indvars_iv_next9_covariance34_o = $unsigned(i_fpga_indvars_iv_next9_covariance34_a) + $unsigned(i_fpga_indvars_iv_next9_covariance34_b);
    assign i_fpga_indvars_iv_next9_covariance34_q = i_fpga_indvars_iv_next9_covariance34_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next9_covariance34_sel_x(BITSELECT,96)@2
    assign bgTrunc_i_fpga_indvars_iv_next9_covariance34_sel_x_b = i_fpga_indvars_iv_next9_covariance34_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv8_push47_covariance35(BLACKBOX,82)@2
    // out out_feedback_out_47@20000000
    // out out_feedback_valid_out_47@20000000
    covariance_i_llvm_fpga_push_i6_fpga_indvars_iv8_push47_0 thei_llvm_fpga_push_i6_fpga_indvars_iv8_push47_covariance35 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next9_covariance34_sel_x_b),
        .in_feedback_stall_in_47(i_llvm_fpga_pop_i6_fpga_indvars_iv8_pop47_covariance26_out_feedback_stall_out_47),
        .in_keep_going89(redist12_i_llvm_fpga_pipeline_keep_going89_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist8_sync_together102_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_47(i_llvm_fpga_push_i6_fpga_indvars_iv8_push47_covariance35_out_feedback_out_47),
        .out_feedback_valid_out_47(i_llvm_fpga_push_i6_fpga_indvars_iv8_push47_covariance35_out_feedback_valid_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_3072(CONSTANT,35)
    assign c_i6_3072_q = $unsigned(6'b011110);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv8_pop47_covariance26(BLACKBOX,70)@2
    // out out_feedback_stall_out_47@20000000
    covariance_i_llvm_fpga_pop_i6_fpga_indvars_iv8_pop47_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv8_pop47_covariance26 (
        .in_data_in(c_i6_3072_q),
        .in_dir(redist0_sync_together102_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_47(i_llvm_fpga_push_i6_fpga_indvars_iv8_push47_covariance35_out_feedback_out_47),
        .in_feedback_valid_in_47(i_llvm_fpga_push_i6_fpga_indvars_iv8_push47_covariance35_out_feedback_valid_out_47),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist8_sync_together102_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv8_pop47_covariance26_out_data_out),
        .out_feedback_stall_out_47(i_llvm_fpga_pop_i6_fpga_indvars_iv8_pop47_covariance26_out_feedback_stall_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond10_covariance27_cmp_nsign(LOGICAL,163)@2
    assign i_exitcond10_covariance27_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv8_pop47_covariance26_out_data_out[5:5]));

    // i_llvm_fpga_push_i1_notexitcond99_covariance30(BLACKBOX,75)@2
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    covariance_i_llvm_fpga_push_i1_notexitcond99_0 thei_llvm_fpga_push_i1_notexitcond99_covariance30 (
        .in_data_in(i_exitcond10_covariance27_cmp_nsign_q),
        .in_feedback_stall_in_16(i_llvm_fpga_pipeline_keep_going89_covariance6_out_not_exitcond_stall_out),
        .in_first_cleanup94(i_first_cleanup94_covariance3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist8_sync_together102_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i1_notexitcond99_covariance30_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i1_notexitcond99_covariance30_out_feedback_valid_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,137)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid175_i_next_initerations88_covariance0_shift_x(BITSELECT,174)@2
    assign rightShiftStage0Idx1Rng1_uid175_i_next_initerations88_covariance0_shift_x_b = i_llvm_fpga_pop_i2_initerations87_pop50_covariance7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid177_i_next_initerations88_covariance0_shift_x(BITJOIN,176)@2
    assign rightShiftStage0Idx1_uid177_i_next_initerations88_covariance0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid175_i_next_initerations88_covariance0_shift_x_b};

    // valid_fanout_reg1(REG,135)@1 + 1
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

    // valid_fanout_reg2(REG,136)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations87_push50_covariance9(BLACKBOX,77)@2
    // out out_feedback_out_50@20000000
    // out out_feedback_valid_out_50@20000000
    covariance_i_llvm_fpga_push_i2_initerations87_push50_0 thei_llvm_fpga_push_i2_initerations87_push50_covariance9 (
        .in_data_in(i_next_initerations88_covariance8_vt_join_q),
        .in_feedback_stall_in_50(i_llvm_fpga_pop_i2_initerations87_pop50_covariance7_out_feedback_stall_out_50),
        .in_keep_going89(redist12_i_llvm_fpga_pipeline_keep_going89_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_50(i_llvm_fpga_push_i2_initerations87_push50_covariance9_out_feedback_out_50),
        .out_feedback_valid_out_50(i_llvm_fpga_push_i2_initerations87_push50_covariance9_out_feedback_valid_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations87_pop50_covariance7(BLACKBOX,65)@2
    // out out_feedback_stall_out_50@20000000
    covariance_i_llvm_fpga_pop_i2_initerations87_pop50_0 thei_llvm_fpga_pop_i2_initerations87_pop50_covariance7 (
        .in_data_in(c_i2_168_q),
        .in_dir(redist0_sync_together102_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_50(i_llvm_fpga_push_i2_initerations87_push50_covariance9_out_feedback_out_50),
        .in_feedback_valid_in_50(i_llvm_fpga_push_i2_initerations87_push50_covariance9_out_feedback_valid_out_50),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations87_pop50_covariance7_out_data_out),
        .out_feedback_stall_out_50(i_llvm_fpga_pop_i2_initerations87_pop50_covariance7_out_feedback_stall_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid179_i_next_initerations88_covariance0_shift_x(MUX,178)@2
    assign rightShiftStage0_uid179_i_next_initerations88_covariance0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid179_i_next_initerations88_covariance0_shift_x_s or i_llvm_fpga_pop_i2_initerations87_pop50_covariance7_out_data_out or rightShiftStage0Idx1_uid177_i_next_initerations88_covariance0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid179_i_next_initerations88_covariance0_shift_x_s)
            1'b0 : rightShiftStage0_uid179_i_next_initerations88_covariance0_shift_x_q = i_llvm_fpga_pop_i2_initerations87_pop50_covariance7_out_data_out;
            1'b1 : rightShiftStage0_uid179_i_next_initerations88_covariance0_shift_x_q = rightShiftStage0Idx1_uid177_i_next_initerations88_covariance0_shift_x_q;
            default : rightShiftStage0_uid179_i_next_initerations88_covariance0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations88_covariance8_vt_select_0(BITSELECT,87)@2
    assign i_next_initerations88_covariance8_vt_select_0_b = rightShiftStage0_uid179_i_next_initerations88_covariance0_shift_x_q[0:0];

    // i_next_initerations88_covariance8_vt_join(BITJOIN,86)@2
    assign i_next_initerations88_covariance8_vt_join_q = {GND_q, i_next_initerations88_covariance8_vt_select_0_b};

    // i_last_initeration90_covariance10_sel_x(BITSELECT,127)@2
    assign i_last_initeration90_covariance10_sel_x_b = i_next_initerations88_covariance8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration91_covariance11(BLACKBOX,72)@2
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    covariance_i_llvm_fpga_push_i1_lastiniteration91_0 thei_llvm_fpga_push_i1_lastiniteration91_covariance11 (
        .in_data_in(i_last_initeration90_covariance10_sel_x_b),
        .in_feedback_stall_in_15(i_llvm_fpga_pipeline_keep_going89_covariance6_out_initeration_stall_out),
        .in_keep_going89(redist12_i_llvm_fpga_pipeline_keep_going89_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i1_lastiniteration91_covariance11_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i1_lastiniteration91_covariance11_out_feedback_valid_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going89_covariance6(BLACKBOX,60)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    covariance_i_llvm_fpga_pipeline_keep_going89_0 thei_llvm_fpga_pipeline_keep_going89_covariance6 (
        .in_data_in(in_c0_eni7_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration91_covariance11_out_feedback_out_15),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration91_covariance11_out_feedback_valid_out_15),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond99_covariance30_out_feedback_out_16),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond99_covariance30_out_feedback_valid_out_16),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going89_covariance6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going89_covariance6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going89_covariance6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going89_covariance6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going89_covariance6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going89_covariance6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,37)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going89_covariance6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going89_covariance6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going89_covariance6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going89_covariance6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,92)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going89_covariance6_out_pipeline_valid_out;

    // valid_fanout_reg9(REG,143)@1 + 1
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

    // valid_fanout_reg7(REG,141)@1 + 1
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

    // valid_fanout_reg8(REG,142)@1 + 1
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

    // i_llvm_fpga_push_i1_memdep_phi_pop31153_push56_covariance19(BLACKBOX,73)@2
    // out out_feedback_out_56@20000000
    // out out_feedback_valid_out_56@20000000
    covariance_i_llvm_fpga_push_i1_memdep_phi_pop31153_push56_0 thei_llvm_fpga_push_i1_memdep_phi_pop31153_push56_covariance19 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi_pop31153_pop56_covariance18_out_data_out),
        .in_feedback_stall_in_56(i_llvm_fpga_pop_i1_memdep_phi_pop31153_pop56_covariance18_out_feedback_stall_out_56),
        .in_keep_going89(redist12_i_llvm_fpga_pipeline_keep_going89_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_56(i_llvm_fpga_push_i1_memdep_phi_pop31153_push56_covariance19_out_feedback_out_56),
        .out_feedback_valid_out_56(i_llvm_fpga_push_i1_memdep_phi_pop31153_push56_covariance19_out_feedback_valid_out_56),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together102_aunroll_x_in_c0_eni7_3_tpl_1(DELAY,184)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together102_aunroll_x_in_c0_eni7_3_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together102_aunroll_x_in_c0_eni7_3_tpl_1_q <= $unsigned(in_c0_eni7_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop31153_pop56_covariance18(BLACKBOX,62)@2
    // out out_feedback_stall_out_56@20000000
    covariance_i_llvm_fpga_pop_i1_memdep_phi_pop31153_pop56_0 thei_llvm_fpga_pop_i1_memdep_phi_pop31153_pop56_covariance18 (
        .in_data_in(redist3_sync_together102_aunroll_x_in_c0_eni7_3_tpl_1_q),
        .in_dir(redist0_sync_together102_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_56(i_llvm_fpga_push_i1_memdep_phi_pop31153_push56_covariance19_out_feedback_out_56),
        .in_feedback_valid_in_56(i_llvm_fpga_push_i1_memdep_phi_pop31153_push56_covariance19_out_feedback_valid_out_56),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop31153_pop56_covariance18_out_data_out),
        .out_feedback_stall_out_56(i_llvm_fpga_pop_i1_memdep_phi_pop31153_pop56_covariance18_out_feedback_stall_out_56),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_covariance_data_local_pmem(CONSTANT,5)
    assign c_covariance_data_local_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx373_covariance0_upper_bits_x_merged_bit_select(BITSELECT,180)@2
    assign i_arrayidx373_covariance0_upper_bits_x_merged_bit_select_b = c_covariance_data_local_pmem_q[63:12];
    assign i_arrayidx373_covariance0_upper_bits_x_merged_bit_select_c = c_covariance_data_local_pmem_q[11:0];

    // c_i32_070(CONSTANT,32)
    assign c_i32_070_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg4(REG,138)@1 + 1
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

    // valid_fanout_reg5(REG,139)@1 + 1
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

    // i_llvm_fpga_push_i32_j24_062_pop30152_push55_covariance13(BLACKBOX,79)@2
    // out out_feedback_out_55@20000000
    // out out_feedback_valid_out_55@20000000
    covariance_i_llvm_fpga_push_i32_j24_062_pop30152_push55_0 thei_llvm_fpga_push_i32_j24_062_pop30152_push55_covariance13 (
        .in_data_in(i_llvm_fpga_pop_i32_j24_062_pop30152_pop55_covariance12_out_data_out),
        .in_feedback_stall_in_55(i_llvm_fpga_pop_i32_j24_062_pop30152_pop55_covariance12_out_feedback_stall_out_55),
        .in_keep_going89(redist12_i_llvm_fpga_pipeline_keep_going89_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_55(i_llvm_fpga_push_i32_j24_062_pop30152_push55_covariance13_out_feedback_out_55),
        .out_feedback_valid_out_55(i_llvm_fpga_push_i32_j24_062_pop30152_push55_covariance13_out_feedback_valid_out_55),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together102_aunroll_x_in_c0_eni7_2_tpl_1(DELAY,183)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together102_aunroll_x_in_c0_eni7_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together102_aunroll_x_in_c0_eni7_2_tpl_1_q <= $unsigned(in_c0_eni7_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_j24_062_pop30152_pop55_covariance12(BLACKBOX,67)@2
    // out out_feedback_stall_out_55@20000000
    covariance_i_llvm_fpga_pop_i32_j24_062_pop30152_pop55_0 thei_llvm_fpga_pop_i32_j24_062_pop30152_pop55_covariance12 (
        .in_data_in(redist2_sync_together102_aunroll_x_in_c0_eni7_2_tpl_1_q),
        .in_dir(redist0_sync_together102_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_55(i_llvm_fpga_push_i32_j24_062_pop30152_push55_covariance13_out_feedback_out_55),
        .in_feedback_valid_in_55(i_llvm_fpga_push_i32_j24_062_pop30152_push55_covariance13_out_feedback_valid_out_55),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_j24_062_pop30152_pop55_covariance12_out_data_out),
        .out_feedback_stall_out_55(i_llvm_fpga_pop_i32_j24_062_pop30152_pop55_covariance12_out_feedback_stall_out_55),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom36_covariance14_sel_x(BITSELECT,126)@2
    assign i_idxprom36_covariance14_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j24_062_pop30152_pop55_covariance12_out_data_out[31:0]};

    // i_idxprom36_covariance14_vt_select_31(BITSELECT,56)@2
    assign i_idxprom36_covariance14_vt_select_31_b = i_idxprom36_covariance14_sel_x_b[31:0];

    // i_idxprom36_covariance14_vt_join(BITJOIN,55)@2
    assign i_idxprom36_covariance14_vt_join_q = {c_i32_070_q, i_idxprom36_covariance14_vt_select_31_b};

    // i_arrayidx373_covariance0_dupName_3_trunc_sel_x(BITSELECT,118)@2
    assign i_arrayidx373_covariance0_dupName_3_trunc_sel_x_b = i_idxprom36_covariance14_vt_join_q[11:0];

    // i_arrayidx373_covariance0_dupName_0_narrow_x(BITSELECT,109)@2
    assign i_arrayidx373_covariance0_dupName_0_narrow_x_b = i_arrayidx373_covariance0_dupName_3_trunc_sel_x_b[9:0];

    // i_arrayidx373_covariance0_dupName_0_shift_join_x(BITJOIN,110)@2
    assign i_arrayidx373_covariance0_dupName_0_shift_join_x_q = {i_arrayidx373_covariance0_dupName_0_narrow_x_b, i_arrayidx373_covariance17_vt_const_1_q};

    // valid_fanout_reg6(REG,140)@1 + 1
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

    // valid_fanout_reg12(REG,146)@1 + 1
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

    // c_i32_171(CONSTANT,33)
    assign c_i32_171_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc39_covariance24(ADD,57)@2
    assign i_inc39_covariance24_a = {1'b0, i_llvm_fpga_pop_i32_i29_060_pop48_covariance15_out_data_out};
    assign i_inc39_covariance24_b = {1'b0, c_i32_171_q};
    assign i_inc39_covariance24_o = $unsigned(i_inc39_covariance24_a) + $unsigned(i_inc39_covariance24_b);
    assign i_inc39_covariance24_q = i_inc39_covariance24_o[32:0];

    // bgTrunc_i_inc39_covariance24_sel_x(BITSELECT,97)@2
    assign bgTrunc_i_inc39_covariance24_sel_x_b = i_inc39_covariance24_q[31:0];

    // i_llvm_fpga_push_i32_i29_060_push48_covariance25(BLACKBOX,78)@2
    // out out_feedback_out_48@20000000
    // out out_feedback_valid_out_48@20000000
    covariance_i_llvm_fpga_push_i32_i29_060_push48_0 thei_llvm_fpga_push_i32_i29_060_push48_covariance25 (
        .in_data_in(bgTrunc_i_inc39_covariance24_sel_x_b),
        .in_feedback_stall_in_48(i_llvm_fpga_pop_i32_i29_060_pop48_covariance15_out_feedback_stall_out_48),
        .in_keep_going89(redist12_i_llvm_fpga_pipeline_keep_going89_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_48(i_llvm_fpga_push_i32_i29_060_push48_covariance25_out_feedback_out_48),
        .out_feedback_valid_out_48(i_llvm_fpga_push_i32_i29_060_push48_covariance25_out_feedback_valid_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i29_060_pop48_covariance15(BLACKBOX,66)@2
    // out out_feedback_stall_out_48@20000000
    covariance_i_llvm_fpga_pop_i32_i29_060_pop48_0 thei_llvm_fpga_pop_i32_i29_060_pop48_covariance15 (
        .in_data_in(c_i32_070_q),
        .in_dir(redist0_sync_together102_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_48(i_llvm_fpga_push_i32_i29_060_push48_covariance25_out_feedback_out_48),
        .in_feedback_valid_in_48(i_llvm_fpga_push_i32_i29_060_push48_covariance25_out_feedback_valid_out_48),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_i29_060_pop48_covariance15_out_data_out),
        .out_feedback_stall_out_48(i_llvm_fpga_pop_i32_i29_060_pop48_covariance15_out_feedback_stall_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom34_covariance16_sel_x(BITSELECT,125)@2
    assign i_idxprom34_covariance16_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i29_060_pop48_covariance15_out_data_out[31:0]};

    // i_idxprom34_covariance16_vt_select_31(BITSELECT,52)@2
    assign i_idxprom34_covariance16_vt_select_31_b = i_idxprom34_covariance16_sel_x_b[31:0];

    // i_idxprom34_covariance16_vt_join(BITJOIN,51)@2
    assign i_idxprom34_covariance16_vt_join_q = {c_i32_070_q, i_idxprom34_covariance16_vt_select_31_b};

    // i_arrayidx373_covariance0_dupName_0_trunc_sel_x(BITSELECT,116)@2
    assign i_arrayidx373_covariance0_dupName_0_trunc_sel_x_b = i_idxprom34_covariance16_vt_join_q[11:0];

    // i_arrayidx373_covariance0_narrow_x(BITSELECT,104)@2
    assign i_arrayidx373_covariance0_narrow_x_b = i_arrayidx373_covariance0_dupName_0_trunc_sel_x_b[4:0];

    // i_arrayidx373_covariance0_c_i7_01_x(CONSTANT,103)
    assign i_arrayidx373_covariance0_c_i7_01_x_q = $unsigned(7'b0000000);

    // i_arrayidx373_covariance0_shift_join_x(BITJOIN,105)@2
    assign i_arrayidx373_covariance0_shift_join_x_q = {i_arrayidx373_covariance0_narrow_x_b, i_arrayidx373_covariance0_c_i7_01_x_q};

    // i_arrayidx373_covariance0_add_x(ADD,100)@2
    assign i_arrayidx373_covariance0_add_x_a = {1'b0, i_arrayidx373_covariance0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx373_covariance0_add_x_b = {1'b0, i_arrayidx373_covariance0_shift_join_x_q};
    assign i_arrayidx373_covariance0_add_x_o = $unsigned(i_arrayidx373_covariance0_add_x_a) + $unsigned(i_arrayidx373_covariance0_add_x_b);
    assign i_arrayidx373_covariance0_add_x_q = i_arrayidx373_covariance0_add_x_o[12:0];

    // i_arrayidx373_covariance0_dupName_2_trunc_sel_x(BITSELECT,117)@2
    assign i_arrayidx373_covariance0_dupName_2_trunc_sel_x_b = i_arrayidx373_covariance0_add_x_q[11:0];

    // i_arrayidx373_covariance0_dupName_0_add_x(ADD,108)@2
    assign i_arrayidx373_covariance0_dupName_0_add_x_a = {1'b0, i_arrayidx373_covariance0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx373_covariance0_dupName_0_add_x_b = {1'b0, i_arrayidx373_covariance0_dupName_0_shift_join_x_q};
    assign i_arrayidx373_covariance0_dupName_0_add_x_o = $unsigned(i_arrayidx373_covariance0_dupName_0_add_x_a) + $unsigned(i_arrayidx373_covariance0_dupName_0_add_x_b);
    assign i_arrayidx373_covariance0_dupName_0_add_x_q = i_arrayidx373_covariance0_dupName_0_add_x_o[12:0];

    // i_arrayidx373_covariance0_dupName_5_trunc_sel_x(BITSELECT,119)@2
    assign i_arrayidx373_covariance0_dupName_5_trunc_sel_x_b = i_arrayidx373_covariance0_dupName_0_add_x_q[11:0];

    // i_arrayidx373_covariance0_append_upper_bits_x(BITJOIN,101)@2
    assign i_arrayidx373_covariance0_append_upper_bits_x_q = {i_arrayidx373_covariance0_upper_bits_x_merged_bit_select_b, i_arrayidx373_covariance0_dupName_5_trunc_sel_x_b};

    // i_arrayidx373_covariance17_vt_select_63(BITSELECT,41)@2
    assign i_arrayidx373_covariance17_vt_select_63_b = i_arrayidx373_covariance0_append_upper_bits_x_q[63:2];

    // i_arrayidx373_covariance17_vt_const_1(CONSTANT,39)
    assign i_arrayidx373_covariance17_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx373_covariance17_vt_join(BITJOIN,40)@2
    assign i_arrayidx373_covariance17_vt_join_q = {i_arrayidx373_covariance17_vt_select_63_b, i_arrayidx373_covariance17_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_covariance6_covariance20(BLACKBOX,59)@2
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
    covariance_i_llvm_fpga_mem_unnamed_6_covariance0 thei_llvm_fpga_mem_unnamed_covariance6_covariance20 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx373_covariance17_vt_join_q),
        .in_i_dependence(i_llvm_fpga_pop_i1_memdep_phi_pop31153_pop56_covariance18_out_data_out),
        .in_i_predicate(i_first_cleanup_xor95_covariance4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg9_q),
        .in_unnamed_covariance6_covariance_avm_readdata(in_unnamed_covariance6_covariance_avm_readdata),
        .in_unnamed_covariance6_covariance_avm_readdatavalid(in_unnamed_covariance6_covariance_avm_readdatavalid),
        .in_unnamed_covariance6_covariance_avm_waitrequest(in_unnamed_covariance6_covariance_avm_waitrequest),
        .in_unnamed_covariance6_covariance_avm_writeack(in_unnamed_covariance6_covariance_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_covariance6_covariance20_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_covariance6_covariance_avm_address(i_llvm_fpga_mem_unnamed_covariance6_covariance20_out_unnamed_covariance6_covariance_avm_address),
        .out_unnamed_covariance6_covariance_avm_burstcount(i_llvm_fpga_mem_unnamed_covariance6_covariance20_out_unnamed_covariance6_covariance_avm_burstcount),
        .out_unnamed_covariance6_covariance_avm_byteenable(i_llvm_fpga_mem_unnamed_covariance6_covariance20_out_unnamed_covariance6_covariance_avm_byteenable),
        .out_unnamed_covariance6_covariance_avm_enable(i_llvm_fpga_mem_unnamed_covariance6_covariance20_out_unnamed_covariance6_covariance_avm_enable),
        .out_unnamed_covariance6_covariance_avm_read(i_llvm_fpga_mem_unnamed_covariance6_covariance20_out_unnamed_covariance6_covariance_avm_read),
        .out_unnamed_covariance6_covariance_avm_write(i_llvm_fpga_mem_unnamed_covariance6_covariance20_out_unnamed_covariance6_covariance_avm_write),
        .out_unnamed_covariance6_covariance_avm_writedata(i_llvm_fpga_mem_unnamed_covariance6_covariance20_out_unnamed_covariance6_covariance_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,99)
    assign out_unnamed_covariance6_covariance_avm_address = i_llvm_fpga_mem_unnamed_covariance6_covariance20_out_unnamed_covariance6_covariance_avm_address;
    assign out_unnamed_covariance6_covariance_avm_enable = i_llvm_fpga_mem_unnamed_covariance6_covariance20_out_unnamed_covariance6_covariance_avm_enable;
    assign out_unnamed_covariance6_covariance_avm_read = i_llvm_fpga_mem_unnamed_covariance6_covariance20_out_unnamed_covariance6_covariance_avm_read;
    assign out_unnamed_covariance6_covariance_avm_write = i_llvm_fpga_mem_unnamed_covariance6_covariance20_out_unnamed_covariance6_covariance_avm_write;
    assign out_unnamed_covariance6_covariance_avm_writedata = i_llvm_fpga_mem_unnamed_covariance6_covariance20_out_unnamed_covariance6_covariance_avm_writedata;
    assign out_unnamed_covariance6_covariance_avm_byteenable = i_llvm_fpga_mem_unnamed_covariance6_covariance20_out_unnamed_covariance6_covariance_avm_byteenable;
    assign out_unnamed_covariance6_covariance_avm_burstcount = i_llvm_fpga_mem_unnamed_covariance6_covariance20_out_unnamed_covariance6_covariance_avm_burstcount;

    // redist9_sync_together102_aunroll_x_in_i_valid_4(DELAY,190)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together102_aunroll_x_in_i_valid_4_delay_0 <= '0;
            redist9_sync_together102_aunroll_x_in_i_valid_4_delay_1 <= '0;
            redist9_sync_together102_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist9_sync_together102_aunroll_x_in_i_valid_4_delay_0 <= $unsigned(redist8_sync_together102_aunroll_x_in_i_valid_1_q);
            redist9_sync_together102_aunroll_x_in_i_valid_4_delay_1 <= redist9_sync_together102_aunroll_x_in_i_valid_4_delay_0;
            redist9_sync_together102_aunroll_x_in_i_valid_4_q <= redist9_sync_together102_aunroll_x_in_i_valid_4_delay_1;
        end
    end

    // valid_fanout_reg0(REG,134)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist9_sync_together102_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_notEnable(LOGICAL,212)
    assign redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_nor(LOGICAL,213)
    assign redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_nor_q = ~ (redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_notEnable_q | redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_sticky_ena_q);

    // redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_mem_last(CONSTANT,209)
    assign redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_cmp(LOGICAL,210)
    assign redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_cmp_b = {1'b0, redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_rdcnt_q};
    assign redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_cmp_q = $unsigned(redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_mem_last_q == redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_cmpReg(REG,211)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_cmpReg_q <= $unsigned(redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_cmp_q);
        end
    end

    // redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_sticky_ena(REG,214)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_nor_q == 1'b1)
        begin
            redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_sticky_ena_q <= $unsigned(redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_cmpReg_q);
        end
    end

    // redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_enaAnd(LOGICAL,215)
    assign redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_enaAnd_q = redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_sticky_ena_q & VCC_q;

    // redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_rdcnt(COUNTER,207)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_rdcnt_i <= $unsigned(redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_rdcnt_q = redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_rdcnt_i[1:0];

    // redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_wraddr(REG,208)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_wraddr_q <= $unsigned(redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_rdcnt_q);
        end
    end

    // redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_mem(DUALMEM,206)
    assign redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_mem_ia = $unsigned(in_c0_eni7_7_tpl);
    assign redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_mem_aa = redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_wraddr_q;
    assign redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_mem_ab = redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_rdcnt_q;
    assign redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(4),
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
    ) redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_mem_dmem (
        .clocken1(redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_mem_aa),
        .data_a(redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_mem_ab),
        .q_b(redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_mem_iq),
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
    assign redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_mem_q = redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_mem_iq[31:0];

    // valid_fanout_reg17(REG,151)@1 + 1
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

    // valid_fanout_reg18(REG,152)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp101150_push54_covariance42(BLACKBOX,74)@2
    // out out_feedback_out_54@20000000
    // out out_feedback_valid_out_54@20000000
    covariance_i_llvm_fpga_push_i1_notcmp101150_push54_0 thei_llvm_fpga_push_i1_notcmp101150_push54_covariance42 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp101150_pop54_covariance41_out_data_out),
        .in_feedback_stall_in_54(i_llvm_fpga_pop_i1_notcmp101150_pop54_covariance41_out_feedback_stall_out_54),
        .in_keep_going89(redist12_i_llvm_fpga_pipeline_keep_going89_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(),
        .out_feedback_out_54(i_llvm_fpga_push_i1_notcmp101150_push54_covariance42_out_feedback_out_54),
        .out_feedback_valid_out_54(i_llvm_fpga_push_i1_notcmp101150_push54_covariance42_out_feedback_valid_out_54),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together102_aunroll_x_in_c0_eni7_6_tpl_1(DELAY,187)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together102_aunroll_x_in_c0_eni7_6_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together102_aunroll_x_in_c0_eni7_6_tpl_1_q <= $unsigned(in_c0_eni7_6_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp101150_pop54_covariance41(BLACKBOX,63)@2
    // out out_feedback_stall_out_54@20000000
    covariance_i_llvm_fpga_pop_i1_notcmp101150_pop54_0 thei_llvm_fpga_pop_i1_notcmp101150_pop54_covariance41 (
        .in_data_in(redist6_sync_together102_aunroll_x_in_c0_eni7_6_tpl_1_q),
        .in_dir(redist0_sync_together102_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_54(i_llvm_fpga_push_i1_notcmp101150_push54_covariance42_out_feedback_out_54),
        .in_feedback_valid_in_54(i_llvm_fpga_push_i1_notcmp101150_push54_covariance42_out_feedback_valid_out_54),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp101150_pop54_covariance41_out_data_out),
        .out_feedback_stall_out_54(i_llvm_fpga_pop_i1_notcmp101150_pop54_covariance41_out_feedback_stall_out_54),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist11_i_llvm_fpga_pop_i1_notcmp101150_pop54_covariance41_out_data_out_4(DELAY,192)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pop_i1_notcmp101150_pop54_covariance41_out_data_out_4_delay_0 <= '0;
            redist11_i_llvm_fpga_pop_i1_notcmp101150_pop54_covariance41_out_data_out_4_delay_1 <= '0;
            redist11_i_llvm_fpga_pop_i1_notcmp101150_pop54_covariance41_out_data_out_4_delay_2 <= '0;
            redist11_i_llvm_fpga_pop_i1_notcmp101150_pop54_covariance41_out_data_out_4_q <= '0;
        end
        else
        begin
            redist11_i_llvm_fpga_pop_i1_notcmp101150_pop54_covariance41_out_data_out_4_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_notcmp101150_pop54_covariance41_out_data_out);
            redist11_i_llvm_fpga_pop_i1_notcmp101150_pop54_covariance41_out_data_out_4_delay_1 <= redist11_i_llvm_fpga_pop_i1_notcmp101150_pop54_covariance41_out_data_out_4_delay_0;
            redist11_i_llvm_fpga_pop_i1_notcmp101150_pop54_covariance41_out_data_out_4_delay_2 <= redist11_i_llvm_fpga_pop_i1_notcmp101150_pop54_covariance41_out_data_out_4_delay_1;
            redist11_i_llvm_fpga_pop_i1_notcmp101150_pop54_covariance41_out_data_out_4_q <= redist11_i_llvm_fpga_pop_i1_notcmp101150_pop54_covariance41_out_data_out_4_delay_2;
        end
    end

    // valid_fanout_reg15(REG,149)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist9_sync_together102_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg16(REG,150)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist9_sync_together102_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_exitcond16148_push53_covariance40(BLACKBOX,71)@6
    // out out_feedback_out_53@20000000
    // out out_feedback_valid_out_53@20000000
    covariance_i_llvm_fpga_push_i1_exitcond16148_push53_0 thei_llvm_fpga_push_i1_exitcond16148_push53_covariance40 (
        .in_data_in(i_llvm_fpga_pop_i1_exitcond16148_pop53_covariance39_out_data_out),
        .in_feedback_stall_in_53(i_llvm_fpga_pop_i1_exitcond16148_pop53_covariance39_out_feedback_stall_out_53),
        .in_keep_going89(redist13_i_llvm_fpga_pipeline_keep_going89_covariance6_out_data_out_5_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(),
        .out_feedback_out_53(i_llvm_fpga_push_i1_exitcond16148_push53_covariance40_out_feedback_out_53),
        .out_feedback_valid_out_53(i_llvm_fpga_push_i1_exitcond16148_push53_covariance40_out_feedback_valid_out_53),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together102_aunroll_x_in_c0_eni7_1_tpl_5(DELAY,182)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together102_aunroll_x_in_c0_eni7_1_tpl_5_delay_0 <= '0;
            redist1_sync_together102_aunroll_x_in_c0_eni7_1_tpl_5_delay_1 <= '0;
            redist1_sync_together102_aunroll_x_in_c0_eni7_1_tpl_5_delay_2 <= '0;
            redist1_sync_together102_aunroll_x_in_c0_eni7_1_tpl_5_q <= '0;
        end
        else
        begin
            redist1_sync_together102_aunroll_x_in_c0_eni7_1_tpl_5_delay_0 <= $unsigned(redist0_sync_together102_aunroll_x_in_c0_eni7_1_tpl_1_q);
            redist1_sync_together102_aunroll_x_in_c0_eni7_1_tpl_5_delay_1 <= redist1_sync_together102_aunroll_x_in_c0_eni7_1_tpl_5_delay_0;
            redist1_sync_together102_aunroll_x_in_c0_eni7_1_tpl_5_delay_2 <= redist1_sync_together102_aunroll_x_in_c0_eni7_1_tpl_5_delay_1;
            redist1_sync_together102_aunroll_x_in_c0_eni7_1_tpl_5_q <= redist1_sync_together102_aunroll_x_in_c0_eni7_1_tpl_5_delay_2;
        end
    end

    // redist5_sync_together102_aunroll_x_in_c0_eni7_5_tpl_5(DELAY,186)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together102_aunroll_x_in_c0_eni7_5_tpl_5_delay_0 <= '0;
            redist5_sync_together102_aunroll_x_in_c0_eni7_5_tpl_5_delay_1 <= '0;
            redist5_sync_together102_aunroll_x_in_c0_eni7_5_tpl_5_delay_2 <= '0;
            redist5_sync_together102_aunroll_x_in_c0_eni7_5_tpl_5_delay_3 <= '0;
            redist5_sync_together102_aunroll_x_in_c0_eni7_5_tpl_5_q <= '0;
        end
        else
        begin
            redist5_sync_together102_aunroll_x_in_c0_eni7_5_tpl_5_delay_0 <= $unsigned(in_c0_eni7_5_tpl);
            redist5_sync_together102_aunroll_x_in_c0_eni7_5_tpl_5_delay_1 <= redist5_sync_together102_aunroll_x_in_c0_eni7_5_tpl_5_delay_0;
            redist5_sync_together102_aunroll_x_in_c0_eni7_5_tpl_5_delay_2 <= redist5_sync_together102_aunroll_x_in_c0_eni7_5_tpl_5_delay_1;
            redist5_sync_together102_aunroll_x_in_c0_eni7_5_tpl_5_delay_3 <= redist5_sync_together102_aunroll_x_in_c0_eni7_5_tpl_5_delay_2;
            redist5_sync_together102_aunroll_x_in_c0_eni7_5_tpl_5_q <= redist5_sync_together102_aunroll_x_in_c0_eni7_5_tpl_5_delay_3;
        end
    end

    // i_llvm_fpga_pop_i1_exitcond16148_pop53_covariance39(BLACKBOX,61)@6
    // out out_feedback_stall_out_53@20000000
    covariance_i_llvm_fpga_pop_i1_exitcond16148_pop53_0 thei_llvm_fpga_pop_i1_exitcond16148_pop53_covariance39 (
        .in_data_in(redist5_sync_together102_aunroll_x_in_c0_eni7_5_tpl_5_q),
        .in_dir(redist1_sync_together102_aunroll_x_in_c0_eni7_1_tpl_5_q),
        .in_feedback_in_53(i_llvm_fpga_push_i1_exitcond16148_push53_covariance40_out_feedback_out_53),
        .in_feedback_valid_in_53(i_llvm_fpga_push_i1_exitcond16148_push53_covariance40_out_feedback_valid_out_53),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond16148_pop53_covariance39_out_data_out),
        .out_feedback_stall_out_53(i_llvm_fpga_pop_i1_exitcond16148_pop53_covariance39_out_feedback_stall_out_53),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg13(REG,147)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist9_sync_together102_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg14(REG,148)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist9_sync_together102_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i32_lim_ext135_push52_covariance38(BLACKBOX,80)@6
    // out out_feedback_out_52@20000000
    // out out_feedback_valid_out_52@20000000
    covariance_i_llvm_fpga_push_i32_lim_ext135_push52_0 thei_llvm_fpga_push_i32_lim_ext135_push52_covariance38 (
        .in_data_in(i_llvm_fpga_pop_i32_lim_ext135_pop52_covariance37_out_data_out),
        .in_feedback_stall_in_52(i_llvm_fpga_pop_i32_lim_ext135_pop52_covariance37_out_feedback_stall_out_52),
        .in_keep_going89(redist13_i_llvm_fpga_pipeline_keep_going89_covariance6_out_data_out_5_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_52(i_llvm_fpga_push_i32_lim_ext135_push52_covariance38_out_feedback_out_52),
        .out_feedback_valid_out_52(i_llvm_fpga_push_i32_lim_ext135_push52_covariance38_out_feedback_valid_out_52),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_notEnable(LOGICAL,202)
    assign redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_nor(LOGICAL,203)
    assign redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_nor_q = ~ (redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_notEnable_q | redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_sticky_ena_q);

    // redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_mem_last(CONSTANT,199)
    assign redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_cmp(LOGICAL,200)
    assign redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_cmp_b = {1'b0, redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_rdcnt_q};
    assign redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_cmp_q = $unsigned(redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_mem_last_q == redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_cmpReg(REG,201)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_cmpReg_q <= $unsigned(redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_cmp_q);
        end
    end

    // redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_sticky_ena(REG,204)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_nor_q == 1'b1)
        begin
            redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_sticky_ena_q <= $unsigned(redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_cmpReg_q);
        end
    end

    // redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_enaAnd(LOGICAL,205)
    assign redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_enaAnd_q = redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_sticky_ena_q & VCC_q;

    // redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_rdcnt(COUNTER,197)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_rdcnt_i <= $unsigned(redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_rdcnt_q = redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_rdcnt_i[1:0];

    // redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_wraddr(REG,198)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_wraddr_q <= $unsigned(redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_rdcnt_q);
        end
    end

    // redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_mem(DUALMEM,196)
    assign redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_mem_ia = $unsigned(in_c0_eni7_4_tpl);
    assign redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_mem_aa = redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_wraddr_q;
    assign redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_mem_ab = redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_rdcnt_q;
    assign redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(4),
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
    ) redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_mem_dmem (
        .clocken1(redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_mem_aa),
        .data_a(redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_mem_ab),
        .q_b(redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_mem_iq),
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
    assign redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_mem_q = redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_mem_iq[31:0];

    // i_llvm_fpga_pop_i32_lim_ext135_pop52_covariance37(BLACKBOX,68)@6
    // out out_feedback_stall_out_52@20000000
    covariance_i_llvm_fpga_pop_i32_lim_ext135_pop52_0 thei_llvm_fpga_pop_i32_lim_ext135_pop52_covariance37 (
        .in_data_in(redist4_sync_together102_aunroll_x_in_c0_eni7_4_tpl_5_mem_q),
        .in_dir(redist1_sync_together102_aunroll_x_in_c0_eni7_1_tpl_5_q),
        .in_feedback_in_52(i_llvm_fpga_push_i32_lim_ext135_push52_covariance38_out_feedback_out_52),
        .in_feedback_valid_in_52(i_llvm_fpga_push_i32_lim_ext135_push52_covariance38_out_feedback_valid_out_52),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(i_llvm_fpga_pop_i32_lim_ext135_pop52_covariance37_out_data_out),
        .out_feedback_stall_out_52(i_llvm_fpga_pop_i32_lim_ext135_pop52_covariance37_out_feedback_stall_out_52),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_masked98_covariance36(LOGICAL,83)@2 + 1
    assign i_masked98_covariance36_qi = i_notcmp85_covariance29_q & i_first_cleanup94_covariance3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked98_covariance36_delay ( .xin(i_masked98_covariance36_qi), .xout(i_masked98_covariance36_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist10_i_masked98_covariance36_q_4(DELAY,191)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_masked98_covariance36_q_4_delay_0 <= '0;
            redist10_i_masked98_covariance36_q_4_delay_1 <= '0;
            redist10_i_masked98_covariance36_q_4_q <= '0;
        end
        else
        begin
            redist10_i_masked98_covariance36_q_4_delay_0 <= $unsigned(i_masked98_covariance36_q);
            redist10_i_masked98_covariance36_q_4_delay_1 <= redist10_i_masked98_covariance36_q_4_delay_0;
            redist10_i_masked98_covariance36_q_4_q <= redist10_i_masked98_covariance36_q_4_delay_1;
        end
    end

    // valid_fanout_reg10(REG,144)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist9_sync_together102_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg11(REG,145)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist9_sync_together102_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i32_m_059_push49_covariance23(BLACKBOX,81)@6
    // out out_feedback_out_49@20000000
    // out out_feedback_valid_out_49@20000000
    covariance_i_llvm_fpga_push_i32_m_059_push49_0 thei_llvm_fpga_push_i32_m_059_push49_covariance23 (
        .in_data_in(bgTrunc_i_add_covariance22_sel_x_b),
        .in_feedback_stall_in_49(i_llvm_fpga_pop_i32_m_059_pop49_covariance21_out_feedback_stall_out_49),
        .in_keep_going89(redist13_i_llvm_fpga_pipeline_keep_going89_covariance6_out_data_out_5_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_49(i_llvm_fpga_push_i32_m_059_push49_covariance23_out_feedback_out_49),
        .out_feedback_valid_out_49(i_llvm_fpga_push_i32_m_059_push49_covariance23_out_feedback_valid_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_m_059_pop49_covariance21(BLACKBOX,69)@6
    // out out_feedback_stall_out_49@20000000
    covariance_i_llvm_fpga_pop_i32_m_059_pop49_0 thei_llvm_fpga_pop_i32_m_059_pop49_covariance21 (
        .in_data_in(c_i32_070_q),
        .in_dir(redist1_sync_together102_aunroll_x_in_c0_eni7_1_tpl_5_q),
        .in_feedback_in_49(i_llvm_fpga_push_i32_m_059_push49_covariance23_out_feedback_out_49),
        .in_feedback_valid_in_49(i_llvm_fpga_push_i32_m_059_push49_covariance23_out_feedback_valid_out_49),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(i_llvm_fpga_pop_i32_m_059_pop49_covariance21_out_data_out),
        .out_feedback_stall_out_49(i_llvm_fpga_pop_i32_m_059_pop49_covariance21_out_feedback_stall_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add_covariance22(ADD,38)@6
    assign i_add_covariance22_a = {1'b0, i_llvm_fpga_mem_unnamed_covariance6_covariance20_out_o_readdata};
    assign i_add_covariance22_b = {1'b0, i_llvm_fpga_pop_i32_m_059_pop49_covariance21_out_data_out};
    assign i_add_covariance22_o = $unsigned(i_add_covariance22_a) + $unsigned(i_add_covariance22_b);
    assign i_add_covariance22_q = i_add_covariance22_o[32:0];

    // bgTrunc_i_add_covariance22_sel_x(BITSELECT,95)@6
    assign bgTrunc_i_add_covariance22_sel_x_b = i_add_covariance22_q[31:0];

    // redist14_i_idxprom36_covariance14_vt_join_q_4_notEnable(LOGICAL,222)
    assign redist14_i_idxprom36_covariance14_vt_join_q_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist14_i_idxprom36_covariance14_vt_join_q_4_nor(LOGICAL,223)
    assign redist14_i_idxprom36_covariance14_vt_join_q_4_nor_q = ~ (redist14_i_idxprom36_covariance14_vt_join_q_4_notEnable_q | redist14_i_idxprom36_covariance14_vt_join_q_4_sticky_ena_q);

    // redist14_i_idxprom36_covariance14_vt_join_q_4_mem_last(CONSTANT,219)
    assign redist14_i_idxprom36_covariance14_vt_join_q_4_mem_last_q = $unsigned(2'b01);

    // redist14_i_idxprom36_covariance14_vt_join_q_4_cmp(LOGICAL,220)
    assign redist14_i_idxprom36_covariance14_vt_join_q_4_cmp_q = $unsigned(redist14_i_idxprom36_covariance14_vt_join_q_4_mem_last_q == redist14_i_idxprom36_covariance14_vt_join_q_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist14_i_idxprom36_covariance14_vt_join_q_4_cmpReg(REG,221)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_idxprom36_covariance14_vt_join_q_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist14_i_idxprom36_covariance14_vt_join_q_4_cmpReg_q <= $unsigned(redist14_i_idxprom36_covariance14_vt_join_q_4_cmp_q);
        end
    end

    // redist14_i_idxprom36_covariance14_vt_join_q_4_sticky_ena(REG,224)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_idxprom36_covariance14_vt_join_q_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist14_i_idxprom36_covariance14_vt_join_q_4_nor_q == 1'b1)
        begin
            redist14_i_idxprom36_covariance14_vt_join_q_4_sticky_ena_q <= $unsigned(redist14_i_idxprom36_covariance14_vt_join_q_4_cmpReg_q);
        end
    end

    // redist14_i_idxprom36_covariance14_vt_join_q_4_enaAnd(LOGICAL,225)
    assign redist14_i_idxprom36_covariance14_vt_join_q_4_enaAnd_q = redist14_i_idxprom36_covariance14_vt_join_q_4_sticky_ena_q & VCC_q;

    // redist14_i_idxprom36_covariance14_vt_join_q_4_rdcnt(COUNTER,217)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_idxprom36_covariance14_vt_join_q_4_rdcnt_i <= 2'd0;
            redist14_i_idxprom36_covariance14_vt_join_q_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist14_i_idxprom36_covariance14_vt_join_q_4_rdcnt_i == 2'd1)
            begin
                redist14_i_idxprom36_covariance14_vt_join_q_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist14_i_idxprom36_covariance14_vt_join_q_4_rdcnt_eq <= 1'b0;
            end
            if (redist14_i_idxprom36_covariance14_vt_join_q_4_rdcnt_eq == 1'b1)
            begin
                redist14_i_idxprom36_covariance14_vt_join_q_4_rdcnt_i <= $unsigned(redist14_i_idxprom36_covariance14_vt_join_q_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist14_i_idxprom36_covariance14_vt_join_q_4_rdcnt_i <= $unsigned(redist14_i_idxprom36_covariance14_vt_join_q_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist14_i_idxprom36_covariance14_vt_join_q_4_rdcnt_q = redist14_i_idxprom36_covariance14_vt_join_q_4_rdcnt_i[1:0];

    // redist14_i_idxprom36_covariance14_vt_join_q_4_wraddr(REG,218)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_idxprom36_covariance14_vt_join_q_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist14_i_idxprom36_covariance14_vt_join_q_4_wraddr_q <= $unsigned(redist14_i_idxprom36_covariance14_vt_join_q_4_rdcnt_q);
        end
    end

    // redist14_i_idxprom36_covariance14_vt_join_q_4_mem(DUALMEM,216)
    assign redist14_i_idxprom36_covariance14_vt_join_q_4_mem_ia = $unsigned(i_idxprom36_covariance14_vt_join_q);
    assign redist14_i_idxprom36_covariance14_vt_join_q_4_mem_aa = redist14_i_idxprom36_covariance14_vt_join_q_4_wraddr_q;
    assign redist14_i_idxprom36_covariance14_vt_join_q_4_mem_ab = redist14_i_idxprom36_covariance14_vt_join_q_4_rdcnt_q;
    assign redist14_i_idxprom36_covariance14_vt_join_q_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(64),
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
    ) redist14_i_idxprom36_covariance14_vt_join_q_4_mem_dmem (
        .clocken1(redist14_i_idxprom36_covariance14_vt_join_q_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist14_i_idxprom36_covariance14_vt_join_q_4_mem_reset0),
        .clock1(clock),
        .address_a(redist14_i_idxprom36_covariance14_vt_join_q_4_mem_aa),
        .data_a(redist14_i_idxprom36_covariance14_vt_join_q_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist14_i_idxprom36_covariance14_vt_join_q_4_mem_ab),
        .q_b(redist14_i_idxprom36_covariance14_vt_join_q_4_mem_iq),
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
    assign redist14_i_idxprom36_covariance14_vt_join_q_4_mem_q = redist14_i_idxprom36_covariance14_vt_join_q_4_mem_iq[63:0];

    // redist13_i_llvm_fpga_pipeline_keep_going89_covariance6_out_data_out_5(DELAY,194)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_llvm_fpga_pipeline_keep_going89_covariance6_out_data_out_5_delay_0 <= '0;
            redist13_i_llvm_fpga_pipeline_keep_going89_covariance6_out_data_out_5_delay_1 <= '0;
            redist13_i_llvm_fpga_pipeline_keep_going89_covariance6_out_data_out_5_delay_2 <= '0;
            redist13_i_llvm_fpga_pipeline_keep_going89_covariance6_out_data_out_5_q <= '0;
        end
        else
        begin
            redist13_i_llvm_fpga_pipeline_keep_going89_covariance6_out_data_out_5_delay_0 <= $unsigned(redist12_i_llvm_fpga_pipeline_keep_going89_covariance6_out_data_out_1_q);
            redist13_i_llvm_fpga_pipeline_keep_going89_covariance6_out_data_out_5_delay_1 <= redist13_i_llvm_fpga_pipeline_keep_going89_covariance6_out_data_out_5_delay_0;
            redist13_i_llvm_fpga_pipeline_keep_going89_covariance6_out_data_out_5_delay_2 <= redist13_i_llvm_fpga_pipeline_keep_going89_covariance6_out_data_out_5_delay_1;
            redist13_i_llvm_fpga_pipeline_keep_going89_covariance6_out_data_out_5_q <= redist13_i_llvm_fpga_pipeline_keep_going89_covariance6_out_data_out_5_delay_2;
        end
    end

    // sync_out_aunroll_x(GPOUT,132)@6
    assign out_c0_exi8305_0_tpl = GND_q;
    assign out_c0_exi8305_1_tpl = redist13_i_llvm_fpga_pipeline_keep_going89_covariance6_out_data_out_5_q;
    assign out_c0_exi8305_2_tpl = redist14_i_idxprom36_covariance14_vt_join_q_4_mem_q;
    assign out_c0_exi8305_3_tpl = bgTrunc_i_add_covariance22_sel_x_b;
    assign out_c0_exi8305_4_tpl = redist10_i_masked98_covariance36_q_4_q;
    assign out_c0_exi8305_5_tpl = i_llvm_fpga_pop_i32_lim_ext135_pop52_covariance37_out_data_out;
    assign out_c0_exi8305_6_tpl = i_llvm_fpga_pop_i1_exitcond16148_pop53_covariance39_out_data_out;
    assign out_c0_exi8305_7_tpl = redist11_i_llvm_fpga_pop_i1_notcmp101150_pop54_covariance41_out_data_out_4_q;
    assign out_c0_exi8305_8_tpl = redist7_sync_together102_aunroll_x_in_c0_eni7_7_tpl_5_mem_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_covariance0 = GND_q;

endmodule
