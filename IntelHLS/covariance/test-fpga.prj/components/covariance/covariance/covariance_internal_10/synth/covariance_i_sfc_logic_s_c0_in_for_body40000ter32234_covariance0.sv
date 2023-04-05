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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body45_covariances_c0_enter32234_covariance0
// Created for function/kernel covariance
// SystemVerilog created on Wed Apr  5 02:12:05 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_i_sfc_logic_s_c0_in_for_body40000ter32234_covariance0 (
    input wire [31:0] in_unnamed_covariance7_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance7_covariance_avm_writeack,
    input wire [0:0] in_unnamed_covariance7_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance7_covariance_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going73_covariance6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going73_covariance6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [31:0] in_memdep_2_covariance_avm_readdata,
    input wire [0:0] in_memdep_2_covariance_avm_writeack,
    input wire [0:0] in_memdep_2_covariance_avm_waitrequest,
    input wire [0:0] in_memdep_2_covariance_avm_readdatavalid,
    output wire [31:0] out_unnamed_covariance7_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance7_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance7_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance7_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance7_covariance_avm_writedata,
    output wire [3:0] out_unnamed_covariance7_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance7_covariance_avm_burstcount,
    output wire [31:0] out_memdep_2_covariance_avm_address,
    output wire [0:0] out_memdep_2_covariance_avm_enable,
    output wire [0:0] out_memdep_2_covariance_avm_read,
    output wire [0:0] out_memdep_2_covariance_avm_write,
    output wire [31:0] out_memdep_2_covariance_avm_writedata,
    output wire [3:0] out_memdep_2_covariance_avm_byteenable,
    output wire [0:0] out_memdep_2_covariance_avm_burstcount,
    output wire [0:0] out_c0_exi7336_0_tpl,
    output wire [0:0] out_c0_exi7336_1_tpl,
    output wire [0:0] out_c0_exi7336_2_tpl,
    output wire [0:0] out_c0_exi7336_3_tpl,
    output wire [31:0] out_c0_exi7336_4_tpl,
    output wire [0:0] out_c0_exi7336_5_tpl,
    output wire [0:0] out_c0_exi7336_6_tpl,
    output wire [31:0] out_c0_exi7336_7_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_covariance0,
    input wire [0:0] in_c0_eni7321_0_tpl,
    input wire [0:0] in_c0_eni7321_1_tpl,
    input wire [63:0] in_c0_eni7321_2_tpl,
    input wire [31:0] in_c0_eni7321_3_tpl,
    input wire [31:0] in_c0_eni7321_4_tpl,
    input wire [0:0] in_c0_eni7321_5_tpl,
    input wire [0:0] in_c0_eni7321_6_tpl,
    input wire [31:0] in_c0_eni7321_7_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_covariance_data_local_pmem_q;
    wire [1:0] c_i2_165_q;
    wire [31:0] c_i32_067_q;
    wire [31:0] c_i32_168_q;
    wire [5:0] c_i6_171_q;
    wire [5:0] c_i6_3069_q;
    wire [1:0] i_arrayidx494_covariance16_vt_const_1_q;
    wire [63:0] i_arrayidx494_covariance16_vt_join_q;
    wire [61:0] i_arrayidx494_covariance16_vt_select_63_b;
    wire [1:0] i_cleanups_shl77_covariance5_vt_join_q;
    wire [0:0] i_cleanups_shl77_covariance5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor79_covariance4_q;
    wire [6:0] i_fpga_indvars_iv_next12_covariance32_a;
    wire [6:0] i_fpga_indvars_iv_next12_covariance32_b;
    logic [6:0] i_fpga_indvars_iv_next12_covariance32_o;
    wire [6:0] i_fpga_indvars_iv_next12_covariance32_q;
    wire [63:0] i_idxprom46_covariance13_vt_join_q;
    wire [31:0] i_idxprom46_covariance13_vt_select_31_b;
    wire [32:0] i_inc51_covariance22_a;
    wire [32:0] i_inc51_covariance22_b;
    logic [32:0] i_inc51_covariance22_o;
    wire [32:0] i_inc51_covariance22_q;
    wire [31:0] i_llvm_fpga_mem_memdep_2_covariance21_out_memdep_2_covariance_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_2_covariance21_out_memdep_2_covariance_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_2_covariance21_out_memdep_2_covariance_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_2_covariance21_out_memdep_2_covariance_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_2_covariance21_out_memdep_2_covariance_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_2_covariance21_out_memdep_2_covariance_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_2_covariance21_out_memdep_2_covariance_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_2_covariance21_out_o_writeack;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance7_covariance17_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance7_covariance17_out_unnamed_covariance7_covariance_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance7_covariance17_out_unnamed_covariance7_covariance_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_covariance7_covariance17_out_unnamed_covariance7_covariance_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance7_covariance17_out_unnamed_covariance7_covariance_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance7_covariance17_out_unnamed_covariance7_covariance_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance7_covariance17_out_unnamed_covariance7_covariance_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance7_covariance17_out_unnamed_covariance7_covariance_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going73_covariance6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going73_covariance6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going73_covariance6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going73_covariance6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going73_covariance6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going73_covariance6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond16149_pop62_covariance37_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond16149_pop62_covariance37_out_feedback_stall_out_62;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp101151_pop63_covariance39_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp101151_pop63_covariance39_out_feedback_stall_out_63;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups76_pop60_covariance2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups76_pop60_covariance2_out_feedback_stall_out_60;
    wire [1:0] i_llvm_fpga_pop_i2_initerations71_pop59_covariance7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations71_pop59_covariance7_out_feedback_stall_out_59;
    wire [31:0] i_llvm_fpga_pop_i32_i41_061_pop58_covariance12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i41_061_pop58_covariance12_out_feedback_stall_out_58;
    wire [31:0] i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_feedback_stall_out_61;
    wire [31:0] i_llvm_fpga_pop_i32_mul154_pop64_covariance18_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul154_pop64_covariance18_out_feedback_stall_out_64;
    wire [63:0] i_llvm_fpga_pop_i64_idxprom36155_pop65_covariance14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_idxprom36155_pop65_covariance14_out_feedback_stall_out_65;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop57_covariance24_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop57_covariance24_out_feedback_stall_out_57;
    wire [0:0] i_llvm_fpga_push_i1_exitcond16149_push62_covariance38_out_feedback_out_62;
    wire [0:0] i_llvm_fpga_push_i1_exitcond16149_push62_covariance38_out_feedback_valid_out_62;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration75_covariance11_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration75_covariance11_out_feedback_valid_out_13;
    wire [0:0] i_llvm_fpga_push_i1_notcmp101151_push63_covariance40_out_feedback_out_63;
    wire [0:0] i_llvm_fpga_push_i1_notcmp101151_push63_covariance40_out_feedback_valid_out_63;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond83_covariance28_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond83_covariance28_out_feedback_valid_out_14;
    wire [7:0] i_llvm_fpga_push_i2_cleanups76_push60_covariance31_out_feedback_out_60;
    wire [0:0] i_llvm_fpga_push_i2_cleanups76_push60_covariance31_out_feedback_valid_out_60;
    wire [7:0] i_llvm_fpga_push_i2_initerations71_push59_covariance9_out_feedback_out_59;
    wire [0:0] i_llvm_fpga_push_i2_initerations71_push59_covariance9_out_feedback_valid_out_59;
    wire [31:0] i_llvm_fpga_push_i32_i41_061_push58_covariance23_out_feedback_out_58;
    wire [0:0] i_llvm_fpga_push_i32_i41_061_push58_covariance23_out_feedback_valid_out_58;
    wire [31:0] i_llvm_fpga_push_i32_lim_ext136_push61_covariance36_out_feedback_out_61;
    wire [0:0] i_llvm_fpga_push_i32_lim_ext136_push61_covariance36_out_feedback_valid_out_61;
    wire [31:0] i_llvm_fpga_push_i32_mul154_push64_covariance19_out_feedback_out_64;
    wire [0:0] i_llvm_fpga_push_i32_mul154_push64_covariance19_out_feedback_valid_out_64;
    wire [63:0] i_llvm_fpga_push_i64_idxprom36155_push65_covariance15_out_feedback_out_65;
    wire [0:0] i_llvm_fpga_push_i64_idxprom36155_push65_covariance15_out_feedback_valid_out_65;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv11_push57_covariance33_out_feedback_out_57;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv11_push57_covariance33_out_feedback_valid_out_57;
    wire [0:0] i_masked82_covariance34_qi;
    reg [0:0] i_masked82_covariance34_q;
    wire [0:0] i_next_cleanups81_covariance30_s;
    reg [1:0] i_next_cleanups81_covariance30_q;
    wire [1:0] i_next_initerations72_covariance8_vt_join_q;
    wire [0:0] i_next_initerations72_covariance8_vt_select_0_b;
    wire [0:0] i_notcmp69_covariance27_q;
    wire [0:0] i_or80_covariance29_q;
    wire [32:0] i_sub_covariance20_a;
    wire [32:0] i_sub_covariance20_b;
    logic [32:0] i_sub_covariance20_o;
    wire [32:0] i_sub_covariance20_q;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next12_covariance32_sel_x_b;
    wire [31:0] bgTrunc_i_inc51_covariance22_sel_x_b;
    wire [31:0] bgTrunc_i_sub_covariance20_sel_x_b;
    wire [12:0] i_arrayidx494_covariance0_add_x_a;
    wire [12:0] i_arrayidx494_covariance0_add_x_b;
    logic [12:0] i_arrayidx494_covariance0_add_x_o;
    wire [12:0] i_arrayidx494_covariance0_add_x_q;
    wire [63:0] i_arrayidx494_covariance0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx494_covariance0_c_i7_01_x_q;
    wire [4:0] i_arrayidx494_covariance0_narrow_x_b;
    wire [11:0] i_arrayidx494_covariance0_shift_join_x_q;
    wire [12:0] i_arrayidx494_covariance0_dupName_0_add_x_a;
    wire [12:0] i_arrayidx494_covariance0_dupName_0_add_x_b;
    logic [12:0] i_arrayidx494_covariance0_dupName_0_add_x_o;
    wire [12:0] i_arrayidx494_covariance0_dupName_0_add_x_q;
    wire [9:0] i_arrayidx494_covariance0_dupName_0_narrow_x_b;
    wire [11:0] i_arrayidx494_covariance0_dupName_0_shift_join_x_q;
    wire [11:0] i_arrayidx494_covariance0_dupName_0_trunc_sel_x_b;
    wire [11:0] i_arrayidx494_covariance0_dupName_2_trunc_sel_x_b;
    wire [11:0] i_arrayidx494_covariance0_dupName_3_trunc_sel_x_b;
    wire [11:0] i_arrayidx494_covariance0_dupName_5_trunc_sel_x_b;
    wire [0:0] i_first_cleanup78_covariance3_sel_x_b;
    wire [63:0] i_idxprom46_covariance13_sel_x_b;
    wire [0:0] i_last_initeration74_covariance10_sel_x_b;
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
    wire [0:0] i_exitcond13_covariance25_cmp_nsign_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid161_i_cleanups_shl77_covariance0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid161_i_cleanups_shl77_covariance0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid162_i_cleanups_shl77_covariance0_shift_x_q;
    wire [0:0] leftShiftStage0_uid164_i_cleanups_shl77_covariance0_shift_x_s;
    reg [1:0] leftShiftStage0_uid164_i_cleanups_shl77_covariance0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid168_i_next_initerations72_covariance0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid170_i_next_initerations72_covariance0_shift_x_q;
    wire [0:0] rightShiftStage0_uid172_i_next_initerations72_covariance0_shift_x_s;
    reg [1:0] rightShiftStage0_uid172_i_next_initerations72_covariance0_shift_x_q;
    wire [51:0] i_arrayidx494_covariance0_upper_bits_x_merged_bit_select_b;
    wire [11:0] i_arrayidx494_covariance0_upper_bits_x_merged_bit_select_c;
    reg [0:0] redist0_sync_together96_aunroll_x_in_c0_eni7321_1_tpl_1_q;
    reg [63:0] redist1_sync_together96_aunroll_x_in_c0_eni7321_2_tpl_1_q;
    reg [31:0] redist2_sync_together96_aunroll_x_in_c0_eni7321_3_tpl_1_q;
    reg [31:0] redist3_sync_together96_aunroll_x_in_c0_eni7321_4_tpl_1_q;
    reg [0:0] redist4_sync_together96_aunroll_x_in_c0_eni7321_5_tpl_1_q;
    reg [0:0] redist5_sync_together96_aunroll_x_in_c0_eni7321_6_tpl_1_q;
    reg [0:0] redist7_sync_together96_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist8_sync_together96_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist8_sync_together96_aunroll_x_in_i_valid_4_delay_0;
    reg [0:0] redist8_sync_together96_aunroll_x_in_i_valid_4_delay_1;
    reg [0:0] redist9_sync_together96_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist10_i_masked82_covariance34_q_5_q;
    reg [0:0] redist10_i_masked82_covariance34_q_5_delay_0;
    reg [0:0] redist10_i_masked82_covariance34_q_5_delay_1;
    reg [0:0] redist10_i_masked82_covariance34_q_5_delay_2;
    reg [31:0] redist11_i_llvm_fpga_pop_i32_mul154_pop64_covariance18_out_data_out_1_q;
    reg [31:0] redist12_i_llvm_fpga_pop_i32_mul154_pop64_covariance18_out_data_out_4_q;
    reg [31:0] redist12_i_llvm_fpga_pop_i32_mul154_pop64_covariance18_out_data_out_4_delay_0;
    reg [31:0] redist13_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_1_q;
    reg [0:0] redist15_i_llvm_fpga_pop_i1_notcmp101151_pop63_covariance39_out_data_out_5_q;
    reg [0:0] redist15_i_llvm_fpga_pop_i1_notcmp101151_pop63_covariance39_out_data_out_5_delay_0;
    reg [0:0] redist15_i_llvm_fpga_pop_i1_notcmp101151_pop63_covariance39_out_data_out_5_delay_1;
    reg [0:0] redist15_i_llvm_fpga_pop_i1_notcmp101151_pop63_covariance39_out_data_out_5_delay_2;
    reg [0:0] redist15_i_llvm_fpga_pop_i1_notcmp101151_pop63_covariance39_out_data_out_5_delay_3;
    reg [0:0] redist16_i_llvm_fpga_pop_i1_exitcond16149_pop62_covariance37_out_data_out_1_q;
    reg [0:0] redist17_i_llvm_fpga_pop_i1_exitcond16149_pop62_covariance37_out_data_out_5_q;
    reg [0:0] redist17_i_llvm_fpga_pop_i1_exitcond16149_pop62_covariance37_out_data_out_5_delay_0;
    reg [0:0] redist17_i_llvm_fpga_pop_i1_exitcond16149_pop62_covariance37_out_data_out_5_delay_1;
    reg [0:0] redist17_i_llvm_fpga_pop_i1_exitcond16149_pop62_covariance37_out_data_out_5_delay_2;
    reg [0:0] redist18_i_llvm_fpga_pipeline_keep_going73_covariance6_out_data_out_1_q;
    reg [0:0] redist19_i_llvm_fpga_pipeline_keep_going73_covariance6_out_data_out_2_q;
    reg [0:0] redist20_i_llvm_fpga_pipeline_keep_going73_covariance6_out_data_out_6_q;
    reg [0:0] redist20_i_llvm_fpga_pipeline_keep_going73_covariance6_out_data_out_6_delay_0;
    reg [0:0] redist20_i_llvm_fpga_pipeline_keep_going73_covariance6_out_data_out_6_delay_1;
    reg [0:0] redist20_i_llvm_fpga_pipeline_keep_going73_covariance6_out_data_out_6_delay_2;
    reg [0:0] redist21_i_first_cleanup_xor79_covariance4_q_4_q;
    reg [0:0] redist21_i_first_cleanup_xor79_covariance4_q_4_delay_0;
    reg [0:0] redist21_i_first_cleanup_xor79_covariance4_q_4_delay_1;
    reg [0:0] redist21_i_first_cleanup_xor79_covariance4_q_4_delay_2;
    wire redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_mem_reset0;
    wire [31:0] redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_mem_ia;
    wire [2:0] redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_mem_aa;
    wire [2:0] redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_mem_ab;
    wire [31:0] redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_mem_iq;
    wire [31:0] redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_mem_q;
    wire [2:0] redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_rdcnt_q;
    (* preserve *) reg [2:0] redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_rdcnt_i;
    (* preserve *) reg redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_rdcnt_eq;
    reg [2:0] redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_wraddr_q;
    wire [2:0] redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_mem_last_q;
    wire [0:0] redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_cmpReg_q;
    wire [0:0] redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_notEnable_q;
    wire [0:0] redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_sticky_ena_q;
    wire [0:0] redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_enaAnd_q;
    reg [31:0] redist12_i_llvm_fpga_pop_i32_mul154_pop64_covariance18_out_data_out_4_outputreg0_q;
    wire redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_mem_reset0;
    wire [31:0] redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_mem_ia;
    wire [1:0] redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_mem_aa;
    wire [1:0] redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_mem_ab;
    wire [31:0] redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_mem_iq;
    wire [31:0] redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_mem_q;
    wire [1:0] redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_rdcnt_q;
    (* preserve *) reg [1:0] redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_rdcnt_i;
    (* preserve *) reg redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_rdcnt_eq;
    reg [1:0] redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_wraddr_q;
    wire [1:0] redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_mem_last_q;
    wire [0:0] redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_cmp_q;
    (* dont_merge *) reg [0:0] redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_cmpReg_q;
    wire [0:0] redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_notEnable_q;
    wire [0:0] redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_nor_q;
    (* dont_merge *) reg [0:0] redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_sticky_ena_q;
    wire [0:0] redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_enaAnd_q;
    reg [63:0] redist22_i_arrayidx494_covariance16_vt_join_q_4_inputreg0_q;
    wire redist22_i_arrayidx494_covariance16_vt_join_q_4_mem_reset0;
    wire [63:0] redist22_i_arrayidx494_covariance16_vt_join_q_4_mem_ia;
    wire [0:0] redist22_i_arrayidx494_covariance16_vt_join_q_4_mem_aa;
    wire [0:0] redist22_i_arrayidx494_covariance16_vt_join_q_4_mem_ab;
    wire [63:0] redist22_i_arrayidx494_covariance16_vt_join_q_4_mem_iq;
    wire [63:0] redist22_i_arrayidx494_covariance16_vt_join_q_4_mem_q;
    wire [0:0] redist22_i_arrayidx494_covariance16_vt_join_q_4_rdcnt_q;
    (* preserve *) reg [0:0] redist22_i_arrayidx494_covariance16_vt_join_q_4_rdcnt_i;
    reg [0:0] redist22_i_arrayidx494_covariance16_vt_join_q_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist22_i_arrayidx494_covariance16_vt_join_q_4_cmpReg_q;
    wire [0:0] redist22_i_arrayidx494_covariance16_vt_join_q_4_notEnable_q;
    wire [0:0] redist22_i_arrayidx494_covariance16_vt_join_q_4_nor_q;
    (* dont_merge *) reg [0:0] redist22_i_arrayidx494_covariance16_vt_join_q_4_sticky_ena_q;
    wire [0:0] redist22_i_arrayidx494_covariance16_vt_join_q_4_enaAnd_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist7_sync_together96_aunroll_x_in_i_valid_1(DELAY,181)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together96_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist7_sync_together96_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist18_i_llvm_fpga_pipeline_keep_going73_covariance6_out_data_out_1(DELAY,192)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_pipeline_keep_going73_covariance6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist18_i_llvm_fpga_pipeline_keep_going73_covariance6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going73_covariance6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid161_i_cleanups_shl77_covariance0_shift_x(BITSELECT,160)@2
    assign leftShiftStage0Idx1Rng1_uid161_i_cleanups_shl77_covariance0_shift_x_in = i_llvm_fpga_pop_i2_cleanups76_pop60_covariance2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid161_i_cleanups_shl77_covariance0_shift_x_b = leftShiftStage0Idx1Rng1_uid161_i_cleanups_shl77_covariance0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid162_i_cleanups_shl77_covariance0_shift_x(BITJOIN,161)@2
    assign leftShiftStage0Idx1_uid162_i_cleanups_shl77_covariance0_shift_x_q = {leftShiftStage0Idx1Rng1_uid161_i_cleanups_shl77_covariance0_shift_x_b, GND_q};

    // leftShiftStage0_uid164_i_cleanups_shl77_covariance0_shift_x(MUX,163)@2
    assign leftShiftStage0_uid164_i_cleanups_shl77_covariance0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid164_i_cleanups_shl77_covariance0_shift_x_s or i_llvm_fpga_pop_i2_cleanups76_pop60_covariance2_out_data_out or leftShiftStage0Idx1_uid162_i_cleanups_shl77_covariance0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid164_i_cleanups_shl77_covariance0_shift_x_s)
            1'b0 : leftShiftStage0_uid164_i_cleanups_shl77_covariance0_shift_x_q = i_llvm_fpga_pop_i2_cleanups76_pop60_covariance2_out_data_out;
            1'b1 : leftShiftStage0_uid164_i_cleanups_shl77_covariance0_shift_x_q = leftShiftStage0Idx1_uid162_i_cleanups_shl77_covariance0_shift_x_q;
            default : leftShiftStage0_uid164_i_cleanups_shl77_covariance0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl77_covariance5_vt_select_1(BITSELECT,42)@2
    assign i_cleanups_shl77_covariance5_vt_select_1_b = leftShiftStage0_uid164_i_cleanups_shl77_covariance0_shift_x_q[1:1];

    // i_cleanups_shl77_covariance5_vt_join(BITJOIN,41)@2
    assign i_cleanups_shl77_covariance5_vt_join_q = {i_cleanups_shl77_covariance5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor79_covariance4(LOGICAL,45)@2
    assign i_first_cleanup_xor79_covariance4_q = i_first_cleanup78_covariance3_sel_x_b ^ VCC_q;

    // i_notcmp69_covariance27(LOGICAL,81)@2
    assign i_notcmp69_covariance27_q = i_exitcond13_covariance25_cmp_nsign_q ^ VCC_q;

    // i_or80_covariance29(LOGICAL,82)@2
    assign i_or80_covariance29_q = i_notcmp69_covariance27_q | i_first_cleanup_xor79_covariance4_q;

    // i_next_cleanups81_covariance30(MUX,77)@2
    assign i_next_cleanups81_covariance30_s = i_or80_covariance29_q;
    always @(i_next_cleanups81_covariance30_s or i_llvm_fpga_pop_i2_cleanups76_pop60_covariance2_out_data_out or i_cleanups_shl77_covariance5_vt_join_q)
    begin
        unique case (i_next_cleanups81_covariance30_s)
            1'b0 : i_next_cleanups81_covariance30_q = i_llvm_fpga_pop_i2_cleanups76_pop60_covariance2_out_data_out;
            1'b1 : i_next_cleanups81_covariance30_q = i_cleanups_shl77_covariance5_vt_join_q;
            default : i_next_cleanups81_covariance30_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups76_push60_covariance31(BLACKBOX,69)@2
    // out out_feedback_out_60@20000000
    // out out_feedback_valid_out_60@20000000
    covariance_i_llvm_fpga_push_i2_cleanups76_push60_0 thei_llvm_fpga_push_i2_cleanups76_push60_covariance31 (
        .in_data_in(i_next_cleanups81_covariance30_q),
        .in_feedback_stall_in_60(i_llvm_fpga_pop_i2_cleanups76_pop60_covariance2_out_feedback_stall_out_60),
        .in_keep_going73(redist18_i_llvm_fpga_pipeline_keep_going73_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together96_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_60(i_llvm_fpga_push_i2_cleanups76_push60_covariance31_out_feedback_out_60),
        .out_feedback_valid_out_60(i_llvm_fpga_push_i2_cleanups76_push60_covariance31_out_feedback_valid_out_60),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together96_aunroll_x_in_c0_eni7321_1_tpl_1(DELAY,174)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together96_aunroll_x_in_c0_eni7321_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together96_aunroll_x_in_c0_eni7321_1_tpl_1_q <= $unsigned(in_c0_eni7321_1_tpl);
        end
    end

    // c_i2_165(CONSTANT,30)
    assign c_i2_165_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups76_pop60_covariance2(BLACKBOX,58)@2
    // out out_feedback_stall_out_60@20000000
    covariance_i_llvm_fpga_pop_i2_cleanups76_pop60_0 thei_llvm_fpga_pop_i2_cleanups76_pop60_covariance2 (
        .in_data_in(c_i2_165_q),
        .in_dir(redist0_sync_together96_aunroll_x_in_c0_eni7321_1_tpl_1_q),
        .in_feedback_in_60(i_llvm_fpga_push_i2_cleanups76_push60_covariance31_out_feedback_out_60),
        .in_feedback_valid_in_60(i_llvm_fpga_push_i2_cleanups76_push60_covariance31_out_feedback_valid_out_60),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together96_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups76_pop60_covariance2_out_data_out),
        .out_feedback_stall_out_60(i_llvm_fpga_pop_i2_cleanups76_pop60_covariance2_out_feedback_stall_out_60),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup78_covariance3_sel_x(BITSELECT,120)@2
    assign i_first_cleanup78_covariance3_sel_x_b = i_llvm_fpga_pop_i2_cleanups76_pop60_covariance2_out_data_out[0:0];

    // c_i6_171(CONSTANT,33)
    assign c_i6_171_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next12_covariance32(ADD,46)@2
    assign i_fpga_indvars_iv_next12_covariance32_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop57_covariance24_out_data_out};
    assign i_fpga_indvars_iv_next12_covariance32_b = {1'b0, c_i6_171_q};
    assign i_fpga_indvars_iv_next12_covariance32_o = $unsigned(i_fpga_indvars_iv_next12_covariance32_a) + $unsigned(i_fpga_indvars_iv_next12_covariance32_b);
    assign i_fpga_indvars_iv_next12_covariance32_q = i_fpga_indvars_iv_next12_covariance32_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next12_covariance32_sel_x(BITSELECT,89)@2
    assign bgTrunc_i_fpga_indvars_iv_next12_covariance32_sel_x_b = i_fpga_indvars_iv_next12_covariance32_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv11_push57_covariance33(BLACKBOX,75)@2
    // out out_feedback_out_57@20000000
    // out out_feedback_valid_out_57@20000000
    covariance_i_llvm_fpga_push_i6_fpga_indvars_iv11_push57_0 thei_llvm_fpga_push_i6_fpga_indvars_iv11_push57_covariance33 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next12_covariance32_sel_x_b),
        .in_feedback_stall_in_57(i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop57_covariance24_out_feedback_stall_out_57),
        .in_keep_going73(redist18_i_llvm_fpga_pipeline_keep_going73_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together96_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_57(i_llvm_fpga_push_i6_fpga_indvars_iv11_push57_covariance33_out_feedback_out_57),
        .out_feedback_valid_out_57(i_llvm_fpga_push_i6_fpga_indvars_iv11_push57_covariance33_out_feedback_valid_out_57),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_3069(CONSTANT,34)
    assign c_i6_3069_q = $unsigned(6'b011110);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop57_covariance24(BLACKBOX,64)@2
    // out out_feedback_stall_out_57@20000000
    covariance_i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop57_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv11_pop57_covariance24 (
        .in_data_in(c_i6_3069_q),
        .in_dir(redist0_sync_together96_aunroll_x_in_c0_eni7321_1_tpl_1_q),
        .in_feedback_in_57(i_llvm_fpga_push_i6_fpga_indvars_iv11_push57_covariance33_out_feedback_out_57),
        .in_feedback_valid_in_57(i_llvm_fpga_push_i6_fpga_indvars_iv11_push57_covariance33_out_feedback_valid_out_57),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together96_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop57_covariance24_out_data_out),
        .out_feedback_stall_out_57(i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop57_covariance24_out_feedback_stall_out_57),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond13_covariance25_cmp_nsign(LOGICAL,156)@2
    assign i_exitcond13_covariance25_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop57_covariance24_out_data_out[5:5]));

    // i_llvm_fpga_push_i1_notexitcond83_covariance28(BLACKBOX,68)@2
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    covariance_i_llvm_fpga_push_i1_notexitcond83_0 thei_llvm_fpga_push_i1_notexitcond83_covariance28 (
        .in_data_in(i_exitcond13_covariance25_cmp_nsign_q),
        .in_feedback_stall_in_14(i_llvm_fpga_pipeline_keep_going73_covariance6_out_not_exitcond_stall_out),
        .in_first_cleanup78(i_first_cleanup78_covariance3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together96_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i1_notexitcond83_covariance28_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i1_notexitcond83_covariance28_out_feedback_valid_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,132)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid168_i_next_initerations72_covariance0_shift_x(BITSELECT,167)@2
    assign rightShiftStage0Idx1Rng1_uid168_i_next_initerations72_covariance0_shift_x_b = i_llvm_fpga_pop_i2_initerations71_pop59_covariance7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid170_i_next_initerations72_covariance0_shift_x(BITJOIN,169)@2
    assign rightShiftStage0Idx1_uid170_i_next_initerations72_covariance0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid168_i_next_initerations72_covariance0_shift_x_b};

    // valid_fanout_reg1(REG,130)@1 + 1
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

    // valid_fanout_reg2(REG,131)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations71_push59_covariance9(BLACKBOX,70)@2
    // out out_feedback_out_59@20000000
    // out out_feedback_valid_out_59@20000000
    covariance_i_llvm_fpga_push_i2_initerations71_push59_0 thei_llvm_fpga_push_i2_initerations71_push59_covariance9 (
        .in_data_in(i_next_initerations72_covariance8_vt_join_q),
        .in_feedback_stall_in_59(i_llvm_fpga_pop_i2_initerations71_pop59_covariance7_out_feedback_stall_out_59),
        .in_keep_going73(redist18_i_llvm_fpga_pipeline_keep_going73_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_59(i_llvm_fpga_push_i2_initerations71_push59_covariance9_out_feedback_out_59),
        .out_feedback_valid_out_59(i_llvm_fpga_push_i2_initerations71_push59_covariance9_out_feedback_valid_out_59),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations71_pop59_covariance7(BLACKBOX,59)@2
    // out out_feedback_stall_out_59@20000000
    covariance_i_llvm_fpga_pop_i2_initerations71_pop59_0 thei_llvm_fpga_pop_i2_initerations71_pop59_covariance7 (
        .in_data_in(c_i2_165_q),
        .in_dir(redist0_sync_together96_aunroll_x_in_c0_eni7321_1_tpl_1_q),
        .in_feedback_in_59(i_llvm_fpga_push_i2_initerations71_push59_covariance9_out_feedback_out_59),
        .in_feedback_valid_in_59(i_llvm_fpga_push_i2_initerations71_push59_covariance9_out_feedback_valid_out_59),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations71_pop59_covariance7_out_data_out),
        .out_feedback_stall_out_59(i_llvm_fpga_pop_i2_initerations71_pop59_covariance7_out_feedback_stall_out_59),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid172_i_next_initerations72_covariance0_shift_x(MUX,171)@2
    assign rightShiftStage0_uid172_i_next_initerations72_covariance0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid172_i_next_initerations72_covariance0_shift_x_s or i_llvm_fpga_pop_i2_initerations71_pop59_covariance7_out_data_out or rightShiftStage0Idx1_uid170_i_next_initerations72_covariance0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid172_i_next_initerations72_covariance0_shift_x_s)
            1'b0 : rightShiftStage0_uid172_i_next_initerations72_covariance0_shift_x_q = i_llvm_fpga_pop_i2_initerations71_pop59_covariance7_out_data_out;
            1'b1 : rightShiftStage0_uid172_i_next_initerations72_covariance0_shift_x_q = rightShiftStage0Idx1_uid170_i_next_initerations72_covariance0_shift_x_q;
            default : rightShiftStage0_uid172_i_next_initerations72_covariance0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations72_covariance8_vt_select_0(BITSELECT,80)@2
    assign i_next_initerations72_covariance8_vt_select_0_b = rightShiftStage0_uid172_i_next_initerations72_covariance0_shift_x_q[0:0];

    // i_next_initerations72_covariance8_vt_join(BITJOIN,79)@2
    assign i_next_initerations72_covariance8_vt_join_q = {GND_q, i_next_initerations72_covariance8_vt_select_0_b};

    // i_last_initeration74_covariance10_sel_x(BITSELECT,122)@2
    assign i_last_initeration74_covariance10_sel_x_b = i_next_initerations72_covariance8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration75_covariance11(BLACKBOX,66)@2
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    covariance_i_llvm_fpga_push_i1_lastiniteration75_0 thei_llvm_fpga_push_i1_lastiniteration75_covariance11 (
        .in_data_in(i_last_initeration74_covariance10_sel_x_b),
        .in_feedback_stall_in_13(i_llvm_fpga_pipeline_keep_going73_covariance6_out_initeration_stall_out),
        .in_keep_going73(redist18_i_llvm_fpga_pipeline_keep_going73_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i1_lastiniteration75_covariance11_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i1_lastiniteration75_covariance11_out_feedback_valid_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going73_covariance6(BLACKBOX,55)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    covariance_i_llvm_fpga_pipeline_keep_going73_0 thei_llvm_fpga_pipeline_keep_going73_covariance6 (
        .in_data_in(in_c0_eni7321_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration75_covariance11_out_feedback_out_13),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration75_covariance11_out_feedback_valid_out_13),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond83_covariance28_out_feedback_out_14),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond83_covariance28_out_feedback_valid_out_14),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going73_covariance6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going73_covariance6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going73_covariance6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going73_covariance6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going73_covariance6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going73_covariance6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,36)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going73_covariance6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going73_covariance6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going73_covariance6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going73_covariance6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,86)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going73_covariance6_out_pipeline_valid_out;

    // valid_fanout_reg7(REG,136)@1 + 1
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

    // c_covariance_data_local_pmem(CONSTANT,5)
    assign c_covariance_data_local_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx494_covariance0_upper_bits_x_merged_bit_select(BITSELECT,173)@2
    assign i_arrayidx494_covariance0_upper_bits_x_merged_bit_select_b = c_covariance_data_local_pmem_q[63:12];
    assign i_arrayidx494_covariance0_upper_bits_x_merged_bit_select_c = c_covariance_data_local_pmem_q[11:0];

    // valid_fanout_reg5(REG,134)@1 + 1
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

    // valid_fanout_reg6(REG,135)@1 + 1
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

    // i_llvm_fpga_push_i64_idxprom36155_push65_covariance15(BLACKBOX,74)@2
    // out out_feedback_out_65@20000000
    // out out_feedback_valid_out_65@20000000
    covariance_i_llvm_fpga_push_i64_idxprom36155_push65_0 thei_llvm_fpga_push_i64_idxprom36155_push65_covariance15 (
        .in_data_in(i_llvm_fpga_pop_i64_idxprom36155_pop65_covariance14_out_data_out),
        .in_feedback_stall_in_65(i_llvm_fpga_pop_i64_idxprom36155_pop65_covariance14_out_feedback_stall_out_65),
        .in_keep_going73(redist18_i_llvm_fpga_pipeline_keep_going73_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_65(i_llvm_fpga_push_i64_idxprom36155_push65_covariance15_out_feedback_out_65),
        .out_feedback_valid_out_65(i_llvm_fpga_push_i64_idxprom36155_push65_covariance15_out_feedback_valid_out_65),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together96_aunroll_x_in_c0_eni7321_2_tpl_1(DELAY,175)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together96_aunroll_x_in_c0_eni7321_2_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together96_aunroll_x_in_c0_eni7321_2_tpl_1_q <= $unsigned(in_c0_eni7321_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i64_idxprom36155_pop65_covariance14(BLACKBOX,63)@2
    // out out_feedback_stall_out_65@20000000
    covariance_i_llvm_fpga_pop_i64_idxprom36155_pop65_0 thei_llvm_fpga_pop_i64_idxprom36155_pop65_covariance14 (
        .in_data_in(redist1_sync_together96_aunroll_x_in_c0_eni7321_2_tpl_1_q),
        .in_dir(redist0_sync_together96_aunroll_x_in_c0_eni7321_1_tpl_1_q),
        .in_feedback_in_65(i_llvm_fpga_push_i64_idxprom36155_push65_covariance15_out_feedback_out_65),
        .in_feedback_valid_in_65(i_llvm_fpga_push_i64_idxprom36155_push65_covariance15_out_feedback_valid_out_65),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i64_idxprom36155_pop65_covariance14_out_data_out),
        .out_feedback_stall_out_65(i_llvm_fpga_pop_i64_idxprom36155_pop65_covariance14_out_feedback_stall_out_65),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx494_covariance0_dupName_3_trunc_sel_x(BITSELECT,114)@2
    assign i_arrayidx494_covariance0_dupName_3_trunc_sel_x_b = i_llvm_fpga_pop_i64_idxprom36155_pop65_covariance14_out_data_out[11:0];

    // i_arrayidx494_covariance0_dupName_0_narrow_x(BITSELECT,105)@2
    assign i_arrayidx494_covariance0_dupName_0_narrow_x_b = i_arrayidx494_covariance0_dupName_3_trunc_sel_x_b[9:0];

    // i_arrayidx494_covariance0_dupName_0_shift_join_x(BITJOIN,106)@2
    assign i_arrayidx494_covariance0_dupName_0_shift_join_x_q = {i_arrayidx494_covariance0_dupName_0_narrow_x_b, i_arrayidx494_covariance16_vt_const_1_q};

    // c_i32_067(CONSTANT,31)
    assign c_i32_067_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg4(REG,133)@1 + 1
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

    // valid_fanout_reg11(REG,140)@1 + 1
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

    // c_i32_168(CONSTANT,32)
    assign c_i32_168_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc51_covariance22(ADD,51)@2
    assign i_inc51_covariance22_a = {1'b0, i_llvm_fpga_pop_i32_i41_061_pop58_covariance12_out_data_out};
    assign i_inc51_covariance22_b = {1'b0, c_i32_168_q};
    assign i_inc51_covariance22_o = $unsigned(i_inc51_covariance22_a) + $unsigned(i_inc51_covariance22_b);
    assign i_inc51_covariance22_q = i_inc51_covariance22_o[32:0];

    // bgTrunc_i_inc51_covariance22_sel_x(BITSELECT,90)@2
    assign bgTrunc_i_inc51_covariance22_sel_x_b = i_inc51_covariance22_q[31:0];

    // i_llvm_fpga_push_i32_i41_061_push58_covariance23(BLACKBOX,71)@2
    // out out_feedback_out_58@20000000
    // out out_feedback_valid_out_58@20000000
    covariance_i_llvm_fpga_push_i32_i41_061_push58_0 thei_llvm_fpga_push_i32_i41_061_push58_covariance23 (
        .in_data_in(bgTrunc_i_inc51_covariance22_sel_x_b),
        .in_feedback_stall_in_58(i_llvm_fpga_pop_i32_i41_061_pop58_covariance12_out_feedback_stall_out_58),
        .in_keep_going73(redist18_i_llvm_fpga_pipeline_keep_going73_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_58(i_llvm_fpga_push_i32_i41_061_push58_covariance23_out_feedback_out_58),
        .out_feedback_valid_out_58(i_llvm_fpga_push_i32_i41_061_push58_covariance23_out_feedback_valid_out_58),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i41_061_pop58_covariance12(BLACKBOX,60)@2
    // out out_feedback_stall_out_58@20000000
    covariance_i_llvm_fpga_pop_i32_i41_061_pop58_0 thei_llvm_fpga_pop_i32_i41_061_pop58_covariance12 (
        .in_data_in(c_i32_067_q),
        .in_dir(redist0_sync_together96_aunroll_x_in_c0_eni7321_1_tpl_1_q),
        .in_feedback_in_58(i_llvm_fpga_push_i32_i41_061_push58_covariance23_out_feedback_out_58),
        .in_feedback_valid_in_58(i_llvm_fpga_push_i32_i41_061_push58_covariance23_out_feedback_valid_out_58),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_i41_061_pop58_covariance12_out_data_out),
        .out_feedback_stall_out_58(i_llvm_fpga_pop_i32_i41_061_pop58_covariance12_out_feedback_stall_out_58),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom46_covariance13_sel_x(BITSELECT,121)@2
    assign i_idxprom46_covariance13_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i41_061_pop58_covariance12_out_data_out[31:0]};

    // i_idxprom46_covariance13_vt_select_31(BITSELECT,50)@2
    assign i_idxprom46_covariance13_vt_select_31_b = i_idxprom46_covariance13_sel_x_b[31:0];

    // i_idxprom46_covariance13_vt_join(BITJOIN,49)@2
    assign i_idxprom46_covariance13_vt_join_q = {c_i32_067_q, i_idxprom46_covariance13_vt_select_31_b};

    // i_arrayidx494_covariance0_dupName_0_trunc_sel_x(BITSELECT,112)@2
    assign i_arrayidx494_covariance0_dupName_0_trunc_sel_x_b = i_idxprom46_covariance13_vt_join_q[11:0];

    // i_arrayidx494_covariance0_narrow_x(BITSELECT,100)@2
    assign i_arrayidx494_covariance0_narrow_x_b = i_arrayidx494_covariance0_dupName_0_trunc_sel_x_b[4:0];

    // i_arrayidx494_covariance0_c_i7_01_x(CONSTANT,99)
    assign i_arrayidx494_covariance0_c_i7_01_x_q = $unsigned(7'b0000000);

    // i_arrayidx494_covariance0_shift_join_x(BITJOIN,101)@2
    assign i_arrayidx494_covariance0_shift_join_x_q = {i_arrayidx494_covariance0_narrow_x_b, i_arrayidx494_covariance0_c_i7_01_x_q};

    // i_arrayidx494_covariance0_add_x(ADD,96)@2
    assign i_arrayidx494_covariance0_add_x_a = {1'b0, i_arrayidx494_covariance0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx494_covariance0_add_x_b = {1'b0, i_arrayidx494_covariance0_shift_join_x_q};
    assign i_arrayidx494_covariance0_add_x_o = $unsigned(i_arrayidx494_covariance0_add_x_a) + $unsigned(i_arrayidx494_covariance0_add_x_b);
    assign i_arrayidx494_covariance0_add_x_q = i_arrayidx494_covariance0_add_x_o[12:0];

    // i_arrayidx494_covariance0_dupName_2_trunc_sel_x(BITSELECT,113)@2
    assign i_arrayidx494_covariance0_dupName_2_trunc_sel_x_b = i_arrayidx494_covariance0_add_x_q[11:0];

    // i_arrayidx494_covariance0_dupName_0_add_x(ADD,104)@2
    assign i_arrayidx494_covariance0_dupName_0_add_x_a = {1'b0, i_arrayidx494_covariance0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx494_covariance0_dupName_0_add_x_b = {1'b0, i_arrayidx494_covariance0_dupName_0_shift_join_x_q};
    assign i_arrayidx494_covariance0_dupName_0_add_x_o = $unsigned(i_arrayidx494_covariance0_dupName_0_add_x_a) + $unsigned(i_arrayidx494_covariance0_dupName_0_add_x_b);
    assign i_arrayidx494_covariance0_dupName_0_add_x_q = i_arrayidx494_covariance0_dupName_0_add_x_o[12:0];

    // i_arrayidx494_covariance0_dupName_5_trunc_sel_x(BITSELECT,115)@2
    assign i_arrayidx494_covariance0_dupName_5_trunc_sel_x_b = i_arrayidx494_covariance0_dupName_0_add_x_q[11:0];

    // i_arrayidx494_covariance0_append_upper_bits_x(BITJOIN,97)@2
    assign i_arrayidx494_covariance0_append_upper_bits_x_q = {i_arrayidx494_covariance0_upper_bits_x_merged_bit_select_b, i_arrayidx494_covariance0_dupName_5_trunc_sel_x_b};

    // i_arrayidx494_covariance16_vt_select_63(BITSELECT,39)@2
    assign i_arrayidx494_covariance16_vt_select_63_b = i_arrayidx494_covariance0_append_upper_bits_x_q[63:2];

    // i_arrayidx494_covariance16_vt_const_1(CONSTANT,37)
    assign i_arrayidx494_covariance16_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx494_covariance16_vt_join(BITJOIN,38)@2
    assign i_arrayidx494_covariance16_vt_join_q = {i_arrayidx494_covariance16_vt_select_63_b, i_arrayidx494_covariance16_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_covariance7_covariance17(BLACKBOX,54)@2
    // in in_i_stall@20000000
    // out out_o_readdata@6
    // out out_o_stall@5
    // out out_o_valid@6
    // out out_unnamed_covariance7_covariance_avm_address@20000000
    // out out_unnamed_covariance7_covariance_avm_burstcount@20000000
    // out out_unnamed_covariance7_covariance_avm_byteenable@20000000
    // out out_unnamed_covariance7_covariance_avm_enable@20000000
    // out out_unnamed_covariance7_covariance_avm_read@20000000
    // out out_unnamed_covariance7_covariance_avm_write@20000000
    // out out_unnamed_covariance7_covariance_avm_writedata@20000000
    covariance_i_llvm_fpga_mem_unnamed_7_covariance0 thei_llvm_fpga_mem_unnamed_covariance7_covariance17 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx494_covariance16_vt_join_q),
        .in_i_predicate(i_first_cleanup_xor79_covariance4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_unnamed_covariance7_covariance_avm_readdata(in_unnamed_covariance7_covariance_avm_readdata),
        .in_unnamed_covariance7_covariance_avm_readdatavalid(in_unnamed_covariance7_covariance_avm_readdatavalid),
        .in_unnamed_covariance7_covariance_avm_waitrequest(in_unnamed_covariance7_covariance_avm_waitrequest),
        .in_unnamed_covariance7_covariance_avm_writeack(in_unnamed_covariance7_covariance_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_covariance7_covariance17_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_covariance7_covariance_avm_address(i_llvm_fpga_mem_unnamed_covariance7_covariance17_out_unnamed_covariance7_covariance_avm_address),
        .out_unnamed_covariance7_covariance_avm_burstcount(i_llvm_fpga_mem_unnamed_covariance7_covariance17_out_unnamed_covariance7_covariance_avm_burstcount),
        .out_unnamed_covariance7_covariance_avm_byteenable(i_llvm_fpga_mem_unnamed_covariance7_covariance17_out_unnamed_covariance7_covariance_avm_byteenable),
        .out_unnamed_covariance7_covariance_avm_enable(i_llvm_fpga_mem_unnamed_covariance7_covariance17_out_unnamed_covariance7_covariance_avm_enable),
        .out_unnamed_covariance7_covariance_avm_read(i_llvm_fpga_mem_unnamed_covariance7_covariance17_out_unnamed_covariance7_covariance_avm_read),
        .out_unnamed_covariance7_covariance_avm_write(i_llvm_fpga_mem_unnamed_covariance7_covariance17_out_unnamed_covariance7_covariance_avm_write),
        .out_unnamed_covariance7_covariance_avm_writedata(i_llvm_fpga_mem_unnamed_covariance7_covariance17_out_unnamed_covariance7_covariance_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,94)
    assign out_unnamed_covariance7_covariance_avm_address = i_llvm_fpga_mem_unnamed_covariance7_covariance17_out_unnamed_covariance7_covariance_avm_address;
    assign out_unnamed_covariance7_covariance_avm_enable = i_llvm_fpga_mem_unnamed_covariance7_covariance17_out_unnamed_covariance7_covariance_avm_enable;
    assign out_unnamed_covariance7_covariance_avm_read = i_llvm_fpga_mem_unnamed_covariance7_covariance17_out_unnamed_covariance7_covariance_avm_read;
    assign out_unnamed_covariance7_covariance_avm_write = i_llvm_fpga_mem_unnamed_covariance7_covariance17_out_unnamed_covariance7_covariance_avm_write;
    assign out_unnamed_covariance7_covariance_avm_writedata = i_llvm_fpga_mem_unnamed_covariance7_covariance17_out_unnamed_covariance7_covariance_avm_writedata;
    assign out_unnamed_covariance7_covariance_avm_byteenable = i_llvm_fpga_mem_unnamed_covariance7_covariance17_out_unnamed_covariance7_covariance_avm_byteenable;
    assign out_unnamed_covariance7_covariance_avm_burstcount = i_llvm_fpga_mem_unnamed_covariance7_covariance17_out_unnamed_covariance7_covariance_avm_burstcount;

    // valid_fanout_reg8(REG,137)@1 + 1
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

    // valid_fanout_reg9(REG,138)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist7_sync_together96_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist19_i_llvm_fpga_pipeline_keep_going73_covariance6_out_data_out_2(DELAY,193)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_pipeline_keep_going73_covariance6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist19_i_llvm_fpga_pipeline_keep_going73_covariance6_out_data_out_2_q <= $unsigned(redist18_i_llvm_fpga_pipeline_keep_going73_covariance6_out_data_out_1_q);
        end
    end

    // i_llvm_fpga_push_i32_mul154_push64_covariance19(BLACKBOX,73)@3
    // out out_feedback_out_64@20000000
    // out out_feedback_valid_out_64@20000000
    covariance_i_llvm_fpga_push_i32_mul154_push64_0 thei_llvm_fpga_push_i32_mul154_push64_covariance19 (
        .in_data_in(redist11_i_llvm_fpga_pop_i32_mul154_pop64_covariance18_out_data_out_1_q),
        .in_feedback_stall_in_64(i_llvm_fpga_pop_i32_mul154_pop64_covariance18_out_feedback_stall_out_64),
        .in_keep_going73(redist19_i_llvm_fpga_pipeline_keep_going73_covariance6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_64(i_llvm_fpga_push_i32_mul154_push64_covariance19_out_feedback_out_64),
        .out_feedback_valid_out_64(i_llvm_fpga_push_i32_mul154_push64_covariance19_out_feedback_valid_out_64),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together96_aunroll_x_in_c0_eni7321_3_tpl_1(DELAY,176)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together96_aunroll_x_in_c0_eni7321_3_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together96_aunroll_x_in_c0_eni7321_3_tpl_1_q <= $unsigned(in_c0_eni7321_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_mul154_pop64_covariance18(BLACKBOX,62)@2
    // out out_feedback_stall_out_64@20000000
    covariance_i_llvm_fpga_pop_i32_mul154_pop64_0 thei_llvm_fpga_pop_i32_mul154_pop64_covariance18 (
        .in_data_in(redist2_sync_together96_aunroll_x_in_c0_eni7321_3_tpl_1_q),
        .in_dir(redist0_sync_together96_aunroll_x_in_c0_eni7321_1_tpl_1_q),
        .in_feedback_in_64(i_llvm_fpga_push_i32_mul154_push64_covariance19_out_feedback_out_64),
        .in_feedback_valid_in_64(i_llvm_fpga_push_i32_mul154_push64_covariance19_out_feedback_valid_out_64),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul154_pop64_covariance18_out_data_out),
        .out_feedback_stall_out_64(i_llvm_fpga_pop_i32_mul154_pop64_covariance18_out_feedback_stall_out_64),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist11_i_llvm_fpga_pop_i32_mul154_pop64_covariance18_out_data_out_1(DELAY,185)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pop_i32_mul154_pop64_covariance18_out_data_out_1_q <= '0;
        end
        else
        begin
            redist11_i_llvm_fpga_pop_i32_mul154_pop64_covariance18_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_mul154_pop64_covariance18_out_data_out);
        end
    end

    // redist12_i_llvm_fpga_pop_i32_mul154_pop64_covariance18_out_data_out_4(DELAY,186)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_pop_i32_mul154_pop64_covariance18_out_data_out_4_delay_0 <= '0;
            redist12_i_llvm_fpga_pop_i32_mul154_pop64_covariance18_out_data_out_4_q <= '0;
        end
        else
        begin
            redist12_i_llvm_fpga_pop_i32_mul154_pop64_covariance18_out_data_out_4_delay_0 <= $unsigned(redist11_i_llvm_fpga_pop_i32_mul154_pop64_covariance18_out_data_out_1_q);
            redist12_i_llvm_fpga_pop_i32_mul154_pop64_covariance18_out_data_out_4_q <= redist12_i_llvm_fpga_pop_i32_mul154_pop64_covariance18_out_data_out_4_delay_0;
        end
    end

    // redist12_i_llvm_fpga_pop_i32_mul154_pop64_covariance18_out_data_out_4_outputreg0(DELAY,207)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_pop_i32_mul154_pop64_covariance18_out_data_out_4_outputreg0_q <= '0;
        end
        else
        begin
            redist12_i_llvm_fpga_pop_i32_mul154_pop64_covariance18_out_data_out_4_outputreg0_q <= $unsigned(redist12_i_llvm_fpga_pop_i32_mul154_pop64_covariance18_out_data_out_4_q);
        end
    end

    // i_sub_covariance20(SUB,83)@6
    assign i_sub_covariance20_a = {1'b0, i_llvm_fpga_mem_unnamed_covariance7_covariance17_out_o_readdata};
    assign i_sub_covariance20_b = {1'b0, redist12_i_llvm_fpga_pop_i32_mul154_pop64_covariance18_out_data_out_4_outputreg0_q};
    assign i_sub_covariance20_o = $unsigned(i_sub_covariance20_a) - $unsigned(i_sub_covariance20_b);
    assign i_sub_covariance20_q = i_sub_covariance20_o[32:0];

    // bgTrunc_i_sub_covariance20_sel_x(BITSELECT,91)@6
    assign bgTrunc_i_sub_covariance20_sel_x_b = $unsigned(i_sub_covariance20_q[31:0]);

    // redist8_sync_together96_aunroll_x_in_i_valid_4(DELAY,182)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together96_aunroll_x_in_i_valid_4_delay_0 <= '0;
            redist8_sync_together96_aunroll_x_in_i_valid_4_delay_1 <= '0;
            redist8_sync_together96_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist8_sync_together96_aunroll_x_in_i_valid_4_delay_0 <= $unsigned(redist7_sync_together96_aunroll_x_in_i_valid_1_q);
            redist8_sync_together96_aunroll_x_in_i_valid_4_delay_1 <= redist8_sync_together96_aunroll_x_in_i_valid_4_delay_0;
            redist8_sync_together96_aunroll_x_in_i_valid_4_q <= redist8_sync_together96_aunroll_x_in_i_valid_4_delay_1;
        end
    end

    // valid_fanout_reg10(REG,139)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist8_sync_together96_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist21_i_first_cleanup_xor79_covariance4_q_4(DELAY,195)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_first_cleanup_xor79_covariance4_q_4_delay_0 <= '0;
            redist21_i_first_cleanup_xor79_covariance4_q_4_delay_1 <= '0;
            redist21_i_first_cleanup_xor79_covariance4_q_4_delay_2 <= '0;
            redist21_i_first_cleanup_xor79_covariance4_q_4_q <= '0;
        end
        else
        begin
            redist21_i_first_cleanup_xor79_covariance4_q_4_delay_0 <= $unsigned(i_first_cleanup_xor79_covariance4_q);
            redist21_i_first_cleanup_xor79_covariance4_q_4_delay_1 <= redist21_i_first_cleanup_xor79_covariance4_q_4_delay_0;
            redist21_i_first_cleanup_xor79_covariance4_q_4_delay_2 <= redist21_i_first_cleanup_xor79_covariance4_q_4_delay_1;
            redist21_i_first_cleanup_xor79_covariance4_q_4_q <= redist21_i_first_cleanup_xor79_covariance4_q_4_delay_2;
        end
    end

    // redist22_i_arrayidx494_covariance16_vt_join_q_4_notEnable(LOGICAL,223)
    assign redist22_i_arrayidx494_covariance16_vt_join_q_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist22_i_arrayidx494_covariance16_vt_join_q_4_nor(LOGICAL,224)
    assign redist22_i_arrayidx494_covariance16_vt_join_q_4_nor_q = ~ (redist22_i_arrayidx494_covariance16_vt_join_q_4_notEnable_q | redist22_i_arrayidx494_covariance16_vt_join_q_4_sticky_ena_q);

    // redist22_i_arrayidx494_covariance16_vt_join_q_4_cmpReg(REG,222)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_arrayidx494_covariance16_vt_join_q_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist22_i_arrayidx494_covariance16_vt_join_q_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist22_i_arrayidx494_covariance16_vt_join_q_4_sticky_ena(REG,225)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_arrayidx494_covariance16_vt_join_q_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist22_i_arrayidx494_covariance16_vt_join_q_4_nor_q == 1'b1)
        begin
            redist22_i_arrayidx494_covariance16_vt_join_q_4_sticky_ena_q <= $unsigned(redist22_i_arrayidx494_covariance16_vt_join_q_4_cmpReg_q);
        end
    end

    // redist22_i_arrayidx494_covariance16_vt_join_q_4_enaAnd(LOGICAL,226)
    assign redist22_i_arrayidx494_covariance16_vt_join_q_4_enaAnd_q = redist22_i_arrayidx494_covariance16_vt_join_q_4_sticky_ena_q & VCC_q;

    // redist22_i_arrayidx494_covariance16_vt_join_q_4_rdcnt(COUNTER,220)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_arrayidx494_covariance16_vt_join_q_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist22_i_arrayidx494_covariance16_vt_join_q_4_rdcnt_i <= $unsigned(redist22_i_arrayidx494_covariance16_vt_join_q_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist22_i_arrayidx494_covariance16_vt_join_q_4_rdcnt_q = redist22_i_arrayidx494_covariance16_vt_join_q_4_rdcnt_i[0:0];

    // redist22_i_arrayidx494_covariance16_vt_join_q_4_inputreg0(DELAY,218)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_arrayidx494_covariance16_vt_join_q_4_inputreg0_q <= '0;
        end
        else
        begin
            redist22_i_arrayidx494_covariance16_vt_join_q_4_inputreg0_q <= $unsigned(i_arrayidx494_covariance16_vt_join_q);
        end
    end

    // redist22_i_arrayidx494_covariance16_vt_join_q_4_wraddr(REG,221)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_arrayidx494_covariance16_vt_join_q_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist22_i_arrayidx494_covariance16_vt_join_q_4_wraddr_q <= $unsigned(redist22_i_arrayidx494_covariance16_vt_join_q_4_rdcnt_q);
        end
    end

    // redist22_i_arrayidx494_covariance16_vt_join_q_4_mem(DUALMEM,219)
    assign redist22_i_arrayidx494_covariance16_vt_join_q_4_mem_ia = $unsigned(redist22_i_arrayidx494_covariance16_vt_join_q_4_inputreg0_q);
    assign redist22_i_arrayidx494_covariance16_vt_join_q_4_mem_aa = redist22_i_arrayidx494_covariance16_vt_join_q_4_wraddr_q;
    assign redist22_i_arrayidx494_covariance16_vt_join_q_4_mem_ab = redist22_i_arrayidx494_covariance16_vt_join_q_4_rdcnt_q;
    assign redist22_i_arrayidx494_covariance16_vt_join_q_4_mem_reset0 = ~ (resetn);
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
    ) redist22_i_arrayidx494_covariance16_vt_join_q_4_mem_dmem (
        .clocken1(redist22_i_arrayidx494_covariance16_vt_join_q_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist22_i_arrayidx494_covariance16_vt_join_q_4_mem_reset0),
        .clock1(clock),
        .address_a(redist22_i_arrayidx494_covariance16_vt_join_q_4_mem_aa),
        .data_a(redist22_i_arrayidx494_covariance16_vt_join_q_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist22_i_arrayidx494_covariance16_vt_join_q_4_mem_ab),
        .q_b(redist22_i_arrayidx494_covariance16_vt_join_q_4_mem_iq),
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
    assign redist22_i_arrayidx494_covariance16_vt_join_q_4_mem_q = redist22_i_arrayidx494_covariance16_vt_join_q_4_mem_iq[63:0];

    // i_llvm_fpga_mem_memdep_2_covariance21(BLACKBOX,53)@6
    // out out_memdep_2_covariance_avm_address@20000000
    // out out_memdep_2_covariance_avm_burstcount@20000000
    // out out_memdep_2_covariance_avm_byteenable@20000000
    // out out_memdep_2_covariance_avm_enable@20000000
    // out out_memdep_2_covariance_avm_read@20000000
    // out out_memdep_2_covariance_avm_write@20000000
    // out out_memdep_2_covariance_avm_writedata@20000000
    // out out_o_stall@7
    // out out_o_valid@7
    // out out_o_writeack@7
    covariance_i_llvm_fpga_mem_memdep_2_0 thei_llvm_fpga_mem_memdep_2_covariance21 (
        .in_flush(in_flush),
        .in_i_address(redist22_i_arrayidx494_covariance16_vt_join_q_4_mem_q),
        .in_i_predicate(redist21_i_first_cleanup_xor79_covariance4_q_4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg10_q),
        .in_i_writedata(bgTrunc_i_sub_covariance20_sel_x_b),
        .in_memdep_2_covariance_avm_readdata(in_memdep_2_covariance_avm_readdata),
        .in_memdep_2_covariance_avm_readdatavalid(in_memdep_2_covariance_avm_readdatavalid),
        .in_memdep_2_covariance_avm_waitrequest(in_memdep_2_covariance_avm_waitrequest),
        .in_memdep_2_covariance_avm_writeack(in_memdep_2_covariance_avm_writeack),
        .out_memdep_2_covariance_avm_address(i_llvm_fpga_mem_memdep_2_covariance21_out_memdep_2_covariance_avm_address),
        .out_memdep_2_covariance_avm_burstcount(i_llvm_fpga_mem_memdep_2_covariance21_out_memdep_2_covariance_avm_burstcount),
        .out_memdep_2_covariance_avm_byteenable(i_llvm_fpga_mem_memdep_2_covariance21_out_memdep_2_covariance_avm_byteenable),
        .out_memdep_2_covariance_avm_enable(i_llvm_fpga_mem_memdep_2_covariance21_out_memdep_2_covariance_avm_enable),
        .out_memdep_2_covariance_avm_read(i_llvm_fpga_mem_memdep_2_covariance21_out_memdep_2_covariance_avm_read),
        .out_memdep_2_covariance_avm_write(i_llvm_fpga_mem_memdep_2_covariance21_out_memdep_2_covariance_avm_write),
        .out_memdep_2_covariance_avm_writedata(i_llvm_fpga_mem_memdep_2_covariance21_out_memdep_2_covariance_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(i_llvm_fpga_mem_memdep_2_covariance21_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,95)
    assign out_memdep_2_covariance_avm_address = i_llvm_fpga_mem_memdep_2_covariance21_out_memdep_2_covariance_avm_address;
    assign out_memdep_2_covariance_avm_enable = i_llvm_fpga_mem_memdep_2_covariance21_out_memdep_2_covariance_avm_enable;
    assign out_memdep_2_covariance_avm_read = i_llvm_fpga_mem_memdep_2_covariance21_out_memdep_2_covariance_avm_read;
    assign out_memdep_2_covariance_avm_write = i_llvm_fpga_mem_memdep_2_covariance21_out_memdep_2_covariance_avm_write;
    assign out_memdep_2_covariance_avm_writedata = i_llvm_fpga_mem_memdep_2_covariance21_out_memdep_2_covariance_avm_writedata;
    assign out_memdep_2_covariance_avm_byteenable = i_llvm_fpga_mem_memdep_2_covariance21_out_memdep_2_covariance_avm_byteenable;
    assign out_memdep_2_covariance_avm_burstcount = i_llvm_fpga_mem_memdep_2_covariance21_out_memdep_2_covariance_avm_burstcount;

    // redist9_sync_together96_aunroll_x_in_i_valid_5(DELAY,183)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together96_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist9_sync_together96_aunroll_x_in_i_valid_5_q <= $unsigned(redist8_sync_together96_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg0(REG,129)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist9_sync_together96_aunroll_x_in_i_valid_5_q);
        end
    end

    // redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_notEnable(LOGICAL,203)
    assign redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_nor(LOGICAL,204)
    assign redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_nor_q = ~ (redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_notEnable_q | redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_sticky_ena_q);

    // redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_mem_last(CONSTANT,200)
    assign redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_mem_last_q = $unsigned(3'b011);

    // redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_cmp(LOGICAL,201)
    assign redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_cmp_q = $unsigned(redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_mem_last_q == redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_rdcnt_q ? 1'b1 : 1'b0);

    // redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_cmpReg(REG,202)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_cmpReg_q <= $unsigned(redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_cmp_q);
        end
    end

    // redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_sticky_ena(REG,205)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_nor_q == 1'b1)
        begin
            redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_sticky_ena_q <= $unsigned(redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_cmpReg_q);
        end
    end

    // redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_enaAnd(LOGICAL,206)
    assign redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_enaAnd_q = redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_sticky_ena_q & VCC_q;

    // redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_rdcnt(COUNTER,198)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_rdcnt_i <= 3'd0;
            redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_rdcnt_i == 3'd3)
            begin
                redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_rdcnt_eq <= 1'b0;
            end
            if (redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_rdcnt_eq == 1'b1)
            begin
                redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_rdcnt_i <= $unsigned(redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_rdcnt_i <= $unsigned(redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_rdcnt_q = redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_rdcnt_i[2:0];

    // redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_wraddr(REG,199)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_wraddr_q <= $unsigned(redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_rdcnt_q);
        end
    end

    // redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_mem(DUALMEM,197)
    assign redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_mem_ia = $unsigned(in_c0_eni7321_7_tpl);
    assign redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_mem_aa = redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_wraddr_q;
    assign redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_mem_ab = redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_rdcnt_q;
    assign redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_mem_reset0 = ~ (resetn);
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
    ) redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_mem_dmem (
        .clocken1(redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_mem_aa),
        .data_a(redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_mem_ab),
        .q_b(redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_mem_iq),
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
    assign redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_mem_q = redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_mem_iq[31:0];

    // valid_fanout_reg16(REG,145)@1 + 1
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

    // valid_fanout_reg17(REG,146)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp101151_push63_covariance40(BLACKBOX,67)@2
    // out out_feedback_out_63@20000000
    // out out_feedback_valid_out_63@20000000
    covariance_i_llvm_fpga_push_i1_notcmp101151_push63_0 thei_llvm_fpga_push_i1_notcmp101151_push63_covariance40 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp101151_pop63_covariance39_out_data_out),
        .in_feedback_stall_in_63(i_llvm_fpga_pop_i1_notcmp101151_pop63_covariance39_out_feedback_stall_out_63),
        .in_keep_going73(redist18_i_llvm_fpga_pipeline_keep_going73_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(),
        .out_feedback_out_63(i_llvm_fpga_push_i1_notcmp101151_push63_covariance40_out_feedback_out_63),
        .out_feedback_valid_out_63(i_llvm_fpga_push_i1_notcmp101151_push63_covariance40_out_feedback_valid_out_63),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together96_aunroll_x_in_c0_eni7321_6_tpl_1(DELAY,179)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together96_aunroll_x_in_c0_eni7321_6_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together96_aunroll_x_in_c0_eni7321_6_tpl_1_q <= $unsigned(in_c0_eni7321_6_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp101151_pop63_covariance39(BLACKBOX,57)@2
    // out out_feedback_stall_out_63@20000000
    covariance_i_llvm_fpga_pop_i1_notcmp101151_pop63_0 thei_llvm_fpga_pop_i1_notcmp101151_pop63_covariance39 (
        .in_data_in(redist5_sync_together96_aunroll_x_in_c0_eni7321_6_tpl_1_q),
        .in_dir(redist0_sync_together96_aunroll_x_in_c0_eni7321_1_tpl_1_q),
        .in_feedback_in_63(i_llvm_fpga_push_i1_notcmp101151_push63_covariance40_out_feedback_out_63),
        .in_feedback_valid_in_63(i_llvm_fpga_push_i1_notcmp101151_push63_covariance40_out_feedback_valid_out_63),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp101151_pop63_covariance39_out_data_out),
        .out_feedback_stall_out_63(i_llvm_fpga_pop_i1_notcmp101151_pop63_covariance39_out_feedback_stall_out_63),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist15_i_llvm_fpga_pop_i1_notcmp101151_pop63_covariance39_out_data_out_5(DELAY,189)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_llvm_fpga_pop_i1_notcmp101151_pop63_covariance39_out_data_out_5_delay_0 <= '0;
            redist15_i_llvm_fpga_pop_i1_notcmp101151_pop63_covariance39_out_data_out_5_delay_1 <= '0;
            redist15_i_llvm_fpga_pop_i1_notcmp101151_pop63_covariance39_out_data_out_5_delay_2 <= '0;
            redist15_i_llvm_fpga_pop_i1_notcmp101151_pop63_covariance39_out_data_out_5_delay_3 <= '0;
            redist15_i_llvm_fpga_pop_i1_notcmp101151_pop63_covariance39_out_data_out_5_q <= '0;
        end
        else
        begin
            redist15_i_llvm_fpga_pop_i1_notcmp101151_pop63_covariance39_out_data_out_5_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_notcmp101151_pop63_covariance39_out_data_out);
            redist15_i_llvm_fpga_pop_i1_notcmp101151_pop63_covariance39_out_data_out_5_delay_1 <= redist15_i_llvm_fpga_pop_i1_notcmp101151_pop63_covariance39_out_data_out_5_delay_0;
            redist15_i_llvm_fpga_pop_i1_notcmp101151_pop63_covariance39_out_data_out_5_delay_2 <= redist15_i_llvm_fpga_pop_i1_notcmp101151_pop63_covariance39_out_data_out_5_delay_1;
            redist15_i_llvm_fpga_pop_i1_notcmp101151_pop63_covariance39_out_data_out_5_delay_3 <= redist15_i_llvm_fpga_pop_i1_notcmp101151_pop63_covariance39_out_data_out_5_delay_2;
            redist15_i_llvm_fpga_pop_i1_notcmp101151_pop63_covariance39_out_data_out_5_q <= redist15_i_llvm_fpga_pop_i1_notcmp101151_pop63_covariance39_out_data_out_5_delay_3;
        end
    end

    // valid_fanout_reg14(REG,143)@1 + 1
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

    // valid_fanout_reg15(REG,144)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist7_sync_together96_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i1_exitcond16149_push62_covariance38(BLACKBOX,65)@3
    // out out_feedback_out_62@20000000
    // out out_feedback_valid_out_62@20000000
    covariance_i_llvm_fpga_push_i1_exitcond16149_push62_0 thei_llvm_fpga_push_i1_exitcond16149_push62_covariance38 (
        .in_data_in(redist16_i_llvm_fpga_pop_i1_exitcond16149_pop62_covariance37_out_data_out_1_q),
        .in_feedback_stall_in_62(i_llvm_fpga_pop_i1_exitcond16149_pop62_covariance37_out_feedback_stall_out_62),
        .in_keep_going73(redist19_i_llvm_fpga_pipeline_keep_going73_covariance6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_62(i_llvm_fpga_push_i1_exitcond16149_push62_covariance38_out_feedback_out_62),
        .out_feedback_valid_out_62(i_llvm_fpga_push_i1_exitcond16149_push62_covariance38_out_feedback_valid_out_62),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together96_aunroll_x_in_c0_eni7321_5_tpl_1(DELAY,178)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together96_aunroll_x_in_c0_eni7321_5_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together96_aunroll_x_in_c0_eni7321_5_tpl_1_q <= $unsigned(in_c0_eni7321_5_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_exitcond16149_pop62_covariance37(BLACKBOX,56)@2
    // out out_feedback_stall_out_62@20000000
    covariance_i_llvm_fpga_pop_i1_exitcond16149_pop62_0 thei_llvm_fpga_pop_i1_exitcond16149_pop62_covariance37 (
        .in_data_in(redist4_sync_together96_aunroll_x_in_c0_eni7321_5_tpl_1_q),
        .in_dir(redist0_sync_together96_aunroll_x_in_c0_eni7321_1_tpl_1_q),
        .in_feedback_in_62(i_llvm_fpga_push_i1_exitcond16149_push62_covariance38_out_feedback_out_62),
        .in_feedback_valid_in_62(i_llvm_fpga_push_i1_exitcond16149_push62_covariance38_out_feedback_valid_out_62),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond16149_pop62_covariance37_out_data_out),
        .out_feedback_stall_out_62(i_llvm_fpga_pop_i1_exitcond16149_pop62_covariance37_out_feedback_stall_out_62),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist16_i_llvm_fpga_pop_i1_exitcond16149_pop62_covariance37_out_data_out_1(DELAY,190)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_llvm_fpga_pop_i1_exitcond16149_pop62_covariance37_out_data_out_1_q <= '0;
        end
        else
        begin
            redist16_i_llvm_fpga_pop_i1_exitcond16149_pop62_covariance37_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_exitcond16149_pop62_covariance37_out_data_out);
        end
    end

    // redist17_i_llvm_fpga_pop_i1_exitcond16149_pop62_covariance37_out_data_out_5(DELAY,191)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pop_i1_exitcond16149_pop62_covariance37_out_data_out_5_delay_0 <= '0;
            redist17_i_llvm_fpga_pop_i1_exitcond16149_pop62_covariance37_out_data_out_5_delay_1 <= '0;
            redist17_i_llvm_fpga_pop_i1_exitcond16149_pop62_covariance37_out_data_out_5_delay_2 <= '0;
            redist17_i_llvm_fpga_pop_i1_exitcond16149_pop62_covariance37_out_data_out_5_q <= '0;
        end
        else
        begin
            redist17_i_llvm_fpga_pop_i1_exitcond16149_pop62_covariance37_out_data_out_5_delay_0 <= $unsigned(redist16_i_llvm_fpga_pop_i1_exitcond16149_pop62_covariance37_out_data_out_1_q);
            redist17_i_llvm_fpga_pop_i1_exitcond16149_pop62_covariance37_out_data_out_5_delay_1 <= redist17_i_llvm_fpga_pop_i1_exitcond16149_pop62_covariance37_out_data_out_5_delay_0;
            redist17_i_llvm_fpga_pop_i1_exitcond16149_pop62_covariance37_out_data_out_5_delay_2 <= redist17_i_llvm_fpga_pop_i1_exitcond16149_pop62_covariance37_out_data_out_5_delay_1;
            redist17_i_llvm_fpga_pop_i1_exitcond16149_pop62_covariance37_out_data_out_5_q <= redist17_i_llvm_fpga_pop_i1_exitcond16149_pop62_covariance37_out_data_out_5_delay_2;
        end
    end

    // redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_notEnable(LOGICAL,214)
    assign redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_nor(LOGICAL,215)
    assign redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_nor_q = ~ (redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_notEnable_q | redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_sticky_ena_q);

    // redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_mem_last(CONSTANT,211)
    assign redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_mem_last_q = $unsigned(2'b01);

    // redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_cmp(LOGICAL,212)
    assign redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_cmp_q = $unsigned(redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_mem_last_q == redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_rdcnt_q ? 1'b1 : 1'b0);

    // redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_cmpReg(REG,213)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_cmpReg_q <= $unsigned(redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_cmp_q);
        end
    end

    // redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_sticky_ena(REG,216)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_nor_q == 1'b1)
        begin
            redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_sticky_ena_q <= $unsigned(redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_cmpReg_q);
        end
    end

    // redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_enaAnd(LOGICAL,217)
    assign redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_enaAnd_q = redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_sticky_ena_q & VCC_q;

    // redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_rdcnt(COUNTER,209)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_rdcnt_i <= 2'd0;
            redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_rdcnt_i == 2'd1)
            begin
                redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_rdcnt_eq <= 1'b0;
            end
            if (redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_rdcnt_eq == 1'b1)
            begin
                redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_rdcnt_i <= $unsigned(redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_rdcnt_i <= $unsigned(redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_rdcnt_q = redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_rdcnt_i[1:0];

    // valid_fanout_reg12(REG,141)@1 + 1
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

    // valid_fanout_reg13(REG,142)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist7_sync_together96_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i32_lim_ext136_push61_covariance36(BLACKBOX,72)@3
    // out out_feedback_out_61@20000000
    // out out_feedback_valid_out_61@20000000
    covariance_i_llvm_fpga_push_i32_lim_ext136_push61_0 thei_llvm_fpga_push_i32_lim_ext136_push61_covariance36 (
        .in_data_in(redist13_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_1_q),
        .in_feedback_stall_in_61(i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_feedback_stall_out_61),
        .in_keep_going73(redist19_i_llvm_fpga_pipeline_keep_going73_covariance6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_61(i_llvm_fpga_push_i32_lim_ext136_push61_covariance36_out_feedback_out_61),
        .out_feedback_valid_out_61(i_llvm_fpga_push_i32_lim_ext136_push61_covariance36_out_feedback_valid_out_61),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together96_aunroll_x_in_c0_eni7321_4_tpl_1(DELAY,177)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together96_aunroll_x_in_c0_eni7321_4_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together96_aunroll_x_in_c0_eni7321_4_tpl_1_q <= $unsigned(in_c0_eni7321_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35(BLACKBOX,61)@2
    // out out_feedback_stall_out_61@20000000
    covariance_i_llvm_fpga_pop_i32_lim_ext136_pop61_0 thei_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35 (
        .in_data_in(redist3_sync_together96_aunroll_x_in_c0_eni7321_4_tpl_1_q),
        .in_dir(redist0_sync_together96_aunroll_x_in_c0_eni7321_1_tpl_1_q),
        .in_feedback_in_61(i_llvm_fpga_push_i32_lim_ext136_push61_covariance36_out_feedback_out_61),
        .in_feedback_valid_in_61(i_llvm_fpga_push_i32_lim_ext136_push61_covariance36_out_feedback_valid_out_61),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out),
        .out_feedback_stall_out_61(i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_feedback_stall_out_61),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist13_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_1(DELAY,187)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_1_q <= '0;
        end
        else
        begin
            redist13_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out);
        end
    end

    // redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_wraddr(REG,210)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_wraddr_q <= $unsigned(redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_rdcnt_q);
        end
    end

    // redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_mem(DUALMEM,208)
    assign redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_mem_ia = $unsigned(redist13_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_1_q);
    assign redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_mem_aa = redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_wraddr_q;
    assign redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_mem_ab = redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_rdcnt_q;
    assign redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_mem_reset0 = ~ (resetn);
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
    ) redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_mem_dmem (
        .clocken1(redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_mem_reset0),
        .clock1(clock),
        .address_a(redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_mem_aa),
        .data_a(redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_mem_ab),
        .q_b(redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_mem_iq),
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
    assign redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_mem_q = redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_mem_iq[31:0];

    // i_masked82_covariance34(LOGICAL,76)@2 + 1
    assign i_masked82_covariance34_qi = i_notcmp69_covariance27_q & i_first_cleanup78_covariance3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked82_covariance34_delay ( .xin(i_masked82_covariance34_qi), .xout(i_masked82_covariance34_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist10_i_masked82_covariance34_q_5(DELAY,184)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_masked82_covariance34_q_5_delay_0 <= '0;
            redist10_i_masked82_covariance34_q_5_delay_1 <= '0;
            redist10_i_masked82_covariance34_q_5_delay_2 <= '0;
            redist10_i_masked82_covariance34_q_5_q <= '0;
        end
        else
        begin
            redist10_i_masked82_covariance34_q_5_delay_0 <= $unsigned(i_masked82_covariance34_q);
            redist10_i_masked82_covariance34_q_5_delay_1 <= redist10_i_masked82_covariance34_q_5_delay_0;
            redist10_i_masked82_covariance34_q_5_delay_2 <= redist10_i_masked82_covariance34_q_5_delay_1;
            redist10_i_masked82_covariance34_q_5_q <= redist10_i_masked82_covariance34_q_5_delay_2;
        end
    end

    // redist20_i_llvm_fpga_pipeline_keep_going73_covariance6_out_data_out_6(DELAY,194)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pipeline_keep_going73_covariance6_out_data_out_6_delay_0 <= '0;
            redist20_i_llvm_fpga_pipeline_keep_going73_covariance6_out_data_out_6_delay_1 <= '0;
            redist20_i_llvm_fpga_pipeline_keep_going73_covariance6_out_data_out_6_delay_2 <= '0;
            redist20_i_llvm_fpga_pipeline_keep_going73_covariance6_out_data_out_6_q <= '0;
        end
        else
        begin
            redist20_i_llvm_fpga_pipeline_keep_going73_covariance6_out_data_out_6_delay_0 <= $unsigned(redist19_i_llvm_fpga_pipeline_keep_going73_covariance6_out_data_out_2_q);
            redist20_i_llvm_fpga_pipeline_keep_going73_covariance6_out_data_out_6_delay_1 <= redist20_i_llvm_fpga_pipeline_keep_going73_covariance6_out_data_out_6_delay_0;
            redist20_i_llvm_fpga_pipeline_keep_going73_covariance6_out_data_out_6_delay_2 <= redist20_i_llvm_fpga_pipeline_keep_going73_covariance6_out_data_out_6_delay_1;
            redist20_i_llvm_fpga_pipeline_keep_going73_covariance6_out_data_out_6_q <= redist20_i_llvm_fpga_pipeline_keep_going73_covariance6_out_data_out_6_delay_2;
        end
    end

    // sync_out_aunroll_x(GPOUT,127)@7
    assign out_c0_exi7336_0_tpl = GND_q;
    assign out_c0_exi7336_1_tpl = redist20_i_llvm_fpga_pipeline_keep_going73_covariance6_out_data_out_6_q;
    assign out_c0_exi7336_2_tpl = i_llvm_fpga_mem_memdep_2_covariance21_out_o_writeack;
    assign out_c0_exi7336_3_tpl = redist10_i_masked82_covariance34_q_5_q;
    assign out_c0_exi7336_4_tpl = redist14_i_llvm_fpga_pop_i32_lim_ext136_pop61_covariance35_out_data_out_5_mem_q;
    assign out_c0_exi7336_5_tpl = redist17_i_llvm_fpga_pop_i1_exitcond16149_pop62_covariance37_out_data_out_5_q;
    assign out_c0_exi7336_6_tpl = redist15_i_llvm_fpga_pop_i1_notcmp101151_pop63_covariance39_out_data_out_5_q;
    assign out_c0_exi7336_7_tpl = redist6_sync_together96_aunroll_x_in_c0_eni7321_7_tpl_6_mem_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_covariance0 = GND_q;

endmodule
