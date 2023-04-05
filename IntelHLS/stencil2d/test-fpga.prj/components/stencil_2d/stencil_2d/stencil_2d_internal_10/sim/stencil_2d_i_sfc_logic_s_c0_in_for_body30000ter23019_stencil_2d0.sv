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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body32_stencil_2ds_c0_enter23019_stencil_2d0
// Created for function/kernel stencil_2d
// SystemVerilog created on Tue Apr  4 22:01:35 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_i_sfc_logic_s_c0_in_for_body30000ter23019_stencil_2d0 (
    input wire [31:0] in_unnamed_stencil_2d5_stencil_2d_avm_readdata,
    input wire [0:0] in_unnamed_stencil_2d5_stencil_2d_avm_writeack,
    input wire [0:0] in_unnamed_stencil_2d5_stencil_2d_avm_waitrequest,
    input wire [0:0] in_unnamed_stencil_2d5_stencil_2d_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    output wire [31:0] out_intel_reserved_ffwd_0_0,
    input wire [31:0] in_unnamed_stencil_2d6_stencil_2d_avm_readdata,
    input wire [0:0] in_unnamed_stencil_2d6_stencil_2d_avm_writeack,
    input wire [0:0] in_unnamed_stencil_2d6_stencil_2d_avm_waitrequest,
    input wire [0:0] in_unnamed_stencil_2d6_stencil_2d_avm_readdatavalid,
    output wire [31:0] out_unnamed_stencil_2d5_stencil_2d_avm_address,
    output wire [0:0] out_unnamed_stencil_2d5_stencil_2d_avm_enable,
    output wire [0:0] out_unnamed_stencil_2d5_stencil_2d_avm_read,
    output wire [0:0] out_unnamed_stencil_2d5_stencil_2d_avm_write,
    output wire [31:0] out_unnamed_stencil_2d5_stencil_2d_avm_writedata,
    output wire [3:0] out_unnamed_stencil_2d5_stencil_2d_avm_byteenable,
    output wire [0:0] out_unnamed_stencil_2d5_stencil_2d_avm_burstcount,
    output wire [31:0] out_unnamed_stencil_2d6_stencil_2d_avm_address,
    output wire [0:0] out_unnamed_stencil_2d6_stencil_2d_avm_enable,
    output wire [0:0] out_unnamed_stencil_2d6_stencil_2d_avm_read,
    output wire [0:0] out_unnamed_stencil_2d6_stencil_2d_avm_write,
    output wire [31:0] out_unnamed_stencil_2d6_stencil_2d_avm_writedata,
    output wire [3:0] out_unnamed_stencil_2d6_stencil_2d_avm_byteenable,
    output wire [0:0] out_unnamed_stencil_2d6_stencil_2d_avm_burstcount,
    output wire [0:0] out_c0_exi16255_0_tpl,
    output wire [0:0] out_c0_exi16255_1_tpl,
    output wire [31:0] out_c0_exi16255_2_tpl,
    output wire [0:0] out_c0_exi16255_3_tpl,
    output wire [31:0] out_c0_exi16255_4_tpl,
    output wire [0:0] out_c0_exi16255_5_tpl,
    output wire [0:0] out_c0_exi16255_6_tpl,
    output wire [31:0] out_c0_exi16255_7_tpl,
    output wire [0:0] out_c0_exi16255_8_tpl,
    output wire [31:0] out_c0_exi16255_9_tpl,
    output wire [31:0] out_c0_exi16255_10_tpl,
    output wire [0:0] out_c0_exi16255_11_tpl,
    output wire [0:0] out_c0_exi16255_12_tpl,
    output wire [31:0] out_c0_exi16255_13_tpl,
    output wire [31:0] out_c0_exi16255_14_tpl,
    output wire [31:0] out_c0_exi16255_15_tpl,
    output wire [0:0] out_c0_exi16255_16_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_stencil_2d1,
    input wire [0:0] in_c0_eni19_0_tpl,
    input wire [0:0] in_c0_eni19_1_tpl,
    input wire [0:0] in_c0_eni19_2_tpl,
    input wire [0:0] in_c0_eni19_3_tpl,
    input wire [31:0] in_c0_eni19_4_tpl,
    input wire [31:0] in_c0_eni19_5_tpl,
    input wire [31:0] in_c0_eni19_6_tpl,
    input wire [31:0] in_c0_eni19_7_tpl,
    input wire [0:0] in_c0_eni19_8_tpl,
    input wire [0:0] in_c0_eni19_9_tpl,
    input wire [31:0] in_c0_eni19_10_tpl,
    input wire [0:0] in_c0_eni19_11_tpl,
    input wire [31:0] in_c0_eni19_12_tpl,
    input wire [31:0] in_c0_eni19_13_tpl,
    input wire [0:0] in_c0_eni19_14_tpl,
    input wire [0:0] in_c0_eni19_15_tpl,
    input wire [31:0] in_c0_eni19_16_tpl,
    input wire [31:0] in_c0_eni19_17_tpl,
    input wire [31:0] in_c0_eni19_18_tpl,
    input wire [0:0] in_c0_eni19_19_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] c_i2_198_q;
    wire [31:0] c_i32_0100_q;
    wire [31:0] c_i32_1101_q;
    wire [2:0] c_i3_1102_q;
    wire [2:0] c_i3_1104_q;
    wire [63:0] c_stencil_2d_filter_pmem_q;
    wire [63:0] c_stencil_2d_orig_pmem_q;
    wire [32:0] i_add39_stencil_2d27_a;
    wire [32:0] i_add39_stencil_2d27_b;
    logic [32:0] i_add39_stencil_2d27_o;
    wire [32:0] i_add39_stencil_2d27_q;
    wire [32:0] i_add43_stencil_2d33_a;
    wire [32:0] i_add43_stencil_2d33_b;
    logic [32:0] i_add43_stencil_2d33_o;
    wire [32:0] i_add43_stencil_2d33_q;
    wire [32:0] i_add_stencil_2d21_a;
    wire [32:0] i_add_stencil_2d21_b;
    logic [32:0] i_add_stencil_2d21_o;
    wire [32:0] i_add_stencil_2d21_q;
    wire [1:0] i_arrayidx353_stencil_2d23_vt_const_1_q;
    wire [63:0] i_arrayidx353_stencil_2d23_vt_join_q;
    wire [61:0] i_arrayidx353_stencil_2d23_vt_select_63_b;
    wire [63:0] i_arrayidx414_stencil_2d29_vt_join_q;
    wire [61:0] i_arrayidx414_stencil_2d29_vt_select_63_b;
    wire [1:0] i_cleanups_shl_stencil_2d7_vt_join_q;
    wire [0:0] i_cleanups_shl_stencil_2d7_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor_stencil_2d6_q;
    wire [0:0] i_forked_and_stencil_2d3_qi;
    reg [0:0] i_forked_and_stencil_2d3_q;
    wire [3:0] i_fpga_indvars_iv_next6_stencil_2d45_a;
    wire [3:0] i_fpga_indvars_iv_next6_stencil_2d45_b;
    logic [3:0] i_fpga_indvars_iv_next6_stencil_2d45_o;
    wire [3:0] i_fpga_indvars_iv_next6_stencil_2d45_q;
    wire [63:0] i_idxprom34_stencil_2d22_vt_join_q;
    wire [31:0] i_idxprom34_stencil_2d22_vt_select_31_b;
    wire [63:0] i_idxprom40_stencil_2d28_vt_join_q;
    wire [31:0] i_idxprom40_stencil_2d28_vt_select_31_b;
    wire [32:0] i_inc45_stencil_2d35_a;
    wire [32:0] i_inc45_stencil_2d35_b;
    logic [32:0] i_inc45_stencil_2d35_o;
    wire [32:0] i_inc45_stencil_2d35_q;
    wire [0:0] i_keep_going_or_stencil_2d12_qi;
    reg [0:0] i_keep_going_or_stencil_2d12_q;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_stencil_2d7_stencil_2d47_out_intel_reserved_ffwd_0_0;
    wire [31:0] i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d24_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d24_out_unnamed_stencil_2d5_stencil_2d_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d24_out_unnamed_stencil_2d5_stencil_2d_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d24_out_unnamed_stencil_2d5_stencil_2d_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d24_out_unnamed_stencil_2d5_stencil_2d_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d24_out_unnamed_stencil_2d5_stencil_2d_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d24_out_unnamed_stencil_2d5_stencil_2d_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d24_out_unnamed_stencil_2d5_stencil_2d_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_stencil_2d6_stencil_2d30_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_stencil_2d6_stencil_2d30_out_unnamed_stencil_2d6_stencil_2d_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_stencil_2d6_stencil_2d30_out_unnamed_stencil_2d6_stencil_2d_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_stencil_2d6_stencil_2d30_out_unnamed_stencil_2d6_stencil_2d_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_stencil_2d6_stencil_2d30_out_unnamed_stencil_2d6_stencil_2d_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_stencil_2d6_stencil_2d30_out_unnamed_stencil_2d6_stencil_2d_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_stencil_2d6_stencil_2d30_out_unnamed_stencil_2d6_stencil_2d_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_stencil_2d6_stencil_2d30_out_unnamed_stencil_2d6_stencil_2d_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_coalesce_i32_temp_331_pop40_stencil_2d32_out_data_out;
    wire [0:0] i_llvm_fpga_pop_coalesce_i32_temp_331_pop40_stencil_2d32_out_feedback_stall_out_40;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1099_pop51_stencil_2d10_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1099_pop51_stencil_2d10_out_feedback_stall_out_51;
    wire [0:0] i_llvm_fpga_pop_i1_forked7996_pop48_stencil_2d2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_forked7996_pop48_stencil_2d2_out_feedback_stall_out_48;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp29100_pop52_stencil_2d59_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp29100_pop52_stencil_2d59_out_feedback_stall_out_52;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3493_pop46_stencil_2d55_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3493_pop46_stencil_2d55_out_feedback_stall_out_46;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3991_pop45_stencil_2d53_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3991_pop45_stencil_2d53_out_feedback_stall_out_45;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop42_stencil_2d4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop42_stencil_2d4_out_feedback_stall_out_42;
    wire [1:0] i_llvm_fpga_pop_i2_initerations_pop41_stencil_2d13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop41_stencil_2d13_out_feedback_stall_out_41;
    wire [31:0] i_llvm_fpga_pop_i32_add3898_pop50_stencil_2d25_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_add3898_pop50_stencil_2d25_out_feedback_stall_out_50;
    wire [31:0] i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_feedback_stall_out_47;
    wire [31:0] i_llvm_fpga_pop_i32_k2_032_pop39_stencil_2d18_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k2_032_pop39_stencil_2d18_out_feedback_stall_out_39;
    wire [31:0] i_llvm_fpga_pop_i32_mul33_add1897_pop49_stencil_2d19_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul33_add1897_pop49_stencil_2d19_out_feedback_stall_out_49;
    wire [31:0] i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_feedback_stall_out_44;
    wire [31:0] i_llvm_fpga_pop_i32_r_036_pop2585_pop43_stencil_2d49_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_r_036_pop2585_pop43_stencil_2d49_out_feedback_stall_out_43;
    wire [2:0] i_llvm_fpga_pop_i3_fpga_indvars_iv5_pop38_stencil_2d37_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i3_fpga_indvars_iv5_pop38_stencil_2d37_out_feedback_stall_out_38;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1099_push51_stencil_2d11_out_feedback_out_51;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1099_push51_stencil_2d11_out_feedback_valid_out_51;
    wire [0:0] i_llvm_fpga_push_i1_forked7996_push48_stencil_2d9_out_feedback_out_48;
    wire [0:0] i_llvm_fpga_push_i1_forked7996_push48_stencil_2d9_out_feedback_valid_out_48;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_stencil_2d17_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_stencil_2d17_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notcmp29100_push52_stencil_2d60_out_feedback_out_52;
    wire [0:0] i_llvm_fpga_push_i1_notcmp29100_push52_stencil_2d60_out_feedback_valid_out_52;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3493_push46_stencil_2d56_out_feedback_out_46;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3493_push46_stencil_2d56_out_feedback_valid_out_46;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3991_push45_stencil_2d54_out_feedback_out_45;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3991_push45_stencil_2d54_out_feedback_valid_out_45;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_stencil_2d41_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_stencil_2d41_out_feedback_valid_out_3;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push42_stencil_2d44_out_feedback_out_42;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push42_stencil_2d44_out_feedback_valid_out_42;
    wire [7:0] i_llvm_fpga_push_i2_initerations_push41_stencil_2d15_out_feedback_out_41;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push41_stencil_2d15_out_feedback_valid_out_41;
    wire [31:0] i_llvm_fpga_push_i32_add3898_push50_stencil_2d26_out_feedback_out_50;
    wire [0:0] i_llvm_fpga_push_i32_add3898_push50_stencil_2d26_out_feedback_valid_out_50;
    wire [31:0] i_llvm_fpga_push_i32_c_035_pop2795_push47_stencil_2d58_out_feedback_out_47;
    wire [0:0] i_llvm_fpga_push_i32_c_035_pop2795_push47_stencil_2d58_out_feedback_valid_out_47;
    wire [31:0] i_llvm_fpga_push_i32_k2_032_push39_stencil_2d36_out_feedback_out_39;
    wire [0:0] i_llvm_fpga_push_i32_k2_032_push39_stencil_2d36_out_feedback_valid_out_39;
    wire [31:0] i_llvm_fpga_push_i32_mul33_add1897_push49_stencil_2d20_out_feedback_out_49;
    wire [0:0] i_llvm_fpga_push_i32_mul33_add1897_push49_stencil_2d20_out_feedback_valid_out_49;
    wire [31:0] i_llvm_fpga_push_i32_mul5088_push44_stencil_2d52_out_feedback_out_44;
    wire [0:0] i_llvm_fpga_push_i32_mul5088_push44_stencil_2d52_out_feedback_valid_out_44;
    wire [31:0] i_llvm_fpga_push_i32_r_036_pop2585_push43_stencil_2d50_out_feedback_out_43;
    wire [0:0] i_llvm_fpga_push_i32_r_036_pop2585_push43_stencil_2d50_out_feedback_valid_out_43;
    wire [31:0] i_llvm_fpga_push_i32_temp_331_push40_stencil_2d34_out_feedback_out_40;
    wire [0:0] i_llvm_fpga_push_i32_temp_331_push40_stencil_2d34_out_feedback_valid_out_40;
    wire [7:0] i_llvm_fpga_push_i3_fpga_indvars_iv5_push38_stencil_2d46_out_feedback_out_38;
    wire [0:0] i_llvm_fpga_push_i3_fpga_indvars_iv5_push38_stencil_2d46_out_feedback_valid_out_38;
    wire [0:0] i_masked_stencil_2d48_qi;
    reg [0:0] i_masked_stencil_2d48_q;
    wire [0:0] i_next_cleanups_stencil_2d43_s;
    reg [1:0] i_next_cleanups_stencil_2d43_q;
    wire [1:0] i_next_initerations_stencil_2d14_vt_join_q;
    wire [0:0] i_next_initerations_stencil_2d14_vt_select_0_b;
    wire [0:0] i_notcmp_stencil_2d40_q;
    wire [0:0] i_or_stencil_2d42_q;
    wire [31:0] bgTrunc_i_add39_stencil_2d27_sel_x_b;
    wire [31:0] bgTrunc_i_add43_stencil_2d33_sel_x_b;
    wire [31:0] bgTrunc_i_add_stencil_2d21_sel_x_b;
    wire [2:0] bgTrunc_i_fpga_indvars_iv_next6_stencil_2d45_sel_x_b;
    wire [31:0] bgTrunc_i_inc45_stencil_2d35_sel_x_b;
    wire [63:0] bgTrunc_i_mul42_stencil_2d31_sel_x_in;
    wire [31:0] bgTrunc_i_mul42_stencil_2d31_sel_x_b;
    wire [6:0] i_arrayidx353_stencil_2d0_add_x_a;
    wire [6:0] i_arrayidx353_stencil_2d0_add_x_b;
    logic [6:0] i_arrayidx353_stencil_2d0_add_x_o;
    wire [6:0] i_arrayidx353_stencil_2d0_add_x_q;
    wire [63:0] i_arrayidx353_stencil_2d0_append_upper_bits_x_q;
    wire [3:0] i_arrayidx353_stencil_2d0_narrow_x_b;
    wire [5:0] i_arrayidx353_stencil_2d0_shift_join_x_q;
    wire [5:0] i_arrayidx353_stencil_2d0_dupName_0_trunc_sel_x_b;
    wire [5:0] i_arrayidx353_stencil_2d0_dupName_2_trunc_sel_x_b;
    wire [12:0] i_arrayidx414_stencil_2d0_add_x_a;
    wire [12:0] i_arrayidx414_stencil_2d0_add_x_b;
    logic [12:0] i_arrayidx414_stencil_2d0_add_x_o;
    wire [12:0] i_arrayidx414_stencil_2d0_add_x_q;
    wire [63:0] i_arrayidx414_stencil_2d0_append_upper_bits_x_q;
    wire [9:0] i_arrayidx414_stencil_2d0_narrow_x_b;
    wire [11:0] i_arrayidx414_stencil_2d0_shift_join_x_q;
    wire [11:0] i_arrayidx414_stencil_2d0_dupName_0_trunc_sel_x_b;
    wire [11:0] i_arrayidx414_stencil_2d0_dupName_2_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_stencil_2d5_sel_x_b;
    wire [63:0] i_idxprom34_stencil_2d22_sel_x_b;
    wire [63:0] i_idxprom40_stencil_2d28_sel_x_b;
    wire [0:0] i_last_initeration_stencil_2d16_sel_x_b;
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
    wire [0:0] i_exitcond7_stencil_2d38_cmp_nsign_q;
    wire [63:0] i_mul42_stencil_2d31_sums_join_0_q;
    wire [50:0] i_mul42_stencil_2d31_sums_align_1_q;
    wire [50:0] i_mul42_stencil_2d31_sums_align_1_qint;
    wire [64:0] i_mul42_stencil_2d31_sums_result_add_0_0_a;
    wire [64:0] i_mul42_stencil_2d31_sums_result_add_0_0_b;
    logic [64:0] i_mul42_stencil_2d31_sums_result_add_0_0_o;
    wire [64:0] i_mul42_stencil_2d31_sums_result_add_0_0_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid244_i_cleanups_shl_stencil_2d0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid244_i_cleanups_shl_stencil_2d0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid245_i_cleanups_shl_stencil_2d0_shift_x_q;
    wire [0:0] leftShiftStage0_uid247_i_cleanups_shl_stencil_2d0_shift_x_s;
    reg [1:0] leftShiftStage0_uid247_i_cleanups_shl_stencil_2d0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid251_i_next_initerations_stencil_2d0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid253_i_next_initerations_stencil_2d0_shift_x_q;
    wire [0:0] rightShiftStage0_uid255_i_next_initerations_stencil_2d0_shift_x_s;
    reg [1:0] rightShiftStage0_uid255_i_next_initerations_stencil_2d0_shift_x_q;
    wire i_mul42_stencil_2d31_im0_cma_reset;
    wire [13:0] i_mul42_stencil_2d31_im0_cma_a0;
    wire [13:0] i_mul42_stencil_2d31_im0_cma_c0;
    wire [27:0] i_mul42_stencil_2d31_im0_cma_s0;
    wire [27:0] i_mul42_stencil_2d31_im0_cma_qq;
    wire [27:0] i_mul42_stencil_2d31_im0_cma_q;
    wire i_mul42_stencil_2d31_im0_cma_ena0;
    wire i_mul42_stencil_2d31_im0_cma_ena1;
    wire i_mul42_stencil_2d31_im0_cma_ena2;
    wire i_mul42_stencil_2d31_im8_cma_reset;
    wire [17:0] i_mul42_stencil_2d31_im8_cma_a0;
    wire [17:0] i_mul42_stencil_2d31_im8_cma_c0;
    wire [35:0] i_mul42_stencil_2d31_im8_cma_s0;
    wire [35:0] i_mul42_stencil_2d31_im8_cma_qq;
    wire [35:0] i_mul42_stencil_2d31_im8_cma_q;
    wire i_mul42_stencil_2d31_im8_cma_ena0;
    wire i_mul42_stencil_2d31_im8_cma_ena1;
    wire i_mul42_stencil_2d31_im8_cma_ena2;
    wire i_mul42_stencil_2d31_ma3_cma_reset;
    wire [13:0] i_mul42_stencil_2d31_ma3_cma_a0;
    wire [17:0] i_mul42_stencil_2d31_ma3_cma_c0;
    wire [13:0] i_mul42_stencil_2d31_ma3_cma_a1;
    wire [17:0] i_mul42_stencil_2d31_ma3_cma_c1;
    wire [32:0] i_mul42_stencil_2d31_ma3_cma_s0;
    wire [32:0] i_mul42_stencil_2d31_ma3_cma_qq;
    wire [32:0] i_mul42_stencil_2d31_ma3_cma_q;
    wire i_mul42_stencil_2d31_ma3_cma_ena0;
    wire i_mul42_stencil_2d31_ma3_cma_ena1;
    wire i_mul42_stencil_2d31_ma3_cma_ena2;
    wire [57:0] i_arrayidx353_stencil_2d0_upper_bits_x_merged_bit_select_b;
    wire [5:0] i_arrayidx353_stencil_2d0_upper_bits_x_merged_bit_select_c;
    wire [51:0] i_arrayidx414_stencil_2d0_upper_bits_x_merged_bit_select_b;
    wire [11:0] i_arrayidx414_stencil_2d0_upper_bits_x_merged_bit_select_c;
    wire [13:0] i_mul42_stencil_2d31_bs2_merged_bit_select_b;
    wire [17:0] i_mul42_stencil_2d31_bs2_merged_bit_select_c;
    wire [13:0] i_mul42_stencil_2d31_bs1_merged_bit_select_b;
    wire [17:0] i_mul42_stencil_2d31_bs1_merged_bit_select_c;
    reg [0:0] redist0_sync_together141_aunroll_x_in_c0_eni19_1_tpl_1_q;
    reg [0:0] redist1_sync_together141_aunroll_x_in_c0_eni19_2_tpl_1_q;
    reg [0:0] redist2_sync_together141_aunroll_x_in_c0_eni19_3_tpl_1_q;
    reg [31:0] redist3_sync_together141_aunroll_x_in_c0_eni19_4_tpl_1_q;
    reg [31:0] redist4_sync_together141_aunroll_x_in_c0_eni19_5_tpl_1_q;
    reg [31:0] redist5_sync_together141_aunroll_x_in_c0_eni19_6_tpl_1_q;
    reg [31:0] redist6_sync_together141_aunroll_x_in_c0_eni19_7_tpl_1_q;
    reg [0:0] redist7_sync_together141_aunroll_x_in_c0_eni19_8_tpl_1_q;
    reg [0:0] redist8_sync_together141_aunroll_x_in_c0_eni19_9_tpl_1_q;
    reg [31:0] redist9_sync_together141_aunroll_x_in_c0_eni19_10_tpl_1_q;
    reg [0:0] redist10_sync_together141_aunroll_x_in_c0_eni19_11_tpl_1_q;
    reg [0:0] redist13_sync_together141_aunroll_x_in_c0_eni19_14_tpl_10_q;
    reg [0:0] redist14_sync_together141_aunroll_x_in_c0_eni19_15_tpl_10_q;
    reg [0:0] redist18_sync_together141_aunroll_x_in_c0_eni19_19_tpl_10_q;
    reg [0:0] redist19_sync_together141_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist20_sync_together141_aunroll_x_in_i_valid_9_q;
    reg [9:0] redist21_i_arrayidx414_stencil_2d0_narrow_x_b_1_q;
    reg [3:0] redist22_i_arrayidx353_stencil_2d0_narrow_x_b_1_q;
    reg [31:0] redist23_bgTrunc_i_mul42_stencil_2d31_sel_x_b_1_q;
    reg [0:0] redist24_i_masked_stencil_2d48_q_9_q;
    reg [0:0] redist27_i_llvm_fpga_pop_i1_notcmp3991_pop45_stencil_2d53_out_data_out_9_q;
    reg [0:0] redist28_i_llvm_fpga_pop_i1_notcmp3493_pop46_stencil_2d55_out_data_out_9_q;
    reg [0:0] redist29_i_llvm_fpga_pop_i1_notcmp29100_pop52_stencil_2d59_out_data_out_9_q;
    reg [0:0] redist30_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q;
    reg [0:0] redist31_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_10_q;
    reg [0:0] redist32_i_keep_going_or_stencil_2d12_q_9_q;
    reg [0:0] redist33_i_forked_and_stencil_2d3_q_9_q;
    reg [0:0] redist34_i_first_cleanup_xor_stencil_2d6_q_1_q;
    reg [0:0] redist35_i_first_cleanup_xor_stencil_2d6_q_9_q;
    wire redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_mem_reset0;
    wire [31:0] redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_mem_ia;
    wire [3:0] redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_mem_aa;
    wire [3:0] redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_mem_ab;
    wire [31:0] redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_mem_iq;
    wire [31:0] redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_mem_q;
    wire [3:0] redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_rdcnt_q;
    (* preserve *) reg [3:0] redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_rdcnt_i;
    (* preserve *) reg redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_rdcnt_eq;
    reg [3:0] redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_wraddr_q;
    wire [3:0] redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_mem_last_q;
    wire [0:0] redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_cmp_q;
    (* dont_merge *) reg [0:0] redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_cmpReg_q;
    wire [0:0] redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_notEnable_q;
    wire [0:0] redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_nor_q;
    (* dont_merge *) reg [0:0] redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_sticky_ena_q;
    wire [0:0] redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_enaAnd_q;
    wire redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_mem_reset0;
    wire [31:0] redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_mem_ia;
    wire [3:0] redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_mem_aa;
    wire [3:0] redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_mem_ab;
    wire [31:0] redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_mem_iq;
    wire [31:0] redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_mem_q;
    wire [3:0] redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_rdcnt_q;
    (* preserve *) reg [3:0] redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_rdcnt_i;
    (* preserve *) reg redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_rdcnt_eq;
    reg [3:0] redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_wraddr_q;
    wire [3:0] redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_mem_last_q;
    wire [0:0] redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_cmp_q;
    (* dont_merge *) reg [0:0] redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_cmpReg_q;
    wire [0:0] redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_notEnable_q;
    wire [0:0] redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_nor_q;
    (* dont_merge *) reg [0:0] redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_sticky_ena_q;
    wire [0:0] redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_enaAnd_q;
    wire redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_mem_reset0;
    wire [31:0] redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_mem_ia;
    wire [3:0] redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_mem_aa;
    wire [3:0] redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_mem_ab;
    wire [31:0] redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_mem_iq;
    wire [31:0] redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_mem_q;
    wire [3:0] redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_rdcnt_q;
    (* preserve *) reg [3:0] redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_rdcnt_i;
    (* preserve *) reg redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_rdcnt_eq;
    reg [3:0] redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_wraddr_q;
    wire [3:0] redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_mem_last_q;
    wire [0:0] redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_cmp_q;
    (* dont_merge *) reg [0:0] redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_cmpReg_q;
    wire [0:0] redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_notEnable_q;
    wire [0:0] redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_nor_q;
    (* dont_merge *) reg [0:0] redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_sticky_ena_q;
    wire [0:0] redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_enaAnd_q;
    wire redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_mem_reset0;
    wire [31:0] redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_mem_ia;
    wire [3:0] redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_mem_aa;
    wire [3:0] redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_mem_ab;
    wire [31:0] redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_mem_iq;
    wire [31:0] redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_mem_q;
    wire [3:0] redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_rdcnt_q;
    (* preserve *) reg [3:0] redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_rdcnt_i;
    (* preserve *) reg redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_rdcnt_eq;
    reg [3:0] redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_wraddr_q;
    wire [3:0] redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_mem_last_q;
    wire [0:0] redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_cmp_q;
    (* dont_merge *) reg [0:0] redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_cmpReg_q;
    wire [0:0] redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_notEnable_q;
    wire [0:0] redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_nor_q;
    (* dont_merge *) reg [0:0] redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_sticky_ena_q;
    wire [0:0] redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_enaAnd_q;
    wire redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_mem_reset0;
    wire [31:0] redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_mem_ia;
    wire [3:0] redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_mem_aa;
    wire [3:0] redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_mem_ab;
    wire [31:0] redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_mem_iq;
    wire [31:0] redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_mem_q;
    wire [3:0] redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_rdcnt_q;
    (* preserve *) reg [3:0] redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_rdcnt_i;
    (* preserve *) reg redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_rdcnt_eq;
    reg [3:0] redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_wraddr_q;
    wire [3:0] redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_mem_last_q;
    wire [0:0] redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_cmp_q;
    (* dont_merge *) reg [0:0] redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_cmpReg_q;
    wire [0:0] redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_notEnable_q;
    wire [0:0] redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_nor_q;
    (* dont_merge *) reg [0:0] redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_sticky_ena_q;
    wire [0:0] redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_enaAnd_q;
    wire redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_mem_reset0;
    wire [31:0] redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_mem_ia;
    wire [2:0] redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_mem_aa;
    wire [2:0] redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_mem_ab;
    wire [31:0] redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_mem_iq;
    wire [31:0] redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_mem_q;
    wire [2:0] redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_rdcnt_q;
    (* preserve *) reg [2:0] redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_rdcnt_i;
    reg [2:0] redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_wraddr_q;
    wire [3:0] redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_mem_last_q;
    wire [3:0] redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_cmp_b;
    wire [0:0] redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_cmp_q;
    (* dont_merge *) reg [0:0] redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_cmpReg_q;
    wire [0:0] redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_notEnable_q;
    wire [0:0] redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_nor_q;
    (* dont_merge *) reg [0:0] redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_sticky_ena_q;
    wire [0:0] redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_enaAnd_q;
    wire redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_mem_reset0;
    wire [31:0] redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_mem_ia;
    wire [2:0] redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_mem_aa;
    wire [2:0] redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_mem_ab;
    wire [31:0] redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_mem_iq;
    wire [31:0] redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_mem_q;
    wire [2:0] redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_rdcnt_q;
    (* preserve *) reg [2:0] redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_rdcnt_i;
    reg [2:0] redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_wraddr_q;
    wire [3:0] redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_mem_last_q;
    wire [3:0] redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_cmp_b;
    wire [0:0] redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_cmp_q;
    (* dont_merge *) reg [0:0] redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_cmpReg_q;
    wire [0:0] redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_notEnable_q;
    wire [0:0] redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_nor_q;
    (* dont_merge *) reg [0:0] redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_sticky_ena_q;
    wire [0:0] redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_enaAnd_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist19_sync_together141_aunroll_x_in_i_valid_1(DELAY,282)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together141_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist19_sync_together141_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist30_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1(DELAY,293)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q <= '0;
        end
        else
        begin
            redist30_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid244_i_cleanups_shl_stencil_2d0_shift_x(BITSELECT,243)@2
    assign leftShiftStage0Idx1Rng1_uid244_i_cleanups_shl_stencil_2d0_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop42_stencil_2d4_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid244_i_cleanups_shl_stencil_2d0_shift_x_b = leftShiftStage0Idx1Rng1_uid244_i_cleanups_shl_stencil_2d0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid245_i_cleanups_shl_stencil_2d0_shift_x(BITJOIN,244)@2
    assign leftShiftStage0Idx1_uid245_i_cleanups_shl_stencil_2d0_shift_x_q = {leftShiftStage0Idx1Rng1_uid244_i_cleanups_shl_stencil_2d0_shift_x_b, GND_q};

    // leftShiftStage0_uid247_i_cleanups_shl_stencil_2d0_shift_x(MUX,246)@2
    assign leftShiftStage0_uid247_i_cleanups_shl_stencil_2d0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid247_i_cleanups_shl_stencil_2d0_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop42_stencil_2d4_out_data_out or leftShiftStage0Idx1_uid245_i_cleanups_shl_stencil_2d0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid247_i_cleanups_shl_stencil_2d0_shift_x_s)
            1'b0 : leftShiftStage0_uid247_i_cleanups_shl_stencil_2d0_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop42_stencil_2d4_out_data_out;
            1'b1 : leftShiftStage0_uid247_i_cleanups_shl_stencil_2d0_shift_x_q = leftShiftStage0Idx1_uid245_i_cleanups_shl_stencil_2d0_shift_x_q;
            default : leftShiftStage0_uid247_i_cleanups_shl_stencil_2d0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_stencil_2d7_vt_select_1(BITSELECT,65)@2
    assign i_cleanups_shl_stencil_2d7_vt_select_1_b = leftShiftStage0_uid247_i_cleanups_shl_stencil_2d0_shift_x_q[1:1];

    // i_cleanups_shl_stencil_2d7_vt_join(BITJOIN,64)@2
    assign i_cleanups_shl_stencil_2d7_vt_join_q = {i_cleanups_shl_stencil_2d7_vt_select_1_b, GND_q};

    // i_first_cleanup_xor_stencil_2d6(LOGICAL,68)@2
    assign i_first_cleanup_xor_stencil_2d6_q = i_first_cleanup_stencil_2d5_sel_x_b ^ VCC_q;

    // i_notcmp_stencil_2d40(LOGICAL,124)@2
    assign i_notcmp_stencil_2d40_q = i_exitcond7_stencil_2d38_cmp_nsign_q ^ VCC_q;

    // i_or_stencil_2d42(LOGICAL,125)@2
    assign i_or_stencil_2d42_q = i_notcmp_stencil_2d40_q | i_first_cleanup_xor_stencil_2d6_q;

    // i_next_cleanups_stencil_2d43(MUX,120)@2
    assign i_next_cleanups_stencil_2d43_s = i_or_stencil_2d42_q;
    always @(i_next_cleanups_stencil_2d43_s or i_llvm_fpga_pop_i2_cleanups_pop42_stencil_2d4_out_data_out or i_cleanups_shl_stencil_2d7_vt_join_q)
    begin
        unique case (i_next_cleanups_stencil_2d43_s)
            1'b0 : i_next_cleanups_stencil_2d43_q = i_llvm_fpga_pop_i2_cleanups_pop42_stencil_2d4_out_data_out;
            1'b1 : i_next_cleanups_stencil_2d43_q = i_cleanups_shl_stencil_2d7_vt_join_q;
            default : i_next_cleanups_stencil_2d43_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push42_stencil_2d44(BLACKBOX,108)@2
    // out out_feedback_out_42@20000000
    // out out_feedback_valid_out_42@20000000
    stencil_2d_i_llvm_fpga_push_i2_cleanups_push42_0 thei_llvm_fpga_push_i2_cleanups_push42_stencil_2d44 (
        .in_data_in(i_next_cleanups_stencil_2d43_q),
        .in_feedback_stall_in_42(i_llvm_fpga_pop_i2_cleanups_pop42_stencil_2d4_out_feedback_stall_out_42),
        .in_keep_going(redist30_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist19_sync_together141_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_42(i_llvm_fpga_push_i2_cleanups_push42_stencil_2d44_out_feedback_out_42),
        .out_feedback_valid_out_42(i_llvm_fpga_push_i2_cleanups_push42_stencil_2d44_out_feedback_valid_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together141_aunroll_x_in_c0_eni19_2_tpl_1(DELAY,264)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together141_aunroll_x_in_c0_eni19_2_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together141_aunroll_x_in_c0_eni19_2_tpl_1_q <= $unsigned(in_c0_eni19_2_tpl);
        end
    end

    // c_i2_198(CONSTANT,45)
    assign c_i2_198_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop42_stencil_2d4(BLACKBOX,92)@2
    // out out_feedback_stall_out_42@20000000
    stencil_2d_i_llvm_fpga_pop_i2_cleanups_pop42_0 thei_llvm_fpga_pop_i2_cleanups_pop42_stencil_2d4 (
        .in_data_in(c_i2_198_q),
        .in_dir(redist1_sync_together141_aunroll_x_in_c0_eni19_2_tpl_1_q),
        .in_feedback_in_42(i_llvm_fpga_push_i2_cleanups_push42_stencil_2d44_out_feedback_out_42),
        .in_feedback_valid_in_42(i_llvm_fpga_push_i2_cleanups_push42_stencil_2d44_out_feedback_valid_out_42),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist19_sync_together141_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop42_stencil_2d4_out_data_out),
        .out_feedback_stall_out_42(i_llvm_fpga_pop_i2_cleanups_pop42_stencil_2d4_out_feedback_stall_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_stencil_2d5_sel_x(BITSELECT,170)@2
    assign i_first_cleanup_stencil_2d5_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop42_stencil_2d4_out_data_out[0:0];

    // c_i3_1104(CONSTANT,49)
    assign c_i3_1104_q = $unsigned(3'b111);

    // i_fpga_indvars_iv_next6_stencil_2d45(ADD,70)@2
    assign i_fpga_indvars_iv_next6_stencil_2d45_a = {1'b0, i_llvm_fpga_pop_i3_fpga_indvars_iv5_pop38_stencil_2d37_out_data_out};
    assign i_fpga_indvars_iv_next6_stencil_2d45_b = {1'b0, c_i3_1104_q};
    assign i_fpga_indvars_iv_next6_stencil_2d45_o = $unsigned(i_fpga_indvars_iv_next6_stencil_2d45_a) + $unsigned(i_fpga_indvars_iv_next6_stencil_2d45_b);
    assign i_fpga_indvars_iv_next6_stencil_2d45_q = i_fpga_indvars_iv_next6_stencil_2d45_o[3:0];

    // bgTrunc_i_fpga_indvars_iv_next6_stencil_2d45_sel_x(BITSELECT,135)@2
    assign bgTrunc_i_fpga_indvars_iv_next6_stencil_2d45_sel_x_b = i_fpga_indvars_iv_next6_stencil_2d45_q[2:0];

    // i_llvm_fpga_push_i3_fpga_indvars_iv5_push38_stencil_2d46(BLACKBOX,117)@2
    // out out_feedback_out_38@20000000
    // out out_feedback_valid_out_38@20000000
    stencil_2d_i_llvm_fpga_push_i3_fpga_indvars_iv5_push38_0 thei_llvm_fpga_push_i3_fpga_indvars_iv5_push38_stencil_2d46 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next6_stencil_2d45_sel_x_b),
        .in_feedback_stall_in_38(i_llvm_fpga_pop_i3_fpga_indvars_iv5_pop38_stencil_2d37_out_feedback_stall_out_38),
        .in_keep_going(redist30_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist19_sync_together141_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_38(i_llvm_fpga_push_i3_fpga_indvars_iv5_push38_stencil_2d46_out_feedback_out_38),
        .out_feedback_valid_out_38(i_llvm_fpga_push_i3_fpga_indvars_iv5_push38_stencil_2d46_out_feedback_valid_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i3_1102(CONSTANT,48)
    assign c_i3_1102_q = $unsigned(3'b001);

    // i_llvm_fpga_pop_i3_fpga_indvars_iv5_pop38_stencil_2d37(BLACKBOX,100)@2
    // out out_feedback_stall_out_38@20000000
    stencil_2d_i_llvm_fpga_pop_i3_fpga_indvars_iv5_pop38_0 thei_llvm_fpga_pop_i3_fpga_indvars_iv5_pop38_stencil_2d37 (
        .in_data_in(c_i3_1102_q),
        .in_dir(redist1_sync_together141_aunroll_x_in_c0_eni19_2_tpl_1_q),
        .in_feedback_in_38(i_llvm_fpga_push_i3_fpga_indvars_iv5_push38_stencil_2d46_out_feedback_out_38),
        .in_feedback_valid_in_38(i_llvm_fpga_push_i3_fpga_indvars_iv5_push38_stencil_2d46_out_feedback_valid_out_38),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist19_sync_together141_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i3_fpga_indvars_iv5_pop38_stencil_2d37_out_data_out),
        .out_feedback_stall_out_38(i_llvm_fpga_pop_i3_fpga_indvars_iv5_pop38_stencil_2d37_out_feedback_stall_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond7_stencil_2d38_cmp_nsign(LOGICAL,224)@2
    assign i_exitcond7_stencil_2d38_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i3_fpga_indvars_iv5_pop38_stencil_2d37_out_data_out[2:2]));

    // i_llvm_fpga_push_i1_notexitcond_stencil_2d41(BLACKBOX,107)@2
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    stencil_2d_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_stencil_2d41 (
        .in_data_in(i_exitcond7_stencil_2d38_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_stencil_2d5_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist19_sync_together141_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_stencil_2d41_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_stencil_2d41_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg7(REG,187)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid251_i_next_initerations_stencil_2d0_shift_x(BITSELECT,250)@2
    assign rightShiftStage0Idx1Rng1_uid251_i_next_initerations_stencil_2d0_shift_x_b = i_llvm_fpga_pop_i2_initerations_pop41_stencil_2d13_out_data_out[1:1];

    // rightShiftStage0Idx1_uid253_i_next_initerations_stencil_2d0_shift_x(BITJOIN,252)@2
    assign rightShiftStage0Idx1_uid253_i_next_initerations_stencil_2d0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid251_i_next_initerations_stencil_2d0_shift_x_b};

    // valid_fanout_reg5(REG,185)@1 + 1
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

    // valid_fanout_reg6(REG,186)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations_push41_stencil_2d15(BLACKBOX,109)@2
    // out out_feedback_out_41@20000000
    // out out_feedback_valid_out_41@20000000
    stencil_2d_i_llvm_fpga_push_i2_initerations_push41_0 thei_llvm_fpga_push_i2_initerations_push41_stencil_2d15 (
        .in_data_in(i_next_initerations_stencil_2d14_vt_join_q),
        .in_feedback_stall_in_41(i_llvm_fpga_pop_i2_initerations_pop41_stencil_2d13_out_feedback_stall_out_41),
        .in_keep_going(redist30_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_41(i_llvm_fpga_push_i2_initerations_push41_stencil_2d15_out_feedback_out_41),
        .out_feedback_valid_out_41(i_llvm_fpga_push_i2_initerations_push41_stencil_2d15_out_feedback_valid_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations_pop41_stencil_2d13(BLACKBOX,93)@2
    // out out_feedback_stall_out_41@20000000
    stencil_2d_i_llvm_fpga_pop_i2_initerations_pop41_0 thei_llvm_fpga_pop_i2_initerations_pop41_stencil_2d13 (
        .in_data_in(c_i2_198_q),
        .in_dir(redist1_sync_together141_aunroll_x_in_c0_eni19_2_tpl_1_q),
        .in_feedback_in_41(i_llvm_fpga_push_i2_initerations_push41_stencil_2d15_out_feedback_out_41),
        .in_feedback_valid_in_41(i_llvm_fpga_push_i2_initerations_push41_stencil_2d15_out_feedback_valid_out_41),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations_pop41_stencil_2d13_out_data_out),
        .out_feedback_stall_out_41(i_llvm_fpga_pop_i2_initerations_pop41_stencil_2d13_out_feedback_stall_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid255_i_next_initerations_stencil_2d0_shift_x(MUX,254)@2
    assign rightShiftStage0_uid255_i_next_initerations_stencil_2d0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid255_i_next_initerations_stencil_2d0_shift_x_s or i_llvm_fpga_pop_i2_initerations_pop41_stencil_2d13_out_data_out or rightShiftStage0Idx1_uid253_i_next_initerations_stencil_2d0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid255_i_next_initerations_stencil_2d0_shift_x_s)
            1'b0 : rightShiftStage0_uid255_i_next_initerations_stencil_2d0_shift_x_q = i_llvm_fpga_pop_i2_initerations_pop41_stencil_2d13_out_data_out;
            1'b1 : rightShiftStage0_uid255_i_next_initerations_stencil_2d0_shift_x_q = rightShiftStage0Idx1_uid253_i_next_initerations_stencil_2d0_shift_x_q;
            default : rightShiftStage0_uid255_i_next_initerations_stencil_2d0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations_stencil_2d14_vt_select_0(BITSELECT,123)@2
    assign i_next_initerations_stencil_2d14_vt_select_0_b = rightShiftStage0_uid255_i_next_initerations_stencil_2d0_shift_x_q[0:0];

    // i_next_initerations_stencil_2d14_vt_join(BITJOIN,122)@2
    assign i_next_initerations_stencil_2d14_vt_join_q = {GND_q, i_next_initerations_stencil_2d14_vt_select_0_b};

    // i_last_initeration_stencil_2d16_sel_x(BITSELECT,173)@2
    assign i_last_initeration_stencil_2d16_sel_x_b = i_next_initerations_stencil_2d14_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_stencil_2d17(BLACKBOX,103)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    stencil_2d_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_stencil_2d17 (
        .in_data_in(i_last_initeration_stencil_2d16_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_initeration_stall_out),
        .in_keep_going(redist30_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_stencil_2d17_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_stencil_2d17_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_stencil_2d8(BLACKBOX,85)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    stencil_2d_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_stencil_2d8 (
        .in_data_in(in_c0_eni19_2_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_stencil_2d17_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_stencil_2d17_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_stencil_2d41_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_stencil_2d41_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,53)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,128)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_pipeline_valid_out;

    // redist20_sync_together141_aunroll_x_in_i_valid_9(DELAY,283)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist20_sync_together141_aunroll_x_in_i_valid_9 ( .xin(redist19_sync_together141_aunroll_x_in_i_valid_1_q), .xout(redist20_sync_together141_aunroll_x_in_i_valid_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg18(REG,198)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist20_sync_together141_aunroll_x_in_i_valid_9_q);
        end
    end

    // valid_fanout_reg15(REG,195)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist20_sync_together141_aunroll_x_in_i_valid_9_q);
        end
    end

    // valid_fanout_reg16(REG,196)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist20_sync_together141_aunroll_x_in_i_valid_9_q);
        end
    end

    // valid_fanout_reg3(REG,183)@1 + 1
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

    // valid_fanout_reg4(REG,184)@1 + 1
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

    // i_llvm_fpga_push_i1_exitcond1099_push51_stencil_2d11(BLACKBOX,101)@2
    // out out_feedback_out_51@20000000
    // out out_feedback_valid_out_51@20000000
    stencil_2d_i_llvm_fpga_push_i1_exitcond1099_push51_0 thei_llvm_fpga_push_i1_exitcond1099_push51_stencil_2d11 (
        .in_data_in(i_llvm_fpga_pop_i1_exitcond1099_pop51_stencil_2d10_out_data_out),
        .in_feedback_stall_in_51(i_llvm_fpga_pop_i1_exitcond1099_pop51_stencil_2d10_out_feedback_stall_out_51),
        .in_keep_going(redist30_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_51(i_llvm_fpga_push_i1_exitcond1099_push51_stencil_2d11_out_feedback_out_51),
        .out_feedback_valid_out_51(i_llvm_fpga_push_i1_exitcond1099_push51_stencil_2d11_out_feedback_valid_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together141_aunroll_x_in_c0_eni19_3_tpl_1(DELAY,265)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together141_aunroll_x_in_c0_eni19_3_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together141_aunroll_x_in_c0_eni19_3_tpl_1_q <= $unsigned(in_c0_eni19_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_exitcond1099_pop51_stencil_2d10(BLACKBOX,87)@2
    // out out_feedback_stall_out_51@20000000
    stencil_2d_i_llvm_fpga_pop_i1_exitcond1099_pop51_0 thei_llvm_fpga_pop_i1_exitcond1099_pop51_stencil_2d10 (
        .in_data_in(redist2_sync_together141_aunroll_x_in_c0_eni19_3_tpl_1_q),
        .in_dir(redist1_sync_together141_aunroll_x_in_c0_eni19_2_tpl_1_q),
        .in_feedback_in_51(i_llvm_fpga_push_i1_exitcond1099_push51_stencil_2d11_out_feedback_out_51),
        .in_feedback_valid_in_51(i_llvm_fpga_push_i1_exitcond1099_push51_stencil_2d11_out_feedback_valid_out_51),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond1099_pop51_stencil_2d10_out_data_out),
        .out_feedback_stall_out_51(i_llvm_fpga_pop_i1_exitcond1099_pop51_stencil_2d10_out_feedback_stall_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_keep_going_or_stencil_2d12(LOGICAL,80)@2 + 1
    assign i_keep_going_or_stencil_2d12_qi = redist30_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q | i_llvm_fpga_pop_i1_exitcond1099_pop51_stencil_2d10_out_data_out;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_keep_going_or_stencil_2d12_delay ( .xin(i_keep_going_or_stencil_2d12_qi), .xout(i_keep_going_or_stencil_2d12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist32_i_keep_going_or_stencil_2d12_q_9(DELAY,295)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist32_i_keep_going_or_stencil_2d12_q_9 ( .xin(i_keep_going_or_stencil_2d12_q), .xout(redist32_i_keep_going_or_stencil_2d12_q_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_push_i32_temp_331_push40_stencil_2d34(BLACKBOX,116)@11
    // out out_feedback_out_40@20000000
    // out out_feedback_valid_out_40@20000000
    stencil_2d_i_llvm_fpga_push_i32_temp_331_push40_0 thei_llvm_fpga_push_i32_temp_331_push40_stencil_2d34 (
        .in_data_in(bgTrunc_i_add43_stencil_2d33_sel_x_b),
        .in_feedback_stall_in_40(i_llvm_fpga_pop_coalesce_i32_temp_331_pop40_stencil_2d32_out_feedback_stall_out_40),
        .in_first_cleanup_xor(redist35_i_first_cleanup_xor_stencil_2d6_q_9_q),
        .in_keep_going_or(redist32_i_keep_going_or_stencil_2d12_q_9_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(),
        .out_feedback_out_40(i_llvm_fpga_push_i32_temp_331_push40_stencil_2d34_out_feedback_out_40),
        .out_feedback_valid_out_40(i_llvm_fpga_push_i32_temp_331_push40_stencil_2d34_out_feedback_valid_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,181)@1 + 1
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

    // valid_fanout_reg2(REG,182)@1 + 1
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

    // i_llvm_fpga_push_i1_forked7996_push48_stencil_2d9(BLACKBOX,102)@2
    // out out_feedback_out_48@20000000
    // out out_feedback_valid_out_48@20000000
    stencil_2d_i_llvm_fpga_push_i1_forked7996_push48_0 thei_llvm_fpga_push_i1_forked7996_push48_stencil_2d9 (
        .in_data_in(i_llvm_fpga_pop_i1_forked7996_pop48_stencil_2d2_out_data_out),
        .in_feedback_stall_in_48(i_llvm_fpga_pop_i1_forked7996_pop48_stencil_2d2_out_feedback_stall_out_48),
        .in_keep_going(redist30_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_48(i_llvm_fpga_push_i1_forked7996_push48_stencil_2d9_out_feedback_out_48),
        .out_feedback_valid_out_48(i_llvm_fpga_push_i1_forked7996_push48_stencil_2d9_out_feedback_valid_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together141_aunroll_x_in_c0_eni19_1_tpl_1(DELAY,263)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together141_aunroll_x_in_c0_eni19_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together141_aunroll_x_in_c0_eni19_1_tpl_1_q <= $unsigned(in_c0_eni19_1_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_forked7996_pop48_stencil_2d2(BLACKBOX,88)@2
    // out out_feedback_stall_out_48@20000000
    stencil_2d_i_llvm_fpga_pop_i1_forked7996_pop48_0 thei_llvm_fpga_pop_i1_forked7996_pop48_stencil_2d2 (
        .in_data_in(redist0_sync_together141_aunroll_x_in_c0_eni19_1_tpl_1_q),
        .in_dir(redist1_sync_together141_aunroll_x_in_c0_eni19_2_tpl_1_q),
        .in_feedback_in_48(i_llvm_fpga_push_i1_forked7996_push48_stencil_2d9_out_feedback_out_48),
        .in_feedback_valid_in_48(i_llvm_fpga_push_i1_forked7996_push48_stencil_2d9_out_feedback_valid_out_48),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i1_forked7996_pop48_stencil_2d2_out_data_out),
        .out_feedback_stall_out_48(i_llvm_fpga_pop_i1_forked7996_pop48_stencil_2d2_out_feedback_stall_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_forked_and_stencil_2d3(LOGICAL,69)@2 + 1
    assign i_forked_and_stencil_2d3_qi = redist1_sync_together141_aunroll_x_in_c0_eni19_2_tpl_1_q & i_llvm_fpga_pop_i1_forked7996_pop48_stencil_2d2_out_data_out;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_forked_and_stencil_2d3_delay ( .xin(i_forked_and_stencil_2d3_qi), .xout(i_forked_and_stencil_2d3_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist33_i_forked_and_stencil_2d3_q_9(DELAY,296)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist33_i_forked_and_stencil_2d3_q_9 ( .xin(i_forked_and_stencil_2d3_q), .xout(redist33_i_forked_and_stencil_2d3_q_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i32_0100(CONSTANT,46)
    assign c_i32_0100_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_coalesce_i32_temp_331_pop40_stencil_2d32(BLACKBOX,86)@11
    // out out_feedback_stall_out_40@20000000
    stencil_2d_i_llvm_fpga_pop_coalesce_i32_temp_331_pop40_0 thei_llvm_fpga_pop_coalesce_i32_temp_331_pop40_stencil_2d32 (
        .in_data_in(c_i32_0100_q),
        .in_dir(redist33_i_forked_and_stencil_2d3_q_9_q),
        .in_feedback_in_40(i_llvm_fpga_push_i32_temp_331_push40_stencil_2d34_out_feedback_out_40),
        .in_feedback_valid_in_40(i_llvm_fpga_push_i32_temp_331_push40_stencil_2d34_out_feedback_valid_out_40),
        .in_predicate(redist35_i_first_cleanup_xor_stencil_2d6_q_9_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(i_llvm_fpga_pop_coalesce_i32_temp_331_pop40_stencil_2d32_out_data_out),
        .out_feedback_stall_out_40(i_llvm_fpga_pop_coalesce_i32_temp_331_pop40_stencil_2d32_out_feedback_stall_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg11(REG,191)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist19_sync_together141_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist34_i_first_cleanup_xor_stencil_2d6_q_1(DELAY,297)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_first_cleanup_xor_stencil_2d6_q_1_q <= '0;
        end
        else
        begin
            redist34_i_first_cleanup_xor_stencil_2d6_q_1_q <= $unsigned(i_first_cleanup_xor_stencil_2d6_q);
        end
    end

    // c_stencil_2d_filter_pmem(CONSTANT,50)
    assign c_stencil_2d_filter_pmem_q = $unsigned(64'b0100000001000010000000000000000000000000000000000000000000000000);

    // i_arrayidx353_stencil_2d0_upper_bits_x_merged_bit_select(BITSELECT,259)@3
    assign i_arrayidx353_stencil_2d0_upper_bits_x_merged_bit_select_b = c_stencil_2d_filter_pmem_q[63:6];
    assign i_arrayidx353_stencil_2d0_upper_bits_x_merged_bit_select_c = c_stencil_2d_filter_pmem_q[5:0];

    // valid_fanout_reg9(REG,189)@1 + 1
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

    // valid_fanout_reg10(REG,190)@1 + 1
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

    // i_llvm_fpga_push_i32_mul33_add1897_push49_stencil_2d20(BLACKBOX,113)@2
    // out out_feedback_out_49@20000000
    // out out_feedback_valid_out_49@20000000
    stencil_2d_i_llvm_fpga_push_i32_mul33_add1897_push49_0 thei_llvm_fpga_push_i32_mul33_add1897_push49_stencil_2d20 (
        .in_data_in(i_llvm_fpga_pop_i32_mul33_add1897_pop49_stencil_2d19_out_data_out),
        .in_feedback_stall_in_49(i_llvm_fpga_pop_i32_mul33_add1897_pop49_stencil_2d19_out_feedback_stall_out_49),
        .in_keep_going(redist30_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_49(i_llvm_fpga_push_i32_mul33_add1897_push49_stencil_2d20_out_feedback_out_49),
        .out_feedback_valid_out_49(i_llvm_fpga_push_i32_mul33_add1897_push49_stencil_2d20_out_feedback_valid_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together141_aunroll_x_in_c0_eni19_4_tpl_1(DELAY,266)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together141_aunroll_x_in_c0_eni19_4_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together141_aunroll_x_in_c0_eni19_4_tpl_1_q <= $unsigned(in_c0_eni19_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_mul33_add1897_pop49_stencil_2d19(BLACKBOX,97)@2
    // out out_feedback_stall_out_49@20000000
    stencil_2d_i_llvm_fpga_pop_i32_mul33_add1897_pop49_0 thei_llvm_fpga_pop_i32_mul33_add1897_pop49_stencil_2d19 (
        .in_data_in(redist3_sync_together141_aunroll_x_in_c0_eni19_4_tpl_1_q),
        .in_dir(redist1_sync_together141_aunroll_x_in_c0_eni19_2_tpl_1_q),
        .in_feedback_in_49(i_llvm_fpga_push_i32_mul33_add1897_push49_stencil_2d20_out_feedback_out_49),
        .in_feedback_valid_in_49(i_llvm_fpga_push_i32_mul33_add1897_push49_stencil_2d20_out_feedback_valid_out_49),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul33_add1897_pop49_stencil_2d19_out_data_out),
        .out_feedback_stall_out_49(i_llvm_fpga_pop_i32_mul33_add1897_pop49_stencil_2d19_out_feedback_stall_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg8(REG,188)@1 + 1
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

    // valid_fanout_reg17(REG,197)@1 + 1
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

    // c_i32_1101(CONSTANT,47)
    assign c_i32_1101_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc45_stencil_2d35(ADD,79)@2
    assign i_inc45_stencil_2d35_a = {1'b0, i_llvm_fpga_pop_i32_k2_032_pop39_stencil_2d18_out_data_out};
    assign i_inc45_stencil_2d35_b = {1'b0, c_i32_1101_q};
    assign i_inc45_stencil_2d35_o = $unsigned(i_inc45_stencil_2d35_a) + $unsigned(i_inc45_stencil_2d35_b);
    assign i_inc45_stencil_2d35_q = i_inc45_stencil_2d35_o[32:0];

    // bgTrunc_i_inc45_stencil_2d35_sel_x(BITSELECT,136)@2
    assign bgTrunc_i_inc45_stencil_2d35_sel_x_b = i_inc45_stencil_2d35_q[31:0];

    // i_llvm_fpga_push_i32_k2_032_push39_stencil_2d36(BLACKBOX,112)@2
    // out out_feedback_out_39@20000000
    // out out_feedback_valid_out_39@20000000
    stencil_2d_i_llvm_fpga_push_i32_k2_032_push39_0 thei_llvm_fpga_push_i32_k2_032_push39_stencil_2d36 (
        .in_data_in(bgTrunc_i_inc45_stencil_2d35_sel_x_b),
        .in_feedback_stall_in_39(i_llvm_fpga_pop_i32_k2_032_pop39_stencil_2d18_out_feedback_stall_out_39),
        .in_keep_going(redist30_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(),
        .out_feedback_out_39(i_llvm_fpga_push_i32_k2_032_push39_stencil_2d36_out_feedback_out_39),
        .out_feedback_valid_out_39(i_llvm_fpga_push_i32_k2_032_push39_stencil_2d36_out_feedback_valid_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_k2_032_pop39_stencil_2d18(BLACKBOX,96)@2
    // out out_feedback_stall_out_39@20000000
    stencil_2d_i_llvm_fpga_pop_i32_k2_032_pop39_0 thei_llvm_fpga_pop_i32_k2_032_pop39_stencil_2d18 (
        .in_data_in(c_i32_0100_q),
        .in_dir(redist1_sync_together141_aunroll_x_in_c0_eni19_2_tpl_1_q),
        .in_feedback_in_39(i_llvm_fpga_push_i32_k2_032_push39_stencil_2d36_out_feedback_out_39),
        .in_feedback_valid_in_39(i_llvm_fpga_push_i32_k2_032_push39_stencil_2d36_out_feedback_valid_out_39),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_i32_k2_032_pop39_stencil_2d18_out_data_out),
        .out_feedback_stall_out_39(i_llvm_fpga_pop_i32_k2_032_pop39_stencil_2d18_out_feedback_stall_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add_stencil_2d21(ADD,56)@2
    assign i_add_stencil_2d21_a = {1'b0, i_llvm_fpga_pop_i32_k2_032_pop39_stencil_2d18_out_data_out};
    assign i_add_stencil_2d21_b = {1'b0, i_llvm_fpga_pop_i32_mul33_add1897_pop49_stencil_2d19_out_data_out};
    assign i_add_stencil_2d21_o = $unsigned(i_add_stencil_2d21_a) + $unsigned(i_add_stencil_2d21_b);
    assign i_add_stencil_2d21_q = i_add_stencil_2d21_o[32:0];

    // bgTrunc_i_add_stencil_2d21_sel_x(BITSELECT,134)@2
    assign bgTrunc_i_add_stencil_2d21_sel_x_b = i_add_stencil_2d21_q[31:0];

    // i_idxprom34_stencil_2d22_sel_x(BITSELECT,171)@2
    assign i_idxprom34_stencil_2d22_sel_x_b = {32'b00000000000000000000000000000000, bgTrunc_i_add_stencil_2d21_sel_x_b[31:0]};

    // i_idxprom34_stencil_2d22_vt_select_31(BITSELECT,74)@2
    assign i_idxprom34_stencil_2d22_vt_select_31_b = i_idxprom34_stencil_2d22_sel_x_b[31:0];

    // i_idxprom34_stencil_2d22_vt_join(BITJOIN,73)@2
    assign i_idxprom34_stencil_2d22_vt_join_q = {c_i32_0100_q, i_idxprom34_stencil_2d22_vt_select_31_b};

    // i_arrayidx353_stencil_2d0_dupName_0_trunc_sel_x(BITSELECT,152)@2
    assign i_arrayidx353_stencil_2d0_dupName_0_trunc_sel_x_b = i_idxprom34_stencil_2d22_vt_join_q[5:0];

    // i_arrayidx353_stencil_2d0_narrow_x(BITSELECT,145)@2
    assign i_arrayidx353_stencil_2d0_narrow_x_b = i_arrayidx353_stencil_2d0_dupName_0_trunc_sel_x_b[3:0];

    // redist22_i_arrayidx353_stencil_2d0_narrow_x_b_1(DELAY,285)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_arrayidx353_stencil_2d0_narrow_x_b_1_q <= '0;
        end
        else
        begin
            redist22_i_arrayidx353_stencil_2d0_narrow_x_b_1_q <= $unsigned(i_arrayidx353_stencil_2d0_narrow_x_b);
        end
    end

    // i_arrayidx353_stencil_2d0_shift_join_x(BITJOIN,146)@3
    assign i_arrayidx353_stencil_2d0_shift_join_x_q = {redist22_i_arrayidx353_stencil_2d0_narrow_x_b_1_q, i_arrayidx353_stencil_2d23_vt_const_1_q};

    // i_arrayidx353_stencil_2d0_add_x(ADD,142)@3
    assign i_arrayidx353_stencil_2d0_add_x_a = {1'b0, i_arrayidx353_stencil_2d0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx353_stencil_2d0_add_x_b = {1'b0, i_arrayidx353_stencil_2d0_shift_join_x_q};
    assign i_arrayidx353_stencil_2d0_add_x_o = $unsigned(i_arrayidx353_stencil_2d0_add_x_a) + $unsigned(i_arrayidx353_stencil_2d0_add_x_b);
    assign i_arrayidx353_stencil_2d0_add_x_q = i_arrayidx353_stencil_2d0_add_x_o[6:0];

    // i_arrayidx353_stencil_2d0_dupName_2_trunc_sel_x(BITSELECT,153)@3
    assign i_arrayidx353_stencil_2d0_dupName_2_trunc_sel_x_b = i_arrayidx353_stencil_2d0_add_x_q[5:0];

    // i_arrayidx353_stencil_2d0_append_upper_bits_x(BITJOIN,143)@3
    assign i_arrayidx353_stencil_2d0_append_upper_bits_x_q = {i_arrayidx353_stencil_2d0_upper_bits_x_merged_bit_select_b, i_arrayidx353_stencil_2d0_dupName_2_trunc_sel_x_b};

    // i_arrayidx353_stencil_2d23_vt_select_63(BITSELECT,59)@3
    assign i_arrayidx353_stencil_2d23_vt_select_63_b = i_arrayidx353_stencil_2d0_append_upper_bits_x_q[63:2];

    // i_arrayidx353_stencil_2d23_vt_const_1(CONSTANT,57)
    assign i_arrayidx353_stencil_2d23_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx353_stencil_2d23_vt_join(BITJOIN,58)@3
    assign i_arrayidx353_stencil_2d23_vt_join_q = {i_arrayidx353_stencil_2d23_vt_select_63_b, i_arrayidx353_stencil_2d23_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d24(BLACKBOX,83)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_stencil_2d5_stencil_2d_avm_address@20000000
    // out out_unnamed_stencil_2d5_stencil_2d_avm_burstcount@20000000
    // out out_unnamed_stencil_2d5_stencil_2d_avm_byteenable@20000000
    // out out_unnamed_stencil_2d5_stencil_2d_avm_enable@20000000
    // out out_unnamed_stencil_2d5_stencil_2d_avm_read@20000000
    // out out_unnamed_stencil_2d5_stencil_2d_avm_write@20000000
    // out out_unnamed_stencil_2d5_stencil_2d_avm_writedata@20000000
    stencil_2d_i_llvm_fpga_mem_unnamed_5_stencil_2d0 thei_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d24 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx353_stencil_2d23_vt_join_q),
        .in_i_predicate(redist34_i_first_cleanup_xor_stencil_2d6_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg11_q),
        .in_unnamed_stencil_2d5_stencil_2d_avm_readdata(in_unnamed_stencil_2d5_stencil_2d_avm_readdata),
        .in_unnamed_stencil_2d5_stencil_2d_avm_readdatavalid(in_unnamed_stencil_2d5_stencil_2d_avm_readdatavalid),
        .in_unnamed_stencil_2d5_stencil_2d_avm_waitrequest(in_unnamed_stencil_2d5_stencil_2d_avm_waitrequest),
        .in_unnamed_stencil_2d5_stencil_2d_avm_writeack(in_unnamed_stencil_2d5_stencil_2d_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d24_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_stencil_2d5_stencil_2d_avm_address(i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d24_out_unnamed_stencil_2d5_stencil_2d_avm_address),
        .out_unnamed_stencil_2d5_stencil_2d_avm_burstcount(i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d24_out_unnamed_stencil_2d5_stencil_2d_avm_burstcount),
        .out_unnamed_stencil_2d5_stencil_2d_avm_byteenable(i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d24_out_unnamed_stencil_2d5_stencil_2d_avm_byteenable),
        .out_unnamed_stencil_2d5_stencil_2d_avm_enable(i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d24_out_unnamed_stencil_2d5_stencil_2d_avm_enable),
        .out_unnamed_stencil_2d5_stencil_2d_avm_read(i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d24_out_unnamed_stencil_2d5_stencil_2d_avm_read),
        .out_unnamed_stencil_2d5_stencil_2d_avm_write(i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d24_out_unnamed_stencil_2d5_stencil_2d_avm_write),
        .out_unnamed_stencil_2d5_stencil_2d_avm_writedata(i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d24_out_unnamed_stencil_2d5_stencil_2d_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul42_stencil_2d31_bs2_merged_bit_select(BITSELECT,261)@7
    assign i_mul42_stencil_2d31_bs2_merged_bit_select_b = i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d24_out_o_readdata[31:18];
    assign i_mul42_stencil_2d31_bs2_merged_bit_select_c = i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d24_out_o_readdata[17:0];

    // valid_fanout_reg14(REG,194)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist19_sync_together141_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_stencil_2d_orig_pmem(CONSTANT,51)
    assign c_stencil_2d_orig_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx414_stencil_2d0_upper_bits_x_merged_bit_select(BITSELECT,260)@3
    assign i_arrayidx414_stencil_2d0_upper_bits_x_merged_bit_select_b = c_stencil_2d_orig_pmem_q[63:12];
    assign i_arrayidx414_stencil_2d0_upper_bits_x_merged_bit_select_c = c_stencil_2d_orig_pmem_q[11:0];

    // valid_fanout_reg12(REG,192)@1 + 1
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

    // valid_fanout_reg13(REG,193)@1 + 1
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

    // i_llvm_fpga_push_i32_add3898_push50_stencil_2d26(BLACKBOX,110)@2
    // out out_feedback_out_50@20000000
    // out out_feedback_valid_out_50@20000000
    stencil_2d_i_llvm_fpga_push_i32_add3898_push50_0 thei_llvm_fpga_push_i32_add3898_push50_stencil_2d26 (
        .in_data_in(i_llvm_fpga_pop_i32_add3898_pop50_stencil_2d25_out_data_out),
        .in_feedback_stall_in_50(i_llvm_fpga_pop_i32_add3898_pop50_stencil_2d25_out_feedback_stall_out_50),
        .in_keep_going(redist30_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_50(i_llvm_fpga_push_i32_add3898_push50_stencil_2d26_out_feedback_out_50),
        .out_feedback_valid_out_50(i_llvm_fpga_push_i32_add3898_push50_stencil_2d26_out_feedback_valid_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together141_aunroll_x_in_c0_eni19_5_tpl_1(DELAY,267)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together141_aunroll_x_in_c0_eni19_5_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together141_aunroll_x_in_c0_eni19_5_tpl_1_q <= $unsigned(in_c0_eni19_5_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_add3898_pop50_stencil_2d25(BLACKBOX,94)@2
    // out out_feedback_stall_out_50@20000000
    stencil_2d_i_llvm_fpga_pop_i32_add3898_pop50_0 thei_llvm_fpga_pop_i32_add3898_pop50_stencil_2d25 (
        .in_data_in(redist4_sync_together141_aunroll_x_in_c0_eni19_5_tpl_1_q),
        .in_dir(redist1_sync_together141_aunroll_x_in_c0_eni19_2_tpl_1_q),
        .in_feedback_in_50(i_llvm_fpga_push_i32_add3898_push50_stencil_2d26_out_feedback_out_50),
        .in_feedback_valid_in_50(i_llvm_fpga_push_i32_add3898_push50_stencil_2d26_out_feedback_valid_out_50),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(i_llvm_fpga_pop_i32_add3898_pop50_stencil_2d25_out_data_out),
        .out_feedback_stall_out_50(i_llvm_fpga_pop_i32_add3898_pop50_stencil_2d25_out_feedback_stall_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add39_stencil_2d27(ADD,54)@2
    assign i_add39_stencil_2d27_a = {1'b0, i_llvm_fpga_pop_i32_add3898_pop50_stencil_2d25_out_data_out};
    assign i_add39_stencil_2d27_b = {1'b0, i_llvm_fpga_pop_i32_k2_032_pop39_stencil_2d18_out_data_out};
    assign i_add39_stencil_2d27_o = $unsigned(i_add39_stencil_2d27_a) + $unsigned(i_add39_stencil_2d27_b);
    assign i_add39_stencil_2d27_q = i_add39_stencil_2d27_o[32:0];

    // bgTrunc_i_add39_stencil_2d27_sel_x(BITSELECT,132)@2
    assign bgTrunc_i_add39_stencil_2d27_sel_x_b = i_add39_stencil_2d27_q[31:0];

    // i_idxprom40_stencil_2d28_sel_x(BITSELECT,172)@2
    assign i_idxprom40_stencil_2d28_sel_x_b = {32'b00000000000000000000000000000000, bgTrunc_i_add39_stencil_2d27_sel_x_b[31:0]};

    // i_idxprom40_stencil_2d28_vt_select_31(BITSELECT,78)@2
    assign i_idxprom40_stencil_2d28_vt_select_31_b = i_idxprom40_stencil_2d28_sel_x_b[31:0];

    // i_idxprom40_stencil_2d28_vt_join(BITJOIN,77)@2
    assign i_idxprom40_stencil_2d28_vt_join_q = {c_i32_0100_q, i_idxprom40_stencil_2d28_vt_select_31_b};

    // i_arrayidx414_stencil_2d0_dupName_0_trunc_sel_x(BITSELECT,164)@2
    assign i_arrayidx414_stencil_2d0_dupName_0_trunc_sel_x_b = i_idxprom40_stencil_2d28_vt_join_q[11:0];

    // i_arrayidx414_stencil_2d0_narrow_x(BITSELECT,157)@2
    assign i_arrayidx414_stencil_2d0_narrow_x_b = i_arrayidx414_stencil_2d0_dupName_0_trunc_sel_x_b[9:0];

    // redist21_i_arrayidx414_stencil_2d0_narrow_x_b_1(DELAY,284)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_arrayidx414_stencil_2d0_narrow_x_b_1_q <= '0;
        end
        else
        begin
            redist21_i_arrayidx414_stencil_2d0_narrow_x_b_1_q <= $unsigned(i_arrayidx414_stencil_2d0_narrow_x_b);
        end
    end

    // i_arrayidx414_stencil_2d0_shift_join_x(BITJOIN,158)@3
    assign i_arrayidx414_stencil_2d0_shift_join_x_q = {redist21_i_arrayidx414_stencil_2d0_narrow_x_b_1_q, i_arrayidx353_stencil_2d23_vt_const_1_q};

    // i_arrayidx414_stencil_2d0_add_x(ADD,154)@3
    assign i_arrayidx414_stencil_2d0_add_x_a = {1'b0, i_arrayidx414_stencil_2d0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx414_stencil_2d0_add_x_b = {1'b0, i_arrayidx414_stencil_2d0_shift_join_x_q};
    assign i_arrayidx414_stencil_2d0_add_x_o = $unsigned(i_arrayidx414_stencil_2d0_add_x_a) + $unsigned(i_arrayidx414_stencil_2d0_add_x_b);
    assign i_arrayidx414_stencil_2d0_add_x_q = i_arrayidx414_stencil_2d0_add_x_o[12:0];

    // i_arrayidx414_stencil_2d0_dupName_2_trunc_sel_x(BITSELECT,165)@3
    assign i_arrayidx414_stencil_2d0_dupName_2_trunc_sel_x_b = i_arrayidx414_stencil_2d0_add_x_q[11:0];

    // i_arrayidx414_stencil_2d0_append_upper_bits_x(BITJOIN,155)@3
    assign i_arrayidx414_stencil_2d0_append_upper_bits_x_q = {i_arrayidx414_stencil_2d0_upper_bits_x_merged_bit_select_b, i_arrayidx414_stencil_2d0_dupName_2_trunc_sel_x_b};

    // i_arrayidx414_stencil_2d29_vt_select_63(BITSELECT,62)@3
    assign i_arrayidx414_stencil_2d29_vt_select_63_b = i_arrayidx414_stencil_2d0_append_upper_bits_x_q[63:2];

    // i_arrayidx414_stencil_2d29_vt_join(BITJOIN,61)@3
    assign i_arrayidx414_stencil_2d29_vt_join_q = {i_arrayidx414_stencil_2d29_vt_select_63_b, i_arrayidx353_stencil_2d23_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_stencil_2d6_stencil_2d30(BLACKBOX,84)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_stencil_2d6_stencil_2d_avm_address@20000000
    // out out_unnamed_stencil_2d6_stencil_2d_avm_burstcount@20000000
    // out out_unnamed_stencil_2d6_stencil_2d_avm_byteenable@20000000
    // out out_unnamed_stencil_2d6_stencil_2d_avm_enable@20000000
    // out out_unnamed_stencil_2d6_stencil_2d_avm_read@20000000
    // out out_unnamed_stencil_2d6_stencil_2d_avm_write@20000000
    // out out_unnamed_stencil_2d6_stencil_2d_avm_writedata@20000000
    stencil_2d_i_llvm_fpga_mem_unnamed_6_stencil_2d0 thei_llvm_fpga_mem_unnamed_stencil_2d6_stencil_2d30 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx414_stencil_2d29_vt_join_q),
        .in_i_predicate(redist34_i_first_cleanup_xor_stencil_2d6_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg14_q),
        .in_unnamed_stencil_2d6_stencil_2d_avm_readdata(in_unnamed_stencil_2d6_stencil_2d_avm_readdata),
        .in_unnamed_stencil_2d6_stencil_2d_avm_readdatavalid(in_unnamed_stencil_2d6_stencil_2d_avm_readdatavalid),
        .in_unnamed_stencil_2d6_stencil_2d_avm_waitrequest(in_unnamed_stencil_2d6_stencil_2d_avm_waitrequest),
        .in_unnamed_stencil_2d6_stencil_2d_avm_writeack(in_unnamed_stencil_2d6_stencil_2d_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_stencil_2d6_stencil_2d30_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_stencil_2d6_stencil_2d_avm_address(i_llvm_fpga_mem_unnamed_stencil_2d6_stencil_2d30_out_unnamed_stencil_2d6_stencil_2d_avm_address),
        .out_unnamed_stencil_2d6_stencil_2d_avm_burstcount(i_llvm_fpga_mem_unnamed_stencil_2d6_stencil_2d30_out_unnamed_stencil_2d6_stencil_2d_avm_burstcount),
        .out_unnamed_stencil_2d6_stencil_2d_avm_byteenable(i_llvm_fpga_mem_unnamed_stencil_2d6_stencil_2d30_out_unnamed_stencil_2d6_stencil_2d_avm_byteenable),
        .out_unnamed_stencil_2d6_stencil_2d_avm_enable(i_llvm_fpga_mem_unnamed_stencil_2d6_stencil_2d30_out_unnamed_stencil_2d6_stencil_2d_avm_enable),
        .out_unnamed_stencil_2d6_stencil_2d_avm_read(i_llvm_fpga_mem_unnamed_stencil_2d6_stencil_2d30_out_unnamed_stencil_2d6_stencil_2d_avm_read),
        .out_unnamed_stencil_2d6_stencil_2d_avm_write(i_llvm_fpga_mem_unnamed_stencil_2d6_stencil_2d30_out_unnamed_stencil_2d6_stencil_2d_avm_write),
        .out_unnamed_stencil_2d6_stencil_2d_avm_writedata(i_llvm_fpga_mem_unnamed_stencil_2d6_stencil_2d30_out_unnamed_stencil_2d6_stencil_2d_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul42_stencil_2d31_bs1_merged_bit_select(BITSELECT,262)@7
    assign i_mul42_stencil_2d31_bs1_merged_bit_select_b = i_llvm_fpga_mem_unnamed_stencil_2d6_stencil_2d30_out_o_readdata[31:18];
    assign i_mul42_stencil_2d31_bs1_merged_bit_select_c = i_llvm_fpga_mem_unnamed_stencil_2d6_stencil_2d30_out_o_readdata[17:0];

    // i_mul42_stencil_2d31_ma3_cma(CHAINMULTADD,258)@7 + 3
    assign i_mul42_stencil_2d31_ma3_cma_reset = ~ (resetn);
    assign i_mul42_stencil_2d31_ma3_cma_ena0 = 1'b1;
    assign i_mul42_stencil_2d31_ma3_cma_ena1 = i_mul42_stencil_2d31_ma3_cma_ena0;
    assign i_mul42_stencil_2d31_ma3_cma_ena2 = i_mul42_stencil_2d31_ma3_cma_ena0;

    assign i_mul42_stencil_2d31_ma3_cma_a0 = i_mul42_stencil_2d31_bs1_merged_bit_select_b;
    assign i_mul42_stencil_2d31_ma3_cma_c0 = i_mul42_stencil_2d31_bs2_merged_bit_select_c;
    assign i_mul42_stencil_2d31_ma3_cma_a1 = i_mul42_stencil_2d31_bs2_merged_bit_select_b;
    assign i_mul42_stencil_2d31_ma3_cma_c1 = i_mul42_stencil_2d31_bs1_merged_bit_select_c;
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
    ) i_mul42_stencil_2d31_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul42_stencil_2d31_ma3_cma_ena2, i_mul42_stencil_2d31_ma3_cma_ena1, i_mul42_stencil_2d31_ma3_cma_ena0 }),
        .aclr({ i_mul42_stencil_2d31_ma3_cma_reset, i_mul42_stencil_2d31_ma3_cma_reset }),
        .ay(i_mul42_stencil_2d31_ma3_cma_a1),
        .by(i_mul42_stencil_2d31_ma3_cma_a0),
        .ax(i_mul42_stencil_2d31_ma3_cma_c1),
        .bx(i_mul42_stencil_2d31_ma3_cma_c0),
        .resulta(i_mul42_stencil_2d31_ma3_cma_s0),
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
    i_mul42_stencil_2d31_ma3_cma_delay ( .xin(i_mul42_stencil_2d31_ma3_cma_s0), .xout(i_mul42_stencil_2d31_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul42_stencil_2d31_ma3_cma_q = $unsigned(i_mul42_stencil_2d31_ma3_cma_qq[32:0]);

    // i_mul42_stencil_2d31_sums_align_1(BITSHIFT,237)@10
    assign i_mul42_stencil_2d31_sums_align_1_qint = { i_mul42_stencil_2d31_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul42_stencil_2d31_sums_align_1_q = i_mul42_stencil_2d31_sums_align_1_qint[50:0];

    // i_mul42_stencil_2d31_im0_cma(CHAINMULTADD,256)@7 + 3
    assign i_mul42_stencil_2d31_im0_cma_reset = ~ (resetn);
    assign i_mul42_stencil_2d31_im0_cma_ena0 = 1'b1;
    assign i_mul42_stencil_2d31_im0_cma_ena1 = i_mul42_stencil_2d31_im0_cma_ena0;
    assign i_mul42_stencil_2d31_im0_cma_ena2 = i_mul42_stencil_2d31_im0_cma_ena0;

    assign i_mul42_stencil_2d31_im0_cma_a0 = i_mul42_stencil_2d31_bs1_merged_bit_select_b;
    assign i_mul42_stencil_2d31_im0_cma_c0 = i_mul42_stencil_2d31_bs2_merged_bit_select_b;
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
    ) i_mul42_stencil_2d31_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul42_stencil_2d31_im0_cma_ena2, i_mul42_stencil_2d31_im0_cma_ena1, i_mul42_stencil_2d31_im0_cma_ena0 }),
        .aclr({ i_mul42_stencil_2d31_im0_cma_reset, i_mul42_stencil_2d31_im0_cma_reset }),
        .ay(i_mul42_stencil_2d31_im0_cma_a0),
        .ax(i_mul42_stencil_2d31_im0_cma_c0),
        .resulta(i_mul42_stencil_2d31_im0_cma_s0),
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
    i_mul42_stencil_2d31_im0_cma_delay ( .xin(i_mul42_stencil_2d31_im0_cma_s0), .xout(i_mul42_stencil_2d31_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul42_stencil_2d31_im0_cma_q = $unsigned(i_mul42_stencil_2d31_im0_cma_qq[27:0]);

    // i_mul42_stencil_2d31_im8_cma(CHAINMULTADD,257)@7 + 3
    assign i_mul42_stencil_2d31_im8_cma_reset = ~ (resetn);
    assign i_mul42_stencil_2d31_im8_cma_ena0 = 1'b1;
    assign i_mul42_stencil_2d31_im8_cma_ena1 = i_mul42_stencil_2d31_im8_cma_ena0;
    assign i_mul42_stencil_2d31_im8_cma_ena2 = i_mul42_stencil_2d31_im8_cma_ena0;

    assign i_mul42_stencil_2d31_im8_cma_a0 = i_mul42_stencil_2d31_bs1_merged_bit_select_c;
    assign i_mul42_stencil_2d31_im8_cma_c0 = i_mul42_stencil_2d31_bs2_merged_bit_select_c;
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
    ) i_mul42_stencil_2d31_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul42_stencil_2d31_im8_cma_ena2, i_mul42_stencil_2d31_im8_cma_ena1, i_mul42_stencil_2d31_im8_cma_ena0 }),
        .aclr({ i_mul42_stencil_2d31_im8_cma_reset, i_mul42_stencil_2d31_im8_cma_reset }),
        .ay(i_mul42_stencil_2d31_im8_cma_a0),
        .ax(i_mul42_stencil_2d31_im8_cma_c0),
        .resulta(i_mul42_stencil_2d31_im8_cma_s0),
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
    i_mul42_stencil_2d31_im8_cma_delay ( .xin(i_mul42_stencil_2d31_im8_cma_s0), .xout(i_mul42_stencil_2d31_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul42_stencil_2d31_im8_cma_q = $unsigned(i_mul42_stencil_2d31_im8_cma_qq[35:0]);

    // i_mul42_stencil_2d31_sums_join_0(BITJOIN,236)@10
    assign i_mul42_stencil_2d31_sums_join_0_q = {i_mul42_stencil_2d31_im0_cma_q, i_mul42_stencil_2d31_im8_cma_q};

    // i_mul42_stencil_2d31_sums_result_add_0_0(ADD,239)@10
    assign i_mul42_stencil_2d31_sums_result_add_0_0_a = {1'b0, i_mul42_stencil_2d31_sums_join_0_q};
    assign i_mul42_stencil_2d31_sums_result_add_0_0_b = {14'b00000000000000, i_mul42_stencil_2d31_sums_align_1_q};
    assign i_mul42_stencil_2d31_sums_result_add_0_0_o = $unsigned(i_mul42_stencil_2d31_sums_result_add_0_0_a) + $unsigned(i_mul42_stencil_2d31_sums_result_add_0_0_b);
    assign i_mul42_stencil_2d31_sums_result_add_0_0_q = i_mul42_stencil_2d31_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul42_stencil_2d31_sel_x(BITSELECT,137)@10
    assign bgTrunc_i_mul42_stencil_2d31_sel_x_in = i_mul42_stencil_2d31_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul42_stencil_2d31_sel_x_b = bgTrunc_i_mul42_stencil_2d31_sel_x_in[31:0];

    // redist23_bgTrunc_i_mul42_stencil_2d31_sel_x_b_1(DELAY,286)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_bgTrunc_i_mul42_stencil_2d31_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist23_bgTrunc_i_mul42_stencil_2d31_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul42_stencil_2d31_sel_x_b);
        end
    end

    // i_add43_stencil_2d33(ADD,55)@11
    assign i_add43_stencil_2d33_a = {1'b0, redist23_bgTrunc_i_mul42_stencil_2d31_sel_x_b_1_q};
    assign i_add43_stencil_2d33_b = {1'b0, i_llvm_fpga_pop_coalesce_i32_temp_331_pop40_stencil_2d32_out_data_out};
    assign i_add43_stencil_2d33_o = $unsigned(i_add43_stencil_2d33_a) + $unsigned(i_add43_stencil_2d33_b);
    assign i_add43_stencil_2d33_q = i_add43_stencil_2d33_o[32:0];

    // bgTrunc_i_add43_stencil_2d33_sel_x(BITSELECT,133)@11
    assign bgTrunc_i_add43_stencil_2d33_sel_x_b = i_add43_stencil_2d33_q[31:0];

    // redist35_i_first_cleanup_xor_stencil_2d6_q_9(DELAY,298)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist35_i_first_cleanup_xor_stencil_2d6_q_9 ( .xin(redist34_i_first_cleanup_xor_stencil_2d6_q_1_q), .xout(redist35_i_first_cleanup_xor_stencil_2d6_q_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_ffwd_source_i32_unnamed_stencil_2d7_stencil_2d47(BLACKBOX,82)@11
    // out out_intel_reserved_ffwd_0_0@20000000
    stencil_2d_i_llvm_fpga_ffwd_source_i32_unnamed_7_stencil_2d0 thei_llvm_fpga_ffwd_source_i32_unnamed_stencil_2d7_stencil_2d47 (
        .in_predicate_in(redist35_i_first_cleanup_xor_stencil_2d6_q_9_q),
        .in_src_data_in_0_0(bgTrunc_i_add43_stencil_2d33_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_i32_unnamed_stencil_2d7_stencil_2d47_out_intel_reserved_ffwd_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,130)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_i32_unnamed_stencil_2d7_stencil_2d47_out_intel_reserved_ffwd_0_0;

    // dupName_0_ext_sig_sync_out_x(GPOUT,140)
    assign out_unnamed_stencil_2d5_stencil_2d_avm_address = i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d24_out_unnamed_stencil_2d5_stencil_2d_avm_address;
    assign out_unnamed_stencil_2d5_stencil_2d_avm_enable = i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d24_out_unnamed_stencil_2d5_stencil_2d_avm_enable;
    assign out_unnamed_stencil_2d5_stencil_2d_avm_read = i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d24_out_unnamed_stencil_2d5_stencil_2d_avm_read;
    assign out_unnamed_stencil_2d5_stencil_2d_avm_write = i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d24_out_unnamed_stencil_2d5_stencil_2d_avm_write;
    assign out_unnamed_stencil_2d5_stencil_2d_avm_writedata = i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d24_out_unnamed_stencil_2d5_stencil_2d_avm_writedata;
    assign out_unnamed_stencil_2d5_stencil_2d_avm_byteenable = i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d24_out_unnamed_stencil_2d5_stencil_2d_avm_byteenable;
    assign out_unnamed_stencil_2d5_stencil_2d_avm_burstcount = i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d24_out_unnamed_stencil_2d5_stencil_2d_avm_burstcount;

    // dupName_1_ext_sig_sync_out_x(GPOUT,141)
    assign out_unnamed_stencil_2d6_stencil_2d_avm_address = i_llvm_fpga_mem_unnamed_stencil_2d6_stencil_2d30_out_unnamed_stencil_2d6_stencil_2d_avm_address;
    assign out_unnamed_stencil_2d6_stencil_2d_avm_enable = i_llvm_fpga_mem_unnamed_stencil_2d6_stencil_2d30_out_unnamed_stencil_2d6_stencil_2d_avm_enable;
    assign out_unnamed_stencil_2d6_stencil_2d_avm_read = i_llvm_fpga_mem_unnamed_stencil_2d6_stencil_2d30_out_unnamed_stencil_2d6_stencil_2d_avm_read;
    assign out_unnamed_stencil_2d6_stencil_2d_avm_write = i_llvm_fpga_mem_unnamed_stencil_2d6_stencil_2d30_out_unnamed_stencil_2d6_stencil_2d_avm_write;
    assign out_unnamed_stencil_2d6_stencil_2d_avm_writedata = i_llvm_fpga_mem_unnamed_stencil_2d6_stencil_2d30_out_unnamed_stencil_2d6_stencil_2d_avm_writedata;
    assign out_unnamed_stencil_2d6_stencil_2d_avm_byteenable = i_llvm_fpga_mem_unnamed_stencil_2d6_stencil_2d30_out_unnamed_stencil_2d6_stencil_2d_avm_byteenable;
    assign out_unnamed_stencil_2d6_stencil_2d_avm_burstcount = i_llvm_fpga_mem_unnamed_stencil_2d6_stencil_2d30_out_unnamed_stencil_2d6_stencil_2d_avm_burstcount;

    // valid_fanout_reg0(REG,180)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist20_sync_together141_aunroll_x_in_i_valid_9_q);
        end
    end

    // redist18_sync_together141_aunroll_x_in_c0_eni19_19_tpl_10(DELAY,281)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist18_sync_together141_aunroll_x_in_c0_eni19_19_tpl_10 ( .xin(in_c0_eni19_19_tpl), .xout(redist18_sync_together141_aunroll_x_in_c0_eni19_19_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_notEnable(LOGICAL,345)
    assign redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_notEnable_q = $unsigned(~ (VCC_q));

    // redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_nor(LOGICAL,346)
    assign redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_nor_q = ~ (redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_notEnable_q | redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_sticky_ena_q);

    // redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_mem_last(CONSTANT,342)
    assign redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_mem_last_q = $unsigned(4'b0111);

    // redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_cmp(LOGICAL,343)
    assign redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_cmp_q = $unsigned(redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_mem_last_q == redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_rdcnt_q ? 1'b1 : 1'b0);

    // redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_cmpReg(REG,344)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_cmpReg_q <= $unsigned(redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_cmp_q);
        end
    end

    // redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_sticky_ena(REG,347)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_nor_q == 1'b1)
        begin
            redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_sticky_ena_q <= $unsigned(redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_cmpReg_q);
        end
    end

    // redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_enaAnd(LOGICAL,348)
    assign redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_enaAnd_q = redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_sticky_ena_q & VCC_q;

    // redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_rdcnt(COUNTER,340)
    // low=0, high=8, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_rdcnt_i <= 4'd0;
            redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_rdcnt_i == 4'd7)
            begin
                redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_rdcnt_eq <= 1'b0;
            end
            if (redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_rdcnt_eq == 1'b1)
            begin
                redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_rdcnt_i <= $unsigned(redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_rdcnt_i) + $unsigned(4'd8);
            end
            else
            begin
                redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_rdcnt_i <= $unsigned(redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_rdcnt_q = redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_rdcnt_i[3:0];

    // redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_wraddr(REG,341)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_wraddr_q <= $unsigned(4'b1000);
        end
        else
        begin
            redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_wraddr_q <= $unsigned(redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_rdcnt_q);
        end
    end

    // redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_mem(DUALMEM,339)
    assign redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_mem_ia = $unsigned(in_c0_eni19_18_tpl);
    assign redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_mem_aa = redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_wraddr_q;
    assign redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_mem_ab = redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_rdcnt_q;
    assign redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_mem_reset0 = ~ (resetn);
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
    ) redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_mem_dmem (
        .clocken1(redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_mem_reset0),
        .clock1(clock),
        .address_a(redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_mem_aa),
        .data_a(redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_mem_ab),
        .q_b(redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_mem_iq),
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
    assign redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_mem_q = redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_mem_iq[31:0];

    // redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_notEnable(LOGICAL,335)
    assign redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_notEnable_q = $unsigned(~ (VCC_q));

    // redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_nor(LOGICAL,336)
    assign redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_nor_q = ~ (redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_notEnable_q | redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_sticky_ena_q);

    // redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_mem_last(CONSTANT,332)
    assign redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_mem_last_q = $unsigned(4'b0111);

    // redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_cmp(LOGICAL,333)
    assign redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_cmp_q = $unsigned(redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_mem_last_q == redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_rdcnt_q ? 1'b1 : 1'b0);

    // redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_cmpReg(REG,334)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_cmpReg_q <= $unsigned(redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_cmp_q);
        end
    end

    // redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_sticky_ena(REG,337)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_nor_q == 1'b1)
        begin
            redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_sticky_ena_q <= $unsigned(redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_cmpReg_q);
        end
    end

    // redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_enaAnd(LOGICAL,338)
    assign redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_enaAnd_q = redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_sticky_ena_q & VCC_q;

    // redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_rdcnt(COUNTER,330)
    // low=0, high=8, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_rdcnt_i <= 4'd0;
            redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_rdcnt_i == 4'd7)
            begin
                redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_rdcnt_eq <= 1'b0;
            end
            if (redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_rdcnt_eq == 1'b1)
            begin
                redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_rdcnt_i <= $unsigned(redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_rdcnt_i) + $unsigned(4'd8);
            end
            else
            begin
                redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_rdcnt_i <= $unsigned(redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_rdcnt_q = redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_rdcnt_i[3:0];

    // redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_wraddr(REG,331)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_wraddr_q <= $unsigned(4'b1000);
        end
        else
        begin
            redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_wraddr_q <= $unsigned(redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_rdcnt_q);
        end
    end

    // redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_mem(DUALMEM,329)
    assign redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_mem_ia = $unsigned(in_c0_eni19_17_tpl);
    assign redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_mem_aa = redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_wraddr_q;
    assign redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_mem_ab = redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_rdcnt_q;
    assign redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_mem_reset0 = ~ (resetn);
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
    ) redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_mem_dmem (
        .clocken1(redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_mem_reset0),
        .clock1(clock),
        .address_a(redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_mem_aa),
        .data_a(redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_mem_ab),
        .q_b(redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_mem_iq),
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
    assign redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_mem_q = redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_mem_iq[31:0];

    // redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_notEnable(LOGICAL,325)
    assign redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_notEnable_q = $unsigned(~ (VCC_q));

    // redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_nor(LOGICAL,326)
    assign redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_nor_q = ~ (redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_notEnable_q | redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_sticky_ena_q);

    // redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_mem_last(CONSTANT,322)
    assign redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_mem_last_q = $unsigned(4'b0111);

    // redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_cmp(LOGICAL,323)
    assign redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_cmp_q = $unsigned(redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_mem_last_q == redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_rdcnt_q ? 1'b1 : 1'b0);

    // redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_cmpReg(REG,324)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_cmpReg_q <= $unsigned(redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_cmp_q);
        end
    end

    // redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_sticky_ena(REG,327)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_nor_q == 1'b1)
        begin
            redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_sticky_ena_q <= $unsigned(redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_cmpReg_q);
        end
    end

    // redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_enaAnd(LOGICAL,328)
    assign redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_enaAnd_q = redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_sticky_ena_q & VCC_q;

    // redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_rdcnt(COUNTER,320)
    // low=0, high=8, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_rdcnt_i <= 4'd0;
            redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_rdcnt_i == 4'd7)
            begin
                redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_rdcnt_eq <= 1'b0;
            end
            if (redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_rdcnt_eq == 1'b1)
            begin
                redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_rdcnt_i <= $unsigned(redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_rdcnt_i) + $unsigned(4'd8);
            end
            else
            begin
                redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_rdcnt_i <= $unsigned(redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_rdcnt_q = redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_rdcnt_i[3:0];

    // redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_wraddr(REG,321)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_wraddr_q <= $unsigned(4'b1000);
        end
        else
        begin
            redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_wraddr_q <= $unsigned(redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_rdcnt_q);
        end
    end

    // redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_mem(DUALMEM,319)
    assign redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_mem_ia = $unsigned(in_c0_eni19_16_tpl);
    assign redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_mem_aa = redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_wraddr_q;
    assign redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_mem_ab = redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_rdcnt_q;
    assign redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_mem_reset0 = ~ (resetn);
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
    ) redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_mem_dmem (
        .clocken1(redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_mem_reset0),
        .clock1(clock),
        .address_a(redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_mem_aa),
        .data_a(redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_mem_ab),
        .q_b(redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_mem_iq),
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
    assign redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_mem_q = redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_mem_iq[31:0];

    // redist14_sync_together141_aunroll_x_in_c0_eni19_15_tpl_10(DELAY,277)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist14_sync_together141_aunroll_x_in_c0_eni19_15_tpl_10 ( .xin(in_c0_eni19_15_tpl), .xout(redist14_sync_together141_aunroll_x_in_c0_eni19_15_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist13_sync_together141_aunroll_x_in_c0_eni19_14_tpl_10(DELAY,276)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist13_sync_together141_aunroll_x_in_c0_eni19_14_tpl_10 ( .xin(in_c0_eni19_14_tpl), .xout(redist13_sync_together141_aunroll_x_in_c0_eni19_14_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_notEnable(LOGICAL,315)
    assign redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_notEnable_q = $unsigned(~ (VCC_q));

    // redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_nor(LOGICAL,316)
    assign redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_nor_q = ~ (redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_notEnable_q | redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_sticky_ena_q);

    // redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_mem_last(CONSTANT,312)
    assign redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_mem_last_q = $unsigned(4'b0111);

    // redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_cmp(LOGICAL,313)
    assign redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_cmp_q = $unsigned(redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_mem_last_q == redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_rdcnt_q ? 1'b1 : 1'b0);

    // redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_cmpReg(REG,314)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_cmpReg_q <= $unsigned(redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_cmp_q);
        end
    end

    // redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_sticky_ena(REG,317)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_nor_q == 1'b1)
        begin
            redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_sticky_ena_q <= $unsigned(redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_cmpReg_q);
        end
    end

    // redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_enaAnd(LOGICAL,318)
    assign redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_enaAnd_q = redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_sticky_ena_q & VCC_q;

    // redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_rdcnt(COUNTER,310)
    // low=0, high=8, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_rdcnt_i <= 4'd0;
            redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_rdcnt_i == 4'd7)
            begin
                redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_rdcnt_eq <= 1'b0;
            end
            if (redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_rdcnt_eq == 1'b1)
            begin
                redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_rdcnt_i <= $unsigned(redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_rdcnt_i) + $unsigned(4'd8);
            end
            else
            begin
                redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_rdcnt_i <= $unsigned(redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_rdcnt_q = redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_rdcnt_i[3:0];

    // redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_wraddr(REG,311)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_wraddr_q <= $unsigned(4'b1000);
        end
        else
        begin
            redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_wraddr_q <= $unsigned(redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_rdcnt_q);
        end
    end

    // redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_mem(DUALMEM,309)
    assign redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_mem_ia = $unsigned(in_c0_eni19_13_tpl);
    assign redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_mem_aa = redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_wraddr_q;
    assign redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_mem_ab = redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_rdcnt_q;
    assign redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_mem_reset0 = ~ (resetn);
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
    ) redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_mem_dmem (
        .clocken1(redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_mem_reset0),
        .clock1(clock),
        .address_a(redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_mem_aa),
        .data_a(redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_mem_ab),
        .q_b(redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_mem_iq),
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
    assign redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_mem_q = redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_mem_iq[31:0];

    // redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_notEnable(LOGICAL,305)
    assign redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_notEnable_q = $unsigned(~ (VCC_q));

    // redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_nor(LOGICAL,306)
    assign redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_nor_q = ~ (redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_notEnable_q | redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_sticky_ena_q);

    // redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_mem_last(CONSTANT,302)
    assign redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_mem_last_q = $unsigned(4'b0111);

    // redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_cmp(LOGICAL,303)
    assign redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_cmp_q = $unsigned(redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_mem_last_q == redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_rdcnt_q ? 1'b1 : 1'b0);

    // redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_cmpReg(REG,304)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_cmpReg_q <= $unsigned(redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_cmp_q);
        end
    end

    // redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_sticky_ena(REG,307)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_nor_q == 1'b1)
        begin
            redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_sticky_ena_q <= $unsigned(redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_cmpReg_q);
        end
    end

    // redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_enaAnd(LOGICAL,308)
    assign redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_enaAnd_q = redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_sticky_ena_q & VCC_q;

    // redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_rdcnt(COUNTER,300)
    // low=0, high=8, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_rdcnt_i <= 4'd0;
            redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_rdcnt_i == 4'd7)
            begin
                redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_rdcnt_eq <= 1'b0;
            end
            if (redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_rdcnt_eq == 1'b1)
            begin
                redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_rdcnt_i <= $unsigned(redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_rdcnt_i) + $unsigned(4'd8);
            end
            else
            begin
                redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_rdcnt_i <= $unsigned(redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_rdcnt_q = redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_rdcnt_i[3:0];

    // redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_wraddr(REG,301)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_wraddr_q <= $unsigned(4'b1000);
        end
        else
        begin
            redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_wraddr_q <= $unsigned(redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_rdcnt_q);
        end
    end

    // redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_mem(DUALMEM,299)
    assign redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_mem_ia = $unsigned(in_c0_eni19_12_tpl);
    assign redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_mem_aa = redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_wraddr_q;
    assign redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_mem_ab = redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_rdcnt_q;
    assign redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_mem_reset0 = ~ (resetn);
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
    ) redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_mem_dmem (
        .clocken1(redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_mem_reset0),
        .clock1(clock),
        .address_a(redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_mem_aa),
        .data_a(redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_mem_ab),
        .q_b(redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_mem_iq),
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
    assign redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_mem_q = redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_mem_iq[31:0];

    // valid_fanout_reg29(REG,209)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg29_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg29_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg30(REG,210)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp29100_push52_stencil_2d60(BLACKBOX,104)@2
    // out out_feedback_out_52@20000000
    // out out_feedback_valid_out_52@20000000
    stencil_2d_i_llvm_fpga_push_i1_notcmp29100_push52_0 thei_llvm_fpga_push_i1_notcmp29100_push52_stencil_2d60 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp29100_pop52_stencil_2d59_out_data_out),
        .in_feedback_stall_in_52(i_llvm_fpga_pop_i1_notcmp29100_pop52_stencil_2d59_out_feedback_stall_out_52),
        .in_keep_going(redist30_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg30_q),
        .out_data_out(),
        .out_feedback_out_52(i_llvm_fpga_push_i1_notcmp29100_push52_stencil_2d60_out_feedback_out_52),
        .out_feedback_valid_out_52(i_llvm_fpga_push_i1_notcmp29100_push52_stencil_2d60_out_feedback_valid_out_52),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_sync_together141_aunroll_x_in_c0_eni19_11_tpl_1(DELAY,273)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together141_aunroll_x_in_c0_eni19_11_tpl_1_q <= '0;
        end
        else
        begin
            redist10_sync_together141_aunroll_x_in_c0_eni19_11_tpl_1_q <= $unsigned(in_c0_eni19_11_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp29100_pop52_stencil_2d59(BLACKBOX,89)@2
    // out out_feedback_stall_out_52@20000000
    stencil_2d_i_llvm_fpga_pop_i1_notcmp29100_pop52_0 thei_llvm_fpga_pop_i1_notcmp29100_pop52_stencil_2d59 (
        .in_data_in(redist10_sync_together141_aunroll_x_in_c0_eni19_11_tpl_1_q),
        .in_dir(redist1_sync_together141_aunroll_x_in_c0_eni19_2_tpl_1_q),
        .in_feedback_in_52(i_llvm_fpga_push_i1_notcmp29100_push52_stencil_2d60_out_feedback_out_52),
        .in_feedback_valid_in_52(i_llvm_fpga_push_i1_notcmp29100_push52_stencil_2d60_out_feedback_valid_out_52),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg29_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp29100_pop52_stencil_2d59_out_data_out),
        .out_feedback_stall_out_52(i_llvm_fpga_pop_i1_notcmp29100_pop52_stencil_2d59_out_feedback_stall_out_52),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist29_i_llvm_fpga_pop_i1_notcmp29100_pop52_stencil_2d59_out_data_out_9(DELAY,292)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist29_i_llvm_fpga_pop_i1_notcmp29100_pop52_stencil_2d59_out_data_out_9 ( .xin(i_llvm_fpga_pop_i1_notcmp29100_pop52_stencil_2d59_out_data_out), .xout(redist29_i_llvm_fpga_pop_i1_notcmp29100_pop52_stencil_2d59_out_data_out_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_notEnable(LOGICAL,365)
    assign redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_nor(LOGICAL,366)
    assign redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_nor_q = ~ (redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_notEnable_q | redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_sticky_ena_q);

    // redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_mem_last(CONSTANT,362)
    assign redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_mem_last_q = $unsigned(4'b0110);

    // redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_cmp(LOGICAL,363)
    assign redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_cmp_b = {1'b0, redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_rdcnt_q};
    assign redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_cmp_q = $unsigned(redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_mem_last_q == redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_cmp_b ? 1'b1 : 1'b0);

    // redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_cmpReg(REG,364)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_cmpReg_q <= $unsigned(redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_cmp_q);
        end
    end

    // redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_sticky_ena(REG,367)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_nor_q == 1'b1)
        begin
            redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_sticky_ena_q <= $unsigned(redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_cmpReg_q);
        end
    end

    // redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_enaAnd(LOGICAL,368)
    assign redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_enaAnd_q = redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_sticky_ena_q & VCC_q;

    // redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_rdcnt(COUNTER,360)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_rdcnt_i <= 3'd0;
        end
        else
        begin
            redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_rdcnt_i <= $unsigned(redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_rdcnt_i) + $unsigned(3'd1);
        end
    end
    assign redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_rdcnt_q = redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_rdcnt_i[2:0];

    // valid_fanout_reg27(REG,207)@1 + 1
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

    // valid_fanout_reg28(REG,208)@1 + 1
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

    // i_llvm_fpga_push_i32_c_035_pop2795_push47_stencil_2d58(BLACKBOX,111)@2
    // out out_feedback_out_47@20000000
    // out out_feedback_valid_out_47@20000000
    stencil_2d_i_llvm_fpga_push_i32_c_035_pop2795_push47_0 thei_llvm_fpga_push_i32_c_035_pop2795_push47_stencil_2d58 (
        .in_data_in(i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out),
        .in_feedback_stall_in_47(i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_feedback_stall_out_47),
        .in_keep_going(redist30_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg28_q),
        .out_data_out(),
        .out_feedback_out_47(i_llvm_fpga_push_i32_c_035_pop2795_push47_stencil_2d58_out_feedback_out_47),
        .out_feedback_valid_out_47(i_llvm_fpga_push_i32_c_035_pop2795_push47_stencil_2d58_out_feedback_valid_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_sync_together141_aunroll_x_in_c0_eni19_10_tpl_1(DELAY,272)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together141_aunroll_x_in_c0_eni19_10_tpl_1_q <= '0;
        end
        else
        begin
            redist9_sync_together141_aunroll_x_in_c0_eni19_10_tpl_1_q <= $unsigned(in_c0_eni19_10_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57(BLACKBOX,95)@2
    // out out_feedback_stall_out_47@20000000
    stencil_2d_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_0 thei_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57 (
        .in_data_in(redist9_sync_together141_aunroll_x_in_c0_eni19_10_tpl_1_q),
        .in_dir(redist1_sync_together141_aunroll_x_in_c0_eni19_2_tpl_1_q),
        .in_feedback_in_47(i_llvm_fpga_push_i32_c_035_pop2795_push47_stencil_2d58_out_feedback_out_47),
        .in_feedback_valid_in_47(i_llvm_fpga_push_i32_c_035_pop2795_push47_stencil_2d58_out_feedback_valid_out_47),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg27_q),
        .out_data_out(i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out),
        .out_feedback_stall_out_47(i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_feedback_stall_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_wraddr(REG,361)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_wraddr_q <= $unsigned(3'b111);
        end
        else
        begin
            redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_wraddr_q <= $unsigned(redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_rdcnt_q);
        end
    end

    // redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_mem(DUALMEM,359)
    assign redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_mem_ia = $unsigned(i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out);
    assign redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_mem_aa = redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_wraddr_q;
    assign redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_mem_ab = redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_rdcnt_q;
    assign redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_mem_reset0 = ~ (resetn);
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
    ) redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_mem_dmem (
        .clocken1(redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_mem_reset0),
        .clock1(clock),
        .address_a(redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_mem_aa),
        .data_a(redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_mem_ab),
        .q_b(redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_mem_iq),
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
    assign redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_mem_q = redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_mem_iq[31:0];

    // valid_fanout_reg25(REG,205)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg25_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg26(REG,206)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp3493_push46_stencil_2d56(BLACKBOX,105)@2
    // out out_feedback_out_46@20000000
    // out out_feedback_valid_out_46@20000000
    stencil_2d_i_llvm_fpga_push_i1_notcmp3493_push46_0 thei_llvm_fpga_push_i1_notcmp3493_push46_stencil_2d56 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp3493_pop46_stencil_2d55_out_data_out),
        .in_feedback_stall_in_46(i_llvm_fpga_pop_i1_notcmp3493_pop46_stencil_2d55_out_feedback_stall_out_46),
        .in_keep_going(redist30_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_data_out(),
        .out_feedback_out_46(i_llvm_fpga_push_i1_notcmp3493_push46_stencil_2d56_out_feedback_out_46),
        .out_feedback_valid_out_46(i_llvm_fpga_push_i1_notcmp3493_push46_stencil_2d56_out_feedback_valid_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_sync_together141_aunroll_x_in_c0_eni19_9_tpl_1(DELAY,271)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together141_aunroll_x_in_c0_eni19_9_tpl_1_q <= '0;
        end
        else
        begin
            redist8_sync_together141_aunroll_x_in_c0_eni19_9_tpl_1_q <= $unsigned(in_c0_eni19_9_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp3493_pop46_stencil_2d55(BLACKBOX,90)@2
    // out out_feedback_stall_out_46@20000000
    stencil_2d_i_llvm_fpga_pop_i1_notcmp3493_pop46_0 thei_llvm_fpga_pop_i1_notcmp3493_pop46_stencil_2d55 (
        .in_data_in(redist8_sync_together141_aunroll_x_in_c0_eni19_9_tpl_1_q),
        .in_dir(redist1_sync_together141_aunroll_x_in_c0_eni19_2_tpl_1_q),
        .in_feedback_in_46(i_llvm_fpga_push_i1_notcmp3493_push46_stencil_2d56_out_feedback_out_46),
        .in_feedback_valid_in_46(i_llvm_fpga_push_i1_notcmp3493_push46_stencil_2d56_out_feedback_valid_out_46),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp3493_pop46_stencil_2d55_out_data_out),
        .out_feedback_stall_out_46(i_llvm_fpga_pop_i1_notcmp3493_pop46_stencil_2d55_out_feedback_stall_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist28_i_llvm_fpga_pop_i1_notcmp3493_pop46_stencil_2d55_out_data_out_9(DELAY,291)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist28_i_llvm_fpga_pop_i1_notcmp3493_pop46_stencil_2d55_out_data_out_9 ( .xin(i_llvm_fpga_pop_i1_notcmp3493_pop46_stencil_2d55_out_data_out), .xout(redist28_i_llvm_fpga_pop_i1_notcmp3493_pop46_stencil_2d55_out_data_out_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg23(REG,203)@1 + 1
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

    // valid_fanout_reg24(REG,204)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg24_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_notcmp3991_push45_stencil_2d54(BLACKBOX,106)@2
    // out out_feedback_out_45@20000000
    // out out_feedback_valid_out_45@20000000
    stencil_2d_i_llvm_fpga_push_i1_notcmp3991_push45_0 thei_llvm_fpga_push_i1_notcmp3991_push45_stencil_2d54 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp3991_pop45_stencil_2d53_out_data_out),
        .in_feedback_stall_in_45(i_llvm_fpga_pop_i1_notcmp3991_pop45_stencil_2d53_out_feedback_stall_out_45),
        .in_keep_going(redist30_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_data_out(),
        .out_feedback_out_45(i_llvm_fpga_push_i1_notcmp3991_push45_stencil_2d54_out_feedback_out_45),
        .out_feedback_valid_out_45(i_llvm_fpga_push_i1_notcmp3991_push45_stencil_2d54_out_feedback_valid_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together141_aunroll_x_in_c0_eni19_8_tpl_1(DELAY,270)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together141_aunroll_x_in_c0_eni19_8_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together141_aunroll_x_in_c0_eni19_8_tpl_1_q <= $unsigned(in_c0_eni19_8_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp3991_pop45_stencil_2d53(BLACKBOX,91)@2
    // out out_feedback_stall_out_45@20000000
    stencil_2d_i_llvm_fpga_pop_i1_notcmp3991_pop45_0 thei_llvm_fpga_pop_i1_notcmp3991_pop45_stencil_2d53 (
        .in_data_in(redist7_sync_together141_aunroll_x_in_c0_eni19_8_tpl_1_q),
        .in_dir(redist1_sync_together141_aunroll_x_in_c0_eni19_2_tpl_1_q),
        .in_feedback_in_45(i_llvm_fpga_push_i1_notcmp3991_push45_stencil_2d54_out_feedback_out_45),
        .in_feedback_valid_in_45(i_llvm_fpga_push_i1_notcmp3991_push45_stencil_2d54_out_feedback_valid_out_45),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp3991_pop45_stencil_2d53_out_data_out),
        .out_feedback_stall_out_45(i_llvm_fpga_pop_i1_notcmp3991_pop45_stencil_2d53_out_feedback_stall_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist27_i_llvm_fpga_pop_i1_notcmp3991_pop45_stencil_2d53_out_data_out_9(DELAY,290)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist27_i_llvm_fpga_pop_i1_notcmp3991_pop45_stencil_2d53_out_data_out_9 ( .xin(i_llvm_fpga_pop_i1_notcmp3991_pop45_stencil_2d53_out_data_out), .xout(redist27_i_llvm_fpga_pop_i1_notcmp3991_pop45_stencil_2d53_out_data_out_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_notEnable(LOGICAL,355)
    assign redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_nor(LOGICAL,356)
    assign redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_nor_q = ~ (redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_notEnable_q | redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_sticky_ena_q);

    // redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_mem_last(CONSTANT,352)
    assign redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_mem_last_q = $unsigned(4'b0110);

    // redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_cmp(LOGICAL,353)
    assign redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_cmp_b = {1'b0, redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_rdcnt_q};
    assign redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_cmp_q = $unsigned(redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_mem_last_q == redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_cmp_b ? 1'b1 : 1'b0);

    // redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_cmpReg(REG,354)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_cmpReg_q <= $unsigned(redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_cmp_q);
        end
    end

    // redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_sticky_ena(REG,357)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_nor_q == 1'b1)
        begin
            redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_sticky_ena_q <= $unsigned(redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_cmpReg_q);
        end
    end

    // redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_enaAnd(LOGICAL,358)
    assign redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_enaAnd_q = redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_sticky_ena_q & VCC_q;

    // redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_rdcnt(COUNTER,350)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_rdcnt_i <= 3'd0;
        end
        else
        begin
            redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_rdcnt_i <= $unsigned(redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_rdcnt_i) + $unsigned(3'd1);
        end
    end
    assign redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_rdcnt_q = redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_rdcnt_i[2:0];

    // valid_fanout_reg21(REG,201)@1 + 1
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

    // valid_fanout_reg22(REG,202)@1 + 1
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

    // i_llvm_fpga_push_i32_mul5088_push44_stencil_2d52(BLACKBOX,114)@2
    // out out_feedback_out_44@20000000
    // out out_feedback_valid_out_44@20000000
    stencil_2d_i_llvm_fpga_push_i32_mul5088_push44_0 thei_llvm_fpga_push_i32_mul5088_push44_stencil_2d52 (
        .in_data_in(i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out),
        .in_feedback_stall_in_44(i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_feedback_stall_out_44),
        .in_keep_going(redist30_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(),
        .out_feedback_out_44(i_llvm_fpga_push_i32_mul5088_push44_stencil_2d52_out_feedback_out_44),
        .out_feedback_valid_out_44(i_llvm_fpga_push_i32_mul5088_push44_stencil_2d52_out_feedback_valid_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together141_aunroll_x_in_c0_eni19_7_tpl_1(DELAY,269)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together141_aunroll_x_in_c0_eni19_7_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together141_aunroll_x_in_c0_eni19_7_tpl_1_q <= $unsigned(in_c0_eni19_7_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51(BLACKBOX,98)@2
    // out out_feedback_stall_out_44@20000000
    stencil_2d_i_llvm_fpga_pop_i32_mul5088_pop44_0 thei_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51 (
        .in_data_in(redist6_sync_together141_aunroll_x_in_c0_eni19_7_tpl_1_q),
        .in_dir(redist1_sync_together141_aunroll_x_in_c0_eni19_2_tpl_1_q),
        .in_feedback_in_44(i_llvm_fpga_push_i32_mul5088_push44_stencil_2d52_out_feedback_out_44),
        .in_feedback_valid_in_44(i_llvm_fpga_push_i32_mul5088_push44_stencil_2d52_out_feedback_valid_out_44),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out),
        .out_feedback_stall_out_44(i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_feedback_stall_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_wraddr(REG,351)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_wraddr_q <= $unsigned(3'b111);
        end
        else
        begin
            redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_wraddr_q <= $unsigned(redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_rdcnt_q);
        end
    end

    // redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_mem(DUALMEM,349)
    assign redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_mem_ia = $unsigned(i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out);
    assign redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_mem_aa = redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_wraddr_q;
    assign redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_mem_ab = redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_rdcnt_q;
    assign redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_mem_reset0 = ~ (resetn);
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
    ) redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_mem_dmem (
        .clocken1(redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_mem_reset0),
        .clock1(clock),
        .address_a(redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_mem_aa),
        .data_a(redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_mem_ab),
        .q_b(redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_mem_iq),
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
    assign redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_mem_q = redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_mem_iq[31:0];

    // i_masked_stencil_2d48(LOGICAL,118)@2 + 1
    assign i_masked_stencil_2d48_qi = i_notcmp_stencil_2d40_q & i_first_cleanup_stencil_2d5_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_stencil_2d48_delay ( .xin(i_masked_stencil_2d48_qi), .xout(i_masked_stencil_2d48_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist24_i_masked_stencil_2d48_q_9(DELAY,287)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist24_i_masked_stencil_2d48_q_9 ( .xin(i_masked_stencil_2d48_q), .xout(redist24_i_masked_stencil_2d48_q_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist31_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_10(DELAY,294)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist31_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_10 ( .xin(redist30_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q), .xout(redist31_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,178)@11
    assign out_c0_exi16255_0_tpl = GND_q;
    assign out_c0_exi16255_1_tpl = redist31_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_10_q;
    assign out_c0_exi16255_2_tpl = bgTrunc_i_add43_stencil_2d33_sel_x_b;
    assign out_c0_exi16255_3_tpl = redist24_i_masked_stencil_2d48_q_9_q;
    assign out_c0_exi16255_4_tpl = redist25_i_llvm_fpga_pop_i32_mul5088_pop44_stencil_2d51_out_data_out_9_mem_q;
    assign out_c0_exi16255_5_tpl = redist27_i_llvm_fpga_pop_i1_notcmp3991_pop45_stencil_2d53_out_data_out_9_q;
    assign out_c0_exi16255_6_tpl = redist28_i_llvm_fpga_pop_i1_notcmp3493_pop46_stencil_2d55_out_data_out_9_q;
    assign out_c0_exi16255_7_tpl = redist26_i_llvm_fpga_pop_i32_c_035_pop2795_pop47_stencil_2d57_out_data_out_9_mem_q;
    assign out_c0_exi16255_8_tpl = redist29_i_llvm_fpga_pop_i1_notcmp29100_pop52_stencil_2d59_out_data_out_9_q;
    assign out_c0_exi16255_9_tpl = redist11_sync_together141_aunroll_x_in_c0_eni19_12_tpl_10_mem_q;
    assign out_c0_exi16255_10_tpl = redist12_sync_together141_aunroll_x_in_c0_eni19_13_tpl_10_mem_q;
    assign out_c0_exi16255_11_tpl = redist13_sync_together141_aunroll_x_in_c0_eni19_14_tpl_10_q;
    assign out_c0_exi16255_12_tpl = redist14_sync_together141_aunroll_x_in_c0_eni19_15_tpl_10_q;
    assign out_c0_exi16255_13_tpl = redist15_sync_together141_aunroll_x_in_c0_eni19_16_tpl_10_mem_q;
    assign out_c0_exi16255_14_tpl = redist16_sync_together141_aunroll_x_in_c0_eni19_17_tpl_10_mem_q;
    assign out_c0_exi16255_15_tpl = redist17_sync_together141_aunroll_x_in_c0_eni19_18_tpl_10_mem_q;
    assign out_c0_exi16255_16_tpl = redist18_sync_together141_aunroll_x_in_c0_eni19_19_tpl_10_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_stencil_2d1 = GND_q;

    // i_llvm_fpga_pop_i32_r_036_pop2585_pop43_stencil_2d49(BLACKBOX,99)@2
    // out out_feedback_stall_out_43@20000000
    stencil_2d_i_llvm_fpga_pop_i32_r_036_pop2585_pop43_0 thei_llvm_fpga_pop_i32_r_036_pop2585_pop43_stencil_2d49 (
        .in_data_in(redist5_sync_together141_aunroll_x_in_c0_eni19_6_tpl_1_q),
        .in_dir(redist1_sync_together141_aunroll_x_in_c0_eni19_2_tpl_1_q),
        .in_feedback_in_43(i_llvm_fpga_push_i32_r_036_pop2585_push43_stencil_2d50_out_feedback_out_43),
        .in_feedback_valid_in_43(i_llvm_fpga_push_i32_r_036_pop2585_push43_stencil_2d50_out_feedback_valid_out_43),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(i_llvm_fpga_pop_i32_r_036_pop2585_pop43_stencil_2d49_out_data_out),
        .out_feedback_stall_out_43(i_llvm_fpga_pop_i32_r_036_pop2585_pop43_stencil_2d49_out_feedback_stall_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i32_r_036_pop2585_push43_stencil_2d50(BLACKBOX,115)@2
    // out out_feedback_out_43@20000000
    // out out_feedback_valid_out_43@20000000
    stencil_2d_i_llvm_fpga_push_i32_r_036_pop2585_push43_0 thei_llvm_fpga_push_i32_r_036_pop2585_push43_stencil_2d50 (
        .in_data_in(i_llvm_fpga_pop_i32_r_036_pop2585_pop43_stencil_2d49_out_data_out),
        .in_feedback_stall_in_43(i_llvm_fpga_pop_i32_r_036_pop2585_pop43_stencil_2d49_out_feedback_stall_out_43),
        .in_keep_going(redist30_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(),
        .out_feedback_out_43(i_llvm_fpga_push_i32_r_036_pop2585_push43_stencil_2d50_out_feedback_out_43),
        .out_feedback_valid_out_43(i_llvm_fpga_push_i32_r_036_pop2585_push43_stencil_2d50_out_feedback_valid_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg19(REG,199)@1 + 1
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

    // valid_fanout_reg20(REG,200)@1 + 1
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

    // redist5_sync_together141_aunroll_x_in_c0_eni19_6_tpl_1(DELAY,268)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together141_aunroll_x_in_c0_eni19_6_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together141_aunroll_x_in_c0_eni19_6_tpl_1_q <= $unsigned(in_c0_eni19_6_tpl);
        end
    end

endmodule
