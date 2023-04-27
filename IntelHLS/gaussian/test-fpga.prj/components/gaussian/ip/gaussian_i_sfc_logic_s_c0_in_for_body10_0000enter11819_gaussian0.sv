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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body10_gaussians_c0_enter11819_gaussian0
// Created for function/kernel gaussian
// SystemVerilog created on Thu Apr 27 14:24:40 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_i_sfc_logic_s_c0_in_for_body10_0000enter11819_gaussian0 (
    input wire [31:0] in_lm1_gaussian_avm_readdata,
    input wire [0:0] in_lm1_gaussian_avm_writeack,
    input wire [0:0] in_lm1_gaussian_avm_waitrequest,
    input wire [0:0] in_lm1_gaussian_avm_readdatavalid,
    output wire [31:0] out_lm1_gaussian_avm_address,
    output wire [0:0] out_lm1_gaussian_avm_enable,
    output wire [0:0] out_lm1_gaussian_avm_read,
    output wire [0:0] out_lm1_gaussian_avm_write,
    output wire [31:0] out_lm1_gaussian_avm_writedata,
    output wire [3:0] out_lm1_gaussian_avm_byteenable,
    output wire [0:0] out_lm1_gaussian_avm_burstcount,
    input wire [0:0] in_flush,
    output wire [0:0] out_exiting_valid_out,
    input wire [31:0] in_lm62_gaussian_avm_readdata,
    input wire [0:0] in_lm62_gaussian_avm_writeack,
    input wire [0:0] in_lm62_gaussian_avm_waitrequest,
    input wire [0:0] in_lm62_gaussian_avm_readdatavalid,
    output wire [31:0] out_lm62_gaussian_avm_address,
    output wire [0:0] out_lm62_gaussian_avm_enable,
    output wire [0:0] out_lm62_gaussian_avm_read,
    output wire [0:0] out_lm62_gaussian_avm_write,
    output wire [31:0] out_lm62_gaussian_avm_writedata,
    output wire [3:0] out_lm62_gaussian_avm_byteenable,
    output wire [0:0] out_lm62_gaussian_avm_burstcount,
    output wire [0:0] out_pipeline_dummy_out,
    input wire [31:0] in_lm83_gaussian_avm_readdata,
    input wire [0:0] in_lm83_gaussian_avm_writeack,
    input wire [0:0] in_lm83_gaussian_avm_waitrequest,
    input wire [0:0] in_lm83_gaussian_avm_readdatavalid,
    output wire [31:0] out_lm83_gaussian_avm_address,
    output wire [0:0] out_lm83_gaussian_avm_enable,
    output wire [0:0] out_lm83_gaussian_avm_read,
    output wire [0:0] out_lm83_gaussian_avm_write,
    output wire [31:0] out_lm83_gaussian_avm_writedata,
    output wire [3:0] out_lm83_gaussian_avm_byteenable,
    output wire [0:0] out_lm83_gaussian_avm_burstcount,
    output wire [0:0] out_pipeline_forked_out,
    input wire [31:0] in_memdep_gaussian_avm_readdata,
    input wire [0:0] in_memdep_gaussian_avm_writeack,
    input wire [0:0] in_memdep_gaussian_avm_waitrequest,
    input wire [0:0] in_memdep_gaussian_avm_readdatavalid,
    output wire [31:0] out_memdep_gaussian_avm_address,
    output wire [0:0] out_memdep_gaussian_avm_enable,
    output wire [0:0] out_memdep_gaussian_avm_read,
    output wire [0:0] out_memdep_gaussian_avm_write,
    output wire [31:0] out_memdep_gaussian_avm_writedata,
    output wire [3:0] out_memdep_gaussian_avm_byteenable,
    output wire [0:0] out_memdep_gaussian_avm_burstcount,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi17143_0_tpl,
    output wire [0:0] out_c0_exi17143_1_tpl,
    output wire [0:0] out_c0_exi17143_2_tpl,
    output wire [0:0] out_c0_exi17143_3_tpl,
    output wire [0:0] out_c0_exi17143_4_tpl,
    output wire [0:0] out_c0_exi17143_5_tpl,
    output wire [31:0] out_c0_exi17143_6_tpl,
    output wire [31:0] out_c0_exi17143_7_tpl,
    output wire [31:0] out_c0_exi17143_8_tpl,
    output wire [0:0] out_c0_exi17143_9_tpl,
    output wire [0:0] out_c0_exi17143_10_tpl,
    output wire [31:0] out_c0_exi17143_11_tpl,
    output wire [31:0] out_c0_exi17143_12_tpl,
    output wire [31:0] out_c0_exi17143_13_tpl,
    output wire [0:0] out_c0_exi17143_14_tpl,
    output wire [32:0] out_c0_exi17143_15_tpl,
    output wire [31:0] out_c0_exi17143_16_tpl,
    output wire [0:0] out_c0_exi17143_17_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_unnamed_gaussian1,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni18_0_tpl,
    input wire [31:0] in_c0_eni18_1_tpl,
    input wire [0:0] in_c0_eni18_2_tpl,
    input wire [0:0] in_c0_eni18_3_tpl,
    input wire [31:0] in_c0_eni18_4_tpl,
    input wire [0:0] in_c0_eni18_5_tpl,
    input wire [0:0] in_c0_eni18_6_tpl,
    input wire [31:0] in_c0_eni18_7_tpl,
    input wire [31:0] in_c0_eni18_8_tpl,
    input wire [31:0] in_c0_eni18_9_tpl,
    input wire [0:0] in_c0_eni18_10_tpl,
    input wire [0:0] in_c0_eni18_11_tpl,
    input wire [31:0] in_c0_eni18_12_tpl,
    input wire [31:0] in_c0_eni18_13_tpl,
    input wire [31:0] in_c0_eni18_14_tpl,
    input wire [0:0] in_c0_eni18_15_tpl,
    input wire [32:0] in_c0_eni18_16_tpl,
    input wire [31:0] in_c0_eni18_17_tpl,
    input wire [0:0] in_c0_eni18_18_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_gaussian_A_pmem_q;
    wire [63:0] c_gaussian_c_pmem_q;
    wire [31:0] c_i32_1106_q;
    wire [5:0] c_i6_1109_q;
    wire [5:0] c_i6_17107_q;
    wire [1:0] i_arrayidx122_gaussian26_vt_const_1_q;
    wire [63:0] i_arrayidx122_gaussian26_vt_join_q;
    wire [61:0] i_arrayidx122_gaussian26_vt_select_63_b;
    wire [63:0] i_arrayidx141_gaussian21_vt_join_q;
    wire [61:0] i_arrayidx141_gaussian21_vt_select_63_b;
    wire [63:0] i_arrayidx183_gaussian32_vt_join_q;
    wire [61:0] i_arrayidx183_gaussian32_vt_select_63_b;
    wire [6:0] i_fpga_indvars_iv_next_gaussian45_a;
    wire [6:0] i_fpga_indvars_iv_next_gaussian45_b;
    logic [6:0] i_fpga_indvars_iv_next_gaussian45_o;
    wire [6:0] i_fpga_indvars_iv_next_gaussian45_q;
    wire [0:0] i_gaussian_b7_current_iter_isspec_gaussian5_q;
    wire [0:0] i_gaussian_b7_current_thread_isreal_gaussian6_qi;
    reg [0:0] i_gaussian_b7_current_thread_isreal_gaussian6_q;
    wire [0:0] i_gaussian_b7_fullexited_gaussian7_q;
    wire [0:0] i_gaussian_b7_fullexited_or20_gaussian30_q;
    wire [0:0] i_gaussian_b7_lastiter_gaussian13_q;
    wire [0:0] i_gaussian_b7_latchcond_gaussian14_qi;
    reg [0:0] i_gaussian_b7_latchcond_gaussian14_q;
    wire [0:0] i_gaussian_b7_next_iter_isreal_gaussian9_q;
    wire [0:0] i_gaussian_b7_next_iter_isrealreal_gaussian10_q;
    wire [0:0] i_gaussian_b7_next_iter_isspec_gaussian12_q;
    wire [0:0] i_gaussian_b7_realexit_gaussian56_q;
    wire [31:0] i_idxprom11_gaussian25_vt_const_63_q;
    wire [63:0] i_idxprom11_gaussian25_vt_join_q;
    wire [31:0] i_idxprom11_gaussian25_vt_select_31_b;
    wire [63:0] i_idxprom13_gaussian20_vt_join_q;
    wire [31:0] i_idxprom13_gaussian20_vt_select_31_b;
    wire [63:0] i_idxprom_gaussian16_vt_join_q;
    wire [31:0] i_idxprom_gaussian16_vt_select_31_b;
    wire [32:0] i_inc_gaussian41_a;
    wire [32:0] i_inc_gaussian41_b;
    logic [32:0] i_inc_gaussian41_o;
    wire [32:0] i_inc_gaussian41_q;
    wire [0:0] i_llvm_fpga_dummy_thread_gaussian_b7_dummy_gaussian2_out_dummy_out;
    wire [0:0] i_llvm_fpga_forked_gaussian_b7_forked_gaussian3_out_buffer_out;
    wire [31:0] i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_write;
    wire [31:0] i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm1_gaussian23_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_lm62_gaussian31_out_lm62_gaussian_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm62_gaussian31_out_lm62_gaussian_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_lm62_gaussian31_out_lm62_gaussian_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm62_gaussian31_out_lm62_gaussian_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm62_gaussian31_out_lm62_gaussian_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm62_gaussian31_out_lm62_gaussian_avm_write;
    wire [31:0] i_llvm_fpga_mem_lm62_gaussian31_out_lm62_gaussian_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm62_gaussian31_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_lm83_gaussian36_out_lm83_gaussian_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm83_gaussian36_out_lm83_gaussian_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_lm83_gaussian36_out_lm83_gaussian_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm83_gaussian36_out_lm83_gaussian_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm83_gaussian36_out_lm83_gaussian_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm83_gaussian36_out_lm83_gaussian_avm_write;
    wire [31:0] i_llvm_fpga_mem_lm83_gaussian36_out_lm83_gaussian_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm83_gaussian36_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_memdep_gaussian40_out_memdep_gaussian_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_gaussian40_out_memdep_gaussian_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_gaussian40_out_memdep_gaussian_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_gaussian40_out_memdep_gaussian_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_gaussian40_out_memdep_gaussian_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_gaussian40_out_memdep_gaussian_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_gaussian40_out_memdep_gaussian_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_gaussian40_out_o_writeack;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gaussian8_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gaussian8_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gaussian8_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gaussian8_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gaussian8_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gaussian8_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_gaussian57_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_gaussian57_out_feedback_valid_out_2;
    wire [0:0] i_memdep_phi4_or_gaussian29_q;
    wire [0:0] i_notcmp_gaussian55_q;
    wire [0:0] i_reduction_gaussian_1_gaussian34_q;
    wire [32:0] i_sub_gaussian38_a;
    wire [32:0] i_sub_gaussian38_b;
    logic [32:0] i_sub_gaussian38_o;
    wire [32:0] i_sub_gaussian38_q;
    wire [0:0] i_unnamed_gaussian18_q;
    wire [0:0] i_unnamed_gaussian46_q;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next_gaussian45_sel_x_b;
    wire [31:0] bgTrunc_i_inc_gaussian41_sel_x_b;
    wire [63:0] bgTrunc_i_mul_gaussian37_sel_x_in;
    wire [31:0] bgTrunc_i_mul_gaussian37_sel_x_b;
    wire [31:0] bgTrunc_i_sub_gaussian38_sel_x_b;
    wire [11:0] i_arrayidx122_gaussian0_add_x_a;
    wire [11:0] i_arrayidx122_gaussian0_add_x_b;
    logic [11:0] i_arrayidx122_gaussian0_add_x_o;
    wire [11:0] i_arrayidx122_gaussian0_add_x_q;
    wire [63:0] i_arrayidx122_gaussian0_append_upper_bits_x_q;
    wire [8:0] i_arrayidx122_gaussian0_narrow_x_b;
    wire [10:0] i_arrayidx122_gaussian0_shift_join_x_q;
    wire [11:0] i_arrayidx122_gaussian0_dupName_0_add_x_a;
    wire [11:0] i_arrayidx122_gaussian0_dupName_0_add_x_b;
    logic [11:0] i_arrayidx122_gaussian0_dupName_0_add_x_o;
    wire [11:0] i_arrayidx122_gaussian0_dupName_0_add_x_q;
    wire [21:0] i_arrayidx122_gaussian0_mult_extender_x_q;
    wire [3:0] i_arrayidx122_gaussian0_mult_multconst_x_q;
    wire [10:0] i_arrayidx122_gaussian0_dupName_0_trunc_sel_x_b;
    wire [10:0] i_arrayidx122_gaussian0_dupName_1_trunc_sel_x_b;
    wire [10:0] i_arrayidx122_gaussian0_dupName_2_trunc_sel_x_b;
    wire [10:0] i_arrayidx122_gaussian0_dupName_3_trunc_sel_x_b;
    wire [10:0] i_arrayidx122_gaussian0_dupName_5_trunc_sel_x_b;
    wire [7:0] i_arrayidx141_gaussian0_add_x_a;
    wire [7:0] i_arrayidx141_gaussian0_add_x_b;
    logic [7:0] i_arrayidx141_gaussian0_add_x_o;
    wire [7:0] i_arrayidx141_gaussian0_add_x_q;
    wire [63:0] i_arrayidx141_gaussian0_append_upper_bits_x_q;
    wire [4:0] i_arrayidx141_gaussian0_narrow_x_b;
    wire [6:0] i_arrayidx141_gaussian0_shift_join_x_q;
    wire [6:0] i_arrayidx141_gaussian0_dupName_0_trunc_sel_x_b;
    wire [6:0] i_arrayidx141_gaussian0_dupName_2_trunc_sel_x_b;
    wire [11:0] i_arrayidx183_gaussian0_add_x_a;
    wire [11:0] i_arrayidx183_gaussian0_add_x_b;
    logic [11:0] i_arrayidx183_gaussian0_add_x_o;
    wire [11:0] i_arrayidx183_gaussian0_add_x_q;
    wire [63:0] i_arrayidx183_gaussian0_append_upper_bits_x_q;
    wire [11:0] i_arrayidx183_gaussian0_dupName_0_add_x_a;
    wire [11:0] i_arrayidx183_gaussian0_dupName_0_add_x_b;
    logic [11:0] i_arrayidx183_gaussian0_dupName_0_add_x_o;
    wire [11:0] i_arrayidx183_gaussian0_dupName_0_add_x_q;
    wire [21:0] i_arrayidx183_gaussian0_mult_extender_x_q;
    wire [10:0] i_arrayidx183_gaussian0_dupName_0_trunc_sel_x_b;
    wire [10:0] i_arrayidx183_gaussian0_dupName_1_trunc_sel_x_b;
    wire [10:0] i_arrayidx183_gaussian0_dupName_2_trunc_sel_x_b;
    wire [10:0] i_arrayidx183_gaussian0_dupName_5_trunc_sel_x_b;
    wire [63:0] i_idxprom11_gaussian25_sel_x_b;
    wire [63:0] i_idxprom13_gaussian20_sel_x_b;
    wire [63:0] i_idxprom_gaussian16_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_gaussian_b7_current_iter_isreal_gaussian0_i_llvm_fpga_pop_coalesce_i1_gaussian_b7_current_iter_isreal_gaussian4_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_gaussian_b7_current_iter_isreal_gaussian0_i_llvm_fpga_pop_coalesce_i1_gaussian_b7_current_iter_isreal_gaussian4_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian0_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian17_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian0_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian17_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop724_pop20_gaussian0_i_llvm_fpga_pop_i1_memdep_phi4_pop724_pop20_gaussian27_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop724_pop20_gaussian0_i_llvm_fpga_pop_i1_memdep_phi4_pop724_pop20_gaussian27_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi5_pop19_gaussian0_i_llvm_fpga_pop_i1_memdep_phi5_pop19_gaussian33_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi5_pop19_gaussian0_i_llvm_fpga_pop_i1_memdep_phi5_pop19_gaussian33_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop1039_pop29_gaussian0_i_llvm_fpga_pop_i1_memdep_phi_pop1039_pop29_gaussian28_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop1039_pop29_gaussian0_i_llvm_fpga_pop_i1_memdep_phi_pop1039_pop29_gaussian28_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian0_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian66_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian0_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian66_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_pop26_gaussian0_i_llvm_fpga_pop_i1_pop26_gaussian64_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_pop26_gaussian0_i_llvm_fpga_pop_i1_pop26_gaussian64_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_i_017_pop938_pop28_gaussian0_i_llvm_fpga_pop_i32_i_017_pop938_pop28_gaussian15_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_i_017_pop938_pop28_gaussian0_i_llvm_fpga_pop_i32_i_017_pop938_pop28_gaussian15_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_j_01831_pop23_gaussian0_i_llvm_fpga_pop_i32_j_01831_pop23_gaussian19_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_j_01831_pop23_gaussian0_i_llvm_fpga_pop_i32_j_01831_pop23_gaussian19_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_k_015_pop18_gaussian0_i_llvm_fpga_pop_i32_k_015_pop18_gaussian24_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_k_015_pop18_gaussian0_i_llvm_fpga_pop_i32_k_015_pop18_gaussian24_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop17_gaussian0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop17_gaussian42_mux_x_s;
    reg [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop17_gaussian0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop17_gaussian42_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_c_i7_03_x_q;
    wire [7:0] i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_i_llvm_fpga_push_i1_cmp41635_push25_gaussian1_x_i_valid;
    wire i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_i_llvm_fpga_push_i1_cmp41635_push25_gaussian1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_i_llvm_fpga_push_i1_cmp41635_push25_gaussian1_x_i_stall;
    wire i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_i_llvm_fpga_push_i1_cmp41635_push25_gaussian1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_i_llvm_fpga_push_i1_cmp41635_push25_gaussian1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_i_llvm_fpga_push_i1_cmp41635_push25_gaussian1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian0_i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian1_x_i_valid;
    wire i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian0_i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian0_i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian1_x_i_stall;
    wire i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian0_i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian0_i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian0_i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian0_i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian1_x_i_valid;
    wire i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian0_i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian0_i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian1_x_i_stall;
    wire i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian0_i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian0_i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian0_i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian0_i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian1_x_i_valid;
    wire i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian0_i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian0_i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian1_x_i_stall;
    wire i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian0_i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian0_i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian0_i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian0_i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian1_x_i_valid;
    wire i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian0_i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian0_i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian1_x_i_stall;
    wire i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian0_i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian0_i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian0_i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_notcmp1437_push27_gaussian0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1437_push27_gaussian0_i_llvm_fpga_push_i1_notcmp1437_push27_gaussian1_x_i_valid;
    wire i_llvm_fpga_push_i1_notcmp1437_push27_gaussian0_i_llvm_fpga_push_i1_notcmp1437_push27_gaussian1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1437_push27_gaussian0_i_llvm_fpga_push_i1_notcmp1437_push27_gaussian1_x_i_stall;
    wire i_llvm_fpga_push_i1_notcmp1437_push27_gaussian0_i_llvm_fpga_push_i1_notcmp1437_push27_gaussian1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_notcmp1437_push27_gaussian0_i_llvm_fpga_push_i1_notcmp1437_push27_gaussian1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_notcmp1437_push27_gaussian0_i_llvm_fpga_push_i1_notcmp1437_push27_gaussian1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1437_push27_gaussian0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_push26_gaussian0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_push26_gaussian0_i_llvm_fpga_push_i1_push26_gaussian1_x_i_valid;
    wire i_llvm_fpga_push_i1_push26_gaussian0_i_llvm_fpga_push_i1_push26_gaussian1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_push26_gaussian0_i_llvm_fpga_push_i1_push26_gaussian1_x_i_stall;
    wire i_llvm_fpga_push_i1_push26_gaussian0_i_llvm_fpga_push_i1_push26_gaussian1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_push26_gaussian0_i_llvm_fpga_push_i1_push26_gaussian1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_push26_gaussian0_i_llvm_fpga_push_i1_push26_gaussian1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_push26_gaussian0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_add33_push24_gaussian0_i_llvm_fpga_push_i32_add33_push24_gaussian1_x_i_valid;
    wire i_llvm_fpga_push_i32_add33_push24_gaussian0_i_llvm_fpga_push_i32_add33_push24_gaussian1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_add33_push24_gaussian0_i_llvm_fpga_push_i32_add33_push24_gaussian1_x_i_stall;
    wire i_llvm_fpga_push_i32_add33_push24_gaussian0_i_llvm_fpga_push_i32_add33_push24_gaussian1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_add33_push24_gaussian0_i_llvm_fpga_push_i32_add33_push24_gaussian1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_add33_push24_gaussian0_i_llvm_fpga_push_i32_add33_push24_gaussian1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_fpga_indvars_iv729_push22_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv729_push22_gaussian1_x_i_valid;
    wire i_llvm_fpga_push_i32_fpga_indvars_iv729_push22_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv729_push22_gaussian1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_fpga_indvars_iv729_push22_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv729_push22_gaussian1_x_i_stall;
    wire i_llvm_fpga_push_i32_fpga_indvars_iv729_push22_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv729_push22_gaussian1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_fpga_indvars_iv729_push22_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv729_push22_gaussian1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_fpga_indvars_iv729_push22_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv729_push22_gaussian1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_fpga_indvars_iv927_push21_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv927_push21_gaussian1_x_i_valid;
    wire i_llvm_fpga_push_i32_fpga_indvars_iv927_push21_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv927_push21_gaussian1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_fpga_indvars_iv927_push21_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv927_push21_gaussian1_x_i_stall;
    wire i_llvm_fpga_push_i32_fpga_indvars_iv927_push21_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv927_push21_gaussian1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_fpga_indvars_iv927_push21_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv927_push21_gaussian1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_fpga_indvars_iv927_push21_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv927_push21_gaussian1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_i_017_pop938_push28_gaussian0_i_llvm_fpga_push_i32_i_017_pop938_push28_gaussian1_x_i_valid;
    wire i_llvm_fpga_push_i32_i_017_pop938_push28_gaussian0_i_llvm_fpga_push_i32_i_017_pop938_push28_gaussian1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_i_017_pop938_push28_gaussian0_i_llvm_fpga_push_i32_i_017_pop938_push28_gaussian1_x_i_stall;
    wire i_llvm_fpga_push_i32_i_017_pop938_push28_gaussian0_i_llvm_fpga_push_i32_i_017_pop938_push28_gaussian1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_i_017_pop938_push28_gaussian0_i_llvm_fpga_push_i32_i_017_pop938_push28_gaussian1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_i_017_pop938_push28_gaussian0_i_llvm_fpga_push_i32_i_017_pop938_push28_gaussian1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_j_01831_push23_gaussian0_i_llvm_fpga_push_i32_j_01831_push23_gaussian1_x_i_valid;
    wire i_llvm_fpga_push_i32_j_01831_push23_gaussian0_i_llvm_fpga_push_i32_j_01831_push23_gaussian1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_j_01831_push23_gaussian0_i_llvm_fpga_push_i32_j_01831_push23_gaussian1_x_i_stall;
    wire i_llvm_fpga_push_i32_j_01831_push23_gaussian0_i_llvm_fpga_push_i32_j_01831_push23_gaussian1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_j_01831_push23_gaussian0_i_llvm_fpga_push_i32_j_01831_push23_gaussian1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_j_01831_push23_gaussian0_i_llvm_fpga_push_i32_j_01831_push23_gaussian1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_k_015_push18_gaussian0_i_llvm_fpga_push_i32_k_015_push18_gaussian1_x_i_valid;
    wire i_llvm_fpga_push_i32_k_015_push18_gaussian0_i_llvm_fpga_push_i32_k_015_push18_gaussian1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_k_015_push18_gaussian0_i_llvm_fpga_push_i32_k_015_push18_gaussian1_x_i_stall;
    wire i_llvm_fpga_push_i32_k_015_push18_gaussian0_i_llvm_fpga_push_i32_k_015_push18_gaussian1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_k_015_push18_gaussian0_i_llvm_fpga_push_i32_k_015_push18_gaussian1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_k_015_push18_gaussian0_i_llvm_fpga_push_i32_k_015_push18_gaussian1_x_o_data;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian0_i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian1_x_i_valid;
    wire i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian0_i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian0_i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian1_x_i_stall;
    wire i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian0_i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian0_i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian0_i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian1_x_o_data;
    wire [5:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian0_adapt_scalar_trunc4_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg8_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg12_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg14_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg15_q;
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
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg29_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg30_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg31_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg32_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg33_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg35_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg36_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg38_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg39_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg41_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg42_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg44_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg45_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg47_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg48_q;
    wire [0:0] i_exitcond_gaussian43_cmp_nsign_q;
    wire [14:0] i_mul_gaussian37_bjA2_q;
    wire [14:0] i_mul_gaussian37_bjB4_q;
    wire [65:0] i_mul_gaussian37_sums_join_0_q;
    wire [50:0] i_mul_gaussian37_sums_align_1_q;
    wire [50:0] i_mul_gaussian37_sums_align_1_qint;
    wire [66:0] i_mul_gaussian37_sums_result_add_0_0_a;
    wire [66:0] i_mul_gaussian37_sums_result_add_0_0_b;
    logic [66:0] i_mul_gaussian37_sums_result_add_0_0_o;
    wire [66:0] i_mul_gaussian37_sums_result_add_0_0_q;
    wire [11:0] addsumAHighB_uid359_i_arrayidx122_gaussian0_mult_x_a;
    wire [11:0] addsumAHighB_uid359_i_arrayidx122_gaussian0_mult_x_b;
    logic [11:0] addsumAHighB_uid359_i_arrayidx122_gaussian0_mult_x_o;
    wire [11:0] addsumAHighB_uid359_i_arrayidx122_gaussian0_mult_x_q;
    wire [13:0] add_uid360_i_arrayidx122_gaussian0_mult_x_q;
    wire [17:0] sR_mergedSignalTM_uid365_i_arrayidx122_gaussian0_mult_x_q;
    wire [11:0] addsumAHighB_uid405_i_arrayidx183_gaussian0_mult_x_a;
    wire [11:0] addsumAHighB_uid405_i_arrayidx183_gaussian0_mult_x_b;
    logic [11:0] addsumAHighB_uid405_i_arrayidx183_gaussian0_mult_x_o;
    wire [11:0] addsumAHighB_uid405_i_arrayidx183_gaussian0_mult_x_q;
    wire [13:0] add_uid406_i_arrayidx183_gaussian0_mult_x_q;
    wire [17:0] sR_mergedSignalTM_uid411_i_arrayidx183_gaussian0_mult_x_q;
    wire i_mul_gaussian37_im0_cma_reset;
    (* preserve_syn_only *) reg signed [14:0] i_mul_gaussian37_im0_cma_ah [0:0];
    (* preserve_syn_only *) reg signed [14:0] i_mul_gaussian37_im0_cma_ch [0:0];
    wire [14:0] i_mul_gaussian37_im0_cma_a0;
    wire [14:0] i_mul_gaussian37_im0_cma_c0;
    wire [29:0] i_mul_gaussian37_im0_cma_s0;
    wire [29:0] i_mul_gaussian37_im0_cma_qq;
    reg [29:0] i_mul_gaussian37_im0_cma_q;
    wire i_mul_gaussian37_im0_cma_ena0;
    wire i_mul_gaussian37_im0_cma_ena1;
    wire i_mul_gaussian37_im0_cma_ena2;
    wire i_mul_gaussian37_im10_cma_reset;
    (* preserve_syn_only *) reg [17:0] i_mul_gaussian37_im10_cma_ah [0:0];
    (* preserve_syn_only *) reg [17:0] i_mul_gaussian37_im10_cma_ch [0:0];
    wire [17:0] i_mul_gaussian37_im10_cma_a0;
    wire [17:0] i_mul_gaussian37_im10_cma_c0;
    wire [35:0] i_mul_gaussian37_im10_cma_s0;
    wire [35:0] i_mul_gaussian37_im10_cma_qq;
    reg [35:0] i_mul_gaussian37_im10_cma_q;
    wire i_mul_gaussian37_im10_cma_ena0;
    wire i_mul_gaussian37_im10_cma_ena1;
    wire i_mul_gaussian37_im10_cma_ena2;
    wire i_mul_gaussian37_ma5_cma_reset;
    (* preserve_syn_only *) reg [13:0] i_mul_gaussian37_ma5_cma_ah [0:1];
    (* preserve_syn_only *) reg [17:0] i_mul_gaussian37_ma5_cma_ch [0:1];
    wire [13:0] i_mul_gaussian37_ma5_cma_a0;
    wire [17:0] i_mul_gaussian37_ma5_cma_c0;
    wire [13:0] i_mul_gaussian37_ma5_cma_a1;
    wire [17:0] i_mul_gaussian37_ma5_cma_c1;
    wire [32:0] i_mul_gaussian37_ma5_cma_s0;
    wire [32:0] i_mul_gaussian37_ma5_cma_qq;
    reg [32:0] i_mul_gaussian37_ma5_cma_q;
    wire i_mul_gaussian37_ma5_cma_ena0;
    wire i_mul_gaussian37_ma5_cma_ena1;
    wire i_mul_gaussian37_ma5_cma_ena2;
    wire [52:0] i_arrayidx122_gaussian0_upper_bits_x_merged_bit_select_b;
    wire [10:0] i_arrayidx122_gaussian0_upper_bits_x_merged_bit_select_c;
    wire [56:0] i_arrayidx141_gaussian0_upper_bits_x_merged_bit_select_b;
    wire [6:0] i_arrayidx141_gaussian0_upper_bits_x_merged_bit_select_c;
    wire [13:0] i_mul_gaussian37_bs3_merged_bit_select_b;
    wire [17:0] i_mul_gaussian37_bs3_merged_bit_select_c;
    wire [13:0] i_mul_gaussian37_bs1_merged_bit_select_b;
    wire [17:0] i_mul_gaussian37_bs1_merged_bit_select_c;
    wire [1:0] lowRangeB_uid357_i_arrayidx122_gaussian0_mult_x_merged_bit_select_b;
    wire [8:0] lowRangeB_uid357_i_arrayidx122_gaussian0_mult_x_merged_bit_select_c;
    wire [1:0] lowRangeB_uid403_i_arrayidx183_gaussian0_mult_x_merged_bit_select_b;
    wire [8:0] lowRangeB_uid403_i_arrayidx183_gaussian0_mult_x_merged_bit_select_c;
    reg [52:0] redist0_i_arrayidx122_gaussian0_upper_bits_x_merged_bit_select_b_1_q;
    reg [31:0] redist1_sync_together117_aunroll_x_in_c0_eni18_1_tpl_4_q;
    reg [31:0] redist1_sync_together117_aunroll_x_in_c0_eni18_1_tpl_4_delay_0;
    reg [31:0] redist1_sync_together117_aunroll_x_in_c0_eni18_1_tpl_4_delay_1;
    reg [0:0] redist2_sync_together117_aunroll_x_in_c0_eni18_3_tpl_4_q;
    reg [0:0] redist2_sync_together117_aunroll_x_in_c0_eni18_3_tpl_4_delay_0;
    reg [0:0] redist2_sync_together117_aunroll_x_in_c0_eni18_3_tpl_4_delay_1;
    reg [0:0] redist2_sync_together117_aunroll_x_in_c0_eni18_3_tpl_4_delay_2;
    reg [31:0] redist3_sync_together117_aunroll_x_in_c0_eni18_4_tpl_4_q;
    reg [31:0] redist3_sync_together117_aunroll_x_in_c0_eni18_4_tpl_4_delay_0;
    reg [31:0] redist3_sync_together117_aunroll_x_in_c0_eni18_4_tpl_4_delay_1;
    reg [0:0] redist4_sync_together117_aunroll_x_in_c0_eni18_5_tpl_8_q;
    reg [0:0] redist5_sync_together117_aunroll_x_in_c0_eni18_6_tpl_8_q;
    reg [31:0] redist6_sync_together117_aunroll_x_in_c0_eni18_7_tpl_4_q;
    reg [31:0] redist6_sync_together117_aunroll_x_in_c0_eni18_7_tpl_4_delay_0;
    reg [31:0] redist6_sync_together117_aunroll_x_in_c0_eni18_7_tpl_4_delay_1;
    reg [31:0] redist7_sync_together117_aunroll_x_in_c0_eni18_8_tpl_4_q;
    reg [31:0] redist7_sync_together117_aunroll_x_in_c0_eni18_8_tpl_4_delay_0;
    reg [31:0] redist7_sync_together117_aunroll_x_in_c0_eni18_8_tpl_4_delay_1;
    reg [31:0] redist8_sync_together117_aunroll_x_in_c0_eni18_9_tpl_4_q;
    reg [31:0] redist8_sync_together117_aunroll_x_in_c0_eni18_9_tpl_4_delay_0;
    reg [31:0] redist8_sync_together117_aunroll_x_in_c0_eni18_9_tpl_4_delay_1;
    reg [0:0] redist9_sync_together117_aunroll_x_in_c0_eni18_10_tpl_4_q;
    reg [0:0] redist9_sync_together117_aunroll_x_in_c0_eni18_10_tpl_4_delay_0;
    reg [0:0] redist9_sync_together117_aunroll_x_in_c0_eni18_10_tpl_4_delay_1;
    reg [0:0] redist9_sync_together117_aunroll_x_in_c0_eni18_10_tpl_4_delay_2;
    reg [0:0] redist10_sync_together117_aunroll_x_in_c0_eni18_11_tpl_4_q;
    reg [0:0] redist10_sync_together117_aunroll_x_in_c0_eni18_11_tpl_4_delay_0;
    reg [0:0] redist10_sync_together117_aunroll_x_in_c0_eni18_11_tpl_4_delay_1;
    reg [0:0] redist10_sync_together117_aunroll_x_in_c0_eni18_11_tpl_4_delay_2;
    reg [0:0] redist14_sync_together117_aunroll_x_in_c0_eni18_15_tpl_16_q;
    reg [0:0] redist17_sync_together117_aunroll_x_in_c0_eni18_18_tpl_16_q;
    reg [0:0] redist18_sync_together117_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist18_sync_together117_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist19_sync_together117_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist20_sync_together117_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist21_sync_together117_aunroll_x_in_i_valid_6_q;
    reg [0:0] redist21_sync_together117_aunroll_x_in_i_valid_6_delay_0;
    reg [0:0] redist22_sync_together117_aunroll_x_in_i_valid_7_q;
    reg [0:0] redist23_sync_together117_aunroll_x_in_i_valid_8_q;
    reg [0:0] redist24_sync_together117_aunroll_x_in_i_valid_10_q;
    reg [0:0] redist24_sync_together117_aunroll_x_in_i_valid_10_delay_0;
    reg [0:0] redist25_sync_together117_aunroll_x_in_i_valid_12_q;
    reg [0:0] redist25_sync_together117_aunroll_x_in_i_valid_12_delay_0;
    reg [0:0] redist26_sync_together117_aunroll_x_in_i_valid_14_q;
    reg [0:0] redist26_sync_together117_aunroll_x_in_i_valid_14_delay_0;
    reg [0:0] redist27_sync_together117_aunroll_x_in_i_valid_15_q;
    reg [0:0] redist28_sync_together117_aunroll_x_in_i_valid_16_q;
    reg [0:0] redist29_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_2_q;
    reg [0:0] redist29_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_2_delay_0;
    reg [0:0] redist30_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_3_q;
    reg [0:0] redist31_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_4_q;
    reg [0:0] redist32_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_6_q;
    reg [0:0] redist32_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_6_delay_0;
    reg [0:0] redist33_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_8_q;
    reg [0:0] redist33_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_8_delay_0;
    reg [0:0] redist34_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_10_q;
    reg [0:0] redist34_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_10_delay_0;
    reg [0:0] redist35_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_14_q;
    reg [0:0] redist35_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_14_delay_0;
    reg [0:0] redist35_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_14_delay_1;
    reg [0:0] redist35_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_14_delay_2;
    reg [31:0] redist36_i_llvm_fpga_pop_i32_k_015_pop18_gaussian0_i_llvm_fpga_pop_i32_k_015_pop18_gaussian24_mux_x_q_1_q;
    reg [0:0] redist40_i_llvm_fpga_pop_i1_pop26_gaussian0_i_llvm_fpga_pop_i1_pop26_gaussian64_mux_x_q_8_q;
    reg [0:0] redist41_i_llvm_fpga_pop_i1_pop26_gaussian0_i_llvm_fpga_pop_i1_pop26_gaussian64_mux_x_q_12_q;
    reg [0:0] redist41_i_llvm_fpga_pop_i1_pop26_gaussian0_i_llvm_fpga_pop_i1_pop26_gaussian64_mux_x_q_12_delay_0;
    reg [0:0] redist41_i_llvm_fpga_pop_i1_pop26_gaussian0_i_llvm_fpga_pop_i1_pop26_gaussian64_mux_x_q_12_delay_1;
    reg [0:0] redist41_i_llvm_fpga_pop_i1_pop26_gaussian0_i_llvm_fpga_pop_i1_pop26_gaussian64_mux_x_q_12_delay_2;
    reg [0:0] redist42_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian0_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian66_mux_x_q_8_q;
    reg [0:0] redist43_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian0_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian66_mux_x_q_12_q;
    reg [0:0] redist43_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian0_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian66_mux_x_q_12_delay_0;
    reg [0:0] redist43_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian0_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian66_mux_x_q_12_delay_1;
    reg [0:0] redist43_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian0_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian66_mux_x_q_12_delay_2;
    reg [0:0] redist44_i_llvm_fpga_pop_i1_memdep_phi4_pop724_pop20_gaussian0_i_llvm_fpga_pop_i1_memdep_phi4_pop724_pop20_gaussian27_mux_x_q_8_q;
    reg [0:0] redist45_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian0_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian17_mux_x_q_8_q;
    reg [0:0] redist46_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian0_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian17_mux_x_q_12_q;
    reg [0:0] redist46_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian0_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian17_mux_x_q_12_delay_0;
    reg [0:0] redist46_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian0_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian17_mux_x_q_12_delay_1;
    reg [0:0] redist46_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian0_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian17_mux_x_q_12_delay_2;
    reg [0:0] redist47_i_llvm_fpga_pop_coalesce_i1_gaussian_b7_current_iter_isreal_gaussian0_i_llvm_fpga_pop_coalesce_i1_gaussian_b7_current_iter_isreal_gaussian4_mux_x_q_1_q;
    reg [10:0] redist48_i_arrayidx183_gaussian0_dupName_2_trunc_sel_x_b_1_q;
    reg [10:0] redist49_i_arrayidx183_gaussian0_dupName_1_trunc_sel_x_b_3_q;
    reg [10:0] redist49_i_arrayidx183_gaussian0_dupName_1_trunc_sel_x_b_3_delay_0;
    reg [10:0] redist49_i_arrayidx183_gaussian0_dupName_1_trunc_sel_x_b_3_delay_1;
    reg [10:0] redist50_i_arrayidx122_gaussian0_dupName_2_trunc_sel_x_b_1_q;
    reg [10:0] redist51_i_arrayidx122_gaussian0_dupName_1_trunc_sel_x_b_3_q;
    reg [10:0] redist51_i_arrayidx122_gaussian0_dupName_1_trunc_sel_x_b_3_delay_0;
    reg [10:0] redist51_i_arrayidx122_gaussian0_dupName_1_trunc_sel_x_b_3_delay_1;
    reg [31:0] redist52_bgTrunc_i_inc_gaussian41_sel_x_b_1_q;
    reg [5:0] redist53_bgTrunc_i_fpga_indvars_iv_next_gaussian45_sel_x_b_1_q;
    reg [0:0] redist54_i_unnamed_gaussian46_q_12_q;
    reg [0:0] redist55_i_memdep_phi4_or_gaussian29_q_5_q;
    reg [0:0] redist55_i_memdep_phi4_or_gaussian29_q_5_delay_0;
    reg [0:0] redist55_i_memdep_phi4_or_gaussian29_q_5_delay_1;
    reg [0:0] redist55_i_memdep_phi4_or_gaussian29_q_5_delay_2;
    reg [0:0] redist55_i_memdep_phi4_or_gaussian29_q_5_delay_3;
    reg [0:0] redist56_i_llvm_fpga_pipeline_keep_going_gaussian8_out_data_out_1_q;
    reg [0:0] redist57_i_llvm_fpga_forked_gaussian_b7_forked_gaussian3_out_buffer_out_4_q;
    reg [0:0] redist57_i_llvm_fpga_forked_gaussian_b7_forked_gaussian3_out_buffer_out_4_delay_0;
    reg [0:0] redist57_i_llvm_fpga_forked_gaussian_b7_forked_gaussian3_out_buffer_out_4_delay_1;
    reg [0:0] redist57_i_llvm_fpga_forked_gaussian_b7_forked_gaussian3_out_buffer_out_4_delay_2;
    reg [0:0] redist58_i_llvm_fpga_forked_gaussian_b7_forked_gaussian3_out_buffer_out_8_q;
    reg [0:0] redist58_i_llvm_fpga_forked_gaussian_b7_forked_gaussian3_out_buffer_out_8_delay_0;
    reg [0:0] redist58_i_llvm_fpga_forked_gaussian_b7_forked_gaussian3_out_buffer_out_8_delay_1;
    reg [0:0] redist58_i_llvm_fpga_forked_gaussian_b7_forked_gaussian3_out_buffer_out_8_delay_2;
    reg [0:0] redist59_i_llvm_fpga_dummy_thread_gaussian_b7_dummy_gaussian2_out_dummy_out_4_q;
    reg [0:0] redist59_i_llvm_fpga_dummy_thread_gaussian_b7_dummy_gaussian2_out_dummy_out_4_delay_0;
    reg [0:0] redist59_i_llvm_fpga_dummy_thread_gaussian_b7_dummy_gaussian2_out_dummy_out_4_delay_1;
    reg [0:0] redist59_i_llvm_fpga_dummy_thread_gaussian_b7_dummy_gaussian2_out_dummy_out_4_delay_2;
    reg [0:0] redist60_i_gaussian_b7_latchcond_gaussian14_q_11_q;
    reg [0:0] redist61_i_gaussian_b7_fullexited_or20_gaussian30_q_4_q;
    reg [0:0] redist61_i_gaussian_b7_fullexited_or20_gaussian30_q_4_delay_0;
    reg [0:0] redist61_i_gaussian_b7_fullexited_or20_gaussian30_q_4_delay_1;
    reg [0:0] redist61_i_gaussian_b7_fullexited_or20_gaussian30_q_4_delay_2;
    reg [0:0] redist62_i_gaussian_b7_fullexited_or20_gaussian30_q_9_q;
    reg [0:0] redist62_i_gaussian_b7_fullexited_or20_gaussian30_q_9_delay_0;
    reg [0:0] redist62_i_gaussian_b7_fullexited_or20_gaussian30_q_9_delay_1;
    reg [0:0] redist62_i_gaussian_b7_fullexited_or20_gaussian30_q_9_delay_2;
    reg [0:0] redist62_i_gaussian_b7_fullexited_or20_gaussian30_q_9_delay_3;
    reg [0:0] redist63_i_gaussian_b7_fullexited_or20_gaussian30_q_11_q;
    reg [0:0] redist63_i_gaussian_b7_fullexited_or20_gaussian30_q_11_delay_0;
    reg [0:0] redist64_i_gaussian_b7_fullexited_gaussian7_q_12_q;
    reg [61:0] redist65_i_arrayidx122_gaussian26_vt_select_63_b_5_q;
    reg [61:0] redist65_i_arrayidx122_gaussian26_vt_select_63_b_5_delay_0;
    reg [61:0] redist65_i_arrayidx122_gaussian26_vt_select_63_b_5_delay_1;
    reg [63:0] redist66_i_arrayidx122_gaussian26_vt_join_q_2_q;
    reg [63:0] redist66_i_arrayidx122_gaussian26_vt_join_q_2_delay_0;
    reg [31:0] redist1_sync_together117_aunroll_x_in_c0_eni18_1_tpl_4_inputreg0_q;
    reg [31:0] redist3_sync_together117_aunroll_x_in_c0_eni18_4_tpl_4_inputreg0_q;
    reg [31:0] redist6_sync_together117_aunroll_x_in_c0_eni18_7_tpl_4_inputreg0_q;
    reg [31:0] redist7_sync_together117_aunroll_x_in_c0_eni18_8_tpl_4_inputreg0_q;
    reg [31:0] redist8_sync_together117_aunroll_x_in_c0_eni18_9_tpl_4_inputreg0_q;
    reg [31:0] redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_inputreg0_q;
    reg [31:0] redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_outputreg0_q;
    wire redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_mem_reset0;
    wire [31:0] redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_mem_ia;
    wire [3:0] redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_mem_aa;
    wire [3:0] redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_mem_ab;
    wire [31:0] redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_mem_iq;
    wire [31:0] redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_mem_q;
    wire [3:0] redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_wraddr_i = 4'b1111;
    wire [3:0] redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_offset_q;
    wire [4:0] redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_rdcnt_a;
    wire [4:0] redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_rdcnt_b;
    logic [4:0] redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_rdcnt_o;
    wire [4:0] redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_rdcnt_q;
    reg [31:0] redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_inputreg0_q;
    reg [31:0] redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_outputreg0_q;
    wire redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_mem_reset0;
    wire [31:0] redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_mem_ia;
    wire [3:0] redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_mem_aa;
    wire [3:0] redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_mem_ab;
    wire [31:0] redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_mem_iq;
    wire [31:0] redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_mem_q;
    wire [3:0] redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_wraddr_i = 4'b1111;
    wire [4:0] redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_rdcnt_a;
    wire [4:0] redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_rdcnt_b;
    logic [4:0] redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_rdcnt_o;
    wire [4:0] redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_rdcnt_q;
    reg [31:0] redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_inputreg0_q;
    reg [31:0] redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_outputreg0_q;
    wire redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_mem_reset0;
    wire [31:0] redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_mem_ia;
    wire [3:0] redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_mem_aa;
    wire [3:0] redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_mem_ab;
    wire [31:0] redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_mem_iq;
    wire [31:0] redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_mem_q;
    wire [3:0] redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_wraddr_i = 4'b1111;
    wire [4:0] redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_rdcnt_a;
    wire [4:0] redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_rdcnt_b;
    logic [4:0] redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_rdcnt_o;
    wire [4:0] redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_rdcnt_q;
    reg [32:0] redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_inputreg0_q;
    reg [32:0] redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_outputreg0_q;
    wire redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_mem_reset0;
    wire [32:0] redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_mem_ia;
    wire [3:0] redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_mem_aa;
    wire [3:0] redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_mem_ab;
    wire [32:0] redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_mem_iq;
    wire [32:0] redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_mem_q;
    wire [3:0] redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_wraddr_i = 4'b1111;
    wire [4:0] redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_rdcnt_a;
    wire [4:0] redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_rdcnt_b;
    logic [4:0] redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_rdcnt_o;
    wire [4:0] redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_rdcnt_q;
    reg [31:0] redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_inputreg0_q;
    reg [31:0] redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_outputreg0_q;
    wire redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_mem_reset0;
    wire [31:0] redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_mem_ia;
    wire [3:0] redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_mem_aa;
    wire [3:0] redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_mem_ab;
    wire [31:0] redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_mem_iq;
    wire [31:0] redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_mem_q;
    wire [3:0] redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_wraddr_i = 4'b1111;
    wire [4:0] redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_rdcnt_a;
    wire [4:0] redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_rdcnt_b;
    logic [4:0] redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_rdcnt_o;
    wire [4:0] redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_rdcnt_q;
    reg [31:0] redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_inputreg0_q;
    reg [31:0] redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_outputreg0_q;
    wire redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_mem_reset0;
    wire [31:0] redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_mem_ia;
    wire [3:0] redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_mem_aa;
    wire [3:0] redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_mem_ab;
    wire [31:0] redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_mem_iq;
    wire [31:0] redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_mem_q;
    wire [3:0] redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_wraddr_i = 4'b1111;
    wire [3:0] redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_offset_q;
    wire [4:0] redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_rdcnt_a;
    wire [4:0] redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_rdcnt_b;
    logic [4:0] redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_rdcnt_o;
    wire [4:0] redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_rdcnt_q;
    reg [31:0] redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_inputreg0_q;
    reg [31:0] redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_outputreg0_q;
    wire redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_mem_reset0;
    wire [31:0] redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_mem_ia;
    wire [3:0] redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_mem_aa;
    wire [3:0] redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_mem_ab;
    wire [31:0] redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_mem_iq;
    wire [31:0] redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_mem_q;
    wire [3:0] redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_wraddr_i = 4'b1111;
    wire [4:0] redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_rdcnt_a;
    wire [4:0] redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_rdcnt_b;
    logic [4:0] redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_rdcnt_o;
    wire [4:0] redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_rdcnt_q;
    reg [31:0] redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_inputreg0_q;
    reg [31:0] redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_outputreg0_q;
    wire redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_mem_reset0;
    wire [31:0] redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_mem_ia;
    wire [3:0] redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_mem_aa;
    wire [3:0] redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_mem_ab;
    wire [31:0] redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_mem_iq;
    wire [31:0] redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_mem_q;
    wire [3:0] redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_wraddr_i = 4'b1111;
    wire [4:0] redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_rdcnt_a;
    wire [4:0] redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_rdcnt_b;
    logic [4:0] redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_rdcnt_o;
    wire [4:0] redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_rdcnt_q;
    reg [61:0] redist65_i_arrayidx122_gaussian26_vt_select_63_b_5_inputreg0_q;
    reg [61:0] redist65_i_arrayidx122_gaussian26_vt_select_63_b_5_outputreg0_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist18_sync_together117_aunroll_x_in_i_valid_2(DELAY,468)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist18_sync_together117_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist18_sync_together117_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist18_sync_together117_aunroll_x_in_i_valid_2_q <= redist18_sync_together117_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist19_sync_together117_aunroll_x_in_i_valid_3(DELAY,469)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist19_sync_together117_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist19_sync_together117_aunroll_x_in_i_valid_3_q <= $unsigned(redist18_sync_together117_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg8(REG,274)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist19_sync_together117_aunroll_x_in_i_valid_3_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_dummy_thread_gaussian_b7_dummy_gaussian2(BLACKBOX,88)@0
    // in in_stall_in@20000000
    gaussian_i_llvm_fpga_dummy_thread_b7_dummy_gaussian0 thei_llvm_fpga_dummy_thread_gaussian_b7_dummy_gaussian2 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_gaussian_b7_dummy_gaussian2_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist59_i_llvm_fpga_dummy_thread_gaussian_b7_dummy_gaussian2_out_dummy_out_4(DELAY,509)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist59_i_llvm_fpga_dummy_thread_gaussian_b7_dummy_gaussian2_out_dummy_out_4_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_gaussian_b7_dummy_gaussian2_out_dummy_out);
            redist59_i_llvm_fpga_dummy_thread_gaussian_b7_dummy_gaussian2_out_dummy_out_4_delay_1 <= redist59_i_llvm_fpga_dummy_thread_gaussian_b7_dummy_gaussian2_out_dummy_out_4_delay_0;
            redist59_i_llvm_fpga_dummy_thread_gaussian_b7_dummy_gaussian2_out_dummy_out_4_delay_2 <= redist59_i_llvm_fpga_dummy_thread_gaussian_b7_dummy_gaussian2_out_dummy_out_4_delay_1;
            redist59_i_llvm_fpga_dummy_thread_gaussian_b7_dummy_gaussian2_out_dummy_out_4_q <= redist59_i_llvm_fpga_dummy_thread_gaussian_b7_dummy_gaussian2_out_dummy_out_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_c_i7_03_x(CONSTANT,199)
    assign i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_c_i7_03_x_q = $unsigned(7'b0000000);

    // i_gaussian_b7_current_thread_isreal_gaussian6(LOGICAL,63)@4 + 1
    assign i_gaussian_b7_current_thread_isreal_gaussian6_qi = redist59_i_llvm_fpga_dummy_thread_gaussian_b7_dummy_gaussian2_out_dummy_out_4_q ^ VCC_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_gaussian_b7_current_thread_isreal_gaussian6_delay ( .xin(i_gaussian_b7_current_thread_isreal_gaussian6_qi), .xout(i_gaussian_b7_current_thread_isreal_gaussian6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg2(REG,268)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist19_sync_together117_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg33(REG,299)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg33_q <= $unsigned(redist19_sync_together117_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_i6_17107(CONSTANT,48)
    assign c_i6_17107_q = $unsigned(6'b010001);

    // i_arrayidx122_gaussian26_vt_const_1(CONSTANT,51)
    assign i_arrayidx122_gaussian26_vt_const_1_q = $unsigned(2'b00);

    // c_i6_1109(CONSTANT,47)
    assign c_i6_1109_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next_gaussian45(ADD,61)@4
    assign i_fpga_indvars_iv_next_gaussian45_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv_pop17_gaussian0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop17_gaussian42_mux_x_q};
    assign i_fpga_indvars_iv_next_gaussian45_b = {1'b0, c_i6_1109_q};
    assign i_fpga_indvars_iv_next_gaussian45_o = $unsigned(i_fpga_indvars_iv_next_gaussian45_a) + $unsigned(i_fpga_indvars_iv_next_gaussian45_b);
    assign i_fpga_indvars_iv_next_gaussian45_q = i_fpga_indvars_iv_next_gaussian45_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next_gaussian45_sel_x(BITSELECT,107)@4
    assign bgTrunc_i_fpga_indvars_iv_next_gaussian45_sel_x_b = i_fpga_indvars_iv_next_gaussian45_q[5:0];

    // redist53_bgTrunc_i_fpga_indvars_iv_next_gaussian45_sel_x_b_1(DELAY,503)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist53_bgTrunc_i_fpga_indvars_iv_next_gaussian45_sel_x_b_1_q <= $unsigned(bgTrunc_i_fpga_indvars_iv_next_gaussian45_sel_x_b);
        end
    end

    // i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian0_element_extension2_x(BITJOIN,260)@5
    assign i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian0_element_extension2_x_q = {i_arrayidx122_gaussian26_vt_const_1_q, redist53_bgTrunc_i_fpga_indvars_iv_next_gaussian45_sel_x_b_1_q};

    // valid_fanout_reg32(REG,298)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg32_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg31(REG,297)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg31_q <= $unsigned(redist19_sync_together117_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian0_i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian1_x(FIFODELAY,261)@1 + 7
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@4
    assign i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian0_i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian1_x_i_stall = ~ (valid_fanout_reg32_q & i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q);
    assign i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian0_i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian1_x_i_valid = valid_fanout_reg31_q & redist30_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian0_i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian1_x_i_data = i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian0_element_extension2_x_q;
    assign i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian0_i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian0_i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian1_x_i_valid[0];
    assign i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian0_i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian0_i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian1_x_i_stall[0];
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
        .INITIAL_OCCUPANCY(8),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian0_i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian1_x (
        .i_valid(i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian0_i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian0_i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian0_i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian0_adapt_scalar_trunc4_sel_x(BITSELECT,263)@4
    assign i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian0_i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian1_x_o_data[5:0];

    // i_llvm_fpga_pop_i6_fpga_indvars_iv_pop17_gaussian0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop17_gaussian42_mux_x(MUX,197)@4
    assign i_llvm_fpga_pop_i6_fpga_indvars_iv_pop17_gaussian0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop17_gaussian42_mux_x_s = redist57_i_llvm_fpga_forked_gaussian_b7_forked_gaussian3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop17_gaussian0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop17_gaussian42_mux_x_s or i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian0_adapt_scalar_trunc4_sel_x_b or c_i6_17107_q)
    begin
        unique case (i_llvm_fpga_pop_i6_fpga_indvars_iv_pop17_gaussian0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop17_gaussian42_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i6_fpga_indvars_iv_pop17_gaussian0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop17_gaussian42_mux_x_q = i_llvm_fpga_push_i6_fpga_indvars_iv_push17_gaussian0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i6_fpga_indvars_iv_pop17_gaussian0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop17_gaussian42_mux_x_q = c_i6_17107_q;
            default : i_llvm_fpga_pop_i6_fpga_indvars_iv_pop17_gaussian0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop17_gaussian42_mux_x_q = 6'b0;
        endcase
    end

    // i_exitcond_gaussian43_cmp_nsign(LOGICAL,331)@4
    assign i_exitcond_gaussian43_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv_pop17_gaussian0_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop17_gaussian42_mux_x_q[5:5]));

    // redist2_sync_together117_aunroll_x_in_c0_eni18_3_tpl_4(DELAY,452)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together117_aunroll_x_in_c0_eni18_3_tpl_4_delay_0 <= $unsigned(in_c0_eni18_3_tpl);
            redist2_sync_together117_aunroll_x_in_c0_eni18_3_tpl_4_delay_1 <= redist2_sync_together117_aunroll_x_in_c0_eni18_3_tpl_4_delay_0;
            redist2_sync_together117_aunroll_x_in_c0_eni18_3_tpl_4_delay_2 <= redist2_sync_together117_aunroll_x_in_c0_eni18_3_tpl_4_delay_1;
            redist2_sync_together117_aunroll_x_in_c0_eni18_3_tpl_4_q <= redist2_sync_together117_aunroll_x_in_c0_eni18_3_tpl_4_delay_2;
        end
    end

    // redist45_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian0_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian17_mux_x_q_8(DELAY,495)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist45_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian0_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian17_mux_x_q_8 ( .xin(i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian0_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian17_mux_x_q), .xout(redist45_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian0_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian17_mux_x_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_element_extension2_x(BITJOIN,200)@12
    assign i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_element_extension2_x_q = {i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_c_i7_03_x_q, redist45_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian0_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian17_mux_x_q_8_q};

    // valid_fanout_reg22(REG,288)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(in_i_valid);
        end
    end

    // redist31_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_4(DELAY,481)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist31_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_4_q <= $unsigned(redist30_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_3_q);
        end
    end

    // redist32_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_6(DELAY,482)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist32_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_6_delay_0 <= $unsigned(redist31_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_4_q);
            redist32_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_6_q <= redist32_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_6_delay_0;
        end
    end

    // redist33_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_8(DELAY,483)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist33_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_8_delay_0 <= $unsigned(redist32_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_6_q);
            redist33_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_8_q <= redist33_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_8_delay_0;
        end
    end

    // redist34_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_10(DELAY,484)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist34_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_10_delay_0 <= $unsigned(redist33_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_8_q);
            redist34_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_10_q <= redist34_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_10_delay_0;
        end
    end

    // redist20_sync_together117_aunroll_x_in_i_valid_4(DELAY,470)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist20_sync_together117_aunroll_x_in_i_valid_4_q <= $unsigned(redist19_sync_together117_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist21_sync_together117_aunroll_x_in_i_valid_6(DELAY,471)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist21_sync_together117_aunroll_x_in_i_valid_6_delay_0 <= '0;
        end
        else
        begin
            redist21_sync_together117_aunroll_x_in_i_valid_6_delay_0 <= $unsigned(redist20_sync_together117_aunroll_x_in_i_valid_4_q);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist21_sync_together117_aunroll_x_in_i_valid_6_q <= redist21_sync_together117_aunroll_x_in_i_valid_6_delay_0;
        end
    end

    // redist22_sync_together117_aunroll_x_in_i_valid_7(DELAY,472)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist22_sync_together117_aunroll_x_in_i_valid_7_q <= '0;
        end
        else
        begin
            redist22_sync_together117_aunroll_x_in_i_valid_7_q <= $unsigned(redist21_sync_together117_aunroll_x_in_i_valid_6_q);
        end
    end

    // redist23_sync_together117_aunroll_x_in_i_valid_8(DELAY,473)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist23_sync_together117_aunroll_x_in_i_valid_8_q <= $unsigned(redist22_sync_together117_aunroll_x_in_i_valid_7_q);
        end
    end

    // redist24_sync_together117_aunroll_x_in_i_valid_10(DELAY,474)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist24_sync_together117_aunroll_x_in_i_valid_10_delay_0 <= '0;
        end
        else
        begin
            redist24_sync_together117_aunroll_x_in_i_valid_10_delay_0 <= $unsigned(redist23_sync_together117_aunroll_x_in_i_valid_8_q);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist24_sync_together117_aunroll_x_in_i_valid_10_q <= redist24_sync_together117_aunroll_x_in_i_valid_10_delay_0;
        end
    end

    // valid_fanout_reg21(REG,287)@10 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist24_sync_together117_aunroll_x_in_i_valid_10_q);
        end
    end

    // i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_i_llvm_fpga_push_i1_cmp41635_push25_gaussian1_x(FIFODELAY,201)@1
    // in i_valid@11
    // in i_write_pred@11
    // in i_data@12
    // out o_data@4
    assign i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_i_llvm_fpga_push_i1_cmp41635_push25_gaussian1_x_i_stall = ~ (valid_fanout_reg22_q & i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_i_llvm_fpga_push_i1_cmp41635_push25_gaussian1_x_i_valid = valid_fanout_reg21_q & redist34_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_10_q;
    assign i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_i_llvm_fpga_push_i1_cmp41635_push25_gaussian1_x_i_data = i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_i_llvm_fpga_push_i1_cmp41635_push25_gaussian1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_i_llvm_fpga_push_i1_cmp41635_push25_gaussian1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_i_llvm_fpga_push_i1_cmp41635_push25_gaussian1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_i_llvm_fpga_push_i1_cmp41635_push25_gaussian1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(8),
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
        .INITIAL_OCCUPANCY(8),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i1_cmp41635_push25_gaussian0_i_llvm_fpga_push_i1_cmp41635_push25_gaussian1_x (
        .i_valid(i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_i_llvm_fpga_push_i1_cmp41635_push25_gaussian1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_i_llvm_fpga_push_i1_cmp41635_push25_gaussian1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_i_llvm_fpga_push_i1_cmp41635_push25_gaussian1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_adapt_scalar_trunc4_sel_x(BITSELECT,203)@4
    assign i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_i_llvm_fpga_push_i1_cmp41635_push25_gaussian1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian0_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian17_mux_x(MUX,185)@4
    assign i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian0_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian17_mux_x_s = redist57_i_llvm_fpga_forked_gaussian_b7_forked_gaussian3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian0_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian17_mux_x_s or i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_adapt_scalar_trunc4_sel_x_b or redist2_sync_together117_aunroll_x_in_c0_eni18_3_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian0_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian17_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian0_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian17_mux_x_q = i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian0_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian17_mux_x_q = redist2_sync_together117_aunroll_x_in_c0_eni18_3_tpl_4_q;
            default : i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian0_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian17_mux_x_q = 1'b0;
        endcase
    end

    // i_unnamed_gaussian46(LOGICAL,102)@4
    assign i_unnamed_gaussian46_q = i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian0_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian17_mux_x_q & i_exitcond_gaussian43_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond_gaussian57(BLACKBOX,95)@4
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    gaussian_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_gaussian57 (
        .in_data_in(i_unnamed_gaussian46_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_gaussian8_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg33_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_notexitcond_gaussian57_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_notexitcond_gaussian57_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_gaussian8(BLACKBOX,94)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    gaussian_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_gaussian8 (
        .in_data_in(redist57_i_llvm_fpga_forked_gaussian_b7_forked_gaussian3_out_buffer_out_4_q),
        .in_dummy_in(redist59_i_llvm_fpga_dummy_thread_gaussian_b7_dummy_gaussian2_out_dummy_out_4_q),
        .in_forked_in(redist57_i_llvm_fpga_forked_gaussian_b7_forked_gaussian3_out_buffer_out_4_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_gaussian57_out_feedback_out_2),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_gaussian57_out_feedback_valid_out_2),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_gaussian8_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_gaussian8_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_gaussian8_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going_gaussian8_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going_gaussian8_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_gaussian8_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist56_i_llvm_fpga_pipeline_keep_going_gaussian8_out_data_out_1(DELAY,506)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist56_i_llvm_fpga_pipeline_keep_going_gaussian8_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_gaussian8_out_data_out);
        end
    end

    // redist47_i_llvm_fpga_pop_coalesce_i1_gaussian_b7_current_iter_isreal_gaussian0_i_llvm_fpga_pop_coalesce_i1_gaussian_b7_current_iter_isreal_gaussian4_mux_x_q_1(DELAY,497)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist47_i_llvm_fpga_pop_coalesce_i1_gaussian_b7_current_iter_isreal_gaussian0_i_llvm_fpga_pop_coalesce_i1_gaussian_b7_current_iter_isreal_gaussian4_mux_x_q_1_q <= $unsigned(i_llvm_fpga_pop_coalesce_i1_gaussian_b7_current_iter_isreal_gaussian0_i_llvm_fpga_pop_coalesce_i1_gaussian_b7_current_iter_isreal_gaussian4_mux_x_q);
        end
    end

    // i_gaussian_b7_next_iter_isreal_gaussian9(LOGICAL,71)@5
    assign i_gaussian_b7_next_iter_isreal_gaussian9_q = redist47_i_llvm_fpga_pop_coalesce_i1_gaussian_b7_current_iter_isreal_gaussian0_i_llvm_fpga_pop_coalesce_i1_gaussian_b7_current_iter_isreal_gaussian4_mux_x_q_1_q & redist56_i_llvm_fpga_pipeline_keep_going_gaussian8_out_data_out_1_q;

    // i_gaussian_b7_next_iter_isrealreal_gaussian10(LOGICAL,72)@5
    assign i_gaussian_b7_next_iter_isrealreal_gaussian10_q = i_gaussian_b7_next_iter_isreal_gaussian9_q & i_gaussian_b7_current_thread_isreal_gaussian6_q;

    // i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian0_element_extension2_x(BITJOIN,206)@5
    assign i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian0_element_extension2_x_q = {i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_c_i7_03_x_q, i_gaussian_b7_next_iter_isrealreal_gaussian10_q};

    // i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x(LOGICAL,202)@1
    assign i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg4(REG,270)@0 + 1
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

    // redist29_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_2(DELAY,479)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist29_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q);
            redist29_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_2_q <= redist29_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_2_delay_0;
        end
    end

    // redist30_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_3(DELAY,480)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist30_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_3_q <= $unsigned(redist29_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_2_q);
        end
    end

    // valid_fanout_reg3(REG,269)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist19_sync_together117_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian0_i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian1_x(FIFODELAY,207)@1 + 7
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@4
    assign i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian0_i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian1_x_i_stall = ~ (valid_fanout_reg4_q & i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian0_i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian1_x_i_valid = valid_fanout_reg3_q & redist30_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian0_i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian1_x_i_data = i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian0_i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian0_i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian0_i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian0_i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian1_x_i_stall[0];
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
        .INITIAL_OCCUPANCY(8),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian0_i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian1_x (
        .i_valid(i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian0_i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian0_i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian0_i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian0_adapt_scalar_trunc4_sel_x(BITSELECT,209)@4
    assign i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian0_i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian1_x_o_data[0:0];

    // i_llvm_fpga_forked_gaussian_b7_forked_gaussian3(BLACKBOX,89)@0
    // in in_stall_in@20000000
    gaussian_i_llvm_fpga_forked_b7_forked_gaussian0 thei_llvm_fpga_forked_gaussian_b7_forked_gaussian3 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_gaussian_b7_forked_gaussian3_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist57_i_llvm_fpga_forked_gaussian_b7_forked_gaussian3_out_buffer_out_4(DELAY,507)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist57_i_llvm_fpga_forked_gaussian_b7_forked_gaussian3_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_gaussian_b7_forked_gaussian3_out_buffer_out);
            redist57_i_llvm_fpga_forked_gaussian_b7_forked_gaussian3_out_buffer_out_4_delay_1 <= redist57_i_llvm_fpga_forked_gaussian_b7_forked_gaussian3_out_buffer_out_4_delay_0;
            redist57_i_llvm_fpga_forked_gaussian_b7_forked_gaussian3_out_buffer_out_4_delay_2 <= redist57_i_llvm_fpga_forked_gaussian_b7_forked_gaussian3_out_buffer_out_4_delay_1;
            redist57_i_llvm_fpga_forked_gaussian_b7_forked_gaussian3_out_buffer_out_4_q <= redist57_i_llvm_fpga_forked_gaussian_b7_forked_gaussian3_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pop_coalesce_i1_gaussian_b7_current_iter_isreal_gaussian0_i_llvm_fpga_pop_coalesce_i1_gaussian_b7_current_iter_isreal_gaussian4_mux_x(MUX,184)@4
    assign i_llvm_fpga_pop_coalesce_i1_gaussian_b7_current_iter_isreal_gaussian0_i_llvm_fpga_pop_coalesce_i1_gaussian_b7_current_iter_isreal_gaussian4_mux_x_s = redist57_i_llvm_fpga_forked_gaussian_b7_forked_gaussian3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_coalesce_i1_gaussian_b7_current_iter_isreal_gaussian0_i_llvm_fpga_pop_coalesce_i1_gaussian_b7_current_iter_isreal_gaussian4_mux_x_s or i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian0_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_gaussian_b7_current_iter_isreal_gaussian0_i_llvm_fpga_pop_coalesce_i1_gaussian_b7_current_iter_isreal_gaussian4_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_gaussian_b7_current_iter_isreal_gaussian0_i_llvm_fpga_pop_coalesce_i1_gaussian_b7_current_iter_isreal_gaussian4_mux_x_q = i_llvm_fpga_push_i1_gaussian_b7_next_iter_isreal_push_gaussian0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_gaussian_b7_current_iter_isreal_gaussian0_i_llvm_fpga_pop_coalesce_i1_gaussian_b7_current_iter_isreal_gaussian4_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_gaussian_b7_current_iter_isreal_gaussian0_i_llvm_fpga_pop_coalesce_i1_gaussian_b7_current_iter_isreal_gaussian4_mux_x_q = 1'b0;
        endcase
    end

    // i_gaussian_b7_current_iter_isspec_gaussian5(LOGICAL,62)@4
    assign i_gaussian_b7_current_iter_isspec_gaussian5_q = i_llvm_fpga_pop_coalesce_i1_gaussian_b7_current_iter_isreal_gaussian0_i_llvm_fpga_pop_coalesce_i1_gaussian_b7_current_iter_isreal_gaussian4_mux_x_q ^ VCC_q;

    // i_gaussian_b7_fullexited_gaussian7(LOGICAL,64)@4
    assign i_gaussian_b7_fullexited_gaussian7_q = i_gaussian_b7_current_iter_isspec_gaussian5_q | redist59_i_llvm_fpga_dummy_thread_gaussian_b7_dummy_gaussian2_out_dummy_out_4_q;

    // i_unnamed_gaussian18(LOGICAL,101)@4
    assign i_unnamed_gaussian18_q = i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian0_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian17_mux_x_q ^ VCC_q;

    // i_gaussian_b7_fullexited_or20_gaussian30(LOGICAL,65)@4
    assign i_gaussian_b7_fullexited_or20_gaussian30_q = i_unnamed_gaussian18_q | i_gaussian_b7_fullexited_gaussian7_q;

    // c_gaussian_c_pmem(CONSTANT,7)
    assign c_gaussian_c_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx141_gaussian0_upper_bits_x_merged_bit_select(BITSELECT,445)@4
    assign i_arrayidx141_gaussian0_upper_bits_x_merged_bit_select_b = c_gaussian_c_pmem_q[63:7];
    assign i_arrayidx141_gaussian0_upper_bits_x_merged_bit_select_c = c_gaussian_c_pmem_q[6:0];

    // i_idxprom11_gaussian25_vt_const_63(CONSTANT,76)
    assign i_idxprom11_gaussian25_vt_const_63_q = $unsigned(32'b00000000000000000000000000000000);

    // redist3_sync_together117_aunroll_x_in_c0_eni18_4_tpl_4_inputreg0(DELAY,518)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together117_aunroll_x_in_c0_eni18_4_tpl_4_inputreg0_q <= $unsigned(in_c0_eni18_4_tpl);
        end
    end

    // redist3_sync_together117_aunroll_x_in_c0_eni18_4_tpl_4(DELAY,453)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together117_aunroll_x_in_c0_eni18_4_tpl_4_delay_0 <= $unsigned(redist3_sync_together117_aunroll_x_in_c0_eni18_4_tpl_4_inputreg0_q);
            redist3_sync_together117_aunroll_x_in_c0_eni18_4_tpl_4_delay_1 <= redist3_sync_together117_aunroll_x_in_c0_eni18_4_tpl_4_delay_0;
            redist3_sync_together117_aunroll_x_in_c0_eni18_4_tpl_4_q <= redist3_sync_together117_aunroll_x_in_c0_eni18_4_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg24(REG,290)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg23(REG,289)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(redist18_sync_together117_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_j_01831_push23_gaussian0_i_llvm_fpga_push_i32_j_01831_push23_gaussian1_x(FIFODELAY,252)@1 + 8
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_j_01831_push23_gaussian0_i_llvm_fpga_push_i32_j_01831_push23_gaussian1_x_i_stall = ~ (valid_fanout_reg24_q & i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_j_01831_push23_gaussian0_i_llvm_fpga_push_i32_j_01831_push23_gaussian1_x_i_valid = valid_fanout_reg23_q & redist29_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_j_01831_push23_gaussian0_i_llvm_fpga_push_i32_j_01831_push23_gaussian1_x_i_data = i_llvm_fpga_pop_i32_j_01831_pop23_gaussian0_i_llvm_fpga_pop_i32_j_01831_pop23_gaussian19_mux_x_q;
    assign i_llvm_fpga_push_i32_j_01831_push23_gaussian0_i_llvm_fpga_push_i32_j_01831_push23_gaussian1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_j_01831_push23_gaussian0_i_llvm_fpga_push_i32_j_01831_push23_gaussian1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_j_01831_push23_gaussian0_i_llvm_fpga_push_i32_j_01831_push23_gaussian1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_j_01831_push23_gaussian0_i_llvm_fpga_push_i32_j_01831_push23_gaussian1_x_i_stall[0];
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
        .INITIAL_OCCUPANCY(8),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i32_j_01831_push23_gaussian0_i_llvm_fpga_push_i32_j_01831_push23_gaussian1_x (
        .i_valid(i_llvm_fpga_push_i32_j_01831_push23_gaussian0_i_llvm_fpga_push_i32_j_01831_push23_gaussian1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_j_01831_push23_gaussian0_i_llvm_fpga_push_i32_j_01831_push23_gaussian1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_j_01831_pop23_gaussian0_i_llvm_fpga_pop_i32_j_01831_pop23_gaussian19_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_j_01831_push23_gaussian0_i_llvm_fpga_push_i32_j_01831_push23_gaussian1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_j_01831_pop23_gaussian0_i_llvm_fpga_pop_i32_j_01831_pop23_gaussian19_mux_x(MUX,195)@4
    assign i_llvm_fpga_pop_i32_j_01831_pop23_gaussian0_i_llvm_fpga_pop_i32_j_01831_pop23_gaussian19_mux_x_s = redist57_i_llvm_fpga_forked_gaussian_b7_forked_gaussian3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_j_01831_pop23_gaussian0_i_llvm_fpga_pop_i32_j_01831_pop23_gaussian19_mux_x_s or i_llvm_fpga_push_i32_j_01831_push23_gaussian0_i_llvm_fpga_push_i32_j_01831_push23_gaussian1_x_o_data or redist3_sync_together117_aunroll_x_in_c0_eni18_4_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i32_j_01831_pop23_gaussian0_i_llvm_fpga_pop_i32_j_01831_pop23_gaussian19_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_j_01831_pop23_gaussian0_i_llvm_fpga_pop_i32_j_01831_pop23_gaussian19_mux_x_q = i_llvm_fpga_push_i32_j_01831_push23_gaussian0_i_llvm_fpga_push_i32_j_01831_push23_gaussian1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_j_01831_pop23_gaussian0_i_llvm_fpga_pop_i32_j_01831_pop23_gaussian19_mux_x_q = redist3_sync_together117_aunroll_x_in_c0_eni18_4_tpl_4_q;
            default : i_llvm_fpga_pop_i32_j_01831_pop23_gaussian0_i_llvm_fpga_pop_i32_j_01831_pop23_gaussian19_mux_x_q = 32'b0;
        endcase
    end

    // i_idxprom13_gaussian20_sel_x(BITSELECT,182)@4
    assign i_idxprom13_gaussian20_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j_01831_pop23_gaussian0_i_llvm_fpga_pop_i32_j_01831_pop23_gaussian19_mux_x_q[31:0]};

    // i_idxprom13_gaussian20_vt_select_31(BITSELECT,82)@4
    assign i_idxprom13_gaussian20_vt_select_31_b = i_idxprom13_gaussian20_sel_x_b[31:0];

    // i_idxprom13_gaussian20_vt_join(BITJOIN,81)@4
    assign i_idxprom13_gaussian20_vt_join_q = {i_idxprom11_gaussian25_vt_const_63_q, i_idxprom13_gaussian20_vt_select_31_b};

    // i_arrayidx141_gaussian0_dupName_0_trunc_sel_x(BITSELECT,155)@4
    assign i_arrayidx141_gaussian0_dupName_0_trunc_sel_x_b = i_idxprom13_gaussian20_vt_join_q[6:0];

    // i_arrayidx141_gaussian0_narrow_x(BITSELECT,148)@4
    assign i_arrayidx141_gaussian0_narrow_x_b = i_arrayidx141_gaussian0_dupName_0_trunc_sel_x_b[4:0];

    // i_arrayidx141_gaussian0_shift_join_x(BITJOIN,149)@4
    assign i_arrayidx141_gaussian0_shift_join_x_q = {i_arrayidx141_gaussian0_narrow_x_b, i_arrayidx122_gaussian26_vt_const_1_q};

    // i_arrayidx141_gaussian0_add_x(ADD,145)@4
    assign i_arrayidx141_gaussian0_add_x_a = {1'b0, i_arrayidx141_gaussian0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx141_gaussian0_add_x_b = {1'b0, i_arrayidx141_gaussian0_shift_join_x_q};
    assign i_arrayidx141_gaussian0_add_x_o = $unsigned(i_arrayidx141_gaussian0_add_x_a) + $unsigned(i_arrayidx141_gaussian0_add_x_b);
    assign i_arrayidx141_gaussian0_add_x_q = i_arrayidx141_gaussian0_add_x_o[7:0];

    // i_arrayidx141_gaussian0_dupName_2_trunc_sel_x(BITSELECT,156)@4
    assign i_arrayidx141_gaussian0_dupName_2_trunc_sel_x_b = i_arrayidx141_gaussian0_add_x_q[6:0];

    // i_arrayidx141_gaussian0_append_upper_bits_x(BITJOIN,146)@4
    assign i_arrayidx141_gaussian0_append_upper_bits_x_q = {i_arrayidx141_gaussian0_upper_bits_x_merged_bit_select_b, i_arrayidx141_gaussian0_dupName_2_trunc_sel_x_b};

    // i_arrayidx141_gaussian21_vt_select_63(BITSELECT,56)@4
    assign i_arrayidx141_gaussian21_vt_select_63_b = i_arrayidx141_gaussian0_append_upper_bits_x_q[63:2];

    // i_arrayidx141_gaussian21_vt_join(BITJOIN,55)@4
    assign i_arrayidx141_gaussian21_vt_join_q = {i_arrayidx141_gaussian21_vt_select_63_b, i_arrayidx122_gaussian26_vt_const_1_q};

    // i_llvm_fpga_mem_lm1_gaussian23(BLACKBOX,90)@4
    // in in_i_stall@20000000
    // out out_lm1_gaussian_avm_address@20000000
    // out out_lm1_gaussian_avm_burstcount@20000000
    // out out_lm1_gaussian_avm_byteenable@20000000
    // out out_lm1_gaussian_avm_enable@20000000
    // out out_lm1_gaussian_avm_read@20000000
    // out out_lm1_gaussian_avm_write@20000000
    // out out_lm1_gaussian_avm_writedata@20000000
    // out out_o_readdata@9
    // out out_o_stall@8
    // out out_o_valid@9
    gaussian_i_llvm_fpga_mem_lm1_0 thei_llvm_fpga_mem_lm1_gaussian23 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx141_gaussian21_vt_join_q),
        .in_i_predicate(i_gaussian_b7_fullexited_or20_gaussian30_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg8_q),
        .in_lm1_gaussian_avm_readdata(in_lm1_gaussian_avm_readdata),
        .in_lm1_gaussian_avm_readdatavalid(in_lm1_gaussian_avm_readdatavalid),
        .in_lm1_gaussian_avm_waitrequest(in_lm1_gaussian_avm_waitrequest),
        .in_lm1_gaussian_avm_writeack(in_lm1_gaussian_avm_writeack),
        .out_lm1_gaussian_avm_address(i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_address),
        .out_lm1_gaussian_avm_burstcount(i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_burstcount),
        .out_lm1_gaussian_avm_byteenable(i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_byteenable),
        .out_lm1_gaussian_avm_enable(i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_enable),
        .out_lm1_gaussian_avm_read(i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_read),
        .out_lm1_gaussian_avm_write(i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_write),
        .out_lm1_gaussian_avm_writedata(i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm1_gaussian23_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,50)
    assign out_lm1_gaussian_avm_address = i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_address;
    assign out_lm1_gaussian_avm_enable = i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_enable;
    assign out_lm1_gaussian_avm_read = i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_read;
    assign out_lm1_gaussian_avm_write = i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_write;
    assign out_lm1_gaussian_avm_writedata = i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_writedata;
    assign out_lm1_gaussian_avm_byteenable = i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_byteenable;
    assign out_lm1_gaussian_avm_burstcount = i_llvm_fpga_mem_lm1_gaussian23_out_lm1_gaussian_avm_burstcount;

    // regfree_osync(GPOUT,105)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_gaussian8_out_exiting_valid_out;

    // redist25_sync_together117_aunroll_x_in_i_valid_12(DELAY,475)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist25_sync_together117_aunroll_x_in_i_valid_12_delay_0 <= '0;
        end
        else
        begin
            redist25_sync_together117_aunroll_x_in_i_valid_12_delay_0 <= $unsigned(redist24_sync_together117_aunroll_x_in_i_valid_10_q);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist25_sync_together117_aunroll_x_in_i_valid_12_q <= redist25_sync_together117_aunroll_x_in_i_valid_12_delay_0;
        end
    end

    // valid_fanout_reg12(REG,278)@12 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist25_sync_together117_aunroll_x_in_i_valid_12_q);
        end
    end

    // redist61_i_gaussian_b7_fullexited_or20_gaussian30_q_4(DELAY,511)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist61_i_gaussian_b7_fullexited_or20_gaussian30_q_4_delay_0 <= $unsigned(i_gaussian_b7_fullexited_or20_gaussian30_q);
            redist61_i_gaussian_b7_fullexited_or20_gaussian30_q_4_delay_1 <= redist61_i_gaussian_b7_fullexited_or20_gaussian30_q_4_delay_0;
            redist61_i_gaussian_b7_fullexited_or20_gaussian30_q_4_delay_2 <= redist61_i_gaussian_b7_fullexited_or20_gaussian30_q_4_delay_1;
            redist61_i_gaussian_b7_fullexited_or20_gaussian30_q_4_q <= redist61_i_gaussian_b7_fullexited_or20_gaussian30_q_4_delay_2;
        end
    end

    // redist62_i_gaussian_b7_fullexited_or20_gaussian30_q_9(DELAY,512)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist62_i_gaussian_b7_fullexited_or20_gaussian30_q_9_delay_0 <= $unsigned(redist61_i_gaussian_b7_fullexited_or20_gaussian30_q_4_q);
            redist62_i_gaussian_b7_fullexited_or20_gaussian30_q_9_delay_1 <= redist62_i_gaussian_b7_fullexited_or20_gaussian30_q_9_delay_0;
            redist62_i_gaussian_b7_fullexited_or20_gaussian30_q_9_delay_2 <= redist62_i_gaussian_b7_fullexited_or20_gaussian30_q_9_delay_1;
            redist62_i_gaussian_b7_fullexited_or20_gaussian30_q_9_delay_3 <= redist62_i_gaussian_b7_fullexited_or20_gaussian30_q_9_delay_2;
            redist62_i_gaussian_b7_fullexited_or20_gaussian30_q_9_q <= redist62_i_gaussian_b7_fullexited_or20_gaussian30_q_9_delay_3;
        end
    end

    // redist4_sync_together117_aunroll_x_in_c0_eni18_5_tpl_8(DELAY,454)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist4_sync_together117_aunroll_x_in_c0_eni18_5_tpl_8 ( .xin(in_c0_eni18_5_tpl), .xout(redist4_sync_together117_aunroll_x_in_c0_eni18_5_tpl_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist44_i_llvm_fpga_pop_i1_memdep_phi4_pop724_pop20_gaussian0_i_llvm_fpga_pop_i1_memdep_phi4_pop724_pop20_gaussian27_mux_x_q_8(DELAY,494)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist44_i_llvm_fpga_pop_i1_memdep_phi4_pop724_pop20_gaussian0_i_llvm_fpga_pop_i1_memdep_phi4_pop724_pop20_gaussian27_mux_x_q_8 ( .xin(i_llvm_fpga_pop_i1_memdep_phi4_pop724_pop20_gaussian0_i_llvm_fpga_pop_i1_memdep_phi4_pop724_pop20_gaussian27_mux_x_q), .xout(redist44_i_llvm_fpga_pop_i1_memdep_phi4_pop724_pop20_gaussian0_i_llvm_fpga_pop_i1_memdep_phi4_pop724_pop20_gaussian27_mux_x_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian0_element_extension2_x(BITJOIN,212)@16
    assign i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian0_element_extension2_x_q = {i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_c_i7_03_x_q, redist44_i_llvm_fpga_pop_i1_memdep_phi4_pop724_pop20_gaussian0_i_llvm_fpga_pop_i1_memdep_phi4_pop724_pop20_gaussian27_mux_x_q_8_q};

    // valid_fanout_reg26(REG,292)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg26_q <= $unsigned(redist20_sync_together117_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist35_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_14(DELAY,485)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist35_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_14_delay_0 <= $unsigned(redist34_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_10_q);
            redist35_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_14_delay_1 <= redist35_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_14_delay_0;
            redist35_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_14_delay_2 <= redist35_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_14_delay_1;
            redist35_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_14_q <= redist35_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_14_delay_2;
        end
    end

    // redist26_sync_together117_aunroll_x_in_i_valid_14(DELAY,476)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist26_sync_together117_aunroll_x_in_i_valid_14_delay_0 <= '0;
        end
        else
        begin
            redist26_sync_together117_aunroll_x_in_i_valid_14_delay_0 <= $unsigned(redist25_sync_together117_aunroll_x_in_i_valid_12_q);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist26_sync_together117_aunroll_x_in_i_valid_14_q <= redist26_sync_together117_aunroll_x_in_i_valid_14_delay_0;
        end
    end

    // valid_fanout_reg25(REG,291)@14 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(redist26_sync_together117_aunroll_x_in_i_valid_14_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian0_i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian1_x(FIFODELAY,213)@5
    // in i_valid@15
    // in i_write_pred@15
    // in i_data@16
    // out o_data@8
    assign i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian0_i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian1_x_i_stall = ~ (valid_fanout_reg26_q & redist31_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_4_q);
    assign i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian0_i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian1_x_i_valid = valid_fanout_reg25_q & redist35_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_14_q;
    assign i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian0_i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian1_x_i_data = i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian0_i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian0_i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian0_i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian0_i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(8),
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
        .INITIAL_OCCUPANCY(8),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian0_i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian1_x (
        .i_valid(i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian0_i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian0_i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian0_i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian0_adapt_scalar_trunc4_sel_x(BITSELECT,215)@8
    assign i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian0_i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian1_x_o_data[0:0];

    // redist58_i_llvm_fpga_forked_gaussian_b7_forked_gaussian3_out_buffer_out_8(DELAY,508)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist58_i_llvm_fpga_forked_gaussian_b7_forked_gaussian3_out_buffer_out_8_delay_0 <= $unsigned(redist57_i_llvm_fpga_forked_gaussian_b7_forked_gaussian3_out_buffer_out_4_q);
            redist58_i_llvm_fpga_forked_gaussian_b7_forked_gaussian3_out_buffer_out_8_delay_1 <= redist58_i_llvm_fpga_forked_gaussian_b7_forked_gaussian3_out_buffer_out_8_delay_0;
            redist58_i_llvm_fpga_forked_gaussian_b7_forked_gaussian3_out_buffer_out_8_delay_2 <= redist58_i_llvm_fpga_forked_gaussian_b7_forked_gaussian3_out_buffer_out_8_delay_1;
            redist58_i_llvm_fpga_forked_gaussian_b7_forked_gaussian3_out_buffer_out_8_q <= redist58_i_llvm_fpga_forked_gaussian_b7_forked_gaussian3_out_buffer_out_8_delay_2;
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi4_pop724_pop20_gaussian0_i_llvm_fpga_pop_i1_memdep_phi4_pop724_pop20_gaussian27_mux_x(MUX,186)@8
    assign i_llvm_fpga_pop_i1_memdep_phi4_pop724_pop20_gaussian0_i_llvm_fpga_pop_i1_memdep_phi4_pop724_pop20_gaussian27_mux_x_s = redist58_i_llvm_fpga_forked_gaussian_b7_forked_gaussian3_out_buffer_out_8_q;
    always @(i_llvm_fpga_pop_i1_memdep_phi4_pop724_pop20_gaussian0_i_llvm_fpga_pop_i1_memdep_phi4_pop724_pop20_gaussian27_mux_x_s or i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian0_adapt_scalar_trunc4_sel_x_b or redist4_sync_together117_aunroll_x_in_c0_eni18_5_tpl_8_q)
    begin
        unique case (i_llvm_fpga_pop_i1_memdep_phi4_pop724_pop20_gaussian0_i_llvm_fpga_pop_i1_memdep_phi4_pop724_pop20_gaussian27_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_memdep_phi4_pop724_pop20_gaussian0_i_llvm_fpga_pop_i1_memdep_phi4_pop724_pop20_gaussian27_mux_x_q = i_llvm_fpga_push_i1_memdep_phi4_pop724_push20_gaussian0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_memdep_phi4_pop724_pop20_gaussian0_i_llvm_fpga_pop_i1_memdep_phi4_pop724_pop20_gaussian27_mux_x_q = redist4_sync_together117_aunroll_x_in_c0_eni18_5_tpl_8_q;
            default : i_llvm_fpga_pop_i1_memdep_phi4_pop724_pop20_gaussian0_i_llvm_fpga_pop_i1_memdep_phi4_pop724_pop20_gaussian27_mux_x_q = 1'b0;
        endcase
    end

    // redist5_sync_together117_aunroll_x_in_c0_eni18_6_tpl_8(DELAY,455)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist5_sync_together117_aunroll_x_in_c0_eni18_6_tpl_8 ( .xin(in_c0_eni18_6_tpl), .xout(redist5_sync_together117_aunroll_x_in_c0_eni18_6_tpl_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian0_element_extension2_x(BITJOIN,224)@8
    assign i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian0_element_extension2_x_q = {i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_c_i7_03_x_q, i_llvm_fpga_pop_i1_memdep_phi_pop1039_pop29_gaussian0_i_llvm_fpga_pop_i1_memdep_phi_pop1039_pop29_gaussian28_mux_x_q};

    // valid_fanout_reg18(REG,284)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist20_sync_together117_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg17(REG,283)@6 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist21_sync_together117_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian0_i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian1_x(FIFODELAY,225)@5 + 8
    // in i_valid@7
    // in i_write_pred@7
    // in i_data@8
    // out o_data@8
    assign i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian0_i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian1_x_i_stall = ~ (valid_fanout_reg18_q & redist31_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_4_q);
    assign i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian0_i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian1_x_i_valid = valid_fanout_reg17_q & redist32_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_6_q;
    assign i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian0_i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian1_x_i_data = i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian0_i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian0_i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian0_i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian0_i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian1_x_i_stall[0];
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
        .INITIAL_OCCUPANCY(8),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian0_i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian1_x (
        .i_valid(i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian0_i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian0_i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian0_i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian0_adapt_scalar_trunc4_sel_x(BITSELECT,227)@8
    assign i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian0_i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_memdep_phi_pop1039_pop29_gaussian0_i_llvm_fpga_pop_i1_memdep_phi_pop1039_pop29_gaussian28_mux_x(MUX,188)@8
    assign i_llvm_fpga_pop_i1_memdep_phi_pop1039_pop29_gaussian0_i_llvm_fpga_pop_i1_memdep_phi_pop1039_pop29_gaussian28_mux_x_s = redist58_i_llvm_fpga_forked_gaussian_b7_forked_gaussian3_out_buffer_out_8_q;
    always @(i_llvm_fpga_pop_i1_memdep_phi_pop1039_pop29_gaussian0_i_llvm_fpga_pop_i1_memdep_phi_pop1039_pop29_gaussian28_mux_x_s or i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian0_adapt_scalar_trunc4_sel_x_b or redist5_sync_together117_aunroll_x_in_c0_eni18_6_tpl_8_q)
    begin
        unique case (i_llvm_fpga_pop_i1_memdep_phi_pop1039_pop29_gaussian0_i_llvm_fpga_pop_i1_memdep_phi_pop1039_pop29_gaussian28_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_memdep_phi_pop1039_pop29_gaussian0_i_llvm_fpga_pop_i1_memdep_phi_pop1039_pop29_gaussian28_mux_x_q = i_llvm_fpga_push_i1_memdep_phi_pop1039_push29_gaussian0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_memdep_phi_pop1039_pop29_gaussian0_i_llvm_fpga_pop_i1_memdep_phi_pop1039_pop29_gaussian28_mux_x_q = redist5_sync_together117_aunroll_x_in_c0_eni18_6_tpl_8_q;
            default : i_llvm_fpga_pop_i1_memdep_phi_pop1039_pop29_gaussian0_i_llvm_fpga_pop_i1_memdep_phi_pop1039_pop29_gaussian28_mux_x_q = 1'b0;
        endcase
    end

    // i_memdep_phi4_or_gaussian29(LOGICAL,96)@8
    assign i_memdep_phi4_or_gaussian29_q = i_llvm_fpga_pop_i1_memdep_phi_pop1039_pop29_gaussian0_i_llvm_fpga_pop_i1_memdep_phi_pop1039_pop29_gaussian28_mux_x_q | i_llvm_fpga_pop_i1_memdep_phi4_pop724_pop20_gaussian0_i_llvm_fpga_pop_i1_memdep_phi4_pop724_pop20_gaussian27_mux_x_q;

    // redist55_i_memdep_phi4_or_gaussian29_q_5(DELAY,505)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist55_i_memdep_phi4_or_gaussian29_q_5_delay_0 <= $unsigned(i_memdep_phi4_or_gaussian29_q);
            redist55_i_memdep_phi4_or_gaussian29_q_5_delay_1 <= redist55_i_memdep_phi4_or_gaussian29_q_5_delay_0;
            redist55_i_memdep_phi4_or_gaussian29_q_5_delay_2 <= redist55_i_memdep_phi4_or_gaussian29_q_5_delay_1;
            redist55_i_memdep_phi4_or_gaussian29_q_5_delay_3 <= redist55_i_memdep_phi4_or_gaussian29_q_5_delay_2;
            redist55_i_memdep_phi4_or_gaussian29_q_5_q <= redist55_i_memdep_phi4_or_gaussian29_q_5_delay_3;
        end
    end

    // c_gaussian_A_pmem(CONSTANT,6)
    assign c_gaussian_A_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx122_gaussian0_upper_bits_x_merged_bit_select(BITSELECT,444)@7
    assign i_arrayidx122_gaussian0_upper_bits_x_merged_bit_select_b = c_gaussian_A_pmem_q[63:11];
    assign i_arrayidx122_gaussian0_upper_bits_x_merged_bit_select_c = c_gaussian_A_pmem_q[10:0];

    // redist0_i_arrayidx122_gaussian0_upper_bits_x_merged_bit_select_b_1(DELAY,450)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_arrayidx122_gaussian0_upper_bits_x_merged_bit_select_b_1_q <= $unsigned(i_arrayidx122_gaussian0_upper_bits_x_merged_bit_select_b);
        end
    end

    // c_i32_1106(CONSTANT,46)
    assign c_i32_1106_q = $unsigned(32'b00000000000000000000000000000001);

    // redist36_i_llvm_fpga_pop_i32_k_015_pop18_gaussian0_i_llvm_fpga_pop_i32_k_015_pop18_gaussian24_mux_x_q_1(DELAY,486)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist36_i_llvm_fpga_pop_i32_k_015_pop18_gaussian0_i_llvm_fpga_pop_i32_k_015_pop18_gaussian24_mux_x_q_1_q <= $unsigned(i_llvm_fpga_pop_i32_k_015_pop18_gaussian0_i_llvm_fpga_pop_i32_k_015_pop18_gaussian24_mux_x_q);
        end
    end

    // i_inc_gaussian41(ADD,87)@9
    assign i_inc_gaussian41_a = {1'b0, redist36_i_llvm_fpga_pop_i32_k_015_pop18_gaussian0_i_llvm_fpga_pop_i32_k_015_pop18_gaussian24_mux_x_q_1_q};
    assign i_inc_gaussian41_b = {1'b0, c_i32_1106_q};
    assign i_inc_gaussian41_o = $unsigned(i_inc_gaussian41_a) + $unsigned(i_inc_gaussian41_b);
    assign i_inc_gaussian41_q = i_inc_gaussian41_o[32:0];

    // bgTrunc_i_inc_gaussian41_sel_x(BITSELECT,108)@9
    assign bgTrunc_i_inc_gaussian41_sel_x_b = i_inc_gaussian41_q[31:0];

    // redist52_bgTrunc_i_inc_gaussian41_sel_x_b_1(DELAY,502)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist52_bgTrunc_i_inc_gaussian41_sel_x_b_1_q <= $unsigned(bgTrunc_i_inc_gaussian41_sel_x_b);
        end
    end

    // valid_fanout_reg30(REG,296)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg30_q <= $unsigned(redist20_sync_together117_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg29(REG,295)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg29_q <= $unsigned(redist23_sync_together117_aunroll_x_in_i_valid_8_q);
        end
    end

    // i_llvm_fpga_push_i32_k_015_push18_gaussian0_i_llvm_fpga_push_i32_k_015_push18_gaussian1_x(FIFODELAY,255)@5 + 6
    // in i_valid@9
    // in i_write_pred@9
    // in i_data@10
    // out o_data@8
    assign i_llvm_fpga_push_i32_k_015_push18_gaussian0_i_llvm_fpga_push_i32_k_015_push18_gaussian1_x_i_stall = ~ (valid_fanout_reg30_q & redist31_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_4_q);
    assign i_llvm_fpga_push_i32_k_015_push18_gaussian0_i_llvm_fpga_push_i32_k_015_push18_gaussian1_x_i_valid = valid_fanout_reg29_q & redist33_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_8_q;
    assign i_llvm_fpga_push_i32_k_015_push18_gaussian0_i_llvm_fpga_push_i32_k_015_push18_gaussian1_x_i_data = redist52_bgTrunc_i_inc_gaussian41_sel_x_b_1_q;
    assign i_llvm_fpga_push_i32_k_015_push18_gaussian0_i_llvm_fpga_push_i32_k_015_push18_gaussian1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_k_015_push18_gaussian0_i_llvm_fpga_push_i32_k_015_push18_gaussian1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_k_015_push18_gaussian0_i_llvm_fpga_push_i32_k_015_push18_gaussian1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_k_015_push18_gaussian0_i_llvm_fpga_push_i32_k_015_push18_gaussian1_x_i_stall[0];
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
        .INITIAL_OCCUPANCY(8),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i32_k_015_push18_gaussian0_i_llvm_fpga_push_i32_k_015_push18_gaussian1_x (
        .i_valid(i_llvm_fpga_push_i32_k_015_push18_gaussian0_i_llvm_fpga_push_i32_k_015_push18_gaussian1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_k_015_push18_gaussian0_i_llvm_fpga_push_i32_k_015_push18_gaussian1_x_i_stall_bitsignaltemp),
        .i_data(redist52_bgTrunc_i_inc_gaussian41_sel_x_b_1_q),
        .o_data(i_llvm_fpga_push_i32_k_015_push18_gaussian0_i_llvm_fpga_push_i32_k_015_push18_gaussian1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_k_015_pop18_gaussian0_i_llvm_fpga_pop_i32_k_015_pop18_gaussian24_mux_x(MUX,196)@8
    assign i_llvm_fpga_pop_i32_k_015_pop18_gaussian0_i_llvm_fpga_pop_i32_k_015_pop18_gaussian24_mux_x_s = redist58_i_llvm_fpga_forked_gaussian_b7_forked_gaussian3_out_buffer_out_8_q;
    always @(i_llvm_fpga_pop_i32_k_015_pop18_gaussian0_i_llvm_fpga_pop_i32_k_015_pop18_gaussian24_mux_x_s or i_llvm_fpga_push_i32_k_015_push18_gaussian0_i_llvm_fpga_push_i32_k_015_push18_gaussian1_x_o_data or c_i32_1106_q)
    begin
        unique case (i_llvm_fpga_pop_i32_k_015_pop18_gaussian0_i_llvm_fpga_pop_i32_k_015_pop18_gaussian24_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_k_015_pop18_gaussian0_i_llvm_fpga_pop_i32_k_015_pop18_gaussian24_mux_x_q = i_llvm_fpga_push_i32_k_015_push18_gaussian0_i_llvm_fpga_push_i32_k_015_push18_gaussian1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_k_015_pop18_gaussian0_i_llvm_fpga_pop_i32_k_015_pop18_gaussian24_mux_x_q = c_i32_1106_q;
            default : i_llvm_fpga_pop_i32_k_015_pop18_gaussian0_i_llvm_fpga_pop_i32_k_015_pop18_gaussian24_mux_x_q = 32'b0;
        endcase
    end

    // i_idxprom11_gaussian25_sel_x(BITSELECT,181)@8
    assign i_idxprom11_gaussian25_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_k_015_pop18_gaussian0_i_llvm_fpga_pop_i32_k_015_pop18_gaussian24_mux_x_q[31:0]};

    // i_idxprom11_gaussian25_vt_select_31(BITSELECT,78)@8
    assign i_idxprom11_gaussian25_vt_select_31_b = i_idxprom11_gaussian25_sel_x_b[31:0];

    // i_idxprom11_gaussian25_vt_join(BITJOIN,77)@8
    assign i_idxprom11_gaussian25_vt_join_q = {i_idxprom11_gaussian25_vt_const_63_q, i_idxprom11_gaussian25_vt_select_31_b};

    // i_arrayidx122_gaussian0_dupName_3_trunc_sel_x(BITSELECT,143)@8
    assign i_arrayidx122_gaussian0_dupName_3_trunc_sel_x_b = i_idxprom11_gaussian25_vt_join_q[10:0];

    // i_arrayidx122_gaussian0_narrow_x(BITSELECT,126)@8
    assign i_arrayidx122_gaussian0_narrow_x_b = i_arrayidx122_gaussian0_dupName_3_trunc_sel_x_b[8:0];

    // i_arrayidx122_gaussian0_shift_join_x(BITJOIN,127)@8
    assign i_arrayidx122_gaussian0_shift_join_x_q = {i_arrayidx122_gaussian0_narrow_x_b, i_arrayidx122_gaussian26_vt_const_1_q};

    // i_arrayidx122_gaussian0_mult_multconst_x(CONSTANT,138)
    assign i_arrayidx122_gaussian0_mult_multconst_x_q = $unsigned(4'b0000);

    // redist1_sync_together117_aunroll_x_in_c0_eni18_1_tpl_4_inputreg0(DELAY,517)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together117_aunroll_x_in_c0_eni18_1_tpl_4_inputreg0_q <= $unsigned(in_c0_eni18_1_tpl);
        end
    end

    // redist1_sync_together117_aunroll_x_in_c0_eni18_1_tpl_4(DELAY,451)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together117_aunroll_x_in_c0_eni18_1_tpl_4_delay_0 <= $unsigned(redist1_sync_together117_aunroll_x_in_c0_eni18_1_tpl_4_inputreg0_q);
            redist1_sync_together117_aunroll_x_in_c0_eni18_1_tpl_4_delay_1 <= redist1_sync_together117_aunroll_x_in_c0_eni18_1_tpl_4_delay_0;
            redist1_sync_together117_aunroll_x_in_c0_eni18_1_tpl_4_q <= redist1_sync_together117_aunroll_x_in_c0_eni18_1_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg20(REG,286)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg19(REG,285)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist18_sync_together117_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_i_017_pop938_push28_gaussian0_i_llvm_fpga_push_i32_i_017_pop938_push28_gaussian1_x(FIFODELAY,249)@1 + 8
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_i_017_pop938_push28_gaussian0_i_llvm_fpga_push_i32_i_017_pop938_push28_gaussian1_x_i_stall = ~ (valid_fanout_reg20_q & i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_i_017_pop938_push28_gaussian0_i_llvm_fpga_push_i32_i_017_pop938_push28_gaussian1_x_i_valid = valid_fanout_reg19_q & redist29_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_i_017_pop938_push28_gaussian0_i_llvm_fpga_push_i32_i_017_pop938_push28_gaussian1_x_i_data = i_llvm_fpga_pop_i32_i_017_pop938_pop28_gaussian0_i_llvm_fpga_pop_i32_i_017_pop938_pop28_gaussian15_mux_x_q;
    assign i_llvm_fpga_push_i32_i_017_pop938_push28_gaussian0_i_llvm_fpga_push_i32_i_017_pop938_push28_gaussian1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_i_017_pop938_push28_gaussian0_i_llvm_fpga_push_i32_i_017_pop938_push28_gaussian1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_i_017_pop938_push28_gaussian0_i_llvm_fpga_push_i32_i_017_pop938_push28_gaussian1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_i_017_pop938_push28_gaussian0_i_llvm_fpga_push_i32_i_017_pop938_push28_gaussian1_x_i_stall[0];
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
        .INITIAL_OCCUPANCY(8),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i32_i_017_pop938_push28_gaussian0_i_llvm_fpga_push_i32_i_017_pop938_push28_gaussian1_x (
        .i_valid(i_llvm_fpga_push_i32_i_017_pop938_push28_gaussian0_i_llvm_fpga_push_i32_i_017_pop938_push28_gaussian1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_i_017_pop938_push28_gaussian0_i_llvm_fpga_push_i32_i_017_pop938_push28_gaussian1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_i_017_pop938_pop28_gaussian0_i_llvm_fpga_pop_i32_i_017_pop938_pop28_gaussian15_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_i_017_pop938_push28_gaussian0_i_llvm_fpga_push_i32_i_017_pop938_push28_gaussian1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_017_pop938_pop28_gaussian0_i_llvm_fpga_pop_i32_i_017_pop938_pop28_gaussian15_mux_x(MUX,194)@4
    assign i_llvm_fpga_pop_i32_i_017_pop938_pop28_gaussian0_i_llvm_fpga_pop_i32_i_017_pop938_pop28_gaussian15_mux_x_s = redist57_i_llvm_fpga_forked_gaussian_b7_forked_gaussian3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_i_017_pop938_pop28_gaussian0_i_llvm_fpga_pop_i32_i_017_pop938_pop28_gaussian15_mux_x_s or i_llvm_fpga_push_i32_i_017_pop938_push28_gaussian0_i_llvm_fpga_push_i32_i_017_pop938_push28_gaussian1_x_o_data or redist1_sync_together117_aunroll_x_in_c0_eni18_1_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i32_i_017_pop938_pop28_gaussian0_i_llvm_fpga_pop_i32_i_017_pop938_pop28_gaussian15_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_i_017_pop938_pop28_gaussian0_i_llvm_fpga_pop_i32_i_017_pop938_pop28_gaussian15_mux_x_q = i_llvm_fpga_push_i32_i_017_pop938_push28_gaussian0_i_llvm_fpga_push_i32_i_017_pop938_push28_gaussian1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_i_017_pop938_pop28_gaussian0_i_llvm_fpga_pop_i32_i_017_pop938_pop28_gaussian15_mux_x_q = redist1_sync_together117_aunroll_x_in_c0_eni18_1_tpl_4_q;
            default : i_llvm_fpga_pop_i32_i_017_pop938_pop28_gaussian0_i_llvm_fpga_pop_i32_i_017_pop938_pop28_gaussian15_mux_x_q = 32'b0;
        endcase
    end

    // i_idxprom_gaussian16_sel_x(BITSELECT,183)@4
    assign i_idxprom_gaussian16_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_017_pop938_pop28_gaussian0_i_llvm_fpga_pop_i32_i_017_pop938_pop28_gaussian15_mux_x_q[31:0]};

    // i_idxprom_gaussian16_vt_select_31(BITSELECT,86)@4
    assign i_idxprom_gaussian16_vt_select_31_b = i_idxprom_gaussian16_sel_x_b[31:0];

    // i_idxprom_gaussian16_vt_join(BITJOIN,85)@4
    assign i_idxprom_gaussian16_vt_join_q = {i_idxprom11_gaussian25_vt_const_63_q, i_idxprom_gaussian16_vt_select_31_b};

    // i_arrayidx122_gaussian0_dupName_0_trunc_sel_x(BITSELECT,140)@4
    assign i_arrayidx122_gaussian0_dupName_0_trunc_sel_x_b = i_idxprom_gaussian16_vt_join_q[10:0];

    // addsumAHighB_uid359_i_arrayidx122_gaussian0_mult_x(ADD,358)@4
    assign addsumAHighB_uid359_i_arrayidx122_gaussian0_mult_x_a = {1'b0, i_arrayidx122_gaussian0_dupName_0_trunc_sel_x_b};
    assign addsumAHighB_uid359_i_arrayidx122_gaussian0_mult_x_b = {3'b000, lowRangeB_uid357_i_arrayidx122_gaussian0_mult_x_merged_bit_select_c};
    assign addsumAHighB_uid359_i_arrayidx122_gaussian0_mult_x_o = $unsigned(addsumAHighB_uid359_i_arrayidx122_gaussian0_mult_x_a) + $unsigned(addsumAHighB_uid359_i_arrayidx122_gaussian0_mult_x_b);
    assign addsumAHighB_uid359_i_arrayidx122_gaussian0_mult_x_q = addsumAHighB_uid359_i_arrayidx122_gaussian0_mult_x_o[11:0];

    // lowRangeB_uid357_i_arrayidx122_gaussian0_mult_x_merged_bit_select(BITSELECT,448)@4
    assign lowRangeB_uid357_i_arrayidx122_gaussian0_mult_x_merged_bit_select_b = i_arrayidx122_gaussian0_dupName_0_trunc_sel_x_b[1:0];
    assign lowRangeB_uid357_i_arrayidx122_gaussian0_mult_x_merged_bit_select_c = i_arrayidx122_gaussian0_dupName_0_trunc_sel_x_b[10:2];

    // add_uid360_i_arrayidx122_gaussian0_mult_x(BITJOIN,359)@4
    assign add_uid360_i_arrayidx122_gaussian0_mult_x_q = {addsumAHighB_uid359_i_arrayidx122_gaussian0_mult_x_q, lowRangeB_uid357_i_arrayidx122_gaussian0_mult_x_merged_bit_select_b};

    // sR_mergedSignalTM_uid365_i_arrayidx122_gaussian0_mult_x(BITJOIN,364)@4
    assign sR_mergedSignalTM_uid365_i_arrayidx122_gaussian0_mult_x_q = {add_uid360_i_arrayidx122_gaussian0_mult_x_q, i_arrayidx122_gaussian0_mult_multconst_x_q};

    // i_arrayidx122_gaussian0_mult_extender_x(BITJOIN,137)@4
    assign i_arrayidx122_gaussian0_mult_extender_x_q = {i_arrayidx122_gaussian0_mult_multconst_x_q, sR_mergedSignalTM_uid365_i_arrayidx122_gaussian0_mult_x_q};

    // i_arrayidx122_gaussian0_dupName_1_trunc_sel_x(BITSELECT,141)@4
    assign i_arrayidx122_gaussian0_dupName_1_trunc_sel_x_b = i_arrayidx122_gaussian0_mult_extender_x_q[10:0];

    // redist51_i_arrayidx122_gaussian0_dupName_1_trunc_sel_x_b_3(DELAY,501)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist51_i_arrayidx122_gaussian0_dupName_1_trunc_sel_x_b_3_delay_0 <= $unsigned(i_arrayidx122_gaussian0_dupName_1_trunc_sel_x_b);
            redist51_i_arrayidx122_gaussian0_dupName_1_trunc_sel_x_b_3_delay_1 <= redist51_i_arrayidx122_gaussian0_dupName_1_trunc_sel_x_b_3_delay_0;
            redist51_i_arrayidx122_gaussian0_dupName_1_trunc_sel_x_b_3_q <= redist51_i_arrayidx122_gaussian0_dupName_1_trunc_sel_x_b_3_delay_1;
        end
    end

    // i_arrayidx122_gaussian0_add_x(ADD,121)@7
    assign i_arrayidx122_gaussian0_add_x_a = {1'b0, i_arrayidx122_gaussian0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx122_gaussian0_add_x_b = {1'b0, redist51_i_arrayidx122_gaussian0_dupName_1_trunc_sel_x_b_3_q};
    assign i_arrayidx122_gaussian0_add_x_o = $unsigned(i_arrayidx122_gaussian0_add_x_a) + $unsigned(i_arrayidx122_gaussian0_add_x_b);
    assign i_arrayidx122_gaussian0_add_x_q = i_arrayidx122_gaussian0_add_x_o[11:0];

    // i_arrayidx122_gaussian0_dupName_2_trunc_sel_x(BITSELECT,142)@7
    assign i_arrayidx122_gaussian0_dupName_2_trunc_sel_x_b = i_arrayidx122_gaussian0_add_x_q[10:0];

    // redist50_i_arrayidx122_gaussian0_dupName_2_trunc_sel_x_b_1(DELAY,500)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist50_i_arrayidx122_gaussian0_dupName_2_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx122_gaussian0_dupName_2_trunc_sel_x_b);
        end
    end

    // i_arrayidx122_gaussian0_dupName_0_add_x(ADD,131)@8
    assign i_arrayidx122_gaussian0_dupName_0_add_x_a = {1'b0, redist50_i_arrayidx122_gaussian0_dupName_2_trunc_sel_x_b_1_q};
    assign i_arrayidx122_gaussian0_dupName_0_add_x_b = {1'b0, i_arrayidx122_gaussian0_shift_join_x_q};
    assign i_arrayidx122_gaussian0_dupName_0_add_x_o = $unsigned(i_arrayidx122_gaussian0_dupName_0_add_x_a) + $unsigned(i_arrayidx122_gaussian0_dupName_0_add_x_b);
    assign i_arrayidx122_gaussian0_dupName_0_add_x_q = i_arrayidx122_gaussian0_dupName_0_add_x_o[11:0];

    // i_arrayidx122_gaussian0_dupName_5_trunc_sel_x(BITSELECT,144)@8
    assign i_arrayidx122_gaussian0_dupName_5_trunc_sel_x_b = i_arrayidx122_gaussian0_dupName_0_add_x_q[10:0];

    // i_arrayidx122_gaussian0_append_upper_bits_x(BITJOIN,122)@8
    assign i_arrayidx122_gaussian0_append_upper_bits_x_q = {redist0_i_arrayidx122_gaussian0_upper_bits_x_merged_bit_select_b_1_q, i_arrayidx122_gaussian0_dupName_5_trunc_sel_x_b};

    // i_arrayidx122_gaussian26_vt_select_63(BITSELECT,53)@8
    assign i_arrayidx122_gaussian26_vt_select_63_b = i_arrayidx122_gaussian0_append_upper_bits_x_q[63:2];

    // redist65_i_arrayidx122_gaussian26_vt_select_63_b_5_inputreg0(DELAY,570)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist65_i_arrayidx122_gaussian26_vt_select_63_b_5_inputreg0_q <= $unsigned(i_arrayidx122_gaussian26_vt_select_63_b);
        end
    end

    // redist65_i_arrayidx122_gaussian26_vt_select_63_b_5(DELAY,515)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist65_i_arrayidx122_gaussian26_vt_select_63_b_5_delay_0 <= $unsigned(redist65_i_arrayidx122_gaussian26_vt_select_63_b_5_inputreg0_q);
            redist65_i_arrayidx122_gaussian26_vt_select_63_b_5_delay_1 <= redist65_i_arrayidx122_gaussian26_vt_select_63_b_5_delay_0;
            redist65_i_arrayidx122_gaussian26_vt_select_63_b_5_q <= redist65_i_arrayidx122_gaussian26_vt_select_63_b_5_delay_1;
        end
    end

    // redist65_i_arrayidx122_gaussian26_vt_select_63_b_5_outputreg0(DELAY,571)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist65_i_arrayidx122_gaussian26_vt_select_63_b_5_outputreg0_q <= $unsigned(redist65_i_arrayidx122_gaussian26_vt_select_63_b_5_q);
        end
    end

    // i_arrayidx122_gaussian26_vt_join(BITJOIN,52)@13
    assign i_arrayidx122_gaussian26_vt_join_q = {redist65_i_arrayidx122_gaussian26_vt_select_63_b_5_outputreg0_q, i_arrayidx122_gaussian26_vt_const_1_q};

    // i_llvm_fpga_mem_lm62_gaussian31(BLACKBOX,91)@13
    // in in_i_stall@20000000
    // out out_lm62_gaussian_avm_address@20000000
    // out out_lm62_gaussian_avm_burstcount@20000000
    // out out_lm62_gaussian_avm_byteenable@20000000
    // out out_lm62_gaussian_avm_enable@20000000
    // out out_lm62_gaussian_avm_read@20000000
    // out out_lm62_gaussian_avm_write@20000000
    // out out_lm62_gaussian_avm_writedata@20000000
    // out out_o_readdata@15
    // out out_o_stall@14
    // out out_o_valid@15
    gaussian_i_llvm_fpga_mem_lm62_0 thei_llvm_fpga_mem_lm62_gaussian31 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx122_gaussian26_vt_join_q),
        .in_i_dependence(redist55_i_memdep_phi4_or_gaussian29_q_5_q),
        .in_i_predicate(redist62_i_gaussian_b7_fullexited_or20_gaussian30_q_9_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg12_q),
        .in_lm62_gaussian_avm_readdata(in_lm62_gaussian_avm_readdata),
        .in_lm62_gaussian_avm_readdatavalid(in_lm62_gaussian_avm_readdatavalid),
        .in_lm62_gaussian_avm_waitrequest(in_lm62_gaussian_avm_waitrequest),
        .in_lm62_gaussian_avm_writeack(in_lm62_gaussian_avm_writeack),
        .out_lm62_gaussian_avm_address(i_llvm_fpga_mem_lm62_gaussian31_out_lm62_gaussian_avm_address),
        .out_lm62_gaussian_avm_burstcount(i_llvm_fpga_mem_lm62_gaussian31_out_lm62_gaussian_avm_burstcount),
        .out_lm62_gaussian_avm_byteenable(i_llvm_fpga_mem_lm62_gaussian31_out_lm62_gaussian_avm_byteenable),
        .out_lm62_gaussian_avm_enable(i_llvm_fpga_mem_lm62_gaussian31_out_lm62_gaussian_avm_enable),
        .out_lm62_gaussian_avm_read(i_llvm_fpga_mem_lm62_gaussian31_out_lm62_gaussian_avm_read),
        .out_lm62_gaussian_avm_write(i_llvm_fpga_mem_lm62_gaussian31_out_lm62_gaussian_avm_write),
        .out_lm62_gaussian_avm_writedata(i_llvm_fpga_mem_lm62_gaussian31_out_lm62_gaussian_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm62_gaussian31_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,113)
    assign out_lm62_gaussian_avm_address = i_llvm_fpga_mem_lm62_gaussian31_out_lm62_gaussian_avm_address;
    assign out_lm62_gaussian_avm_enable = i_llvm_fpga_mem_lm62_gaussian31_out_lm62_gaussian_avm_enable;
    assign out_lm62_gaussian_avm_read = i_llvm_fpga_mem_lm62_gaussian31_out_lm62_gaussian_avm_read;
    assign out_lm62_gaussian_avm_write = i_llvm_fpga_mem_lm62_gaussian31_out_lm62_gaussian_avm_write;
    assign out_lm62_gaussian_avm_writedata = i_llvm_fpga_mem_lm62_gaussian31_out_lm62_gaussian_avm_writedata;
    assign out_lm62_gaussian_avm_byteenable = i_llvm_fpga_mem_lm62_gaussian31_out_lm62_gaussian_avm_byteenable;
    assign out_lm62_gaussian_avm_burstcount = i_llvm_fpga_mem_lm62_gaussian31_out_lm62_gaussian_avm_burstcount;

    // dupName_0_regfree_osync_x(GPOUT,114)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going_gaussian8_out_pipeline_dummy_out;

    // valid_fanout_reg14(REG,280)@7 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist22_sync_together117_aunroll_x_in_i_valid_7_q);
        end
    end

    // i_mul_gaussian37_bs3_merged_bit_select(BITSELECT,446)@9
    assign i_mul_gaussian37_bs3_merged_bit_select_b = i_llvm_fpga_mem_lm1_gaussian23_out_o_readdata[31:18];
    assign i_mul_gaussian37_bs3_merged_bit_select_c = i_llvm_fpga_mem_lm1_gaussian23_out_o_readdata[17:0];

    // i_mul_gaussian37_bs1_merged_bit_select(BITSELECT,447)@9
    assign i_mul_gaussian37_bs1_merged_bit_select_b = i_llvm_fpga_mem_lm83_gaussian36_out_o_readdata[31:18];
    assign i_mul_gaussian37_bs1_merged_bit_select_c = i_llvm_fpga_mem_lm83_gaussian36_out_o_readdata[17:0];

    // i_mul_gaussian37_ma5_cma(CHAINMULTADD,443)@9 + 5
    // out q@15
    assign i_mul_gaussian37_ma5_cma_reset = ~ (resetn);
    assign i_mul_gaussian37_ma5_cma_ena0 = 1'b1;
    assign i_mul_gaussian37_ma5_cma_ena1 = i_mul_gaussian37_ma5_cma_ena0;
    assign i_mul_gaussian37_ma5_cma_ena2 = i_mul_gaussian37_ma5_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_gaussian37_ma5_cma_ah[0] <= i_mul_gaussian37_bs1_merged_bit_select_b;
            i_mul_gaussian37_ma5_cma_ah[1] <= i_mul_gaussian37_bs3_merged_bit_select_b;
            i_mul_gaussian37_ma5_cma_ch[0] <= i_mul_gaussian37_bs3_merged_bit_select_c;
            i_mul_gaussian37_ma5_cma_ch[1] <= i_mul_gaussian37_bs1_merged_bit_select_c;
        end
    end

    assign i_mul_gaussian37_ma5_cma_a0 = i_mul_gaussian37_ma5_cma_ah[0];
    assign i_mul_gaussian37_ma5_cma_c0 = i_mul_gaussian37_ma5_cma_ch[0];
    assign i_mul_gaussian37_ma5_cma_a1 = i_mul_gaussian37_ma5_cma_ah[1];
    assign i_mul_gaussian37_ma5_cma_c1 = i_mul_gaussian37_ma5_cma_ch[1];
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
    ) i_mul_gaussian37_ma5_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_gaussian37_ma5_cma_ena2, i_mul_gaussian37_ma5_cma_ena1, i_mul_gaussian37_ma5_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_gaussian37_ma5_cma_a1),
        .by(i_mul_gaussian37_ma5_cma_a0),
        .ax(i_mul_gaussian37_ma5_cma_c1),
        .bx(i_mul_gaussian37_ma5_cma_c0),
        .resulta(i_mul_gaussian37_ma5_cma_s0),
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
    i_mul_gaussian37_ma5_cma_delay ( .xin(i_mul_gaussian37_ma5_cma_s0), .xout(i_mul_gaussian37_ma5_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_gaussian37_ma5_cma_q = $unsigned(i_mul_gaussian37_ma5_cma_qq[32:0]);

    // i_mul_gaussian37_sums_align_1(BITSHIFT,346)@15
    assign i_mul_gaussian37_sums_align_1_qint = { i_mul_gaussian37_ma5_cma_q, 18'b000000000000000000 };
    assign i_mul_gaussian37_sums_align_1_q = i_mul_gaussian37_sums_align_1_qint[50:0];

    // i_mul_gaussian37_bjB4(BITJOIN,336)@9
    assign i_mul_gaussian37_bjB4_q = {GND_q, i_mul_gaussian37_bs3_merged_bit_select_b};

    // i_mul_gaussian37_bjA2(BITJOIN,334)@9
    assign i_mul_gaussian37_bjA2_q = {GND_q, i_mul_gaussian37_bs1_merged_bit_select_b};

    // i_mul_gaussian37_im0_cma(CHAINMULTADD,441)@9 + 5
    // out q@15
    assign i_mul_gaussian37_im0_cma_reset = ~ (resetn);
    assign i_mul_gaussian37_im0_cma_ena0 = 1'b1;
    assign i_mul_gaussian37_im0_cma_ena1 = i_mul_gaussian37_im0_cma_ena0;
    assign i_mul_gaussian37_im0_cma_ena2 = i_mul_gaussian37_im0_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_gaussian37_im0_cma_ah[0] <= i_mul_gaussian37_bjA2_q;
            i_mul_gaussian37_im0_cma_ch[0] <= i_mul_gaussian37_bjB4_q;
        end
    end

    assign i_mul_gaussian37_im0_cma_a0 = $unsigned(i_mul_gaussian37_im0_cma_ah[0]);
    assign i_mul_gaussian37_im0_cma_c0 = $unsigned(i_mul_gaussian37_im0_cma_ch[0]);
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
    ) i_mul_gaussian37_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_gaussian37_im0_cma_ena2, i_mul_gaussian37_im0_cma_ena1, i_mul_gaussian37_im0_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_gaussian37_im0_cma_a0),
        .ax(i_mul_gaussian37_im0_cma_c0),
        .resulta(i_mul_gaussian37_im0_cma_s0),
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
    i_mul_gaussian37_im0_cma_delay ( .xin(i_mul_gaussian37_im0_cma_s0), .xout(i_mul_gaussian37_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_gaussian37_im0_cma_q = $unsigned(i_mul_gaussian37_im0_cma_qq[29:0]);

    // i_mul_gaussian37_im10_cma(CHAINMULTADD,442)@9 + 5
    // out q@15
    assign i_mul_gaussian37_im10_cma_reset = ~ (resetn);
    assign i_mul_gaussian37_im10_cma_ena0 = 1'b1;
    assign i_mul_gaussian37_im10_cma_ena1 = i_mul_gaussian37_im10_cma_ena0;
    assign i_mul_gaussian37_im10_cma_ena2 = i_mul_gaussian37_im10_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_gaussian37_im10_cma_ah[0] <= i_mul_gaussian37_bs1_merged_bit_select_c;
            i_mul_gaussian37_im10_cma_ch[0] <= i_mul_gaussian37_bs3_merged_bit_select_c;
        end
    end

    assign i_mul_gaussian37_im10_cma_a0 = i_mul_gaussian37_im10_cma_ah[0];
    assign i_mul_gaussian37_im10_cma_c0 = i_mul_gaussian37_im10_cma_ch[0];
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
    ) i_mul_gaussian37_im10_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_gaussian37_im10_cma_ena2, i_mul_gaussian37_im10_cma_ena1, i_mul_gaussian37_im10_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_gaussian37_im10_cma_a0),
        .ax(i_mul_gaussian37_im10_cma_c0),
        .resulta(i_mul_gaussian37_im10_cma_s0),
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
    i_mul_gaussian37_im10_cma_delay ( .xin(i_mul_gaussian37_im10_cma_s0), .xout(i_mul_gaussian37_im10_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_gaussian37_im10_cma_q = $unsigned(i_mul_gaussian37_im10_cma_qq[35:0]);

    // i_mul_gaussian37_sums_join_0(BITJOIN,345)@15
    assign i_mul_gaussian37_sums_join_0_q = {i_mul_gaussian37_im0_cma_q, i_mul_gaussian37_im10_cma_q};

    // i_mul_gaussian37_sums_result_add_0_0(ADD,348)@15
    assign i_mul_gaussian37_sums_result_add_0_0_a = {1'b0, i_mul_gaussian37_sums_join_0_q};
    assign i_mul_gaussian37_sums_result_add_0_0_b = {16'b0000000000000000, i_mul_gaussian37_sums_align_1_q};
    assign i_mul_gaussian37_sums_result_add_0_0_o = $unsigned(i_mul_gaussian37_sums_result_add_0_0_a) + $unsigned(i_mul_gaussian37_sums_result_add_0_0_b);
    assign i_mul_gaussian37_sums_result_add_0_0_q = i_mul_gaussian37_sums_result_add_0_0_o[66:0];

    // bgTrunc_i_mul_gaussian37_sel_x(BITSELECT,109)@15
    assign bgTrunc_i_mul_gaussian37_sel_x_in = i_mul_gaussian37_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul_gaussian37_sel_x_b = bgTrunc_i_mul_gaussian37_sel_x_in[31:0];

    // i_sub_gaussian38(SUB,100)@15
    assign i_sub_gaussian38_a = {1'b0, i_llvm_fpga_mem_lm62_gaussian31_out_o_readdata};
    assign i_sub_gaussian38_b = {1'b0, bgTrunc_i_mul_gaussian37_sel_x_b};
    assign i_sub_gaussian38_o = $unsigned(i_sub_gaussian38_a) - $unsigned(i_sub_gaussian38_b);
    assign i_sub_gaussian38_q = i_sub_gaussian38_o[32:0];

    // bgTrunc_i_sub_gaussian38_sel_x(BITSELECT,110)@15
    assign bgTrunc_i_sub_gaussian38_sel_x_b = $unsigned(i_sub_gaussian38_q[31:0]);

    // valid_fanout_reg15(REG,281)@14 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist26_sync_together117_aunroll_x_in_i_valid_14_q);
        end
    end

    // redist63_i_gaussian_b7_fullexited_or20_gaussian30_q_11(DELAY,513)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist63_i_gaussian_b7_fullexited_or20_gaussian30_q_11_delay_0 <= $unsigned(redist62_i_gaussian_b7_fullexited_or20_gaussian30_q_9_q);
            redist63_i_gaussian_b7_fullexited_or20_gaussian30_q_11_q <= redist63_i_gaussian_b7_fullexited_or20_gaussian30_q_11_delay_0;
        end
    end

    // redist66_i_arrayidx122_gaussian26_vt_join_q_2(DELAY,516)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist66_i_arrayidx122_gaussian26_vt_join_q_2_delay_0 <= $unsigned(i_arrayidx122_gaussian26_vt_join_q);
            redist66_i_arrayidx122_gaussian26_vt_join_q_2_q <= redist66_i_arrayidx122_gaussian26_vt_join_q_2_delay_0;
        end
    end

    // i_llvm_fpga_mem_memdep_gaussian40(BLACKBOX,93)@15
    // out out_memdep_gaussian_avm_address@20000000
    // out out_memdep_gaussian_avm_burstcount@20000000
    // out out_memdep_gaussian_avm_byteenable@20000000
    // out out_memdep_gaussian_avm_enable@20000000
    // out out_memdep_gaussian_avm_read@20000000
    // out out_memdep_gaussian_avm_write@20000000
    // out out_memdep_gaussian_avm_writedata@20000000
    // out out_o_stall@16
    // out out_o_valid@16
    // out out_o_writeack@16
    gaussian_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_gaussian40 (
        .in_flush(in_flush),
        .in_i_address(redist66_i_arrayidx122_gaussian26_vt_join_q_2_q),
        .in_i_predicate(redist63_i_gaussian_b7_fullexited_or20_gaussian30_q_11_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg15_q),
        .in_i_writedata(bgTrunc_i_sub_gaussian38_sel_x_b),
        .in_memdep_gaussian_avm_readdata(in_memdep_gaussian_avm_readdata),
        .in_memdep_gaussian_avm_readdatavalid(in_memdep_gaussian_avm_readdatavalid),
        .in_memdep_gaussian_avm_waitrequest(in_memdep_gaussian_avm_waitrequest),
        .in_memdep_gaussian_avm_writeack(in_memdep_gaussian_avm_writeack),
        .out_memdep_gaussian_avm_address(i_llvm_fpga_mem_memdep_gaussian40_out_memdep_gaussian_avm_address),
        .out_memdep_gaussian_avm_burstcount(i_llvm_fpga_mem_memdep_gaussian40_out_memdep_gaussian_avm_burstcount),
        .out_memdep_gaussian_avm_byteenable(i_llvm_fpga_mem_memdep_gaussian40_out_memdep_gaussian_avm_byteenable),
        .out_memdep_gaussian_avm_enable(i_llvm_fpga_mem_memdep_gaussian40_out_memdep_gaussian_avm_enable),
        .out_memdep_gaussian_avm_read(i_llvm_fpga_mem_memdep_gaussian40_out_memdep_gaussian_avm_read),
        .out_memdep_gaussian_avm_write(i_llvm_fpga_mem_memdep_gaussian40_out_memdep_gaussian_avm_write),
        .out_memdep_gaussian_avm_writedata(i_llvm_fpga_mem_memdep_gaussian40_out_memdep_gaussian_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(i_llvm_fpga_mem_memdep_gaussian40_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian0_element_extension2_x(BITJOIN,218)@16
    assign i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian0_element_extension2_x_q = {i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_c_i7_03_x_q, i_llvm_fpga_mem_memdep_gaussian40_out_o_writeack};

    // valid_fanout_reg28(REG,294)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg28_q <= $unsigned(redist20_sync_together117_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg27(REG,293)@14 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg27_q <= $unsigned(redist26_sync_together117_aunroll_x_in_i_valid_14_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian0_i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian1_x(FIFODELAY,219)@5
    // in i_valid@15
    // in i_write_pred@15
    // in i_data@16
    // out o_data@8
    assign i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian0_i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian1_x_i_stall = ~ (valid_fanout_reg28_q & redist31_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_4_q);
    assign i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian0_i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian1_x_i_valid = valid_fanout_reg27_q & redist35_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_14_q;
    assign i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian0_i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian1_x_i_data = i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian0_i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian0_i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian0_i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian0_i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(8),
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
        .INITIAL_OCCUPANCY(8),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i1_memdep_phi5_push19_gaussian0_i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian1_x (
        .i_valid(i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian0_i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian0_i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian0_i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian0_adapt_scalar_trunc4_sel_x(BITSELECT,221)@8
    assign i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian0_i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_memdep_phi5_pop19_gaussian0_i_llvm_fpga_pop_i1_memdep_phi5_pop19_gaussian33_mux_x(MUX,187)@8
    assign i_llvm_fpga_pop_i1_memdep_phi5_pop19_gaussian0_i_llvm_fpga_pop_i1_memdep_phi5_pop19_gaussian33_mux_x_s = redist58_i_llvm_fpga_forked_gaussian_b7_forked_gaussian3_out_buffer_out_8_q;
    always @(i_llvm_fpga_pop_i1_memdep_phi5_pop19_gaussian0_i_llvm_fpga_pop_i1_memdep_phi5_pop19_gaussian33_mux_x_s or i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian0_adapt_scalar_trunc4_sel_x_b or GND_q)
    begin
        unique case (i_llvm_fpga_pop_i1_memdep_phi5_pop19_gaussian0_i_llvm_fpga_pop_i1_memdep_phi5_pop19_gaussian33_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_memdep_phi5_pop19_gaussian0_i_llvm_fpga_pop_i1_memdep_phi5_pop19_gaussian33_mux_x_q = i_llvm_fpga_push_i1_memdep_phi5_push19_gaussian0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_memdep_phi5_pop19_gaussian0_i_llvm_fpga_pop_i1_memdep_phi5_pop19_gaussian33_mux_x_q = GND_q;
            default : i_llvm_fpga_pop_i1_memdep_phi5_pop19_gaussian0_i_llvm_fpga_pop_i1_memdep_phi5_pop19_gaussian33_mux_x_q = 1'b0;
        endcase
    end

    // i_reduction_gaussian_1_gaussian34(LOGICAL,99)@8
    assign i_reduction_gaussian_1_gaussian34_q = i_llvm_fpga_pop_i1_memdep_phi5_pop19_gaussian0_i_llvm_fpga_pop_i1_memdep_phi5_pop19_gaussian33_mux_x_q | i_memdep_phi4_or_gaussian29_q;

    // i_arrayidx183_gaussian0_dupName_0_trunc_sel_x(BITSELECT,176)@4
    assign i_arrayidx183_gaussian0_dupName_0_trunc_sel_x_b = i_idxprom13_gaussian20_vt_join_q[10:0];

    // addsumAHighB_uid405_i_arrayidx183_gaussian0_mult_x(ADD,404)@4
    assign addsumAHighB_uid405_i_arrayidx183_gaussian0_mult_x_a = {1'b0, i_arrayidx183_gaussian0_dupName_0_trunc_sel_x_b};
    assign addsumAHighB_uid405_i_arrayidx183_gaussian0_mult_x_b = {3'b000, lowRangeB_uid403_i_arrayidx183_gaussian0_mult_x_merged_bit_select_c};
    assign addsumAHighB_uid405_i_arrayidx183_gaussian0_mult_x_o = $unsigned(addsumAHighB_uid405_i_arrayidx183_gaussian0_mult_x_a) + $unsigned(addsumAHighB_uid405_i_arrayidx183_gaussian0_mult_x_b);
    assign addsumAHighB_uid405_i_arrayidx183_gaussian0_mult_x_q = addsumAHighB_uid405_i_arrayidx183_gaussian0_mult_x_o[11:0];

    // lowRangeB_uid403_i_arrayidx183_gaussian0_mult_x_merged_bit_select(BITSELECT,449)@4
    assign lowRangeB_uid403_i_arrayidx183_gaussian0_mult_x_merged_bit_select_b = i_arrayidx183_gaussian0_dupName_0_trunc_sel_x_b[1:0];
    assign lowRangeB_uid403_i_arrayidx183_gaussian0_mult_x_merged_bit_select_c = i_arrayidx183_gaussian0_dupName_0_trunc_sel_x_b[10:2];

    // add_uid406_i_arrayidx183_gaussian0_mult_x(BITJOIN,405)@4
    assign add_uid406_i_arrayidx183_gaussian0_mult_x_q = {addsumAHighB_uid405_i_arrayidx183_gaussian0_mult_x_q, lowRangeB_uid403_i_arrayidx183_gaussian0_mult_x_merged_bit_select_b};

    // sR_mergedSignalTM_uid411_i_arrayidx183_gaussian0_mult_x(BITJOIN,410)@4
    assign sR_mergedSignalTM_uid411_i_arrayidx183_gaussian0_mult_x_q = {add_uid406_i_arrayidx183_gaussian0_mult_x_q, i_arrayidx122_gaussian0_mult_multconst_x_q};

    // i_arrayidx183_gaussian0_mult_extender_x(BITJOIN,173)@4
    assign i_arrayidx183_gaussian0_mult_extender_x_q = {i_arrayidx122_gaussian0_mult_multconst_x_q, sR_mergedSignalTM_uid411_i_arrayidx183_gaussian0_mult_x_q};

    // i_arrayidx183_gaussian0_dupName_1_trunc_sel_x(BITSELECT,177)@4
    assign i_arrayidx183_gaussian0_dupName_1_trunc_sel_x_b = i_arrayidx183_gaussian0_mult_extender_x_q[10:0];

    // redist49_i_arrayidx183_gaussian0_dupName_1_trunc_sel_x_b_3(DELAY,499)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist49_i_arrayidx183_gaussian0_dupName_1_trunc_sel_x_b_3_delay_0 <= $unsigned(i_arrayidx183_gaussian0_dupName_1_trunc_sel_x_b);
            redist49_i_arrayidx183_gaussian0_dupName_1_trunc_sel_x_b_3_delay_1 <= redist49_i_arrayidx183_gaussian0_dupName_1_trunc_sel_x_b_3_delay_0;
            redist49_i_arrayidx183_gaussian0_dupName_1_trunc_sel_x_b_3_q <= redist49_i_arrayidx183_gaussian0_dupName_1_trunc_sel_x_b_3_delay_1;
        end
    end

    // i_arrayidx183_gaussian0_add_x(ADD,157)@7
    assign i_arrayidx183_gaussian0_add_x_a = {1'b0, i_arrayidx122_gaussian0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx183_gaussian0_add_x_b = {1'b0, redist49_i_arrayidx183_gaussian0_dupName_1_trunc_sel_x_b_3_q};
    assign i_arrayidx183_gaussian0_add_x_o = $unsigned(i_arrayidx183_gaussian0_add_x_a) + $unsigned(i_arrayidx183_gaussian0_add_x_b);
    assign i_arrayidx183_gaussian0_add_x_q = i_arrayidx183_gaussian0_add_x_o[11:0];

    // i_arrayidx183_gaussian0_dupName_2_trunc_sel_x(BITSELECT,178)@7
    assign i_arrayidx183_gaussian0_dupName_2_trunc_sel_x_b = i_arrayidx183_gaussian0_add_x_q[10:0];

    // redist48_i_arrayidx183_gaussian0_dupName_2_trunc_sel_x_b_1(DELAY,498)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist48_i_arrayidx183_gaussian0_dupName_2_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx183_gaussian0_dupName_2_trunc_sel_x_b);
        end
    end

    // i_arrayidx183_gaussian0_dupName_0_add_x(ADD,167)@8
    assign i_arrayidx183_gaussian0_dupName_0_add_x_a = {1'b0, redist48_i_arrayidx183_gaussian0_dupName_2_trunc_sel_x_b_1_q};
    assign i_arrayidx183_gaussian0_dupName_0_add_x_b = {1'b0, i_arrayidx122_gaussian0_shift_join_x_q};
    assign i_arrayidx183_gaussian0_dupName_0_add_x_o = $unsigned(i_arrayidx183_gaussian0_dupName_0_add_x_a) + $unsigned(i_arrayidx183_gaussian0_dupName_0_add_x_b);
    assign i_arrayidx183_gaussian0_dupName_0_add_x_q = i_arrayidx183_gaussian0_dupName_0_add_x_o[11:0];

    // i_arrayidx183_gaussian0_dupName_5_trunc_sel_x(BITSELECT,180)@8
    assign i_arrayidx183_gaussian0_dupName_5_trunc_sel_x_b = i_arrayidx183_gaussian0_dupName_0_add_x_q[10:0];

    // i_arrayidx183_gaussian0_append_upper_bits_x(BITJOIN,158)@8
    assign i_arrayidx183_gaussian0_append_upper_bits_x_q = {redist0_i_arrayidx122_gaussian0_upper_bits_x_merged_bit_select_b_1_q, i_arrayidx183_gaussian0_dupName_5_trunc_sel_x_b};

    // i_arrayidx183_gaussian32_vt_select_63(BITSELECT,59)@8
    assign i_arrayidx183_gaussian32_vt_select_63_b = i_arrayidx183_gaussian0_append_upper_bits_x_q[63:2];

    // i_arrayidx183_gaussian32_vt_join(BITJOIN,58)@8
    assign i_arrayidx183_gaussian32_vt_join_q = {i_arrayidx183_gaussian32_vt_select_63_b, i_arrayidx122_gaussian26_vt_const_1_q};

    // i_llvm_fpga_mem_lm83_gaussian36(BLACKBOX,92)@8
    // in in_i_stall@20000000
    // out out_lm83_gaussian_avm_address@20000000
    // out out_lm83_gaussian_avm_burstcount@20000000
    // out out_lm83_gaussian_avm_byteenable@20000000
    // out out_lm83_gaussian_avm_enable@20000000
    // out out_lm83_gaussian_avm_read@20000000
    // out out_lm83_gaussian_avm_write@20000000
    // out out_lm83_gaussian_avm_writedata@20000000
    // out out_o_readdata@9
    // out out_o_stall@9
    // out out_o_valid@9
    gaussian_i_llvm_fpga_mem_lm83_0 thei_llvm_fpga_mem_lm83_gaussian36 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx183_gaussian32_vt_join_q),
        .in_i_dependence(i_reduction_gaussian_1_gaussian34_q),
        .in_i_predicate(redist61_i_gaussian_b7_fullexited_or20_gaussian30_q_4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg14_q),
        .in_lm83_gaussian_avm_readdata(in_lm83_gaussian_avm_readdata),
        .in_lm83_gaussian_avm_readdatavalid(in_lm83_gaussian_avm_readdatavalid),
        .in_lm83_gaussian_avm_waitrequest(in_lm83_gaussian_avm_waitrequest),
        .in_lm83_gaussian_avm_writeack(in_lm83_gaussian_avm_writeack),
        .out_lm83_gaussian_avm_address(i_llvm_fpga_mem_lm83_gaussian36_out_lm83_gaussian_avm_address),
        .out_lm83_gaussian_avm_burstcount(i_llvm_fpga_mem_lm83_gaussian36_out_lm83_gaussian_avm_burstcount),
        .out_lm83_gaussian_avm_byteenable(i_llvm_fpga_mem_lm83_gaussian36_out_lm83_gaussian_avm_byteenable),
        .out_lm83_gaussian_avm_enable(i_llvm_fpga_mem_lm83_gaussian36_out_lm83_gaussian_avm_enable),
        .out_lm83_gaussian_avm_read(i_llvm_fpga_mem_lm83_gaussian36_out_lm83_gaussian_avm_read),
        .out_lm83_gaussian_avm_write(i_llvm_fpga_mem_lm83_gaussian36_out_lm83_gaussian_avm_write),
        .out_lm83_gaussian_avm_writedata(i_llvm_fpga_mem_lm83_gaussian36_out_lm83_gaussian_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm83_gaussian36_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,116)
    assign out_lm83_gaussian_avm_address = i_llvm_fpga_mem_lm83_gaussian36_out_lm83_gaussian_avm_address;
    assign out_lm83_gaussian_avm_enable = i_llvm_fpga_mem_lm83_gaussian36_out_lm83_gaussian_avm_enable;
    assign out_lm83_gaussian_avm_read = i_llvm_fpga_mem_lm83_gaussian36_out_lm83_gaussian_avm_read;
    assign out_lm83_gaussian_avm_write = i_llvm_fpga_mem_lm83_gaussian36_out_lm83_gaussian_avm_write;
    assign out_lm83_gaussian_avm_writedata = i_llvm_fpga_mem_lm83_gaussian36_out_lm83_gaussian_avm_writedata;
    assign out_lm83_gaussian_avm_byteenable = i_llvm_fpga_mem_lm83_gaussian36_out_lm83_gaussian_avm_byteenable;
    assign out_lm83_gaussian_avm_burstcount = i_llvm_fpga_mem_lm83_gaussian36_out_lm83_gaussian_avm_burstcount;

    // dupName_1_regfree_osync_x(GPOUT,117)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going_gaussian8_out_pipeline_forked_out;

    // dupName_2_ext_sig_sync_out_x(GPOUT,119)
    assign out_memdep_gaussian_avm_address = i_llvm_fpga_mem_memdep_gaussian40_out_memdep_gaussian_avm_address;
    assign out_memdep_gaussian_avm_enable = i_llvm_fpga_mem_memdep_gaussian40_out_memdep_gaussian_avm_enable;
    assign out_memdep_gaussian_avm_read = i_llvm_fpga_mem_memdep_gaussian40_out_memdep_gaussian_avm_read;
    assign out_memdep_gaussian_avm_write = i_llvm_fpga_mem_memdep_gaussian40_out_memdep_gaussian_avm_write;
    assign out_memdep_gaussian_avm_writedata = i_llvm_fpga_mem_memdep_gaussian40_out_memdep_gaussian_avm_writedata;
    assign out_memdep_gaussian_avm_byteenable = i_llvm_fpga_mem_memdep_gaussian40_out_memdep_gaussian_avm_byteenable;
    assign out_memdep_gaussian_avm_burstcount = i_llvm_fpga_mem_memdep_gaussian40_out_memdep_gaussian_avm_burstcount;

    // dupName_2_regfree_osync_x(GPOUT,120)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_gaussian8_out_pipeline_valid_out;

    // redist27_sync_together117_aunroll_x_in_i_valid_15(DELAY,477)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist27_sync_together117_aunroll_x_in_i_valid_15_q <= '0;
        end
        else
        begin
            redist27_sync_together117_aunroll_x_in_i_valid_15_q <= $unsigned(redist26_sync_together117_aunroll_x_in_i_valid_14_q);
        end
    end

    // redist28_sync_together117_aunroll_x_in_i_valid_16(DELAY,478)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist28_sync_together117_aunroll_x_in_i_valid_16_q <= $unsigned(redist27_sync_together117_aunroll_x_in_i_valid_15_q);
        end
    end

    // valid_fanout_reg0(REG,266)@15 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist27_sync_together117_aunroll_x_in_i_valid_15_q);
        end
    end

    // redist17_sync_together117_aunroll_x_in_c0_eni18_18_tpl_16(DELAY,467)
    dspba_delay_ver #( .width(1), .depth(16), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist17_sync_together117_aunroll_x_in_c0_eni18_18_tpl_16 ( .xin(in_c0_eni18_18_tpl), .xout(redist17_sync_together117_aunroll_x_in_c0_eni18_18_tpl_16_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_offset(CONSTANT,526)
    assign redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_offset_q = $unsigned(4'b0101);

    // redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_rdcnt(ADD,551)
    assign redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_rdcnt_a = {1'b0, redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_wraddr_q};
    assign redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_rdcnt_b = {1'b0, redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_rdcnt_o <= $unsigned(redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_rdcnt_a) + $unsigned(redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_rdcnt_b);
        end
    end
    assign redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_rdcnt_q = redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_rdcnt_o[4:0];

    // redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_inputreg0(DELAY,546)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_inputreg0_q <= $unsigned(in_c0_eni18_17_tpl);
        end
    end

    // redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_wraddr(COUNTER,549)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_wraddr_i <= $unsigned(redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_wraddr_q = redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_wraddr_i[3:0];

    // redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_mem(DUALMEM,548)
    assign redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_mem_ia = $unsigned(redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_inputreg0_q);
    assign redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_mem_aa = redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_wraddr_q;
    assign redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_mem_ab = redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_rdcnt_q[3:0];
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
    ) redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_mem_aa),
        .data_a(redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_mem_ab),
        .q_b(redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_mem_iq),
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
    assign redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_mem_q = redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_mem_iq[31:0];

    // redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_outputreg0(DELAY,547)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_outputreg0_q <= $unsigned(redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_mem_q);
        end
    end

    // redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_rdcnt(ADD,545)
    assign redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_rdcnt_a = {1'b0, redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_wraddr_q};
    assign redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_rdcnt_b = {1'b0, redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_rdcnt_o <= $unsigned(redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_rdcnt_a) + $unsigned(redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_rdcnt_b);
        end
    end
    assign redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_rdcnt_q = redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_rdcnt_o[4:0];

    // redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_inputreg0(DELAY,540)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_inputreg0_q <= $unsigned(in_c0_eni18_16_tpl);
        end
    end

    // redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_wraddr(COUNTER,543)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_wraddr_i <= $unsigned(redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_wraddr_q = redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_wraddr_i[3:0];

    // redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_mem(DUALMEM,542)
    assign redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_mem_ia = $unsigned(redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_inputreg0_q);
    assign redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_mem_aa = redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_wraddr_q;
    assign redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_mem_ab = redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_rdcnt_q[3:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(33),
        .widthad_a(4),
        .numwords_a(16),
        .width_b(33),
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
    ) redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_mem_aa),
        .data_a(redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_mem_ab),
        .q_b(redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_mem_iq),
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
    assign redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_mem_q = redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_mem_iq[32:0];

    // redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_outputreg0(DELAY,541)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_outputreg0_q <= $unsigned(redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_mem_q);
        end
    end

    // redist14_sync_together117_aunroll_x_in_c0_eni18_15_tpl_16(DELAY,464)
    dspba_delay_ver #( .width(1), .depth(16), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist14_sync_together117_aunroll_x_in_c0_eni18_15_tpl_16 ( .xin(in_c0_eni18_15_tpl), .xout(redist14_sync_together117_aunroll_x_in_c0_eni18_15_tpl_16_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_rdcnt(ADD,539)
    assign redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_rdcnt_a = {1'b0, redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_wraddr_q};
    assign redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_rdcnt_b = {1'b0, redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_rdcnt_o <= $unsigned(redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_rdcnt_a) + $unsigned(redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_rdcnt_b);
        end
    end
    assign redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_rdcnt_q = redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_rdcnt_o[4:0];

    // redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_inputreg0(DELAY,534)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_inputreg0_q <= $unsigned(in_c0_eni18_14_tpl);
        end
    end

    // redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_wraddr(COUNTER,537)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_wraddr_i <= $unsigned(redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_wraddr_q = redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_wraddr_i[3:0];

    // redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_mem(DUALMEM,536)
    assign redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_mem_ia = $unsigned(redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_inputreg0_q);
    assign redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_mem_aa = redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_wraddr_q;
    assign redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_mem_ab = redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_rdcnt_q[3:0];
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
    ) redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_mem_aa),
        .data_a(redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_mem_ab),
        .q_b(redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_mem_iq),
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
    assign redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_mem_q = redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_mem_iq[31:0];

    // redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_outputreg0(DELAY,535)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_outputreg0_q <= $unsigned(redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_mem_q);
        end
    end

    // redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_rdcnt(ADD,533)
    assign redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_rdcnt_a = {1'b0, redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_wraddr_q};
    assign redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_rdcnt_b = {1'b0, redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_rdcnt_o <= $unsigned(redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_rdcnt_a) + $unsigned(redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_rdcnt_b);
        end
    end
    assign redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_rdcnt_q = redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_rdcnt_o[4:0];

    // redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_inputreg0(DELAY,528)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_inputreg0_q <= $unsigned(in_c0_eni18_13_tpl);
        end
    end

    // redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_wraddr(COUNTER,531)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_wraddr_i <= $unsigned(redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_wraddr_q = redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_wraddr_i[3:0];

    // redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_mem(DUALMEM,530)
    assign redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_mem_ia = $unsigned(redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_inputreg0_q);
    assign redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_mem_aa = redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_wraddr_q;
    assign redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_mem_ab = redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_rdcnt_q[3:0];
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
    ) redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_mem_aa),
        .data_a(redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_mem_ab),
        .q_b(redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_mem_iq),
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
    assign redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_mem_q = redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_mem_iq[31:0];

    // redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_outputreg0(DELAY,529)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_outputreg0_q <= $unsigned(redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_mem_q);
        end
    end

    // redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_rdcnt(ADD,527)
    assign redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_rdcnt_a = {1'b0, redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_wraddr_q};
    assign redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_rdcnt_b = {1'b0, redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_rdcnt_o <= $unsigned(redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_rdcnt_a) + $unsigned(redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_rdcnt_b);
        end
    end
    assign redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_rdcnt_q = redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_rdcnt_o[4:0];

    // redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_inputreg0(DELAY,522)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_inputreg0_q <= $unsigned(in_c0_eni18_12_tpl);
        end
    end

    // redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_wraddr(COUNTER,525)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_wraddr_i <= $unsigned(redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_wraddr_q = redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_wraddr_i[3:0];

    // redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_mem(DUALMEM,524)
    assign redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_mem_ia = $unsigned(redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_inputreg0_q);
    assign redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_mem_aa = redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_wraddr_q;
    assign redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_mem_ab = redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_rdcnt_q[3:0];
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
    ) redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_mem_aa),
        .data_a(redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_mem_ab),
        .q_b(redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_mem_iq),
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
    assign redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_mem_q = redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_mem_iq[31:0];

    // redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_outputreg0(DELAY,523)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_outputreg0_q <= $unsigned(redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_mem_q);
        end
    end

    // redist10_sync_together117_aunroll_x_in_c0_eni18_11_tpl_4(DELAY,460)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_sync_together117_aunroll_x_in_c0_eni18_11_tpl_4_delay_0 <= $unsigned(in_c0_eni18_11_tpl);
            redist10_sync_together117_aunroll_x_in_c0_eni18_11_tpl_4_delay_1 <= redist10_sync_together117_aunroll_x_in_c0_eni18_11_tpl_4_delay_0;
            redist10_sync_together117_aunroll_x_in_c0_eni18_11_tpl_4_delay_2 <= redist10_sync_together117_aunroll_x_in_c0_eni18_11_tpl_4_delay_1;
            redist10_sync_together117_aunroll_x_in_c0_eni18_11_tpl_4_q <= redist10_sync_together117_aunroll_x_in_c0_eni18_11_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_notcmp1437_push27_gaussian0_element_extension2_x(BITJOIN,230)@12
    assign i_llvm_fpga_push_i1_notcmp1437_push27_gaussian0_element_extension2_x_q = {i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_c_i7_03_x_q, redist42_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian0_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian66_mux_x_q_8_q};

    // valid_fanout_reg48(REG,314)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg48_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg47(REG,313)@10 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg47_q <= $unsigned(redist24_sync_together117_aunroll_x_in_i_valid_10_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp1437_push27_gaussian0_i_llvm_fpga_push_i1_notcmp1437_push27_gaussian1_x(FIFODELAY,231)@1
    // in i_valid@11
    // in i_write_pred@11
    // in i_data@12
    // out o_data@4
    assign i_llvm_fpga_push_i1_notcmp1437_push27_gaussian0_i_llvm_fpga_push_i1_notcmp1437_push27_gaussian1_x_i_stall = ~ (valid_fanout_reg48_q & i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_notcmp1437_push27_gaussian0_i_llvm_fpga_push_i1_notcmp1437_push27_gaussian1_x_i_valid = valid_fanout_reg47_q & redist34_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_10_q;
    assign i_llvm_fpga_push_i1_notcmp1437_push27_gaussian0_i_llvm_fpga_push_i1_notcmp1437_push27_gaussian1_x_i_data = i_llvm_fpga_push_i1_notcmp1437_push27_gaussian0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_notcmp1437_push27_gaussian0_i_llvm_fpga_push_i1_notcmp1437_push27_gaussian1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_notcmp1437_push27_gaussian0_i_llvm_fpga_push_i1_notcmp1437_push27_gaussian1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_notcmp1437_push27_gaussian0_i_llvm_fpga_push_i1_notcmp1437_push27_gaussian1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_notcmp1437_push27_gaussian0_i_llvm_fpga_push_i1_notcmp1437_push27_gaussian1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(8),
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
        .INITIAL_OCCUPANCY(8),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i1_notcmp1437_push27_gaussian0_i_llvm_fpga_push_i1_notcmp1437_push27_gaussian1_x (
        .i_valid(i_llvm_fpga_push_i1_notcmp1437_push27_gaussian0_i_llvm_fpga_push_i1_notcmp1437_push27_gaussian1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_notcmp1437_push27_gaussian0_i_llvm_fpga_push_i1_notcmp1437_push27_gaussian1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_notcmp1437_push27_gaussian0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_notcmp1437_push27_gaussian0_i_llvm_fpga_push_i1_notcmp1437_push27_gaussian1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_notcmp1437_push27_gaussian0_adapt_scalar_trunc4_sel_x(BITSELECT,233)@4
    assign i_llvm_fpga_push_i1_notcmp1437_push27_gaussian0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_notcmp1437_push27_gaussian0_i_llvm_fpga_push_i1_notcmp1437_push27_gaussian1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian0_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian66_mux_x(MUX,189)@4 + 1
    assign i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian0_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian66_mux_x_s = redist57_i_llvm_fpga_forked_gaussian_b7_forked_gaussian3_out_buffer_out_4_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian0_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian66_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian0_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian66_mux_x_q <= i_llvm_fpga_push_i1_notcmp1437_push27_gaussian0_adapt_scalar_trunc4_sel_x_b;
                1'b1 : i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian0_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian66_mux_x_q <= redist10_sync_together117_aunroll_x_in_c0_eni18_11_tpl_4_q;
                default : i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian0_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian66_mux_x_q <= 1'b0;
            endcase
        end
    end

    // redist42_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian0_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian66_mux_x_q_8(DELAY,492)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist42_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian0_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian66_mux_x_q_8 ( .xin(i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian0_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian66_mux_x_q), .xout(redist42_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian0_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian66_mux_x_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist43_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian0_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian66_mux_x_q_12(DELAY,493)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist43_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian0_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian66_mux_x_q_12_delay_0 <= $unsigned(redist42_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian0_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian66_mux_x_q_8_q);
            redist43_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian0_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian66_mux_x_q_12_delay_1 <= redist43_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian0_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian66_mux_x_q_12_delay_0;
            redist43_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian0_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian66_mux_x_q_12_delay_2 <= redist43_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian0_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian66_mux_x_q_12_delay_1;
            redist43_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian0_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian66_mux_x_q_12_q <= redist43_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian0_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian66_mux_x_q_12_delay_2;
        end
    end

    // redist9_sync_together117_aunroll_x_in_c0_eni18_10_tpl_4(DELAY,459)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_sync_together117_aunroll_x_in_c0_eni18_10_tpl_4_delay_0 <= $unsigned(in_c0_eni18_10_tpl);
            redist9_sync_together117_aunroll_x_in_c0_eni18_10_tpl_4_delay_1 <= redist9_sync_together117_aunroll_x_in_c0_eni18_10_tpl_4_delay_0;
            redist9_sync_together117_aunroll_x_in_c0_eni18_10_tpl_4_delay_2 <= redist9_sync_together117_aunroll_x_in_c0_eni18_10_tpl_4_delay_1;
            redist9_sync_together117_aunroll_x_in_c0_eni18_10_tpl_4_q <= redist9_sync_together117_aunroll_x_in_c0_eni18_10_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_push26_gaussian0_element_extension2_x(BITJOIN,236)@12
    assign i_llvm_fpga_push_i1_push26_gaussian0_element_extension2_x_q = {i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_c_i7_03_x_q, redist40_i_llvm_fpga_pop_i1_pop26_gaussian0_i_llvm_fpga_pop_i1_pop26_gaussian64_mux_x_q_8_q};

    // valid_fanout_reg45(REG,311)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg45_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg44(REG,310)@10 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg44_q <= $unsigned(redist24_sync_together117_aunroll_x_in_i_valid_10_q);
        end
    end

    // i_llvm_fpga_push_i1_push26_gaussian0_i_llvm_fpga_push_i1_push26_gaussian1_x(FIFODELAY,237)@1
    // in i_valid@11
    // in i_write_pred@11
    // in i_data@12
    // out o_data@4
    assign i_llvm_fpga_push_i1_push26_gaussian0_i_llvm_fpga_push_i1_push26_gaussian1_x_i_stall = ~ (valid_fanout_reg45_q & i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_push26_gaussian0_i_llvm_fpga_push_i1_push26_gaussian1_x_i_valid = valid_fanout_reg44_q & redist34_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_10_q;
    assign i_llvm_fpga_push_i1_push26_gaussian0_i_llvm_fpga_push_i1_push26_gaussian1_x_i_data = i_llvm_fpga_push_i1_push26_gaussian0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_push26_gaussian0_i_llvm_fpga_push_i1_push26_gaussian1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_push26_gaussian0_i_llvm_fpga_push_i1_push26_gaussian1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_push26_gaussian0_i_llvm_fpga_push_i1_push26_gaussian1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_push26_gaussian0_i_llvm_fpga_push_i1_push26_gaussian1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(8),
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
        .INITIAL_OCCUPANCY(8),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i1_push26_gaussian0_i_llvm_fpga_push_i1_push26_gaussian1_x (
        .i_valid(i_llvm_fpga_push_i1_push26_gaussian0_i_llvm_fpga_push_i1_push26_gaussian1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_push26_gaussian0_i_llvm_fpga_push_i1_push26_gaussian1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_push26_gaussian0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_push26_gaussian0_i_llvm_fpga_push_i1_push26_gaussian1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_push26_gaussian0_adapt_scalar_trunc4_sel_x(BITSELECT,239)@4
    assign i_llvm_fpga_push_i1_push26_gaussian0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_push26_gaussian0_i_llvm_fpga_push_i1_push26_gaussian1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_pop26_gaussian0_i_llvm_fpga_pop_i1_pop26_gaussian64_mux_x(MUX,190)@4 + 1
    assign i_llvm_fpga_pop_i1_pop26_gaussian0_i_llvm_fpga_pop_i1_pop26_gaussian64_mux_x_s = redist57_i_llvm_fpga_forked_gaussian_b7_forked_gaussian3_out_buffer_out_4_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i1_pop26_gaussian0_i_llvm_fpga_pop_i1_pop26_gaussian64_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i1_pop26_gaussian0_i_llvm_fpga_pop_i1_pop26_gaussian64_mux_x_q <= i_llvm_fpga_push_i1_push26_gaussian0_adapt_scalar_trunc4_sel_x_b;
                1'b1 : i_llvm_fpga_pop_i1_pop26_gaussian0_i_llvm_fpga_pop_i1_pop26_gaussian64_mux_x_q <= redist9_sync_together117_aunroll_x_in_c0_eni18_10_tpl_4_q;
                default : i_llvm_fpga_pop_i1_pop26_gaussian0_i_llvm_fpga_pop_i1_pop26_gaussian64_mux_x_q <= 1'b0;
            endcase
        end
    end

    // redist40_i_llvm_fpga_pop_i1_pop26_gaussian0_i_llvm_fpga_pop_i1_pop26_gaussian64_mux_x_q_8(DELAY,490)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist40_i_llvm_fpga_pop_i1_pop26_gaussian0_i_llvm_fpga_pop_i1_pop26_gaussian64_mux_x_q_8 ( .xin(i_llvm_fpga_pop_i1_pop26_gaussian0_i_llvm_fpga_pop_i1_pop26_gaussian64_mux_x_q), .xout(redist40_i_llvm_fpga_pop_i1_pop26_gaussian0_i_llvm_fpga_pop_i1_pop26_gaussian64_mux_x_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist41_i_llvm_fpga_pop_i1_pop26_gaussian0_i_llvm_fpga_pop_i1_pop26_gaussian64_mux_x_q_12(DELAY,491)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist41_i_llvm_fpga_pop_i1_pop26_gaussian0_i_llvm_fpga_pop_i1_pop26_gaussian64_mux_x_q_12_delay_0 <= $unsigned(redist40_i_llvm_fpga_pop_i1_pop26_gaussian0_i_llvm_fpga_pop_i1_pop26_gaussian64_mux_x_q_8_q);
            redist41_i_llvm_fpga_pop_i1_pop26_gaussian0_i_llvm_fpga_pop_i1_pop26_gaussian64_mux_x_q_12_delay_1 <= redist41_i_llvm_fpga_pop_i1_pop26_gaussian0_i_llvm_fpga_pop_i1_pop26_gaussian64_mux_x_q_12_delay_0;
            redist41_i_llvm_fpga_pop_i1_pop26_gaussian0_i_llvm_fpga_pop_i1_pop26_gaussian64_mux_x_q_12_delay_2 <= redist41_i_llvm_fpga_pop_i1_pop26_gaussian0_i_llvm_fpga_pop_i1_pop26_gaussian64_mux_x_q_12_delay_1;
            redist41_i_llvm_fpga_pop_i1_pop26_gaussian0_i_llvm_fpga_pop_i1_pop26_gaussian64_mux_x_q_12_q <= redist41_i_llvm_fpga_pop_i1_pop26_gaussian0_i_llvm_fpga_pop_i1_pop26_gaussian64_mux_x_q_12_delay_2;
        end
    end

    // redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_offset(CONSTANT,556)
    assign redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_offset_q = $unsigned(4'b1001);

    // redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_rdcnt(ADD,569)
    assign redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_rdcnt_a = {1'b0, redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_wraddr_q};
    assign redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_rdcnt_b = {1'b0, redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_rdcnt_o <= $unsigned(redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_rdcnt_a) + $unsigned(redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_rdcnt_b);
        end
    end
    assign redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_rdcnt_q = redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_rdcnt_o[4:0];

    // redist8_sync_together117_aunroll_x_in_c0_eni18_9_tpl_4_inputreg0(DELAY,521)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_sync_together117_aunroll_x_in_c0_eni18_9_tpl_4_inputreg0_q <= $unsigned(in_c0_eni18_9_tpl);
        end
    end

    // redist8_sync_together117_aunroll_x_in_c0_eni18_9_tpl_4(DELAY,458)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_sync_together117_aunroll_x_in_c0_eni18_9_tpl_4_delay_0 <= $unsigned(redist8_sync_together117_aunroll_x_in_c0_eni18_9_tpl_4_inputreg0_q);
            redist8_sync_together117_aunroll_x_in_c0_eni18_9_tpl_4_delay_1 <= redist8_sync_together117_aunroll_x_in_c0_eni18_9_tpl_4_delay_0;
            redist8_sync_together117_aunroll_x_in_c0_eni18_9_tpl_4_q <= redist8_sync_together117_aunroll_x_in_c0_eni18_9_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg42(REG,308)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg42_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg41(REG,307)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg41_q <= $unsigned(redist18_sync_together117_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_add33_push24_gaussian0_i_llvm_fpga_push_i32_add33_push24_gaussian1_x(FIFODELAY,240)@1 + 8
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_add33_push24_gaussian0_i_llvm_fpga_push_i32_add33_push24_gaussian1_x_i_stall = ~ (valid_fanout_reg42_q & i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_add33_push24_gaussian0_i_llvm_fpga_push_i32_add33_push24_gaussian1_x_i_valid = valid_fanout_reg41_q & redist29_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_add33_push24_gaussian0_i_llvm_fpga_push_i32_add33_push24_gaussian1_x_i_data = i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q;
    assign i_llvm_fpga_push_i32_add33_push24_gaussian0_i_llvm_fpga_push_i32_add33_push24_gaussian1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_add33_push24_gaussian0_i_llvm_fpga_push_i32_add33_push24_gaussian1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_add33_push24_gaussian0_i_llvm_fpga_push_i32_add33_push24_gaussian1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_add33_push24_gaussian0_i_llvm_fpga_push_i32_add33_push24_gaussian1_x_i_stall[0];
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
        .INITIAL_OCCUPANCY(8),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i32_add33_push24_gaussian0_i_llvm_fpga_push_i32_add33_push24_gaussian1_x (
        .i_valid(i_llvm_fpga_push_i32_add33_push24_gaussian0_i_llvm_fpga_push_i32_add33_push24_gaussian1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_add33_push24_gaussian0_i_llvm_fpga_push_i32_add33_push24_gaussian1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_add33_push24_gaussian0_i_llvm_fpga_push_i32_add33_push24_gaussian1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x(MUX,191)@4
    assign i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_s = redist57_i_llvm_fpga_forked_gaussian_b7_forked_gaussian3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_s or i_llvm_fpga_push_i32_add33_push24_gaussian0_i_llvm_fpga_push_i32_add33_push24_gaussian1_x_o_data or redist8_sync_together117_aunroll_x_in_c0_eni18_9_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q = i_llvm_fpga_push_i32_add33_push24_gaussian0_i_llvm_fpga_push_i32_add33_push24_gaussian1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q = redist8_sync_together117_aunroll_x_in_c0_eni18_9_tpl_4_q;
            default : i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q = 32'b0;
        endcase
    end

    // redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_inputreg0(DELAY,564)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_inputreg0_q <= $unsigned(i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q);
        end
    end

    // redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_wraddr(COUNTER,567)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_wraddr_i <= $unsigned(redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_wraddr_q = redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_wraddr_i[3:0];

    // redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_mem(DUALMEM,566)
    assign redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_mem_ia = $unsigned(redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_inputreg0_q);
    assign redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_mem_aa = redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_wraddr_q;
    assign redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_mem_ab = redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_rdcnt_q[3:0];
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
    ) redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_mem_aa),
        .data_a(redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_mem_ab),
        .q_b(redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_mem_iq),
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
    assign redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_mem_q = redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_mem_iq[31:0];

    // redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_outputreg0(DELAY,565)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_outputreg0_q <= $unsigned(redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_mem_q);
        end
    end

    // redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_rdcnt(ADD,563)
    assign redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_rdcnt_a = {1'b0, redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_wraddr_q};
    assign redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_rdcnt_b = {1'b0, redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_rdcnt_o <= $unsigned(redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_rdcnt_a) + $unsigned(redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_rdcnt_b);
        end
    end
    assign redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_rdcnt_q = redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_rdcnt_o[4:0];

    // redist7_sync_together117_aunroll_x_in_c0_eni18_8_tpl_4_inputreg0(DELAY,520)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together117_aunroll_x_in_c0_eni18_8_tpl_4_inputreg0_q <= $unsigned(in_c0_eni18_8_tpl);
        end
    end

    // redist7_sync_together117_aunroll_x_in_c0_eni18_8_tpl_4(DELAY,457)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together117_aunroll_x_in_c0_eni18_8_tpl_4_delay_0 <= $unsigned(redist7_sync_together117_aunroll_x_in_c0_eni18_8_tpl_4_inputreg0_q);
            redist7_sync_together117_aunroll_x_in_c0_eni18_8_tpl_4_delay_1 <= redist7_sync_together117_aunroll_x_in_c0_eni18_8_tpl_4_delay_0;
            redist7_sync_together117_aunroll_x_in_c0_eni18_8_tpl_4_q <= redist7_sync_together117_aunroll_x_in_c0_eni18_8_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg39(REG,305)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg39_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg38(REG,304)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg38_q <= $unsigned(redist18_sync_together117_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_fpga_indvars_iv729_push22_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv729_push22_gaussian1_x(FIFODELAY,243)@1 + 8
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_fpga_indvars_iv729_push22_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv729_push22_gaussian1_x_i_stall = ~ (valid_fanout_reg39_q & i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_fpga_indvars_iv729_push22_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv729_push22_gaussian1_x_i_valid = valid_fanout_reg38_q & redist29_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_fpga_indvars_iv729_push22_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv729_push22_gaussian1_x_i_data = i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q;
    assign i_llvm_fpga_push_i32_fpga_indvars_iv729_push22_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv729_push22_gaussian1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_fpga_indvars_iv729_push22_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv729_push22_gaussian1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_fpga_indvars_iv729_push22_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv729_push22_gaussian1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_fpga_indvars_iv729_push22_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv729_push22_gaussian1_x_i_stall[0];
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
        .INITIAL_OCCUPANCY(8),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i32_fpga_indvars_iv729_push22_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv729_push22_gaussian1_x (
        .i_valid(i_llvm_fpga_push_i32_fpga_indvars_iv729_push22_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv729_push22_gaussian1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_fpga_indvars_iv729_push22_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv729_push22_gaussian1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_fpga_indvars_iv729_push22_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv729_push22_gaussian1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x(MUX,192)@4
    assign i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_s = redist57_i_llvm_fpga_forked_gaussian_b7_forked_gaussian3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_s or i_llvm_fpga_push_i32_fpga_indvars_iv729_push22_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv729_push22_gaussian1_x_o_data or redist7_sync_together117_aunroll_x_in_c0_eni18_8_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q = i_llvm_fpga_push_i32_fpga_indvars_iv729_push22_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv729_push22_gaussian1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q = redist7_sync_together117_aunroll_x_in_c0_eni18_8_tpl_4_q;
            default : i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q = 32'b0;
        endcase
    end

    // redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_inputreg0(DELAY,558)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_inputreg0_q <= $unsigned(i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q);
        end
    end

    // redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_wraddr(COUNTER,561)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_wraddr_i <= $unsigned(redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_wraddr_q = redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_wraddr_i[3:0];

    // redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_mem(DUALMEM,560)
    assign redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_mem_ia = $unsigned(redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_inputreg0_q);
    assign redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_mem_aa = redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_wraddr_q;
    assign redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_mem_ab = redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_rdcnt_q[3:0];
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
    ) redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_mem_aa),
        .data_a(redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_mem_ab),
        .q_b(redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_mem_iq),
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
    assign redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_mem_q = redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_mem_iq[31:0];

    // redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_outputreg0(DELAY,559)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_outputreg0_q <= $unsigned(redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_mem_q);
        end
    end

    // redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_rdcnt(ADD,557)
    assign redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_rdcnt_a = {1'b0, redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_wraddr_q};
    assign redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_rdcnt_b = {1'b0, redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_rdcnt_o <= $unsigned(redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_rdcnt_a) + $unsigned(redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_rdcnt_b);
        end
    end
    assign redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_rdcnt_q = redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_rdcnt_o[4:0];

    // redist6_sync_together117_aunroll_x_in_c0_eni18_7_tpl_4_inputreg0(DELAY,519)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_together117_aunroll_x_in_c0_eni18_7_tpl_4_inputreg0_q <= $unsigned(in_c0_eni18_7_tpl);
        end
    end

    // redist6_sync_together117_aunroll_x_in_c0_eni18_7_tpl_4(DELAY,456)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_together117_aunroll_x_in_c0_eni18_7_tpl_4_delay_0 <= $unsigned(redist6_sync_together117_aunroll_x_in_c0_eni18_7_tpl_4_inputreg0_q);
            redist6_sync_together117_aunroll_x_in_c0_eni18_7_tpl_4_delay_1 <= redist6_sync_together117_aunroll_x_in_c0_eni18_7_tpl_4_delay_0;
            redist6_sync_together117_aunroll_x_in_c0_eni18_7_tpl_4_q <= redist6_sync_together117_aunroll_x_in_c0_eni18_7_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg36(REG,302)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg36_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg35(REG,301)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg35_q <= $unsigned(redist18_sync_together117_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_fpga_indvars_iv927_push21_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv927_push21_gaussian1_x(FIFODELAY,246)@1 + 8
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_fpga_indvars_iv927_push21_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv927_push21_gaussian1_x_i_stall = ~ (valid_fanout_reg36_q & i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_fpga_indvars_iv927_push21_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv927_push21_gaussian1_x_i_valid = valid_fanout_reg35_q & redist29_i_llvm_fpga_push_i1_cmp41635_push25_gaussian0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_fpga_indvars_iv927_push21_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv927_push21_gaussian1_x_i_data = i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q;
    assign i_llvm_fpga_push_i32_fpga_indvars_iv927_push21_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv927_push21_gaussian1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_fpga_indvars_iv927_push21_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv927_push21_gaussian1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_fpga_indvars_iv927_push21_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv927_push21_gaussian1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_fpga_indvars_iv927_push21_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv927_push21_gaussian1_x_i_stall[0];
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
        .INITIAL_OCCUPANCY(8),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i32_fpga_indvars_iv927_push21_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv927_push21_gaussian1_x (
        .i_valid(i_llvm_fpga_push_i32_fpga_indvars_iv927_push21_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv927_push21_gaussian1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_fpga_indvars_iv927_push21_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv927_push21_gaussian1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_fpga_indvars_iv927_push21_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv927_push21_gaussian1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x(MUX,193)@4
    assign i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_s = redist57_i_llvm_fpga_forked_gaussian_b7_forked_gaussian3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_s or i_llvm_fpga_push_i32_fpga_indvars_iv927_push21_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv927_push21_gaussian1_x_o_data or redist6_sync_together117_aunroll_x_in_c0_eni18_7_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q = i_llvm_fpga_push_i32_fpga_indvars_iv927_push21_gaussian0_i_llvm_fpga_push_i32_fpga_indvars_iv927_push21_gaussian1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q = redist6_sync_together117_aunroll_x_in_c0_eni18_7_tpl_4_q;
            default : i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q = 32'b0;
        endcase
    end

    // redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_inputreg0(DELAY,552)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_inputreg0_q <= $unsigned(i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q);
        end
    end

    // redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_wraddr(COUNTER,555)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_wraddr_i <= $unsigned(redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_wraddr_q = redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_wraddr_i[3:0];

    // redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_mem(DUALMEM,554)
    assign redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_mem_ia = $unsigned(redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_inputreg0_q);
    assign redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_mem_aa = redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_wraddr_q;
    assign redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_mem_ab = redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_rdcnt_q[3:0];
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
    ) redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_mem_aa),
        .data_a(redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_mem_ab),
        .q_b(redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_mem_iq),
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
    assign redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_mem_q = redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_mem_iq[31:0];

    // redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_outputreg0(DELAY,553)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_outputreg0_q <= $unsigned(redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_mem_q);
        end
    end

    // i_notcmp_gaussian55(LOGICAL,98)@16
    assign i_notcmp_gaussian55_q = redist54_i_unnamed_gaussian46_q_12_q ^ VCC_q;

    // i_gaussian_b7_next_iter_isspec_gaussian12(LOGICAL,73)@5
    assign i_gaussian_b7_next_iter_isspec_gaussian12_q = i_gaussian_b7_next_iter_isreal_gaussian9_q ^ VCC_q;

    // i_gaussian_b7_lastiter_gaussian13(LOGICAL,69)@5
    assign i_gaussian_b7_lastiter_gaussian13_q = redist47_i_llvm_fpga_pop_coalesce_i1_gaussian_b7_current_iter_isreal_gaussian0_i_llvm_fpga_pop_coalesce_i1_gaussian_b7_current_iter_isreal_gaussian4_mux_x_q_1_q & i_gaussian_b7_next_iter_isspec_gaussian12_q;

    // i_gaussian_b7_latchcond_gaussian14(LOGICAL,70)@5 + 1
    assign i_gaussian_b7_latchcond_gaussian14_qi = i_gaussian_b7_lastiter_gaussian13_q & i_gaussian_b7_current_thread_isreal_gaussian6_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_gaussian_b7_latchcond_gaussian14_delay ( .xin(i_gaussian_b7_latchcond_gaussian14_qi), .xout(i_gaussian_b7_latchcond_gaussian14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist60_i_gaussian_b7_latchcond_gaussian14_q_11(DELAY,510)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist60_i_gaussian_b7_latchcond_gaussian14_q_11 ( .xin(i_gaussian_b7_latchcond_gaussian14_q), .xout(redist60_i_gaussian_b7_latchcond_gaussian14_q_11_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_gaussian_b7_realexit_gaussian56(LOGICAL,74)@16
    assign i_gaussian_b7_realexit_gaussian56_q = redist60_i_gaussian_b7_latchcond_gaussian14_q_11_q & i_notcmp_gaussian55_q;

    // redist54_i_unnamed_gaussian46_q_12(DELAY,504)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist54_i_unnamed_gaussian46_q_12 ( .xin(i_unnamed_gaussian46_q), .xout(redist54_i_unnamed_gaussian46_q_12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist46_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian0_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian17_mux_x_q_12(DELAY,496)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist46_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian0_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian17_mux_x_q_12_delay_0 <= $unsigned(redist45_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian0_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian17_mux_x_q_8_q);
            redist46_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian0_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian17_mux_x_q_12_delay_1 <= redist46_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian0_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian17_mux_x_q_12_delay_0;
            redist46_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian0_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian17_mux_x_q_12_delay_2 <= redist46_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian0_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian17_mux_x_q_12_delay_1;
            redist46_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian0_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian17_mux_x_q_12_q <= redist46_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian0_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian17_mux_x_q_12_delay_2;
        end
    end

    // redist64_i_gaussian_b7_fullexited_gaussian7_q_12(DELAY,514)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist64_i_gaussian_b7_fullexited_gaussian7_q_12 ( .xin(i_gaussian_b7_fullexited_gaussian7_q), .xout(redist64_i_gaussian_b7_fullexited_gaussian7_q_12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,264)@16
    assign out_c0_exi17143_0_tpl = redist64_i_gaussian_b7_fullexited_gaussian7_q_12_q;
    assign out_c0_exi17143_1_tpl = redist46_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian0_i_llvm_fpga_pop_i1_cmp41635_pop25_gaussian17_mux_x_q_12_q;
    assign out_c0_exi17143_2_tpl = i_llvm_fpga_mem_memdep_gaussian40_out_o_writeack;
    assign out_c0_exi17143_3_tpl = redist54_i_unnamed_gaussian46_q_12_q;
    assign out_c0_exi17143_4_tpl = redist44_i_llvm_fpga_pop_i1_memdep_phi4_pop724_pop20_gaussian0_i_llvm_fpga_pop_i1_memdep_phi4_pop724_pop20_gaussian27_mux_x_q_8_q;
    assign out_c0_exi17143_5_tpl = i_gaussian_b7_realexit_gaussian56_q;
    assign out_c0_exi17143_6_tpl = redist37_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv927_pop21_gaussian58_mux_x_q_12_outputreg0_q;
    assign out_c0_exi17143_7_tpl = redist38_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian0_i_llvm_fpga_pop_i32_fpga_indvars_iv729_pop22_gaussian60_mux_x_q_12_outputreg0_q;
    assign out_c0_exi17143_8_tpl = redist39_i_llvm_fpga_pop_i32_add33_pop24_gaussian0_i_llvm_fpga_pop_i32_add33_pop24_gaussian62_mux_x_q_12_outputreg0_q;
    assign out_c0_exi17143_9_tpl = redist41_i_llvm_fpga_pop_i1_pop26_gaussian0_i_llvm_fpga_pop_i1_pop26_gaussian64_mux_x_q_12_q;
    assign out_c0_exi17143_10_tpl = redist43_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian0_i_llvm_fpga_pop_i1_notcmp1437_pop27_gaussian66_mux_x_q_12_q;
    assign out_c0_exi17143_11_tpl = redist11_sync_together117_aunroll_x_in_c0_eni18_12_tpl_16_outputreg0_q;
    assign out_c0_exi17143_12_tpl = redist12_sync_together117_aunroll_x_in_c0_eni18_13_tpl_16_outputreg0_q;
    assign out_c0_exi17143_13_tpl = redist13_sync_together117_aunroll_x_in_c0_eni18_14_tpl_16_outputreg0_q;
    assign out_c0_exi17143_14_tpl = redist14_sync_together117_aunroll_x_in_c0_eni18_15_tpl_16_q;
    assign out_c0_exi17143_15_tpl = redist15_sync_together117_aunroll_x_in_c0_eni18_16_tpl_16_outputreg0_q;
    assign out_c0_exi17143_16_tpl = redist16_sync_together117_aunroll_x_in_c0_eni18_17_tpl_16_outputreg0_q;
    assign out_c0_exi17143_17_tpl = redist17_sync_together117_aunroll_x_in_c0_eni18_18_tpl_16_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_profile_loop_o_valid = redist28_sync_together117_aunroll_x_in_i_valid_16_q;
    assign out_unnamed_gaussian1 = GND_q;

endmodule
