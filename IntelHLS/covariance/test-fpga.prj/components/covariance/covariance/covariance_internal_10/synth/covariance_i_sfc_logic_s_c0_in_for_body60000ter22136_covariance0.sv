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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body6_covariances_c0_enter22136_covariance0
// Created for function/kernel covariance
// SystemVerilog created on Fri Apr  7 17:50:02 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_i_sfc_logic_s_c0_in_for_body60000ter22136_covariance0 (
    input wire [31:0] in_unnamed_covariance2_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance2_covariance_avm_writeack,
    input wire [0:0] in_unnamed_covariance2_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance2_covariance_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going53_covariance6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going53_covariance6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    output wire [31:0] out_unnamed_covariance2_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance2_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance2_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance2_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance2_covariance_avm_writedata,
    output wire [3:0] out_unnamed_covariance2_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance2_covariance_avm_burstcount,
    output wire [0:0] out_c0_exi14_0_tpl,
    output wire [0:0] out_c0_exi14_1_tpl,
    output wire [63:0] out_c0_exi14_2_tpl,
    output wire [0:0] out_c0_exi14_3_tpl,
    output wire [31:0] out_c0_exi14_4_tpl,
    output wire [0:0] out_c0_exi14_5_tpl,
    output wire [31:0] out_c0_exi14_6_tpl,
    output wire [0:0] out_c0_exi14_7_tpl,
    output wire [0:0] out_c0_exi14_8_tpl,
    output wire [0:0] out_c0_exi14_9_tpl,
    output wire [0:0] out_c0_exi14_10_tpl,
    output wire [31:0] out_c0_exi14_11_tpl,
    output wire [0:0] out_c0_exi14_12_tpl,
    output wire [0:0] out_c0_exi14_13_tpl,
    output wire [0:0] out_c0_exi14_14_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_covariance0,
    input wire [0:0] in_c0_eni13_0_tpl,
    input wire [0:0] in_c0_eni13_1_tpl,
    input wire [31:0] in_c0_eni13_2_tpl,
    input wire [0:0] in_c0_eni13_3_tpl,
    input wire [0:0] in_c0_eni13_4_tpl,
    input wire [31:0] in_c0_eni13_5_tpl,
    input wire [0:0] in_c0_eni13_6_tpl,
    input wire [0:0] in_c0_eni13_7_tpl,
    input wire [0:0] in_c0_eni13_8_tpl,
    input wire [0:0] in_c0_eni13_9_tpl,
    input wire [31:0] in_c0_eni13_10_tpl,
    input wire [0:0] in_c0_eni13_11_tpl,
    input wire [0:0] in_c0_eni13_12_tpl,
    input wire [0:0] in_c0_eni13_13_tpl,
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
    wire [32:0] i_add_covariance25_a;
    wire [32:0] i_add_covariance25_b;
    logic [32:0] i_add_covariance25_o;
    wire [32:0] i_add_covariance25_q;
    wire [1:0] i_arrayidx81_covariance17_vt_const_1_q;
    wire [63:0] i_arrayidx81_covariance17_vt_join_q;
    wire [61:0] i_arrayidx81_covariance17_vt_select_63_b;
    wire [1:0] i_cleanups_shl57_covariance5_vt_join_q;
    wire [0:0] i_cleanups_shl57_covariance5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor59_covariance4_q;
    wire [6:0] i_fpga_indvars_iv_next_covariance37_a;
    wire [6:0] i_fpga_indvars_iv_next_covariance37_b;
    logic [6:0] i_fpga_indvars_iv_next_covariance37_o;
    wire [6:0] i_fpga_indvars_iv_next_covariance37_q;
    wire [63:0] i_idxprom7_covariance14_vt_join_q;
    wire [31:0] i_idxprom7_covariance14_vt_select_31_b;
    wire [63:0] i_idxprom_covariance16_vt_join_q;
    wire [31:0] i_idxprom_covariance16_vt_select_31_b;
    wire [32:0] i_inc_covariance27_a;
    wire [32:0] i_inc_covariance27_b;
    logic [32:0] i_inc_covariance27_o;
    wire [32:0] i_inc_covariance27_q;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance2_covariance23_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance2_covariance23_out_unnamed_covariance2_covariance_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance2_covariance23_out_unnamed_covariance2_covariance_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_covariance2_covariance23_out_unnamed_covariance2_covariance_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance2_covariance23_out_unnamed_covariance2_covariance_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance2_covariance23_out_unnamed_covariance2_covariance_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance2_covariance23_out_unnamed_covariance2_covariance_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance2_covariance23_out_unnamed_covariance2_covariance_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going53_covariance6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going53_covariance6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going53_covariance6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going53_covariance6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going53_covariance6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going53_covariance6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1094_pop41_covariance46_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1094_pop41_covariance46_out_feedback_stall_out_41;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop1682_pop38_covariance18_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop1682_pop38_covariance18_out_feedback_stall_out_38;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1785_pop39_covariance42_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1785_pop39_covariance42_out_feedback_stall_out_39;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop1888_pop40_covariance44_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop1888_pop40_covariance44_out_feedback_stall_out_40;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop2299_pop44_covariance20_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop2299_pop44_covariance20_out_feedback_stall_out_44;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp6596_pop42_covariance48_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp6596_pop42_covariance48_out_feedback_stall_out_42;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups56_pop36_covariance2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups56_pop36_covariance2_out_feedback_stall_out_36;
    wire [1:0] i_llvm_fpga_pop_i2_initerations51_pop35_covariance7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations51_pop35_covariance7_out_feedback_stall_out_35;
    wire [31:0] i_llvm_fpga_pop_i32_i_037_pop33_covariance15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_037_pop33_covariance15_out_feedback_stall_out_33;
    wire [31:0] i_llvm_fpga_pop_i32_j_039_pop2198_pop43_covariance12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_039_pop2198_pop43_covariance12_out_feedback_stall_out_43;
    wire [31:0] i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_feedback_stall_out_37;
    wire [31:0] i_llvm_fpga_pop_i32_m_036_pop34_covariance24_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_m_036_pop34_covariance24_out_feedback_stall_out_34;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop32_covariance29_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop32_covariance29_out_feedback_stall_out_32;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1094_push41_covariance47_out_feedback_out_41;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1094_push41_covariance47_out_feedback_valid_out_41;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration55_covariance11_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration55_covariance11_out_feedback_valid_out_10;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1682_push38_covariance19_out_feedback_out_38;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1682_push38_covariance19_out_feedback_valid_out_38;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1785_push39_covariance43_out_feedback_out_39;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1785_push39_covariance43_out_feedback_valid_out_39;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop1888_push40_covariance45_out_feedback_out_40;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop1888_push40_covariance45_out_feedback_valid_out_40;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop2299_push44_covariance21_out_feedback_out_44;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop2299_push44_covariance21_out_feedback_valid_out_44;
    wire [0:0] i_llvm_fpga_push_i1_notcmp6596_push42_covariance49_out_feedback_out_42;
    wire [0:0] i_llvm_fpga_push_i1_notcmp6596_push42_covariance49_out_feedback_valid_out_42;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond63_covariance33_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond63_covariance33_out_feedback_valid_out_11;
    wire [7:0] i_llvm_fpga_push_i2_cleanups56_push36_covariance36_out_feedback_out_36;
    wire [0:0] i_llvm_fpga_push_i2_cleanups56_push36_covariance36_out_feedback_valid_out_36;
    wire [7:0] i_llvm_fpga_push_i2_initerations51_push35_covariance9_out_feedback_out_35;
    wire [0:0] i_llvm_fpga_push_i2_initerations51_push35_covariance9_out_feedback_valid_out_35;
    wire [31:0] i_llvm_fpga_push_i32_i_037_push33_covariance28_out_feedback_out_33;
    wire [0:0] i_llvm_fpga_push_i32_i_037_push33_covariance28_out_feedback_valid_out_33;
    wire [31:0] i_llvm_fpga_push_i32_j_039_pop2198_push43_covariance13_out_feedback_out_43;
    wire [0:0] i_llvm_fpga_push_i32_j_039_pop2198_push43_covariance13_out_feedback_valid_out_43;
    wire [31:0] i_llvm_fpga_push_i32_lim_ext76_push37_covariance41_out_feedback_out_37;
    wire [0:0] i_llvm_fpga_push_i32_lim_ext76_push37_covariance41_out_feedback_valid_out_37;
    wire [31:0] i_llvm_fpga_push_i32_m_036_push34_covariance26_out_feedback_out_34;
    wire [0:0] i_llvm_fpga_push_i32_m_036_push34_covariance26_out_feedback_valid_out_34;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance38_out_feedback_out_32;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance38_out_feedback_valid_out_32;
    wire [0:0] i_masked62_covariance39_qi;
    reg [0:0] i_masked62_covariance39_q;
    wire [0:0] i_memdep_phi1_or_covariance22_q;
    wire [0:0] i_next_cleanups61_covariance35_s;
    reg [1:0] i_next_cleanups61_covariance35_q;
    wire [1:0] i_next_initerations52_covariance8_vt_join_q;
    wire [0:0] i_next_initerations52_covariance8_vt_select_0_b;
    wire [0:0] i_notcmp49_covariance32_q;
    wire [0:0] i_or60_covariance34_q;
    wire [31:0] bgTrunc_i_add_covariance25_sel_x_b;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next_covariance37_sel_x_b;
    wire [31:0] bgTrunc_i_inc_covariance27_sel_x_b;
    wire [12:0] i_arrayidx81_covariance0_add_x_a;
    wire [12:0] i_arrayidx81_covariance0_add_x_b;
    logic [12:0] i_arrayidx81_covariance0_add_x_o;
    wire [12:0] i_arrayidx81_covariance0_add_x_q;
    wire [63:0] i_arrayidx81_covariance0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx81_covariance0_c_i7_01_x_q;
    wire [4:0] i_arrayidx81_covariance0_narrow_x_b;
    wire [11:0] i_arrayidx81_covariance0_shift_join_x_q;
    wire [12:0] i_arrayidx81_covariance0_dupName_0_add_x_a;
    wire [12:0] i_arrayidx81_covariance0_dupName_0_add_x_b;
    logic [12:0] i_arrayidx81_covariance0_dupName_0_add_x_o;
    wire [12:0] i_arrayidx81_covariance0_dupName_0_add_x_q;
    wire [9:0] i_arrayidx81_covariance0_dupName_0_narrow_x_b;
    wire [11:0] i_arrayidx81_covariance0_dupName_0_shift_join_x_q;
    wire [11:0] i_arrayidx81_covariance0_dupName_0_trunc_sel_x_b;
    wire [11:0] i_arrayidx81_covariance0_dupName_2_trunc_sel_x_b;
    wire [11:0] i_arrayidx81_covariance0_dupName_3_trunc_sel_x_b;
    wire [11:0] i_arrayidx81_covariance0_dupName_5_trunc_sel_x_b;
    wire [0:0] i_first_cleanup58_covariance3_sel_x_b;
    wire [63:0] i_idxprom7_covariance14_sel_x_b;
    wire [63:0] i_idxprom_covariance16_sel_x_b;
    wire [0:0] i_last_initeration54_covariance10_sel_x_b;
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
    (* dont_merge *) reg [0:0] valid_fanout_reg24_q;
    wire [0:0] i_exitcond_covariance30_cmp_nsign_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid187_i_cleanups_shl57_covariance0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid187_i_cleanups_shl57_covariance0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid188_i_cleanups_shl57_covariance0_shift_x_q;
    wire [0:0] leftShiftStage0_uid190_i_cleanups_shl57_covariance0_shift_x_s;
    reg [1:0] leftShiftStage0_uid190_i_cleanups_shl57_covariance0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid194_i_next_initerations52_covariance0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid196_i_next_initerations52_covariance0_shift_x_q;
    wire [0:0] rightShiftStage0_uid198_i_next_initerations52_covariance0_shift_x_s;
    reg [1:0] rightShiftStage0_uid198_i_next_initerations52_covariance0_shift_x_q;
    wire [51:0] i_arrayidx81_covariance0_upper_bits_x_merged_bit_select_b;
    wire [11:0] i_arrayidx81_covariance0_upper_bits_x_merged_bit_select_c;
    reg [0:0] redist0_sync_together121_aunroll_x_in_c0_eni13_1_tpl_1_q;
    reg [0:0] redist1_sync_together121_aunroll_x_in_c0_eni13_1_tpl_5_q;
    reg [0:0] redist1_sync_together121_aunroll_x_in_c0_eni13_1_tpl_5_delay_0;
    reg [0:0] redist1_sync_together121_aunroll_x_in_c0_eni13_1_tpl_5_delay_1;
    reg [0:0] redist1_sync_together121_aunroll_x_in_c0_eni13_1_tpl_5_delay_2;
    reg [31:0] redist2_sync_together121_aunroll_x_in_c0_eni13_2_tpl_1_q;
    reg [0:0] redist3_sync_together121_aunroll_x_in_c0_eni13_3_tpl_1_q;
    reg [0:0] redist4_sync_together121_aunroll_x_in_c0_eni13_4_tpl_1_q;
    reg [31:0] redist5_sync_together121_aunroll_x_in_c0_eni13_5_tpl_1_q;
    reg [0:0] redist6_sync_together121_aunroll_x_in_c0_eni13_6_tpl_1_q;
    reg [0:0] redist7_sync_together121_aunroll_x_in_c0_eni13_7_tpl_1_q;
    reg [0:0] redist8_sync_together121_aunroll_x_in_c0_eni13_8_tpl_5_q;
    reg [0:0] redist8_sync_together121_aunroll_x_in_c0_eni13_8_tpl_5_delay_0;
    reg [0:0] redist8_sync_together121_aunroll_x_in_c0_eni13_8_tpl_5_delay_1;
    reg [0:0] redist8_sync_together121_aunroll_x_in_c0_eni13_8_tpl_5_delay_2;
    reg [0:0] redist8_sync_together121_aunroll_x_in_c0_eni13_8_tpl_5_delay_3;
    reg [0:0] redist9_sync_together121_aunroll_x_in_c0_eni13_9_tpl_1_q;
    reg [0:0] redist11_sync_together121_aunroll_x_in_c0_eni13_11_tpl_5_q;
    reg [0:0] redist11_sync_together121_aunroll_x_in_c0_eni13_11_tpl_5_delay_0;
    reg [0:0] redist11_sync_together121_aunroll_x_in_c0_eni13_11_tpl_5_delay_1;
    reg [0:0] redist11_sync_together121_aunroll_x_in_c0_eni13_11_tpl_5_delay_2;
    reg [0:0] redist11_sync_together121_aunroll_x_in_c0_eni13_11_tpl_5_delay_3;
    reg [0:0] redist12_sync_together121_aunroll_x_in_c0_eni13_12_tpl_5_q;
    reg [0:0] redist12_sync_together121_aunroll_x_in_c0_eni13_12_tpl_5_delay_0;
    reg [0:0] redist12_sync_together121_aunroll_x_in_c0_eni13_12_tpl_5_delay_1;
    reg [0:0] redist12_sync_together121_aunroll_x_in_c0_eni13_12_tpl_5_delay_2;
    reg [0:0] redist12_sync_together121_aunroll_x_in_c0_eni13_12_tpl_5_delay_3;
    reg [0:0] redist13_sync_together121_aunroll_x_in_c0_eni13_13_tpl_5_q;
    reg [0:0] redist13_sync_together121_aunroll_x_in_c0_eni13_13_tpl_5_delay_0;
    reg [0:0] redist13_sync_together121_aunroll_x_in_c0_eni13_13_tpl_5_delay_1;
    reg [0:0] redist13_sync_together121_aunroll_x_in_c0_eni13_13_tpl_5_delay_2;
    reg [0:0] redist13_sync_together121_aunroll_x_in_c0_eni13_13_tpl_5_delay_3;
    reg [0:0] redist14_sync_together121_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist15_sync_together121_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist15_sync_together121_aunroll_x_in_i_valid_4_delay_0;
    reg [0:0] redist15_sync_together121_aunroll_x_in_i_valid_4_delay_1;
    reg [0:0] redist16_i_masked62_covariance39_q_4_q;
    reg [0:0] redist16_i_masked62_covariance39_q_4_delay_0;
    reg [0:0] redist16_i_masked62_covariance39_q_4_delay_1;
    reg [0:0] redist18_i_llvm_fpga_pop_i1_notcmp6596_pop42_covariance48_out_data_out_4_q;
    reg [0:0] redist18_i_llvm_fpga_pop_i1_notcmp6596_pop42_covariance48_out_data_out_4_delay_0;
    reg [0:0] redist18_i_llvm_fpga_pop_i1_notcmp6596_pop42_covariance48_out_data_out_4_delay_1;
    reg [0:0] redist18_i_llvm_fpga_pop_i1_notcmp6596_pop42_covariance48_out_data_out_4_delay_2;
    reg [0:0] redist19_i_llvm_fpga_pop_i1_memdep_phi4_pop1888_pop40_covariance44_out_data_out_4_q;
    reg [0:0] redist19_i_llvm_fpga_pop_i1_memdep_phi4_pop1888_pop40_covariance44_out_data_out_4_delay_0;
    reg [0:0] redist19_i_llvm_fpga_pop_i1_memdep_phi4_pop1888_pop40_covariance44_out_data_out_4_delay_1;
    reg [0:0] redist19_i_llvm_fpga_pop_i1_memdep_phi4_pop1888_pop40_covariance44_out_data_out_4_delay_2;
    reg [0:0] redist20_i_llvm_fpga_pop_i1_memdep_phi2_pop1785_pop39_covariance42_out_data_out_4_q;
    reg [0:0] redist20_i_llvm_fpga_pop_i1_memdep_phi2_pop1785_pop39_covariance42_out_data_out_4_delay_0;
    reg [0:0] redist20_i_llvm_fpga_pop_i1_memdep_phi2_pop1785_pop39_covariance42_out_data_out_4_delay_1;
    reg [0:0] redist20_i_llvm_fpga_pop_i1_memdep_phi2_pop1785_pop39_covariance42_out_data_out_4_delay_2;
    reg [0:0] redist21_i_llvm_fpga_pop_i1_memdep_phi1_pop1682_pop38_covariance18_out_data_out_1_q;
    reg [0:0] redist22_i_llvm_fpga_pop_i1_memdep_phi1_pop1682_pop38_covariance18_out_data_out_4_q;
    reg [0:0] redist22_i_llvm_fpga_pop_i1_memdep_phi1_pop1682_pop38_covariance18_out_data_out_4_delay_0;
    reg [0:0] redist22_i_llvm_fpga_pop_i1_memdep_phi1_pop1682_pop38_covariance18_out_data_out_4_delay_1;
    reg [0:0] redist23_i_llvm_fpga_pipeline_keep_going53_covariance6_out_data_out_1_q;
    reg [0:0] redist24_i_llvm_fpga_pipeline_keep_going53_covariance6_out_data_out_2_q;
    reg [0:0] redist25_i_llvm_fpga_pipeline_keep_going53_covariance6_out_data_out_5_q;
    reg [0:0] redist25_i_llvm_fpga_pipeline_keep_going53_covariance6_out_data_out_5_delay_0;
    reg [0:0] redist25_i_llvm_fpga_pipeline_keep_going53_covariance6_out_data_out_5_delay_1;
    wire redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_mem_reset0;
    wire [31:0] redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_mem_ia;
    wire [1:0] redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_mem_aa;
    wire [1:0] redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_mem_ab;
    wire [31:0] redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_mem_iq;
    wire [31:0] redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_mem_q;
    wire [1:0] redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_rdcnt_i;
    reg [1:0] redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_wraddr_q;
    wire [2:0] redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_mem_last_q;
    wire [2:0] redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_cmp_b;
    wire [0:0] redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_cmpReg_q;
    wire [0:0] redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_notEnable_q;
    wire [0:0] redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_sticky_ena_q;
    wire [0:0] redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_enaAnd_q;
    wire redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_mem_reset0;
    wire [31:0] redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_mem_ia;
    wire [1:0] redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_mem_aa;
    wire [1:0] redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_mem_ab;
    wire [31:0] redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_mem_iq;
    wire [31:0] redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_mem_q;
    wire [1:0] redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_rdcnt_q;
    (* preserve *) reg [1:0] redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_rdcnt_i;
    (* preserve *) reg redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_rdcnt_eq;
    reg [1:0] redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_wraddr_q;
    wire [1:0] redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_mem_last_q;
    wire [0:0] redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_cmp_q;
    (* dont_merge *) reg [0:0] redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_cmpReg_q;
    wire [0:0] redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_notEnable_q;
    wire [0:0] redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_nor_q;
    (* dont_merge *) reg [0:0] redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_sticky_ena_q;
    wire [0:0] redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_enaAnd_q;
    wire redist26_i_idxprom7_covariance14_vt_join_q_4_mem_reset0;
    wire [63:0] redist26_i_idxprom7_covariance14_vt_join_q_4_mem_ia;
    wire [1:0] redist26_i_idxprom7_covariance14_vt_join_q_4_mem_aa;
    wire [1:0] redist26_i_idxprom7_covariance14_vt_join_q_4_mem_ab;
    wire [63:0] redist26_i_idxprom7_covariance14_vt_join_q_4_mem_iq;
    wire [63:0] redist26_i_idxprom7_covariance14_vt_join_q_4_mem_q;
    wire [1:0] redist26_i_idxprom7_covariance14_vt_join_q_4_rdcnt_q;
    (* preserve *) reg [1:0] redist26_i_idxprom7_covariance14_vt_join_q_4_rdcnt_i;
    (* preserve *) reg redist26_i_idxprom7_covariance14_vt_join_q_4_rdcnt_eq;
    reg [1:0] redist26_i_idxprom7_covariance14_vt_join_q_4_wraddr_q;
    wire [1:0] redist26_i_idxprom7_covariance14_vt_join_q_4_mem_last_q;
    wire [0:0] redist26_i_idxprom7_covariance14_vt_join_q_4_cmp_q;
    (* dont_merge *) reg [0:0] redist26_i_idxprom7_covariance14_vt_join_q_4_cmpReg_q;
    wire [0:0] redist26_i_idxprom7_covariance14_vt_join_q_4_notEnable_q;
    wire [0:0] redist26_i_idxprom7_covariance14_vt_join_q_4_nor_q;
    (* dont_merge *) reg [0:0] redist26_i_idxprom7_covariance14_vt_join_q_4_sticky_ena_q;
    wire [0:0] redist26_i_idxprom7_covariance14_vt_join_q_4_enaAnd_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist14_sync_together121_aunroll_x_in_i_valid_1(DELAY,214)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together121_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist14_sync_together121_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist23_i_llvm_fpga_pipeline_keep_going53_covariance6_out_data_out_1(DELAY,223)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_pipeline_keep_going53_covariance6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist23_i_llvm_fpga_pipeline_keep_going53_covariance6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going53_covariance6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid187_i_cleanups_shl57_covariance0_shift_x(BITSELECT,186)@2
    assign leftShiftStage0Idx1Rng1_uid187_i_cleanups_shl57_covariance0_shift_x_in = i_llvm_fpga_pop_i2_cleanups56_pop36_covariance2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid187_i_cleanups_shl57_covariance0_shift_x_b = leftShiftStage0Idx1Rng1_uid187_i_cleanups_shl57_covariance0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid188_i_cleanups_shl57_covariance0_shift_x(BITJOIN,187)@2
    assign leftShiftStage0Idx1_uid188_i_cleanups_shl57_covariance0_shift_x_q = {leftShiftStage0Idx1Rng1_uid187_i_cleanups_shl57_covariance0_shift_x_b, GND_q};

    // leftShiftStage0_uid190_i_cleanups_shl57_covariance0_shift_x(MUX,189)@2
    assign leftShiftStage0_uid190_i_cleanups_shl57_covariance0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid190_i_cleanups_shl57_covariance0_shift_x_s or i_llvm_fpga_pop_i2_cleanups56_pop36_covariance2_out_data_out or leftShiftStage0Idx1_uid188_i_cleanups_shl57_covariance0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid190_i_cleanups_shl57_covariance0_shift_x_s)
            1'b0 : leftShiftStage0_uid190_i_cleanups_shl57_covariance0_shift_x_q = i_llvm_fpga_pop_i2_cleanups56_pop36_covariance2_out_data_out;
            1'b1 : leftShiftStage0_uid190_i_cleanups_shl57_covariance0_shift_x_q = leftShiftStage0Idx1_uid188_i_cleanups_shl57_covariance0_shift_x_q;
            default : leftShiftStage0_uid190_i_cleanups_shl57_covariance0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl57_covariance5_vt_select_1(BITSELECT,50)@2
    assign i_cleanups_shl57_covariance5_vt_select_1_b = leftShiftStage0_uid190_i_cleanups_shl57_covariance0_shift_x_q[1:1];

    // i_cleanups_shl57_covariance5_vt_join(BITJOIN,49)@2
    assign i_cleanups_shl57_covariance5_vt_join_q = {i_cleanups_shl57_covariance5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor59_covariance4(LOGICAL,53)@2
    assign i_first_cleanup_xor59_covariance4_q = i_first_cleanup58_covariance3_sel_x_b ^ VCC_q;

    // i_notcmp49_covariance32(LOGICAL,101)@2
    assign i_notcmp49_covariance32_q = i_exitcond_covariance30_cmp_nsign_q ^ VCC_q;

    // i_or60_covariance34(LOGICAL,102)@2
    assign i_or60_covariance34_q = i_notcmp49_covariance32_q | i_first_cleanup_xor59_covariance4_q;

    // i_next_cleanups61_covariance35(MUX,97)@2
    assign i_next_cleanups61_covariance35_s = i_or60_covariance34_q;
    always @(i_next_cleanups61_covariance35_s or i_llvm_fpga_pop_i2_cleanups56_pop36_covariance2_out_data_out or i_cleanups_shl57_covariance5_vt_join_q)
    begin
        unique case (i_next_cleanups61_covariance35_s)
            1'b0 : i_next_cleanups61_covariance35_q = i_llvm_fpga_pop_i2_cleanups56_pop36_covariance2_out_data_out;
            1'b1 : i_next_cleanups61_covariance35_q = i_cleanups_shl57_covariance5_vt_join_q;
            default : i_next_cleanups61_covariance35_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups56_push36_covariance36(BLACKBOX,88)@2
    // out out_feedback_out_36@20000000
    // out out_feedback_valid_out_36@20000000
    covariance_i_llvm_fpga_push_i2_cleanups56_push36_0 thei_llvm_fpga_push_i2_cleanups56_push36_covariance36 (
        .in_data_in(i_next_cleanups61_covariance35_q),
        .in_feedback_stall_in_36(i_llvm_fpga_pop_i2_cleanups56_pop36_covariance2_out_feedback_stall_out_36),
        .in_keep_going53(redist23_i_llvm_fpga_pipeline_keep_going53_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist14_sync_together121_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_36(i_llvm_fpga_push_i2_cleanups56_push36_covariance36_out_feedback_out_36),
        .out_feedback_valid_out_36(i_llvm_fpga_push_i2_cleanups56_push36_covariance36_out_feedback_valid_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together121_aunroll_x_in_c0_eni13_1_tpl_1(DELAY,200)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together121_aunroll_x_in_c0_eni13_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together121_aunroll_x_in_c0_eni13_1_tpl_1_q <= $unsigned(in_c0_eni13_1_tpl);
        end
    end

    // c_i2_181(CONSTANT,37)
    assign c_i2_181_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups56_pop36_covariance2(BLACKBOX,73)@2
    // out out_feedback_stall_out_36@20000000
    covariance_i_llvm_fpga_pop_i2_cleanups56_pop36_0 thei_llvm_fpga_pop_i2_cleanups56_pop36_covariance2 (
        .in_data_in(c_i2_181_q),
        .in_dir(redist0_sync_together121_aunroll_x_in_c0_eni13_1_tpl_1_q),
        .in_feedback_in_36(i_llvm_fpga_push_i2_cleanups56_push36_covariance36_out_feedback_out_36),
        .in_feedback_valid_in_36(i_llvm_fpga_push_i2_cleanups56_push36_covariance36_out_feedback_valid_out_36),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist14_sync_together121_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups56_pop36_covariance2_out_data_out),
        .out_feedback_stall_out_36(i_llvm_fpga_pop_i2_cleanups56_pop36_covariance2_out_feedback_stall_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup58_covariance3_sel_x(BITSELECT,137)@2
    assign i_first_cleanup58_covariance3_sel_x_b = i_llvm_fpga_pop_i2_cleanups56_pop36_covariance2_out_data_out[0:0];

    // c_i6_187(CONSTANT,40)
    assign c_i6_187_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next_covariance37(ADD,54)@2
    assign i_fpga_indvars_iv_next_covariance37_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv_pop32_covariance29_out_data_out};
    assign i_fpga_indvars_iv_next_covariance37_b = {1'b0, c_i6_187_q};
    assign i_fpga_indvars_iv_next_covariance37_o = $unsigned(i_fpga_indvars_iv_next_covariance37_a) + $unsigned(i_fpga_indvars_iv_next_covariance37_b);
    assign i_fpga_indvars_iv_next_covariance37_q = i_fpga_indvars_iv_next_covariance37_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next_covariance37_sel_x(BITSELECT,109)@2
    assign bgTrunc_i_fpga_indvars_iv_next_covariance37_sel_x_b = i_fpga_indvars_iv_next_covariance37_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance38(BLACKBOX,94)@2
    // out out_feedback_out_32@20000000
    // out out_feedback_valid_out_32@20000000
    covariance_i_llvm_fpga_push_i6_fpga_indvars_iv_push32_0 thei_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance38 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_covariance37_sel_x_b),
        .in_feedback_stall_in_32(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop32_covariance29_out_feedback_stall_out_32),
        .in_keep_going53(redist23_i_llvm_fpga_pipeline_keep_going53_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist14_sync_together121_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_32(i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance38_out_feedback_out_32),
        .out_feedback_valid_out_32(i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance38_out_feedback_valid_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_3085(CONSTANT,41)
    assign c_i6_3085_q = $unsigned(6'b011110);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv_pop32_covariance29(BLACKBOX,79)@2
    // out out_feedback_stall_out_32@20000000
    covariance_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop32_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv_pop32_covariance29 (
        .in_data_in(c_i6_3085_q),
        .in_dir(redist0_sync_together121_aunroll_x_in_c0_eni13_1_tpl_1_q),
        .in_feedback_in_32(i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance38_out_feedback_out_32),
        .in_feedback_valid_in_32(i_llvm_fpga_push_i6_fpga_indvars_iv_push32_covariance38_out_feedback_valid_out_32),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist14_sync_together121_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop32_covariance29_out_data_out),
        .out_feedback_stall_out_32(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop32_covariance29_out_feedback_stall_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_covariance30_cmp_nsign(LOGICAL,182)@2
    assign i_exitcond_covariance30_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv_pop32_covariance29_out_data_out[5:5]));

    // i_llvm_fpga_push_i1_notexitcond63_covariance33(BLACKBOX,87)@2
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    covariance_i_llvm_fpga_push_i1_notexitcond63_0 thei_llvm_fpga_push_i1_notexitcond63_covariance33 (
        .in_data_in(i_exitcond_covariance30_cmp_nsign_q),
        .in_feedback_stall_in_11(i_llvm_fpga_pipeline_keep_going53_covariance6_out_not_exitcond_stall_out),
        .in_first_cleanup58(i_first_cleanup58_covariance3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist14_sync_together121_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i1_notexitcond63_covariance33_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i1_notexitcond63_covariance33_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,150)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid194_i_next_initerations52_covariance0_shift_x(BITSELECT,193)@2
    assign rightShiftStage0Idx1Rng1_uid194_i_next_initerations52_covariance0_shift_x_b = i_llvm_fpga_pop_i2_initerations51_pop35_covariance7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid196_i_next_initerations52_covariance0_shift_x(BITJOIN,195)@2
    assign rightShiftStage0Idx1_uid196_i_next_initerations52_covariance0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid194_i_next_initerations52_covariance0_shift_x_b};

    // valid_fanout_reg1(REG,148)@1 + 1
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

    // valid_fanout_reg2(REG,149)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations51_push35_covariance9(BLACKBOX,89)@2
    // out out_feedback_out_35@20000000
    // out out_feedback_valid_out_35@20000000
    covariance_i_llvm_fpga_push_i2_initerations51_push35_0 thei_llvm_fpga_push_i2_initerations51_push35_covariance9 (
        .in_data_in(i_next_initerations52_covariance8_vt_join_q),
        .in_feedback_stall_in_35(i_llvm_fpga_pop_i2_initerations51_pop35_covariance7_out_feedback_stall_out_35),
        .in_keep_going53(redist23_i_llvm_fpga_pipeline_keep_going53_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_35(i_llvm_fpga_push_i2_initerations51_push35_covariance9_out_feedback_out_35),
        .out_feedback_valid_out_35(i_llvm_fpga_push_i2_initerations51_push35_covariance9_out_feedback_valid_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations51_pop35_covariance7(BLACKBOX,74)@2
    // out out_feedback_stall_out_35@20000000
    covariance_i_llvm_fpga_pop_i2_initerations51_pop35_0 thei_llvm_fpga_pop_i2_initerations51_pop35_covariance7 (
        .in_data_in(c_i2_181_q),
        .in_dir(redist0_sync_together121_aunroll_x_in_c0_eni13_1_tpl_1_q),
        .in_feedback_in_35(i_llvm_fpga_push_i2_initerations51_push35_covariance9_out_feedback_out_35),
        .in_feedback_valid_in_35(i_llvm_fpga_push_i2_initerations51_push35_covariance9_out_feedback_valid_out_35),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations51_pop35_covariance7_out_data_out),
        .out_feedback_stall_out_35(i_llvm_fpga_pop_i2_initerations51_pop35_covariance7_out_feedback_stall_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid198_i_next_initerations52_covariance0_shift_x(MUX,197)@2
    assign rightShiftStage0_uid198_i_next_initerations52_covariance0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid198_i_next_initerations52_covariance0_shift_x_s or i_llvm_fpga_pop_i2_initerations51_pop35_covariance7_out_data_out or rightShiftStage0Idx1_uid196_i_next_initerations52_covariance0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid198_i_next_initerations52_covariance0_shift_x_s)
            1'b0 : rightShiftStage0_uid198_i_next_initerations52_covariance0_shift_x_q = i_llvm_fpga_pop_i2_initerations51_pop35_covariance7_out_data_out;
            1'b1 : rightShiftStage0_uid198_i_next_initerations52_covariance0_shift_x_q = rightShiftStage0Idx1_uid196_i_next_initerations52_covariance0_shift_x_q;
            default : rightShiftStage0_uid198_i_next_initerations52_covariance0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations52_covariance8_vt_select_0(BITSELECT,100)@2
    assign i_next_initerations52_covariance8_vt_select_0_b = rightShiftStage0_uid198_i_next_initerations52_covariance0_shift_x_q[0:0];

    // i_next_initerations52_covariance8_vt_join(BITJOIN,99)@2
    assign i_next_initerations52_covariance8_vt_join_q = {GND_q, i_next_initerations52_covariance8_vt_select_0_b};

    // i_last_initeration54_covariance10_sel_x(BITSELECT,140)@2
    assign i_last_initeration54_covariance10_sel_x_b = i_next_initerations52_covariance8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration55_covariance11(BLACKBOX,81)@2
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    covariance_i_llvm_fpga_push_i1_lastiniteration55_0 thei_llvm_fpga_push_i1_lastiniteration55_covariance11 (
        .in_data_in(i_last_initeration54_covariance10_sel_x_b),
        .in_feedback_stall_in_10(i_llvm_fpga_pipeline_keep_going53_covariance6_out_initeration_stall_out),
        .in_keep_going53(redist23_i_llvm_fpga_pipeline_keep_going53_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i1_lastiniteration55_covariance11_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i1_lastiniteration55_covariance11_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going53_covariance6(BLACKBOX,66)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    covariance_i_llvm_fpga_pipeline_keep_going53_0 thei_llvm_fpga_pipeline_keep_going53_covariance6 (
        .in_data_in(in_c0_eni13_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration55_covariance11_out_feedback_out_10),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration55_covariance11_out_feedback_valid_out_10),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond63_covariance33_out_feedback_out_11),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond63_covariance33_out_feedback_valid_out_11),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going53_covariance6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going53_covariance6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going53_covariance6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going53_covariance6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going53_covariance6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going53_covariance6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,43)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going53_covariance6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going53_covariance6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going53_covariance6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going53_covariance6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,105)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going53_covariance6_out_pipeline_valid_out;

    // valid_fanout_reg11(REG,158)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg7(REG,154)@1 + 1
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

    // valid_fanout_reg8(REG,155)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist14_sync_together121_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist24_i_llvm_fpga_pipeline_keep_going53_covariance6_out_data_out_2(DELAY,224)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_llvm_fpga_pipeline_keep_going53_covariance6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist24_i_llvm_fpga_pipeline_keep_going53_covariance6_out_data_out_2_q <= $unsigned(redist23_i_llvm_fpga_pipeline_keep_going53_covariance6_out_data_out_1_q);
        end
    end

    // redist21_i_llvm_fpga_pop_i1_memdep_phi1_pop1682_pop38_covariance18_out_data_out_1(DELAY,221)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_pop_i1_memdep_phi1_pop1682_pop38_covariance18_out_data_out_1_q <= '0;
        end
        else
        begin
            redist21_i_llvm_fpga_pop_i1_memdep_phi1_pop1682_pop38_covariance18_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi1_pop1682_pop38_covariance18_out_data_out);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi1_pop1682_push38_covariance19(BLACKBOX,82)@3
    // out out_feedback_out_38@20000000
    // out out_feedback_valid_out_38@20000000
    covariance_i_llvm_fpga_push_i1_memdep_phi1_pop1682_push38_0 thei_llvm_fpga_push_i1_memdep_phi1_pop1682_push38_covariance19 (
        .in_data_in(redist21_i_llvm_fpga_pop_i1_memdep_phi1_pop1682_pop38_covariance18_out_data_out_1_q),
        .in_feedback_stall_in_38(i_llvm_fpga_pop_i1_memdep_phi1_pop1682_pop38_covariance18_out_feedback_stall_out_38),
        .in_keep_going53(redist24_i_llvm_fpga_pipeline_keep_going53_covariance6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_38(i_llvm_fpga_push_i1_memdep_phi1_pop1682_push38_covariance19_out_feedback_out_38),
        .out_feedback_valid_out_38(i_llvm_fpga_push_i1_memdep_phi1_pop1682_push38_covariance19_out_feedback_valid_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together121_aunroll_x_in_c0_eni13_3_tpl_1(DELAY,203)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together121_aunroll_x_in_c0_eni13_3_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together121_aunroll_x_in_c0_eni13_3_tpl_1_q <= $unsigned(in_c0_eni13_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi1_pop1682_pop38_covariance18(BLACKBOX,68)@2
    // out out_feedback_stall_out_38@20000000
    covariance_i_llvm_fpga_pop_i1_memdep_phi1_pop1682_pop38_0 thei_llvm_fpga_pop_i1_memdep_phi1_pop1682_pop38_covariance18 (
        .in_data_in(redist3_sync_together121_aunroll_x_in_c0_eni13_3_tpl_1_q),
        .in_dir(redist0_sync_together121_aunroll_x_in_c0_eni13_1_tpl_1_q),
        .in_feedback_in_38(i_llvm_fpga_push_i1_memdep_phi1_pop1682_push38_covariance19_out_feedback_out_38),
        .in_feedback_valid_in_38(i_llvm_fpga_push_i1_memdep_phi1_pop1682_push38_covariance19_out_feedback_valid_out_38),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi1_pop1682_pop38_covariance18_out_data_out),
        .out_feedback_stall_out_38(i_llvm_fpga_pop_i1_memdep_phi1_pop1682_pop38_covariance18_out_feedback_stall_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg9(REG,156)@1 + 1
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

    // valid_fanout_reg10(REG,157)@1 + 1
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

    // i_llvm_fpga_push_i1_memdep_phi_pop2299_push44_covariance21(BLACKBOX,85)@2
    // out out_feedback_out_44@20000000
    // out out_feedback_valid_out_44@20000000
    covariance_i_llvm_fpga_push_i1_memdep_phi_pop2299_push44_0 thei_llvm_fpga_push_i1_memdep_phi_pop2299_push44_covariance21 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi_pop2299_pop44_covariance20_out_data_out),
        .in_feedback_stall_in_44(i_llvm_fpga_pop_i1_memdep_phi_pop2299_pop44_covariance20_out_feedback_stall_out_44),
        .in_keep_going53(redist23_i_llvm_fpga_pipeline_keep_going53_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_44(i_llvm_fpga_push_i1_memdep_phi_pop2299_push44_covariance21_out_feedback_out_44),
        .out_feedback_valid_out_44(i_llvm_fpga_push_i1_memdep_phi_pop2299_push44_covariance21_out_feedback_valid_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together121_aunroll_x_in_c0_eni13_4_tpl_1(DELAY,204)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together121_aunroll_x_in_c0_eni13_4_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together121_aunroll_x_in_c0_eni13_4_tpl_1_q <= $unsigned(in_c0_eni13_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop2299_pop44_covariance20(BLACKBOX,71)@2
    // out out_feedback_stall_out_44@20000000
    covariance_i_llvm_fpga_pop_i1_memdep_phi_pop2299_pop44_0 thei_llvm_fpga_pop_i1_memdep_phi_pop2299_pop44_covariance20 (
        .in_data_in(redist4_sync_together121_aunroll_x_in_c0_eni13_4_tpl_1_q),
        .in_dir(redist0_sync_together121_aunroll_x_in_c0_eni13_1_tpl_1_q),
        .in_feedback_in_44(i_llvm_fpga_push_i1_memdep_phi_pop2299_push44_covariance21_out_feedback_out_44),
        .in_feedback_valid_in_44(i_llvm_fpga_push_i1_memdep_phi_pop2299_push44_covariance21_out_feedback_valid_out_44),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop2299_pop44_covariance20_out_data_out),
        .out_feedback_stall_out_44(i_llvm_fpga_pop_i1_memdep_phi_pop2299_pop44_covariance20_out_feedback_stall_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_memdep_phi1_or_covariance22(LOGICAL,96)@2
    assign i_memdep_phi1_or_covariance22_q = i_llvm_fpga_pop_i1_memdep_phi_pop2299_pop44_covariance20_out_data_out | i_llvm_fpga_pop_i1_memdep_phi1_pop1682_pop38_covariance18_out_data_out;

    // c_covariance_data_local_pmem(CONSTANT,5)
    assign c_covariance_data_local_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx81_covariance0_upper_bits_x_merged_bit_select(BITSELECT,199)@2
    assign i_arrayidx81_covariance0_upper_bits_x_merged_bit_select_b = c_covariance_data_local_pmem_q[63:12];
    assign i_arrayidx81_covariance0_upper_bits_x_merged_bit_select_c = c_covariance_data_local_pmem_q[11:0];

    // c_i32_083(CONSTANT,38)
    assign c_i32_083_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg4(REG,151)@1 + 1
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

    // valid_fanout_reg5(REG,152)@1 + 1
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

    // i_llvm_fpga_push_i32_j_039_pop2198_push43_covariance13(BLACKBOX,91)@2
    // out out_feedback_out_43@20000000
    // out out_feedback_valid_out_43@20000000
    covariance_i_llvm_fpga_push_i32_j_039_pop2198_push43_0 thei_llvm_fpga_push_i32_j_039_pop2198_push43_covariance13 (
        .in_data_in(i_llvm_fpga_pop_i32_j_039_pop2198_pop43_covariance12_out_data_out),
        .in_feedback_stall_in_43(i_llvm_fpga_pop_i32_j_039_pop2198_pop43_covariance12_out_feedback_stall_out_43),
        .in_keep_going53(redist23_i_llvm_fpga_pipeline_keep_going53_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_43(i_llvm_fpga_push_i32_j_039_pop2198_push43_covariance13_out_feedback_out_43),
        .out_feedback_valid_out_43(i_llvm_fpga_push_i32_j_039_pop2198_push43_covariance13_out_feedback_valid_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together121_aunroll_x_in_c0_eni13_2_tpl_1(DELAY,202)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together121_aunroll_x_in_c0_eni13_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together121_aunroll_x_in_c0_eni13_2_tpl_1_q <= $unsigned(in_c0_eni13_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_j_039_pop2198_pop43_covariance12(BLACKBOX,76)@2
    // out out_feedback_stall_out_43@20000000
    covariance_i_llvm_fpga_pop_i32_j_039_pop2198_pop43_0 thei_llvm_fpga_pop_i32_j_039_pop2198_pop43_covariance12 (
        .in_data_in(redist2_sync_together121_aunroll_x_in_c0_eni13_2_tpl_1_q),
        .in_dir(redist0_sync_together121_aunroll_x_in_c0_eni13_1_tpl_1_q),
        .in_feedback_in_43(i_llvm_fpga_push_i32_j_039_pop2198_push43_covariance13_out_feedback_out_43),
        .in_feedback_valid_in_43(i_llvm_fpga_push_i32_j_039_pop2198_push43_covariance13_out_feedback_valid_out_43),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_039_pop2198_pop43_covariance12_out_data_out),
        .out_feedback_stall_out_43(i_llvm_fpga_pop_i32_j_039_pop2198_pop43_covariance12_out_feedback_stall_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom7_covariance14_sel_x(BITSELECT,138)@2
    assign i_idxprom7_covariance14_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j_039_pop2198_pop43_covariance12_out_data_out[31:0]};

    // i_idxprom7_covariance14_vt_select_31(BITSELECT,58)@2
    assign i_idxprom7_covariance14_vt_select_31_b = i_idxprom7_covariance14_sel_x_b[31:0];

    // i_idxprom7_covariance14_vt_join(BITJOIN,57)@2
    assign i_idxprom7_covariance14_vt_join_q = {c_i32_083_q, i_idxprom7_covariance14_vt_select_31_b};

    // i_arrayidx81_covariance0_dupName_3_trunc_sel_x(BITSELECT,131)@2
    assign i_arrayidx81_covariance0_dupName_3_trunc_sel_x_b = i_idxprom7_covariance14_vt_join_q[11:0];

    // i_arrayidx81_covariance0_dupName_0_narrow_x(BITSELECT,122)@2
    assign i_arrayidx81_covariance0_dupName_0_narrow_x_b = i_arrayidx81_covariance0_dupName_3_trunc_sel_x_b[9:0];

    // i_arrayidx81_covariance0_dupName_0_shift_join_x(BITJOIN,123)@2
    assign i_arrayidx81_covariance0_dupName_0_shift_join_x_q = {i_arrayidx81_covariance0_dupName_0_narrow_x_b, i_arrayidx81_covariance17_vt_const_1_q};

    // valid_fanout_reg6(REG,153)@1 + 1
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

    // valid_fanout_reg14(REG,161)@1 + 1
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

    // c_i32_184(CONSTANT,39)
    assign c_i32_184_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_covariance27(ADD,63)@2
    assign i_inc_covariance27_a = {1'b0, i_llvm_fpga_pop_i32_i_037_pop33_covariance15_out_data_out};
    assign i_inc_covariance27_b = {1'b0, c_i32_184_q};
    assign i_inc_covariance27_o = $unsigned(i_inc_covariance27_a) + $unsigned(i_inc_covariance27_b);
    assign i_inc_covariance27_q = i_inc_covariance27_o[32:0];

    // bgTrunc_i_inc_covariance27_sel_x(BITSELECT,110)@2
    assign bgTrunc_i_inc_covariance27_sel_x_b = i_inc_covariance27_q[31:0];

    // i_llvm_fpga_push_i32_i_037_push33_covariance28(BLACKBOX,90)@2
    // out out_feedback_out_33@20000000
    // out out_feedback_valid_out_33@20000000
    covariance_i_llvm_fpga_push_i32_i_037_push33_0 thei_llvm_fpga_push_i32_i_037_push33_covariance28 (
        .in_data_in(bgTrunc_i_inc_covariance27_sel_x_b),
        .in_feedback_stall_in_33(i_llvm_fpga_pop_i32_i_037_pop33_covariance15_out_feedback_stall_out_33),
        .in_keep_going53(redist23_i_llvm_fpga_pipeline_keep_going53_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_33(i_llvm_fpga_push_i32_i_037_push33_covariance28_out_feedback_out_33),
        .out_feedback_valid_out_33(i_llvm_fpga_push_i32_i_037_push33_covariance28_out_feedback_valid_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_037_pop33_covariance15(BLACKBOX,75)@2
    // out out_feedback_stall_out_33@20000000
    covariance_i_llvm_fpga_pop_i32_i_037_pop33_0 thei_llvm_fpga_pop_i32_i_037_pop33_covariance15 (
        .in_data_in(c_i32_083_q),
        .in_dir(redist0_sync_together121_aunroll_x_in_c0_eni13_1_tpl_1_q),
        .in_feedback_in_33(i_llvm_fpga_push_i32_i_037_push33_covariance28_out_feedback_out_33),
        .in_feedback_valid_in_33(i_llvm_fpga_push_i32_i_037_push33_covariance28_out_feedback_valid_out_33),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_037_pop33_covariance15_out_data_out),
        .out_feedback_stall_out_33(i_llvm_fpga_pop_i32_i_037_pop33_covariance15_out_feedback_stall_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom_covariance16_sel_x(BITSELECT,139)@2
    assign i_idxprom_covariance16_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_037_pop33_covariance15_out_data_out[31:0]};

    // i_idxprom_covariance16_vt_select_31(BITSELECT,62)@2
    assign i_idxprom_covariance16_vt_select_31_b = i_idxprom_covariance16_sel_x_b[31:0];

    // i_idxprom_covariance16_vt_join(BITJOIN,61)@2
    assign i_idxprom_covariance16_vt_join_q = {c_i32_083_q, i_idxprom_covariance16_vt_select_31_b};

    // i_arrayidx81_covariance0_dupName_0_trunc_sel_x(BITSELECT,129)@2
    assign i_arrayidx81_covariance0_dupName_0_trunc_sel_x_b = i_idxprom_covariance16_vt_join_q[11:0];

    // i_arrayidx81_covariance0_narrow_x(BITSELECT,117)@2
    assign i_arrayidx81_covariance0_narrow_x_b = i_arrayidx81_covariance0_dupName_0_trunc_sel_x_b[4:0];

    // i_arrayidx81_covariance0_c_i7_01_x(CONSTANT,116)
    assign i_arrayidx81_covariance0_c_i7_01_x_q = $unsigned(7'b0000000);

    // i_arrayidx81_covariance0_shift_join_x(BITJOIN,118)@2
    assign i_arrayidx81_covariance0_shift_join_x_q = {i_arrayidx81_covariance0_narrow_x_b, i_arrayidx81_covariance0_c_i7_01_x_q};

    // i_arrayidx81_covariance0_add_x(ADD,113)@2
    assign i_arrayidx81_covariance0_add_x_a = {1'b0, i_arrayidx81_covariance0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx81_covariance0_add_x_b = {1'b0, i_arrayidx81_covariance0_shift_join_x_q};
    assign i_arrayidx81_covariance0_add_x_o = $unsigned(i_arrayidx81_covariance0_add_x_a) + $unsigned(i_arrayidx81_covariance0_add_x_b);
    assign i_arrayidx81_covariance0_add_x_q = i_arrayidx81_covariance0_add_x_o[12:0];

    // i_arrayidx81_covariance0_dupName_2_trunc_sel_x(BITSELECT,130)@2
    assign i_arrayidx81_covariance0_dupName_2_trunc_sel_x_b = i_arrayidx81_covariance0_add_x_q[11:0];

    // i_arrayidx81_covariance0_dupName_0_add_x(ADD,121)@2
    assign i_arrayidx81_covariance0_dupName_0_add_x_a = {1'b0, i_arrayidx81_covariance0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx81_covariance0_dupName_0_add_x_b = {1'b0, i_arrayidx81_covariance0_dupName_0_shift_join_x_q};
    assign i_arrayidx81_covariance0_dupName_0_add_x_o = $unsigned(i_arrayidx81_covariance0_dupName_0_add_x_a) + $unsigned(i_arrayidx81_covariance0_dupName_0_add_x_b);
    assign i_arrayidx81_covariance0_dupName_0_add_x_q = i_arrayidx81_covariance0_dupName_0_add_x_o[12:0];

    // i_arrayidx81_covariance0_dupName_5_trunc_sel_x(BITSELECT,132)@2
    assign i_arrayidx81_covariance0_dupName_5_trunc_sel_x_b = i_arrayidx81_covariance0_dupName_0_add_x_q[11:0];

    // i_arrayidx81_covariance0_append_upper_bits_x(BITJOIN,114)@2
    assign i_arrayidx81_covariance0_append_upper_bits_x_q = {i_arrayidx81_covariance0_upper_bits_x_merged_bit_select_b, i_arrayidx81_covariance0_dupName_5_trunc_sel_x_b};

    // i_arrayidx81_covariance17_vt_select_63(BITSELECT,47)@2
    assign i_arrayidx81_covariance17_vt_select_63_b = i_arrayidx81_covariance0_append_upper_bits_x_q[63:2];

    // i_arrayidx81_covariance17_vt_const_1(CONSTANT,45)
    assign i_arrayidx81_covariance17_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx81_covariance17_vt_join(BITJOIN,46)@2
    assign i_arrayidx81_covariance17_vt_join_q = {i_arrayidx81_covariance17_vt_select_63_b, i_arrayidx81_covariance17_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_covariance2_covariance23(BLACKBOX,65)@2
    // in in_i_stall@20000000
    // out out_o_readdata@6
    // out out_o_stall@5
    // out out_o_valid@6
    // out out_unnamed_covariance2_covariance_avm_address@20000000
    // out out_unnamed_covariance2_covariance_avm_burstcount@20000000
    // out out_unnamed_covariance2_covariance_avm_byteenable@20000000
    // out out_unnamed_covariance2_covariance_avm_enable@20000000
    // out out_unnamed_covariance2_covariance_avm_read@20000000
    // out out_unnamed_covariance2_covariance_avm_write@20000000
    // out out_unnamed_covariance2_covariance_avm_writedata@20000000
    covariance_i_llvm_fpga_mem_unnamed_2_covariance0 thei_llvm_fpga_mem_unnamed_covariance2_covariance23 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx81_covariance17_vt_join_q),
        .in_i_dependence(i_memdep_phi1_or_covariance22_q),
        .in_i_predicate(i_first_cleanup_xor59_covariance4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg11_q),
        .in_unnamed_covariance2_covariance_avm_readdata(in_unnamed_covariance2_covariance_avm_readdata),
        .in_unnamed_covariance2_covariance_avm_readdatavalid(in_unnamed_covariance2_covariance_avm_readdatavalid),
        .in_unnamed_covariance2_covariance_avm_waitrequest(in_unnamed_covariance2_covariance_avm_waitrequest),
        .in_unnamed_covariance2_covariance_avm_writeack(in_unnamed_covariance2_covariance_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_covariance2_covariance23_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_covariance2_covariance_avm_address(i_llvm_fpga_mem_unnamed_covariance2_covariance23_out_unnamed_covariance2_covariance_avm_address),
        .out_unnamed_covariance2_covariance_avm_burstcount(i_llvm_fpga_mem_unnamed_covariance2_covariance23_out_unnamed_covariance2_covariance_avm_burstcount),
        .out_unnamed_covariance2_covariance_avm_byteenable(i_llvm_fpga_mem_unnamed_covariance2_covariance23_out_unnamed_covariance2_covariance_avm_byteenable),
        .out_unnamed_covariance2_covariance_avm_enable(i_llvm_fpga_mem_unnamed_covariance2_covariance23_out_unnamed_covariance2_covariance_avm_enable),
        .out_unnamed_covariance2_covariance_avm_read(i_llvm_fpga_mem_unnamed_covariance2_covariance23_out_unnamed_covariance2_covariance_avm_read),
        .out_unnamed_covariance2_covariance_avm_write(i_llvm_fpga_mem_unnamed_covariance2_covariance23_out_unnamed_covariance2_covariance_avm_write),
        .out_unnamed_covariance2_covariance_avm_writedata(i_llvm_fpga_mem_unnamed_covariance2_covariance23_out_unnamed_covariance2_covariance_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,112)
    assign out_unnamed_covariance2_covariance_avm_address = i_llvm_fpga_mem_unnamed_covariance2_covariance23_out_unnamed_covariance2_covariance_avm_address;
    assign out_unnamed_covariance2_covariance_avm_enable = i_llvm_fpga_mem_unnamed_covariance2_covariance23_out_unnamed_covariance2_covariance_avm_enable;
    assign out_unnamed_covariance2_covariance_avm_read = i_llvm_fpga_mem_unnamed_covariance2_covariance23_out_unnamed_covariance2_covariance_avm_read;
    assign out_unnamed_covariance2_covariance_avm_write = i_llvm_fpga_mem_unnamed_covariance2_covariance23_out_unnamed_covariance2_covariance_avm_write;
    assign out_unnamed_covariance2_covariance_avm_writedata = i_llvm_fpga_mem_unnamed_covariance2_covariance23_out_unnamed_covariance2_covariance_avm_writedata;
    assign out_unnamed_covariance2_covariance_avm_byteenable = i_llvm_fpga_mem_unnamed_covariance2_covariance23_out_unnamed_covariance2_covariance_avm_byteenable;
    assign out_unnamed_covariance2_covariance_avm_burstcount = i_llvm_fpga_mem_unnamed_covariance2_covariance23_out_unnamed_covariance2_covariance_avm_burstcount;

    // redist15_sync_together121_aunroll_x_in_i_valid_4(DELAY,215)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together121_aunroll_x_in_i_valid_4_delay_0 <= '0;
            redist15_sync_together121_aunroll_x_in_i_valid_4_delay_1 <= '0;
            redist15_sync_together121_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist15_sync_together121_aunroll_x_in_i_valid_4_delay_0 <= $unsigned(redist14_sync_together121_aunroll_x_in_i_valid_1_q);
            redist15_sync_together121_aunroll_x_in_i_valid_4_delay_1 <= redist15_sync_together121_aunroll_x_in_i_valid_4_delay_0;
            redist15_sync_together121_aunroll_x_in_i_valid_4_q <= redist15_sync_together121_aunroll_x_in_i_valid_4_delay_1;
        end
    end

    // valid_fanout_reg0(REG,147)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist15_sync_together121_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist13_sync_together121_aunroll_x_in_c0_eni13_13_tpl_5(DELAY,213)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together121_aunroll_x_in_c0_eni13_13_tpl_5_delay_0 <= '0;
            redist13_sync_together121_aunroll_x_in_c0_eni13_13_tpl_5_delay_1 <= '0;
            redist13_sync_together121_aunroll_x_in_c0_eni13_13_tpl_5_delay_2 <= '0;
            redist13_sync_together121_aunroll_x_in_c0_eni13_13_tpl_5_delay_3 <= '0;
            redist13_sync_together121_aunroll_x_in_c0_eni13_13_tpl_5_q <= '0;
        end
        else
        begin
            redist13_sync_together121_aunroll_x_in_c0_eni13_13_tpl_5_delay_0 <= $unsigned(in_c0_eni13_13_tpl);
            redist13_sync_together121_aunroll_x_in_c0_eni13_13_tpl_5_delay_1 <= redist13_sync_together121_aunroll_x_in_c0_eni13_13_tpl_5_delay_0;
            redist13_sync_together121_aunroll_x_in_c0_eni13_13_tpl_5_delay_2 <= redist13_sync_together121_aunroll_x_in_c0_eni13_13_tpl_5_delay_1;
            redist13_sync_together121_aunroll_x_in_c0_eni13_13_tpl_5_delay_3 <= redist13_sync_together121_aunroll_x_in_c0_eni13_13_tpl_5_delay_2;
            redist13_sync_together121_aunroll_x_in_c0_eni13_13_tpl_5_q <= redist13_sync_together121_aunroll_x_in_c0_eni13_13_tpl_5_delay_3;
        end
    end

    // redist12_sync_together121_aunroll_x_in_c0_eni13_12_tpl_5(DELAY,212)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together121_aunroll_x_in_c0_eni13_12_tpl_5_delay_0 <= '0;
            redist12_sync_together121_aunroll_x_in_c0_eni13_12_tpl_5_delay_1 <= '0;
            redist12_sync_together121_aunroll_x_in_c0_eni13_12_tpl_5_delay_2 <= '0;
            redist12_sync_together121_aunroll_x_in_c0_eni13_12_tpl_5_delay_3 <= '0;
            redist12_sync_together121_aunroll_x_in_c0_eni13_12_tpl_5_q <= '0;
        end
        else
        begin
            redist12_sync_together121_aunroll_x_in_c0_eni13_12_tpl_5_delay_0 <= $unsigned(in_c0_eni13_12_tpl);
            redist12_sync_together121_aunroll_x_in_c0_eni13_12_tpl_5_delay_1 <= redist12_sync_together121_aunroll_x_in_c0_eni13_12_tpl_5_delay_0;
            redist12_sync_together121_aunroll_x_in_c0_eni13_12_tpl_5_delay_2 <= redist12_sync_together121_aunroll_x_in_c0_eni13_12_tpl_5_delay_1;
            redist12_sync_together121_aunroll_x_in_c0_eni13_12_tpl_5_delay_3 <= redist12_sync_together121_aunroll_x_in_c0_eni13_12_tpl_5_delay_2;
            redist12_sync_together121_aunroll_x_in_c0_eni13_12_tpl_5_q <= redist12_sync_together121_aunroll_x_in_c0_eni13_12_tpl_5_delay_3;
        end
    end

    // redist11_sync_together121_aunroll_x_in_c0_eni13_11_tpl_5(DELAY,211)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together121_aunroll_x_in_c0_eni13_11_tpl_5_delay_0 <= '0;
            redist11_sync_together121_aunroll_x_in_c0_eni13_11_tpl_5_delay_1 <= '0;
            redist11_sync_together121_aunroll_x_in_c0_eni13_11_tpl_5_delay_2 <= '0;
            redist11_sync_together121_aunroll_x_in_c0_eni13_11_tpl_5_delay_3 <= '0;
            redist11_sync_together121_aunroll_x_in_c0_eni13_11_tpl_5_q <= '0;
        end
        else
        begin
            redist11_sync_together121_aunroll_x_in_c0_eni13_11_tpl_5_delay_0 <= $unsigned(in_c0_eni13_11_tpl);
            redist11_sync_together121_aunroll_x_in_c0_eni13_11_tpl_5_delay_1 <= redist11_sync_together121_aunroll_x_in_c0_eni13_11_tpl_5_delay_0;
            redist11_sync_together121_aunroll_x_in_c0_eni13_11_tpl_5_delay_2 <= redist11_sync_together121_aunroll_x_in_c0_eni13_11_tpl_5_delay_1;
            redist11_sync_together121_aunroll_x_in_c0_eni13_11_tpl_5_delay_3 <= redist11_sync_together121_aunroll_x_in_c0_eni13_11_tpl_5_delay_2;
            redist11_sync_together121_aunroll_x_in_c0_eni13_11_tpl_5_q <= redist11_sync_together121_aunroll_x_in_c0_eni13_11_tpl_5_delay_3;
        end
    end

    // redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_notEnable(LOGICAL,233)
    assign redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_nor(LOGICAL,234)
    assign redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_nor_q = ~ (redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_notEnable_q | redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_sticky_ena_q);

    // redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_mem_last(CONSTANT,230)
    assign redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_cmp(LOGICAL,231)
    assign redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_cmp_b = {1'b0, redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_rdcnt_q};
    assign redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_cmp_q = $unsigned(redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_mem_last_q == redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_cmpReg(REG,232)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_cmpReg_q <= $unsigned(redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_cmp_q);
        end
    end

    // redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_sticky_ena(REG,235)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_nor_q == 1'b1)
        begin
            redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_sticky_ena_q <= $unsigned(redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_cmpReg_q);
        end
    end

    // redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_enaAnd(LOGICAL,236)
    assign redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_enaAnd_q = redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_sticky_ena_q & VCC_q;

    // redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_rdcnt(COUNTER,228)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_rdcnt_i <= $unsigned(redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_rdcnt_q = redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_rdcnt_i[1:0];

    // redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_wraddr(REG,229)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_wraddr_q <= $unsigned(redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_rdcnt_q);
        end
    end

    // redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_mem(DUALMEM,227)
    assign redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_mem_ia = $unsigned(in_c0_eni13_10_tpl);
    assign redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_mem_aa = redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_wraddr_q;
    assign redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_mem_ab = redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_rdcnt_q;
    assign redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_mem_dmem (
        .clocken1(redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_mem_aa),
        .data_a(redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_mem_ab),
        .q_b(redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_mem_iq),
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
    assign redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_mem_q = redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_mem_iq[31:0];

    // valid_fanout_reg23(REG,170)@1 + 1
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

    // valid_fanout_reg24(REG,171)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg24_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_notcmp6596_push42_covariance49(BLACKBOX,86)@2
    // out out_feedback_out_42@20000000
    // out out_feedback_valid_out_42@20000000
    covariance_i_llvm_fpga_push_i1_notcmp6596_push42_0 thei_llvm_fpga_push_i1_notcmp6596_push42_covariance49 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp6596_pop42_covariance48_out_data_out),
        .in_feedback_stall_in_42(i_llvm_fpga_pop_i1_notcmp6596_pop42_covariance48_out_feedback_stall_out_42),
        .in_keep_going53(redist23_i_llvm_fpga_pipeline_keep_going53_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_data_out(),
        .out_feedback_out_42(i_llvm_fpga_push_i1_notcmp6596_push42_covariance49_out_feedback_out_42),
        .out_feedback_valid_out_42(i_llvm_fpga_push_i1_notcmp6596_push42_covariance49_out_feedback_valid_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_sync_together121_aunroll_x_in_c0_eni13_9_tpl_1(DELAY,209)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together121_aunroll_x_in_c0_eni13_9_tpl_1_q <= '0;
        end
        else
        begin
            redist9_sync_together121_aunroll_x_in_c0_eni13_9_tpl_1_q <= $unsigned(in_c0_eni13_9_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp6596_pop42_covariance48(BLACKBOX,72)@2
    // out out_feedback_stall_out_42@20000000
    covariance_i_llvm_fpga_pop_i1_notcmp6596_pop42_0 thei_llvm_fpga_pop_i1_notcmp6596_pop42_covariance48 (
        .in_data_in(redist9_sync_together121_aunroll_x_in_c0_eni13_9_tpl_1_q),
        .in_dir(redist0_sync_together121_aunroll_x_in_c0_eni13_1_tpl_1_q),
        .in_feedback_in_42(i_llvm_fpga_push_i1_notcmp6596_push42_covariance49_out_feedback_out_42),
        .in_feedback_valid_in_42(i_llvm_fpga_push_i1_notcmp6596_push42_covariance49_out_feedback_valid_out_42),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp6596_pop42_covariance48_out_data_out),
        .out_feedback_stall_out_42(i_llvm_fpga_pop_i1_notcmp6596_pop42_covariance48_out_feedback_stall_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist18_i_llvm_fpga_pop_i1_notcmp6596_pop42_covariance48_out_data_out_4(DELAY,218)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_pop_i1_notcmp6596_pop42_covariance48_out_data_out_4_delay_0 <= '0;
            redist18_i_llvm_fpga_pop_i1_notcmp6596_pop42_covariance48_out_data_out_4_delay_1 <= '0;
            redist18_i_llvm_fpga_pop_i1_notcmp6596_pop42_covariance48_out_data_out_4_delay_2 <= '0;
            redist18_i_llvm_fpga_pop_i1_notcmp6596_pop42_covariance48_out_data_out_4_q <= '0;
        end
        else
        begin
            redist18_i_llvm_fpga_pop_i1_notcmp6596_pop42_covariance48_out_data_out_4_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_notcmp6596_pop42_covariance48_out_data_out);
            redist18_i_llvm_fpga_pop_i1_notcmp6596_pop42_covariance48_out_data_out_4_delay_1 <= redist18_i_llvm_fpga_pop_i1_notcmp6596_pop42_covariance48_out_data_out_4_delay_0;
            redist18_i_llvm_fpga_pop_i1_notcmp6596_pop42_covariance48_out_data_out_4_delay_2 <= redist18_i_llvm_fpga_pop_i1_notcmp6596_pop42_covariance48_out_data_out_4_delay_1;
            redist18_i_llvm_fpga_pop_i1_notcmp6596_pop42_covariance48_out_data_out_4_q <= redist18_i_llvm_fpga_pop_i1_notcmp6596_pop42_covariance48_out_data_out_4_delay_2;
        end
    end

    // valid_fanout_reg21(REG,168)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist15_sync_together121_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg22(REG,169)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg22_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist15_sync_together121_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_exitcond1094_push41_covariance47(BLACKBOX,80)@6
    // out out_feedback_out_41@20000000
    // out out_feedback_valid_out_41@20000000
    covariance_i_llvm_fpga_push_i1_exitcond1094_push41_0 thei_llvm_fpga_push_i1_exitcond1094_push41_covariance47 (
        .in_data_in(i_llvm_fpga_pop_i1_exitcond1094_pop41_covariance46_out_data_out),
        .in_feedback_stall_in_41(i_llvm_fpga_pop_i1_exitcond1094_pop41_covariance46_out_feedback_stall_out_41),
        .in_keep_going53(redist25_i_llvm_fpga_pipeline_keep_going53_covariance6_out_data_out_5_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(),
        .out_feedback_out_41(i_llvm_fpga_push_i1_exitcond1094_push41_covariance47_out_feedback_out_41),
        .out_feedback_valid_out_41(i_llvm_fpga_push_i1_exitcond1094_push41_covariance47_out_feedback_valid_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together121_aunroll_x_in_c0_eni13_1_tpl_5(DELAY,201)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together121_aunroll_x_in_c0_eni13_1_tpl_5_delay_0 <= '0;
            redist1_sync_together121_aunroll_x_in_c0_eni13_1_tpl_5_delay_1 <= '0;
            redist1_sync_together121_aunroll_x_in_c0_eni13_1_tpl_5_delay_2 <= '0;
            redist1_sync_together121_aunroll_x_in_c0_eni13_1_tpl_5_q <= '0;
        end
        else
        begin
            redist1_sync_together121_aunroll_x_in_c0_eni13_1_tpl_5_delay_0 <= $unsigned(redist0_sync_together121_aunroll_x_in_c0_eni13_1_tpl_1_q);
            redist1_sync_together121_aunroll_x_in_c0_eni13_1_tpl_5_delay_1 <= redist1_sync_together121_aunroll_x_in_c0_eni13_1_tpl_5_delay_0;
            redist1_sync_together121_aunroll_x_in_c0_eni13_1_tpl_5_delay_2 <= redist1_sync_together121_aunroll_x_in_c0_eni13_1_tpl_5_delay_1;
            redist1_sync_together121_aunroll_x_in_c0_eni13_1_tpl_5_q <= redist1_sync_together121_aunroll_x_in_c0_eni13_1_tpl_5_delay_2;
        end
    end

    // redist8_sync_together121_aunroll_x_in_c0_eni13_8_tpl_5(DELAY,208)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together121_aunroll_x_in_c0_eni13_8_tpl_5_delay_0 <= '0;
            redist8_sync_together121_aunroll_x_in_c0_eni13_8_tpl_5_delay_1 <= '0;
            redist8_sync_together121_aunroll_x_in_c0_eni13_8_tpl_5_delay_2 <= '0;
            redist8_sync_together121_aunroll_x_in_c0_eni13_8_tpl_5_delay_3 <= '0;
            redist8_sync_together121_aunroll_x_in_c0_eni13_8_tpl_5_q <= '0;
        end
        else
        begin
            redist8_sync_together121_aunroll_x_in_c0_eni13_8_tpl_5_delay_0 <= $unsigned(in_c0_eni13_8_tpl);
            redist8_sync_together121_aunroll_x_in_c0_eni13_8_tpl_5_delay_1 <= redist8_sync_together121_aunroll_x_in_c0_eni13_8_tpl_5_delay_0;
            redist8_sync_together121_aunroll_x_in_c0_eni13_8_tpl_5_delay_2 <= redist8_sync_together121_aunroll_x_in_c0_eni13_8_tpl_5_delay_1;
            redist8_sync_together121_aunroll_x_in_c0_eni13_8_tpl_5_delay_3 <= redist8_sync_together121_aunroll_x_in_c0_eni13_8_tpl_5_delay_2;
            redist8_sync_together121_aunroll_x_in_c0_eni13_8_tpl_5_q <= redist8_sync_together121_aunroll_x_in_c0_eni13_8_tpl_5_delay_3;
        end
    end

    // i_llvm_fpga_pop_i1_exitcond1094_pop41_covariance46(BLACKBOX,67)@6
    // out out_feedback_stall_out_41@20000000
    covariance_i_llvm_fpga_pop_i1_exitcond1094_pop41_0 thei_llvm_fpga_pop_i1_exitcond1094_pop41_covariance46 (
        .in_data_in(redist8_sync_together121_aunroll_x_in_c0_eni13_8_tpl_5_q),
        .in_dir(redist1_sync_together121_aunroll_x_in_c0_eni13_1_tpl_5_q),
        .in_feedback_in_41(i_llvm_fpga_push_i1_exitcond1094_push41_covariance47_out_feedback_out_41),
        .in_feedback_valid_in_41(i_llvm_fpga_push_i1_exitcond1094_push41_covariance47_out_feedback_valid_out_41),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond1094_pop41_covariance46_out_data_out),
        .out_feedback_stall_out_41(i_llvm_fpga_pop_i1_exitcond1094_pop41_covariance46_out_feedback_stall_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg19(REG,166)@1 + 1
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

    // valid_fanout_reg20(REG,167)@1 + 1
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

    // i_llvm_fpga_push_i1_memdep_phi4_pop1888_push40_covariance45(BLACKBOX,84)@2
    // out out_feedback_out_40@20000000
    // out out_feedback_valid_out_40@20000000
    covariance_i_llvm_fpga_push_i1_memdep_phi4_pop1888_push40_0 thei_llvm_fpga_push_i1_memdep_phi4_pop1888_push40_covariance45 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi4_pop1888_pop40_covariance44_out_data_out),
        .in_feedback_stall_in_40(i_llvm_fpga_pop_i1_memdep_phi4_pop1888_pop40_covariance44_out_feedback_stall_out_40),
        .in_keep_going53(redist23_i_llvm_fpga_pipeline_keep_going53_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(),
        .out_feedback_out_40(i_llvm_fpga_push_i1_memdep_phi4_pop1888_push40_covariance45_out_feedback_out_40),
        .out_feedback_valid_out_40(i_llvm_fpga_push_i1_memdep_phi4_pop1888_push40_covariance45_out_feedback_valid_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together121_aunroll_x_in_c0_eni13_7_tpl_1(DELAY,207)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together121_aunroll_x_in_c0_eni13_7_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together121_aunroll_x_in_c0_eni13_7_tpl_1_q <= $unsigned(in_c0_eni13_7_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi4_pop1888_pop40_covariance44(BLACKBOX,70)@2
    // out out_feedback_stall_out_40@20000000
    covariance_i_llvm_fpga_pop_i1_memdep_phi4_pop1888_pop40_0 thei_llvm_fpga_pop_i1_memdep_phi4_pop1888_pop40_covariance44 (
        .in_data_in(redist7_sync_together121_aunroll_x_in_c0_eni13_7_tpl_1_q),
        .in_dir(redist0_sync_together121_aunroll_x_in_c0_eni13_1_tpl_1_q),
        .in_feedback_in_40(i_llvm_fpga_push_i1_memdep_phi4_pop1888_push40_covariance45_out_feedback_out_40),
        .in_feedback_valid_in_40(i_llvm_fpga_push_i1_memdep_phi4_pop1888_push40_covariance45_out_feedback_valid_out_40),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi4_pop1888_pop40_covariance44_out_data_out),
        .out_feedback_stall_out_40(i_llvm_fpga_pop_i1_memdep_phi4_pop1888_pop40_covariance44_out_feedback_stall_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist19_i_llvm_fpga_pop_i1_memdep_phi4_pop1888_pop40_covariance44_out_data_out_4(DELAY,219)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_pop_i1_memdep_phi4_pop1888_pop40_covariance44_out_data_out_4_delay_0 <= '0;
            redist19_i_llvm_fpga_pop_i1_memdep_phi4_pop1888_pop40_covariance44_out_data_out_4_delay_1 <= '0;
            redist19_i_llvm_fpga_pop_i1_memdep_phi4_pop1888_pop40_covariance44_out_data_out_4_delay_2 <= '0;
            redist19_i_llvm_fpga_pop_i1_memdep_phi4_pop1888_pop40_covariance44_out_data_out_4_q <= '0;
        end
        else
        begin
            redist19_i_llvm_fpga_pop_i1_memdep_phi4_pop1888_pop40_covariance44_out_data_out_4_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi4_pop1888_pop40_covariance44_out_data_out);
            redist19_i_llvm_fpga_pop_i1_memdep_phi4_pop1888_pop40_covariance44_out_data_out_4_delay_1 <= redist19_i_llvm_fpga_pop_i1_memdep_phi4_pop1888_pop40_covariance44_out_data_out_4_delay_0;
            redist19_i_llvm_fpga_pop_i1_memdep_phi4_pop1888_pop40_covariance44_out_data_out_4_delay_2 <= redist19_i_llvm_fpga_pop_i1_memdep_phi4_pop1888_pop40_covariance44_out_data_out_4_delay_1;
            redist19_i_llvm_fpga_pop_i1_memdep_phi4_pop1888_pop40_covariance44_out_data_out_4_q <= redist19_i_llvm_fpga_pop_i1_memdep_phi4_pop1888_pop40_covariance44_out_data_out_4_delay_2;
        end
    end

    // valid_fanout_reg17(REG,164)@1 + 1
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

    // valid_fanout_reg18(REG,165)@1 + 1
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

    // i_llvm_fpga_push_i1_memdep_phi2_pop1785_push39_covariance43(BLACKBOX,83)@2
    // out out_feedback_out_39@20000000
    // out out_feedback_valid_out_39@20000000
    covariance_i_llvm_fpga_push_i1_memdep_phi2_pop1785_push39_0 thei_llvm_fpga_push_i1_memdep_phi2_pop1785_push39_covariance43 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi2_pop1785_pop39_covariance42_out_data_out),
        .in_feedback_stall_in_39(i_llvm_fpga_pop_i1_memdep_phi2_pop1785_pop39_covariance42_out_feedback_stall_out_39),
        .in_keep_going53(redist23_i_llvm_fpga_pipeline_keep_going53_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(),
        .out_feedback_out_39(i_llvm_fpga_push_i1_memdep_phi2_pop1785_push39_covariance43_out_feedback_out_39),
        .out_feedback_valid_out_39(i_llvm_fpga_push_i1_memdep_phi2_pop1785_push39_covariance43_out_feedback_valid_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together121_aunroll_x_in_c0_eni13_6_tpl_1(DELAY,206)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together121_aunroll_x_in_c0_eni13_6_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together121_aunroll_x_in_c0_eni13_6_tpl_1_q <= $unsigned(in_c0_eni13_6_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi2_pop1785_pop39_covariance42(BLACKBOX,69)@2
    // out out_feedback_stall_out_39@20000000
    covariance_i_llvm_fpga_pop_i1_memdep_phi2_pop1785_pop39_0 thei_llvm_fpga_pop_i1_memdep_phi2_pop1785_pop39_covariance42 (
        .in_data_in(redist6_sync_together121_aunroll_x_in_c0_eni13_6_tpl_1_q),
        .in_dir(redist0_sync_together121_aunroll_x_in_c0_eni13_1_tpl_1_q),
        .in_feedback_in_39(i_llvm_fpga_push_i1_memdep_phi2_pop1785_push39_covariance43_out_feedback_out_39),
        .in_feedback_valid_in_39(i_llvm_fpga_push_i1_memdep_phi2_pop1785_push39_covariance43_out_feedback_valid_out_39),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi2_pop1785_pop39_covariance42_out_data_out),
        .out_feedback_stall_out_39(i_llvm_fpga_pop_i1_memdep_phi2_pop1785_pop39_covariance42_out_feedback_stall_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist20_i_llvm_fpga_pop_i1_memdep_phi2_pop1785_pop39_covariance42_out_data_out_4(DELAY,220)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pop_i1_memdep_phi2_pop1785_pop39_covariance42_out_data_out_4_delay_0 <= '0;
            redist20_i_llvm_fpga_pop_i1_memdep_phi2_pop1785_pop39_covariance42_out_data_out_4_delay_1 <= '0;
            redist20_i_llvm_fpga_pop_i1_memdep_phi2_pop1785_pop39_covariance42_out_data_out_4_delay_2 <= '0;
            redist20_i_llvm_fpga_pop_i1_memdep_phi2_pop1785_pop39_covariance42_out_data_out_4_q <= '0;
        end
        else
        begin
            redist20_i_llvm_fpga_pop_i1_memdep_phi2_pop1785_pop39_covariance42_out_data_out_4_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi2_pop1785_pop39_covariance42_out_data_out);
            redist20_i_llvm_fpga_pop_i1_memdep_phi2_pop1785_pop39_covariance42_out_data_out_4_delay_1 <= redist20_i_llvm_fpga_pop_i1_memdep_phi2_pop1785_pop39_covariance42_out_data_out_4_delay_0;
            redist20_i_llvm_fpga_pop_i1_memdep_phi2_pop1785_pop39_covariance42_out_data_out_4_delay_2 <= redist20_i_llvm_fpga_pop_i1_memdep_phi2_pop1785_pop39_covariance42_out_data_out_4_delay_1;
            redist20_i_llvm_fpga_pop_i1_memdep_phi2_pop1785_pop39_covariance42_out_data_out_4_q <= redist20_i_llvm_fpga_pop_i1_memdep_phi2_pop1785_pop39_covariance42_out_data_out_4_delay_2;
        end
    end

    // redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_notEnable(LOGICAL,243)
    assign redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_nor(LOGICAL,244)
    assign redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_nor_q = ~ (redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_notEnable_q | redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_sticky_ena_q);

    // redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_mem_last(CONSTANT,240)
    assign redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_mem_last_q = $unsigned(2'b01);

    // redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_cmp(LOGICAL,241)
    assign redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_cmp_q = $unsigned(redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_mem_last_q == redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_cmpReg(REG,242)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_cmpReg_q <= $unsigned(redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_cmp_q);
        end
    end

    // redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_sticky_ena(REG,245)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_nor_q == 1'b1)
        begin
            redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_sticky_ena_q <= $unsigned(redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_cmpReg_q);
        end
    end

    // redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_enaAnd(LOGICAL,246)
    assign redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_enaAnd_q = redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_sticky_ena_q & VCC_q;

    // redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_rdcnt(COUNTER,238)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_rdcnt_i <= 2'd0;
            redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_rdcnt_i == 2'd1)
            begin
                redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_rdcnt_eq <= 1'b0;
            end
            if (redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_rdcnt_eq == 1'b1)
            begin
                redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_rdcnt_i <= $unsigned(redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_rdcnt_i <= $unsigned(redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_rdcnt_q = redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_rdcnt_i[1:0];

    // valid_fanout_reg15(REG,162)@1 + 1
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

    // valid_fanout_reg16(REG,163)@1 + 1
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

    // i_llvm_fpga_push_i32_lim_ext76_push37_covariance41(BLACKBOX,92)@2
    // out out_feedback_out_37@20000000
    // out out_feedback_valid_out_37@20000000
    covariance_i_llvm_fpga_push_i32_lim_ext76_push37_0 thei_llvm_fpga_push_i32_lim_ext76_push37_covariance41 (
        .in_data_in(i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out),
        .in_feedback_stall_in_37(i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_feedback_stall_out_37),
        .in_keep_going53(redist23_i_llvm_fpga_pipeline_keep_going53_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(),
        .out_feedback_out_37(i_llvm_fpga_push_i32_lim_ext76_push37_covariance41_out_feedback_out_37),
        .out_feedback_valid_out_37(i_llvm_fpga_push_i32_lim_ext76_push37_covariance41_out_feedback_valid_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together121_aunroll_x_in_c0_eni13_5_tpl_1(DELAY,205)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together121_aunroll_x_in_c0_eni13_5_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together121_aunroll_x_in_c0_eni13_5_tpl_1_q <= $unsigned(in_c0_eni13_5_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40(BLACKBOX,77)@2
    // out out_feedback_stall_out_37@20000000
    covariance_i_llvm_fpga_pop_i32_lim_ext76_pop37_0 thei_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40 (
        .in_data_in(redist5_sync_together121_aunroll_x_in_c0_eni13_5_tpl_1_q),
        .in_dir(redist0_sync_together121_aunroll_x_in_c0_eni13_1_tpl_1_q),
        .in_feedback_in_37(i_llvm_fpga_push_i32_lim_ext76_push37_covariance41_out_feedback_out_37),
        .in_feedback_valid_in_37(i_llvm_fpga_push_i32_lim_ext76_push37_covariance41_out_feedback_valid_out_37),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out),
        .out_feedback_stall_out_37(i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_feedback_stall_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_wraddr(REG,239)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_wraddr_q <= $unsigned(redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_rdcnt_q);
        end
    end

    // redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_mem(DUALMEM,237)
    assign redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_mem_ia = $unsigned(i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out);
    assign redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_mem_aa = redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_wraddr_q;
    assign redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_mem_ab = redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_rdcnt_q;
    assign redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_mem_reset0 = ~ (resetn);
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
    ) redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_mem_dmem (
        .clocken1(redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_mem_reset0),
        .clock1(clock),
        .address_a(redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_mem_aa),
        .data_a(redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_mem_ab),
        .q_b(redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_mem_iq),
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
    assign redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_mem_q = redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_mem_iq[31:0];

    // i_masked62_covariance39(LOGICAL,95)@2 + 1
    assign i_masked62_covariance39_qi = i_notcmp49_covariance32_q & i_first_cleanup58_covariance3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked62_covariance39_delay ( .xin(i_masked62_covariance39_qi), .xout(i_masked62_covariance39_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist16_i_masked62_covariance39_q_4(DELAY,216)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_masked62_covariance39_q_4_delay_0 <= '0;
            redist16_i_masked62_covariance39_q_4_delay_1 <= '0;
            redist16_i_masked62_covariance39_q_4_q <= '0;
        end
        else
        begin
            redist16_i_masked62_covariance39_q_4_delay_0 <= $unsigned(i_masked62_covariance39_q);
            redist16_i_masked62_covariance39_q_4_delay_1 <= redist16_i_masked62_covariance39_q_4_delay_0;
            redist16_i_masked62_covariance39_q_4_q <= redist16_i_masked62_covariance39_q_4_delay_1;
        end
    end

    // valid_fanout_reg12(REG,159)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist15_sync_together121_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg13(REG,160)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist15_sync_together121_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i32_m_036_push34_covariance26(BLACKBOX,93)@6
    // out out_feedback_out_34@20000000
    // out out_feedback_valid_out_34@20000000
    covariance_i_llvm_fpga_push_i32_m_036_push34_0 thei_llvm_fpga_push_i32_m_036_push34_covariance26 (
        .in_data_in(bgTrunc_i_add_covariance25_sel_x_b),
        .in_feedback_stall_in_34(i_llvm_fpga_pop_i32_m_036_pop34_covariance24_out_feedback_stall_out_34),
        .in_keep_going53(redist25_i_llvm_fpga_pipeline_keep_going53_covariance6_out_data_out_5_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_34(i_llvm_fpga_push_i32_m_036_push34_covariance26_out_feedback_out_34),
        .out_feedback_valid_out_34(i_llvm_fpga_push_i32_m_036_push34_covariance26_out_feedback_valid_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_m_036_pop34_covariance24(BLACKBOX,78)@6
    // out out_feedback_stall_out_34@20000000
    covariance_i_llvm_fpga_pop_i32_m_036_pop34_0 thei_llvm_fpga_pop_i32_m_036_pop34_covariance24 (
        .in_data_in(c_i32_083_q),
        .in_dir(redist1_sync_together121_aunroll_x_in_c0_eni13_1_tpl_5_q),
        .in_feedback_in_34(i_llvm_fpga_push_i32_m_036_push34_covariance26_out_feedback_out_34),
        .in_feedback_valid_in_34(i_llvm_fpga_push_i32_m_036_push34_covariance26_out_feedback_valid_out_34),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(i_llvm_fpga_pop_i32_m_036_pop34_covariance24_out_data_out),
        .out_feedback_stall_out_34(i_llvm_fpga_pop_i32_m_036_pop34_covariance24_out_feedback_stall_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add_covariance25(ADD,44)@6
    assign i_add_covariance25_a = {1'b0, i_llvm_fpga_mem_unnamed_covariance2_covariance23_out_o_readdata};
    assign i_add_covariance25_b = {1'b0, i_llvm_fpga_pop_i32_m_036_pop34_covariance24_out_data_out};
    assign i_add_covariance25_o = $unsigned(i_add_covariance25_a) + $unsigned(i_add_covariance25_b);
    assign i_add_covariance25_q = i_add_covariance25_o[32:0];

    // bgTrunc_i_add_covariance25_sel_x(BITSELECT,108)@6
    assign bgTrunc_i_add_covariance25_sel_x_b = i_add_covariance25_q[31:0];

    // redist22_i_llvm_fpga_pop_i1_memdep_phi1_pop1682_pop38_covariance18_out_data_out_4(DELAY,222)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_pop_i1_memdep_phi1_pop1682_pop38_covariance18_out_data_out_4_delay_0 <= '0;
            redist22_i_llvm_fpga_pop_i1_memdep_phi1_pop1682_pop38_covariance18_out_data_out_4_delay_1 <= '0;
            redist22_i_llvm_fpga_pop_i1_memdep_phi1_pop1682_pop38_covariance18_out_data_out_4_q <= '0;
        end
        else
        begin
            redist22_i_llvm_fpga_pop_i1_memdep_phi1_pop1682_pop38_covariance18_out_data_out_4_delay_0 <= $unsigned(redist21_i_llvm_fpga_pop_i1_memdep_phi1_pop1682_pop38_covariance18_out_data_out_1_q);
            redist22_i_llvm_fpga_pop_i1_memdep_phi1_pop1682_pop38_covariance18_out_data_out_4_delay_1 <= redist22_i_llvm_fpga_pop_i1_memdep_phi1_pop1682_pop38_covariance18_out_data_out_4_delay_0;
            redist22_i_llvm_fpga_pop_i1_memdep_phi1_pop1682_pop38_covariance18_out_data_out_4_q <= redist22_i_llvm_fpga_pop_i1_memdep_phi1_pop1682_pop38_covariance18_out_data_out_4_delay_1;
        end
    end

    // redist26_i_idxprom7_covariance14_vt_join_q_4_notEnable(LOGICAL,253)
    assign redist26_i_idxprom7_covariance14_vt_join_q_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist26_i_idxprom7_covariance14_vt_join_q_4_nor(LOGICAL,254)
    assign redist26_i_idxprom7_covariance14_vt_join_q_4_nor_q = ~ (redist26_i_idxprom7_covariance14_vt_join_q_4_notEnable_q | redist26_i_idxprom7_covariance14_vt_join_q_4_sticky_ena_q);

    // redist26_i_idxprom7_covariance14_vt_join_q_4_mem_last(CONSTANT,250)
    assign redist26_i_idxprom7_covariance14_vt_join_q_4_mem_last_q = $unsigned(2'b01);

    // redist26_i_idxprom7_covariance14_vt_join_q_4_cmp(LOGICAL,251)
    assign redist26_i_idxprom7_covariance14_vt_join_q_4_cmp_q = $unsigned(redist26_i_idxprom7_covariance14_vt_join_q_4_mem_last_q == redist26_i_idxprom7_covariance14_vt_join_q_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist26_i_idxprom7_covariance14_vt_join_q_4_cmpReg(REG,252)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_idxprom7_covariance14_vt_join_q_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist26_i_idxprom7_covariance14_vt_join_q_4_cmpReg_q <= $unsigned(redist26_i_idxprom7_covariance14_vt_join_q_4_cmp_q);
        end
    end

    // redist26_i_idxprom7_covariance14_vt_join_q_4_sticky_ena(REG,255)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_idxprom7_covariance14_vt_join_q_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist26_i_idxprom7_covariance14_vt_join_q_4_nor_q == 1'b1)
        begin
            redist26_i_idxprom7_covariance14_vt_join_q_4_sticky_ena_q <= $unsigned(redist26_i_idxprom7_covariance14_vt_join_q_4_cmpReg_q);
        end
    end

    // redist26_i_idxprom7_covariance14_vt_join_q_4_enaAnd(LOGICAL,256)
    assign redist26_i_idxprom7_covariance14_vt_join_q_4_enaAnd_q = redist26_i_idxprom7_covariance14_vt_join_q_4_sticky_ena_q & VCC_q;

    // redist26_i_idxprom7_covariance14_vt_join_q_4_rdcnt(COUNTER,248)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_idxprom7_covariance14_vt_join_q_4_rdcnt_i <= 2'd0;
            redist26_i_idxprom7_covariance14_vt_join_q_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist26_i_idxprom7_covariance14_vt_join_q_4_rdcnt_i == 2'd1)
            begin
                redist26_i_idxprom7_covariance14_vt_join_q_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist26_i_idxprom7_covariance14_vt_join_q_4_rdcnt_eq <= 1'b0;
            end
            if (redist26_i_idxprom7_covariance14_vt_join_q_4_rdcnt_eq == 1'b1)
            begin
                redist26_i_idxprom7_covariance14_vt_join_q_4_rdcnt_i <= $unsigned(redist26_i_idxprom7_covariance14_vt_join_q_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist26_i_idxprom7_covariance14_vt_join_q_4_rdcnt_i <= $unsigned(redist26_i_idxprom7_covariance14_vt_join_q_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist26_i_idxprom7_covariance14_vt_join_q_4_rdcnt_q = redist26_i_idxprom7_covariance14_vt_join_q_4_rdcnt_i[1:0];

    // redist26_i_idxprom7_covariance14_vt_join_q_4_wraddr(REG,249)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_idxprom7_covariance14_vt_join_q_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist26_i_idxprom7_covariance14_vt_join_q_4_wraddr_q <= $unsigned(redist26_i_idxprom7_covariance14_vt_join_q_4_rdcnt_q);
        end
    end

    // redist26_i_idxprom7_covariance14_vt_join_q_4_mem(DUALMEM,247)
    assign redist26_i_idxprom7_covariance14_vt_join_q_4_mem_ia = $unsigned(i_idxprom7_covariance14_vt_join_q);
    assign redist26_i_idxprom7_covariance14_vt_join_q_4_mem_aa = redist26_i_idxprom7_covariance14_vt_join_q_4_wraddr_q;
    assign redist26_i_idxprom7_covariance14_vt_join_q_4_mem_ab = redist26_i_idxprom7_covariance14_vt_join_q_4_rdcnt_q;
    assign redist26_i_idxprom7_covariance14_vt_join_q_4_mem_reset0 = ~ (resetn);
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
    ) redist26_i_idxprom7_covariance14_vt_join_q_4_mem_dmem (
        .clocken1(redist26_i_idxprom7_covariance14_vt_join_q_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist26_i_idxprom7_covariance14_vt_join_q_4_mem_reset0),
        .clock1(clock),
        .address_a(redist26_i_idxprom7_covariance14_vt_join_q_4_mem_aa),
        .data_a(redist26_i_idxprom7_covariance14_vt_join_q_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist26_i_idxprom7_covariance14_vt_join_q_4_mem_ab),
        .q_b(redist26_i_idxprom7_covariance14_vt_join_q_4_mem_iq),
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
    assign redist26_i_idxprom7_covariance14_vt_join_q_4_mem_q = redist26_i_idxprom7_covariance14_vt_join_q_4_mem_iq[63:0];

    // redist25_i_llvm_fpga_pipeline_keep_going53_covariance6_out_data_out_5(DELAY,225)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_pipeline_keep_going53_covariance6_out_data_out_5_delay_0 <= '0;
            redist25_i_llvm_fpga_pipeline_keep_going53_covariance6_out_data_out_5_delay_1 <= '0;
            redist25_i_llvm_fpga_pipeline_keep_going53_covariance6_out_data_out_5_q <= '0;
        end
        else
        begin
            redist25_i_llvm_fpga_pipeline_keep_going53_covariance6_out_data_out_5_delay_0 <= $unsigned(redist24_i_llvm_fpga_pipeline_keep_going53_covariance6_out_data_out_2_q);
            redist25_i_llvm_fpga_pipeline_keep_going53_covariance6_out_data_out_5_delay_1 <= redist25_i_llvm_fpga_pipeline_keep_going53_covariance6_out_data_out_5_delay_0;
            redist25_i_llvm_fpga_pipeline_keep_going53_covariance6_out_data_out_5_q <= redist25_i_llvm_fpga_pipeline_keep_going53_covariance6_out_data_out_5_delay_1;
        end
    end

    // sync_out_aunroll_x(GPOUT,145)@6
    assign out_c0_exi14_0_tpl = GND_q;
    assign out_c0_exi14_1_tpl = redist25_i_llvm_fpga_pipeline_keep_going53_covariance6_out_data_out_5_q;
    assign out_c0_exi14_2_tpl = redist26_i_idxprom7_covariance14_vt_join_q_4_mem_q;
    assign out_c0_exi14_3_tpl = redist22_i_llvm_fpga_pop_i1_memdep_phi1_pop1682_pop38_covariance18_out_data_out_4_q;
    assign out_c0_exi14_4_tpl = bgTrunc_i_add_covariance25_sel_x_b;
    assign out_c0_exi14_5_tpl = redist16_i_masked62_covariance39_q_4_q;
    assign out_c0_exi14_6_tpl = redist17_i_llvm_fpga_pop_i32_lim_ext76_pop37_covariance40_out_data_out_4_mem_q;
    assign out_c0_exi14_7_tpl = redist20_i_llvm_fpga_pop_i1_memdep_phi2_pop1785_pop39_covariance42_out_data_out_4_q;
    assign out_c0_exi14_8_tpl = redist19_i_llvm_fpga_pop_i1_memdep_phi4_pop1888_pop40_covariance44_out_data_out_4_q;
    assign out_c0_exi14_9_tpl = i_llvm_fpga_pop_i1_exitcond1094_pop41_covariance46_out_data_out;
    assign out_c0_exi14_10_tpl = redist18_i_llvm_fpga_pop_i1_notcmp6596_pop42_covariance48_out_data_out_4_q;
    assign out_c0_exi14_11_tpl = redist10_sync_together121_aunroll_x_in_c0_eni13_10_tpl_5_mem_q;
    assign out_c0_exi14_12_tpl = redist11_sync_together121_aunroll_x_in_c0_eni13_11_tpl_5_q;
    assign out_c0_exi14_13_tpl = redist12_sync_together121_aunroll_x_in_c0_eni13_12_tpl_5_q;
    assign out_c0_exi14_14_tpl = redist13_sync_together121_aunroll_x_in_c0_eni13_13_tpl_5_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_covariance0 = GND_q;

endmodule
