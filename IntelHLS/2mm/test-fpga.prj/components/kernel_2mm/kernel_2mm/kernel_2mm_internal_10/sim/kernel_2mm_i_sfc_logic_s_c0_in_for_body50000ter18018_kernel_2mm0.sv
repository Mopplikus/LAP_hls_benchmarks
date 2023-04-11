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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body55_kernel_2mms_c0_enter18018_kernel_2mm0
// Created for function/kernel kernel_2mm
// SystemVerilog created on Fri Apr  7 18:35:51 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_i_sfc_logic_s_c0_in_for_body50000ter18018_kernel_2mm0 (
    input wire [31:0] in_unnamed_kernel_2mm11_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm11_kernel_2mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_2mm11_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm11_kernel_2mm_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [31:0] in_unnamed_kernel_2mm12_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm12_kernel_2mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_2mm12_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm12_kernel_2mm_avm_readdatavalid,
    output wire [31:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount,
    output wire [31:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount,
    output wire [0:0] out_c0_exi8197_0_tpl,
    output wire [0:0] out_c0_exi8197_1_tpl,
    output wire [31:0] out_c0_exi8197_2_tpl,
    output wire [0:0] out_c0_exi8197_3_tpl,
    output wire [0:0] out_c0_exi8197_4_tpl,
    output wire [63:0] out_c0_exi8197_5_tpl,
    output wire [0:0] out_c0_exi8197_6_tpl,
    output wire [63:0] out_c0_exi8197_7_tpl,
    output wire [0:0] out_c0_exi8197_8_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_kernel_2mm1,
    input wire [0:0] in_c0_eni9179_0_tpl,
    input wire [0:0] in_c0_eni9179_1_tpl,
    input wire [63:0] in_c0_eni9179_2_tpl,
    input wire [63:0] in_c0_eni9179_3_tpl,
    input wire [31:0] in_c0_eni9179_4_tpl,
    input wire [0:0] in_c0_eni9179_5_tpl,
    input wire [63:0] in_c0_eni9179_6_tpl,
    input wire [0:0] in_c0_eni9179_7_tpl,
    input wire [63:0] in_c0_eni9179_8_tpl,
    input wire [0:0] in_c0_eni9179_9_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] c_i2_171_q;
    wire [31:0] c_i32_073_q;
    wire [31:0] c_i32_174_q;
    wire [4:0] c_i5_177_q;
    wire [4:0] c_i5_875_q;
    wire [63:0] c_kernel_2mm_C_local_pmem_q;
    wire [63:0] c_kernel_2mm_tmp_local_pmem_q;
    wire [32:0] i_add65_kernel_2mm24_a;
    wire [32:0] i_add65_kernel_2mm24_b;
    logic [32:0] i_add65_kernel_2mm24_o;
    wire [32:0] i_add65_kernel_2mm24_q;
    wire [1:0] i_arrayidx595_kernel_2mm16_vt_const_1_q;
    wire [63:0] i_arrayidx595_kernel_2mm16_vt_join_q;
    wire [61:0] i_arrayidx595_kernel_2mm16_vt_select_63_b;
    wire [63:0] i_arrayidx636_kernel_2mm20_vt_join_q;
    wire [61:0] i_arrayidx636_kernel_2mm20_vt_select_63_b;
    wire [1:0] i_cleanups_shl_kernel_2mm5_vt_join_q;
    wire [0:0] i_cleanups_shl_kernel_2mm5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor_kernel_2mm4_q;
    wire [5:0] i_fpga_indvars_iv_next6_kernel_2mm36_a;
    wire [5:0] i_fpga_indvars_iv_next6_kernel_2mm36_b;
    logic [5:0] i_fpga_indvars_iv_next6_kernel_2mm36_o;
    wire [5:0] i_fpga_indvars_iv_next6_kernel_2mm36_q;
    wire [63:0] i_idxprom58_kernel_2mm13_vt_join_q;
    wire [31:0] i_idxprom58_kernel_2mm13_vt_select_31_b;
    wire [32:0] i_inc67_kernel_2mm26_a;
    wire [32:0] i_inc67_kernel_2mm26_b;
    logic [32:0] i_inc67_kernel_2mm26_o;
    wire [32:0] i_inc67_kernel_2mm26_q;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm17_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm17_out_unnamed_kernel_2mm11_kernel_2mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm17_out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm17_out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm17_out_unnamed_kernel_2mm11_kernel_2mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm17_out_unnamed_kernel_2mm11_kernel_2mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm17_out_unnamed_kernel_2mm11_kernel_2mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm17_out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm21_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm21_out_unnamed_kernel_2mm12_kernel_2mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm21_out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm21_out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm21_out_unnamed_kernel_2mm12_kernel_2mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm21_out_unnamed_kernel_2mm12_kernel_2mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm21_out_unnamed_kernel_2mm12_kernel_2mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm21_out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1668_pop44_kernel_2mm43_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1668_pop44_kernel_2mm43_out_feedback_stall_out_44;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp4256_pop40_kernel_2mm39_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp4256_pop40_kernel_2mm39_out_feedback_stall_out_40;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop39_kernel_2mm2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop39_kernel_2mm2_out_feedback_stall_out_39;
    wire [1:0] i_llvm_fpga_pop_i2_initerations_pop38_kernel_2mm7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop38_kernel_2mm7_out_feedback_stall_out_38;
    wire [31:0] i_llvm_fpga_pop_i32_k51_034_pop36_kernel_2mm12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k51_034_pop36_kernel_2mm12_out_feedback_stall_out_36;
    wire [31:0] i_llvm_fpga_pop_i32_x45_033_pop37_kernel_2mm23_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_x45_033_pop37_kernel_2mm23_out_feedback_stall_out_37;
    wire [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv5_pop35_kernel_2mm28_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv5_pop35_kernel_2mm28_out_feedback_stall_out_35;
    wire [63:0] i_llvm_fpga_pop_i64_idxprom4866_pop42_kernel_2mm18_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_idxprom4866_pop42_kernel_2mm18_out_feedback_stall_out_42;
    wire [63:0] i_llvm_fpga_pop_i64_idxprom61_pop41_kernel_2mm14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_idxprom61_pop41_kernel_2mm14_out_feedback_stall_out_41;
    wire [63:0] i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_feedback_stall_out_43;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_kernel_2mm11_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_kernel_2mm11_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1668_push44_kernel_2mm44_out_feedback_out_44;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1668_push44_kernel_2mm44_out_feedback_valid_out_44;
    wire [0:0] i_llvm_fpga_push_i1_notcmp4256_push40_kernel_2mm40_out_feedback_out_40;
    wire [0:0] i_llvm_fpga_push_i1_notcmp4256_push40_kernel_2mm40_out_feedback_valid_out_40;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_kernel_2mm32_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_kernel_2mm32_out_feedback_valid_out_3;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push39_kernel_2mm35_out_feedback_out_39;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push39_kernel_2mm35_out_feedback_valid_out_39;
    wire [7:0] i_llvm_fpga_push_i2_initerations_push38_kernel_2mm9_out_feedback_out_38;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push38_kernel_2mm9_out_feedback_valid_out_38;
    wire [31:0] i_llvm_fpga_push_i32_k51_034_push36_kernel_2mm27_out_feedback_out_36;
    wire [0:0] i_llvm_fpga_push_i32_k51_034_push36_kernel_2mm27_out_feedback_valid_out_36;
    wire [31:0] i_llvm_fpga_push_i32_x45_033_push37_kernel_2mm25_out_feedback_out_37;
    wire [0:0] i_llvm_fpga_push_i32_x45_033_push37_kernel_2mm25_out_feedback_valid_out_37;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv5_push35_kernel_2mm37_out_feedback_out_35;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv5_push35_kernel_2mm37_out_feedback_valid_out_35;
    wire [63:0] i_llvm_fpga_push_i64_idxprom4866_push42_kernel_2mm19_out_feedback_out_42;
    wire [0:0] i_llvm_fpga_push_i64_idxprom4866_push42_kernel_2mm19_out_feedback_valid_out_42;
    wire [63:0] i_llvm_fpga_push_i64_idxprom61_push41_kernel_2mm15_out_feedback_out_41;
    wire [0:0] i_llvm_fpga_push_i64_idxprom61_push41_kernel_2mm15_out_feedback_valid_out_41;
    wire [63:0] i_llvm_fpga_push_p68i32_arrayidx49467_push43_kernel_2mm42_out_feedback_out_43;
    wire [0:0] i_llvm_fpga_push_p68i32_arrayidx49467_push43_kernel_2mm42_out_feedback_valid_out_43;
    wire [0:0] i_masked_kernel_2mm38_qi;
    reg [0:0] i_masked_kernel_2mm38_q;
    wire [0:0] i_next_cleanups_kernel_2mm34_s;
    reg [1:0] i_next_cleanups_kernel_2mm34_q;
    wire [1:0] i_next_initerations_kernel_2mm8_vt_join_q;
    wire [0:0] i_next_initerations_kernel_2mm8_vt_select_0_b;
    wire [0:0] i_notcmp_kernel_2mm31_q;
    wire [0:0] i_or_kernel_2mm33_q;
    wire [31:0] bgTrunc_i_add65_kernel_2mm24_sel_x_b;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next6_kernel_2mm36_sel_x_b;
    wire [31:0] bgTrunc_i_inc67_kernel_2mm26_sel_x_b;
    wire [63:0] bgTrunc_i_mul64_kernel_2mm22_sel_x_in;
    wire [31:0] bgTrunc_i_mul64_kernel_2mm22_sel_x_b;
    wire [9:0] i_arrayidx595_kernel_2mm0_add_x_a;
    wire [9:0] i_arrayidx595_kernel_2mm0_add_x_b;
    logic [9:0] i_arrayidx595_kernel_2mm0_add_x_o;
    wire [9:0] i_arrayidx595_kernel_2mm0_add_x_q;
    wire [63:0] i_arrayidx595_kernel_2mm0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx595_kernel_2mm0_narrow_x_b;
    wire [8:0] i_arrayidx595_kernel_2mm0_shift_join_x_q;
    wire [9:0] i_arrayidx595_kernel_2mm0_dupName_0_add_x_a;
    wire [9:0] i_arrayidx595_kernel_2mm0_dupName_0_add_x_b;
    logic [9:0] i_arrayidx595_kernel_2mm0_dupName_0_add_x_o;
    wire [9:0] i_arrayidx595_kernel_2mm0_dupName_0_add_x_q;
    wire [17:0] i_arrayidx595_kernel_2mm0_mult_extender_x_q;
    wire [2:0] i_arrayidx595_kernel_2mm0_mult_multconst_x_q;
    wire [8:0] i_arrayidx595_kernel_2mm0_dupName_0_trunc_sel_x_b;
    wire [8:0] i_arrayidx595_kernel_2mm0_dupName_1_trunc_sel_x_b;
    wire [8:0] i_arrayidx595_kernel_2mm0_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx595_kernel_2mm0_dupName_3_trunc_sel_x_b;
    wire [8:0] i_arrayidx595_kernel_2mm0_dupName_5_trunc_sel_x_b;
    wire [9:0] i_arrayidx636_kernel_2mm0_add_x_a;
    wire [9:0] i_arrayidx636_kernel_2mm0_add_x_b;
    logic [9:0] i_arrayidx636_kernel_2mm0_add_x_o;
    wire [9:0] i_arrayidx636_kernel_2mm0_add_x_q;
    wire [63:0] i_arrayidx636_kernel_2mm0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx636_kernel_2mm0_narrow_x_b;
    wire [8:0] i_arrayidx636_kernel_2mm0_shift_join_x_q;
    wire [9:0] i_arrayidx636_kernel_2mm0_dupName_0_add_x_a;
    wire [9:0] i_arrayidx636_kernel_2mm0_dupName_0_add_x_b;
    logic [9:0] i_arrayidx636_kernel_2mm0_dupName_0_add_x_o;
    wire [9:0] i_arrayidx636_kernel_2mm0_dupName_0_add_x_q;
    wire [17:0] i_arrayidx636_kernel_2mm0_mult_extender_x_q;
    wire [8:0] i_arrayidx636_kernel_2mm0_dupName_1_trunc_sel_x_b;
    wire [8:0] i_arrayidx636_kernel_2mm0_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx636_kernel_2mm0_dupName_3_trunc_sel_x_b;
    wire [8:0] i_arrayidx636_kernel_2mm0_dupName_5_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_kernel_2mm3_sel_x_b;
    wire [63:0] i_idxprom58_kernel_2mm13_sel_x_b;
    wire [0:0] i_last_initeration_kernel_2mm10_sel_x_b;
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
    wire [0:0] i_exitcond7_kernel_2mm29_cmp_nsign_q;
    wire [63:0] i_mul64_kernel_2mm22_sums_join_0_q;
    wire [50:0] i_mul64_kernel_2mm22_sums_align_1_q;
    wire [50:0] i_mul64_kernel_2mm22_sums_align_1_qint;
    wire [64:0] i_mul64_kernel_2mm22_sums_result_add_0_0_a;
    wire [64:0] i_mul64_kernel_2mm22_sums_result_add_0_0_b;
    logic [64:0] i_mul64_kernel_2mm22_sums_result_add_0_0_o;
    wire [64:0] i_mul64_kernel_2mm22_sums_result_add_0_0_q;
    wire [9:0] addsumAHighB_uid224_i_arrayidx595_kernel_2mm0_mult_x_a;
    wire [9:0] addsumAHighB_uid224_i_arrayidx595_kernel_2mm0_mult_x_b;
    logic [9:0] addsumAHighB_uid224_i_arrayidx595_kernel_2mm0_mult_x_o;
    wire [9:0] addsumAHighB_uid224_i_arrayidx595_kernel_2mm0_mult_x_q;
    wire [11:0] add_uid225_i_arrayidx595_kernel_2mm0_mult_x_q;
    wire [14:0] sR_mergedSignalTM_uid230_i_arrayidx595_kernel_2mm0_mult_x_q;
    wire [1:0] lowRangeB_uid268_i_arrayidx636_kernel_2mm0_mult_x_in;
    wire [1:0] lowRangeB_uid268_i_arrayidx636_kernel_2mm0_mult_x_b;
    wire [6:0] highBBits_uid269_i_arrayidx636_kernel_2mm0_mult_x_b;
    wire [9:0] addsumAHighB_uid270_i_arrayidx636_kernel_2mm0_mult_x_a;
    wire [9:0] addsumAHighB_uid270_i_arrayidx636_kernel_2mm0_mult_x_b;
    logic [9:0] addsumAHighB_uid270_i_arrayidx636_kernel_2mm0_mult_x_o;
    wire [9:0] addsumAHighB_uid270_i_arrayidx636_kernel_2mm0_mult_x_q;
    wire [11:0] add_uid271_i_arrayidx636_kernel_2mm0_mult_x_q;
    wire [14:0] sR_mergedSignalTM_uid276_i_arrayidx636_kernel_2mm0_mult_x_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid310_i_cleanups_shl_kernel_2mm0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid310_i_cleanups_shl_kernel_2mm0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid311_i_cleanups_shl_kernel_2mm0_shift_x_q;
    wire [0:0] leftShiftStage0_uid313_i_cleanups_shl_kernel_2mm0_shift_x_s;
    reg [1:0] leftShiftStage0_uid313_i_cleanups_shl_kernel_2mm0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid317_i_next_initerations_kernel_2mm0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid319_i_next_initerations_kernel_2mm0_shift_x_q;
    wire [0:0] rightShiftStage0_uid321_i_next_initerations_kernel_2mm0_shift_x_s;
    reg [1:0] rightShiftStage0_uid321_i_next_initerations_kernel_2mm0_shift_x_q;
    wire i_mul64_kernel_2mm22_im0_cma_reset;
    wire [13:0] i_mul64_kernel_2mm22_im0_cma_a0;
    wire [13:0] i_mul64_kernel_2mm22_im0_cma_c0;
    wire [27:0] i_mul64_kernel_2mm22_im0_cma_s0;
    wire [27:0] i_mul64_kernel_2mm22_im0_cma_qq;
    wire [27:0] i_mul64_kernel_2mm22_im0_cma_q;
    wire i_mul64_kernel_2mm22_im0_cma_ena0;
    wire i_mul64_kernel_2mm22_im0_cma_ena1;
    wire i_mul64_kernel_2mm22_im0_cma_ena2;
    wire i_mul64_kernel_2mm22_im8_cma_reset;
    wire [17:0] i_mul64_kernel_2mm22_im8_cma_a0;
    wire [17:0] i_mul64_kernel_2mm22_im8_cma_c0;
    wire [35:0] i_mul64_kernel_2mm22_im8_cma_s0;
    wire [35:0] i_mul64_kernel_2mm22_im8_cma_qq;
    wire [35:0] i_mul64_kernel_2mm22_im8_cma_q;
    wire i_mul64_kernel_2mm22_im8_cma_ena0;
    wire i_mul64_kernel_2mm22_im8_cma_ena1;
    wire i_mul64_kernel_2mm22_im8_cma_ena2;
    wire i_mul64_kernel_2mm22_ma3_cma_reset;
    wire [13:0] i_mul64_kernel_2mm22_ma3_cma_a0;
    wire [17:0] i_mul64_kernel_2mm22_ma3_cma_c0;
    wire [13:0] i_mul64_kernel_2mm22_ma3_cma_a1;
    wire [17:0] i_mul64_kernel_2mm22_ma3_cma_c1;
    wire [32:0] i_mul64_kernel_2mm22_ma3_cma_s0;
    wire [32:0] i_mul64_kernel_2mm22_ma3_cma_qq;
    wire [32:0] i_mul64_kernel_2mm22_ma3_cma_q;
    wire i_mul64_kernel_2mm22_ma3_cma_ena0;
    wire i_mul64_kernel_2mm22_ma3_cma_ena1;
    wire i_mul64_kernel_2mm22_ma3_cma_ena2;
    wire [54:0] i_arrayidx636_kernel_2mm0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx636_kernel_2mm0_upper_bits_x_merged_bit_select_c;
    wire [54:0] i_arrayidx595_kernel_2mm0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx595_kernel_2mm0_upper_bits_x_merged_bit_select_c;
    wire [13:0] i_mul64_kernel_2mm22_bs2_merged_bit_select_b;
    wire [17:0] i_mul64_kernel_2mm22_bs2_merged_bit_select_c;
    wire [13:0] i_mul64_kernel_2mm22_bs1_merged_bit_select_b;
    wire [17:0] i_mul64_kernel_2mm22_bs1_merged_bit_select_c;
    wire [1:0] lowRangeB_uid222_i_arrayidx595_kernel_2mm0_mult_x_merged_bit_select_b;
    wire [6:0] lowRangeB_uid222_i_arrayidx595_kernel_2mm0_mult_x_merged_bit_select_c;
    reg [0:0] redist0_sync_together105_aunroll_x_in_c0_eni9179_1_tpl_1_q;
    reg [0:0] redist1_sync_together105_aunroll_x_in_c0_eni9179_1_tpl_9_q;
    reg [63:0] redist2_sync_together105_aunroll_x_in_c0_eni9179_2_tpl_1_q;
    reg [63:0] redist3_sync_together105_aunroll_x_in_c0_eni9179_3_tpl_1_q;
    reg [0:0] redist5_sync_together105_aunroll_x_in_c0_eni9179_5_tpl_1_q;
    reg [63:0] redist6_sync_together105_aunroll_x_in_c0_eni9179_6_tpl_1_q;
    reg [0:0] redist7_sync_together105_aunroll_x_in_c0_eni9179_7_tpl_1_q;
    reg [0:0] redist9_sync_together105_aunroll_x_in_c0_eni9179_9_tpl_10_q;
    reg [0:0] redist10_sync_together105_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist11_sync_together105_aunroll_x_in_i_valid_8_q;
    reg [0:0] redist12_sync_together105_aunroll_x_in_i_valid_9_q;
    reg [8:0] redist13_i_arrayidx636_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q;
    reg [6:0] redist14_i_arrayidx636_kernel_2mm0_narrow_x_b_1_q;
    reg [8:0] redist15_i_arrayidx595_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q;
    reg [6:0] redist16_i_arrayidx595_kernel_2mm0_narrow_x_b_1_q;
    reg [31:0] redist17_bgTrunc_i_mul64_kernel_2mm22_sel_x_b_1_q;
    reg [0:0] redist18_i_masked_kernel_2mm38_q_9_q;
    reg [31:0] redist20_i_llvm_fpga_pop_i32_x45_033_pop37_kernel_2mm23_out_data_out_1_q;
    reg [0:0] redist21_i_llvm_fpga_pop_i1_notcmp4256_pop40_kernel_2mm39_out_data_out_9_q;
    reg [0:0] redist22_i_llvm_fpga_pop_i1_notcmp1668_pop44_kernel_2mm43_out_data_out_9_q;
    reg [0:0] redist23_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_1_q;
    reg [0:0] redist24_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_10_q;
    reg [0:0] redist25_i_first_cleanup_xor_kernel_2mm4_q_1_q;
    wire redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_mem_reset0;
    wire [31:0] redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_mem_ia;
    wire [2:0] redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_mem_aa;
    wire [2:0] redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_mem_ab;
    wire [31:0] redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_mem_iq;
    wire [31:0] redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_mem_q;
    wire [2:0] redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_rdcnt_i;
    reg [2:0] redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_wraddr_q;
    wire [3:0] redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_mem_last_q;
    wire [3:0] redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_cmp_b;
    wire [0:0] redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_cmpReg_q;
    wire [0:0] redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_notEnable_q;
    wire [0:0] redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_sticky_ena_q;
    wire [0:0] redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_enaAnd_q;
    wire redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_mem_reset0;
    wire [63:0] redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_mem_ia;
    wire [3:0] redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_mem_aa;
    wire [3:0] redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_mem_ab;
    wire [63:0] redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_mem_iq;
    wire [63:0] redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_mem_q;
    wire [3:0] redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_rdcnt_q;
    (* preserve *) reg [3:0] redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_rdcnt_i;
    (* preserve *) reg redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_rdcnt_eq;
    reg [3:0] redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_wraddr_q;
    wire [3:0] redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_mem_last_q;
    wire [0:0] redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_cmp_q;
    (* dont_merge *) reg [0:0] redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_cmpReg_q;
    wire [0:0] redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_notEnable_q;
    wire [0:0] redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_nor_q;
    (* dont_merge *) reg [0:0] redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_sticky_ena_q;
    wire [0:0] redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_enaAnd_q;
    wire redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_mem_reset0;
    wire [63:0] redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_mem_ia;
    wire [2:0] redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_mem_aa;
    wire [2:0] redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_mem_ab;
    wire [63:0] redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_mem_iq;
    wire [63:0] redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_mem_q;
    wire [2:0] redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_rdcnt_q;
    (* preserve *) reg [2:0] redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_rdcnt_i;
    reg [2:0] redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_wraddr_q;
    wire [3:0] redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_mem_last_q;
    wire [3:0] redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_cmp_b;
    wire [0:0] redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_cmp_q;
    (* dont_merge *) reg [0:0] redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_cmpReg_q;
    wire [0:0] redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_notEnable_q;
    wire [0:0] redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_nor_q;
    (* dont_merge *) reg [0:0] redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_sticky_ena_q;
    wire [0:0] redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_enaAnd_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist10_sync_together105_aunroll_x_in_i_valid_1(DELAY,340)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together105_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist10_sync_together105_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist23_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_1(DELAY,353)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist23_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid310_i_cleanups_shl_kernel_2mm0_shift_x(BITSELECT,309)@2
    assign leftShiftStage0Idx1Rng1_uid310_i_cleanups_shl_kernel_2mm0_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop39_kernel_2mm2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid310_i_cleanups_shl_kernel_2mm0_shift_x_b = leftShiftStage0Idx1Rng1_uid310_i_cleanups_shl_kernel_2mm0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid311_i_cleanups_shl_kernel_2mm0_shift_x(BITJOIN,310)@2
    assign leftShiftStage0Idx1_uid311_i_cleanups_shl_kernel_2mm0_shift_x_q = {leftShiftStage0Idx1Rng1_uid310_i_cleanups_shl_kernel_2mm0_shift_x_b, GND_q};

    // leftShiftStage0_uid313_i_cleanups_shl_kernel_2mm0_shift_x(MUX,312)@2
    assign leftShiftStage0_uid313_i_cleanups_shl_kernel_2mm0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid313_i_cleanups_shl_kernel_2mm0_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop39_kernel_2mm2_out_data_out or leftShiftStage0Idx1_uid311_i_cleanups_shl_kernel_2mm0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid313_i_cleanups_shl_kernel_2mm0_shift_x_s)
            1'b0 : leftShiftStage0_uid313_i_cleanups_shl_kernel_2mm0_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop39_kernel_2mm2_out_data_out;
            1'b1 : leftShiftStage0_uid313_i_cleanups_shl_kernel_2mm0_shift_x_q = leftShiftStage0Idx1_uid311_i_cleanups_shl_kernel_2mm0_shift_x_q;
            default : leftShiftStage0_uid313_i_cleanups_shl_kernel_2mm0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_kernel_2mm5_vt_select_1(BITSELECT,50)@2
    assign i_cleanups_shl_kernel_2mm5_vt_select_1_b = leftShiftStage0_uid313_i_cleanups_shl_kernel_2mm0_shift_x_q[1:1];

    // i_cleanups_shl_kernel_2mm5_vt_join(BITJOIN,49)@2
    assign i_cleanups_shl_kernel_2mm5_vt_join_q = {i_cleanups_shl_kernel_2mm5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor_kernel_2mm4(LOGICAL,53)@2
    assign i_first_cleanup_xor_kernel_2mm4_q = i_first_cleanup_kernel_2mm3_sel_x_b ^ VCC_q;

    // i_notcmp_kernel_2mm31(LOGICAL,92)@2
    assign i_notcmp_kernel_2mm31_q = i_exitcond7_kernel_2mm29_cmp_nsign_q ^ VCC_q;

    // i_or_kernel_2mm33(LOGICAL,93)@2
    assign i_or_kernel_2mm33_q = i_notcmp_kernel_2mm31_q | i_first_cleanup_xor_kernel_2mm4_q;

    // i_next_cleanups_kernel_2mm34(MUX,88)@2
    assign i_next_cleanups_kernel_2mm34_s = i_or_kernel_2mm33_q;
    always @(i_next_cleanups_kernel_2mm34_s or i_llvm_fpga_pop_i2_cleanups_pop39_kernel_2mm2_out_data_out or i_cleanups_shl_kernel_2mm5_vt_join_q)
    begin
        unique case (i_next_cleanups_kernel_2mm34_s)
            1'b0 : i_next_cleanups_kernel_2mm34_q = i_llvm_fpga_pop_i2_cleanups_pop39_kernel_2mm2_out_data_out;
            1'b1 : i_next_cleanups_kernel_2mm34_q = i_cleanups_shl_kernel_2mm5_vt_join_q;
            default : i_next_cleanups_kernel_2mm34_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push39_kernel_2mm35(BLACKBOX,78)@2
    // out out_feedback_out_39@20000000
    // out out_feedback_valid_out_39@20000000
    kernel_2mm_i_llvm_fpga_push_i2_cleanups_push39_0 thei_llvm_fpga_push_i2_cleanups_push39_kernel_2mm35 (
        .in_data_in(i_next_cleanups_kernel_2mm34_q),
        .in_feedback_stall_in_39(i_llvm_fpga_pop_i2_cleanups_pop39_kernel_2mm2_out_feedback_stall_out_39),
        .in_keep_going(redist23_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist10_sync_together105_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_39(i_llvm_fpga_push_i2_cleanups_push39_kernel_2mm35_out_feedback_out_39),
        .out_feedback_valid_out_39(i_llvm_fpga_push_i2_cleanups_push39_kernel_2mm35_out_feedback_valid_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together105_aunroll_x_in_c0_eni9179_1_tpl_1(DELAY,330)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together105_aunroll_x_in_c0_eni9179_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together105_aunroll_x_in_c0_eni9179_1_tpl_1_q <= $unsigned(in_c0_eni9179_1_tpl);
        end
    end

    // c_i2_171(CONSTANT,32)
    assign c_i2_171_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop39_kernel_2mm2(BLACKBOX,66)@2
    // out out_feedback_stall_out_39@20000000
    kernel_2mm_i_llvm_fpga_pop_i2_cleanups_pop39_0 thei_llvm_fpga_pop_i2_cleanups_pop39_kernel_2mm2 (
        .in_data_in(c_i2_171_q),
        .in_dir(redist0_sync_together105_aunroll_x_in_c0_eni9179_1_tpl_1_q),
        .in_feedback_in_39(i_llvm_fpga_push_i2_cleanups_push39_kernel_2mm35_out_feedback_out_39),
        .in_feedback_valid_in_39(i_llvm_fpga_push_i2_cleanups_push39_kernel_2mm35_out_feedback_valid_out_39),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist10_sync_together105_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop39_kernel_2mm2_out_data_out),
        .out_feedback_stall_out_39(i_llvm_fpga_pop_i2_cleanups_pop39_kernel_2mm2_out_feedback_stall_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_kernel_2mm3_sel_x(BITSELECT,159)@2
    assign i_first_cleanup_kernel_2mm3_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop39_kernel_2mm2_out_data_out[0:0];

    // c_i5_177(CONSTANT,35)
    assign c_i5_177_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next6_kernel_2mm36(ADD,54)@2
    assign i_fpga_indvars_iv_next6_kernel_2mm36_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv5_pop35_kernel_2mm28_out_data_out};
    assign i_fpga_indvars_iv_next6_kernel_2mm36_b = {1'b0, c_i5_177_q};
    assign i_fpga_indvars_iv_next6_kernel_2mm36_o = $unsigned(i_fpga_indvars_iv_next6_kernel_2mm36_a) + $unsigned(i_fpga_indvars_iv_next6_kernel_2mm36_b);
    assign i_fpga_indvars_iv_next6_kernel_2mm36_q = i_fpga_indvars_iv_next6_kernel_2mm36_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next6_kernel_2mm36_sel_x(BITSELECT,100)@2
    assign bgTrunc_i_fpga_indvars_iv_next6_kernel_2mm36_sel_x_b = i_fpga_indvars_iv_next6_kernel_2mm36_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv5_push35_kernel_2mm37(BLACKBOX,82)@2
    // out out_feedback_out_35@20000000
    // out out_feedback_valid_out_35@20000000
    kernel_2mm_i_llvm_fpga_push_i5_fpga_indvars_iv5_push35_0 thei_llvm_fpga_push_i5_fpga_indvars_iv5_push35_kernel_2mm37 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next6_kernel_2mm36_sel_x_b),
        .in_feedback_stall_in_35(i_llvm_fpga_pop_i5_fpga_indvars_iv5_pop35_kernel_2mm28_out_feedback_stall_out_35),
        .in_keep_going(redist23_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist10_sync_together105_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_35(i_llvm_fpga_push_i5_fpga_indvars_iv5_push35_kernel_2mm37_out_feedback_out_35),
        .out_feedback_valid_out_35(i_llvm_fpga_push_i5_fpga_indvars_iv5_push35_kernel_2mm37_out_feedback_valid_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_875(CONSTANT,36)
    assign c_i5_875_q = $unsigned(5'b01000);

    // i_llvm_fpga_pop_i5_fpga_indvars_iv5_pop35_kernel_2mm28(BLACKBOX,70)@2
    // out out_feedback_stall_out_35@20000000
    kernel_2mm_i_llvm_fpga_pop_i5_fpga_indvars_iv5_pop35_0 thei_llvm_fpga_pop_i5_fpga_indvars_iv5_pop35_kernel_2mm28 (
        .in_data_in(c_i5_875_q),
        .in_dir(redist0_sync_together105_aunroll_x_in_c0_eni9179_1_tpl_1_q),
        .in_feedback_in_35(i_llvm_fpga_push_i5_fpga_indvars_iv5_push35_kernel_2mm37_out_feedback_out_35),
        .in_feedback_valid_in_35(i_llvm_fpga_push_i5_fpga_indvars_iv5_push35_kernel_2mm37_out_feedback_valid_out_35),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist10_sync_together105_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i5_fpga_indvars_iv5_pop35_kernel_2mm28_out_data_out),
        .out_feedback_stall_out_35(i_llvm_fpga_pop_i5_fpga_indvars_iv5_pop35_kernel_2mm28_out_feedback_stall_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond7_kernel_2mm29_cmp_nsign(LOGICAL,198)@2
    assign i_exitcond7_kernel_2mm29_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i5_fpga_indvars_iv5_pop35_kernel_2mm28_out_data_out[4:4]));

    // i_llvm_fpga_push_i1_notexitcond_kernel_2mm32(BLACKBOX,77)@2
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    kernel_2mm_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_kernel_2mm32 (
        .in_data_in(i_exitcond7_kernel_2mm29_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_kernel_2mm3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist10_sync_together105_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_kernel_2mm32_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_kernel_2mm32_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,171)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid317_i_next_initerations_kernel_2mm0_shift_x(BITSELECT,316)@2
    assign rightShiftStage0Idx1Rng1_uid317_i_next_initerations_kernel_2mm0_shift_x_b = i_llvm_fpga_pop_i2_initerations_pop38_kernel_2mm7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid319_i_next_initerations_kernel_2mm0_shift_x(BITJOIN,318)@2
    assign rightShiftStage0Idx1_uid319_i_next_initerations_kernel_2mm0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid317_i_next_initerations_kernel_2mm0_shift_x_b};

    // valid_fanout_reg1(REG,169)@1 + 1
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

    // valid_fanout_reg2(REG,170)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations_push38_kernel_2mm9(BLACKBOX,79)@2
    // out out_feedback_out_38@20000000
    // out out_feedback_valid_out_38@20000000
    kernel_2mm_i_llvm_fpga_push_i2_initerations_push38_0 thei_llvm_fpga_push_i2_initerations_push38_kernel_2mm9 (
        .in_data_in(i_next_initerations_kernel_2mm8_vt_join_q),
        .in_feedback_stall_in_38(i_llvm_fpga_pop_i2_initerations_pop38_kernel_2mm7_out_feedback_stall_out_38),
        .in_keep_going(redist23_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_38(i_llvm_fpga_push_i2_initerations_push38_kernel_2mm9_out_feedback_out_38),
        .out_feedback_valid_out_38(i_llvm_fpga_push_i2_initerations_push38_kernel_2mm9_out_feedback_valid_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations_pop38_kernel_2mm7(BLACKBOX,67)@2
    // out out_feedback_stall_out_38@20000000
    kernel_2mm_i_llvm_fpga_pop_i2_initerations_pop38_0 thei_llvm_fpga_pop_i2_initerations_pop38_kernel_2mm7 (
        .in_data_in(c_i2_171_q),
        .in_dir(redist0_sync_together105_aunroll_x_in_c0_eni9179_1_tpl_1_q),
        .in_feedback_in_38(i_llvm_fpga_push_i2_initerations_push38_kernel_2mm9_out_feedback_out_38),
        .in_feedback_valid_in_38(i_llvm_fpga_push_i2_initerations_push38_kernel_2mm9_out_feedback_valid_out_38),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations_pop38_kernel_2mm7_out_data_out),
        .out_feedback_stall_out_38(i_llvm_fpga_pop_i2_initerations_pop38_kernel_2mm7_out_feedback_stall_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid321_i_next_initerations_kernel_2mm0_shift_x(MUX,320)@2
    assign rightShiftStage0_uid321_i_next_initerations_kernel_2mm0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid321_i_next_initerations_kernel_2mm0_shift_x_s or i_llvm_fpga_pop_i2_initerations_pop38_kernel_2mm7_out_data_out or rightShiftStage0Idx1_uid319_i_next_initerations_kernel_2mm0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid321_i_next_initerations_kernel_2mm0_shift_x_s)
            1'b0 : rightShiftStage0_uid321_i_next_initerations_kernel_2mm0_shift_x_q = i_llvm_fpga_pop_i2_initerations_pop38_kernel_2mm7_out_data_out;
            1'b1 : rightShiftStage0_uid321_i_next_initerations_kernel_2mm0_shift_x_q = rightShiftStage0Idx1_uid319_i_next_initerations_kernel_2mm0_shift_x_q;
            default : rightShiftStage0_uid321_i_next_initerations_kernel_2mm0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations_kernel_2mm8_vt_select_0(BITSELECT,91)@2
    assign i_next_initerations_kernel_2mm8_vt_select_0_b = rightShiftStage0_uid321_i_next_initerations_kernel_2mm0_shift_x_q[0:0];

    // i_next_initerations_kernel_2mm8_vt_join(BITJOIN,90)@2
    assign i_next_initerations_kernel_2mm8_vt_join_q = {GND_q, i_next_initerations_kernel_2mm8_vt_select_0_b};

    // i_last_initeration_kernel_2mm10_sel_x(BITSELECT,161)@2
    assign i_last_initeration_kernel_2mm10_sel_x_b = i_next_initerations_kernel_2mm8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_kernel_2mm11(BLACKBOX,74)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    kernel_2mm_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_kernel_2mm11 (
        .in_data_in(i_last_initeration_kernel_2mm10_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_initeration_stall_out),
        .in_keep_going(redist23_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_1_q),
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

    // i_llvm_fpga_pipeline_keep_going_kernel_2mm6(BLACKBOX,63)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    kernel_2mm_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_kernel_2mm6 (
        .in_data_in(in_c0_eni9179_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_kernel_2mm11_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_kernel_2mm11_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_kernel_2mm32_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_kernel_2mm32_out_feedback_valid_out_3),
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

    // ext_sig_sync_out(GPOUT,40)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,96)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_pipeline_valid_out;

    // valid_fanout_reg7(REG,175)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist10_sync_together105_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist25_i_first_cleanup_xor_kernel_2mm4_q_1(DELAY,355)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_first_cleanup_xor_kernel_2mm4_q_1_q <= '0;
        end
        else
        begin
            redist25_i_first_cleanup_xor_kernel_2mm4_q_1_q <= $unsigned(i_first_cleanup_xor_kernel_2mm4_q);
        end
    end

    // c_kernel_2mm_tmp_local_pmem(CONSTANT,38)
    assign c_kernel_2mm_tmp_local_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx595_kernel_2mm0_upper_bits_x_merged_bit_select(BITSELECT,326)@3
    assign i_arrayidx595_kernel_2mm0_upper_bits_x_merged_bit_select_b = c_kernel_2mm_tmp_local_pmem_q[63:9];
    assign i_arrayidx595_kernel_2mm0_upper_bits_x_merged_bit_select_c = c_kernel_2mm_tmp_local_pmem_q[8:0];

    // c_i32_073(CONSTANT,33)
    assign c_i32_073_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg4(REG,172)@1 + 1
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

    // valid_fanout_reg13(REG,181)@1 + 1
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

    // c_i32_174(CONSTANT,34)
    assign c_i32_174_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc67_kernel_2mm26(ADD,59)@2
    assign i_inc67_kernel_2mm26_a = {1'b0, i_llvm_fpga_pop_i32_k51_034_pop36_kernel_2mm12_out_data_out};
    assign i_inc67_kernel_2mm26_b = {1'b0, c_i32_174_q};
    assign i_inc67_kernel_2mm26_o = $unsigned(i_inc67_kernel_2mm26_a) + $unsigned(i_inc67_kernel_2mm26_b);
    assign i_inc67_kernel_2mm26_q = i_inc67_kernel_2mm26_o[32:0];

    // bgTrunc_i_inc67_kernel_2mm26_sel_x(BITSELECT,101)@2
    assign bgTrunc_i_inc67_kernel_2mm26_sel_x_b = i_inc67_kernel_2mm26_q[31:0];

    // i_llvm_fpga_push_i32_k51_034_push36_kernel_2mm27(BLACKBOX,80)@2
    // out out_feedback_out_36@20000000
    // out out_feedback_valid_out_36@20000000
    kernel_2mm_i_llvm_fpga_push_i32_k51_034_push36_0 thei_llvm_fpga_push_i32_k51_034_push36_kernel_2mm27 (
        .in_data_in(bgTrunc_i_inc67_kernel_2mm26_sel_x_b),
        .in_feedback_stall_in_36(i_llvm_fpga_pop_i32_k51_034_pop36_kernel_2mm12_out_feedback_stall_out_36),
        .in_keep_going(redist23_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_36(i_llvm_fpga_push_i32_k51_034_push36_kernel_2mm27_out_feedback_out_36),
        .out_feedback_valid_out_36(i_llvm_fpga_push_i32_k51_034_push36_kernel_2mm27_out_feedback_valid_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_k51_034_pop36_kernel_2mm12(BLACKBOX,68)@2
    // out out_feedback_stall_out_36@20000000
    kernel_2mm_i_llvm_fpga_pop_i32_k51_034_pop36_0 thei_llvm_fpga_pop_i32_k51_034_pop36_kernel_2mm12 (
        .in_data_in(c_i32_073_q),
        .in_dir(redist0_sync_together105_aunroll_x_in_c0_eni9179_1_tpl_1_q),
        .in_feedback_in_36(i_llvm_fpga_push_i32_k51_034_push36_kernel_2mm27_out_feedback_out_36),
        .in_feedback_valid_in_36(i_llvm_fpga_push_i32_k51_034_push36_kernel_2mm27_out_feedback_valid_out_36),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_k51_034_pop36_kernel_2mm12_out_data_out),
        .out_feedback_stall_out_36(i_llvm_fpga_pop_i32_k51_034_pop36_kernel_2mm12_out_feedback_stall_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom58_kernel_2mm13_sel_x(BITSELECT,160)@2
    assign i_idxprom58_kernel_2mm13_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_k51_034_pop36_kernel_2mm12_out_data_out[31:0]};

    // i_idxprom58_kernel_2mm13_vt_select_31(BITSELECT,58)@2
    assign i_idxprom58_kernel_2mm13_vt_select_31_b = i_idxprom58_kernel_2mm13_sel_x_b[31:0];

    // i_idxprom58_kernel_2mm13_vt_join(BITJOIN,57)@2
    assign i_idxprom58_kernel_2mm13_vt_join_q = {c_i32_073_q, i_idxprom58_kernel_2mm13_vt_select_31_b};

    // i_arrayidx595_kernel_2mm0_dupName_3_trunc_sel_x(BITSELECT,129)@2
    assign i_arrayidx595_kernel_2mm0_dupName_3_trunc_sel_x_b = i_idxprom58_kernel_2mm13_vt_join_q[8:0];

    // i_arrayidx595_kernel_2mm0_narrow_x(BITSELECT,112)@2
    assign i_arrayidx595_kernel_2mm0_narrow_x_b = i_arrayidx595_kernel_2mm0_dupName_3_trunc_sel_x_b[6:0];

    // redist16_i_arrayidx595_kernel_2mm0_narrow_x_b_1(DELAY,346)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_arrayidx595_kernel_2mm0_narrow_x_b_1_q <= '0;
        end
        else
        begin
            redist16_i_arrayidx595_kernel_2mm0_narrow_x_b_1_q <= $unsigned(i_arrayidx595_kernel_2mm0_narrow_x_b);
        end
    end

    // i_arrayidx595_kernel_2mm0_shift_join_x(BITJOIN,113)@3
    assign i_arrayidx595_kernel_2mm0_shift_join_x_q = {redist16_i_arrayidx595_kernel_2mm0_narrow_x_b_1_q, i_arrayidx595_kernel_2mm16_vt_const_1_q};

    // i_arrayidx595_kernel_2mm0_mult_multconst_x(CONSTANT,124)
    assign i_arrayidx595_kernel_2mm0_mult_multconst_x_q = $unsigned(3'b000);

    // valid_fanout_reg5(REG,173)@1 + 1
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

    // valid_fanout_reg6(REG,174)@1 + 1
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

    // i_llvm_fpga_push_i64_idxprom61_push41_kernel_2mm15(BLACKBOX,84)@2
    // out out_feedback_out_41@20000000
    // out out_feedback_valid_out_41@20000000
    kernel_2mm_i_llvm_fpga_push_i64_idxprom61_push41_0 thei_llvm_fpga_push_i64_idxprom61_push41_kernel_2mm15 (
        .in_data_in(i_llvm_fpga_pop_i64_idxprom61_pop41_kernel_2mm14_out_data_out),
        .in_feedback_stall_in_41(i_llvm_fpga_pop_i64_idxprom61_pop41_kernel_2mm14_out_feedback_stall_out_41),
        .in_keep_going(redist23_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_41(i_llvm_fpga_push_i64_idxprom61_push41_kernel_2mm15_out_feedback_out_41),
        .out_feedback_valid_out_41(i_llvm_fpga_push_i64_idxprom61_push41_kernel_2mm15_out_feedback_valid_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together105_aunroll_x_in_c0_eni9179_2_tpl_1(DELAY,332)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together105_aunroll_x_in_c0_eni9179_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together105_aunroll_x_in_c0_eni9179_2_tpl_1_q <= $unsigned(in_c0_eni9179_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i64_idxprom61_pop41_kernel_2mm14(BLACKBOX,72)@2
    // out out_feedback_stall_out_41@20000000
    kernel_2mm_i_llvm_fpga_pop_i64_idxprom61_pop41_0 thei_llvm_fpga_pop_i64_idxprom61_pop41_kernel_2mm14 (
        .in_data_in(redist2_sync_together105_aunroll_x_in_c0_eni9179_2_tpl_1_q),
        .in_dir(redist0_sync_together105_aunroll_x_in_c0_eni9179_1_tpl_1_q),
        .in_feedback_in_41(i_llvm_fpga_push_i64_idxprom61_push41_kernel_2mm15_out_feedback_out_41),
        .in_feedback_valid_in_41(i_llvm_fpga_push_i64_idxprom61_push41_kernel_2mm15_out_feedback_valid_out_41),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i64_idxprom61_pop41_kernel_2mm14_out_data_out),
        .out_feedback_stall_out_41(i_llvm_fpga_pop_i64_idxprom61_pop41_kernel_2mm14_out_feedback_stall_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx595_kernel_2mm0_dupName_0_trunc_sel_x(BITSELECT,126)@2
    assign i_arrayidx595_kernel_2mm0_dupName_0_trunc_sel_x_b = i_llvm_fpga_pop_i64_idxprom61_pop41_kernel_2mm14_out_data_out[8:0];

    // addsumAHighB_uid224_i_arrayidx595_kernel_2mm0_mult_x(ADD,223)@2
    assign addsumAHighB_uid224_i_arrayidx595_kernel_2mm0_mult_x_a = {1'b0, i_arrayidx595_kernel_2mm0_dupName_0_trunc_sel_x_b};
    assign addsumAHighB_uid224_i_arrayidx595_kernel_2mm0_mult_x_b = {3'b000, lowRangeB_uid222_i_arrayidx595_kernel_2mm0_mult_x_merged_bit_select_c};
    assign addsumAHighB_uid224_i_arrayidx595_kernel_2mm0_mult_x_o = $unsigned(addsumAHighB_uid224_i_arrayidx595_kernel_2mm0_mult_x_a) + $unsigned(addsumAHighB_uid224_i_arrayidx595_kernel_2mm0_mult_x_b);
    assign addsumAHighB_uid224_i_arrayidx595_kernel_2mm0_mult_x_q = addsumAHighB_uid224_i_arrayidx595_kernel_2mm0_mult_x_o[9:0];

    // lowRangeB_uid222_i_arrayidx595_kernel_2mm0_mult_x_merged_bit_select(BITSELECT,329)@2
    assign lowRangeB_uid222_i_arrayidx595_kernel_2mm0_mult_x_merged_bit_select_b = i_arrayidx595_kernel_2mm0_dupName_0_trunc_sel_x_b[1:0];
    assign lowRangeB_uid222_i_arrayidx595_kernel_2mm0_mult_x_merged_bit_select_c = i_arrayidx595_kernel_2mm0_dupName_0_trunc_sel_x_b[8:2];

    // add_uid225_i_arrayidx595_kernel_2mm0_mult_x(BITJOIN,224)@2
    assign add_uid225_i_arrayidx595_kernel_2mm0_mult_x_q = {addsumAHighB_uid224_i_arrayidx595_kernel_2mm0_mult_x_q, lowRangeB_uid222_i_arrayidx595_kernel_2mm0_mult_x_merged_bit_select_b};

    // sR_mergedSignalTM_uid230_i_arrayidx595_kernel_2mm0_mult_x(BITJOIN,229)@2
    assign sR_mergedSignalTM_uid230_i_arrayidx595_kernel_2mm0_mult_x_q = {add_uid225_i_arrayidx595_kernel_2mm0_mult_x_q, i_arrayidx595_kernel_2mm0_mult_multconst_x_q};

    // i_arrayidx595_kernel_2mm0_mult_extender_x(BITJOIN,123)@2
    assign i_arrayidx595_kernel_2mm0_mult_extender_x_q = {i_arrayidx595_kernel_2mm0_mult_multconst_x_q, sR_mergedSignalTM_uid230_i_arrayidx595_kernel_2mm0_mult_x_q};

    // i_arrayidx595_kernel_2mm0_dupName_1_trunc_sel_x(BITSELECT,127)@2
    assign i_arrayidx595_kernel_2mm0_dupName_1_trunc_sel_x_b = i_arrayidx595_kernel_2mm0_mult_extender_x_q[8:0];

    // redist15_i_arrayidx595_kernel_2mm0_dupName_1_trunc_sel_x_b_1(DELAY,345)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_arrayidx595_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist15_i_arrayidx595_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx595_kernel_2mm0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx595_kernel_2mm0_add_x(ADD,107)@3
    assign i_arrayidx595_kernel_2mm0_add_x_a = {1'b0, i_arrayidx595_kernel_2mm0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx595_kernel_2mm0_add_x_b = {1'b0, redist15_i_arrayidx595_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx595_kernel_2mm0_add_x_o = $unsigned(i_arrayidx595_kernel_2mm0_add_x_a) + $unsigned(i_arrayidx595_kernel_2mm0_add_x_b);
    assign i_arrayidx595_kernel_2mm0_add_x_q = i_arrayidx595_kernel_2mm0_add_x_o[9:0];

    // i_arrayidx595_kernel_2mm0_dupName_2_trunc_sel_x(BITSELECT,128)@3
    assign i_arrayidx595_kernel_2mm0_dupName_2_trunc_sel_x_b = i_arrayidx595_kernel_2mm0_add_x_q[8:0];

    // i_arrayidx595_kernel_2mm0_dupName_0_add_x(ADD,117)@3
    assign i_arrayidx595_kernel_2mm0_dupName_0_add_x_a = {1'b0, i_arrayidx595_kernel_2mm0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx595_kernel_2mm0_dupName_0_add_x_b = {1'b0, i_arrayidx595_kernel_2mm0_shift_join_x_q};
    assign i_arrayidx595_kernel_2mm0_dupName_0_add_x_o = $unsigned(i_arrayidx595_kernel_2mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx595_kernel_2mm0_dupName_0_add_x_b);
    assign i_arrayidx595_kernel_2mm0_dupName_0_add_x_q = i_arrayidx595_kernel_2mm0_dupName_0_add_x_o[9:0];

    // i_arrayidx595_kernel_2mm0_dupName_5_trunc_sel_x(BITSELECT,130)@3
    assign i_arrayidx595_kernel_2mm0_dupName_5_trunc_sel_x_b = i_arrayidx595_kernel_2mm0_dupName_0_add_x_q[8:0];

    // i_arrayidx595_kernel_2mm0_append_upper_bits_x(BITJOIN,108)@3
    assign i_arrayidx595_kernel_2mm0_append_upper_bits_x_q = {i_arrayidx595_kernel_2mm0_upper_bits_x_merged_bit_select_b, i_arrayidx595_kernel_2mm0_dupName_5_trunc_sel_x_b};

    // i_arrayidx595_kernel_2mm16_vt_select_63(BITSELECT,44)@3
    assign i_arrayidx595_kernel_2mm16_vt_select_63_b = i_arrayidx595_kernel_2mm0_append_upper_bits_x_q[63:2];

    // i_arrayidx595_kernel_2mm16_vt_const_1(CONSTANT,42)
    assign i_arrayidx595_kernel_2mm16_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx595_kernel_2mm16_vt_join(BITJOIN,43)@3
    assign i_arrayidx595_kernel_2mm16_vt_join_q = {i_arrayidx595_kernel_2mm16_vt_select_63_b, i_arrayidx595_kernel_2mm16_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm17(BLACKBOX,61)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_kernel_2mm11_kernel_2mm_avm_address@20000000
    // out out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount@20000000
    // out out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable@20000000
    // out out_unnamed_kernel_2mm11_kernel_2mm_avm_enable@20000000
    // out out_unnamed_kernel_2mm11_kernel_2mm_avm_read@20000000
    // out out_unnamed_kernel_2mm11_kernel_2mm_avm_write@20000000
    // out out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata@20000000
    kernel_2mm_i_llvm_fpga_mem_unnamed_11_kernel_2mm0 thei_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm17 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx595_kernel_2mm16_vt_join_q),
        .in_i_predicate(redist25_i_first_cleanup_xor_kernel_2mm4_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_unnamed_kernel_2mm11_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm11_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm11_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm11_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm11_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm11_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm11_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm11_kernel_2mm_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm17_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_address(i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm17_out_unnamed_kernel_2mm11_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount(i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm17_out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable(i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm17_out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_enable(i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm17_out_unnamed_kernel_2mm11_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_read(i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm17_out_unnamed_kernel_2mm11_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_write(i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm17_out_unnamed_kernel_2mm11_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata(i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm17_out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,105)
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_address = i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm17_out_unnamed_kernel_2mm11_kernel_2mm_avm_address;
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_enable = i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm17_out_unnamed_kernel_2mm11_kernel_2mm_avm_enable;
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_read = i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm17_out_unnamed_kernel_2mm11_kernel_2mm_avm_read;
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_write = i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm17_out_unnamed_kernel_2mm11_kernel_2mm_avm_write;
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata = i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm17_out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata;
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable = i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm17_out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable;
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount = i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm17_out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount;

    // valid_fanout_reg10(REG,178)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist10_sync_together105_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_kernel_2mm_C_local_pmem(CONSTANT,37)
    assign c_kernel_2mm_C_local_pmem_q = $unsigned(64'b0100000001000011000000000000000000000000000000000000000000000000);

    // i_arrayidx636_kernel_2mm0_upper_bits_x_merged_bit_select(BITSELECT,325)@3
    assign i_arrayidx636_kernel_2mm0_upper_bits_x_merged_bit_select_b = c_kernel_2mm_C_local_pmem_q[63:9];
    assign i_arrayidx636_kernel_2mm0_upper_bits_x_merged_bit_select_c = c_kernel_2mm_C_local_pmem_q[8:0];

    // valid_fanout_reg8(REG,176)@1 + 1
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

    // valid_fanout_reg9(REG,177)@1 + 1
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

    // i_llvm_fpga_push_i64_idxprom4866_push42_kernel_2mm19(BLACKBOX,83)@2
    // out out_feedback_out_42@20000000
    // out out_feedback_valid_out_42@20000000
    kernel_2mm_i_llvm_fpga_push_i64_idxprom4866_push42_0 thei_llvm_fpga_push_i64_idxprom4866_push42_kernel_2mm19 (
        .in_data_in(i_llvm_fpga_pop_i64_idxprom4866_pop42_kernel_2mm18_out_data_out),
        .in_feedback_stall_in_42(i_llvm_fpga_pop_i64_idxprom4866_pop42_kernel_2mm18_out_feedback_stall_out_42),
        .in_keep_going(redist23_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_42(i_llvm_fpga_push_i64_idxprom4866_push42_kernel_2mm19_out_feedback_out_42),
        .out_feedback_valid_out_42(i_llvm_fpga_push_i64_idxprom4866_push42_kernel_2mm19_out_feedback_valid_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together105_aunroll_x_in_c0_eni9179_3_tpl_1(DELAY,333)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together105_aunroll_x_in_c0_eni9179_3_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together105_aunroll_x_in_c0_eni9179_3_tpl_1_q <= $unsigned(in_c0_eni9179_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i64_idxprom4866_pop42_kernel_2mm18(BLACKBOX,71)@2
    // out out_feedback_stall_out_42@20000000
    kernel_2mm_i_llvm_fpga_pop_i64_idxprom4866_pop42_0 thei_llvm_fpga_pop_i64_idxprom4866_pop42_kernel_2mm18 (
        .in_data_in(redist3_sync_together105_aunroll_x_in_c0_eni9179_3_tpl_1_q),
        .in_dir(redist0_sync_together105_aunroll_x_in_c0_eni9179_1_tpl_1_q),
        .in_feedback_in_42(i_llvm_fpga_push_i64_idxprom4866_push42_kernel_2mm19_out_feedback_out_42),
        .in_feedback_valid_in_42(i_llvm_fpga_push_i64_idxprom4866_push42_kernel_2mm19_out_feedback_valid_out_42),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_i64_idxprom4866_pop42_kernel_2mm18_out_data_out),
        .out_feedback_stall_out_42(i_llvm_fpga_pop_i64_idxprom4866_pop42_kernel_2mm18_out_feedback_stall_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx636_kernel_2mm0_dupName_3_trunc_sel_x(BITSELECT,153)@2
    assign i_arrayidx636_kernel_2mm0_dupName_3_trunc_sel_x_b = i_llvm_fpga_pop_i64_idxprom4866_pop42_kernel_2mm18_out_data_out[8:0];

    // i_arrayidx636_kernel_2mm0_narrow_x(BITSELECT,136)@2
    assign i_arrayidx636_kernel_2mm0_narrow_x_b = i_arrayidx636_kernel_2mm0_dupName_3_trunc_sel_x_b[6:0];

    // redist14_i_arrayidx636_kernel_2mm0_narrow_x_b_1(DELAY,344)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_arrayidx636_kernel_2mm0_narrow_x_b_1_q <= '0;
        end
        else
        begin
            redist14_i_arrayidx636_kernel_2mm0_narrow_x_b_1_q <= $unsigned(i_arrayidx636_kernel_2mm0_narrow_x_b);
        end
    end

    // i_arrayidx636_kernel_2mm0_shift_join_x(BITJOIN,137)@3
    assign i_arrayidx636_kernel_2mm0_shift_join_x_q = {redist14_i_arrayidx636_kernel_2mm0_narrow_x_b_1_q, i_arrayidx595_kernel_2mm16_vt_const_1_q};

    // highBBits_uid269_i_arrayidx636_kernel_2mm0_mult_x(BITSELECT,268)@2
    assign highBBits_uid269_i_arrayidx636_kernel_2mm0_mult_x_b = i_arrayidx595_kernel_2mm0_dupName_3_trunc_sel_x_b[8:2];

    // addsumAHighB_uid270_i_arrayidx636_kernel_2mm0_mult_x(ADD,269)@2
    assign addsumAHighB_uid270_i_arrayidx636_kernel_2mm0_mult_x_a = {1'b0, i_arrayidx595_kernel_2mm0_dupName_3_trunc_sel_x_b};
    assign addsumAHighB_uid270_i_arrayidx636_kernel_2mm0_mult_x_b = {3'b000, highBBits_uid269_i_arrayidx636_kernel_2mm0_mult_x_b};
    assign addsumAHighB_uid270_i_arrayidx636_kernel_2mm0_mult_x_o = $unsigned(addsumAHighB_uid270_i_arrayidx636_kernel_2mm0_mult_x_a) + $unsigned(addsumAHighB_uid270_i_arrayidx636_kernel_2mm0_mult_x_b);
    assign addsumAHighB_uid270_i_arrayidx636_kernel_2mm0_mult_x_q = addsumAHighB_uid270_i_arrayidx636_kernel_2mm0_mult_x_o[9:0];

    // lowRangeB_uid268_i_arrayidx636_kernel_2mm0_mult_x(BITSELECT,267)@2
    assign lowRangeB_uid268_i_arrayidx636_kernel_2mm0_mult_x_in = i_arrayidx595_kernel_2mm0_dupName_3_trunc_sel_x_b[1:0];
    assign lowRangeB_uid268_i_arrayidx636_kernel_2mm0_mult_x_b = lowRangeB_uid268_i_arrayidx636_kernel_2mm0_mult_x_in[1:0];

    // add_uid271_i_arrayidx636_kernel_2mm0_mult_x(BITJOIN,270)@2
    assign add_uid271_i_arrayidx636_kernel_2mm0_mult_x_q = {addsumAHighB_uid270_i_arrayidx636_kernel_2mm0_mult_x_q, lowRangeB_uid268_i_arrayidx636_kernel_2mm0_mult_x_b};

    // sR_mergedSignalTM_uid276_i_arrayidx636_kernel_2mm0_mult_x(BITJOIN,275)@2
    assign sR_mergedSignalTM_uid276_i_arrayidx636_kernel_2mm0_mult_x_q = {add_uid271_i_arrayidx636_kernel_2mm0_mult_x_q, i_arrayidx595_kernel_2mm0_mult_multconst_x_q};

    // i_arrayidx636_kernel_2mm0_mult_extender_x(BITJOIN,147)@2
    assign i_arrayidx636_kernel_2mm0_mult_extender_x_q = {i_arrayidx595_kernel_2mm0_mult_multconst_x_q, sR_mergedSignalTM_uid276_i_arrayidx636_kernel_2mm0_mult_x_q};

    // i_arrayidx636_kernel_2mm0_dupName_1_trunc_sel_x(BITSELECT,151)@2
    assign i_arrayidx636_kernel_2mm0_dupName_1_trunc_sel_x_b = i_arrayidx636_kernel_2mm0_mult_extender_x_q[8:0];

    // redist13_i_arrayidx636_kernel_2mm0_dupName_1_trunc_sel_x_b_1(DELAY,343)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_arrayidx636_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist13_i_arrayidx636_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx636_kernel_2mm0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx636_kernel_2mm0_add_x(ADD,131)@3
    assign i_arrayidx636_kernel_2mm0_add_x_a = {1'b0, i_arrayidx636_kernel_2mm0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx636_kernel_2mm0_add_x_b = {1'b0, redist13_i_arrayidx636_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx636_kernel_2mm0_add_x_o = $unsigned(i_arrayidx636_kernel_2mm0_add_x_a) + $unsigned(i_arrayidx636_kernel_2mm0_add_x_b);
    assign i_arrayidx636_kernel_2mm0_add_x_q = i_arrayidx636_kernel_2mm0_add_x_o[9:0];

    // i_arrayidx636_kernel_2mm0_dupName_2_trunc_sel_x(BITSELECT,152)@3
    assign i_arrayidx636_kernel_2mm0_dupName_2_trunc_sel_x_b = i_arrayidx636_kernel_2mm0_add_x_q[8:0];

    // i_arrayidx636_kernel_2mm0_dupName_0_add_x(ADD,141)@3
    assign i_arrayidx636_kernel_2mm0_dupName_0_add_x_a = {1'b0, i_arrayidx636_kernel_2mm0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx636_kernel_2mm0_dupName_0_add_x_b = {1'b0, i_arrayidx636_kernel_2mm0_shift_join_x_q};
    assign i_arrayidx636_kernel_2mm0_dupName_0_add_x_o = $unsigned(i_arrayidx636_kernel_2mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx636_kernel_2mm0_dupName_0_add_x_b);
    assign i_arrayidx636_kernel_2mm0_dupName_0_add_x_q = i_arrayidx636_kernel_2mm0_dupName_0_add_x_o[9:0];

    // i_arrayidx636_kernel_2mm0_dupName_5_trunc_sel_x(BITSELECT,154)@3
    assign i_arrayidx636_kernel_2mm0_dupName_5_trunc_sel_x_b = i_arrayidx636_kernel_2mm0_dupName_0_add_x_q[8:0];

    // i_arrayidx636_kernel_2mm0_append_upper_bits_x(BITJOIN,132)@3
    assign i_arrayidx636_kernel_2mm0_append_upper_bits_x_q = {i_arrayidx636_kernel_2mm0_upper_bits_x_merged_bit_select_b, i_arrayidx636_kernel_2mm0_dupName_5_trunc_sel_x_b};

    // i_arrayidx636_kernel_2mm20_vt_select_63(BITSELECT,47)@3
    assign i_arrayidx636_kernel_2mm20_vt_select_63_b = i_arrayidx636_kernel_2mm0_append_upper_bits_x_q[63:2];

    // i_arrayidx636_kernel_2mm20_vt_join(BITJOIN,46)@3
    assign i_arrayidx636_kernel_2mm20_vt_join_q = {i_arrayidx636_kernel_2mm20_vt_select_63_b, i_arrayidx595_kernel_2mm16_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm21(BLACKBOX,62)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_kernel_2mm12_kernel_2mm_avm_address@20000000
    // out out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount@20000000
    // out out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable@20000000
    // out out_unnamed_kernel_2mm12_kernel_2mm_avm_enable@20000000
    // out out_unnamed_kernel_2mm12_kernel_2mm_avm_read@20000000
    // out out_unnamed_kernel_2mm12_kernel_2mm_avm_write@20000000
    // out out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata@20000000
    kernel_2mm_i_llvm_fpga_mem_unnamed_12_kernel_2mm0 thei_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm21 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx636_kernel_2mm20_vt_join_q),
        .in_i_predicate(redist25_i_first_cleanup_xor_kernel_2mm4_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg10_q),
        .in_unnamed_kernel_2mm12_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm12_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm12_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm12_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm12_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm12_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm12_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm12_kernel_2mm_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm21_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_address(i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm21_out_unnamed_kernel_2mm12_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount(i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm21_out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable(i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm21_out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_enable(i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm21_out_unnamed_kernel_2mm12_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_read(i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm21_out_unnamed_kernel_2mm12_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_write(i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm21_out_unnamed_kernel_2mm12_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata(i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm21_out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,106)
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_address = i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm21_out_unnamed_kernel_2mm12_kernel_2mm_avm_address;
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_enable = i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm21_out_unnamed_kernel_2mm12_kernel_2mm_avm_enable;
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_read = i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm21_out_unnamed_kernel_2mm12_kernel_2mm_avm_read;
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_write = i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm21_out_unnamed_kernel_2mm12_kernel_2mm_avm_write;
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata = i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm21_out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata;
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable = i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm21_out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable;
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount = i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm21_out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount;

    // redist11_sync_together105_aunroll_x_in_i_valid_8(DELAY,341)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist11_sync_together105_aunroll_x_in_i_valid_8 ( .xin(redist10_sync_together105_aunroll_x_in_i_valid_1_q), .xout(redist11_sync_together105_aunroll_x_in_i_valid_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist12_sync_together105_aunroll_x_in_i_valid_9(DELAY,342)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together105_aunroll_x_in_i_valid_9_q <= '0;
        end
        else
        begin
            redist12_sync_together105_aunroll_x_in_i_valid_9_q <= $unsigned(redist11_sync_together105_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg0(REG,168)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist12_sync_together105_aunroll_x_in_i_valid_9_q);
        end
    end

    // redist9_sync_together105_aunroll_x_in_c0_eni9179_9_tpl_10(DELAY,339)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist9_sync_together105_aunroll_x_in_c0_eni9179_9_tpl_10 ( .xin(in_c0_eni9179_9_tpl), .xout(redist9_sync_together105_aunroll_x_in_c0_eni9179_9_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_notEnable(LOGICAL,372)
    assign redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_notEnable_q = $unsigned(~ (VCC_q));

    // redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_nor(LOGICAL,373)
    assign redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_nor_q = ~ (redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_notEnable_q | redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_sticky_ena_q);

    // redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_mem_last(CONSTANT,369)
    assign redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_mem_last_q = $unsigned(4'b0111);

    // redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_cmp(LOGICAL,370)
    assign redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_cmp_q = $unsigned(redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_mem_last_q == redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_rdcnt_q ? 1'b1 : 1'b0);

    // redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_cmpReg(REG,371)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_cmpReg_q <= $unsigned(redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_cmp_q);
        end
    end

    // redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_sticky_ena(REG,374)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_nor_q == 1'b1)
        begin
            redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_sticky_ena_q <= $unsigned(redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_cmpReg_q);
        end
    end

    // redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_enaAnd(LOGICAL,375)
    assign redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_enaAnd_q = redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_sticky_ena_q & VCC_q;

    // redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_rdcnt(COUNTER,367)
    // low=0, high=8, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_rdcnt_i <= 4'd0;
            redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_rdcnt_i == 4'd7)
            begin
                redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_rdcnt_eq <= 1'b0;
            end
            if (redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_rdcnt_eq == 1'b1)
            begin
                redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_rdcnt_i <= $unsigned(redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_rdcnt_i) + $unsigned(4'd8);
            end
            else
            begin
                redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_rdcnt_i <= $unsigned(redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_rdcnt_q = redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_rdcnt_i[3:0];

    // redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_wraddr(REG,368)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_wraddr_q <= $unsigned(4'b1000);
        end
        else
        begin
            redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_wraddr_q <= $unsigned(redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_rdcnt_q);
        end
    end

    // redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_mem(DUALMEM,366)
    assign redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_mem_ia = $unsigned(in_c0_eni9179_8_tpl);
    assign redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_mem_aa = redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_wraddr_q;
    assign redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_mem_ab = redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_rdcnt_q;
    assign redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(4),
        .numwords_a(9),
        .width_b(64),
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
    ) redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_mem_dmem (
        .clocken1(redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_mem_reset0),
        .clock1(clock),
        .address_a(redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_mem_aa),
        .data_a(redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_mem_ab),
        .q_b(redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_mem_iq),
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
    assign redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_mem_q = redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_mem_iq[63:0];

    // valid_fanout_reg18(REG,186)@1 + 1
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

    // valid_fanout_reg19(REG,187)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp1668_push44_kernel_2mm44(BLACKBOX,75)@2
    // out out_feedback_out_44@20000000
    // out out_feedback_valid_out_44@20000000
    kernel_2mm_i_llvm_fpga_push_i1_notcmp1668_push44_0 thei_llvm_fpga_push_i1_notcmp1668_push44_kernel_2mm44 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp1668_pop44_kernel_2mm43_out_data_out),
        .in_feedback_stall_in_44(i_llvm_fpga_pop_i1_notcmp1668_pop44_kernel_2mm43_out_feedback_stall_out_44),
        .in_keep_going(redist23_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(),
        .out_feedback_out_44(i_llvm_fpga_push_i1_notcmp1668_push44_kernel_2mm44_out_feedback_out_44),
        .out_feedback_valid_out_44(i_llvm_fpga_push_i1_notcmp1668_push44_kernel_2mm44_out_feedback_valid_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together105_aunroll_x_in_c0_eni9179_7_tpl_1(DELAY,337)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together105_aunroll_x_in_c0_eni9179_7_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together105_aunroll_x_in_c0_eni9179_7_tpl_1_q <= $unsigned(in_c0_eni9179_7_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp1668_pop44_kernel_2mm43(BLACKBOX,64)@2
    // out out_feedback_stall_out_44@20000000
    kernel_2mm_i_llvm_fpga_pop_i1_notcmp1668_pop44_0 thei_llvm_fpga_pop_i1_notcmp1668_pop44_kernel_2mm43 (
        .in_data_in(redist7_sync_together105_aunroll_x_in_c0_eni9179_7_tpl_1_q),
        .in_dir(redist0_sync_together105_aunroll_x_in_c0_eni9179_1_tpl_1_q),
        .in_feedback_in_44(i_llvm_fpga_push_i1_notcmp1668_push44_kernel_2mm44_out_feedback_out_44),
        .in_feedback_valid_in_44(i_llvm_fpga_push_i1_notcmp1668_push44_kernel_2mm44_out_feedback_valid_out_44),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp1668_pop44_kernel_2mm43_out_data_out),
        .out_feedback_stall_out_44(i_llvm_fpga_pop_i1_notcmp1668_pop44_kernel_2mm43_out_feedback_stall_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist22_i_llvm_fpga_pop_i1_notcmp1668_pop44_kernel_2mm43_out_data_out_9(DELAY,352)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist22_i_llvm_fpga_pop_i1_notcmp1668_pop44_kernel_2mm43_out_data_out_9 ( .xin(i_llvm_fpga_pop_i1_notcmp1668_pop44_kernel_2mm43_out_data_out), .xout(redist22_i_llvm_fpga_pop_i1_notcmp1668_pop44_kernel_2mm43_out_data_out_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_notEnable(LOGICAL,382)
    assign redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_nor(LOGICAL,383)
    assign redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_nor_q = ~ (redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_notEnable_q | redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_sticky_ena_q);

    // redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_mem_last(CONSTANT,379)
    assign redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_mem_last_q = $unsigned(4'b0110);

    // redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_cmp(LOGICAL,380)
    assign redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_cmp_b = {1'b0, redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_rdcnt_q};
    assign redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_cmp_q = $unsigned(redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_mem_last_q == redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_cmp_b ? 1'b1 : 1'b0);

    // redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_cmpReg(REG,381)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_cmpReg_q <= $unsigned(redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_cmp_q);
        end
    end

    // redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_sticky_ena(REG,384)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_nor_q == 1'b1)
        begin
            redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_sticky_ena_q <= $unsigned(redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_cmpReg_q);
        end
    end

    // redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_enaAnd(LOGICAL,385)
    assign redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_enaAnd_q = redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_sticky_ena_q & VCC_q;

    // redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_rdcnt(COUNTER,377)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_rdcnt_i <= 3'd0;
        end
        else
        begin
            redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_rdcnt_i <= $unsigned(redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_rdcnt_i) + $unsigned(3'd1);
        end
    end
    assign redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_rdcnt_q = redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_rdcnt_i[2:0];

    // valid_fanout_reg16(REG,184)@1 + 1
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

    // valid_fanout_reg17(REG,185)@1 + 1
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

    // i_llvm_fpga_push_p68i32_arrayidx49467_push43_kernel_2mm42(BLACKBOX,85)@2
    // out out_feedback_out_43@20000000
    // out out_feedback_valid_out_43@20000000
    kernel_2mm_i_llvm_fpga_push_p68i32_arrayidx49467_push43_0 thei_llvm_fpga_push_p68i32_arrayidx49467_push43_kernel_2mm42 (
        .in_data_in(i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out),
        .in_feedback_stall_in_43(i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_feedback_stall_out_43),
        .in_keep_going(redist23_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(),
        .out_feedback_out_43(i_llvm_fpga_push_p68i32_arrayidx49467_push43_kernel_2mm42_out_feedback_out_43),
        .out_feedback_valid_out_43(i_llvm_fpga_push_p68i32_arrayidx49467_push43_kernel_2mm42_out_feedback_valid_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together105_aunroll_x_in_c0_eni9179_6_tpl_1(DELAY,336)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together105_aunroll_x_in_c0_eni9179_6_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together105_aunroll_x_in_c0_eni9179_6_tpl_1_q <= $unsigned(in_c0_eni9179_6_tpl);
        end
    end

    // i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41(BLACKBOX,73)@2
    // out out_feedback_stall_out_43@20000000
    kernel_2mm_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_0 thei_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41 (
        .in_data_in(redist6_sync_together105_aunroll_x_in_c0_eni9179_6_tpl_1_q),
        .in_dir(redist0_sync_together105_aunroll_x_in_c0_eni9179_1_tpl_1_q),
        .in_feedback_in_43(i_llvm_fpga_push_p68i32_arrayidx49467_push43_kernel_2mm42_out_feedback_out_43),
        .in_feedback_valid_in_43(i_llvm_fpga_push_p68i32_arrayidx49467_push43_kernel_2mm42_out_feedback_valid_out_43),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out),
        .out_feedback_stall_out_43(i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_feedback_stall_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_wraddr(REG,378)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_wraddr_q <= $unsigned(3'b111);
        end
        else
        begin
            redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_wraddr_q <= $unsigned(redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_rdcnt_q);
        end
    end

    // redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_mem(DUALMEM,376)
    assign redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_mem_ia = $unsigned(i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out);
    assign redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_mem_aa = redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_wraddr_q;
    assign redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_mem_ab = redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_rdcnt_q;
    assign redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_mem_reset0 = ~ (resetn);
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
    ) redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_mem_dmem (
        .clocken1(redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_mem_reset0),
        .clock1(clock),
        .address_a(redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_mem_aa),
        .data_a(redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_mem_ab),
        .q_b(redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_mem_iq),
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
    assign redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_mem_q = redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_mem_iq[63:0];

    // valid_fanout_reg14(REG,182)@1 + 1
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

    // valid_fanout_reg15(REG,183)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp4256_push40_kernel_2mm40(BLACKBOX,76)@2
    // out out_feedback_out_40@20000000
    // out out_feedback_valid_out_40@20000000
    kernel_2mm_i_llvm_fpga_push_i1_notcmp4256_push40_0 thei_llvm_fpga_push_i1_notcmp4256_push40_kernel_2mm40 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp4256_pop40_kernel_2mm39_out_data_out),
        .in_feedback_stall_in_40(i_llvm_fpga_pop_i1_notcmp4256_pop40_kernel_2mm39_out_feedback_stall_out_40),
        .in_keep_going(redist23_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_40(i_llvm_fpga_push_i1_notcmp4256_push40_kernel_2mm40_out_feedback_out_40),
        .out_feedback_valid_out_40(i_llvm_fpga_push_i1_notcmp4256_push40_kernel_2mm40_out_feedback_valid_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together105_aunroll_x_in_c0_eni9179_5_tpl_1(DELAY,335)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together105_aunroll_x_in_c0_eni9179_5_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together105_aunroll_x_in_c0_eni9179_5_tpl_1_q <= $unsigned(in_c0_eni9179_5_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp4256_pop40_kernel_2mm39(BLACKBOX,65)@2
    // out out_feedback_stall_out_40@20000000
    kernel_2mm_i_llvm_fpga_pop_i1_notcmp4256_pop40_0 thei_llvm_fpga_pop_i1_notcmp4256_pop40_kernel_2mm39 (
        .in_data_in(redist5_sync_together105_aunroll_x_in_c0_eni9179_5_tpl_1_q),
        .in_dir(redist0_sync_together105_aunroll_x_in_c0_eni9179_1_tpl_1_q),
        .in_feedback_in_40(i_llvm_fpga_push_i1_notcmp4256_push40_kernel_2mm40_out_feedback_out_40),
        .in_feedback_valid_in_40(i_llvm_fpga_push_i1_notcmp4256_push40_kernel_2mm40_out_feedback_valid_out_40),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp4256_pop40_kernel_2mm39_out_data_out),
        .out_feedback_stall_out_40(i_llvm_fpga_pop_i1_notcmp4256_pop40_kernel_2mm39_out_feedback_stall_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist21_i_llvm_fpga_pop_i1_notcmp4256_pop40_kernel_2mm39_out_data_out_9(DELAY,351)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist21_i_llvm_fpga_pop_i1_notcmp4256_pop40_kernel_2mm39_out_data_out_9 ( .xin(i_llvm_fpga_pop_i1_notcmp4256_pop40_kernel_2mm39_out_data_out), .xout(redist21_i_llvm_fpga_pop_i1_notcmp4256_pop40_kernel_2mm39_out_data_out_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_masked_kernel_2mm38(LOGICAL,86)@2 + 1
    assign i_masked_kernel_2mm38_qi = i_notcmp_kernel_2mm31_q & i_first_cleanup_kernel_2mm3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_kernel_2mm38_delay ( .xin(i_masked_kernel_2mm38_qi), .xout(i_masked_kernel_2mm38_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist18_i_masked_kernel_2mm38_q_9(DELAY,348)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist18_i_masked_kernel_2mm38_q_9 ( .xin(i_masked_kernel_2mm38_q), .xout(redist18_i_masked_kernel_2mm38_q_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg11(REG,179)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist11_sync_together105_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg12(REG,180)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist12_sync_together105_aunroll_x_in_i_valid_9_q);
        end
    end

    // i_llvm_fpga_push_i32_x45_033_push37_kernel_2mm25(BLACKBOX,81)@11
    // out out_feedback_out_37@20000000
    // out out_feedback_valid_out_37@20000000
    kernel_2mm_i_llvm_fpga_push_i32_x45_033_push37_0 thei_llvm_fpga_push_i32_x45_033_push37_kernel_2mm25 (
        .in_data_in(bgTrunc_i_add65_kernel_2mm24_sel_x_b),
        .in_feedback_stall_in_37(i_llvm_fpga_pop_i32_x45_033_pop37_kernel_2mm23_out_feedback_stall_out_37),
        .in_keep_going(redist24_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_10_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_37(i_llvm_fpga_push_i32_x45_033_push37_kernel_2mm25_out_feedback_out_37),
        .out_feedback_valid_out_37(i_llvm_fpga_push_i32_x45_033_push37_kernel_2mm25_out_feedback_valid_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together105_aunroll_x_in_c0_eni9179_1_tpl_9(DELAY,331)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist1_sync_together105_aunroll_x_in_c0_eni9179_1_tpl_9 ( .xin(redist0_sync_together105_aunroll_x_in_c0_eni9179_1_tpl_1_q), .xout(redist1_sync_together105_aunroll_x_in_c0_eni9179_1_tpl_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_notEnable(LOGICAL,362)
    assign redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_nor(LOGICAL,363)
    assign redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_nor_q = ~ (redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_notEnable_q | redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_sticky_ena_q);

    // redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_mem_last(CONSTANT,359)
    assign redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_mem_last_q = $unsigned(4'b0110);

    // redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_cmp(LOGICAL,360)
    assign redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_cmp_b = {1'b0, redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_rdcnt_q};
    assign redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_cmp_q = $unsigned(redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_mem_last_q == redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_cmpReg(REG,361)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_cmpReg_q <= $unsigned(redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_cmp_q);
        end
    end

    // redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_sticky_ena(REG,364)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_nor_q == 1'b1)
        begin
            redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_sticky_ena_q <= $unsigned(redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_cmpReg_q);
        end
    end

    // redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_enaAnd(LOGICAL,365)
    assign redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_enaAnd_q = redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_sticky_ena_q & VCC_q;

    // redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_rdcnt(COUNTER,357)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_rdcnt_i <= 3'd0;
        end
        else
        begin
            redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_rdcnt_i <= $unsigned(redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_rdcnt_i) + $unsigned(3'd1);
        end
    end
    assign redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_rdcnt_q = redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_rdcnt_i[2:0];

    // redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_wraddr(REG,358)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_wraddr_q <= $unsigned(3'b111);
        end
        else
        begin
            redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_wraddr_q <= $unsigned(redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_rdcnt_q);
        end
    end

    // redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_mem(DUALMEM,356)
    assign redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_mem_ia = $unsigned(in_c0_eni9179_4_tpl);
    assign redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_mem_aa = redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_wraddr_q;
    assign redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_mem_ab = redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_rdcnt_q;
    assign redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_mem_reset0 = ~ (resetn);
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
    ) redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_mem_dmem (
        .clocken1(redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_mem_aa),
        .data_a(redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_mem_ab),
        .q_b(redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_mem_iq),
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
    assign redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_mem_q = redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_mem_iq[31:0];

    // i_llvm_fpga_pop_i32_x45_033_pop37_kernel_2mm23(BLACKBOX,69)@10
    // out out_feedback_stall_out_37@20000000
    kernel_2mm_i_llvm_fpga_pop_i32_x45_033_pop37_0 thei_llvm_fpga_pop_i32_x45_033_pop37_kernel_2mm23 (
        .in_data_in(redist4_sync_together105_aunroll_x_in_c0_eni9179_4_tpl_9_mem_q),
        .in_dir(redist1_sync_together105_aunroll_x_in_c0_eni9179_1_tpl_9_q),
        .in_feedback_in_37(i_llvm_fpga_push_i32_x45_033_push37_kernel_2mm25_out_feedback_out_37),
        .in_feedback_valid_in_37(i_llvm_fpga_push_i32_x45_033_push37_kernel_2mm25_out_feedback_valid_out_37),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i32_x45_033_pop37_kernel_2mm23_out_data_out),
        .out_feedback_stall_out_37(i_llvm_fpga_pop_i32_x45_033_pop37_kernel_2mm23_out_feedback_stall_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist20_i_llvm_fpga_pop_i32_x45_033_pop37_kernel_2mm23_out_data_out_1(DELAY,350)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pop_i32_x45_033_pop37_kernel_2mm23_out_data_out_1_q <= '0;
        end
        else
        begin
            redist20_i_llvm_fpga_pop_i32_x45_033_pop37_kernel_2mm23_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_x45_033_pop37_kernel_2mm23_out_data_out);
        end
    end

    // i_mul64_kernel_2mm22_bs2_merged_bit_select(BITSELECT,327)@7
    assign i_mul64_kernel_2mm22_bs2_merged_bit_select_b = i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm17_out_o_readdata[31:18];
    assign i_mul64_kernel_2mm22_bs2_merged_bit_select_c = i_llvm_fpga_mem_unnamed_kernel_2mm11_kernel_2mm17_out_o_readdata[17:0];

    // i_mul64_kernel_2mm22_bs1_merged_bit_select(BITSELECT,328)@7
    assign i_mul64_kernel_2mm22_bs1_merged_bit_select_b = i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm21_out_o_readdata[31:18];
    assign i_mul64_kernel_2mm22_bs1_merged_bit_select_c = i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm21_out_o_readdata[17:0];

    // i_mul64_kernel_2mm22_ma3_cma(CHAINMULTADD,324)@7 + 3
    assign i_mul64_kernel_2mm22_ma3_cma_reset = ~ (resetn);
    assign i_mul64_kernel_2mm22_ma3_cma_ena0 = 1'b1;
    assign i_mul64_kernel_2mm22_ma3_cma_ena1 = i_mul64_kernel_2mm22_ma3_cma_ena0;
    assign i_mul64_kernel_2mm22_ma3_cma_ena2 = i_mul64_kernel_2mm22_ma3_cma_ena0;

    assign i_mul64_kernel_2mm22_ma3_cma_a0 = i_mul64_kernel_2mm22_bs1_merged_bit_select_b;
    assign i_mul64_kernel_2mm22_ma3_cma_c0 = i_mul64_kernel_2mm22_bs2_merged_bit_select_c;
    assign i_mul64_kernel_2mm22_ma3_cma_a1 = i_mul64_kernel_2mm22_bs2_merged_bit_select_b;
    assign i_mul64_kernel_2mm22_ma3_cma_c1 = i_mul64_kernel_2mm22_bs1_merged_bit_select_c;
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
    ) i_mul64_kernel_2mm22_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul64_kernel_2mm22_ma3_cma_ena2, i_mul64_kernel_2mm22_ma3_cma_ena1, i_mul64_kernel_2mm22_ma3_cma_ena0 }),
        .aclr({ i_mul64_kernel_2mm22_ma3_cma_reset, i_mul64_kernel_2mm22_ma3_cma_reset }),
        .ay(i_mul64_kernel_2mm22_ma3_cma_a1),
        .by(i_mul64_kernel_2mm22_ma3_cma_a0),
        .ax(i_mul64_kernel_2mm22_ma3_cma_c1),
        .bx(i_mul64_kernel_2mm22_ma3_cma_c0),
        .resulta(i_mul64_kernel_2mm22_ma3_cma_s0),
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
    i_mul64_kernel_2mm22_ma3_cma_delay ( .xin(i_mul64_kernel_2mm22_ma3_cma_s0), .xout(i_mul64_kernel_2mm22_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul64_kernel_2mm22_ma3_cma_q = $unsigned(i_mul64_kernel_2mm22_ma3_cma_qq[32:0]);

    // i_mul64_kernel_2mm22_sums_align_1(BITSHIFT,211)@10
    assign i_mul64_kernel_2mm22_sums_align_1_qint = { i_mul64_kernel_2mm22_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul64_kernel_2mm22_sums_align_1_q = i_mul64_kernel_2mm22_sums_align_1_qint[50:0];

    // i_mul64_kernel_2mm22_im0_cma(CHAINMULTADD,322)@7 + 3
    assign i_mul64_kernel_2mm22_im0_cma_reset = ~ (resetn);
    assign i_mul64_kernel_2mm22_im0_cma_ena0 = 1'b1;
    assign i_mul64_kernel_2mm22_im0_cma_ena1 = i_mul64_kernel_2mm22_im0_cma_ena0;
    assign i_mul64_kernel_2mm22_im0_cma_ena2 = i_mul64_kernel_2mm22_im0_cma_ena0;

    assign i_mul64_kernel_2mm22_im0_cma_a0 = i_mul64_kernel_2mm22_bs1_merged_bit_select_b;
    assign i_mul64_kernel_2mm22_im0_cma_c0 = i_mul64_kernel_2mm22_bs2_merged_bit_select_b;
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
    ) i_mul64_kernel_2mm22_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul64_kernel_2mm22_im0_cma_ena2, i_mul64_kernel_2mm22_im0_cma_ena1, i_mul64_kernel_2mm22_im0_cma_ena0 }),
        .aclr({ i_mul64_kernel_2mm22_im0_cma_reset, i_mul64_kernel_2mm22_im0_cma_reset }),
        .ay(i_mul64_kernel_2mm22_im0_cma_a0),
        .ax(i_mul64_kernel_2mm22_im0_cma_c0),
        .resulta(i_mul64_kernel_2mm22_im0_cma_s0),
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
    i_mul64_kernel_2mm22_im0_cma_delay ( .xin(i_mul64_kernel_2mm22_im0_cma_s0), .xout(i_mul64_kernel_2mm22_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul64_kernel_2mm22_im0_cma_q = $unsigned(i_mul64_kernel_2mm22_im0_cma_qq[27:0]);

    // i_mul64_kernel_2mm22_im8_cma(CHAINMULTADD,323)@7 + 3
    assign i_mul64_kernel_2mm22_im8_cma_reset = ~ (resetn);
    assign i_mul64_kernel_2mm22_im8_cma_ena0 = 1'b1;
    assign i_mul64_kernel_2mm22_im8_cma_ena1 = i_mul64_kernel_2mm22_im8_cma_ena0;
    assign i_mul64_kernel_2mm22_im8_cma_ena2 = i_mul64_kernel_2mm22_im8_cma_ena0;

    assign i_mul64_kernel_2mm22_im8_cma_a0 = i_mul64_kernel_2mm22_bs1_merged_bit_select_c;
    assign i_mul64_kernel_2mm22_im8_cma_c0 = i_mul64_kernel_2mm22_bs2_merged_bit_select_c;
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
    ) i_mul64_kernel_2mm22_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul64_kernel_2mm22_im8_cma_ena2, i_mul64_kernel_2mm22_im8_cma_ena1, i_mul64_kernel_2mm22_im8_cma_ena0 }),
        .aclr({ i_mul64_kernel_2mm22_im8_cma_reset, i_mul64_kernel_2mm22_im8_cma_reset }),
        .ay(i_mul64_kernel_2mm22_im8_cma_a0),
        .ax(i_mul64_kernel_2mm22_im8_cma_c0),
        .resulta(i_mul64_kernel_2mm22_im8_cma_s0),
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
    i_mul64_kernel_2mm22_im8_cma_delay ( .xin(i_mul64_kernel_2mm22_im8_cma_s0), .xout(i_mul64_kernel_2mm22_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul64_kernel_2mm22_im8_cma_q = $unsigned(i_mul64_kernel_2mm22_im8_cma_qq[35:0]);

    // i_mul64_kernel_2mm22_sums_join_0(BITJOIN,210)@10
    assign i_mul64_kernel_2mm22_sums_join_0_q = {i_mul64_kernel_2mm22_im0_cma_q, i_mul64_kernel_2mm22_im8_cma_q};

    // i_mul64_kernel_2mm22_sums_result_add_0_0(ADD,213)@10
    assign i_mul64_kernel_2mm22_sums_result_add_0_0_a = {1'b0, i_mul64_kernel_2mm22_sums_join_0_q};
    assign i_mul64_kernel_2mm22_sums_result_add_0_0_b = {14'b00000000000000, i_mul64_kernel_2mm22_sums_align_1_q};
    assign i_mul64_kernel_2mm22_sums_result_add_0_0_o = $unsigned(i_mul64_kernel_2mm22_sums_result_add_0_0_a) + $unsigned(i_mul64_kernel_2mm22_sums_result_add_0_0_b);
    assign i_mul64_kernel_2mm22_sums_result_add_0_0_q = i_mul64_kernel_2mm22_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul64_kernel_2mm22_sel_x(BITSELECT,102)@10
    assign bgTrunc_i_mul64_kernel_2mm22_sel_x_in = i_mul64_kernel_2mm22_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul64_kernel_2mm22_sel_x_b = bgTrunc_i_mul64_kernel_2mm22_sel_x_in[31:0];

    // redist17_bgTrunc_i_mul64_kernel_2mm22_sel_x_b_1(DELAY,347)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_bgTrunc_i_mul64_kernel_2mm22_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist17_bgTrunc_i_mul64_kernel_2mm22_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul64_kernel_2mm22_sel_x_b);
        end
    end

    // i_add65_kernel_2mm24(ADD,41)@11
    assign i_add65_kernel_2mm24_a = {1'b0, redist17_bgTrunc_i_mul64_kernel_2mm22_sel_x_b_1_q};
    assign i_add65_kernel_2mm24_b = {1'b0, redist20_i_llvm_fpga_pop_i32_x45_033_pop37_kernel_2mm23_out_data_out_1_q};
    assign i_add65_kernel_2mm24_o = $unsigned(i_add65_kernel_2mm24_a) + $unsigned(i_add65_kernel_2mm24_b);
    assign i_add65_kernel_2mm24_q = i_add65_kernel_2mm24_o[32:0];

    // bgTrunc_i_add65_kernel_2mm24_sel_x(BITSELECT,99)@11
    assign bgTrunc_i_add65_kernel_2mm24_sel_x_b = i_add65_kernel_2mm24_q[31:0];

    // redist24_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_10(DELAY,354)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist24_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_10 ( .xin(redist23_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_1_q), .xout(redist24_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,166)@11
    assign out_c0_exi8197_0_tpl = GND_q;
    assign out_c0_exi8197_1_tpl = redist24_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_out_data_out_10_q;
    assign out_c0_exi8197_2_tpl = bgTrunc_i_add65_kernel_2mm24_sel_x_b;
    assign out_c0_exi8197_3_tpl = redist18_i_masked_kernel_2mm38_q_9_q;
    assign out_c0_exi8197_4_tpl = redist21_i_llvm_fpga_pop_i1_notcmp4256_pop40_kernel_2mm39_out_data_out_9_q;
    assign out_c0_exi8197_5_tpl = redist19_i_llvm_fpga_pop_p68i32_arrayidx49467_pop43_kernel_2mm41_out_data_out_9_mem_q;
    assign out_c0_exi8197_6_tpl = redist22_i_llvm_fpga_pop_i1_notcmp1668_pop44_kernel_2mm43_out_data_out_9_q;
    assign out_c0_exi8197_7_tpl = redist8_sync_together105_aunroll_x_in_c0_eni9179_8_tpl_10_mem_q;
    assign out_c0_exi8197_8_tpl = redist9_sync_together105_aunroll_x_in_c0_eni9179_9_tpl_10_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_kernel_2mm1 = GND_q;

endmodule
