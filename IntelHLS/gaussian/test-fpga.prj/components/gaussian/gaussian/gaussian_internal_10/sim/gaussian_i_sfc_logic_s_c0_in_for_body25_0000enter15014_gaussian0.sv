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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body25_gaussians_c0_enter15014_gaussian0
// Created for function/kernel gaussian
// SystemVerilog created on Tue Apr  4 21:38:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_i_sfc_logic_s_c0_in_for_body25_0000enter15014_gaussian0 (
    input wire [31:0] in_lm1_gaussian_avm_readdata,
    input wire [0:0] in_lm1_gaussian_avm_writeack,
    input wire [0:0] in_lm1_gaussian_avm_waitrequest,
    input wire [0:0] in_lm1_gaussian_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_gaussian6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_gaussian6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [31:0] in_intel_reserved_ffwd_3_0,
    input wire [0:0] in_intel_reserved_ffwd_8_0,
    input wire [31:0] in_lm92_gaussian_avm_readdata,
    input wire [0:0] in_lm92_gaussian_avm_writeack,
    input wire [0:0] in_lm92_gaussian_avm_waitrequest,
    input wire [0:0] in_lm92_gaussian_avm_readdatavalid,
    output wire [31:0] out_lm1_gaussian_avm_address,
    output wire [0:0] out_lm1_gaussian_avm_enable,
    output wire [0:0] out_lm1_gaussian_avm_read,
    output wire [0:0] out_lm1_gaussian_avm_write,
    output wire [31:0] out_lm1_gaussian_avm_writedata,
    output wire [3:0] out_lm1_gaussian_avm_byteenable,
    output wire [0:0] out_lm1_gaussian_avm_burstcount,
    input wire [31:0] in_lm113_gaussian_avm_readdata,
    input wire [0:0] in_lm113_gaussian_avm_writeack,
    input wire [0:0] in_lm113_gaussian_avm_waitrequest,
    input wire [0:0] in_lm113_gaussian_avm_readdatavalid,
    output wire [31:0] out_lm92_gaussian_avm_address,
    output wire [0:0] out_lm92_gaussian_avm_enable,
    output wire [0:0] out_lm92_gaussian_avm_read,
    output wire [0:0] out_lm92_gaussian_avm_write,
    output wire [31:0] out_lm92_gaussian_avm_writedata,
    output wire [3:0] out_lm92_gaussian_avm_byteenable,
    output wire [0:0] out_lm92_gaussian_avm_burstcount,
    input wire [31:0] in_memdep_5_gaussian_avm_readdata,
    input wire [0:0] in_memdep_5_gaussian_avm_writeack,
    input wire [0:0] in_memdep_5_gaussian_avm_waitrequest,
    input wire [0:0] in_memdep_5_gaussian_avm_readdatavalid,
    output wire [31:0] out_lm113_gaussian_avm_address,
    output wire [0:0] out_lm113_gaussian_avm_enable,
    output wire [0:0] out_lm113_gaussian_avm_read,
    output wire [0:0] out_lm113_gaussian_avm_write,
    output wire [31:0] out_lm113_gaussian_avm_writedata,
    output wire [3:0] out_lm113_gaussian_avm_byteenable,
    output wire [0:0] out_lm113_gaussian_avm_burstcount,
    output wire [31:0] out_memdep_5_gaussian_avm_address,
    output wire [0:0] out_memdep_5_gaussian_avm_enable,
    output wire [0:0] out_memdep_5_gaussian_avm_read,
    output wire [0:0] out_memdep_5_gaussian_avm_write,
    output wire [31:0] out_memdep_5_gaussian_avm_writedata,
    output wire [3:0] out_memdep_5_gaussian_avm_byteenable,
    output wire [0:0] out_memdep_5_gaussian_avm_burstcount,
    output wire [0:0] out_c0_exi7_0_tpl,
    output wire [0:0] out_c0_exi7_1_tpl,
    output wire [0:0] out_c0_exi7_2_tpl,
    output wire [0:0] out_c0_exi7_3_tpl,
    output wire [31:0] out_c0_exi7_4_tpl,
    output wire [0:0] out_c0_exi7_5_tpl,
    output wire [0:0] out_c0_exi7_6_tpl,
    output wire [31:0] out_c0_exi7_7_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_gaussian1,
    input wire [0:0] in_c0_eni7_0_tpl,
    input wire [0:0] in_c0_eni7_1_tpl,
    input wire [31:0] in_c0_eni7_2_tpl,
    input wire [0:0] in_c0_eni7_3_tpl,
    input wire [31:0] in_c0_eni7_4_tpl,
    input wire [0:0] in_c0_eni7_5_tpl,
    input wire [0:0] in_c0_eni7_6_tpl,
    input wire [31:0] in_c0_eni7_7_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_gaussian_A_pmem_q;
    wire [63:0] c_gaussian_c_pmem_q;
    wire [1:0] c_i2_188_q;
    wire [31:0] c_i32_190_q;
    wire [5:0] c_i6_1791_q;
    wire [5:0] c_i6_193_q;
    wire [1:0] i_arrayidx295_gaussian24_vt_const_1_q;
    wire [63:0] i_arrayidx295_gaussian24_vt_join_q;
    wire [61:0] i_arrayidx295_gaussian24_vt_select_63_b;
    wire [63:0] i_arrayidx314_gaussian19_vt_join_q;
    wire [61:0] i_arrayidx314_gaussian19_vt_select_63_b;
    wire [63:0] i_arrayidx356_gaussian28_vt_join_q;
    wire [61:0] i_arrayidx356_gaussian28_vt_select_63_b;
    wire [1:0] i_cleanups_shl52_gaussian5_vt_join_q;
    wire [0:0] i_cleanups_shl52_gaussian5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor54_gaussian4_q;
    wire [0:0] i_first_cleanup_xor54_or_gaussian20_q;
    wire [6:0] i_fpga_indvars_iv_next11_gaussian41_a;
    wire [6:0] i_fpga_indvars_iv_next11_gaussian41_b;
    logic [6:0] i_fpga_indvars_iv_next11_gaussian41_o;
    wire [6:0] i_fpga_indvars_iv_next11_gaussian41_q;
    wire [31:0] i_idxprom26_gaussian14_vt_const_63_q;
    wire [63:0] i_idxprom26_gaussian14_vt_join_q;
    wire [31:0] i_idxprom26_gaussian14_vt_select_31_b;
    wire [63:0] i_idxprom28_gaussian23_vt_join_q;
    wire [31:0] i_idxprom28_gaussian23_vt_select_31_b;
    wire [63:0] i_idxprom30_gaussian18_vt_join_q;
    wire [31:0] i_idxprom30_gaussian18_vt_select_31_b;
    wire [32:0] i_inc41_gaussian36_a;
    wire [32:0] i_inc41_gaussian36_b;
    logic [32:0] i_inc41_gaussian36_o;
    wire [32:0] i_inc41_gaussian36_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp193334_gaussian43_out_dest_data_out_8_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp193336_gaussian15_out_dest_data_out_8_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_j_03529_gaussian17_out_dest_data_out_3_0;
    wire [31:0] i_llvm_fpga_mem_lm113_gaussian31_out_lm113_gaussian_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm113_gaussian31_out_lm113_gaussian_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_lm113_gaussian31_out_lm113_gaussian_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm113_gaussian31_out_lm113_gaussian_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm113_gaussian31_out_lm113_gaussian_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm113_gaussian31_out_lm113_gaussian_avm_write;
    wire [31:0] i_llvm_fpga_mem_lm113_gaussian31_out_lm113_gaussian_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm113_gaussian31_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_lm1_gaussian21_out_lm1_gaussian_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm1_gaussian21_out_lm1_gaussian_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_lm1_gaussian21_out_lm1_gaussian_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm1_gaussian21_out_lm1_gaussian_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm1_gaussian21_out_lm1_gaussian_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm1_gaussian21_out_lm1_gaussian_avm_write;
    wire [31:0] i_llvm_fpga_mem_lm1_gaussian21_out_lm1_gaussian_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm1_gaussian21_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_lm92_gaussian27_out_lm92_gaussian_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm92_gaussian27_out_lm92_gaussian_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_lm92_gaussian27_out_lm92_gaussian_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm92_gaussian27_out_lm92_gaussian_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm92_gaussian27_out_lm92_gaussian_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm92_gaussian27_out_lm92_gaussian_avm_write;
    wire [31:0] i_llvm_fpga_mem_lm92_gaussian27_out_lm92_gaussian_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm92_gaussian27_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_memdep_5_gaussian34_out_memdep_5_gaussian_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_5_gaussian34_out_memdep_5_gaussian_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_5_gaussian34_out_memdep_5_gaussian_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_5_gaussian34_out_memdep_5_gaussian_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_5_gaussian34_out_memdep_5_gaussian_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_5_gaussian34_out_memdep_5_gaussian_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_5_gaussian34_out_memdep_5_gaussian_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_5_gaussian34_out_o_writeack;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_gaussian6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_gaussian6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_gaussian6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_gaussian6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_gaussian6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_gaussian6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi6_pop38_gaussian29_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi6_pop38_gaussian29_out_feedback_stall_out_38;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop28102_pop45_gaussian25_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop28102_pop45_gaussian25_out_feedback_stall_out_45;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp63101_pop44_gaussian55_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp63101_pop44_gaussian55_out_feedback_stall_out_44;
    wire [0:0] i_llvm_fpga_pop_i1_pop43_gaussian53_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop43_gaussian53_out_feedback_stall_out_43;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups51_pop40_gaussian2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups51_pop40_gaussian2_out_feedback_stall_out_40;
    wire [1:0] i_llvm_fpga_pop_i2_initerations46_pop39_gaussian7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations46_pop39_gaussian7_out_feedback_stall_out_39;
    wire [31:0] i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_feedback_stall_out_41;
    wire [31:0] i_llvm_fpga_pop_i32_i_034_replace_phi100_pop42_gaussian12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_034_replace_phi100_pop42_gaussian12_out_feedback_stall_out_42;
    wire [31:0] i_llvm_fpga_pop_i32_k_032_pop37_gaussian22_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k_032_pop37_gaussian22_out_feedback_stall_out_37;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv10_pop36_gaussian38_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv10_pop36_gaussian38_out_feedback_stall_out_36;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration50_gaussian11_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration50_gaussian11_out_feedback_valid_out_6;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi6_push38_gaussian35_out_feedback_out_38;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi6_push38_gaussian35_out_feedback_valid_out_38;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop28102_push45_gaussian26_out_feedback_out_45;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop28102_push45_gaussian26_out_feedback_valid_out_45;
    wire [0:0] i_llvm_fpga_push_i1_notcmp63101_push44_gaussian56_out_feedback_out_44;
    wire [0:0] i_llvm_fpga_push_i1_notcmp63101_push44_gaussian56_out_feedback_valid_out_44;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond58_gaussian46_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond58_gaussian46_out_feedback_valid_out_7;
    wire [0:0] i_llvm_fpga_push_i1_push43_gaussian54_out_feedback_out_43;
    wire [0:0] i_llvm_fpga_push_i1_push43_gaussian54_out_feedback_valid_out_43;
    wire [7:0] i_llvm_fpga_push_i2_cleanups51_push40_gaussian49_out_feedback_out_40;
    wire [0:0] i_llvm_fpga_push_i2_cleanups51_push40_gaussian49_out_feedback_valid_out_40;
    wire [7:0] i_llvm_fpga_push_i2_initerations46_push39_gaussian9_out_feedback_out_39;
    wire [0:0] i_llvm_fpga_push_i2_initerations46_push39_gaussian9_out_feedback_valid_out_39;
    wire [31:0] i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out;
    wire [31:0] i_llvm_fpga_push_i32_add97_push41_gaussian52_out_feedback_out_41;
    wire [0:0] i_llvm_fpga_push_i32_add97_push41_gaussian52_out_feedback_valid_out_41;
    wire [31:0] i_llvm_fpga_push_i32_i_034_replace_phi100_push42_gaussian13_out_feedback_out_42;
    wire [0:0] i_llvm_fpga_push_i32_i_034_replace_phi100_push42_gaussian13_out_feedback_valid_out_42;
    wire [31:0] i_llvm_fpga_push_i32_k_032_push37_gaussian37_out_feedback_out_37;
    wire [0:0] i_llvm_fpga_push_i32_k_032_push37_gaussian37_out_feedback_valid_out_37;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv10_push36_gaussian42_out_feedback_out_36;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv10_push36_gaussian42_out_feedback_valid_out_36;
    wire [0:0] i_masked57_gaussian50_qi;
    reg [0:0] i_masked57_gaussian50_q;
    wire [0:0] i_memdep_phi_or_gaussian30_q;
    wire [0:0] i_next_cleanups56_gaussian48_s;
    reg [1:0] i_next_cleanups56_gaussian48_q;
    wire [1:0] i_next_initerations47_gaussian8_vt_join_q;
    wire [0:0] i_next_initerations47_gaussian8_vt_select_0_b;
    wire [0:0] i_notcmp44_gaussian45_q;
    wire [0:0] i_or55_gaussian47_q;
    wire [32:0] i_sub_gaussian33_a;
    wire [32:0] i_sub_gaussian33_b;
    logic [32:0] i_sub_gaussian33_o;
    wire [32:0] i_sub_gaussian33_q;
    wire [0:0] i_unnamed_gaussian16_q;
    wire [0:0] i_unnamed_gaussian44_q;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next11_gaussian41_sel_x_b;
    wire [31:0] bgTrunc_i_inc41_gaussian36_sel_x_b;
    wire [63:0] bgTrunc_i_mul_gaussian32_sel_x_in;
    wire [31:0] bgTrunc_i_mul_gaussian32_sel_x_b;
    wire [31:0] bgTrunc_i_sub_gaussian33_sel_x_b;
    wire [11:0] i_arrayidx295_gaussian0_add_x_a;
    wire [11:0] i_arrayidx295_gaussian0_add_x_b;
    logic [11:0] i_arrayidx295_gaussian0_add_x_o;
    wire [11:0] i_arrayidx295_gaussian0_add_x_q;
    wire [63:0] i_arrayidx295_gaussian0_append_upper_bits_x_q;
    wire [8:0] i_arrayidx295_gaussian0_narrow_x_b;
    wire [10:0] i_arrayidx295_gaussian0_shift_join_x_q;
    wire [11:0] i_arrayidx295_gaussian0_dupName_0_add_x_a;
    wire [11:0] i_arrayidx295_gaussian0_dupName_0_add_x_b;
    logic [11:0] i_arrayidx295_gaussian0_dupName_0_add_x_o;
    wire [11:0] i_arrayidx295_gaussian0_dupName_0_add_x_q;
    wire [21:0] i_arrayidx295_gaussian0_mult_extender_x_q;
    wire [3:0] i_arrayidx295_gaussian0_mult_multconst_x_q;
    wire [10:0] i_arrayidx295_gaussian0_dupName_0_trunc_sel_x_b;
    wire [10:0] i_arrayidx295_gaussian0_dupName_1_trunc_sel_x_b;
    wire [10:0] i_arrayidx295_gaussian0_dupName_2_trunc_sel_x_b;
    wire [10:0] i_arrayidx295_gaussian0_dupName_3_trunc_sel_x_b;
    wire [10:0] i_arrayidx295_gaussian0_dupName_5_trunc_sel_x_b;
    wire [7:0] i_arrayidx314_gaussian0_add_x_a;
    wire [7:0] i_arrayidx314_gaussian0_add_x_b;
    logic [7:0] i_arrayidx314_gaussian0_add_x_o;
    wire [7:0] i_arrayidx314_gaussian0_add_x_q;
    wire [63:0] i_arrayidx314_gaussian0_append_upper_bits_x_q;
    wire [4:0] i_arrayidx314_gaussian0_narrow_x_b;
    wire [6:0] i_arrayidx314_gaussian0_shift_join_x_q;
    wire [6:0] i_arrayidx314_gaussian0_dupName_0_trunc_sel_x_b;
    wire [6:0] i_arrayidx314_gaussian0_dupName_2_trunc_sel_x_b;
    wire [11:0] i_arrayidx356_gaussian0_add_x_a;
    wire [11:0] i_arrayidx356_gaussian0_add_x_b;
    logic [11:0] i_arrayidx356_gaussian0_add_x_o;
    wire [11:0] i_arrayidx356_gaussian0_add_x_q;
    wire [63:0] i_arrayidx356_gaussian0_append_upper_bits_x_q;
    wire [11:0] i_arrayidx356_gaussian0_dupName_0_add_x_a;
    wire [11:0] i_arrayidx356_gaussian0_dupName_0_add_x_b;
    logic [11:0] i_arrayidx356_gaussian0_dupName_0_add_x_o;
    wire [11:0] i_arrayidx356_gaussian0_dupName_0_add_x_q;
    wire [21:0] i_arrayidx356_gaussian0_mult_extender_x_q;
    wire [10:0] i_arrayidx356_gaussian0_dupName_0_trunc_sel_x_b;
    wire [10:0] i_arrayidx356_gaussian0_dupName_1_trunc_sel_x_b;
    wire [10:0] i_arrayidx356_gaussian0_dupName_2_trunc_sel_x_b;
    wire [10:0] i_arrayidx356_gaussian0_dupName_5_trunc_sel_x_b;
    wire [0:0] i_first_cleanup53_gaussian3_sel_x_b;
    wire [63:0] i_idxprom26_gaussian14_sel_x_b;
    wire [63:0] i_idxprom28_gaussian23_sel_x_b;
    wire [63:0] i_idxprom30_gaussian18_sel_x_b;
    wire [0:0] i_last_initeration49_gaussian10_sel_x_b;
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
    wire [0:0] i_exitcond12_gaussian39_cmp_nsign_q;
    wire [63:0] i_mul_gaussian32_sums_join_0_q;
    wire [50:0] i_mul_gaussian32_sums_align_1_q;
    wire [50:0] i_mul_gaussian32_sums_align_1_qint;
    wire [64:0] i_mul_gaussian32_sums_result_add_0_0_a;
    wire [64:0] i_mul_gaussian32_sums_result_add_0_0_b;
    logic [64:0] i_mul_gaussian32_sums_result_add_0_0_o;
    wire [64:0] i_mul_gaussian32_sums_result_add_0_0_q;
    wire [11:0] addsumAHighB_uid274_i_arrayidx295_gaussian0_mult_x_a;
    wire [11:0] addsumAHighB_uid274_i_arrayidx295_gaussian0_mult_x_b;
    logic [11:0] addsumAHighB_uid274_i_arrayidx295_gaussian0_mult_x_o;
    wire [11:0] addsumAHighB_uid274_i_arrayidx295_gaussian0_mult_x_q;
    wire [13:0] add_uid275_i_arrayidx295_gaussian0_mult_x_q;
    wire [17:0] sR_mergedSignalTM_uid280_i_arrayidx295_gaussian0_mult_x_q;
    wire [11:0] addsumAHighB_uid320_i_arrayidx356_gaussian0_mult_x_a;
    wire [11:0] addsumAHighB_uid320_i_arrayidx356_gaussian0_mult_x_b;
    logic [11:0] addsumAHighB_uid320_i_arrayidx356_gaussian0_mult_x_o;
    wire [11:0] addsumAHighB_uid320_i_arrayidx356_gaussian0_mult_x_q;
    wire [13:0] add_uid321_i_arrayidx356_gaussian0_mult_x_q;
    wire [17:0] sR_mergedSignalTM_uid326_i_arrayidx356_gaussian0_mult_x_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid360_i_cleanups_shl52_gaussian0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid360_i_cleanups_shl52_gaussian0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid361_i_cleanups_shl52_gaussian0_shift_x_q;
    wire [0:0] leftShiftStage0_uid363_i_cleanups_shl52_gaussian0_shift_x_s;
    reg [1:0] leftShiftStage0_uid363_i_cleanups_shl52_gaussian0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid367_i_next_initerations47_gaussian0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid369_i_next_initerations47_gaussian0_shift_x_q;
    wire [0:0] rightShiftStage0_uid371_i_next_initerations47_gaussian0_shift_x_s;
    reg [1:0] rightShiftStage0_uid371_i_next_initerations47_gaussian0_shift_x_q;
    wire i_mul_gaussian32_im0_cma_reset;
    wire [13:0] i_mul_gaussian32_im0_cma_a0;
    wire [13:0] i_mul_gaussian32_im0_cma_c0;
    wire [27:0] i_mul_gaussian32_im0_cma_s0;
    wire [27:0] i_mul_gaussian32_im0_cma_qq;
    wire [27:0] i_mul_gaussian32_im0_cma_q;
    wire i_mul_gaussian32_im0_cma_ena0;
    wire i_mul_gaussian32_im0_cma_ena1;
    wire i_mul_gaussian32_im0_cma_ena2;
    wire i_mul_gaussian32_im8_cma_reset;
    wire [17:0] i_mul_gaussian32_im8_cma_a0;
    wire [17:0] i_mul_gaussian32_im8_cma_c0;
    wire [35:0] i_mul_gaussian32_im8_cma_s0;
    wire [35:0] i_mul_gaussian32_im8_cma_qq;
    wire [35:0] i_mul_gaussian32_im8_cma_q;
    wire i_mul_gaussian32_im8_cma_ena0;
    wire i_mul_gaussian32_im8_cma_ena1;
    wire i_mul_gaussian32_im8_cma_ena2;
    wire i_mul_gaussian32_ma3_cma_reset;
    wire [13:0] i_mul_gaussian32_ma3_cma_a0;
    wire [17:0] i_mul_gaussian32_ma3_cma_c0;
    wire [13:0] i_mul_gaussian32_ma3_cma_a1;
    wire [17:0] i_mul_gaussian32_ma3_cma_c1;
    wire [32:0] i_mul_gaussian32_ma3_cma_s0;
    wire [32:0] i_mul_gaussian32_ma3_cma_qq;
    wire [32:0] i_mul_gaussian32_ma3_cma_q;
    wire i_mul_gaussian32_ma3_cma_ena0;
    wire i_mul_gaussian32_ma3_cma_ena1;
    wire i_mul_gaussian32_ma3_cma_ena2;
    wire [52:0] i_arrayidx295_gaussian0_upper_bits_x_merged_bit_select_b;
    wire [10:0] i_arrayidx295_gaussian0_upper_bits_x_merged_bit_select_c;
    wire [56:0] i_arrayidx314_gaussian0_upper_bits_x_merged_bit_select_b;
    wire [6:0] i_arrayidx314_gaussian0_upper_bits_x_merged_bit_select_c;
    wire [13:0] i_mul_gaussian32_bs1_merged_bit_select_b;
    wire [17:0] i_mul_gaussian32_bs1_merged_bit_select_c;
    wire [13:0] i_mul_gaussian32_bs2_merged_bit_select_b;
    wire [17:0] i_mul_gaussian32_bs2_merged_bit_select_c;
    wire [1:0] lowRangeB_uid272_i_arrayidx295_gaussian0_mult_x_merged_bit_select_b;
    wire [8:0] lowRangeB_uid272_i_arrayidx295_gaussian0_mult_x_merged_bit_select_c;
    wire [1:0] lowRangeB_uid318_i_arrayidx356_gaussian0_mult_x_merged_bit_select_b;
    wire [8:0] lowRangeB_uid318_i_arrayidx356_gaussian0_mult_x_merged_bit_select_c;
    reg [0:0] redist0_sync_together123_aunroll_x_in_c0_eni7_1_tpl_1_q;
    reg [0:0] redist1_sync_together123_aunroll_x_in_c0_eni7_1_tpl_3_q;
    reg [0:0] redist1_sync_together123_aunroll_x_in_c0_eni7_1_tpl_3_delay_0;
    reg [0:0] redist2_sync_together123_aunroll_x_in_c0_eni7_1_tpl_4_q;
    reg [31:0] redist3_sync_together123_aunroll_x_in_c0_eni7_2_tpl_3_q;
    reg [31:0] redist3_sync_together123_aunroll_x_in_c0_eni7_2_tpl_3_delay_0;
    reg [0:0] redist4_sync_together123_aunroll_x_in_c0_eni7_3_tpl_1_q;
    reg [31:0] redist5_sync_together123_aunroll_x_in_c0_eni7_4_tpl_1_q;
    reg [0:0] redist6_sync_together123_aunroll_x_in_c0_eni7_5_tpl_4_q;
    reg [0:0] redist6_sync_together123_aunroll_x_in_c0_eni7_5_tpl_4_delay_0;
    reg [0:0] redist6_sync_together123_aunroll_x_in_c0_eni7_5_tpl_4_delay_1;
    reg [0:0] redist6_sync_together123_aunroll_x_in_c0_eni7_5_tpl_4_delay_2;
    reg [0:0] redist7_sync_together123_aunroll_x_in_c0_eni7_6_tpl_4_q;
    reg [0:0] redist7_sync_together123_aunroll_x_in_c0_eni7_6_tpl_4_delay_0;
    reg [0:0] redist7_sync_together123_aunroll_x_in_c0_eni7_6_tpl_4_delay_1;
    reg [0:0] redist7_sync_together123_aunroll_x_in_c0_eni7_6_tpl_4_delay_2;
    reg [0:0] redist9_sync_together123_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist10_sync_together123_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist11_sync_together123_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist12_sync_together123_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist13_sync_together123_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist14_sync_together123_aunroll_x_in_i_valid_7_q;
    reg [0:0] redist14_sync_together123_aunroll_x_in_i_valid_7_delay_0;
    reg [0:0] redist15_sync_together123_aunroll_x_in_i_valid_8_q;
    reg [0:0] redist16_i_first_cleanup53_gaussian3_sel_x_b_3_q;
    reg [0:0] redist16_i_first_cleanup53_gaussian3_sel_x_b_3_delay_0;
    reg [0:0] redist16_i_first_cleanup53_gaussian3_sel_x_b_3_delay_1;
    reg [10:0] redist17_i_arrayidx356_gaussian0_dupName_1_trunc_sel_x_b_1_q;
    reg [10:0] redist18_i_arrayidx356_gaussian0_dupName_0_trunc_sel_x_b_2_q;
    reg [10:0] redist18_i_arrayidx356_gaussian0_dupName_0_trunc_sel_x_b_2_delay_0;
    reg [10:0] redist19_i_arrayidx295_gaussian0_dupName_1_trunc_sel_x_b_1_q;
    reg [0:0] redist20_i_masked57_gaussian50_q_5_q;
    reg [0:0] redist20_i_masked57_gaussian50_q_5_delay_0;
    reg [0:0] redist20_i_masked57_gaussian50_q_5_delay_1;
    reg [0:0] redist20_i_masked57_gaussian50_q_5_delay_2;
    reg [31:0] redist22_i_llvm_fpga_pop_i32_i_034_replace_phi100_pop42_gaussian12_out_data_out_1_q;
    reg [1:0] redist24_i_llvm_fpga_pop_i2_cleanups51_pop40_gaussian2_out_data_out_3_q;
    reg [1:0] redist24_i_llvm_fpga_pop_i2_cleanups51_pop40_gaussian2_out_data_out_3_delay_0;
    reg [1:0] redist24_i_llvm_fpga_pop_i2_cleanups51_pop40_gaussian2_out_data_out_3_delay_1;
    reg [0:0] redist25_i_llvm_fpga_pop_i1_pop43_gaussian53_out_data_out_5_q;
    reg [0:0] redist25_i_llvm_fpga_pop_i1_pop43_gaussian53_out_data_out_5_delay_0;
    reg [0:0] redist25_i_llvm_fpga_pop_i1_pop43_gaussian53_out_data_out_5_delay_1;
    reg [0:0] redist25_i_llvm_fpga_pop_i1_pop43_gaussian53_out_data_out_5_delay_2;
    reg [0:0] redist25_i_llvm_fpga_pop_i1_pop43_gaussian53_out_data_out_5_delay_3;
    reg [0:0] redist26_i_llvm_fpga_pop_i1_notcmp63101_pop44_gaussian55_out_data_out_5_q;
    reg [0:0] redist26_i_llvm_fpga_pop_i1_notcmp63101_pop44_gaussian55_out_data_out_5_delay_0;
    reg [0:0] redist26_i_llvm_fpga_pop_i1_notcmp63101_pop44_gaussian55_out_data_out_5_delay_1;
    reg [0:0] redist26_i_llvm_fpga_pop_i1_notcmp63101_pop44_gaussian55_out_data_out_5_delay_2;
    reg [0:0] redist26_i_llvm_fpga_pop_i1_notcmp63101_pop44_gaussian55_out_data_out_5_delay_3;
    reg [0:0] redist27_i_llvm_fpga_pop_i1_memdep_phi_pop28102_pop45_gaussian25_out_data_out_3_q;
    reg [0:0] redist27_i_llvm_fpga_pop_i1_memdep_phi_pop28102_pop45_gaussian25_out_data_out_3_delay_0;
    reg [0:0] redist27_i_llvm_fpga_pop_i1_memdep_phi_pop28102_pop45_gaussian25_out_data_out_3_delay_1;
    reg [0:0] redist28_i_llvm_fpga_pop_i1_memdep_phi_pop28102_pop45_gaussian25_out_data_out_5_q;
    reg [0:0] redist28_i_llvm_fpga_pop_i1_memdep_phi_pop28102_pop45_gaussian25_out_data_out_5_delay_0;
    reg [0:0] redist29_i_llvm_fpga_pipeline_keep_going48_gaussian6_out_data_out_2_q;
    reg [0:0] redist29_i_llvm_fpga_pipeline_keep_going48_gaussian6_out_data_out_2_delay_0;
    reg [0:0] redist30_i_llvm_fpga_pipeline_keep_going48_gaussian6_out_data_out_5_q;
    reg [0:0] redist30_i_llvm_fpga_pipeline_keep_going48_gaussian6_out_data_out_5_delay_0;
    reg [0:0] redist30_i_llvm_fpga_pipeline_keep_going48_gaussian6_out_data_out_5_delay_1;
    reg [0:0] redist31_i_first_cleanup_xor54_or_gaussian20_q_3_q;
    reg [0:0] redist31_i_first_cleanup_xor54_or_gaussian20_q_3_delay_0;
    reg [0:0] redist31_i_first_cleanup_xor54_or_gaussian20_q_3_delay_1;
    reg [0:0] redist32_i_first_cleanup_xor54_or_gaussian20_q_5_q;
    reg [0:0] redist32_i_first_cleanup_xor54_or_gaussian20_q_5_delay_0;
    reg [0:0] redist33_i_first_cleanup_xor54_or_gaussian20_q_7_q;
    reg [0:0] redist33_i_first_cleanup_xor54_or_gaussian20_q_7_delay_0;
    reg [0:0] redist34_i_first_cleanup_xor54_gaussian4_q_3_q;
    reg [0:0] redist34_i_first_cleanup_xor54_gaussian4_q_3_delay_0;
    reg [0:0] redist34_i_first_cleanup_xor54_gaussian4_q_3_delay_1;
    reg [61:0] redist35_i_arrayidx295_gaussian24_vt_select_63_b_2_q;
    reg [61:0] redist35_i_arrayidx295_gaussian24_vt_select_63_b_2_delay_0;
    reg [63:0] redist36_i_arrayidx295_gaussian24_vt_join_q_2_q;
    reg [63:0] redist36_i_arrayidx295_gaussian24_vt_join_q_2_delay_0;
    reg [31:0] redist3_sync_together123_aunroll_x_in_c0_eni7_2_tpl_3_outputreg0_q;
    wire redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_mem_reset0;
    wire [31:0] redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_mem_ia;
    wire [2:0] redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_mem_aa;
    wire [2:0] redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_mem_ab;
    wire [31:0] redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_mem_iq;
    wire [31:0] redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_mem_q;
    wire [2:0] redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_rdcnt_i;
    reg [2:0] redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_wraddr_q;
    wire [3:0] redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_mem_last_q;
    wire [3:0] redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_cmp_b;
    wire [0:0] redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_cmpReg_q;
    wire [0:0] redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_notEnable_q;
    wire [0:0] redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_sticky_ena_q;
    wire [0:0] redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_enaAnd_q;
    wire redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_mem_reset0;
    wire [31:0] redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_mem_ia;
    wire [0:0] redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_mem_aa;
    wire [0:0] redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_mem_ab;
    wire [31:0] redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_mem_iq;
    wire [31:0] redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_mem_q;
    wire [0:0] redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_rdcnt_q;
    (* preserve *) reg [0:0] redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_rdcnt_i;
    reg [0:0] redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_cmpReg_q;
    wire [0:0] redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_notEnable_q;
    wire [0:0] redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_nor_q;
    (* dont_merge *) reg [0:0] redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_sticky_ena_q;
    wire [0:0] redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_enaAnd_q;
    wire redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_mem_reset0;
    wire [31:0] redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_mem_ia;
    wire [1:0] redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_mem_aa;
    wire [1:0] redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_mem_ab;
    wire [31:0] redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_mem_iq;
    wire [31:0] redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_mem_q;
    wire [1:0] redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_rdcnt_q;
    (* preserve *) reg [1:0] redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_rdcnt_i;
    reg [1:0] redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_wraddr_q;
    wire [2:0] redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_mem_last_q;
    wire [2:0] redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_cmp_b;
    wire [0:0] redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_cmp_q;
    (* dont_merge *) reg [0:0] redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_cmpReg_q;
    wire [0:0] redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_notEnable_q;
    wire [0:0] redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_nor_q;
    (* dont_merge *) reg [0:0] redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_sticky_ena_q;
    wire [0:0] redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist9_sync_together123_aunroll_x_in_i_valid_1(DELAY,390)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together123_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist9_sync_together123_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist10_sync_together123_aunroll_x_in_i_valid_2(DELAY,391)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together123_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist10_sync_together123_aunroll_x_in_i_valid_2_q <= $unsigned(redist9_sync_together123_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist11_sync_together123_aunroll_x_in_i_valid_3(DELAY,392)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together123_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist11_sync_together123_aunroll_x_in_i_valid_3_q <= $unsigned(redist10_sync_together123_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist12_sync_together123_aunroll_x_in_i_valid_4(DELAY,393)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together123_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist12_sync_together123_aunroll_x_in_i_valid_4_q <= $unsigned(redist11_sync_together123_aunroll_x_in_i_valid_3_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // leftShiftStage0Idx1Rng1_uid360_i_cleanups_shl52_gaussian0_shift_x(BITSELECT,359)@5
    assign leftShiftStage0Idx1Rng1_uid360_i_cleanups_shl52_gaussian0_shift_x_in = redist24_i_llvm_fpga_pop_i2_cleanups51_pop40_gaussian2_out_data_out_3_q[0:0];
    assign leftShiftStage0Idx1Rng1_uid360_i_cleanups_shl52_gaussian0_shift_x_b = leftShiftStage0Idx1Rng1_uid360_i_cleanups_shl52_gaussian0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid361_i_cleanups_shl52_gaussian0_shift_x(BITJOIN,360)@5
    assign leftShiftStage0Idx1_uid361_i_cleanups_shl52_gaussian0_shift_x_q = {leftShiftStage0Idx1Rng1_uid360_i_cleanups_shl52_gaussian0_shift_x_b, GND_q};

    // leftShiftStage0_uid363_i_cleanups_shl52_gaussian0_shift_x(MUX,362)@5
    assign leftShiftStage0_uid363_i_cleanups_shl52_gaussian0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid363_i_cleanups_shl52_gaussian0_shift_x_s or redist24_i_llvm_fpga_pop_i2_cleanups51_pop40_gaussian2_out_data_out_3_q or leftShiftStage0Idx1_uid361_i_cleanups_shl52_gaussian0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid363_i_cleanups_shl52_gaussian0_shift_x_s)
            1'b0 : leftShiftStage0_uid363_i_cleanups_shl52_gaussian0_shift_x_q = redist24_i_llvm_fpga_pop_i2_cleanups51_pop40_gaussian2_out_data_out_3_q;
            1'b1 : leftShiftStage0_uid363_i_cleanups_shl52_gaussian0_shift_x_q = leftShiftStage0Idx1_uid361_i_cleanups_shl52_gaussian0_shift_x_q;
            default : leftShiftStage0_uid363_i_cleanups_shl52_gaussian0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl52_gaussian5_vt_select_1(BITSELECT,56)@5
    assign i_cleanups_shl52_gaussian5_vt_select_1_b = leftShiftStage0_uid363_i_cleanups_shl52_gaussian0_shift_x_q[1:1];

    // i_cleanups_shl52_gaussian5_vt_join(BITJOIN,55)@5
    assign i_cleanups_shl52_gaussian5_vt_join_q = {i_cleanups_shl52_gaussian5_vt_select_1_b, GND_q};

    // redist24_i_llvm_fpga_pop_i2_cleanups51_pop40_gaussian2_out_data_out_3(DELAY,405)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_llvm_fpga_pop_i2_cleanups51_pop40_gaussian2_out_data_out_3_delay_0 <= '0;
            redist24_i_llvm_fpga_pop_i2_cleanups51_pop40_gaussian2_out_data_out_3_delay_1 <= '0;
            redist24_i_llvm_fpga_pop_i2_cleanups51_pop40_gaussian2_out_data_out_3_q <= '0;
        end
        else
        begin
            redist24_i_llvm_fpga_pop_i2_cleanups51_pop40_gaussian2_out_data_out_3_delay_0 <= $unsigned(i_llvm_fpga_pop_i2_cleanups51_pop40_gaussian2_out_data_out);
            redist24_i_llvm_fpga_pop_i2_cleanups51_pop40_gaussian2_out_data_out_3_delay_1 <= redist24_i_llvm_fpga_pop_i2_cleanups51_pop40_gaussian2_out_data_out_3_delay_0;
            redist24_i_llvm_fpga_pop_i2_cleanups51_pop40_gaussian2_out_data_out_3_q <= redist24_i_llvm_fpga_pop_i2_cleanups51_pop40_gaussian2_out_data_out_3_delay_1;
        end
    end

    // i_first_cleanup_xor54_gaussian4(LOGICAL,59)@2
    assign i_first_cleanup_xor54_gaussian4_q = i_first_cleanup53_gaussian3_sel_x_b ^ VCC_q;

    // redist34_i_first_cleanup_xor54_gaussian4_q_3(DELAY,415)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_first_cleanup_xor54_gaussian4_q_3_delay_0 <= '0;
            redist34_i_first_cleanup_xor54_gaussian4_q_3_delay_1 <= '0;
            redist34_i_first_cleanup_xor54_gaussian4_q_3_q <= '0;
        end
        else
        begin
            redist34_i_first_cleanup_xor54_gaussian4_q_3_delay_0 <= $unsigned(i_first_cleanup_xor54_gaussian4_q);
            redist34_i_first_cleanup_xor54_gaussian4_q_3_delay_1 <= redist34_i_first_cleanup_xor54_gaussian4_q_3_delay_0;
            redist34_i_first_cleanup_xor54_gaussian4_q_3_q <= redist34_i_first_cleanup_xor54_gaussian4_q_3_delay_1;
        end
    end

    // i_notcmp44_gaussian45(LOGICAL,113)@5
    assign i_notcmp44_gaussian45_q = i_unnamed_gaussian44_q ^ VCC_q;

    // i_or55_gaussian47(LOGICAL,114)@5
    assign i_or55_gaussian47_q = i_notcmp44_gaussian45_q | redist34_i_first_cleanup_xor54_gaussian4_q_3_q;

    // i_next_cleanups56_gaussian48(MUX,109)@5
    assign i_next_cleanups56_gaussian48_s = i_or55_gaussian47_q;
    always @(i_next_cleanups56_gaussian48_s or redist24_i_llvm_fpga_pop_i2_cleanups51_pop40_gaussian2_out_data_out_3_q or i_cleanups_shl52_gaussian5_vt_join_q)
    begin
        unique case (i_next_cleanups56_gaussian48_s)
            1'b0 : i_next_cleanups56_gaussian48_q = redist24_i_llvm_fpga_pop_i2_cleanups51_pop40_gaussian2_out_data_out_3_q;
            1'b1 : i_next_cleanups56_gaussian48_q = i_cleanups_shl52_gaussian5_vt_join_q;
            default : i_next_cleanups56_gaussian48_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups51_push40_gaussian49(BLACKBOX,100)@5
    // out out_feedback_out_40@20000000
    // out out_feedback_valid_out_40@20000000
    gaussian_i_llvm_fpga_push_i2_cleanups51_push40_0 thei_llvm_fpga_push_i2_cleanups51_push40_gaussian49 (
        .in_data_in(i_next_cleanups56_gaussian48_q),
        .in_feedback_stall_in_40(i_llvm_fpga_pop_i2_cleanups51_pop40_gaussian2_out_feedback_stall_out_40),
        .in_keep_going48(i_llvm_fpga_pipeline_keep_going48_gaussian6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(redist12_sync_together123_aunroll_x_in_i_valid_4_q),
        .out_data_out(),
        .out_feedback_out_40(i_llvm_fpga_push_i2_cleanups51_push40_gaussian49_out_feedback_out_40),
        .out_feedback_valid_out_40(i_llvm_fpga_push_i2_cleanups51_push40_gaussian49_out_feedback_valid_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together123_aunroll_x_in_c0_eni7_1_tpl_1(DELAY,381)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together123_aunroll_x_in_c0_eni7_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together123_aunroll_x_in_c0_eni7_1_tpl_1_q <= $unsigned(in_c0_eni7_1_tpl);
        end
    end

    // c_i2_188(CONSTANT,39)
    assign c_i2_188_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups51_pop40_gaussian2(BLACKBOX,88)@2
    // out out_feedback_stall_out_40@20000000
    gaussian_i_llvm_fpga_pop_i2_cleanups51_pop40_0 thei_llvm_fpga_pop_i2_cleanups51_pop40_gaussian2 (
        .in_data_in(c_i2_188_q),
        .in_dir(redist0_sync_together123_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_40(i_llvm_fpga_push_i2_cleanups51_push40_gaussian49_out_feedback_out_40),
        .in_feedback_valid_in_40(i_llvm_fpga_push_i2_cleanups51_push40_gaussian49_out_feedback_valid_out_40),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist9_sync_together123_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups51_pop40_gaussian2_out_data_out),
        .out_feedback_stall_out_40(i_llvm_fpga_pop_i2_cleanups51_pop40_gaussian2_out_feedback_stall_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup53_gaussian3_sel_x(BITSELECT,201)@2
    assign i_first_cleanup53_gaussian3_sel_x_b = i_llvm_fpga_pop_i2_cleanups51_pop40_gaussian2_out_data_out[0:0];

    // redist16_i_first_cleanup53_gaussian3_sel_x_b_3(DELAY,397)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_first_cleanup53_gaussian3_sel_x_b_3_delay_0 <= '0;
            redist16_i_first_cleanup53_gaussian3_sel_x_b_3_delay_1 <= '0;
            redist16_i_first_cleanup53_gaussian3_sel_x_b_3_q <= '0;
        end
        else
        begin
            redist16_i_first_cleanup53_gaussian3_sel_x_b_3_delay_0 <= $unsigned(i_first_cleanup53_gaussian3_sel_x_b);
            redist16_i_first_cleanup53_gaussian3_sel_x_b_3_delay_1 <= redist16_i_first_cleanup53_gaussian3_sel_x_b_3_delay_0;
            redist16_i_first_cleanup53_gaussian3_sel_x_b_3_q <= redist16_i_first_cleanup53_gaussian3_sel_x_b_3_delay_1;
        end
    end

    // c_i6_193(CONSTANT,42)
    assign c_i6_193_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next11_gaussian41(ADD,61)@5
    assign i_fpga_indvars_iv_next11_gaussian41_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv10_pop36_gaussian38_out_data_out};
    assign i_fpga_indvars_iv_next11_gaussian41_b = {1'b0, c_i6_193_q};
    assign i_fpga_indvars_iv_next11_gaussian41_o = $unsigned(i_fpga_indvars_iv_next11_gaussian41_a) + $unsigned(i_fpga_indvars_iv_next11_gaussian41_b);
    assign i_fpga_indvars_iv_next11_gaussian41_q = i_fpga_indvars_iv_next11_gaussian41_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next11_gaussian41_sel_x(BITSELECT,125)@5
    assign bgTrunc_i_fpga_indvars_iv_next11_gaussian41_sel_x_b = i_fpga_indvars_iv_next11_gaussian41_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv10_push36_gaussian42(BLACKBOX,105)@5
    // out out_feedback_out_36@20000000
    // out out_feedback_valid_out_36@20000000
    gaussian_i_llvm_fpga_push_i6_fpga_indvars_iv10_push36_0 thei_llvm_fpga_push_i6_fpga_indvars_iv10_push36_gaussian42 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next11_gaussian41_sel_x_b),
        .in_feedback_stall_in_36(i_llvm_fpga_pop_i6_fpga_indvars_iv10_pop36_gaussian38_out_feedback_stall_out_36),
        .in_keep_going48(i_llvm_fpga_pipeline_keep_going48_gaussian6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(redist12_sync_together123_aunroll_x_in_i_valid_4_q),
        .out_data_out(),
        .out_feedback_out_36(i_llvm_fpga_push_i6_fpga_indvars_iv10_push36_gaussian42_out_feedback_out_36),
        .out_feedback_valid_out_36(i_llvm_fpga_push_i6_fpga_indvars_iv10_push36_gaussian42_out_feedback_valid_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_1791(CONSTANT,41)
    assign c_i6_1791_q = $unsigned(6'b010001);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv10_pop36_gaussian38(BLACKBOX,93)@5
    // out out_feedback_stall_out_36@20000000
    gaussian_i_llvm_fpga_pop_i6_fpga_indvars_iv10_pop36_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv10_pop36_gaussian38 (
        .in_data_in(c_i6_1791_q),
        .in_dir(redist2_sync_together123_aunroll_x_in_c0_eni7_1_tpl_4_q),
        .in_feedback_in_36(i_llvm_fpga_push_i6_fpga_indvars_iv10_push36_gaussian42_out_feedback_out_36),
        .in_feedback_valid_in_36(i_llvm_fpga_push_i6_fpga_indvars_iv10_push36_gaussian42_out_feedback_valid_out_36),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist12_sync_together123_aunroll_x_in_i_valid_4_q),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv10_pop36_gaussian38_out_data_out),
        .out_feedback_stall_out_36(i_llvm_fpga_pop_i6_fpga_indvars_iv10_pop36_gaussian38_out_feedback_stall_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond12_gaussian39_cmp_nsign(LOGICAL,248)@5
    assign i_exitcond12_gaussian39_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv10_pop36_gaussian38_out_data_out[5:5]));

    // i_llvm_fpga_ffwd_dest_i1_cmp193334_gaussian43(BLACKBOX,76)@5
    gaussian_i_llvm_fpga_ffwd_dest_i1_cmp193334_0 thei_llvm_fpga_ffwd_dest_i1_cmp193334_gaussian43 (
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist12_sync_together123_aunroll_x_in_i_valid_4_q),
        .out_dest_data_out_8_0(i_llvm_fpga_ffwd_dest_i1_cmp193334_gaussian43_out_dest_data_out_8_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_gaussian44(LOGICAL,117)@5
    assign i_unnamed_gaussian44_q = i_llvm_fpga_ffwd_dest_i1_cmp193334_gaussian43_out_dest_data_out_8_0 & i_exitcond12_gaussian39_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond58_gaussian46(BLACKBOX,98)@5
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    gaussian_i_llvm_fpga_push_i1_notexitcond58_0 thei_llvm_fpga_push_i1_notexitcond58_gaussian46 (
        .in_data_in(i_unnamed_gaussian44_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pipeline_keep_going48_gaussian6_out_not_exitcond_stall_out),
        .in_first_cleanup53(redist16_i_first_cleanup53_gaussian3_sel_x_b_3_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist12_sync_together123_aunroll_x_in_i_valid_4_q),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i1_notexitcond58_gaussian46_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i1_notexitcond58_gaussian46_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,215)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist11_sync_together123_aunroll_x_in_i_valid_3_q);
        end
    end

    // rightShiftStage0Idx1Rng1_uid367_i_next_initerations47_gaussian0_shift_x(BITSELECT,366)@5
    assign rightShiftStage0Idx1Rng1_uid367_i_next_initerations47_gaussian0_shift_x_b = i_llvm_fpga_pop_i2_initerations46_pop39_gaussian7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid369_i_next_initerations47_gaussian0_shift_x(BITJOIN,368)@5
    assign rightShiftStage0Idx1_uid369_i_next_initerations47_gaussian0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid367_i_next_initerations47_gaussian0_shift_x_b};

    // valid_fanout_reg1(REG,213)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist11_sync_together123_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg2(REG,214)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist11_sync_together123_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i2_initerations46_push39_gaussian9(BLACKBOX,101)@5
    // out out_feedback_out_39@20000000
    // out out_feedback_valid_out_39@20000000
    gaussian_i_llvm_fpga_push_i2_initerations46_push39_0 thei_llvm_fpga_push_i2_initerations46_push39_gaussian9 (
        .in_data_in(i_next_initerations47_gaussian8_vt_join_q),
        .in_feedback_stall_in_39(i_llvm_fpga_pop_i2_initerations46_pop39_gaussian7_out_feedback_stall_out_39),
        .in_keep_going48(i_llvm_fpga_pipeline_keep_going48_gaussian6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_39(i_llvm_fpga_push_i2_initerations46_push39_gaussian9_out_feedback_out_39),
        .out_feedback_valid_out_39(i_llvm_fpga_push_i2_initerations46_push39_gaussian9_out_feedback_valid_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations46_pop39_gaussian7(BLACKBOX,89)@5
    // out out_feedback_stall_out_39@20000000
    gaussian_i_llvm_fpga_pop_i2_initerations46_pop39_0 thei_llvm_fpga_pop_i2_initerations46_pop39_gaussian7 (
        .in_data_in(c_i2_188_q),
        .in_dir(redist2_sync_together123_aunroll_x_in_c0_eni7_1_tpl_4_q),
        .in_feedback_in_39(i_llvm_fpga_push_i2_initerations46_push39_gaussian9_out_feedback_out_39),
        .in_feedback_valid_in_39(i_llvm_fpga_push_i2_initerations46_push39_gaussian9_out_feedback_valid_out_39),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations46_pop39_gaussian7_out_data_out),
        .out_feedback_stall_out_39(i_llvm_fpga_pop_i2_initerations46_pop39_gaussian7_out_feedback_stall_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid371_i_next_initerations47_gaussian0_shift_x(MUX,370)@5
    assign rightShiftStage0_uid371_i_next_initerations47_gaussian0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid371_i_next_initerations47_gaussian0_shift_x_s or i_llvm_fpga_pop_i2_initerations46_pop39_gaussian7_out_data_out or rightShiftStage0Idx1_uid369_i_next_initerations47_gaussian0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid371_i_next_initerations47_gaussian0_shift_x_s)
            1'b0 : rightShiftStage0_uid371_i_next_initerations47_gaussian0_shift_x_q = i_llvm_fpga_pop_i2_initerations46_pop39_gaussian7_out_data_out;
            1'b1 : rightShiftStage0_uid371_i_next_initerations47_gaussian0_shift_x_q = rightShiftStage0Idx1_uid369_i_next_initerations47_gaussian0_shift_x_q;
            default : rightShiftStage0_uid371_i_next_initerations47_gaussian0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations47_gaussian8_vt_select_0(BITSELECT,112)@5
    assign i_next_initerations47_gaussian8_vt_select_0_b = rightShiftStage0_uid371_i_next_initerations47_gaussian0_shift_x_q[0:0];

    // i_next_initerations47_gaussian8_vt_join(BITJOIN,111)@5
    assign i_next_initerations47_gaussian8_vt_join_q = {GND_q, i_next_initerations47_gaussian8_vt_select_0_b};

    // i_last_initeration49_gaussian10_sel_x(BITSELECT,205)@5
    assign i_last_initeration49_gaussian10_sel_x_b = i_next_initerations47_gaussian8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration50_gaussian11(BLACKBOX,94)@5
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    gaussian_i_llvm_fpga_push_i1_lastiniteration50_0 thei_llvm_fpga_push_i1_lastiniteration50_gaussian11 (
        .in_data_in(i_last_initeration49_gaussian10_sel_x_b),
        .in_feedback_stall_in_6(i_llvm_fpga_pipeline_keep_going48_gaussian6_out_initeration_stall_out),
        .in_keep_going48(i_llvm_fpga_pipeline_keep_going48_gaussian6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i1_lastiniteration50_gaussian11_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i1_lastiniteration50_gaussian11_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together123_aunroll_x_in_c0_eni7_1_tpl_3(DELAY,382)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together123_aunroll_x_in_c0_eni7_1_tpl_3_delay_0 <= '0;
            redist1_sync_together123_aunroll_x_in_c0_eni7_1_tpl_3_q <= '0;
        end
        else
        begin
            redist1_sync_together123_aunroll_x_in_c0_eni7_1_tpl_3_delay_0 <= $unsigned(redist0_sync_together123_aunroll_x_in_c0_eni7_1_tpl_1_q);
            redist1_sync_together123_aunroll_x_in_c0_eni7_1_tpl_3_q <= redist1_sync_together123_aunroll_x_in_c0_eni7_1_tpl_3_delay_0;
        end
    end

    // redist2_sync_together123_aunroll_x_in_c0_eni7_1_tpl_4(DELAY,383)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together123_aunroll_x_in_c0_eni7_1_tpl_4_q <= '0;
        end
        else
        begin
            redist2_sync_together123_aunroll_x_in_c0_eni7_1_tpl_4_q <= $unsigned(redist1_sync_together123_aunroll_x_in_c0_eni7_1_tpl_3_q);
        end
    end

    // i_llvm_fpga_pipeline_keep_going48_gaussian6(BLACKBOX,83)@5
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    gaussian_i_llvm_fpga_pipeline_keep_going48_0 thei_llvm_fpga_pipeline_keep_going48_gaussian6 (
        .in_data_in(redist2_sync_together123_aunroll_x_in_c0_eni7_1_tpl_4_q),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration50_gaussian11_out_feedback_out_6),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration50_gaussian11_out_feedback_valid_out_6),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond58_gaussian46_out_feedback_out_7),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond58_gaussian46_out_feedback_valid_out_7),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(redist12_sync_together123_aunroll_x_in_i_valid_4_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going48_gaussian6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going48_gaussian6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going48_gaussian6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going48_gaussian6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going48_gaussian6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going48_gaussian6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,44)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_gaussian6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going48_gaussian6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_gaussian6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going48_gaussian6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,120)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going48_gaussian6_out_pipeline_valid_out;

    // valid_fanout_reg8(REG,220)@1 + 1
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

    // valid_fanout_reg6(REG,218)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i1_cmp193336_gaussian15(BLACKBOX,77)@2
    gaussian_i_llvm_fpga_ffwd_dest_i1_cmp193336_0 thei_llvm_fpga_ffwd_dest_i1_cmp193336_gaussian15 (
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_8_0(i_llvm_fpga_ffwd_dest_i1_cmp193336_gaussian15_out_dest_data_out_8_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_gaussian16(LOGICAL,116)@2
    assign i_unnamed_gaussian16_q = i_llvm_fpga_ffwd_dest_i1_cmp193336_gaussian15_out_dest_data_out_8_0 ^ VCC_q;

    // i_first_cleanup_xor54_or_gaussian20(LOGICAL,60)@2
    assign i_first_cleanup_xor54_or_gaussian20_q = i_unnamed_gaussian16_q | i_first_cleanup_xor54_gaussian4_q;

    // c_gaussian_c_pmem(CONSTANT,7)
    assign c_gaussian_c_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx314_gaussian0_upper_bits_x_merged_bit_select(BITSELECT,376)@2
    assign i_arrayidx314_gaussian0_upper_bits_x_merged_bit_select_b = c_gaussian_c_pmem_q[63:7];
    assign i_arrayidx314_gaussian0_upper_bits_x_merged_bit_select_c = c_gaussian_c_pmem_q[6:0];

    // i_idxprom26_gaussian14_vt_const_63(CONSTANT,63)
    assign i_idxprom26_gaussian14_vt_const_63_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg7(REG,219)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_j_03529_gaussian17(BLACKBOX,78)@2
    gaussian_i_llvm_fpga_ffwd_dest_i32_j_03529_0 thei_llvm_fpga_ffwd_dest_i32_j_03529_gaussian17 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i32_j_03529_gaussian17_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom30_gaussian18_sel_x(BITSELECT,204)@2
    assign i_idxprom30_gaussian18_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_ffwd_dest_i32_j_03529_gaussian17_out_dest_data_out_3_0[31:0]};

    // i_idxprom30_gaussian18_vt_select_31(BITSELECT,73)@2
    assign i_idxprom30_gaussian18_vt_select_31_b = i_idxprom30_gaussian18_sel_x_b[31:0];

    // i_idxprom30_gaussian18_vt_join(BITJOIN,72)@2
    assign i_idxprom30_gaussian18_vt_join_q = {i_idxprom26_gaussian14_vt_const_63_q, i_idxprom30_gaussian18_vt_select_31_b};

    // i_arrayidx314_gaussian0_dupName_0_trunc_sel_x(BITSELECT,171)@2
    assign i_arrayidx314_gaussian0_dupName_0_trunc_sel_x_b = i_idxprom30_gaussian18_vt_join_q[6:0];

    // i_arrayidx314_gaussian0_narrow_x(BITSELECT,164)@2
    assign i_arrayidx314_gaussian0_narrow_x_b = i_arrayidx314_gaussian0_dupName_0_trunc_sel_x_b[4:0];

    // i_arrayidx314_gaussian0_shift_join_x(BITJOIN,165)@2
    assign i_arrayidx314_gaussian0_shift_join_x_q = {i_arrayidx314_gaussian0_narrow_x_b, i_arrayidx295_gaussian24_vt_const_1_q};

    // i_arrayidx314_gaussian0_add_x(ADD,161)@2
    assign i_arrayidx314_gaussian0_add_x_a = {1'b0, i_arrayidx314_gaussian0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx314_gaussian0_add_x_b = {1'b0, i_arrayidx314_gaussian0_shift_join_x_q};
    assign i_arrayidx314_gaussian0_add_x_o = $unsigned(i_arrayidx314_gaussian0_add_x_a) + $unsigned(i_arrayidx314_gaussian0_add_x_b);
    assign i_arrayidx314_gaussian0_add_x_q = i_arrayidx314_gaussian0_add_x_o[7:0];

    // i_arrayidx314_gaussian0_dupName_2_trunc_sel_x(BITSELECT,172)@2
    assign i_arrayidx314_gaussian0_dupName_2_trunc_sel_x_b = i_arrayidx314_gaussian0_add_x_q[6:0];

    // i_arrayidx314_gaussian0_append_upper_bits_x(BITJOIN,162)@2
    assign i_arrayidx314_gaussian0_append_upper_bits_x_q = {i_arrayidx314_gaussian0_upper_bits_x_merged_bit_select_b, i_arrayidx314_gaussian0_dupName_2_trunc_sel_x_b};

    // i_arrayidx314_gaussian19_vt_select_63(BITSELECT,50)@2
    assign i_arrayidx314_gaussian19_vt_select_63_b = i_arrayidx314_gaussian0_append_upper_bits_x_q[63:2];

    // i_arrayidx295_gaussian24_vt_const_1(CONSTANT,45)
    assign i_arrayidx295_gaussian24_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx314_gaussian19_vt_join(BITJOIN,49)@2
    assign i_arrayidx314_gaussian19_vt_join_q = {i_arrayidx314_gaussian19_vt_select_63_b, i_arrayidx295_gaussian24_vt_const_1_q};

    // i_llvm_fpga_mem_lm1_gaussian21(BLACKBOX,80)@2
    // in in_i_stall@20000000
    // out out_lm1_gaussian_avm_address@20000000
    // out out_lm1_gaussian_avm_burstcount@20000000
    // out out_lm1_gaussian_avm_byteenable@20000000
    // out out_lm1_gaussian_avm_enable@20000000
    // out out_lm1_gaussian_avm_read@20000000
    // out out_lm1_gaussian_avm_write@20000000
    // out out_lm1_gaussian_avm_writedata@20000000
    // out out_o_readdata@6
    // out out_o_stall@5
    // out out_o_valid@6
    gaussian_i_llvm_fpga_mem_lm1_0 thei_llvm_fpga_mem_lm1_gaussian21 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx314_gaussian19_vt_join_q),
        .in_i_predicate(i_first_cleanup_xor54_or_gaussian20_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg8_q),
        .in_lm1_gaussian_avm_readdata(in_lm1_gaussian_avm_readdata),
        .in_lm1_gaussian_avm_readdatavalid(in_lm1_gaussian_avm_readdatavalid),
        .in_lm1_gaussian_avm_waitrequest(in_lm1_gaussian_avm_waitrequest),
        .in_lm1_gaussian_avm_writeack(in_lm1_gaussian_avm_writeack),
        .out_lm1_gaussian_avm_address(i_llvm_fpga_mem_lm1_gaussian21_out_lm1_gaussian_avm_address),
        .out_lm1_gaussian_avm_burstcount(i_llvm_fpga_mem_lm1_gaussian21_out_lm1_gaussian_avm_burstcount),
        .out_lm1_gaussian_avm_byteenable(i_llvm_fpga_mem_lm1_gaussian21_out_lm1_gaussian_avm_byteenable),
        .out_lm1_gaussian_avm_enable(i_llvm_fpga_mem_lm1_gaussian21_out_lm1_gaussian_avm_enable),
        .out_lm1_gaussian_avm_read(i_llvm_fpga_mem_lm1_gaussian21_out_lm1_gaussian_avm_read),
        .out_lm1_gaussian_avm_write(i_llvm_fpga_mem_lm1_gaussian21_out_lm1_gaussian_avm_write),
        .out_lm1_gaussian_avm_writedata(i_llvm_fpga_mem_lm1_gaussian21_out_lm1_gaussian_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm1_gaussian21_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,131)
    assign out_lm1_gaussian_avm_address = i_llvm_fpga_mem_lm1_gaussian21_out_lm1_gaussian_avm_address;
    assign out_lm1_gaussian_avm_enable = i_llvm_fpga_mem_lm1_gaussian21_out_lm1_gaussian_avm_enable;
    assign out_lm1_gaussian_avm_read = i_llvm_fpga_mem_lm1_gaussian21_out_lm1_gaussian_avm_read;
    assign out_lm1_gaussian_avm_write = i_llvm_fpga_mem_lm1_gaussian21_out_lm1_gaussian_avm_write;
    assign out_lm1_gaussian_avm_writedata = i_llvm_fpga_mem_lm1_gaussian21_out_lm1_gaussian_avm_writedata;
    assign out_lm1_gaussian_avm_byteenable = i_llvm_fpga_mem_lm1_gaussian21_out_lm1_gaussian_avm_byteenable;
    assign out_lm1_gaussian_avm_burstcount = i_llvm_fpga_mem_lm1_gaussian21_out_lm1_gaussian_avm_burstcount;

    // redist13_sync_together123_aunroll_x_in_i_valid_5(DELAY,394)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together123_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist13_sync_together123_aunroll_x_in_i_valid_5_q <= $unsigned(redist12_sync_together123_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg12(REG,224)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist13_sync_together123_aunroll_x_in_i_valid_5_q);
        end
    end

    // redist31_i_first_cleanup_xor54_or_gaussian20_q_3(DELAY,412)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_first_cleanup_xor54_or_gaussian20_q_3_delay_0 <= '0;
            redist31_i_first_cleanup_xor54_or_gaussian20_q_3_delay_1 <= '0;
            redist31_i_first_cleanup_xor54_or_gaussian20_q_3_q <= '0;
        end
        else
        begin
            redist31_i_first_cleanup_xor54_or_gaussian20_q_3_delay_0 <= $unsigned(i_first_cleanup_xor54_or_gaussian20_q);
            redist31_i_first_cleanup_xor54_or_gaussian20_q_3_delay_1 <= redist31_i_first_cleanup_xor54_or_gaussian20_q_3_delay_0;
            redist31_i_first_cleanup_xor54_or_gaussian20_q_3_q <= redist31_i_first_cleanup_xor54_or_gaussian20_q_3_delay_1;
        end
    end

    // redist32_i_first_cleanup_xor54_or_gaussian20_q_5(DELAY,413)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_first_cleanup_xor54_or_gaussian20_q_5_delay_0 <= '0;
            redist32_i_first_cleanup_xor54_or_gaussian20_q_5_q <= '0;
        end
        else
        begin
            redist32_i_first_cleanup_xor54_or_gaussian20_q_5_delay_0 <= $unsigned(redist31_i_first_cleanup_xor54_or_gaussian20_q_3_q);
            redist32_i_first_cleanup_xor54_or_gaussian20_q_5_q <= redist32_i_first_cleanup_xor54_or_gaussian20_q_5_delay_0;
        end
    end

    // valid_fanout_reg10(REG,222)@1 + 1
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

    // valid_fanout_reg11(REG,223)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist13_sync_together123_aunroll_x_in_i_valid_5_q);
        end
    end

    // redist29_i_llvm_fpga_pipeline_keep_going48_gaussian6_out_data_out_2(DELAY,410)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_llvm_fpga_pipeline_keep_going48_gaussian6_out_data_out_2_delay_0 <= '0;
            redist29_i_llvm_fpga_pipeline_keep_going48_gaussian6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist29_i_llvm_fpga_pipeline_keep_going48_gaussian6_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pipeline_keep_going48_gaussian6_out_data_out);
            redist29_i_llvm_fpga_pipeline_keep_going48_gaussian6_out_data_out_2_q <= redist29_i_llvm_fpga_pipeline_keep_going48_gaussian6_out_data_out_2_delay_0;
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_pop28102_push45_gaussian26(BLACKBOX,96)@7
    // out out_feedback_out_45@20000000
    // out out_feedback_valid_out_45@20000000
    gaussian_i_llvm_fpga_push_i1_memdep_phi_pop28102_push45_0 thei_llvm_fpga_push_i1_memdep_phi_pop28102_push45_gaussian26 (
        .in_data_in(redist28_i_llvm_fpga_pop_i1_memdep_phi_pop28102_pop45_gaussian25_out_data_out_5_q),
        .in_feedback_stall_in_45(i_llvm_fpga_pop_i1_memdep_phi_pop28102_pop45_gaussian25_out_feedback_stall_out_45),
        .in_keep_going48(redist29_i_llvm_fpga_pipeline_keep_going48_gaussian6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_45(i_llvm_fpga_push_i1_memdep_phi_pop28102_push45_gaussian26_out_feedback_out_45),
        .out_feedback_valid_out_45(i_llvm_fpga_push_i1_memdep_phi_pop28102_push45_gaussian26_out_feedback_valid_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together123_aunroll_x_in_c0_eni7_3_tpl_1(DELAY,385)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together123_aunroll_x_in_c0_eni7_3_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together123_aunroll_x_in_c0_eni7_3_tpl_1_q <= $unsigned(in_c0_eni7_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop28102_pop45_gaussian25(BLACKBOX,85)@2
    // out out_feedback_stall_out_45@20000000
    gaussian_i_llvm_fpga_pop_i1_memdep_phi_pop28102_pop45_0 thei_llvm_fpga_pop_i1_memdep_phi_pop28102_pop45_gaussian25 (
        .in_data_in(redist4_sync_together123_aunroll_x_in_c0_eni7_3_tpl_1_q),
        .in_dir(redist0_sync_together123_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_45(i_llvm_fpga_push_i1_memdep_phi_pop28102_push45_gaussian26_out_feedback_out_45),
        .in_feedback_valid_in_45(i_llvm_fpga_push_i1_memdep_phi_pop28102_push45_gaussian26_out_feedback_valid_out_45),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop28102_pop45_gaussian25_out_data_out),
        .out_feedback_stall_out_45(i_llvm_fpga_pop_i1_memdep_phi_pop28102_pop45_gaussian25_out_feedback_stall_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist27_i_llvm_fpga_pop_i1_memdep_phi_pop28102_pop45_gaussian25_out_data_out_3(DELAY,408)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_pop_i1_memdep_phi_pop28102_pop45_gaussian25_out_data_out_3_delay_0 <= '0;
            redist27_i_llvm_fpga_pop_i1_memdep_phi_pop28102_pop45_gaussian25_out_data_out_3_delay_1 <= '0;
            redist27_i_llvm_fpga_pop_i1_memdep_phi_pop28102_pop45_gaussian25_out_data_out_3_q <= '0;
        end
        else
        begin
            redist27_i_llvm_fpga_pop_i1_memdep_phi_pop28102_pop45_gaussian25_out_data_out_3_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi_pop28102_pop45_gaussian25_out_data_out);
            redist27_i_llvm_fpga_pop_i1_memdep_phi_pop28102_pop45_gaussian25_out_data_out_3_delay_1 <= redist27_i_llvm_fpga_pop_i1_memdep_phi_pop28102_pop45_gaussian25_out_data_out_3_delay_0;
            redist27_i_llvm_fpga_pop_i1_memdep_phi_pop28102_pop45_gaussian25_out_data_out_3_q <= redist27_i_llvm_fpga_pop_i1_memdep_phi_pop28102_pop45_gaussian25_out_data_out_3_delay_1;
        end
    end

    // redist28_i_llvm_fpga_pop_i1_memdep_phi_pop28102_pop45_gaussian25_out_data_out_5(DELAY,409)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_llvm_fpga_pop_i1_memdep_phi_pop28102_pop45_gaussian25_out_data_out_5_delay_0 <= '0;
            redist28_i_llvm_fpga_pop_i1_memdep_phi_pop28102_pop45_gaussian25_out_data_out_5_q <= '0;
        end
        else
        begin
            redist28_i_llvm_fpga_pop_i1_memdep_phi_pop28102_pop45_gaussian25_out_data_out_5_delay_0 <= $unsigned(redist27_i_llvm_fpga_pop_i1_memdep_phi_pop28102_pop45_gaussian25_out_data_out_3_q);
            redist28_i_llvm_fpga_pop_i1_memdep_phi_pop28102_pop45_gaussian25_out_data_out_5_q <= redist28_i_llvm_fpga_pop_i1_memdep_phi_pop28102_pop45_gaussian25_out_data_out_5_delay_0;
        end
    end

    // c_gaussian_A_pmem(CONSTANT,6)
    assign c_gaussian_A_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx295_gaussian0_upper_bits_x_merged_bit_select(BITSELECT,375)@5
    assign i_arrayidx295_gaussian0_upper_bits_x_merged_bit_select_b = c_gaussian_A_pmem_q[63:11];
    assign i_arrayidx295_gaussian0_upper_bits_x_merged_bit_select_c = c_gaussian_A_pmem_q[10:0];

    // valid_fanout_reg9(REG,221)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist11_sync_together123_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg17(REG,229)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist11_sync_together123_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_inc41_gaussian36(ADD,74)@5
    assign i_inc41_gaussian36_a = {1'b0, i_llvm_fpga_pop_i32_k_032_pop37_gaussian22_out_data_out};
    assign i_inc41_gaussian36_b = {1'b0, c_i32_190_q};
    assign i_inc41_gaussian36_o = $unsigned(i_inc41_gaussian36_a) + $unsigned(i_inc41_gaussian36_b);
    assign i_inc41_gaussian36_q = i_inc41_gaussian36_o[32:0];

    // bgTrunc_i_inc41_gaussian36_sel_x(BITSELECT,126)@5
    assign bgTrunc_i_inc41_gaussian36_sel_x_b = i_inc41_gaussian36_q[31:0];

    // i_llvm_fpga_push_i32_k_032_push37_gaussian37(BLACKBOX,104)@5
    // out out_feedback_out_37@20000000
    // out out_feedback_valid_out_37@20000000
    gaussian_i_llvm_fpga_push_i32_k_032_push37_0 thei_llvm_fpga_push_i32_k_032_push37_gaussian37 (
        .in_data_in(bgTrunc_i_inc41_gaussian36_sel_x_b),
        .in_feedback_stall_in_37(i_llvm_fpga_pop_i32_k_032_pop37_gaussian22_out_feedback_stall_out_37),
        .in_keep_going48(i_llvm_fpga_pipeline_keep_going48_gaussian6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(),
        .out_feedback_out_37(i_llvm_fpga_push_i32_k_032_push37_gaussian37_out_feedback_out_37),
        .out_feedback_valid_out_37(i_llvm_fpga_push_i32_k_032_push37_gaussian37_out_feedback_valid_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_190(CONSTANT,40)
    assign c_i32_190_q = $unsigned(32'b00000000000000000000000000000001);

    // i_llvm_fpga_pop_i32_k_032_pop37_gaussian22(BLACKBOX,92)@5
    // out out_feedback_stall_out_37@20000000
    gaussian_i_llvm_fpga_pop_i32_k_032_pop37_0 thei_llvm_fpga_pop_i32_k_032_pop37_gaussian22 (
        .in_data_in(c_i32_190_q),
        .in_dir(redist2_sync_together123_aunroll_x_in_c0_eni7_1_tpl_4_q),
        .in_feedback_in_37(i_llvm_fpga_push_i32_k_032_push37_gaussian37_out_feedback_out_37),
        .in_feedback_valid_in_37(i_llvm_fpga_push_i32_k_032_push37_gaussian37_out_feedback_valid_out_37),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i32_k_032_pop37_gaussian22_out_data_out),
        .out_feedback_stall_out_37(i_llvm_fpga_pop_i32_k_032_pop37_gaussian22_out_feedback_stall_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom28_gaussian23_sel_x(BITSELECT,203)@5
    assign i_idxprom28_gaussian23_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_k_032_pop37_gaussian22_out_data_out[31:0]};

    // i_idxprom28_gaussian23_vt_select_31(BITSELECT,69)@5
    assign i_idxprom28_gaussian23_vt_select_31_b = i_idxprom28_gaussian23_sel_x_b[31:0];

    // i_idxprom28_gaussian23_vt_join(BITJOIN,68)@5
    assign i_idxprom28_gaussian23_vt_join_q = {i_idxprom26_gaussian14_vt_const_63_q, i_idxprom28_gaussian23_vt_select_31_b};

    // i_arrayidx295_gaussian0_dupName_3_trunc_sel_x(BITSELECT,159)@5
    assign i_arrayidx295_gaussian0_dupName_3_trunc_sel_x_b = i_idxprom28_gaussian23_vt_join_q[10:0];

    // i_arrayidx295_gaussian0_narrow_x(BITSELECT,142)@5
    assign i_arrayidx295_gaussian0_narrow_x_b = i_arrayidx295_gaussian0_dupName_3_trunc_sel_x_b[8:0];

    // i_arrayidx295_gaussian0_shift_join_x(BITJOIN,143)@5
    assign i_arrayidx295_gaussian0_shift_join_x_q = {i_arrayidx295_gaussian0_narrow_x_b, i_arrayidx295_gaussian24_vt_const_1_q};

    // i_arrayidx295_gaussian0_mult_multconst_x(CONSTANT,154)
    assign i_arrayidx295_gaussian0_mult_multconst_x_q = $unsigned(4'b0000);

    // valid_fanout_reg4(REG,216)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist10_sync_together123_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg5(REG,217)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist11_sync_together123_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist22_i_llvm_fpga_pop_i32_i_034_replace_phi100_pop42_gaussian12_out_data_out_1(DELAY,403)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_pop_i32_i_034_replace_phi100_pop42_gaussian12_out_data_out_1_q <= '0;
        end
        else
        begin
            redist22_i_llvm_fpga_pop_i32_i_034_replace_phi100_pop42_gaussian12_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_i_034_replace_phi100_pop42_gaussian12_out_data_out);
        end
    end

    // i_llvm_fpga_push_i32_i_034_replace_phi100_push42_gaussian13(BLACKBOX,103)@5
    // out out_feedback_out_42@20000000
    // out out_feedback_valid_out_42@20000000
    gaussian_i_llvm_fpga_push_i32_i_034_replace_phi100_push42_0 thei_llvm_fpga_push_i32_i_034_replace_phi100_push42_gaussian13 (
        .in_data_in(redist22_i_llvm_fpga_pop_i32_i_034_replace_phi100_pop42_gaussian12_out_data_out_1_q),
        .in_feedback_stall_in_42(i_llvm_fpga_pop_i32_i_034_replace_phi100_pop42_gaussian12_out_feedback_stall_out_42),
        .in_keep_going48(i_llvm_fpga_pipeline_keep_going48_gaussian6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_42(i_llvm_fpga_push_i32_i_034_replace_phi100_push42_gaussian13_out_feedback_out_42),
        .out_feedback_valid_out_42(i_llvm_fpga_push_i32_i_034_replace_phi100_push42_gaussian13_out_feedback_valid_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together123_aunroll_x_in_c0_eni7_2_tpl_3(DELAY,384)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together123_aunroll_x_in_c0_eni7_2_tpl_3_delay_0 <= '0;
            redist3_sync_together123_aunroll_x_in_c0_eni7_2_tpl_3_q <= '0;
        end
        else
        begin
            redist3_sync_together123_aunroll_x_in_c0_eni7_2_tpl_3_delay_0 <= $unsigned(in_c0_eni7_2_tpl);
            redist3_sync_together123_aunroll_x_in_c0_eni7_2_tpl_3_q <= redist3_sync_together123_aunroll_x_in_c0_eni7_2_tpl_3_delay_0;
        end
    end

    // redist3_sync_together123_aunroll_x_in_c0_eni7_2_tpl_3_outputreg0(DELAY,418)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together123_aunroll_x_in_c0_eni7_2_tpl_3_outputreg0_q <= '0;
        end
        else
        begin
            redist3_sync_together123_aunroll_x_in_c0_eni7_2_tpl_3_outputreg0_q <= $unsigned(redist3_sync_together123_aunroll_x_in_c0_eni7_2_tpl_3_q);
        end
    end

    // i_llvm_fpga_pop_i32_i_034_replace_phi100_pop42_gaussian12(BLACKBOX,91)@4
    // out out_feedback_stall_out_42@20000000
    gaussian_i_llvm_fpga_pop_i32_i_034_replace_phi100_pop42_0 thei_llvm_fpga_pop_i32_i_034_replace_phi100_pop42_gaussian12 (
        .in_data_in(redist3_sync_together123_aunroll_x_in_c0_eni7_2_tpl_3_outputreg0_q),
        .in_dir(redist1_sync_together123_aunroll_x_in_c0_eni7_1_tpl_3_q),
        .in_feedback_in_42(i_llvm_fpga_push_i32_i_034_replace_phi100_push42_gaussian13_out_feedback_out_42),
        .in_feedback_valid_in_42(i_llvm_fpga_push_i32_i_034_replace_phi100_push42_gaussian13_out_feedback_valid_out_42),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_034_replace_phi100_pop42_gaussian12_out_data_out),
        .out_feedback_stall_out_42(i_llvm_fpga_pop_i32_i_034_replace_phi100_pop42_gaussian12_out_feedback_stall_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom26_gaussian14_sel_x(BITSELECT,202)@4
    assign i_idxprom26_gaussian14_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_034_replace_phi100_pop42_gaussian12_out_data_out[31:0]};

    // i_idxprom26_gaussian14_vt_select_31(BITSELECT,65)@4
    assign i_idxprom26_gaussian14_vt_select_31_b = i_idxprom26_gaussian14_sel_x_b[31:0];

    // i_idxprom26_gaussian14_vt_join(BITJOIN,64)@4
    assign i_idxprom26_gaussian14_vt_join_q = {i_idxprom26_gaussian14_vt_const_63_q, i_idxprom26_gaussian14_vt_select_31_b};

    // i_arrayidx295_gaussian0_dupName_0_trunc_sel_x(BITSELECT,156)@4
    assign i_arrayidx295_gaussian0_dupName_0_trunc_sel_x_b = i_idxprom26_gaussian14_vt_join_q[10:0];

    // addsumAHighB_uid274_i_arrayidx295_gaussian0_mult_x(ADD,273)@4
    assign addsumAHighB_uid274_i_arrayidx295_gaussian0_mult_x_a = {1'b0, i_arrayidx295_gaussian0_dupName_0_trunc_sel_x_b};
    assign addsumAHighB_uid274_i_arrayidx295_gaussian0_mult_x_b = {3'b000, lowRangeB_uid272_i_arrayidx295_gaussian0_mult_x_merged_bit_select_c};
    assign addsumAHighB_uid274_i_arrayidx295_gaussian0_mult_x_o = $unsigned(addsumAHighB_uid274_i_arrayidx295_gaussian0_mult_x_a) + $unsigned(addsumAHighB_uid274_i_arrayidx295_gaussian0_mult_x_b);
    assign addsumAHighB_uid274_i_arrayidx295_gaussian0_mult_x_q = addsumAHighB_uid274_i_arrayidx295_gaussian0_mult_x_o[11:0];

    // lowRangeB_uid272_i_arrayidx295_gaussian0_mult_x_merged_bit_select(BITSELECT,379)@4
    assign lowRangeB_uid272_i_arrayidx295_gaussian0_mult_x_merged_bit_select_b = i_arrayidx295_gaussian0_dupName_0_trunc_sel_x_b[1:0];
    assign lowRangeB_uid272_i_arrayidx295_gaussian0_mult_x_merged_bit_select_c = i_arrayidx295_gaussian0_dupName_0_trunc_sel_x_b[10:2];

    // add_uid275_i_arrayidx295_gaussian0_mult_x(BITJOIN,274)@4
    assign add_uid275_i_arrayidx295_gaussian0_mult_x_q = {addsumAHighB_uid274_i_arrayidx295_gaussian0_mult_x_q, lowRangeB_uid272_i_arrayidx295_gaussian0_mult_x_merged_bit_select_b};

    // sR_mergedSignalTM_uid280_i_arrayidx295_gaussian0_mult_x(BITJOIN,279)@4
    assign sR_mergedSignalTM_uid280_i_arrayidx295_gaussian0_mult_x_q = {add_uid275_i_arrayidx295_gaussian0_mult_x_q, i_arrayidx295_gaussian0_mult_multconst_x_q};

    // i_arrayidx295_gaussian0_mult_extender_x(BITJOIN,153)@4
    assign i_arrayidx295_gaussian0_mult_extender_x_q = {i_arrayidx295_gaussian0_mult_multconst_x_q, sR_mergedSignalTM_uid280_i_arrayidx295_gaussian0_mult_x_q};

    // i_arrayidx295_gaussian0_dupName_1_trunc_sel_x(BITSELECT,157)@4
    assign i_arrayidx295_gaussian0_dupName_1_trunc_sel_x_b = i_arrayidx295_gaussian0_mult_extender_x_q[10:0];

    // redist19_i_arrayidx295_gaussian0_dupName_1_trunc_sel_x_b_1(DELAY,400)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_arrayidx295_gaussian0_dupName_1_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist19_i_arrayidx295_gaussian0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx295_gaussian0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx295_gaussian0_add_x(ADD,137)@5
    assign i_arrayidx295_gaussian0_add_x_a = {1'b0, i_arrayidx295_gaussian0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx295_gaussian0_add_x_b = {1'b0, redist19_i_arrayidx295_gaussian0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx295_gaussian0_add_x_o = $unsigned(i_arrayidx295_gaussian0_add_x_a) + $unsigned(i_arrayidx295_gaussian0_add_x_b);
    assign i_arrayidx295_gaussian0_add_x_q = i_arrayidx295_gaussian0_add_x_o[11:0];

    // i_arrayidx295_gaussian0_dupName_2_trunc_sel_x(BITSELECT,158)@5
    assign i_arrayidx295_gaussian0_dupName_2_trunc_sel_x_b = i_arrayidx295_gaussian0_add_x_q[10:0];

    // i_arrayidx295_gaussian0_dupName_0_add_x(ADD,147)@5
    assign i_arrayidx295_gaussian0_dupName_0_add_x_a = {1'b0, i_arrayidx295_gaussian0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx295_gaussian0_dupName_0_add_x_b = {1'b0, i_arrayidx295_gaussian0_shift_join_x_q};
    assign i_arrayidx295_gaussian0_dupName_0_add_x_o = $unsigned(i_arrayidx295_gaussian0_dupName_0_add_x_a) + $unsigned(i_arrayidx295_gaussian0_dupName_0_add_x_b);
    assign i_arrayidx295_gaussian0_dupName_0_add_x_q = i_arrayidx295_gaussian0_dupName_0_add_x_o[11:0];

    // i_arrayidx295_gaussian0_dupName_5_trunc_sel_x(BITSELECT,160)@5
    assign i_arrayidx295_gaussian0_dupName_5_trunc_sel_x_b = i_arrayidx295_gaussian0_dupName_0_add_x_q[10:0];

    // i_arrayidx295_gaussian0_append_upper_bits_x(BITJOIN,138)@5
    assign i_arrayidx295_gaussian0_append_upper_bits_x_q = {i_arrayidx295_gaussian0_upper_bits_x_merged_bit_select_b, i_arrayidx295_gaussian0_dupName_5_trunc_sel_x_b};

    // i_arrayidx295_gaussian24_vt_select_63(BITSELECT,47)@5
    assign i_arrayidx295_gaussian24_vt_select_63_b = i_arrayidx295_gaussian0_append_upper_bits_x_q[63:2];

    // redist35_i_arrayidx295_gaussian24_vt_select_63_b_2(DELAY,416)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_arrayidx295_gaussian24_vt_select_63_b_2_delay_0 <= '0;
            redist35_i_arrayidx295_gaussian24_vt_select_63_b_2_q <= '0;
        end
        else
        begin
            redist35_i_arrayidx295_gaussian24_vt_select_63_b_2_delay_0 <= $unsigned(i_arrayidx295_gaussian24_vt_select_63_b);
            redist35_i_arrayidx295_gaussian24_vt_select_63_b_2_q <= redist35_i_arrayidx295_gaussian24_vt_select_63_b_2_delay_0;
        end
    end

    // i_arrayidx295_gaussian24_vt_join(BITJOIN,46)@7
    assign i_arrayidx295_gaussian24_vt_join_q = {redist35_i_arrayidx295_gaussian24_vt_select_63_b_2_q, i_arrayidx295_gaussian24_vt_const_1_q};

    // i_llvm_fpga_mem_lm92_gaussian27(BLACKBOX,81)@7
    // in in_i_stall@20000000
    // out out_lm92_gaussian_avm_address@20000000
    // out out_lm92_gaussian_avm_burstcount@20000000
    // out out_lm92_gaussian_avm_byteenable@20000000
    // out out_lm92_gaussian_avm_enable@20000000
    // out out_lm92_gaussian_avm_read@20000000
    // out out_lm92_gaussian_avm_write@20000000
    // out out_lm92_gaussian_avm_writedata@20000000
    // out out_o_readdata@9
    // out out_o_stall@8
    // out out_o_valid@9
    gaussian_i_llvm_fpga_mem_lm92_0 thei_llvm_fpga_mem_lm92_gaussian27 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx295_gaussian24_vt_join_q),
        .in_i_dependence(redist28_i_llvm_fpga_pop_i1_memdep_phi_pop28102_pop45_gaussian25_out_data_out_5_q),
        .in_i_predicate(redist32_i_first_cleanup_xor54_or_gaussian20_q_5_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg12_q),
        .in_lm92_gaussian_avm_readdata(in_lm92_gaussian_avm_readdata),
        .in_lm92_gaussian_avm_readdatavalid(in_lm92_gaussian_avm_readdatavalid),
        .in_lm92_gaussian_avm_waitrequest(in_lm92_gaussian_avm_waitrequest),
        .in_lm92_gaussian_avm_writeack(in_lm92_gaussian_avm_writeack),
        .out_lm92_gaussian_avm_address(i_llvm_fpga_mem_lm92_gaussian27_out_lm92_gaussian_avm_address),
        .out_lm92_gaussian_avm_burstcount(i_llvm_fpga_mem_lm92_gaussian27_out_lm92_gaussian_avm_burstcount),
        .out_lm92_gaussian_avm_byteenable(i_llvm_fpga_mem_lm92_gaussian27_out_lm92_gaussian_avm_byteenable),
        .out_lm92_gaussian_avm_enable(i_llvm_fpga_mem_lm92_gaussian27_out_lm92_gaussian_avm_enable),
        .out_lm92_gaussian_avm_read(i_llvm_fpga_mem_lm92_gaussian27_out_lm92_gaussian_avm_read),
        .out_lm92_gaussian_avm_write(i_llvm_fpga_mem_lm92_gaussian27_out_lm92_gaussian_avm_write),
        .out_lm92_gaussian_avm_writedata(i_llvm_fpga_mem_lm92_gaussian27_out_lm92_gaussian_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm92_gaussian27_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,133)
    assign out_lm92_gaussian_avm_address = i_llvm_fpga_mem_lm92_gaussian27_out_lm92_gaussian_avm_address;
    assign out_lm92_gaussian_avm_enable = i_llvm_fpga_mem_lm92_gaussian27_out_lm92_gaussian_avm_enable;
    assign out_lm92_gaussian_avm_read = i_llvm_fpga_mem_lm92_gaussian27_out_lm92_gaussian_avm_read;
    assign out_lm92_gaussian_avm_write = i_llvm_fpga_mem_lm92_gaussian27_out_lm92_gaussian_avm_write;
    assign out_lm92_gaussian_avm_writedata = i_llvm_fpga_mem_lm92_gaussian27_out_lm92_gaussian_avm_writedata;
    assign out_lm92_gaussian_avm_byteenable = i_llvm_fpga_mem_lm92_gaussian27_out_lm92_gaussian_avm_byteenable;
    assign out_lm92_gaussian_avm_burstcount = i_llvm_fpga_mem_lm92_gaussian27_out_lm92_gaussian_avm_burstcount;

    // valid_fanout_reg14(REG,226)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist11_sync_together123_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg13(REG,225)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist11_sync_together123_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist14_sync_together123_aunroll_x_in_i_valid_7(DELAY,395)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together123_aunroll_x_in_i_valid_7_delay_0 <= '0;
            redist14_sync_together123_aunroll_x_in_i_valid_7_q <= '0;
        end
        else
        begin
            redist14_sync_together123_aunroll_x_in_i_valid_7_delay_0 <= $unsigned(redist13_sync_together123_aunroll_x_in_i_valid_5_q);
            redist14_sync_together123_aunroll_x_in_i_valid_7_q <= redist14_sync_together123_aunroll_x_in_i_valid_7_delay_0;
        end
    end

    // redist15_sync_together123_aunroll_x_in_i_valid_8(DELAY,396)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together123_aunroll_x_in_i_valid_8_q <= '0;
        end
        else
        begin
            redist15_sync_together123_aunroll_x_in_i_valid_8_q <= $unsigned(redist14_sync_together123_aunroll_x_in_i_valid_7_q);
        end
    end

    // valid_fanout_reg16(REG,228)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist15_sync_together123_aunroll_x_in_i_valid_8_q);
        end
    end

    // redist30_i_llvm_fpga_pipeline_keep_going48_gaussian6_out_data_out_5(DELAY,411)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_llvm_fpga_pipeline_keep_going48_gaussian6_out_data_out_5_delay_0 <= '0;
            redist30_i_llvm_fpga_pipeline_keep_going48_gaussian6_out_data_out_5_delay_1 <= '0;
            redist30_i_llvm_fpga_pipeline_keep_going48_gaussian6_out_data_out_5_q <= '0;
        end
        else
        begin
            redist30_i_llvm_fpga_pipeline_keep_going48_gaussian6_out_data_out_5_delay_0 <= $unsigned(redist29_i_llvm_fpga_pipeline_keep_going48_gaussian6_out_data_out_2_q);
            redist30_i_llvm_fpga_pipeline_keep_going48_gaussian6_out_data_out_5_delay_1 <= redist30_i_llvm_fpga_pipeline_keep_going48_gaussian6_out_data_out_5_delay_0;
            redist30_i_llvm_fpga_pipeline_keep_going48_gaussian6_out_data_out_5_q <= redist30_i_llvm_fpga_pipeline_keep_going48_gaussian6_out_data_out_5_delay_1;
        end
    end

    // i_mul_gaussian32_bs2_merged_bit_select(BITSELECT,378)@6
    assign i_mul_gaussian32_bs2_merged_bit_select_b = i_llvm_fpga_mem_lm1_gaussian21_out_o_readdata[31:18];
    assign i_mul_gaussian32_bs2_merged_bit_select_c = i_llvm_fpga_mem_lm1_gaussian21_out_o_readdata[17:0];

    // i_mul_gaussian32_bs1_merged_bit_select(BITSELECT,377)@6
    assign i_mul_gaussian32_bs1_merged_bit_select_b = i_llvm_fpga_mem_lm113_gaussian31_out_o_readdata[31:18];
    assign i_mul_gaussian32_bs1_merged_bit_select_c = i_llvm_fpga_mem_lm113_gaussian31_out_o_readdata[17:0];

    // i_mul_gaussian32_ma3_cma(CHAINMULTADD,374)@6 + 3
    assign i_mul_gaussian32_ma3_cma_reset = ~ (resetn);
    assign i_mul_gaussian32_ma3_cma_ena0 = 1'b1;
    assign i_mul_gaussian32_ma3_cma_ena1 = i_mul_gaussian32_ma3_cma_ena0;
    assign i_mul_gaussian32_ma3_cma_ena2 = i_mul_gaussian32_ma3_cma_ena0;

    assign i_mul_gaussian32_ma3_cma_a0 = i_mul_gaussian32_bs1_merged_bit_select_b;
    assign i_mul_gaussian32_ma3_cma_c0 = i_mul_gaussian32_bs2_merged_bit_select_c;
    assign i_mul_gaussian32_ma3_cma_a1 = i_mul_gaussian32_bs2_merged_bit_select_b;
    assign i_mul_gaussian32_ma3_cma_c1 = i_mul_gaussian32_bs1_merged_bit_select_c;
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
    ) i_mul_gaussian32_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_gaussian32_ma3_cma_ena2, i_mul_gaussian32_ma3_cma_ena1, i_mul_gaussian32_ma3_cma_ena0 }),
        .aclr({ i_mul_gaussian32_ma3_cma_reset, i_mul_gaussian32_ma3_cma_reset }),
        .ay(i_mul_gaussian32_ma3_cma_a1),
        .by(i_mul_gaussian32_ma3_cma_a0),
        .ax(i_mul_gaussian32_ma3_cma_c1),
        .bx(i_mul_gaussian32_ma3_cma_c0),
        .resulta(i_mul_gaussian32_ma3_cma_s0),
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
    i_mul_gaussian32_ma3_cma_delay ( .xin(i_mul_gaussian32_ma3_cma_s0), .xout(i_mul_gaussian32_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_gaussian32_ma3_cma_q = $unsigned(i_mul_gaussian32_ma3_cma_qq[32:0]);

    // i_mul_gaussian32_sums_align_1(BITSHIFT,261)@9
    assign i_mul_gaussian32_sums_align_1_qint = { i_mul_gaussian32_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul_gaussian32_sums_align_1_q = i_mul_gaussian32_sums_align_1_qint[50:0];

    // i_mul_gaussian32_im0_cma(CHAINMULTADD,372)@6 + 3
    assign i_mul_gaussian32_im0_cma_reset = ~ (resetn);
    assign i_mul_gaussian32_im0_cma_ena0 = 1'b1;
    assign i_mul_gaussian32_im0_cma_ena1 = i_mul_gaussian32_im0_cma_ena0;
    assign i_mul_gaussian32_im0_cma_ena2 = i_mul_gaussian32_im0_cma_ena0;

    assign i_mul_gaussian32_im0_cma_a0 = i_mul_gaussian32_bs1_merged_bit_select_b;
    assign i_mul_gaussian32_im0_cma_c0 = i_mul_gaussian32_bs2_merged_bit_select_b;
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
    ) i_mul_gaussian32_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_gaussian32_im0_cma_ena2, i_mul_gaussian32_im0_cma_ena1, i_mul_gaussian32_im0_cma_ena0 }),
        .aclr({ i_mul_gaussian32_im0_cma_reset, i_mul_gaussian32_im0_cma_reset }),
        .ay(i_mul_gaussian32_im0_cma_a0),
        .ax(i_mul_gaussian32_im0_cma_c0),
        .resulta(i_mul_gaussian32_im0_cma_s0),
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
    i_mul_gaussian32_im0_cma_delay ( .xin(i_mul_gaussian32_im0_cma_s0), .xout(i_mul_gaussian32_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_gaussian32_im0_cma_q = $unsigned(i_mul_gaussian32_im0_cma_qq[27:0]);

    // i_mul_gaussian32_im8_cma(CHAINMULTADD,373)@6 + 3
    assign i_mul_gaussian32_im8_cma_reset = ~ (resetn);
    assign i_mul_gaussian32_im8_cma_ena0 = 1'b1;
    assign i_mul_gaussian32_im8_cma_ena1 = i_mul_gaussian32_im8_cma_ena0;
    assign i_mul_gaussian32_im8_cma_ena2 = i_mul_gaussian32_im8_cma_ena0;

    assign i_mul_gaussian32_im8_cma_a0 = i_mul_gaussian32_bs1_merged_bit_select_c;
    assign i_mul_gaussian32_im8_cma_c0 = i_mul_gaussian32_bs2_merged_bit_select_c;
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
    ) i_mul_gaussian32_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_gaussian32_im8_cma_ena2, i_mul_gaussian32_im8_cma_ena1, i_mul_gaussian32_im8_cma_ena0 }),
        .aclr({ i_mul_gaussian32_im8_cma_reset, i_mul_gaussian32_im8_cma_reset }),
        .ay(i_mul_gaussian32_im8_cma_a0),
        .ax(i_mul_gaussian32_im8_cma_c0),
        .resulta(i_mul_gaussian32_im8_cma_s0),
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
    i_mul_gaussian32_im8_cma_delay ( .xin(i_mul_gaussian32_im8_cma_s0), .xout(i_mul_gaussian32_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_gaussian32_im8_cma_q = $unsigned(i_mul_gaussian32_im8_cma_qq[35:0]);

    // i_mul_gaussian32_sums_join_0(BITJOIN,260)@9
    assign i_mul_gaussian32_sums_join_0_q = {i_mul_gaussian32_im0_cma_q, i_mul_gaussian32_im8_cma_q};

    // i_mul_gaussian32_sums_result_add_0_0(ADD,263)@9
    assign i_mul_gaussian32_sums_result_add_0_0_a = {1'b0, i_mul_gaussian32_sums_join_0_q};
    assign i_mul_gaussian32_sums_result_add_0_0_b = {14'b00000000000000, i_mul_gaussian32_sums_align_1_q};
    assign i_mul_gaussian32_sums_result_add_0_0_o = $unsigned(i_mul_gaussian32_sums_result_add_0_0_a) + $unsigned(i_mul_gaussian32_sums_result_add_0_0_b);
    assign i_mul_gaussian32_sums_result_add_0_0_q = i_mul_gaussian32_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul_gaussian32_sel_x(BITSELECT,127)@9
    assign bgTrunc_i_mul_gaussian32_sel_x_in = i_mul_gaussian32_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul_gaussian32_sel_x_b = bgTrunc_i_mul_gaussian32_sel_x_in[31:0];

    // i_sub_gaussian33(SUB,115)@9
    assign i_sub_gaussian33_a = {1'b0, i_llvm_fpga_mem_lm92_gaussian27_out_o_readdata};
    assign i_sub_gaussian33_b = {1'b0, bgTrunc_i_mul_gaussian32_sel_x_b};
    assign i_sub_gaussian33_o = $unsigned(i_sub_gaussian33_a) - $unsigned(i_sub_gaussian33_b);
    assign i_sub_gaussian33_q = i_sub_gaussian33_o[32:0];

    // bgTrunc_i_sub_gaussian33_sel_x(BITSELECT,128)@9
    assign bgTrunc_i_sub_gaussian33_sel_x_b = $unsigned(i_sub_gaussian33_q[31:0]);

    // valid_fanout_reg15(REG,227)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist14_sync_together123_aunroll_x_in_i_valid_7_q);
        end
    end

    // redist33_i_first_cleanup_xor54_or_gaussian20_q_7(DELAY,414)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_first_cleanup_xor54_or_gaussian20_q_7_delay_0 <= '0;
            redist33_i_first_cleanup_xor54_or_gaussian20_q_7_q <= '0;
        end
        else
        begin
            redist33_i_first_cleanup_xor54_or_gaussian20_q_7_delay_0 <= $unsigned(redist32_i_first_cleanup_xor54_or_gaussian20_q_5_q);
            redist33_i_first_cleanup_xor54_or_gaussian20_q_7_q <= redist33_i_first_cleanup_xor54_or_gaussian20_q_7_delay_0;
        end
    end

    // redist36_i_arrayidx295_gaussian24_vt_join_q_2(DELAY,417)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_arrayidx295_gaussian24_vt_join_q_2_delay_0 <= '0;
            redist36_i_arrayidx295_gaussian24_vt_join_q_2_q <= '0;
        end
        else
        begin
            redist36_i_arrayidx295_gaussian24_vt_join_q_2_delay_0 <= $unsigned(i_arrayidx295_gaussian24_vt_join_q);
            redist36_i_arrayidx295_gaussian24_vt_join_q_2_q <= redist36_i_arrayidx295_gaussian24_vt_join_q_2_delay_0;
        end
    end

    // i_llvm_fpga_mem_memdep_5_gaussian34(BLACKBOX,82)@9
    // out out_memdep_5_gaussian_avm_address@20000000
    // out out_memdep_5_gaussian_avm_burstcount@20000000
    // out out_memdep_5_gaussian_avm_byteenable@20000000
    // out out_memdep_5_gaussian_avm_enable@20000000
    // out out_memdep_5_gaussian_avm_read@20000000
    // out out_memdep_5_gaussian_avm_write@20000000
    // out out_memdep_5_gaussian_avm_writedata@20000000
    // out out_o_stall@10
    // out out_o_valid@10
    // out out_o_writeack@10
    gaussian_i_llvm_fpga_mem_memdep_5_0 thei_llvm_fpga_mem_memdep_5_gaussian34 (
        .in_flush(in_flush),
        .in_i_address(redist36_i_arrayidx295_gaussian24_vt_join_q_2_q),
        .in_i_predicate(redist33_i_first_cleanup_xor54_or_gaussian20_q_7_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg15_q),
        .in_i_writedata(bgTrunc_i_sub_gaussian33_sel_x_b),
        .in_memdep_5_gaussian_avm_readdata(in_memdep_5_gaussian_avm_readdata),
        .in_memdep_5_gaussian_avm_readdatavalid(in_memdep_5_gaussian_avm_readdatavalid),
        .in_memdep_5_gaussian_avm_waitrequest(in_memdep_5_gaussian_avm_waitrequest),
        .in_memdep_5_gaussian_avm_writeack(in_memdep_5_gaussian_avm_writeack),
        .out_memdep_5_gaussian_avm_address(i_llvm_fpga_mem_memdep_5_gaussian34_out_memdep_5_gaussian_avm_address),
        .out_memdep_5_gaussian_avm_burstcount(i_llvm_fpga_mem_memdep_5_gaussian34_out_memdep_5_gaussian_avm_burstcount),
        .out_memdep_5_gaussian_avm_byteenable(i_llvm_fpga_mem_memdep_5_gaussian34_out_memdep_5_gaussian_avm_byteenable),
        .out_memdep_5_gaussian_avm_enable(i_llvm_fpga_mem_memdep_5_gaussian34_out_memdep_5_gaussian_avm_enable),
        .out_memdep_5_gaussian_avm_read(i_llvm_fpga_mem_memdep_5_gaussian34_out_memdep_5_gaussian_avm_read),
        .out_memdep_5_gaussian_avm_write(i_llvm_fpga_mem_memdep_5_gaussian34_out_memdep_5_gaussian_avm_write),
        .out_memdep_5_gaussian_avm_writedata(i_llvm_fpga_mem_memdep_5_gaussian34_out_memdep_5_gaussian_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(i_llvm_fpga_mem_memdep_5_gaussian34_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi6_push38_gaussian35(BLACKBOX,95)@10
    // out out_feedback_out_38@20000000
    // out out_feedback_valid_out_38@20000000
    gaussian_i_llvm_fpga_push_i1_memdep_phi6_push38_0 thei_llvm_fpga_push_i1_memdep_phi6_push38_gaussian35 (
        .in_data_in(i_llvm_fpga_mem_memdep_5_gaussian34_out_o_writeack),
        .in_feedback_stall_in_38(i_llvm_fpga_pop_i1_memdep_phi6_pop38_gaussian29_out_feedback_stall_out_38),
        .in_keep_going48(redist30_i_llvm_fpga_pipeline_keep_going48_gaussian6_out_data_out_5_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(),
        .out_feedback_out_38(i_llvm_fpga_push_i1_memdep_phi6_push38_gaussian35_out_feedback_out_38),
        .out_feedback_valid_out_38(i_llvm_fpga_push_i1_memdep_phi6_push38_gaussian35_out_feedback_valid_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi6_pop38_gaussian29(BLACKBOX,84)@5
    // out out_feedback_stall_out_38@20000000
    gaussian_i_llvm_fpga_pop_i1_memdep_phi6_pop38_0 thei_llvm_fpga_pop_i1_memdep_phi6_pop38_gaussian29 (
        .in_data_in(GND_q),
        .in_dir(redist2_sync_together123_aunroll_x_in_c0_eni7_1_tpl_4_q),
        .in_feedback_in_38(i_llvm_fpga_push_i1_memdep_phi6_push38_gaussian35_out_feedback_out_38),
        .in_feedback_valid_in_38(i_llvm_fpga_push_i1_memdep_phi6_push38_gaussian35_out_feedback_valid_out_38),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi6_pop38_gaussian29_out_data_out),
        .out_feedback_stall_out_38(i_llvm_fpga_pop_i1_memdep_phi6_pop38_gaussian29_out_feedback_stall_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_memdep_phi_or_gaussian30(LOGICAL,107)@5
    assign i_memdep_phi_or_gaussian30_q = i_llvm_fpga_pop_i1_memdep_phi6_pop38_gaussian29_out_data_out | redist27_i_llvm_fpga_pop_i1_memdep_phi_pop28102_pop45_gaussian25_out_data_out_3_q;

    // i_arrayidx356_gaussian0_dupName_0_trunc_sel_x(BITSELECT,192)@2
    assign i_arrayidx356_gaussian0_dupName_0_trunc_sel_x_b = i_idxprom30_gaussian18_vt_join_q[10:0];

    // redist18_i_arrayidx356_gaussian0_dupName_0_trunc_sel_x_b_2(DELAY,399)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_arrayidx356_gaussian0_dupName_0_trunc_sel_x_b_2_delay_0 <= '0;
            redist18_i_arrayidx356_gaussian0_dupName_0_trunc_sel_x_b_2_q <= '0;
        end
        else
        begin
            redist18_i_arrayidx356_gaussian0_dupName_0_trunc_sel_x_b_2_delay_0 <= $unsigned(i_arrayidx356_gaussian0_dupName_0_trunc_sel_x_b);
            redist18_i_arrayidx356_gaussian0_dupName_0_trunc_sel_x_b_2_q <= redist18_i_arrayidx356_gaussian0_dupName_0_trunc_sel_x_b_2_delay_0;
        end
    end

    // addsumAHighB_uid320_i_arrayidx356_gaussian0_mult_x(ADD,319)@4
    assign addsumAHighB_uid320_i_arrayidx356_gaussian0_mult_x_a = {1'b0, redist18_i_arrayidx356_gaussian0_dupName_0_trunc_sel_x_b_2_q};
    assign addsumAHighB_uid320_i_arrayidx356_gaussian0_mult_x_b = {3'b000, lowRangeB_uid318_i_arrayidx356_gaussian0_mult_x_merged_bit_select_c};
    assign addsumAHighB_uid320_i_arrayidx356_gaussian0_mult_x_o = $unsigned(addsumAHighB_uid320_i_arrayidx356_gaussian0_mult_x_a) + $unsigned(addsumAHighB_uid320_i_arrayidx356_gaussian0_mult_x_b);
    assign addsumAHighB_uid320_i_arrayidx356_gaussian0_mult_x_q = addsumAHighB_uid320_i_arrayidx356_gaussian0_mult_x_o[11:0];

    // lowRangeB_uid318_i_arrayidx356_gaussian0_mult_x_merged_bit_select(BITSELECT,380)@4
    assign lowRangeB_uid318_i_arrayidx356_gaussian0_mult_x_merged_bit_select_b = redist18_i_arrayidx356_gaussian0_dupName_0_trunc_sel_x_b_2_q[1:0];
    assign lowRangeB_uid318_i_arrayidx356_gaussian0_mult_x_merged_bit_select_c = redist18_i_arrayidx356_gaussian0_dupName_0_trunc_sel_x_b_2_q[10:2];

    // add_uid321_i_arrayidx356_gaussian0_mult_x(BITJOIN,320)@4
    assign add_uid321_i_arrayidx356_gaussian0_mult_x_q = {addsumAHighB_uid320_i_arrayidx356_gaussian0_mult_x_q, lowRangeB_uid318_i_arrayidx356_gaussian0_mult_x_merged_bit_select_b};

    // sR_mergedSignalTM_uid326_i_arrayidx356_gaussian0_mult_x(BITJOIN,325)@4
    assign sR_mergedSignalTM_uid326_i_arrayidx356_gaussian0_mult_x_q = {add_uid321_i_arrayidx356_gaussian0_mult_x_q, i_arrayidx295_gaussian0_mult_multconst_x_q};

    // i_arrayidx356_gaussian0_mult_extender_x(BITJOIN,189)@4
    assign i_arrayidx356_gaussian0_mult_extender_x_q = {i_arrayidx295_gaussian0_mult_multconst_x_q, sR_mergedSignalTM_uid326_i_arrayidx356_gaussian0_mult_x_q};

    // i_arrayidx356_gaussian0_dupName_1_trunc_sel_x(BITSELECT,193)@4
    assign i_arrayidx356_gaussian0_dupName_1_trunc_sel_x_b = i_arrayidx356_gaussian0_mult_extender_x_q[10:0];

    // redist17_i_arrayidx356_gaussian0_dupName_1_trunc_sel_x_b_1(DELAY,398)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_arrayidx356_gaussian0_dupName_1_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist17_i_arrayidx356_gaussian0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx356_gaussian0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx356_gaussian0_add_x(ADD,173)@5
    assign i_arrayidx356_gaussian0_add_x_a = {1'b0, i_arrayidx295_gaussian0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx356_gaussian0_add_x_b = {1'b0, redist17_i_arrayidx356_gaussian0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx356_gaussian0_add_x_o = $unsigned(i_arrayidx356_gaussian0_add_x_a) + $unsigned(i_arrayidx356_gaussian0_add_x_b);
    assign i_arrayidx356_gaussian0_add_x_q = i_arrayidx356_gaussian0_add_x_o[11:0];

    // i_arrayidx356_gaussian0_dupName_2_trunc_sel_x(BITSELECT,194)@5
    assign i_arrayidx356_gaussian0_dupName_2_trunc_sel_x_b = i_arrayidx356_gaussian0_add_x_q[10:0];

    // i_arrayidx356_gaussian0_dupName_0_add_x(ADD,183)@5
    assign i_arrayidx356_gaussian0_dupName_0_add_x_a = {1'b0, i_arrayidx356_gaussian0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx356_gaussian0_dupName_0_add_x_b = {1'b0, i_arrayidx295_gaussian0_shift_join_x_q};
    assign i_arrayidx356_gaussian0_dupName_0_add_x_o = $unsigned(i_arrayidx356_gaussian0_dupName_0_add_x_a) + $unsigned(i_arrayidx356_gaussian0_dupName_0_add_x_b);
    assign i_arrayidx356_gaussian0_dupName_0_add_x_q = i_arrayidx356_gaussian0_dupName_0_add_x_o[11:0];

    // i_arrayidx356_gaussian0_dupName_5_trunc_sel_x(BITSELECT,196)@5
    assign i_arrayidx356_gaussian0_dupName_5_trunc_sel_x_b = i_arrayidx356_gaussian0_dupName_0_add_x_q[10:0];

    // i_arrayidx356_gaussian0_append_upper_bits_x(BITJOIN,174)@5
    assign i_arrayidx356_gaussian0_append_upper_bits_x_q = {i_arrayidx295_gaussian0_upper_bits_x_merged_bit_select_b, i_arrayidx356_gaussian0_dupName_5_trunc_sel_x_b};

    // i_arrayidx356_gaussian28_vt_select_63(BITSELECT,53)@5
    assign i_arrayidx356_gaussian28_vt_select_63_b = i_arrayidx356_gaussian0_append_upper_bits_x_q[63:2];

    // i_arrayidx356_gaussian28_vt_join(BITJOIN,52)@5
    assign i_arrayidx356_gaussian28_vt_join_q = {i_arrayidx356_gaussian28_vt_select_63_b, i_arrayidx295_gaussian24_vt_const_1_q};

    // i_llvm_fpga_mem_lm113_gaussian31(BLACKBOX,79)@5
    // in in_i_stall@20000000
    // out out_lm113_gaussian_avm_address@20000000
    // out out_lm113_gaussian_avm_burstcount@20000000
    // out out_lm113_gaussian_avm_byteenable@20000000
    // out out_lm113_gaussian_avm_enable@20000000
    // out out_lm113_gaussian_avm_read@20000000
    // out out_lm113_gaussian_avm_write@20000000
    // out out_lm113_gaussian_avm_writedata@20000000
    // out out_o_readdata@6
    // out out_o_stall@6
    // out out_o_valid@6
    gaussian_i_llvm_fpga_mem_lm113_0 thei_llvm_fpga_mem_lm113_gaussian31 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx356_gaussian28_vt_join_q),
        .in_i_dependence(i_memdep_phi_or_gaussian30_q),
        .in_i_predicate(redist31_i_first_cleanup_xor54_or_gaussian20_q_3_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg14_q),
        .in_lm113_gaussian_avm_readdata(in_lm113_gaussian_avm_readdata),
        .in_lm113_gaussian_avm_readdatavalid(in_lm113_gaussian_avm_readdatavalid),
        .in_lm113_gaussian_avm_waitrequest(in_lm113_gaussian_avm_waitrequest),
        .in_lm113_gaussian_avm_writeack(in_lm113_gaussian_avm_writeack),
        .out_lm113_gaussian_avm_address(i_llvm_fpga_mem_lm113_gaussian31_out_lm113_gaussian_avm_address),
        .out_lm113_gaussian_avm_burstcount(i_llvm_fpga_mem_lm113_gaussian31_out_lm113_gaussian_avm_burstcount),
        .out_lm113_gaussian_avm_byteenable(i_llvm_fpga_mem_lm113_gaussian31_out_lm113_gaussian_avm_byteenable),
        .out_lm113_gaussian_avm_enable(i_llvm_fpga_mem_lm113_gaussian31_out_lm113_gaussian_avm_enable),
        .out_lm113_gaussian_avm_read(i_llvm_fpga_mem_lm113_gaussian31_out_lm113_gaussian_avm_read),
        .out_lm113_gaussian_avm_write(i_llvm_fpga_mem_lm113_gaussian31_out_lm113_gaussian_avm_write),
        .out_lm113_gaussian_avm_writedata(i_llvm_fpga_mem_lm113_gaussian31_out_lm113_gaussian_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm113_gaussian31_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_ext_sig_sync_out_x(GPOUT,135)
    assign out_lm113_gaussian_avm_address = i_llvm_fpga_mem_lm113_gaussian31_out_lm113_gaussian_avm_address;
    assign out_lm113_gaussian_avm_enable = i_llvm_fpga_mem_lm113_gaussian31_out_lm113_gaussian_avm_enable;
    assign out_lm113_gaussian_avm_read = i_llvm_fpga_mem_lm113_gaussian31_out_lm113_gaussian_avm_read;
    assign out_lm113_gaussian_avm_write = i_llvm_fpga_mem_lm113_gaussian31_out_lm113_gaussian_avm_write;
    assign out_lm113_gaussian_avm_writedata = i_llvm_fpga_mem_lm113_gaussian31_out_lm113_gaussian_avm_writedata;
    assign out_lm113_gaussian_avm_byteenable = i_llvm_fpga_mem_lm113_gaussian31_out_lm113_gaussian_avm_byteenable;
    assign out_lm113_gaussian_avm_burstcount = i_llvm_fpga_mem_lm113_gaussian31_out_lm113_gaussian_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,136)
    assign out_memdep_5_gaussian_avm_address = i_llvm_fpga_mem_memdep_5_gaussian34_out_memdep_5_gaussian_avm_address;
    assign out_memdep_5_gaussian_avm_enable = i_llvm_fpga_mem_memdep_5_gaussian34_out_memdep_5_gaussian_avm_enable;
    assign out_memdep_5_gaussian_avm_read = i_llvm_fpga_mem_memdep_5_gaussian34_out_memdep_5_gaussian_avm_read;
    assign out_memdep_5_gaussian_avm_write = i_llvm_fpga_mem_memdep_5_gaussian34_out_memdep_5_gaussian_avm_write;
    assign out_memdep_5_gaussian_avm_writedata = i_llvm_fpga_mem_memdep_5_gaussian34_out_memdep_5_gaussian_avm_writedata;
    assign out_memdep_5_gaussian_avm_byteenable = i_llvm_fpga_mem_memdep_5_gaussian34_out_memdep_5_gaussian_avm_byteenable;
    assign out_memdep_5_gaussian_avm_burstcount = i_llvm_fpga_mem_memdep_5_gaussian34_out_memdep_5_gaussian_avm_burstcount;

    // valid_fanout_reg0(REG,212)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist15_sync_together123_aunroll_x_in_i_valid_8_q);
        end
    end

    // redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_notEnable(LOGICAL,425)
    assign redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_nor(LOGICAL,426)
    assign redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_nor_q = ~ (redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_notEnable_q | redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_sticky_ena_q);

    // redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_mem_last(CONSTANT,422)
    assign redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_mem_last_q = $unsigned(4'b0110);

    // redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_cmp(LOGICAL,423)
    assign redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_cmp_b = {1'b0, redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_rdcnt_q};
    assign redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_cmp_q = $unsigned(redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_mem_last_q == redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_cmpReg(REG,424)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_cmpReg_q <= $unsigned(redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_cmp_q);
        end
    end

    // redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_sticky_ena(REG,427)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_nor_q == 1'b1)
        begin
            redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_sticky_ena_q <= $unsigned(redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_cmpReg_q);
        end
    end

    // redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_enaAnd(LOGICAL,428)
    assign redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_enaAnd_q = redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_sticky_ena_q & VCC_q;

    // redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_rdcnt(COUNTER,420)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_rdcnt_i <= 3'd0;
        end
        else
        begin
            redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_rdcnt_i <= $unsigned(redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_rdcnt_i) + $unsigned(3'd1);
        end
    end
    assign redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_rdcnt_q = redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_rdcnt_i[2:0];

    // redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_wraddr(REG,421)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_wraddr_q <= $unsigned(3'b111);
        end
        else
        begin
            redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_wraddr_q <= $unsigned(redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_rdcnt_q);
        end
    end

    // redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_mem(DUALMEM,419)
    assign redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_mem_ia = $unsigned(in_c0_eni7_7_tpl);
    assign redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_mem_aa = redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_wraddr_q;
    assign redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_mem_ab = redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_rdcnt_q;
    assign redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_mem_reset0 = ~ (resetn);
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
    ) redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_mem_dmem (
        .clocken1(redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_mem_aa),
        .data_a(redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_mem_ab),
        .q_b(redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_mem_iq),
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
    assign redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_mem_q = redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_mem_iq[31:0];

    // valid_fanout_reg22(REG,234)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg22_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist11_sync_together123_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg23(REG,235)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(redist15_sync_together123_aunroll_x_in_i_valid_8_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp63101_push44_gaussian56(BLACKBOX,97)@10
    // out out_feedback_out_44@20000000
    // out out_feedback_valid_out_44@20000000
    gaussian_i_llvm_fpga_push_i1_notcmp63101_push44_0 thei_llvm_fpga_push_i1_notcmp63101_push44_gaussian56 (
        .in_data_in(redist26_i_llvm_fpga_pop_i1_notcmp63101_pop44_gaussian55_out_data_out_5_q),
        .in_feedback_stall_in_44(i_llvm_fpga_pop_i1_notcmp63101_pop44_gaussian55_out_feedback_stall_out_44),
        .in_keep_going48(redist30_i_llvm_fpga_pipeline_keep_going48_gaussian6_out_data_out_5_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(),
        .out_feedback_out_44(i_llvm_fpga_push_i1_notcmp63101_push44_gaussian56_out_feedback_out_44),
        .out_feedback_valid_out_44(i_llvm_fpga_push_i1_notcmp63101_push44_gaussian56_out_feedback_valid_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together123_aunroll_x_in_c0_eni7_6_tpl_4(DELAY,388)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together123_aunroll_x_in_c0_eni7_6_tpl_4_delay_0 <= '0;
            redist7_sync_together123_aunroll_x_in_c0_eni7_6_tpl_4_delay_1 <= '0;
            redist7_sync_together123_aunroll_x_in_c0_eni7_6_tpl_4_delay_2 <= '0;
            redist7_sync_together123_aunroll_x_in_c0_eni7_6_tpl_4_q <= '0;
        end
        else
        begin
            redist7_sync_together123_aunroll_x_in_c0_eni7_6_tpl_4_delay_0 <= $unsigned(in_c0_eni7_6_tpl);
            redist7_sync_together123_aunroll_x_in_c0_eni7_6_tpl_4_delay_1 <= redist7_sync_together123_aunroll_x_in_c0_eni7_6_tpl_4_delay_0;
            redist7_sync_together123_aunroll_x_in_c0_eni7_6_tpl_4_delay_2 <= redist7_sync_together123_aunroll_x_in_c0_eni7_6_tpl_4_delay_1;
            redist7_sync_together123_aunroll_x_in_c0_eni7_6_tpl_4_q <= redist7_sync_together123_aunroll_x_in_c0_eni7_6_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_pop_i1_notcmp63101_pop44_gaussian55(BLACKBOX,86)@5
    // out out_feedback_stall_out_44@20000000
    gaussian_i_llvm_fpga_pop_i1_notcmp63101_pop44_0 thei_llvm_fpga_pop_i1_notcmp63101_pop44_gaussian55 (
        .in_data_in(redist7_sync_together123_aunroll_x_in_c0_eni7_6_tpl_4_q),
        .in_dir(redist2_sync_together123_aunroll_x_in_c0_eni7_1_tpl_4_q),
        .in_feedback_in_44(i_llvm_fpga_push_i1_notcmp63101_push44_gaussian56_out_feedback_out_44),
        .in_feedback_valid_in_44(i_llvm_fpga_push_i1_notcmp63101_push44_gaussian56_out_feedback_valid_out_44),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp63101_pop44_gaussian55_out_data_out),
        .out_feedback_stall_out_44(i_llvm_fpga_pop_i1_notcmp63101_pop44_gaussian55_out_feedback_stall_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist26_i_llvm_fpga_pop_i1_notcmp63101_pop44_gaussian55_out_data_out_5(DELAY,407)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_pop_i1_notcmp63101_pop44_gaussian55_out_data_out_5_delay_0 <= '0;
            redist26_i_llvm_fpga_pop_i1_notcmp63101_pop44_gaussian55_out_data_out_5_delay_1 <= '0;
            redist26_i_llvm_fpga_pop_i1_notcmp63101_pop44_gaussian55_out_data_out_5_delay_2 <= '0;
            redist26_i_llvm_fpga_pop_i1_notcmp63101_pop44_gaussian55_out_data_out_5_delay_3 <= '0;
            redist26_i_llvm_fpga_pop_i1_notcmp63101_pop44_gaussian55_out_data_out_5_q <= '0;
        end
        else
        begin
            redist26_i_llvm_fpga_pop_i1_notcmp63101_pop44_gaussian55_out_data_out_5_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_notcmp63101_pop44_gaussian55_out_data_out);
            redist26_i_llvm_fpga_pop_i1_notcmp63101_pop44_gaussian55_out_data_out_5_delay_1 <= redist26_i_llvm_fpga_pop_i1_notcmp63101_pop44_gaussian55_out_data_out_5_delay_0;
            redist26_i_llvm_fpga_pop_i1_notcmp63101_pop44_gaussian55_out_data_out_5_delay_2 <= redist26_i_llvm_fpga_pop_i1_notcmp63101_pop44_gaussian55_out_data_out_5_delay_1;
            redist26_i_llvm_fpga_pop_i1_notcmp63101_pop44_gaussian55_out_data_out_5_delay_3 <= redist26_i_llvm_fpga_pop_i1_notcmp63101_pop44_gaussian55_out_data_out_5_delay_2;
            redist26_i_llvm_fpga_pop_i1_notcmp63101_pop44_gaussian55_out_data_out_5_q <= redist26_i_llvm_fpga_pop_i1_notcmp63101_pop44_gaussian55_out_data_out_5_delay_3;
        end
    end

    // valid_fanout_reg20(REG,232)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg20_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist11_sync_together123_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg21(REG,233)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist15_sync_together123_aunroll_x_in_i_valid_8_q);
        end
    end

    // i_llvm_fpga_push_i1_push43_gaussian54(BLACKBOX,99)@10
    // out out_feedback_out_43@20000000
    // out out_feedback_valid_out_43@20000000
    gaussian_i_llvm_fpga_push_i1_push43_0 thei_llvm_fpga_push_i1_push43_gaussian54 (
        .in_data_in(redist25_i_llvm_fpga_pop_i1_pop43_gaussian53_out_data_out_5_q),
        .in_feedback_stall_in_43(i_llvm_fpga_pop_i1_pop43_gaussian53_out_feedback_stall_out_43),
        .in_keep_going48(redist30_i_llvm_fpga_pipeline_keep_going48_gaussian6_out_data_out_5_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(),
        .out_feedback_out_43(i_llvm_fpga_push_i1_push43_gaussian54_out_feedback_out_43),
        .out_feedback_valid_out_43(i_llvm_fpga_push_i1_push43_gaussian54_out_feedback_valid_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together123_aunroll_x_in_c0_eni7_5_tpl_4(DELAY,387)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together123_aunroll_x_in_c0_eni7_5_tpl_4_delay_0 <= '0;
            redist6_sync_together123_aunroll_x_in_c0_eni7_5_tpl_4_delay_1 <= '0;
            redist6_sync_together123_aunroll_x_in_c0_eni7_5_tpl_4_delay_2 <= '0;
            redist6_sync_together123_aunroll_x_in_c0_eni7_5_tpl_4_q <= '0;
        end
        else
        begin
            redist6_sync_together123_aunroll_x_in_c0_eni7_5_tpl_4_delay_0 <= $unsigned(in_c0_eni7_5_tpl);
            redist6_sync_together123_aunroll_x_in_c0_eni7_5_tpl_4_delay_1 <= redist6_sync_together123_aunroll_x_in_c0_eni7_5_tpl_4_delay_0;
            redist6_sync_together123_aunroll_x_in_c0_eni7_5_tpl_4_delay_2 <= redist6_sync_together123_aunroll_x_in_c0_eni7_5_tpl_4_delay_1;
            redist6_sync_together123_aunroll_x_in_c0_eni7_5_tpl_4_q <= redist6_sync_together123_aunroll_x_in_c0_eni7_5_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_pop_i1_pop43_gaussian53(BLACKBOX,87)@5
    // out out_feedback_stall_out_43@20000000
    gaussian_i_llvm_fpga_pop_i1_pop43_0 thei_llvm_fpga_pop_i1_pop43_gaussian53 (
        .in_data_in(redist6_sync_together123_aunroll_x_in_c0_eni7_5_tpl_4_q),
        .in_dir(redist2_sync_together123_aunroll_x_in_c0_eni7_1_tpl_4_q),
        .in_feedback_in_43(i_llvm_fpga_push_i1_push43_gaussian54_out_feedback_out_43),
        .in_feedback_valid_in_43(i_llvm_fpga_push_i1_push43_gaussian54_out_feedback_valid_out_43),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop43_gaussian53_out_data_out),
        .out_feedback_stall_out_43(i_llvm_fpga_pop_i1_pop43_gaussian53_out_feedback_stall_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist25_i_llvm_fpga_pop_i1_pop43_gaussian53_out_data_out_5(DELAY,406)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_pop_i1_pop43_gaussian53_out_data_out_5_delay_0 <= '0;
            redist25_i_llvm_fpga_pop_i1_pop43_gaussian53_out_data_out_5_delay_1 <= '0;
            redist25_i_llvm_fpga_pop_i1_pop43_gaussian53_out_data_out_5_delay_2 <= '0;
            redist25_i_llvm_fpga_pop_i1_pop43_gaussian53_out_data_out_5_delay_3 <= '0;
            redist25_i_llvm_fpga_pop_i1_pop43_gaussian53_out_data_out_5_q <= '0;
        end
        else
        begin
            redist25_i_llvm_fpga_pop_i1_pop43_gaussian53_out_data_out_5_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_pop43_gaussian53_out_data_out);
            redist25_i_llvm_fpga_pop_i1_pop43_gaussian53_out_data_out_5_delay_1 <= redist25_i_llvm_fpga_pop_i1_pop43_gaussian53_out_data_out_5_delay_0;
            redist25_i_llvm_fpga_pop_i1_pop43_gaussian53_out_data_out_5_delay_2 <= redist25_i_llvm_fpga_pop_i1_pop43_gaussian53_out_data_out_5_delay_1;
            redist25_i_llvm_fpga_pop_i1_pop43_gaussian53_out_data_out_5_delay_3 <= redist25_i_llvm_fpga_pop_i1_pop43_gaussian53_out_data_out_5_delay_2;
            redist25_i_llvm_fpga_pop_i1_pop43_gaussian53_out_data_out_5_q <= redist25_i_llvm_fpga_pop_i1_pop43_gaussian53_out_data_out_5_delay_3;
        end
    end

    // redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_notEnable(LOGICAL,433)
    assign redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_nor(LOGICAL,434)
    assign redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_nor_q = ~ (redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_notEnable_q | redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_sticky_ena_q);

    // redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_cmpReg(REG,432)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_sticky_ena(REG,435)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_nor_q == 1'b1)
        begin
            redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_sticky_ena_q <= $unsigned(redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_cmpReg_q);
        end
    end

    // redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_enaAnd(LOGICAL,436)
    assign redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_enaAnd_q = redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_sticky_ena_q & VCC_q;

    // redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_rdcnt(COUNTER,430)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_rdcnt_i <= $unsigned(redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_rdcnt_q = redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_rdcnt_i[0:0];

    // valid_fanout_reg19(REG,231)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist13_sync_together123_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg18(REG,230)@1 + 1
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

    // redist5_sync_together123_aunroll_x_in_c0_eni7_4_tpl_1(DELAY,386)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together123_aunroll_x_in_c0_eni7_4_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together123_aunroll_x_in_c0_eni7_4_tpl_1_q <= $unsigned(in_c0_eni7_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_add97_pop41_gaussian51(BLACKBOX,90)@2
    // out out_feedback_stall_out_41@20000000
    gaussian_i_llvm_fpga_pop_i32_add97_pop41_0 thei_llvm_fpga_pop_i32_add97_pop41_gaussian51 (
        .in_data_in(redist5_sync_together123_aunroll_x_in_c0_eni7_4_tpl_1_q),
        .in_dir(redist0_sync_together123_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_41(i_llvm_fpga_push_i32_add97_push41_gaussian52_out_feedback_out_41),
        .in_feedback_valid_in_41(i_llvm_fpga_push_i32_add97_push41_gaussian52_out_feedback_valid_out_41),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out),
        .out_feedback_stall_out_41(i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_feedback_stall_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_notEnable(LOGICAL,443)
    assign redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_nor(LOGICAL,444)
    assign redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_nor_q = ~ (redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_notEnable_q | redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_sticky_ena_q);

    // redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_mem_last(CONSTANT,440)
    assign redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_mem_last_q = $unsigned(3'b010);

    // redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_cmp(LOGICAL,441)
    assign redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_cmp_b = {1'b0, redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_rdcnt_q};
    assign redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_cmp_q = $unsigned(redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_mem_last_q == redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_cmp_b ? 1'b1 : 1'b0);

    // redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_cmpReg(REG,442)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_cmpReg_q <= $unsigned(redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_cmp_q);
        end
    end

    // redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_sticky_ena(REG,445)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_nor_q == 1'b1)
        begin
            redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_sticky_ena_q <= $unsigned(redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_cmpReg_q);
        end
    end

    // redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_enaAnd(LOGICAL,446)
    assign redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_enaAnd_q = redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_sticky_ena_q & VCC_q;

    // redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_rdcnt(COUNTER,438)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_rdcnt_i <= $unsigned(redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_rdcnt_q = redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_rdcnt_i[1:0];

    // redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_wraddr(REG,439)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_wraddr_q <= $unsigned(redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_rdcnt_q);
        end
    end

    // redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_mem(DUALMEM,437)
    assign redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_mem_ia = $unsigned(i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out);
    assign redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_mem_aa = redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_wraddr_q;
    assign redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_mem_ab = redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_rdcnt_q;
    assign redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_mem_reset0 = ~ (resetn);
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
    ) redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_mem_dmem (
        .clocken1(redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_mem_reset0),
        .clock1(clock),
        .address_a(redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_mem_aa),
        .data_a(redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_mem_ab),
        .q_b(redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_mem_iq),
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
    assign redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_mem_q = redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_mem_iq[31:0];

    // i_llvm_fpga_push_i32_add97_push41_gaussian52(BLACKBOX,102)@7
    // out out_feedback_out_41@20000000
    // out out_feedback_valid_out_41@20000000
    gaussian_i_llvm_fpga_push_i32_add97_push41_0 thei_llvm_fpga_push_i32_add97_push41_gaussian52 (
        .in_data_in(redist23_i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_data_out_5_mem_q),
        .in_feedback_stall_in_41(i_llvm_fpga_pop_i32_add97_pop41_gaussian51_out_feedback_stall_out_41),
        .in_keep_going48(redist29_i_llvm_fpga_pipeline_keep_going48_gaussian6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out),
        .out_feedback_out_41(i_llvm_fpga_push_i32_add97_push41_gaussian52_out_feedback_out_41),
        .out_feedback_valid_out_41(i_llvm_fpga_push_i32_add97_push41_gaussian52_out_feedback_valid_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_wraddr(REG,431)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_wraddr_q <= $unsigned(redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_rdcnt_q);
        end
    end

    // redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_mem(DUALMEM,429)
    assign redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_mem_ia = $unsigned(i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out);
    assign redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_mem_aa = redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_wraddr_q;
    assign redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_mem_ab = redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_rdcnt_q;
    assign redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_mem_reset0 = ~ (resetn);
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
    ) redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_mem_dmem (
        .clocken1(redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_mem_reset0),
        .clock1(clock),
        .address_a(redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_mem_aa),
        .data_a(redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_mem_ab),
        .q_b(redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_mem_iq),
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
    assign redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_mem_q = redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_mem_iq[31:0];

    // i_masked57_gaussian50(LOGICAL,106)@5 + 1
    assign i_masked57_gaussian50_qi = i_notcmp44_gaussian45_q & redist16_i_first_cleanup53_gaussian3_sel_x_b_3_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked57_gaussian50_delay ( .xin(i_masked57_gaussian50_qi), .xout(i_masked57_gaussian50_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist20_i_masked57_gaussian50_q_5(DELAY,401)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_masked57_gaussian50_q_5_delay_0 <= '0;
            redist20_i_masked57_gaussian50_q_5_delay_1 <= '0;
            redist20_i_masked57_gaussian50_q_5_delay_2 <= '0;
            redist20_i_masked57_gaussian50_q_5_q <= '0;
        end
        else
        begin
            redist20_i_masked57_gaussian50_q_5_delay_0 <= $unsigned(i_masked57_gaussian50_q);
            redist20_i_masked57_gaussian50_q_5_delay_1 <= redist20_i_masked57_gaussian50_q_5_delay_0;
            redist20_i_masked57_gaussian50_q_5_delay_2 <= redist20_i_masked57_gaussian50_q_5_delay_1;
            redist20_i_masked57_gaussian50_q_5_q <= redist20_i_masked57_gaussian50_q_5_delay_2;
        end
    end

    // sync_out_aunroll_x(GPOUT,210)@10
    assign out_c0_exi7_0_tpl = GND_q;
    assign out_c0_exi7_1_tpl = redist30_i_llvm_fpga_pipeline_keep_going48_gaussian6_out_data_out_5_q;
    assign out_c0_exi7_2_tpl = i_llvm_fpga_mem_memdep_5_gaussian34_out_o_writeack;
    assign out_c0_exi7_3_tpl = redist20_i_masked57_gaussian50_q_5_q;
    assign out_c0_exi7_4_tpl = redist21_i_llvm_fpga_push_i32_add97_push41_gaussian52_out_data_out_3_mem_q;
    assign out_c0_exi7_5_tpl = redist25_i_llvm_fpga_pop_i1_pop43_gaussian53_out_data_out_5_q;
    assign out_c0_exi7_6_tpl = redist26_i_llvm_fpga_pop_i1_notcmp63101_pop44_gaussian55_out_data_out_5_q;
    assign out_c0_exi7_7_tpl = redist8_sync_together123_aunroll_x_in_c0_eni7_7_tpl_9_mem_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_gaussian1 = GND_q;

endmodule
