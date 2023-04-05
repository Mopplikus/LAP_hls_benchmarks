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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body10_kernel_3mms_c0_enter24127_kernel_3mm0
// Created for function/kernel kernel_3mm
// SystemVerilog created on Wed Apr  5 01:38:03 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_i_sfc_logic_s_c0_in_for_body10000ter24127_kernel_3mm0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    input wire [63:0] in_intel_reserved_ffwd_4_0,
    input wire [63:0] in_intel_reserved_ffwd_5_0,
    input wire [63:0] in_intel_reserved_ffwd_6_0,
    output wire [0:0] out_c0_exi18_0_tpl,
    output wire [0:0] out_c0_exi18_1_tpl,
    output wire [0:0] out_c0_exi18_2_tpl,
    output wire [63:0] out_c0_exi18_3_tpl,
    output wire [63:0] out_c0_exi18_4_tpl,
    output wire [63:0] out_c0_exi18_5_tpl,
    output wire [63:0] out_c0_exi18_6_tpl,
    output wire [63:0] out_c0_exi18_7_tpl,
    output wire [63:0] out_c0_exi18_8_tpl,
    output wire [63:0] out_c0_exi18_9_tpl,
    output wire [63:0] out_c0_exi18_10_tpl,
    output wire [63:0] out_c0_exi18_11_tpl,
    output wire [63:0] out_c0_exi18_12_tpl,
    output wire [63:0] out_c0_exi18_13_tpl,
    output wire [63:0] out_c0_exi18_14_tpl,
    output wire [63:0] out_c0_exi18_15_tpl,
    output wire [63:0] out_c0_exi18_16_tpl,
    output wire [0:0] out_c0_exi18_17_tpl,
    output wire [0:0] out_c0_exi18_18_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_kernel_3mm1,
    input wire [0:0] in_c0_eni3_0_tpl,
    input wire [0:0] in_c0_eni3_1_tpl,
    input wire [31:0] in_c0_eni3_2_tpl,
    input wire [0:0] in_c0_eni3_3_tpl,
    input wire [0:0] in_enable,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] c_i2_156_q;
    wire [31:0] c_i32_058_q;
    wire [31:0] c_i32_159_q;
    wire [4:0] c_i5_162_q;
    wire [4:0] c_i5_860_q;
    wire [63:0] c_kernel_3mm_A_local_pmem_q;
    wire [63:0] c_kernel_3mm_B_local_pmem_q;
    wire [63:0] c_kernel_3mm_C_local_pmem_q;
    wire [63:0] c_kernel_3mm_D_local_pmem_q;
    wire [63:0] c_kernel_3mm_E_local_pmem_q;
    wire [63:0] c_kernel_3mm_F_local_pmem_q;
    wire [63:0] c_kernel_3mm_G_local_pmem_q;
    wire [1:0] i_arrayidx161_kernel_3mm19_vt_const_1_q;
    wire [63:0] i_arrayidx161_kernel_3mm19_vt_join_q;
    wire [61:0] i_arrayidx161_kernel_3mm19_vt_select_63_b;
    wire [63:0] i_arrayidx242_kernel_3mm22_vt_join_q;
    wire [61:0] i_arrayidx242_kernel_3mm22_vt_select_63_b;
    wire [63:0] i_arrayidx323_kernel_3mm25_vt_join_q;
    wire [61:0] i_arrayidx323_kernel_3mm25_vt_select_63_b;
    wire [63:0] i_arrayidx404_kernel_3mm28_vt_join_q;
    wire [61:0] i_arrayidx404_kernel_3mm28_vt_select_63_b;
    wire [63:0] i_arrayidx485_kernel_3mm31_vt_join_q;
    wire [61:0] i_arrayidx485_kernel_3mm31_vt_select_63_b;
    wire [63:0] i_arrayidx566_kernel_3mm34_vt_join_q;
    wire [61:0] i_arrayidx566_kernel_3mm34_vt_select_63_b;
    wire [63:0] i_arrayidx647_kernel_3mm37_vt_join_q;
    wire [61:0] i_arrayidx647_kernel_3mm37_vt_select_63_b;
    wire [1:0] i_cleanups_shl130_kernel_3mm5_vt_join_q;
    wire [0:0] i_cleanups_shl130_kernel_3mm5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor132_kernel_3mm4_q;
    wire [5:0] i_fpga_indvars_iv_next_kernel_3mm48_a;
    wire [5:0] i_fpga_indvars_iv_next_kernel_3mm48_b;
    logic [5:0] i_fpga_indvars_iv_next_kernel_3mm48_o;
    wire [5:0] i_fpga_indvars_iv_next_kernel_3mm48_q;
    wire [63:0] i_idxprom11_kernel_3mm16_vt_join_q;
    wire [31:0] i_idxprom11_kernel_3mm16_vt_select_31_b;
    wire [63:0] i_idxprom_kernel_3mm14_vt_join_q;
    wire [31:0] i_idxprom_kernel_3mm14_vt_select_31_b;
    wire [32:0] i_inc_kernel_3mm38_a;
    wire [32:0] i_inc_kernel_3mm38_b;
    logic [32:0] i_inc_kernel_3mm38_o;
    wire [32:0] i_inc_kernel_3mm38_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024a10i32_a10541_kernel_3mm17_out_dest_data_out_0_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024a10i32_b10642_kernel_3mm20_out_dest_data_out_1_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024a10i32_c10743_kernel_3mm23_out_dest_data_out_2_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024a10i32_d10844_kernel_3mm26_out_dest_data_out_3_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024a10i32_e10945_kernel_3mm29_out_dest_data_out_4_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024a10i32_f11046_kernel_3mm32_out_dest_data_out_5_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024a10i32_g11148_kernel_3mm35_out_dest_data_out_6_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp138151_pop38_kernel_3mm51_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp138151_pop38_kernel_3mm51_out_feedback_stall_out_38;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups129_pop37_kernel_3mm2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups129_pop37_kernel_3mm2_out_feedback_stall_out_37;
    wire [1:0] i_llvm_fpga_pop_i2_initerations124_pop36_kernel_3mm7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations124_pop36_kernel_3mm7_out_feedback_stall_out_36;
    wire [31:0] i_llvm_fpga_pop_i32_i_0104_pop27152_pop39_kernel_3mm12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_0104_pop27152_pop39_kernel_3mm12_out_feedback_stall_out_39;
    wire [31:0] i_llvm_fpga_pop_i32_j_0103_pop35_kernel_3mm15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_0103_pop35_kernel_3mm15_out_feedback_stall_out_35;
    wire [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv_pop34_kernel_3mm40_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv_pop34_kernel_3mm40_out_feedback_stall_out_34;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration128_kernel_3mm11_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration128_kernel_3mm11_out_feedback_valid_out_20;
    wire [0:0] i_llvm_fpga_push_i1_notcmp138151_push38_kernel_3mm52_out_feedback_out_38;
    wire [0:0] i_llvm_fpga_push_i1_notcmp138151_push38_kernel_3mm52_out_feedback_valid_out_38;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond136_kernel_3mm44_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond136_kernel_3mm44_out_feedback_valid_out_21;
    wire [7:0] i_llvm_fpga_push_i2_cleanups129_push37_kernel_3mm47_out_feedback_out_37;
    wire [0:0] i_llvm_fpga_push_i2_cleanups129_push37_kernel_3mm47_out_feedback_valid_out_37;
    wire [7:0] i_llvm_fpga_push_i2_initerations124_push36_kernel_3mm9_out_feedback_out_36;
    wire [0:0] i_llvm_fpga_push_i2_initerations124_push36_kernel_3mm9_out_feedback_valid_out_36;
    wire [31:0] i_llvm_fpga_push_i32_i_0104_pop27152_push39_kernel_3mm13_out_feedback_out_39;
    wire [0:0] i_llvm_fpga_push_i32_i_0104_pop27152_push39_kernel_3mm13_out_feedback_valid_out_39;
    wire [31:0] i_llvm_fpga_push_i32_j_0103_push35_kernel_3mm39_out_feedback_out_35;
    wire [0:0] i_llvm_fpga_push_i32_j_0103_push35_kernel_3mm39_out_feedback_valid_out_35;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push34_kernel_3mm49_out_feedback_out_34;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push34_kernel_3mm49_out_feedback_valid_out_34;
    wire [0:0] i_masked135_kernel_3mm50_qi;
    reg [0:0] i_masked135_kernel_3mm50_q;
    wire [0:0] i_next_cleanups134_kernel_3mm46_s;
    reg [1:0] i_next_cleanups134_kernel_3mm46_q;
    wire [1:0] i_next_initerations125_kernel_3mm8_vt_join_q;
    wire [0:0] i_next_initerations125_kernel_3mm8_vt_select_0_b;
    wire [0:0] i_notcmp122_kernel_3mm43_q;
    wire [0:0] i_or133_kernel_3mm45_q;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next_kernel_3mm48_sel_x_b;
    wire [31:0] bgTrunc_i_inc_kernel_3mm38_sel_x_b;
    wire [64:0] i_arrayidx12_kernel_3mm0_add_x_a;
    wire [64:0] i_arrayidx12_kernel_3mm0_add_x_b;
    logic [64:0] i_arrayidx12_kernel_3mm0_add_x_o;
    wire [64:0] i_arrayidx12_kernel_3mm0_add_x_q;
    wire [61:0] i_arrayidx12_kernel_3mm0_narrow_x_b;
    wire [63:0] i_arrayidx12_kernel_3mm0_shift_join_x_q;
    wire [64:0] i_arrayidx12_kernel_3mm0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx12_kernel_3mm0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx12_kernel_3mm0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx12_kernel_3mm0_dupName_0_add_x_q;
    wire [127:0] i_arrayidx12_kernel_3mm0_mult_extender_x_q;
    wire [57:0] i_arrayidx12_kernel_3mm0_mult_multconst_x_q;
    wire [63:0] i_arrayidx12_kernel_3mm0_trunc_sel_x_b;
    wire [63:0] i_arrayidx12_kernel_3mm0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx12_kernel_3mm0_dupName_2_trunc_sel_x_b;
    wire [9:0] i_arrayidx161_kernel_3mm0_add_x_a;
    wire [9:0] i_arrayidx161_kernel_3mm0_add_x_b;
    logic [9:0] i_arrayidx161_kernel_3mm0_add_x_o;
    wire [9:0] i_arrayidx161_kernel_3mm0_add_x_q;
    wire [63:0] i_arrayidx161_kernel_3mm0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx161_kernel_3mm0_narrow_x_b;
    wire [8:0] i_arrayidx161_kernel_3mm0_shift_join_x_q;
    wire [9:0] i_arrayidx161_kernel_3mm0_dupName_0_add_x_a;
    wire [9:0] i_arrayidx161_kernel_3mm0_dupName_0_add_x_b;
    logic [9:0] i_arrayidx161_kernel_3mm0_dupName_0_add_x_o;
    wire [9:0] i_arrayidx161_kernel_3mm0_dupName_0_add_x_q;
    wire [17:0] i_arrayidx161_kernel_3mm0_mult_extender_x_q;
    wire [2:0] i_arrayidx161_kernel_3mm0_mult_multconst_x_q;
    wire [8:0] i_arrayidx161_kernel_3mm0_dupName_0_trunc_sel_x_b;
    wire [8:0] i_arrayidx161_kernel_3mm0_dupName_1_trunc_sel_x_b;
    wire [8:0] i_arrayidx161_kernel_3mm0_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx161_kernel_3mm0_dupName_3_trunc_sel_x_b;
    wire [8:0] i_arrayidx161_kernel_3mm0_dupName_5_trunc_sel_x_b;
    wire [64:0] i_arrayidx20_kernel_3mm0_add_x_a;
    wire [64:0] i_arrayidx20_kernel_3mm0_add_x_b;
    logic [64:0] i_arrayidx20_kernel_3mm0_add_x_o;
    wire [64:0] i_arrayidx20_kernel_3mm0_add_x_q;
    wire [64:0] i_arrayidx20_kernel_3mm0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx20_kernel_3mm0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx20_kernel_3mm0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx20_kernel_3mm0_dupName_0_add_x_q;
    wire [127:0] i_arrayidx20_kernel_3mm0_mult_extender_x_q;
    wire [63:0] i_arrayidx20_kernel_3mm0_trunc_sel_x_b;
    wire [63:0] i_arrayidx20_kernel_3mm0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx20_kernel_3mm0_dupName_2_trunc_sel_x_b;
    wire [9:0] i_arrayidx242_kernel_3mm0_add_x_a;
    wire [9:0] i_arrayidx242_kernel_3mm0_add_x_b;
    logic [9:0] i_arrayidx242_kernel_3mm0_add_x_o;
    wire [9:0] i_arrayidx242_kernel_3mm0_add_x_q;
    wire [63:0] i_arrayidx242_kernel_3mm0_append_upper_bits_x_q;
    wire [9:0] i_arrayidx242_kernel_3mm0_dupName_0_add_x_a;
    wire [9:0] i_arrayidx242_kernel_3mm0_dupName_0_add_x_b;
    logic [9:0] i_arrayidx242_kernel_3mm0_dupName_0_add_x_o;
    wire [9:0] i_arrayidx242_kernel_3mm0_dupName_0_add_x_q;
    wire [8:0] i_arrayidx242_kernel_3mm0_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx242_kernel_3mm0_dupName_5_trunc_sel_x_b;
    wire [64:0] i_arrayidx28_kernel_3mm0_add_x_a;
    wire [64:0] i_arrayidx28_kernel_3mm0_add_x_b;
    logic [64:0] i_arrayidx28_kernel_3mm0_add_x_o;
    wire [64:0] i_arrayidx28_kernel_3mm0_add_x_q;
    wire [64:0] i_arrayidx28_kernel_3mm0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx28_kernel_3mm0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx28_kernel_3mm0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx28_kernel_3mm0_dupName_0_add_x_q;
    wire [127:0] i_arrayidx28_kernel_3mm0_mult_extender_x_q;
    wire [63:0] i_arrayidx28_kernel_3mm0_trunc_sel_x_b;
    wire [63:0] i_arrayidx28_kernel_3mm0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx28_kernel_3mm0_dupName_2_trunc_sel_x_b;
    wire [9:0] i_arrayidx323_kernel_3mm0_add_x_a;
    wire [9:0] i_arrayidx323_kernel_3mm0_add_x_b;
    logic [9:0] i_arrayidx323_kernel_3mm0_add_x_o;
    wire [9:0] i_arrayidx323_kernel_3mm0_add_x_q;
    wire [63:0] i_arrayidx323_kernel_3mm0_append_upper_bits_x_q;
    wire [9:0] i_arrayidx323_kernel_3mm0_dupName_0_add_x_a;
    wire [9:0] i_arrayidx323_kernel_3mm0_dupName_0_add_x_b;
    logic [9:0] i_arrayidx323_kernel_3mm0_dupName_0_add_x_o;
    wire [9:0] i_arrayidx323_kernel_3mm0_dupName_0_add_x_q;
    wire [8:0] i_arrayidx323_kernel_3mm0_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx323_kernel_3mm0_dupName_5_trunc_sel_x_b;
    wire [64:0] i_arrayidx36_kernel_3mm0_add_x_a;
    wire [64:0] i_arrayidx36_kernel_3mm0_add_x_b;
    logic [64:0] i_arrayidx36_kernel_3mm0_add_x_o;
    wire [64:0] i_arrayidx36_kernel_3mm0_add_x_q;
    wire [64:0] i_arrayidx36_kernel_3mm0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx36_kernel_3mm0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx36_kernel_3mm0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx36_kernel_3mm0_dupName_0_add_x_q;
    wire [127:0] i_arrayidx36_kernel_3mm0_mult_extender_x_q;
    wire [63:0] i_arrayidx36_kernel_3mm0_trunc_sel_x_b;
    wire [63:0] i_arrayidx36_kernel_3mm0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx36_kernel_3mm0_dupName_2_trunc_sel_x_b;
    wire [9:0] i_arrayidx404_kernel_3mm0_add_x_a;
    wire [9:0] i_arrayidx404_kernel_3mm0_add_x_b;
    logic [9:0] i_arrayidx404_kernel_3mm0_add_x_o;
    wire [9:0] i_arrayidx404_kernel_3mm0_add_x_q;
    wire [63:0] i_arrayidx404_kernel_3mm0_append_upper_bits_x_q;
    wire [9:0] i_arrayidx404_kernel_3mm0_dupName_0_add_x_a;
    wire [9:0] i_arrayidx404_kernel_3mm0_dupName_0_add_x_b;
    logic [9:0] i_arrayidx404_kernel_3mm0_dupName_0_add_x_o;
    wire [9:0] i_arrayidx404_kernel_3mm0_dupName_0_add_x_q;
    wire [8:0] i_arrayidx404_kernel_3mm0_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx404_kernel_3mm0_dupName_5_trunc_sel_x_b;
    wire [64:0] i_arrayidx44_kernel_3mm0_add_x_a;
    wire [64:0] i_arrayidx44_kernel_3mm0_add_x_b;
    logic [64:0] i_arrayidx44_kernel_3mm0_add_x_o;
    wire [64:0] i_arrayidx44_kernel_3mm0_add_x_q;
    wire [64:0] i_arrayidx44_kernel_3mm0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx44_kernel_3mm0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx44_kernel_3mm0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx44_kernel_3mm0_dupName_0_add_x_q;
    wire [127:0] i_arrayidx44_kernel_3mm0_mult_extender_x_q;
    wire [63:0] i_arrayidx44_kernel_3mm0_trunc_sel_x_b;
    wire [63:0] i_arrayidx44_kernel_3mm0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx44_kernel_3mm0_dupName_2_trunc_sel_x_b;
    wire [9:0] i_arrayidx485_kernel_3mm0_add_x_a;
    wire [9:0] i_arrayidx485_kernel_3mm0_add_x_b;
    logic [9:0] i_arrayidx485_kernel_3mm0_add_x_o;
    wire [9:0] i_arrayidx485_kernel_3mm0_add_x_q;
    wire [63:0] i_arrayidx485_kernel_3mm0_append_upper_bits_x_q;
    wire [9:0] i_arrayidx485_kernel_3mm0_dupName_0_add_x_a;
    wire [9:0] i_arrayidx485_kernel_3mm0_dupName_0_add_x_b;
    logic [9:0] i_arrayidx485_kernel_3mm0_dupName_0_add_x_o;
    wire [9:0] i_arrayidx485_kernel_3mm0_dupName_0_add_x_q;
    wire [8:0] i_arrayidx485_kernel_3mm0_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx485_kernel_3mm0_dupName_5_trunc_sel_x_b;
    wire [64:0] i_arrayidx52_kernel_3mm0_add_x_a;
    wire [64:0] i_arrayidx52_kernel_3mm0_add_x_b;
    logic [64:0] i_arrayidx52_kernel_3mm0_add_x_o;
    wire [64:0] i_arrayidx52_kernel_3mm0_add_x_q;
    wire [64:0] i_arrayidx52_kernel_3mm0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx52_kernel_3mm0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx52_kernel_3mm0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx52_kernel_3mm0_dupName_0_add_x_q;
    wire [127:0] i_arrayidx52_kernel_3mm0_mult_extender_x_q;
    wire [63:0] i_arrayidx52_kernel_3mm0_trunc_sel_x_b;
    wire [63:0] i_arrayidx52_kernel_3mm0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx52_kernel_3mm0_dupName_2_trunc_sel_x_b;
    wire [9:0] i_arrayidx566_kernel_3mm0_add_x_a;
    wire [9:0] i_arrayidx566_kernel_3mm0_add_x_b;
    logic [9:0] i_arrayidx566_kernel_3mm0_add_x_o;
    wire [9:0] i_arrayidx566_kernel_3mm0_add_x_q;
    wire [63:0] i_arrayidx566_kernel_3mm0_append_upper_bits_x_q;
    wire [9:0] i_arrayidx566_kernel_3mm0_dupName_0_add_x_a;
    wire [9:0] i_arrayidx566_kernel_3mm0_dupName_0_add_x_b;
    logic [9:0] i_arrayidx566_kernel_3mm0_dupName_0_add_x_o;
    wire [9:0] i_arrayidx566_kernel_3mm0_dupName_0_add_x_q;
    wire [8:0] i_arrayidx566_kernel_3mm0_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx566_kernel_3mm0_dupName_5_trunc_sel_x_b;
    wire [64:0] i_arrayidx60_kernel_3mm0_add_x_a;
    wire [64:0] i_arrayidx60_kernel_3mm0_add_x_b;
    logic [64:0] i_arrayidx60_kernel_3mm0_add_x_o;
    wire [64:0] i_arrayidx60_kernel_3mm0_add_x_q;
    wire [64:0] i_arrayidx60_kernel_3mm0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx60_kernel_3mm0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx60_kernel_3mm0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx60_kernel_3mm0_dupName_0_add_x_q;
    wire [127:0] i_arrayidx60_kernel_3mm0_mult_extender_x_q;
    wire [63:0] i_arrayidx60_kernel_3mm0_trunc_sel_x_b;
    wire [63:0] i_arrayidx60_kernel_3mm0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx60_kernel_3mm0_dupName_2_trunc_sel_x_b;
    wire [9:0] i_arrayidx647_kernel_3mm0_add_x_a;
    wire [9:0] i_arrayidx647_kernel_3mm0_add_x_b;
    logic [9:0] i_arrayidx647_kernel_3mm0_add_x_o;
    wire [9:0] i_arrayidx647_kernel_3mm0_add_x_q;
    wire [63:0] i_arrayidx647_kernel_3mm0_append_upper_bits_x_q;
    wire [9:0] i_arrayidx647_kernel_3mm0_dupName_0_add_x_a;
    wire [9:0] i_arrayidx647_kernel_3mm0_dupName_0_add_x_b;
    logic [9:0] i_arrayidx647_kernel_3mm0_dupName_0_add_x_o;
    wire [9:0] i_arrayidx647_kernel_3mm0_dupName_0_add_x_q;
    wire [8:0] i_arrayidx647_kernel_3mm0_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx647_kernel_3mm0_dupName_5_trunc_sel_x_b;
    wire [0:0] i_first_cleanup131_kernel_3mm3_sel_x_b;
    wire [63:0] i_idxprom11_kernel_3mm16_sel_x_b;
    wire [63:0] i_idxprom_kernel_3mm14_sel_x_b;
    wire [0:0] i_last_initeration127_kernel_3mm10_sel_x_b;
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
    wire [0:0] i_exitcond_kernel_3mm41_cmp_nsign_q;
    wire [9:0] i_arrayidx12_kernel_3mm0_mult_x_bs1_b;
    wire [53:0] i_arrayidx12_kernel_3mm0_mult_x_bs4_in;
    wire [17:0] i_arrayidx12_kernel_3mm0_mult_x_bs4_b;
    wire [35:0] i_arrayidx12_kernel_3mm0_mult_x_bs7_in;
    wire [17:0] i_arrayidx12_kernel_3mm0_mult_x_bs7_b;
    wire [17:0] i_arrayidx12_kernel_3mm0_mult_x_bs10_in;
    wire [17:0] i_arrayidx12_kernel_3mm0_mult_x_bs10_b;
    wire [35:0] i_arrayidx12_kernel_3mm0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx12_kernel_3mm0_mult_x_sums_align_0_qint;
    wire [59:0] i_arrayidx12_kernel_3mm0_mult_x_sums_join_1_q;
    wire [41:0] i_arrayidx12_kernel_3mm0_mult_x_sums_align_2_q;
    wire [41:0] i_arrayidx12_kernel_3mm0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx12_kernel_3mm0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx12_kernel_3mm0_mult_x_sums_align_3_qint;
    wire [69:0] i_arrayidx12_kernel_3mm0_mult_x_sums_join_4_q;
    wire [70:0] i_arrayidx12_kernel_3mm0_mult_x_sums_result_add_0_0_a;
    wire [70:0] i_arrayidx12_kernel_3mm0_mult_x_sums_result_add_0_0_b;
    logic [70:0] i_arrayidx12_kernel_3mm0_mult_x_sums_result_add_0_0_o;
    wire [70:0] i_arrayidx12_kernel_3mm0_mult_x_sums_result_add_0_0_q;
    wire [9:0] addsumAHighB_uid472_i_arrayidx161_kernel_3mm0_mult_x_a;
    wire [9:0] addsumAHighB_uid472_i_arrayidx161_kernel_3mm0_mult_x_b;
    logic [9:0] addsumAHighB_uid472_i_arrayidx161_kernel_3mm0_mult_x_o;
    wire [9:0] addsumAHighB_uid472_i_arrayidx161_kernel_3mm0_mult_x_q;
    wire [11:0] add_uid473_i_arrayidx161_kernel_3mm0_mult_x_q;
    wire [14:0] sR_mergedSignalTM_uid478_i_arrayidx161_kernel_3mm0_mult_x_q;
    wire [35:0] i_arrayidx20_kernel_3mm0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx20_kernel_3mm0_mult_x_sums_align_0_qint;
    wire [59:0] i_arrayidx20_kernel_3mm0_mult_x_sums_join_1_q;
    wire [41:0] i_arrayidx20_kernel_3mm0_mult_x_sums_align_2_q;
    wire [41:0] i_arrayidx20_kernel_3mm0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx20_kernel_3mm0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx20_kernel_3mm0_mult_x_sums_align_3_qint;
    wire [69:0] i_arrayidx20_kernel_3mm0_mult_x_sums_join_4_q;
    wire [70:0] i_arrayidx20_kernel_3mm0_mult_x_sums_result_add_0_0_a;
    wire [70:0] i_arrayidx20_kernel_3mm0_mult_x_sums_result_add_0_0_b;
    logic [70:0] i_arrayidx20_kernel_3mm0_mult_x_sums_result_add_0_0_o;
    wire [70:0] i_arrayidx20_kernel_3mm0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx28_kernel_3mm0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx28_kernel_3mm0_mult_x_sums_align_0_qint;
    wire [59:0] i_arrayidx28_kernel_3mm0_mult_x_sums_join_1_q;
    wire [41:0] i_arrayidx28_kernel_3mm0_mult_x_sums_align_2_q;
    wire [41:0] i_arrayidx28_kernel_3mm0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx28_kernel_3mm0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx28_kernel_3mm0_mult_x_sums_align_3_qint;
    wire [69:0] i_arrayidx28_kernel_3mm0_mult_x_sums_join_4_q;
    wire [70:0] i_arrayidx28_kernel_3mm0_mult_x_sums_result_add_0_0_a;
    wire [70:0] i_arrayidx28_kernel_3mm0_mult_x_sums_result_add_0_0_b;
    logic [70:0] i_arrayidx28_kernel_3mm0_mult_x_sums_result_add_0_0_o;
    wire [70:0] i_arrayidx28_kernel_3mm0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx36_kernel_3mm0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx36_kernel_3mm0_mult_x_sums_align_0_qint;
    wire [59:0] i_arrayidx36_kernel_3mm0_mult_x_sums_join_1_q;
    wire [41:0] i_arrayidx36_kernel_3mm0_mult_x_sums_align_2_q;
    wire [41:0] i_arrayidx36_kernel_3mm0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx36_kernel_3mm0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx36_kernel_3mm0_mult_x_sums_align_3_qint;
    wire [69:0] i_arrayidx36_kernel_3mm0_mult_x_sums_join_4_q;
    wire [70:0] i_arrayidx36_kernel_3mm0_mult_x_sums_result_add_0_0_a;
    wire [70:0] i_arrayidx36_kernel_3mm0_mult_x_sums_result_add_0_0_b;
    logic [70:0] i_arrayidx36_kernel_3mm0_mult_x_sums_result_add_0_0_o;
    wire [70:0] i_arrayidx36_kernel_3mm0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx44_kernel_3mm0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx44_kernel_3mm0_mult_x_sums_align_0_qint;
    wire [59:0] i_arrayidx44_kernel_3mm0_mult_x_sums_join_1_q;
    wire [41:0] i_arrayidx44_kernel_3mm0_mult_x_sums_align_2_q;
    wire [41:0] i_arrayidx44_kernel_3mm0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx44_kernel_3mm0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx44_kernel_3mm0_mult_x_sums_align_3_qint;
    wire [69:0] i_arrayidx44_kernel_3mm0_mult_x_sums_join_4_q;
    wire [70:0] i_arrayidx44_kernel_3mm0_mult_x_sums_result_add_0_0_a;
    wire [70:0] i_arrayidx44_kernel_3mm0_mult_x_sums_result_add_0_0_b;
    logic [70:0] i_arrayidx44_kernel_3mm0_mult_x_sums_result_add_0_0_o;
    wire [70:0] i_arrayidx44_kernel_3mm0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx52_kernel_3mm0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx52_kernel_3mm0_mult_x_sums_align_0_qint;
    wire [59:0] i_arrayidx52_kernel_3mm0_mult_x_sums_join_1_q;
    wire [41:0] i_arrayidx52_kernel_3mm0_mult_x_sums_align_2_q;
    wire [41:0] i_arrayidx52_kernel_3mm0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx52_kernel_3mm0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx52_kernel_3mm0_mult_x_sums_align_3_qint;
    wire [69:0] i_arrayidx52_kernel_3mm0_mult_x_sums_join_4_q;
    wire [70:0] i_arrayidx52_kernel_3mm0_mult_x_sums_result_add_0_0_a;
    wire [70:0] i_arrayidx52_kernel_3mm0_mult_x_sums_result_add_0_0_b;
    logic [70:0] i_arrayidx52_kernel_3mm0_mult_x_sums_result_add_0_0_o;
    wire [70:0] i_arrayidx52_kernel_3mm0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx60_kernel_3mm0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx60_kernel_3mm0_mult_x_sums_align_0_qint;
    wire [59:0] i_arrayidx60_kernel_3mm0_mult_x_sums_join_1_q;
    wire [41:0] i_arrayidx60_kernel_3mm0_mult_x_sums_align_2_q;
    wire [41:0] i_arrayidx60_kernel_3mm0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx60_kernel_3mm0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx60_kernel_3mm0_mult_x_sums_align_3_qint;
    wire [69:0] i_arrayidx60_kernel_3mm0_mult_x_sums_join_4_q;
    wire [70:0] i_arrayidx60_kernel_3mm0_mult_x_sums_result_add_0_0_a;
    wire [70:0] i_arrayidx60_kernel_3mm0_mult_x_sums_result_add_0_0_b;
    logic [70:0] i_arrayidx60_kernel_3mm0_mult_x_sums_result_add_0_0_o;
    wire [70:0] i_arrayidx60_kernel_3mm0_mult_x_sums_result_add_0_0_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid896_i_cleanups_shl130_kernel_3mm0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid896_i_cleanups_shl130_kernel_3mm0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid897_i_cleanups_shl130_kernel_3mm0_shift_x_q;
    wire [0:0] leftShiftStage0_uid899_i_cleanups_shl130_kernel_3mm0_shift_x_s;
    reg [1:0] leftShiftStage0_uid899_i_cleanups_shl130_kernel_3mm0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid903_i_next_initerations125_kernel_3mm0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid905_i_next_initerations125_kernel_3mm0_shift_x_q;
    wire [0:0] rightShiftStage0_uid907_i_next_initerations125_kernel_3mm0_shift_x_s;
    reg [1:0] rightShiftStage0_uid907_i_next_initerations125_kernel_3mm0_shift_x_q;
    wire [10:0] addsumAHighB_uid918_i_arrayidx12_kernel_3mm0_mult_x_im0_a;
    wire [10:0] addsumAHighB_uid918_i_arrayidx12_kernel_3mm0_mult_x_im0_b;
    logic [10:0] addsumAHighB_uid918_i_arrayidx12_kernel_3mm0_mult_x_im0_o;
    wire [10:0] addsumAHighB_uid918_i_arrayidx12_kernel_3mm0_mult_x_im0_q;
    wire [12:0] add_uid919_i_arrayidx12_kernel_3mm0_mult_x_im0_q;
    wire [15:0] sR_mergedSignalTM_uid924_i_arrayidx12_kernel_3mm0_mult_x_im0_q;
    wire [18:0] addsumAHighB_uid964_i_arrayidx12_kernel_3mm0_mult_x_im3_a;
    wire [18:0] addsumAHighB_uid964_i_arrayidx12_kernel_3mm0_mult_x_im3_b;
    logic [18:0] addsumAHighB_uid964_i_arrayidx12_kernel_3mm0_mult_x_im3_o;
    wire [18:0] addsumAHighB_uid964_i_arrayidx12_kernel_3mm0_mult_x_im3_q;
    wire [20:0] add_uid965_i_arrayidx12_kernel_3mm0_mult_x_im3_q;
    wire [23:0] sR_mergedSignalTM_uid970_i_arrayidx12_kernel_3mm0_mult_x_im3_q;
    wire [18:0] addsumAHighB_uid1022_i_arrayidx12_kernel_3mm0_mult_x_im6_a;
    wire [18:0] addsumAHighB_uid1022_i_arrayidx12_kernel_3mm0_mult_x_im6_b;
    logic [18:0] addsumAHighB_uid1022_i_arrayidx12_kernel_3mm0_mult_x_im6_o;
    wire [18:0] addsumAHighB_uid1022_i_arrayidx12_kernel_3mm0_mult_x_im6_q;
    wire [20:0] add_uid1023_i_arrayidx12_kernel_3mm0_mult_x_im6_q;
    wire [23:0] sR_mergedSignalTM_uid1028_i_arrayidx12_kernel_3mm0_mult_x_im6_q;
    wire [18:0] addsumAHighB_uid1080_i_arrayidx12_kernel_3mm0_mult_x_im9_a;
    wire [18:0] addsumAHighB_uid1080_i_arrayidx12_kernel_3mm0_mult_x_im9_b;
    logic [18:0] addsumAHighB_uid1080_i_arrayidx12_kernel_3mm0_mult_x_im9_o;
    wire [18:0] addsumAHighB_uid1080_i_arrayidx12_kernel_3mm0_mult_x_im9_q;
    wire [20:0] add_uid1081_i_arrayidx12_kernel_3mm0_mult_x_im9_q;
    wire [23:0] sR_mergedSignalTM_uid1086_i_arrayidx12_kernel_3mm0_mult_x_im9_q;
    wire [54:0] i_arrayidx161_kernel_3mm0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx161_kernel_3mm0_upper_bits_x_merged_bit_select_c;
    wire [54:0] i_arrayidx242_kernel_3mm0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx242_kernel_3mm0_upper_bits_x_merged_bit_select_c;
    wire [54:0] i_arrayidx323_kernel_3mm0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx323_kernel_3mm0_upper_bits_x_merged_bit_select_c;
    wire [54:0] i_arrayidx404_kernel_3mm0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx404_kernel_3mm0_upper_bits_x_merged_bit_select_c;
    wire [54:0] i_arrayidx485_kernel_3mm0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx485_kernel_3mm0_upper_bits_x_merged_bit_select_c;
    wire [54:0] i_arrayidx566_kernel_3mm0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx566_kernel_3mm0_upper_bits_x_merged_bit_select_c;
    wire [54:0] i_arrayidx647_kernel_3mm0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx647_kernel_3mm0_upper_bits_x_merged_bit_select_c;
    wire [1:0] lowRangeB_uid470_i_arrayidx161_kernel_3mm0_mult_x_merged_bit_select_b;
    wire [6:0] lowRangeB_uid470_i_arrayidx161_kernel_3mm0_mult_x_merged_bit_select_c;
    wire [1:0] lowRangeB_uid916_i_arrayidx12_kernel_3mm0_mult_x_im0_merged_bit_select_b;
    wire [7:0] lowRangeB_uid916_i_arrayidx12_kernel_3mm0_mult_x_im0_merged_bit_select_c;
    wire [1:0] lowRangeB_uid962_i_arrayidx12_kernel_3mm0_mult_x_im3_merged_bit_select_b;
    wire [15:0] lowRangeB_uid962_i_arrayidx12_kernel_3mm0_mult_x_im3_merged_bit_select_c;
    wire [1:0] lowRangeB_uid1020_i_arrayidx12_kernel_3mm0_mult_x_im6_merged_bit_select_b;
    wire [15:0] lowRangeB_uid1020_i_arrayidx12_kernel_3mm0_mult_x_im6_merged_bit_select_c;
    wire [1:0] lowRangeB_uid1078_i_arrayidx12_kernel_3mm0_mult_x_im9_merged_bit_select_b;
    wire [15:0] lowRangeB_uid1078_i_arrayidx12_kernel_3mm0_mult_x_im9_merged_bit_select_c;
    reg [0:0] redist0_sync_together87_aunroll_x_in_c0_eni3_1_tpl_1_q;
    reg [0:0] redist1_sync_together87_aunroll_x_in_c0_eni3_1_tpl_3_q;
    reg [0:0] redist1_sync_together87_aunroll_x_in_c0_eni3_1_tpl_3_delay_0;
    reg [31:0] redist2_sync_together87_aunroll_x_in_c0_eni3_2_tpl_1_q;
    reg [0:0] redist3_sync_together87_aunroll_x_in_c0_eni3_3_tpl_1_q;
    reg [0:0] redist4_sync_together87_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist5_sync_together87_aunroll_x_in_i_valid_2_q;
    reg [63:0] redist6_i_arrayidx60_kernel_3mm0_trunc_sel_x_b_1_q;
    reg [63:0] redist7_i_arrayidx52_kernel_3mm0_trunc_sel_x_b_1_q;
    reg [63:0] redist8_i_arrayidx44_kernel_3mm0_trunc_sel_x_b_1_q;
    reg [63:0] redist9_i_arrayidx36_kernel_3mm0_trunc_sel_x_b_1_q;
    reg [63:0] redist10_i_arrayidx28_kernel_3mm0_trunc_sel_x_b_1_q;
    reg [63:0] redist11_i_arrayidx20_kernel_3mm0_trunc_sel_x_b_1_q;
    reg [8:0] redist12_i_arrayidx161_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q;
    reg [63:0] redist13_i_arrayidx12_kernel_3mm0_trunc_sel_x_b_1_q;
    reg [0:0] redist14_i_masked135_kernel_3mm50_q_2_q;
    reg [31:0] redist15_i_llvm_fpga_pop_i32_i_0104_pop27152_pop39_kernel_3mm12_out_data_out_1_q;
    reg [0:0] redist16_i_llvm_fpga_pop_i1_notcmp138151_pop38_kernel_3mm51_out_data_out_2_q;
    reg [0:0] redist16_i_llvm_fpga_pop_i1_notcmp138151_pop38_kernel_3mm51_out_data_out_2_delay_0;
    reg [0:0] redist17_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_out_data_out_1_q;
    reg [0:0] redist18_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_out_data_out_2_q;
    reg [0:0] redist19_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_out_data_out_3_q;
    reg [0:0] redist20_i_first_cleanup_xor132_kernel_3mm4_q_2_q;
    reg [0:0] redist20_i_first_cleanup_xor132_kernel_3mm4_q_2_delay_0;
    wire [0:0] enable_stall_connector_not_enable_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // enable_stall_connector_not_enable(LOGICAL,2481)
    assign enable_stall_connector_not_enable_q = $unsigned(~ (in_enable));

    // redist4_sync_together87_aunroll_x_in_i_valid_1(DELAY,2464)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together87_aunroll_x_in_i_valid_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist4_sync_together87_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // redist17_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_out_data_out_1(DELAY,2477)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_out_data_out_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist17_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid896_i_cleanups_shl130_kernel_3mm0_shift_x(BITSELECT,895)@2
    assign leftShiftStage0Idx1Rng1_uid896_i_cleanups_shl130_kernel_3mm0_shift_x_in = i_llvm_fpga_pop_i2_cleanups129_pop37_kernel_3mm2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid896_i_cleanups_shl130_kernel_3mm0_shift_x_b = leftShiftStage0Idx1Rng1_uid896_i_cleanups_shl130_kernel_3mm0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid897_i_cleanups_shl130_kernel_3mm0_shift_x(BITJOIN,896)@2
    assign leftShiftStage0Idx1_uid897_i_cleanups_shl130_kernel_3mm0_shift_x_q = {leftShiftStage0Idx1Rng1_uid896_i_cleanups_shl130_kernel_3mm0_shift_x_b, GND_q};

    // leftShiftStage0_uid899_i_cleanups_shl130_kernel_3mm0_shift_x(MUX,898)@2
    assign leftShiftStage0_uid899_i_cleanups_shl130_kernel_3mm0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid899_i_cleanups_shl130_kernel_3mm0_shift_x_s or i_llvm_fpga_pop_i2_cleanups129_pop37_kernel_3mm2_out_data_out or leftShiftStage0Idx1_uid897_i_cleanups_shl130_kernel_3mm0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid899_i_cleanups_shl130_kernel_3mm0_shift_x_s)
            1'b0 : leftShiftStage0_uid899_i_cleanups_shl130_kernel_3mm0_shift_x_q = i_llvm_fpga_pop_i2_cleanups129_pop37_kernel_3mm2_out_data_out;
            1'b1 : leftShiftStage0_uid899_i_cleanups_shl130_kernel_3mm0_shift_x_q = leftShiftStage0Idx1_uid897_i_cleanups_shl130_kernel_3mm0_shift_x_q;
            default : leftShiftStage0_uid899_i_cleanups_shl130_kernel_3mm0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl130_kernel_3mm5_vt_select_1(BITSELECT,44)@2
    assign i_cleanups_shl130_kernel_3mm5_vt_select_1_b = leftShiftStage0_uid899_i_cleanups_shl130_kernel_3mm0_shift_x_q[1:1];

    // i_cleanups_shl130_kernel_3mm5_vt_join(BITJOIN,43)@2
    assign i_cleanups_shl130_kernel_3mm5_vt_join_q = {i_cleanups_shl130_kernel_3mm5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor132_kernel_3mm4(LOGICAL,47)@2
    assign i_first_cleanup_xor132_kernel_3mm4_q = i_first_cleanup131_kernel_3mm3_sel_x_b ^ VCC_q;

    // i_notcmp122_kernel_3mm43(LOGICAL,86)@2
    assign i_notcmp122_kernel_3mm43_q = i_exitcond_kernel_3mm41_cmp_nsign_q ^ VCC_q;

    // i_or133_kernel_3mm45(LOGICAL,87)@2
    assign i_or133_kernel_3mm45_q = i_notcmp122_kernel_3mm43_q | i_first_cleanup_xor132_kernel_3mm4_q;

    // i_next_cleanups134_kernel_3mm46(MUX,82)@2
    assign i_next_cleanups134_kernel_3mm46_s = i_or133_kernel_3mm45_q;
    always @(i_next_cleanups134_kernel_3mm46_s or i_llvm_fpga_pop_i2_cleanups129_pop37_kernel_3mm2_out_data_out or i_cleanups_shl130_kernel_3mm5_vt_join_q)
    begin
        unique case (i_next_cleanups134_kernel_3mm46_s)
            1'b0 : i_next_cleanups134_kernel_3mm46_q = i_llvm_fpga_pop_i2_cleanups129_pop37_kernel_3mm2_out_data_out;
            1'b1 : i_next_cleanups134_kernel_3mm46_q = i_cleanups_shl130_kernel_3mm5_vt_join_q;
            default : i_next_cleanups134_kernel_3mm46_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups129_push37_kernel_3mm47(BLACKBOX,76)@2
    // out out_feedback_out_37@20000000
    // out out_feedback_valid_out_37@20000000
    kernel_3mm_i_llvm_fpga_push_i2_cleanups129_push37_0 thei_llvm_fpga_push_i2_cleanups129_push37_kernel_3mm47 (
        .in_data_in(i_next_cleanups134_kernel_3mm46_q),
        .in_feedback_stall_in_37(i_llvm_fpga_pop_i2_cleanups129_pop37_kernel_3mm2_out_feedback_stall_out_37),
        .in_keep_going126(redist17_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist4_sync_together87_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_37(i_llvm_fpga_push_i2_cleanups129_push37_kernel_3mm47_out_feedback_out_37),
        .out_feedback_valid_out_37(i_llvm_fpga_push_i2_cleanups129_push37_kernel_3mm47_out_feedback_valid_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together87_aunroll_x_in_c0_eni3_1_tpl_1(DELAY,2460)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together87_aunroll_x_in_c0_eni3_1_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist0_sync_together87_aunroll_x_in_c0_eni3_1_tpl_1_q <= $unsigned(in_c0_eni3_1_tpl);
        end
    end

    // c_i2_156(CONSTANT,6)
    assign c_i2_156_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups129_pop37_kernel_3mm2(BLACKBOX,68)@2
    // out out_feedback_stall_out_37@20000000
    kernel_3mm_i_llvm_fpga_pop_i2_cleanups129_pop37_0 thei_llvm_fpga_pop_i2_cleanups129_pop37_kernel_3mm2 (
        .in_data_in(c_i2_156_q),
        .in_dir(redist0_sync_together87_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_37(i_llvm_fpga_push_i2_cleanups129_push37_kernel_3mm47_out_feedback_out_37),
        .in_feedback_valid_in_37(i_llvm_fpga_push_i2_cleanups129_push37_kernel_3mm47_out_feedback_valid_out_37),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist4_sync_together87_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups129_pop37_kernel_3mm2_out_data_out),
        .out_feedback_stall_out_37(i_llvm_fpga_pop_i2_cleanups129_pop37_kernel_3mm2_out_feedback_stall_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup131_kernel_3mm3_sel_x(BITSELECT,407)@2
    assign i_first_cleanup131_kernel_3mm3_sel_x_b = i_llvm_fpga_pop_i2_cleanups129_pop37_kernel_3mm2_out_data_out[0:0];

    // c_i5_162(CONSTANT,9)
    assign c_i5_162_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next_kernel_3mm48(ADD,48)@2
    assign i_fpga_indvars_iv_next_kernel_3mm48_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv_pop34_kernel_3mm40_out_data_out};
    assign i_fpga_indvars_iv_next_kernel_3mm48_b = {1'b0, c_i5_162_q};
    assign i_fpga_indvars_iv_next_kernel_3mm48_o = $unsigned(i_fpga_indvars_iv_next_kernel_3mm48_a) + $unsigned(i_fpga_indvars_iv_next_kernel_3mm48_b);
    assign i_fpga_indvars_iv_next_kernel_3mm48_q = i_fpga_indvars_iv_next_kernel_3mm48_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next_kernel_3mm48_sel_x(BITSELECT,99)@2
    assign bgTrunc_i_fpga_indvars_iv_next_kernel_3mm48_sel_x_b = i_fpga_indvars_iv_next_kernel_3mm48_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv_push34_kernel_3mm49(BLACKBOX,80)@2
    // out out_feedback_out_34@20000000
    // out out_feedback_valid_out_34@20000000
    kernel_3mm_i_llvm_fpga_push_i5_fpga_indvars_iv_push34_0 thei_llvm_fpga_push_i5_fpga_indvars_iv_push34_kernel_3mm49 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_kernel_3mm48_sel_x_b),
        .in_feedback_stall_in_34(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop34_kernel_3mm40_out_feedback_stall_out_34),
        .in_keep_going126(redist17_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist4_sync_together87_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_34(i_llvm_fpga_push_i5_fpga_indvars_iv_push34_kernel_3mm49_out_feedback_out_34),
        .out_feedback_valid_out_34(i_llvm_fpga_push_i5_fpga_indvars_iv_push34_kernel_3mm49_out_feedback_valid_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_860(CONSTANT,10)
    assign c_i5_860_q = $unsigned(5'b01000);

    // i_llvm_fpga_pop_i5_fpga_indvars_iv_pop34_kernel_3mm40(BLACKBOX,72)@2
    // out out_feedback_stall_out_34@20000000
    kernel_3mm_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop34_0 thei_llvm_fpga_pop_i5_fpga_indvars_iv_pop34_kernel_3mm40 (
        .in_data_in(c_i5_860_q),
        .in_dir(redist0_sync_together87_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_34(i_llvm_fpga_push_i5_fpga_indvars_iv_push34_kernel_3mm49_out_feedback_out_34),
        .in_feedback_valid_in_34(i_llvm_fpga_push_i5_fpga_indvars_iv_push34_kernel_3mm49_out_feedback_valid_out_34),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist4_sync_together87_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop34_kernel_3mm40_out_data_out),
        .out_feedback_stall_out_34(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop34_kernel_3mm40_out_feedback_stall_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_kernel_3mm41_cmp_nsign(LOGICAL,443)@2
    assign i_exitcond_kernel_3mm41_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i5_fpga_indvars_iv_pop34_kernel_3mm40_out_data_out[4:4]));

    // i_llvm_fpga_push_i1_notexitcond136_kernel_3mm44(BLACKBOX,75)@2
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    kernel_3mm_i_llvm_fpga_push_i1_notexitcond136_0 thei_llvm_fpga_push_i1_notexitcond136_kernel_3mm44 (
        .in_data_in(i_exitcond_kernel_3mm41_cmp_nsign_q),
        .in_feedback_stall_in_21(i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_out_not_exitcond_stall_out),
        .in_first_cleanup131(i_first_cleanup131_kernel_3mm3_sel_x_b),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist4_sync_together87_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i1_notexitcond136_kernel_3mm44_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i1_notexitcond136_kernel_3mm44_out_feedback_valid_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,420)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg3_q <= $unsigned(in_i_valid);
        end
    end

    // rightShiftStage0Idx1Rng1_uid903_i_next_initerations125_kernel_3mm0_shift_x(BITSELECT,902)@2
    assign rightShiftStage0Idx1Rng1_uid903_i_next_initerations125_kernel_3mm0_shift_x_b = i_llvm_fpga_pop_i2_initerations124_pop36_kernel_3mm7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid905_i_next_initerations125_kernel_3mm0_shift_x(BITJOIN,904)@2
    assign rightShiftStage0Idx1_uid905_i_next_initerations125_kernel_3mm0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid903_i_next_initerations125_kernel_3mm0_shift_x_b};

    // valid_fanout_reg1(REG,418)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg2(REG,419)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i2_initerations124_push36_kernel_3mm9(BLACKBOX,77)@2
    // out out_feedback_out_36@20000000
    // out out_feedback_valid_out_36@20000000
    kernel_3mm_i_llvm_fpga_push_i2_initerations124_push36_0 thei_llvm_fpga_push_i2_initerations124_push36_kernel_3mm9 (
        .in_data_in(i_next_initerations125_kernel_3mm8_vt_join_q),
        .in_feedback_stall_in_36(i_llvm_fpga_pop_i2_initerations124_pop36_kernel_3mm7_out_feedback_stall_out_36),
        .in_keep_going126(redist17_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_36(i_llvm_fpga_push_i2_initerations124_push36_kernel_3mm9_out_feedback_out_36),
        .out_feedback_valid_out_36(i_llvm_fpga_push_i2_initerations124_push36_kernel_3mm9_out_feedback_valid_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations124_pop36_kernel_3mm7(BLACKBOX,69)@2
    // out out_feedback_stall_out_36@20000000
    kernel_3mm_i_llvm_fpga_pop_i2_initerations124_pop36_0 thei_llvm_fpga_pop_i2_initerations124_pop36_kernel_3mm7 (
        .in_data_in(c_i2_156_q),
        .in_dir(redist0_sync_together87_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_36(i_llvm_fpga_push_i2_initerations124_push36_kernel_3mm9_out_feedback_out_36),
        .in_feedback_valid_in_36(i_llvm_fpga_push_i2_initerations124_push36_kernel_3mm9_out_feedback_valid_out_36),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations124_pop36_kernel_3mm7_out_data_out),
        .out_feedback_stall_out_36(i_llvm_fpga_pop_i2_initerations124_pop36_kernel_3mm7_out_feedback_stall_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid907_i_next_initerations125_kernel_3mm0_shift_x(MUX,906)@2
    assign rightShiftStage0_uid907_i_next_initerations125_kernel_3mm0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid907_i_next_initerations125_kernel_3mm0_shift_x_s or i_llvm_fpga_pop_i2_initerations124_pop36_kernel_3mm7_out_data_out or rightShiftStage0Idx1_uid905_i_next_initerations125_kernel_3mm0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid907_i_next_initerations125_kernel_3mm0_shift_x_s)
            1'b0 : rightShiftStage0_uid907_i_next_initerations125_kernel_3mm0_shift_x_q = i_llvm_fpga_pop_i2_initerations124_pop36_kernel_3mm7_out_data_out;
            1'b1 : rightShiftStage0_uid907_i_next_initerations125_kernel_3mm0_shift_x_q = rightShiftStage0Idx1_uid905_i_next_initerations125_kernel_3mm0_shift_x_q;
            default : rightShiftStage0_uid907_i_next_initerations125_kernel_3mm0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations125_kernel_3mm8_vt_select_0(BITSELECT,85)@2
    assign i_next_initerations125_kernel_3mm8_vt_select_0_b = rightShiftStage0_uid907_i_next_initerations125_kernel_3mm0_shift_x_q[0:0];

    // i_next_initerations125_kernel_3mm8_vt_join(BITJOIN,84)@2
    assign i_next_initerations125_kernel_3mm8_vt_join_q = {GND_q, i_next_initerations125_kernel_3mm8_vt_select_0_b};

    // i_last_initeration127_kernel_3mm10_sel_x(BITSELECT,410)@2
    assign i_last_initeration127_kernel_3mm10_sel_x_b = i_next_initerations125_kernel_3mm8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration128_kernel_3mm11(BLACKBOX,73)@2
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    kernel_3mm_i_llvm_fpga_push_i1_lastiniteration128_0 thei_llvm_fpga_push_i1_lastiniteration128_kernel_3mm11 (
        .in_data_in(i_last_initeration127_kernel_3mm10_sel_x_b),
        .in_feedback_stall_in_20(i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_out_initeration_stall_out),
        .in_keep_going126(redist17_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_i1_lastiniteration128_kernel_3mm11_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_i1_lastiniteration128_kernel_3mm11_out_feedback_valid_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going126_kernel_3mm6(BLACKBOX,66)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    kernel_3mm_i_llvm_fpga_pipeline_keep_going126_0 thei_llvm_fpga_pipeline_keep_going126_kernel_3mm6 (
        .in_data_in(in_c0_eni3_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration128_kernel_3mm11_out_feedback_out_20),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration128_kernel_3mm11_out_feedback_valid_out_20),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond136_kernel_3mm44_out_feedback_out_21),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond136_kernel_3mm44_out_feedback_valid_out_21),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,20)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,90)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_out_pipeline_valid_out;

    // redist5_sync_together87_aunroll_x_in_i_valid_2(DELAY,2465)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together87_aunroll_x_in_i_valid_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist5_sync_together87_aunroll_x_in_i_valid_2_q <= $unsigned(redist4_sync_together87_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg0(REG,417)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg0_q <= $unsigned(redist5_sync_together87_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg15(REG,432)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg15_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg16(REG,433)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg16_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_notcmp138151_push38_kernel_3mm52(BLACKBOX,74)@2
    // out out_feedback_out_38@20000000
    // out out_feedback_valid_out_38@20000000
    kernel_3mm_i_llvm_fpga_push_i1_notcmp138151_push38_0 thei_llvm_fpga_push_i1_notcmp138151_push38_kernel_3mm52 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp138151_pop38_kernel_3mm51_out_data_out),
        .in_feedback_stall_in_38(i_llvm_fpga_pop_i1_notcmp138151_pop38_kernel_3mm51_out_feedback_stall_out_38),
        .in_keep_going126(redist17_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(),
        .out_feedback_out_38(i_llvm_fpga_push_i1_notcmp138151_push38_kernel_3mm52_out_feedback_out_38),
        .out_feedback_valid_out_38(i_llvm_fpga_push_i1_notcmp138151_push38_kernel_3mm52_out_feedback_valid_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together87_aunroll_x_in_c0_eni3_3_tpl_1(DELAY,2463)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together87_aunroll_x_in_c0_eni3_3_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist3_sync_together87_aunroll_x_in_c0_eni3_3_tpl_1_q <= $unsigned(in_c0_eni3_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp138151_pop38_kernel_3mm51(BLACKBOX,67)@2
    // out out_feedback_stall_out_38@20000000
    kernel_3mm_i_llvm_fpga_pop_i1_notcmp138151_pop38_0 thei_llvm_fpga_pop_i1_notcmp138151_pop38_kernel_3mm51 (
        .in_data_in(redist3_sync_together87_aunroll_x_in_c0_eni3_3_tpl_1_q),
        .in_dir(redist0_sync_together87_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_38(i_llvm_fpga_push_i1_notcmp138151_push38_kernel_3mm52_out_feedback_out_38),
        .in_feedback_valid_in_38(i_llvm_fpga_push_i1_notcmp138151_push38_kernel_3mm52_out_feedback_valid_out_38),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp138151_pop38_kernel_3mm51_out_data_out),
        .out_feedback_stall_out_38(i_llvm_fpga_pop_i1_notcmp138151_pop38_kernel_3mm51_out_feedback_stall_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist16_i_llvm_fpga_pop_i1_notcmp138151_pop38_kernel_3mm51_out_data_out_2(DELAY,2476)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_llvm_fpga_pop_i1_notcmp138151_pop38_kernel_3mm51_out_data_out_2_delay_0 <= '0;
            redist16_i_llvm_fpga_pop_i1_notcmp138151_pop38_kernel_3mm51_out_data_out_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist16_i_llvm_fpga_pop_i1_notcmp138151_pop38_kernel_3mm51_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_notcmp138151_pop38_kernel_3mm51_out_data_out);
            redist16_i_llvm_fpga_pop_i1_notcmp138151_pop38_kernel_3mm51_out_data_out_2_q <= redist16_i_llvm_fpga_pop_i1_notcmp138151_pop38_kernel_3mm51_out_data_out_2_delay_0;
        end
    end

    // i_masked135_kernel_3mm50(LOGICAL,81)@2 + 1
    assign i_masked135_kernel_3mm50_qi = i_notcmp122_kernel_3mm43_q & i_first_cleanup131_kernel_3mm3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked135_kernel_3mm50_delay ( .xin(i_masked135_kernel_3mm50_qi), .xout(i_masked135_kernel_3mm50_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // redist14_i_masked135_kernel_3mm50_q_2(DELAY,2474)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_masked135_kernel_3mm50_q_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist14_i_masked135_kernel_3mm50_q_2_q <= $unsigned(i_masked135_kernel_3mm50_q);
        end
    end

    // c_kernel_3mm_G_local_pmem(CONSTANT,17)
    assign c_kernel_3mm_G_local_pmem_q = $unsigned(64'b0100000001000110000000000000000000000000000000000000000000000000);

    // i_arrayidx647_kernel_3mm0_upper_bits_x_merged_bit_select(BITSELECT,2454)@4
    assign i_arrayidx647_kernel_3mm0_upper_bits_x_merged_bit_select_b = c_kernel_3mm_G_local_pmem_q[63:9];
    assign i_arrayidx647_kernel_3mm0_upper_bits_x_merged_bit_select_c = c_kernel_3mm_G_local_pmem_q[8:0];

    // c_i32_058(CONSTANT,7)
    assign c_i32_058_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg6(REG,423)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg6_q <= $unsigned(redist5_sync_together87_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg14(REG,431)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg14_q <= $unsigned(redist5_sync_together87_aunroll_x_in_i_valid_2_q);
        end
    end

    // c_i32_159(CONSTANT,8)
    assign c_i32_159_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_kernel_3mm38(ADD,57)@4
    assign i_inc_kernel_3mm38_a = {1'b0, i_llvm_fpga_pop_i32_j_0103_pop35_kernel_3mm15_out_data_out};
    assign i_inc_kernel_3mm38_b = {1'b0, c_i32_159_q};
    assign i_inc_kernel_3mm38_o = $unsigned(i_inc_kernel_3mm38_a) + $unsigned(i_inc_kernel_3mm38_b);
    assign i_inc_kernel_3mm38_q = i_inc_kernel_3mm38_o[32:0];

    // bgTrunc_i_inc_kernel_3mm38_sel_x(BITSELECT,100)@4
    assign bgTrunc_i_inc_kernel_3mm38_sel_x_b = i_inc_kernel_3mm38_q[31:0];

    // i_llvm_fpga_push_i32_j_0103_push35_kernel_3mm39(BLACKBOX,79)@4
    // out out_feedback_out_35@20000000
    // out out_feedback_valid_out_35@20000000
    kernel_3mm_i_llvm_fpga_push_i32_j_0103_push35_0 thei_llvm_fpga_push_i32_j_0103_push35_kernel_3mm39 (
        .in_data_in(bgTrunc_i_inc_kernel_3mm38_sel_x_b),
        .in_feedback_stall_in_35(i_llvm_fpga_pop_i32_j_0103_pop35_kernel_3mm15_out_feedback_stall_out_35),
        .in_keep_going126(redist19_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_out_data_out_3_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_35(i_llvm_fpga_push_i32_j_0103_push35_kernel_3mm39_out_feedback_out_35),
        .out_feedback_valid_out_35(i_llvm_fpga_push_i32_j_0103_push35_kernel_3mm39_out_feedback_valid_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together87_aunroll_x_in_c0_eni3_1_tpl_3(DELAY,2461)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together87_aunroll_x_in_c0_eni3_1_tpl_3_delay_0 <= '0;
            redist1_sync_together87_aunroll_x_in_c0_eni3_1_tpl_3_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist1_sync_together87_aunroll_x_in_c0_eni3_1_tpl_3_delay_0 <= $unsigned(redist0_sync_together87_aunroll_x_in_c0_eni3_1_tpl_1_q);
            redist1_sync_together87_aunroll_x_in_c0_eni3_1_tpl_3_q <= redist1_sync_together87_aunroll_x_in_c0_eni3_1_tpl_3_delay_0;
        end
    end

    // i_llvm_fpga_pop_i32_j_0103_pop35_kernel_3mm15(BLACKBOX,71)@4
    // out out_feedback_stall_out_35@20000000
    kernel_3mm_i_llvm_fpga_pop_i32_j_0103_pop35_0 thei_llvm_fpga_pop_i32_j_0103_pop35_kernel_3mm15 (
        .in_data_in(c_i32_058_q),
        .in_dir(redist1_sync_together87_aunroll_x_in_c0_eni3_1_tpl_3_q),
        .in_feedback_in_35(i_llvm_fpga_push_i32_j_0103_push35_kernel_3mm39_out_feedback_out_35),
        .in_feedback_valid_in_35(i_llvm_fpga_push_i32_j_0103_push35_kernel_3mm39_out_feedback_valid_out_35),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_0103_pop35_kernel_3mm15_out_data_out),
        .out_feedback_stall_out_35(i_llvm_fpga_pop_i32_j_0103_pop35_kernel_3mm15_out_feedback_stall_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom11_kernel_3mm16_sel_x(BITSELECT,408)@4
    assign i_idxprom11_kernel_3mm16_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j_0103_pop35_kernel_3mm15_out_data_out[31:0]};

    // i_idxprom11_kernel_3mm16_vt_select_31(BITSELECT,52)@4
    assign i_idxprom11_kernel_3mm16_vt_select_31_b = i_idxprom11_kernel_3mm16_sel_x_b[31:0];

    // i_idxprom11_kernel_3mm16_vt_join(BITJOIN,51)@4
    assign i_idxprom11_kernel_3mm16_vt_join_q = {c_i32_058_q, i_idxprom11_kernel_3mm16_vt_select_31_b};

    // i_arrayidx161_kernel_3mm0_dupName_3_trunc_sel_x(BITSELECT,161)@4
    assign i_arrayidx161_kernel_3mm0_dupName_3_trunc_sel_x_b = i_idxprom11_kernel_3mm16_vt_join_q[8:0];

    // i_arrayidx161_kernel_3mm0_narrow_x(BITSELECT,144)@4
    assign i_arrayidx161_kernel_3mm0_narrow_x_b = i_arrayidx161_kernel_3mm0_dupName_3_trunc_sel_x_b[6:0];

    // i_arrayidx161_kernel_3mm0_shift_join_x(BITJOIN,145)@4
    assign i_arrayidx161_kernel_3mm0_shift_join_x_q = {i_arrayidx161_kernel_3mm0_narrow_x_b, i_arrayidx161_kernel_3mm19_vt_const_1_q};

    // i_arrayidx161_kernel_3mm0_mult_multconst_x(CONSTANT,156)
    assign i_arrayidx161_kernel_3mm0_mult_multconst_x_q = $unsigned(3'b000);

    // valid_fanout_reg4(REG,421)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg4_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg5(REG,422)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg5_q <= $unsigned(redist4_sync_together87_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist18_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_out_data_out_2(DELAY,2478)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_out_data_out_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist18_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_out_data_out_2_q <= $unsigned(redist17_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_out_data_out_1_q);
        end
    end

    // i_llvm_fpga_push_i32_i_0104_pop27152_push39_kernel_3mm13(BLACKBOX,78)@3
    // out out_feedback_out_39@20000000
    // out out_feedback_valid_out_39@20000000
    kernel_3mm_i_llvm_fpga_push_i32_i_0104_pop27152_push39_0 thei_llvm_fpga_push_i32_i_0104_pop27152_push39_kernel_3mm13 (
        .in_data_in(redist15_i_llvm_fpga_pop_i32_i_0104_pop27152_pop39_kernel_3mm12_out_data_out_1_q),
        .in_feedback_stall_in_39(i_llvm_fpga_pop_i32_i_0104_pop27152_pop39_kernel_3mm12_out_feedback_stall_out_39),
        .in_keep_going126(redist18_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_out_data_out_2_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_39(i_llvm_fpga_push_i32_i_0104_pop27152_push39_kernel_3mm13_out_feedback_out_39),
        .out_feedback_valid_out_39(i_llvm_fpga_push_i32_i_0104_pop27152_push39_kernel_3mm13_out_feedback_valid_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together87_aunroll_x_in_c0_eni3_2_tpl_1(DELAY,2462)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together87_aunroll_x_in_c0_eni3_2_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist2_sync_together87_aunroll_x_in_c0_eni3_2_tpl_1_q <= $unsigned(in_c0_eni3_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_i_0104_pop27152_pop39_kernel_3mm12(BLACKBOX,70)@2
    // out out_feedback_stall_out_39@20000000
    kernel_3mm_i_llvm_fpga_pop_i32_i_0104_pop27152_pop39_0 thei_llvm_fpga_pop_i32_i_0104_pop27152_pop39_kernel_3mm12 (
        .in_data_in(redist2_sync_together87_aunroll_x_in_c0_eni3_2_tpl_1_q),
        .in_dir(redist0_sync_together87_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_39(i_llvm_fpga_push_i32_i_0104_pop27152_push39_kernel_3mm13_out_feedback_out_39),
        .in_feedback_valid_in_39(i_llvm_fpga_push_i32_i_0104_pop27152_push39_kernel_3mm13_out_feedback_valid_out_39),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_0104_pop27152_pop39_kernel_3mm12_out_data_out),
        .out_feedback_stall_out_39(i_llvm_fpga_pop_i32_i_0104_pop27152_pop39_kernel_3mm12_out_feedback_stall_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist15_i_llvm_fpga_pop_i32_i_0104_pop27152_pop39_kernel_3mm12_out_data_out_1(DELAY,2475)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_llvm_fpga_pop_i32_i_0104_pop27152_pop39_kernel_3mm12_out_data_out_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist15_i_llvm_fpga_pop_i32_i_0104_pop27152_pop39_kernel_3mm12_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_i_0104_pop27152_pop39_kernel_3mm12_out_data_out);
        end
    end

    // i_idxprom_kernel_3mm14_sel_x(BITSELECT,409)@3
    assign i_idxprom_kernel_3mm14_sel_x_b = {32'b00000000000000000000000000000000, redist15_i_llvm_fpga_pop_i32_i_0104_pop27152_pop39_kernel_3mm12_out_data_out_1_q[31:0]};

    // i_idxprom_kernel_3mm14_vt_select_31(BITSELECT,56)@3
    assign i_idxprom_kernel_3mm14_vt_select_31_b = i_idxprom_kernel_3mm14_sel_x_b[31:0];

    // i_idxprom_kernel_3mm14_vt_join(BITJOIN,55)@3
    assign i_idxprom_kernel_3mm14_vt_join_q = {c_i32_058_q, i_idxprom_kernel_3mm14_vt_select_31_b};

    // i_arrayidx161_kernel_3mm0_dupName_0_trunc_sel_x(BITSELECT,158)@3
    assign i_arrayidx161_kernel_3mm0_dupName_0_trunc_sel_x_b = i_idxprom_kernel_3mm14_vt_join_q[8:0];

    // addsumAHighB_uid472_i_arrayidx161_kernel_3mm0_mult_x(ADD,471)@3
    assign addsumAHighB_uid472_i_arrayidx161_kernel_3mm0_mult_x_a = {1'b0, i_arrayidx161_kernel_3mm0_dupName_0_trunc_sel_x_b};
    assign addsumAHighB_uid472_i_arrayidx161_kernel_3mm0_mult_x_b = {3'b000, lowRangeB_uid470_i_arrayidx161_kernel_3mm0_mult_x_merged_bit_select_c};
    assign addsumAHighB_uid472_i_arrayidx161_kernel_3mm0_mult_x_o = $unsigned(addsumAHighB_uid472_i_arrayidx161_kernel_3mm0_mult_x_a) + $unsigned(addsumAHighB_uid472_i_arrayidx161_kernel_3mm0_mult_x_b);
    assign addsumAHighB_uid472_i_arrayidx161_kernel_3mm0_mult_x_q = addsumAHighB_uid472_i_arrayidx161_kernel_3mm0_mult_x_o[9:0];

    // lowRangeB_uid470_i_arrayidx161_kernel_3mm0_mult_x_merged_bit_select(BITSELECT,2455)@3
    assign lowRangeB_uid470_i_arrayidx161_kernel_3mm0_mult_x_merged_bit_select_b = i_arrayidx161_kernel_3mm0_dupName_0_trunc_sel_x_b[1:0];
    assign lowRangeB_uid470_i_arrayidx161_kernel_3mm0_mult_x_merged_bit_select_c = i_arrayidx161_kernel_3mm0_dupName_0_trunc_sel_x_b[8:2];

    // add_uid473_i_arrayidx161_kernel_3mm0_mult_x(BITJOIN,472)@3
    assign add_uid473_i_arrayidx161_kernel_3mm0_mult_x_q = {addsumAHighB_uid472_i_arrayidx161_kernel_3mm0_mult_x_q, lowRangeB_uid470_i_arrayidx161_kernel_3mm0_mult_x_merged_bit_select_b};

    // sR_mergedSignalTM_uid478_i_arrayidx161_kernel_3mm0_mult_x(BITJOIN,477)@3
    assign sR_mergedSignalTM_uid478_i_arrayidx161_kernel_3mm0_mult_x_q = {add_uid473_i_arrayidx161_kernel_3mm0_mult_x_q, i_arrayidx161_kernel_3mm0_mult_multconst_x_q};

    // i_arrayidx161_kernel_3mm0_mult_extender_x(BITJOIN,155)@3
    assign i_arrayidx161_kernel_3mm0_mult_extender_x_q = {i_arrayidx161_kernel_3mm0_mult_multconst_x_q, sR_mergedSignalTM_uid478_i_arrayidx161_kernel_3mm0_mult_x_q};

    // i_arrayidx161_kernel_3mm0_dupName_1_trunc_sel_x(BITSELECT,159)@3
    assign i_arrayidx161_kernel_3mm0_dupName_1_trunc_sel_x_b = i_arrayidx161_kernel_3mm0_mult_extender_x_q[8:0];

    // redist12_i_arrayidx161_kernel_3mm0_dupName_1_trunc_sel_x_b_1(DELAY,2472)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_arrayidx161_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist12_i_arrayidx161_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx161_kernel_3mm0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx647_kernel_3mm0_add_x(ADD,379)@4
    assign i_arrayidx647_kernel_3mm0_add_x_a = {1'b0, i_arrayidx647_kernel_3mm0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx647_kernel_3mm0_add_x_b = {1'b0, redist12_i_arrayidx161_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx647_kernel_3mm0_add_x_o = $unsigned(i_arrayidx647_kernel_3mm0_add_x_a) + $unsigned(i_arrayidx647_kernel_3mm0_add_x_b);
    assign i_arrayidx647_kernel_3mm0_add_x_q = i_arrayidx647_kernel_3mm0_add_x_o[9:0];

    // i_arrayidx647_kernel_3mm0_dupName_2_trunc_sel_x(BITSELECT,400)@4
    assign i_arrayidx647_kernel_3mm0_dupName_2_trunc_sel_x_b = i_arrayidx647_kernel_3mm0_add_x_q[8:0];

    // i_arrayidx647_kernel_3mm0_dupName_0_add_x(ADD,389)@4
    assign i_arrayidx647_kernel_3mm0_dupName_0_add_x_a = {1'b0, i_arrayidx647_kernel_3mm0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx647_kernel_3mm0_dupName_0_add_x_b = {1'b0, i_arrayidx161_kernel_3mm0_shift_join_x_q};
    assign i_arrayidx647_kernel_3mm0_dupName_0_add_x_o = $unsigned(i_arrayidx647_kernel_3mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx647_kernel_3mm0_dupName_0_add_x_b);
    assign i_arrayidx647_kernel_3mm0_dupName_0_add_x_q = i_arrayidx647_kernel_3mm0_dupName_0_add_x_o[9:0];

    // i_arrayidx647_kernel_3mm0_dupName_5_trunc_sel_x(BITSELECT,402)@4
    assign i_arrayidx647_kernel_3mm0_dupName_5_trunc_sel_x_b = i_arrayidx647_kernel_3mm0_dupName_0_add_x_q[8:0];

    // i_arrayidx647_kernel_3mm0_append_upper_bits_x(BITJOIN,380)@4
    assign i_arrayidx647_kernel_3mm0_append_upper_bits_x_q = {i_arrayidx647_kernel_3mm0_upper_bits_x_merged_bit_select_b, i_arrayidx647_kernel_3mm0_dupName_5_trunc_sel_x_b};

    // i_arrayidx647_kernel_3mm37_vt_select_63(BITSELECT,41)@4
    assign i_arrayidx647_kernel_3mm37_vt_select_63_b = i_arrayidx647_kernel_3mm0_append_upper_bits_x_q[63:2];

    // i_arrayidx161_kernel_3mm19_vt_const_1(CONSTANT,21)
    assign i_arrayidx161_kernel_3mm19_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx647_kernel_3mm37_vt_join(BITJOIN,40)@4
    assign i_arrayidx647_kernel_3mm37_vt_join_q = {i_arrayidx647_kernel_3mm37_vt_select_63_b, i_arrayidx161_kernel_3mm19_vt_const_1_q};

    // i_arrayidx12_kernel_3mm0_narrow_x(BITSELECT,127)@4
    assign i_arrayidx12_kernel_3mm0_narrow_x_b = i_idxprom11_kernel_3mm16_vt_join_q[61:0];

    // i_arrayidx12_kernel_3mm0_shift_join_x(BITJOIN,128)@4
    assign i_arrayidx12_kernel_3mm0_shift_join_x_q = {i_arrayidx12_kernel_3mm0_narrow_x_b, i_arrayidx161_kernel_3mm19_vt_const_1_q};

    // i_arrayidx12_kernel_3mm0_mult_multconst_x(CONSTANT,135)
    assign i_arrayidx12_kernel_3mm0_mult_multconst_x_q = $unsigned(58'b0000000000000000000000000000000000000000000000000000000000);

    // i_arrayidx12_kernel_3mm0_mult_x_bs1(BITSELECT,445)@3
    assign i_arrayidx12_kernel_3mm0_mult_x_bs1_b = i_idxprom_kernel_3mm14_vt_join_q[63:54];

    // addsumAHighB_uid918_i_arrayidx12_kernel_3mm0_mult_x_im0(ADD,917)@3
    assign addsumAHighB_uid918_i_arrayidx12_kernel_3mm0_mult_x_im0_a = {1'b0, i_arrayidx12_kernel_3mm0_mult_x_bs1_b};
    assign addsumAHighB_uid918_i_arrayidx12_kernel_3mm0_mult_x_im0_b = {3'b000, lowRangeB_uid916_i_arrayidx12_kernel_3mm0_mult_x_im0_merged_bit_select_c};
    assign addsumAHighB_uid918_i_arrayidx12_kernel_3mm0_mult_x_im0_o = $unsigned(addsumAHighB_uid918_i_arrayidx12_kernel_3mm0_mult_x_im0_a) + $unsigned(addsumAHighB_uid918_i_arrayidx12_kernel_3mm0_mult_x_im0_b);
    assign addsumAHighB_uid918_i_arrayidx12_kernel_3mm0_mult_x_im0_q = addsumAHighB_uid918_i_arrayidx12_kernel_3mm0_mult_x_im0_o[10:0];

    // lowRangeB_uid916_i_arrayidx12_kernel_3mm0_mult_x_im0_merged_bit_select(BITSELECT,2456)@3
    assign lowRangeB_uid916_i_arrayidx12_kernel_3mm0_mult_x_im0_merged_bit_select_b = i_arrayidx12_kernel_3mm0_mult_x_bs1_b[1:0];
    assign lowRangeB_uid916_i_arrayidx12_kernel_3mm0_mult_x_im0_merged_bit_select_c = i_arrayidx12_kernel_3mm0_mult_x_bs1_b[9:2];

    // add_uid919_i_arrayidx12_kernel_3mm0_mult_x_im0(BITJOIN,918)@3
    assign add_uid919_i_arrayidx12_kernel_3mm0_mult_x_im0_q = {addsumAHighB_uid918_i_arrayidx12_kernel_3mm0_mult_x_im0_q, lowRangeB_uid916_i_arrayidx12_kernel_3mm0_mult_x_im0_merged_bit_select_b};

    // sR_mergedSignalTM_uid924_i_arrayidx12_kernel_3mm0_mult_x_im0(BITJOIN,923)@3
    assign sR_mergedSignalTM_uid924_i_arrayidx12_kernel_3mm0_mult_x_im0_q = {add_uid919_i_arrayidx12_kernel_3mm0_mult_x_im0_q, i_arrayidx161_kernel_3mm0_mult_multconst_x_q};

    // i_arrayidx60_kernel_3mm0_mult_x_sums_align_3(BITSHIFT,843)@3
    assign i_arrayidx60_kernel_3mm0_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid924_i_arrayidx12_kernel_3mm0_mult_x_im0_q, 12'b000000000000 };
    assign i_arrayidx60_kernel_3mm0_mult_x_sums_align_3_q = i_arrayidx60_kernel_3mm0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx12_kernel_3mm0_mult_x_bs7(BITSELECT,451)@3
    assign i_arrayidx12_kernel_3mm0_mult_x_bs7_in = i_idxprom_kernel_3mm14_vt_join_q[35:0];
    assign i_arrayidx12_kernel_3mm0_mult_x_bs7_b = i_arrayidx12_kernel_3mm0_mult_x_bs7_in[35:18];

    // addsumAHighB_uid1022_i_arrayidx12_kernel_3mm0_mult_x_im6(ADD,1021)@3
    assign addsumAHighB_uid1022_i_arrayidx12_kernel_3mm0_mult_x_im6_a = {1'b0, i_arrayidx12_kernel_3mm0_mult_x_bs7_b};
    assign addsumAHighB_uid1022_i_arrayidx12_kernel_3mm0_mult_x_im6_b = {3'b000, lowRangeB_uid1020_i_arrayidx12_kernel_3mm0_mult_x_im6_merged_bit_select_c};
    assign addsumAHighB_uid1022_i_arrayidx12_kernel_3mm0_mult_x_im6_o = $unsigned(addsumAHighB_uid1022_i_arrayidx12_kernel_3mm0_mult_x_im6_a) + $unsigned(addsumAHighB_uid1022_i_arrayidx12_kernel_3mm0_mult_x_im6_b);
    assign addsumAHighB_uid1022_i_arrayidx12_kernel_3mm0_mult_x_im6_q = addsumAHighB_uid1022_i_arrayidx12_kernel_3mm0_mult_x_im6_o[18:0];

    // lowRangeB_uid1020_i_arrayidx12_kernel_3mm0_mult_x_im6_merged_bit_select(BITSELECT,2458)@3
    assign lowRangeB_uid1020_i_arrayidx12_kernel_3mm0_mult_x_im6_merged_bit_select_b = i_arrayidx12_kernel_3mm0_mult_x_bs7_b[1:0];
    assign lowRangeB_uid1020_i_arrayidx12_kernel_3mm0_mult_x_im6_merged_bit_select_c = i_arrayidx12_kernel_3mm0_mult_x_bs7_b[17:2];

    // add_uid1023_i_arrayidx12_kernel_3mm0_mult_x_im6(BITJOIN,1022)@3
    assign add_uid1023_i_arrayidx12_kernel_3mm0_mult_x_im6_q = {addsumAHighB_uid1022_i_arrayidx12_kernel_3mm0_mult_x_im6_q, lowRangeB_uid1020_i_arrayidx12_kernel_3mm0_mult_x_im6_merged_bit_select_b};

    // sR_mergedSignalTM_uid1028_i_arrayidx12_kernel_3mm0_mult_x_im6(BITJOIN,1027)@3
    assign sR_mergedSignalTM_uid1028_i_arrayidx12_kernel_3mm0_mult_x_im6_q = {add_uid1023_i_arrayidx12_kernel_3mm0_mult_x_im6_q, i_arrayidx161_kernel_3mm0_mult_multconst_x_q};

    // i_arrayidx60_kernel_3mm0_mult_x_sums_align_2(BITSHIFT,842)@3
    assign i_arrayidx60_kernel_3mm0_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid1028_i_arrayidx12_kernel_3mm0_mult_x_im6_q, 18'b000000000000000000 };
    assign i_arrayidx60_kernel_3mm0_mult_x_sums_align_2_q = i_arrayidx60_kernel_3mm0_mult_x_sums_align_2_qint[41:0];

    // i_arrayidx60_kernel_3mm0_mult_x_sums_join_4(BITJOIN,844)@3
    assign i_arrayidx60_kernel_3mm0_mult_x_sums_join_4_q = {i_arrayidx60_kernel_3mm0_mult_x_sums_align_3_q, i_arrayidx60_kernel_3mm0_mult_x_sums_align_2_q};

    // i_arrayidx12_kernel_3mm0_mult_x_bs4(BITSELECT,448)@3
    assign i_arrayidx12_kernel_3mm0_mult_x_bs4_in = i_idxprom_kernel_3mm14_vt_join_q[53:0];
    assign i_arrayidx12_kernel_3mm0_mult_x_bs4_b = i_arrayidx12_kernel_3mm0_mult_x_bs4_in[53:36];

    // addsumAHighB_uid964_i_arrayidx12_kernel_3mm0_mult_x_im3(ADD,963)@3
    assign addsumAHighB_uid964_i_arrayidx12_kernel_3mm0_mult_x_im3_a = {1'b0, i_arrayidx12_kernel_3mm0_mult_x_bs4_b};
    assign addsumAHighB_uid964_i_arrayidx12_kernel_3mm0_mult_x_im3_b = {3'b000, lowRangeB_uid962_i_arrayidx12_kernel_3mm0_mult_x_im3_merged_bit_select_c};
    assign addsumAHighB_uid964_i_arrayidx12_kernel_3mm0_mult_x_im3_o = $unsigned(addsumAHighB_uid964_i_arrayidx12_kernel_3mm0_mult_x_im3_a) + $unsigned(addsumAHighB_uid964_i_arrayidx12_kernel_3mm0_mult_x_im3_b);
    assign addsumAHighB_uid964_i_arrayidx12_kernel_3mm0_mult_x_im3_q = addsumAHighB_uid964_i_arrayidx12_kernel_3mm0_mult_x_im3_o[18:0];

    // lowRangeB_uid962_i_arrayidx12_kernel_3mm0_mult_x_im3_merged_bit_select(BITSELECT,2457)@3
    assign lowRangeB_uid962_i_arrayidx12_kernel_3mm0_mult_x_im3_merged_bit_select_b = i_arrayidx12_kernel_3mm0_mult_x_bs4_b[1:0];
    assign lowRangeB_uid962_i_arrayidx12_kernel_3mm0_mult_x_im3_merged_bit_select_c = i_arrayidx12_kernel_3mm0_mult_x_bs4_b[17:2];

    // add_uid965_i_arrayidx12_kernel_3mm0_mult_x_im3(BITJOIN,964)@3
    assign add_uid965_i_arrayidx12_kernel_3mm0_mult_x_im3_q = {addsumAHighB_uid964_i_arrayidx12_kernel_3mm0_mult_x_im3_q, lowRangeB_uid962_i_arrayidx12_kernel_3mm0_mult_x_im3_merged_bit_select_b};

    // sR_mergedSignalTM_uid970_i_arrayidx12_kernel_3mm0_mult_x_im3(BITJOIN,969)@3
    assign sR_mergedSignalTM_uid970_i_arrayidx12_kernel_3mm0_mult_x_im3_q = {add_uid965_i_arrayidx12_kernel_3mm0_mult_x_im3_q, i_arrayidx161_kernel_3mm0_mult_multconst_x_q};

    // i_arrayidx60_kernel_3mm0_mult_x_sums_align_0(BITSHIFT,840)@3
    assign i_arrayidx60_kernel_3mm0_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid970_i_arrayidx12_kernel_3mm0_mult_x_im3_q, 12'b000000000000 };
    assign i_arrayidx60_kernel_3mm0_mult_x_sums_align_0_q = i_arrayidx60_kernel_3mm0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx12_kernel_3mm0_mult_x_bs10(BITSELECT,454)@3
    assign i_arrayidx12_kernel_3mm0_mult_x_bs10_in = i_idxprom_kernel_3mm14_vt_join_q[17:0];
    assign i_arrayidx12_kernel_3mm0_mult_x_bs10_b = i_arrayidx12_kernel_3mm0_mult_x_bs10_in[17:0];

    // addsumAHighB_uid1080_i_arrayidx12_kernel_3mm0_mult_x_im9(ADD,1079)@3
    assign addsumAHighB_uid1080_i_arrayidx12_kernel_3mm0_mult_x_im9_a = {1'b0, i_arrayidx12_kernel_3mm0_mult_x_bs10_b};
    assign addsumAHighB_uid1080_i_arrayidx12_kernel_3mm0_mult_x_im9_b = {3'b000, lowRangeB_uid1078_i_arrayidx12_kernel_3mm0_mult_x_im9_merged_bit_select_c};
    assign addsumAHighB_uid1080_i_arrayidx12_kernel_3mm0_mult_x_im9_o = $unsigned(addsumAHighB_uid1080_i_arrayidx12_kernel_3mm0_mult_x_im9_a) + $unsigned(addsumAHighB_uid1080_i_arrayidx12_kernel_3mm0_mult_x_im9_b);
    assign addsumAHighB_uid1080_i_arrayidx12_kernel_3mm0_mult_x_im9_q = addsumAHighB_uid1080_i_arrayidx12_kernel_3mm0_mult_x_im9_o[18:0];

    // lowRangeB_uid1078_i_arrayidx12_kernel_3mm0_mult_x_im9_merged_bit_select(BITSELECT,2459)@3
    assign lowRangeB_uid1078_i_arrayidx12_kernel_3mm0_mult_x_im9_merged_bit_select_b = i_arrayidx12_kernel_3mm0_mult_x_bs10_b[1:0];
    assign lowRangeB_uid1078_i_arrayidx12_kernel_3mm0_mult_x_im9_merged_bit_select_c = i_arrayidx12_kernel_3mm0_mult_x_bs10_b[17:2];

    // add_uid1081_i_arrayidx12_kernel_3mm0_mult_x_im9(BITJOIN,1080)@3
    assign add_uid1081_i_arrayidx12_kernel_3mm0_mult_x_im9_q = {addsumAHighB_uid1080_i_arrayidx12_kernel_3mm0_mult_x_im9_q, lowRangeB_uid1078_i_arrayidx12_kernel_3mm0_mult_x_im9_merged_bit_select_b};

    // sR_mergedSignalTM_uid1086_i_arrayidx12_kernel_3mm0_mult_x_im9(BITJOIN,1085)@3
    assign sR_mergedSignalTM_uid1086_i_arrayidx12_kernel_3mm0_mult_x_im9_q = {add_uid1081_i_arrayidx12_kernel_3mm0_mult_x_im9_q, i_arrayidx161_kernel_3mm0_mult_multconst_x_q};

    // i_arrayidx60_kernel_3mm0_mult_x_sums_join_1(BITJOIN,841)@3
    assign i_arrayidx60_kernel_3mm0_mult_x_sums_join_1_q = {i_arrayidx60_kernel_3mm0_mult_x_sums_align_0_q, sR_mergedSignalTM_uid1086_i_arrayidx12_kernel_3mm0_mult_x_im9_q};

    // i_arrayidx60_kernel_3mm0_mult_x_sums_result_add_0_0(ADD,845)@3
    assign i_arrayidx60_kernel_3mm0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx60_kernel_3mm0_mult_x_sums_join_1_q};
    assign i_arrayidx60_kernel_3mm0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx60_kernel_3mm0_mult_x_sums_join_4_q};
    assign i_arrayidx60_kernel_3mm0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx60_kernel_3mm0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx60_kernel_3mm0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx60_kernel_3mm0_mult_x_sums_result_add_0_0_q = i_arrayidx60_kernel_3mm0_mult_x_sums_result_add_0_0_o[70:0];

    // i_arrayidx60_kernel_3mm0_mult_extender_x(BITJOIN,374)@3
    assign i_arrayidx60_kernel_3mm0_mult_extender_x_q = {i_arrayidx12_kernel_3mm0_mult_multconst_x_q, i_arrayidx60_kernel_3mm0_mult_x_sums_result_add_0_0_q[69:0]};

    // i_arrayidx60_kernel_3mm0_trunc_sel_x(BITSELECT,376)@3
    assign i_arrayidx60_kernel_3mm0_trunc_sel_x_b = i_arrayidx60_kernel_3mm0_mult_extender_x_q[63:0];

    // redist6_i_arrayidx60_kernel_3mm0_trunc_sel_x_b_1(DELAY,2466)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_arrayidx60_kernel_3mm0_trunc_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist6_i_arrayidx60_kernel_3mm0_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx60_kernel_3mm0_trunc_sel_x_b);
        end
    end

    // valid_fanout_reg13(REG,430)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg13_q <= $unsigned(redist5_sync_together87_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024a10i32_g11148_kernel_3mm35(BLACKBOX,65)@4
    kernel_3mm_i_llvm_fpga_ffwd_dest_p1024a10i32_g11148_0 thei_llvm_fpga_ffwd_dest_p1024a10i32_g11148_kernel_3mm35 (
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_dest_data_out_6_0(i_llvm_fpga_ffwd_dest_p1024a10i32_g11148_kernel_3mm35_out_dest_data_out_6_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx60_kernel_3mm0_add_x(ADD,363)@4
    assign i_arrayidx60_kernel_3mm0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1024a10i32_g11148_kernel_3mm35_out_dest_data_out_6_0};
    assign i_arrayidx60_kernel_3mm0_add_x_b = {1'b0, redist6_i_arrayidx60_kernel_3mm0_trunc_sel_x_b_1_q};
    assign i_arrayidx60_kernel_3mm0_add_x_o = $unsigned(i_arrayidx60_kernel_3mm0_add_x_a) + $unsigned(i_arrayidx60_kernel_3mm0_add_x_b);
    assign i_arrayidx60_kernel_3mm0_add_x_q = i_arrayidx60_kernel_3mm0_add_x_o[64:0];

    // i_arrayidx60_kernel_3mm0_dupName_0_trunc_sel_x(BITSELECT,377)@4
    assign i_arrayidx60_kernel_3mm0_dupName_0_trunc_sel_x_b = i_arrayidx60_kernel_3mm0_add_x_q[63:0];

    // i_arrayidx60_kernel_3mm0_dupName_0_add_x(ADD,371)@4
    assign i_arrayidx60_kernel_3mm0_dupName_0_add_x_a = {1'b0, i_arrayidx60_kernel_3mm0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx60_kernel_3mm0_dupName_0_add_x_b = {1'b0, i_arrayidx12_kernel_3mm0_shift_join_x_q};
    assign i_arrayidx60_kernel_3mm0_dupName_0_add_x_o = $unsigned(i_arrayidx60_kernel_3mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx60_kernel_3mm0_dupName_0_add_x_b);
    assign i_arrayidx60_kernel_3mm0_dupName_0_add_x_q = i_arrayidx60_kernel_3mm0_dupName_0_add_x_o[64:0];

    // i_arrayidx60_kernel_3mm0_dupName_2_trunc_sel_x(BITSELECT,378)@4
    assign i_arrayidx60_kernel_3mm0_dupName_2_trunc_sel_x_b = i_arrayidx60_kernel_3mm0_dupName_0_add_x_q[63:0];

    // c_kernel_3mm_F_local_pmem(CONSTANT,16)
    assign c_kernel_3mm_F_local_pmem_q = $unsigned(64'b0100000001000101000000000000000000000000000000000000000000000000);

    // i_arrayidx566_kernel_3mm0_upper_bits_x_merged_bit_select(BITSELECT,2453)@4
    assign i_arrayidx566_kernel_3mm0_upper_bits_x_merged_bit_select_b = c_kernel_3mm_F_local_pmem_q[63:9];
    assign i_arrayidx566_kernel_3mm0_upper_bits_x_merged_bit_select_c = c_kernel_3mm_F_local_pmem_q[8:0];

    // i_arrayidx566_kernel_3mm0_add_x(ADD,339)@4
    assign i_arrayidx566_kernel_3mm0_add_x_a = {1'b0, i_arrayidx566_kernel_3mm0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx566_kernel_3mm0_add_x_b = {1'b0, redist12_i_arrayidx161_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx566_kernel_3mm0_add_x_o = $unsigned(i_arrayidx566_kernel_3mm0_add_x_a) + $unsigned(i_arrayidx566_kernel_3mm0_add_x_b);
    assign i_arrayidx566_kernel_3mm0_add_x_q = i_arrayidx566_kernel_3mm0_add_x_o[9:0];

    // i_arrayidx566_kernel_3mm0_dupName_2_trunc_sel_x(BITSELECT,360)@4
    assign i_arrayidx566_kernel_3mm0_dupName_2_trunc_sel_x_b = i_arrayidx566_kernel_3mm0_add_x_q[8:0];

    // i_arrayidx566_kernel_3mm0_dupName_0_add_x(ADD,349)@4
    assign i_arrayidx566_kernel_3mm0_dupName_0_add_x_a = {1'b0, i_arrayidx566_kernel_3mm0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx566_kernel_3mm0_dupName_0_add_x_b = {1'b0, i_arrayidx161_kernel_3mm0_shift_join_x_q};
    assign i_arrayidx566_kernel_3mm0_dupName_0_add_x_o = $unsigned(i_arrayidx566_kernel_3mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx566_kernel_3mm0_dupName_0_add_x_b);
    assign i_arrayidx566_kernel_3mm0_dupName_0_add_x_q = i_arrayidx566_kernel_3mm0_dupName_0_add_x_o[9:0];

    // i_arrayidx566_kernel_3mm0_dupName_5_trunc_sel_x(BITSELECT,362)@4
    assign i_arrayidx566_kernel_3mm0_dupName_5_trunc_sel_x_b = i_arrayidx566_kernel_3mm0_dupName_0_add_x_q[8:0];

    // i_arrayidx566_kernel_3mm0_append_upper_bits_x(BITJOIN,340)@4
    assign i_arrayidx566_kernel_3mm0_append_upper_bits_x_q = {i_arrayidx566_kernel_3mm0_upper_bits_x_merged_bit_select_b, i_arrayidx566_kernel_3mm0_dupName_5_trunc_sel_x_b};

    // i_arrayidx566_kernel_3mm34_vt_select_63(BITSELECT,38)@4
    assign i_arrayidx566_kernel_3mm34_vt_select_63_b = i_arrayidx566_kernel_3mm0_append_upper_bits_x_q[63:2];

    // i_arrayidx566_kernel_3mm34_vt_join(BITJOIN,37)@4
    assign i_arrayidx566_kernel_3mm34_vt_join_q = {i_arrayidx566_kernel_3mm34_vt_select_63_b, i_arrayidx161_kernel_3mm19_vt_const_1_q};

    // i_arrayidx52_kernel_3mm0_mult_x_sums_align_3(BITSHIFT,779)@3
    assign i_arrayidx52_kernel_3mm0_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid924_i_arrayidx12_kernel_3mm0_mult_x_im0_q, 12'b000000000000 };
    assign i_arrayidx52_kernel_3mm0_mult_x_sums_align_3_q = i_arrayidx52_kernel_3mm0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx52_kernel_3mm0_mult_x_sums_align_2(BITSHIFT,778)@3
    assign i_arrayidx52_kernel_3mm0_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid1028_i_arrayidx12_kernel_3mm0_mult_x_im6_q, 18'b000000000000000000 };
    assign i_arrayidx52_kernel_3mm0_mult_x_sums_align_2_q = i_arrayidx52_kernel_3mm0_mult_x_sums_align_2_qint[41:0];

    // i_arrayidx52_kernel_3mm0_mult_x_sums_join_4(BITJOIN,780)@3
    assign i_arrayidx52_kernel_3mm0_mult_x_sums_join_4_q = {i_arrayidx52_kernel_3mm0_mult_x_sums_align_3_q, i_arrayidx52_kernel_3mm0_mult_x_sums_align_2_q};

    // i_arrayidx52_kernel_3mm0_mult_x_sums_align_0(BITSHIFT,776)@3
    assign i_arrayidx52_kernel_3mm0_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid970_i_arrayidx12_kernel_3mm0_mult_x_im3_q, 12'b000000000000 };
    assign i_arrayidx52_kernel_3mm0_mult_x_sums_align_0_q = i_arrayidx52_kernel_3mm0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx52_kernel_3mm0_mult_x_sums_join_1(BITJOIN,777)@3
    assign i_arrayidx52_kernel_3mm0_mult_x_sums_join_1_q = {i_arrayidx52_kernel_3mm0_mult_x_sums_align_0_q, sR_mergedSignalTM_uid1086_i_arrayidx12_kernel_3mm0_mult_x_im9_q};

    // i_arrayidx52_kernel_3mm0_mult_x_sums_result_add_0_0(ADD,781)@3
    assign i_arrayidx52_kernel_3mm0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx52_kernel_3mm0_mult_x_sums_join_1_q};
    assign i_arrayidx52_kernel_3mm0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx52_kernel_3mm0_mult_x_sums_join_4_q};
    assign i_arrayidx52_kernel_3mm0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx52_kernel_3mm0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx52_kernel_3mm0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx52_kernel_3mm0_mult_x_sums_result_add_0_0_q = i_arrayidx52_kernel_3mm0_mult_x_sums_result_add_0_0_o[70:0];

    // i_arrayidx52_kernel_3mm0_mult_extender_x(BITJOIN,334)@3
    assign i_arrayidx52_kernel_3mm0_mult_extender_x_q = {i_arrayidx12_kernel_3mm0_mult_multconst_x_q, i_arrayidx52_kernel_3mm0_mult_x_sums_result_add_0_0_q[69:0]};

    // i_arrayidx52_kernel_3mm0_trunc_sel_x(BITSELECT,336)@3
    assign i_arrayidx52_kernel_3mm0_trunc_sel_x_b = i_arrayidx52_kernel_3mm0_mult_extender_x_q[63:0];

    // redist7_i_arrayidx52_kernel_3mm0_trunc_sel_x_b_1(DELAY,2467)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_arrayidx52_kernel_3mm0_trunc_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist7_i_arrayidx52_kernel_3mm0_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx52_kernel_3mm0_trunc_sel_x_b);
        end
    end

    // valid_fanout_reg12(REG,429)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg12_q <= $unsigned(redist5_sync_together87_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024a10i32_f11046_kernel_3mm32(BLACKBOX,64)@4
    kernel_3mm_i_llvm_fpga_ffwd_dest_p1024a10i32_f11046_0 thei_llvm_fpga_ffwd_dest_p1024a10i32_f11046_kernel_3mm32 (
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_dest_data_out_5_0(i_llvm_fpga_ffwd_dest_p1024a10i32_f11046_kernel_3mm32_out_dest_data_out_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx52_kernel_3mm0_add_x(ADD,323)@4
    assign i_arrayidx52_kernel_3mm0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1024a10i32_f11046_kernel_3mm32_out_dest_data_out_5_0};
    assign i_arrayidx52_kernel_3mm0_add_x_b = {1'b0, redist7_i_arrayidx52_kernel_3mm0_trunc_sel_x_b_1_q};
    assign i_arrayidx52_kernel_3mm0_add_x_o = $unsigned(i_arrayidx52_kernel_3mm0_add_x_a) + $unsigned(i_arrayidx52_kernel_3mm0_add_x_b);
    assign i_arrayidx52_kernel_3mm0_add_x_q = i_arrayidx52_kernel_3mm0_add_x_o[64:0];

    // i_arrayidx52_kernel_3mm0_dupName_0_trunc_sel_x(BITSELECT,337)@4
    assign i_arrayidx52_kernel_3mm0_dupName_0_trunc_sel_x_b = i_arrayidx52_kernel_3mm0_add_x_q[63:0];

    // i_arrayidx52_kernel_3mm0_dupName_0_add_x(ADD,331)@4
    assign i_arrayidx52_kernel_3mm0_dupName_0_add_x_a = {1'b0, i_arrayidx52_kernel_3mm0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx52_kernel_3mm0_dupName_0_add_x_b = {1'b0, i_arrayidx12_kernel_3mm0_shift_join_x_q};
    assign i_arrayidx52_kernel_3mm0_dupName_0_add_x_o = $unsigned(i_arrayidx52_kernel_3mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx52_kernel_3mm0_dupName_0_add_x_b);
    assign i_arrayidx52_kernel_3mm0_dupName_0_add_x_q = i_arrayidx52_kernel_3mm0_dupName_0_add_x_o[64:0];

    // i_arrayidx52_kernel_3mm0_dupName_2_trunc_sel_x(BITSELECT,338)@4
    assign i_arrayidx52_kernel_3mm0_dupName_2_trunc_sel_x_b = i_arrayidx52_kernel_3mm0_dupName_0_add_x_q[63:0];

    // c_kernel_3mm_E_local_pmem(CONSTANT,15)
    assign c_kernel_3mm_E_local_pmem_q = $unsigned(64'b0100000001000100000000000000000000000000000000000000000000000000);

    // i_arrayidx485_kernel_3mm0_upper_bits_x_merged_bit_select(BITSELECT,2452)@4
    assign i_arrayidx485_kernel_3mm0_upper_bits_x_merged_bit_select_b = c_kernel_3mm_E_local_pmem_q[63:9];
    assign i_arrayidx485_kernel_3mm0_upper_bits_x_merged_bit_select_c = c_kernel_3mm_E_local_pmem_q[8:0];

    // i_arrayidx485_kernel_3mm0_add_x(ADD,299)@4
    assign i_arrayidx485_kernel_3mm0_add_x_a = {1'b0, i_arrayidx485_kernel_3mm0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx485_kernel_3mm0_add_x_b = {1'b0, redist12_i_arrayidx161_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx485_kernel_3mm0_add_x_o = $unsigned(i_arrayidx485_kernel_3mm0_add_x_a) + $unsigned(i_arrayidx485_kernel_3mm0_add_x_b);
    assign i_arrayidx485_kernel_3mm0_add_x_q = i_arrayidx485_kernel_3mm0_add_x_o[9:0];

    // i_arrayidx485_kernel_3mm0_dupName_2_trunc_sel_x(BITSELECT,320)@4
    assign i_arrayidx485_kernel_3mm0_dupName_2_trunc_sel_x_b = i_arrayidx485_kernel_3mm0_add_x_q[8:0];

    // i_arrayidx485_kernel_3mm0_dupName_0_add_x(ADD,309)@4
    assign i_arrayidx485_kernel_3mm0_dupName_0_add_x_a = {1'b0, i_arrayidx485_kernel_3mm0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx485_kernel_3mm0_dupName_0_add_x_b = {1'b0, i_arrayidx161_kernel_3mm0_shift_join_x_q};
    assign i_arrayidx485_kernel_3mm0_dupName_0_add_x_o = $unsigned(i_arrayidx485_kernel_3mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx485_kernel_3mm0_dupName_0_add_x_b);
    assign i_arrayidx485_kernel_3mm0_dupName_0_add_x_q = i_arrayidx485_kernel_3mm0_dupName_0_add_x_o[9:0];

    // i_arrayidx485_kernel_3mm0_dupName_5_trunc_sel_x(BITSELECT,322)@4
    assign i_arrayidx485_kernel_3mm0_dupName_5_trunc_sel_x_b = i_arrayidx485_kernel_3mm0_dupName_0_add_x_q[8:0];

    // i_arrayidx485_kernel_3mm0_append_upper_bits_x(BITJOIN,300)@4
    assign i_arrayidx485_kernel_3mm0_append_upper_bits_x_q = {i_arrayidx485_kernel_3mm0_upper_bits_x_merged_bit_select_b, i_arrayidx485_kernel_3mm0_dupName_5_trunc_sel_x_b};

    // i_arrayidx485_kernel_3mm31_vt_select_63(BITSELECT,35)@4
    assign i_arrayidx485_kernel_3mm31_vt_select_63_b = i_arrayidx485_kernel_3mm0_append_upper_bits_x_q[63:2];

    // i_arrayidx485_kernel_3mm31_vt_join(BITJOIN,34)@4
    assign i_arrayidx485_kernel_3mm31_vt_join_q = {i_arrayidx485_kernel_3mm31_vt_select_63_b, i_arrayidx161_kernel_3mm19_vt_const_1_q};

    // i_arrayidx44_kernel_3mm0_mult_x_sums_align_3(BITSHIFT,715)@3
    assign i_arrayidx44_kernel_3mm0_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid924_i_arrayidx12_kernel_3mm0_mult_x_im0_q, 12'b000000000000 };
    assign i_arrayidx44_kernel_3mm0_mult_x_sums_align_3_q = i_arrayidx44_kernel_3mm0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx44_kernel_3mm0_mult_x_sums_align_2(BITSHIFT,714)@3
    assign i_arrayidx44_kernel_3mm0_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid1028_i_arrayidx12_kernel_3mm0_mult_x_im6_q, 18'b000000000000000000 };
    assign i_arrayidx44_kernel_3mm0_mult_x_sums_align_2_q = i_arrayidx44_kernel_3mm0_mult_x_sums_align_2_qint[41:0];

    // i_arrayidx44_kernel_3mm0_mult_x_sums_join_4(BITJOIN,716)@3
    assign i_arrayidx44_kernel_3mm0_mult_x_sums_join_4_q = {i_arrayidx44_kernel_3mm0_mult_x_sums_align_3_q, i_arrayidx44_kernel_3mm0_mult_x_sums_align_2_q};

    // i_arrayidx44_kernel_3mm0_mult_x_sums_align_0(BITSHIFT,712)@3
    assign i_arrayidx44_kernel_3mm0_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid970_i_arrayidx12_kernel_3mm0_mult_x_im3_q, 12'b000000000000 };
    assign i_arrayidx44_kernel_3mm0_mult_x_sums_align_0_q = i_arrayidx44_kernel_3mm0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx44_kernel_3mm0_mult_x_sums_join_1(BITJOIN,713)@3
    assign i_arrayidx44_kernel_3mm0_mult_x_sums_join_1_q = {i_arrayidx44_kernel_3mm0_mult_x_sums_align_0_q, sR_mergedSignalTM_uid1086_i_arrayidx12_kernel_3mm0_mult_x_im9_q};

    // i_arrayidx44_kernel_3mm0_mult_x_sums_result_add_0_0(ADD,717)@3
    assign i_arrayidx44_kernel_3mm0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx44_kernel_3mm0_mult_x_sums_join_1_q};
    assign i_arrayidx44_kernel_3mm0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx44_kernel_3mm0_mult_x_sums_join_4_q};
    assign i_arrayidx44_kernel_3mm0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx44_kernel_3mm0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx44_kernel_3mm0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx44_kernel_3mm0_mult_x_sums_result_add_0_0_q = i_arrayidx44_kernel_3mm0_mult_x_sums_result_add_0_0_o[70:0];

    // i_arrayidx44_kernel_3mm0_mult_extender_x(BITJOIN,294)@3
    assign i_arrayidx44_kernel_3mm0_mult_extender_x_q = {i_arrayidx12_kernel_3mm0_mult_multconst_x_q, i_arrayidx44_kernel_3mm0_mult_x_sums_result_add_0_0_q[69:0]};

    // i_arrayidx44_kernel_3mm0_trunc_sel_x(BITSELECT,296)@3
    assign i_arrayidx44_kernel_3mm0_trunc_sel_x_b = i_arrayidx44_kernel_3mm0_mult_extender_x_q[63:0];

    // redist8_i_arrayidx44_kernel_3mm0_trunc_sel_x_b_1(DELAY,2468)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_arrayidx44_kernel_3mm0_trunc_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist8_i_arrayidx44_kernel_3mm0_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx44_kernel_3mm0_trunc_sel_x_b);
        end
    end

    // valid_fanout_reg11(REG,428)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg11_q <= $unsigned(redist5_sync_together87_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024a10i32_e10945_kernel_3mm29(BLACKBOX,63)@4
    kernel_3mm_i_llvm_fpga_ffwd_dest_p1024a10i32_e10945_0 thei_llvm_fpga_ffwd_dest_p1024a10i32_e10945_kernel_3mm29 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_p1024a10i32_e10945_kernel_3mm29_out_dest_data_out_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx44_kernel_3mm0_add_x(ADD,283)@4
    assign i_arrayidx44_kernel_3mm0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1024a10i32_e10945_kernel_3mm29_out_dest_data_out_4_0};
    assign i_arrayidx44_kernel_3mm0_add_x_b = {1'b0, redist8_i_arrayidx44_kernel_3mm0_trunc_sel_x_b_1_q};
    assign i_arrayidx44_kernel_3mm0_add_x_o = $unsigned(i_arrayidx44_kernel_3mm0_add_x_a) + $unsigned(i_arrayidx44_kernel_3mm0_add_x_b);
    assign i_arrayidx44_kernel_3mm0_add_x_q = i_arrayidx44_kernel_3mm0_add_x_o[64:0];

    // i_arrayidx44_kernel_3mm0_dupName_0_trunc_sel_x(BITSELECT,297)@4
    assign i_arrayidx44_kernel_3mm0_dupName_0_trunc_sel_x_b = i_arrayidx44_kernel_3mm0_add_x_q[63:0];

    // i_arrayidx44_kernel_3mm0_dupName_0_add_x(ADD,291)@4
    assign i_arrayidx44_kernel_3mm0_dupName_0_add_x_a = {1'b0, i_arrayidx44_kernel_3mm0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx44_kernel_3mm0_dupName_0_add_x_b = {1'b0, i_arrayidx12_kernel_3mm0_shift_join_x_q};
    assign i_arrayidx44_kernel_3mm0_dupName_0_add_x_o = $unsigned(i_arrayidx44_kernel_3mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx44_kernel_3mm0_dupName_0_add_x_b);
    assign i_arrayidx44_kernel_3mm0_dupName_0_add_x_q = i_arrayidx44_kernel_3mm0_dupName_0_add_x_o[64:0];

    // i_arrayidx44_kernel_3mm0_dupName_2_trunc_sel_x(BITSELECT,298)@4
    assign i_arrayidx44_kernel_3mm0_dupName_2_trunc_sel_x_b = i_arrayidx44_kernel_3mm0_dupName_0_add_x_q[63:0];

    // c_kernel_3mm_D_local_pmem(CONSTANT,14)
    assign c_kernel_3mm_D_local_pmem_q = $unsigned(64'b0100000001000011000000000000000000000000000000000000000000000000);

    // i_arrayidx404_kernel_3mm0_upper_bits_x_merged_bit_select(BITSELECT,2451)@4
    assign i_arrayidx404_kernel_3mm0_upper_bits_x_merged_bit_select_b = c_kernel_3mm_D_local_pmem_q[63:9];
    assign i_arrayidx404_kernel_3mm0_upper_bits_x_merged_bit_select_c = c_kernel_3mm_D_local_pmem_q[8:0];

    // i_arrayidx404_kernel_3mm0_add_x(ADD,259)@4
    assign i_arrayidx404_kernel_3mm0_add_x_a = {1'b0, i_arrayidx404_kernel_3mm0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx404_kernel_3mm0_add_x_b = {1'b0, redist12_i_arrayidx161_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx404_kernel_3mm0_add_x_o = $unsigned(i_arrayidx404_kernel_3mm0_add_x_a) + $unsigned(i_arrayidx404_kernel_3mm0_add_x_b);
    assign i_arrayidx404_kernel_3mm0_add_x_q = i_arrayidx404_kernel_3mm0_add_x_o[9:0];

    // i_arrayidx404_kernel_3mm0_dupName_2_trunc_sel_x(BITSELECT,280)@4
    assign i_arrayidx404_kernel_3mm0_dupName_2_trunc_sel_x_b = i_arrayidx404_kernel_3mm0_add_x_q[8:0];

    // i_arrayidx404_kernel_3mm0_dupName_0_add_x(ADD,269)@4
    assign i_arrayidx404_kernel_3mm0_dupName_0_add_x_a = {1'b0, i_arrayidx404_kernel_3mm0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx404_kernel_3mm0_dupName_0_add_x_b = {1'b0, i_arrayidx161_kernel_3mm0_shift_join_x_q};
    assign i_arrayidx404_kernel_3mm0_dupName_0_add_x_o = $unsigned(i_arrayidx404_kernel_3mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx404_kernel_3mm0_dupName_0_add_x_b);
    assign i_arrayidx404_kernel_3mm0_dupName_0_add_x_q = i_arrayidx404_kernel_3mm0_dupName_0_add_x_o[9:0];

    // i_arrayidx404_kernel_3mm0_dupName_5_trunc_sel_x(BITSELECT,282)@4
    assign i_arrayidx404_kernel_3mm0_dupName_5_trunc_sel_x_b = i_arrayidx404_kernel_3mm0_dupName_0_add_x_q[8:0];

    // i_arrayidx404_kernel_3mm0_append_upper_bits_x(BITJOIN,260)@4
    assign i_arrayidx404_kernel_3mm0_append_upper_bits_x_q = {i_arrayidx404_kernel_3mm0_upper_bits_x_merged_bit_select_b, i_arrayidx404_kernel_3mm0_dupName_5_trunc_sel_x_b};

    // i_arrayidx404_kernel_3mm28_vt_select_63(BITSELECT,32)@4
    assign i_arrayidx404_kernel_3mm28_vt_select_63_b = i_arrayidx404_kernel_3mm0_append_upper_bits_x_q[63:2];

    // i_arrayidx404_kernel_3mm28_vt_join(BITJOIN,31)@4
    assign i_arrayidx404_kernel_3mm28_vt_join_q = {i_arrayidx404_kernel_3mm28_vt_select_63_b, i_arrayidx161_kernel_3mm19_vt_const_1_q};

    // i_arrayidx36_kernel_3mm0_mult_x_sums_align_3(BITSHIFT,651)@3
    assign i_arrayidx36_kernel_3mm0_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid924_i_arrayidx12_kernel_3mm0_mult_x_im0_q, 12'b000000000000 };
    assign i_arrayidx36_kernel_3mm0_mult_x_sums_align_3_q = i_arrayidx36_kernel_3mm0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx36_kernel_3mm0_mult_x_sums_align_2(BITSHIFT,650)@3
    assign i_arrayidx36_kernel_3mm0_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid1028_i_arrayidx12_kernel_3mm0_mult_x_im6_q, 18'b000000000000000000 };
    assign i_arrayidx36_kernel_3mm0_mult_x_sums_align_2_q = i_arrayidx36_kernel_3mm0_mult_x_sums_align_2_qint[41:0];

    // i_arrayidx36_kernel_3mm0_mult_x_sums_join_4(BITJOIN,652)@3
    assign i_arrayidx36_kernel_3mm0_mult_x_sums_join_4_q = {i_arrayidx36_kernel_3mm0_mult_x_sums_align_3_q, i_arrayidx36_kernel_3mm0_mult_x_sums_align_2_q};

    // i_arrayidx36_kernel_3mm0_mult_x_sums_align_0(BITSHIFT,648)@3
    assign i_arrayidx36_kernel_3mm0_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid970_i_arrayidx12_kernel_3mm0_mult_x_im3_q, 12'b000000000000 };
    assign i_arrayidx36_kernel_3mm0_mult_x_sums_align_0_q = i_arrayidx36_kernel_3mm0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx36_kernel_3mm0_mult_x_sums_join_1(BITJOIN,649)@3
    assign i_arrayidx36_kernel_3mm0_mult_x_sums_join_1_q = {i_arrayidx36_kernel_3mm0_mult_x_sums_align_0_q, sR_mergedSignalTM_uid1086_i_arrayidx12_kernel_3mm0_mult_x_im9_q};

    // i_arrayidx36_kernel_3mm0_mult_x_sums_result_add_0_0(ADD,653)@3
    assign i_arrayidx36_kernel_3mm0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx36_kernel_3mm0_mult_x_sums_join_1_q};
    assign i_arrayidx36_kernel_3mm0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx36_kernel_3mm0_mult_x_sums_join_4_q};
    assign i_arrayidx36_kernel_3mm0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx36_kernel_3mm0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx36_kernel_3mm0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx36_kernel_3mm0_mult_x_sums_result_add_0_0_q = i_arrayidx36_kernel_3mm0_mult_x_sums_result_add_0_0_o[70:0];

    // i_arrayidx36_kernel_3mm0_mult_extender_x(BITJOIN,254)@3
    assign i_arrayidx36_kernel_3mm0_mult_extender_x_q = {i_arrayidx12_kernel_3mm0_mult_multconst_x_q, i_arrayidx36_kernel_3mm0_mult_x_sums_result_add_0_0_q[69:0]};

    // i_arrayidx36_kernel_3mm0_trunc_sel_x(BITSELECT,256)@3
    assign i_arrayidx36_kernel_3mm0_trunc_sel_x_b = i_arrayidx36_kernel_3mm0_mult_extender_x_q[63:0];

    // redist9_i_arrayidx36_kernel_3mm0_trunc_sel_x_b_1(DELAY,2469)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_arrayidx36_kernel_3mm0_trunc_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist9_i_arrayidx36_kernel_3mm0_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx36_kernel_3mm0_trunc_sel_x_b);
        end
    end

    // valid_fanout_reg10(REG,427)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg10_q <= $unsigned(redist5_sync_together87_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024a10i32_d10844_kernel_3mm26(BLACKBOX,62)@4
    kernel_3mm_i_llvm_fpga_ffwd_dest_p1024a10i32_d10844_0 thei_llvm_fpga_ffwd_dest_p1024a10i32_d10844_kernel_3mm26 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_p1024a10i32_d10844_kernel_3mm26_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx36_kernel_3mm0_add_x(ADD,243)@4
    assign i_arrayidx36_kernel_3mm0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1024a10i32_d10844_kernel_3mm26_out_dest_data_out_3_0};
    assign i_arrayidx36_kernel_3mm0_add_x_b = {1'b0, redist9_i_arrayidx36_kernel_3mm0_trunc_sel_x_b_1_q};
    assign i_arrayidx36_kernel_3mm0_add_x_o = $unsigned(i_arrayidx36_kernel_3mm0_add_x_a) + $unsigned(i_arrayidx36_kernel_3mm0_add_x_b);
    assign i_arrayidx36_kernel_3mm0_add_x_q = i_arrayidx36_kernel_3mm0_add_x_o[64:0];

    // i_arrayidx36_kernel_3mm0_dupName_0_trunc_sel_x(BITSELECT,257)@4
    assign i_arrayidx36_kernel_3mm0_dupName_0_trunc_sel_x_b = i_arrayidx36_kernel_3mm0_add_x_q[63:0];

    // i_arrayidx36_kernel_3mm0_dupName_0_add_x(ADD,251)@4
    assign i_arrayidx36_kernel_3mm0_dupName_0_add_x_a = {1'b0, i_arrayidx36_kernel_3mm0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx36_kernel_3mm0_dupName_0_add_x_b = {1'b0, i_arrayidx12_kernel_3mm0_shift_join_x_q};
    assign i_arrayidx36_kernel_3mm0_dupName_0_add_x_o = $unsigned(i_arrayidx36_kernel_3mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx36_kernel_3mm0_dupName_0_add_x_b);
    assign i_arrayidx36_kernel_3mm0_dupName_0_add_x_q = i_arrayidx36_kernel_3mm0_dupName_0_add_x_o[64:0];

    // i_arrayidx36_kernel_3mm0_dupName_2_trunc_sel_x(BITSELECT,258)@4
    assign i_arrayidx36_kernel_3mm0_dupName_2_trunc_sel_x_b = i_arrayidx36_kernel_3mm0_dupName_0_add_x_q[63:0];

    // c_kernel_3mm_C_local_pmem(CONSTANT,13)
    assign c_kernel_3mm_C_local_pmem_q = $unsigned(64'b0100000001000010000000000000000000000000000000000000000000000000);

    // i_arrayidx323_kernel_3mm0_upper_bits_x_merged_bit_select(BITSELECT,2450)@4
    assign i_arrayidx323_kernel_3mm0_upper_bits_x_merged_bit_select_b = c_kernel_3mm_C_local_pmem_q[63:9];
    assign i_arrayidx323_kernel_3mm0_upper_bits_x_merged_bit_select_c = c_kernel_3mm_C_local_pmem_q[8:0];

    // i_arrayidx323_kernel_3mm0_add_x(ADD,219)@4
    assign i_arrayidx323_kernel_3mm0_add_x_a = {1'b0, i_arrayidx323_kernel_3mm0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx323_kernel_3mm0_add_x_b = {1'b0, redist12_i_arrayidx161_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx323_kernel_3mm0_add_x_o = $unsigned(i_arrayidx323_kernel_3mm0_add_x_a) + $unsigned(i_arrayidx323_kernel_3mm0_add_x_b);
    assign i_arrayidx323_kernel_3mm0_add_x_q = i_arrayidx323_kernel_3mm0_add_x_o[9:0];

    // i_arrayidx323_kernel_3mm0_dupName_2_trunc_sel_x(BITSELECT,240)@4
    assign i_arrayidx323_kernel_3mm0_dupName_2_trunc_sel_x_b = i_arrayidx323_kernel_3mm0_add_x_q[8:0];

    // i_arrayidx323_kernel_3mm0_dupName_0_add_x(ADD,229)@4
    assign i_arrayidx323_kernel_3mm0_dupName_0_add_x_a = {1'b0, i_arrayidx323_kernel_3mm0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx323_kernel_3mm0_dupName_0_add_x_b = {1'b0, i_arrayidx161_kernel_3mm0_shift_join_x_q};
    assign i_arrayidx323_kernel_3mm0_dupName_0_add_x_o = $unsigned(i_arrayidx323_kernel_3mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx323_kernel_3mm0_dupName_0_add_x_b);
    assign i_arrayidx323_kernel_3mm0_dupName_0_add_x_q = i_arrayidx323_kernel_3mm0_dupName_0_add_x_o[9:0];

    // i_arrayidx323_kernel_3mm0_dupName_5_trunc_sel_x(BITSELECT,242)@4
    assign i_arrayidx323_kernel_3mm0_dupName_5_trunc_sel_x_b = i_arrayidx323_kernel_3mm0_dupName_0_add_x_q[8:0];

    // i_arrayidx323_kernel_3mm0_append_upper_bits_x(BITJOIN,220)@4
    assign i_arrayidx323_kernel_3mm0_append_upper_bits_x_q = {i_arrayidx323_kernel_3mm0_upper_bits_x_merged_bit_select_b, i_arrayidx323_kernel_3mm0_dupName_5_trunc_sel_x_b};

    // i_arrayidx323_kernel_3mm25_vt_select_63(BITSELECT,29)@4
    assign i_arrayidx323_kernel_3mm25_vt_select_63_b = i_arrayidx323_kernel_3mm0_append_upper_bits_x_q[63:2];

    // i_arrayidx323_kernel_3mm25_vt_join(BITJOIN,28)@4
    assign i_arrayidx323_kernel_3mm25_vt_join_q = {i_arrayidx323_kernel_3mm25_vt_select_63_b, i_arrayidx161_kernel_3mm19_vt_const_1_q};

    // i_arrayidx28_kernel_3mm0_mult_x_sums_align_3(BITSHIFT,587)@3
    assign i_arrayidx28_kernel_3mm0_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid924_i_arrayidx12_kernel_3mm0_mult_x_im0_q, 12'b000000000000 };
    assign i_arrayidx28_kernel_3mm0_mult_x_sums_align_3_q = i_arrayidx28_kernel_3mm0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx28_kernel_3mm0_mult_x_sums_align_2(BITSHIFT,586)@3
    assign i_arrayidx28_kernel_3mm0_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid1028_i_arrayidx12_kernel_3mm0_mult_x_im6_q, 18'b000000000000000000 };
    assign i_arrayidx28_kernel_3mm0_mult_x_sums_align_2_q = i_arrayidx28_kernel_3mm0_mult_x_sums_align_2_qint[41:0];

    // i_arrayidx28_kernel_3mm0_mult_x_sums_join_4(BITJOIN,588)@3
    assign i_arrayidx28_kernel_3mm0_mult_x_sums_join_4_q = {i_arrayidx28_kernel_3mm0_mult_x_sums_align_3_q, i_arrayidx28_kernel_3mm0_mult_x_sums_align_2_q};

    // i_arrayidx28_kernel_3mm0_mult_x_sums_align_0(BITSHIFT,584)@3
    assign i_arrayidx28_kernel_3mm0_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid970_i_arrayidx12_kernel_3mm0_mult_x_im3_q, 12'b000000000000 };
    assign i_arrayidx28_kernel_3mm0_mult_x_sums_align_0_q = i_arrayidx28_kernel_3mm0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx28_kernel_3mm0_mult_x_sums_join_1(BITJOIN,585)@3
    assign i_arrayidx28_kernel_3mm0_mult_x_sums_join_1_q = {i_arrayidx28_kernel_3mm0_mult_x_sums_align_0_q, sR_mergedSignalTM_uid1086_i_arrayidx12_kernel_3mm0_mult_x_im9_q};

    // i_arrayidx28_kernel_3mm0_mult_x_sums_result_add_0_0(ADD,589)@3
    assign i_arrayidx28_kernel_3mm0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx28_kernel_3mm0_mult_x_sums_join_1_q};
    assign i_arrayidx28_kernel_3mm0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx28_kernel_3mm0_mult_x_sums_join_4_q};
    assign i_arrayidx28_kernel_3mm0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx28_kernel_3mm0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx28_kernel_3mm0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx28_kernel_3mm0_mult_x_sums_result_add_0_0_q = i_arrayidx28_kernel_3mm0_mult_x_sums_result_add_0_0_o[70:0];

    // i_arrayidx28_kernel_3mm0_mult_extender_x(BITJOIN,214)@3
    assign i_arrayidx28_kernel_3mm0_mult_extender_x_q = {i_arrayidx12_kernel_3mm0_mult_multconst_x_q, i_arrayidx28_kernel_3mm0_mult_x_sums_result_add_0_0_q[69:0]};

    // i_arrayidx28_kernel_3mm0_trunc_sel_x(BITSELECT,216)@3
    assign i_arrayidx28_kernel_3mm0_trunc_sel_x_b = i_arrayidx28_kernel_3mm0_mult_extender_x_q[63:0];

    // redist10_i_arrayidx28_kernel_3mm0_trunc_sel_x_b_1(DELAY,2470)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_arrayidx28_kernel_3mm0_trunc_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist10_i_arrayidx28_kernel_3mm0_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx28_kernel_3mm0_trunc_sel_x_b);
        end
    end

    // valid_fanout_reg9(REG,426)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg9_q <= $unsigned(redist5_sync_together87_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024a10i32_c10743_kernel_3mm23(BLACKBOX,61)@4
    kernel_3mm_i_llvm_fpga_ffwd_dest_p1024a10i32_c10743_0 thei_llvm_fpga_ffwd_dest_p1024a10i32_c10743_kernel_3mm23 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_p1024a10i32_c10743_kernel_3mm23_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx28_kernel_3mm0_add_x(ADD,203)@4
    assign i_arrayidx28_kernel_3mm0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1024a10i32_c10743_kernel_3mm23_out_dest_data_out_2_0};
    assign i_arrayidx28_kernel_3mm0_add_x_b = {1'b0, redist10_i_arrayidx28_kernel_3mm0_trunc_sel_x_b_1_q};
    assign i_arrayidx28_kernel_3mm0_add_x_o = $unsigned(i_arrayidx28_kernel_3mm0_add_x_a) + $unsigned(i_arrayidx28_kernel_3mm0_add_x_b);
    assign i_arrayidx28_kernel_3mm0_add_x_q = i_arrayidx28_kernel_3mm0_add_x_o[64:0];

    // i_arrayidx28_kernel_3mm0_dupName_0_trunc_sel_x(BITSELECT,217)@4
    assign i_arrayidx28_kernel_3mm0_dupName_0_trunc_sel_x_b = i_arrayidx28_kernel_3mm0_add_x_q[63:0];

    // i_arrayidx28_kernel_3mm0_dupName_0_add_x(ADD,211)@4
    assign i_arrayidx28_kernel_3mm0_dupName_0_add_x_a = {1'b0, i_arrayidx28_kernel_3mm0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx28_kernel_3mm0_dupName_0_add_x_b = {1'b0, i_arrayidx12_kernel_3mm0_shift_join_x_q};
    assign i_arrayidx28_kernel_3mm0_dupName_0_add_x_o = $unsigned(i_arrayidx28_kernel_3mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx28_kernel_3mm0_dupName_0_add_x_b);
    assign i_arrayidx28_kernel_3mm0_dupName_0_add_x_q = i_arrayidx28_kernel_3mm0_dupName_0_add_x_o[64:0];

    // i_arrayidx28_kernel_3mm0_dupName_2_trunc_sel_x(BITSELECT,218)@4
    assign i_arrayidx28_kernel_3mm0_dupName_2_trunc_sel_x_b = i_arrayidx28_kernel_3mm0_dupName_0_add_x_q[63:0];

    // c_kernel_3mm_B_local_pmem(CONSTANT,12)
    assign c_kernel_3mm_B_local_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx242_kernel_3mm0_upper_bits_x_merged_bit_select(BITSELECT,2449)@4
    assign i_arrayidx242_kernel_3mm0_upper_bits_x_merged_bit_select_b = c_kernel_3mm_B_local_pmem_q[63:9];
    assign i_arrayidx242_kernel_3mm0_upper_bits_x_merged_bit_select_c = c_kernel_3mm_B_local_pmem_q[8:0];

    // i_arrayidx242_kernel_3mm0_add_x(ADD,179)@4
    assign i_arrayidx242_kernel_3mm0_add_x_a = {1'b0, i_arrayidx242_kernel_3mm0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx242_kernel_3mm0_add_x_b = {1'b0, redist12_i_arrayidx161_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx242_kernel_3mm0_add_x_o = $unsigned(i_arrayidx242_kernel_3mm0_add_x_a) + $unsigned(i_arrayidx242_kernel_3mm0_add_x_b);
    assign i_arrayidx242_kernel_3mm0_add_x_q = i_arrayidx242_kernel_3mm0_add_x_o[9:0];

    // i_arrayidx242_kernel_3mm0_dupName_2_trunc_sel_x(BITSELECT,200)@4
    assign i_arrayidx242_kernel_3mm0_dupName_2_trunc_sel_x_b = i_arrayidx242_kernel_3mm0_add_x_q[8:0];

    // i_arrayidx242_kernel_3mm0_dupName_0_add_x(ADD,189)@4
    assign i_arrayidx242_kernel_3mm0_dupName_0_add_x_a = {1'b0, i_arrayidx242_kernel_3mm0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx242_kernel_3mm0_dupName_0_add_x_b = {1'b0, i_arrayidx161_kernel_3mm0_shift_join_x_q};
    assign i_arrayidx242_kernel_3mm0_dupName_0_add_x_o = $unsigned(i_arrayidx242_kernel_3mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx242_kernel_3mm0_dupName_0_add_x_b);
    assign i_arrayidx242_kernel_3mm0_dupName_0_add_x_q = i_arrayidx242_kernel_3mm0_dupName_0_add_x_o[9:0];

    // i_arrayidx242_kernel_3mm0_dupName_5_trunc_sel_x(BITSELECT,202)@4
    assign i_arrayidx242_kernel_3mm0_dupName_5_trunc_sel_x_b = i_arrayidx242_kernel_3mm0_dupName_0_add_x_q[8:0];

    // i_arrayidx242_kernel_3mm0_append_upper_bits_x(BITJOIN,180)@4
    assign i_arrayidx242_kernel_3mm0_append_upper_bits_x_q = {i_arrayidx242_kernel_3mm0_upper_bits_x_merged_bit_select_b, i_arrayidx242_kernel_3mm0_dupName_5_trunc_sel_x_b};

    // i_arrayidx242_kernel_3mm22_vt_select_63(BITSELECT,26)@4
    assign i_arrayidx242_kernel_3mm22_vt_select_63_b = i_arrayidx242_kernel_3mm0_append_upper_bits_x_q[63:2];

    // i_arrayidx242_kernel_3mm22_vt_join(BITJOIN,25)@4
    assign i_arrayidx242_kernel_3mm22_vt_join_q = {i_arrayidx242_kernel_3mm22_vt_select_63_b, i_arrayidx161_kernel_3mm19_vt_const_1_q};

    // i_arrayidx20_kernel_3mm0_mult_x_sums_align_3(BITSHIFT,523)@3
    assign i_arrayidx20_kernel_3mm0_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid924_i_arrayidx12_kernel_3mm0_mult_x_im0_q, 12'b000000000000 };
    assign i_arrayidx20_kernel_3mm0_mult_x_sums_align_3_q = i_arrayidx20_kernel_3mm0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx20_kernel_3mm0_mult_x_sums_align_2(BITSHIFT,522)@3
    assign i_arrayidx20_kernel_3mm0_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid1028_i_arrayidx12_kernel_3mm0_mult_x_im6_q, 18'b000000000000000000 };
    assign i_arrayidx20_kernel_3mm0_mult_x_sums_align_2_q = i_arrayidx20_kernel_3mm0_mult_x_sums_align_2_qint[41:0];

    // i_arrayidx20_kernel_3mm0_mult_x_sums_join_4(BITJOIN,524)@3
    assign i_arrayidx20_kernel_3mm0_mult_x_sums_join_4_q = {i_arrayidx20_kernel_3mm0_mult_x_sums_align_3_q, i_arrayidx20_kernel_3mm0_mult_x_sums_align_2_q};

    // i_arrayidx20_kernel_3mm0_mult_x_sums_align_0(BITSHIFT,520)@3
    assign i_arrayidx20_kernel_3mm0_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid970_i_arrayidx12_kernel_3mm0_mult_x_im3_q, 12'b000000000000 };
    assign i_arrayidx20_kernel_3mm0_mult_x_sums_align_0_q = i_arrayidx20_kernel_3mm0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx20_kernel_3mm0_mult_x_sums_join_1(BITJOIN,521)@3
    assign i_arrayidx20_kernel_3mm0_mult_x_sums_join_1_q = {i_arrayidx20_kernel_3mm0_mult_x_sums_align_0_q, sR_mergedSignalTM_uid1086_i_arrayidx12_kernel_3mm0_mult_x_im9_q};

    // i_arrayidx20_kernel_3mm0_mult_x_sums_result_add_0_0(ADD,525)@3
    assign i_arrayidx20_kernel_3mm0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx20_kernel_3mm0_mult_x_sums_join_1_q};
    assign i_arrayidx20_kernel_3mm0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx20_kernel_3mm0_mult_x_sums_join_4_q};
    assign i_arrayidx20_kernel_3mm0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx20_kernel_3mm0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx20_kernel_3mm0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx20_kernel_3mm0_mult_x_sums_result_add_0_0_q = i_arrayidx20_kernel_3mm0_mult_x_sums_result_add_0_0_o[70:0];

    // i_arrayidx20_kernel_3mm0_mult_extender_x(BITJOIN,174)@3
    assign i_arrayidx20_kernel_3mm0_mult_extender_x_q = {i_arrayidx12_kernel_3mm0_mult_multconst_x_q, i_arrayidx20_kernel_3mm0_mult_x_sums_result_add_0_0_q[69:0]};

    // i_arrayidx20_kernel_3mm0_trunc_sel_x(BITSELECT,176)@3
    assign i_arrayidx20_kernel_3mm0_trunc_sel_x_b = i_arrayidx20_kernel_3mm0_mult_extender_x_q[63:0];

    // redist11_i_arrayidx20_kernel_3mm0_trunc_sel_x_b_1(DELAY,2471)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_arrayidx20_kernel_3mm0_trunc_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist11_i_arrayidx20_kernel_3mm0_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx20_kernel_3mm0_trunc_sel_x_b);
        end
    end

    // valid_fanout_reg8(REG,425)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg8_q <= $unsigned(redist5_sync_together87_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024a10i32_b10642_kernel_3mm20(BLACKBOX,60)@4
    kernel_3mm_i_llvm_fpga_ffwd_dest_p1024a10i32_b10642_0 thei_llvm_fpga_ffwd_dest_p1024a10i32_b10642_kernel_3mm20 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1024a10i32_b10642_kernel_3mm20_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx20_kernel_3mm0_add_x(ADD,163)@4
    assign i_arrayidx20_kernel_3mm0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1024a10i32_b10642_kernel_3mm20_out_dest_data_out_1_0};
    assign i_arrayidx20_kernel_3mm0_add_x_b = {1'b0, redist11_i_arrayidx20_kernel_3mm0_trunc_sel_x_b_1_q};
    assign i_arrayidx20_kernel_3mm0_add_x_o = $unsigned(i_arrayidx20_kernel_3mm0_add_x_a) + $unsigned(i_arrayidx20_kernel_3mm0_add_x_b);
    assign i_arrayidx20_kernel_3mm0_add_x_q = i_arrayidx20_kernel_3mm0_add_x_o[64:0];

    // i_arrayidx20_kernel_3mm0_dupName_0_trunc_sel_x(BITSELECT,177)@4
    assign i_arrayidx20_kernel_3mm0_dupName_0_trunc_sel_x_b = i_arrayidx20_kernel_3mm0_add_x_q[63:0];

    // i_arrayidx20_kernel_3mm0_dupName_0_add_x(ADD,171)@4
    assign i_arrayidx20_kernel_3mm0_dupName_0_add_x_a = {1'b0, i_arrayidx20_kernel_3mm0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx20_kernel_3mm0_dupName_0_add_x_b = {1'b0, i_arrayidx12_kernel_3mm0_shift_join_x_q};
    assign i_arrayidx20_kernel_3mm0_dupName_0_add_x_o = $unsigned(i_arrayidx20_kernel_3mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx20_kernel_3mm0_dupName_0_add_x_b);
    assign i_arrayidx20_kernel_3mm0_dupName_0_add_x_q = i_arrayidx20_kernel_3mm0_dupName_0_add_x_o[64:0];

    // i_arrayidx20_kernel_3mm0_dupName_2_trunc_sel_x(BITSELECT,178)@4
    assign i_arrayidx20_kernel_3mm0_dupName_2_trunc_sel_x_b = i_arrayidx20_kernel_3mm0_dupName_0_add_x_q[63:0];

    // c_kernel_3mm_A_local_pmem(CONSTANT,11)
    assign c_kernel_3mm_A_local_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx161_kernel_3mm0_upper_bits_x_merged_bit_select(BITSELECT,2448)@4
    assign i_arrayidx161_kernel_3mm0_upper_bits_x_merged_bit_select_b = c_kernel_3mm_A_local_pmem_q[63:9];
    assign i_arrayidx161_kernel_3mm0_upper_bits_x_merged_bit_select_c = c_kernel_3mm_A_local_pmem_q[8:0];

    // i_arrayidx161_kernel_3mm0_add_x(ADD,139)@4
    assign i_arrayidx161_kernel_3mm0_add_x_a = {1'b0, i_arrayidx161_kernel_3mm0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx161_kernel_3mm0_add_x_b = {1'b0, redist12_i_arrayidx161_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx161_kernel_3mm0_add_x_o = $unsigned(i_arrayidx161_kernel_3mm0_add_x_a) + $unsigned(i_arrayidx161_kernel_3mm0_add_x_b);
    assign i_arrayidx161_kernel_3mm0_add_x_q = i_arrayidx161_kernel_3mm0_add_x_o[9:0];

    // i_arrayidx161_kernel_3mm0_dupName_2_trunc_sel_x(BITSELECT,160)@4
    assign i_arrayidx161_kernel_3mm0_dupName_2_trunc_sel_x_b = i_arrayidx161_kernel_3mm0_add_x_q[8:0];

    // i_arrayidx161_kernel_3mm0_dupName_0_add_x(ADD,149)@4
    assign i_arrayidx161_kernel_3mm0_dupName_0_add_x_a = {1'b0, i_arrayidx161_kernel_3mm0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx161_kernel_3mm0_dupName_0_add_x_b = {1'b0, i_arrayidx161_kernel_3mm0_shift_join_x_q};
    assign i_arrayidx161_kernel_3mm0_dupName_0_add_x_o = $unsigned(i_arrayidx161_kernel_3mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx161_kernel_3mm0_dupName_0_add_x_b);
    assign i_arrayidx161_kernel_3mm0_dupName_0_add_x_q = i_arrayidx161_kernel_3mm0_dupName_0_add_x_o[9:0];

    // i_arrayidx161_kernel_3mm0_dupName_5_trunc_sel_x(BITSELECT,162)@4
    assign i_arrayidx161_kernel_3mm0_dupName_5_trunc_sel_x_b = i_arrayidx161_kernel_3mm0_dupName_0_add_x_q[8:0];

    // i_arrayidx161_kernel_3mm0_append_upper_bits_x(BITJOIN,140)@4
    assign i_arrayidx161_kernel_3mm0_append_upper_bits_x_q = {i_arrayidx161_kernel_3mm0_upper_bits_x_merged_bit_select_b, i_arrayidx161_kernel_3mm0_dupName_5_trunc_sel_x_b};

    // i_arrayidx161_kernel_3mm19_vt_select_63(BITSELECT,23)@4
    assign i_arrayidx161_kernel_3mm19_vt_select_63_b = i_arrayidx161_kernel_3mm0_append_upper_bits_x_q[63:2];

    // i_arrayidx161_kernel_3mm19_vt_join(BITJOIN,22)@4
    assign i_arrayidx161_kernel_3mm19_vt_join_q = {i_arrayidx161_kernel_3mm19_vt_select_63_b, i_arrayidx161_kernel_3mm19_vt_const_1_q};

    // i_arrayidx12_kernel_3mm0_mult_x_sums_align_3(BITSHIFT,459)@3
    assign i_arrayidx12_kernel_3mm0_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid924_i_arrayidx12_kernel_3mm0_mult_x_im0_q, 12'b000000000000 };
    assign i_arrayidx12_kernel_3mm0_mult_x_sums_align_3_q = i_arrayidx12_kernel_3mm0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx12_kernel_3mm0_mult_x_sums_align_2(BITSHIFT,458)@3
    assign i_arrayidx12_kernel_3mm0_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid1028_i_arrayidx12_kernel_3mm0_mult_x_im6_q, 18'b000000000000000000 };
    assign i_arrayidx12_kernel_3mm0_mult_x_sums_align_2_q = i_arrayidx12_kernel_3mm0_mult_x_sums_align_2_qint[41:0];

    // i_arrayidx12_kernel_3mm0_mult_x_sums_join_4(BITJOIN,460)@3
    assign i_arrayidx12_kernel_3mm0_mult_x_sums_join_4_q = {i_arrayidx12_kernel_3mm0_mult_x_sums_align_3_q, i_arrayidx12_kernel_3mm0_mult_x_sums_align_2_q};

    // i_arrayidx12_kernel_3mm0_mult_x_sums_align_0(BITSHIFT,456)@3
    assign i_arrayidx12_kernel_3mm0_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid970_i_arrayidx12_kernel_3mm0_mult_x_im3_q, 12'b000000000000 };
    assign i_arrayidx12_kernel_3mm0_mult_x_sums_align_0_q = i_arrayidx12_kernel_3mm0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx12_kernel_3mm0_mult_x_sums_join_1(BITJOIN,457)@3
    assign i_arrayidx12_kernel_3mm0_mult_x_sums_join_1_q = {i_arrayidx12_kernel_3mm0_mult_x_sums_align_0_q, sR_mergedSignalTM_uid1086_i_arrayidx12_kernel_3mm0_mult_x_im9_q};

    // i_arrayidx12_kernel_3mm0_mult_x_sums_result_add_0_0(ADD,461)@3
    assign i_arrayidx12_kernel_3mm0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx12_kernel_3mm0_mult_x_sums_join_1_q};
    assign i_arrayidx12_kernel_3mm0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx12_kernel_3mm0_mult_x_sums_join_4_q};
    assign i_arrayidx12_kernel_3mm0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx12_kernel_3mm0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx12_kernel_3mm0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx12_kernel_3mm0_mult_x_sums_result_add_0_0_q = i_arrayidx12_kernel_3mm0_mult_x_sums_result_add_0_0_o[70:0];

    // i_arrayidx12_kernel_3mm0_mult_extender_x(BITJOIN,134)@3
    assign i_arrayidx12_kernel_3mm0_mult_extender_x_q = {i_arrayidx12_kernel_3mm0_mult_multconst_x_q, i_arrayidx12_kernel_3mm0_mult_x_sums_result_add_0_0_q[69:0]};

    // i_arrayidx12_kernel_3mm0_trunc_sel_x(BITSELECT,136)@3
    assign i_arrayidx12_kernel_3mm0_trunc_sel_x_b = i_arrayidx12_kernel_3mm0_mult_extender_x_q[63:0];

    // redist13_i_arrayidx12_kernel_3mm0_trunc_sel_x_b_1(DELAY,2473)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_arrayidx12_kernel_3mm0_trunc_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist13_i_arrayidx12_kernel_3mm0_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx12_kernel_3mm0_trunc_sel_x_b);
        end
    end

    // valid_fanout_reg7(REG,424)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg7_q <= $unsigned(redist5_sync_together87_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024a10i32_a10541_kernel_3mm17(BLACKBOX,59)@4
    kernel_3mm_i_llvm_fpga_ffwd_dest_p1024a10i32_a10541_0 thei_llvm_fpga_ffwd_dest_p1024a10i32_a10541_kernel_3mm17 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024a10i32_a10541_kernel_3mm17_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx12_kernel_3mm0_add_x(ADD,123)@4
    assign i_arrayidx12_kernel_3mm0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1024a10i32_a10541_kernel_3mm17_out_dest_data_out_0_0};
    assign i_arrayidx12_kernel_3mm0_add_x_b = {1'b0, redist13_i_arrayidx12_kernel_3mm0_trunc_sel_x_b_1_q};
    assign i_arrayidx12_kernel_3mm0_add_x_o = $unsigned(i_arrayidx12_kernel_3mm0_add_x_a) + $unsigned(i_arrayidx12_kernel_3mm0_add_x_b);
    assign i_arrayidx12_kernel_3mm0_add_x_q = i_arrayidx12_kernel_3mm0_add_x_o[64:0];

    // i_arrayidx12_kernel_3mm0_dupName_0_trunc_sel_x(BITSELECT,137)@4
    assign i_arrayidx12_kernel_3mm0_dupName_0_trunc_sel_x_b = i_arrayidx12_kernel_3mm0_add_x_q[63:0];

    // i_arrayidx12_kernel_3mm0_dupName_0_add_x(ADD,131)@4
    assign i_arrayidx12_kernel_3mm0_dupName_0_add_x_a = {1'b0, i_arrayidx12_kernel_3mm0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx12_kernel_3mm0_dupName_0_add_x_b = {1'b0, i_arrayidx12_kernel_3mm0_shift_join_x_q};
    assign i_arrayidx12_kernel_3mm0_dupName_0_add_x_o = $unsigned(i_arrayidx12_kernel_3mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx12_kernel_3mm0_dupName_0_add_x_b);
    assign i_arrayidx12_kernel_3mm0_dupName_0_add_x_q = i_arrayidx12_kernel_3mm0_dupName_0_add_x_o[64:0];

    // i_arrayidx12_kernel_3mm0_dupName_2_trunc_sel_x(BITSELECT,138)@4
    assign i_arrayidx12_kernel_3mm0_dupName_2_trunc_sel_x_b = i_arrayidx12_kernel_3mm0_dupName_0_add_x_q[63:0];

    // redist19_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_out_data_out_3(DELAY,2479)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_out_data_out_3_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist19_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_out_data_out_3_q <= $unsigned(redist18_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_out_data_out_2_q);
        end
    end

    // redist20_i_first_cleanup_xor132_kernel_3mm4_q_2(DELAY,2480)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_first_cleanup_xor132_kernel_3mm4_q_2_delay_0 <= '0;
            redist20_i_first_cleanup_xor132_kernel_3mm4_q_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist20_i_first_cleanup_xor132_kernel_3mm4_q_2_delay_0 <= $unsigned(i_first_cleanup_xor132_kernel_3mm4_q);
            redist20_i_first_cleanup_xor132_kernel_3mm4_q_2_q <= redist20_i_first_cleanup_xor132_kernel_3mm4_q_2_delay_0;
        end
    end

    // sync_out_aunroll_x(GPOUT,415)@4
    assign out_c0_exi18_0_tpl = GND_q;
    assign out_c0_exi18_1_tpl = redist20_i_first_cleanup_xor132_kernel_3mm4_q_2_q;
    assign out_c0_exi18_2_tpl = redist19_i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_out_data_out_3_q;
    assign out_c0_exi18_3_tpl = i_arrayidx12_kernel_3mm0_dupName_2_trunc_sel_x_b;
    assign out_c0_exi18_4_tpl = i_arrayidx161_kernel_3mm19_vt_join_q;
    assign out_c0_exi18_5_tpl = i_arrayidx20_kernel_3mm0_dupName_2_trunc_sel_x_b;
    assign out_c0_exi18_6_tpl = i_arrayidx242_kernel_3mm22_vt_join_q;
    assign out_c0_exi18_7_tpl = i_arrayidx28_kernel_3mm0_dupName_2_trunc_sel_x_b;
    assign out_c0_exi18_8_tpl = i_arrayidx323_kernel_3mm25_vt_join_q;
    assign out_c0_exi18_9_tpl = i_arrayidx36_kernel_3mm0_dupName_2_trunc_sel_x_b;
    assign out_c0_exi18_10_tpl = i_arrayidx404_kernel_3mm28_vt_join_q;
    assign out_c0_exi18_11_tpl = i_arrayidx44_kernel_3mm0_dupName_2_trunc_sel_x_b;
    assign out_c0_exi18_12_tpl = i_arrayidx485_kernel_3mm31_vt_join_q;
    assign out_c0_exi18_13_tpl = i_arrayidx52_kernel_3mm0_dupName_2_trunc_sel_x_b;
    assign out_c0_exi18_14_tpl = i_arrayidx566_kernel_3mm34_vt_join_q;
    assign out_c0_exi18_15_tpl = i_arrayidx60_kernel_3mm0_dupName_2_trunc_sel_x_b;
    assign out_c0_exi18_16_tpl = i_arrayidx647_kernel_3mm37_vt_join_q;
    assign out_c0_exi18_17_tpl = redist14_i_masked135_kernel_3mm50_q_2_q;
    assign out_c0_exi18_18_tpl = redist16_i_llvm_fpga_pop_i1_notcmp138151_pop38_kernel_3mm51_out_data_out_2_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_kernel_3mm1 = GND_q;

endmodule
