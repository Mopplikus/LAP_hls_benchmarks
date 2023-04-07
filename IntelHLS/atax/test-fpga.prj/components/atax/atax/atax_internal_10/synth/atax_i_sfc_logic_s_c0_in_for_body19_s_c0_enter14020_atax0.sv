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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body19_ataxs_c0_enter14020_atax0
// Created for function/kernel atax
// SystemVerilog created on Fri Apr  7 18:08:55 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_i_sfc_logic_s_c0_in_for_body19_s_c0_enter14020_atax0 (
    input wire [31:0] in_unnamed_atax7_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax7_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax7_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax7_atax_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [31:0] in_unnamed_atax8_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax8_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax8_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax8_atax_avm_readdatavalid,
    output wire [31:0] out_unnamed_atax7_atax_avm_address,
    output wire [0:0] out_unnamed_atax7_atax_avm_enable,
    output wire [0:0] out_unnamed_atax7_atax_avm_read,
    output wire [0:0] out_unnamed_atax7_atax_avm_write,
    output wire [31:0] out_unnamed_atax7_atax_avm_writedata,
    output wire [3:0] out_unnamed_atax7_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax7_atax_avm_burstcount,
    input wire [31:0] in_memdep_1_atax_avm_readdata,
    input wire [0:0] in_memdep_1_atax_avm_writeack,
    input wire [0:0] in_memdep_1_atax_avm_waitrequest,
    input wire [0:0] in_memdep_1_atax_avm_readdatavalid,
    output wire [31:0] out_unnamed_atax8_atax_avm_address,
    output wire [0:0] out_unnamed_atax8_atax_avm_enable,
    output wire [0:0] out_unnamed_atax8_atax_avm_read,
    output wire [0:0] out_unnamed_atax8_atax_avm_write,
    output wire [31:0] out_unnamed_atax8_atax_avm_writedata,
    output wire [3:0] out_unnamed_atax8_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax8_atax_avm_burstcount,
    output wire [31:0] out_memdep_1_atax_avm_address,
    output wire [0:0] out_memdep_1_atax_avm_enable,
    output wire [0:0] out_memdep_1_atax_avm_read,
    output wire [0:0] out_memdep_1_atax_avm_write,
    output wire [31:0] out_memdep_1_atax_avm_writedata,
    output wire [3:0] out_memdep_1_atax_avm_byteenable,
    output wire [0:0] out_memdep_1_atax_avm_burstcount,
    output wire [0:0] out_c0_exi9160_0_tpl,
    output wire [0:0] out_c0_exi9160_1_tpl,
    output wire [31:0] out_c0_exi9160_2_tpl,
    output wire [0:0] out_c0_exi9160_3_tpl,
    output wire [0:0] out_c0_exi9160_4_tpl,
    output wire [63:0] out_c0_exi9160_5_tpl,
    output wire [0:0] out_c0_exi9160_6_tpl,
    output wire [0:0] out_c0_exi9160_7_tpl,
    output wire [0:0] out_c0_exi9160_8_tpl,
    output wire [0:0] out_c0_exi9160_9_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_atax0,
    input wire [0:0] in_c0_eni11139_0_tpl,
    input wire [0:0] in_c0_eni11139_1_tpl,
    input wire [0:0] in_c0_eni11139_2_tpl,
    input wire [0:0] in_c0_eni11139_3_tpl,
    input wire [63:0] in_c0_eni11139_4_tpl,
    input wire [31:0] in_c0_eni11139_5_tpl,
    input wire [0:0] in_c0_eni11139_6_tpl,
    input wire [63:0] in_c0_eni11139_7_tpl,
    input wire [0:0] in_c0_eni11139_8_tpl,
    input wire [0:0] in_c0_eni11139_9_tpl,
    input wire [0:0] in_c0_eni11139_10_tpl,
    input wire [0:0] in_c0_eni11139_11_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_atax_A_local_pmem_q;
    wire [63:0] c_atax_y_local_pmem_q;
    wire [1:0] c_i2_182_q;
    wire [31:0] c_i32_084_q;
    wire [31:0] c_i32_185_q;
    wire [5:0] c_i6_188_q;
    wire [5:0] c_i6_1886_q;
    wire [32:0] i_add27_atax28_a;
    wire [32:0] i_add27_atax28_b;
    logic [32:0] i_add27_atax28_o;
    wire [32:0] i_add27_atax28_q;
    wire [1:0] i_arrayidx214_atax14_vt_const_1_q;
    wire [63:0] i_arrayidx214_atax14_vt_join_q;
    wire [61:0] i_arrayidx214_atax14_vt_select_63_b;
    wire [63:0] i_arrayidx255_atax23_vt_join_q;
    wire [61:0] i_arrayidx255_atax23_vt_select_63_b;
    wire [1:0] i_cleanups_shl_atax5_vt_join_q;
    wire [0:0] i_cleanups_shl_atax5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor_atax4_q;
    wire [6:0] i_fpga_indvars_iv_next5_atax40_a;
    wire [6:0] i_fpga_indvars_iv_next5_atax40_b;
    logic [6:0] i_fpga_indvars_iv_next5_atax40_o;
    wire [6:0] i_fpga_indvars_iv_next5_atax40_q;
    wire [63:0] i_idxprom20_atax13_vt_join_q;
    wire [31:0] i_idxprom20_atax13_vt_select_31_b;
    wire [32:0] i_inc31_atax30_a;
    wire [32:0] i_inc31_atax30_b;
    logic [32:0] i_inc31_atax30_o;
    wire [32:0] i_inc31_atax30_q;
    wire [31:0] i_llvm_fpga_mem_memdep_1_atax29_out_memdep_1_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_1_atax29_out_memdep_1_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_1_atax29_out_memdep_1_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_1_atax29_out_memdep_1_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_1_atax29_out_memdep_1_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_1_atax29_out_memdep_1_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_1_atax29_out_memdep_1_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_1_atax29_out_o_writeack;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax7_atax20_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax7_atax20_out_unnamed_atax7_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax7_atax20_out_unnamed_atax7_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_atax7_atax20_out_unnamed_atax7_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax7_atax20_out_unnamed_atax7_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax7_atax20_out_unnamed_atax7_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax7_atax20_out_unnamed_atax7_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax7_atax20_out_unnamed_atax7_atax_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax8_atax24_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax8_atax24_out_unnamed_atax8_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax8_atax24_out_unnamed_atax8_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_atax8_atax24_out_unnamed_atax8_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax8_atax24_out_unnamed_atax8_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax8_atax24_out_unnamed_atax8_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax8_atax24_out_unnamed_atax8_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax8_atax24_out_unnamed_atax8_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond948_pop36_atax47_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond948_pop36_atax47_out_feedback_stall_out_36;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1351_pop38_atax17_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1351_pop38_atax17_out_feedback_stall_out_38;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop1041_pop33_atax15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop1041_pop33_atax15_out_feedback_stall_out_33;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop938_pop32_atax43_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop938_pop32_atax43_out_feedback_stall_out_32;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2650_pop37_atax49_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2650_pop37_atax49_out_feedback_stall_out_37;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop31_atax2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop31_atax2_out_feedback_stall_out_31;
    wire [1:0] i_llvm_fpga_pop_i2_initerations_pop30_atax7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop30_atax7_out_feedback_stall_out_30;
    wire [31:0] i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_add52_pop39_atax25_out_feedback_stall_out_39;
    wire [31:0] i_llvm_fpga_pop_i32_j15_021_pop29_atax12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j15_021_pop29_atax12_out_feedback_stall_out_29;
    wire [63:0] i_llvm_fpga_pop_i64_idxprom44_pop34_atax21_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_idxprom44_pop34_atax21_out_feedback_stall_out_34;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop28_atax32_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop28_atax32_out_feedback_stall_out_28;
    wire [63:0] i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_feedback_stall_out_35;
    wire [0:0] i_llvm_fpga_push_i1_exitcond948_push36_atax48_out_feedback_out_36;
    wire [0:0] i_llvm_fpga_push_i1_exitcond948_push36_atax48_out_feedback_valid_out_36;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_atax11_out_feedback_out_1;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_atax11_out_feedback_valid_out_1;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1351_push38_atax18_out_feedback_out_38;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1351_push38_atax18_out_feedback_valid_out_38;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1041_push33_atax16_out_feedback_out_33;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1041_push33_atax16_out_feedback_valid_out_33;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop938_push32_atax44_out_feedback_out_32;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop938_push32_atax44_out_feedback_valid_out_32;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2650_push37_atax50_out_feedback_out_37;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2650_push37_atax50_out_feedback_valid_out_37;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_atax36_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_atax36_out_feedback_valid_out_2;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push31_atax39_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push31_atax39_out_feedback_valid_out_31;
    wire [7:0] i_llvm_fpga_push_i2_initerations_push30_atax9_out_feedback_out_30;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push30_atax9_out_feedback_valid_out_30;
    wire [31:0] i_llvm_fpga_push_i32_add52_push39_atax26_out_feedback_out_39;
    wire [0:0] i_llvm_fpga_push_i32_add52_push39_atax26_out_feedback_valid_out_39;
    wire [31:0] i_llvm_fpga_push_i32_j15_021_push29_atax31_out_feedback_out_29;
    wire [0:0] i_llvm_fpga_push_i32_j15_021_push29_atax31_out_feedback_valid_out_29;
    wire [63:0] i_llvm_fpga_push_i64_idxprom44_push34_atax22_out_feedback_out_34;
    wire [0:0] i_llvm_fpga_push_i64_idxprom44_push34_atax22_out_feedback_valid_out_34;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv4_push28_atax41_out_feedback_out_28;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv4_push28_atax41_out_feedback_valid_out_28;
    wire [63:0] i_llvm_fpga_push_p67i32_arrayidx146_push35_atax46_out_feedback_out_35;
    wire [0:0] i_llvm_fpga_push_p67i32_arrayidx146_push35_atax46_out_feedback_valid_out_35;
    wire [0:0] i_masked_atax42_qi;
    reg [0:0] i_masked_atax42_q;
    wire [0:0] i_memdep_phi3_or_atax19_qi;
    reg [0:0] i_memdep_phi3_or_atax19_q;
    wire [0:0] i_next_cleanups_atax38_s;
    reg [1:0] i_next_cleanups_atax38_q;
    wire [1:0] i_next_initerations_atax8_vt_join_q;
    wire [0:0] i_next_initerations_atax8_vt_select_0_b;
    wire [0:0] i_notcmp_atax35_q;
    wire [0:0] i_or_atax37_q;
    wire [31:0] bgTrunc_i_add27_atax28_sel_x_b;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next5_atax40_sel_x_b;
    wire [31:0] bgTrunc_i_inc31_atax30_sel_x_b;
    wire [63:0] bgTrunc_i_mul26_atax27_sel_x_in;
    wire [31:0] bgTrunc_i_mul26_atax27_sel_x_b;
    wire [7:0] i_arrayidx214_atax0_add_x_a;
    wire [7:0] i_arrayidx214_atax0_add_x_b;
    logic [7:0] i_arrayidx214_atax0_add_x_o;
    wire [7:0] i_arrayidx214_atax0_add_x_q;
    wire [63:0] i_arrayidx214_atax0_append_upper_bits_x_q;
    wire [4:0] i_arrayidx214_atax0_narrow_x_b;
    wire [6:0] i_arrayidx214_atax0_shift_join_x_q;
    wire [6:0] i_arrayidx214_atax0_dupName_0_trunc_sel_x_b;
    wire [6:0] i_arrayidx214_atax0_dupName_2_trunc_sel_x_b;
    wire [11:0] i_arrayidx255_atax0_add_x_a;
    wire [11:0] i_arrayidx255_atax0_add_x_b;
    logic [11:0] i_arrayidx255_atax0_add_x_o;
    wire [11:0] i_arrayidx255_atax0_add_x_q;
    wire [63:0] i_arrayidx255_atax0_append_upper_bits_x_q;
    wire [8:0] i_arrayidx255_atax0_narrow_x_b;
    wire [10:0] i_arrayidx255_atax0_shift_join_x_q;
    wire [11:0] i_arrayidx255_atax0_dupName_0_add_x_a;
    wire [11:0] i_arrayidx255_atax0_dupName_0_add_x_b;
    logic [11:0] i_arrayidx255_atax0_dupName_0_add_x_o;
    wire [11:0] i_arrayidx255_atax0_dupName_0_add_x_q;
    wire [21:0] i_arrayidx255_atax0_mult_extender_x_q;
    wire [3:0] i_arrayidx255_atax0_mult_multconst_x_q;
    wire [10:0] i_arrayidx255_atax0_dupName_0_trunc_sel_x_b;
    wire [10:0] i_arrayidx255_atax0_dupName_1_trunc_sel_x_b;
    wire [10:0] i_arrayidx255_atax0_dupName_2_trunc_sel_x_b;
    wire [10:0] i_arrayidx255_atax0_dupName_3_trunc_sel_x_b;
    wire [10:0] i_arrayidx255_atax0_dupName_5_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_atax3_sel_x_b;
    wire [63:0] i_idxprom20_atax13_sel_x_b;
    wire [0:0] i_last_initeration_atax10_sel_x_b;
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
    wire [0:0] i_exitcond6_atax33_cmp_nsign_q;
    wire [63:0] i_mul26_atax27_sums_join_0_q;
    wire [50:0] i_mul26_atax27_sums_align_1_q;
    wire [50:0] i_mul26_atax27_sums_align_1_qint;
    wire [64:0] i_mul26_atax27_sums_result_add_0_0_a;
    wire [64:0] i_mul26_atax27_sums_result_add_0_0_b;
    logic [64:0] i_mul26_atax27_sums_result_add_0_0_o;
    wire [64:0] i_mul26_atax27_sums_result_add_0_0_q;
    wire [11:0] addsumAHighB_uid230_i_arrayidx255_atax0_mult_x_a;
    wire [11:0] addsumAHighB_uid230_i_arrayidx255_atax0_mult_x_b;
    logic [11:0] addsumAHighB_uid230_i_arrayidx255_atax0_mult_x_o;
    wire [11:0] addsumAHighB_uid230_i_arrayidx255_atax0_mult_x_q;
    wire [13:0] add_uid231_i_arrayidx255_atax0_mult_x_q;
    wire [17:0] sR_mergedSignalTM_uid236_i_arrayidx255_atax0_mult_x_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid270_i_cleanups_shl_atax0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid270_i_cleanups_shl_atax0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid271_i_cleanups_shl_atax0_shift_x_q;
    wire [0:0] leftShiftStage0_uid273_i_cleanups_shl_atax0_shift_x_s;
    reg [1:0] leftShiftStage0_uid273_i_cleanups_shl_atax0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid277_i_next_initerations_atax0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid279_i_next_initerations_atax0_shift_x_q;
    wire [0:0] rightShiftStage0_uid281_i_next_initerations_atax0_shift_x_s;
    reg [1:0] rightShiftStage0_uid281_i_next_initerations_atax0_shift_x_q;
    wire i_mul26_atax27_im0_cma_reset;
    wire [13:0] i_mul26_atax27_im0_cma_a0;
    wire [13:0] i_mul26_atax27_im0_cma_c0;
    wire [27:0] i_mul26_atax27_im0_cma_s0;
    wire [27:0] i_mul26_atax27_im0_cma_qq;
    wire [27:0] i_mul26_atax27_im0_cma_q;
    wire i_mul26_atax27_im0_cma_ena0;
    wire i_mul26_atax27_im0_cma_ena1;
    wire i_mul26_atax27_im0_cma_ena2;
    wire i_mul26_atax27_im8_cma_reset;
    wire [17:0] i_mul26_atax27_im8_cma_a0;
    wire [17:0] i_mul26_atax27_im8_cma_c0;
    wire [35:0] i_mul26_atax27_im8_cma_s0;
    wire [35:0] i_mul26_atax27_im8_cma_qq;
    wire [35:0] i_mul26_atax27_im8_cma_q;
    wire i_mul26_atax27_im8_cma_ena0;
    wire i_mul26_atax27_im8_cma_ena1;
    wire i_mul26_atax27_im8_cma_ena2;
    wire i_mul26_atax27_ma3_cma_reset;
    wire [13:0] i_mul26_atax27_ma3_cma_a0;
    wire [17:0] i_mul26_atax27_ma3_cma_c0;
    wire [13:0] i_mul26_atax27_ma3_cma_a1;
    wire [17:0] i_mul26_atax27_ma3_cma_c1;
    wire [32:0] i_mul26_atax27_ma3_cma_s0;
    wire [32:0] i_mul26_atax27_ma3_cma_qq;
    wire [32:0] i_mul26_atax27_ma3_cma_q;
    wire i_mul26_atax27_ma3_cma_ena0;
    wire i_mul26_atax27_ma3_cma_ena1;
    wire i_mul26_atax27_ma3_cma_ena2;
    wire [52:0] i_arrayidx255_atax0_upper_bits_x_merged_bit_select_b;
    wire [10:0] i_arrayidx255_atax0_upper_bits_x_merged_bit_select_c;
    wire [56:0] i_arrayidx214_atax0_upper_bits_x_merged_bit_select_b;
    wire [6:0] i_arrayidx214_atax0_upper_bits_x_merged_bit_select_c;
    wire [13:0] i_mul26_atax27_bs1_merged_bit_select_b;
    wire [17:0] i_mul26_atax27_bs1_merged_bit_select_c;
    wire [13:0] i_mul26_atax27_bs2_merged_bit_select_b;
    wire [17:0] i_mul26_atax27_bs2_merged_bit_select_c;
    wire [1:0] lowRangeB_uid228_i_arrayidx255_atax0_mult_x_merged_bit_select_b;
    wire [8:0] lowRangeB_uid228_i_arrayidx255_atax0_mult_x_merged_bit_select_c;
    reg [0:0] redist0_valid_fanout_reg0_q_1_q;
    reg [0:0] redist1_sync_together119_aunroll_x_in_c0_eni11139_1_tpl_1_q;
    reg [0:0] redist2_sync_together119_aunroll_x_in_c0_eni11139_1_tpl_2_q;
    reg [0:0] redist3_sync_together119_aunroll_x_in_c0_eni11139_2_tpl_1_q;
    reg [0:0] redist4_sync_together119_aunroll_x_in_c0_eni11139_3_tpl_1_q;
    reg [63:0] redist5_sync_together119_aunroll_x_in_c0_eni11139_4_tpl_1_q;
    reg [31:0] redist6_sync_together119_aunroll_x_in_c0_eni11139_5_tpl_1_q;
    reg [0:0] redist7_sync_together119_aunroll_x_in_c0_eni11139_6_tpl_1_q;
    reg [63:0] redist8_sync_together119_aunroll_x_in_c0_eni11139_7_tpl_1_q;
    reg [0:0] redist9_sync_together119_aunroll_x_in_c0_eni11139_8_tpl_2_q;
    reg [0:0] redist9_sync_together119_aunroll_x_in_c0_eni11139_8_tpl_2_delay_0;
    reg [0:0] redist10_sync_together119_aunroll_x_in_c0_eni11139_9_tpl_2_q;
    reg [0:0] redist10_sync_together119_aunroll_x_in_c0_eni11139_9_tpl_2_delay_0;
    reg [0:0] redist11_sync_together119_aunroll_x_in_c0_eni11139_10_tpl_11_q;
    reg [0:0] redist12_sync_together119_aunroll_x_in_c0_eni11139_11_tpl_11_q;
    reg [0:0] redist13_sync_together119_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist14_sync_together119_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist15_sync_together119_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist15_sync_together119_aunroll_x_in_i_valid_5_delay_0;
    reg [0:0] redist15_sync_together119_aunroll_x_in_i_valid_5_delay_1;
    reg [0:0] redist16_sync_together119_aunroll_x_in_i_valid_9_q;
    reg [0:0] redist16_sync_together119_aunroll_x_in_i_valid_9_delay_0;
    reg [0:0] redist16_sync_together119_aunroll_x_in_i_valid_9_delay_1;
    reg [0:0] redist16_sync_together119_aunroll_x_in_i_valid_9_delay_2;
    reg [10:0] redist17_i_arrayidx255_atax0_dupName_1_trunc_sel_x_b_1_q;
    reg [4:0] redist18_i_arrayidx214_atax0_narrow_x_b_4_q;
    reg [4:0] redist18_i_arrayidx214_atax0_narrow_x_b_4_delay_0;
    reg [4:0] redist18_i_arrayidx214_atax0_narrow_x_b_4_delay_1;
    reg [4:0] redist18_i_arrayidx214_atax0_narrow_x_b_4_delay_2;
    reg [31:0] redist19_bgTrunc_i_mul26_atax27_sel_x_b_1_q;
    reg [0:0] redist20_i_memdep_phi3_or_atax19_q_5_q;
    reg [0:0] redist20_i_memdep_phi3_or_atax19_q_5_delay_0;
    reg [0:0] redist20_i_memdep_phi3_or_atax19_q_5_delay_1;
    reg [0:0] redist20_i_memdep_phi3_or_atax19_q_5_delay_2;
    reg [0:0] redist21_i_masked_atax42_q_10_q;
    reg [31:0] redist23_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_1_q;
    reg [0:0] redist26_i_llvm_fpga_pop_i1_notcmp2650_pop37_atax49_out_data_out_1_q;
    reg [0:0] redist27_i_llvm_fpga_pop_i1_notcmp2650_pop37_atax49_out_data_out_9_q;
    reg [0:0] redist28_i_llvm_fpga_pop_i1_exitcond948_pop36_atax47_out_data_out_1_q;
    reg [0:0] redist29_i_llvm_fpga_pop_i1_exitcond948_pop36_atax47_out_data_out_9_q;
    reg [0:0] redist30_i_llvm_fpga_pipeline_keep_going_atax6_out_data_out_1_q;
    reg [0:0] redist31_i_llvm_fpga_pipeline_keep_going_atax6_out_data_out_2_q;
    reg [0:0] redist32_i_llvm_fpga_pipeline_keep_going_atax6_out_data_out_3_q;
    reg [0:0] redist33_i_llvm_fpga_pipeline_keep_going_atax6_out_data_out_11_q;
    reg [0:0] redist34_i_first_cleanup_xor_atax4_q_1_q;
    reg [0:0] redist35_i_first_cleanup_xor_atax4_q_5_q;
    reg [0:0] redist35_i_first_cleanup_xor_atax4_q_5_delay_0;
    reg [0:0] redist35_i_first_cleanup_xor_atax4_q_5_delay_1;
    reg [0:0] redist35_i_first_cleanup_xor_atax4_q_5_delay_2;
    reg [0:0] redist36_i_first_cleanup_xor_atax4_q_9_q;
    reg [0:0] redist36_i_first_cleanup_xor_atax4_q_9_delay_0;
    reg [0:0] redist36_i_first_cleanup_xor_atax4_q_9_delay_1;
    reg [0:0] redist36_i_first_cleanup_xor_atax4_q_9_delay_2;
    wire redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_mem_reset0;
    wire [63:0] redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_mem_ia;
    wire [3:0] redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_mem_aa;
    wire [3:0] redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_mem_ab;
    wire [63:0] redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_mem_iq;
    wire [63:0] redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_mem_q;
    wire [3:0] redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_rdcnt_q;
    (* preserve *) reg [3:0] redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_rdcnt_i;
    (* preserve *) reg redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_rdcnt_eq;
    reg [3:0] redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_wraddr_q;
    wire [3:0] redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_mem_last_q;
    wire [0:0] redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_cmp_q;
    (* dont_merge *) reg [0:0] redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_cmpReg_q;
    wire [0:0] redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_notEnable_q;
    wire [0:0] redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_nor_q;
    (* dont_merge *) reg [0:0] redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_sticky_ena_q;
    wire [0:0] redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_enaAnd_q;
    wire redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_mem_reset0;
    wire [31:0] redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_mem_ia;
    wire [1:0] redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_mem_aa;
    wire [1:0] redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_mem_ab;
    wire [31:0] redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_mem_iq;
    wire [31:0] redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_mem_q;
    wire [1:0] redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_rdcnt_q;
    (* preserve *) reg [1:0] redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_rdcnt_i;
    (* preserve *) reg redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_rdcnt_eq;
    reg [1:0] redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_wraddr_q;
    wire [1:0] redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_mem_last_q;
    wire [0:0] redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_cmp_q;
    (* dont_merge *) reg [0:0] redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_cmpReg_q;
    wire [0:0] redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_notEnable_q;
    wire [0:0] redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_nor_q;
    (* dont_merge *) reg [0:0] redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_sticky_ena_q;
    wire [0:0] redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_enaAnd_q;
    wire redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_mem_reset0;
    wire [31:0] redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_mem_ia;
    wire [1:0] redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_mem_aa;
    wire [1:0] redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_mem_ab;
    wire [31:0] redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_mem_iq;
    wire [31:0] redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_mem_q;
    wire [1:0] redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_rdcnt_q;
    (* preserve *) reg [1:0] redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_rdcnt_i;
    reg [1:0] redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_wraddr_q;
    wire [2:0] redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_mem_last_q;
    wire [2:0] redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_cmp_b;
    wire [0:0] redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_cmp_q;
    (* dont_merge *) reg [0:0] redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_cmpReg_q;
    wire [0:0] redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_notEnable_q;
    wire [0:0] redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_nor_q;
    (* dont_merge *) reg [0:0] redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_sticky_ena_q;
    wire [0:0] redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_enaAnd_q;
    wire redist37_i_arrayidx214_atax14_vt_join_q_4_mem_reset0;
    wire [63:0] redist37_i_arrayidx214_atax14_vt_join_q_4_mem_ia;
    wire [1:0] redist37_i_arrayidx214_atax14_vt_join_q_4_mem_aa;
    wire [1:0] redist37_i_arrayidx214_atax14_vt_join_q_4_mem_ab;
    wire [63:0] redist37_i_arrayidx214_atax14_vt_join_q_4_mem_iq;
    wire [63:0] redist37_i_arrayidx214_atax14_vt_join_q_4_mem_q;
    wire [1:0] redist37_i_arrayidx214_atax14_vt_join_q_4_rdcnt_q;
    (* preserve *) reg [1:0] redist37_i_arrayidx214_atax14_vt_join_q_4_rdcnt_i;
    (* preserve *) reg redist37_i_arrayidx214_atax14_vt_join_q_4_rdcnt_eq;
    reg [1:0] redist37_i_arrayidx214_atax14_vt_join_q_4_wraddr_q;
    wire [1:0] redist37_i_arrayidx214_atax14_vt_join_q_4_mem_last_q;
    wire [0:0] redist37_i_arrayidx214_atax14_vt_join_q_4_cmp_q;
    (* dont_merge *) reg [0:0] redist37_i_arrayidx214_atax14_vt_join_q_4_cmpReg_q;
    wire [0:0] redist37_i_arrayidx214_atax14_vt_join_q_4_notEnable_q;
    wire [0:0] redist37_i_arrayidx214_atax14_vt_join_q_4_nor_q;
    (* dont_merge *) reg [0:0] redist37_i_arrayidx214_atax14_vt_join_q_4_sticky_ena_q;
    wire [0:0] redist37_i_arrayidx214_atax14_vt_join_q_4_enaAnd_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist13_sync_together119_aunroll_x_in_i_valid_1(DELAY,303)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together119_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist13_sync_together119_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist30_i_llvm_fpga_pipeline_keep_going_atax6_out_data_out_1(DELAY,320)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_llvm_fpga_pipeline_keep_going_atax6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist30_i_llvm_fpga_pipeline_keep_going_atax6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_atax6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid270_i_cleanups_shl_atax0_shift_x(BITSELECT,269)@2
    assign leftShiftStage0Idx1Rng1_uid270_i_cleanups_shl_atax0_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop31_atax2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid270_i_cleanups_shl_atax0_shift_x_b = leftShiftStage0Idx1Rng1_uid270_i_cleanups_shl_atax0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid271_i_cleanups_shl_atax0_shift_x(BITJOIN,270)@2
    assign leftShiftStage0Idx1_uid271_i_cleanups_shl_atax0_shift_x_q = {leftShiftStage0Idx1Rng1_uid270_i_cleanups_shl_atax0_shift_x_b, GND_q};

    // leftShiftStage0_uid273_i_cleanups_shl_atax0_shift_x(MUX,272)@2
    assign leftShiftStage0_uid273_i_cleanups_shl_atax0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid273_i_cleanups_shl_atax0_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop31_atax2_out_data_out or leftShiftStage0Idx1_uid271_i_cleanups_shl_atax0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid273_i_cleanups_shl_atax0_shift_x_s)
            1'b0 : leftShiftStage0_uid273_i_cleanups_shl_atax0_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop31_atax2_out_data_out;
            1'b1 : leftShiftStage0_uid273_i_cleanups_shl_atax0_shift_x_q = leftShiftStage0Idx1_uid271_i_cleanups_shl_atax0_shift_x_q;
            default : leftShiftStage0_uid273_i_cleanups_shl_atax0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_atax5_vt_select_1(BITSELECT,55)@2
    assign i_cleanups_shl_atax5_vt_select_1_b = leftShiftStage0_uid273_i_cleanups_shl_atax0_shift_x_q[1:1];

    // i_cleanups_shl_atax5_vt_join(BITJOIN,54)@2
    assign i_cleanups_shl_atax5_vt_join_q = {i_cleanups_shl_atax5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor_atax4(LOGICAL,58)@2
    assign i_first_cleanup_xor_atax4_q = i_first_cleanup_atax3_sel_x_b ^ VCC_q;

    // i_notcmp_atax35(LOGICAL,103)@2
    assign i_notcmp_atax35_q = i_exitcond6_atax33_cmp_nsign_q ^ VCC_q;

    // i_or_atax37(LOGICAL,104)@2
    assign i_or_atax37_q = i_notcmp_atax35_q | i_first_cleanup_xor_atax4_q;

    // i_next_cleanups_atax38(MUX,99)@2
    assign i_next_cleanups_atax38_s = i_or_atax37_q;
    always @(i_next_cleanups_atax38_s or i_llvm_fpga_pop_i2_cleanups_pop31_atax2_out_data_out or i_cleanups_shl_atax5_vt_join_q)
    begin
        unique case (i_next_cleanups_atax38_s)
            1'b0 : i_next_cleanups_atax38_q = i_llvm_fpga_pop_i2_cleanups_pop31_atax2_out_data_out;
            1'b1 : i_next_cleanups_atax38_q = i_cleanups_shl_atax5_vt_join_q;
            default : i_next_cleanups_atax38_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push31_atax39(BLACKBOX,89)@2
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    atax_i_llvm_fpga_push_i2_cleanups_push31_0 thei_llvm_fpga_push_i2_cleanups_push31_atax39 (
        .in_data_in(i_next_cleanups_atax38_q),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_i2_cleanups_pop31_atax2_out_feedback_stall_out_31),
        .in_keep_going(redist30_i_llvm_fpga_pipeline_keep_going_atax6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist13_sync_together119_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_i2_cleanups_push31_atax39_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_i2_cleanups_push31_atax39_out_feedback_valid_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together119_aunroll_x_in_c0_eni11139_1_tpl_1(DELAY,291)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together119_aunroll_x_in_c0_eni11139_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together119_aunroll_x_in_c0_eni11139_1_tpl_1_q <= $unsigned(in_c0_eni11139_1_tpl);
        end
    end

    // c_i2_182(CONSTANT,39)
    assign c_i2_182_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop31_atax2(BLACKBOX,75)@2
    // out out_feedback_stall_out_31@20000000
    atax_i_llvm_fpga_pop_i2_cleanups_pop31_0 thei_llvm_fpga_pop_i2_cleanups_pop31_atax2 (
        .in_data_in(c_i2_182_q),
        .in_dir(redist1_sync_together119_aunroll_x_in_c0_eni11139_1_tpl_1_q),
        .in_feedback_in_31(i_llvm_fpga_push_i2_cleanups_push31_atax39_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_i2_cleanups_push31_atax39_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist13_sync_together119_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop31_atax2_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_i2_cleanups_pop31_atax2_out_feedback_stall_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_atax3_sel_x(BITSELECT,160)@2
    assign i_first_cleanup_atax3_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop31_atax2_out_data_out[0:0];

    // c_i6_188(CONSTANT,42)
    assign c_i6_188_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next5_atax40(ADD,59)@2
    assign i_fpga_indvars_iv_next5_atax40_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop28_atax32_out_data_out};
    assign i_fpga_indvars_iv_next5_atax40_b = {1'b0, c_i6_188_q};
    assign i_fpga_indvars_iv_next5_atax40_o = $unsigned(i_fpga_indvars_iv_next5_atax40_a) + $unsigned(i_fpga_indvars_iv_next5_atax40_b);
    assign i_fpga_indvars_iv_next5_atax40_q = i_fpga_indvars_iv_next5_atax40_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next5_atax40_sel_x(BITSELECT,111)@2
    assign bgTrunc_i_fpga_indvars_iv_next5_atax40_sel_x_b = i_fpga_indvars_iv_next5_atax40_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv4_push28_atax41(BLACKBOX,94)@2
    // out out_feedback_out_28@20000000
    // out out_feedback_valid_out_28@20000000
    atax_i_llvm_fpga_push_i6_fpga_indvars_iv4_push28_0 thei_llvm_fpga_push_i6_fpga_indvars_iv4_push28_atax41 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next5_atax40_sel_x_b),
        .in_feedback_stall_in_28(i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop28_atax32_out_feedback_stall_out_28),
        .in_keep_going(redist30_i_llvm_fpga_pipeline_keep_going_atax6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist13_sync_together119_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_28(i_llvm_fpga_push_i6_fpga_indvars_iv4_push28_atax41_out_feedback_out_28),
        .out_feedback_valid_out_28(i_llvm_fpga_push_i6_fpga_indvars_iv4_push28_atax41_out_feedback_valid_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_1886(CONSTANT,43)
    assign c_i6_1886_q = $unsigned(6'b010010);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop28_atax32(BLACKBOX,80)@2
    // out out_feedback_stall_out_28@20000000
    atax_i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop28_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv4_pop28_atax32 (
        .in_data_in(c_i6_1886_q),
        .in_dir(redist1_sync_together119_aunroll_x_in_c0_eni11139_1_tpl_1_q),
        .in_feedback_in_28(i_llvm_fpga_push_i6_fpga_indvars_iv4_push28_atax41_out_feedback_out_28),
        .in_feedback_valid_in_28(i_llvm_fpga_push_i6_fpga_indvars_iv4_push28_atax41_out_feedback_valid_out_28),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist13_sync_together119_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop28_atax32_out_data_out),
        .out_feedback_stall_out_28(i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop28_atax32_out_feedback_stall_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond6_atax33_cmp_nsign(LOGICAL,204)@2
    assign i_exitcond6_atax33_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop28_atax32_out_data_out[5:5]));

    // i_llvm_fpga_push_i1_notexitcond_atax36(BLACKBOX,88)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    atax_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_atax36 (
        .in_data_in(i_exitcond6_atax33_cmp_nsign_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_atax6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_atax3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist13_sync_together119_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_notexitcond_atax36_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_notexitcond_atax36_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,172)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid277_i_next_initerations_atax0_shift_x(BITSELECT,276)@2
    assign rightShiftStage0Idx1Rng1_uid277_i_next_initerations_atax0_shift_x_b = i_llvm_fpga_pop_i2_initerations_pop30_atax7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid279_i_next_initerations_atax0_shift_x(BITJOIN,278)@2
    assign rightShiftStage0Idx1_uid279_i_next_initerations_atax0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid277_i_next_initerations_atax0_shift_x_b};

    // valid_fanout_reg1(REG,170)@1 + 1
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

    // valid_fanout_reg2(REG,171)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations_push30_atax9(BLACKBOX,90)@2
    // out out_feedback_out_30@20000000
    // out out_feedback_valid_out_30@20000000
    atax_i_llvm_fpga_push_i2_initerations_push30_0 thei_llvm_fpga_push_i2_initerations_push30_atax9 (
        .in_data_in(i_next_initerations_atax8_vt_join_q),
        .in_feedback_stall_in_30(i_llvm_fpga_pop_i2_initerations_pop30_atax7_out_feedback_stall_out_30),
        .in_keep_going(redist30_i_llvm_fpga_pipeline_keep_going_atax6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_30(i_llvm_fpga_push_i2_initerations_push30_atax9_out_feedback_out_30),
        .out_feedback_valid_out_30(i_llvm_fpga_push_i2_initerations_push30_atax9_out_feedback_valid_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations_pop30_atax7(BLACKBOX,76)@2
    // out out_feedback_stall_out_30@20000000
    atax_i_llvm_fpga_pop_i2_initerations_pop30_0 thei_llvm_fpga_pop_i2_initerations_pop30_atax7 (
        .in_data_in(c_i2_182_q),
        .in_dir(redist1_sync_together119_aunroll_x_in_c0_eni11139_1_tpl_1_q),
        .in_feedback_in_30(i_llvm_fpga_push_i2_initerations_push30_atax9_out_feedback_out_30),
        .in_feedback_valid_in_30(i_llvm_fpga_push_i2_initerations_push30_atax9_out_feedback_valid_out_30),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations_pop30_atax7_out_data_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_i2_initerations_pop30_atax7_out_feedback_stall_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid281_i_next_initerations_atax0_shift_x(MUX,280)@2
    assign rightShiftStage0_uid281_i_next_initerations_atax0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid281_i_next_initerations_atax0_shift_x_s or i_llvm_fpga_pop_i2_initerations_pop30_atax7_out_data_out or rightShiftStage0Idx1_uid279_i_next_initerations_atax0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid281_i_next_initerations_atax0_shift_x_s)
            1'b0 : rightShiftStage0_uid281_i_next_initerations_atax0_shift_x_q = i_llvm_fpga_pop_i2_initerations_pop30_atax7_out_data_out;
            1'b1 : rightShiftStage0_uid281_i_next_initerations_atax0_shift_x_q = rightShiftStage0Idx1_uid279_i_next_initerations_atax0_shift_x_q;
            default : rightShiftStage0_uid281_i_next_initerations_atax0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations_atax8_vt_select_0(BITSELECT,102)@2
    assign i_next_initerations_atax8_vt_select_0_b = rightShiftStage0_uid281_i_next_initerations_atax0_shift_x_q[0:0];

    // i_next_initerations_atax8_vt_join(BITJOIN,101)@2
    assign i_next_initerations_atax8_vt_join_q = {GND_q, i_next_initerations_atax8_vt_select_0_b};

    // i_last_initeration_atax10_sel_x(BITSELECT,162)@2
    assign i_last_initeration_atax10_sel_x_b = i_next_initerations_atax8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_atax11(BLACKBOX,83)@2
    // out out_feedback_out_1@20000000
    // out out_feedback_valid_out_1@20000000
    atax_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_atax11 (
        .in_data_in(i_last_initeration_atax10_sel_x_b),
        .in_feedback_stall_in_1(i_llvm_fpga_pipeline_keep_going_atax6_out_initeration_stall_out),
        .in_keep_going(redist30_i_llvm_fpga_pipeline_keep_going_atax6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_1(i_llvm_fpga_push_i1_lastiniteration_atax11_out_feedback_out_1),
        .out_feedback_valid_out_1(i_llvm_fpga_push_i1_lastiniteration_atax11_out_feedback_valid_out_1),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_atax6(BLACKBOX,69)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    atax_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_atax6 (
        .in_data_in(in_c0_eni11139_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_atax11_out_feedback_out_1),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_atax11_out_feedback_valid_out_1),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_atax36_out_feedback_out_2),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_atax36_out_feedback_valid_out_2),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_atax6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_atax6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_atax6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_atax6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_atax6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_atax6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,45)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_atax6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_atax6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,107)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_atax6_out_pipeline_valid_out;

    // redist14_sync_together119_aunroll_x_in_i_valid_2(DELAY,304)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together119_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist14_sync_together119_aunroll_x_in_i_valid_2_q <= $unsigned(redist13_sync_together119_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist15_sync_together119_aunroll_x_in_i_valid_5(DELAY,305)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together119_aunroll_x_in_i_valid_5_delay_0 <= '0;
            redist15_sync_together119_aunroll_x_in_i_valid_5_delay_1 <= '0;
            redist15_sync_together119_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist15_sync_together119_aunroll_x_in_i_valid_5_delay_0 <= $unsigned(redist14_sync_together119_aunroll_x_in_i_valid_2_q);
            redist15_sync_together119_aunroll_x_in_i_valid_5_delay_1 <= redist15_sync_together119_aunroll_x_in_i_valid_5_delay_0;
            redist15_sync_together119_aunroll_x_in_i_valid_5_q <= redist15_sync_together119_aunroll_x_in_i_valid_5_delay_1;
        end
    end

    // valid_fanout_reg9(REG,178)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist15_sync_together119_aunroll_x_in_i_valid_5_q);
        end
    end

    // redist34_i_first_cleanup_xor_atax4_q_1(DELAY,324)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_first_cleanup_xor_atax4_q_1_q <= '0;
        end
        else
        begin
            redist34_i_first_cleanup_xor_atax4_q_1_q <= $unsigned(i_first_cleanup_xor_atax4_q);
        end
    end

    // redist35_i_first_cleanup_xor_atax4_q_5(DELAY,325)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_first_cleanup_xor_atax4_q_5_delay_0 <= '0;
            redist35_i_first_cleanup_xor_atax4_q_5_delay_1 <= '0;
            redist35_i_first_cleanup_xor_atax4_q_5_delay_2 <= '0;
            redist35_i_first_cleanup_xor_atax4_q_5_q <= '0;
        end
        else
        begin
            redist35_i_first_cleanup_xor_atax4_q_5_delay_0 <= $unsigned(redist34_i_first_cleanup_xor_atax4_q_1_q);
            redist35_i_first_cleanup_xor_atax4_q_5_delay_1 <= redist35_i_first_cleanup_xor_atax4_q_5_delay_0;
            redist35_i_first_cleanup_xor_atax4_q_5_delay_2 <= redist35_i_first_cleanup_xor_atax4_q_5_delay_1;
            redist35_i_first_cleanup_xor_atax4_q_5_q <= redist35_i_first_cleanup_xor_atax4_q_5_delay_2;
        end
    end

    // valid_fanout_reg5(REG,174)@1 + 1
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

    // valid_fanout_reg6(REG,175)@1 + 1
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

    // i_llvm_fpga_push_i1_memdep_phi3_pop1041_push33_atax16(BLACKBOX,85)@2
    // out out_feedback_out_33@20000000
    // out out_feedback_valid_out_33@20000000
    atax_i_llvm_fpga_push_i1_memdep_phi3_pop1041_push33_0 thei_llvm_fpga_push_i1_memdep_phi3_pop1041_push33_atax16 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi3_pop1041_pop33_atax15_out_data_out),
        .in_feedback_stall_in_33(i_llvm_fpga_pop_i1_memdep_phi3_pop1041_pop33_atax15_out_feedback_stall_out_33),
        .in_keep_going(redist30_i_llvm_fpga_pipeline_keep_going_atax6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_33(i_llvm_fpga_push_i1_memdep_phi3_pop1041_push33_atax16_out_feedback_out_33),
        .out_feedback_valid_out_33(i_llvm_fpga_push_i1_memdep_phi3_pop1041_push33_atax16_out_feedback_valid_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together119_aunroll_x_in_c0_eni11139_2_tpl_1(DELAY,293)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together119_aunroll_x_in_c0_eni11139_2_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together119_aunroll_x_in_c0_eni11139_2_tpl_1_q <= $unsigned(in_c0_eni11139_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi3_pop1041_pop33_atax15(BLACKBOX,72)@2
    // out out_feedback_stall_out_33@20000000
    atax_i_llvm_fpga_pop_i1_memdep_phi3_pop1041_pop33_0 thei_llvm_fpga_pop_i1_memdep_phi3_pop1041_pop33_atax15 (
        .in_data_in(redist3_sync_together119_aunroll_x_in_c0_eni11139_2_tpl_1_q),
        .in_dir(redist1_sync_together119_aunroll_x_in_c0_eni11139_1_tpl_1_q),
        .in_feedback_in_33(i_llvm_fpga_push_i1_memdep_phi3_pop1041_push33_atax16_out_feedback_out_33),
        .in_feedback_valid_in_33(i_llvm_fpga_push_i1_memdep_phi3_pop1041_push33_atax16_out_feedback_valid_out_33),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi3_pop1041_pop33_atax15_out_data_out),
        .out_feedback_stall_out_33(i_llvm_fpga_pop_i1_memdep_phi3_pop1041_pop33_atax15_out_feedback_stall_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg7(REG,176)@1 + 1
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

    // valid_fanout_reg8(REG,177)@1 + 1
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

    // i_llvm_fpga_push_i1_memdep_phi2_pop1351_push38_atax18(BLACKBOX,84)@2
    // out out_feedback_out_38@20000000
    // out out_feedback_valid_out_38@20000000
    atax_i_llvm_fpga_push_i1_memdep_phi2_pop1351_push38_0 thei_llvm_fpga_push_i1_memdep_phi2_pop1351_push38_atax18 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi2_pop1351_pop38_atax17_out_data_out),
        .in_feedback_stall_in_38(i_llvm_fpga_pop_i1_memdep_phi2_pop1351_pop38_atax17_out_feedback_stall_out_38),
        .in_keep_going(redist30_i_llvm_fpga_pipeline_keep_going_atax6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_38(i_llvm_fpga_push_i1_memdep_phi2_pop1351_push38_atax18_out_feedback_out_38),
        .out_feedback_valid_out_38(i_llvm_fpga_push_i1_memdep_phi2_pop1351_push38_atax18_out_feedback_valid_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together119_aunroll_x_in_c0_eni11139_3_tpl_1(DELAY,294)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together119_aunroll_x_in_c0_eni11139_3_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together119_aunroll_x_in_c0_eni11139_3_tpl_1_q <= $unsigned(in_c0_eni11139_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi2_pop1351_pop38_atax17(BLACKBOX,71)@2
    // out out_feedback_stall_out_38@20000000
    atax_i_llvm_fpga_pop_i1_memdep_phi2_pop1351_pop38_0 thei_llvm_fpga_pop_i1_memdep_phi2_pop1351_pop38_atax17 (
        .in_data_in(redist4_sync_together119_aunroll_x_in_c0_eni11139_3_tpl_1_q),
        .in_dir(redist1_sync_together119_aunroll_x_in_c0_eni11139_1_tpl_1_q),
        .in_feedback_in_38(i_llvm_fpga_push_i1_memdep_phi2_pop1351_push38_atax18_out_feedback_out_38),
        .in_feedback_valid_in_38(i_llvm_fpga_push_i1_memdep_phi2_pop1351_push38_atax18_out_feedback_valid_out_38),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi2_pop1351_pop38_atax17_out_data_out),
        .out_feedback_stall_out_38(i_llvm_fpga_pop_i1_memdep_phi2_pop1351_pop38_atax17_out_feedback_stall_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_memdep_phi3_or_atax19(LOGICAL,97)@2 + 1
    assign i_memdep_phi3_or_atax19_qi = i_llvm_fpga_pop_i1_memdep_phi2_pop1351_pop38_atax17_out_data_out | i_llvm_fpga_pop_i1_memdep_phi3_pop1041_pop33_atax15_out_data_out;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_memdep_phi3_or_atax19_delay ( .xin(i_memdep_phi3_or_atax19_qi), .xout(i_memdep_phi3_or_atax19_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist20_i_memdep_phi3_or_atax19_q_5(DELAY,310)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_memdep_phi3_or_atax19_q_5_delay_0 <= '0;
            redist20_i_memdep_phi3_or_atax19_q_5_delay_1 <= '0;
            redist20_i_memdep_phi3_or_atax19_q_5_delay_2 <= '0;
            redist20_i_memdep_phi3_or_atax19_q_5_q <= '0;
        end
        else
        begin
            redist20_i_memdep_phi3_or_atax19_q_5_delay_0 <= $unsigned(i_memdep_phi3_or_atax19_q);
            redist20_i_memdep_phi3_or_atax19_q_5_delay_1 <= redist20_i_memdep_phi3_or_atax19_q_5_delay_0;
            redist20_i_memdep_phi3_or_atax19_q_5_delay_2 <= redist20_i_memdep_phi3_or_atax19_q_5_delay_1;
            redist20_i_memdep_phi3_or_atax19_q_5_q <= redist20_i_memdep_phi3_or_atax19_q_5_delay_2;
        end
    end

    // c_atax_y_local_pmem(CONSTANT,7)
    assign c_atax_y_local_pmem_q = $unsigned(64'b0100000001000010000000000000000000000000000000000000000000000000);

    // i_arrayidx214_atax0_upper_bits_x_merged_bit_select(BITSELECT,286)@7
    assign i_arrayidx214_atax0_upper_bits_x_merged_bit_select_b = c_atax_y_local_pmem_q[63:7];
    assign i_arrayidx214_atax0_upper_bits_x_merged_bit_select_c = c_atax_y_local_pmem_q[6:0];

    // c_i32_084(CONSTANT,40)
    assign c_i32_084_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg4(REG,173)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist13_sync_together119_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg16(REG,185)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist13_sync_together119_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist31_i_llvm_fpga_pipeline_keep_going_atax6_out_data_out_2(DELAY,321)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_llvm_fpga_pipeline_keep_going_atax6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist31_i_llvm_fpga_pipeline_keep_going_atax6_out_data_out_2_q <= $unsigned(redist30_i_llvm_fpga_pipeline_keep_going_atax6_out_data_out_1_q);
        end
    end

    // c_i32_185(CONSTANT,41)
    assign c_i32_185_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc31_atax30(ADD,64)@3
    assign i_inc31_atax30_a = {1'b0, i_llvm_fpga_pop_i32_j15_021_pop29_atax12_out_data_out};
    assign i_inc31_atax30_b = {1'b0, c_i32_185_q};
    assign i_inc31_atax30_o = $unsigned(i_inc31_atax30_a) + $unsigned(i_inc31_atax30_b);
    assign i_inc31_atax30_q = i_inc31_atax30_o[32:0];

    // bgTrunc_i_inc31_atax30_sel_x(BITSELECT,112)@3
    assign bgTrunc_i_inc31_atax30_sel_x_b = i_inc31_atax30_q[31:0];

    // i_llvm_fpga_push_i32_j15_021_push29_atax31(BLACKBOX,92)@3
    // out out_feedback_out_29@20000000
    // out out_feedback_valid_out_29@20000000
    atax_i_llvm_fpga_push_i32_j15_021_push29_0 thei_llvm_fpga_push_i32_j15_021_push29_atax31 (
        .in_data_in(bgTrunc_i_inc31_atax30_sel_x_b),
        .in_feedback_stall_in_29(i_llvm_fpga_pop_i32_j15_021_pop29_atax12_out_feedback_stall_out_29),
        .in_keep_going(redist31_i_llvm_fpga_pipeline_keep_going_atax6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(),
        .out_feedback_out_29(i_llvm_fpga_push_i32_j15_021_push29_atax31_out_feedback_out_29),
        .out_feedback_valid_out_29(i_llvm_fpga_push_i32_j15_021_push29_atax31_out_feedback_valid_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together119_aunroll_x_in_c0_eni11139_1_tpl_2(DELAY,292)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together119_aunroll_x_in_c0_eni11139_1_tpl_2_q <= '0;
        end
        else
        begin
            redist2_sync_together119_aunroll_x_in_c0_eni11139_1_tpl_2_q <= $unsigned(redist1_sync_together119_aunroll_x_in_c0_eni11139_1_tpl_1_q);
        end
    end

    // i_llvm_fpga_pop_i32_j15_021_pop29_atax12(BLACKBOX,78)@3
    // out out_feedback_stall_out_29@20000000
    atax_i_llvm_fpga_pop_i32_j15_021_pop29_0 thei_llvm_fpga_pop_i32_j15_021_pop29_atax12 (
        .in_data_in(c_i32_084_q),
        .in_dir(redist2_sync_together119_aunroll_x_in_c0_eni11139_1_tpl_2_q),
        .in_feedback_in_29(i_llvm_fpga_push_i32_j15_021_push29_atax31_out_feedback_out_29),
        .in_feedback_valid_in_29(i_llvm_fpga_push_i32_j15_021_push29_atax31_out_feedback_valid_out_29),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_j15_021_pop29_atax12_out_data_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_i32_j15_021_pop29_atax12_out_feedback_stall_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom20_atax13_sel_x(BITSELECT,161)@3
    assign i_idxprom20_atax13_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j15_021_pop29_atax12_out_data_out[31:0]};

    // i_idxprom20_atax13_vt_select_31(BITSELECT,63)@3
    assign i_idxprom20_atax13_vt_select_31_b = i_idxprom20_atax13_sel_x_b[31:0];

    // i_idxprom20_atax13_vt_join(BITJOIN,62)@3
    assign i_idxprom20_atax13_vt_join_q = {c_i32_084_q, i_idxprom20_atax13_vt_select_31_b};

    // i_arrayidx214_atax0_dupName_0_trunc_sel_x(BITSELECT,130)@3
    assign i_arrayidx214_atax0_dupName_0_trunc_sel_x_b = i_idxprom20_atax13_vt_join_q[6:0];

    // i_arrayidx214_atax0_narrow_x(BITSELECT,123)@3
    assign i_arrayidx214_atax0_narrow_x_b = i_arrayidx214_atax0_dupName_0_trunc_sel_x_b[4:0];

    // redist18_i_arrayidx214_atax0_narrow_x_b_4(DELAY,308)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_arrayidx214_atax0_narrow_x_b_4_delay_0 <= '0;
            redist18_i_arrayidx214_atax0_narrow_x_b_4_delay_1 <= '0;
            redist18_i_arrayidx214_atax0_narrow_x_b_4_delay_2 <= '0;
            redist18_i_arrayidx214_atax0_narrow_x_b_4_q <= '0;
        end
        else
        begin
            redist18_i_arrayidx214_atax0_narrow_x_b_4_delay_0 <= $unsigned(i_arrayidx214_atax0_narrow_x_b);
            redist18_i_arrayidx214_atax0_narrow_x_b_4_delay_1 <= redist18_i_arrayidx214_atax0_narrow_x_b_4_delay_0;
            redist18_i_arrayidx214_atax0_narrow_x_b_4_delay_2 <= redist18_i_arrayidx214_atax0_narrow_x_b_4_delay_1;
            redist18_i_arrayidx214_atax0_narrow_x_b_4_q <= redist18_i_arrayidx214_atax0_narrow_x_b_4_delay_2;
        end
    end

    // i_arrayidx214_atax0_shift_join_x(BITJOIN,124)@7
    assign i_arrayidx214_atax0_shift_join_x_q = {redist18_i_arrayidx214_atax0_narrow_x_b_4_q, i_arrayidx214_atax14_vt_const_1_q};

    // i_arrayidx214_atax0_add_x(ADD,120)@7
    assign i_arrayidx214_atax0_add_x_a = {1'b0, i_arrayidx214_atax0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx214_atax0_add_x_b = {1'b0, i_arrayidx214_atax0_shift_join_x_q};
    assign i_arrayidx214_atax0_add_x_o = $unsigned(i_arrayidx214_atax0_add_x_a) + $unsigned(i_arrayidx214_atax0_add_x_b);
    assign i_arrayidx214_atax0_add_x_q = i_arrayidx214_atax0_add_x_o[7:0];

    // i_arrayidx214_atax0_dupName_2_trunc_sel_x(BITSELECT,131)@7
    assign i_arrayidx214_atax0_dupName_2_trunc_sel_x_b = i_arrayidx214_atax0_add_x_q[6:0];

    // i_arrayidx214_atax0_append_upper_bits_x(BITJOIN,121)@7
    assign i_arrayidx214_atax0_append_upper_bits_x_q = {i_arrayidx214_atax0_upper_bits_x_merged_bit_select_b, i_arrayidx214_atax0_dupName_2_trunc_sel_x_b};

    // i_arrayidx214_atax14_vt_select_63(BITSELECT,49)@7
    assign i_arrayidx214_atax14_vt_select_63_b = i_arrayidx214_atax0_append_upper_bits_x_q[63:2];

    // i_arrayidx214_atax14_vt_const_1(CONSTANT,47)
    assign i_arrayidx214_atax14_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx214_atax14_vt_join(BITJOIN,48)@7
    assign i_arrayidx214_atax14_vt_join_q = {i_arrayidx214_atax14_vt_select_63_b, i_arrayidx214_atax14_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_atax7_atax20(BLACKBOX,67)@7
    // in in_i_stall@20000000
    // out out_o_readdata@11
    // out out_o_stall@10
    // out out_o_valid@11
    // out out_unnamed_atax7_atax_avm_address@20000000
    // out out_unnamed_atax7_atax_avm_burstcount@20000000
    // out out_unnamed_atax7_atax_avm_byteenable@20000000
    // out out_unnamed_atax7_atax_avm_enable@20000000
    // out out_unnamed_atax7_atax_avm_read@20000000
    // out out_unnamed_atax7_atax_avm_write@20000000
    // out out_unnamed_atax7_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_7_atax0 thei_llvm_fpga_mem_unnamed_atax7_atax20 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx214_atax14_vt_join_q),
        .in_i_dependence(redist20_i_memdep_phi3_or_atax19_q_5_q),
        .in_i_predicate(redist35_i_first_cleanup_xor_atax4_q_5_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg9_q),
        .in_unnamed_atax7_atax_avm_readdata(in_unnamed_atax7_atax_avm_readdata),
        .in_unnamed_atax7_atax_avm_readdatavalid(in_unnamed_atax7_atax_avm_readdatavalid),
        .in_unnamed_atax7_atax_avm_waitrequest(in_unnamed_atax7_atax_avm_waitrequest),
        .in_unnamed_atax7_atax_avm_writeack(in_unnamed_atax7_atax_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_atax7_atax20_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_atax7_atax_avm_address(i_llvm_fpga_mem_unnamed_atax7_atax20_out_unnamed_atax7_atax_avm_address),
        .out_unnamed_atax7_atax_avm_burstcount(i_llvm_fpga_mem_unnamed_atax7_atax20_out_unnamed_atax7_atax_avm_burstcount),
        .out_unnamed_atax7_atax_avm_byteenable(i_llvm_fpga_mem_unnamed_atax7_atax20_out_unnamed_atax7_atax_avm_byteenable),
        .out_unnamed_atax7_atax_avm_enable(i_llvm_fpga_mem_unnamed_atax7_atax20_out_unnamed_atax7_atax_avm_enable),
        .out_unnamed_atax7_atax_avm_read(i_llvm_fpga_mem_unnamed_atax7_atax20_out_unnamed_atax7_atax_avm_read),
        .out_unnamed_atax7_atax_avm_write(i_llvm_fpga_mem_unnamed_atax7_atax20_out_unnamed_atax7_atax_avm_write),
        .out_unnamed_atax7_atax_avm_writedata(i_llvm_fpga_mem_unnamed_atax7_atax20_out_unnamed_atax7_atax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,116)
    assign out_unnamed_atax7_atax_avm_address = i_llvm_fpga_mem_unnamed_atax7_atax20_out_unnamed_atax7_atax_avm_address;
    assign out_unnamed_atax7_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax7_atax20_out_unnamed_atax7_atax_avm_enable;
    assign out_unnamed_atax7_atax_avm_read = i_llvm_fpga_mem_unnamed_atax7_atax20_out_unnamed_atax7_atax_avm_read;
    assign out_unnamed_atax7_atax_avm_write = i_llvm_fpga_mem_unnamed_atax7_atax20_out_unnamed_atax7_atax_avm_write;
    assign out_unnamed_atax7_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax7_atax20_out_unnamed_atax7_atax_avm_writedata;
    assign out_unnamed_atax7_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax7_atax20_out_unnamed_atax7_atax_avm_byteenable;
    assign out_unnamed_atax7_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax7_atax20_out_unnamed_atax7_atax_avm_burstcount;

    // valid_fanout_reg12(REG,181)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist13_sync_together119_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_atax_A_local_pmem(CONSTANT,6)
    assign c_atax_A_local_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx255_atax0_upper_bits_x_merged_bit_select(BITSELECT,285)@3
    assign i_arrayidx255_atax0_upper_bits_x_merged_bit_select_b = c_atax_A_local_pmem_q[63:11];
    assign i_arrayidx255_atax0_upper_bits_x_merged_bit_select_c = c_atax_A_local_pmem_q[10:0];

    // i_arrayidx255_atax0_dupName_3_trunc_sel_x(BITSELECT,154)@3
    assign i_arrayidx255_atax0_dupName_3_trunc_sel_x_b = i_idxprom20_atax13_vt_join_q[10:0];

    // i_arrayidx255_atax0_narrow_x(BITSELECT,137)@3
    assign i_arrayidx255_atax0_narrow_x_b = i_arrayidx255_atax0_dupName_3_trunc_sel_x_b[8:0];

    // i_arrayidx255_atax0_shift_join_x(BITJOIN,138)@3
    assign i_arrayidx255_atax0_shift_join_x_q = {i_arrayidx255_atax0_narrow_x_b, i_arrayidx214_atax14_vt_const_1_q};

    // i_arrayidx255_atax0_mult_multconst_x(CONSTANT,149)
    assign i_arrayidx255_atax0_mult_multconst_x_q = $unsigned(4'b0000);

    // valid_fanout_reg10(REG,179)@1 + 1
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

    // valid_fanout_reg11(REG,180)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i64_idxprom44_push34_atax22(BLACKBOX,93)@2
    // out out_feedback_out_34@20000000
    // out out_feedback_valid_out_34@20000000
    atax_i_llvm_fpga_push_i64_idxprom44_push34_0 thei_llvm_fpga_push_i64_idxprom44_push34_atax22 (
        .in_data_in(i_llvm_fpga_pop_i64_idxprom44_pop34_atax21_out_data_out),
        .in_feedback_stall_in_34(i_llvm_fpga_pop_i64_idxprom44_pop34_atax21_out_feedback_stall_out_34),
        .in_keep_going(redist30_i_llvm_fpga_pipeline_keep_going_atax6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_34(i_llvm_fpga_push_i64_idxprom44_push34_atax22_out_feedback_out_34),
        .out_feedback_valid_out_34(i_llvm_fpga_push_i64_idxprom44_push34_atax22_out_feedback_valid_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together119_aunroll_x_in_c0_eni11139_4_tpl_1(DELAY,295)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together119_aunroll_x_in_c0_eni11139_4_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together119_aunroll_x_in_c0_eni11139_4_tpl_1_q <= $unsigned(in_c0_eni11139_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i64_idxprom44_pop34_atax21(BLACKBOX,79)@2
    // out out_feedback_stall_out_34@20000000
    atax_i_llvm_fpga_pop_i64_idxprom44_pop34_0 thei_llvm_fpga_pop_i64_idxprom44_pop34_atax21 (
        .in_data_in(redist5_sync_together119_aunroll_x_in_c0_eni11139_4_tpl_1_q),
        .in_dir(redist1_sync_together119_aunroll_x_in_c0_eni11139_1_tpl_1_q),
        .in_feedback_in_34(i_llvm_fpga_push_i64_idxprom44_push34_atax22_out_feedback_out_34),
        .in_feedback_valid_in_34(i_llvm_fpga_push_i64_idxprom44_push34_atax22_out_feedback_valid_out_34),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(i_llvm_fpga_pop_i64_idxprom44_pop34_atax21_out_data_out),
        .out_feedback_stall_out_34(i_llvm_fpga_pop_i64_idxprom44_pop34_atax21_out_feedback_stall_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx255_atax0_dupName_0_trunc_sel_x(BITSELECT,151)@2
    assign i_arrayidx255_atax0_dupName_0_trunc_sel_x_b = i_llvm_fpga_pop_i64_idxprom44_pop34_atax21_out_data_out[10:0];

    // addsumAHighB_uid230_i_arrayidx255_atax0_mult_x(ADD,229)@2
    assign addsumAHighB_uid230_i_arrayidx255_atax0_mult_x_a = {1'b0, i_arrayidx255_atax0_dupName_0_trunc_sel_x_b};
    assign addsumAHighB_uid230_i_arrayidx255_atax0_mult_x_b = {3'b000, lowRangeB_uid228_i_arrayidx255_atax0_mult_x_merged_bit_select_c};
    assign addsumAHighB_uid230_i_arrayidx255_atax0_mult_x_o = $unsigned(addsumAHighB_uid230_i_arrayidx255_atax0_mult_x_a) + $unsigned(addsumAHighB_uid230_i_arrayidx255_atax0_mult_x_b);
    assign addsumAHighB_uid230_i_arrayidx255_atax0_mult_x_q = addsumAHighB_uid230_i_arrayidx255_atax0_mult_x_o[11:0];

    // lowRangeB_uid228_i_arrayidx255_atax0_mult_x_merged_bit_select(BITSELECT,289)@2
    assign lowRangeB_uid228_i_arrayidx255_atax0_mult_x_merged_bit_select_b = i_arrayidx255_atax0_dupName_0_trunc_sel_x_b[1:0];
    assign lowRangeB_uid228_i_arrayidx255_atax0_mult_x_merged_bit_select_c = i_arrayidx255_atax0_dupName_0_trunc_sel_x_b[10:2];

    // add_uid231_i_arrayidx255_atax0_mult_x(BITJOIN,230)@2
    assign add_uid231_i_arrayidx255_atax0_mult_x_q = {addsumAHighB_uid230_i_arrayidx255_atax0_mult_x_q, lowRangeB_uid228_i_arrayidx255_atax0_mult_x_merged_bit_select_b};

    // sR_mergedSignalTM_uid236_i_arrayidx255_atax0_mult_x(BITJOIN,235)@2
    assign sR_mergedSignalTM_uid236_i_arrayidx255_atax0_mult_x_q = {add_uid231_i_arrayidx255_atax0_mult_x_q, i_arrayidx255_atax0_mult_multconst_x_q};

    // i_arrayidx255_atax0_mult_extender_x(BITJOIN,148)@2
    assign i_arrayidx255_atax0_mult_extender_x_q = {i_arrayidx255_atax0_mult_multconst_x_q, sR_mergedSignalTM_uid236_i_arrayidx255_atax0_mult_x_q};

    // i_arrayidx255_atax0_dupName_1_trunc_sel_x(BITSELECT,152)@2
    assign i_arrayidx255_atax0_dupName_1_trunc_sel_x_b = i_arrayidx255_atax0_mult_extender_x_q[10:0];

    // redist17_i_arrayidx255_atax0_dupName_1_trunc_sel_x_b_1(DELAY,307)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_arrayidx255_atax0_dupName_1_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist17_i_arrayidx255_atax0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx255_atax0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx255_atax0_add_x(ADD,132)@3
    assign i_arrayidx255_atax0_add_x_a = {1'b0, i_arrayidx255_atax0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx255_atax0_add_x_b = {1'b0, redist17_i_arrayidx255_atax0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx255_atax0_add_x_o = $unsigned(i_arrayidx255_atax0_add_x_a) + $unsigned(i_arrayidx255_atax0_add_x_b);
    assign i_arrayidx255_atax0_add_x_q = i_arrayidx255_atax0_add_x_o[11:0];

    // i_arrayidx255_atax0_dupName_2_trunc_sel_x(BITSELECT,153)@3
    assign i_arrayidx255_atax0_dupName_2_trunc_sel_x_b = i_arrayidx255_atax0_add_x_q[10:0];

    // i_arrayidx255_atax0_dupName_0_add_x(ADD,142)@3
    assign i_arrayidx255_atax0_dupName_0_add_x_a = {1'b0, i_arrayidx255_atax0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx255_atax0_dupName_0_add_x_b = {1'b0, i_arrayidx255_atax0_shift_join_x_q};
    assign i_arrayidx255_atax0_dupName_0_add_x_o = $unsigned(i_arrayidx255_atax0_dupName_0_add_x_a) + $unsigned(i_arrayidx255_atax0_dupName_0_add_x_b);
    assign i_arrayidx255_atax0_dupName_0_add_x_q = i_arrayidx255_atax0_dupName_0_add_x_o[11:0];

    // i_arrayidx255_atax0_dupName_5_trunc_sel_x(BITSELECT,155)@3
    assign i_arrayidx255_atax0_dupName_5_trunc_sel_x_b = i_arrayidx255_atax0_dupName_0_add_x_q[10:0];

    // i_arrayidx255_atax0_append_upper_bits_x(BITJOIN,133)@3
    assign i_arrayidx255_atax0_append_upper_bits_x_q = {i_arrayidx255_atax0_upper_bits_x_merged_bit_select_b, i_arrayidx255_atax0_dupName_5_trunc_sel_x_b};

    // i_arrayidx255_atax23_vt_select_63(BITSELECT,52)@3
    assign i_arrayidx255_atax23_vt_select_63_b = i_arrayidx255_atax0_append_upper_bits_x_q[63:2];

    // i_arrayidx255_atax23_vt_join(BITJOIN,51)@3
    assign i_arrayidx255_atax23_vt_join_q = {i_arrayidx255_atax23_vt_select_63_b, i_arrayidx214_atax14_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_atax8_atax24(BLACKBOX,68)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_atax8_atax_avm_address@20000000
    // out out_unnamed_atax8_atax_avm_burstcount@20000000
    // out out_unnamed_atax8_atax_avm_byteenable@20000000
    // out out_unnamed_atax8_atax_avm_enable@20000000
    // out out_unnamed_atax8_atax_avm_read@20000000
    // out out_unnamed_atax8_atax_avm_write@20000000
    // out out_unnamed_atax8_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_8_atax0 thei_llvm_fpga_mem_unnamed_atax8_atax24 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx255_atax23_vt_join_q),
        .in_i_predicate(redist34_i_first_cleanup_xor_atax4_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg12_q),
        .in_unnamed_atax8_atax_avm_readdata(in_unnamed_atax8_atax_avm_readdata),
        .in_unnamed_atax8_atax_avm_readdatavalid(in_unnamed_atax8_atax_avm_readdatavalid),
        .in_unnamed_atax8_atax_avm_waitrequest(in_unnamed_atax8_atax_avm_waitrequest),
        .in_unnamed_atax8_atax_avm_writeack(in_unnamed_atax8_atax_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_atax8_atax24_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_atax8_atax_avm_address(i_llvm_fpga_mem_unnamed_atax8_atax24_out_unnamed_atax8_atax_avm_address),
        .out_unnamed_atax8_atax_avm_burstcount(i_llvm_fpga_mem_unnamed_atax8_atax24_out_unnamed_atax8_atax_avm_burstcount),
        .out_unnamed_atax8_atax_avm_byteenable(i_llvm_fpga_mem_unnamed_atax8_atax24_out_unnamed_atax8_atax_avm_byteenable),
        .out_unnamed_atax8_atax_avm_enable(i_llvm_fpga_mem_unnamed_atax8_atax24_out_unnamed_atax8_atax_avm_enable),
        .out_unnamed_atax8_atax_avm_read(i_llvm_fpga_mem_unnamed_atax8_atax24_out_unnamed_atax8_atax_avm_read),
        .out_unnamed_atax8_atax_avm_write(i_llvm_fpga_mem_unnamed_atax8_atax24_out_unnamed_atax8_atax_avm_write),
        .out_unnamed_atax8_atax_avm_writedata(i_llvm_fpga_mem_unnamed_atax8_atax24_out_unnamed_atax8_atax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,118)
    assign out_unnamed_atax8_atax_avm_address = i_llvm_fpga_mem_unnamed_atax8_atax24_out_unnamed_atax8_atax_avm_address;
    assign out_unnamed_atax8_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax8_atax24_out_unnamed_atax8_atax_avm_enable;
    assign out_unnamed_atax8_atax_avm_read = i_llvm_fpga_mem_unnamed_atax8_atax24_out_unnamed_atax8_atax_avm_read;
    assign out_unnamed_atax8_atax_avm_write = i_llvm_fpga_mem_unnamed_atax8_atax24_out_unnamed_atax8_atax_avm_write;
    assign out_unnamed_atax8_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax8_atax24_out_unnamed_atax8_atax_avm_writedata;
    assign out_unnamed_atax8_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax8_atax24_out_unnamed_atax8_atax_avm_byteenable;
    assign out_unnamed_atax8_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax8_atax24_out_unnamed_atax8_atax_avm_burstcount;

    // redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_notEnable(LOGICAL,344)
    assign redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_nor(LOGICAL,345)
    assign redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_nor_q = ~ (redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_notEnable_q | redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_sticky_ena_q);

    // redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_mem_last(CONSTANT,341)
    assign redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_mem_last_q = $unsigned(2'b01);

    // redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_cmp(LOGICAL,342)
    assign redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_cmp_q = $unsigned(redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_mem_last_q == redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_rdcnt_q ? 1'b1 : 1'b0);

    // redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_cmpReg(REG,343)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_cmpReg_q <= $unsigned(redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_cmp_q);
        end
    end

    // redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_sticky_ena(REG,346)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_nor_q == 1'b1)
        begin
            redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_sticky_ena_q <= $unsigned(redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_cmpReg_q);
        end
    end

    // redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_enaAnd(LOGICAL,347)
    assign redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_enaAnd_q = redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_sticky_ena_q & VCC_q;

    // redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_rdcnt(COUNTER,339)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_rdcnt_i <= 2'd0;
            redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_rdcnt_i == 2'd1)
            begin
                redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_rdcnt_eq <= 1'b0;
            end
            if (redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_rdcnt_eq == 1'b1)
            begin
                redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_rdcnt_i <= $unsigned(redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_rdcnt_i <= $unsigned(redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_rdcnt_q = redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_rdcnt_i[1:0];

    // valid_fanout_reg13(REG,182)@1 + 1
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

    // valid_fanout_reg14(REG,183)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist13_sync_together119_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i32_add52_push39_atax26(BLACKBOX,91)@3
    // out out_feedback_out_39@20000000
    // out out_feedback_valid_out_39@20000000
    atax_i_llvm_fpga_push_i32_add52_push39_0 thei_llvm_fpga_push_i32_add52_push39_atax26 (
        .in_data_in(redist23_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_1_q),
        .in_feedback_stall_in_39(i_llvm_fpga_pop_i32_add52_pop39_atax25_out_feedback_stall_out_39),
        .in_keep_going(redist31_i_llvm_fpga_pipeline_keep_going_atax6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_39(i_llvm_fpga_push_i32_add52_push39_atax26_out_feedback_out_39),
        .out_feedback_valid_out_39(i_llvm_fpga_push_i32_add52_push39_atax26_out_feedback_valid_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together119_aunroll_x_in_c0_eni11139_5_tpl_1(DELAY,296)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together119_aunroll_x_in_c0_eni11139_5_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together119_aunroll_x_in_c0_eni11139_5_tpl_1_q <= $unsigned(in_c0_eni11139_5_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_add52_pop39_atax25(BLACKBOX,77)@2
    // out out_feedback_stall_out_39@20000000
    atax_i_llvm_fpga_pop_i32_add52_pop39_0 thei_llvm_fpga_pop_i32_add52_pop39_atax25 (
        .in_data_in(redist6_sync_together119_aunroll_x_in_c0_eni11139_5_tpl_1_q),
        .in_dir(redist1_sync_together119_aunroll_x_in_c0_eni11139_1_tpl_1_q),
        .in_feedback_in_39(i_llvm_fpga_push_i32_add52_push39_atax26_out_feedback_out_39),
        .in_feedback_valid_in_39(i_llvm_fpga_push_i32_add52_push39_atax26_out_feedback_valid_out_39),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out),
        .out_feedback_stall_out_39(i_llvm_fpga_pop_i32_add52_pop39_atax25_out_feedback_stall_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist23_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_1(DELAY,313)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_1_q <= '0;
        end
        else
        begin
            redist23_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out);
        end
    end

    // redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_wraddr(REG,340)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_wraddr_q <= $unsigned(redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_rdcnt_q);
        end
    end

    // redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_mem(DUALMEM,338)
    assign redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_mem_ia = $unsigned(redist23_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_1_q);
    assign redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_mem_aa = redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_wraddr_q;
    assign redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_mem_ab = redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_rdcnt_q;
    assign redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_mem_reset0 = ~ (resetn);
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
    ) redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_mem_dmem (
        .clocken1(redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_mem_reset0),
        .clock1(clock),
        .address_a(redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_mem_aa),
        .data_a(redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_mem_ab),
        .q_b(redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_mem_iq),
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
    assign redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_mem_q = redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_mem_iq[31:0];

    // i_mul26_atax27_bs2_merged_bit_select(BITSELECT,288)@7
    assign i_mul26_atax27_bs2_merged_bit_select_b = redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_mem_q[31:18];
    assign i_mul26_atax27_bs2_merged_bit_select_c = redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_mem_q[17:0];

    // i_mul26_atax27_bs1_merged_bit_select(BITSELECT,287)@7
    assign i_mul26_atax27_bs1_merged_bit_select_b = i_llvm_fpga_mem_unnamed_atax8_atax24_out_o_readdata[31:18];
    assign i_mul26_atax27_bs1_merged_bit_select_c = i_llvm_fpga_mem_unnamed_atax8_atax24_out_o_readdata[17:0];

    // i_mul26_atax27_ma3_cma(CHAINMULTADD,284)@7 + 3
    assign i_mul26_atax27_ma3_cma_reset = ~ (resetn);
    assign i_mul26_atax27_ma3_cma_ena0 = 1'b1;
    assign i_mul26_atax27_ma3_cma_ena1 = i_mul26_atax27_ma3_cma_ena0;
    assign i_mul26_atax27_ma3_cma_ena2 = i_mul26_atax27_ma3_cma_ena0;

    assign i_mul26_atax27_ma3_cma_a0 = i_mul26_atax27_bs1_merged_bit_select_b;
    assign i_mul26_atax27_ma3_cma_c0 = i_mul26_atax27_bs2_merged_bit_select_c;
    assign i_mul26_atax27_ma3_cma_a1 = i_mul26_atax27_bs2_merged_bit_select_b;
    assign i_mul26_atax27_ma3_cma_c1 = i_mul26_atax27_bs1_merged_bit_select_c;
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
    ) i_mul26_atax27_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul26_atax27_ma3_cma_ena2, i_mul26_atax27_ma3_cma_ena1, i_mul26_atax27_ma3_cma_ena0 }),
        .aclr({ i_mul26_atax27_ma3_cma_reset, i_mul26_atax27_ma3_cma_reset }),
        .ay(i_mul26_atax27_ma3_cma_a1),
        .by(i_mul26_atax27_ma3_cma_a0),
        .ax(i_mul26_atax27_ma3_cma_c1),
        .bx(i_mul26_atax27_ma3_cma_c0),
        .resulta(i_mul26_atax27_ma3_cma_s0),
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
    i_mul26_atax27_ma3_cma_delay ( .xin(i_mul26_atax27_ma3_cma_s0), .xout(i_mul26_atax27_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul26_atax27_ma3_cma_q = $unsigned(i_mul26_atax27_ma3_cma_qq[32:0]);

    // i_mul26_atax27_sums_align_1(BITSHIFT,217)@10
    assign i_mul26_atax27_sums_align_1_qint = { i_mul26_atax27_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul26_atax27_sums_align_1_q = i_mul26_atax27_sums_align_1_qint[50:0];

    // i_mul26_atax27_im0_cma(CHAINMULTADD,282)@7 + 3
    assign i_mul26_atax27_im0_cma_reset = ~ (resetn);
    assign i_mul26_atax27_im0_cma_ena0 = 1'b1;
    assign i_mul26_atax27_im0_cma_ena1 = i_mul26_atax27_im0_cma_ena0;
    assign i_mul26_atax27_im0_cma_ena2 = i_mul26_atax27_im0_cma_ena0;

    assign i_mul26_atax27_im0_cma_a0 = i_mul26_atax27_bs1_merged_bit_select_b;
    assign i_mul26_atax27_im0_cma_c0 = i_mul26_atax27_bs2_merged_bit_select_b;
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
    ) i_mul26_atax27_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul26_atax27_im0_cma_ena2, i_mul26_atax27_im0_cma_ena1, i_mul26_atax27_im0_cma_ena0 }),
        .aclr({ i_mul26_atax27_im0_cma_reset, i_mul26_atax27_im0_cma_reset }),
        .ay(i_mul26_atax27_im0_cma_a0),
        .ax(i_mul26_atax27_im0_cma_c0),
        .resulta(i_mul26_atax27_im0_cma_s0),
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
    i_mul26_atax27_im0_cma_delay ( .xin(i_mul26_atax27_im0_cma_s0), .xout(i_mul26_atax27_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul26_atax27_im0_cma_q = $unsigned(i_mul26_atax27_im0_cma_qq[27:0]);

    // i_mul26_atax27_im8_cma(CHAINMULTADD,283)@7 + 3
    assign i_mul26_atax27_im8_cma_reset = ~ (resetn);
    assign i_mul26_atax27_im8_cma_ena0 = 1'b1;
    assign i_mul26_atax27_im8_cma_ena1 = i_mul26_atax27_im8_cma_ena0;
    assign i_mul26_atax27_im8_cma_ena2 = i_mul26_atax27_im8_cma_ena0;

    assign i_mul26_atax27_im8_cma_a0 = i_mul26_atax27_bs1_merged_bit_select_c;
    assign i_mul26_atax27_im8_cma_c0 = i_mul26_atax27_bs2_merged_bit_select_c;
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
    ) i_mul26_atax27_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul26_atax27_im8_cma_ena2, i_mul26_atax27_im8_cma_ena1, i_mul26_atax27_im8_cma_ena0 }),
        .aclr({ i_mul26_atax27_im8_cma_reset, i_mul26_atax27_im8_cma_reset }),
        .ay(i_mul26_atax27_im8_cma_a0),
        .ax(i_mul26_atax27_im8_cma_c0),
        .resulta(i_mul26_atax27_im8_cma_s0),
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
    i_mul26_atax27_im8_cma_delay ( .xin(i_mul26_atax27_im8_cma_s0), .xout(i_mul26_atax27_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul26_atax27_im8_cma_q = $unsigned(i_mul26_atax27_im8_cma_qq[35:0]);

    // i_mul26_atax27_sums_join_0(BITJOIN,216)@10
    assign i_mul26_atax27_sums_join_0_q = {i_mul26_atax27_im0_cma_q, i_mul26_atax27_im8_cma_q};

    // i_mul26_atax27_sums_result_add_0_0(ADD,219)@10
    assign i_mul26_atax27_sums_result_add_0_0_a = {1'b0, i_mul26_atax27_sums_join_0_q};
    assign i_mul26_atax27_sums_result_add_0_0_b = {14'b00000000000000, i_mul26_atax27_sums_align_1_q};
    assign i_mul26_atax27_sums_result_add_0_0_o = $unsigned(i_mul26_atax27_sums_result_add_0_0_a) + $unsigned(i_mul26_atax27_sums_result_add_0_0_b);
    assign i_mul26_atax27_sums_result_add_0_0_q = i_mul26_atax27_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul26_atax27_sel_x(BITSELECT,113)@10
    assign bgTrunc_i_mul26_atax27_sel_x_in = i_mul26_atax27_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul26_atax27_sel_x_b = bgTrunc_i_mul26_atax27_sel_x_in[31:0];

    // redist19_bgTrunc_i_mul26_atax27_sel_x_b_1(DELAY,309)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_bgTrunc_i_mul26_atax27_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist19_bgTrunc_i_mul26_atax27_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul26_atax27_sel_x_b);
        end
    end

    // i_add27_atax28(ADD,46)@11
    assign i_add27_atax28_a = {1'b0, redist19_bgTrunc_i_mul26_atax27_sel_x_b_1_q};
    assign i_add27_atax28_b = {1'b0, i_llvm_fpga_mem_unnamed_atax7_atax20_out_o_readdata};
    assign i_add27_atax28_o = $unsigned(i_add27_atax28_a) + $unsigned(i_add27_atax28_b);
    assign i_add27_atax28_q = i_add27_atax28_o[32:0];

    // bgTrunc_i_add27_atax28_sel_x(BITSELECT,110)@11
    assign bgTrunc_i_add27_atax28_sel_x_b = i_add27_atax28_q[31:0];

    // redist16_sync_together119_aunroll_x_in_i_valid_9(DELAY,306)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together119_aunroll_x_in_i_valid_9_delay_0 <= '0;
            redist16_sync_together119_aunroll_x_in_i_valid_9_delay_1 <= '0;
            redist16_sync_together119_aunroll_x_in_i_valid_9_delay_2 <= '0;
            redist16_sync_together119_aunroll_x_in_i_valid_9_q <= '0;
        end
        else
        begin
            redist16_sync_together119_aunroll_x_in_i_valid_9_delay_0 <= $unsigned(redist15_sync_together119_aunroll_x_in_i_valid_5_q);
            redist16_sync_together119_aunroll_x_in_i_valid_9_delay_1 <= redist16_sync_together119_aunroll_x_in_i_valid_9_delay_0;
            redist16_sync_together119_aunroll_x_in_i_valid_9_delay_2 <= redist16_sync_together119_aunroll_x_in_i_valid_9_delay_1;
            redist16_sync_together119_aunroll_x_in_i_valid_9_q <= redist16_sync_together119_aunroll_x_in_i_valid_9_delay_2;
        end
    end

    // valid_fanout_reg15(REG,184)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist16_sync_together119_aunroll_x_in_i_valid_9_q);
        end
    end

    // redist36_i_first_cleanup_xor_atax4_q_9(DELAY,326)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_first_cleanup_xor_atax4_q_9_delay_0 <= '0;
            redist36_i_first_cleanup_xor_atax4_q_9_delay_1 <= '0;
            redist36_i_first_cleanup_xor_atax4_q_9_delay_2 <= '0;
            redist36_i_first_cleanup_xor_atax4_q_9_q <= '0;
        end
        else
        begin
            redist36_i_first_cleanup_xor_atax4_q_9_delay_0 <= $unsigned(redist35_i_first_cleanup_xor_atax4_q_5_q);
            redist36_i_first_cleanup_xor_atax4_q_9_delay_1 <= redist36_i_first_cleanup_xor_atax4_q_9_delay_0;
            redist36_i_first_cleanup_xor_atax4_q_9_delay_2 <= redist36_i_first_cleanup_xor_atax4_q_9_delay_1;
            redist36_i_first_cleanup_xor_atax4_q_9_q <= redist36_i_first_cleanup_xor_atax4_q_9_delay_2;
        end
    end

    // redist37_i_arrayidx214_atax14_vt_join_q_4_notEnable(LOGICAL,364)
    assign redist37_i_arrayidx214_atax14_vt_join_q_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist37_i_arrayidx214_atax14_vt_join_q_4_nor(LOGICAL,365)
    assign redist37_i_arrayidx214_atax14_vt_join_q_4_nor_q = ~ (redist37_i_arrayidx214_atax14_vt_join_q_4_notEnable_q | redist37_i_arrayidx214_atax14_vt_join_q_4_sticky_ena_q);

    // redist37_i_arrayidx214_atax14_vt_join_q_4_mem_last(CONSTANT,361)
    assign redist37_i_arrayidx214_atax14_vt_join_q_4_mem_last_q = $unsigned(2'b01);

    // redist37_i_arrayidx214_atax14_vt_join_q_4_cmp(LOGICAL,362)
    assign redist37_i_arrayidx214_atax14_vt_join_q_4_cmp_q = $unsigned(redist37_i_arrayidx214_atax14_vt_join_q_4_mem_last_q == redist37_i_arrayidx214_atax14_vt_join_q_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist37_i_arrayidx214_atax14_vt_join_q_4_cmpReg(REG,363)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_arrayidx214_atax14_vt_join_q_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist37_i_arrayidx214_atax14_vt_join_q_4_cmpReg_q <= $unsigned(redist37_i_arrayidx214_atax14_vt_join_q_4_cmp_q);
        end
    end

    // redist37_i_arrayidx214_atax14_vt_join_q_4_sticky_ena(REG,366)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_arrayidx214_atax14_vt_join_q_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist37_i_arrayidx214_atax14_vt_join_q_4_nor_q == 1'b1)
        begin
            redist37_i_arrayidx214_atax14_vt_join_q_4_sticky_ena_q <= $unsigned(redist37_i_arrayidx214_atax14_vt_join_q_4_cmpReg_q);
        end
    end

    // redist37_i_arrayidx214_atax14_vt_join_q_4_enaAnd(LOGICAL,367)
    assign redist37_i_arrayidx214_atax14_vt_join_q_4_enaAnd_q = redist37_i_arrayidx214_atax14_vt_join_q_4_sticky_ena_q & VCC_q;

    // redist37_i_arrayidx214_atax14_vt_join_q_4_rdcnt(COUNTER,359)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_arrayidx214_atax14_vt_join_q_4_rdcnt_i <= 2'd0;
            redist37_i_arrayidx214_atax14_vt_join_q_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist37_i_arrayidx214_atax14_vt_join_q_4_rdcnt_i == 2'd1)
            begin
                redist37_i_arrayidx214_atax14_vt_join_q_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist37_i_arrayidx214_atax14_vt_join_q_4_rdcnt_eq <= 1'b0;
            end
            if (redist37_i_arrayidx214_atax14_vt_join_q_4_rdcnt_eq == 1'b1)
            begin
                redist37_i_arrayidx214_atax14_vt_join_q_4_rdcnt_i <= $unsigned(redist37_i_arrayidx214_atax14_vt_join_q_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist37_i_arrayidx214_atax14_vt_join_q_4_rdcnt_i <= $unsigned(redist37_i_arrayidx214_atax14_vt_join_q_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist37_i_arrayidx214_atax14_vt_join_q_4_rdcnt_q = redist37_i_arrayidx214_atax14_vt_join_q_4_rdcnt_i[1:0];

    // redist37_i_arrayidx214_atax14_vt_join_q_4_wraddr(REG,360)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_arrayidx214_atax14_vt_join_q_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist37_i_arrayidx214_atax14_vt_join_q_4_wraddr_q <= $unsigned(redist37_i_arrayidx214_atax14_vt_join_q_4_rdcnt_q);
        end
    end

    // redist37_i_arrayidx214_atax14_vt_join_q_4_mem(DUALMEM,358)
    assign redist37_i_arrayidx214_atax14_vt_join_q_4_mem_ia = $unsigned(i_arrayidx214_atax14_vt_join_q);
    assign redist37_i_arrayidx214_atax14_vt_join_q_4_mem_aa = redist37_i_arrayidx214_atax14_vt_join_q_4_wraddr_q;
    assign redist37_i_arrayidx214_atax14_vt_join_q_4_mem_ab = redist37_i_arrayidx214_atax14_vt_join_q_4_rdcnt_q;
    assign redist37_i_arrayidx214_atax14_vt_join_q_4_mem_reset0 = ~ (resetn);
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
    ) redist37_i_arrayidx214_atax14_vt_join_q_4_mem_dmem (
        .clocken1(redist37_i_arrayidx214_atax14_vt_join_q_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist37_i_arrayidx214_atax14_vt_join_q_4_mem_reset0),
        .clock1(clock),
        .address_a(redist37_i_arrayidx214_atax14_vt_join_q_4_mem_aa),
        .data_a(redist37_i_arrayidx214_atax14_vt_join_q_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist37_i_arrayidx214_atax14_vt_join_q_4_mem_ab),
        .q_b(redist37_i_arrayidx214_atax14_vt_join_q_4_mem_iq),
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
    assign redist37_i_arrayidx214_atax14_vt_join_q_4_mem_q = redist37_i_arrayidx214_atax14_vt_join_q_4_mem_iq[63:0];

    // i_llvm_fpga_mem_memdep_1_atax29(BLACKBOX,66)@11
    // out out_memdep_1_atax_avm_address@20000000
    // out out_memdep_1_atax_avm_burstcount@20000000
    // out out_memdep_1_atax_avm_byteenable@20000000
    // out out_memdep_1_atax_avm_enable@20000000
    // out out_memdep_1_atax_avm_read@20000000
    // out out_memdep_1_atax_avm_write@20000000
    // out out_memdep_1_atax_avm_writedata@20000000
    // out out_o_stall@12
    // out out_o_valid@12
    // out out_o_writeack@12
    atax_i_llvm_fpga_mem_memdep_1_0 thei_llvm_fpga_mem_memdep_1_atax29 (
        .in_flush(in_flush),
        .in_i_address(redist37_i_arrayidx214_atax14_vt_join_q_4_mem_q),
        .in_i_predicate(redist36_i_first_cleanup_xor_atax4_q_9_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg15_q),
        .in_i_writedata(bgTrunc_i_add27_atax28_sel_x_b),
        .in_memdep_1_atax_avm_readdata(in_memdep_1_atax_avm_readdata),
        .in_memdep_1_atax_avm_readdatavalid(in_memdep_1_atax_avm_readdatavalid),
        .in_memdep_1_atax_avm_waitrequest(in_memdep_1_atax_avm_waitrequest),
        .in_memdep_1_atax_avm_writeack(in_memdep_1_atax_avm_writeack),
        .out_memdep_1_atax_avm_address(i_llvm_fpga_mem_memdep_1_atax29_out_memdep_1_atax_avm_address),
        .out_memdep_1_atax_avm_burstcount(i_llvm_fpga_mem_memdep_1_atax29_out_memdep_1_atax_avm_burstcount),
        .out_memdep_1_atax_avm_byteenable(i_llvm_fpga_mem_memdep_1_atax29_out_memdep_1_atax_avm_byteenable),
        .out_memdep_1_atax_avm_enable(i_llvm_fpga_mem_memdep_1_atax29_out_memdep_1_atax_avm_enable),
        .out_memdep_1_atax_avm_read(i_llvm_fpga_mem_memdep_1_atax29_out_memdep_1_atax_avm_read),
        .out_memdep_1_atax_avm_write(i_llvm_fpga_mem_memdep_1_atax29_out_memdep_1_atax_avm_write),
        .out_memdep_1_atax_avm_writedata(i_llvm_fpga_mem_memdep_1_atax29_out_memdep_1_atax_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(i_llvm_fpga_mem_memdep_1_atax29_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_ext_sig_sync_out_x(GPOUT,119)
    assign out_memdep_1_atax_avm_address = i_llvm_fpga_mem_memdep_1_atax29_out_memdep_1_atax_avm_address;
    assign out_memdep_1_atax_avm_enable = i_llvm_fpga_mem_memdep_1_atax29_out_memdep_1_atax_avm_enable;
    assign out_memdep_1_atax_avm_read = i_llvm_fpga_mem_memdep_1_atax29_out_memdep_1_atax_avm_read;
    assign out_memdep_1_atax_avm_write = i_llvm_fpga_mem_memdep_1_atax29_out_memdep_1_atax_avm_write;
    assign out_memdep_1_atax_avm_writedata = i_llvm_fpga_mem_memdep_1_atax29_out_memdep_1_atax_avm_writedata;
    assign out_memdep_1_atax_avm_byteenable = i_llvm_fpga_mem_memdep_1_atax29_out_memdep_1_atax_avm_byteenable;
    assign out_memdep_1_atax_avm_burstcount = i_llvm_fpga_mem_memdep_1_atax29_out_memdep_1_atax_avm_burstcount;

    // valid_fanout_reg0(REG,169)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist16_sync_together119_aunroll_x_in_i_valid_9_q);
        end
    end

    // redist0_valid_fanout_reg0_q_1(DELAY,290)
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

    // redist12_sync_together119_aunroll_x_in_c0_eni11139_11_tpl_11(DELAY,302)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist12_sync_together119_aunroll_x_in_c0_eni11139_11_tpl_11 ( .xin(in_c0_eni11139_11_tpl), .xout(redist12_sync_together119_aunroll_x_in_c0_eni11139_11_tpl_11_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist11_sync_together119_aunroll_x_in_c0_eni11139_10_tpl_11(DELAY,301)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist11_sync_together119_aunroll_x_in_c0_eni11139_10_tpl_11 ( .xin(in_c0_eni11139_10_tpl), .xout(redist11_sync_together119_aunroll_x_in_c0_eni11139_10_tpl_11_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg23(REG,192)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(redist13_sync_together119_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg24(REG,193)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg24_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(redist14_sync_together119_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist32_i_llvm_fpga_pipeline_keep_going_atax6_out_data_out_3(DELAY,322)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_llvm_fpga_pipeline_keep_going_atax6_out_data_out_3_q <= '0;
        end
        else
        begin
            redist32_i_llvm_fpga_pipeline_keep_going_atax6_out_data_out_3_q <= $unsigned(redist31_i_llvm_fpga_pipeline_keep_going_atax6_out_data_out_2_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp2650_push37_atax50(BLACKBOX,87)@4
    // out out_feedback_out_37@20000000
    // out out_feedback_valid_out_37@20000000
    atax_i_llvm_fpga_push_i1_notcmp2650_push37_0 thei_llvm_fpga_push_i1_notcmp2650_push37_atax50 (
        .in_data_in(redist26_i_llvm_fpga_pop_i1_notcmp2650_pop37_atax49_out_data_out_1_q),
        .in_feedback_stall_in_37(i_llvm_fpga_pop_i1_notcmp2650_pop37_atax49_out_feedback_stall_out_37),
        .in_keep_going(redist32_i_llvm_fpga_pipeline_keep_going_atax6_out_data_out_3_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_data_out(),
        .out_feedback_out_37(i_llvm_fpga_push_i1_notcmp2650_push37_atax50_out_feedback_out_37),
        .out_feedback_valid_out_37(i_llvm_fpga_push_i1_notcmp2650_push37_atax50_out_feedback_valid_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_sync_together119_aunroll_x_in_c0_eni11139_9_tpl_2(DELAY,300)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together119_aunroll_x_in_c0_eni11139_9_tpl_2_delay_0 <= '0;
            redist10_sync_together119_aunroll_x_in_c0_eni11139_9_tpl_2_q <= '0;
        end
        else
        begin
            redist10_sync_together119_aunroll_x_in_c0_eni11139_9_tpl_2_delay_0 <= $unsigned(in_c0_eni11139_9_tpl);
            redist10_sync_together119_aunroll_x_in_c0_eni11139_9_tpl_2_q <= redist10_sync_together119_aunroll_x_in_c0_eni11139_9_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_i1_notcmp2650_pop37_atax49(BLACKBOX,74)@3
    // out out_feedback_stall_out_37@20000000
    atax_i_llvm_fpga_pop_i1_notcmp2650_pop37_0 thei_llvm_fpga_pop_i1_notcmp2650_pop37_atax49 (
        .in_data_in(redist10_sync_together119_aunroll_x_in_c0_eni11139_9_tpl_2_q),
        .in_dir(redist2_sync_together119_aunroll_x_in_c0_eni11139_1_tpl_2_q),
        .in_feedback_in_37(i_llvm_fpga_push_i1_notcmp2650_push37_atax50_out_feedback_out_37),
        .in_feedback_valid_in_37(i_llvm_fpga_push_i1_notcmp2650_push37_atax50_out_feedback_valid_out_37),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp2650_pop37_atax49_out_data_out),
        .out_feedback_stall_out_37(i_llvm_fpga_pop_i1_notcmp2650_pop37_atax49_out_feedback_stall_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist26_i_llvm_fpga_pop_i1_notcmp2650_pop37_atax49_out_data_out_1(DELAY,316)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_pop_i1_notcmp2650_pop37_atax49_out_data_out_1_q <= '0;
        end
        else
        begin
            redist26_i_llvm_fpga_pop_i1_notcmp2650_pop37_atax49_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_notcmp2650_pop37_atax49_out_data_out);
        end
    end

    // redist27_i_llvm_fpga_pop_i1_notcmp2650_pop37_atax49_out_data_out_9(DELAY,317)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist27_i_llvm_fpga_pop_i1_notcmp2650_pop37_atax49_out_data_out_9 ( .xin(redist26_i_llvm_fpga_pop_i1_notcmp2650_pop37_atax49_out_data_out_1_q), .xout(redist27_i_llvm_fpga_pop_i1_notcmp2650_pop37_atax49_out_data_out_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg21(REG,190)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist13_sync_together119_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg22(REG,191)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg22_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist14_sync_together119_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_exitcond948_push36_atax48(BLACKBOX,82)@4
    // out out_feedback_out_36@20000000
    // out out_feedback_valid_out_36@20000000
    atax_i_llvm_fpga_push_i1_exitcond948_push36_0 thei_llvm_fpga_push_i1_exitcond948_push36_atax48 (
        .in_data_in(redist28_i_llvm_fpga_pop_i1_exitcond948_pop36_atax47_out_data_out_1_q),
        .in_feedback_stall_in_36(i_llvm_fpga_pop_i1_exitcond948_pop36_atax47_out_feedback_stall_out_36),
        .in_keep_going(redist32_i_llvm_fpga_pipeline_keep_going_atax6_out_data_out_3_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(),
        .out_feedback_out_36(i_llvm_fpga_push_i1_exitcond948_push36_atax48_out_feedback_out_36),
        .out_feedback_valid_out_36(i_llvm_fpga_push_i1_exitcond948_push36_atax48_out_feedback_valid_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_sync_together119_aunroll_x_in_c0_eni11139_8_tpl_2(DELAY,299)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together119_aunroll_x_in_c0_eni11139_8_tpl_2_delay_0 <= '0;
            redist9_sync_together119_aunroll_x_in_c0_eni11139_8_tpl_2_q <= '0;
        end
        else
        begin
            redist9_sync_together119_aunroll_x_in_c0_eni11139_8_tpl_2_delay_0 <= $unsigned(in_c0_eni11139_8_tpl);
            redist9_sync_together119_aunroll_x_in_c0_eni11139_8_tpl_2_q <= redist9_sync_together119_aunroll_x_in_c0_eni11139_8_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_i1_exitcond948_pop36_atax47(BLACKBOX,70)@3
    // out out_feedback_stall_out_36@20000000
    atax_i_llvm_fpga_pop_i1_exitcond948_pop36_0 thei_llvm_fpga_pop_i1_exitcond948_pop36_atax47 (
        .in_data_in(redist9_sync_together119_aunroll_x_in_c0_eni11139_8_tpl_2_q),
        .in_dir(redist2_sync_together119_aunroll_x_in_c0_eni11139_1_tpl_2_q),
        .in_feedback_in_36(i_llvm_fpga_push_i1_exitcond948_push36_atax48_out_feedback_out_36),
        .in_feedback_valid_in_36(i_llvm_fpga_push_i1_exitcond948_push36_atax48_out_feedback_valid_out_36),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond948_pop36_atax47_out_data_out),
        .out_feedback_stall_out_36(i_llvm_fpga_pop_i1_exitcond948_pop36_atax47_out_feedback_stall_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist28_i_llvm_fpga_pop_i1_exitcond948_pop36_atax47_out_data_out_1(DELAY,318)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_llvm_fpga_pop_i1_exitcond948_pop36_atax47_out_data_out_1_q <= '0;
        end
        else
        begin
            redist28_i_llvm_fpga_pop_i1_exitcond948_pop36_atax47_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_exitcond948_pop36_atax47_out_data_out);
        end
    end

    // redist29_i_llvm_fpga_pop_i1_exitcond948_pop36_atax47_out_data_out_9(DELAY,319)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist29_i_llvm_fpga_pop_i1_exitcond948_pop36_atax47_out_data_out_9 ( .xin(redist28_i_llvm_fpga_pop_i1_exitcond948_pop36_atax47_out_data_out_1_q), .xout(redist29_i_llvm_fpga_pop_i1_exitcond948_pop36_atax47_out_data_out_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_notEnable(LOGICAL,334)
    assign redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_notEnable_q = $unsigned(~ (VCC_q));

    // redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_nor(LOGICAL,335)
    assign redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_nor_q = ~ (redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_notEnable_q | redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_sticky_ena_q);

    // redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_mem_last(CONSTANT,331)
    assign redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_mem_last_q = $unsigned(4'b0111);

    // redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_cmp(LOGICAL,332)
    assign redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_cmp_q = $unsigned(redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_mem_last_q == redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_rdcnt_q ? 1'b1 : 1'b0);

    // redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_cmpReg(REG,333)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_cmpReg_q <= $unsigned(redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_cmp_q);
        end
    end

    // redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_sticky_ena(REG,336)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_nor_q == 1'b1)
        begin
            redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_sticky_ena_q <= $unsigned(redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_cmpReg_q);
        end
    end

    // redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_enaAnd(LOGICAL,337)
    assign redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_enaAnd_q = redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_sticky_ena_q & VCC_q;

    // redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_rdcnt(COUNTER,329)
    // low=0, high=8, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_rdcnt_i <= 4'd0;
            redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_rdcnt_i == 4'd7)
            begin
                redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_rdcnt_eq <= 1'b0;
            end
            if (redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_rdcnt_eq == 1'b1)
            begin
                redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_rdcnt_i <= $unsigned(redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_rdcnt_i) + $unsigned(4'd8);
            end
            else
            begin
                redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_rdcnt_i <= $unsigned(redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_rdcnt_q = redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_rdcnt_i[3:0];

    // valid_fanout_reg19(REG,188)@1 + 1
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

    // valid_fanout_reg20(REG,189)@1 + 1
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

    // i_llvm_fpga_push_p67i32_arrayidx146_push35_atax46(BLACKBOX,95)@2
    // out out_feedback_out_35@20000000
    // out out_feedback_valid_out_35@20000000
    atax_i_llvm_fpga_push_p67i32_arrayidx146_push35_0 thei_llvm_fpga_push_p67i32_arrayidx146_push35_atax46 (
        .in_data_in(i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out),
        .in_feedback_stall_in_35(i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_feedback_stall_out_35),
        .in_keep_going(redist30_i_llvm_fpga_pipeline_keep_going_atax6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(),
        .out_feedback_out_35(i_llvm_fpga_push_p67i32_arrayidx146_push35_atax46_out_feedback_out_35),
        .out_feedback_valid_out_35(i_llvm_fpga_push_p67i32_arrayidx146_push35_atax46_out_feedback_valid_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_sync_together119_aunroll_x_in_c0_eni11139_7_tpl_1(DELAY,298)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together119_aunroll_x_in_c0_eni11139_7_tpl_1_q <= '0;
        end
        else
        begin
            redist8_sync_together119_aunroll_x_in_c0_eni11139_7_tpl_1_q <= $unsigned(in_c0_eni11139_7_tpl);
        end
    end

    // i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45(BLACKBOX,81)@2
    // out out_feedback_stall_out_35@20000000
    atax_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_0 thei_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45 (
        .in_data_in(redist8_sync_together119_aunroll_x_in_c0_eni11139_7_tpl_1_q),
        .in_dir(redist1_sync_together119_aunroll_x_in_c0_eni11139_1_tpl_1_q),
        .in_feedback_in_35(i_llvm_fpga_push_p67i32_arrayidx146_push35_atax46_out_feedback_out_35),
        .in_feedback_valid_in_35(i_llvm_fpga_push_p67i32_arrayidx146_push35_atax46_out_feedback_valid_out_35),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out),
        .out_feedback_stall_out_35(i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_feedback_stall_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_wraddr(REG,330)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_wraddr_q <= $unsigned(4'b1000);
        end
        else
        begin
            redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_wraddr_q <= $unsigned(redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_rdcnt_q);
        end
    end

    // redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_mem(DUALMEM,328)
    assign redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_mem_ia = $unsigned(i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out);
    assign redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_mem_aa = redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_wraddr_q;
    assign redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_mem_ab = redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_rdcnt_q;
    assign redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(4),
        .numwords_a(9),
        .width_b(64),
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
    ) redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_mem_dmem (
        .clocken1(redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_mem_reset0),
        .clock1(clock),
        .address_a(redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_mem_aa),
        .data_a(redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_mem_ab),
        .q_b(redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_mem_iq),
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
    assign redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_mem_q = redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_mem_iq[63:0];

    // i_masked_atax42(LOGICAL,96)@2 + 1
    assign i_masked_atax42_qi = i_notcmp_atax35_q & i_first_cleanup_atax3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_atax42_delay ( .xin(i_masked_atax42_qi), .xout(i_masked_atax42_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist21_i_masked_atax42_q_10(DELAY,311)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist21_i_masked_atax42_q_10 ( .xin(i_masked_atax42_q), .xout(redist21_i_masked_atax42_q_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_notEnable(LOGICAL,354)
    assign redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_notEnable_q = $unsigned(~ (VCC_q));

    // redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_nor(LOGICAL,355)
    assign redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_nor_q = ~ (redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_notEnable_q | redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_sticky_ena_q);

    // redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_mem_last(CONSTANT,351)
    assign redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_mem_last_q = $unsigned(3'b010);

    // redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_cmp(LOGICAL,352)
    assign redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_cmp_b = {1'b0, redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_rdcnt_q};
    assign redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_cmp_q = $unsigned(redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_mem_last_q == redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_cmp_b ? 1'b1 : 1'b0);

    // redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_cmpReg(REG,353)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_cmpReg_q <= $unsigned(redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_cmp_q);
        end
    end

    // redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_sticky_ena(REG,356)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_nor_q == 1'b1)
        begin
            redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_sticky_ena_q <= $unsigned(redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_cmpReg_q);
        end
    end

    // redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_enaAnd(LOGICAL,357)
    assign redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_enaAnd_q = redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_sticky_ena_q & VCC_q;

    // redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_rdcnt(COUNTER,349)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_rdcnt_i <= $unsigned(redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_rdcnt_q = redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_rdcnt_i[1:0];

    // redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_wraddr(REG,350)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_wraddr_q <= $unsigned(redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_rdcnt_q);
        end
    end

    // redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_mem(DUALMEM,348)
    assign redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_mem_ia = $unsigned(redist24_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_5_mem_q);
    assign redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_mem_aa = redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_wraddr_q;
    assign redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_mem_ab = redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_rdcnt_q;
    assign redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_mem_reset0 = ~ (resetn);
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
    ) redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_mem_dmem (
        .clocken1(redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_mem_reset0),
        .clock1(clock),
        .address_a(redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_mem_aa),
        .data_a(redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_mem_ab),
        .q_b(redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_mem_iq),
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
    assign redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_mem_q = redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_mem_iq[31:0];

    // redist33_i_llvm_fpga_pipeline_keep_going_atax6_out_data_out_11(DELAY,323)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist33_i_llvm_fpga_pipeline_keep_going_atax6_out_data_out_11 ( .xin(redist32_i_llvm_fpga_pipeline_keep_going_atax6_out_data_out_3_q), .xout(redist33_i_llvm_fpga_pipeline_keep_going_atax6_out_data_out_11_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,167)@12
    assign out_c0_exi9160_0_tpl = GND_q;
    assign out_c0_exi9160_1_tpl = redist33_i_llvm_fpga_pipeline_keep_going_atax6_out_data_out_11_q;
    assign out_c0_exi9160_2_tpl = redist25_i_llvm_fpga_pop_i32_add52_pop39_atax25_out_data_out_10_mem_q;
    assign out_c0_exi9160_3_tpl = i_llvm_fpga_mem_memdep_1_atax29_out_o_writeack;
    assign out_c0_exi9160_4_tpl = redist21_i_masked_atax42_q_10_q;
    assign out_c0_exi9160_5_tpl = redist22_i_llvm_fpga_pop_p67i32_arrayidx146_pop35_atax45_out_data_out_10_mem_q;
    assign out_c0_exi9160_6_tpl = redist29_i_llvm_fpga_pop_i1_exitcond948_pop36_atax47_out_data_out_9_q;
    assign out_c0_exi9160_7_tpl = redist27_i_llvm_fpga_pop_i1_notcmp2650_pop37_atax49_out_data_out_9_q;
    assign out_c0_exi9160_8_tpl = redist11_sync_together119_aunroll_x_in_c0_eni11139_10_tpl_11_q;
    assign out_c0_exi9160_9_tpl = redist12_sync_together119_aunroll_x_in_c0_eni11139_11_tpl_11_q;
    assign out_o_valid = redist0_valid_fanout_reg0_q_1_q;
    assign out_unnamed_atax0 = GND_q;

    // i_llvm_fpga_pop_i1_memdep_phi_pop938_pop32_atax43(BLACKBOX,73)@2
    // out out_feedback_stall_out_32@20000000
    atax_i_llvm_fpga_pop_i1_memdep_phi_pop938_pop32_0 thei_llvm_fpga_pop_i1_memdep_phi_pop938_pop32_atax43 (
        .in_data_in(redist7_sync_together119_aunroll_x_in_c0_eni11139_6_tpl_1_q),
        .in_dir(redist1_sync_together119_aunroll_x_in_c0_eni11139_1_tpl_1_q),
        .in_feedback_in_32(i_llvm_fpga_push_i1_memdep_phi_pop938_push32_atax44_out_feedback_out_32),
        .in_feedback_valid_in_32(i_llvm_fpga_push_i1_memdep_phi_pop938_push32_atax44_out_feedback_valid_out_32),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop938_pop32_atax43_out_data_out),
        .out_feedback_stall_out_32(i_llvm_fpga_pop_i1_memdep_phi_pop938_pop32_atax43_out_feedback_stall_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi_pop938_push32_atax44(BLACKBOX,86)@2
    // out out_feedback_out_32@20000000
    // out out_feedback_valid_out_32@20000000
    atax_i_llvm_fpga_push_i1_memdep_phi_pop938_push32_0 thei_llvm_fpga_push_i1_memdep_phi_pop938_push32_atax44 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi_pop938_pop32_atax43_out_data_out),
        .in_feedback_stall_in_32(i_llvm_fpga_pop_i1_memdep_phi_pop938_pop32_atax43_out_feedback_stall_out_32),
        .in_keep_going(redist30_i_llvm_fpga_pipeline_keep_going_atax6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(),
        .out_feedback_out_32(i_llvm_fpga_push_i1_memdep_phi_pop938_push32_atax44_out_feedback_out_32),
        .out_feedback_valid_out_32(i_llvm_fpga_push_i1_memdep_phi_pop938_push32_atax44_out_feedback_valid_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg17(REG,186)@1 + 1
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

    // valid_fanout_reg18(REG,187)@1 + 1
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

    // redist7_sync_together119_aunroll_x_in_c0_eni11139_6_tpl_1(DELAY,297)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together119_aunroll_x_in_c0_eni11139_6_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together119_aunroll_x_in_c0_eni11139_6_tpl_1_q <= $unsigned(in_c0_eni11139_6_tpl);
        end
    end

endmodule
