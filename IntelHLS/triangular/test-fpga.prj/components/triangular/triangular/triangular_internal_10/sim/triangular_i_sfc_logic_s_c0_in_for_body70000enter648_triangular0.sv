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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body7_triangulars_c0_enter648_triangular0
// Created for function/kernel triangular
// SystemVerilog created on Tue Apr 25 22:47:05 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_i_sfc_logic_s_c0_in_for_body70000enter648_triangular0 (
    input wire [31:0] in_lm1_triangular_avm_readdata,
    input wire [0:0] in_lm1_triangular_avm_writeack,
    input wire [0:0] in_lm1_triangular_avm_waitrequest,
    input wire [0:0] in_lm1_triangular_avm_readdatavalid,
    output wire [31:0] out_lm1_triangular_avm_address,
    output wire [0:0] out_lm1_triangular_avm_enable,
    output wire [0:0] out_lm1_triangular_avm_read,
    output wire [0:0] out_lm1_triangular_avm_write,
    output wire [31:0] out_lm1_triangular_avm_writedata,
    output wire [3:0] out_lm1_triangular_avm_byteenable,
    output wire [0:0] out_lm1_triangular_avm_burstcount,
    input wire [31:0] in_intel_reserved_ffwd_0_0,
    input wire [0:0] in_flush,
    output wire [0:0] out_exiting_valid_out,
    input wire [31:0] in_lm92_triangular_avm_readdata,
    input wire [0:0] in_lm92_triangular_avm_writeack,
    input wire [0:0] in_lm92_triangular_avm_waitrequest,
    input wire [0:0] in_lm92_triangular_avm_readdatavalid,
    output wire [31:0] out_lm92_triangular_avm_address,
    output wire [0:0] out_lm92_triangular_avm_enable,
    output wire [0:0] out_lm92_triangular_avm_read,
    output wire [0:0] out_lm92_triangular_avm_write,
    output wire [31:0] out_lm92_triangular_avm_writedata,
    output wire [3:0] out_lm92_triangular_avm_byteenable,
    output wire [0:0] out_lm92_triangular_avm_burstcount,
    output wire [0:0] out_pipeline_dummy_out,
    input wire [31:0] in_lm113_triangular_avm_readdata,
    input wire [0:0] in_lm113_triangular_avm_writeack,
    input wire [0:0] in_lm113_triangular_avm_waitrequest,
    input wire [0:0] in_lm113_triangular_avm_readdatavalid,
    output wire [31:0] out_lm113_triangular_avm_address,
    output wire [0:0] out_lm113_triangular_avm_enable,
    output wire [0:0] out_lm113_triangular_avm_read,
    output wire [0:0] out_lm113_triangular_avm_write,
    output wire [31:0] out_lm113_triangular_avm_writedata,
    output wire [3:0] out_lm113_triangular_avm_byteenable,
    output wire [0:0] out_lm113_triangular_avm_burstcount,
    output wire [0:0] out_pipeline_forked_out,
    input wire [31:0] in_memdep_triangular_avm_readdata,
    input wire [0:0] in_memdep_triangular_avm_writeack,
    input wire [0:0] in_memdep_triangular_avm_waitrequest,
    input wire [0:0] in_memdep_triangular_avm_readdatavalid,
    output wire [31:0] out_memdep_triangular_avm_address,
    output wire [0:0] out_memdep_triangular_avm_enable,
    output wire [0:0] out_memdep_triangular_avm_read,
    output wire [0:0] out_memdep_triangular_avm_write,
    output wire [31:0] out_memdep_triangular_avm_writedata,
    output wire [3:0] out_memdep_triangular_avm_byteenable,
    output wire [0:0] out_memdep_triangular_avm_burstcount,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi875_0_tpl,
    output wire [0:0] out_c0_exi875_1_tpl,
    output wire [0:0] out_c0_exi875_2_tpl,
    output wire [0:0] out_c0_exi875_3_tpl,
    output wire [0:0] out_c0_exi875_4_tpl,
    output wire [31:0] out_c0_exi875_5_tpl,
    output wire [0:0] out_c0_exi875_6_tpl,
    output wire [31:0] out_c0_exi875_7_tpl,
    output wire [31:0] out_c0_exi875_8_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_triangular_B5_current_iter_isspec,
    input wire [0:0] in_buffer_in,
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
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_191_q;
    wire [32:0] c_i33_193_q;
    wire [63:0] c_triangular_A_local_pmem_q;
    wire [63:0] c_triangular_x_local_pmem_q;
    wire [1:0] i_arrayidx111_triangular13_vt_const_1_q;
    wire [63:0] i_arrayidx111_triangular13_vt_join_q;
    wire [61:0] i_arrayidx111_triangular13_vt_select_63_b;
    wire [63:0] i_arrayidx153_triangular27_vt_join_q;
    wire [61:0] i_arrayidx153_triangular27_vt_select_63_b;
    wire [63:0] i_arrayidx92_triangular20_vt_join_q;
    wire [61:0] i_arrayidx92_triangular20_vt_select_63_b;
    wire [32:0] i_dec_triangular33_a;
    wire [32:0] i_dec_triangular33_b;
    logic [32:0] i_dec_triangular33_o;
    wire [32:0] i_dec_triangular33_q;
    wire [33:0] i_fpga_indvars_iv_next7_triangular37_a;
    wire [33:0] i_fpga_indvars_iv_next7_triangular37_b;
    logic [33:0] i_fpga_indvars_iv_next7_triangular37_o;
    wire [33:0] i_fpga_indvars_iv_next7_triangular37_q;
    wire [31:0] i_idxprom12_triangular19_vt_const_63_q;
    wire [63:0] i_idxprom12_triangular19_vt_join_q;
    wire [31:0] i_idxprom12_triangular19_vt_select_31_b;
    wire [63:0] i_idxprom1419_triangular17_vt_join_q;
    wire [31:0] i_idxprom1419_triangular17_vt_select_31_b;
    wire [63:0] i_idxprom820_triangular12_vt_join_q;
    wire [31:0] i_idxprom820_triangular12_vt_select_31_b;
    wire [0:0] i_llvm_fpga_dummy_thread_for_body7_dummy_triangular2_out_dummy_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_n2313_triangular16_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_forked_triangular_b5_forked_triangular3_out_buffer_out;
    wire [31:0] i_llvm_fpga_mem_lm113_triangular29_out_lm113_triangular_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm113_triangular29_out_lm113_triangular_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_lm113_triangular29_out_lm113_triangular_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm113_triangular29_out_lm113_triangular_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm113_triangular29_out_lm113_triangular_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm113_triangular29_out_lm113_triangular_avm_write;
    wire [31:0] i_llvm_fpga_mem_lm113_triangular29_out_lm113_triangular_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm113_triangular29_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_lm1_triangular15_out_lm1_triangular_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm1_triangular15_out_lm1_triangular_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_lm1_triangular15_out_lm1_triangular_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm1_triangular15_out_lm1_triangular_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm1_triangular15_out_lm1_triangular_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm1_triangular15_out_lm1_triangular_avm_write;
    wire [31:0] i_llvm_fpga_mem_lm1_triangular15_out_lm1_triangular_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm1_triangular15_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_lm92_triangular25_out_lm92_triangular_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm92_triangular25_out_lm92_triangular_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_lm92_triangular25_out_lm92_triangular_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm92_triangular25_out_lm92_triangular_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm92_triangular25_out_lm92_triangular_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm92_triangular25_out_lm92_triangular_avm_write;
    wire [31:0] i_llvm_fpga_mem_lm92_triangular25_out_lm92_triangular_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm92_triangular25_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_memdep_triangular32_out_memdep_triangular_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_triangular32_out_memdep_triangular_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_triangular32_out_memdep_triangular_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_triangular32_out_memdep_triangular_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_triangular32_out_memdep_triangular_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_triangular32_out_memdep_triangular_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_triangular32_out_memdep_triangular_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_triangular32_out_o_writeack;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_triangular6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_triangular6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_triangular6_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_triangular6_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_triangular6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_triangular52_out_o_exit_outer_loop;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_triangular46_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_triangular46_out_feedback_valid_out_3;
    wire [0:0] i_memdep_phi4_or_triangular23_q;
    wire [0:0] i_notcmp_triangular45_q;
    wire [32:0] i_sub16_triangular30_a;
    wire [32:0] i_sub16_triangular30_b;
    logic [32:0] i_sub16_triangular30_o;
    wire [32:0] i_sub16_triangular30_q;
    wire [0:0] i_triangular_b5_current_iter_isspec_or10_triangular28_q;
    wire [0:0] i_triangular_b5_current_iter_isspec_triangular5_q;
    wire [0:0] i_triangular_b5_is_real_thread_triangular51_q;
    wire [0:0] i_triangular_b5_next_iter_isreal_triangular7_q;
    wire [0:0] i_unnamed_triangular10_q;
    wire [0:0] i_unnamed_triangular38_q;
    wire [31:0] bgTrunc_i_dec_triangular33_sel_x_b;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next7_triangular37_sel_x_b;
    wire [63:0] bgTrunc_i_mul_triangular26_sel_x_in;
    wire [31:0] bgTrunc_i_mul_triangular26_sel_x_b;
    wire [31:0] bgTrunc_i_sub16_triangular30_sel_x_b;
    wire [9:0] i_arrayidx111_triangular0_add_x_a;
    wire [9:0] i_arrayidx111_triangular0_add_x_b;
    logic [9:0] i_arrayidx111_triangular0_add_x_o;
    wire [9:0] i_arrayidx111_triangular0_add_x_q;
    wire [63:0] i_arrayidx111_triangular0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx111_triangular0_narrow_x_b;
    wire [8:0] i_arrayidx111_triangular0_shift_join_x_q;
    wire [8:0] i_arrayidx111_triangular0_dupName_0_trunc_sel_x_b;
    wire [8:0] i_arrayidx111_triangular0_dupName_2_trunc_sel_x_b;
    wire [16:0] i_arrayidx153_triangular0_add_x_a;
    wire [16:0] i_arrayidx153_triangular0_add_x_b;
    logic [16:0] i_arrayidx153_triangular0_add_x_o;
    wire [16:0] i_arrayidx153_triangular0_add_x_q;
    wire [63:0] i_arrayidx153_triangular0_append_upper_bits_x_q;
    wire [13:0] i_arrayidx153_triangular0_narrow_x_b;
    wire [15:0] i_arrayidx153_triangular0_shift_join_x_q;
    wire [16:0] i_arrayidx153_triangular0_dupName_0_add_x_a;
    wire [16:0] i_arrayidx153_triangular0_dupName_0_add_x_b;
    logic [16:0] i_arrayidx153_triangular0_dupName_0_add_x_o;
    wire [16:0] i_arrayidx153_triangular0_dupName_0_add_x_q;
    wire [31:0] i_arrayidx153_triangular0_mult_extender_x_q;
    wire [6:0] i_arrayidx153_triangular0_mult_multconst_x_q;
    wire [15:0] i_arrayidx153_triangular0_dupName_0_trunc_sel_x_b;
    wire [15:0] i_arrayidx153_triangular0_dupName_1_trunc_sel_x_b;
    wire [15:0] i_arrayidx153_triangular0_dupName_2_trunc_sel_x_b;
    wire [15:0] i_arrayidx153_triangular0_dupName_3_trunc_sel_x_b;
    wire [15:0] i_arrayidx153_triangular0_dupName_5_trunc_sel_x_b;
    wire [63:0] i_arrayidx92_triangular0_append_upper_bits_x_q;
    wire [13:0] i_arrayidx92_triangular0_narrow_x_b;
    wire [15:0] i_arrayidx92_triangular0_shift_join_x_q;
    wire [16:0] i_arrayidx92_triangular0_dupName_0_add_x_a;
    wire [16:0] i_arrayidx92_triangular0_dupName_0_add_x_b;
    logic [16:0] i_arrayidx92_triangular0_dupName_0_add_x_o;
    wire [16:0] i_arrayidx92_triangular0_dupName_0_add_x_q;
    wire [15:0] i_arrayidx92_triangular0_dupName_3_trunc_sel_x_b;
    wire [15:0] i_arrayidx92_triangular0_dupName_5_trunc_sel_x_b;
    wire [63:0] i_idxprom12_triangular19_sel_x_b;
    wire [63:0] i_idxprom1419_triangular17_sel_x_b;
    wire [63:0] i_idxprom820_triangular12_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_triangular_b5_current_iter_isreal_triangular0_i_llvm_fpga_pop_coalesce_i1_triangular_b5_current_iter_isreal_triangular4_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_triangular_b5_current_iter_isreal_triangular0_i_llvm_fpga_pop_coalesce_i1_triangular_b5_current_iter_isreal_triangular4_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop1331_pop25_triangular0_i_llvm_fpga_pop_i1_memdep_phi4_pop1331_pop25_triangular22_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop1331_pop25_triangular0_i_llvm_fpga_pop_i1_memdep_phi4_pop1331_pop25_triangular22_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular0_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular21_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular0_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular21_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1730_pop24_triangular0_i_llvm_fpga_pop_i1_notcmp1730_pop24_triangular49_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_notcmp1730_pop24_triangular0_i_llvm_fpga_pop_i1_notcmp1730_pop24_triangular49_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_pop22_triangular0_i_llvm_fpga_pop_i1_pop22_triangular9_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_pop22_triangular0_i_llvm_fpga_pop_i1_pop22_triangular9_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_pop23_triangular0_i_llvm_fpga_pop_i1_pop23_triangular55_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_pop23_triangular0_i_llvm_fpga_pop_i1_pop23_triangular55_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_i_01829_pop21_triangular0_i_llvm_fpga_pop_i32_i_01829_pop21_triangular11_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_i_01829_pop21_triangular0_i_llvm_fpga_pop_i32_i_01829_pop21_triangular11_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_k_014_pop17_triangular0_i_llvm_fpga_pop_i32_k_014_pop17_triangular18_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_k_014_pop17_triangular0_i_llvm_fpga_pop_i32_k_014_pop17_triangular18_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_reorder_limiter_enter28_pop20_triangular0_i_llvm_fpga_pop_i32_reorder_limiter_enter28_pop20_triangular47_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_reorder_limiter_enter28_pop20_triangular0_i_llvm_fpga_pop_i32_reorder_limiter_enter28_pop20_triangular47_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop16_triangular0_i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop16_triangular34_mux_x_s;
    reg [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop16_triangular0_i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop16_triangular34_mux_x_q;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular1_x_i_valid;
    wire i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular1_x_i_stall;
    wire i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi_push18_triangular0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push18_triangular0_i_llvm_fpga_push_i1_memdep_phi_push18_triangular1_x_i_valid;
    wire i_llvm_fpga_push_i1_memdep_phi_push18_triangular0_i_llvm_fpga_push_i1_memdep_phi_push18_triangular1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push18_triangular0_i_llvm_fpga_push_i1_memdep_phi_push18_triangular1_x_i_stall;
    wire i_llvm_fpga_push_i1_memdep_phi_push18_triangular0_i_llvm_fpga_push_i1_memdep_phi_push18_triangular1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi_push18_triangular0_i_llvm_fpga_push_i1_memdep_phi_push18_triangular1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi_push18_triangular0_i_llvm_fpga_push_i1_memdep_phi_push18_triangular1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push18_triangular0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_notcmp1730_push24_triangular0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1730_push24_triangular0_i_llvm_fpga_push_i1_notcmp1730_push24_triangular1_x_i_valid;
    wire i_llvm_fpga_push_i1_notcmp1730_push24_triangular0_i_llvm_fpga_push_i1_notcmp1730_push24_triangular1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1730_push24_triangular0_i_llvm_fpga_push_i1_notcmp1730_push24_triangular1_x_i_stall;
    wire i_llvm_fpga_push_i1_notcmp1730_push24_triangular0_i_llvm_fpga_push_i1_notcmp1730_push24_triangular1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_notcmp1730_push24_triangular0_i_llvm_fpga_push_i1_notcmp1730_push24_triangular1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_notcmp1730_push24_triangular0_i_llvm_fpga_push_i1_notcmp1730_push24_triangular1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1730_push24_triangular0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_push22_triangular0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_push22_triangular0_i_llvm_fpga_push_i1_push22_triangular1_x_i_valid;
    wire i_llvm_fpga_push_i1_push22_triangular0_i_llvm_fpga_push_i1_push22_triangular1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_push22_triangular0_i_llvm_fpga_push_i1_push22_triangular1_x_i_stall;
    wire i_llvm_fpga_push_i1_push22_triangular0_i_llvm_fpga_push_i1_push22_triangular1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_push22_triangular0_i_llvm_fpga_push_i1_push22_triangular1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_push22_triangular0_i_llvm_fpga_push_i1_push22_triangular1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_push22_triangular0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_push23_triangular0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_push23_triangular0_i_llvm_fpga_push_i1_push23_triangular1_x_i_valid;
    wire i_llvm_fpga_push_i1_push23_triangular0_i_llvm_fpga_push_i1_push23_triangular1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_push23_triangular0_i_llvm_fpga_push_i1_push23_triangular1_x_i_stall;
    wire i_llvm_fpga_push_i1_push23_triangular0_i_llvm_fpga_push_i1_push23_triangular1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_push23_triangular0_i_llvm_fpga_push_i1_push23_triangular1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_push23_triangular0_i_llvm_fpga_push_i1_push23_triangular1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_push23_triangular0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular0_i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular1_x_i_valid;
    wire i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular0_i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular0_i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular1_x_i_stall;
    wire i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular0_i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular0_i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular0_i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_i_01829_push21_triangular0_i_llvm_fpga_push_i32_i_01829_push21_triangular1_x_i_valid;
    wire i_llvm_fpga_push_i32_i_01829_push21_triangular0_i_llvm_fpga_push_i32_i_01829_push21_triangular1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_i_01829_push21_triangular0_i_llvm_fpga_push_i32_i_01829_push21_triangular1_x_i_stall;
    wire i_llvm_fpga_push_i32_i_01829_push21_triangular0_i_llvm_fpga_push_i32_i_01829_push21_triangular1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_i_01829_push21_triangular0_i_llvm_fpga_push_i32_i_01829_push21_triangular1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_i_01829_push21_triangular0_i_llvm_fpga_push_i32_i_01829_push21_triangular1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_k_014_push17_triangular0_i_llvm_fpga_push_i32_k_014_push17_triangular1_x_i_valid;
    wire i_llvm_fpga_push_i32_k_014_push17_triangular0_i_llvm_fpga_push_i32_k_014_push17_triangular1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_k_014_push17_triangular0_i_llvm_fpga_push_i32_k_014_push17_triangular1_x_i_stall;
    wire i_llvm_fpga_push_i32_k_014_push17_triangular0_i_llvm_fpga_push_i32_k_014_push17_triangular1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_k_014_push17_triangular0_i_llvm_fpga_push_i32_k_014_push17_triangular1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_k_014_push17_triangular0_i_llvm_fpga_push_i32_k_014_push17_triangular1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_lim_ext26_push19_triangular0_i_llvm_fpga_push_i32_lim_ext26_push19_triangular1_x_i_valid;
    wire i_llvm_fpga_push_i32_lim_ext26_push19_triangular0_i_llvm_fpga_push_i32_lim_ext26_push19_triangular1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_lim_ext26_push19_triangular0_i_llvm_fpga_push_i32_lim_ext26_push19_triangular1_x_i_stall;
    wire i_llvm_fpga_push_i32_lim_ext26_push19_triangular0_i_llvm_fpga_push_i32_lim_ext26_push19_triangular1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_lim_ext26_push19_triangular0_i_llvm_fpga_push_i32_lim_ext26_push19_triangular1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_lim_ext26_push19_triangular0_i_llvm_fpga_push_i32_lim_ext26_push19_triangular1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_reorder_limiter_enter28_push20_triangular0_i_llvm_fpga_push_i32_reorder_limiter_enter28_push20_triangular1_x_i_valid;
    wire i_llvm_fpga_push_i32_reorder_limiter_enter28_push20_triangular0_i_llvm_fpga_push_i32_reorder_limiter_enter28_push20_triangular1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_reorder_limiter_enter28_push20_triangular0_i_llvm_fpga_push_i32_reorder_limiter_enter28_push20_triangular1_x_i_stall;
    wire i_llvm_fpga_push_i32_reorder_limiter_enter28_push20_triangular0_i_llvm_fpga_push_i32_reorder_limiter_enter28_push20_triangular1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_reorder_limiter_enter28_push20_triangular0_i_llvm_fpga_push_i32_reorder_limiter_enter28_push20_triangular1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_reorder_limiter_enter28_push20_triangular0_i_llvm_fpga_push_i32_reorder_limiter_enter28_push20_triangular1_x_o_data;
    wire [30:0] i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular0_c_i31_03_x_q;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular0_i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular1_x_i_valid;
    wire i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular0_i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular0_i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular1_x_i_stall;
    wire i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular0_i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular0_i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular1_x_i_data;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular0_i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular1_x_o_data;
    wire [32:0] i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular0_adapt_scalar_trunc4_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg7_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg8_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg12_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg13_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg14_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg16_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg17_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg18_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg19_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg20_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg21_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg22_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg23_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg24_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg25_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg26_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg27_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg28_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg30_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg31_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg33_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg34_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg35_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg37_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg38_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg40_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg41_q;
    wire [0:0] i_exitcond_triangular35_cmp_nsign_q;
    wire [14:0] i_mul_triangular26_bjA2_q;
    wire [14:0] i_mul_triangular26_bjB4_q;
    wire [65:0] i_mul_triangular26_sums_join_0_q;
    wire [50:0] i_mul_triangular26_sums_align_1_q;
    wire [50:0] i_mul_triangular26_sums_align_1_qint;
    wire [66:0] i_mul_triangular26_sums_result_add_0_0_a;
    wire [66:0] i_mul_triangular26_sums_result_add_0_0_b;
    logic [66:0] i_mul_triangular26_sums_result_add_0_0_o;
    wire [66:0] i_mul_triangular26_sums_result_add_0_0_q;
    wire [0:0] lowRangeB_uid326_i_arrayidx153_triangular0_mult_x_in;
    wire [0:0] lowRangeB_uid326_i_arrayidx153_triangular0_mult_x_b;
    wire [14:0] highBBits_uid327_i_arrayidx153_triangular0_mult_x_b;
    wire [16:0] addsumAHighB_uid328_i_arrayidx153_triangular0_mult_x_a;
    wire [16:0] addsumAHighB_uid328_i_arrayidx153_triangular0_mult_x_b;
    logic [16:0] addsumAHighB_uid328_i_arrayidx153_triangular0_mult_x_o;
    wire [16:0] addsumAHighB_uid328_i_arrayidx153_triangular0_mult_x_q;
    wire [17:0] add_uid329_i_arrayidx153_triangular0_mult_x_q;
    wire [2:0] lowRangeB_uid331_i_arrayidx153_triangular0_mult_x_in;
    wire [2:0] lowRangeB_uid331_i_arrayidx153_triangular0_mult_x_b;
    wire [12:0] highBBits_uid332_i_arrayidx153_triangular0_mult_x_b;
    wire [18:0] a_subconst_25_sumAHighB_uid333_i_arrayidx153_triangular0_mult_x_a;
    wire [18:0] a_subconst_25_sumAHighB_uid333_i_arrayidx153_triangular0_mult_x_b;
    logic [18:0] a_subconst_25_sumAHighB_uid333_i_arrayidx153_triangular0_mult_x_o;
    wire [18:0] a_subconst_25_sumAHighB_uid333_i_arrayidx153_triangular0_mult_x_q;
    wire [21:0] a_subconst_25_uid334_i_arrayidx153_triangular0_mult_x_q;
    wire [3:0] sR_bottomExtension_uid337_i_arrayidx153_triangular0_mult_x_q;
    wire [20:0] sR_bottomRange_uid338_i_arrayidx153_triangular0_mult_x_in;
    wire [20:0] sR_bottomRange_uid338_i_arrayidx153_triangular0_mult_x_b;
    wire [24:0] sR_mergedSignalTM_uid339_i_arrayidx153_triangular0_mult_x_q;
    wire i_mul_triangular26_im0_cma_reset;
    (* preserve_syn_only *) reg signed [14:0] i_mul_triangular26_im0_cma_ah [0:0];
    (* preserve_syn_only *) reg signed [14:0] i_mul_triangular26_im0_cma_ch [0:0];
    wire [14:0] i_mul_triangular26_im0_cma_a0;
    wire [14:0] i_mul_triangular26_im0_cma_c0;
    wire [29:0] i_mul_triangular26_im0_cma_s0;
    wire [29:0] i_mul_triangular26_im0_cma_qq;
    reg [29:0] i_mul_triangular26_im0_cma_q;
    wire i_mul_triangular26_im0_cma_ena0;
    wire i_mul_triangular26_im0_cma_ena1;
    wire i_mul_triangular26_im0_cma_ena2;
    wire i_mul_triangular26_im10_cma_reset;
    (* preserve_syn_only *) reg [17:0] i_mul_triangular26_im10_cma_ah [0:0];
    (* preserve_syn_only *) reg [17:0] i_mul_triangular26_im10_cma_ch [0:0];
    wire [17:0] i_mul_triangular26_im10_cma_a0;
    wire [17:0] i_mul_triangular26_im10_cma_c0;
    wire [35:0] i_mul_triangular26_im10_cma_s0;
    wire [35:0] i_mul_triangular26_im10_cma_qq;
    reg [35:0] i_mul_triangular26_im10_cma_q;
    wire i_mul_triangular26_im10_cma_ena0;
    wire i_mul_triangular26_im10_cma_ena1;
    wire i_mul_triangular26_im10_cma_ena2;
    wire i_mul_triangular26_ma5_cma_reset;
    (* preserve_syn_only *) reg [13:0] i_mul_triangular26_ma5_cma_ah [0:1];
    (* preserve_syn_only *) reg [17:0] i_mul_triangular26_ma5_cma_ch [0:1];
    wire [13:0] i_mul_triangular26_ma5_cma_a0;
    wire [17:0] i_mul_triangular26_ma5_cma_c0;
    wire [13:0] i_mul_triangular26_ma5_cma_a1;
    wire [17:0] i_mul_triangular26_ma5_cma_c1;
    wire [32:0] i_mul_triangular26_ma5_cma_s0;
    wire [32:0] i_mul_triangular26_ma5_cma_qq;
    reg [32:0] i_mul_triangular26_ma5_cma_q;
    wire i_mul_triangular26_ma5_cma_ena0;
    wire i_mul_triangular26_ma5_cma_ena1;
    wire i_mul_triangular26_ma5_cma_ena2;
    wire [47:0] i_arrayidx153_triangular0_upper_bits_x_merged_bit_select_b;
    wire [15:0] i_arrayidx153_triangular0_upper_bits_x_merged_bit_select_c;
    wire [54:0] i_arrayidx111_triangular0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx111_triangular0_upper_bits_x_merged_bit_select_c;
    wire [13:0] i_mul_triangular26_bs1_merged_bit_select_b;
    wire [17:0] i_mul_triangular26_bs1_merged_bit_select_c;
    wire [13:0] i_mul_triangular26_bs3_merged_bit_select_b;
    wire [17:0] i_mul_triangular26_bs3_merged_bit_select_c;
    reg [47:0] redist0_i_arrayidx153_triangular0_upper_bits_x_merged_bit_select_b_1_q;
    reg [0:0] redist1_sync_together101_aunroll_x_in_c0_eni12_1_tpl_4_q;
    reg [0:0] redist1_sync_together101_aunroll_x_in_c0_eni12_1_tpl_4_delay_0;
    reg [0:0] redist1_sync_together101_aunroll_x_in_c0_eni12_1_tpl_4_delay_1;
    reg [0:0] redist1_sync_together101_aunroll_x_in_c0_eni12_1_tpl_4_delay_2;
    reg [31:0] redist2_sync_together101_aunroll_x_in_c0_eni12_3_tpl_4_q;
    reg [31:0] redist2_sync_together101_aunroll_x_in_c0_eni12_3_tpl_4_delay_0;
    reg [31:0] redist2_sync_together101_aunroll_x_in_c0_eni12_3_tpl_4_delay_1;
    reg [31:0] redist3_sync_together101_aunroll_x_in_c0_eni12_4_tpl_4_q;
    reg [31:0] redist3_sync_together101_aunroll_x_in_c0_eni12_4_tpl_4_delay_0;
    reg [31:0] redist3_sync_together101_aunroll_x_in_c0_eni12_4_tpl_4_delay_1;
    reg [0:0] redist4_sync_together101_aunroll_x_in_c0_eni12_5_tpl_8_q;
    reg [32:0] redist5_sync_together101_aunroll_x_in_c0_eni12_6_tpl_4_q;
    reg [32:0] redist5_sync_together101_aunroll_x_in_c0_eni12_6_tpl_4_delay_0;
    reg [32:0] redist5_sync_together101_aunroll_x_in_c0_eni12_6_tpl_4_delay_1;
    reg [31:0] redist6_sync_together101_aunroll_x_in_c0_eni12_7_tpl_4_q;
    reg [31:0] redist6_sync_together101_aunroll_x_in_c0_eni12_7_tpl_4_delay_0;
    reg [31:0] redist6_sync_together101_aunroll_x_in_c0_eni12_7_tpl_4_delay_1;
    reg [0:0] redist7_sync_together101_aunroll_x_in_c0_eni12_8_tpl_4_q;
    reg [0:0] redist7_sync_together101_aunroll_x_in_c0_eni12_8_tpl_4_delay_0;
    reg [0:0] redist7_sync_together101_aunroll_x_in_c0_eni12_8_tpl_4_delay_1;
    reg [0:0] redist7_sync_together101_aunroll_x_in_c0_eni12_8_tpl_4_delay_2;
    reg [31:0] redist8_sync_together101_aunroll_x_in_c0_eni12_9_tpl_4_q;
    reg [31:0] redist8_sync_together101_aunroll_x_in_c0_eni12_9_tpl_4_delay_0;
    reg [31:0] redist8_sync_together101_aunroll_x_in_c0_eni12_9_tpl_4_delay_1;
    reg [0:0] redist9_sync_together101_aunroll_x_in_c0_eni12_10_tpl_4_q;
    reg [0:0] redist9_sync_together101_aunroll_x_in_c0_eni12_10_tpl_4_delay_0;
    reg [0:0] redist9_sync_together101_aunroll_x_in_c0_eni12_10_tpl_4_delay_1;
    reg [0:0] redist9_sync_together101_aunroll_x_in_c0_eni12_10_tpl_4_delay_2;
    reg [0:0] redist12_sync_together101_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist12_sync_together101_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist13_sync_together101_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist14_sync_together101_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist15_sync_together101_aunroll_x_in_i_valid_6_q;
    reg [0:0] redist15_sync_together101_aunroll_x_in_i_valid_6_delay_0;
    reg [0:0] redist16_sync_together101_aunroll_x_in_i_valid_7_q;
    reg [0:0] redist17_sync_together101_aunroll_x_in_i_valid_10_q;
    reg [0:0] redist17_sync_together101_aunroll_x_in_i_valid_10_delay_0;
    reg [0:0] redist17_sync_together101_aunroll_x_in_i_valid_10_delay_1;
    reg [0:0] redist18_sync_together101_aunroll_x_in_i_valid_13_q;
    reg [0:0] redist18_sync_together101_aunroll_x_in_i_valid_13_delay_0;
    reg [0:0] redist18_sync_together101_aunroll_x_in_i_valid_13_delay_1;
    reg [0:0] redist19_sync_together101_aunroll_x_in_i_valid_14_q;
    reg [0:0] redist20_sync_together101_aunroll_x_in_i_valid_15_q;
    reg [0:0] redist21_sync_together101_aunroll_x_in_i_valid_16_q;
    reg [0:0] redist22_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_2_q;
    reg [0:0] redist22_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_2_delay_0;
    reg [0:0] redist23_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_3_q;
    reg [0:0] redist24_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_4_q;
    reg [0:0] redist25_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_6_q;
    reg [0:0] redist25_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_6_delay_0;
    reg [0:0] redist26_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_10_q;
    reg [0:0] redist26_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_10_delay_0;
    reg [0:0] redist26_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_10_delay_1;
    reg [0:0] redist26_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_10_delay_2;
    reg [0:0] redist27_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_14_q;
    reg [0:0] redist27_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_14_delay_0;
    reg [0:0] redist27_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_14_delay_1;
    reg [0:0] redist27_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_14_delay_2;
    reg [32:0] redist28_i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop16_triangular0_i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop16_triangular34_mux_x_q_1_q;
    reg [0:0] redist30_i_llvm_fpga_pop_i1_pop23_triangular0_i_llvm_fpga_pop_i1_pop23_triangular55_mux_x_q_8_q;
    reg [0:0] redist31_i_llvm_fpga_pop_i1_pop23_triangular0_i_llvm_fpga_pop_i1_pop23_triangular55_mux_x_q_12_q;
    reg [0:0] redist31_i_llvm_fpga_pop_i1_pop23_triangular0_i_llvm_fpga_pop_i1_pop23_triangular55_mux_x_q_12_delay_0;
    reg [0:0] redist31_i_llvm_fpga_pop_i1_pop23_triangular0_i_llvm_fpga_pop_i1_pop23_triangular55_mux_x_q_12_delay_1;
    reg [0:0] redist31_i_llvm_fpga_pop_i1_pop23_triangular0_i_llvm_fpga_pop_i1_pop23_triangular55_mux_x_q_12_delay_2;
    reg [0:0] redist32_i_llvm_fpga_pop_coalesce_i1_triangular_b5_current_iter_isreal_triangular0_i_llvm_fpga_pop_coalesce_i1_triangular_b5_current_iter_isreal_triangular4_mux_x_q_1_q;
    reg [13:0] redist33_i_arrayidx92_triangular0_narrow_x_b_4_q;
    reg [13:0] redist33_i_arrayidx92_triangular0_narrow_x_b_4_delay_0;
    reg [13:0] redist33_i_arrayidx92_triangular0_narrow_x_b_4_delay_1;
    reg [15:0] redist34_i_arrayidx153_triangular0_dupName_2_trunc_sel_x_b_1_q;
    reg [15:0] redist35_i_arrayidx153_triangular0_dupName_1_trunc_sel_x_b_1_q;
    reg [15:0] redist36_i_arrayidx153_triangular0_dupName_0_trunc_sel_x_b_1_q;
    reg [32:0] redist37_bgTrunc_i_fpga_indvars_iv_next7_triangular37_sel_x_b_1_q;
    reg [31:0] redist38_bgTrunc_i_dec_triangular33_sel_x_b_1_q;
    reg [0:0] redist39_i_unnamed_triangular38_q_12_q;
    reg [0:0] redist40_i_triangular_b5_current_iter_isspec_triangular5_q_12_q;
    reg [0:0] redist41_i_triangular_b5_current_iter_isspec_or10_triangular28_q_4_q;
    reg [0:0] redist41_i_triangular_b5_current_iter_isspec_or10_triangular28_q_4_delay_0;
    reg [0:0] redist41_i_triangular_b5_current_iter_isspec_or10_triangular28_q_4_delay_1;
    reg [0:0] redist41_i_triangular_b5_current_iter_isspec_or10_triangular28_q_4_delay_2;
    reg [0:0] redist42_i_triangular_b5_current_iter_isspec_or10_triangular28_q_10_q;
    reg [0:0] redist43_i_triangular_b5_current_iter_isspec_or10_triangular28_q_11_q;
    reg [0:0] redist44_i_notcmp_triangular45_q_12_q;
    reg [0:0] redist45_i_memdep_phi4_or_triangular23_q_6_q;
    reg [0:0] redist46_i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_triangular52_out_o_exit_outer_loop_9_q;
    reg [0:0] redist47_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_1_q;
    reg [0:0] redist48_i_llvm_fpga_forked_triangular_b5_forked_triangular3_out_buffer_out_4_q;
    reg [0:0] redist48_i_llvm_fpga_forked_triangular_b5_forked_triangular3_out_buffer_out_4_delay_0;
    reg [0:0] redist48_i_llvm_fpga_forked_triangular_b5_forked_triangular3_out_buffer_out_4_delay_1;
    reg [0:0] redist48_i_llvm_fpga_forked_triangular_b5_forked_triangular3_out_buffer_out_4_delay_2;
    reg [0:0] redist49_i_llvm_fpga_forked_triangular_b5_forked_triangular3_out_buffer_out_8_q;
    reg [0:0] redist49_i_llvm_fpga_forked_triangular_b5_forked_triangular3_out_buffer_out_8_delay_0;
    reg [0:0] redist49_i_llvm_fpga_forked_triangular_b5_forked_triangular3_out_buffer_out_8_delay_1;
    reg [0:0] redist49_i_llvm_fpga_forked_triangular_b5_forked_triangular3_out_buffer_out_8_delay_2;
    reg [0:0] redist50_i_llvm_fpga_dummy_thread_for_body7_dummy_triangular2_out_dummy_out_4_q;
    reg [0:0] redist50_i_llvm_fpga_dummy_thread_for_body7_dummy_triangular2_out_dummy_out_4_delay_0;
    reg [0:0] redist50_i_llvm_fpga_dummy_thread_for_body7_dummy_triangular2_out_dummy_out_4_delay_1;
    reg [0:0] redist50_i_llvm_fpga_dummy_thread_for_body7_dummy_triangular2_out_dummy_out_4_delay_2;
    reg [63:0] redist52_i_arrayidx153_triangular27_vt_join_q_1_q;
    reg [31:0] redist2_sync_together101_aunroll_x_in_c0_eni12_3_tpl_4_inputreg0_q;
    reg [31:0] redist3_sync_together101_aunroll_x_in_c0_eni12_4_tpl_4_inputreg0_q;
    reg [32:0] redist5_sync_together101_aunroll_x_in_c0_eni12_6_tpl_4_inputreg0_q;
    reg [31:0] redist6_sync_together101_aunroll_x_in_c0_eni12_7_tpl_4_inputreg0_q;
    reg [31:0] redist8_sync_together101_aunroll_x_in_c0_eni12_9_tpl_4_inputreg0_q;
    reg [31:0] redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_inputreg0_q;
    reg [31:0] redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_outputreg0_q;
    wire redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_mem_reset0;
    wire [31:0] redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_mem_ia;
    wire [3:0] redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_mem_aa;
    wire [3:0] redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_mem_ab;
    wire [31:0] redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_mem_iq;
    wire [31:0] redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_mem_q;
    wire [3:0] redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_wraddr_i = 4'b1111;
    wire [3:0] redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_offset_q;
    wire [4:0] redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_rdcnt_a;
    wire [4:0] redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_rdcnt_b;
    logic [4:0] redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_rdcnt_o;
    wire [4:0] redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_rdcnt_q;
    reg [31:0] redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_inputreg0_q;
    reg [31:0] redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_outputreg0_q;
    wire redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_mem_reset0;
    wire [31:0] redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_mem_ia;
    wire [3:0] redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_mem_aa;
    wire [3:0] redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_mem_ab;
    wire [31:0] redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_mem_iq;
    wire [31:0] redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_mem_q;
    wire [3:0] redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_wraddr_i = 4'b1111;
    wire [4:0] redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_rdcnt_a;
    wire [4:0] redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_rdcnt_b;
    logic [4:0] redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_rdcnt_o;
    wire [4:0] redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_rdcnt_q;
    reg [31:0] redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_inputreg0_q;
    reg [31:0] redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_outputreg0_q;
    wire redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_mem_reset0;
    wire [31:0] redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_mem_ia;
    wire [3:0] redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_mem_aa;
    wire [3:0] redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_mem_ab;
    wire [31:0] redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_mem_iq;
    wire [31:0] redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_mem_q;
    wire [3:0] redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_wraddr_i = 4'b1111;
    wire [3:0] redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_offset_q;
    wire [4:0] redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_rdcnt_a;
    wire [4:0] redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_rdcnt_b;
    logic [4:0] redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_rdcnt_o;
    wire [4:0] redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_rdcnt_q;
    reg [13:0] redist33_i_arrayidx92_triangular0_narrow_x_b_4_inputreg0_q;
    reg [61:0] redist51_i_arrayidx153_triangular27_vt_select_63_b_6_inputreg0_q;
    reg [61:0] redist51_i_arrayidx153_triangular27_vt_select_63_b_6_outputreg0_q;
    wire redist51_i_arrayidx153_triangular27_vt_select_63_b_6_mem_reset0;
    wire [61:0] redist51_i_arrayidx153_triangular27_vt_select_63_b_6_mem_ia;
    wire [1:0] redist51_i_arrayidx153_triangular27_vt_select_63_b_6_mem_aa;
    wire [1:0] redist51_i_arrayidx153_triangular27_vt_select_63_b_6_mem_ab;
    wire [61:0] redist51_i_arrayidx153_triangular27_vt_select_63_b_6_mem_iq;
    wire [61:0] redist51_i_arrayidx153_triangular27_vt_select_63_b_6_mem_q;
    wire [1:0] redist51_i_arrayidx153_triangular27_vt_select_63_b_6_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [1:0] redist51_i_arrayidx153_triangular27_vt_select_63_b_6_wraddr_i = 2'b11;
    wire [1:0] redist51_i_arrayidx153_triangular27_vt_select_63_b_6_offset_q;
    wire [2:0] redist51_i_arrayidx153_triangular27_vt_select_63_b_6_rdcnt_a;
    wire [2:0] redist51_i_arrayidx153_triangular27_vt_select_63_b_6_rdcnt_b;
    logic [2:0] redist51_i_arrayidx153_triangular27_vt_select_63_b_6_rdcnt_o;
    wire [2:0] redist51_i_arrayidx153_triangular27_vt_select_63_b_6_rdcnt_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist12_sync_together101_aunroll_x_in_i_valid_2(DELAY,462)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist12_sync_together101_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist12_sync_together101_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_sync_together101_aunroll_x_in_i_valid_2_q <= redist12_sync_together101_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist13_sync_together101_aunroll_x_in_i_valid_3(DELAY,463)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist13_sync_together101_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist13_sync_together101_aunroll_x_in_i_valid_3_q <= $unsigned(redist12_sync_together101_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg7(REG,249)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist13_sync_together101_aunroll_x_in_i_valid_3_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_arrayidx153_triangular0_mult_multconst_x(CONSTANT,141)
    assign i_arrayidx153_triangular0_mult_multconst_x_q = $unsigned(7'b0000000);

    // valid_fanout_reg2(REG,244)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist13_sync_together101_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg28(REG,270)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg28_q <= $unsigned(redist13_sync_together101_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist5_sync_together101_aunroll_x_in_c0_eni12_6_tpl_4_inputreg0(DELAY,505)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_together101_aunroll_x_in_c0_eni12_6_tpl_4_inputreg0_q <= $unsigned(in_c0_eni12_6_tpl);
        end
    end

    // redist5_sync_together101_aunroll_x_in_c0_eni12_6_tpl_4(DELAY,455)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_together101_aunroll_x_in_c0_eni12_6_tpl_4_delay_0 <= $unsigned(redist5_sync_together101_aunroll_x_in_c0_eni12_6_tpl_4_inputreg0_q);
            redist5_sync_together101_aunroll_x_in_c0_eni12_6_tpl_4_delay_1 <= redist5_sync_together101_aunroll_x_in_c0_eni12_6_tpl_4_delay_0;
            redist5_sync_together101_aunroll_x_in_c0_eni12_6_tpl_4_q <= redist5_sync_together101_aunroll_x_in_c0_eni12_6_tpl_4_delay_1;
        end
    end

    // i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular0_c_i31_03_x(CONSTANT,235)
    assign i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular0_c_i31_03_x_q = $unsigned(31'b0000000000000000000000000000000);

    // c_i33_193(CONSTANT,41)
    assign c_i33_193_q = $unsigned(33'b111111111111111111111111111111111);

    // redist28_i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop16_triangular0_i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop16_triangular34_mux_x_q_1(DELAY,478)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist28_i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop16_triangular0_i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop16_triangular34_mux_x_q_1_q <= $unsigned(i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop16_triangular0_i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop16_triangular34_mux_x_q);
        end
    end

    // i_fpga_indvars_iv_next7_triangular37(ADD,57)@5
    assign i_fpga_indvars_iv_next7_triangular37_a = {1'b0, redist28_i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop16_triangular0_i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop16_triangular34_mux_x_q_1_q};
    assign i_fpga_indvars_iv_next7_triangular37_b = {1'b0, c_i33_193_q};
    assign i_fpga_indvars_iv_next7_triangular37_o = $unsigned(i_fpga_indvars_iv_next7_triangular37_a) + $unsigned(i_fpga_indvars_iv_next7_triangular37_b);
    assign i_fpga_indvars_iv_next7_triangular37_q = i_fpga_indvars_iv_next7_triangular37_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next7_triangular37_sel_x(BITSELECT,99)@5
    assign bgTrunc_i_fpga_indvars_iv_next7_triangular37_sel_x_b = i_fpga_indvars_iv_next7_triangular37_q[32:0];

    // redist37_bgTrunc_i_fpga_indvars_iv_next7_triangular37_sel_x_b_1(DELAY,487)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist37_bgTrunc_i_fpga_indvars_iv_next7_triangular37_sel_x_b_1_q <= $unsigned(bgTrunc_i_fpga_indvars_iv_next7_triangular37_sel_x_b);
        end
    end

    // i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular0_element_extension2_x(BITJOIN,236)@6
    assign i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular0_element_extension2_x_q = {i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular0_c_i31_03_x_q, redist37_bgTrunc_i_fpga_indvars_iv_next7_triangular37_sel_x_b_1_q};

    // valid_fanout_reg27(REG,269)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg27_q <= $unsigned(in_i_valid);
        end
    end

    // redist24_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_4(DELAY,474)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist24_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_4_q <= $unsigned(redist23_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_3_q);
        end
    end

    // redist14_sync_together101_aunroll_x_in_i_valid_4(DELAY,464)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_sync_together101_aunroll_x_in_i_valid_4_q <= $unsigned(redist13_sync_together101_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg26(REG,268)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg26_q <= $unsigned(redist14_sync_together101_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular0_i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular1_x(FIFODELAY,237)@1 + 6
    // in i_valid@5
    // in i_write_pred@5
    // in i_data@6
    // out o_data@4
    assign i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular0_i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular1_x_i_stall = ~ (valid_fanout_reg27_q & i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q);
    assign i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular0_i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular1_x_i_valid = valid_fanout_reg26_q & redist24_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular0_i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular1_x_i_data = i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular0_element_extension2_x_q;
    assign i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular0_i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular0_i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular1_x_i_valid[0];
    assign i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular0_i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular0_i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(6),
        .WIDTH(64),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular0_i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular1_x (
        .i_valid(i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular0_i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular0_i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular0_i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular0_adapt_scalar_trunc4_sel_x(BITSELECT,239)@4
    assign i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular0_i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular1_x_o_data[32:0];

    // i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop16_triangular0_i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop16_triangular34_mux_x(MUX,185)@4
    assign i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop16_triangular0_i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop16_triangular34_mux_x_s = redist48_i_llvm_fpga_forked_triangular_b5_forked_triangular3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop16_triangular0_i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop16_triangular34_mux_x_s or i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular0_adapt_scalar_trunc4_sel_x_b or redist5_sync_together101_aunroll_x_in_c0_eni12_6_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop16_triangular0_i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop16_triangular34_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop16_triangular0_i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop16_triangular34_mux_x_q = i_llvm_fpga_push_i33_fpga_indvars_iv6_push16_triangular0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop16_triangular0_i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop16_triangular34_mux_x_q = redist5_sync_together101_aunroll_x_in_c0_eni12_6_tpl_4_q;
            default : i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop16_triangular0_i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop16_triangular34_mux_x_q = 33'b0;
        endcase
    end

    // i_exitcond_triangular35_cmp_nsign(LOGICAL,299)@4
    assign i_exitcond_triangular35_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop16_triangular0_i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop16_triangular34_mux_x_q[32:32]));

    // redist1_sync_together101_aunroll_x_in_c0_eni12_1_tpl_4(DELAY,451)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together101_aunroll_x_in_c0_eni12_1_tpl_4_delay_0 <= $unsigned(in_c0_eni12_1_tpl);
            redist1_sync_together101_aunroll_x_in_c0_eni12_1_tpl_4_delay_1 <= redist1_sync_together101_aunroll_x_in_c0_eni12_1_tpl_4_delay_0;
            redist1_sync_together101_aunroll_x_in_c0_eni12_1_tpl_4_delay_2 <= redist1_sync_together101_aunroll_x_in_c0_eni12_1_tpl_4_delay_1;
            redist1_sync_together101_aunroll_x_in_c0_eni12_1_tpl_4_q <= redist1_sync_together101_aunroll_x_in_c0_eni12_1_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_push22_triangular0_element_extension2_x(BITJOIN,206)@4
    assign i_llvm_fpga_push_i1_push22_triangular0_element_extension2_x_q = {i_arrayidx153_triangular0_mult_multconst_x_q, i_llvm_fpga_pop_i1_pop22_triangular0_i_llvm_fpga_pop_i1_pop22_triangular9_mux_x_q};

    // valid_fanout_reg19(REG,261)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(in_i_valid);
        end
    end

    // redist22_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_2(DELAY,472)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist22_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q);
            redist22_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_2_q <= redist22_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_2_delay_0;
        end
    end

    // valid_fanout_reg18(REG,260)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist12_sync_together101_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_push22_triangular0_i_llvm_fpga_push_i1_push22_triangular1_x(FIFODELAY,207)@1 + 8
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_push22_triangular0_i_llvm_fpga_push_i1_push22_triangular1_x_i_stall = ~ (valid_fanout_reg19_q & i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_push22_triangular0_i_llvm_fpga_push_i1_push22_triangular1_x_i_valid = valid_fanout_reg18_q & redist22_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_push22_triangular0_i_llvm_fpga_push_i1_push22_triangular1_x_i_data = i_llvm_fpga_push_i1_push22_triangular0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_push22_triangular0_i_llvm_fpga_push_i1_push22_triangular1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_push22_triangular0_i_llvm_fpga_push_i1_push22_triangular1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_push22_triangular0_i_llvm_fpga_push_i1_push22_triangular1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_push22_triangular0_i_llvm_fpga_push_i1_push22_triangular1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(8),
        .WIDTH(8),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i1_push22_triangular0_i_llvm_fpga_push_i1_push22_triangular1_x (
        .i_valid(i_llvm_fpga_push_i1_push22_triangular0_i_llvm_fpga_push_i1_push22_triangular1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_push22_triangular0_i_llvm_fpga_push_i1_push22_triangular1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_push22_triangular0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_push22_triangular0_i_llvm_fpga_push_i1_push22_triangular1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_push22_triangular0_adapt_scalar_trunc4_sel_x(BITSELECT,209)@4
    assign i_llvm_fpga_push_i1_push22_triangular0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_push22_triangular0_i_llvm_fpga_push_i1_push22_triangular1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_pop22_triangular0_i_llvm_fpga_pop_i1_pop22_triangular9_mux_x(MUX,179)@4
    assign i_llvm_fpga_pop_i1_pop22_triangular0_i_llvm_fpga_pop_i1_pop22_triangular9_mux_x_s = redist48_i_llvm_fpga_forked_triangular_b5_forked_triangular3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i1_pop22_triangular0_i_llvm_fpga_pop_i1_pop22_triangular9_mux_x_s or i_llvm_fpga_push_i1_push22_triangular0_adapt_scalar_trunc4_sel_x_b or redist1_sync_together101_aunroll_x_in_c0_eni12_1_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i1_pop22_triangular0_i_llvm_fpga_pop_i1_pop22_triangular9_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_pop22_triangular0_i_llvm_fpga_pop_i1_pop22_triangular9_mux_x_q = i_llvm_fpga_push_i1_push22_triangular0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_pop22_triangular0_i_llvm_fpga_pop_i1_pop22_triangular9_mux_x_q = redist1_sync_together101_aunroll_x_in_c0_eni12_1_tpl_4_q;
            default : i_llvm_fpga_pop_i1_pop22_triangular0_i_llvm_fpga_pop_i1_pop22_triangular9_mux_x_q = 1'b0;
        endcase
    end

    // i_unnamed_triangular38(LOGICAL,92)@4
    assign i_unnamed_triangular38_q = i_llvm_fpga_pop_i1_pop22_triangular0_i_llvm_fpga_pop_i1_pop22_triangular9_mux_x_q & i_exitcond_triangular35_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond_triangular46(BLACKBOX,79)@4
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    triangular_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_triangular46 (
        .in_data_in(i_unnamed_triangular38_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_triangular6_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg28_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_triangular46_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_triangular46_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_for_body7_dummy_triangular2(BLACKBOX,70)@0
    // in in_stall_in@20000000
    triangular_i_llvm_fpga_dummy_thread_for_body7_dummy_0 thei_llvm_fpga_dummy_thread_for_body7_dummy_triangular2 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_for_body7_dummy_triangular2_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist50_i_llvm_fpga_dummy_thread_for_body7_dummy_triangular2_out_dummy_out_4(DELAY,500)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist50_i_llvm_fpga_dummy_thread_for_body7_dummy_triangular2_out_dummy_out_4_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_for_body7_dummy_triangular2_out_dummy_out);
            redist50_i_llvm_fpga_dummy_thread_for_body7_dummy_triangular2_out_dummy_out_4_delay_1 <= redist50_i_llvm_fpga_dummy_thread_for_body7_dummy_triangular2_out_dummy_out_4_delay_0;
            redist50_i_llvm_fpga_dummy_thread_for_body7_dummy_triangular2_out_dummy_out_4_delay_2 <= redist50_i_llvm_fpga_dummy_thread_for_body7_dummy_triangular2_out_dummy_out_4_delay_1;
            redist50_i_llvm_fpga_dummy_thread_for_body7_dummy_triangular2_out_dummy_out_4_q <= redist50_i_llvm_fpga_dummy_thread_for_body7_dummy_triangular2_out_dummy_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pipeline_keep_going_triangular6(BLACKBOX,77)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    triangular_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_triangular6 (
        .in_data_in(redist48_i_llvm_fpga_forked_triangular_b5_forked_triangular3_out_buffer_out_4_q),
        .in_dummy_in(redist50_i_llvm_fpga_dummy_thread_for_body7_dummy_triangular2_out_dummy_out_4_q),
        .in_forked_in(redist48_i_llvm_fpga_forked_triangular_b5_forked_triangular3_out_buffer_out_4_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_triangular46_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_triangular46_out_feedback_valid_out_3),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_triangular6_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_triangular6_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going_triangular6_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going_triangular6_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_triangular6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist47_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_1(DELAY,497)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist47_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out);
        end
    end

    // redist32_i_llvm_fpga_pop_coalesce_i1_triangular_b5_current_iter_isreal_triangular0_i_llvm_fpga_pop_coalesce_i1_triangular_b5_current_iter_isreal_triangular4_mux_x_q_1(DELAY,482)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist32_i_llvm_fpga_pop_coalesce_i1_triangular_b5_current_iter_isreal_triangular0_i_llvm_fpga_pop_coalesce_i1_triangular_b5_current_iter_isreal_triangular4_mux_x_q_1_q <= $unsigned(i_llvm_fpga_pop_coalesce_i1_triangular_b5_current_iter_isreal_triangular0_i_llvm_fpga_pop_coalesce_i1_triangular_b5_current_iter_isreal_triangular4_mux_x_q);
        end
    end

    // i_triangular_b5_next_iter_isreal_triangular7(LOGICAL,90)@5
    assign i_triangular_b5_next_iter_isreal_triangular7_q = redist32_i_llvm_fpga_pop_coalesce_i1_triangular_b5_current_iter_isreal_triangular0_i_llvm_fpga_pop_coalesce_i1_triangular_b5_current_iter_isreal_triangular4_mux_x_q_1_q & redist47_i_llvm_fpga_pipeline_keep_going_triangular6_out_data_out_1_q;

    // i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular0_element_extension2_x(BITJOIN,218)@5
    assign i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular0_element_extension2_x_q = {i_arrayidx153_triangular0_mult_multconst_x_q, i_triangular_b5_next_iter_isreal_triangular7_q};

    // i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x(LOGICAL,190)@1
    assign i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg4(REG,246)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(in_i_valid);
        end
    end

    // redist23_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_3(DELAY,473)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist23_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_3_q <= $unsigned(redist22_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_2_q);
        end
    end

    // valid_fanout_reg3(REG,245)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist13_sync_together101_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular0_i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular1_x(FIFODELAY,219)@1 + 7
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@4
    assign i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular0_i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular1_x_i_stall = ~ (valid_fanout_reg4_q & i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular0_i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular1_x_i_valid = valid_fanout_reg3_q & redist23_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular0_i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular1_x_i_data = i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular0_i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular0_i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular0_i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular0_i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(7),
        .WIDTH(8),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular0_i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular1_x (
        .i_valid(i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular0_i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular0_i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular0_i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular0_adapt_scalar_trunc4_sel_x(BITSELECT,221)@4
    assign i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular0_i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular1_x_o_data[0:0];

    // i_llvm_fpga_forked_triangular_b5_forked_triangular3(BLACKBOX,72)@0
    // in in_stall_in@20000000
    triangular_i_llvm_fpga_forked_b5_forked_triangular0 thei_llvm_fpga_forked_triangular_b5_forked_triangular3 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_triangular_b5_forked_triangular3_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist48_i_llvm_fpga_forked_triangular_b5_forked_triangular3_out_buffer_out_4(DELAY,498)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist48_i_llvm_fpga_forked_triangular_b5_forked_triangular3_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_triangular_b5_forked_triangular3_out_buffer_out);
            redist48_i_llvm_fpga_forked_triangular_b5_forked_triangular3_out_buffer_out_4_delay_1 <= redist48_i_llvm_fpga_forked_triangular_b5_forked_triangular3_out_buffer_out_4_delay_0;
            redist48_i_llvm_fpga_forked_triangular_b5_forked_triangular3_out_buffer_out_4_delay_2 <= redist48_i_llvm_fpga_forked_triangular_b5_forked_triangular3_out_buffer_out_4_delay_1;
            redist48_i_llvm_fpga_forked_triangular_b5_forked_triangular3_out_buffer_out_4_q <= redist48_i_llvm_fpga_forked_triangular_b5_forked_triangular3_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pop_coalesce_i1_triangular_b5_current_iter_isreal_triangular0_i_llvm_fpga_pop_coalesce_i1_triangular_b5_current_iter_isreal_triangular4_mux_x(MUX,175)@4
    assign i_llvm_fpga_pop_coalesce_i1_triangular_b5_current_iter_isreal_triangular0_i_llvm_fpga_pop_coalesce_i1_triangular_b5_current_iter_isreal_triangular4_mux_x_s = redist48_i_llvm_fpga_forked_triangular_b5_forked_triangular3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_coalesce_i1_triangular_b5_current_iter_isreal_triangular0_i_llvm_fpga_pop_coalesce_i1_triangular_b5_current_iter_isreal_triangular4_mux_x_s or i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular0_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_triangular_b5_current_iter_isreal_triangular0_i_llvm_fpga_pop_coalesce_i1_triangular_b5_current_iter_isreal_triangular4_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_triangular_b5_current_iter_isreal_triangular0_i_llvm_fpga_pop_coalesce_i1_triangular_b5_current_iter_isreal_triangular4_mux_x_q = i_llvm_fpga_push_i1_triangular_b5_next_iter_isreal_push_triangular0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_triangular_b5_current_iter_isreal_triangular0_i_llvm_fpga_pop_coalesce_i1_triangular_b5_current_iter_isreal_triangular4_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_triangular_b5_current_iter_isreal_triangular0_i_llvm_fpga_pop_coalesce_i1_triangular_b5_current_iter_isreal_triangular4_mux_x_q = 1'b0;
        endcase
    end

    // i_triangular_b5_current_iter_isspec_triangular5(LOGICAL,88)@4
    assign i_triangular_b5_current_iter_isspec_triangular5_q = i_llvm_fpga_pop_coalesce_i1_triangular_b5_current_iter_isreal_triangular0_i_llvm_fpga_pop_coalesce_i1_triangular_b5_current_iter_isreal_triangular4_mux_x_q ^ VCC_q;

    // i_unnamed_triangular10(LOGICAL,91)@4
    assign i_unnamed_triangular10_q = i_llvm_fpga_pop_i1_pop22_triangular0_i_llvm_fpga_pop_i1_pop22_triangular9_mux_x_q ^ VCC_q;

    // i_triangular_b5_current_iter_isspec_or10_triangular28(LOGICAL,84)@4
    assign i_triangular_b5_current_iter_isspec_or10_triangular28_q = i_unnamed_triangular10_q | i_triangular_b5_current_iter_isspec_triangular5_q;

    // c_triangular_x_local_pmem(CONSTANT,43)
    assign c_triangular_x_local_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx111_triangular0_upper_bits_x_merged_bit_select(BITSELECT,447)@4
    assign i_arrayidx111_triangular0_upper_bits_x_merged_bit_select_b = c_triangular_x_local_pmem_q[63:9];
    assign i_arrayidx111_triangular0_upper_bits_x_merged_bit_select_c = c_triangular_x_local_pmem_q[8:0];

    // i_idxprom12_triangular19_vt_const_63(CONSTANT,59)
    assign i_idxprom12_triangular19_vt_const_63_q = $unsigned(32'b00000000000000000000000000000000);

    // redist2_sync_together101_aunroll_x_in_c0_eni12_3_tpl_4_inputreg0(DELAY,503)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together101_aunroll_x_in_c0_eni12_3_tpl_4_inputreg0_q <= $unsigned(in_c0_eni12_3_tpl);
        end
    end

    // redist2_sync_together101_aunroll_x_in_c0_eni12_3_tpl_4(DELAY,452)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together101_aunroll_x_in_c0_eni12_3_tpl_4_delay_0 <= $unsigned(redist2_sync_together101_aunroll_x_in_c0_eni12_3_tpl_4_inputreg0_q);
            redist2_sync_together101_aunroll_x_in_c0_eni12_3_tpl_4_delay_1 <= redist2_sync_together101_aunroll_x_in_c0_eni12_3_tpl_4_delay_0;
            redist2_sync_together101_aunroll_x_in_c0_eni12_3_tpl_4_q <= redist2_sync_together101_aunroll_x_in_c0_eni12_3_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg21(REG,263)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg20(REG,262)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist12_sync_together101_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_i_01829_push21_triangular0_i_llvm_fpga_push_i32_i_01829_push21_triangular1_x(FIFODELAY,222)@1 + 8
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_i_01829_push21_triangular0_i_llvm_fpga_push_i32_i_01829_push21_triangular1_x_i_stall = ~ (valid_fanout_reg21_q & i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_i_01829_push21_triangular0_i_llvm_fpga_push_i32_i_01829_push21_triangular1_x_i_valid = valid_fanout_reg20_q & redist22_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_i_01829_push21_triangular0_i_llvm_fpga_push_i32_i_01829_push21_triangular1_x_i_data = i_llvm_fpga_pop_i32_i_01829_pop21_triangular0_i_llvm_fpga_pop_i32_i_01829_pop21_triangular11_mux_x_q;
    assign i_llvm_fpga_push_i32_i_01829_push21_triangular0_i_llvm_fpga_push_i32_i_01829_push21_triangular1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_i_01829_push21_triangular0_i_llvm_fpga_push_i32_i_01829_push21_triangular1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_i_01829_push21_triangular0_i_llvm_fpga_push_i32_i_01829_push21_triangular1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_i_01829_push21_triangular0_i_llvm_fpga_push_i32_i_01829_push21_triangular1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(8),
        .WIDTH(32),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i32_i_01829_push21_triangular0_i_llvm_fpga_push_i32_i_01829_push21_triangular1_x (
        .i_valid(i_llvm_fpga_push_i32_i_01829_push21_triangular0_i_llvm_fpga_push_i32_i_01829_push21_triangular1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_i_01829_push21_triangular0_i_llvm_fpga_push_i32_i_01829_push21_triangular1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_i_01829_pop21_triangular0_i_llvm_fpga_pop_i32_i_01829_pop21_triangular11_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_i_01829_push21_triangular0_i_llvm_fpga_push_i32_i_01829_push21_triangular1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_01829_pop21_triangular0_i_llvm_fpga_pop_i32_i_01829_pop21_triangular11_mux_x(MUX,181)@4
    assign i_llvm_fpga_pop_i32_i_01829_pop21_triangular0_i_llvm_fpga_pop_i32_i_01829_pop21_triangular11_mux_x_s = redist48_i_llvm_fpga_forked_triangular_b5_forked_triangular3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_i_01829_pop21_triangular0_i_llvm_fpga_pop_i32_i_01829_pop21_triangular11_mux_x_s or i_llvm_fpga_push_i32_i_01829_push21_triangular0_i_llvm_fpga_push_i32_i_01829_push21_triangular1_x_o_data or redist2_sync_together101_aunroll_x_in_c0_eni12_3_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i32_i_01829_pop21_triangular0_i_llvm_fpga_pop_i32_i_01829_pop21_triangular11_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_i_01829_pop21_triangular0_i_llvm_fpga_pop_i32_i_01829_pop21_triangular11_mux_x_q = i_llvm_fpga_push_i32_i_01829_push21_triangular0_i_llvm_fpga_push_i32_i_01829_push21_triangular1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_i_01829_pop21_triangular0_i_llvm_fpga_pop_i32_i_01829_pop21_triangular11_mux_x_q = redist2_sync_together101_aunroll_x_in_c0_eni12_3_tpl_4_q;
            default : i_llvm_fpga_pop_i32_i_01829_pop21_triangular0_i_llvm_fpga_pop_i32_i_01829_pop21_triangular11_mux_x_q = 32'b0;
        endcase
    end

    // i_idxprom820_triangular12_sel_x(BITSELECT,174)@4
    assign i_idxprom820_triangular12_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_01829_pop21_triangular0_i_llvm_fpga_pop_i32_i_01829_pop21_triangular11_mux_x_q[31:0]};

    // i_idxprom820_triangular12_vt_select_31(BITSELECT,69)@4
    assign i_idxprom820_triangular12_vt_select_31_b = i_idxprom820_triangular12_sel_x_b[31:0];

    // i_idxprom820_triangular12_vt_join(BITJOIN,68)@4
    assign i_idxprom820_triangular12_vt_join_q = {i_idxprom12_triangular19_vt_const_63_q, i_idxprom820_triangular12_vt_select_31_b};

    // i_arrayidx111_triangular0_dupName_0_trunc_sel_x(BITSELECT,122)@4
    assign i_arrayidx111_triangular0_dupName_0_trunc_sel_x_b = i_idxprom820_triangular12_vt_join_q[8:0];

    // i_arrayidx111_triangular0_narrow_x(BITSELECT,115)@4
    assign i_arrayidx111_triangular0_narrow_x_b = i_arrayidx111_triangular0_dupName_0_trunc_sel_x_b[6:0];

    // i_arrayidx111_triangular0_shift_join_x(BITJOIN,116)@4
    assign i_arrayidx111_triangular0_shift_join_x_q = {i_arrayidx111_triangular0_narrow_x_b, i_arrayidx111_triangular13_vt_const_1_q};

    // i_arrayidx111_triangular0_add_x(ADD,112)@4
    assign i_arrayidx111_triangular0_add_x_a = {1'b0, i_arrayidx111_triangular0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx111_triangular0_add_x_b = {1'b0, i_arrayidx111_triangular0_shift_join_x_q};
    assign i_arrayidx111_triangular0_add_x_o = $unsigned(i_arrayidx111_triangular0_add_x_a) + $unsigned(i_arrayidx111_triangular0_add_x_b);
    assign i_arrayidx111_triangular0_add_x_q = i_arrayidx111_triangular0_add_x_o[9:0];

    // i_arrayidx111_triangular0_dupName_2_trunc_sel_x(BITSELECT,123)@4
    assign i_arrayidx111_triangular0_dupName_2_trunc_sel_x_b = i_arrayidx111_triangular0_add_x_q[8:0];

    // i_arrayidx111_triangular0_append_upper_bits_x(BITJOIN,113)@4
    assign i_arrayidx111_triangular0_append_upper_bits_x_q = {i_arrayidx111_triangular0_upper_bits_x_merged_bit_select_b, i_arrayidx111_triangular0_dupName_2_trunc_sel_x_b};

    // i_arrayidx111_triangular13_vt_select_63(BITSELECT,48)@4
    assign i_arrayidx111_triangular13_vt_select_63_b = i_arrayidx111_triangular0_append_upper_bits_x_q[63:2];

    // i_arrayidx111_triangular13_vt_const_1(CONSTANT,46)
    assign i_arrayidx111_triangular13_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx111_triangular13_vt_join(BITJOIN,47)@4
    assign i_arrayidx111_triangular13_vt_join_q = {i_arrayidx111_triangular13_vt_select_63_b, i_arrayidx111_triangular13_vt_const_1_q};

    // i_llvm_fpga_mem_lm1_triangular15(BLACKBOX,74)@4
    // in in_i_stall@20000000
    // out out_lm1_triangular_avm_address@20000000
    // out out_lm1_triangular_avm_burstcount@20000000
    // out out_lm1_triangular_avm_byteenable@20000000
    // out out_lm1_triangular_avm_enable@20000000
    // out out_lm1_triangular_avm_read@20000000
    // out out_lm1_triangular_avm_write@20000000
    // out out_lm1_triangular_avm_writedata@20000000
    // out out_o_readdata@9
    // out out_o_stall@8
    // out out_o_valid@9
    triangular_i_llvm_fpga_mem_lm1_0 thei_llvm_fpga_mem_lm1_triangular15 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx111_triangular13_vt_join_q),
        .in_i_predicate(i_triangular_b5_current_iter_isspec_or10_triangular28_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_lm1_triangular_avm_readdata(in_lm1_triangular_avm_readdata),
        .in_lm1_triangular_avm_readdatavalid(in_lm1_triangular_avm_readdatavalid),
        .in_lm1_triangular_avm_waitrequest(in_lm1_triangular_avm_waitrequest),
        .in_lm1_triangular_avm_writeack(in_lm1_triangular_avm_writeack),
        .out_lm1_triangular_avm_address(i_llvm_fpga_mem_lm1_triangular15_out_lm1_triangular_avm_address),
        .out_lm1_triangular_avm_burstcount(i_llvm_fpga_mem_lm1_triangular15_out_lm1_triangular_avm_burstcount),
        .out_lm1_triangular_avm_byteenable(i_llvm_fpga_mem_lm1_triangular15_out_lm1_triangular_avm_byteenable),
        .out_lm1_triangular_avm_enable(i_llvm_fpga_mem_lm1_triangular15_out_lm1_triangular_avm_enable),
        .out_lm1_triangular_avm_read(i_llvm_fpga_mem_lm1_triangular15_out_lm1_triangular_avm_read),
        .out_lm1_triangular_avm_write(i_llvm_fpga_mem_lm1_triangular15_out_lm1_triangular_avm_write),
        .out_lm1_triangular_avm_writedata(i_llvm_fpga_mem_lm1_triangular15_out_lm1_triangular_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm1_triangular15_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,45)
    assign out_lm1_triangular_avm_address = i_llvm_fpga_mem_lm1_triangular15_out_lm1_triangular_avm_address;
    assign out_lm1_triangular_avm_enable = i_llvm_fpga_mem_lm1_triangular15_out_lm1_triangular_avm_enable;
    assign out_lm1_triangular_avm_read = i_llvm_fpga_mem_lm1_triangular15_out_lm1_triangular_avm_read;
    assign out_lm1_triangular_avm_write = i_llvm_fpga_mem_lm1_triangular15_out_lm1_triangular_avm_write;
    assign out_lm1_triangular_avm_writedata = i_llvm_fpga_mem_lm1_triangular15_out_lm1_triangular_avm_writedata;
    assign out_lm1_triangular_avm_byteenable = i_llvm_fpga_mem_lm1_triangular15_out_lm1_triangular_avm_byteenable;
    assign out_lm1_triangular_avm_burstcount = i_llvm_fpga_mem_lm1_triangular15_out_lm1_triangular_avm_burstcount;

    // regfree_osync(GPOUT,96)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_triangular6_out_exiting_valid_out;

    // redist15_sync_together101_aunroll_x_in_i_valid_6(DELAY,465)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist15_sync_together101_aunroll_x_in_i_valid_6_delay_0 <= '0;
        end
        else
        begin
            redist15_sync_together101_aunroll_x_in_i_valid_6_delay_0 <= $unsigned(redist14_sync_together101_aunroll_x_in_i_valid_4_q);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist15_sync_together101_aunroll_x_in_i_valid_6_q <= redist15_sync_together101_aunroll_x_in_i_valid_6_delay_0;
        end
    end

    // redist16_sync_together101_aunroll_x_in_i_valid_7(DELAY,466)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist16_sync_together101_aunroll_x_in_i_valid_7_q <= '0;
        end
        else
        begin
            redist16_sync_together101_aunroll_x_in_i_valid_7_q <= $unsigned(redist15_sync_together101_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg12(REG,254)@7 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist16_sync_together101_aunroll_x_in_i_valid_7_q);
        end
    end

    // redist41_i_triangular_b5_current_iter_isspec_or10_triangular28_q_4(DELAY,491)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist41_i_triangular_b5_current_iter_isspec_or10_triangular28_q_4_delay_0 <= $unsigned(i_triangular_b5_current_iter_isspec_or10_triangular28_q);
            redist41_i_triangular_b5_current_iter_isspec_or10_triangular28_q_4_delay_1 <= redist41_i_triangular_b5_current_iter_isspec_or10_triangular28_q_4_delay_0;
            redist41_i_triangular_b5_current_iter_isspec_or10_triangular28_q_4_delay_2 <= redist41_i_triangular_b5_current_iter_isspec_or10_triangular28_q_4_delay_1;
            redist41_i_triangular_b5_current_iter_isspec_or10_triangular28_q_4_q <= redist41_i_triangular_b5_current_iter_isspec_or10_triangular28_q_4_delay_2;
        end
    end

    // redist4_sync_together101_aunroll_x_in_c0_eni12_5_tpl_8(DELAY,454)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist4_sync_together101_aunroll_x_in_c0_eni12_5_tpl_8 ( .xin(in_c0_eni12_5_tpl), .xout(redist4_sync_together101_aunroll_x_in_c0_eni12_5_tpl_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_element_extension2_x(BITJOIN,188)@8
    assign i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_element_extension2_x_q = {i_arrayidx153_triangular0_mult_multconst_x_q, i_llvm_fpga_pop_i1_memdep_phi4_pop1331_pop25_triangular0_i_llvm_fpga_pop_i1_memdep_phi4_pop1331_pop25_triangular22_mux_x_q};

    // valid_fanout_reg17(REG,259)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist14_sync_together101_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist25_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_6(DELAY,475)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist25_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_6_delay_0 <= $unsigned(redist24_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_4_q);
            redist25_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_6_q <= redist25_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_6_delay_0;
        end
    end

    // valid_fanout_reg16(REG,258)@6 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist15_sync_together101_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular1_x(FIFODELAY,189)@5 + 8
    // in i_valid@7
    // in i_write_pred@7
    // in i_data@8
    // out o_data@8
    assign i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular1_x_i_stall = ~ (valid_fanout_reg17_q & redist24_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_4_q);
    assign i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular1_x_i_valid = valid_fanout_reg16_q & redist25_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_6_q;
    assign i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular1_x_i_data = i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(8),
        .WIDTH(8),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular1_x (
        .i_valid(i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_adapt_scalar_trunc4_sel_x(BITSELECT,191)@8
    assign i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular1_x_o_data[0:0];

    // redist49_i_llvm_fpga_forked_triangular_b5_forked_triangular3_out_buffer_out_8(DELAY,499)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist49_i_llvm_fpga_forked_triangular_b5_forked_triangular3_out_buffer_out_8_delay_0 <= $unsigned(redist48_i_llvm_fpga_forked_triangular_b5_forked_triangular3_out_buffer_out_4_q);
            redist49_i_llvm_fpga_forked_triangular_b5_forked_triangular3_out_buffer_out_8_delay_1 <= redist49_i_llvm_fpga_forked_triangular_b5_forked_triangular3_out_buffer_out_8_delay_0;
            redist49_i_llvm_fpga_forked_triangular_b5_forked_triangular3_out_buffer_out_8_delay_2 <= redist49_i_llvm_fpga_forked_triangular_b5_forked_triangular3_out_buffer_out_8_delay_1;
            redist49_i_llvm_fpga_forked_triangular_b5_forked_triangular3_out_buffer_out_8_q <= redist49_i_llvm_fpga_forked_triangular_b5_forked_triangular3_out_buffer_out_8_delay_2;
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi4_pop1331_pop25_triangular0_i_llvm_fpga_pop_i1_memdep_phi4_pop1331_pop25_triangular22_mux_x(MUX,176)@8
    assign i_llvm_fpga_pop_i1_memdep_phi4_pop1331_pop25_triangular0_i_llvm_fpga_pop_i1_memdep_phi4_pop1331_pop25_triangular22_mux_x_s = redist49_i_llvm_fpga_forked_triangular_b5_forked_triangular3_out_buffer_out_8_q;
    always @(i_llvm_fpga_pop_i1_memdep_phi4_pop1331_pop25_triangular0_i_llvm_fpga_pop_i1_memdep_phi4_pop1331_pop25_triangular22_mux_x_s or i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_adapt_scalar_trunc4_sel_x_b or redist4_sync_together101_aunroll_x_in_c0_eni12_5_tpl_8_q)
    begin
        unique case (i_llvm_fpga_pop_i1_memdep_phi4_pop1331_pop25_triangular0_i_llvm_fpga_pop_i1_memdep_phi4_pop1331_pop25_triangular22_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_memdep_phi4_pop1331_pop25_triangular0_i_llvm_fpga_pop_i1_memdep_phi4_pop1331_pop25_triangular22_mux_x_q = i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_memdep_phi4_pop1331_pop25_triangular0_i_llvm_fpga_pop_i1_memdep_phi4_pop1331_pop25_triangular22_mux_x_q = redist4_sync_together101_aunroll_x_in_c0_eni12_5_tpl_8_q;
            default : i_llvm_fpga_pop_i1_memdep_phi4_pop1331_pop25_triangular0_i_llvm_fpga_pop_i1_memdep_phi4_pop1331_pop25_triangular22_mux_x_q = 1'b0;
        endcase
    end

    // i_mul_triangular26_bs3_merged_bit_select(BITSELECT,449)@9
    assign i_mul_triangular26_bs3_merged_bit_select_b = i_llvm_fpga_mem_lm92_triangular25_out_o_readdata[31:18];
    assign i_mul_triangular26_bs3_merged_bit_select_c = i_llvm_fpga_mem_lm92_triangular25_out_o_readdata[17:0];

    // i_mul_triangular26_bs1_merged_bit_select(BITSELECT,448)@9
    assign i_mul_triangular26_bs1_merged_bit_select_b = i_llvm_fpga_mem_lm1_triangular15_out_o_readdata[31:18];
    assign i_mul_triangular26_bs1_merged_bit_select_c = i_llvm_fpga_mem_lm1_triangular15_out_o_readdata[17:0];

    // i_mul_triangular26_ma5_cma(CHAINMULTADD,445)@9 + 5
    // out q@15
    assign i_mul_triangular26_ma5_cma_reset = ~ (resetn);
    assign i_mul_triangular26_ma5_cma_ena0 = 1'b1;
    assign i_mul_triangular26_ma5_cma_ena1 = i_mul_triangular26_ma5_cma_ena0;
    assign i_mul_triangular26_ma5_cma_ena2 = i_mul_triangular26_ma5_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_triangular26_ma5_cma_ah[0] <= i_mul_triangular26_bs1_merged_bit_select_b;
            i_mul_triangular26_ma5_cma_ah[1] <= i_mul_triangular26_bs3_merged_bit_select_b;
            i_mul_triangular26_ma5_cma_ch[0] <= i_mul_triangular26_bs3_merged_bit_select_c;
            i_mul_triangular26_ma5_cma_ch[1] <= i_mul_triangular26_bs1_merged_bit_select_c;
        end
    end

    assign i_mul_triangular26_ma5_cma_a0 = i_mul_triangular26_ma5_cma_ah[0];
    assign i_mul_triangular26_ma5_cma_c0 = i_mul_triangular26_ma5_cma_ch[0];
    assign i_mul_triangular26_ma5_cma_a1 = i_mul_triangular26_ma5_cma_ah[1];
    assign i_mul_triangular26_ma5_cma_c1 = i_mul_triangular26_ma5_cma_ch[1];
    fourteennm_mac #(
        .operation_mode("m18x18_sumof2"),
        .clear_type("none"),
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
        .second_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(33)
    ) i_mul_triangular26_ma5_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_triangular26_ma5_cma_ena2, i_mul_triangular26_ma5_cma_ena1, i_mul_triangular26_ma5_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_triangular26_ma5_cma_a1),
        .by(i_mul_triangular26_ma5_cma_a0),
        .ax(i_mul_triangular26_ma5_cma_c1),
        .bx(i_mul_triangular26_ma5_cma_c0),
        .resulta(i_mul_triangular26_ma5_cma_s0),
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
        .dfxlfsrena(),
        .dfxmisrena(),
        .dftout()
    );
    dspba_delay_ver #( .width(33), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_triangular26_ma5_cma_delay ( .xin(i_mul_triangular26_ma5_cma_s0), .xout(i_mul_triangular26_ma5_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_triangular26_ma5_cma_q = $unsigned(i_mul_triangular26_ma5_cma_qq[32:0]);

    // i_mul_triangular26_sums_align_1(BITSHIFT,314)@15
    assign i_mul_triangular26_sums_align_1_qint = { i_mul_triangular26_ma5_cma_q, 18'b000000000000000000 };
    assign i_mul_triangular26_sums_align_1_q = i_mul_triangular26_sums_align_1_qint[50:0];

    // i_mul_triangular26_bjB4(BITJOIN,304)@9
    assign i_mul_triangular26_bjB4_q = {GND_q, i_mul_triangular26_bs3_merged_bit_select_b};

    // i_mul_triangular26_bjA2(BITJOIN,302)@9
    assign i_mul_triangular26_bjA2_q = {GND_q, i_mul_triangular26_bs1_merged_bit_select_b};

    // i_mul_triangular26_im0_cma(CHAINMULTADD,443)@9 + 5
    // out q@15
    assign i_mul_triangular26_im0_cma_reset = ~ (resetn);
    assign i_mul_triangular26_im0_cma_ena0 = 1'b1;
    assign i_mul_triangular26_im0_cma_ena1 = i_mul_triangular26_im0_cma_ena0;
    assign i_mul_triangular26_im0_cma_ena2 = i_mul_triangular26_im0_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_triangular26_im0_cma_ah[0] <= i_mul_triangular26_bjA2_q;
            i_mul_triangular26_im0_cma_ch[0] <= i_mul_triangular26_bjB4_q;
        end
    end

    assign i_mul_triangular26_im0_cma_a0 = $unsigned(i_mul_triangular26_im0_cma_ah[0]);
    assign i_mul_triangular26_im0_cma_c0 = $unsigned(i_mul_triangular26_im0_cma_ch[0]);
    fourteennm_mac #(
        .operation_mode("m18x18_full"),
        .clear_type("none"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(15),
        .ax_clock("0"),
        .ax_width(15),
        .signed_may("true"),
        .signed_max("true"),
        .input_pipeline_clock("2"),
        .second_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(30)
    ) i_mul_triangular26_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_triangular26_im0_cma_ena2, i_mul_triangular26_im0_cma_ena1, i_mul_triangular26_im0_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_triangular26_im0_cma_a0),
        .ax(i_mul_triangular26_im0_cma_c0),
        .resulta(i_mul_triangular26_im0_cma_s0),
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
        .dfxlfsrena(),
        .dfxmisrena(),
        .dftout()
    );
    dspba_delay_ver #( .width(30), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_triangular26_im0_cma_delay ( .xin(i_mul_triangular26_im0_cma_s0), .xout(i_mul_triangular26_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_triangular26_im0_cma_q = $unsigned(i_mul_triangular26_im0_cma_qq[29:0]);

    // i_mul_triangular26_im10_cma(CHAINMULTADD,444)@9 + 5
    // out q@15
    assign i_mul_triangular26_im10_cma_reset = ~ (resetn);
    assign i_mul_triangular26_im10_cma_ena0 = 1'b1;
    assign i_mul_triangular26_im10_cma_ena1 = i_mul_triangular26_im10_cma_ena0;
    assign i_mul_triangular26_im10_cma_ena2 = i_mul_triangular26_im10_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_triangular26_im10_cma_ah[0] <= i_mul_triangular26_bs1_merged_bit_select_c;
            i_mul_triangular26_im10_cma_ch[0] <= i_mul_triangular26_bs3_merged_bit_select_c;
        end
    end

    assign i_mul_triangular26_im10_cma_a0 = i_mul_triangular26_im10_cma_ah[0];
    assign i_mul_triangular26_im10_cma_c0 = i_mul_triangular26_im10_cma_ch[0];
    fourteennm_mac #(
        .operation_mode("m18x18_full"),
        .clear_type("none"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .ax_clock("0"),
        .ax_width(18),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .second_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(36)
    ) i_mul_triangular26_im10_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_triangular26_im10_cma_ena2, i_mul_triangular26_im10_cma_ena1, i_mul_triangular26_im10_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_triangular26_im10_cma_a0),
        .ax(i_mul_triangular26_im10_cma_c0),
        .resulta(i_mul_triangular26_im10_cma_s0),
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
        .dfxlfsrena(),
        .dfxmisrena(),
        .dftout()
    );
    dspba_delay_ver #( .width(36), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_triangular26_im10_cma_delay ( .xin(i_mul_triangular26_im10_cma_s0), .xout(i_mul_triangular26_im10_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_triangular26_im10_cma_q = $unsigned(i_mul_triangular26_im10_cma_qq[35:0]);

    // i_mul_triangular26_sums_join_0(BITJOIN,313)@15
    assign i_mul_triangular26_sums_join_0_q = {i_mul_triangular26_im0_cma_q, i_mul_triangular26_im10_cma_q};

    // i_mul_triangular26_sums_result_add_0_0(ADD,316)@15
    assign i_mul_triangular26_sums_result_add_0_0_a = {1'b0, i_mul_triangular26_sums_join_0_q};
    assign i_mul_triangular26_sums_result_add_0_0_b = {16'b0000000000000000, i_mul_triangular26_sums_align_1_q};
    assign i_mul_triangular26_sums_result_add_0_0_o = $unsigned(i_mul_triangular26_sums_result_add_0_0_a) + $unsigned(i_mul_triangular26_sums_result_add_0_0_b);
    assign i_mul_triangular26_sums_result_add_0_0_q = i_mul_triangular26_sums_result_add_0_0_o[66:0];

    // bgTrunc_i_mul_triangular26_sel_x(BITSELECT,100)@15
    assign bgTrunc_i_mul_triangular26_sel_x_in = i_mul_triangular26_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul_triangular26_sel_x_b = bgTrunc_i_mul_triangular26_sel_x_in[31:0];

    // redist17_sync_together101_aunroll_x_in_i_valid_10(DELAY,467)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_sync_together101_aunroll_x_in_i_valid_10_delay_0 <= $unsigned(redist16_sync_together101_aunroll_x_in_i_valid_7_q);
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist17_sync_together101_aunroll_x_in_i_valid_10_delay_1 <= '0;
        end
        else
        begin
            redist17_sync_together101_aunroll_x_in_i_valid_10_delay_1 <= redist17_sync_together101_aunroll_x_in_i_valid_10_delay_0;
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_sync_together101_aunroll_x_in_i_valid_10_q <= redist17_sync_together101_aunroll_x_in_i_valid_10_delay_1;
        end
    end

    // redist18_sync_together101_aunroll_x_in_i_valid_13(DELAY,468)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist18_sync_together101_aunroll_x_in_i_valid_13_delay_0 <= '0;
        end
        else
        begin
            redist18_sync_together101_aunroll_x_in_i_valid_13_delay_0 <= $unsigned(redist17_sync_together101_aunroll_x_in_i_valid_10_q);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist18_sync_together101_aunroll_x_in_i_valid_13_delay_1 <= redist18_sync_together101_aunroll_x_in_i_valid_13_delay_0;
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist18_sync_together101_aunroll_x_in_i_valid_13_q <= '0;
        end
        else
        begin
            redist18_sync_together101_aunroll_x_in_i_valid_13_q <= redist18_sync_together101_aunroll_x_in_i_valid_13_delay_1;
        end
    end

    // valid_fanout_reg13(REG,255)@13 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist18_sync_together101_aunroll_x_in_i_valid_13_q);
        end
    end

    // redist42_i_triangular_b5_current_iter_isspec_or10_triangular28_q_10(DELAY,492)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist42_i_triangular_b5_current_iter_isspec_or10_triangular28_q_10 ( .xin(redist41_i_triangular_b5_current_iter_isspec_or10_triangular28_q_4_q), .xout(redist42_i_triangular_b5_current_iter_isspec_or10_triangular28_q_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist45_i_memdep_phi4_or_triangular23_q_6(DELAY,495)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist45_i_memdep_phi4_or_triangular23_q_6 ( .xin(i_memdep_phi4_or_triangular23_q), .xout(redist45_i_memdep_phi4_or_triangular23_q_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist51_i_arrayidx153_triangular27_vt_select_63_b_6_offset(CONSTANT,531)
    assign redist51_i_arrayidx153_triangular27_vt_select_63_b_6_offset_q = $unsigned(2'b11);

    // redist51_i_arrayidx153_triangular27_vt_select_63_b_6_rdcnt(ADD,532)
    assign redist51_i_arrayidx153_triangular27_vt_select_63_b_6_rdcnt_a = {1'b0, redist51_i_arrayidx153_triangular27_vt_select_63_b_6_wraddr_q};
    assign redist51_i_arrayidx153_triangular27_vt_select_63_b_6_rdcnt_b = {1'b0, redist51_i_arrayidx153_triangular27_vt_select_63_b_6_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist51_i_arrayidx153_triangular27_vt_select_63_b_6_rdcnt_o <= $unsigned(redist51_i_arrayidx153_triangular27_vt_select_63_b_6_rdcnt_a) + $unsigned(redist51_i_arrayidx153_triangular27_vt_select_63_b_6_rdcnt_b);
        end
    end
    assign redist51_i_arrayidx153_triangular27_vt_select_63_b_6_rdcnt_q = redist51_i_arrayidx153_triangular27_vt_select_63_b_6_rdcnt_o[2:0];

    // c_triangular_A_local_pmem(CONSTANT,42)
    assign c_triangular_A_local_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx153_triangular0_upper_bits_x_merged_bit_select(BITSELECT,446)@7
    assign i_arrayidx153_triangular0_upper_bits_x_merged_bit_select_b = c_triangular_A_local_pmem_q[63:16];
    assign i_arrayidx153_triangular0_upper_bits_x_merged_bit_select_c = c_triangular_A_local_pmem_q[15:0];

    // redist0_i_arrayidx153_triangular0_upper_bits_x_merged_bit_select_b_1(DELAY,450)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_arrayidx153_triangular0_upper_bits_x_merged_bit_select_b_1_q <= $unsigned(i_arrayidx153_triangular0_upper_bits_x_merged_bit_select_b);
        end
    end

    // valid_fanout_reg8(REG,250)@7 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist16_sync_together101_aunroll_x_in_i_valid_7_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_n2313_triangular16(BLACKBOX,71)@8
    triangular_i_llvm_fpga_ffwd_dest_i32_n2313_0 thei_llvm_fpga_ffwd_dest_i32_n2313_triangular16 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i32_n2313_triangular16_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom1419_triangular17_sel_x(BITSELECT,173)@8
    assign i_idxprom1419_triangular17_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_ffwd_dest_i32_n2313_triangular16_out_dest_data_out_0_0[31:0]};

    // i_idxprom1419_triangular17_vt_select_31(BITSELECT,65)@8
    assign i_idxprom1419_triangular17_vt_select_31_b = i_idxprom1419_triangular17_sel_x_b[31:0];

    // i_idxprom1419_triangular17_vt_join(BITJOIN,64)@8
    assign i_idxprom1419_triangular17_vt_join_q = {i_idxprom12_triangular19_vt_const_63_q, i_idxprom1419_triangular17_vt_select_31_b};

    // i_arrayidx153_triangular0_dupName_3_trunc_sel_x(BITSELECT,146)@8
    assign i_arrayidx153_triangular0_dupName_3_trunc_sel_x_b = i_idxprom1419_triangular17_vt_join_q[15:0];

    // i_arrayidx153_triangular0_narrow_x(BITSELECT,129)@8
    assign i_arrayidx153_triangular0_narrow_x_b = i_arrayidx153_triangular0_dupName_3_trunc_sel_x_b[13:0];

    // i_arrayidx153_triangular0_shift_join_x(BITJOIN,130)@8
    assign i_arrayidx153_triangular0_shift_join_x_q = {i_arrayidx153_triangular0_narrow_x_b, i_arrayidx111_triangular13_vt_const_1_q};

    // redist3_sync_together101_aunroll_x_in_c0_eni12_4_tpl_4_inputreg0(DELAY,504)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together101_aunroll_x_in_c0_eni12_4_tpl_4_inputreg0_q <= $unsigned(in_c0_eni12_4_tpl);
        end
    end

    // redist3_sync_together101_aunroll_x_in_c0_eni12_4_tpl_4(DELAY,453)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together101_aunroll_x_in_c0_eni12_4_tpl_4_delay_0 <= $unsigned(redist3_sync_together101_aunroll_x_in_c0_eni12_4_tpl_4_inputreg0_q);
            redist3_sync_together101_aunroll_x_in_c0_eni12_4_tpl_4_delay_1 <= redist3_sync_together101_aunroll_x_in_c0_eni12_4_tpl_4_delay_0;
            redist3_sync_together101_aunroll_x_in_c0_eni12_4_tpl_4_q <= redist3_sync_together101_aunroll_x_in_c0_eni12_4_tpl_4_delay_1;
        end
    end

    // c_i32_191(CONSTANT,40)
    assign c_i32_191_q = $unsigned(32'b11111111111111111111111111111111);

    // i_dec_triangular33(ADD,55)@5
    assign i_dec_triangular33_a = {1'b0, i_llvm_fpga_pop_i32_k_014_pop17_triangular0_i_llvm_fpga_pop_i32_k_014_pop17_triangular18_mux_x_q};
    assign i_dec_triangular33_b = {1'b0, c_i32_191_q};
    assign i_dec_triangular33_o = $unsigned(i_dec_triangular33_a) + $unsigned(i_dec_triangular33_b);
    assign i_dec_triangular33_q = i_dec_triangular33_o[32:0];

    // bgTrunc_i_dec_triangular33_sel_x(BITSELECT,98)@5
    assign bgTrunc_i_dec_triangular33_sel_x_b = i_dec_triangular33_q[31:0];

    // redist38_bgTrunc_i_dec_triangular33_sel_x_b_1(DELAY,488)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist38_bgTrunc_i_dec_triangular33_sel_x_b_1_q <= $unsigned(bgTrunc_i_dec_triangular33_sel_x_b);
        end
    end

    // valid_fanout_reg25(REG,267)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg24(REG,266)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(redist14_sync_together101_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i32_k_014_push17_triangular0_i_llvm_fpga_push_i32_k_014_push17_triangular1_x(FIFODELAY,225)@1 + 6
    // in i_valid@5
    // in i_write_pred@5
    // in i_data@6
    // out o_data@4
    assign i_llvm_fpga_push_i32_k_014_push17_triangular0_i_llvm_fpga_push_i32_k_014_push17_triangular1_x_i_stall = ~ (valid_fanout_reg25_q & i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_k_014_push17_triangular0_i_llvm_fpga_push_i32_k_014_push17_triangular1_x_i_valid = valid_fanout_reg24_q & redist24_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_i32_k_014_push17_triangular0_i_llvm_fpga_push_i32_k_014_push17_triangular1_x_i_data = redist38_bgTrunc_i_dec_triangular33_sel_x_b_1_q;
    assign i_llvm_fpga_push_i32_k_014_push17_triangular0_i_llvm_fpga_push_i32_k_014_push17_triangular1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_k_014_push17_triangular0_i_llvm_fpga_push_i32_k_014_push17_triangular1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_k_014_push17_triangular0_i_llvm_fpga_push_i32_k_014_push17_triangular1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_k_014_push17_triangular0_i_llvm_fpga_push_i32_k_014_push17_triangular1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(6),
        .WIDTH(32),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i32_k_014_push17_triangular0_i_llvm_fpga_push_i32_k_014_push17_triangular1_x (
        .i_valid(i_llvm_fpga_push_i32_k_014_push17_triangular0_i_llvm_fpga_push_i32_k_014_push17_triangular1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_k_014_push17_triangular0_i_llvm_fpga_push_i32_k_014_push17_triangular1_x_i_stall_bitsignaltemp),
        .i_data(redist38_bgTrunc_i_dec_triangular33_sel_x_b_1_q),
        .o_data(i_llvm_fpga_push_i32_k_014_push17_triangular0_i_llvm_fpga_push_i32_k_014_push17_triangular1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_k_014_pop17_triangular0_i_llvm_fpga_pop_i32_k_014_pop17_triangular18_mux_x(MUX,182)@4 + 1
    assign i_llvm_fpga_pop_i32_k_014_pop17_triangular0_i_llvm_fpga_pop_i32_k_014_pop17_triangular18_mux_x_s = redist48_i_llvm_fpga_forked_triangular_b5_forked_triangular3_out_buffer_out_4_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i32_k_014_pop17_triangular0_i_llvm_fpga_pop_i32_k_014_pop17_triangular18_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i32_k_014_pop17_triangular0_i_llvm_fpga_pop_i32_k_014_pop17_triangular18_mux_x_q <= i_llvm_fpga_push_i32_k_014_push17_triangular0_i_llvm_fpga_push_i32_k_014_push17_triangular1_x_o_data;
                1'b1 : i_llvm_fpga_pop_i32_k_014_pop17_triangular0_i_llvm_fpga_pop_i32_k_014_pop17_triangular18_mux_x_q <= redist3_sync_together101_aunroll_x_in_c0_eni12_4_tpl_4_q;
                default : i_llvm_fpga_pop_i32_k_014_pop17_triangular0_i_llvm_fpga_pop_i32_k_014_pop17_triangular18_mux_x_q <= 32'b0;
            endcase
        end
    end

    // i_idxprom12_triangular19_sel_x(BITSELECT,172)@5
    assign i_idxprom12_triangular19_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_k_014_pop17_triangular0_i_llvm_fpga_pop_i32_k_014_pop17_triangular18_mux_x_q[31:0]};

    // i_idxprom12_triangular19_vt_select_31(BITSELECT,61)@5
    assign i_idxprom12_triangular19_vt_select_31_b = i_idxprom12_triangular19_sel_x_b[31:0];

    // i_idxprom12_triangular19_vt_join(BITJOIN,60)@5
    assign i_idxprom12_triangular19_vt_join_q = {i_idxprom12_triangular19_vt_const_63_q, i_idxprom12_triangular19_vt_select_31_b};

    // i_arrayidx153_triangular0_dupName_0_trunc_sel_x(BITSELECT,143)@5
    assign i_arrayidx153_triangular0_dupName_0_trunc_sel_x_b = i_idxprom12_triangular19_vt_join_q[15:0];

    // redist36_i_arrayidx153_triangular0_dupName_0_trunc_sel_x_b_1(DELAY,486)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist36_i_arrayidx153_triangular0_dupName_0_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx153_triangular0_dupName_0_trunc_sel_x_b);
        end
    end

    // highBBits_uid332_i_arrayidx153_triangular0_mult_x(BITSELECT,331)@6
    assign highBBits_uid332_i_arrayidx153_triangular0_mult_x_b = redist36_i_arrayidx153_triangular0_dupName_0_trunc_sel_x_b_1_q[15:3];

    // highBBits_uid327_i_arrayidx153_triangular0_mult_x(BITSELECT,326)@5
    assign highBBits_uid327_i_arrayidx153_triangular0_mult_x_b = i_arrayidx153_triangular0_dupName_0_trunc_sel_x_b[15:1];

    // addsumAHighB_uid328_i_arrayidx153_triangular0_mult_x(ADD,327)@5 + 1
    assign addsumAHighB_uid328_i_arrayidx153_triangular0_mult_x_a = {1'b0, i_arrayidx153_triangular0_dupName_0_trunc_sel_x_b};
    assign addsumAHighB_uid328_i_arrayidx153_triangular0_mult_x_b = {2'b00, highBBits_uid327_i_arrayidx153_triangular0_mult_x_b};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            addsumAHighB_uid328_i_arrayidx153_triangular0_mult_x_o <= $unsigned(addsumAHighB_uid328_i_arrayidx153_triangular0_mult_x_a) + $unsigned(addsumAHighB_uid328_i_arrayidx153_triangular0_mult_x_b);
        end
    end
    assign addsumAHighB_uid328_i_arrayidx153_triangular0_mult_x_q = addsumAHighB_uid328_i_arrayidx153_triangular0_mult_x_o[16:0];

    // lowRangeB_uid326_i_arrayidx153_triangular0_mult_x(BITSELECT,325)@6
    assign lowRangeB_uid326_i_arrayidx153_triangular0_mult_x_in = redist36_i_arrayidx153_triangular0_dupName_0_trunc_sel_x_b_1_q[0:0];
    assign lowRangeB_uid326_i_arrayidx153_triangular0_mult_x_b = lowRangeB_uid326_i_arrayidx153_triangular0_mult_x_in[0:0];

    // add_uid329_i_arrayidx153_triangular0_mult_x(BITJOIN,328)@6
    assign add_uid329_i_arrayidx153_triangular0_mult_x_q = {addsumAHighB_uid328_i_arrayidx153_triangular0_mult_x_q, lowRangeB_uid326_i_arrayidx153_triangular0_mult_x_b};

    // a_subconst_25_sumAHighB_uid333_i_arrayidx153_triangular0_mult_x(ADD,332)@6
    assign a_subconst_25_sumAHighB_uid333_i_arrayidx153_triangular0_mult_x_a = {1'b0, add_uid329_i_arrayidx153_triangular0_mult_x_q};
    assign a_subconst_25_sumAHighB_uid333_i_arrayidx153_triangular0_mult_x_b = {6'b000000, highBBits_uid332_i_arrayidx153_triangular0_mult_x_b};
    assign a_subconst_25_sumAHighB_uid333_i_arrayidx153_triangular0_mult_x_o = $unsigned(a_subconst_25_sumAHighB_uid333_i_arrayidx153_triangular0_mult_x_a) + $unsigned(a_subconst_25_sumAHighB_uid333_i_arrayidx153_triangular0_mult_x_b);
    assign a_subconst_25_sumAHighB_uid333_i_arrayidx153_triangular0_mult_x_q = a_subconst_25_sumAHighB_uid333_i_arrayidx153_triangular0_mult_x_o[18:0];

    // lowRangeB_uid331_i_arrayidx153_triangular0_mult_x(BITSELECT,330)@6
    assign lowRangeB_uid331_i_arrayidx153_triangular0_mult_x_in = redist36_i_arrayidx153_triangular0_dupName_0_trunc_sel_x_b_1_q[2:0];
    assign lowRangeB_uid331_i_arrayidx153_triangular0_mult_x_b = lowRangeB_uid331_i_arrayidx153_triangular0_mult_x_in[2:0];

    // a_subconst_25_uid334_i_arrayidx153_triangular0_mult_x(BITJOIN,333)@6
    assign a_subconst_25_uid334_i_arrayidx153_triangular0_mult_x_q = {a_subconst_25_sumAHighB_uid333_i_arrayidx153_triangular0_mult_x_q, lowRangeB_uid331_i_arrayidx153_triangular0_mult_x_b};

    // sR_bottomRange_uid338_i_arrayidx153_triangular0_mult_x(BITSELECT,337)@6
    assign sR_bottomRange_uid338_i_arrayidx153_triangular0_mult_x_in = a_subconst_25_uid334_i_arrayidx153_triangular0_mult_x_q[20:0];
    assign sR_bottomRange_uid338_i_arrayidx153_triangular0_mult_x_b = sR_bottomRange_uid338_i_arrayidx153_triangular0_mult_x_in[20:0];

    // sR_bottomExtension_uid337_i_arrayidx153_triangular0_mult_x(CONSTANT,336)
    assign sR_bottomExtension_uid337_i_arrayidx153_triangular0_mult_x_q = $unsigned(4'b0000);

    // sR_mergedSignalTM_uid339_i_arrayidx153_triangular0_mult_x(BITJOIN,338)@6
    assign sR_mergedSignalTM_uid339_i_arrayidx153_triangular0_mult_x_q = {sR_bottomRange_uid338_i_arrayidx153_triangular0_mult_x_b, sR_bottomExtension_uid337_i_arrayidx153_triangular0_mult_x_q};

    // i_arrayidx153_triangular0_mult_extender_x(BITJOIN,140)@6
    assign i_arrayidx153_triangular0_mult_extender_x_q = {i_arrayidx153_triangular0_mult_multconst_x_q, sR_mergedSignalTM_uid339_i_arrayidx153_triangular0_mult_x_q};

    // i_arrayidx153_triangular0_dupName_1_trunc_sel_x(BITSELECT,144)@6
    assign i_arrayidx153_triangular0_dupName_1_trunc_sel_x_b = i_arrayidx153_triangular0_mult_extender_x_q[15:0];

    // redist35_i_arrayidx153_triangular0_dupName_1_trunc_sel_x_b_1(DELAY,485)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist35_i_arrayidx153_triangular0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx153_triangular0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx153_triangular0_add_x(ADD,124)@7
    assign i_arrayidx153_triangular0_add_x_a = {1'b0, i_arrayidx153_triangular0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx153_triangular0_add_x_b = {1'b0, redist35_i_arrayidx153_triangular0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx153_triangular0_add_x_o = $unsigned(i_arrayidx153_triangular0_add_x_a) + $unsigned(i_arrayidx153_triangular0_add_x_b);
    assign i_arrayidx153_triangular0_add_x_q = i_arrayidx153_triangular0_add_x_o[16:0];

    // i_arrayidx153_triangular0_dupName_2_trunc_sel_x(BITSELECT,145)@7
    assign i_arrayidx153_triangular0_dupName_2_trunc_sel_x_b = i_arrayidx153_triangular0_add_x_q[15:0];

    // redist34_i_arrayidx153_triangular0_dupName_2_trunc_sel_x_b_1(DELAY,484)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist34_i_arrayidx153_triangular0_dupName_2_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx153_triangular0_dupName_2_trunc_sel_x_b);
        end
    end

    // i_arrayidx153_triangular0_dupName_0_add_x(ADD,134)@8
    assign i_arrayidx153_triangular0_dupName_0_add_x_a = {1'b0, redist34_i_arrayidx153_triangular0_dupName_2_trunc_sel_x_b_1_q};
    assign i_arrayidx153_triangular0_dupName_0_add_x_b = {1'b0, i_arrayidx153_triangular0_shift_join_x_q};
    assign i_arrayidx153_triangular0_dupName_0_add_x_o = $unsigned(i_arrayidx153_triangular0_dupName_0_add_x_a) + $unsigned(i_arrayidx153_triangular0_dupName_0_add_x_b);
    assign i_arrayidx153_triangular0_dupName_0_add_x_q = i_arrayidx153_triangular0_dupName_0_add_x_o[16:0];

    // i_arrayidx153_triangular0_dupName_5_trunc_sel_x(BITSELECT,147)@8
    assign i_arrayidx153_triangular0_dupName_5_trunc_sel_x_b = i_arrayidx153_triangular0_dupName_0_add_x_q[15:0];

    // i_arrayidx153_triangular0_append_upper_bits_x(BITJOIN,125)@8
    assign i_arrayidx153_triangular0_append_upper_bits_x_q = {redist0_i_arrayidx153_triangular0_upper_bits_x_merged_bit_select_b_1_q, i_arrayidx153_triangular0_dupName_5_trunc_sel_x_b};

    // i_arrayidx153_triangular27_vt_select_63(BITSELECT,51)@8
    assign i_arrayidx153_triangular27_vt_select_63_b = i_arrayidx153_triangular0_append_upper_bits_x_q[63:2];

    // redist51_i_arrayidx153_triangular27_vt_select_63_b_6_inputreg0(DELAY,527)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist51_i_arrayidx153_triangular27_vt_select_63_b_6_inputreg0_q <= $unsigned(i_arrayidx153_triangular27_vt_select_63_b);
        end
    end

    // redist51_i_arrayidx153_triangular27_vt_select_63_b_6_wraddr(COUNTER,530)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist51_i_arrayidx153_triangular27_vt_select_63_b_6_wraddr_i <= $unsigned(redist51_i_arrayidx153_triangular27_vt_select_63_b_6_wraddr_i) + $unsigned(2'd1);
        end
    end
    assign redist51_i_arrayidx153_triangular27_vt_select_63_b_6_wraddr_q = redist51_i_arrayidx153_triangular27_vt_select_63_b_6_wraddr_i[1:0];

    // redist51_i_arrayidx153_triangular27_vt_select_63_b_6_mem(DUALMEM,529)
    assign redist51_i_arrayidx153_triangular27_vt_select_63_b_6_mem_ia = $unsigned(redist51_i_arrayidx153_triangular27_vt_select_63_b_6_inputreg0_q);
    assign redist51_i_arrayidx153_triangular27_vt_select_63_b_6_mem_aa = redist51_i_arrayidx153_triangular27_vt_select_63_b_6_wraddr_q;
    assign redist51_i_arrayidx153_triangular27_vt_select_63_b_6_mem_ab = redist51_i_arrayidx153_triangular27_vt_select_63_b_6_rdcnt_q[1:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(62),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(62),
        .widthad_b(2),
        .numwords_b(4),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Stratix 10")
    ) redist51_i_arrayidx153_triangular27_vt_select_63_b_6_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist51_i_arrayidx153_triangular27_vt_select_63_b_6_mem_aa),
        .data_a(redist51_i_arrayidx153_triangular27_vt_select_63_b_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist51_i_arrayidx153_triangular27_vt_select_63_b_6_mem_ab),
        .q_b(redist51_i_arrayidx153_triangular27_vt_select_63_b_6_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
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
    assign redist51_i_arrayidx153_triangular27_vt_select_63_b_6_mem_q = redist51_i_arrayidx153_triangular27_vt_select_63_b_6_mem_iq[61:0];

    // redist51_i_arrayidx153_triangular27_vt_select_63_b_6_outputreg0(DELAY,528)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist51_i_arrayidx153_triangular27_vt_select_63_b_6_outputreg0_q <= $unsigned(redist51_i_arrayidx153_triangular27_vt_select_63_b_6_mem_q);
        end
    end

    // i_arrayidx153_triangular27_vt_join(BITJOIN,50)@14
    assign i_arrayidx153_triangular27_vt_join_q = {redist51_i_arrayidx153_triangular27_vt_select_63_b_6_outputreg0_q, i_arrayidx111_triangular13_vt_const_1_q};

    // i_llvm_fpga_mem_lm113_triangular29(BLACKBOX,73)@14
    // in in_i_stall@20000000
    // out out_lm113_triangular_avm_address@20000000
    // out out_lm113_triangular_avm_burstcount@20000000
    // out out_lm113_triangular_avm_byteenable@20000000
    // out out_lm113_triangular_avm_enable@20000000
    // out out_lm113_triangular_avm_read@20000000
    // out out_lm113_triangular_avm_write@20000000
    // out out_lm113_triangular_avm_writedata@20000000
    // out out_o_readdata@15
    // out out_o_stall@15
    // out out_o_valid@15
    triangular_i_llvm_fpga_mem_lm113_0 thei_llvm_fpga_mem_lm113_triangular29 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx153_triangular27_vt_join_q),
        .in_i_dependence(redist45_i_memdep_phi4_or_triangular23_q_6_q),
        .in_i_predicate(redist42_i_triangular_b5_current_iter_isspec_or10_triangular28_q_10_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg13_q),
        .in_lm113_triangular_avm_readdata(in_lm113_triangular_avm_readdata),
        .in_lm113_triangular_avm_readdatavalid(in_lm113_triangular_avm_readdatavalid),
        .in_lm113_triangular_avm_waitrequest(in_lm113_triangular_avm_waitrequest),
        .in_lm113_triangular_avm_writeack(in_lm113_triangular_avm_writeack),
        .out_lm113_triangular_avm_address(i_llvm_fpga_mem_lm113_triangular29_out_lm113_triangular_avm_address),
        .out_lm113_triangular_avm_burstcount(i_llvm_fpga_mem_lm113_triangular29_out_lm113_triangular_avm_burstcount),
        .out_lm113_triangular_avm_byteenable(i_llvm_fpga_mem_lm113_triangular29_out_lm113_triangular_avm_byteenable),
        .out_lm113_triangular_avm_enable(i_llvm_fpga_mem_lm113_triangular29_out_lm113_triangular_avm_enable),
        .out_lm113_triangular_avm_read(i_llvm_fpga_mem_lm113_triangular29_out_lm113_triangular_avm_read),
        .out_lm113_triangular_avm_write(i_llvm_fpga_mem_lm113_triangular29_out_lm113_triangular_avm_write),
        .out_lm113_triangular_avm_writedata(i_llvm_fpga_mem_lm113_triangular29_out_lm113_triangular_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm113_triangular29_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sub16_triangular30(SUB,83)@15
    assign i_sub16_triangular30_a = {1'b0, i_llvm_fpga_mem_lm113_triangular29_out_o_readdata};
    assign i_sub16_triangular30_b = {1'b0, bgTrunc_i_mul_triangular26_sel_x_b};
    assign i_sub16_triangular30_o = $unsigned(i_sub16_triangular30_a) - $unsigned(i_sub16_triangular30_b);
    assign i_sub16_triangular30_q = i_sub16_triangular30_o[32:0];

    // bgTrunc_i_sub16_triangular30_sel_x(BITSELECT,101)@15
    assign bgTrunc_i_sub16_triangular30_sel_x_b = $unsigned(i_sub16_triangular30_q[31:0]);

    // redist19_sync_together101_aunroll_x_in_i_valid_14(DELAY,469)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist19_sync_together101_aunroll_x_in_i_valid_14_q <= $unsigned(redist18_sync_together101_aunroll_x_in_i_valid_13_q);
        end
    end

    // valid_fanout_reg14(REG,256)@14 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist19_sync_together101_aunroll_x_in_i_valid_14_q);
        end
    end

    // redist43_i_triangular_b5_current_iter_isspec_or10_triangular28_q_11(DELAY,493)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist43_i_triangular_b5_current_iter_isspec_or10_triangular28_q_11_q <= $unsigned(redist42_i_triangular_b5_current_iter_isspec_or10_triangular28_q_10_q);
        end
    end

    // redist52_i_arrayidx153_triangular27_vt_join_q_1(DELAY,502)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist52_i_arrayidx153_triangular27_vt_join_q_1_q <= $unsigned(i_arrayidx153_triangular27_vt_join_q);
        end
    end

    // i_llvm_fpga_mem_memdep_triangular32(BLACKBOX,76)@15
    // out out_memdep_triangular_avm_address@20000000
    // out out_memdep_triangular_avm_burstcount@20000000
    // out out_memdep_triangular_avm_byteenable@20000000
    // out out_memdep_triangular_avm_enable@20000000
    // out out_memdep_triangular_avm_read@20000000
    // out out_memdep_triangular_avm_write@20000000
    // out out_memdep_triangular_avm_writedata@20000000
    // out out_o_stall@16
    // out out_o_valid@16
    // out out_o_writeack@16
    triangular_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_triangular32 (
        .in_flush(in_flush),
        .in_i_address(redist52_i_arrayidx153_triangular27_vt_join_q_1_q),
        .in_i_predicate(redist43_i_triangular_b5_current_iter_isspec_or10_triangular28_q_11_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg14_q),
        .in_i_writedata(bgTrunc_i_sub16_triangular30_sel_x_b),
        .in_memdep_triangular_avm_readdata(in_memdep_triangular_avm_readdata),
        .in_memdep_triangular_avm_readdatavalid(in_memdep_triangular_avm_readdatavalid),
        .in_memdep_triangular_avm_waitrequest(in_memdep_triangular_avm_waitrequest),
        .in_memdep_triangular_avm_writeack(in_memdep_triangular_avm_writeack),
        .out_memdep_triangular_avm_address(i_llvm_fpga_mem_memdep_triangular32_out_memdep_triangular_avm_address),
        .out_memdep_triangular_avm_burstcount(i_llvm_fpga_mem_memdep_triangular32_out_memdep_triangular_avm_burstcount),
        .out_memdep_triangular_avm_byteenable(i_llvm_fpga_mem_memdep_triangular32_out_memdep_triangular_avm_byteenable),
        .out_memdep_triangular_avm_enable(i_llvm_fpga_mem_memdep_triangular32_out_memdep_triangular_avm_enable),
        .out_memdep_triangular_avm_read(i_llvm_fpga_mem_memdep_triangular32_out_memdep_triangular_avm_read),
        .out_memdep_triangular_avm_write(i_llvm_fpga_mem_memdep_triangular32_out_memdep_triangular_avm_write),
        .out_memdep_triangular_avm_writedata(i_llvm_fpga_mem_memdep_triangular32_out_memdep_triangular_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(i_llvm_fpga_mem_memdep_triangular32_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi_push18_triangular0_element_extension2_x(BITJOIN,194)@16
    assign i_llvm_fpga_push_i1_memdep_phi_push18_triangular0_element_extension2_x_q = {i_arrayidx153_triangular0_mult_multconst_x_q, i_llvm_fpga_mem_memdep_triangular32_out_o_writeack};

    // valid_fanout_reg23(REG,265)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(redist14_sync_together101_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist26_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_10(DELAY,476)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist26_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_10_delay_0 <= $unsigned(redist25_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_6_q);
            redist26_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_10_delay_1 <= redist26_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_10_delay_0;
            redist26_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_10_delay_2 <= redist26_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_10_delay_1;
            redist26_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_10_q <= redist26_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_10_delay_2;
        end
    end

    // redist27_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_14(DELAY,477)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist27_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_14_delay_0 <= $unsigned(redist26_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_10_q);
            redist27_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_14_delay_1 <= redist27_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_14_delay_0;
            redist27_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_14_delay_2 <= redist27_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_14_delay_1;
            redist27_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_14_q <= redist27_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_14_delay_2;
        end
    end

    // valid_fanout_reg22(REG,264)@14 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist19_sync_together101_aunroll_x_in_i_valid_14_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_push18_triangular0_i_llvm_fpga_push_i1_memdep_phi_push18_triangular1_x(FIFODELAY,195)@5
    // in i_valid@15
    // in i_write_pred@15
    // in i_data@16
    // out o_data@8
    assign i_llvm_fpga_push_i1_memdep_phi_push18_triangular0_i_llvm_fpga_push_i1_memdep_phi_push18_triangular1_x_i_stall = ~ (valid_fanout_reg23_q & redist24_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_4_q);
    assign i_llvm_fpga_push_i1_memdep_phi_push18_triangular0_i_llvm_fpga_push_i1_memdep_phi_push18_triangular1_x_i_valid = valid_fanout_reg22_q & redist27_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_14_q;
    assign i_llvm_fpga_push_i1_memdep_phi_push18_triangular0_i_llvm_fpga_push_i1_memdep_phi_push18_triangular1_x_i_data = i_llvm_fpga_push_i1_memdep_phi_push18_triangular0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_memdep_phi_push18_triangular0_i_llvm_fpga_push_i1_memdep_phi_push18_triangular1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi_push18_triangular0_i_llvm_fpga_push_i1_memdep_phi_push18_triangular1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_memdep_phi_push18_triangular0_i_llvm_fpga_push_i1_memdep_phi_push18_triangular1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi_push18_triangular0_i_llvm_fpga_push_i1_memdep_phi_push18_triangular1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(8),
        .STYLE("zl"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i1_memdep_phi_push18_triangular0_i_llvm_fpga_push_i1_memdep_phi_push18_triangular1_x (
        .i_valid(i_llvm_fpga_push_i1_memdep_phi_push18_triangular0_i_llvm_fpga_push_i1_memdep_phi_push18_triangular1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_memdep_phi_push18_triangular0_i_llvm_fpga_push_i1_memdep_phi_push18_triangular1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_memdep_phi_push18_triangular0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_memdep_phi_push18_triangular0_i_llvm_fpga_push_i1_memdep_phi_push18_triangular1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi_push18_triangular0_adapt_scalar_trunc4_sel_x(BITSELECT,197)@8
    assign i_llvm_fpga_push_i1_memdep_phi_push18_triangular0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_memdep_phi_push18_triangular0_i_llvm_fpga_push_i1_memdep_phi_push18_triangular1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular0_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular21_mux_x(MUX,177)@8
    assign i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular0_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular21_mux_x_s = redist49_i_llvm_fpga_forked_triangular_b5_forked_triangular3_out_buffer_out_8_q;
    always @(i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular0_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular21_mux_x_s or i_llvm_fpga_push_i1_memdep_phi_push18_triangular0_adapt_scalar_trunc4_sel_x_b or GND_q)
    begin
        unique case (i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular0_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular21_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular0_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular21_mux_x_q = i_llvm_fpga_push_i1_memdep_phi_push18_triangular0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular0_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular21_mux_x_q = GND_q;
            default : i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular0_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular21_mux_x_q = 1'b0;
        endcase
    end

    // i_memdep_phi4_or_triangular23(LOGICAL,80)@8
    assign i_memdep_phi4_or_triangular23_q = i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular0_i_llvm_fpga_pop_i1_memdep_phi_pop18_triangular21_mux_x_q | i_llvm_fpga_pop_i1_memdep_phi4_pop1331_pop25_triangular0_i_llvm_fpga_pop_i1_memdep_phi4_pop1331_pop25_triangular22_mux_x_q;

    // i_arrayidx92_triangular0_dupName_3_trunc_sel_x(BITSELECT,170)@4
    assign i_arrayidx92_triangular0_dupName_3_trunc_sel_x_b = i_idxprom820_triangular12_vt_join_q[15:0];

    // i_arrayidx92_triangular0_narrow_x(BITSELECT,153)@4
    assign i_arrayidx92_triangular0_narrow_x_b = i_arrayidx92_triangular0_dupName_3_trunc_sel_x_b[13:0];

    // redist33_i_arrayidx92_triangular0_narrow_x_b_4_inputreg0(DELAY,526)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist33_i_arrayidx92_triangular0_narrow_x_b_4_inputreg0_q <= $unsigned(i_arrayidx92_triangular0_narrow_x_b);
        end
    end

    // redist33_i_arrayidx92_triangular0_narrow_x_b_4(DELAY,483)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist33_i_arrayidx92_triangular0_narrow_x_b_4_delay_0 <= $unsigned(redist33_i_arrayidx92_triangular0_narrow_x_b_4_inputreg0_q);
            redist33_i_arrayidx92_triangular0_narrow_x_b_4_delay_1 <= redist33_i_arrayidx92_triangular0_narrow_x_b_4_delay_0;
            redist33_i_arrayidx92_triangular0_narrow_x_b_4_q <= redist33_i_arrayidx92_triangular0_narrow_x_b_4_delay_1;
        end
    end

    // i_arrayidx92_triangular0_shift_join_x(BITJOIN,154)@8
    assign i_arrayidx92_triangular0_shift_join_x_q = {redist33_i_arrayidx92_triangular0_narrow_x_b_4_q, i_arrayidx111_triangular13_vt_const_1_q};

    // i_arrayidx92_triangular0_dupName_0_add_x(ADD,158)@8
    assign i_arrayidx92_triangular0_dupName_0_add_x_a = {1'b0, redist34_i_arrayidx153_triangular0_dupName_2_trunc_sel_x_b_1_q};
    assign i_arrayidx92_triangular0_dupName_0_add_x_b = {1'b0, i_arrayidx92_triangular0_shift_join_x_q};
    assign i_arrayidx92_triangular0_dupName_0_add_x_o = $unsigned(i_arrayidx92_triangular0_dupName_0_add_x_a) + $unsigned(i_arrayidx92_triangular0_dupName_0_add_x_b);
    assign i_arrayidx92_triangular0_dupName_0_add_x_q = i_arrayidx92_triangular0_dupName_0_add_x_o[16:0];

    // i_arrayidx92_triangular0_dupName_5_trunc_sel_x(BITSELECT,171)@8
    assign i_arrayidx92_triangular0_dupName_5_trunc_sel_x_b = i_arrayidx92_triangular0_dupName_0_add_x_q[15:0];

    // i_arrayidx92_triangular0_append_upper_bits_x(BITJOIN,149)@8
    assign i_arrayidx92_triangular0_append_upper_bits_x_q = {redist0_i_arrayidx153_triangular0_upper_bits_x_merged_bit_select_b_1_q, i_arrayidx92_triangular0_dupName_5_trunc_sel_x_b};

    // i_arrayidx92_triangular20_vt_select_63(BITSELECT,54)@8
    assign i_arrayidx92_triangular20_vt_select_63_b = i_arrayidx92_triangular0_append_upper_bits_x_q[63:2];

    // i_arrayidx92_triangular20_vt_join(BITJOIN,53)@8
    assign i_arrayidx92_triangular20_vt_join_q = {i_arrayidx92_triangular20_vt_select_63_b, i_arrayidx111_triangular13_vt_const_1_q};

    // i_llvm_fpga_mem_lm92_triangular25(BLACKBOX,75)@8
    // in in_i_stall@20000000
    // out out_lm92_triangular_avm_address@20000000
    // out out_lm92_triangular_avm_burstcount@20000000
    // out out_lm92_triangular_avm_byteenable@20000000
    // out out_lm92_triangular_avm_enable@20000000
    // out out_lm92_triangular_avm_read@20000000
    // out out_lm92_triangular_avm_write@20000000
    // out out_lm92_triangular_avm_writedata@20000000
    // out out_o_readdata@9
    // out out_o_stall@9
    // out out_o_valid@9
    triangular_i_llvm_fpga_mem_lm92_0 thei_llvm_fpga_mem_lm92_triangular25 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx92_triangular20_vt_join_q),
        .in_i_dependence(i_memdep_phi4_or_triangular23_q),
        .in_i_predicate(redist41_i_triangular_b5_current_iter_isspec_or10_triangular28_q_4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg12_q),
        .in_lm92_triangular_avm_readdata(in_lm92_triangular_avm_readdata),
        .in_lm92_triangular_avm_readdatavalid(in_lm92_triangular_avm_readdatavalid),
        .in_lm92_triangular_avm_waitrequest(in_lm92_triangular_avm_waitrequest),
        .in_lm92_triangular_avm_writeack(in_lm92_triangular_avm_writeack),
        .out_lm92_triangular_avm_address(i_llvm_fpga_mem_lm92_triangular25_out_lm92_triangular_avm_address),
        .out_lm92_triangular_avm_burstcount(i_llvm_fpga_mem_lm92_triangular25_out_lm92_triangular_avm_burstcount),
        .out_lm92_triangular_avm_byteenable(i_llvm_fpga_mem_lm92_triangular25_out_lm92_triangular_avm_byteenable),
        .out_lm92_triangular_avm_enable(i_llvm_fpga_mem_lm92_triangular25_out_lm92_triangular_avm_enable),
        .out_lm92_triangular_avm_read(i_llvm_fpga_mem_lm92_triangular25_out_lm92_triangular_avm_read),
        .out_lm92_triangular_avm_write(i_llvm_fpga_mem_lm92_triangular25_out_lm92_triangular_avm_write),
        .out_lm92_triangular_avm_writedata(i_llvm_fpga_mem_lm92_triangular25_out_lm92_triangular_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm92_triangular25_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,104)
    assign out_lm92_triangular_avm_address = i_llvm_fpga_mem_lm92_triangular25_out_lm92_triangular_avm_address;
    assign out_lm92_triangular_avm_enable = i_llvm_fpga_mem_lm92_triangular25_out_lm92_triangular_avm_enable;
    assign out_lm92_triangular_avm_read = i_llvm_fpga_mem_lm92_triangular25_out_lm92_triangular_avm_read;
    assign out_lm92_triangular_avm_write = i_llvm_fpga_mem_lm92_triangular25_out_lm92_triangular_avm_write;
    assign out_lm92_triangular_avm_writedata = i_llvm_fpga_mem_lm92_triangular25_out_lm92_triangular_avm_writedata;
    assign out_lm92_triangular_avm_byteenable = i_llvm_fpga_mem_lm92_triangular25_out_lm92_triangular_avm_byteenable;
    assign out_lm92_triangular_avm_burstcount = i_llvm_fpga_mem_lm92_triangular25_out_lm92_triangular_avm_burstcount;

    // dupName_0_regfree_osync_x(GPOUT,105)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going_triangular6_out_pipeline_dummy_out;

    // dupName_1_ext_sig_sync_out_x(GPOUT,107)
    assign out_lm113_triangular_avm_address = i_llvm_fpga_mem_lm113_triangular29_out_lm113_triangular_avm_address;
    assign out_lm113_triangular_avm_enable = i_llvm_fpga_mem_lm113_triangular29_out_lm113_triangular_avm_enable;
    assign out_lm113_triangular_avm_read = i_llvm_fpga_mem_lm113_triangular29_out_lm113_triangular_avm_read;
    assign out_lm113_triangular_avm_write = i_llvm_fpga_mem_lm113_triangular29_out_lm113_triangular_avm_write;
    assign out_lm113_triangular_avm_writedata = i_llvm_fpga_mem_lm113_triangular29_out_lm113_triangular_avm_writedata;
    assign out_lm113_triangular_avm_byteenable = i_llvm_fpga_mem_lm113_triangular29_out_lm113_triangular_avm_byteenable;
    assign out_lm113_triangular_avm_burstcount = i_llvm_fpga_mem_lm113_triangular29_out_lm113_triangular_avm_burstcount;

    // dupName_1_regfree_osync_x(GPOUT,108)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going_triangular6_out_pipeline_forked_out;

    // dupName_2_ext_sig_sync_out_x(GPOUT,110)
    assign out_memdep_triangular_avm_address = i_llvm_fpga_mem_memdep_triangular32_out_memdep_triangular_avm_address;
    assign out_memdep_triangular_avm_enable = i_llvm_fpga_mem_memdep_triangular32_out_memdep_triangular_avm_enable;
    assign out_memdep_triangular_avm_read = i_llvm_fpga_mem_memdep_triangular32_out_memdep_triangular_avm_read;
    assign out_memdep_triangular_avm_write = i_llvm_fpga_mem_memdep_triangular32_out_memdep_triangular_avm_write;
    assign out_memdep_triangular_avm_writedata = i_llvm_fpga_mem_memdep_triangular32_out_memdep_triangular_avm_writedata;
    assign out_memdep_triangular_avm_byteenable = i_llvm_fpga_mem_memdep_triangular32_out_memdep_triangular_avm_byteenable;
    assign out_memdep_triangular_avm_burstcount = i_llvm_fpga_mem_memdep_triangular32_out_memdep_triangular_avm_burstcount;

    // dupName_2_regfree_osync_x(GPOUT,111)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_triangular6_out_pipeline_valid_out;

    // redist40_i_triangular_b5_current_iter_isspec_triangular5_q_12(DELAY,490)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist40_i_triangular_b5_current_iter_isspec_triangular5_q_12 ( .xin(i_triangular_b5_current_iter_isspec_triangular5_q), .xout(redist40_i_triangular_b5_current_iter_isspec_triangular5_q_12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist20_sync_together101_aunroll_x_in_i_valid_15(DELAY,470)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist20_sync_together101_aunroll_x_in_i_valid_15_q <= '0;
        end
        else
        begin
            redist20_sync_together101_aunroll_x_in_i_valid_15_q <= $unsigned(redist19_sync_together101_aunroll_x_in_i_valid_14_q);
        end
    end

    // redist21_sync_together101_aunroll_x_in_i_valid_16(DELAY,471)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist21_sync_together101_aunroll_x_in_i_valid_16_q <= $unsigned(redist20_sync_together101_aunroll_x_in_i_valid_15_q);
        end
    end

    // valid_fanout_reg0(REG,242)@15 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist20_sync_together101_aunroll_x_in_i_valid_15_q);
        end
    end

    // redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_offset(CONSTANT,512)
    assign redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_offset_q = $unsigned(4'b0101);

    // redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_rdcnt(ADD,519)
    assign redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_rdcnt_a = {1'b0, redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_wraddr_q};
    assign redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_rdcnt_b = {1'b0, redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_rdcnt_o <= $unsigned(redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_rdcnt_a) + $unsigned(redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_rdcnt_b);
        end
    end
    assign redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_rdcnt_q = redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_rdcnt_o[4:0];

    // redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_inputreg0(DELAY,514)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_inputreg0_q <= $unsigned(in_c0_eni12_12_tpl);
        end
    end

    // redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_wraddr(COUNTER,517)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_wraddr_i <= $unsigned(redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_wraddr_q = redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_wraddr_i[3:0];

    // redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_mem(DUALMEM,516)
    assign redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_mem_ia = $unsigned(redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_inputreg0_q);
    assign redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_mem_aa = redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_wraddr_q;
    assign redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_mem_ab = redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_rdcnt_q[3:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(4),
        .numwords_a(16),
        .width_b(32),
        .widthad_b(4),
        .numwords_b(16),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Stratix 10")
    ) redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_mem_aa),
        .data_a(redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_mem_ab),
        .q_b(redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
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
    assign redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_mem_q = redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_mem_iq[31:0];

    // redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_outputreg0(DELAY,515)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_outputreg0_q <= $unsigned(redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_mem_q);
        end
    end

    // redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_rdcnt(ADD,513)
    assign redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_rdcnt_a = {1'b0, redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_wraddr_q};
    assign redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_rdcnt_b = {1'b0, redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_rdcnt_o <= $unsigned(redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_rdcnt_a) + $unsigned(redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_rdcnt_b);
        end
    end
    assign redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_rdcnt_q = redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_rdcnt_o[4:0];

    // redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_inputreg0(DELAY,508)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_inputreg0_q <= $unsigned(in_c0_eni12_11_tpl);
        end
    end

    // redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_wraddr(COUNTER,511)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_wraddr_i <= $unsigned(redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_wraddr_q = redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_wraddr_i[3:0];

    // redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_mem(DUALMEM,510)
    assign redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_mem_ia = $unsigned(redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_inputreg0_q);
    assign redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_mem_aa = redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_wraddr_q;
    assign redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_mem_ab = redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_rdcnt_q[3:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(4),
        .numwords_a(16),
        .width_b(32),
        .widthad_b(4),
        .numwords_b(16),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Stratix 10")
    ) redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_mem_aa),
        .data_a(redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_mem_ab),
        .q_b(redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
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
    assign redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_mem_q = redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_mem_iq[31:0];

    // redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_outputreg0(DELAY,509)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_outputreg0_q <= $unsigned(redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_mem_q);
        end
    end

    // redist9_sync_together101_aunroll_x_in_c0_eni12_10_tpl_4(DELAY,459)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_sync_together101_aunroll_x_in_c0_eni12_10_tpl_4_delay_0 <= $unsigned(in_c0_eni12_10_tpl);
            redist9_sync_together101_aunroll_x_in_c0_eni12_10_tpl_4_delay_1 <= redist9_sync_together101_aunroll_x_in_c0_eni12_10_tpl_4_delay_0;
            redist9_sync_together101_aunroll_x_in_c0_eni12_10_tpl_4_delay_2 <= redist9_sync_together101_aunroll_x_in_c0_eni12_10_tpl_4_delay_1;
            redist9_sync_together101_aunroll_x_in_c0_eni12_10_tpl_4_q <= redist9_sync_together101_aunroll_x_in_c0_eni12_10_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_push23_triangular0_element_extension2_x(BITJOIN,212)@12
    assign i_llvm_fpga_push_i1_push23_triangular0_element_extension2_x_q = {i_arrayidx153_triangular0_mult_multconst_x_q, redist30_i_llvm_fpga_pop_i1_pop23_triangular0_i_llvm_fpga_pop_i1_pop23_triangular55_mux_x_q_8_q};

    // valid_fanout_reg41(REG,283)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg41_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg40(REG,282)@10 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg40_q <= $unsigned(redist17_sync_together101_aunroll_x_in_i_valid_10_q);
        end
    end

    // i_llvm_fpga_push_i1_push23_triangular0_i_llvm_fpga_push_i1_push23_triangular1_x(FIFODELAY,213)@1
    // in i_valid@11
    // in i_write_pred@11
    // in i_data@12
    // out o_data@4
    assign i_llvm_fpga_push_i1_push23_triangular0_i_llvm_fpga_push_i1_push23_triangular1_x_i_stall = ~ (valid_fanout_reg41_q & i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_push23_triangular0_i_llvm_fpga_push_i1_push23_triangular1_x_i_valid = valid_fanout_reg40_q & redist26_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_10_q;
    assign i_llvm_fpga_push_i1_push23_triangular0_i_llvm_fpga_push_i1_push23_triangular1_x_i_data = i_llvm_fpga_push_i1_push23_triangular0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_push23_triangular0_i_llvm_fpga_push_i1_push23_triangular1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_push23_triangular0_i_llvm_fpga_push_i1_push23_triangular1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_push23_triangular0_i_llvm_fpga_push_i1_push23_triangular1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_push23_triangular0_i_llvm_fpga_push_i1_push23_triangular1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(8),
        .STYLE("zl"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i1_push23_triangular0_i_llvm_fpga_push_i1_push23_triangular1_x (
        .i_valid(i_llvm_fpga_push_i1_push23_triangular0_i_llvm_fpga_push_i1_push23_triangular1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_push23_triangular0_i_llvm_fpga_push_i1_push23_triangular1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_push23_triangular0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_push23_triangular0_i_llvm_fpga_push_i1_push23_triangular1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_push23_triangular0_adapt_scalar_trunc4_sel_x(BITSELECT,215)@4
    assign i_llvm_fpga_push_i1_push23_triangular0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_push23_triangular0_i_llvm_fpga_push_i1_push23_triangular1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_pop23_triangular0_i_llvm_fpga_pop_i1_pop23_triangular55_mux_x(MUX,180)@4 + 1
    assign i_llvm_fpga_pop_i1_pop23_triangular0_i_llvm_fpga_pop_i1_pop23_triangular55_mux_x_s = redist48_i_llvm_fpga_forked_triangular_b5_forked_triangular3_out_buffer_out_4_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i1_pop23_triangular0_i_llvm_fpga_pop_i1_pop23_triangular55_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i1_pop23_triangular0_i_llvm_fpga_pop_i1_pop23_triangular55_mux_x_q <= i_llvm_fpga_push_i1_push23_triangular0_adapt_scalar_trunc4_sel_x_b;
                1'b1 : i_llvm_fpga_pop_i1_pop23_triangular0_i_llvm_fpga_pop_i1_pop23_triangular55_mux_x_q <= redist9_sync_together101_aunroll_x_in_c0_eni12_10_tpl_4_q;
                default : i_llvm_fpga_pop_i1_pop23_triangular0_i_llvm_fpga_pop_i1_pop23_triangular55_mux_x_q <= 1'b0;
            endcase
        end
    end

    // redist30_i_llvm_fpga_pop_i1_pop23_triangular0_i_llvm_fpga_pop_i1_pop23_triangular55_mux_x_q_8(DELAY,480)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist30_i_llvm_fpga_pop_i1_pop23_triangular0_i_llvm_fpga_pop_i1_pop23_triangular55_mux_x_q_8 ( .xin(i_llvm_fpga_pop_i1_pop23_triangular0_i_llvm_fpga_pop_i1_pop23_triangular55_mux_x_q), .xout(redist30_i_llvm_fpga_pop_i1_pop23_triangular0_i_llvm_fpga_pop_i1_pop23_triangular55_mux_x_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist31_i_llvm_fpga_pop_i1_pop23_triangular0_i_llvm_fpga_pop_i1_pop23_triangular55_mux_x_q_12(DELAY,481)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist31_i_llvm_fpga_pop_i1_pop23_triangular0_i_llvm_fpga_pop_i1_pop23_triangular55_mux_x_q_12_delay_0 <= $unsigned(redist30_i_llvm_fpga_pop_i1_pop23_triangular0_i_llvm_fpga_pop_i1_pop23_triangular55_mux_x_q_8_q);
            redist31_i_llvm_fpga_pop_i1_pop23_triangular0_i_llvm_fpga_pop_i1_pop23_triangular55_mux_x_q_12_delay_1 <= redist31_i_llvm_fpga_pop_i1_pop23_triangular0_i_llvm_fpga_pop_i1_pop23_triangular55_mux_x_q_12_delay_0;
            redist31_i_llvm_fpga_pop_i1_pop23_triangular0_i_llvm_fpga_pop_i1_pop23_triangular55_mux_x_q_12_delay_2 <= redist31_i_llvm_fpga_pop_i1_pop23_triangular0_i_llvm_fpga_pop_i1_pop23_triangular55_mux_x_q_12_delay_1;
            redist31_i_llvm_fpga_pop_i1_pop23_triangular0_i_llvm_fpga_pop_i1_pop23_triangular55_mux_x_q_12_q <= redist31_i_llvm_fpga_pop_i1_pop23_triangular0_i_llvm_fpga_pop_i1_pop23_triangular55_mux_x_q_12_delay_2;
        end
    end

    // redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_offset(CONSTANT,524)
    assign redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_offset_q = $unsigned(4'b1001);

    // redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_rdcnt(ADD,525)
    assign redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_rdcnt_a = {1'b0, redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_wraddr_q};
    assign redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_rdcnt_b = {1'b0, redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_rdcnt_o <= $unsigned(redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_rdcnt_a) + $unsigned(redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_rdcnt_b);
        end
    end
    assign redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_rdcnt_q = redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_rdcnt_o[4:0];

    // redist8_sync_together101_aunroll_x_in_c0_eni12_9_tpl_4_inputreg0(DELAY,507)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_sync_together101_aunroll_x_in_c0_eni12_9_tpl_4_inputreg0_q <= $unsigned(in_c0_eni12_9_tpl);
        end
    end

    // redist8_sync_together101_aunroll_x_in_c0_eni12_9_tpl_4(DELAY,458)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_sync_together101_aunroll_x_in_c0_eni12_9_tpl_4_delay_0 <= $unsigned(redist8_sync_together101_aunroll_x_in_c0_eni12_9_tpl_4_inputreg0_q);
            redist8_sync_together101_aunroll_x_in_c0_eni12_9_tpl_4_delay_1 <= redist8_sync_together101_aunroll_x_in_c0_eni12_9_tpl_4_delay_0;
            redist8_sync_together101_aunroll_x_in_c0_eni12_9_tpl_4_q <= redist8_sync_together101_aunroll_x_in_c0_eni12_9_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg38(REG,280)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg38_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg37(REG,279)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg37_q <= $unsigned(redist12_sync_together101_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_lim_ext26_push19_triangular0_i_llvm_fpga_push_i32_lim_ext26_push19_triangular1_x(FIFODELAY,228)@1 + 8
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_lim_ext26_push19_triangular0_i_llvm_fpga_push_i32_lim_ext26_push19_triangular1_x_i_stall = ~ (valid_fanout_reg38_q & i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_lim_ext26_push19_triangular0_i_llvm_fpga_push_i32_lim_ext26_push19_triangular1_x_i_valid = valid_fanout_reg37_q & redist22_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_lim_ext26_push19_triangular0_i_llvm_fpga_push_i32_lim_ext26_push19_triangular1_x_i_data = i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q;
    assign i_llvm_fpga_push_i32_lim_ext26_push19_triangular0_i_llvm_fpga_push_i32_lim_ext26_push19_triangular1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_lim_ext26_push19_triangular0_i_llvm_fpga_push_i32_lim_ext26_push19_triangular1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_lim_ext26_push19_triangular0_i_llvm_fpga_push_i32_lim_ext26_push19_triangular1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_lim_ext26_push19_triangular0_i_llvm_fpga_push_i32_lim_ext26_push19_triangular1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(8),
        .WIDTH(32),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i32_lim_ext26_push19_triangular0_i_llvm_fpga_push_i32_lim_ext26_push19_triangular1_x (
        .i_valid(i_llvm_fpga_push_i32_lim_ext26_push19_triangular0_i_llvm_fpga_push_i32_lim_ext26_push19_triangular1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_lim_ext26_push19_triangular0_i_llvm_fpga_push_i32_lim_ext26_push19_triangular1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_lim_ext26_push19_triangular0_i_llvm_fpga_push_i32_lim_ext26_push19_triangular1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x(MUX,183)@4
    assign i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_s = redist48_i_llvm_fpga_forked_triangular_b5_forked_triangular3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_s or i_llvm_fpga_push_i32_lim_ext26_push19_triangular0_i_llvm_fpga_push_i32_lim_ext26_push19_triangular1_x_o_data or redist8_sync_together101_aunroll_x_in_c0_eni12_9_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q = i_llvm_fpga_push_i32_lim_ext26_push19_triangular0_i_llvm_fpga_push_i32_lim_ext26_push19_triangular1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q = redist8_sync_together101_aunroll_x_in_c0_eni12_9_tpl_4_q;
            default : i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q = 32'b0;
        endcase
    end

    // redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_inputreg0(DELAY,520)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_inputreg0_q <= $unsigned(i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q);
        end
    end

    // redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_wraddr(COUNTER,523)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_wraddr_i <= $unsigned(redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_wraddr_q = redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_wraddr_i[3:0];

    // redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_mem(DUALMEM,522)
    assign redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_mem_ia = $unsigned(redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_inputreg0_q);
    assign redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_mem_aa = redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_wraddr_q;
    assign redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_mem_ab = redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_rdcnt_q[3:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(4),
        .numwords_a(16),
        .width_b(32),
        .widthad_b(4),
        .numwords_b(16),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Stratix 10")
    ) redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_mem_aa),
        .data_a(redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_mem_ab),
        .q_b(redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .aclr1(),
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
    assign redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_mem_q = redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_mem_iq[31:0];

    // redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_outputreg0(DELAY,521)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_outputreg0_q <= $unsigned(redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_mem_q);
        end
    end

    // valid_fanout_reg35(REG,277)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg35_q <= $unsigned(redist13_sync_together101_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_triangular_b5_is_real_thread_triangular51(LOGICAL,89)@4
    assign i_triangular_b5_is_real_thread_triangular51_q = redist50_i_llvm_fpga_dummy_thread_for_body7_dummy_triangular2_out_dummy_out_4_q | i_triangular_b5_current_iter_isspec_triangular5_q;

    // redist6_sync_together101_aunroll_x_in_c0_eni12_7_tpl_4_inputreg0(DELAY,506)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_together101_aunroll_x_in_c0_eni12_7_tpl_4_inputreg0_q <= $unsigned(in_c0_eni12_7_tpl);
        end
    end

    // redist6_sync_together101_aunroll_x_in_c0_eni12_7_tpl_4(DELAY,456)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_together101_aunroll_x_in_c0_eni12_7_tpl_4_delay_0 <= $unsigned(redist6_sync_together101_aunroll_x_in_c0_eni12_7_tpl_4_inputreg0_q);
            redist6_sync_together101_aunroll_x_in_c0_eni12_7_tpl_4_delay_1 <= redist6_sync_together101_aunroll_x_in_c0_eni12_7_tpl_4_delay_0;
            redist6_sync_together101_aunroll_x_in_c0_eni12_7_tpl_4_q <= redist6_sync_together101_aunroll_x_in_c0_eni12_7_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg31(REG,273)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg31_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg30(REG,272)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg30_q <= $unsigned(redist12_sync_together101_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_reorder_limiter_enter28_push20_triangular0_i_llvm_fpga_push_i32_reorder_limiter_enter28_push20_triangular1_x(FIFODELAY,231)@1 + 8
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_reorder_limiter_enter28_push20_triangular0_i_llvm_fpga_push_i32_reorder_limiter_enter28_push20_triangular1_x_i_stall = ~ (valid_fanout_reg31_q & i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_reorder_limiter_enter28_push20_triangular0_i_llvm_fpga_push_i32_reorder_limiter_enter28_push20_triangular1_x_i_valid = valid_fanout_reg30_q & redist22_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_reorder_limiter_enter28_push20_triangular0_i_llvm_fpga_push_i32_reorder_limiter_enter28_push20_triangular1_x_i_data = i_llvm_fpga_pop_i32_reorder_limiter_enter28_pop20_triangular0_i_llvm_fpga_pop_i32_reorder_limiter_enter28_pop20_triangular47_mux_x_q;
    assign i_llvm_fpga_push_i32_reorder_limiter_enter28_push20_triangular0_i_llvm_fpga_push_i32_reorder_limiter_enter28_push20_triangular1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_reorder_limiter_enter28_push20_triangular0_i_llvm_fpga_push_i32_reorder_limiter_enter28_push20_triangular1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_reorder_limiter_enter28_push20_triangular0_i_llvm_fpga_push_i32_reorder_limiter_enter28_push20_triangular1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_reorder_limiter_enter28_push20_triangular0_i_llvm_fpga_push_i32_reorder_limiter_enter28_push20_triangular1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(8),
        .WIDTH(32),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i32_reorder_limiter_enter28_push20_triangular0_i_llvm_fpga_push_i32_reorder_limiter_enter28_push20_triangular1_x (
        .i_valid(i_llvm_fpga_push_i32_reorder_limiter_enter28_push20_triangular0_i_llvm_fpga_push_i32_reorder_limiter_enter28_push20_triangular1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_reorder_limiter_enter28_push20_triangular0_i_llvm_fpga_push_i32_reorder_limiter_enter28_push20_triangular1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_reorder_limiter_enter28_pop20_triangular0_i_llvm_fpga_pop_i32_reorder_limiter_enter28_pop20_triangular47_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_reorder_limiter_enter28_push20_triangular0_i_llvm_fpga_push_i32_reorder_limiter_enter28_push20_triangular1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_reorder_limiter_enter28_pop20_triangular0_i_llvm_fpga_pop_i32_reorder_limiter_enter28_pop20_triangular47_mux_x(MUX,184)@4
    assign i_llvm_fpga_pop_i32_reorder_limiter_enter28_pop20_triangular0_i_llvm_fpga_pop_i32_reorder_limiter_enter28_pop20_triangular47_mux_x_s = redist48_i_llvm_fpga_forked_triangular_b5_forked_triangular3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_reorder_limiter_enter28_pop20_triangular0_i_llvm_fpga_pop_i32_reorder_limiter_enter28_pop20_triangular47_mux_x_s or i_llvm_fpga_push_i32_reorder_limiter_enter28_push20_triangular0_i_llvm_fpga_push_i32_reorder_limiter_enter28_push20_triangular1_x_o_data or redist6_sync_together101_aunroll_x_in_c0_eni12_7_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i32_reorder_limiter_enter28_pop20_triangular0_i_llvm_fpga_pop_i32_reorder_limiter_enter28_pop20_triangular47_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_reorder_limiter_enter28_pop20_triangular0_i_llvm_fpga_pop_i32_reorder_limiter_enter28_pop20_triangular47_mux_x_q = i_llvm_fpga_push_i32_reorder_limiter_enter28_push20_triangular0_i_llvm_fpga_push_i32_reorder_limiter_enter28_push20_triangular1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_reorder_limiter_enter28_pop20_triangular0_i_llvm_fpga_pop_i32_reorder_limiter_enter28_pop20_triangular47_mux_x_q = redist6_sync_together101_aunroll_x_in_c0_eni12_7_tpl_4_q;
            default : i_llvm_fpga_pop_i32_reorder_limiter_enter28_pop20_triangular0_i_llvm_fpga_pop_i32_reorder_limiter_enter28_pop20_triangular47_mux_x_q = 32'b0;
        endcase
    end

    // redist7_sync_together101_aunroll_x_in_c0_eni12_8_tpl_4(DELAY,457)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together101_aunroll_x_in_c0_eni12_8_tpl_4_delay_0 <= $unsigned(in_c0_eni12_8_tpl);
            redist7_sync_together101_aunroll_x_in_c0_eni12_8_tpl_4_delay_1 <= redist7_sync_together101_aunroll_x_in_c0_eni12_8_tpl_4_delay_0;
            redist7_sync_together101_aunroll_x_in_c0_eni12_8_tpl_4_delay_2 <= redist7_sync_together101_aunroll_x_in_c0_eni12_8_tpl_4_delay_1;
            redist7_sync_together101_aunroll_x_in_c0_eni12_8_tpl_4_q <= redist7_sync_together101_aunroll_x_in_c0_eni12_8_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_notcmp1730_push24_triangular0_element_extension2_x(BITJOIN,200)@4
    assign i_llvm_fpga_push_i1_notcmp1730_push24_triangular0_element_extension2_x_q = {i_arrayidx153_triangular0_mult_multconst_x_q, i_llvm_fpga_pop_i1_notcmp1730_pop24_triangular0_i_llvm_fpga_pop_i1_notcmp1730_pop24_triangular49_mux_x_q};

    // valid_fanout_reg34(REG,276)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg34_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg33(REG,275)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg33_q <= $unsigned(redist12_sync_together101_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp1730_push24_triangular0_i_llvm_fpga_push_i1_notcmp1730_push24_triangular1_x(FIFODELAY,201)@1 + 8
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_notcmp1730_push24_triangular0_i_llvm_fpga_push_i1_notcmp1730_push24_triangular1_x_i_stall = ~ (valid_fanout_reg34_q & i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_notcmp1730_push24_triangular0_i_llvm_fpga_push_i1_notcmp1730_push24_triangular1_x_i_valid = valid_fanout_reg33_q & redist22_i_llvm_fpga_push_i1_memdep_phi4_pop1331_push25_triangular0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_notcmp1730_push24_triangular0_i_llvm_fpga_push_i1_notcmp1730_push24_triangular1_x_i_data = i_llvm_fpga_push_i1_notcmp1730_push24_triangular0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_notcmp1730_push24_triangular0_i_llvm_fpga_push_i1_notcmp1730_push24_triangular1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_notcmp1730_push24_triangular0_i_llvm_fpga_push_i1_notcmp1730_push24_triangular1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_notcmp1730_push24_triangular0_i_llvm_fpga_push_i1_notcmp1730_push24_triangular1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_notcmp1730_push24_triangular0_i_llvm_fpga_push_i1_notcmp1730_push24_triangular1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(8),
        .WIDTH(8),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i1_notcmp1730_push24_triangular0_i_llvm_fpga_push_i1_notcmp1730_push24_triangular1_x (
        .i_valid(i_llvm_fpga_push_i1_notcmp1730_push24_triangular0_i_llvm_fpga_push_i1_notcmp1730_push24_triangular1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_notcmp1730_push24_triangular0_i_llvm_fpga_push_i1_notcmp1730_push24_triangular1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_notcmp1730_push24_triangular0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_notcmp1730_push24_triangular0_i_llvm_fpga_push_i1_notcmp1730_push24_triangular1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_notcmp1730_push24_triangular0_adapt_scalar_trunc4_sel_x(BITSELECT,203)@4
    assign i_llvm_fpga_push_i1_notcmp1730_push24_triangular0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_notcmp1730_push24_triangular0_i_llvm_fpga_push_i1_notcmp1730_push24_triangular1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_notcmp1730_pop24_triangular0_i_llvm_fpga_pop_i1_notcmp1730_pop24_triangular49_mux_x(MUX,178)@4
    assign i_llvm_fpga_pop_i1_notcmp1730_pop24_triangular0_i_llvm_fpga_pop_i1_notcmp1730_pop24_triangular49_mux_x_s = redist48_i_llvm_fpga_forked_triangular_b5_forked_triangular3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i1_notcmp1730_pop24_triangular0_i_llvm_fpga_pop_i1_notcmp1730_pop24_triangular49_mux_x_s or i_llvm_fpga_push_i1_notcmp1730_push24_triangular0_adapt_scalar_trunc4_sel_x_b or redist7_sync_together101_aunroll_x_in_c0_eni12_8_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i1_notcmp1730_pop24_triangular0_i_llvm_fpga_pop_i1_notcmp1730_pop24_triangular49_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_notcmp1730_pop24_triangular0_i_llvm_fpga_pop_i1_notcmp1730_pop24_triangular49_mux_x_q = i_llvm_fpga_push_i1_notcmp1730_push24_triangular0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_notcmp1730_pop24_triangular0_i_llvm_fpga_pop_i1_notcmp1730_pop24_triangular49_mux_x_q = redist7_sync_together101_aunroll_x_in_c0_eni12_8_tpl_4_q;
            default : i_llvm_fpga_pop_i1_notcmp1730_pop24_triangular0_i_llvm_fpga_pop_i1_notcmp1730_pop24_triangular49_mux_x_q = 1'b0;
        endcase
    end

    // i_notcmp_triangular45(LOGICAL,82)@4
    assign i_notcmp_triangular45_q = i_unnamed_triangular38_q ^ VCC_q;

    // i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_triangular52(BLACKBOX,78)@4
    // out out_o_exit_outer_loop@7
    // out out_o_stall@7
    // out out_o_valid@7
    triangular_i_llvm_fpga_pipeline_order_pa0000i32_reorder_parent_0 thei_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_triangular52 (
        .in_i_exit_inner_loop(i_notcmp_triangular45_q),
        .in_i_exit_outer_loop(i_llvm_fpga_pop_i1_notcmp1730_pop24_triangular0_i_llvm_fpga_pop_i1_notcmp1730_pop24_triangular49_mux_x_q),
        .in_i_outer_loop_token(i_llvm_fpga_pop_i32_reorder_limiter_enter28_pop20_triangular0_i_llvm_fpga_pop_i32_reorder_limiter_enter28_pop20_triangular47_mux_x_q),
        .in_i_predicate(i_triangular_b5_is_real_thread_triangular51_q),
        .in_i_stall(GND_q),
        .in_i_start_inner_loop(redist48_i_llvm_fpga_forked_triangular_b5_forked_triangular3_out_buffer_out_4_q),
        .in_i_valid(valid_fanout_reg35_q),
        .out_o_exit_outer_loop(i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_triangular52_out_o_exit_outer_loop),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist46_i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_triangular52_out_o_exit_outer_loop_9(DELAY,496)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist46_i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_triangular52_out_o_exit_outer_loop_9 ( .xin(i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_triangular52_out_o_exit_outer_loop), .xout(redist46_i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_triangular52_out_o_exit_outer_loop_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist44_i_notcmp_triangular45_q_12(DELAY,494)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist44_i_notcmp_triangular45_q_12 ( .xin(i_notcmp_triangular45_q), .xout(redist44_i_notcmp_triangular45_q_12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist39_i_unnamed_triangular38_q_12(DELAY,489)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist39_i_unnamed_triangular38_q_12 ( .xin(i_unnamed_triangular38_q), .xout(redist39_i_unnamed_triangular38_q_12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,240)@16
    assign out_c0_exi875_0_tpl = GND_q;
    assign out_c0_exi875_1_tpl = i_llvm_fpga_mem_memdep_triangular32_out_o_writeack;
    assign out_c0_exi875_2_tpl = redist39_i_unnamed_triangular38_q_12_q;
    assign out_c0_exi875_3_tpl = redist44_i_notcmp_triangular45_q_12_q;
    assign out_c0_exi875_4_tpl = redist46_i_llvm_fpga_pipeline_order_parent_loop_i32_reorder_parent_triangular52_out_o_exit_outer_loop_9_q;
    assign out_c0_exi875_5_tpl = redist29_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular0_i_llvm_fpga_pop_i32_lim_ext26_pop19_triangular53_mux_x_q_12_outputreg0_q;
    assign out_c0_exi875_6_tpl = redist31_i_llvm_fpga_pop_i1_pop23_triangular0_i_llvm_fpga_pop_i1_pop23_triangular55_mux_x_q_12_q;
    assign out_c0_exi875_7_tpl = redist10_sync_together101_aunroll_x_in_c0_eni12_11_tpl_16_outputreg0_q;
    assign out_c0_exi875_8_tpl = redist11_sync_together101_aunroll_x_in_c0_eni12_12_tpl_16_outputreg0_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_profile_loop_o_valid = redist21_sync_together101_aunroll_x_in_i_valid_16_q;
    assign out_triangular_B5_current_iter_isspec = redist40_i_triangular_b5_current_iter_isspec_triangular5_q_12_q;

endmodule
