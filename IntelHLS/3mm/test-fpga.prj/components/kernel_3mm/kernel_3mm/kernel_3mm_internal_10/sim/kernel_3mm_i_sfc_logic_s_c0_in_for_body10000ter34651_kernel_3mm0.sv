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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body15_kernel_3mms_c0_enter34651_kernel_3mm0
// Created for function/kernel kernel_3mm
// SystemVerilog created on Fri Apr  7 18:25:08 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_i_sfc_logic_s_c0_in_for_body10000ter34651_kernel_3mm0 (
    input wire [31:0] in_unnamed_kernel_3mm4_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm4_kernel_3mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_3mm4_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm4_kernel_3mm_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [31:0] in_unnamed_kernel_3mm5_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm5_kernel_3mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_3mm5_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm5_kernel_3mm_avm_readdatavalid,
    output wire [31:0] out_unnamed_kernel_3mm4_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm4_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm4_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm4_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount,
    output wire [31:0] out_unnamed_kernel_3mm5_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm5_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm5_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm5_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount,
    output wire [0:0] out_c0_exi26_0_tpl,
    output wire [0:0] out_c0_exi26_1_tpl,
    output wire [63:0] out_c0_exi26_2_tpl,
    output wire [63:0] out_c0_exi26_3_tpl,
    output wire [31:0] out_c0_exi26_4_tpl,
    output wire [0:0] out_c0_exi26_5_tpl,
    output wire [0:0] out_c0_exi26_6_tpl,
    output wire [0:0] out_c0_exi26_7_tpl,
    output wire [0:0] out_c0_exi26_8_tpl,
    output wire [0:0] out_c0_exi26_9_tpl,
    output wire [0:0] out_c0_exi26_10_tpl,
    output wire [31:0] out_c0_exi26_11_tpl,
    output wire [0:0] out_c0_exi26_12_tpl,
    output wire [63:0] out_c0_exi26_13_tpl,
    output wire [0:0] out_c0_exi26_14_tpl,
    output wire [0:0] out_c0_exi26_15_tpl,
    output wire [0:0] out_c0_exi26_16_tpl,
    output wire [0:0] out_c0_exi26_17_tpl,
    output wire [0:0] out_c0_exi26_18_tpl,
    output wire [0:0] out_c0_exi26_19_tpl,
    output wire [31:0] out_c0_exi26_20_tpl,
    output wire [0:0] out_c0_exi26_21_tpl,
    output wire [0:0] out_c0_exi26_22_tpl,
    output wire [0:0] out_c0_exi26_23_tpl,
    output wire [0:0] out_c0_exi26_24_tpl,
    output wire [0:0] out_c0_exi26_25_tpl,
    output wire [0:0] out_c0_exi26_26_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_kernel_3mm0,
    input wire [0:0] in_c0_eni25_0_tpl,
    input wire [0:0] in_c0_eni25_1_tpl,
    input wire [63:0] in_c0_eni25_2_tpl,
    input wire [63:0] in_c0_eni25_3_tpl,
    input wire [31:0] in_c0_eni25_4_tpl,
    input wire [0:0] in_c0_eni25_5_tpl,
    input wire [0:0] in_c0_eni25_6_tpl,
    input wire [0:0] in_c0_eni25_7_tpl,
    input wire [0:0] in_c0_eni25_8_tpl,
    input wire [0:0] in_c0_eni25_9_tpl,
    input wire [31:0] in_c0_eni25_10_tpl,
    input wire [0:0] in_c0_eni25_11_tpl,
    input wire [63:0] in_c0_eni25_12_tpl,
    input wire [0:0] in_c0_eni25_13_tpl,
    input wire [0:0] in_c0_eni25_14_tpl,
    input wire [0:0] in_c0_eni25_15_tpl,
    input wire [0:0] in_c0_eni25_16_tpl,
    input wire [0:0] in_c0_eni25_17_tpl,
    input wire [0:0] in_c0_eni25_18_tpl,
    input wire [31:0] in_c0_eni25_19_tpl,
    input wire [0:0] in_c0_eni25_20_tpl,
    input wire [0:0] in_c0_eni25_21_tpl,
    input wire [0:0] in_c0_eni25_22_tpl,
    input wire [0:0] in_c0_eni25_23_tpl,
    input wire [0:0] in_c0_eni25_24_tpl,
    input wire [0:0] in_c0_eni25_25_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] c_i2_195_q;
    wire [31:0] c_i32_097_q;
    wire [31:0] c_i32_198_q;
    wire [4:0] c_i5_1101_q;
    wire [4:0] c_i5_899_q;
    wire [63:0] c_kernel_3mm_A_local_pmem_q;
    wire [63:0] c_kernel_3mm_B_local_pmem_q;
    wire [32:0] i_add_kernel_3mm24_a;
    wire [32:0] i_add_kernel_3mm24_b;
    logic [32:0] i_add_kernel_3mm24_o;
    wire [32:0] i_add_kernel_3mm24_q;
    wire [1:0] i_arrayidx192_kernel_3mm16_vt_const_1_q;
    wire [63:0] i_arrayidx192_kernel_3mm16_vt_join_q;
    wire [61:0] i_arrayidx192_kernel_3mm16_vt_select_63_b;
    wire [63:0] i_arrayidx233_kernel_3mm20_vt_join_q;
    wire [61:0] i_arrayidx233_kernel_3mm20_vt_select_63_b;
    wire [1:0] i_cleanups_shl60_kernel_3mm5_vt_join_q;
    wire [0:0] i_cleanups_shl60_kernel_3mm5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor62_kernel_3mm4_q;
    wire [5:0] i_fpga_indvars_iv_next_kernel_3mm36_a;
    wire [5:0] i_fpga_indvars_iv_next_kernel_3mm36_b;
    logic [5:0] i_fpga_indvars_iv_next_kernel_3mm36_o;
    wire [5:0] i_fpga_indvars_iv_next_kernel_3mm36_q;
    wire [63:0] i_idxprom18_kernel_3mm13_vt_join_q;
    wire [31:0] i_idxprom18_kernel_3mm13_vt_select_31_b;
    wire [32:0] i_inc_kernel_3mm26_a;
    wire [32:0] i_inc_kernel_3mm26_b;
    logic [32:0] i_inc_kernel_3mm26_o;
    wire [32:0] i_inc_kernel_3mm26_q;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm17_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm17_out_unnamed_kernel_3mm4_kernel_3mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm17_out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm17_out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm17_out_unnamed_kernel_3mm4_kernel_3mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm17_out_unnamed_kernel_3mm4_kernel_3mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm17_out_unnamed_kernel_3mm4_kernel_3mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm17_out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm21_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm21_out_unnamed_kernel_3mm5_kernel_3mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm21_out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm21_out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm21_out_unnamed_kernel_3mm5_kernel_3mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm21_out_unnamed_kernel_3mm5_kernel_3mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm21_out_unnamed_kernel_3mm5_kernel_3mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm21_out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_forked8185_pop51_kernel_3mm39_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_forked8185_pop51_kernel_3mm39_out_feedback_stall_out_51;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1893_pop53_kernel_3mm43_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1893_pop53_kernel_3mm43_out_feedback_stall_out_53;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop1997_pop54_kernel_3mm45_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop1997_pop54_kernel_3mm45_out_feedback_stall_out_54;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi5_pop20101_pop55_kernel_3mm47_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi5_pop20101_pop55_kernel_3mm47_out_feedback_stall_out_55;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop1789_pop52_kernel_3mm41_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop1789_pop52_kernel_3mm41_out_feedback_stall_out_52;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp68124_pop61_kernel_3mm55_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp68124_pop61_kernel_3mm55_out_feedback_stall_out_61;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp73112_pop57_kernel_3mm51_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp73112_pop57_kernel_3mm51_out_feedback_stall_out_57;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups59_pop50_kernel_3mm2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups59_pop50_kernel_3mm2_out_feedback_stall_out_50;
    wire [1:0] i_llvm_fpga_pop_i2_initerations54_pop49_kernel_3mm7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations54_pop49_kernel_3mm7_out_feedback_stall_out_49;
    wire [31:0] i_llvm_fpga_pop_i32_i_060_pop23109_pop56_kernel_3mm49_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_060_pop23109_pop56_kernel_3mm49_out_feedback_stall_out_56;
    wire [31:0] i_llvm_fpga_pop_i32_k_057_pop48_kernel_3mm12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k_057_pop48_kernel_3mm12_out_feedback_stall_out_48;
    wire [31:0] i_llvm_fpga_pop_i32_tmp_058_pop47_kernel_3mm23_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_tmp_058_pop47_kernel_3mm23_out_feedback_stall_out_47;
    wire [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv_pop46_kernel_3mm28_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv_pop46_kernel_3mm28_out_feedback_stall_out_46;
    wire [63:0] i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_feedback_stall_out_59;
    wire [63:0] i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_feedback_stall_out_58;
    wire [63:0] i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_feedback_stall_out_60;
    wire [0:0] i_llvm_fpga_push_i1_forked8185_push51_kernel_3mm40_out_feedback_out_51;
    wire [0:0] i_llvm_fpga_push_i1_forked8185_push51_kernel_3mm40_out_feedback_valid_out_51;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration58_kernel_3mm11_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration58_kernel_3mm11_out_feedback_valid_out_9;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1893_push53_kernel_3mm44_out_feedback_out_53;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1893_push53_kernel_3mm44_out_feedback_valid_out_53;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1997_push54_kernel_3mm46_out_feedback_out_54;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1997_push54_kernel_3mm46_out_feedback_valid_out_54;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi5_pop20101_push55_kernel_3mm48_out_feedback_out_55;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi5_pop20101_push55_kernel_3mm48_out_feedback_valid_out_55;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1789_push52_kernel_3mm42_out_feedback_out_52;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1789_push52_kernel_3mm42_out_feedback_valid_out_52;
    wire [0:0] i_llvm_fpga_push_i1_notcmp68124_push61_kernel_3mm56_out_feedback_out_61;
    wire [0:0] i_llvm_fpga_push_i1_notcmp68124_push61_kernel_3mm56_out_feedback_valid_out_61;
    wire [0:0] i_llvm_fpga_push_i1_notcmp73112_push57_kernel_3mm52_out_feedback_out_57;
    wire [0:0] i_llvm_fpga_push_i1_notcmp73112_push57_kernel_3mm52_out_feedback_valid_out_57;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond66_kernel_3mm32_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond66_kernel_3mm32_out_feedback_valid_out_10;
    wire [7:0] i_llvm_fpga_push_i2_cleanups59_push50_kernel_3mm35_out_feedback_out_50;
    wire [0:0] i_llvm_fpga_push_i2_cleanups59_push50_kernel_3mm35_out_feedback_valid_out_50;
    wire [7:0] i_llvm_fpga_push_i2_initerations54_push49_kernel_3mm9_out_feedback_out_49;
    wire [0:0] i_llvm_fpga_push_i2_initerations54_push49_kernel_3mm9_out_feedback_valid_out_49;
    wire [31:0] i_llvm_fpga_push_i32_i_060_pop23109_push56_kernel_3mm50_out_feedback_out_56;
    wire [0:0] i_llvm_fpga_push_i32_i_060_pop23109_push56_kernel_3mm50_out_feedback_valid_out_56;
    wire [31:0] i_llvm_fpga_push_i32_k_057_push48_kernel_3mm27_out_feedback_out_48;
    wire [0:0] i_llvm_fpga_push_i32_k_057_push48_kernel_3mm27_out_feedback_valid_out_48;
    wire [31:0] i_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm25_out_feedback_out_47;
    wire [0:0] i_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm25_out_feedback_valid_out_47;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm37_out_feedback_out_46;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm37_out_feedback_valid_out_46;
    wire [63:0] i_llvm_fpga_push_i64_idxprom11121_push59_kernel_3mm19_out_feedback_out_59;
    wire [0:0] i_llvm_fpga_push_i64_idxprom11121_push59_kernel_3mm19_out_feedback_valid_out_59;
    wire [63:0] i_llvm_fpga_push_i64_idxprom119_push58_kernel_3mm15_out_feedback_out_58;
    wire [0:0] i_llvm_fpga_push_i64_idxprom119_push58_kernel_3mm15_out_feedback_valid_out_58;
    wire [63:0] i_llvm_fpga_push_p68i32_arrayidx121123_push60_kernel_3mm54_out_feedback_out_60;
    wire [0:0] i_llvm_fpga_push_p68i32_arrayidx121123_push60_kernel_3mm54_out_feedback_valid_out_60;
    wire [0:0] i_masked65_kernel_3mm38_qi;
    reg [0:0] i_masked65_kernel_3mm38_q;
    wire [0:0] i_next_cleanups64_kernel_3mm34_s;
    reg [1:0] i_next_cleanups64_kernel_3mm34_q;
    wire [1:0] i_next_initerations55_kernel_3mm8_vt_join_q;
    wire [0:0] i_next_initerations55_kernel_3mm8_vt_select_0_b;
    wire [0:0] i_notcmp52_kernel_3mm31_q;
    wire [0:0] i_or63_kernel_3mm33_q;
    wire [31:0] bgTrunc_i_add_kernel_3mm24_sel_x_b;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next_kernel_3mm36_sel_x_b;
    wire [31:0] bgTrunc_i_inc_kernel_3mm26_sel_x_b;
    wire [63:0] bgTrunc_i_mul_kernel_3mm22_sel_x_in;
    wire [31:0] bgTrunc_i_mul_kernel_3mm22_sel_x_b;
    wire [9:0] i_arrayidx192_kernel_3mm0_add_x_a;
    wire [9:0] i_arrayidx192_kernel_3mm0_add_x_b;
    logic [9:0] i_arrayidx192_kernel_3mm0_add_x_o;
    wire [9:0] i_arrayidx192_kernel_3mm0_add_x_q;
    wire [63:0] i_arrayidx192_kernel_3mm0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx192_kernel_3mm0_narrow_x_b;
    wire [8:0] i_arrayidx192_kernel_3mm0_shift_join_x_q;
    wire [9:0] i_arrayidx192_kernel_3mm0_dupName_0_add_x_a;
    wire [9:0] i_arrayidx192_kernel_3mm0_dupName_0_add_x_b;
    logic [9:0] i_arrayidx192_kernel_3mm0_dupName_0_add_x_o;
    wire [9:0] i_arrayidx192_kernel_3mm0_dupName_0_add_x_q;
    wire [17:0] i_arrayidx192_kernel_3mm0_mult_extender_x_q;
    wire [2:0] i_arrayidx192_kernel_3mm0_mult_multconst_x_q;
    wire [8:0] i_arrayidx192_kernel_3mm0_dupName_0_trunc_sel_x_b;
    wire [8:0] i_arrayidx192_kernel_3mm0_dupName_1_trunc_sel_x_b;
    wire [8:0] i_arrayidx192_kernel_3mm0_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx192_kernel_3mm0_dupName_3_trunc_sel_x_b;
    wire [8:0] i_arrayidx192_kernel_3mm0_dupName_5_trunc_sel_x_b;
    wire [9:0] i_arrayidx233_kernel_3mm0_add_x_a;
    wire [9:0] i_arrayidx233_kernel_3mm0_add_x_b;
    logic [9:0] i_arrayidx233_kernel_3mm0_add_x_o;
    wire [9:0] i_arrayidx233_kernel_3mm0_add_x_q;
    wire [63:0] i_arrayidx233_kernel_3mm0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx233_kernel_3mm0_narrow_x_b;
    wire [8:0] i_arrayidx233_kernel_3mm0_shift_join_x_q;
    wire [9:0] i_arrayidx233_kernel_3mm0_dupName_0_add_x_a;
    wire [9:0] i_arrayidx233_kernel_3mm0_dupName_0_add_x_b;
    logic [9:0] i_arrayidx233_kernel_3mm0_dupName_0_add_x_o;
    wire [9:0] i_arrayidx233_kernel_3mm0_dupName_0_add_x_q;
    wire [17:0] i_arrayidx233_kernel_3mm0_mult_extender_x_q;
    wire [8:0] i_arrayidx233_kernel_3mm0_dupName_1_trunc_sel_x_b;
    wire [8:0] i_arrayidx233_kernel_3mm0_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx233_kernel_3mm0_dupName_3_trunc_sel_x_b;
    wire [8:0] i_arrayidx233_kernel_3mm0_dupName_5_trunc_sel_x_b;
    wire [0:0] i_first_cleanup61_kernel_3mm3_sel_x_b;
    wire [63:0] i_idxprom18_kernel_3mm13_sel_x_b;
    wire [0:0] i_last_initeration57_kernel_3mm10_sel_x_b;
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
    (* dont_merge *) reg [0:0] valid_fanout_reg26_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg27_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg28_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg29_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg30_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg31_q;
    wire [0:0] i_exitcond_kernel_3mm29_cmp_nsign_q;
    wire [63:0] i_mul_kernel_3mm22_sums_join_0_q;
    wire [50:0] i_mul_kernel_3mm22_sums_align_1_q;
    wire [50:0] i_mul_kernel_3mm22_sums_align_1_qint;
    wire [64:0] i_mul_kernel_3mm22_sums_result_add_0_0_a;
    wire [64:0] i_mul_kernel_3mm22_sums_result_add_0_0_b;
    logic [64:0] i_mul_kernel_3mm22_sums_result_add_0_0_o;
    wire [64:0] i_mul_kernel_3mm22_sums_result_add_0_0_q;
    wire [9:0] addsumAHighB_uid260_i_arrayidx192_kernel_3mm0_mult_x_a;
    wire [9:0] addsumAHighB_uid260_i_arrayidx192_kernel_3mm0_mult_x_b;
    logic [9:0] addsumAHighB_uid260_i_arrayidx192_kernel_3mm0_mult_x_o;
    wire [9:0] addsumAHighB_uid260_i_arrayidx192_kernel_3mm0_mult_x_q;
    wire [11:0] add_uid261_i_arrayidx192_kernel_3mm0_mult_x_q;
    wire [14:0] sR_mergedSignalTM_uid266_i_arrayidx192_kernel_3mm0_mult_x_q;
    wire [1:0] lowRangeB_uid304_i_arrayidx233_kernel_3mm0_mult_x_in;
    wire [1:0] lowRangeB_uid304_i_arrayidx233_kernel_3mm0_mult_x_b;
    wire [6:0] highBBits_uid305_i_arrayidx233_kernel_3mm0_mult_x_b;
    wire [9:0] addsumAHighB_uid306_i_arrayidx233_kernel_3mm0_mult_x_a;
    wire [9:0] addsumAHighB_uid306_i_arrayidx233_kernel_3mm0_mult_x_b;
    logic [9:0] addsumAHighB_uid306_i_arrayidx233_kernel_3mm0_mult_x_o;
    wire [9:0] addsumAHighB_uid306_i_arrayidx233_kernel_3mm0_mult_x_q;
    wire [11:0] add_uid307_i_arrayidx233_kernel_3mm0_mult_x_q;
    wire [14:0] sR_mergedSignalTM_uid312_i_arrayidx233_kernel_3mm0_mult_x_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid346_i_cleanups_shl60_kernel_3mm0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid346_i_cleanups_shl60_kernel_3mm0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid347_i_cleanups_shl60_kernel_3mm0_shift_x_q;
    wire [0:0] leftShiftStage0_uid349_i_cleanups_shl60_kernel_3mm0_shift_x_s;
    reg [1:0] leftShiftStage0_uid349_i_cleanups_shl60_kernel_3mm0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid353_i_next_initerations55_kernel_3mm0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid355_i_next_initerations55_kernel_3mm0_shift_x_q;
    wire [0:0] rightShiftStage0_uid357_i_next_initerations55_kernel_3mm0_shift_x_s;
    reg [1:0] rightShiftStage0_uid357_i_next_initerations55_kernel_3mm0_shift_x_q;
    wire i_mul_kernel_3mm22_im0_cma_reset;
    wire [13:0] i_mul_kernel_3mm22_im0_cma_a0;
    wire [13:0] i_mul_kernel_3mm22_im0_cma_c0;
    wire [27:0] i_mul_kernel_3mm22_im0_cma_s0;
    wire [27:0] i_mul_kernel_3mm22_im0_cma_qq;
    wire [27:0] i_mul_kernel_3mm22_im0_cma_q;
    wire i_mul_kernel_3mm22_im0_cma_ena0;
    wire i_mul_kernel_3mm22_im0_cma_ena1;
    wire i_mul_kernel_3mm22_im0_cma_ena2;
    wire i_mul_kernel_3mm22_im8_cma_reset;
    wire [17:0] i_mul_kernel_3mm22_im8_cma_a0;
    wire [17:0] i_mul_kernel_3mm22_im8_cma_c0;
    wire [35:0] i_mul_kernel_3mm22_im8_cma_s0;
    wire [35:0] i_mul_kernel_3mm22_im8_cma_qq;
    wire [35:0] i_mul_kernel_3mm22_im8_cma_q;
    wire i_mul_kernel_3mm22_im8_cma_ena0;
    wire i_mul_kernel_3mm22_im8_cma_ena1;
    wire i_mul_kernel_3mm22_im8_cma_ena2;
    wire i_mul_kernel_3mm22_ma3_cma_reset;
    wire [13:0] i_mul_kernel_3mm22_ma3_cma_a0;
    wire [17:0] i_mul_kernel_3mm22_ma3_cma_c0;
    wire [13:0] i_mul_kernel_3mm22_ma3_cma_a1;
    wire [17:0] i_mul_kernel_3mm22_ma3_cma_c1;
    wire [32:0] i_mul_kernel_3mm22_ma3_cma_s0;
    wire [32:0] i_mul_kernel_3mm22_ma3_cma_qq;
    wire [32:0] i_mul_kernel_3mm22_ma3_cma_q;
    wire i_mul_kernel_3mm22_ma3_cma_ena0;
    wire i_mul_kernel_3mm22_ma3_cma_ena1;
    wire i_mul_kernel_3mm22_ma3_cma_ena2;
    wire [54:0] i_arrayidx192_kernel_3mm0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx192_kernel_3mm0_upper_bits_x_merged_bit_select_c;
    wire [54:0] i_arrayidx233_kernel_3mm0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx233_kernel_3mm0_upper_bits_x_merged_bit_select_c;
    wire [13:0] i_mul_kernel_3mm22_bs2_merged_bit_select_b;
    wire [17:0] i_mul_kernel_3mm22_bs2_merged_bit_select_c;
    wire [13:0] i_mul_kernel_3mm22_bs1_merged_bit_select_b;
    wire [17:0] i_mul_kernel_3mm22_bs1_merged_bit_select_c;
    wire [1:0] lowRangeB_uid258_i_arrayidx192_kernel_3mm0_mult_x_merged_bit_select_b;
    wire [6:0] lowRangeB_uid258_i_arrayidx192_kernel_3mm0_mult_x_merged_bit_select_c;
    reg [0:0] redist0_sync_together141_aunroll_x_in_c0_eni25_1_tpl_1_q;
    reg [0:0] redist1_sync_together141_aunroll_x_in_c0_eni25_1_tpl_2_q;
    reg [0:0] redist2_sync_together141_aunroll_x_in_c0_eni25_1_tpl_9_q;
    reg [63:0] redist3_sync_together141_aunroll_x_in_c0_eni25_2_tpl_1_q;
    reg [63:0] redist4_sync_together141_aunroll_x_in_c0_eni25_3_tpl_2_q;
    reg [63:0] redist4_sync_together141_aunroll_x_in_c0_eni25_3_tpl_2_delay_0;
    reg [0:0] redist6_sync_together141_aunroll_x_in_c0_eni25_5_tpl_9_q;
    reg [0:0] redist7_sync_together141_aunroll_x_in_c0_eni25_6_tpl_9_q;
    reg [0:0] redist8_sync_together141_aunroll_x_in_c0_eni25_7_tpl_9_q;
    reg [0:0] redist9_sync_together141_aunroll_x_in_c0_eni25_8_tpl_9_q;
    reg [0:0] redist10_sync_together141_aunroll_x_in_c0_eni25_9_tpl_9_q;
    reg [0:0] redist12_sync_together141_aunroll_x_in_c0_eni25_11_tpl_1_q;
    reg [63:0] redist13_sync_together141_aunroll_x_in_c0_eni25_12_tpl_1_q;
    reg [0:0] redist14_sync_together141_aunroll_x_in_c0_eni25_13_tpl_1_q;
    reg [0:0] redist15_sync_together141_aunroll_x_in_c0_eni25_14_tpl_10_q;
    reg [0:0] redist16_sync_together141_aunroll_x_in_c0_eni25_15_tpl_10_q;
    reg [0:0] redist17_sync_together141_aunroll_x_in_c0_eni25_16_tpl_10_q;
    reg [0:0] redist18_sync_together141_aunroll_x_in_c0_eni25_17_tpl_10_q;
    reg [0:0] redist19_sync_together141_aunroll_x_in_c0_eni25_18_tpl_10_q;
    reg [0:0] redist21_sync_together141_aunroll_x_in_c0_eni25_20_tpl_10_q;
    reg [0:0] redist22_sync_together141_aunroll_x_in_c0_eni25_21_tpl_10_q;
    reg [0:0] redist23_sync_together141_aunroll_x_in_c0_eni25_22_tpl_10_q;
    reg [0:0] redist24_sync_together141_aunroll_x_in_c0_eni25_23_tpl_10_q;
    reg [0:0] redist25_sync_together141_aunroll_x_in_c0_eni25_24_tpl_10_q;
    reg [0:0] redist26_sync_together141_aunroll_x_in_c0_eni25_25_tpl_10_q;
    reg [0:0] redist27_sync_together141_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist28_sync_together141_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist29_sync_together141_aunroll_x_in_i_valid_8_q;
    reg [0:0] redist30_sync_together141_aunroll_x_in_i_valid_9_q;
    reg [8:0] redist31_i_arrayidx233_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q;
    reg [8:0] redist32_i_arrayidx192_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q;
    reg [6:0] redist33_i_arrayidx192_kernel_3mm0_narrow_x_b_1_q;
    reg [31:0] redist34_bgTrunc_i_mul_kernel_3mm22_sel_x_b_1_q;
    reg [0:0] redist35_i_masked65_kernel_3mm38_q_9_q;
    reg [63:0] redist36_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_1_q;
    reg [63:0] redist39_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_1_q;
    reg [31:0] redist41_i_llvm_fpga_pop_i32_tmp_058_pop47_kernel_3mm23_out_data_out_1_q;
    reg [31:0] redist42_i_llvm_fpga_pop_i32_i_060_pop23109_pop56_kernel_3mm49_out_data_out_1_q;
    reg [0:0] redist43_i_llvm_fpga_pop_i1_notcmp73112_pop57_kernel_3mm51_out_data_out_9_q;
    reg [0:0] redist44_i_llvm_fpga_pop_i1_notcmp68124_pop61_kernel_3mm55_out_data_out_9_q;
    reg [0:0] redist45_i_llvm_fpga_pop_i1_memdep_phi_pop1789_pop52_kernel_3mm41_out_data_out_1_q;
    reg [0:0] redist46_i_llvm_fpga_pop_i1_memdep_phi5_pop20101_pop55_kernel_3mm47_out_data_out_1_q;
    reg [0:0] redist47_i_llvm_fpga_pop_i1_memdep_phi3_pop1997_pop54_kernel_3mm45_out_data_out_1_q;
    reg [0:0] redist48_i_llvm_fpga_pop_i1_memdep_phi2_pop1893_pop53_kernel_3mm43_out_data_out_1_q;
    reg [0:0] redist49_i_llvm_fpga_pop_i1_forked8185_pop51_kernel_3mm39_out_data_out_1_q;
    reg [0:0] redist50_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_data_out_1_q;
    reg [0:0] redist51_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_data_out_2_q;
    reg [0:0] redist52_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_data_out_3_q;
    reg [0:0] redist53_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_data_out_10_q;
    reg [0:0] redist54_i_first_cleanup_xor62_kernel_3mm4_q_1_q;
    wire redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_mem_reset0;
    wire [31:0] redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_mem_ia;
    wire [2:0] redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_mem_aa;
    wire [2:0] redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_mem_ab;
    wire [31:0] redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_mem_iq;
    wire [31:0] redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_mem_q;
    wire [2:0] redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_rdcnt_i;
    reg [2:0] redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_wraddr_q;
    wire [3:0] redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_mem_last_q;
    wire [3:0] redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_cmp_b;
    wire [0:0] redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_cmpReg_q;
    wire [0:0] redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_notEnable_q;
    wire [0:0] redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_sticky_ena_q;
    wire [0:0] redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_enaAnd_q;
    wire redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_mem_reset0;
    wire [31:0] redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_mem_ia;
    wire [2:0] redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_mem_aa;
    wire [2:0] redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_mem_ab;
    wire [31:0] redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_mem_iq;
    wire [31:0] redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_mem_q;
    wire [2:0] redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_rdcnt_i;
    reg [2:0] redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_wraddr_q;
    wire [3:0] redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_mem_last_q;
    wire [3:0] redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_cmp_b;
    wire [0:0] redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_cmpReg_q;
    wire [0:0] redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_notEnable_q;
    wire [0:0] redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_sticky_ena_q;
    wire [0:0] redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_enaAnd_q;
    wire redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_mem_reset0;
    wire [31:0] redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_mem_ia;
    wire [3:0] redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_mem_aa;
    wire [3:0] redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_mem_ab;
    wire [31:0] redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_mem_iq;
    wire [31:0] redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_mem_q;
    wire [3:0] redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_rdcnt_q;
    (* preserve *) reg [3:0] redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_rdcnt_i;
    (* preserve *) reg redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_rdcnt_eq;
    reg [3:0] redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_wraddr_q;
    wire [3:0] redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_mem_last_q;
    wire [0:0] redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_cmp_q;
    (* dont_merge *) reg [0:0] redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_cmpReg_q;
    wire [0:0] redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_notEnable_q;
    wire [0:0] redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_nor_q;
    (* dont_merge *) reg [0:0] redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_sticky_ena_q;
    wire [0:0] redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_enaAnd_q;
    wire redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_mem_reset0;
    wire [63:0] redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_mem_ia;
    wire [2:0] redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_mem_aa;
    wire [2:0] redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_mem_ab;
    wire [63:0] redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_mem_iq;
    wire [63:0] redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_mem_q;
    wire [2:0] redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_rdcnt_q;
    (* preserve *) reg [2:0] redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_rdcnt_i;
    (* preserve *) reg redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_rdcnt_eq;
    reg [2:0] redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_wraddr_q;
    wire [3:0] redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_mem_last_q;
    wire [3:0] redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_cmp_b;
    wire [0:0] redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_cmp_q;
    (* dont_merge *) reg [0:0] redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_cmpReg_q;
    wire [0:0] redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_notEnable_q;
    wire [0:0] redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_nor_q;
    (* dont_merge *) reg [0:0] redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_sticky_ena_q;
    wire [0:0] redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_enaAnd_q;
    wire redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_mem_reset0;
    wire [63:0] redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_mem_ia;
    wire [2:0] redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_mem_aa;
    wire [2:0] redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_mem_ab;
    wire [63:0] redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_mem_iq;
    wire [63:0] redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_mem_q;
    wire [2:0] redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_rdcnt_q;
    (* preserve *) reg [2:0] redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_rdcnt_i;
    reg [2:0] redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_wraddr_q;
    wire [3:0] redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_mem_last_q;
    wire [3:0] redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_cmp_b;
    wire [0:0] redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_cmp_q;
    (* dont_merge *) reg [0:0] redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_cmpReg_q;
    wire [0:0] redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_notEnable_q;
    wire [0:0] redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_nor_q;
    (* dont_merge *) reg [0:0] redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_sticky_ena_q;
    wire [0:0] redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_enaAnd_q;
    wire redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_mem_reset0;
    wire [63:0] redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_mem_ia;
    wire [2:0] redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_mem_aa;
    wire [2:0] redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_mem_ab;
    wire [63:0] redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_mem_iq;
    wire [63:0] redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_mem_q;
    wire [2:0] redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_rdcnt_q;
    (* preserve *) reg [2:0] redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_rdcnt_i;
    (* preserve *) reg redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_rdcnt_eq;
    reg [2:0] redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_wraddr_q;
    wire [3:0] redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_mem_last_q;
    wire [3:0] redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_cmp_b;
    wire [0:0] redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_cmp_q;
    (* dont_merge *) reg [0:0] redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_cmpReg_q;
    wire [0:0] redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_notEnable_q;
    wire [0:0] redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_nor_q;
    (* dont_merge *) reg [0:0] redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_sticky_ena_q;
    wire [0:0] redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_enaAnd_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist27_sync_together141_aunroll_x_in_i_valid_1(DELAY,393)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together141_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist27_sync_together141_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist50_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_data_out_1(DELAY,416)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist50_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid346_i_cleanups_shl60_kernel_3mm0_shift_x(BITSELECT,345)@2
    assign leftShiftStage0Idx1Rng1_uid346_i_cleanups_shl60_kernel_3mm0_shift_x_in = i_llvm_fpga_pop_i2_cleanups59_pop50_kernel_3mm2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid346_i_cleanups_shl60_kernel_3mm0_shift_x_b = leftShiftStage0Idx1Rng1_uid346_i_cleanups_shl60_kernel_3mm0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid347_i_cleanups_shl60_kernel_3mm0_shift_x(BITJOIN,346)@2
    assign leftShiftStage0Idx1_uid347_i_cleanups_shl60_kernel_3mm0_shift_x_q = {leftShiftStage0Idx1Rng1_uid346_i_cleanups_shl60_kernel_3mm0_shift_x_b, GND_q};

    // leftShiftStage0_uid349_i_cleanups_shl60_kernel_3mm0_shift_x(MUX,348)@2
    assign leftShiftStage0_uid349_i_cleanups_shl60_kernel_3mm0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid349_i_cleanups_shl60_kernel_3mm0_shift_x_s or i_llvm_fpga_pop_i2_cleanups59_pop50_kernel_3mm2_out_data_out or leftShiftStage0Idx1_uid347_i_cleanups_shl60_kernel_3mm0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid349_i_cleanups_shl60_kernel_3mm0_shift_x_s)
            1'b0 : leftShiftStage0_uid349_i_cleanups_shl60_kernel_3mm0_shift_x_q = i_llvm_fpga_pop_i2_cleanups59_pop50_kernel_3mm2_out_data_out;
            1'b1 : leftShiftStage0_uid349_i_cleanups_shl60_kernel_3mm0_shift_x_q = leftShiftStage0Idx1_uid347_i_cleanups_shl60_kernel_3mm0_shift_x_q;
            default : leftShiftStage0_uid349_i_cleanups_shl60_kernel_3mm0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl60_kernel_3mm5_vt_select_1(BITSELECT,62)@2
    assign i_cleanups_shl60_kernel_3mm5_vt_select_1_b = leftShiftStage0_uid349_i_cleanups_shl60_kernel_3mm0_shift_x_q[1:1];

    // i_cleanups_shl60_kernel_3mm5_vt_join(BITJOIN,61)@2
    assign i_cleanups_shl60_kernel_3mm5_vt_join_q = {i_cleanups_shl60_kernel_3mm5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor62_kernel_3mm4(LOGICAL,65)@2
    assign i_first_cleanup_xor62_kernel_3mm4_q = i_first_cleanup61_kernel_3mm3_sel_x_b ^ VCC_q;

    // i_notcmp52_kernel_3mm31(LOGICAL,116)@2
    assign i_notcmp52_kernel_3mm31_q = i_exitcond_kernel_3mm29_cmp_nsign_q ^ VCC_q;

    // i_or63_kernel_3mm33(LOGICAL,117)@2
    assign i_or63_kernel_3mm33_q = i_notcmp52_kernel_3mm31_q | i_first_cleanup_xor62_kernel_3mm4_q;

    // i_next_cleanups64_kernel_3mm34(MUX,112)@2
    assign i_next_cleanups64_kernel_3mm34_s = i_or63_kernel_3mm33_q;
    always @(i_next_cleanups64_kernel_3mm34_s or i_llvm_fpga_pop_i2_cleanups59_pop50_kernel_3mm2_out_data_out or i_cleanups_shl60_kernel_3mm5_vt_join_q)
    begin
        unique case (i_next_cleanups64_kernel_3mm34_s)
            1'b0 : i_next_cleanups64_kernel_3mm34_q = i_llvm_fpga_pop_i2_cleanups59_pop50_kernel_3mm2_out_data_out;
            1'b1 : i_next_cleanups64_kernel_3mm34_q = i_cleanups_shl60_kernel_3mm5_vt_join_q;
            default : i_next_cleanups64_kernel_3mm34_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups59_push50_kernel_3mm35(BLACKBOX,101)@2
    // out out_feedback_out_50@20000000
    // out out_feedback_valid_out_50@20000000
    kernel_3mm_i_llvm_fpga_push_i2_cleanups59_push50_0 thei_llvm_fpga_push_i2_cleanups59_push50_kernel_3mm35 (
        .in_data_in(i_next_cleanups64_kernel_3mm34_q),
        .in_feedback_stall_in_50(i_llvm_fpga_pop_i2_cleanups59_pop50_kernel_3mm2_out_feedback_stall_out_50),
        .in_keep_going56(redist50_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist27_sync_together141_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_50(i_llvm_fpga_push_i2_cleanups59_push50_kernel_3mm35_out_feedback_out_50),
        .out_feedback_valid_out_50(i_llvm_fpga_push_i2_cleanups59_push50_kernel_3mm35_out_feedback_valid_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together141_aunroll_x_in_c0_eni25_1_tpl_1(DELAY,366)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together141_aunroll_x_in_c0_eni25_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together141_aunroll_x_in_c0_eni25_1_tpl_1_q <= $unsigned(in_c0_eni25_1_tpl);
        end
    end

    // c_i2_195(CONSTANT,44)
    assign c_i2_195_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups59_pop50_kernel_3mm2(BLACKBOX,83)@2
    // out out_feedback_stall_out_50@20000000
    kernel_3mm_i_llvm_fpga_pop_i2_cleanups59_pop50_0 thei_llvm_fpga_pop_i2_cleanups59_pop50_kernel_3mm2 (
        .in_data_in(c_i2_195_q),
        .in_dir(redist0_sync_together141_aunroll_x_in_c0_eni25_1_tpl_1_q),
        .in_feedback_in_50(i_llvm_fpga_push_i2_cleanups59_push50_kernel_3mm35_out_feedback_out_50),
        .in_feedback_valid_in_50(i_llvm_fpga_push_i2_cleanups59_push50_kernel_3mm35_out_feedback_valid_out_50),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist27_sync_together141_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups59_pop50_kernel_3mm2_out_data_out),
        .out_feedback_stall_out_50(i_llvm_fpga_pop_i2_cleanups59_pop50_kernel_3mm2_out_feedback_stall_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup61_kernel_3mm3_sel_x(BITSELECT,183)@2
    assign i_first_cleanup61_kernel_3mm3_sel_x_b = i_llvm_fpga_pop_i2_cleanups59_pop50_kernel_3mm2_out_data_out[0:0];

    // c_i5_1101(CONSTANT,47)
    assign c_i5_1101_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next_kernel_3mm36(ADD,66)@2
    assign i_fpga_indvars_iv_next_kernel_3mm36_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv_pop46_kernel_3mm28_out_data_out};
    assign i_fpga_indvars_iv_next_kernel_3mm36_b = {1'b0, c_i5_1101_q};
    assign i_fpga_indvars_iv_next_kernel_3mm36_o = $unsigned(i_fpga_indvars_iv_next_kernel_3mm36_a) + $unsigned(i_fpga_indvars_iv_next_kernel_3mm36_b);
    assign i_fpga_indvars_iv_next_kernel_3mm36_q = i_fpga_indvars_iv_next_kernel_3mm36_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next_kernel_3mm36_sel_x(BITSELECT,124)@2
    assign bgTrunc_i_fpga_indvars_iv_next_kernel_3mm36_sel_x_b = i_fpga_indvars_iv_next_kernel_3mm36_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm37(BLACKBOX,106)@2
    // out out_feedback_out_46@20000000
    // out out_feedback_valid_out_46@20000000
    kernel_3mm_i_llvm_fpga_push_i5_fpga_indvars_iv_push46_0 thei_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm37 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_kernel_3mm36_sel_x_b),
        .in_feedback_stall_in_46(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop46_kernel_3mm28_out_feedback_stall_out_46),
        .in_keep_going56(redist50_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist27_sync_together141_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_46(i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm37_out_feedback_out_46),
        .out_feedback_valid_out_46(i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm37_out_feedback_valid_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_899(CONSTANT,48)
    assign c_i5_899_q = $unsigned(5'b01000);

    // i_llvm_fpga_pop_i5_fpga_indvars_iv_pop46_kernel_3mm28(BLACKBOX,88)@2
    // out out_feedback_stall_out_46@20000000
    kernel_3mm_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop46_0 thei_llvm_fpga_pop_i5_fpga_indvars_iv_pop46_kernel_3mm28 (
        .in_data_in(c_i5_899_q),
        .in_dir(redist0_sync_together141_aunroll_x_in_c0_eni25_1_tpl_1_q),
        .in_feedback_in_46(i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm37_out_feedback_out_46),
        .in_feedback_valid_in_46(i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm37_out_feedback_valid_out_46),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist27_sync_together141_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop46_kernel_3mm28_out_data_out),
        .out_feedback_stall_out_46(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop46_kernel_3mm28_out_feedback_stall_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_kernel_3mm29_cmp_nsign(LOGICAL,234)@2
    assign i_exitcond_kernel_3mm29_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i5_fpga_indvars_iv_pop46_kernel_3mm28_out_data_out[4:4]));

    // i_llvm_fpga_push_i1_notexitcond66_kernel_3mm32(BLACKBOX,100)@2
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    kernel_3mm_i_llvm_fpga_push_i1_notexitcond66_0 thei_llvm_fpga_push_i1_notexitcond66_kernel_3mm32 (
        .in_data_in(i_exitcond_kernel_3mm29_cmp_nsign_q),
        .in_feedback_stall_in_10(i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_not_exitcond_stall_out),
        .in_first_cleanup61(i_first_cleanup61_kernel_3mm3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist27_sync_together141_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i1_notexitcond66_kernel_3mm32_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i1_notexitcond66_kernel_3mm32_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,195)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid353_i_next_initerations55_kernel_3mm0_shift_x(BITSELECT,352)@2
    assign rightShiftStage0Idx1Rng1_uid353_i_next_initerations55_kernel_3mm0_shift_x_b = i_llvm_fpga_pop_i2_initerations54_pop49_kernel_3mm7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid355_i_next_initerations55_kernel_3mm0_shift_x(BITJOIN,354)@2
    assign rightShiftStage0Idx1_uid355_i_next_initerations55_kernel_3mm0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid353_i_next_initerations55_kernel_3mm0_shift_x_b};

    // valid_fanout_reg1(REG,193)@1 + 1
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

    // valid_fanout_reg2(REG,194)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations54_push49_kernel_3mm9(BLACKBOX,102)@2
    // out out_feedback_out_49@20000000
    // out out_feedback_valid_out_49@20000000
    kernel_3mm_i_llvm_fpga_push_i2_initerations54_push49_0 thei_llvm_fpga_push_i2_initerations54_push49_kernel_3mm9 (
        .in_data_in(i_next_initerations55_kernel_3mm8_vt_join_q),
        .in_feedback_stall_in_49(i_llvm_fpga_pop_i2_initerations54_pop49_kernel_3mm7_out_feedback_stall_out_49),
        .in_keep_going56(redist50_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_49(i_llvm_fpga_push_i2_initerations54_push49_kernel_3mm9_out_feedback_out_49),
        .out_feedback_valid_out_49(i_llvm_fpga_push_i2_initerations54_push49_kernel_3mm9_out_feedback_valid_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations54_pop49_kernel_3mm7(BLACKBOX,84)@2
    // out out_feedback_stall_out_49@20000000
    kernel_3mm_i_llvm_fpga_pop_i2_initerations54_pop49_0 thei_llvm_fpga_pop_i2_initerations54_pop49_kernel_3mm7 (
        .in_data_in(c_i2_195_q),
        .in_dir(redist0_sync_together141_aunroll_x_in_c0_eni25_1_tpl_1_q),
        .in_feedback_in_49(i_llvm_fpga_push_i2_initerations54_push49_kernel_3mm9_out_feedback_out_49),
        .in_feedback_valid_in_49(i_llvm_fpga_push_i2_initerations54_push49_kernel_3mm9_out_feedback_valid_out_49),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations54_pop49_kernel_3mm7_out_data_out),
        .out_feedback_stall_out_49(i_llvm_fpga_pop_i2_initerations54_pop49_kernel_3mm7_out_feedback_stall_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid357_i_next_initerations55_kernel_3mm0_shift_x(MUX,356)@2
    assign rightShiftStage0_uid357_i_next_initerations55_kernel_3mm0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid357_i_next_initerations55_kernel_3mm0_shift_x_s or i_llvm_fpga_pop_i2_initerations54_pop49_kernel_3mm7_out_data_out or rightShiftStage0Idx1_uid355_i_next_initerations55_kernel_3mm0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid357_i_next_initerations55_kernel_3mm0_shift_x_s)
            1'b0 : rightShiftStage0_uid357_i_next_initerations55_kernel_3mm0_shift_x_q = i_llvm_fpga_pop_i2_initerations54_pop49_kernel_3mm7_out_data_out;
            1'b1 : rightShiftStage0_uid357_i_next_initerations55_kernel_3mm0_shift_x_q = rightShiftStage0Idx1_uid355_i_next_initerations55_kernel_3mm0_shift_x_q;
            default : rightShiftStage0_uid357_i_next_initerations55_kernel_3mm0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations55_kernel_3mm8_vt_select_0(BITSELECT,115)@2
    assign i_next_initerations55_kernel_3mm8_vt_select_0_b = rightShiftStage0_uid357_i_next_initerations55_kernel_3mm0_shift_x_q[0:0];

    // i_next_initerations55_kernel_3mm8_vt_join(BITJOIN,114)@2
    assign i_next_initerations55_kernel_3mm8_vt_join_q = {GND_q, i_next_initerations55_kernel_3mm8_vt_select_0_b};

    // i_last_initeration57_kernel_3mm10_sel_x(BITSELECT,185)@2
    assign i_last_initeration57_kernel_3mm10_sel_x_b = i_next_initerations55_kernel_3mm8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration58_kernel_3mm11(BLACKBOX,93)@2
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    kernel_3mm_i_llvm_fpga_push_i1_lastiniteration58_0 thei_llvm_fpga_push_i1_lastiniteration58_kernel_3mm11 (
        .in_data_in(i_last_initeration57_kernel_3mm10_sel_x_b),
        .in_feedback_stall_in_9(i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_initeration_stall_out),
        .in_keep_going56(redist50_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i1_lastiniteration58_kernel_3mm11_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i1_lastiniteration58_kernel_3mm11_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going56_kernel_3mm6(BLACKBOX,75)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    kernel_3mm_i_llvm_fpga_pipeline_keep_going56_0 thei_llvm_fpga_pipeline_keep_going56_kernel_3mm6 (
        .in_data_in(in_c0_eni25_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration58_kernel_3mm11_out_feedback_out_9),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration58_kernel_3mm11_out_feedback_valid_out_9),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond66_kernel_3mm32_out_feedback_out_10),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond66_kernel_3mm32_out_feedback_valid_out_10),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,52)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,120)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_pipeline_valid_out;

    // valid_fanout_reg7(REG,199)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist27_sync_together141_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist54_i_first_cleanup_xor62_kernel_3mm4_q_1(DELAY,420)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist54_i_first_cleanup_xor62_kernel_3mm4_q_1_q <= '0;
        end
        else
        begin
            redist54_i_first_cleanup_xor62_kernel_3mm4_q_1_q <= $unsigned(i_first_cleanup_xor62_kernel_3mm4_q);
        end
    end

    // c_kernel_3mm_A_local_pmem(CONSTANT,49)
    assign c_kernel_3mm_A_local_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx192_kernel_3mm0_upper_bits_x_merged_bit_select(BITSELECT,361)@3
    assign i_arrayidx192_kernel_3mm0_upper_bits_x_merged_bit_select_b = c_kernel_3mm_A_local_pmem_q[63:9];
    assign i_arrayidx192_kernel_3mm0_upper_bits_x_merged_bit_select_c = c_kernel_3mm_A_local_pmem_q[8:0];

    // c_i32_097(CONSTANT,45)
    assign c_i32_097_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg4(REG,196)@1 + 1
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

    // valid_fanout_reg13(REG,205)@1 + 1
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

    // c_i32_198(CONSTANT,46)
    assign c_i32_198_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_kernel_3mm26(ADD,71)@2
    assign i_inc_kernel_3mm26_a = {1'b0, i_llvm_fpga_pop_i32_k_057_pop48_kernel_3mm12_out_data_out};
    assign i_inc_kernel_3mm26_b = {1'b0, c_i32_198_q};
    assign i_inc_kernel_3mm26_o = $unsigned(i_inc_kernel_3mm26_a) + $unsigned(i_inc_kernel_3mm26_b);
    assign i_inc_kernel_3mm26_q = i_inc_kernel_3mm26_o[32:0];

    // bgTrunc_i_inc_kernel_3mm26_sel_x(BITSELECT,125)@2
    assign bgTrunc_i_inc_kernel_3mm26_sel_x_b = i_inc_kernel_3mm26_q[31:0];

    // i_llvm_fpga_push_i32_k_057_push48_kernel_3mm27(BLACKBOX,104)@2
    // out out_feedback_out_48@20000000
    // out out_feedback_valid_out_48@20000000
    kernel_3mm_i_llvm_fpga_push_i32_k_057_push48_0 thei_llvm_fpga_push_i32_k_057_push48_kernel_3mm27 (
        .in_data_in(bgTrunc_i_inc_kernel_3mm26_sel_x_b),
        .in_feedback_stall_in_48(i_llvm_fpga_pop_i32_k_057_pop48_kernel_3mm12_out_feedback_stall_out_48),
        .in_keep_going56(redist50_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_48(i_llvm_fpga_push_i32_k_057_push48_kernel_3mm27_out_feedback_out_48),
        .out_feedback_valid_out_48(i_llvm_fpga_push_i32_k_057_push48_kernel_3mm27_out_feedback_valid_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_k_057_pop48_kernel_3mm12(BLACKBOX,86)@2
    // out out_feedback_stall_out_48@20000000
    kernel_3mm_i_llvm_fpga_pop_i32_k_057_pop48_0 thei_llvm_fpga_pop_i32_k_057_pop48_kernel_3mm12 (
        .in_data_in(c_i32_097_q),
        .in_dir(redist0_sync_together141_aunroll_x_in_c0_eni25_1_tpl_1_q),
        .in_feedback_in_48(i_llvm_fpga_push_i32_k_057_push48_kernel_3mm27_out_feedback_out_48),
        .in_feedback_valid_in_48(i_llvm_fpga_push_i32_k_057_push48_kernel_3mm27_out_feedback_valid_out_48),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_k_057_pop48_kernel_3mm12_out_data_out),
        .out_feedback_stall_out_48(i_llvm_fpga_pop_i32_k_057_pop48_kernel_3mm12_out_feedback_stall_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom18_kernel_3mm13_sel_x(BITSELECT,184)@2
    assign i_idxprom18_kernel_3mm13_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_k_057_pop48_kernel_3mm12_out_data_out[31:0]};

    // i_idxprom18_kernel_3mm13_vt_select_31(BITSELECT,70)@2
    assign i_idxprom18_kernel_3mm13_vt_select_31_b = i_idxprom18_kernel_3mm13_sel_x_b[31:0];

    // i_idxprom18_kernel_3mm13_vt_join(BITJOIN,69)@2
    assign i_idxprom18_kernel_3mm13_vt_join_q = {c_i32_097_q, i_idxprom18_kernel_3mm13_vt_select_31_b};

    // i_arrayidx192_kernel_3mm0_dupName_3_trunc_sel_x(BITSELECT,153)@2
    assign i_arrayidx192_kernel_3mm0_dupName_3_trunc_sel_x_b = i_idxprom18_kernel_3mm13_vt_join_q[8:0];

    // i_arrayidx192_kernel_3mm0_narrow_x(BITSELECT,136)@2
    assign i_arrayidx192_kernel_3mm0_narrow_x_b = i_arrayidx192_kernel_3mm0_dupName_3_trunc_sel_x_b[6:0];

    // redist33_i_arrayidx192_kernel_3mm0_narrow_x_b_1(DELAY,399)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_arrayidx192_kernel_3mm0_narrow_x_b_1_q <= '0;
        end
        else
        begin
            redist33_i_arrayidx192_kernel_3mm0_narrow_x_b_1_q <= $unsigned(i_arrayidx192_kernel_3mm0_narrow_x_b);
        end
    end

    // i_arrayidx192_kernel_3mm0_shift_join_x(BITJOIN,137)@3
    assign i_arrayidx192_kernel_3mm0_shift_join_x_q = {redist33_i_arrayidx192_kernel_3mm0_narrow_x_b_1_q, i_arrayidx192_kernel_3mm16_vt_const_1_q};

    // i_arrayidx192_kernel_3mm0_mult_multconst_x(CONSTANT,148)
    assign i_arrayidx192_kernel_3mm0_mult_multconst_x_q = $unsigned(3'b000);

    // valid_fanout_reg5(REG,197)@1 + 1
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

    // valid_fanout_reg6(REG,198)@1 + 1
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

    // i_llvm_fpga_push_i64_idxprom119_push58_kernel_3mm15(BLACKBOX,108)@2
    // out out_feedback_out_58@20000000
    // out out_feedback_valid_out_58@20000000
    kernel_3mm_i_llvm_fpga_push_i64_idxprom119_push58_0 thei_llvm_fpga_push_i64_idxprom119_push58_kernel_3mm15 (
        .in_data_in(i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out),
        .in_feedback_stall_in_58(i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_feedback_stall_out_58),
        .in_keep_going56(redist50_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_58(i_llvm_fpga_push_i64_idxprom119_push58_kernel_3mm15_out_feedback_out_58),
        .out_feedback_valid_out_58(i_llvm_fpga_push_i64_idxprom119_push58_kernel_3mm15_out_feedback_valid_out_58),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together141_aunroll_x_in_c0_eni25_2_tpl_1(DELAY,369)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together141_aunroll_x_in_c0_eni25_2_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together141_aunroll_x_in_c0_eni25_2_tpl_1_q <= $unsigned(in_c0_eni25_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14(BLACKBOX,90)@2
    // out out_feedback_stall_out_58@20000000
    kernel_3mm_i_llvm_fpga_pop_i64_idxprom119_pop58_0 thei_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14 (
        .in_data_in(redist3_sync_together141_aunroll_x_in_c0_eni25_2_tpl_1_q),
        .in_dir(redist0_sync_together141_aunroll_x_in_c0_eni25_1_tpl_1_q),
        .in_feedback_in_58(i_llvm_fpga_push_i64_idxprom119_push58_kernel_3mm15_out_feedback_out_58),
        .in_feedback_valid_in_58(i_llvm_fpga_push_i64_idxprom119_push58_kernel_3mm15_out_feedback_valid_out_58),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out),
        .out_feedback_stall_out_58(i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_feedback_stall_out_58),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx192_kernel_3mm0_dupName_0_trunc_sel_x(BITSELECT,150)@2
    assign i_arrayidx192_kernel_3mm0_dupName_0_trunc_sel_x_b = i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out[8:0];

    // addsumAHighB_uid260_i_arrayidx192_kernel_3mm0_mult_x(ADD,259)@2
    assign addsumAHighB_uid260_i_arrayidx192_kernel_3mm0_mult_x_a = {1'b0, i_arrayidx192_kernel_3mm0_dupName_0_trunc_sel_x_b};
    assign addsumAHighB_uid260_i_arrayidx192_kernel_3mm0_mult_x_b = {3'b000, lowRangeB_uid258_i_arrayidx192_kernel_3mm0_mult_x_merged_bit_select_c};
    assign addsumAHighB_uid260_i_arrayidx192_kernel_3mm0_mult_x_o = $unsigned(addsumAHighB_uid260_i_arrayidx192_kernel_3mm0_mult_x_a) + $unsigned(addsumAHighB_uid260_i_arrayidx192_kernel_3mm0_mult_x_b);
    assign addsumAHighB_uid260_i_arrayidx192_kernel_3mm0_mult_x_q = addsumAHighB_uid260_i_arrayidx192_kernel_3mm0_mult_x_o[9:0];

    // lowRangeB_uid258_i_arrayidx192_kernel_3mm0_mult_x_merged_bit_select(BITSELECT,365)@2
    assign lowRangeB_uid258_i_arrayidx192_kernel_3mm0_mult_x_merged_bit_select_b = i_arrayidx192_kernel_3mm0_dupName_0_trunc_sel_x_b[1:0];
    assign lowRangeB_uid258_i_arrayidx192_kernel_3mm0_mult_x_merged_bit_select_c = i_arrayidx192_kernel_3mm0_dupName_0_trunc_sel_x_b[8:2];

    // add_uid261_i_arrayidx192_kernel_3mm0_mult_x(BITJOIN,260)@2
    assign add_uid261_i_arrayidx192_kernel_3mm0_mult_x_q = {addsumAHighB_uid260_i_arrayidx192_kernel_3mm0_mult_x_q, lowRangeB_uid258_i_arrayidx192_kernel_3mm0_mult_x_merged_bit_select_b};

    // sR_mergedSignalTM_uid266_i_arrayidx192_kernel_3mm0_mult_x(BITJOIN,265)@2
    assign sR_mergedSignalTM_uid266_i_arrayidx192_kernel_3mm0_mult_x_q = {add_uid261_i_arrayidx192_kernel_3mm0_mult_x_q, i_arrayidx192_kernel_3mm0_mult_multconst_x_q};

    // i_arrayidx192_kernel_3mm0_mult_extender_x(BITJOIN,147)@2
    assign i_arrayidx192_kernel_3mm0_mult_extender_x_q = {i_arrayidx192_kernel_3mm0_mult_multconst_x_q, sR_mergedSignalTM_uid266_i_arrayidx192_kernel_3mm0_mult_x_q};

    // i_arrayidx192_kernel_3mm0_dupName_1_trunc_sel_x(BITSELECT,151)@2
    assign i_arrayidx192_kernel_3mm0_dupName_1_trunc_sel_x_b = i_arrayidx192_kernel_3mm0_mult_extender_x_q[8:0];

    // redist32_i_arrayidx192_kernel_3mm0_dupName_1_trunc_sel_x_b_1(DELAY,398)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_arrayidx192_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist32_i_arrayidx192_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx192_kernel_3mm0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx192_kernel_3mm0_add_x(ADD,131)@3
    assign i_arrayidx192_kernel_3mm0_add_x_a = {1'b0, i_arrayidx192_kernel_3mm0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx192_kernel_3mm0_add_x_b = {1'b0, redist32_i_arrayidx192_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx192_kernel_3mm0_add_x_o = $unsigned(i_arrayidx192_kernel_3mm0_add_x_a) + $unsigned(i_arrayidx192_kernel_3mm0_add_x_b);
    assign i_arrayidx192_kernel_3mm0_add_x_q = i_arrayidx192_kernel_3mm0_add_x_o[9:0];

    // i_arrayidx192_kernel_3mm0_dupName_2_trunc_sel_x(BITSELECT,152)@3
    assign i_arrayidx192_kernel_3mm0_dupName_2_trunc_sel_x_b = i_arrayidx192_kernel_3mm0_add_x_q[8:0];

    // i_arrayidx192_kernel_3mm0_dupName_0_add_x(ADD,141)@3
    assign i_arrayidx192_kernel_3mm0_dupName_0_add_x_a = {1'b0, i_arrayidx192_kernel_3mm0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx192_kernel_3mm0_dupName_0_add_x_b = {1'b0, i_arrayidx192_kernel_3mm0_shift_join_x_q};
    assign i_arrayidx192_kernel_3mm0_dupName_0_add_x_o = $unsigned(i_arrayidx192_kernel_3mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx192_kernel_3mm0_dupName_0_add_x_b);
    assign i_arrayidx192_kernel_3mm0_dupName_0_add_x_q = i_arrayidx192_kernel_3mm0_dupName_0_add_x_o[9:0];

    // i_arrayidx192_kernel_3mm0_dupName_5_trunc_sel_x(BITSELECT,154)@3
    assign i_arrayidx192_kernel_3mm0_dupName_5_trunc_sel_x_b = i_arrayidx192_kernel_3mm0_dupName_0_add_x_q[8:0];

    // i_arrayidx192_kernel_3mm0_append_upper_bits_x(BITJOIN,132)@3
    assign i_arrayidx192_kernel_3mm0_append_upper_bits_x_q = {i_arrayidx192_kernel_3mm0_upper_bits_x_merged_bit_select_b, i_arrayidx192_kernel_3mm0_dupName_5_trunc_sel_x_b};

    // i_arrayidx192_kernel_3mm16_vt_select_63(BITSELECT,56)@3
    assign i_arrayidx192_kernel_3mm16_vt_select_63_b = i_arrayidx192_kernel_3mm0_append_upper_bits_x_q[63:2];

    // i_arrayidx192_kernel_3mm16_vt_const_1(CONSTANT,54)
    assign i_arrayidx192_kernel_3mm16_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx192_kernel_3mm16_vt_join(BITJOIN,55)@3
    assign i_arrayidx192_kernel_3mm16_vt_join_q = {i_arrayidx192_kernel_3mm16_vt_select_63_b, i_arrayidx192_kernel_3mm16_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm17(BLACKBOX,73)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_kernel_3mm4_kernel_3mm_avm_address@20000000
    // out out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount@20000000
    // out out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable@20000000
    // out out_unnamed_kernel_3mm4_kernel_3mm_avm_enable@20000000
    // out out_unnamed_kernel_3mm4_kernel_3mm_avm_read@20000000
    // out out_unnamed_kernel_3mm4_kernel_3mm_avm_write@20000000
    // out out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata@20000000
    kernel_3mm_i_llvm_fpga_mem_unnamed_4_kernel_3mm0 thei_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm17 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx192_kernel_3mm16_vt_join_q),
        .in_i_predicate(redist54_i_first_cleanup_xor62_kernel_3mm4_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_unnamed_kernel_3mm4_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm4_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm4_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm4_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm4_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm4_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm4_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm4_kernel_3mm_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm17_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_address(i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm17_out_unnamed_kernel_3mm4_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount(i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm17_out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable(i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm17_out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_enable(i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm17_out_unnamed_kernel_3mm4_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_read(i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm17_out_unnamed_kernel_3mm4_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_write(i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm17_out_unnamed_kernel_3mm4_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata(i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm17_out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,129)
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_address = i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm17_out_unnamed_kernel_3mm4_kernel_3mm_avm_address;
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_enable = i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm17_out_unnamed_kernel_3mm4_kernel_3mm_avm_enable;
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_read = i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm17_out_unnamed_kernel_3mm4_kernel_3mm_avm_read;
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_write = i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm17_out_unnamed_kernel_3mm4_kernel_3mm_avm_write;
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata = i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm17_out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata;
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable = i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm17_out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable;
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount = i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm17_out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount;

    // valid_fanout_reg10(REG,202)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist27_sync_together141_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_kernel_3mm_B_local_pmem(CONSTANT,50)
    assign c_kernel_3mm_B_local_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx233_kernel_3mm0_upper_bits_x_merged_bit_select(BITSELECT,362)@3
    assign i_arrayidx233_kernel_3mm0_upper_bits_x_merged_bit_select_b = c_kernel_3mm_B_local_pmem_q[63:9];
    assign i_arrayidx233_kernel_3mm0_upper_bits_x_merged_bit_select_c = c_kernel_3mm_B_local_pmem_q[8:0];

    // valid_fanout_reg8(REG,200)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist27_sync_together141_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist28_sync_together141_aunroll_x_in_i_valid_2(DELAY,394)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together141_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist28_sync_together141_aunroll_x_in_i_valid_2_q <= $unsigned(redist27_sync_together141_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg9(REG,201)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist28_sync_together141_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist51_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_data_out_2(DELAY,417)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist51_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_data_out_2_q <= $unsigned(redist50_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_data_out_1_q);
        end
    end

    // redist52_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_data_out_3(DELAY,418)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist52_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_data_out_3_q <= '0;
        end
        else
        begin
            redist52_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_data_out_3_q <= $unsigned(redist51_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_data_out_2_q);
        end
    end

    // redist39_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_1(DELAY,405)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_1_q <= '0;
        end
        else
        begin
            redist39_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out);
        end
    end

    // i_llvm_fpga_push_i64_idxprom11121_push59_kernel_3mm19(BLACKBOX,107)@4
    // out out_feedback_out_59@20000000
    // out out_feedback_valid_out_59@20000000
    kernel_3mm_i_llvm_fpga_push_i64_idxprom11121_push59_0 thei_llvm_fpga_push_i64_idxprom11121_push59_kernel_3mm19 (
        .in_data_in(redist39_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_1_q),
        .in_feedback_stall_in_59(i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_feedback_stall_out_59),
        .in_keep_going56(redist52_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_data_out_3_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_59(i_llvm_fpga_push_i64_idxprom11121_push59_kernel_3mm19_out_feedback_out_59),
        .out_feedback_valid_out_59(i_llvm_fpga_push_i64_idxprom11121_push59_kernel_3mm19_out_feedback_valid_out_59),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together141_aunroll_x_in_c0_eni25_1_tpl_2(DELAY,367)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together141_aunroll_x_in_c0_eni25_1_tpl_2_q <= '0;
        end
        else
        begin
            redist1_sync_together141_aunroll_x_in_c0_eni25_1_tpl_2_q <= $unsigned(redist0_sync_together141_aunroll_x_in_c0_eni25_1_tpl_1_q);
        end
    end

    // redist4_sync_together141_aunroll_x_in_c0_eni25_3_tpl_2(DELAY,370)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together141_aunroll_x_in_c0_eni25_3_tpl_2_delay_0 <= '0;
            redist4_sync_together141_aunroll_x_in_c0_eni25_3_tpl_2_q <= '0;
        end
        else
        begin
            redist4_sync_together141_aunroll_x_in_c0_eni25_3_tpl_2_delay_0 <= $unsigned(in_c0_eni25_3_tpl);
            redist4_sync_together141_aunroll_x_in_c0_eni25_3_tpl_2_q <= redist4_sync_together141_aunroll_x_in_c0_eni25_3_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18(BLACKBOX,89)@3
    // out out_feedback_stall_out_59@20000000
    kernel_3mm_i_llvm_fpga_pop_i64_idxprom11121_pop59_0 thei_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18 (
        .in_data_in(redist4_sync_together141_aunroll_x_in_c0_eni25_3_tpl_2_q),
        .in_dir(redist1_sync_together141_aunroll_x_in_c0_eni25_1_tpl_2_q),
        .in_feedback_in_59(i_llvm_fpga_push_i64_idxprom11121_push59_kernel_3mm19_out_feedback_out_59),
        .in_feedback_valid_in_59(i_llvm_fpga_push_i64_idxprom11121_push59_kernel_3mm19_out_feedback_valid_out_59),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out),
        .out_feedback_stall_out_59(i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_feedback_stall_out_59),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx233_kernel_3mm0_dupName_3_trunc_sel_x(BITSELECT,177)@3
    assign i_arrayidx233_kernel_3mm0_dupName_3_trunc_sel_x_b = i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out[8:0];

    // i_arrayidx233_kernel_3mm0_narrow_x(BITSELECT,160)@3
    assign i_arrayidx233_kernel_3mm0_narrow_x_b = i_arrayidx233_kernel_3mm0_dupName_3_trunc_sel_x_b[6:0];

    // i_arrayidx233_kernel_3mm0_shift_join_x(BITJOIN,161)@3
    assign i_arrayidx233_kernel_3mm0_shift_join_x_q = {i_arrayidx233_kernel_3mm0_narrow_x_b, i_arrayidx192_kernel_3mm16_vt_const_1_q};

    // highBBits_uid305_i_arrayidx233_kernel_3mm0_mult_x(BITSELECT,304)@2
    assign highBBits_uid305_i_arrayidx233_kernel_3mm0_mult_x_b = i_arrayidx192_kernel_3mm0_dupName_3_trunc_sel_x_b[8:2];

    // addsumAHighB_uid306_i_arrayidx233_kernel_3mm0_mult_x(ADD,305)@2
    assign addsumAHighB_uid306_i_arrayidx233_kernel_3mm0_mult_x_a = {1'b0, i_arrayidx192_kernel_3mm0_dupName_3_trunc_sel_x_b};
    assign addsumAHighB_uid306_i_arrayidx233_kernel_3mm0_mult_x_b = {3'b000, highBBits_uid305_i_arrayidx233_kernel_3mm0_mult_x_b};
    assign addsumAHighB_uid306_i_arrayidx233_kernel_3mm0_mult_x_o = $unsigned(addsumAHighB_uid306_i_arrayidx233_kernel_3mm0_mult_x_a) + $unsigned(addsumAHighB_uid306_i_arrayidx233_kernel_3mm0_mult_x_b);
    assign addsumAHighB_uid306_i_arrayidx233_kernel_3mm0_mult_x_q = addsumAHighB_uid306_i_arrayidx233_kernel_3mm0_mult_x_o[9:0];

    // lowRangeB_uid304_i_arrayidx233_kernel_3mm0_mult_x(BITSELECT,303)@2
    assign lowRangeB_uid304_i_arrayidx233_kernel_3mm0_mult_x_in = i_arrayidx192_kernel_3mm0_dupName_3_trunc_sel_x_b[1:0];
    assign lowRangeB_uid304_i_arrayidx233_kernel_3mm0_mult_x_b = lowRangeB_uid304_i_arrayidx233_kernel_3mm0_mult_x_in[1:0];

    // add_uid307_i_arrayidx233_kernel_3mm0_mult_x(BITJOIN,306)@2
    assign add_uid307_i_arrayidx233_kernel_3mm0_mult_x_q = {addsumAHighB_uid306_i_arrayidx233_kernel_3mm0_mult_x_q, lowRangeB_uid304_i_arrayidx233_kernel_3mm0_mult_x_b};

    // sR_mergedSignalTM_uid312_i_arrayidx233_kernel_3mm0_mult_x(BITJOIN,311)@2
    assign sR_mergedSignalTM_uid312_i_arrayidx233_kernel_3mm0_mult_x_q = {add_uid307_i_arrayidx233_kernel_3mm0_mult_x_q, i_arrayidx192_kernel_3mm0_mult_multconst_x_q};

    // i_arrayidx233_kernel_3mm0_mult_extender_x(BITJOIN,171)@2
    assign i_arrayidx233_kernel_3mm0_mult_extender_x_q = {i_arrayidx192_kernel_3mm0_mult_multconst_x_q, sR_mergedSignalTM_uid312_i_arrayidx233_kernel_3mm0_mult_x_q};

    // i_arrayidx233_kernel_3mm0_dupName_1_trunc_sel_x(BITSELECT,175)@2
    assign i_arrayidx233_kernel_3mm0_dupName_1_trunc_sel_x_b = i_arrayidx233_kernel_3mm0_mult_extender_x_q[8:0];

    // redist31_i_arrayidx233_kernel_3mm0_dupName_1_trunc_sel_x_b_1(DELAY,397)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_arrayidx233_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist31_i_arrayidx233_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx233_kernel_3mm0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx233_kernel_3mm0_add_x(ADD,155)@3
    assign i_arrayidx233_kernel_3mm0_add_x_a = {1'b0, i_arrayidx233_kernel_3mm0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx233_kernel_3mm0_add_x_b = {1'b0, redist31_i_arrayidx233_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx233_kernel_3mm0_add_x_o = $unsigned(i_arrayidx233_kernel_3mm0_add_x_a) + $unsigned(i_arrayidx233_kernel_3mm0_add_x_b);
    assign i_arrayidx233_kernel_3mm0_add_x_q = i_arrayidx233_kernel_3mm0_add_x_o[9:0];

    // i_arrayidx233_kernel_3mm0_dupName_2_trunc_sel_x(BITSELECT,176)@3
    assign i_arrayidx233_kernel_3mm0_dupName_2_trunc_sel_x_b = i_arrayidx233_kernel_3mm0_add_x_q[8:0];

    // i_arrayidx233_kernel_3mm0_dupName_0_add_x(ADD,165)@3
    assign i_arrayidx233_kernel_3mm0_dupName_0_add_x_a = {1'b0, i_arrayidx233_kernel_3mm0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx233_kernel_3mm0_dupName_0_add_x_b = {1'b0, i_arrayidx233_kernel_3mm0_shift_join_x_q};
    assign i_arrayidx233_kernel_3mm0_dupName_0_add_x_o = $unsigned(i_arrayidx233_kernel_3mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx233_kernel_3mm0_dupName_0_add_x_b);
    assign i_arrayidx233_kernel_3mm0_dupName_0_add_x_q = i_arrayidx233_kernel_3mm0_dupName_0_add_x_o[9:0];

    // i_arrayidx233_kernel_3mm0_dupName_5_trunc_sel_x(BITSELECT,178)@3
    assign i_arrayidx233_kernel_3mm0_dupName_5_trunc_sel_x_b = i_arrayidx233_kernel_3mm0_dupName_0_add_x_q[8:0];

    // i_arrayidx233_kernel_3mm0_append_upper_bits_x(BITJOIN,156)@3
    assign i_arrayidx233_kernel_3mm0_append_upper_bits_x_q = {i_arrayidx233_kernel_3mm0_upper_bits_x_merged_bit_select_b, i_arrayidx233_kernel_3mm0_dupName_5_trunc_sel_x_b};

    // i_arrayidx233_kernel_3mm20_vt_select_63(BITSELECT,59)@3
    assign i_arrayidx233_kernel_3mm20_vt_select_63_b = i_arrayidx233_kernel_3mm0_append_upper_bits_x_q[63:2];

    // i_arrayidx233_kernel_3mm20_vt_join(BITJOIN,58)@3
    assign i_arrayidx233_kernel_3mm20_vt_join_q = {i_arrayidx233_kernel_3mm20_vt_select_63_b, i_arrayidx192_kernel_3mm16_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm21(BLACKBOX,74)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_kernel_3mm5_kernel_3mm_avm_address@20000000
    // out out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount@20000000
    // out out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable@20000000
    // out out_unnamed_kernel_3mm5_kernel_3mm_avm_enable@20000000
    // out out_unnamed_kernel_3mm5_kernel_3mm_avm_read@20000000
    // out out_unnamed_kernel_3mm5_kernel_3mm_avm_write@20000000
    // out out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata@20000000
    kernel_3mm_i_llvm_fpga_mem_unnamed_5_kernel_3mm0 thei_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm21 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx233_kernel_3mm20_vt_join_q),
        .in_i_predicate(redist54_i_first_cleanup_xor62_kernel_3mm4_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg10_q),
        .in_unnamed_kernel_3mm5_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm5_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm5_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm5_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm5_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm5_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm5_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm5_kernel_3mm_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm21_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_address(i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm21_out_unnamed_kernel_3mm5_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount(i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm21_out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable(i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm21_out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_enable(i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm21_out_unnamed_kernel_3mm5_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_read(i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm21_out_unnamed_kernel_3mm5_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_write(i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm21_out_unnamed_kernel_3mm5_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata(i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm21_out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,130)
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_address = i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm21_out_unnamed_kernel_3mm5_kernel_3mm_avm_address;
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_enable = i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm21_out_unnamed_kernel_3mm5_kernel_3mm_avm_enable;
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_read = i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm21_out_unnamed_kernel_3mm5_kernel_3mm_avm_read;
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_write = i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm21_out_unnamed_kernel_3mm5_kernel_3mm_avm_write;
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata = i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm21_out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata;
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable = i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm21_out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable;
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount = i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm21_out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount;

    // redist29_sync_together141_aunroll_x_in_i_valid_8(DELAY,395)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist29_sync_together141_aunroll_x_in_i_valid_8 ( .xin(redist28_sync_together141_aunroll_x_in_i_valid_2_q), .xout(redist29_sync_together141_aunroll_x_in_i_valid_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist30_sync_together141_aunroll_x_in_i_valid_9(DELAY,396)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_sync_together141_aunroll_x_in_i_valid_9_q <= '0;
        end
        else
        begin
            redist30_sync_together141_aunroll_x_in_i_valid_9_q <= $unsigned(redist29_sync_together141_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg0(REG,192)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist30_sync_together141_aunroll_x_in_i_valid_9_q);
        end
    end

    // redist26_sync_together141_aunroll_x_in_c0_eni25_25_tpl_10(DELAY,392)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist26_sync_together141_aunroll_x_in_c0_eni25_25_tpl_10 ( .xin(in_c0_eni25_25_tpl), .xout(redist26_sync_together141_aunroll_x_in_c0_eni25_25_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist25_sync_together141_aunroll_x_in_c0_eni25_24_tpl_10(DELAY,391)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist25_sync_together141_aunroll_x_in_c0_eni25_24_tpl_10 ( .xin(in_c0_eni25_24_tpl), .xout(redist25_sync_together141_aunroll_x_in_c0_eni25_24_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist24_sync_together141_aunroll_x_in_c0_eni25_23_tpl_10(DELAY,390)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist24_sync_together141_aunroll_x_in_c0_eni25_23_tpl_10 ( .xin(in_c0_eni25_23_tpl), .xout(redist24_sync_together141_aunroll_x_in_c0_eni25_23_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist23_sync_together141_aunroll_x_in_c0_eni25_22_tpl_10(DELAY,389)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist23_sync_together141_aunroll_x_in_c0_eni25_22_tpl_10 ( .xin(in_c0_eni25_22_tpl), .xout(redist23_sync_together141_aunroll_x_in_c0_eni25_22_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist22_sync_together141_aunroll_x_in_c0_eni25_21_tpl_10(DELAY,388)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist22_sync_together141_aunroll_x_in_c0_eni25_21_tpl_10 ( .xin(in_c0_eni25_21_tpl), .xout(redist22_sync_together141_aunroll_x_in_c0_eni25_21_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist21_sync_together141_aunroll_x_in_c0_eni25_20_tpl_10(DELAY,387)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist21_sync_together141_aunroll_x_in_c0_eni25_20_tpl_10 ( .xin(in_c0_eni25_20_tpl), .xout(redist21_sync_together141_aunroll_x_in_c0_eni25_20_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_notEnable(LOGICAL,447)
    assign redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_notEnable_q = $unsigned(~ (VCC_q));

    // redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_nor(LOGICAL,448)
    assign redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_nor_q = ~ (redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_notEnable_q | redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_sticky_ena_q);

    // redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_mem_last(CONSTANT,444)
    assign redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_mem_last_q = $unsigned(4'b0111);

    // redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_cmp(LOGICAL,445)
    assign redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_cmp_q = $unsigned(redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_mem_last_q == redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_rdcnt_q ? 1'b1 : 1'b0);

    // redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_cmpReg(REG,446)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_cmpReg_q <= $unsigned(redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_cmp_q);
        end
    end

    // redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_sticky_ena(REG,449)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_nor_q == 1'b1)
        begin
            redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_sticky_ena_q <= $unsigned(redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_cmpReg_q);
        end
    end

    // redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_enaAnd(LOGICAL,450)
    assign redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_enaAnd_q = redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_sticky_ena_q & VCC_q;

    // redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_rdcnt(COUNTER,442)
    // low=0, high=8, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_rdcnt_i <= 4'd0;
            redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_rdcnt_i == 4'd7)
            begin
                redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_rdcnt_eq <= 1'b0;
            end
            if (redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_rdcnt_eq == 1'b1)
            begin
                redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_rdcnt_i <= $unsigned(redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_rdcnt_i) + $unsigned(4'd8);
            end
            else
            begin
                redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_rdcnt_i <= $unsigned(redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_rdcnt_q = redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_rdcnt_i[3:0];

    // redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_wraddr(REG,443)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_wraddr_q <= $unsigned(4'b1000);
        end
        else
        begin
            redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_wraddr_q <= $unsigned(redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_rdcnt_q);
        end
    end

    // redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_mem(DUALMEM,441)
    assign redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_mem_ia = $unsigned(in_c0_eni25_19_tpl);
    assign redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_mem_aa = redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_wraddr_q;
    assign redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_mem_ab = redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_rdcnt_q;
    assign redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(4),
        .numwords_a(9),
        .width_b(32),
        .widthad_b(4),
        .numwords_b(9),
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
    ) redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_mem_dmem (
        .clocken1(redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_mem_reset0),
        .clock1(clock),
        .address_a(redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_mem_aa),
        .data_a(redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_mem_ab),
        .q_b(redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_mem_iq),
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
    assign redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_mem_q = redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_mem_iq[31:0];

    // redist19_sync_together141_aunroll_x_in_c0_eni25_18_tpl_10(DELAY,385)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist19_sync_together141_aunroll_x_in_c0_eni25_18_tpl_10 ( .xin(in_c0_eni25_18_tpl), .xout(redist19_sync_together141_aunroll_x_in_c0_eni25_18_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist18_sync_together141_aunroll_x_in_c0_eni25_17_tpl_10(DELAY,384)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist18_sync_together141_aunroll_x_in_c0_eni25_17_tpl_10 ( .xin(in_c0_eni25_17_tpl), .xout(redist18_sync_together141_aunroll_x_in_c0_eni25_17_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist17_sync_together141_aunroll_x_in_c0_eni25_16_tpl_10(DELAY,383)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist17_sync_together141_aunroll_x_in_c0_eni25_16_tpl_10 ( .xin(in_c0_eni25_16_tpl), .xout(redist17_sync_together141_aunroll_x_in_c0_eni25_16_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist16_sync_together141_aunroll_x_in_c0_eni25_15_tpl_10(DELAY,382)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist16_sync_together141_aunroll_x_in_c0_eni25_15_tpl_10 ( .xin(in_c0_eni25_15_tpl), .xout(redist16_sync_together141_aunroll_x_in_c0_eni25_15_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist15_sync_together141_aunroll_x_in_c0_eni25_14_tpl_10(DELAY,381)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist15_sync_together141_aunroll_x_in_c0_eni25_14_tpl_10 ( .xin(in_c0_eni25_14_tpl), .xout(redist15_sync_together141_aunroll_x_in_c0_eni25_14_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg30(REG,222)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg30_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg30_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg31(REG,223)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg31_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg31_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_notcmp68124_push61_kernel_3mm56(BLACKBOX,98)@2
    // out out_feedback_out_61@20000000
    // out out_feedback_valid_out_61@20000000
    kernel_3mm_i_llvm_fpga_push_i1_notcmp68124_push61_0 thei_llvm_fpga_push_i1_notcmp68124_push61_kernel_3mm56 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp68124_pop61_kernel_3mm55_out_data_out),
        .in_feedback_stall_in_61(i_llvm_fpga_pop_i1_notcmp68124_pop61_kernel_3mm55_out_feedback_stall_out_61),
        .in_keep_going56(redist50_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg31_q),
        .out_data_out(),
        .out_feedback_out_61(i_llvm_fpga_push_i1_notcmp68124_push61_kernel_3mm56_out_feedback_out_61),
        .out_feedback_valid_out_61(i_llvm_fpga_push_i1_notcmp68124_push61_kernel_3mm56_out_feedback_valid_out_61),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist14_sync_together141_aunroll_x_in_c0_eni25_13_tpl_1(DELAY,380)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together141_aunroll_x_in_c0_eni25_13_tpl_1_q <= '0;
        end
        else
        begin
            redist14_sync_together141_aunroll_x_in_c0_eni25_13_tpl_1_q <= $unsigned(in_c0_eni25_13_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp68124_pop61_kernel_3mm55(BLACKBOX,81)@2
    // out out_feedback_stall_out_61@20000000
    kernel_3mm_i_llvm_fpga_pop_i1_notcmp68124_pop61_0 thei_llvm_fpga_pop_i1_notcmp68124_pop61_kernel_3mm55 (
        .in_data_in(redist14_sync_together141_aunroll_x_in_c0_eni25_13_tpl_1_q),
        .in_dir(redist0_sync_together141_aunroll_x_in_c0_eni25_1_tpl_1_q),
        .in_feedback_in_61(i_llvm_fpga_push_i1_notcmp68124_push61_kernel_3mm56_out_feedback_out_61),
        .in_feedback_valid_in_61(i_llvm_fpga_push_i1_notcmp68124_push61_kernel_3mm56_out_feedback_valid_out_61),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg30_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp68124_pop61_kernel_3mm55_out_data_out),
        .out_feedback_stall_out_61(i_llvm_fpga_pop_i1_notcmp68124_pop61_kernel_3mm55_out_feedback_stall_out_61),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist44_i_llvm_fpga_pop_i1_notcmp68124_pop61_kernel_3mm55_out_data_out_9(DELAY,410)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist44_i_llvm_fpga_pop_i1_notcmp68124_pop61_kernel_3mm55_out_data_out_9 ( .xin(i_llvm_fpga_pop_i1_notcmp68124_pop61_kernel_3mm55_out_data_out), .xout(redist44_i_llvm_fpga_pop_i1_notcmp68124_pop61_kernel_3mm55_out_data_out_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_notEnable(LOGICAL,457)
    assign redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_nor(LOGICAL,458)
    assign redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_nor_q = ~ (redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_notEnable_q | redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_sticky_ena_q);

    // redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_mem_last(CONSTANT,454)
    assign redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_mem_last_q = $unsigned(4'b0101);

    // redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_cmp(LOGICAL,455)
    assign redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_cmp_b = {1'b0, redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_rdcnt_q};
    assign redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_cmp_q = $unsigned(redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_mem_last_q == redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_cmp_b ? 1'b1 : 1'b0);

    // redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_cmpReg(REG,456)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_cmpReg_q <= $unsigned(redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_cmp_q);
        end
    end

    // redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_sticky_ena(REG,459)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_nor_q == 1'b1)
        begin
            redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_sticky_ena_q <= $unsigned(redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_cmpReg_q);
        end
    end

    // redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_enaAnd(LOGICAL,460)
    assign redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_enaAnd_q = redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_sticky_ena_q & VCC_q;

    // redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_rdcnt(COUNTER,452)
    // low=0, high=6, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_rdcnt_i <= 3'd0;
            redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_rdcnt_i == 3'd5)
            begin
                redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_rdcnt_eq <= 1'b0;
            end
            if (redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_rdcnt_eq == 1'b1)
            begin
                redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_rdcnt_i <= $unsigned(redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_rdcnt_i) + $unsigned(3'd2);
            end
            else
            begin
                redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_rdcnt_i <= $unsigned(redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_rdcnt_q = redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_rdcnt_i[2:0];

    // valid_fanout_reg28(REG,220)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg28_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg28_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg29(REG,221)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg29_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg29_q <= $unsigned(redist27_sync_together141_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_p68i32_arrayidx121123_push60_kernel_3mm54(BLACKBOX,109)@3
    // out out_feedback_out_60@20000000
    // out out_feedback_valid_out_60@20000000
    kernel_3mm_i_llvm_fpga_push_p68i32_arrayidx121123_push60_0 thei_llvm_fpga_push_p68i32_arrayidx121123_push60_kernel_3mm54 (
        .in_data_in(redist36_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_1_q),
        .in_feedback_stall_in_60(i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_feedback_stall_out_60),
        .in_keep_going56(redist51_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg29_q),
        .out_data_out(),
        .out_feedback_out_60(i_llvm_fpga_push_p68i32_arrayidx121123_push60_kernel_3mm54_out_feedback_out_60),
        .out_feedback_valid_out_60(i_llvm_fpga_push_p68i32_arrayidx121123_push60_kernel_3mm54_out_feedback_valid_out_60),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist13_sync_together141_aunroll_x_in_c0_eni25_12_tpl_1(DELAY,379)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together141_aunroll_x_in_c0_eni25_12_tpl_1_q <= '0;
        end
        else
        begin
            redist13_sync_together141_aunroll_x_in_c0_eni25_12_tpl_1_q <= $unsigned(in_c0_eni25_12_tpl);
        end
    end

    // i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53(BLACKBOX,91)@2
    // out out_feedback_stall_out_60@20000000
    kernel_3mm_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_0 thei_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53 (
        .in_data_in(redist13_sync_together141_aunroll_x_in_c0_eni25_12_tpl_1_q),
        .in_dir(redist0_sync_together141_aunroll_x_in_c0_eni25_1_tpl_1_q),
        .in_feedback_in_60(i_llvm_fpga_push_p68i32_arrayidx121123_push60_kernel_3mm54_out_feedback_out_60),
        .in_feedback_valid_in_60(i_llvm_fpga_push_p68i32_arrayidx121123_push60_kernel_3mm54_out_feedback_valid_out_60),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg28_q),
        .out_data_out(i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out),
        .out_feedback_stall_out_60(i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_feedback_stall_out_60),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist36_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_1(DELAY,402)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_1_q <= '0;
        end
        else
        begin
            redist36_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out);
        end
    end

    // redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_wraddr(REG,453)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_wraddr_q <= $unsigned(3'b110);
        end
        else
        begin
            redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_wraddr_q <= $unsigned(redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_rdcnt_q);
        end
    end

    // redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_mem(DUALMEM,451)
    assign redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_mem_ia = $unsigned(redist36_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_1_q);
    assign redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_mem_aa = redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_wraddr_q;
    assign redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_mem_ab = redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_rdcnt_q;
    assign redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_mem_reset0 = ~ (resetn);
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
    ) redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_mem_dmem (
        .clocken1(redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_mem_reset0),
        .clock1(clock),
        .address_a(redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_mem_aa),
        .data_a(redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_mem_ab),
        .q_b(redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_mem_iq),
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
    assign redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_mem_q = redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_mem_iq[63:0];

    // valid_fanout_reg26(REG,218)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg26_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg26_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg27(REG,219)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg27_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg27_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_notcmp73112_push57_kernel_3mm52(BLACKBOX,99)@2
    // out out_feedback_out_57@20000000
    // out out_feedback_valid_out_57@20000000
    kernel_3mm_i_llvm_fpga_push_i1_notcmp73112_push57_0 thei_llvm_fpga_push_i1_notcmp73112_push57_kernel_3mm52 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp73112_pop57_kernel_3mm51_out_data_out),
        .in_feedback_stall_in_57(i_llvm_fpga_pop_i1_notcmp73112_pop57_kernel_3mm51_out_feedback_stall_out_57),
        .in_keep_going56(redist50_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg27_q),
        .out_data_out(),
        .out_feedback_out_57(i_llvm_fpga_push_i1_notcmp73112_push57_kernel_3mm52_out_feedback_out_57),
        .out_feedback_valid_out_57(i_llvm_fpga_push_i1_notcmp73112_push57_kernel_3mm52_out_feedback_valid_out_57),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist12_sync_together141_aunroll_x_in_c0_eni25_11_tpl_1(DELAY,378)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together141_aunroll_x_in_c0_eni25_11_tpl_1_q <= '0;
        end
        else
        begin
            redist12_sync_together141_aunroll_x_in_c0_eni25_11_tpl_1_q <= $unsigned(in_c0_eni25_11_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp73112_pop57_kernel_3mm51(BLACKBOX,82)@2
    // out out_feedback_stall_out_57@20000000
    kernel_3mm_i_llvm_fpga_pop_i1_notcmp73112_pop57_0 thei_llvm_fpga_pop_i1_notcmp73112_pop57_kernel_3mm51 (
        .in_data_in(redist12_sync_together141_aunroll_x_in_c0_eni25_11_tpl_1_q),
        .in_dir(redist0_sync_together141_aunroll_x_in_c0_eni25_1_tpl_1_q),
        .in_feedback_in_57(i_llvm_fpga_push_i1_notcmp73112_push57_kernel_3mm52_out_feedback_out_57),
        .in_feedback_valid_in_57(i_llvm_fpga_push_i1_notcmp73112_push57_kernel_3mm52_out_feedback_valid_out_57),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp73112_pop57_kernel_3mm51_out_data_out),
        .out_feedback_stall_out_57(i_llvm_fpga_pop_i1_notcmp73112_pop57_kernel_3mm51_out_feedback_stall_out_57),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist43_i_llvm_fpga_pop_i1_notcmp73112_pop57_kernel_3mm51_out_data_out_9(DELAY,409)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist43_i_llvm_fpga_pop_i1_notcmp73112_pop57_kernel_3mm51_out_data_out_9 ( .xin(i_llvm_fpga_pop_i1_notcmp73112_pop57_kernel_3mm51_out_data_out), .xout(redist43_i_llvm_fpga_pop_i1_notcmp73112_pop57_kernel_3mm51_out_data_out_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg24(REG,216)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg24_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(redist29_sync_together141_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg25(REG,217)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg25_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(redist30_sync_together141_aunroll_x_in_i_valid_9_q);
        end
    end

    // i_llvm_fpga_push_i32_i_060_pop23109_push56_kernel_3mm50(BLACKBOX,103)@11
    // out out_feedback_out_56@20000000
    // out out_feedback_valid_out_56@20000000
    kernel_3mm_i_llvm_fpga_push_i32_i_060_pop23109_push56_0 thei_llvm_fpga_push_i32_i_060_pop23109_push56_kernel_3mm50 (
        .in_data_in(redist42_i_llvm_fpga_pop_i32_i_060_pop23109_pop56_kernel_3mm49_out_data_out_1_q),
        .in_feedback_stall_in_56(i_llvm_fpga_pop_i32_i_060_pop23109_pop56_kernel_3mm49_out_feedback_stall_out_56),
        .in_keep_going56(redist53_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_data_out_10_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_data_out(),
        .out_feedback_out_56(i_llvm_fpga_push_i32_i_060_pop23109_push56_kernel_3mm50_out_feedback_out_56),
        .out_feedback_valid_out_56(i_llvm_fpga_push_i32_i_060_pop23109_push56_kernel_3mm50_out_feedback_valid_out_56),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together141_aunroll_x_in_c0_eni25_1_tpl_9(DELAY,368)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist2_sync_together141_aunroll_x_in_c0_eni25_1_tpl_9 ( .xin(redist1_sync_together141_aunroll_x_in_c0_eni25_1_tpl_2_q), .xout(redist2_sync_together141_aunroll_x_in_c0_eni25_1_tpl_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_notEnable(LOGICAL,437)
    assign redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_nor(LOGICAL,438)
    assign redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_nor_q = ~ (redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_notEnable_q | redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_sticky_ena_q);

    // redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_mem_last(CONSTANT,434)
    assign redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_mem_last_q = $unsigned(4'b0110);

    // redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_cmp(LOGICAL,435)
    assign redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_cmp_b = {1'b0, redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_rdcnt_q};
    assign redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_cmp_q = $unsigned(redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_mem_last_q == redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_cmpReg(REG,436)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_cmpReg_q <= $unsigned(redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_cmp_q);
        end
    end

    // redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_sticky_ena(REG,439)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_nor_q == 1'b1)
        begin
            redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_sticky_ena_q <= $unsigned(redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_cmpReg_q);
        end
    end

    // redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_enaAnd(LOGICAL,440)
    assign redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_enaAnd_q = redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_sticky_ena_q & VCC_q;

    // redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_rdcnt(COUNTER,432)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_rdcnt_i <= 3'd0;
        end
        else
        begin
            redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_rdcnt_i <= $unsigned(redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_rdcnt_i) + $unsigned(3'd1);
        end
    end
    assign redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_rdcnt_q = redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_rdcnt_i[2:0];

    // redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_wraddr(REG,433)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_wraddr_q <= $unsigned(3'b111);
        end
        else
        begin
            redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_wraddr_q <= $unsigned(redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_rdcnt_q);
        end
    end

    // redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_mem(DUALMEM,431)
    assign redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_mem_ia = $unsigned(in_c0_eni25_10_tpl);
    assign redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_mem_aa = redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_wraddr_q;
    assign redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_mem_ab = redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_rdcnt_q;
    assign redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_mem_reset0 = ~ (resetn);
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
    ) redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_mem_dmem (
        .clocken1(redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_mem_aa),
        .data_a(redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_mem_ab),
        .q_b(redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_mem_iq),
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
    assign redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_mem_q = redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_mem_iq[31:0];

    // i_llvm_fpga_pop_i32_i_060_pop23109_pop56_kernel_3mm49(BLACKBOX,85)@10
    // out out_feedback_stall_out_56@20000000
    kernel_3mm_i_llvm_fpga_pop_i32_i_060_pop23109_pop56_0 thei_llvm_fpga_pop_i32_i_060_pop23109_pop56_kernel_3mm49 (
        .in_data_in(redist11_sync_together141_aunroll_x_in_c0_eni25_10_tpl_9_mem_q),
        .in_dir(redist2_sync_together141_aunroll_x_in_c0_eni25_1_tpl_9_q),
        .in_feedback_in_56(i_llvm_fpga_push_i32_i_060_pop23109_push56_kernel_3mm50_out_feedback_out_56),
        .in_feedback_valid_in_56(i_llvm_fpga_push_i32_i_060_pop23109_push56_kernel_3mm50_out_feedback_valid_out_56),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_060_pop23109_pop56_kernel_3mm49_out_data_out),
        .out_feedback_stall_out_56(i_llvm_fpga_pop_i32_i_060_pop23109_pop56_kernel_3mm49_out_feedback_stall_out_56),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist42_i_llvm_fpga_pop_i32_i_060_pop23109_pop56_kernel_3mm49_out_data_out_1(DELAY,408)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_i_llvm_fpga_pop_i32_i_060_pop23109_pop56_kernel_3mm49_out_data_out_1_q <= '0;
        end
        else
        begin
            redist42_i_llvm_fpga_pop_i32_i_060_pop23109_pop56_kernel_3mm49_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_i_060_pop23109_pop56_kernel_3mm49_out_data_out);
        end
    end

    // valid_fanout_reg22(REG,214)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg22_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist29_sync_together141_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg23(REG,215)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(redist30_sync_together141_aunroll_x_in_i_valid_9_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi5_pop20101_push55_kernel_3mm48(BLACKBOX,96)@11
    // out out_feedback_out_55@20000000
    // out out_feedback_valid_out_55@20000000
    kernel_3mm_i_llvm_fpga_push_i1_memdep_phi5_pop20101_push55_0 thei_llvm_fpga_push_i1_memdep_phi5_pop20101_push55_kernel_3mm48 (
        .in_data_in(redist46_i_llvm_fpga_pop_i1_memdep_phi5_pop20101_pop55_kernel_3mm47_out_data_out_1_q),
        .in_feedback_stall_in_55(i_llvm_fpga_pop_i1_memdep_phi5_pop20101_pop55_kernel_3mm47_out_feedback_stall_out_55),
        .in_keep_going56(redist53_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_data_out_10_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(),
        .out_feedback_out_55(i_llvm_fpga_push_i1_memdep_phi5_pop20101_push55_kernel_3mm48_out_feedback_out_55),
        .out_feedback_valid_out_55(i_llvm_fpga_push_i1_memdep_phi5_pop20101_push55_kernel_3mm48_out_feedback_valid_out_55),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_sync_together141_aunroll_x_in_c0_eni25_9_tpl_9(DELAY,376)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist10_sync_together141_aunroll_x_in_c0_eni25_9_tpl_9 ( .xin(in_c0_eni25_9_tpl), .xout(redist10_sync_together141_aunroll_x_in_c0_eni25_9_tpl_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i1_memdep_phi5_pop20101_pop55_kernel_3mm47(BLACKBOX,79)@10
    // out out_feedback_stall_out_55@20000000
    kernel_3mm_i_llvm_fpga_pop_i1_memdep_phi5_pop20101_pop55_0 thei_llvm_fpga_pop_i1_memdep_phi5_pop20101_pop55_kernel_3mm47 (
        .in_data_in(redist10_sync_together141_aunroll_x_in_c0_eni25_9_tpl_9_q),
        .in_dir(redist2_sync_together141_aunroll_x_in_c0_eni25_1_tpl_9_q),
        .in_feedback_in_55(i_llvm_fpga_push_i1_memdep_phi5_pop20101_push55_kernel_3mm48_out_feedback_out_55),
        .in_feedback_valid_in_55(i_llvm_fpga_push_i1_memdep_phi5_pop20101_push55_kernel_3mm48_out_feedback_valid_out_55),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi5_pop20101_pop55_kernel_3mm47_out_data_out),
        .out_feedback_stall_out_55(i_llvm_fpga_pop_i1_memdep_phi5_pop20101_pop55_kernel_3mm47_out_feedback_stall_out_55),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist46_i_llvm_fpga_pop_i1_memdep_phi5_pop20101_pop55_kernel_3mm47_out_data_out_1(DELAY,412)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_i_llvm_fpga_pop_i1_memdep_phi5_pop20101_pop55_kernel_3mm47_out_data_out_1_q <= '0;
        end
        else
        begin
            redist46_i_llvm_fpga_pop_i1_memdep_phi5_pop20101_pop55_kernel_3mm47_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi5_pop20101_pop55_kernel_3mm47_out_data_out);
        end
    end

    // valid_fanout_reg20(REG,212)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg20_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist29_sync_together141_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg21(REG,213)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist30_sync_together141_aunroll_x_in_i_valid_9_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi3_pop1997_push54_kernel_3mm46(BLACKBOX,95)@11
    // out out_feedback_out_54@20000000
    // out out_feedback_valid_out_54@20000000
    kernel_3mm_i_llvm_fpga_push_i1_memdep_phi3_pop1997_push54_0 thei_llvm_fpga_push_i1_memdep_phi3_pop1997_push54_kernel_3mm46 (
        .in_data_in(redist47_i_llvm_fpga_pop_i1_memdep_phi3_pop1997_pop54_kernel_3mm45_out_data_out_1_q),
        .in_feedback_stall_in_54(i_llvm_fpga_pop_i1_memdep_phi3_pop1997_pop54_kernel_3mm45_out_feedback_stall_out_54),
        .in_keep_going56(redist53_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_data_out_10_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(),
        .out_feedback_out_54(i_llvm_fpga_push_i1_memdep_phi3_pop1997_push54_kernel_3mm46_out_feedback_out_54),
        .out_feedback_valid_out_54(i_llvm_fpga_push_i1_memdep_phi3_pop1997_push54_kernel_3mm46_out_feedback_valid_out_54),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_sync_together141_aunroll_x_in_c0_eni25_8_tpl_9(DELAY,375)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist9_sync_together141_aunroll_x_in_c0_eni25_8_tpl_9 ( .xin(in_c0_eni25_8_tpl), .xout(redist9_sync_together141_aunroll_x_in_c0_eni25_8_tpl_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i1_memdep_phi3_pop1997_pop54_kernel_3mm45(BLACKBOX,78)@10
    // out out_feedback_stall_out_54@20000000
    kernel_3mm_i_llvm_fpga_pop_i1_memdep_phi3_pop1997_pop54_0 thei_llvm_fpga_pop_i1_memdep_phi3_pop1997_pop54_kernel_3mm45 (
        .in_data_in(redist9_sync_together141_aunroll_x_in_c0_eni25_8_tpl_9_q),
        .in_dir(redist2_sync_together141_aunroll_x_in_c0_eni25_1_tpl_9_q),
        .in_feedback_in_54(i_llvm_fpga_push_i1_memdep_phi3_pop1997_push54_kernel_3mm46_out_feedback_out_54),
        .in_feedback_valid_in_54(i_llvm_fpga_push_i1_memdep_phi3_pop1997_push54_kernel_3mm46_out_feedback_valid_out_54),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi3_pop1997_pop54_kernel_3mm45_out_data_out),
        .out_feedback_stall_out_54(i_llvm_fpga_pop_i1_memdep_phi3_pop1997_pop54_kernel_3mm45_out_feedback_stall_out_54),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist47_i_llvm_fpga_pop_i1_memdep_phi3_pop1997_pop54_kernel_3mm45_out_data_out_1(DELAY,413)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_i_llvm_fpga_pop_i1_memdep_phi3_pop1997_pop54_kernel_3mm45_out_data_out_1_q <= '0;
        end
        else
        begin
            redist47_i_llvm_fpga_pop_i1_memdep_phi3_pop1997_pop54_kernel_3mm45_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi3_pop1997_pop54_kernel_3mm45_out_data_out);
        end
    end

    // valid_fanout_reg18(REG,210)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist29_sync_together141_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg19(REG,211)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist30_sync_together141_aunroll_x_in_i_valid_9_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi2_pop1893_push53_kernel_3mm44(BLACKBOX,94)@11
    // out out_feedback_out_53@20000000
    // out out_feedback_valid_out_53@20000000
    kernel_3mm_i_llvm_fpga_push_i1_memdep_phi2_pop1893_push53_0 thei_llvm_fpga_push_i1_memdep_phi2_pop1893_push53_kernel_3mm44 (
        .in_data_in(redist48_i_llvm_fpga_pop_i1_memdep_phi2_pop1893_pop53_kernel_3mm43_out_data_out_1_q),
        .in_feedback_stall_in_53(i_llvm_fpga_pop_i1_memdep_phi2_pop1893_pop53_kernel_3mm43_out_feedback_stall_out_53),
        .in_keep_going56(redist53_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_data_out_10_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(),
        .out_feedback_out_53(i_llvm_fpga_push_i1_memdep_phi2_pop1893_push53_kernel_3mm44_out_feedback_out_53),
        .out_feedback_valid_out_53(i_llvm_fpga_push_i1_memdep_phi2_pop1893_push53_kernel_3mm44_out_feedback_valid_out_53),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_sync_together141_aunroll_x_in_c0_eni25_7_tpl_9(DELAY,374)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist8_sync_together141_aunroll_x_in_c0_eni25_7_tpl_9 ( .xin(in_c0_eni25_7_tpl), .xout(redist8_sync_together141_aunroll_x_in_c0_eni25_7_tpl_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i1_memdep_phi2_pop1893_pop53_kernel_3mm43(BLACKBOX,77)@10
    // out out_feedback_stall_out_53@20000000
    kernel_3mm_i_llvm_fpga_pop_i1_memdep_phi2_pop1893_pop53_0 thei_llvm_fpga_pop_i1_memdep_phi2_pop1893_pop53_kernel_3mm43 (
        .in_data_in(redist8_sync_together141_aunroll_x_in_c0_eni25_7_tpl_9_q),
        .in_dir(redist2_sync_together141_aunroll_x_in_c0_eni25_1_tpl_9_q),
        .in_feedback_in_53(i_llvm_fpga_push_i1_memdep_phi2_pop1893_push53_kernel_3mm44_out_feedback_out_53),
        .in_feedback_valid_in_53(i_llvm_fpga_push_i1_memdep_phi2_pop1893_push53_kernel_3mm44_out_feedback_valid_out_53),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi2_pop1893_pop53_kernel_3mm43_out_data_out),
        .out_feedback_stall_out_53(i_llvm_fpga_pop_i1_memdep_phi2_pop1893_pop53_kernel_3mm43_out_feedback_stall_out_53),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist48_i_llvm_fpga_pop_i1_memdep_phi2_pop1893_pop53_kernel_3mm43_out_data_out_1(DELAY,414)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_i_llvm_fpga_pop_i1_memdep_phi2_pop1893_pop53_kernel_3mm43_out_data_out_1_q <= '0;
        end
        else
        begin
            redist48_i_llvm_fpga_pop_i1_memdep_phi2_pop1893_pop53_kernel_3mm43_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi2_pop1893_pop53_kernel_3mm43_out_data_out);
        end
    end

    // valid_fanout_reg16(REG,208)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist29_sync_together141_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg17(REG,209)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist30_sync_together141_aunroll_x_in_i_valid_9_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_pop1789_push52_kernel_3mm42(BLACKBOX,97)@11
    // out out_feedback_out_52@20000000
    // out out_feedback_valid_out_52@20000000
    kernel_3mm_i_llvm_fpga_push_i1_memdep_phi_pop1789_push52_0 thei_llvm_fpga_push_i1_memdep_phi_pop1789_push52_kernel_3mm42 (
        .in_data_in(redist45_i_llvm_fpga_pop_i1_memdep_phi_pop1789_pop52_kernel_3mm41_out_data_out_1_q),
        .in_feedback_stall_in_52(i_llvm_fpga_pop_i1_memdep_phi_pop1789_pop52_kernel_3mm41_out_feedback_stall_out_52),
        .in_keep_going56(redist53_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_data_out_10_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(),
        .out_feedback_out_52(i_llvm_fpga_push_i1_memdep_phi_pop1789_push52_kernel_3mm42_out_feedback_out_52),
        .out_feedback_valid_out_52(i_llvm_fpga_push_i1_memdep_phi_pop1789_push52_kernel_3mm42_out_feedback_valid_out_52),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together141_aunroll_x_in_c0_eni25_6_tpl_9(DELAY,373)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist7_sync_together141_aunroll_x_in_c0_eni25_6_tpl_9 ( .xin(in_c0_eni25_6_tpl), .xout(redist7_sync_together141_aunroll_x_in_c0_eni25_6_tpl_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i1_memdep_phi_pop1789_pop52_kernel_3mm41(BLACKBOX,80)@10
    // out out_feedback_stall_out_52@20000000
    kernel_3mm_i_llvm_fpga_pop_i1_memdep_phi_pop1789_pop52_0 thei_llvm_fpga_pop_i1_memdep_phi_pop1789_pop52_kernel_3mm41 (
        .in_data_in(redist7_sync_together141_aunroll_x_in_c0_eni25_6_tpl_9_q),
        .in_dir(redist2_sync_together141_aunroll_x_in_c0_eni25_1_tpl_9_q),
        .in_feedback_in_52(i_llvm_fpga_push_i1_memdep_phi_pop1789_push52_kernel_3mm42_out_feedback_out_52),
        .in_feedback_valid_in_52(i_llvm_fpga_push_i1_memdep_phi_pop1789_push52_kernel_3mm42_out_feedback_valid_out_52),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop1789_pop52_kernel_3mm41_out_data_out),
        .out_feedback_stall_out_52(i_llvm_fpga_pop_i1_memdep_phi_pop1789_pop52_kernel_3mm41_out_feedback_stall_out_52),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist45_i_llvm_fpga_pop_i1_memdep_phi_pop1789_pop52_kernel_3mm41_out_data_out_1(DELAY,411)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_i_llvm_fpga_pop_i1_memdep_phi_pop1789_pop52_kernel_3mm41_out_data_out_1_q <= '0;
        end
        else
        begin
            redist45_i_llvm_fpga_pop_i1_memdep_phi_pop1789_pop52_kernel_3mm41_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi_pop1789_pop52_kernel_3mm41_out_data_out);
        end
    end

    // valid_fanout_reg14(REG,206)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist29_sync_together141_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg15(REG,207)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist30_sync_together141_aunroll_x_in_i_valid_9_q);
        end
    end

    // i_llvm_fpga_push_i1_forked8185_push51_kernel_3mm40(BLACKBOX,92)@11
    // out out_feedback_out_51@20000000
    // out out_feedback_valid_out_51@20000000
    kernel_3mm_i_llvm_fpga_push_i1_forked8185_push51_0 thei_llvm_fpga_push_i1_forked8185_push51_kernel_3mm40 (
        .in_data_in(redist49_i_llvm_fpga_pop_i1_forked8185_pop51_kernel_3mm39_out_data_out_1_q),
        .in_feedback_stall_in_51(i_llvm_fpga_pop_i1_forked8185_pop51_kernel_3mm39_out_feedback_stall_out_51),
        .in_keep_going56(redist53_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_data_out_10_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_51(i_llvm_fpga_push_i1_forked8185_push51_kernel_3mm40_out_feedback_out_51),
        .out_feedback_valid_out_51(i_llvm_fpga_push_i1_forked8185_push51_kernel_3mm40_out_feedback_valid_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together141_aunroll_x_in_c0_eni25_5_tpl_9(DELAY,372)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist6_sync_together141_aunroll_x_in_c0_eni25_5_tpl_9 ( .xin(in_c0_eni25_5_tpl), .xout(redist6_sync_together141_aunroll_x_in_c0_eni25_5_tpl_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i1_forked8185_pop51_kernel_3mm39(BLACKBOX,76)@10
    // out out_feedback_stall_out_51@20000000
    kernel_3mm_i_llvm_fpga_pop_i1_forked8185_pop51_0 thei_llvm_fpga_pop_i1_forked8185_pop51_kernel_3mm39 (
        .in_data_in(redist6_sync_together141_aunroll_x_in_c0_eni25_5_tpl_9_q),
        .in_dir(redist2_sync_together141_aunroll_x_in_c0_eni25_1_tpl_9_q),
        .in_feedback_in_51(i_llvm_fpga_push_i1_forked8185_push51_kernel_3mm40_out_feedback_out_51),
        .in_feedback_valid_in_51(i_llvm_fpga_push_i1_forked8185_push51_kernel_3mm40_out_feedback_valid_out_51),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(i_llvm_fpga_pop_i1_forked8185_pop51_kernel_3mm39_out_data_out),
        .out_feedback_stall_out_51(i_llvm_fpga_pop_i1_forked8185_pop51_kernel_3mm39_out_feedback_stall_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist49_i_llvm_fpga_pop_i1_forked8185_pop51_kernel_3mm39_out_data_out_1(DELAY,415)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist49_i_llvm_fpga_pop_i1_forked8185_pop51_kernel_3mm39_out_data_out_1_q <= '0;
        end
        else
        begin
            redist49_i_llvm_fpga_pop_i1_forked8185_pop51_kernel_3mm39_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_forked8185_pop51_kernel_3mm39_out_data_out);
        end
    end

    // i_masked65_kernel_3mm38(LOGICAL,110)@2 + 1
    assign i_masked65_kernel_3mm38_qi = i_notcmp52_kernel_3mm31_q & i_first_cleanup61_kernel_3mm3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked65_kernel_3mm38_delay ( .xin(i_masked65_kernel_3mm38_qi), .xout(i_masked65_kernel_3mm38_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist35_i_masked65_kernel_3mm38_q_9(DELAY,401)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist35_i_masked65_kernel_3mm38_q_9 ( .xin(i_masked65_kernel_3mm38_q), .xout(redist35_i_masked65_kernel_3mm38_q_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg11(REG,203)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist29_sync_together141_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg12(REG,204)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist30_sync_together141_aunroll_x_in_i_valid_9_q);
        end
    end

    // i_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm25(BLACKBOX,105)@11
    // out out_feedback_out_47@20000000
    // out out_feedback_valid_out_47@20000000
    kernel_3mm_i_llvm_fpga_push_i32_tmp_058_push47_0 thei_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm25 (
        .in_data_in(bgTrunc_i_add_kernel_3mm24_sel_x_b),
        .in_feedback_stall_in_47(i_llvm_fpga_pop_i32_tmp_058_pop47_kernel_3mm23_out_feedback_stall_out_47),
        .in_keep_going56(redist53_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_data_out_10_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_47(i_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm25_out_feedback_out_47),
        .out_feedback_valid_out_47(i_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm25_out_feedback_valid_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_notEnable(LOGICAL,427)
    assign redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_nor(LOGICAL,428)
    assign redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_nor_q = ~ (redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_notEnable_q | redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_sticky_ena_q);

    // redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_mem_last(CONSTANT,424)
    assign redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_mem_last_q = $unsigned(4'b0110);

    // redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_cmp(LOGICAL,425)
    assign redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_cmp_b = {1'b0, redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_rdcnt_q};
    assign redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_cmp_q = $unsigned(redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_mem_last_q == redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_cmpReg(REG,426)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_cmpReg_q <= $unsigned(redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_cmp_q);
        end
    end

    // redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_sticky_ena(REG,429)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_nor_q == 1'b1)
        begin
            redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_sticky_ena_q <= $unsigned(redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_cmpReg_q);
        end
    end

    // redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_enaAnd(LOGICAL,430)
    assign redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_enaAnd_q = redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_sticky_ena_q & VCC_q;

    // redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_rdcnt(COUNTER,422)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_rdcnt_i <= 3'd0;
        end
        else
        begin
            redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_rdcnt_i <= $unsigned(redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_rdcnt_i) + $unsigned(3'd1);
        end
    end
    assign redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_rdcnt_q = redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_rdcnt_i[2:0];

    // redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_wraddr(REG,423)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_wraddr_q <= $unsigned(3'b111);
        end
        else
        begin
            redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_wraddr_q <= $unsigned(redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_rdcnt_q);
        end
    end

    // redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_mem(DUALMEM,421)
    assign redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_mem_ia = $unsigned(in_c0_eni25_4_tpl);
    assign redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_mem_aa = redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_wraddr_q;
    assign redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_mem_ab = redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_rdcnt_q;
    assign redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_mem_reset0 = ~ (resetn);
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
    ) redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_mem_dmem (
        .clocken1(redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_mem_aa),
        .data_a(redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_mem_ab),
        .q_b(redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_mem_iq),
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
    assign redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_mem_q = redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_mem_iq[31:0];

    // i_llvm_fpga_pop_i32_tmp_058_pop47_kernel_3mm23(BLACKBOX,87)@10
    // out out_feedback_stall_out_47@20000000
    kernel_3mm_i_llvm_fpga_pop_i32_tmp_058_pop47_0 thei_llvm_fpga_pop_i32_tmp_058_pop47_kernel_3mm23 (
        .in_data_in(redist5_sync_together141_aunroll_x_in_c0_eni25_4_tpl_9_mem_q),
        .in_dir(redist2_sync_together141_aunroll_x_in_c0_eni25_1_tpl_9_q),
        .in_feedback_in_47(i_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm25_out_feedback_out_47),
        .in_feedback_valid_in_47(i_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm25_out_feedback_valid_out_47),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i32_tmp_058_pop47_kernel_3mm23_out_data_out),
        .out_feedback_stall_out_47(i_llvm_fpga_pop_i32_tmp_058_pop47_kernel_3mm23_out_feedback_stall_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist41_i_llvm_fpga_pop_i32_tmp_058_pop47_kernel_3mm23_out_data_out_1(DELAY,407)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_llvm_fpga_pop_i32_tmp_058_pop47_kernel_3mm23_out_data_out_1_q <= '0;
        end
        else
        begin
            redist41_i_llvm_fpga_pop_i32_tmp_058_pop47_kernel_3mm23_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_tmp_058_pop47_kernel_3mm23_out_data_out);
        end
    end

    // i_mul_kernel_3mm22_bs2_merged_bit_select(BITSELECT,363)@7
    assign i_mul_kernel_3mm22_bs2_merged_bit_select_b = i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm17_out_o_readdata[31:18];
    assign i_mul_kernel_3mm22_bs2_merged_bit_select_c = i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm17_out_o_readdata[17:0];

    // i_mul_kernel_3mm22_bs1_merged_bit_select(BITSELECT,364)@7
    assign i_mul_kernel_3mm22_bs1_merged_bit_select_b = i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm21_out_o_readdata[31:18];
    assign i_mul_kernel_3mm22_bs1_merged_bit_select_c = i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm21_out_o_readdata[17:0];

    // i_mul_kernel_3mm22_ma3_cma(CHAINMULTADD,360)@7 + 3
    assign i_mul_kernel_3mm22_ma3_cma_reset = ~ (resetn);
    assign i_mul_kernel_3mm22_ma3_cma_ena0 = 1'b1;
    assign i_mul_kernel_3mm22_ma3_cma_ena1 = i_mul_kernel_3mm22_ma3_cma_ena0;
    assign i_mul_kernel_3mm22_ma3_cma_ena2 = i_mul_kernel_3mm22_ma3_cma_ena0;

    assign i_mul_kernel_3mm22_ma3_cma_a0 = i_mul_kernel_3mm22_bs1_merged_bit_select_b;
    assign i_mul_kernel_3mm22_ma3_cma_c0 = i_mul_kernel_3mm22_bs2_merged_bit_select_c;
    assign i_mul_kernel_3mm22_ma3_cma_a1 = i_mul_kernel_3mm22_bs2_merged_bit_select_b;
    assign i_mul_kernel_3mm22_ma3_cma_c1 = i_mul_kernel_3mm22_bs1_merged_bit_select_c;
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
    ) i_mul_kernel_3mm22_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_kernel_3mm22_ma3_cma_ena2, i_mul_kernel_3mm22_ma3_cma_ena1, i_mul_kernel_3mm22_ma3_cma_ena0 }),
        .aclr({ i_mul_kernel_3mm22_ma3_cma_reset, i_mul_kernel_3mm22_ma3_cma_reset }),
        .ay(i_mul_kernel_3mm22_ma3_cma_a1),
        .by(i_mul_kernel_3mm22_ma3_cma_a0),
        .ax(i_mul_kernel_3mm22_ma3_cma_c1),
        .bx(i_mul_kernel_3mm22_ma3_cma_c0),
        .resulta(i_mul_kernel_3mm22_ma3_cma_s0),
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
    i_mul_kernel_3mm22_ma3_cma_delay ( .xin(i_mul_kernel_3mm22_ma3_cma_s0), .xout(i_mul_kernel_3mm22_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_kernel_3mm22_ma3_cma_q = $unsigned(i_mul_kernel_3mm22_ma3_cma_qq[32:0]);

    // i_mul_kernel_3mm22_sums_align_1(BITSHIFT,247)@10
    assign i_mul_kernel_3mm22_sums_align_1_qint = { i_mul_kernel_3mm22_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul_kernel_3mm22_sums_align_1_q = i_mul_kernel_3mm22_sums_align_1_qint[50:0];

    // i_mul_kernel_3mm22_im0_cma(CHAINMULTADD,358)@7 + 3
    assign i_mul_kernel_3mm22_im0_cma_reset = ~ (resetn);
    assign i_mul_kernel_3mm22_im0_cma_ena0 = 1'b1;
    assign i_mul_kernel_3mm22_im0_cma_ena1 = i_mul_kernel_3mm22_im0_cma_ena0;
    assign i_mul_kernel_3mm22_im0_cma_ena2 = i_mul_kernel_3mm22_im0_cma_ena0;

    assign i_mul_kernel_3mm22_im0_cma_a0 = i_mul_kernel_3mm22_bs1_merged_bit_select_b;
    assign i_mul_kernel_3mm22_im0_cma_c0 = i_mul_kernel_3mm22_bs2_merged_bit_select_b;
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
    ) i_mul_kernel_3mm22_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_kernel_3mm22_im0_cma_ena2, i_mul_kernel_3mm22_im0_cma_ena1, i_mul_kernel_3mm22_im0_cma_ena0 }),
        .aclr({ i_mul_kernel_3mm22_im0_cma_reset, i_mul_kernel_3mm22_im0_cma_reset }),
        .ay(i_mul_kernel_3mm22_im0_cma_a0),
        .ax(i_mul_kernel_3mm22_im0_cma_c0),
        .resulta(i_mul_kernel_3mm22_im0_cma_s0),
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
    i_mul_kernel_3mm22_im0_cma_delay ( .xin(i_mul_kernel_3mm22_im0_cma_s0), .xout(i_mul_kernel_3mm22_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_kernel_3mm22_im0_cma_q = $unsigned(i_mul_kernel_3mm22_im0_cma_qq[27:0]);

    // i_mul_kernel_3mm22_im8_cma(CHAINMULTADD,359)@7 + 3
    assign i_mul_kernel_3mm22_im8_cma_reset = ~ (resetn);
    assign i_mul_kernel_3mm22_im8_cma_ena0 = 1'b1;
    assign i_mul_kernel_3mm22_im8_cma_ena1 = i_mul_kernel_3mm22_im8_cma_ena0;
    assign i_mul_kernel_3mm22_im8_cma_ena2 = i_mul_kernel_3mm22_im8_cma_ena0;

    assign i_mul_kernel_3mm22_im8_cma_a0 = i_mul_kernel_3mm22_bs1_merged_bit_select_c;
    assign i_mul_kernel_3mm22_im8_cma_c0 = i_mul_kernel_3mm22_bs2_merged_bit_select_c;
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
    ) i_mul_kernel_3mm22_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_kernel_3mm22_im8_cma_ena2, i_mul_kernel_3mm22_im8_cma_ena1, i_mul_kernel_3mm22_im8_cma_ena0 }),
        .aclr({ i_mul_kernel_3mm22_im8_cma_reset, i_mul_kernel_3mm22_im8_cma_reset }),
        .ay(i_mul_kernel_3mm22_im8_cma_a0),
        .ax(i_mul_kernel_3mm22_im8_cma_c0),
        .resulta(i_mul_kernel_3mm22_im8_cma_s0),
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
    i_mul_kernel_3mm22_im8_cma_delay ( .xin(i_mul_kernel_3mm22_im8_cma_s0), .xout(i_mul_kernel_3mm22_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_kernel_3mm22_im8_cma_q = $unsigned(i_mul_kernel_3mm22_im8_cma_qq[35:0]);

    // i_mul_kernel_3mm22_sums_join_0(BITJOIN,246)@10
    assign i_mul_kernel_3mm22_sums_join_0_q = {i_mul_kernel_3mm22_im0_cma_q, i_mul_kernel_3mm22_im8_cma_q};

    // i_mul_kernel_3mm22_sums_result_add_0_0(ADD,249)@10
    assign i_mul_kernel_3mm22_sums_result_add_0_0_a = {1'b0, i_mul_kernel_3mm22_sums_join_0_q};
    assign i_mul_kernel_3mm22_sums_result_add_0_0_b = {14'b00000000000000, i_mul_kernel_3mm22_sums_align_1_q};
    assign i_mul_kernel_3mm22_sums_result_add_0_0_o = $unsigned(i_mul_kernel_3mm22_sums_result_add_0_0_a) + $unsigned(i_mul_kernel_3mm22_sums_result_add_0_0_b);
    assign i_mul_kernel_3mm22_sums_result_add_0_0_q = i_mul_kernel_3mm22_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul_kernel_3mm22_sel_x(BITSELECT,126)@10
    assign bgTrunc_i_mul_kernel_3mm22_sel_x_in = i_mul_kernel_3mm22_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul_kernel_3mm22_sel_x_b = bgTrunc_i_mul_kernel_3mm22_sel_x_in[31:0];

    // redist34_bgTrunc_i_mul_kernel_3mm22_sel_x_b_1(DELAY,400)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_bgTrunc_i_mul_kernel_3mm22_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist34_bgTrunc_i_mul_kernel_3mm22_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul_kernel_3mm22_sel_x_b);
        end
    end

    // i_add_kernel_3mm24(ADD,53)@11
    assign i_add_kernel_3mm24_a = {1'b0, redist34_bgTrunc_i_mul_kernel_3mm22_sel_x_b_1_q};
    assign i_add_kernel_3mm24_b = {1'b0, redist41_i_llvm_fpga_pop_i32_tmp_058_pop47_kernel_3mm23_out_data_out_1_q};
    assign i_add_kernel_3mm24_o = $unsigned(i_add_kernel_3mm24_a) + $unsigned(i_add_kernel_3mm24_b);
    assign i_add_kernel_3mm24_q = i_add_kernel_3mm24_o[32:0];

    // bgTrunc_i_add_kernel_3mm24_sel_x(BITSELECT,123)@11
    assign bgTrunc_i_add_kernel_3mm24_sel_x_b = i_add_kernel_3mm24_q[31:0];

    // redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_notEnable(LOGICAL,477)
    assign redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_notEnable_q = $unsigned(~ (VCC_q));

    // redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_nor(LOGICAL,478)
    assign redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_nor_q = ~ (redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_notEnable_q | redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_sticky_ena_q);

    // redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_mem_last(CONSTANT,474)
    assign redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_mem_last_q = $unsigned(4'b0100);

    // redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_cmp(LOGICAL,475)
    assign redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_cmp_b = {1'b0, redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_rdcnt_q};
    assign redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_cmp_q = $unsigned(redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_mem_last_q == redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_cmp_b ? 1'b1 : 1'b0);

    // redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_cmpReg(REG,476)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_cmpReg_q <= $unsigned(redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_cmp_q);
        end
    end

    // redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_sticky_ena(REG,479)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_nor_q == 1'b1)
        begin
            redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_sticky_ena_q <= $unsigned(redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_cmpReg_q);
        end
    end

    // redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_enaAnd(LOGICAL,480)
    assign redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_enaAnd_q = redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_sticky_ena_q & VCC_q;

    // redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_rdcnt(COUNTER,472)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_rdcnt_i <= 3'd0;
            redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_rdcnt_i == 3'd4)
            begin
                redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_rdcnt_eq <= 1'b0;
            end
            if (redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_rdcnt_eq == 1'b1)
            begin
                redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_rdcnt_i <= $unsigned(redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_rdcnt_i <= $unsigned(redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_rdcnt_q = redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_rdcnt_i[2:0];

    // redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_wraddr(REG,473)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_wraddr_q <= $unsigned(redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_rdcnt_q);
        end
    end

    // redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_mem(DUALMEM,471)
    assign redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_mem_ia = $unsigned(redist39_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_1_q);
    assign redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_mem_aa = redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_wraddr_q;
    assign redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_mem_ab = redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_rdcnt_q;
    assign redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(64),
        .widthad_b(3),
        .numwords_b(6),
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
    ) redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_mem_dmem (
        .clocken1(redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_mem_reset0),
        .clock1(clock),
        .address_a(redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_mem_aa),
        .data_a(redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_mem_ab),
        .q_b(redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_mem_iq),
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
    assign redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_mem_q = redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_mem_iq[63:0];

    // redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_notEnable(LOGICAL,467)
    assign redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_nor(LOGICAL,468)
    assign redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_nor_q = ~ (redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_notEnable_q | redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_sticky_ena_q);

    // redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_mem_last(CONSTANT,464)
    assign redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_mem_last_q = $unsigned(4'b0110);

    // redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_cmp(LOGICAL,465)
    assign redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_cmp_b = {1'b0, redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_rdcnt_q};
    assign redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_cmp_q = $unsigned(redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_mem_last_q == redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_cmp_b ? 1'b1 : 1'b0);

    // redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_cmpReg(REG,466)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_cmpReg_q <= $unsigned(redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_cmp_q);
        end
    end

    // redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_sticky_ena(REG,469)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_nor_q == 1'b1)
        begin
            redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_sticky_ena_q <= $unsigned(redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_cmpReg_q);
        end
    end

    // redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_enaAnd(LOGICAL,470)
    assign redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_enaAnd_q = redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_sticky_ena_q & VCC_q;

    // redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_rdcnt(COUNTER,462)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_rdcnt_i <= 3'd0;
        end
        else
        begin
            redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_rdcnt_i <= $unsigned(redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_rdcnt_i) + $unsigned(3'd1);
        end
    end
    assign redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_rdcnt_q = redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_rdcnt_i[2:0];

    // redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_wraddr(REG,463)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_wraddr_q <= $unsigned(3'b111);
        end
        else
        begin
            redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_wraddr_q <= $unsigned(redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_rdcnt_q);
        end
    end

    // redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_mem(DUALMEM,461)
    assign redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_mem_ia = $unsigned(i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out);
    assign redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_mem_aa = redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_wraddr_q;
    assign redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_mem_ab = redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_rdcnt_q;
    assign redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(3),
        .numwords_a(8),
        .width_b(64),
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
    ) redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_mem_dmem (
        .clocken1(redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_mem_reset0),
        .clock1(clock),
        .address_a(redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_mem_aa),
        .data_a(redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_mem_ab),
        .q_b(redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_mem_iq),
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
    assign redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_mem_q = redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_mem_iq[63:0];

    // redist53_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_data_out_10(DELAY,419)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist53_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_data_out_10 ( .xin(redist52_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_data_out_3_q), .xout(redist53_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_data_out_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,190)@11
    assign out_c0_exi26_0_tpl = GND_q;
    assign out_c0_exi26_1_tpl = redist53_i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_out_data_out_10_q;
    assign out_c0_exi26_2_tpl = redist38_i_llvm_fpga_pop_i64_idxprom119_pop58_kernel_3mm14_out_data_out_9_mem_q;
    assign out_c0_exi26_3_tpl = redist40_i_llvm_fpga_pop_i64_idxprom11121_pop59_kernel_3mm18_out_data_out_8_mem_q;
    assign out_c0_exi26_4_tpl = bgTrunc_i_add_kernel_3mm24_sel_x_b;
    assign out_c0_exi26_5_tpl = redist35_i_masked65_kernel_3mm38_q_9_q;
    assign out_c0_exi26_6_tpl = redist49_i_llvm_fpga_pop_i1_forked8185_pop51_kernel_3mm39_out_data_out_1_q;
    assign out_c0_exi26_7_tpl = redist45_i_llvm_fpga_pop_i1_memdep_phi_pop1789_pop52_kernel_3mm41_out_data_out_1_q;
    assign out_c0_exi26_8_tpl = redist48_i_llvm_fpga_pop_i1_memdep_phi2_pop1893_pop53_kernel_3mm43_out_data_out_1_q;
    assign out_c0_exi26_9_tpl = redist47_i_llvm_fpga_pop_i1_memdep_phi3_pop1997_pop54_kernel_3mm45_out_data_out_1_q;
    assign out_c0_exi26_10_tpl = redist46_i_llvm_fpga_pop_i1_memdep_phi5_pop20101_pop55_kernel_3mm47_out_data_out_1_q;
    assign out_c0_exi26_11_tpl = redist42_i_llvm_fpga_pop_i32_i_060_pop23109_pop56_kernel_3mm49_out_data_out_1_q;
    assign out_c0_exi26_12_tpl = redist43_i_llvm_fpga_pop_i1_notcmp73112_pop57_kernel_3mm51_out_data_out_9_q;
    assign out_c0_exi26_13_tpl = redist37_i_llvm_fpga_pop_p68i32_arrayidx121123_pop60_kernel_3mm53_out_data_out_9_mem_q;
    assign out_c0_exi26_14_tpl = redist44_i_llvm_fpga_pop_i1_notcmp68124_pop61_kernel_3mm55_out_data_out_9_q;
    assign out_c0_exi26_15_tpl = redist15_sync_together141_aunroll_x_in_c0_eni25_14_tpl_10_q;
    assign out_c0_exi26_16_tpl = redist16_sync_together141_aunroll_x_in_c0_eni25_15_tpl_10_q;
    assign out_c0_exi26_17_tpl = redist17_sync_together141_aunroll_x_in_c0_eni25_16_tpl_10_q;
    assign out_c0_exi26_18_tpl = redist18_sync_together141_aunroll_x_in_c0_eni25_17_tpl_10_q;
    assign out_c0_exi26_19_tpl = redist19_sync_together141_aunroll_x_in_c0_eni25_18_tpl_10_q;
    assign out_c0_exi26_20_tpl = redist20_sync_together141_aunroll_x_in_c0_eni25_19_tpl_10_mem_q;
    assign out_c0_exi26_21_tpl = redist21_sync_together141_aunroll_x_in_c0_eni25_20_tpl_10_q;
    assign out_c0_exi26_22_tpl = redist22_sync_together141_aunroll_x_in_c0_eni25_21_tpl_10_q;
    assign out_c0_exi26_23_tpl = redist23_sync_together141_aunroll_x_in_c0_eni25_22_tpl_10_q;
    assign out_c0_exi26_24_tpl = redist24_sync_together141_aunroll_x_in_c0_eni25_23_tpl_10_q;
    assign out_c0_exi26_25_tpl = redist25_sync_together141_aunroll_x_in_c0_eni25_24_tpl_10_q;
    assign out_c0_exi26_26_tpl = redist26_sync_together141_aunroll_x_in_c0_eni25_25_tpl_10_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_kernel_3mm0 = GND_q;

endmodule
