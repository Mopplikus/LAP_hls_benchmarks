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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body36_kernel_3mms_c0_enter37936_kernel_3mm0
// Created for function/kernel kernel_3mm
// SystemVerilog created on Tue Jun 13 01:45:41 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_i_sfc_logic_s_c0_in_for_body30000ter37936_kernel_3mm0 (
    output wire [0:0] out_c0_exi17411_0_tpl,
    output wire [0:0] out_c0_exi17411_1_tpl,
    output wire [0:0] out_c0_exi17411_2_tpl,
    output wire [63:0] out_c0_exi17411_3_tpl,
    output wire [0:0] out_c0_exi17411_4_tpl,
    output wire [63:0] out_c0_exi17411_5_tpl,
    output wire [0:0] out_c0_exi17411_6_tpl,
    output wire [0:0] out_c0_exi17411_7_tpl,
    output wire [0:0] out_c0_exi17411_8_tpl,
    output wire [63:0] out_c0_exi17411_9_tpl,
    output wire [0:0] out_c0_exi17411_10_tpl,
    output wire [0:0] out_c0_exi17411_11_tpl,
    output wire [0:0] out_c0_exi17411_12_tpl,
    output wire [31:0] out_c0_exi17411_13_tpl,
    output wire [0:0] out_c0_exi17411_14_tpl,
    output wire [0:0] out_c0_exi17411_15_tpl,
    output wire [0:0] out_c0_exi17411_16_tpl,
    output wire [31:0] out_c0_exi17411_17_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_kernel_3mm1,
    input wire [0:0] in_c0_eni15378_0_tpl,
    input wire [0:0] in_c0_eni15378_1_tpl,
    input wire [31:0] in_c0_eni15378_2_tpl,
    input wire [0:0] in_c0_eni15378_3_tpl,
    input wire [0:0] in_c0_eni15378_4_tpl,
    input wire [31:0] in_c0_eni15378_5_tpl,
    input wire [0:0] in_c0_eni15378_6_tpl,
    input wire [0:0] in_c0_eni15378_7_tpl,
    input wire [63:0] in_c0_eni15378_8_tpl,
    input wire [0:0] in_c0_eni15378_9_tpl,
    input wire [0:0] in_c0_eni15378_10_tpl,
    input wire [31:0] in_c0_eni15378_11_tpl,
    input wire [0:0] in_c0_eni15378_12_tpl,
    input wire [0:0] in_c0_eni15378_13_tpl,
    input wire [0:0] in_c0_eni15378_14_tpl,
    input wire [31:0] in_c0_eni15378_15_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_intel_reserved_ffwd_8_0,
    input wire [63:0] in_intel_reserved_ffwd_9_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next18_kernel_3mm43_sel_x_b;
    wire [31:0] bgTrunc_i_inc46_kernel_3mm33_sel_x_b;
    wire [31:0] bgTrunc_i_mul40_add42_kernel_3mm26_sel_x_b;
    wire [0:0] i_first_cleanup78_kernel_3mm3_sel_x_b;
    wire [0:0] i_last_initeration74_kernel_3mm10_sel_x_b;
    wire [63:0] i_mptr_bitcast_index160_kernel_3mm0_dupName_0_trunc_sel_x_b;
    wire [1:0] i_mptr_bitcast_index160_kernel_3mm0_c_i2_01_x_q;
    wire [63:0] i_mptr_bitcast_index162_kernel_3mm0_dupName_0_trunc_sel_x_b;
    wire [1:0] c_i2_188_q;
    wire [31:0] c_i32_090_q;
    wire [31:0] c_i32_191_q;
    wire [4:0] c_i5_195_q;
    wire [4:0] c_i5_893_q;
    wire [32:0] i_add38_kernel_3mm15_a;
    wire [32:0] i_add38_kernel_3mm15_b;
    logic [32:0] i_add38_kernel_3mm15_o;
    wire [32:0] i_add38_kernel_3mm15_q;
    wire [32:0] i_add41_kernel_3mm29_a;
    wire [32:0] i_add41_kernel_3mm29_b;
    logic [32:0] i_add41_kernel_3mm29_o;
    wire [32:0] i_add41_kernel_3mm29_q;
    wire [1:0] i_cleanups_shl77_kernel_3mm5_vt_join_q;
    wire [0:0] i_cleanups_shl77_kernel_3mm5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor79_kernel_3mm4_q;
    wire [5:0] i_fpga_indvars_iv_next18_kernel_3mm43_a;
    wire [5:0] i_fpga_indvars_iv_next18_kernel_3mm43_b;
    logic [5:0] i_fpga_indvars_iv_next18_kernel_3mm43_o;
    wire [5:0] i_fpga_indvars_iv_next18_kernel_3mm43_q;
    wire [32:0] i_inc46_kernel_3mm33_a;
    wire [32:0] i_inc46_kernel_3mm33_b;
    logic [32:0] i_inc46_kernel_3mm33_o;
    wire [32:0] i_inc46_kernel_3mm33_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast15918155_kernel_3mm17_out_dest_data_out_8_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast16118256_kernel_3mm31_out_dest_data_out_9_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond22162_pop77_kernel_3mm52_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond22162_pop77_kernel_3mm52_out_feedback_stall_out_77;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond25141_pop72_kernel_3mm46_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond25141_pop72_kernel_3mm46_out_feedback_stall_out_72;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop40164_pop79_kernel_3mm21_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop40164_pop79_kernel_3mm21_out_feedback_stall_out_79;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi5_pop27145_pop74_kernel_3mm19_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi5_pop27145_pop74_kernel_3mm19_out_feedback_stall_out_74;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp85163_pop78_kernel_3mm54_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp85163_pop78_kernel_3mm54_out_feedback_stall_out_78;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp90143_pop73_kernel_3mm48_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp90143_pop73_kernel_3mm48_out_feedback_stall_out_73;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups76_pop70_kernel_3mm2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups76_pop70_kernel_3mm2_out_feedback_stall_out_70;
    wire [1:0] i_llvm_fpga_pop_i2_initerations71_pop69_kernel_3mm7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations71_pop69_kernel_3mm7_out_feedback_stall_out_69;
    wire [31:0] i_llvm_fpga_pop_i32_j_1151_pop39160_pop75_kernel_3mm27_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_1151_pop39160_pop75_kernel_3mm27_out_feedback_stall_out_75;
    wire [31:0] i_llvm_fpga_pop_i32_k_1149_pop68_kernel_3mm12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k_1149_pop68_kernel_3mm12_out_feedback_stall_out_68;
    wire [31:0] i_llvm_fpga_pop_i32_mul31_add40139_pop71_kernel_3mm13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul31_add40139_pop71_kernel_3mm13_out_feedback_stall_out_71;
    wire [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv17_pop66_kernel_3mm35_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv17_pop66_kernel_3mm35_out_feedback_stall_out_66;
    wire [63:0] i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_feedback_stall_out_76;
    wire [0:0] i_llvm_fpga_push_i1_exitcond22162_push77_kernel_3mm53_out_feedback_out_77;
    wire [0:0] i_llvm_fpga_push_i1_exitcond22162_push77_kernel_3mm53_out_feedback_valid_out_77;
    wire [0:0] i_llvm_fpga_push_i1_exitcond25141_push72_kernel_3mm47_out_feedback_out_72;
    wire [0:0] i_llvm_fpga_push_i1_exitcond25141_push72_kernel_3mm47_out_feedback_valid_out_72;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration75_kernel_3mm11_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration75_kernel_3mm11_out_feedback_valid_out_8;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop40164_push79_kernel_3mm22_out_feedback_out_79;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop40164_push79_kernel_3mm22_out_feedback_valid_out_79;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi5_pop27145_push74_kernel_3mm20_out_feedback_out_74;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi5_pop27145_push74_kernel_3mm20_out_feedback_valid_out_74;
    wire [0:0] i_llvm_fpga_push_i1_notcmp85163_push78_kernel_3mm55_out_feedback_out_78;
    wire [0:0] i_llvm_fpga_push_i1_notcmp85163_push78_kernel_3mm55_out_feedback_valid_out_78;
    wire [0:0] i_llvm_fpga_push_i1_notcmp90143_push73_kernel_3mm49_out_feedback_out_73;
    wire [0:0] i_llvm_fpga_push_i1_notcmp90143_push73_kernel_3mm49_out_feedback_valid_out_73;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond83_kernel_3mm39_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond83_kernel_3mm39_out_feedback_valid_out_9;
    wire [7:0] i_llvm_fpga_push_i2_cleanups76_push70_kernel_3mm42_out_feedback_out_70;
    wire [0:0] i_llvm_fpga_push_i2_cleanups76_push70_kernel_3mm42_out_feedback_valid_out_70;
    wire [7:0] i_llvm_fpga_push_i2_initerations71_push69_kernel_3mm9_out_feedback_out_69;
    wire [0:0] i_llvm_fpga_push_i2_initerations71_push69_kernel_3mm9_out_feedback_valid_out_69;
    wire [31:0] i_llvm_fpga_push_i32_j_1151_pop39160_push75_kernel_3mm28_out_feedback_out_75;
    wire [0:0] i_llvm_fpga_push_i32_j_1151_pop39160_push75_kernel_3mm28_out_feedback_valid_out_75;
    wire [31:0] i_llvm_fpga_push_i32_k_1149_push68_kernel_3mm34_out_feedback_out_68;
    wire [0:0] i_llvm_fpga_push_i32_k_1149_push68_kernel_3mm34_out_feedback_valid_out_68;
    wire [31:0] i_llvm_fpga_push_i32_mul31_add40139_push71_kernel_3mm14_out_feedback_out_71;
    wire [0:0] i_llvm_fpga_push_i32_mul31_add40139_push71_kernel_3mm14_out_feedback_valid_out_71;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv17_push66_kernel_3mm44_out_feedback_out_66;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv17_push66_kernel_3mm44_out_feedback_valid_out_66;
    wire [63:0] i_llvm_fpga_push_p1025i32_mptr_bitcast_index174161_push76_kernel_3mm51_out_feedback_out_76;
    wire [0:0] i_llvm_fpga_push_p1025i32_mptr_bitcast_index174161_push76_kernel_3mm51_out_feedback_valid_out_76;
    wire [0:0] i_masked82_kernel_3mm45_qi;
    reg [0:0] i_masked82_kernel_3mm45_q;
    wire [0:0] i_memdep_phi5_or_kernel_3mm23_qi;
    reg [0:0] i_memdep_phi5_or_kernel_3mm23_q;
    wire [32:0] i_mul40_add42_kernel_3mm26_a;
    wire [32:0] i_mul40_add42_kernel_3mm26_b;
    logic [32:0] i_mul40_add42_kernel_3mm26_o;
    wire [32:0] i_mul40_add42_kernel_3mm26_q;
    wire [31:0] i_mul40_add42_kernel_3mm26_vt_join_q;
    wire [30:0] i_mul40_add42_kernel_3mm26_vt_select_31_b;
    wire [0:0] i_next_cleanups81_kernel_3mm41_s;
    reg [1:0] i_next_cleanups81_kernel_3mm41_q;
    wire [1:0] i_next_initerations72_kernel_3mm8_vt_join_q;
    wire [0:0] i_next_initerations72_kernel_3mm8_vt_select_0_b;
    wire [0:0] i_notcmp69_kernel_3mm38_q;
    wire [0:0] i_or80_kernel_3mm40_q;
    wire [31:0] i_unnamed_kernel_3mm24_vt_join_q;
    wire [30:0] i_unnamed_kernel_3mm24_vt_select_31_b;
    wire [2:0] i_unnamed_kernel_3mm25_vt_const_2_q;
    wire [31:0] i_unnamed_kernel_3mm25_vt_join_q;
    wire [28:0] i_unnamed_kernel_3mm25_vt_select_31_b;
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
    (* dont_merge *) reg [0:0] valid_fanout_reg25_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid203_dupName_5_i_unnamed_kernel_3mm0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid203_dupName_5_i_unnamed_kernel_3mm0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid204_dupName_5_i_unnamed_kernel_3mm0_shift_x_q;
    wire [0:0] leftShiftStage0_uid206_dupName_5_i_unnamed_kernel_3mm0_shift_x_s;
    reg [31:0] leftShiftStage0_uid206_dupName_5_i_unnamed_kernel_3mm0_shift_x_q;
    wire [29:0] leftShiftStage1Idx1Rng2_uid216_dupName_6_i_unnamed_kernel_3mm0_shift_x_in;
    wire [29:0] leftShiftStage1Idx1Rng2_uid216_dupName_6_i_unnamed_kernel_3mm0_shift_x_b;
    wire [31:0] leftShiftStage1Idx1_uid217_dupName_6_i_unnamed_kernel_3mm0_shift_x_q;
    wire [0:0] leftShiftStage1_uid219_dupName_6_i_unnamed_kernel_3mm0_shift_x_s;
    reg [31:0] leftShiftStage1_uid219_dupName_6_i_unnamed_kernel_3mm0_shift_x_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid224_i_cleanups_shl77_kernel_3mm0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid224_i_cleanups_shl77_kernel_3mm0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid225_i_cleanups_shl77_kernel_3mm0_shift_x_q;
    wire [0:0] leftShiftStage0_uid227_i_cleanups_shl77_kernel_3mm0_shift_x_s;
    reg [1:0] leftShiftStage0_uid227_i_cleanups_shl77_kernel_3mm0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid231_i_next_initerations72_kernel_3mm0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid233_i_next_initerations72_kernel_3mm0_shift_x_q;
    wire [0:0] rightShiftStage0_uid235_i_next_initerations72_kernel_3mm0_shift_x_s;
    reg [1:0] rightShiftStage0_uid235_i_next_initerations72_kernel_3mm0_shift_x_q;
    wire [0:0] i_exitcond19_kernel_3mm36_cmp_nsign_q;
    wire [60:0] i_mptr_bitcast_index160_kernel_3mm0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index160_kernel_3mm0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index160_kernel_3mm0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index160_kernel_3mm0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index160_kernel_3mm0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index160_kernel_3mm0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index160_kernel_3mm0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index160_kernel_3mm0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index160_kernel_3mm0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index160_kernel_3mm0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index160_kernel_3mm0_add_x_BitJoin_for_q_q;
    wire [60:0] i_mptr_bitcast_index162_kernel_3mm0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index162_kernel_3mm0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index162_kernel_3mm0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index162_kernel_3mm0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index162_kernel_3mm0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index162_kernel_3mm0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index162_kernel_3mm0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index162_kernel_3mm0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index162_kernel_3mm0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index162_kernel_3mm0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index162_kernel_3mm0_add_x_BitJoin_for_q_q;
    wire [4:0] i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [31:0] i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_b_tessel0_1_b;
    wire [25:0] i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_b_tessel0_2_b;
    wire [59:0] i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [3:0] i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_b_tessel1_0_b;
    wire [4:0] i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [4:0] i_mptr_bitcast_index162_kernel_3mm0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [31:0] i_mptr_bitcast_index162_kernel_3mm0_add_x_BitSelect_for_b_tessel0_1_b;
    wire [59:0] i_mptr_bitcast_index162_kernel_3mm0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [59:0] i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [59:0] i_mptr_bitcast_index162_kernel_3mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index162_kernel_3mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    reg [3:0] redist0_i_mptr_bitcast_index162_kernel_3mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q;
    reg [3:0] redist1_i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q;
    reg [31:0] redist2_i_mptr_bitcast_index162_kernel_3mm0_add_x_BitSelect_for_b_tessel0_1_b_1_q;
    reg [31:0] redist3_i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_b_tessel0_1_b_2_q;
    reg [31:0] redist3_i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_b_tessel0_1_b_2_delay_0;
    reg [59:0] redist4_i_mptr_bitcast_index162_kernel_3mm0_add_x_p1_of_2_q_1_q;
    reg [59:0] redist5_i_mptr_bitcast_index160_kernel_3mm0_add_x_p1_of_2_q_1_q;
    reg [0:0] redist6_valid_fanout_reg0_q_2_q;
    reg [0:0] redist6_valid_fanout_reg0_q_2_delay_0;
    reg [30:0] redist7_i_mul40_add42_kernel_3mm26_vt_select_31_b_1_q;
    reg [0:0] redist8_i_memdep_phi5_or_kernel_3mm23_q_5_q;
    reg [0:0] redist8_i_memdep_phi5_or_kernel_3mm23_q_5_delay_0;
    reg [0:0] redist8_i_memdep_phi5_or_kernel_3mm23_q_5_delay_1;
    reg [0:0] redist8_i_memdep_phi5_or_kernel_3mm23_q_5_delay_2;
    reg [0:0] redist9_i_masked82_kernel_3mm45_q_5_q;
    reg [0:0] redist9_i_masked82_kernel_3mm45_q_5_delay_0;
    reg [0:0] redist9_i_masked82_kernel_3mm45_q_5_delay_1;
    reg [0:0] redist9_i_masked82_kernel_3mm45_q_5_delay_2;
    reg [31:0] redist11_i_llvm_fpga_pop_i32_mul31_add40139_pop71_kernel_3mm13_out_data_out_1_q;
    reg [31:0] redist12_i_llvm_fpga_pop_i32_k_1149_pop68_kernel_3mm12_out_data_out_1_q;
    reg [31:0] redist13_i_llvm_fpga_pop_i32_j_1151_pop39160_pop75_kernel_3mm27_out_data_out_1_q;
    reg [0:0] redist14_i_llvm_fpga_pop_i1_notcmp90143_pop73_kernel_3mm48_out_data_out_2_q;
    reg [0:0] redist14_i_llvm_fpga_pop_i1_notcmp90143_pop73_kernel_3mm48_out_data_out_2_delay_0;
    reg [0:0] redist15_i_llvm_fpga_pop_i1_notcmp85163_pop78_kernel_3mm54_out_data_out_2_q;
    reg [0:0] redist15_i_llvm_fpga_pop_i1_notcmp85163_pop78_kernel_3mm54_out_data_out_2_delay_0;
    reg [0:0] redist16_i_llvm_fpga_pop_i1_exitcond25141_pop72_kernel_3mm46_out_data_out_2_q;
    reg [0:0] redist16_i_llvm_fpga_pop_i1_exitcond25141_pop72_kernel_3mm46_out_data_out_2_delay_0;
    reg [0:0] redist17_i_llvm_fpga_pop_i1_exitcond22162_pop77_kernel_3mm52_out_data_out_2_q;
    reg [0:0] redist17_i_llvm_fpga_pop_i1_exitcond22162_pop77_kernel_3mm52_out_data_out_2_delay_0;
    reg [0:0] redist18_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_data_out_1_q;
    reg [0:0] redist19_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_data_out_2_q;
    reg [0:0] redist20_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_data_out_4_q;
    reg [0:0] redist20_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_data_out_4_delay_0;
    reg [0:0] redist21_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_data_out_6_q;
    reg [0:0] redist21_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_data_out_6_delay_0;
    reg [0:0] redist22_i_first_cleanup_xor79_kernel_3mm4_q_5_q;
    reg [0:0] redist22_i_first_cleanup_xor79_kernel_3mm4_q_5_delay_0;
    reg [0:0] redist22_i_first_cleanup_xor79_kernel_3mm4_q_5_delay_1;
    reg [0:0] redist22_i_first_cleanup_xor79_kernel_3mm4_q_5_delay_2;
    reg [0:0] redist22_i_first_cleanup_xor79_kernel_3mm4_q_5_delay_3;
    reg [0:0] redist23_sync_together129_aunroll_x_in_c0_eni15378_1_tpl_1_q;
    reg [0:0] redist24_sync_together129_aunroll_x_in_c0_eni15378_1_tpl_2_q;
    reg [0:0] redist25_sync_together129_aunroll_x_in_c0_eni15378_1_tpl_4_q;
    reg [0:0] redist25_sync_together129_aunroll_x_in_c0_eni15378_1_tpl_4_delay_0;
    reg [0:0] redist26_sync_together129_aunroll_x_in_c0_eni15378_1_tpl_6_q;
    reg [0:0] redist26_sync_together129_aunroll_x_in_c0_eni15378_1_tpl_6_delay_0;
    reg [31:0] redist27_sync_together129_aunroll_x_in_c0_eni15378_2_tpl_1_q;
    reg [0:0] redist28_sync_together129_aunroll_x_in_c0_eni15378_3_tpl_1_q;
    reg [0:0] redist29_sync_together129_aunroll_x_in_c0_eni15378_4_tpl_1_q;
    reg [31:0] redist30_sync_together129_aunroll_x_in_c0_eni15378_5_tpl_2_q;
    reg [31:0] redist30_sync_together129_aunroll_x_in_c0_eni15378_5_tpl_2_delay_0;
    reg [0:0] redist31_sync_together129_aunroll_x_in_c0_eni15378_6_tpl_4_q;
    reg [0:0] redist31_sync_together129_aunroll_x_in_c0_eni15378_6_tpl_4_delay_0;
    reg [0:0] redist31_sync_together129_aunroll_x_in_c0_eni15378_6_tpl_4_delay_1;
    reg [0:0] redist31_sync_together129_aunroll_x_in_c0_eni15378_6_tpl_4_delay_2;
    reg [0:0] redist32_sync_together129_aunroll_x_in_c0_eni15378_7_tpl_4_q;
    reg [0:0] redist32_sync_together129_aunroll_x_in_c0_eni15378_7_tpl_4_delay_0;
    reg [0:0] redist32_sync_together129_aunroll_x_in_c0_eni15378_7_tpl_4_delay_1;
    reg [0:0] redist32_sync_together129_aunroll_x_in_c0_eni15378_7_tpl_4_delay_2;
    reg [63:0] redist33_sync_together129_aunroll_x_in_c0_eni15378_8_tpl_1_q;
    reg [0:0] redist34_sync_together129_aunroll_x_in_c0_eni15378_9_tpl_4_q;
    reg [0:0] redist34_sync_together129_aunroll_x_in_c0_eni15378_9_tpl_4_delay_0;
    reg [0:0] redist34_sync_together129_aunroll_x_in_c0_eni15378_9_tpl_4_delay_1;
    reg [0:0] redist34_sync_together129_aunroll_x_in_c0_eni15378_9_tpl_4_delay_2;
    reg [0:0] redist35_sync_together129_aunroll_x_in_c0_eni15378_10_tpl_4_q;
    reg [0:0] redist35_sync_together129_aunroll_x_in_c0_eni15378_10_tpl_4_delay_0;
    reg [0:0] redist35_sync_together129_aunroll_x_in_c0_eni15378_10_tpl_4_delay_1;
    reg [0:0] redist35_sync_together129_aunroll_x_in_c0_eni15378_10_tpl_4_delay_2;
    reg [0:0] redist37_sync_together129_aunroll_x_in_c0_eni15378_12_tpl_6_q;
    reg [0:0] redist38_sync_together129_aunroll_x_in_c0_eni15378_13_tpl_6_q;
    reg [0:0] redist39_sync_together129_aunroll_x_in_c0_eni15378_14_tpl_6_q;
    reg [0:0] redist41_sync_together129_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist42_sync_together129_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist42_sync_together129_aunroll_x_in_i_valid_3_delay_0;
    wire redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_mem_reset0;
    wire [63:0] redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_mem_ia;
    wire [1:0] redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_mem_aa;
    wire [1:0] redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_mem_ab;
    wire [63:0] redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_mem_iq;
    wire [63:0] redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_mem_q;
    wire [1:0] redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_rdcnt_q;
    (* preserve *) reg [1:0] redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_rdcnt_i;
    reg [1:0] redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_wraddr_q;
    wire [2:0] redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_mem_last_q;
    wire [2:0] redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_cmp_b;
    wire [0:0] redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_cmp_q;
    (* dont_merge *) reg [0:0] redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_cmpReg_q;
    wire [0:0] redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_notEnable_q;
    wire [0:0] redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_nor_q;
    (* dont_merge *) reg [0:0] redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_sticky_ena_q;
    wire [0:0] redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_enaAnd_q;
    wire redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_mem_reset0;
    wire [31:0] redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_mem_ia;
    wire [2:0] redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_mem_aa;
    wire [2:0] redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_mem_ab;
    wire [31:0] redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_mem_iq;
    wire [31:0] redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_mem_q;
    wire [2:0] redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_rdcnt_q;
    (* preserve *) reg [2:0] redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_rdcnt_i;
    (* preserve *) reg redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_rdcnt_eq;
    reg [2:0] redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_wraddr_q;
    wire [2:0] redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_mem_last_q;
    wire [0:0] redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_cmpReg_q;
    wire [0:0] redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_notEnable_q;
    wire [0:0] redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_sticky_ena_q;
    wire [0:0] redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_enaAnd_q;
    wire redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_mem_reset0;
    wire [31:0] redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_mem_ia;
    wire [2:0] redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_mem_aa;
    wire [2:0] redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_mem_ab;
    wire [31:0] redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_mem_iq;
    wire [31:0] redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_mem_q;
    wire [2:0] redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_rdcnt_q;
    (* preserve *) reg [2:0] redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_rdcnt_i;
    (* preserve *) reg redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_rdcnt_eq;
    reg [2:0] redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_wraddr_q;
    wire [2:0] redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_mem_last_q;
    wire [0:0] redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_cmpReg_q;
    wire [0:0] redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_notEnable_q;
    wire [0:0] redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_sticky_ena_q;
    wire [0:0] redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist41_sync_together129_aunroll_x_in_i_valid_1(DELAY,323)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_sync_together129_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist41_sync_together129_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist42_sync_together129_aunroll_x_in_i_valid_3(DELAY,324)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_sync_together129_aunroll_x_in_i_valid_3_delay_0 <= '0;
            redist42_sync_together129_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist42_sync_together129_aunroll_x_in_i_valid_3_delay_0 <= $unsigned(redist41_sync_together129_aunroll_x_in_i_valid_1_q);
            redist42_sync_together129_aunroll_x_in_i_valid_3_q <= redist42_sync_together129_aunroll_x_in_i_valid_3_delay_0;
        end
    end

    // valid_fanout_reg0(REG,160)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist42_sync_together129_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist6_valid_fanout_reg0_q_2(DELAY,288)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_valid_fanout_reg0_q_2_delay_0 <= '0;
            redist6_valid_fanout_reg0_q_2_q <= '0;
        end
        else
        begin
            redist6_valid_fanout_reg0_q_2_delay_0 <= $unsigned(valid_fanout_reg0_q);
            redist6_valid_fanout_reg0_q_2_q <= redist6_valid_fanout_reg0_q_2_delay_0;
        end
    end

    // redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_notEnable(LOGICAL,351)
    assign redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_nor(LOGICAL,352)
    assign redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_nor_q = ~ (redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_notEnable_q | redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_sticky_ena_q);

    // redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_mem_last(CONSTANT,348)
    assign redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_mem_last_q = $unsigned(3'b011);

    // redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_cmp(LOGICAL,349)
    assign redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_cmp_q = $unsigned(redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_mem_last_q == redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_rdcnt_q ? 1'b1 : 1'b0);

    // redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_cmpReg(REG,350)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_cmpReg_q <= $unsigned(redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_cmp_q);
        end
    end

    // redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_sticky_ena(REG,353)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_nor_q == 1'b1)
        begin
            redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_sticky_ena_q <= $unsigned(redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_cmpReg_q);
        end
    end

    // redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_enaAnd(LOGICAL,354)
    assign redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_enaAnd_q = redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_sticky_ena_q & VCC_q;

    // redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_rdcnt(COUNTER,346)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_rdcnt_i <= 3'd0;
            redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_rdcnt_i == 3'd3)
            begin
                redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_rdcnt_eq <= 1'b0;
            end
            if (redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_rdcnt_eq == 1'b1)
            begin
                redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_rdcnt_i <= $unsigned(redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_rdcnt_i <= $unsigned(redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_rdcnt_q = redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_rdcnt_i[2:0];

    // redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_wraddr(REG,347)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_wraddr_q <= $unsigned(redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_rdcnt_q);
        end
    end

    // redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_mem(DUALMEM,345)
    assign redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_mem_ia = $unsigned(in_c0_eni15378_15_tpl);
    assign redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_mem_aa = redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_wraddr_q;
    assign redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_mem_ab = redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_rdcnt_q;
    assign redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_mem_reset0 = ~ (resetn);
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
        .intended_device_family("Cyclone V")
    ) redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_mem_dmem (
        .clocken1(redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_mem_aa),
        .data_a(redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_mem_ab),
        .q_b(redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_mem_iq),
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
    assign redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_mem_q = redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_mem_iq[31:0];

    // redist39_sync_together129_aunroll_x_in_c0_eni15378_14_tpl_6(DELAY,321)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist39_sync_together129_aunroll_x_in_c0_eni15378_14_tpl_6 ( .xin(in_c0_eni15378_14_tpl), .xout(redist39_sync_together129_aunroll_x_in_c0_eni15378_14_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist38_sync_together129_aunroll_x_in_c0_eni15378_13_tpl_6(DELAY,320)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist38_sync_together129_aunroll_x_in_c0_eni15378_13_tpl_6 ( .xin(in_c0_eni15378_13_tpl), .xout(redist38_sync_together129_aunroll_x_in_c0_eni15378_13_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist37_sync_together129_aunroll_x_in_c0_eni15378_12_tpl_6(DELAY,319)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist37_sync_together129_aunroll_x_in_c0_eni15378_12_tpl_6 ( .xin(in_c0_eni15378_12_tpl), .xout(redist37_sync_together129_aunroll_x_in_c0_eni15378_12_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_notEnable(LOGICAL,341)
    assign redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_nor(LOGICAL,342)
    assign redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_nor_q = ~ (redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_notEnable_q | redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_sticky_ena_q);

    // redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_mem_last(CONSTANT,338)
    assign redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_mem_last_q = $unsigned(3'b011);

    // redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_cmp(LOGICAL,339)
    assign redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_cmp_q = $unsigned(redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_mem_last_q == redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_rdcnt_q ? 1'b1 : 1'b0);

    // redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_cmpReg(REG,340)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_cmpReg_q <= $unsigned(redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_cmp_q);
        end
    end

    // redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_sticky_ena(REG,343)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_nor_q == 1'b1)
        begin
            redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_sticky_ena_q <= $unsigned(redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_cmpReg_q);
        end
    end

    // redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_enaAnd(LOGICAL,344)
    assign redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_enaAnd_q = redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_sticky_ena_q & VCC_q;

    // redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_rdcnt(COUNTER,336)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_rdcnt_i <= 3'd0;
            redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_rdcnt_i == 3'd3)
            begin
                redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_rdcnt_eq <= 1'b0;
            end
            if (redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_rdcnt_eq == 1'b1)
            begin
                redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_rdcnt_i <= $unsigned(redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_rdcnt_i <= $unsigned(redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_rdcnt_q = redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_rdcnt_i[2:0];

    // redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_wraddr(REG,337)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_wraddr_q <= $unsigned(redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_rdcnt_q);
        end
    end

    // redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_mem(DUALMEM,335)
    assign redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_mem_ia = $unsigned(in_c0_eni15378_11_tpl);
    assign redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_mem_aa = redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_wraddr_q;
    assign redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_mem_ab = redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_rdcnt_q;
    assign redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_mem_reset0 = ~ (resetn);
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
        .intended_device_family("Cyclone V")
    ) redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_mem_dmem (
        .clocken1(redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_mem_aa),
        .data_a(redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_mem_ab),
        .q_b(redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_mem_iq),
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
    assign redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_mem_q = redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_mem_iq[31:0];

    // redist23_sync_together129_aunroll_x_in_c0_eni15378_1_tpl_1(DELAY,305)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together129_aunroll_x_in_c0_eni15378_1_tpl_1_q <= '0;
        end
        else
        begin
            redist23_sync_together129_aunroll_x_in_c0_eni15378_1_tpl_1_q <= $unsigned(in_c0_eni15378_1_tpl);
        end
    end

    // redist24_sync_together129_aunroll_x_in_c0_eni15378_1_tpl_2(DELAY,306)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together129_aunroll_x_in_c0_eni15378_1_tpl_2_q <= '0;
        end
        else
        begin
            redist24_sync_together129_aunroll_x_in_c0_eni15378_1_tpl_2_q <= $unsigned(redist23_sync_together129_aunroll_x_in_c0_eni15378_1_tpl_1_q);
        end
    end

    // redist25_sync_together129_aunroll_x_in_c0_eni15378_1_tpl_4(DELAY,307)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together129_aunroll_x_in_c0_eni15378_1_tpl_4_delay_0 <= '0;
            redist25_sync_together129_aunroll_x_in_c0_eni15378_1_tpl_4_q <= '0;
        end
        else
        begin
            redist25_sync_together129_aunroll_x_in_c0_eni15378_1_tpl_4_delay_0 <= $unsigned(redist24_sync_together129_aunroll_x_in_c0_eni15378_1_tpl_2_q);
            redist25_sync_together129_aunroll_x_in_c0_eni15378_1_tpl_4_q <= redist25_sync_together129_aunroll_x_in_c0_eni15378_1_tpl_4_delay_0;
        end
    end

    // redist26_sync_together129_aunroll_x_in_c0_eni15378_1_tpl_6(DELAY,308)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together129_aunroll_x_in_c0_eni15378_1_tpl_6_delay_0 <= '0;
            redist26_sync_together129_aunroll_x_in_c0_eni15378_1_tpl_6_q <= '0;
        end
        else
        begin
            redist26_sync_together129_aunroll_x_in_c0_eni15378_1_tpl_6_delay_0 <= $unsigned(redist25_sync_together129_aunroll_x_in_c0_eni15378_1_tpl_4_q);
            redist26_sync_together129_aunroll_x_in_c0_eni15378_1_tpl_6_q <= redist26_sync_together129_aunroll_x_in_c0_eni15378_1_tpl_6_delay_0;
        end
    end

    // valid_fanout_reg24(REG,184)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg24_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(redist42_sync_together129_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg25(REG,185)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg25_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(redist42_sync_together129_aunroll_x_in_i_valid_3_q);
        end
    end

    // leftShiftStage0Idx1Rng1_uid224_i_cleanups_shl77_kernel_3mm0_shift_x(BITSELECT,223)@2
    assign leftShiftStage0Idx1Rng1_uid224_i_cleanups_shl77_kernel_3mm0_shift_x_in = i_llvm_fpga_pop_i2_cleanups76_pop70_kernel_3mm2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid224_i_cleanups_shl77_kernel_3mm0_shift_x_b = leftShiftStage0Idx1Rng1_uid224_i_cleanups_shl77_kernel_3mm0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid225_i_cleanups_shl77_kernel_3mm0_shift_x(BITJOIN,224)@2
    assign leftShiftStage0Idx1_uid225_i_cleanups_shl77_kernel_3mm0_shift_x_q = {leftShiftStage0Idx1Rng1_uid224_i_cleanups_shl77_kernel_3mm0_shift_x_b, GND_q};

    // leftShiftStage0_uid227_i_cleanups_shl77_kernel_3mm0_shift_x(MUX,226)@2
    assign leftShiftStage0_uid227_i_cleanups_shl77_kernel_3mm0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid227_i_cleanups_shl77_kernel_3mm0_shift_x_s or i_llvm_fpga_pop_i2_cleanups76_pop70_kernel_3mm2_out_data_out or leftShiftStage0Idx1_uid225_i_cleanups_shl77_kernel_3mm0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid227_i_cleanups_shl77_kernel_3mm0_shift_x_s)
            1'b0 : leftShiftStage0_uid227_i_cleanups_shl77_kernel_3mm0_shift_x_q = i_llvm_fpga_pop_i2_cleanups76_pop70_kernel_3mm2_out_data_out;
            1'b1 : leftShiftStage0_uid227_i_cleanups_shl77_kernel_3mm0_shift_x_q = leftShiftStage0Idx1_uid225_i_cleanups_shl77_kernel_3mm0_shift_x_q;
            default : leftShiftStage0_uid227_i_cleanups_shl77_kernel_3mm0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl77_kernel_3mm5_vt_select_1(BITSELECT,90)@2
    assign i_cleanups_shl77_kernel_3mm5_vt_select_1_b = leftShiftStage0_uid227_i_cleanups_shl77_kernel_3mm0_shift_x_q[1:1];

    // i_cleanups_shl77_kernel_3mm5_vt_join(BITJOIN,89)@2
    assign i_cleanups_shl77_kernel_3mm5_vt_join_q = {i_cleanups_shl77_kernel_3mm5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor79_kernel_3mm4(LOGICAL,93)@2
    assign i_first_cleanup_xor79_kernel_3mm4_q = i_first_cleanup78_kernel_3mm3_sel_x_b ^ VCC_q;

    // i_notcmp69_kernel_3mm38(LOGICAL,138)@2
    assign i_notcmp69_kernel_3mm38_q = i_exitcond19_kernel_3mm36_cmp_nsign_q ^ VCC_q;

    // i_or80_kernel_3mm40(LOGICAL,139)@2
    assign i_or80_kernel_3mm40_q = i_notcmp69_kernel_3mm38_q | i_first_cleanup_xor79_kernel_3mm4_q;

    // i_next_cleanups81_kernel_3mm41(MUX,134)@2
    assign i_next_cleanups81_kernel_3mm41_s = i_or80_kernel_3mm40_q;
    always @(i_next_cleanups81_kernel_3mm41_s or i_llvm_fpga_pop_i2_cleanups76_pop70_kernel_3mm2_out_data_out or i_cleanups_shl77_kernel_3mm5_vt_join_q)
    begin
        unique case (i_next_cleanups81_kernel_3mm41_s)
            1'b0 : i_next_cleanups81_kernel_3mm41_q = i_llvm_fpga_pop_i2_cleanups76_pop70_kernel_3mm2_out_data_out;
            1'b1 : i_next_cleanups81_kernel_3mm41_q = i_cleanups_shl77_kernel_3mm5_vt_join_q;
            default : i_next_cleanups81_kernel_3mm41_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups76_push70_kernel_3mm42(BLACKBOX,121)@2
    // out out_feedback_out_70@20000000
    // out out_feedback_valid_out_70@20000000
    kernel_3mm_i_llvm_fpga_push_i2_cleanups76_push70_0 thei_llvm_fpga_push_i2_cleanups76_push70_kernel_3mm42 (
        .in_data_in(i_next_cleanups81_kernel_3mm41_q),
        .in_feedback_stall_in_70(i_llvm_fpga_pop_i2_cleanups76_pop70_kernel_3mm2_out_feedback_stall_out_70),
        .in_keep_going73(redist18_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist41_sync_together129_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_70(i_llvm_fpga_push_i2_cleanups76_push70_kernel_3mm42_out_feedback_out_70),
        .out_feedback_valid_out_70(i_llvm_fpga_push_i2_cleanups76_push70_kernel_3mm42_out_feedback_valid_out_70),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i2_188(CONSTANT,79)
    assign c_i2_188_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups76_pop70_kernel_3mm2(BLACKBOX,106)@2
    // out out_feedback_stall_out_70@20000000
    kernel_3mm_i_llvm_fpga_pop_i2_cleanups76_pop70_0 thei_llvm_fpga_pop_i2_cleanups76_pop70_kernel_3mm2 (
        .in_data_in(c_i2_188_q),
        .in_dir(redist23_sync_together129_aunroll_x_in_c0_eni15378_1_tpl_1_q),
        .in_feedback_in_70(i_llvm_fpga_push_i2_cleanups76_push70_kernel_3mm42_out_feedback_out_70),
        .in_feedback_valid_in_70(i_llvm_fpga_push_i2_cleanups76_push70_kernel_3mm42_out_feedback_valid_out_70),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist41_sync_together129_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups76_pop70_kernel_3mm2_out_data_out),
        .out_feedback_stall_out_70(i_llvm_fpga_pop_i2_cleanups76_pop70_kernel_3mm2_out_feedback_stall_out_70),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup78_kernel_3mm3_sel_x(BITSELECT,20)@2
    assign i_first_cleanup78_kernel_3mm3_sel_x_b = i_llvm_fpga_pop_i2_cleanups76_pop70_kernel_3mm2_out_data_out[0:0];

    // c_i5_195(CONSTANT,83)
    assign c_i5_195_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next18_kernel_3mm43(ADD,94)@2
    assign i_fpga_indvars_iv_next18_kernel_3mm43_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv17_pop66_kernel_3mm35_out_data_out};
    assign i_fpga_indvars_iv_next18_kernel_3mm43_b = {1'b0, c_i5_195_q};
    assign i_fpga_indvars_iv_next18_kernel_3mm43_o = $unsigned(i_fpga_indvars_iv_next18_kernel_3mm43_a) + $unsigned(i_fpga_indvars_iv_next18_kernel_3mm43_b);
    assign i_fpga_indvars_iv_next18_kernel_3mm43_q = i_fpga_indvars_iv_next18_kernel_3mm43_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next18_kernel_3mm43_sel_x(BITSELECT,12)@2
    assign bgTrunc_i_fpga_indvars_iv_next18_kernel_3mm43_sel_x_b = i_fpga_indvars_iv_next18_kernel_3mm43_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv17_push66_kernel_3mm44(BLACKBOX,126)@2
    // out out_feedback_out_66@20000000
    // out out_feedback_valid_out_66@20000000
    kernel_3mm_i_llvm_fpga_push_i5_fpga_indvars_iv17_push66_0 thei_llvm_fpga_push_i5_fpga_indvars_iv17_push66_kernel_3mm44 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next18_kernel_3mm43_sel_x_b),
        .in_feedback_stall_in_66(i_llvm_fpga_pop_i5_fpga_indvars_iv17_pop66_kernel_3mm35_out_feedback_stall_out_66),
        .in_keep_going73(redist18_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist41_sync_together129_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_66(i_llvm_fpga_push_i5_fpga_indvars_iv17_push66_kernel_3mm44_out_feedback_out_66),
        .out_feedback_valid_out_66(i_llvm_fpga_push_i5_fpga_indvars_iv17_push66_kernel_3mm44_out_feedback_valid_out_66),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_893(CONSTANT,84)
    assign c_i5_893_q = $unsigned(5'b01000);

    // i_llvm_fpga_pop_i5_fpga_indvars_iv17_pop66_kernel_3mm35(BLACKBOX,111)@2
    // out out_feedback_stall_out_66@20000000
    kernel_3mm_i_llvm_fpga_pop_i5_fpga_indvars_iv17_pop66_0 thei_llvm_fpga_pop_i5_fpga_indvars_iv17_pop66_kernel_3mm35 (
        .in_data_in(c_i5_893_q),
        .in_dir(redist23_sync_together129_aunroll_x_in_c0_eni15378_1_tpl_1_q),
        .in_feedback_in_66(i_llvm_fpga_push_i5_fpga_indvars_iv17_push66_kernel_3mm44_out_feedback_out_66),
        .in_feedback_valid_in_66(i_llvm_fpga_push_i5_fpga_indvars_iv17_push66_kernel_3mm44_out_feedback_valid_out_66),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist41_sync_together129_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i5_fpga_indvars_iv17_pop66_kernel_3mm35_out_data_out),
        .out_feedback_stall_out_66(i_llvm_fpga_pop_i5_fpga_indvars_iv17_pop66_kernel_3mm35_out_feedback_stall_out_66),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond19_kernel_3mm36_cmp_nsign(LOGICAL,237)@2
    assign i_exitcond19_kernel_3mm36_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i5_fpga_indvars_iv17_pop66_kernel_3mm35_out_data_out[4:4]));

    // i_llvm_fpga_push_i1_notexitcond83_kernel_3mm39(BLACKBOX,120)@2
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    kernel_3mm_i_llvm_fpga_push_i1_notexitcond83_0 thei_llvm_fpga_push_i1_notexitcond83_kernel_3mm39 (
        .in_data_in(i_exitcond19_kernel_3mm36_cmp_nsign_q),
        .in_feedback_stall_in_9(i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_not_exitcond_stall_out),
        .in_first_cleanup78(i_first_cleanup78_kernel_3mm3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist41_sync_together129_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i1_notexitcond83_kernel_3mm39_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i1_notexitcond83_kernel_3mm39_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,163)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid231_i_next_initerations72_kernel_3mm0_shift_x(BITSELECT,230)@2
    assign rightShiftStage0Idx1Rng1_uid231_i_next_initerations72_kernel_3mm0_shift_x_b = i_llvm_fpga_pop_i2_initerations71_pop69_kernel_3mm7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid233_i_next_initerations72_kernel_3mm0_shift_x(BITJOIN,232)@2
    assign rightShiftStage0Idx1_uid233_i_next_initerations72_kernel_3mm0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid231_i_next_initerations72_kernel_3mm0_shift_x_b};

    // valid_fanout_reg1(REG,161)@1 + 1
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

    // valid_fanout_reg2(REG,162)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations71_push69_kernel_3mm9(BLACKBOX,122)@2
    // out out_feedback_out_69@20000000
    // out out_feedback_valid_out_69@20000000
    kernel_3mm_i_llvm_fpga_push_i2_initerations71_push69_0 thei_llvm_fpga_push_i2_initerations71_push69_kernel_3mm9 (
        .in_data_in(i_next_initerations72_kernel_3mm8_vt_join_q),
        .in_feedback_stall_in_69(i_llvm_fpga_pop_i2_initerations71_pop69_kernel_3mm7_out_feedback_stall_out_69),
        .in_keep_going73(redist18_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_69(i_llvm_fpga_push_i2_initerations71_push69_kernel_3mm9_out_feedback_out_69),
        .out_feedback_valid_out_69(i_llvm_fpga_push_i2_initerations71_push69_kernel_3mm9_out_feedback_valid_out_69),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations71_pop69_kernel_3mm7(BLACKBOX,107)@2
    // out out_feedback_stall_out_69@20000000
    kernel_3mm_i_llvm_fpga_pop_i2_initerations71_pop69_0 thei_llvm_fpga_pop_i2_initerations71_pop69_kernel_3mm7 (
        .in_data_in(c_i2_188_q),
        .in_dir(redist23_sync_together129_aunroll_x_in_c0_eni15378_1_tpl_1_q),
        .in_feedback_in_69(i_llvm_fpga_push_i2_initerations71_push69_kernel_3mm9_out_feedback_out_69),
        .in_feedback_valid_in_69(i_llvm_fpga_push_i2_initerations71_push69_kernel_3mm9_out_feedback_valid_out_69),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations71_pop69_kernel_3mm7_out_data_out),
        .out_feedback_stall_out_69(i_llvm_fpga_pop_i2_initerations71_pop69_kernel_3mm7_out_feedback_stall_out_69),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid235_i_next_initerations72_kernel_3mm0_shift_x(MUX,234)@2
    assign rightShiftStage0_uid235_i_next_initerations72_kernel_3mm0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid235_i_next_initerations72_kernel_3mm0_shift_x_s or i_llvm_fpga_pop_i2_initerations71_pop69_kernel_3mm7_out_data_out or rightShiftStage0Idx1_uid233_i_next_initerations72_kernel_3mm0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid235_i_next_initerations72_kernel_3mm0_shift_x_s)
            1'b0 : rightShiftStage0_uid235_i_next_initerations72_kernel_3mm0_shift_x_q = i_llvm_fpga_pop_i2_initerations71_pop69_kernel_3mm7_out_data_out;
            1'b1 : rightShiftStage0_uid235_i_next_initerations72_kernel_3mm0_shift_x_q = rightShiftStage0Idx1_uid233_i_next_initerations72_kernel_3mm0_shift_x_q;
            default : rightShiftStage0_uid235_i_next_initerations72_kernel_3mm0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations72_kernel_3mm8_vt_select_0(BITSELECT,137)@2
    assign i_next_initerations72_kernel_3mm8_vt_select_0_b = rightShiftStage0_uid235_i_next_initerations72_kernel_3mm0_shift_x_q[0:0];

    // i_next_initerations72_kernel_3mm8_vt_join(BITJOIN,136)@2
    assign i_next_initerations72_kernel_3mm8_vt_join_q = {GND_q, i_next_initerations72_kernel_3mm8_vt_select_0_b};

    // i_last_initeration74_kernel_3mm10_sel_x(BITSELECT,21)@2
    assign i_last_initeration74_kernel_3mm10_sel_x_b = i_next_initerations72_kernel_3mm8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration75_kernel_3mm11(BLACKBOX,115)@2
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    kernel_3mm_i_llvm_fpga_push_i1_lastiniteration75_0 thei_llvm_fpga_push_i1_lastiniteration75_kernel_3mm11 (
        .in_data_in(i_last_initeration74_kernel_3mm10_sel_x_b),
        .in_feedback_stall_in_8(i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_initeration_stall_out),
        .in_keep_going73(redist18_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i1_lastiniteration75_kernel_3mm11_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i1_lastiniteration75_kernel_3mm11_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going73_kernel_3mm6(BLACKBOX,99)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    kernel_3mm_i_llvm_fpga_pipeline_keep_going73_0 thei_llvm_fpga_pipeline_keep_going73_kernel_3mm6 (
        .in_data_in(in_c0_eni15378_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration75_kernel_3mm11_out_feedback_out_8),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration75_kernel_3mm11_out_feedback_valid_out_8),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond83_kernel_3mm39_out_feedback_out_9),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond83_kernel_3mm39_out_feedback_valid_out_9),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist18_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_data_out_1(DELAY,300)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist18_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_data_out);
        end
    end

    // redist19_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_data_out_2(DELAY,301)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist19_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_data_out_2_q <= $unsigned(redist18_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_data_out_1_q);
        end
    end

    // redist20_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_data_out_4(DELAY,302)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_data_out_4_delay_0 <= '0;
            redist20_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_data_out_4_q <= '0;
        end
        else
        begin
            redist20_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_data_out_4_delay_0 <= $unsigned(redist19_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_data_out_2_q);
            redist20_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_data_out_4_q <= redist20_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_data_out_4_delay_0;
        end
    end

    // i_llvm_fpga_push_i1_notcmp85163_push78_kernel_3mm55(BLACKBOX,118)@5
    // out out_feedback_out_78@20000000
    // out out_feedback_valid_out_78@20000000
    kernel_3mm_i_llvm_fpga_push_i1_notcmp85163_push78_0 thei_llvm_fpga_push_i1_notcmp85163_push78_kernel_3mm55 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp85163_pop78_kernel_3mm54_out_data_out),
        .in_feedback_stall_in_78(i_llvm_fpga_pop_i1_notcmp85163_pop78_kernel_3mm54_out_feedback_stall_out_78),
        .in_keep_going73(redist20_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_data_out_4_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_data_out(),
        .out_feedback_out_78(i_llvm_fpga_push_i1_notcmp85163_push78_kernel_3mm55_out_feedback_out_78),
        .out_feedback_valid_out_78(i_llvm_fpga_push_i1_notcmp85163_push78_kernel_3mm55_out_feedback_valid_out_78),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist35_sync_together129_aunroll_x_in_c0_eni15378_10_tpl_4(DELAY,317)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_sync_together129_aunroll_x_in_c0_eni15378_10_tpl_4_delay_0 <= '0;
            redist35_sync_together129_aunroll_x_in_c0_eni15378_10_tpl_4_delay_1 <= '0;
            redist35_sync_together129_aunroll_x_in_c0_eni15378_10_tpl_4_delay_2 <= '0;
            redist35_sync_together129_aunroll_x_in_c0_eni15378_10_tpl_4_q <= '0;
        end
        else
        begin
            redist35_sync_together129_aunroll_x_in_c0_eni15378_10_tpl_4_delay_0 <= $unsigned(in_c0_eni15378_10_tpl);
            redist35_sync_together129_aunroll_x_in_c0_eni15378_10_tpl_4_delay_1 <= redist35_sync_together129_aunroll_x_in_c0_eni15378_10_tpl_4_delay_0;
            redist35_sync_together129_aunroll_x_in_c0_eni15378_10_tpl_4_delay_2 <= redist35_sync_together129_aunroll_x_in_c0_eni15378_10_tpl_4_delay_1;
            redist35_sync_together129_aunroll_x_in_c0_eni15378_10_tpl_4_q <= redist35_sync_together129_aunroll_x_in_c0_eni15378_10_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_pop_i1_notcmp85163_pop78_kernel_3mm54(BLACKBOX,104)@5
    // out out_feedback_stall_out_78@20000000
    kernel_3mm_i_llvm_fpga_pop_i1_notcmp85163_pop78_0 thei_llvm_fpga_pop_i1_notcmp85163_pop78_kernel_3mm54 (
        .in_data_in(redist35_sync_together129_aunroll_x_in_c0_eni15378_10_tpl_4_q),
        .in_dir(redist25_sync_together129_aunroll_x_in_c0_eni15378_1_tpl_4_q),
        .in_feedback_in_78(i_llvm_fpga_push_i1_notcmp85163_push78_kernel_3mm55_out_feedback_out_78),
        .in_feedback_valid_in_78(i_llvm_fpga_push_i1_notcmp85163_push78_kernel_3mm55_out_feedback_valid_out_78),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp85163_pop78_kernel_3mm54_out_data_out),
        .out_feedback_stall_out_78(i_llvm_fpga_pop_i1_notcmp85163_pop78_kernel_3mm54_out_feedback_stall_out_78),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist15_i_llvm_fpga_pop_i1_notcmp85163_pop78_kernel_3mm54_out_data_out_2(DELAY,297)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_llvm_fpga_pop_i1_notcmp85163_pop78_kernel_3mm54_out_data_out_2_delay_0 <= '0;
            redist15_i_llvm_fpga_pop_i1_notcmp85163_pop78_kernel_3mm54_out_data_out_2_q <= '0;
        end
        else
        begin
            redist15_i_llvm_fpga_pop_i1_notcmp85163_pop78_kernel_3mm54_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_notcmp85163_pop78_kernel_3mm54_out_data_out);
            redist15_i_llvm_fpga_pop_i1_notcmp85163_pop78_kernel_3mm54_out_data_out_2_q <= redist15_i_llvm_fpga_pop_i1_notcmp85163_pop78_kernel_3mm54_out_data_out_2_delay_0;
        end
    end

    // valid_fanout_reg22(REG,182)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg22_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist42_sync_together129_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg23(REG,183)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(redist42_sync_together129_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_exitcond22162_push77_kernel_3mm53(BLACKBOX,113)@5
    // out out_feedback_out_77@20000000
    // out out_feedback_valid_out_77@20000000
    kernel_3mm_i_llvm_fpga_push_i1_exitcond22162_push77_0 thei_llvm_fpga_push_i1_exitcond22162_push77_kernel_3mm53 (
        .in_data_in(i_llvm_fpga_pop_i1_exitcond22162_pop77_kernel_3mm52_out_data_out),
        .in_feedback_stall_in_77(i_llvm_fpga_pop_i1_exitcond22162_pop77_kernel_3mm52_out_feedback_stall_out_77),
        .in_keep_going73(redist20_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_data_out_4_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(),
        .out_feedback_out_77(i_llvm_fpga_push_i1_exitcond22162_push77_kernel_3mm53_out_feedback_out_77),
        .out_feedback_valid_out_77(i_llvm_fpga_push_i1_exitcond22162_push77_kernel_3mm53_out_feedback_valid_out_77),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist34_sync_together129_aunroll_x_in_c0_eni15378_9_tpl_4(DELAY,316)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_sync_together129_aunroll_x_in_c0_eni15378_9_tpl_4_delay_0 <= '0;
            redist34_sync_together129_aunroll_x_in_c0_eni15378_9_tpl_4_delay_1 <= '0;
            redist34_sync_together129_aunroll_x_in_c0_eni15378_9_tpl_4_delay_2 <= '0;
            redist34_sync_together129_aunroll_x_in_c0_eni15378_9_tpl_4_q <= '0;
        end
        else
        begin
            redist34_sync_together129_aunroll_x_in_c0_eni15378_9_tpl_4_delay_0 <= $unsigned(in_c0_eni15378_9_tpl);
            redist34_sync_together129_aunroll_x_in_c0_eni15378_9_tpl_4_delay_1 <= redist34_sync_together129_aunroll_x_in_c0_eni15378_9_tpl_4_delay_0;
            redist34_sync_together129_aunroll_x_in_c0_eni15378_9_tpl_4_delay_2 <= redist34_sync_together129_aunroll_x_in_c0_eni15378_9_tpl_4_delay_1;
            redist34_sync_together129_aunroll_x_in_c0_eni15378_9_tpl_4_q <= redist34_sync_together129_aunroll_x_in_c0_eni15378_9_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_pop_i1_exitcond22162_pop77_kernel_3mm52(BLACKBOX,100)@5
    // out out_feedback_stall_out_77@20000000
    kernel_3mm_i_llvm_fpga_pop_i1_exitcond22162_pop77_0 thei_llvm_fpga_pop_i1_exitcond22162_pop77_kernel_3mm52 (
        .in_data_in(redist34_sync_together129_aunroll_x_in_c0_eni15378_9_tpl_4_q),
        .in_dir(redist25_sync_together129_aunroll_x_in_c0_eni15378_1_tpl_4_q),
        .in_feedback_in_77(i_llvm_fpga_push_i1_exitcond22162_push77_kernel_3mm53_out_feedback_out_77),
        .in_feedback_valid_in_77(i_llvm_fpga_push_i1_exitcond22162_push77_kernel_3mm53_out_feedback_valid_out_77),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond22162_pop77_kernel_3mm52_out_data_out),
        .out_feedback_stall_out_77(i_llvm_fpga_pop_i1_exitcond22162_pop77_kernel_3mm52_out_feedback_stall_out_77),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist17_i_llvm_fpga_pop_i1_exitcond22162_pop77_kernel_3mm52_out_data_out_2(DELAY,299)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pop_i1_exitcond22162_pop77_kernel_3mm52_out_data_out_2_delay_0 <= '0;
            redist17_i_llvm_fpga_pop_i1_exitcond22162_pop77_kernel_3mm52_out_data_out_2_q <= '0;
        end
        else
        begin
            redist17_i_llvm_fpga_pop_i1_exitcond22162_pop77_kernel_3mm52_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_exitcond22162_pop77_kernel_3mm52_out_data_out);
            redist17_i_llvm_fpga_pop_i1_exitcond22162_pop77_kernel_3mm52_out_data_out_2_q <= redist17_i_llvm_fpga_pop_i1_exitcond22162_pop77_kernel_3mm52_out_data_out_2_delay_0;
        end
    end

    // redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_notEnable(LOGICAL,331)
    assign redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_nor(LOGICAL,332)
    assign redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_nor_q = ~ (redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_notEnable_q | redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_sticky_ena_q);

    // redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_mem_last(CONSTANT,328)
    assign redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_mem_last_q = $unsigned(3'b010);

    // redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_cmp(LOGICAL,329)
    assign redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_cmp_b = {1'b0, redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_rdcnt_q};
    assign redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_cmp_q = $unsigned(redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_mem_last_q == redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_cmp_b ? 1'b1 : 1'b0);

    // redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_cmpReg(REG,330)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_cmpReg_q <= $unsigned(redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_cmp_q);
        end
    end

    // redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_sticky_ena(REG,333)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_nor_q == 1'b1)
        begin
            redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_sticky_ena_q <= $unsigned(redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_cmpReg_q);
        end
    end

    // redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_enaAnd(LOGICAL,334)
    assign redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_enaAnd_q = redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_sticky_ena_q & VCC_q;

    // redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_rdcnt(COUNTER,326)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_rdcnt_i <= $unsigned(redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_rdcnt_q = redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_rdcnt_i[1:0];

    // valid_fanout_reg20(REG,180)@1 + 1
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

    // valid_fanout_reg21(REG,181)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_p1025i32_mptr_bitcast_index174161_push76_kernel_3mm51(BLACKBOX,127)@2
    // out out_feedback_out_76@20000000
    // out out_feedback_valid_out_76@20000000
    kernel_3mm_i_llvm_fpga_push_p1025i32_mpt0000index174161_push76_0 thei_llvm_fpga_push_p1025i32_mptr_bitcast_index174161_push76_kernel_3mm51 (
        .in_data_in(i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out),
        .in_feedback_stall_in_76(i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_feedback_stall_out_76),
        .in_keep_going73(redist18_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(),
        .out_feedback_out_76(i_llvm_fpga_push_p1025i32_mptr_bitcast_index174161_push76_kernel_3mm51_out_feedback_out_76),
        .out_feedback_valid_out_76(i_llvm_fpga_push_p1025i32_mptr_bitcast_index174161_push76_kernel_3mm51_out_feedback_valid_out_76),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist33_sync_together129_aunroll_x_in_c0_eni15378_8_tpl_1(DELAY,315)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_sync_together129_aunroll_x_in_c0_eni15378_8_tpl_1_q <= '0;
        end
        else
        begin
            redist33_sync_together129_aunroll_x_in_c0_eni15378_8_tpl_1_q <= $unsigned(in_c0_eni15378_8_tpl);
        end
    end

    // i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50(BLACKBOX,112)@2
    // out out_feedback_stall_out_76@20000000
    kernel_3mm_i_llvm_fpga_pop_p1025i32_mptr0000_index174161_pop76_0 thei_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50 (
        .in_data_in(redist33_sync_together129_aunroll_x_in_c0_eni15378_8_tpl_1_q),
        .in_dir(redist23_sync_together129_aunroll_x_in_c0_eni15378_1_tpl_1_q),
        .in_feedback_in_76(i_llvm_fpga_push_p1025i32_mptr_bitcast_index174161_push76_kernel_3mm51_out_feedback_out_76),
        .in_feedback_valid_in_76(i_llvm_fpga_push_p1025i32_mptr_bitcast_index174161_push76_kernel_3mm51_out_feedback_valid_out_76),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out),
        .out_feedback_stall_out_76(i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_feedback_stall_out_76),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_wraddr(REG,327)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_wraddr_q <= $unsigned(redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_rdcnt_q);
        end
    end

    // redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_mem(DUALMEM,325)
    assign redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_mem_ia = $unsigned(i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out);
    assign redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_mem_aa = redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_wraddr_q;
    assign redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_mem_ab = redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_rdcnt_q;
    assign redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(64),
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
        .intended_device_family("Cyclone V")
    ) redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_mem_dmem (
        .clocken1(redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_mem_reset0),
        .clock1(clock),
        .address_a(redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_mem_aa),
        .data_a(redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_mem_ab),
        .q_b(redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_mem_iq),
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
    assign redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_mem_q = redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_mem_iq[63:0];

    // valid_fanout_reg18(REG,178)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist42_sync_together129_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg19(REG,179)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist42_sync_together129_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp90143_push73_kernel_3mm49(BLACKBOX,119)@5
    // out out_feedback_out_73@20000000
    // out out_feedback_valid_out_73@20000000
    kernel_3mm_i_llvm_fpga_push_i1_notcmp90143_push73_0 thei_llvm_fpga_push_i1_notcmp90143_push73_kernel_3mm49 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp90143_pop73_kernel_3mm48_out_data_out),
        .in_feedback_stall_in_73(i_llvm_fpga_pop_i1_notcmp90143_pop73_kernel_3mm48_out_feedback_stall_out_73),
        .in_keep_going73(redist20_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_data_out_4_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(),
        .out_feedback_out_73(i_llvm_fpga_push_i1_notcmp90143_push73_kernel_3mm49_out_feedback_out_73),
        .out_feedback_valid_out_73(i_llvm_fpga_push_i1_notcmp90143_push73_kernel_3mm49_out_feedback_valid_out_73),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist32_sync_together129_aunroll_x_in_c0_eni15378_7_tpl_4(DELAY,314)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together129_aunroll_x_in_c0_eni15378_7_tpl_4_delay_0 <= '0;
            redist32_sync_together129_aunroll_x_in_c0_eni15378_7_tpl_4_delay_1 <= '0;
            redist32_sync_together129_aunroll_x_in_c0_eni15378_7_tpl_4_delay_2 <= '0;
            redist32_sync_together129_aunroll_x_in_c0_eni15378_7_tpl_4_q <= '0;
        end
        else
        begin
            redist32_sync_together129_aunroll_x_in_c0_eni15378_7_tpl_4_delay_0 <= $unsigned(in_c0_eni15378_7_tpl);
            redist32_sync_together129_aunroll_x_in_c0_eni15378_7_tpl_4_delay_1 <= redist32_sync_together129_aunroll_x_in_c0_eni15378_7_tpl_4_delay_0;
            redist32_sync_together129_aunroll_x_in_c0_eni15378_7_tpl_4_delay_2 <= redist32_sync_together129_aunroll_x_in_c0_eni15378_7_tpl_4_delay_1;
            redist32_sync_together129_aunroll_x_in_c0_eni15378_7_tpl_4_q <= redist32_sync_together129_aunroll_x_in_c0_eni15378_7_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_pop_i1_notcmp90143_pop73_kernel_3mm48(BLACKBOX,105)@5
    // out out_feedback_stall_out_73@20000000
    kernel_3mm_i_llvm_fpga_pop_i1_notcmp90143_pop73_0 thei_llvm_fpga_pop_i1_notcmp90143_pop73_kernel_3mm48 (
        .in_data_in(redist32_sync_together129_aunroll_x_in_c0_eni15378_7_tpl_4_q),
        .in_dir(redist25_sync_together129_aunroll_x_in_c0_eni15378_1_tpl_4_q),
        .in_feedback_in_73(i_llvm_fpga_push_i1_notcmp90143_push73_kernel_3mm49_out_feedback_out_73),
        .in_feedback_valid_in_73(i_llvm_fpga_push_i1_notcmp90143_push73_kernel_3mm49_out_feedback_valid_out_73),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp90143_pop73_kernel_3mm48_out_data_out),
        .out_feedback_stall_out_73(i_llvm_fpga_pop_i1_notcmp90143_pop73_kernel_3mm48_out_feedback_stall_out_73),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist14_i_llvm_fpga_pop_i1_notcmp90143_pop73_kernel_3mm48_out_data_out_2(DELAY,296)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_pop_i1_notcmp90143_pop73_kernel_3mm48_out_data_out_2_delay_0 <= '0;
            redist14_i_llvm_fpga_pop_i1_notcmp90143_pop73_kernel_3mm48_out_data_out_2_q <= '0;
        end
        else
        begin
            redist14_i_llvm_fpga_pop_i1_notcmp90143_pop73_kernel_3mm48_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_notcmp90143_pop73_kernel_3mm48_out_data_out);
            redist14_i_llvm_fpga_pop_i1_notcmp90143_pop73_kernel_3mm48_out_data_out_2_q <= redist14_i_llvm_fpga_pop_i1_notcmp90143_pop73_kernel_3mm48_out_data_out_2_delay_0;
        end
    end

    // valid_fanout_reg16(REG,176)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist42_sync_together129_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg17(REG,177)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist42_sync_together129_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_exitcond25141_push72_kernel_3mm47(BLACKBOX,114)@5
    // out out_feedback_out_72@20000000
    // out out_feedback_valid_out_72@20000000
    kernel_3mm_i_llvm_fpga_push_i1_exitcond25141_push72_0 thei_llvm_fpga_push_i1_exitcond25141_push72_kernel_3mm47 (
        .in_data_in(i_llvm_fpga_pop_i1_exitcond25141_pop72_kernel_3mm46_out_data_out),
        .in_feedback_stall_in_72(i_llvm_fpga_pop_i1_exitcond25141_pop72_kernel_3mm46_out_feedback_stall_out_72),
        .in_keep_going73(redist20_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_data_out_4_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(),
        .out_feedback_out_72(i_llvm_fpga_push_i1_exitcond25141_push72_kernel_3mm47_out_feedback_out_72),
        .out_feedback_valid_out_72(i_llvm_fpga_push_i1_exitcond25141_push72_kernel_3mm47_out_feedback_valid_out_72),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist31_sync_together129_aunroll_x_in_c0_eni15378_6_tpl_4(DELAY,313)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_sync_together129_aunroll_x_in_c0_eni15378_6_tpl_4_delay_0 <= '0;
            redist31_sync_together129_aunroll_x_in_c0_eni15378_6_tpl_4_delay_1 <= '0;
            redist31_sync_together129_aunroll_x_in_c0_eni15378_6_tpl_4_delay_2 <= '0;
            redist31_sync_together129_aunroll_x_in_c0_eni15378_6_tpl_4_q <= '0;
        end
        else
        begin
            redist31_sync_together129_aunroll_x_in_c0_eni15378_6_tpl_4_delay_0 <= $unsigned(in_c0_eni15378_6_tpl);
            redist31_sync_together129_aunroll_x_in_c0_eni15378_6_tpl_4_delay_1 <= redist31_sync_together129_aunroll_x_in_c0_eni15378_6_tpl_4_delay_0;
            redist31_sync_together129_aunroll_x_in_c0_eni15378_6_tpl_4_delay_2 <= redist31_sync_together129_aunroll_x_in_c0_eni15378_6_tpl_4_delay_1;
            redist31_sync_together129_aunroll_x_in_c0_eni15378_6_tpl_4_q <= redist31_sync_together129_aunroll_x_in_c0_eni15378_6_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_pop_i1_exitcond25141_pop72_kernel_3mm46(BLACKBOX,101)@5
    // out out_feedback_stall_out_72@20000000
    kernel_3mm_i_llvm_fpga_pop_i1_exitcond25141_pop72_0 thei_llvm_fpga_pop_i1_exitcond25141_pop72_kernel_3mm46 (
        .in_data_in(redist31_sync_together129_aunroll_x_in_c0_eni15378_6_tpl_4_q),
        .in_dir(redist25_sync_together129_aunroll_x_in_c0_eni15378_1_tpl_4_q),
        .in_feedback_in_72(i_llvm_fpga_push_i1_exitcond25141_push72_kernel_3mm47_out_feedback_out_72),
        .in_feedback_valid_in_72(i_llvm_fpga_push_i1_exitcond25141_push72_kernel_3mm47_out_feedback_valid_out_72),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond25141_pop72_kernel_3mm46_out_data_out),
        .out_feedback_stall_out_72(i_llvm_fpga_pop_i1_exitcond25141_pop72_kernel_3mm46_out_feedback_stall_out_72),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist16_i_llvm_fpga_pop_i1_exitcond25141_pop72_kernel_3mm46_out_data_out_2(DELAY,298)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_llvm_fpga_pop_i1_exitcond25141_pop72_kernel_3mm46_out_data_out_2_delay_0 <= '0;
            redist16_i_llvm_fpga_pop_i1_exitcond25141_pop72_kernel_3mm46_out_data_out_2_q <= '0;
        end
        else
        begin
            redist16_i_llvm_fpga_pop_i1_exitcond25141_pop72_kernel_3mm46_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_exitcond25141_pop72_kernel_3mm46_out_data_out);
            redist16_i_llvm_fpga_pop_i1_exitcond25141_pop72_kernel_3mm46_out_data_out_2_q <= redist16_i_llvm_fpga_pop_i1_exitcond25141_pop72_kernel_3mm46_out_data_out_2_delay_0;
        end
    end

    // i_masked82_kernel_3mm45(LOGICAL,128)@2 + 1
    assign i_masked82_kernel_3mm45_qi = i_notcmp69_kernel_3mm38_q & i_first_cleanup78_kernel_3mm3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked82_kernel_3mm45_delay ( .xin(i_masked82_kernel_3mm45_qi), .xout(i_masked82_kernel_3mm45_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist9_i_masked82_kernel_3mm45_q_5(DELAY,291)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_masked82_kernel_3mm45_q_5_delay_0 <= '0;
            redist9_i_masked82_kernel_3mm45_q_5_delay_1 <= '0;
            redist9_i_masked82_kernel_3mm45_q_5_delay_2 <= '0;
            redist9_i_masked82_kernel_3mm45_q_5_q <= '0;
        end
        else
        begin
            redist9_i_masked82_kernel_3mm45_q_5_delay_0 <= $unsigned(i_masked82_kernel_3mm45_q);
            redist9_i_masked82_kernel_3mm45_q_5_delay_1 <= redist9_i_masked82_kernel_3mm45_q_5_delay_0;
            redist9_i_masked82_kernel_3mm45_q_5_delay_2 <= redist9_i_masked82_kernel_3mm45_q_5_delay_1;
            redist9_i_masked82_kernel_3mm45_q_5_q <= redist9_i_masked82_kernel_3mm45_q_5_delay_2;
        end
    end

    // c_i32_090(CONSTANT,80)
    assign c_i32_090_q = $unsigned(32'b00000000000000000000000000000000);

    // i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_b_tessel0_2(BITSELECT,263)
    assign i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_b_tessel0_2_b = c_i32_090_q[25:0];

    // valid_fanout_reg12(REG,172)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist41_sync_together129_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg13(REG,173)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist41_sync_together129_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i32_j_1151_pop39160_push75_kernel_3mm28(BLACKBOX,123)@3
    // out out_feedback_out_75@20000000
    // out out_feedback_valid_out_75@20000000
    kernel_3mm_i_llvm_fpga_push_i32_j_1151_pop39160_push75_0 thei_llvm_fpga_push_i32_j_1151_pop39160_push75_kernel_3mm28 (
        .in_data_in(i_llvm_fpga_pop_i32_j_1151_pop39160_pop75_kernel_3mm27_out_data_out),
        .in_feedback_stall_in_75(i_llvm_fpga_pop_i32_j_1151_pop39160_pop75_kernel_3mm27_out_feedback_stall_out_75),
        .in_keep_going73(redist19_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_75(i_llvm_fpga_push_i32_j_1151_pop39160_push75_kernel_3mm28_out_feedback_out_75),
        .out_feedback_valid_out_75(i_llvm_fpga_push_i32_j_1151_pop39160_push75_kernel_3mm28_out_feedback_valid_out_75),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist30_sync_together129_aunroll_x_in_c0_eni15378_5_tpl_2(DELAY,312)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_sync_together129_aunroll_x_in_c0_eni15378_5_tpl_2_delay_0 <= '0;
            redist30_sync_together129_aunroll_x_in_c0_eni15378_5_tpl_2_q <= '0;
        end
        else
        begin
            redist30_sync_together129_aunroll_x_in_c0_eni15378_5_tpl_2_delay_0 <= $unsigned(in_c0_eni15378_5_tpl);
            redist30_sync_together129_aunroll_x_in_c0_eni15378_5_tpl_2_q <= redist30_sync_together129_aunroll_x_in_c0_eni15378_5_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_i32_j_1151_pop39160_pop75_kernel_3mm27(BLACKBOX,108)@3
    // out out_feedback_stall_out_75@20000000
    kernel_3mm_i_llvm_fpga_pop_i32_j_1151_pop39160_pop75_0 thei_llvm_fpga_pop_i32_j_1151_pop39160_pop75_kernel_3mm27 (
        .in_data_in(redist30_sync_together129_aunroll_x_in_c0_eni15378_5_tpl_2_q),
        .in_dir(redist24_sync_together129_aunroll_x_in_c0_eni15378_1_tpl_2_q),
        .in_feedback_in_75(i_llvm_fpga_push_i32_j_1151_pop39160_push75_kernel_3mm28_out_feedback_out_75),
        .in_feedback_valid_in_75(i_llvm_fpga_push_i32_j_1151_pop39160_push75_kernel_3mm28_out_feedback_valid_out_75),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_1151_pop39160_pop75_kernel_3mm27_out_data_out),
        .out_feedback_stall_out_75(i_llvm_fpga_pop_i32_j_1151_pop39160_pop75_kernel_3mm27_out_feedback_stall_out_75),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist13_i_llvm_fpga_pop_i32_j_1151_pop39160_pop75_kernel_3mm27_out_data_out_1(DELAY,295)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_llvm_fpga_pop_i32_j_1151_pop39160_pop75_kernel_3mm27_out_data_out_1_q <= '0;
        end
        else
        begin
            redist13_i_llvm_fpga_pop_i32_j_1151_pop39160_pop75_kernel_3mm27_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_j_1151_pop39160_pop75_kernel_3mm27_out_data_out);
        end
    end

    // leftShiftStage1Idx1Rng2_uid216_dupName_6_i_unnamed_kernel_3mm0_shift_x(BITSELECT,215)@3
    assign leftShiftStage1Idx1Rng2_uid216_dupName_6_i_unnamed_kernel_3mm0_shift_x_in = leftShiftStage0_uid206_dupName_5_i_unnamed_kernel_3mm0_shift_x_q[29:0];
    assign leftShiftStage1Idx1Rng2_uid216_dupName_6_i_unnamed_kernel_3mm0_shift_x_b = leftShiftStage1Idx1Rng2_uid216_dupName_6_i_unnamed_kernel_3mm0_shift_x_in[29:0];

    // leftShiftStage1Idx1_uid217_dupName_6_i_unnamed_kernel_3mm0_shift_x(BITJOIN,216)@3
    assign leftShiftStage1Idx1_uid217_dupName_6_i_unnamed_kernel_3mm0_shift_x_q = {leftShiftStage1Idx1Rng2_uid216_dupName_6_i_unnamed_kernel_3mm0_shift_x_b, i_mptr_bitcast_index160_kernel_3mm0_c_i2_01_x_q};

    // leftShiftStage0Idx1Rng1_uid203_dupName_5_i_unnamed_kernel_3mm0_shift_x(BITSELECT,202)@3
    assign leftShiftStage0Idx1Rng1_uid203_dupName_5_i_unnamed_kernel_3mm0_shift_x_in = redist12_i_llvm_fpga_pop_i32_k_1149_pop68_kernel_3mm12_out_data_out_1_q[30:0];
    assign leftShiftStage0Idx1Rng1_uid203_dupName_5_i_unnamed_kernel_3mm0_shift_x_b = leftShiftStage0Idx1Rng1_uid203_dupName_5_i_unnamed_kernel_3mm0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid204_dupName_5_i_unnamed_kernel_3mm0_shift_x(BITJOIN,203)@3
    assign leftShiftStage0Idx1_uid204_dupName_5_i_unnamed_kernel_3mm0_shift_x_q = {leftShiftStage0Idx1Rng1_uid203_dupName_5_i_unnamed_kernel_3mm0_shift_x_b, GND_q};

    // valid_fanout_reg4(REG,164)@1 + 1
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

    // valid_fanout_reg15(REG,175)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist41_sync_together129_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_i32_191(CONSTANT,81)
    assign c_i32_191_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc46_kernel_3mm33(ADD,95)@3
    assign i_inc46_kernel_3mm33_a = {1'b0, redist12_i_llvm_fpga_pop_i32_k_1149_pop68_kernel_3mm12_out_data_out_1_q};
    assign i_inc46_kernel_3mm33_b = {1'b0, c_i32_191_q};
    assign i_inc46_kernel_3mm33_o = $unsigned(i_inc46_kernel_3mm33_a) + $unsigned(i_inc46_kernel_3mm33_b);
    assign i_inc46_kernel_3mm33_q = i_inc46_kernel_3mm33_o[32:0];

    // bgTrunc_i_inc46_kernel_3mm33_sel_x(BITSELECT,13)@3
    assign bgTrunc_i_inc46_kernel_3mm33_sel_x_b = i_inc46_kernel_3mm33_q[31:0];

    // i_llvm_fpga_push_i32_k_1149_push68_kernel_3mm34(BLACKBOX,124)@3
    // out out_feedback_out_68@20000000
    // out out_feedback_valid_out_68@20000000
    kernel_3mm_i_llvm_fpga_push_i32_k_1149_push68_0 thei_llvm_fpga_push_i32_k_1149_push68_kernel_3mm34 (
        .in_data_in(bgTrunc_i_inc46_kernel_3mm33_sel_x_b),
        .in_feedback_stall_in_68(i_llvm_fpga_pop_i32_k_1149_pop68_kernel_3mm12_out_feedback_stall_out_68),
        .in_keep_going73(redist19_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_68(i_llvm_fpga_push_i32_k_1149_push68_kernel_3mm34_out_feedback_out_68),
        .out_feedback_valid_out_68(i_llvm_fpga_push_i32_k_1149_push68_kernel_3mm34_out_feedback_valid_out_68),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_k_1149_pop68_kernel_3mm12(BLACKBOX,109)@2
    // out out_feedback_stall_out_68@20000000
    kernel_3mm_i_llvm_fpga_pop_i32_k_1149_pop68_0 thei_llvm_fpga_pop_i32_k_1149_pop68_kernel_3mm12 (
        .in_data_in(c_i32_090_q),
        .in_dir(redist23_sync_together129_aunroll_x_in_c0_eni15378_1_tpl_1_q),
        .in_feedback_in_68(i_llvm_fpga_push_i32_k_1149_push68_kernel_3mm34_out_feedback_out_68),
        .in_feedback_valid_in_68(i_llvm_fpga_push_i32_k_1149_push68_kernel_3mm34_out_feedback_valid_out_68),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_k_1149_pop68_kernel_3mm12_out_data_out),
        .out_feedback_stall_out_68(i_llvm_fpga_pop_i32_k_1149_pop68_kernel_3mm12_out_feedback_stall_out_68),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist12_i_llvm_fpga_pop_i32_k_1149_pop68_kernel_3mm12_out_data_out_1(DELAY,294)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_pop_i32_k_1149_pop68_kernel_3mm12_out_data_out_1_q <= '0;
        end
        else
        begin
            redist12_i_llvm_fpga_pop_i32_k_1149_pop68_kernel_3mm12_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_k_1149_pop68_kernel_3mm12_out_data_out);
        end
    end

    // leftShiftStage0_uid206_dupName_5_i_unnamed_kernel_3mm0_shift_x(MUX,205)@3
    assign leftShiftStage0_uid206_dupName_5_i_unnamed_kernel_3mm0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid206_dupName_5_i_unnamed_kernel_3mm0_shift_x_s or redist12_i_llvm_fpga_pop_i32_k_1149_pop68_kernel_3mm12_out_data_out_1_q or leftShiftStage0Idx1_uid204_dupName_5_i_unnamed_kernel_3mm0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid206_dupName_5_i_unnamed_kernel_3mm0_shift_x_s)
            1'b0 : leftShiftStage0_uid206_dupName_5_i_unnamed_kernel_3mm0_shift_x_q = redist12_i_llvm_fpga_pop_i32_k_1149_pop68_kernel_3mm12_out_data_out_1_q;
            1'b1 : leftShiftStage0_uid206_dupName_5_i_unnamed_kernel_3mm0_shift_x_q = leftShiftStage0Idx1_uid204_dupName_5_i_unnamed_kernel_3mm0_shift_x_q;
            default : leftShiftStage0_uid206_dupName_5_i_unnamed_kernel_3mm0_shift_x_q = 32'b0;
        endcase
    end

    // leftShiftStage1_uid219_dupName_6_i_unnamed_kernel_3mm0_shift_x(MUX,218)@3
    assign leftShiftStage1_uid219_dupName_6_i_unnamed_kernel_3mm0_shift_x_s = VCC_q;
    always @(leftShiftStage1_uid219_dupName_6_i_unnamed_kernel_3mm0_shift_x_s or leftShiftStage0_uid206_dupName_5_i_unnamed_kernel_3mm0_shift_x_q or leftShiftStage1Idx1_uid217_dupName_6_i_unnamed_kernel_3mm0_shift_x_q)
    begin
        unique case (leftShiftStage1_uid219_dupName_6_i_unnamed_kernel_3mm0_shift_x_s)
            1'b0 : leftShiftStage1_uid219_dupName_6_i_unnamed_kernel_3mm0_shift_x_q = leftShiftStage0_uid206_dupName_5_i_unnamed_kernel_3mm0_shift_x_q;
            1'b1 : leftShiftStage1_uid219_dupName_6_i_unnamed_kernel_3mm0_shift_x_q = leftShiftStage1Idx1_uid217_dupName_6_i_unnamed_kernel_3mm0_shift_x_q;
            default : leftShiftStage1_uid219_dupName_6_i_unnamed_kernel_3mm0_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_kernel_3mm25_vt_select_31(BITSELECT,149)@3
    assign i_unnamed_kernel_3mm25_vt_select_31_b = leftShiftStage1_uid219_dupName_6_i_unnamed_kernel_3mm0_shift_x_q[31:3];

    // i_unnamed_kernel_3mm25_vt_const_2(CONSTANT,147)
    assign i_unnamed_kernel_3mm25_vt_const_2_q = $unsigned(3'b000);

    // i_unnamed_kernel_3mm25_vt_join(BITJOIN,148)@3
    assign i_unnamed_kernel_3mm25_vt_join_q = {i_unnamed_kernel_3mm25_vt_select_31_b, i_unnamed_kernel_3mm25_vt_const_2_q};

    // i_unnamed_kernel_3mm24_vt_select_31(BITSELECT,146)@3
    assign i_unnamed_kernel_3mm24_vt_select_31_b = leftShiftStage0_uid206_dupName_5_i_unnamed_kernel_3mm0_shift_x_q[31:1];

    // i_unnamed_kernel_3mm24_vt_join(BITJOIN,145)@3
    assign i_unnamed_kernel_3mm24_vt_join_q = {i_unnamed_kernel_3mm24_vt_select_31_b, GND_q};

    // i_mul40_add42_kernel_3mm26(ADD,130)@3
    assign i_mul40_add42_kernel_3mm26_a = {1'b0, i_unnamed_kernel_3mm24_vt_join_q};
    assign i_mul40_add42_kernel_3mm26_b = {1'b0, i_unnamed_kernel_3mm25_vt_join_q};
    assign i_mul40_add42_kernel_3mm26_o = $unsigned(i_mul40_add42_kernel_3mm26_a) + $unsigned(i_mul40_add42_kernel_3mm26_b);
    assign i_mul40_add42_kernel_3mm26_q = i_mul40_add42_kernel_3mm26_o[32:0];

    // bgTrunc_i_mul40_add42_kernel_3mm26_sel_x(BITSELECT,14)@3
    assign bgTrunc_i_mul40_add42_kernel_3mm26_sel_x_b = i_mul40_add42_kernel_3mm26_q[31:0];

    // i_mul40_add42_kernel_3mm26_vt_select_31(BITSELECT,133)@3
    assign i_mul40_add42_kernel_3mm26_vt_select_31_b = bgTrunc_i_mul40_add42_kernel_3mm26_sel_x_b[31:1];

    // redist7_i_mul40_add42_kernel_3mm26_vt_select_31_b_1(DELAY,289)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_mul40_add42_kernel_3mm26_vt_select_31_b_1_q <= '0;
        end
        else
        begin
            redist7_i_mul40_add42_kernel_3mm26_vt_select_31_b_1_q <= $unsigned(i_mul40_add42_kernel_3mm26_vt_select_31_b);
        end
    end

    // i_mul40_add42_kernel_3mm26_vt_join(BITJOIN,132)@4
    assign i_mul40_add42_kernel_3mm26_vt_join_q = {redist7_i_mul40_add42_kernel_3mm26_vt_select_31_b_1_q, GND_q};

    // i_add41_kernel_3mm29(ADD,87)@4
    assign i_add41_kernel_3mm29_a = {1'b0, i_mul40_add42_kernel_3mm26_vt_join_q};
    assign i_add41_kernel_3mm29_b = {1'b0, redist13_i_llvm_fpga_pop_i32_j_1151_pop39160_pop75_kernel_3mm27_out_data_out_1_q};
    assign i_add41_kernel_3mm29_o = $unsigned(i_add41_kernel_3mm29_a) + $unsigned(i_add41_kernel_3mm29_b);
    assign i_add41_kernel_3mm29_q = i_add41_kernel_3mm29_o[32:0];

    // i_mptr_bitcast_index162_kernel_3mm0_add_x_BitSelect_for_b_tessel0_1(BITSELECT,274)@4
    assign i_mptr_bitcast_index162_kernel_3mm0_add_x_BitSelect_for_b_tessel0_1_b = $unsigned(i_add41_kernel_3mm29_q[31:0]);

    // redist2_i_mptr_bitcast_index162_kernel_3mm0_add_x_BitSelect_for_b_tessel0_1_b_1(DELAY,284)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_mptr_bitcast_index162_kernel_3mm0_add_x_BitSelect_for_b_tessel0_1_b_1_q <= '0;
        end
        else
        begin
            redist2_i_mptr_bitcast_index162_kernel_3mm0_add_x_BitSelect_for_b_tessel0_1_b_1_q <= $unsigned(i_mptr_bitcast_index162_kernel_3mm0_add_x_BitSelect_for_b_tessel0_1_b);
        end
    end

    // i_mptr_bitcast_index160_kernel_3mm0_c_i2_01_x(CONSTANT,25)
    assign i_mptr_bitcast_index160_kernel_3mm0_c_i2_01_x_q = $unsigned(2'b00);

    // i_mptr_bitcast_index162_kernel_3mm0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,276)@5
    assign i_mptr_bitcast_index162_kernel_3mm0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_b_tessel0_2_b, redist2_i_mptr_bitcast_index162_kernel_3mm0_add_x_BitSelect_for_b_tessel0_1_b_1_q, i_mptr_bitcast_index160_kernel_3mm0_c_i2_01_x_q};

    // valid_fanout_reg14(REG,174)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist42_sync_together129_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast16118256_kernel_3mm31(BLACKBOX,98)@5
    kernel_3mm_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast16118256_0 thei_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast16118256_kernel_3mm31 (
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_dest_data_out_9_0(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast16118256_kernel_3mm31_out_dest_data_out_9_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mptr_bitcast_index162_kernel_3mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,281)@5
    assign i_mptr_bitcast_index162_kernel_3mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast16118256_kernel_3mm31_out_dest_data_out_9_0[59:0]);
    assign i_mptr_bitcast_index162_kernel_3mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast16118256_kernel_3mm31_out_dest_data_out_9_0[63:60]);

    // i_mptr_bitcast_index162_kernel_3mm0_add_x_p1_of_2(ADD,253)@5 + 1
    assign i_mptr_bitcast_index162_kernel_3mm0_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index162_kernel_3mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b};
    assign i_mptr_bitcast_index162_kernel_3mm0_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index162_kernel_3mm0_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index162_kernel_3mm0_add_x_p1_of_2_o <= 61'b0;
        end
        else
        begin
            i_mptr_bitcast_index162_kernel_3mm0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index162_kernel_3mm0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index162_kernel_3mm0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index162_kernel_3mm0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index162_kernel_3mm0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index162_kernel_3mm0_add_x_p1_of_2_q = i_mptr_bitcast_index162_kernel_3mm0_add_x_p1_of_2_o[59:0];

    // i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_b_tessel1_0(BITSELECT,265)
    assign i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_b_tessel1_0_b = c_i32_090_q[29:26];

    // i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,267)@6
    assign i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_b_tessel1_0_b};

    // redist0_i_mptr_bitcast_index162_kernel_3mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1(DELAY,282)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_mptr_bitcast_index162_kernel_3mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist0_i_mptr_bitcast_index162_kernel_3mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= $unsigned(i_mptr_bitcast_index162_kernel_3mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_mptr_bitcast_index162_kernel_3mm0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,272)@6
    assign i_mptr_bitcast_index162_kernel_3mm0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist0_i_mptr_bitcast_index162_kernel_3mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q};

    // i_mptr_bitcast_index162_kernel_3mm0_add_x_p2_of_2(ADD,254)@6 + 1
    assign i_mptr_bitcast_index162_kernel_3mm0_add_x_p2_of_2_cin = i_mptr_bitcast_index162_kernel_3mm0_add_x_p1_of_2_c;
    assign i_mptr_bitcast_index162_kernel_3mm0_add_x_p2_of_2_a = { {1'b0, i_mptr_bitcast_index162_kernel_3mm0_add_x_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mptr_bitcast_index162_kernel_3mm0_add_x_p2_of_2_b = { {1'b0, i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_b_BitJoin_for_c_q}, i_mptr_bitcast_index162_kernel_3mm0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index162_kernel_3mm0_add_x_p2_of_2_o <= 7'b0;
        end
        else
        begin
            i_mptr_bitcast_index162_kernel_3mm0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index162_kernel_3mm0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index162_kernel_3mm0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index162_kernel_3mm0_add_x_p2_of_2_q = i_mptr_bitcast_index162_kernel_3mm0_add_x_p2_of_2_o[5:1];

    // redist4_i_mptr_bitcast_index162_kernel_3mm0_add_x_p1_of_2_q_1(DELAY,286)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_mptr_bitcast_index162_kernel_3mm0_add_x_p1_of_2_q_1_q <= '0;
        end
        else
        begin
            redist4_i_mptr_bitcast_index162_kernel_3mm0_add_x_p1_of_2_q_1_q <= $unsigned(i_mptr_bitcast_index162_kernel_3mm0_add_x_p1_of_2_q);
        end
    end

    // i_mptr_bitcast_index162_kernel_3mm0_add_x_BitJoin_for_q(BITJOIN,255)@7
    assign i_mptr_bitcast_index162_kernel_3mm0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index162_kernel_3mm0_add_x_p2_of_2_q, redist4_i_mptr_bitcast_index162_kernel_3mm0_add_x_p1_of_2_q_1_q};

    // i_mptr_bitcast_index162_kernel_3mm0_dupName_0_trunc_sel_x(BITSELECT,28)@7
    assign i_mptr_bitcast_index162_kernel_3mm0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index162_kernel_3mm0_add_x_BitJoin_for_q_q[63:0];

    // valid_fanout_reg8(REG,168)@1 + 1
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

    // valid_fanout_reg9(REG,169)@1 + 1
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

    // i_llvm_fpga_push_i1_memdep_phi5_pop27145_push74_kernel_3mm20(BLACKBOX,117)@2
    // out out_feedback_out_74@20000000
    // out out_feedback_valid_out_74@20000000
    kernel_3mm_i_llvm_fpga_push_i1_memdep_phi5_pop27145_push74_0 thei_llvm_fpga_push_i1_memdep_phi5_pop27145_push74_kernel_3mm20 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi5_pop27145_pop74_kernel_3mm19_out_data_out),
        .in_feedback_stall_in_74(i_llvm_fpga_pop_i1_memdep_phi5_pop27145_pop74_kernel_3mm19_out_feedback_stall_out_74),
        .in_keep_going73(redist18_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_74(i_llvm_fpga_push_i1_memdep_phi5_pop27145_push74_kernel_3mm20_out_feedback_out_74),
        .out_feedback_valid_out_74(i_llvm_fpga_push_i1_memdep_phi5_pop27145_push74_kernel_3mm20_out_feedback_valid_out_74),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist28_sync_together129_aunroll_x_in_c0_eni15378_3_tpl_1(DELAY,310)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together129_aunroll_x_in_c0_eni15378_3_tpl_1_q <= '0;
        end
        else
        begin
            redist28_sync_together129_aunroll_x_in_c0_eni15378_3_tpl_1_q <= $unsigned(in_c0_eni15378_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi5_pop27145_pop74_kernel_3mm19(BLACKBOX,103)@2
    // out out_feedback_stall_out_74@20000000
    kernel_3mm_i_llvm_fpga_pop_i1_memdep_phi5_pop27145_pop74_0 thei_llvm_fpga_pop_i1_memdep_phi5_pop27145_pop74_kernel_3mm19 (
        .in_data_in(redist28_sync_together129_aunroll_x_in_c0_eni15378_3_tpl_1_q),
        .in_dir(redist23_sync_together129_aunroll_x_in_c0_eni15378_1_tpl_1_q),
        .in_feedback_in_74(i_llvm_fpga_push_i1_memdep_phi5_pop27145_push74_kernel_3mm20_out_feedback_out_74),
        .in_feedback_valid_in_74(i_llvm_fpga_push_i1_memdep_phi5_pop27145_push74_kernel_3mm20_out_feedback_valid_out_74),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi5_pop27145_pop74_kernel_3mm19_out_data_out),
        .out_feedback_stall_out_74(i_llvm_fpga_pop_i1_memdep_phi5_pop27145_pop74_kernel_3mm19_out_feedback_stall_out_74),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg10(REG,170)@1 + 1
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

    // valid_fanout_reg11(REG,171)@1 + 1
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

    // i_llvm_fpga_push_i1_memdep_phi4_pop40164_push79_kernel_3mm22(BLACKBOX,116)@2
    // out out_feedback_out_79@20000000
    // out out_feedback_valid_out_79@20000000
    kernel_3mm_i_llvm_fpga_push_i1_memdep_phi4_pop40164_push79_0 thei_llvm_fpga_push_i1_memdep_phi4_pop40164_push79_kernel_3mm22 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi4_pop40164_pop79_kernel_3mm21_out_data_out),
        .in_feedback_stall_in_79(i_llvm_fpga_pop_i1_memdep_phi4_pop40164_pop79_kernel_3mm21_out_feedback_stall_out_79),
        .in_keep_going73(redist18_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_79(i_llvm_fpga_push_i1_memdep_phi4_pop40164_push79_kernel_3mm22_out_feedback_out_79),
        .out_feedback_valid_out_79(i_llvm_fpga_push_i1_memdep_phi4_pop40164_push79_kernel_3mm22_out_feedback_valid_out_79),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist29_sync_together129_aunroll_x_in_c0_eni15378_4_tpl_1(DELAY,311)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together129_aunroll_x_in_c0_eni15378_4_tpl_1_q <= '0;
        end
        else
        begin
            redist29_sync_together129_aunroll_x_in_c0_eni15378_4_tpl_1_q <= $unsigned(in_c0_eni15378_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi4_pop40164_pop79_kernel_3mm21(BLACKBOX,102)@2
    // out out_feedback_stall_out_79@20000000
    kernel_3mm_i_llvm_fpga_pop_i1_memdep_phi4_pop40164_pop79_0 thei_llvm_fpga_pop_i1_memdep_phi4_pop40164_pop79_kernel_3mm21 (
        .in_data_in(redist29_sync_together129_aunroll_x_in_c0_eni15378_4_tpl_1_q),
        .in_dir(redist23_sync_together129_aunroll_x_in_c0_eni15378_1_tpl_1_q),
        .in_feedback_in_79(i_llvm_fpga_push_i1_memdep_phi4_pop40164_push79_kernel_3mm22_out_feedback_out_79),
        .in_feedback_valid_in_79(i_llvm_fpga_push_i1_memdep_phi4_pop40164_push79_kernel_3mm22_out_feedback_valid_out_79),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi4_pop40164_pop79_kernel_3mm21_out_data_out),
        .out_feedback_stall_out_79(i_llvm_fpga_pop_i1_memdep_phi4_pop40164_pop79_kernel_3mm21_out_feedback_stall_out_79),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_memdep_phi5_or_kernel_3mm23(LOGICAL,129)@2 + 1
    assign i_memdep_phi5_or_kernel_3mm23_qi = i_llvm_fpga_pop_i1_memdep_phi4_pop40164_pop79_kernel_3mm21_out_data_out | i_llvm_fpga_pop_i1_memdep_phi5_pop27145_pop74_kernel_3mm19_out_data_out;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_memdep_phi5_or_kernel_3mm23_delay ( .xin(i_memdep_phi5_or_kernel_3mm23_qi), .xout(i_memdep_phi5_or_kernel_3mm23_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist8_i_memdep_phi5_or_kernel_3mm23_q_5(DELAY,290)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_memdep_phi5_or_kernel_3mm23_q_5_delay_0 <= '0;
            redist8_i_memdep_phi5_or_kernel_3mm23_q_5_delay_1 <= '0;
            redist8_i_memdep_phi5_or_kernel_3mm23_q_5_delay_2 <= '0;
            redist8_i_memdep_phi5_or_kernel_3mm23_q_5_q <= '0;
        end
        else
        begin
            redist8_i_memdep_phi5_or_kernel_3mm23_q_5_delay_0 <= $unsigned(i_memdep_phi5_or_kernel_3mm23_q);
            redist8_i_memdep_phi5_or_kernel_3mm23_q_5_delay_1 <= redist8_i_memdep_phi5_or_kernel_3mm23_q_5_delay_0;
            redist8_i_memdep_phi5_or_kernel_3mm23_q_5_delay_2 <= redist8_i_memdep_phi5_or_kernel_3mm23_q_5_delay_1;
            redist8_i_memdep_phi5_or_kernel_3mm23_q_5_q <= redist8_i_memdep_phi5_or_kernel_3mm23_q_5_delay_2;
        end
    end

    // valid_fanout_reg5(REG,165)@1 + 1
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

    // valid_fanout_reg6(REG,166)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist41_sync_together129_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i32_mul31_add40139_push71_kernel_3mm14(BLACKBOX,125)@3
    // out out_feedback_out_71@20000000
    // out out_feedback_valid_out_71@20000000
    kernel_3mm_i_llvm_fpga_push_i32_mul31_add40139_push71_0 thei_llvm_fpga_push_i32_mul31_add40139_push71_kernel_3mm14 (
        .in_data_in(redist11_i_llvm_fpga_pop_i32_mul31_add40139_pop71_kernel_3mm13_out_data_out_1_q),
        .in_feedback_stall_in_71(i_llvm_fpga_pop_i32_mul31_add40139_pop71_kernel_3mm13_out_feedback_stall_out_71),
        .in_keep_going73(redist19_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_71(i_llvm_fpga_push_i32_mul31_add40139_push71_kernel_3mm14_out_feedback_out_71),
        .out_feedback_valid_out_71(i_llvm_fpga_push_i32_mul31_add40139_push71_kernel_3mm14_out_feedback_valid_out_71),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist27_sync_together129_aunroll_x_in_c0_eni15378_2_tpl_1(DELAY,309)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together129_aunroll_x_in_c0_eni15378_2_tpl_1_q <= '0;
        end
        else
        begin
            redist27_sync_together129_aunroll_x_in_c0_eni15378_2_tpl_1_q <= $unsigned(in_c0_eni15378_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_mul31_add40139_pop71_kernel_3mm13(BLACKBOX,110)@2
    // out out_feedback_stall_out_71@20000000
    kernel_3mm_i_llvm_fpga_pop_i32_mul31_add40139_pop71_0 thei_llvm_fpga_pop_i32_mul31_add40139_pop71_kernel_3mm13 (
        .in_data_in(redist27_sync_together129_aunroll_x_in_c0_eni15378_2_tpl_1_q),
        .in_dir(redist23_sync_together129_aunroll_x_in_c0_eni15378_1_tpl_1_q),
        .in_feedback_in_71(i_llvm_fpga_push_i32_mul31_add40139_push71_kernel_3mm14_out_feedback_out_71),
        .in_feedback_valid_in_71(i_llvm_fpga_push_i32_mul31_add40139_push71_kernel_3mm14_out_feedback_valid_out_71),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul31_add40139_pop71_kernel_3mm13_out_data_out),
        .out_feedback_stall_out_71(i_llvm_fpga_pop_i32_mul31_add40139_pop71_kernel_3mm13_out_feedback_stall_out_71),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist11_i_llvm_fpga_pop_i32_mul31_add40139_pop71_kernel_3mm13_out_data_out_1(DELAY,293)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pop_i32_mul31_add40139_pop71_kernel_3mm13_out_data_out_1_q <= '0;
        end
        else
        begin
            redist11_i_llvm_fpga_pop_i32_mul31_add40139_pop71_kernel_3mm13_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_mul31_add40139_pop71_kernel_3mm13_out_data_out);
        end
    end

    // i_add38_kernel_3mm15(ADD,86)@3
    assign i_add38_kernel_3mm15_a = {1'b0, redist12_i_llvm_fpga_pop_i32_k_1149_pop68_kernel_3mm12_out_data_out_1_q};
    assign i_add38_kernel_3mm15_b = {1'b0, redist11_i_llvm_fpga_pop_i32_mul31_add40139_pop71_kernel_3mm13_out_data_out_1_q};
    assign i_add38_kernel_3mm15_o = $unsigned(i_add38_kernel_3mm15_a) + $unsigned(i_add38_kernel_3mm15_b);
    assign i_add38_kernel_3mm15_q = i_add38_kernel_3mm15_o[32:0];

    // i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_b_tessel0_1(BITSELECT,262)@3
    assign i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_b_tessel0_1_b = $unsigned(i_add38_kernel_3mm15_q[31:0]);

    // redist3_i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_b_tessel0_1_b_2(DELAY,285)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_b_tessel0_1_b_2_delay_0 <= '0;
            redist3_i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_b_tessel0_1_b_2_q <= '0;
        end
        else
        begin
            redist3_i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_b_tessel0_1_b_2_delay_0 <= $unsigned(i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_b_tessel0_1_b);
            redist3_i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_b_tessel0_1_b_2_q <= redist3_i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_b_tessel0_1_b_2_delay_0;
        end
    end

    // i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,264)@5
    assign i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_b_tessel0_2_b, redist3_i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_b_tessel0_1_b_2_q, i_mptr_bitcast_index160_kernel_3mm0_c_i2_01_x_q};

    // valid_fanout_reg7(REG,167)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist42_sync_together129_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast15918155_kernel_3mm17(BLACKBOX,97)@5
    kernel_3mm_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast15918155_0 thei_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast15918155_kernel_3mm17 (
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_8_0(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast15918155_kernel_3mm17_out_dest_data_out_8_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,280)@5
    assign i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast15918155_kernel_3mm17_out_dest_data_out_8_0[59:0]);
    assign i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast15918155_kernel_3mm17_out_dest_data_out_8_0[63:60]);

    // i_mptr_bitcast_index160_kernel_3mm0_add_x_p1_of_2(ADD,244)@5 + 1
    assign i_mptr_bitcast_index160_kernel_3mm0_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b};
    assign i_mptr_bitcast_index160_kernel_3mm0_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index160_kernel_3mm0_add_x_p1_of_2_o <= 61'b0;
        end
        else
        begin
            i_mptr_bitcast_index160_kernel_3mm0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index160_kernel_3mm0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index160_kernel_3mm0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index160_kernel_3mm0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index160_kernel_3mm0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index160_kernel_3mm0_add_x_p1_of_2_q = i_mptr_bitcast_index160_kernel_3mm0_add_x_p1_of_2_o[59:0];

    // redist1_i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1(DELAY,283)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist1_i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= $unsigned(i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,260)@6
    assign i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist1_i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q};

    // i_mptr_bitcast_index160_kernel_3mm0_add_x_p2_of_2(ADD,245)@6 + 1
    assign i_mptr_bitcast_index160_kernel_3mm0_add_x_p2_of_2_cin = i_mptr_bitcast_index160_kernel_3mm0_add_x_p1_of_2_c;
    assign i_mptr_bitcast_index160_kernel_3mm0_add_x_p2_of_2_a = { {1'b0, i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mptr_bitcast_index160_kernel_3mm0_add_x_p2_of_2_b = { {1'b0, i_mptr_bitcast_index160_kernel_3mm0_add_x_BitSelect_for_b_BitJoin_for_c_q}, i_mptr_bitcast_index160_kernel_3mm0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index160_kernel_3mm0_add_x_p2_of_2_o <= 7'b0;
        end
        else
        begin
            i_mptr_bitcast_index160_kernel_3mm0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index160_kernel_3mm0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index160_kernel_3mm0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index160_kernel_3mm0_add_x_p2_of_2_q = i_mptr_bitcast_index160_kernel_3mm0_add_x_p2_of_2_o[5:1];

    // redist5_i_mptr_bitcast_index160_kernel_3mm0_add_x_p1_of_2_q_1(DELAY,287)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_mptr_bitcast_index160_kernel_3mm0_add_x_p1_of_2_q_1_q <= '0;
        end
        else
        begin
            redist5_i_mptr_bitcast_index160_kernel_3mm0_add_x_p1_of_2_q_1_q <= $unsigned(i_mptr_bitcast_index160_kernel_3mm0_add_x_p1_of_2_q);
        end
    end

    // i_mptr_bitcast_index160_kernel_3mm0_add_x_BitJoin_for_q(BITJOIN,246)@7
    assign i_mptr_bitcast_index160_kernel_3mm0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index160_kernel_3mm0_add_x_p2_of_2_q, redist5_i_mptr_bitcast_index160_kernel_3mm0_add_x_p1_of_2_q_1_q};

    // i_mptr_bitcast_index160_kernel_3mm0_dupName_0_trunc_sel_x(BITSELECT,22)@7
    assign i_mptr_bitcast_index160_kernel_3mm0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index160_kernel_3mm0_add_x_BitJoin_for_q_q[63:0];

    // redist21_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_data_out_6(DELAY,303)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_data_out_6_delay_0 <= '0;
            redist21_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_data_out_6_q <= '0;
        end
        else
        begin
            redist21_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_data_out_6_delay_0 <= $unsigned(redist20_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_data_out_4_q);
            redist21_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_data_out_6_q <= redist21_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_data_out_6_delay_0;
        end
    end

    // redist22_i_first_cleanup_xor79_kernel_3mm4_q_5(DELAY,304)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_first_cleanup_xor79_kernel_3mm4_q_5_delay_0 <= '0;
            redist22_i_first_cleanup_xor79_kernel_3mm4_q_5_delay_1 <= '0;
            redist22_i_first_cleanup_xor79_kernel_3mm4_q_5_delay_2 <= '0;
            redist22_i_first_cleanup_xor79_kernel_3mm4_q_5_delay_3 <= '0;
            redist22_i_first_cleanup_xor79_kernel_3mm4_q_5_q <= '0;
        end
        else
        begin
            redist22_i_first_cleanup_xor79_kernel_3mm4_q_5_delay_0 <= $unsigned(i_first_cleanup_xor79_kernel_3mm4_q);
            redist22_i_first_cleanup_xor79_kernel_3mm4_q_5_delay_1 <= redist22_i_first_cleanup_xor79_kernel_3mm4_q_5_delay_0;
            redist22_i_first_cleanup_xor79_kernel_3mm4_q_5_delay_2 <= redist22_i_first_cleanup_xor79_kernel_3mm4_q_5_delay_1;
            redist22_i_first_cleanup_xor79_kernel_3mm4_q_5_delay_3 <= redist22_i_first_cleanup_xor79_kernel_3mm4_q_5_delay_2;
            redist22_i_first_cleanup_xor79_kernel_3mm4_q_5_q <= redist22_i_first_cleanup_xor79_kernel_3mm4_q_5_delay_3;
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,40)@7
    assign out_c0_exi17411_0_tpl = GND_q;
    assign out_c0_exi17411_1_tpl = redist22_i_first_cleanup_xor79_kernel_3mm4_q_5_q;
    assign out_c0_exi17411_2_tpl = redist21_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_data_out_6_q;
    assign out_c0_exi17411_3_tpl = i_mptr_bitcast_index160_kernel_3mm0_dupName_0_trunc_sel_x_b;
    assign out_c0_exi17411_4_tpl = redist8_i_memdep_phi5_or_kernel_3mm23_q_5_q;
    assign out_c0_exi17411_5_tpl = i_mptr_bitcast_index162_kernel_3mm0_dupName_0_trunc_sel_x_b;
    assign out_c0_exi17411_6_tpl = redist9_i_masked82_kernel_3mm45_q_5_q;
    assign out_c0_exi17411_7_tpl = redist16_i_llvm_fpga_pop_i1_exitcond25141_pop72_kernel_3mm46_out_data_out_2_q;
    assign out_c0_exi17411_8_tpl = redist14_i_llvm_fpga_pop_i1_notcmp90143_pop73_kernel_3mm48_out_data_out_2_q;
    assign out_c0_exi17411_9_tpl = redist10_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index174161_pop76_kernel_3mm50_out_data_out_5_mem_q;
    assign out_c0_exi17411_10_tpl = redist17_i_llvm_fpga_pop_i1_exitcond22162_pop77_kernel_3mm52_out_data_out_2_q;
    assign out_c0_exi17411_11_tpl = redist15_i_llvm_fpga_pop_i1_notcmp85163_pop78_kernel_3mm54_out_data_out_2_q;
    assign out_c0_exi17411_12_tpl = redist26_sync_together129_aunroll_x_in_c0_eni15378_1_tpl_6_q;
    assign out_c0_exi17411_13_tpl = redist36_sync_together129_aunroll_x_in_c0_eni15378_11_tpl_6_mem_q;
    assign out_c0_exi17411_14_tpl = redist37_sync_together129_aunroll_x_in_c0_eni15378_12_tpl_6_q;
    assign out_c0_exi17411_15_tpl = redist38_sync_together129_aunroll_x_in_c0_eni15378_13_tpl_6_q;
    assign out_c0_exi17411_16_tpl = redist39_sync_together129_aunroll_x_in_c0_eni15378_14_tpl_6_q;
    assign out_c0_exi17411_17_tpl = redist40_sync_together129_aunroll_x_in_c0_eni15378_15_tpl_6_mem_q;
    assign out_o_valid = redist6_valid_fanout_reg0_q_2_q;
    assign out_unnamed_kernel_3mm1 = GND_q;

    // ext_sig_sync_out(GPOUT,85)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,156)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going73_kernel_3mm6_out_pipeline_valid_out;

endmodule
