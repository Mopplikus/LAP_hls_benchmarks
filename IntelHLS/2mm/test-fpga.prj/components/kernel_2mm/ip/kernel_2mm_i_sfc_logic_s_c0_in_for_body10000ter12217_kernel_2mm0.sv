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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body15_kernel_2mms_c0_enter12217_kernel_2mm0
// Created for function/kernel kernel_2mm
// SystemVerilog created on Fri Apr  7 18:35:51 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_i_sfc_logic_s_c0_in_for_body10000ter12217_kernel_2mm0 (
    input wire [31:0] in_unnamed_kernel_2mm7_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm7_kernel_2mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_2mm7_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm7_kernel_2mm_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [31:0] in_intel_reserved_ffwd_0_0,
    input wire [31:0] in_unnamed_kernel_2mm8_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm8_kernel_2mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_2mm8_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm8_kernel_2mm_avm_readdatavalid,
    output wire [31:0] out_unnamed_kernel_2mm7_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm7_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm7_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm7_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm7_kernel_2mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_2mm7_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm7_kernel_2mm_avm_burstcount,
    output wire [31:0] out_unnamed_kernel_2mm8_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm8_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm8_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm8_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm8_kernel_2mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_2mm8_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm8_kernel_2mm_avm_burstcount,
    output wire [0:0] out_c0_exi9134_0_tpl,
    output wire [0:0] out_c0_exi9134_1_tpl,
    output wire [63:0] out_c0_exi9134_2_tpl,
    output wire [31:0] out_c0_exi9134_3_tpl,
    output wire [0:0] out_c0_exi9134_4_tpl,
    output wire [0:0] out_c0_exi9134_5_tpl,
    output wire [63:0] out_c0_exi9134_6_tpl,
    output wire [0:0] out_c0_exi9134_7_tpl,
    output wire [0:0] out_c0_exi9134_8_tpl,
    output wire [31:0] out_c0_exi9134_9_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_kernel_2mm1,
    input wire [0:0] in_c0_eni10_0_tpl,
    input wire [0:0] in_c0_eni10_1_tpl,
    input wire [63:0] in_c0_eni10_2_tpl,
    input wire [63:0] in_c0_eni10_3_tpl,
    input wire [31:0] in_c0_eni10_4_tpl,
    input wire [0:0] in_c0_eni10_5_tpl,
    input wire [31:0] in_c0_eni10_6_tpl,
    input wire [63:0] in_c0_eni10_7_tpl,
    input wire [0:0] in_c0_eni10_8_tpl,
    input wire [0:0] in_c0_eni10_9_tpl,
    input wire [31:0] in_c0_eni10_10_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] c_i2_178_q;
    wire [31:0] c_i32_080_q;
    wire [31:0] c_i32_181_q;
    wire [4:0] c_i5_184_q;
    wire [4:0] c_i5_882_q;
    wire [63:0] c_kernel_2mm_A_local_pmem_q;
    wire [63:0] c_kernel_2mm_B_local_pmem_q;
    wire [32:0] i_add_kernel_2mm26_a;
    wire [32:0] i_add_kernel_2mm26_b;
    logic [32:0] i_add_kernel_2mm26_o;
    wire [32:0] i_add_kernel_2mm26_q;
    wire [1:0] i_arrayidx192_kernel_2mm16_vt_const_1_q;
    wire [63:0] i_arrayidx192_kernel_2mm16_vt_join_q;
    wire [61:0] i_arrayidx192_kernel_2mm16_vt_select_63_b;
    wire [63:0] i_arrayidx233_kernel_2mm22_vt_join_q;
    wire [61:0] i_arrayidx233_kernel_2mm22_vt_select_63_b;
    wire [1:0] i_cleanups_shl29_kernel_2mm5_vt_join_q;
    wire [0:0] i_cleanups_shl29_kernel_2mm5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor31_kernel_2mm4_q;
    wire [5:0] i_fpga_indvars_iv_next_kernel_2mm38_a;
    wire [5:0] i_fpga_indvars_iv_next_kernel_2mm38_b;
    logic [5:0] i_fpga_indvars_iv_next_kernel_2mm38_o;
    wire [5:0] i_fpga_indvars_iv_next_kernel_2mm38_q;
    wire [63:0] i_idxprom18_kernel_2mm13_vt_join_q;
    wire [31:0] i_idxprom18_kernel_2mm13_vt_select_31_b;
    wire [32:0] i_inc_kernel_2mm28_a;
    wire [32:0] i_inc_kernel_2mm28_b;
    logic [32:0] i_inc_kernel_2mm28_o;
    wire [32:0] i_inc_kernel_2mm28_q;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_alpha4114_kernel_2mm18_out_dest_data_out_0_0;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_2mm7_kernel_2mm17_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_2mm7_kernel_2mm17_out_unnamed_kernel_2mm7_kernel_2mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm7_kernel_2mm17_out_unnamed_kernel_2mm7_kernel_2mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_kernel_2mm7_kernel_2mm17_out_unnamed_kernel_2mm7_kernel_2mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm7_kernel_2mm17_out_unnamed_kernel_2mm7_kernel_2mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm7_kernel_2mm17_out_unnamed_kernel_2mm7_kernel_2mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm7_kernel_2mm17_out_unnamed_kernel_2mm7_kernel_2mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_2mm7_kernel_2mm17_out_unnamed_kernel_2mm7_kernel_2mm_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_2mm8_kernel_2mm23_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_2mm8_kernel_2mm23_out_unnamed_kernel_2mm8_kernel_2mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm8_kernel_2mm23_out_unnamed_kernel_2mm8_kernel_2mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_kernel_2mm8_kernel_2mm23_out_unnamed_kernel_2mm8_kernel_2mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm8_kernel_2mm23_out_unnamed_kernel_2mm8_kernel_2mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm8_kernel_2mm23_out_unnamed_kernel_2mm8_kernel_2mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm8_kernel_2mm23_out_unnamed_kernel_2mm8_kernel_2mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_2mm8_kernel_2mm23_out_unnamed_kernel_2mm8_kernel_2mm_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3765_pop34_kernel_2mm47_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3765_pop34_kernel_2mm47_out_feedback_stall_out_34;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp4254_pop29_kernel_2mm41_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp4254_pop29_kernel_2mm41_out_feedback_stall_out_29;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups28_pop28_kernel_2mm2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups28_pop28_kernel_2mm2_out_feedback_stall_out_28;
    wire [1:0] i_llvm_fpga_pop_i2_initerations23_pop27_kernel_2mm7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations23_pop27_kernel_2mm7_out_feedback_stall_out_27;
    wire [31:0] i_llvm_fpga_pop_i32_i_040_pop1558_pop30_kernel_2mm43_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_040_pop1558_pop30_kernel_2mm43_out_feedback_stall_out_30;
    wire [31:0] i_llvm_fpga_pop_i32_k_038_pop25_kernel_2mm12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k_038_pop25_kernel_2mm12_out_feedback_stall_out_25;
    wire [31:0] i_llvm_fpga_pop_i32_x_037_pop26_kernel_2mm25_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_x_037_pop26_kernel_2mm25_out_feedback_stall_out_26;
    wire [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv_pop24_kernel_2mm30_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv_pop24_kernel_2mm30_out_feedback_stall_out_24;
    wire [63:0] i_llvm_fpga_pop_i64_idxprom1063_pop32_kernel_2mm20_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_idxprom1063_pop32_kernel_2mm20_out_feedback_stall_out_32;
    wire [63:0] i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_feedback_stall_out_31;
    wire [63:0] i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_feedback_stall_out_33;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration27_kernel_2mm11_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration27_kernel_2mm11_out_feedback_valid_out_6;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3765_push34_kernel_2mm48_out_feedback_out_34;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3765_push34_kernel_2mm48_out_feedback_valid_out_34;
    wire [0:0] i_llvm_fpga_push_i1_notcmp4254_push29_kernel_2mm42_out_feedback_out_29;
    wire [0:0] i_llvm_fpga_push_i1_notcmp4254_push29_kernel_2mm42_out_feedback_valid_out_29;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond35_kernel_2mm34_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond35_kernel_2mm34_out_feedback_valid_out_7;
    wire [7:0] i_llvm_fpga_push_i2_cleanups28_push28_kernel_2mm37_out_feedback_out_28;
    wire [0:0] i_llvm_fpga_push_i2_cleanups28_push28_kernel_2mm37_out_feedback_valid_out_28;
    wire [7:0] i_llvm_fpga_push_i2_initerations23_push27_kernel_2mm9_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_i2_initerations23_push27_kernel_2mm9_out_feedback_valid_out_27;
    wire [31:0] i_llvm_fpga_push_i32_i_040_pop1558_push30_kernel_2mm44_out_feedback_out_30;
    wire [0:0] i_llvm_fpga_push_i32_i_040_pop1558_push30_kernel_2mm44_out_feedback_valid_out_30;
    wire [31:0] i_llvm_fpga_push_i32_k_038_push25_kernel_2mm29_out_feedback_out_25;
    wire [0:0] i_llvm_fpga_push_i32_k_038_push25_kernel_2mm29_out_feedback_valid_out_25;
    wire [31:0] i_llvm_fpga_push_i32_x_037_push26_kernel_2mm27_out_feedback_out_26;
    wire [0:0] i_llvm_fpga_push_i32_x_037_push26_kernel_2mm27_out_feedback_valid_out_26;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm39_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm39_out_feedback_valid_out_24;
    wire [63:0] i_llvm_fpga_push_i64_idxprom1063_push32_kernel_2mm21_out_feedback_out_32;
    wire [0:0] i_llvm_fpga_push_i64_idxprom1063_push32_kernel_2mm21_out_feedback_valid_out_32;
    wire [63:0] i_llvm_fpga_push_i64_idxprom62_push31_kernel_2mm15_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_i64_idxprom62_push31_kernel_2mm15_out_feedback_valid_out_31;
    wire [63:0] i_llvm_fpga_push_p64i32_arrayidx11164_push33_kernel_2mm46_out_feedback_out_33;
    wire [0:0] i_llvm_fpga_push_p64i32_arrayidx11164_push33_kernel_2mm46_out_feedback_valid_out_33;
    wire [0:0] i_masked34_kernel_2mm40_qi;
    reg [0:0] i_masked34_kernel_2mm40_q;
    wire [0:0] i_next_cleanups33_kernel_2mm36_s;
    reg [1:0] i_next_cleanups33_kernel_2mm36_q;
    wire [1:0] i_next_initerations24_kernel_2mm8_vt_join_q;
    wire [0:0] i_next_initerations24_kernel_2mm8_vt_select_0_b;
    wire [0:0] i_notcmp21_kernel_2mm33_q;
    wire [0:0] i_or32_kernel_2mm35_q;
    wire [31:0] bgTrunc_i_add_kernel_2mm26_sel_x_b;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next_kernel_2mm38_sel_x_b;
    wire [31:0] bgTrunc_i_inc_kernel_2mm28_sel_x_b;
    wire [63:0] bgTrunc_i_mul24_kernel_2mm24_sel_x_in;
    wire [31:0] bgTrunc_i_mul24_kernel_2mm24_sel_x_b;
    wire [63:0] bgTrunc_i_mul_kernel_2mm19_sel_x_in;
    wire [31:0] bgTrunc_i_mul_kernel_2mm19_sel_x_b;
    wire [9:0] i_arrayidx192_kernel_2mm0_add_x_a;
    wire [9:0] i_arrayidx192_kernel_2mm0_add_x_b;
    logic [9:0] i_arrayidx192_kernel_2mm0_add_x_o;
    wire [9:0] i_arrayidx192_kernel_2mm0_add_x_q;
    wire [63:0] i_arrayidx192_kernel_2mm0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx192_kernel_2mm0_narrow_x_b;
    wire [8:0] i_arrayidx192_kernel_2mm0_shift_join_x_q;
    wire [9:0] i_arrayidx192_kernel_2mm0_dupName_0_add_x_a;
    wire [9:0] i_arrayidx192_kernel_2mm0_dupName_0_add_x_b;
    logic [9:0] i_arrayidx192_kernel_2mm0_dupName_0_add_x_o;
    wire [9:0] i_arrayidx192_kernel_2mm0_dupName_0_add_x_q;
    wire [17:0] i_arrayidx192_kernel_2mm0_mult_extender_x_q;
    wire [2:0] i_arrayidx192_kernel_2mm0_mult_multconst_x_q;
    wire [8:0] i_arrayidx192_kernel_2mm0_dupName_0_trunc_sel_x_b;
    wire [8:0] i_arrayidx192_kernel_2mm0_dupName_1_trunc_sel_x_b;
    wire [8:0] i_arrayidx192_kernel_2mm0_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx192_kernel_2mm0_dupName_3_trunc_sel_x_b;
    wire [8:0] i_arrayidx192_kernel_2mm0_dupName_5_trunc_sel_x_b;
    wire [9:0] i_arrayidx233_kernel_2mm0_add_x_a;
    wire [9:0] i_arrayidx233_kernel_2mm0_add_x_b;
    logic [9:0] i_arrayidx233_kernel_2mm0_add_x_o;
    wire [9:0] i_arrayidx233_kernel_2mm0_add_x_q;
    wire [63:0] i_arrayidx233_kernel_2mm0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx233_kernel_2mm0_narrow_x_b;
    wire [8:0] i_arrayidx233_kernel_2mm0_shift_join_x_q;
    wire [9:0] i_arrayidx233_kernel_2mm0_dupName_0_add_x_a;
    wire [9:0] i_arrayidx233_kernel_2mm0_dupName_0_add_x_b;
    logic [9:0] i_arrayidx233_kernel_2mm0_dupName_0_add_x_o;
    wire [9:0] i_arrayidx233_kernel_2mm0_dupName_0_add_x_q;
    wire [17:0] i_arrayidx233_kernel_2mm0_mult_extender_x_q;
    wire [8:0] i_arrayidx233_kernel_2mm0_dupName_1_trunc_sel_x_b;
    wire [8:0] i_arrayidx233_kernel_2mm0_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx233_kernel_2mm0_dupName_3_trunc_sel_x_b;
    wire [8:0] i_arrayidx233_kernel_2mm0_dupName_5_trunc_sel_x_b;
    wire [0:0] i_first_cleanup30_kernel_2mm3_sel_x_b;
    wire [63:0] i_idxprom18_kernel_2mm13_sel_x_b;
    wire [0:0] i_last_initeration26_kernel_2mm10_sel_x_b;
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
    wire [0:0] i_exitcond_kernel_2mm31_cmp_nsign_q;
    wire [63:0] i_mul24_kernel_2mm24_sums_join_0_q;
    wire [50:0] i_mul24_kernel_2mm24_sums_align_1_q;
    wire [50:0] i_mul24_kernel_2mm24_sums_align_1_qint;
    wire [64:0] i_mul24_kernel_2mm24_sums_result_add_0_0_a;
    wire [64:0] i_mul24_kernel_2mm24_sums_result_add_0_0_b;
    logic [64:0] i_mul24_kernel_2mm24_sums_result_add_0_0_o;
    wire [64:0] i_mul24_kernel_2mm24_sums_result_add_0_0_q;
    wire [63:0] i_mul_kernel_2mm19_sums_join_0_q;
    wire [50:0] i_mul_kernel_2mm19_sums_align_1_q;
    wire [50:0] i_mul_kernel_2mm19_sums_align_1_qint;
    wire [64:0] i_mul_kernel_2mm19_sums_result_add_0_0_a;
    wire [64:0] i_mul_kernel_2mm19_sums_result_add_0_0_b;
    logic [64:0] i_mul_kernel_2mm19_sums_result_add_0_0_o;
    wire [64:0] i_mul_kernel_2mm19_sums_result_add_0_0_q;
    wire [9:0] addsumAHighB_uid253_i_arrayidx192_kernel_2mm0_mult_x_a;
    wire [9:0] addsumAHighB_uid253_i_arrayidx192_kernel_2mm0_mult_x_b;
    logic [9:0] addsumAHighB_uid253_i_arrayidx192_kernel_2mm0_mult_x_o;
    wire [9:0] addsumAHighB_uid253_i_arrayidx192_kernel_2mm0_mult_x_q;
    wire [11:0] add_uid254_i_arrayidx192_kernel_2mm0_mult_x_q;
    wire [14:0] sR_mergedSignalTM_uid259_i_arrayidx192_kernel_2mm0_mult_x_q;
    wire [1:0] lowRangeB_uid297_i_arrayidx233_kernel_2mm0_mult_x_in;
    wire [1:0] lowRangeB_uid297_i_arrayidx233_kernel_2mm0_mult_x_b;
    wire [6:0] highBBits_uid298_i_arrayidx233_kernel_2mm0_mult_x_b;
    wire [9:0] addsumAHighB_uid299_i_arrayidx233_kernel_2mm0_mult_x_a;
    wire [9:0] addsumAHighB_uid299_i_arrayidx233_kernel_2mm0_mult_x_b;
    logic [9:0] addsumAHighB_uid299_i_arrayidx233_kernel_2mm0_mult_x_o;
    wire [9:0] addsumAHighB_uid299_i_arrayidx233_kernel_2mm0_mult_x_q;
    wire [11:0] add_uid300_i_arrayidx233_kernel_2mm0_mult_x_q;
    wire [14:0] sR_mergedSignalTM_uid305_i_arrayidx233_kernel_2mm0_mult_x_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid339_i_cleanups_shl29_kernel_2mm0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid339_i_cleanups_shl29_kernel_2mm0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid340_i_cleanups_shl29_kernel_2mm0_shift_x_q;
    wire [0:0] leftShiftStage0_uid342_i_cleanups_shl29_kernel_2mm0_shift_x_s;
    reg [1:0] leftShiftStage0_uid342_i_cleanups_shl29_kernel_2mm0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid346_i_next_initerations24_kernel_2mm0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid348_i_next_initerations24_kernel_2mm0_shift_x_q;
    wire [0:0] rightShiftStage0_uid350_i_next_initerations24_kernel_2mm0_shift_x_s;
    reg [1:0] rightShiftStage0_uid350_i_next_initerations24_kernel_2mm0_shift_x_q;
    wire i_mul24_kernel_2mm24_im0_cma_reset;
    wire [13:0] i_mul24_kernel_2mm24_im0_cma_a0;
    wire [13:0] i_mul24_kernel_2mm24_im0_cma_c0;
    wire [27:0] i_mul24_kernel_2mm24_im0_cma_s0;
    wire [27:0] i_mul24_kernel_2mm24_im0_cma_qq;
    wire [27:0] i_mul24_kernel_2mm24_im0_cma_q;
    wire i_mul24_kernel_2mm24_im0_cma_ena0;
    wire i_mul24_kernel_2mm24_im0_cma_ena1;
    wire i_mul24_kernel_2mm24_im0_cma_ena2;
    wire i_mul24_kernel_2mm24_im8_cma_reset;
    wire [17:0] i_mul24_kernel_2mm24_im8_cma_a0;
    wire [17:0] i_mul24_kernel_2mm24_im8_cma_c0;
    wire [35:0] i_mul24_kernel_2mm24_im8_cma_s0;
    wire [35:0] i_mul24_kernel_2mm24_im8_cma_qq;
    wire [35:0] i_mul24_kernel_2mm24_im8_cma_q;
    wire i_mul24_kernel_2mm24_im8_cma_ena0;
    wire i_mul24_kernel_2mm24_im8_cma_ena1;
    wire i_mul24_kernel_2mm24_im8_cma_ena2;
    wire i_mul_kernel_2mm19_im0_cma_reset;
    wire [13:0] i_mul_kernel_2mm19_im0_cma_a0;
    wire [13:0] i_mul_kernel_2mm19_im0_cma_c0;
    wire [27:0] i_mul_kernel_2mm19_im0_cma_s0;
    wire [27:0] i_mul_kernel_2mm19_im0_cma_qq;
    wire [27:0] i_mul_kernel_2mm19_im0_cma_q;
    wire i_mul_kernel_2mm19_im0_cma_ena0;
    wire i_mul_kernel_2mm19_im0_cma_ena1;
    wire i_mul_kernel_2mm19_im0_cma_ena2;
    wire i_mul_kernel_2mm19_im8_cma_reset;
    wire [17:0] i_mul_kernel_2mm19_im8_cma_a0;
    wire [17:0] i_mul_kernel_2mm19_im8_cma_c0;
    wire [35:0] i_mul_kernel_2mm19_im8_cma_s0;
    wire [35:0] i_mul_kernel_2mm19_im8_cma_qq;
    wire [35:0] i_mul_kernel_2mm19_im8_cma_q;
    wire i_mul_kernel_2mm19_im8_cma_ena0;
    wire i_mul_kernel_2mm19_im8_cma_ena1;
    wire i_mul_kernel_2mm19_im8_cma_ena2;
    wire i_mul24_kernel_2mm24_ma3_cma_reset;
    wire [13:0] i_mul24_kernel_2mm24_ma3_cma_a0;
    wire [17:0] i_mul24_kernel_2mm24_ma3_cma_c0;
    wire [13:0] i_mul24_kernel_2mm24_ma3_cma_a1;
    wire [17:0] i_mul24_kernel_2mm24_ma3_cma_c1;
    wire [32:0] i_mul24_kernel_2mm24_ma3_cma_s0;
    wire [32:0] i_mul24_kernel_2mm24_ma3_cma_qq;
    wire [32:0] i_mul24_kernel_2mm24_ma3_cma_q;
    wire i_mul24_kernel_2mm24_ma3_cma_ena0;
    wire i_mul24_kernel_2mm24_ma3_cma_ena1;
    wire i_mul24_kernel_2mm24_ma3_cma_ena2;
    wire i_mul_kernel_2mm19_ma3_cma_reset;
    wire [13:0] i_mul_kernel_2mm19_ma3_cma_a0;
    wire [17:0] i_mul_kernel_2mm19_ma3_cma_c0;
    wire [13:0] i_mul_kernel_2mm19_ma3_cma_a1;
    wire [17:0] i_mul_kernel_2mm19_ma3_cma_c1;
    wire [32:0] i_mul_kernel_2mm19_ma3_cma_s0;
    wire [32:0] i_mul_kernel_2mm19_ma3_cma_qq;
    wire [32:0] i_mul_kernel_2mm19_ma3_cma_q;
    wire i_mul_kernel_2mm19_ma3_cma_ena0;
    wire i_mul_kernel_2mm19_ma3_cma_ena1;
    wire i_mul_kernel_2mm19_ma3_cma_ena2;
    wire [54:0] i_arrayidx192_kernel_2mm0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx192_kernel_2mm0_upper_bits_x_merged_bit_select_c;
    wire [54:0] i_arrayidx233_kernel_2mm0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx233_kernel_2mm0_upper_bits_x_merged_bit_select_c;
    wire [13:0] i_mul_kernel_2mm19_bs2_merged_bit_select_b;
    wire [17:0] i_mul_kernel_2mm19_bs2_merged_bit_select_c;
    wire [13:0] i_mul_kernel_2mm19_bs1_merged_bit_select_b;
    wire [17:0] i_mul_kernel_2mm19_bs1_merged_bit_select_c;
    wire [13:0] i_mul24_kernel_2mm24_bs2_merged_bit_select_b;
    wire [17:0] i_mul24_kernel_2mm24_bs2_merged_bit_select_c;
    wire [13:0] i_mul24_kernel_2mm24_bs1_merged_bit_select_b;
    wire [17:0] i_mul24_kernel_2mm24_bs1_merged_bit_select_c;
    wire [1:0] lowRangeB_uid251_i_arrayidx192_kernel_2mm0_mult_x_merged_bit_select_b;
    wire [6:0] lowRangeB_uid251_i_arrayidx192_kernel_2mm0_mult_x_merged_bit_select_c;
    reg [0:0] redist0_sync_together115_aunroll_x_in_c0_eni10_1_tpl_1_q;
    reg [0:0] redist1_sync_together115_aunroll_x_in_c0_eni10_1_tpl_2_q;
    reg [0:0] redist2_sync_together115_aunroll_x_in_c0_eni10_1_tpl_12_q;
    reg [63:0] redist3_sync_together115_aunroll_x_in_c0_eni10_2_tpl_1_q;
    reg [63:0] redist4_sync_together115_aunroll_x_in_c0_eni10_3_tpl_1_q;
    reg [0:0] redist6_sync_together115_aunroll_x_in_c0_eni10_5_tpl_1_q;
    reg [31:0] redist7_sync_together115_aunroll_x_in_c0_eni10_6_tpl_1_q;
    reg [63:0] redist8_sync_together115_aunroll_x_in_c0_eni10_7_tpl_1_q;
    reg [0:0] redist9_sync_together115_aunroll_x_in_c0_eni10_8_tpl_1_q;
    reg [0:0] redist10_sync_together115_aunroll_x_in_c0_eni10_9_tpl_13_q;
    reg [0:0] redist12_sync_together115_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist13_sync_together115_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist13_sync_together115_aunroll_x_in_i_valid_4_delay_0;
    reg [0:0] redist13_sync_together115_aunroll_x_in_i_valid_4_delay_1;
    reg [0:0] redist14_sync_together115_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist15_sync_together115_aunroll_x_in_i_valid_11_q;
    reg [0:0] redist16_sync_together115_aunroll_x_in_i_valid_12_q;
    reg [8:0] redist17_i_arrayidx233_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q;
    reg [6:0] redist18_i_arrayidx233_kernel_2mm0_narrow_x_b_4_q;
    reg [6:0] redist18_i_arrayidx233_kernel_2mm0_narrow_x_b_4_delay_0;
    reg [6:0] redist18_i_arrayidx233_kernel_2mm0_narrow_x_b_4_delay_1;
    reg [6:0] redist18_i_arrayidx233_kernel_2mm0_narrow_x_b_4_delay_2;
    reg [8:0] redist19_i_arrayidx192_kernel_2mm0_dupName_3_trunc_sel_x_b_2_q;
    reg [8:0] redist19_i_arrayidx192_kernel_2mm0_dupName_3_trunc_sel_x_b_2_delay_0;
    reg [8:0] redist20_i_arrayidx192_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q;
    reg [31:0] redist21_bgTrunc_i_mul24_kernel_2mm24_sel_x_b_1_q;
    reg [0:0] redist22_i_masked34_kernel_2mm40_q_12_q;
    reg [63:0] redist24_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_1_q;
    reg [31:0] redist26_i_llvm_fpga_pop_i32_x_037_pop26_kernel_2mm25_out_data_out_1_q;
    reg [0:0] redist27_i_llvm_fpga_pop_i1_notcmp4254_pop29_kernel_2mm41_out_data_out_12_q;
    reg [0:0] redist28_i_llvm_fpga_pop_i1_notcmp3765_pop34_kernel_2mm47_out_data_out_12_q;
    reg [0:0] redist29_i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_out_data_out_1_q;
    reg [0:0] redist30_i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_out_data_out_2_q;
    reg [0:0] redist31_i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_out_data_out_13_q;
    reg [0:0] redist32_i_first_cleanup_xor31_kernel_2mm4_q_1_q;
    reg [0:0] redist33_i_first_cleanup_xor31_kernel_2mm4_q_4_q;
    reg [0:0] redist33_i_first_cleanup_xor31_kernel_2mm4_q_4_delay_0;
    reg [0:0] redist33_i_first_cleanup_xor31_kernel_2mm4_q_4_delay_1;
    wire redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_mem_reset0;
    wire [31:0] redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_mem_ia;
    wire [3:0] redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_mem_aa;
    wire [3:0] redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_mem_ab;
    wire [31:0] redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_mem_iq;
    wire [31:0] redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_mem_q;
    wire [3:0] redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_rdcnt_q;
    (* preserve *) reg [3:0] redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_rdcnt_i;
    (* preserve *) reg redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_rdcnt_eq;
    reg [3:0] redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_wraddr_q;
    wire [4:0] redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_mem_last_q;
    wire [4:0] redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_cmp_b;
    wire [0:0] redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_cmp_q;
    (* dont_merge *) reg [0:0] redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_cmpReg_q;
    wire [0:0] redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_notEnable_q;
    wire [0:0] redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_nor_q;
    (* dont_merge *) reg [0:0] redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_sticky_ena_q;
    wire [0:0] redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_enaAnd_q;
    wire redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_mem_reset0;
    wire [31:0] redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_mem_ia;
    wire [3:0] redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_mem_aa;
    wire [3:0] redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_mem_ab;
    wire [31:0] redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_mem_iq;
    wire [31:0] redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_mem_q;
    wire [3:0] redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_rdcnt_q;
    (* preserve *) reg [3:0] redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_rdcnt_i;
    (* preserve *) reg redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_rdcnt_eq;
    reg [3:0] redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_wraddr_q;
    wire [4:0] redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_mem_last_q;
    wire [4:0] redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_cmp_b;
    wire [0:0] redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_cmp_q;
    (* dont_merge *) reg [0:0] redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_cmpReg_q;
    wire [0:0] redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_notEnable_q;
    wire [0:0] redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_nor_q;
    (* dont_merge *) reg [0:0] redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_sticky_ena_q;
    wire [0:0] redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_enaAnd_q;
    wire redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_mem_reset0;
    wire [63:0] redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_mem_ia;
    wire [3:0] redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_mem_aa;
    wire [3:0] redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_mem_ab;
    wire [63:0] redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_mem_iq;
    wire [63:0] redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_mem_q;
    wire [3:0] redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_rdcnt_q;
    (* preserve *) reg [3:0] redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_rdcnt_i;
    (* preserve *) reg redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_rdcnt_eq;
    reg [3:0] redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_wraddr_q;
    wire [4:0] redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_mem_last_q;
    wire [4:0] redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_cmp_b;
    wire [0:0] redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_cmp_q;
    (* dont_merge *) reg [0:0] redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_cmpReg_q;
    wire [0:0] redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_notEnable_q;
    wire [0:0] redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_nor_q;
    (* dont_merge *) reg [0:0] redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_sticky_ena_q;
    wire [0:0] redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_enaAnd_q;
    wire redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_mem_reset0;
    wire [63:0] redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_mem_ia;
    wire [3:0] redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_mem_aa;
    wire [3:0] redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_mem_ab;
    wire [63:0] redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_mem_iq;
    wire [63:0] redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_mem_q;
    wire [3:0] redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_rdcnt_q;
    (* preserve *) reg [3:0] redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_rdcnt_i;
    (* preserve *) reg redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_rdcnt_eq;
    reg [3:0] redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_wraddr_q;
    wire [4:0] redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_mem_last_q;
    wire [4:0] redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_cmp_b;
    wire [0:0] redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_cmp_q;
    (* dont_merge *) reg [0:0] redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_cmpReg_q;
    wire [0:0] redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_notEnable_q;
    wire [0:0] redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_nor_q;
    (* dont_merge *) reg [0:0] redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_sticky_ena_q;
    wire [0:0] redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_enaAnd_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist12_sync_together115_aunroll_x_in_i_valid_1(DELAY,376)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together115_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist12_sync_together115_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist29_i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_out_data_out_1(DELAY,393)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist29_i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid339_i_cleanups_shl29_kernel_2mm0_shift_x(BITSELECT,338)@2
    assign leftShiftStage0Idx1Rng1_uid339_i_cleanups_shl29_kernel_2mm0_shift_x_in = i_llvm_fpga_pop_i2_cleanups28_pop28_kernel_2mm2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid339_i_cleanups_shl29_kernel_2mm0_shift_x_b = leftShiftStage0Idx1Rng1_uid339_i_cleanups_shl29_kernel_2mm0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid340_i_cleanups_shl29_kernel_2mm0_shift_x(BITJOIN,339)@2
    assign leftShiftStage0Idx1_uid340_i_cleanups_shl29_kernel_2mm0_shift_x_q = {leftShiftStage0Idx1Rng1_uid339_i_cleanups_shl29_kernel_2mm0_shift_x_b, GND_q};

    // leftShiftStage0_uid342_i_cleanups_shl29_kernel_2mm0_shift_x(MUX,341)@2
    assign leftShiftStage0_uid342_i_cleanups_shl29_kernel_2mm0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid342_i_cleanups_shl29_kernel_2mm0_shift_x_s or i_llvm_fpga_pop_i2_cleanups28_pop28_kernel_2mm2_out_data_out or leftShiftStage0Idx1_uid340_i_cleanups_shl29_kernel_2mm0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid342_i_cleanups_shl29_kernel_2mm0_shift_x_s)
            1'b0 : leftShiftStage0_uid342_i_cleanups_shl29_kernel_2mm0_shift_x_q = i_llvm_fpga_pop_i2_cleanups28_pop28_kernel_2mm2_out_data_out;
            1'b1 : leftShiftStage0_uid342_i_cleanups_shl29_kernel_2mm0_shift_x_q = leftShiftStage0Idx1_uid340_i_cleanups_shl29_kernel_2mm0_shift_x_q;
            default : leftShiftStage0_uid342_i_cleanups_shl29_kernel_2mm0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl29_kernel_2mm5_vt_select_1(BITSELECT,54)@2
    assign i_cleanups_shl29_kernel_2mm5_vt_select_1_b = leftShiftStage0_uid342_i_cleanups_shl29_kernel_2mm0_shift_x_q[1:1];

    // i_cleanups_shl29_kernel_2mm5_vt_join(BITJOIN,53)@2
    assign i_cleanups_shl29_kernel_2mm5_vt_join_q = {i_cleanups_shl29_kernel_2mm5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor31_kernel_2mm4(LOGICAL,57)@2
    assign i_first_cleanup_xor31_kernel_2mm4_q = i_first_cleanup30_kernel_2mm3_sel_x_b ^ VCC_q;

    // i_notcmp21_kernel_2mm33(LOGICAL,100)@2
    assign i_notcmp21_kernel_2mm33_q = i_exitcond_kernel_2mm31_cmp_nsign_q ^ VCC_q;

    // i_or32_kernel_2mm35(LOGICAL,101)@2
    assign i_or32_kernel_2mm35_q = i_notcmp21_kernel_2mm33_q | i_first_cleanup_xor31_kernel_2mm4_q;

    // i_next_cleanups33_kernel_2mm36(MUX,96)@2
    assign i_next_cleanups33_kernel_2mm36_s = i_or32_kernel_2mm35_q;
    always @(i_next_cleanups33_kernel_2mm36_s or i_llvm_fpga_pop_i2_cleanups28_pop28_kernel_2mm2_out_data_out or i_cleanups_shl29_kernel_2mm5_vt_join_q)
    begin
        unique case (i_next_cleanups33_kernel_2mm36_s)
            1'b0 : i_next_cleanups33_kernel_2mm36_q = i_llvm_fpga_pop_i2_cleanups28_pop28_kernel_2mm2_out_data_out;
            1'b1 : i_next_cleanups33_kernel_2mm36_q = i_cleanups_shl29_kernel_2mm5_vt_join_q;
            default : i_next_cleanups33_kernel_2mm36_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups28_push28_kernel_2mm37(BLACKBOX,84)@2
    // out out_feedback_out_28@20000000
    // out out_feedback_valid_out_28@20000000
    kernel_2mm_i_llvm_fpga_push_i2_cleanups28_push28_0 thei_llvm_fpga_push_i2_cleanups28_push28_kernel_2mm37 (
        .in_data_in(i_next_cleanups33_kernel_2mm36_q),
        .in_feedback_stall_in_28(i_llvm_fpga_pop_i2_cleanups28_pop28_kernel_2mm2_out_feedback_stall_out_28),
        .in_keep_going25(redist29_i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist12_sync_together115_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_28(i_llvm_fpga_push_i2_cleanups28_push28_kernel_2mm37_out_feedback_out_28),
        .out_feedback_valid_out_28(i_llvm_fpga_push_i2_cleanups28_push28_kernel_2mm37_out_feedback_valid_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together115_aunroll_x_in_c0_eni10_1_tpl_1(DELAY,364)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together115_aunroll_x_in_c0_eni10_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together115_aunroll_x_in_c0_eni10_1_tpl_1_q <= $unsigned(in_c0_eni10_1_tpl);
        end
    end

    // c_i2_178(CONSTANT,36)
    assign c_i2_178_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups28_pop28_kernel_2mm2(BLACKBOX,71)@2
    // out out_feedback_stall_out_28@20000000
    kernel_2mm_i_llvm_fpga_pop_i2_cleanups28_pop28_0 thei_llvm_fpga_pop_i2_cleanups28_pop28_kernel_2mm2 (
        .in_data_in(c_i2_178_q),
        .in_dir(redist0_sync_together115_aunroll_x_in_c0_eni10_1_tpl_1_q),
        .in_feedback_in_28(i_llvm_fpga_push_i2_cleanups28_push28_kernel_2mm37_out_feedback_out_28),
        .in_feedback_valid_in_28(i_llvm_fpga_push_i2_cleanups28_push28_kernel_2mm37_out_feedback_valid_out_28),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist12_sync_together115_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups28_pop28_kernel_2mm2_out_data_out),
        .out_feedback_stall_out_28(i_llvm_fpga_pop_i2_cleanups28_pop28_kernel_2mm2_out_feedback_stall_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup30_kernel_2mm3_sel_x(BITSELECT,169)@2
    assign i_first_cleanup30_kernel_2mm3_sel_x_b = i_llvm_fpga_pop_i2_cleanups28_pop28_kernel_2mm2_out_data_out[0:0];

    // c_i5_184(CONSTANT,39)
    assign c_i5_184_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next_kernel_2mm38(ADD,58)@2
    assign i_fpga_indvars_iv_next_kernel_2mm38_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv_pop24_kernel_2mm30_out_data_out};
    assign i_fpga_indvars_iv_next_kernel_2mm38_b = {1'b0, c_i5_184_q};
    assign i_fpga_indvars_iv_next_kernel_2mm38_o = $unsigned(i_fpga_indvars_iv_next_kernel_2mm38_a) + $unsigned(i_fpga_indvars_iv_next_kernel_2mm38_b);
    assign i_fpga_indvars_iv_next_kernel_2mm38_q = i_fpga_indvars_iv_next_kernel_2mm38_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next_kernel_2mm38_sel_x(BITSELECT,109)@2
    assign bgTrunc_i_fpga_indvars_iv_next_kernel_2mm38_sel_x_b = i_fpga_indvars_iv_next_kernel_2mm38_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm39(BLACKBOX,89)@2
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    kernel_2mm_i_llvm_fpga_push_i5_fpga_indvars_iv_push24_0 thei_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm39 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_kernel_2mm38_sel_x_b),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop24_kernel_2mm30_out_feedback_stall_out_24),
        .in_keep_going25(redist29_i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist12_sync_together115_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm39_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm39_out_feedback_valid_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_882(CONSTANT,40)
    assign c_i5_882_q = $unsigned(5'b01000);

    // i_llvm_fpga_pop_i5_fpga_indvars_iv_pop24_kernel_2mm30(BLACKBOX,76)@2
    // out out_feedback_stall_out_24@20000000
    kernel_2mm_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop24_0 thei_llvm_fpga_pop_i5_fpga_indvars_iv_pop24_kernel_2mm30 (
        .in_data_in(c_i5_882_q),
        .in_dir(redist0_sync_together115_aunroll_x_in_c0_eni10_1_tpl_1_q),
        .in_feedback_in_24(i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm39_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_i5_fpga_indvars_iv_push24_kernel_2mm39_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist12_sync_together115_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop24_kernel_2mm30_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop24_kernel_2mm30_out_feedback_stall_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_kernel_2mm31_cmp_nsign(LOGICAL,212)@2
    assign i_exitcond_kernel_2mm31_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i5_fpga_indvars_iv_pop24_kernel_2mm30_out_data_out[4:4]));

    // i_llvm_fpga_push_i1_notexitcond35_kernel_2mm34(BLACKBOX,83)@2
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    kernel_2mm_i_llvm_fpga_push_i1_notexitcond35_0 thei_llvm_fpga_push_i1_notexitcond35_kernel_2mm34 (
        .in_data_in(i_exitcond_kernel_2mm31_cmp_nsign_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_out_not_exitcond_stall_out),
        .in_first_cleanup30(i_first_cleanup30_kernel_2mm3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist12_sync_together115_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i1_notexitcond35_kernel_2mm34_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i1_notexitcond35_kernel_2mm34_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,181)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid346_i_next_initerations24_kernel_2mm0_shift_x(BITSELECT,345)@2
    assign rightShiftStage0Idx1Rng1_uid346_i_next_initerations24_kernel_2mm0_shift_x_b = i_llvm_fpga_pop_i2_initerations23_pop27_kernel_2mm7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid348_i_next_initerations24_kernel_2mm0_shift_x(BITJOIN,347)@2
    assign rightShiftStage0Idx1_uid348_i_next_initerations24_kernel_2mm0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid346_i_next_initerations24_kernel_2mm0_shift_x_b};

    // valid_fanout_reg1(REG,179)@1 + 1
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

    // valid_fanout_reg2(REG,180)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations23_push27_kernel_2mm9(BLACKBOX,85)@2
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    kernel_2mm_i_llvm_fpga_push_i2_initerations23_push27_0 thei_llvm_fpga_push_i2_initerations23_push27_kernel_2mm9 (
        .in_data_in(i_next_initerations24_kernel_2mm8_vt_join_q),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_i2_initerations23_pop27_kernel_2mm7_out_feedback_stall_out_27),
        .in_keep_going25(redist29_i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_i2_initerations23_push27_kernel_2mm9_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_i2_initerations23_push27_kernel_2mm9_out_feedback_valid_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations23_pop27_kernel_2mm7(BLACKBOX,72)@2
    // out out_feedback_stall_out_27@20000000
    kernel_2mm_i_llvm_fpga_pop_i2_initerations23_pop27_0 thei_llvm_fpga_pop_i2_initerations23_pop27_kernel_2mm7 (
        .in_data_in(c_i2_178_q),
        .in_dir(redist0_sync_together115_aunroll_x_in_c0_eni10_1_tpl_1_q),
        .in_feedback_in_27(i_llvm_fpga_push_i2_initerations23_push27_kernel_2mm9_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_i2_initerations23_push27_kernel_2mm9_out_feedback_valid_out_27),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations23_pop27_kernel_2mm7_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_i2_initerations23_pop27_kernel_2mm7_out_feedback_stall_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid350_i_next_initerations24_kernel_2mm0_shift_x(MUX,349)@2
    assign rightShiftStage0_uid350_i_next_initerations24_kernel_2mm0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid350_i_next_initerations24_kernel_2mm0_shift_x_s or i_llvm_fpga_pop_i2_initerations23_pop27_kernel_2mm7_out_data_out or rightShiftStage0Idx1_uid348_i_next_initerations24_kernel_2mm0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid350_i_next_initerations24_kernel_2mm0_shift_x_s)
            1'b0 : rightShiftStage0_uid350_i_next_initerations24_kernel_2mm0_shift_x_q = i_llvm_fpga_pop_i2_initerations23_pop27_kernel_2mm7_out_data_out;
            1'b1 : rightShiftStage0_uid350_i_next_initerations24_kernel_2mm0_shift_x_q = rightShiftStage0Idx1_uid348_i_next_initerations24_kernel_2mm0_shift_x_q;
            default : rightShiftStage0_uid350_i_next_initerations24_kernel_2mm0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations24_kernel_2mm8_vt_select_0(BITSELECT,99)@2
    assign i_next_initerations24_kernel_2mm8_vt_select_0_b = rightShiftStage0_uid350_i_next_initerations24_kernel_2mm0_shift_x_q[0:0];

    // i_next_initerations24_kernel_2mm8_vt_join(BITJOIN,98)@2
    assign i_next_initerations24_kernel_2mm8_vt_join_q = {GND_q, i_next_initerations24_kernel_2mm8_vt_select_0_b};

    // i_last_initeration26_kernel_2mm10_sel_x(BITSELECT,171)@2
    assign i_last_initeration26_kernel_2mm10_sel_x_b = i_next_initerations24_kernel_2mm8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration27_kernel_2mm11(BLACKBOX,80)@2
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    kernel_2mm_i_llvm_fpga_push_i1_lastiniteration27_0 thei_llvm_fpga_push_i1_lastiniteration27_kernel_2mm11 (
        .in_data_in(i_last_initeration26_kernel_2mm10_sel_x_b),
        .in_feedback_stall_in_6(i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_out_initeration_stall_out),
        .in_keep_going25(redist29_i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i1_lastiniteration27_kernel_2mm11_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i1_lastiniteration27_kernel_2mm11_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going25_kernel_2mm6(BLACKBOX,68)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    kernel_2mm_i_llvm_fpga_pipeline_keep_going25_0 thei_llvm_fpga_pipeline_keep_going25_kernel_2mm6 (
        .in_data_in(in_c0_eni10_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration27_kernel_2mm11_out_feedback_out_6),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration27_kernel_2mm11_out_feedback_valid_out_6),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond35_kernel_2mm34_out_feedback_out_7),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond35_kernel_2mm34_out_feedback_valid_out_7),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,44)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,104)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_out_pipeline_valid_out;

    // valid_fanout_reg7(REG,185)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist12_sync_together115_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist32_i_first_cleanup_xor31_kernel_2mm4_q_1(DELAY,396)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_first_cleanup_xor31_kernel_2mm4_q_1_q <= '0;
        end
        else
        begin
            redist32_i_first_cleanup_xor31_kernel_2mm4_q_1_q <= $unsigned(i_first_cleanup_xor31_kernel_2mm4_q);
        end
    end

    // c_kernel_2mm_A_local_pmem(CONSTANT,41)
    assign c_kernel_2mm_A_local_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx192_kernel_2mm0_upper_bits_x_merged_bit_select(BITSELECT,357)@3
    assign i_arrayidx192_kernel_2mm0_upper_bits_x_merged_bit_select_b = c_kernel_2mm_A_local_pmem_q[63:9];
    assign i_arrayidx192_kernel_2mm0_upper_bits_x_merged_bit_select_c = c_kernel_2mm_A_local_pmem_q[8:0];

    // c_i32_080(CONSTANT,37)
    assign c_i32_080_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg4(REG,182)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist12_sync_together115_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg14(REG,192)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist12_sync_together115_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist30_i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_out_data_out_2(DELAY,394)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist30_i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_out_data_out_2_q <= $unsigned(redist29_i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_out_data_out_1_q);
        end
    end

    // c_i32_181(CONSTANT,38)
    assign c_i32_181_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_kernel_2mm28(ADD,63)@3
    assign i_inc_kernel_2mm28_a = {1'b0, i_llvm_fpga_pop_i32_k_038_pop25_kernel_2mm12_out_data_out};
    assign i_inc_kernel_2mm28_b = {1'b0, c_i32_181_q};
    assign i_inc_kernel_2mm28_o = $unsigned(i_inc_kernel_2mm28_a) + $unsigned(i_inc_kernel_2mm28_b);
    assign i_inc_kernel_2mm28_q = i_inc_kernel_2mm28_o[32:0];

    // bgTrunc_i_inc_kernel_2mm28_sel_x(BITSELECT,110)@3
    assign bgTrunc_i_inc_kernel_2mm28_sel_x_b = i_inc_kernel_2mm28_q[31:0];

    // i_llvm_fpga_push_i32_k_038_push25_kernel_2mm29(BLACKBOX,87)@3
    // out out_feedback_out_25@20000000
    // out out_feedback_valid_out_25@20000000
    kernel_2mm_i_llvm_fpga_push_i32_k_038_push25_0 thei_llvm_fpga_push_i32_k_038_push25_kernel_2mm29 (
        .in_data_in(bgTrunc_i_inc_kernel_2mm28_sel_x_b),
        .in_feedback_stall_in_25(i_llvm_fpga_pop_i32_k_038_pop25_kernel_2mm12_out_feedback_stall_out_25),
        .in_keep_going25(redist30_i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_25(i_llvm_fpga_push_i32_k_038_push25_kernel_2mm29_out_feedback_out_25),
        .out_feedback_valid_out_25(i_llvm_fpga_push_i32_k_038_push25_kernel_2mm29_out_feedback_valid_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together115_aunroll_x_in_c0_eni10_1_tpl_2(DELAY,365)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together115_aunroll_x_in_c0_eni10_1_tpl_2_q <= '0;
        end
        else
        begin
            redist1_sync_together115_aunroll_x_in_c0_eni10_1_tpl_2_q <= $unsigned(redist0_sync_together115_aunroll_x_in_c0_eni10_1_tpl_1_q);
        end
    end

    // i_llvm_fpga_pop_i32_k_038_pop25_kernel_2mm12(BLACKBOX,74)@3
    // out out_feedback_stall_out_25@20000000
    kernel_2mm_i_llvm_fpga_pop_i32_k_038_pop25_0 thei_llvm_fpga_pop_i32_k_038_pop25_kernel_2mm12 (
        .in_data_in(c_i32_080_q),
        .in_dir(redist1_sync_together115_aunroll_x_in_c0_eni10_1_tpl_2_q),
        .in_feedback_in_25(i_llvm_fpga_push_i32_k_038_push25_kernel_2mm29_out_feedback_out_25),
        .in_feedback_valid_in_25(i_llvm_fpga_push_i32_k_038_push25_kernel_2mm29_out_feedback_valid_out_25),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_k_038_pop25_kernel_2mm12_out_data_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_i32_k_038_pop25_kernel_2mm12_out_feedback_stall_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom18_kernel_2mm13_sel_x(BITSELECT,170)@3
    assign i_idxprom18_kernel_2mm13_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_k_038_pop25_kernel_2mm12_out_data_out[31:0]};

    // i_idxprom18_kernel_2mm13_vt_select_31(BITSELECT,62)@3
    assign i_idxprom18_kernel_2mm13_vt_select_31_b = i_idxprom18_kernel_2mm13_sel_x_b[31:0];

    // i_idxprom18_kernel_2mm13_vt_join(BITJOIN,61)@3
    assign i_idxprom18_kernel_2mm13_vt_join_q = {c_i32_080_q, i_idxprom18_kernel_2mm13_vt_select_31_b};

    // i_arrayidx192_kernel_2mm0_dupName_3_trunc_sel_x(BITSELECT,139)@3
    assign i_arrayidx192_kernel_2mm0_dupName_3_trunc_sel_x_b = i_idxprom18_kernel_2mm13_vt_join_q[8:0];

    // i_arrayidx192_kernel_2mm0_narrow_x(BITSELECT,122)@3
    assign i_arrayidx192_kernel_2mm0_narrow_x_b = i_arrayidx192_kernel_2mm0_dupName_3_trunc_sel_x_b[6:0];

    // i_arrayidx192_kernel_2mm0_shift_join_x(BITJOIN,123)@3
    assign i_arrayidx192_kernel_2mm0_shift_join_x_q = {i_arrayidx192_kernel_2mm0_narrow_x_b, i_arrayidx192_kernel_2mm16_vt_const_1_q};

    // i_arrayidx192_kernel_2mm0_mult_multconst_x(CONSTANT,134)
    assign i_arrayidx192_kernel_2mm0_mult_multconst_x_q = $unsigned(3'b000);

    // valid_fanout_reg5(REG,183)@1 + 1
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

    // valid_fanout_reg6(REG,184)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist12_sync_together115_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist24_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_1(DELAY,388)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_1_q <= '0;
        end
        else
        begin
            redist24_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out);
        end
    end

    // i_llvm_fpga_push_i64_idxprom62_push31_kernel_2mm15(BLACKBOX,91)@3
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    kernel_2mm_i_llvm_fpga_push_i64_idxprom62_push31_0 thei_llvm_fpga_push_i64_idxprom62_push31_kernel_2mm15 (
        .in_data_in(redist24_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_1_q),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_feedback_stall_out_31),
        .in_keep_going25(redist30_i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_i64_idxprom62_push31_kernel_2mm15_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_i64_idxprom62_push31_kernel_2mm15_out_feedback_valid_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together115_aunroll_x_in_c0_eni10_2_tpl_1(DELAY,367)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together115_aunroll_x_in_c0_eni10_2_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together115_aunroll_x_in_c0_eni10_2_tpl_1_q <= $unsigned(in_c0_eni10_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14(BLACKBOX,78)@2
    // out out_feedback_stall_out_31@20000000
    kernel_2mm_i_llvm_fpga_pop_i64_idxprom62_pop31_0 thei_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14 (
        .in_data_in(redist3_sync_together115_aunroll_x_in_c0_eni10_2_tpl_1_q),
        .in_dir(redist0_sync_together115_aunroll_x_in_c0_eni10_1_tpl_1_q),
        .in_feedback_in_31(i_llvm_fpga_push_i64_idxprom62_push31_kernel_2mm15_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_i64_idxprom62_push31_kernel_2mm15_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_feedback_stall_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx192_kernel_2mm0_dupName_0_trunc_sel_x(BITSELECT,136)@2
    assign i_arrayidx192_kernel_2mm0_dupName_0_trunc_sel_x_b = i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out[8:0];

    // addsumAHighB_uid253_i_arrayidx192_kernel_2mm0_mult_x(ADD,252)@2
    assign addsumAHighB_uid253_i_arrayidx192_kernel_2mm0_mult_x_a = {1'b0, i_arrayidx192_kernel_2mm0_dupName_0_trunc_sel_x_b};
    assign addsumAHighB_uid253_i_arrayidx192_kernel_2mm0_mult_x_b = {3'b000, lowRangeB_uid251_i_arrayidx192_kernel_2mm0_mult_x_merged_bit_select_c};
    assign addsumAHighB_uid253_i_arrayidx192_kernel_2mm0_mult_x_o = $unsigned(addsumAHighB_uid253_i_arrayidx192_kernel_2mm0_mult_x_a) + $unsigned(addsumAHighB_uid253_i_arrayidx192_kernel_2mm0_mult_x_b);
    assign addsumAHighB_uid253_i_arrayidx192_kernel_2mm0_mult_x_q = addsumAHighB_uid253_i_arrayidx192_kernel_2mm0_mult_x_o[9:0];

    // lowRangeB_uid251_i_arrayidx192_kernel_2mm0_mult_x_merged_bit_select(BITSELECT,363)@2
    assign lowRangeB_uid251_i_arrayidx192_kernel_2mm0_mult_x_merged_bit_select_b = i_arrayidx192_kernel_2mm0_dupName_0_trunc_sel_x_b[1:0];
    assign lowRangeB_uid251_i_arrayidx192_kernel_2mm0_mult_x_merged_bit_select_c = i_arrayidx192_kernel_2mm0_dupName_0_trunc_sel_x_b[8:2];

    // add_uid254_i_arrayidx192_kernel_2mm0_mult_x(BITJOIN,253)@2
    assign add_uid254_i_arrayidx192_kernel_2mm0_mult_x_q = {addsumAHighB_uid253_i_arrayidx192_kernel_2mm0_mult_x_q, lowRangeB_uid251_i_arrayidx192_kernel_2mm0_mult_x_merged_bit_select_b};

    // sR_mergedSignalTM_uid259_i_arrayidx192_kernel_2mm0_mult_x(BITJOIN,258)@2
    assign sR_mergedSignalTM_uid259_i_arrayidx192_kernel_2mm0_mult_x_q = {add_uid254_i_arrayidx192_kernel_2mm0_mult_x_q, i_arrayidx192_kernel_2mm0_mult_multconst_x_q};

    // i_arrayidx192_kernel_2mm0_mult_extender_x(BITJOIN,133)@2
    assign i_arrayidx192_kernel_2mm0_mult_extender_x_q = {i_arrayidx192_kernel_2mm0_mult_multconst_x_q, sR_mergedSignalTM_uid259_i_arrayidx192_kernel_2mm0_mult_x_q};

    // i_arrayidx192_kernel_2mm0_dupName_1_trunc_sel_x(BITSELECT,137)@2
    assign i_arrayidx192_kernel_2mm0_dupName_1_trunc_sel_x_b = i_arrayidx192_kernel_2mm0_mult_extender_x_q[8:0];

    // redist20_i_arrayidx192_kernel_2mm0_dupName_1_trunc_sel_x_b_1(DELAY,384)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_arrayidx192_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist20_i_arrayidx192_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx192_kernel_2mm0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx192_kernel_2mm0_add_x(ADD,117)@3
    assign i_arrayidx192_kernel_2mm0_add_x_a = {1'b0, i_arrayidx192_kernel_2mm0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx192_kernel_2mm0_add_x_b = {1'b0, redist20_i_arrayidx192_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx192_kernel_2mm0_add_x_o = $unsigned(i_arrayidx192_kernel_2mm0_add_x_a) + $unsigned(i_arrayidx192_kernel_2mm0_add_x_b);
    assign i_arrayidx192_kernel_2mm0_add_x_q = i_arrayidx192_kernel_2mm0_add_x_o[9:0];

    // i_arrayidx192_kernel_2mm0_dupName_2_trunc_sel_x(BITSELECT,138)@3
    assign i_arrayidx192_kernel_2mm0_dupName_2_trunc_sel_x_b = i_arrayidx192_kernel_2mm0_add_x_q[8:0];

    // i_arrayidx192_kernel_2mm0_dupName_0_add_x(ADD,127)@3
    assign i_arrayidx192_kernel_2mm0_dupName_0_add_x_a = {1'b0, i_arrayidx192_kernel_2mm0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx192_kernel_2mm0_dupName_0_add_x_b = {1'b0, i_arrayidx192_kernel_2mm0_shift_join_x_q};
    assign i_arrayidx192_kernel_2mm0_dupName_0_add_x_o = $unsigned(i_arrayidx192_kernel_2mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx192_kernel_2mm0_dupName_0_add_x_b);
    assign i_arrayidx192_kernel_2mm0_dupName_0_add_x_q = i_arrayidx192_kernel_2mm0_dupName_0_add_x_o[9:0];

    // i_arrayidx192_kernel_2mm0_dupName_5_trunc_sel_x(BITSELECT,140)@3
    assign i_arrayidx192_kernel_2mm0_dupName_5_trunc_sel_x_b = i_arrayidx192_kernel_2mm0_dupName_0_add_x_q[8:0];

    // i_arrayidx192_kernel_2mm0_append_upper_bits_x(BITJOIN,118)@3
    assign i_arrayidx192_kernel_2mm0_append_upper_bits_x_q = {i_arrayidx192_kernel_2mm0_upper_bits_x_merged_bit_select_b, i_arrayidx192_kernel_2mm0_dupName_5_trunc_sel_x_b};

    // i_arrayidx192_kernel_2mm16_vt_select_63(BITSELECT,48)@3
    assign i_arrayidx192_kernel_2mm16_vt_select_63_b = i_arrayidx192_kernel_2mm0_append_upper_bits_x_q[63:2];

    // i_arrayidx192_kernel_2mm16_vt_const_1(CONSTANT,46)
    assign i_arrayidx192_kernel_2mm16_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx192_kernel_2mm16_vt_join(BITJOIN,47)@3
    assign i_arrayidx192_kernel_2mm16_vt_join_q = {i_arrayidx192_kernel_2mm16_vt_select_63_b, i_arrayidx192_kernel_2mm16_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_kernel_2mm7_kernel_2mm17(BLACKBOX,66)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_kernel_2mm7_kernel_2mm_avm_address@20000000
    // out out_unnamed_kernel_2mm7_kernel_2mm_avm_burstcount@20000000
    // out out_unnamed_kernel_2mm7_kernel_2mm_avm_byteenable@20000000
    // out out_unnamed_kernel_2mm7_kernel_2mm_avm_enable@20000000
    // out out_unnamed_kernel_2mm7_kernel_2mm_avm_read@20000000
    // out out_unnamed_kernel_2mm7_kernel_2mm_avm_write@20000000
    // out out_unnamed_kernel_2mm7_kernel_2mm_avm_writedata@20000000
    kernel_2mm_i_llvm_fpga_mem_unnamed_7_kernel_2mm0 thei_llvm_fpga_mem_unnamed_kernel_2mm7_kernel_2mm17 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx192_kernel_2mm16_vt_join_q),
        .in_i_predicate(redist32_i_first_cleanup_xor31_kernel_2mm4_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_unnamed_kernel_2mm7_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm7_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm7_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm7_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm7_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm7_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm7_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm7_kernel_2mm_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_kernel_2mm7_kernel_2mm17_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_kernel_2mm7_kernel_2mm_avm_address(i_llvm_fpga_mem_unnamed_kernel_2mm7_kernel_2mm17_out_unnamed_kernel_2mm7_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm7_kernel_2mm_avm_burstcount(i_llvm_fpga_mem_unnamed_kernel_2mm7_kernel_2mm17_out_unnamed_kernel_2mm7_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm7_kernel_2mm_avm_byteenable(i_llvm_fpga_mem_unnamed_kernel_2mm7_kernel_2mm17_out_unnamed_kernel_2mm7_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm7_kernel_2mm_avm_enable(i_llvm_fpga_mem_unnamed_kernel_2mm7_kernel_2mm17_out_unnamed_kernel_2mm7_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm7_kernel_2mm_avm_read(i_llvm_fpga_mem_unnamed_kernel_2mm7_kernel_2mm17_out_unnamed_kernel_2mm7_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm7_kernel_2mm_avm_write(i_llvm_fpga_mem_unnamed_kernel_2mm7_kernel_2mm17_out_unnamed_kernel_2mm7_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm7_kernel_2mm_avm_writedata(i_llvm_fpga_mem_unnamed_kernel_2mm7_kernel_2mm17_out_unnamed_kernel_2mm7_kernel_2mm_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,115)
    assign out_unnamed_kernel_2mm7_kernel_2mm_avm_address = i_llvm_fpga_mem_unnamed_kernel_2mm7_kernel_2mm17_out_unnamed_kernel_2mm7_kernel_2mm_avm_address;
    assign out_unnamed_kernel_2mm7_kernel_2mm_avm_enable = i_llvm_fpga_mem_unnamed_kernel_2mm7_kernel_2mm17_out_unnamed_kernel_2mm7_kernel_2mm_avm_enable;
    assign out_unnamed_kernel_2mm7_kernel_2mm_avm_read = i_llvm_fpga_mem_unnamed_kernel_2mm7_kernel_2mm17_out_unnamed_kernel_2mm7_kernel_2mm_avm_read;
    assign out_unnamed_kernel_2mm7_kernel_2mm_avm_write = i_llvm_fpga_mem_unnamed_kernel_2mm7_kernel_2mm17_out_unnamed_kernel_2mm7_kernel_2mm_avm_write;
    assign out_unnamed_kernel_2mm7_kernel_2mm_avm_writedata = i_llvm_fpga_mem_unnamed_kernel_2mm7_kernel_2mm17_out_unnamed_kernel_2mm7_kernel_2mm_avm_writedata;
    assign out_unnamed_kernel_2mm7_kernel_2mm_avm_byteenable = i_llvm_fpga_mem_unnamed_kernel_2mm7_kernel_2mm17_out_unnamed_kernel_2mm7_kernel_2mm_avm_byteenable;
    assign out_unnamed_kernel_2mm7_kernel_2mm_avm_burstcount = i_llvm_fpga_mem_unnamed_kernel_2mm7_kernel_2mm17_out_unnamed_kernel_2mm7_kernel_2mm_avm_burstcount;

    // redist13_sync_together115_aunroll_x_in_i_valid_4(DELAY,377)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together115_aunroll_x_in_i_valid_4_delay_0 <= '0;
            redist13_sync_together115_aunroll_x_in_i_valid_4_delay_1 <= '0;
            redist13_sync_together115_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist13_sync_together115_aunroll_x_in_i_valid_4_delay_0 <= $unsigned(redist12_sync_together115_aunroll_x_in_i_valid_1_q);
            redist13_sync_together115_aunroll_x_in_i_valid_4_delay_1 <= redist13_sync_together115_aunroll_x_in_i_valid_4_delay_0;
            redist13_sync_together115_aunroll_x_in_i_valid_4_q <= redist13_sync_together115_aunroll_x_in_i_valid_4_delay_1;
        end
    end

    // valid_fanout_reg11(REG,189)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist13_sync_together115_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist33_i_first_cleanup_xor31_kernel_2mm4_q_4(DELAY,397)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_first_cleanup_xor31_kernel_2mm4_q_4_delay_0 <= '0;
            redist33_i_first_cleanup_xor31_kernel_2mm4_q_4_delay_1 <= '0;
            redist33_i_first_cleanup_xor31_kernel_2mm4_q_4_q <= '0;
        end
        else
        begin
            redist33_i_first_cleanup_xor31_kernel_2mm4_q_4_delay_0 <= $unsigned(redist32_i_first_cleanup_xor31_kernel_2mm4_q_1_q);
            redist33_i_first_cleanup_xor31_kernel_2mm4_q_4_delay_1 <= redist33_i_first_cleanup_xor31_kernel_2mm4_q_4_delay_0;
            redist33_i_first_cleanup_xor31_kernel_2mm4_q_4_q <= redist33_i_first_cleanup_xor31_kernel_2mm4_q_4_delay_1;
        end
    end

    // c_kernel_2mm_B_local_pmem(CONSTANT,42)
    assign c_kernel_2mm_B_local_pmem_q = $unsigned(64'b0100000001000010000000000000000000000000000000000000000000000000);

    // i_arrayidx233_kernel_2mm0_upper_bits_x_merged_bit_select(BITSELECT,358)@6
    assign i_arrayidx233_kernel_2mm0_upper_bits_x_merged_bit_select_b = c_kernel_2mm_B_local_pmem_q[63:9];
    assign i_arrayidx233_kernel_2mm0_upper_bits_x_merged_bit_select_c = c_kernel_2mm_B_local_pmem_q[8:0];

    // valid_fanout_reg9(REG,187)@1 + 1
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

    // valid_fanout_reg10(REG,188)@1 + 1
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

    // i_llvm_fpga_push_i64_idxprom1063_push32_kernel_2mm21(BLACKBOX,90)@2
    // out out_feedback_out_32@20000000
    // out out_feedback_valid_out_32@20000000
    kernel_2mm_i_llvm_fpga_push_i64_idxprom1063_push32_0 thei_llvm_fpga_push_i64_idxprom1063_push32_kernel_2mm21 (
        .in_data_in(i_llvm_fpga_pop_i64_idxprom1063_pop32_kernel_2mm20_out_data_out),
        .in_feedback_stall_in_32(i_llvm_fpga_pop_i64_idxprom1063_pop32_kernel_2mm20_out_feedback_stall_out_32),
        .in_keep_going25(redist29_i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_32(i_llvm_fpga_push_i64_idxprom1063_push32_kernel_2mm21_out_feedback_out_32),
        .out_feedback_valid_out_32(i_llvm_fpga_push_i64_idxprom1063_push32_kernel_2mm21_out_feedback_valid_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together115_aunroll_x_in_c0_eni10_3_tpl_1(DELAY,368)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together115_aunroll_x_in_c0_eni10_3_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together115_aunroll_x_in_c0_eni10_3_tpl_1_q <= $unsigned(in_c0_eni10_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i64_idxprom1063_pop32_kernel_2mm20(BLACKBOX,77)@2
    // out out_feedback_stall_out_32@20000000
    kernel_2mm_i_llvm_fpga_pop_i64_idxprom1063_pop32_0 thei_llvm_fpga_pop_i64_idxprom1063_pop32_kernel_2mm20 (
        .in_data_in(redist4_sync_together115_aunroll_x_in_c0_eni10_3_tpl_1_q),
        .in_dir(redist0_sync_together115_aunroll_x_in_c0_eni10_1_tpl_1_q),
        .in_feedback_in_32(i_llvm_fpga_push_i64_idxprom1063_push32_kernel_2mm21_out_feedback_out_32),
        .in_feedback_valid_in_32(i_llvm_fpga_push_i64_idxprom1063_push32_kernel_2mm21_out_feedback_valid_out_32),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i64_idxprom1063_pop32_kernel_2mm20_out_data_out),
        .out_feedback_stall_out_32(i_llvm_fpga_pop_i64_idxprom1063_pop32_kernel_2mm20_out_feedback_stall_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx233_kernel_2mm0_dupName_3_trunc_sel_x(BITSELECT,163)@2
    assign i_arrayidx233_kernel_2mm0_dupName_3_trunc_sel_x_b = i_llvm_fpga_pop_i64_idxprom1063_pop32_kernel_2mm20_out_data_out[8:0];

    // i_arrayidx233_kernel_2mm0_narrow_x(BITSELECT,146)@2
    assign i_arrayidx233_kernel_2mm0_narrow_x_b = i_arrayidx233_kernel_2mm0_dupName_3_trunc_sel_x_b[6:0];

    // redist18_i_arrayidx233_kernel_2mm0_narrow_x_b_4(DELAY,382)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_arrayidx233_kernel_2mm0_narrow_x_b_4_delay_0 <= '0;
            redist18_i_arrayidx233_kernel_2mm0_narrow_x_b_4_delay_1 <= '0;
            redist18_i_arrayidx233_kernel_2mm0_narrow_x_b_4_delay_2 <= '0;
            redist18_i_arrayidx233_kernel_2mm0_narrow_x_b_4_q <= '0;
        end
        else
        begin
            redist18_i_arrayidx233_kernel_2mm0_narrow_x_b_4_delay_0 <= $unsigned(i_arrayidx233_kernel_2mm0_narrow_x_b);
            redist18_i_arrayidx233_kernel_2mm0_narrow_x_b_4_delay_1 <= redist18_i_arrayidx233_kernel_2mm0_narrow_x_b_4_delay_0;
            redist18_i_arrayidx233_kernel_2mm0_narrow_x_b_4_delay_2 <= redist18_i_arrayidx233_kernel_2mm0_narrow_x_b_4_delay_1;
            redist18_i_arrayidx233_kernel_2mm0_narrow_x_b_4_q <= redist18_i_arrayidx233_kernel_2mm0_narrow_x_b_4_delay_2;
        end
    end

    // i_arrayidx233_kernel_2mm0_shift_join_x(BITJOIN,147)@6
    assign i_arrayidx233_kernel_2mm0_shift_join_x_q = {redist18_i_arrayidx233_kernel_2mm0_narrow_x_b_4_q, i_arrayidx192_kernel_2mm16_vt_const_1_q};

    // highBBits_uid298_i_arrayidx233_kernel_2mm0_mult_x(BITSELECT,297)@5
    assign highBBits_uid298_i_arrayidx233_kernel_2mm0_mult_x_b = redist19_i_arrayidx192_kernel_2mm0_dupName_3_trunc_sel_x_b_2_q[8:2];

    // redist19_i_arrayidx192_kernel_2mm0_dupName_3_trunc_sel_x_b_2(DELAY,383)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_arrayidx192_kernel_2mm0_dupName_3_trunc_sel_x_b_2_delay_0 <= '0;
            redist19_i_arrayidx192_kernel_2mm0_dupName_3_trunc_sel_x_b_2_q <= '0;
        end
        else
        begin
            redist19_i_arrayidx192_kernel_2mm0_dupName_3_trunc_sel_x_b_2_delay_0 <= $unsigned(i_arrayidx192_kernel_2mm0_dupName_3_trunc_sel_x_b);
            redist19_i_arrayidx192_kernel_2mm0_dupName_3_trunc_sel_x_b_2_q <= redist19_i_arrayidx192_kernel_2mm0_dupName_3_trunc_sel_x_b_2_delay_0;
        end
    end

    // addsumAHighB_uid299_i_arrayidx233_kernel_2mm0_mult_x(ADD,298)@5
    assign addsumAHighB_uid299_i_arrayidx233_kernel_2mm0_mult_x_a = {1'b0, redist19_i_arrayidx192_kernel_2mm0_dupName_3_trunc_sel_x_b_2_q};
    assign addsumAHighB_uid299_i_arrayidx233_kernel_2mm0_mult_x_b = {3'b000, highBBits_uid298_i_arrayidx233_kernel_2mm0_mult_x_b};
    assign addsumAHighB_uid299_i_arrayidx233_kernel_2mm0_mult_x_o = $unsigned(addsumAHighB_uid299_i_arrayidx233_kernel_2mm0_mult_x_a) + $unsigned(addsumAHighB_uid299_i_arrayidx233_kernel_2mm0_mult_x_b);
    assign addsumAHighB_uid299_i_arrayidx233_kernel_2mm0_mult_x_q = addsumAHighB_uid299_i_arrayidx233_kernel_2mm0_mult_x_o[9:0];

    // lowRangeB_uid297_i_arrayidx233_kernel_2mm0_mult_x(BITSELECT,296)@5
    assign lowRangeB_uid297_i_arrayidx233_kernel_2mm0_mult_x_in = redist19_i_arrayidx192_kernel_2mm0_dupName_3_trunc_sel_x_b_2_q[1:0];
    assign lowRangeB_uid297_i_arrayidx233_kernel_2mm0_mult_x_b = lowRangeB_uid297_i_arrayidx233_kernel_2mm0_mult_x_in[1:0];

    // add_uid300_i_arrayidx233_kernel_2mm0_mult_x(BITJOIN,299)@5
    assign add_uid300_i_arrayidx233_kernel_2mm0_mult_x_q = {addsumAHighB_uid299_i_arrayidx233_kernel_2mm0_mult_x_q, lowRangeB_uid297_i_arrayidx233_kernel_2mm0_mult_x_b};

    // sR_mergedSignalTM_uid305_i_arrayidx233_kernel_2mm0_mult_x(BITJOIN,304)@5
    assign sR_mergedSignalTM_uid305_i_arrayidx233_kernel_2mm0_mult_x_q = {add_uid300_i_arrayidx233_kernel_2mm0_mult_x_q, i_arrayidx192_kernel_2mm0_mult_multconst_x_q};

    // i_arrayidx233_kernel_2mm0_mult_extender_x(BITJOIN,157)@5
    assign i_arrayidx233_kernel_2mm0_mult_extender_x_q = {i_arrayidx192_kernel_2mm0_mult_multconst_x_q, sR_mergedSignalTM_uid305_i_arrayidx233_kernel_2mm0_mult_x_q};

    // i_arrayidx233_kernel_2mm0_dupName_1_trunc_sel_x(BITSELECT,161)@5
    assign i_arrayidx233_kernel_2mm0_dupName_1_trunc_sel_x_b = i_arrayidx233_kernel_2mm0_mult_extender_x_q[8:0];

    // redist17_i_arrayidx233_kernel_2mm0_dupName_1_trunc_sel_x_b_1(DELAY,381)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_arrayidx233_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist17_i_arrayidx233_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx233_kernel_2mm0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx233_kernel_2mm0_add_x(ADD,141)@6
    assign i_arrayidx233_kernel_2mm0_add_x_a = {1'b0, i_arrayidx233_kernel_2mm0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx233_kernel_2mm0_add_x_b = {1'b0, redist17_i_arrayidx233_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx233_kernel_2mm0_add_x_o = $unsigned(i_arrayidx233_kernel_2mm0_add_x_a) + $unsigned(i_arrayidx233_kernel_2mm0_add_x_b);
    assign i_arrayidx233_kernel_2mm0_add_x_q = i_arrayidx233_kernel_2mm0_add_x_o[9:0];

    // i_arrayidx233_kernel_2mm0_dupName_2_trunc_sel_x(BITSELECT,162)@6
    assign i_arrayidx233_kernel_2mm0_dupName_2_trunc_sel_x_b = i_arrayidx233_kernel_2mm0_add_x_q[8:0];

    // i_arrayidx233_kernel_2mm0_dupName_0_add_x(ADD,151)@6
    assign i_arrayidx233_kernel_2mm0_dupName_0_add_x_a = {1'b0, i_arrayidx233_kernel_2mm0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx233_kernel_2mm0_dupName_0_add_x_b = {1'b0, i_arrayidx233_kernel_2mm0_shift_join_x_q};
    assign i_arrayidx233_kernel_2mm0_dupName_0_add_x_o = $unsigned(i_arrayidx233_kernel_2mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx233_kernel_2mm0_dupName_0_add_x_b);
    assign i_arrayidx233_kernel_2mm0_dupName_0_add_x_q = i_arrayidx233_kernel_2mm0_dupName_0_add_x_o[9:0];

    // i_arrayidx233_kernel_2mm0_dupName_5_trunc_sel_x(BITSELECT,164)@6
    assign i_arrayidx233_kernel_2mm0_dupName_5_trunc_sel_x_b = i_arrayidx233_kernel_2mm0_dupName_0_add_x_q[8:0];

    // i_arrayidx233_kernel_2mm0_append_upper_bits_x(BITJOIN,142)@6
    assign i_arrayidx233_kernel_2mm0_append_upper_bits_x_q = {i_arrayidx233_kernel_2mm0_upper_bits_x_merged_bit_select_b, i_arrayidx233_kernel_2mm0_dupName_5_trunc_sel_x_b};

    // i_arrayidx233_kernel_2mm22_vt_select_63(BITSELECT,51)@6
    assign i_arrayidx233_kernel_2mm22_vt_select_63_b = i_arrayidx233_kernel_2mm0_append_upper_bits_x_q[63:2];

    // i_arrayidx233_kernel_2mm22_vt_join(BITJOIN,50)@6
    assign i_arrayidx233_kernel_2mm22_vt_join_q = {i_arrayidx233_kernel_2mm22_vt_select_63_b, i_arrayidx192_kernel_2mm16_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_kernel_2mm8_kernel_2mm23(BLACKBOX,67)@6
    // in in_i_stall@20000000
    // out out_o_readdata@10
    // out out_o_stall@9
    // out out_o_valid@10
    // out out_unnamed_kernel_2mm8_kernel_2mm_avm_address@20000000
    // out out_unnamed_kernel_2mm8_kernel_2mm_avm_burstcount@20000000
    // out out_unnamed_kernel_2mm8_kernel_2mm_avm_byteenable@20000000
    // out out_unnamed_kernel_2mm8_kernel_2mm_avm_enable@20000000
    // out out_unnamed_kernel_2mm8_kernel_2mm_avm_read@20000000
    // out out_unnamed_kernel_2mm8_kernel_2mm_avm_write@20000000
    // out out_unnamed_kernel_2mm8_kernel_2mm_avm_writedata@20000000
    kernel_2mm_i_llvm_fpga_mem_unnamed_8_kernel_2mm0 thei_llvm_fpga_mem_unnamed_kernel_2mm8_kernel_2mm23 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx233_kernel_2mm22_vt_join_q),
        .in_i_predicate(redist33_i_first_cleanup_xor31_kernel_2mm4_q_4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg11_q),
        .in_unnamed_kernel_2mm8_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm8_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm8_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm8_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm8_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm8_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm8_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm8_kernel_2mm_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_kernel_2mm8_kernel_2mm23_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_kernel_2mm8_kernel_2mm_avm_address(i_llvm_fpga_mem_unnamed_kernel_2mm8_kernel_2mm23_out_unnamed_kernel_2mm8_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm8_kernel_2mm_avm_burstcount(i_llvm_fpga_mem_unnamed_kernel_2mm8_kernel_2mm23_out_unnamed_kernel_2mm8_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm8_kernel_2mm_avm_byteenable(i_llvm_fpga_mem_unnamed_kernel_2mm8_kernel_2mm23_out_unnamed_kernel_2mm8_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm8_kernel_2mm_avm_enable(i_llvm_fpga_mem_unnamed_kernel_2mm8_kernel_2mm23_out_unnamed_kernel_2mm8_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm8_kernel_2mm_avm_read(i_llvm_fpga_mem_unnamed_kernel_2mm8_kernel_2mm23_out_unnamed_kernel_2mm8_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm8_kernel_2mm_avm_write(i_llvm_fpga_mem_unnamed_kernel_2mm8_kernel_2mm23_out_unnamed_kernel_2mm8_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm8_kernel_2mm_avm_writedata(i_llvm_fpga_mem_unnamed_kernel_2mm8_kernel_2mm23_out_unnamed_kernel_2mm8_kernel_2mm_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,116)
    assign out_unnamed_kernel_2mm8_kernel_2mm_avm_address = i_llvm_fpga_mem_unnamed_kernel_2mm8_kernel_2mm23_out_unnamed_kernel_2mm8_kernel_2mm_avm_address;
    assign out_unnamed_kernel_2mm8_kernel_2mm_avm_enable = i_llvm_fpga_mem_unnamed_kernel_2mm8_kernel_2mm23_out_unnamed_kernel_2mm8_kernel_2mm_avm_enable;
    assign out_unnamed_kernel_2mm8_kernel_2mm_avm_read = i_llvm_fpga_mem_unnamed_kernel_2mm8_kernel_2mm23_out_unnamed_kernel_2mm8_kernel_2mm_avm_read;
    assign out_unnamed_kernel_2mm8_kernel_2mm_avm_write = i_llvm_fpga_mem_unnamed_kernel_2mm8_kernel_2mm23_out_unnamed_kernel_2mm8_kernel_2mm_avm_write;
    assign out_unnamed_kernel_2mm8_kernel_2mm_avm_writedata = i_llvm_fpga_mem_unnamed_kernel_2mm8_kernel_2mm23_out_unnamed_kernel_2mm8_kernel_2mm_avm_writedata;
    assign out_unnamed_kernel_2mm8_kernel_2mm_avm_byteenable = i_llvm_fpga_mem_unnamed_kernel_2mm8_kernel_2mm23_out_unnamed_kernel_2mm8_kernel_2mm_avm_byteenable;
    assign out_unnamed_kernel_2mm8_kernel_2mm_avm_burstcount = i_llvm_fpga_mem_unnamed_kernel_2mm8_kernel_2mm23_out_unnamed_kernel_2mm8_kernel_2mm_avm_burstcount;

    // redist14_sync_together115_aunroll_x_in_i_valid_5(DELAY,378)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together115_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist14_sync_together115_aunroll_x_in_i_valid_5_q <= $unsigned(redist13_sync_together115_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist15_sync_together115_aunroll_x_in_i_valid_11(DELAY,379)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist15_sync_together115_aunroll_x_in_i_valid_11 ( .xin(redist14_sync_together115_aunroll_x_in_i_valid_5_q), .xout(redist15_sync_together115_aunroll_x_in_i_valid_11_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist16_sync_together115_aunroll_x_in_i_valid_12(DELAY,380)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together115_aunroll_x_in_i_valid_12_q <= '0;
        end
        else
        begin
            redist16_sync_together115_aunroll_x_in_i_valid_12_q <= $unsigned(redist15_sync_together115_aunroll_x_in_i_valid_11_q);
        end
    end

    // valid_fanout_reg0(REG,178)@13 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist16_sync_together115_aunroll_x_in_i_valid_12_q);
        end
    end

    // redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_notEnable(LOGICAL,414)
    assign redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_notEnable_q = $unsigned(~ (VCC_q));

    // redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_nor(LOGICAL,415)
    assign redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_nor_q = ~ (redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_notEnable_q | redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_sticky_ena_q);

    // redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_mem_last(CONSTANT,411)
    assign redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_mem_last_q = $unsigned(5'b01010);

    // redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_cmp(LOGICAL,412)
    assign redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_cmp_b = {1'b0, redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_rdcnt_q};
    assign redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_cmp_q = $unsigned(redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_mem_last_q == redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_cmp_b ? 1'b1 : 1'b0);

    // redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_cmpReg(REG,413)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_cmpReg_q <= $unsigned(redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_cmp_q);
        end
    end

    // redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_sticky_ena(REG,416)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_nor_q == 1'b1)
        begin
            redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_sticky_ena_q <= $unsigned(redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_cmpReg_q);
        end
    end

    // redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_enaAnd(LOGICAL,417)
    assign redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_enaAnd_q = redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_sticky_ena_q & VCC_q;

    // redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_rdcnt(COUNTER,409)
    // low=0, high=11, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_rdcnt_i <= 4'd0;
            redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_rdcnt_i == 4'd10)
            begin
                redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_rdcnt_eq <= 1'b0;
            end
            if (redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_rdcnt_eq == 1'b1)
            begin
                redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_rdcnt_i <= $unsigned(redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_rdcnt_i) + $unsigned(4'd5);
            end
            else
            begin
                redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_rdcnt_i <= $unsigned(redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_rdcnt_q = redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_rdcnt_i[3:0];

    // redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_wraddr(REG,410)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_wraddr_q <= $unsigned(4'b1011);
        end
        else
        begin
            redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_wraddr_q <= $unsigned(redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_rdcnt_q);
        end
    end

    // redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_mem(DUALMEM,408)
    assign redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_mem_ia = $unsigned(in_c0_eni10_10_tpl);
    assign redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_mem_aa = redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_wraddr_q;
    assign redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_mem_ab = redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_rdcnt_q;
    assign redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(4),
        .numwords_a(12),
        .width_b(32),
        .widthad_b(4),
        .numwords_b(12),
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
    ) redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_mem_dmem (
        .clocken1(redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_mem_reset0),
        .clock1(clock),
        .address_a(redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_mem_aa),
        .data_a(redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_mem_ab),
        .q_b(redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_mem_iq),
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
    assign redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_mem_q = redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_mem_iq[31:0];

    // redist10_sync_together115_aunroll_x_in_c0_eni10_9_tpl_13(DELAY,374)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist10_sync_together115_aunroll_x_in_c0_eni10_9_tpl_13 ( .xin(in_c0_eni10_9_tpl), .xout(redist10_sync_together115_aunroll_x_in_c0_eni10_9_tpl_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg21(REG,199)@1 + 1
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

    // valid_fanout_reg22(REG,200)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp3765_push34_kernel_2mm48(BLACKBOX,81)@2
    // out out_feedback_out_34@20000000
    // out out_feedback_valid_out_34@20000000
    kernel_2mm_i_llvm_fpga_push_i1_notcmp3765_push34_0 thei_llvm_fpga_push_i1_notcmp3765_push34_kernel_2mm48 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp3765_pop34_kernel_2mm47_out_data_out),
        .in_feedback_stall_in_34(i_llvm_fpga_pop_i1_notcmp3765_pop34_kernel_2mm47_out_feedback_stall_out_34),
        .in_keep_going25(redist29_i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(),
        .out_feedback_out_34(i_llvm_fpga_push_i1_notcmp3765_push34_kernel_2mm48_out_feedback_out_34),
        .out_feedback_valid_out_34(i_llvm_fpga_push_i1_notcmp3765_push34_kernel_2mm48_out_feedback_valid_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_sync_together115_aunroll_x_in_c0_eni10_8_tpl_1(DELAY,373)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together115_aunroll_x_in_c0_eni10_8_tpl_1_q <= '0;
        end
        else
        begin
            redist9_sync_together115_aunroll_x_in_c0_eni10_8_tpl_1_q <= $unsigned(in_c0_eni10_8_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp3765_pop34_kernel_2mm47(BLACKBOX,69)@2
    // out out_feedback_stall_out_34@20000000
    kernel_2mm_i_llvm_fpga_pop_i1_notcmp3765_pop34_0 thei_llvm_fpga_pop_i1_notcmp3765_pop34_kernel_2mm47 (
        .in_data_in(redist9_sync_together115_aunroll_x_in_c0_eni10_8_tpl_1_q),
        .in_dir(redist0_sync_together115_aunroll_x_in_c0_eni10_1_tpl_1_q),
        .in_feedback_in_34(i_llvm_fpga_push_i1_notcmp3765_push34_kernel_2mm48_out_feedback_out_34),
        .in_feedback_valid_in_34(i_llvm_fpga_push_i1_notcmp3765_push34_kernel_2mm48_out_feedback_valid_out_34),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp3765_pop34_kernel_2mm47_out_data_out),
        .out_feedback_stall_out_34(i_llvm_fpga_pop_i1_notcmp3765_pop34_kernel_2mm47_out_feedback_stall_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist28_i_llvm_fpga_pop_i1_notcmp3765_pop34_kernel_2mm47_out_data_out_12(DELAY,392)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist28_i_llvm_fpga_pop_i1_notcmp3765_pop34_kernel_2mm47_out_data_out_12 ( .xin(i_llvm_fpga_pop_i1_notcmp3765_pop34_kernel_2mm47_out_data_out), .xout(redist28_i_llvm_fpga_pop_i1_notcmp3765_pop34_kernel_2mm47_out_data_out_12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_notEnable(LOGICAL,424)
    assign redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_notEnable_q = $unsigned(~ (VCC_q));

    // redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_nor(LOGICAL,425)
    assign redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_nor_q = ~ (redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_notEnable_q | redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_sticky_ena_q);

    // redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_mem_last(CONSTANT,421)
    assign redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_mem_last_q = $unsigned(5'b01001);

    // redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_cmp(LOGICAL,422)
    assign redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_cmp_b = {1'b0, redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_rdcnt_q};
    assign redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_cmp_q = $unsigned(redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_mem_last_q == redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_cmp_b ? 1'b1 : 1'b0);

    // redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_cmpReg(REG,423)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_cmpReg_q <= $unsigned(redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_cmp_q);
        end
    end

    // redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_sticky_ena(REG,426)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_nor_q == 1'b1)
        begin
            redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_sticky_ena_q <= $unsigned(redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_cmpReg_q);
        end
    end

    // redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_enaAnd(LOGICAL,427)
    assign redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_enaAnd_q = redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_sticky_ena_q & VCC_q;

    // redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_rdcnt(COUNTER,419)
    // low=0, high=10, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_rdcnt_i <= 4'd0;
            redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_rdcnt_i == 4'd9)
            begin
                redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_rdcnt_eq <= 1'b0;
            end
            if (redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_rdcnt_eq == 1'b1)
            begin
                redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_rdcnt_i <= $unsigned(redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_rdcnt_i) + $unsigned(4'd6);
            end
            else
            begin
                redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_rdcnt_i <= $unsigned(redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_rdcnt_q = redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_rdcnt_i[3:0];

    // valid_fanout_reg19(REG,197)@1 + 1
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

    // valid_fanout_reg20(REG,198)@1 + 1
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

    // i_llvm_fpga_push_p64i32_arrayidx11164_push33_kernel_2mm46(BLACKBOX,92)@2
    // out out_feedback_out_33@20000000
    // out out_feedback_valid_out_33@20000000
    kernel_2mm_i_llvm_fpga_push_p64i32_arrayidx11164_push33_0 thei_llvm_fpga_push_p64i32_arrayidx11164_push33_kernel_2mm46 (
        .in_data_in(i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out),
        .in_feedback_stall_in_33(i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_feedback_stall_out_33),
        .in_keep_going25(redist29_i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(),
        .out_feedback_out_33(i_llvm_fpga_push_p64i32_arrayidx11164_push33_kernel_2mm46_out_feedback_out_33),
        .out_feedback_valid_out_33(i_llvm_fpga_push_p64i32_arrayidx11164_push33_kernel_2mm46_out_feedback_valid_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_sync_together115_aunroll_x_in_c0_eni10_7_tpl_1(DELAY,372)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together115_aunroll_x_in_c0_eni10_7_tpl_1_q <= '0;
        end
        else
        begin
            redist8_sync_together115_aunroll_x_in_c0_eni10_7_tpl_1_q <= $unsigned(in_c0_eni10_7_tpl);
        end
    end

    // i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45(BLACKBOX,79)@2
    // out out_feedback_stall_out_33@20000000
    kernel_2mm_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_0 thei_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45 (
        .in_data_in(redist8_sync_together115_aunroll_x_in_c0_eni10_7_tpl_1_q),
        .in_dir(redist0_sync_together115_aunroll_x_in_c0_eni10_1_tpl_1_q),
        .in_feedback_in_33(i_llvm_fpga_push_p64i32_arrayidx11164_push33_kernel_2mm46_out_feedback_out_33),
        .in_feedback_valid_in_33(i_llvm_fpga_push_p64i32_arrayidx11164_push33_kernel_2mm46_out_feedback_valid_out_33),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out),
        .out_feedback_stall_out_33(i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_feedback_stall_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_wraddr(REG,420)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_wraddr_q <= $unsigned(4'b1010);
        end
        else
        begin
            redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_wraddr_q <= $unsigned(redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_rdcnt_q);
        end
    end

    // redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_mem(DUALMEM,418)
    assign redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_mem_ia = $unsigned(i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out);
    assign redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_mem_aa = redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_wraddr_q;
    assign redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_mem_ab = redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_rdcnt_q;
    assign redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(4),
        .numwords_a(11),
        .width_b(64),
        .widthad_b(4),
        .numwords_b(11),
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
    ) redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_mem_dmem (
        .clocken1(redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_mem_reset0),
        .clock1(clock),
        .address_a(redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_mem_aa),
        .data_a(redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_mem_ab),
        .q_b(redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_mem_iq),
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
    assign redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_mem_q = redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_mem_iq[63:0];

    // valid_fanout_reg15(REG,193)@1 + 1
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

    // valid_fanout_reg16(REG,194)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp4254_push29_kernel_2mm42(BLACKBOX,82)@2
    // out out_feedback_out_29@20000000
    // out out_feedback_valid_out_29@20000000
    kernel_2mm_i_llvm_fpga_push_i1_notcmp4254_push29_0 thei_llvm_fpga_push_i1_notcmp4254_push29_kernel_2mm42 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp4254_pop29_kernel_2mm41_out_data_out),
        .in_feedback_stall_in_29(i_llvm_fpga_pop_i1_notcmp4254_pop29_kernel_2mm41_out_feedback_stall_out_29),
        .in_keep_going25(redist29_i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(),
        .out_feedback_out_29(i_llvm_fpga_push_i1_notcmp4254_push29_kernel_2mm42_out_feedback_out_29),
        .out_feedback_valid_out_29(i_llvm_fpga_push_i1_notcmp4254_push29_kernel_2mm42_out_feedback_valid_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together115_aunroll_x_in_c0_eni10_5_tpl_1(DELAY,370)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together115_aunroll_x_in_c0_eni10_5_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together115_aunroll_x_in_c0_eni10_5_tpl_1_q <= $unsigned(in_c0_eni10_5_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp4254_pop29_kernel_2mm41(BLACKBOX,70)@2
    // out out_feedback_stall_out_29@20000000
    kernel_2mm_i_llvm_fpga_pop_i1_notcmp4254_pop29_0 thei_llvm_fpga_pop_i1_notcmp4254_pop29_kernel_2mm41 (
        .in_data_in(redist6_sync_together115_aunroll_x_in_c0_eni10_5_tpl_1_q),
        .in_dir(redist0_sync_together115_aunroll_x_in_c0_eni10_1_tpl_1_q),
        .in_feedback_in_29(i_llvm_fpga_push_i1_notcmp4254_push29_kernel_2mm42_out_feedback_out_29),
        .in_feedback_valid_in_29(i_llvm_fpga_push_i1_notcmp4254_push29_kernel_2mm42_out_feedback_valid_out_29),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp4254_pop29_kernel_2mm41_out_data_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_i1_notcmp4254_pop29_kernel_2mm41_out_feedback_stall_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist27_i_llvm_fpga_pop_i1_notcmp4254_pop29_kernel_2mm41_out_data_out_12(DELAY,391)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist27_i_llvm_fpga_pop_i1_notcmp4254_pop29_kernel_2mm41_out_data_out_12 ( .xin(i_llvm_fpga_pop_i1_notcmp4254_pop29_kernel_2mm41_out_data_out), .xout(redist27_i_llvm_fpga_pop_i1_notcmp4254_pop29_kernel_2mm41_out_data_out_12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_masked34_kernel_2mm40(LOGICAL,93)@2 + 1
    assign i_masked34_kernel_2mm40_qi = i_notcmp21_kernel_2mm33_q & i_first_cleanup30_kernel_2mm3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked34_kernel_2mm40_delay ( .xin(i_masked34_kernel_2mm40_qi), .xout(i_masked34_kernel_2mm40_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist22_i_masked34_kernel_2mm40_q_12(DELAY,386)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist22_i_masked34_kernel_2mm40_q_12 ( .xin(i_masked34_kernel_2mm40_q), .xout(redist22_i_masked34_kernel_2mm40_q_12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg12(REG,190)@12 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist15_sync_together115_aunroll_x_in_i_valid_11_q);
        end
    end

    // valid_fanout_reg13(REG,191)@13 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist16_sync_together115_aunroll_x_in_i_valid_12_q);
        end
    end

    // i_llvm_fpga_push_i32_x_037_push26_kernel_2mm27(BLACKBOX,88)@14
    // out out_feedback_out_26@20000000
    // out out_feedback_valid_out_26@20000000
    kernel_2mm_i_llvm_fpga_push_i32_x_037_push26_0 thei_llvm_fpga_push_i32_x_037_push26_kernel_2mm27 (
        .in_data_in(bgTrunc_i_add_kernel_2mm26_sel_x_b),
        .in_feedback_stall_in_26(i_llvm_fpga_pop_i32_x_037_pop26_kernel_2mm25_out_feedback_stall_out_26),
        .in_keep_going25(redist31_i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_out_data_out_13_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_26(i_llvm_fpga_push_i32_x_037_push26_kernel_2mm27_out_feedback_out_26),
        .out_feedback_valid_out_26(i_llvm_fpga_push_i32_x_037_push26_kernel_2mm27_out_feedback_valid_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together115_aunroll_x_in_c0_eni10_1_tpl_12(DELAY,366)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist2_sync_together115_aunroll_x_in_c0_eni10_1_tpl_12 ( .xin(redist1_sync_together115_aunroll_x_in_c0_eni10_1_tpl_2_q), .xout(redist2_sync_together115_aunroll_x_in_c0_eni10_1_tpl_12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_notEnable(LOGICAL,404)
    assign redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_notEnable_q = $unsigned(~ (VCC_q));

    // redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_nor(LOGICAL,405)
    assign redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_nor_q = ~ (redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_notEnable_q | redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_sticky_ena_q);

    // redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_mem_last(CONSTANT,401)
    assign redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_mem_last_q = $unsigned(5'b01001);

    // redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_cmp(LOGICAL,402)
    assign redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_cmp_b = {1'b0, redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_rdcnt_q};
    assign redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_cmp_q = $unsigned(redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_mem_last_q == redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_cmp_b ? 1'b1 : 1'b0);

    // redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_cmpReg(REG,403)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_cmpReg_q <= $unsigned(redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_cmp_q);
        end
    end

    // redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_sticky_ena(REG,406)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_nor_q == 1'b1)
        begin
            redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_sticky_ena_q <= $unsigned(redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_cmpReg_q);
        end
    end

    // redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_enaAnd(LOGICAL,407)
    assign redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_enaAnd_q = redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_sticky_ena_q & VCC_q;

    // redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_rdcnt(COUNTER,399)
    // low=0, high=10, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_rdcnt_i <= 4'd0;
            redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_rdcnt_i == 4'd9)
            begin
                redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_rdcnt_eq <= 1'b0;
            end
            if (redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_rdcnt_eq == 1'b1)
            begin
                redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_rdcnt_i <= $unsigned(redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_rdcnt_i) + $unsigned(4'd6);
            end
            else
            begin
                redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_rdcnt_i <= $unsigned(redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_rdcnt_q = redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_rdcnt_i[3:0];

    // redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_wraddr(REG,400)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_wraddr_q <= $unsigned(4'b1010);
        end
        else
        begin
            redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_wraddr_q <= $unsigned(redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_rdcnt_q);
        end
    end

    // redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_mem(DUALMEM,398)
    assign redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_mem_ia = $unsigned(in_c0_eni10_4_tpl);
    assign redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_mem_aa = redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_wraddr_q;
    assign redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_mem_ab = redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_rdcnt_q;
    assign redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(4),
        .numwords_a(11),
        .width_b(32),
        .widthad_b(4),
        .numwords_b(11),
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
    ) redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_mem_dmem (
        .clocken1(redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_mem_reset0),
        .clock1(clock),
        .address_a(redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_mem_aa),
        .data_a(redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_mem_ab),
        .q_b(redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_mem_iq),
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
    assign redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_mem_q = redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_mem_iq[31:0];

    // i_llvm_fpga_pop_i32_x_037_pop26_kernel_2mm25(BLACKBOX,75)@13
    // out out_feedback_stall_out_26@20000000
    kernel_2mm_i_llvm_fpga_pop_i32_x_037_pop26_0 thei_llvm_fpga_pop_i32_x_037_pop26_kernel_2mm25 (
        .in_data_in(redist5_sync_together115_aunroll_x_in_c0_eni10_4_tpl_12_mem_q),
        .in_dir(redist2_sync_together115_aunroll_x_in_c0_eni10_1_tpl_12_q),
        .in_feedback_in_26(i_llvm_fpga_push_i32_x_037_push26_kernel_2mm27_out_feedback_out_26),
        .in_feedback_valid_in_26(i_llvm_fpga_push_i32_x_037_push26_kernel_2mm27_out_feedback_valid_out_26),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(i_llvm_fpga_pop_i32_x_037_pop26_kernel_2mm25_out_data_out),
        .out_feedback_stall_out_26(i_llvm_fpga_pop_i32_x_037_pop26_kernel_2mm25_out_feedback_stall_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist26_i_llvm_fpga_pop_i32_x_037_pop26_kernel_2mm25_out_data_out_1(DELAY,390)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_pop_i32_x_037_pop26_kernel_2mm25_out_data_out_1_q <= '0;
        end
        else
        begin
            redist26_i_llvm_fpga_pop_i32_x_037_pop26_kernel_2mm25_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_x_037_pop26_kernel_2mm25_out_data_out);
        end
    end

    // i_mul24_kernel_2mm24_bs2_merged_bit_select(BITSELECT,361)@10
    assign i_mul24_kernel_2mm24_bs2_merged_bit_select_b = i_llvm_fpga_mem_unnamed_kernel_2mm8_kernel_2mm23_out_o_readdata[31:18];
    assign i_mul24_kernel_2mm24_bs2_merged_bit_select_c = i_llvm_fpga_mem_unnamed_kernel_2mm8_kernel_2mm23_out_o_readdata[17:0];

    // valid_fanout_reg8(REG,186)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist14_sync_together115_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_alpha4114_kernel_2mm18(BLACKBOX,65)@7
    kernel_2mm_i_llvm_fpga_ffwd_dest_i32_alpha4114_0 thei_llvm_fpga_ffwd_dest_i32_alpha4114_kernel_2mm18 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i32_alpha4114_kernel_2mm18_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul_kernel_2mm19_bs2_merged_bit_select(BITSELECT,359)@7
    assign i_mul_kernel_2mm19_bs2_merged_bit_select_b = i_llvm_fpga_ffwd_dest_i32_alpha4114_kernel_2mm18_out_dest_data_out_0_0[31:18];
    assign i_mul_kernel_2mm19_bs2_merged_bit_select_c = i_llvm_fpga_ffwd_dest_i32_alpha4114_kernel_2mm18_out_dest_data_out_0_0[17:0];

    // i_mul_kernel_2mm19_bs1_merged_bit_select(BITSELECT,360)@7
    assign i_mul_kernel_2mm19_bs1_merged_bit_select_b = i_llvm_fpga_mem_unnamed_kernel_2mm7_kernel_2mm17_out_o_readdata[31:18];
    assign i_mul_kernel_2mm19_bs1_merged_bit_select_c = i_llvm_fpga_mem_unnamed_kernel_2mm7_kernel_2mm17_out_o_readdata[17:0];

    // i_mul_kernel_2mm19_ma3_cma(CHAINMULTADD,356)@7 + 3
    assign i_mul_kernel_2mm19_ma3_cma_reset = ~ (resetn);
    assign i_mul_kernel_2mm19_ma3_cma_ena0 = 1'b1;
    assign i_mul_kernel_2mm19_ma3_cma_ena1 = i_mul_kernel_2mm19_ma3_cma_ena0;
    assign i_mul_kernel_2mm19_ma3_cma_ena2 = i_mul_kernel_2mm19_ma3_cma_ena0;

    assign i_mul_kernel_2mm19_ma3_cma_a0 = i_mul_kernel_2mm19_bs1_merged_bit_select_b;
    assign i_mul_kernel_2mm19_ma3_cma_c0 = i_mul_kernel_2mm19_bs2_merged_bit_select_c;
    assign i_mul_kernel_2mm19_ma3_cma_a1 = i_mul_kernel_2mm19_bs2_merged_bit_select_b;
    assign i_mul_kernel_2mm19_ma3_cma_c1 = i_mul_kernel_2mm19_bs1_merged_bit_select_c;
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
    ) i_mul_kernel_2mm19_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_kernel_2mm19_ma3_cma_ena2, i_mul_kernel_2mm19_ma3_cma_ena1, i_mul_kernel_2mm19_ma3_cma_ena0 }),
        .aclr({ i_mul_kernel_2mm19_ma3_cma_reset, i_mul_kernel_2mm19_ma3_cma_reset }),
        .ay(i_mul_kernel_2mm19_ma3_cma_a1),
        .by(i_mul_kernel_2mm19_ma3_cma_a0),
        .ax(i_mul_kernel_2mm19_ma3_cma_c1),
        .bx(i_mul_kernel_2mm19_ma3_cma_c0),
        .resulta(i_mul_kernel_2mm19_ma3_cma_s0),
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
    i_mul_kernel_2mm19_ma3_cma_delay ( .xin(i_mul_kernel_2mm19_ma3_cma_s0), .xout(i_mul_kernel_2mm19_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_kernel_2mm19_ma3_cma_q = $unsigned(i_mul_kernel_2mm19_ma3_cma_qq[32:0]);

    // i_mul_kernel_2mm19_sums_align_1(BITSHIFT,240)@10
    assign i_mul_kernel_2mm19_sums_align_1_qint = { i_mul_kernel_2mm19_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul_kernel_2mm19_sums_align_1_q = i_mul_kernel_2mm19_sums_align_1_qint[50:0];

    // i_mul_kernel_2mm19_im0_cma(CHAINMULTADD,353)@7 + 3
    assign i_mul_kernel_2mm19_im0_cma_reset = ~ (resetn);
    assign i_mul_kernel_2mm19_im0_cma_ena0 = 1'b1;
    assign i_mul_kernel_2mm19_im0_cma_ena1 = i_mul_kernel_2mm19_im0_cma_ena0;
    assign i_mul_kernel_2mm19_im0_cma_ena2 = i_mul_kernel_2mm19_im0_cma_ena0;

    assign i_mul_kernel_2mm19_im0_cma_a0 = i_mul_kernel_2mm19_bs1_merged_bit_select_b;
    assign i_mul_kernel_2mm19_im0_cma_c0 = i_mul_kernel_2mm19_bs2_merged_bit_select_b;
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
    ) i_mul_kernel_2mm19_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_kernel_2mm19_im0_cma_ena2, i_mul_kernel_2mm19_im0_cma_ena1, i_mul_kernel_2mm19_im0_cma_ena0 }),
        .aclr({ i_mul_kernel_2mm19_im0_cma_reset, i_mul_kernel_2mm19_im0_cma_reset }),
        .ay(i_mul_kernel_2mm19_im0_cma_a0),
        .ax(i_mul_kernel_2mm19_im0_cma_c0),
        .resulta(i_mul_kernel_2mm19_im0_cma_s0),
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
    i_mul_kernel_2mm19_im0_cma_delay ( .xin(i_mul_kernel_2mm19_im0_cma_s0), .xout(i_mul_kernel_2mm19_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_kernel_2mm19_im0_cma_q = $unsigned(i_mul_kernel_2mm19_im0_cma_qq[27:0]);

    // i_mul_kernel_2mm19_im8_cma(CHAINMULTADD,354)@7 + 3
    assign i_mul_kernel_2mm19_im8_cma_reset = ~ (resetn);
    assign i_mul_kernel_2mm19_im8_cma_ena0 = 1'b1;
    assign i_mul_kernel_2mm19_im8_cma_ena1 = i_mul_kernel_2mm19_im8_cma_ena0;
    assign i_mul_kernel_2mm19_im8_cma_ena2 = i_mul_kernel_2mm19_im8_cma_ena0;

    assign i_mul_kernel_2mm19_im8_cma_a0 = i_mul_kernel_2mm19_bs1_merged_bit_select_c;
    assign i_mul_kernel_2mm19_im8_cma_c0 = i_mul_kernel_2mm19_bs2_merged_bit_select_c;
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
    ) i_mul_kernel_2mm19_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_kernel_2mm19_im8_cma_ena2, i_mul_kernel_2mm19_im8_cma_ena1, i_mul_kernel_2mm19_im8_cma_ena0 }),
        .aclr({ i_mul_kernel_2mm19_im8_cma_reset, i_mul_kernel_2mm19_im8_cma_reset }),
        .ay(i_mul_kernel_2mm19_im8_cma_a0),
        .ax(i_mul_kernel_2mm19_im8_cma_c0),
        .resulta(i_mul_kernel_2mm19_im8_cma_s0),
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
    i_mul_kernel_2mm19_im8_cma_delay ( .xin(i_mul_kernel_2mm19_im8_cma_s0), .xout(i_mul_kernel_2mm19_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_kernel_2mm19_im8_cma_q = $unsigned(i_mul_kernel_2mm19_im8_cma_qq[35:0]);

    // i_mul_kernel_2mm19_sums_join_0(BITJOIN,239)@10
    assign i_mul_kernel_2mm19_sums_join_0_q = {i_mul_kernel_2mm19_im0_cma_q, i_mul_kernel_2mm19_im8_cma_q};

    // i_mul_kernel_2mm19_sums_result_add_0_0(ADD,242)@10
    assign i_mul_kernel_2mm19_sums_result_add_0_0_a = {1'b0, i_mul_kernel_2mm19_sums_join_0_q};
    assign i_mul_kernel_2mm19_sums_result_add_0_0_b = {14'b00000000000000, i_mul_kernel_2mm19_sums_align_1_q};
    assign i_mul_kernel_2mm19_sums_result_add_0_0_o = $unsigned(i_mul_kernel_2mm19_sums_result_add_0_0_a) + $unsigned(i_mul_kernel_2mm19_sums_result_add_0_0_b);
    assign i_mul_kernel_2mm19_sums_result_add_0_0_q = i_mul_kernel_2mm19_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul_kernel_2mm19_sel_x(BITSELECT,112)@10
    assign bgTrunc_i_mul_kernel_2mm19_sel_x_in = i_mul_kernel_2mm19_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul_kernel_2mm19_sel_x_b = bgTrunc_i_mul_kernel_2mm19_sel_x_in[31:0];

    // i_mul24_kernel_2mm24_bs1_merged_bit_select(BITSELECT,362)@10
    assign i_mul24_kernel_2mm24_bs1_merged_bit_select_b = bgTrunc_i_mul_kernel_2mm19_sel_x_b[31:18];
    assign i_mul24_kernel_2mm24_bs1_merged_bit_select_c = bgTrunc_i_mul_kernel_2mm19_sel_x_b[17:0];

    // i_mul24_kernel_2mm24_ma3_cma(CHAINMULTADD,355)@10 + 3
    assign i_mul24_kernel_2mm24_ma3_cma_reset = ~ (resetn);
    assign i_mul24_kernel_2mm24_ma3_cma_ena0 = 1'b1;
    assign i_mul24_kernel_2mm24_ma3_cma_ena1 = i_mul24_kernel_2mm24_ma3_cma_ena0;
    assign i_mul24_kernel_2mm24_ma3_cma_ena2 = i_mul24_kernel_2mm24_ma3_cma_ena0;

    assign i_mul24_kernel_2mm24_ma3_cma_a0 = i_mul24_kernel_2mm24_bs1_merged_bit_select_b;
    assign i_mul24_kernel_2mm24_ma3_cma_c0 = i_mul24_kernel_2mm24_bs2_merged_bit_select_c;
    assign i_mul24_kernel_2mm24_ma3_cma_a1 = i_mul24_kernel_2mm24_bs2_merged_bit_select_b;
    assign i_mul24_kernel_2mm24_ma3_cma_c1 = i_mul24_kernel_2mm24_bs1_merged_bit_select_c;
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
    ) i_mul24_kernel_2mm24_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul24_kernel_2mm24_ma3_cma_ena2, i_mul24_kernel_2mm24_ma3_cma_ena1, i_mul24_kernel_2mm24_ma3_cma_ena0 }),
        .aclr({ i_mul24_kernel_2mm24_ma3_cma_reset, i_mul24_kernel_2mm24_ma3_cma_reset }),
        .ay(i_mul24_kernel_2mm24_ma3_cma_a1),
        .by(i_mul24_kernel_2mm24_ma3_cma_a0),
        .ax(i_mul24_kernel_2mm24_ma3_cma_c1),
        .bx(i_mul24_kernel_2mm24_ma3_cma_c0),
        .resulta(i_mul24_kernel_2mm24_ma3_cma_s0),
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
    i_mul24_kernel_2mm24_ma3_cma_delay ( .xin(i_mul24_kernel_2mm24_ma3_cma_s0), .xout(i_mul24_kernel_2mm24_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul24_kernel_2mm24_ma3_cma_q = $unsigned(i_mul24_kernel_2mm24_ma3_cma_qq[32:0]);

    // i_mul24_kernel_2mm24_sums_align_1(BITSHIFT,225)@13
    assign i_mul24_kernel_2mm24_sums_align_1_qint = { i_mul24_kernel_2mm24_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul24_kernel_2mm24_sums_align_1_q = i_mul24_kernel_2mm24_sums_align_1_qint[50:0];

    // i_mul24_kernel_2mm24_im0_cma(CHAINMULTADD,351)@10 + 3
    assign i_mul24_kernel_2mm24_im0_cma_reset = ~ (resetn);
    assign i_mul24_kernel_2mm24_im0_cma_ena0 = 1'b1;
    assign i_mul24_kernel_2mm24_im0_cma_ena1 = i_mul24_kernel_2mm24_im0_cma_ena0;
    assign i_mul24_kernel_2mm24_im0_cma_ena2 = i_mul24_kernel_2mm24_im0_cma_ena0;

    assign i_mul24_kernel_2mm24_im0_cma_a0 = i_mul24_kernel_2mm24_bs1_merged_bit_select_b;
    assign i_mul24_kernel_2mm24_im0_cma_c0 = i_mul24_kernel_2mm24_bs2_merged_bit_select_b;
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
    ) i_mul24_kernel_2mm24_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul24_kernel_2mm24_im0_cma_ena2, i_mul24_kernel_2mm24_im0_cma_ena1, i_mul24_kernel_2mm24_im0_cma_ena0 }),
        .aclr({ i_mul24_kernel_2mm24_im0_cma_reset, i_mul24_kernel_2mm24_im0_cma_reset }),
        .ay(i_mul24_kernel_2mm24_im0_cma_a0),
        .ax(i_mul24_kernel_2mm24_im0_cma_c0),
        .resulta(i_mul24_kernel_2mm24_im0_cma_s0),
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
    i_mul24_kernel_2mm24_im0_cma_delay ( .xin(i_mul24_kernel_2mm24_im0_cma_s0), .xout(i_mul24_kernel_2mm24_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul24_kernel_2mm24_im0_cma_q = $unsigned(i_mul24_kernel_2mm24_im0_cma_qq[27:0]);

    // i_mul24_kernel_2mm24_im8_cma(CHAINMULTADD,352)@10 + 3
    assign i_mul24_kernel_2mm24_im8_cma_reset = ~ (resetn);
    assign i_mul24_kernel_2mm24_im8_cma_ena0 = 1'b1;
    assign i_mul24_kernel_2mm24_im8_cma_ena1 = i_mul24_kernel_2mm24_im8_cma_ena0;
    assign i_mul24_kernel_2mm24_im8_cma_ena2 = i_mul24_kernel_2mm24_im8_cma_ena0;

    assign i_mul24_kernel_2mm24_im8_cma_a0 = i_mul24_kernel_2mm24_bs1_merged_bit_select_c;
    assign i_mul24_kernel_2mm24_im8_cma_c0 = i_mul24_kernel_2mm24_bs2_merged_bit_select_c;
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
    ) i_mul24_kernel_2mm24_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul24_kernel_2mm24_im8_cma_ena2, i_mul24_kernel_2mm24_im8_cma_ena1, i_mul24_kernel_2mm24_im8_cma_ena0 }),
        .aclr({ i_mul24_kernel_2mm24_im8_cma_reset, i_mul24_kernel_2mm24_im8_cma_reset }),
        .ay(i_mul24_kernel_2mm24_im8_cma_a0),
        .ax(i_mul24_kernel_2mm24_im8_cma_c0),
        .resulta(i_mul24_kernel_2mm24_im8_cma_s0),
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
    i_mul24_kernel_2mm24_im8_cma_delay ( .xin(i_mul24_kernel_2mm24_im8_cma_s0), .xout(i_mul24_kernel_2mm24_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul24_kernel_2mm24_im8_cma_q = $unsigned(i_mul24_kernel_2mm24_im8_cma_qq[35:0]);

    // i_mul24_kernel_2mm24_sums_join_0(BITJOIN,224)@13
    assign i_mul24_kernel_2mm24_sums_join_0_q = {i_mul24_kernel_2mm24_im0_cma_q, i_mul24_kernel_2mm24_im8_cma_q};

    // i_mul24_kernel_2mm24_sums_result_add_0_0(ADD,227)@13
    assign i_mul24_kernel_2mm24_sums_result_add_0_0_a = {1'b0, i_mul24_kernel_2mm24_sums_join_0_q};
    assign i_mul24_kernel_2mm24_sums_result_add_0_0_b = {14'b00000000000000, i_mul24_kernel_2mm24_sums_align_1_q};
    assign i_mul24_kernel_2mm24_sums_result_add_0_0_o = $unsigned(i_mul24_kernel_2mm24_sums_result_add_0_0_a) + $unsigned(i_mul24_kernel_2mm24_sums_result_add_0_0_b);
    assign i_mul24_kernel_2mm24_sums_result_add_0_0_q = i_mul24_kernel_2mm24_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul24_kernel_2mm24_sel_x(BITSELECT,111)@13
    assign bgTrunc_i_mul24_kernel_2mm24_sel_x_in = i_mul24_kernel_2mm24_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul24_kernel_2mm24_sel_x_b = bgTrunc_i_mul24_kernel_2mm24_sel_x_in[31:0];

    // redist21_bgTrunc_i_mul24_kernel_2mm24_sel_x_b_1(DELAY,385)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_bgTrunc_i_mul24_kernel_2mm24_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist21_bgTrunc_i_mul24_kernel_2mm24_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul24_kernel_2mm24_sel_x_b);
        end
    end

    // i_add_kernel_2mm26(ADD,45)@14
    assign i_add_kernel_2mm26_a = {1'b0, redist21_bgTrunc_i_mul24_kernel_2mm24_sel_x_b_1_q};
    assign i_add_kernel_2mm26_b = {1'b0, redist26_i_llvm_fpga_pop_i32_x_037_pop26_kernel_2mm25_out_data_out_1_q};
    assign i_add_kernel_2mm26_o = $unsigned(i_add_kernel_2mm26_a) + $unsigned(i_add_kernel_2mm26_b);
    assign i_add_kernel_2mm26_q = i_add_kernel_2mm26_o[32:0];

    // bgTrunc_i_add_kernel_2mm26_sel_x(BITSELECT,108)@14
    assign bgTrunc_i_add_kernel_2mm26_sel_x_b = i_add_kernel_2mm26_q[31:0];

    // redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_notEnable(LOGICAL,434)
    assign redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_notEnable_q = $unsigned(~ (VCC_q));

    // redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_nor(LOGICAL,435)
    assign redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_nor_q = ~ (redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_notEnable_q | redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_sticky_ena_q);

    // redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_mem_last(CONSTANT,431)
    assign redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_mem_last_q = $unsigned(5'b01000);

    // redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_cmp(LOGICAL,432)
    assign redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_cmp_b = {1'b0, redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_rdcnt_q};
    assign redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_cmp_q = $unsigned(redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_mem_last_q == redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_cmp_b ? 1'b1 : 1'b0);

    // redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_cmpReg(REG,433)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_cmpReg_q <= $unsigned(redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_cmp_q);
        end
    end

    // redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_sticky_ena(REG,436)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_nor_q == 1'b1)
        begin
            redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_sticky_ena_q <= $unsigned(redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_cmpReg_q);
        end
    end

    // redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_enaAnd(LOGICAL,437)
    assign redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_enaAnd_q = redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_sticky_ena_q & VCC_q;

    // redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_rdcnt(COUNTER,429)
    // low=0, high=9, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_rdcnt_i <= 4'd0;
            redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_rdcnt_i == 4'd8)
            begin
                redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_rdcnt_eq <= 1'b0;
            end
            if (redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_rdcnt_eq == 1'b1)
            begin
                redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_rdcnt_i <= $unsigned(redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_rdcnt_i) + $unsigned(4'd7);
            end
            else
            begin
                redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_rdcnt_i <= $unsigned(redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_rdcnt_q = redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_rdcnt_i[3:0];

    // redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_wraddr(REG,430)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_wraddr_q <= $unsigned(4'b1001);
        end
        else
        begin
            redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_wraddr_q <= $unsigned(redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_rdcnt_q);
        end
    end

    // redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_mem(DUALMEM,428)
    assign redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_mem_ia = $unsigned(redist24_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_1_q);
    assign redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_mem_aa = redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_wraddr_q;
    assign redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_mem_ab = redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_rdcnt_q;
    assign redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(4),
        .numwords_a(10),
        .width_b(64),
        .widthad_b(4),
        .numwords_b(10),
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
    ) redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_mem_dmem (
        .clocken1(redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_mem_reset0),
        .clock1(clock),
        .address_a(redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_mem_aa),
        .data_a(redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_mem_ab),
        .q_b(redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_mem_iq),
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
    assign redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_mem_q = redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_mem_iq[63:0];

    // redist31_i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_out_data_out_13(DELAY,395)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist31_i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_out_data_out_13 ( .xin(redist30_i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_out_data_out_2_q), .xout(redist31_i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_out_data_out_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,176)@14
    assign out_c0_exi9134_0_tpl = GND_q;
    assign out_c0_exi9134_1_tpl = redist31_i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_out_data_out_13_q;
    assign out_c0_exi9134_2_tpl = redist25_i_llvm_fpga_pop_i64_idxprom62_pop31_kernel_2mm14_out_data_out_12_mem_q;
    assign out_c0_exi9134_3_tpl = bgTrunc_i_add_kernel_2mm26_sel_x_b;
    assign out_c0_exi9134_4_tpl = redist22_i_masked34_kernel_2mm40_q_12_q;
    assign out_c0_exi9134_5_tpl = redist27_i_llvm_fpga_pop_i1_notcmp4254_pop29_kernel_2mm41_out_data_out_12_q;
    assign out_c0_exi9134_6_tpl = redist23_i_llvm_fpga_pop_p64i32_arrayidx11164_pop33_kernel_2mm45_out_data_out_12_mem_q;
    assign out_c0_exi9134_7_tpl = redist28_i_llvm_fpga_pop_i1_notcmp3765_pop34_kernel_2mm47_out_data_out_12_q;
    assign out_c0_exi9134_8_tpl = redist10_sync_together115_aunroll_x_in_c0_eni10_9_tpl_13_q;
    assign out_c0_exi9134_9_tpl = redist11_sync_together115_aunroll_x_in_c0_eni10_10_tpl_13_mem_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_kernel_2mm1 = GND_q;

    // i_llvm_fpga_pop_i32_i_040_pop1558_pop30_kernel_2mm43(BLACKBOX,73)@2
    // out out_feedback_stall_out_30@20000000
    kernel_2mm_i_llvm_fpga_pop_i32_i_040_pop1558_pop30_0 thei_llvm_fpga_pop_i32_i_040_pop1558_pop30_kernel_2mm43 (
        .in_data_in(redist7_sync_together115_aunroll_x_in_c0_eni10_6_tpl_1_q),
        .in_dir(redist0_sync_together115_aunroll_x_in_c0_eni10_1_tpl_1_q),
        .in_feedback_in_30(i_llvm_fpga_push_i32_i_040_pop1558_push30_kernel_2mm44_out_feedback_out_30),
        .in_feedback_valid_in_30(i_llvm_fpga_push_i32_i_040_pop1558_push30_kernel_2mm44_out_feedback_valid_out_30),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_040_pop1558_pop30_kernel_2mm43_out_data_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_i32_i_040_pop1558_pop30_kernel_2mm43_out_feedback_stall_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i32_i_040_pop1558_push30_kernel_2mm44(BLACKBOX,86)@2
    // out out_feedback_out_30@20000000
    // out out_feedback_valid_out_30@20000000
    kernel_2mm_i_llvm_fpga_push_i32_i_040_pop1558_push30_0 thei_llvm_fpga_push_i32_i_040_pop1558_push30_kernel_2mm44 (
        .in_data_in(i_llvm_fpga_pop_i32_i_040_pop1558_pop30_kernel_2mm43_out_data_out),
        .in_feedback_stall_in_30(i_llvm_fpga_pop_i32_i_040_pop1558_pop30_kernel_2mm43_out_feedback_stall_out_30),
        .in_keep_going25(redist29_i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(),
        .out_feedback_out_30(i_llvm_fpga_push_i32_i_040_pop1558_push30_kernel_2mm44_out_feedback_out_30),
        .out_feedback_valid_out_30(i_llvm_fpga_push_i32_i_040_pop1558_push30_kernel_2mm44_out_feedback_valid_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg17(REG,195)@1 + 1
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

    // valid_fanout_reg18(REG,196)@1 + 1
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

    // redist7_sync_together115_aunroll_x_in_c0_eni10_6_tpl_1(DELAY,371)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together115_aunroll_x_in_c0_eni10_6_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together115_aunroll_x_in_c0_eni10_6_tpl_1_q <= $unsigned(in_c0_eni10_6_tpl);
        end
    end

endmodule
