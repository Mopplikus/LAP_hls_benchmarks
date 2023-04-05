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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body55_triangulars_c0_enter22817_triangular0
// Created for function/kernel triangular
// SystemVerilog created on Wed Apr  5 14:46:57 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_i_sfc_logic_s_c0_in_for_body50000ter22817_triangular0 (
    input wire [31:0] in_unnamed_triangular17_triangular_avm_readdata,
    input wire [0:0] in_unnamed_triangular17_triangular_avm_writeack,
    input wire [0:0] in_unnamed_triangular17_triangular_avm_waitrequest,
    input wire [0:0] in_unnamed_triangular17_triangular_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_triangular6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_triangular6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [63:0] in_memdep_8_triangular_avm_readdata,
    input wire [0:0] in_memdep_8_triangular_avm_writeack,
    input wire [0:0] in_memdep_8_triangular_avm_waitrequest,
    input wire [0:0] in_memdep_8_triangular_avm_readdatavalid,
    output wire [31:0] out_unnamed_triangular17_triangular_avm_address,
    output wire [0:0] out_unnamed_triangular17_triangular_avm_enable,
    output wire [0:0] out_unnamed_triangular17_triangular_avm_read,
    output wire [0:0] out_unnamed_triangular17_triangular_avm_write,
    output wire [31:0] out_unnamed_triangular17_triangular_avm_writedata,
    output wire [3:0] out_unnamed_triangular17_triangular_avm_byteenable,
    output wire [0:0] out_unnamed_triangular17_triangular_avm_burstcount,
    output wire [63:0] out_memdep_8_triangular_avm_address,
    output wire [0:0] out_memdep_8_triangular_avm_enable,
    output wire [0:0] out_memdep_8_triangular_avm_read,
    output wire [0:0] out_memdep_8_triangular_avm_write,
    output wire [63:0] out_memdep_8_triangular_avm_writedata,
    output wire [7:0] out_memdep_8_triangular_avm_byteenable,
    output wire [0:0] out_memdep_8_triangular_avm_burstcount,
    output wire [0:0] out_lsu_memdep_8_o_active,
    output wire [0:0] out_c0_exi3234_0_tpl,
    output wire [0:0] out_c0_exi3234_1_tpl,
    output wire [0:0] out_c0_exi3234_2_tpl,
    output wire [0:0] out_c0_exi3234_3_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_triangular0,
    input wire [0:0] in_c0_eni3227_0_tpl,
    input wire [0:0] in_c0_eni3227_1_tpl,
    input wire [31:0] in_c0_eni3227_2_tpl,
    input wire [0:0] in_c0_eni3227_3_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] c_i2_156_q;
    wire [31:0] c_i32_058_q;
    wire [31:0] c_i32_159_q;
    wire [7:0] c_i8_162_q;
    wire [7:0] c_i8_9860_q;
    wire [63:0] c_triangular_A_local_pmem_q;
    wire [1:0] i_arrayidx593_triangular17_vt_const_1_q;
    wire [63:0] i_arrayidx593_triangular17_vt_join_q;
    wire [61:0] i_arrayidx593_triangular17_vt_select_63_b;
    wire [1:0] i_cleanups_shl_triangular5_vt_join_q;
    wire [0:0] i_cleanups_shl_triangular5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor_triangular4_q;
    wire [8:0] i_fpga_indvars_iv_next22_triangular32_a;
    wire [8:0] i_fpga_indvars_iv_next22_triangular32_b;
    logic [8:0] i_fpga_indvars_iv_next22_triangular32_o;
    wire [8:0] i_fpga_indvars_iv_next22_triangular32_q;
    wire [63:0] i_idxprom56_triangular14_vt_join_q;
    wire [31:0] i_idxprom56_triangular14_vt_select_31_b;
    wire [63:0] i_idxprom58_triangular16_vt_join_q;
    wire [31:0] i_idxprom58_triangular16_vt_select_31_b;
    wire [32:0] i_inc65_triangular22_a;
    wire [32:0] i_inc65_triangular22_b;
    logic [32:0] i_inc65_triangular22_o;
    wire [32:0] i_inc65_triangular22_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024a100i32_a4528_triangular19_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_mem_memdep_8_triangular21_out_lsu_memdep_8_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_8_triangular21_out_memdep_8_triangular_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_8_triangular21_out_memdep_8_triangular_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_8_triangular21_out_memdep_8_triangular_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_8_triangular21_out_memdep_8_triangular_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_8_triangular21_out_memdep_8_triangular_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_8_triangular21_out_memdep_8_triangular_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_8_triangular21_out_memdep_8_triangular_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_triangular17_triangular18_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_triangular17_triangular18_out_unnamed_triangular17_triangular_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_triangular17_triangular18_out_unnamed_triangular17_triangular_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_triangular17_triangular18_out_unnamed_triangular17_triangular_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_triangular17_triangular18_out_unnamed_triangular17_triangular_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_triangular17_triangular18_out_unnamed_triangular17_triangular_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_triangular17_triangular18_out_unnamed_triangular17_triangular_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_triangular17_triangular18_out_unnamed_triangular17_triangular_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_triangular6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_triangular6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_triangular6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_triangular6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_triangular6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp38105_pop52_triangular35_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp38105_pop52_triangular35_out_feedback_stall_out_52;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop51_triangular2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop51_triangular2_out_feedback_stall_out_51;
    wire [1:0] i_llvm_fpga_pop_i2_initerations_pop50_triangular7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop50_triangular7_out_feedback_stall_out_50;
    wire [31:0] i_llvm_fpga_pop_i32_i46_033_pop28106_pop53_triangular12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i46_033_pop28106_pop53_triangular12_out_feedback_stall_out_53;
    wire [31:0] i_llvm_fpga_pop_i32_j51_032_pop49_triangular15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j51_032_pop49_triangular15_out_feedback_stall_out_49;
    wire [7:0] i_llvm_fpga_pop_i8_fpga_indvars_iv21_pop48_triangular24_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i8_fpga_indvars_iv21_pop48_triangular24_out_feedback_stall_out_48;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_triangular11_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_triangular11_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notcmp38105_push52_triangular36_out_feedback_out_52;
    wire [0:0] i_llvm_fpga_push_i1_notcmp38105_push52_triangular36_out_feedback_valid_out_52;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_triangular28_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_triangular28_out_feedback_valid_out_3;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push51_triangular31_out_feedback_out_51;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push51_triangular31_out_feedback_valid_out_51;
    wire [7:0] i_llvm_fpga_push_i2_initerations_push50_triangular9_out_feedback_out_50;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push50_triangular9_out_feedback_valid_out_50;
    wire [31:0] i_llvm_fpga_push_i32_i46_033_pop28106_push53_triangular13_out_feedback_out_53;
    wire [0:0] i_llvm_fpga_push_i32_i46_033_pop28106_push53_triangular13_out_feedback_valid_out_53;
    wire [31:0] i_llvm_fpga_push_i32_j51_032_push49_triangular23_out_feedback_out_49;
    wire [0:0] i_llvm_fpga_push_i32_j51_032_push49_triangular23_out_feedback_valid_out_49;
    wire [7:0] i_llvm_fpga_push_i8_fpga_indvars_iv21_push48_triangular33_out_feedback_out_48;
    wire [0:0] i_llvm_fpga_push_i8_fpga_indvars_iv21_push48_triangular33_out_feedback_valid_out_48;
    wire [0:0] i_masked_triangular34_qi;
    reg [0:0] i_masked_triangular34_q;
    wire [0:0] i_next_cleanups_triangular30_s;
    reg [1:0] i_next_cleanups_triangular30_q;
    wire [1:0] i_next_initerations_triangular8_vt_join_q;
    wire [0:0] i_next_initerations_triangular8_vt_select_0_b;
    wire [0:0] i_notcmp_triangular27_q;
    wire [0:0] i_or_triangular29_q;
    wire [7:0] bgTrunc_i_fpga_indvars_iv_next22_triangular32_sel_x_b;
    wire [31:0] bgTrunc_i_inc65_triangular22_sel_x_b;
    wire [16:0] i_arrayidx593_triangular0_add_x_a;
    wire [16:0] i_arrayidx593_triangular0_add_x_b;
    logic [16:0] i_arrayidx593_triangular0_add_x_o;
    wire [16:0] i_arrayidx593_triangular0_add_x_q;
    wire [63:0] i_arrayidx593_triangular0_append_upper_bits_x_q;
    wire [13:0] i_arrayidx593_triangular0_narrow_x_b;
    wire [15:0] i_arrayidx593_triangular0_shift_join_x_q;
    wire [16:0] i_arrayidx593_triangular0_dupName_0_add_x_a;
    wire [16:0] i_arrayidx593_triangular0_dupName_0_add_x_b;
    logic [16:0] i_arrayidx593_triangular0_dupName_0_add_x_o;
    wire [16:0] i_arrayidx593_triangular0_dupName_0_add_x_q;
    wire [31:0] i_arrayidx593_triangular0_mult_extender_x_q;
    wire [6:0] i_arrayidx593_triangular0_mult_multconst_x_q;
    wire [15:0] i_arrayidx593_triangular0_dupName_0_trunc_sel_x_b;
    wire [15:0] i_arrayidx593_triangular0_dupName_1_trunc_sel_x_b;
    wire [15:0] i_arrayidx593_triangular0_dupName_2_trunc_sel_x_b;
    wire [15:0] i_arrayidx593_triangular0_dupName_3_trunc_sel_x_b;
    wire [15:0] i_arrayidx593_triangular0_dupName_5_trunc_sel_x_b;
    wire [64:0] i_arrayidx63_triangular0_add_x_a;
    wire [64:0] i_arrayidx63_triangular0_add_x_b;
    logic [64:0] i_arrayidx63_triangular0_add_x_o;
    wire [64:0] i_arrayidx63_triangular0_add_x_q;
    wire [61:0] i_arrayidx63_triangular0_narrow_x_b;
    wire [63:0] i_arrayidx63_triangular0_shift_join_x_q;
    wire [64:0] i_arrayidx63_triangular0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx63_triangular0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx63_triangular0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx63_triangular0_dupName_0_add_x_q;
    wire [127:0] i_arrayidx63_triangular0_mult_extender_x_q;
    wire [54:0] i_arrayidx63_triangular0_mult_multconst_x_q;
    wire [63:0] i_arrayidx63_triangular0_trunc_sel_x_b;
    wire [63:0] i_arrayidx63_triangular0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx63_triangular0_dupName_2_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_triangular3_sel_x_b;
    wire [63:0] i_idxprom56_triangular14_sel_x_b;
    wire [63:0] i_idxprom58_triangular16_sel_x_b;
    wire [0:0] i_last_initeration_triangular10_sel_x_b;
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
    wire [0:0] i_exitcond23_triangular25_cmp_nsign_q;
    wire [0:0] lowRangeB_uid175_i_arrayidx593_triangular0_mult_x_in;
    wire [0:0] lowRangeB_uid175_i_arrayidx593_triangular0_mult_x_b;
    wire [14:0] highBBits_uid176_i_arrayidx593_triangular0_mult_x_b;
    wire [16:0] addsumAHighB_uid177_i_arrayidx593_triangular0_mult_x_a;
    wire [16:0] addsumAHighB_uid177_i_arrayidx593_triangular0_mult_x_b;
    logic [16:0] addsumAHighB_uid177_i_arrayidx593_triangular0_mult_x_o;
    wire [16:0] addsumAHighB_uid177_i_arrayidx593_triangular0_mult_x_q;
    wire [17:0] add_uid178_i_arrayidx593_triangular0_mult_x_q;
    wire [2:0] lowRangeB_uid180_i_arrayidx593_triangular0_mult_x_in;
    wire [2:0] lowRangeB_uid180_i_arrayidx593_triangular0_mult_x_b;
    wire [12:0] highBBits_uid181_i_arrayidx593_triangular0_mult_x_b;
    wire [18:0] a_subconst_25_sumAHighB_uid182_i_arrayidx593_triangular0_mult_x_a;
    wire [18:0] a_subconst_25_sumAHighB_uid182_i_arrayidx593_triangular0_mult_x_b;
    logic [18:0] a_subconst_25_sumAHighB_uid182_i_arrayidx593_triangular0_mult_x_o;
    wire [18:0] a_subconst_25_sumAHighB_uid182_i_arrayidx593_triangular0_mult_x_q;
    wire [21:0] a_subconst_25_uid183_i_arrayidx593_triangular0_mult_x_q;
    wire [3:0] sR_bottomExtension_uid186_i_arrayidx593_triangular0_mult_x_q;
    wire [20:0] sR_bottomRange_uid187_i_arrayidx593_triangular0_mult_x_in;
    wire [20:0] sR_bottomRange_uid187_i_arrayidx593_triangular0_mult_x_b;
    wire [24:0] sR_mergedSignalTM_uid188_i_arrayidx593_triangular0_mult_x_q;
    wire [9:0] i_arrayidx63_triangular0_mult_x_bs1_b;
    wire [53:0] i_arrayidx63_triangular0_mult_x_bs4_in;
    wire [17:0] i_arrayidx63_triangular0_mult_x_bs4_b;
    wire [35:0] i_arrayidx63_triangular0_mult_x_bs7_in;
    wire [17:0] i_arrayidx63_triangular0_mult_x_bs7_b;
    wire [17:0] i_arrayidx63_triangular0_mult_x_bs10_in;
    wire [17:0] i_arrayidx63_triangular0_mult_x_bs10_b;
    wire [35:0] i_arrayidx63_triangular0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx63_triangular0_mult_x_sums_align_0_qint;
    wire [62:0] i_arrayidx63_triangular0_mult_x_sums_join_1_q;
    wire [44:0] i_arrayidx63_triangular0_mult_x_sums_align_2_q;
    wire [44:0] i_arrayidx63_triangular0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx63_triangular0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx63_triangular0_mult_x_sums_align_3_qint;
    wire [72:0] i_arrayidx63_triangular0_mult_x_sums_join_4_q;
    wire [73:0] i_arrayidx63_triangular0_mult_x_sums_result_add_0_0_a;
    wire [73:0] i_arrayidx63_triangular0_mult_x_sums_result_add_0_0_b;
    logic [73:0] i_arrayidx63_triangular0_mult_x_sums_result_add_0_0_o;
    wire [73:0] i_arrayidx63_triangular0_mult_x_sums_result_add_0_0_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid251_i_cleanups_shl_triangular0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid251_i_cleanups_shl_triangular0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid252_i_cleanups_shl_triangular0_shift_x_q;
    wire [0:0] leftShiftStage0_uid254_i_cleanups_shl_triangular0_shift_x_s;
    reg [1:0] leftShiftStage0_uid254_i_cleanups_shl_triangular0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid258_i_next_initerations_triangular0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid260_i_next_initerations_triangular0_shift_x_q;
    wire [0:0] rightShiftStage0_uid262_i_next_initerations_triangular0_shift_x_s;
    reg [1:0] rightShiftStage0_uid262_i_next_initerations_triangular0_shift_x_q;
    wire [0:0] lowRangeB_uid272_i_arrayidx63_triangular0_mult_x_im0_in;
    wire [0:0] lowRangeB_uid272_i_arrayidx63_triangular0_mult_x_im0_b;
    wire [8:0] highBBits_uid273_i_arrayidx63_triangular0_mult_x_im0_b;
    wire [10:0] addsumAHighB_uid274_i_arrayidx63_triangular0_mult_x_im0_a;
    wire [10:0] addsumAHighB_uid274_i_arrayidx63_triangular0_mult_x_im0_b;
    logic [10:0] addsumAHighB_uid274_i_arrayidx63_triangular0_mult_x_im0_o;
    wire [10:0] addsumAHighB_uid274_i_arrayidx63_triangular0_mult_x_im0_q;
    wire [11:0] add_uid275_i_arrayidx63_triangular0_mult_x_im0_q;
    wire [2:0] lowRangeB_uid277_i_arrayidx63_triangular0_mult_x_im0_in;
    wire [2:0] lowRangeB_uid277_i_arrayidx63_triangular0_mult_x_im0_b;
    wire [6:0] highBBits_uid278_i_arrayidx63_triangular0_mult_x_im0_b;
    wire [12:0] a_subconst_25_sumAHighB_uid279_i_arrayidx63_triangular0_mult_x_im0_a;
    wire [12:0] a_subconst_25_sumAHighB_uid279_i_arrayidx63_triangular0_mult_x_im0_b;
    logic [12:0] a_subconst_25_sumAHighB_uid279_i_arrayidx63_triangular0_mult_x_im0_o;
    wire [12:0] a_subconst_25_sumAHighB_uid279_i_arrayidx63_triangular0_mult_x_im0_q;
    wire [15:0] a_subconst_25_uid280_i_arrayidx63_triangular0_mult_x_im0_q;
    wire [14:0] sR_bottomRange_uid284_i_arrayidx63_triangular0_mult_x_im0_in;
    wire [14:0] sR_bottomRange_uid284_i_arrayidx63_triangular0_mult_x_im0_b;
    wire [18:0] sR_mergedSignalTM_uid285_i_arrayidx63_triangular0_mult_x_im0_q;
    wire [0:0] lowRangeB_uid329_i_arrayidx63_triangular0_mult_x_im3_in;
    wire [0:0] lowRangeB_uid329_i_arrayidx63_triangular0_mult_x_im3_b;
    wire [16:0] highBBits_uid330_i_arrayidx63_triangular0_mult_x_im3_b;
    wire [18:0] addsumAHighB_uid331_i_arrayidx63_triangular0_mult_x_im3_a;
    wire [18:0] addsumAHighB_uid331_i_arrayidx63_triangular0_mult_x_im3_b;
    logic [18:0] addsumAHighB_uid331_i_arrayidx63_triangular0_mult_x_im3_o;
    wire [18:0] addsumAHighB_uid331_i_arrayidx63_triangular0_mult_x_im3_q;
    wire [19:0] add_uid332_i_arrayidx63_triangular0_mult_x_im3_q;
    wire [2:0] lowRangeB_uid334_i_arrayidx63_triangular0_mult_x_im3_in;
    wire [2:0] lowRangeB_uid334_i_arrayidx63_triangular0_mult_x_im3_b;
    wire [14:0] highBBits_uid335_i_arrayidx63_triangular0_mult_x_im3_b;
    wire [20:0] a_subconst_25_sumAHighB_uid336_i_arrayidx63_triangular0_mult_x_im3_a;
    wire [20:0] a_subconst_25_sumAHighB_uid336_i_arrayidx63_triangular0_mult_x_im3_b;
    logic [20:0] a_subconst_25_sumAHighB_uid336_i_arrayidx63_triangular0_mult_x_im3_o;
    wire [20:0] a_subconst_25_sumAHighB_uid336_i_arrayidx63_triangular0_mult_x_im3_q;
    wire [23:0] a_subconst_25_uid337_i_arrayidx63_triangular0_mult_x_im3_q;
    wire [22:0] sR_bottomRange_uid341_i_arrayidx63_triangular0_mult_x_im3_in;
    wire [22:0] sR_bottomRange_uid341_i_arrayidx63_triangular0_mult_x_im3_b;
    wire [26:0] sR_mergedSignalTM_uid342_i_arrayidx63_triangular0_mult_x_im3_q;
    wire [0:0] lowRangeB_uid398_i_arrayidx63_triangular0_mult_x_im6_in;
    wire [0:0] lowRangeB_uid398_i_arrayidx63_triangular0_mult_x_im6_b;
    wire [16:0] highBBits_uid399_i_arrayidx63_triangular0_mult_x_im6_b;
    wire [18:0] addsumAHighB_uid400_i_arrayidx63_triangular0_mult_x_im6_a;
    wire [18:0] addsumAHighB_uid400_i_arrayidx63_triangular0_mult_x_im6_b;
    logic [18:0] addsumAHighB_uid400_i_arrayidx63_triangular0_mult_x_im6_o;
    wire [18:0] addsumAHighB_uid400_i_arrayidx63_triangular0_mult_x_im6_q;
    wire [19:0] add_uid401_i_arrayidx63_triangular0_mult_x_im6_q;
    wire [2:0] lowRangeB_uid403_i_arrayidx63_triangular0_mult_x_im6_in;
    wire [2:0] lowRangeB_uid403_i_arrayidx63_triangular0_mult_x_im6_b;
    wire [14:0] highBBits_uid404_i_arrayidx63_triangular0_mult_x_im6_b;
    wire [20:0] a_subconst_25_sumAHighB_uid405_i_arrayidx63_triangular0_mult_x_im6_a;
    wire [20:0] a_subconst_25_sumAHighB_uid405_i_arrayidx63_triangular0_mult_x_im6_b;
    logic [20:0] a_subconst_25_sumAHighB_uid405_i_arrayidx63_triangular0_mult_x_im6_o;
    wire [20:0] a_subconst_25_sumAHighB_uid405_i_arrayidx63_triangular0_mult_x_im6_q;
    wire [23:0] a_subconst_25_uid406_i_arrayidx63_triangular0_mult_x_im6_q;
    wire [22:0] sR_bottomRange_uid410_i_arrayidx63_triangular0_mult_x_im6_in;
    wire [22:0] sR_bottomRange_uid410_i_arrayidx63_triangular0_mult_x_im6_b;
    wire [26:0] sR_mergedSignalTM_uid411_i_arrayidx63_triangular0_mult_x_im6_q;
    wire [0:0] lowRangeB_uid467_i_arrayidx63_triangular0_mult_x_im9_in;
    wire [0:0] lowRangeB_uid467_i_arrayidx63_triangular0_mult_x_im9_b;
    wire [16:0] highBBits_uid468_i_arrayidx63_triangular0_mult_x_im9_b;
    wire [18:0] addsumAHighB_uid469_i_arrayidx63_triangular0_mult_x_im9_a;
    wire [18:0] addsumAHighB_uid469_i_arrayidx63_triangular0_mult_x_im9_b;
    logic [18:0] addsumAHighB_uid469_i_arrayidx63_triangular0_mult_x_im9_o;
    wire [18:0] addsumAHighB_uid469_i_arrayidx63_triangular0_mult_x_im9_q;
    wire [19:0] add_uid470_i_arrayidx63_triangular0_mult_x_im9_q;
    wire [2:0] lowRangeB_uid472_i_arrayidx63_triangular0_mult_x_im9_in;
    wire [2:0] lowRangeB_uid472_i_arrayidx63_triangular0_mult_x_im9_b;
    wire [14:0] highBBits_uid473_i_arrayidx63_triangular0_mult_x_im9_b;
    wire [20:0] a_subconst_25_sumAHighB_uid474_i_arrayidx63_triangular0_mult_x_im9_a;
    wire [20:0] a_subconst_25_sumAHighB_uid474_i_arrayidx63_triangular0_mult_x_im9_b;
    logic [20:0] a_subconst_25_sumAHighB_uid474_i_arrayidx63_triangular0_mult_x_im9_o;
    wire [20:0] a_subconst_25_sumAHighB_uid474_i_arrayidx63_triangular0_mult_x_im9_q;
    wire [23:0] a_subconst_25_uid475_i_arrayidx63_triangular0_mult_x_im9_q;
    wire [22:0] sR_bottomRange_uid479_i_arrayidx63_triangular0_mult_x_im9_in;
    wire [22:0] sR_bottomRange_uid479_i_arrayidx63_triangular0_mult_x_im9_b;
    wire [26:0] sR_mergedSignalTM_uid480_i_arrayidx63_triangular0_mult_x_im9_q;
    wire [47:0] i_arrayidx593_triangular0_upper_bits_x_merged_bit_select_b;
    wire [15:0] i_arrayidx593_triangular0_upper_bits_x_merged_bit_select_c;
    reg [22:0] redist0_sR_bottomRange_uid479_i_arrayidx63_triangular0_mult_x_im9_b_1_q;
    reg [22:0] redist1_sR_bottomRange_uid410_i_arrayidx63_triangular0_mult_x_im6_b_1_q;
    reg [22:0] redist2_sR_bottomRange_uid341_i_arrayidx63_triangular0_mult_x_im3_b_1_q;
    reg [14:0] redist3_sR_bottomRange_uid284_i_arrayidx63_triangular0_mult_x_im0_b_1_q;
    reg [0:0] redist4_valid_fanout_reg0_q_3_q;
    reg [0:0] redist4_valid_fanout_reg0_q_3_delay_0;
    reg [0:0] redist4_valid_fanout_reg0_q_3_delay_1;
    reg [0:0] redist5_sync_together82_aunroll_x_in_c0_eni3227_1_tpl_1_q;
    reg [0:0] redist6_sync_together82_aunroll_x_in_c0_eni3227_1_tpl_3_q;
    reg [0:0] redist6_sync_together82_aunroll_x_in_c0_eni3227_1_tpl_3_delay_0;
    reg [31:0] redist7_sync_together82_aunroll_x_in_c0_eni3227_2_tpl_1_q;
    reg [0:0] redist8_sync_together82_aunroll_x_in_c0_eni3227_3_tpl_1_q;
    reg [0:0] redist9_sync_together82_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist10_sync_together82_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist11_sync_together82_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist12_sync_together82_aunroll_x_in_i_valid_4_q;
    reg [63:0] redist13_i_arrayidx63_triangular0_dupName_2_trunc_sel_x_b_1_q;
    reg [63:0] redist14_i_arrayidx63_triangular0_trunc_sel_x_b_1_q;
    reg [61:0] redist15_i_arrayidx63_triangular0_narrow_x_b_1_q;
    reg [15:0] redist16_i_arrayidx593_triangular0_dupName_1_trunc_sel_x_b_1_q;
    reg [0:0] redist17_i_masked_triangular34_q_7_q;
    reg [0:0] redist18_i_llvm_fpga_pop_i1_notcmp38105_pop52_triangular35_out_data_out_7_q;
    reg [0:0] redist19_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_1_q;
    reg [0:0] redist20_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_3_q;
    reg [0:0] redist20_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_3_delay_0;
    reg [0:0] redist21_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_8_q;
    reg [0:0] redist21_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_8_delay_0;
    reg [0:0] redist21_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_8_delay_1;
    reg [0:0] redist21_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_8_delay_2;
    reg [0:0] redist21_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_8_delay_3;
    reg [31:0] redist22_i_idxprom56_triangular14_vt_select_31_b_1_q;
    reg [0:0] redist23_i_first_cleanup_xor_triangular4_q_2_q;
    reg [0:0] redist23_i_first_cleanup_xor_triangular4_q_2_delay_0;
    reg [0:0] redist24_i_first_cleanup_xor_triangular4_q_4_q;
    reg [0:0] redist24_i_first_cleanup_xor_triangular4_q_4_delay_0;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist9_sync_together82_aunroll_x_in_i_valid_1(DELAY,537)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together82_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist9_sync_together82_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist19_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_1(DELAY,547)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist19_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid251_i_cleanups_shl_triangular0_shift_x(BITSELECT,250)@2
    assign leftShiftStage0Idx1Rng1_uid251_i_cleanups_shl_triangular0_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop51_triangular2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid251_i_cleanups_shl_triangular0_shift_x_b = leftShiftStage0Idx1Rng1_uid251_i_cleanups_shl_triangular0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid252_i_cleanups_shl_triangular0_shift_x(BITJOIN,251)@2
    assign leftShiftStage0Idx1_uid252_i_cleanups_shl_triangular0_shift_x_q = {leftShiftStage0Idx1Rng1_uid251_i_cleanups_shl_triangular0_shift_x_b, GND_q};

    // leftShiftStage0_uid254_i_cleanups_shl_triangular0_shift_x(MUX,253)@2
    assign leftShiftStage0_uid254_i_cleanups_shl_triangular0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid254_i_cleanups_shl_triangular0_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop51_triangular2_out_data_out or leftShiftStage0Idx1_uid252_i_cleanups_shl_triangular0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid254_i_cleanups_shl_triangular0_shift_x_s)
            1'b0 : leftShiftStage0_uid254_i_cleanups_shl_triangular0_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop51_triangular2_out_data_out;
            1'b1 : leftShiftStage0_uid254_i_cleanups_shl_triangular0_shift_x_q = leftShiftStage0Idx1_uid252_i_cleanups_shl_triangular0_shift_x_q;
            default : leftShiftStage0_uid254_i_cleanups_shl_triangular0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_triangular5_vt_select_1(BITSELECT,36)@2
    assign i_cleanups_shl_triangular5_vt_select_1_b = leftShiftStage0_uid254_i_cleanups_shl_triangular0_shift_x_q[1:1];

    // i_cleanups_shl_triangular5_vt_join(BITJOIN,35)@2
    assign i_cleanups_shl_triangular5_vt_join_q = {i_cleanups_shl_triangular5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor_triangular4(LOGICAL,39)@2
    assign i_first_cleanup_xor_triangular4_q = i_first_cleanup_triangular3_sel_x_b ^ VCC_q;

    // i_notcmp_triangular27(LOGICAL,74)@2
    assign i_notcmp_triangular27_q = i_exitcond23_triangular25_cmp_nsign_q ^ VCC_q;

    // i_or_triangular29(LOGICAL,75)@2
    assign i_or_triangular29_q = i_notcmp_triangular27_q | i_first_cleanup_xor_triangular4_q;

    // i_next_cleanups_triangular30(MUX,70)@2
    assign i_next_cleanups_triangular30_s = i_or_triangular29_q;
    always @(i_next_cleanups_triangular30_s or i_llvm_fpga_pop_i2_cleanups_pop51_triangular2_out_data_out or i_cleanups_shl_triangular5_vt_join_q)
    begin
        unique case (i_next_cleanups_triangular30_s)
            1'b0 : i_next_cleanups_triangular30_q = i_llvm_fpga_pop_i2_cleanups_pop51_triangular2_out_data_out;
            1'b1 : i_next_cleanups_triangular30_q = i_cleanups_shl_triangular5_vt_join_q;
            default : i_next_cleanups_triangular30_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push51_triangular31(BLACKBOX,64)@2
    // out out_feedback_out_51@20000000
    // out out_feedback_valid_out_51@20000000
    triangular_i_llvm_fpga_push_i2_cleanups_push51_0 thei_llvm_fpga_push_i2_cleanups_push51_triangular31 (
        .in_data_in(i_next_cleanups_triangular30_q),
        .in_feedback_stall_in_51(i_llvm_fpga_pop_i2_cleanups_pop51_triangular2_out_feedback_stall_out_51),
        .in_keep_going(redist19_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist9_sync_together82_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_51(i_llvm_fpga_push_i2_cleanups_push51_triangular31_out_feedback_out_51),
        .out_feedback_valid_out_51(i_llvm_fpga_push_i2_cleanups_push51_triangular31_out_feedback_valid_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together82_aunroll_x_in_c0_eni3227_1_tpl_1(DELAY,533)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together82_aunroll_x_in_c0_eni3227_1_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together82_aunroll_x_in_c0_eni3227_1_tpl_1_q <= $unsigned(in_c0_eni3227_1_tpl);
        end
    end

    // c_i2_156(CONSTANT,23)
    assign c_i2_156_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop51_triangular2(BLACKBOX,56)@2
    // out out_feedback_stall_out_51@20000000
    triangular_i_llvm_fpga_pop_i2_cleanups_pop51_0 thei_llvm_fpga_pop_i2_cleanups_pop51_triangular2 (
        .in_data_in(c_i2_156_q),
        .in_dir(redist5_sync_together82_aunroll_x_in_c0_eni3227_1_tpl_1_q),
        .in_feedback_in_51(i_llvm_fpga_push_i2_cleanups_push51_triangular31_out_feedback_out_51),
        .in_feedback_valid_in_51(i_llvm_fpga_push_i2_cleanups_push51_triangular31_out_feedback_valid_out_51),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist9_sync_together82_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop51_triangular2_out_data_out),
        .out_feedback_stall_out_51(i_llvm_fpga_pop_i2_cleanups_pop51_triangular2_out_feedback_stall_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_triangular3_sel_x(BITSELECT,133)@2
    assign i_first_cleanup_triangular3_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop51_triangular2_out_data_out[0:0];

    // c_i8_162(CONSTANT,26)
    assign c_i8_162_q = $unsigned(8'b11111111);

    // i_fpga_indvars_iv_next22_triangular32(ADD,40)@2
    assign i_fpga_indvars_iv_next22_triangular32_a = {1'b0, i_llvm_fpga_pop_i8_fpga_indvars_iv21_pop48_triangular24_out_data_out};
    assign i_fpga_indvars_iv_next22_triangular32_b = {1'b0, c_i8_162_q};
    assign i_fpga_indvars_iv_next22_triangular32_o = $unsigned(i_fpga_indvars_iv_next22_triangular32_a) + $unsigned(i_fpga_indvars_iv_next22_triangular32_b);
    assign i_fpga_indvars_iv_next22_triangular32_q = i_fpga_indvars_iv_next22_triangular32_o[8:0];

    // bgTrunc_i_fpga_indvars_iv_next22_triangular32_sel_x(BITSELECT,82)@2
    assign bgTrunc_i_fpga_indvars_iv_next22_triangular32_sel_x_b = i_fpga_indvars_iv_next22_triangular32_q[7:0];

    // i_llvm_fpga_push_i8_fpga_indvars_iv21_push48_triangular33(BLACKBOX,68)@2
    // out out_feedback_out_48@20000000
    // out out_feedback_valid_out_48@20000000
    triangular_i_llvm_fpga_push_i8_fpga_indvars_iv21_push48_0 thei_llvm_fpga_push_i8_fpga_indvars_iv21_push48_triangular33 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next22_triangular32_sel_x_b),
        .in_feedback_stall_in_48(i_llvm_fpga_pop_i8_fpga_indvars_iv21_pop48_triangular24_out_feedback_stall_out_48),
        .in_keep_going(redist19_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist9_sync_together82_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_48(i_llvm_fpga_push_i8_fpga_indvars_iv21_push48_triangular33_out_feedback_out_48),
        .out_feedback_valid_out_48(i_llvm_fpga_push_i8_fpga_indvars_iv21_push48_triangular33_out_feedback_valid_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i8_9860(CONSTANT,27)
    assign c_i8_9860_q = $unsigned(8'b01100010);

    // i_llvm_fpga_pop_i8_fpga_indvars_iv21_pop48_triangular24(BLACKBOX,60)@2
    // out out_feedback_stall_out_48@20000000
    triangular_i_llvm_fpga_pop_i8_fpga_indvars_iv21_pop48_0 thei_llvm_fpga_pop_i8_fpga_indvars_iv21_pop48_triangular24 (
        .in_data_in(c_i8_9860_q),
        .in_dir(redist5_sync_together82_aunroll_x_in_c0_eni3227_1_tpl_1_q),
        .in_feedback_in_48(i_llvm_fpga_push_i8_fpga_indvars_iv21_push48_triangular33_out_feedback_out_48),
        .in_feedback_valid_in_48(i_llvm_fpga_push_i8_fpga_indvars_iv21_push48_triangular33_out_feedback_valid_out_48),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist9_sync_together82_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i8_fpga_indvars_iv21_pop48_triangular24_out_data_out),
        .out_feedback_stall_out_48(i_llvm_fpga_pop_i8_fpga_indvars_iv21_pop48_triangular24_out_feedback_stall_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond23_triangular25_cmp_nsign(LOGICAL,165)@2
    assign i_exitcond23_triangular25_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i8_fpga_indvars_iv21_pop48_triangular24_out_data_out[7:7]));

    // i_llvm_fpga_push_i1_notexitcond_triangular28(BLACKBOX,63)@2
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    triangular_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_triangular28 (
        .in_data_in(i_exitcond23_triangular25_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_triangular6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_triangular3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist9_sync_together82_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_triangular28_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_triangular28_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,146)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid258_i_next_initerations_triangular0_shift_x(BITSELECT,257)@2
    assign rightShiftStage0Idx1Rng1_uid258_i_next_initerations_triangular0_shift_x_b = i_llvm_fpga_pop_i2_initerations_pop50_triangular7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid260_i_next_initerations_triangular0_shift_x(BITJOIN,259)@2
    assign rightShiftStage0Idx1_uid260_i_next_initerations_triangular0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid258_i_next_initerations_triangular0_shift_x_b};

    // valid_fanout_reg1(REG,144)@1 + 1
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

    // valid_fanout_reg2(REG,145)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations_push50_triangular9(BLACKBOX,65)@2
    // out out_feedback_out_50@20000000
    // out out_feedback_valid_out_50@20000000
    triangular_i_llvm_fpga_push_i2_initerations_push50_0 thei_llvm_fpga_push_i2_initerations_push50_triangular9 (
        .in_data_in(i_next_initerations_triangular8_vt_join_q),
        .in_feedback_stall_in_50(i_llvm_fpga_pop_i2_initerations_pop50_triangular7_out_feedback_stall_out_50),
        .in_keep_going(redist19_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_50(i_llvm_fpga_push_i2_initerations_push50_triangular9_out_feedback_out_50),
        .out_feedback_valid_out_50(i_llvm_fpga_push_i2_initerations_push50_triangular9_out_feedback_valid_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations_pop50_triangular7(BLACKBOX,57)@2
    // out out_feedback_stall_out_50@20000000
    triangular_i_llvm_fpga_pop_i2_initerations_pop50_0 thei_llvm_fpga_pop_i2_initerations_pop50_triangular7 (
        .in_data_in(c_i2_156_q),
        .in_dir(redist5_sync_together82_aunroll_x_in_c0_eni3227_1_tpl_1_q),
        .in_feedback_in_50(i_llvm_fpga_push_i2_initerations_push50_triangular9_out_feedback_out_50),
        .in_feedback_valid_in_50(i_llvm_fpga_push_i2_initerations_push50_triangular9_out_feedback_valid_out_50),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations_pop50_triangular7_out_data_out),
        .out_feedback_stall_out_50(i_llvm_fpga_pop_i2_initerations_pop50_triangular7_out_feedback_stall_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid262_i_next_initerations_triangular0_shift_x(MUX,261)@2
    assign rightShiftStage0_uid262_i_next_initerations_triangular0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid262_i_next_initerations_triangular0_shift_x_s or i_llvm_fpga_pop_i2_initerations_pop50_triangular7_out_data_out or rightShiftStage0Idx1_uid260_i_next_initerations_triangular0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid262_i_next_initerations_triangular0_shift_x_s)
            1'b0 : rightShiftStage0_uid262_i_next_initerations_triangular0_shift_x_q = i_llvm_fpga_pop_i2_initerations_pop50_triangular7_out_data_out;
            1'b1 : rightShiftStage0_uid262_i_next_initerations_triangular0_shift_x_q = rightShiftStage0Idx1_uid260_i_next_initerations_triangular0_shift_x_q;
            default : rightShiftStage0_uid262_i_next_initerations_triangular0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations_triangular8_vt_select_0(BITSELECT,73)@2
    assign i_next_initerations_triangular8_vt_select_0_b = rightShiftStage0_uid262_i_next_initerations_triangular0_shift_x_q[0:0];

    // i_next_initerations_triangular8_vt_join(BITJOIN,72)@2
    assign i_next_initerations_triangular8_vt_join_q = {GND_q, i_next_initerations_triangular8_vt_select_0_b};

    // i_last_initeration_triangular10_sel_x(BITSELECT,136)@2
    assign i_last_initeration_triangular10_sel_x_b = i_next_initerations_triangular8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_triangular11(BLACKBOX,61)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    triangular_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_triangular11 (
        .in_data_in(i_last_initeration_triangular10_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_triangular6_out_initeration_stall_out),
        .in_keep_going(redist19_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_triangular11_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_triangular11_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_triangular6(BLACKBOX,54)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    triangular_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_triangular6 (
        .in_data_in(in_c0_eni3227_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_triangular11_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_triangular11_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_triangular28_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_triangular28_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_triangular6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_triangular6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_triangular6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_triangular6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_triangular6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,30)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_triangular6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_triangular6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_triangular6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_triangular6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,78)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_triangular6_out_pipeline_valid_out;

    // redist10_sync_together82_aunroll_x_in_i_valid_2(DELAY,538)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together82_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist10_sync_together82_aunroll_x_in_i_valid_2_q <= $unsigned(redist9_sync_together82_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg7(REG,150)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist10_sync_together82_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist23_i_first_cleanup_xor_triangular4_q_2(DELAY,551)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_first_cleanup_xor_triangular4_q_2_delay_0 <= '0;
            redist23_i_first_cleanup_xor_triangular4_q_2_q <= '0;
        end
        else
        begin
            redist23_i_first_cleanup_xor_triangular4_q_2_delay_0 <= $unsigned(i_first_cleanup_xor_triangular4_q);
            redist23_i_first_cleanup_xor_triangular4_q_2_q <= redist23_i_first_cleanup_xor_triangular4_q_2_delay_0;
        end
    end

    // c_triangular_A_local_pmem(CONSTANT,28)
    assign c_triangular_A_local_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx593_triangular0_upper_bits_x_merged_bit_select(BITSELECT,527)@4
    assign i_arrayidx593_triangular0_upper_bits_x_merged_bit_select_b = c_triangular_A_local_pmem_q[63:16];
    assign i_arrayidx593_triangular0_upper_bits_x_merged_bit_select_c = c_triangular_A_local_pmem_q[15:0];

    // c_i32_058(CONSTANT,24)
    assign c_i32_058_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg6(REG,149)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist10_sync_together82_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg10(REG,153)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist10_sync_together82_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist20_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_3(DELAY,548)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_3_delay_0 <= '0;
            redist20_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_3_q <= '0;
        end
        else
        begin
            redist20_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_3_delay_0 <= $unsigned(redist19_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_1_q);
            redist20_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_3_q <= redist20_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_3_delay_0;
        end
    end

    // c_i32_159(CONSTANT,25)
    assign c_i32_159_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc65_triangular22(ADD,49)@4
    assign i_inc65_triangular22_a = {1'b0, i_llvm_fpga_pop_i32_j51_032_pop49_triangular15_out_data_out};
    assign i_inc65_triangular22_b = {1'b0, c_i32_159_q};
    assign i_inc65_triangular22_o = $unsigned(i_inc65_triangular22_a) + $unsigned(i_inc65_triangular22_b);
    assign i_inc65_triangular22_q = i_inc65_triangular22_o[32:0];

    // bgTrunc_i_inc65_triangular22_sel_x(BITSELECT,83)@4
    assign bgTrunc_i_inc65_triangular22_sel_x_b = i_inc65_triangular22_q[31:0];

    // i_llvm_fpga_push_i32_j51_032_push49_triangular23(BLACKBOX,67)@4
    // out out_feedback_out_49@20000000
    // out out_feedback_valid_out_49@20000000
    triangular_i_llvm_fpga_push_i32_j51_032_push49_0 thei_llvm_fpga_push_i32_j51_032_push49_triangular23 (
        .in_data_in(bgTrunc_i_inc65_triangular22_sel_x_b),
        .in_feedback_stall_in_49(i_llvm_fpga_pop_i32_j51_032_pop49_triangular15_out_feedback_stall_out_49),
        .in_keep_going(redist20_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_3_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_49(i_llvm_fpga_push_i32_j51_032_push49_triangular23_out_feedback_out_49),
        .out_feedback_valid_out_49(i_llvm_fpga_push_i32_j51_032_push49_triangular23_out_feedback_valid_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together82_aunroll_x_in_c0_eni3227_1_tpl_3(DELAY,534)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together82_aunroll_x_in_c0_eni3227_1_tpl_3_delay_0 <= '0;
            redist6_sync_together82_aunroll_x_in_c0_eni3227_1_tpl_3_q <= '0;
        end
        else
        begin
            redist6_sync_together82_aunroll_x_in_c0_eni3227_1_tpl_3_delay_0 <= $unsigned(redist5_sync_together82_aunroll_x_in_c0_eni3227_1_tpl_1_q);
            redist6_sync_together82_aunroll_x_in_c0_eni3227_1_tpl_3_q <= redist6_sync_together82_aunroll_x_in_c0_eni3227_1_tpl_3_delay_0;
        end
    end

    // i_llvm_fpga_pop_i32_j51_032_pop49_triangular15(BLACKBOX,59)@4
    // out out_feedback_stall_out_49@20000000
    triangular_i_llvm_fpga_pop_i32_j51_032_pop49_0 thei_llvm_fpga_pop_i32_j51_032_pop49_triangular15 (
        .in_data_in(c_i32_058_q),
        .in_dir(redist6_sync_together82_aunroll_x_in_c0_eni3227_1_tpl_3_q),
        .in_feedback_in_49(i_llvm_fpga_push_i32_j51_032_push49_triangular23_out_feedback_out_49),
        .in_feedback_valid_in_49(i_llvm_fpga_push_i32_j51_032_push49_triangular23_out_feedback_valid_out_49),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_j51_032_pop49_triangular15_out_data_out),
        .out_feedback_stall_out_49(i_llvm_fpga_pop_i32_j51_032_pop49_triangular15_out_feedback_stall_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom58_triangular16_sel_x(BITSELECT,135)@4
    assign i_idxprom58_triangular16_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j51_032_pop49_triangular15_out_data_out[31:0]};

    // i_idxprom58_triangular16_vt_select_31(BITSELECT,48)@4
    assign i_idxprom58_triangular16_vt_select_31_b = i_idxprom58_triangular16_sel_x_b[31:0];

    // i_idxprom58_triangular16_vt_join(BITJOIN,47)@4
    assign i_idxprom58_triangular16_vt_join_q = {c_i32_058_q, i_idxprom58_triangular16_vt_select_31_b};

    // i_arrayidx593_triangular0_dupName_3_trunc_sel_x(BITSELECT,111)@4
    assign i_arrayidx593_triangular0_dupName_3_trunc_sel_x_b = i_idxprom58_triangular16_vt_join_q[15:0];

    // i_arrayidx593_triangular0_narrow_x(BITSELECT,94)@4
    assign i_arrayidx593_triangular0_narrow_x_b = i_arrayidx593_triangular0_dupName_3_trunc_sel_x_b[13:0];

    // i_arrayidx593_triangular0_shift_join_x(BITJOIN,95)@4
    assign i_arrayidx593_triangular0_shift_join_x_q = {i_arrayidx593_triangular0_narrow_x_b, i_arrayidx593_triangular17_vt_const_1_q};

    // i_arrayidx593_triangular0_mult_multconst_x(CONSTANT,106)
    assign i_arrayidx593_triangular0_mult_multconst_x_q = $unsigned(7'b0000000);

    // valid_fanout_reg4(REG,147)@1 + 1
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

    // valid_fanout_reg5(REG,148)@1 + 1
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

    // i_llvm_fpga_push_i32_i46_033_pop28106_push53_triangular13(BLACKBOX,66)@2
    // out out_feedback_out_53@20000000
    // out out_feedback_valid_out_53@20000000
    triangular_i_llvm_fpga_push_i32_i46_033_pop28106_push53_0 thei_llvm_fpga_push_i32_i46_033_pop28106_push53_triangular13 (
        .in_data_in(i_llvm_fpga_pop_i32_i46_033_pop28106_pop53_triangular12_out_data_out),
        .in_feedback_stall_in_53(i_llvm_fpga_pop_i32_i46_033_pop28106_pop53_triangular12_out_feedback_stall_out_53),
        .in_keep_going(redist19_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_53(i_llvm_fpga_push_i32_i46_033_pop28106_push53_triangular13_out_feedback_out_53),
        .out_feedback_valid_out_53(i_llvm_fpga_push_i32_i46_033_pop28106_push53_triangular13_out_feedback_valid_out_53),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together82_aunroll_x_in_c0_eni3227_2_tpl_1(DELAY,535)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together82_aunroll_x_in_c0_eni3227_2_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together82_aunroll_x_in_c0_eni3227_2_tpl_1_q <= $unsigned(in_c0_eni3227_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_i46_033_pop28106_pop53_triangular12(BLACKBOX,58)@2
    // out out_feedback_stall_out_53@20000000
    triangular_i_llvm_fpga_pop_i32_i46_033_pop28106_pop53_0 thei_llvm_fpga_pop_i32_i46_033_pop28106_pop53_triangular12 (
        .in_data_in(redist7_sync_together82_aunroll_x_in_c0_eni3227_2_tpl_1_q),
        .in_dir(redist5_sync_together82_aunroll_x_in_c0_eni3227_1_tpl_1_q),
        .in_feedback_in_53(i_llvm_fpga_push_i32_i46_033_pop28106_push53_triangular13_out_feedback_out_53),
        .in_feedback_valid_in_53(i_llvm_fpga_push_i32_i46_033_pop28106_push53_triangular13_out_feedback_valid_out_53),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_i46_033_pop28106_pop53_triangular12_out_data_out),
        .out_feedback_stall_out_53(i_llvm_fpga_pop_i32_i46_033_pop28106_pop53_triangular12_out_feedback_stall_out_53),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom56_triangular14_sel_x(BITSELECT,134)@2
    assign i_idxprom56_triangular14_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i46_033_pop28106_pop53_triangular12_out_data_out[31:0]};

    // i_idxprom56_triangular14_vt_select_31(BITSELECT,44)@2
    assign i_idxprom56_triangular14_vt_select_31_b = i_idxprom56_triangular14_sel_x_b[31:0];

    // redist22_i_idxprom56_triangular14_vt_select_31_b_1(DELAY,550)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_idxprom56_triangular14_vt_select_31_b_1_q <= '0;
        end
        else
        begin
            redist22_i_idxprom56_triangular14_vt_select_31_b_1_q <= $unsigned(i_idxprom56_triangular14_vt_select_31_b);
        end
    end

    // i_idxprom56_triangular14_vt_join(BITJOIN,43)@3
    assign i_idxprom56_triangular14_vt_join_q = {c_i32_058_q, redist22_i_idxprom56_triangular14_vt_select_31_b_1_q};

    // i_arrayidx593_triangular0_dupName_0_trunc_sel_x(BITSELECT,108)@3
    assign i_arrayidx593_triangular0_dupName_0_trunc_sel_x_b = i_idxprom56_triangular14_vt_join_q[15:0];

    // highBBits_uid181_i_arrayidx593_triangular0_mult_x(BITSELECT,180)@3
    assign highBBits_uid181_i_arrayidx593_triangular0_mult_x_b = i_arrayidx593_triangular0_dupName_0_trunc_sel_x_b[15:3];

    // highBBits_uid176_i_arrayidx593_triangular0_mult_x(BITSELECT,175)@3
    assign highBBits_uid176_i_arrayidx593_triangular0_mult_x_b = i_arrayidx593_triangular0_dupName_0_trunc_sel_x_b[15:1];

    // addsumAHighB_uid177_i_arrayidx593_triangular0_mult_x(ADD,176)@3
    assign addsumAHighB_uid177_i_arrayidx593_triangular0_mult_x_a = {1'b0, i_arrayidx593_triangular0_dupName_0_trunc_sel_x_b};
    assign addsumAHighB_uid177_i_arrayidx593_triangular0_mult_x_b = {2'b00, highBBits_uid176_i_arrayidx593_triangular0_mult_x_b};
    assign addsumAHighB_uid177_i_arrayidx593_triangular0_mult_x_o = $unsigned(addsumAHighB_uid177_i_arrayidx593_triangular0_mult_x_a) + $unsigned(addsumAHighB_uid177_i_arrayidx593_triangular0_mult_x_b);
    assign addsumAHighB_uid177_i_arrayidx593_triangular0_mult_x_q = addsumAHighB_uid177_i_arrayidx593_triangular0_mult_x_o[16:0];

    // lowRangeB_uid175_i_arrayidx593_triangular0_mult_x(BITSELECT,174)@3
    assign lowRangeB_uid175_i_arrayidx593_triangular0_mult_x_in = i_arrayidx593_triangular0_dupName_0_trunc_sel_x_b[0:0];
    assign lowRangeB_uid175_i_arrayidx593_triangular0_mult_x_b = lowRangeB_uid175_i_arrayidx593_triangular0_mult_x_in[0:0];

    // add_uid178_i_arrayidx593_triangular0_mult_x(BITJOIN,177)@3
    assign add_uid178_i_arrayidx593_triangular0_mult_x_q = {addsumAHighB_uid177_i_arrayidx593_triangular0_mult_x_q, lowRangeB_uid175_i_arrayidx593_triangular0_mult_x_b};

    // a_subconst_25_sumAHighB_uid182_i_arrayidx593_triangular0_mult_x(ADD,181)@3
    assign a_subconst_25_sumAHighB_uid182_i_arrayidx593_triangular0_mult_x_a = {1'b0, add_uid178_i_arrayidx593_triangular0_mult_x_q};
    assign a_subconst_25_sumAHighB_uid182_i_arrayidx593_triangular0_mult_x_b = {6'b000000, highBBits_uid181_i_arrayidx593_triangular0_mult_x_b};
    assign a_subconst_25_sumAHighB_uid182_i_arrayidx593_triangular0_mult_x_o = $unsigned(a_subconst_25_sumAHighB_uid182_i_arrayidx593_triangular0_mult_x_a) + $unsigned(a_subconst_25_sumAHighB_uid182_i_arrayidx593_triangular0_mult_x_b);
    assign a_subconst_25_sumAHighB_uid182_i_arrayidx593_triangular0_mult_x_q = a_subconst_25_sumAHighB_uid182_i_arrayidx593_triangular0_mult_x_o[18:0];

    // lowRangeB_uid180_i_arrayidx593_triangular0_mult_x(BITSELECT,179)@3
    assign lowRangeB_uid180_i_arrayidx593_triangular0_mult_x_in = i_arrayidx593_triangular0_dupName_0_trunc_sel_x_b[2:0];
    assign lowRangeB_uid180_i_arrayidx593_triangular0_mult_x_b = lowRangeB_uid180_i_arrayidx593_triangular0_mult_x_in[2:0];

    // a_subconst_25_uid183_i_arrayidx593_triangular0_mult_x(BITJOIN,182)@3
    assign a_subconst_25_uid183_i_arrayidx593_triangular0_mult_x_q = {a_subconst_25_sumAHighB_uid182_i_arrayidx593_triangular0_mult_x_q, lowRangeB_uid180_i_arrayidx593_triangular0_mult_x_b};

    // sR_bottomRange_uid187_i_arrayidx593_triangular0_mult_x(BITSELECT,186)@3
    assign sR_bottomRange_uid187_i_arrayidx593_triangular0_mult_x_in = a_subconst_25_uid183_i_arrayidx593_triangular0_mult_x_q[20:0];
    assign sR_bottomRange_uid187_i_arrayidx593_triangular0_mult_x_b = sR_bottomRange_uid187_i_arrayidx593_triangular0_mult_x_in[20:0];

    // sR_bottomExtension_uid186_i_arrayidx593_triangular0_mult_x(CONSTANT,185)
    assign sR_bottomExtension_uid186_i_arrayidx593_triangular0_mult_x_q = $unsigned(4'b0000);

    // sR_mergedSignalTM_uid188_i_arrayidx593_triangular0_mult_x(BITJOIN,187)@3
    assign sR_mergedSignalTM_uid188_i_arrayidx593_triangular0_mult_x_q = {sR_bottomRange_uid187_i_arrayidx593_triangular0_mult_x_b, sR_bottomExtension_uid186_i_arrayidx593_triangular0_mult_x_q};

    // i_arrayidx593_triangular0_mult_extender_x(BITJOIN,105)@3
    assign i_arrayidx593_triangular0_mult_extender_x_q = {i_arrayidx593_triangular0_mult_multconst_x_q, sR_mergedSignalTM_uid188_i_arrayidx593_triangular0_mult_x_q};

    // i_arrayidx593_triangular0_dupName_1_trunc_sel_x(BITSELECT,109)@3
    assign i_arrayidx593_triangular0_dupName_1_trunc_sel_x_b = i_arrayidx593_triangular0_mult_extender_x_q[15:0];

    // redist16_i_arrayidx593_triangular0_dupName_1_trunc_sel_x_b_1(DELAY,544)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_arrayidx593_triangular0_dupName_1_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist16_i_arrayidx593_triangular0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx593_triangular0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx593_triangular0_add_x(ADD,89)@4
    assign i_arrayidx593_triangular0_add_x_a = {1'b0, i_arrayidx593_triangular0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx593_triangular0_add_x_b = {1'b0, redist16_i_arrayidx593_triangular0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx593_triangular0_add_x_o = $unsigned(i_arrayidx593_triangular0_add_x_a) + $unsigned(i_arrayidx593_triangular0_add_x_b);
    assign i_arrayidx593_triangular0_add_x_q = i_arrayidx593_triangular0_add_x_o[16:0];

    // i_arrayidx593_triangular0_dupName_2_trunc_sel_x(BITSELECT,110)@4
    assign i_arrayidx593_triangular0_dupName_2_trunc_sel_x_b = i_arrayidx593_triangular0_add_x_q[15:0];

    // i_arrayidx593_triangular0_dupName_0_add_x(ADD,99)@4
    assign i_arrayidx593_triangular0_dupName_0_add_x_a = {1'b0, i_arrayidx593_triangular0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx593_triangular0_dupName_0_add_x_b = {1'b0, i_arrayidx593_triangular0_shift_join_x_q};
    assign i_arrayidx593_triangular0_dupName_0_add_x_o = $unsigned(i_arrayidx593_triangular0_dupName_0_add_x_a) + $unsigned(i_arrayidx593_triangular0_dupName_0_add_x_b);
    assign i_arrayidx593_triangular0_dupName_0_add_x_q = i_arrayidx593_triangular0_dupName_0_add_x_o[16:0];

    // i_arrayidx593_triangular0_dupName_5_trunc_sel_x(BITSELECT,112)@4
    assign i_arrayidx593_triangular0_dupName_5_trunc_sel_x_b = i_arrayidx593_triangular0_dupName_0_add_x_q[15:0];

    // i_arrayidx593_triangular0_append_upper_bits_x(BITJOIN,90)@4
    assign i_arrayidx593_triangular0_append_upper_bits_x_q = {i_arrayidx593_triangular0_upper_bits_x_merged_bit_select_b, i_arrayidx593_triangular0_dupName_5_trunc_sel_x_b};

    // i_arrayidx593_triangular17_vt_select_63(BITSELECT,33)@4
    assign i_arrayidx593_triangular17_vt_select_63_b = i_arrayidx593_triangular0_append_upper_bits_x_q[63:2];

    // i_arrayidx593_triangular17_vt_const_1(CONSTANT,31)
    assign i_arrayidx593_triangular17_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx593_triangular17_vt_join(BITJOIN,32)@4
    assign i_arrayidx593_triangular17_vt_join_q = {i_arrayidx593_triangular17_vt_select_63_b, i_arrayidx593_triangular17_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_triangular17_triangular18(BLACKBOX,53)@4
    // in in_i_stall@20000000
    // out out_o_readdata@6
    // out out_o_stall@5
    // out out_o_valid@6
    // out out_unnamed_triangular17_triangular_avm_address@20000000
    // out out_unnamed_triangular17_triangular_avm_burstcount@20000000
    // out out_unnamed_triangular17_triangular_avm_byteenable@20000000
    // out out_unnamed_triangular17_triangular_avm_enable@20000000
    // out out_unnamed_triangular17_triangular_avm_read@20000000
    // out out_unnamed_triangular17_triangular_avm_write@20000000
    // out out_unnamed_triangular17_triangular_avm_writedata@20000000
    triangular_i_llvm_fpga_mem_unnamed_17_triangular0 thei_llvm_fpga_mem_unnamed_triangular17_triangular18 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx593_triangular17_vt_join_q),
        .in_i_predicate(redist23_i_first_cleanup_xor_triangular4_q_2_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_unnamed_triangular17_triangular_avm_readdata(in_unnamed_triangular17_triangular_avm_readdata),
        .in_unnamed_triangular17_triangular_avm_readdatavalid(in_unnamed_triangular17_triangular_avm_readdatavalid),
        .in_unnamed_triangular17_triangular_avm_waitrequest(in_unnamed_triangular17_triangular_avm_waitrequest),
        .in_unnamed_triangular17_triangular_avm_writeack(in_unnamed_triangular17_triangular_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_triangular17_triangular18_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_triangular17_triangular_avm_address(i_llvm_fpga_mem_unnamed_triangular17_triangular18_out_unnamed_triangular17_triangular_avm_address),
        .out_unnamed_triangular17_triangular_avm_burstcount(i_llvm_fpga_mem_unnamed_triangular17_triangular18_out_unnamed_triangular17_triangular_avm_burstcount),
        .out_unnamed_triangular17_triangular_avm_byteenable(i_llvm_fpga_mem_unnamed_triangular17_triangular18_out_unnamed_triangular17_triangular_avm_byteenable),
        .out_unnamed_triangular17_triangular_avm_enable(i_llvm_fpga_mem_unnamed_triangular17_triangular18_out_unnamed_triangular17_triangular_avm_enable),
        .out_unnamed_triangular17_triangular_avm_read(i_llvm_fpga_mem_unnamed_triangular17_triangular18_out_unnamed_triangular17_triangular_avm_read),
        .out_unnamed_triangular17_triangular_avm_write(i_llvm_fpga_mem_unnamed_triangular17_triangular18_out_unnamed_triangular17_triangular_avm_write),
        .out_unnamed_triangular17_triangular_avm_writedata(i_llvm_fpga_mem_unnamed_triangular17_triangular18_out_unnamed_triangular17_triangular_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,86)
    assign out_unnamed_triangular17_triangular_avm_address = i_llvm_fpga_mem_unnamed_triangular17_triangular18_out_unnamed_triangular17_triangular_avm_address;
    assign out_unnamed_triangular17_triangular_avm_enable = i_llvm_fpga_mem_unnamed_triangular17_triangular18_out_unnamed_triangular17_triangular_avm_enable;
    assign out_unnamed_triangular17_triangular_avm_read = i_llvm_fpga_mem_unnamed_triangular17_triangular18_out_unnamed_triangular17_triangular_avm_read;
    assign out_unnamed_triangular17_triangular_avm_write = i_llvm_fpga_mem_unnamed_triangular17_triangular18_out_unnamed_triangular17_triangular_avm_write;
    assign out_unnamed_triangular17_triangular_avm_writedata = i_llvm_fpga_mem_unnamed_triangular17_triangular18_out_unnamed_triangular17_triangular_avm_writedata;
    assign out_unnamed_triangular17_triangular_avm_byteenable = i_llvm_fpga_mem_unnamed_triangular17_triangular18_out_unnamed_triangular17_triangular_avm_byteenable;
    assign out_unnamed_triangular17_triangular_avm_burstcount = i_llvm_fpga_mem_unnamed_triangular17_triangular18_out_unnamed_triangular17_triangular_avm_burstcount;

    // redist11_sync_together82_aunroll_x_in_i_valid_3(DELAY,539)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together82_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist11_sync_together82_aunroll_x_in_i_valid_3_q <= $unsigned(redist10_sync_together82_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist12_sync_together82_aunroll_x_in_i_valid_4(DELAY,540)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together82_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist12_sync_together82_aunroll_x_in_i_valid_4_q <= $unsigned(redist11_sync_together82_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg9(REG,152)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist12_sync_together82_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist24_i_first_cleanup_xor_triangular4_q_4(DELAY,552)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_first_cleanup_xor_triangular4_q_4_delay_0 <= '0;
            redist24_i_first_cleanup_xor_triangular4_q_4_q <= '0;
        end
        else
        begin
            redist24_i_first_cleanup_xor_triangular4_q_4_delay_0 <= $unsigned(redist23_i_first_cleanup_xor_triangular4_q_2_q);
            redist24_i_first_cleanup_xor_triangular4_q_4_q <= redist24_i_first_cleanup_xor_triangular4_q_4_delay_0;
        end
    end

    // i_arrayidx63_triangular0_narrow_x(BITSELECT,117)@4
    assign i_arrayidx63_triangular0_narrow_x_b = i_idxprom58_triangular16_vt_join_q[61:0];

    // redist15_i_arrayidx63_triangular0_narrow_x_b_1(DELAY,543)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_arrayidx63_triangular0_narrow_x_b_1_q <= '0;
        end
        else
        begin
            redist15_i_arrayidx63_triangular0_narrow_x_b_1_q <= $unsigned(i_arrayidx63_triangular0_narrow_x_b);
        end
    end

    // i_arrayidx63_triangular0_shift_join_x(BITJOIN,118)@5
    assign i_arrayidx63_triangular0_shift_join_x_q = {redist15_i_arrayidx63_triangular0_narrow_x_b_1_q, i_arrayidx593_triangular17_vt_const_1_q};

    // i_arrayidx63_triangular0_mult_multconst_x(CONSTANT,125)
    assign i_arrayidx63_triangular0_mult_multconst_x_q = $unsigned(55'b0000000000000000000000000000000000000000000000000000000);

    // i_arrayidx63_triangular0_mult_x_bs1(BITSELECT,230)@3
    assign i_arrayidx63_triangular0_mult_x_bs1_b = i_idxprom56_triangular14_vt_join_q[63:54];

    // highBBits_uid278_i_arrayidx63_triangular0_mult_x_im0(BITSELECT,277)@3
    assign highBBits_uid278_i_arrayidx63_triangular0_mult_x_im0_b = i_arrayidx63_triangular0_mult_x_bs1_b[9:3];

    // highBBits_uid273_i_arrayidx63_triangular0_mult_x_im0(BITSELECT,272)@3
    assign highBBits_uid273_i_arrayidx63_triangular0_mult_x_im0_b = i_arrayidx63_triangular0_mult_x_bs1_b[9:1];

    // addsumAHighB_uid274_i_arrayidx63_triangular0_mult_x_im0(ADD,273)@3
    assign addsumAHighB_uid274_i_arrayidx63_triangular0_mult_x_im0_a = {1'b0, i_arrayidx63_triangular0_mult_x_bs1_b};
    assign addsumAHighB_uid274_i_arrayidx63_triangular0_mult_x_im0_b = {2'b00, highBBits_uid273_i_arrayidx63_triangular0_mult_x_im0_b};
    assign addsumAHighB_uid274_i_arrayidx63_triangular0_mult_x_im0_o = $unsigned(addsumAHighB_uid274_i_arrayidx63_triangular0_mult_x_im0_a) + $unsigned(addsumAHighB_uid274_i_arrayidx63_triangular0_mult_x_im0_b);
    assign addsumAHighB_uid274_i_arrayidx63_triangular0_mult_x_im0_q = addsumAHighB_uid274_i_arrayidx63_triangular0_mult_x_im0_o[10:0];

    // lowRangeB_uid272_i_arrayidx63_triangular0_mult_x_im0(BITSELECT,271)@3
    assign lowRangeB_uid272_i_arrayidx63_triangular0_mult_x_im0_in = i_arrayidx63_triangular0_mult_x_bs1_b[0:0];
    assign lowRangeB_uid272_i_arrayidx63_triangular0_mult_x_im0_b = lowRangeB_uid272_i_arrayidx63_triangular0_mult_x_im0_in[0:0];

    // add_uid275_i_arrayidx63_triangular0_mult_x_im0(BITJOIN,274)@3
    assign add_uid275_i_arrayidx63_triangular0_mult_x_im0_q = {addsumAHighB_uid274_i_arrayidx63_triangular0_mult_x_im0_q, lowRangeB_uid272_i_arrayidx63_triangular0_mult_x_im0_b};

    // a_subconst_25_sumAHighB_uid279_i_arrayidx63_triangular0_mult_x_im0(ADD,278)@3
    assign a_subconst_25_sumAHighB_uid279_i_arrayidx63_triangular0_mult_x_im0_a = {1'b0, add_uid275_i_arrayidx63_triangular0_mult_x_im0_q};
    assign a_subconst_25_sumAHighB_uid279_i_arrayidx63_triangular0_mult_x_im0_b = {6'b000000, highBBits_uid278_i_arrayidx63_triangular0_mult_x_im0_b};
    assign a_subconst_25_sumAHighB_uid279_i_arrayidx63_triangular0_mult_x_im0_o = $unsigned(a_subconst_25_sumAHighB_uid279_i_arrayidx63_triangular0_mult_x_im0_a) + $unsigned(a_subconst_25_sumAHighB_uid279_i_arrayidx63_triangular0_mult_x_im0_b);
    assign a_subconst_25_sumAHighB_uid279_i_arrayidx63_triangular0_mult_x_im0_q = a_subconst_25_sumAHighB_uid279_i_arrayidx63_triangular0_mult_x_im0_o[12:0];

    // lowRangeB_uid277_i_arrayidx63_triangular0_mult_x_im0(BITSELECT,276)@3
    assign lowRangeB_uid277_i_arrayidx63_triangular0_mult_x_im0_in = i_arrayidx63_triangular0_mult_x_bs1_b[2:0];
    assign lowRangeB_uid277_i_arrayidx63_triangular0_mult_x_im0_b = lowRangeB_uid277_i_arrayidx63_triangular0_mult_x_im0_in[2:0];

    // a_subconst_25_uid280_i_arrayidx63_triangular0_mult_x_im0(BITJOIN,279)@3
    assign a_subconst_25_uid280_i_arrayidx63_triangular0_mult_x_im0_q = {a_subconst_25_sumAHighB_uid279_i_arrayidx63_triangular0_mult_x_im0_q, lowRangeB_uid277_i_arrayidx63_triangular0_mult_x_im0_b};

    // sR_bottomRange_uid284_i_arrayidx63_triangular0_mult_x_im0(BITSELECT,283)@3
    assign sR_bottomRange_uid284_i_arrayidx63_triangular0_mult_x_im0_in = a_subconst_25_uid280_i_arrayidx63_triangular0_mult_x_im0_q[14:0];
    assign sR_bottomRange_uid284_i_arrayidx63_triangular0_mult_x_im0_b = sR_bottomRange_uid284_i_arrayidx63_triangular0_mult_x_im0_in[14:0];

    // redist3_sR_bottomRange_uid284_i_arrayidx63_triangular0_mult_x_im0_b_1(DELAY,531)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sR_bottomRange_uid284_i_arrayidx63_triangular0_mult_x_im0_b_1_q <= '0;
        end
        else
        begin
            redist3_sR_bottomRange_uid284_i_arrayidx63_triangular0_mult_x_im0_b_1_q <= $unsigned(sR_bottomRange_uid284_i_arrayidx63_triangular0_mult_x_im0_b);
        end
    end

    // sR_mergedSignalTM_uid285_i_arrayidx63_triangular0_mult_x_im0(BITJOIN,284)@4
    assign sR_mergedSignalTM_uid285_i_arrayidx63_triangular0_mult_x_im0_q = {redist3_sR_bottomRange_uid284_i_arrayidx63_triangular0_mult_x_im0_b_1_q, sR_bottomExtension_uid186_i_arrayidx593_triangular0_mult_x_q};

    // i_arrayidx63_triangular0_mult_x_sums_align_3(BITSHIFT,244)@4
    assign i_arrayidx63_triangular0_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid285_i_arrayidx63_triangular0_mult_x_im0_q, 9'b000000000 };
    assign i_arrayidx63_triangular0_mult_x_sums_align_3_q = i_arrayidx63_triangular0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx63_triangular0_mult_x_bs7(BITSELECT,236)@3
    assign i_arrayidx63_triangular0_mult_x_bs7_in = i_idxprom56_triangular14_vt_join_q[35:0];
    assign i_arrayidx63_triangular0_mult_x_bs7_b = i_arrayidx63_triangular0_mult_x_bs7_in[35:18];

    // highBBits_uid404_i_arrayidx63_triangular0_mult_x_im6(BITSELECT,403)@3
    assign highBBits_uid404_i_arrayidx63_triangular0_mult_x_im6_b = i_arrayidx63_triangular0_mult_x_bs7_b[17:3];

    // highBBits_uid399_i_arrayidx63_triangular0_mult_x_im6(BITSELECT,398)@3
    assign highBBits_uid399_i_arrayidx63_triangular0_mult_x_im6_b = i_arrayidx63_triangular0_mult_x_bs7_b[17:1];

    // addsumAHighB_uid400_i_arrayidx63_triangular0_mult_x_im6(ADD,399)@3
    assign addsumAHighB_uid400_i_arrayidx63_triangular0_mult_x_im6_a = {1'b0, i_arrayidx63_triangular0_mult_x_bs7_b};
    assign addsumAHighB_uid400_i_arrayidx63_triangular0_mult_x_im6_b = {2'b00, highBBits_uid399_i_arrayidx63_triangular0_mult_x_im6_b};
    assign addsumAHighB_uid400_i_arrayidx63_triangular0_mult_x_im6_o = $unsigned(addsumAHighB_uid400_i_arrayidx63_triangular0_mult_x_im6_a) + $unsigned(addsumAHighB_uid400_i_arrayidx63_triangular0_mult_x_im6_b);
    assign addsumAHighB_uid400_i_arrayidx63_triangular0_mult_x_im6_q = addsumAHighB_uid400_i_arrayidx63_triangular0_mult_x_im6_o[18:0];

    // lowRangeB_uid398_i_arrayidx63_triangular0_mult_x_im6(BITSELECT,397)@3
    assign lowRangeB_uid398_i_arrayidx63_triangular0_mult_x_im6_in = i_arrayidx63_triangular0_mult_x_bs7_b[0:0];
    assign lowRangeB_uid398_i_arrayidx63_triangular0_mult_x_im6_b = lowRangeB_uid398_i_arrayidx63_triangular0_mult_x_im6_in[0:0];

    // add_uid401_i_arrayidx63_triangular0_mult_x_im6(BITJOIN,400)@3
    assign add_uid401_i_arrayidx63_triangular0_mult_x_im6_q = {addsumAHighB_uid400_i_arrayidx63_triangular0_mult_x_im6_q, lowRangeB_uid398_i_arrayidx63_triangular0_mult_x_im6_b};

    // a_subconst_25_sumAHighB_uid405_i_arrayidx63_triangular0_mult_x_im6(ADD,404)@3
    assign a_subconst_25_sumAHighB_uid405_i_arrayidx63_triangular0_mult_x_im6_a = {1'b0, add_uid401_i_arrayidx63_triangular0_mult_x_im6_q};
    assign a_subconst_25_sumAHighB_uid405_i_arrayidx63_triangular0_mult_x_im6_b = {6'b000000, highBBits_uid404_i_arrayidx63_triangular0_mult_x_im6_b};
    assign a_subconst_25_sumAHighB_uid405_i_arrayidx63_triangular0_mult_x_im6_o = $unsigned(a_subconst_25_sumAHighB_uid405_i_arrayidx63_triangular0_mult_x_im6_a) + $unsigned(a_subconst_25_sumAHighB_uid405_i_arrayidx63_triangular0_mult_x_im6_b);
    assign a_subconst_25_sumAHighB_uid405_i_arrayidx63_triangular0_mult_x_im6_q = a_subconst_25_sumAHighB_uid405_i_arrayidx63_triangular0_mult_x_im6_o[20:0];

    // lowRangeB_uid403_i_arrayidx63_triangular0_mult_x_im6(BITSELECT,402)@3
    assign lowRangeB_uid403_i_arrayidx63_triangular0_mult_x_im6_in = i_arrayidx63_triangular0_mult_x_bs7_b[2:0];
    assign lowRangeB_uid403_i_arrayidx63_triangular0_mult_x_im6_b = lowRangeB_uid403_i_arrayidx63_triangular0_mult_x_im6_in[2:0];

    // a_subconst_25_uid406_i_arrayidx63_triangular0_mult_x_im6(BITJOIN,405)@3
    assign a_subconst_25_uid406_i_arrayidx63_triangular0_mult_x_im6_q = {a_subconst_25_sumAHighB_uid405_i_arrayidx63_triangular0_mult_x_im6_q, lowRangeB_uid403_i_arrayidx63_triangular0_mult_x_im6_b};

    // sR_bottomRange_uid410_i_arrayidx63_triangular0_mult_x_im6(BITSELECT,409)@3
    assign sR_bottomRange_uid410_i_arrayidx63_triangular0_mult_x_im6_in = a_subconst_25_uid406_i_arrayidx63_triangular0_mult_x_im6_q[22:0];
    assign sR_bottomRange_uid410_i_arrayidx63_triangular0_mult_x_im6_b = sR_bottomRange_uid410_i_arrayidx63_triangular0_mult_x_im6_in[22:0];

    // redist1_sR_bottomRange_uid410_i_arrayidx63_triangular0_mult_x_im6_b_1(DELAY,529)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sR_bottomRange_uid410_i_arrayidx63_triangular0_mult_x_im6_b_1_q <= '0;
        end
        else
        begin
            redist1_sR_bottomRange_uid410_i_arrayidx63_triangular0_mult_x_im6_b_1_q <= $unsigned(sR_bottomRange_uid410_i_arrayidx63_triangular0_mult_x_im6_b);
        end
    end

    // sR_mergedSignalTM_uid411_i_arrayidx63_triangular0_mult_x_im6(BITJOIN,410)@4
    assign sR_mergedSignalTM_uid411_i_arrayidx63_triangular0_mult_x_im6_q = {redist1_sR_bottomRange_uid410_i_arrayidx63_triangular0_mult_x_im6_b_1_q, sR_bottomExtension_uid186_i_arrayidx593_triangular0_mult_x_q};

    // i_arrayidx63_triangular0_mult_x_sums_align_2(BITSHIFT,243)@4
    assign i_arrayidx63_triangular0_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid411_i_arrayidx63_triangular0_mult_x_im6_q, 18'b000000000000000000 };
    assign i_arrayidx63_triangular0_mult_x_sums_align_2_q = i_arrayidx63_triangular0_mult_x_sums_align_2_qint[44:0];

    // i_arrayidx63_triangular0_mult_x_sums_join_4(BITJOIN,245)@4
    assign i_arrayidx63_triangular0_mult_x_sums_join_4_q = {i_arrayidx63_triangular0_mult_x_sums_align_3_q, i_arrayidx63_triangular0_mult_x_sums_align_2_q};

    // i_arrayidx63_triangular0_mult_x_bs4(BITSELECT,233)@3
    assign i_arrayidx63_triangular0_mult_x_bs4_in = i_idxprom56_triangular14_vt_join_q[53:0];
    assign i_arrayidx63_triangular0_mult_x_bs4_b = i_arrayidx63_triangular0_mult_x_bs4_in[53:36];

    // highBBits_uid335_i_arrayidx63_triangular0_mult_x_im3(BITSELECT,334)@3
    assign highBBits_uid335_i_arrayidx63_triangular0_mult_x_im3_b = i_arrayidx63_triangular0_mult_x_bs4_b[17:3];

    // highBBits_uid330_i_arrayidx63_triangular0_mult_x_im3(BITSELECT,329)@3
    assign highBBits_uid330_i_arrayidx63_triangular0_mult_x_im3_b = i_arrayidx63_triangular0_mult_x_bs4_b[17:1];

    // addsumAHighB_uid331_i_arrayidx63_triangular0_mult_x_im3(ADD,330)@3
    assign addsumAHighB_uid331_i_arrayidx63_triangular0_mult_x_im3_a = {1'b0, i_arrayidx63_triangular0_mult_x_bs4_b};
    assign addsumAHighB_uid331_i_arrayidx63_triangular0_mult_x_im3_b = {2'b00, highBBits_uid330_i_arrayidx63_triangular0_mult_x_im3_b};
    assign addsumAHighB_uid331_i_arrayidx63_triangular0_mult_x_im3_o = $unsigned(addsumAHighB_uid331_i_arrayidx63_triangular0_mult_x_im3_a) + $unsigned(addsumAHighB_uid331_i_arrayidx63_triangular0_mult_x_im3_b);
    assign addsumAHighB_uid331_i_arrayidx63_triangular0_mult_x_im3_q = addsumAHighB_uid331_i_arrayidx63_triangular0_mult_x_im3_o[18:0];

    // lowRangeB_uid329_i_arrayidx63_triangular0_mult_x_im3(BITSELECT,328)@3
    assign lowRangeB_uid329_i_arrayidx63_triangular0_mult_x_im3_in = i_arrayidx63_triangular0_mult_x_bs4_b[0:0];
    assign lowRangeB_uid329_i_arrayidx63_triangular0_mult_x_im3_b = lowRangeB_uid329_i_arrayidx63_triangular0_mult_x_im3_in[0:0];

    // add_uid332_i_arrayidx63_triangular0_mult_x_im3(BITJOIN,331)@3
    assign add_uid332_i_arrayidx63_triangular0_mult_x_im3_q = {addsumAHighB_uid331_i_arrayidx63_triangular0_mult_x_im3_q, lowRangeB_uid329_i_arrayidx63_triangular0_mult_x_im3_b};

    // a_subconst_25_sumAHighB_uid336_i_arrayidx63_triangular0_mult_x_im3(ADD,335)@3
    assign a_subconst_25_sumAHighB_uid336_i_arrayidx63_triangular0_mult_x_im3_a = {1'b0, add_uid332_i_arrayidx63_triangular0_mult_x_im3_q};
    assign a_subconst_25_sumAHighB_uid336_i_arrayidx63_triangular0_mult_x_im3_b = {6'b000000, highBBits_uid335_i_arrayidx63_triangular0_mult_x_im3_b};
    assign a_subconst_25_sumAHighB_uid336_i_arrayidx63_triangular0_mult_x_im3_o = $unsigned(a_subconst_25_sumAHighB_uid336_i_arrayidx63_triangular0_mult_x_im3_a) + $unsigned(a_subconst_25_sumAHighB_uid336_i_arrayidx63_triangular0_mult_x_im3_b);
    assign a_subconst_25_sumAHighB_uid336_i_arrayidx63_triangular0_mult_x_im3_q = a_subconst_25_sumAHighB_uid336_i_arrayidx63_triangular0_mult_x_im3_o[20:0];

    // lowRangeB_uid334_i_arrayidx63_triangular0_mult_x_im3(BITSELECT,333)@3
    assign lowRangeB_uid334_i_arrayidx63_triangular0_mult_x_im3_in = i_arrayidx63_triangular0_mult_x_bs4_b[2:0];
    assign lowRangeB_uid334_i_arrayidx63_triangular0_mult_x_im3_b = lowRangeB_uid334_i_arrayidx63_triangular0_mult_x_im3_in[2:0];

    // a_subconst_25_uid337_i_arrayidx63_triangular0_mult_x_im3(BITJOIN,336)@3
    assign a_subconst_25_uid337_i_arrayidx63_triangular0_mult_x_im3_q = {a_subconst_25_sumAHighB_uid336_i_arrayidx63_triangular0_mult_x_im3_q, lowRangeB_uid334_i_arrayidx63_triangular0_mult_x_im3_b};

    // sR_bottomRange_uid341_i_arrayidx63_triangular0_mult_x_im3(BITSELECT,340)@3
    assign sR_bottomRange_uid341_i_arrayidx63_triangular0_mult_x_im3_in = a_subconst_25_uid337_i_arrayidx63_triangular0_mult_x_im3_q[22:0];
    assign sR_bottomRange_uid341_i_arrayidx63_triangular0_mult_x_im3_b = sR_bottomRange_uid341_i_arrayidx63_triangular0_mult_x_im3_in[22:0];

    // redist2_sR_bottomRange_uid341_i_arrayidx63_triangular0_mult_x_im3_b_1(DELAY,530)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sR_bottomRange_uid341_i_arrayidx63_triangular0_mult_x_im3_b_1_q <= '0;
        end
        else
        begin
            redist2_sR_bottomRange_uid341_i_arrayidx63_triangular0_mult_x_im3_b_1_q <= $unsigned(sR_bottomRange_uid341_i_arrayidx63_triangular0_mult_x_im3_b);
        end
    end

    // sR_mergedSignalTM_uid342_i_arrayidx63_triangular0_mult_x_im3(BITJOIN,341)@4
    assign sR_mergedSignalTM_uid342_i_arrayidx63_triangular0_mult_x_im3_q = {redist2_sR_bottomRange_uid341_i_arrayidx63_triangular0_mult_x_im3_b_1_q, sR_bottomExtension_uid186_i_arrayidx593_triangular0_mult_x_q};

    // i_arrayidx63_triangular0_mult_x_sums_align_0(BITSHIFT,241)@4
    assign i_arrayidx63_triangular0_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid342_i_arrayidx63_triangular0_mult_x_im3_q, 9'b000000000 };
    assign i_arrayidx63_triangular0_mult_x_sums_align_0_q = i_arrayidx63_triangular0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx63_triangular0_mult_x_bs10(BITSELECT,239)@3
    assign i_arrayidx63_triangular0_mult_x_bs10_in = i_idxprom56_triangular14_vt_join_q[17:0];
    assign i_arrayidx63_triangular0_mult_x_bs10_b = i_arrayidx63_triangular0_mult_x_bs10_in[17:0];

    // highBBits_uid473_i_arrayidx63_triangular0_mult_x_im9(BITSELECT,472)@3
    assign highBBits_uid473_i_arrayidx63_triangular0_mult_x_im9_b = i_arrayidx63_triangular0_mult_x_bs10_b[17:3];

    // highBBits_uid468_i_arrayidx63_triangular0_mult_x_im9(BITSELECT,467)@3
    assign highBBits_uid468_i_arrayidx63_triangular0_mult_x_im9_b = i_arrayidx63_triangular0_mult_x_bs10_b[17:1];

    // addsumAHighB_uid469_i_arrayidx63_triangular0_mult_x_im9(ADD,468)@3
    assign addsumAHighB_uid469_i_arrayidx63_triangular0_mult_x_im9_a = {1'b0, i_arrayidx63_triangular0_mult_x_bs10_b};
    assign addsumAHighB_uid469_i_arrayidx63_triangular0_mult_x_im9_b = {2'b00, highBBits_uid468_i_arrayidx63_triangular0_mult_x_im9_b};
    assign addsumAHighB_uid469_i_arrayidx63_triangular0_mult_x_im9_o = $unsigned(addsumAHighB_uid469_i_arrayidx63_triangular0_mult_x_im9_a) + $unsigned(addsumAHighB_uid469_i_arrayidx63_triangular0_mult_x_im9_b);
    assign addsumAHighB_uid469_i_arrayidx63_triangular0_mult_x_im9_q = addsumAHighB_uid469_i_arrayidx63_triangular0_mult_x_im9_o[18:0];

    // lowRangeB_uid467_i_arrayidx63_triangular0_mult_x_im9(BITSELECT,466)@3
    assign lowRangeB_uid467_i_arrayidx63_triangular0_mult_x_im9_in = i_arrayidx63_triangular0_mult_x_bs10_b[0:0];
    assign lowRangeB_uid467_i_arrayidx63_triangular0_mult_x_im9_b = lowRangeB_uid467_i_arrayidx63_triangular0_mult_x_im9_in[0:0];

    // add_uid470_i_arrayidx63_triangular0_mult_x_im9(BITJOIN,469)@3
    assign add_uid470_i_arrayidx63_triangular0_mult_x_im9_q = {addsumAHighB_uid469_i_arrayidx63_triangular0_mult_x_im9_q, lowRangeB_uid467_i_arrayidx63_triangular0_mult_x_im9_b};

    // a_subconst_25_sumAHighB_uid474_i_arrayidx63_triangular0_mult_x_im9(ADD,473)@3
    assign a_subconst_25_sumAHighB_uid474_i_arrayidx63_triangular0_mult_x_im9_a = {1'b0, add_uid470_i_arrayidx63_triangular0_mult_x_im9_q};
    assign a_subconst_25_sumAHighB_uid474_i_arrayidx63_triangular0_mult_x_im9_b = {6'b000000, highBBits_uid473_i_arrayidx63_triangular0_mult_x_im9_b};
    assign a_subconst_25_sumAHighB_uid474_i_arrayidx63_triangular0_mult_x_im9_o = $unsigned(a_subconst_25_sumAHighB_uid474_i_arrayidx63_triangular0_mult_x_im9_a) + $unsigned(a_subconst_25_sumAHighB_uid474_i_arrayidx63_triangular0_mult_x_im9_b);
    assign a_subconst_25_sumAHighB_uid474_i_arrayidx63_triangular0_mult_x_im9_q = a_subconst_25_sumAHighB_uid474_i_arrayidx63_triangular0_mult_x_im9_o[20:0];

    // lowRangeB_uid472_i_arrayidx63_triangular0_mult_x_im9(BITSELECT,471)@3
    assign lowRangeB_uid472_i_arrayidx63_triangular0_mult_x_im9_in = i_arrayidx63_triangular0_mult_x_bs10_b[2:0];
    assign lowRangeB_uid472_i_arrayidx63_triangular0_mult_x_im9_b = lowRangeB_uid472_i_arrayidx63_triangular0_mult_x_im9_in[2:0];

    // a_subconst_25_uid475_i_arrayidx63_triangular0_mult_x_im9(BITJOIN,474)@3
    assign a_subconst_25_uid475_i_arrayidx63_triangular0_mult_x_im9_q = {a_subconst_25_sumAHighB_uid474_i_arrayidx63_triangular0_mult_x_im9_q, lowRangeB_uid472_i_arrayidx63_triangular0_mult_x_im9_b};

    // sR_bottomRange_uid479_i_arrayidx63_triangular0_mult_x_im9(BITSELECT,478)@3
    assign sR_bottomRange_uid479_i_arrayidx63_triangular0_mult_x_im9_in = a_subconst_25_uid475_i_arrayidx63_triangular0_mult_x_im9_q[22:0];
    assign sR_bottomRange_uid479_i_arrayidx63_triangular0_mult_x_im9_b = sR_bottomRange_uid479_i_arrayidx63_triangular0_mult_x_im9_in[22:0];

    // redist0_sR_bottomRange_uid479_i_arrayidx63_triangular0_mult_x_im9_b_1(DELAY,528)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sR_bottomRange_uid479_i_arrayidx63_triangular0_mult_x_im9_b_1_q <= '0;
        end
        else
        begin
            redist0_sR_bottomRange_uid479_i_arrayidx63_triangular0_mult_x_im9_b_1_q <= $unsigned(sR_bottomRange_uid479_i_arrayidx63_triangular0_mult_x_im9_b);
        end
    end

    // sR_mergedSignalTM_uid480_i_arrayidx63_triangular0_mult_x_im9(BITJOIN,479)@4
    assign sR_mergedSignalTM_uid480_i_arrayidx63_triangular0_mult_x_im9_q = {redist0_sR_bottomRange_uid479_i_arrayidx63_triangular0_mult_x_im9_b_1_q, sR_bottomExtension_uid186_i_arrayidx593_triangular0_mult_x_q};

    // i_arrayidx63_triangular0_mult_x_sums_join_1(BITJOIN,242)@4
    assign i_arrayidx63_triangular0_mult_x_sums_join_1_q = {i_arrayidx63_triangular0_mult_x_sums_align_0_q, sR_mergedSignalTM_uid480_i_arrayidx63_triangular0_mult_x_im9_q};

    // i_arrayidx63_triangular0_mult_x_sums_result_add_0_0(ADD,246)@4
    assign i_arrayidx63_triangular0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx63_triangular0_mult_x_sums_join_1_q};
    assign i_arrayidx63_triangular0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx63_triangular0_mult_x_sums_join_4_q};
    assign i_arrayidx63_triangular0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx63_triangular0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx63_triangular0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx63_triangular0_mult_x_sums_result_add_0_0_q = i_arrayidx63_triangular0_mult_x_sums_result_add_0_0_o[73:0];

    // i_arrayidx63_triangular0_mult_extender_x(BITJOIN,124)@4
    assign i_arrayidx63_triangular0_mult_extender_x_q = {i_arrayidx63_triangular0_mult_multconst_x_q, i_arrayidx63_triangular0_mult_x_sums_result_add_0_0_q[72:0]};

    // i_arrayidx63_triangular0_trunc_sel_x(BITSELECT,126)@4
    assign i_arrayidx63_triangular0_trunc_sel_x_b = i_arrayidx63_triangular0_mult_extender_x_q[63:0];

    // redist14_i_arrayidx63_triangular0_trunc_sel_x_b_1(DELAY,542)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_arrayidx63_triangular0_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist14_i_arrayidx63_triangular0_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx63_triangular0_trunc_sel_x_b);
        end
    end

    // valid_fanout_reg8(REG,151)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist11_sync_together82_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024a100i32_a4528_triangular19(BLACKBOX,51)@5
    triangular_i_llvm_fpga_ffwd_dest_p1024a100i32_a4528_0 thei_llvm_fpga_ffwd_dest_p1024a100i32_a4528_triangular19 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1024a100i32_a4528_triangular19_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx63_triangular0_add_x(ADD,113)@5
    assign i_arrayidx63_triangular0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1024a100i32_a4528_triangular19_out_dest_data_out_1_0};
    assign i_arrayidx63_triangular0_add_x_b = {1'b0, redist14_i_arrayidx63_triangular0_trunc_sel_x_b_1_q};
    assign i_arrayidx63_triangular0_add_x_o = $unsigned(i_arrayidx63_triangular0_add_x_a) + $unsigned(i_arrayidx63_triangular0_add_x_b);
    assign i_arrayidx63_triangular0_add_x_q = i_arrayidx63_triangular0_add_x_o[64:0];

    // i_arrayidx63_triangular0_dupName_0_trunc_sel_x(BITSELECT,127)@5
    assign i_arrayidx63_triangular0_dupName_0_trunc_sel_x_b = i_arrayidx63_triangular0_add_x_q[63:0];

    // i_arrayidx63_triangular0_dupName_0_add_x(ADD,121)@5
    assign i_arrayidx63_triangular0_dupName_0_add_x_a = {1'b0, i_arrayidx63_triangular0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx63_triangular0_dupName_0_add_x_b = {1'b0, i_arrayidx63_triangular0_shift_join_x_q};
    assign i_arrayidx63_triangular0_dupName_0_add_x_o = $unsigned(i_arrayidx63_triangular0_dupName_0_add_x_a) + $unsigned(i_arrayidx63_triangular0_dupName_0_add_x_b);
    assign i_arrayidx63_triangular0_dupName_0_add_x_q = i_arrayidx63_triangular0_dupName_0_add_x_o[64:0];

    // i_arrayidx63_triangular0_dupName_2_trunc_sel_x(BITSELECT,128)@5
    assign i_arrayidx63_triangular0_dupName_2_trunc_sel_x_b = i_arrayidx63_triangular0_dupName_0_add_x_q[63:0];

    // redist13_i_arrayidx63_triangular0_dupName_2_trunc_sel_x_b_1(DELAY,541)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_arrayidx63_triangular0_dupName_2_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist13_i_arrayidx63_triangular0_dupName_2_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx63_triangular0_dupName_2_trunc_sel_x_b);
        end
    end

    // i_llvm_fpga_mem_memdep_8_triangular21(BLACKBOX,52)@6
    // out out_lsu_memdep_8_o_active@20000000
    // out out_memdep_8_triangular_avm_address@20000000
    // out out_memdep_8_triangular_avm_burstcount@20000000
    // out out_memdep_8_triangular_avm_byteenable@20000000
    // out out_memdep_8_triangular_avm_enable@20000000
    // out out_memdep_8_triangular_avm_read@20000000
    // out out_memdep_8_triangular_avm_write@20000000
    // out out_memdep_8_triangular_avm_writedata@20000000
    // out out_o_stall@9
    // out out_o_valid@9
    // out out_o_writeack@9
    triangular_i_llvm_fpga_mem_memdep_8_0 thei_llvm_fpga_mem_memdep_8_triangular21 (
        .in_flush(in_flush),
        .in_i_address(redist13_i_arrayidx63_triangular0_dupName_2_trunc_sel_x_b_1_q),
        .in_i_predicate(redist24_i_first_cleanup_xor_triangular4_q_4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg9_q),
        .in_i_writedata(i_llvm_fpga_mem_unnamed_triangular17_triangular18_out_o_readdata),
        .in_memdep_8_triangular_avm_readdata(in_memdep_8_triangular_avm_readdata),
        .in_memdep_8_triangular_avm_readdatavalid(in_memdep_8_triangular_avm_readdatavalid),
        .in_memdep_8_triangular_avm_waitrequest(in_memdep_8_triangular_avm_waitrequest),
        .in_memdep_8_triangular_avm_writeack(in_memdep_8_triangular_avm_writeack),
        .out_lsu_memdep_8_o_active(i_llvm_fpga_mem_memdep_8_triangular21_out_lsu_memdep_8_o_active),
        .out_memdep_8_triangular_avm_address(i_llvm_fpga_mem_memdep_8_triangular21_out_memdep_8_triangular_avm_address),
        .out_memdep_8_triangular_avm_burstcount(i_llvm_fpga_mem_memdep_8_triangular21_out_memdep_8_triangular_avm_burstcount),
        .out_memdep_8_triangular_avm_byteenable(i_llvm_fpga_mem_memdep_8_triangular21_out_memdep_8_triangular_avm_byteenable),
        .out_memdep_8_triangular_avm_enable(i_llvm_fpga_mem_memdep_8_triangular21_out_memdep_8_triangular_avm_enable),
        .out_memdep_8_triangular_avm_read(i_llvm_fpga_mem_memdep_8_triangular21_out_memdep_8_triangular_avm_read),
        .out_memdep_8_triangular_avm_write(i_llvm_fpga_mem_memdep_8_triangular21_out_memdep_8_triangular_avm_write),
        .out_memdep_8_triangular_avm_writedata(i_llvm_fpga_mem_memdep_8_triangular21_out_memdep_8_triangular_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,87)
    assign out_memdep_8_triangular_avm_address = i_llvm_fpga_mem_memdep_8_triangular21_out_memdep_8_triangular_avm_address;
    assign out_memdep_8_triangular_avm_enable = i_llvm_fpga_mem_memdep_8_triangular21_out_memdep_8_triangular_avm_enable;
    assign out_memdep_8_triangular_avm_read = i_llvm_fpga_mem_memdep_8_triangular21_out_memdep_8_triangular_avm_read;
    assign out_memdep_8_triangular_avm_write = i_llvm_fpga_mem_memdep_8_triangular21_out_memdep_8_triangular_avm_write;
    assign out_memdep_8_triangular_avm_writedata = i_llvm_fpga_mem_memdep_8_triangular21_out_memdep_8_triangular_avm_writedata;
    assign out_memdep_8_triangular_avm_byteenable = i_llvm_fpga_mem_memdep_8_triangular21_out_memdep_8_triangular_avm_byteenable;
    assign out_memdep_8_triangular_avm_burstcount = i_llvm_fpga_mem_memdep_8_triangular21_out_memdep_8_triangular_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,88)
    assign out_lsu_memdep_8_o_active = i_llvm_fpga_mem_memdep_8_triangular21_out_lsu_memdep_8_o_active;

    // valid_fanout_reg0(REG,143)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist12_sync_together82_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist4_valid_fanout_reg0_q_3(DELAY,532)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_valid_fanout_reg0_q_3_delay_0 <= '0;
            redist4_valid_fanout_reg0_q_3_delay_1 <= '0;
            redist4_valid_fanout_reg0_q_3_q <= '0;
        end
        else
        begin
            redist4_valid_fanout_reg0_q_3_delay_0 <= $unsigned(valid_fanout_reg0_q);
            redist4_valid_fanout_reg0_q_3_delay_1 <= redist4_valid_fanout_reg0_q_3_delay_0;
            redist4_valid_fanout_reg0_q_3_q <= redist4_valid_fanout_reg0_q_3_delay_1;
        end
    end

    // valid_fanout_reg11(REG,154)@1 + 1
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

    // valid_fanout_reg12(REG,155)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp38105_push52_triangular36(BLACKBOX,62)@2
    // out out_feedback_out_52@20000000
    // out out_feedback_valid_out_52@20000000
    triangular_i_llvm_fpga_push_i1_notcmp38105_push52_0 thei_llvm_fpga_push_i1_notcmp38105_push52_triangular36 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp38105_pop52_triangular35_out_data_out),
        .in_feedback_stall_in_52(i_llvm_fpga_pop_i1_notcmp38105_pop52_triangular35_out_feedback_stall_out_52),
        .in_keep_going(redist19_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_52(i_llvm_fpga_push_i1_notcmp38105_push52_triangular36_out_feedback_out_52),
        .out_feedback_valid_out_52(i_llvm_fpga_push_i1_notcmp38105_push52_triangular36_out_feedback_valid_out_52),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_sync_together82_aunroll_x_in_c0_eni3227_3_tpl_1(DELAY,536)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together82_aunroll_x_in_c0_eni3227_3_tpl_1_q <= '0;
        end
        else
        begin
            redist8_sync_together82_aunroll_x_in_c0_eni3227_3_tpl_1_q <= $unsigned(in_c0_eni3227_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp38105_pop52_triangular35(BLACKBOX,55)@2
    // out out_feedback_stall_out_52@20000000
    triangular_i_llvm_fpga_pop_i1_notcmp38105_pop52_0 thei_llvm_fpga_pop_i1_notcmp38105_pop52_triangular35 (
        .in_data_in(redist8_sync_together82_aunroll_x_in_c0_eni3227_3_tpl_1_q),
        .in_dir(redist5_sync_together82_aunroll_x_in_c0_eni3227_1_tpl_1_q),
        .in_feedback_in_52(i_llvm_fpga_push_i1_notcmp38105_push52_triangular36_out_feedback_out_52),
        .in_feedback_valid_in_52(i_llvm_fpga_push_i1_notcmp38105_push52_triangular36_out_feedback_valid_out_52),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp38105_pop52_triangular35_out_data_out),
        .out_feedback_stall_out_52(i_llvm_fpga_pop_i1_notcmp38105_pop52_triangular35_out_feedback_stall_out_52),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist18_i_llvm_fpga_pop_i1_notcmp38105_pop52_triangular35_out_data_out_7(DELAY,546)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist18_i_llvm_fpga_pop_i1_notcmp38105_pop52_triangular35_out_data_out_7 ( .xin(i_llvm_fpga_pop_i1_notcmp38105_pop52_triangular35_out_data_out), .xout(redist18_i_llvm_fpga_pop_i1_notcmp38105_pop52_triangular35_out_data_out_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_masked_triangular34(LOGICAL,69)@2 + 1
    assign i_masked_triangular34_qi = i_notcmp_triangular27_q & i_first_cleanup_triangular3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_triangular34_delay ( .xin(i_masked_triangular34_qi), .xout(i_masked_triangular34_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist17_i_masked_triangular34_q_7(DELAY,545)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist17_i_masked_triangular34_q_7 ( .xin(i_masked_triangular34_q), .xout(redist17_i_masked_triangular34_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist21_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_8(DELAY,549)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_8_delay_0 <= '0;
            redist21_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_8_delay_1 <= '0;
            redist21_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_8_delay_2 <= '0;
            redist21_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_8_delay_3 <= '0;
            redist21_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_8_q <= '0;
        end
        else
        begin
            redist21_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_8_delay_0 <= $unsigned(redist20_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_3_q);
            redist21_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_8_delay_1 <= redist21_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_8_delay_0;
            redist21_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_8_delay_2 <= redist21_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_8_delay_1;
            redist21_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_8_delay_3 <= redist21_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_8_delay_2;
            redist21_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_8_q <= redist21_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_8_delay_3;
        end
    end

    // sync_out_aunroll_x(GPOUT,141)@9
    assign out_c0_exi3234_0_tpl = GND_q;
    assign out_c0_exi3234_1_tpl = redist21_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_8_q;
    assign out_c0_exi3234_2_tpl = redist17_i_masked_triangular34_q_7_q;
    assign out_c0_exi3234_3_tpl = redist18_i_llvm_fpga_pop_i1_notcmp38105_pop52_triangular35_out_data_out_7_q;
    assign out_o_valid = redist4_valid_fanout_reg0_q_3_q;
    assign out_unnamed_triangular0 = GND_q;

endmodule
