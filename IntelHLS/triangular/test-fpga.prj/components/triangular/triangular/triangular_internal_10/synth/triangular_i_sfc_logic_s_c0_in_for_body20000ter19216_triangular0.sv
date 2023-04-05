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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body29_triangulars_c0_enter19216_triangular0
// Created for function/kernel triangular
// SystemVerilog created on Wed Apr  5 14:46:58 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_i_sfc_logic_s_c0_in_for_body20000ter19216_triangular0 (
    input wire [31:0] in_lm1_triangular_avm_readdata,
    input wire [0:0] in_lm1_triangular_avm_writeack,
    input wire [0:0] in_lm1_triangular_avm_waitrequest,
    input wire [0:0] in_lm1_triangular_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going47_triangular6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going47_triangular6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    input wire [31:0] in_lm122_triangular_avm_readdata,
    input wire [0:0] in_lm122_triangular_avm_writeack,
    input wire [0:0] in_lm122_triangular_avm_waitrequest,
    input wire [0:0] in_lm122_triangular_avm_readdatavalid,
    output wire [31:0] out_lm1_triangular_avm_address,
    output wire [0:0] out_lm1_triangular_avm_enable,
    output wire [0:0] out_lm1_triangular_avm_read,
    output wire [0:0] out_lm1_triangular_avm_write,
    output wire [31:0] out_lm1_triangular_avm_writedata,
    output wire [3:0] out_lm1_triangular_avm_byteenable,
    output wire [0:0] out_lm1_triangular_avm_burstcount,
    input wire [31:0] in_lm143_triangular_avm_readdata,
    input wire [0:0] in_lm143_triangular_avm_writeack,
    input wire [0:0] in_lm143_triangular_avm_waitrequest,
    input wire [0:0] in_lm143_triangular_avm_readdatavalid,
    output wire [31:0] out_lm122_triangular_avm_address,
    output wire [0:0] out_lm122_triangular_avm_enable,
    output wire [0:0] out_lm122_triangular_avm_read,
    output wire [0:0] out_lm122_triangular_avm_write,
    output wire [31:0] out_lm122_triangular_avm_writedata,
    output wire [3:0] out_lm122_triangular_avm_byteenable,
    output wire [0:0] out_lm122_triangular_avm_burstcount,
    input wire [31:0] in_memdep_5_triangular_avm_readdata,
    input wire [0:0] in_memdep_5_triangular_avm_writeack,
    input wire [0:0] in_memdep_5_triangular_avm_waitrequest,
    input wire [0:0] in_memdep_5_triangular_avm_readdatavalid,
    output wire [31:0] out_lm143_triangular_avm_address,
    output wire [0:0] out_lm143_triangular_avm_enable,
    output wire [0:0] out_lm143_triangular_avm_read,
    output wire [0:0] out_lm143_triangular_avm_write,
    output wire [31:0] out_lm143_triangular_avm_writedata,
    output wire [3:0] out_lm143_triangular_avm_byteenable,
    output wire [0:0] out_lm143_triangular_avm_burstcount,
    output wire [31:0] out_memdep_5_triangular_avm_address,
    output wire [0:0] out_memdep_5_triangular_avm_enable,
    output wire [0:0] out_memdep_5_triangular_avm_read,
    output wire [0:0] out_memdep_5_triangular_avm_write,
    output wire [31:0] out_memdep_5_triangular_avm_writedata,
    output wire [3:0] out_memdep_5_triangular_avm_byteenable,
    output wire [0:0] out_memdep_5_triangular_avm_burstcount,
    output wire [0:0] out_c0_exi8205_0_tpl,
    output wire [0:0] out_c0_exi8205_1_tpl,
    output wire [0:0] out_c0_exi8205_2_tpl,
    output wire [0:0] out_c0_exi8205_3_tpl,
    output wire [0:0] out_c0_exi8205_4_tpl,
    output wire [31:0] out_c0_exi8205_5_tpl,
    output wire [0:0] out_c0_exi8205_6_tpl,
    output wire [31:0] out_c0_exi8205_7_tpl,
    output wire [31:0] out_c0_exi8205_8_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_triangular0,
    input wire [0:0] in_c0_eni12_0_tpl,
    input wire [0:0] in_c0_eni12_1_tpl,
    input wire [0:0] in_c0_eni12_2_tpl,
    input wire [31:0] in_c0_eni12_3_tpl,
    input wire [31:0] in_c0_eni12_4_tpl,
    input wire [0:0] in_c0_eni12_5_tpl,
    input wire [32:0] in_c0_eni12_6_tpl,
    input wire [31:0] in_c0_eni12_7_tpl,
    input wire [0:0] in_c0_eni12_8_tpl,
    input wire [31:0] in_c0_eni12_9_tpl,
    input wire [0:0] in_c0_eni12_10_tpl,
    input wire [31:0] in_c0_eni12_11_tpl,
    input wire [31:0] in_c0_eni12_12_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] c_i2_194_q;
    wire [31:0] c_i32_196_q;
    wire [32:0] c_i33_198_q;
    wire [63:0] c_triangular_A_local_pmem_q;
    wire [63:0] c_triangular_x_local_pmem_q;
    wire [1:0] i_arrayidx335_triangular25_vt_const_1_q;
    wire [63:0] i_arrayidx335_triangular25_vt_join_q;
    wire [61:0] i_arrayidx335_triangular25_vt_select_63_b;
    wire [63:0] i_arrayidx354_triangular18_vt_join_q;
    wire [61:0] i_arrayidx354_triangular18_vt_select_63_b;
    wire [63:0] i_arrayidx396_triangular32_vt_join_q;
    wire [61:0] i_arrayidx396_triangular32_vt_select_63_b;
    wire [1:0] i_cleanups_shl51_triangular5_vt_join_q;
    wire [0:0] i_cleanups_shl51_triangular5_vt_select_1_b;
    wire [32:0] i_dec_triangular37_a;
    wire [32:0] i_dec_triangular37_b;
    logic [32:0] i_dec_triangular37_o;
    wire [32:0] i_dec_triangular37_q;
    wire [0:0] i_first_cleanup_xor53_or_triangular19_q;
    wire [0:0] i_first_cleanup_xor53_triangular4_q;
    wire [33:0] i_fpga_indvars_iv_next15_triangular42_a;
    wire [33:0] i_fpga_indvars_iv_next15_triangular42_b;
    logic [33:0] i_fpga_indvars_iv_next15_triangular42_o;
    wire [33:0] i_fpga_indvars_iv_next15_triangular42_q;
    wire [31:0] i_idxprom3031_triangular24_vt_const_63_q;
    wire [63:0] i_idxprom3031_triangular24_vt_join_q;
    wire [31:0] i_idxprom3031_triangular24_vt_select_31_b;
    wire [63:0] i_idxprom3243_triangular17_vt_join_q;
    wire [31:0] i_idxprom3243_triangular17_vt_select_31_b;
    wire [63:0] i_idxprom3842_triangular22_vt_join_q;
    wire [31:0] i_idxprom3842_triangular22_vt_select_31_b;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_n4633_triangular21_out_dest_data_out_2_0;
    wire [31:0] i_llvm_fpga_mem_lm122_triangular30_out_lm122_triangular_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm122_triangular30_out_lm122_triangular_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_lm122_triangular30_out_lm122_triangular_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm122_triangular30_out_lm122_triangular_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm122_triangular30_out_lm122_triangular_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm122_triangular30_out_lm122_triangular_avm_write;
    wire [31:0] i_llvm_fpga_mem_lm122_triangular30_out_lm122_triangular_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm122_triangular30_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_lm143_triangular33_out_lm143_triangular_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm143_triangular33_out_lm143_triangular_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_lm143_triangular33_out_lm143_triangular_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm143_triangular33_out_lm143_triangular_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm143_triangular33_out_lm143_triangular_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm143_triangular33_out_lm143_triangular_avm_write;
    wire [31:0] i_llvm_fpga_mem_lm143_triangular33_out_lm143_triangular_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm143_triangular33_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_lm1_triangular20_out_lm1_triangular_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm1_triangular20_out_lm1_triangular_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_lm1_triangular20_out_lm1_triangular_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm1_triangular20_out_lm1_triangular_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm1_triangular20_out_lm1_triangular_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm1_triangular20_out_lm1_triangular_avm_write;
    wire [31:0] i_llvm_fpga_mem_lm1_triangular20_out_lm1_triangular_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm1_triangular20_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_memdep_5_triangular35_out_memdep_5_triangular_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_5_triangular35_out_memdep_5_triangular_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_5_triangular35_out_memdep_5_triangular_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_5_triangular35_out_memdep_5_triangular_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_5_triangular35_out_memdep_5_triangular_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_5_triangular35_out_memdep_5_triangular_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_5_triangular35_out_memdep_5_triangular_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_5_triangular35_out_o_writeack;
    wire [0:0] i_llvm_fpga_pipeline_keep_going47_triangular6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going47_triangular6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going47_triangular6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going47_triangular6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going47_triangular6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going47_triangular6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_triangular55_out_o_exit_outer_loop;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi6_pop24104_pop47_triangular27_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi6_pop24104_pop47_triangular27_out_feedback_stall_out_47;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop38_triangular26_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop38_triangular26_out_feedback_stall_out_38;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp62103_pop46_triangular53_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp62103_pop46_triangular53_out_feedback_stall_out_46;
    wire [0:0] i_llvm_fpga_pop_i1_pop44_triangular12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop44_triangular12_out_feedback_stall_out_44;
    wire [0:0] i_llvm_fpga_pop_i1_pop45_triangular58_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop45_triangular58_out_feedback_stall_out_45;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups50_pop40_triangular2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups50_pop40_triangular2_out_feedback_stall_out_40;
    wire [1:0] i_llvm_fpga_pop_i2_initerations45_pop39_triangular7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations45_pop39_triangular7_out_feedback_stall_out_39;
    wire [31:0] i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_feedback_stall_out_43;
    wire [31:0] i_llvm_fpga_pop_i32_k_035_pop37_triangular23_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k_035_pop37_triangular23_out_feedback_stall_out_37;
    wire [31:0] i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_feedback_stall_out_41;
    wire [31:0] i_llvm_fpga_pop_i32_reorder_limiter_enter98_pop42_triangular51_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_reorder_limiter_enter98_pop42_triangular51_out_feedback_stall_out_42;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop36_triangular39_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop36_triangular39_out_feedback_stall_out_36;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration49_triangular11_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration49_triangular11_out_feedback_valid_out_6;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi6_pop24104_push47_triangular28_out_feedback_out_47;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi6_pop24104_push47_triangular28_out_feedback_valid_out_47;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push38_triangular36_out_feedback_out_38;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push38_triangular36_out_feedback_valid_out_38;
    wire [0:0] i_llvm_fpga_push_i1_notcmp62103_push46_triangular54_out_feedback_out_46;
    wire [0:0] i_llvm_fpga_push_i1_notcmp62103_push46_triangular54_out_feedback_valid_out_46;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond57_triangular46_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond57_triangular46_out_feedback_valid_out_7;
    wire [0:0] i_llvm_fpga_push_i1_push44_triangular13_out_feedback_out_44;
    wire [0:0] i_llvm_fpga_push_i1_push44_triangular13_out_feedback_valid_out_44;
    wire [0:0] i_llvm_fpga_push_i1_push45_triangular59_out_feedback_out_45;
    wire [0:0] i_llvm_fpga_push_i1_push45_triangular59_out_feedback_valid_out_45;
    wire [7:0] i_llvm_fpga_push_i2_cleanups50_push40_triangular49_out_feedback_out_40;
    wire [0:0] i_llvm_fpga_push_i2_cleanups50_push40_triangular49_out_feedback_valid_out_40;
    wire [7:0] i_llvm_fpga_push_i2_initerations45_push39_triangular9_out_feedback_out_39;
    wire [0:0] i_llvm_fpga_push_i2_initerations45_push39_triangular9_out_feedback_valid_out_39;
    wire [31:0] i_llvm_fpga_push_i32_i20_039102_push43_triangular16_out_feedback_out_43;
    wire [0:0] i_llvm_fpga_push_i32_i20_039102_push43_triangular16_out_feedback_valid_out_43;
    wire [31:0] i_llvm_fpga_push_i32_k_035_push37_triangular38_out_feedback_out_37;
    wire [0:0] i_llvm_fpga_push_i32_k_035_push37_triangular38_out_feedback_valid_out_37;
    wire [31:0] i_llvm_fpga_push_i32_lim_ext96_push41_triangular57_out_feedback_out_41;
    wire [0:0] i_llvm_fpga_push_i32_lim_ext96_push41_triangular57_out_feedback_valid_out_41;
    wire [31:0] i_llvm_fpga_push_i32_reorder_limiter_enter98_push42_triangular52_out_feedback_out_42;
    wire [0:0] i_llvm_fpga_push_i32_reorder_limiter_enter98_push42_triangular52_out_feedback_valid_out_42;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv14_push36_triangular43_out_feedback_out_36;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv14_push36_triangular43_out_feedback_valid_out_36;
    wire [0:0] i_masked56_triangular50_q;
    wire [0:0] i_memdep_phi6_or_triangular29_q;
    wire [0:0] i_next_cleanups55_triangular48_s;
    reg [1:0] i_next_cleanups55_triangular48_q;
    wire [1:0] i_next_initerations46_triangular8_vt_join_q;
    wire [0:0] i_next_initerations46_triangular8_vt_select_0_b;
    wire [0:0] i_notcmp43_triangular45_q;
    wire [0:0] i_or54_triangular47_q;
    wire [32:0] i_sub40_triangular34_a;
    wire [32:0] i_sub40_triangular34_b;
    logic [32:0] i_sub40_triangular34_o;
    wire [32:0] i_sub40_triangular34_q;
    wire [0:0] i_unnamed_triangular14_q;
    wire [0:0] i_unnamed_triangular44_q;
    wire [31:0] bgTrunc_i_dec_triangular37_sel_x_b;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next15_triangular42_sel_x_b;
    wire [63:0] bgTrunc_i_mul_triangular31_sel_x_in;
    wire [31:0] bgTrunc_i_mul_triangular31_sel_x_b;
    wire [31:0] bgTrunc_i_sub40_triangular34_sel_x_b;
    wire [16:0] i_arrayidx335_triangular0_add_x_a;
    wire [16:0] i_arrayidx335_triangular0_add_x_b;
    logic [16:0] i_arrayidx335_triangular0_add_x_o;
    wire [16:0] i_arrayidx335_triangular0_add_x_q;
    wire [63:0] i_arrayidx335_triangular0_append_upper_bits_x_q;
    wire [13:0] i_arrayidx335_triangular0_narrow_x_b;
    wire [15:0] i_arrayidx335_triangular0_shift_join_x_q;
    wire [16:0] i_arrayidx335_triangular0_dupName_0_add_x_a;
    wire [16:0] i_arrayidx335_triangular0_dupName_0_add_x_b;
    logic [16:0] i_arrayidx335_triangular0_dupName_0_add_x_o;
    wire [16:0] i_arrayidx335_triangular0_dupName_0_add_x_q;
    wire [31:0] i_arrayidx335_triangular0_mult_extender_x_q;
    wire [6:0] i_arrayidx335_triangular0_mult_multconst_x_q;
    wire [15:0] i_arrayidx335_triangular0_dupName_0_trunc_sel_x_b;
    wire [15:0] i_arrayidx335_triangular0_dupName_1_trunc_sel_x_b;
    wire [15:0] i_arrayidx335_triangular0_dupName_2_trunc_sel_x_b;
    wire [15:0] i_arrayidx335_triangular0_dupName_3_trunc_sel_x_b;
    wire [15:0] i_arrayidx335_triangular0_dupName_5_trunc_sel_x_b;
    wire [9:0] i_arrayidx354_triangular0_add_x_a;
    wire [9:0] i_arrayidx354_triangular0_add_x_b;
    logic [9:0] i_arrayidx354_triangular0_add_x_o;
    wire [9:0] i_arrayidx354_triangular0_add_x_q;
    wire [63:0] i_arrayidx354_triangular0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx354_triangular0_narrow_x_b;
    wire [8:0] i_arrayidx354_triangular0_shift_join_x_q;
    wire [8:0] i_arrayidx354_triangular0_dupName_0_trunc_sel_x_b;
    wire [8:0] i_arrayidx354_triangular0_dupName_2_trunc_sel_x_b;
    wire [63:0] i_arrayidx396_triangular0_append_upper_bits_x_q;
    wire [13:0] i_arrayidx396_triangular0_narrow_x_b;
    wire [15:0] i_arrayidx396_triangular0_shift_join_x_q;
    wire [16:0] i_arrayidx396_triangular0_dupName_0_add_x_a;
    wire [16:0] i_arrayidx396_triangular0_dupName_0_add_x_b;
    logic [16:0] i_arrayidx396_triangular0_dupName_0_add_x_o;
    wire [16:0] i_arrayidx396_triangular0_dupName_0_add_x_q;
    wire [15:0] i_arrayidx396_triangular0_dupName_3_trunc_sel_x_b;
    wire [15:0] i_arrayidx396_triangular0_dupName_5_trunc_sel_x_b;
    wire [0:0] i_first_cleanup52_triangular3_sel_x_b;
    wire [63:0] i_idxprom3031_triangular24_sel_x_b;
    wire [63:0] i_idxprom3243_triangular17_sel_x_b;
    wire [63:0] i_idxprom3842_triangular22_sel_x_b;
    wire [0:0] i_last_initeration48_triangular10_sel_x_b;
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
    wire [0:0] i_exitcond16_triangular40_cmp_nsign_q;
    wire [63:0] i_mul_triangular31_sums_join_0_q;
    wire [50:0] i_mul_triangular31_sums_align_1_q;
    wire [50:0] i_mul_triangular31_sums_align_1_qint;
    wire [64:0] i_mul_triangular31_sums_result_add_0_0_a;
    wire [64:0] i_mul_triangular31_sums_result_add_0_0_b;
    logic [64:0] i_mul_triangular31_sums_result_add_0_0_o;
    wire [64:0] i_mul_triangular31_sums_result_add_0_0_q;
    wire [0:0] lowRangeB_uid279_i_arrayidx335_triangular0_mult_x_in;
    wire [0:0] lowRangeB_uid279_i_arrayidx335_triangular0_mult_x_b;
    wire [14:0] highBBits_uid280_i_arrayidx335_triangular0_mult_x_b;
    wire [16:0] addsumAHighB_uid281_i_arrayidx335_triangular0_mult_x_a;
    wire [16:0] addsumAHighB_uid281_i_arrayidx335_triangular0_mult_x_b;
    logic [16:0] addsumAHighB_uid281_i_arrayidx335_triangular0_mult_x_o;
    wire [16:0] addsumAHighB_uid281_i_arrayidx335_triangular0_mult_x_q;
    wire [17:0] add_uid282_i_arrayidx335_triangular0_mult_x_q;
    wire [2:0] lowRangeB_uid284_i_arrayidx335_triangular0_mult_x_in;
    wire [2:0] lowRangeB_uid284_i_arrayidx335_triangular0_mult_x_b;
    wire [12:0] highBBits_uid285_i_arrayidx335_triangular0_mult_x_b;
    wire [18:0] a_subconst_25_sumAHighB_uid286_i_arrayidx335_triangular0_mult_x_a;
    wire [18:0] a_subconst_25_sumAHighB_uid286_i_arrayidx335_triangular0_mult_x_b;
    logic [18:0] a_subconst_25_sumAHighB_uid286_i_arrayidx335_triangular0_mult_x_o;
    wire [18:0] a_subconst_25_sumAHighB_uid286_i_arrayidx335_triangular0_mult_x_q;
    wire [21:0] a_subconst_25_uid287_i_arrayidx335_triangular0_mult_x_q;
    wire [3:0] sR_bottomExtension_uid290_i_arrayidx335_triangular0_mult_x_q;
    wire [20:0] sR_bottomRange_uid291_i_arrayidx335_triangular0_mult_x_in;
    wire [20:0] sR_bottomRange_uid291_i_arrayidx335_triangular0_mult_x_b;
    wire [24:0] sR_mergedSignalTM_uid292_i_arrayidx335_triangular0_mult_x_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid400_i_cleanups_shl51_triangular0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid400_i_cleanups_shl51_triangular0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid401_i_cleanups_shl51_triangular0_shift_x_q;
    wire [0:0] leftShiftStage0_uid403_i_cleanups_shl51_triangular0_shift_x_s;
    reg [1:0] leftShiftStage0_uid403_i_cleanups_shl51_triangular0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid407_i_next_initerations46_triangular0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid409_i_next_initerations46_triangular0_shift_x_q;
    wire [0:0] rightShiftStage0_uid411_i_next_initerations46_triangular0_shift_x_s;
    reg [1:0] rightShiftStage0_uid411_i_next_initerations46_triangular0_shift_x_q;
    wire i_mul_triangular31_im0_cma_reset;
    wire [13:0] i_mul_triangular31_im0_cma_a0;
    wire [13:0] i_mul_triangular31_im0_cma_c0;
    wire [27:0] i_mul_triangular31_im0_cma_s0;
    wire [27:0] i_mul_triangular31_im0_cma_qq;
    wire [27:0] i_mul_triangular31_im0_cma_q;
    wire i_mul_triangular31_im0_cma_ena0;
    wire i_mul_triangular31_im0_cma_ena1;
    wire i_mul_triangular31_im0_cma_ena2;
    wire i_mul_triangular31_im8_cma_reset;
    wire [17:0] i_mul_triangular31_im8_cma_a0;
    wire [17:0] i_mul_triangular31_im8_cma_c0;
    wire [35:0] i_mul_triangular31_im8_cma_s0;
    wire [35:0] i_mul_triangular31_im8_cma_qq;
    wire [35:0] i_mul_triangular31_im8_cma_q;
    wire i_mul_triangular31_im8_cma_ena0;
    wire i_mul_triangular31_im8_cma_ena1;
    wire i_mul_triangular31_im8_cma_ena2;
    wire i_mul_triangular31_ma3_cma_reset;
    wire [13:0] i_mul_triangular31_ma3_cma_a0;
    wire [17:0] i_mul_triangular31_ma3_cma_c0;
    wire [13:0] i_mul_triangular31_ma3_cma_a1;
    wire [17:0] i_mul_triangular31_ma3_cma_c1;
    wire [32:0] i_mul_triangular31_ma3_cma_s0;
    wire [32:0] i_mul_triangular31_ma3_cma_qq;
    wire [32:0] i_mul_triangular31_ma3_cma_q;
    wire i_mul_triangular31_ma3_cma_ena0;
    wire i_mul_triangular31_ma3_cma_ena1;
    wire i_mul_triangular31_ma3_cma_ena2;
    wire [47:0] i_arrayidx335_triangular0_upper_bits_x_merged_bit_select_b;
    wire [15:0] i_arrayidx335_triangular0_upper_bits_x_merged_bit_select_c;
    wire [54:0] i_arrayidx354_triangular0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx354_triangular0_upper_bits_x_merged_bit_select_c;
    wire [13:0] i_mul_triangular31_bs2_merged_bit_select_b;
    wire [17:0] i_mul_triangular31_bs2_merged_bit_select_c;
    wire [13:0] i_mul_triangular31_bs1_merged_bit_select_b;
    wire [17:0] i_mul_triangular31_bs1_merged_bit_select_c;
    reg [0:0] redist0_sync_together131_aunroll_x_in_c0_eni12_1_tpl_1_q;
    reg [0:0] redist1_sync_together131_aunroll_x_in_c0_eni12_1_tpl_2_q;
    reg [0:0] redist2_sync_together131_aunroll_x_in_c0_eni12_1_tpl_4_q;
    reg [0:0] redist2_sync_together131_aunroll_x_in_c0_eni12_1_tpl_4_delay_0;
    reg [31:0] redist3_sync_together131_aunroll_x_in_c0_eni12_3_tpl_1_q;
    reg [31:0] redist4_sync_together131_aunroll_x_in_c0_eni12_4_tpl_2_q;
    reg [31:0] redist4_sync_together131_aunroll_x_in_c0_eni12_4_tpl_2_delay_0;
    reg [0:0] redist5_sync_together131_aunroll_x_in_c0_eni12_5_tpl_1_q;
    reg [0:0] redist8_sync_together131_aunroll_x_in_c0_eni12_8_tpl_1_q;
    reg [31:0] redist9_sync_together131_aunroll_x_in_c0_eni12_9_tpl_1_q;
    reg [0:0] redist10_sync_together131_aunroll_x_in_c0_eni12_10_tpl_4_q;
    reg [0:0] redist10_sync_together131_aunroll_x_in_c0_eni12_10_tpl_4_delay_0;
    reg [0:0] redist10_sync_together131_aunroll_x_in_c0_eni12_10_tpl_4_delay_1;
    reg [0:0] redist10_sync_together131_aunroll_x_in_c0_eni12_10_tpl_4_delay_2;
    reg [0:0] redist13_sync_together131_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist14_sync_together131_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist14_sync_together131_aunroll_x_in_i_valid_3_delay_0;
    reg [0:0] redist15_sync_together131_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist16_sync_together131_aunroll_x_in_i_valid_6_q;
    reg [0:0] redist16_sync_together131_aunroll_x_in_i_valid_6_delay_0;
    reg [0:0] redist17_sync_together131_aunroll_x_in_i_valid_7_q;
    reg [0:0] redist18_sync_together131_aunroll_x_in_i_valid_8_q;
    reg [0:0] redist19_i_first_cleanup52_triangular3_sel_x_b_3_q;
    reg [0:0] redist19_i_first_cleanup52_triangular3_sel_x_b_3_delay_0;
    reg [0:0] redist19_i_first_cleanup52_triangular3_sel_x_b_3_delay_1;
    reg [15:0] redist20_i_arrayidx335_triangular0_dupName_1_trunc_sel_x_b_1_q;
    reg [13:0] redist21_i_arrayidx335_triangular0_narrow_x_b_3_q;
    reg [13:0] redist21_i_arrayidx335_triangular0_narrow_x_b_3_delay_0;
    reg [13:0] redist21_i_arrayidx335_triangular0_narrow_x_b_3_delay_1;
    reg [0:0] redist22_i_memdep_phi6_or_triangular29_q_3_q;
    reg [0:0] redist22_i_memdep_phi6_or_triangular29_q_3_delay_0;
    reg [0:0] redist22_i_memdep_phi6_or_triangular29_q_3_delay_1;
    reg [0:0] redist23_i_masked56_triangular50_q_5_q;
    reg [0:0] redist23_i_masked56_triangular50_q_5_delay_0;
    reg [0:0] redist23_i_masked56_triangular50_q_5_delay_1;
    reg [0:0] redist23_i_masked56_triangular50_q_5_delay_2;
    reg [0:0] redist23_i_masked56_triangular50_q_5_delay_3;
    reg [31:0] redist24_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_3_q;
    reg [31:0] redist24_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_3_delay_0;
    reg [31:0] redist26_i_llvm_fpga_pop_i32_k_035_pop37_triangular23_out_data_out_1_q;
    reg [31:0] redist27_i_llvm_fpga_pop_i32_k_035_pop37_triangular23_out_data_out_2_q;
    reg [1:0] redist29_i_llvm_fpga_pop_i2_cleanups50_pop40_triangular2_out_data_out_3_q;
    reg [1:0] redist29_i_llvm_fpga_pop_i2_cleanups50_pop40_triangular2_out_data_out_3_delay_0;
    reg [1:0] redist29_i_llvm_fpga_pop_i2_cleanups50_pop40_triangular2_out_data_out_3_delay_1;
    reg [0:0] redist30_i_llvm_fpga_pop_i1_pop45_triangular58_out_data_out_5_q;
    reg [0:0] redist30_i_llvm_fpga_pop_i1_pop45_triangular58_out_data_out_5_delay_0;
    reg [0:0] redist30_i_llvm_fpga_pop_i1_pop45_triangular58_out_data_out_5_delay_1;
    reg [0:0] redist30_i_llvm_fpga_pop_i1_pop45_triangular58_out_data_out_5_delay_2;
    reg [0:0] redist30_i_llvm_fpga_pop_i1_pop45_triangular58_out_data_out_5_delay_3;
    reg [0:0] redist31_i_llvm_fpga_pop_i1_pop44_triangular12_out_data_out_1_q;
    reg [0:0] redist32_i_llvm_fpga_pop_i1_pop44_triangular12_out_data_out_4_q;
    reg [0:0] redist32_i_llvm_fpga_pop_i1_pop44_triangular12_out_data_out_4_delay_0;
    reg [0:0] redist32_i_llvm_fpga_pop_i1_pop44_triangular12_out_data_out_4_delay_1;
    reg [0:0] redist33_i_llvm_fpga_pop_i1_notcmp62103_pop46_triangular53_out_data_out_3_q;
    reg [0:0] redist33_i_llvm_fpga_pop_i1_notcmp62103_pop46_triangular53_out_data_out_3_delay_0;
    reg [0:0] redist33_i_llvm_fpga_pop_i1_notcmp62103_pop46_triangular53_out_data_out_3_delay_1;
    reg [0:0] redist34_i_llvm_fpga_pop_i1_memdep_phi6_pop24104_pop47_triangular27_out_data_out_3_q;
    reg [0:0] redist34_i_llvm_fpga_pop_i1_memdep_phi6_pop24104_pop47_triangular27_out_data_out_3_delay_0;
    reg [0:0] redist34_i_llvm_fpga_pop_i1_memdep_phi6_pop24104_pop47_triangular27_out_data_out_3_delay_1;
    reg [0:0] redist35_i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_triangular55_out_o_exit_outer_loop_2_q;
    reg [0:0] redist35_i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_triangular55_out_o_exit_outer_loop_2_delay_0;
    reg [0:0] redist36_i_llvm_fpga_pipeline_keep_going47_triangular6_out_data_out_5_q;
    reg [0:0] redist36_i_llvm_fpga_pipeline_keep_going47_triangular6_out_data_out_5_delay_0;
    reg [0:0] redist36_i_llvm_fpga_pipeline_keep_going47_triangular6_out_data_out_5_delay_1;
    reg [0:0] redist36_i_llvm_fpga_pipeline_keep_going47_triangular6_out_data_out_5_delay_2;
    reg [0:0] redist36_i_llvm_fpga_pipeline_keep_going47_triangular6_out_data_out_5_delay_3;
    reg [0:0] redist37_i_first_cleanup_xor53_triangular4_q_3_q;
    reg [0:0] redist37_i_first_cleanup_xor53_triangular4_q_3_delay_0;
    reg [0:0] redist37_i_first_cleanup_xor53_triangular4_q_3_delay_1;
    reg [0:0] redist38_i_first_cleanup_xor53_or_triangular19_q_3_q;
    reg [0:0] redist38_i_first_cleanup_xor53_or_triangular19_q_3_delay_0;
    reg [0:0] redist38_i_first_cleanup_xor53_or_triangular19_q_3_delay_1;
    reg [0:0] redist39_i_first_cleanup_xor53_or_triangular19_q_6_q;
    reg [0:0] redist39_i_first_cleanup_xor53_or_triangular19_q_6_delay_0;
    reg [0:0] redist39_i_first_cleanup_xor53_or_triangular19_q_6_delay_1;
    reg [0:0] redist40_i_first_cleanup_xor53_or_triangular19_q_7_q;
    reg [61:0] redist41_i_arrayidx396_triangular32_vt_select_63_b_3_q;
    reg [61:0] redist41_i_arrayidx396_triangular32_vt_select_63_b_3_delay_0;
    reg [63:0] redist42_i_arrayidx396_triangular32_vt_join_q_1_q;
    reg [32:0] redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_outputreg0_q;
    wire redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_mem_reset0;
    wire [32:0] redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_mem_ia;
    wire [0:0] redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_mem_aa;
    wire [0:0] redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_mem_ab;
    wire [32:0] redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_mem_iq;
    wire [32:0] redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_mem_q;
    wire [0:0] redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_rdcnt_q;
    (* preserve *) reg [0:0] redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_rdcnt_i;
    reg [0:0] redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_cmpReg_q;
    wire [0:0] redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_notEnable_q;
    wire [0:0] redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_sticky_ena_q;
    wire [0:0] redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_enaAnd_q;
    wire redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_mem_reset0;
    wire [31:0] redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_mem_ia;
    wire [1:0] redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_mem_aa;
    wire [1:0] redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_mem_ab;
    wire [31:0] redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_mem_iq;
    wire [31:0] redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_mem_q;
    wire [1:0] redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_rdcnt_q;
    (* preserve *) reg [1:0] redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_rdcnt_i;
    (* preserve *) reg redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_rdcnt_eq;
    reg [1:0] redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_wraddr_q;
    wire [1:0] redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_mem_last_q;
    wire [0:0] redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_cmp_q;
    (* dont_merge *) reg [0:0] redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_cmpReg_q;
    wire [0:0] redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_notEnable_q;
    wire [0:0] redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_sticky_ena_q;
    wire [0:0] redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_enaAnd_q;
    wire redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_mem_reset0;
    wire [31:0] redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_mem_ia;
    wire [2:0] redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_mem_aa;
    wire [2:0] redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_mem_ab;
    wire [31:0] redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_mem_iq;
    wire [31:0] redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_mem_q;
    wire [2:0] redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_rdcnt_i;
    reg [2:0] redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_wraddr_q;
    wire [3:0] redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_mem_last_q;
    wire [3:0] redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_cmp_b;
    wire [0:0] redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_cmpReg_q;
    wire [0:0] redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_notEnable_q;
    wire [0:0] redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_sticky_ena_q;
    wire [0:0] redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_enaAnd_q;
    wire redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_mem_reset0;
    wire [31:0] redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_mem_ia;
    wire [2:0] redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_mem_aa;
    wire [2:0] redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_mem_ab;
    wire [31:0] redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_mem_iq;
    wire [31:0] redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_mem_q;
    wire [2:0] redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_rdcnt_i;
    reg [2:0] redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_wraddr_q;
    wire [3:0] redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_mem_last_q;
    wire [3:0] redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_cmp_b;
    wire [0:0] redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_cmpReg_q;
    wire [0:0] redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_notEnable_q;
    wire [0:0] redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_sticky_ena_q;
    wire [0:0] redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_enaAnd_q;
    reg [31:0] redist24_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_3_inputreg0_q;
    wire redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_mem_reset0;
    wire [31:0] redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_mem_ia;
    wire [1:0] redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_mem_aa;
    wire [1:0] redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_mem_ab;
    wire [31:0] redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_mem_iq;
    wire [31:0] redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_mem_q;
    wire [1:0] redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_rdcnt_q;
    (* preserve *) reg [1:0] redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_rdcnt_i;
    reg [1:0] redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_wraddr_q;
    wire [2:0] redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_mem_last_q;
    wire [2:0] redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_cmp_b;
    wire [0:0] redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_cmp_q;
    (* dont_merge *) reg [0:0] redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_cmpReg_q;
    wire [0:0] redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_notEnable_q;
    wire [0:0] redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_nor_q;
    (* dont_merge *) reg [0:0] redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_sticky_ena_q;
    wire [0:0] redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_enaAnd_q;
    wire redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_mem_reset0;
    wire [31:0] redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_mem_ia;
    wire [0:0] redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_mem_aa;
    wire [0:0] redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_mem_ab;
    wire [31:0] redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_mem_iq;
    wire [31:0] redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_mem_q;
    wire [0:0] redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_rdcnt_q;
    (* preserve *) reg [0:0] redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_rdcnt_i;
    reg [0:0] redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_cmpReg_q;
    wire [0:0] redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_notEnable_q;
    wire [0:0] redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_nor_q;
    (* dont_merge *) reg [0:0] redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_sticky_ena_q;
    wire [0:0] redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_enaAnd_q;
    reg [61:0] redist41_i_arrayidx396_triangular32_vt_select_63_b_3_inputreg0_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist13_sync_together131_aunroll_x_in_i_valid_1(DELAY,432)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together131_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist13_sync_together131_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist14_sync_together131_aunroll_x_in_i_valid_3(DELAY,433)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together131_aunroll_x_in_i_valid_3_delay_0 <= '0;
            redist14_sync_together131_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist14_sync_together131_aunroll_x_in_i_valid_3_delay_0 <= $unsigned(redist13_sync_together131_aunroll_x_in_i_valid_1_q);
            redist14_sync_together131_aunroll_x_in_i_valid_3_q <= redist14_sync_together131_aunroll_x_in_i_valid_3_delay_0;
        end
    end

    // redist15_sync_together131_aunroll_x_in_i_valid_4(DELAY,434)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together131_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist15_sync_together131_aunroll_x_in_i_valid_4_q <= $unsigned(redist14_sync_together131_aunroll_x_in_i_valid_3_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // leftShiftStage0Idx1Rng1_uid400_i_cleanups_shl51_triangular0_shift_x(BITSELECT,399)@5
    assign leftShiftStage0Idx1Rng1_uid400_i_cleanups_shl51_triangular0_shift_x_in = redist29_i_llvm_fpga_pop_i2_cleanups50_pop40_triangular2_out_data_out_3_q[0:0];
    assign leftShiftStage0Idx1Rng1_uid400_i_cleanups_shl51_triangular0_shift_x_b = leftShiftStage0Idx1Rng1_uid400_i_cleanups_shl51_triangular0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid401_i_cleanups_shl51_triangular0_shift_x(BITJOIN,400)@5
    assign leftShiftStage0Idx1_uid401_i_cleanups_shl51_triangular0_shift_x_q = {leftShiftStage0Idx1Rng1_uid400_i_cleanups_shl51_triangular0_shift_x_b, GND_q};

    // leftShiftStage0_uid403_i_cleanups_shl51_triangular0_shift_x(MUX,402)@5
    assign leftShiftStage0_uid403_i_cleanups_shl51_triangular0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid403_i_cleanups_shl51_triangular0_shift_x_s or redist29_i_llvm_fpga_pop_i2_cleanups50_pop40_triangular2_out_data_out_3_q or leftShiftStage0Idx1_uid401_i_cleanups_shl51_triangular0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid403_i_cleanups_shl51_triangular0_shift_x_s)
            1'b0 : leftShiftStage0_uid403_i_cleanups_shl51_triangular0_shift_x_q = redist29_i_llvm_fpga_pop_i2_cleanups50_pop40_triangular2_out_data_out_3_q;
            1'b1 : leftShiftStage0_uid403_i_cleanups_shl51_triangular0_shift_x_q = leftShiftStage0Idx1_uid401_i_cleanups_shl51_triangular0_shift_x_q;
            default : leftShiftStage0_uid403_i_cleanups_shl51_triangular0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl51_triangular5_vt_select_1(BITSELECT,58)@5
    assign i_cleanups_shl51_triangular5_vt_select_1_b = leftShiftStage0_uid403_i_cleanups_shl51_triangular0_shift_x_q[1:1];

    // i_cleanups_shl51_triangular5_vt_join(BITJOIN,57)@5
    assign i_cleanups_shl51_triangular5_vt_join_q = {i_cleanups_shl51_triangular5_vt_select_1_b, GND_q};

    // redist29_i_llvm_fpga_pop_i2_cleanups50_pop40_triangular2_out_data_out_3(DELAY,448)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_llvm_fpga_pop_i2_cleanups50_pop40_triangular2_out_data_out_3_delay_0 <= '0;
            redist29_i_llvm_fpga_pop_i2_cleanups50_pop40_triangular2_out_data_out_3_delay_1 <= '0;
            redist29_i_llvm_fpga_pop_i2_cleanups50_pop40_triangular2_out_data_out_3_q <= '0;
        end
        else
        begin
            redist29_i_llvm_fpga_pop_i2_cleanups50_pop40_triangular2_out_data_out_3_delay_0 <= $unsigned(i_llvm_fpga_pop_i2_cleanups50_pop40_triangular2_out_data_out);
            redist29_i_llvm_fpga_pop_i2_cleanups50_pop40_triangular2_out_data_out_3_delay_1 <= redist29_i_llvm_fpga_pop_i2_cleanups50_pop40_triangular2_out_data_out_3_delay_0;
            redist29_i_llvm_fpga_pop_i2_cleanups50_pop40_triangular2_out_data_out_3_q <= redist29_i_llvm_fpga_pop_i2_cleanups50_pop40_triangular2_out_data_out_3_delay_1;
        end
    end

    // i_first_cleanup_xor53_triangular4(LOGICAL,63)@2
    assign i_first_cleanup_xor53_triangular4_q = i_first_cleanup52_triangular3_sel_x_b ^ VCC_q;

    // redist37_i_first_cleanup_xor53_triangular4_q_3(DELAY,456)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_first_cleanup_xor53_triangular4_q_3_delay_0 <= '0;
            redist37_i_first_cleanup_xor53_triangular4_q_3_delay_1 <= '0;
            redist37_i_first_cleanup_xor53_triangular4_q_3_q <= '0;
        end
        else
        begin
            redist37_i_first_cleanup_xor53_triangular4_q_3_delay_0 <= $unsigned(i_first_cleanup_xor53_triangular4_q);
            redist37_i_first_cleanup_xor53_triangular4_q_3_delay_1 <= redist37_i_first_cleanup_xor53_triangular4_q_3_delay_0;
            redist37_i_first_cleanup_xor53_triangular4_q_3_q <= redist37_i_first_cleanup_xor53_triangular4_q_3_delay_1;
        end
    end

    // i_notcmp43_triangular45(LOGICAL,118)@5
    assign i_notcmp43_triangular45_q = i_unnamed_triangular44_q ^ VCC_q;

    // i_or54_triangular47(LOGICAL,119)@5
    assign i_or54_triangular47_q = i_notcmp43_triangular45_q | redist37_i_first_cleanup_xor53_triangular4_q_3_q;

    // i_next_cleanups55_triangular48(MUX,114)@5
    assign i_next_cleanups55_triangular48_s = i_or54_triangular47_q;
    always @(i_next_cleanups55_triangular48_s or redist29_i_llvm_fpga_pop_i2_cleanups50_pop40_triangular2_out_data_out_3_q or i_cleanups_shl51_triangular5_vt_join_q)
    begin
        unique case (i_next_cleanups55_triangular48_s)
            1'b0 : i_next_cleanups55_triangular48_q = redist29_i_llvm_fpga_pop_i2_cleanups50_pop40_triangular2_out_data_out_3_q;
            1'b1 : i_next_cleanups55_triangular48_q = i_cleanups_shl51_triangular5_vt_join_q;
            default : i_next_cleanups55_triangular48_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups50_push40_triangular49(BLACKBOX,104)@5
    // out out_feedback_out_40@20000000
    // out out_feedback_valid_out_40@20000000
    triangular_i_llvm_fpga_push_i2_cleanups50_push40_0 thei_llvm_fpga_push_i2_cleanups50_push40_triangular49 (
        .in_data_in(i_next_cleanups55_triangular48_q),
        .in_feedback_stall_in_40(i_llvm_fpga_pop_i2_cleanups50_pop40_triangular2_out_feedback_stall_out_40),
        .in_keep_going47(i_llvm_fpga_pipeline_keep_going47_triangular6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(redist15_sync_together131_aunroll_x_in_i_valid_4_q),
        .out_data_out(),
        .out_feedback_out_40(i_llvm_fpga_push_i2_cleanups50_push40_triangular49_out_feedback_out_40),
        .out_feedback_valid_out_40(i_llvm_fpga_push_i2_cleanups50_push40_triangular49_out_feedback_valid_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together131_aunroll_x_in_c0_eni12_1_tpl_1(DELAY,419)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together131_aunroll_x_in_c0_eni12_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together131_aunroll_x_in_c0_eni12_1_tpl_1_q <= $unsigned(in_c0_eni12_1_tpl);
        end
    end

    // c_i2_194(CONSTANT,40)
    assign c_i2_194_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups50_pop40_triangular2(BLACKBOX,90)@2
    // out out_feedback_stall_out_40@20000000
    triangular_i_llvm_fpga_pop_i2_cleanups50_pop40_0 thei_llvm_fpga_pop_i2_cleanups50_pop40_triangular2 (
        .in_data_in(c_i2_194_q),
        .in_dir(redist0_sync_together131_aunroll_x_in_c0_eni12_1_tpl_1_q),
        .in_feedback_in_40(i_llvm_fpga_push_i2_cleanups50_push40_triangular49_out_feedback_out_40),
        .in_feedback_valid_in_40(i_llvm_fpga_push_i2_cleanups50_push40_triangular49_out_feedback_valid_out_40),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist13_sync_together131_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups50_pop40_triangular2_out_data_out),
        .out_feedback_stall_out_40(i_llvm_fpga_pop_i2_cleanups50_pop40_triangular2_out_feedback_stall_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup52_triangular3_sel_x(BITSELECT,205)@2
    assign i_first_cleanup52_triangular3_sel_x_b = i_llvm_fpga_pop_i2_cleanups50_pop40_triangular2_out_data_out[0:0];

    // redist19_i_first_cleanup52_triangular3_sel_x_b_3(DELAY,438)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_first_cleanup52_triangular3_sel_x_b_3_delay_0 <= '0;
            redist19_i_first_cleanup52_triangular3_sel_x_b_3_delay_1 <= '0;
            redist19_i_first_cleanup52_triangular3_sel_x_b_3_q <= '0;
        end
        else
        begin
            redist19_i_first_cleanup52_triangular3_sel_x_b_3_delay_0 <= $unsigned(i_first_cleanup52_triangular3_sel_x_b);
            redist19_i_first_cleanup52_triangular3_sel_x_b_3_delay_1 <= redist19_i_first_cleanup52_triangular3_sel_x_b_3_delay_0;
            redist19_i_first_cleanup52_triangular3_sel_x_b_3_q <= redist19_i_first_cleanup52_triangular3_sel_x_b_3_delay_1;
        end
    end

    // c_i33_198(CONSTANT,42)
    assign c_i33_198_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next15_triangular42(ADD,64)@5
    assign i_fpga_indvars_iv_next15_triangular42_a = {1'b0, i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop36_triangular39_out_data_out};
    assign i_fpga_indvars_iv_next15_triangular42_b = {1'b0, c_i33_198_q};
    assign i_fpga_indvars_iv_next15_triangular42_o = $unsigned(i_fpga_indvars_iv_next15_triangular42_a) + $unsigned(i_fpga_indvars_iv_next15_triangular42_b);
    assign i_fpga_indvars_iv_next15_triangular42_q = i_fpga_indvars_iv_next15_triangular42_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next15_triangular42_sel_x(BITSELECT,130)@5
    assign bgTrunc_i_fpga_indvars_iv_next15_triangular42_sel_x_b = i_fpga_indvars_iv_next15_triangular42_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv14_push36_triangular43(BLACKBOX,110)@5
    // out out_feedback_out_36@20000000
    // out out_feedback_valid_out_36@20000000
    triangular_i_llvm_fpga_push_i33_fpga_indvars_iv14_push36_0 thei_llvm_fpga_push_i33_fpga_indvars_iv14_push36_triangular43 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next15_triangular42_sel_x_b),
        .in_feedback_stall_in_36(i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop36_triangular39_out_feedback_stall_out_36),
        .in_keep_going47(i_llvm_fpga_pipeline_keep_going47_triangular6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(redist15_sync_together131_aunroll_x_in_i_valid_4_q),
        .out_data_out(),
        .out_feedback_out_36(i_llvm_fpga_push_i33_fpga_indvars_iv14_push36_triangular43_out_feedback_out_36),
        .out_feedback_valid_out_36(i_llvm_fpga_push_i33_fpga_indvars_iv14_push36_triangular43_out_feedback_valid_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_notEnable(LOGICAL,467)
    assign redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_nor(LOGICAL,468)
    assign redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_nor_q = ~ (redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_notEnable_q | redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_sticky_ena_q);

    // redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_cmpReg(REG,466)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_sticky_ena(REG,469)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_nor_q == 1'b1)
        begin
            redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_sticky_ena_q <= $unsigned(redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_cmpReg_q);
        end
    end

    // redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_enaAnd(LOGICAL,470)
    assign redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_enaAnd_q = redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_sticky_ena_q & VCC_q;

    // redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_rdcnt(COUNTER,464)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_rdcnt_i <= $unsigned(redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_rdcnt_q = redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_rdcnt_i[0:0];

    // redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_wraddr(REG,465)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_wraddr_q <= $unsigned(redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_rdcnt_q);
        end
    end

    // redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_mem(DUALMEM,463)
    assign redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_mem_ia = $unsigned(in_c0_eni12_6_tpl);
    assign redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_mem_aa = redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_wraddr_q;
    assign redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_mem_ab = redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_rdcnt_q;
    assign redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(33),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(33),
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
    ) redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_mem_dmem (
        .clocken1(redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_mem_aa),
        .data_a(redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_mem_ab),
        .q_b(redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_mem_iq),
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
    assign redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_mem_q = redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_mem_iq[32:0];

    // redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_outputreg0(DELAY,462)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_outputreg0_q <= '0;
        end
        else
        begin
            redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_outputreg0_q <= $unsigned(redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_mem_q);
        end
    end

    // i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop36_triangular39(BLACKBOX,96)@5
    // out out_feedback_stall_out_36@20000000
    triangular_i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop36_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv14_pop36_triangular39 (
        .in_data_in(redist6_sync_together131_aunroll_x_in_c0_eni12_6_tpl_4_outputreg0_q),
        .in_dir(redist2_sync_together131_aunroll_x_in_c0_eni12_1_tpl_4_q),
        .in_feedback_in_36(i_llvm_fpga_push_i33_fpga_indvars_iv14_push36_triangular43_out_feedback_out_36),
        .in_feedback_valid_in_36(i_llvm_fpga_push_i33_fpga_indvars_iv14_push36_triangular43_out_feedback_valid_out_36),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist15_sync_together131_aunroll_x_in_i_valid_4_q),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop36_triangular39_out_data_out),
        .out_feedback_stall_out_36(i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop36_triangular39_out_feedback_stall_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond16_triangular40_cmp_nsign(LOGICAL,254)@5
    assign i_exitcond16_triangular40_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop36_triangular39_out_data_out[32:32]));

    // i_llvm_fpga_push_i1_push44_triangular13(BLACKBOX,102)@5
    // out out_feedback_out_44@20000000
    // out out_feedback_valid_out_44@20000000
    triangular_i_llvm_fpga_push_i1_push44_0 thei_llvm_fpga_push_i1_push44_triangular13 (
        .in_data_in(redist32_i_llvm_fpga_pop_i1_pop44_triangular12_out_data_out_4_q),
        .in_feedback_stall_in_44(i_llvm_fpga_pop_i1_pop44_triangular12_out_feedback_stall_out_44),
        .in_keep_going47(i_llvm_fpga_pipeline_keep_going47_triangular6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(redist15_sync_together131_aunroll_x_in_i_valid_4_q),
        .out_data_out(),
        .out_feedback_out_44(i_llvm_fpga_push_i1_push44_triangular13_out_feedback_out_44),
        .out_feedback_valid_out_44(i_llvm_fpga_push_i1_push44_triangular13_out_feedback_valid_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_pop44_triangular12(BLACKBOX,88)@1
    // out out_feedback_stall_out_44@20000000
    triangular_i_llvm_fpga_pop_i1_pop44_0 thei_llvm_fpga_pop_i1_pop44_triangular12 (
        .in_data_in(in_c0_eni12_2_tpl),
        .in_dir(in_c0_eni12_1_tpl),
        .in_feedback_in_44(i_llvm_fpga_push_i1_push44_triangular13_out_feedback_out_44),
        .in_feedback_valid_in_44(i_llvm_fpga_push_i1_push44_triangular13_out_feedback_valid_out_44),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i1_pop44_triangular12_out_data_out),
        .out_feedback_stall_out_44(i_llvm_fpga_pop_i1_pop44_triangular12_out_feedback_stall_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist31_i_llvm_fpga_pop_i1_pop44_triangular12_out_data_out_1(DELAY,450)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_llvm_fpga_pop_i1_pop44_triangular12_out_data_out_1_q <= '0;
        end
        else
        begin
            redist31_i_llvm_fpga_pop_i1_pop44_triangular12_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_pop44_triangular12_out_data_out);
        end
    end

    // redist32_i_llvm_fpga_pop_i1_pop44_triangular12_out_data_out_4(DELAY,451)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_llvm_fpga_pop_i1_pop44_triangular12_out_data_out_4_delay_0 <= '0;
            redist32_i_llvm_fpga_pop_i1_pop44_triangular12_out_data_out_4_delay_1 <= '0;
            redist32_i_llvm_fpga_pop_i1_pop44_triangular12_out_data_out_4_q <= '0;
        end
        else
        begin
            redist32_i_llvm_fpga_pop_i1_pop44_triangular12_out_data_out_4_delay_0 <= $unsigned(redist31_i_llvm_fpga_pop_i1_pop44_triangular12_out_data_out_1_q);
            redist32_i_llvm_fpga_pop_i1_pop44_triangular12_out_data_out_4_delay_1 <= redist32_i_llvm_fpga_pop_i1_pop44_triangular12_out_data_out_4_delay_0;
            redist32_i_llvm_fpga_pop_i1_pop44_triangular12_out_data_out_4_q <= redist32_i_llvm_fpga_pop_i1_pop44_triangular12_out_data_out_4_delay_1;
        end
    end

    // i_unnamed_triangular44(LOGICAL,122)@5
    assign i_unnamed_triangular44_q = redist32_i_llvm_fpga_pop_i1_pop44_triangular12_out_data_out_4_q & i_exitcond16_triangular40_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond57_triangular46(BLACKBOX,101)@5
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    triangular_i_llvm_fpga_push_i1_notexitcond57_0 thei_llvm_fpga_push_i1_notexitcond57_triangular46 (
        .in_data_in(i_unnamed_triangular44_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pipeline_keep_going47_triangular6_out_not_exitcond_stall_out),
        .in_first_cleanup52(redist19_i_first_cleanup52_triangular3_sel_x_b_3_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist15_sync_together131_aunroll_x_in_i_valid_4_q),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i1_notexitcond57_triangular46_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i1_notexitcond57_triangular46_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,219)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist14_sync_together131_aunroll_x_in_i_valid_3_q);
        end
    end

    // rightShiftStage0Idx1Rng1_uid407_i_next_initerations46_triangular0_shift_x(BITSELECT,406)@5
    assign rightShiftStage0Idx1Rng1_uid407_i_next_initerations46_triangular0_shift_x_b = i_llvm_fpga_pop_i2_initerations45_pop39_triangular7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid409_i_next_initerations46_triangular0_shift_x(BITJOIN,408)@5
    assign rightShiftStage0Idx1_uid409_i_next_initerations46_triangular0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid407_i_next_initerations46_triangular0_shift_x_b};

    // valid_fanout_reg1(REG,217)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist14_sync_together131_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg2(REG,218)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist14_sync_together131_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i2_initerations45_push39_triangular9(BLACKBOX,105)@5
    // out out_feedback_out_39@20000000
    // out out_feedback_valid_out_39@20000000
    triangular_i_llvm_fpga_push_i2_initerations45_push39_0 thei_llvm_fpga_push_i2_initerations45_push39_triangular9 (
        .in_data_in(i_next_initerations46_triangular8_vt_join_q),
        .in_feedback_stall_in_39(i_llvm_fpga_pop_i2_initerations45_pop39_triangular7_out_feedback_stall_out_39),
        .in_keep_going47(i_llvm_fpga_pipeline_keep_going47_triangular6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_39(i_llvm_fpga_push_i2_initerations45_push39_triangular9_out_feedback_out_39),
        .out_feedback_valid_out_39(i_llvm_fpga_push_i2_initerations45_push39_triangular9_out_feedback_valid_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations45_pop39_triangular7(BLACKBOX,91)@5
    // out out_feedback_stall_out_39@20000000
    triangular_i_llvm_fpga_pop_i2_initerations45_pop39_0 thei_llvm_fpga_pop_i2_initerations45_pop39_triangular7 (
        .in_data_in(c_i2_194_q),
        .in_dir(redist2_sync_together131_aunroll_x_in_c0_eni12_1_tpl_4_q),
        .in_feedback_in_39(i_llvm_fpga_push_i2_initerations45_push39_triangular9_out_feedback_out_39),
        .in_feedback_valid_in_39(i_llvm_fpga_push_i2_initerations45_push39_triangular9_out_feedback_valid_out_39),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations45_pop39_triangular7_out_data_out),
        .out_feedback_stall_out_39(i_llvm_fpga_pop_i2_initerations45_pop39_triangular7_out_feedback_stall_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid411_i_next_initerations46_triangular0_shift_x(MUX,410)@5
    assign rightShiftStage0_uid411_i_next_initerations46_triangular0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid411_i_next_initerations46_triangular0_shift_x_s or i_llvm_fpga_pop_i2_initerations45_pop39_triangular7_out_data_out or rightShiftStage0Idx1_uid409_i_next_initerations46_triangular0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid411_i_next_initerations46_triangular0_shift_x_s)
            1'b0 : rightShiftStage0_uid411_i_next_initerations46_triangular0_shift_x_q = i_llvm_fpga_pop_i2_initerations45_pop39_triangular7_out_data_out;
            1'b1 : rightShiftStage0_uid411_i_next_initerations46_triangular0_shift_x_q = rightShiftStage0Idx1_uid409_i_next_initerations46_triangular0_shift_x_q;
            default : rightShiftStage0_uid411_i_next_initerations46_triangular0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations46_triangular8_vt_select_0(BITSELECT,117)@5
    assign i_next_initerations46_triangular8_vt_select_0_b = rightShiftStage0_uid411_i_next_initerations46_triangular0_shift_x_q[0:0];

    // i_next_initerations46_triangular8_vt_join(BITJOIN,116)@5
    assign i_next_initerations46_triangular8_vt_join_q = {GND_q, i_next_initerations46_triangular8_vt_select_0_b};

    // i_last_initeration48_triangular10_sel_x(BITSELECT,209)@5
    assign i_last_initeration48_triangular10_sel_x_b = i_next_initerations46_triangular8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration49_triangular11(BLACKBOX,97)@5
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    triangular_i_llvm_fpga_push_i1_lastiniteration49_0 thei_llvm_fpga_push_i1_lastiniteration49_triangular11 (
        .in_data_in(i_last_initeration48_triangular10_sel_x_b),
        .in_feedback_stall_in_6(i_llvm_fpga_pipeline_keep_going47_triangular6_out_initeration_stall_out),
        .in_keep_going47(i_llvm_fpga_pipeline_keep_going47_triangular6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i1_lastiniteration49_triangular11_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i1_lastiniteration49_triangular11_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together131_aunroll_x_in_c0_eni12_1_tpl_2(DELAY,420)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together131_aunroll_x_in_c0_eni12_1_tpl_2_q <= '0;
        end
        else
        begin
            redist1_sync_together131_aunroll_x_in_c0_eni12_1_tpl_2_q <= $unsigned(redist0_sync_together131_aunroll_x_in_c0_eni12_1_tpl_1_q);
        end
    end

    // redist2_sync_together131_aunroll_x_in_c0_eni12_1_tpl_4(DELAY,421)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together131_aunroll_x_in_c0_eni12_1_tpl_4_delay_0 <= '0;
            redist2_sync_together131_aunroll_x_in_c0_eni12_1_tpl_4_q <= '0;
        end
        else
        begin
            redist2_sync_together131_aunroll_x_in_c0_eni12_1_tpl_4_delay_0 <= $unsigned(redist1_sync_together131_aunroll_x_in_c0_eni12_1_tpl_2_q);
            redist2_sync_together131_aunroll_x_in_c0_eni12_1_tpl_4_q <= redist2_sync_together131_aunroll_x_in_c0_eni12_1_tpl_4_delay_0;
        end
    end

    // i_llvm_fpga_pipeline_keep_going47_triangular6(BLACKBOX,83)@5
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    triangular_i_llvm_fpga_pipeline_keep_going47_0 thei_llvm_fpga_pipeline_keep_going47_triangular6 (
        .in_data_in(redist2_sync_together131_aunroll_x_in_c0_eni12_1_tpl_4_q),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration49_triangular11_out_feedback_out_6),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration49_triangular11_out_feedback_valid_out_6),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond57_triangular46_out_feedback_out_7),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond57_triangular46_out_feedback_valid_out_7),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(redist15_sync_together131_aunroll_x_in_i_valid_4_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going47_triangular6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going47_triangular6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going47_triangular6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going47_triangular6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going47_triangular6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going47_triangular6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,46)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going47_triangular6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going47_triangular6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going47_triangular6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going47_triangular6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,125)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going47_triangular6_out_pipeline_valid_out;

    // valid_fanout_reg6(REG,222)@1 + 1
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

    // i_unnamed_triangular14(LOGICAL,121)@2
    assign i_unnamed_triangular14_q = redist31_i_llvm_fpga_pop_i1_pop44_triangular12_out_data_out_1_q ^ VCC_q;

    // i_first_cleanup_xor53_or_triangular19(LOGICAL,62)@2
    assign i_first_cleanup_xor53_or_triangular19_q = i_unnamed_triangular14_q | i_first_cleanup_xor53_triangular4_q;

    // c_triangular_x_local_pmem(CONSTANT,44)
    assign c_triangular_x_local_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx354_triangular0_upper_bits_x_merged_bit_select(BITSELECT,416)@2
    assign i_arrayidx354_triangular0_upper_bits_x_merged_bit_select_b = c_triangular_x_local_pmem_q[63:9];
    assign i_arrayidx354_triangular0_upper_bits_x_merged_bit_select_c = c_triangular_x_local_pmem_q[8:0];

    // i_idxprom3031_triangular24_vt_const_63(CONSTANT,66)
    assign i_idxprom3031_triangular24_vt_const_63_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg4(REG,220)@1 + 1
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

    // valid_fanout_reg5(REG,221)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist14_sync_together131_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_notEnable(LOGICAL,516)
    assign redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_nor(LOGICAL,517)
    assign redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_nor_q = ~ (redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_notEnable_q | redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_sticky_ena_q);

    // redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_cmpReg(REG,515)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_sticky_ena(REG,518)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_nor_q == 1'b1)
        begin
            redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_sticky_ena_q <= $unsigned(redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_cmpReg_q);
        end
    end

    // redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_enaAnd(LOGICAL,519)
    assign redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_enaAnd_q = redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_sticky_ena_q & VCC_q;

    // redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_rdcnt(COUNTER,513)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_rdcnt_i <= $unsigned(redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_rdcnt_q = redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_rdcnt_i[0:0];

    // redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_wraddr(REG,514)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_wraddr_q <= $unsigned(redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_rdcnt_q);
        end
    end

    // redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_mem(DUALMEM,512)
    assign redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_mem_ia = $unsigned(i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out);
    assign redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_mem_aa = redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_wraddr_q;
    assign redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_mem_ab = redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_rdcnt_q;
    assign redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_mem_reset0 = ~ (resetn);
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
        .intended_device_family("Arria 10")
    ) redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_mem_dmem (
        .clocken1(redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_mem_reset0),
        .clock1(clock),
        .address_a(redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_mem_aa),
        .data_a(redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_mem_ab),
        .q_b(redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_mem_iq),
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
    assign redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_mem_q = redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_mem_iq[31:0];

    // i_llvm_fpga_push_i32_i20_039102_push43_triangular16(BLACKBOX,106)@5
    // out out_feedback_out_43@20000000
    // out out_feedback_valid_out_43@20000000
    triangular_i_llvm_fpga_push_i32_i20_039102_push43_0 thei_llvm_fpga_push_i32_i20_039102_push43_triangular16 (
        .in_data_in(redist28_i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out_3_mem_q),
        .in_feedback_stall_in_43(i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_feedback_stall_out_43),
        .in_keep_going47(i_llvm_fpga_pipeline_keep_going47_triangular6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_43(i_llvm_fpga_push_i32_i20_039102_push43_triangular16_out_feedback_out_43),
        .out_feedback_valid_out_43(i_llvm_fpga_push_i32_i20_039102_push43_triangular16_out_feedback_valid_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together131_aunroll_x_in_c0_eni12_3_tpl_1(DELAY,422)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together131_aunroll_x_in_c0_eni12_3_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together131_aunroll_x_in_c0_eni12_3_tpl_1_q <= $unsigned(in_c0_eni12_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15(BLACKBOX,92)@2
    // out out_feedback_stall_out_43@20000000
    triangular_i_llvm_fpga_pop_i32_i20_039102_pop43_0 thei_llvm_fpga_pop_i32_i20_039102_pop43_triangular15 (
        .in_data_in(redist3_sync_together131_aunroll_x_in_c0_eni12_3_tpl_1_q),
        .in_dir(redist0_sync_together131_aunroll_x_in_c0_eni12_1_tpl_1_q),
        .in_feedback_in_43(i_llvm_fpga_push_i32_i20_039102_push43_triangular16_out_feedback_out_43),
        .in_feedback_valid_in_43(i_llvm_fpga_push_i32_i20_039102_push43_triangular16_out_feedback_valid_out_43),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out),
        .out_feedback_stall_out_43(i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_feedback_stall_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom3243_triangular17_sel_x(BITSELECT,207)@2
    assign i_idxprom3243_triangular17_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i20_039102_pop43_triangular15_out_data_out[31:0]};

    // i_idxprom3243_triangular17_vt_select_31(BITSELECT,72)@2
    assign i_idxprom3243_triangular17_vt_select_31_b = i_idxprom3243_triangular17_sel_x_b[31:0];

    // i_idxprom3243_triangular17_vt_join(BITJOIN,71)@2
    assign i_idxprom3243_triangular17_vt_join_q = {i_idxprom3031_triangular24_vt_const_63_q, i_idxprom3243_triangular17_vt_select_31_b};

    // i_arrayidx354_triangular0_dupName_0_trunc_sel_x(BITSELECT,175)@2
    assign i_arrayidx354_triangular0_dupName_0_trunc_sel_x_b = i_idxprom3243_triangular17_vt_join_q[8:0];

    // i_arrayidx354_triangular0_narrow_x(BITSELECT,168)@2
    assign i_arrayidx354_triangular0_narrow_x_b = i_arrayidx354_triangular0_dupName_0_trunc_sel_x_b[6:0];

    // i_arrayidx354_triangular0_shift_join_x(BITJOIN,169)@2
    assign i_arrayidx354_triangular0_shift_join_x_q = {i_arrayidx354_triangular0_narrow_x_b, i_arrayidx335_triangular25_vt_const_1_q};

    // i_arrayidx354_triangular0_add_x(ADD,165)@2
    assign i_arrayidx354_triangular0_add_x_a = {1'b0, i_arrayidx354_triangular0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx354_triangular0_add_x_b = {1'b0, i_arrayidx354_triangular0_shift_join_x_q};
    assign i_arrayidx354_triangular0_add_x_o = $unsigned(i_arrayidx354_triangular0_add_x_a) + $unsigned(i_arrayidx354_triangular0_add_x_b);
    assign i_arrayidx354_triangular0_add_x_q = i_arrayidx354_triangular0_add_x_o[9:0];

    // i_arrayidx354_triangular0_dupName_2_trunc_sel_x(BITSELECT,176)@2
    assign i_arrayidx354_triangular0_dupName_2_trunc_sel_x_b = i_arrayidx354_triangular0_add_x_q[8:0];

    // i_arrayidx354_triangular0_append_upper_bits_x(BITJOIN,166)@2
    assign i_arrayidx354_triangular0_append_upper_bits_x_q = {i_arrayidx354_triangular0_upper_bits_x_merged_bit_select_b, i_arrayidx354_triangular0_dupName_2_trunc_sel_x_b};

    // i_arrayidx354_triangular18_vt_select_63(BITSELECT,52)@2
    assign i_arrayidx354_triangular18_vt_select_63_b = i_arrayidx354_triangular0_append_upper_bits_x_q[63:2];

    // i_arrayidx335_triangular25_vt_const_1(CONSTANT,47)
    assign i_arrayidx335_triangular25_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx354_triangular18_vt_join(BITJOIN,51)@2
    assign i_arrayidx354_triangular18_vt_join_q = {i_arrayidx354_triangular18_vt_select_63_b, i_arrayidx335_triangular25_vt_const_1_q};

    // i_llvm_fpga_mem_lm1_triangular20(BLACKBOX,81)@2
    // in in_i_stall@20000000
    // out out_lm1_triangular_avm_address@20000000
    // out out_lm1_triangular_avm_burstcount@20000000
    // out out_lm1_triangular_avm_byteenable@20000000
    // out out_lm1_triangular_avm_enable@20000000
    // out out_lm1_triangular_avm_read@20000000
    // out out_lm1_triangular_avm_write@20000000
    // out out_lm1_triangular_avm_writedata@20000000
    // out out_o_readdata@6
    // out out_o_stall@5
    // out out_o_valid@6
    triangular_i_llvm_fpga_mem_lm1_0 thei_llvm_fpga_mem_lm1_triangular20 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx354_triangular18_vt_join_q),
        .in_i_predicate(i_first_cleanup_xor53_or_triangular19_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg6_q),
        .in_lm1_triangular_avm_readdata(in_lm1_triangular_avm_readdata),
        .in_lm1_triangular_avm_readdatavalid(in_lm1_triangular_avm_readdatavalid),
        .in_lm1_triangular_avm_waitrequest(in_lm1_triangular_avm_waitrequest),
        .in_lm1_triangular_avm_writeack(in_lm1_triangular_avm_writeack),
        .out_lm1_triangular_avm_address(i_llvm_fpga_mem_lm1_triangular20_out_lm1_triangular_avm_address),
        .out_lm1_triangular_avm_burstcount(i_llvm_fpga_mem_lm1_triangular20_out_lm1_triangular_avm_burstcount),
        .out_lm1_triangular_avm_byteenable(i_llvm_fpga_mem_lm1_triangular20_out_lm1_triangular_avm_byteenable),
        .out_lm1_triangular_avm_enable(i_llvm_fpga_mem_lm1_triangular20_out_lm1_triangular_avm_enable),
        .out_lm1_triangular_avm_read(i_llvm_fpga_mem_lm1_triangular20_out_lm1_triangular_avm_read),
        .out_lm1_triangular_avm_write(i_llvm_fpga_mem_lm1_triangular20_out_lm1_triangular_avm_write),
        .out_lm1_triangular_avm_writedata(i_llvm_fpga_mem_lm1_triangular20_out_lm1_triangular_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm1_triangular20_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,135)
    assign out_lm1_triangular_avm_address = i_llvm_fpga_mem_lm1_triangular20_out_lm1_triangular_avm_address;
    assign out_lm1_triangular_avm_enable = i_llvm_fpga_mem_lm1_triangular20_out_lm1_triangular_avm_enable;
    assign out_lm1_triangular_avm_read = i_llvm_fpga_mem_lm1_triangular20_out_lm1_triangular_avm_read;
    assign out_lm1_triangular_avm_write = i_llvm_fpga_mem_lm1_triangular20_out_lm1_triangular_avm_write;
    assign out_lm1_triangular_avm_writedata = i_llvm_fpga_mem_lm1_triangular20_out_lm1_triangular_avm_writedata;
    assign out_lm1_triangular_avm_byteenable = i_llvm_fpga_mem_lm1_triangular20_out_lm1_triangular_avm_byteenable;
    assign out_lm1_triangular_avm_burstcount = i_llvm_fpga_mem_lm1_triangular20_out_lm1_triangular_avm_burstcount;

    // valid_fanout_reg12(REG,228)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist14_sync_together131_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist38_i_first_cleanup_xor53_or_triangular19_q_3(DELAY,457)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_first_cleanup_xor53_or_triangular19_q_3_delay_0 <= '0;
            redist38_i_first_cleanup_xor53_or_triangular19_q_3_delay_1 <= '0;
            redist38_i_first_cleanup_xor53_or_triangular19_q_3_q <= '0;
        end
        else
        begin
            redist38_i_first_cleanup_xor53_or_triangular19_q_3_delay_0 <= $unsigned(i_first_cleanup_xor53_or_triangular19_q);
            redist38_i_first_cleanup_xor53_or_triangular19_q_3_delay_1 <= redist38_i_first_cleanup_xor53_or_triangular19_q_3_delay_0;
            redist38_i_first_cleanup_xor53_or_triangular19_q_3_q <= redist38_i_first_cleanup_xor53_or_triangular19_q_3_delay_1;
        end
    end

    // valid_fanout_reg10(REG,226)@1 + 1
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

    // valid_fanout_reg11(REG,227)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist14_sync_together131_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi6_pop24104_push47_triangular28(BLACKBOX,98)@5
    // out out_feedback_out_47@20000000
    // out out_feedback_valid_out_47@20000000
    triangular_i_llvm_fpga_push_i1_memdep_phi6_pop24104_push47_0 thei_llvm_fpga_push_i1_memdep_phi6_pop24104_push47_triangular28 (
        .in_data_in(redist34_i_llvm_fpga_pop_i1_memdep_phi6_pop24104_pop47_triangular27_out_data_out_3_q),
        .in_feedback_stall_in_47(i_llvm_fpga_pop_i1_memdep_phi6_pop24104_pop47_triangular27_out_feedback_stall_out_47),
        .in_keep_going47(i_llvm_fpga_pipeline_keep_going47_triangular6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_47(i_llvm_fpga_push_i1_memdep_phi6_pop24104_push47_triangular28_out_feedback_out_47),
        .out_feedback_valid_out_47(i_llvm_fpga_push_i1_memdep_phi6_pop24104_push47_triangular28_out_feedback_valid_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together131_aunroll_x_in_c0_eni12_5_tpl_1(DELAY,424)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together131_aunroll_x_in_c0_eni12_5_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together131_aunroll_x_in_c0_eni12_5_tpl_1_q <= $unsigned(in_c0_eni12_5_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi6_pop24104_pop47_triangular27(BLACKBOX,85)@2
    // out out_feedback_stall_out_47@20000000
    triangular_i_llvm_fpga_pop_i1_memdep_phi6_pop24104_pop47_0 thei_llvm_fpga_pop_i1_memdep_phi6_pop24104_pop47_triangular27 (
        .in_data_in(redist5_sync_together131_aunroll_x_in_c0_eni12_5_tpl_1_q),
        .in_dir(redist0_sync_together131_aunroll_x_in_c0_eni12_1_tpl_1_q),
        .in_feedback_in_47(i_llvm_fpga_push_i1_memdep_phi6_pop24104_push47_triangular28_out_feedback_out_47),
        .in_feedback_valid_in_47(i_llvm_fpga_push_i1_memdep_phi6_pop24104_push47_triangular28_out_feedback_valid_out_47),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi6_pop24104_pop47_triangular27_out_data_out),
        .out_feedback_stall_out_47(i_llvm_fpga_pop_i1_memdep_phi6_pop24104_pop47_triangular27_out_feedback_stall_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist34_i_llvm_fpga_pop_i1_memdep_phi6_pop24104_pop47_triangular27_out_data_out_3(DELAY,453)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_llvm_fpga_pop_i1_memdep_phi6_pop24104_pop47_triangular27_out_data_out_3_delay_0 <= '0;
            redist34_i_llvm_fpga_pop_i1_memdep_phi6_pop24104_pop47_triangular27_out_data_out_3_delay_1 <= '0;
            redist34_i_llvm_fpga_pop_i1_memdep_phi6_pop24104_pop47_triangular27_out_data_out_3_q <= '0;
        end
        else
        begin
            redist34_i_llvm_fpga_pop_i1_memdep_phi6_pop24104_pop47_triangular27_out_data_out_3_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi6_pop24104_pop47_triangular27_out_data_out);
            redist34_i_llvm_fpga_pop_i1_memdep_phi6_pop24104_pop47_triangular27_out_data_out_3_delay_1 <= redist34_i_llvm_fpga_pop_i1_memdep_phi6_pop24104_pop47_triangular27_out_data_out_3_delay_0;
            redist34_i_llvm_fpga_pop_i1_memdep_phi6_pop24104_pop47_triangular27_out_data_out_3_q <= redist34_i_llvm_fpga_pop_i1_memdep_phi6_pop24104_pop47_triangular27_out_data_out_3_delay_1;
        end
    end

    // valid_fanout_reg9(REG,225)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist14_sync_together131_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist16_sync_together131_aunroll_x_in_i_valid_6(DELAY,435)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together131_aunroll_x_in_i_valid_6_delay_0 <= '0;
            redist16_sync_together131_aunroll_x_in_i_valid_6_q <= '0;
        end
        else
        begin
            redist16_sync_together131_aunroll_x_in_i_valid_6_delay_0 <= $unsigned(redist15_sync_together131_aunroll_x_in_i_valid_4_q);
            redist16_sync_together131_aunroll_x_in_i_valid_6_q <= redist16_sync_together131_aunroll_x_in_i_valid_6_delay_0;
        end
    end

    // redist17_sync_together131_aunroll_x_in_i_valid_7(DELAY,436)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together131_aunroll_x_in_i_valid_7_q <= '0;
        end
        else
        begin
            redist17_sync_together131_aunroll_x_in_i_valid_7_q <= $unsigned(redist16_sync_together131_aunroll_x_in_i_valid_6_q);
        end
    end

    // redist18_sync_together131_aunroll_x_in_i_valid_8(DELAY,437)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together131_aunroll_x_in_i_valid_8_q <= '0;
        end
        else
        begin
            redist18_sync_together131_aunroll_x_in_i_valid_8_q <= $unsigned(redist17_sync_together131_aunroll_x_in_i_valid_7_q);
        end
    end

    // valid_fanout_reg15(REG,231)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist18_sync_together131_aunroll_x_in_i_valid_8_q);
        end
    end

    // redist36_i_llvm_fpga_pipeline_keep_going47_triangular6_out_data_out_5(DELAY,455)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_llvm_fpga_pipeline_keep_going47_triangular6_out_data_out_5_delay_0 <= '0;
            redist36_i_llvm_fpga_pipeline_keep_going47_triangular6_out_data_out_5_delay_1 <= '0;
            redist36_i_llvm_fpga_pipeline_keep_going47_triangular6_out_data_out_5_delay_2 <= '0;
            redist36_i_llvm_fpga_pipeline_keep_going47_triangular6_out_data_out_5_delay_3 <= '0;
            redist36_i_llvm_fpga_pipeline_keep_going47_triangular6_out_data_out_5_q <= '0;
        end
        else
        begin
            redist36_i_llvm_fpga_pipeline_keep_going47_triangular6_out_data_out_5_delay_0 <= $unsigned(i_llvm_fpga_pipeline_keep_going47_triangular6_out_data_out);
            redist36_i_llvm_fpga_pipeline_keep_going47_triangular6_out_data_out_5_delay_1 <= redist36_i_llvm_fpga_pipeline_keep_going47_triangular6_out_data_out_5_delay_0;
            redist36_i_llvm_fpga_pipeline_keep_going47_triangular6_out_data_out_5_delay_2 <= redist36_i_llvm_fpga_pipeline_keep_going47_triangular6_out_data_out_5_delay_1;
            redist36_i_llvm_fpga_pipeline_keep_going47_triangular6_out_data_out_5_delay_3 <= redist36_i_llvm_fpga_pipeline_keep_going47_triangular6_out_data_out_5_delay_2;
            redist36_i_llvm_fpga_pipeline_keep_going47_triangular6_out_data_out_5_q <= redist36_i_llvm_fpga_pipeline_keep_going47_triangular6_out_data_out_5_delay_3;
        end
    end

    // i_mul_triangular31_bs2_merged_bit_select(BITSELECT,417)@6
    assign i_mul_triangular31_bs2_merged_bit_select_b = i_llvm_fpga_mem_lm122_triangular30_out_o_readdata[31:18];
    assign i_mul_triangular31_bs2_merged_bit_select_c = i_llvm_fpga_mem_lm122_triangular30_out_o_readdata[17:0];

    // i_mul_triangular31_bs1_merged_bit_select(BITSELECT,418)@6
    assign i_mul_triangular31_bs1_merged_bit_select_b = i_llvm_fpga_mem_lm1_triangular20_out_o_readdata[31:18];
    assign i_mul_triangular31_bs1_merged_bit_select_c = i_llvm_fpga_mem_lm1_triangular20_out_o_readdata[17:0];

    // i_mul_triangular31_ma3_cma(CHAINMULTADD,414)@6 + 3
    assign i_mul_triangular31_ma3_cma_reset = ~ (resetn);
    assign i_mul_triangular31_ma3_cma_ena0 = 1'b1;
    assign i_mul_triangular31_ma3_cma_ena1 = i_mul_triangular31_ma3_cma_ena0;
    assign i_mul_triangular31_ma3_cma_ena2 = i_mul_triangular31_ma3_cma_ena0;

    assign i_mul_triangular31_ma3_cma_a0 = i_mul_triangular31_bs1_merged_bit_select_b;
    assign i_mul_triangular31_ma3_cma_c0 = i_mul_triangular31_bs2_merged_bit_select_c;
    assign i_mul_triangular31_ma3_cma_a1 = i_mul_triangular31_bs2_merged_bit_select_b;
    assign i_mul_triangular31_ma3_cma_c1 = i_mul_triangular31_bs1_merged_bit_select_c;
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
    ) i_mul_triangular31_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_triangular31_ma3_cma_ena2, i_mul_triangular31_ma3_cma_ena1, i_mul_triangular31_ma3_cma_ena0 }),
        .aclr({ i_mul_triangular31_ma3_cma_reset, i_mul_triangular31_ma3_cma_reset }),
        .ay(i_mul_triangular31_ma3_cma_a1),
        .by(i_mul_triangular31_ma3_cma_a0),
        .ax(i_mul_triangular31_ma3_cma_c1),
        .bx(i_mul_triangular31_ma3_cma_c0),
        .resulta(i_mul_triangular31_ma3_cma_s0),
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
    i_mul_triangular31_ma3_cma_delay ( .xin(i_mul_triangular31_ma3_cma_s0), .xout(i_mul_triangular31_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_triangular31_ma3_cma_q = $unsigned(i_mul_triangular31_ma3_cma_qq[32:0]);

    // i_mul_triangular31_sums_align_1(BITSHIFT,267)@9
    assign i_mul_triangular31_sums_align_1_qint = { i_mul_triangular31_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul_triangular31_sums_align_1_q = i_mul_triangular31_sums_align_1_qint[50:0];

    // i_mul_triangular31_im0_cma(CHAINMULTADD,412)@6 + 3
    assign i_mul_triangular31_im0_cma_reset = ~ (resetn);
    assign i_mul_triangular31_im0_cma_ena0 = 1'b1;
    assign i_mul_triangular31_im0_cma_ena1 = i_mul_triangular31_im0_cma_ena0;
    assign i_mul_triangular31_im0_cma_ena2 = i_mul_triangular31_im0_cma_ena0;

    assign i_mul_triangular31_im0_cma_a0 = i_mul_triangular31_bs1_merged_bit_select_b;
    assign i_mul_triangular31_im0_cma_c0 = i_mul_triangular31_bs2_merged_bit_select_b;
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
    ) i_mul_triangular31_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_triangular31_im0_cma_ena2, i_mul_triangular31_im0_cma_ena1, i_mul_triangular31_im0_cma_ena0 }),
        .aclr({ i_mul_triangular31_im0_cma_reset, i_mul_triangular31_im0_cma_reset }),
        .ay(i_mul_triangular31_im0_cma_a0),
        .ax(i_mul_triangular31_im0_cma_c0),
        .resulta(i_mul_triangular31_im0_cma_s0),
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
    i_mul_triangular31_im0_cma_delay ( .xin(i_mul_triangular31_im0_cma_s0), .xout(i_mul_triangular31_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_triangular31_im0_cma_q = $unsigned(i_mul_triangular31_im0_cma_qq[27:0]);

    // i_mul_triangular31_im8_cma(CHAINMULTADD,413)@6 + 3
    assign i_mul_triangular31_im8_cma_reset = ~ (resetn);
    assign i_mul_triangular31_im8_cma_ena0 = 1'b1;
    assign i_mul_triangular31_im8_cma_ena1 = i_mul_triangular31_im8_cma_ena0;
    assign i_mul_triangular31_im8_cma_ena2 = i_mul_triangular31_im8_cma_ena0;

    assign i_mul_triangular31_im8_cma_a0 = i_mul_triangular31_bs1_merged_bit_select_c;
    assign i_mul_triangular31_im8_cma_c0 = i_mul_triangular31_bs2_merged_bit_select_c;
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
    ) i_mul_triangular31_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_triangular31_im8_cma_ena2, i_mul_triangular31_im8_cma_ena1, i_mul_triangular31_im8_cma_ena0 }),
        .aclr({ i_mul_triangular31_im8_cma_reset, i_mul_triangular31_im8_cma_reset }),
        .ay(i_mul_triangular31_im8_cma_a0),
        .ax(i_mul_triangular31_im8_cma_c0),
        .resulta(i_mul_triangular31_im8_cma_s0),
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
    i_mul_triangular31_im8_cma_delay ( .xin(i_mul_triangular31_im8_cma_s0), .xout(i_mul_triangular31_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_triangular31_im8_cma_q = $unsigned(i_mul_triangular31_im8_cma_qq[35:0]);

    // i_mul_triangular31_sums_join_0(BITJOIN,266)@9
    assign i_mul_triangular31_sums_join_0_q = {i_mul_triangular31_im0_cma_q, i_mul_triangular31_im8_cma_q};

    // i_mul_triangular31_sums_result_add_0_0(ADD,269)@9
    assign i_mul_triangular31_sums_result_add_0_0_a = {1'b0, i_mul_triangular31_sums_join_0_q};
    assign i_mul_triangular31_sums_result_add_0_0_b = {14'b00000000000000, i_mul_triangular31_sums_align_1_q};
    assign i_mul_triangular31_sums_result_add_0_0_o = $unsigned(i_mul_triangular31_sums_result_add_0_0_a) + $unsigned(i_mul_triangular31_sums_result_add_0_0_b);
    assign i_mul_triangular31_sums_result_add_0_0_q = i_mul_triangular31_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul_triangular31_sel_x(BITSELECT,131)@9
    assign bgTrunc_i_mul_triangular31_sel_x_in = i_mul_triangular31_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul_triangular31_sel_x_b = bgTrunc_i_mul_triangular31_sel_x_in[31:0];

    // valid_fanout_reg13(REG,229)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist16_sync_together131_aunroll_x_in_i_valid_6_q);
        end
    end

    // redist39_i_first_cleanup_xor53_or_triangular19_q_6(DELAY,458)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_first_cleanup_xor53_or_triangular19_q_6_delay_0 <= '0;
            redist39_i_first_cleanup_xor53_or_triangular19_q_6_delay_1 <= '0;
            redist39_i_first_cleanup_xor53_or_triangular19_q_6_q <= '0;
        end
        else
        begin
            redist39_i_first_cleanup_xor53_or_triangular19_q_6_delay_0 <= $unsigned(redist38_i_first_cleanup_xor53_or_triangular19_q_3_q);
            redist39_i_first_cleanup_xor53_or_triangular19_q_6_delay_1 <= redist39_i_first_cleanup_xor53_or_triangular19_q_6_delay_0;
            redist39_i_first_cleanup_xor53_or_triangular19_q_6_q <= redist39_i_first_cleanup_xor53_or_triangular19_q_6_delay_1;
        end
    end

    // redist22_i_memdep_phi6_or_triangular29_q_3(DELAY,441)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_memdep_phi6_or_triangular29_q_3_delay_0 <= '0;
            redist22_i_memdep_phi6_or_triangular29_q_3_delay_1 <= '0;
            redist22_i_memdep_phi6_or_triangular29_q_3_q <= '0;
        end
        else
        begin
            redist22_i_memdep_phi6_or_triangular29_q_3_delay_0 <= $unsigned(i_memdep_phi6_or_triangular29_q);
            redist22_i_memdep_phi6_or_triangular29_q_3_delay_1 <= redist22_i_memdep_phi6_or_triangular29_q_3_delay_0;
            redist22_i_memdep_phi6_or_triangular29_q_3_q <= redist22_i_memdep_phi6_or_triangular29_q_3_delay_1;
        end
    end

    // c_triangular_A_local_pmem(CONSTANT,43)
    assign c_triangular_A_local_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx335_triangular0_upper_bits_x_merged_bit_select(BITSELECT,415)@5
    assign i_arrayidx335_triangular0_upper_bits_x_merged_bit_select_b = c_triangular_A_local_pmem_q[63:16];
    assign i_arrayidx335_triangular0_upper_bits_x_merged_bit_select_c = c_triangular_A_local_pmem_q[15:0];

    // valid_fanout_reg7(REG,223)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist14_sync_together131_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_n4633_triangular21(BLACKBOX,78)@5
    triangular_i_llvm_fpga_ffwd_dest_i32_n4633_0 thei_llvm_fpga_ffwd_dest_i32_n4633_triangular21 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i32_n4633_triangular21_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom3842_triangular22_sel_x(BITSELECT,208)@5
    assign i_idxprom3842_triangular22_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_ffwd_dest_i32_n4633_triangular21_out_dest_data_out_2_0[31:0]};

    // i_idxprom3842_triangular22_vt_select_31(BITSELECT,76)@5
    assign i_idxprom3842_triangular22_vt_select_31_b = i_idxprom3842_triangular22_sel_x_b[31:0];

    // i_idxprom3842_triangular22_vt_join(BITJOIN,75)@5
    assign i_idxprom3842_triangular22_vt_join_q = {i_idxprom3031_triangular24_vt_const_63_q, i_idxprom3842_triangular22_vt_select_31_b};

    // i_arrayidx396_triangular0_dupName_3_trunc_sel_x(BITSELECT,199)@5
    assign i_arrayidx396_triangular0_dupName_3_trunc_sel_x_b = i_idxprom3842_triangular22_vt_join_q[15:0];

    // i_arrayidx396_triangular0_narrow_x(BITSELECT,182)@5
    assign i_arrayidx396_triangular0_narrow_x_b = i_arrayidx396_triangular0_dupName_3_trunc_sel_x_b[13:0];

    // i_arrayidx396_triangular0_shift_join_x(BITJOIN,183)@5
    assign i_arrayidx396_triangular0_shift_join_x_q = {i_arrayidx396_triangular0_narrow_x_b, i_arrayidx335_triangular25_vt_const_1_q};

    // i_arrayidx335_triangular0_mult_multconst_x(CONSTANT,158)
    assign i_arrayidx335_triangular0_mult_multconst_x_q = $unsigned(7'b0000000);

    // valid_fanout_reg8(REG,224)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist13_sync_together131_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg16(REG,232)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist14_sync_together131_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_i32_196(CONSTANT,41)
    assign c_i32_196_q = $unsigned(32'b11111111111111111111111111111111);

    // redist27_i_llvm_fpga_pop_i32_k_035_pop37_triangular23_out_data_out_2(DELAY,446)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_pop_i32_k_035_pop37_triangular23_out_data_out_2_q <= '0;
        end
        else
        begin
            redist27_i_llvm_fpga_pop_i32_k_035_pop37_triangular23_out_data_out_2_q <= $unsigned(redist26_i_llvm_fpga_pop_i32_k_035_pop37_triangular23_out_data_out_1_q);
        end
    end

    // i_dec_triangular37(ADD,59)@5
    assign i_dec_triangular37_a = {1'b0, redist27_i_llvm_fpga_pop_i32_k_035_pop37_triangular23_out_data_out_2_q};
    assign i_dec_triangular37_b = {1'b0, c_i32_196_q};
    assign i_dec_triangular37_o = $unsigned(i_dec_triangular37_a) + $unsigned(i_dec_triangular37_b);
    assign i_dec_triangular37_q = i_dec_triangular37_o[32:0];

    // bgTrunc_i_dec_triangular37_sel_x(BITSELECT,129)@5
    assign bgTrunc_i_dec_triangular37_sel_x_b = i_dec_triangular37_q[31:0];

    // i_llvm_fpga_push_i32_k_035_push37_triangular38(BLACKBOX,107)@5
    // out out_feedback_out_37@20000000
    // out out_feedback_valid_out_37@20000000
    triangular_i_llvm_fpga_push_i32_k_035_push37_0 thei_llvm_fpga_push_i32_k_035_push37_triangular38 (
        .in_data_in(bgTrunc_i_dec_triangular37_sel_x_b),
        .in_feedback_stall_in_37(i_llvm_fpga_pop_i32_k_035_pop37_triangular23_out_feedback_stall_out_37),
        .in_keep_going47(i_llvm_fpga_pipeline_keep_going47_triangular6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(),
        .out_feedback_out_37(i_llvm_fpga_push_i32_k_035_push37_triangular38_out_feedback_out_37),
        .out_feedback_valid_out_37(i_llvm_fpga_push_i32_k_035_push37_triangular38_out_feedback_valid_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together131_aunroll_x_in_c0_eni12_4_tpl_2(DELAY,423)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together131_aunroll_x_in_c0_eni12_4_tpl_2_delay_0 <= '0;
            redist4_sync_together131_aunroll_x_in_c0_eni12_4_tpl_2_q <= '0;
        end
        else
        begin
            redist4_sync_together131_aunroll_x_in_c0_eni12_4_tpl_2_delay_0 <= $unsigned(in_c0_eni12_4_tpl);
            redist4_sync_together131_aunroll_x_in_c0_eni12_4_tpl_2_q <= redist4_sync_together131_aunroll_x_in_c0_eni12_4_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_i32_k_035_pop37_triangular23(BLACKBOX,93)@3
    // out out_feedback_stall_out_37@20000000
    triangular_i_llvm_fpga_pop_i32_k_035_pop37_0 thei_llvm_fpga_pop_i32_k_035_pop37_triangular23 (
        .in_data_in(redist4_sync_together131_aunroll_x_in_c0_eni12_4_tpl_2_q),
        .in_dir(redist1_sync_together131_aunroll_x_in_c0_eni12_1_tpl_2_q),
        .in_feedback_in_37(i_llvm_fpga_push_i32_k_035_push37_triangular38_out_feedback_out_37),
        .in_feedback_valid_in_37(i_llvm_fpga_push_i32_k_035_push37_triangular38_out_feedback_valid_out_37),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_i32_k_035_pop37_triangular23_out_data_out),
        .out_feedback_stall_out_37(i_llvm_fpga_pop_i32_k_035_pop37_triangular23_out_feedback_stall_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist26_i_llvm_fpga_pop_i32_k_035_pop37_triangular23_out_data_out_1(DELAY,445)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_pop_i32_k_035_pop37_triangular23_out_data_out_1_q <= '0;
        end
        else
        begin
            redist26_i_llvm_fpga_pop_i32_k_035_pop37_triangular23_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_k_035_pop37_triangular23_out_data_out);
        end
    end

    // i_idxprom3031_triangular24_sel_x(BITSELECT,206)@4
    assign i_idxprom3031_triangular24_sel_x_b = {32'b00000000000000000000000000000000, redist26_i_llvm_fpga_pop_i32_k_035_pop37_triangular23_out_data_out_1_q[31:0]};

    // i_idxprom3031_triangular24_vt_select_31(BITSELECT,68)@4
    assign i_idxprom3031_triangular24_vt_select_31_b = i_idxprom3031_triangular24_sel_x_b[31:0];

    // i_idxprom3031_triangular24_vt_join(BITJOIN,67)@4
    assign i_idxprom3031_triangular24_vt_join_q = {i_idxprom3031_triangular24_vt_const_63_q, i_idxprom3031_triangular24_vt_select_31_b};

    // i_arrayidx335_triangular0_dupName_0_trunc_sel_x(BITSELECT,160)@4
    assign i_arrayidx335_triangular0_dupName_0_trunc_sel_x_b = i_idxprom3031_triangular24_vt_join_q[15:0];

    // highBBits_uid285_i_arrayidx335_triangular0_mult_x(BITSELECT,284)@4
    assign highBBits_uid285_i_arrayidx335_triangular0_mult_x_b = i_arrayidx335_triangular0_dupName_0_trunc_sel_x_b[15:3];

    // highBBits_uid280_i_arrayidx335_triangular0_mult_x(BITSELECT,279)@4
    assign highBBits_uid280_i_arrayidx335_triangular0_mult_x_b = i_arrayidx335_triangular0_dupName_0_trunc_sel_x_b[15:1];

    // addsumAHighB_uid281_i_arrayidx335_triangular0_mult_x(ADD,280)@4
    assign addsumAHighB_uid281_i_arrayidx335_triangular0_mult_x_a = {1'b0, i_arrayidx335_triangular0_dupName_0_trunc_sel_x_b};
    assign addsumAHighB_uid281_i_arrayidx335_triangular0_mult_x_b = {2'b00, highBBits_uid280_i_arrayidx335_triangular0_mult_x_b};
    assign addsumAHighB_uid281_i_arrayidx335_triangular0_mult_x_o = $unsigned(addsumAHighB_uid281_i_arrayidx335_triangular0_mult_x_a) + $unsigned(addsumAHighB_uid281_i_arrayidx335_triangular0_mult_x_b);
    assign addsumAHighB_uid281_i_arrayidx335_triangular0_mult_x_q = addsumAHighB_uid281_i_arrayidx335_triangular0_mult_x_o[16:0];

    // lowRangeB_uid279_i_arrayidx335_triangular0_mult_x(BITSELECT,278)@4
    assign lowRangeB_uid279_i_arrayidx335_triangular0_mult_x_in = i_arrayidx335_triangular0_dupName_0_trunc_sel_x_b[0:0];
    assign lowRangeB_uid279_i_arrayidx335_triangular0_mult_x_b = lowRangeB_uid279_i_arrayidx335_triangular0_mult_x_in[0:0];

    // add_uid282_i_arrayidx335_triangular0_mult_x(BITJOIN,281)@4
    assign add_uid282_i_arrayidx335_triangular0_mult_x_q = {addsumAHighB_uid281_i_arrayidx335_triangular0_mult_x_q, lowRangeB_uid279_i_arrayidx335_triangular0_mult_x_b};

    // a_subconst_25_sumAHighB_uid286_i_arrayidx335_triangular0_mult_x(ADD,285)@4
    assign a_subconst_25_sumAHighB_uid286_i_arrayidx335_triangular0_mult_x_a = {1'b0, add_uid282_i_arrayidx335_triangular0_mult_x_q};
    assign a_subconst_25_sumAHighB_uid286_i_arrayidx335_triangular0_mult_x_b = {6'b000000, highBBits_uid285_i_arrayidx335_triangular0_mult_x_b};
    assign a_subconst_25_sumAHighB_uid286_i_arrayidx335_triangular0_mult_x_o = $unsigned(a_subconst_25_sumAHighB_uid286_i_arrayidx335_triangular0_mult_x_a) + $unsigned(a_subconst_25_sumAHighB_uid286_i_arrayidx335_triangular0_mult_x_b);
    assign a_subconst_25_sumAHighB_uid286_i_arrayidx335_triangular0_mult_x_q = a_subconst_25_sumAHighB_uid286_i_arrayidx335_triangular0_mult_x_o[18:0];

    // lowRangeB_uid284_i_arrayidx335_triangular0_mult_x(BITSELECT,283)@4
    assign lowRangeB_uid284_i_arrayidx335_triangular0_mult_x_in = i_arrayidx335_triangular0_dupName_0_trunc_sel_x_b[2:0];
    assign lowRangeB_uid284_i_arrayidx335_triangular0_mult_x_b = lowRangeB_uid284_i_arrayidx335_triangular0_mult_x_in[2:0];

    // a_subconst_25_uid287_i_arrayidx335_triangular0_mult_x(BITJOIN,286)@4
    assign a_subconst_25_uid287_i_arrayidx335_triangular0_mult_x_q = {a_subconst_25_sumAHighB_uid286_i_arrayidx335_triangular0_mult_x_q, lowRangeB_uid284_i_arrayidx335_triangular0_mult_x_b};

    // sR_bottomRange_uid291_i_arrayidx335_triangular0_mult_x(BITSELECT,290)@4
    assign sR_bottomRange_uid291_i_arrayidx335_triangular0_mult_x_in = a_subconst_25_uid287_i_arrayidx335_triangular0_mult_x_q[20:0];
    assign sR_bottomRange_uid291_i_arrayidx335_triangular0_mult_x_b = sR_bottomRange_uid291_i_arrayidx335_triangular0_mult_x_in[20:0];

    // sR_bottomExtension_uid290_i_arrayidx335_triangular0_mult_x(CONSTANT,289)
    assign sR_bottomExtension_uid290_i_arrayidx335_triangular0_mult_x_q = $unsigned(4'b0000);

    // sR_mergedSignalTM_uid292_i_arrayidx335_triangular0_mult_x(BITJOIN,291)@4
    assign sR_mergedSignalTM_uid292_i_arrayidx335_triangular0_mult_x_q = {sR_bottomRange_uid291_i_arrayidx335_triangular0_mult_x_b, sR_bottomExtension_uid290_i_arrayidx335_triangular0_mult_x_q};

    // i_arrayidx335_triangular0_mult_extender_x(BITJOIN,157)@4
    assign i_arrayidx335_triangular0_mult_extender_x_q = {i_arrayidx335_triangular0_mult_multconst_x_q, sR_mergedSignalTM_uid292_i_arrayidx335_triangular0_mult_x_q};

    // i_arrayidx335_triangular0_dupName_1_trunc_sel_x(BITSELECT,161)@4
    assign i_arrayidx335_triangular0_dupName_1_trunc_sel_x_b = i_arrayidx335_triangular0_mult_extender_x_q[15:0];

    // redist20_i_arrayidx335_triangular0_dupName_1_trunc_sel_x_b_1(DELAY,439)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_arrayidx335_triangular0_dupName_1_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist20_i_arrayidx335_triangular0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx335_triangular0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx335_triangular0_add_x(ADD,141)@5
    assign i_arrayidx335_triangular0_add_x_a = {1'b0, i_arrayidx335_triangular0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx335_triangular0_add_x_b = {1'b0, redist20_i_arrayidx335_triangular0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx335_triangular0_add_x_o = $unsigned(i_arrayidx335_triangular0_add_x_a) + $unsigned(i_arrayidx335_triangular0_add_x_b);
    assign i_arrayidx335_triangular0_add_x_q = i_arrayidx335_triangular0_add_x_o[16:0];

    // i_arrayidx335_triangular0_dupName_2_trunc_sel_x(BITSELECT,162)@5
    assign i_arrayidx335_triangular0_dupName_2_trunc_sel_x_b = i_arrayidx335_triangular0_add_x_q[15:0];

    // i_arrayidx396_triangular0_dupName_0_add_x(ADD,187)@5
    assign i_arrayidx396_triangular0_dupName_0_add_x_a = {1'b0, i_arrayidx335_triangular0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx396_triangular0_dupName_0_add_x_b = {1'b0, i_arrayidx396_triangular0_shift_join_x_q};
    assign i_arrayidx396_triangular0_dupName_0_add_x_o = $unsigned(i_arrayidx396_triangular0_dupName_0_add_x_a) + $unsigned(i_arrayidx396_triangular0_dupName_0_add_x_b);
    assign i_arrayidx396_triangular0_dupName_0_add_x_q = i_arrayidx396_triangular0_dupName_0_add_x_o[16:0];

    // i_arrayidx396_triangular0_dupName_5_trunc_sel_x(BITSELECT,200)@5
    assign i_arrayidx396_triangular0_dupName_5_trunc_sel_x_b = i_arrayidx396_triangular0_dupName_0_add_x_q[15:0];

    // i_arrayidx396_triangular0_append_upper_bits_x(BITJOIN,178)@5
    assign i_arrayidx396_triangular0_append_upper_bits_x_q = {i_arrayidx335_triangular0_upper_bits_x_merged_bit_select_b, i_arrayidx396_triangular0_dupName_5_trunc_sel_x_b};

    // i_arrayidx396_triangular32_vt_select_63(BITSELECT,55)@5
    assign i_arrayidx396_triangular32_vt_select_63_b = i_arrayidx396_triangular0_append_upper_bits_x_q[63:2];

    // redist41_i_arrayidx396_triangular32_vt_select_63_b_3_inputreg0(DELAY,520)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_arrayidx396_triangular32_vt_select_63_b_3_inputreg0_q <= '0;
        end
        else
        begin
            redist41_i_arrayidx396_triangular32_vt_select_63_b_3_inputreg0_q <= $unsigned(i_arrayidx396_triangular32_vt_select_63_b);
        end
    end

    // redist41_i_arrayidx396_triangular32_vt_select_63_b_3(DELAY,460)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_arrayidx396_triangular32_vt_select_63_b_3_delay_0 <= '0;
            redist41_i_arrayidx396_triangular32_vt_select_63_b_3_q <= '0;
        end
        else
        begin
            redist41_i_arrayidx396_triangular32_vt_select_63_b_3_delay_0 <= $unsigned(redist41_i_arrayidx396_triangular32_vt_select_63_b_3_inputreg0_q);
            redist41_i_arrayidx396_triangular32_vt_select_63_b_3_q <= redist41_i_arrayidx396_triangular32_vt_select_63_b_3_delay_0;
        end
    end

    // i_arrayidx396_triangular32_vt_join(BITJOIN,54)@8
    assign i_arrayidx396_triangular32_vt_join_q = {redist41_i_arrayidx396_triangular32_vt_select_63_b_3_q, i_arrayidx335_triangular25_vt_const_1_q};

    // i_llvm_fpga_mem_lm143_triangular33(BLACKBOX,80)@8
    // in in_i_stall@20000000
    // out out_lm143_triangular_avm_address@20000000
    // out out_lm143_triangular_avm_burstcount@20000000
    // out out_lm143_triangular_avm_byteenable@20000000
    // out out_lm143_triangular_avm_enable@20000000
    // out out_lm143_triangular_avm_read@20000000
    // out out_lm143_triangular_avm_write@20000000
    // out out_lm143_triangular_avm_writedata@20000000
    // out out_o_readdata@9
    // out out_o_stall@9
    // out out_o_valid@9
    triangular_i_llvm_fpga_mem_lm143_0 thei_llvm_fpga_mem_lm143_triangular33 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx396_triangular32_vt_join_q),
        .in_i_dependence(redist22_i_memdep_phi6_or_triangular29_q_3_q),
        .in_i_predicate(redist39_i_first_cleanup_xor53_or_triangular19_q_6_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg13_q),
        .in_lm143_triangular_avm_readdata(in_lm143_triangular_avm_readdata),
        .in_lm143_triangular_avm_readdatavalid(in_lm143_triangular_avm_readdatavalid),
        .in_lm143_triangular_avm_waitrequest(in_lm143_triangular_avm_waitrequest),
        .in_lm143_triangular_avm_writeack(in_lm143_triangular_avm_writeack),
        .out_lm143_triangular_avm_address(i_llvm_fpga_mem_lm143_triangular33_out_lm143_triangular_avm_address),
        .out_lm143_triangular_avm_burstcount(i_llvm_fpga_mem_lm143_triangular33_out_lm143_triangular_avm_burstcount),
        .out_lm143_triangular_avm_byteenable(i_llvm_fpga_mem_lm143_triangular33_out_lm143_triangular_avm_byteenable),
        .out_lm143_triangular_avm_enable(i_llvm_fpga_mem_lm143_triangular33_out_lm143_triangular_avm_enable),
        .out_lm143_triangular_avm_read(i_llvm_fpga_mem_lm143_triangular33_out_lm143_triangular_avm_read),
        .out_lm143_triangular_avm_write(i_llvm_fpga_mem_lm143_triangular33_out_lm143_triangular_avm_write),
        .out_lm143_triangular_avm_writedata(i_llvm_fpga_mem_lm143_triangular33_out_lm143_triangular_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm143_triangular33_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sub40_triangular34(SUB,120)@9
    assign i_sub40_triangular34_a = {1'b0, i_llvm_fpga_mem_lm143_triangular33_out_o_readdata};
    assign i_sub40_triangular34_b = {1'b0, bgTrunc_i_mul_triangular31_sel_x_b};
    assign i_sub40_triangular34_o = $unsigned(i_sub40_triangular34_a) - $unsigned(i_sub40_triangular34_b);
    assign i_sub40_triangular34_q = i_sub40_triangular34_o[32:0];

    // bgTrunc_i_sub40_triangular34_sel_x(BITSELECT,132)@9
    assign bgTrunc_i_sub40_triangular34_sel_x_b = $unsigned(i_sub40_triangular34_q[31:0]);

    // valid_fanout_reg14(REG,230)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist17_sync_together131_aunroll_x_in_i_valid_7_q);
        end
    end

    // redist40_i_first_cleanup_xor53_or_triangular19_q_7(DELAY,459)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_first_cleanup_xor53_or_triangular19_q_7_q <= '0;
        end
        else
        begin
            redist40_i_first_cleanup_xor53_or_triangular19_q_7_q <= $unsigned(redist39_i_first_cleanup_xor53_or_triangular19_q_6_q);
        end
    end

    // redist42_i_arrayidx396_triangular32_vt_join_q_1(DELAY,461)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_i_arrayidx396_triangular32_vt_join_q_1_q <= '0;
        end
        else
        begin
            redist42_i_arrayidx396_triangular32_vt_join_q_1_q <= $unsigned(i_arrayidx396_triangular32_vt_join_q);
        end
    end

    // i_llvm_fpga_mem_memdep_5_triangular35(BLACKBOX,82)@9
    // out out_memdep_5_triangular_avm_address@20000000
    // out out_memdep_5_triangular_avm_burstcount@20000000
    // out out_memdep_5_triangular_avm_byteenable@20000000
    // out out_memdep_5_triangular_avm_enable@20000000
    // out out_memdep_5_triangular_avm_read@20000000
    // out out_memdep_5_triangular_avm_write@20000000
    // out out_memdep_5_triangular_avm_writedata@20000000
    // out out_o_stall@10
    // out out_o_valid@10
    // out out_o_writeack@10
    triangular_i_llvm_fpga_mem_memdep_5_0 thei_llvm_fpga_mem_memdep_5_triangular35 (
        .in_flush(in_flush),
        .in_i_address(redist42_i_arrayidx396_triangular32_vt_join_q_1_q),
        .in_i_predicate(redist40_i_first_cleanup_xor53_or_triangular19_q_7_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg14_q),
        .in_i_writedata(bgTrunc_i_sub40_triangular34_sel_x_b),
        .in_memdep_5_triangular_avm_readdata(in_memdep_5_triangular_avm_readdata),
        .in_memdep_5_triangular_avm_readdatavalid(in_memdep_5_triangular_avm_readdatavalid),
        .in_memdep_5_triangular_avm_waitrequest(in_memdep_5_triangular_avm_waitrequest),
        .in_memdep_5_triangular_avm_writeack(in_memdep_5_triangular_avm_writeack),
        .out_memdep_5_triangular_avm_address(i_llvm_fpga_mem_memdep_5_triangular35_out_memdep_5_triangular_avm_address),
        .out_memdep_5_triangular_avm_burstcount(i_llvm_fpga_mem_memdep_5_triangular35_out_memdep_5_triangular_avm_burstcount),
        .out_memdep_5_triangular_avm_byteenable(i_llvm_fpga_mem_memdep_5_triangular35_out_memdep_5_triangular_avm_byteenable),
        .out_memdep_5_triangular_avm_enable(i_llvm_fpga_mem_memdep_5_triangular35_out_memdep_5_triangular_avm_enable),
        .out_memdep_5_triangular_avm_read(i_llvm_fpga_mem_memdep_5_triangular35_out_memdep_5_triangular_avm_read),
        .out_memdep_5_triangular_avm_write(i_llvm_fpga_mem_memdep_5_triangular35_out_memdep_5_triangular_avm_write),
        .out_memdep_5_triangular_avm_writedata(i_llvm_fpga_mem_memdep_5_triangular35_out_memdep_5_triangular_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(i_llvm_fpga_mem_memdep_5_triangular35_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi_push38_triangular36(BLACKBOX,99)@10
    // out out_feedback_out_38@20000000
    // out out_feedback_valid_out_38@20000000
    triangular_i_llvm_fpga_push_i1_memdep_phi_push38_0 thei_llvm_fpga_push_i1_memdep_phi_push38_triangular36 (
        .in_data_in(i_llvm_fpga_mem_memdep_5_triangular35_out_o_writeack),
        .in_feedback_stall_in_38(i_llvm_fpga_pop_i1_memdep_phi_pop38_triangular26_out_feedback_stall_out_38),
        .in_keep_going47(redist36_i_llvm_fpga_pipeline_keep_going47_triangular6_out_data_out_5_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_38(i_llvm_fpga_push_i1_memdep_phi_push38_triangular36_out_feedback_out_38),
        .out_feedback_valid_out_38(i_llvm_fpga_push_i1_memdep_phi_push38_triangular36_out_feedback_valid_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi_pop38_triangular26(BLACKBOX,86)@5
    // out out_feedback_stall_out_38@20000000
    triangular_i_llvm_fpga_pop_i1_memdep_phi_pop38_0 thei_llvm_fpga_pop_i1_memdep_phi_pop38_triangular26 (
        .in_data_in(GND_q),
        .in_dir(redist2_sync_together131_aunroll_x_in_c0_eni12_1_tpl_4_q),
        .in_feedback_in_38(i_llvm_fpga_push_i1_memdep_phi_push38_triangular36_out_feedback_out_38),
        .in_feedback_valid_in_38(i_llvm_fpga_push_i1_memdep_phi_push38_triangular36_out_feedback_valid_out_38),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop38_triangular26_out_data_out),
        .out_feedback_stall_out_38(i_llvm_fpga_pop_i1_memdep_phi_pop38_triangular26_out_feedback_stall_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_memdep_phi6_or_triangular29(LOGICAL,112)@5
    assign i_memdep_phi6_or_triangular29_q = i_llvm_fpga_pop_i1_memdep_phi_pop38_triangular26_out_data_out | redist34_i_llvm_fpga_pop_i1_memdep_phi6_pop24104_pop47_triangular27_out_data_out_3_q;

    // i_arrayidx335_triangular0_dupName_3_trunc_sel_x(BITSELECT,163)@2
    assign i_arrayidx335_triangular0_dupName_3_trunc_sel_x_b = i_idxprom3243_triangular17_vt_join_q[15:0];

    // i_arrayidx335_triangular0_narrow_x(BITSELECT,146)@2
    assign i_arrayidx335_triangular0_narrow_x_b = i_arrayidx335_triangular0_dupName_3_trunc_sel_x_b[13:0];

    // redist21_i_arrayidx335_triangular0_narrow_x_b_3(DELAY,440)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_arrayidx335_triangular0_narrow_x_b_3_delay_0 <= '0;
            redist21_i_arrayidx335_triangular0_narrow_x_b_3_delay_1 <= '0;
            redist21_i_arrayidx335_triangular0_narrow_x_b_3_q <= '0;
        end
        else
        begin
            redist21_i_arrayidx335_triangular0_narrow_x_b_3_delay_0 <= $unsigned(i_arrayidx335_triangular0_narrow_x_b);
            redist21_i_arrayidx335_triangular0_narrow_x_b_3_delay_1 <= redist21_i_arrayidx335_triangular0_narrow_x_b_3_delay_0;
            redist21_i_arrayidx335_triangular0_narrow_x_b_3_q <= redist21_i_arrayidx335_triangular0_narrow_x_b_3_delay_1;
        end
    end

    // i_arrayidx335_triangular0_shift_join_x(BITJOIN,147)@5
    assign i_arrayidx335_triangular0_shift_join_x_q = {redist21_i_arrayidx335_triangular0_narrow_x_b_3_q, i_arrayidx335_triangular25_vt_const_1_q};

    // i_arrayidx335_triangular0_dupName_0_add_x(ADD,151)@5
    assign i_arrayidx335_triangular0_dupName_0_add_x_a = {1'b0, i_arrayidx335_triangular0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx335_triangular0_dupName_0_add_x_b = {1'b0, i_arrayidx335_triangular0_shift_join_x_q};
    assign i_arrayidx335_triangular0_dupName_0_add_x_o = $unsigned(i_arrayidx335_triangular0_dupName_0_add_x_a) + $unsigned(i_arrayidx335_triangular0_dupName_0_add_x_b);
    assign i_arrayidx335_triangular0_dupName_0_add_x_q = i_arrayidx335_triangular0_dupName_0_add_x_o[16:0];

    // i_arrayidx335_triangular0_dupName_5_trunc_sel_x(BITSELECT,164)@5
    assign i_arrayidx335_triangular0_dupName_5_trunc_sel_x_b = i_arrayidx335_triangular0_dupName_0_add_x_q[15:0];

    // i_arrayidx335_triangular0_append_upper_bits_x(BITJOIN,142)@5
    assign i_arrayidx335_triangular0_append_upper_bits_x_q = {i_arrayidx335_triangular0_upper_bits_x_merged_bit_select_b, i_arrayidx335_triangular0_dupName_5_trunc_sel_x_b};

    // i_arrayidx335_triangular25_vt_select_63(BITSELECT,49)@5
    assign i_arrayidx335_triangular25_vt_select_63_b = i_arrayidx335_triangular0_append_upper_bits_x_q[63:2];

    // i_arrayidx335_triangular25_vt_join(BITJOIN,48)@5
    assign i_arrayidx335_triangular25_vt_join_q = {i_arrayidx335_triangular25_vt_select_63_b, i_arrayidx335_triangular25_vt_const_1_q};

    // i_llvm_fpga_mem_lm122_triangular30(BLACKBOX,79)@5
    // in in_i_stall@20000000
    // out out_lm122_triangular_avm_address@20000000
    // out out_lm122_triangular_avm_burstcount@20000000
    // out out_lm122_triangular_avm_byteenable@20000000
    // out out_lm122_triangular_avm_enable@20000000
    // out out_lm122_triangular_avm_read@20000000
    // out out_lm122_triangular_avm_write@20000000
    // out out_lm122_triangular_avm_writedata@20000000
    // out out_o_readdata@6
    // out out_o_stall@6
    // out out_o_valid@6
    triangular_i_llvm_fpga_mem_lm122_0 thei_llvm_fpga_mem_lm122_triangular30 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx335_triangular25_vt_join_q),
        .in_i_dependence(i_memdep_phi6_or_triangular29_q),
        .in_i_predicate(redist38_i_first_cleanup_xor53_or_triangular19_q_3_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg12_q),
        .in_lm122_triangular_avm_readdata(in_lm122_triangular_avm_readdata),
        .in_lm122_triangular_avm_readdatavalid(in_lm122_triangular_avm_readdatavalid),
        .in_lm122_triangular_avm_waitrequest(in_lm122_triangular_avm_waitrequest),
        .in_lm122_triangular_avm_writeack(in_lm122_triangular_avm_writeack),
        .out_lm122_triangular_avm_address(i_llvm_fpga_mem_lm122_triangular30_out_lm122_triangular_avm_address),
        .out_lm122_triangular_avm_burstcount(i_llvm_fpga_mem_lm122_triangular30_out_lm122_triangular_avm_burstcount),
        .out_lm122_triangular_avm_byteenable(i_llvm_fpga_mem_lm122_triangular30_out_lm122_triangular_avm_byteenable),
        .out_lm122_triangular_avm_enable(i_llvm_fpga_mem_lm122_triangular30_out_lm122_triangular_avm_enable),
        .out_lm122_triangular_avm_read(i_llvm_fpga_mem_lm122_triangular30_out_lm122_triangular_avm_read),
        .out_lm122_triangular_avm_write(i_llvm_fpga_mem_lm122_triangular30_out_lm122_triangular_avm_write),
        .out_lm122_triangular_avm_writedata(i_llvm_fpga_mem_lm122_triangular30_out_lm122_triangular_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm122_triangular30_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,137)
    assign out_lm122_triangular_avm_address = i_llvm_fpga_mem_lm122_triangular30_out_lm122_triangular_avm_address;
    assign out_lm122_triangular_avm_enable = i_llvm_fpga_mem_lm122_triangular30_out_lm122_triangular_avm_enable;
    assign out_lm122_triangular_avm_read = i_llvm_fpga_mem_lm122_triangular30_out_lm122_triangular_avm_read;
    assign out_lm122_triangular_avm_write = i_llvm_fpga_mem_lm122_triangular30_out_lm122_triangular_avm_write;
    assign out_lm122_triangular_avm_writedata = i_llvm_fpga_mem_lm122_triangular30_out_lm122_triangular_avm_writedata;
    assign out_lm122_triangular_avm_byteenable = i_llvm_fpga_mem_lm122_triangular30_out_lm122_triangular_avm_byteenable;
    assign out_lm122_triangular_avm_burstcount = i_llvm_fpga_mem_lm122_triangular30_out_lm122_triangular_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,139)
    assign out_lm143_triangular_avm_address = i_llvm_fpga_mem_lm143_triangular33_out_lm143_triangular_avm_address;
    assign out_lm143_triangular_avm_enable = i_llvm_fpga_mem_lm143_triangular33_out_lm143_triangular_avm_enable;
    assign out_lm143_triangular_avm_read = i_llvm_fpga_mem_lm143_triangular33_out_lm143_triangular_avm_read;
    assign out_lm143_triangular_avm_write = i_llvm_fpga_mem_lm143_triangular33_out_lm143_triangular_avm_write;
    assign out_lm143_triangular_avm_writedata = i_llvm_fpga_mem_lm143_triangular33_out_lm143_triangular_avm_writedata;
    assign out_lm143_triangular_avm_byteenable = i_llvm_fpga_mem_lm143_triangular33_out_lm143_triangular_avm_byteenable;
    assign out_lm143_triangular_avm_burstcount = i_llvm_fpga_mem_lm143_triangular33_out_lm143_triangular_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,140)
    assign out_memdep_5_triangular_avm_address = i_llvm_fpga_mem_memdep_5_triangular35_out_memdep_5_triangular_avm_address;
    assign out_memdep_5_triangular_avm_enable = i_llvm_fpga_mem_memdep_5_triangular35_out_memdep_5_triangular_avm_enable;
    assign out_memdep_5_triangular_avm_read = i_llvm_fpga_mem_memdep_5_triangular35_out_memdep_5_triangular_avm_read;
    assign out_memdep_5_triangular_avm_write = i_llvm_fpga_mem_memdep_5_triangular35_out_memdep_5_triangular_avm_write;
    assign out_memdep_5_triangular_avm_writedata = i_llvm_fpga_mem_memdep_5_triangular35_out_memdep_5_triangular_avm_writedata;
    assign out_memdep_5_triangular_avm_byteenable = i_llvm_fpga_mem_memdep_5_triangular35_out_memdep_5_triangular_avm_byteenable;
    assign out_memdep_5_triangular_avm_burstcount = i_llvm_fpga_mem_memdep_5_triangular35_out_memdep_5_triangular_avm_burstcount;

    // valid_fanout_reg0(REG,216)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist18_sync_together131_aunroll_x_in_i_valid_8_q);
        end
    end

    // redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_notEnable(LOGICAL,497)
    assign redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_nor(LOGICAL,498)
    assign redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_nor_q = ~ (redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_notEnable_q | redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_sticky_ena_q);

    // redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_mem_last(CONSTANT,494)
    assign redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_mem_last_q = $unsigned(4'b0110);

    // redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_cmp(LOGICAL,495)
    assign redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_cmp_b = {1'b0, redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_rdcnt_q};
    assign redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_cmp_q = $unsigned(redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_mem_last_q == redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_cmpReg(REG,496)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_cmpReg_q <= $unsigned(redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_cmp_q);
        end
    end

    // redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_sticky_ena(REG,499)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_nor_q == 1'b1)
        begin
            redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_sticky_ena_q <= $unsigned(redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_cmpReg_q);
        end
    end

    // redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_enaAnd(LOGICAL,500)
    assign redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_enaAnd_q = redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_sticky_ena_q & VCC_q;

    // redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_rdcnt(COUNTER,492)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_rdcnt_i <= 3'd0;
        end
        else
        begin
            redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_rdcnt_i <= $unsigned(redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_rdcnt_i) + $unsigned(3'd1);
        end
    end
    assign redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_rdcnt_q = redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_rdcnt_i[2:0];

    // redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_wraddr(REG,493)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_wraddr_q <= $unsigned(3'b111);
        end
        else
        begin
            redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_wraddr_q <= $unsigned(redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_rdcnt_q);
        end
    end

    // redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_mem(DUALMEM,491)
    assign redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_mem_ia = $unsigned(in_c0_eni12_12_tpl);
    assign redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_mem_aa = redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_wraddr_q;
    assign redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_mem_ab = redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_rdcnt_q;
    assign redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_mem_reset0 = ~ (resetn);
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
    ) redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_mem_dmem (
        .clocken1(redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_mem_aa),
        .data_a(redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_mem_ab),
        .q_b(redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_mem_iq),
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
    assign redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_mem_q = redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_mem_iq[31:0];

    // redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_notEnable(LOGICAL,487)
    assign redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_nor(LOGICAL,488)
    assign redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_nor_q = ~ (redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_notEnable_q | redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_sticky_ena_q);

    // redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_mem_last(CONSTANT,484)
    assign redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_mem_last_q = $unsigned(4'b0110);

    // redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_cmp(LOGICAL,485)
    assign redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_cmp_b = {1'b0, redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_rdcnt_q};
    assign redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_cmp_q = $unsigned(redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_mem_last_q == redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_cmpReg(REG,486)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_cmpReg_q <= $unsigned(redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_cmp_q);
        end
    end

    // redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_sticky_ena(REG,489)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_nor_q == 1'b1)
        begin
            redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_sticky_ena_q <= $unsigned(redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_cmpReg_q);
        end
    end

    // redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_enaAnd(LOGICAL,490)
    assign redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_enaAnd_q = redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_sticky_ena_q & VCC_q;

    // redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_rdcnt(COUNTER,482)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_rdcnt_i <= 3'd0;
        end
        else
        begin
            redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_rdcnt_i <= $unsigned(redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_rdcnt_i) + $unsigned(3'd1);
        end
    end
    assign redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_rdcnt_q = redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_rdcnt_i[2:0];

    // redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_wraddr(REG,483)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_wraddr_q <= $unsigned(3'b111);
        end
        else
        begin
            redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_wraddr_q <= $unsigned(redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_rdcnt_q);
        end
    end

    // redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_mem(DUALMEM,481)
    assign redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_mem_ia = $unsigned(in_c0_eni12_11_tpl);
    assign redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_mem_aa = redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_wraddr_q;
    assign redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_mem_ab = redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_rdcnt_q;
    assign redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_mem_reset0 = ~ (resetn);
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
    ) redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_mem_dmem (
        .clocken1(redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_mem_aa),
        .data_a(redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_mem_ab),
        .q_b(redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_mem_iq),
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
    assign redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_mem_q = redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_mem_iq[31:0];

    // valid_fanout_reg24(REG,240)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg24_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(redist14_sync_together131_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg25(REG,241)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg25_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(redist14_sync_together131_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_push45_triangular59(BLACKBOX,103)@5
    // out out_feedback_out_45@20000000
    // out out_feedback_valid_out_45@20000000
    triangular_i_llvm_fpga_push_i1_push45_0 thei_llvm_fpga_push_i1_push45_triangular59 (
        .in_data_in(i_llvm_fpga_pop_i1_pop45_triangular58_out_data_out),
        .in_feedback_stall_in_45(i_llvm_fpga_pop_i1_pop45_triangular58_out_feedback_stall_out_45),
        .in_keep_going47(i_llvm_fpga_pipeline_keep_going47_triangular6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_data_out(),
        .out_feedback_out_45(i_llvm_fpga_push_i1_push45_triangular59_out_feedback_out_45),
        .out_feedback_valid_out_45(i_llvm_fpga_push_i1_push45_triangular59_out_feedback_valid_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_sync_together131_aunroll_x_in_c0_eni12_10_tpl_4(DELAY,429)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together131_aunroll_x_in_c0_eni12_10_tpl_4_delay_0 <= '0;
            redist10_sync_together131_aunroll_x_in_c0_eni12_10_tpl_4_delay_1 <= '0;
            redist10_sync_together131_aunroll_x_in_c0_eni12_10_tpl_4_delay_2 <= '0;
            redist10_sync_together131_aunroll_x_in_c0_eni12_10_tpl_4_q <= '0;
        end
        else
        begin
            redist10_sync_together131_aunroll_x_in_c0_eni12_10_tpl_4_delay_0 <= $unsigned(in_c0_eni12_10_tpl);
            redist10_sync_together131_aunroll_x_in_c0_eni12_10_tpl_4_delay_1 <= redist10_sync_together131_aunroll_x_in_c0_eni12_10_tpl_4_delay_0;
            redist10_sync_together131_aunroll_x_in_c0_eni12_10_tpl_4_delay_2 <= redist10_sync_together131_aunroll_x_in_c0_eni12_10_tpl_4_delay_1;
            redist10_sync_together131_aunroll_x_in_c0_eni12_10_tpl_4_q <= redist10_sync_together131_aunroll_x_in_c0_eni12_10_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_pop_i1_pop45_triangular58(BLACKBOX,89)@5
    // out out_feedback_stall_out_45@20000000
    triangular_i_llvm_fpga_pop_i1_pop45_0 thei_llvm_fpga_pop_i1_pop45_triangular58 (
        .in_data_in(redist10_sync_together131_aunroll_x_in_c0_eni12_10_tpl_4_q),
        .in_dir(redist2_sync_together131_aunroll_x_in_c0_eni12_1_tpl_4_q),
        .in_feedback_in_45(i_llvm_fpga_push_i1_push45_triangular59_out_feedback_out_45),
        .in_feedback_valid_in_45(i_llvm_fpga_push_i1_push45_triangular59_out_feedback_valid_out_45),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop45_triangular58_out_data_out),
        .out_feedback_stall_out_45(i_llvm_fpga_pop_i1_pop45_triangular58_out_feedback_stall_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist30_i_llvm_fpga_pop_i1_pop45_triangular58_out_data_out_5(DELAY,449)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_llvm_fpga_pop_i1_pop45_triangular58_out_data_out_5_delay_0 <= '0;
            redist30_i_llvm_fpga_pop_i1_pop45_triangular58_out_data_out_5_delay_1 <= '0;
            redist30_i_llvm_fpga_pop_i1_pop45_triangular58_out_data_out_5_delay_2 <= '0;
            redist30_i_llvm_fpga_pop_i1_pop45_triangular58_out_data_out_5_delay_3 <= '0;
            redist30_i_llvm_fpga_pop_i1_pop45_triangular58_out_data_out_5_q <= '0;
        end
        else
        begin
            redist30_i_llvm_fpga_pop_i1_pop45_triangular58_out_data_out_5_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_pop45_triangular58_out_data_out);
            redist30_i_llvm_fpga_pop_i1_pop45_triangular58_out_data_out_5_delay_1 <= redist30_i_llvm_fpga_pop_i1_pop45_triangular58_out_data_out_5_delay_0;
            redist30_i_llvm_fpga_pop_i1_pop45_triangular58_out_data_out_5_delay_2 <= redist30_i_llvm_fpga_pop_i1_pop45_triangular58_out_data_out_5_delay_1;
            redist30_i_llvm_fpga_pop_i1_pop45_triangular58_out_data_out_5_delay_3 <= redist30_i_llvm_fpga_pop_i1_pop45_triangular58_out_data_out_5_delay_2;
            redist30_i_llvm_fpga_pop_i1_pop45_triangular58_out_data_out_5_q <= redist30_i_llvm_fpga_pop_i1_pop45_triangular58_out_data_out_5_delay_3;
        end
    end

    // redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_notEnable(LOGICAL,508)
    assign redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_notEnable_q = $unsigned(~ (VCC_q));

    // redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_nor(LOGICAL,509)
    assign redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_nor_q = ~ (redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_notEnable_q | redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_sticky_ena_q);

    // redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_mem_last(CONSTANT,505)
    assign redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_mem_last_q = $unsigned(3'b010);

    // redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_cmp(LOGICAL,506)
    assign redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_cmp_b = {1'b0, redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_rdcnt_q};
    assign redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_cmp_q = $unsigned(redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_mem_last_q == redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_cmp_b ? 1'b1 : 1'b0);

    // redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_cmpReg(REG,507)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_cmpReg_q <= $unsigned(redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_cmp_q);
        end
    end

    // redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_sticky_ena(REG,510)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_nor_q == 1'b1)
        begin
            redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_sticky_ena_q <= $unsigned(redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_cmpReg_q);
        end
    end

    // redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_enaAnd(LOGICAL,511)
    assign redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_enaAnd_q = redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_sticky_ena_q & VCC_q;

    // redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_rdcnt(COUNTER,503)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_rdcnt_i <= $unsigned(redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_rdcnt_q = redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_rdcnt_i[1:0];

    // valid_fanout_reg22(REG,238)@1 + 1
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

    // valid_fanout_reg23(REG,239)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(redist14_sync_together131_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i32_lim_ext96_push41_triangular57(BLACKBOX,108)@5
    // out out_feedback_out_41@20000000
    // out out_feedback_valid_out_41@20000000
    triangular_i_llvm_fpga_push_i32_lim_ext96_push41_0 thei_llvm_fpga_push_i32_lim_ext96_push41_triangular57 (
        .in_data_in(redist24_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_3_q),
        .in_feedback_stall_in_41(i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_feedback_stall_out_41),
        .in_keep_going47(i_llvm_fpga_pipeline_keep_going47_triangular6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(),
        .out_feedback_out_41(i_llvm_fpga_push_i32_lim_ext96_push41_triangular57_out_feedback_out_41),
        .out_feedback_valid_out_41(i_llvm_fpga_push_i32_lim_ext96_push41_triangular57_out_feedback_valid_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_sync_together131_aunroll_x_in_c0_eni12_9_tpl_1(DELAY,428)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together131_aunroll_x_in_c0_eni12_9_tpl_1_q <= '0;
        end
        else
        begin
            redist9_sync_together131_aunroll_x_in_c0_eni12_9_tpl_1_q <= $unsigned(in_c0_eni12_9_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56(BLACKBOX,94)@2
    // out out_feedback_stall_out_41@20000000
    triangular_i_llvm_fpga_pop_i32_lim_ext96_pop41_0 thei_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56 (
        .in_data_in(redist9_sync_together131_aunroll_x_in_c0_eni12_9_tpl_1_q),
        .in_dir(redist0_sync_together131_aunroll_x_in_c0_eni12_1_tpl_1_q),
        .in_feedback_in_41(i_llvm_fpga_push_i32_lim_ext96_push41_triangular57_out_feedback_out_41),
        .in_feedback_valid_in_41(i_llvm_fpga_push_i32_lim_ext96_push41_triangular57_out_feedback_valid_out_41),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out),
        .out_feedback_stall_out_41(i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_feedback_stall_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist24_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_3_inputreg0(DELAY,501)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_3_inputreg0_q <= '0;
        end
        else
        begin
            redist24_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_3_inputreg0_q <= $unsigned(i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out);
        end
    end

    // redist24_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_3(DELAY,443)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_3_delay_0 <= '0;
            redist24_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_3_q <= '0;
        end
        else
        begin
            redist24_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_3_delay_0 <= $unsigned(redist24_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_3_inputreg0_q);
            redist24_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_3_q <= redist24_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_3_delay_0;
        end
    end

    // redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_wraddr(REG,504)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_wraddr_q <= $unsigned(redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_rdcnt_q);
        end
    end

    // redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_mem(DUALMEM,502)
    assign redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_mem_ia = $unsigned(redist24_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_3_q);
    assign redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_mem_aa = redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_wraddr_q;
    assign redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_mem_ab = redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_rdcnt_q;
    assign redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_mem_reset0 = ~ (resetn);
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
    ) redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_mem_dmem (
        .clocken1(redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_mem_reset0),
        .clock1(clock),
        .address_a(redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_mem_aa),
        .data_a(redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_mem_ab),
        .q_b(redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_mem_iq),
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
    assign redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_mem_q = redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_mem_iq[31:0];

    // valid_fanout_reg21(REG,237)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist14_sync_together131_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg17(REG,233)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist14_sync_together131_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg18(REG,234)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist14_sync_together131_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i32_reorder_limiter_enter98_push42_triangular52(BLACKBOX,109)@5
    // out out_feedback_out_42@20000000
    // out out_feedback_valid_out_42@20000000
    triangular_i_llvm_fpga_push_i32_reorder_limiter_enter98_push42_0 thei_llvm_fpga_push_i32_reorder_limiter_enter98_push42_triangular52 (
        .in_data_in(i_llvm_fpga_pop_i32_reorder_limiter_enter98_pop42_triangular51_out_data_out),
        .in_feedback_stall_in_42(i_llvm_fpga_pop_i32_reorder_limiter_enter98_pop42_triangular51_out_feedback_stall_out_42),
        .in_keep_going47(i_llvm_fpga_pipeline_keep_going47_triangular6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(),
        .out_feedback_out_42(i_llvm_fpga_push_i32_reorder_limiter_enter98_push42_triangular52_out_feedback_out_42),
        .out_feedback_valid_out_42(i_llvm_fpga_push_i32_reorder_limiter_enter98_push42_triangular52_out_feedback_valid_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_notEnable(LOGICAL,477)
    assign redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_nor(LOGICAL,478)
    assign redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_nor_q = ~ (redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_notEnable_q | redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_sticky_ena_q);

    // redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_mem_last(CONSTANT,474)
    assign redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_mem_last_q = $unsigned(2'b01);

    // redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_cmp(LOGICAL,475)
    assign redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_cmp_q = $unsigned(redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_mem_last_q == redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_cmpReg(REG,476)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_cmpReg_q <= $unsigned(redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_cmp_q);
        end
    end

    // redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_sticky_ena(REG,479)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_nor_q == 1'b1)
        begin
            redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_sticky_ena_q <= $unsigned(redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_cmpReg_q);
        end
    end

    // redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_enaAnd(LOGICAL,480)
    assign redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_enaAnd_q = redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_sticky_ena_q & VCC_q;

    // redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_rdcnt(COUNTER,472)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_rdcnt_i <= 2'd0;
            redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_rdcnt_i == 2'd1)
            begin
                redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_rdcnt_eq <= 1'b0;
            end
            if (redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_rdcnt_eq == 1'b1)
            begin
                redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_rdcnt_i <= $unsigned(redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_rdcnt_i <= $unsigned(redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_rdcnt_q = redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_rdcnt_i[1:0];

    // redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_wraddr(REG,473)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_wraddr_q <= $unsigned(redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_rdcnt_q);
        end
    end

    // redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_mem(DUALMEM,471)
    assign redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_mem_ia = $unsigned(in_c0_eni12_7_tpl);
    assign redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_mem_aa = redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_wraddr_q;
    assign redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_mem_ab = redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_rdcnt_q;
    assign redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_mem_reset0 = ~ (resetn);
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
    ) redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_mem_dmem (
        .clocken1(redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_mem_aa),
        .data_a(redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_mem_ab),
        .q_b(redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_mem_iq),
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
    assign redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_mem_q = redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_mem_iq[31:0];

    // i_llvm_fpga_pop_i32_reorder_limiter_enter98_pop42_triangular51(BLACKBOX,95)@5
    // out out_feedback_stall_out_42@20000000
    triangular_i_llvm_fpga_pop_i32_reorder_limiter_enter98_pop42_0 thei_llvm_fpga_pop_i32_reorder_limiter_enter98_pop42_triangular51 (
        .in_data_in(redist7_sync_together131_aunroll_x_in_c0_eni12_7_tpl_4_mem_q),
        .in_dir(redist2_sync_together131_aunroll_x_in_c0_eni12_1_tpl_4_q),
        .in_feedback_in_42(i_llvm_fpga_push_i32_reorder_limiter_enter98_push42_triangular52_out_feedback_out_42),
        .in_feedback_valid_in_42(i_llvm_fpga_push_i32_reorder_limiter_enter98_push42_triangular52_out_feedback_valid_out_42),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(i_llvm_fpga_pop_i32_reorder_limiter_enter98_pop42_triangular51_out_data_out),
        .out_feedback_stall_out_42(i_llvm_fpga_pop_i32_reorder_limiter_enter98_pop42_triangular51_out_feedback_stall_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg19(REG,235)@1 + 1
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

    // valid_fanout_reg20(REG,236)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg20_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist14_sync_together131_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp62103_push46_triangular54(BLACKBOX,100)@5
    // out out_feedback_out_46@20000000
    // out out_feedback_valid_out_46@20000000
    triangular_i_llvm_fpga_push_i1_notcmp62103_push46_0 thei_llvm_fpga_push_i1_notcmp62103_push46_triangular54 (
        .in_data_in(redist33_i_llvm_fpga_pop_i1_notcmp62103_pop46_triangular53_out_data_out_3_q),
        .in_feedback_stall_in_46(i_llvm_fpga_pop_i1_notcmp62103_pop46_triangular53_out_feedback_stall_out_46),
        .in_keep_going47(i_llvm_fpga_pipeline_keep_going47_triangular6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(),
        .out_feedback_out_46(i_llvm_fpga_push_i1_notcmp62103_push46_triangular54_out_feedback_out_46),
        .out_feedback_valid_out_46(i_llvm_fpga_push_i1_notcmp62103_push46_triangular54_out_feedback_valid_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_sync_together131_aunroll_x_in_c0_eni12_8_tpl_1(DELAY,427)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together131_aunroll_x_in_c0_eni12_8_tpl_1_q <= '0;
        end
        else
        begin
            redist8_sync_together131_aunroll_x_in_c0_eni12_8_tpl_1_q <= $unsigned(in_c0_eni12_8_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp62103_pop46_triangular53(BLACKBOX,87)@2
    // out out_feedback_stall_out_46@20000000
    triangular_i_llvm_fpga_pop_i1_notcmp62103_pop46_0 thei_llvm_fpga_pop_i1_notcmp62103_pop46_triangular53 (
        .in_data_in(redist8_sync_together131_aunroll_x_in_c0_eni12_8_tpl_1_q),
        .in_dir(redist0_sync_together131_aunroll_x_in_c0_eni12_1_tpl_1_q),
        .in_feedback_in_46(i_llvm_fpga_push_i1_notcmp62103_push46_triangular54_out_feedback_out_46),
        .in_feedback_valid_in_46(i_llvm_fpga_push_i1_notcmp62103_push46_triangular54_out_feedback_valid_out_46),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp62103_pop46_triangular53_out_data_out),
        .out_feedback_stall_out_46(i_llvm_fpga_pop_i1_notcmp62103_pop46_triangular53_out_feedback_stall_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist33_i_llvm_fpga_pop_i1_notcmp62103_pop46_triangular53_out_data_out_3(DELAY,452)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_llvm_fpga_pop_i1_notcmp62103_pop46_triangular53_out_data_out_3_delay_0 <= '0;
            redist33_i_llvm_fpga_pop_i1_notcmp62103_pop46_triangular53_out_data_out_3_delay_1 <= '0;
            redist33_i_llvm_fpga_pop_i1_notcmp62103_pop46_triangular53_out_data_out_3_q <= '0;
        end
        else
        begin
            redist33_i_llvm_fpga_pop_i1_notcmp62103_pop46_triangular53_out_data_out_3_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_notcmp62103_pop46_triangular53_out_data_out);
            redist33_i_llvm_fpga_pop_i1_notcmp62103_pop46_triangular53_out_data_out_3_delay_1 <= redist33_i_llvm_fpga_pop_i1_notcmp62103_pop46_triangular53_out_data_out_3_delay_0;
            redist33_i_llvm_fpga_pop_i1_notcmp62103_pop46_triangular53_out_data_out_3_q <= redist33_i_llvm_fpga_pop_i1_notcmp62103_pop46_triangular53_out_data_out_3_delay_1;
        end
    end

    // i_masked56_triangular50(LOGICAL,111)@5
    assign i_masked56_triangular50_q = i_notcmp43_triangular45_q & redist19_i_first_cleanup52_triangular3_sel_x_b_3_q;

    // i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_triangular55(BLACKBOX,84)@5
    // out out_o_exit_outer_loop@8
    // out out_o_stall@8
    // out out_o_valid@8
    triangular_i_llvm_fpga_pipeline_order_pa0000i32_reorder_parent_0 thei_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_triangular55 (
        .in_i_exit_inner_loop(i_masked56_triangular50_q),
        .in_i_exit_outer_loop(redist33_i_llvm_fpga_pop_i1_notcmp62103_pop46_triangular53_out_data_out_3_q),
        .in_i_outer_loop_token(i_llvm_fpga_pop_i32_reorder_limiter_enter98_pop42_triangular51_out_data_out),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_start_inner_loop(redist2_sync_together131_aunroll_x_in_c0_eni12_1_tpl_4_q),
        .in_i_valid(valid_fanout_reg21_q),
        .out_o_exit_outer_loop(i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_triangular55_out_o_exit_outer_loop),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist35_i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_triangular55_out_o_exit_outer_loop_2(DELAY,454)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_triangular55_out_o_exit_outer_loop_2_delay_0 <= '0;
            redist35_i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_triangular55_out_o_exit_outer_loop_2_q <= '0;
        end
        else
        begin
            redist35_i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_triangular55_out_o_exit_outer_loop_2_delay_0 <= $unsigned(i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_triangular55_out_o_exit_outer_loop);
            redist35_i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_triangular55_out_o_exit_outer_loop_2_q <= redist35_i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_triangular55_out_o_exit_outer_loop_2_delay_0;
        end
    end

    // redist23_i_masked56_triangular50_q_5(DELAY,442)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_masked56_triangular50_q_5_delay_0 <= '0;
            redist23_i_masked56_triangular50_q_5_delay_1 <= '0;
            redist23_i_masked56_triangular50_q_5_delay_2 <= '0;
            redist23_i_masked56_triangular50_q_5_delay_3 <= '0;
            redist23_i_masked56_triangular50_q_5_q <= '0;
        end
        else
        begin
            redist23_i_masked56_triangular50_q_5_delay_0 <= $unsigned(i_masked56_triangular50_q);
            redist23_i_masked56_triangular50_q_5_delay_1 <= redist23_i_masked56_triangular50_q_5_delay_0;
            redist23_i_masked56_triangular50_q_5_delay_2 <= redist23_i_masked56_triangular50_q_5_delay_1;
            redist23_i_masked56_triangular50_q_5_delay_3 <= redist23_i_masked56_triangular50_q_5_delay_2;
            redist23_i_masked56_triangular50_q_5_q <= redist23_i_masked56_triangular50_q_5_delay_3;
        end
    end

    // sync_out_aunroll_x(GPOUT,214)@10
    assign out_c0_exi8205_0_tpl = GND_q;
    assign out_c0_exi8205_1_tpl = redist36_i_llvm_fpga_pipeline_keep_going47_triangular6_out_data_out_5_q;
    assign out_c0_exi8205_2_tpl = i_llvm_fpga_mem_memdep_5_triangular35_out_o_writeack;
    assign out_c0_exi8205_3_tpl = redist23_i_masked56_triangular50_q_5_q;
    assign out_c0_exi8205_4_tpl = redist35_i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_triangular55_out_o_exit_outer_loop_2_q;
    assign out_c0_exi8205_5_tpl = redist25_i_llvm_fpga_pop_i32_lim_ext96_pop41_triangular56_out_data_out_8_mem_q;
    assign out_c0_exi8205_6_tpl = redist30_i_llvm_fpga_pop_i1_pop45_triangular58_out_data_out_5_q;
    assign out_c0_exi8205_7_tpl = redist11_sync_together131_aunroll_x_in_c0_eni12_11_tpl_9_mem_q;
    assign out_c0_exi8205_8_tpl = redist12_sync_together131_aunroll_x_in_c0_eni12_12_tpl_9_mem_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_triangular0 = GND_q;

endmodule
