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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body62_kernel_3mms_c0_enter46134_kernel_3mm0
// Created for function/kernel kernel_3mm
// SystemVerilog created on Tue Jun 13 01:45:41 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_i_sfc_logic_s_c0_in_for_body60000ter46134_kernel_3mm0 (
    output wire [0:0] out_c0_exi13479_0_tpl,
    output wire [31:0] out_c0_exi13479_1_tpl,
    output wire [31:0] out_c0_exi13479_2_tpl,
    output wire [63:0] out_c0_exi13479_3_tpl,
    output wire [0:0] out_c0_exi13479_4_tpl,
    output wire [0:0] out_c0_exi13479_5_tpl,
    output wire [0:0] out_c0_exi13479_6_tpl,
    output wire [0:0] out_c0_exi13479_7_tpl,
    output wire [0:0] out_c0_exi13479_8_tpl,
    output wire [0:0] out_c0_exi13479_9_tpl,
    output wire [31:0] out_c0_exi13479_10_tpl,
    output wire [0:0] out_c0_exi13479_11_tpl,
    output wire [0:0] out_c0_exi13479_12_tpl,
    output wire [0:0] out_c0_exi13479_13_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_kernel_3mm1,
    input wire [0:0] in_c0_eni5460_0_tpl,
    input wire [0:0] in_c0_eni5460_1_tpl,
    input wire [31:0] in_c0_eni5460_2_tpl,
    input wire [0:0] in_c0_eni5460_3_tpl,
    input wire [0:0] in_c0_eni5460_4_tpl,
    input wire [0:0] in_c0_eni5460_5_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_intel_reserved_ffwd_11_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next30_kernel_3mm15_sel_x_b;
    wire [31:0] bgTrunc_i_inc85_kernel_3mm17_sel_x_b;
    wire [63:0] i_mptr_bitcast_index178_kernel_3mm0_dupName_0_trunc_sel_x_b;
    wire [1:0] i_mptr_bitcast_index178_kernel_3mm0_c_i2_01_x_q;
    wire [31:0] c_i32_042_q;
    wire [31:0] c_i32_146_q;
    wire [4:0] c_i5_145_q;
    wire [4:0] c_i5_843_q;
    wire [32:0] i_add65_kernel_3mm5_a;
    wire [32:0] i_add65_kernel_3mm5_b;
    logic [32:0] i_add65_kernel_3mm5_o;
    wire [32:0] i_add65_kernel_3mm5_q;
    wire [5:0] i_fpga_indvars_iv_next30_kernel_3mm15_a;
    wire [5:0] i_fpga_indvars_iv_next30_kernel_3mm15_b;
    logic [5:0] i_fpga_indvars_iv_next30_kernel_3mm15_o;
    wire [5:0] i_fpga_indvars_iv_next30_kernel_3mm15_q;
    wire [32:0] i_inc85_kernel_3mm17_a;
    wire [32:0] i_inc85_kernel_3mm17_b;
    logic [32:0] i_inc85_kernel_3mm17_o;
    wire [32:0] i_inc85_kernel_3mm17_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast17718958_kernel_3mm7_out_dest_data_out_11_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond34149_pop49_kernel_3mm19_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond34149_pop49_kernel_3mm19_out_feedback_stall_out_49;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi9_pop30153_pop51_kernel_3mm23_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi9_pop30153_pop51_kernel_3mm23_out_feedback_stall_out_51;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp64151_pop50_kernel_3mm21_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp64151_pop50_kernel_3mm21_out_feedback_stall_out_50;
    wire [31:0] i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_feedback_stall_out_46;
    wire [31:0] i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_feedback_stall_out_48;
    wire [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv29_pop45_kernel_3mm9_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv29_pop45_kernel_3mm9_out_feedback_stall_out_45;
    wire [0:0] i_llvm_fpga_push_i1_exitcond34149_push49_kernel_3mm20_out_feedback_out_49;
    wire [0:0] i_llvm_fpga_push_i1_exitcond34149_push49_kernel_3mm20_out_feedback_valid_out_49;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi9_pop30153_push51_kernel_3mm24_out_feedback_out_51;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi9_pop30153_push51_kernel_3mm24_out_feedback_valid_out_51;
    wire [0:0] i_llvm_fpga_push_i1_notcmp64151_push50_kernel_3mm22_out_feedback_out_50;
    wire [0:0] i_llvm_fpga_push_i1_notcmp64151_push50_kernel_3mm22_out_feedback_valid_out_50;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond62_kernel_3mm14_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond62_kernel_3mm14_out_feedback_valid_out_5;
    wire [31:0] i_llvm_fpga_push_i32_j_2147_push46_kernel_3mm18_out_feedback_out_46;
    wire [0:0] i_llvm_fpga_push_i32_j_2147_push46_kernel_3mm18_out_feedback_valid_out_46;
    wire [31:0] i_llvm_fpga_push_i32_mul64_add44147_push48_kernel_3mm12_out_feedback_out_48;
    wire [0:0] i_llvm_fpga_push_i32_mul64_add44147_push48_kernel_3mm12_out_feedback_valid_out_48;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv29_push45_kernel_3mm16_out_feedback_out_45;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv29_push45_kernel_3mm16_out_feedback_valid_out_45;
    wire [0:0] i_notcmp59_kernel_3mm13_q;
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
    wire [0:0] i_exitcond31_kernel_3mm10_cmp_nsign_q;
    wire [60:0] i_mptr_bitcast_index178_kernel_3mm0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index178_kernel_3mm0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index178_kernel_3mm0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index178_kernel_3mm0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index178_kernel_3mm0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index178_kernel_3mm0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index178_kernel_3mm0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index178_kernel_3mm0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index178_kernel_3mm0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index178_kernel_3mm0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index178_kernel_3mm0_add_x_BitJoin_for_q_q;
    wire [4:0] i_mptr_bitcast_index178_kernel_3mm0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [31:0] i_mptr_bitcast_index178_kernel_3mm0_add_x_BitSelect_for_b_tessel0_1_b;
    wire [59:0] i_mptr_bitcast_index178_kernel_3mm0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [4:0] i_mptr_bitcast_index178_kernel_3mm0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [29:0] i_mptr_bitcast_index178_kernel_3mm0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in;
    wire [25:0] i_mptr_bitcast_index178_kernel_3mm0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index178_kernel_3mm0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_c;
    wire [59:0] i_mptr_bitcast_index178_kernel_3mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index178_kernel_3mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    reg [3:0] redist0_i_mptr_bitcast_index178_kernel_3mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q;
    reg [31:0] redist1_i_mptr_bitcast_index178_kernel_3mm0_add_x_BitSelect_for_b_tessel0_1_b_1_q;
    reg [59:0] redist2_i_mptr_bitcast_index178_kernel_3mm0_add_x_p1_of_2_q_1_q;
    reg [0:0] redist3_i_exitcond31_kernel_3mm10_cmp_nsign_q_1_q;
    reg [0:0] redist4_i_exitcond31_kernel_3mm10_cmp_nsign_q_5_q;
    reg [0:0] redist4_i_exitcond31_kernel_3mm10_cmp_nsign_q_5_delay_0;
    reg [0:0] redist4_i_exitcond31_kernel_3mm10_cmp_nsign_q_5_delay_1;
    reg [0:0] redist4_i_exitcond31_kernel_3mm10_cmp_nsign_q_5_delay_2;
    reg [31:0] redist5_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_1_q;
    reg [31:0] redist7_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_1_q;
    reg [0:0] redist9_sync_together65_aunroll_x_in_c0_eni5460_1_tpl_1_q;
    reg [0:0] redist10_sync_together65_aunroll_x_in_c0_eni5460_1_tpl_5_q;
    reg [0:0] redist10_sync_together65_aunroll_x_in_c0_eni5460_1_tpl_5_delay_0;
    reg [0:0] redist10_sync_together65_aunroll_x_in_c0_eni5460_1_tpl_5_delay_1;
    reg [0:0] redist10_sync_together65_aunroll_x_in_c0_eni5460_1_tpl_5_delay_2;
    reg [31:0] redist11_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_1_q;
    reg [0:0] redist13_sync_together65_aunroll_x_in_c0_eni5460_3_tpl_5_q;
    reg [0:0] redist13_sync_together65_aunroll_x_in_c0_eni5460_3_tpl_5_delay_0;
    reg [0:0] redist13_sync_together65_aunroll_x_in_c0_eni5460_3_tpl_5_delay_1;
    reg [0:0] redist13_sync_together65_aunroll_x_in_c0_eni5460_3_tpl_5_delay_2;
    reg [0:0] redist13_sync_together65_aunroll_x_in_c0_eni5460_3_tpl_5_delay_3;
    reg [0:0] redist14_sync_together65_aunroll_x_in_c0_eni5460_4_tpl_5_q;
    reg [0:0] redist14_sync_together65_aunroll_x_in_c0_eni5460_4_tpl_5_delay_0;
    reg [0:0] redist14_sync_together65_aunroll_x_in_c0_eni5460_4_tpl_5_delay_1;
    reg [0:0] redist14_sync_together65_aunroll_x_in_c0_eni5460_4_tpl_5_delay_2;
    reg [0:0] redist14_sync_together65_aunroll_x_in_c0_eni5460_4_tpl_5_delay_3;
    reg [0:0] redist15_sync_together65_aunroll_x_in_c0_eni5460_5_tpl_5_q;
    reg [0:0] redist15_sync_together65_aunroll_x_in_c0_eni5460_5_tpl_5_delay_0;
    reg [0:0] redist15_sync_together65_aunroll_x_in_c0_eni5460_5_tpl_5_delay_1;
    reg [0:0] redist15_sync_together65_aunroll_x_in_c0_eni5460_5_tpl_5_delay_2;
    reg [0:0] redist15_sync_together65_aunroll_x_in_c0_eni5460_5_tpl_5_delay_3;
    reg [0:0] redist16_sync_together65_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist16_sync_together65_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist17_sync_together65_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist17_sync_together65_aunroll_x_in_i_valid_4_delay_0;
    wire redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_mem_reset0;
    wire [31:0] redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_mem_ia;
    wire [0:0] redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_mem_aa;
    wire [0:0] redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_mem_ab;
    wire [31:0] redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_mem_iq;
    wire [31:0] redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_mem_q;
    wire [0:0] redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_rdcnt_q;
    (* preserve *) reg [0:0] redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_rdcnt_i;
    reg [0:0] redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_cmpReg_q;
    wire [0:0] redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_notEnable_q;
    wire [0:0] redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_nor_q;
    (* dont_merge *) reg [0:0] redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_sticky_ena_q;
    wire [0:0] redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_enaAnd_q;
    wire redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_mem_reset0;
    wire [31:0] redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_mem_ia;
    wire [0:0] redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_mem_aa;
    wire [0:0] redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_mem_ab;
    wire [31:0] redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_mem_iq;
    wire [31:0] redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_mem_q;
    wire [0:0] redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_rdcnt_q;
    (* preserve *) reg [0:0] redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_rdcnt_i;
    reg [0:0] redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_cmpReg_q;
    wire [0:0] redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_notEnable_q;
    wire [0:0] redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_nor_q;
    (* dont_merge *) reg [0:0] redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_sticky_ena_q;
    wire [0:0] redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_enaAnd_q;
    wire redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_mem_reset0;
    wire [31:0] redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_mem_ia;
    wire [1:0] redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_mem_aa;
    wire [1:0] redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_mem_ab;
    wire [31:0] redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_mem_iq;
    wire [31:0] redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_mem_q;
    wire [1:0] redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_rdcnt_i;
    (* preserve *) reg redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_rdcnt_eq;
    reg [1:0] redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_wraddr_q;
    wire [1:0] redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_mem_last_q;
    wire [0:0] redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_cmpReg_q;
    wire [0:0] redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_notEnable_q;
    wire [0:0] redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_sticky_ena_q;
    wire [0:0] redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist16_sync_together65_aunroll_x_in_i_valid_2(DELAY,127)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together65_aunroll_x_in_i_valid_2_delay_0 <= '0;
            redist16_sync_together65_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist16_sync_together65_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
            redist16_sync_together65_aunroll_x_in_i_valid_2_q <= redist16_sync_together65_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist17_sync_together65_aunroll_x_in_i_valid_4(DELAY,128)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together65_aunroll_x_in_i_valid_4_delay_0 <= '0;
            redist17_sync_together65_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist17_sync_together65_aunroll_x_in_i_valid_4_delay_0 <= $unsigned(redist16_sync_together65_aunroll_x_in_i_valid_2_q);
            redist17_sync_together65_aunroll_x_in_i_valid_4_q <= redist17_sync_together65_aunroll_x_in_i_valid_4_delay_0;
        end
    end

    // valid_fanout_reg0(REG,70)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist17_sync_together65_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist15_sync_together65_aunroll_x_in_c0_eni5460_5_tpl_5(DELAY,126)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together65_aunroll_x_in_c0_eni5460_5_tpl_5_delay_0 <= '0;
            redist15_sync_together65_aunroll_x_in_c0_eni5460_5_tpl_5_delay_1 <= '0;
            redist15_sync_together65_aunroll_x_in_c0_eni5460_5_tpl_5_delay_2 <= '0;
            redist15_sync_together65_aunroll_x_in_c0_eni5460_5_tpl_5_delay_3 <= '0;
            redist15_sync_together65_aunroll_x_in_c0_eni5460_5_tpl_5_q <= '0;
        end
        else
        begin
            redist15_sync_together65_aunroll_x_in_c0_eni5460_5_tpl_5_delay_0 <= $unsigned(in_c0_eni5460_5_tpl);
            redist15_sync_together65_aunroll_x_in_c0_eni5460_5_tpl_5_delay_1 <= redist15_sync_together65_aunroll_x_in_c0_eni5460_5_tpl_5_delay_0;
            redist15_sync_together65_aunroll_x_in_c0_eni5460_5_tpl_5_delay_2 <= redist15_sync_together65_aunroll_x_in_c0_eni5460_5_tpl_5_delay_1;
            redist15_sync_together65_aunroll_x_in_c0_eni5460_5_tpl_5_delay_3 <= redist15_sync_together65_aunroll_x_in_c0_eni5460_5_tpl_5_delay_2;
            redist15_sync_together65_aunroll_x_in_c0_eni5460_5_tpl_5_q <= redist15_sync_together65_aunroll_x_in_c0_eni5460_5_tpl_5_delay_3;
        end
    end

    // redist14_sync_together65_aunroll_x_in_c0_eni5460_4_tpl_5(DELAY,125)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together65_aunroll_x_in_c0_eni5460_4_tpl_5_delay_0 <= '0;
            redist14_sync_together65_aunroll_x_in_c0_eni5460_4_tpl_5_delay_1 <= '0;
            redist14_sync_together65_aunroll_x_in_c0_eni5460_4_tpl_5_delay_2 <= '0;
            redist14_sync_together65_aunroll_x_in_c0_eni5460_4_tpl_5_delay_3 <= '0;
            redist14_sync_together65_aunroll_x_in_c0_eni5460_4_tpl_5_q <= '0;
        end
        else
        begin
            redist14_sync_together65_aunroll_x_in_c0_eni5460_4_tpl_5_delay_0 <= $unsigned(in_c0_eni5460_4_tpl);
            redist14_sync_together65_aunroll_x_in_c0_eni5460_4_tpl_5_delay_1 <= redist14_sync_together65_aunroll_x_in_c0_eni5460_4_tpl_5_delay_0;
            redist14_sync_together65_aunroll_x_in_c0_eni5460_4_tpl_5_delay_2 <= redist14_sync_together65_aunroll_x_in_c0_eni5460_4_tpl_5_delay_1;
            redist14_sync_together65_aunroll_x_in_c0_eni5460_4_tpl_5_delay_3 <= redist14_sync_together65_aunroll_x_in_c0_eni5460_4_tpl_5_delay_2;
            redist14_sync_together65_aunroll_x_in_c0_eni5460_4_tpl_5_q <= redist14_sync_together65_aunroll_x_in_c0_eni5460_4_tpl_5_delay_3;
        end
    end

    // redist13_sync_together65_aunroll_x_in_c0_eni5460_3_tpl_5(DELAY,124)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together65_aunroll_x_in_c0_eni5460_3_tpl_5_delay_0 <= '0;
            redist13_sync_together65_aunroll_x_in_c0_eni5460_3_tpl_5_delay_1 <= '0;
            redist13_sync_together65_aunroll_x_in_c0_eni5460_3_tpl_5_delay_2 <= '0;
            redist13_sync_together65_aunroll_x_in_c0_eni5460_3_tpl_5_delay_3 <= '0;
            redist13_sync_together65_aunroll_x_in_c0_eni5460_3_tpl_5_q <= '0;
        end
        else
        begin
            redist13_sync_together65_aunroll_x_in_c0_eni5460_3_tpl_5_delay_0 <= $unsigned(in_c0_eni5460_3_tpl);
            redist13_sync_together65_aunroll_x_in_c0_eni5460_3_tpl_5_delay_1 <= redist13_sync_together65_aunroll_x_in_c0_eni5460_3_tpl_5_delay_0;
            redist13_sync_together65_aunroll_x_in_c0_eni5460_3_tpl_5_delay_2 <= redist13_sync_together65_aunroll_x_in_c0_eni5460_3_tpl_5_delay_1;
            redist13_sync_together65_aunroll_x_in_c0_eni5460_3_tpl_5_delay_3 <= redist13_sync_together65_aunroll_x_in_c0_eni5460_3_tpl_5_delay_2;
            redist13_sync_together65_aunroll_x_in_c0_eni5460_3_tpl_5_q <= redist13_sync_together65_aunroll_x_in_c0_eni5460_3_tpl_5_delay_3;
        end
    end

    // redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_notEnable(LOGICAL,151)
    assign redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_nor(LOGICAL,152)
    assign redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_nor_q = ~ (redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_notEnable_q | redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_sticky_ena_q);

    // redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_mem_last(CONSTANT,148)
    assign redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_mem_last_q = $unsigned(2'b01);

    // redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_cmp(LOGICAL,149)
    assign redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_cmp_q = $unsigned(redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_mem_last_q == redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_rdcnt_q ? 1'b1 : 1'b0);

    // redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_cmpReg(REG,150)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_cmpReg_q <= $unsigned(redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_cmp_q);
        end
    end

    // redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_sticky_ena(REG,153)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_nor_q == 1'b1)
        begin
            redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_sticky_ena_q <= $unsigned(redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_cmpReg_q);
        end
    end

    // redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_enaAnd(LOGICAL,154)
    assign redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_enaAnd_q = redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_sticky_ena_q & VCC_q;

    // redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_rdcnt(COUNTER,146)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_rdcnt_i <= 2'd0;
            redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_rdcnt_i == 2'd1)
            begin
                redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_rdcnt_eq <= 1'b0;
            end
            if (redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_rdcnt_eq == 1'b1)
            begin
                redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_rdcnt_i <= $unsigned(redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_rdcnt_i <= $unsigned(redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_rdcnt_q = redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_rdcnt_i[1:0];

    // redist11_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_1(DELAY,122)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_1_q <= '0;
        end
        else
        begin
            redist11_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_1_q <= $unsigned(in_c0_eni5460_2_tpl);
        end
    end

    // redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_wraddr(REG,147)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_wraddr_q <= $unsigned(redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_rdcnt_q);
        end
    end

    // redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_mem(DUALMEM,145)
    assign redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_mem_ia = $unsigned(redist11_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_1_q);
    assign redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_mem_aa = redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_wraddr_q;
    assign redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_mem_ab = redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_rdcnt_q;
    assign redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_mem_reset0 = ~ (resetn);
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
        .intended_device_family("Cyclone V")
    ) redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_mem_dmem (
        .clocken1(redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_mem_aa),
        .data_a(redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_mem_ab),
        .q_b(redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_mem_iq),
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
    assign redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_mem_q = redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_mem_iq[31:0];

    // redist9_sync_together65_aunroll_x_in_c0_eni5460_1_tpl_1(DELAY,120)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together65_aunroll_x_in_c0_eni5460_1_tpl_1_q <= '0;
        end
        else
        begin
            redist9_sync_together65_aunroll_x_in_c0_eni5460_1_tpl_1_q <= $unsigned(in_c0_eni5460_1_tpl);
        end
    end

    // redist10_sync_together65_aunroll_x_in_c0_eni5460_1_tpl_5(DELAY,121)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together65_aunroll_x_in_c0_eni5460_1_tpl_5_delay_0 <= '0;
            redist10_sync_together65_aunroll_x_in_c0_eni5460_1_tpl_5_delay_1 <= '0;
            redist10_sync_together65_aunroll_x_in_c0_eni5460_1_tpl_5_delay_2 <= '0;
            redist10_sync_together65_aunroll_x_in_c0_eni5460_1_tpl_5_q <= '0;
        end
        else
        begin
            redist10_sync_together65_aunroll_x_in_c0_eni5460_1_tpl_5_delay_0 <= $unsigned(redist9_sync_together65_aunroll_x_in_c0_eni5460_1_tpl_1_q);
            redist10_sync_together65_aunroll_x_in_c0_eni5460_1_tpl_5_delay_1 <= redist10_sync_together65_aunroll_x_in_c0_eni5460_1_tpl_5_delay_0;
            redist10_sync_together65_aunroll_x_in_c0_eni5460_1_tpl_5_delay_2 <= redist10_sync_together65_aunroll_x_in_c0_eni5460_1_tpl_5_delay_1;
            redist10_sync_together65_aunroll_x_in_c0_eni5460_1_tpl_5_q <= redist10_sync_together65_aunroll_x_in_c0_eni5460_1_tpl_5_delay_2;
        end
    end

    // valid_fanout_reg10(REG,80)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist17_sync_together65_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg11(REG,81)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist17_sync_together65_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi9_pop30153_push51_kernel_3mm24(BLACKBOX,54)@6
    // out out_feedback_out_51@20000000
    // out out_feedback_valid_out_51@20000000
    kernel_3mm_i_llvm_fpga_push_i1_memdep_phi9_pop30153_push51_0 thei_llvm_fpga_push_i1_memdep_phi9_pop30153_push51_kernel_3mm24 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi9_pop30153_pop51_kernel_3mm23_out_data_out),
        .in_exitcond31(redist4_i_exitcond31_kernel_3mm10_cmp_nsign_q_5_q),
        .in_feedback_stall_in_51(i_llvm_fpga_pop_i1_memdep_phi9_pop30153_pop51_kernel_3mm23_out_feedback_stall_out_51),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_51(i_llvm_fpga_push_i1_memdep_phi9_pop30153_push51_kernel_3mm24_out_feedback_out_51),
        .out_feedback_valid_out_51(i_llvm_fpga_push_i1_memdep_phi9_pop30153_push51_kernel_3mm24_out_feedback_valid_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi9_pop30153_pop51_kernel_3mm23(BLACKBOX,48)@6
    // out out_feedback_stall_out_51@20000000
    kernel_3mm_i_llvm_fpga_pop_i1_memdep_phi9_pop30153_pop51_0 thei_llvm_fpga_pop_i1_memdep_phi9_pop30153_pop51_kernel_3mm23 (
        .in_data_in(redist15_sync_together65_aunroll_x_in_c0_eni5460_5_tpl_5_q),
        .in_dir(redist10_sync_together65_aunroll_x_in_c0_eni5460_1_tpl_5_q),
        .in_feedback_in_51(i_llvm_fpga_push_i1_memdep_phi9_pop30153_push51_kernel_3mm24_out_feedback_out_51),
        .in_feedback_valid_in_51(i_llvm_fpga_push_i1_memdep_phi9_pop30153_push51_kernel_3mm24_out_feedback_valid_out_51),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi9_pop30153_pop51_kernel_3mm23_out_data_out),
        .out_feedback_stall_out_51(i_llvm_fpga_pop_i1_memdep_phi9_pop30153_pop51_kernel_3mm23_out_feedback_stall_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg8(REG,78)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist17_sync_together65_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg9(REG,79)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist17_sync_together65_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp64151_push50_kernel_3mm22(BLACKBOX,55)@6
    // out out_feedback_out_50@20000000
    // out out_feedback_valid_out_50@20000000
    kernel_3mm_i_llvm_fpga_push_i1_notcmp64151_push50_0 thei_llvm_fpga_push_i1_notcmp64151_push50_kernel_3mm22 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp64151_pop50_kernel_3mm21_out_data_out),
        .in_exitcond31(redist4_i_exitcond31_kernel_3mm10_cmp_nsign_q_5_q),
        .in_feedback_stall_in_50(i_llvm_fpga_pop_i1_notcmp64151_pop50_kernel_3mm21_out_feedback_stall_out_50),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_50(i_llvm_fpga_push_i1_notcmp64151_push50_kernel_3mm22_out_feedback_out_50),
        .out_feedback_valid_out_50(i_llvm_fpga_push_i1_notcmp64151_push50_kernel_3mm22_out_feedback_valid_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp64151_pop50_kernel_3mm21(BLACKBOX,49)@6
    // out out_feedback_stall_out_50@20000000
    kernel_3mm_i_llvm_fpga_pop_i1_notcmp64151_pop50_0 thei_llvm_fpga_pop_i1_notcmp64151_pop50_kernel_3mm21 (
        .in_data_in(redist14_sync_together65_aunroll_x_in_c0_eni5460_4_tpl_5_q),
        .in_dir(redist10_sync_together65_aunroll_x_in_c0_eni5460_1_tpl_5_q),
        .in_feedback_in_50(i_llvm_fpga_push_i1_notcmp64151_push50_kernel_3mm22_out_feedback_out_50),
        .in_feedback_valid_in_50(i_llvm_fpga_push_i1_notcmp64151_push50_kernel_3mm22_out_feedback_valid_out_50),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp64151_pop50_kernel_3mm21_out_data_out),
        .out_feedback_stall_out_50(i_llvm_fpga_pop_i1_notcmp64151_pop50_kernel_3mm21_out_feedback_stall_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg6(REG,76)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist17_sync_together65_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg7(REG,77)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist17_sync_together65_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_exitcond34149_push49_kernel_3mm20(BLACKBOX,53)@6
    // out out_feedback_out_49@20000000
    // out out_feedback_valid_out_49@20000000
    kernel_3mm_i_llvm_fpga_push_i1_exitcond34149_push49_0 thei_llvm_fpga_push_i1_exitcond34149_push49_kernel_3mm20 (
        .in_data_in(i_llvm_fpga_pop_i1_exitcond34149_pop49_kernel_3mm19_out_data_out),
        .in_exitcond31(redist4_i_exitcond31_kernel_3mm10_cmp_nsign_q_5_q),
        .in_feedback_stall_in_49(i_llvm_fpga_pop_i1_exitcond34149_pop49_kernel_3mm19_out_feedback_stall_out_49),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_49(i_llvm_fpga_push_i1_exitcond34149_push49_kernel_3mm20_out_feedback_out_49),
        .out_feedback_valid_out_49(i_llvm_fpga_push_i1_exitcond34149_push49_kernel_3mm20_out_feedback_valid_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_exitcond34149_pop49_kernel_3mm19(BLACKBOX,47)@6
    // out out_feedback_stall_out_49@20000000
    kernel_3mm_i_llvm_fpga_pop_i1_exitcond34149_pop49_0 thei_llvm_fpga_pop_i1_exitcond34149_pop49_kernel_3mm19 (
        .in_data_in(redist13_sync_together65_aunroll_x_in_c0_eni5460_3_tpl_5_q),
        .in_dir(redist10_sync_together65_aunroll_x_in_c0_eni5460_1_tpl_5_q),
        .in_feedback_in_49(i_llvm_fpga_push_i1_exitcond34149_push49_kernel_3mm20_out_feedback_out_49),
        .in_feedback_valid_in_49(i_llvm_fpga_push_i1_exitcond34149_push49_kernel_3mm20_out_feedback_valid_out_49),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond34149_pop49_kernel_3mm19_out_data_out),
        .out_feedback_stall_out_49(i_llvm_fpga_pop_i1_exitcond34149_pop49_kernel_3mm19_out_feedback_stall_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp59_kernel_3mm13(LOGICAL,60)@6
    assign i_notcmp59_kernel_3mm13_q = redist4_i_exitcond31_kernel_3mm10_cmp_nsign_q_5_q ^ VCC_q;

    // c_i5_145(CONSTANT,38)
    assign c_i5_145_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next30_kernel_3mm15(ADD,43)@1
    assign i_fpga_indvars_iv_next30_kernel_3mm15_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv29_pop45_kernel_3mm9_out_data_out};
    assign i_fpga_indvars_iv_next30_kernel_3mm15_b = {1'b0, c_i5_145_q};
    assign i_fpga_indvars_iv_next30_kernel_3mm15_o = $unsigned(i_fpga_indvars_iv_next30_kernel_3mm15_a) + $unsigned(i_fpga_indvars_iv_next30_kernel_3mm15_b);
    assign i_fpga_indvars_iv_next30_kernel_3mm15_q = i_fpga_indvars_iv_next30_kernel_3mm15_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next30_kernel_3mm15_sel_x(BITSELECT,3)@1
    assign bgTrunc_i_fpga_indvars_iv_next30_kernel_3mm15_sel_x_b = i_fpga_indvars_iv_next30_kernel_3mm15_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv29_push45_kernel_3mm16(BLACKBOX,59)@1
    // out out_feedback_out_45@20000000
    // out out_feedback_valid_out_45@20000000
    kernel_3mm_i_llvm_fpga_push_i5_fpga_indvars_iv29_push45_0 thei_llvm_fpga_push_i5_fpga_indvars_iv29_push45_kernel_3mm16 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next30_kernel_3mm15_sel_x_b),
        .in_exitcond31(i_exitcond31_kernel_3mm10_cmp_nsign_q),
        .in_feedback_stall_in_45(i_llvm_fpga_pop_i5_fpga_indvars_iv29_pop45_kernel_3mm9_out_feedback_stall_out_45),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_45(i_llvm_fpga_push_i5_fpga_indvars_iv29_push45_kernel_3mm16_out_feedback_out_45),
        .out_feedback_valid_out_45(i_llvm_fpga_push_i5_fpga_indvars_iv29_push45_kernel_3mm16_out_feedback_valid_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_843(CONSTANT,39)
    assign c_i5_843_q = $unsigned(5'b01000);

    // i_llvm_fpga_pop_i5_fpga_indvars_iv29_pop45_kernel_3mm9(BLACKBOX,52)@1
    // out out_feedback_stall_out_45@20000000
    kernel_3mm_i_llvm_fpga_pop_i5_fpga_indvars_iv29_pop45_0 thei_llvm_fpga_pop_i5_fpga_indvars_iv29_pop45_kernel_3mm9 (
        .in_data_in(c_i5_843_q),
        .in_dir(in_c0_eni5460_1_tpl),
        .in_feedback_in_45(i_llvm_fpga_push_i5_fpga_indvars_iv29_push45_kernel_3mm16_out_feedback_out_45),
        .in_feedback_valid_in_45(i_llvm_fpga_push_i5_fpga_indvars_iv29_push45_kernel_3mm16_out_feedback_valid_out_45),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i5_fpga_indvars_iv29_pop45_kernel_3mm9_out_data_out),
        .out_feedback_stall_out_45(i_llvm_fpga_pop_i5_fpga_indvars_iv29_pop45_kernel_3mm9_out_feedback_stall_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond31_kernel_3mm10_cmp_nsign(LOGICAL,87)@1
    assign i_exitcond31_kernel_3mm10_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i5_fpga_indvars_iv29_pop45_kernel_3mm9_out_data_out[4:4]));

    // redist3_i_exitcond31_kernel_3mm10_cmp_nsign_q_1(DELAY,114)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_exitcond31_kernel_3mm10_cmp_nsign_q_1_q <= '0;
        end
        else
        begin
            redist3_i_exitcond31_kernel_3mm10_cmp_nsign_q_1_q <= $unsigned(i_exitcond31_kernel_3mm10_cmp_nsign_q);
        end
    end

    // redist4_i_exitcond31_kernel_3mm10_cmp_nsign_q_5(DELAY,115)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_exitcond31_kernel_3mm10_cmp_nsign_q_5_delay_0 <= '0;
            redist4_i_exitcond31_kernel_3mm10_cmp_nsign_q_5_delay_1 <= '0;
            redist4_i_exitcond31_kernel_3mm10_cmp_nsign_q_5_delay_2 <= '0;
            redist4_i_exitcond31_kernel_3mm10_cmp_nsign_q_5_q <= '0;
        end
        else
        begin
            redist4_i_exitcond31_kernel_3mm10_cmp_nsign_q_5_delay_0 <= $unsigned(redist3_i_exitcond31_kernel_3mm10_cmp_nsign_q_1_q);
            redist4_i_exitcond31_kernel_3mm10_cmp_nsign_q_5_delay_1 <= redist4_i_exitcond31_kernel_3mm10_cmp_nsign_q_5_delay_0;
            redist4_i_exitcond31_kernel_3mm10_cmp_nsign_q_5_delay_2 <= redist4_i_exitcond31_kernel_3mm10_cmp_nsign_q_5_delay_1;
            redist4_i_exitcond31_kernel_3mm10_cmp_nsign_q_5_q <= redist4_i_exitcond31_kernel_3mm10_cmp_nsign_q_5_delay_2;
        end
    end

    // c_i32_042(CONSTANT,36)
    assign c_i32_042_q = $unsigned(32'b00000000000000000000000000000000);

    // i_mptr_bitcast_index178_kernel_3mm0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select(BITSELECT,109)
    assign i_mptr_bitcast_index178_kernel_3mm0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in = c_i32_042_q[29:0];
    assign i_mptr_bitcast_index178_kernel_3mm0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_b = i_mptr_bitcast_index178_kernel_3mm0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in[25:0];
    assign i_mptr_bitcast_index178_kernel_3mm0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_c = i_mptr_bitcast_index178_kernel_3mm0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in[29:26];

    // valid_fanout_reg2(REG,72)@1 + 1
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

    // valid_fanout_reg4(REG,74)@1 + 1
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

    // i_llvm_fpga_push_i32_mul64_add44147_push48_kernel_3mm12(BLACKBOX,58)@2
    // out out_feedback_out_48@20000000
    // out out_feedback_valid_out_48@20000000
    kernel_3mm_i_llvm_fpga_push_i32_mul64_add44147_push48_0 thei_llvm_fpga_push_i32_mul64_add44147_push48_kernel_3mm12 (
        .in_data_in(i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out),
        .in_exitcond31(redist3_i_exitcond31_kernel_3mm10_cmp_nsign_q_1_q),
        .in_feedback_stall_in_48(i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_feedback_stall_out_48),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_48(i_llvm_fpga_push_i32_mul64_add44147_push48_kernel_3mm12_out_feedback_out_48),
        .out_feedback_valid_out_48(i_llvm_fpga_push_i32_mul64_add44147_push48_kernel_3mm12_out_feedback_valid_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4(BLACKBOX,51)@2
    // out out_feedback_stall_out_48@20000000
    kernel_3mm_i_llvm_fpga_pop_i32_mul64_add44147_pop48_0 thei_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4 (
        .in_data_in(redist11_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_1_q),
        .in_dir(redist9_sync_together65_aunroll_x_in_c0_eni5460_1_tpl_1_q),
        .in_feedback_in_48(i_llvm_fpga_push_i32_mul64_add44147_push48_kernel_3mm12_out_feedback_out_48),
        .in_feedback_valid_in_48(i_llvm_fpga_push_i32_mul64_add44147_push48_kernel_3mm12_out_feedback_valid_out_48),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out),
        .out_feedback_stall_out_48(i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_feedback_stall_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_1(DELAY,116)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_1_q <= '0;
        end
        else
        begin
            redist5_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out);
        end
    end

    // valid_fanout_reg1(REG,71)@1 + 1
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

    // valid_fanout_reg5(REG,75)@1 + 1
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

    // c_i32_146(CONSTANT,37)
    assign c_i32_146_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc85_kernel_3mm17(ADD,44)@2
    assign i_inc85_kernel_3mm17_a = {1'b0, i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out};
    assign i_inc85_kernel_3mm17_b = {1'b0, c_i32_146_q};
    assign i_inc85_kernel_3mm17_o = $unsigned(i_inc85_kernel_3mm17_a) + $unsigned(i_inc85_kernel_3mm17_b);
    assign i_inc85_kernel_3mm17_q = i_inc85_kernel_3mm17_o[32:0];

    // bgTrunc_i_inc85_kernel_3mm17_sel_x(BITSELECT,4)@2
    assign bgTrunc_i_inc85_kernel_3mm17_sel_x_b = i_inc85_kernel_3mm17_q[31:0];

    // i_llvm_fpga_push_i32_j_2147_push46_kernel_3mm18(BLACKBOX,57)@2
    // out out_feedback_out_46@20000000
    // out out_feedback_valid_out_46@20000000
    kernel_3mm_i_llvm_fpga_push_i32_j_2147_push46_0 thei_llvm_fpga_push_i32_j_2147_push46_kernel_3mm18 (
        .in_data_in(bgTrunc_i_inc85_kernel_3mm17_sel_x_b),
        .in_exitcond31(redist3_i_exitcond31_kernel_3mm10_cmp_nsign_q_1_q),
        .in_feedback_stall_in_46(i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_feedback_stall_out_46),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_46(i_llvm_fpga_push_i32_j_2147_push46_kernel_3mm18_out_feedback_out_46),
        .out_feedback_valid_out_46(i_llvm_fpga_push_i32_j_2147_push46_kernel_3mm18_out_feedback_valid_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3(BLACKBOX,50)@2
    // out out_feedback_stall_out_46@20000000
    kernel_3mm_i_llvm_fpga_pop_i32_j_2147_pop46_0 thei_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3 (
        .in_data_in(c_i32_042_q),
        .in_dir(redist9_sync_together65_aunroll_x_in_c0_eni5460_1_tpl_1_q),
        .in_feedback_in_46(i_llvm_fpga_push_i32_j_2147_push46_kernel_3mm18_out_feedback_out_46),
        .in_feedback_valid_in_46(i_llvm_fpga_push_i32_j_2147_push46_kernel_3mm18_out_feedback_valid_out_46),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out),
        .out_feedback_stall_out_46(i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_feedback_stall_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_1(DELAY,118)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_1_q <= '0;
        end
        else
        begin
            redist7_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out);
        end
    end

    // i_add65_kernel_3mm5(ADD,41)@3
    assign i_add65_kernel_3mm5_a = {1'b0, redist7_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_1_q};
    assign i_add65_kernel_3mm5_b = {1'b0, redist5_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_1_q};
    assign i_add65_kernel_3mm5_o = $unsigned(i_add65_kernel_3mm5_a) + $unsigned(i_add65_kernel_3mm5_b);
    assign i_add65_kernel_3mm5_q = i_add65_kernel_3mm5_o[32:0];

    // i_mptr_bitcast_index178_kernel_3mm0_add_x_BitSelect_for_b_tessel0_1(BITSELECT,103)@3
    assign i_mptr_bitcast_index178_kernel_3mm0_add_x_BitSelect_for_b_tessel0_1_b = $unsigned(i_add65_kernel_3mm5_q[31:0]);

    // redist1_i_mptr_bitcast_index178_kernel_3mm0_add_x_BitSelect_for_b_tessel0_1_b_1(DELAY,112)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_mptr_bitcast_index178_kernel_3mm0_add_x_BitSelect_for_b_tessel0_1_b_1_q <= '0;
        end
        else
        begin
            redist1_i_mptr_bitcast_index178_kernel_3mm0_add_x_BitSelect_for_b_tessel0_1_b_1_q <= $unsigned(i_mptr_bitcast_index178_kernel_3mm0_add_x_BitSelect_for_b_tessel0_1_b);
        end
    end

    // i_mptr_bitcast_index178_kernel_3mm0_c_i2_01_x(CONSTANT,9)
    assign i_mptr_bitcast_index178_kernel_3mm0_c_i2_01_x_q = $unsigned(2'b00);

    // i_mptr_bitcast_index178_kernel_3mm0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,105)@4
    assign i_mptr_bitcast_index178_kernel_3mm0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index178_kernel_3mm0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_b, redist1_i_mptr_bitcast_index178_kernel_3mm0_add_x_BitSelect_for_b_tessel0_1_b_1_q, i_mptr_bitcast_index178_kernel_3mm0_c_i2_01_x_q};

    // valid_fanout_reg3(REG,73)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist16_sync_together65_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast17718958_kernel_3mm7(BLACKBOX,45)@4
    kernel_3mm_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast17718958_0 thei_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast17718958_kernel_3mm7 (
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_11_0(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast17718958_kernel_3mm7_out_dest_data_out_11_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mptr_bitcast_index178_kernel_3mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,110)@4
    assign i_mptr_bitcast_index178_kernel_3mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast17718958_kernel_3mm7_out_dest_data_out_11_0[59:0]);
    assign i_mptr_bitcast_index178_kernel_3mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast17718958_kernel_3mm7_out_dest_data_out_11_0[63:60]);

    // i_mptr_bitcast_index178_kernel_3mm0_add_x_p1_of_2(ADD,94)@4 + 1
    assign i_mptr_bitcast_index178_kernel_3mm0_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index178_kernel_3mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b};
    assign i_mptr_bitcast_index178_kernel_3mm0_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index178_kernel_3mm0_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index178_kernel_3mm0_add_x_p1_of_2_o <= 61'b0;
        end
        else
        begin
            i_mptr_bitcast_index178_kernel_3mm0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index178_kernel_3mm0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index178_kernel_3mm0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index178_kernel_3mm0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index178_kernel_3mm0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index178_kernel_3mm0_add_x_p1_of_2_q = i_mptr_bitcast_index178_kernel_3mm0_add_x_p1_of_2_o[59:0];

    // i_mptr_bitcast_index178_kernel_3mm0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,108)@5
    assign i_mptr_bitcast_index178_kernel_3mm0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_mptr_bitcast_index178_kernel_3mm0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_c};

    // redist0_i_mptr_bitcast_index178_kernel_3mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1(DELAY,111)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_mptr_bitcast_index178_kernel_3mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist0_i_mptr_bitcast_index178_kernel_3mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= $unsigned(i_mptr_bitcast_index178_kernel_3mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_mptr_bitcast_index178_kernel_3mm0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,101)@5
    assign i_mptr_bitcast_index178_kernel_3mm0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist0_i_mptr_bitcast_index178_kernel_3mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q};

    // i_mptr_bitcast_index178_kernel_3mm0_add_x_p2_of_2(ADD,95)@5 + 1
    assign i_mptr_bitcast_index178_kernel_3mm0_add_x_p2_of_2_cin = i_mptr_bitcast_index178_kernel_3mm0_add_x_p1_of_2_c;
    assign i_mptr_bitcast_index178_kernel_3mm0_add_x_p2_of_2_a = { {1'b0, i_mptr_bitcast_index178_kernel_3mm0_add_x_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mptr_bitcast_index178_kernel_3mm0_add_x_p2_of_2_b = { {1'b0, i_mptr_bitcast_index178_kernel_3mm0_add_x_BitSelect_for_b_BitJoin_for_c_q}, i_mptr_bitcast_index178_kernel_3mm0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index178_kernel_3mm0_add_x_p2_of_2_o <= 7'b0;
        end
        else
        begin
            i_mptr_bitcast_index178_kernel_3mm0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index178_kernel_3mm0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index178_kernel_3mm0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index178_kernel_3mm0_add_x_p2_of_2_q = i_mptr_bitcast_index178_kernel_3mm0_add_x_p2_of_2_o[5:1];

    // redist2_i_mptr_bitcast_index178_kernel_3mm0_add_x_p1_of_2_q_1(DELAY,113)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_mptr_bitcast_index178_kernel_3mm0_add_x_p1_of_2_q_1_q <= '0;
        end
        else
        begin
            redist2_i_mptr_bitcast_index178_kernel_3mm0_add_x_p1_of_2_q_1_q <= $unsigned(i_mptr_bitcast_index178_kernel_3mm0_add_x_p1_of_2_q);
        end
    end

    // i_mptr_bitcast_index178_kernel_3mm0_add_x_BitJoin_for_q(BITJOIN,96)@6
    assign i_mptr_bitcast_index178_kernel_3mm0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index178_kernel_3mm0_add_x_p2_of_2_q, redist2_i_mptr_bitcast_index178_kernel_3mm0_add_x_p1_of_2_q_1_q};

    // i_mptr_bitcast_index178_kernel_3mm0_dupName_0_trunc_sel_x(BITSELECT,6)@6
    assign i_mptr_bitcast_index178_kernel_3mm0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index178_kernel_3mm0_add_x_BitJoin_for_q_q[63:0];

    // redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_notEnable(LOGICAL,133)
    assign redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_nor(LOGICAL,134)
    assign redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_nor_q = ~ (redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_notEnable_q | redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_sticky_ena_q);

    // redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_cmpReg(REG,132)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_sticky_ena(REG,135)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_nor_q == 1'b1)
        begin
            redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_sticky_ena_q <= $unsigned(redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_cmpReg_q);
        end
    end

    // redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_enaAnd(LOGICAL,136)
    assign redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_enaAnd_q = redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_sticky_ena_q & VCC_q;

    // redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_rdcnt(COUNTER,130)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_rdcnt_i <= $unsigned(redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_rdcnt_q = redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_rdcnt_i[0:0];

    // redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_wraddr(REG,131)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_wraddr_q <= $unsigned(redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_rdcnt_q);
        end
    end

    // redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_mem(DUALMEM,129)
    assign redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_mem_ia = $unsigned(redist5_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_1_q);
    assign redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_mem_aa = redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_wraddr_q;
    assign redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_mem_ab = redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_rdcnt_q;
    assign redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
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
        .intended_device_family("Cyclone V")
    ) redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_mem_dmem (
        .clocken1(redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_mem_reset0),
        .clock1(clock),
        .address_a(redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_mem_aa),
        .data_a(redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_mem_ab),
        .q_b(redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_mem_iq),
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
    assign redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_mem_q = redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_mem_iq[31:0];

    // redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_notEnable(LOGICAL,141)
    assign redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_nor(LOGICAL,142)
    assign redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_nor_q = ~ (redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_notEnable_q | redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_sticky_ena_q);

    // redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_cmpReg(REG,140)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_sticky_ena(REG,143)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_nor_q == 1'b1)
        begin
            redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_sticky_ena_q <= $unsigned(redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_cmpReg_q);
        end
    end

    // redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_enaAnd(LOGICAL,144)
    assign redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_enaAnd_q = redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_sticky_ena_q & VCC_q;

    // redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_rdcnt(COUNTER,138)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_rdcnt_i <= $unsigned(redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_rdcnt_q = redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_rdcnt_i[0:0];

    // redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_wraddr(REG,139)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_wraddr_q <= $unsigned(redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_rdcnt_q);
        end
    end

    // redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_mem(DUALMEM,137)
    assign redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_mem_ia = $unsigned(redist7_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_1_q);
    assign redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_mem_aa = redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_wraddr_q;
    assign redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_mem_ab = redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_rdcnt_q;
    assign redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
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
        .intended_device_family("Cyclone V")
    ) redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_mem_dmem (
        .clocken1(redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_mem_reset0),
        .clock1(clock),
        .address_a(redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_mem_aa),
        .data_a(redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_mem_ab),
        .q_b(redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_mem_iq),
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
    assign redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_mem_q = redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_mem_iq[31:0];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,13)@6
    assign out_c0_exi13479_0_tpl = GND_q;
    assign out_c0_exi13479_1_tpl = redist8_i_llvm_fpga_pop_i32_j_2147_pop46_kernel_3mm3_out_data_out_4_mem_q;
    assign out_c0_exi13479_2_tpl = redist6_i_llvm_fpga_pop_i32_mul64_add44147_pop48_kernel_3mm4_out_data_out_4_mem_q;
    assign out_c0_exi13479_3_tpl = i_mptr_bitcast_index178_kernel_3mm0_dupName_0_trunc_sel_x_b;
    assign out_c0_exi13479_4_tpl = redist4_i_exitcond31_kernel_3mm10_cmp_nsign_q_5_q;
    assign out_c0_exi13479_5_tpl = i_notcmp59_kernel_3mm13_q;
    assign out_c0_exi13479_6_tpl = i_llvm_fpga_pop_i1_exitcond34149_pop49_kernel_3mm19_out_data_out;
    assign out_c0_exi13479_7_tpl = i_llvm_fpga_pop_i1_notcmp64151_pop50_kernel_3mm21_out_data_out;
    assign out_c0_exi13479_8_tpl = i_llvm_fpga_pop_i1_memdep_phi9_pop30153_pop51_kernel_3mm23_out_data_out;
    assign out_c0_exi13479_9_tpl = redist10_sync_together65_aunroll_x_in_c0_eni5460_1_tpl_5_q;
    assign out_c0_exi13479_10_tpl = redist12_sync_together65_aunroll_x_in_c0_eni5460_2_tpl_5_mem_q;
    assign out_c0_exi13479_11_tpl = redist13_sync_together65_aunroll_x_in_c0_eni5460_3_tpl_5_q;
    assign out_c0_exi13479_12_tpl = redist14_sync_together65_aunroll_x_in_c0_eni5460_4_tpl_5_q;
    assign out_c0_exi13479_13_tpl = redist15_sync_together65_aunroll_x_in_c0_eni5460_5_tpl_5_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_kernel_3mm1 = GND_q;

    // i_llvm_fpga_push_i1_notexitcond62_kernel_3mm14(BLACKBOX,56)@1
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    kernel_3mm_i_llvm_fpga_push_i1_notexitcond62_0 thei_llvm_fpga_push_i1_notexitcond62_kernel_3mm14 (
        .in_data_in(i_exitcond31_kernel_3mm10_cmp_nsign_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond62_kernel_3mm14_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond62_kernel_3mm14_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going61_kernel_3mm2(BLACKBOX,46)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    kernel_3mm_i_llvm_fpga_pipeline_keep_going61_0 thei_llvm_fpga_pipeline_keep_going61_kernel_3mm2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond62_kernel_3mm14_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond62_kernel_3mm14_out_feedback_valid_out_5),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,40)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,67)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_out_pipeline_valid_out;

endmodule
