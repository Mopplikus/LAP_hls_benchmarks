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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body67_kernel_2mms_c0_enter33424_kernel_2mm0
// Created for function/kernel kernel_2mm
// SystemVerilog created on Tue Jun 13 01:31:47 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_i_sfc_logic_s_c0_in_for_body60000ter33424_kernel_2mm0 (
    output wire [31:0] out_unnamed_kernel_2mm20_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm20_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm20_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm20_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm20_kernel_2mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_2mm20_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm20_kernel_2mm_avm_burstcount,
    output wire [0:0] out_c0_exi18_0_tpl,
    output wire [0:0] out_c0_exi18_1_tpl,
    output wire [0:0] out_c0_exi18_2_tpl,
    output wire [31:0] out_c0_exi18_3_tpl,
    output wire [63:0] out_c0_exi18_4_tpl,
    output wire [0:0] out_c0_exi18_5_tpl,
    output wire [0:0] out_c0_exi18_6_tpl,
    output wire [0:0] out_c0_exi18_7_tpl,
    output wire [0:0] out_c0_exi18_8_tpl,
    output wire [63:0] out_c0_exi18_9_tpl,
    output wire [0:0] out_c0_exi18_10_tpl,
    output wire [0:0] out_c0_exi18_11_tpl,
    output wire [0:0] out_c0_exi18_12_tpl,
    output wire [31:0] out_c0_exi18_13_tpl,
    output wire [31:0] out_c0_exi18_14_tpl,
    output wire [0:0] out_c0_exi18_15_tpl,
    output wire [0:0] out_c0_exi18_16_tpl,
    output wire [0:0] out_c0_exi18_17_tpl,
    output wire [31:0] out_c0_exi18_18_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_kernel_2mm1,
    input wire [0:0] in_c0_eni17_0_tpl,
    input wire [0:0] in_c0_eni17_1_tpl,
    input wire [31:0] in_c0_eni17_2_tpl,
    input wire [31:0] in_c0_eni17_3_tpl,
    input wire [0:0] in_c0_eni17_4_tpl,
    input wire [0:0] in_c0_eni17_5_tpl,
    input wire [31:0] in_c0_eni17_6_tpl,
    input wire [0:0] in_c0_eni17_7_tpl,
    input wire [0:0] in_c0_eni17_8_tpl,
    input wire [63:0] in_c0_eni17_9_tpl,
    input wire [0:0] in_c0_eni17_10_tpl,
    input wire [0:0] in_c0_eni17_11_tpl,
    input wire [31:0] in_c0_eni17_12_tpl,
    input wire [31:0] in_c0_eni17_13_tpl,
    input wire [0:0] in_c0_eni17_14_tpl,
    input wire [0:0] in_c0_eni17_15_tpl,
    input wire [0:0] in_c0_eni17_16_tpl,
    input wire [31:0] in_c0_eni17_17_tpl,
    input wire [0:0] in_i_valid,
    input wire [31:0] in_unnamed_kernel_2mm20_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm20_kernel_2mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_2mm20_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm20_kernel_2mm_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_7_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next17_kernel_2mm43_sel_x_b;
    wire [31:0] bgTrunc_i_inc78_kernel_2mm33_sel_x_b;
    wire [31:0] bgTrunc_i_mul72_add32_kernel_2mm21_sel_x_b;
    wire [8:0] i_arrayidx714_kernel_2mm0_dupName_0_trunc_sel_x_b;
    wire [8:0] i_arrayidx714_kernel_2mm0_dupName_1_trunc_sel_x_b;
    wire [8:0] i_arrayidx714_kernel_2mm0_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx714_kernel_2mm0_dupName_3_trunc_sel_x_b;
    wire [8:0] i_arrayidx714_kernel_2mm0_dupName_5_trunc_sel_x_b;
    wire [9:0] i_arrayidx714_kernel_2mm0_dupName_0_add_x_a;
    wire [9:0] i_arrayidx714_kernel_2mm0_dupName_0_add_x_b;
    logic [9:0] i_arrayidx714_kernel_2mm0_dupName_0_add_x_o;
    wire [9:0] i_arrayidx714_kernel_2mm0_dupName_0_add_x_q;
    wire [17:0] i_arrayidx714_kernel_2mm0_mult_extender_x_q;
    wire [2:0] i_arrayidx714_kernel_2mm0_mult_multconst_x_q;
    wire [9:0] i_arrayidx714_kernel_2mm0_add_x_a;
    wire [9:0] i_arrayidx714_kernel_2mm0_add_x_b;
    logic [9:0] i_arrayidx714_kernel_2mm0_add_x_o;
    wire [9:0] i_arrayidx714_kernel_2mm0_add_x_q;
    wire [63:0] i_arrayidx714_kernel_2mm0_append_upper_bits_x_q;
    wire [1:0] i_arrayidx714_kernel_2mm0_c_i2_02_x_q;
    wire [6:0] i_arrayidx714_kernel_2mm0_narrow_x_b;
    wire [8:0] i_arrayidx714_kernel_2mm0_shift_join_x_q;
    wire [0:0] i_first_cleanup_kernel_2mm3_sel_x_b;
    wire [63:0] i_idxprom68_kernel_2mm14_sel_x_b;
    wire [63:0] i_idxprom70_kernel_2mm16_sel_x_b;
    wire [0:0] i_last_initeration_kernel_2mm10_sel_x_b;
    wire [63:0] i_mptr_bitcast_index88_kernel_2mm0_dupName_0_trunc_sel_x_b;
    wire [1:0] c_i2_192_q;
    wire [31:0] c_i32_094_q;
    wire [31:0] c_i32_195_q;
    wire [4:0] c_i5_199_q;
    wire [4:0] c_i5_897_q;
    wire [63:0] c_kernel_2mm_tmp_pmem_q;
    wire [32:0] i_add73_kernel_2mm24_a;
    wire [32:0] i_add73_kernel_2mm24_b;
    logic [32:0] i_add73_kernel_2mm24_o;
    wire [32:0] i_add73_kernel_2mm24_q;
    wire [63:0] i_arrayidx714_kernel_2mm17_vt_join_q;
    wire [61:0] i_arrayidx714_kernel_2mm17_vt_select_63_b;
    wire [1:0] i_cleanups_shl_kernel_2mm5_vt_join_q;
    wire [0:0] i_cleanups_shl_kernel_2mm5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor_kernel_2mm4_q;
    wire [5:0] i_fpga_indvars_iv_next17_kernel_2mm43_a;
    wire [5:0] i_fpga_indvars_iv_next17_kernel_2mm43_b;
    logic [5:0] i_fpga_indvars_iv_next17_kernel_2mm43_o;
    wire [5:0] i_fpga_indvars_iv_next17_kernel_2mm43_q;
    wire [63:0] i_idxprom68_kernel_2mm14_vt_join_q;
    wire [31:0] i_idxprom68_kernel_2mm14_vt_select_31_b;
    wire [63:0] i_idxprom70_kernel_2mm16_vt_join_q;
    wire [31:0] i_idxprom70_kernel_2mm16_vt_select_31_b;
    wire [32:0] i_inc78_kernel_2mm33_a;
    wire [32:0] i_inc78_kernel_2mm33_b;
    logic [32:0] i_inc78_kernel_2mm33_o;
    wire [32:0] i_inc78_kernel_2mm33_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast879540_kernel_2mm26_out_dest_data_out_7_0;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_2mm20_kernel_2mm18_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_2mm20_kernel_2mm18_out_unnamed_kernel_2mm20_kernel_2mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm20_kernel_2mm18_out_unnamed_kernel_2mm20_kernel_2mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_kernel_2mm20_kernel_2mm18_out_unnamed_kernel_2mm20_kernel_2mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm20_kernel_2mm18_out_unnamed_kernel_2mm20_kernel_2mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm20_kernel_2mm18_out_unnamed_kernel_2mm20_kernel_2mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm20_kernel_2mm18_out_unnamed_kernel_2mm20_kernel_2mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_2mm20_kernel_2mm18_out_unnamed_kernel_2mm20_kernel_2mm_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond21130_pop69_kernel_2mm54_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond21130_pop69_kernel_2mm54_out_feedback_stall_out_69;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond24120_pop64_kernel_2mm48_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond24120_pop64_kernel_2mm48_out_feedback_stall_out_64;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop26124_pop66_kernel_2mm28_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop26124_pop66_kernel_2mm28_out_feedback_stall_out_66;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop40132_pop71_kernel_2mm30_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop40132_pop71_kernel_2mm30_out_feedback_stall_out_71;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp41131_pop70_kernel_2mm56_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp41131_pop70_kernel_2mm56_out_feedback_stall_out_70;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp46122_pop65_kernel_2mm50_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp46122_pop65_kernel_2mm50_out_feedback_stall_out_65;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop61_kernel_2mm2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop61_kernel_2mm2_out_feedback_stall_out_61;
    wire [1:0] i_llvm_fpga_pop_i2_initerations_pop60_kernel_2mm7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop60_kernel_2mm7_out_feedback_stall_out_60;
    wire [31:0] i_llvm_fpga_pop_i32_i48_078_pop25116_pop62_kernel_2mm12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i48_078_pop25116_pop62_kernel_2mm12_out_feedback_stall_out_62;
    wire [31:0] i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_feedback_stall_out_67;
    wire [31:0] i_llvm_fpga_pop_i32_k63_076_pop58_kernel_2mm15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k63_076_pop58_kernel_2mm15_out_feedback_stall_out_58;
    wire [31:0] i_llvm_fpga_pop_i32_mul59_add30118_pop63_kernel_2mm46_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul59_add30118_pop63_kernel_2mm46_out_feedback_stall_out_63;
    wire [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv16_pop57_kernel_2mm35_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv16_pop57_kernel_2mm35_out_feedback_stall_out_57;
    wire [63:0] i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_feedback_stall_out_68;
    wire [0:0] i_llvm_fpga_push_i1_exitcond21130_push69_kernel_2mm55_out_feedback_out_69;
    wire [0:0] i_llvm_fpga_push_i1_exitcond21130_push69_kernel_2mm55_out_feedback_valid_out_69;
    wire [0:0] i_llvm_fpga_push_i1_exitcond24120_push64_kernel_2mm49_out_feedback_out_64;
    wire [0:0] i_llvm_fpga_push_i1_exitcond24120_push64_kernel_2mm49_out_feedback_valid_out_64;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_kernel_2mm11_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_kernel_2mm11_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop26124_push66_kernel_2mm29_out_feedback_out_66;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop26124_push66_kernel_2mm29_out_feedback_valid_out_66;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop40132_push71_kernel_2mm31_out_feedback_out_71;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop40132_push71_kernel_2mm31_out_feedback_valid_out_71;
    wire [0:0] i_llvm_fpga_push_i1_notcmp41131_push70_kernel_2mm57_out_feedback_out_70;
    wire [0:0] i_llvm_fpga_push_i1_notcmp41131_push70_kernel_2mm57_out_feedback_valid_out_70;
    wire [0:0] i_llvm_fpga_push_i1_notcmp46122_push65_kernel_2mm51_out_feedback_out_65;
    wire [0:0] i_llvm_fpga_push_i1_notcmp46122_push65_kernel_2mm51_out_feedback_valid_out_65;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_kernel_2mm39_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_kernel_2mm39_out_feedback_valid_out_3;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push61_kernel_2mm42_out_feedback_out_61;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push61_kernel_2mm42_out_feedback_valid_out_61;
    wire [7:0] i_llvm_fpga_push_i2_initerations_push60_kernel_2mm9_out_feedback_out_60;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push60_kernel_2mm9_out_feedback_valid_out_60;
    wire [31:0] i_llvm_fpga_push_i32_i48_078_pop25116_push62_kernel_2mm13_out_feedback_out_62;
    wire [0:0] i_llvm_fpga_push_i32_i48_078_pop25116_push62_kernel_2mm13_out_feedback_valid_out_62;
    wire [31:0] i_llvm_fpga_push_i32_j53_077_pop39128_push67_kernel_2mm23_out_feedback_out_67;
    wire [0:0] i_llvm_fpga_push_i32_j53_077_pop39128_push67_kernel_2mm23_out_feedback_valid_out_67;
    wire [31:0] i_llvm_fpga_push_i32_k63_076_push58_kernel_2mm34_out_feedback_out_58;
    wire [0:0] i_llvm_fpga_push_i32_k63_076_push58_kernel_2mm34_out_feedback_valid_out_58;
    wire [31:0] i_llvm_fpga_push_i32_mul59_add30118_push63_kernel_2mm47_out_feedback_out_63;
    wire [0:0] i_llvm_fpga_push_i32_mul59_add30118_push63_kernel_2mm47_out_feedback_valid_out_63;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv16_push57_kernel_2mm44_out_feedback_out_57;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv16_push57_kernel_2mm44_out_feedback_valid_out_57;
    wire [63:0] i_llvm_fpga_push_p1025i32_mptr_bitcast_index92129_push68_kernel_2mm53_out_feedback_out_68;
    wire [0:0] i_llvm_fpga_push_p1025i32_mptr_bitcast_index92129_push68_kernel_2mm53_out_feedback_valid_out_68;
    wire [0:0] i_masked_kernel_2mm45_qi;
    reg [0:0] i_masked_kernel_2mm45_q;
    wire [0:0] i_memdep_phi3_or_kernel_2mm32_qi;
    reg [0:0] i_memdep_phi3_or_kernel_2mm32_q;
    wire [32:0] i_mul72_add32_kernel_2mm21_a;
    wire [32:0] i_mul72_add32_kernel_2mm21_b;
    logic [32:0] i_mul72_add32_kernel_2mm21_o;
    wire [32:0] i_mul72_add32_kernel_2mm21_q;
    wire [31:0] i_mul72_add32_kernel_2mm21_vt_join_q;
    wire [30:0] i_mul72_add32_kernel_2mm21_vt_select_31_b;
    wire [0:0] i_next_cleanups_kernel_2mm41_s;
    reg [1:0] i_next_cleanups_kernel_2mm41_q;
    wire [1:0] i_next_initerations_kernel_2mm8_vt_join_q;
    wire [0:0] i_next_initerations_kernel_2mm8_vt_select_0_b;
    wire [0:0] i_notcmp_kernel_2mm38_q;
    wire [0:0] i_or_kernel_2mm40_q;
    wire [31:0] i_unnamed_kernel_2mm19_vt_join_q;
    wire [30:0] i_unnamed_kernel_2mm19_vt_select_31_b;
    wire [31:0] i_unnamed_kernel_2mm20_vt_join_q;
    wire [28:0] i_unnamed_kernel_2mm20_vt_select_31_b;
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
    wire [30:0] leftShiftStage0Idx1Rng1_uid235_dupName_5_i_unnamed_kernel_2mm0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid235_dupName_5_i_unnamed_kernel_2mm0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid236_dupName_5_i_unnamed_kernel_2mm0_shift_x_q;
    wire [0:0] leftShiftStage0_uid238_dupName_5_i_unnamed_kernel_2mm0_shift_x_s;
    reg [31:0] leftShiftStage0_uid238_dupName_5_i_unnamed_kernel_2mm0_shift_x_q;
    wire [29:0] leftShiftStage1Idx1Rng2_uid248_dupName_6_i_unnamed_kernel_2mm0_shift_x_in;
    wire [29:0] leftShiftStage1Idx1Rng2_uid248_dupName_6_i_unnamed_kernel_2mm0_shift_x_b;
    wire [31:0] leftShiftStage1Idx1_uid249_dupName_6_i_unnamed_kernel_2mm0_shift_x_q;
    wire [0:0] leftShiftStage1_uid251_dupName_6_i_unnamed_kernel_2mm0_shift_x_s;
    reg [31:0] leftShiftStage1_uid251_dupName_6_i_unnamed_kernel_2mm0_shift_x_q;
    wire [9:0] addsumAHighB_uid262_i_arrayidx714_kernel_2mm0_mult_x_a;
    wire [9:0] addsumAHighB_uid262_i_arrayidx714_kernel_2mm0_mult_x_b;
    logic [9:0] addsumAHighB_uid262_i_arrayidx714_kernel_2mm0_mult_x_o;
    wire [9:0] addsumAHighB_uid262_i_arrayidx714_kernel_2mm0_mult_x_q;
    wire [11:0] add_uid263_i_arrayidx714_kernel_2mm0_mult_x_q;
    wire [14:0] sR_mergedSignalTM_uid268_i_arrayidx714_kernel_2mm0_mult_x_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid302_i_cleanups_shl_kernel_2mm0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid302_i_cleanups_shl_kernel_2mm0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid303_i_cleanups_shl_kernel_2mm0_shift_x_q;
    wire [0:0] leftShiftStage0_uid305_i_cleanups_shl_kernel_2mm0_shift_x_s;
    reg [1:0] leftShiftStage0_uid305_i_cleanups_shl_kernel_2mm0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid309_i_next_initerations_kernel_2mm0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid311_i_next_initerations_kernel_2mm0_shift_x_q;
    wire [0:0] rightShiftStage0_uid313_i_next_initerations_kernel_2mm0_shift_x_s;
    reg [1:0] rightShiftStage0_uid313_i_next_initerations_kernel_2mm0_shift_x_q;
    wire [0:0] i_exitcond18_kernel_2mm36_cmp_nsign_q;
    wire [60:0] i_mptr_bitcast_index88_kernel_2mm0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index88_kernel_2mm0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index88_kernel_2mm0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index88_kernel_2mm0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index88_kernel_2mm0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index88_kernel_2mm0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index88_kernel_2mm0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index88_kernel_2mm0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index88_kernel_2mm0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index88_kernel_2mm0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index88_kernel_2mm0_add_x_BitJoin_for_q_q;
    wire [4:0] i_mptr_bitcast_index88_kernel_2mm0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [31:0] i_mptr_bitcast_index88_kernel_2mm0_add_x_BitSelect_for_b_tessel0_1_b;
    wire [59:0] i_mptr_bitcast_index88_kernel_2mm0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [4:0] i_mptr_bitcast_index88_kernel_2mm0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [1:0] lowRangeB_uid260_i_arrayidx714_kernel_2mm0_mult_x_merged_bit_select_b;
    wire [6:0] lowRangeB_uid260_i_arrayidx714_kernel_2mm0_mult_x_merged_bit_select_c;
    wire [29:0] i_mptr_bitcast_index88_kernel_2mm0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in;
    wire [25:0] i_mptr_bitcast_index88_kernel_2mm0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index88_kernel_2mm0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_c;
    wire [8:0] i_arrayidx714_kernel_2mm0_trunc_sel_x_merged_bit_select_b;
    wire [54:0] i_arrayidx714_kernel_2mm0_trunc_sel_x_merged_bit_select_c;
    wire [59:0] i_mptr_bitcast_index88_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index88_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    reg [3:0] redist0_i_mptr_bitcast_index88_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q;
    reg [54:0] redist1_i_arrayidx714_kernel_2mm0_trunc_sel_x_merged_bit_select_c_1_q;
    reg [31:0] redist2_i_mptr_bitcast_index88_kernel_2mm0_add_x_BitSelect_for_b_tessel0_1_b_1_q;
    reg [59:0] redist3_i_mptr_bitcast_index88_kernel_2mm0_add_x_p1_of_2_q_1_q;
    reg [0:0] redist4_valid_fanout_reg0_q_2_q;
    reg [0:0] redist4_valid_fanout_reg0_q_2_delay_0;
    reg [30:0] redist5_i_mul72_add32_kernel_2mm21_vt_select_31_b_1_q;
    reg [0:0] redist6_i_memdep_phi3_or_kernel_2mm32_q_7_q;
    reg [0:0] redist7_i_masked_kernel_2mm45_q_7_q;
    reg [31:0] redist9_i_llvm_fpga_pop_i32_k63_076_pop58_kernel_2mm15_out_data_out_1_q;
    reg [31:0] redist10_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_1_q;
    reg [0:0] redist12_i_llvm_fpga_pop_i1_notcmp46122_pop65_kernel_2mm50_out_data_out_7_q;
    reg [0:0] redist13_i_llvm_fpga_pop_i1_notcmp41131_pop70_kernel_2mm56_out_data_out_7_q;
    reg [0:0] redist14_i_llvm_fpga_pop_i1_exitcond24120_pop64_kernel_2mm48_out_data_out_7_q;
    reg [0:0] redist15_i_llvm_fpga_pop_i1_exitcond21130_pop69_kernel_2mm54_out_data_out_2_q;
    reg [0:0] redist15_i_llvm_fpga_pop_i1_exitcond21130_pop69_kernel_2mm54_out_data_out_2_delay_0;
    reg [0:0] redist16_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_1_q;
    reg [0:0] redist17_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_2_q;
    reg [0:0] redist18_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_4_q;
    reg [0:0] redist18_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_4_delay_0;
    reg [0:0] redist19_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_6_q;
    reg [0:0] redist19_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_6_delay_0;
    reg [0:0] redist20_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_8_q;
    reg [0:0] redist20_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_8_delay_0;
    reg [0:0] redist21_i_first_cleanup_xor_kernel_2mm4_q_3_q;
    reg [0:0] redist21_i_first_cleanup_xor_kernel_2mm4_q_3_delay_0;
    reg [0:0] redist21_i_first_cleanup_xor_kernel_2mm4_q_3_delay_1;
    reg [0:0] redist22_i_first_cleanup_xor_kernel_2mm4_q_7_q;
    reg [0:0] redist22_i_first_cleanup_xor_kernel_2mm4_q_7_delay_0;
    reg [0:0] redist22_i_first_cleanup_xor_kernel_2mm4_q_7_delay_1;
    reg [0:0] redist22_i_first_cleanup_xor_kernel_2mm4_q_7_delay_2;
    reg [0:0] redist23_sync_together135_aunroll_x_in_c0_eni17_1_tpl_1_q;
    reg [0:0] redist24_sync_together135_aunroll_x_in_c0_eni17_1_tpl_3_q;
    reg [0:0] redist24_sync_together135_aunroll_x_in_c0_eni17_1_tpl_3_delay_0;
    reg [0:0] redist25_sync_together135_aunroll_x_in_c0_eni17_1_tpl_6_q;
    reg [0:0] redist25_sync_together135_aunroll_x_in_c0_eni17_1_tpl_6_delay_0;
    reg [0:0] redist25_sync_together135_aunroll_x_in_c0_eni17_1_tpl_6_delay_1;
    reg [0:0] redist26_sync_together135_aunroll_x_in_c0_eni17_1_tpl_8_q;
    reg [0:0] redist26_sync_together135_aunroll_x_in_c0_eni17_1_tpl_8_delay_0;
    reg [31:0] redist27_sync_together135_aunroll_x_in_c0_eni17_2_tpl_1_q;
    reg [31:0] redist28_sync_together135_aunroll_x_in_c0_eni17_3_tpl_1_q;
    reg [0:0] redist29_sync_together135_aunroll_x_in_c0_eni17_4_tpl_1_q;
    reg [0:0] redist30_sync_together135_aunroll_x_in_c0_eni17_5_tpl_1_q;
    reg [31:0] redist31_sync_together135_aunroll_x_in_c0_eni17_6_tpl_1_q;
    reg [0:0] redist32_sync_together135_aunroll_x_in_c0_eni17_7_tpl_1_q;
    reg [0:0] redist33_sync_together135_aunroll_x_in_c0_eni17_8_tpl_1_q;
    reg [63:0] redist34_sync_together135_aunroll_x_in_c0_eni17_9_tpl_1_q;
    reg [0:0] redist35_sync_together135_aunroll_x_in_c0_eni17_10_tpl_6_q;
    reg [0:0] redist36_sync_together135_aunroll_x_in_c0_eni17_11_tpl_1_q;
    reg [0:0] redist39_sync_together135_aunroll_x_in_c0_eni17_14_tpl_8_q;
    reg [0:0] redist40_sync_together135_aunroll_x_in_c0_eni17_15_tpl_8_q;
    reg [0:0] redist41_sync_together135_aunroll_x_in_c0_eni17_16_tpl_8_q;
    reg [0:0] redist43_sync_together135_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist44_sync_together135_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist45_sync_together135_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist46_sync_together135_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist46_sync_together135_aunroll_x_in_i_valid_5_delay_0;
    reg [8:0] redist47_i_arrayidx714_kernel_2mm0_dupName_2_trunc_sel_x_b_1_q;
    reg [8:0] redist48_i_arrayidx714_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q;
    reg [8:0] redist49_i_arrayidx714_kernel_2mm0_dupName_0_trunc_sel_x_b_1_q;
    reg [63:0] redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_outputreg0_q;
    wire redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_mem_reset0;
    wire [63:0] redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_mem_ia;
    wire [2:0] redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_mem_aa;
    wire [2:0] redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_mem_ab;
    wire [63:0] redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_mem_iq;
    wire [63:0] redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_mem_q;
    wire [2:0] redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_rdcnt_q;
    (* preserve *) reg [2:0] redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_rdcnt_i;
    (* preserve *) reg redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_rdcnt_eq;
    reg [2:0] redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_wraddr_q;
    wire [2:0] redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_mem_last_q;
    wire [0:0] redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_cmp_q;
    (* dont_merge *) reg [0:0] redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_cmpReg_q;
    wire [0:0] redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_notEnable_q;
    wire [0:0] redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_nor_q;
    (* dont_merge *) reg [0:0] redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_sticky_ena_q;
    wire [0:0] redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_enaAnd_q;
    wire redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_mem_reset0;
    wire [31:0] redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_mem_ia;
    wire [0:0] redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_mem_aa;
    wire [0:0] redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_mem_ab;
    wire [31:0] redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_mem_iq;
    wire [31:0] redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_mem_q;
    wire [0:0] redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_rdcnt_q;
    (* preserve *) reg [0:0] redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_rdcnt_i;
    reg [0:0] redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_cmpReg_q;
    wire [0:0] redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_notEnable_q;
    wire [0:0] redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_nor_q;
    (* dont_merge *) reg [0:0] redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_sticky_ena_q;
    wire [0:0] redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_enaAnd_q;
    reg [31:0] redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_outputreg0_q;
    wire redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_mem_reset0;
    wire [31:0] redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_mem_ia;
    wire [2:0] redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_mem_aa;
    wire [2:0] redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_mem_ab;
    wire [31:0] redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_mem_iq;
    wire [31:0] redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_mem_q;
    wire [2:0] redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_rdcnt_q;
    (* preserve *) reg [2:0] redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_rdcnt_i;
    (* preserve *) reg redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_rdcnt_eq;
    reg [2:0] redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_wraddr_q;
    wire [3:0] redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_mem_last_q;
    wire [3:0] redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_cmp_b;
    wire [0:0] redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_cmp_q;
    (* dont_merge *) reg [0:0] redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_cmpReg_q;
    wire [0:0] redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_notEnable_q;
    wire [0:0] redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_nor_q;
    (* dont_merge *) reg [0:0] redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_sticky_ena_q;
    wire [0:0] redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_enaAnd_q;
    reg [31:0] redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_outputreg0_q;
    wire redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_mem_reset0;
    wire [31:0] redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_mem_ia;
    wire [2:0] redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_mem_aa;
    wire [2:0] redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_mem_ab;
    wire [31:0] redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_mem_iq;
    wire [31:0] redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_mem_q;
    wire [2:0] redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_rdcnt_q;
    (* preserve *) reg [2:0] redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_rdcnt_i;
    (* preserve *) reg redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_rdcnt_eq;
    reg [2:0] redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_wraddr_q;
    wire [3:0] redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_mem_last_q;
    wire [3:0] redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_cmp_b;
    wire [0:0] redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_cmp_q;
    (* dont_merge *) reg [0:0] redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_cmpReg_q;
    wire [0:0] redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_notEnable_q;
    wire [0:0] redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_nor_q;
    (* dont_merge *) reg [0:0] redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_sticky_ena_q;
    wire [0:0] redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_enaAnd_q;
    reg [31:0] redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_outputreg0_q;
    wire redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_mem_reset0;
    wire [31:0] redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_mem_ia;
    wire [2:0] redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_mem_aa;
    wire [2:0] redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_mem_ab;
    wire [31:0] redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_mem_iq;
    wire [31:0] redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_mem_q;
    wire [2:0] redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_rdcnt_q;
    (* preserve *) reg [2:0] redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_rdcnt_i;
    (* preserve *) reg redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_rdcnt_eq;
    reg [2:0] redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_wraddr_q;
    wire [3:0] redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_mem_last_q;
    wire [3:0] redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_cmp_b;
    wire [0:0] redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_cmp_q;
    (* dont_merge *) reg [0:0] redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_cmpReg_q;
    wire [0:0] redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_notEnable_q;
    wire [0:0] redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_nor_q;
    (* dont_merge *) reg [0:0] redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_sticky_ena_q;
    wire [0:0] redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist43_sync_together135_aunroll_x_in_i_valid_1(DELAY,384)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_sync_together135_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist43_sync_together135_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist44_sync_together135_aunroll_x_in_i_valid_2(DELAY,385)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_sync_together135_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist44_sync_together135_aunroll_x_in_i_valid_2_q <= $unsigned(redist43_sync_together135_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist45_sync_together135_aunroll_x_in_i_valid_3(DELAY,386)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_sync_together135_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist45_sync_together135_aunroll_x_in_i_valid_3_q <= $unsigned(redist44_sync_together135_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg7(REG,197)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist45_sync_together135_aunroll_x_in_i_valid_3_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // c_i5_199(CONSTANT,103)
    assign c_i5_199_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next17_kernel_2mm43(ADD,118)@2
    assign i_fpga_indvars_iv_next17_kernel_2mm43_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv16_pop57_kernel_2mm35_out_data_out};
    assign i_fpga_indvars_iv_next17_kernel_2mm43_b = {1'b0, c_i5_199_q};
    assign i_fpga_indvars_iv_next17_kernel_2mm43_o = $unsigned(i_fpga_indvars_iv_next17_kernel_2mm43_a) + $unsigned(i_fpga_indvars_iv_next17_kernel_2mm43_b);
    assign i_fpga_indvars_iv_next17_kernel_2mm43_q = i_fpga_indvars_iv_next17_kernel_2mm43_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next17_kernel_2mm43_sel_x(BITSELECT,11)@2
    assign bgTrunc_i_fpga_indvars_iv_next17_kernel_2mm43_sel_x_b = i_fpga_indvars_iv_next17_kernel_2mm43_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv16_push57_kernel_2mm44(BLACKBOX,160)@2
    // out out_feedback_out_57@20000000
    // out out_feedback_valid_out_57@20000000
    kernel_2mm_i_llvm_fpga_push_i5_fpga_indvars_iv16_push57_0 thei_llvm_fpga_push_i5_fpga_indvars_iv16_push57_kernel_2mm44 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next17_kernel_2mm43_sel_x_b),
        .in_feedback_stall_in_57(i_llvm_fpga_pop_i5_fpga_indvars_iv16_pop57_kernel_2mm35_out_feedback_stall_out_57),
        .in_keep_going(redist16_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist43_sync_together135_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_57(i_llvm_fpga_push_i5_fpga_indvars_iv16_push57_kernel_2mm44_out_feedback_out_57),
        .out_feedback_valid_out_57(i_llvm_fpga_push_i5_fpga_indvars_iv16_push57_kernel_2mm44_out_feedback_valid_out_57),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_897(CONSTANT,104)
    assign c_i5_897_q = $unsigned(5'b01000);

    // i_llvm_fpga_pop_i5_fpga_indvars_iv16_pop57_kernel_2mm35(BLACKBOX,144)@2
    // out out_feedback_stall_out_57@20000000
    kernel_2mm_i_llvm_fpga_pop_i5_fpga_indvars_iv16_pop57_0 thei_llvm_fpga_pop_i5_fpga_indvars_iv16_pop57_kernel_2mm35 (
        .in_data_in(c_i5_897_q),
        .in_dir(redist23_sync_together135_aunroll_x_in_c0_eni17_1_tpl_1_q),
        .in_feedback_in_57(i_llvm_fpga_push_i5_fpga_indvars_iv16_push57_kernel_2mm44_out_feedback_out_57),
        .in_feedback_valid_in_57(i_llvm_fpga_push_i5_fpga_indvars_iv16_push57_kernel_2mm44_out_feedback_valid_out_57),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist43_sync_together135_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i5_fpga_indvars_iv16_pop57_kernel_2mm35_out_data_out),
        .out_feedback_stall_out_57(i_llvm_fpga_pop_i5_fpga_indvars_iv16_pop57_kernel_2mm35_out_feedback_stall_out_57),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond18_kernel_2mm36_cmp_nsign(LOGICAL,315)@2
    assign i_exitcond18_kernel_2mm36_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i5_fpga_indvars_iv16_pop57_kernel_2mm35_out_data_out[4:4]));

    // i_llvm_fpga_push_i1_notexitcond_kernel_2mm39(BLACKBOX,153)@2
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    kernel_2mm_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_kernel_2mm39 (
        .in_data_in(i_exitcond18_kernel_2mm36_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_kernel_2mm3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist43_sync_together135_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_kernel_2mm39_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_kernel_2mm39_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,193)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid309_i_next_initerations_kernel_2mm0_shift_x(BITSELECT,308)@2
    assign rightShiftStage0Idx1Rng1_uid309_i_next_initerations_kernel_2mm0_shift_x_b = i_llvm_fpga_pop_i2_initerations_pop60_kernel_2mm7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid311_i_next_initerations_kernel_2mm0_shift_x(BITJOIN,310)@2
    assign rightShiftStage0Idx1_uid311_i_next_initerations_kernel_2mm0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid309_i_next_initerations_kernel_2mm0_shift_x_b};

    // valid_fanout_reg1(REG,191)@1 + 1
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

    // valid_fanout_reg2(REG,192)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations_push60_kernel_2mm9(BLACKBOX,155)@2
    // out out_feedback_out_60@20000000
    // out out_feedback_valid_out_60@20000000
    kernel_2mm_i_llvm_fpga_push_i2_initerations_push60_0 thei_llvm_fpga_push_i2_initerations_push60_kernel_2mm9 (
        .in_data_in(i_next_initerations_kernel_2mm8_vt_join_q),
        .in_feedback_stall_in_60(i_llvm_fpga_pop_i2_initerations_pop60_kernel_2mm7_out_feedback_stall_out_60),
        .in_keep_going(redist16_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_60(i_llvm_fpga_push_i2_initerations_push60_kernel_2mm9_out_feedback_out_60),
        .out_feedback_valid_out_60(i_llvm_fpga_push_i2_initerations_push60_kernel_2mm9_out_feedback_valid_out_60),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations_pop60_kernel_2mm7(BLACKBOX,139)@2
    // out out_feedback_stall_out_60@20000000
    kernel_2mm_i_llvm_fpga_pop_i2_initerations_pop60_0 thei_llvm_fpga_pop_i2_initerations_pop60_kernel_2mm7 (
        .in_data_in(c_i2_192_q),
        .in_dir(redist23_sync_together135_aunroll_x_in_c0_eni17_1_tpl_1_q),
        .in_feedback_in_60(i_llvm_fpga_push_i2_initerations_push60_kernel_2mm9_out_feedback_out_60),
        .in_feedback_valid_in_60(i_llvm_fpga_push_i2_initerations_push60_kernel_2mm9_out_feedback_valid_out_60),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations_pop60_kernel_2mm7_out_data_out),
        .out_feedback_stall_out_60(i_llvm_fpga_pop_i2_initerations_pop60_kernel_2mm7_out_feedback_stall_out_60),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid313_i_next_initerations_kernel_2mm0_shift_x(MUX,312)@2
    assign rightShiftStage0_uid313_i_next_initerations_kernel_2mm0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid313_i_next_initerations_kernel_2mm0_shift_x_s or i_llvm_fpga_pop_i2_initerations_pop60_kernel_2mm7_out_data_out or rightShiftStage0Idx1_uid311_i_next_initerations_kernel_2mm0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid313_i_next_initerations_kernel_2mm0_shift_x_s)
            1'b0 : rightShiftStage0_uid313_i_next_initerations_kernel_2mm0_shift_x_q = i_llvm_fpga_pop_i2_initerations_pop60_kernel_2mm7_out_data_out;
            1'b1 : rightShiftStage0_uid313_i_next_initerations_kernel_2mm0_shift_x_q = rightShiftStage0Idx1_uid311_i_next_initerations_kernel_2mm0_shift_x_q;
            default : rightShiftStage0_uid313_i_next_initerations_kernel_2mm0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations_kernel_2mm8_vt_select_0(BITSELECT,171)@2
    assign i_next_initerations_kernel_2mm8_vt_select_0_b = rightShiftStage0_uid313_i_next_initerations_kernel_2mm0_shift_x_q[0:0];

    // i_next_initerations_kernel_2mm8_vt_join(BITJOIN,170)@2
    assign i_next_initerations_kernel_2mm8_vt_join_q = {GND_q, i_next_initerations_kernel_2mm8_vt_select_0_b};

    // i_last_initeration_kernel_2mm10_sel_x(BITSELECT,47)@2
    assign i_last_initeration_kernel_2mm10_sel_x_b = i_next_initerations_kernel_2mm8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_kernel_2mm11(BLACKBOX,148)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    kernel_2mm_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_kernel_2mm11 (
        .in_data_in(i_last_initeration_kernel_2mm10_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_initeration_stall_out),
        .in_keep_going(redist16_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_kernel_2mm11_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_kernel_2mm11_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_kernel_2mm6(BLACKBOX,131)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    kernel_2mm_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_kernel_2mm6 (
        .in_data_in(in_c0_eni17_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_kernel_2mm11_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_kernel_2mm11_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_kernel_2mm39_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_kernel_2mm39_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist16_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_1(DELAY,357)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist16_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid302_i_cleanups_shl_kernel_2mm0_shift_x(BITSELECT,301)@2
    assign leftShiftStage0Idx1Rng1_uid302_i_cleanups_shl_kernel_2mm0_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop61_kernel_2mm2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid302_i_cleanups_shl_kernel_2mm0_shift_x_b = leftShiftStage0Idx1Rng1_uid302_i_cleanups_shl_kernel_2mm0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid303_i_cleanups_shl_kernel_2mm0_shift_x(BITJOIN,302)@2
    assign leftShiftStage0Idx1_uid303_i_cleanups_shl_kernel_2mm0_shift_x_q = {leftShiftStage0Idx1Rng1_uid302_i_cleanups_shl_kernel_2mm0_shift_x_b, GND_q};

    // leftShiftStage0_uid305_i_cleanups_shl_kernel_2mm0_shift_x(MUX,304)@2
    assign leftShiftStage0_uid305_i_cleanups_shl_kernel_2mm0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid305_i_cleanups_shl_kernel_2mm0_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop61_kernel_2mm2_out_data_out or leftShiftStage0Idx1_uid303_i_cleanups_shl_kernel_2mm0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid305_i_cleanups_shl_kernel_2mm0_shift_x_s)
            1'b0 : leftShiftStage0_uid305_i_cleanups_shl_kernel_2mm0_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop61_kernel_2mm2_out_data_out;
            1'b1 : leftShiftStage0_uid305_i_cleanups_shl_kernel_2mm0_shift_x_q = leftShiftStage0Idx1_uid303_i_cleanups_shl_kernel_2mm0_shift_x_q;
            default : leftShiftStage0_uid305_i_cleanups_shl_kernel_2mm0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_kernel_2mm5_vt_select_1(BITSELECT,114)@2
    assign i_cleanups_shl_kernel_2mm5_vt_select_1_b = leftShiftStage0_uid305_i_cleanups_shl_kernel_2mm0_shift_x_q[1:1];

    // i_cleanups_shl_kernel_2mm5_vt_join(BITJOIN,113)@2
    assign i_cleanups_shl_kernel_2mm5_vt_join_q = {i_cleanups_shl_kernel_2mm5_vt_select_1_b, GND_q};

    // i_notcmp_kernel_2mm38(LOGICAL,172)@2
    assign i_notcmp_kernel_2mm38_q = i_exitcond18_kernel_2mm36_cmp_nsign_q ^ VCC_q;

    // i_or_kernel_2mm40(LOGICAL,173)@2
    assign i_or_kernel_2mm40_q = i_notcmp_kernel_2mm38_q | i_first_cleanup_xor_kernel_2mm4_q;

    // i_next_cleanups_kernel_2mm41(MUX,168)@2
    assign i_next_cleanups_kernel_2mm41_s = i_or_kernel_2mm40_q;
    always @(i_next_cleanups_kernel_2mm41_s or i_llvm_fpga_pop_i2_cleanups_pop61_kernel_2mm2_out_data_out or i_cleanups_shl_kernel_2mm5_vt_join_q)
    begin
        unique case (i_next_cleanups_kernel_2mm41_s)
            1'b0 : i_next_cleanups_kernel_2mm41_q = i_llvm_fpga_pop_i2_cleanups_pop61_kernel_2mm2_out_data_out;
            1'b1 : i_next_cleanups_kernel_2mm41_q = i_cleanups_shl_kernel_2mm5_vt_join_q;
            default : i_next_cleanups_kernel_2mm41_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push61_kernel_2mm42(BLACKBOX,154)@2
    // out out_feedback_out_61@20000000
    // out out_feedback_valid_out_61@20000000
    kernel_2mm_i_llvm_fpga_push_i2_cleanups_push61_0 thei_llvm_fpga_push_i2_cleanups_push61_kernel_2mm42 (
        .in_data_in(i_next_cleanups_kernel_2mm41_q),
        .in_feedback_stall_in_61(i_llvm_fpga_pop_i2_cleanups_pop61_kernel_2mm2_out_feedback_stall_out_61),
        .in_keep_going(redist16_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist43_sync_together135_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_61(i_llvm_fpga_push_i2_cleanups_push61_kernel_2mm42_out_feedback_out_61),
        .out_feedback_valid_out_61(i_llvm_fpga_push_i2_cleanups_push61_kernel_2mm42_out_feedback_valid_out_61),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist23_sync_together135_aunroll_x_in_c0_eni17_1_tpl_1(DELAY,364)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together135_aunroll_x_in_c0_eni17_1_tpl_1_q <= '0;
        end
        else
        begin
            redist23_sync_together135_aunroll_x_in_c0_eni17_1_tpl_1_q <= $unsigned(in_c0_eni17_1_tpl);
        end
    end

    // c_i2_192(CONSTANT,99)
    assign c_i2_192_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop61_kernel_2mm2(BLACKBOX,138)@2
    // out out_feedback_stall_out_61@20000000
    kernel_2mm_i_llvm_fpga_pop_i2_cleanups_pop61_0 thei_llvm_fpga_pop_i2_cleanups_pop61_kernel_2mm2 (
        .in_data_in(c_i2_192_q),
        .in_dir(redist23_sync_together135_aunroll_x_in_c0_eni17_1_tpl_1_q),
        .in_feedback_in_61(i_llvm_fpga_push_i2_cleanups_push61_kernel_2mm42_out_feedback_out_61),
        .in_feedback_valid_in_61(i_llvm_fpga_push_i2_cleanups_push61_kernel_2mm42_out_feedback_valid_out_61),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist43_sync_together135_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop61_kernel_2mm2_out_data_out),
        .out_feedback_stall_out_61(i_llvm_fpga_pop_i2_cleanups_pop61_kernel_2mm2_out_feedback_stall_out_61),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_kernel_2mm3_sel_x(BITSELECT,44)@2
    assign i_first_cleanup_kernel_2mm3_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop61_kernel_2mm2_out_data_out[0:0];

    // i_first_cleanup_xor_kernel_2mm4(LOGICAL,117)@2
    assign i_first_cleanup_xor_kernel_2mm4_q = i_first_cleanup_kernel_2mm3_sel_x_b ^ VCC_q;

    // redist21_i_first_cleanup_xor_kernel_2mm4_q_3(DELAY,362)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_first_cleanup_xor_kernel_2mm4_q_3_delay_0 <= '0;
            redist21_i_first_cleanup_xor_kernel_2mm4_q_3_delay_1 <= '0;
            redist21_i_first_cleanup_xor_kernel_2mm4_q_3_q <= '0;
        end
        else
        begin
            redist21_i_first_cleanup_xor_kernel_2mm4_q_3_delay_0 <= $unsigned(i_first_cleanup_xor_kernel_2mm4_q);
            redist21_i_first_cleanup_xor_kernel_2mm4_q_3_delay_1 <= redist21_i_first_cleanup_xor_kernel_2mm4_q_3_delay_0;
            redist21_i_first_cleanup_xor_kernel_2mm4_q_3_q <= redist21_i_first_cleanup_xor_kernel_2mm4_q_3_delay_1;
        end
    end

    // c_kernel_2mm_tmp_pmem(CONSTANT,105)
    assign c_kernel_2mm_tmp_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx714_kernel_2mm0_trunc_sel_x_merged_bit_select(BITSELECT,339)@4
    assign i_arrayidx714_kernel_2mm0_trunc_sel_x_merged_bit_select_b = c_kernel_2mm_tmp_pmem_q[8:0];
    assign i_arrayidx714_kernel_2mm0_trunc_sel_x_merged_bit_select_c = c_kernel_2mm_tmp_pmem_q[63:9];

    // redist1_i_arrayidx714_kernel_2mm0_trunc_sel_x_merged_bit_select_c_1(DELAY,342)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_arrayidx714_kernel_2mm0_trunc_sel_x_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist1_i_arrayidx714_kernel_2mm0_trunc_sel_x_merged_bit_select_c_1_q <= $unsigned(i_arrayidx714_kernel_2mm0_trunc_sel_x_merged_bit_select_c);
        end
    end

    // c_i32_094(CONSTANT,100)
    assign c_i32_094_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg6(REG,196)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist44_sync_together135_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg15(REG,205)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist45_sync_together135_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist17_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_2(DELAY,358)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist17_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_2_q <= $unsigned(redist16_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_1_q);
        end
    end

    // redist18_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_4(DELAY,359)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_4_delay_0 <= '0;
            redist18_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_4_q <= '0;
        end
        else
        begin
            redist18_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_4_delay_0 <= $unsigned(redist17_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_2_q);
            redist18_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_4_q <= redist18_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_4_delay_0;
        end
    end

    // c_i32_195(CONSTANT,101)
    assign c_i32_195_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc78_kernel_2mm33(ADD,127)@5
    assign i_inc78_kernel_2mm33_a = {1'b0, redist9_i_llvm_fpga_pop_i32_k63_076_pop58_kernel_2mm15_out_data_out_1_q};
    assign i_inc78_kernel_2mm33_b = {1'b0, c_i32_195_q};
    assign i_inc78_kernel_2mm33_o = $unsigned(i_inc78_kernel_2mm33_a) + $unsigned(i_inc78_kernel_2mm33_b);
    assign i_inc78_kernel_2mm33_q = i_inc78_kernel_2mm33_o[32:0];

    // bgTrunc_i_inc78_kernel_2mm33_sel_x(BITSELECT,12)@5
    assign bgTrunc_i_inc78_kernel_2mm33_sel_x_b = i_inc78_kernel_2mm33_q[31:0];

    // i_llvm_fpga_push_i32_k63_076_push58_kernel_2mm34(BLACKBOX,158)@5
    // out out_feedback_out_58@20000000
    // out out_feedback_valid_out_58@20000000
    kernel_2mm_i_llvm_fpga_push_i32_k63_076_push58_0 thei_llvm_fpga_push_i32_k63_076_push58_kernel_2mm34 (
        .in_data_in(bgTrunc_i_inc78_kernel_2mm33_sel_x_b),
        .in_feedback_stall_in_58(i_llvm_fpga_pop_i32_k63_076_pop58_kernel_2mm15_out_feedback_stall_out_58),
        .in_keep_going(redist18_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_4_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_58(i_llvm_fpga_push_i32_k63_076_push58_kernel_2mm34_out_feedback_out_58),
        .out_feedback_valid_out_58(i_llvm_fpga_push_i32_k63_076_push58_kernel_2mm34_out_feedback_valid_out_58),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist24_sync_together135_aunroll_x_in_c0_eni17_1_tpl_3(DELAY,365)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together135_aunroll_x_in_c0_eni17_1_tpl_3_delay_0 <= '0;
            redist24_sync_together135_aunroll_x_in_c0_eni17_1_tpl_3_q <= '0;
        end
        else
        begin
            redist24_sync_together135_aunroll_x_in_c0_eni17_1_tpl_3_delay_0 <= $unsigned(redist23_sync_together135_aunroll_x_in_c0_eni17_1_tpl_1_q);
            redist24_sync_together135_aunroll_x_in_c0_eni17_1_tpl_3_q <= redist24_sync_together135_aunroll_x_in_c0_eni17_1_tpl_3_delay_0;
        end
    end

    // i_llvm_fpga_pop_i32_k63_076_pop58_kernel_2mm15(BLACKBOX,142)@4
    // out out_feedback_stall_out_58@20000000
    kernel_2mm_i_llvm_fpga_pop_i32_k63_076_pop58_0 thei_llvm_fpga_pop_i32_k63_076_pop58_kernel_2mm15 (
        .in_data_in(c_i32_094_q),
        .in_dir(redist24_sync_together135_aunroll_x_in_c0_eni17_1_tpl_3_q),
        .in_feedback_in_58(i_llvm_fpga_push_i32_k63_076_push58_kernel_2mm34_out_feedback_out_58),
        .in_feedback_valid_in_58(i_llvm_fpga_push_i32_k63_076_push58_kernel_2mm34_out_feedback_valid_out_58),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_k63_076_pop58_kernel_2mm15_out_data_out),
        .out_feedback_stall_out_58(i_llvm_fpga_pop_i32_k63_076_pop58_kernel_2mm15_out_feedback_stall_out_58),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_i_llvm_fpga_pop_i32_k63_076_pop58_kernel_2mm15_out_data_out_1(DELAY,350)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_llvm_fpga_pop_i32_k63_076_pop58_kernel_2mm15_out_data_out_1_q <= '0;
        end
        else
        begin
            redist9_i_llvm_fpga_pop_i32_k63_076_pop58_kernel_2mm15_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_k63_076_pop58_kernel_2mm15_out_data_out);
        end
    end

    // i_idxprom70_kernel_2mm16_sel_x(BITSELECT,46)@5
    assign i_idxprom70_kernel_2mm16_sel_x_b = {32'b00000000000000000000000000000000, redist9_i_llvm_fpga_pop_i32_k63_076_pop58_kernel_2mm15_out_data_out_1_q[31:0]};

    // i_idxprom70_kernel_2mm16_vt_select_31(BITSELECT,126)@5
    assign i_idxprom70_kernel_2mm16_vt_select_31_b = i_idxprom70_kernel_2mm16_sel_x_b[31:0];

    // i_idxprom70_kernel_2mm16_vt_join(BITJOIN,125)@5
    assign i_idxprom70_kernel_2mm16_vt_join_q = {c_i32_094_q, i_idxprom70_kernel_2mm16_vt_select_31_b};

    // i_arrayidx714_kernel_2mm0_dupName_3_trunc_sel_x(BITSELECT,19)@5
    assign i_arrayidx714_kernel_2mm0_dupName_3_trunc_sel_x_b = i_idxprom70_kernel_2mm16_vt_join_q[8:0];

    // i_arrayidx714_kernel_2mm0_narrow_x(BITSELECT,36)@5
    assign i_arrayidx714_kernel_2mm0_narrow_x_b = i_arrayidx714_kernel_2mm0_dupName_3_trunc_sel_x_b[6:0];

    // i_arrayidx714_kernel_2mm0_shift_join_x(BITJOIN,37)@5
    assign i_arrayidx714_kernel_2mm0_shift_join_x_q = {i_arrayidx714_kernel_2mm0_narrow_x_b, i_arrayidx714_kernel_2mm0_c_i2_02_x_q};

    // i_arrayidx714_kernel_2mm0_mult_multconst_x(CONSTANT,29)
    assign i_arrayidx714_kernel_2mm0_mult_multconst_x_q = $unsigned(3'b000);

    // valid_fanout_reg4(REG,194)@1 + 1
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

    // valid_fanout_reg5(REG,195)@1 + 1
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

    // i_llvm_fpga_push_i32_i48_078_pop25116_push62_kernel_2mm13(BLACKBOX,156)@2
    // out out_feedback_out_62@20000000
    // out out_feedback_valid_out_62@20000000
    kernel_2mm_i_llvm_fpga_push_i32_i48_078_pop25116_push62_0 thei_llvm_fpga_push_i32_i48_078_pop25116_push62_kernel_2mm13 (
        .in_data_in(i_llvm_fpga_pop_i32_i48_078_pop25116_pop62_kernel_2mm12_out_data_out),
        .in_feedback_stall_in_62(i_llvm_fpga_pop_i32_i48_078_pop25116_pop62_kernel_2mm12_out_feedback_stall_out_62),
        .in_keep_going(redist16_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_62(i_llvm_fpga_push_i32_i48_078_pop25116_push62_kernel_2mm13_out_feedback_out_62),
        .out_feedback_valid_out_62(i_llvm_fpga_push_i32_i48_078_pop25116_push62_kernel_2mm13_out_feedback_valid_out_62),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist27_sync_together135_aunroll_x_in_c0_eni17_2_tpl_1(DELAY,368)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together135_aunroll_x_in_c0_eni17_2_tpl_1_q <= '0;
        end
        else
        begin
            redist27_sync_together135_aunroll_x_in_c0_eni17_2_tpl_1_q <= $unsigned(in_c0_eni17_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_i48_078_pop25116_pop62_kernel_2mm12(BLACKBOX,140)@2
    // out out_feedback_stall_out_62@20000000
    kernel_2mm_i_llvm_fpga_pop_i32_i48_078_pop25116_pop62_0 thei_llvm_fpga_pop_i32_i48_078_pop25116_pop62_kernel_2mm12 (
        .in_data_in(redist27_sync_together135_aunroll_x_in_c0_eni17_2_tpl_1_q),
        .in_dir(redist23_sync_together135_aunroll_x_in_c0_eni17_1_tpl_1_q),
        .in_feedback_in_62(i_llvm_fpga_push_i32_i48_078_pop25116_push62_kernel_2mm13_out_feedback_out_62),
        .in_feedback_valid_in_62(i_llvm_fpga_push_i32_i48_078_pop25116_push62_kernel_2mm13_out_feedback_valid_out_62),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_i48_078_pop25116_pop62_kernel_2mm12_out_data_out),
        .out_feedback_stall_out_62(i_llvm_fpga_pop_i32_i48_078_pop25116_pop62_kernel_2mm12_out_feedback_stall_out_62),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom68_kernel_2mm14_sel_x(BITSELECT,45)@2
    assign i_idxprom68_kernel_2mm14_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i48_078_pop25116_pop62_kernel_2mm12_out_data_out[31:0]};

    // i_idxprom68_kernel_2mm14_vt_select_31(BITSELECT,122)@2
    assign i_idxprom68_kernel_2mm14_vt_select_31_b = i_idxprom68_kernel_2mm14_sel_x_b[31:0];

    // i_idxprom68_kernel_2mm14_vt_join(BITJOIN,121)@2
    assign i_idxprom68_kernel_2mm14_vt_join_q = {c_i32_094_q, i_idxprom68_kernel_2mm14_vt_select_31_b};

    // i_arrayidx714_kernel_2mm0_dupName_0_trunc_sel_x(BITSELECT,16)@2
    assign i_arrayidx714_kernel_2mm0_dupName_0_trunc_sel_x_b = i_idxprom68_kernel_2mm14_vt_join_q[8:0];

    // redist49_i_arrayidx714_kernel_2mm0_dupName_0_trunc_sel_x_b_1(DELAY,390)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist49_i_arrayidx714_kernel_2mm0_dupName_0_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist49_i_arrayidx714_kernel_2mm0_dupName_0_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx714_kernel_2mm0_dupName_0_trunc_sel_x_b);
        end
    end

    // addsumAHighB_uid262_i_arrayidx714_kernel_2mm0_mult_x(ADD,261)@3
    assign addsumAHighB_uid262_i_arrayidx714_kernel_2mm0_mult_x_a = {1'b0, redist49_i_arrayidx714_kernel_2mm0_dupName_0_trunc_sel_x_b_1_q};
    assign addsumAHighB_uid262_i_arrayidx714_kernel_2mm0_mult_x_b = {3'b000, lowRangeB_uid260_i_arrayidx714_kernel_2mm0_mult_x_merged_bit_select_c};
    assign addsumAHighB_uid262_i_arrayidx714_kernel_2mm0_mult_x_o = $unsigned(addsumAHighB_uid262_i_arrayidx714_kernel_2mm0_mult_x_a) + $unsigned(addsumAHighB_uid262_i_arrayidx714_kernel_2mm0_mult_x_b);
    assign addsumAHighB_uid262_i_arrayidx714_kernel_2mm0_mult_x_q = addsumAHighB_uid262_i_arrayidx714_kernel_2mm0_mult_x_o[9:0];

    // lowRangeB_uid260_i_arrayidx714_kernel_2mm0_mult_x_merged_bit_select(BITSELECT,337)@3
    assign lowRangeB_uid260_i_arrayidx714_kernel_2mm0_mult_x_merged_bit_select_b = redist49_i_arrayidx714_kernel_2mm0_dupName_0_trunc_sel_x_b_1_q[1:0];
    assign lowRangeB_uid260_i_arrayidx714_kernel_2mm0_mult_x_merged_bit_select_c = redist49_i_arrayidx714_kernel_2mm0_dupName_0_trunc_sel_x_b_1_q[8:2];

    // add_uid263_i_arrayidx714_kernel_2mm0_mult_x(BITJOIN,262)@3
    assign add_uid263_i_arrayidx714_kernel_2mm0_mult_x_q = {addsumAHighB_uid262_i_arrayidx714_kernel_2mm0_mult_x_q, lowRangeB_uid260_i_arrayidx714_kernel_2mm0_mult_x_merged_bit_select_b};

    // sR_mergedSignalTM_uid268_i_arrayidx714_kernel_2mm0_mult_x(BITJOIN,267)@3
    assign sR_mergedSignalTM_uid268_i_arrayidx714_kernel_2mm0_mult_x_q = {add_uid263_i_arrayidx714_kernel_2mm0_mult_x_q, i_arrayidx714_kernel_2mm0_mult_multconst_x_q};

    // i_arrayidx714_kernel_2mm0_mult_extender_x(BITJOIN,28)@3
    assign i_arrayidx714_kernel_2mm0_mult_extender_x_q = {i_arrayidx714_kernel_2mm0_mult_multconst_x_q, sR_mergedSignalTM_uid268_i_arrayidx714_kernel_2mm0_mult_x_q};

    // i_arrayidx714_kernel_2mm0_dupName_1_trunc_sel_x(BITSELECT,17)@3
    assign i_arrayidx714_kernel_2mm0_dupName_1_trunc_sel_x_b = i_arrayidx714_kernel_2mm0_mult_extender_x_q[8:0];

    // redist48_i_arrayidx714_kernel_2mm0_dupName_1_trunc_sel_x_b_1(DELAY,389)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_i_arrayidx714_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist48_i_arrayidx714_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx714_kernel_2mm0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx714_kernel_2mm0_add_x(ADD,31)@4
    assign i_arrayidx714_kernel_2mm0_add_x_a = {1'b0, i_arrayidx714_kernel_2mm0_trunc_sel_x_merged_bit_select_b};
    assign i_arrayidx714_kernel_2mm0_add_x_b = {1'b0, redist48_i_arrayidx714_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx714_kernel_2mm0_add_x_o = $unsigned(i_arrayidx714_kernel_2mm0_add_x_a) + $unsigned(i_arrayidx714_kernel_2mm0_add_x_b);
    assign i_arrayidx714_kernel_2mm0_add_x_q = i_arrayidx714_kernel_2mm0_add_x_o[9:0];

    // i_arrayidx714_kernel_2mm0_dupName_2_trunc_sel_x(BITSELECT,18)@4
    assign i_arrayidx714_kernel_2mm0_dupName_2_trunc_sel_x_b = i_arrayidx714_kernel_2mm0_add_x_q[8:0];

    // redist47_i_arrayidx714_kernel_2mm0_dupName_2_trunc_sel_x_b_1(DELAY,388)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_i_arrayidx714_kernel_2mm0_dupName_2_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist47_i_arrayidx714_kernel_2mm0_dupName_2_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx714_kernel_2mm0_dupName_2_trunc_sel_x_b);
        end
    end

    // i_arrayidx714_kernel_2mm0_dupName_0_add_x(ADD,22)@5
    assign i_arrayidx714_kernel_2mm0_dupName_0_add_x_a = {1'b0, redist47_i_arrayidx714_kernel_2mm0_dupName_2_trunc_sel_x_b_1_q};
    assign i_arrayidx714_kernel_2mm0_dupName_0_add_x_b = {1'b0, i_arrayidx714_kernel_2mm0_shift_join_x_q};
    assign i_arrayidx714_kernel_2mm0_dupName_0_add_x_o = $unsigned(i_arrayidx714_kernel_2mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx714_kernel_2mm0_dupName_0_add_x_b);
    assign i_arrayidx714_kernel_2mm0_dupName_0_add_x_q = i_arrayidx714_kernel_2mm0_dupName_0_add_x_o[9:0];

    // i_arrayidx714_kernel_2mm0_dupName_5_trunc_sel_x(BITSELECT,20)@5
    assign i_arrayidx714_kernel_2mm0_dupName_5_trunc_sel_x_b = i_arrayidx714_kernel_2mm0_dupName_0_add_x_q[8:0];

    // i_arrayidx714_kernel_2mm0_append_upper_bits_x(BITJOIN,32)@5
    assign i_arrayidx714_kernel_2mm0_append_upper_bits_x_q = {redist1_i_arrayidx714_kernel_2mm0_trunc_sel_x_merged_bit_select_c_1_q, i_arrayidx714_kernel_2mm0_dupName_5_trunc_sel_x_b};

    // i_arrayidx714_kernel_2mm17_vt_select_63(BITSELECT,111)@5
    assign i_arrayidx714_kernel_2mm17_vt_select_63_b = i_arrayidx714_kernel_2mm0_append_upper_bits_x_q[63:2];

    // i_arrayidx714_kernel_2mm0_c_i2_02_x(CONSTANT,33)
    assign i_arrayidx714_kernel_2mm0_c_i2_02_x_q = $unsigned(2'b00);

    // i_arrayidx714_kernel_2mm17_vt_join(BITJOIN,110)@5
    assign i_arrayidx714_kernel_2mm17_vt_join_q = {i_arrayidx714_kernel_2mm17_vt_select_63_b, i_arrayidx714_kernel_2mm0_c_i2_02_x_q};

    // i_llvm_fpga_mem_unnamed_kernel_2mm20_kernel_2mm18(BLACKBOX,130)@5
    // in in_i_stall@20000000
    // out out_o_readdata@9
    // out out_o_stall@8
    // out out_o_valid@9
    // out out_unnamed_kernel_2mm20_kernel_2mm_avm_address@20000000
    // out out_unnamed_kernel_2mm20_kernel_2mm_avm_burstcount@20000000
    // out out_unnamed_kernel_2mm20_kernel_2mm_avm_byteenable@20000000
    // out out_unnamed_kernel_2mm20_kernel_2mm_avm_enable@20000000
    // out out_unnamed_kernel_2mm20_kernel_2mm_avm_read@20000000
    // out out_unnamed_kernel_2mm20_kernel_2mm_avm_write@20000000
    // out out_unnamed_kernel_2mm20_kernel_2mm_avm_writedata@20000000
    kernel_2mm_i_llvm_fpga_mem_unnamed_20_kernel_2mm0 thei_llvm_fpga_mem_unnamed_kernel_2mm20_kernel_2mm18 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx714_kernel_2mm17_vt_join_q),
        .in_i_predicate(redist21_i_first_cleanup_xor_kernel_2mm4_q_3_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_unnamed_kernel_2mm20_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm20_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm20_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm20_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm20_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm20_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm20_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm20_kernel_2mm_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_kernel_2mm20_kernel_2mm18_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_kernel_2mm20_kernel_2mm_avm_address(i_llvm_fpga_mem_unnamed_kernel_2mm20_kernel_2mm18_out_unnamed_kernel_2mm20_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm20_kernel_2mm_avm_burstcount(i_llvm_fpga_mem_unnamed_kernel_2mm20_kernel_2mm18_out_unnamed_kernel_2mm20_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm20_kernel_2mm_avm_byteenable(i_llvm_fpga_mem_unnamed_kernel_2mm20_kernel_2mm18_out_unnamed_kernel_2mm20_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm20_kernel_2mm_avm_enable(i_llvm_fpga_mem_unnamed_kernel_2mm20_kernel_2mm18_out_unnamed_kernel_2mm20_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm20_kernel_2mm_avm_read(i_llvm_fpga_mem_unnamed_kernel_2mm20_kernel_2mm18_out_unnamed_kernel_2mm20_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm20_kernel_2mm_avm_write(i_llvm_fpga_mem_unnamed_kernel_2mm20_kernel_2mm18_out_unnamed_kernel_2mm20_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm20_kernel_2mm_avm_writedata(i_llvm_fpga_mem_unnamed_kernel_2mm20_kernel_2mm18_out_unnamed_kernel_2mm20_kernel_2mm_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,15)
    assign out_unnamed_kernel_2mm20_kernel_2mm_avm_address = i_llvm_fpga_mem_unnamed_kernel_2mm20_kernel_2mm18_out_unnamed_kernel_2mm20_kernel_2mm_avm_address;
    assign out_unnamed_kernel_2mm20_kernel_2mm_avm_enable = i_llvm_fpga_mem_unnamed_kernel_2mm20_kernel_2mm18_out_unnamed_kernel_2mm20_kernel_2mm_avm_enable;
    assign out_unnamed_kernel_2mm20_kernel_2mm_avm_read = i_llvm_fpga_mem_unnamed_kernel_2mm20_kernel_2mm18_out_unnamed_kernel_2mm20_kernel_2mm_avm_read;
    assign out_unnamed_kernel_2mm20_kernel_2mm_avm_write = i_llvm_fpga_mem_unnamed_kernel_2mm20_kernel_2mm18_out_unnamed_kernel_2mm20_kernel_2mm_avm_write;
    assign out_unnamed_kernel_2mm20_kernel_2mm_avm_writedata = i_llvm_fpga_mem_unnamed_kernel_2mm20_kernel_2mm18_out_unnamed_kernel_2mm20_kernel_2mm_avm_writedata;
    assign out_unnamed_kernel_2mm20_kernel_2mm_avm_byteenable = i_llvm_fpga_mem_unnamed_kernel_2mm20_kernel_2mm18_out_unnamed_kernel_2mm20_kernel_2mm_avm_byteenable;
    assign out_unnamed_kernel_2mm20_kernel_2mm_avm_burstcount = i_llvm_fpga_mem_unnamed_kernel_2mm20_kernel_2mm18_out_unnamed_kernel_2mm20_kernel_2mm_avm_burstcount;

    // redist46_sync_together135_aunroll_x_in_i_valid_5(DELAY,387)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_sync_together135_aunroll_x_in_i_valid_5_delay_0 <= '0;
            redist46_sync_together135_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist46_sync_together135_aunroll_x_in_i_valid_5_delay_0 <= $unsigned(redist45_sync_together135_aunroll_x_in_i_valid_3_q);
            redist46_sync_together135_aunroll_x_in_i_valid_5_q <= redist46_sync_together135_aunroll_x_in_i_valid_5_delay_0;
        end
    end

    // valid_fanout_reg0(REG,190)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist46_sync_together135_aunroll_x_in_i_valid_5_q);
        end
    end

    // redist4_valid_fanout_reg0_q_2(DELAY,345)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_valid_fanout_reg0_q_2_delay_0 <= '0;
            redist4_valid_fanout_reg0_q_2_q <= '0;
        end
        else
        begin
            redist4_valid_fanout_reg0_q_2_delay_0 <= $unsigned(valid_fanout_reg0_q);
            redist4_valid_fanout_reg0_q_2_q <= redist4_valid_fanout_reg0_q_2_delay_0;
        end
    end

    // redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_notEnable(LOGICAL,439)
    assign redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_notEnable_q = $unsigned(~ (VCC_q));

    // redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_nor(LOGICAL,440)
    assign redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_nor_q = ~ (redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_notEnable_q | redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_sticky_ena_q);

    // redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_mem_last(CONSTANT,436)
    assign redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_mem_last_q = $unsigned(4'b0100);

    // redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_cmp(LOGICAL,437)
    assign redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_cmp_b = {1'b0, redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_rdcnt_q};
    assign redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_cmp_q = $unsigned(redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_mem_last_q == redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_cmp_b ? 1'b1 : 1'b0);

    // redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_cmpReg(REG,438)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_cmpReg_q <= $unsigned(redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_cmp_q);
        end
    end

    // redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_sticky_ena(REG,441)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_nor_q == 1'b1)
        begin
            redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_sticky_ena_q <= $unsigned(redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_cmpReg_q);
        end
    end

    // redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_enaAnd(LOGICAL,442)
    assign redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_enaAnd_q = redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_sticky_ena_q & VCC_q;

    // redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_rdcnt(COUNTER,434)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_rdcnt_i <= 3'd0;
            redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_rdcnt_i == 3'd4)
            begin
                redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_rdcnt_eq <= 1'b0;
            end
            if (redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_rdcnt_eq == 1'b1)
            begin
                redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_rdcnt_i <= $unsigned(redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_rdcnt_i <= $unsigned(redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_rdcnt_q = redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_rdcnt_i[2:0];

    // redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_wraddr(REG,435)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_wraddr_q <= $unsigned(redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_rdcnt_q);
        end
    end

    // redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_mem(DUALMEM,433)
    assign redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_mem_ia = $unsigned(in_c0_eni17_17_tpl);
    assign redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_mem_aa = redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_wraddr_q;
    assign redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_mem_ab = redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_rdcnt_q;
    assign redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(32),
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
        .intended_device_family("Cyclone V")
    ) redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_mem_dmem (
        .clocken1(redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_mem_reset0),
        .clock1(clock),
        .address_a(redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_mem_aa),
        .data_a(redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_mem_ab),
        .q_b(redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_mem_iq),
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
    assign redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_mem_q = redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_mem_iq[31:0];

    // redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_outputreg0(DELAY,432)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_outputreg0_q <= '0;
        end
        else
        begin
            redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_outputreg0_q <= $unsigned(redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_mem_q);
        end
    end

    // redist41_sync_together135_aunroll_x_in_c0_eni17_16_tpl_8(DELAY,382)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist41_sync_together135_aunroll_x_in_c0_eni17_16_tpl_8 ( .xin(in_c0_eni17_16_tpl), .xout(redist41_sync_together135_aunroll_x_in_c0_eni17_16_tpl_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist40_sync_together135_aunroll_x_in_c0_eni17_15_tpl_8(DELAY,381)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist40_sync_together135_aunroll_x_in_c0_eni17_15_tpl_8 ( .xin(in_c0_eni17_15_tpl), .xout(redist40_sync_together135_aunroll_x_in_c0_eni17_15_tpl_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist39_sync_together135_aunroll_x_in_c0_eni17_14_tpl_8(DELAY,380)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist39_sync_together135_aunroll_x_in_c0_eni17_14_tpl_8 ( .xin(in_c0_eni17_14_tpl), .xout(redist39_sync_together135_aunroll_x_in_c0_eni17_14_tpl_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_notEnable(LOGICAL,428)
    assign redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_notEnable_q = $unsigned(~ (VCC_q));

    // redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_nor(LOGICAL,429)
    assign redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_nor_q = ~ (redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_notEnable_q | redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_sticky_ena_q);

    // redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_mem_last(CONSTANT,425)
    assign redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_mem_last_q = $unsigned(4'b0100);

    // redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_cmp(LOGICAL,426)
    assign redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_cmp_b = {1'b0, redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_rdcnt_q};
    assign redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_cmp_q = $unsigned(redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_mem_last_q == redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_cmp_b ? 1'b1 : 1'b0);

    // redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_cmpReg(REG,427)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_cmpReg_q <= $unsigned(redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_cmp_q);
        end
    end

    // redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_sticky_ena(REG,430)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_nor_q == 1'b1)
        begin
            redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_sticky_ena_q <= $unsigned(redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_cmpReg_q);
        end
    end

    // redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_enaAnd(LOGICAL,431)
    assign redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_enaAnd_q = redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_sticky_ena_q & VCC_q;

    // redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_rdcnt(COUNTER,423)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_rdcnt_i <= 3'd0;
            redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_rdcnt_i == 3'd4)
            begin
                redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_rdcnt_eq <= 1'b0;
            end
            if (redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_rdcnt_eq == 1'b1)
            begin
                redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_rdcnt_i <= $unsigned(redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_rdcnt_i <= $unsigned(redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_rdcnt_q = redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_rdcnt_i[2:0];

    // redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_wraddr(REG,424)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_wraddr_q <= $unsigned(redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_rdcnt_q);
        end
    end

    // redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_mem(DUALMEM,422)
    assign redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_mem_ia = $unsigned(in_c0_eni17_13_tpl);
    assign redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_mem_aa = redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_wraddr_q;
    assign redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_mem_ab = redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_rdcnt_q;
    assign redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(32),
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
        .intended_device_family("Cyclone V")
    ) redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_mem_dmem (
        .clocken1(redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_mem_reset0),
        .clock1(clock),
        .address_a(redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_mem_aa),
        .data_a(redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_mem_ab),
        .q_b(redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_mem_iq),
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
    assign redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_mem_q = redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_mem_iq[31:0];

    // redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_outputreg0(DELAY,421)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_outputreg0_q <= '0;
        end
        else
        begin
            redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_outputreg0_q <= $unsigned(redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_mem_q);
        end
    end

    // redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_notEnable(LOGICAL,417)
    assign redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_notEnable_q = $unsigned(~ (VCC_q));

    // redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_nor(LOGICAL,418)
    assign redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_nor_q = ~ (redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_notEnable_q | redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_sticky_ena_q);

    // redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_mem_last(CONSTANT,414)
    assign redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_mem_last_q = $unsigned(4'b0100);

    // redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_cmp(LOGICAL,415)
    assign redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_cmp_b = {1'b0, redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_rdcnt_q};
    assign redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_cmp_q = $unsigned(redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_mem_last_q == redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_cmp_b ? 1'b1 : 1'b0);

    // redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_cmpReg(REG,416)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_cmpReg_q <= $unsigned(redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_cmp_q);
        end
    end

    // redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_sticky_ena(REG,419)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_nor_q == 1'b1)
        begin
            redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_sticky_ena_q <= $unsigned(redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_cmpReg_q);
        end
    end

    // redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_enaAnd(LOGICAL,420)
    assign redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_enaAnd_q = redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_sticky_ena_q & VCC_q;

    // redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_rdcnt(COUNTER,412)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_rdcnt_i <= 3'd0;
            redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_rdcnt_i == 3'd4)
            begin
                redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_rdcnt_eq <= 1'b0;
            end
            if (redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_rdcnt_eq == 1'b1)
            begin
                redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_rdcnt_i <= $unsigned(redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_rdcnt_i <= $unsigned(redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_rdcnt_q = redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_rdcnt_i[2:0];

    // redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_wraddr(REG,413)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_wraddr_q <= $unsigned(redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_rdcnt_q);
        end
    end

    // redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_mem(DUALMEM,411)
    assign redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_mem_ia = $unsigned(in_c0_eni17_12_tpl);
    assign redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_mem_aa = redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_wraddr_q;
    assign redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_mem_ab = redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_rdcnt_q;
    assign redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(32),
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
        .intended_device_family("Cyclone V")
    ) redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_mem_dmem (
        .clocken1(redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_mem_reset0),
        .clock1(clock),
        .address_a(redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_mem_aa),
        .data_a(redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_mem_ab),
        .q_b(redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_mem_iq),
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
    assign redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_mem_q = redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_mem_iq[31:0];

    // redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_outputreg0(DELAY,410)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_outputreg0_q <= '0;
        end
        else
        begin
            redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_outputreg0_q <= $unsigned(redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_mem_q);
        end
    end

    // redist25_sync_together135_aunroll_x_in_c0_eni17_1_tpl_6(DELAY,366)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together135_aunroll_x_in_c0_eni17_1_tpl_6_delay_0 <= '0;
            redist25_sync_together135_aunroll_x_in_c0_eni17_1_tpl_6_delay_1 <= '0;
            redist25_sync_together135_aunroll_x_in_c0_eni17_1_tpl_6_q <= '0;
        end
        else
        begin
            redist25_sync_together135_aunroll_x_in_c0_eni17_1_tpl_6_delay_0 <= $unsigned(redist24_sync_together135_aunroll_x_in_c0_eni17_1_tpl_3_q);
            redist25_sync_together135_aunroll_x_in_c0_eni17_1_tpl_6_delay_1 <= redist25_sync_together135_aunroll_x_in_c0_eni17_1_tpl_6_delay_0;
            redist25_sync_together135_aunroll_x_in_c0_eni17_1_tpl_6_q <= redist25_sync_together135_aunroll_x_in_c0_eni17_1_tpl_6_delay_1;
        end
    end

    // redist26_sync_together135_aunroll_x_in_c0_eni17_1_tpl_8(DELAY,367)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together135_aunroll_x_in_c0_eni17_1_tpl_8_delay_0 <= '0;
            redist26_sync_together135_aunroll_x_in_c0_eni17_1_tpl_8_q <= '0;
        end
        else
        begin
            redist26_sync_together135_aunroll_x_in_c0_eni17_1_tpl_8_delay_0 <= $unsigned(redist25_sync_together135_aunroll_x_in_c0_eni17_1_tpl_6_q);
            redist26_sync_together135_aunroll_x_in_c0_eni17_1_tpl_8_q <= redist26_sync_together135_aunroll_x_in_c0_eni17_1_tpl_8_delay_0;
        end
    end

    // valid_fanout_reg26(REG,216)@1 + 1
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

    // valid_fanout_reg27(REG,217)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp41131_push70_kernel_2mm57(BLACKBOX,151)@2
    // out out_feedback_out_70@20000000
    // out out_feedback_valid_out_70@20000000
    kernel_2mm_i_llvm_fpga_push_i1_notcmp41131_push70_0 thei_llvm_fpga_push_i1_notcmp41131_push70_kernel_2mm57 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp41131_pop70_kernel_2mm56_out_data_out),
        .in_feedback_stall_in_70(i_llvm_fpga_pop_i1_notcmp41131_pop70_kernel_2mm56_out_feedback_stall_out_70),
        .in_keep_going(redist16_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg27_q),
        .out_data_out(),
        .out_feedback_out_70(i_llvm_fpga_push_i1_notcmp41131_push70_kernel_2mm57_out_feedback_out_70),
        .out_feedback_valid_out_70(i_llvm_fpga_push_i1_notcmp41131_push70_kernel_2mm57_out_feedback_valid_out_70),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist36_sync_together135_aunroll_x_in_c0_eni17_11_tpl_1(DELAY,377)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together135_aunroll_x_in_c0_eni17_11_tpl_1_q <= '0;
        end
        else
        begin
            redist36_sync_together135_aunroll_x_in_c0_eni17_11_tpl_1_q <= $unsigned(in_c0_eni17_11_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp41131_pop70_kernel_2mm56(BLACKBOX,136)@2
    // out out_feedback_stall_out_70@20000000
    kernel_2mm_i_llvm_fpga_pop_i1_notcmp41131_pop70_0 thei_llvm_fpga_pop_i1_notcmp41131_pop70_kernel_2mm56 (
        .in_data_in(redist36_sync_together135_aunroll_x_in_c0_eni17_11_tpl_1_q),
        .in_dir(redist23_sync_together135_aunroll_x_in_c0_eni17_1_tpl_1_q),
        .in_feedback_in_70(i_llvm_fpga_push_i1_notcmp41131_push70_kernel_2mm57_out_feedback_out_70),
        .in_feedback_valid_in_70(i_llvm_fpga_push_i1_notcmp41131_push70_kernel_2mm57_out_feedback_valid_out_70),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp41131_pop70_kernel_2mm56_out_data_out),
        .out_feedback_stall_out_70(i_llvm_fpga_pop_i1_notcmp41131_pop70_kernel_2mm56_out_feedback_stall_out_70),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist13_i_llvm_fpga_pop_i1_notcmp41131_pop70_kernel_2mm56_out_data_out_7(DELAY,354)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist13_i_llvm_fpga_pop_i1_notcmp41131_pop70_kernel_2mm56_out_data_out_7 ( .xin(i_llvm_fpga_pop_i1_notcmp41131_pop70_kernel_2mm56_out_data_out), .xout(redist13_i_llvm_fpga_pop_i1_notcmp41131_pop70_kernel_2mm56_out_data_out_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg24(REG,214)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg24_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(redist46_sync_together135_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg25(REG,215)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg25_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(redist46_sync_together135_aunroll_x_in_i_valid_5_q);
        end
    end

    // redist19_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_6(DELAY,360)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_6_delay_0 <= '0;
            redist19_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_6_q <= '0;
        end
        else
        begin
            redist19_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_6_delay_0 <= $unsigned(redist18_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_4_q);
            redist19_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_6_q <= redist19_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_6_delay_0;
        end
    end

    // i_llvm_fpga_push_i1_exitcond21130_push69_kernel_2mm55(BLACKBOX,146)@7
    // out out_feedback_out_69@20000000
    // out out_feedback_valid_out_69@20000000
    kernel_2mm_i_llvm_fpga_push_i1_exitcond21130_push69_0 thei_llvm_fpga_push_i1_exitcond21130_push69_kernel_2mm55 (
        .in_data_in(i_llvm_fpga_pop_i1_exitcond21130_pop69_kernel_2mm54_out_data_out),
        .in_feedback_stall_in_69(i_llvm_fpga_pop_i1_exitcond21130_pop69_kernel_2mm54_out_feedback_stall_out_69),
        .in_keep_going(redist19_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_6_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_data_out(),
        .out_feedback_out_69(i_llvm_fpga_push_i1_exitcond21130_push69_kernel_2mm55_out_feedback_out_69),
        .out_feedback_valid_out_69(i_llvm_fpga_push_i1_exitcond21130_push69_kernel_2mm55_out_feedback_valid_out_69),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist35_sync_together135_aunroll_x_in_c0_eni17_10_tpl_6(DELAY,376)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist35_sync_together135_aunroll_x_in_c0_eni17_10_tpl_6 ( .xin(in_c0_eni17_10_tpl), .xout(redist35_sync_together135_aunroll_x_in_c0_eni17_10_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i1_exitcond21130_pop69_kernel_2mm54(BLACKBOX,132)@7
    // out out_feedback_stall_out_69@20000000
    kernel_2mm_i_llvm_fpga_pop_i1_exitcond21130_pop69_0 thei_llvm_fpga_pop_i1_exitcond21130_pop69_kernel_2mm54 (
        .in_data_in(redist35_sync_together135_aunroll_x_in_c0_eni17_10_tpl_6_q),
        .in_dir(redist25_sync_together135_aunroll_x_in_c0_eni17_1_tpl_6_q),
        .in_feedback_in_69(i_llvm_fpga_push_i1_exitcond21130_push69_kernel_2mm55_out_feedback_out_69),
        .in_feedback_valid_in_69(i_llvm_fpga_push_i1_exitcond21130_push69_kernel_2mm55_out_feedback_valid_out_69),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond21130_pop69_kernel_2mm54_out_data_out),
        .out_feedback_stall_out_69(i_llvm_fpga_pop_i1_exitcond21130_pop69_kernel_2mm54_out_feedback_stall_out_69),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist15_i_llvm_fpga_pop_i1_exitcond21130_pop69_kernel_2mm54_out_data_out_2(DELAY,356)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_llvm_fpga_pop_i1_exitcond21130_pop69_kernel_2mm54_out_data_out_2_delay_0 <= '0;
            redist15_i_llvm_fpga_pop_i1_exitcond21130_pop69_kernel_2mm54_out_data_out_2_q <= '0;
        end
        else
        begin
            redist15_i_llvm_fpga_pop_i1_exitcond21130_pop69_kernel_2mm54_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_exitcond21130_pop69_kernel_2mm54_out_data_out);
            redist15_i_llvm_fpga_pop_i1_exitcond21130_pop69_kernel_2mm54_out_data_out_2_q <= redist15_i_llvm_fpga_pop_i1_exitcond21130_pop69_kernel_2mm54_out_data_out_2_delay_0;
        end
    end

    // redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_notEnable(LOGICAL,398)
    assign redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_nor(LOGICAL,399)
    assign redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_nor_q = ~ (redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_notEnable_q | redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_sticky_ena_q);

    // redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_mem_last(CONSTANT,395)
    assign redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_mem_last_q = $unsigned(3'b011);

    // redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_cmp(LOGICAL,396)
    assign redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_cmp_q = $unsigned(redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_mem_last_q == redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_rdcnt_q ? 1'b1 : 1'b0);

    // redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_cmpReg(REG,397)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_cmpReg_q <= $unsigned(redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_cmp_q);
        end
    end

    // redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_sticky_ena(REG,400)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_nor_q == 1'b1)
        begin
            redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_sticky_ena_q <= $unsigned(redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_cmpReg_q);
        end
    end

    // redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_enaAnd(LOGICAL,401)
    assign redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_enaAnd_q = redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_sticky_ena_q & VCC_q;

    // redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_rdcnt(COUNTER,393)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_rdcnt_i <= 3'd0;
            redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_rdcnt_i == 3'd3)
            begin
                redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_rdcnt_eq <= 1'b0;
            end
            if (redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_rdcnt_eq == 1'b1)
            begin
                redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_rdcnt_i <= $unsigned(redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_rdcnt_i <= $unsigned(redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_rdcnt_q = redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_rdcnt_i[2:0];

    // valid_fanout_reg22(REG,212)@1 + 1
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

    // valid_fanout_reg23(REG,213)@1 + 1
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

    // i_llvm_fpga_push_p1025i32_mptr_bitcast_index92129_push68_kernel_2mm53(BLACKBOX,161)@2
    // out out_feedback_out_68@20000000
    // out out_feedback_valid_out_68@20000000
    kernel_2mm_i_llvm_fpga_push_p1025i32_mpt0000_index92129_push68_0 thei_llvm_fpga_push_p1025i32_mptr_bitcast_index92129_push68_kernel_2mm53 (
        .in_data_in(i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out),
        .in_feedback_stall_in_68(i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_feedback_stall_out_68),
        .in_keep_going(redist16_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(),
        .out_feedback_out_68(i_llvm_fpga_push_p1025i32_mptr_bitcast_index92129_push68_kernel_2mm53_out_feedback_out_68),
        .out_feedback_valid_out_68(i_llvm_fpga_push_p1025i32_mptr_bitcast_index92129_push68_kernel_2mm53_out_feedback_valid_out_68),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist34_sync_together135_aunroll_x_in_c0_eni17_9_tpl_1(DELAY,375)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_sync_together135_aunroll_x_in_c0_eni17_9_tpl_1_q <= '0;
        end
        else
        begin
            redist34_sync_together135_aunroll_x_in_c0_eni17_9_tpl_1_q <= $unsigned(in_c0_eni17_9_tpl);
        end
    end

    // i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52(BLACKBOX,145)@2
    // out out_feedback_stall_out_68@20000000
    kernel_2mm_i_llvm_fpga_pop_p1025i32_mptr0000t_index92129_pop68_0 thei_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52 (
        .in_data_in(redist34_sync_together135_aunroll_x_in_c0_eni17_9_tpl_1_q),
        .in_dir(redist23_sync_together135_aunroll_x_in_c0_eni17_1_tpl_1_q),
        .in_feedback_in_68(i_llvm_fpga_push_p1025i32_mptr_bitcast_index92129_push68_kernel_2mm53_out_feedback_out_68),
        .in_feedback_valid_in_68(i_llvm_fpga_push_p1025i32_mptr_bitcast_index92129_push68_kernel_2mm53_out_feedback_valid_out_68),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out),
        .out_feedback_stall_out_68(i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_feedback_stall_out_68),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_wraddr(REG,394)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_wraddr_q <= $unsigned(redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_rdcnt_q);
        end
    end

    // redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_mem(DUALMEM,392)
    assign redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_mem_ia = $unsigned(i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out);
    assign redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_mem_aa = redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_wraddr_q;
    assign redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_mem_ab = redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_rdcnt_q;
    assign redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(3),
        .numwords_a(5),
        .width_b(64),
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
    ) redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_mem_dmem (
        .clocken1(redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_mem_reset0),
        .clock1(clock),
        .address_a(redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_mem_aa),
        .data_a(redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_mem_ab),
        .q_b(redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_mem_iq),
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
    assign redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_mem_q = redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_mem_iq[63:0];

    // redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_outputreg0(DELAY,391)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_outputreg0_q <= '0;
        end
        else
        begin
            redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_outputreg0_q <= $unsigned(redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_mem_q);
        end
    end

    // valid_fanout_reg20(REG,210)@1 + 1
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

    // valid_fanout_reg21(REG,211)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp46122_push65_kernel_2mm51(BLACKBOX,152)@2
    // out out_feedback_out_65@20000000
    // out out_feedback_valid_out_65@20000000
    kernel_2mm_i_llvm_fpga_push_i1_notcmp46122_push65_0 thei_llvm_fpga_push_i1_notcmp46122_push65_kernel_2mm51 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp46122_pop65_kernel_2mm50_out_data_out),
        .in_feedback_stall_in_65(i_llvm_fpga_pop_i1_notcmp46122_pop65_kernel_2mm50_out_feedback_stall_out_65),
        .in_keep_going(redist16_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(),
        .out_feedback_out_65(i_llvm_fpga_push_i1_notcmp46122_push65_kernel_2mm51_out_feedback_out_65),
        .out_feedback_valid_out_65(i_llvm_fpga_push_i1_notcmp46122_push65_kernel_2mm51_out_feedback_valid_out_65),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist33_sync_together135_aunroll_x_in_c0_eni17_8_tpl_1(DELAY,374)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_sync_together135_aunroll_x_in_c0_eni17_8_tpl_1_q <= '0;
        end
        else
        begin
            redist33_sync_together135_aunroll_x_in_c0_eni17_8_tpl_1_q <= $unsigned(in_c0_eni17_8_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp46122_pop65_kernel_2mm50(BLACKBOX,137)@2
    // out out_feedback_stall_out_65@20000000
    kernel_2mm_i_llvm_fpga_pop_i1_notcmp46122_pop65_0 thei_llvm_fpga_pop_i1_notcmp46122_pop65_kernel_2mm50 (
        .in_data_in(redist33_sync_together135_aunroll_x_in_c0_eni17_8_tpl_1_q),
        .in_dir(redist23_sync_together135_aunroll_x_in_c0_eni17_1_tpl_1_q),
        .in_feedback_in_65(i_llvm_fpga_push_i1_notcmp46122_push65_kernel_2mm51_out_feedback_out_65),
        .in_feedback_valid_in_65(i_llvm_fpga_push_i1_notcmp46122_push65_kernel_2mm51_out_feedback_valid_out_65),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp46122_pop65_kernel_2mm50_out_data_out),
        .out_feedback_stall_out_65(i_llvm_fpga_pop_i1_notcmp46122_pop65_kernel_2mm50_out_feedback_stall_out_65),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist12_i_llvm_fpga_pop_i1_notcmp46122_pop65_kernel_2mm50_out_data_out_7(DELAY,353)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist12_i_llvm_fpga_pop_i1_notcmp46122_pop65_kernel_2mm50_out_data_out_7 ( .xin(i_llvm_fpga_pop_i1_notcmp46122_pop65_kernel_2mm50_out_data_out), .xout(redist12_i_llvm_fpga_pop_i1_notcmp46122_pop65_kernel_2mm50_out_data_out_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg18(REG,208)@1 + 1
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

    // valid_fanout_reg19(REG,209)@1 + 1
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

    // i_llvm_fpga_push_i1_exitcond24120_push64_kernel_2mm49(BLACKBOX,147)@2
    // out out_feedback_out_64@20000000
    // out out_feedback_valid_out_64@20000000
    kernel_2mm_i_llvm_fpga_push_i1_exitcond24120_push64_0 thei_llvm_fpga_push_i1_exitcond24120_push64_kernel_2mm49 (
        .in_data_in(i_llvm_fpga_pop_i1_exitcond24120_pop64_kernel_2mm48_out_data_out),
        .in_feedback_stall_in_64(i_llvm_fpga_pop_i1_exitcond24120_pop64_kernel_2mm48_out_feedback_stall_out_64),
        .in_keep_going(redist16_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(),
        .out_feedback_out_64(i_llvm_fpga_push_i1_exitcond24120_push64_kernel_2mm49_out_feedback_out_64),
        .out_feedback_valid_out_64(i_llvm_fpga_push_i1_exitcond24120_push64_kernel_2mm49_out_feedback_valid_out_64),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist32_sync_together135_aunroll_x_in_c0_eni17_7_tpl_1(DELAY,373)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together135_aunroll_x_in_c0_eni17_7_tpl_1_q <= '0;
        end
        else
        begin
            redist32_sync_together135_aunroll_x_in_c0_eni17_7_tpl_1_q <= $unsigned(in_c0_eni17_7_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_exitcond24120_pop64_kernel_2mm48(BLACKBOX,133)@2
    // out out_feedback_stall_out_64@20000000
    kernel_2mm_i_llvm_fpga_pop_i1_exitcond24120_pop64_0 thei_llvm_fpga_pop_i1_exitcond24120_pop64_kernel_2mm48 (
        .in_data_in(redist32_sync_together135_aunroll_x_in_c0_eni17_7_tpl_1_q),
        .in_dir(redist23_sync_together135_aunroll_x_in_c0_eni17_1_tpl_1_q),
        .in_feedback_in_64(i_llvm_fpga_push_i1_exitcond24120_push64_kernel_2mm49_out_feedback_out_64),
        .in_feedback_valid_in_64(i_llvm_fpga_push_i1_exitcond24120_push64_kernel_2mm49_out_feedback_valid_out_64),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond24120_pop64_kernel_2mm48_out_data_out),
        .out_feedback_stall_out_64(i_llvm_fpga_pop_i1_exitcond24120_pop64_kernel_2mm48_out_feedback_stall_out_64),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist14_i_llvm_fpga_pop_i1_exitcond24120_pop64_kernel_2mm48_out_data_out_7(DELAY,355)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist14_i_llvm_fpga_pop_i1_exitcond24120_pop64_kernel_2mm48_out_data_out_7 ( .xin(i_llvm_fpga_pop_i1_exitcond24120_pop64_kernel_2mm48_out_data_out), .xout(redist14_i_llvm_fpga_pop_i1_exitcond24120_pop64_kernel_2mm48_out_data_out_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_masked_kernel_2mm45(LOGICAL,162)@2 + 1
    assign i_masked_kernel_2mm45_qi = i_notcmp_kernel_2mm38_q & i_first_cleanup_kernel_2mm3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_kernel_2mm45_delay ( .xin(i_masked_kernel_2mm45_qi), .xout(i_masked_kernel_2mm45_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist7_i_masked_kernel_2mm45_q_7(DELAY,348)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist7_i_masked_kernel_2mm45_q_7 ( .xin(i_masked_kernel_2mm45_q), .xout(redist7_i_masked_kernel_2mm45_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg11(REG,201)@1 + 1
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

    // valid_fanout_reg12(REG,202)@1 + 1
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

    // i_llvm_fpga_push_i1_memdep_phi3_pop26124_push66_kernel_2mm29(BLACKBOX,149)@2
    // out out_feedback_out_66@20000000
    // out out_feedback_valid_out_66@20000000
    kernel_2mm_i_llvm_fpga_push_i1_memdep_phi3_pop26124_push66_0 thei_llvm_fpga_push_i1_memdep_phi3_pop26124_push66_kernel_2mm29 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi3_pop26124_pop66_kernel_2mm28_out_data_out),
        .in_feedback_stall_in_66(i_llvm_fpga_pop_i1_memdep_phi3_pop26124_pop66_kernel_2mm28_out_feedback_stall_out_66),
        .in_keep_going(redist16_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_66(i_llvm_fpga_push_i1_memdep_phi3_pop26124_push66_kernel_2mm29_out_feedback_out_66),
        .out_feedback_valid_out_66(i_llvm_fpga_push_i1_memdep_phi3_pop26124_push66_kernel_2mm29_out_feedback_valid_out_66),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist29_sync_together135_aunroll_x_in_c0_eni17_4_tpl_1(DELAY,370)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together135_aunroll_x_in_c0_eni17_4_tpl_1_q <= '0;
        end
        else
        begin
            redist29_sync_together135_aunroll_x_in_c0_eni17_4_tpl_1_q <= $unsigned(in_c0_eni17_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi3_pop26124_pop66_kernel_2mm28(BLACKBOX,134)@2
    // out out_feedback_stall_out_66@20000000
    kernel_2mm_i_llvm_fpga_pop_i1_memdep_phi3_pop26124_pop66_0 thei_llvm_fpga_pop_i1_memdep_phi3_pop26124_pop66_kernel_2mm28 (
        .in_data_in(redist29_sync_together135_aunroll_x_in_c0_eni17_4_tpl_1_q),
        .in_dir(redist23_sync_together135_aunroll_x_in_c0_eni17_1_tpl_1_q),
        .in_feedback_in_66(i_llvm_fpga_push_i1_memdep_phi3_pop26124_push66_kernel_2mm29_out_feedback_out_66),
        .in_feedback_valid_in_66(i_llvm_fpga_push_i1_memdep_phi3_pop26124_push66_kernel_2mm29_out_feedback_valid_out_66),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi3_pop26124_pop66_kernel_2mm28_out_data_out),
        .out_feedback_stall_out_66(i_llvm_fpga_pop_i1_memdep_phi3_pop26124_pop66_kernel_2mm28_out_feedback_stall_out_66),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg13(REG,203)@1 + 1
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

    // valid_fanout_reg14(REG,204)@1 + 1
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

    // i_llvm_fpga_push_i1_memdep_phi_pop40132_push71_kernel_2mm31(BLACKBOX,150)@2
    // out out_feedback_out_71@20000000
    // out out_feedback_valid_out_71@20000000
    kernel_2mm_i_llvm_fpga_push_i1_memdep_phi_pop40132_push71_0 thei_llvm_fpga_push_i1_memdep_phi_pop40132_push71_kernel_2mm31 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi_pop40132_pop71_kernel_2mm30_out_data_out),
        .in_feedback_stall_in_71(i_llvm_fpga_pop_i1_memdep_phi_pop40132_pop71_kernel_2mm30_out_feedback_stall_out_71),
        .in_keep_going(redist16_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_71(i_llvm_fpga_push_i1_memdep_phi_pop40132_push71_kernel_2mm31_out_feedback_out_71),
        .out_feedback_valid_out_71(i_llvm_fpga_push_i1_memdep_phi_pop40132_push71_kernel_2mm31_out_feedback_valid_out_71),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist30_sync_together135_aunroll_x_in_c0_eni17_5_tpl_1(DELAY,371)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_sync_together135_aunroll_x_in_c0_eni17_5_tpl_1_q <= '0;
        end
        else
        begin
            redist30_sync_together135_aunroll_x_in_c0_eni17_5_tpl_1_q <= $unsigned(in_c0_eni17_5_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop40132_pop71_kernel_2mm30(BLACKBOX,135)@2
    // out out_feedback_stall_out_71@20000000
    kernel_2mm_i_llvm_fpga_pop_i1_memdep_phi_pop40132_pop71_0 thei_llvm_fpga_pop_i1_memdep_phi_pop40132_pop71_kernel_2mm30 (
        .in_data_in(redist30_sync_together135_aunroll_x_in_c0_eni17_5_tpl_1_q),
        .in_dir(redist23_sync_together135_aunroll_x_in_c0_eni17_1_tpl_1_q),
        .in_feedback_in_71(i_llvm_fpga_push_i1_memdep_phi_pop40132_push71_kernel_2mm31_out_feedback_out_71),
        .in_feedback_valid_in_71(i_llvm_fpga_push_i1_memdep_phi_pop40132_push71_kernel_2mm31_out_feedback_valid_out_71),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop40132_pop71_kernel_2mm30_out_data_out),
        .out_feedback_stall_out_71(i_llvm_fpga_pop_i1_memdep_phi_pop40132_pop71_kernel_2mm30_out_feedback_stall_out_71),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_memdep_phi3_or_kernel_2mm32(LOGICAL,163)@2 + 1
    assign i_memdep_phi3_or_kernel_2mm32_qi = i_llvm_fpga_pop_i1_memdep_phi_pop40132_pop71_kernel_2mm30_out_data_out | i_llvm_fpga_pop_i1_memdep_phi3_pop26124_pop66_kernel_2mm28_out_data_out;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_memdep_phi3_or_kernel_2mm32_delay ( .xin(i_memdep_phi3_or_kernel_2mm32_qi), .xout(i_memdep_phi3_or_kernel_2mm32_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist6_i_memdep_phi3_or_kernel_2mm32_q_7(DELAY,347)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist6_i_memdep_phi3_or_kernel_2mm32_q_7 ( .xin(i_memdep_phi3_or_kernel_2mm32_q), .xout(redist6_i_memdep_phi3_or_kernel_2mm32_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_mptr_bitcast_index88_kernel_2mm0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select(BITSELECT,338)
    assign i_mptr_bitcast_index88_kernel_2mm0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in = c_i32_094_q[29:0];
    assign i_mptr_bitcast_index88_kernel_2mm0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_b = i_mptr_bitcast_index88_kernel_2mm0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in[25:0];
    assign i_mptr_bitcast_index88_kernel_2mm0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_c = i_mptr_bitcast_index88_kernel_2mm0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in[29:26];

    // redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_notEnable(LOGICAL,406)
    assign redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_nor(LOGICAL,407)
    assign redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_nor_q = ~ (redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_notEnable_q | redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_sticky_ena_q);

    // redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_cmpReg(REG,405)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_sticky_ena(REG,408)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_nor_q == 1'b1)
        begin
            redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_sticky_ena_q <= $unsigned(redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_cmpReg_q);
        end
    end

    // redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_enaAnd(LOGICAL,409)
    assign redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_enaAnd_q = redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_sticky_ena_q & VCC_q;

    // redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_rdcnt(COUNTER,403)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_rdcnt_i <= $unsigned(redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_rdcnt_q = redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_rdcnt_i[0:0];

    // valid_fanout_reg8(REG,198)@1 + 1
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

    // valid_fanout_reg9(REG,199)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist43_sync_together135_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i32_j53_077_pop39128_push67_kernel_2mm23(BLACKBOX,157)@3
    // out out_feedback_out_67@20000000
    // out out_feedback_valid_out_67@20000000
    kernel_2mm_i_llvm_fpga_push_i32_j53_077_pop39128_push67_0 thei_llvm_fpga_push_i32_j53_077_pop39128_push67_kernel_2mm23 (
        .in_data_in(redist10_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_1_q),
        .in_feedback_stall_in_67(i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_feedback_stall_out_67),
        .in_keep_going(redist17_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_67(i_llvm_fpga_push_i32_j53_077_pop39128_push67_kernel_2mm23_out_feedback_out_67),
        .out_feedback_valid_out_67(i_llvm_fpga_push_i32_j53_077_pop39128_push67_kernel_2mm23_out_feedback_valid_out_67),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist28_sync_together135_aunroll_x_in_c0_eni17_3_tpl_1(DELAY,369)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together135_aunroll_x_in_c0_eni17_3_tpl_1_q <= '0;
        end
        else
        begin
            redist28_sync_together135_aunroll_x_in_c0_eni17_3_tpl_1_q <= $unsigned(in_c0_eni17_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22(BLACKBOX,141)@2
    // out out_feedback_stall_out_67@20000000
    kernel_2mm_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_0 thei_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22 (
        .in_data_in(redist28_sync_together135_aunroll_x_in_c0_eni17_3_tpl_1_q),
        .in_dir(redist23_sync_together135_aunroll_x_in_c0_eni17_1_tpl_1_q),
        .in_feedback_in_67(i_llvm_fpga_push_i32_j53_077_pop39128_push67_kernel_2mm23_out_feedback_out_67),
        .in_feedback_valid_in_67(i_llvm_fpga_push_i32_j53_077_pop39128_push67_kernel_2mm23_out_feedback_valid_out_67),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out),
        .out_feedback_stall_out_67(i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_feedback_stall_out_67),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_1(DELAY,351)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_1_q <= '0;
        end
        else
        begin
            redist10_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out);
        end
    end

    // redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_wraddr(REG,404)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_wraddr_q <= $unsigned(redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_rdcnt_q);
        end
    end

    // redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_mem(DUALMEM,402)
    assign redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_mem_ia = $unsigned(redist10_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_1_q);
    assign redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_mem_aa = redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_wraddr_q;
    assign redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_mem_ab = redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_rdcnt_q;
    assign redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_mem_reset0 = ~ (resetn);
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
    ) redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_mem_dmem (
        .clocken1(redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_mem_reset0),
        .clock1(clock),
        .address_a(redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_mem_aa),
        .data_a(redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_mem_ab),
        .q_b(redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_mem_iq),
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
    assign redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_mem_q = redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_mem_iq[31:0];

    // leftShiftStage1Idx1Rng2_uid248_dupName_6_i_unnamed_kernel_2mm0_shift_x(BITSELECT,247)@5
    assign leftShiftStage1Idx1Rng2_uid248_dupName_6_i_unnamed_kernel_2mm0_shift_x_in = leftShiftStage0_uid238_dupName_5_i_unnamed_kernel_2mm0_shift_x_q[29:0];
    assign leftShiftStage1Idx1Rng2_uid248_dupName_6_i_unnamed_kernel_2mm0_shift_x_b = leftShiftStage1Idx1Rng2_uid248_dupName_6_i_unnamed_kernel_2mm0_shift_x_in[29:0];

    // leftShiftStage1Idx1_uid249_dupName_6_i_unnamed_kernel_2mm0_shift_x(BITJOIN,248)@5
    assign leftShiftStage1Idx1_uid249_dupName_6_i_unnamed_kernel_2mm0_shift_x_q = {leftShiftStage1Idx1Rng2_uid248_dupName_6_i_unnamed_kernel_2mm0_shift_x_b, i_arrayidx714_kernel_2mm0_c_i2_02_x_q};

    // leftShiftStage0Idx1Rng1_uid235_dupName_5_i_unnamed_kernel_2mm0_shift_x(BITSELECT,234)@5
    assign leftShiftStage0Idx1Rng1_uid235_dupName_5_i_unnamed_kernel_2mm0_shift_x_in = redist9_i_llvm_fpga_pop_i32_k63_076_pop58_kernel_2mm15_out_data_out_1_q[30:0];
    assign leftShiftStage0Idx1Rng1_uid235_dupName_5_i_unnamed_kernel_2mm0_shift_x_b = leftShiftStage0Idx1Rng1_uid235_dupName_5_i_unnamed_kernel_2mm0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid236_dupName_5_i_unnamed_kernel_2mm0_shift_x(BITJOIN,235)@5
    assign leftShiftStage0Idx1_uid236_dupName_5_i_unnamed_kernel_2mm0_shift_x_q = {leftShiftStage0Idx1Rng1_uid235_dupName_5_i_unnamed_kernel_2mm0_shift_x_b, GND_q};

    // leftShiftStage0_uid238_dupName_5_i_unnamed_kernel_2mm0_shift_x(MUX,237)@5
    assign leftShiftStage0_uid238_dupName_5_i_unnamed_kernel_2mm0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid238_dupName_5_i_unnamed_kernel_2mm0_shift_x_s or redist9_i_llvm_fpga_pop_i32_k63_076_pop58_kernel_2mm15_out_data_out_1_q or leftShiftStage0Idx1_uid236_dupName_5_i_unnamed_kernel_2mm0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid238_dupName_5_i_unnamed_kernel_2mm0_shift_x_s)
            1'b0 : leftShiftStage0_uid238_dupName_5_i_unnamed_kernel_2mm0_shift_x_q = redist9_i_llvm_fpga_pop_i32_k63_076_pop58_kernel_2mm15_out_data_out_1_q;
            1'b1 : leftShiftStage0_uid238_dupName_5_i_unnamed_kernel_2mm0_shift_x_q = leftShiftStage0Idx1_uid236_dupName_5_i_unnamed_kernel_2mm0_shift_x_q;
            default : leftShiftStage0_uid238_dupName_5_i_unnamed_kernel_2mm0_shift_x_q = 32'b0;
        endcase
    end

    // leftShiftStage1_uid251_dupName_6_i_unnamed_kernel_2mm0_shift_x(MUX,250)@5
    assign leftShiftStage1_uid251_dupName_6_i_unnamed_kernel_2mm0_shift_x_s = VCC_q;
    always @(leftShiftStage1_uid251_dupName_6_i_unnamed_kernel_2mm0_shift_x_s or leftShiftStage0_uid238_dupName_5_i_unnamed_kernel_2mm0_shift_x_q or leftShiftStage1Idx1_uid249_dupName_6_i_unnamed_kernel_2mm0_shift_x_q)
    begin
        unique case (leftShiftStage1_uid251_dupName_6_i_unnamed_kernel_2mm0_shift_x_s)
            1'b0 : leftShiftStage1_uid251_dupName_6_i_unnamed_kernel_2mm0_shift_x_q = leftShiftStage0_uid238_dupName_5_i_unnamed_kernel_2mm0_shift_x_q;
            1'b1 : leftShiftStage1_uid251_dupName_6_i_unnamed_kernel_2mm0_shift_x_q = leftShiftStage1Idx1_uid249_dupName_6_i_unnamed_kernel_2mm0_shift_x_q;
            default : leftShiftStage1_uid251_dupName_6_i_unnamed_kernel_2mm0_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_kernel_2mm20_vt_select_31(BITSELECT,179)@5
    assign i_unnamed_kernel_2mm20_vt_select_31_b = leftShiftStage1_uid251_dupName_6_i_unnamed_kernel_2mm0_shift_x_q[31:3];

    // i_unnamed_kernel_2mm20_vt_join(BITJOIN,178)@5
    assign i_unnamed_kernel_2mm20_vt_join_q = {i_unnamed_kernel_2mm20_vt_select_31_b, i_arrayidx714_kernel_2mm0_mult_multconst_x_q};

    // i_unnamed_kernel_2mm19_vt_select_31(BITSELECT,176)@5
    assign i_unnamed_kernel_2mm19_vt_select_31_b = leftShiftStage0_uid238_dupName_5_i_unnamed_kernel_2mm0_shift_x_q[31:1];

    // i_unnamed_kernel_2mm19_vt_join(BITJOIN,175)@5
    assign i_unnamed_kernel_2mm19_vt_join_q = {i_unnamed_kernel_2mm19_vt_select_31_b, GND_q};

    // i_mul72_add32_kernel_2mm21(ADD,164)@5
    assign i_mul72_add32_kernel_2mm21_a = {1'b0, i_unnamed_kernel_2mm19_vt_join_q};
    assign i_mul72_add32_kernel_2mm21_b = {1'b0, i_unnamed_kernel_2mm20_vt_join_q};
    assign i_mul72_add32_kernel_2mm21_o = $unsigned(i_mul72_add32_kernel_2mm21_a) + $unsigned(i_mul72_add32_kernel_2mm21_b);
    assign i_mul72_add32_kernel_2mm21_q = i_mul72_add32_kernel_2mm21_o[32:0];

    // bgTrunc_i_mul72_add32_kernel_2mm21_sel_x(BITSELECT,13)@5
    assign bgTrunc_i_mul72_add32_kernel_2mm21_sel_x_b = i_mul72_add32_kernel_2mm21_q[31:0];

    // i_mul72_add32_kernel_2mm21_vt_select_31(BITSELECT,167)@5
    assign i_mul72_add32_kernel_2mm21_vt_select_31_b = bgTrunc_i_mul72_add32_kernel_2mm21_sel_x_b[31:1];

    // redist5_i_mul72_add32_kernel_2mm21_vt_select_31_b_1(DELAY,346)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_mul72_add32_kernel_2mm21_vt_select_31_b_1_q <= '0;
        end
        else
        begin
            redist5_i_mul72_add32_kernel_2mm21_vt_select_31_b_1_q <= $unsigned(i_mul72_add32_kernel_2mm21_vt_select_31_b);
        end
    end

    // i_mul72_add32_kernel_2mm21_vt_join(BITJOIN,166)@6
    assign i_mul72_add32_kernel_2mm21_vt_join_q = {redist5_i_mul72_add32_kernel_2mm21_vt_select_31_b_1_q, GND_q};

    // i_add73_kernel_2mm24(ADD,108)@6
    assign i_add73_kernel_2mm24_a = {1'b0, i_mul72_add32_kernel_2mm21_vt_join_q};
    assign i_add73_kernel_2mm24_b = {1'b0, redist11_i_llvm_fpga_pop_i32_j53_077_pop39128_pop67_kernel_2mm22_out_data_out_4_mem_q};
    assign i_add73_kernel_2mm24_o = $unsigned(i_add73_kernel_2mm24_a) + $unsigned(i_add73_kernel_2mm24_b);
    assign i_add73_kernel_2mm24_q = i_add73_kernel_2mm24_o[32:0];

    // i_mptr_bitcast_index88_kernel_2mm0_add_x_BitSelect_for_b_tessel0_1(BITSELECT,331)@6
    assign i_mptr_bitcast_index88_kernel_2mm0_add_x_BitSelect_for_b_tessel0_1_b = $unsigned(i_add73_kernel_2mm24_q[31:0]);

    // redist2_i_mptr_bitcast_index88_kernel_2mm0_add_x_BitSelect_for_b_tessel0_1_b_1(DELAY,343)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_mptr_bitcast_index88_kernel_2mm0_add_x_BitSelect_for_b_tessel0_1_b_1_q <= '0;
        end
        else
        begin
            redist2_i_mptr_bitcast_index88_kernel_2mm0_add_x_BitSelect_for_b_tessel0_1_b_1_q <= $unsigned(i_mptr_bitcast_index88_kernel_2mm0_add_x_BitSelect_for_b_tessel0_1_b);
        end
    end

    // i_mptr_bitcast_index88_kernel_2mm0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,333)@7
    assign i_mptr_bitcast_index88_kernel_2mm0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index88_kernel_2mm0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_b, redist2_i_mptr_bitcast_index88_kernel_2mm0_add_x_BitSelect_for_b_tessel0_1_b_1_q, i_arrayidx714_kernel_2mm0_c_i2_02_x_q};

    // valid_fanout_reg10(REG,200)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist46_sync_together135_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast879540_kernel_2mm26(BLACKBOX,129)@7
    kernel_2mm_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast879540_0 thei_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast879540_kernel_2mm26 (
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_dest_data_out_7_0(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast879540_kernel_2mm26_out_dest_data_out_7_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mptr_bitcast_index88_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,340)@7
    assign i_mptr_bitcast_index88_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast879540_kernel_2mm26_out_dest_data_out_7_0[59:0]);
    assign i_mptr_bitcast_index88_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast879540_kernel_2mm26_out_dest_data_out_7_0[63:60]);

    // i_mptr_bitcast_index88_kernel_2mm0_add_x_p1_of_2(ADD,322)@7 + 1
    assign i_mptr_bitcast_index88_kernel_2mm0_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index88_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b};
    assign i_mptr_bitcast_index88_kernel_2mm0_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index88_kernel_2mm0_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index88_kernel_2mm0_add_x_p1_of_2_o <= 61'b0;
        end
        else
        begin
            i_mptr_bitcast_index88_kernel_2mm0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index88_kernel_2mm0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index88_kernel_2mm0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index88_kernel_2mm0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index88_kernel_2mm0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index88_kernel_2mm0_add_x_p1_of_2_q = i_mptr_bitcast_index88_kernel_2mm0_add_x_p1_of_2_o[59:0];

    // i_mptr_bitcast_index88_kernel_2mm0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,336)@8
    assign i_mptr_bitcast_index88_kernel_2mm0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_mptr_bitcast_index88_kernel_2mm0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_c};

    // redist0_i_mptr_bitcast_index88_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1(DELAY,341)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_mptr_bitcast_index88_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist0_i_mptr_bitcast_index88_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= $unsigned(i_mptr_bitcast_index88_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_mptr_bitcast_index88_kernel_2mm0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,329)@8
    assign i_mptr_bitcast_index88_kernel_2mm0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist0_i_mptr_bitcast_index88_kernel_2mm0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q};

    // i_mptr_bitcast_index88_kernel_2mm0_add_x_p2_of_2(ADD,323)@8 + 1
    assign i_mptr_bitcast_index88_kernel_2mm0_add_x_p2_of_2_cin = i_mptr_bitcast_index88_kernel_2mm0_add_x_p1_of_2_c;
    assign i_mptr_bitcast_index88_kernel_2mm0_add_x_p2_of_2_a = { {1'b0, i_mptr_bitcast_index88_kernel_2mm0_add_x_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mptr_bitcast_index88_kernel_2mm0_add_x_p2_of_2_b = { {1'b0, i_mptr_bitcast_index88_kernel_2mm0_add_x_BitSelect_for_b_BitJoin_for_c_q}, i_mptr_bitcast_index88_kernel_2mm0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index88_kernel_2mm0_add_x_p2_of_2_o <= 7'b0;
        end
        else
        begin
            i_mptr_bitcast_index88_kernel_2mm0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index88_kernel_2mm0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index88_kernel_2mm0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index88_kernel_2mm0_add_x_p2_of_2_q = i_mptr_bitcast_index88_kernel_2mm0_add_x_p2_of_2_o[5:1];

    // redist3_i_mptr_bitcast_index88_kernel_2mm0_add_x_p1_of_2_q_1(DELAY,344)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_mptr_bitcast_index88_kernel_2mm0_add_x_p1_of_2_q_1_q <= '0;
        end
        else
        begin
            redist3_i_mptr_bitcast_index88_kernel_2mm0_add_x_p1_of_2_q_1_q <= $unsigned(i_mptr_bitcast_index88_kernel_2mm0_add_x_p1_of_2_q);
        end
    end

    // i_mptr_bitcast_index88_kernel_2mm0_add_x_BitJoin_for_q(BITJOIN,324)@9
    assign i_mptr_bitcast_index88_kernel_2mm0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index88_kernel_2mm0_add_x_p2_of_2_q, redist3_i_mptr_bitcast_index88_kernel_2mm0_add_x_p1_of_2_q_1_q};

    // i_mptr_bitcast_index88_kernel_2mm0_dupName_0_trunc_sel_x(BITSELECT,48)@9
    assign i_mptr_bitcast_index88_kernel_2mm0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index88_kernel_2mm0_add_x_BitJoin_for_q_q[63:0];

    // redist20_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_8(DELAY,361)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_8_delay_0 <= '0;
            redist20_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_8_q <= '0;
        end
        else
        begin
            redist20_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_8_delay_0 <= $unsigned(redist19_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_6_q);
            redist20_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_8_q <= redist20_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_8_delay_0;
        end
    end

    // redist22_i_first_cleanup_xor_kernel_2mm4_q_7(DELAY,363)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_first_cleanup_xor_kernel_2mm4_q_7_delay_0 <= '0;
            redist22_i_first_cleanup_xor_kernel_2mm4_q_7_delay_1 <= '0;
            redist22_i_first_cleanup_xor_kernel_2mm4_q_7_delay_2 <= '0;
            redist22_i_first_cleanup_xor_kernel_2mm4_q_7_q <= '0;
        end
        else
        begin
            redist22_i_first_cleanup_xor_kernel_2mm4_q_7_delay_0 <= $unsigned(redist21_i_first_cleanup_xor_kernel_2mm4_q_3_q);
            redist22_i_first_cleanup_xor_kernel_2mm4_q_7_delay_1 <= redist22_i_first_cleanup_xor_kernel_2mm4_q_7_delay_0;
            redist22_i_first_cleanup_xor_kernel_2mm4_q_7_delay_2 <= redist22_i_first_cleanup_xor_kernel_2mm4_q_7_delay_1;
            redist22_i_first_cleanup_xor_kernel_2mm4_q_7_q <= redist22_i_first_cleanup_xor_kernel_2mm4_q_7_delay_2;
        end
    end

    // sync_out_aunroll_x(GPOUT,59)@9
    assign out_c0_exi18_0_tpl = GND_q;
    assign out_c0_exi18_1_tpl = redist22_i_first_cleanup_xor_kernel_2mm4_q_7_q;
    assign out_c0_exi18_2_tpl = redist20_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_8_q;
    assign out_c0_exi18_3_tpl = i_llvm_fpga_mem_unnamed_kernel_2mm20_kernel_2mm18_out_o_readdata;
    assign out_c0_exi18_4_tpl = i_mptr_bitcast_index88_kernel_2mm0_dupName_0_trunc_sel_x_b;
    assign out_c0_exi18_5_tpl = redist6_i_memdep_phi3_or_kernel_2mm32_q_7_q;
    assign out_c0_exi18_6_tpl = redist7_i_masked_kernel_2mm45_q_7_q;
    assign out_c0_exi18_7_tpl = redist14_i_llvm_fpga_pop_i1_exitcond24120_pop64_kernel_2mm48_out_data_out_7_q;
    assign out_c0_exi18_8_tpl = redist12_i_llvm_fpga_pop_i1_notcmp46122_pop65_kernel_2mm50_out_data_out_7_q;
    assign out_c0_exi18_9_tpl = redist8_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index92129_pop68_kernel_2mm52_out_data_out_7_outputreg0_q;
    assign out_c0_exi18_10_tpl = redist15_i_llvm_fpga_pop_i1_exitcond21130_pop69_kernel_2mm54_out_data_out_2_q;
    assign out_c0_exi18_11_tpl = redist13_i_llvm_fpga_pop_i1_notcmp41131_pop70_kernel_2mm56_out_data_out_7_q;
    assign out_c0_exi18_12_tpl = redist26_sync_together135_aunroll_x_in_c0_eni17_1_tpl_8_q;
    assign out_c0_exi18_13_tpl = redist37_sync_together135_aunroll_x_in_c0_eni17_12_tpl_8_outputreg0_q;
    assign out_c0_exi18_14_tpl = redist38_sync_together135_aunroll_x_in_c0_eni17_13_tpl_8_outputreg0_q;
    assign out_c0_exi18_15_tpl = redist39_sync_together135_aunroll_x_in_c0_eni17_14_tpl_8_q;
    assign out_c0_exi18_16_tpl = redist40_sync_together135_aunroll_x_in_c0_eni17_15_tpl_8_q;
    assign out_c0_exi18_17_tpl = redist41_sync_together135_aunroll_x_in_c0_eni17_16_tpl_8_q;
    assign out_c0_exi18_18_tpl = redist42_sync_together135_aunroll_x_in_c0_eni17_17_tpl_8_outputreg0_q;
    assign out_o_valid = redist4_valid_fanout_reg0_q_2_q;
    assign out_unnamed_kernel_2mm1 = GND_q;

    // ext_sig_sync_out(GPOUT,107)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,186)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_pipeline_valid_out;

    // i_llvm_fpga_pop_i32_mul59_add30118_pop63_kernel_2mm46(BLACKBOX,143)@2
    // out out_feedback_stall_out_63@20000000
    kernel_2mm_i_llvm_fpga_pop_i32_mul59_add30118_pop63_0 thei_llvm_fpga_pop_i32_mul59_add30118_pop63_kernel_2mm46 (
        .in_data_in(redist31_sync_together135_aunroll_x_in_c0_eni17_6_tpl_1_q),
        .in_dir(redist23_sync_together135_aunroll_x_in_c0_eni17_1_tpl_1_q),
        .in_feedback_in_63(i_llvm_fpga_push_i32_mul59_add30118_push63_kernel_2mm47_out_feedback_out_63),
        .in_feedback_valid_in_63(i_llvm_fpga_push_i32_mul59_add30118_push63_kernel_2mm47_out_feedback_valid_out_63),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul59_add30118_pop63_kernel_2mm46_out_data_out),
        .out_feedback_stall_out_63(i_llvm_fpga_pop_i32_mul59_add30118_pop63_kernel_2mm46_out_feedback_stall_out_63),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i32_mul59_add30118_push63_kernel_2mm47(BLACKBOX,159)@2
    // out out_feedback_out_63@20000000
    // out out_feedback_valid_out_63@20000000
    kernel_2mm_i_llvm_fpga_push_i32_mul59_add30118_push63_0 thei_llvm_fpga_push_i32_mul59_add30118_push63_kernel_2mm47 (
        .in_data_in(i_llvm_fpga_pop_i32_mul59_add30118_pop63_kernel_2mm46_out_data_out),
        .in_feedback_stall_in_63(i_llvm_fpga_pop_i32_mul59_add30118_pop63_kernel_2mm46_out_feedback_stall_out_63),
        .in_keep_going(redist16_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(),
        .out_feedback_out_63(i_llvm_fpga_push_i32_mul59_add30118_push63_kernel_2mm47_out_feedback_out_63),
        .out_feedback_valid_out_63(i_llvm_fpga_push_i32_mul59_add30118_push63_kernel_2mm47_out_feedback_valid_out_63),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg16(REG,206)@1 + 1
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

    // valid_fanout_reg17(REG,207)@1 + 1
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

    // redist31_sync_together135_aunroll_x_in_c0_eni17_6_tpl_1(DELAY,372)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_sync_together135_aunroll_x_in_c0_eni17_6_tpl_1_q <= '0;
        end
        else
        begin
            redist31_sync_together135_aunroll_x_in_c0_eni17_6_tpl_1_q <= $unsigned(in_c0_eni17_6_tpl);
        end
    end

endmodule
