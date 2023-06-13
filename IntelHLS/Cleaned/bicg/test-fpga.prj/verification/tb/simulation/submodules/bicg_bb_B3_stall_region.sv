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

// SystemVerilog created from bb_bicg_B3_stall_region
// Created for function/kernel bicg
// SystemVerilog created on Tue Jun 13 02:00:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module bicg_bb_B3_stall_region (
    input wire [31:0] in_unnamed_bicg14_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg14_bicg_avm_writeack,
    input wire [0:0] in_unnamed_bicg14_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg14_bicg_avm_readdatavalid,
    output wire [31:0] out_unnamed_bicg12_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg12_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg12_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg12_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg12_bicg_avm_writedata,
    output wire [3:0] out_unnamed_bicg12_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg12_bicg_avm_burstcount,
    output wire [31:0] out_add12,
    output wire [0:0] out_exitcond1434_pop24,
    output wire [63:0] out_mPtr_bitcast_index8030_pop20,
    output wire [0:0] out_masked,
    output wire [0:0] out_memdep,
    output wire [0:0] out_notcmp2035_pop25,
    output wire [0:0] out_toi1_intcast4,
    output wire [0:0] out_valid_out,
    input wire [31:0] in_unnamed_bicg15_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg15_bicg_avm_writeack,
    input wire [0:0] in_unnamed_bicg15_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg15_bicg_avm_readdatavalid,
    output wire [31:0] out_unnamed_bicg14_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg14_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg14_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg14_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg14_bicg_avm_writedata,
    output wire [3:0] out_unnamed_bicg14_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg14_bicg_avm_burstcount,
    input wire [31:0] in_memdep_bicg_avm_readdata,
    input wire [0:0] in_memdep_bicg_avm_writeack,
    input wire [0:0] in_memdep_bicg_avm_waitrequest,
    input wire [0:0] in_memdep_bicg_avm_readdatavalid,
    output wire [31:0] out_unnamed_bicg15_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg15_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg15_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg15_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg15_bicg_avm_writedata,
    output wire [3:0] out_unnamed_bicg15_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg15_bicg_avm_burstcount,
    input wire [31:0] in_unnamed_bicg16_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg16_bicg_avm_writeack,
    input wire [0:0] in_unnamed_bicg16_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg16_bicg_avm_readdatavalid,
    output wire [31:0] out_memdep_bicg_avm_address,
    output wire [0:0] out_memdep_bicg_avm_enable,
    output wire [0:0] out_memdep_bicg_avm_read,
    output wire [0:0] out_memdep_bicg_avm_write,
    output wire [31:0] out_memdep_bicg_avm_writedata,
    output wire [3:0] out_memdep_bicg_avm_byteenable,
    output wire [0:0] out_memdep_bicg_avm_burstcount,
    output wire [0:0] out_lsu_memdep_o_active,
    output wire [31:0] out_unnamed_bicg16_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg16_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg16_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg16_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg16_bicg_avm_writedata,
    output wire [3:0] out_unnamed_bicg16_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg16_bicg_avm_burstcount,
    input wire [31:0] in_unnamed_bicg12_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg12_bicg_avm_writeack,
    input wire [0:0] in_unnamed_bicg12_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg12_bicg_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_bicg4_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_bicg4_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [63:0] in_intel_reserved_ffwd_4_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_exitcond1442,
    input wire [0:0] in_forked,
    input wire [63:0] in_mPtr_bitcast_index8038,
    input wire [63:0] in_mPtr_bitcast_index8441,
    input wire [0:0] in_memdep_phi5_pop1144,
    input wire [0:0] in_memdep_phi7_pop1245,
    input wire [0:0] in_memdep_phi_pop1039,
    input wire [31:0] in_mul40,
    input wire [0:0] in_notcmp2043,
    input wire [31:0] in_unnamed_bicg10,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] bgTrunc_i_add12_bicg49_sel_x_b;
    wire [31:0] bgTrunc_i_add8_bicg33_sel_x_b;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next_bicg61_sel_x_b;
    wire [31:0] bgTrunc_i_inc_bicg51_sel_x_b;
    wire [63:0] bgTrunc_i_mul11_bicg47_sel_x_in;
    wire [31:0] bgTrunc_i_mul11_bicg47_sel_x_b;
    wire [63:0] bgTrunc_i_mul7_bicg32_sel_x_in;
    wire [31:0] bgTrunc_i_mul7_bicg32_sel_x_b;
    wire [0:0] bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [63:0] bicg_B3_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] bicg_B3_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [31:0] bicg_B3_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [31:0] bicg_B3_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [63:0] bicg_B3_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [0:0] bicg_B3_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [0:0] bicg_B3_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [0:0] bicg_B3_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [0:0] bicg_B3_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [0:0] bicg_B3_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] bicg_B3_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] i_first_cleanup_bicg1_sel_x_b;
    wire [0:0] i_last_initeration_bicg8_sel_x_b;
    wire [63:0] i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b;
    wire [1:0] i_mptr_bitcast_index76_bicg0_c_i2_01_x_q;
    wire [63:0] i_mptr_bitcast_index82_bicg0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_mptr_bitcast_index_bicg0_dupName_0_trunc_sel_x_b;
    wire [0:0] i_toi1_intcast4_bicg45_sel_x_b;
    wire [1:0] c_i2_170_q;
    wire [31:0] c_i32_073_q;
    wire [31:0] c_i32_174_q;
    wire [5:0] c_i6_177_q;
    wire [5:0] c_i6_2875_q;
    wire [32:0] i_add12_bicg49_a;
    wire [32:0] i_add12_bicg49_b;
    logic [32:0] i_add12_bicg49_o;
    wire [32:0] i_add12_bicg49_q;
    wire [32:0] i_add8_bicg33_a;
    wire [32:0] i_add8_bicg33_b;
    logic [32:0] i_add8_bicg33_o;
    wire [32:0] i_add8_bicg33_q;
    wire [32:0] i_add_bicg13_a;
    wire [32:0] i_add_bicg13_b;
    logic [32:0] i_add_bicg13_o;
    wire [32:0] i_add_bicg13_q;
    wire [1:0] i_cleanups_shl_bicg3_vt_join_q;
    wire [0:0] i_cleanups_shl_bicg3_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor_bicg2_q;
    wire [6:0] i_fpga_indvars_iv_next_bicg61_a;
    wire [6:0] i_fpga_indvars_iv_next_bicg61_b;
    logic [6:0] i_fpga_indvars_iv_next_bicg61_o;
    wire [6:0] i_fpga_indvars_iv_next_bicg61_q;
    wire [32:0] i_inc_bicg51_a;
    wire [32:0] i_inc_bicg51_b;
    logic [32:0] i_inc_bicg51_o;
    wire [32:0] i_inc_bicg51_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_out_dest_data_out_4_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_out_valid_out;
    wire [0:0] i_llvm_fpga_mem_memdep_bicg39_out_lsu_memdep_o_active;
    wire [31:0] i_llvm_fpga_mem_memdep_bicg39_out_memdep_bicg_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_bicg39_out_memdep_bicg_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_bicg39_out_memdep_bicg_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_bicg39_out_memdep_bicg_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_bicg39_out_memdep_bicg_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_bicg39_out_memdep_bicg_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_bicg39_out_memdep_bicg_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_bicg39_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_bicg39_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_bicg39_out_o_writeack;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg12_bicg24_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg12_bicg24_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg12_bicg24_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg12_bicg24_out_unnamed_bicg12_bicg_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg12_bicg24_out_unnamed_bicg12_bicg_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_bicg12_bicg24_out_unnamed_bicg12_bicg_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg12_bicg24_out_unnamed_bicg12_bicg_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg12_bicg24_out_unnamed_bicg12_bicg_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg12_bicg24_out_unnamed_bicg12_bicg_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg12_bicg24_out_unnamed_bicg12_bicg_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg14_bicg28_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg14_bicg28_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg14_bicg28_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg14_bicg28_out_unnamed_bicg14_bicg_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg14_bicg28_out_unnamed_bicg14_bicg_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_bicg14_bicg28_out_unnamed_bicg14_bicg_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg14_bicg28_out_unnamed_bicg14_bicg_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg14_bicg28_out_unnamed_bicg14_bicg_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg14_bicg28_out_unnamed_bicg14_bicg_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg14_bicg28_out_unnamed_bicg14_bicg_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg15_bicg31_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg15_bicg31_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg15_bicg31_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg15_bicg31_out_unnamed_bicg15_bicg_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg15_bicg31_out_unnamed_bicg15_bicg_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_bicg15_bicg31_out_unnamed_bicg15_bicg_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg15_bicg31_out_unnamed_bicg15_bicg_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg15_bicg31_out_unnamed_bicg15_bicg_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg15_bicg31_out_unnamed_bicg15_bicg_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg15_bicg31_out_unnamed_bicg15_bicg_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg16_bicg44_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg16_bicg44_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg16_bicg44_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg16_bicg44_out_unnamed_bicg16_bicg_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg16_bicg44_out_unnamed_bicg16_bicg_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_bicg16_bicg44_out_unnamed_bicg16_bicg_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg16_bicg44_out_unnamed_bicg16_bicg_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg16_bicg44_out_unnamed_bicg16_bicg_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg16_bicg44_out_unnamed_bicg16_bicg_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg16_bicg44_out_unnamed_bicg16_bicg_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_bicg4_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_bicg4_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_bicg4_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_bicg4_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_bicg4_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_bicg4_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_bicg4_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_feedback_stall_out_24;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_out_feedback_stall_out_16;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop17_bicg37_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop17_bicg37_out_feedback_stall_out_17;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop17_bicg37_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop17_bicg37_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_feedback_stall_out_26;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_feedback_stall_out_27;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_feedback_stall_out_21;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_feedback_stall_out_25;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_valid_out;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_feedback_stall_out_19;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_valid_out;
    wire [1:0] i_llvm_fpga_pop_i2_initerations_pop18_bicg5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop18_bicg5_out_feedback_stall_out_18;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop18_bicg5_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop18_bicg5_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_feedback_stall_out_15;
    wire [0:0] i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_feedback_stall_out_22;
    wire [0:0] i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_feedback_stall_out_14;
    wire [0:0] i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_valid_out;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_out_feedback_stall_out_13;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_out_valid_out;
    wire [63:0] i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_feedback_stall_out_20;
    wire [0:0] i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_valid_out;
    wire [63:0] i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_feedback_stall_out_23;
    wire [0:0] i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1434_push24_bicg67_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1434_push24_bicg67_out_feedback_valid_out_24;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1434_push24_bicg67_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1434_push24_bicg67_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_bicg9_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_bicg9_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_bicg9_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_bicg9_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_push16_bicg40_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_push16_bicg40_out_feedback_valid_out_16;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_push16_bicg40_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_push16_bicg40_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_push17_bicg46_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_push17_bicg46_out_feedback_valid_out_17;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_push17_bicg46_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_push17_bicg46_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi5_pop1136_push26_bicg35_out_feedback_out_26;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi5_pop1136_push26_bicg35_out_feedback_valid_out_26;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi5_pop1136_push26_bicg35_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi5_pop1136_push26_bicg35_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi7_pop1237_push27_bicg20_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi7_pop1237_push27_bicg20_out_feedback_valid_out_27;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi7_pop1237_push27_bicg20_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi7_pop1237_push27_bicg20_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1031_push21_bicg18_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1031_push21_bicg18_out_feedback_valid_out_21;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1031_push21_bicg18_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1031_push21_bicg18_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2035_push25_bicg69_out_feedback_out_25;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2035_push25_bicg69_out_feedback_valid_out_25;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2035_push25_bicg69_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2035_push25_bicg69_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_bicg57_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_bicg57_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_bicg57_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_bicg57_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push19_bicg60_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push19_bicg60_out_feedback_valid_out_19;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push19_bicg60_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push19_bicg60_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i2_initerations_push18_bicg7_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push18_bicg7_out_feedback_valid_out_18;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push18_bicg7_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push18_bicg7_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_j_070_push15_bicg52_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i32_j_070_push15_bicg52_out_feedback_valid_out_15;
    wire [0:0] i_llvm_fpga_push_i32_j_070_push15_bicg52_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_j_070_push15_bicg52_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_mul32_push22_bicg12_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_i32_mul32_push22_bicg12_out_feedback_valid_out_22;
    wire [0:0] i_llvm_fpga_push_i32_mul32_push22_bicg12_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_mul32_push22_bicg12_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_out_feedback_valid_out_14;
    wire [0:0] i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push13_bicg62_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push13_bicg62_out_feedback_valid_out_13;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push13_bicg62_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push13_bicg62_out_valid_out;
    wire [63:0] i_llvm_fpga_push_p1025i32_mptr_bitcast_index8030_push20_bicg65_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_p1025i32_mptr_bitcast_index8030_push20_bicg65_out_feedback_valid_out_20;
    wire [0:0] i_llvm_fpga_push_p1025i32_mptr_bitcast_index8030_push20_bicg65_out_stall_out;
    wire [0:0] i_llvm_fpga_push_p1025i32_mptr_bitcast_index8030_push20_bicg65_out_valid_out;
    wire [63:0] i_llvm_fpga_push_p1025i32_mptr_bitcast_index8433_push23_bicg30_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_p1025i32_mptr_bitcast_index8433_push23_bicg30_out_feedback_valid_out_23;
    wire [0:0] i_llvm_fpga_push_p1025i32_mptr_bitcast_index8433_push23_bicg30_out_stall_out;
    wire [0:0] i_llvm_fpga_push_p1025i32_mptr_bitcast_index8433_push23_bicg30_out_valid_out;
    wire [0:0] i_masked_bicg63_qi;
    reg [0:0] i_masked_bicg63_q;
    wire [0:0] i_memdep_phi7_or11_bicg43_q;
    wire [0:0] i_next_cleanups_bicg59_s;
    reg [1:0] i_next_cleanups_bicg59_q;
    wire [1:0] i_next_initerations_bicg6_vt_join_q;
    wire [0:0] i_next_initerations_bicg6_vt_select_0_b;
    wire [0:0] i_notcmp_bicg56_q;
    wire [0:0] i_or_bicg58_q;
    wire [0:0] i_reduction_bicg_0_bicg21_q;
    wire [0:0] i_reduction_bicg_1_bicg23_q;
    wire [0:0] i_reduction_bicg_4_bicg36_q;
    wire [0:0] i_reduction_bicg_5_bicg38_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid261_i_cleanups_shl_bicg0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid261_i_cleanups_shl_bicg0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid262_i_cleanups_shl_bicg0_shift_x_q;
    wire [0:0] leftShiftStage0_uid264_i_cleanups_shl_bicg0_shift_x_s;
    reg [1:0] leftShiftStage0_uid264_i_cleanups_shl_bicg0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid268_i_next_initerations_bicg0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid270_i_next_initerations_bicg0_shift_x_q;
    wire [0:0] rightShiftStage0_uid272_i_next_initerations_bicg0_shift_x_s;
    reg [1:0] rightShiftStage0_uid272_i_next_initerations_bicg0_shift_x_q;
    wire [0:0] i_exitcond_bicg54_cmp_nsign_q;
    wire [17:0] i_mul11_bicg47_bs1_in;
    wire [17:0] i_mul11_bicg47_bs1_b;
    wire [13:0] i_mul11_bicg47_bs6_b;
    wire [50:0] i_mul11_bicg47_sums_align_1_q;
    wire [50:0] i_mul11_bicg47_sums_align_1_qint;
    wire [50:0] i_mul7_bicg32_sums_align_1_q;
    wire [50:0] i_mul7_bicg32_sums_align_1_qint;
    wire i_mul11_bicg47_im0_cma_reset;
    (* preserve *) reg [17:0] i_mul11_bicg47_im0_cma_a0 [0:0];
    (* preserve *) reg [17:0] i_mul11_bicg47_im0_cma_c0 [0:0];
    wire [35:0] i_mul11_bicg47_im0_cma_p [0:0];
    wire [35:0] i_mul11_bicg47_im0_cma_u [0:0];
    wire [35:0] i_mul11_bicg47_im0_cma_w [0:0];
    wire [35:0] i_mul11_bicg47_im0_cma_x [0:0];
    wire [35:0] i_mul11_bicg47_im0_cma_y [0:0];
    reg [35:0] i_mul11_bicg47_im0_cma_s [0:0];
    wire [35:0] i_mul11_bicg47_im0_cma_qq;
    wire [35:0] i_mul11_bicg47_im0_cma_q;
    wire i_mul11_bicg47_im0_cma_ena0;
    wire i_mul11_bicg47_im0_cma_ena1;
    wire i_mul11_bicg47_im8_cma_reset;
    (* preserve *) reg [13:0] i_mul11_bicg47_im8_cma_a0 [0:0];
    (* preserve *) reg [13:0] i_mul11_bicg47_im8_cma_c0 [0:0];
    wire [27:0] i_mul11_bicg47_im8_cma_p [0:0];
    wire [27:0] i_mul11_bicg47_im8_cma_u [0:0];
    wire [27:0] i_mul11_bicg47_im8_cma_w [0:0];
    wire [27:0] i_mul11_bicg47_im8_cma_x [0:0];
    wire [27:0] i_mul11_bicg47_im8_cma_y [0:0];
    reg [27:0] i_mul11_bicg47_im8_cma_s [0:0];
    wire [27:0] i_mul11_bicg47_im8_cma_qq;
    wire [27:0] i_mul11_bicg47_im8_cma_q;
    wire i_mul11_bicg47_im8_cma_ena0;
    wire i_mul11_bicg47_im8_cma_ena1;
    wire i_mul7_bicg32_im0_cma_reset;
    (* preserve *) reg [17:0] i_mul7_bicg32_im0_cma_a0 [0:0];
    (* preserve *) reg [17:0] i_mul7_bicg32_im0_cma_c0 [0:0];
    wire [35:0] i_mul7_bicg32_im0_cma_p [0:0];
    wire [35:0] i_mul7_bicg32_im0_cma_u [0:0];
    wire [35:0] i_mul7_bicg32_im0_cma_w [0:0];
    wire [35:0] i_mul7_bicg32_im0_cma_x [0:0];
    wire [35:0] i_mul7_bicg32_im0_cma_y [0:0];
    reg [35:0] i_mul7_bicg32_im0_cma_s [0:0];
    wire [35:0] i_mul7_bicg32_im0_cma_qq;
    wire [35:0] i_mul7_bicg32_im0_cma_q;
    wire i_mul7_bicg32_im0_cma_ena0;
    wire i_mul7_bicg32_im0_cma_ena1;
    wire i_mul7_bicg32_im8_cma_reset;
    (* preserve *) reg [13:0] i_mul7_bicg32_im8_cma_a0 [0:0];
    (* preserve *) reg [13:0] i_mul7_bicg32_im8_cma_c0 [0:0];
    wire [27:0] i_mul7_bicg32_im8_cma_p [0:0];
    wire [27:0] i_mul7_bicg32_im8_cma_u [0:0];
    wire [27:0] i_mul7_bicg32_im8_cma_w [0:0];
    wire [27:0] i_mul7_bicg32_im8_cma_x [0:0];
    wire [27:0] i_mul7_bicg32_im8_cma_y [0:0];
    reg [27:0] i_mul7_bicg32_im8_cma_s [0:0];
    wire [27:0] i_mul7_bicg32_im8_cma_qq;
    wire [27:0] i_mul7_bicg32_im8_cma_q;
    wire i_mul7_bicg32_im8_cma_ena0;
    wire i_mul7_bicg32_im8_cma_ena1;
    wire i_mul11_bicg47_ma3_cma_reset;
    (* preserve *) reg [13:0] i_mul11_bicg47_ma3_cma_a0 [0:1];
    (* preserve *) reg [17:0] i_mul11_bicg47_ma3_cma_c0 [0:1];
    wire [31:0] i_mul11_bicg47_ma3_cma_p [0:1];
    wire [32:0] i_mul11_bicg47_ma3_cma_u [0:1];
    wire [32:0] i_mul11_bicg47_ma3_cma_w [0:0];
    wire [32:0] i_mul11_bicg47_ma3_cma_x [0:0];
    wire [32:0] i_mul11_bicg47_ma3_cma_y [0:0];
    reg [32:0] i_mul11_bicg47_ma3_cma_s [0:0];
    wire [32:0] i_mul11_bicg47_ma3_cma_qq;
    wire [32:0] i_mul11_bicg47_ma3_cma_q;
    wire i_mul11_bicg47_ma3_cma_ena0;
    wire i_mul11_bicg47_ma3_cma_ena1;
    wire i_mul7_bicg32_ma3_cma_reset;
    (* preserve *) reg [13:0] i_mul7_bicg32_ma3_cma_a0 [0:1];
    (* preserve *) reg [17:0] i_mul7_bicg32_ma3_cma_c0 [0:1];
    wire [31:0] i_mul7_bicg32_ma3_cma_p [0:1];
    wire [32:0] i_mul7_bicg32_ma3_cma_u [0:1];
    wire [32:0] i_mul7_bicg32_ma3_cma_w [0:0];
    wire [32:0] i_mul7_bicg32_ma3_cma_x [0:0];
    wire [32:0] i_mul7_bicg32_ma3_cma_y [0:0];
    reg [32:0] i_mul7_bicg32_ma3_cma_s [0:0];
    wire [32:0] i_mul7_bicg32_ma3_cma_qq;
    wire [32:0] i_mul7_bicg32_ma3_cma_q;
    wire i_mul7_bicg32_ma3_cma_ena0;
    wire i_mul7_bicg32_ma3_cma_ena1;
    wire [60:0] i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_q;
    wire [60:0] i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index82_bicg0_add_x_BitJoin_for_q_q;
    wire [60:0] i_mptr_bitcast_index_bicg0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index_bicg0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index_bicg0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index_bicg0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index_bicg0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index_bicg0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index_bicg0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index_bicg0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index_bicg0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_q;
    wire [13:0] i_mul11_bicg47_sums_result_add_0_0_UpperBits_for_b_q;
    wire [60:0] i_mul11_bicg47_sums_result_add_0_0_p1_of_2_a;
    wire [60:0] i_mul11_bicg47_sums_result_add_0_0_p1_of_2_b;
    logic [60:0] i_mul11_bicg47_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_mul11_bicg47_sums_result_add_0_0_p1_of_2_c;
    wire [59:0] i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q;
    wire [6:0] i_mul11_bicg47_sums_result_add_0_0_p2_of_2_a;
    wire [6:0] i_mul11_bicg47_sums_result_add_0_0_p2_of_2_b;
    logic [6:0] i_mul11_bicg47_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_mul11_bicg47_sums_result_add_0_0_p2_of_2_cin;
    wire [4:0] i_mul11_bicg47_sums_result_add_0_0_p2_of_2_q;
    wire [64:0] i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_q;
    wire [60:0] i_mul7_bicg32_sums_result_add_0_0_p1_of_2_a;
    wire [60:0] i_mul7_bicg32_sums_result_add_0_0_p1_of_2_b;
    logic [60:0] i_mul7_bicg32_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_mul7_bicg32_sums_result_add_0_0_p1_of_2_c;
    wire [59:0] i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q;
    wire [6:0] i_mul7_bicg32_sums_result_add_0_0_p2_of_2_a;
    wire [6:0] i_mul7_bicg32_sums_result_add_0_0_p2_of_2_b;
    logic [6:0] i_mul7_bicg32_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_mul7_bicg32_sums_result_add_0_0_p2_of_2_cin;
    wire [4:0] i_mul7_bicg32_sums_result_add_0_0_p2_of_2_q;
    wire [64:0] i_mul7_bicg32_sums_result_add_0_0_BitJoin_for_q_q;
    wire [4:0] i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [25:0] i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_tessel0_2_b;
    wire [59:0] i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [3:0] i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_tessel1_0_b;
    wire [4:0] i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [4:0] i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [59:0] i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [4:0] i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [31:0] i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_tessel0_1_b;
    wire [59:0] i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [59:0] i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    wire [4:0] i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    wire [59:0] i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    wire [59:0] i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    wire [4:0] i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    wire [59:0] i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    wire [59:0] i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [59:0] i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [59:0] i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [17:0] i_mul11_bicg47_bs2_merged_bit_select_b;
    wire [13:0] i_mul11_bicg47_bs2_merged_bit_select_c;
    wire [17:0] i_mul7_bicg32_bs1_merged_bit_select_b;
    wire [13:0] i_mul7_bicg32_bs1_merged_bit_select_c;
    wire [23:0] i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b;
    wire [3:0] i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c;
    wire [23:0] i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b;
    wire [3:0] i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c;
    wire [8:0] i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b;
    wire [4:0] i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    wire [65:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [97:0] join_for_coalesced_delay_1_q;
    wire [63:0] sel_for_coalesced_delay_1_b;
    wire [31:0] sel_for_coalesced_delay_1_c;
    wire [0:0] sel_for_coalesced_delay_1_d;
    wire [0:0] sel_for_coalesced_delay_1_e;
    wire [31:0] join_for_coalesced_delay_2_q;
    wire [17:0] sel_for_coalesced_delay_2_b;
    wire [13:0] sel_for_coalesced_delay_2_c;
    wire [98:0] join_for_coalesced_delay_3_q;
    wire [63:0] sel_for_coalesced_delay_3_b;
    wire [31:0] sel_for_coalesced_delay_3_c;
    wire [0:0] sel_for_coalesced_delay_3_d;
    wire [0:0] sel_for_coalesced_delay_3_e;
    wire [0:0] sel_for_coalesced_delay_3_f;
    reg [3:0] redist0_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_q;
    reg [3:0] redist1_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_q;
    reg [3:0] redist4_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q;
    reg [3:0] redist5_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q;
    reg [3:0] redist6_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q;
    reg [31:0] redist7_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_tessel0_1_b_1_0_q;
    reg [59:0] redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_q;
    reg [59:0] redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_q;
    reg [59:0] redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_q;
    reg [59:0] redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_q;
    reg [59:0] redist12_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_q_1_0_q;
    reg [32:0] redist13_i_mul7_bicg32_ma3_cma_q_1_0_q;
    reg [32:0] redist14_i_mul11_bicg47_ma3_cma_q_1_0_q;
    reg [27:0] redist15_i_mul7_bicg32_im8_cma_q_1_0_q;
    reg [35:0] redist16_i_mul7_bicg32_im0_cma_q_1_0_q;
    reg [27:0] redist17_i_mul11_bicg47_im8_cma_q_1_0_q;
    reg [35:0] redist18_i_mul11_bicg47_im0_cma_q_1_0_q;
    reg [0:0] redist19_i_reduction_bicg_0_bicg21_q_5_0_q;
    reg [0:0] redist19_i_reduction_bicg_0_bicg21_q_5_1_q;
    reg [0:0] redist19_i_reduction_bicg_0_bicg21_q_5_2_q;
    reg [0:0] redist19_i_reduction_bicg_0_bicg21_q_5_3_q;
    reg [0:0] redist19_i_reduction_bicg_0_bicg21_q_5_4_q;
    wire [0:0] redist20_i_masked_bicg63_q_41_fifo_valid_in;
    wire redist20_i_masked_bicg63_q_41_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist20_i_masked_bicg63_q_41_fifo_stall_in;
    wire redist20_i_masked_bicg63_q_41_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist20_i_masked_bicg63_q_41_fifo_data_in;
    wire [0:0] redist20_i_masked_bicg63_q_41_fifo_valid_out;
    wire redist20_i_masked_bicg63_q_41_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist20_i_masked_bicg63_q_41_fifo_stall_out;
    wire redist20_i_masked_bicg63_q_41_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist20_i_masked_bicg63_q_41_fifo_data_out;
    wire [0:0] redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_valid_in;
    wire redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_stall_in;
    wire redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_stall_in_bitsignaltemp;
    wire [63:0] redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_data_in;
    wire [0:0] redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_valid_out;
    wire redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_stall_out;
    wire redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_stall_out_bitsignaltemp;
    wire [63:0] redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_data_out;
    reg [63:0] redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_0_q;
    reg [63:0] redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_1_q;
    reg [63:0] redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_q;
    reg [63:0] redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_3_q;
    reg [63:0] redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_q;
    reg [31:0] redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_0_q;
    reg [31:0] redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_1_q;
    reg [31:0] redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_q;
    reg [31:0] redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_3_q;
    reg [31:0] redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_q;
    wire [0:0] redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_valid_in;
    wire redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_stall_in;
    wire redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_data_in;
    wire [0:0] redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_valid_out;
    wire redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_stall_out;
    wire redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_data_out;
    reg [31:0] redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_0_q;
    reg [31:0] redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_1_q;
    reg [31:0] redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_q;
    reg [31:0] redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_3_q;
    reg [31:0] redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_q;
    reg [31:0] redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_q;
    wire [0:0] redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_valid_in;
    wire redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_stall_in;
    wire redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_data_in;
    wire [0:0] redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_valid_out;
    wire redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_stall_out;
    wire redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_data_out;
    reg [31:0] redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_q;
    wire [0:0] redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_valid_in;
    wire redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_stall_in;
    wire redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_stall_in_bitsignaltemp;
    wire [1:0] redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_data_in;
    wire [0:0] redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_valid_out;
    wire redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_stall_out;
    wire redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_stall_out_bitsignaltemp;
    wire [1:0] redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_data_out;
    reg [0:0] redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_0_q;
    reg [0:0] redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_1_q;
    reg [0:0] redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_q;
    reg [0:0] redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_3_q;
    reg [0:0] redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_q;
    reg [0:0] redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_0_q;
    reg [0:0] redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_1_q;
    reg [0:0] redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_q;
    wire [0:0] redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_valid_in;
    wire redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_stall_in;
    wire redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_data_in;
    wire [0:0] redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_valid_out;
    wire redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_stall_out;
    wire redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_data_out;
    wire [0:0] redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_valid_in;
    wire redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_stall_in;
    wire redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_data_in;
    wire [0:0] redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_valid_out;
    wire redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_stall_out;
    wire redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_data_out;
    wire [0:0] redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_valid_in;
    wire redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_stall_in;
    wire redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_data_in;
    wire [0:0] redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_valid_out;
    wire redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_stall_out;
    wire redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_data_out;
    wire [0:0] redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_valid_in;
    wire redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_stall_in;
    wire redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_data_in;
    wire [0:0] redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_valid_out;
    wire redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_stall_out;
    wire redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_data_out;
    wire [0:0] redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_valid_in;
    wire redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_stall_in;
    wire redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_data_in;
    wire [0:0] redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_valid_out;
    wire redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_stall_out;
    wire redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_data_out;
    reg [0:0] redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_0_q;
    reg [0:0] redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_1_q;
    reg [0:0] redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_q;
    reg [0:0] redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_3_q;
    reg [0:0] redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_q;
    reg [0:0] redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_0_q;
    reg [0:0] redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_q;
    reg [0:0] redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_q;
    wire [0:0] redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_valid_in;
    wire redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_stall_in;
    wire redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_data_in;
    wire [0:0] redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_valid_out;
    wire redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_stall_out;
    wire redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_data_out;
    reg [0:0] redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_q;
    reg [0:0] redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_1_q;
    reg [0:0] redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_q;
    reg [0:0] redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_3_q;
    reg [0:0] redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_q;
    wire [0:0] redist43_i_llvm_fpga_mem_memdep_bicg39_out_o_writeack_38_fifo_valid_in;
    wire redist43_i_llvm_fpga_mem_memdep_bicg39_out_o_writeack_38_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist43_i_llvm_fpga_mem_memdep_bicg39_out_o_writeack_38_fifo_stall_in;
    wire redist43_i_llvm_fpga_mem_memdep_bicg39_out_o_writeack_38_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist43_i_llvm_fpga_mem_memdep_bicg39_out_o_writeack_38_fifo_data_in;
    wire [0:0] redist43_i_llvm_fpga_mem_memdep_bicg39_out_o_writeack_38_fifo_valid_out;
    wire redist43_i_llvm_fpga_mem_memdep_bicg39_out_o_writeack_38_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist43_i_llvm_fpga_mem_memdep_bicg39_out_o_writeack_38_fifo_stall_out;
    wire redist43_i_llvm_fpga_mem_memdep_bicg39_out_o_writeack_38_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist43_i_llvm_fpga_mem_memdep_bicg39_out_o_writeack_38_fifo_data_out;
    reg [0:0] redist44_i_first_cleanup_xor_bicg2_q_5_0_q;
    reg [0:0] redist44_i_first_cleanup_xor_bicg2_q_5_1_q;
    reg [0:0] redist44_i_first_cleanup_xor_bicg2_q_5_2_q;
    reg [0:0] redist44_i_first_cleanup_xor_bicg2_q_5_3_q;
    reg [0:0] redist44_i_first_cleanup_xor_bicg2_q_5_4_q;
    wire [0:0] redist45_i_first_cleanup_xor_bicg2_q_37_fifo_valid_in;
    wire redist45_i_first_cleanup_xor_bicg2_q_37_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist45_i_first_cleanup_xor_bicg2_q_37_fifo_stall_in;
    wire redist45_i_first_cleanup_xor_bicg2_q_37_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist45_i_first_cleanup_xor_bicg2_q_37_fifo_data_in;
    wire [0:0] redist45_i_first_cleanup_xor_bicg2_q_37_fifo_valid_out;
    wire redist45_i_first_cleanup_xor_bicg2_q_37_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist45_i_first_cleanup_xor_bicg2_q_37_fifo_stall_out;
    wire redist45_i_first_cleanup_xor_bicg2_q_37_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist45_i_first_cleanup_xor_bicg2_q_37_fifo_data_out;
    wire [0:0] redist46_i_first_cleanup_xor_bicg2_q_65_fifo_valid_in;
    wire redist46_i_first_cleanup_xor_bicg2_q_65_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist46_i_first_cleanup_xor_bicg2_q_65_fifo_stall_in;
    wire redist46_i_first_cleanup_xor_bicg2_q_65_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist46_i_first_cleanup_xor_bicg2_q_65_fifo_data_in;
    wire [0:0] redist46_i_first_cleanup_xor_bicg2_q_65_fifo_valid_out;
    wire redist46_i_first_cleanup_xor_bicg2_q_65_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist46_i_first_cleanup_xor_bicg2_q_65_fifo_stall_out;
    wire redist46_i_first_cleanup_xor_bicg2_q_65_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist46_i_first_cleanup_xor_bicg2_q_65_fifo_data_out;
    reg [0:0] redist47_i_first_cleanup_xor_bicg2_q_68_0_q;
    reg [0:0] redist47_i_first_cleanup_xor_bicg2_q_68_1_q;
    reg [0:0] redist47_i_first_cleanup_xor_bicg2_q_68_2_q;
    reg [0:0] redist48_i_toi1_intcast4_bicg45_sel_x_b_5_0_q;
    reg [0:0] redist48_i_toi1_intcast4_bicg45_sel_x_b_5_1_q;
    reg [0:0] redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_q;
    reg [0:0] redist48_i_toi1_intcast4_bicg45_sel_x_b_5_3_q;
    reg [0:0] redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_q;
    wire [0:0] redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_valid_in;
    wire redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_stall_in;
    wire redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_stall_in_bitsignaltemp;
    wire [63:0] redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_data_in;
    wire [0:0] redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_valid_out;
    wire redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_stall_out;
    wire redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_stall_out_bitsignaltemp;
    wire [63:0] redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_data_out;
    wire [0:0] redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_valid_in;
    wire redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_stall_in;
    wire redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_data_in;
    wire [0:0] redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_valid_out;
    wire redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_stall_out;
    wire redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_data_out;
    wire [0:0] redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_valid_in;
    wire redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_stall_in;
    wire redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_data_in;
    wire [0:0] redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_valid_out;
    wire redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_stall_out;
    wire redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_data_out;
    wire [0:0] redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_valid_in;
    wire redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_stall_in;
    wire redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_data_in;
    wire [0:0] redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_valid_out;
    wire redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_stall_out;
    wire redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_data_out;
    wire [0:0] redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_valid_in;
    wire redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_stall_in;
    wire redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_data_in;
    wire [0:0] redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_valid_out;
    wire redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_stall_out;
    wire redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_data_out;
    reg [65:0] coalesced_delay_0_0_q;
    reg [65:0] coalesced_delay_0_1_q;
    reg [65:0] coalesced_delay_0_2_q;
    wire [0:0] coalesced_delay_1_fifo_valid_in;
    wire coalesced_delay_1_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_in;
    wire coalesced_delay_1_fifo_stall_in_bitsignaltemp;
    wire [97:0] coalesced_delay_1_fifo_data_in;
    wire [0:0] coalesced_delay_1_fifo_valid_out;
    wire coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_out;
    wire coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    wire [97:0] coalesced_delay_1_fifo_data_out;
    wire [0:0] coalesced_delay_2_fifo_valid_in;
    wire coalesced_delay_2_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_2_fifo_stall_in;
    wire coalesced_delay_2_fifo_stall_in_bitsignaltemp;
    wire [31:0] coalesced_delay_2_fifo_data_in;
    wire [0:0] coalesced_delay_2_fifo_valid_out;
    wire coalesced_delay_2_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_2_fifo_stall_out;
    wire coalesced_delay_2_fifo_stall_out_bitsignaltemp;
    wire [31:0] coalesced_delay_2_fifo_data_out;
    reg [98:0] coalesced_delay_3_0_q;
    wire [197:0] bubble_join_bicg_B3_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_bicg_B3_merge_reg_aunroll_x_b;
    wire [63:0] bubble_select_bicg_B3_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_bicg_B3_merge_reg_aunroll_x_d;
    wire [31:0] bubble_select_bicg_B3_merge_reg_aunroll_x_e;
    wire [31:0] bubble_select_bicg_B3_merge_reg_aunroll_x_f;
    wire [63:0] bubble_select_bicg_B3_merge_reg_aunroll_x_g;
    wire [0:0] bubble_select_bicg_B3_merge_reg_aunroll_x_h;
    wire [0:0] bubble_select_bicg_B3_merge_reg_aunroll_x_i;
    wire [0:0] bubble_select_bicg_B3_merge_reg_aunroll_x_j;
    wire [0:0] bubble_select_bicg_B3_merge_reg_aunroll_x_k;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_bicg39_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_bicg39_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_bicg12_bicg24_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_bicg12_bicg24_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_bicg14_bicg28_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_bicg14_bicg28_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_bicg15_bicg31_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_bicg15_bicg31_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_bicg16_bicg44_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_bicg16_bicg44_b;
    wire [0:0] bubble_join_i_llvm_fpga_pipeline_keep_going_bicg4_q;
    wire [0:0] bubble_select_i_llvm_fpga_pipeline_keep_going_bicg4_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi3_pop17_bicg37_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi3_pop17_bicg37_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_b;
    wire [1:0] bubble_join_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_q;
    wire [1:0] bubble_select_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_b;
    wire [1:0] bubble_join_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_q;
    wire [1:0] bubble_select_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_b;
    wire [5:0] bubble_join_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_q;
    wire [5:0] bubble_select_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_b;
    wire [63:0] bubble_join_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_q;
    wire [63:0] bubble_select_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_b;
    wire [63:0] bubble_join_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_q;
    wire [63:0] bubble_select_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_b;
    wire [197:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [63:0] bubble_select_stall_entry_d;
    wire [63:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [31:0] bubble_select_stall_entry_i;
    wire [0:0] bubble_select_stall_entry_j;
    wire [31:0] bubble_select_stall_entry_k;
    wire [35:0] bubble_join_i_mul11_bicg47_im0_cma_q;
    wire [35:0] bubble_select_i_mul11_bicg47_im0_cma_b;
    wire [27:0] bubble_join_i_mul11_bicg47_im8_cma_q;
    wire [27:0] bubble_select_i_mul11_bicg47_im8_cma_b;
    wire [35:0] bubble_join_i_mul7_bicg32_im0_cma_q;
    wire [35:0] bubble_select_i_mul7_bicg32_im0_cma_b;
    wire [27:0] bubble_join_i_mul7_bicg32_im8_cma_q;
    wire [27:0] bubble_select_i_mul7_bicg32_im8_cma_b;
    wire [32:0] bubble_join_i_mul11_bicg47_ma3_cma_q;
    wire [32:0] bubble_select_i_mul11_bicg47_ma3_cma_b;
    wire [32:0] bubble_join_i_mul7_bicg32_ma3_cma_q;
    wire [32:0] bubble_select_i_mul7_bicg32_ma3_cma_b;
    wire [0:0] bubble_join_redist20_i_masked_bicg63_q_41_fifo_q;
    wire [0:0] bubble_select_redist20_i_masked_bicg63_q_41_fifo_b;
    wire [63:0] bubble_join_redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_q;
    wire [63:0] bubble_select_redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_b;
    wire [31:0] bubble_join_redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_q;
    wire [31:0] bubble_select_redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_b;
    wire [31:0] bubble_join_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_q;
    wire [31:0] bubble_select_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_b;
    wire [1:0] bubble_join_redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_q;
    wire [1:0] bubble_select_redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_b;
    wire [0:0] bubble_join_redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_q;
    wire [0:0] bubble_select_redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_b;
    wire [0:0] bubble_join_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_q;
    wire [0:0] bubble_select_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_b;
    wire [0:0] bubble_join_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_q;
    wire [0:0] bubble_select_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_b;
    wire [0:0] bubble_join_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_q;
    wire [0:0] bubble_select_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_b;
    wire [0:0] bubble_join_redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_q;
    wire [0:0] bubble_select_redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_b;
    wire [0:0] bubble_join_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_q;
    wire [0:0] bubble_select_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_b;
    wire [0:0] bubble_join_redist43_i_llvm_fpga_mem_memdep_bicg39_out_o_writeack_38_fifo_q;
    wire [0:0] bubble_select_redist43_i_llvm_fpga_mem_memdep_bicg39_out_o_writeack_38_fifo_b;
    wire [0:0] bubble_join_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_q;
    wire [0:0] bubble_select_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_b;
    wire [0:0] bubble_join_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_q;
    wire [0:0] bubble_select_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_b;
    wire [63:0] bubble_join_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_q;
    wire [63:0] bubble_select_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_b;
    wire [0:0] bubble_join_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_q;
    wire [0:0] bubble_select_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_b;
    wire [0:0] bubble_join_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_q;
    wire [0:0] bubble_select_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_b;
    wire [0:0] bubble_join_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_q;
    wire [0:0] bubble_select_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_b;
    wire [0:0] bubble_join_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_q;
    wire [0:0] bubble_select_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_b;
    wire [97:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [97:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [31:0] bubble_join_coalesced_delay_2_fifo_q;
    wire [31:0] bubble_select_coalesced_delay_2_fifo_b;
    wire [0:0] SE_bgTrunc_i_inc_bicg51_sel_x_wireValid;
    wire [0:0] SE_bgTrunc_i_inc_bicg51_sel_x_backStall;
    wire [0:0] SE_bgTrunc_i_inc_bicg51_sel_x_V0;
    wire [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_toReg4;
    reg [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_fromReg4;
    wire [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_consumed4;
    wire [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_toReg5;
    reg [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_fromReg5;
    wire [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_consumed5;
    wire [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_toReg6;
    reg [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_fromReg6;
    wire [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_consumed6;
    wire [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_toReg7;
    reg [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_fromReg7;
    wire [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_consumed7;
    wire [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_or3;
    wire [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_or4;
    wire [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_or5;
    wire [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_or6;
    wire [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_V4;
    wire [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_V5;
    wire [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_V6;
    wire [0:0] SE_out_bicg_B3_merge_reg_aunroll_x_V7;
    wire [0:0] SE_i_add_bicg13_wireValid;
    wire [0:0] SE_i_add_bicg13_and0;
    wire [0:0] SE_i_add_bicg13_backStall;
    wire [0:0] SE_i_add_bicg13_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_bicg39_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_bicg39_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_bicg39_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_bicg39_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_bicg39_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_bicg39_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_bicg39_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_bicg39_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_bicg39_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_bicg39_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_bicg39_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_bicg39_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_bicg39_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_bicg39_or1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_bicg39_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_bicg39_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_bicg39_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_bicg39_V2;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_V1;
    wire [0:0] SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_backStall;
    wire [0:0] SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_V0;
    wire [0:0] SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_backStall;
    wire [0:0] SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg15_bicg31_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg15_bicg31_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg15_bicg31_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_or1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_V2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_toReg5;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_fromReg5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_consumed5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_toReg6;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_fromReg6;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_consumed6;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_toReg7;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_fromReg7;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_consumed7;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_toReg8;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_fromReg8;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_consumed8;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_or0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_or1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_or2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_or3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_or4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_or5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_or6;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_or7;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_V0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_V2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_V3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_V4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_V5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_V6;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_V7;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_V8;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_or3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_V4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_or3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_V4;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_V1;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond1434_push24_bicg67_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond1434_push24_bicg67_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond1434_push24_bicg67_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond1434_push24_bicg67_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_exitcond1434_push24_bicg67_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_exitcond1434_push24_bicg67_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_bicg9_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_bicg9_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi1_push16_bicg40_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi1_push16_bicg40_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi1_push16_bicg40_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi1_push16_bicg40_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi1_push16_bicg40_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi1_push16_bicg40_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi3_push17_bicg46_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi3_push17_bicg46_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi3_push17_bicg46_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi3_push17_bicg46_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi3_push17_bicg46_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi3_push17_bicg46_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi5_pop1136_push26_bicg35_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi5_pop1136_push26_bicg35_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi7_pop1237_push27_bicg20_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi7_pop1237_push27_bicg20_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi7_pop1237_push27_bicg20_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi7_pop1237_push27_bicg20_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi7_pop1237_push27_bicg20_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi7_pop1237_push27_bicg20_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_pop1031_push21_bicg18_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_pop1031_push21_bicg18_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp2035_push25_bicg69_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp2035_push25_bicg69_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp2035_push25_bicg69_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp2035_push25_bicg69_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp2035_push25_bicg69_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp2035_push25_bicg69_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_bicg57_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_bicg57_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_bicg57_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_bicg57_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_bicg57_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_bicg57_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_cleanups_push19_bicg60_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_cleanups_push19_bicg60_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_initerations_push18_bicg7_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_initerations_push18_bicg7_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_j_070_push15_bicg52_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_j_070_push15_bicg52_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_mul32_push22_bicg12_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_mul32_push22_bicg12_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push13_bicg62_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push13_bicg62_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push13_bicg62_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push13_bicg62_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i6_fpga_indvars_iv_push13_bicg62_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i6_fpga_indvars_iv_push13_bicg62_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8030_push20_bicg65_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8030_push20_bicg65_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8030_push20_bicg65_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8030_push20_bicg65_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8030_push20_bicg65_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8030_push20_bicg65_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8433_push23_bicg30_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8433_push23_bicg30_backStall;
    reg [0:0] SE_i_masked_bicg63_R_v_0;
    wire [0:0] SE_i_masked_bicg63_v_s_0;
    wire [0:0] SE_i_masked_bicg63_s_tv_0;
    wire [0:0] SE_i_masked_bicg63_backEN;
    wire [0:0] SE_i_masked_bicg63_backStall;
    wire [0:0] SE_i_masked_bicg63_V0;
    wire [0:0] SE_i_next_initerations_bicg6_vt_select_0_wireValid;
    wire [0:0] SE_i_next_initerations_bicg6_vt_select_0_wireStall;
    wire [0:0] SE_i_next_initerations_bicg6_vt_select_0_StallValid;
    wire [0:0] SE_i_next_initerations_bicg6_vt_select_0_toReg0;
    reg [0:0] SE_i_next_initerations_bicg6_vt_select_0_fromReg0;
    wire [0:0] SE_i_next_initerations_bicg6_vt_select_0_consumed0;
    wire [0:0] SE_i_next_initerations_bicg6_vt_select_0_toReg1;
    reg [0:0] SE_i_next_initerations_bicg6_vt_select_0_fromReg1;
    wire [0:0] SE_i_next_initerations_bicg6_vt_select_0_consumed1;
    wire [0:0] SE_i_next_initerations_bicg6_vt_select_0_or0;
    wire [0:0] SE_i_next_initerations_bicg6_vt_select_0_backStall;
    wire [0:0] SE_i_next_initerations_bicg6_vt_select_0_V0;
    wire [0:0] SE_i_next_initerations_bicg6_vt_select_0_V1;
    wire [0:0] SE_i_reduction_bicg_0_bicg21_wireValid;
    wire [0:0] SE_i_reduction_bicg_0_bicg21_wireStall;
    wire [0:0] SE_i_reduction_bicg_0_bicg21_StallValid;
    wire [0:0] SE_i_reduction_bicg_0_bicg21_toReg0;
    reg [0:0] SE_i_reduction_bicg_0_bicg21_fromReg0;
    wire [0:0] SE_i_reduction_bicg_0_bicg21_consumed0;
    wire [0:0] SE_i_reduction_bicg_0_bicg21_toReg1;
    reg [0:0] SE_i_reduction_bicg_0_bicg21_fromReg1;
    wire [0:0] SE_i_reduction_bicg_0_bicg21_consumed1;
    wire [0:0] SE_i_reduction_bicg_0_bicg21_and0;
    wire [0:0] SE_i_reduction_bicg_0_bicg21_or0;
    wire [0:0] SE_i_reduction_bicg_0_bicg21_backStall;
    wire [0:0] SE_i_reduction_bicg_0_bicg21_V0;
    wire [0:0] SE_i_reduction_bicg_0_bicg21_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_i_mul11_bicg47_sums_align_1_wireValid;
    wire [0:0] SE_i_mul11_bicg47_sums_align_1_and0;
    wire [0:0] SE_i_mul11_bicg47_sums_align_1_backStall;
    wire [0:0] SE_i_mul11_bicg47_sums_align_1_V0;
    wire [0:0] SE_i_mul7_bicg32_sums_align_1_wireValid;
    wire [0:0] SE_i_mul7_bicg32_sums_align_1_and0;
    wire [0:0] SE_i_mul7_bicg32_sums_align_1_backStall;
    wire [0:0] SE_i_mul7_bicg32_sums_align_1_V0;
    reg [0:0] SE_i_mul11_bicg47_im0_cma_R_s_0;
    reg [0:0] SE_i_mul11_bicg47_im0_cma_R_v_0;
    reg [0:0] SE_i_mul11_bicg47_im0_cma_R_v_1;
    reg [0:0] SE_i_mul11_bicg47_im0_cma_R_v_2;
    wire [0:0] SE_i_mul11_bicg47_im0_cma_v_s_0;
    wire [0:0] SE_i_mul11_bicg47_im0_cma_s_tv_0;
    wire [0:0] SE_i_mul11_bicg47_im0_cma_s_tv_1;
    wire [0:0] SE_i_mul11_bicg47_im0_cma_s_tv_2;
    wire [0:0] SE_i_mul11_bicg47_im0_cma_backEN;
    wire [0:0] SE_i_mul11_bicg47_im0_cma_and0;
    wire [0:0] SE_i_mul11_bicg47_im0_cma_or0;
    wire [0:0] SE_i_mul11_bicg47_im0_cma_or1;
    wire [0:0] SE_i_mul11_bicg47_im0_cma_backStall;
    wire [0:0] SE_i_mul11_bicg47_im0_cma_V0;
    wire [0:0] SE_i_mul11_bicg47_im0_cma_V1;
    wire [0:0] SE_i_mul11_bicg47_im0_cma_V2;
    reg [0:0] SE_i_mul7_bicg32_im0_cma_R_s_0;
    reg [0:0] SE_i_mul7_bicg32_im0_cma_R_v_0;
    reg [0:0] SE_i_mul7_bicg32_im0_cma_R_v_1;
    reg [0:0] SE_i_mul7_bicg32_im0_cma_R_v_2;
    wire [0:0] SE_i_mul7_bicg32_im0_cma_v_s_0;
    wire [0:0] SE_i_mul7_bicg32_im0_cma_s_tv_0;
    wire [0:0] SE_i_mul7_bicg32_im0_cma_s_tv_1;
    wire [0:0] SE_i_mul7_bicg32_im0_cma_s_tv_2;
    wire [0:0] SE_i_mul7_bicg32_im0_cma_backEN;
    wire [0:0] SE_i_mul7_bicg32_im0_cma_and0;
    wire [0:0] SE_i_mul7_bicg32_im0_cma_or0;
    wire [0:0] SE_i_mul7_bicg32_im0_cma_or1;
    wire [0:0] SE_i_mul7_bicg32_im0_cma_backStall;
    wire [0:0] SE_i_mul7_bicg32_im0_cma_V0;
    wire [0:0] SE_i_mul7_bicg32_im0_cma_V1;
    wire [0:0] SE_i_mul7_bicg32_im0_cma_V2;
    reg [0:0] SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_or0;
    wire [0:0] SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_V1;
    reg [0:0] SE_i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_and0;
    wire [0:0] SE_i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_and1;
    wire [0:0] SE_i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_wireValid;
    wire [0:0] SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_wireStall;
    wire [0:0] SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_StallValid;
    wire [0:0] SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_toReg0;
    reg [0:0] SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_fromReg0;
    wire [0:0] SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_consumed0;
    wire [0:0] SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_toReg1;
    reg [0:0] SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_fromReg1;
    wire [0:0] SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_consumed1;
    wire [0:0] SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_and0;
    wire [0:0] SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_or0;
    wire [0:0] SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_backStall;
    wire [0:0] SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_V0;
    wire [0:0] SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_V1;
    reg [0:0] SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_and0;
    wire [0:0] SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_or0;
    wire [0:0] SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_V1;
    reg [0:0] SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index82_bicg0_add_x_BitJoin_for_q_wireValid;
    wire [0:0] SE_i_mptr_bitcast_index82_bicg0_add_x_BitJoin_for_q_and0;
    wire [0:0] SE_i_mptr_bitcast_index82_bicg0_add_x_BitJoin_for_q_and1;
    wire [0:0] SE_i_mptr_bitcast_index82_bicg0_add_x_BitJoin_for_q_and2;
    wire [0:0] SE_i_mptr_bitcast_index82_bicg0_add_x_BitJoin_for_q_and3;
    wire [0:0] SE_i_mptr_bitcast_index82_bicg0_add_x_BitJoin_for_q_backStall;
    wire [0:0] SE_i_mptr_bitcast_index82_bicg0_add_x_BitJoin_for_q_V0;
    reg [0:0] SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_and0;
    wire [0:0] SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_or0;
    wire [0:0] SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_V1;
    reg [0:0] SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_wireValid;
    wire [0:0] SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_backStall;
    wire [0:0] SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_V0;
    reg [0:0] SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_R_v_0;
    reg [0:0] SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_R_v_1;
    wire [0:0] SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_v_s_0;
    wire [0:0] SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_s_tv_0;
    wire [0:0] SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_s_tv_1;
    wire [0:0] SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_backEN;
    wire [0:0] SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_and0;
    wire [0:0] SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_or0;
    wire [0:0] SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_backStall;
    wire [0:0] SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_V0;
    wire [0:0] SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_V1;
    reg [0:0] SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_R_v_0;
    wire [0:0] SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_v_s_0;
    wire [0:0] SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_s_tv_0;
    wire [0:0] SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_backEN;
    wire [0:0] SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_backStall;
    wire [0:0] SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_V0;
    wire [0:0] SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_wireValid;
    wire [0:0] SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_wireStall;
    wire [0:0] SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_StallValid;
    wire [0:0] SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_toReg0;
    reg [0:0] SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_fromReg0;
    wire [0:0] SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_consumed0;
    wire [0:0] SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_toReg1;
    reg [0:0] SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_fromReg1;
    wire [0:0] SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_consumed1;
    wire [0:0] SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_and0;
    wire [0:0] SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_and1;
    wire [0:0] SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_or0;
    wire [0:0] SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_backStall;
    wire [0:0] SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_V0;
    wire [0:0] SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_V1;
    reg [0:0] SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_R_v_0;
    reg [0:0] SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_R_v_1;
    wire [0:0] SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_v_s_0;
    wire [0:0] SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_s_tv_0;
    wire [0:0] SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_s_tv_1;
    wire [0:0] SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_backEN;
    wire [0:0] SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_and0;
    wire [0:0] SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_or0;
    wire [0:0] SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_backStall;
    wire [0:0] SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_V0;
    wire [0:0] SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_V1;
    reg [0:0] SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_R_v_0;
    wire [0:0] SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_v_s_0;
    wire [0:0] SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_s_tv_0;
    wire [0:0] SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_backEN;
    wire [0:0] SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_backStall;
    wire [0:0] SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_tessel0_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_tessel0_2_V1;
    wire [0:0] SE_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_tessel0_2_V2;
    wire [0:0] SE_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    wire [0:0] SE_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_and0;
    wire [0:0] SE_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_backStall;
    wire [0:0] SE_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_V0;
    wire [0:0] SE_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_tessel1_0_V0;
    wire [0:0] SE_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_tessel1_0_V1;
    wire [0:0] SE_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_tessel1_0_V2;
    wire [0:0] SE_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    wire [0:0] SE_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_and0;
    wire [0:0] SE_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_backStall;
    wire [0:0] SE_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_V0;
    wire [0:0] SE_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    wire [0:0] SE_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_and0;
    wire [0:0] SE_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_backStall;
    wire [0:0] SE_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_V0;
    wire [0:0] SE_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_wireValid;
    wire [0:0] SE_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_and0;
    wire [0:0] SE_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_backStall;
    wire [0:0] SE_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_V0;
    wire [0:0] SE_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_wireValid;
    wire [0:0] SE_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_and0;
    wire [0:0] SE_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_backStall;
    wire [0:0] SE_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_V0;
    wire [0:0] SE_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V0;
    wire [0:0] SE_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V1;
    wire [0:0] SE_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V2;
    wire [0:0] SE_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V3;
    wire [0:0] SE_join_for_coalesced_delay_3_wireValid;
    wire [0:0] SE_join_for_coalesced_delay_3_backStall;
    wire [0:0] SE_join_for_coalesced_delay_3_V0;
    reg [0:0] SE_redist0_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0;
    wire [0:0] SE_redist0_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_v_s_0;
    wire [0:0] SE_redist0_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_s_tv_0;
    wire [0:0] SE_redist0_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backEN;
    wire [0:0] SE_redist0_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backStall;
    wire [0:0] SE_redist0_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_V0;
    reg [0:0] SE_redist1_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0;
    wire [0:0] SE_redist1_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_v_s_0;
    wire [0:0] SE_redist1_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_s_tv_0;
    wire [0:0] SE_redist1_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backEN;
    wire [0:0] SE_redist1_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backStall;
    wire [0:0] SE_redist1_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_V0;
    reg [0:0] SE_redist4_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    wire [0:0] SE_redist4_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
    wire [0:0] SE_redist4_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
    wire [0:0] SE_redist4_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN;
    wire [0:0] SE_redist4_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall;
    wire [0:0] SE_redist4_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0;
    reg [0:0] SE_redist5_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    wire [0:0] SE_redist5_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
    wire [0:0] SE_redist5_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
    wire [0:0] SE_redist5_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN;
    wire [0:0] SE_redist5_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall;
    wire [0:0] SE_redist5_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0;
    reg [0:0] SE_redist6_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    wire [0:0] SE_redist6_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
    wire [0:0] SE_redist6_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
    wire [0:0] SE_redist6_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN;
    wire [0:0] SE_redist6_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall;
    wire [0:0] SE_redist6_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0;
    reg [0:0] SE_redist7_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_tessel0_1_b_1_0_R_v_0;
    wire [0:0] SE_redist7_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_tessel0_1_b_1_0_v_s_0;
    wire [0:0] SE_redist7_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_tessel0_1_b_1_0_s_tv_0;
    wire [0:0] SE_redist7_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backEN;
    wire [0:0] SE_redist7_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backStall;
    wire [0:0] SE_redist7_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_tessel0_1_b_1_0_V0;
    reg [0:0] SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist12_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist12_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist12_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist12_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist12_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist12_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_R_v_0;
    wire [0:0] SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_v_s_0;
    wire [0:0] SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_s_tv_0;
    wire [0:0] SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_backEN;
    wire [0:0] SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_backStall;
    wire [0:0] SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_V0;
    reg [0:0] SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_R_v_0;
    wire [0:0] SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_v_s_0;
    wire [0:0] SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_s_tv_0;
    wire [0:0] SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_backEN;
    wire [0:0] SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_backStall;
    wire [0:0] SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_V0;
    reg [0:0] SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_R_v_0;
    reg [0:0] SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_R_v_1;
    wire [0:0] SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_v_s_0;
    wire [0:0] SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_s_tv_0;
    wire [0:0] SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_s_tv_1;
    wire [0:0] SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_backEN;
    wire [0:0] SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_or0;
    wire [0:0] SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_backStall;
    wire [0:0] SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_V0;
    wire [0:0] SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_V1;
    reg [0:0] SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_R_v_0;
    wire [0:0] SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_v_s_0;
    wire [0:0] SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_s_tv_0;
    wire [0:0] SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_backEN;
    wire [0:0] SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_backStall;
    wire [0:0] SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_V0;
    reg [0:0] SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_R_v_0;
    reg [0:0] SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_R_v_1;
    wire [0:0] SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_v_s_0;
    wire [0:0] SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_s_tv_0;
    wire [0:0] SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_s_tv_1;
    wire [0:0] SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_backEN;
    wire [0:0] SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_or0;
    wire [0:0] SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_backStall;
    wire [0:0] SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_V0;
    wire [0:0] SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_V1;
    reg [0:0] SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_R_v_0;
    wire [0:0] SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_v_s_0;
    wire [0:0] SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_s_tv_0;
    wire [0:0] SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_backEN;
    wire [0:0] SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_backStall;
    wire [0:0] SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_V0;
    reg [0:0] SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_R_v_0;
    wire [0:0] SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_v_s_0;
    wire [0:0] SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_s_tv_0;
    wire [0:0] SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_backEN;
    wire [0:0] SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_backStall;
    wire [0:0] SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_V0;
    reg [0:0] SE_redist19_i_reduction_bicg_0_bicg21_q_5_1_R_v_0;
    wire [0:0] SE_redist19_i_reduction_bicg_0_bicg21_q_5_1_v_s_0;
    wire [0:0] SE_redist19_i_reduction_bicg_0_bicg21_q_5_1_s_tv_0;
    wire [0:0] SE_redist19_i_reduction_bicg_0_bicg21_q_5_1_backEN;
    wire [0:0] SE_redist19_i_reduction_bicg_0_bicg21_q_5_1_backStall;
    wire [0:0] SE_redist19_i_reduction_bicg_0_bicg21_q_5_1_V0;
    reg [0:0] SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_R_v_0;
    wire [0:0] SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_v_s_0;
    wire [0:0] SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_s_tv_0;
    wire [0:0] SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_backEN;
    wire [0:0] SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_backStall;
    wire [0:0] SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_V0;
    reg [0:0] SE_redist19_i_reduction_bicg_0_bicg21_q_5_3_R_v_0;
    wire [0:0] SE_redist19_i_reduction_bicg_0_bicg21_q_5_3_v_s_0;
    wire [0:0] SE_redist19_i_reduction_bicg_0_bicg21_q_5_3_s_tv_0;
    wire [0:0] SE_redist19_i_reduction_bicg_0_bicg21_q_5_3_backEN;
    wire [0:0] SE_redist19_i_reduction_bicg_0_bicg21_q_5_3_backStall;
    wire [0:0] SE_redist19_i_reduction_bicg_0_bicg21_q_5_3_V0;
    reg [0:0] SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_R_v_0;
    wire [0:0] SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_v_s_0;
    wire [0:0] SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_s_tv_0;
    wire [0:0] SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_backEN;
    wire [0:0] SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_backStall;
    wire [0:0] SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_V0;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_wireValid;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_and0;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_backStall;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_V0;
    reg [0:0] SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_0_R_v_0;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_0_v_s_0;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_0_s_tv_0;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_0_backEN;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_0_backStall;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_0_V0;
    reg [0:0] SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_1_R_v_0;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_1_v_s_0;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_1_s_tv_0;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_1_backEN;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_1_backStall;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_1_V0;
    reg [0:0] SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_R_v_0;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_v_s_0;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_s_tv_0;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_backEN;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_backStall;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_V0;
    reg [0:0] SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_3_R_v_0;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_3_v_s_0;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_3_s_tv_0;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_3_backEN;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_3_backStall;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_3_V0;
    reg [0:0] SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_R_v_0;
    reg [0:0] SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_R_v_1;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_v_s_0;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_s_tv_0;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_s_tv_1;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_backEN;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_or0;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_backStall;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_V0;
    wire [0:0] SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_V1;
    reg [0:0] SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_0_R_v_0;
    wire [0:0] SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_0_v_s_0;
    wire [0:0] SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_0_s_tv_0;
    wire [0:0] SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_0_backEN;
    wire [0:0] SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_0_backStall;
    wire [0:0] SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_0_V0;
    reg [0:0] SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_1_R_v_0;
    wire [0:0] SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_1_v_s_0;
    wire [0:0] SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_1_s_tv_0;
    wire [0:0] SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_1_backEN;
    wire [0:0] SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_1_backStall;
    wire [0:0] SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_1_V0;
    reg [0:0] SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_R_v_0;
    wire [0:0] SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_v_s_0;
    wire [0:0] SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_s_tv_0;
    wire [0:0] SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_backEN;
    wire [0:0] SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_backStall;
    wire [0:0] SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_V0;
    reg [0:0] SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_3_R_v_0;
    wire [0:0] SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_3_v_s_0;
    wire [0:0] SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_3_s_tv_0;
    wire [0:0] SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_3_backEN;
    wire [0:0] SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_3_backStall;
    wire [0:0] SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_3_V0;
    reg [0:0] SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_R_v_0;
    wire [0:0] SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_v_s_0;
    wire [0:0] SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_s_tv_0;
    wire [0:0] SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_backEN;
    wire [0:0] SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_backStall;
    wire [0:0] SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_V0;
    wire [0:0] SE_out_redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_wireValid;
    wire [0:0] SE_out_redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_and0;
    wire [0:0] SE_out_redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_backStall;
    wire [0:0] SE_out_redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_V0;
    reg [0:0] SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_0_R_v_0;
    wire [0:0] SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_0_v_s_0;
    wire [0:0] SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_0_s_tv_0;
    wire [0:0] SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_0_backEN;
    wire [0:0] SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_0_backStall;
    wire [0:0] SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_0_V0;
    reg [0:0] SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_1_R_v_0;
    wire [0:0] SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_1_v_s_0;
    wire [0:0] SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_1_s_tv_0;
    wire [0:0] SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_1_backEN;
    wire [0:0] SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_1_backStall;
    wire [0:0] SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_1_V0;
    reg [0:0] SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_R_v_0;
    wire [0:0] SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_v_s_0;
    wire [0:0] SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_s_tv_0;
    wire [0:0] SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_backEN;
    wire [0:0] SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_backStall;
    wire [0:0] SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_V0;
    reg [0:0] SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_3_R_v_0;
    wire [0:0] SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_3_v_s_0;
    wire [0:0] SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_3_s_tv_0;
    wire [0:0] SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_3_backEN;
    wire [0:0] SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_3_backStall;
    wire [0:0] SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_3_V0;
    reg [0:0] SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_R_v_0;
    wire [0:0] SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_v_s_0;
    wire [0:0] SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_s_tv_0;
    wire [0:0] SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_backEN;
    wire [0:0] SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_backStall;
    wire [0:0] SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_V0;
    reg [0:0] SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_R_v_0;
    reg [0:0] SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_R_v_1;
    wire [0:0] SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_v_s_0;
    wire [0:0] SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_s_tv_0;
    wire [0:0] SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_s_tv_1;
    wire [0:0] SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_backEN;
    wire [0:0] SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_or0;
    wire [0:0] SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_backStall;
    wire [0:0] SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_V0;
    wire [0:0] SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_V1;
    wire [0:0] SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_wireValid;
    wire [0:0] SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_wireStall;
    wire [0:0] SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_StallValid;
    wire [0:0] SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_toReg0;
    reg [0:0] SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_fromReg0;
    wire [0:0] SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_consumed0;
    wire [0:0] SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_toReg1;
    reg [0:0] SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_fromReg1;
    wire [0:0] SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_consumed1;
    wire [0:0] SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_or0;
    wire [0:0] SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_backStall;
    wire [0:0] SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_V0;
    wire [0:0] SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_V1;
    reg [0:0] SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_R_v_0;
    wire [0:0] SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_v_s_0;
    wire [0:0] SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_s_tv_0;
    wire [0:0] SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_backEN;
    wire [0:0] SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_backStall;
    wire [0:0] SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_V0;
    wire [0:0] SE_out_redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_wireValid;
    wire [0:0] SE_out_redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_and0;
    wire [0:0] SE_out_redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_and1;
    wire [0:0] SE_out_redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_and2;
    wire [0:0] SE_out_redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_backStall;
    wire [0:0] SE_out_redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_V0;
    reg [0:0] SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_0_R_v_0;
    wire [0:0] SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_0_v_s_0;
    wire [0:0] SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_0_s_tv_0;
    wire [0:0] SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_0_backEN;
    wire [0:0] SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_0_backStall;
    wire [0:0] SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_0_V0;
    reg [0:0] SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_1_R_v_0;
    wire [0:0] SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_1_v_s_0;
    wire [0:0] SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_1_s_tv_0;
    wire [0:0] SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_1_backEN;
    wire [0:0] SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_1_backStall;
    wire [0:0] SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_1_V0;
    reg [0:0] SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_R_v_0;
    wire [0:0] SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_v_s_0;
    wire [0:0] SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_s_tv_0;
    wire [0:0] SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_backEN;
    wire [0:0] SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_backStall;
    wire [0:0] SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_V0;
    reg [0:0] SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_3_R_v_0;
    wire [0:0] SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_3_v_s_0;
    wire [0:0] SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_3_s_tv_0;
    wire [0:0] SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_3_backEN;
    wire [0:0] SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_3_backStall;
    wire [0:0] SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_3_V0;
    reg [0:0] SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_R_v_0;
    reg [0:0] SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_R_v_1;
    wire [0:0] SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_v_s_0;
    wire [0:0] SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_s_tv_0;
    wire [0:0] SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_s_tv_1;
    wire [0:0] SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_backEN;
    wire [0:0] SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_or0;
    wire [0:0] SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_backStall;
    wire [0:0] SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_V0;
    wire [0:0] SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_V1;
    reg [0:0] SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_0_R_v_0;
    wire [0:0] SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_0_v_s_0;
    wire [0:0] SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_0_s_tv_0;
    wire [0:0] SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_0_backEN;
    wire [0:0] SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_0_backStall;
    wire [0:0] SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_0_V0;
    reg [0:0] SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_1_R_v_0;
    wire [0:0] SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_1_v_s_0;
    wire [0:0] SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_1_s_tv_0;
    wire [0:0] SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_1_backEN;
    wire [0:0] SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_1_backStall;
    wire [0:0] SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_1_V0;
    reg [0:0] SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_R_v_0;
    reg [0:0] SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_R_v_1;
    wire [0:0] SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_v_s_0;
    wire [0:0] SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_s_tv_0;
    wire [0:0] SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_s_tv_1;
    wire [0:0] SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_backEN;
    wire [0:0] SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_or0;
    wire [0:0] SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_backStall;
    wire [0:0] SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_V0;
    wire [0:0] SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_V1;
    wire [0:0] SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_wireValid;
    wire [0:0] SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_and0;
    wire [0:0] SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_backStall;
    wire [0:0] SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_V0;
    wire [0:0] SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_wireValid;
    wire [0:0] SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_wireStall;
    wire [0:0] SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_StallValid;
    wire [0:0] SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_toReg0;
    reg [0:0] SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_fromReg0;
    wire [0:0] SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_consumed0;
    wire [0:0] SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_toReg1;
    reg [0:0] SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_fromReg1;
    wire [0:0] SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_consumed1;
    wire [0:0] SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_or0;
    wire [0:0] SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_backStall;
    wire [0:0] SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_V0;
    wire [0:0] SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_V1;
    wire [0:0] SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_wireValid;
    wire [0:0] SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_wireStall;
    wire [0:0] SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_StallValid;
    wire [0:0] SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_toReg0;
    reg [0:0] SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_fromReg0;
    wire [0:0] SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_consumed0;
    wire [0:0] SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_toReg1;
    reg [0:0] SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_fromReg1;
    wire [0:0] SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_consumed1;
    wire [0:0] SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_or0;
    wire [0:0] SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_backStall;
    wire [0:0] SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_V0;
    wire [0:0] SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_V1;
    wire [0:0] SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_wireValid;
    wire [0:0] SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_wireStall;
    wire [0:0] SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_StallValid;
    wire [0:0] SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_toReg0;
    reg [0:0] SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_fromReg0;
    wire [0:0] SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_consumed0;
    wire [0:0] SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_toReg1;
    reg [0:0] SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_fromReg1;
    wire [0:0] SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_consumed1;
    wire [0:0] SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_or0;
    wire [0:0] SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_backStall;
    wire [0:0] SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_V0;
    wire [0:0] SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_V1;
    wire [0:0] SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_wireValid;
    wire [0:0] SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_and0;
    wire [0:0] SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_backStall;
    wire [0:0] SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_V0;
    reg [0:0] SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_0_R_v_0;
    wire [0:0] SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_0_v_s_0;
    wire [0:0] SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_0_s_tv_0;
    wire [0:0] SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_0_backEN;
    wire [0:0] SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_0_backStall;
    wire [0:0] SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_0_V0;
    reg [0:0] SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_1_R_v_0;
    wire [0:0] SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_1_v_s_0;
    wire [0:0] SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_1_s_tv_0;
    wire [0:0] SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_1_backEN;
    wire [0:0] SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_1_backStall;
    wire [0:0] SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_1_V0;
    reg [0:0] SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_R_v_0;
    wire [0:0] SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_v_s_0;
    wire [0:0] SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_s_tv_0;
    wire [0:0] SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_backEN;
    wire [0:0] SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_backStall;
    wire [0:0] SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_V0;
    reg [0:0] SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_3_R_v_0;
    wire [0:0] SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_3_v_s_0;
    wire [0:0] SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_3_s_tv_0;
    wire [0:0] SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_3_backEN;
    wire [0:0] SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_3_backStall;
    wire [0:0] SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_3_V0;
    reg [0:0] SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_R_v_0;
    reg [0:0] SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_R_v_1;
    wire [0:0] SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_v_s_0;
    wire [0:0] SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_s_tv_0;
    wire [0:0] SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_s_tv_1;
    wire [0:0] SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_backEN;
    wire [0:0] SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_or0;
    wire [0:0] SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_backStall;
    wire [0:0] SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_V0;
    wire [0:0] SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_V1;
    reg [0:0] SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_0_R_v_0;
    wire [0:0] SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_0_v_s_0;
    wire [0:0] SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_0_s_tv_0;
    wire [0:0] SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_0_backEN;
    wire [0:0] SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_0_backStall;
    wire [0:0] SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_0_V0;
    reg [0:0] SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_R_v_0;
    wire [0:0] SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_v_s_0;
    wire [0:0] SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_s_tv_0;
    wire [0:0] SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_backEN;
    wire [0:0] SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_backStall;
    wire [0:0] SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_V0;
    reg [0:0] SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_R_v_0;
    reg [0:0] SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_R_v_1;
    reg [0:0] SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_R_v_2;
    wire [0:0] SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_v_s_0;
    wire [0:0] SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_s_tv_0;
    wire [0:0] SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_s_tv_1;
    wire [0:0] SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_s_tv_2;
    wire [0:0] SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_backEN;
    wire [0:0] SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_or0;
    wire [0:0] SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_or1;
    wire [0:0] SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_backStall;
    wire [0:0] SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_V0;
    wire [0:0] SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_V1;
    wire [0:0] SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_V2;
    wire [0:0] SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_wireValid;
    wire [0:0] SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_wireStall;
    wire [0:0] SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_StallValid;
    wire [0:0] SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_toReg0;
    reg [0:0] SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_fromReg0;
    wire [0:0] SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_consumed0;
    wire [0:0] SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_toReg1;
    reg [0:0] SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_fromReg1;
    wire [0:0] SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_consumed1;
    wire [0:0] SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_or0;
    wire [0:0] SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_backStall;
    wire [0:0] SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_V0;
    wire [0:0] SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_V1;
    reg [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_R_v_0;
    wire [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_v_s_0;
    wire [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_s_tv_0;
    wire [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_backEN;
    wire [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_backStall;
    wire [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_V0;
    reg [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_1_R_v_0;
    wire [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_1_v_s_0;
    wire [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_1_s_tv_0;
    wire [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_1_backEN;
    wire [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_1_backStall;
    wire [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_1_V0;
    reg [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_R_v_0;
    wire [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_v_s_0;
    wire [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_s_tv_0;
    wire [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_backEN;
    wire [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_backStall;
    wire [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_V0;
    reg [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_3_R_v_0;
    wire [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_3_v_s_0;
    wire [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_3_s_tv_0;
    wire [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_3_backEN;
    wire [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_3_backStall;
    wire [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_3_V0;
    reg [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_R_v_0;
    reg [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_R_v_1;
    reg [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_R_v_2;
    reg [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_R_v_3;
    reg [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_R_v_4;
    wire [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_v_s_0;
    wire [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_s_tv_0;
    wire [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_s_tv_1;
    wire [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_s_tv_2;
    wire [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_s_tv_3;
    wire [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_s_tv_4;
    wire [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_backEN;
    wire [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_or0;
    wire [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_or1;
    wire [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_or2;
    wire [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_or3;
    wire [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_backStall;
    wire [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_V0;
    wire [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_V1;
    wire [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_V2;
    wire [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_V3;
    wire [0:0] SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_V4;
    reg [0:0] SE_redist44_i_first_cleanup_xor_bicg2_q_5_0_R_v_0;
    wire [0:0] SE_redist44_i_first_cleanup_xor_bicg2_q_5_0_v_s_0;
    wire [0:0] SE_redist44_i_first_cleanup_xor_bicg2_q_5_0_s_tv_0;
    wire [0:0] SE_redist44_i_first_cleanup_xor_bicg2_q_5_0_backEN;
    wire [0:0] SE_redist44_i_first_cleanup_xor_bicg2_q_5_0_backStall;
    wire [0:0] SE_redist44_i_first_cleanup_xor_bicg2_q_5_0_V0;
    reg [0:0] SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_R_v_0;
    wire [0:0] SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_v_s_0;
    wire [0:0] SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_s_tv_0;
    wire [0:0] SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_backEN;
    wire [0:0] SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_backStall;
    wire [0:0] SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_V0;
    reg [0:0] SE_redist44_i_first_cleanup_xor_bicg2_q_5_2_R_v_0;
    wire [0:0] SE_redist44_i_first_cleanup_xor_bicg2_q_5_2_v_s_0;
    wire [0:0] SE_redist44_i_first_cleanup_xor_bicg2_q_5_2_s_tv_0;
    wire [0:0] SE_redist44_i_first_cleanup_xor_bicg2_q_5_2_backEN;
    wire [0:0] SE_redist44_i_first_cleanup_xor_bicg2_q_5_2_backStall;
    wire [0:0] SE_redist44_i_first_cleanup_xor_bicg2_q_5_2_V0;
    reg [0:0] SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_R_v_0;
    wire [0:0] SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_v_s_0;
    wire [0:0] SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_s_tv_0;
    wire [0:0] SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_backEN;
    wire [0:0] SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_backStall;
    wire [0:0] SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_V0;
    reg [0:0] SE_redist44_i_first_cleanup_xor_bicg2_q_5_4_R_v_0;
    reg [0:0] SE_redist44_i_first_cleanup_xor_bicg2_q_5_4_R_v_1;
    wire [0:0] SE_redist44_i_first_cleanup_xor_bicg2_q_5_4_v_s_0;
    wire [0:0] SE_redist44_i_first_cleanup_xor_bicg2_q_5_4_s_tv_0;
    wire [0:0] SE_redist44_i_first_cleanup_xor_bicg2_q_5_4_s_tv_1;
    wire [0:0] SE_redist44_i_first_cleanup_xor_bicg2_q_5_4_backEN;
    wire [0:0] SE_redist44_i_first_cleanup_xor_bicg2_q_5_4_or0;
    wire [0:0] SE_redist44_i_first_cleanup_xor_bicg2_q_5_4_backStall;
    wire [0:0] SE_redist44_i_first_cleanup_xor_bicg2_q_5_4_V0;
    wire [0:0] SE_redist44_i_first_cleanup_xor_bicg2_q_5_4_V1;
    wire [0:0] SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_wireValid;
    wire [0:0] SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_wireStall;
    wire [0:0] SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_StallValid;
    wire [0:0] SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_toReg0;
    reg [0:0] SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_fromReg0;
    wire [0:0] SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_consumed0;
    wire [0:0] SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_toReg1;
    reg [0:0] SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_fromReg1;
    wire [0:0] SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_consumed1;
    wire [0:0] SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_or0;
    wire [0:0] SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_backStall;
    wire [0:0] SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_V0;
    wire [0:0] SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_V1;
    wire [0:0] SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_wireValid;
    wire [0:0] SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_wireStall;
    wire [0:0] SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_StallValid;
    wire [0:0] SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_toReg0;
    reg [0:0] SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_fromReg0;
    wire [0:0] SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_consumed0;
    wire [0:0] SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_toReg1;
    reg [0:0] SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_fromReg1;
    wire [0:0] SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_consumed1;
    wire [0:0] SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_or0;
    wire [0:0] SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_backStall;
    wire [0:0] SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_V0;
    wire [0:0] SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_V1;
    reg [0:0] SE_redist47_i_first_cleanup_xor_bicg2_q_68_0_R_v_0;
    wire [0:0] SE_redist47_i_first_cleanup_xor_bicg2_q_68_0_v_s_0;
    wire [0:0] SE_redist47_i_first_cleanup_xor_bicg2_q_68_0_s_tv_0;
    wire [0:0] SE_redist47_i_first_cleanup_xor_bicg2_q_68_0_backEN;
    wire [0:0] SE_redist47_i_first_cleanup_xor_bicg2_q_68_0_backStall;
    wire [0:0] SE_redist47_i_first_cleanup_xor_bicg2_q_68_0_V0;
    reg [0:0] SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_R_v_0;
    wire [0:0] SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_v_s_0;
    wire [0:0] SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_s_tv_0;
    wire [0:0] SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_backEN;
    wire [0:0] SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_backStall;
    wire [0:0] SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_V0;
    reg [0:0] SE_redist47_i_first_cleanup_xor_bicg2_q_68_2_R_v_0;
    wire [0:0] SE_redist47_i_first_cleanup_xor_bicg2_q_68_2_v_s_0;
    wire [0:0] SE_redist47_i_first_cleanup_xor_bicg2_q_68_2_s_tv_0;
    wire [0:0] SE_redist47_i_first_cleanup_xor_bicg2_q_68_2_backEN;
    wire [0:0] SE_redist47_i_first_cleanup_xor_bicg2_q_68_2_backStall;
    wire [0:0] SE_redist47_i_first_cleanup_xor_bicg2_q_68_2_V0;
    reg [0:0] SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_0_R_v_0;
    wire [0:0] SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_0_v_s_0;
    wire [0:0] SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_0_s_tv_0;
    wire [0:0] SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_0_backEN;
    wire [0:0] SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_0_backStall;
    wire [0:0] SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_0_V0;
    reg [0:0] SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_1_R_v_0;
    wire [0:0] SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_1_v_s_0;
    wire [0:0] SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_1_s_tv_0;
    wire [0:0] SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_1_backEN;
    wire [0:0] SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_1_backStall;
    wire [0:0] SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_1_V0;
    reg [0:0] SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_R_v_0;
    wire [0:0] SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_v_s_0;
    wire [0:0] SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_s_tv_0;
    wire [0:0] SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_backEN;
    wire [0:0] SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_backStall;
    wire [0:0] SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_V0;
    reg [0:0] SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_3_R_v_0;
    wire [0:0] SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_3_v_s_0;
    wire [0:0] SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_3_s_tv_0;
    wire [0:0] SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_3_backEN;
    wire [0:0] SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_3_backStall;
    wire [0:0] SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_3_V0;
    reg [0:0] SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_R_v_0;
    reg [0:0] SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_R_v_1;
    wire [0:0] SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_v_s_0;
    wire [0:0] SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_s_tv_0;
    wire [0:0] SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_s_tv_1;
    wire [0:0] SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_backEN;
    wire [0:0] SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_or0;
    wire [0:0] SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_backStall;
    wire [0:0] SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_V0;
    wire [0:0] SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_V1;
    wire [0:0] SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_wireValid;
    wire [0:0] SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_backStall;
    wire [0:0] SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_V0;
    wire [0:0] SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_wireValid;
    wire [0:0] SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_wireStall;
    wire [0:0] SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_StallValid;
    wire [0:0] SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_toReg0;
    reg [0:0] SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_fromReg0;
    wire [0:0] SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_consumed0;
    wire [0:0] SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_toReg1;
    reg [0:0] SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_fromReg1;
    wire [0:0] SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_consumed1;
    wire [0:0] SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_or0;
    wire [0:0] SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_backStall;
    wire [0:0] SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_V0;
    wire [0:0] SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_V1;
    wire [0:0] SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_wireValid;
    wire [0:0] SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_wireStall;
    wire [0:0] SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_StallValid;
    wire [0:0] SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_toReg0;
    reg [0:0] SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_fromReg0;
    wire [0:0] SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_consumed0;
    wire [0:0] SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_toReg1;
    reg [0:0] SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_fromReg1;
    wire [0:0] SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_consumed1;
    wire [0:0] SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_or0;
    wire [0:0] SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_backStall;
    wire [0:0] SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_V0;
    wire [0:0] SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_V1;
    wire [0:0] SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_wireValid;
    wire [0:0] SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_wireStall;
    wire [0:0] SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_StallValid;
    wire [0:0] SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_toReg0;
    reg [0:0] SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_fromReg0;
    wire [0:0] SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_consumed0;
    wire [0:0] SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_toReg1;
    reg [0:0] SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_fromReg1;
    wire [0:0] SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_consumed1;
    wire [0:0] SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_toReg2;
    reg [0:0] SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_fromReg2;
    wire [0:0] SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_consumed2;
    wire [0:0] SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_or0;
    wire [0:0] SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_or1;
    wire [0:0] SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_backStall;
    wire [0:0] SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_V0;
    wire [0:0] SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_V1;
    wire [0:0] SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_V2;
    wire [0:0] SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_wireValid;
    wire [0:0] SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_wireStall;
    wire [0:0] SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_StallValid;
    wire [0:0] SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_toReg0;
    reg [0:0] SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_fromReg0;
    wire [0:0] SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_consumed0;
    wire [0:0] SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_toReg1;
    reg [0:0] SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_fromReg1;
    wire [0:0] SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_consumed1;
    wire [0:0] SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_or0;
    wire [0:0] SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_backStall;
    wire [0:0] SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_V0;
    wire [0:0] SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_V1;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_1;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_1;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_or0;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;
    wire [0:0] SE_coalesced_delay_0_0_V1;
    reg [0:0] SE_coalesced_delay_0_1_R_v_0;
    wire [0:0] SE_coalesced_delay_0_1_v_s_0;
    wire [0:0] SE_coalesced_delay_0_1_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_1_backEN;
    wire [0:0] SE_coalesced_delay_0_1_backStall;
    wire [0:0] SE_coalesced_delay_0_1_V0;
    reg [0:0] SE_coalesced_delay_0_2_R_v_0;
    reg [0:0] SE_coalesced_delay_0_2_R_v_1;
    reg [0:0] SE_coalesced_delay_0_2_R_v_2;
    reg [0:0] SE_coalesced_delay_0_2_R_v_3;
    reg [0:0] SE_coalesced_delay_0_2_R_v_4;
    wire [0:0] SE_coalesced_delay_0_2_v_s_0;
    wire [0:0] SE_coalesced_delay_0_2_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_2_s_tv_1;
    wire [0:0] SE_coalesced_delay_0_2_s_tv_2;
    wire [0:0] SE_coalesced_delay_0_2_s_tv_3;
    wire [0:0] SE_coalesced_delay_0_2_s_tv_4;
    wire [0:0] SE_coalesced_delay_0_2_backEN;
    wire [0:0] SE_coalesced_delay_0_2_or0;
    wire [0:0] SE_coalesced_delay_0_2_or1;
    wire [0:0] SE_coalesced_delay_0_2_or2;
    wire [0:0] SE_coalesced_delay_0_2_or3;
    wire [0:0] SE_coalesced_delay_0_2_backStall;
    wire [0:0] SE_coalesced_delay_0_2_V0;
    wire [0:0] SE_coalesced_delay_0_2_V1;
    wire [0:0] SE_coalesced_delay_0_2_V2;
    wire [0:0] SE_coalesced_delay_0_2_V3;
    wire [0:0] SE_coalesced_delay_0_2_V4;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_StallValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_toReg0;
    reg [0:0] SE_out_coalesced_delay_1_fifo_fromReg0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_consumed0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_toReg1;
    reg [0:0] SE_out_coalesced_delay_1_fifo_fromReg1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_consumed1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_toReg2;
    reg [0:0] SE_out_coalesced_delay_1_fifo_fromReg2;
    wire [0:0] SE_out_coalesced_delay_1_fifo_consumed2;
    wire [0:0] SE_out_coalesced_delay_1_fifo_toReg3;
    reg [0:0] SE_out_coalesced_delay_1_fifo_fromReg3;
    wire [0:0] SE_out_coalesced_delay_1_fifo_consumed3;
    wire [0:0] SE_out_coalesced_delay_1_fifo_or0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_or1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_or2;
    wire [0:0] SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V2;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V3;
    wire [0:0] SE_out_coalesced_delay_2_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_2_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_2_fifo_V0;
    reg [0:0] SE_coalesced_delay_3_0_R_v_0;
    wire [0:0] SE_coalesced_delay_3_0_v_s_0;
    wire [0:0] SE_coalesced_delay_3_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_3_0_backEN;
    wire [0:0] SE_coalesced_delay_3_0_backStall;
    wire [0:0] SE_coalesced_delay_3_0_V0;
    wire [0:0] SE_out_bubble_out_bicg_B3_merge_reg_aunroll_x_2_wireValid;
    wire [0:0] SE_out_bubble_out_bicg_B3_merge_reg_aunroll_x_2_backStall;
    wire [0:0] SE_out_bubble_out_bicg_B3_merge_reg_aunroll_x_2_V0;
    wire [0:0] SE_out_bubble_out_bicg_B3_merge_reg_aunroll_x_3_wireValid;
    wire [0:0] SE_out_bubble_out_bicg_B3_merge_reg_aunroll_x_3_backStall;
    wire [0:0] SE_out_bubble_out_bicg_B3_merge_reg_aunroll_x_3_V0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_and3;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_and4;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_and5;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_and6;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_and7;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_and8;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_and9;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_V0;
    wire [0:0] SE_out_bubble_out_i_mul11_bicg47_im0_cma_data_wireValid;
    wire [0:0] SE_out_bubble_out_i_mul11_bicg47_im0_cma_data_backStall;
    wire [0:0] SE_out_bubble_out_i_mul11_bicg47_im0_cma_data_V0;
    wire [0:0] SE_out_bubble_out_i_mul11_bicg47_im8_cma_data_wireValid;
    wire [0:0] SE_out_bubble_out_i_mul11_bicg47_im8_cma_data_backStall;
    wire [0:0] SE_out_bubble_out_i_mul11_bicg47_im8_cma_data_V0;
    wire [0:0] SE_out_bubble_out_i_mul7_bicg32_im0_cma_data_wireValid;
    wire [0:0] SE_out_bubble_out_i_mul7_bicg32_im0_cma_data_backStall;
    wire [0:0] SE_out_bubble_out_i_mul7_bicg32_im0_cma_data_V0;
    wire [0:0] SE_out_bubble_out_i_mul7_bicg32_im8_cma_data_wireValid;
    wire [0:0] SE_out_bubble_out_i_mul7_bicg32_im8_cma_data_backStall;
    wire [0:0] SE_out_bubble_out_i_mul7_bicg32_im8_cma_data_V0;
    wire [0:0] SE_out_bubble_out_i_mul11_bicg47_ma3_cma_data_wireValid;
    wire [0:0] SE_out_bubble_out_i_mul11_bicg47_ma3_cma_data_backStall;
    wire [0:0] SE_out_bubble_out_i_mul11_bicg47_ma3_cma_data_V0;
    wire [0:0] SE_out_bubble_out_i_mul7_bicg32_ma3_cma_data_wireValid;
    wire [0:0] SE_out_bubble_out_i_mul7_bicg32_ma3_cma_data_backStall;
    wire [0:0] SE_out_bubble_out_i_mul7_bicg32_ma3_cma_data_V0;
    wire [0:0] bubble_out_bicg_B3_merge_reg_aunroll_x_2_reg_valid_in;
    wire bubble_out_bicg_B3_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_bicg_B3_merge_reg_aunroll_x_2_reg_stall_in;
    wire bubble_out_bicg_B3_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_bicg_B3_merge_reg_aunroll_x_2_reg_valid_out;
    wire bubble_out_bicg_B3_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_bicg_B3_merge_reg_aunroll_x_2_reg_stall_out;
    wire bubble_out_bicg_B3_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_bicg_B3_merge_reg_aunroll_x_3_reg_valid_in;
    wire bubble_out_bicg_B3_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_bicg_B3_merge_reg_aunroll_x_3_reg_stall_in;
    wire bubble_out_bicg_B3_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_bicg_B3_merge_reg_aunroll_x_3_reg_valid_out;
    wire bubble_out_bicg_B3_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_bicg_B3_merge_reg_aunroll_x_3_reg_stall_out;
    wire bubble_out_bicg_B3_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_bicg4_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_bicg4_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_bicg4_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_bicg4_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_bicg4_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_bicg4_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_bicg4_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_bicg4_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul11_bicg47_im0_cma_data_reg_valid_in;
    wire bubble_out_i_mul11_bicg47_im0_cma_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_mul11_bicg47_im0_cma_data_reg_stall_in;
    wire bubble_out_i_mul11_bicg47_im0_cma_data_reg_stall_in_bitsignaltemp;
    wire [35:0] bubble_out_i_mul11_bicg47_im0_cma_data_reg_data_in;
    wire [0:0] bubble_out_i_mul11_bicg47_im0_cma_data_reg_valid_out;
    wire bubble_out_i_mul11_bicg47_im0_cma_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul11_bicg47_im0_cma_data_reg_stall_out;
    wire bubble_out_i_mul11_bicg47_im0_cma_data_reg_stall_out_bitsignaltemp;
    wire [35:0] bubble_out_i_mul11_bicg47_im0_cma_data_reg_data_out;
    wire [0:0] bubble_out_i_mul11_bicg47_im8_cma_data_reg_valid_in;
    wire bubble_out_i_mul11_bicg47_im8_cma_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_mul11_bicg47_im8_cma_data_reg_stall_in;
    wire bubble_out_i_mul11_bicg47_im8_cma_data_reg_stall_in_bitsignaltemp;
    wire [27:0] bubble_out_i_mul11_bicg47_im8_cma_data_reg_data_in;
    wire [0:0] bubble_out_i_mul11_bicg47_im8_cma_data_reg_valid_out;
    wire bubble_out_i_mul11_bicg47_im8_cma_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul11_bicg47_im8_cma_data_reg_stall_out;
    wire bubble_out_i_mul11_bicg47_im8_cma_data_reg_stall_out_bitsignaltemp;
    wire [27:0] bubble_out_i_mul11_bicg47_im8_cma_data_reg_data_out;
    wire [0:0] bubble_out_i_mul7_bicg32_im0_cma_data_reg_valid_in;
    wire bubble_out_i_mul7_bicg32_im0_cma_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_mul7_bicg32_im0_cma_data_reg_stall_in;
    wire bubble_out_i_mul7_bicg32_im0_cma_data_reg_stall_in_bitsignaltemp;
    wire [35:0] bubble_out_i_mul7_bicg32_im0_cma_data_reg_data_in;
    wire [0:0] bubble_out_i_mul7_bicg32_im0_cma_data_reg_valid_out;
    wire bubble_out_i_mul7_bicg32_im0_cma_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul7_bicg32_im0_cma_data_reg_stall_out;
    wire bubble_out_i_mul7_bicg32_im0_cma_data_reg_stall_out_bitsignaltemp;
    wire [35:0] bubble_out_i_mul7_bicg32_im0_cma_data_reg_data_out;
    wire [0:0] bubble_out_i_mul7_bicg32_im8_cma_data_reg_valid_in;
    wire bubble_out_i_mul7_bicg32_im8_cma_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_mul7_bicg32_im8_cma_data_reg_stall_in;
    wire bubble_out_i_mul7_bicg32_im8_cma_data_reg_stall_in_bitsignaltemp;
    wire [27:0] bubble_out_i_mul7_bicg32_im8_cma_data_reg_data_in;
    wire [0:0] bubble_out_i_mul7_bicg32_im8_cma_data_reg_valid_out;
    wire bubble_out_i_mul7_bicg32_im8_cma_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul7_bicg32_im8_cma_data_reg_stall_out;
    wire bubble_out_i_mul7_bicg32_im8_cma_data_reg_stall_out_bitsignaltemp;
    wire [27:0] bubble_out_i_mul7_bicg32_im8_cma_data_reg_data_out;
    wire [0:0] bubble_out_i_mul11_bicg47_ma3_cma_data_reg_valid_in;
    wire bubble_out_i_mul11_bicg47_ma3_cma_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_mul11_bicg47_ma3_cma_data_reg_stall_in;
    wire bubble_out_i_mul11_bicg47_ma3_cma_data_reg_stall_in_bitsignaltemp;
    wire [32:0] bubble_out_i_mul11_bicg47_ma3_cma_data_reg_data_in;
    wire [0:0] bubble_out_i_mul11_bicg47_ma3_cma_data_reg_valid_out;
    wire bubble_out_i_mul11_bicg47_ma3_cma_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul11_bicg47_ma3_cma_data_reg_stall_out;
    wire bubble_out_i_mul11_bicg47_ma3_cma_data_reg_stall_out_bitsignaltemp;
    wire [32:0] bubble_out_i_mul11_bicg47_ma3_cma_data_reg_data_out;
    wire [0:0] bubble_out_i_mul7_bicg32_ma3_cma_data_reg_valid_in;
    wire bubble_out_i_mul7_bicg32_ma3_cma_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_mul7_bicg32_ma3_cma_data_reg_stall_in;
    wire bubble_out_i_mul7_bicg32_ma3_cma_data_reg_stall_in_bitsignaltemp;
    wire [32:0] bubble_out_i_mul7_bicg32_ma3_cma_data_reg_data_in;
    wire [0:0] bubble_out_i_mul7_bicg32_ma3_cma_data_reg_valid_out;
    wire bubble_out_i_mul7_bicg32_ma3_cma_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul7_bicg32_ma3_cma_data_reg_stall_out;
    wire bubble_out_i_mul7_bicg32_ma3_cma_data_reg_stall_out_bitsignaltemp;
    wire [32:0] bubble_out_i_mul7_bicg32_ma3_cma_data_reg_data_out;
    wire [0:0] SR_SE_coalesced_delay_0_1_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_1_r_valid;
    reg [65:0] SR_SE_coalesced_delay_0_1_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_1_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_1_V;
    wire [65:0] SR_SE_coalesced_delay_0_1_D0;
    wire [0:0] SR_SE_coalesced_delay_0_2_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_2_r_valid;
    reg [65:0] SR_SE_coalesced_delay_0_2_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_2_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_2_V;
    wire [65:0] SR_SE_coalesced_delay_0_2_D0;
    wire [0:0] SR_SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_i_valid;
    reg [0:0] SR_SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_r_valid;
    reg [0:0] SR_SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_r_data0;
    reg [0:0] SR_SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_r_data1;
    wire [0:0] SR_SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_backStall;
    wire [0:0] SR_SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_V;
    wire [0:0] SR_SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_D0;
    wire [0:0] SR_SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_D1;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_i_valid;
    reg [0:0] SR_SE_out_coalesced_delay_1_fifo_r_valid;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_and0;
    reg [0:0] SR_SE_out_coalesced_delay_1_fifo_r_data0;
    reg [0:0] SR_SE_out_coalesced_delay_1_fifo_r_data1;
    reg [0:0] SR_SE_out_coalesced_delay_1_fifo_r_data2;
    reg [0:0] SR_SE_out_coalesced_delay_1_fifo_r_data3;
    reg [0:0] SR_SE_out_coalesced_delay_1_fifo_r_data4;
    reg [0:0] SR_SE_out_coalesced_delay_1_fifo_r_data5;
    reg [31:0] SR_SE_out_coalesced_delay_1_fifo_r_data6;
    reg [63:0] SR_SE_out_coalesced_delay_1_fifo_r_data7;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_V;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_D0;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_D1;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_D2;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_D3;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_D4;
    wire [0:0] SR_SE_out_coalesced_delay_1_fifo_D5;
    wire [31:0] SR_SE_out_coalesced_delay_1_fifo_D6;
    wire [63:0] SR_SE_out_coalesced_delay_1_fifo_D7;
    wire [0:0] SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_i_valid;
    reg [0:0] SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_r_valid;
    reg [31:0] SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_r_data0;
    wire [0:0] SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_backStall;
    wire [0:0] SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_V;
    wire [31:0] SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_D0;
    wire [0:0] SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_i_valid;
    reg [0:0] SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_r_valid;
    reg [31:0] SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_r_data0;
    wire [0:0] SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_backStall;
    wire [0:0] SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_V;
    wire [31:0] SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_D0;
    wire [0:0] SR_SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_and0;
    reg [59:0] SR_SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_r_data0;
    reg [59:0] SR_SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_r_data1;
    wire [0:0] SR_SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_V;
    wire [59:0] SR_SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_D0;
    wire [59:0] SR_SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_D1;
    wire [0:0] SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_and1;
    reg [4:0] SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_r_data0;
    reg [4:0] SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_V;
    wire [4:0] SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_D0;
    wire [4:0] SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_i_valid;
    reg [0:0] SR_SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_r_valid;
    reg [59:0] SR_SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_r_data0;
    wire [0:0] SR_SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SR_SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_V;
    wire [59:0] SR_SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_D0;
    wire [0:0] SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_i_valid;
    reg [0:0] SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_r_valid;
    wire [0:0] SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_and0;
    wire [0:0] SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_and1;
    wire [0:0] SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_and2;
    reg [63:0] SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_r_data0;
    reg [0:0] SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_r_data1;
    reg [0:0] SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_r_data2;
    wire [0:0] SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_backStall;
    wire [0:0] SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_V;
    wire [63:0] SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_D0;
    wire [0:0] SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_D1;
    wire [0:0] SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_D2;
    wire [0:0] SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_and0;
    wire [0:0] SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_and1;
    reg [63:0] SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_r_data1;
    reg [0:0] SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_r_data2;
    wire [0:0] SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_V;
    wire [63:0] SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_D1;
    wire [0:0] SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_D2;
    wire [0:0] SR_SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_i_valid;
    reg [0:0] SR_SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_r_valid;
    reg [27:0] SR_SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_r_data0;
    wire [0:0] SR_SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_backStall;
    wire [0:0] SR_SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_V;
    wire [27:0] SR_SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_D0;
    wire [0:0] SR_SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_i_valid;
    reg [0:0] SR_SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_r_valid;
    reg [35:0] SR_SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_r_data0;
    wire [0:0] SR_SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_backStall;
    wire [0:0] SR_SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_V;
    wire [35:0] SR_SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_D0;
    wire [0:0] SR_SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_i_valid;
    reg [0:0] SR_SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_r_valid;
    reg [32:0] SR_SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_r_data0;
    wire [0:0] SR_SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_backStall;
    wire [0:0] SR_SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_V;
    wire [32:0] SR_SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_D0;
    wire [0:0] SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_and0;
    wire [0:0] SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_and1;
    reg [4:0] SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_r_data0;
    reg [4:0] SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_backStall;
    wire [0:0] SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_V;
    wire [4:0] SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_D0;
    wire [4:0] SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_D1;
    wire [0:0] SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_D2;
    wire [0:0] SR_SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_i_valid;
    reg [0:0] SR_SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_r_valid;
    reg [59:0] SR_SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_r_data0;
    wire [0:0] SR_SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_backStall;
    wire [0:0] SR_SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_V;
    wire [59:0] SR_SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_D0;
    wire [0:0] SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_i_valid;
    reg [0:0] SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_r_valid;
    reg [0:0] SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_r_data0;
    wire [0:0] SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_backStall;
    wire [0:0] SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_V;
    wire [0:0] SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_D0;
    wire [0:0] SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_i_valid;
    reg [0:0] SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_r_valid;
    reg [0:0] SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_r_data0;
    wire [0:0] SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_backStall;
    wire [0:0] SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_V;
    wire [0:0] SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_D0;
    wire [0:0] SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_i_valid;
    reg [0:0] SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_r_valid;
    reg [0:0] SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_r_data0;
    wire [0:0] SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_backStall;
    wire [0:0] SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_V;
    wire [0:0] SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_D0;
    wire [0:0] SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_i_valid;
    reg [0:0] SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_r_valid;
    reg [0:0] SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_r_data0;
    wire [0:0] SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_backStall;
    wire [0:0] SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_V;
    wire [0:0] SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_D0;
    wire [0:0] SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_i_valid;
    reg [0:0] SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_r_valid;
    reg [0:0] SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_r_data0;
    wire [0:0] SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_backStall;
    wire [0:0] SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_V;
    wire [0:0] SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_and0;
    wire [0:0] SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_and1;
    reg [63:0] SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_r_data1;
    reg [0:0] SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_r_data2;
    wire [0:0] SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_V;
    wire [63:0] SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_D1;
    wire [0:0] SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_D2;
    wire [0:0] SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_i_valid;
    reg [0:0] SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_r_valid;
    wire [0:0] SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_and0;
    wire [0:0] SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_and1;
    wire [0:0] SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_and2;
    wire [0:0] SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_and3;
    wire [0:0] SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_and4;
    wire [0:0] SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_and5;
    wire [0:0] SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_and6;
    reg [63:0] SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_r_data0;
    reg [0:0] SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_r_data1;
    reg [0:0] SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_r_data2;
    reg [31:0] SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_r_data3;
    wire [0:0] SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_backStall;
    wire [0:0] SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_V;
    wire [63:0] SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_D0;
    wire [0:0] SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_D1;
    wire [0:0] SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_D2;
    wire [31:0] SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_D3;
    wire [0:0] SR_SE_i_masked_bicg63_i_valid;
    reg [0:0] SR_SE_i_masked_bicg63_r_valid;
    wire [0:0] SR_SE_i_masked_bicg63_and0;
    reg [0:0] SR_SE_i_masked_bicg63_r_data0;
    reg [0:0] SR_SE_i_masked_bicg63_r_data1;
    wire [0:0] SR_SE_i_masked_bicg63_backStall;
    wire [0:0] SR_SE_i_masked_bicg63_V;
    wire [0:0] SR_SE_i_masked_bicg63_D0;
    wire [0:0] SR_SE_i_masked_bicg63_D1;
    wire [0:0] SR_SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_i_valid;
    reg [0:0] SR_SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_r_valid;
    reg [31:0] SR_SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_r_data0;
    wire [0:0] SR_SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_backStall;
    wire [0:0] SR_SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_V;
    wire [31:0] SR_SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_D0;
    wire [0:0] SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_and1;
    reg [4:0] SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_r_data0;
    reg [4:0] SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_V;
    wire [4:0] SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_D0;
    wire [4:0] SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_i_valid;
    reg [0:0] SR_SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_r_valid;
    reg [59:0] SR_SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_r_data0;
    wire [0:0] SR_SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SR_SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_V;
    wire [59:0] SR_SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_D0;
    wire [0:0] SR_SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_i_valid;
    reg [0:0] SR_SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_r_valid;
    reg [0:0] SR_SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_r_data0;
    wire [0:0] SR_SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_backStall;
    wire [0:0] SR_SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_V;
    wire [0:0] SR_SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_D0;
    wire [0:0] SR_SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_i_valid;
    reg [0:0] SR_SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_r_valid;
    reg [27:0] SR_SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_r_data0;
    wire [0:0] SR_SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_backStall;
    wire [0:0] SR_SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_V;
    wire [27:0] SR_SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_D0;
    wire [0:0] SR_SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_i_valid;
    reg [0:0] SR_SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_r_valid;
    reg [35:0] SR_SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_r_data0;
    wire [0:0] SR_SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_backStall;
    wire [0:0] SR_SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_V;
    wire [35:0] SR_SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_D0;
    wire [0:0] SR_SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_i_valid;
    reg [0:0] SR_SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_r_valid;
    reg [32:0] SR_SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_r_data0;
    wire [0:0] SR_SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_backStall;
    wire [0:0] SR_SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_V;
    wire [32:0] SR_SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_D0;
    wire [0:0] SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_and0;
    wire [0:0] SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_and1;
    reg [4:0] SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_r_data0;
    reg [4:0] SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_backStall;
    wire [0:0] SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_V;
    wire [4:0] SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_D0;
    wire [4:0] SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_D1;
    wire [0:0] SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_D2;
    wire [0:0] SR_SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_i_valid;
    reg [0:0] SR_SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_r_valid;
    reg [59:0] SR_SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_r_data0;
    wire [0:0] SR_SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_backStall;
    wire [0:0] SR_SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_V;
    wire [59:0] SR_SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_D0;
    wire [0:0] SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_i_valid;
    reg [0:0] SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_r_valid;
    reg [31:0] SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_r_data0;
    wire [0:0] SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_backStall;
    wire [0:0] SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_V;
    wire [31:0] SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_D0;
    wire [0:0] SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_i_valid;
    reg [0:0] SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_r_valid;
    reg [31:0] SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_r_data0;
    wire [0:0] SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_backStall;
    wire [0:0] SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_V;
    wire [31:0] SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_D0;
    wire [0:0] SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_i_valid;
    reg [0:0] SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_r_valid;
    reg [63:0] SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_r_data0;
    wire [0:0] SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_backStall;
    wire [0:0] SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_V;
    wire [63:0] SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_D0;
    wire [0:0] SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_i_valid;
    reg [0:0] SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_r_valid;
    reg [63:0] SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_r_data0;
    wire [0:0] SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_backStall;
    wire [0:0] SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_V;
    wire [63:0] SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_D0;
    wire [0:0] SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_i_valid;
    reg [0:0] SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_r_valid;
    reg [0:0] SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_r_data0;
    wire [0:0] SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_backStall;
    wire [0:0] SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_V;
    wire [0:0] SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_D0;
    wire [0:0] SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_i_valid;
    reg [0:0] SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_r_valid;
    reg [0:0] SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_r_data0;
    wire [0:0] SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_backStall;
    wire [0:0] SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_V;
    wire [0:0] SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_D0;
    wire [0:0] SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_i_valid;
    reg [0:0] SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_r_valid;
    reg [0:0] SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_r_data0;
    wire [0:0] SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_backStall;
    wire [0:0] SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_V;
    wire [0:0] SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_D0;
    wire [0:0] SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_i_valid;
    reg [0:0] SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_r_valid;
    reg [0:0] SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_r_data0;
    wire [0:0] SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_backStall;
    wire [0:0] SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_V;
    wire [0:0] SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_D0;
    wire [0:0] SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_i_valid;
    reg [0:0] SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_r_valid;
    reg [0:0] SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_r_data0;
    wire [0:0] SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_backStall;
    wire [0:0] SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_V;
    wire [0:0] SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_D0;
    wire [0:0] SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_i_valid;
    reg [0:0] SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_r_valid;
    reg [0:0] SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_r_data0;
    wire [0:0] SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_backStall;
    wire [0:0] SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_V;
    wire [0:0] SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_D0;
    wire [0:0] SR_SE_join_for_coalesced_delay_3_i_valid;
    reg [0:0] SR_SE_join_for_coalesced_delay_3_r_valid;
    wire [0:0] SR_SE_join_for_coalesced_delay_3_and0;
    wire [0:0] SR_SE_join_for_coalesced_delay_3_and1;
    wire [0:0] SR_SE_join_for_coalesced_delay_3_and2;
    wire [0:0] SR_SE_join_for_coalesced_delay_3_and3;
    reg [98:0] SR_SE_join_for_coalesced_delay_3_r_data0;
    wire [0:0] SR_SE_join_for_coalesced_delay_3_backStall;
    wire [0:0] SR_SE_join_for_coalesced_delay_3_V;
    wire [98:0] SR_SE_join_for_coalesced_delay_3_D0;
    wire [0:0] SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_i_valid;
    reg [0:0] SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_r_valid;
    reg [0:0] SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_r_data0;
    wire [0:0] SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_backStall;
    wire [0:0] SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_V;
    wire [0:0] SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_D0;
    wire [0:0] SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_i_valid;
    reg [0:0] SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_r_valid;
    reg [0:0] SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_r_data0;
    wire [0:0] SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_backStall;
    wire [0:0] SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_V;
    wire [0:0] SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_D0;
    wire [0:0] SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_i_valid;
    reg [0:0] SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_r_valid;
    reg [0:0] SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_r_data0;
    wire [0:0] SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_backStall;
    wire [0:0] SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_V;
    wire [0:0] SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_D0;
    wire [0:0] SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_i_valid;
    reg [0:0] SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_r_valid;
    reg [0:0] SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_r_data0;
    wire [0:0] SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_backStall;
    wire [0:0] SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_V;
    wire [0:0] SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_D0;
    wire [0:0] SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_i_valid;
    reg [0:0] SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_r_valid;
    reg [0:0] SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_r_data0;
    wire [0:0] SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_backStall;
    wire [0:0] SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_V;
    wire [0:0] SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_D0;
    wire [0:0] SR_SE_i_next_initerations_bicg6_vt_select_0_i_valid;
    reg [0:0] SR_SE_i_next_initerations_bicg6_vt_select_0_r_valid;
    wire [0:0] SR_SE_i_next_initerations_bicg6_vt_select_0_and0;
    reg [0:0] SR_SE_i_next_initerations_bicg6_vt_select_0_r_data0;
    reg [0:0] SR_SE_i_next_initerations_bicg6_vt_select_0_r_data1;
    reg [0:0] SR_SE_i_next_initerations_bicg6_vt_select_0_r_data2;
    reg [1:0] SR_SE_i_next_initerations_bicg6_vt_select_0_r_data3;
    wire [0:0] SR_SE_i_next_initerations_bicg6_vt_select_0_backStall;
    wire [0:0] SR_SE_i_next_initerations_bicg6_vt_select_0_V;
    wire [0:0] SR_SE_i_next_initerations_bicg6_vt_select_0_D0;
    wire [0:0] SR_SE_i_next_initerations_bicg6_vt_select_0_D1;
    wire [0:0] SR_SE_i_next_initerations_bicg6_vt_select_0_D2;
    wire [1:0] SR_SE_i_next_initerations_bicg6_vt_select_0_D3;
    wire [0:0] SR_SE_bgTrunc_i_inc_bicg51_sel_x_i_valid;
    reg [0:0] SR_SE_bgTrunc_i_inc_bicg51_sel_x_r_valid;
    wire [0:0] SR_SE_bgTrunc_i_inc_bicg51_sel_x_and0;
    reg [31:0] SR_SE_bgTrunc_i_inc_bicg51_sel_x_r_data0;
    reg [0:0] SR_SE_bgTrunc_i_inc_bicg51_sel_x_r_data1;
    wire [0:0] SR_SE_bgTrunc_i_inc_bicg51_sel_x_backStall;
    wire [0:0] SR_SE_bgTrunc_i_inc_bicg51_sel_x_V;
    wire [31:0] SR_SE_bgTrunc_i_inc_bicg51_sel_x_D0;
    wire [0:0] SR_SE_bgTrunc_i_inc_bicg51_sel_x_D1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_and0;
    reg [31:0] SR_SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_V;
    wire [31:0] SR_SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_D1;


    // SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q(STALLENABLE,909)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_V0 = SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_wireValid;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_backStall = i_llvm_fpga_mem_unnamed_bicg12_bicg24_out_o_stall | ~ (SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_wireValid = SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_V;

    // bubble_join_i_llvm_fpga_mem_unnamed_bicg12_bicg24(BITJOIN,615)
    assign bubble_join_i_llvm_fpga_mem_unnamed_bicg12_bicg24_q = i_llvm_fpga_mem_unnamed_bicg12_bicg24_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_bicg12_bicg24(BITSELECT,616)
    assign bubble_select_i_llvm_fpga_mem_unnamed_bicg12_bicg24_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_bicg12_bicg24_q[31:0]);

    // i_mul11_bicg47_bs2_merged_bit_select(BITSELECT,417)@37
    assign i_mul11_bicg47_bs2_merged_bit_select_b = bubble_select_i_llvm_fpga_mem_unnamed_bicg12_bicg24_b[17:0];
    assign i_mul11_bicg47_bs2_merged_bit_select_c = bubble_select_i_llvm_fpga_mem_unnamed_bicg12_bicg24_b[31:18];

    // join_for_coalesced_delay_2(BITJOIN,493)
    assign join_for_coalesced_delay_2_q = {i_mul11_bicg47_bs2_merged_bit_select_c, i_mul11_bicg47_bs2_merged_bit_select_b};

    // SE_redist44_i_first_cleanup_xor_bicg2_q_5_3(STALLENABLE,1035)
    // Valid signal propagation
    assign SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_V0 = SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_R_v_0;
    // Stall signal propagation
    assign SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_s_tv_0 = SE_redist44_i_first_cleanup_xor_bicg2_q_5_4_backStall & SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_R_v_0;
    // Backward Enable generation
    assign SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_backEN = ~ (SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_v_s_0 = SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_backEN & SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_V;
    // Backward Stall generation
    assign SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_backStall = ~ (SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_backEN == 1'b0)
            begin
                SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_R_v_0 <= SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_R_v_0 & SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_s_tv_0;
            end
            else
            begin
                SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_R_v_0 <= SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_v_s_0;
            end

        end
    end

    // SE_redist44_i_first_cleanup_xor_bicg2_q_5_1(STALLENABLE,1033)
    // Valid signal propagation
    assign SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_V0 = SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_R_v_0;
    // Stall signal propagation
    assign SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_s_tv_0 = SE_redist44_i_first_cleanup_xor_bicg2_q_5_2_backStall & SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_R_v_0;
    // Backward Enable generation
    assign SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_backEN = ~ (SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_v_s_0 = SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_backEN & SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_V;
    // Backward Stall generation
    assign SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_backStall = ~ (SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_backEN == 1'b0)
            begin
                SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_R_v_0 <= SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_R_v_0 & SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_s_tv_0;
            end
            else
            begin
                SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_R_v_0 <= SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_v_s_0;
            end

        end
    end

    // bubble_join_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo(BITJOIN,753)
    assign bubble_join_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_q = redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_data_out;

    // bubble_select_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo(BITSELECT,754)
    assign bubble_select_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_b = $unsigned(bubble_join_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_q[0:0]);

    // bubble_join_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo(BITJOIN,756)
    assign bubble_join_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_q = redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_data_out;

    // bubble_select_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo(BITSELECT,757)
    assign bubble_select_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_b = $unsigned(bubble_join_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_q[0:0]);

    // rightShiftStage0Idx1Rng1_uid268_i_next_initerations_bicg0_shift_x(BITSELECT,267)@105
    assign rightShiftStage0Idx1Rng1_uid268_i_next_initerations_bicg0_shift_x_b = bubble_select_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_b[1:1];

    // rightShiftStage0Idx1_uid270_i_next_initerations_bicg0_shift_x(BITJOIN,269)@105
    assign rightShiftStage0Idx1_uid270_i_next_initerations_bicg0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid268_i_next_initerations_bicg0_shift_x_b};

    // bubble_join_i_llvm_fpga_pop_i2_initerations_pop18_bicg5(BITJOIN,658)
    assign bubble_join_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_q = i_llvm_fpga_pop_i2_initerations_pop18_bicg5_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i2_initerations_pop18_bicg5(BITSELECT,659)
    assign bubble_select_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_b = $unsigned(bubble_join_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_q[1:0]);

    // rightShiftStage0_uid272_i_next_initerations_bicg0_shift_x(MUX,271)@105
    assign rightShiftStage0_uid272_i_next_initerations_bicg0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid272_i_next_initerations_bicg0_shift_x_s or bubble_select_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_b or rightShiftStage0Idx1_uid270_i_next_initerations_bicg0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid272_i_next_initerations_bicg0_shift_x_s)
            1'b0 : rightShiftStage0_uid272_i_next_initerations_bicg0_shift_x_q = bubble_select_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_b;
            1'b1 : rightShiftStage0_uid272_i_next_initerations_bicg0_shift_x_q = rightShiftStage0Idx1_uid270_i_next_initerations_bicg0_shift_x_q;
            default : rightShiftStage0_uid272_i_next_initerations_bicg0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations_bicg6_vt_select_0(BITSELECT,131)@105
    assign i_next_initerations_bicg6_vt_select_0_b = rightShiftStage0_uid272_i_next_initerations_bicg0_shift_x_q[0:0];

    // i_next_initerations_bicg6_vt_join(BITJOIN,130)@105
    assign i_next_initerations_bicg6_vt_join_q = {GND_q, i_next_initerations_bicg6_vt_select_0_b};

    // bubble_join_i_llvm_fpga_pipeline_keep_going_bicg4(BITJOIN,628)
    assign bubble_join_i_llvm_fpga_pipeline_keep_going_bicg4_q = i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out;

    // bubble_select_i_llvm_fpga_pipeline_keep_going_bicg4(BITSELECT,629)
    assign bubble_select_i_llvm_fpga_pipeline_keep_going_bicg4_b = $unsigned(bubble_join_i_llvm_fpga_pipeline_keep_going_bicg4_q[0:0]);

    // redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_0(REG,560)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_0_backEN == 1'b1)
        begin
            redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_0_q <= $unsigned(bubble_select_i_llvm_fpga_pipeline_keep_going_bicg4_b);
        end
    end

    // SE_out_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8433_push23_bicg30(STALLENABLE,870)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8433_push23_bicg30_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8433_push23_bicg30_wireValid = i_llvm_fpga_push_p1025i32_mptr_bitcast_index8433_push23_bicg30_out_valid_out;

    // bubble_join_redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo(BITJOIN,708)
    assign bubble_join_redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_q = redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_data_out;

    // bubble_select_redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo(BITSELECT,709)
    assign bubble_select_redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_b = $unsigned(bubble_join_redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_q[63:0]);

    // i_llvm_fpga_push_p1025i32_mptr_bitcast_index8433_push23_bicg30(BLACKBOX,123)@70
    // in in_stall_in@20000000
    // out out_data_out@71
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    // out out_stall_out@20000000
    // out out_valid_out@71
    bicg_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8433_push23_0 thei_llvm_fpga_push_p1025i32_mptr_bitcast_index8433_push23_bicg30 (
        .in_data_in(bubble_select_redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_b),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_feedback_stall_out_23),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_bicg4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8433_push23_bicg30_backStall),
        .in_valid_in(SE_out_redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_V0),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_p1025i32_mptr_bitcast_index8433_push23_bicg30_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_p1025i32_mptr_bitcast_index8433_push23_bicg30_out_feedback_valid_out_23),
        .out_stall_out(i_llvm_fpga_push_p1025i32_mptr_bitcast_index8433_push23_bicg30_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_p1025i32_mptr_bitcast_index8433_push23_bicg30_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29(BITJOIN,680)
    assign bubble_join_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_q = i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out;

    // bubble_select_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29(BITSELECT,681)
    assign bubble_select_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_b = $unsigned(bubble_join_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_q[63:0]);

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19(BITJOIN,645)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_q = i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19(BITSELECT,646)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_q[0:0]);

    // redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo(STALLFIFO,550)
    assign redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_valid_in = SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_V1;
    assign redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_stall_in = SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_backStall;
    assign redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_data_in = redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_q;
    assign redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_valid_in_bitsignaltemp = redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_valid_in[0];
    assign redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_stall_in_bitsignaltemp = redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_stall_in[0];
    assign redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_valid_out[0] = redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_valid_out_bitsignaltemp;
    assign redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_stall_out[0] = redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(66),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo (
        .valid_in(redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_valid_in_bitsignaltemp),
        .stall_in(redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_stall_in_bitsignaltemp),
        .data_in(redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_q),
        .valid_out(redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_valid_out_bitsignaltemp),
        .stall_out(redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_stall_out_bitsignaltemp),
        .data_out(redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist19_i_reduction_bicg_0_bicg21_q_5_0(REG,515)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_reduction_bicg_0_bicg21_q_5_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_backEN == 1'b1)
        begin
            redist19_i_reduction_bicg_0_bicg21_q_5_0_q <= $unsigned(SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_D0);
        end
    end

    // redist19_i_reduction_bicg_0_bicg21_q_5_1(REG,516)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_reduction_bicg_0_bicg21_q_5_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist19_i_reduction_bicg_0_bicg21_q_5_1_backEN == 1'b1)
        begin
            redist19_i_reduction_bicg_0_bicg21_q_5_1_q <= $unsigned(redist19_i_reduction_bicg_0_bicg21_q_5_0_q);
        end
    end

    // redist19_i_reduction_bicg_0_bicg21_q_5_2(REG,517)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_reduction_bicg_0_bicg21_q_5_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_backEN == 1'b1)
        begin
            redist19_i_reduction_bicg_0_bicg21_q_5_2_q <= $unsigned(SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_D0);
        end
    end

    // redist19_i_reduction_bicg_0_bicg21_q_5_3(REG,518)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_reduction_bicg_0_bicg21_q_5_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist19_i_reduction_bicg_0_bicg21_q_5_3_backEN == 1'b1)
        begin
            redist19_i_reduction_bicg_0_bicg21_q_5_3_q <= $unsigned(redist19_i_reduction_bicg_0_bicg21_q_5_2_q);
        end
    end

    // redist19_i_reduction_bicg_0_bicg21_q_5_4(REG,519)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_reduction_bicg_0_bicg21_q_5_4_q <= $unsigned(1'b0);
        end
        else if (SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_backEN == 1'b1)
        begin
            redist19_i_reduction_bicg_0_bicg21_q_5_4_q <= $unsigned(SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_D0);
        end
    end

    // SE_redist12_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_q_1_0(STALLENABLE,958)
    // Valid signal propagation
    assign SE_redist12_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_q_1_0_V0 = SE_redist12_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist12_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_q_1_0_s_tv_0 = SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_backStall & SE_redist12_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist12_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist12_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist12_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist12_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_q_1_0_backEN & SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_V1;
    // Backward Stall generation
    assign SE_redist12_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist12_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_q_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist12_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist12_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist12_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist12_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist12_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist12_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist12_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2(STALLENABLE,901)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_V0 = SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_R_v_0;
    assign SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_V1 = SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_s_tv_0 = SE_i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_backStall & SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_R_v_0;
    assign SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_s_tv_1 = SE_redist12_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_q_1_0_backStall & SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_or0 = SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_s_tv_0;
    assign SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_backEN = ~ (SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_s_tv_1 | SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_v_s_0 = SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_backEN & SR_SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_backStall = ~ (SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_R_v_0 <= SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_R_v_0 & SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_R_v_0 <= SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_R_v_1 <= SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_R_v_1 & SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_R_v_1 <= SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // c_i32_073(CONSTANT,63)
    assign c_i32_073_q = $unsigned(32'b00000000000000000000000000000000);

    // i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_tessel0_2(BITSELECT,363)
    assign i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_tessel0_2_b = c_i32_073_q[25:0];

    // bubble_join_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo(BITJOIN,714)
    assign bubble_join_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_q = redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_data_out;

    // bubble_select_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo(BITSELECT,715)
    assign bubble_select_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_b = $unsigned(bubble_join_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_q[31:0]);

    // redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0(REG,540)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_backEN == 1'b1)
        begin
            redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_q <= $unsigned(SR_SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_D0);
        end
    end

    // i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,376)@71
    assign i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_tessel0_2_b, redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_q, i_mptr_bitcast_index76_bicg0_c_i2_01_x_q};

    // bubble_join_bicg_B3_merge_reg_aunroll_x(BITJOIN,597)
    assign bubble_join_bicg_B3_merge_reg_aunroll_x_q = {bicg_B3_merge_reg_aunroll_x_out_data_out_9_tpl, bicg_B3_merge_reg_aunroll_x_out_data_out_8_tpl, bicg_B3_merge_reg_aunroll_x_out_data_out_7_tpl, bicg_B3_merge_reg_aunroll_x_out_data_out_6_tpl, bicg_B3_merge_reg_aunroll_x_out_data_out_5_tpl, bicg_B3_merge_reg_aunroll_x_out_data_out_4_tpl, bicg_B3_merge_reg_aunroll_x_out_data_out_3_tpl, bicg_B3_merge_reg_aunroll_x_out_data_out_2_tpl, bicg_B3_merge_reg_aunroll_x_out_data_out_1_tpl, bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_bicg_B3_merge_reg_aunroll_x(BITSELECT,598)
    assign bubble_select_bicg_B3_merge_reg_aunroll_x_b = $unsigned(bubble_join_bicg_B3_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_bicg_B3_merge_reg_aunroll_x_c = $unsigned(bubble_join_bicg_B3_merge_reg_aunroll_x_q[64:1]);
    assign bubble_select_bicg_B3_merge_reg_aunroll_x_d = $unsigned(bubble_join_bicg_B3_merge_reg_aunroll_x_q[65:65]);
    assign bubble_select_bicg_B3_merge_reg_aunroll_x_e = $unsigned(bubble_join_bicg_B3_merge_reg_aunroll_x_q[97:66]);
    assign bubble_select_bicg_B3_merge_reg_aunroll_x_f = $unsigned(bubble_join_bicg_B3_merge_reg_aunroll_x_q[129:98]);
    assign bubble_select_bicg_B3_merge_reg_aunroll_x_g = $unsigned(bubble_join_bicg_B3_merge_reg_aunroll_x_q[193:130]);
    assign bubble_select_bicg_B3_merge_reg_aunroll_x_h = $unsigned(bubble_join_bicg_B3_merge_reg_aunroll_x_q[194:194]);
    assign bubble_select_bicg_B3_merge_reg_aunroll_x_i = $unsigned(bubble_join_bicg_B3_merge_reg_aunroll_x_q[195:195]);
    assign bubble_select_bicg_B3_merge_reg_aunroll_x_j = $unsigned(bubble_join_bicg_B3_merge_reg_aunroll_x_q[196:196]);
    assign bubble_select_bicg_B3_merge_reg_aunroll_x_k = $unsigned(bubble_join_bicg_B3_merge_reg_aunroll_x_q[197:197]);

    // join_for_coalesced_delay_1(BITJOIN,490)
    assign join_for_coalesced_delay_1_q = {bubble_select_bicg_B3_merge_reg_aunroll_x_i, bubble_select_bicg_B3_merge_reg_aunroll_x_h, bubble_select_bicg_B3_merge_reg_aunroll_x_e, bubble_select_bicg_B3_merge_reg_aunroll_x_c};

    // coalesced_delay_1_fifo(STALLFIFO,593)
    assign coalesced_delay_1_fifo_valid_in = SE_out_bicg_B3_merge_reg_aunroll_x_V7;
    assign coalesced_delay_1_fifo_stall_in = SR_SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_1_fifo_data_in = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_valid_in_bitsignaltemp = coalesced_delay_1_fifo_valid_in[0];
    assign coalesced_delay_1_fifo_stall_in_bitsignaltemp = coalesced_delay_1_fifo_stall_in[0];
    assign coalesced_delay_1_fifo_valid_out[0] = coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_1_fifo_stall_out[0] = coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(104),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(98),
        .IMPL("ram")
    ) thecoalesced_delay_1_fifo (
        .valid_in(coalesced_delay_1_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_1_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_1_q),
        .valid_out(coalesced_delay_1_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_1_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_1_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_BitJoin_for_b(STALLENABLE,925)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_V0 = SE_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_backStall = SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_backStall | ~ (SE_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_and0 = SE_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_tessel0_2_V2;
    assign SE_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid = SE_redist7_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_tessel0_1_b_1_0_V0 & SE_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_and0;

    // bubble_join_i_llvm_fpga_pop_i32_mul32_pop22_bicg11(BITJOIN,665)
    assign bubble_join_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_q = i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_mul32_pop22_bicg11(BITSELECT,666)
    assign bubble_select_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_q[31:0]);

    // redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo(STALLFIFO,532)
    assign redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_valid_in = SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_V1;
    assign redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_stall_in = SE_out_redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_backStall;
    assign redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_data_in = bubble_select_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_b;
    assign redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_valid_in_bitsignaltemp = redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_valid_in[0];
    assign redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_stall_in_bitsignaltemp = redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_stall_in[0];
    assign redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_valid_out[0] = redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_valid_out_bitsignaltemp;
    assign redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_stall_out[0] = redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(69),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo (
        .valid_in(redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_valid_in_bitsignaltemp),
        .stall_in(redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_b),
        .valid_out(redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_valid_out_bitsignaltemp),
        .stall_out(redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_stall_out_bitsignaltemp),
        .data_out(redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11(STALLENABLE,828)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_fromReg0 <= SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_fromReg1 <= SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_consumed0 = (~ (SE_i_add_bicg13_backStall) & SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_wireValid) | SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_consumed1 = (~ (redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_wireValid) | SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_StallValid = SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_backStall & SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_wireValid;
    assign SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_toReg0 = SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_StallValid & SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_toReg1 = SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_StallValid & SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_or0 = SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_wireStall = ~ (SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_consumed1 & SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_or0);
    assign SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_backStall = SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_V0 = SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_V1 = SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_wireValid = i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_valid_out;

    // bubble_join_i_llvm_fpga_pop_i32_j_070_pop15_bicg10(BITJOIN,662)
    assign bubble_join_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_q = i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_j_070_pop15_bicg10(BITSELECT,663)
    assign bubble_select_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_q[31:0]);

    // redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_0(REG,533)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_0_backEN == 1'b1)
        begin
            redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_0_q <= $unsigned(bubble_select_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_b);
        end
    end

    // redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_1(REG,534)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_1_backEN == 1'b1)
        begin
            redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_1_q <= $unsigned(redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_0_q);
        end
    end

    // redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2(REG,535)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_backEN == 1'b1)
        begin
            redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_q <= $unsigned(SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_D0);
        end
    end

    // redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_3(REG,536)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_3_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_3_backEN == 1'b1)
        begin
            redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_3_q <= $unsigned(redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_q);
        end
    end

    // SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4(STALLREG,1325)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_r_valid <= 1'b0;
            SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_r_valid <= SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_backStall & (SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_r_valid | SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_i_valid);

            if (SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_r_data0 <= $unsigned(redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_i_valid = SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_3_V0;
    // Stall signal propagation
    assign SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_backStall = SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_r_valid | ~ (SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_i_valid);

    // Valid
    assign SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_V = SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_r_valid == 1'b1 ? SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_r_valid : SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_i_valid;

    assign SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_D0 = SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_r_valid == 1'b1 ? SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_r_data0 : redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_3_q;

    // SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_3(STALLENABLE,989)
    // Valid signal propagation
    assign SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_3_V0 = SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_3_R_v_0;
    // Stall signal propagation
    assign SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_3_s_tv_0 = SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_backStall & SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_3_R_v_0;
    // Backward Enable generation
    assign SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_3_backEN = ~ (SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_3_v_s_0 = SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_3_backEN & SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_V0;
    // Backward Stall generation
    assign SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_3_backStall = ~ (SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_3_backEN == 1'b0)
            begin
                SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_3_R_v_0 <= SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_3_R_v_0 & SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_3_s_tv_0;
            end
            else
            begin
                SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_3_R_v_0 <= SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_3_v_s_0;
            end

        end
    end

    // SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2(STALLENABLE,988)
    // Valid signal propagation
    assign SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_V0 = SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_R_v_0;
    // Stall signal propagation
    assign SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_s_tv_0 = SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_3_backStall & SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_R_v_0;
    // Backward Enable generation
    assign SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_backEN = ~ (SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_v_s_0 = SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_backEN & SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_V;
    // Backward Stall generation
    assign SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_backStall = ~ (SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_backEN == 1'b0)
            begin
                SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_R_v_0 <= SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_R_v_0 & SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_s_tv_0;
            end
            else
            begin
                SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_R_v_0 <= SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_v_s_0;
            end

        end
    end

    // SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2(STALLREG,1324)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_r_valid <= 1'b0;
            SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_r_valid <= SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_backStall & (SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_r_valid | SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_i_valid);

            if (SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_r_data0 <= $unsigned(redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_i_valid = SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_1_V0;
    // Stall signal propagation
    assign SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_backStall = SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_r_valid | ~ (SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_i_valid);

    // Valid
    assign SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_V = SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_r_valid == 1'b1 ? SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_r_valid : SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_i_valid;

    assign SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_D0 = SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_r_valid == 1'b1 ? SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_r_data0 : redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_1_q;

    // SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_1(STALLENABLE,987)
    // Valid signal propagation
    assign SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_1_V0 = SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_1_R_v_0;
    // Stall signal propagation
    assign SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_1_s_tv_0 = SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_2_backStall & SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_1_R_v_0;
    // Backward Enable generation
    assign SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_1_backEN = ~ (SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_1_v_s_0 = SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_1_backEN & SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_0_V0;
    // Backward Stall generation
    assign SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_1_backStall = ~ (SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_1_backEN == 1'b0)
            begin
                SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_1_R_v_0 <= SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_1_R_v_0 & SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_1_s_tv_0;
            end
            else
            begin
                SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_1_R_v_0 <= SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_1_v_s_0;
            end

        end
    end

    // SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_0(STALLENABLE,986)
    // Valid signal propagation
    assign SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_0_V0 = SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_0_R_v_0;
    // Stall signal propagation
    assign SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_0_s_tv_0 = SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_1_backStall & SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_0_R_v_0;
    // Backward Enable generation
    assign SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_0_backEN = ~ (SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_0_v_s_0 = SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_0_backEN & SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_V1;
    // Backward Stall generation
    assign SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_0_backStall = ~ (SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_0_backEN == 1'b0)
            begin
                SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_0_R_v_0 <= SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_0_R_v_0 & SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_0_s_tv_0;
            end
            else
            begin
                SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_0_R_v_0 <= SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10(STALLENABLE,826)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_fromReg0 <= SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_fromReg1 <= SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_consumed0 = (~ (SE_i_add_bicg13_backStall) & SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_wireValid) | SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_consumed1 = (~ (SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_0_backStall) & SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_wireValid) | SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_StallValid = SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_backStall & SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_wireValid;
    assign SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_toReg0 = SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_StallValid & SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_toReg1 = SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_StallValid & SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_or0 = SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_wireStall = ~ (SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_consumed1 & SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_or0);
    assign SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_backStall = SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_V0 = SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_V1 = SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_wireValid = i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_valid_out;

    // SE_i_add_bicg13(STALLENABLE,783)
    // Valid signal propagation
    assign SE_i_add_bicg13_V0 = SE_i_add_bicg13_wireValid;
    // Backward Stall generation
    assign SE_i_add_bicg13_backStall = SE_redist7_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backStall | ~ (SE_i_add_bicg13_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_add_bicg13_and0 = SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_V0;
    assign SE_i_add_bicg13_wireValid = SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_V0 & SE_i_add_bicg13_and0;

    // SE_redist7_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_tessel0_1_b_1_0(STALLENABLE,953)
    // Valid signal propagation
    assign SE_redist7_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_tessel0_1_b_1_0_V0 = SE_redist7_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_tessel0_1_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist7_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_tessel0_1_b_1_0_s_tv_0 = SE_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_backStall & SE_redist7_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_tessel0_1_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist7_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backEN = ~ (SE_redist7_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_tessel0_1_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist7_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_tessel0_1_b_1_0_v_s_0 = SE_redist7_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backEN & SE_i_add_bicg13_V0;
    // Backward Stall generation
    assign SE_redist7_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backStall = ~ (SE_redist7_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_tessel0_1_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist7_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_tessel0_1_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist7_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backEN == 1'b0)
            begin
                SE_redist7_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_tessel0_1_b_1_0_R_v_0 <= SE_redist7_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_tessel0_1_b_1_0_R_v_0 & SE_redist7_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_tessel0_1_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist7_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_tessel0_1_b_1_0_R_v_0 <= SE_redist7_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_tessel0_1_b_1_0_v_s_0;
            end

        end
    end

    // i_add_bicg13(ADD,73)@2
    assign i_add_bicg13_a = {1'b0, bubble_select_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_b};
    assign i_add_bicg13_b = {1'b0, bubble_select_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_b};
    assign i_add_bicg13_o = $unsigned(i_add_bicg13_a) + $unsigned(i_add_bicg13_b);
    assign i_add_bicg13_q = i_add_bicg13_o[32:0];

    // i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_tessel0_1(BITSELECT,386)@2
    assign i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_tessel0_1_b = $unsigned(i_add_bicg13_q[31:0]);

    // redist7_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_tessel0_1_b_1_0(REG,503)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_tessel0_1_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist7_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_tessel0_1_b_1_0_backEN == 1'b1)
        begin
            redist7_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_tessel0_1_b_1_0_q <= $unsigned(i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_tessel0_1_b);
        end
    end

    // i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,388)@3
    assign i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_tessel0_2_b, redist7_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_tessel0_1_b_1_0_q, i_mptr_bitcast_index76_bicg0_c_i2_01_x_q};

    // bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15(BITJOIN,609)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_q = i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15(BITSELECT,610)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_q[63:0]);

    // i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,416)@3
    assign i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_b[59:0]);
    assign i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_b[63:60]);

    // i_mptr_bitcast_index_bicg0_add_x_p1_of_2(ADD,335)@3 + 1
    assign i_mptr_bitcast_index_bicg0_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b};
    assign i_mptr_bitcast_index_bicg0_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index_bicg0_add_x_p1_of_2_o <= 61'b0;
        end
        else if (SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index_bicg0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index_bicg0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index_bicg0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index_bicg0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index_bicg0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q = i_mptr_bitcast_index_bicg0_add_x_p1_of_2_o[59:0];

    // redist4_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(REG,500)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(4'b0000);
        end
        else if (SE_redist4_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b1)
        begin
            redist4_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,384)@4
    assign i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist4_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q};

    // SE_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_tessel1_0(STALLENABLE,919)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_tessel1_0_V0 = 1'b1;
    assign SE_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_tessel1_0_V1 = 1'b1;
    assign SE_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_tessel1_0_V2 = 1'b1;

    // SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2(STALLENABLE,908)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_V0 = SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_s_tv_0 = SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_backStall & SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_backEN = ~ (SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_v_s_0 = SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_backEN & SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_backStall = ~ (SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_R_v_0 <= SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_R_v_0 & SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_R_v_0 <= SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2(STALLREG,1327)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_r_data0 <= 5'bxxxxx;
            SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_r_data1 <= 5'bxxxxx;
            SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_r_valid <= SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_backStall & (SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_r_valid | SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_i_valid);

            if (SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_r_data0 <= $unsigned(i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_r_data1 <= $unsigned(i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_r_data2 <= $unsigned(i_mptr_bitcast_index_bicg0_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_and0 = SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_V0;
    assign SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_and1 = SE_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_tessel1_0_V2 & SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_and0;
    assign SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_i_valid = SE_redist4_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 & SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_backStall = SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_r_valid | ~ (SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_V = SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_r_valid : SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_D0 = SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_r_data0 : i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_D1 = SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_r_data1 : i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_D2 = SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_r_data2 : i_mptr_bitcast_index_bicg0_add_x_p1_of_2_c;

    // SE_redist4_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(STALLENABLE,950)
    // Valid signal propagation
    assign SE_redist4_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 = SE_redist4_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist4_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0 = SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_backStall & SE_redist4_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist4_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN = ~ (SE_redist4_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist4_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0 = SE_redist4_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_V1;
    // Backward Stall generation
    assign SE_redist4_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall = ~ (SE_redist4_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist4_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist4_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b0)
            begin
                SE_redist4_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist4_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 & SE_redist4_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist4_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist4_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
            end

        end
    end

    // SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0(STALLENABLE,956)
    // Valid signal propagation
    assign SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_V0 = SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_s_tv_0 = SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_backStall & SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_backEN & SR_SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_V;
    // Backward Stall generation
    assign SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0(STALLREG,1328)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_r_valid <= 1'b0;
            SR_SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_r_data0 <= 60'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_r_valid <= SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_backStall & (SR_SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_r_valid | SR_SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_i_valid);

            if (SR_SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_r_data0 <= $unsigned(i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_i_valid = SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_backStall = SR_SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_r_valid | ~ (SR_SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_V = SR_SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_r_valid : SR_SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_i_valid;

    assign SR_SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_D0 = SR_SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_r_data0 : i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q;

    // SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2(STALLENABLE,907)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_V0 = SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_R_v_0;
    assign SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_V1 = SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_s_tv_0 = SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_backStall & SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_R_v_0;
    assign SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_s_tv_1 = SR_SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_backStall & SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_or0 = SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_s_tv_0;
    assign SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_backEN = ~ (SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_s_tv_1 | SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_and0 = SE_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_V0 & SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_backEN;
    assign SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_v_s_0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_V0 & SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_and0;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_backStall = ~ (SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_R_v_0 <= SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_R_v_0 & SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_R_v_0 <= SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_R_v_1 <= SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_R_v_1 & SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_R_v_1 <= SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15(STALLENABLE,794)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_consumed0 = (~ (SE_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_consumed1 = (~ (SE_redist4_i_mptr_bitcast_index_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_StallValid = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_backStall & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_or0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_backStall = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_V1 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_wireValid = i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_out_valid_out;

    // i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15(BLACKBOX,85)@2
    // in in_stall_in@20000000
    // out out_dest_data_out_1_0@3
    // out out_stall_out@20000000
    // out out_valid_out@3
    bicg_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_0 thei_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_backStall),
        .in_valid_in(SE_coalesced_delay_0_0_V1),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_0(BITJOIN,487)
    assign join_for_coalesced_delay_0_q = {bubble_select_bicg_B3_merge_reg_aunroll_x_k, bubble_select_bicg_B3_merge_reg_aunroll_x_b, bubble_select_bicg_B3_merge_reg_aunroll_x_g};

    // coalesced_delay_0_0(REG,590)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(66'b000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // SE_coalesced_delay_0_1(STALLENABLE,1060)
    // Valid signal propagation
    assign SE_coalesced_delay_0_1_V0 = SE_coalesced_delay_0_1_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_1_s_tv_0 = SR_SE_coalesced_delay_0_2_backStall & SE_coalesced_delay_0_1_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_1_backEN = ~ (SE_coalesced_delay_0_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_1_v_s_0 = SE_coalesced_delay_0_1_backEN & SR_SE_coalesced_delay_0_1_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_1_backStall = ~ (SE_coalesced_delay_0_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_1_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_1_R_v_0 <= SE_coalesced_delay_0_1_R_v_0 & SE_coalesced_delay_0_1_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_1_R_v_0 <= SE_coalesced_delay_0_1_v_s_0;
            end

        end
    end

    // SR_SE_coalesced_delay_0_1(STALLREG,1320)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_0_1_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_1_r_data0 <= 66'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_0_1_r_valid <= SE_coalesced_delay_0_1_backStall & (SR_SE_coalesced_delay_0_1_r_valid | SR_SE_coalesced_delay_0_1_i_valid);

            if (SR_SE_coalesced_delay_0_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_0_1_r_data0 <= $unsigned(coalesced_delay_0_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_0_1_i_valid = SE_coalesced_delay_0_0_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_1_backStall = SR_SE_coalesced_delay_0_1_r_valid | ~ (SR_SE_coalesced_delay_0_1_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_1_V = SR_SE_coalesced_delay_0_1_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_1_r_valid : SR_SE_coalesced_delay_0_1_i_valid;

    assign SR_SE_coalesced_delay_0_1_D0 = SR_SE_coalesced_delay_0_1_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_1_r_data0 : coalesced_delay_0_0_q;

    // SE_coalesced_delay_0_0(STALLENABLE,1059)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    assign SE_coalesced_delay_0_0_V1 = SE_coalesced_delay_0_0_R_v_1;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SR_SE_coalesced_delay_0_1_backStall & SE_coalesced_delay_0_0_R_v_0;
    assign SE_coalesced_delay_0_0_s_tv_1 = i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast8516_bicg15_out_stall_out & SE_coalesced_delay_0_0_R_v_1;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_or0 = SE_coalesced_delay_0_0_s_tv_0;
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_1 | SE_coalesced_delay_0_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_out_bicg_B3_merge_reg_aunroll_x_V6;
    // Backward Stall generation
    assign SE_coalesced_delay_0_0_backStall = ~ (SE_coalesced_delay_0_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_0_R_v_0 <= 1'b0;
            SE_coalesced_delay_0_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_R_v_0 & SE_coalesced_delay_0_0_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_v_s_0;
            end

            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_1 <= SE_coalesced_delay_0_0_R_v_1 & SE_coalesced_delay_0_0_s_tv_1;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_1 <= SE_coalesced_delay_0_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_push_i32_mul32_push22_bicg12(STALLENABLE,862)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_mul32_push22_bicg12_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_mul32_push22_bicg12_wireValid = i_llvm_fpga_push_i32_mul32_push22_bicg12_out_valid_out;

    // bubble_join_redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo(BITJOIN,711)
    assign bubble_join_redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_q = redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_data_out;

    // bubble_select_redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo(BITSELECT,712)
    assign bubble_select_redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_b = $unsigned(bubble_join_redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_q[31:0]);

    // i_llvm_fpga_push_i32_mul32_push22_bicg12(BLACKBOX,119)@70
    // in in_stall_in@20000000
    // out out_data_out@71
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    // out out_stall_out@20000000
    // out out_valid_out@71
    bicg_i_llvm_fpga_push_i32_mul32_push22_0 thei_llvm_fpga_push_i32_mul32_push22_bicg12 (
        .in_data_in(bubble_select_redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_b),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_feedback_stall_out_22),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_bicg4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_mul32_push22_bicg12_backStall),
        .in_valid_in(SE_out_redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_V0),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_i32_mul32_push22_bicg12_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_i32_mul32_push22_bicg12_out_feedback_valid_out_22),
        .out_stall_out(i_llvm_fpga_push_i32_mul32_push22_bicg12_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_mul32_push22_bicg12_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_mul32_pop22_bicg11(BLACKBOX,102)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_22@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    bicg_i_llvm_fpga_pop_i32_mul32_pop22_0 thei_llvm_fpga_pop_i32_mul32_pop22_bicg11 (
        .in_data_in(bubble_select_bicg_B3_merge_reg_aunroll_x_f),
        .in_dir(bubble_select_bicg_B3_merge_reg_aunroll_x_b),
        .in_feedback_in_22(i_llvm_fpga_push_i32_mul32_push22_bicg12_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_i32_mul32_push22_bicg12_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_backStall),
        .in_valid_in(SE_out_bicg_B3_merge_reg_aunroll_x_V5),
        .out_data_out(i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_feedback_stall_out_22),
        .out_stall_out(i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_bgTrunc_i_inc_bicg51_sel_x(STALLENABLE,770)
    // Valid signal propagation
    assign SE_bgTrunc_i_inc_bicg51_sel_x_V0 = SE_bgTrunc_i_inc_bicg51_sel_x_wireValid;
    // Backward Stall generation
    assign SE_bgTrunc_i_inc_bicg51_sel_x_backStall = i_llvm_fpga_push_i32_j_070_push15_bicg52_out_stall_out | ~ (SE_bgTrunc_i_inc_bicg51_sel_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_bgTrunc_i_inc_bicg51_sel_x_wireValid = SR_SE_bgTrunc_i_inc_bicg51_sel_x_V;

    // SE_out_i_llvm_fpga_push_i32_j_070_push15_bicg52(STALLENABLE,860)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_j_070_push15_bicg52_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_j_070_push15_bicg52_wireValid = i_llvm_fpga_push_i32_j_070_push15_bicg52_out_valid_out;

    // i_llvm_fpga_push_i32_j_070_push15_bicg52(BLACKBOX,118)@70
    // in in_stall_in@20000000
    // out out_data_out@71
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    // out out_stall_out@20000000
    // out out_valid_out@71
    bicg_i_llvm_fpga_push_i32_j_070_push15_0 thei_llvm_fpga_push_i32_j_070_push15_bicg52 (
        .in_data_in(SR_SE_bgTrunc_i_inc_bicg51_sel_x_D0),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_feedback_stall_out_15),
        .in_keep_going(SR_SE_bgTrunc_i_inc_bicg51_sel_x_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_j_070_push15_bicg52_backStall),
        .in_valid_in(SE_bgTrunc_i_inc_bicg51_sel_x_V0),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i32_j_070_push15_bicg52_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i32_j_070_push15_bicg52_out_feedback_valid_out_15),
        .out_stall_out(i_llvm_fpga_push_i32_j_070_push15_bicg52_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_j_070_push15_bicg52_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_j_070_pop15_bicg10(BLACKBOX,101)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_15@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    bicg_i_llvm_fpga_pop_i32_j_070_pop15_0 thei_llvm_fpga_pop_i32_j_070_pop15_bicg10 (
        .in_data_in(c_i32_073_q),
        .in_dir(bubble_select_bicg_B3_merge_reg_aunroll_x_b),
        .in_feedback_in_15(i_llvm_fpga_push_i32_j_070_push15_bicg52_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_i32_j_070_push15_bicg52_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_backStall),
        .in_valid_in(SE_out_bicg_B3_merge_reg_aunroll_x_V4),
        .out_data_out(i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_feedback_stall_out_15),
        .out_stall_out(i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_0(STALLENABLE,1002)
    // Valid signal propagation
    assign SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_0_V0 = SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_0_R_v_0;
    // Stall signal propagation
    assign SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_0_s_tv_0 = SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_1_backStall & SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_0_R_v_0;
    // Backward Enable generation
    assign SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_0_backEN = ~ (SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_0_v_s_0 = SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_0_backEN & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_V0;
    // Backward Stall generation
    assign SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_0_backStall = ~ (SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_0_backEN == 1'b0)
            begin
                SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_0_R_v_0 <= SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_0_R_v_0 & SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_0_s_tv_0;
            end
            else
            begin
                SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_0_R_v_0 <= SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17(STALLENABLE,818)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_backStall = SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_0_backStall | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_wireValid = i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_pop1031_push21_bicg18(STALLENABLE,850)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_pop1031_push21_bicg18_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_pop1031_push21_bicg18_wireValid = i_llvm_fpga_push_i1_memdep_phi_pop1031_push21_bicg18_out_valid_out;

    // bubble_join_redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo(BITJOIN,720)
    assign bubble_join_redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_q = redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_data_out;

    // bubble_select_redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo(BITSELECT,721)
    assign bubble_select_redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_b = $unsigned(bubble_join_redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi_pop1031_push21_bicg18(BLACKBOX,113)@70
    // in in_stall_in@20000000
    // out out_data_out@71
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    // out out_stall_out@20000000
    // out out_valid_out@71
    bicg_i_llvm_fpga_push_i1_memdep_phi_pop1031_push21_0 thei_llvm_fpga_push_i1_memdep_phi_pop1031_push21_bicg18 (
        .in_data_in(bubble_select_redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_b),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_feedback_stall_out_21),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_bicg4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_pop1031_push21_bicg18_backStall),
        .in_valid_in(SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_V0),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i1_memdep_phi_pop1031_push21_bicg18_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i1_memdep_phi_pop1031_push21_bicg18_out_feedback_valid_out_21),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_pop1031_push21_bicg18_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_pop1031_push21_bicg18_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17(BLACKBOX,97)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_21@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    bicg_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_0 thei_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17 (
        .in_data_in(bubble_select_bicg_B3_merge_reg_aunroll_x_d),
        .in_dir(bubble_select_bicg_B3_merge_reg_aunroll_x_b),
        .in_feedback_in_21(i_llvm_fpga_push_i1_memdep_phi_pop1031_push21_bicg18_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_i1_memdep_phi_pop1031_push21_bicg18_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_backStall),
        .in_valid_in(SE_out_bicg_B3_merge_reg_aunroll_x_V3),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_feedback_stall_out_21),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34(BITJOIN,642)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_q = i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34(BITSELECT,643)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_q[0:0]);

    // bubble_join_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo(BITJOIN,729)
    assign bubble_join_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_q = redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_data_out;

    // bubble_select_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo(BITSELECT,730)
    assign bubble_select_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_b = $unsigned(bubble_join_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_q[0:0]);

    // redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo(STALLFIFO,554)
    assign redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_valid_in = SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_V1;
    assign redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_stall_in = SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_backStall;
    assign redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_data_in = bubble_select_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_b;
    assign redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_valid_in_bitsignaltemp = redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_valid_in[0];
    assign redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_stall_in_bitsignaltemp = redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_stall_in[0];
    assign redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_valid_out[0] = redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_valid_out_bitsignaltemp;
    assign redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_stall_out[0] = redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(29),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo (
        .valid_in(redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_valid_in_bitsignaltemp),
        .stall_in(redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_b),
        .valid_out(redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_valid_out_bitsignaltemp),
        .stall_out(redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_stall_out_bitsignaltemp),
        .data_out(redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_unnamed_bicg14_bicg28(BITJOIN,618)
    assign bubble_join_i_llvm_fpga_mem_unnamed_bicg14_bicg28_q = i_llvm_fpga_mem_unnamed_bicg14_bicg28_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_bicg14_bicg28(BITSELECT,619)
    assign bubble_select_i_llvm_fpga_mem_unnamed_bicg14_bicg28_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_bicg14_bicg28_q[31:0]);

    // SE_i_mul7_bicg32_sums_align_1(STALLENABLE,894)
    // Valid signal propagation
    assign SE_i_mul7_bicg32_sums_align_1_V0 = SE_i_mul7_bicg32_sums_align_1_wireValid;
    // Backward Stall generation
    assign SE_i_mul7_bicg32_sums_align_1_backStall = SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_backStall | ~ (SE_i_mul7_bicg32_sums_align_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mul7_bicg32_sums_align_1_and0 = SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_V0;
    assign SE_i_mul7_bicg32_sums_align_1_wireValid = SE_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V3 & SE_i_mul7_bicg32_sums_align_1_and0;

    // SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0(STALLENABLE,959)
    // Valid signal propagation
    assign SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_V0 = SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_s_tv_0 = SE_i_mul7_bicg32_sums_align_1_backStall & SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_backEN = ~ (SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_v_s_0 = SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_backEN & SR_SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_V;
    // Backward Stall generation
    assign SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_backStall = ~ (SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_backEN == 1'b0)
            begin
                SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_R_v_0 <= SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_R_v_0 & SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_R_v_0 <= SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_mem_unnamed_bicg15_bicg31(STALLENABLE,802)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_bicg15_bicg31_V0 = SE_out_i_llvm_fpga_mem_unnamed_bicg15_bicg31_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_bicg15_bicg31_backStall = SE_i_mul7_bicg32_im0_cma_backStall | ~ (SE_out_i_llvm_fpga_mem_unnamed_bicg15_bicg31_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_bicg15_bicg31_wireValid = i_llvm_fpga_mem_unnamed_bicg15_bicg31_out_o_valid;

    // i_llvm_fpga_mem_unnamed_bicg15_bicg31(BLACKBOX,89)@5
    // in in_i_stall@20000000
    // out out_o_readdata@37
    // out out_o_stall@20000000
    // out out_o_valid@37
    // out out_unnamed_bicg15_bicg_avm_address@20000000
    // out out_unnamed_bicg15_bicg_avm_burstcount@20000000
    // out out_unnamed_bicg15_bicg_avm_byteenable@20000000
    // out out_unnamed_bicg15_bicg_avm_enable@20000000
    // out out_unnamed_bicg15_bicg_avm_read@20000000
    // out out_unnamed_bicg15_bicg_avm_write@20000000
    // out out_unnamed_bicg15_bicg_avm_writedata@20000000
    bicg_i_llvm_fpga_mem_unnamed_15_bicg0 thei_llvm_fpga_mem_unnamed_bicg15_bicg31 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_D0),
        .in_i_dependence(SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_D1),
        .in_i_predicate(SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_D2),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_bicg15_bicg31_backStall),
        .in_i_valid(SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_V0),
        .in_unnamed_bicg15_bicg_avm_readdata(in_unnamed_bicg15_bicg_avm_readdata),
        .in_unnamed_bicg15_bicg_avm_readdatavalid(in_unnamed_bicg15_bicg_avm_readdatavalid),
        .in_unnamed_bicg15_bicg_avm_waitrequest(in_unnamed_bicg15_bicg_avm_waitrequest),
        .in_unnamed_bicg15_bicg_avm_writeack(in_unnamed_bicg15_bicg_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_bicg15_bicg31_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_bicg15_bicg31_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_bicg15_bicg31_out_o_valid),
        .out_unnamed_bicg15_bicg_avm_address(i_llvm_fpga_mem_unnamed_bicg15_bicg31_out_unnamed_bicg15_bicg_avm_address),
        .out_unnamed_bicg15_bicg_avm_burstcount(i_llvm_fpga_mem_unnamed_bicg15_bicg31_out_unnamed_bicg15_bicg_avm_burstcount),
        .out_unnamed_bicg15_bicg_avm_byteenable(i_llvm_fpga_mem_unnamed_bicg15_bicg31_out_unnamed_bicg15_bicg_avm_byteenable),
        .out_unnamed_bicg15_bicg_avm_enable(i_llvm_fpga_mem_unnamed_bicg15_bicg31_out_unnamed_bicg15_bicg_avm_enable),
        .out_unnamed_bicg15_bicg_avm_read(i_llvm_fpga_mem_unnamed_bicg15_bicg31_out_unnamed_bicg15_bicg_avm_read),
        .out_unnamed_bicg15_bicg_avm_write(i_llvm_fpga_mem_unnamed_bicg15_bicg31_out_unnamed_bicg15_bicg_avm_write),
        .out_unnamed_bicg15_bicg_avm_writedata(i_llvm_fpga_mem_unnamed_bicg15_bicg31_out_unnamed_bicg15_bicg_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_unnamed_bicg15_bicg31(BITJOIN,621)
    assign bubble_join_i_llvm_fpga_mem_unnamed_bicg15_bicg31_q = i_llvm_fpga_mem_unnamed_bicg15_bicg31_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_bicg15_bicg31(BITSELECT,622)
    assign bubble_select_i_llvm_fpga_mem_unnamed_bicg15_bicg31_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_bicg15_bicg31_q[31:0]);

    // i_mul7_bicg32_bs1_merged_bit_select(BITSELECT,418)@37
    assign i_mul7_bicg32_bs1_merged_bit_select_b = bubble_select_i_llvm_fpga_mem_unnamed_bicg15_bicg31_b[17:0];
    assign i_mul7_bicg32_bs1_merged_bit_select_c = bubble_select_i_llvm_fpga_mem_unnamed_bicg15_bicg31_b[31:18];

    // i_mul7_bicg32_ma3_cma(CHAINMULTADD,310)@37 + 2
    assign i_mul7_bicg32_ma3_cma_reset = ~ (resetn);
    assign i_mul7_bicg32_ma3_cma_ena0 = SE_i_mul7_bicg32_im0_cma_backEN[0];
    assign i_mul7_bicg32_ma3_cma_ena1 = i_mul7_bicg32_ma3_cma_ena0;
    assign i_mul7_bicg32_ma3_cma_p[0] = i_mul7_bicg32_ma3_cma_a0[0] * i_mul7_bicg32_ma3_cma_c0[0];
    assign i_mul7_bicg32_ma3_cma_p[1] = i_mul7_bicg32_ma3_cma_a0[1] * i_mul7_bicg32_ma3_cma_c0[1];
    assign i_mul7_bicg32_ma3_cma_u[0] = {1'b0, i_mul7_bicg32_ma3_cma_p[0][31:0]};
    assign i_mul7_bicg32_ma3_cma_u[1] = {1'b0, i_mul7_bicg32_ma3_cma_p[1][31:0]};
    assign i_mul7_bicg32_ma3_cma_w[0] = i_mul7_bicg32_ma3_cma_u[0] + i_mul7_bicg32_ma3_cma_u[1];
    assign i_mul7_bicg32_ma3_cma_x[0] = i_mul7_bicg32_ma3_cma_w[0];
    assign i_mul7_bicg32_ma3_cma_y[0] = i_mul7_bicg32_ma3_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul7_bicg32_ma3_cma_a0 <= '{default: '0};
            i_mul7_bicg32_ma3_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul7_bicg32_ma3_cma_ena0 == 1'b1)
            begin
                i_mul7_bicg32_ma3_cma_a0[0] <= i_mul7_bicg32_bs1_merged_bit_select_c;
                i_mul7_bicg32_ma3_cma_a0[1] <= i_mul11_bicg47_bs2_merged_bit_select_c;
                i_mul7_bicg32_ma3_cma_c0[0] <= i_mul11_bicg47_bs2_merged_bit_select_b;
                i_mul7_bicg32_ma3_cma_c0[1] <= i_mul7_bicg32_bs1_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul7_bicg32_ma3_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul7_bicg32_ma3_cma_ena1 == 1'b1)
            begin
                i_mul7_bicg32_ma3_cma_s[0] <= i_mul7_bicg32_ma3_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul7_bicg32_ma3_cma_delay ( .xin(i_mul7_bicg32_ma3_cma_s[0]), .xout(i_mul7_bicg32_ma3_cma_qq), .ena(SE_i_mul7_bicg32_im0_cma_backEN[0]), .clk(clock), .aclr(resetn) );
    assign i_mul7_bicg32_ma3_cma_q = $unsigned(i_mul7_bicg32_ma3_cma_qq[32:0]);

    // bubble_join_i_mul7_bicg32_ma3_cma(BITJOIN,702)
    assign bubble_join_i_mul7_bicg32_ma3_cma_q = i_mul7_bicg32_ma3_cma_q;

    // bubble_out_i_mul7_bicg32_ma3_cma_data_reg(STALLFIFO,1319)
    assign bubble_out_i_mul7_bicg32_ma3_cma_data_reg_valid_in = SE_i_mul7_bicg32_im0_cma_V2;
    assign bubble_out_i_mul7_bicg32_ma3_cma_data_reg_stall_in = SE_out_bubble_out_i_mul7_bicg32_ma3_cma_data_backStall;
    assign bubble_out_i_mul7_bicg32_ma3_cma_data_reg_data_in = bubble_join_i_mul7_bicg32_ma3_cma_q;
    assign bubble_out_i_mul7_bicg32_ma3_cma_data_reg_valid_in_bitsignaltemp = bubble_out_i_mul7_bicg32_ma3_cma_data_reg_valid_in[0];
    assign bubble_out_i_mul7_bicg32_ma3_cma_data_reg_stall_in_bitsignaltemp = bubble_out_i_mul7_bicg32_ma3_cma_data_reg_stall_in[0];
    assign bubble_out_i_mul7_bicg32_ma3_cma_data_reg_valid_out[0] = bubble_out_i_mul7_bicg32_ma3_cma_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_mul7_bicg32_ma3_cma_data_reg_stall_out[0] = bubble_out_i_mul7_bicg32_ma3_cma_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(1),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(1),
        .DATA_WIDTH(33),
        .IMPL("zl_reg")
    ) thebubble_out_i_mul7_bicg32_ma3_cma_data_reg (
        .valid_in(bubble_out_i_mul7_bicg32_ma3_cma_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_mul7_bicg32_ma3_cma_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_mul7_bicg32_ma3_cma_q),
        .valid_out(bubble_out_i_mul7_bicg32_ma3_cma_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_mul7_bicg32_ma3_cma_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_mul7_bicg32_ma3_cma_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_select_i_mul7_bicg32_ma3_cma(BITSELECT,703)
    assign bubble_select_i_mul7_bicg32_ma3_cma_b = $unsigned(bubble_out_i_mul7_bicg32_ma3_cma_data_reg_data_out[32:0]);

    // SE_out_bubble_out_i_mul7_bicg32_ma3_cma_data(STALLENABLE,1216)
    // Valid signal propagation
    assign SE_out_bubble_out_i_mul7_bicg32_ma3_cma_data_V0 = SE_out_bubble_out_i_mul7_bicg32_ma3_cma_data_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_mul7_bicg32_ma3_cma_data_backStall = SR_SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_backStall | ~ (SE_out_bubble_out_i_mul7_bicg32_ma3_cma_data_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_mul7_bicg32_ma3_cma_data_wireValid = bubble_out_i_mul7_bicg32_ma3_cma_data_reg_valid_out;

    // SR_SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0(STALLREG,1333)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_r_valid <= 1'b0;
            SR_SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_r_data0 <= 33'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_r_valid <= SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_backStall & (SR_SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_r_valid | SR_SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_i_valid);

            if (SR_SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_r_data0 <= $unsigned(bubble_select_i_mul7_bicg32_ma3_cma_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_i_valid = SE_out_bubble_out_i_mul7_bicg32_ma3_cma_data_V0;
    // Stall signal propagation
    assign SR_SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_backStall = SR_SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_r_valid | ~ (SR_SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_V = SR_SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_r_valid == 1'b1 ? SR_SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_r_valid : SR_SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_i_valid;

    assign SR_SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_D0 = SR_SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_r_valid == 1'b1 ? SR_SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_r_data0 : bubble_select_i_mul7_bicg32_ma3_cma_b;

    // redist13_i_mul7_bicg32_ma3_cma_q_1_0(REG,509)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_mul7_bicg32_ma3_cma_q_1_0_q <= $unsigned(33'b000000000000000000000000000000000);
        end
        else if (SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_backEN == 1'b1)
        begin
            redist13_i_mul7_bicg32_ma3_cma_q_1_0_q <= $unsigned(SR_SE_redist13_i_mul7_bicg32_ma3_cma_q_1_0_D0);
        end
    end

    // i_mul7_bicg32_sums_align_1(BITSHIFT,302)@40
    assign i_mul7_bicg32_sums_align_1_qint = { redist13_i_mul7_bicg32_ma3_cma_q_1_0_q, 18'b000000000000000000 };
    assign i_mul7_bicg32_sums_align_1_q = i_mul7_bicg32_sums_align_1_qint[50:0];

    // i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b(BITJOIN,411)@40
    assign i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q = {i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b, i_mul7_bicg32_sums_align_1_q};

    // i_mul7_bicg32_im0_cma(CHAINMULTADD,307)@37 + 2
    assign i_mul7_bicg32_im0_cma_reset = ~ (resetn);
    assign i_mul7_bicg32_im0_cma_ena0 = SE_i_mul7_bicg32_im0_cma_backEN[0];
    assign i_mul7_bicg32_im0_cma_ena1 = i_mul7_bicg32_im0_cma_ena0;
    assign i_mul7_bicg32_im0_cma_p[0] = i_mul7_bicg32_im0_cma_a0[0] * i_mul7_bicg32_im0_cma_c0[0];
    assign i_mul7_bicg32_im0_cma_u[0] = i_mul7_bicg32_im0_cma_p[0][35:0];
    assign i_mul7_bicg32_im0_cma_w[0] = i_mul7_bicg32_im0_cma_u[0];
    assign i_mul7_bicg32_im0_cma_x[0] = i_mul7_bicg32_im0_cma_w[0];
    assign i_mul7_bicg32_im0_cma_y[0] = i_mul7_bicg32_im0_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul7_bicg32_im0_cma_a0 <= '{default: '0};
            i_mul7_bicg32_im0_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul7_bicg32_im0_cma_ena0 == 1'b1)
            begin
                i_mul7_bicg32_im0_cma_a0[0] <= i_mul7_bicg32_bs1_merged_bit_select_b;
                i_mul7_bicg32_im0_cma_c0[0] <= i_mul11_bicg47_bs2_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul7_bicg32_im0_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul7_bicg32_im0_cma_ena1 == 1'b1)
            begin
                i_mul7_bicg32_im0_cma_s[0] <= i_mul7_bicg32_im0_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul7_bicg32_im0_cma_delay ( .xin(i_mul7_bicg32_im0_cma_s[0]), .xout(i_mul7_bicg32_im0_cma_qq), .ena(SE_i_mul7_bicg32_im0_cma_backEN[0]), .clk(clock), .aclr(resetn) );
    assign i_mul7_bicg32_im0_cma_q = $unsigned(i_mul7_bicg32_im0_cma_qq[35:0]);

    // bubble_join_i_mul7_bicg32_im0_cma(BITJOIN,693)
    assign bubble_join_i_mul7_bicg32_im0_cma_q = i_mul7_bicg32_im0_cma_q;

    // bubble_out_i_mul7_bicg32_im0_cma_data_reg(STALLFIFO,1316)
    assign bubble_out_i_mul7_bicg32_im0_cma_data_reg_valid_in = SE_i_mul7_bicg32_im0_cma_V0;
    assign bubble_out_i_mul7_bicg32_im0_cma_data_reg_stall_in = SE_out_bubble_out_i_mul7_bicg32_im0_cma_data_backStall;
    assign bubble_out_i_mul7_bicg32_im0_cma_data_reg_data_in = bubble_join_i_mul7_bicg32_im0_cma_q;
    assign bubble_out_i_mul7_bicg32_im0_cma_data_reg_valid_in_bitsignaltemp = bubble_out_i_mul7_bicg32_im0_cma_data_reg_valid_in[0];
    assign bubble_out_i_mul7_bicg32_im0_cma_data_reg_stall_in_bitsignaltemp = bubble_out_i_mul7_bicg32_im0_cma_data_reg_stall_in[0];
    assign bubble_out_i_mul7_bicg32_im0_cma_data_reg_valid_out[0] = bubble_out_i_mul7_bicg32_im0_cma_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_mul7_bicg32_im0_cma_data_reg_stall_out[0] = bubble_out_i_mul7_bicg32_im0_cma_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(1),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(1),
        .DATA_WIDTH(36),
        .IMPL("zl_reg")
    ) thebubble_out_i_mul7_bicg32_im0_cma_data_reg (
        .valid_in(bubble_out_i_mul7_bicg32_im0_cma_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_mul7_bicg32_im0_cma_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_mul7_bicg32_im0_cma_q),
        .valid_out(bubble_out_i_mul7_bicg32_im0_cma_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_mul7_bicg32_im0_cma_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_mul7_bicg32_im0_cma_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_select_i_mul7_bicg32_im0_cma(BITSELECT,694)
    assign bubble_select_i_mul7_bicg32_im0_cma_b = $unsigned(bubble_out_i_mul7_bicg32_im0_cma_data_reg_data_out[35:0]);

    // SE_out_bubble_out_i_mul7_bicg32_im0_cma_data(STALLENABLE,1204)
    // Valid signal propagation
    assign SE_out_bubble_out_i_mul7_bicg32_im0_cma_data_V0 = SE_out_bubble_out_i_mul7_bicg32_im0_cma_data_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_mul7_bicg32_im0_cma_data_backStall = SR_SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_backStall | ~ (SE_out_bubble_out_i_mul7_bicg32_im0_cma_data_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_mul7_bicg32_im0_cma_data_wireValid = bubble_out_i_mul7_bicg32_im0_cma_data_reg_valid_out;

    // SR_SE_redist16_i_mul7_bicg32_im0_cma_q_1_0(STALLREG,1332)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_r_valid <= 1'b0;
            SR_SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_r_data0 <= 36'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_r_valid <= SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_backStall & (SR_SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_r_valid | SR_SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_i_valid);

            if (SR_SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_r_data0 <= $unsigned(bubble_select_i_mul7_bicg32_im0_cma_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_i_valid = SE_out_bubble_out_i_mul7_bicg32_im0_cma_data_V0;
    // Stall signal propagation
    assign SR_SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_backStall = SR_SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_r_valid | ~ (SR_SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_V = SR_SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_r_valid == 1'b1 ? SR_SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_r_valid : SR_SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_i_valid;

    assign SR_SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_D0 = SR_SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_r_valid == 1'b1 ? SR_SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_r_data0 : bubble_select_i_mul7_bicg32_im0_cma_b;

    // SE_redist16_i_mul7_bicg32_im0_cma_q_1_0(STALLENABLE,962)
    // Valid signal propagation
    assign SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_V0 = SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_s_tv_0 = SE_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_backStall & SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_backEN = ~ (SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_v_s_0 = SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_backEN & SR_SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_V;
    // Backward Stall generation
    assign SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_backStall = ~ (SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_backEN == 1'b0)
            begin
                SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_R_v_0 <= SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_R_v_0 & SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_R_v_0 <= SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_v_s_0;
            end

        end
    end

    // SE_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b(STALLENABLE,929)
    // Valid signal propagation
    assign SE_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_V0 = SE_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_wireValid;
    // Backward Stall generation
    assign SE_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_backStall = SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_backStall | ~ (SE_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_and0 = SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_V0;
    assign SE_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_wireValid = SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_V0 & SE_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_and0;

    // SE_redist15_i_mul7_bicg32_im8_cma_q_1_0(STALLENABLE,961)
    // Valid signal propagation
    assign SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_V0 = SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_R_v_0;
    assign SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_V1 = SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_s_tv_0 = SE_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_backStall & SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_R_v_0;
    assign SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_s_tv_1 = SE_redist0_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backStall & SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_or0 = SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_s_tv_0;
    assign SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_backEN = ~ (SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_s_tv_1 | SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_v_s_0 = SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_backEN & SR_SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_V;
    // Backward Stall generation
    assign SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_backStall = ~ (SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_R_v_0 <= 1'b0;
            SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_backEN == 1'b0)
            begin
                SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_R_v_0 <= SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_R_v_0 & SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_R_v_0 <= SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_v_s_0;
            end

            if (SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_backEN == 1'b0)
            begin
                SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_R_v_1 <= SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_R_v_1 & SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_s_tv_1;
            end
            else
            begin
                SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_R_v_1 <= SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_v_s_0;
            end

        end
    end

    // i_mul7_bicg32_im8_cma(CHAINMULTADD,308)@37 + 2
    assign i_mul7_bicg32_im8_cma_reset = ~ (resetn);
    assign i_mul7_bicg32_im8_cma_ena0 = SE_i_mul7_bicg32_im0_cma_backEN[0];
    assign i_mul7_bicg32_im8_cma_ena1 = i_mul7_bicg32_im8_cma_ena0;
    assign i_mul7_bicg32_im8_cma_p[0] = i_mul7_bicg32_im8_cma_a0[0] * i_mul7_bicg32_im8_cma_c0[0];
    assign i_mul7_bicg32_im8_cma_u[0] = i_mul7_bicg32_im8_cma_p[0][27:0];
    assign i_mul7_bicg32_im8_cma_w[0] = i_mul7_bicg32_im8_cma_u[0];
    assign i_mul7_bicg32_im8_cma_x[0] = i_mul7_bicg32_im8_cma_w[0];
    assign i_mul7_bicg32_im8_cma_y[0] = i_mul7_bicg32_im8_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul7_bicg32_im8_cma_a0 <= '{default: '0};
            i_mul7_bicg32_im8_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul7_bicg32_im8_cma_ena0 == 1'b1)
            begin
                i_mul7_bicg32_im8_cma_a0[0] <= i_mul7_bicg32_bs1_merged_bit_select_c;
                i_mul7_bicg32_im8_cma_c0[0] <= i_mul11_bicg47_bs2_merged_bit_select_c;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul7_bicg32_im8_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul7_bicg32_im8_cma_ena1 == 1'b1)
            begin
                i_mul7_bicg32_im8_cma_s[0] <= i_mul7_bicg32_im8_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul7_bicg32_im8_cma_delay ( .xin(i_mul7_bicg32_im8_cma_s[0]), .xout(i_mul7_bicg32_im8_cma_qq), .ena(SE_i_mul7_bicg32_im0_cma_backEN[0]), .clk(clock), .aclr(resetn) );
    assign i_mul7_bicg32_im8_cma_q = $unsigned(i_mul7_bicg32_im8_cma_qq[27:0]);

    // bubble_join_i_mul7_bicg32_im8_cma(BITJOIN,696)
    assign bubble_join_i_mul7_bicg32_im8_cma_q = i_mul7_bicg32_im8_cma_q;

    // bubble_out_i_mul7_bicg32_im8_cma_data_reg(STALLFIFO,1317)
    assign bubble_out_i_mul7_bicg32_im8_cma_data_reg_valid_in = SE_i_mul7_bicg32_im0_cma_V1;
    assign bubble_out_i_mul7_bicg32_im8_cma_data_reg_stall_in = SE_out_bubble_out_i_mul7_bicg32_im8_cma_data_backStall;
    assign bubble_out_i_mul7_bicg32_im8_cma_data_reg_data_in = bubble_join_i_mul7_bicg32_im8_cma_q;
    assign bubble_out_i_mul7_bicg32_im8_cma_data_reg_valid_in_bitsignaltemp = bubble_out_i_mul7_bicg32_im8_cma_data_reg_valid_in[0];
    assign bubble_out_i_mul7_bicg32_im8_cma_data_reg_stall_in_bitsignaltemp = bubble_out_i_mul7_bicg32_im8_cma_data_reg_stall_in[0];
    assign bubble_out_i_mul7_bicg32_im8_cma_data_reg_valid_out[0] = bubble_out_i_mul7_bicg32_im8_cma_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_mul7_bicg32_im8_cma_data_reg_stall_out[0] = bubble_out_i_mul7_bicg32_im8_cma_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(1),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(1),
        .DATA_WIDTH(28),
        .IMPL("zl_reg")
    ) thebubble_out_i_mul7_bicg32_im8_cma_data_reg (
        .valid_in(bubble_out_i_mul7_bicg32_im8_cma_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_mul7_bicg32_im8_cma_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_mul7_bicg32_im8_cma_q),
        .valid_out(bubble_out_i_mul7_bicg32_im8_cma_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_mul7_bicg32_im8_cma_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_mul7_bicg32_im8_cma_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_select_i_mul7_bicg32_im8_cma(BITSELECT,697)
    assign bubble_select_i_mul7_bicg32_im8_cma_b = $unsigned(bubble_out_i_mul7_bicg32_im8_cma_data_reg_data_out[27:0]);

    // SE_out_bubble_out_i_mul7_bicg32_im8_cma_data(STALLENABLE,1208)
    // Valid signal propagation
    assign SE_out_bubble_out_i_mul7_bicg32_im8_cma_data_V0 = SE_out_bubble_out_i_mul7_bicg32_im8_cma_data_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_mul7_bicg32_im8_cma_data_backStall = SR_SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_backStall | ~ (SE_out_bubble_out_i_mul7_bicg32_im8_cma_data_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_mul7_bicg32_im8_cma_data_wireValid = bubble_out_i_mul7_bicg32_im8_cma_data_reg_valid_out;

    // SR_SE_redist15_i_mul7_bicg32_im8_cma_q_1_0(STALLREG,1331)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_r_valid <= 1'b0;
            SR_SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_r_data0 <= 28'bxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_r_valid <= SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_backStall & (SR_SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_r_valid | SR_SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_i_valid);

            if (SR_SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_r_data0 <= $unsigned(bubble_select_i_mul7_bicg32_im8_cma_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_i_valid = SE_out_bubble_out_i_mul7_bicg32_im8_cma_data_V0;
    // Stall signal propagation
    assign SR_SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_backStall = SR_SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_r_valid | ~ (SR_SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_V = SR_SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_r_valid == 1'b1 ? SR_SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_r_valid : SR_SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_i_valid;

    assign SR_SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_D0 = SR_SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_r_valid == 1'b1 ? SR_SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_r_data0 : bubble_select_i_mul7_bicg32_im8_cma_b;

    // redist15_i_mul7_bicg32_im8_cma_q_1_0(REG,511)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_mul7_bicg32_im8_cma_q_1_0_q <= $unsigned(28'b0000000000000000000000000000);
        end
        else if (SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_backEN == 1'b1)
        begin
            redist15_i_mul7_bicg32_im8_cma_q_1_0_q <= $unsigned(SR_SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_D0);
        end
    end

    // i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select(BITSELECT,420)@40
    assign i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b = $unsigned(redist15_i_mul7_bicg32_im8_cma_q_1_0_q[23:0]);
    assign i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c = $unsigned(redist15_i_mul7_bicg32_im8_cma_q_1_0_q[27:24]);

    // redist16_i_mul7_bicg32_im0_cma_q_1_0(REG,512)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_mul7_bicg32_im0_cma_q_1_0_q <= $unsigned(36'b000000000000000000000000000000000000);
        end
        else if (SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_backEN == 1'b1)
        begin
            redist16_i_mul7_bicg32_im0_cma_q_1_0_q <= $unsigned(SR_SE_redist16_i_mul7_bicg32_im0_cma_q_1_0_D0);
        end
    end

    // i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,405)@40
    assign i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q = {i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b, redist16_i_mul7_bicg32_im0_cma_q_1_0_q};

    // i_mul7_bicg32_sums_result_add_0_0_p1_of_2(ADD,353)@40 + 1
    assign i_mul7_bicg32_sums_result_add_0_0_p1_of_2_a = {1'b0, i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q};
    assign i_mul7_bicg32_sums_result_add_0_0_p1_of_2_b = {1'b0, i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul7_bicg32_sums_result_add_0_0_p1_of_2_o <= 61'b0;
        end
        else if (SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            i_mul7_bicg32_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_mul7_bicg32_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_mul7_bicg32_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_mul7_bicg32_sums_result_add_0_0_p1_of_2_c[0] = i_mul7_bicg32_sums_result_add_0_0_p1_of_2_o[60];
    assign i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q = i_mul7_bicg32_sums_result_add_0_0_p1_of_2_o[59:0];

    // i_mul11_bicg47_sums_result_add_0_0_UpperBits_for_b(CONSTANT,341)
    assign i_mul11_bicg47_sums_result_add_0_0_UpperBits_for_b_q = $unsigned(14'b00000000000000);

    // i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select(BITSELECT,421)
    assign i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b = $unsigned(i_mul11_bicg47_sums_result_add_0_0_UpperBits_for_b_q[8:0]);
    assign i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c = $unsigned(i_mul11_bicg47_sums_result_add_0_0_UpperBits_for_b_q[13:9]);

    // redist0_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0(REG,498)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_q <= $unsigned(4'b0000);
        end
        else if (SE_redist0_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backEN == 1'b1)
        begin
            redist0_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_q <= $unsigned(i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c);
        end
    end

    // i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c(BITJOIN,408)@41
    assign i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist0_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_q};

    // bubble_select_i_mul11_bicg47_ma3_cma(BITSELECT,700)
    assign bubble_select_i_mul11_bicg47_ma3_cma_b = $unsigned(bubble_out_i_mul11_bicg47_ma3_cma_data_reg_data_out[32:0]);

    // SR_SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0(STALLREG,1350)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_r_valid <= 1'b0;
            SR_SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_r_data0 <= 33'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_r_valid <= SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_backStall & (SR_SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_r_valid | SR_SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_i_valid);

            if (SR_SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_r_data0 <= $unsigned(bubble_select_i_mul11_bicg47_ma3_cma_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_i_valid = SE_out_bubble_out_i_mul11_bicg47_ma3_cma_data_V0;
    // Stall signal propagation
    assign SR_SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_backStall = SR_SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_r_valid | ~ (SR_SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_V = SR_SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_r_valid == 1'b1 ? SR_SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_r_valid : SR_SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_i_valid;

    assign SR_SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_D0 = SR_SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_r_valid == 1'b1 ? SR_SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_r_data0 : bubble_select_i_mul11_bicg47_ma3_cma_b;

    // redist14_i_mul11_bicg47_ma3_cma_q_1_0(REG,510)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_mul11_bicg47_ma3_cma_q_1_0_q <= $unsigned(33'b000000000000000000000000000000000);
        end
        else if (SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_backEN == 1'b1)
        begin
            redist14_i_mul11_bicg47_ma3_cma_q_1_0_q <= $unsigned(SR_SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_D0);
        end
    end

    // i_mul11_bicg47_sums_align_1(BITSHIFT,287)@108
    assign i_mul11_bicg47_sums_align_1_qint = { redist14_i_mul11_bicg47_ma3_cma_q_1_0_q, 18'b000000000000000000 };
    assign i_mul11_bicg47_sums_align_1_q = i_mul11_bicg47_sums_align_1_qint[50:0];

    // i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b(BITJOIN,400)@108
    assign i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q = {i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b, i_mul11_bicg47_sums_align_1_q};

    // SE_redist1_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0(STALLENABLE,949)
    // Valid signal propagation
    assign SE_redist1_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_V0 = SE_redist1_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist1_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_s_tv_0 = SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_backStall & SE_redist1_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist1_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backEN = ~ (SE_redist1_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_v_s_0 = SE_redist1_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backEN & SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_V1;
    // Backward Stall generation
    assign SE_redist1_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backStall = ~ (SE_redist1_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist1_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backEN == 1'b0)
            begin
                SE_redist1_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0 <= SE_redist1_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0 & SE_redist1_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist1_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0 <= SE_redist1_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_v_s_0;
            end

        end
    end

    // SE_redist17_i_mul11_bicg47_im8_cma_q_1_0(STALLENABLE,963)
    // Valid signal propagation
    assign SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_V0 = SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_R_v_0;
    assign SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_V1 = SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_s_tv_0 = SE_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_backStall & SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_R_v_0;
    assign SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_s_tv_1 = SE_redist1_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backStall & SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_or0 = SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_s_tv_0;
    assign SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_backEN = ~ (SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_s_tv_1 | SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_v_s_0 = SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_backEN & SR_SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_V;
    // Backward Stall generation
    assign SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_backStall = ~ (SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_R_v_0 <= 1'b0;
            SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_backEN == 1'b0)
            begin
                SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_R_v_0 <= SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_R_v_0 & SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_R_v_0 <= SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_v_s_0;
            end

            if (SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_backEN == 1'b0)
            begin
                SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_R_v_1 <= SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_R_v_1 & SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_s_tv_1;
            end
            else
            begin
                SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_R_v_1 <= SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_v_s_0;
            end

        end
    end

    // bubble_select_i_mul11_bicg47_im8_cma(BITSELECT,691)
    assign bubble_select_i_mul11_bicg47_im8_cma_b = $unsigned(bubble_out_i_mul11_bicg47_im8_cma_data_reg_data_out[27:0]);

    // SE_out_bubble_out_i_mul11_bicg47_im8_cma_data(STALLENABLE,1200)
    // Valid signal propagation
    assign SE_out_bubble_out_i_mul11_bicg47_im8_cma_data_V0 = SE_out_bubble_out_i_mul11_bicg47_im8_cma_data_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_mul11_bicg47_im8_cma_data_backStall = SR_SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_backStall | ~ (SE_out_bubble_out_i_mul11_bicg47_im8_cma_data_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_mul11_bicg47_im8_cma_data_wireValid = bubble_out_i_mul11_bicg47_im8_cma_data_reg_valid_out;

    // SR_SE_redist17_i_mul11_bicg47_im8_cma_q_1_0(STALLREG,1348)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_r_valid <= 1'b0;
            SR_SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_r_data0 <= 28'bxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_r_valid <= SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_backStall & (SR_SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_r_valid | SR_SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_i_valid);

            if (SR_SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_r_data0 <= $unsigned(bubble_select_i_mul11_bicg47_im8_cma_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_i_valid = SE_out_bubble_out_i_mul11_bicg47_im8_cma_data_V0;
    // Stall signal propagation
    assign SR_SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_backStall = SR_SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_r_valid | ~ (SR_SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_V = SR_SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_r_valid == 1'b1 ? SR_SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_r_valid : SR_SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_i_valid;

    assign SR_SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_D0 = SR_SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_r_valid == 1'b1 ? SR_SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_r_data0 : bubble_select_i_mul11_bicg47_im8_cma_b;

    // redist17_i_mul11_bicg47_im8_cma_q_1_0(REG,513)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_mul11_bicg47_im8_cma_q_1_0_q <= $unsigned(28'b0000000000000000000000000000);
        end
        else if (SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_backEN == 1'b1)
        begin
            redist17_i_mul11_bicg47_im8_cma_q_1_0_q <= $unsigned(SR_SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_D0);
        end
    end

    // i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select(BITSELECT,419)@108
    assign i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b = $unsigned(redist17_i_mul11_bicg47_im8_cma_q_1_0_q[23:0]);
    assign i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c = $unsigned(redist17_i_mul11_bicg47_im8_cma_q_1_0_q[27:24]);

    // SE_redist18_i_mul11_bicg47_im0_cma_q_1_0(STALLENABLE,964)
    // Valid signal propagation
    assign SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_V0 = SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_s_tv_0 = SE_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_backStall & SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_backEN = ~ (SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_v_s_0 = SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_backEN & SR_SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_V;
    // Backward Stall generation
    assign SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_backStall = ~ (SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_backEN == 1'b0)
            begin
                SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_R_v_0 <= SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_R_v_0 & SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_R_v_0 <= SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_v_s_0;
            end

        end
    end

    // bubble_select_i_mul11_bicg47_im0_cma(BITSELECT,688)
    assign bubble_select_i_mul11_bicg47_im0_cma_b = $unsigned(bubble_out_i_mul11_bicg47_im0_cma_data_reg_data_out[35:0]);

    // SE_out_bubble_out_i_mul11_bicg47_im0_cma_data(STALLENABLE,1196)
    // Valid signal propagation
    assign SE_out_bubble_out_i_mul11_bicg47_im0_cma_data_V0 = SE_out_bubble_out_i_mul11_bicg47_im0_cma_data_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_mul11_bicg47_im0_cma_data_backStall = SR_SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_backStall | ~ (SE_out_bubble_out_i_mul11_bicg47_im0_cma_data_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_mul11_bicg47_im0_cma_data_wireValid = bubble_out_i_mul11_bicg47_im0_cma_data_reg_valid_out;

    // SR_SE_redist18_i_mul11_bicg47_im0_cma_q_1_0(STALLREG,1349)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_r_valid <= 1'b0;
            SR_SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_r_data0 <= 36'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_r_valid <= SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_backStall & (SR_SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_r_valid | SR_SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_i_valid);

            if (SR_SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_r_data0 <= $unsigned(bubble_select_i_mul11_bicg47_im0_cma_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_i_valid = SE_out_bubble_out_i_mul11_bicg47_im0_cma_data_V0;
    // Stall signal propagation
    assign SR_SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_backStall = SR_SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_r_valid | ~ (SR_SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_V = SR_SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_r_valid == 1'b1 ? SR_SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_r_valid : SR_SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_i_valid;

    assign SR_SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_D0 = SR_SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_r_valid == 1'b1 ? SR_SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_r_data0 : bubble_select_i_mul11_bicg47_im0_cma_b;

    // redist18_i_mul11_bicg47_im0_cma_q_1_0(REG,514)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_mul11_bicg47_im0_cma_q_1_0_q <= $unsigned(36'b000000000000000000000000000000000000);
        end
        else if (SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_backEN == 1'b1)
        begin
            redist18_i_mul11_bicg47_im0_cma_q_1_0_q <= $unsigned(SR_SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_D0);
        end
    end

    // i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,394)@108
    assign i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q = {i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b, redist18_i_mul11_bicg47_im0_cma_q_1_0_q};

    // i_mul11_bicg47_sums_result_add_0_0_p1_of_2(ADD,344)@108 + 1
    assign i_mul11_bicg47_sums_result_add_0_0_p1_of_2_a = {1'b0, i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q};
    assign i_mul11_bicg47_sums_result_add_0_0_p1_of_2_b = {1'b0, i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul11_bicg47_sums_result_add_0_0_p1_of_2_o <= 61'b0;
        end
        else if (SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            i_mul11_bicg47_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_mul11_bicg47_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_mul11_bicg47_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_mul11_bicg47_sums_result_add_0_0_p1_of_2_c[0] = i_mul11_bicg47_sums_result_add_0_0_p1_of_2_o[60];
    assign i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q = i_mul11_bicg47_sums_result_add_0_0_p1_of_2_o[59:0];

    // SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2(STALLENABLE,1046)
    // Valid signal propagation
    assign SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_V0 = SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_R_v_0;
    // Stall signal propagation
    assign SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_s_tv_0 = SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_3_backStall & SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_R_v_0;
    // Backward Enable generation
    assign SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_backEN = ~ (SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_v_s_0 = SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_backEN & SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_V;
    // Backward Stall generation
    assign SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_backStall = ~ (SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_backEN == 1'b0)
            begin
                SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_R_v_0 <= SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_R_v_0 & SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_s_tv_0;
            end
            else
            begin
                SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_R_v_0 <= SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_v_s_0;
            end

        end
    end

    // SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_0(STALLENABLE,1044)
    // Valid signal propagation
    assign SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_0_V0 = SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_0_R_v_0;
    // Stall signal propagation
    assign SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_0_s_tv_0 = SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_1_backStall & SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_0_R_v_0;
    // Backward Enable generation
    assign SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_0_backEN = ~ (SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_0_v_s_0 = SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_0_backEN & SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_V1;
    // Backward Stall generation
    assign SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_0_backStall = ~ (SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_0_backEN == 1'b0)
            begin
                SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_0_R_v_0 <= SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_0_R_v_0 & SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_0_s_tv_0;
            end
            else
            begin
                SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_0_R_v_0 <= SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_0_v_s_0;
            end

        end
    end

    // i_toi1_intcast4_bicg45_sel_x(BITSELECT,50)@105
    assign i_toi1_intcast4_bicg45_sel_x_b = bubble_select_i_llvm_fpga_mem_unnamed_bicg16_bicg44_b[0:0];

    // redist48_i_toi1_intcast4_bicg45_sel_x_b_5_0(REG,580)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_i_toi1_intcast4_bicg45_sel_x_b_5_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_0_backEN == 1'b1)
        begin
            redist48_i_toi1_intcast4_bicg45_sel_x_b_5_0_q <= $unsigned(i_toi1_intcast4_bicg45_sel_x_b);
        end
    end

    // redist48_i_toi1_intcast4_bicg45_sel_x_b_5_1(REG,581)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_i_toi1_intcast4_bicg45_sel_x_b_5_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_1_backEN == 1'b1)
        begin
            redist48_i_toi1_intcast4_bicg45_sel_x_b_5_1_q <= $unsigned(redist48_i_toi1_intcast4_bicg45_sel_x_b_5_0_q);
        end
    end

    // SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_1(STALLENABLE,1045)
    // Valid signal propagation
    assign SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_1_V0 = SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_1_R_v_0;
    // Stall signal propagation
    assign SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_1_s_tv_0 = SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_backStall & SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_1_R_v_0;
    // Backward Enable generation
    assign SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_1_backEN = ~ (SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_1_v_s_0 = SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_1_backEN & SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_0_V0;
    // Backward Stall generation
    assign SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_1_backStall = ~ (SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_1_backEN == 1'b0)
            begin
                SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_1_R_v_0 <= SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_1_R_v_0 & SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_1_s_tv_0;
            end
            else
            begin
                SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_1_R_v_0 <= SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_1_v_s_0;
            end

        end
    end

    // SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2(STALLREG,1361)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_r_valid <= 1'b0;
            SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_r_valid <= SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_backStall & (SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_r_valid | SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_i_valid);

            if (SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_r_data0 <= $unsigned(redist48_i_toi1_intcast4_bicg45_sel_x_b_5_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_i_valid = SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_1_V0;
    // Stall signal propagation
    assign SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_backStall = SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_r_valid | ~ (SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_i_valid);

    // Valid
    assign SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_V = SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_r_valid == 1'b1 ? SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_r_valid : SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_i_valid;

    assign SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_D0 = SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_r_valid == 1'b1 ? SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_r_data0 : redist48_i_toi1_intcast4_bicg45_sel_x_b_5_1_q;

    // redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2(REG,582)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_backEN == 1'b1)
        begin
            redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_q <= $unsigned(SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_D0);
        end
    end

    // redist48_i_toi1_intcast4_bicg45_sel_x_b_5_3(REG,583)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_i_toi1_intcast4_bicg45_sel_x_b_5_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_3_backEN == 1'b1)
        begin
            redist48_i_toi1_intcast4_bicg45_sel_x_b_5_3_q <= $unsigned(redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_q);
        end
    end

    // SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_3(STALLENABLE,1047)
    // Valid signal propagation
    assign SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_3_V0 = SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_3_R_v_0;
    // Stall signal propagation
    assign SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_3_s_tv_0 = SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_backStall & SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_3_R_v_0;
    // Backward Enable generation
    assign SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_3_backEN = ~ (SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_3_v_s_0 = SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_3_backEN & SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_2_V0;
    // Backward Stall generation
    assign SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_3_backStall = ~ (SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_3_backEN == 1'b0)
            begin
                SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_3_R_v_0 <= SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_3_R_v_0 & SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_3_s_tv_0;
            end
            else
            begin
                SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_3_R_v_0 <= SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_3_v_s_0;
            end

        end
    end

    // SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4(STALLREG,1362)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_r_valid <= 1'b0;
            SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_r_valid <= SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_backStall & (SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_r_valid | SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_i_valid);

            if (SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_r_data0 <= $unsigned(redist48_i_toi1_intcast4_bicg45_sel_x_b_5_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_i_valid = SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_3_V0;
    // Stall signal propagation
    assign SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_backStall = SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_r_valid | ~ (SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_i_valid);

    // Valid
    assign SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_V = SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_r_valid == 1'b1 ? SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_r_valid : SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_i_valid;

    assign SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_D0 = SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_r_valid == 1'b1 ? SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_r_data0 : redist48_i_toi1_intcast4_bicg45_sel_x_b_5_3_q;

    // redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4(REG,584)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_q <= $unsigned(1'b0);
        end
        else if (SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_backEN == 1'b1)
        begin
            redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_q <= $unsigned(SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_D0);
        end
    end

    // SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2(STALLENABLE,1017)
    // Valid signal propagation
    assign SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_V0 = SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_R_v_0;
    // Stall signal propagation
    assign SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_s_tv_0 = SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_3_backStall & SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_R_v_0;
    // Backward Enable generation
    assign SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_backEN = ~ (SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_v_s_0 = SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_backEN & SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_V;
    // Backward Stall generation
    assign SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_backStall = ~ (SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_backEN == 1'b0)
            begin
                SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_R_v_0 <= SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_R_v_0 & SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_s_tv_0;
            end
            else
            begin
                SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_R_v_0 <= SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_v_s_0;
            end

        end
    end

    // SE_coalesced_delay_3_0(STALLENABLE,1066)
    // Valid signal propagation
    assign SE_coalesced_delay_3_0_V0 = SE_coalesced_delay_3_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_3_0_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_backStall & SE_coalesced_delay_3_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_3_0_backEN = ~ (SE_coalesced_delay_3_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_3_0_v_s_0 = SE_coalesced_delay_3_0_backEN & SE_join_for_coalesced_delay_3_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_3_0_backStall = ~ (SE_coalesced_delay_3_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_3_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_3_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_3_0_R_v_0 <= SE_coalesced_delay_3_0_R_v_0 & SE_coalesced_delay_3_0_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_3_0_R_v_0 <= SE_coalesced_delay_3_0_v_s_0;
            end

        end
    end

    // bubble_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_1_reg(STALLFIFO,1306)
    assign bubble_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_1_reg_valid_in = SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_V0;
    assign bubble_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_backStall;
    assign bubble_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(7),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo(STALLFIFO,586)
    assign redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_valid_in = SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_V4;
    assign redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_stall_in = SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_backStall;
    assign redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_data_in = i_first_cleanup_bicg1_sel_x_b;
    assign redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_valid_in_bitsignaltemp = redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_valid_in[0];
    assign redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_stall_in_bitsignaltemp = redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_stall_in[0];
    assign redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_valid_out[0] = redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_valid_out_bitsignaltemp;
    assign redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_stall_out[0] = redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(66),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist51_i_first_cleanup_bicg1_sel_x_b_65_fifo (
        .valid_in(redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_valid_in_bitsignaltemp),
        .stall_in(redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_stall_in_bitsignaltemp),
        .data_in(i_first_cleanup_bicg1_sel_x_b),
        .valid_out(redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_valid_out_bitsignaltemp),
        .stall_out(redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_stall_out_bitsignaltemp),
        .data_out(redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo(BITJOIN,750)
    assign bubble_join_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_q = redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_data_out;

    // bubble_select_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo(BITSELECT,751)
    assign bubble_select_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_b = $unsigned(bubble_join_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53(BITJOIN,672)
    assign bubble_join_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_q = i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53(BITSELECT,673)
    assign bubble_select_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_b = $unsigned(bubble_join_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_q[5:0]);

    // i_exitcond_bicg54_cmp_nsign(LOGICAL,274)@70
    assign i_exitcond_bicg54_cmp_nsign_q = $unsigned(~ (bubble_select_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_b[5:5]));

    // i_notcmp_bicg56(LOGICAL,132)@70
    assign i_notcmp_bicg56_q = i_exitcond_bicg54_cmp_nsign_q ^ VCC_q;

    // SE_out_i_llvm_fpga_push_i1_notexitcond_bicg57(STALLENABLE,854)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_bicg57_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_bicg57_wireValid = i_llvm_fpga_push_i1_notexitcond_bicg57_out_valid_out;

    // i_llvm_fpga_push_i1_notexitcond_bicg57(BLACKBOX,115)@70
    // in in_stall_in@20000000
    // out out_data_out@71
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    // out out_stall_out@20000000
    // out out_valid_out@71
    bicg_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_bicg57 (
        .in_data_in(i_exitcond_bicg54_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_bicg4_out_not_exitcond_stall_out),
        .in_first_cleanup(bubble_select_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notexitcond_bicg57_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notexitcond_bicg57_V0),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_bicg57_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_bicg57_out_feedback_valid_out_3),
        .out_stall_out(i_llvm_fpga_push_i1_notexitcond_bicg57_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notexitcond_bicg57_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_notexitcond_bicg57(STALLENABLE,853)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_bicg57_V0 = SE_in_i_llvm_fpga_push_i1_notexitcond_bicg57_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_bicg57_backStall = i_llvm_fpga_push_i1_notexitcond_bicg57_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_bicg57_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_bicg57_and0 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_V1;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_bicg57_wireValid = SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_V0 & SE_in_i_llvm_fpga_push_i1_notexitcond_bicg57_and0;

    // SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo(STALLENABLE,1052)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_fromReg0 <= '0;
            SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_fromReg0 <= SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_toReg0;
            // Successor 1
            SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_fromReg1 <= SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_bicg57_backStall) & SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_wireValid) | SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_fromReg0;
    assign SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_consumed1 = (~ (SR_SE_i_masked_bicg63_backStall) & SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_wireValid) | SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_fromReg1;
    // Consuming
    assign SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_StallValid = SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_backStall & SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_wireValid;
    assign SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_toReg0 = SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_StallValid & SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_consumed0;
    assign SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_toReg1 = SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_StallValid & SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_or0 = SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_consumed0;
    assign SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_wireStall = ~ (SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_consumed1 & SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_or0);
    assign SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_backStall = SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_V0 = SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_wireValid & ~ (SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_fromReg0);
    assign SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_V1 = SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_wireValid & ~ (SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_wireValid = redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_valid_out;

    // SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53(STALLENABLE,832)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_fromReg0 <= SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_fromReg1 <= SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_fromReg2 <= SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_fromReg3 <= SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_fromReg4 <= SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_toReg4;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_wireValid) | SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_bicg57_backStall) & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_wireValid) | SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_consumed2 = (~ (SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push13_bicg62_backStall) & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_wireValid) | SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_consumed3 = (~ (SR_SE_i_masked_bicg63_backStall) & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_wireValid) | SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_fromReg3;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_consumed4 = (~ (SE_out_redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_backStall) & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_wireValid) | SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_fromReg4;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_StallValid = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_backStall & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_wireValid;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_toReg0 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_StallValid & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_consumed0;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_toReg1 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_StallValid & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_consumed1;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_toReg2 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_StallValid & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_consumed2;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_toReg3 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_StallValid & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_consumed3;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_toReg4 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_StallValid & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_consumed4;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_or0 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_consumed0;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_or1 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_consumed1 & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_or0;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_or2 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_consumed2 & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_or1;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_or3 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_consumed3 & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_or2;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_wireStall = ~ (SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_consumed4 & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_or3);
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_backStall = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_V0 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_wireValid & ~ (SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_V1 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_wireValid & ~ (SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_V2 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_wireValid & ~ (SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_V3 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_wireValid & ~ (SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_fromReg3);
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_V4 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_wireValid & ~ (SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_fromReg4);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_wireValid = i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_out_valid_out;

    // SR_SE_i_masked_bicg63(STALLREG,1343)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_masked_bicg63_r_valid <= 1'b0;
            SR_SE_i_masked_bicg63_r_data0 <= 1'bx;
            SR_SE_i_masked_bicg63_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_masked_bicg63_r_valid <= SE_i_masked_bicg63_backStall & (SR_SE_i_masked_bicg63_r_valid | SR_SE_i_masked_bicg63_i_valid);

            if (SR_SE_i_masked_bicg63_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_masked_bicg63_r_data0 <= i_notcmp_bicg56_q;
                SR_SE_i_masked_bicg63_r_data1 <= $unsigned(bubble_select_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_masked_bicg63_and0 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_V3;
    assign SR_SE_i_masked_bicg63_i_valid = SE_out_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_V1 & SR_SE_i_masked_bicg63_and0;
    // Stall signal propagation
    assign SR_SE_i_masked_bicg63_backStall = SR_SE_i_masked_bicg63_r_valid | ~ (SR_SE_i_masked_bicg63_i_valid);

    // Valid
    assign SR_SE_i_masked_bicg63_V = SR_SE_i_masked_bicg63_r_valid == 1'b1 ? SR_SE_i_masked_bicg63_r_valid : SR_SE_i_masked_bicg63_i_valid;

    // Data0
    assign SR_SE_i_masked_bicg63_D0 = SR_SE_i_masked_bicg63_r_valid == 1'b1 ? SR_SE_i_masked_bicg63_r_data0 : i_notcmp_bicg56_q;
    // Data1
    assign SR_SE_i_masked_bicg63_D1 = SR_SE_i_masked_bicg63_r_valid == 1'b1 ? SR_SE_i_masked_bicg63_r_data1 : bubble_select_redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_b;

    // i_masked_bicg63(LOGICAL,124)@70 + 1
    assign i_masked_bicg63_qi = SR_SE_i_masked_bicg63_D0 & SR_SE_i_masked_bicg63_D1;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_bicg63_delay ( .xin(i_masked_bicg63_qi), .xout(i_masked_bicg63_q), .ena(SE_i_masked_bicg63_backEN[0]), .clk(clock), .aclr(resetn) );

    // SE_i_masked_bicg63(STALLENABLE,871)
    // Valid signal propagation
    assign SE_i_masked_bicg63_V0 = SE_i_masked_bicg63_R_v_0;
    // Stall signal propagation
    assign SE_i_masked_bicg63_s_tv_0 = redist20_i_masked_bicg63_q_41_fifo_stall_out & SE_i_masked_bicg63_R_v_0;
    // Backward Enable generation
    assign SE_i_masked_bicg63_backEN = ~ (SE_i_masked_bicg63_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_masked_bicg63_v_s_0 = SE_i_masked_bicg63_backEN & SR_SE_i_masked_bicg63_V;
    // Backward Stall generation
    assign SE_i_masked_bicg63_backStall = ~ (SE_i_masked_bicg63_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_masked_bicg63_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_masked_bicg63_backEN == 1'b0)
            begin
                SE_i_masked_bicg63_R_v_0 <= SE_i_masked_bicg63_R_v_0 & SE_i_masked_bicg63_s_tv_0;
            end
            else
            begin
                SE_i_masked_bicg63_R_v_0 <= SE_i_masked_bicg63_v_s_0;
            end

        end
    end

    // redist20_i_masked_bicg63_q_41_fifo(STALLFIFO,520)
    assign redist20_i_masked_bicg63_q_41_fifo_valid_in = SE_i_masked_bicg63_V0;
    assign redist20_i_masked_bicg63_q_41_fifo_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_backStall;
    assign redist20_i_masked_bicg63_q_41_fifo_data_in = i_masked_bicg63_q;
    assign redist20_i_masked_bicg63_q_41_fifo_valid_in_bitsignaltemp = redist20_i_masked_bicg63_q_41_fifo_valid_in[0];
    assign redist20_i_masked_bicg63_q_41_fifo_stall_in_bitsignaltemp = redist20_i_masked_bicg63_q_41_fifo_stall_in[0];
    assign redist20_i_masked_bicg63_q_41_fifo_valid_out[0] = redist20_i_masked_bicg63_q_41_fifo_valid_out_bitsignaltemp;
    assign redist20_i_masked_bicg63_q_41_fifo_stall_out[0] = redist20_i_masked_bicg63_q_41_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(41),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist20_i_masked_bicg63_q_41_fifo (
        .valid_in(redist20_i_masked_bicg63_q_41_fifo_valid_in_bitsignaltemp),
        .stall_in(redist20_i_masked_bicg63_q_41_fifo_stall_in_bitsignaltemp),
        .data_in(i_masked_bicg63_q),
        .valid_out(redist20_i_masked_bicg63_q_41_fifo_valid_out_bitsignaltemp),
        .stall_out(redist20_i_masked_bicg63_q_41_fifo_stall_out_bitsignaltemp),
        .data_out(redist20_i_masked_bicg63_q_41_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_memdep_bicg39(BLACKBOX,86)@42
    // in in_i_stall@20000000
    // out out_lsu_memdep_o_active@20000000
    // out out_memdep_bicg_avm_address@20000000
    // out out_memdep_bicg_avm_burstcount@20000000
    // out out_memdep_bicg_avm_byteenable@20000000
    // out out_memdep_bicg_avm_enable@20000000
    // out out_memdep_bicg_avm_read@20000000
    // out out_memdep_bicg_avm_write@20000000
    // out out_memdep_bicg_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@73
    // out out_o_writeack@73
    bicg_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_bicg39 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_D0),
        .in_i_dependence(SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_D1),
        .in_i_predicate(SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_D2),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_bicg39_backStall),
        .in_i_valid(SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_V0),
        .in_i_writedata(SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_D3),
        .in_memdep_bicg_avm_readdata(in_memdep_bicg_avm_readdata),
        .in_memdep_bicg_avm_readdatavalid(in_memdep_bicg_avm_readdatavalid),
        .in_memdep_bicg_avm_waitrequest(in_memdep_bicg_avm_waitrequest),
        .in_memdep_bicg_avm_writeack(in_memdep_bicg_avm_writeack),
        .out_lsu_memdep_o_active(i_llvm_fpga_mem_memdep_bicg39_out_lsu_memdep_o_active),
        .out_memdep_bicg_avm_address(i_llvm_fpga_mem_memdep_bicg39_out_memdep_bicg_avm_address),
        .out_memdep_bicg_avm_burstcount(i_llvm_fpga_mem_memdep_bicg39_out_memdep_bicg_avm_burstcount),
        .out_memdep_bicg_avm_byteenable(i_llvm_fpga_mem_memdep_bicg39_out_memdep_bicg_avm_byteenable),
        .out_memdep_bicg_avm_enable(i_llvm_fpga_mem_memdep_bicg39_out_memdep_bicg_avm_enable),
        .out_memdep_bicg_avm_read(i_llvm_fpga_mem_memdep_bicg39_out_memdep_bicg_avm_read),
        .out_memdep_bicg_avm_write(i_llvm_fpga_mem_memdep_bicg39_out_memdep_bicg_avm_write),
        .out_memdep_bicg_avm_writedata(i_llvm_fpga_mem_memdep_bicg39_out_memdep_bicg_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_bicg39_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_bicg39_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_bicg39_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_memdep_bicg39(BITJOIN,612)
    assign bubble_join_i_llvm_fpga_mem_memdep_bicg39_q = i_llvm_fpga_mem_memdep_bicg39_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_bicg39(BITSELECT,613)
    assign bubble_select_i_llvm_fpga_mem_memdep_bicg39_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_bicg39_q[0:0]);

    // redist43_i_llvm_fpga_mem_memdep_bicg39_out_o_writeack_38_fifo(STALLFIFO,569)
    assign redist43_i_llvm_fpga_mem_memdep_bicg39_out_o_writeack_38_fifo_valid_in = SE_out_i_llvm_fpga_mem_memdep_bicg39_V2;
    assign redist43_i_llvm_fpga_mem_memdep_bicg39_out_o_writeack_38_fifo_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_backStall;
    assign redist43_i_llvm_fpga_mem_memdep_bicg39_out_o_writeack_38_fifo_data_in = bubble_select_i_llvm_fpga_mem_memdep_bicg39_b;
    assign redist43_i_llvm_fpga_mem_memdep_bicg39_out_o_writeack_38_fifo_valid_in_bitsignaltemp = redist43_i_llvm_fpga_mem_memdep_bicg39_out_o_writeack_38_fifo_valid_in[0];
    assign redist43_i_llvm_fpga_mem_memdep_bicg39_out_o_writeack_38_fifo_stall_in_bitsignaltemp = redist43_i_llvm_fpga_mem_memdep_bicg39_out_o_writeack_38_fifo_stall_in[0];
    assign redist43_i_llvm_fpga_mem_memdep_bicg39_out_o_writeack_38_fifo_valid_out[0] = redist43_i_llvm_fpga_mem_memdep_bicg39_out_o_writeack_38_fifo_valid_out_bitsignaltemp;
    assign redist43_i_llvm_fpga_mem_memdep_bicg39_out_o_writeack_38_fifo_stall_out[0] = redist43_i_llvm_fpga_mem_memdep_bicg39_out_o_writeack_38_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(39),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist43_i_llvm_fpga_mem_memdep_bicg39_out_o_writeack_38_fifo (
        .valid_in(redist43_i_llvm_fpga_mem_memdep_bicg39_out_o_writeack_38_fifo_valid_in_bitsignaltemp),
        .stall_in(redist43_i_llvm_fpga_mem_memdep_bicg39_out_o_writeack_38_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_mem_memdep_bicg39_b),
        .valid_out(redist43_i_llvm_fpga_mem_memdep_bicg39_out_o_writeack_38_fifo_valid_out_bitsignaltemp),
        .stall_out(redist43_i_llvm_fpga_mem_memdep_bicg39_out_o_writeack_38_fifo_stall_out_bitsignaltemp),
        .data_out(redist43_i_llvm_fpga_mem_memdep_bicg39_out_o_writeack_38_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68(BITJOIN,651)
    assign bubble_join_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_q = i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68(BITSELECT,652)
    assign bubble_select_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_q[0:0]);

    // redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_0(REG,542)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_0_backEN == 1'b1)
        begin
            redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_0_q <= $unsigned(bubble_select_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_b);
        end
    end

    // redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_1(REG,543)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_1_backEN == 1'b1)
        begin
            redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_1_q <= $unsigned(redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_0_q);
        end
    end

    // redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2(REG,544)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_backEN == 1'b1)
        begin
            redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_q <= $unsigned(SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_D0);
        end
    end

    // redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_3(REG,545)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_3_backEN == 1'b1)
        begin
            redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_3_q <= $unsigned(redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_q);
        end
    end

    // SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4(STALLREG,1358)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_r_valid <= 1'b0;
            SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_r_valid <= SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_backStall & (SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_r_valid | SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_i_valid);

            if (SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_r_data0 <= $unsigned(redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_i_valid = SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_3_V0;
    // Stall signal propagation
    assign SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_backStall = SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_r_valid | ~ (SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_i_valid);

    // Valid
    assign SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_V = SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_r_valid == 1'b1 ? SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_r_valid : SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_i_valid;

    assign SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_D0 = SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_r_valid == 1'b1 ? SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_r_data0 : redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_3_q;

    // SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_3(STALLENABLE,1000)
    // Valid signal propagation
    assign SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_3_V0 = SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_3_R_v_0;
    // Stall signal propagation
    assign SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_3_s_tv_0 = SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_backStall & SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_3_R_v_0;
    // Backward Enable generation
    assign SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_3_backEN = ~ (SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_3_v_s_0 = SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_3_backEN & SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_V0;
    // Backward Stall generation
    assign SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_3_backStall = ~ (SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_3_backEN == 1'b0)
            begin
                SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_3_R_v_0 <= SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_3_R_v_0 & SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_3_s_tv_0;
            end
            else
            begin
                SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_3_R_v_0 <= SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_3_v_s_0;
            end

        end
    end

    // SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2(STALLENABLE,999)
    // Valid signal propagation
    assign SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_V0 = SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_R_v_0;
    // Stall signal propagation
    assign SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_s_tv_0 = SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_3_backStall & SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_R_v_0;
    // Backward Enable generation
    assign SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_backEN = ~ (SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_v_s_0 = SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_backEN & SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_V;
    // Backward Stall generation
    assign SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_backStall = ~ (SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_backEN == 1'b0)
            begin
                SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_R_v_0 <= SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_R_v_0 & SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_s_tv_0;
            end
            else
            begin
                SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_R_v_0 <= SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_v_s_0;
            end

        end
    end

    // SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2(STALLREG,1357)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_r_valid <= 1'b0;
            SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_r_valid <= SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_backStall & (SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_r_valid | SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_i_valid);

            if (SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_r_data0 <= $unsigned(redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_i_valid = SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_1_V0;
    // Stall signal propagation
    assign SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_backStall = SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_r_valid | ~ (SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_i_valid);

    // Valid
    assign SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_V = SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_r_valid == 1'b1 ? SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_r_valid : SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_i_valid;

    assign SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_D0 = SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_r_valid == 1'b1 ? SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_r_data0 : redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_1_q;

    // SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_1(STALLENABLE,998)
    // Valid signal propagation
    assign SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_1_V0 = SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_1_R_v_0;
    // Stall signal propagation
    assign SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_1_s_tv_0 = SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_2_backStall & SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_1_R_v_0;
    // Backward Enable generation
    assign SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_1_backEN = ~ (SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_1_v_s_0 = SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_1_backEN & SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_0_V0;
    // Backward Stall generation
    assign SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_1_backStall = ~ (SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_1_backEN == 1'b0)
            begin
                SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_1_R_v_0 <= SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_1_R_v_0 & SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_1_s_tv_0;
            end
            else
            begin
                SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_1_R_v_0 <= SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_1_v_s_0;
            end

        end
    end

    // SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_0(STALLENABLE,997)
    // Valid signal propagation
    assign SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_0_V0 = SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_0_R_v_0;
    // Stall signal propagation
    assign SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_0_s_tv_0 = SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_1_backStall & SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_0_R_v_0;
    // Backward Enable generation
    assign SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_0_backEN = ~ (SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_0_v_s_0 = SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_0_backEN & SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_V1;
    // Backward Stall generation
    assign SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_0_backStall = ~ (SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_0_backEN == 1'b0)
            begin
                SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_0_R_v_0 <= SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_0_R_v_0 & SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_0_s_tv_0;
            end
            else
            begin
                SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_0_R_v_0 <= SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_0_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64(BITJOIN,676)
    assign bubble_join_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_q = i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out;

    // bubble_select_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64(BITSELECT,677)
    assign bubble_select_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_b = $unsigned(bubble_join_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_q[63:0]);

    // redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_0(REG,522)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_0_backEN == 1'b1)
        begin
            redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_0_q <= $unsigned(bubble_select_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_b);
        end
    end

    // redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_1(REG,523)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_1_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_1_backEN == 1'b1)
        begin
            redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_1_q <= $unsigned(redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_0_q);
        end
    end

    // redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2(REG,524)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_backEN == 1'b1)
        begin
            redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_q <= $unsigned(SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_D0);
        end
    end

    // redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_3(REG,525)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_3_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_3_backEN == 1'b1)
        begin
            redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_3_q <= $unsigned(redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_q);
        end
    end

    // SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4(STALLREG,1356)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_r_valid <= 1'b0;
            SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_r_valid <= SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_backStall & (SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_r_valid | SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_i_valid);

            if (SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_r_data0 <= $unsigned(redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_i_valid = SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_3_V0;
    // Stall signal propagation
    assign SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_backStall = SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_r_valid | ~ (SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_i_valid);

    // Valid
    assign SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_V = SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_r_valid == 1'b1 ? SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_r_valid : SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_i_valid;

    assign SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_D0 = SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_r_valid == 1'b1 ? SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_r_data0 : redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_3_q;

    // SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_3(STALLENABLE,977)
    // Valid signal propagation
    assign SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_3_V0 = SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_3_R_v_0;
    // Stall signal propagation
    assign SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_3_s_tv_0 = SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_backStall & SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_3_R_v_0;
    // Backward Enable generation
    assign SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_3_backEN = ~ (SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_3_v_s_0 = SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_3_backEN & SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_V0;
    // Backward Stall generation
    assign SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_3_backStall = ~ (SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_3_backEN == 1'b0)
            begin
                SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_3_R_v_0 <= SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_3_R_v_0 & SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_3_s_tv_0;
            end
            else
            begin
                SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_3_R_v_0 <= SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_3_v_s_0;
            end

        end
    end

    // SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2(STALLENABLE,976)
    // Valid signal propagation
    assign SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_V0 = SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_R_v_0;
    // Stall signal propagation
    assign SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_s_tv_0 = SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_3_backStall & SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_R_v_0;
    // Backward Enable generation
    assign SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_backEN = ~ (SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_v_s_0 = SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_backEN & SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_V;
    // Backward Stall generation
    assign SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_backStall = ~ (SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_backEN == 1'b0)
            begin
                SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_R_v_0 <= SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_R_v_0 & SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_s_tv_0;
            end
            else
            begin
                SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_R_v_0 <= SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_v_s_0;
            end

        end
    end

    // SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2(STALLREG,1355)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_r_valid <= 1'b0;
            SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_r_valid <= SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_backStall & (SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_r_valid | SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_i_valid);

            if (SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_r_data0 <= $unsigned(redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_i_valid = SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_1_V0;
    // Stall signal propagation
    assign SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_backStall = SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_r_valid | ~ (SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_i_valid);

    // Valid
    assign SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_V = SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_r_valid == 1'b1 ? SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_r_valid : SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_i_valid;

    assign SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_D0 = SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_r_valid == 1'b1 ? SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_r_data0 : redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_1_q;

    // SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_1(STALLENABLE,975)
    // Valid signal propagation
    assign SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_1_V0 = SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_1_R_v_0;
    // Stall signal propagation
    assign SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_1_s_tv_0 = SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_2_backStall & SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_1_R_v_0;
    // Backward Enable generation
    assign SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_1_backEN = ~ (SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_1_v_s_0 = SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_1_backEN & SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_0_V0;
    // Backward Stall generation
    assign SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_1_backStall = ~ (SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_1_backEN == 1'b0)
            begin
                SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_1_R_v_0 <= SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_1_R_v_0 & SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_1_s_tv_0;
            end
            else
            begin
                SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_1_R_v_0 <= SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_1_v_s_0;
            end

        end
    end

    // SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_0(STALLENABLE,974)
    // Valid signal propagation
    assign SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_0_V0 = SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_0_R_v_0;
    // Stall signal propagation
    assign SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_0_s_tv_0 = SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_1_backStall & SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_0_R_v_0;
    // Backward Enable generation
    assign SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_0_backEN = ~ (SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_0_v_s_0 = SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_0_backEN & SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_V1;
    // Backward Stall generation
    assign SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_0_backStall = ~ (SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_0_backEN == 1'b0)
            begin
                SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_0_R_v_0 <= SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_0_R_v_0 & SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_0_s_tv_0;
            end
            else
            begin
                SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_0_R_v_0 <= SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64(STALLENABLE,834)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_fromReg0 <= SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_fromReg1 <= SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_wireValid) | SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_fromReg0;
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_consumed1 = (~ (SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_0_backStall) & SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_wireValid) | SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_StallValid = SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_backStall & SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_wireValid;
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_toReg0 = SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_StallValid & SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_consumed0;
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_toReg1 = SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_StallValid & SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_or0 = SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_consumed0;
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_wireStall = ~ (SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_consumed1 & SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_or0);
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_backStall = SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_V0 = SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_wireValid & ~ (SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_fromReg0);
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_V1 = SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_wireValid & ~ (SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_wireValid = i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_valid_out;

    // SE_in_i_llvm_fpga_push_i1_notcmp2035_push25_bicg69(STALLENABLE,851)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notcmp2035_push25_bicg69_V0 = SE_in_i_llvm_fpga_push_i1_notcmp2035_push25_bicg69_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notcmp2035_push25_bicg69_backStall = i_llvm_fpga_push_i1_notcmp2035_push25_bicg69_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_notcmp2035_push25_bicg69_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notcmp2035_push25_bicg69_and0 = SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_V0;
    assign SE_in_i_llvm_fpga_push_i1_notcmp2035_push25_bicg69_wireValid = SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_V2 & SE_in_i_llvm_fpga_push_i1_notcmp2035_push25_bicg69_and0;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi3_push17_bicg46(STALLENABLE,844)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi3_push17_bicg46_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi3_push17_bicg46_wireValid = i_llvm_fpga_push_i1_memdep_phi3_push17_bicg46_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi3_push17_bicg46(BLACKBOX,110)@110
    // in in_stall_in@20000000
    // out out_data_out@111
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    // out out_stall_out@20000000
    // out out_valid_out@111
    bicg_i_llvm_fpga_push_i1_memdep_phi3_push17_0 thei_llvm_fpga_push_i1_memdep_phi3_push17_bicg46 (
        .in_data_in(redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_q),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i1_memdep_phi3_pop17_bicg37_out_feedback_stall_out_17),
        .in_keep_going(redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi3_push17_bicg46_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi3_push17_bicg46_V0),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i1_memdep_phi3_push17_bicg46_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i1_memdep_phi3_push17_bicg46_out_feedback_valid_out_17),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi3_push17_bicg46_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi3_push17_bicg46_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_memdep_phi3_push17_bicg46(STALLENABLE,843)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi3_push17_bicg46_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi3_push17_bicg46_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi3_push17_bicg46_backStall = i_llvm_fpga_push_i1_memdep_phi3_push17_bicg46_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi3_push17_bicg46_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi3_push17_bicg46_and0 = SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_V1;
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi3_push17_bicg46_wireValid = SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_V0 & SE_in_i_llvm_fpga_push_i1_memdep_phi3_push17_bicg46_and0;

    // SE_out_i_llvm_fpga_push_i1_exitcond1434_push24_bicg67(STALLENABLE,838)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_exitcond1434_push24_bicg67_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_exitcond1434_push24_bicg67_wireValid = i_llvm_fpga_push_i1_exitcond1434_push24_bicg67_out_valid_out;

    // i_llvm_fpga_push_i1_exitcond1434_push24_bicg67(BLACKBOX,107)@110
    // in in_stall_in@20000000
    // out out_data_out@111
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    // out out_stall_out@20000000
    // out out_valid_out@111
    bicg_i_llvm_fpga_push_i1_exitcond1434_push24_0 thei_llvm_fpga_push_i1_exitcond1434_push24_bicg67 (
        .in_data_in(redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_q),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_feedback_stall_out_24),
        .in_keep_going(redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_exitcond1434_push24_bicg67_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_exitcond1434_push24_bicg67_V0),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_i1_exitcond1434_push24_bicg67_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_i1_exitcond1434_push24_bicg67_out_feedback_valid_out_24),
        .out_stall_out(i_llvm_fpga_push_i1_exitcond1434_push24_bicg67_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_exitcond1434_push24_bicg67_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_exitcond1434_push24_bicg67(STALLENABLE,837)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_exitcond1434_push24_bicg67_V0 = SE_in_i_llvm_fpga_push_i1_exitcond1434_push24_bicg67_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_exitcond1434_push24_bicg67_backStall = i_llvm_fpga_push_i1_exitcond1434_push24_bicg67_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_exitcond1434_push24_bicg67_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_exitcond1434_push24_bicg67_and0 = SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_V0;
    assign SE_in_i_llvm_fpga_push_i1_exitcond1434_push24_bicg67_wireValid = SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_V0 & SE_in_i_llvm_fpga_push_i1_exitcond1434_push24_bicg67_and0;

    // SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2(STALLENABLE,1027)
    // Valid signal propagation
    assign SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_V0 = SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_R_v_0;
    // Stall signal propagation
    assign SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_s_tv_0 = SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_3_backStall & SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_R_v_0;
    // Backward Enable generation
    assign SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_backEN = ~ (SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_v_s_0 = SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_backEN & SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_V;
    // Backward Stall generation
    assign SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_backStall = ~ (SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_backEN == 1'b0)
            begin
                SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_R_v_0 <= SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_R_v_0 & SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_s_tv_0;
            end
            else
            begin
                SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_R_v_0 <= SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_v_s_0;
            end

        end
    end

    // SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0(STALLENABLE,1025)
    // Valid signal propagation
    assign SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_V0 = SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_R_v_0;
    // Stall signal propagation
    assign SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_s_tv_0 = SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_1_backStall & SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_R_v_0;
    // Backward Enable generation
    assign SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_backEN = ~ (SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_v_s_0 = SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_backEN & SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_V;
    // Backward Stall generation
    assign SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_backStall = ~ (SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_backEN == 1'b0)
            begin
                SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_R_v_0 <= SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_R_v_0 & SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_s_tv_0;
            end
            else
            begin
                SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_R_v_0 <= SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_v_s_0;
            end

        end
    end

    // SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0(STALLREG,1366)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_r_valid <= 1'b0;
            SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_r_valid <= SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_backStall & (SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_r_valid | SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_i_valid);

            if (SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_r_data0 <= $unsigned(bubble_select_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_i_valid = SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_V1;
    // Stall signal propagation
    assign SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_backStall = SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_r_valid | ~ (SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_i_valid);

    // Valid
    assign SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_V = SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_r_valid == 1'b1 ? SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_r_valid : SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_i_valid;

    assign SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_D0 = SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_r_valid == 1'b1 ? SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_r_data0 : bubble_select_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_b;

    // redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0(REG,564)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_backEN == 1'b1)
        begin
            redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_q <= $unsigned(SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_D0);
        end
    end

    // redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_1(REG,565)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_1_backEN == 1'b1)
        begin
            redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_1_q <= $unsigned(redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_q);
        end
    end

    // SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_1(STALLENABLE,1026)
    // Valid signal propagation
    assign SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_1_V0 = SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_1_R_v_0;
    // Stall signal propagation
    assign SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_1_s_tv_0 = SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_backStall & SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_1_R_v_0;
    // Backward Enable generation
    assign SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_1_backEN = ~ (SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_1_v_s_0 = SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_1_backEN & SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_V0;
    // Backward Stall generation
    assign SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_1_backStall = ~ (SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_1_backEN == 1'b0)
            begin
                SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_1_R_v_0 <= SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_1_R_v_0 & SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_1_s_tv_0;
            end
            else
            begin
                SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_1_R_v_0 <= SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_1_v_s_0;
            end

        end
    end

    // SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2(STALLREG,1367)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_r_valid <= 1'b0;
            SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_r_valid <= SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_backStall & (SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_r_valid | SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_i_valid);

            if (SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_r_data0 <= $unsigned(redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_i_valid = SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_1_V0;
    // Stall signal propagation
    assign SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_backStall = SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_r_valid | ~ (SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_i_valid);

    // Valid
    assign SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_V = SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_r_valid == 1'b1 ? SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_r_valid : SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_i_valid;

    assign SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_D0 = SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_r_valid == 1'b1 ? SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_r_data0 : redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_1_q;

    // redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2(REG,566)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_backEN == 1'b1)
        begin
            redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_q <= $unsigned(SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_D0);
        end
    end

    // redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_3(REG,567)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_3_backEN == 1'b1)
        begin
            redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_3_q <= $unsigned(redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_q);
        end
    end

    // SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_3(STALLENABLE,1028)
    // Valid signal propagation
    assign SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_3_V0 = SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_3_R_v_0;
    // Stall signal propagation
    assign SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_3_s_tv_0 = SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_backStall & SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_3_R_v_0;
    // Backward Enable generation
    assign SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_3_backEN = ~ (SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_3_v_s_0 = SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_3_backEN & SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_2_V0;
    // Backward Stall generation
    assign SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_3_backStall = ~ (SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_3_backEN == 1'b0)
            begin
                SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_3_R_v_0 <= SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_3_R_v_0 & SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_3_s_tv_0;
            end
            else
            begin
                SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_3_R_v_0 <= SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_3_v_s_0;
            end

        end
    end

    // SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4(STALLREG,1368)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_r_valid <= 1'b0;
            SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_r_valid <= SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_backStall & (SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_r_valid | SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_i_valid);

            if (SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_r_data0 <= $unsigned(redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_i_valid = SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_3_V0;
    // Stall signal propagation
    assign SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_backStall = SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_r_valid | ~ (SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_i_valid);

    // Valid
    assign SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_V = SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_r_valid == 1'b1 ? SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_r_valid : SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_i_valid;

    assign SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_D0 = SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_r_valid == 1'b1 ? SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_r_data0 : redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_3_q;

    // SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4(STALLENABLE,1029)
    // Valid signal propagation
    assign SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_V0 = SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_R_v_0;
    assign SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_V1 = SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_R_v_1;
    assign SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_V2 = SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_R_v_2;
    assign SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_V3 = SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_R_v_3;
    assign SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_V4 = SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_R_v_4;
    // Stall signal propagation
    assign SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_s_tv_0 = SE_in_i_llvm_fpga_push_i1_exitcond1434_push24_bicg67_backStall & SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_R_v_0;
    assign SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_s_tv_1 = SE_in_i_llvm_fpga_push_i1_memdep_phi3_push17_bicg46_backStall & SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_R_v_1;
    assign SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_s_tv_2 = SE_in_i_llvm_fpga_push_i1_notcmp2035_push25_bicg69_backStall & SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_R_v_2;
    assign SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_s_tv_3 = SR_SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_backStall & SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_R_v_3;
    assign SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_s_tv_4 = SE_in_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8030_push20_bicg65_backStall & SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_R_v_4;
    // Backward Enable generation
    assign SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_or0 = SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_s_tv_0;
    assign SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_or1 = SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_s_tv_1 | SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_or0;
    assign SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_or2 = SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_s_tv_2 | SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_or1;
    assign SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_or3 = SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_s_tv_3 | SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_or2;
    assign SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_backEN = ~ (SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_s_tv_4 | SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_or3);
    // Determine whether to write valid data into the first register stage
    assign SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_v_s_0 = SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_backEN & SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_V;
    // Backward Stall generation
    assign SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_backStall = ~ (SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_R_v_0 <= 1'b0;
            SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_R_v_1 <= 1'b0;
            SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_R_v_2 <= 1'b0;
            SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_R_v_3 <= 1'b0;
            SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_R_v_4 <= 1'b0;
        end
        else
        begin
            if (SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_backEN == 1'b0)
            begin
                SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_R_v_0 <= SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_R_v_0 & SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_s_tv_0;
            end
            else
            begin
                SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_R_v_0 <= SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_v_s_0;
            end

            if (SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_backEN == 1'b0)
            begin
                SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_R_v_1 <= SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_R_v_1 & SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_s_tv_1;
            end
            else
            begin
                SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_R_v_1 <= SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_v_s_0;
            end

            if (SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_backEN == 1'b0)
            begin
                SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_R_v_2 <= SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_R_v_2 & SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_s_tv_2;
            end
            else
            begin
                SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_R_v_2 <= SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_v_s_0;
            end

            if (SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_backEN == 1'b0)
            begin
                SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_R_v_3 <= SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_R_v_3 & SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_s_tv_3;
            end
            else
            begin
                SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_R_v_3 <= SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_v_s_0;
            end

            if (SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_backEN == 1'b0)
            begin
                SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_R_v_4 <= SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_R_v_4 & SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_s_tv_4;
            end
            else
            begin
                SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_R_v_4 <= SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_v_s_0;
            end

        end
    end

    // SE_in_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8030_push20_bicg65(STALLENABLE,867)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8030_push20_bicg65_V0 = SE_in_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8030_push20_bicg65_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8030_push20_bicg65_backStall = i_llvm_fpga_push_p1025i32_mptr_bitcast_index8030_push20_bicg65_out_stall_out | ~ (SE_in_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8030_push20_bicg65_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8030_push20_bicg65_and0 = SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_V0;
    assign SE_in_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8030_push20_bicg65_wireValid = SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_V4 & SE_in_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8030_push20_bicg65_and0;

    // SE_out_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8030_push20_bicg65(STALLENABLE,868)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8030_push20_bicg65_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8030_push20_bicg65_wireValid = i_llvm_fpga_push_p1025i32_mptr_bitcast_index8030_push20_bicg65_out_valid_out;

    // redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4(REG,568)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_q <= $unsigned(1'b0);
        end
        else if (SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_backEN == 1'b1)
        begin
            redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_q <= $unsigned(SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_D0);
        end
    end

    // i_llvm_fpga_push_p1025i32_mptr_bitcast_index8030_push20_bicg65(BLACKBOX,122)@110
    // in in_stall_in@20000000
    // out out_data_out@111
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    // out out_stall_out@20000000
    // out out_valid_out@111
    bicg_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8030_push20_0 thei_llvm_fpga_push_p1025i32_mptr_bitcast_index8030_push20_bicg65 (
        .in_data_in(redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_q),
        .in_feedback_stall_in_20(i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_feedback_stall_out_20),
        .in_keep_going(redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8030_push20_bicg65_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8030_push20_bicg65_V0),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_p1025i32_mptr_bitcast_index8030_push20_bicg65_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_p1025i32_mptr_bitcast_index8030_push20_bicg65_out_feedback_valid_out_20),
        .out_stall_out(i_llvm_fpga_push_p1025i32_mptr_bitcast_index8030_push20_bicg65_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_p1025i32_mptr_bitcast_index8030_push20_bicg65_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64(BLACKBOX,105)@104
    // in in_stall_in@20000000
    // out out_data_out@105
    // out out_feedback_stall_out_20@20000000
    // out out_stall_out@20000000
    // out out_valid_out@105
    bicg_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_0 thei_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64 (
        .in_data_in(SR_SE_out_coalesced_delay_1_fifo_D7),
        .in_dir(SR_SE_out_coalesced_delay_1_fifo_D4),
        .in_feedback_in_20(i_llvm_fpga_push_p1025i32_mptr_bitcast_index8030_push20_bicg65_out_feedback_out_20),
        .in_feedback_valid_in_20(i_llvm_fpga_push_p1025i32_mptr_bitcast_index8030_push20_bicg65_out_feedback_valid_out_20),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_backStall),
        .in_valid_in(SE_out_coalesced_delay_1_fifo_V3),
        .out_data_out(i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_feedback_stall_out_20),
        .out_stall_out(i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48(BITJOIN,668)
    assign bubble_join_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_q = i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48(BITSELECT,669)
    assign bubble_select_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_q[31:0]);

    // redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_0(REG,527)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_0_backEN == 1'b1)
        begin
            redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_0_q <= $unsigned(bubble_select_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_b);
        end
    end

    // redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_1(REG,528)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_1_backEN == 1'b1)
        begin
            redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_1_q <= $unsigned(redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_0_q);
        end
    end

    // redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2(REG,529)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_backEN == 1'b1)
        begin
            redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_q <= $unsigned(SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_D0);
        end
    end

    // redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_3(REG,530)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_3_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_3_backEN == 1'b1)
        begin
            redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_3_q <= $unsigned(redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_q);
        end
    end

    // SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4(STALLREG,1354)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_r_valid <= 1'b0;
            SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_r_valid <= SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_backStall & (SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_r_valid | SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_i_valid);

            if (SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_r_data0 <= $unsigned(redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_i_valid = SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_3_V0;
    // Stall signal propagation
    assign SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_backStall = SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_r_valid | ~ (SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_i_valid);

    // Valid
    assign SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_V = SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_r_valid == 1'b1 ? SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_r_valid : SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_i_valid;

    assign SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_D0 = SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_r_valid == 1'b1 ? SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_r_data0 : redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_3_q;

    // SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_3(STALLENABLE,982)
    // Valid signal propagation
    assign SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_3_V0 = SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_3_R_v_0;
    // Stall signal propagation
    assign SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_3_s_tv_0 = SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_backStall & SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_3_R_v_0;
    // Backward Enable generation
    assign SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_3_backEN = ~ (SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_3_v_s_0 = SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_3_backEN & SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_V0;
    // Backward Stall generation
    assign SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_3_backStall = ~ (SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_3_backEN == 1'b0)
            begin
                SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_3_R_v_0 <= SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_3_R_v_0 & SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_3_s_tv_0;
            end
            else
            begin
                SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_3_R_v_0 <= SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_3_v_s_0;
            end

        end
    end

    // SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2(STALLENABLE,981)
    // Valid signal propagation
    assign SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_V0 = SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_R_v_0;
    // Stall signal propagation
    assign SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_s_tv_0 = SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_3_backStall & SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_R_v_0;
    // Backward Enable generation
    assign SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_backEN = ~ (SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_v_s_0 = SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_backEN & SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_V;
    // Backward Stall generation
    assign SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_backStall = ~ (SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_backEN == 1'b0)
            begin
                SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_R_v_0 <= SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_R_v_0 & SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_s_tv_0;
            end
            else
            begin
                SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_R_v_0 <= SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_v_s_0;
            end

        end
    end

    // SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2(STALLREG,1353)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_r_valid <= 1'b0;
            SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_r_valid <= SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_backStall & (SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_r_valid | SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_i_valid);

            if (SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_r_data0 <= $unsigned(redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_i_valid = SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_1_V0;
    // Stall signal propagation
    assign SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_backStall = SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_r_valid | ~ (SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_i_valid);

    // Valid
    assign SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_V = SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_r_valid == 1'b1 ? SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_r_valid : SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_i_valid;

    assign SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_D0 = SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_r_valid == 1'b1 ? SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_r_data0 : redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_1_q;

    // SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_1(STALLENABLE,980)
    // Valid signal propagation
    assign SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_1_V0 = SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_1_R_v_0;
    // Stall signal propagation
    assign SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_1_s_tv_0 = SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_2_backStall & SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_1_R_v_0;
    // Backward Enable generation
    assign SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_1_backEN = ~ (SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_1_v_s_0 = SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_1_backEN & SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_0_V0;
    // Backward Stall generation
    assign SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_1_backStall = ~ (SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_1_backEN == 1'b0)
            begin
                SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_1_R_v_0 <= SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_1_R_v_0 & SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_1_s_tv_0;
            end
            else
            begin
                SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_1_R_v_0 <= SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_1_v_s_0;
            end

        end
    end

    // SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_0(STALLENABLE,979)
    // Valid signal propagation
    assign SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_0_V0 = SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_0_R_v_0;
    // Stall signal propagation
    assign SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_0_s_tv_0 = SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_1_backStall & SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_0_R_v_0;
    // Backward Enable generation
    assign SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_0_backEN = ~ (SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_0_v_s_0 = SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_0_backEN & SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_V1;
    // Backward Stall generation
    assign SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_0_backStall = ~ (SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_0_backEN == 1'b0)
            begin
                SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_0_R_v_0 <= SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_0_R_v_0 & SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_0_s_tv_0;
            end
            else
            begin
                SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_0_R_v_0 <= SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48(STALLENABLE,830)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_fromReg0 <= SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_fromReg1 <= SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_wireValid) | SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_consumed1 = (~ (SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_0_backStall) & SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_wireValid) | SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_StallValid = SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_backStall & SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_wireValid;
    assign SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_toReg0 = SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_StallValid & SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_toReg1 = SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_StallValid & SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_or0 = SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_wireStall = ~ (SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_consumed1 & SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_or0);
    assign SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_backStall = SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_V0 = SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_V1 = SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_wireValid = i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_valid_out;

    // SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50(STALLENABLE,863)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_V0 = SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_backStall = i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_wireValid = SR_SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_V;

    // SE_out_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50(STALLENABLE,864)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_wireValid = i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_out_valid_out;

    // i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50(BLACKBOX,120)@110
    // in in_stall_in@20000000
    // out out_data_out@111
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    // out out_stall_out@20000000
    // out out_valid_out@111
    bicg_i_llvm_fpga_push_i32_tmp_q_071_push14_0 thei_llvm_fpga_push_i32_tmp_q_071_push14_bicg50 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_D0),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_feedback_stall_out_14),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_V0),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_out_feedback_valid_out_14),
        .out_stall_out(i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48(BLACKBOX,103)@104
    // in in_stall_in@20000000
    // out out_data_out@105
    // out out_feedback_stall_out_14@20000000
    // out out_stall_out@20000000
    // out out_valid_out@105
    bicg_i_llvm_fpga_pop_i32_tmp_q_071_pop14_0 thei_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48 (
        .in_data_in(SR_SE_out_coalesced_delay_1_fifo_D6),
        .in_dir(SR_SE_out_coalesced_delay_1_fifo_D3),
        .in_feedback_in_14(i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_backStall),
        .in_valid_in(SE_out_coalesced_delay_1_fifo_V2),
        .out_data_out(i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_feedback_stall_out_14),
        .out_stall_out(i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,1063)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_coalesced_delay_1_fifo_fromReg0 <= '0;
            SE_out_coalesced_delay_1_fifo_fromReg1 <= '0;
            SE_out_coalesced_delay_1_fifo_fromReg2 <= '0;
            SE_out_coalesced_delay_1_fifo_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_coalesced_delay_1_fifo_fromReg0 <= SE_out_coalesced_delay_1_fifo_toReg0;
            // Successor 1
            SE_out_coalesced_delay_1_fifo_fromReg1 <= SE_out_coalesced_delay_1_fifo_toReg1;
            // Successor 2
            SE_out_coalesced_delay_1_fifo_fromReg2 <= SE_out_coalesced_delay_1_fifo_toReg2;
            // Successor 3
            SE_out_coalesced_delay_1_fifo_fromReg3 <= SE_out_coalesced_delay_1_fifo_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_coalesced_delay_1_fifo_consumed0 = (~ (i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_stall_out) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg0;
    assign SE_out_coalesced_delay_1_fifo_consumed1 = (~ (i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_stall_out) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg1;
    assign SE_out_coalesced_delay_1_fifo_consumed2 = (~ (i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_stall_out) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg2;
    assign SE_out_coalesced_delay_1_fifo_consumed3 = (~ (i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_stall_out) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg3;
    // Consuming
    assign SE_out_coalesced_delay_1_fifo_StallValid = SE_out_coalesced_delay_1_fifo_backStall & SE_out_coalesced_delay_1_fifo_wireValid;
    assign SE_out_coalesced_delay_1_fifo_toReg0 = SE_out_coalesced_delay_1_fifo_StallValid & SE_out_coalesced_delay_1_fifo_consumed0;
    assign SE_out_coalesced_delay_1_fifo_toReg1 = SE_out_coalesced_delay_1_fifo_StallValid & SE_out_coalesced_delay_1_fifo_consumed1;
    assign SE_out_coalesced_delay_1_fifo_toReg2 = SE_out_coalesced_delay_1_fifo_StallValid & SE_out_coalesced_delay_1_fifo_consumed2;
    assign SE_out_coalesced_delay_1_fifo_toReg3 = SE_out_coalesced_delay_1_fifo_StallValid & SE_out_coalesced_delay_1_fifo_consumed3;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_or0 = SE_out_coalesced_delay_1_fifo_consumed0;
    assign SE_out_coalesced_delay_1_fifo_or1 = SE_out_coalesced_delay_1_fifo_consumed1 & SE_out_coalesced_delay_1_fifo_or0;
    assign SE_out_coalesced_delay_1_fifo_or2 = SE_out_coalesced_delay_1_fifo_consumed2 & SE_out_coalesced_delay_1_fifo_or1;
    assign SE_out_coalesced_delay_1_fifo_wireStall = ~ (SE_out_coalesced_delay_1_fifo_consumed3 & SE_out_coalesced_delay_1_fifo_or2);
    assign SE_out_coalesced_delay_1_fifo_backStall = SE_out_coalesced_delay_1_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid & ~ (SE_out_coalesced_delay_1_fifo_fromReg0);
    assign SE_out_coalesced_delay_1_fifo_V1 = SE_out_coalesced_delay_1_fifo_wireValid & ~ (SE_out_coalesced_delay_1_fifo_fromReg1);
    assign SE_out_coalesced_delay_1_fifo_V2 = SE_out_coalesced_delay_1_fifo_wireValid & ~ (SE_out_coalesced_delay_1_fifo_fromReg2);
    assign SE_out_coalesced_delay_1_fifo_V3 = SE_out_coalesced_delay_1_fifo_wireValid & ~ (SE_out_coalesced_delay_1_fifo_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_wireValid = SR_SE_out_coalesced_delay_1_fifo_V;

    // SE_out_i_llvm_fpga_push_i1_notcmp2035_push25_bicg69(STALLENABLE,852)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notcmp2035_push25_bicg69_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notcmp2035_push25_bicg69_wireValid = i_llvm_fpga_push_i1_notcmp2035_push25_bicg69_out_valid_out;

    // i_llvm_fpga_push_i1_notcmp2035_push25_bicg69(BLACKBOX,114)@110
    // in in_stall_in@20000000
    // out out_data_out@111
    // out out_feedback_out_25@20000000
    // out out_feedback_valid_out_25@20000000
    // out out_stall_out@20000000
    // out out_valid_out@111
    bicg_i_llvm_fpga_push_i1_notcmp2035_push25_0 thei_llvm_fpga_push_i1_notcmp2035_push25_bicg69 (
        .in_data_in(redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_q),
        .in_feedback_stall_in_25(i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_feedback_stall_out_25),
        .in_keep_going(redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notcmp2035_push25_bicg69_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notcmp2035_push25_bicg69_V0),
        .out_data_out(),
        .out_feedback_out_25(i_llvm_fpga_push_i1_notcmp2035_push25_bicg69_out_feedback_out_25),
        .out_feedback_valid_out_25(i_llvm_fpga_push_i1_notcmp2035_push25_bicg69_out_feedback_valid_out_25),
        .out_stall_out(i_llvm_fpga_push_i1_notcmp2035_push25_bicg69_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notcmp2035_push25_bicg69_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68(BLACKBOX,98)@104
    // in in_stall_in@20000000
    // out out_data_out@105
    // out out_feedback_stall_out_25@20000000
    // out out_stall_out@20000000
    // out out_valid_out@105
    bicg_i_llvm_fpga_pop_i1_notcmp2035_pop25_0 thei_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68 (
        .in_data_in(SR_SE_out_coalesced_delay_1_fifo_D5),
        .in_dir(SR_SE_out_coalesced_delay_1_fifo_D2),
        .in_feedback_in_25(i_llvm_fpga_push_i1_notcmp2035_push25_bicg69_out_feedback_out_25),
        .in_feedback_valid_in_25(i_llvm_fpga_push_i1_notcmp2035_push25_bicg69_out_feedback_valid_out_25),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_backStall),
        .in_valid_in(SE_out_coalesced_delay_1_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_feedback_stall_out_25),
        .out_stall_out(i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68(STALLENABLE,820)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_consumed1 = (~ (SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_0_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_StallValid = SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_backStall & SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_toReg0 = SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_toReg1 = SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_or0 = SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_consumed1 & SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_or0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_backStall = SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_V0 = SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_V1 = SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_wireValid = i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_valid_out;

    // bubble_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_1_reg(STALLFIFO,1309)
    assign bubble_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_V0;
    assign bubble_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(7),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_1_reg(STALLFIFO,1311)
    assign bubble_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_V0;
    assign bubble_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(7),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_1_reg(STALLFIFO,1312)
    assign bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_V0;
    assign bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(42),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_reg(STALLFIFO,1313)
    assign bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_reg_valid_in = SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_V0;
    assign bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(7),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1(STALLENABLE,1184)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_V0 = SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_and0 = bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_and1 = bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_and2 = bubble_out_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_and3 = bubble_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_and2;
    assign SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_and4 = bubble_out_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_and3;
    assign SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_and5 = bubble_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_and4;
    assign SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_and6 = bubble_out_i_llvm_fpga_pipeline_keep_going_bicg4_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_and5;
    assign SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_and7 = redist43_i_llvm_fpga_mem_memdep_bicg39_out_o_writeack_38_fifo_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_and6;
    assign SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_and8 = redist20_i_masked_bicg63_q_41_fifo_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_and7;
    assign SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_and9 = bubble_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_and8;
    assign SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_wireValid = SE_coalesced_delay_3_0_V0 & SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_and9;

    // bubble_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_1_reg(STALLFIFO,1308)
    assign bubble_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_V0;
    assign bubble_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(7),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66(BLACKBOX,92)@104
    // in in_stall_in@20000000
    // out out_data_out@105
    // out out_feedback_stall_out_24@20000000
    // out out_stall_out@20000000
    // out out_valid_out@105
    bicg_i_llvm_fpga_pop_i1_exitcond1434_pop24_0 thei_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66 (
        .in_data_in(SR_SE_out_coalesced_delay_1_fifo_D0),
        .in_dir(SR_SE_out_coalesced_delay_1_fifo_D1),
        .in_feedback_in_24(i_llvm_fpga_push_i1_exitcond1434_push24_bicg67_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_i1_exitcond1434_push24_bicg67_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_backStall),
        .in_valid_in(SE_out_coalesced_delay_1_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_feedback_stall_out_24),
        .out_stall_out(i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66(STALLENABLE,808)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_wireValid) | SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_consumed1 = (~ (SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_0_backStall) & SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_wireValid) | SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_StallValid = SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_backStall & SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_toReg0 = SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_StallValid & SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_toReg1 = SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_StallValid & SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_or0 = SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_consumed1 & SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_or0);
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_backStall = SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_V0 = SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_V1 = SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_wireValid = i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_valid_out;

    // SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_0(STALLENABLE,1015)
    // Valid signal propagation
    assign SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_0_V0 = SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_0_R_v_0;
    // Stall signal propagation
    assign SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_0_s_tv_0 = SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_1_backStall & SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_0_R_v_0;
    // Backward Enable generation
    assign SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_0_backEN = ~ (SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_0_v_s_0 = SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_0_backEN & SE_out_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_V1;
    // Backward Stall generation
    assign SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_0_backStall = ~ (SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_0_backEN == 1'b0)
            begin
                SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_0_R_v_0 <= SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_0_R_v_0 & SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_0_s_tv_0;
            end
            else
            begin
                SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_0_R_v_0 <= SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_0_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66(BITJOIN,632)
    assign bubble_join_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_q = i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66(BITSELECT,633)
    assign bubble_select_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_q[0:0]);

    // redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_0(REG,555)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_0_backEN == 1'b1)
        begin
            redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_0_q <= $unsigned(bubble_select_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_b);
        end
    end

    // redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_1(REG,556)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_1_backEN == 1'b1)
        begin
            redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_1_q <= $unsigned(redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_0_q);
        end
    end

    // SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_1(STALLENABLE,1016)
    // Valid signal propagation
    assign SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_1_V0 = SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_1_R_v_0;
    // Stall signal propagation
    assign SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_1_s_tv_0 = SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_backStall & SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_1_R_v_0;
    // Backward Enable generation
    assign SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_1_backEN = ~ (SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_1_v_s_0 = SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_1_backEN & SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_0_V0;
    // Backward Stall generation
    assign SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_1_backStall = ~ (SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_1_backEN == 1'b0)
            begin
                SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_1_R_v_0 <= SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_1_R_v_0 & SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_1_s_tv_0;
            end
            else
            begin
                SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_1_R_v_0 <= SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_1_v_s_0;
            end

        end
    end

    // SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2(STALLREG,1359)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_r_valid <= 1'b0;
            SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_r_valid <= SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_backStall & (SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_r_valid | SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_i_valid);

            if (SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_r_data0 <= $unsigned(redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_i_valid = SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_1_V0;
    // Stall signal propagation
    assign SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_backStall = SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_r_valid | ~ (SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_i_valid);

    // Valid
    assign SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_V = SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_r_valid == 1'b1 ? SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_r_valid : SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_i_valid;

    assign SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_D0 = SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_r_valid == 1'b1 ? SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_r_data0 : redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_1_q;

    // redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2(REG,557)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_backEN == 1'b1)
        begin
            redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_q <= $unsigned(SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_D0);
        end
    end

    // redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_3(REG,558)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_3_backEN == 1'b1)
        begin
            redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_3_q <= $unsigned(redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_q);
        end
    end

    // SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_3(STALLENABLE,1018)
    // Valid signal propagation
    assign SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_3_V0 = SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_3_R_v_0;
    // Stall signal propagation
    assign SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_3_s_tv_0 = SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_backStall & SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_3_R_v_0;
    // Backward Enable generation
    assign SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_3_backEN = ~ (SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_3_v_s_0 = SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_3_backEN & SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_2_V0;
    // Backward Stall generation
    assign SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_3_backStall = ~ (SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_3_backEN == 1'b0)
            begin
                SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_3_R_v_0 <= SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_3_R_v_0 & SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_3_s_tv_0;
            end
            else
            begin
                SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_3_R_v_0 <= SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_3_v_s_0;
            end

        end
    end

    // SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4(STALLREG,1360)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_r_valid <= 1'b0;
            SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_r_valid <= SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_backStall & (SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_r_valid | SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_i_valid);

            if (SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_r_data0 <= $unsigned(redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_i_valid = SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_3_V0;
    // Stall signal propagation
    assign SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_backStall = SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_r_valid | ~ (SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_i_valid);

    // Valid
    assign SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_V = SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_r_valid == 1'b1 ? SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_r_valid : SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_i_valid;

    assign SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_D0 = SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_r_valid == 1'b1 ? SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_r_data0 : redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_3_q;

    // redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4(REG,559)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_q <= $unsigned(1'b0);
        end
        else if (SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_backEN == 1'b1)
        begin
            redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_q <= $unsigned(SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_D0);
        end
    end

    // redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4(REG,546)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_q <= $unsigned(1'b0);
        end
        else if (SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_backEN == 1'b1)
        begin
            redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_q <= $unsigned(SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_D0);
        end
    end

    // redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4(REG,531)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_backEN == 1'b1)
        begin
            redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_q <= $unsigned(SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_D0);
        end
    end

    // i_mul11_bicg47_sums_result_add_0_0_p2_of_2(ADD,345)@109 + 1
    assign i_mul11_bicg47_sums_result_add_0_0_p2_of_2_cin = SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_D2;
    assign i_mul11_bicg47_sums_result_add_0_0_p2_of_2_a = { {1'b0, SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_D0}, 1'b1 };
    assign i_mul11_bicg47_sums_result_add_0_0_p2_of_2_b = { {1'b0, SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_D1}, i_mul11_bicg47_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul11_bicg47_sums_result_add_0_0_p2_of_2_o <= 7'b0;
        end
        else if (SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            i_mul11_bicg47_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_mul11_bicg47_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_mul11_bicg47_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_mul11_bicg47_sums_result_add_0_0_p2_of_2_q = i_mul11_bicg47_sums_result_add_0_0_p2_of_2_o[5:1];

    // redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0(REG,505)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_q <= $unsigned(60'b000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_D0);
        end
    end

    // i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q(BITJOIN,346)@110
    assign i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_q = {i_mul11_bicg47_sums_result_add_0_0_p2_of_2_q, redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_q};

    // bgTrunc_i_mul11_bicg47_sel_x(BITSELECT,7)@110
    assign bgTrunc_i_mul11_bicg47_sel_x_in = i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_q[63:0];
    assign bgTrunc_i_mul11_bicg47_sel_x_b = bgTrunc_i_mul11_bicg47_sel_x_in[31:0];

    // i_add12_bicg49(ADD,71)@110
    assign i_add12_bicg49_a = {1'b0, bgTrunc_i_mul11_bicg47_sel_x_b};
    assign i_add12_bicg49_b = {1'b0, redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_q};
    assign i_add12_bicg49_o = $unsigned(i_add12_bicg49_a) + $unsigned(i_add12_bicg49_b);
    assign i_add12_bicg49_q = i_add12_bicg49_o[32:0];

    // bgTrunc_i_add12_bicg49_sel_x(BITSELECT,2)@110
    assign bgTrunc_i_add12_bicg49_sel_x_b = i_add12_bicg49_q[31:0];

    // redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4(REG,526)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_backEN == 1'b1)
        begin
            redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_q <= $unsigned(SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_D0);
        end
    end

    // join_for_coalesced_delay_3(BITJOIN,496)
    assign join_for_coalesced_delay_3_q = {redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_q, redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_q, redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_q, bgTrunc_i_add12_bicg49_sel_x_b, redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_q};

    // SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4(STALLENABLE,1048)
    // Valid signal propagation
    assign SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_V0 = SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_R_v_0;
    assign SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_V1 = SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_R_v_1;
    // Stall signal propagation
    assign SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_s_tv_0 = SE_in_i_llvm_fpga_push_i1_memdep_phi3_push17_bicg46_backStall & SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_R_v_0;
    assign SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_s_tv_1 = SR_SE_join_for_coalesced_delay_3_backStall & SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_R_v_1;
    // Backward Enable generation
    assign SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_or0 = SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_s_tv_0;
    assign SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_backEN = ~ (SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_s_tv_1 | SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_v_s_0 = SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_backEN & SR_SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_V;
    // Backward Stall generation
    assign SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_backStall = ~ (SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_R_v_0 <= 1'b0;
            SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_backEN == 1'b0)
            begin
                SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_R_v_0 <= SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_R_v_0 & SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_s_tv_0;
            end
            else
            begin
                SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_R_v_0 <= SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_v_s_0;
            end

            if (SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_backEN == 1'b0)
            begin
                SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_R_v_1 <= SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_R_v_1 & SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_s_tv_1;
            end
            else
            begin
                SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_R_v_1 <= SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_v_s_0;
            end

        end
    end

    // SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4(STALLENABLE,1019)
    // Valid signal propagation
    assign SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_V0 = SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_R_v_0;
    assign SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_V1 = SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_R_v_1;
    // Stall signal propagation
    assign SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_s_tv_0 = SE_in_i_llvm_fpga_push_i1_exitcond1434_push24_bicg67_backStall & SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_R_v_0;
    assign SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_s_tv_1 = SR_SE_join_for_coalesced_delay_3_backStall & SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_R_v_1;
    // Backward Enable generation
    assign SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_or0 = SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_s_tv_0;
    assign SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_backEN = ~ (SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_s_tv_1 | SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_v_s_0 = SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_backEN & SR_SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_V;
    // Backward Stall generation
    assign SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_backStall = ~ (SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_R_v_0 <= 1'b0;
            SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_backEN == 1'b0)
            begin
                SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_R_v_0 <= SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_R_v_0 & SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_s_tv_0;
            end
            else
            begin
                SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_R_v_0 <= SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_v_s_0;
            end

            if (SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_backEN == 1'b0)
            begin
                SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_R_v_1 <= SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_R_v_1 & SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_s_tv_1;
            end
            else
            begin
                SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_R_v_1 <= SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_v_s_0;
            end

        end
    end

    // SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4(STALLENABLE,1001)
    // Valid signal propagation
    assign SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_V0 = SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_R_v_0;
    assign SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_V1 = SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_R_v_1;
    // Stall signal propagation
    assign SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_s_tv_0 = SE_in_i_llvm_fpga_push_i1_notcmp2035_push25_bicg69_backStall & SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_R_v_0;
    assign SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_s_tv_1 = SR_SE_join_for_coalesced_delay_3_backStall & SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_R_v_1;
    // Backward Enable generation
    assign SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_or0 = SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_s_tv_0;
    assign SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_backEN = ~ (SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_s_tv_1 | SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_v_s_0 = SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_backEN & SR_SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_V;
    // Backward Stall generation
    assign SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_backStall = ~ (SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_R_v_0 <= 1'b0;
            SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_backEN == 1'b0)
            begin
                SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_R_v_0 <= SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_R_v_0 & SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_s_tv_0;
            end
            else
            begin
                SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_R_v_0 <= SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_v_s_0;
            end

            if (SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_backEN == 1'b0)
            begin
                SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_R_v_1 <= SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_R_v_1 & SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_s_tv_1;
            end
            else
            begin
                SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_R_v_1 <= SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_v_s_0;
            end

        end
    end

    // SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4(STALLENABLE,978)
    // Valid signal propagation
    assign SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_V0 = SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_R_v_0;
    assign SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_V1 = SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_R_v_1;
    // Stall signal propagation
    assign SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_s_tv_0 = SE_in_i_llvm_fpga_push_p1025i32_mptr_bitcast_index8030_push20_bicg65_backStall & SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_R_v_0;
    assign SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_s_tv_1 = SR_SE_join_for_coalesced_delay_3_backStall & SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_R_v_1;
    // Backward Enable generation
    assign SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_or0 = SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_s_tv_0;
    assign SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_backEN = ~ (SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_s_tv_1 | SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_v_s_0 = SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_backEN & SR_SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_V;
    // Backward Stall generation
    assign SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_backStall = ~ (SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_R_v_0 <= 1'b0;
            SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_backEN == 1'b0)
            begin
                SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_R_v_0 <= SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_R_v_0 & SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_s_tv_0;
            end
            else
            begin
                SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_R_v_0 <= SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_v_s_0;
            end

            if (SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_backEN == 1'b0)
            begin
                SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_R_v_1 <= SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_R_v_1 & SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_s_tv_1;
            end
            else
            begin
                SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_R_v_1 <= SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_v_s_0;
            end

        end
    end

    // SE_join_for_coalesced_delay_3(STALLENABLE,946)
    // Valid signal propagation
    assign SE_join_for_coalesced_delay_3_V0 = SE_join_for_coalesced_delay_3_wireValid;
    // Backward Stall generation
    assign SE_join_for_coalesced_delay_3_backStall = SE_coalesced_delay_3_0_backStall | ~ (SE_join_for_coalesced_delay_3_wireValid);
    // Computing multiple Valid(s)
    assign SE_join_for_coalesced_delay_3_wireValid = SR_SE_join_for_coalesced_delay_3_V;

    // SR_SE_join_for_coalesced_delay_3(STALLREG,1363)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_join_for_coalesced_delay_3_r_valid <= 1'b0;
            SR_SE_join_for_coalesced_delay_3_r_data0 <= 99'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_join_for_coalesced_delay_3_r_valid <= SE_join_for_coalesced_delay_3_backStall & (SR_SE_join_for_coalesced_delay_3_r_valid | SR_SE_join_for_coalesced_delay_3_i_valid);

            if (SR_SE_join_for_coalesced_delay_3_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_join_for_coalesced_delay_3_r_data0 <= $unsigned(join_for_coalesced_delay_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_join_for_coalesced_delay_3_and0 = SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_V1;
    assign SR_SE_join_for_coalesced_delay_3_and1 = SE_redist22_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_out_data_out_5_4_V1 & SR_SE_join_for_coalesced_delay_3_and0;
    assign SR_SE_join_for_coalesced_delay_3_and2 = SE_redist30_i_llvm_fpga_pop_i1_notcmp2035_pop25_bicg68_out_data_out_5_4_V1 & SR_SE_join_for_coalesced_delay_3_and1;
    assign SR_SE_join_for_coalesced_delay_3_and3 = SE_redist38_i_llvm_fpga_pop_i1_exitcond1434_pop24_bicg66_out_data_out_5_4_V1 & SR_SE_join_for_coalesced_delay_3_and2;
    assign SR_SE_join_for_coalesced_delay_3_i_valid = SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_4_V1 & SR_SE_join_for_coalesced_delay_3_and3;
    // Stall signal propagation
    assign SR_SE_join_for_coalesced_delay_3_backStall = SR_SE_join_for_coalesced_delay_3_r_valid | ~ (SR_SE_join_for_coalesced_delay_3_i_valid);

    // Valid
    assign SR_SE_join_for_coalesced_delay_3_V = SR_SE_join_for_coalesced_delay_3_r_valid == 1'b1 ? SR_SE_join_for_coalesced_delay_3_r_valid : SR_SE_join_for_coalesced_delay_3_i_valid;

    assign SR_SE_join_for_coalesced_delay_3_D0 = SR_SE_join_for_coalesced_delay_3_r_valid == 1'b1 ? SR_SE_join_for_coalesced_delay_3_r_data0 : join_for_coalesced_delay_3_q;

    // SR_SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50(STALLREG,1371)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_r_valid <= SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_backStall & (SR_SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_r_valid | SR_SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_r_data0 <= bgTrunc_i_add12_bicg49_sel_x_b;
                SR_SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_r_data1 <= $unsigned(redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_and0 = SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_V0;
    assign SR_SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_i_valid = SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_V3 & SR_SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_backStall = SR_SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_V = SR_SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_r_valid : SR_SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_D0 = SR_SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_r_data0 : bgTrunc_i_add12_bicg49_sel_x_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_D1 = SR_SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_r_data1 : redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_4_q;

    // SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4(STALLENABLE,983)
    // Valid signal propagation
    assign SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_V0 = SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_R_v_0;
    // Stall signal propagation
    assign SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_s_tv_0 = SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_backStall & SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_R_v_0;
    // Backward Enable generation
    assign SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_backEN = ~ (SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_v_s_0 = SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_backEN & SR_SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_V;
    // Backward Stall generation
    assign SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_backStall = ~ (SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_backEN == 1'b0)
            begin
                SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_R_v_0 <= SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_R_v_0 & SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_s_tv_0;
            end
            else
            begin
                SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_R_v_0 <= SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_v_s_0;
            end

        end
    end

    // SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2(STALLENABLE,911)
    // Valid signal propagation
    assign SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_V0 = SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_s_tv_0 = SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_backStall & SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_backEN = ~ (SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_v_s_0 = SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_backEN & SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_backStall = ~ (SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_backEN == 1'b0)
            begin
                SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_R_v_0 <= SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_R_v_0 & SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_R_v_0 <= SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_v_s_0;
            end

        end
    end

    // SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q(STALLENABLE,912)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_fromReg0 <= '0;
            SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_fromReg0 <= SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_toReg0;
            // Successor 1
            SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_fromReg1 <= SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_consumed0 = (~ (SR_SE_in_i_llvm_fpga_push_i32_tmp_q_071_push14_bicg50_backStall) & SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_wireValid) | SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_fromReg0;
    assign SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_consumed1 = (~ (SR_SE_join_for_coalesced_delay_3_backStall) & SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_wireValid) | SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_fromReg1;
    // Consuming
    assign SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_StallValid = SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_backStall & SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_wireValid;
    assign SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_toReg0 = SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_StallValid & SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_consumed0;
    assign SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_toReg1 = SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_StallValid & SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_consumed1;
    // Backward Stall generation
    assign SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_or0 = SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_consumed0;
    assign SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_wireStall = ~ (SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_consumed1 & SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_or0);
    assign SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_backStall = SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_wireStall;
    // Valid signal propagation
    assign SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_V0 = SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_wireValid & ~ (SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_fromReg0);
    assign SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_V1 = SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_wireValid & ~ (SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_and0 = SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_V0;
    assign SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_and1 = SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_V0 & SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_and0;
    assign SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_wireValid = SE_redist24_i_llvm_fpga_pop_i32_tmp_q_071_pop14_bicg48_out_data_out_5_4_V0 & SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_and1;

    // SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0(STALLENABLE,955)
    // Valid signal propagation
    assign SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_V0 = SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_s_tv_0 = SE_i_mul11_bicg47_sums_result_add_0_0_BitJoin_for_q_backStall & SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_backEN = ~ (SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_v_s_0 = SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_backEN & SR_SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_V;
    // Backward Stall generation
    assign SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_backStall = ~ (SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0 <= SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0 & SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0 <= SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0(STALLREG,1352)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_r_valid <= 1'b0;
            SR_SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_r_data0 <= 60'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_r_valid <= SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_backStall & (SR_SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_r_valid | SR_SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_i_valid);

            if (SR_SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_r_data0 <= $unsigned(i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_i_valid = SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_backStall = SR_SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_r_valid | ~ (SR_SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_V = SR_SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_r_valid : SR_SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_i_valid;

    assign SR_SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_D0 = SR_SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_r_data0 : i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q;

    // SE_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b(STALLENABLE,926)
    // Valid signal propagation
    assign SE_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_V0 = SE_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_wireValid;
    // Backward Stall generation
    assign SE_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_backStall = SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_backStall | ~ (SE_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_and0 = SE_redist17_i_mul11_bicg47_im8_cma_q_1_0_V0;
    assign SE_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_wireValid = SE_redist18_i_mul11_bicg47_im0_cma_q_1_0_V0 & SE_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_and0;

    // SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2(STALLENABLE,910)
    // Valid signal propagation
    assign SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_V0 = SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_R_v_0;
    assign SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_V1 = SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_s_tv_0 = SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_backStall & SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_R_v_0;
    assign SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_s_tv_1 = SR_SE_redist9_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_q_1_0_backStall & SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_or0 = SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_s_tv_0;
    assign SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_backEN = ~ (SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_s_tv_1 | SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_and0 = SE_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_V0 & SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_backEN;
    assign SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_v_s_0 = SE_i_mul11_bicg47_sums_align_1_V0 & SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_and0;
    // Backward Stall generation
    assign SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_backStall = ~ (SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_R_v_0 <= 1'b0;
            SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_R_v_0 <= SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_R_v_0 & SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_R_v_0 <= SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_v_s_0;
            end

            if (SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_R_v_1 <= SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_R_v_1 & SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_R_v_1 <= SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_v_s_0;
            end

        end
    end

    // SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0(STALLENABLE,960)
    // Valid signal propagation
    assign SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_V0 = SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_s_tv_0 = SE_i_mul11_bicg47_sums_align_1_backStall & SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_backEN = ~ (SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_v_s_0 = SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_backEN & SR_SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_V;
    // Backward Stall generation
    assign SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_backStall = ~ (SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_backEN == 1'b0)
            begin
                SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_R_v_0 <= SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_R_v_0 & SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_R_v_0 <= SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_v_s_0;
            end

        end
    end

    // SE_i_mul11_bicg47_sums_align_1(STALLENABLE,893)
    // Valid signal propagation
    assign SE_i_mul11_bicg47_sums_align_1_V0 = SE_i_mul11_bicg47_sums_align_1_wireValid;
    // Backward Stall generation
    assign SE_i_mul11_bicg47_sums_align_1_backStall = SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_backStall | ~ (SE_i_mul11_bicg47_sums_align_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mul11_bicg47_sums_align_1_and0 = SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_V0;
    assign SE_i_mul11_bicg47_sums_align_1_wireValid = SE_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V2 & SE_i_mul11_bicg47_sums_align_1_and0;

    // redist1_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0(REG,499)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_q <= $unsigned(4'b0000);
        end
        else if (SE_redist1_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backEN == 1'b1)
        begin
            redist1_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_q <= $unsigned(i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c);
        end
    end

    // i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c(BITJOIN,397)@109
    assign i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist1_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_q};

    // SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2(STALLREG,1351)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_r_data0 <= 5'bxxxxx;
            SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_r_data1 <= 5'bxxxxx;
            SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_r_valid <= SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_backStall & (SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_r_valid | SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_i_valid);

            if (SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_r_data0 <= $unsigned(i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_r_data1 <= $unsigned(i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c);
                SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_r_data2 <= $unsigned(i_mul11_bicg47_sums_result_add_0_0_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_and0 = SE_i_mul11_bicg47_sums_result_add_0_0_p1_of_2_V0;
    assign SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_and1 = SE_redist1_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_V0 & SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_and0;
    assign SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_i_valid = SE_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V0 & SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_backStall = SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_r_valid | ~ (SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_V = SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_r_valid : SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_D0 = SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_r_data0 : i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_D1 = SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_r_data1 : i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    // Data2
    assign SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_D2 = SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mul11_bicg47_sums_result_add_0_0_p2_of_2_r_data2 : i_mul11_bicg47_sums_result_add_0_0_p1_of_2_c;

    // SE_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select(STALLENABLE,939)
    // Valid signal propagation
    assign SE_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V0 = 1'b1;
    assign SE_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V1 = 1'b1;
    assign SE_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V2 = 1'b1;
    assign SE_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V3 = 1'b1;

    // SE_redist0_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0(STALLENABLE,948)
    // Valid signal propagation
    assign SE_redist0_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_V0 = SE_redist0_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_s_tv_0 = SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_backStall & SE_redist0_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backEN = ~ (SE_redist0_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_v_s_0 = SE_redist0_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backEN & SE_redist15_i_mul7_bicg32_im8_cma_q_1_0_V1;
    // Backward Stall generation
    assign SE_redist0_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backStall = ~ (SE_redist0_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0 <= SE_redist0_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0 & SE_redist0_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0 <= SE_redist0_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0(STALLREG,1335)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_r_valid <= 1'b0;
            SR_SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_r_data0 <= 60'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_r_valid <= SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_backStall & (SR_SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_r_valid | SR_SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_i_valid);

            if (SR_SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_r_data0 <= $unsigned(i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_i_valid = SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_backStall = SR_SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_r_valid | ~ (SR_SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_V = SR_SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_r_valid : SR_SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_i_valid;

    assign SR_SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_D0 = SR_SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_r_data0 : i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q;

    // SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2(STALLENABLE,913)
    // Valid signal propagation
    assign SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_V0 = SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_R_v_0;
    assign SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_V1 = SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_s_tv_0 = SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_backStall & SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_R_v_0;
    assign SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_s_tv_1 = SR_SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_backStall & SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_or0 = SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_s_tv_0;
    assign SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_backEN = ~ (SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_s_tv_1 | SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_and0 = SE_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_V0 & SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_backEN;
    assign SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_v_s_0 = SE_i_mul7_bicg32_sums_align_1_V0 & SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_and0;
    // Backward Stall generation
    assign SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_backStall = ~ (SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_R_v_0 <= 1'b0;
            SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_R_v_0 <= SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_R_v_0 & SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_R_v_0 <= SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_v_s_0;
            end

            if (SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_R_v_1 <= SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_R_v_1 & SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_R_v_1 <= SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2(STALLREG,1334)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_r_data0 <= 5'bxxxxx;
            SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_r_data1 <= 5'bxxxxx;
            SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_r_valid <= SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_backStall & (SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_r_valid | SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_i_valid);

            if (SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_r_data0 <= $unsigned(i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_r_data1 <= $unsigned(i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c);
                SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_r_data2 <= $unsigned(i_mul7_bicg32_sums_result_add_0_0_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_and0 = SE_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_V0;
    assign SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_and1 = SE_redist0_i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_V0 & SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_and0;
    assign SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_i_valid = SE_i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V1 & SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_backStall = SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_r_valid | ~ (SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_V = SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_r_valid : SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_D0 = SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_r_data0 : i_mul7_bicg32_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_D1 = SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_r_data1 : i_mul11_bicg47_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    // Data2
    assign SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_D2 = SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_r_data2 : i_mul7_bicg32_sums_result_add_0_0_p1_of_2_c;

    // i_mul7_bicg32_sums_result_add_0_0_p2_of_2(ADD,354)@41 + 1
    assign i_mul7_bicg32_sums_result_add_0_0_p2_of_2_cin = SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_D2;
    assign i_mul7_bicg32_sums_result_add_0_0_p2_of_2_a = { {1'b0, SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_D0}, 1'b1 };
    assign i_mul7_bicg32_sums_result_add_0_0_p2_of_2_b = { {1'b0, SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_D1}, i_mul7_bicg32_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul7_bicg32_sums_result_add_0_0_p2_of_2_o <= 7'b0;
        end
        else if (SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            i_mul7_bicg32_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_mul7_bicg32_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_mul7_bicg32_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_mul7_bicg32_sums_result_add_0_0_p2_of_2_q = i_mul7_bicg32_sums_result_add_0_0_p2_of_2_o[5:1];

    // redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0(REG,504)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_q <= $unsigned(60'b000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_D0);
        end
    end

    // i_mul7_bicg32_sums_result_add_0_0_BitJoin_for_q(BITJOIN,355)@42
    assign i_mul7_bicg32_sums_result_add_0_0_BitJoin_for_q_q = {i_mul7_bicg32_sums_result_add_0_0_p2_of_2_q, redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_q};

    // bgTrunc_i_mul7_bicg32_sel_x(BITSELECT,8)@42
    assign bgTrunc_i_mul7_bicg32_sel_x_in = i_mul7_bicg32_sums_result_add_0_0_BitJoin_for_q_q[63:0];
    assign bgTrunc_i_mul7_bicg32_sel_x_b = bgTrunc_i_mul7_bicg32_sel_x_in[31:0];

    // i_add8_bicg33(ADD,72)@42
    assign i_add8_bicg33_a = {1'b0, bgTrunc_i_mul7_bicg32_sel_x_b};
    assign i_add8_bicg33_b = {1'b0, bubble_select_i_llvm_fpga_mem_unnamed_bicg14_bicg28_b};
    assign i_add8_bicg33_o = $unsigned(i_add8_bicg33_a) + $unsigned(i_add8_bicg33_b);
    assign i_add8_bicg33_q = i_add8_bicg33_o[32:0];

    // bgTrunc_i_add8_bicg33_sel_x(BITSELECT,3)@42
    assign bgTrunc_i_add8_bicg33_sel_x_b = i_add8_bicg33_q[31:0];

    // redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo(STALLFIFO,551)
    assign redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_valid_in = SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_V1;
    assign redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_stall_in = SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_backStall;
    assign redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_data_in = bubble_select_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_b;
    assign redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_valid_in_bitsignaltemp = redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_valid_in[0];
    assign redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_stall_in_bitsignaltemp = redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_stall_in[0];
    assign redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_valid_out[0] = redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_valid_out_bitsignaltemp;
    assign redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_stall_out[0] = redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(38),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo (
        .valid_in(redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_valid_in_bitsignaltemp),
        .stall_in(redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_b),
        .valid_out(redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_valid_out_bitsignaltemp),
        .stall_out(redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_stall_out_bitsignaltemp),
        .data_out(redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo(BITJOIN,723)
    assign bubble_join_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_q = redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_data_out;

    // bubble_select_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo(BITSELECT,724)
    assign bubble_select_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_b = $unsigned(bubble_join_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_q[0:0]);

    // i_reduction_bicg_4_bicg36(LOGICAL,136)@42
    assign i_reduction_bicg_4_bicg36_q = bubble_select_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_b | bubble_select_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_b;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi3_pop17_bicg37(BITJOIN,639)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi3_pop17_bicg37_q = i_llvm_fpga_pop_i1_memdep_phi3_pop17_bicg37_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi3_pop17_bicg37(BITSELECT,640)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi3_pop17_bicg37_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi3_pop17_bicg37_q[0:0]);

    // i_reduction_bicg_5_bicg38(LOGICAL,137)@42
    assign i_reduction_bicg_5_bicg38_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi3_pop17_bicg37_b | i_reduction_bicg_4_bicg36_q;

    // bubble_join_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo(BITJOIN,747)
    assign bubble_join_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_q = redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_data_out;

    // bubble_select_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo(BITSELECT,748)
    assign bubble_select_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_b = $unsigned(bubble_join_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_q[63:0]);

    // i_llvm_fpga_mem_unnamed_bicg14_bicg28(BLACKBOX,88)@10
    // in in_i_stall@20000000
    // out out_o_readdata@42
    // out out_o_stall@20000000
    // out out_o_valid@42
    // out out_unnamed_bicg14_bicg_avm_address@20000000
    // out out_unnamed_bicg14_bicg_avm_burstcount@20000000
    // out out_unnamed_bicg14_bicg_avm_byteenable@20000000
    // out out_unnamed_bicg14_bicg_avm_enable@20000000
    // out out_unnamed_bicg14_bicg_avm_read@20000000
    // out out_unnamed_bicg14_bicg_avm_write@20000000
    // out out_unnamed_bicg14_bicg_avm_writedata@20000000
    bicg_i_llvm_fpga_mem_unnamed_14_bicg0 thei_llvm_fpga_mem_unnamed_bicg14_bicg28 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_D0),
        .in_i_dependence(SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_D1),
        .in_i_predicate(SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_D2),
        .in_i_stall(SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_backStall),
        .in_i_valid(SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_V0),
        .in_unnamed_bicg14_bicg_avm_readdata(in_unnamed_bicg14_bicg_avm_readdata),
        .in_unnamed_bicg14_bicg_avm_readdatavalid(in_unnamed_bicg14_bicg_avm_readdatavalid),
        .in_unnamed_bicg14_bicg_avm_waitrequest(in_unnamed_bicg14_bicg_avm_waitrequest),
        .in_unnamed_bicg14_bicg_avm_writeack(in_unnamed_bicg14_bicg_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_bicg14_bicg28_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_bicg14_bicg28_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_bicg14_bicg28_out_o_valid),
        .out_unnamed_bicg14_bicg_avm_address(i_llvm_fpga_mem_unnamed_bicg14_bicg28_out_unnamed_bicg14_bicg_avm_address),
        .out_unnamed_bicg14_bicg_avm_burstcount(i_llvm_fpga_mem_unnamed_bicg14_bicg28_out_unnamed_bicg14_bicg_avm_burstcount),
        .out_unnamed_bicg14_bicg_avm_byteenable(i_llvm_fpga_mem_unnamed_bicg14_bicg28_out_unnamed_bicg14_bicg_avm_byteenable),
        .out_unnamed_bicg14_bicg_avm_enable(i_llvm_fpga_mem_unnamed_bicg14_bicg28_out_unnamed_bicg14_bicg_avm_enable),
        .out_unnamed_bicg14_bicg_avm_read(i_llvm_fpga_mem_unnamed_bicg14_bicg28_out_unnamed_bicg14_bicg_avm_read),
        .out_unnamed_bicg14_bicg_avm_write(i_llvm_fpga_mem_unnamed_bicg14_bicg28_out_unnamed_bicg14_bicg_avm_write),
        .out_unnamed_bicg14_bicg_avm_writedata(i_llvm_fpga_mem_unnamed_bicg14_bicg28_out_unnamed_bicg14_bicg_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo(STALLFIFO,552)
    assign redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_valid_in = SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_V1;
    assign redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_stall_in = SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_backStall;
    assign redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_data_in = bubble_select_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_b;
    assign redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_valid_in_bitsignaltemp = redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_valid_in[0];
    assign redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_stall_in_bitsignaltemp = redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_stall_in[0];
    assign redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_valid_out[0] = redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_valid_out_bitsignaltemp;
    assign redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_stall_out[0] = redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo (
        .valid_in(redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_valid_in_bitsignaltemp),
        .stall_in(redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_b),
        .valid_out(redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_valid_out_bitsignaltemp),
        .stall_out(redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_stall_out_bitsignaltemp),
        .data_out(redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo(STALLENABLE,1008)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_fromReg0 <= '0;
            SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_fromReg0 <= SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_toReg0;
            // Successor 1
            SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_fromReg1 <= SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_consumed0 = (~ (SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_backStall) & SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_wireValid) | SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_fromReg0;
    assign SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_consumed1 = (~ (redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_stall_out) & SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_wireValid) | SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_fromReg1;
    // Consuming
    assign SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_StallValid = SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_backStall & SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_wireValid;
    assign SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_toReg0 = SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_StallValid & SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_consumed0;
    assign SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_toReg1 = SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_StallValid & SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_or0 = SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_consumed0;
    assign SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_wireStall = ~ (SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_consumed1 & SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_or0);
    assign SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_backStall = SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_V0 = SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_wireValid & ~ (SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_fromReg0);
    assign SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_V1 = SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_wireValid & ~ (SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_wireValid = redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_valid_out;

    // SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0(STALLENABLE,954)
    // Valid signal propagation
    assign SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_V0 = SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_s_tv_0 = SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_backStall & SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_backEN = ~ (SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_v_s_0 = SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_backEN & SR_SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_V;
    // Backward Stall generation
    assign SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_backStall = ~ (SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0 <= SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0 & SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0 <= SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2(STALLENABLE,914)
    // Valid signal propagation
    assign SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_V0 = SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_s_tv_0 = SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_backStall & SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_backEN = ~ (SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_v_s_0 = SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_backEN & SR_SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_backStall = ~ (SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_backEN == 1'b0)
            begin
                SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_R_v_0 <= SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_R_v_0 & SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_R_v_0 <= SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_v_s_0;
            end

        end
    end

    // redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo(STALLFIFO,585)
    assign redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_valid_in = SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_V1;
    assign redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_stall_in = SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_backStall;
    assign redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_data_in = i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b;
    assign redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_valid_in_bitsignaltemp = redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_valid_in[0];
    assign redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_stall_in_bitsignaltemp = redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_stall_in[0];
    assign redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_valid_out[0] = redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_valid_out_bitsignaltemp;
    assign redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_stall_out[0] = redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(64),
        .IMPL("ram")
    ) theredist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo (
        .valid_in(redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_stall_in_bitsignaltemp),
        .data_in(i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b),
        .valid_out(redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo(STALLENABLE,1050)
    // Valid signal propagation
    assign SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_V0 = SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_backStall = i_llvm_fpga_mem_memdep_bicg39_out_o_stall | ~ (SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_wireValid = SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_V;

    // SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo(STALLREG,1342)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_r_valid <= 1'b0;
            SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_r_data1 <= 1'bx;
            SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_r_data2 <= 1'bx;
            SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_r_data3 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_r_valid <= SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_backStall & (SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_r_valid | SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_i_valid);

            if (SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_r_data0 <= $unsigned(bubble_select_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_b);
                SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_r_data1 <= i_reduction_bicg_5_bicg38_q;
                SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_r_data2 <= $unsigned(bubble_select_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_b);
                SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_r_data3 <= bgTrunc_i_add8_bicg33_sel_x_b;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_and0 = redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_valid_out;
    assign SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_and1 = SE_i_mul7_bicg32_sums_result_add_0_0_p2_of_2_V0 & SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_and0;
    assign SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_and2 = SE_redist8_i_mul7_bicg32_sums_result_add_0_0_p1_of_2_q_1_0_V0 & SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_and1;
    assign SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_and3 = i_llvm_fpga_pop_i1_memdep_phi3_pop17_bicg37_out_valid_out & SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_and2;
    assign SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_and4 = SE_out_redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_V0 & SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_and3;
    assign SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_and5 = SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_V0 & SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_and4;
    assign SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_and6 = i_llvm_fpga_mem_unnamed_bicg14_bicg28_out_o_valid & SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_and5;
    assign SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_i_valid = SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_V0 & SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_and6;
    // Stall signal propagation
    assign SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_backStall = SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_r_valid | ~ (SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_i_valid);

    // Valid
    assign SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_V = SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_r_valid == 1'b1 ? SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_r_valid : SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_i_valid;

    // Data0
    assign SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_D0 = SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_r_valid == 1'b1 ? SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_r_data0 : bubble_select_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_b;
    // Data1
    assign SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_D1 = SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_r_valid == 1'b1 ? SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_r_data1 : i_reduction_bicg_5_bicg38_q;
    // Data2
    assign SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_D2 = SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_r_valid == 1'b1 ? SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_r_data2 : bubble_select_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_b;
    // Data3
    assign SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_D3 = SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_r_valid == 1'b1 ? SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_r_data3 : bgTrunc_i_add8_bicg33_sel_x_b;

    // SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo(STALLENABLE,1012)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_fromReg0 <= '0;
            SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_fromReg0 <= SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_toReg0;
            // Successor 1
            SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_fromReg1 <= SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_consumed0 = (~ (SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_backStall) & SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_wireValid) | SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_fromReg0;
    assign SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_consumed1 = (~ (redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_stall_out) & SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_wireValid) | SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_fromReg1;
    // Consuming
    assign SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_StallValid = SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_backStall & SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_wireValid;
    assign SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_toReg0 = SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_StallValid & SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_consumed0;
    assign SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_toReg1 = SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_StallValid & SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_or0 = SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_consumed0;
    assign SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_wireStall = ~ (SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_consumed1 & SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_or0);
    assign SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_backStall = SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_V0 = SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_wireValid & ~ (SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_fromReg0);
    assign SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_V1 = SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_wireValid & ~ (SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_wireValid = redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_valid_out;

    // redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo(STALLFIFO,553)
    assign redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_valid_in = SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_V0;
    assign redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_stall_in = SE_out_redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_backStall;
    assign redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_data_in = bubble_select_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_b;
    assign redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_valid_in_bitsignaltemp = redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_valid_in[0];
    assign redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_stall_in_bitsignaltemp = redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_stall_in[0];
    assign redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_valid_out[0] = redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_valid_out_bitsignaltemp;
    assign redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_stall_out[0] = redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(41),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo (
        .valid_in(redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_valid_in_bitsignaltemp),
        .stall_in(redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_b),
        .valid_out(redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_valid_out_bitsignaltemp),
        .stall_out(redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_stall_out_bitsignaltemp),
        .data_out(redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34(STALLENABLE,814)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_backStall = redist36_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_40_fifo_stall_out | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_wireValid = i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi5_pop1136_push26_bicg35(STALLENABLE,846)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi5_pop1136_push26_bicg35_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi5_pop1136_push26_bicg35_wireValid = i_llvm_fpga_push_i1_memdep_phi5_pop1136_push26_bicg35_out_valid_out;

    // bubble_join_redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo(BITJOIN,732)
    assign bubble_join_redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_q = redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_data_out;

    // bubble_select_redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo(BITSELECT,733)
    assign bubble_select_redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_b = $unsigned(bubble_join_redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi5_pop1136_push26_bicg35(BLACKBOX,111)@70
    // in in_stall_in@20000000
    // out out_data_out@71
    // out out_feedback_out_26@20000000
    // out out_feedback_valid_out_26@20000000
    // out out_stall_out@20000000
    // out out_valid_out@71
    bicg_i_llvm_fpga_push_i1_memdep_phi5_pop1136_push26_0 thei_llvm_fpga_push_i1_memdep_phi5_pop1136_push26_bicg35 (
        .in_data_in(bubble_select_redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_b),
        .in_feedback_stall_in_26(i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_feedback_stall_out_26),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_bicg4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi5_pop1136_push26_bicg35_backStall),
        .in_valid_in(SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_V0),
        .out_data_out(),
        .out_feedback_out_26(i_llvm_fpga_push_i1_memdep_phi5_pop1136_push26_bicg35_out_feedback_out_26),
        .out_feedback_valid_out_26(i_llvm_fpga_push_i1_memdep_phi5_pop1136_push26_bicg35_out_feedback_valid_out_26),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi5_pop1136_push26_bicg35_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi5_pop1136_push26_bicg35_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34(BLACKBOX,95)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_26@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    bicg_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_0 thei_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34 (
        .in_data_in(bubble_select_bicg_B3_merge_reg_aunroll_x_j),
        .in_dir(bubble_select_bicg_B3_merge_reg_aunroll_x_b),
        .in_feedback_in_26(i_llvm_fpga_push_i1_memdep_phi5_pop1136_push26_bicg35_out_feedback_out_26),
        .in_feedback_valid_in_26(i_llvm_fpga_push_i1_memdep_phi5_pop1136_push26_bicg35_out_feedback_valid_out_26),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_backStall),
        .in_valid_in(SE_out_bicg_B3_merge_reg_aunroll_x_V2),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out),
        .out_feedback_stall_out_26(i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_feedback_stall_out_26),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26(BLACKBOX,83)@7
    // in in_stall_in@20000000
    // out out_dest_data_out_2_0@8
    // out out_stall_out@20000000
    // out out_valid_out@8
    bicg_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_0 thei_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_backStall),
        .in_valid_in(SE_out_bubble_out_bicg_B3_merge_reg_aunroll_x_2_V0),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_out_dest_data_out_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_bicg_B3_merge_reg_aunroll_x_2(STALLENABLE,1074)
    // Valid signal propagation
    assign SE_out_bubble_out_bicg_B3_merge_reg_aunroll_x_2_V0 = SE_out_bubble_out_bicg_B3_merge_reg_aunroll_x_2_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_bicg_B3_merge_reg_aunroll_x_2_backStall = i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_out_stall_out | ~ (SE_out_bubble_out_bicg_B3_merge_reg_aunroll_x_2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_bicg_B3_merge_reg_aunroll_x_2_wireValid = bubble_out_bicg_B3_merge_reg_aunroll_x_2_reg_valid_out;

    // bubble_out_bicg_B3_merge_reg_aunroll_x_2_reg(STALLFIFO,1304)
    assign bubble_out_bicg_B3_merge_reg_aunroll_x_2_reg_valid_in = SE_out_bicg_B3_merge_reg_aunroll_x_V0;
    assign bubble_out_bicg_B3_merge_reg_aunroll_x_2_reg_stall_in = SE_out_bubble_out_bicg_B3_merge_reg_aunroll_x_2_backStall;
    assign bubble_out_bicg_B3_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp = bubble_out_bicg_B3_merge_reg_aunroll_x_2_reg_valid_in[0];
    assign bubble_out_bicg_B3_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp = bubble_out_bicg_B3_merge_reg_aunroll_x_2_reg_stall_in[0];
    assign bubble_out_bicg_B3_merge_reg_aunroll_x_2_reg_valid_out[0] = bubble_out_bicg_B3_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    assign bubble_out_bicg_B3_merge_reg_aunroll_x_2_reg_stall_out[0] = bubble_out_bicg_B3_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(7),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_bicg_B3_merge_reg_aunroll_x_2_reg (
        .valid_in(bubble_out_bicg_B3_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_bicg_B3_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_bicg_B3_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_bicg_B3_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,882)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = bicg_B3_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,683)
    assign bubble_join_stall_entry_q = {in_unnamed_bicg10, in_notcmp2043, in_mul40, in_memdep_phi_pop1039, in_memdep_phi7_pop1245, in_memdep_phi5_pop1144, in_mPtr_bitcast_index8441, in_mPtr_bitcast_index8038, in_forked, in_exitcond1442};

    // bubble_select_stall_entry(BITSELECT,684)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[65:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[129:66]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[130:130]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[131:131]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[132:132]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[164:133]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[165:165]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[197:166]);

    // bicg_B3_merge_reg_aunroll_x(BLACKBOX,9)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_data_out_5_tpl@1
    // out out_data_out_6_tpl@1
    // out out_data_out_7_tpl@1
    // out out_data_out_8_tpl@1
    // out out_data_out_9_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    bicg_B3_merge_reg thebicg_B3_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_c),
        .in_data_in_1_tpl(bubble_select_stall_entry_d),
        .in_data_in_2_tpl(bubble_select_stall_entry_h),
        .in_data_in_3_tpl(bubble_select_stall_entry_k),
        .in_data_in_4_tpl(bubble_select_stall_entry_i),
        .in_data_in_5_tpl(bubble_select_stall_entry_e),
        .in_data_in_6_tpl(bubble_select_stall_entry_b),
        .in_data_in_7_tpl(bubble_select_stall_entry_j),
        .in_data_in_8_tpl(bubble_select_stall_entry_f),
        .in_data_in_9_tpl(bubble_select_stall_entry_g),
        .in_stall_in(SE_out_bicg_B3_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(bicg_B3_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(bicg_B3_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(bicg_B3_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(bicg_B3_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(bicg_B3_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(bicg_B3_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(bicg_B3_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(bicg_B3_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(bicg_B3_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_stall_out(bicg_B3_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(bicg_B3_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bicg_B3_merge_reg_aunroll_x(STALLENABLE,774)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_bicg_B3_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_bicg_B3_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_bicg_B3_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_bicg_B3_merge_reg_aunroll_x_fromReg3 <= '0;
            SE_out_bicg_B3_merge_reg_aunroll_x_fromReg4 <= '0;
            SE_out_bicg_B3_merge_reg_aunroll_x_fromReg5 <= '0;
            SE_out_bicg_B3_merge_reg_aunroll_x_fromReg6 <= '0;
            SE_out_bicg_B3_merge_reg_aunroll_x_fromReg7 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_bicg_B3_merge_reg_aunroll_x_fromReg0 <= SE_out_bicg_B3_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_bicg_B3_merge_reg_aunroll_x_fromReg1 <= SE_out_bicg_B3_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_bicg_B3_merge_reg_aunroll_x_fromReg2 <= SE_out_bicg_B3_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_bicg_B3_merge_reg_aunroll_x_fromReg3 <= SE_out_bicg_B3_merge_reg_aunroll_x_toReg3;
            // Successor 4
            SE_out_bicg_B3_merge_reg_aunroll_x_fromReg4 <= SE_out_bicg_B3_merge_reg_aunroll_x_toReg4;
            // Successor 5
            SE_out_bicg_B3_merge_reg_aunroll_x_fromReg5 <= SE_out_bicg_B3_merge_reg_aunroll_x_toReg5;
            // Successor 6
            SE_out_bicg_B3_merge_reg_aunroll_x_fromReg6 <= SE_out_bicg_B3_merge_reg_aunroll_x_toReg6;
            // Successor 7
            SE_out_bicg_B3_merge_reg_aunroll_x_fromReg7 <= SE_out_bicg_B3_merge_reg_aunroll_x_toReg7;
        end
    end
    // Input Stall processing
    assign SE_out_bicg_B3_merge_reg_aunroll_x_consumed0 = (~ (bubble_out_bicg_B3_merge_reg_aunroll_x_2_reg_stall_out) & SE_out_bicg_B3_merge_reg_aunroll_x_wireValid) | SE_out_bicg_B3_merge_reg_aunroll_x_fromReg0;
    assign SE_out_bicg_B3_merge_reg_aunroll_x_consumed1 = (~ (bubble_out_bicg_B3_merge_reg_aunroll_x_3_reg_stall_out) & SE_out_bicg_B3_merge_reg_aunroll_x_wireValid) | SE_out_bicg_B3_merge_reg_aunroll_x_fromReg1;
    assign SE_out_bicg_B3_merge_reg_aunroll_x_consumed2 = (~ (i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_stall_out) & SE_out_bicg_B3_merge_reg_aunroll_x_wireValid) | SE_out_bicg_B3_merge_reg_aunroll_x_fromReg2;
    assign SE_out_bicg_B3_merge_reg_aunroll_x_consumed3 = (~ (i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_stall_out) & SE_out_bicg_B3_merge_reg_aunroll_x_wireValid) | SE_out_bicg_B3_merge_reg_aunroll_x_fromReg3;
    assign SE_out_bicg_B3_merge_reg_aunroll_x_consumed4 = (~ (i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_stall_out) & SE_out_bicg_B3_merge_reg_aunroll_x_wireValid) | SE_out_bicg_B3_merge_reg_aunroll_x_fromReg4;
    assign SE_out_bicg_B3_merge_reg_aunroll_x_consumed5 = (~ (i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_stall_out) & SE_out_bicg_B3_merge_reg_aunroll_x_wireValid) | SE_out_bicg_B3_merge_reg_aunroll_x_fromReg5;
    assign SE_out_bicg_B3_merge_reg_aunroll_x_consumed6 = (~ (SE_coalesced_delay_0_0_backStall) & SE_out_bicg_B3_merge_reg_aunroll_x_wireValid) | SE_out_bicg_B3_merge_reg_aunroll_x_fromReg6;
    assign SE_out_bicg_B3_merge_reg_aunroll_x_consumed7 = (~ (coalesced_delay_1_fifo_stall_out) & SE_out_bicg_B3_merge_reg_aunroll_x_wireValid) | SE_out_bicg_B3_merge_reg_aunroll_x_fromReg7;
    // Consuming
    assign SE_out_bicg_B3_merge_reg_aunroll_x_StallValid = SE_out_bicg_B3_merge_reg_aunroll_x_backStall & SE_out_bicg_B3_merge_reg_aunroll_x_wireValid;
    assign SE_out_bicg_B3_merge_reg_aunroll_x_toReg0 = SE_out_bicg_B3_merge_reg_aunroll_x_StallValid & SE_out_bicg_B3_merge_reg_aunroll_x_consumed0;
    assign SE_out_bicg_B3_merge_reg_aunroll_x_toReg1 = SE_out_bicg_B3_merge_reg_aunroll_x_StallValid & SE_out_bicg_B3_merge_reg_aunroll_x_consumed1;
    assign SE_out_bicg_B3_merge_reg_aunroll_x_toReg2 = SE_out_bicg_B3_merge_reg_aunroll_x_StallValid & SE_out_bicg_B3_merge_reg_aunroll_x_consumed2;
    assign SE_out_bicg_B3_merge_reg_aunroll_x_toReg3 = SE_out_bicg_B3_merge_reg_aunroll_x_StallValid & SE_out_bicg_B3_merge_reg_aunroll_x_consumed3;
    assign SE_out_bicg_B3_merge_reg_aunroll_x_toReg4 = SE_out_bicg_B3_merge_reg_aunroll_x_StallValid & SE_out_bicg_B3_merge_reg_aunroll_x_consumed4;
    assign SE_out_bicg_B3_merge_reg_aunroll_x_toReg5 = SE_out_bicg_B3_merge_reg_aunroll_x_StallValid & SE_out_bicg_B3_merge_reg_aunroll_x_consumed5;
    assign SE_out_bicg_B3_merge_reg_aunroll_x_toReg6 = SE_out_bicg_B3_merge_reg_aunroll_x_StallValid & SE_out_bicg_B3_merge_reg_aunroll_x_consumed6;
    assign SE_out_bicg_B3_merge_reg_aunroll_x_toReg7 = SE_out_bicg_B3_merge_reg_aunroll_x_StallValid & SE_out_bicg_B3_merge_reg_aunroll_x_consumed7;
    // Backward Stall generation
    assign SE_out_bicg_B3_merge_reg_aunroll_x_or0 = SE_out_bicg_B3_merge_reg_aunroll_x_consumed0;
    assign SE_out_bicg_B3_merge_reg_aunroll_x_or1 = SE_out_bicg_B3_merge_reg_aunroll_x_consumed1 & SE_out_bicg_B3_merge_reg_aunroll_x_or0;
    assign SE_out_bicg_B3_merge_reg_aunroll_x_or2 = SE_out_bicg_B3_merge_reg_aunroll_x_consumed2 & SE_out_bicg_B3_merge_reg_aunroll_x_or1;
    assign SE_out_bicg_B3_merge_reg_aunroll_x_or3 = SE_out_bicg_B3_merge_reg_aunroll_x_consumed3 & SE_out_bicg_B3_merge_reg_aunroll_x_or2;
    assign SE_out_bicg_B3_merge_reg_aunroll_x_or4 = SE_out_bicg_B3_merge_reg_aunroll_x_consumed4 & SE_out_bicg_B3_merge_reg_aunroll_x_or3;
    assign SE_out_bicg_B3_merge_reg_aunroll_x_or5 = SE_out_bicg_B3_merge_reg_aunroll_x_consumed5 & SE_out_bicg_B3_merge_reg_aunroll_x_or4;
    assign SE_out_bicg_B3_merge_reg_aunroll_x_or6 = SE_out_bicg_B3_merge_reg_aunroll_x_consumed6 & SE_out_bicg_B3_merge_reg_aunroll_x_or5;
    assign SE_out_bicg_B3_merge_reg_aunroll_x_wireStall = ~ (SE_out_bicg_B3_merge_reg_aunroll_x_consumed7 & SE_out_bicg_B3_merge_reg_aunroll_x_or6);
    assign SE_out_bicg_B3_merge_reg_aunroll_x_backStall = SE_out_bicg_B3_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_bicg_B3_merge_reg_aunroll_x_V0 = SE_out_bicg_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_bicg_B3_merge_reg_aunroll_x_fromReg0);
    assign SE_out_bicg_B3_merge_reg_aunroll_x_V1 = SE_out_bicg_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_bicg_B3_merge_reg_aunroll_x_fromReg1);
    assign SE_out_bicg_B3_merge_reg_aunroll_x_V2 = SE_out_bicg_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_bicg_B3_merge_reg_aunroll_x_fromReg2);
    assign SE_out_bicg_B3_merge_reg_aunroll_x_V3 = SE_out_bicg_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_bicg_B3_merge_reg_aunroll_x_fromReg3);
    assign SE_out_bicg_B3_merge_reg_aunroll_x_V4 = SE_out_bicg_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_bicg_B3_merge_reg_aunroll_x_fromReg4);
    assign SE_out_bicg_B3_merge_reg_aunroll_x_V5 = SE_out_bicg_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_bicg_B3_merge_reg_aunroll_x_fromReg5);
    assign SE_out_bicg_B3_merge_reg_aunroll_x_V6 = SE_out_bicg_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_bicg_B3_merge_reg_aunroll_x_fromReg6);
    assign SE_out_bicg_B3_merge_reg_aunroll_x_V7 = SE_out_bicg_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_bicg_B3_merge_reg_aunroll_x_fromReg7);
    // Computing multiple Valid(s)
    assign SE_out_bicg_B3_merge_reg_aunroll_x_wireValid = bicg_B3_merge_reg_aunroll_x_out_valid_out;

    // bubble_out_bicg_B3_merge_reg_aunroll_x_3_reg(STALLFIFO,1305)
    assign bubble_out_bicg_B3_merge_reg_aunroll_x_3_reg_valid_in = SE_out_bicg_B3_merge_reg_aunroll_x_V1;
    assign bubble_out_bicg_B3_merge_reg_aunroll_x_3_reg_stall_in = SE_out_bubble_out_bicg_B3_merge_reg_aunroll_x_3_backStall;
    assign bubble_out_bicg_B3_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp = bubble_out_bicg_B3_merge_reg_aunroll_x_3_reg_valid_in[0];
    assign bubble_out_bicg_B3_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp = bubble_out_bicg_B3_merge_reg_aunroll_x_3_reg_stall_in[0];
    assign bubble_out_bicg_B3_merge_reg_aunroll_x_3_reg_valid_out[0] = bubble_out_bicg_B3_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp;
    assign bubble_out_bicg_B3_merge_reg_aunroll_x_3_reg_stall_out[0] = bubble_out_bicg_B3_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(70),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_bicg_B3_merge_reg_aunroll_x_3_reg (
        .valid_in(bubble_out_bicg_B3_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_bicg_B3_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_bicg_B3_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_bicg_B3_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_bicg_B3_merge_reg_aunroll_x_3(STALLENABLE,1076)
    // Valid signal propagation
    assign SE_out_bubble_out_bicg_B3_merge_reg_aunroll_x_3_V0 = SE_out_bubble_out_bicg_B3_merge_reg_aunroll_x_3_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_bicg_B3_merge_reg_aunroll_x_3_backStall = i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_out_stall_out | ~ (SE_out_bubble_out_bicg_B3_merge_reg_aunroll_x_3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_bicg_B3_merge_reg_aunroll_x_3_wireValid = bubble_out_bicg_B3_merge_reg_aunroll_x_3_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41(BLACKBOX,84)@70
    // in in_stall_in@20000000
    // out out_dest_data_out_4_0@71
    // out out_stall_out@20000000
    // out out_valid_out@71
    bicg_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_0 thei_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_backStall),
        .in_valid_in(SE_out_bubble_out_bicg_B3_merge_reg_aunroll_x_3_V0),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_out_dest_data_out_4_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41(BITJOIN,606)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_q = i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_out_dest_data_out_4_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41(BITSELECT,607)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_q[63:0]);

    // i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,415)@71
    assign i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_b[59:0]);
    assign i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_b[63:60]);

    // i_mptr_bitcast_index82_bicg0_add_x_p1_of_2(ADD,326)@71 + 1
    assign i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b};
    assign i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_o <= 61'b0;
        end
        else if (SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q = i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_o[59:0];

    // SR_SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0(STALLREG,1346)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_r_valid <= 1'b0;
            SR_SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_r_data0 <= 60'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_r_valid <= SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_backStall & (SR_SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_r_valid | SR_SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_i_valid);

            if (SR_SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_r_data0 <= $unsigned(i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_i_valid = SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_backStall = SR_SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_r_valid | ~ (SR_SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_V = SR_SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_r_valid : SR_SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_i_valid;

    assign SR_SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_D0 = SR_SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_r_data0 : i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q;

    // redist5_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(REG,501)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(4'b0000);
        end
        else if (SE_redist5_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b1)
        begin
            redist5_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,372)@72
    assign i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist5_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q};

    // SE_redist5_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(STALLENABLE,951)
    // Valid signal propagation
    assign SE_redist5_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 = SE_redist5_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist5_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0 = SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_backStall & SE_redist5_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist5_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN = ~ (SE_redist5_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist5_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0 = SE_redist5_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_V1;
    // Backward Stall generation
    assign SE_redist5_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall = ~ (SE_redist5_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist5_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist5_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b0)
            begin
                SE_redist5_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist5_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 & SE_redist5_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist5_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist5_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
            end

        end
    end

    // SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2(STALLREG,1345)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_r_data0 <= 5'bxxxxx;
            SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_r_data1 <= 5'bxxxxx;
            SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_r_valid <= SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_backStall & (SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_r_valid | SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_i_valid);

            if (SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_r_data0 <= $unsigned(i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_r_data1 <= $unsigned(i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_r_data2 <= $unsigned(i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_and0 = SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_V0;
    assign SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_and1 = SE_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_tessel1_0_V1 & SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_and0;
    assign SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_i_valid = SE_redist5_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 & SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_backStall = SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_r_valid | ~ (SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_V = SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_r_valid : SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_D0 = SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_r_data0 : i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_D1 = SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_r_data1 : i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_D2 = SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_r_data2 : i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_c;

    // SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41(STALLENABLE,792)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_consumed0 = (~ (SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_consumed1 = (~ (SE_redist5_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_StallValid = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_backStall & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_or0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_backStall = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_V1 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_wireValid = i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_out_valid_out;

    // SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2(STALLENABLE,904)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_V0 = SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_R_v_0;
    assign SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_V1 = SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_s_tv_0 = SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_backStall & SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_R_v_0;
    assign SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_s_tv_1 = SR_SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_backStall & SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_or0 = SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_s_tv_0;
    assign SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_backEN = ~ (SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_s_tv_1 | SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_and0 = SE_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_V0 & SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_backEN;
    assign SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_v_s_0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast819019_bicg41_V0 & SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_and0;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_backStall = ~ (SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_R_v_0 <= SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_R_v_0 & SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_R_v_0 <= SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_R_v_1 <= SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_R_v_1 & SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_R_v_1 <= SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SE_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_tessel0_2(STALLENABLE,917)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_tessel0_2_V0 = 1'b1;
    assign SE_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_tessel0_2_V1 = 1'b1;
    assign SE_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_tessel0_2_V2 = 1'b1;

    // SE_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_b_BitJoin_for_b(STALLENABLE,922)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_V0 = SE_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_backStall = SE_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_backStall | ~ (SE_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_and0 = SE_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_tessel0_2_V1;
    assign SE_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid = SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_V0 & SE_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_and0;

    // SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0(STALLENABLE,994)
    // Valid signal propagation
    assign SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_V0 = SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_R_v_0;
    // Stall signal propagation
    assign SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_s_tv_0 = SE_i_mptr_bitcast_index82_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_backStall & SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_R_v_0;
    // Backward Enable generation
    assign SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_backEN = ~ (SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_v_s_0 = SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_backEN & SR_SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_V;
    // Backward Stall generation
    assign SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_backStall = ~ (SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_backEN == 1'b0)
            begin
                SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_R_v_0 <= SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_R_v_0 & SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_s_tv_0;
            end
            else
            begin
                SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_R_v_0 <= SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_v_s_0;
            end

        end
    end

    // SR_SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0(STALLREG,1344)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_r_valid <= 1'b0;
            SR_SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_r_valid <= SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_backStall & (SR_SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_r_valid | SR_SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_i_valid);

            if (SR_SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_r_data0 <= $unsigned(bubble_select_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_i_valid = SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_V0;
    // Stall signal propagation
    assign SR_SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_backStall = SR_SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_r_valid | ~ (SR_SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_i_valid);

    // Valid
    assign SR_SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_V = SR_SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_r_valid == 1'b1 ? SR_SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_r_valid : SR_SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_i_valid;

    assign SR_SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_D0 = SR_SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_r_valid == 1'b1 ? SR_SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_r_data0 : bubble_select_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_b;

    // SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo(STALLENABLE,993)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_fromReg0 <= '0;
            SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_fromReg0 <= SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_toReg0;
            // Successor 1
            SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_fromReg1 <= SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_consumed0 = (~ (SR_SE_redist28_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_69_0_backStall) & SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_wireValid) | SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_fromReg0;
    assign SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_consumed1 = (~ (SR_SE_bgTrunc_i_inc_bicg51_sel_x_backStall) & SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_wireValid) | SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_fromReg1;
    // Consuming
    assign SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_StallValid = SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_backStall & SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_wireValid;
    assign SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_toReg0 = SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_StallValid & SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_consumed0;
    assign SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_toReg1 = SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_StallValid & SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_or0 = SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_consumed0;
    assign SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_wireStall = ~ (SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_consumed1 & SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_or0);
    assign SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_backStall = SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_V0 = SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_wireValid & ~ (SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_fromReg0);
    assign SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_V1 = SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_wireValid & ~ (SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_wireValid = redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_valid_out;

    // redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo(STALLFIFO,539)
    assign redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_valid_in = SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_V1;
    assign redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_stall_in = SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_backStall;
    assign redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_data_in = redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_q;
    assign redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_valid_in_bitsignaltemp = redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_valid_in[0];
    assign redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_stall_in_bitsignaltemp = redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_stall_in[0];
    assign redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_valid_out[0] = redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_valid_out_bitsignaltemp;
    assign redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_stall_out[0] = redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(63),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo (
        .valid_in(redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_valid_in_bitsignaltemp),
        .stall_in(redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_stall_in_bitsignaltemp),
        .data_in(redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_q),
        .valid_out(redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_valid_out_bitsignaltemp),
        .stall_out(redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_stall_out_bitsignaltemp),
        .data_out(redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4(STALLENABLE,990)
    // Valid signal propagation
    assign SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_V0 = SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_R_v_0;
    // Stall signal propagation
    assign SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_s_tv_0 = SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_backStall & SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_R_v_0;
    // Backward Enable generation
    assign SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_backEN = ~ (SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_v_s_0 = SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_backEN & SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_V;
    // Backward Stall generation
    assign SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_backStall = ~ (SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_backEN == 1'b0)
            begin
                SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_R_v_0 <= SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_R_v_0 & SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_s_tv_0;
            end
            else
            begin
                SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_R_v_0 <= SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_v_s_0;
            end

        end
    end

    // SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5(STALLENABLE,991)
    // Valid signal propagation
    assign SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_V0 = SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_R_v_0;
    assign SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_V1 = SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_R_v_1;
    // Stall signal propagation
    assign SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_s_tv_0 = SE_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_backStall & SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_R_v_0;
    assign SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_s_tv_1 = redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_stall_out & SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_R_v_1;
    // Backward Enable generation
    assign SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_or0 = SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_s_tv_0;
    assign SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_backEN = ~ (SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_s_tv_1 | SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_v_s_0 = SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_backEN & SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_V0;
    // Backward Stall generation
    assign SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_backStall = ~ (SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_R_v_0 <= 1'b0;
            SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_backEN == 1'b0)
            begin
                SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_R_v_0 <= SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_R_v_0 & SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_s_tv_0;
            end
            else
            begin
                SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_R_v_0 <= SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_v_s_0;
            end

            if (SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_backEN == 1'b0)
            begin
                SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_R_v_1 <= SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_R_v_1 & SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_s_tv_1;
            end
            else
            begin
                SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_R_v_1 <= SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_v_s_0;
            end

        end
    end

    // redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4(REG,537)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_backEN == 1'b1)
        begin
            redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_q <= $unsigned(SR_SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_D0);
        end
    end

    // redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5(REG,538)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_backEN == 1'b1)
        begin
            redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_q <= $unsigned(redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_4_q);
        end
    end

    // i_mptr_bitcast_index76_bicg0_c_i2_01_x(CONSTANT,31)
    assign i_mptr_bitcast_index76_bicg0_c_i2_01_x_q = $unsigned(2'b00);

    // i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,364)@8
    assign i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_tessel0_2_b, redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_q, i_mptr_bitcast_index76_bicg0_c_i2_01_x_q};

    // bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26(BITJOIN,603)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_q = i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_out_dest_data_out_2_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26(BITSELECT,604)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_q[63:0]);

    // i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,414)@8
    assign i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_b[59:0]);
    assign i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_b[63:60]);

    // SE_redist6_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(STALLENABLE,952)
    // Valid signal propagation
    assign SE_redist6_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 = SE_redist6_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist6_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0 = SE_i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_backStall & SE_redist6_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist6_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN = ~ (SE_redist6_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0 = SE_redist6_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_V1;
    // Backward Stall generation
    assign SE_redist6_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall = ~ (SE_redist6_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist6_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b0)
            begin
                SE_redist6_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist6_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 & SE_redist6_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist6_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist6_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26(STALLENABLE,790)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_consumed0 = (~ (SR_SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_consumed1 = (~ (SE_redist6_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_StallValid = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_backStall & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_or0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_backStall = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_V1 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_wireValid = i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_out_valid_out;

    // SE_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_BitJoin_for_b(STALLENABLE,918)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_V0 = SE_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_backStall = SR_SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_backStall | ~ (SE_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_and0 = SE_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_tessel0_2_V0;
    assign SE_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid = SE_redist26_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_6_5_V0 & SE_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_and0;

    // SR_SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2(STALLREG,1326)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_r_data0 <= 60'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_r_data1 <= 60'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_r_valid <= SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_backStall & (SR_SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_r_valid | SR_SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_i_valid);

            if (SR_SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_r_data0 <= $unsigned(i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b);
                SR_SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_r_data1 <= $unsigned(i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_and0 = SE_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_V0;
    assign SR_SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_i_valid = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast758617_bicg26_V0 & SR_SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_backStall = SR_SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_r_valid | ~ (SR_SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_V = SR_SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_r_valid : SR_SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_D0 = SR_SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_r_data0 : i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    // Data1
    assign SR_SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_D1 = SR_SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_r_data1 : i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_q;

    // i_mptr_bitcast_index76_bicg0_add_x_p1_of_2(ADD,317)@8 + 1
    assign i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_a = {1'b0, SR_SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_D0};
    assign i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_b = {1'b0, SR_SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_o <= 61'b0;
        end
        else if (SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_q = i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_o[59:0];

    // SE_i_mptr_bitcast_index76_bicg0_add_x_p2_of_2(STALLENABLE,902)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_V0 = SE_i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_s_tv_0 = SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_backStall & SE_i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_backEN = ~ (SE_i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_and0 = SE_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_V0 & SE_i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_backEN;
    assign SE_i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_and1 = SE_redist6_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 & SE_i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_and0;
    assign SE_i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_v_s_0 = SE_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_tessel1_0_V0 & SE_i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_and1;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_backStall = ~ (SE_i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_R_v_0 <= SE_i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_R_v_0 & SE_i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_R_v_0 <= SE_i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_tessel1_0(BITSELECT,365)
    assign i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_tessel1_0_b = c_i32_073_q[29:26];

    // i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,367)@9
    assign i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_tessel1_0_b};

    // redist6_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(REG,502)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(4'b0000);
        end
        else if (SE_redist6_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b1)
        begin
            redist6_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,360)@9
    assign i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist6_i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q};

    // i_mptr_bitcast_index76_bicg0_add_x_p2_of_2(ADD,318)@9 + 1
    assign i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_cin = i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_c;
    assign i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_a = { {1'b0, i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_b = { {1'b0, i_mptr_bitcast_index76_bicg0_add_x_BitSelect_for_b_BitJoin_for_c_q}, i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_o <= 7'b0;
        end
        else if (SE_i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_q = i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_o[5:1];

    // redist12_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_q_1_0(REG,508)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_q_1_0_q <= $unsigned(60'b000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist12_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist12_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_q_1_0_q <= $unsigned(i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_q);
        end
    end

    // i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q(BITJOIN,319)@10
    assign i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_q, redist12_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_q_1_0_q};

    // i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x(BITSELECT,28)@10
    assign i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_q[63:0];

    // SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q(STALLENABLE,903)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_fromReg0 <= '0;
            SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_fromReg0 <= SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_toReg0;
            // Successor 1
            SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_fromReg1 <= SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_consumed0 = (~ (SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_backStall) & SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_wireValid) | SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_fromReg0;
    assign SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_consumed1 = (~ (redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_stall_out) & SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_wireValid) | SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_fromReg1;
    // Consuming
    assign SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_StallValid = SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_backStall & SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_wireValid;
    assign SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_toReg0 = SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_StallValid & SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_consumed0;
    assign SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_toReg1 = SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_StallValid & SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_consumed1;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_or0 = SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_consumed0;
    assign SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_wireStall = ~ (SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_consumed1 & SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_or0);
    assign SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_backStall = SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_wireStall;
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_V0 = SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_wireValid & ~ (SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_fromReg0);
    assign SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_V1 = SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_wireValid & ~ (SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_and0 = SE_i_mptr_bitcast_index76_bicg0_add_x_p2_of_2_V0;
    assign SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_wireValid = SE_redist12_i_mptr_bitcast_index76_bicg0_add_x_p1_of_2_q_1_0_V0 & SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_and0;

    // SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28(STALLENABLE,799)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_V0 = SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_backStall = i_llvm_fpga_mem_unnamed_bicg14_bicg28_out_o_stall | ~ (SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_wireValid = SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_V;

    // SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28(STALLREG,1341)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_r_data1 <= 1'bx;
            SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_r_valid <= SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_backStall & (SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_r_valid | SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_i_valid);

            if (SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_r_data0 <= i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b;
                SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_r_data1 <= $unsigned(redist19_i_reduction_bicg_0_bicg21_q_5_4_q);
                SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_r_data2 <= $unsigned(redist44_i_first_cleanup_xor_bicg2_q_5_4_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_and0 = SE_i_mptr_bitcast_index76_bicg0_add_x_BitJoin_for_q_V0;
    assign SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_and1 = SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_V0 & SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_and0;
    assign SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_i_valid = SE_redist44_i_first_cleanup_xor_bicg2_q_5_4_V0 & SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_and1;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_backStall = SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_r_valid | ~ (SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_V = SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_r_valid : SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_D0 = SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_r_data0 : i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_D1 = SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_r_data1 : redist19_i_reduction_bicg_0_bicg21_q_5_4_q;
    // Data2
    assign SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_D2 = SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_r_data2 : redist44_i_first_cleanup_xor_bicg2_q_5_4_q;

    // SE_redist19_i_reduction_bicg_0_bicg21_q_5_4(STALLENABLE,969)
    // Valid signal propagation
    assign SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_V0 = SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_R_v_0;
    // Stall signal propagation
    assign SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_s_tv_0 = SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_backStall & SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_R_v_0;
    // Backward Enable generation
    assign SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_backEN = ~ (SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_v_s_0 = SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_backEN & SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_V;
    // Backward Stall generation
    assign SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_backStall = ~ (SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_backEN == 1'b0)
            begin
                SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_R_v_0 <= SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_R_v_0 & SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_s_tv_0;
            end
            else
            begin
                SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_R_v_0 <= SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_v_s_0;
            end

        end
    end

    // SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_4(STALLREG,1338)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_r_valid <= 1'b0;
            SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_r_valid <= SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_backStall & (SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_r_valid | SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_i_valid);

            if (SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_r_data0 <= $unsigned(redist19_i_reduction_bicg_0_bicg21_q_5_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_i_valid = SE_redist19_i_reduction_bicg_0_bicg21_q_5_3_V0;
    // Stall signal propagation
    assign SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_backStall = SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_r_valid | ~ (SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_i_valid);

    // Valid
    assign SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_V = SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_r_valid == 1'b1 ? SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_r_valid : SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_i_valid;

    assign SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_D0 = SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_r_valid == 1'b1 ? SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_r_data0 : redist19_i_reduction_bicg_0_bicg21_q_5_3_q;

    // SE_redist19_i_reduction_bicg_0_bicg21_q_5_3(STALLENABLE,968)
    // Valid signal propagation
    assign SE_redist19_i_reduction_bicg_0_bicg21_q_5_3_V0 = SE_redist19_i_reduction_bicg_0_bicg21_q_5_3_R_v_0;
    // Stall signal propagation
    assign SE_redist19_i_reduction_bicg_0_bicg21_q_5_3_s_tv_0 = SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_4_backStall & SE_redist19_i_reduction_bicg_0_bicg21_q_5_3_R_v_0;
    // Backward Enable generation
    assign SE_redist19_i_reduction_bicg_0_bicg21_q_5_3_backEN = ~ (SE_redist19_i_reduction_bicg_0_bicg21_q_5_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist19_i_reduction_bicg_0_bicg21_q_5_3_v_s_0 = SE_redist19_i_reduction_bicg_0_bicg21_q_5_3_backEN & SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_V0;
    // Backward Stall generation
    assign SE_redist19_i_reduction_bicg_0_bicg21_q_5_3_backStall = ~ (SE_redist19_i_reduction_bicg_0_bicg21_q_5_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist19_i_reduction_bicg_0_bicg21_q_5_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist19_i_reduction_bicg_0_bicg21_q_5_3_backEN == 1'b0)
            begin
                SE_redist19_i_reduction_bicg_0_bicg21_q_5_3_R_v_0 <= SE_redist19_i_reduction_bicg_0_bicg21_q_5_3_R_v_0 & SE_redist19_i_reduction_bicg_0_bicg21_q_5_3_s_tv_0;
            end
            else
            begin
                SE_redist19_i_reduction_bicg_0_bicg21_q_5_3_R_v_0 <= SE_redist19_i_reduction_bicg_0_bicg21_q_5_3_v_s_0;
            end

        end
    end

    // SE_redist19_i_reduction_bicg_0_bicg21_q_5_2(STALLENABLE,967)
    // Valid signal propagation
    assign SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_V0 = SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_R_v_0;
    // Stall signal propagation
    assign SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_s_tv_0 = SE_redist19_i_reduction_bicg_0_bicg21_q_5_3_backStall & SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_R_v_0;
    // Backward Enable generation
    assign SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_backEN = ~ (SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_v_s_0 = SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_backEN & SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_V;
    // Backward Stall generation
    assign SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_backStall = ~ (SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_backEN == 1'b0)
            begin
                SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_R_v_0 <= SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_R_v_0 & SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_s_tv_0;
            end
            else
            begin
                SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_R_v_0 <= SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_v_s_0;
            end

        end
    end

    // SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_2(STALLREG,1337)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_r_valid <= 1'b0;
            SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_r_valid <= SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_backStall & (SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_r_valid | SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_i_valid);

            if (SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_r_data0 <= $unsigned(redist19_i_reduction_bicg_0_bicg21_q_5_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_i_valid = SE_redist19_i_reduction_bicg_0_bicg21_q_5_1_V0;
    // Stall signal propagation
    assign SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_backStall = SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_r_valid | ~ (SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_i_valid);

    // Valid
    assign SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_V = SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_r_valid == 1'b1 ? SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_r_valid : SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_i_valid;

    assign SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_D0 = SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_r_valid == 1'b1 ? SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_r_data0 : redist19_i_reduction_bicg_0_bicg21_q_5_1_q;

    // SE_redist19_i_reduction_bicg_0_bicg21_q_5_1(STALLENABLE,966)
    // Valid signal propagation
    assign SE_redist19_i_reduction_bicg_0_bicg21_q_5_1_V0 = SE_redist19_i_reduction_bicg_0_bicg21_q_5_1_R_v_0;
    // Stall signal propagation
    assign SE_redist19_i_reduction_bicg_0_bicg21_q_5_1_s_tv_0 = SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_2_backStall & SE_redist19_i_reduction_bicg_0_bicg21_q_5_1_R_v_0;
    // Backward Enable generation
    assign SE_redist19_i_reduction_bicg_0_bicg21_q_5_1_backEN = ~ (SE_redist19_i_reduction_bicg_0_bicg21_q_5_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist19_i_reduction_bicg_0_bicg21_q_5_1_v_s_0 = SE_redist19_i_reduction_bicg_0_bicg21_q_5_1_backEN & SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_V0;
    // Backward Stall generation
    assign SE_redist19_i_reduction_bicg_0_bicg21_q_5_1_backStall = ~ (SE_redist19_i_reduction_bicg_0_bicg21_q_5_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist19_i_reduction_bicg_0_bicg21_q_5_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist19_i_reduction_bicg_0_bicg21_q_5_1_backEN == 1'b0)
            begin
                SE_redist19_i_reduction_bicg_0_bicg21_q_5_1_R_v_0 <= SE_redist19_i_reduction_bicg_0_bicg21_q_5_1_R_v_0 & SE_redist19_i_reduction_bicg_0_bicg21_q_5_1_s_tv_0;
            end
            else
            begin
                SE_redist19_i_reduction_bicg_0_bicg21_q_5_1_R_v_0 <= SE_redist19_i_reduction_bicg_0_bicg21_q_5_1_v_s_0;
            end

        end
    end

    // SE_redist19_i_reduction_bicg_0_bicg21_q_5_0(STALLENABLE,965)
    // Valid signal propagation
    assign SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_V0 = SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_R_v_0;
    // Stall signal propagation
    assign SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_s_tv_0 = SE_redist19_i_reduction_bicg_0_bicg21_q_5_1_backStall & SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_R_v_0;
    // Backward Enable generation
    assign SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_backEN = ~ (SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_v_s_0 = SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_backEN & SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_V;
    // Backward Stall generation
    assign SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_backStall = ~ (SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_backEN == 1'b0)
            begin
                SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_R_v_0 <= SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_R_v_0 & SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_s_tv_0;
            end
            else
            begin
                SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_R_v_0 <= SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_v_s_0;
            end

        end
    end

    // SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_0(STALLREG,1336)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_r_valid <= 1'b0;
            SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_r_valid <= SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_backStall & (SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_r_valid | SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_i_valid);

            if (SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_r_data0 <= i_reduction_bicg_0_bicg21_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_i_valid = SE_i_reduction_bicg_0_bicg21_V1;
    // Stall signal propagation
    assign SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_backStall = SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_r_valid | ~ (SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_i_valid);

    // Valid
    assign SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_V = SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_r_valid == 1'b1 ? SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_r_valid : SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_i_valid;

    assign SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_D0 = SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_r_valid == 1'b1 ? SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_r_data0 : i_reduction_bicg_0_bicg21_q;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19(STALLENABLE,816)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_consumed0 = (~ (SE_i_reduction_bicg_0_bicg21_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_consumed1 = (~ (redist34_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_37_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_wireValid = i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_valid_out;

    // SE_i_reduction_bicg_0_bicg21(STALLENABLE,878)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_reduction_bicg_0_bicg21_fromReg0 <= '0;
            SE_i_reduction_bicg_0_bicg21_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_reduction_bicg_0_bicg21_fromReg0 <= SE_i_reduction_bicg_0_bicg21_toReg0;
            // Successor 1
            SE_i_reduction_bicg_0_bicg21_fromReg1 <= SE_i_reduction_bicg_0_bicg21_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_reduction_bicg_0_bicg21_consumed0 = (~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_backStall) & SE_i_reduction_bicg_0_bicg21_wireValid) | SE_i_reduction_bicg_0_bicg21_fromReg0;
    assign SE_i_reduction_bicg_0_bicg21_consumed1 = (~ (SR_SE_redist19_i_reduction_bicg_0_bicg21_q_5_0_backStall) & SE_i_reduction_bicg_0_bicg21_wireValid) | SE_i_reduction_bicg_0_bicg21_fromReg1;
    // Consuming
    assign SE_i_reduction_bicg_0_bicg21_StallValid = SE_i_reduction_bicg_0_bicg21_backStall & SE_i_reduction_bicg_0_bicg21_wireValid;
    assign SE_i_reduction_bicg_0_bicg21_toReg0 = SE_i_reduction_bicg_0_bicg21_StallValid & SE_i_reduction_bicg_0_bicg21_consumed0;
    assign SE_i_reduction_bicg_0_bicg21_toReg1 = SE_i_reduction_bicg_0_bicg21_StallValid & SE_i_reduction_bicg_0_bicg21_consumed1;
    // Backward Stall generation
    assign SE_i_reduction_bicg_0_bicg21_or0 = SE_i_reduction_bicg_0_bicg21_consumed0;
    assign SE_i_reduction_bicg_0_bicg21_wireStall = ~ (SE_i_reduction_bicg_0_bicg21_consumed1 & SE_i_reduction_bicg_0_bicg21_or0);
    assign SE_i_reduction_bicg_0_bicg21_backStall = SE_i_reduction_bicg_0_bicg21_wireStall;
    // Valid signal propagation
    assign SE_i_reduction_bicg_0_bicg21_V0 = SE_i_reduction_bicg_0_bicg21_wireValid & ~ (SE_i_reduction_bicg_0_bicg21_fromReg0);
    assign SE_i_reduction_bicg_0_bicg21_V1 = SE_i_reduction_bicg_0_bicg21_wireValid & ~ (SE_i_reduction_bicg_0_bicg21_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_reduction_bicg_0_bicg21_and0 = SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_V0;
    assign SE_i_reduction_bicg_0_bicg21_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_V0 & SE_i_reduction_bicg_0_bicg21_and0;

    // SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_1(STALLENABLE,1003)
    // Valid signal propagation
    assign SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_1_V0 = SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_1_R_v_0;
    // Stall signal propagation
    assign SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_1_s_tv_0 = SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_backStall & SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_1_R_v_0;
    // Backward Enable generation
    assign SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_1_backEN = ~ (SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_1_v_s_0 = SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_1_backEN & SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_0_V0;
    // Backward Stall generation
    assign SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_1_backStall = ~ (SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_1_backEN == 1'b0)
            begin
                SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_1_R_v_0 <= SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_1_R_v_0 & SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_1_s_tv_0;
            end
            else
            begin
                SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_1_R_v_0 <= SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_1_v_s_0;
            end

        end
    end

    // SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2(STALLENABLE,1004)
    // Valid signal propagation
    assign SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_V0 = SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_R_v_0;
    assign SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_V1 = SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_R_v_1;
    // Stall signal propagation
    assign SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_s_tv_0 = SE_i_reduction_bicg_0_bicg21_backStall & SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_R_v_0;
    assign SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_s_tv_1 = redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_stall_out & SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_R_v_1;
    // Backward Enable generation
    assign SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_or0 = SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_s_tv_0;
    assign SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_backEN = ~ (SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_s_tv_1 | SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_v_s_0 = SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_backEN & SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_1_V0;
    // Backward Stall generation
    assign SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_backStall = ~ (SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_R_v_0 <= 1'b0;
            SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_backEN == 1'b0)
            begin
                SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_R_v_0 <= SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_R_v_0 & SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_s_tv_0;
            end
            else
            begin
                SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_R_v_0 <= SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_v_s_0;
            end

            if (SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_backEN == 1'b0)
            begin
                SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_R_v_1 <= SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_R_v_1 & SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_s_tv_1;
            end
            else
            begin
                SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_R_v_1 <= SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17(BITJOIN,648)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_q = i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17(BITSELECT,649)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_q[0:0]);

    // redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_0(REG,547)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_0_backEN == 1'b1)
        begin
            redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_0_q <= $unsigned(bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_b);
        end
    end

    // redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_1(REG,548)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_1_backEN == 1'b1)
        begin
            redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_1_q <= $unsigned(redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_0_q);
        end
    end

    // redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2(REG,549)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_backEN == 1'b1)
        begin
            redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_q <= $unsigned(redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_1_q);
        end
    end

    // i_reduction_bicg_0_bicg21(LOGICAL,134)@5
    assign i_reduction_bicg_0_bicg21_q = redist32_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_3_2_q | bubble_select_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_b;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22(BITJOIN,636)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_q = i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22(BITSELECT,637)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_q[0:0]);

    // i_reduction_bicg_1_bicg23(LOGICAL,135)@5
    assign i_reduction_bicg_1_bicg23_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_b | i_reduction_bicg_0_bicg21_q;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22(STALLENABLE,810)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_consumed0 = (~ (SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_consumed1 = (~ (SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_and0 = i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_wireValid = SE_i_reduction_bicg_0_bicg21_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_and0;

    // SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31(STALLENABLE,801)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_V0 = SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_backStall = i_llvm_fpga_mem_unnamed_bicg15_bicg31_out_o_stall | ~ (SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_wireValid = SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_V;

    // SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31(STALLREG,1330)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_r_data1 <= 1'bx;
            SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_r_valid <= SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_backStall & (SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_r_valid | SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_i_valid);

            if (SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_b);
                SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_r_data1 <= i_reduction_bicg_1_bicg23_q;
                SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_r_data2 <= i_first_cleanup_xor_bicg2_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_and0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_V2;
    assign SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_and1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_V1 & SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_and0;
    assign SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_i_valid = SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_V0 & SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_and1;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_backStall = SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_r_valid | ~ (SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_V = SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_r_valid : SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_D0 = SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_r_data0 : bubble_select_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_D1 = SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_r_data1 : i_reduction_bicg_1_bicg23_q;
    // Data2
    assign SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_D2 = SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_r_data2 : i_first_cleanup_xor_bicg2_q;

    // SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29(STALLENABLE,836)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_fromReg0 <= SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_fromReg1 <= SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_consumed0 = (~ (SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_backStall) & SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_wireValid) | SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_fromReg0;
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_consumed1 = (~ (redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_stall_out) & SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_wireValid) | SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_StallValid = SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_backStall & SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_wireValid;
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_toReg0 = SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_StallValid & SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_consumed0;
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_toReg1 = SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_StallValid & SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_or0 = SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_consumed0;
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_wireStall = ~ (SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_consumed1 & SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_or0);
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_backStall = SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_V0 = SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_wireValid & ~ (SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_fromReg0);
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_V1 = SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_wireValid & ~ (SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_wireValid = i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_valid_out;

    // redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo(STALLFIFO,521)
    assign redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_valid_in = SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_V1;
    assign redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_stall_in = SE_out_redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_backStall;
    assign redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_data_in = bubble_select_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_b;
    assign redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_valid_in_bitsignaltemp = redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_valid_in[0];
    assign redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_stall_in_bitsignaltemp = redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_stall_in[0];
    assign redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_valid_out[0] = redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_valid_out_bitsignaltemp;
    assign redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_stall_out[0] = redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(66),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(64),
        .IMPL("ram")
    ) theredist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo (
        .valid_in(redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_valid_in_bitsignaltemp),
        .stall_in(redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_b),
        .valid_out(redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_valid_out_bitsignaltemp),
        .stall_out(redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_stall_out_bitsignaltemp),
        .data_out(redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo(STALLENABLE,973)
    // Valid signal propagation
    assign SE_out_redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_V0 = SE_out_redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_backStall = i_llvm_fpga_push_p1025i32_mptr_bitcast_index8433_push23_bicg30_out_stall_out | ~ (SE_out_redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_and0 = redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_valid_out;
    assign SE_out_redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_V7 & SE_out_redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_and0;

    // SE_out_i_llvm_fpga_push_i6_fpga_indvars_iv_push13_bicg62(STALLENABLE,866)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i6_fpga_indvars_iv_push13_bicg62_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i6_fpga_indvars_iv_push13_bicg62_wireValid = i_llvm_fpga_push_i6_fpga_indvars_iv_push13_bicg62_out_valid_out;

    // c_i6_177(CONSTANT,65)
    assign c_i6_177_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next_bicg61(ADD,80)@70
    assign i_fpga_indvars_iv_next_bicg61_a = {1'b0, bubble_select_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_b};
    assign i_fpga_indvars_iv_next_bicg61_b = {1'b0, c_i6_177_q};
    assign i_fpga_indvars_iv_next_bicg61_o = $unsigned(i_fpga_indvars_iv_next_bicg61_a) + $unsigned(i_fpga_indvars_iv_next_bicg61_b);
    assign i_fpga_indvars_iv_next_bicg61_q = i_fpga_indvars_iv_next_bicg61_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next_bicg61_sel_x(BITSELECT,5)@70
    assign bgTrunc_i_fpga_indvars_iv_next_bicg61_sel_x_b = i_fpga_indvars_iv_next_bicg61_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv_push13_bicg62(BLACKBOX,121)@70
    // in in_stall_in@20000000
    // out out_data_out@71
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    // out out_stall_out@20000000
    // out out_valid_out@71
    bicg_i_llvm_fpga_push_i6_fpga_indvars_iv_push13_0 thei_llvm_fpga_push_i6_fpga_indvars_iv_push13_bicg62 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_bicg61_sel_x_b),
        .in_feedback_stall_in_13(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_out_feedback_stall_out_13),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_bicg4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i6_fpga_indvars_iv_push13_bicg62_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push13_bicg62_V0),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i6_fpga_indvars_iv_push13_bicg62_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i6_fpga_indvars_iv_push13_bicg62_out_feedback_valid_out_13),
        .out_stall_out(i_llvm_fpga_push_i6_fpga_indvars_iv_push13_bicg62_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i6_fpga_indvars_iv_push13_bicg62_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push13_bicg62(STALLENABLE,865)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push13_bicg62_V0 = SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push13_bicg62_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push13_bicg62_backStall = i_llvm_fpga_push_i6_fpga_indvars_iv_push13_bicg62_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push13_bicg62_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push13_bicg62_and0 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_V2;
    assign SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push13_bicg62_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_V6 & SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push13_bicg62_and0;

    // SE_out_redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo(STALLENABLE,985)
    // Valid signal propagation
    assign SE_out_redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_V0 = SE_out_redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_backStall = i_llvm_fpga_push_i32_mul32_push22_bicg12_out_stall_out | ~ (SE_out_redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_and0 = redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_valid_out;
    assign SE_out_redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_V5 & SE_out_redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_and0;

    // c_i32_174(CONSTANT,64)
    assign c_i32_174_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_bicg51(ADD,81)@70
    assign i_inc_bicg51_a = {1'b0, bubble_select_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_b};
    assign i_inc_bicg51_b = {1'b0, c_i32_174_q};
    assign i_inc_bicg51_o = $unsigned(i_inc_bicg51_a) + $unsigned(i_inc_bicg51_b);
    assign i_inc_bicg51_q = i_inc_bicg51_o[32:0];

    // bgTrunc_i_inc_bicg51_sel_x(BITSELECT,6)@70
    assign bgTrunc_i_inc_bicg51_sel_x_b = i_inc_bicg51_q[31:0];

    // SR_SE_bgTrunc_i_inc_bicg51_sel_x(STALLREG,1370)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_bgTrunc_i_inc_bicg51_sel_x_r_valid <= 1'b0;
            SR_SE_bgTrunc_i_inc_bicg51_sel_x_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_bgTrunc_i_inc_bicg51_sel_x_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_bgTrunc_i_inc_bicg51_sel_x_r_valid <= SE_bgTrunc_i_inc_bicg51_sel_x_backStall & (SR_SE_bgTrunc_i_inc_bicg51_sel_x_r_valid | SR_SE_bgTrunc_i_inc_bicg51_sel_x_i_valid);

            if (SR_SE_bgTrunc_i_inc_bicg51_sel_x_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_bgTrunc_i_inc_bicg51_sel_x_r_data0 <= bgTrunc_i_inc_bicg51_sel_x_b;
                SR_SE_bgTrunc_i_inc_bicg51_sel_x_r_data1 <= $unsigned(bubble_select_i_llvm_fpga_pipeline_keep_going_bicg4_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_bgTrunc_i_inc_bicg51_sel_x_and0 = SE_out_redist27_i_llvm_fpga_pop_i32_j_070_pop15_bicg10_out_data_out_68_fifo_V1;
    assign SR_SE_bgTrunc_i_inc_bicg51_sel_x_i_valid = SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_V4 & SR_SE_bgTrunc_i_inc_bicg51_sel_x_and0;
    // Stall signal propagation
    assign SR_SE_bgTrunc_i_inc_bicg51_sel_x_backStall = SR_SE_bgTrunc_i_inc_bicg51_sel_x_r_valid | ~ (SR_SE_bgTrunc_i_inc_bicg51_sel_x_i_valid);

    // Valid
    assign SR_SE_bgTrunc_i_inc_bicg51_sel_x_V = SR_SE_bgTrunc_i_inc_bicg51_sel_x_r_valid == 1'b1 ? SR_SE_bgTrunc_i_inc_bicg51_sel_x_r_valid : SR_SE_bgTrunc_i_inc_bicg51_sel_x_i_valid;

    // Data0
    assign SR_SE_bgTrunc_i_inc_bicg51_sel_x_D0 = SR_SE_bgTrunc_i_inc_bicg51_sel_x_r_valid == 1'b1 ? SR_SE_bgTrunc_i_inc_bicg51_sel_x_r_data0 : bgTrunc_i_inc_bicg51_sel_x_b;
    // Data1
    assign SR_SE_bgTrunc_i_inc_bicg51_sel_x_D1 = SR_SE_bgTrunc_i_inc_bicg51_sel_x_r_valid == 1'b1 ? SR_SE_bgTrunc_i_inc_bicg51_sel_x_r_data1 : bubble_select_i_llvm_fpga_pipeline_keep_going_bicg4_b;

    // redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo(STALLFIFO,541)
    assign redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_valid_in = SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_V0;
    assign redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_stall_in = SE_out_redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_backStall;
    assign redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_data_in = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_b;
    assign redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_valid_in_bitsignaltemp = redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_valid_in[0];
    assign redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_stall_in_bitsignaltemp = redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_stall_in[0];
    assign redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_valid_out[0] = redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_valid_out_bitsignaltemp;
    assign redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_stall_out[0] = redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(66),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(2),
        .IMPL("ram")
    ) theredist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo (
        .valid_in(redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_valid_in_bitsignaltemp),
        .stall_in(redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_b),
        .valid_out(redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_valid_out_bitsignaltemp),
        .stall_out(redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_stall_out_bitsignaltemp),
        .data_out(redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo(STALLENABLE,996)
    // Valid signal propagation
    assign SE_out_redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_V0 = SE_out_redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_backStall = i_llvm_fpga_push_i2_cleanups_push19_bicg60_out_stall_out | ~ (SE_out_redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_and0 = redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_valid_out;
    assign SE_out_redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_and1 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_V4 & SE_out_redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_and0;
    assign SE_out_redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_and2 = SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_V0 & SE_out_redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_and1;
    assign SE_out_redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_V3 & SE_out_redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_and2;

    // SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo(STALLENABLE,1006)
    // Valid signal propagation
    assign SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_V0 = SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_backStall = i_llvm_fpga_push_i1_memdep_phi_pop1031_push21_bicg18_out_stall_out | ~ (SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_and0 = redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_valid_out;
    assign SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_V2 & SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_and0;

    // SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo(STALLENABLE,1014)
    // Valid signal propagation
    assign SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_V0 = SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_backStall = i_llvm_fpga_push_i1_memdep_phi5_pop1136_push26_bicg35_out_stall_out | ~ (SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_and0 = redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_valid_out;
    assign SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_V1 & SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_and0;

    // bubble_out_i_llvm_fpga_pipeline_keep_going_bicg4_1_reg(STALLFIFO,1307)
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_bicg4_1_reg_valid_in = SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_V0;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_bicg4_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_backStall;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_bicg4_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_bicg4_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_bicg4_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_bicg4_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_bicg4_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_bicg4_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_bicg4_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_bicg4_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(42),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pipeline_keep_going_bicg4_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pipeline_keep_going_bicg4_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pipeline_keep_going_bicg4_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pipeline_keep_going_bicg4_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pipeline_keep_going_bicg4_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pipeline_keep_going_bicg4(STALLENABLE,806)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_fromReg4 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_fromReg5 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_fromReg6 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_fromReg7 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_fromReg8 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_fromReg0 <= SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_fromReg1 <= SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_fromReg2 <= SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_fromReg3 <= SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_fromReg4 <= SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_toReg4;
            // Successor 5
            SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_fromReg5 <= SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_toReg5;
            // Successor 6
            SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_fromReg6 <= SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_toReg6;
            // Successor 7
            SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_fromReg7 <= SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_toReg7;
            // Successor 8
            SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_fromReg8 <= SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_toReg8;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_consumed0 = (~ (bubble_out_i_llvm_fpga_pipeline_keep_going_bicg4_1_reg_stall_out) & SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_fromReg0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_consumed1 = (~ (SE_out_redist37_i_llvm_fpga_pop_i1_memdep_phi5_pop1136_pop26_bicg34_out_data_out_68_fifo_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_fromReg1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_consumed2 = (~ (SE_out_redist33_i_llvm_fpga_pop_i1_memdep_phi_pop1031_pop21_bicg17_out_data_out_68_fifo_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_fromReg2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_consumed3 = (~ (SE_out_redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_fromReg3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_consumed4 = (~ (SR_SE_bgTrunc_i_inc_bicg51_sel_x_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_fromReg4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_consumed5 = (~ (SE_out_redist25_i_llvm_fpga_pop_i32_mul32_pop22_bicg11_out_data_out_68_fifo_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_fromReg5;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_consumed6 = (~ (SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push13_bicg62_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_fromReg6;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_consumed7 = (~ (SE_out_redist21_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out_65_fifo_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_fromReg7;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_consumed8 = (~ (SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_0_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_fromReg8;
    // Consuming
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_StallValid = SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_backStall & SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_wireValid;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_toReg0 = SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_toReg1 = SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_consumed1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_toReg2 = SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_consumed2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_toReg3 = SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_consumed3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_toReg4 = SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_consumed4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_toReg5 = SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_consumed5;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_toReg6 = SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_consumed6;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_toReg7 = SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_consumed7;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_toReg8 = SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_consumed8;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_or0 = SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_or1 = SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_consumed1 & SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_or0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_or2 = SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_consumed2 & SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_or1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_or3 = SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_consumed3 & SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_or2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_or4 = SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_consumed4 & SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_or3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_or5 = SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_consumed5 & SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_or4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_or6 = SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_consumed6 & SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_or5;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_or7 = SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_consumed7 & SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_or6;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_wireStall = ~ (SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_consumed8 & SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_or7);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_backStall = SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_V0 = SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_fromReg0);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_V1 = SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_fromReg1);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_V2 = SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_fromReg2);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_V3 = SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_fromReg3);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_V4 = SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_fromReg4);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_V5 = SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_fromReg5);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_V6 = SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_fromReg6);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_V7 = SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_fromReg7);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_V8 = SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_fromReg8);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_wireValid = i_llvm_fpga_pipeline_keep_going_bicg4_out_valid_out;

    // SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_0(STALLENABLE,1020)
    // Valid signal propagation
    assign SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_0_V0 = SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_0_R_v_0;
    // Stall signal propagation
    assign SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_0_s_tv_0 = SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_backStall & SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_0_R_v_0;
    // Backward Enable generation
    assign SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_0_backEN = ~ (SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_0_v_s_0 = SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_0_backEN & SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_V8;
    // Backward Stall generation
    assign SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_0_backStall = ~ (SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_0_backEN == 1'b0)
            begin
                SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_0_R_v_0 <= SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_0_R_v_0 & SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_0_s_tv_0;
            end
            else
            begin
                SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_0_R_v_0 <= SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_0_v_s_0;
            end

        end
    end

    // SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1(STALLREG,1364)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_r_valid <= 1'b0;
            SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_r_valid <= SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_backStall & (SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_r_valid | SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_i_valid);

            if (SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_r_data0 <= $unsigned(redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_i_valid = SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_0_V0;
    // Stall signal propagation
    assign SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_backStall = SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_r_valid | ~ (SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_i_valid);

    // Valid
    assign SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_V = SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_r_valid == 1'b1 ? SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_r_valid : SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_i_valid;

    assign SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_D0 = SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_r_valid == 1'b1 ? SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_r_data0 : redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_0_q;

    // redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1(REG,561)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_backEN == 1'b1)
        begin
            redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_q <= $unsigned(SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_D0);
        end
    end

    // SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1(STALLENABLE,1021)
    // Valid signal propagation
    assign SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_V0 = SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_R_v_0;
    // Stall signal propagation
    assign SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_s_tv_0 = SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_backStall & SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_R_v_0;
    // Backward Enable generation
    assign SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_backEN = ~ (SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_v_s_0 = SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_backEN & SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_V;
    // Backward Stall generation
    assign SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_backStall = ~ (SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_backEN == 1'b0)
            begin
                SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_R_v_0 <= SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_R_v_0 & SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_s_tv_0;
            end
            else
            begin
                SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_R_v_0 <= SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_v_s_0;
            end

        end
    end

    // SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2(STALLREG,1365)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_r_valid <= 1'b0;
            SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_r_valid <= SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_backStall & (SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_r_valid | SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_i_valid);

            if (SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_r_data0 <= $unsigned(redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_i_valid = SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_V0;
    // Stall signal propagation
    assign SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_backStall = SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_r_valid | ~ (SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_i_valid);

    // Valid
    assign SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_V = SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_r_valid == 1'b1 ? SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_r_valid : SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_i_valid;

    assign SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_D0 = SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_r_valid == 1'b1 ? SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_r_data0 : redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_1_q;

    // redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2(REG,562)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_backEN == 1'b1)
        begin
            redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_q <= $unsigned(SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_D0);
        end
    end

    // SE_out_i_llvm_fpga_push_i1_memdep_phi7_pop1237_push27_bicg20(STALLENABLE,848)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi7_pop1237_push27_bicg20_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi7_pop1237_push27_bicg20_wireValid = i_llvm_fpga_push_i1_memdep_phi7_pop1237_push27_bicg20_out_valid_out;

    // bubble_join_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo(BITJOIN,726)
    assign bubble_join_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_q = redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_data_out;

    // bubble_select_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo(BITSELECT,727)
    assign bubble_select_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_b = $unsigned(bubble_join_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi7_pop1237_push27_bicg20(BLACKBOX,112)@73
    // in in_stall_in@20000000
    // out out_data_out@74
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    // out out_stall_out@20000000
    // out out_valid_out@74
    bicg_i_llvm_fpga_push_i1_memdep_phi7_pop1237_push27_0 thei_llvm_fpga_push_i1_memdep_phi7_pop1237_push27_bicg20 (
        .in_data_in(bubble_select_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_b),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_feedback_stall_out_27),
        .in_keep_going(redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi7_pop1237_push27_bicg20_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi7_pop1237_push27_bicg20_V0),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_i1_memdep_phi7_pop1237_push27_bicg20_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_i1_memdep_phi7_pop1237_push27_bicg20_out_feedback_valid_out_27),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi7_pop1237_push27_bicg20_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi7_pop1237_push27_bicg20_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_memdep_phi7_pop1237_push27_bicg20(STALLENABLE,847)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi7_pop1237_push27_bicg20_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi7_pop1237_push27_bicg20_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi7_pop1237_push27_bicg20_backStall = i_llvm_fpga_push_i1_memdep_phi7_pop1237_push27_bicg20_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi7_pop1237_push27_bicg20_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi7_pop1237_push27_bicg20_and0 = SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_V1;
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi7_pop1237_push27_bicg20_wireValid = SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_V0 & SE_in_i_llvm_fpga_push_i1_memdep_phi7_pop1237_push27_bicg20_and0;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi1_push16_bicg40(STALLENABLE,842)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi1_push16_bicg40_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi1_push16_bicg40_wireValid = i_llvm_fpga_push_i1_memdep_phi1_push16_bicg40_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi1_push16_bicg40(BLACKBOX,109)@73
    // in in_stall_in@20000000
    // out out_data_out@74
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    // out out_stall_out@20000000
    // out out_valid_out@74
    bicg_i_llvm_fpga_push_i1_memdep_phi1_push16_0 thei_llvm_fpga_push_i1_memdep_phi1_push16_bicg40 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_bicg39_b),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_out_feedback_stall_out_16),
        .in_keep_going(redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi1_push16_bicg40_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi1_push16_bicg40_V0),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i1_memdep_phi1_push16_bicg40_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i1_memdep_phi1_push16_bicg40_out_feedback_valid_out_16),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi1_push16_bicg40_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi1_push16_bicg40_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_memdep_phi1_push16_bicg40(STALLENABLE,841)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi1_push16_bicg40_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi1_push16_bicg40_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi1_push16_bicg40_backStall = i_llvm_fpga_push_i1_memdep_phi1_push16_bicg40_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi1_push16_bicg40_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi1_push16_bicg40_and0 = SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_V0;
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi1_push16_bicg40_wireValid = SE_out_i_llvm_fpga_mem_memdep_bicg39_V0 & SE_in_i_llvm_fpga_push_i1_memdep_phi1_push16_bicg40_and0;

    // SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2(STALLENABLE,1022)
    // Valid signal propagation
    assign SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_V0 = SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_R_v_0;
    assign SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_V1 = SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_R_v_1;
    assign SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_V2 = SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_R_v_2;
    // Stall signal propagation
    assign SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_s_tv_0 = SE_in_i_llvm_fpga_push_i1_memdep_phi1_push16_bicg40_backStall & SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_R_v_0;
    assign SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_s_tv_1 = SE_in_i_llvm_fpga_push_i1_memdep_phi7_pop1237_push27_bicg20_backStall & SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_R_v_1;
    assign SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_s_tv_2 = redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_stall_out & SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_R_v_2;
    // Backward Enable generation
    assign SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_or0 = SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_s_tv_0;
    assign SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_or1 = SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_s_tv_1 | SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_or0;
    assign SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_backEN = ~ (SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_s_tv_2 | SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_v_s_0 = SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_backEN & SR_SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_V;
    // Backward Stall generation
    assign SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_backStall = ~ (SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_R_v_0 <= 1'b0;
            SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_R_v_1 <= 1'b0;
            SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_backEN == 1'b0)
            begin
                SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_R_v_0 <= SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_R_v_0 & SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_s_tv_0;
            end
            else
            begin
                SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_R_v_0 <= SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_v_s_0;
            end

            if (SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_backEN == 1'b0)
            begin
                SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_R_v_1 <= SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_R_v_1 & SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_s_tv_1;
            end
            else
            begin
                SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_R_v_1 <= SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_v_s_0;
            end

            if (SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_backEN == 1'b0)
            begin
                SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_R_v_2 <= SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_R_v_2 & SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_s_tv_2;
            end
            else
            begin
                SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_R_v_2 <= SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_v_s_0;
            end

        end
    end

    // redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo(STALLFIFO,563)
    assign redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_valid_in = SE_redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_V2;
    assign redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_stall_in = SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_backStall;
    assign redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_data_in = redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_q;
    assign redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_valid_in_bitsignaltemp = redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_valid_in[0];
    assign redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_stall_in_bitsignaltemp = redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_stall_in[0];
    assign redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_valid_out[0] = redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_valid_out_bitsignaltemp;
    assign redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_stall_out[0] = redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo (
        .valid_in(redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_valid_in_bitsignaltemp),
        .stall_in(redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_stall_in_bitsignaltemp),
        .data_in(redist40_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_3_2_q),
        .valid_out(redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_valid_out_bitsignaltemp),
        .stall_out(redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_stall_out_bitsignaltemp),
        .data_out(redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo(BITJOIN,735)
    assign bubble_join_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_q = redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_data_out;

    // bubble_select_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo(BITSELECT,736)
    assign bubble_select_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_b = $unsigned(bubble_join_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_q[0:0]);

    // i_last_initeration_bicg8_sel_x(BITSELECT,27)@105
    assign i_last_initeration_bicg8_sel_x_b = i_next_initerations_bicg6_vt_join_q[0:0];

    // SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo(STALLENABLE,1024)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_fromReg0 <= '0;
            SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_fromReg0 <= SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_toReg0;
            // Successor 1
            SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_fromReg1 <= SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_consumed0 = (~ (SR_SE_i_next_initerations_bicg6_vt_select_0_backStall) & SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_wireValid) | SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_fromReg0;
    assign SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_consumed1 = (~ (SR_SE_redist42_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_40_0_backStall) & SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_wireValid) | SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_fromReg1;
    // Consuming
    assign SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_StallValid = SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_backStall & SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_wireValid;
    assign SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_toReg0 = SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_StallValid & SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_consumed0;
    assign SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_toReg1 = SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_StallValid & SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_or0 = SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_consumed0;
    assign SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_wireStall = ~ (SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_consumed1 & SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_or0);
    assign SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_backStall = SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_V0 = SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_wireValid & ~ (SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_fromReg0);
    assign SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_V1 = SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_wireValid & ~ (SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_wireValid = redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_valid_out;

    // SE_out_i_llvm_fpga_push_i1_lastiniteration_bicg9(STALLENABLE,840)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_bicg9_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_bicg9_wireValid = i_llvm_fpga_push_i1_lastiniteration_bicg9_out_valid_out;

    // i_llvm_fpga_push_i1_lastiniteration_bicg9(BLACKBOX,108)@105
    // in in_stall_in@20000000
    // out out_data_out@106
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    // out out_stall_out@20000000
    // out out_valid_out@106
    bicg_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_bicg9 (
        .in_data_in(SR_SE_i_next_initerations_bicg6_vt_select_0_D0),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_bicg4_out_initeration_stall_out),
        .in_keep_going(SR_SE_i_next_initerations_bicg6_vt_select_0_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_lastiniteration_bicg9_backStall),
        .in_valid_in(SE_i_next_initerations_bicg6_vt_select_0_V0),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_bicg9_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_bicg9_out_feedback_valid_out_2),
        .out_stall_out(i_llvm_fpga_push_i1_lastiniteration_bicg9_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_lastiniteration_bicg9_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_next_initerations_bicg6_vt_select_0(STALLENABLE,875)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_next_initerations_bicg6_vt_select_0_fromReg0 <= '0;
            SE_i_next_initerations_bicg6_vt_select_0_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_next_initerations_bicg6_vt_select_0_fromReg0 <= SE_i_next_initerations_bicg6_vt_select_0_toReg0;
            // Successor 1
            SE_i_next_initerations_bicg6_vt_select_0_fromReg1 <= SE_i_next_initerations_bicg6_vt_select_0_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_next_initerations_bicg6_vt_select_0_consumed0 = (~ (i_llvm_fpga_push_i1_lastiniteration_bicg9_out_stall_out) & SE_i_next_initerations_bicg6_vt_select_0_wireValid) | SE_i_next_initerations_bicg6_vt_select_0_fromReg0;
    assign SE_i_next_initerations_bicg6_vt_select_0_consumed1 = (~ (i_llvm_fpga_push_i2_initerations_push18_bicg7_out_stall_out) & SE_i_next_initerations_bicg6_vt_select_0_wireValid) | SE_i_next_initerations_bicg6_vt_select_0_fromReg1;
    // Consuming
    assign SE_i_next_initerations_bicg6_vt_select_0_StallValid = SE_i_next_initerations_bicg6_vt_select_0_backStall & SE_i_next_initerations_bicg6_vt_select_0_wireValid;
    assign SE_i_next_initerations_bicg6_vt_select_0_toReg0 = SE_i_next_initerations_bicg6_vt_select_0_StallValid & SE_i_next_initerations_bicg6_vt_select_0_consumed0;
    assign SE_i_next_initerations_bicg6_vt_select_0_toReg1 = SE_i_next_initerations_bicg6_vt_select_0_StallValid & SE_i_next_initerations_bicg6_vt_select_0_consumed1;
    // Backward Stall generation
    assign SE_i_next_initerations_bicg6_vt_select_0_or0 = SE_i_next_initerations_bicg6_vt_select_0_consumed0;
    assign SE_i_next_initerations_bicg6_vt_select_0_wireStall = ~ (SE_i_next_initerations_bicg6_vt_select_0_consumed1 & SE_i_next_initerations_bicg6_vt_select_0_or0);
    assign SE_i_next_initerations_bicg6_vt_select_0_backStall = SE_i_next_initerations_bicg6_vt_select_0_wireStall;
    // Valid signal propagation
    assign SE_i_next_initerations_bicg6_vt_select_0_V0 = SE_i_next_initerations_bicg6_vt_select_0_wireValid & ~ (SE_i_next_initerations_bicg6_vt_select_0_fromReg0);
    assign SE_i_next_initerations_bicg6_vt_select_0_V1 = SE_i_next_initerations_bicg6_vt_select_0_wireValid & ~ (SE_i_next_initerations_bicg6_vt_select_0_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_next_initerations_bicg6_vt_select_0_wireValid = SR_SE_i_next_initerations_bicg6_vt_select_0_V;

    // SR_SE_i_next_initerations_bicg6_vt_select_0(STALLREG,1369)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_next_initerations_bicg6_vt_select_0_r_valid <= 1'b0;
            SR_SE_i_next_initerations_bicg6_vt_select_0_r_data0 <= 1'bx;
            SR_SE_i_next_initerations_bicg6_vt_select_0_r_data1 <= 1'bx;
            SR_SE_i_next_initerations_bicg6_vt_select_0_r_data2 <= 1'bx;
            SR_SE_i_next_initerations_bicg6_vt_select_0_r_data3 <= 2'bxx;
        end
        else
        begin
            // Valid
            SR_SE_i_next_initerations_bicg6_vt_select_0_r_valid <= SE_i_next_initerations_bicg6_vt_select_0_backStall & (SR_SE_i_next_initerations_bicg6_vt_select_0_r_valid | SR_SE_i_next_initerations_bicg6_vt_select_0_i_valid);

            if (SR_SE_i_next_initerations_bicg6_vt_select_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_next_initerations_bicg6_vt_select_0_r_data0 <= i_last_initeration_bicg8_sel_x_b;
                SR_SE_i_next_initerations_bicg6_vt_select_0_r_data1 <= $unsigned(bubble_select_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_b);
                SR_SE_i_next_initerations_bicg6_vt_select_0_r_data2 <= $unsigned(bubble_select_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_b);
                SR_SE_i_next_initerations_bicg6_vt_select_0_r_data3 <= i_next_initerations_bicg6_vt_join_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_next_initerations_bicg6_vt_select_0_and0 = SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_V1;
    assign SR_SE_i_next_initerations_bicg6_vt_select_0_i_valid = SE_out_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_V0 & SR_SE_i_next_initerations_bicg6_vt_select_0_and0;
    // Stall signal propagation
    assign SR_SE_i_next_initerations_bicg6_vt_select_0_backStall = SR_SE_i_next_initerations_bicg6_vt_select_0_r_valid | ~ (SR_SE_i_next_initerations_bicg6_vt_select_0_i_valid);

    // Valid
    assign SR_SE_i_next_initerations_bicg6_vt_select_0_V = SR_SE_i_next_initerations_bicg6_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_bicg6_vt_select_0_r_valid : SR_SE_i_next_initerations_bicg6_vt_select_0_i_valid;

    // Data0
    assign SR_SE_i_next_initerations_bicg6_vt_select_0_D0 = SR_SE_i_next_initerations_bicg6_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_bicg6_vt_select_0_r_data0 : i_last_initeration_bicg8_sel_x_b;
    // Data1
    assign SR_SE_i_next_initerations_bicg6_vt_select_0_D1 = SR_SE_i_next_initerations_bicg6_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_bicg6_vt_select_0_r_data1 : bubble_select_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_b;
    // Data2
    assign SR_SE_i_next_initerations_bicg6_vt_select_0_D2 = SR_SE_i_next_initerations_bicg6_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_bicg6_vt_select_0_r_data2 : bubble_select_redist41_i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out_35_fifo_b;
    // Data3
    assign SR_SE_i_next_initerations_bicg6_vt_select_0_D3 = SR_SE_i_next_initerations_bicg6_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_bicg6_vt_select_0_r_data3 : i_next_initerations_bicg6_vt_join_q;

    // bubble_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_1_reg(STALLFIFO,1310)
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_V0;
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(7),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5(STALLENABLE,824)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_fromReg0 <= SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_fromReg1 <= SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_wireValid) | SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_consumed1 = (~ (SR_SE_i_next_initerations_bicg6_vt_select_0_backStall) & SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_wireValid) | SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_StallValid = SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_backStall & SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_wireValid;
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_toReg0 = SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_StallValid & SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_toReg1 = SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_StallValid & SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_or0 = SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_wireStall = ~ (SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_consumed1 & SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_or0);
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_backStall = SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_V0 = SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_V1 = SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_wireValid = i_llvm_fpga_pop_i2_initerations_pop18_bicg5_out_valid_out;

    // SE_out_i_llvm_fpga_push_i2_initerations_push18_bicg7(STALLENABLE,858)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i2_initerations_push18_bicg7_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i2_initerations_push18_bicg7_wireValid = i_llvm_fpga_push_i2_initerations_push18_bicg7_out_valid_out;

    // i_llvm_fpga_push_i2_initerations_push18_bicg7(BLACKBOX,117)@105
    // in in_stall_in@20000000
    // out out_data_out@106
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    // out out_stall_out@20000000
    // out out_valid_out@106
    bicg_i_llvm_fpga_push_i2_initerations_push18_0 thei_llvm_fpga_push_i2_initerations_push18_bicg7 (
        .in_data_in(SR_SE_i_next_initerations_bicg6_vt_select_0_D3),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i2_initerations_pop18_bicg5_out_feedback_stall_out_18),
        .in_keep_going(SR_SE_i_next_initerations_bicg6_vt_select_0_D2),
        .in_stall_in(SE_out_i_llvm_fpga_push_i2_initerations_push18_bicg7_backStall),
        .in_valid_in(SE_i_next_initerations_bicg6_vt_select_0_V1),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i2_initerations_push18_bicg7_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i2_initerations_push18_bicg7_out_feedback_valid_out_18),
        .out_stall_out(i_llvm_fpga_push_i2_initerations_push18_bicg7_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i2_initerations_push18_bicg7_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo(BITJOIN,759)
    assign bubble_join_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_q = redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_data_out;

    // bubble_select_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo(BITSELECT,760)
    assign bubble_select_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_b = $unsigned(bubble_join_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_q[0:0]);

    // i_llvm_fpga_pop_i2_initerations_pop18_bicg5(BLACKBOX,100)@104
    // in in_stall_in@20000000
    // out out_data_out@105
    // out out_feedback_stall_out_18@20000000
    // out out_stall_out@20000000
    // out out_valid_out@105
    bicg_i_llvm_fpga_pop_i2_initerations_pop18_0 thei_llvm_fpga_pop_i2_initerations_pop18_bicg5 (
        .in_data_in(c_i2_170_q),
        .in_dir(bubble_select_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_b),
        .in_feedback_in_18(i_llvm_fpga_push_i2_initerations_push18_bicg7_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i2_initerations_push18_bicg7_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i2_initerations_pop18_bicg5_backStall),
        .in_valid_in(SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i2_initerations_pop18_bicg5_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i2_initerations_pop18_bicg5_out_feedback_stall_out_18),
        .out_stall_out(i_llvm_fpga_pop_i2_initerations_pop18_bicg5_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i2_initerations_pop18_bicg5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,762)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,763)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[97:0]);

    // sel_for_coalesced_delay_1(BITSELECT,491)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[63:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[95:64]);
    assign sel_for_coalesced_delay_1_d = $unsigned(bubble_select_coalesced_delay_1_fifo_b[96:96]);
    assign sel_for_coalesced_delay_1_e = $unsigned(bubble_select_coalesced_delay_1_fifo_b[97:97]);

    // SR_SE_out_coalesced_delay_1_fifo(STALLREG,1323)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_out_coalesced_delay_1_fifo_r_valid <= 1'b0;
            SR_SE_out_coalesced_delay_1_fifo_r_data0 <= 1'bx;
            SR_SE_out_coalesced_delay_1_fifo_r_data1 <= 1'bx;
            SR_SE_out_coalesced_delay_1_fifo_r_data2 <= 1'bx;
            SR_SE_out_coalesced_delay_1_fifo_r_data3 <= 1'bx;
            SR_SE_out_coalesced_delay_1_fifo_r_data4 <= 1'bx;
            SR_SE_out_coalesced_delay_1_fifo_r_data5 <= 1'bx;
            SR_SE_out_coalesced_delay_1_fifo_r_data6 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_coalesced_delay_1_fifo_r_data7 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_out_coalesced_delay_1_fifo_r_valid <= SE_out_coalesced_delay_1_fifo_backStall & (SR_SE_out_coalesced_delay_1_fifo_r_valid | SR_SE_out_coalesced_delay_1_fifo_i_valid);

            if (SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_out_coalesced_delay_1_fifo_r_data0 <= $unsigned(sel_for_coalesced_delay_1_d);
                SR_SE_out_coalesced_delay_1_fifo_r_data1 <= $unsigned(bubble_select_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_b);
                SR_SE_out_coalesced_delay_1_fifo_r_data2 <= $unsigned(bubble_select_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_b);
                SR_SE_out_coalesced_delay_1_fifo_r_data3 <= $unsigned(bubble_select_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_b);
                SR_SE_out_coalesced_delay_1_fifo_r_data4 <= $unsigned(bubble_select_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_b);
                SR_SE_out_coalesced_delay_1_fifo_r_data5 <= $unsigned(sel_for_coalesced_delay_1_e);
                SR_SE_out_coalesced_delay_1_fifo_r_data6 <= $unsigned(sel_for_coalesced_delay_1_c);
                SR_SE_out_coalesced_delay_1_fifo_r_data7 <= $unsigned(sel_for_coalesced_delay_1_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_valid_out;
    assign SR_SE_out_coalesced_delay_1_fifo_i_valid = SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_V0 & SR_SE_out_coalesced_delay_1_fifo_and0;
    // Stall signal propagation
    assign SR_SE_out_coalesced_delay_1_fifo_backStall = SR_SE_out_coalesced_delay_1_fifo_r_valid | ~ (SR_SE_out_coalesced_delay_1_fifo_i_valid);

    // Valid
    assign SR_SE_out_coalesced_delay_1_fifo_V = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_valid : SR_SE_out_coalesced_delay_1_fifo_i_valid;

    // Data0
    assign SR_SE_out_coalesced_delay_1_fifo_D0 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data0 : sel_for_coalesced_delay_1_d;
    // Data1
    assign SR_SE_out_coalesced_delay_1_fifo_D1 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data1 : bubble_select_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_b;
    // Data2
    assign SR_SE_out_coalesced_delay_1_fifo_D2 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data2 : bubble_select_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_b;
    // Data3
    assign SR_SE_out_coalesced_delay_1_fifo_D3 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data3 : bubble_select_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_b;
    // Data4
    assign SR_SE_out_coalesced_delay_1_fifo_D4 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data4 : bubble_select_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_b;
    // Data5
    assign SR_SE_out_coalesced_delay_1_fifo_D5 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data5 : sel_for_coalesced_delay_1_e;
    // Data6
    assign SR_SE_out_coalesced_delay_1_fifo_D6 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data6 : sel_for_coalesced_delay_1_c;
    // Data7
    assign SR_SE_out_coalesced_delay_1_fifo_D7 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data7 : sel_for_coalesced_delay_1_b;

    // SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo(STALLENABLE,1058)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_fromReg0 <= '0;
            SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_fromReg0 <= SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_toReg0;
            // Successor 1
            SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_fromReg1 <= SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_consumed0 = (~ (SR_SE_out_coalesced_delay_1_fifo_backStall) & SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_wireValid) | SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_fromReg0;
    assign SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_consumed1 = (~ (i_llvm_fpga_pop_i2_initerations_pop18_bicg5_out_stall_out) & SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_wireValid) | SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_fromReg1;
    // Consuming
    assign SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_StallValid = SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_backStall & SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_wireValid;
    assign SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_toReg0 = SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_StallValid & SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_consumed0;
    assign SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_toReg1 = SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_StallValid & SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_or0 = SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_consumed0;
    assign SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_wireStall = ~ (SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_consumed1 & SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_or0);
    assign SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_backStall = SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_V0 = SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_wireValid & ~ (SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_fromReg0);
    assign SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_V1 = SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_wireValid & ~ (SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_wireValid = redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_valid_out;

    // redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo(STALLFIFO,589)
    assign redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_valid_in = SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_V2;
    assign redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_stall_in = SE_out_redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_backStall;
    assign redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_data_in = bubble_select_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_b;
    assign redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_valid_in_bitsignaltemp = redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_valid_in[0];
    assign redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_stall_in_bitsignaltemp = redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_stall_in[0];
    assign redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_valid_out[0] = redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_valid_out_bitsignaltemp;
    assign redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_stall_out[0] = redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(36),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo (
        .valid_in(redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_valid_in_bitsignaltemp),
        .stall_in(redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_b),
        .valid_out(redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_valid_out_bitsignaltemp),
        .stall_out(redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_stall_out_bitsignaltemp),
        .data_out(redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_2875(CONSTANT,66)
    assign c_i6_2875_q = $unsigned(6'b011100);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53(BLACKBOX,104)@69
    // in in_stall_in@20000000
    // out out_data_out@70
    // out out_feedback_stall_out_13@20000000
    // out out_stall_out@20000000
    // out out_valid_out@70
    bicg_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53 (
        .in_data_in(c_i6_2875_q),
        .in_dir(bubble_select_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_b),
        .in_feedback_in_13(i_llvm_fpga_push_i6_fpga_indvars_iv_push13_bicg62_out_feedback_out_13),
        .in_feedback_valid_in_13(i_llvm_fpga_push_i6_fpga_indvars_iv_push13_bicg62_out_feedback_valid_out_13),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_backStall),
        .in_valid_in(SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_out_feedback_stall_out_13),
        .out_stall_out(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_bicg4(BLACKBOX,91)@69
    // in in_stall_in@20000000
    // out out_data_out@70
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    // out out_stall_out@20000000
    // out out_valid_out@70
    bicg_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_bicg4 (
        .in_data_in(bubble_select_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_b),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_bicg9_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_bicg9_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_bicg57_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_bicg57_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(SE_out_i_llvm_fpga_pipeline_keep_going_bicg4_backStall),
        .in_valid_in(SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_V0),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_bicg4_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_bicg4_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_bicg4_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_bicg4_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_bicg4_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_bicg4_out_pipeline_valid_out),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_bicg4_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_bicg4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo(STALLENABLE,1056)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_fromReg0 <= '0;
            SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_fromReg1 <= '0;
            SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_fromReg0 <= SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_toReg0;
            // Successor 1
            SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_fromReg1 <= SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_toReg1;
            // Successor 2
            SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_fromReg2 <= SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_consumed0 = (~ (i_llvm_fpga_pipeline_keep_going_bicg4_out_stall_out) & SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_wireValid) | SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_fromReg0;
    assign SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_consumed1 = (~ (i_llvm_fpga_pop_i6_fpga_indvars_iv_pop13_bicg53_out_stall_out) & SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_wireValid) | SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_fromReg1;
    assign SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_consumed2 = (~ (redist55_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_103_fifo_stall_out) & SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_wireValid) | SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_fromReg2;
    // Consuming
    assign SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_StallValid = SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_backStall & SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_wireValid;
    assign SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_toReg0 = SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_StallValid & SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_consumed0;
    assign SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_toReg1 = SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_StallValid & SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_consumed1;
    assign SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_toReg2 = SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_StallValid & SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_consumed2;
    // Backward Stall generation
    assign SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_or0 = SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_consumed0;
    assign SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_or1 = SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_consumed1 & SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_or0;
    assign SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_wireStall = ~ (SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_consumed2 & SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_or1);
    assign SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_backStall = SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_V0 = SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_wireValid & ~ (SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_fromReg0);
    assign SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_V1 = SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_wireValid & ~ (SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_fromReg1);
    assign SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_V2 = SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_wireValid & ~ (SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_wireValid = redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_valid_out;

    // redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo(STALLFIFO,588)
    assign redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_valid_in = SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_V1;
    assign redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_stall_in = SE_out_redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_backStall;
    assign redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_data_in = SR_SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_D1;
    assign redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_valid_in_bitsignaltemp = redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_valid_in[0];
    assign redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_stall_in_bitsignaltemp = redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_stall_in[0];
    assign redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_valid_out[0] = redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_valid_out_bitsignaltemp;
    assign redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_stall_out[0] = redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(29),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo (
        .valid_in(redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_valid_in_bitsignaltemp),
        .stall_in(redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_stall_in_bitsignaltemp),
        .data_in(SR_SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_D1),
        .valid_out(redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_valid_out_bitsignaltemp),
        .stall_out(redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_stall_out_bitsignaltemp),
        .data_out(redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi3_pop17_bicg37(BLACKBOX,94)@41
    // in in_stall_in@20000000
    // out out_data_out@42
    // out out_feedback_stall_out_17@20000000
    // out out_stall_out@20000000
    // out out_valid_out@42
    bicg_i_llvm_fpga_pop_i1_memdep_phi3_pop17_0 thei_llvm_fpga_pop_i1_memdep_phi3_pop17_bicg37 (
        .in_data_in(GND_q),
        .in_dir(SR_SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_D0),
        .in_feedback_in_17(i_llvm_fpga_push_i1_memdep_phi3_push17_bicg46_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i1_memdep_phi3_push17_bicg46_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_backStall),
        .in_valid_in(SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi3_pop17_bicg37_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i1_memdep_phi3_pop17_bicg37_out_feedback_stall_out_17),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi3_pop17_bicg37_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi3_pop17_bicg37_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo(STALLENABLE,1054)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_fromReg0 <= '0;
            SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_fromReg0 <= SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_toReg0;
            // Successor 1
            SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_fromReg1 <= SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_consumed0 = (~ (i_llvm_fpga_pop_i1_memdep_phi3_pop17_bicg37_out_stall_out) & SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_wireValid) | SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_fromReg0;
    assign SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_consumed1 = (~ (redist54_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_68_fifo_stall_out) & SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_wireValid) | SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_fromReg1;
    // Consuming
    assign SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_StallValid = SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_backStall & SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_wireValid;
    assign SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_toReg0 = SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_StallValid & SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_consumed0;
    assign SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_toReg1 = SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_StallValid & SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_or0 = SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_consumed0;
    assign SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_wireStall = ~ (SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_consumed1 & SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_or0);
    assign SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_backStall = SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_V0 = SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_wireValid & ~ (SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_fromReg0);
    assign SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_V1 = SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_wireValid & ~ (SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_wireValid = SR_SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_V;

    // SR_SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo(STALLREG,1322)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_r_valid <= 1'b0;
            SR_SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_r_data0 <= 1'bx;
            SR_SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_r_valid <= SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_backStall & (SR_SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_r_valid | SR_SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_i_valid);

            if (SR_SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_r_data0 <= $unsigned(bubble_select_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_b);
                SR_SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_r_data1 <= $unsigned(bubble_select_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_i_valid = redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_valid_out;
    // Stall signal propagation
    assign SR_SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_backStall = SR_SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_r_valid | ~ (SR_SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_i_valid);

    // Valid
    assign SR_SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_V = SR_SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_r_valid == 1'b1 ? SR_SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_r_valid : SR_SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_i_valid;

    // Data0
    assign SR_SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_D0 = SR_SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_r_valid == 1'b1 ? SR_SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_r_data0 : bubble_select_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_b;
    // Data1
    assign SR_SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_D1 = SR_SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_r_valid == 1'b1 ? SR_SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_r_data1 : bubble_select_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_b;

    // redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo(STALLFIFO,587)
    assign redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_valid_in = SE_coalesced_delay_0_2_V4;
    assign redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_stall_in = SR_SE_out_redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_backStall;
    assign redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_data_in = sel_for_coalesced_delay_0_c;
    assign redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_valid_in_bitsignaltemp = redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_valid_in[0];
    assign redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_stall_in_bitsignaltemp = redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_stall_in[0];
    assign redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_valid_out[0] = redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_valid_out_bitsignaltemp;
    assign redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_stall_out[0] = redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(38),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo (
        .valid_in(redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_valid_in_bitsignaltemp),
        .stall_in(redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_stall_in_bitsignaltemp),
        .data_in(sel_for_coalesced_delay_0_c),
        .valid_out(redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_valid_out_bitsignaltemp),
        .stall_out(redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_stall_out_bitsignaltemp),
        .data_out(redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29(BLACKBOX,106)@4
    // in in_stall_in@20000000
    // out out_data_out@5
    // out out_feedback_stall_out_23@20000000
    // out out_stall_out@20000000
    // out out_valid_out@5
    bicg_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_0 thei_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29 (
        .in_data_in(sel_for_coalesced_delay_0_b),
        .in_dir(sel_for_coalesced_delay_0_c),
        .in_feedback_in_23(i_llvm_fpga_push_p1025i32_mptr_bitcast_index8433_push23_bicg30_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_p1025i32_mptr_bitcast_index8433_push23_bicg30_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_backStall),
        .in_valid_in(SE_coalesced_delay_0_2_V3),
        .out_data_out(i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_feedback_stall_out_23),
        .out_stall_out(i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19(BLACKBOX,96)@4
    // in in_stall_in@20000000
    // out out_data_out@5
    // out out_feedback_stall_out_27@20000000
    // out out_stall_out@20000000
    // out out_valid_out@5
    bicg_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_0 thei_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19 (
        .in_data_in(sel_for_coalesced_delay_0_d),
        .in_dir(sel_for_coalesced_delay_0_c),
        .in_feedback_in_27(i_llvm_fpga_push_i1_memdep_phi7_pop1237_push27_bicg20_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_i1_memdep_phi7_pop1237_push27_bicg20_out_feedback_valid_out_27),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_backStall),
        .in_valid_in(SE_coalesced_delay_0_2_V1),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_feedback_stall_out_27),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22(BLACKBOX,93)@4
    // in in_stall_in@20000000
    // out out_data_out@5
    // out out_feedback_stall_out_16@20000000
    // out out_stall_out@20000000
    // out out_valid_out@5
    bicg_i_llvm_fpga_pop_i1_memdep_phi1_pop16_0 thei_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22 (
        .in_data_in(GND_q),
        .in_dir(sel_for_coalesced_delay_0_c),
        .in_feedback_in_16(i_llvm_fpga_push_i1_memdep_phi1_push16_bicg40_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i1_memdep_phi1_push16_bicg40_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_backStall),
        .in_valid_in(SE_coalesced_delay_0_2_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_out_feedback_stall_out_16),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // coalesced_delay_0_1(REG,591)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_1_q <= $unsigned(66'b000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_1_backEN == 1'b1)
        begin
            coalesced_delay_0_1_q <= $unsigned(SR_SE_coalesced_delay_0_1_D0);
        end
    end

    // SR_SE_coalesced_delay_0_2(STALLREG,1321)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_0_2_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_2_r_data0 <= 66'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_0_2_r_valid <= SE_coalesced_delay_0_2_backStall & (SR_SE_coalesced_delay_0_2_r_valid | SR_SE_coalesced_delay_0_2_i_valid);

            if (SR_SE_coalesced_delay_0_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_0_2_r_data0 <= $unsigned(coalesced_delay_0_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_0_2_i_valid = SE_coalesced_delay_0_1_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_2_backStall = SR_SE_coalesced_delay_0_2_r_valid | ~ (SR_SE_coalesced_delay_0_2_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_2_V = SR_SE_coalesced_delay_0_2_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_2_r_valid : SR_SE_coalesced_delay_0_2_i_valid;

    assign SR_SE_coalesced_delay_0_2_D0 = SR_SE_coalesced_delay_0_2_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_2_r_data0 : coalesced_delay_0_1_q;

    // SE_coalesced_delay_0_2(STALLENABLE,1061)
    // Valid signal propagation
    assign SE_coalesced_delay_0_2_V0 = SE_coalesced_delay_0_2_R_v_0;
    assign SE_coalesced_delay_0_2_V1 = SE_coalesced_delay_0_2_R_v_1;
    assign SE_coalesced_delay_0_2_V2 = SE_coalesced_delay_0_2_R_v_2;
    assign SE_coalesced_delay_0_2_V3 = SE_coalesced_delay_0_2_R_v_3;
    assign SE_coalesced_delay_0_2_V4 = SE_coalesced_delay_0_2_R_v_4;
    // Stall signal propagation
    assign SE_coalesced_delay_0_2_s_tv_0 = i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_out_stall_out & SE_coalesced_delay_0_2_R_v_0;
    assign SE_coalesced_delay_0_2_s_tv_1 = i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_stall_out & SE_coalesced_delay_0_2_R_v_1;
    assign SE_coalesced_delay_0_2_s_tv_2 = i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_stall_out & SE_coalesced_delay_0_2_R_v_2;
    assign SE_coalesced_delay_0_2_s_tv_3 = i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8433_pop23_bicg29_out_stall_out & SE_coalesced_delay_0_2_R_v_3;
    assign SE_coalesced_delay_0_2_s_tv_4 = redist53_bicg_B3_merge_reg_aunroll_x_out_data_out_0_tpl_40_fifo_stall_out & SE_coalesced_delay_0_2_R_v_4;
    // Backward Enable generation
    assign SE_coalesced_delay_0_2_or0 = SE_coalesced_delay_0_2_s_tv_0;
    assign SE_coalesced_delay_0_2_or1 = SE_coalesced_delay_0_2_s_tv_1 | SE_coalesced_delay_0_2_or0;
    assign SE_coalesced_delay_0_2_or2 = SE_coalesced_delay_0_2_s_tv_2 | SE_coalesced_delay_0_2_or1;
    assign SE_coalesced_delay_0_2_or3 = SE_coalesced_delay_0_2_s_tv_3 | SE_coalesced_delay_0_2_or2;
    assign SE_coalesced_delay_0_2_backEN = ~ (SE_coalesced_delay_0_2_s_tv_4 | SE_coalesced_delay_0_2_or3);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_2_v_s_0 = SE_coalesced_delay_0_2_backEN & SR_SE_coalesced_delay_0_2_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_2_backStall = ~ (SE_coalesced_delay_0_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_2_R_v_0 <= 1'b0;
            SE_coalesced_delay_0_2_R_v_1 <= 1'b0;
            SE_coalesced_delay_0_2_R_v_2 <= 1'b0;
            SE_coalesced_delay_0_2_R_v_3 <= 1'b0;
            SE_coalesced_delay_0_2_R_v_4 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_2_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_2_R_v_0 <= SE_coalesced_delay_0_2_R_v_0 & SE_coalesced_delay_0_2_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_2_R_v_0 <= SE_coalesced_delay_0_2_v_s_0;
            end

            if (SE_coalesced_delay_0_2_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_2_R_v_1 <= SE_coalesced_delay_0_2_R_v_1 & SE_coalesced_delay_0_2_s_tv_1;
            end
            else
            begin
                SE_coalesced_delay_0_2_R_v_1 <= SE_coalesced_delay_0_2_v_s_0;
            end

            if (SE_coalesced_delay_0_2_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_2_R_v_2 <= SE_coalesced_delay_0_2_R_v_2 & SE_coalesced_delay_0_2_s_tv_2;
            end
            else
            begin
                SE_coalesced_delay_0_2_R_v_2 <= SE_coalesced_delay_0_2_v_s_0;
            end

            if (SE_coalesced_delay_0_2_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_2_R_v_3 <= SE_coalesced_delay_0_2_R_v_3 & SE_coalesced_delay_0_2_s_tv_3;
            end
            else
            begin
                SE_coalesced_delay_0_2_R_v_3 <= SE_coalesced_delay_0_2_v_s_0;
            end

            if (SE_coalesced_delay_0_2_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_2_R_v_4 <= SE_coalesced_delay_0_2_R_v_4 & SE_coalesced_delay_0_2_s_tv_4;
            end
            else
            begin
                SE_coalesced_delay_0_2_R_v_4 <= SE_coalesced_delay_0_2_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0(STALLENABLE,822)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_fromReg0 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_fromReg1 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_fromReg2 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_fromReg3 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_fromReg4 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_toReg4;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_consumed0 = (~ (redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_consumed1 = (~ (SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_consumed2 = (~ (SR_SE_in_i_llvm_fpga_mem_unnamed_bicg15_bicg31_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_consumed3 = (~ (SE_redist44_i_first_cleanup_xor_bicg2_q_5_0_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_fromReg3;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_consumed4 = (~ (redist51_i_first_cleanup_bicg1_sel_x_b_65_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_fromReg4;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_StallValid = SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_backStall & SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_wireValid;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_toReg0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_toReg1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_consumed1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_toReg2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_consumed2;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_toReg3 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_consumed3;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_toReg4 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_consumed4;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_or0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_or1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_consumed1 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_or0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_or2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_consumed2 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_or1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_or3 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_consumed3 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_or2;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_wireStall = ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_consumed4 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_or3);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_backStall = SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_V0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_V1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_V2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_V3 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_fromReg3);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_V4 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_fromReg4);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_wireValid = i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_valid_out;

    // SE_out_i_llvm_fpga_push_i2_cleanups_push19_bicg60(STALLENABLE,856)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i2_cleanups_push19_bicg60_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i2_cleanups_push19_bicg60_wireValid = i_llvm_fpga_push_i2_cleanups_push19_bicg60_out_valid_out;

    // leftShiftStage0Idx1Rng1_uid261_i_cleanups_shl_bicg0_shift_x(BITSELECT,260)@70
    assign leftShiftStage0Idx1Rng1_uid261_i_cleanups_shl_bicg0_shift_x_in = bubble_select_redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_b[0:0];
    assign leftShiftStage0Idx1Rng1_uid261_i_cleanups_shl_bicg0_shift_x_b = leftShiftStage0Idx1Rng1_uid261_i_cleanups_shl_bicg0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid262_i_cleanups_shl_bicg0_shift_x(BITJOIN,261)@70
    assign leftShiftStage0Idx1_uid262_i_cleanups_shl_bicg0_shift_x_q = {leftShiftStage0Idx1Rng1_uid261_i_cleanups_shl_bicg0_shift_x_b, GND_q};

    // leftShiftStage0_uid264_i_cleanups_shl_bicg0_shift_x(MUX,263)@70
    assign leftShiftStage0_uid264_i_cleanups_shl_bicg0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid264_i_cleanups_shl_bicg0_shift_x_s or bubble_select_redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_b or leftShiftStage0Idx1_uid262_i_cleanups_shl_bicg0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid264_i_cleanups_shl_bicg0_shift_x_s)
            1'b0 : leftShiftStage0_uid264_i_cleanups_shl_bicg0_shift_x_q = bubble_select_redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_b;
            1'b1 : leftShiftStage0_uid264_i_cleanups_shl_bicg0_shift_x_q = leftShiftStage0Idx1_uid262_i_cleanups_shl_bicg0_shift_x_q;
            default : leftShiftStage0_uid264_i_cleanups_shl_bicg0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_bicg3_vt_select_1(BITSELECT,76)@70
    assign i_cleanups_shl_bicg3_vt_select_1_b = leftShiftStage0_uid264_i_cleanups_shl_bicg0_shift_x_q[1:1];

    // i_cleanups_shl_bicg3_vt_join(BITJOIN,75)@70
    assign i_cleanups_shl_bicg3_vt_join_q = {i_cleanups_shl_bicg3_vt_select_1_b, GND_q};

    // bubble_join_redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo(BITJOIN,717)
    assign bubble_join_redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_q = redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_data_out;

    // bubble_select_redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo(BITSELECT,718)
    assign bubble_select_redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_b = $unsigned(bubble_join_redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_q[1:0]);

    // i_or_bicg58(LOGICAL,133)@70
    assign i_or_bicg58_q = i_notcmp_bicg56_q | bubble_select_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_b;

    // i_next_cleanups_bicg59(MUX,128)@70
    assign i_next_cleanups_bicg59_s = i_or_bicg58_q;
    always @(i_next_cleanups_bicg59_s or bubble_select_redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_b or i_cleanups_shl_bicg3_vt_join_q)
    begin
        unique case (i_next_cleanups_bicg59_s)
            1'b0 : i_next_cleanups_bicg59_q = bubble_select_redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_b;
            1'b1 : i_next_cleanups_bicg59_q = i_cleanups_shl_bicg3_vt_join_q;
            default : i_next_cleanups_bicg59_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push19_bicg60(BLACKBOX,116)@70
    // in in_stall_in@20000000
    // out out_data_out@71
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    // out out_stall_out@20000000
    // out out_valid_out@71
    bicg_i_llvm_fpga_push_i2_cleanups_push19_0 thei_llvm_fpga_push_i2_cleanups_push19_bicg60 (
        .in_data_in(i_next_cleanups_bicg59_q),
        .in_feedback_stall_in_19(i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_feedback_stall_out_19),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_bicg4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i2_cleanups_push19_bicg60_backStall),
        .in_valid_in(SE_out_redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_V0),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_i2_cleanups_push19_bicg60_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_i2_cleanups_push19_bicg60_out_feedback_valid_out_19),
        .out_stall_out(i_llvm_fpga_push_i2_cleanups_push19_bicg60_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i2_cleanups_push19_bicg60_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // coalesced_delay_0_2(REG,592)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_2_q <= $unsigned(66'b000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_2_backEN == 1'b1)
        begin
            coalesced_delay_0_2_q <= $unsigned(SR_SE_coalesced_delay_0_2_D0);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,488)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_2_q[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_2_q[64:64]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_2_q[65:65]);

    // c_i2_170(CONSTANT,62)
    assign c_i2_170_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop19_bicg0(BLACKBOX,99)@4
    // in in_stall_in@20000000
    // out out_data_out@5
    // out out_feedback_stall_out_19@20000000
    // out out_stall_out@20000000
    // out out_valid_out@5
    bicg_i_llvm_fpga_pop_i2_cleanups_pop19_0 thei_llvm_fpga_pop_i2_cleanups_pop19_bicg0 (
        .in_data_in(c_i2_170_q),
        .in_dir(sel_for_coalesced_delay_0_c),
        .in_feedback_in_19(i_llvm_fpga_push_i2_cleanups_push19_bicg60_out_feedback_out_19),
        .in_feedback_valid_in_19(i_llvm_fpga_push_i2_cleanups_push19_bicg60_out_feedback_valid_out_19),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_backStall),
        .in_valid_in(SE_coalesced_delay_0_2_V2),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out),
        .out_feedback_stall_out_19(i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_feedback_stall_out_19),
        .out_stall_out(i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0(BITJOIN,655)
    assign bubble_join_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_q = i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0(BITSELECT,656)
    assign bubble_select_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_b = $unsigned(bubble_join_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_q[1:0]);

    // i_first_cleanup_bicg1_sel_x(BITSELECT,26)@5
    assign i_first_cleanup_bicg1_sel_x_b = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_b[0:0];

    // i_first_cleanup_xor_bicg2(LOGICAL,79)@5
    assign i_first_cleanup_xor_bicg2_q = i_first_cleanup_bicg1_sel_x_b ^ VCC_q;

    // redist44_i_first_cleanup_xor_bicg2_q_5_0(REG,570)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_i_first_cleanup_xor_bicg2_q_5_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist44_i_first_cleanup_xor_bicg2_q_5_0_backEN == 1'b1)
        begin
            redist44_i_first_cleanup_xor_bicg2_q_5_0_q <= $unsigned(i_first_cleanup_xor_bicg2_q);
        end
    end

    // SE_redist44_i_first_cleanup_xor_bicg2_q_5_0(STALLENABLE,1032)
    // Valid signal propagation
    assign SE_redist44_i_first_cleanup_xor_bicg2_q_5_0_V0 = SE_redist44_i_first_cleanup_xor_bicg2_q_5_0_R_v_0;
    // Stall signal propagation
    assign SE_redist44_i_first_cleanup_xor_bicg2_q_5_0_s_tv_0 = SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_backStall & SE_redist44_i_first_cleanup_xor_bicg2_q_5_0_R_v_0;
    // Backward Enable generation
    assign SE_redist44_i_first_cleanup_xor_bicg2_q_5_0_backEN = ~ (SE_redist44_i_first_cleanup_xor_bicg2_q_5_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist44_i_first_cleanup_xor_bicg2_q_5_0_v_s_0 = SE_redist44_i_first_cleanup_xor_bicg2_q_5_0_backEN & SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_V3;
    // Backward Stall generation
    assign SE_redist44_i_first_cleanup_xor_bicg2_q_5_0_backStall = ~ (SE_redist44_i_first_cleanup_xor_bicg2_q_5_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist44_i_first_cleanup_xor_bicg2_q_5_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist44_i_first_cleanup_xor_bicg2_q_5_0_backEN == 1'b0)
            begin
                SE_redist44_i_first_cleanup_xor_bicg2_q_5_0_R_v_0 <= SE_redist44_i_first_cleanup_xor_bicg2_q_5_0_R_v_0 & SE_redist44_i_first_cleanup_xor_bicg2_q_5_0_s_tv_0;
            end
            else
            begin
                SE_redist44_i_first_cleanup_xor_bicg2_q_5_0_R_v_0 <= SE_redist44_i_first_cleanup_xor_bicg2_q_5_0_v_s_0;
            end

        end
    end

    // SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_1(STALLREG,1339)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_r_valid <= 1'b0;
            SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_r_valid <= SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_backStall & (SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_r_valid | SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_i_valid);

            if (SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_r_data0 <= $unsigned(redist44_i_first_cleanup_xor_bicg2_q_5_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_i_valid = SE_redist44_i_first_cleanup_xor_bicg2_q_5_0_V0;
    // Stall signal propagation
    assign SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_backStall = SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_r_valid | ~ (SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_i_valid);

    // Valid
    assign SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_V = SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_r_valid == 1'b1 ? SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_r_valid : SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_i_valid;

    assign SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_D0 = SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_r_valid == 1'b1 ? SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_r_data0 : redist44_i_first_cleanup_xor_bicg2_q_5_0_q;

    // redist44_i_first_cleanup_xor_bicg2_q_5_1(REG,571)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_i_first_cleanup_xor_bicg2_q_5_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_backEN == 1'b1)
        begin
            redist44_i_first_cleanup_xor_bicg2_q_5_1_q <= $unsigned(SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_D0);
        end
    end

    // redist44_i_first_cleanup_xor_bicg2_q_5_2(REG,572)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_i_first_cleanup_xor_bicg2_q_5_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist44_i_first_cleanup_xor_bicg2_q_5_2_backEN == 1'b1)
        begin
            redist44_i_first_cleanup_xor_bicg2_q_5_2_q <= $unsigned(redist44_i_first_cleanup_xor_bicg2_q_5_1_q);
        end
    end

    // SE_redist44_i_first_cleanup_xor_bicg2_q_5_2(STALLENABLE,1034)
    // Valid signal propagation
    assign SE_redist44_i_first_cleanup_xor_bicg2_q_5_2_V0 = SE_redist44_i_first_cleanup_xor_bicg2_q_5_2_R_v_0;
    // Stall signal propagation
    assign SE_redist44_i_first_cleanup_xor_bicg2_q_5_2_s_tv_0 = SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_backStall & SE_redist44_i_first_cleanup_xor_bicg2_q_5_2_R_v_0;
    // Backward Enable generation
    assign SE_redist44_i_first_cleanup_xor_bicg2_q_5_2_backEN = ~ (SE_redist44_i_first_cleanup_xor_bicg2_q_5_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist44_i_first_cleanup_xor_bicg2_q_5_2_v_s_0 = SE_redist44_i_first_cleanup_xor_bicg2_q_5_2_backEN & SE_redist44_i_first_cleanup_xor_bicg2_q_5_1_V0;
    // Backward Stall generation
    assign SE_redist44_i_first_cleanup_xor_bicg2_q_5_2_backStall = ~ (SE_redist44_i_first_cleanup_xor_bicg2_q_5_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist44_i_first_cleanup_xor_bicg2_q_5_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist44_i_first_cleanup_xor_bicg2_q_5_2_backEN == 1'b0)
            begin
                SE_redist44_i_first_cleanup_xor_bicg2_q_5_2_R_v_0 <= SE_redist44_i_first_cleanup_xor_bicg2_q_5_2_R_v_0 & SE_redist44_i_first_cleanup_xor_bicg2_q_5_2_s_tv_0;
            end
            else
            begin
                SE_redist44_i_first_cleanup_xor_bicg2_q_5_2_R_v_0 <= SE_redist44_i_first_cleanup_xor_bicg2_q_5_2_v_s_0;
            end

        end
    end

    // SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_3(STALLREG,1340)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_r_valid <= 1'b0;
            SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_r_valid <= SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_backStall & (SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_r_valid | SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_i_valid);

            if (SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_r_data0 <= $unsigned(redist44_i_first_cleanup_xor_bicg2_q_5_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_i_valid = SE_redist44_i_first_cleanup_xor_bicg2_q_5_2_V0;
    // Stall signal propagation
    assign SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_backStall = SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_r_valid | ~ (SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_i_valid);

    // Valid
    assign SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_V = SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_r_valid == 1'b1 ? SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_r_valid : SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_i_valid;

    assign SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_D0 = SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_r_valid == 1'b1 ? SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_r_data0 : redist44_i_first_cleanup_xor_bicg2_q_5_2_q;

    // redist44_i_first_cleanup_xor_bicg2_q_5_3(REG,573)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_i_first_cleanup_xor_bicg2_q_5_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_backEN == 1'b1)
        begin
            redist44_i_first_cleanup_xor_bicg2_q_5_3_q <= $unsigned(SR_SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_D0);
        end
    end

    // redist44_i_first_cleanup_xor_bicg2_q_5_4(REG,574)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_i_first_cleanup_xor_bicg2_q_5_4_q <= $unsigned(1'b0);
        end
        else if (SE_redist44_i_first_cleanup_xor_bicg2_q_5_4_backEN == 1'b1)
        begin
            redist44_i_first_cleanup_xor_bicg2_q_5_4_q <= $unsigned(redist44_i_first_cleanup_xor_bicg2_q_5_3_q);
        end
    end

    // SE_redist44_i_first_cleanup_xor_bicg2_q_5_4(STALLENABLE,1036)
    // Valid signal propagation
    assign SE_redist44_i_first_cleanup_xor_bicg2_q_5_4_V0 = SE_redist44_i_first_cleanup_xor_bicg2_q_5_4_R_v_0;
    assign SE_redist44_i_first_cleanup_xor_bicg2_q_5_4_V1 = SE_redist44_i_first_cleanup_xor_bicg2_q_5_4_R_v_1;
    // Stall signal propagation
    assign SE_redist44_i_first_cleanup_xor_bicg2_q_5_4_s_tv_0 = SR_SE_in_i_llvm_fpga_mem_unnamed_bicg14_bicg28_backStall & SE_redist44_i_first_cleanup_xor_bicg2_q_5_4_R_v_0;
    assign SE_redist44_i_first_cleanup_xor_bicg2_q_5_4_s_tv_1 = redist45_i_first_cleanup_xor_bicg2_q_37_fifo_stall_out & SE_redist44_i_first_cleanup_xor_bicg2_q_5_4_R_v_1;
    // Backward Enable generation
    assign SE_redist44_i_first_cleanup_xor_bicg2_q_5_4_or0 = SE_redist44_i_first_cleanup_xor_bicg2_q_5_4_s_tv_0;
    assign SE_redist44_i_first_cleanup_xor_bicg2_q_5_4_backEN = ~ (SE_redist44_i_first_cleanup_xor_bicg2_q_5_4_s_tv_1 | SE_redist44_i_first_cleanup_xor_bicg2_q_5_4_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist44_i_first_cleanup_xor_bicg2_q_5_4_v_s_0 = SE_redist44_i_first_cleanup_xor_bicg2_q_5_4_backEN & SE_redist44_i_first_cleanup_xor_bicg2_q_5_3_V0;
    // Backward Stall generation
    assign SE_redist44_i_first_cleanup_xor_bicg2_q_5_4_backStall = ~ (SE_redist44_i_first_cleanup_xor_bicg2_q_5_4_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist44_i_first_cleanup_xor_bicg2_q_5_4_R_v_0 <= 1'b0;
            SE_redist44_i_first_cleanup_xor_bicg2_q_5_4_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist44_i_first_cleanup_xor_bicg2_q_5_4_backEN == 1'b0)
            begin
                SE_redist44_i_first_cleanup_xor_bicg2_q_5_4_R_v_0 <= SE_redist44_i_first_cleanup_xor_bicg2_q_5_4_R_v_0 & SE_redist44_i_first_cleanup_xor_bicg2_q_5_4_s_tv_0;
            end
            else
            begin
                SE_redist44_i_first_cleanup_xor_bicg2_q_5_4_R_v_0 <= SE_redist44_i_first_cleanup_xor_bicg2_q_5_4_v_s_0;
            end

            if (SE_redist44_i_first_cleanup_xor_bicg2_q_5_4_backEN == 1'b0)
            begin
                SE_redist44_i_first_cleanup_xor_bicg2_q_5_4_R_v_1 <= SE_redist44_i_first_cleanup_xor_bicg2_q_5_4_R_v_1 & SE_redist44_i_first_cleanup_xor_bicg2_q_5_4_s_tv_1;
            end
            else
            begin
                SE_redist44_i_first_cleanup_xor_bicg2_q_5_4_R_v_1 <= SE_redist44_i_first_cleanup_xor_bicg2_q_5_4_v_s_0;
            end

        end
    end

    // redist45_i_first_cleanup_xor_bicg2_q_37_fifo(STALLFIFO,575)
    assign redist45_i_first_cleanup_xor_bicg2_q_37_fifo_valid_in = SE_redist44_i_first_cleanup_xor_bicg2_q_5_4_V1;
    assign redist45_i_first_cleanup_xor_bicg2_q_37_fifo_stall_in = SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_backStall;
    assign redist45_i_first_cleanup_xor_bicg2_q_37_fifo_data_in = redist44_i_first_cleanup_xor_bicg2_q_5_4_q;
    assign redist45_i_first_cleanup_xor_bicg2_q_37_fifo_valid_in_bitsignaltemp = redist45_i_first_cleanup_xor_bicg2_q_37_fifo_valid_in[0];
    assign redist45_i_first_cleanup_xor_bicg2_q_37_fifo_stall_in_bitsignaltemp = redist45_i_first_cleanup_xor_bicg2_q_37_fifo_stall_in[0];
    assign redist45_i_first_cleanup_xor_bicg2_q_37_fifo_valid_out[0] = redist45_i_first_cleanup_xor_bicg2_q_37_fifo_valid_out_bitsignaltemp;
    assign redist45_i_first_cleanup_xor_bicg2_q_37_fifo_stall_out[0] = redist45_i_first_cleanup_xor_bicg2_q_37_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist45_i_first_cleanup_xor_bicg2_q_37_fifo (
        .valid_in(redist45_i_first_cleanup_xor_bicg2_q_37_fifo_valid_in_bitsignaltemp),
        .stall_in(redist45_i_first_cleanup_xor_bicg2_q_37_fifo_stall_in_bitsignaltemp),
        .data_in(redist44_i_first_cleanup_xor_bicg2_q_5_4_q),
        .valid_out(redist45_i_first_cleanup_xor_bicg2_q_37_fifo_valid_out_bitsignaltemp),
        .stall_out(redist45_i_first_cleanup_xor_bicg2_q_37_fifo_stall_out_bitsignaltemp),
        .data_out(redist45_i_first_cleanup_xor_bicg2_q_37_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist45_i_first_cleanup_xor_bicg2_q_37_fifo(BITJOIN,741)
    assign bubble_join_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_q = redist45_i_first_cleanup_xor_bicg2_q_37_fifo_data_out;

    // bubble_select_redist45_i_first_cleanup_xor_bicg2_q_37_fifo(BITSELECT,742)
    assign bubble_select_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_b = $unsigned(bubble_join_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_q[0:0]);

    // SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo(STALLENABLE,1040)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_fromReg0 <= '0;
            SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_fromReg0 <= SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_toReg0;
            // Successor 1
            SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_fromReg1 <= SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_consumed0 = (~ (SE_out_redist29_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_out_data_out_65_fifo_backStall) & SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_wireValid) | SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_fromReg0;
    assign SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_consumed1 = (~ (SE_redist47_i_first_cleanup_xor_bicg2_q_68_0_backStall) & SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_wireValid) | SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_fromReg1;
    // Consuming
    assign SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_StallValid = SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_backStall & SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_wireValid;
    assign SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_toReg0 = SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_StallValid & SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_consumed0;
    assign SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_toReg1 = SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_StallValid & SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_or0 = SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_consumed0;
    assign SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_wireStall = ~ (SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_consumed1 & SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_or0);
    assign SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_backStall = SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_V0 = SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_wireValid & ~ (SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_fromReg0);
    assign SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_V1 = SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_wireValid & ~ (SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_wireValid = redist46_i_first_cleanup_xor_bicg2_q_65_fifo_valid_out;

    // SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo(STALLENABLE,1038)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_fromReg0 <= '0;
            SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_fromReg0 <= SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_toReg0;
            // Successor 1
            SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_fromReg1 <= SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_consumed0 = (~ (SR_SE_out_redist50_i_mptr_bitcast_index76_bicg0_dupName_0_trunc_sel_x_b_32_fifo_backStall) & SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_wireValid) | SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_fromReg0;
    assign SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_consumed1 = (~ (redist46_i_first_cleanup_xor_bicg2_q_65_fifo_stall_out) & SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_wireValid) | SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_fromReg1;
    // Consuming
    assign SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_StallValid = SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_backStall & SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_wireValid;
    assign SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_toReg0 = SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_StallValid & SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_consumed0;
    assign SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_toReg1 = SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_StallValid & SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_or0 = SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_consumed0;
    assign SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_wireStall = ~ (SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_consumed1 & SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_or0);
    assign SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_backStall = SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_V0 = SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_wireValid & ~ (SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_fromReg0);
    assign SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_V1 = SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_wireValid & ~ (SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_wireValid = redist45_i_first_cleanup_xor_bicg2_q_37_fifo_valid_out;

    // redist46_i_first_cleanup_xor_bicg2_q_65_fifo(STALLFIFO,576)
    assign redist46_i_first_cleanup_xor_bicg2_q_65_fifo_valid_in = SE_out_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_V1;
    assign redist46_i_first_cleanup_xor_bicg2_q_65_fifo_stall_in = SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_backStall;
    assign redist46_i_first_cleanup_xor_bicg2_q_65_fifo_data_in = bubble_select_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_b;
    assign redist46_i_first_cleanup_xor_bicg2_q_65_fifo_valid_in_bitsignaltemp = redist46_i_first_cleanup_xor_bicg2_q_65_fifo_valid_in[0];
    assign redist46_i_first_cleanup_xor_bicg2_q_65_fifo_stall_in_bitsignaltemp = redist46_i_first_cleanup_xor_bicg2_q_65_fifo_stall_in[0];
    assign redist46_i_first_cleanup_xor_bicg2_q_65_fifo_valid_out[0] = redist46_i_first_cleanup_xor_bicg2_q_65_fifo_valid_out_bitsignaltemp;
    assign redist46_i_first_cleanup_xor_bicg2_q_65_fifo_stall_out[0] = redist46_i_first_cleanup_xor_bicg2_q_65_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(29),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist46_i_first_cleanup_xor_bicg2_q_65_fifo (
        .valid_in(redist46_i_first_cleanup_xor_bicg2_q_65_fifo_valid_in_bitsignaltemp),
        .stall_in(redist46_i_first_cleanup_xor_bicg2_q_65_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist45_i_first_cleanup_xor_bicg2_q_37_fifo_b),
        .valid_out(redist46_i_first_cleanup_xor_bicg2_q_65_fifo_valid_out_bitsignaltemp),
        .stall_out(redist46_i_first_cleanup_xor_bicg2_q_65_fifo_stall_out_bitsignaltemp),
        .data_out(redist46_i_first_cleanup_xor_bicg2_q_65_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist46_i_first_cleanup_xor_bicg2_q_65_fifo(BITJOIN,744)
    assign bubble_join_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_q = redist46_i_first_cleanup_xor_bicg2_q_65_fifo_data_out;

    // bubble_select_redist46_i_first_cleanup_xor_bicg2_q_65_fifo(BITSELECT,745)
    assign bubble_select_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_b = $unsigned(bubble_join_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_q[0:0]);

    // redist47_i_first_cleanup_xor_bicg2_q_68_0(REG,577)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_i_first_cleanup_xor_bicg2_q_68_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist47_i_first_cleanup_xor_bicg2_q_68_0_backEN == 1'b1)
        begin
            redist47_i_first_cleanup_xor_bicg2_q_68_0_q <= $unsigned(bubble_select_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_b);
        end
    end

    // SE_redist47_i_first_cleanup_xor_bicg2_q_68_0(STALLENABLE,1041)
    // Valid signal propagation
    assign SE_redist47_i_first_cleanup_xor_bicg2_q_68_0_V0 = SE_redist47_i_first_cleanup_xor_bicg2_q_68_0_R_v_0;
    // Stall signal propagation
    assign SE_redist47_i_first_cleanup_xor_bicg2_q_68_0_s_tv_0 = SR_SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_backStall & SE_redist47_i_first_cleanup_xor_bicg2_q_68_0_R_v_0;
    // Backward Enable generation
    assign SE_redist47_i_first_cleanup_xor_bicg2_q_68_0_backEN = ~ (SE_redist47_i_first_cleanup_xor_bicg2_q_68_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist47_i_first_cleanup_xor_bicg2_q_68_0_v_s_0 = SE_redist47_i_first_cleanup_xor_bicg2_q_68_0_backEN & SE_out_redist46_i_first_cleanup_xor_bicg2_q_65_fifo_V1;
    // Backward Stall generation
    assign SE_redist47_i_first_cleanup_xor_bicg2_q_68_0_backStall = ~ (SE_redist47_i_first_cleanup_xor_bicg2_q_68_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist47_i_first_cleanup_xor_bicg2_q_68_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist47_i_first_cleanup_xor_bicg2_q_68_0_backEN == 1'b0)
            begin
                SE_redist47_i_first_cleanup_xor_bicg2_q_68_0_R_v_0 <= SE_redist47_i_first_cleanup_xor_bicg2_q_68_0_R_v_0 & SE_redist47_i_first_cleanup_xor_bicg2_q_68_0_s_tv_0;
            end
            else
            begin
                SE_redist47_i_first_cleanup_xor_bicg2_q_68_0_R_v_0 <= SE_redist47_i_first_cleanup_xor_bicg2_q_68_0_v_s_0;
            end

        end
    end

    // SR_SE_redist47_i_first_cleanup_xor_bicg2_q_68_1(STALLREG,1347)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_r_valid <= 1'b0;
            SR_SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_r_valid <= SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_backStall & (SR_SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_r_valid | SR_SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_i_valid);

            if (SR_SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_r_data0 <= $unsigned(redist47_i_first_cleanup_xor_bicg2_q_68_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_i_valid = SE_redist47_i_first_cleanup_xor_bicg2_q_68_0_V0;
    // Stall signal propagation
    assign SR_SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_backStall = SR_SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_r_valid | ~ (SR_SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_i_valid);

    // Valid
    assign SR_SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_V = SR_SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_r_valid == 1'b1 ? SR_SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_r_valid : SR_SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_i_valid;

    assign SR_SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_D0 = SR_SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_r_valid == 1'b1 ? SR_SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_r_data0 : redist47_i_first_cleanup_xor_bicg2_q_68_0_q;

    // SE_redist47_i_first_cleanup_xor_bicg2_q_68_1(STALLENABLE,1042)
    // Valid signal propagation
    assign SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_V0 = SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_R_v_0;
    // Stall signal propagation
    assign SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_s_tv_0 = SE_redist47_i_first_cleanup_xor_bicg2_q_68_2_backStall & SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_R_v_0;
    // Backward Enable generation
    assign SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_backEN = ~ (SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_v_s_0 = SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_backEN & SR_SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_V;
    // Backward Stall generation
    assign SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_backStall = ~ (SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_backEN == 1'b0)
            begin
                SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_R_v_0 <= SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_R_v_0 & SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_s_tv_0;
            end
            else
            begin
                SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_R_v_0 <= SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_v_s_0;
            end

        end
    end

    // SE_redist47_i_first_cleanup_xor_bicg2_q_68_2(STALLENABLE,1043)
    // Valid signal propagation
    assign SE_redist47_i_first_cleanup_xor_bicg2_q_68_2_V0 = SE_redist47_i_first_cleanup_xor_bicg2_q_68_2_R_v_0;
    // Stall signal propagation
    assign SE_redist47_i_first_cleanup_xor_bicg2_q_68_2_s_tv_0 = SE_i_mptr_bitcast_index82_bicg0_add_x_BitJoin_for_q_backStall & SE_redist47_i_first_cleanup_xor_bicg2_q_68_2_R_v_0;
    // Backward Enable generation
    assign SE_redist47_i_first_cleanup_xor_bicg2_q_68_2_backEN = ~ (SE_redist47_i_first_cleanup_xor_bicg2_q_68_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist47_i_first_cleanup_xor_bicg2_q_68_2_v_s_0 = SE_redist47_i_first_cleanup_xor_bicg2_q_68_2_backEN & SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_V0;
    // Backward Stall generation
    assign SE_redist47_i_first_cleanup_xor_bicg2_q_68_2_backStall = ~ (SE_redist47_i_first_cleanup_xor_bicg2_q_68_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist47_i_first_cleanup_xor_bicg2_q_68_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist47_i_first_cleanup_xor_bicg2_q_68_2_backEN == 1'b0)
            begin
                SE_redist47_i_first_cleanup_xor_bicg2_q_68_2_R_v_0 <= SE_redist47_i_first_cleanup_xor_bicg2_q_68_2_R_v_0 & SE_redist47_i_first_cleanup_xor_bicg2_q_68_2_s_tv_0;
            end
            else
            begin
                SE_redist47_i_first_cleanup_xor_bicg2_q_68_2_R_v_0 <= SE_redist47_i_first_cleanup_xor_bicg2_q_68_2_v_s_0;
            end

        end
    end

    // SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo(STALLENABLE,1010)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_fromReg0 <= '0;
            SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_fromReg0 <= SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_toReg0;
            // Successor 1
            SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_fromReg1 <= SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi7_pop1237_push27_bicg20_backStall) & SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_wireValid) | SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_fromReg0;
    assign SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_consumed1 = (~ (SE_i_mptr_bitcast_index82_bicg0_add_x_BitJoin_for_q_backStall) & SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_wireValid) | SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_fromReg1;
    // Consuming
    assign SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_StallValid = SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_backStall & SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_wireValid;
    assign SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_toReg0 = SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_StallValid & SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_consumed0;
    assign SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_toReg1 = SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_StallValid & SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_or0 = SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_consumed0;
    assign SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_wireStall = ~ (SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_consumed1 & SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_or0);
    assign SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_backStall = SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_V0 = SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_wireValid & ~ (SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_fromReg0);
    assign SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_V1 = SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_wireValid & ~ (SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_wireValid = redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_valid_out;

    // SE_out_i_llvm_fpga_mem_memdep_bicg39(STALLENABLE,796)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_bicg39_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_bicg39_fromReg1 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_bicg39_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_bicg39_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_bicg39_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_bicg39_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_bicg39_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_mem_memdep_bicg39_fromReg2 <= SE_out_i_llvm_fpga_mem_memdep_bicg39_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_bicg39_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi1_push16_bicg40_backStall) & SE_out_i_llvm_fpga_mem_memdep_bicg39_wireValid) | SE_out_i_llvm_fpga_mem_memdep_bicg39_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_bicg39_consumed1 = (~ (SE_i_mptr_bitcast_index82_bicg0_add_x_BitJoin_for_q_backStall) & SE_out_i_llvm_fpga_mem_memdep_bicg39_wireValid) | SE_out_i_llvm_fpga_mem_memdep_bicg39_fromReg1;
    assign SE_out_i_llvm_fpga_mem_memdep_bicg39_consumed2 = (~ (redist43_i_llvm_fpga_mem_memdep_bicg39_out_o_writeack_38_fifo_stall_out) & SE_out_i_llvm_fpga_mem_memdep_bicg39_wireValid) | SE_out_i_llvm_fpga_mem_memdep_bicg39_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_bicg39_StallValid = SE_out_i_llvm_fpga_mem_memdep_bicg39_backStall & SE_out_i_llvm_fpga_mem_memdep_bicg39_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_bicg39_toReg0 = SE_out_i_llvm_fpga_mem_memdep_bicg39_StallValid & SE_out_i_llvm_fpga_mem_memdep_bicg39_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_bicg39_toReg1 = SE_out_i_llvm_fpga_mem_memdep_bicg39_StallValid & SE_out_i_llvm_fpga_mem_memdep_bicg39_consumed1;
    assign SE_out_i_llvm_fpga_mem_memdep_bicg39_toReg2 = SE_out_i_llvm_fpga_mem_memdep_bicg39_StallValid & SE_out_i_llvm_fpga_mem_memdep_bicg39_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_bicg39_or0 = SE_out_i_llvm_fpga_mem_memdep_bicg39_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_bicg39_or1 = SE_out_i_llvm_fpga_mem_memdep_bicg39_consumed1 & SE_out_i_llvm_fpga_mem_memdep_bicg39_or0;
    assign SE_out_i_llvm_fpga_mem_memdep_bicg39_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_bicg39_consumed2 & SE_out_i_llvm_fpga_mem_memdep_bicg39_or1);
    assign SE_out_i_llvm_fpga_mem_memdep_bicg39_backStall = SE_out_i_llvm_fpga_mem_memdep_bicg39_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_bicg39_V0 = SE_out_i_llvm_fpga_mem_memdep_bicg39_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_bicg39_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_bicg39_V1 = SE_out_i_llvm_fpga_mem_memdep_bicg39_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_bicg39_fromReg1);
    assign SE_out_i_llvm_fpga_mem_memdep_bicg39_V2 = SE_out_i_llvm_fpga_mem_memdep_bicg39_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_bicg39_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_bicg39_wireValid = i_llvm_fpga_mem_memdep_bicg39_out_o_valid;

    // SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0(STALLENABLE,957)
    // Valid signal propagation
    assign SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_V0 = SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_s_tv_0 = SE_i_mptr_bitcast_index82_bicg0_add_x_BitJoin_for_q_backStall & SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_backEN & SR_SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_V;
    // Backward Stall generation
    assign SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2(STALLENABLE,905)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_V0 = SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_s_tv_0 = SE_i_mptr_bitcast_index82_bicg0_add_x_BitJoin_for_q_backStall & SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_backEN = ~ (SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_v_s_0 = SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_backEN & SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_backStall = ~ (SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_R_v_0 <= SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_R_v_0 & SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_R_v_0 <= SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SE_i_mptr_bitcast_index82_bicg0_add_x_BitJoin_for_q(STALLENABLE,906)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index82_bicg0_add_x_BitJoin_for_q_V0 = SE_i_mptr_bitcast_index82_bicg0_add_x_BitJoin_for_q_wireValid;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index82_bicg0_add_x_BitJoin_for_q_backStall = i_llvm_fpga_mem_unnamed_bicg16_bicg44_out_o_stall | ~ (SE_i_mptr_bitcast_index82_bicg0_add_x_BitJoin_for_q_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mptr_bitcast_index82_bicg0_add_x_BitJoin_for_q_and0 = SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_V0;
    assign SE_i_mptr_bitcast_index82_bicg0_add_x_BitJoin_for_q_and1 = SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_V0 & SE_i_mptr_bitcast_index82_bicg0_add_x_BitJoin_for_q_and0;
    assign SE_i_mptr_bitcast_index82_bicg0_add_x_BitJoin_for_q_and2 = SE_out_i_llvm_fpga_mem_memdep_bicg39_V1 & SE_i_mptr_bitcast_index82_bicg0_add_x_BitJoin_for_q_and1;
    assign SE_i_mptr_bitcast_index82_bicg0_add_x_BitJoin_for_q_and3 = SE_out_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_V1 & SE_i_mptr_bitcast_index82_bicg0_add_x_BitJoin_for_q_and2;
    assign SE_i_mptr_bitcast_index82_bicg0_add_x_BitJoin_for_q_wireValid = SE_redist47_i_first_cleanup_xor_bicg2_q_68_2_V0 & SE_i_mptr_bitcast_index82_bicg0_add_x_BitJoin_for_q_and3;

    // redist47_i_first_cleanup_xor_bicg2_q_68_1(REG,578)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_i_first_cleanup_xor_bicg2_q_68_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_backEN == 1'b1)
        begin
            redist47_i_first_cleanup_xor_bicg2_q_68_1_q <= $unsigned(SR_SE_redist47_i_first_cleanup_xor_bicg2_q_68_1_D0);
        end
    end

    // redist47_i_first_cleanup_xor_bicg2_q_68_2(REG,579)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_i_first_cleanup_xor_bicg2_q_68_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist47_i_first_cleanup_xor_bicg2_q_68_2_backEN == 1'b1)
        begin
            redist47_i_first_cleanup_xor_bicg2_q_68_2_q <= $unsigned(redist47_i_first_cleanup_xor_bicg2_q_68_1_q);
        end
    end

    // i_memdep_phi7_or11_bicg43(LOGICAL,125)@73
    assign i_memdep_phi7_or11_bicg43_q = bubble_select_i_llvm_fpga_mem_memdep_bicg39_b | bubble_select_redist35_i_llvm_fpga_pop_i1_memdep_phi7_pop1237_pop27_bicg19_out_data_out_68_fifo_b;

    // i_mptr_bitcast_index82_bicg0_add_x_p2_of_2(ADD,327)@72 + 1
    assign i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_cin = SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_D2;
    assign i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_a = { {1'b0, SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_D0}, 1'b1 };
    assign i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_b = { {1'b0, SR_SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_D1}, i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_o <= 7'b0;
        end
        else if (SE_i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_q = i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_o[5:1];

    // redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0(REG,507)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_q <= $unsigned(60'b000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_D0);
        end
    end

    // i_mptr_bitcast_index82_bicg0_add_x_BitJoin_for_q(BITJOIN,328)@73
    assign i_mptr_bitcast_index82_bicg0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index82_bicg0_add_x_p2_of_2_q, redist11_i_mptr_bitcast_index82_bicg0_add_x_p1_of_2_q_1_0_q};

    // i_mptr_bitcast_index82_bicg0_dupName_0_trunc_sel_x(BITSELECT,34)@73
    assign i_mptr_bitcast_index82_bicg0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index82_bicg0_add_x_BitJoin_for_q_q[63:0];

    // i_llvm_fpga_mem_unnamed_bicg16_bicg44(BLACKBOX,90)@73
    // in in_i_stall@20000000
    // out out_o_readdata@105
    // out out_o_stall@20000000
    // out out_o_valid@105
    // out out_unnamed_bicg16_bicg_avm_address@20000000
    // out out_unnamed_bicg16_bicg_avm_burstcount@20000000
    // out out_unnamed_bicg16_bicg_avm_byteenable@20000000
    // out out_unnamed_bicg16_bicg_avm_enable@20000000
    // out out_unnamed_bicg16_bicg_avm_read@20000000
    // out out_unnamed_bicg16_bicg_avm_write@20000000
    // out out_unnamed_bicg16_bicg_avm_writedata@20000000
    bicg_i_llvm_fpga_mem_unnamed_16_bicg0 thei_llvm_fpga_mem_unnamed_bicg16_bicg44 (
        .in_flush(in_flush),
        .in_i_address(i_mptr_bitcast_index82_bicg0_dupName_0_trunc_sel_x_b),
        .in_i_dependence(i_memdep_phi7_or11_bicg43_q),
        .in_i_predicate(redist47_i_first_cleanup_xor_bicg2_q_68_2_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_backStall),
        .in_i_valid(SE_i_mptr_bitcast_index82_bicg0_add_x_BitJoin_for_q_V0),
        .in_unnamed_bicg16_bicg_avm_readdata(in_unnamed_bicg16_bicg_avm_readdata),
        .in_unnamed_bicg16_bicg_avm_readdatavalid(in_unnamed_bicg16_bicg_avm_readdatavalid),
        .in_unnamed_bicg16_bicg_avm_waitrequest(in_unnamed_bicg16_bicg_avm_waitrequest),
        .in_unnamed_bicg16_bicg_avm_writeack(in_unnamed_bicg16_bicg_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_bicg16_bicg44_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_bicg16_bicg44_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_bicg16_bicg44_out_o_valid),
        .out_unnamed_bicg16_bicg_avm_address(i_llvm_fpga_mem_unnamed_bicg16_bicg44_out_unnamed_bicg16_bicg_avm_address),
        .out_unnamed_bicg16_bicg_avm_burstcount(i_llvm_fpga_mem_unnamed_bicg16_bicg44_out_unnamed_bicg16_bicg_avm_burstcount),
        .out_unnamed_bicg16_bicg_avm_byteenable(i_llvm_fpga_mem_unnamed_bicg16_bicg44_out_unnamed_bicg16_bicg_avm_byteenable),
        .out_unnamed_bicg16_bicg_avm_enable(i_llvm_fpga_mem_unnamed_bicg16_bicg44_out_unnamed_bicg16_bicg_avm_enable),
        .out_unnamed_bicg16_bicg_avm_read(i_llvm_fpga_mem_unnamed_bicg16_bicg44_out_unnamed_bicg16_bicg_avm_read),
        .out_unnamed_bicg16_bicg_avm_write(i_llvm_fpga_mem_unnamed_bicg16_bicg44_out_unnamed_bicg16_bicg_avm_write),
        .out_unnamed_bicg16_bicg_avm_writedata(i_llvm_fpga_mem_unnamed_bicg16_bicg44_out_unnamed_bicg16_bicg_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_unnamed_bicg16_bicg44(BITJOIN,624)
    assign bubble_join_i_llvm_fpga_mem_unnamed_bicg16_bicg44_q = i_llvm_fpga_mem_unnamed_bicg16_bicg44_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_bicg16_bicg44(BITSELECT,625)
    assign bubble_select_i_llvm_fpga_mem_unnamed_bicg16_bicg44_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_bicg16_bicg44_q[31:0]);

    // i_mul11_bicg47_bs1(BITSELECT,276)@105
    assign i_mul11_bicg47_bs1_in = bubble_select_i_llvm_fpga_mem_unnamed_bicg16_bicg44_b[17:0];
    assign i_mul11_bicg47_bs1_b = i_mul11_bicg47_bs1_in[17:0];

    // bubble_join_coalesced_delay_2_fifo(BITJOIN,765)
    assign bubble_join_coalesced_delay_2_fifo_q = coalesced_delay_2_fifo_data_out;

    // bubble_select_coalesced_delay_2_fifo(BITSELECT,766)
    assign bubble_select_coalesced_delay_2_fifo_b = $unsigned(bubble_join_coalesced_delay_2_fifo_q[31:0]);

    // sel_for_coalesced_delay_2(BITSELECT,494)
    assign sel_for_coalesced_delay_2_b = $unsigned(bubble_select_coalesced_delay_2_fifo_b[17:0]);
    assign sel_for_coalesced_delay_2_c = $unsigned(bubble_select_coalesced_delay_2_fifo_b[31:18]);

    // i_mul11_bicg47_bs6(BITSELECT,281)@105
    assign i_mul11_bicg47_bs6_b = bubble_select_i_llvm_fpga_mem_unnamed_bicg16_bicg44_b[31:18];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_mul11_bicg47_ma3_cma(CHAINMULTADD,309)@105 + 2
    assign i_mul11_bicg47_ma3_cma_reset = ~ (resetn);
    assign i_mul11_bicg47_ma3_cma_ena0 = SE_i_mul11_bicg47_im0_cma_backEN[0];
    assign i_mul11_bicg47_ma3_cma_ena1 = i_mul11_bicg47_ma3_cma_ena0;
    assign i_mul11_bicg47_ma3_cma_p[0] = i_mul11_bicg47_ma3_cma_a0[0] * i_mul11_bicg47_ma3_cma_c0[0];
    assign i_mul11_bicg47_ma3_cma_p[1] = i_mul11_bicg47_ma3_cma_a0[1] * i_mul11_bicg47_ma3_cma_c0[1];
    assign i_mul11_bicg47_ma3_cma_u[0] = {1'b0, i_mul11_bicg47_ma3_cma_p[0][31:0]};
    assign i_mul11_bicg47_ma3_cma_u[1] = {1'b0, i_mul11_bicg47_ma3_cma_p[1][31:0]};
    assign i_mul11_bicg47_ma3_cma_w[0] = i_mul11_bicg47_ma3_cma_u[0] + i_mul11_bicg47_ma3_cma_u[1];
    assign i_mul11_bicg47_ma3_cma_x[0] = i_mul11_bicg47_ma3_cma_w[0];
    assign i_mul11_bicg47_ma3_cma_y[0] = i_mul11_bicg47_ma3_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul11_bicg47_ma3_cma_a0 <= '{default: '0};
            i_mul11_bicg47_ma3_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul11_bicg47_ma3_cma_ena0 == 1'b1)
            begin
                i_mul11_bicg47_ma3_cma_a0[0] <= i_mul11_bicg47_bs6_b;
                i_mul11_bicg47_ma3_cma_a0[1] <= sel_for_coalesced_delay_2_c;
                i_mul11_bicg47_ma3_cma_c0[0] <= sel_for_coalesced_delay_2_b;
                i_mul11_bicg47_ma3_cma_c0[1] <= i_mul11_bicg47_bs1_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul11_bicg47_ma3_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul11_bicg47_ma3_cma_ena1 == 1'b1)
            begin
                i_mul11_bicg47_ma3_cma_s[0] <= i_mul11_bicg47_ma3_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul11_bicg47_ma3_cma_delay ( .xin(i_mul11_bicg47_ma3_cma_s[0]), .xout(i_mul11_bicg47_ma3_cma_qq), .ena(SE_i_mul11_bicg47_im0_cma_backEN[0]), .clk(clock), .aclr(resetn) );
    assign i_mul11_bicg47_ma3_cma_q = $unsigned(i_mul11_bicg47_ma3_cma_qq[32:0]);

    // bubble_join_i_mul11_bicg47_ma3_cma(BITJOIN,699)
    assign bubble_join_i_mul11_bicg47_ma3_cma_q = i_mul11_bicg47_ma3_cma_q;

    // SE_out_bubble_out_i_mul11_bicg47_ma3_cma_data(STALLENABLE,1212)
    // Valid signal propagation
    assign SE_out_bubble_out_i_mul11_bicg47_ma3_cma_data_V0 = SE_out_bubble_out_i_mul11_bicg47_ma3_cma_data_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_mul11_bicg47_ma3_cma_data_backStall = SR_SE_redist14_i_mul11_bicg47_ma3_cma_q_1_0_backStall | ~ (SE_out_bubble_out_i_mul11_bicg47_ma3_cma_data_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_mul11_bicg47_ma3_cma_data_wireValid = bubble_out_i_mul11_bicg47_ma3_cma_data_reg_valid_out;

    // bubble_out_i_mul11_bicg47_ma3_cma_data_reg(STALLFIFO,1318)
    assign bubble_out_i_mul11_bicg47_ma3_cma_data_reg_valid_in = SE_i_mul11_bicg47_im0_cma_V2;
    assign bubble_out_i_mul11_bicg47_ma3_cma_data_reg_stall_in = SE_out_bubble_out_i_mul11_bicg47_ma3_cma_data_backStall;
    assign bubble_out_i_mul11_bicg47_ma3_cma_data_reg_data_in = bubble_join_i_mul11_bicg47_ma3_cma_q;
    assign bubble_out_i_mul11_bicg47_ma3_cma_data_reg_valid_in_bitsignaltemp = bubble_out_i_mul11_bicg47_ma3_cma_data_reg_valid_in[0];
    assign bubble_out_i_mul11_bicg47_ma3_cma_data_reg_stall_in_bitsignaltemp = bubble_out_i_mul11_bicg47_ma3_cma_data_reg_stall_in[0];
    assign bubble_out_i_mul11_bicg47_ma3_cma_data_reg_valid_out[0] = bubble_out_i_mul11_bicg47_ma3_cma_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_mul11_bicg47_ma3_cma_data_reg_stall_out[0] = bubble_out_i_mul11_bicg47_ma3_cma_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(1),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(1),
        .DATA_WIDTH(33),
        .IMPL("zl_reg")
    ) thebubble_out_i_mul11_bicg47_ma3_cma_data_reg (
        .valid_in(bubble_out_i_mul11_bicg47_ma3_cma_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_mul11_bicg47_ma3_cma_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_mul11_bicg47_ma3_cma_q),
        .valid_out(bubble_out_i_mul11_bicg47_ma3_cma_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_mul11_bicg47_ma3_cma_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_mul11_bicg47_ma3_cma_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul11_bicg47_im8_cma(CHAINMULTADD,306)@105 + 2
    assign i_mul11_bicg47_im8_cma_reset = ~ (resetn);
    assign i_mul11_bicg47_im8_cma_ena0 = SE_i_mul11_bicg47_im0_cma_backEN[0];
    assign i_mul11_bicg47_im8_cma_ena1 = i_mul11_bicg47_im8_cma_ena0;
    assign i_mul11_bicg47_im8_cma_p[0] = i_mul11_bicg47_im8_cma_a0[0] * i_mul11_bicg47_im8_cma_c0[0];
    assign i_mul11_bicg47_im8_cma_u[0] = i_mul11_bicg47_im8_cma_p[0][27:0];
    assign i_mul11_bicg47_im8_cma_w[0] = i_mul11_bicg47_im8_cma_u[0];
    assign i_mul11_bicg47_im8_cma_x[0] = i_mul11_bicg47_im8_cma_w[0];
    assign i_mul11_bicg47_im8_cma_y[0] = i_mul11_bicg47_im8_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul11_bicg47_im8_cma_a0 <= '{default: '0};
            i_mul11_bicg47_im8_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul11_bicg47_im8_cma_ena0 == 1'b1)
            begin
                i_mul11_bicg47_im8_cma_a0[0] <= i_mul11_bicg47_bs6_b;
                i_mul11_bicg47_im8_cma_c0[0] <= sel_for_coalesced_delay_2_c;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul11_bicg47_im8_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul11_bicg47_im8_cma_ena1 == 1'b1)
            begin
                i_mul11_bicg47_im8_cma_s[0] <= i_mul11_bicg47_im8_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul11_bicg47_im8_cma_delay ( .xin(i_mul11_bicg47_im8_cma_s[0]), .xout(i_mul11_bicg47_im8_cma_qq), .ena(SE_i_mul11_bicg47_im0_cma_backEN[0]), .clk(clock), .aclr(resetn) );
    assign i_mul11_bicg47_im8_cma_q = $unsigned(i_mul11_bicg47_im8_cma_qq[27:0]);

    // bubble_join_i_mul11_bicg47_im8_cma(BITJOIN,690)
    assign bubble_join_i_mul11_bicg47_im8_cma_q = i_mul11_bicg47_im8_cma_q;

    // bubble_out_i_mul11_bicg47_im8_cma_data_reg(STALLFIFO,1315)
    assign bubble_out_i_mul11_bicg47_im8_cma_data_reg_valid_in = SE_i_mul11_bicg47_im0_cma_V1;
    assign bubble_out_i_mul11_bicg47_im8_cma_data_reg_stall_in = SE_out_bubble_out_i_mul11_bicg47_im8_cma_data_backStall;
    assign bubble_out_i_mul11_bicg47_im8_cma_data_reg_data_in = bubble_join_i_mul11_bicg47_im8_cma_q;
    assign bubble_out_i_mul11_bicg47_im8_cma_data_reg_valid_in_bitsignaltemp = bubble_out_i_mul11_bicg47_im8_cma_data_reg_valid_in[0];
    assign bubble_out_i_mul11_bicg47_im8_cma_data_reg_stall_in_bitsignaltemp = bubble_out_i_mul11_bicg47_im8_cma_data_reg_stall_in[0];
    assign bubble_out_i_mul11_bicg47_im8_cma_data_reg_valid_out[0] = bubble_out_i_mul11_bicg47_im8_cma_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_mul11_bicg47_im8_cma_data_reg_stall_out[0] = bubble_out_i_mul11_bicg47_im8_cma_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(1),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(1),
        .DATA_WIDTH(28),
        .IMPL("zl_reg")
    ) thebubble_out_i_mul11_bicg47_im8_cma_data_reg (
        .valid_in(bubble_out_i_mul11_bicg47_im8_cma_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_mul11_bicg47_im8_cma_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_mul11_bicg47_im8_cma_q),
        .valid_out(bubble_out_i_mul11_bicg47_im8_cma_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_mul11_bicg47_im8_cma_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_mul11_bicg47_im8_cma_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul11_bicg47_im0_cma(CHAINMULTADD,305)@105 + 2
    assign i_mul11_bicg47_im0_cma_reset = ~ (resetn);
    assign i_mul11_bicg47_im0_cma_ena0 = SE_i_mul11_bicg47_im0_cma_backEN[0];
    assign i_mul11_bicg47_im0_cma_ena1 = i_mul11_bicg47_im0_cma_ena0;
    assign i_mul11_bicg47_im0_cma_p[0] = i_mul11_bicg47_im0_cma_a0[0] * i_mul11_bicg47_im0_cma_c0[0];
    assign i_mul11_bicg47_im0_cma_u[0] = i_mul11_bicg47_im0_cma_p[0][35:0];
    assign i_mul11_bicg47_im0_cma_w[0] = i_mul11_bicg47_im0_cma_u[0];
    assign i_mul11_bicg47_im0_cma_x[0] = i_mul11_bicg47_im0_cma_w[0];
    assign i_mul11_bicg47_im0_cma_y[0] = i_mul11_bicg47_im0_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul11_bicg47_im0_cma_a0 <= '{default: '0};
            i_mul11_bicg47_im0_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul11_bicg47_im0_cma_ena0 == 1'b1)
            begin
                i_mul11_bicg47_im0_cma_a0[0] <= i_mul11_bicg47_bs1_b;
                i_mul11_bicg47_im0_cma_c0[0] <= sel_for_coalesced_delay_2_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul11_bicg47_im0_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul11_bicg47_im0_cma_ena1 == 1'b1)
            begin
                i_mul11_bicg47_im0_cma_s[0] <= i_mul11_bicg47_im0_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul11_bicg47_im0_cma_delay ( .xin(i_mul11_bicg47_im0_cma_s[0]), .xout(i_mul11_bicg47_im0_cma_qq), .ena(SE_i_mul11_bicg47_im0_cma_backEN[0]), .clk(clock), .aclr(resetn) );
    assign i_mul11_bicg47_im0_cma_q = $unsigned(i_mul11_bicg47_im0_cma_qq[35:0]);

    // bubble_join_i_mul11_bicg47_im0_cma(BITJOIN,687)
    assign bubble_join_i_mul11_bicg47_im0_cma_q = i_mul11_bicg47_im0_cma_q;

    // bubble_out_i_mul11_bicg47_im0_cma_data_reg(STALLFIFO,1314)
    assign bubble_out_i_mul11_bicg47_im0_cma_data_reg_valid_in = SE_i_mul11_bicg47_im0_cma_V0;
    assign bubble_out_i_mul11_bicg47_im0_cma_data_reg_stall_in = SE_out_bubble_out_i_mul11_bicg47_im0_cma_data_backStall;
    assign bubble_out_i_mul11_bicg47_im0_cma_data_reg_data_in = bubble_join_i_mul11_bicg47_im0_cma_q;
    assign bubble_out_i_mul11_bicg47_im0_cma_data_reg_valid_in_bitsignaltemp = bubble_out_i_mul11_bicg47_im0_cma_data_reg_valid_in[0];
    assign bubble_out_i_mul11_bicg47_im0_cma_data_reg_stall_in_bitsignaltemp = bubble_out_i_mul11_bicg47_im0_cma_data_reg_stall_in[0];
    assign bubble_out_i_mul11_bicg47_im0_cma_data_reg_valid_out[0] = bubble_out_i_mul11_bicg47_im0_cma_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_mul11_bicg47_im0_cma_data_reg_stall_out[0] = bubble_out_i_mul11_bicg47_im0_cma_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(1),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(1),
        .DATA_WIDTH(36),
        .IMPL("zl_reg")
    ) thebubble_out_i_mul11_bicg47_im0_cma_data_reg (
        .valid_in(bubble_out_i_mul11_bicg47_im0_cma_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_mul11_bicg47_im0_cma_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_mul11_bicg47_im0_cma_q),
        .valid_out(bubble_out_i_mul11_bicg47_im0_cma_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_mul11_bicg47_im0_cma_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_mul11_bicg47_im0_cma_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44(STALLENABLE,804)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_fromReg1 <= '0;
            SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_fromReg0 <= SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_fromReg1 <= SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_fromReg2 <= SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_consumed0 = (~ (bubble_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_1_reg_stall_out) & SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_fromReg0;
    assign SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_consumed1 = (~ (SE_redist48_i_toi1_intcast4_bicg45_sel_x_b_5_0_backStall) & SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_fromReg1;
    assign SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_consumed2 = (~ (SE_i_mul11_bicg47_im0_cma_backStall) & SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_StallValid = SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_backStall & SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_wireValid;
    assign SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_toReg0 = SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_StallValid & SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_consumed0;
    assign SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_toReg1 = SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_StallValid & SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_consumed1;
    assign SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_toReg2 = SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_StallValid & SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_or0 = SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_consumed0;
    assign SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_or1 = SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_consumed1 & SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_or0;
    assign SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_wireStall = ~ (SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_consumed2 & SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_or1);
    assign SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_backStall = SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_V0 = SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_fromReg0);
    assign SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_V1 = SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_fromReg1);
    assign SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_V2 = SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_wireValid = i_llvm_fpga_mem_unnamed_bicg16_bicg44_out_o_valid;

    // SE_i_mul11_bicg47_im0_cma(STALLENABLE,895)
    // Valid signal propagation
    assign SE_i_mul11_bicg47_im0_cma_V0 = SE_i_mul11_bicg47_im0_cma_R_v_0;
    assign SE_i_mul11_bicg47_im0_cma_V1 = SE_i_mul11_bicg47_im0_cma_R_v_1;
    assign SE_i_mul11_bicg47_im0_cma_V2 = SE_i_mul11_bicg47_im0_cma_R_v_2;
    // Stall signal propagation
    assign SE_i_mul11_bicg47_im0_cma_s_tv_0 = bubble_out_i_mul11_bicg47_im0_cma_data_reg_stall_out & SE_i_mul11_bicg47_im0_cma_R_v_0;
    assign SE_i_mul11_bicg47_im0_cma_s_tv_1 = bubble_out_i_mul11_bicg47_im8_cma_data_reg_stall_out & SE_i_mul11_bicg47_im0_cma_R_v_1;
    assign SE_i_mul11_bicg47_im0_cma_s_tv_2 = bubble_out_i_mul11_bicg47_ma3_cma_data_reg_stall_out & SE_i_mul11_bicg47_im0_cma_R_v_2;
    // Backward Enable generation
    assign SE_i_mul11_bicg47_im0_cma_or0 = SE_i_mul11_bicg47_im0_cma_s_tv_0;
    assign SE_i_mul11_bicg47_im0_cma_or1 = SE_i_mul11_bicg47_im0_cma_s_tv_1 | SE_i_mul11_bicg47_im0_cma_or0;
    assign SE_i_mul11_bicg47_im0_cma_backEN = ~ (SE_i_mul11_bicg47_im0_cma_s_tv_2 | SE_i_mul11_bicg47_im0_cma_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mul11_bicg47_im0_cma_and0 = SE_out_i_llvm_fpga_mem_unnamed_bicg16_bicg44_V2 & SE_i_mul11_bicg47_im0_cma_backEN;
    assign SE_i_mul11_bicg47_im0_cma_v_s_0 = SE_out_coalesced_delay_2_fifo_V0 & SE_i_mul11_bicg47_im0_cma_and0;
    // Backward Stall generation
    assign SE_i_mul11_bicg47_im0_cma_backStall = ~ (SE_i_mul11_bicg47_im0_cma_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mul11_bicg47_im0_cma_R_s_0 <= 1'b0;
            SE_i_mul11_bicg47_im0_cma_R_v_0 <= 1'b0;
            SE_i_mul11_bicg47_im0_cma_R_v_1 <= 1'b0;
            SE_i_mul11_bicg47_im0_cma_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_i_mul11_bicg47_im0_cma_backEN == 1'b1)
            begin
                SE_i_mul11_bicg47_im0_cma_R_s_0 <= SE_i_mul11_bicg47_im0_cma_v_s_0;
            end

            if (SE_i_mul11_bicg47_im0_cma_backEN == 1'b0)
            begin
                SE_i_mul11_bicg47_im0_cma_R_v_0 <= SE_i_mul11_bicg47_im0_cma_R_v_0 & SE_i_mul11_bicg47_im0_cma_s_tv_0;
            end
            else
            begin
                SE_i_mul11_bicg47_im0_cma_R_v_0 <= SE_i_mul11_bicg47_im0_cma_R_s_0;
            end

            if (SE_i_mul11_bicg47_im0_cma_backEN == 1'b0)
            begin
                SE_i_mul11_bicg47_im0_cma_R_v_1 <= SE_i_mul11_bicg47_im0_cma_R_v_1 & SE_i_mul11_bicg47_im0_cma_s_tv_1;
            end
            else
            begin
                SE_i_mul11_bicg47_im0_cma_R_v_1 <= SE_i_mul11_bicg47_im0_cma_R_s_0;
            end

            if (SE_i_mul11_bicg47_im0_cma_backEN == 1'b0)
            begin
                SE_i_mul11_bicg47_im0_cma_R_v_2 <= SE_i_mul11_bicg47_im0_cma_R_v_2 & SE_i_mul11_bicg47_im0_cma_s_tv_2;
            end
            else
            begin
                SE_i_mul11_bicg47_im0_cma_R_v_2 <= SE_i_mul11_bicg47_im0_cma_R_s_0;
            end

        end
    end

    // SE_out_coalesced_delay_2_fifo(STALLENABLE,1065)
    // Valid signal propagation
    assign SE_out_coalesced_delay_2_fifo_V0 = SE_out_coalesced_delay_2_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_2_fifo_backStall = SE_i_mul11_bicg47_im0_cma_backStall | ~ (SE_out_coalesced_delay_2_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_2_fifo_wireValid = coalesced_delay_2_fifo_valid_out;

    // coalesced_delay_2_fifo(STALLFIFO,594)
    assign coalesced_delay_2_fifo_valid_in = SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_V1;
    assign coalesced_delay_2_fifo_stall_in = SE_out_coalesced_delay_2_fifo_backStall;
    assign coalesced_delay_2_fifo_data_in = join_for_coalesced_delay_2_q;
    assign coalesced_delay_2_fifo_valid_in_bitsignaltemp = coalesced_delay_2_fifo_valid_in[0];
    assign coalesced_delay_2_fifo_stall_in_bitsignaltemp = coalesced_delay_2_fifo_stall_in[0];
    assign coalesced_delay_2_fifo_valid_out[0] = coalesced_delay_2_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_2_fifo_stall_out[0] = coalesced_delay_2_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(69),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) thecoalesced_delay_2_fifo (
        .valid_in(coalesced_delay_2_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_2_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_2_q),
        .valid_out(coalesced_delay_2_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_2_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_2_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_mul7_bicg32_im0_cma(STALLENABLE,897)
    // Valid signal propagation
    assign SE_i_mul7_bicg32_im0_cma_V0 = SE_i_mul7_bicg32_im0_cma_R_v_0;
    assign SE_i_mul7_bicg32_im0_cma_V1 = SE_i_mul7_bicg32_im0_cma_R_v_1;
    assign SE_i_mul7_bicg32_im0_cma_V2 = SE_i_mul7_bicg32_im0_cma_R_v_2;
    // Stall signal propagation
    assign SE_i_mul7_bicg32_im0_cma_s_tv_0 = bubble_out_i_mul7_bicg32_im0_cma_data_reg_stall_out & SE_i_mul7_bicg32_im0_cma_R_v_0;
    assign SE_i_mul7_bicg32_im0_cma_s_tv_1 = bubble_out_i_mul7_bicg32_im8_cma_data_reg_stall_out & SE_i_mul7_bicg32_im0_cma_R_v_1;
    assign SE_i_mul7_bicg32_im0_cma_s_tv_2 = bubble_out_i_mul7_bicg32_ma3_cma_data_reg_stall_out & SE_i_mul7_bicg32_im0_cma_R_v_2;
    // Backward Enable generation
    assign SE_i_mul7_bicg32_im0_cma_or0 = SE_i_mul7_bicg32_im0_cma_s_tv_0;
    assign SE_i_mul7_bicg32_im0_cma_or1 = SE_i_mul7_bicg32_im0_cma_s_tv_1 | SE_i_mul7_bicg32_im0_cma_or0;
    assign SE_i_mul7_bicg32_im0_cma_backEN = ~ (SE_i_mul7_bicg32_im0_cma_s_tv_2 | SE_i_mul7_bicg32_im0_cma_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mul7_bicg32_im0_cma_and0 = SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_V0 & SE_i_mul7_bicg32_im0_cma_backEN;
    assign SE_i_mul7_bicg32_im0_cma_v_s_0 = SE_out_i_llvm_fpga_mem_unnamed_bicg15_bicg31_V0 & SE_i_mul7_bicg32_im0_cma_and0;
    // Backward Stall generation
    assign SE_i_mul7_bicg32_im0_cma_backStall = ~ (SE_i_mul7_bicg32_im0_cma_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mul7_bicg32_im0_cma_R_s_0 <= 1'b0;
            SE_i_mul7_bicg32_im0_cma_R_v_0 <= 1'b0;
            SE_i_mul7_bicg32_im0_cma_R_v_1 <= 1'b0;
            SE_i_mul7_bicg32_im0_cma_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_i_mul7_bicg32_im0_cma_backEN == 1'b1)
            begin
                SE_i_mul7_bicg32_im0_cma_R_s_0 <= SE_i_mul7_bicg32_im0_cma_v_s_0;
            end

            if (SE_i_mul7_bicg32_im0_cma_backEN == 1'b0)
            begin
                SE_i_mul7_bicg32_im0_cma_R_v_0 <= SE_i_mul7_bicg32_im0_cma_R_v_0 & SE_i_mul7_bicg32_im0_cma_s_tv_0;
            end
            else
            begin
                SE_i_mul7_bicg32_im0_cma_R_v_0 <= SE_i_mul7_bicg32_im0_cma_R_s_0;
            end

            if (SE_i_mul7_bicg32_im0_cma_backEN == 1'b0)
            begin
                SE_i_mul7_bicg32_im0_cma_R_v_1 <= SE_i_mul7_bicg32_im0_cma_R_v_1 & SE_i_mul7_bicg32_im0_cma_s_tv_1;
            end
            else
            begin
                SE_i_mul7_bicg32_im0_cma_R_v_1 <= SE_i_mul7_bicg32_im0_cma_R_s_0;
            end

            if (SE_i_mul7_bicg32_im0_cma_backEN == 1'b0)
            begin
                SE_i_mul7_bicg32_im0_cma_R_v_2 <= SE_i_mul7_bicg32_im0_cma_R_v_2 & SE_i_mul7_bicg32_im0_cma_s_tv_2;
            end
            else
            begin
                SE_i_mul7_bicg32_im0_cma_R_v_2 <= SE_i_mul7_bicg32_im0_cma_R_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24(STALLENABLE,798)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_fromReg0 <= SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_fromReg1 <= SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_consumed0 = (~ (SE_i_mul7_bicg32_im0_cma_backStall) & SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_fromReg0;
    assign SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_consumed1 = (~ (coalesced_delay_2_fifo_stall_out) & SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_StallValid = SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_backStall & SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_wireValid;
    assign SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_toReg0 = SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_StallValid & SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_consumed0;
    assign SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_toReg1 = SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_StallValid & SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_or0 = SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_consumed0;
    assign SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_wireStall = ~ (SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_consumed1 & SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_or0);
    assign SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_backStall = SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_V0 = SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_fromReg0);
    assign SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_V1 = SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_wireValid = i_llvm_fpga_mem_unnamed_bicg12_bicg24_out_o_valid;

    // i_mptr_bitcast_index_bicg0_add_x_p2_of_2(ADD,336)@4 + 1
    assign i_mptr_bitcast_index_bicg0_add_x_p2_of_2_cin = SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_D2;
    assign i_mptr_bitcast_index_bicg0_add_x_p2_of_2_a = { {1'b0, SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_D0}, 1'b1 };
    assign i_mptr_bitcast_index_bicg0_add_x_p2_of_2_b = { {1'b0, SR_SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_D1}, i_mptr_bitcast_index_bicg0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index_bicg0_add_x_p2_of_2_o <= 7'b0;
        end
        else if (SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index_bicg0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index_bicg0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index_bicg0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index_bicg0_add_x_p2_of_2_q = i_mptr_bitcast_index_bicg0_add_x_p2_of_2_o[5:1];

    // redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0(REG,506)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_q <= $unsigned(60'b000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_D0);
        end
    end

    // i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q(BITJOIN,337)@5
    assign i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index_bicg0_add_x_p2_of_2_q, redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_q};

    // i_mptr_bitcast_index_bicg0_dupName_0_trunc_sel_x(BITSELECT,40)@5
    assign i_mptr_bitcast_index_bicg0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_q[63:0];

    // SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q(STALLREG,1329)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_r_valid <= 1'b0;
            SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_r_data1 <= 1'bx;
            SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_r_valid <= SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_backStall & (SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_r_valid | SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_i_valid);

            if (SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_r_data0 <= i_mptr_bitcast_index_bicg0_dupName_0_trunc_sel_x_b;
                SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_r_data1 <= i_reduction_bicg_1_bicg23_q;
                SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_r_data2 <= i_first_cleanup_xor_bicg2_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_and0 = SE_i_mptr_bitcast_index_bicg0_add_x_p2_of_2_V0;
    assign SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_and1 = SE_redist10_i_mptr_bitcast_index_bicg0_add_x_p1_of_2_q_1_0_V0 & SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_and0;
    assign SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_and2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop19_bicg0_V1 & SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_and1;
    assign SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_i_valid = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop16_bicg22_V0 & SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_and2;
    // Stall signal propagation
    assign SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_backStall = SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_r_valid | ~ (SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_i_valid);

    // Valid
    assign SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_V = SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_r_valid : SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_i_valid;

    // Data0
    assign SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_D0 = SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_r_data0 : i_mptr_bitcast_index_bicg0_dupName_0_trunc_sel_x_b;
    // Data1
    assign SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_D1 = SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_r_data1 : i_reduction_bicg_1_bicg23_q;
    // Data2
    assign SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_D2 = SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_r_data2 : i_first_cleanup_xor_bicg2_q;

    // i_llvm_fpga_mem_unnamed_bicg12_bicg24(BLACKBOX,87)@5
    // in in_i_stall@20000000
    // out out_o_readdata@37
    // out out_o_stall@20000000
    // out out_o_valid@37
    // out out_unnamed_bicg12_bicg_avm_address@20000000
    // out out_unnamed_bicg12_bicg_avm_burstcount@20000000
    // out out_unnamed_bicg12_bicg_avm_byteenable@20000000
    // out out_unnamed_bicg12_bicg_avm_enable@20000000
    // out out_unnamed_bicg12_bicg_avm_read@20000000
    // out out_unnamed_bicg12_bicg_avm_write@20000000
    // out out_unnamed_bicg12_bicg_avm_writedata@20000000
    bicg_i_llvm_fpga_mem_unnamed_12_bicg0 thei_llvm_fpga_mem_unnamed_bicg12_bicg24 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_D0),
        .in_i_dependence(SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_D1),
        .in_i_predicate(SR_SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_D2),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_bicg12_bicg24_backStall),
        .in_i_valid(SE_i_mptr_bitcast_index_bicg0_add_x_BitJoin_for_q_V0),
        .in_unnamed_bicg12_bicg_avm_readdata(in_unnamed_bicg12_bicg_avm_readdata),
        .in_unnamed_bicg12_bicg_avm_readdatavalid(in_unnamed_bicg12_bicg_avm_readdatavalid),
        .in_unnamed_bicg12_bicg_avm_waitrequest(in_unnamed_bicg12_bicg_avm_waitrequest),
        .in_unnamed_bicg12_bicg_avm_writeack(in_unnamed_bicg12_bicg_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_bicg12_bicg24_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_bicg12_bicg24_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_bicg12_bicg24_out_o_valid),
        .out_unnamed_bicg12_bicg_avm_address(i_llvm_fpga_mem_unnamed_bicg12_bicg24_out_unnamed_bicg12_bicg_avm_address),
        .out_unnamed_bicg12_bicg_avm_burstcount(i_llvm_fpga_mem_unnamed_bicg12_bicg24_out_unnamed_bicg12_bicg_avm_burstcount),
        .out_unnamed_bicg12_bicg_avm_byteenable(i_llvm_fpga_mem_unnamed_bicg12_bicg24_out_unnamed_bicg12_bicg_avm_byteenable),
        .out_unnamed_bicg12_bicg_avm_enable(i_llvm_fpga_mem_unnamed_bicg12_bicg24_out_unnamed_bicg12_bicg_avm_enable),
        .out_unnamed_bicg12_bicg_avm_read(i_llvm_fpga_mem_unnamed_bicg12_bicg24_out_unnamed_bicg12_bicg_avm_read),
        .out_unnamed_bicg12_bicg_avm_write(i_llvm_fpga_mem_unnamed_bicg12_bicg24_out_unnamed_bicg12_bicg_avm_write),
        .out_unnamed_bicg12_bicg_avm_writedata(i_llvm_fpga_mem_unnamed_bicg12_bicg24_out_unnamed_bicg12_bicg_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,12)
    assign out_unnamed_bicg12_bicg_avm_address = i_llvm_fpga_mem_unnamed_bicg12_bicg24_out_unnamed_bicg12_bicg_avm_address;
    assign out_unnamed_bicg12_bicg_avm_enable = i_llvm_fpga_mem_unnamed_bicg12_bicg24_out_unnamed_bicg12_bicg_avm_enable;
    assign out_unnamed_bicg12_bicg_avm_read = i_llvm_fpga_mem_unnamed_bicg12_bicg24_out_unnamed_bicg12_bicg_avm_read;
    assign out_unnamed_bicg12_bicg_avm_write = i_llvm_fpga_mem_unnamed_bicg12_bicg24_out_unnamed_bicg12_bicg_avm_write;
    assign out_unnamed_bicg12_bicg_avm_writedata = i_llvm_fpga_mem_unnamed_bicg12_bicg24_out_unnamed_bicg12_bicg_avm_writedata;
    assign out_unnamed_bicg12_bicg_avm_byteenable = i_llvm_fpga_mem_unnamed_bicg12_bicg24_out_unnamed_bicg12_bicg_avm_byteenable;
    assign out_unnamed_bicg12_bicg_avm_burstcount = i_llvm_fpga_mem_unnamed_bicg12_bicg24_out_unnamed_bicg12_bicg_avm_burstcount;

    // bubble_join_redist43_i_llvm_fpga_mem_memdep_bicg39_out_o_writeack_38_fifo(BITJOIN,738)
    assign bubble_join_redist43_i_llvm_fpga_mem_memdep_bicg39_out_o_writeack_38_fifo_q = redist43_i_llvm_fpga_mem_memdep_bicg39_out_o_writeack_38_fifo_data_out;

    // bubble_select_redist43_i_llvm_fpga_mem_memdep_bicg39_out_o_writeack_38_fifo(BITSELECT,739)
    assign bubble_select_redist43_i_llvm_fpga_mem_memdep_bicg39_out_o_writeack_38_fifo_b = $unsigned(bubble_join_redist43_i_llvm_fpga_mem_memdep_bicg39_out_o_writeack_38_fifo_q[0:0]);

    // bubble_join_redist20_i_masked_bicg63_q_41_fifo(BITJOIN,705)
    assign bubble_join_redist20_i_masked_bicg63_q_41_fifo_q = redist20_i_masked_bicg63_q_41_fifo_data_out;

    // bubble_select_redist20_i_masked_bicg63_q_41_fifo(BITSELECT,706)
    assign bubble_select_redist20_i_masked_bicg63_q_41_fifo_b = $unsigned(bubble_join_redist20_i_masked_bicg63_q_41_fifo_q[0:0]);

    // coalesced_delay_3_0(REG,595)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_3_0_q <= $unsigned(99'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_3_0_backEN == 1'b1)
        begin
            coalesced_delay_3_0_q <= $unsigned(SR_SE_join_for_coalesced_delay_3_D0);
        end
    end

    // sel_for_coalesced_delay_3(BITSELECT,497)
    assign sel_for_coalesced_delay_3_b = $unsigned(coalesced_delay_3_0_q[63:0]);
    assign sel_for_coalesced_delay_3_c = $unsigned(coalesced_delay_3_0_q[95:64]);
    assign sel_for_coalesced_delay_3_d = $unsigned(coalesced_delay_3_0_q[96:96]);
    assign sel_for_coalesced_delay_3_e = $unsigned(coalesced_delay_3_0_q[97:97]);
    assign sel_for_coalesced_delay_3_f = $unsigned(coalesced_delay_3_0_q[98:98]);

    // dupName_0_sync_out_x(GPOUT,13)@111
    assign out_add12 = sel_for_coalesced_delay_3_c;
    assign out_exitcond1434_pop24 = sel_for_coalesced_delay_3_e;
    assign out_mPtr_bitcast_index8030_pop20 = sel_for_coalesced_delay_3_b;
    assign out_masked = bubble_select_redist20_i_masked_bicg63_q_41_fifo_b;
    assign out_memdep = bubble_select_redist43_i_llvm_fpga_mem_memdep_bicg39_out_o_writeack_38_fifo_b;
    assign out_notcmp2035_pop25 = sel_for_coalesced_delay_3_d;
    assign out_toi1_intcast4 = sel_for_coalesced_delay_3_f;
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast_index8030_pop20_bicg64_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,15)
    assign out_unnamed_bicg14_bicg_avm_address = i_llvm_fpga_mem_unnamed_bicg14_bicg28_out_unnamed_bicg14_bicg_avm_address;
    assign out_unnamed_bicg14_bicg_avm_enable = i_llvm_fpga_mem_unnamed_bicg14_bicg28_out_unnamed_bicg14_bicg_avm_enable;
    assign out_unnamed_bicg14_bicg_avm_read = i_llvm_fpga_mem_unnamed_bicg14_bicg28_out_unnamed_bicg14_bicg_avm_read;
    assign out_unnamed_bicg14_bicg_avm_write = i_llvm_fpga_mem_unnamed_bicg14_bicg28_out_unnamed_bicg14_bicg_avm_write;
    assign out_unnamed_bicg14_bicg_avm_writedata = i_llvm_fpga_mem_unnamed_bicg14_bicg28_out_unnamed_bicg14_bicg_avm_writedata;
    assign out_unnamed_bicg14_bicg_avm_byteenable = i_llvm_fpga_mem_unnamed_bicg14_bicg28_out_unnamed_bicg14_bicg_avm_byteenable;
    assign out_unnamed_bicg14_bicg_avm_burstcount = i_llvm_fpga_mem_unnamed_bicg14_bicg28_out_unnamed_bicg14_bicg_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,17)
    assign out_unnamed_bicg15_bicg_avm_address = i_llvm_fpga_mem_unnamed_bicg15_bicg31_out_unnamed_bicg15_bicg_avm_address;
    assign out_unnamed_bicg15_bicg_avm_enable = i_llvm_fpga_mem_unnamed_bicg15_bicg31_out_unnamed_bicg15_bicg_avm_enable;
    assign out_unnamed_bicg15_bicg_avm_read = i_llvm_fpga_mem_unnamed_bicg15_bicg31_out_unnamed_bicg15_bicg_avm_read;
    assign out_unnamed_bicg15_bicg_avm_write = i_llvm_fpga_mem_unnamed_bicg15_bicg31_out_unnamed_bicg15_bicg_avm_write;
    assign out_unnamed_bicg15_bicg_avm_writedata = i_llvm_fpga_mem_unnamed_bicg15_bicg31_out_unnamed_bicg15_bicg_avm_writedata;
    assign out_unnamed_bicg15_bicg_avm_byteenable = i_llvm_fpga_mem_unnamed_bicg15_bicg31_out_unnamed_bicg15_bicg_avm_byteenable;
    assign out_unnamed_bicg15_bicg_avm_burstcount = i_llvm_fpga_mem_unnamed_bicg15_bicg31_out_unnamed_bicg15_bicg_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,19)
    assign out_memdep_bicg_avm_address = i_llvm_fpga_mem_memdep_bicg39_out_memdep_bicg_avm_address;
    assign out_memdep_bicg_avm_enable = i_llvm_fpga_mem_memdep_bicg39_out_memdep_bicg_avm_enable;
    assign out_memdep_bicg_avm_read = i_llvm_fpga_mem_memdep_bicg39_out_memdep_bicg_avm_read;
    assign out_memdep_bicg_avm_write = i_llvm_fpga_mem_memdep_bicg39_out_memdep_bicg_avm_write;
    assign out_memdep_bicg_avm_writedata = i_llvm_fpga_mem_memdep_bicg39_out_memdep_bicg_avm_writedata;
    assign out_memdep_bicg_avm_byteenable = i_llvm_fpga_mem_memdep_bicg39_out_memdep_bicg_avm_byteenable;
    assign out_memdep_bicg_avm_burstcount = i_llvm_fpga_mem_memdep_bicg39_out_memdep_bicg_avm_burstcount;

    // dupName_4_ext_sig_sync_out_x(GPOUT,20)
    assign out_lsu_memdep_o_active = i_llvm_fpga_mem_memdep_bicg39_out_lsu_memdep_o_active;

    // dupName_5_ext_sig_sync_out_x(GPOUT,21)
    assign out_unnamed_bicg16_bicg_avm_address = i_llvm_fpga_mem_unnamed_bicg16_bicg44_out_unnamed_bicg16_bicg_avm_address;
    assign out_unnamed_bicg16_bicg_avm_enable = i_llvm_fpga_mem_unnamed_bicg16_bicg44_out_unnamed_bicg16_bicg_avm_enable;
    assign out_unnamed_bicg16_bicg_avm_read = i_llvm_fpga_mem_unnamed_bicg16_bicg44_out_unnamed_bicg16_bicg_avm_read;
    assign out_unnamed_bicg16_bicg_avm_write = i_llvm_fpga_mem_unnamed_bicg16_bicg44_out_unnamed_bicg16_bicg_avm_write;
    assign out_unnamed_bicg16_bicg_avm_writedata = i_llvm_fpga_mem_unnamed_bicg16_bicg44_out_unnamed_bicg16_bicg_avm_writedata;
    assign out_unnamed_bicg16_bicg_avm_byteenable = i_llvm_fpga_mem_unnamed_bicg16_bicg44_out_unnamed_bicg16_bicg_avm_byteenable;
    assign out_unnamed_bicg16_bicg_avm_burstcount = i_llvm_fpga_mem_unnamed_bicg16_bicg44_out_unnamed_bicg16_bicg_avm_burstcount;

    // ext_sig_sync_out(GPOUT,70)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_bicg4_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_bicg4_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_bicg4_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_bicg4_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,233)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_bicg4_out_pipeline_valid_out;

    // sync_out(GPOUT,241)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
