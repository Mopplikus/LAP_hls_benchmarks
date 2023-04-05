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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body152_kernel_3mms_c0_enter41433_kernel_3mm0
// Created for function/kernel kernel_3mm
// SystemVerilog created on Wed Apr  5 01:38:03 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_i_sfc_logic_s_c0_in_for_body10000ter41433_kernel_3mm0 (
    input wire [31:0] in_unnamed_kernel_3mm27_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm27_kernel_3mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_3mm27_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm27_kernel_3mm_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [31:0] in_unnamed_kernel_3mm28_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm28_kernel_3mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_3mm28_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm28_kernel_3mm_avm_readdatavalid,
    output wire [31:0] out_unnamed_kernel_3mm27_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm27_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm27_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm27_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm27_kernel_3mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_3mm27_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm27_kernel_3mm_avm_burstcount,
    output wire [31:0] out_unnamed_kernel_3mm28_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm28_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm28_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm28_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm28_kernel_3mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_3mm28_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm28_kernel_3mm_avm_burstcount,
    output wire [0:0] out_c0_exi8432_0_tpl,
    output wire [0:0] out_c0_exi8432_1_tpl,
    output wire [31:0] out_c0_exi8432_2_tpl,
    output wire [0:0] out_c0_exi8432_3_tpl,
    output wire [0:0] out_c0_exi8432_4_tpl,
    output wire [63:0] out_c0_exi8432_5_tpl,
    output wire [0:0] out_c0_exi8432_6_tpl,
    output wire [0:0] out_c0_exi8432_7_tpl,
    output wire [31:0] out_c0_exi8432_8_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_kernel_3mm1,
    input wire [0:0] in_c0_eni10413_0_tpl,
    input wire [0:0] in_c0_eni10413_1_tpl,
    input wire [63:0] in_c0_eni10413_2_tpl,
    input wire [63:0] in_c0_eni10413_3_tpl,
    input wire [31:0] in_c0_eni10413_4_tpl,
    input wire [0:0] in_c0_eni10413_5_tpl,
    input wire [31:0] in_c0_eni10413_6_tpl,
    input wire [63:0] in_c0_eni10413_7_tpl,
    input wire [0:0] in_c0_eni10413_8_tpl,
    input wire [0:0] in_c0_eni10413_9_tpl,
    input wire [31:0] in_c0_eni10413_10_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] c_i2_175_q;
    wire [31:0] c_i32_077_q;
    wire [31:0] c_i32_178_q;
    wire [4:0] c_i5_181_q;
    wire [4:0] c_i5_879_q;
    wire [63:0] c_kernel_3mm_E_local_pmem_q;
    wire [63:0] c_kernel_3mm_F_local_pmem_q;
    wire [32:0] i_add162_kernel_3mm24_a;
    wire [32:0] i_add162_kernel_3mm24_b;
    logic [32:0] i_add162_kernel_3mm24_o;
    wire [32:0] i_add162_kernel_3mm24_q;
    wire [1:0] i_arrayidx15615_kernel_3mm16_vt_const_1_q;
    wire [63:0] i_arrayidx15615_kernel_3mm16_vt_join_q;
    wire [61:0] i_arrayidx15615_kernel_3mm16_vt_select_63_b;
    wire [63:0] i_arrayidx16016_kernel_3mm20_vt_join_q;
    wire [61:0] i_arrayidx16016_kernel_3mm20_vt_select_63_b;
    wire [1:0] i_cleanups_shl62_kernel_3mm5_vt_join_q;
    wire [0:0] i_cleanups_shl62_kernel_3mm5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor64_kernel_3mm4_q;
    wire [5:0] i_fpga_indvars_iv_next27_kernel_3mm36_a;
    wire [5:0] i_fpga_indvars_iv_next27_kernel_3mm36_b;
    logic [5:0] i_fpga_indvars_iv_next27_kernel_3mm36_o;
    wire [5:0] i_fpga_indvars_iv_next27_kernel_3mm36_q;
    wire [63:0] i_idxprom155_kernel_3mm13_vt_join_q;
    wire [31:0] i_idxprom155_kernel_3mm13_vt_select_31_b;
    wire [32:0] i_inc164_kernel_3mm26_a;
    wire [32:0] i_inc164_kernel_3mm26_b;
    logic [32:0] i_inc164_kernel_3mm26_o;
    wire [32:0] i_inc164_kernel_3mm26_q;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm27_kernel_3mm17_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm27_kernel_3mm17_out_unnamed_kernel_3mm27_kernel_3mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm27_kernel_3mm17_out_unnamed_kernel_3mm27_kernel_3mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_kernel_3mm27_kernel_3mm17_out_unnamed_kernel_3mm27_kernel_3mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm27_kernel_3mm17_out_unnamed_kernel_3mm27_kernel_3mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm27_kernel_3mm17_out_unnamed_kernel_3mm27_kernel_3mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm27_kernel_3mm17_out_unnamed_kernel_3mm27_kernel_3mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm27_kernel_3mm17_out_unnamed_kernel_3mm27_kernel_3mm_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm28_kernel_3mm21_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm28_kernel_3mm21_out_unnamed_kernel_3mm28_kernel_3mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm28_kernel_3mm21_out_unnamed_kernel_3mm28_kernel_3mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_kernel_3mm28_kernel_3mm21_out_unnamed_kernel_3mm28_kernel_3mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm28_kernel_3mm21_out_unnamed_kernel_3mm28_kernel_3mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm28_kernel_3mm21_out_unnamed_kernel_3mm28_kernel_3mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm28_kernel_3mm21_out_unnamed_kernel_3mm28_kernel_3mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm28_kernel_3mm21_out_unnamed_kernel_3mm28_kernel_3mm_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp70178_pop86_kernel_3mm45_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp70178_pop86_kernel_3mm45_out_feedback_stall_out_86;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp75162_pop81_kernel_3mm39_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp75162_pop81_kernel_3mm39_out_feedback_stall_out_81;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups61_pop80_kernel_3mm2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups61_pop80_kernel_3mm2_out_feedback_stall_out_80;
    wire [1:0] i_llvm_fpga_pop_i2_initerations56_pop79_kernel_3mm7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations56_pop79_kernel_3mm7_out_feedback_stall_out_79;
    wire [31:0] i_llvm_fpga_pop_i32_i_394_pop31164_pop82_kernel_3mm41_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_394_pop31164_pop82_kernel_3mm41_out_feedback_stall_out_82;
    wire [31:0] i_llvm_fpga_pop_i32_k_291_pop78_kernel_3mm12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k_291_pop78_kernel_3mm12_out_feedback_stall_out_78;
    wire [31:0] i_llvm_fpga_pop_i32_tmp145_092_pop77_kernel_3mm23_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_tmp145_092_pop77_kernel_3mm23_out_feedback_stall_out_77;
    wire [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv26_pop76_kernel_3mm28_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv26_pop76_kernel_3mm28_out_feedback_stall_out_76;
    wire [63:0] i_llvm_fpga_pop_i64_idxprom146175_pop83_kernel_3mm14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_idxprom146175_pop83_kernel_3mm14_out_feedback_stall_out_83;
    wire [63:0] i_llvm_fpga_pop_i64_idxprom148176_pop84_kernel_3mm18_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_idxprom148176_pop84_kernel_3mm18_out_feedback_stall_out_84;
    wire [63:0] i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_feedback_stall_out_85;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration60_kernel_3mm11_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration60_kernel_3mm11_out_feedback_valid_out_6;
    wire [0:0] i_llvm_fpga_push_i1_notcmp70178_push86_kernel_3mm46_out_feedback_out_86;
    wire [0:0] i_llvm_fpga_push_i1_notcmp70178_push86_kernel_3mm46_out_feedback_valid_out_86;
    wire [0:0] i_llvm_fpga_push_i1_notcmp75162_push81_kernel_3mm40_out_feedback_out_81;
    wire [0:0] i_llvm_fpga_push_i1_notcmp75162_push81_kernel_3mm40_out_feedback_valid_out_81;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond68_kernel_3mm32_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond68_kernel_3mm32_out_feedback_valid_out_7;
    wire [7:0] i_llvm_fpga_push_i2_cleanups61_push80_kernel_3mm35_out_feedback_out_80;
    wire [0:0] i_llvm_fpga_push_i2_cleanups61_push80_kernel_3mm35_out_feedback_valid_out_80;
    wire [7:0] i_llvm_fpga_push_i2_initerations56_push79_kernel_3mm9_out_feedback_out_79;
    wire [0:0] i_llvm_fpga_push_i2_initerations56_push79_kernel_3mm9_out_feedback_valid_out_79;
    wire [31:0] i_llvm_fpga_push_i32_i_394_pop31164_push82_kernel_3mm42_out_feedback_out_82;
    wire [0:0] i_llvm_fpga_push_i32_i_394_pop31164_push82_kernel_3mm42_out_feedback_valid_out_82;
    wire [31:0] i_llvm_fpga_push_i32_k_291_push78_kernel_3mm27_out_feedback_out_78;
    wire [0:0] i_llvm_fpga_push_i32_k_291_push78_kernel_3mm27_out_feedback_valid_out_78;
    wire [31:0] i_llvm_fpga_push_i32_tmp145_092_push77_kernel_3mm25_out_feedback_out_77;
    wire [0:0] i_llvm_fpga_push_i32_tmp145_092_push77_kernel_3mm25_out_feedback_valid_out_77;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv26_push76_kernel_3mm37_out_feedback_out_76;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv26_push76_kernel_3mm37_out_feedback_valid_out_76;
    wire [63:0] i_llvm_fpga_push_i64_idxprom146175_push83_kernel_3mm15_out_feedback_out_83;
    wire [0:0] i_llvm_fpga_push_i64_idxprom146175_push83_kernel_3mm15_out_feedback_valid_out_83;
    wire [63:0] i_llvm_fpga_push_i64_idxprom148176_push84_kernel_3mm19_out_feedback_out_84;
    wire [0:0] i_llvm_fpga_push_i64_idxprom148176_push84_kernel_3mm19_out_feedback_valid_out_84;
    wire [63:0] i_llvm_fpga_push_p70i32_arrayidx14914177_push85_kernel_3mm44_out_feedback_out_85;
    wire [0:0] i_llvm_fpga_push_p70i32_arrayidx14914177_push85_kernel_3mm44_out_feedback_valid_out_85;
    wire [0:0] i_masked67_kernel_3mm38_qi;
    reg [0:0] i_masked67_kernel_3mm38_q;
    wire [0:0] i_next_cleanups66_kernel_3mm34_s;
    reg [1:0] i_next_cleanups66_kernel_3mm34_q;
    wire [1:0] i_next_initerations57_kernel_3mm8_vt_join_q;
    wire [0:0] i_next_initerations57_kernel_3mm8_vt_select_0_b;
    wire [0:0] i_notcmp54_kernel_3mm31_q;
    wire [0:0] i_or65_kernel_3mm33_q;
    wire [31:0] bgTrunc_i_add162_kernel_3mm24_sel_x_b;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next27_kernel_3mm36_sel_x_b;
    wire [31:0] bgTrunc_i_inc164_kernel_3mm26_sel_x_b;
    wire [63:0] bgTrunc_i_mul161_kernel_3mm22_sel_x_in;
    wire [31:0] bgTrunc_i_mul161_kernel_3mm22_sel_x_b;
    wire [9:0] i_arrayidx15615_kernel_3mm0_add_x_a;
    wire [9:0] i_arrayidx15615_kernel_3mm0_add_x_b;
    logic [9:0] i_arrayidx15615_kernel_3mm0_add_x_o;
    wire [9:0] i_arrayidx15615_kernel_3mm0_add_x_q;
    wire [63:0] i_arrayidx15615_kernel_3mm0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx15615_kernel_3mm0_narrow_x_b;
    wire [8:0] i_arrayidx15615_kernel_3mm0_shift_join_x_q;
    wire [9:0] i_arrayidx15615_kernel_3mm0_dupName_0_add_x_a;
    wire [9:0] i_arrayidx15615_kernel_3mm0_dupName_0_add_x_b;
    logic [9:0] i_arrayidx15615_kernel_3mm0_dupName_0_add_x_o;
    wire [9:0] i_arrayidx15615_kernel_3mm0_dupName_0_add_x_q;
    wire [17:0] i_arrayidx15615_kernel_3mm0_mult_extender_x_q;
    wire [2:0] i_arrayidx15615_kernel_3mm0_mult_multconst_x_q;
    wire [8:0] i_arrayidx15615_kernel_3mm0_dupName_0_trunc_sel_x_b;
    wire [8:0] i_arrayidx15615_kernel_3mm0_dupName_1_trunc_sel_x_b;
    wire [8:0] i_arrayidx15615_kernel_3mm0_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx15615_kernel_3mm0_dupName_3_trunc_sel_x_b;
    wire [8:0] i_arrayidx15615_kernel_3mm0_dupName_5_trunc_sel_x_b;
    wire [9:0] i_arrayidx16016_kernel_3mm0_add_x_a;
    wire [9:0] i_arrayidx16016_kernel_3mm0_add_x_b;
    logic [9:0] i_arrayidx16016_kernel_3mm0_add_x_o;
    wire [9:0] i_arrayidx16016_kernel_3mm0_add_x_q;
    wire [63:0] i_arrayidx16016_kernel_3mm0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx16016_kernel_3mm0_narrow_x_b;
    wire [8:0] i_arrayidx16016_kernel_3mm0_shift_join_x_q;
    wire [9:0] i_arrayidx16016_kernel_3mm0_dupName_0_add_x_a;
    wire [9:0] i_arrayidx16016_kernel_3mm0_dupName_0_add_x_b;
    logic [9:0] i_arrayidx16016_kernel_3mm0_dupName_0_add_x_o;
    wire [9:0] i_arrayidx16016_kernel_3mm0_dupName_0_add_x_q;
    wire [17:0] i_arrayidx16016_kernel_3mm0_mult_extender_x_q;
    wire [8:0] i_arrayidx16016_kernel_3mm0_dupName_1_trunc_sel_x_b;
    wire [8:0] i_arrayidx16016_kernel_3mm0_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx16016_kernel_3mm0_dupName_3_trunc_sel_x_b;
    wire [8:0] i_arrayidx16016_kernel_3mm0_dupName_5_trunc_sel_x_b;
    wire [0:0] i_first_cleanup63_kernel_3mm3_sel_x_b;
    wire [63:0] i_idxprom155_kernel_3mm13_sel_x_b;
    wire [0:0] i_last_initeration59_kernel_3mm10_sel_x_b;
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
    wire [0:0] i_exitcond28_kernel_3mm29_cmp_nsign_q;
    wire [63:0] i_mul161_kernel_3mm22_sums_join_0_q;
    wire [50:0] i_mul161_kernel_3mm22_sums_align_1_q;
    wire [50:0] i_mul161_kernel_3mm22_sums_align_1_qint;
    wire [64:0] i_mul161_kernel_3mm22_sums_result_add_0_0_a;
    wire [64:0] i_mul161_kernel_3mm22_sums_result_add_0_0_b;
    logic [64:0] i_mul161_kernel_3mm22_sums_result_add_0_0_o;
    wire [64:0] i_mul161_kernel_3mm22_sums_result_add_0_0_q;
    wire [9:0] addsumAHighB_uid230_i_arrayidx15615_kernel_3mm0_mult_x_a;
    wire [9:0] addsumAHighB_uid230_i_arrayidx15615_kernel_3mm0_mult_x_b;
    logic [9:0] addsumAHighB_uid230_i_arrayidx15615_kernel_3mm0_mult_x_o;
    wire [9:0] addsumAHighB_uid230_i_arrayidx15615_kernel_3mm0_mult_x_q;
    wire [11:0] add_uid231_i_arrayidx15615_kernel_3mm0_mult_x_q;
    wire [14:0] sR_mergedSignalTM_uid236_i_arrayidx15615_kernel_3mm0_mult_x_q;
    wire [1:0] lowRangeB_uid274_i_arrayidx16016_kernel_3mm0_mult_x_in;
    wire [1:0] lowRangeB_uid274_i_arrayidx16016_kernel_3mm0_mult_x_b;
    wire [6:0] highBBits_uid275_i_arrayidx16016_kernel_3mm0_mult_x_b;
    wire [9:0] addsumAHighB_uid276_i_arrayidx16016_kernel_3mm0_mult_x_a;
    wire [9:0] addsumAHighB_uid276_i_arrayidx16016_kernel_3mm0_mult_x_b;
    logic [9:0] addsumAHighB_uid276_i_arrayidx16016_kernel_3mm0_mult_x_o;
    wire [9:0] addsumAHighB_uid276_i_arrayidx16016_kernel_3mm0_mult_x_q;
    wire [11:0] add_uid277_i_arrayidx16016_kernel_3mm0_mult_x_q;
    wire [14:0] sR_mergedSignalTM_uid282_i_arrayidx16016_kernel_3mm0_mult_x_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid316_i_cleanups_shl62_kernel_3mm0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid316_i_cleanups_shl62_kernel_3mm0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid317_i_cleanups_shl62_kernel_3mm0_shift_x_q;
    wire [0:0] leftShiftStage0_uid319_i_cleanups_shl62_kernel_3mm0_shift_x_s;
    reg [1:0] leftShiftStage0_uid319_i_cleanups_shl62_kernel_3mm0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid323_i_next_initerations57_kernel_3mm0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid325_i_next_initerations57_kernel_3mm0_shift_x_q;
    wire [0:0] rightShiftStage0_uid327_i_next_initerations57_kernel_3mm0_shift_x_s;
    reg [1:0] rightShiftStage0_uid327_i_next_initerations57_kernel_3mm0_shift_x_q;
    wire i_mul161_kernel_3mm22_im0_cma_reset;
    wire [13:0] i_mul161_kernel_3mm22_im0_cma_a0;
    wire [13:0] i_mul161_kernel_3mm22_im0_cma_c0;
    wire [27:0] i_mul161_kernel_3mm22_im0_cma_s0;
    wire [27:0] i_mul161_kernel_3mm22_im0_cma_qq;
    wire [27:0] i_mul161_kernel_3mm22_im0_cma_q;
    wire i_mul161_kernel_3mm22_im0_cma_ena0;
    wire i_mul161_kernel_3mm22_im0_cma_ena1;
    wire i_mul161_kernel_3mm22_im0_cma_ena2;
    wire i_mul161_kernel_3mm22_im8_cma_reset;
    wire [17:0] i_mul161_kernel_3mm22_im8_cma_a0;
    wire [17:0] i_mul161_kernel_3mm22_im8_cma_c0;
    wire [35:0] i_mul161_kernel_3mm22_im8_cma_s0;
    wire [35:0] i_mul161_kernel_3mm22_im8_cma_qq;
    wire [35:0] i_mul161_kernel_3mm22_im8_cma_q;
    wire i_mul161_kernel_3mm22_im8_cma_ena0;
    wire i_mul161_kernel_3mm22_im8_cma_ena1;
    wire i_mul161_kernel_3mm22_im8_cma_ena2;
    wire i_mul161_kernel_3mm22_ma3_cma_reset;
    wire [13:0] i_mul161_kernel_3mm22_ma3_cma_a0;
    wire [17:0] i_mul161_kernel_3mm22_ma3_cma_c0;
    wire [13:0] i_mul161_kernel_3mm22_ma3_cma_a1;
    wire [17:0] i_mul161_kernel_3mm22_ma3_cma_c1;
    wire [32:0] i_mul161_kernel_3mm22_ma3_cma_s0;
    wire [32:0] i_mul161_kernel_3mm22_ma3_cma_qq;
    wire [32:0] i_mul161_kernel_3mm22_ma3_cma_q;
    wire i_mul161_kernel_3mm22_ma3_cma_ena0;
    wire i_mul161_kernel_3mm22_ma3_cma_ena1;
    wire i_mul161_kernel_3mm22_ma3_cma_ena2;
    wire [54:0] i_arrayidx15615_kernel_3mm0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx15615_kernel_3mm0_upper_bits_x_merged_bit_select_c;
    wire [54:0] i_arrayidx16016_kernel_3mm0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx16016_kernel_3mm0_upper_bits_x_merged_bit_select_c;
    wire [13:0] i_mul161_kernel_3mm22_bs2_merged_bit_select_b;
    wire [17:0] i_mul161_kernel_3mm22_bs2_merged_bit_select_c;
    wire [13:0] i_mul161_kernel_3mm22_bs1_merged_bit_select_b;
    wire [17:0] i_mul161_kernel_3mm22_bs1_merged_bit_select_c;
    wire [1:0] lowRangeB_uid228_i_arrayidx15615_kernel_3mm0_mult_x_merged_bit_select_b;
    wire [6:0] lowRangeB_uid228_i_arrayidx15615_kernel_3mm0_mult_x_merged_bit_select_c;
    reg [0:0] redist0_sync_together110_aunroll_x_in_c0_eni10413_1_tpl_1_q;
    reg [0:0] redist1_sync_together110_aunroll_x_in_c0_eni10413_1_tpl_9_q;
    reg [63:0] redist2_sync_together110_aunroll_x_in_c0_eni10413_2_tpl_1_q;
    reg [63:0] redist3_sync_together110_aunroll_x_in_c0_eni10413_3_tpl_1_q;
    reg [0:0] redist5_sync_together110_aunroll_x_in_c0_eni10413_5_tpl_9_q;
    reg [31:0] redist6_sync_together110_aunroll_x_in_c0_eni10413_6_tpl_1_q;
    reg [63:0] redist7_sync_together110_aunroll_x_in_c0_eni10413_7_tpl_1_q;
    reg [0:0] redist8_sync_together110_aunroll_x_in_c0_eni10413_8_tpl_9_q;
    reg [0:0] redist9_sync_together110_aunroll_x_in_c0_eni10413_9_tpl_10_q;
    reg [0:0] redist11_sync_together110_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist12_sync_together110_aunroll_x_in_i_valid_8_q;
    reg [0:0] redist13_sync_together110_aunroll_x_in_i_valid_9_q;
    reg [8:0] redist14_i_arrayidx16016_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q;
    reg [6:0] redist15_i_arrayidx16016_kernel_3mm0_narrow_x_b_1_q;
    reg [8:0] redist16_i_arrayidx15615_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q;
    reg [6:0] redist17_i_arrayidx15615_kernel_3mm0_narrow_x_b_1_q;
    reg [31:0] redist18_bgTrunc_i_mul161_kernel_3mm22_sel_x_b_1_q;
    reg [0:0] redist19_i_masked67_kernel_3mm38_q_9_q;
    reg [31:0] redist21_i_llvm_fpga_pop_i32_tmp145_092_pop77_kernel_3mm23_out_data_out_1_q;
    reg [0:0] redist22_i_llvm_fpga_pop_i1_notcmp75162_pop81_kernel_3mm39_out_data_out_1_q;
    reg [0:0] redist23_i_llvm_fpga_pop_i1_notcmp70178_pop86_kernel_3mm45_out_data_out_1_q;
    reg [0:0] redist24_i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_out_data_out_1_q;
    reg [0:0] redist25_i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_out_data_out_10_q;
    reg [0:0] redist26_i_first_cleanup_xor64_kernel_3mm4_q_1_q;
    wire redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_mem_reset0;
    wire [31:0] redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_mem_ia;
    wire [2:0] redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_mem_aa;
    wire [2:0] redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_mem_ab;
    wire [31:0] redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_mem_iq;
    wire [31:0] redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_mem_q;
    wire [2:0] redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_rdcnt_i;
    reg [2:0] redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_wraddr_q;
    wire [3:0] redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_mem_last_q;
    wire [3:0] redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_cmp_b;
    wire [0:0] redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_cmpReg_q;
    wire [0:0] redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_notEnable_q;
    wire [0:0] redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_sticky_ena_q;
    wire [0:0] redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_enaAnd_q;
    wire redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_mem_reset0;
    wire [31:0] redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_mem_ia;
    wire [3:0] redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_mem_aa;
    wire [3:0] redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_mem_ab;
    wire [31:0] redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_mem_iq;
    wire [31:0] redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_mem_q;
    wire [3:0] redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_rdcnt_q;
    (* preserve *) reg [3:0] redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_rdcnt_i;
    (* preserve *) reg redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_rdcnt_eq;
    reg [3:0] redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_wraddr_q;
    wire [3:0] redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_mem_last_q;
    wire [0:0] redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_cmp_q;
    (* dont_merge *) reg [0:0] redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_cmpReg_q;
    wire [0:0] redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_notEnable_q;
    wire [0:0] redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_nor_q;
    (* dont_merge *) reg [0:0] redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_sticky_ena_q;
    wire [0:0] redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_enaAnd_q;
    wire redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_mem_reset0;
    wire [63:0] redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_mem_ia;
    wire [2:0] redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_mem_aa;
    wire [2:0] redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_mem_ab;
    wire [63:0] redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_mem_iq;
    wire [63:0] redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_mem_q;
    wire [2:0] redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_rdcnt_q;
    (* preserve *) reg [2:0] redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_rdcnt_i;
    reg [2:0] redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_wraddr_q;
    wire [3:0] redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_mem_last_q;
    wire [3:0] redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_cmp_b;
    wire [0:0] redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_cmp_q;
    (* dont_merge *) reg [0:0] redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_cmpReg_q;
    wire [0:0] redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_notEnable_q;
    wire [0:0] redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_nor_q;
    (* dont_merge *) reg [0:0] redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_sticky_ena_q;
    wire [0:0] redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_enaAnd_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist11_sync_together110_aunroll_x_in_i_valid_1(DELAY,347)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together110_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist11_sync_together110_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist24_i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_out_data_out_1(DELAY,360)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist24_i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid316_i_cleanups_shl62_kernel_3mm0_shift_x(BITSELECT,315)@2
    assign leftShiftStage0Idx1Rng1_uid316_i_cleanups_shl62_kernel_3mm0_shift_x_in = i_llvm_fpga_pop_i2_cleanups61_pop80_kernel_3mm2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid316_i_cleanups_shl62_kernel_3mm0_shift_x_b = leftShiftStage0Idx1Rng1_uid316_i_cleanups_shl62_kernel_3mm0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid317_i_cleanups_shl62_kernel_3mm0_shift_x(BITJOIN,316)@2
    assign leftShiftStage0Idx1_uid317_i_cleanups_shl62_kernel_3mm0_shift_x_q = {leftShiftStage0Idx1Rng1_uid316_i_cleanups_shl62_kernel_3mm0_shift_x_b, GND_q};

    // leftShiftStage0_uid319_i_cleanups_shl62_kernel_3mm0_shift_x(MUX,318)@2
    assign leftShiftStage0_uid319_i_cleanups_shl62_kernel_3mm0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid319_i_cleanups_shl62_kernel_3mm0_shift_x_s or i_llvm_fpga_pop_i2_cleanups61_pop80_kernel_3mm2_out_data_out or leftShiftStage0Idx1_uid317_i_cleanups_shl62_kernel_3mm0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid319_i_cleanups_shl62_kernel_3mm0_shift_x_s)
            1'b0 : leftShiftStage0_uid319_i_cleanups_shl62_kernel_3mm0_shift_x_q = i_llvm_fpga_pop_i2_cleanups61_pop80_kernel_3mm2_out_data_out;
            1'b1 : leftShiftStage0_uid319_i_cleanups_shl62_kernel_3mm0_shift_x_q = leftShiftStage0Idx1_uid317_i_cleanups_shl62_kernel_3mm0_shift_x_q;
            default : leftShiftStage0_uid319_i_cleanups_shl62_kernel_3mm0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl62_kernel_3mm5_vt_select_1(BITSELECT,52)@2
    assign i_cleanups_shl62_kernel_3mm5_vt_select_1_b = leftShiftStage0_uid319_i_cleanups_shl62_kernel_3mm0_shift_x_q[1:1];

    // i_cleanups_shl62_kernel_3mm5_vt_join(BITJOIN,51)@2
    assign i_cleanups_shl62_kernel_3mm5_vt_join_q = {i_cleanups_shl62_kernel_3mm5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor64_kernel_3mm4(LOGICAL,55)@2
    assign i_first_cleanup_xor64_kernel_3mm4_q = i_first_cleanup63_kernel_3mm3_sel_x_b ^ VCC_q;

    // i_notcmp54_kernel_3mm31(LOGICAL,96)@2
    assign i_notcmp54_kernel_3mm31_q = i_exitcond28_kernel_3mm29_cmp_nsign_q ^ VCC_q;

    // i_or65_kernel_3mm33(LOGICAL,97)@2
    assign i_or65_kernel_3mm33_q = i_notcmp54_kernel_3mm31_q | i_first_cleanup_xor64_kernel_3mm4_q;

    // i_next_cleanups66_kernel_3mm34(MUX,92)@2
    assign i_next_cleanups66_kernel_3mm34_s = i_or65_kernel_3mm33_q;
    always @(i_next_cleanups66_kernel_3mm34_s or i_llvm_fpga_pop_i2_cleanups61_pop80_kernel_3mm2_out_data_out or i_cleanups_shl62_kernel_3mm5_vt_join_q)
    begin
        unique case (i_next_cleanups66_kernel_3mm34_s)
            1'b0 : i_next_cleanups66_kernel_3mm34_q = i_llvm_fpga_pop_i2_cleanups61_pop80_kernel_3mm2_out_data_out;
            1'b1 : i_next_cleanups66_kernel_3mm34_q = i_cleanups_shl62_kernel_3mm5_vt_join_q;
            default : i_next_cleanups66_kernel_3mm34_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups61_push80_kernel_3mm35(BLACKBOX,81)@2
    // out out_feedback_out_80@20000000
    // out out_feedback_valid_out_80@20000000
    kernel_3mm_i_llvm_fpga_push_i2_cleanups61_push80_0 thei_llvm_fpga_push_i2_cleanups61_push80_kernel_3mm35 (
        .in_data_in(i_next_cleanups66_kernel_3mm34_q),
        .in_feedback_stall_in_80(i_llvm_fpga_pop_i2_cleanups61_pop80_kernel_3mm2_out_feedback_stall_out_80),
        .in_keep_going58(redist24_i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist11_sync_together110_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_80(i_llvm_fpga_push_i2_cleanups61_push80_kernel_3mm35_out_feedback_out_80),
        .out_feedback_valid_out_80(i_llvm_fpga_push_i2_cleanups61_push80_kernel_3mm35_out_feedback_valid_out_80),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together110_aunroll_x_in_c0_eni10413_1_tpl_1(DELAY,336)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together110_aunroll_x_in_c0_eni10413_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together110_aunroll_x_in_c0_eni10413_1_tpl_1_q <= $unsigned(in_c0_eni10413_1_tpl);
        end
    end

    // c_i2_175(CONSTANT,34)
    assign c_i2_175_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups61_pop80_kernel_3mm2(BLACKBOX,68)@2
    // out out_feedback_stall_out_80@20000000
    kernel_3mm_i_llvm_fpga_pop_i2_cleanups61_pop80_0 thei_llvm_fpga_pop_i2_cleanups61_pop80_kernel_3mm2 (
        .in_data_in(c_i2_175_q),
        .in_dir(redist0_sync_together110_aunroll_x_in_c0_eni10413_1_tpl_1_q),
        .in_feedback_in_80(i_llvm_fpga_push_i2_cleanups61_push80_kernel_3mm35_out_feedback_out_80),
        .in_feedback_valid_in_80(i_llvm_fpga_push_i2_cleanups61_push80_kernel_3mm35_out_feedback_valid_out_80),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist11_sync_together110_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups61_pop80_kernel_3mm2_out_data_out),
        .out_feedback_stall_out_80(i_llvm_fpga_pop_i2_cleanups61_pop80_kernel_3mm2_out_feedback_stall_out_80),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup63_kernel_3mm3_sel_x(BITSELECT,163)@2
    assign i_first_cleanup63_kernel_3mm3_sel_x_b = i_llvm_fpga_pop_i2_cleanups61_pop80_kernel_3mm2_out_data_out[0:0];

    // c_i5_181(CONSTANT,37)
    assign c_i5_181_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next27_kernel_3mm36(ADD,56)@2
    assign i_fpga_indvars_iv_next27_kernel_3mm36_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv26_pop76_kernel_3mm28_out_data_out};
    assign i_fpga_indvars_iv_next27_kernel_3mm36_b = {1'b0, c_i5_181_q};
    assign i_fpga_indvars_iv_next27_kernel_3mm36_o = $unsigned(i_fpga_indvars_iv_next27_kernel_3mm36_a) + $unsigned(i_fpga_indvars_iv_next27_kernel_3mm36_b);
    assign i_fpga_indvars_iv_next27_kernel_3mm36_q = i_fpga_indvars_iv_next27_kernel_3mm36_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next27_kernel_3mm36_sel_x(BITSELECT,104)@2
    assign bgTrunc_i_fpga_indvars_iv_next27_kernel_3mm36_sel_x_b = i_fpga_indvars_iv_next27_kernel_3mm36_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv26_push76_kernel_3mm37(BLACKBOX,86)@2
    // out out_feedback_out_76@20000000
    // out out_feedback_valid_out_76@20000000
    kernel_3mm_i_llvm_fpga_push_i5_fpga_indvars_iv26_push76_0 thei_llvm_fpga_push_i5_fpga_indvars_iv26_push76_kernel_3mm37 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next27_kernel_3mm36_sel_x_b),
        .in_feedback_stall_in_76(i_llvm_fpga_pop_i5_fpga_indvars_iv26_pop76_kernel_3mm28_out_feedback_stall_out_76),
        .in_keep_going58(redist24_i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist11_sync_together110_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_76(i_llvm_fpga_push_i5_fpga_indvars_iv26_push76_kernel_3mm37_out_feedback_out_76),
        .out_feedback_valid_out_76(i_llvm_fpga_push_i5_fpga_indvars_iv26_push76_kernel_3mm37_out_feedback_valid_out_76),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_879(CONSTANT,38)
    assign c_i5_879_q = $unsigned(5'b01000);

    // i_llvm_fpga_pop_i5_fpga_indvars_iv26_pop76_kernel_3mm28(BLACKBOX,73)@2
    // out out_feedback_stall_out_76@20000000
    kernel_3mm_i_llvm_fpga_pop_i5_fpga_indvars_iv26_pop76_0 thei_llvm_fpga_pop_i5_fpga_indvars_iv26_pop76_kernel_3mm28 (
        .in_data_in(c_i5_879_q),
        .in_dir(redist0_sync_together110_aunroll_x_in_c0_eni10413_1_tpl_1_q),
        .in_feedback_in_76(i_llvm_fpga_push_i5_fpga_indvars_iv26_push76_kernel_3mm37_out_feedback_out_76),
        .in_feedback_valid_in_76(i_llvm_fpga_push_i5_fpga_indvars_iv26_push76_kernel_3mm37_out_feedback_valid_out_76),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist11_sync_together110_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i5_fpga_indvars_iv26_pop76_kernel_3mm28_out_data_out),
        .out_feedback_stall_out_76(i_llvm_fpga_pop_i5_fpga_indvars_iv26_pop76_kernel_3mm28_out_feedback_stall_out_76),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond28_kernel_3mm29_cmp_nsign(LOGICAL,204)@2
    assign i_exitcond28_kernel_3mm29_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i5_fpga_indvars_iv26_pop76_kernel_3mm28_out_data_out[4:4]));

    // i_llvm_fpga_push_i1_notexitcond68_kernel_3mm32(BLACKBOX,80)@2
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    kernel_3mm_i_llvm_fpga_push_i1_notexitcond68_0 thei_llvm_fpga_push_i1_notexitcond68_kernel_3mm32 (
        .in_data_in(i_exitcond28_kernel_3mm29_cmp_nsign_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_out_not_exitcond_stall_out),
        .in_first_cleanup63(i_first_cleanup63_kernel_3mm3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist11_sync_together110_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i1_notexitcond68_kernel_3mm32_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i1_notexitcond68_kernel_3mm32_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,175)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid323_i_next_initerations57_kernel_3mm0_shift_x(BITSELECT,322)@2
    assign rightShiftStage0Idx1Rng1_uid323_i_next_initerations57_kernel_3mm0_shift_x_b = i_llvm_fpga_pop_i2_initerations56_pop79_kernel_3mm7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid325_i_next_initerations57_kernel_3mm0_shift_x(BITJOIN,324)@2
    assign rightShiftStage0Idx1_uid325_i_next_initerations57_kernel_3mm0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid323_i_next_initerations57_kernel_3mm0_shift_x_b};

    // valid_fanout_reg1(REG,173)@1 + 1
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

    // valid_fanout_reg2(REG,174)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations56_push79_kernel_3mm9(BLACKBOX,82)@2
    // out out_feedback_out_79@20000000
    // out out_feedback_valid_out_79@20000000
    kernel_3mm_i_llvm_fpga_push_i2_initerations56_push79_0 thei_llvm_fpga_push_i2_initerations56_push79_kernel_3mm9 (
        .in_data_in(i_next_initerations57_kernel_3mm8_vt_join_q),
        .in_feedback_stall_in_79(i_llvm_fpga_pop_i2_initerations56_pop79_kernel_3mm7_out_feedback_stall_out_79),
        .in_keep_going58(redist24_i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_79(i_llvm_fpga_push_i2_initerations56_push79_kernel_3mm9_out_feedback_out_79),
        .out_feedback_valid_out_79(i_llvm_fpga_push_i2_initerations56_push79_kernel_3mm9_out_feedback_valid_out_79),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations56_pop79_kernel_3mm7(BLACKBOX,69)@2
    // out out_feedback_stall_out_79@20000000
    kernel_3mm_i_llvm_fpga_pop_i2_initerations56_pop79_0 thei_llvm_fpga_pop_i2_initerations56_pop79_kernel_3mm7 (
        .in_data_in(c_i2_175_q),
        .in_dir(redist0_sync_together110_aunroll_x_in_c0_eni10413_1_tpl_1_q),
        .in_feedback_in_79(i_llvm_fpga_push_i2_initerations56_push79_kernel_3mm9_out_feedback_out_79),
        .in_feedback_valid_in_79(i_llvm_fpga_push_i2_initerations56_push79_kernel_3mm9_out_feedback_valid_out_79),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations56_pop79_kernel_3mm7_out_data_out),
        .out_feedback_stall_out_79(i_llvm_fpga_pop_i2_initerations56_pop79_kernel_3mm7_out_feedback_stall_out_79),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid327_i_next_initerations57_kernel_3mm0_shift_x(MUX,326)@2
    assign rightShiftStage0_uid327_i_next_initerations57_kernel_3mm0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid327_i_next_initerations57_kernel_3mm0_shift_x_s or i_llvm_fpga_pop_i2_initerations56_pop79_kernel_3mm7_out_data_out or rightShiftStage0Idx1_uid325_i_next_initerations57_kernel_3mm0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid327_i_next_initerations57_kernel_3mm0_shift_x_s)
            1'b0 : rightShiftStage0_uid327_i_next_initerations57_kernel_3mm0_shift_x_q = i_llvm_fpga_pop_i2_initerations56_pop79_kernel_3mm7_out_data_out;
            1'b1 : rightShiftStage0_uid327_i_next_initerations57_kernel_3mm0_shift_x_q = rightShiftStage0Idx1_uid325_i_next_initerations57_kernel_3mm0_shift_x_q;
            default : rightShiftStage0_uid327_i_next_initerations57_kernel_3mm0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations57_kernel_3mm8_vt_select_0(BITSELECT,95)@2
    assign i_next_initerations57_kernel_3mm8_vt_select_0_b = rightShiftStage0_uid327_i_next_initerations57_kernel_3mm0_shift_x_q[0:0];

    // i_next_initerations57_kernel_3mm8_vt_join(BITJOIN,94)@2
    assign i_next_initerations57_kernel_3mm8_vt_join_q = {GND_q, i_next_initerations57_kernel_3mm8_vt_select_0_b};

    // i_last_initeration59_kernel_3mm10_sel_x(BITSELECT,165)@2
    assign i_last_initeration59_kernel_3mm10_sel_x_b = i_next_initerations57_kernel_3mm8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration60_kernel_3mm11(BLACKBOX,77)@2
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    kernel_3mm_i_llvm_fpga_push_i1_lastiniteration60_0 thei_llvm_fpga_push_i1_lastiniteration60_kernel_3mm11 (
        .in_data_in(i_last_initeration59_kernel_3mm10_sel_x_b),
        .in_feedback_stall_in_6(i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_out_initeration_stall_out),
        .in_keep_going58(redist24_i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i1_lastiniteration60_kernel_3mm11_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i1_lastiniteration60_kernel_3mm11_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going58_kernel_3mm6(BLACKBOX,65)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    kernel_3mm_i_llvm_fpga_pipeline_keep_going58_0 thei_llvm_fpga_pipeline_keep_going58_kernel_3mm6 (
        .in_data_in(in_c0_eni10413_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration60_kernel_3mm11_out_feedback_out_6),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration60_kernel_3mm11_out_feedback_valid_out_6),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond68_kernel_3mm32_out_feedback_out_7),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond68_kernel_3mm32_out_feedback_valid_out_7),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,42)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,100)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_out_pipeline_valid_out;

    // valid_fanout_reg7(REG,179)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist11_sync_together110_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist26_i_first_cleanup_xor64_kernel_3mm4_q_1(DELAY,362)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_first_cleanup_xor64_kernel_3mm4_q_1_q <= '0;
        end
        else
        begin
            redist26_i_first_cleanup_xor64_kernel_3mm4_q_1_q <= $unsigned(i_first_cleanup_xor64_kernel_3mm4_q);
        end
    end

    // c_kernel_3mm_E_local_pmem(CONSTANT,39)
    assign c_kernel_3mm_E_local_pmem_q = $unsigned(64'b0100000001000100000000000000000000000000000000000000000000000000);

    // i_arrayidx15615_kernel_3mm0_upper_bits_x_merged_bit_select(BITSELECT,331)@3
    assign i_arrayidx15615_kernel_3mm0_upper_bits_x_merged_bit_select_b = c_kernel_3mm_E_local_pmem_q[63:9];
    assign i_arrayidx15615_kernel_3mm0_upper_bits_x_merged_bit_select_c = c_kernel_3mm_E_local_pmem_q[8:0];

    // c_i32_077(CONSTANT,35)
    assign c_i32_077_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg4(REG,176)@1 + 1
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

    // valid_fanout_reg13(REG,185)@1 + 1
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

    // c_i32_178(CONSTANT,36)
    assign c_i32_178_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc164_kernel_3mm26(ADD,61)@2
    assign i_inc164_kernel_3mm26_a = {1'b0, i_llvm_fpga_pop_i32_k_291_pop78_kernel_3mm12_out_data_out};
    assign i_inc164_kernel_3mm26_b = {1'b0, c_i32_178_q};
    assign i_inc164_kernel_3mm26_o = $unsigned(i_inc164_kernel_3mm26_a) + $unsigned(i_inc164_kernel_3mm26_b);
    assign i_inc164_kernel_3mm26_q = i_inc164_kernel_3mm26_o[32:0];

    // bgTrunc_i_inc164_kernel_3mm26_sel_x(BITSELECT,105)@2
    assign bgTrunc_i_inc164_kernel_3mm26_sel_x_b = i_inc164_kernel_3mm26_q[31:0];

    // i_llvm_fpga_push_i32_k_291_push78_kernel_3mm27(BLACKBOX,84)@2
    // out out_feedback_out_78@20000000
    // out out_feedback_valid_out_78@20000000
    kernel_3mm_i_llvm_fpga_push_i32_k_291_push78_0 thei_llvm_fpga_push_i32_k_291_push78_kernel_3mm27 (
        .in_data_in(bgTrunc_i_inc164_kernel_3mm26_sel_x_b),
        .in_feedback_stall_in_78(i_llvm_fpga_pop_i32_k_291_pop78_kernel_3mm12_out_feedback_stall_out_78),
        .in_keep_going58(redist24_i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_78(i_llvm_fpga_push_i32_k_291_push78_kernel_3mm27_out_feedback_out_78),
        .out_feedback_valid_out_78(i_llvm_fpga_push_i32_k_291_push78_kernel_3mm27_out_feedback_valid_out_78),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_k_291_pop78_kernel_3mm12(BLACKBOX,71)@2
    // out out_feedback_stall_out_78@20000000
    kernel_3mm_i_llvm_fpga_pop_i32_k_291_pop78_0 thei_llvm_fpga_pop_i32_k_291_pop78_kernel_3mm12 (
        .in_data_in(c_i32_077_q),
        .in_dir(redist0_sync_together110_aunroll_x_in_c0_eni10413_1_tpl_1_q),
        .in_feedback_in_78(i_llvm_fpga_push_i32_k_291_push78_kernel_3mm27_out_feedback_out_78),
        .in_feedback_valid_in_78(i_llvm_fpga_push_i32_k_291_push78_kernel_3mm27_out_feedback_valid_out_78),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_k_291_pop78_kernel_3mm12_out_data_out),
        .out_feedback_stall_out_78(i_llvm_fpga_pop_i32_k_291_pop78_kernel_3mm12_out_feedback_stall_out_78),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom155_kernel_3mm13_sel_x(BITSELECT,164)@2
    assign i_idxprom155_kernel_3mm13_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_k_291_pop78_kernel_3mm12_out_data_out[31:0]};

    // i_idxprom155_kernel_3mm13_vt_select_31(BITSELECT,60)@2
    assign i_idxprom155_kernel_3mm13_vt_select_31_b = i_idxprom155_kernel_3mm13_sel_x_b[31:0];

    // i_idxprom155_kernel_3mm13_vt_join(BITJOIN,59)@2
    assign i_idxprom155_kernel_3mm13_vt_join_q = {c_i32_077_q, i_idxprom155_kernel_3mm13_vt_select_31_b};

    // i_arrayidx15615_kernel_3mm0_dupName_3_trunc_sel_x(BITSELECT,133)@2
    assign i_arrayidx15615_kernel_3mm0_dupName_3_trunc_sel_x_b = i_idxprom155_kernel_3mm13_vt_join_q[8:0];

    // i_arrayidx15615_kernel_3mm0_narrow_x(BITSELECT,116)@2
    assign i_arrayidx15615_kernel_3mm0_narrow_x_b = i_arrayidx15615_kernel_3mm0_dupName_3_trunc_sel_x_b[6:0];

    // redist17_i_arrayidx15615_kernel_3mm0_narrow_x_b_1(DELAY,353)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_arrayidx15615_kernel_3mm0_narrow_x_b_1_q <= '0;
        end
        else
        begin
            redist17_i_arrayidx15615_kernel_3mm0_narrow_x_b_1_q <= $unsigned(i_arrayidx15615_kernel_3mm0_narrow_x_b);
        end
    end

    // i_arrayidx15615_kernel_3mm0_shift_join_x(BITJOIN,117)@3
    assign i_arrayidx15615_kernel_3mm0_shift_join_x_q = {redist17_i_arrayidx15615_kernel_3mm0_narrow_x_b_1_q, i_arrayidx15615_kernel_3mm16_vt_const_1_q};

    // i_arrayidx15615_kernel_3mm0_mult_multconst_x(CONSTANT,128)
    assign i_arrayidx15615_kernel_3mm0_mult_multconst_x_q = $unsigned(3'b000);

    // valid_fanout_reg5(REG,177)@1 + 1
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

    // valid_fanout_reg6(REG,178)@1 + 1
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

    // i_llvm_fpga_push_i64_idxprom146175_push83_kernel_3mm15(BLACKBOX,87)@2
    // out out_feedback_out_83@20000000
    // out out_feedback_valid_out_83@20000000
    kernel_3mm_i_llvm_fpga_push_i64_idxprom146175_push83_0 thei_llvm_fpga_push_i64_idxprom146175_push83_kernel_3mm15 (
        .in_data_in(i_llvm_fpga_pop_i64_idxprom146175_pop83_kernel_3mm14_out_data_out),
        .in_feedback_stall_in_83(i_llvm_fpga_pop_i64_idxprom146175_pop83_kernel_3mm14_out_feedback_stall_out_83),
        .in_keep_going58(redist24_i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_83(i_llvm_fpga_push_i64_idxprom146175_push83_kernel_3mm15_out_feedback_out_83),
        .out_feedback_valid_out_83(i_llvm_fpga_push_i64_idxprom146175_push83_kernel_3mm15_out_feedback_valid_out_83),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together110_aunroll_x_in_c0_eni10413_2_tpl_1(DELAY,338)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together110_aunroll_x_in_c0_eni10413_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together110_aunroll_x_in_c0_eni10413_2_tpl_1_q <= $unsigned(in_c0_eni10413_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i64_idxprom146175_pop83_kernel_3mm14(BLACKBOX,74)@2
    // out out_feedback_stall_out_83@20000000
    kernel_3mm_i_llvm_fpga_pop_i64_idxprom146175_pop83_0 thei_llvm_fpga_pop_i64_idxprom146175_pop83_kernel_3mm14 (
        .in_data_in(redist2_sync_together110_aunroll_x_in_c0_eni10413_2_tpl_1_q),
        .in_dir(redist0_sync_together110_aunroll_x_in_c0_eni10413_1_tpl_1_q),
        .in_feedback_in_83(i_llvm_fpga_push_i64_idxprom146175_push83_kernel_3mm15_out_feedback_out_83),
        .in_feedback_valid_in_83(i_llvm_fpga_push_i64_idxprom146175_push83_kernel_3mm15_out_feedback_valid_out_83),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i64_idxprom146175_pop83_kernel_3mm14_out_data_out),
        .out_feedback_stall_out_83(i_llvm_fpga_pop_i64_idxprom146175_pop83_kernel_3mm14_out_feedback_stall_out_83),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx15615_kernel_3mm0_dupName_0_trunc_sel_x(BITSELECT,130)@2
    assign i_arrayidx15615_kernel_3mm0_dupName_0_trunc_sel_x_b = i_llvm_fpga_pop_i64_idxprom146175_pop83_kernel_3mm14_out_data_out[8:0];

    // addsumAHighB_uid230_i_arrayidx15615_kernel_3mm0_mult_x(ADD,229)@2
    assign addsumAHighB_uid230_i_arrayidx15615_kernel_3mm0_mult_x_a = {1'b0, i_arrayidx15615_kernel_3mm0_dupName_0_trunc_sel_x_b};
    assign addsumAHighB_uid230_i_arrayidx15615_kernel_3mm0_mult_x_b = {3'b000, lowRangeB_uid228_i_arrayidx15615_kernel_3mm0_mult_x_merged_bit_select_c};
    assign addsumAHighB_uid230_i_arrayidx15615_kernel_3mm0_mult_x_o = $unsigned(addsumAHighB_uid230_i_arrayidx15615_kernel_3mm0_mult_x_a) + $unsigned(addsumAHighB_uid230_i_arrayidx15615_kernel_3mm0_mult_x_b);
    assign addsumAHighB_uid230_i_arrayidx15615_kernel_3mm0_mult_x_q = addsumAHighB_uid230_i_arrayidx15615_kernel_3mm0_mult_x_o[9:0];

    // lowRangeB_uid228_i_arrayidx15615_kernel_3mm0_mult_x_merged_bit_select(BITSELECT,335)@2
    assign lowRangeB_uid228_i_arrayidx15615_kernel_3mm0_mult_x_merged_bit_select_b = i_arrayidx15615_kernel_3mm0_dupName_0_trunc_sel_x_b[1:0];
    assign lowRangeB_uid228_i_arrayidx15615_kernel_3mm0_mult_x_merged_bit_select_c = i_arrayidx15615_kernel_3mm0_dupName_0_trunc_sel_x_b[8:2];

    // add_uid231_i_arrayidx15615_kernel_3mm0_mult_x(BITJOIN,230)@2
    assign add_uid231_i_arrayidx15615_kernel_3mm0_mult_x_q = {addsumAHighB_uid230_i_arrayidx15615_kernel_3mm0_mult_x_q, lowRangeB_uid228_i_arrayidx15615_kernel_3mm0_mult_x_merged_bit_select_b};

    // sR_mergedSignalTM_uid236_i_arrayidx15615_kernel_3mm0_mult_x(BITJOIN,235)@2
    assign sR_mergedSignalTM_uid236_i_arrayidx15615_kernel_3mm0_mult_x_q = {add_uid231_i_arrayidx15615_kernel_3mm0_mult_x_q, i_arrayidx15615_kernel_3mm0_mult_multconst_x_q};

    // i_arrayidx15615_kernel_3mm0_mult_extender_x(BITJOIN,127)@2
    assign i_arrayidx15615_kernel_3mm0_mult_extender_x_q = {i_arrayidx15615_kernel_3mm0_mult_multconst_x_q, sR_mergedSignalTM_uid236_i_arrayidx15615_kernel_3mm0_mult_x_q};

    // i_arrayidx15615_kernel_3mm0_dupName_1_trunc_sel_x(BITSELECT,131)@2
    assign i_arrayidx15615_kernel_3mm0_dupName_1_trunc_sel_x_b = i_arrayidx15615_kernel_3mm0_mult_extender_x_q[8:0];

    // redist16_i_arrayidx15615_kernel_3mm0_dupName_1_trunc_sel_x_b_1(DELAY,352)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_arrayidx15615_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist16_i_arrayidx15615_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx15615_kernel_3mm0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx15615_kernel_3mm0_add_x(ADD,111)@3
    assign i_arrayidx15615_kernel_3mm0_add_x_a = {1'b0, i_arrayidx15615_kernel_3mm0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx15615_kernel_3mm0_add_x_b = {1'b0, redist16_i_arrayidx15615_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx15615_kernel_3mm0_add_x_o = $unsigned(i_arrayidx15615_kernel_3mm0_add_x_a) + $unsigned(i_arrayidx15615_kernel_3mm0_add_x_b);
    assign i_arrayidx15615_kernel_3mm0_add_x_q = i_arrayidx15615_kernel_3mm0_add_x_o[9:0];

    // i_arrayidx15615_kernel_3mm0_dupName_2_trunc_sel_x(BITSELECT,132)@3
    assign i_arrayidx15615_kernel_3mm0_dupName_2_trunc_sel_x_b = i_arrayidx15615_kernel_3mm0_add_x_q[8:0];

    // i_arrayidx15615_kernel_3mm0_dupName_0_add_x(ADD,121)@3
    assign i_arrayidx15615_kernel_3mm0_dupName_0_add_x_a = {1'b0, i_arrayidx15615_kernel_3mm0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx15615_kernel_3mm0_dupName_0_add_x_b = {1'b0, i_arrayidx15615_kernel_3mm0_shift_join_x_q};
    assign i_arrayidx15615_kernel_3mm0_dupName_0_add_x_o = $unsigned(i_arrayidx15615_kernel_3mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx15615_kernel_3mm0_dupName_0_add_x_b);
    assign i_arrayidx15615_kernel_3mm0_dupName_0_add_x_q = i_arrayidx15615_kernel_3mm0_dupName_0_add_x_o[9:0];

    // i_arrayidx15615_kernel_3mm0_dupName_5_trunc_sel_x(BITSELECT,134)@3
    assign i_arrayidx15615_kernel_3mm0_dupName_5_trunc_sel_x_b = i_arrayidx15615_kernel_3mm0_dupName_0_add_x_q[8:0];

    // i_arrayidx15615_kernel_3mm0_append_upper_bits_x(BITJOIN,112)@3
    assign i_arrayidx15615_kernel_3mm0_append_upper_bits_x_q = {i_arrayidx15615_kernel_3mm0_upper_bits_x_merged_bit_select_b, i_arrayidx15615_kernel_3mm0_dupName_5_trunc_sel_x_b};

    // i_arrayidx15615_kernel_3mm16_vt_select_63(BITSELECT,46)@3
    assign i_arrayidx15615_kernel_3mm16_vt_select_63_b = i_arrayidx15615_kernel_3mm0_append_upper_bits_x_q[63:2];

    // i_arrayidx15615_kernel_3mm16_vt_const_1(CONSTANT,44)
    assign i_arrayidx15615_kernel_3mm16_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx15615_kernel_3mm16_vt_join(BITJOIN,45)@3
    assign i_arrayidx15615_kernel_3mm16_vt_join_q = {i_arrayidx15615_kernel_3mm16_vt_select_63_b, i_arrayidx15615_kernel_3mm16_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_kernel_3mm27_kernel_3mm17(BLACKBOX,63)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_kernel_3mm27_kernel_3mm_avm_address@20000000
    // out out_unnamed_kernel_3mm27_kernel_3mm_avm_burstcount@20000000
    // out out_unnamed_kernel_3mm27_kernel_3mm_avm_byteenable@20000000
    // out out_unnamed_kernel_3mm27_kernel_3mm_avm_enable@20000000
    // out out_unnamed_kernel_3mm27_kernel_3mm_avm_read@20000000
    // out out_unnamed_kernel_3mm27_kernel_3mm_avm_write@20000000
    // out out_unnamed_kernel_3mm27_kernel_3mm_avm_writedata@20000000
    kernel_3mm_i_llvm_fpga_mem_unnamed_27_kernel_3mm0 thei_llvm_fpga_mem_unnamed_kernel_3mm27_kernel_3mm17 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx15615_kernel_3mm16_vt_join_q),
        .in_i_predicate(redist26_i_first_cleanup_xor64_kernel_3mm4_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_unnamed_kernel_3mm27_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm27_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm27_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm27_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm27_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm27_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm27_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm27_kernel_3mm_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_kernel_3mm27_kernel_3mm17_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_kernel_3mm27_kernel_3mm_avm_address(i_llvm_fpga_mem_unnamed_kernel_3mm27_kernel_3mm17_out_unnamed_kernel_3mm27_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm27_kernel_3mm_avm_burstcount(i_llvm_fpga_mem_unnamed_kernel_3mm27_kernel_3mm17_out_unnamed_kernel_3mm27_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm27_kernel_3mm_avm_byteenable(i_llvm_fpga_mem_unnamed_kernel_3mm27_kernel_3mm17_out_unnamed_kernel_3mm27_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm27_kernel_3mm_avm_enable(i_llvm_fpga_mem_unnamed_kernel_3mm27_kernel_3mm17_out_unnamed_kernel_3mm27_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm27_kernel_3mm_avm_read(i_llvm_fpga_mem_unnamed_kernel_3mm27_kernel_3mm17_out_unnamed_kernel_3mm27_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm27_kernel_3mm_avm_write(i_llvm_fpga_mem_unnamed_kernel_3mm27_kernel_3mm17_out_unnamed_kernel_3mm27_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm27_kernel_3mm_avm_writedata(i_llvm_fpga_mem_unnamed_kernel_3mm27_kernel_3mm17_out_unnamed_kernel_3mm27_kernel_3mm_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,109)
    assign out_unnamed_kernel_3mm27_kernel_3mm_avm_address = i_llvm_fpga_mem_unnamed_kernel_3mm27_kernel_3mm17_out_unnamed_kernel_3mm27_kernel_3mm_avm_address;
    assign out_unnamed_kernel_3mm27_kernel_3mm_avm_enable = i_llvm_fpga_mem_unnamed_kernel_3mm27_kernel_3mm17_out_unnamed_kernel_3mm27_kernel_3mm_avm_enable;
    assign out_unnamed_kernel_3mm27_kernel_3mm_avm_read = i_llvm_fpga_mem_unnamed_kernel_3mm27_kernel_3mm17_out_unnamed_kernel_3mm27_kernel_3mm_avm_read;
    assign out_unnamed_kernel_3mm27_kernel_3mm_avm_write = i_llvm_fpga_mem_unnamed_kernel_3mm27_kernel_3mm17_out_unnamed_kernel_3mm27_kernel_3mm_avm_write;
    assign out_unnamed_kernel_3mm27_kernel_3mm_avm_writedata = i_llvm_fpga_mem_unnamed_kernel_3mm27_kernel_3mm17_out_unnamed_kernel_3mm27_kernel_3mm_avm_writedata;
    assign out_unnamed_kernel_3mm27_kernel_3mm_avm_byteenable = i_llvm_fpga_mem_unnamed_kernel_3mm27_kernel_3mm17_out_unnamed_kernel_3mm27_kernel_3mm_avm_byteenable;
    assign out_unnamed_kernel_3mm27_kernel_3mm_avm_burstcount = i_llvm_fpga_mem_unnamed_kernel_3mm27_kernel_3mm17_out_unnamed_kernel_3mm27_kernel_3mm_avm_burstcount;

    // valid_fanout_reg10(REG,182)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist11_sync_together110_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_kernel_3mm_F_local_pmem(CONSTANT,40)
    assign c_kernel_3mm_F_local_pmem_q = $unsigned(64'b0100000001000101000000000000000000000000000000000000000000000000);

    // i_arrayidx16016_kernel_3mm0_upper_bits_x_merged_bit_select(BITSELECT,332)@3
    assign i_arrayidx16016_kernel_3mm0_upper_bits_x_merged_bit_select_b = c_kernel_3mm_F_local_pmem_q[63:9];
    assign i_arrayidx16016_kernel_3mm0_upper_bits_x_merged_bit_select_c = c_kernel_3mm_F_local_pmem_q[8:0];

    // valid_fanout_reg8(REG,180)@1 + 1
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

    // valid_fanout_reg9(REG,181)@1 + 1
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

    // i_llvm_fpga_push_i64_idxprom148176_push84_kernel_3mm19(BLACKBOX,88)@2
    // out out_feedback_out_84@20000000
    // out out_feedback_valid_out_84@20000000
    kernel_3mm_i_llvm_fpga_push_i64_idxprom148176_push84_0 thei_llvm_fpga_push_i64_idxprom148176_push84_kernel_3mm19 (
        .in_data_in(i_llvm_fpga_pop_i64_idxprom148176_pop84_kernel_3mm18_out_data_out),
        .in_feedback_stall_in_84(i_llvm_fpga_pop_i64_idxprom148176_pop84_kernel_3mm18_out_feedback_stall_out_84),
        .in_keep_going58(redist24_i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_84(i_llvm_fpga_push_i64_idxprom148176_push84_kernel_3mm19_out_feedback_out_84),
        .out_feedback_valid_out_84(i_llvm_fpga_push_i64_idxprom148176_push84_kernel_3mm19_out_feedback_valid_out_84),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together110_aunroll_x_in_c0_eni10413_3_tpl_1(DELAY,339)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together110_aunroll_x_in_c0_eni10413_3_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together110_aunroll_x_in_c0_eni10413_3_tpl_1_q <= $unsigned(in_c0_eni10413_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i64_idxprom148176_pop84_kernel_3mm18(BLACKBOX,75)@2
    // out out_feedback_stall_out_84@20000000
    kernel_3mm_i_llvm_fpga_pop_i64_idxprom148176_pop84_0 thei_llvm_fpga_pop_i64_idxprom148176_pop84_kernel_3mm18 (
        .in_data_in(redist3_sync_together110_aunroll_x_in_c0_eni10413_3_tpl_1_q),
        .in_dir(redist0_sync_together110_aunroll_x_in_c0_eni10413_1_tpl_1_q),
        .in_feedback_in_84(i_llvm_fpga_push_i64_idxprom148176_push84_kernel_3mm19_out_feedback_out_84),
        .in_feedback_valid_in_84(i_llvm_fpga_push_i64_idxprom148176_push84_kernel_3mm19_out_feedback_valid_out_84),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_i64_idxprom148176_pop84_kernel_3mm18_out_data_out),
        .out_feedback_stall_out_84(i_llvm_fpga_pop_i64_idxprom148176_pop84_kernel_3mm18_out_feedback_stall_out_84),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx16016_kernel_3mm0_dupName_3_trunc_sel_x(BITSELECT,157)@2
    assign i_arrayidx16016_kernel_3mm0_dupName_3_trunc_sel_x_b = i_llvm_fpga_pop_i64_idxprom148176_pop84_kernel_3mm18_out_data_out[8:0];

    // i_arrayidx16016_kernel_3mm0_narrow_x(BITSELECT,140)@2
    assign i_arrayidx16016_kernel_3mm0_narrow_x_b = i_arrayidx16016_kernel_3mm0_dupName_3_trunc_sel_x_b[6:0];

    // redist15_i_arrayidx16016_kernel_3mm0_narrow_x_b_1(DELAY,351)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_arrayidx16016_kernel_3mm0_narrow_x_b_1_q <= '0;
        end
        else
        begin
            redist15_i_arrayidx16016_kernel_3mm0_narrow_x_b_1_q <= $unsigned(i_arrayidx16016_kernel_3mm0_narrow_x_b);
        end
    end

    // i_arrayidx16016_kernel_3mm0_shift_join_x(BITJOIN,141)@3
    assign i_arrayidx16016_kernel_3mm0_shift_join_x_q = {redist15_i_arrayidx16016_kernel_3mm0_narrow_x_b_1_q, i_arrayidx15615_kernel_3mm16_vt_const_1_q};

    // highBBits_uid275_i_arrayidx16016_kernel_3mm0_mult_x(BITSELECT,274)@2
    assign highBBits_uid275_i_arrayidx16016_kernel_3mm0_mult_x_b = i_arrayidx15615_kernel_3mm0_dupName_3_trunc_sel_x_b[8:2];

    // addsumAHighB_uid276_i_arrayidx16016_kernel_3mm0_mult_x(ADD,275)@2
    assign addsumAHighB_uid276_i_arrayidx16016_kernel_3mm0_mult_x_a = {1'b0, i_arrayidx15615_kernel_3mm0_dupName_3_trunc_sel_x_b};
    assign addsumAHighB_uid276_i_arrayidx16016_kernel_3mm0_mult_x_b = {3'b000, highBBits_uid275_i_arrayidx16016_kernel_3mm0_mult_x_b};
    assign addsumAHighB_uid276_i_arrayidx16016_kernel_3mm0_mult_x_o = $unsigned(addsumAHighB_uid276_i_arrayidx16016_kernel_3mm0_mult_x_a) + $unsigned(addsumAHighB_uid276_i_arrayidx16016_kernel_3mm0_mult_x_b);
    assign addsumAHighB_uid276_i_arrayidx16016_kernel_3mm0_mult_x_q = addsumAHighB_uid276_i_arrayidx16016_kernel_3mm0_mult_x_o[9:0];

    // lowRangeB_uid274_i_arrayidx16016_kernel_3mm0_mult_x(BITSELECT,273)@2
    assign lowRangeB_uid274_i_arrayidx16016_kernel_3mm0_mult_x_in = i_arrayidx15615_kernel_3mm0_dupName_3_trunc_sel_x_b[1:0];
    assign lowRangeB_uid274_i_arrayidx16016_kernel_3mm0_mult_x_b = lowRangeB_uid274_i_arrayidx16016_kernel_3mm0_mult_x_in[1:0];

    // add_uid277_i_arrayidx16016_kernel_3mm0_mult_x(BITJOIN,276)@2
    assign add_uid277_i_arrayidx16016_kernel_3mm0_mult_x_q = {addsumAHighB_uid276_i_arrayidx16016_kernel_3mm0_mult_x_q, lowRangeB_uid274_i_arrayidx16016_kernel_3mm0_mult_x_b};

    // sR_mergedSignalTM_uid282_i_arrayidx16016_kernel_3mm0_mult_x(BITJOIN,281)@2
    assign sR_mergedSignalTM_uid282_i_arrayidx16016_kernel_3mm0_mult_x_q = {add_uid277_i_arrayidx16016_kernel_3mm0_mult_x_q, i_arrayidx15615_kernel_3mm0_mult_multconst_x_q};

    // i_arrayidx16016_kernel_3mm0_mult_extender_x(BITJOIN,151)@2
    assign i_arrayidx16016_kernel_3mm0_mult_extender_x_q = {i_arrayidx15615_kernel_3mm0_mult_multconst_x_q, sR_mergedSignalTM_uid282_i_arrayidx16016_kernel_3mm0_mult_x_q};

    // i_arrayidx16016_kernel_3mm0_dupName_1_trunc_sel_x(BITSELECT,155)@2
    assign i_arrayidx16016_kernel_3mm0_dupName_1_trunc_sel_x_b = i_arrayidx16016_kernel_3mm0_mult_extender_x_q[8:0];

    // redist14_i_arrayidx16016_kernel_3mm0_dupName_1_trunc_sel_x_b_1(DELAY,350)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_arrayidx16016_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist14_i_arrayidx16016_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx16016_kernel_3mm0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx16016_kernel_3mm0_add_x(ADD,135)@3
    assign i_arrayidx16016_kernel_3mm0_add_x_a = {1'b0, i_arrayidx16016_kernel_3mm0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx16016_kernel_3mm0_add_x_b = {1'b0, redist14_i_arrayidx16016_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx16016_kernel_3mm0_add_x_o = $unsigned(i_arrayidx16016_kernel_3mm0_add_x_a) + $unsigned(i_arrayidx16016_kernel_3mm0_add_x_b);
    assign i_arrayidx16016_kernel_3mm0_add_x_q = i_arrayidx16016_kernel_3mm0_add_x_o[9:0];

    // i_arrayidx16016_kernel_3mm0_dupName_2_trunc_sel_x(BITSELECT,156)@3
    assign i_arrayidx16016_kernel_3mm0_dupName_2_trunc_sel_x_b = i_arrayidx16016_kernel_3mm0_add_x_q[8:0];

    // i_arrayidx16016_kernel_3mm0_dupName_0_add_x(ADD,145)@3
    assign i_arrayidx16016_kernel_3mm0_dupName_0_add_x_a = {1'b0, i_arrayidx16016_kernel_3mm0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx16016_kernel_3mm0_dupName_0_add_x_b = {1'b0, i_arrayidx16016_kernel_3mm0_shift_join_x_q};
    assign i_arrayidx16016_kernel_3mm0_dupName_0_add_x_o = $unsigned(i_arrayidx16016_kernel_3mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx16016_kernel_3mm0_dupName_0_add_x_b);
    assign i_arrayidx16016_kernel_3mm0_dupName_0_add_x_q = i_arrayidx16016_kernel_3mm0_dupName_0_add_x_o[9:0];

    // i_arrayidx16016_kernel_3mm0_dupName_5_trunc_sel_x(BITSELECT,158)@3
    assign i_arrayidx16016_kernel_3mm0_dupName_5_trunc_sel_x_b = i_arrayidx16016_kernel_3mm0_dupName_0_add_x_q[8:0];

    // i_arrayidx16016_kernel_3mm0_append_upper_bits_x(BITJOIN,136)@3
    assign i_arrayidx16016_kernel_3mm0_append_upper_bits_x_q = {i_arrayidx16016_kernel_3mm0_upper_bits_x_merged_bit_select_b, i_arrayidx16016_kernel_3mm0_dupName_5_trunc_sel_x_b};

    // i_arrayidx16016_kernel_3mm20_vt_select_63(BITSELECT,49)@3
    assign i_arrayidx16016_kernel_3mm20_vt_select_63_b = i_arrayidx16016_kernel_3mm0_append_upper_bits_x_q[63:2];

    // i_arrayidx16016_kernel_3mm20_vt_join(BITJOIN,48)@3
    assign i_arrayidx16016_kernel_3mm20_vt_join_q = {i_arrayidx16016_kernel_3mm20_vt_select_63_b, i_arrayidx15615_kernel_3mm16_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_kernel_3mm28_kernel_3mm21(BLACKBOX,64)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_kernel_3mm28_kernel_3mm_avm_address@20000000
    // out out_unnamed_kernel_3mm28_kernel_3mm_avm_burstcount@20000000
    // out out_unnamed_kernel_3mm28_kernel_3mm_avm_byteenable@20000000
    // out out_unnamed_kernel_3mm28_kernel_3mm_avm_enable@20000000
    // out out_unnamed_kernel_3mm28_kernel_3mm_avm_read@20000000
    // out out_unnamed_kernel_3mm28_kernel_3mm_avm_write@20000000
    // out out_unnamed_kernel_3mm28_kernel_3mm_avm_writedata@20000000
    kernel_3mm_i_llvm_fpga_mem_unnamed_28_kernel_3mm0 thei_llvm_fpga_mem_unnamed_kernel_3mm28_kernel_3mm21 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx16016_kernel_3mm20_vt_join_q),
        .in_i_predicate(redist26_i_first_cleanup_xor64_kernel_3mm4_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg10_q),
        .in_unnamed_kernel_3mm28_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm28_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm28_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm28_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm28_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm28_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm28_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm28_kernel_3mm_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_kernel_3mm28_kernel_3mm21_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_kernel_3mm28_kernel_3mm_avm_address(i_llvm_fpga_mem_unnamed_kernel_3mm28_kernel_3mm21_out_unnamed_kernel_3mm28_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm28_kernel_3mm_avm_burstcount(i_llvm_fpga_mem_unnamed_kernel_3mm28_kernel_3mm21_out_unnamed_kernel_3mm28_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm28_kernel_3mm_avm_byteenable(i_llvm_fpga_mem_unnamed_kernel_3mm28_kernel_3mm21_out_unnamed_kernel_3mm28_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm28_kernel_3mm_avm_enable(i_llvm_fpga_mem_unnamed_kernel_3mm28_kernel_3mm21_out_unnamed_kernel_3mm28_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm28_kernel_3mm_avm_read(i_llvm_fpga_mem_unnamed_kernel_3mm28_kernel_3mm21_out_unnamed_kernel_3mm28_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm28_kernel_3mm_avm_write(i_llvm_fpga_mem_unnamed_kernel_3mm28_kernel_3mm21_out_unnamed_kernel_3mm28_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm28_kernel_3mm_avm_writedata(i_llvm_fpga_mem_unnamed_kernel_3mm28_kernel_3mm21_out_unnamed_kernel_3mm28_kernel_3mm_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,110)
    assign out_unnamed_kernel_3mm28_kernel_3mm_avm_address = i_llvm_fpga_mem_unnamed_kernel_3mm28_kernel_3mm21_out_unnamed_kernel_3mm28_kernel_3mm_avm_address;
    assign out_unnamed_kernel_3mm28_kernel_3mm_avm_enable = i_llvm_fpga_mem_unnamed_kernel_3mm28_kernel_3mm21_out_unnamed_kernel_3mm28_kernel_3mm_avm_enable;
    assign out_unnamed_kernel_3mm28_kernel_3mm_avm_read = i_llvm_fpga_mem_unnamed_kernel_3mm28_kernel_3mm21_out_unnamed_kernel_3mm28_kernel_3mm_avm_read;
    assign out_unnamed_kernel_3mm28_kernel_3mm_avm_write = i_llvm_fpga_mem_unnamed_kernel_3mm28_kernel_3mm21_out_unnamed_kernel_3mm28_kernel_3mm_avm_write;
    assign out_unnamed_kernel_3mm28_kernel_3mm_avm_writedata = i_llvm_fpga_mem_unnamed_kernel_3mm28_kernel_3mm21_out_unnamed_kernel_3mm28_kernel_3mm_avm_writedata;
    assign out_unnamed_kernel_3mm28_kernel_3mm_avm_byteenable = i_llvm_fpga_mem_unnamed_kernel_3mm28_kernel_3mm21_out_unnamed_kernel_3mm28_kernel_3mm_avm_byteenable;
    assign out_unnamed_kernel_3mm28_kernel_3mm_avm_burstcount = i_llvm_fpga_mem_unnamed_kernel_3mm28_kernel_3mm21_out_unnamed_kernel_3mm28_kernel_3mm_avm_burstcount;

    // redist12_sync_together110_aunroll_x_in_i_valid_8(DELAY,348)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist12_sync_together110_aunroll_x_in_i_valid_8 ( .xin(redist11_sync_together110_aunroll_x_in_i_valid_1_q), .xout(redist12_sync_together110_aunroll_x_in_i_valid_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist13_sync_together110_aunroll_x_in_i_valid_9(DELAY,349)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together110_aunroll_x_in_i_valid_9_q <= '0;
        end
        else
        begin
            redist13_sync_together110_aunroll_x_in_i_valid_9_q <= $unsigned(redist12_sync_together110_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg0(REG,172)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist13_sync_together110_aunroll_x_in_i_valid_9_q);
        end
    end

    // redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_notEnable(LOGICAL,379)
    assign redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_notEnable_q = $unsigned(~ (VCC_q));

    // redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_nor(LOGICAL,380)
    assign redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_nor_q = ~ (redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_notEnable_q | redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_sticky_ena_q);

    // redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_mem_last(CONSTANT,376)
    assign redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_mem_last_q = $unsigned(4'b0111);

    // redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_cmp(LOGICAL,377)
    assign redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_cmp_q = $unsigned(redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_mem_last_q == redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_rdcnt_q ? 1'b1 : 1'b0);

    // redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_cmpReg(REG,378)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_cmpReg_q <= $unsigned(redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_cmp_q);
        end
    end

    // redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_sticky_ena(REG,381)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_nor_q == 1'b1)
        begin
            redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_sticky_ena_q <= $unsigned(redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_cmpReg_q);
        end
    end

    // redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_enaAnd(LOGICAL,382)
    assign redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_enaAnd_q = redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_sticky_ena_q & VCC_q;

    // redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_rdcnt(COUNTER,374)
    // low=0, high=8, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_rdcnt_i <= 4'd0;
            redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_rdcnt_i == 4'd7)
            begin
                redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_rdcnt_eq <= 1'b0;
            end
            if (redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_rdcnt_eq == 1'b1)
            begin
                redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_rdcnt_i <= $unsigned(redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_rdcnt_i) + $unsigned(4'd8);
            end
            else
            begin
                redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_rdcnt_i <= $unsigned(redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_rdcnt_q = redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_rdcnt_i[3:0];

    // redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_wraddr(REG,375)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_wraddr_q <= $unsigned(4'b1000);
        end
        else
        begin
            redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_wraddr_q <= $unsigned(redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_rdcnt_q);
        end
    end

    // redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_mem(DUALMEM,373)
    assign redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_mem_ia = $unsigned(in_c0_eni10413_10_tpl);
    assign redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_mem_aa = redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_wraddr_q;
    assign redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_mem_ab = redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_rdcnt_q;
    assign redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_mem_reset0 = ~ (resetn);
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
    ) redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_mem_dmem (
        .clocken1(redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_mem_reset0),
        .clock1(clock),
        .address_a(redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_mem_aa),
        .data_a(redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_mem_ab),
        .q_b(redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_mem_iq),
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
    assign redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_mem_q = redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_mem_iq[31:0];

    // redist9_sync_together110_aunroll_x_in_c0_eni10413_9_tpl_10(DELAY,345)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist9_sync_together110_aunroll_x_in_c0_eni10413_9_tpl_10 ( .xin(in_c0_eni10413_9_tpl), .xout(redist9_sync_together110_aunroll_x_in_c0_eni10413_9_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg20(REG,192)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg20_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist12_sync_together110_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg21(REG,193)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist13_sync_together110_aunroll_x_in_i_valid_9_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp70178_push86_kernel_3mm46(BLACKBOX,78)@11
    // out out_feedback_out_86@20000000
    // out out_feedback_valid_out_86@20000000
    kernel_3mm_i_llvm_fpga_push_i1_notcmp70178_push86_0 thei_llvm_fpga_push_i1_notcmp70178_push86_kernel_3mm46 (
        .in_data_in(redist23_i_llvm_fpga_pop_i1_notcmp70178_pop86_kernel_3mm45_out_data_out_1_q),
        .in_feedback_stall_in_86(i_llvm_fpga_pop_i1_notcmp70178_pop86_kernel_3mm45_out_feedback_stall_out_86),
        .in_keep_going58(redist25_i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_out_data_out_10_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(),
        .out_feedback_out_86(i_llvm_fpga_push_i1_notcmp70178_push86_kernel_3mm46_out_feedback_out_86),
        .out_feedback_valid_out_86(i_llvm_fpga_push_i1_notcmp70178_push86_kernel_3mm46_out_feedback_valid_out_86),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together110_aunroll_x_in_c0_eni10413_1_tpl_9(DELAY,337)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist1_sync_together110_aunroll_x_in_c0_eni10413_1_tpl_9 ( .xin(redist0_sync_together110_aunroll_x_in_c0_eni10413_1_tpl_1_q), .xout(redist1_sync_together110_aunroll_x_in_c0_eni10413_1_tpl_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist8_sync_together110_aunroll_x_in_c0_eni10413_8_tpl_9(DELAY,344)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist8_sync_together110_aunroll_x_in_c0_eni10413_8_tpl_9 ( .xin(in_c0_eni10413_8_tpl), .xout(redist8_sync_together110_aunroll_x_in_c0_eni10413_8_tpl_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i1_notcmp70178_pop86_kernel_3mm45(BLACKBOX,66)@10
    // out out_feedback_stall_out_86@20000000
    kernel_3mm_i_llvm_fpga_pop_i1_notcmp70178_pop86_0 thei_llvm_fpga_pop_i1_notcmp70178_pop86_kernel_3mm45 (
        .in_data_in(redist8_sync_together110_aunroll_x_in_c0_eni10413_8_tpl_9_q),
        .in_dir(redist1_sync_together110_aunroll_x_in_c0_eni10413_1_tpl_9_q),
        .in_feedback_in_86(i_llvm_fpga_push_i1_notcmp70178_push86_kernel_3mm46_out_feedback_out_86),
        .in_feedback_valid_in_86(i_llvm_fpga_push_i1_notcmp70178_push86_kernel_3mm46_out_feedback_valid_out_86),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp70178_pop86_kernel_3mm45_out_data_out),
        .out_feedback_stall_out_86(i_llvm_fpga_pop_i1_notcmp70178_pop86_kernel_3mm45_out_feedback_stall_out_86),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist23_i_llvm_fpga_pop_i1_notcmp70178_pop86_kernel_3mm45_out_data_out_1(DELAY,359)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_pop_i1_notcmp70178_pop86_kernel_3mm45_out_data_out_1_q <= '0;
        end
        else
        begin
            redist23_i_llvm_fpga_pop_i1_notcmp70178_pop86_kernel_3mm45_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_notcmp70178_pop86_kernel_3mm45_out_data_out);
        end
    end

    // redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_notEnable(LOGICAL,389)
    assign redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_nor(LOGICAL,390)
    assign redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_nor_q = ~ (redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_notEnable_q | redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_sticky_ena_q);

    // redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_mem_last(CONSTANT,386)
    assign redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_mem_last_q = $unsigned(4'b0110);

    // redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_cmp(LOGICAL,387)
    assign redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_cmp_b = {1'b0, redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_rdcnt_q};
    assign redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_cmp_q = $unsigned(redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_mem_last_q == redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_cmp_b ? 1'b1 : 1'b0);

    // redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_cmpReg(REG,388)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_cmpReg_q <= $unsigned(redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_cmp_q);
        end
    end

    // redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_sticky_ena(REG,391)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_nor_q == 1'b1)
        begin
            redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_sticky_ena_q <= $unsigned(redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_cmpReg_q);
        end
    end

    // redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_enaAnd(LOGICAL,392)
    assign redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_enaAnd_q = redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_sticky_ena_q & VCC_q;

    // redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_rdcnt(COUNTER,384)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_rdcnt_i <= 3'd0;
        end
        else
        begin
            redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_rdcnt_i <= $unsigned(redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_rdcnt_i) + $unsigned(3'd1);
        end
    end
    assign redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_rdcnt_q = redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_rdcnt_i[2:0];

    // valid_fanout_reg18(REG,190)@1 + 1
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

    // valid_fanout_reg19(REG,191)@1 + 1
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

    // i_llvm_fpga_push_p70i32_arrayidx14914177_push85_kernel_3mm44(BLACKBOX,89)@2
    // out out_feedback_out_85@20000000
    // out out_feedback_valid_out_85@20000000
    kernel_3mm_i_llvm_fpga_push_p70i32_arrayidx14914177_push85_0 thei_llvm_fpga_push_p70i32_arrayidx14914177_push85_kernel_3mm44 (
        .in_data_in(i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out),
        .in_feedback_stall_in_85(i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_feedback_stall_out_85),
        .in_keep_going58(redist24_i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(),
        .out_feedback_out_85(i_llvm_fpga_push_p70i32_arrayidx14914177_push85_kernel_3mm44_out_feedback_out_85),
        .out_feedback_valid_out_85(i_llvm_fpga_push_p70i32_arrayidx14914177_push85_kernel_3mm44_out_feedback_valid_out_85),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together110_aunroll_x_in_c0_eni10413_7_tpl_1(DELAY,343)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together110_aunroll_x_in_c0_eni10413_7_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together110_aunroll_x_in_c0_eni10413_7_tpl_1_q <= $unsigned(in_c0_eni10413_7_tpl);
        end
    end

    // i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43(BLACKBOX,76)@2
    // out out_feedback_stall_out_85@20000000
    kernel_3mm_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_0 thei_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43 (
        .in_data_in(redist7_sync_together110_aunroll_x_in_c0_eni10413_7_tpl_1_q),
        .in_dir(redist0_sync_together110_aunroll_x_in_c0_eni10413_1_tpl_1_q),
        .in_feedback_in_85(i_llvm_fpga_push_p70i32_arrayidx14914177_push85_kernel_3mm44_out_feedback_out_85),
        .in_feedback_valid_in_85(i_llvm_fpga_push_p70i32_arrayidx14914177_push85_kernel_3mm44_out_feedback_valid_out_85),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out),
        .out_feedback_stall_out_85(i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_feedback_stall_out_85),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_wraddr(REG,385)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_wraddr_q <= $unsigned(3'b111);
        end
        else
        begin
            redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_wraddr_q <= $unsigned(redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_rdcnt_q);
        end
    end

    // redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_mem(DUALMEM,383)
    assign redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_mem_ia = $unsigned(i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out);
    assign redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_mem_aa = redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_wraddr_q;
    assign redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_mem_ab = redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_rdcnt_q;
    assign redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_mem_reset0 = ~ (resetn);
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
    ) redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_mem_dmem (
        .clocken1(redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_mem_reset0),
        .clock1(clock),
        .address_a(redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_mem_aa),
        .data_a(redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_mem_ab),
        .q_b(redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_mem_iq),
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
    assign redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_mem_q = redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_mem_iq[63:0];

    // valid_fanout_reg14(REG,186)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist12_sync_together110_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg15(REG,187)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist13_sync_together110_aunroll_x_in_i_valid_9_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp75162_push81_kernel_3mm40(BLACKBOX,79)@11
    // out out_feedback_out_81@20000000
    // out out_feedback_valid_out_81@20000000
    kernel_3mm_i_llvm_fpga_push_i1_notcmp75162_push81_0 thei_llvm_fpga_push_i1_notcmp75162_push81_kernel_3mm40 (
        .in_data_in(redist22_i_llvm_fpga_pop_i1_notcmp75162_pop81_kernel_3mm39_out_data_out_1_q),
        .in_feedback_stall_in_81(i_llvm_fpga_pop_i1_notcmp75162_pop81_kernel_3mm39_out_feedback_stall_out_81),
        .in_keep_going58(redist25_i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_out_data_out_10_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_81(i_llvm_fpga_push_i1_notcmp75162_push81_kernel_3mm40_out_feedback_out_81),
        .out_feedback_valid_out_81(i_llvm_fpga_push_i1_notcmp75162_push81_kernel_3mm40_out_feedback_valid_out_81),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together110_aunroll_x_in_c0_eni10413_5_tpl_9(DELAY,341)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist5_sync_together110_aunroll_x_in_c0_eni10413_5_tpl_9 ( .xin(in_c0_eni10413_5_tpl), .xout(redist5_sync_together110_aunroll_x_in_c0_eni10413_5_tpl_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i1_notcmp75162_pop81_kernel_3mm39(BLACKBOX,67)@10
    // out out_feedback_stall_out_81@20000000
    kernel_3mm_i_llvm_fpga_pop_i1_notcmp75162_pop81_0 thei_llvm_fpga_pop_i1_notcmp75162_pop81_kernel_3mm39 (
        .in_data_in(redist5_sync_together110_aunroll_x_in_c0_eni10413_5_tpl_9_q),
        .in_dir(redist1_sync_together110_aunroll_x_in_c0_eni10413_1_tpl_9_q),
        .in_feedback_in_81(i_llvm_fpga_push_i1_notcmp75162_push81_kernel_3mm40_out_feedback_out_81),
        .in_feedback_valid_in_81(i_llvm_fpga_push_i1_notcmp75162_push81_kernel_3mm40_out_feedback_valid_out_81),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp75162_pop81_kernel_3mm39_out_data_out),
        .out_feedback_stall_out_81(i_llvm_fpga_pop_i1_notcmp75162_pop81_kernel_3mm39_out_feedback_stall_out_81),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist22_i_llvm_fpga_pop_i1_notcmp75162_pop81_kernel_3mm39_out_data_out_1(DELAY,358)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_pop_i1_notcmp75162_pop81_kernel_3mm39_out_data_out_1_q <= '0;
        end
        else
        begin
            redist22_i_llvm_fpga_pop_i1_notcmp75162_pop81_kernel_3mm39_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_notcmp75162_pop81_kernel_3mm39_out_data_out);
        end
    end

    // i_masked67_kernel_3mm38(LOGICAL,90)@2 + 1
    assign i_masked67_kernel_3mm38_qi = i_notcmp54_kernel_3mm31_q & i_first_cleanup63_kernel_3mm3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked67_kernel_3mm38_delay ( .xin(i_masked67_kernel_3mm38_qi), .xout(i_masked67_kernel_3mm38_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist19_i_masked67_kernel_3mm38_q_9(DELAY,355)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist19_i_masked67_kernel_3mm38_q_9 ( .xin(i_masked67_kernel_3mm38_q), .xout(redist19_i_masked67_kernel_3mm38_q_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg11(REG,183)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist12_sync_together110_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg12(REG,184)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist13_sync_together110_aunroll_x_in_i_valid_9_q);
        end
    end

    // i_llvm_fpga_push_i32_tmp145_092_push77_kernel_3mm25(BLACKBOX,85)@11
    // out out_feedback_out_77@20000000
    // out out_feedback_valid_out_77@20000000
    kernel_3mm_i_llvm_fpga_push_i32_tmp145_092_push77_0 thei_llvm_fpga_push_i32_tmp145_092_push77_kernel_3mm25 (
        .in_data_in(bgTrunc_i_add162_kernel_3mm24_sel_x_b),
        .in_feedback_stall_in_77(i_llvm_fpga_pop_i32_tmp145_092_pop77_kernel_3mm23_out_feedback_stall_out_77),
        .in_keep_going58(redist25_i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_out_data_out_10_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_77(i_llvm_fpga_push_i32_tmp145_092_push77_kernel_3mm25_out_feedback_out_77),
        .out_feedback_valid_out_77(i_llvm_fpga_push_i32_tmp145_092_push77_kernel_3mm25_out_feedback_valid_out_77),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_notEnable(LOGICAL,369)
    assign redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_nor(LOGICAL,370)
    assign redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_nor_q = ~ (redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_notEnable_q | redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_sticky_ena_q);

    // redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_mem_last(CONSTANT,366)
    assign redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_mem_last_q = $unsigned(4'b0110);

    // redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_cmp(LOGICAL,367)
    assign redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_cmp_b = {1'b0, redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_rdcnt_q};
    assign redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_cmp_q = $unsigned(redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_mem_last_q == redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_cmpReg(REG,368)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_cmpReg_q <= $unsigned(redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_cmp_q);
        end
    end

    // redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_sticky_ena(REG,371)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_nor_q == 1'b1)
        begin
            redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_sticky_ena_q <= $unsigned(redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_cmpReg_q);
        end
    end

    // redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_enaAnd(LOGICAL,372)
    assign redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_enaAnd_q = redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_sticky_ena_q & VCC_q;

    // redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_rdcnt(COUNTER,364)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_rdcnt_i <= 3'd0;
        end
        else
        begin
            redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_rdcnt_i <= $unsigned(redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_rdcnt_i) + $unsigned(3'd1);
        end
    end
    assign redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_rdcnt_q = redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_rdcnt_i[2:0];

    // redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_wraddr(REG,365)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_wraddr_q <= $unsigned(3'b111);
        end
        else
        begin
            redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_wraddr_q <= $unsigned(redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_rdcnt_q);
        end
    end

    // redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_mem(DUALMEM,363)
    assign redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_mem_ia = $unsigned(in_c0_eni10413_4_tpl);
    assign redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_mem_aa = redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_wraddr_q;
    assign redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_mem_ab = redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_rdcnt_q;
    assign redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_mem_reset0 = ~ (resetn);
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
    ) redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_mem_dmem (
        .clocken1(redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_mem_aa),
        .data_a(redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_mem_ab),
        .q_b(redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_mem_iq),
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
    assign redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_mem_q = redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_mem_iq[31:0];

    // i_llvm_fpga_pop_i32_tmp145_092_pop77_kernel_3mm23(BLACKBOX,72)@10
    // out out_feedback_stall_out_77@20000000
    kernel_3mm_i_llvm_fpga_pop_i32_tmp145_092_pop77_0 thei_llvm_fpga_pop_i32_tmp145_092_pop77_kernel_3mm23 (
        .in_data_in(redist4_sync_together110_aunroll_x_in_c0_eni10413_4_tpl_9_mem_q),
        .in_dir(redist1_sync_together110_aunroll_x_in_c0_eni10413_1_tpl_9_q),
        .in_feedback_in_77(i_llvm_fpga_push_i32_tmp145_092_push77_kernel_3mm25_out_feedback_out_77),
        .in_feedback_valid_in_77(i_llvm_fpga_push_i32_tmp145_092_push77_kernel_3mm25_out_feedback_valid_out_77),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i32_tmp145_092_pop77_kernel_3mm23_out_data_out),
        .out_feedback_stall_out_77(i_llvm_fpga_pop_i32_tmp145_092_pop77_kernel_3mm23_out_feedback_stall_out_77),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist21_i_llvm_fpga_pop_i32_tmp145_092_pop77_kernel_3mm23_out_data_out_1(DELAY,357)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_pop_i32_tmp145_092_pop77_kernel_3mm23_out_data_out_1_q <= '0;
        end
        else
        begin
            redist21_i_llvm_fpga_pop_i32_tmp145_092_pop77_kernel_3mm23_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_tmp145_092_pop77_kernel_3mm23_out_data_out);
        end
    end

    // i_mul161_kernel_3mm22_bs2_merged_bit_select(BITSELECT,333)@7
    assign i_mul161_kernel_3mm22_bs2_merged_bit_select_b = i_llvm_fpga_mem_unnamed_kernel_3mm27_kernel_3mm17_out_o_readdata[31:18];
    assign i_mul161_kernel_3mm22_bs2_merged_bit_select_c = i_llvm_fpga_mem_unnamed_kernel_3mm27_kernel_3mm17_out_o_readdata[17:0];

    // i_mul161_kernel_3mm22_bs1_merged_bit_select(BITSELECT,334)@7
    assign i_mul161_kernel_3mm22_bs1_merged_bit_select_b = i_llvm_fpga_mem_unnamed_kernel_3mm28_kernel_3mm21_out_o_readdata[31:18];
    assign i_mul161_kernel_3mm22_bs1_merged_bit_select_c = i_llvm_fpga_mem_unnamed_kernel_3mm28_kernel_3mm21_out_o_readdata[17:0];

    // i_mul161_kernel_3mm22_ma3_cma(CHAINMULTADD,330)@7 + 3
    assign i_mul161_kernel_3mm22_ma3_cma_reset = ~ (resetn);
    assign i_mul161_kernel_3mm22_ma3_cma_ena0 = 1'b1;
    assign i_mul161_kernel_3mm22_ma3_cma_ena1 = i_mul161_kernel_3mm22_ma3_cma_ena0;
    assign i_mul161_kernel_3mm22_ma3_cma_ena2 = i_mul161_kernel_3mm22_ma3_cma_ena0;

    assign i_mul161_kernel_3mm22_ma3_cma_a0 = i_mul161_kernel_3mm22_bs1_merged_bit_select_b;
    assign i_mul161_kernel_3mm22_ma3_cma_c0 = i_mul161_kernel_3mm22_bs2_merged_bit_select_c;
    assign i_mul161_kernel_3mm22_ma3_cma_a1 = i_mul161_kernel_3mm22_bs2_merged_bit_select_b;
    assign i_mul161_kernel_3mm22_ma3_cma_c1 = i_mul161_kernel_3mm22_bs1_merged_bit_select_c;
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
    ) i_mul161_kernel_3mm22_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul161_kernel_3mm22_ma3_cma_ena2, i_mul161_kernel_3mm22_ma3_cma_ena1, i_mul161_kernel_3mm22_ma3_cma_ena0 }),
        .aclr({ i_mul161_kernel_3mm22_ma3_cma_reset, i_mul161_kernel_3mm22_ma3_cma_reset }),
        .ay(i_mul161_kernel_3mm22_ma3_cma_a1),
        .by(i_mul161_kernel_3mm22_ma3_cma_a0),
        .ax(i_mul161_kernel_3mm22_ma3_cma_c1),
        .bx(i_mul161_kernel_3mm22_ma3_cma_c0),
        .resulta(i_mul161_kernel_3mm22_ma3_cma_s0),
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
    i_mul161_kernel_3mm22_ma3_cma_delay ( .xin(i_mul161_kernel_3mm22_ma3_cma_s0), .xout(i_mul161_kernel_3mm22_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul161_kernel_3mm22_ma3_cma_q = $unsigned(i_mul161_kernel_3mm22_ma3_cma_qq[32:0]);

    // i_mul161_kernel_3mm22_sums_align_1(BITSHIFT,217)@10
    assign i_mul161_kernel_3mm22_sums_align_1_qint = { i_mul161_kernel_3mm22_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul161_kernel_3mm22_sums_align_1_q = i_mul161_kernel_3mm22_sums_align_1_qint[50:0];

    // i_mul161_kernel_3mm22_im0_cma(CHAINMULTADD,328)@7 + 3
    assign i_mul161_kernel_3mm22_im0_cma_reset = ~ (resetn);
    assign i_mul161_kernel_3mm22_im0_cma_ena0 = 1'b1;
    assign i_mul161_kernel_3mm22_im0_cma_ena1 = i_mul161_kernel_3mm22_im0_cma_ena0;
    assign i_mul161_kernel_3mm22_im0_cma_ena2 = i_mul161_kernel_3mm22_im0_cma_ena0;

    assign i_mul161_kernel_3mm22_im0_cma_a0 = i_mul161_kernel_3mm22_bs1_merged_bit_select_b;
    assign i_mul161_kernel_3mm22_im0_cma_c0 = i_mul161_kernel_3mm22_bs2_merged_bit_select_b;
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
    ) i_mul161_kernel_3mm22_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul161_kernel_3mm22_im0_cma_ena2, i_mul161_kernel_3mm22_im0_cma_ena1, i_mul161_kernel_3mm22_im0_cma_ena0 }),
        .aclr({ i_mul161_kernel_3mm22_im0_cma_reset, i_mul161_kernel_3mm22_im0_cma_reset }),
        .ay(i_mul161_kernel_3mm22_im0_cma_a0),
        .ax(i_mul161_kernel_3mm22_im0_cma_c0),
        .resulta(i_mul161_kernel_3mm22_im0_cma_s0),
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
    i_mul161_kernel_3mm22_im0_cma_delay ( .xin(i_mul161_kernel_3mm22_im0_cma_s0), .xout(i_mul161_kernel_3mm22_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul161_kernel_3mm22_im0_cma_q = $unsigned(i_mul161_kernel_3mm22_im0_cma_qq[27:0]);

    // i_mul161_kernel_3mm22_im8_cma(CHAINMULTADD,329)@7 + 3
    assign i_mul161_kernel_3mm22_im8_cma_reset = ~ (resetn);
    assign i_mul161_kernel_3mm22_im8_cma_ena0 = 1'b1;
    assign i_mul161_kernel_3mm22_im8_cma_ena1 = i_mul161_kernel_3mm22_im8_cma_ena0;
    assign i_mul161_kernel_3mm22_im8_cma_ena2 = i_mul161_kernel_3mm22_im8_cma_ena0;

    assign i_mul161_kernel_3mm22_im8_cma_a0 = i_mul161_kernel_3mm22_bs1_merged_bit_select_c;
    assign i_mul161_kernel_3mm22_im8_cma_c0 = i_mul161_kernel_3mm22_bs2_merged_bit_select_c;
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
    ) i_mul161_kernel_3mm22_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul161_kernel_3mm22_im8_cma_ena2, i_mul161_kernel_3mm22_im8_cma_ena1, i_mul161_kernel_3mm22_im8_cma_ena0 }),
        .aclr({ i_mul161_kernel_3mm22_im8_cma_reset, i_mul161_kernel_3mm22_im8_cma_reset }),
        .ay(i_mul161_kernel_3mm22_im8_cma_a0),
        .ax(i_mul161_kernel_3mm22_im8_cma_c0),
        .resulta(i_mul161_kernel_3mm22_im8_cma_s0),
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
    i_mul161_kernel_3mm22_im8_cma_delay ( .xin(i_mul161_kernel_3mm22_im8_cma_s0), .xout(i_mul161_kernel_3mm22_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul161_kernel_3mm22_im8_cma_q = $unsigned(i_mul161_kernel_3mm22_im8_cma_qq[35:0]);

    // i_mul161_kernel_3mm22_sums_join_0(BITJOIN,216)@10
    assign i_mul161_kernel_3mm22_sums_join_0_q = {i_mul161_kernel_3mm22_im0_cma_q, i_mul161_kernel_3mm22_im8_cma_q};

    // i_mul161_kernel_3mm22_sums_result_add_0_0(ADD,219)@10
    assign i_mul161_kernel_3mm22_sums_result_add_0_0_a = {1'b0, i_mul161_kernel_3mm22_sums_join_0_q};
    assign i_mul161_kernel_3mm22_sums_result_add_0_0_b = {14'b00000000000000, i_mul161_kernel_3mm22_sums_align_1_q};
    assign i_mul161_kernel_3mm22_sums_result_add_0_0_o = $unsigned(i_mul161_kernel_3mm22_sums_result_add_0_0_a) + $unsigned(i_mul161_kernel_3mm22_sums_result_add_0_0_b);
    assign i_mul161_kernel_3mm22_sums_result_add_0_0_q = i_mul161_kernel_3mm22_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul161_kernel_3mm22_sel_x(BITSELECT,106)@10
    assign bgTrunc_i_mul161_kernel_3mm22_sel_x_in = i_mul161_kernel_3mm22_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul161_kernel_3mm22_sel_x_b = bgTrunc_i_mul161_kernel_3mm22_sel_x_in[31:0];

    // redist18_bgTrunc_i_mul161_kernel_3mm22_sel_x_b_1(DELAY,354)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_bgTrunc_i_mul161_kernel_3mm22_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist18_bgTrunc_i_mul161_kernel_3mm22_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul161_kernel_3mm22_sel_x_b);
        end
    end

    // i_add162_kernel_3mm24(ADD,43)@11
    assign i_add162_kernel_3mm24_a = {1'b0, redist18_bgTrunc_i_mul161_kernel_3mm22_sel_x_b_1_q};
    assign i_add162_kernel_3mm24_b = {1'b0, redist21_i_llvm_fpga_pop_i32_tmp145_092_pop77_kernel_3mm23_out_data_out_1_q};
    assign i_add162_kernel_3mm24_o = $unsigned(i_add162_kernel_3mm24_a) + $unsigned(i_add162_kernel_3mm24_b);
    assign i_add162_kernel_3mm24_q = i_add162_kernel_3mm24_o[32:0];

    // bgTrunc_i_add162_kernel_3mm24_sel_x(BITSELECT,103)@11
    assign bgTrunc_i_add162_kernel_3mm24_sel_x_b = i_add162_kernel_3mm24_q[31:0];

    // redist25_i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_out_data_out_10(DELAY,361)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist25_i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_out_data_out_10 ( .xin(redist24_i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_out_data_out_1_q), .xout(redist25_i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_out_data_out_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,170)@11
    assign out_c0_exi8432_0_tpl = GND_q;
    assign out_c0_exi8432_1_tpl = redist25_i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_out_data_out_10_q;
    assign out_c0_exi8432_2_tpl = bgTrunc_i_add162_kernel_3mm24_sel_x_b;
    assign out_c0_exi8432_3_tpl = redist19_i_masked67_kernel_3mm38_q_9_q;
    assign out_c0_exi8432_4_tpl = redist22_i_llvm_fpga_pop_i1_notcmp75162_pop81_kernel_3mm39_out_data_out_1_q;
    assign out_c0_exi8432_5_tpl = redist20_i_llvm_fpga_pop_p70i32_arrayidx14914177_pop85_kernel_3mm43_out_data_out_9_mem_q;
    assign out_c0_exi8432_6_tpl = redist23_i_llvm_fpga_pop_i1_notcmp70178_pop86_kernel_3mm45_out_data_out_1_q;
    assign out_c0_exi8432_7_tpl = redist9_sync_together110_aunroll_x_in_c0_eni10413_9_tpl_10_q;
    assign out_c0_exi8432_8_tpl = redist10_sync_together110_aunroll_x_in_c0_eni10413_10_tpl_10_mem_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_kernel_3mm1 = GND_q;

    // i_llvm_fpga_pop_i32_i_394_pop31164_pop82_kernel_3mm41(BLACKBOX,70)@2
    // out out_feedback_stall_out_82@20000000
    kernel_3mm_i_llvm_fpga_pop_i32_i_394_pop31164_pop82_0 thei_llvm_fpga_pop_i32_i_394_pop31164_pop82_kernel_3mm41 (
        .in_data_in(redist6_sync_together110_aunroll_x_in_c0_eni10413_6_tpl_1_q),
        .in_dir(redist0_sync_together110_aunroll_x_in_c0_eni10413_1_tpl_1_q),
        .in_feedback_in_82(i_llvm_fpga_push_i32_i_394_pop31164_push82_kernel_3mm42_out_feedback_out_82),
        .in_feedback_valid_in_82(i_llvm_fpga_push_i32_i_394_pop31164_push82_kernel_3mm42_out_feedback_valid_out_82),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_394_pop31164_pop82_kernel_3mm41_out_data_out),
        .out_feedback_stall_out_82(i_llvm_fpga_pop_i32_i_394_pop31164_pop82_kernel_3mm41_out_feedback_stall_out_82),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i32_i_394_pop31164_push82_kernel_3mm42(BLACKBOX,83)@2
    // out out_feedback_out_82@20000000
    // out out_feedback_valid_out_82@20000000
    kernel_3mm_i_llvm_fpga_push_i32_i_394_pop31164_push82_0 thei_llvm_fpga_push_i32_i_394_pop31164_push82_kernel_3mm42 (
        .in_data_in(i_llvm_fpga_pop_i32_i_394_pop31164_pop82_kernel_3mm41_out_data_out),
        .in_feedback_stall_in_82(i_llvm_fpga_pop_i32_i_394_pop31164_pop82_kernel_3mm41_out_feedback_stall_out_82),
        .in_keep_going58(redist24_i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(),
        .out_feedback_out_82(i_llvm_fpga_push_i32_i_394_pop31164_push82_kernel_3mm42_out_feedback_out_82),
        .out_feedback_valid_out_82(i_llvm_fpga_push_i32_i_394_pop31164_push82_kernel_3mm42_out_feedback_valid_out_82),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg16(REG,188)@1 + 1
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

    // valid_fanout_reg17(REG,189)@1 + 1
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

    // redist6_sync_together110_aunroll_x_in_c0_eni10413_6_tpl_1(DELAY,342)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together110_aunroll_x_in_c0_eni10413_6_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together110_aunroll_x_in_c0_eni10413_6_tpl_1_q <= $unsigned(in_c0_eni10413_6_tpl);
        end
    end

endmodule
