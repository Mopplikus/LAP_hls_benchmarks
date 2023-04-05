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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body46_bicgs_c0_enter12813_bicg0
// Created for function/kernel bicg
// SystemVerilog created on Wed Apr  5 16:26:34 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module bicg_i_sfc_logic_s_c0_in_for_body46_s_c0_enter12813_bicg0 (
    input wire [31:0] in_unnamed_bicg15_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg15_bicg_avm_writeack,
    input wire [0:0] in_unnamed_bicg15_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg15_bicg_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going30_bicg6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going30_bicg6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [31:0] in_unnamed_bicg16_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg16_bicg_avm_writeack,
    input wire [0:0] in_unnamed_bicg16_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg16_bicg_avm_readdatavalid,
    output wire [31:0] out_unnamed_bicg15_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg15_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg15_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg15_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg15_bicg_avm_writedata,
    output wire [3:0] out_unnamed_bicg15_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg15_bicg_avm_burstcount,
    input wire [31:0] in_unnamed_bicg17_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg17_bicg_avm_writeack,
    input wire [0:0] in_unnamed_bicg17_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg17_bicg_avm_readdatavalid,
    output wire [31:0] out_unnamed_bicg16_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg16_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg16_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg16_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg16_bicg_avm_writedata,
    output wire [3:0] out_unnamed_bicg16_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg16_bicg_avm_burstcount,
    input wire [31:0] in_memdep_6_bicg_avm_readdata,
    input wire [0:0] in_memdep_6_bicg_avm_writeack,
    input wire [0:0] in_memdep_6_bicg_avm_waitrequest,
    input wire [0:0] in_memdep_6_bicg_avm_readdatavalid,
    output wire [31:0] out_unnamed_bicg17_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg17_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg17_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg17_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg17_bicg_avm_writedata,
    output wire [3:0] out_unnamed_bicg17_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg17_bicg_avm_burstcount,
    input wire [31:0] in_unnamed_bicg18_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg18_bicg_avm_writeack,
    input wire [0:0] in_unnamed_bicg18_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg18_bicg_avm_readdatavalid,
    output wire [31:0] out_memdep_6_bicg_avm_address,
    output wire [0:0] out_memdep_6_bicg_avm_enable,
    output wire [0:0] out_memdep_6_bicg_avm_read,
    output wire [0:0] out_memdep_6_bicg_avm_write,
    output wire [31:0] out_memdep_6_bicg_avm_writedata,
    output wire [3:0] out_memdep_6_bicg_avm_byteenable,
    output wire [0:0] out_memdep_6_bicg_avm_burstcount,
    output wire [31:0] out_unnamed_bicg18_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg18_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg18_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg18_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg18_bicg_avm_writedata,
    output wire [3:0] out_unnamed_bicg18_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg18_bicg_avm_burstcount,
    output wire [0:0] out_c0_exi7138_0_tpl,
    output wire [0:0] out_c0_exi7138_1_tpl,
    output wire [0:0] out_c0_exi7138_2_tpl,
    output wire [31:0] out_c0_exi7138_3_tpl,
    output wire [0:0] out_c0_exi7138_4_tpl,
    output wire [63:0] out_c0_exi7138_5_tpl,
    output wire [0:0] out_c0_exi7138_6_tpl,
    output wire [0:0] out_c0_exi7138_7_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_bicg1,
    input wire [0:0] in_c0_eni7_0_tpl,
    input wire [0:0] in_c0_eni7_1_tpl,
    input wire [63:0] in_c0_eni7_2_tpl,
    input wire [0:0] in_c0_eni7_3_tpl,
    input wire [31:0] in_c0_eni7_4_tpl,
    input wire [63:0] in_c0_eni7_5_tpl,
    input wire [0:0] in_c0_eni7_6_tpl,
    input wire [0:0] in_c0_eni7_7_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_bicg_A_local_pmem_q;
    wire [63:0] c_bicg_p_local_pmem_q;
    wire [63:0] c_bicg_r_local_pmem_q;
    wire [63:0] c_bicg_s_local_pmem_q;
    wire [1:0] c_i2_181_q;
    wire [31:0] c_i32_083_q;
    wire [31:0] c_i32_184_q;
    wire [5:0] c_i6_187_q;
    wire [5:0] c_i6_2885_q;
    wire [32:0] i_add60_bicg31_a;
    wire [32:0] i_add60_bicg31_b;
    logic [32:0] i_add60_bicg31_o;
    wire [32:0] i_add60_bicg31_q;
    wire [32:0] i_add_bicg25_a;
    wire [32:0] i_add_bicg25_b;
    logic [32:0] i_add_bicg25_o;
    wire [32:0] i_add_bicg25_q;
    wire [1:0] i_arrayidx508_bicg18_vt_const_1_q;
    wire [63:0] i_arrayidx508_bicg18_vt_join_q;
    wire [61:0] i_arrayidx508_bicg18_vt_select_63_b;
    wire [63:0] i_arrayidx529_bicg20_vt_join_q;
    wire [61:0] i_arrayidx529_bicg20_vt_select_63_b;
    wire [63:0] i_arrayidx547_bicg14_vt_join_q;
    wire [61:0] i_arrayidx547_bicg14_vt_select_63_b;
    wire [63:0] i_arrayidx5810_bicg27_vt_join_q;
    wire [61:0] i_arrayidx5810_bicg27_vt_select_63_b;
    wire [1:0] i_cleanups_shl34_bicg5_vt_join_q;
    wire [0:0] i_cleanups_shl34_bicg5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor36_bicg4_q;
    wire [6:0] i_fpga_indvars_iv_next12_bicg43_a;
    wire [6:0] i_fpga_indvars_iv_next12_bicg43_b;
    logic [6:0] i_fpga_indvars_iv_next12_bicg43_o;
    wire [6:0] i_fpga_indvars_iv_next12_bicg43_q;
    wire [63:0] i_idxprom49_bicg17_vt_join_q;
    wire [31:0] i_idxprom49_bicg17_vt_select_31_b;
    wire [32:0] i_inc62_bicg33_a;
    wire [32:0] i_inc62_bicg33_b;
    logic [32:0] i_inc62_bicg33_o;
    wire [32:0] i_inc62_bicg33_q;
    wire [31:0] i_llvm_fpga_mem_memdep_6_bicg26_out_memdep_6_bicg_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_6_bicg26_out_memdep_6_bicg_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_6_bicg26_out_memdep_6_bicg_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_6_bicg26_out_memdep_6_bicg_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_6_bicg26_out_memdep_6_bicg_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_6_bicg26_out_memdep_6_bicg_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_6_bicg26_out_memdep_6_bicg_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_6_bicg26_out_o_writeack;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg15_bicg15_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg15_bicg15_out_unnamed_bicg15_bicg_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg15_bicg15_out_unnamed_bicg15_bicg_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_bicg15_bicg15_out_unnamed_bicg15_bicg_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg15_bicg15_out_unnamed_bicg15_bicg_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg15_bicg15_out_unnamed_bicg15_bicg_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg15_bicg15_out_unnamed_bicg15_bicg_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg15_bicg15_out_unnamed_bicg15_bicg_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg16_bicg19_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg16_bicg19_out_unnamed_bicg16_bicg_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg16_bicg19_out_unnamed_bicg16_bicg_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_bicg16_bicg19_out_unnamed_bicg16_bicg_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg16_bicg19_out_unnamed_bicg16_bicg_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg16_bicg19_out_unnamed_bicg16_bicg_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg16_bicg19_out_unnamed_bicg16_bicg_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg16_bicg19_out_unnamed_bicg16_bicg_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg17_bicg23_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg17_bicg23_out_unnamed_bicg17_bicg_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg17_bicg23_out_unnamed_bicg17_bicg_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_bicg17_bicg23_out_unnamed_bicg17_bicg_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg17_bicg23_out_unnamed_bicg17_bicg_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg17_bicg23_out_unnamed_bicg17_bicg_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg17_bicg23_out_unnamed_bicg17_bicg_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg17_bicg23_out_unnamed_bicg17_bicg_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg18_bicg28_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg18_bicg28_out_unnamed_bicg18_bicg_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg18_bicg28_out_unnamed_bicg18_bicg_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_bicg18_bicg28_out_unnamed_bicg18_bicg_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg18_bicg28_out_unnamed_bicg18_bicg_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg18_bicg28_out_unnamed_bicg18_bicg_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg18_bicg28_out_unnamed_bicg18_bicg_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg18_bicg28_out_unnamed_bicg18_bicg_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going30_bicg6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going30_bicg6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going30_bicg6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going30_bicg6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going30_bicg6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1678_pop36_bicg48_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1678_pop36_bicg48_out_feedback_stall_out_36;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop1880_pop38_bicg21_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop1880_pop38_bicg21_out_feedback_stall_out_38;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp4279_pop37_bicg50_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp4279_pop37_bicg50_out_feedback_stall_out_37;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups33_pop33_bicg2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups33_pop33_bicg2_out_feedback_stall_out_33;
    wire [1:0] i_llvm_fpga_pop_i2_initerations28_pop32_bicg7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations28_pop32_bicg7_out_feedback_stall_out_32;
    wire [31:0] i_llvm_fpga_pop_i32_j42_040_pop30_bicg16_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j42_040_pop30_bicg16_out_feedback_stall_out_30;
    wire [31:0] i_llvm_fpga_pop_i32_tmp_q_039_pop31_bicg30_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_tmp_q_039_pop31_bicg30_out_feedback_stall_out_31;
    wire [63:0] i_llvm_fpga_pop_i64_idxprom4076_pop34_bicg12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_idxprom4076_pop34_bicg12_out_feedback_stall_out_34;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop29_bicg35_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop29_bicg35_out_feedback_stall_out_29;
    wire [63:0] i_llvm_fpga_pop_p66i32_arrayidx41677_pop35_bicg46_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p66i32_arrayidx41677_pop35_bicg46_out_feedback_stall_out_35;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1678_push36_bicg49_out_feedback_out_36;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1678_push36_bicg49_out_feedback_valid_out_36;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration32_bicg11_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration32_bicg11_out_feedback_valid_out_4;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1880_push38_bicg22_out_feedback_out_38;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1880_push38_bicg22_out_feedback_valid_out_38;
    wire [0:0] i_llvm_fpga_push_i1_notcmp4279_push37_bicg51_out_feedback_out_37;
    wire [0:0] i_llvm_fpga_push_i1_notcmp4279_push37_bicg51_out_feedback_valid_out_37;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond40_bicg39_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond40_bicg39_out_feedback_valid_out_5;
    wire [7:0] i_llvm_fpga_push_i2_cleanups33_push33_bicg42_out_feedback_out_33;
    wire [0:0] i_llvm_fpga_push_i2_cleanups33_push33_bicg42_out_feedback_valid_out_33;
    wire [7:0] i_llvm_fpga_push_i2_initerations28_push32_bicg9_out_feedback_out_32;
    wire [0:0] i_llvm_fpga_push_i2_initerations28_push32_bicg9_out_feedback_valid_out_32;
    wire [31:0] i_llvm_fpga_push_i32_j42_040_push30_bicg34_out_feedback_out_30;
    wire [0:0] i_llvm_fpga_push_i32_j42_040_push30_bicg34_out_feedback_valid_out_30;
    wire [31:0] i_llvm_fpga_push_i32_tmp_q_039_push31_bicg32_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_i32_tmp_q_039_push31_bicg32_out_feedback_valid_out_31;
    wire [63:0] i_llvm_fpga_push_i64_idxprom4076_push34_bicg13_out_feedback_out_34;
    wire [0:0] i_llvm_fpga_push_i64_idxprom4076_push34_bicg13_out_feedback_valid_out_34;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv11_push29_bicg44_out_feedback_out_29;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv11_push29_bicg44_out_feedback_valid_out_29;
    wire [63:0] i_llvm_fpga_push_p66i32_arrayidx41677_push35_bicg47_out_feedback_out_35;
    wire [0:0] i_llvm_fpga_push_p66i32_arrayidx41677_push35_bicg47_out_feedback_valid_out_35;
    wire [0:0] i_masked39_bicg45_qi;
    reg [0:0] i_masked39_bicg45_q;
    wire [0:0] i_next_cleanups38_bicg41_s;
    reg [1:0] i_next_cleanups38_bicg41_q;
    wire [1:0] i_next_initerations29_bicg8_vt_join_q;
    wire [0:0] i_next_initerations29_bicg8_vt_select_0_b;
    wire [0:0] i_notcmp26_bicg38_q;
    wire [0:0] i_or37_bicg40_q;
    wire [31:0] bgTrunc_i_add60_bicg31_sel_x_b;
    wire [31:0] bgTrunc_i_add_bicg25_sel_x_b;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next12_bicg43_sel_x_b;
    wire [31:0] bgTrunc_i_inc62_bicg33_sel_x_b;
    wire [63:0] bgTrunc_i_mul59_bicg29_sel_x_in;
    wire [31:0] bgTrunc_i_mul59_bicg29_sel_x_b;
    wire [63:0] bgTrunc_i_mul_bicg24_sel_x_in;
    wire [31:0] bgTrunc_i_mul_bicg24_sel_x_b;
    wire [12:0] i_arrayidx508_bicg0_add_x_a;
    wire [12:0] i_arrayidx508_bicg0_add_x_b;
    logic [12:0] i_arrayidx508_bicg0_add_x_o;
    wire [12:0] i_arrayidx508_bicg0_add_x_q;
    wire [63:0] i_arrayidx508_bicg0_append_upper_bits_x_q;
    wire [9:0] i_arrayidx508_bicg0_narrow_x_b;
    wire [11:0] i_arrayidx508_bicg0_shift_join_x_q;
    wire [12:0] i_arrayidx508_bicg0_dupName_0_add_x_a;
    wire [12:0] i_arrayidx508_bicg0_dupName_0_add_x_b;
    logic [12:0] i_arrayidx508_bicg0_dupName_0_add_x_o;
    wire [12:0] i_arrayidx508_bicg0_dupName_0_add_x_q;
    wire [23:0] i_arrayidx508_bicg0_mult_extender_x_q;
    wire [4:0] i_arrayidx508_bicg0_mult_multconst_x_q;
    wire [11:0] i_arrayidx508_bicg0_dupName_0_trunc_sel_x_b;
    wire [11:0] i_arrayidx508_bicg0_dupName_1_trunc_sel_x_b;
    wire [11:0] i_arrayidx508_bicg0_dupName_2_trunc_sel_x_b;
    wire [11:0] i_arrayidx508_bicg0_dupName_3_trunc_sel_x_b;
    wire [11:0] i_arrayidx508_bicg0_dupName_5_trunc_sel_x_b;
    wire [7:0] i_arrayidx529_bicg0_add_x_a;
    wire [7:0] i_arrayidx529_bicg0_add_x_b;
    logic [7:0] i_arrayidx529_bicg0_add_x_o;
    wire [7:0] i_arrayidx529_bicg0_add_x_q;
    wire [63:0] i_arrayidx529_bicg0_append_upper_bits_x_q;
    wire [4:0] i_arrayidx529_bicg0_narrow_x_b;
    wire [6:0] i_arrayidx529_bicg0_shift_join_x_q;
    wire [6:0] i_arrayidx529_bicg0_dupName_0_trunc_sel_x_b;
    wire [6:0] i_arrayidx529_bicg0_dupName_2_trunc_sel_x_b;
    wire [7:0] i_arrayidx547_bicg0_add_x_a;
    wire [7:0] i_arrayidx547_bicg0_add_x_b;
    logic [7:0] i_arrayidx547_bicg0_add_x_o;
    wire [7:0] i_arrayidx547_bicg0_add_x_q;
    wire [63:0] i_arrayidx547_bicg0_append_upper_bits_x_q;
    wire [4:0] i_arrayidx547_bicg0_narrow_x_b;
    wire [6:0] i_arrayidx547_bicg0_shift_join_x_q;
    wire [6:0] i_arrayidx547_bicg0_dupName_0_trunc_sel_x_b;
    wire [6:0] i_arrayidx547_bicg0_dupName_2_trunc_sel_x_b;
    wire [7:0] i_arrayidx5810_bicg0_add_x_a;
    wire [7:0] i_arrayidx5810_bicg0_add_x_b;
    logic [7:0] i_arrayidx5810_bicg0_add_x_o;
    wire [7:0] i_arrayidx5810_bicg0_add_x_q;
    wire [63:0] i_arrayidx5810_bicg0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx5810_bicg0_dupName_2_trunc_sel_x_b;
    wire [0:0] i_first_cleanup35_bicg3_sel_x_b;
    wire [63:0] i_idxprom49_bicg17_sel_x_b;
    wire [0:0] i_last_initeration31_bicg10_sel_x_b;
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
    wire [0:0] i_exitcond13_bicg36_cmp_nsign_q;
    wire [63:0] i_mul59_bicg29_sums_join_0_q;
    wire [50:0] i_mul59_bicg29_sums_align_1_q;
    wire [50:0] i_mul59_bicg29_sums_align_1_qint;
    wire [64:0] i_mul59_bicg29_sums_result_add_0_0_a;
    wire [64:0] i_mul59_bicg29_sums_result_add_0_0_b;
    logic [64:0] i_mul59_bicg29_sums_result_add_0_0_o;
    wire [64:0] i_mul59_bicg29_sums_result_add_0_0_q;
    wire [63:0] i_mul_bicg24_sums_join_0_q;
    wire [50:0] i_mul_bicg24_sums_align_1_q;
    wire [50:0] i_mul_bicg24_sums_align_1_qint;
    wire [64:0] i_mul_bicg24_sums_result_add_0_0_a;
    wire [64:0] i_mul_bicg24_sums_result_add_0_0_b;
    logic [64:0] i_mul_bicg24_sums_result_add_0_0_o;
    wire [64:0] i_mul_bicg24_sums_result_add_0_0_q;
    wire [12:0] xIfSign_mergedSignalTM_uid297_i_arrayidx508_bicg0_mult_x_q;
    wire [3:0] padACst_uid301_i_arrayidx508_bicg0_mult_x_q;
    wire [16:0] aPostPad_uid302_i_arrayidx508_bicg0_mult_x_q;
    wire [17:0] sub_uid303_i_arrayidx508_bicg0_mult_x_a;
    wire [17:0] sub_uid303_i_arrayidx508_bicg0_mult_x_b;
    logic [17:0] sub_uid303_i_arrayidx508_bicg0_mult_x_o;
    wire [17:0] sub_uid303_i_arrayidx508_bicg0_mult_x_q;
    wire [2:0] sR_bottomExtension_uid306_i_arrayidx508_bicg0_mult_x_q;
    wire [15:0] sR_bottomRange_uid307_i_arrayidx508_bicg0_mult_x_in;
    wire [15:0] sR_bottomRange_uid307_i_arrayidx508_bicg0_mult_x_b;
    wire [18:0] sR_mergedSignalTM_uid308_i_arrayidx508_bicg0_mult_x_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid332_i_cleanups_shl34_bicg0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid332_i_cleanups_shl34_bicg0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid333_i_cleanups_shl34_bicg0_shift_x_q;
    wire [0:0] leftShiftStage0_uid335_i_cleanups_shl34_bicg0_shift_x_s;
    reg [1:0] leftShiftStage0_uid335_i_cleanups_shl34_bicg0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid339_i_next_initerations29_bicg0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid341_i_next_initerations29_bicg0_shift_x_q;
    wire [0:0] rightShiftStage0_uid343_i_next_initerations29_bicg0_shift_x_s;
    reg [1:0] rightShiftStage0_uid343_i_next_initerations29_bicg0_shift_x_q;
    wire i_mul59_bicg29_im0_cma_reset;
    wire [13:0] i_mul59_bicg29_im0_cma_a0;
    wire [13:0] i_mul59_bicg29_im0_cma_c0;
    wire [27:0] i_mul59_bicg29_im0_cma_s0;
    wire [27:0] i_mul59_bicg29_im0_cma_qq;
    wire [27:0] i_mul59_bicg29_im0_cma_q;
    wire i_mul59_bicg29_im0_cma_ena0;
    wire i_mul59_bicg29_im0_cma_ena1;
    wire i_mul59_bicg29_im0_cma_ena2;
    wire i_mul59_bicg29_im8_cma_reset;
    wire [17:0] i_mul59_bicg29_im8_cma_a0;
    wire [17:0] i_mul59_bicg29_im8_cma_c0;
    wire [35:0] i_mul59_bicg29_im8_cma_s0;
    wire [35:0] i_mul59_bicg29_im8_cma_qq;
    wire [35:0] i_mul59_bicg29_im8_cma_q;
    wire i_mul59_bicg29_im8_cma_ena0;
    wire i_mul59_bicg29_im8_cma_ena1;
    wire i_mul59_bicg29_im8_cma_ena2;
    wire i_mul_bicg24_im0_cma_reset;
    wire [13:0] i_mul_bicg24_im0_cma_a0;
    wire [13:0] i_mul_bicg24_im0_cma_c0;
    wire [27:0] i_mul_bicg24_im0_cma_s0;
    wire [27:0] i_mul_bicg24_im0_cma_qq;
    wire [27:0] i_mul_bicg24_im0_cma_q;
    wire i_mul_bicg24_im0_cma_ena0;
    wire i_mul_bicg24_im0_cma_ena1;
    wire i_mul_bicg24_im0_cma_ena2;
    wire i_mul_bicg24_im8_cma_reset;
    wire [17:0] i_mul_bicg24_im8_cma_a0;
    wire [17:0] i_mul_bicg24_im8_cma_c0;
    wire [35:0] i_mul_bicg24_im8_cma_s0;
    wire [35:0] i_mul_bicg24_im8_cma_qq;
    wire [35:0] i_mul_bicg24_im8_cma_q;
    wire i_mul_bicg24_im8_cma_ena0;
    wire i_mul_bicg24_im8_cma_ena1;
    wire i_mul_bicg24_im8_cma_ena2;
    wire i_mul59_bicg29_ma3_cma_reset;
    wire [13:0] i_mul59_bicg29_ma3_cma_a0;
    wire [17:0] i_mul59_bicg29_ma3_cma_c0;
    wire [13:0] i_mul59_bicg29_ma3_cma_a1;
    wire [17:0] i_mul59_bicg29_ma3_cma_c1;
    wire [32:0] i_mul59_bicg29_ma3_cma_s0;
    wire [32:0] i_mul59_bicg29_ma3_cma_qq;
    wire [32:0] i_mul59_bicg29_ma3_cma_q;
    wire i_mul59_bicg29_ma3_cma_ena0;
    wire i_mul59_bicg29_ma3_cma_ena1;
    wire i_mul59_bicg29_ma3_cma_ena2;
    wire i_mul_bicg24_ma3_cma_reset;
    wire [13:0] i_mul_bicg24_ma3_cma_a0;
    wire [17:0] i_mul_bicg24_ma3_cma_c0;
    wire [13:0] i_mul_bicg24_ma3_cma_a1;
    wire [17:0] i_mul_bicg24_ma3_cma_c1;
    wire [32:0] i_mul_bicg24_ma3_cma_s0;
    wire [32:0] i_mul_bicg24_ma3_cma_qq;
    wire [32:0] i_mul_bicg24_ma3_cma_q;
    wire i_mul_bicg24_ma3_cma_ena0;
    wire i_mul_bicg24_ma3_cma_ena1;
    wire i_mul_bicg24_ma3_cma_ena2;
    wire [51:0] i_arrayidx508_bicg0_upper_bits_x_merged_bit_select_b;
    wire [11:0] i_arrayidx508_bicg0_upper_bits_x_merged_bit_select_c;
    wire [56:0] i_arrayidx5810_bicg0_upper_bits_x_merged_bit_select_b;
    wire [6:0] i_arrayidx5810_bicg0_upper_bits_x_merged_bit_select_c;
    wire [56:0] i_arrayidx547_bicg0_upper_bits_x_merged_bit_select_b;
    wire [6:0] i_arrayidx547_bicg0_upper_bits_x_merged_bit_select_c;
    wire [56:0] i_arrayidx529_bicg0_upper_bits_x_merged_bit_select_b;
    wire [6:0] i_arrayidx529_bicg0_upper_bits_x_merged_bit_select_c;
    wire [13:0] i_mul_bicg24_bs1_merged_bit_select_b;
    wire [17:0] i_mul_bicg24_bs1_merged_bit_select_c;
    wire [13:0] i_mul59_bicg29_bs2_merged_bit_select_b;
    wire [17:0] i_mul59_bicg29_bs2_merged_bit_select_c;
    wire [13:0] i_mul59_bicg29_bs1_merged_bit_select_b;
    wire [17:0] i_mul59_bicg29_bs1_merged_bit_select_c;
    reg [0:0] redist0_valid_fanout_reg0_q_1_q;
    reg [0:0] redist1_sync_together114_aunroll_x_in_c0_eni7_1_tpl_1_q;
    reg [0:0] redist2_sync_together114_aunroll_x_in_c0_eni7_1_tpl_2_q;
    reg [0:0] redist3_sync_together114_aunroll_x_in_c0_eni7_1_tpl_6_q;
    reg [0:0] redist3_sync_together114_aunroll_x_in_c0_eni7_1_tpl_6_delay_0;
    reg [0:0] redist3_sync_together114_aunroll_x_in_c0_eni7_1_tpl_6_delay_1;
    reg [0:0] redist3_sync_together114_aunroll_x_in_c0_eni7_1_tpl_6_delay_2;
    reg [0:0] redist4_sync_together114_aunroll_x_in_c0_eni7_1_tpl_9_q;
    reg [0:0] redist4_sync_together114_aunroll_x_in_c0_eni7_1_tpl_9_delay_0;
    reg [0:0] redist4_sync_together114_aunroll_x_in_c0_eni7_1_tpl_9_delay_1;
    reg [63:0] redist5_sync_together114_aunroll_x_in_c0_eni7_2_tpl_1_q;
    reg [0:0] redist6_sync_together114_aunroll_x_in_c0_eni7_3_tpl_6_q;
    reg [0:0] redist9_sync_together114_aunroll_x_in_c0_eni7_6_tpl_9_q;
    reg [0:0] redist10_sync_together114_aunroll_x_in_c0_eni7_7_tpl_1_q;
    reg [0:0] redist11_sync_together114_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist12_sync_together114_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist12_sync_together114_aunroll_x_in_i_valid_5_delay_0;
    reg [0:0] redist12_sync_together114_aunroll_x_in_i_valid_5_delay_1;
    reg [0:0] redist12_sync_together114_aunroll_x_in_i_valid_5_delay_2;
    reg [0:0] redist13_sync_together114_aunroll_x_in_i_valid_8_q;
    reg [0:0] redist13_sync_together114_aunroll_x_in_i_valid_8_delay_0;
    reg [0:0] redist13_sync_together114_aunroll_x_in_i_valid_8_delay_1;
    reg [0:0] redist14_sync_together114_aunroll_x_in_i_valid_9_q;
    reg [4:0] redist15_i_arrayidx547_bicg0_narrow_x_b_1_q;
    reg [6:0] redist16_i_arrayidx529_bicg0_shift_join_x_q_4_q;
    reg [6:0] redist16_i_arrayidx529_bicg0_shift_join_x_q_4_delay_0;
    reg [6:0] redist16_i_arrayidx529_bicg0_shift_join_x_q_4_delay_1;
    reg [6:0] redist16_i_arrayidx529_bicg0_shift_join_x_q_4_delay_2;
    reg [11:0] redist17_i_arrayidx508_bicg0_dupName_1_trunc_sel_x_b_1_q;
    reg [31:0] redist18_bgTrunc_i_mul_bicg24_sel_x_b_1_q;
    reg [31:0] redist19_bgTrunc_i_mul59_bicg29_sel_x_b_1_q;
    reg [31:0] redist20_bgTrunc_i_add60_bicg31_sel_x_b_1_q;
    reg [0:0] redist21_i_masked39_bicg45_q_10_q;
    reg [63:0] redist22_i_llvm_fpga_pop_p66i32_arrayidx41677_pop35_bicg46_out_data_out_1_q;
    reg [63:0] redist23_i_llvm_fpga_pop_p66i32_arrayidx41677_pop35_bicg46_out_data_out_2_q;
    reg [31:0] redist24_i_llvm_fpga_pop_i32_tmp_q_039_pop31_bicg30_out_data_out_1_q;
    reg [0:0] redist25_i_llvm_fpga_pop_i1_notcmp4279_pop37_bicg50_out_data_out_1_q;
    reg [0:0] redist26_i_llvm_fpga_pop_i1_notcmp4279_pop37_bicg50_out_data_out_10_q;
    reg [0:0] redist27_i_llvm_fpga_pop_i1_exitcond1678_pop36_bicg48_out_data_out_1_q;
    reg [0:0] redist28_i_llvm_fpga_pop_i1_exitcond1678_pop36_bicg48_out_data_out_2_q;
    reg [0:0] redist29_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_1_q;
    reg [0:0] redist30_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_2_q;
    reg [0:0] redist31_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_6_q;
    reg [0:0] redist31_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_6_delay_0;
    reg [0:0] redist31_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_6_delay_1;
    reg [0:0] redist31_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_6_delay_2;
    reg [0:0] redist32_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_10_q;
    reg [0:0] redist32_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_10_delay_0;
    reg [0:0] redist32_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_10_delay_1;
    reg [0:0] redist32_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_10_delay_2;
    reg [0:0] redist33_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_11_q;
    reg [0:0] redist34_i_first_cleanup_xor36_bicg4_q_1_q;
    reg [0:0] redist35_i_first_cleanup_xor36_bicg4_q_5_q;
    reg [0:0] redist35_i_first_cleanup_xor36_bicg4_q_5_delay_0;
    reg [0:0] redist35_i_first_cleanup_xor36_bicg4_q_5_delay_1;
    reg [0:0] redist35_i_first_cleanup_xor36_bicg4_q_5_delay_2;
    reg [0:0] redist36_i_first_cleanup_xor36_bicg4_q_9_q;
    reg [0:0] redist36_i_first_cleanup_xor36_bicg4_q_9_delay_0;
    reg [0:0] redist36_i_first_cleanup_xor36_bicg4_q_9_delay_1;
    reg [0:0] redist36_i_first_cleanup_xor36_bicg4_q_9_delay_2;
    wire redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_mem_reset0;
    wire [31:0] redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_mem_ia;
    wire [2:0] redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_mem_aa;
    wire [2:0] redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_mem_ab;
    wire [31:0] redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_mem_iq;
    wire [31:0] redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_mem_q;
    wire [2:0] redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_rdcnt_i;
    reg [2:0] redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_wraddr_q;
    wire [3:0] redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_mem_last_q;
    wire [3:0] redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_cmp_b;
    wire [0:0] redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_cmpReg_q;
    wire [0:0] redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_notEnable_q;
    wire [0:0] redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_sticky_ena_q;
    wire [0:0] redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_enaAnd_q;
    wire redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_mem_reset0;
    wire [63:0] redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_mem_ia;
    wire [2:0] redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_mem_aa;
    wire [2:0] redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_mem_ab;
    wire [63:0] redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_mem_iq;
    wire [63:0] redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_mem_q;
    wire [2:0] redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_rdcnt_i;
    reg [2:0] redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_wraddr_q;
    wire [3:0] redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_mem_last_q;
    wire [3:0] redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_cmp_b;
    wire [0:0] redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_cmpReg_q;
    wire [0:0] redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_notEnable_q;
    wire [0:0] redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_sticky_ena_q;
    wire [0:0] redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_enaAnd_q;
    wire redist37_i_arrayidx529_bicg20_vt_join_q_4_mem_reset0;
    wire [63:0] redist37_i_arrayidx529_bicg20_vt_join_q_4_mem_ia;
    wire [1:0] redist37_i_arrayidx529_bicg20_vt_join_q_4_mem_aa;
    wire [1:0] redist37_i_arrayidx529_bicg20_vt_join_q_4_mem_ab;
    wire [63:0] redist37_i_arrayidx529_bicg20_vt_join_q_4_mem_iq;
    wire [63:0] redist37_i_arrayidx529_bicg20_vt_join_q_4_mem_q;
    wire [1:0] redist37_i_arrayidx529_bicg20_vt_join_q_4_rdcnt_q;
    (* preserve *) reg [1:0] redist37_i_arrayidx529_bicg20_vt_join_q_4_rdcnt_i;
    (* preserve *) reg redist37_i_arrayidx529_bicg20_vt_join_q_4_rdcnt_eq;
    reg [1:0] redist37_i_arrayidx529_bicg20_vt_join_q_4_wraddr_q;
    wire [1:0] redist37_i_arrayidx529_bicg20_vt_join_q_4_mem_last_q;
    wire [0:0] redist37_i_arrayidx529_bicg20_vt_join_q_4_cmp_q;
    (* dont_merge *) reg [0:0] redist37_i_arrayidx529_bicg20_vt_join_q_4_cmpReg_q;
    wire [0:0] redist37_i_arrayidx529_bicg20_vt_join_q_4_notEnable_q;
    wire [0:0] redist37_i_arrayidx529_bicg20_vt_join_q_4_nor_q;
    (* dont_merge *) reg [0:0] redist37_i_arrayidx529_bicg20_vt_join_q_4_sticky_ena_q;
    wire [0:0] redist37_i_arrayidx529_bicg20_vt_join_q_4_enaAnd_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist11_sync_together114_aunroll_x_in_i_valid_1(DELAY,368)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together114_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist11_sync_together114_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist29_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_1(DELAY,386)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist29_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid332_i_cleanups_shl34_bicg0_shift_x(BITSELECT,331)@2
    assign leftShiftStage0Idx1Rng1_uid332_i_cleanups_shl34_bicg0_shift_x_in = i_llvm_fpga_pop_i2_cleanups33_pop33_bicg2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid332_i_cleanups_shl34_bicg0_shift_x_b = leftShiftStage0Idx1Rng1_uid332_i_cleanups_shl34_bicg0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid333_i_cleanups_shl34_bicg0_shift_x(BITJOIN,332)@2
    assign leftShiftStage0Idx1_uid333_i_cleanups_shl34_bicg0_shift_x_q = {leftShiftStage0Idx1Rng1_uid332_i_cleanups_shl34_bicg0_shift_x_b, GND_q};

    // leftShiftStage0_uid335_i_cleanups_shl34_bicg0_shift_x(MUX,334)@2
    assign leftShiftStage0_uid335_i_cleanups_shl34_bicg0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid335_i_cleanups_shl34_bicg0_shift_x_s or i_llvm_fpga_pop_i2_cleanups33_pop33_bicg2_out_data_out or leftShiftStage0Idx1_uid333_i_cleanups_shl34_bicg0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid335_i_cleanups_shl34_bicg0_shift_x_s)
            1'b0 : leftShiftStage0_uid335_i_cleanups_shl34_bicg0_shift_x_q = i_llvm_fpga_pop_i2_cleanups33_pop33_bicg2_out_data_out;
            1'b1 : leftShiftStage0_uid335_i_cleanups_shl34_bicg0_shift_x_q = leftShiftStage0Idx1_uid333_i_cleanups_shl34_bicg0_shift_x_q;
            default : leftShiftStage0_uid335_i_cleanups_shl34_bicg0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl34_bicg5_vt_select_1(BITSELECT,64)@2
    assign i_cleanups_shl34_bicg5_vt_select_1_b = leftShiftStage0_uid335_i_cleanups_shl34_bicg0_shift_x_q[1:1];

    // i_cleanups_shl34_bicg5_vt_join(BITJOIN,63)@2
    assign i_cleanups_shl34_bicg5_vt_join_q = {i_cleanups_shl34_bicg5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor36_bicg4(LOGICAL,67)@2
    assign i_first_cleanup_xor36_bicg4_q = i_first_cleanup35_bicg3_sel_x_b ^ VCC_q;

    // i_notcmp26_bicg38(LOGICAL,110)@2
    assign i_notcmp26_bicg38_q = i_exitcond13_bicg36_cmp_nsign_q ^ VCC_q;

    // i_or37_bicg40(LOGICAL,111)@2
    assign i_or37_bicg40_q = i_notcmp26_bicg38_q | i_first_cleanup_xor36_bicg4_q;

    // i_next_cleanups38_bicg41(MUX,106)@2
    assign i_next_cleanups38_bicg41_s = i_or37_bicg40_q;
    always @(i_next_cleanups38_bicg41_s or i_llvm_fpga_pop_i2_cleanups33_pop33_bicg2_out_data_out or i_cleanups_shl34_bicg5_vt_join_q)
    begin
        unique case (i_next_cleanups38_bicg41_s)
            1'b0 : i_next_cleanups38_bicg41_q = i_llvm_fpga_pop_i2_cleanups33_pop33_bicg2_out_data_out;
            1'b1 : i_next_cleanups38_bicg41_q = i_cleanups_shl34_bicg5_vt_join_q;
            default : i_next_cleanups38_bicg41_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups33_push33_bicg42(BLACKBOX,96)@2
    // out out_feedback_out_33@20000000
    // out out_feedback_valid_out_33@20000000
    bicg_i_llvm_fpga_push_i2_cleanups33_push33_0 thei_llvm_fpga_push_i2_cleanups33_push33_bicg42 (
        .in_data_in(i_next_cleanups38_bicg41_q),
        .in_feedback_stall_in_33(i_llvm_fpga_pop_i2_cleanups33_pop33_bicg2_out_feedback_stall_out_33),
        .in_keep_going30(redist29_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist11_sync_together114_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_33(i_llvm_fpga_push_i2_cleanups33_push33_bicg42_out_feedback_out_33),
        .out_feedback_valid_out_33(i_llvm_fpga_push_i2_cleanups33_push33_bicg42_out_feedback_valid_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together114_aunroll_x_in_c0_eni7_1_tpl_1(DELAY,358)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together114_aunroll_x_in_c0_eni7_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together114_aunroll_x_in_c0_eni7_1_tpl_1_q <= $unsigned(in_c0_eni7_1_tpl);
        end
    end

    // c_i2_181(CONSTANT,41)
    assign c_i2_181_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups33_pop33_bicg2(BLACKBOX,84)@2
    // out out_feedback_stall_out_33@20000000
    bicg_i_llvm_fpga_pop_i2_cleanups33_pop33_0 thei_llvm_fpga_pop_i2_cleanups33_pop33_bicg2 (
        .in_data_in(c_i2_181_q),
        .in_dir(redist1_sync_together114_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_33(i_llvm_fpga_push_i2_cleanups33_push33_bicg42_out_feedback_out_33),
        .in_feedback_valid_in_33(i_llvm_fpga_push_i2_cleanups33_push33_bicg42_out_feedback_valid_out_33),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist11_sync_together114_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups33_pop33_bicg2_out_data_out),
        .out_feedback_stall_out_33(i_llvm_fpga_pop_i2_cleanups33_pop33_bicg2_out_feedback_stall_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup35_bicg3_sel_x(BITSELECT,197)@2
    assign i_first_cleanup35_bicg3_sel_x_b = i_llvm_fpga_pop_i2_cleanups33_pop33_bicg2_out_data_out[0:0];

    // c_i6_187(CONSTANT,44)
    assign c_i6_187_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next12_bicg43(ADD,68)@2
    assign i_fpga_indvars_iv_next12_bicg43_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop29_bicg35_out_data_out};
    assign i_fpga_indvars_iv_next12_bicg43_b = {1'b0, c_i6_187_q};
    assign i_fpga_indvars_iv_next12_bicg43_o = $unsigned(i_fpga_indvars_iv_next12_bicg43_a) + $unsigned(i_fpga_indvars_iv_next12_bicg43_b);
    assign i_fpga_indvars_iv_next12_bicg43_q = i_fpga_indvars_iv_next12_bicg43_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next12_bicg43_sel_x(BITSELECT,119)@2
    assign bgTrunc_i_fpga_indvars_iv_next12_bicg43_sel_x_b = i_fpga_indvars_iv_next12_bicg43_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv11_push29_bicg44(BLACKBOX,101)@2
    // out out_feedback_out_29@20000000
    // out out_feedback_valid_out_29@20000000
    bicg_i_llvm_fpga_push_i6_fpga_indvars_iv11_push29_0 thei_llvm_fpga_push_i6_fpga_indvars_iv11_push29_bicg44 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next12_bicg43_sel_x_b),
        .in_feedback_stall_in_29(i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop29_bicg35_out_feedback_stall_out_29),
        .in_keep_going30(redist29_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist11_sync_together114_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_29(i_llvm_fpga_push_i6_fpga_indvars_iv11_push29_bicg44_out_feedback_out_29),
        .out_feedback_valid_out_29(i_llvm_fpga_push_i6_fpga_indvars_iv11_push29_bicg44_out_feedback_valid_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_2885(CONSTANT,45)
    assign c_i6_2885_q = $unsigned(6'b011100);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop29_bicg35(BLACKBOX,89)@2
    // out out_feedback_stall_out_29@20000000
    bicg_i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop29_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv11_pop29_bicg35 (
        .in_data_in(c_i6_2885_q),
        .in_dir(redist1_sync_together114_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_29(i_llvm_fpga_push_i6_fpga_indvars_iv11_push29_bicg44_out_feedback_out_29),
        .in_feedback_valid_in_29(i_llvm_fpga_push_i6_fpga_indvars_iv11_push29_bicg44_out_feedback_valid_out_29),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist11_sync_together114_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop29_bicg35_out_data_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop29_bicg35_out_feedback_stall_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond13_bicg36_cmp_nsign(LOGICAL,241)@2
    assign i_exitcond13_bicg36_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop29_bicg35_out_data_out[5:5]));

    // i_llvm_fpga_push_i1_notexitcond40_bicg39(BLACKBOX,95)@2
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    bicg_i_llvm_fpga_push_i1_notexitcond40_0 thei_llvm_fpga_push_i1_notexitcond40_bicg39 (
        .in_data_in(i_exitcond13_bicg36_cmp_nsign_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going30_bicg6_out_not_exitcond_stall_out),
        .in_first_cleanup35(i_first_cleanup35_bicg3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist11_sync_together114_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond40_bicg39_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond40_bicg39_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,209)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid339_i_next_initerations29_bicg0_shift_x(BITSELECT,338)@2
    assign rightShiftStage0Idx1Rng1_uid339_i_next_initerations29_bicg0_shift_x_b = i_llvm_fpga_pop_i2_initerations28_pop32_bicg7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid341_i_next_initerations29_bicg0_shift_x(BITJOIN,340)@2
    assign rightShiftStage0Idx1_uid341_i_next_initerations29_bicg0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid339_i_next_initerations29_bicg0_shift_x_b};

    // valid_fanout_reg1(REG,207)@1 + 1
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

    // valid_fanout_reg2(REG,208)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations28_push32_bicg9(BLACKBOX,97)@2
    // out out_feedback_out_32@20000000
    // out out_feedback_valid_out_32@20000000
    bicg_i_llvm_fpga_push_i2_initerations28_push32_0 thei_llvm_fpga_push_i2_initerations28_push32_bicg9 (
        .in_data_in(i_next_initerations29_bicg8_vt_join_q),
        .in_feedback_stall_in_32(i_llvm_fpga_pop_i2_initerations28_pop32_bicg7_out_feedback_stall_out_32),
        .in_keep_going30(redist29_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_32(i_llvm_fpga_push_i2_initerations28_push32_bicg9_out_feedback_out_32),
        .out_feedback_valid_out_32(i_llvm_fpga_push_i2_initerations28_push32_bicg9_out_feedback_valid_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations28_pop32_bicg7(BLACKBOX,85)@2
    // out out_feedback_stall_out_32@20000000
    bicg_i_llvm_fpga_pop_i2_initerations28_pop32_0 thei_llvm_fpga_pop_i2_initerations28_pop32_bicg7 (
        .in_data_in(c_i2_181_q),
        .in_dir(redist1_sync_together114_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_32(i_llvm_fpga_push_i2_initerations28_push32_bicg9_out_feedback_out_32),
        .in_feedback_valid_in_32(i_llvm_fpga_push_i2_initerations28_push32_bicg9_out_feedback_valid_out_32),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations28_pop32_bicg7_out_data_out),
        .out_feedback_stall_out_32(i_llvm_fpga_pop_i2_initerations28_pop32_bicg7_out_feedback_stall_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid343_i_next_initerations29_bicg0_shift_x(MUX,342)@2
    assign rightShiftStage0_uid343_i_next_initerations29_bicg0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid343_i_next_initerations29_bicg0_shift_x_s or i_llvm_fpga_pop_i2_initerations28_pop32_bicg7_out_data_out or rightShiftStage0Idx1_uid341_i_next_initerations29_bicg0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid343_i_next_initerations29_bicg0_shift_x_s)
            1'b0 : rightShiftStage0_uid343_i_next_initerations29_bicg0_shift_x_q = i_llvm_fpga_pop_i2_initerations28_pop32_bicg7_out_data_out;
            1'b1 : rightShiftStage0_uid343_i_next_initerations29_bicg0_shift_x_q = rightShiftStage0Idx1_uid341_i_next_initerations29_bicg0_shift_x_q;
            default : rightShiftStage0_uid343_i_next_initerations29_bicg0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations29_bicg8_vt_select_0(BITSELECT,109)@2
    assign i_next_initerations29_bicg8_vt_select_0_b = rightShiftStage0_uid343_i_next_initerations29_bicg0_shift_x_q[0:0];

    // i_next_initerations29_bicg8_vt_join(BITJOIN,108)@2
    assign i_next_initerations29_bicg8_vt_join_q = {GND_q, i_next_initerations29_bicg8_vt_select_0_b};

    // i_last_initeration31_bicg10_sel_x(BITSELECT,199)@2
    assign i_last_initeration31_bicg10_sel_x_b = i_next_initerations29_bicg8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration32_bicg11(BLACKBOX,92)@2
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    bicg_i_llvm_fpga_push_i1_lastiniteration32_0 thei_llvm_fpga_push_i1_lastiniteration32_bicg11 (
        .in_data_in(i_last_initeration31_bicg10_sel_x_b),
        .in_feedback_stall_in_4(i_llvm_fpga_pipeline_keep_going30_bicg6_out_initeration_stall_out),
        .in_keep_going30(redist29_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i1_lastiniteration32_bicg11_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i1_lastiniteration32_bicg11_out_feedback_valid_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going30_bicg6(BLACKBOX,80)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    bicg_i_llvm_fpga_pipeline_keep_going30_0 thei_llvm_fpga_pipeline_keep_going30_bicg6 (
        .in_data_in(in_c0_eni7_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration32_bicg11_out_feedback_out_4),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration32_bicg11_out_feedback_valid_out_4),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond40_bicg39_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond40_bicg39_out_feedback_valid_out_5),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going30_bicg6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going30_bicg6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going30_bicg6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going30_bicg6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going30_bicg6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,47)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going30_bicg6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going30_bicg6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going30_bicg6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going30_bicg6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,114)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going30_bicg6_out_pipeline_valid_out;

    // valid_fanout_reg6(REG,212)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist11_sync_together114_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist34_i_first_cleanup_xor36_bicg4_q_1(DELAY,391)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_first_cleanup_xor36_bicg4_q_1_q <= '0;
        end
        else
        begin
            redist34_i_first_cleanup_xor36_bicg4_q_1_q <= $unsigned(i_first_cleanup_xor36_bicg4_q);
        end
    end

    // c_bicg_r_local_pmem(CONSTANT,10)
    assign c_bicg_r_local_pmem_q = $unsigned(64'b0100000001000100000000000000000000000000000000000000000000000000);

    // i_arrayidx547_bicg0_upper_bits_x_merged_bit_select(BITSELECT,352)@3
    assign i_arrayidx547_bicg0_upper_bits_x_merged_bit_select_b = c_bicg_r_local_pmem_q[63:7];
    assign i_arrayidx547_bicg0_upper_bits_x_merged_bit_select_c = c_bicg_r_local_pmem_q[6:0];

    // valid_fanout_reg4(REG,210)@1 + 1
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

    // valid_fanout_reg5(REG,211)@1 + 1
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

    // i_llvm_fpga_push_i64_idxprom4076_push34_bicg13(BLACKBOX,100)@2
    // out out_feedback_out_34@20000000
    // out out_feedback_valid_out_34@20000000
    bicg_i_llvm_fpga_push_i64_idxprom4076_push34_0 thei_llvm_fpga_push_i64_idxprom4076_push34_bicg13 (
        .in_data_in(i_llvm_fpga_pop_i64_idxprom4076_pop34_bicg12_out_data_out),
        .in_feedback_stall_in_34(i_llvm_fpga_pop_i64_idxprom4076_pop34_bicg12_out_feedback_stall_out_34),
        .in_keep_going30(redist29_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_34(i_llvm_fpga_push_i64_idxprom4076_push34_bicg13_out_feedback_out_34),
        .out_feedback_valid_out_34(i_llvm_fpga_push_i64_idxprom4076_push34_bicg13_out_feedback_valid_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together114_aunroll_x_in_c0_eni7_2_tpl_1(DELAY,362)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together114_aunroll_x_in_c0_eni7_2_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together114_aunroll_x_in_c0_eni7_2_tpl_1_q <= $unsigned(in_c0_eni7_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i64_idxprom4076_pop34_bicg12(BLACKBOX,88)@2
    // out out_feedback_stall_out_34@20000000
    bicg_i_llvm_fpga_pop_i64_idxprom4076_pop34_0 thei_llvm_fpga_pop_i64_idxprom4076_pop34_bicg12 (
        .in_data_in(redist5_sync_together114_aunroll_x_in_c0_eni7_2_tpl_1_q),
        .in_dir(redist1_sync_together114_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_34(i_llvm_fpga_push_i64_idxprom4076_push34_bicg13_out_feedback_out_34),
        .in_feedback_valid_in_34(i_llvm_fpga_push_i64_idxprom4076_push34_bicg13_out_feedback_valid_out_34),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i64_idxprom4076_pop34_bicg12_out_data_out),
        .out_feedback_stall_out_34(i_llvm_fpga_pop_i64_idxprom4076_pop34_bicg12_out_feedback_stall_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx547_bicg0_dupName_0_trunc_sel_x(BITSELECT,179)@2
    assign i_arrayidx547_bicg0_dupName_0_trunc_sel_x_b = i_llvm_fpga_pop_i64_idxprom4076_pop34_bicg12_out_data_out[6:0];

    // i_arrayidx547_bicg0_narrow_x(BITSELECT,172)@2
    assign i_arrayidx547_bicg0_narrow_x_b = i_arrayidx547_bicg0_dupName_0_trunc_sel_x_b[4:0];

    // redist15_i_arrayidx547_bicg0_narrow_x_b_1(DELAY,372)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_arrayidx547_bicg0_narrow_x_b_1_q <= '0;
        end
        else
        begin
            redist15_i_arrayidx547_bicg0_narrow_x_b_1_q <= $unsigned(i_arrayidx547_bicg0_narrow_x_b);
        end
    end

    // i_arrayidx547_bicg0_shift_join_x(BITJOIN,173)@3
    assign i_arrayidx547_bicg0_shift_join_x_q = {redist15_i_arrayidx547_bicg0_narrow_x_b_1_q, i_arrayidx508_bicg18_vt_const_1_q};

    // i_arrayidx547_bicg0_add_x(ADD,169)@3
    assign i_arrayidx547_bicg0_add_x_a = {1'b0, i_arrayidx547_bicg0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx547_bicg0_add_x_b = {1'b0, i_arrayidx547_bicg0_shift_join_x_q};
    assign i_arrayidx547_bicg0_add_x_o = $unsigned(i_arrayidx547_bicg0_add_x_a) + $unsigned(i_arrayidx547_bicg0_add_x_b);
    assign i_arrayidx547_bicg0_add_x_q = i_arrayidx547_bicg0_add_x_o[7:0];

    // i_arrayidx547_bicg0_dupName_2_trunc_sel_x(BITSELECT,180)@3
    assign i_arrayidx547_bicg0_dupName_2_trunc_sel_x_b = i_arrayidx547_bicg0_add_x_q[6:0];

    // i_arrayidx547_bicg0_append_upper_bits_x(BITJOIN,170)@3
    assign i_arrayidx547_bicg0_append_upper_bits_x_q = {i_arrayidx547_bicg0_upper_bits_x_merged_bit_select_b, i_arrayidx547_bicg0_dupName_2_trunc_sel_x_b};

    // i_arrayidx547_bicg14_vt_select_63(BITSELECT,58)@3
    assign i_arrayidx547_bicg14_vt_select_63_b = i_arrayidx547_bicg0_append_upper_bits_x_q[63:2];

    // i_arrayidx508_bicg18_vt_const_1(CONSTANT,50)
    assign i_arrayidx508_bicg18_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx547_bicg14_vt_join(BITJOIN,57)@3
    assign i_arrayidx547_bicg14_vt_join_q = {i_arrayidx547_bicg14_vt_select_63_b, i_arrayidx508_bicg18_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_bicg15_bicg15(BLACKBOX,76)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_bicg15_bicg_avm_address@20000000
    // out out_unnamed_bicg15_bicg_avm_burstcount@20000000
    // out out_unnamed_bicg15_bicg_avm_byteenable@20000000
    // out out_unnamed_bicg15_bicg_avm_enable@20000000
    // out out_unnamed_bicg15_bicg_avm_read@20000000
    // out out_unnamed_bicg15_bicg_avm_write@20000000
    // out out_unnamed_bicg15_bicg_avm_writedata@20000000
    bicg_i_llvm_fpga_mem_unnamed_15_bicg0 thei_llvm_fpga_mem_unnamed_bicg15_bicg15 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx547_bicg14_vt_join_q),
        .in_i_predicate(redist34_i_first_cleanup_xor36_bicg4_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg6_q),
        .in_unnamed_bicg15_bicg_avm_readdata(in_unnamed_bicg15_bicg_avm_readdata),
        .in_unnamed_bicg15_bicg_avm_readdatavalid(in_unnamed_bicg15_bicg_avm_readdatavalid),
        .in_unnamed_bicg15_bicg_avm_waitrequest(in_unnamed_bicg15_bicg_avm_waitrequest),
        .in_unnamed_bicg15_bicg_avm_writeack(in_unnamed_bicg15_bicg_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_bicg15_bicg15_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_bicg15_bicg_avm_address(i_llvm_fpga_mem_unnamed_bicg15_bicg15_out_unnamed_bicg15_bicg_avm_address),
        .out_unnamed_bicg15_bicg_avm_burstcount(i_llvm_fpga_mem_unnamed_bicg15_bicg15_out_unnamed_bicg15_bicg_avm_burstcount),
        .out_unnamed_bicg15_bicg_avm_byteenable(i_llvm_fpga_mem_unnamed_bicg15_bicg15_out_unnamed_bicg15_bicg_avm_byteenable),
        .out_unnamed_bicg15_bicg_avm_enable(i_llvm_fpga_mem_unnamed_bicg15_bicg15_out_unnamed_bicg15_bicg_avm_enable),
        .out_unnamed_bicg15_bicg_avm_read(i_llvm_fpga_mem_unnamed_bicg15_bicg15_out_unnamed_bicg15_bicg_avm_read),
        .out_unnamed_bicg15_bicg_avm_write(i_llvm_fpga_mem_unnamed_bicg15_bicg15_out_unnamed_bicg15_bicg_avm_write),
        .out_unnamed_bicg15_bicg_avm_writedata(i_llvm_fpga_mem_unnamed_bicg15_bicg15_out_unnamed_bicg15_bicg_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,125)
    assign out_unnamed_bicg15_bicg_avm_address = i_llvm_fpga_mem_unnamed_bicg15_bicg15_out_unnamed_bicg15_bicg_avm_address;
    assign out_unnamed_bicg15_bicg_avm_enable = i_llvm_fpga_mem_unnamed_bicg15_bicg15_out_unnamed_bicg15_bicg_avm_enable;
    assign out_unnamed_bicg15_bicg_avm_read = i_llvm_fpga_mem_unnamed_bicg15_bicg15_out_unnamed_bicg15_bicg_avm_read;
    assign out_unnamed_bicg15_bicg_avm_write = i_llvm_fpga_mem_unnamed_bicg15_bicg15_out_unnamed_bicg15_bicg_avm_write;
    assign out_unnamed_bicg15_bicg_avm_writedata = i_llvm_fpga_mem_unnamed_bicg15_bicg15_out_unnamed_bicg15_bicg_avm_writedata;
    assign out_unnamed_bicg15_bicg_avm_byteenable = i_llvm_fpga_mem_unnamed_bicg15_bicg15_out_unnamed_bicg15_bicg_avm_byteenable;
    assign out_unnamed_bicg15_bicg_avm_burstcount = i_llvm_fpga_mem_unnamed_bicg15_bicg15_out_unnamed_bicg15_bicg_avm_burstcount;

    // valid_fanout_reg8(REG,214)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist11_sync_together114_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_bicg_A_local_pmem(CONSTANT,8)
    assign c_bicg_A_local_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx508_bicg0_upper_bits_x_merged_bit_select(BITSELECT,350)@3
    assign i_arrayidx508_bicg0_upper_bits_x_merged_bit_select_b = c_bicg_A_local_pmem_q[63:12];
    assign i_arrayidx508_bicg0_upper_bits_x_merged_bit_select_c = c_bicg_A_local_pmem_q[11:0];

    // c_i32_083(CONSTANT,42)
    assign c_i32_083_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg7(REG,213)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist11_sync_together114_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg16(REG,222)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist11_sync_together114_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist30_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_2(DELAY,387)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist30_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_2_q <= $unsigned(redist29_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_1_q);
        end
    end

    // c_i32_184(CONSTANT,43)
    assign c_i32_184_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc62_bicg33(ADD,73)@3
    assign i_inc62_bicg33_a = {1'b0, i_llvm_fpga_pop_i32_j42_040_pop30_bicg16_out_data_out};
    assign i_inc62_bicg33_b = {1'b0, c_i32_184_q};
    assign i_inc62_bicg33_o = $unsigned(i_inc62_bicg33_a) + $unsigned(i_inc62_bicg33_b);
    assign i_inc62_bicg33_q = i_inc62_bicg33_o[32:0];

    // bgTrunc_i_inc62_bicg33_sel_x(BITSELECT,120)@3
    assign bgTrunc_i_inc62_bicg33_sel_x_b = i_inc62_bicg33_q[31:0];

    // i_llvm_fpga_push_i32_j42_040_push30_bicg34(BLACKBOX,98)@3
    // out out_feedback_out_30@20000000
    // out out_feedback_valid_out_30@20000000
    bicg_i_llvm_fpga_push_i32_j42_040_push30_0 thei_llvm_fpga_push_i32_j42_040_push30_bicg34 (
        .in_data_in(bgTrunc_i_inc62_bicg33_sel_x_b),
        .in_feedback_stall_in_30(i_llvm_fpga_pop_i32_j42_040_pop30_bicg16_out_feedback_stall_out_30),
        .in_keep_going30(redist30_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(),
        .out_feedback_out_30(i_llvm_fpga_push_i32_j42_040_push30_bicg34_out_feedback_out_30),
        .out_feedback_valid_out_30(i_llvm_fpga_push_i32_j42_040_push30_bicg34_out_feedback_valid_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together114_aunroll_x_in_c0_eni7_1_tpl_2(DELAY,359)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together114_aunroll_x_in_c0_eni7_1_tpl_2_q <= '0;
        end
        else
        begin
            redist2_sync_together114_aunroll_x_in_c0_eni7_1_tpl_2_q <= $unsigned(redist1_sync_together114_aunroll_x_in_c0_eni7_1_tpl_1_q);
        end
    end

    // i_llvm_fpga_pop_i32_j42_040_pop30_bicg16(BLACKBOX,86)@3
    // out out_feedback_stall_out_30@20000000
    bicg_i_llvm_fpga_pop_i32_j42_040_pop30_0 thei_llvm_fpga_pop_i32_j42_040_pop30_bicg16 (
        .in_data_in(c_i32_083_q),
        .in_dir(redist2_sync_together114_aunroll_x_in_c0_eni7_1_tpl_2_q),
        .in_feedback_in_30(i_llvm_fpga_push_i32_j42_040_push30_bicg34_out_feedback_out_30),
        .in_feedback_valid_in_30(i_llvm_fpga_push_i32_j42_040_push30_bicg34_out_feedback_valid_out_30),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i32_j42_040_pop30_bicg16_out_data_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_i32_j42_040_pop30_bicg16_out_feedback_stall_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom49_bicg17_sel_x(BITSELECT,198)@3
    assign i_idxprom49_bicg17_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j42_040_pop30_bicg16_out_data_out[31:0]};

    // i_idxprom49_bicg17_vt_select_31(BITSELECT,72)@3
    assign i_idxprom49_bicg17_vt_select_31_b = i_idxprom49_bicg17_sel_x_b[31:0];

    // i_idxprom49_bicg17_vt_join(BITJOIN,71)@3
    assign i_idxprom49_bicg17_vt_join_q = {c_i32_083_q, i_idxprom49_bicg17_vt_select_31_b};

    // i_arrayidx508_bicg0_dupName_3_trunc_sel_x(BITSELECT,155)@3
    assign i_arrayidx508_bicg0_dupName_3_trunc_sel_x_b = i_idxprom49_bicg17_vt_join_q[11:0];

    // i_arrayidx508_bicg0_narrow_x(BITSELECT,138)@3
    assign i_arrayidx508_bicg0_narrow_x_b = i_arrayidx508_bicg0_dupName_3_trunc_sel_x_b[9:0];

    // i_arrayidx508_bicg0_shift_join_x(BITJOIN,139)@3
    assign i_arrayidx508_bicg0_shift_join_x_q = {i_arrayidx508_bicg0_narrow_x_b, i_arrayidx508_bicg18_vt_const_1_q};

    // i_arrayidx508_bicg0_mult_multconst_x(CONSTANT,150)
    assign i_arrayidx508_bicg0_mult_multconst_x_q = $unsigned(5'b00000);

    // i_arrayidx508_bicg0_dupName_0_trunc_sel_x(BITSELECT,152)@2
    assign i_arrayidx508_bicg0_dupName_0_trunc_sel_x_b = i_llvm_fpga_pop_i64_idxprom4076_pop34_bicg12_out_data_out[11:0];

    // xIfSign_mergedSignalTM_uid297_i_arrayidx508_bicg0_mult_x(BITJOIN,296)@2
    assign xIfSign_mergedSignalTM_uid297_i_arrayidx508_bicg0_mult_x_q = {GND_q, i_arrayidx508_bicg0_dupName_0_trunc_sel_x_b};

    // padACst_uid301_i_arrayidx508_bicg0_mult_x(CONSTANT,300)
    assign padACst_uid301_i_arrayidx508_bicg0_mult_x_q = $unsigned(4'b0000);

    // aPostPad_uid302_i_arrayidx508_bicg0_mult_x(BITJOIN,301)@2
    assign aPostPad_uid302_i_arrayidx508_bicg0_mult_x_q = {xIfSign_mergedSignalTM_uid297_i_arrayidx508_bicg0_mult_x_q, padACst_uid301_i_arrayidx508_bicg0_mult_x_q};

    // sub_uid303_i_arrayidx508_bicg0_mult_x(SUB,302)@2
    assign sub_uid303_i_arrayidx508_bicg0_mult_x_a = $unsigned({{1{aPostPad_uid302_i_arrayidx508_bicg0_mult_x_q[16]}}, aPostPad_uid302_i_arrayidx508_bicg0_mult_x_q});
    assign sub_uid303_i_arrayidx508_bicg0_mult_x_b = $unsigned({{5{xIfSign_mergedSignalTM_uid297_i_arrayidx508_bicg0_mult_x_q[12]}}, xIfSign_mergedSignalTM_uid297_i_arrayidx508_bicg0_mult_x_q});
    assign sub_uid303_i_arrayidx508_bicg0_mult_x_o = $unsigned($signed(sub_uid303_i_arrayidx508_bicg0_mult_x_a) - $signed(sub_uid303_i_arrayidx508_bicg0_mult_x_b));
    assign sub_uid303_i_arrayidx508_bicg0_mult_x_q = sub_uid303_i_arrayidx508_bicg0_mult_x_o[17:0];

    // sR_bottomRange_uid307_i_arrayidx508_bicg0_mult_x(BITSELECT,306)@2
    assign sR_bottomRange_uid307_i_arrayidx508_bicg0_mult_x_in = $unsigned(sub_uid303_i_arrayidx508_bicg0_mult_x_q[15:0]);
    assign sR_bottomRange_uid307_i_arrayidx508_bicg0_mult_x_b = $unsigned(sR_bottomRange_uid307_i_arrayidx508_bicg0_mult_x_in[15:0]);

    // sR_bottomExtension_uid306_i_arrayidx508_bicg0_mult_x(CONSTANT,305)
    assign sR_bottomExtension_uid306_i_arrayidx508_bicg0_mult_x_q = $unsigned(3'b000);

    // sR_mergedSignalTM_uid308_i_arrayidx508_bicg0_mult_x(BITJOIN,307)@2
    assign sR_mergedSignalTM_uid308_i_arrayidx508_bicg0_mult_x_q = {sR_bottomRange_uid307_i_arrayidx508_bicg0_mult_x_b, sR_bottomExtension_uid306_i_arrayidx508_bicg0_mult_x_q};

    // i_arrayidx508_bicg0_mult_extender_x(BITJOIN,149)@2
    assign i_arrayidx508_bicg0_mult_extender_x_q = {i_arrayidx508_bicg0_mult_multconst_x_q, sR_mergedSignalTM_uid308_i_arrayidx508_bicg0_mult_x_q};

    // i_arrayidx508_bicg0_dupName_1_trunc_sel_x(BITSELECT,153)@2
    assign i_arrayidx508_bicg0_dupName_1_trunc_sel_x_b = i_arrayidx508_bicg0_mult_extender_x_q[11:0];

    // redist17_i_arrayidx508_bicg0_dupName_1_trunc_sel_x_b_1(DELAY,374)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_arrayidx508_bicg0_dupName_1_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist17_i_arrayidx508_bicg0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx508_bicg0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx508_bicg0_add_x(ADD,133)@3
    assign i_arrayidx508_bicg0_add_x_a = {1'b0, i_arrayidx508_bicg0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx508_bicg0_add_x_b = {1'b0, redist17_i_arrayidx508_bicg0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx508_bicg0_add_x_o = $unsigned(i_arrayidx508_bicg0_add_x_a) + $unsigned(i_arrayidx508_bicg0_add_x_b);
    assign i_arrayidx508_bicg0_add_x_q = i_arrayidx508_bicg0_add_x_o[12:0];

    // i_arrayidx508_bicg0_dupName_2_trunc_sel_x(BITSELECT,154)@3
    assign i_arrayidx508_bicg0_dupName_2_trunc_sel_x_b = i_arrayidx508_bicg0_add_x_q[11:0];

    // i_arrayidx508_bicg0_dupName_0_add_x(ADD,143)@3
    assign i_arrayidx508_bicg0_dupName_0_add_x_a = {1'b0, i_arrayidx508_bicg0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx508_bicg0_dupName_0_add_x_b = {1'b0, i_arrayidx508_bicg0_shift_join_x_q};
    assign i_arrayidx508_bicg0_dupName_0_add_x_o = $unsigned(i_arrayidx508_bicg0_dupName_0_add_x_a) + $unsigned(i_arrayidx508_bicg0_dupName_0_add_x_b);
    assign i_arrayidx508_bicg0_dupName_0_add_x_q = i_arrayidx508_bicg0_dupName_0_add_x_o[12:0];

    // i_arrayidx508_bicg0_dupName_5_trunc_sel_x(BITSELECT,156)@3
    assign i_arrayidx508_bicg0_dupName_5_trunc_sel_x_b = i_arrayidx508_bicg0_dupName_0_add_x_q[11:0];

    // i_arrayidx508_bicg0_append_upper_bits_x(BITJOIN,134)@3
    assign i_arrayidx508_bicg0_append_upper_bits_x_q = {i_arrayidx508_bicg0_upper_bits_x_merged_bit_select_b, i_arrayidx508_bicg0_dupName_5_trunc_sel_x_b};

    // i_arrayidx508_bicg18_vt_select_63(BITSELECT,52)@3
    assign i_arrayidx508_bicg18_vt_select_63_b = i_arrayidx508_bicg0_append_upper_bits_x_q[63:2];

    // i_arrayidx508_bicg18_vt_join(BITJOIN,51)@3
    assign i_arrayidx508_bicg18_vt_join_q = {i_arrayidx508_bicg18_vt_select_63_b, i_arrayidx508_bicg18_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_bicg16_bicg19(BLACKBOX,77)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_bicg16_bicg_avm_address@20000000
    // out out_unnamed_bicg16_bicg_avm_burstcount@20000000
    // out out_unnamed_bicg16_bicg_avm_byteenable@20000000
    // out out_unnamed_bicg16_bicg_avm_enable@20000000
    // out out_unnamed_bicg16_bicg_avm_read@20000000
    // out out_unnamed_bicg16_bicg_avm_write@20000000
    // out out_unnamed_bicg16_bicg_avm_writedata@20000000
    bicg_i_llvm_fpga_mem_unnamed_16_bicg0 thei_llvm_fpga_mem_unnamed_bicg16_bicg19 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx508_bicg18_vt_join_q),
        .in_i_predicate(redist34_i_first_cleanup_xor36_bicg4_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg8_q),
        .in_unnamed_bicg16_bicg_avm_readdata(in_unnamed_bicg16_bicg_avm_readdata),
        .in_unnamed_bicg16_bicg_avm_readdatavalid(in_unnamed_bicg16_bicg_avm_readdatavalid),
        .in_unnamed_bicg16_bicg_avm_waitrequest(in_unnamed_bicg16_bicg_avm_waitrequest),
        .in_unnamed_bicg16_bicg_avm_writeack(in_unnamed_bicg16_bicg_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_bicg16_bicg19_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_bicg16_bicg_avm_address(i_llvm_fpga_mem_unnamed_bicg16_bicg19_out_unnamed_bicg16_bicg_avm_address),
        .out_unnamed_bicg16_bicg_avm_burstcount(i_llvm_fpga_mem_unnamed_bicg16_bicg19_out_unnamed_bicg16_bicg_avm_burstcount),
        .out_unnamed_bicg16_bicg_avm_byteenable(i_llvm_fpga_mem_unnamed_bicg16_bicg19_out_unnamed_bicg16_bicg_avm_byteenable),
        .out_unnamed_bicg16_bicg_avm_enable(i_llvm_fpga_mem_unnamed_bicg16_bicg19_out_unnamed_bicg16_bicg_avm_enable),
        .out_unnamed_bicg16_bicg_avm_read(i_llvm_fpga_mem_unnamed_bicg16_bicg19_out_unnamed_bicg16_bicg_avm_read),
        .out_unnamed_bicg16_bicg_avm_write(i_llvm_fpga_mem_unnamed_bicg16_bicg19_out_unnamed_bicg16_bicg_avm_write),
        .out_unnamed_bicg16_bicg_avm_writedata(i_llvm_fpga_mem_unnamed_bicg16_bicg19_out_unnamed_bicg16_bicg_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,127)
    assign out_unnamed_bicg16_bicg_avm_address = i_llvm_fpga_mem_unnamed_bicg16_bicg19_out_unnamed_bicg16_bicg_avm_address;
    assign out_unnamed_bicg16_bicg_avm_enable = i_llvm_fpga_mem_unnamed_bicg16_bicg19_out_unnamed_bicg16_bicg_avm_enable;
    assign out_unnamed_bicg16_bicg_avm_read = i_llvm_fpga_mem_unnamed_bicg16_bicg19_out_unnamed_bicg16_bicg_avm_read;
    assign out_unnamed_bicg16_bicg_avm_write = i_llvm_fpga_mem_unnamed_bicg16_bicg19_out_unnamed_bicg16_bicg_avm_write;
    assign out_unnamed_bicg16_bicg_avm_writedata = i_llvm_fpga_mem_unnamed_bicg16_bicg19_out_unnamed_bicg16_bicg_avm_writedata;
    assign out_unnamed_bicg16_bicg_avm_byteenable = i_llvm_fpga_mem_unnamed_bicg16_bicg19_out_unnamed_bicg16_bicg_avm_byteenable;
    assign out_unnamed_bicg16_bicg_avm_burstcount = i_llvm_fpga_mem_unnamed_bicg16_bicg19_out_unnamed_bicg16_bicg_avm_burstcount;

    // redist12_sync_together114_aunroll_x_in_i_valid_5(DELAY,369)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together114_aunroll_x_in_i_valid_5_delay_0 <= '0;
            redist12_sync_together114_aunroll_x_in_i_valid_5_delay_1 <= '0;
            redist12_sync_together114_aunroll_x_in_i_valid_5_delay_2 <= '0;
            redist12_sync_together114_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist12_sync_together114_aunroll_x_in_i_valid_5_delay_0 <= $unsigned(redist11_sync_together114_aunroll_x_in_i_valid_1_q);
            redist12_sync_together114_aunroll_x_in_i_valid_5_delay_1 <= redist12_sync_together114_aunroll_x_in_i_valid_5_delay_0;
            redist12_sync_together114_aunroll_x_in_i_valid_5_delay_2 <= redist12_sync_together114_aunroll_x_in_i_valid_5_delay_1;
            redist12_sync_together114_aunroll_x_in_i_valid_5_q <= redist12_sync_together114_aunroll_x_in_i_valid_5_delay_2;
        end
    end

    // valid_fanout_reg11(REG,217)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist12_sync_together114_aunroll_x_in_i_valid_5_q);
        end
    end

    // redist35_i_first_cleanup_xor36_bicg4_q_5(DELAY,392)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_first_cleanup_xor36_bicg4_q_5_delay_0 <= '0;
            redist35_i_first_cleanup_xor36_bicg4_q_5_delay_1 <= '0;
            redist35_i_first_cleanup_xor36_bicg4_q_5_delay_2 <= '0;
            redist35_i_first_cleanup_xor36_bicg4_q_5_q <= '0;
        end
        else
        begin
            redist35_i_first_cleanup_xor36_bicg4_q_5_delay_0 <= $unsigned(redist34_i_first_cleanup_xor36_bicg4_q_1_q);
            redist35_i_first_cleanup_xor36_bicg4_q_5_delay_1 <= redist35_i_first_cleanup_xor36_bicg4_q_5_delay_0;
            redist35_i_first_cleanup_xor36_bicg4_q_5_delay_2 <= redist35_i_first_cleanup_xor36_bicg4_q_5_delay_1;
            redist35_i_first_cleanup_xor36_bicg4_q_5_q <= redist35_i_first_cleanup_xor36_bicg4_q_5_delay_2;
        end
    end

    // valid_fanout_reg9(REG,215)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist12_sync_together114_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg10(REG,216)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist12_sync_together114_aunroll_x_in_i_valid_5_q);
        end
    end

    // redist31_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_6(DELAY,388)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_6_delay_0 <= '0;
            redist31_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_6_delay_1 <= '0;
            redist31_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_6_delay_2 <= '0;
            redist31_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_6_q <= '0;
        end
        else
        begin
            redist31_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_6_delay_0 <= $unsigned(redist30_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_2_q);
            redist31_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_6_delay_1 <= redist31_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_6_delay_0;
            redist31_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_6_delay_2 <= redist31_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_6_delay_1;
            redist31_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_6_q <= redist31_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_6_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_pop1880_push38_bicg22(BLACKBOX,93)@7
    // out out_feedback_out_38@20000000
    // out out_feedback_valid_out_38@20000000
    bicg_i_llvm_fpga_push_i1_memdep_phi_pop1880_push38_0 thei_llvm_fpga_push_i1_memdep_phi_pop1880_push38_bicg22 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi_pop1880_pop38_bicg21_out_data_out),
        .in_feedback_stall_in_38(i_llvm_fpga_pop_i1_memdep_phi_pop1880_pop38_bicg21_out_feedback_stall_out_38),
        .in_keep_going30(redist31_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_6_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_38(i_llvm_fpga_push_i1_memdep_phi_pop1880_push38_bicg22_out_feedback_out_38),
        .out_feedback_valid_out_38(i_llvm_fpga_push_i1_memdep_phi_pop1880_push38_bicg22_out_feedback_valid_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together114_aunroll_x_in_c0_eni7_1_tpl_6(DELAY,360)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together114_aunroll_x_in_c0_eni7_1_tpl_6_delay_0 <= '0;
            redist3_sync_together114_aunroll_x_in_c0_eni7_1_tpl_6_delay_1 <= '0;
            redist3_sync_together114_aunroll_x_in_c0_eni7_1_tpl_6_delay_2 <= '0;
            redist3_sync_together114_aunroll_x_in_c0_eni7_1_tpl_6_q <= '0;
        end
        else
        begin
            redist3_sync_together114_aunroll_x_in_c0_eni7_1_tpl_6_delay_0 <= $unsigned(redist2_sync_together114_aunroll_x_in_c0_eni7_1_tpl_2_q);
            redist3_sync_together114_aunroll_x_in_c0_eni7_1_tpl_6_delay_1 <= redist3_sync_together114_aunroll_x_in_c0_eni7_1_tpl_6_delay_0;
            redist3_sync_together114_aunroll_x_in_c0_eni7_1_tpl_6_delay_2 <= redist3_sync_together114_aunroll_x_in_c0_eni7_1_tpl_6_delay_1;
            redist3_sync_together114_aunroll_x_in_c0_eni7_1_tpl_6_q <= redist3_sync_together114_aunroll_x_in_c0_eni7_1_tpl_6_delay_2;
        end
    end

    // redist6_sync_together114_aunroll_x_in_c0_eni7_3_tpl_6(DELAY,363)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist6_sync_together114_aunroll_x_in_c0_eni7_3_tpl_6 ( .xin(in_c0_eni7_3_tpl), .xout(redist6_sync_together114_aunroll_x_in_c0_eni7_3_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i1_memdep_phi_pop1880_pop38_bicg21(BLACKBOX,82)@7
    // out out_feedback_stall_out_38@20000000
    bicg_i_llvm_fpga_pop_i1_memdep_phi_pop1880_pop38_0 thei_llvm_fpga_pop_i1_memdep_phi_pop1880_pop38_bicg21 (
        .in_data_in(redist6_sync_together114_aunroll_x_in_c0_eni7_3_tpl_6_q),
        .in_dir(redist3_sync_together114_aunroll_x_in_c0_eni7_1_tpl_6_q),
        .in_feedback_in_38(i_llvm_fpga_push_i1_memdep_phi_pop1880_push38_bicg22_out_feedback_out_38),
        .in_feedback_valid_in_38(i_llvm_fpga_push_i1_memdep_phi_pop1880_push38_bicg22_out_feedback_valid_out_38),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop1880_pop38_bicg21_out_data_out),
        .out_feedback_stall_out_38(i_llvm_fpga_pop_i1_memdep_phi_pop1880_pop38_bicg21_out_feedback_stall_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_bicg_s_local_pmem(CONSTANT,11)
    assign c_bicg_s_local_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx529_bicg0_upper_bits_x_merged_bit_select(BITSELECT,353)@7
    assign i_arrayidx529_bicg0_upper_bits_x_merged_bit_select_b = c_bicg_s_local_pmem_q[63:7];
    assign i_arrayidx529_bicg0_upper_bits_x_merged_bit_select_c = c_bicg_s_local_pmem_q[6:0];

    // i_arrayidx529_bicg0_dupName_0_trunc_sel_x(BITSELECT,167)@3
    assign i_arrayidx529_bicg0_dupName_0_trunc_sel_x_b = i_idxprom49_bicg17_vt_join_q[6:0];

    // i_arrayidx529_bicg0_narrow_x(BITSELECT,160)@3
    assign i_arrayidx529_bicg0_narrow_x_b = i_arrayidx529_bicg0_dupName_0_trunc_sel_x_b[4:0];

    // i_arrayidx529_bicg0_shift_join_x(BITJOIN,161)@3
    assign i_arrayidx529_bicg0_shift_join_x_q = {i_arrayidx529_bicg0_narrow_x_b, i_arrayidx508_bicg18_vt_const_1_q};

    // redist16_i_arrayidx529_bicg0_shift_join_x_q_4(DELAY,373)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_arrayidx529_bicg0_shift_join_x_q_4_delay_0 <= '0;
            redist16_i_arrayidx529_bicg0_shift_join_x_q_4_delay_1 <= '0;
            redist16_i_arrayidx529_bicg0_shift_join_x_q_4_delay_2 <= '0;
            redist16_i_arrayidx529_bicg0_shift_join_x_q_4_q <= '0;
        end
        else
        begin
            redist16_i_arrayidx529_bicg0_shift_join_x_q_4_delay_0 <= $unsigned(i_arrayidx529_bicg0_shift_join_x_q);
            redist16_i_arrayidx529_bicg0_shift_join_x_q_4_delay_1 <= redist16_i_arrayidx529_bicg0_shift_join_x_q_4_delay_0;
            redist16_i_arrayidx529_bicg0_shift_join_x_q_4_delay_2 <= redist16_i_arrayidx529_bicg0_shift_join_x_q_4_delay_1;
            redist16_i_arrayidx529_bicg0_shift_join_x_q_4_q <= redist16_i_arrayidx529_bicg0_shift_join_x_q_4_delay_2;
        end
    end

    // i_arrayidx529_bicg0_add_x(ADD,157)@7
    assign i_arrayidx529_bicg0_add_x_a = {1'b0, i_arrayidx529_bicg0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx529_bicg0_add_x_b = {1'b0, redist16_i_arrayidx529_bicg0_shift_join_x_q_4_q};
    assign i_arrayidx529_bicg0_add_x_o = $unsigned(i_arrayidx529_bicg0_add_x_a) + $unsigned(i_arrayidx529_bicg0_add_x_b);
    assign i_arrayidx529_bicg0_add_x_q = i_arrayidx529_bicg0_add_x_o[7:0];

    // i_arrayidx529_bicg0_dupName_2_trunc_sel_x(BITSELECT,168)@7
    assign i_arrayidx529_bicg0_dupName_2_trunc_sel_x_b = i_arrayidx529_bicg0_add_x_q[6:0];

    // i_arrayidx529_bicg0_append_upper_bits_x(BITJOIN,158)@7
    assign i_arrayidx529_bicg0_append_upper_bits_x_q = {i_arrayidx529_bicg0_upper_bits_x_merged_bit_select_b, i_arrayidx529_bicg0_dupName_2_trunc_sel_x_b};

    // i_arrayidx529_bicg20_vt_select_63(BITSELECT,55)@7
    assign i_arrayidx529_bicg20_vt_select_63_b = i_arrayidx529_bicg0_append_upper_bits_x_q[63:2];

    // i_arrayidx529_bicg20_vt_join(BITJOIN,54)@7
    assign i_arrayidx529_bicg20_vt_join_q = {i_arrayidx529_bicg20_vt_select_63_b, i_arrayidx508_bicg18_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_bicg17_bicg23(BLACKBOX,78)@7
    // in in_i_stall@20000000
    // out out_o_readdata@11
    // out out_o_stall@10
    // out out_o_valid@11
    // out out_unnamed_bicg17_bicg_avm_address@20000000
    // out out_unnamed_bicg17_bicg_avm_burstcount@20000000
    // out out_unnamed_bicg17_bicg_avm_byteenable@20000000
    // out out_unnamed_bicg17_bicg_avm_enable@20000000
    // out out_unnamed_bicg17_bicg_avm_read@20000000
    // out out_unnamed_bicg17_bicg_avm_write@20000000
    // out out_unnamed_bicg17_bicg_avm_writedata@20000000
    bicg_i_llvm_fpga_mem_unnamed_17_bicg0 thei_llvm_fpga_mem_unnamed_bicg17_bicg23 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx529_bicg20_vt_join_q),
        .in_i_dependence(i_llvm_fpga_pop_i1_memdep_phi_pop1880_pop38_bicg21_out_data_out),
        .in_i_predicate(redist35_i_first_cleanup_xor36_bicg4_q_5_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg11_q),
        .in_unnamed_bicg17_bicg_avm_readdata(in_unnamed_bicg17_bicg_avm_readdata),
        .in_unnamed_bicg17_bicg_avm_readdatavalid(in_unnamed_bicg17_bicg_avm_readdatavalid),
        .in_unnamed_bicg17_bicg_avm_waitrequest(in_unnamed_bicg17_bicg_avm_waitrequest),
        .in_unnamed_bicg17_bicg_avm_writeack(in_unnamed_bicg17_bicg_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_bicg17_bicg23_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_bicg17_bicg_avm_address(i_llvm_fpga_mem_unnamed_bicg17_bicg23_out_unnamed_bicg17_bicg_avm_address),
        .out_unnamed_bicg17_bicg_avm_burstcount(i_llvm_fpga_mem_unnamed_bicg17_bicg23_out_unnamed_bicg17_bicg_avm_burstcount),
        .out_unnamed_bicg17_bicg_avm_byteenable(i_llvm_fpga_mem_unnamed_bicg17_bicg23_out_unnamed_bicg17_bicg_avm_byteenable),
        .out_unnamed_bicg17_bicg_avm_enable(i_llvm_fpga_mem_unnamed_bicg17_bicg23_out_unnamed_bicg17_bicg_avm_enable),
        .out_unnamed_bicg17_bicg_avm_read(i_llvm_fpga_mem_unnamed_bicg17_bicg23_out_unnamed_bicg17_bicg_avm_read),
        .out_unnamed_bicg17_bicg_avm_write(i_llvm_fpga_mem_unnamed_bicg17_bicg23_out_unnamed_bicg17_bicg_avm_write),
        .out_unnamed_bicg17_bicg_avm_writedata(i_llvm_fpga_mem_unnamed_bicg17_bicg23_out_unnamed_bicg17_bicg_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_ext_sig_sync_out_x(GPOUT,129)
    assign out_unnamed_bicg17_bicg_avm_address = i_llvm_fpga_mem_unnamed_bicg17_bicg23_out_unnamed_bicg17_bicg_avm_address;
    assign out_unnamed_bicg17_bicg_avm_enable = i_llvm_fpga_mem_unnamed_bicg17_bicg23_out_unnamed_bicg17_bicg_avm_enable;
    assign out_unnamed_bicg17_bicg_avm_read = i_llvm_fpga_mem_unnamed_bicg17_bicg23_out_unnamed_bicg17_bicg_avm_read;
    assign out_unnamed_bicg17_bicg_avm_write = i_llvm_fpga_mem_unnamed_bicg17_bicg23_out_unnamed_bicg17_bicg_avm_write;
    assign out_unnamed_bicg17_bicg_avm_writedata = i_llvm_fpga_mem_unnamed_bicg17_bicg23_out_unnamed_bicg17_bicg_avm_writedata;
    assign out_unnamed_bicg17_bicg_avm_byteenable = i_llvm_fpga_mem_unnamed_bicg17_bicg23_out_unnamed_bicg17_bicg_avm_byteenable;
    assign out_unnamed_bicg17_bicg_avm_burstcount = i_llvm_fpga_mem_unnamed_bicg17_bicg23_out_unnamed_bicg17_bicg_avm_burstcount;

    // i_mul59_bicg29_bs2_merged_bit_select(BITSELECT,355)@7
    assign i_mul59_bicg29_bs2_merged_bit_select_b = i_llvm_fpga_mem_unnamed_bicg16_bicg19_out_o_readdata[31:18];
    assign i_mul59_bicg29_bs2_merged_bit_select_c = i_llvm_fpga_mem_unnamed_bicg16_bicg19_out_o_readdata[17:0];

    // i_mul_bicg24_bs1_merged_bit_select(BITSELECT,354)@7
    assign i_mul_bicg24_bs1_merged_bit_select_b = i_llvm_fpga_mem_unnamed_bicg15_bicg15_out_o_readdata[31:18];
    assign i_mul_bicg24_bs1_merged_bit_select_c = i_llvm_fpga_mem_unnamed_bicg15_bicg15_out_o_readdata[17:0];

    // i_mul_bicg24_ma3_cma(CHAINMULTADD,349)@7 + 3
    assign i_mul_bicg24_ma3_cma_reset = ~ (resetn);
    assign i_mul_bicg24_ma3_cma_ena0 = 1'b1;
    assign i_mul_bicg24_ma3_cma_ena1 = i_mul_bicg24_ma3_cma_ena0;
    assign i_mul_bicg24_ma3_cma_ena2 = i_mul_bicg24_ma3_cma_ena0;

    assign i_mul_bicg24_ma3_cma_a0 = i_mul_bicg24_bs1_merged_bit_select_b;
    assign i_mul_bicg24_ma3_cma_c0 = i_mul59_bicg29_bs2_merged_bit_select_c;
    assign i_mul_bicg24_ma3_cma_a1 = i_mul59_bicg29_bs2_merged_bit_select_b;
    assign i_mul_bicg24_ma3_cma_c1 = i_mul_bicg24_bs1_merged_bit_select_c;
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
    ) i_mul_bicg24_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_bicg24_ma3_cma_ena2, i_mul_bicg24_ma3_cma_ena1, i_mul_bicg24_ma3_cma_ena0 }),
        .aclr({ i_mul_bicg24_ma3_cma_reset, i_mul_bicg24_ma3_cma_reset }),
        .ay(i_mul_bicg24_ma3_cma_a1),
        .by(i_mul_bicg24_ma3_cma_a0),
        .ax(i_mul_bicg24_ma3_cma_c1),
        .bx(i_mul_bicg24_ma3_cma_c0),
        .resulta(i_mul_bicg24_ma3_cma_s0),
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
    i_mul_bicg24_ma3_cma_delay ( .xin(i_mul_bicg24_ma3_cma_s0), .xout(i_mul_bicg24_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_bicg24_ma3_cma_q = $unsigned(i_mul_bicg24_ma3_cma_qq[32:0]);

    // i_mul_bicg24_sums_align_1(BITSHIFT,269)@10
    assign i_mul_bicg24_sums_align_1_qint = { i_mul_bicg24_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul_bicg24_sums_align_1_q = i_mul_bicg24_sums_align_1_qint[50:0];

    // i_mul_bicg24_im0_cma(CHAINMULTADD,346)@7 + 3
    assign i_mul_bicg24_im0_cma_reset = ~ (resetn);
    assign i_mul_bicg24_im0_cma_ena0 = 1'b1;
    assign i_mul_bicg24_im0_cma_ena1 = i_mul_bicg24_im0_cma_ena0;
    assign i_mul_bicg24_im0_cma_ena2 = i_mul_bicg24_im0_cma_ena0;

    assign i_mul_bicg24_im0_cma_a0 = i_mul_bicg24_bs1_merged_bit_select_b;
    assign i_mul_bicg24_im0_cma_c0 = i_mul59_bicg29_bs2_merged_bit_select_b;
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
    ) i_mul_bicg24_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_bicg24_im0_cma_ena2, i_mul_bicg24_im0_cma_ena1, i_mul_bicg24_im0_cma_ena0 }),
        .aclr({ i_mul_bicg24_im0_cma_reset, i_mul_bicg24_im0_cma_reset }),
        .ay(i_mul_bicg24_im0_cma_a0),
        .ax(i_mul_bicg24_im0_cma_c0),
        .resulta(i_mul_bicg24_im0_cma_s0),
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
    i_mul_bicg24_im0_cma_delay ( .xin(i_mul_bicg24_im0_cma_s0), .xout(i_mul_bicg24_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_bicg24_im0_cma_q = $unsigned(i_mul_bicg24_im0_cma_qq[27:0]);

    // i_mul_bicg24_im8_cma(CHAINMULTADD,347)@7 + 3
    assign i_mul_bicg24_im8_cma_reset = ~ (resetn);
    assign i_mul_bicg24_im8_cma_ena0 = 1'b1;
    assign i_mul_bicg24_im8_cma_ena1 = i_mul_bicg24_im8_cma_ena0;
    assign i_mul_bicg24_im8_cma_ena2 = i_mul_bicg24_im8_cma_ena0;

    assign i_mul_bicg24_im8_cma_a0 = i_mul_bicg24_bs1_merged_bit_select_c;
    assign i_mul_bicg24_im8_cma_c0 = i_mul59_bicg29_bs2_merged_bit_select_c;
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
    ) i_mul_bicg24_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_bicg24_im8_cma_ena2, i_mul_bicg24_im8_cma_ena1, i_mul_bicg24_im8_cma_ena0 }),
        .aclr({ i_mul_bicg24_im8_cma_reset, i_mul_bicg24_im8_cma_reset }),
        .ay(i_mul_bicg24_im8_cma_a0),
        .ax(i_mul_bicg24_im8_cma_c0),
        .resulta(i_mul_bicg24_im8_cma_s0),
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
    i_mul_bicg24_im8_cma_delay ( .xin(i_mul_bicg24_im8_cma_s0), .xout(i_mul_bicg24_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_bicg24_im8_cma_q = $unsigned(i_mul_bicg24_im8_cma_qq[35:0]);

    // i_mul_bicg24_sums_join_0(BITJOIN,268)@10
    assign i_mul_bicg24_sums_join_0_q = {i_mul_bicg24_im0_cma_q, i_mul_bicg24_im8_cma_q};

    // i_mul_bicg24_sums_result_add_0_0(ADD,271)@10
    assign i_mul_bicg24_sums_result_add_0_0_a = {1'b0, i_mul_bicg24_sums_join_0_q};
    assign i_mul_bicg24_sums_result_add_0_0_b = {14'b00000000000000, i_mul_bicg24_sums_align_1_q};
    assign i_mul_bicg24_sums_result_add_0_0_o = $unsigned(i_mul_bicg24_sums_result_add_0_0_a) + $unsigned(i_mul_bicg24_sums_result_add_0_0_b);
    assign i_mul_bicg24_sums_result_add_0_0_q = i_mul_bicg24_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul_bicg24_sel_x(BITSELECT,122)@10
    assign bgTrunc_i_mul_bicg24_sel_x_in = i_mul_bicg24_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul_bicg24_sel_x_b = bgTrunc_i_mul_bicg24_sel_x_in[31:0];

    // redist18_bgTrunc_i_mul_bicg24_sel_x_b_1(DELAY,375)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_bgTrunc_i_mul_bicg24_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist18_bgTrunc_i_mul_bicg24_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul_bicg24_sel_x_b);
        end
    end

    // i_add_bicg25(ADD,49)@11
    assign i_add_bicg25_a = {1'b0, redist18_bgTrunc_i_mul_bicg24_sel_x_b_1_q};
    assign i_add_bicg25_b = {1'b0, i_llvm_fpga_mem_unnamed_bicg17_bicg23_out_o_readdata};
    assign i_add_bicg25_o = $unsigned(i_add_bicg25_a) + $unsigned(i_add_bicg25_b);
    assign i_add_bicg25_q = i_add_bicg25_o[32:0];

    // bgTrunc_i_add_bicg25_sel_x(BITSELECT,118)@11
    assign bgTrunc_i_add_bicg25_sel_x_b = i_add_bicg25_q[31:0];

    // redist13_sync_together114_aunroll_x_in_i_valid_8(DELAY,370)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together114_aunroll_x_in_i_valid_8_delay_0 <= '0;
            redist13_sync_together114_aunroll_x_in_i_valid_8_delay_1 <= '0;
            redist13_sync_together114_aunroll_x_in_i_valid_8_q <= '0;
        end
        else
        begin
            redist13_sync_together114_aunroll_x_in_i_valid_8_delay_0 <= $unsigned(redist12_sync_together114_aunroll_x_in_i_valid_5_q);
            redist13_sync_together114_aunroll_x_in_i_valid_8_delay_1 <= redist13_sync_together114_aunroll_x_in_i_valid_8_delay_0;
            redist13_sync_together114_aunroll_x_in_i_valid_8_q <= redist13_sync_together114_aunroll_x_in_i_valid_8_delay_1;
        end
    end

    // redist14_sync_together114_aunroll_x_in_i_valid_9(DELAY,371)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together114_aunroll_x_in_i_valid_9_q <= '0;
        end
        else
        begin
            redist14_sync_together114_aunroll_x_in_i_valid_9_q <= $unsigned(redist13_sync_together114_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg12(REG,218)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist14_sync_together114_aunroll_x_in_i_valid_9_q);
        end
    end

    // redist36_i_first_cleanup_xor36_bicg4_q_9(DELAY,393)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_first_cleanup_xor36_bicg4_q_9_delay_0 <= '0;
            redist36_i_first_cleanup_xor36_bicg4_q_9_delay_1 <= '0;
            redist36_i_first_cleanup_xor36_bicg4_q_9_delay_2 <= '0;
            redist36_i_first_cleanup_xor36_bicg4_q_9_q <= '0;
        end
        else
        begin
            redist36_i_first_cleanup_xor36_bicg4_q_9_delay_0 <= $unsigned(redist35_i_first_cleanup_xor36_bicg4_q_5_q);
            redist36_i_first_cleanup_xor36_bicg4_q_9_delay_1 <= redist36_i_first_cleanup_xor36_bicg4_q_9_delay_0;
            redist36_i_first_cleanup_xor36_bicg4_q_9_delay_2 <= redist36_i_first_cleanup_xor36_bicg4_q_9_delay_1;
            redist36_i_first_cleanup_xor36_bicg4_q_9_q <= redist36_i_first_cleanup_xor36_bicg4_q_9_delay_2;
        end
    end

    // redist37_i_arrayidx529_bicg20_vt_join_q_4_notEnable(LOGICAL,421)
    assign redist37_i_arrayidx529_bicg20_vt_join_q_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist37_i_arrayidx529_bicg20_vt_join_q_4_nor(LOGICAL,422)
    assign redist37_i_arrayidx529_bicg20_vt_join_q_4_nor_q = ~ (redist37_i_arrayidx529_bicg20_vt_join_q_4_notEnable_q | redist37_i_arrayidx529_bicg20_vt_join_q_4_sticky_ena_q);

    // redist37_i_arrayidx529_bicg20_vt_join_q_4_mem_last(CONSTANT,418)
    assign redist37_i_arrayidx529_bicg20_vt_join_q_4_mem_last_q = $unsigned(2'b01);

    // redist37_i_arrayidx529_bicg20_vt_join_q_4_cmp(LOGICAL,419)
    assign redist37_i_arrayidx529_bicg20_vt_join_q_4_cmp_q = $unsigned(redist37_i_arrayidx529_bicg20_vt_join_q_4_mem_last_q == redist37_i_arrayidx529_bicg20_vt_join_q_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist37_i_arrayidx529_bicg20_vt_join_q_4_cmpReg(REG,420)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_arrayidx529_bicg20_vt_join_q_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist37_i_arrayidx529_bicg20_vt_join_q_4_cmpReg_q <= $unsigned(redist37_i_arrayidx529_bicg20_vt_join_q_4_cmp_q);
        end
    end

    // redist37_i_arrayidx529_bicg20_vt_join_q_4_sticky_ena(REG,423)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_arrayidx529_bicg20_vt_join_q_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist37_i_arrayidx529_bicg20_vt_join_q_4_nor_q == 1'b1)
        begin
            redist37_i_arrayidx529_bicg20_vt_join_q_4_sticky_ena_q <= $unsigned(redist37_i_arrayidx529_bicg20_vt_join_q_4_cmpReg_q);
        end
    end

    // redist37_i_arrayidx529_bicg20_vt_join_q_4_enaAnd(LOGICAL,424)
    assign redist37_i_arrayidx529_bicg20_vt_join_q_4_enaAnd_q = redist37_i_arrayidx529_bicg20_vt_join_q_4_sticky_ena_q & VCC_q;

    // redist37_i_arrayidx529_bicg20_vt_join_q_4_rdcnt(COUNTER,416)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_arrayidx529_bicg20_vt_join_q_4_rdcnt_i <= 2'd0;
            redist37_i_arrayidx529_bicg20_vt_join_q_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist37_i_arrayidx529_bicg20_vt_join_q_4_rdcnt_i == 2'd1)
            begin
                redist37_i_arrayidx529_bicg20_vt_join_q_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist37_i_arrayidx529_bicg20_vt_join_q_4_rdcnt_eq <= 1'b0;
            end
            if (redist37_i_arrayidx529_bicg20_vt_join_q_4_rdcnt_eq == 1'b1)
            begin
                redist37_i_arrayidx529_bicg20_vt_join_q_4_rdcnt_i <= $unsigned(redist37_i_arrayidx529_bicg20_vt_join_q_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist37_i_arrayidx529_bicg20_vt_join_q_4_rdcnt_i <= $unsigned(redist37_i_arrayidx529_bicg20_vt_join_q_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist37_i_arrayidx529_bicg20_vt_join_q_4_rdcnt_q = redist37_i_arrayidx529_bicg20_vt_join_q_4_rdcnt_i[1:0];

    // redist37_i_arrayidx529_bicg20_vt_join_q_4_wraddr(REG,417)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_arrayidx529_bicg20_vt_join_q_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist37_i_arrayidx529_bicg20_vt_join_q_4_wraddr_q <= $unsigned(redist37_i_arrayidx529_bicg20_vt_join_q_4_rdcnt_q);
        end
    end

    // redist37_i_arrayidx529_bicg20_vt_join_q_4_mem(DUALMEM,415)
    assign redist37_i_arrayidx529_bicg20_vt_join_q_4_mem_ia = $unsigned(i_arrayidx529_bicg20_vt_join_q);
    assign redist37_i_arrayidx529_bicg20_vt_join_q_4_mem_aa = redist37_i_arrayidx529_bicg20_vt_join_q_4_wraddr_q;
    assign redist37_i_arrayidx529_bicg20_vt_join_q_4_mem_ab = redist37_i_arrayidx529_bicg20_vt_join_q_4_rdcnt_q;
    assign redist37_i_arrayidx529_bicg20_vt_join_q_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(64),
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
    ) redist37_i_arrayidx529_bicg20_vt_join_q_4_mem_dmem (
        .clocken1(redist37_i_arrayidx529_bicg20_vt_join_q_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist37_i_arrayidx529_bicg20_vt_join_q_4_mem_reset0),
        .clock1(clock),
        .address_a(redist37_i_arrayidx529_bicg20_vt_join_q_4_mem_aa),
        .data_a(redist37_i_arrayidx529_bicg20_vt_join_q_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist37_i_arrayidx529_bicg20_vt_join_q_4_mem_ab),
        .q_b(redist37_i_arrayidx529_bicg20_vt_join_q_4_mem_iq),
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
    assign redist37_i_arrayidx529_bicg20_vt_join_q_4_mem_q = redist37_i_arrayidx529_bicg20_vt_join_q_4_mem_iq[63:0];

    // i_llvm_fpga_mem_memdep_6_bicg26(BLACKBOX,75)@11
    // out out_memdep_6_bicg_avm_address@20000000
    // out out_memdep_6_bicg_avm_burstcount@20000000
    // out out_memdep_6_bicg_avm_byteenable@20000000
    // out out_memdep_6_bicg_avm_enable@20000000
    // out out_memdep_6_bicg_avm_read@20000000
    // out out_memdep_6_bicg_avm_write@20000000
    // out out_memdep_6_bicg_avm_writedata@20000000
    // out out_o_stall@12
    // out out_o_valid@12
    // out out_o_writeack@12
    bicg_i_llvm_fpga_mem_memdep_6_0 thei_llvm_fpga_mem_memdep_6_bicg26 (
        .in_flush(in_flush),
        .in_i_address(redist37_i_arrayidx529_bicg20_vt_join_q_4_mem_q),
        .in_i_predicate(redist36_i_first_cleanup_xor36_bicg4_q_9_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg12_q),
        .in_i_writedata(bgTrunc_i_add_bicg25_sel_x_b),
        .in_memdep_6_bicg_avm_readdata(in_memdep_6_bicg_avm_readdata),
        .in_memdep_6_bicg_avm_readdatavalid(in_memdep_6_bicg_avm_readdatavalid),
        .in_memdep_6_bicg_avm_waitrequest(in_memdep_6_bicg_avm_waitrequest),
        .in_memdep_6_bicg_avm_writeack(in_memdep_6_bicg_avm_writeack),
        .out_memdep_6_bicg_avm_address(i_llvm_fpga_mem_memdep_6_bicg26_out_memdep_6_bicg_avm_address),
        .out_memdep_6_bicg_avm_burstcount(i_llvm_fpga_mem_memdep_6_bicg26_out_memdep_6_bicg_avm_burstcount),
        .out_memdep_6_bicg_avm_byteenable(i_llvm_fpga_mem_memdep_6_bicg26_out_memdep_6_bicg_avm_byteenable),
        .out_memdep_6_bicg_avm_enable(i_llvm_fpga_mem_memdep_6_bicg26_out_memdep_6_bicg_avm_enable),
        .out_memdep_6_bicg_avm_read(i_llvm_fpga_mem_memdep_6_bicg26_out_memdep_6_bicg_avm_read),
        .out_memdep_6_bicg_avm_write(i_llvm_fpga_mem_memdep_6_bicg26_out_memdep_6_bicg_avm_write),
        .out_memdep_6_bicg_avm_writedata(i_llvm_fpga_mem_memdep_6_bicg26_out_memdep_6_bicg_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(i_llvm_fpga_mem_memdep_6_bicg26_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_ext_sig_sync_out_x(GPOUT,131)
    assign out_memdep_6_bicg_avm_address = i_llvm_fpga_mem_memdep_6_bicg26_out_memdep_6_bicg_avm_address;
    assign out_memdep_6_bicg_avm_enable = i_llvm_fpga_mem_memdep_6_bicg26_out_memdep_6_bicg_avm_enable;
    assign out_memdep_6_bicg_avm_read = i_llvm_fpga_mem_memdep_6_bicg26_out_memdep_6_bicg_avm_read;
    assign out_memdep_6_bicg_avm_write = i_llvm_fpga_mem_memdep_6_bicg26_out_memdep_6_bicg_avm_write;
    assign out_memdep_6_bicg_avm_writedata = i_llvm_fpga_mem_memdep_6_bicg26_out_memdep_6_bicg_avm_writedata;
    assign out_memdep_6_bicg_avm_byteenable = i_llvm_fpga_mem_memdep_6_bicg26_out_memdep_6_bicg_avm_byteenable;
    assign out_memdep_6_bicg_avm_burstcount = i_llvm_fpga_mem_memdep_6_bicg26_out_memdep_6_bicg_avm_burstcount;

    // valid_fanout_reg13(REG,219)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist11_sync_together114_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_bicg_p_local_pmem(CONSTANT,9)
    assign c_bicg_p_local_pmem_q = $unsigned(64'b0100000001000011000000000000000000000000000000000000000000000000);

    // i_arrayidx5810_bicg0_upper_bits_x_merged_bit_select(BITSELECT,351)@3
    assign i_arrayidx5810_bicg0_upper_bits_x_merged_bit_select_b = c_bicg_p_local_pmem_q[63:7];
    assign i_arrayidx5810_bicg0_upper_bits_x_merged_bit_select_c = c_bicg_p_local_pmem_q[6:0];

    // i_arrayidx5810_bicg0_add_x(ADD,181)@3
    assign i_arrayidx5810_bicg0_add_x_a = {1'b0, i_arrayidx5810_bicg0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx5810_bicg0_add_x_b = {1'b0, i_arrayidx529_bicg0_shift_join_x_q};
    assign i_arrayidx5810_bicg0_add_x_o = $unsigned(i_arrayidx5810_bicg0_add_x_a) + $unsigned(i_arrayidx5810_bicg0_add_x_b);
    assign i_arrayidx5810_bicg0_add_x_q = i_arrayidx5810_bicg0_add_x_o[7:0];

    // i_arrayidx5810_bicg0_dupName_2_trunc_sel_x(BITSELECT,192)@3
    assign i_arrayidx5810_bicg0_dupName_2_trunc_sel_x_b = i_arrayidx5810_bicg0_add_x_q[6:0];

    // i_arrayidx5810_bicg0_append_upper_bits_x(BITJOIN,182)@3
    assign i_arrayidx5810_bicg0_append_upper_bits_x_q = {i_arrayidx5810_bicg0_upper_bits_x_merged_bit_select_b, i_arrayidx5810_bicg0_dupName_2_trunc_sel_x_b};

    // i_arrayidx5810_bicg27_vt_select_63(BITSELECT,61)@3
    assign i_arrayidx5810_bicg27_vt_select_63_b = i_arrayidx5810_bicg0_append_upper_bits_x_q[63:2];

    // i_arrayidx5810_bicg27_vt_join(BITJOIN,60)@3
    assign i_arrayidx5810_bicg27_vt_join_q = {i_arrayidx5810_bicg27_vt_select_63_b, i_arrayidx508_bicg18_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_bicg18_bicg28(BLACKBOX,79)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_bicg18_bicg_avm_address@20000000
    // out out_unnamed_bicg18_bicg_avm_burstcount@20000000
    // out out_unnamed_bicg18_bicg_avm_byteenable@20000000
    // out out_unnamed_bicg18_bicg_avm_enable@20000000
    // out out_unnamed_bicg18_bicg_avm_read@20000000
    // out out_unnamed_bicg18_bicg_avm_write@20000000
    // out out_unnamed_bicg18_bicg_avm_writedata@20000000
    bicg_i_llvm_fpga_mem_unnamed_18_bicg0 thei_llvm_fpga_mem_unnamed_bicg18_bicg28 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx5810_bicg27_vt_join_q),
        .in_i_predicate(redist34_i_first_cleanup_xor36_bicg4_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg13_q),
        .in_unnamed_bicg18_bicg_avm_readdata(in_unnamed_bicg18_bicg_avm_readdata),
        .in_unnamed_bicg18_bicg_avm_readdatavalid(in_unnamed_bicg18_bicg_avm_readdatavalid),
        .in_unnamed_bicg18_bicg_avm_waitrequest(in_unnamed_bicg18_bicg_avm_waitrequest),
        .in_unnamed_bicg18_bicg_avm_writeack(in_unnamed_bicg18_bicg_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_bicg18_bicg28_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_bicg18_bicg_avm_address(i_llvm_fpga_mem_unnamed_bicg18_bicg28_out_unnamed_bicg18_bicg_avm_address),
        .out_unnamed_bicg18_bicg_avm_burstcount(i_llvm_fpga_mem_unnamed_bicg18_bicg28_out_unnamed_bicg18_bicg_avm_burstcount),
        .out_unnamed_bicg18_bicg_avm_byteenable(i_llvm_fpga_mem_unnamed_bicg18_bicg28_out_unnamed_bicg18_bicg_avm_byteenable),
        .out_unnamed_bicg18_bicg_avm_enable(i_llvm_fpga_mem_unnamed_bicg18_bicg28_out_unnamed_bicg18_bicg_avm_enable),
        .out_unnamed_bicg18_bicg_avm_read(i_llvm_fpga_mem_unnamed_bicg18_bicg28_out_unnamed_bicg18_bicg_avm_read),
        .out_unnamed_bicg18_bicg_avm_write(i_llvm_fpga_mem_unnamed_bicg18_bicg28_out_unnamed_bicg18_bicg_avm_write),
        .out_unnamed_bicg18_bicg_avm_writedata(i_llvm_fpga_mem_unnamed_bicg18_bicg28_out_unnamed_bicg18_bicg_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_4_ext_sig_sync_out_x(GPOUT,132)
    assign out_unnamed_bicg18_bicg_avm_address = i_llvm_fpga_mem_unnamed_bicg18_bicg28_out_unnamed_bicg18_bicg_avm_address;
    assign out_unnamed_bicg18_bicg_avm_enable = i_llvm_fpga_mem_unnamed_bicg18_bicg28_out_unnamed_bicg18_bicg_avm_enable;
    assign out_unnamed_bicg18_bicg_avm_read = i_llvm_fpga_mem_unnamed_bicg18_bicg28_out_unnamed_bicg18_bicg_avm_read;
    assign out_unnamed_bicg18_bicg_avm_write = i_llvm_fpga_mem_unnamed_bicg18_bicg28_out_unnamed_bicg18_bicg_avm_write;
    assign out_unnamed_bicg18_bicg_avm_writedata = i_llvm_fpga_mem_unnamed_bicg18_bicg28_out_unnamed_bicg18_bicg_avm_writedata;
    assign out_unnamed_bicg18_bicg_avm_byteenable = i_llvm_fpga_mem_unnamed_bicg18_bicg28_out_unnamed_bicg18_bicg_avm_byteenable;
    assign out_unnamed_bicg18_bicg_avm_burstcount = i_llvm_fpga_mem_unnamed_bicg18_bicg28_out_unnamed_bicg18_bicg_avm_burstcount;

    // valid_fanout_reg0(REG,206)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist14_sync_together114_aunroll_x_in_i_valid_9_q);
        end
    end

    // redist0_valid_fanout_reg0_q_1(DELAY,357)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_valid_fanout_reg0_q_1_q <= '0;
        end
        else
        begin
            redist0_valid_fanout_reg0_q_1_q <= $unsigned(valid_fanout_reg0_q);
        end
    end

    // valid_fanout_reg21(REG,227)@1 + 1
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

    // valid_fanout_reg22(REG,228)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg22_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist11_sync_together114_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp4279_push37_bicg51(BLACKBOX,94)@3
    // out out_feedback_out_37@20000000
    // out out_feedback_valid_out_37@20000000
    bicg_i_llvm_fpga_push_i1_notcmp4279_push37_0 thei_llvm_fpga_push_i1_notcmp4279_push37_bicg51 (
        .in_data_in(redist25_i_llvm_fpga_pop_i1_notcmp4279_pop37_bicg50_out_data_out_1_q),
        .in_feedback_stall_in_37(i_llvm_fpga_pop_i1_notcmp4279_pop37_bicg50_out_feedback_stall_out_37),
        .in_keep_going30(redist30_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(),
        .out_feedback_out_37(i_llvm_fpga_push_i1_notcmp4279_push37_bicg51_out_feedback_out_37),
        .out_feedback_valid_out_37(i_llvm_fpga_push_i1_notcmp4279_push37_bicg51_out_feedback_valid_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_sync_together114_aunroll_x_in_c0_eni7_7_tpl_1(DELAY,367)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together114_aunroll_x_in_c0_eni7_7_tpl_1_q <= '0;
        end
        else
        begin
            redist10_sync_together114_aunroll_x_in_c0_eni7_7_tpl_1_q <= $unsigned(in_c0_eni7_7_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp4279_pop37_bicg50(BLACKBOX,83)@2
    // out out_feedback_stall_out_37@20000000
    bicg_i_llvm_fpga_pop_i1_notcmp4279_pop37_0 thei_llvm_fpga_pop_i1_notcmp4279_pop37_bicg50 (
        .in_data_in(redist10_sync_together114_aunroll_x_in_c0_eni7_7_tpl_1_q),
        .in_dir(redist1_sync_together114_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_37(i_llvm_fpga_push_i1_notcmp4279_push37_bicg51_out_feedback_out_37),
        .in_feedback_valid_in_37(i_llvm_fpga_push_i1_notcmp4279_push37_bicg51_out_feedback_valid_out_37),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp4279_pop37_bicg50_out_data_out),
        .out_feedback_stall_out_37(i_llvm_fpga_pop_i1_notcmp4279_pop37_bicg50_out_feedback_stall_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist25_i_llvm_fpga_pop_i1_notcmp4279_pop37_bicg50_out_data_out_1(DELAY,382)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_pop_i1_notcmp4279_pop37_bicg50_out_data_out_1_q <= '0;
        end
        else
        begin
            redist25_i_llvm_fpga_pop_i1_notcmp4279_pop37_bicg50_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_notcmp4279_pop37_bicg50_out_data_out);
        end
    end

    // redist26_i_llvm_fpga_pop_i1_notcmp4279_pop37_bicg50_out_data_out_10(DELAY,383)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist26_i_llvm_fpga_pop_i1_notcmp4279_pop37_bicg50_out_data_out_10 ( .xin(redist25_i_llvm_fpga_pop_i1_notcmp4279_pop37_bicg50_out_data_out_1_q), .xout(redist26_i_llvm_fpga_pop_i1_notcmp4279_pop37_bicg50_out_data_out_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg19(REG,225)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist13_sync_together114_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg20(REG,226)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg20_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist14_sync_together114_aunroll_x_in_i_valid_9_q);
        end
    end

    // redist32_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_10(DELAY,389)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_10_delay_0 <= '0;
            redist32_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_10_delay_1 <= '0;
            redist32_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_10_delay_2 <= '0;
            redist32_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_10_q <= '0;
        end
        else
        begin
            redist32_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_10_delay_0 <= $unsigned(redist31_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_6_q);
            redist32_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_10_delay_1 <= redist32_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_10_delay_0;
            redist32_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_10_delay_2 <= redist32_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_10_delay_1;
            redist32_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_10_q <= redist32_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_10_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_exitcond1678_push36_bicg49(BLACKBOX,91)@11
    // out out_feedback_out_36@20000000
    // out out_feedback_valid_out_36@20000000
    bicg_i_llvm_fpga_push_i1_exitcond1678_push36_0 thei_llvm_fpga_push_i1_exitcond1678_push36_bicg49 (
        .in_data_in(redist27_i_llvm_fpga_pop_i1_exitcond1678_pop36_bicg48_out_data_out_1_q),
        .in_feedback_stall_in_36(i_llvm_fpga_pop_i1_exitcond1678_pop36_bicg48_out_feedback_stall_out_36),
        .in_keep_going30(redist32_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_10_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(),
        .out_feedback_out_36(i_llvm_fpga_push_i1_exitcond1678_push36_bicg49_out_feedback_out_36),
        .out_feedback_valid_out_36(i_llvm_fpga_push_i1_exitcond1678_push36_bicg49_out_feedback_valid_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together114_aunroll_x_in_c0_eni7_1_tpl_9(DELAY,361)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together114_aunroll_x_in_c0_eni7_1_tpl_9_delay_0 <= '0;
            redist4_sync_together114_aunroll_x_in_c0_eni7_1_tpl_9_delay_1 <= '0;
            redist4_sync_together114_aunroll_x_in_c0_eni7_1_tpl_9_q <= '0;
        end
        else
        begin
            redist4_sync_together114_aunroll_x_in_c0_eni7_1_tpl_9_delay_0 <= $unsigned(redist3_sync_together114_aunroll_x_in_c0_eni7_1_tpl_6_q);
            redist4_sync_together114_aunroll_x_in_c0_eni7_1_tpl_9_delay_1 <= redist4_sync_together114_aunroll_x_in_c0_eni7_1_tpl_9_delay_0;
            redist4_sync_together114_aunroll_x_in_c0_eni7_1_tpl_9_q <= redist4_sync_together114_aunroll_x_in_c0_eni7_1_tpl_9_delay_1;
        end
    end

    // redist9_sync_together114_aunroll_x_in_c0_eni7_6_tpl_9(DELAY,366)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist9_sync_together114_aunroll_x_in_c0_eni7_6_tpl_9 ( .xin(in_c0_eni7_6_tpl), .xout(redist9_sync_together114_aunroll_x_in_c0_eni7_6_tpl_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i1_exitcond1678_pop36_bicg48(BLACKBOX,81)@10
    // out out_feedback_stall_out_36@20000000
    bicg_i_llvm_fpga_pop_i1_exitcond1678_pop36_0 thei_llvm_fpga_pop_i1_exitcond1678_pop36_bicg48 (
        .in_data_in(redist9_sync_together114_aunroll_x_in_c0_eni7_6_tpl_9_q),
        .in_dir(redist4_sync_together114_aunroll_x_in_c0_eni7_1_tpl_9_q),
        .in_feedback_in_36(i_llvm_fpga_push_i1_exitcond1678_push36_bicg49_out_feedback_out_36),
        .in_feedback_valid_in_36(i_llvm_fpga_push_i1_exitcond1678_push36_bicg49_out_feedback_valid_out_36),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond1678_pop36_bicg48_out_data_out),
        .out_feedback_stall_out_36(i_llvm_fpga_pop_i1_exitcond1678_pop36_bicg48_out_feedback_stall_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist27_i_llvm_fpga_pop_i1_exitcond1678_pop36_bicg48_out_data_out_1(DELAY,384)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_pop_i1_exitcond1678_pop36_bicg48_out_data_out_1_q <= '0;
        end
        else
        begin
            redist27_i_llvm_fpga_pop_i1_exitcond1678_pop36_bicg48_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_exitcond1678_pop36_bicg48_out_data_out);
        end
    end

    // redist28_i_llvm_fpga_pop_i1_exitcond1678_pop36_bicg48_out_data_out_2(DELAY,385)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_llvm_fpga_pop_i1_exitcond1678_pop36_bicg48_out_data_out_2_q <= '0;
        end
        else
        begin
            redist28_i_llvm_fpga_pop_i1_exitcond1678_pop36_bicg48_out_data_out_2_q <= $unsigned(redist27_i_llvm_fpga_pop_i1_exitcond1678_pop36_bicg48_out_data_out_1_q);
        end
    end

    // valid_fanout_reg17(REG,223)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist13_sync_together114_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg18(REG,224)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist14_sync_together114_aunroll_x_in_i_valid_9_q);
        end
    end

    // i_llvm_fpga_push_p66i32_arrayidx41677_push35_bicg47(BLACKBOX,102)@11
    // out out_feedback_out_35@20000000
    // out out_feedback_valid_out_35@20000000
    bicg_i_llvm_fpga_push_p66i32_arrayidx41677_push35_0 thei_llvm_fpga_push_p66i32_arrayidx41677_push35_bicg47 (
        .in_data_in(redist22_i_llvm_fpga_pop_p66i32_arrayidx41677_pop35_bicg46_out_data_out_1_q),
        .in_feedback_stall_in_35(i_llvm_fpga_pop_p66i32_arrayidx41677_pop35_bicg46_out_feedback_stall_out_35),
        .in_keep_going30(redist32_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_10_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(),
        .out_feedback_out_35(i_llvm_fpga_push_p66i32_arrayidx41677_push35_bicg47_out_feedback_out_35),
        .out_feedback_valid_out_35(i_llvm_fpga_push_p66i32_arrayidx41677_push35_bicg47_out_feedback_valid_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_notEnable(LOGICAL,411)
    assign redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_nor(LOGICAL,412)
    assign redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_nor_q = ~ (redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_notEnable_q | redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_sticky_ena_q);

    // redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_mem_last(CONSTANT,408)
    assign redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_mem_last_q = $unsigned(4'b0110);

    // redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_cmp(LOGICAL,409)
    assign redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_cmp_b = {1'b0, redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_rdcnt_q};
    assign redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_cmp_q = $unsigned(redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_mem_last_q == redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_cmpReg(REG,410)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_cmpReg_q <= $unsigned(redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_cmp_q);
        end
    end

    // redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_sticky_ena(REG,413)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_nor_q == 1'b1)
        begin
            redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_sticky_ena_q <= $unsigned(redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_cmpReg_q);
        end
    end

    // redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_enaAnd(LOGICAL,414)
    assign redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_enaAnd_q = redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_sticky_ena_q & VCC_q;

    // redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_rdcnt(COUNTER,406)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_rdcnt_i <= 3'd0;
        end
        else
        begin
            redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_rdcnt_i <= $unsigned(redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_rdcnt_i) + $unsigned(3'd1);
        end
    end
    assign redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_rdcnt_q = redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_rdcnt_i[2:0];

    // redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_wraddr(REG,407)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_wraddr_q <= $unsigned(3'b111);
        end
        else
        begin
            redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_wraddr_q <= $unsigned(redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_rdcnt_q);
        end
    end

    // redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_mem(DUALMEM,405)
    assign redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_mem_ia = $unsigned(in_c0_eni7_5_tpl);
    assign redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_mem_aa = redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_wraddr_q;
    assign redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_mem_ab = redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_rdcnt_q;
    assign redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_mem_reset0 = ~ (resetn);
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
    ) redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_mem_dmem (
        .clocken1(redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_mem_aa),
        .data_a(redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_mem_ab),
        .q_b(redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_mem_iq),
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
    assign redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_mem_q = redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_mem_iq[63:0];

    // i_llvm_fpga_pop_p66i32_arrayidx41677_pop35_bicg46(BLACKBOX,90)@10
    // out out_feedback_stall_out_35@20000000
    bicg_i_llvm_fpga_pop_p66i32_arrayidx41677_pop35_0 thei_llvm_fpga_pop_p66i32_arrayidx41677_pop35_bicg46 (
        .in_data_in(redist8_sync_together114_aunroll_x_in_c0_eni7_5_tpl_9_mem_q),
        .in_dir(redist4_sync_together114_aunroll_x_in_c0_eni7_1_tpl_9_q),
        .in_feedback_in_35(i_llvm_fpga_push_p66i32_arrayidx41677_push35_bicg47_out_feedback_out_35),
        .in_feedback_valid_in_35(i_llvm_fpga_push_p66i32_arrayidx41677_push35_bicg47_out_feedback_valid_out_35),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(i_llvm_fpga_pop_p66i32_arrayidx41677_pop35_bicg46_out_data_out),
        .out_feedback_stall_out_35(i_llvm_fpga_pop_p66i32_arrayidx41677_pop35_bicg46_out_feedback_stall_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist22_i_llvm_fpga_pop_p66i32_arrayidx41677_pop35_bicg46_out_data_out_1(DELAY,379)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_pop_p66i32_arrayidx41677_pop35_bicg46_out_data_out_1_q <= '0;
        end
        else
        begin
            redist22_i_llvm_fpga_pop_p66i32_arrayidx41677_pop35_bicg46_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_p66i32_arrayidx41677_pop35_bicg46_out_data_out);
        end
    end

    // redist23_i_llvm_fpga_pop_p66i32_arrayidx41677_pop35_bicg46_out_data_out_2(DELAY,380)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_pop_p66i32_arrayidx41677_pop35_bicg46_out_data_out_2_q <= '0;
        end
        else
        begin
            redist23_i_llvm_fpga_pop_p66i32_arrayidx41677_pop35_bicg46_out_data_out_2_q <= $unsigned(redist22_i_llvm_fpga_pop_p66i32_arrayidx41677_pop35_bicg46_out_data_out_1_q);
        end
    end

    // i_masked39_bicg45(LOGICAL,103)@2 + 1
    assign i_masked39_bicg45_qi = i_notcmp26_bicg38_q & i_first_cleanup35_bicg3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked39_bicg45_delay ( .xin(i_masked39_bicg45_qi), .xout(i_masked39_bicg45_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist21_i_masked39_bicg45_q_10(DELAY,378)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist21_i_masked39_bicg45_q_10 ( .xin(i_masked39_bicg45_q), .xout(redist21_i_masked39_bicg45_q_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg14(REG,220)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist13_sync_together114_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg15(REG,221)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist14_sync_together114_aunroll_x_in_i_valid_9_q);
        end
    end

    // i_llvm_fpga_push_i32_tmp_q_039_push31_bicg32(BLACKBOX,99)@11
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    bicg_i_llvm_fpga_push_i32_tmp_q_039_push31_0 thei_llvm_fpga_push_i32_tmp_q_039_push31_bicg32 (
        .in_data_in(bgTrunc_i_add60_bicg31_sel_x_b),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_i32_tmp_q_039_pop31_bicg30_out_feedback_stall_out_31),
        .in_keep_going30(redist32_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_10_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_i32_tmp_q_039_push31_bicg32_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_i32_tmp_q_039_push31_bicg32_out_feedback_valid_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_notEnable(LOGICAL,401)
    assign redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_nor(LOGICAL,402)
    assign redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_nor_q = ~ (redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_notEnable_q | redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_sticky_ena_q);

    // redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_mem_last(CONSTANT,398)
    assign redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_mem_last_q = $unsigned(4'b0110);

    // redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_cmp(LOGICAL,399)
    assign redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_cmp_b = {1'b0, redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_rdcnt_q};
    assign redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_cmp_q = $unsigned(redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_mem_last_q == redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_cmpReg(REG,400)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_cmpReg_q <= $unsigned(redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_cmp_q);
        end
    end

    // redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_sticky_ena(REG,403)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_nor_q == 1'b1)
        begin
            redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_sticky_ena_q <= $unsigned(redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_cmpReg_q);
        end
    end

    // redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_enaAnd(LOGICAL,404)
    assign redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_enaAnd_q = redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_sticky_ena_q & VCC_q;

    // redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_rdcnt(COUNTER,396)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_rdcnt_i <= 3'd0;
        end
        else
        begin
            redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_rdcnt_i <= $unsigned(redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_rdcnt_i) + $unsigned(3'd1);
        end
    end
    assign redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_rdcnt_q = redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_rdcnt_i[2:0];

    // redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_wraddr(REG,397)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_wraddr_q <= $unsigned(3'b111);
        end
        else
        begin
            redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_wraddr_q <= $unsigned(redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_rdcnt_q);
        end
    end

    // redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_mem(DUALMEM,395)
    assign redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_mem_ia = $unsigned(in_c0_eni7_4_tpl);
    assign redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_mem_aa = redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_wraddr_q;
    assign redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_mem_ab = redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_rdcnt_q;
    assign redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_mem_reset0 = ~ (resetn);
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
    ) redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_mem_dmem (
        .clocken1(redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_mem_aa),
        .data_a(redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_mem_ab),
        .q_b(redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_mem_iq),
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
    assign redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_mem_q = redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_mem_iq[31:0];

    // i_llvm_fpga_pop_i32_tmp_q_039_pop31_bicg30(BLACKBOX,87)@10
    // out out_feedback_stall_out_31@20000000
    bicg_i_llvm_fpga_pop_i32_tmp_q_039_pop31_0 thei_llvm_fpga_pop_i32_tmp_q_039_pop31_bicg30 (
        .in_data_in(redist7_sync_together114_aunroll_x_in_c0_eni7_4_tpl_9_mem_q),
        .in_dir(redist4_sync_together114_aunroll_x_in_c0_eni7_1_tpl_9_q),
        .in_feedback_in_31(i_llvm_fpga_push_i32_tmp_q_039_push31_bicg32_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_i32_tmp_q_039_push31_bicg32_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(i_llvm_fpga_pop_i32_tmp_q_039_pop31_bicg30_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_i32_tmp_q_039_pop31_bicg30_out_feedback_stall_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist24_i_llvm_fpga_pop_i32_tmp_q_039_pop31_bicg30_out_data_out_1(DELAY,381)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_llvm_fpga_pop_i32_tmp_q_039_pop31_bicg30_out_data_out_1_q <= '0;
        end
        else
        begin
            redist24_i_llvm_fpga_pop_i32_tmp_q_039_pop31_bicg30_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_tmp_q_039_pop31_bicg30_out_data_out);
        end
    end

    // i_mul59_bicg29_bs1_merged_bit_select(BITSELECT,356)@7
    assign i_mul59_bicg29_bs1_merged_bit_select_b = i_llvm_fpga_mem_unnamed_bicg18_bicg28_out_o_readdata[31:18];
    assign i_mul59_bicg29_bs1_merged_bit_select_c = i_llvm_fpga_mem_unnamed_bicg18_bicg28_out_o_readdata[17:0];

    // i_mul59_bicg29_ma3_cma(CHAINMULTADD,348)@7 + 3
    assign i_mul59_bicg29_ma3_cma_reset = ~ (resetn);
    assign i_mul59_bicg29_ma3_cma_ena0 = 1'b1;
    assign i_mul59_bicg29_ma3_cma_ena1 = i_mul59_bicg29_ma3_cma_ena0;
    assign i_mul59_bicg29_ma3_cma_ena2 = i_mul59_bicg29_ma3_cma_ena0;

    assign i_mul59_bicg29_ma3_cma_a0 = i_mul59_bicg29_bs1_merged_bit_select_b;
    assign i_mul59_bicg29_ma3_cma_c0 = i_mul59_bicg29_bs2_merged_bit_select_c;
    assign i_mul59_bicg29_ma3_cma_a1 = i_mul59_bicg29_bs2_merged_bit_select_b;
    assign i_mul59_bicg29_ma3_cma_c1 = i_mul59_bicg29_bs1_merged_bit_select_c;
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
    ) i_mul59_bicg29_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul59_bicg29_ma3_cma_ena2, i_mul59_bicg29_ma3_cma_ena1, i_mul59_bicg29_ma3_cma_ena0 }),
        .aclr({ i_mul59_bicg29_ma3_cma_reset, i_mul59_bicg29_ma3_cma_reset }),
        .ay(i_mul59_bicg29_ma3_cma_a1),
        .by(i_mul59_bicg29_ma3_cma_a0),
        .ax(i_mul59_bicg29_ma3_cma_c1),
        .bx(i_mul59_bicg29_ma3_cma_c0),
        .resulta(i_mul59_bicg29_ma3_cma_s0),
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
    i_mul59_bicg29_ma3_cma_delay ( .xin(i_mul59_bicg29_ma3_cma_s0), .xout(i_mul59_bicg29_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul59_bicg29_ma3_cma_q = $unsigned(i_mul59_bicg29_ma3_cma_qq[32:0]);

    // i_mul59_bicg29_sums_align_1(BITSHIFT,254)@10
    assign i_mul59_bicg29_sums_align_1_qint = { i_mul59_bicg29_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul59_bicg29_sums_align_1_q = i_mul59_bicg29_sums_align_1_qint[50:0];

    // i_mul59_bicg29_im0_cma(CHAINMULTADD,344)@7 + 3
    assign i_mul59_bicg29_im0_cma_reset = ~ (resetn);
    assign i_mul59_bicg29_im0_cma_ena0 = 1'b1;
    assign i_mul59_bicg29_im0_cma_ena1 = i_mul59_bicg29_im0_cma_ena0;
    assign i_mul59_bicg29_im0_cma_ena2 = i_mul59_bicg29_im0_cma_ena0;

    assign i_mul59_bicg29_im0_cma_a0 = i_mul59_bicg29_bs1_merged_bit_select_b;
    assign i_mul59_bicg29_im0_cma_c0 = i_mul59_bicg29_bs2_merged_bit_select_b;
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
    ) i_mul59_bicg29_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul59_bicg29_im0_cma_ena2, i_mul59_bicg29_im0_cma_ena1, i_mul59_bicg29_im0_cma_ena0 }),
        .aclr({ i_mul59_bicg29_im0_cma_reset, i_mul59_bicg29_im0_cma_reset }),
        .ay(i_mul59_bicg29_im0_cma_a0),
        .ax(i_mul59_bicg29_im0_cma_c0),
        .resulta(i_mul59_bicg29_im0_cma_s0),
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
    i_mul59_bicg29_im0_cma_delay ( .xin(i_mul59_bicg29_im0_cma_s0), .xout(i_mul59_bicg29_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul59_bicg29_im0_cma_q = $unsigned(i_mul59_bicg29_im0_cma_qq[27:0]);

    // i_mul59_bicg29_im8_cma(CHAINMULTADD,345)@7 + 3
    assign i_mul59_bicg29_im8_cma_reset = ~ (resetn);
    assign i_mul59_bicg29_im8_cma_ena0 = 1'b1;
    assign i_mul59_bicg29_im8_cma_ena1 = i_mul59_bicg29_im8_cma_ena0;
    assign i_mul59_bicg29_im8_cma_ena2 = i_mul59_bicg29_im8_cma_ena0;

    assign i_mul59_bicg29_im8_cma_a0 = i_mul59_bicg29_bs1_merged_bit_select_c;
    assign i_mul59_bicg29_im8_cma_c0 = i_mul59_bicg29_bs2_merged_bit_select_c;
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
    ) i_mul59_bicg29_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul59_bicg29_im8_cma_ena2, i_mul59_bicg29_im8_cma_ena1, i_mul59_bicg29_im8_cma_ena0 }),
        .aclr({ i_mul59_bicg29_im8_cma_reset, i_mul59_bicg29_im8_cma_reset }),
        .ay(i_mul59_bicg29_im8_cma_a0),
        .ax(i_mul59_bicg29_im8_cma_c0),
        .resulta(i_mul59_bicg29_im8_cma_s0),
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
    i_mul59_bicg29_im8_cma_delay ( .xin(i_mul59_bicg29_im8_cma_s0), .xout(i_mul59_bicg29_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul59_bicg29_im8_cma_q = $unsigned(i_mul59_bicg29_im8_cma_qq[35:0]);

    // i_mul59_bicg29_sums_join_0(BITJOIN,253)@10
    assign i_mul59_bicg29_sums_join_0_q = {i_mul59_bicg29_im0_cma_q, i_mul59_bicg29_im8_cma_q};

    // i_mul59_bicg29_sums_result_add_0_0(ADD,256)@10
    assign i_mul59_bicg29_sums_result_add_0_0_a = {1'b0, i_mul59_bicg29_sums_join_0_q};
    assign i_mul59_bicg29_sums_result_add_0_0_b = {14'b00000000000000, i_mul59_bicg29_sums_align_1_q};
    assign i_mul59_bicg29_sums_result_add_0_0_o = $unsigned(i_mul59_bicg29_sums_result_add_0_0_a) + $unsigned(i_mul59_bicg29_sums_result_add_0_0_b);
    assign i_mul59_bicg29_sums_result_add_0_0_q = i_mul59_bicg29_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul59_bicg29_sel_x(BITSELECT,121)@10
    assign bgTrunc_i_mul59_bicg29_sel_x_in = i_mul59_bicg29_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul59_bicg29_sel_x_b = bgTrunc_i_mul59_bicg29_sel_x_in[31:0];

    // redist19_bgTrunc_i_mul59_bicg29_sel_x_b_1(DELAY,376)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_bgTrunc_i_mul59_bicg29_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist19_bgTrunc_i_mul59_bicg29_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul59_bicg29_sel_x_b);
        end
    end

    // i_add60_bicg31(ADD,48)@11
    assign i_add60_bicg31_a = {1'b0, redist19_bgTrunc_i_mul59_bicg29_sel_x_b_1_q};
    assign i_add60_bicg31_b = {1'b0, redist24_i_llvm_fpga_pop_i32_tmp_q_039_pop31_bicg30_out_data_out_1_q};
    assign i_add60_bicg31_o = $unsigned(i_add60_bicg31_a) + $unsigned(i_add60_bicg31_b);
    assign i_add60_bicg31_q = i_add60_bicg31_o[32:0];

    // bgTrunc_i_add60_bicg31_sel_x(BITSELECT,117)@11
    assign bgTrunc_i_add60_bicg31_sel_x_b = i_add60_bicg31_q[31:0];

    // redist20_bgTrunc_i_add60_bicg31_sel_x_b_1(DELAY,377)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_bgTrunc_i_add60_bicg31_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist20_bgTrunc_i_add60_bicg31_sel_x_b_1_q <= $unsigned(bgTrunc_i_add60_bicg31_sel_x_b);
        end
    end

    // redist33_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_11(DELAY,390)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_11_q <= '0;
        end
        else
        begin
            redist33_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_11_q <= $unsigned(redist32_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_10_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,204)@12
    assign out_c0_exi7138_0_tpl = GND_q;
    assign out_c0_exi7138_1_tpl = redist33_i_llvm_fpga_pipeline_keep_going30_bicg6_out_data_out_11_q;
    assign out_c0_exi7138_2_tpl = i_llvm_fpga_mem_memdep_6_bicg26_out_o_writeack;
    assign out_c0_exi7138_3_tpl = redist20_bgTrunc_i_add60_bicg31_sel_x_b_1_q;
    assign out_c0_exi7138_4_tpl = redist21_i_masked39_bicg45_q_10_q;
    assign out_c0_exi7138_5_tpl = redist23_i_llvm_fpga_pop_p66i32_arrayidx41677_pop35_bicg46_out_data_out_2_q;
    assign out_c0_exi7138_6_tpl = redist28_i_llvm_fpga_pop_i1_exitcond1678_pop36_bicg48_out_data_out_2_q;
    assign out_c0_exi7138_7_tpl = redist26_i_llvm_fpga_pop_i1_notcmp4279_pop37_bicg50_out_data_out_10_q;
    assign out_o_valid = redist0_valid_fanout_reg0_q_1_q;
    assign out_unnamed_bicg1 = GND_q;

endmodule
