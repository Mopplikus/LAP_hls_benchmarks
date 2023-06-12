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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body15_stencil_2ds_c0_enter17017_stencil_2d0
// Created for function/kernel stencil_2d
// SystemVerilog created on Thu Apr 27 14:23:40 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_i_sfc_logic_s_c0_in_for_body10000ter17017_stencil_2d0 (
    input wire [31:0] in_unnamed_stencil_2d7_stencil_2d_avm_readdata,
    input wire [0:0] in_unnamed_stencil_2d7_stencil_2d_avm_writeack,
    input wire [0:0] in_unnamed_stencil_2d7_stencil_2d_avm_waitrequest,
    input wire [0:0] in_unnamed_stencil_2d7_stencil_2d_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d4_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d4_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    output wire [31:0] out_intel_reserved_ffwd_0_0,
    input wire [31:0] in_unnamed_stencil_2d8_stencil_2d_avm_readdata,
    input wire [0:0] in_unnamed_stencil_2d8_stencil_2d_avm_writeack,
    input wire [0:0] in_unnamed_stencil_2d8_stencil_2d_avm_waitrequest,
    input wire [0:0] in_unnamed_stencil_2d8_stencil_2d_avm_readdatavalid,
    output wire [31:0] out_unnamed_stencil_2d7_stencil_2d_avm_address,
    output wire [0:0] out_unnamed_stencil_2d7_stencil_2d_avm_enable,
    output wire [0:0] out_unnamed_stencil_2d7_stencil_2d_avm_read,
    output wire [0:0] out_unnamed_stencil_2d7_stencil_2d_avm_write,
    output wire [31:0] out_unnamed_stencil_2d7_stencil_2d_avm_writedata,
    output wire [3:0] out_unnamed_stencil_2d7_stencil_2d_avm_byteenable,
    output wire [0:0] out_unnamed_stencil_2d7_stencil_2d_avm_burstcount,
    output wire [31:0] out_unnamed_stencil_2d8_stencil_2d_avm_address,
    output wire [0:0] out_unnamed_stencil_2d8_stencil_2d_avm_enable,
    output wire [0:0] out_unnamed_stencil_2d8_stencil_2d_avm_read,
    output wire [0:0] out_unnamed_stencil_2d8_stencil_2d_avm_write,
    output wire [31:0] out_unnamed_stencil_2d8_stencil_2d_avm_writedata,
    output wire [3:0] out_unnamed_stencil_2d8_stencil_2d_avm_byteenable,
    output wire [0:0] out_unnamed_stencil_2d8_stencil_2d_avm_burstcount,
    output wire [0:0] out_c0_exi16195_0_tpl,
    output wire [31:0] out_c0_exi16195_1_tpl,
    output wire [0:0] out_c0_exi16195_2_tpl,
    output wire [0:0] out_c0_exi16195_3_tpl,
    output wire [31:0] out_c0_exi16195_4_tpl,
    output wire [0:0] out_c0_exi16195_5_tpl,
    output wire [0:0] out_c0_exi16195_6_tpl,
    output wire [31:0] out_c0_exi16195_7_tpl,
    output wire [0:0] out_c0_exi16195_8_tpl,
    output wire [31:0] out_c0_exi16195_9_tpl,
    output wire [31:0] out_c0_exi16195_10_tpl,
    output wire [0:0] out_c0_exi16195_11_tpl,
    output wire [0:0] out_c0_exi16195_12_tpl,
    output wire [31:0] out_c0_exi16195_13_tpl,
    output wire [31:0] out_c0_exi16195_14_tpl,
    output wire [31:0] out_c0_exi16195_15_tpl,
    output wire [0:0] out_c0_exi16195_16_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_stencil_2d3,
    input wire [0:0] in_c0_eni19_0_tpl,
    input wire [0:0] in_c0_eni19_1_tpl,
    input wire [0:0] in_c0_eni19_2_tpl,
    input wire [31:0] in_c0_eni19_3_tpl,
    input wire [31:0] in_c0_eni19_4_tpl,
    input wire [0:0] in_c0_eni19_5_tpl,
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
    wire [31:0] c_i32_081_q;
    wire [31:0] c_i32_182_q;
    wire [2:0] c_i3_183_q;
    wire [2:0] c_i3_185_q;
    wire [63:0] c_stencil_2d_filter_pmem_q;
    wire [63:0] c_stencil_2d_orig_pmem_q;
    wire [32:0] i_add20_stencil_2d12_a;
    wire [32:0] i_add20_stencil_2d12_b;
    logic [32:0] i_add20_stencil_2d12_o;
    wire [32:0] i_add20_stencil_2d12_q;
    wire [32:0] i_add24_stencil_2d18_a;
    wire [32:0] i_add24_stencil_2d18_b;
    logic [32:0] i_add24_stencil_2d18_o;
    wire [32:0] i_add24_stencil_2d18_q;
    wire [32:0] i_add_stencil_2d7_a;
    wire [32:0] i_add_stencil_2d7_b;
    logic [32:0] i_add_stencil_2d7_o;
    wire [32:0] i_add_stencil_2d7_q;
    wire [1:0] i_arrayidx1_stencil_2d9_vt_const_1_q;
    wire [63:0] i_arrayidx1_stencil_2d9_vt_join_q;
    wire [61:0] i_arrayidx1_stencil_2d9_vt_select_63_b;
    wire [63:0] i_arrayidx222_stencil_2d14_vt_join_q;
    wire [61:0] i_arrayidx222_stencil_2d14_vt_select_63_b;
    wire [0:0] i_exitcond_or_stencil_2d29_q;
    wire [0:0] i_forked_and_stencil_2d3_qi;
    reg [0:0] i_forked_and_stencil_2d3_q;
    wire [3:0] i_fpga_indvars_iv_next_stencil_2d33_a;
    wire [3:0] i_fpga_indvars_iv_next_stencil_2d33_b;
    logic [3:0] i_fpga_indvars_iv_next_stencil_2d33_o;
    wire [3:0] i_fpga_indvars_iv_next_stencil_2d33_q;
    wire [63:0] i_idxprom21_stencil_2d13_vt_join_q;
    wire [31:0] i_idxprom21_stencil_2d13_vt_select_31_b;
    wire [63:0] i_idxprom_stencil_2d8_vt_join_q;
    wire [31:0] i_idxprom_stencil_2d8_vt_select_31_b;
    wire [32:0] i_inc_stencil_2d19_a;
    wire [32:0] i_inc_stencil_2d19_b;
    logic [32:0] i_inc_stencil_2d19_o;
    wire [32:0] i_inc_stencil_2d19_q;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_stencil_2d9_stencil_2d35_out_intel_reserved_ffwd_0_0;
    wire [31:0] i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d10_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d10_out_unnamed_stencil_2d7_stencil_2d_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d10_out_unnamed_stencil_2d7_stencil_2d_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d10_out_unnamed_stencil_2d7_stencil_2d_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d10_out_unnamed_stencil_2d7_stencil_2d_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d10_out_unnamed_stencil_2d7_stencil_2d_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d10_out_unnamed_stencil_2d7_stencil_2d_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d10_out_unnamed_stencil_2d7_stencil_2d_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d15_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d15_out_unnamed_stencil_2d8_stencil_2d_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d15_out_unnamed_stencil_2d8_stencil_2d_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d15_out_unnamed_stencil_2d8_stencil_2d_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d15_out_unnamed_stencil_2d8_stencil_2d_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d15_out_unnamed_stencil_2d8_stencil_2d_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d15_out_unnamed_stencil_2d8_stencil_2d_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d15_out_unnamed_stencil_2d8_stencil_2d_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_stencil_2d4_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_stencil_2d4_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_stencil_2d4_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_stencil_2d4_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond351_pop37_stencil_2d27_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond351_pop37_stencil_2d27_out_feedback_stall_out_37;
    wire [0:0] i_llvm_fpga_pop_i1_forked3148_pop34_stencil_2d2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_forked3148_pop34_stencil_2d2_out_feedback_stall_out_34;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1352_pop38_stencil_2d46_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1352_pop38_stencil_2d46_out_feedback_stall_out_38;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1845_pop32_stencil_2d42_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1845_pop32_stencil_2d42_out_feedback_stall_out_32;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2343_pop31_stencil_2d40_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2343_pop31_stencil_2d40_out_feedback_stall_out_31;
    wire [31:0] i_llvm_fpga_pop_i32_add1950_pop36_stencil_2d11_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_add1950_pop36_stencil_2d11_out_feedback_stall_out_36;
    wire [31:0] i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_feedback_stall_out_33;
    wire [31:0] i_llvm_fpga_pop_i32_k2_022_pop27_stencil_2d5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k2_022_pop27_stencil_2d5_out_feedback_stall_out_27;
    wire [31:0] i_llvm_fpga_pop_i32_mul16_add1149_pop35_stencil_2d6_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul16_add1149_pop35_stencil_2d6_out_feedback_stall_out_35;
    wire [31:0] i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_feedback_stall_out_30;
    wire [31:0] i_llvm_fpga_pop_i32_r_026_pop1337_pop29_stencil_2d36_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_r_026_pop1337_pop29_stencil_2d36_out_feedback_stall_out_29;
    wire [31:0] i_llvm_fpga_pop_i32_temp_321_pop28_stencil_2d17_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_temp_321_pop28_stencil_2d17_out_feedback_stall_out_28;
    wire [2:0] i_llvm_fpga_pop_i3_fpga_indvars_iv_pop26_stencil_2d20_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i3_fpga_indvars_iv_pop26_stencil_2d20_out_feedback_stall_out_26;
    wire [0:0] i_llvm_fpga_push_i1_exitcond351_push37_stencil_2d28_out_feedback_out_37;
    wire [0:0] i_llvm_fpga_push_i1_exitcond351_push37_stencil_2d28_out_feedback_valid_out_37;
    wire [0:0] i_llvm_fpga_push_i1_forked3148_push34_stencil_2d25_out_feedback_out_34;
    wire [0:0] i_llvm_fpga_push_i1_forked3148_push34_stencil_2d25_out_feedback_valid_out_34;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1352_push38_stencil_2d47_out_feedback_out_38;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1352_push38_stencil_2d47_out_feedback_valid_out_38;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1845_push32_stencil_2d43_out_feedback_out_32;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1845_push32_stencil_2d43_out_feedback_valid_out_32;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2343_push31_stencil_2d41_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2343_push31_stencil_2d41_out_feedback_valid_out_31;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_stencil_2d32_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_stencil_2d32_out_feedback_valid_out_3;
    wire [31:0] i_llvm_fpga_push_i32_add1950_push36_stencil_2d23_out_feedback_out_36;
    wire [0:0] i_llvm_fpga_push_i32_add1950_push36_stencil_2d23_out_feedback_valid_out_36;
    wire [31:0] i_llvm_fpga_push_i32_c_025_pop1547_push33_stencil_2d45_out_feedback_out_33;
    wire [0:0] i_llvm_fpga_push_i32_c_025_pop1547_push33_stencil_2d45_out_feedback_valid_out_33;
    wire [31:0] i_llvm_fpga_push_i32_k2_022_push27_stencil_2d26_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_i32_k2_022_push27_stencil_2d26_out_feedback_valid_out_27;
    wire [31:0] i_llvm_fpga_push_i32_mul16_add1149_push35_stencil_2d24_out_feedback_out_35;
    wire [0:0] i_llvm_fpga_push_i32_mul16_add1149_push35_stencil_2d24_out_feedback_valid_out_35;
    wire [31:0] i_llvm_fpga_push_i32_mul2840_push30_stencil_2d39_out_feedback_out_30;
    wire [0:0] i_llvm_fpga_push_i32_mul2840_push30_stencil_2d39_out_feedback_valid_out_30;
    wire [31:0] i_llvm_fpga_push_i32_r_026_pop1337_push29_stencil_2d37_out_feedback_out_29;
    wire [0:0] i_llvm_fpga_push_i32_r_026_pop1337_push29_stencil_2d37_out_feedback_valid_out_29;
    wire [31:0] i_llvm_fpga_push_i32_temp_321_push28_stencil_2d30_out_feedback_out_28;
    wire [0:0] i_llvm_fpga_push_i32_temp_321_push28_stencil_2d30_out_feedback_valid_out_28;
    wire [7:0] i_llvm_fpga_push_i3_fpga_indvars_iv_push26_stencil_2d34_out_feedback_out_26;
    wire [0:0] i_llvm_fpga_push_i3_fpga_indvars_iv_push26_stencil_2d34_out_feedback_valid_out_26;
    wire [0:0] i_notcmp_stencil_2d31_q;
    wire [31:0] bgTrunc_i_add20_stencil_2d12_sel_x_b;
    wire [31:0] bgTrunc_i_add24_stencil_2d18_sel_x_b;
    wire [31:0] bgTrunc_i_add_stencil_2d7_sel_x_b;
    wire [2:0] bgTrunc_i_fpga_indvars_iv_next_stencil_2d33_sel_x_b;
    wire [31:0] bgTrunc_i_inc_stencil_2d19_sel_x_b;
    wire [63:0] bgTrunc_i_mul23_stencil_2d16_sel_x_in;
    wire [31:0] bgTrunc_i_mul23_stencil_2d16_sel_x_b;
    wire [6:0] i_arrayidx1_stencil_2d0_add_x_a;
    wire [6:0] i_arrayidx1_stencil_2d0_add_x_b;
    logic [6:0] i_arrayidx1_stencil_2d0_add_x_o;
    wire [6:0] i_arrayidx1_stencil_2d0_add_x_q;
    wire [63:0] i_arrayidx1_stencil_2d0_append_upper_bits_x_q;
    wire [3:0] i_arrayidx1_stencil_2d0_narrow_x_b;
    wire [5:0] i_arrayidx1_stencil_2d0_shift_join_x_q;
    wire [5:0] i_arrayidx1_stencil_2d0_dupName_0_trunc_sel_x_b;
    wire [5:0] i_arrayidx1_stencil_2d0_dupName_2_trunc_sel_x_b;
    wire [12:0] i_arrayidx222_stencil_2d0_add_x_a;
    wire [12:0] i_arrayidx222_stencil_2d0_add_x_b;
    logic [12:0] i_arrayidx222_stencil_2d0_add_x_o;
    wire [12:0] i_arrayidx222_stencil_2d0_add_x_q;
    wire [63:0] i_arrayidx222_stencil_2d0_append_upper_bits_x_q;
    wire [9:0] i_arrayidx222_stencil_2d0_narrow_x_b;
    wire [11:0] i_arrayidx222_stencil_2d0_shift_join_x_q;
    wire [11:0] i_arrayidx222_stencil_2d0_dupName_0_trunc_sel_x_b;
    wire [11:0] i_arrayidx222_stencil_2d0_dupName_2_trunc_sel_x_b;
    wire [63:0] i_idxprom21_stencil_2d13_sel_x_b;
    wire [63:0] i_idxprom_stencil_2d8_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg5_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg6_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg7_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg8_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg9_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg10_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg11_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg12_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg13_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg14_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg15_q;
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
    wire [0:0] i_exitcond_stencil_2d21_cmp_nsign_q;
    wire [14:0] i_mul23_stencil_2d16_bjA2_q;
    wire [14:0] i_mul23_stencil_2d16_bjB4_q;
    wire [65:0] i_mul23_stencil_2d16_sums_join_0_q;
    wire [50:0] i_mul23_stencil_2d16_sums_align_1_q;
    wire [50:0] i_mul23_stencil_2d16_sums_align_1_qint;
    wire [66:0] i_mul23_stencil_2d16_sums_result_add_0_0_a;
    wire [66:0] i_mul23_stencil_2d16_sums_result_add_0_0_b;
    logic [66:0] i_mul23_stencil_2d16_sums_result_add_0_0_o;
    wire [66:0] i_mul23_stencil_2d16_sums_result_add_0_0_q;
    wire i_mul23_stencil_2d16_im0_cma_reset;
    (* preserve_syn_only *) reg signed [14:0] i_mul23_stencil_2d16_im0_cma_ah [0:0];
    (* preserve_syn_only *) reg signed [14:0] i_mul23_stencil_2d16_im0_cma_ch [0:0];
    wire [14:0] i_mul23_stencil_2d16_im0_cma_a0;
    wire [14:0] i_mul23_stencil_2d16_im0_cma_c0;
    wire [29:0] i_mul23_stencil_2d16_im0_cma_s0;
    wire [29:0] i_mul23_stencil_2d16_im0_cma_qq;
    reg [29:0] i_mul23_stencil_2d16_im0_cma_q;
    wire i_mul23_stencil_2d16_im0_cma_ena0;
    wire i_mul23_stencil_2d16_im0_cma_ena1;
    wire i_mul23_stencil_2d16_im0_cma_ena2;
    wire i_mul23_stencil_2d16_im10_cma_reset;
    (* preserve_syn_only *) reg [17:0] i_mul23_stencil_2d16_im10_cma_ah [0:0];
    (* preserve_syn_only *) reg [17:0] i_mul23_stencil_2d16_im10_cma_ch [0:0];
    wire [17:0] i_mul23_stencil_2d16_im10_cma_a0;
    wire [17:0] i_mul23_stencil_2d16_im10_cma_c0;
    wire [35:0] i_mul23_stencil_2d16_im10_cma_s0;
    wire [35:0] i_mul23_stencil_2d16_im10_cma_qq;
    reg [35:0] i_mul23_stencil_2d16_im10_cma_q;
    wire i_mul23_stencil_2d16_im10_cma_ena0;
    wire i_mul23_stencil_2d16_im10_cma_ena1;
    wire i_mul23_stencil_2d16_im10_cma_ena2;
    wire i_mul23_stencil_2d16_ma5_cma_reset;
    (* preserve_syn_only *) reg [13:0] i_mul23_stencil_2d16_ma5_cma_ah [0:1];
    (* preserve_syn_only *) reg [17:0] i_mul23_stencil_2d16_ma5_cma_ch [0:1];
    wire [13:0] i_mul23_stencil_2d16_ma5_cma_a0;
    wire [17:0] i_mul23_stencil_2d16_ma5_cma_c0;
    wire [13:0] i_mul23_stencil_2d16_ma5_cma_a1;
    wire [17:0] i_mul23_stencil_2d16_ma5_cma_c1;
    wire [32:0] i_mul23_stencil_2d16_ma5_cma_s0;
    wire [32:0] i_mul23_stencil_2d16_ma5_cma_qq;
    reg [32:0] i_mul23_stencil_2d16_ma5_cma_q;
    wire i_mul23_stencil_2d16_ma5_cma_ena0;
    wire i_mul23_stencil_2d16_ma5_cma_ena1;
    wire i_mul23_stencil_2d16_ma5_cma_ena2;
    wire [57:0] i_arrayidx1_stencil_2d0_upper_bits_x_merged_bit_select_b;
    wire [5:0] i_arrayidx1_stencil_2d0_upper_bits_x_merged_bit_select_c;
    wire [51:0] i_arrayidx222_stencil_2d0_upper_bits_x_merged_bit_select_b;
    wire [11:0] i_arrayidx222_stencil_2d0_upper_bits_x_merged_bit_select_c;
    wire [13:0] i_mul23_stencil_2d16_bs3_merged_bit_select_b;
    wire [17:0] i_mul23_stencil_2d16_bs3_merged_bit_select_c;
    wire [13:0] i_mul23_stencil_2d16_bs1_merged_bit_select_b;
    wire [17:0] i_mul23_stencil_2d16_bs1_merged_bit_select_c;
    reg [32:0] redist0_i_mul23_stencil_2d16_ma5_cma_q_1_q;
    reg [35:0] redist1_i_mul23_stencil_2d16_im10_cma_q_1_q;
    reg [29:0] redist2_i_mul23_stencil_2d16_im0_cma_q_1_q;
    reg [0:0] redist3_i_exitcond_stencil_2d21_cmp_nsign_q_1_q;
    reg [0:0] redist4_i_exitcond_stencil_2d21_cmp_nsign_q_2_q;
    reg [0:0] redist5_i_exitcond_stencil_2d21_cmp_nsign_q_16_q;
    reg [0:0] redist6_sync_together118_aunroll_x_in_c0_eni19_1_tpl_1_q;
    reg [0:0] redist7_sync_together118_aunroll_x_in_c0_eni19_2_tpl_1_q;
    reg [31:0] redist8_sync_together118_aunroll_x_in_c0_eni19_3_tpl_1_q;
    reg [31:0] redist9_sync_together118_aunroll_x_in_c0_eni19_4_tpl_1_q;
    reg [0:0] redist10_sync_together118_aunroll_x_in_c0_eni19_5_tpl_1_q;
    reg [31:0] redist11_sync_together118_aunroll_x_in_c0_eni19_6_tpl_1_q;
    reg [31:0] redist12_sync_together118_aunroll_x_in_c0_eni19_7_tpl_1_q;
    reg [0:0] redist13_sync_together118_aunroll_x_in_c0_eni19_8_tpl_1_q;
    reg [0:0] redist14_sync_together118_aunroll_x_in_c0_eni19_9_tpl_1_q;
    reg [31:0] redist15_sync_together118_aunroll_x_in_c0_eni19_10_tpl_1_q;
    reg [0:0] redist16_sync_together118_aunroll_x_in_c0_eni19_11_tpl_1_q;
    reg [0:0] redist19_sync_together118_aunroll_x_in_c0_eni19_14_tpl_16_q;
    reg [0:0] redist20_sync_together118_aunroll_x_in_c0_eni19_15_tpl_16_q;
    reg [0:0] redist24_sync_together118_aunroll_x_in_c0_eni19_19_tpl_16_q;
    reg [0:0] redist25_sync_together118_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist26_sync_together118_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist27_sync_together118_aunroll_x_in_i_valid_15_q;
    reg [9:0] redist28_i_arrayidx222_stencil_2d0_narrow_x_b_1_q;
    reg [3:0] redist29_i_arrayidx1_stencil_2d0_narrow_x_b_1_q;
    reg [31:0] redist30_bgTrunc_i_mul23_stencil_2d16_sel_x_b_1_q;
    reg [31:0] redist32_i_llvm_fpga_pop_i32_mul16_add1149_pop35_stencil_2d6_out_data_out_1_q;
    reg [31:0] redist33_i_llvm_fpga_pop_i32_k2_022_pop27_stencil_2d5_out_data_out_1_q;
    reg [31:0] redist35_i_llvm_fpga_pop_i32_add1950_pop36_stencil_2d11_out_data_out_1_q;
    reg [0:0] redist36_i_llvm_fpga_pop_i1_notcmp2343_pop31_stencil_2d40_out_data_out_15_q;
    reg [0:0] redist37_i_llvm_fpga_pop_i1_notcmp1845_pop32_stencil_2d42_out_data_out_15_q;
    reg [0:0] redist38_i_llvm_fpga_pop_i1_notcmp1352_pop38_stencil_2d46_out_data_out_15_q;
    reg [0:0] redist39_i_llvm_fpga_pop_i1_exitcond351_pop37_stencil_2d27_out_data_out_1_q;
    reg [0:0] redist40_i_llvm_fpga_pop_i1_exitcond351_pop37_stencil_2d27_out_data_out_15_q;
    reg [0:0] redist41_i_forked_and_stencil_2d3_q_15_q;
    reg [31:0] redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_inputreg0_q;
    reg [31:0] redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_outputreg0_q;
    wire redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_mem_reset0;
    wire [31:0] redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_mem_ia;
    wire [3:0] redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_mem_aa;
    wire [3:0] redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_mem_ab;
    wire [31:0] redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_mem_iq;
    wire [31:0] redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_mem_q;
    wire [3:0] redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_wraddr_i = 4'b1111;
    wire [3:0] redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_offset_q;
    wire [4:0] redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_rdcnt_a;
    wire [4:0] redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_rdcnt_b;
    logic [4:0] redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_rdcnt_o;
    wire [4:0] redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_rdcnt_q;
    reg [31:0] redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_inputreg0_q;
    reg [31:0] redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_outputreg0_q;
    wire redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_mem_reset0;
    wire [31:0] redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_mem_ia;
    wire [3:0] redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_mem_aa;
    wire [3:0] redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_mem_ab;
    wire [31:0] redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_mem_iq;
    wire [31:0] redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_mem_q;
    wire [3:0] redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_wraddr_i = 4'b1111;
    wire [4:0] redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_rdcnt_a;
    wire [4:0] redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_rdcnt_b;
    logic [4:0] redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_rdcnt_o;
    wire [4:0] redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_rdcnt_q;
    reg [31:0] redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_inputreg0_q;
    reg [31:0] redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_outputreg0_q;
    wire redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_mem_reset0;
    wire [31:0] redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_mem_ia;
    wire [3:0] redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_mem_aa;
    wire [3:0] redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_mem_ab;
    wire [31:0] redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_mem_iq;
    wire [31:0] redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_mem_q;
    wire [3:0] redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_wraddr_i = 4'b1111;
    wire [4:0] redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_rdcnt_a;
    wire [4:0] redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_rdcnt_b;
    logic [4:0] redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_rdcnt_o;
    wire [4:0] redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_rdcnt_q;
    reg [31:0] redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_inputreg0_q;
    reg [31:0] redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_outputreg0_q;
    wire redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_mem_reset0;
    wire [31:0] redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_mem_ia;
    wire [3:0] redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_mem_aa;
    wire [3:0] redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_mem_ab;
    wire [31:0] redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_mem_iq;
    wire [31:0] redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_mem_q;
    wire [3:0] redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_wraddr_i = 4'b1111;
    wire [4:0] redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_rdcnt_a;
    wire [4:0] redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_rdcnt_b;
    logic [4:0] redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_rdcnt_o;
    wire [4:0] redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_rdcnt_q;
    reg [31:0] redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_inputreg0_q;
    reg [31:0] redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_outputreg0_q;
    wire redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_mem_reset0;
    wire [31:0] redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_mem_ia;
    wire [3:0] redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_mem_aa;
    wire [3:0] redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_mem_ab;
    wire [31:0] redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_mem_iq;
    wire [31:0] redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_mem_q;
    wire [3:0] redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_wraddr_i = 4'b1111;
    wire [4:0] redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_rdcnt_a;
    wire [4:0] redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_rdcnt_b;
    logic [4:0] redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_rdcnt_o;
    wire [4:0] redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_rdcnt_q;
    reg [31:0] redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_inputreg0_q;
    reg [31:0] redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_outputreg0_q;
    wire redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_mem_reset0;
    wire [31:0] redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_mem_ia;
    wire [3:0] redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_mem_aa;
    wire [3:0] redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_mem_ab;
    wire [31:0] redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_mem_iq;
    wire [31:0] redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_mem_q;
    wire [3:0] redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_wraddr_i = 4'b1111;
    wire [3:0] redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_offset_q;
    wire [4:0] redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_rdcnt_a;
    wire [4:0] redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_rdcnt_b;
    logic [4:0] redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_rdcnt_o;
    wire [4:0] redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_rdcnt_q;
    reg [31:0] redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_inputreg0_q;
    reg [31:0] redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_outputreg0_q;
    wire redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_mem_reset0;
    wire [31:0] redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_mem_ia;
    wire [3:0] redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_mem_aa;
    wire [3:0] redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_mem_ab;
    wire [31:0] redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_mem_iq;
    wire [31:0] redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_mem_q;
    wire [3:0] redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_wraddr_i = 4'b1111;
    wire [4:0] redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_rdcnt_a;
    wire [4:0] redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_rdcnt_b;
    logic [4:0] redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_rdcnt_o;
    wire [4:0] redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_rdcnt_q;


    // c_i3_185(CONSTANT,45)
    assign c_i3_185_q = $unsigned(3'b111);

    // i_fpga_indvars_iv_next_stencil_2d33(ADD,62)@1
    assign i_fpga_indvars_iv_next_stencil_2d33_a = {1'b0, i_llvm_fpga_pop_i3_fpga_indvars_iv_pop26_stencil_2d20_out_data_out};
    assign i_fpga_indvars_iv_next_stencil_2d33_b = {1'b0, c_i3_185_q};
    assign i_fpga_indvars_iv_next_stencil_2d33_o = $unsigned(i_fpga_indvars_iv_next_stencil_2d33_a) + $unsigned(i_fpga_indvars_iv_next_stencil_2d33_b);
    assign i_fpga_indvars_iv_next_stencil_2d33_q = i_fpga_indvars_iv_next_stencil_2d33_o[3:0];

    // bgTrunc_i_fpga_indvars_iv_next_stencil_2d33_sel_x(BITSELECT,114)@1
    assign bgTrunc_i_fpga_indvars_iv_next_stencil_2d33_sel_x_b = i_fpga_indvars_iv_next_stencil_2d33_q[2:0];

    // i_llvm_fpga_push_i3_fpga_indvars_iv_push26_stencil_2d34(BLACKBOX,102)@1
    // out out_feedback_out_26@20000000
    // out out_feedback_valid_out_26@20000000
    stencil_2d_i_llvm_fpga_push_i3_fpga_indvars_iv_push26_0 thei_llvm_fpga_push_i3_fpga_indvars_iv_push26_stencil_2d34 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_stencil_2d33_sel_x_b),
        .in_exitcond(i_exitcond_stencil_2d21_cmp_nsign_q),
        .in_feedback_stall_in_26(i_llvm_fpga_pop_i3_fpga_indvars_iv_pop26_stencil_2d20_out_feedback_stall_out_26),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_26(i_llvm_fpga_push_i3_fpga_indvars_iv_push26_stencil_2d34_out_feedback_out_26),
        .out_feedback_valid_out_26(i_llvm_fpga_push_i3_fpga_indvars_iv_push26_stencil_2d34_out_feedback_valid_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i3_183(CONSTANT,44)
    assign c_i3_183_q = $unsigned(3'b001);

    // i_llvm_fpga_pop_i3_fpga_indvars_iv_pop26_stencil_2d20(BLACKBOX,88)@1
    // out out_feedback_stall_out_26@20000000
    stencil_2d_i_llvm_fpga_pop_i3_fpga_indvars_iv_pop26_0 thei_llvm_fpga_pop_i3_fpga_indvars_iv_pop26_stencil_2d20 (
        .in_data_in(c_i3_183_q),
        .in_dir(in_c0_eni19_2_tpl),
        .in_feedback_in_26(i_llvm_fpga_push_i3_fpga_indvars_iv_push26_stencil_2d34_out_feedback_out_26),
        .in_feedback_valid_in_26(i_llvm_fpga_push_i3_fpga_indvars_iv_push26_stencil_2d34_out_feedback_valid_out_26),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i3_fpga_indvars_iv_pop26_stencil_2d20_out_data_out),
        .out_feedback_stall_out_26(i_llvm_fpga_pop_i3_fpga_indvars_iv_pop26_stencil_2d20_out_feedback_stall_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_stencil_2d21_cmp_nsign(LOGICAL,186)@1
    assign i_exitcond_stencil_2d21_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i3_fpga_indvars_iv_pop26_stencil_2d20_out_data_out[2:2]));

    // i_llvm_fpga_push_i1_notexitcond_stencil_2d32(BLACKBOX,94)@1
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    stencil_2d_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_stencil_2d32 (
        .in_data_in(i_exitcond_stencil_2d21_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_stencil_2d4_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_stencil_2d32_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_stencil_2d32_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going_stencil_2d4(BLACKBOX,75)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    stencil_2d_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_stencil_2d4 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_stencil_2d32_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_stencil_2d32_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_stencil_2d4_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_stencil_2d4_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_stencil_2d4_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_stencil_2d4_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,49)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d4_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_stencil_2d4_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d4_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_stencil_2d4_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,107)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_stencil_2d4_out_pipeline_valid_out;

    // redist25_sync_together118_aunroll_x_in_i_valid_1(DELAY,236)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist25_sync_together118_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist25_sync_together118_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist26_sync_together118_aunroll_x_in_i_valid_2(DELAY,237)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist26_sync_together118_aunroll_x_in_i_valid_2_q <= $unsigned(redist25_sync_together118_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist27_sync_together118_aunroll_x_in_i_valid_15(DELAY,238)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("SYNC"), .phase(2), .modulus(2), .reset_high(1'b0) )
    redist27_sync_together118_aunroll_x_in_i_valid_15 ( .xin(redist26_sync_together118_aunroll_x_in_i_valid_2_q), .xout(redist27_sync_together118_aunroll_x_in_i_valid_15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg15(REG,164)@16 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist27_sync_together118_aunroll_x_in_i_valid_15_q);
        end
    end

    // valid_fanout_reg7(REG,156)@16 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist27_sync_together118_aunroll_x_in_i_valid_15_q);
        end
    end

    // valid_fanout_reg14(REG,163)@16 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist27_sync_together118_aunroll_x_in_i_valid_15_q);
        end
    end

    // valid_fanout_reg12(REG,161)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg13(REG,162)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist25_sync_together118_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist3_i_exitcond_stencil_2d21_cmp_nsign_q_1(DELAY,214)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_i_exitcond_stencil_2d21_cmp_nsign_q_1_q <= $unsigned(i_exitcond_stencil_2d21_cmp_nsign_q);
        end
    end

    // redist4_i_exitcond_stencil_2d21_cmp_nsign_q_2(DELAY,215)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_i_exitcond_stencil_2d21_cmp_nsign_q_2_q <= $unsigned(redist3_i_exitcond_stencil_2d21_cmp_nsign_q_1_q);
        end
    end

    // i_llvm_fpga_push_i1_exitcond351_push37_stencil_2d28(BLACKBOX,89)@3
    // out out_feedback_out_37@20000000
    // out out_feedback_valid_out_37@20000000
    stencil_2d_i_llvm_fpga_push_i1_exitcond351_push37_0 thei_llvm_fpga_push_i1_exitcond351_push37_stencil_2d28 (
        .in_data_in(redist39_i_llvm_fpga_pop_i1_exitcond351_pop37_stencil_2d27_out_data_out_1_q),
        .in_exitcond(redist4_i_exitcond_stencil_2d21_cmp_nsign_q_2_q),
        .in_feedback_stall_in_37(i_llvm_fpga_pop_i1_exitcond351_pop37_stencil_2d27_out_feedback_stall_out_37),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_37(i_llvm_fpga_push_i1_exitcond351_push37_stencil_2d28_out_feedback_out_37),
        .out_feedback_valid_out_37(i_llvm_fpga_push_i1_exitcond351_push37_stencil_2d28_out_feedback_valid_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together118_aunroll_x_in_c0_eni19_2_tpl_1(DELAY,218)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together118_aunroll_x_in_c0_eni19_2_tpl_1_q <= $unsigned(in_c0_eni19_2_tpl);
        end
    end

    // redist10_sync_together118_aunroll_x_in_c0_eni19_5_tpl_1(DELAY,221)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_sync_together118_aunroll_x_in_c0_eni19_5_tpl_1_q <= $unsigned(in_c0_eni19_5_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_exitcond351_pop37_stencil_2d27(BLACKBOX,76)@2
    // out out_feedback_stall_out_37@20000000
    stencil_2d_i_llvm_fpga_pop_i1_exitcond351_pop37_0 thei_llvm_fpga_pop_i1_exitcond351_pop37_stencil_2d27 (
        .in_data_in(redist10_sync_together118_aunroll_x_in_c0_eni19_5_tpl_1_q),
        .in_dir(redist7_sync_together118_aunroll_x_in_c0_eni19_2_tpl_1_q),
        .in_feedback_in_37(i_llvm_fpga_push_i1_exitcond351_push37_stencil_2d28_out_feedback_out_37),
        .in_feedback_valid_in_37(i_llvm_fpga_push_i1_exitcond351_push37_stencil_2d28_out_feedback_valid_out_37),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond351_pop37_stencil_2d27_out_data_out),
        .out_feedback_stall_out_37(i_llvm_fpga_pop_i1_exitcond351_pop37_stencil_2d27_out_feedback_stall_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist39_i_llvm_fpga_pop_i1_exitcond351_pop37_stencil_2d27_out_data_out_1(DELAY,250)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist39_i_llvm_fpga_pop_i1_exitcond351_pop37_stencil_2d27_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_exitcond351_pop37_stencil_2d27_out_data_out);
        end
    end

    // redist40_i_llvm_fpga_pop_i1_exitcond351_pop37_stencil_2d27_out_data_out_15(DELAY,251)
    dspba_delay_ver #( .width(1), .depth(14), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist40_i_llvm_fpga_pop_i1_exitcond351_pop37_stencil_2d27_out_data_out_15 ( .xin(redist39_i_llvm_fpga_pop_i1_exitcond351_pop37_stencil_2d27_out_data_out_1_q), .xout(redist40_i_llvm_fpga_pop_i1_exitcond351_pop37_stencil_2d27_out_data_out_15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist5_i_exitcond_stencil_2d21_cmp_nsign_q_16(DELAY,216)
    dspba_delay_ver #( .width(1), .depth(14), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist5_i_exitcond_stencil_2d21_cmp_nsign_q_16 ( .xin(redist4_i_exitcond_stencil_2d21_cmp_nsign_q_2_q), .xout(redist5_i_exitcond_stencil_2d21_cmp_nsign_q_16_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_exitcond_or_stencil_2d29(LOGICAL,59)@17
    assign i_exitcond_or_stencil_2d29_q = redist5_i_exitcond_stencil_2d21_cmp_nsign_q_16_q | redist40_i_llvm_fpga_pop_i1_exitcond351_pop37_stencil_2d27_out_data_out_15_q;

    // i_llvm_fpga_push_i32_temp_321_push28_stencil_2d30(BLACKBOX,101)@17
    // out out_feedback_out_28@20000000
    // out out_feedback_valid_out_28@20000000
    stencil_2d_i_llvm_fpga_push_i32_temp_321_push28_0 thei_llvm_fpga_push_i32_temp_321_push28_stencil_2d30 (
        .in_data_in(bgTrunc_i_add24_stencil_2d18_sel_x_b),
        .in_exitcond_or(i_exitcond_or_stencil_2d29_q),
        .in_feedback_stall_in_28(i_llvm_fpga_pop_i32_temp_321_pop28_stencil_2d17_out_feedback_stall_out_28),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_28(i_llvm_fpga_push_i32_temp_321_push28_stencil_2d30_out_feedback_out_28),
        .out_feedback_valid_out_28(i_llvm_fpga_push_i32_temp_321_push28_stencil_2d30_out_feedback_valid_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,150)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg10(REG,159)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_forked3148_push34_stencil_2d25(BLACKBOX,90)@2
    // out out_feedback_out_34@20000000
    // out out_feedback_valid_out_34@20000000
    stencil_2d_i_llvm_fpga_push_i1_forked3148_push34_0 thei_llvm_fpga_push_i1_forked3148_push34_stencil_2d25 (
        .in_data_in(i_llvm_fpga_pop_i1_forked3148_pop34_stencil_2d2_out_data_out),
        .in_exitcond(redist3_i_exitcond_stencil_2d21_cmp_nsign_q_1_q),
        .in_feedback_stall_in_34(i_llvm_fpga_pop_i1_forked3148_pop34_stencil_2d2_out_feedback_stall_out_34),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_34(i_llvm_fpga_push_i1_forked3148_push34_stencil_2d25_out_feedback_out_34),
        .out_feedback_valid_out_34(i_llvm_fpga_push_i1_forked3148_push34_stencil_2d25_out_feedback_valid_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together118_aunroll_x_in_c0_eni19_1_tpl_1(DELAY,217)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_together118_aunroll_x_in_c0_eni19_1_tpl_1_q <= $unsigned(in_c0_eni19_1_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_forked3148_pop34_stencil_2d2(BLACKBOX,77)@2
    // out out_feedback_stall_out_34@20000000
    stencil_2d_i_llvm_fpga_pop_i1_forked3148_pop34_0 thei_llvm_fpga_pop_i1_forked3148_pop34_stencil_2d2 (
        .in_data_in(redist6_sync_together118_aunroll_x_in_c0_eni19_1_tpl_1_q),
        .in_dir(redist7_sync_together118_aunroll_x_in_c0_eni19_2_tpl_1_q),
        .in_feedback_in_34(i_llvm_fpga_push_i1_forked3148_push34_stencil_2d25_out_feedback_out_34),
        .in_feedback_valid_in_34(i_llvm_fpga_push_i1_forked3148_push34_stencil_2d25_out_feedback_valid_out_34),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i1_forked3148_pop34_stencil_2d2_out_data_out),
        .out_feedback_stall_out_34(i_llvm_fpga_pop_i1_forked3148_pop34_stencil_2d2_out_feedback_stall_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_forked_and_stencil_2d3(LOGICAL,61)@2 + 1
    assign i_forked_and_stencil_2d3_qi = redist7_sync_together118_aunroll_x_in_c0_eni19_2_tpl_1_q & i_llvm_fpga_pop_i1_forked3148_pop34_stencil_2d2_out_data_out;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_forked_and_stencil_2d3_delay ( .xin(i_forked_and_stencil_2d3_qi), .xout(i_forked_and_stencil_2d3_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist41_i_forked_and_stencil_2d3_q_15(DELAY,252)
    dspba_delay_ver #( .width(1), .depth(14), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist41_i_forked_and_stencil_2d3_q_15 ( .xin(i_forked_and_stencil_2d3_q), .xout(redist41_i_forked_and_stencil_2d3_q_15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i32_081(CONSTANT,42)
    assign c_i32_081_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_temp_321_pop28_stencil_2d17(BLACKBOX,87)@17
    // out out_feedback_stall_out_28@20000000
    stencil_2d_i_llvm_fpga_pop_i32_temp_321_pop28_0 thei_llvm_fpga_pop_i32_temp_321_pop28_stencil_2d17 (
        .in_data_in(c_i32_081_q),
        .in_dir(redist41_i_forked_and_stencil_2d3_q_15_q),
        .in_feedback_in_28(i_llvm_fpga_push_i32_temp_321_push28_stencil_2d30_out_feedback_out_28),
        .in_feedback_valid_in_28(i_llvm_fpga_push_i32_temp_321_push28_stencil_2d30_out_feedback_valid_out_28),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i32_temp_321_pop28_stencil_2d17_out_data_out),
        .out_feedback_stall_out_28(i_llvm_fpga_pop_i32_temp_321_pop28_stencil_2d17_out_feedback_stall_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg4(REG,153)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist26_sync_together118_aunroll_x_in_i_valid_2_q);
        end
    end

    // c_stencil_2d_filter_pmem(CONSTANT,46)
    assign c_stencil_2d_filter_pmem_q = $unsigned(64'b0100000001000010000000000000000000000000000000000000000000000000);

    // i_arrayidx1_stencil_2d0_upper_bits_x_merged_bit_select(BITSELECT,207)@4
    assign i_arrayidx1_stencil_2d0_upper_bits_x_merged_bit_select_b = c_stencil_2d_filter_pmem_q[63:6];
    assign i_arrayidx1_stencil_2d0_upper_bits_x_merged_bit_select_c = c_stencil_2d_filter_pmem_q[5:0];

    // valid_fanout_reg3(REG,152)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg9(REG,158)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_mul16_add1149_push35_stencil_2d24(BLACKBOX,98)@2
    // out out_feedback_out_35@20000000
    // out out_feedback_valid_out_35@20000000
    stencil_2d_i_llvm_fpga_push_i32_mul16_add1149_push35_0 thei_llvm_fpga_push_i32_mul16_add1149_push35_stencil_2d24 (
        .in_data_in(i_llvm_fpga_pop_i32_mul16_add1149_pop35_stencil_2d6_out_data_out),
        .in_exitcond(redist3_i_exitcond_stencil_2d21_cmp_nsign_q_1_q),
        .in_feedback_stall_in_35(i_llvm_fpga_pop_i32_mul16_add1149_pop35_stencil_2d6_out_feedback_stall_out_35),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_35(i_llvm_fpga_push_i32_mul16_add1149_push35_stencil_2d24_out_feedback_out_35),
        .out_feedback_valid_out_35(i_llvm_fpga_push_i32_mul16_add1149_push35_stencil_2d24_out_feedback_valid_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_sync_together118_aunroll_x_in_c0_eni19_3_tpl_1(DELAY,219)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_sync_together118_aunroll_x_in_c0_eni19_3_tpl_1_q <= $unsigned(in_c0_eni19_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_mul16_add1149_pop35_stencil_2d6(BLACKBOX,84)@2
    // out out_feedback_stall_out_35@20000000
    stencil_2d_i_llvm_fpga_pop_i32_mul16_add1149_pop35_0 thei_llvm_fpga_pop_i32_mul16_add1149_pop35_stencil_2d6 (
        .in_data_in(redist8_sync_together118_aunroll_x_in_c0_eni19_3_tpl_1_q),
        .in_dir(redist7_sync_together118_aunroll_x_in_c0_eni19_2_tpl_1_q),
        .in_feedback_in_35(i_llvm_fpga_push_i32_mul16_add1149_push35_stencil_2d24_out_feedback_out_35),
        .in_feedback_valid_in_35(i_llvm_fpga_push_i32_mul16_add1149_push35_stencil_2d24_out_feedback_valid_out_35),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul16_add1149_pop35_stencil_2d6_out_data_out),
        .out_feedback_stall_out_35(i_llvm_fpga_pop_i32_mul16_add1149_pop35_stencil_2d6_out_feedback_stall_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist32_i_llvm_fpga_pop_i32_mul16_add1149_pop35_stencil_2d6_out_data_out_1(DELAY,243)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist32_i_llvm_fpga_pop_i32_mul16_add1149_pop35_stencil_2d6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_mul16_add1149_pop35_stencil_2d6_out_data_out);
        end
    end

    // valid_fanout_reg2(REG,151)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg11(REG,160)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist25_sync_together118_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_i32_182(CONSTANT,43)
    assign c_i32_182_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_stencil_2d19(ADD,71)@3
    assign i_inc_stencil_2d19_a = {1'b0, redist33_i_llvm_fpga_pop_i32_k2_022_pop27_stencil_2d5_out_data_out_1_q};
    assign i_inc_stencil_2d19_b = {1'b0, c_i32_182_q};
    assign i_inc_stencil_2d19_o = $unsigned(i_inc_stencil_2d19_a) + $unsigned(i_inc_stencil_2d19_b);
    assign i_inc_stencil_2d19_q = i_inc_stencil_2d19_o[32:0];

    // bgTrunc_i_inc_stencil_2d19_sel_x(BITSELECT,115)@3
    assign bgTrunc_i_inc_stencil_2d19_sel_x_b = i_inc_stencil_2d19_q[31:0];

    // i_llvm_fpga_push_i32_k2_022_push27_stencil_2d26(BLACKBOX,97)@3
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    stencil_2d_i_llvm_fpga_push_i32_k2_022_push27_0 thei_llvm_fpga_push_i32_k2_022_push27_stencil_2d26 (
        .in_data_in(bgTrunc_i_inc_stencil_2d19_sel_x_b),
        .in_exitcond(redist4_i_exitcond_stencil_2d21_cmp_nsign_q_2_q),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_i32_k2_022_pop27_stencil_2d5_out_feedback_stall_out_27),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_i32_k2_022_push27_stencil_2d26_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_i32_k2_022_push27_stencil_2d26_out_feedback_valid_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_k2_022_pop27_stencil_2d5(BLACKBOX,83)@2
    // out out_feedback_stall_out_27@20000000
    stencil_2d_i_llvm_fpga_pop_i32_k2_022_pop27_0 thei_llvm_fpga_pop_i32_k2_022_pop27_stencil_2d5 (
        .in_data_in(c_i32_081_q),
        .in_dir(redist7_sync_together118_aunroll_x_in_c0_eni19_2_tpl_1_q),
        .in_feedback_in_27(i_llvm_fpga_push_i32_k2_022_push27_stencil_2d26_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_i32_k2_022_push27_stencil_2d26_out_feedback_valid_out_27),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_k2_022_pop27_stencil_2d5_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_i32_k2_022_pop27_stencil_2d5_out_feedback_stall_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist33_i_llvm_fpga_pop_i32_k2_022_pop27_stencil_2d5_out_data_out_1(DELAY,244)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist33_i_llvm_fpga_pop_i32_k2_022_pop27_stencil_2d5_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_k2_022_pop27_stencil_2d5_out_data_out);
        end
    end

    // i_add_stencil_2d7(ADD,52)@3
    assign i_add_stencil_2d7_a = {1'b0, redist33_i_llvm_fpga_pop_i32_k2_022_pop27_stencil_2d5_out_data_out_1_q};
    assign i_add_stencil_2d7_b = {1'b0, redist32_i_llvm_fpga_pop_i32_mul16_add1149_pop35_stencil_2d6_out_data_out_1_q};
    assign i_add_stencil_2d7_o = $unsigned(i_add_stencil_2d7_a) + $unsigned(i_add_stencil_2d7_b);
    assign i_add_stencil_2d7_q = i_add_stencil_2d7_o[32:0];

    // bgTrunc_i_add_stencil_2d7_sel_x(BITSELECT,113)@3
    assign bgTrunc_i_add_stencil_2d7_sel_x_b = i_add_stencil_2d7_q[31:0];

    // i_idxprom_stencil_2d8_sel_x(BITSELECT,146)@3
    assign i_idxprom_stencil_2d8_sel_x_b = {32'b00000000000000000000000000000000, bgTrunc_i_add_stencil_2d7_sel_x_b[31:0]};

    // i_idxprom_stencil_2d8_vt_select_31(BITSELECT,70)@3
    assign i_idxprom_stencil_2d8_vt_select_31_b = i_idxprom_stencil_2d8_sel_x_b[31:0];

    // i_idxprom_stencil_2d8_vt_join(BITJOIN,69)@3
    assign i_idxprom_stencil_2d8_vt_join_q = {c_i32_081_q, i_idxprom_stencil_2d8_vt_select_31_b};

    // i_arrayidx1_stencil_2d0_dupName_0_trunc_sel_x(BITSELECT,131)@3
    assign i_arrayidx1_stencil_2d0_dupName_0_trunc_sel_x_b = i_idxprom_stencil_2d8_vt_join_q[5:0];

    // i_arrayidx1_stencil_2d0_narrow_x(BITSELECT,124)@3
    assign i_arrayidx1_stencil_2d0_narrow_x_b = i_arrayidx1_stencil_2d0_dupName_0_trunc_sel_x_b[3:0];

    // redist29_i_arrayidx1_stencil_2d0_narrow_x_b_1(DELAY,240)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist29_i_arrayidx1_stencil_2d0_narrow_x_b_1_q <= $unsigned(i_arrayidx1_stencil_2d0_narrow_x_b);
        end
    end

    // i_arrayidx1_stencil_2d0_shift_join_x(BITJOIN,125)@4
    assign i_arrayidx1_stencil_2d0_shift_join_x_q = {redist29_i_arrayidx1_stencil_2d0_narrow_x_b_1_q, i_arrayidx1_stencil_2d9_vt_const_1_q};

    // i_arrayidx1_stencil_2d0_add_x(ADD,121)@4
    assign i_arrayidx1_stencil_2d0_add_x_a = {1'b0, i_arrayidx1_stencil_2d0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx1_stencil_2d0_add_x_b = {1'b0, i_arrayidx1_stencil_2d0_shift_join_x_q};
    assign i_arrayidx1_stencil_2d0_add_x_o = $unsigned(i_arrayidx1_stencil_2d0_add_x_a) + $unsigned(i_arrayidx1_stencil_2d0_add_x_b);
    assign i_arrayidx1_stencil_2d0_add_x_q = i_arrayidx1_stencil_2d0_add_x_o[6:0];

    // i_arrayidx1_stencil_2d0_dupName_2_trunc_sel_x(BITSELECT,132)@4
    assign i_arrayidx1_stencil_2d0_dupName_2_trunc_sel_x_b = i_arrayidx1_stencil_2d0_add_x_q[5:0];

    // i_arrayidx1_stencil_2d0_append_upper_bits_x(BITJOIN,122)@4
    assign i_arrayidx1_stencil_2d0_append_upper_bits_x_q = {i_arrayidx1_stencil_2d0_upper_bits_x_merged_bit_select_b, i_arrayidx1_stencil_2d0_dupName_2_trunc_sel_x_b};

    // i_arrayidx1_stencil_2d9_vt_select_63(BITSELECT,55)@4
    assign i_arrayidx1_stencil_2d9_vt_select_63_b = i_arrayidx1_stencil_2d0_append_upper_bits_x_q[63:2];

    // i_arrayidx1_stencil_2d9_vt_const_1(CONSTANT,53)
    assign i_arrayidx1_stencil_2d9_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx1_stencil_2d9_vt_join(BITJOIN,54)@4
    assign i_arrayidx1_stencil_2d9_vt_join_q = {i_arrayidx1_stencil_2d9_vt_select_63_b, i_arrayidx1_stencil_2d9_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d10(BLACKBOX,73)@4
    // in in_i_stall@20000000
    // out out_o_readdata@9
    // out out_o_stall@8
    // out out_o_valid@9
    // out out_unnamed_stencil_2d7_stencil_2d_avm_address@20000000
    // out out_unnamed_stencil_2d7_stencil_2d_avm_burstcount@20000000
    // out out_unnamed_stencil_2d7_stencil_2d_avm_byteenable@20000000
    // out out_unnamed_stencil_2d7_stencil_2d_avm_enable@20000000
    // out out_unnamed_stencil_2d7_stencil_2d_avm_read@20000000
    // out out_unnamed_stencil_2d7_stencil_2d_avm_write@20000000
    // out out_unnamed_stencil_2d7_stencil_2d_avm_writedata@20000000
    stencil_2d_i_llvm_fpga_mem_unnamed_7_stencil_2d0 thei_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d10 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx1_stencil_2d9_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg4_q),
        .in_unnamed_stencil_2d7_stencil_2d_avm_readdata(in_unnamed_stencil_2d7_stencil_2d_avm_readdata),
        .in_unnamed_stencil_2d7_stencil_2d_avm_readdatavalid(in_unnamed_stencil_2d7_stencil_2d_avm_readdatavalid),
        .in_unnamed_stencil_2d7_stencil_2d_avm_waitrequest(in_unnamed_stencil_2d7_stencil_2d_avm_waitrequest),
        .in_unnamed_stencil_2d7_stencil_2d_avm_writeack(in_unnamed_stencil_2d7_stencil_2d_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d10_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_stencil_2d7_stencil_2d_avm_address(i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d10_out_unnamed_stencil_2d7_stencil_2d_avm_address),
        .out_unnamed_stencil_2d7_stencil_2d_avm_burstcount(i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d10_out_unnamed_stencil_2d7_stencil_2d_avm_burstcount),
        .out_unnamed_stencil_2d7_stencil_2d_avm_byteenable(i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d10_out_unnamed_stencil_2d7_stencil_2d_avm_byteenable),
        .out_unnamed_stencil_2d7_stencil_2d_avm_enable(i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d10_out_unnamed_stencil_2d7_stencil_2d_avm_enable),
        .out_unnamed_stencil_2d7_stencil_2d_avm_read(i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d10_out_unnamed_stencil_2d7_stencil_2d_avm_read),
        .out_unnamed_stencil_2d7_stencil_2d_avm_write(i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d10_out_unnamed_stencil_2d7_stencil_2d_avm_write),
        .out_unnamed_stencil_2d7_stencil_2d_avm_writedata(i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d10_out_unnamed_stencil_2d7_stencil_2d_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul23_stencil_2d16_bs3_merged_bit_select(BITSELECT,209)@9
    assign i_mul23_stencil_2d16_bs3_merged_bit_select_b = i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d10_out_o_readdata[31:18];
    assign i_mul23_stencil_2d16_bs3_merged_bit_select_c = i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d10_out_o_readdata[17:0];

    // valid_fanout_reg6(REG,155)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist26_sync_together118_aunroll_x_in_i_valid_2_q);
        end
    end

    // c_stencil_2d_orig_pmem(CONSTANT,47)
    assign c_stencil_2d_orig_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx222_stencil_2d0_upper_bits_x_merged_bit_select(BITSELECT,208)@4
    assign i_arrayidx222_stencil_2d0_upper_bits_x_merged_bit_select_b = c_stencil_2d_orig_pmem_q[63:12];
    assign i_arrayidx222_stencil_2d0_upper_bits_x_merged_bit_select_c = c_stencil_2d_orig_pmem_q[11:0];

    // valid_fanout_reg5(REG,154)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg8(REG,157)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist25_sync_together118_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i32_add1950_push36_stencil_2d23(BLACKBOX,95)@3
    // out out_feedback_out_36@20000000
    // out out_feedback_valid_out_36@20000000
    stencil_2d_i_llvm_fpga_push_i32_add1950_push36_0 thei_llvm_fpga_push_i32_add1950_push36_stencil_2d23 (
        .in_data_in(redist35_i_llvm_fpga_pop_i32_add1950_pop36_stencil_2d11_out_data_out_1_q),
        .in_exitcond(redist4_i_exitcond_stencil_2d21_cmp_nsign_q_2_q),
        .in_feedback_stall_in_36(i_llvm_fpga_pop_i32_add1950_pop36_stencil_2d11_out_feedback_stall_out_36),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_36(i_llvm_fpga_push_i32_add1950_push36_stencil_2d23_out_feedback_out_36),
        .out_feedback_valid_out_36(i_llvm_fpga_push_i32_add1950_push36_stencil_2d23_out_feedback_valid_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_sync_together118_aunroll_x_in_c0_eni19_4_tpl_1(DELAY,220)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_sync_together118_aunroll_x_in_c0_eni19_4_tpl_1_q <= $unsigned(in_c0_eni19_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_add1950_pop36_stencil_2d11(BLACKBOX,81)@2
    // out out_feedback_stall_out_36@20000000
    stencil_2d_i_llvm_fpga_pop_i32_add1950_pop36_0 thei_llvm_fpga_pop_i32_add1950_pop36_stencil_2d11 (
        .in_data_in(redist9_sync_together118_aunroll_x_in_c0_eni19_4_tpl_1_q),
        .in_dir(redist7_sync_together118_aunroll_x_in_c0_eni19_2_tpl_1_q),
        .in_feedback_in_36(i_llvm_fpga_push_i32_add1950_push36_stencil_2d23_out_feedback_out_36),
        .in_feedback_valid_in_36(i_llvm_fpga_push_i32_add1950_push36_stencil_2d23_out_feedback_valid_out_36),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i32_add1950_pop36_stencil_2d11_out_data_out),
        .out_feedback_stall_out_36(i_llvm_fpga_pop_i32_add1950_pop36_stencil_2d11_out_feedback_stall_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist35_i_llvm_fpga_pop_i32_add1950_pop36_stencil_2d11_out_data_out_1(DELAY,246)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist35_i_llvm_fpga_pop_i32_add1950_pop36_stencil_2d11_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_add1950_pop36_stencil_2d11_out_data_out);
        end
    end

    // i_add20_stencil_2d12(ADD,50)@3
    assign i_add20_stencil_2d12_a = {1'b0, redist35_i_llvm_fpga_pop_i32_add1950_pop36_stencil_2d11_out_data_out_1_q};
    assign i_add20_stencil_2d12_b = {1'b0, redist33_i_llvm_fpga_pop_i32_k2_022_pop27_stencil_2d5_out_data_out_1_q};
    assign i_add20_stencil_2d12_o = $unsigned(i_add20_stencil_2d12_a) + $unsigned(i_add20_stencil_2d12_b);
    assign i_add20_stencil_2d12_q = i_add20_stencil_2d12_o[32:0];

    // bgTrunc_i_add20_stencil_2d12_sel_x(BITSELECT,111)@3
    assign bgTrunc_i_add20_stencil_2d12_sel_x_b = i_add20_stencil_2d12_q[31:0];

    // i_idxprom21_stencil_2d13_sel_x(BITSELECT,145)@3
    assign i_idxprom21_stencil_2d13_sel_x_b = {32'b00000000000000000000000000000000, bgTrunc_i_add20_stencil_2d12_sel_x_b[31:0]};

    // i_idxprom21_stencil_2d13_vt_select_31(BITSELECT,66)@3
    assign i_idxprom21_stencil_2d13_vt_select_31_b = i_idxprom21_stencil_2d13_sel_x_b[31:0];

    // i_idxprom21_stencil_2d13_vt_join(BITJOIN,65)@3
    assign i_idxprom21_stencil_2d13_vt_join_q = {c_i32_081_q, i_idxprom21_stencil_2d13_vt_select_31_b};

    // i_arrayidx222_stencil_2d0_dupName_0_trunc_sel_x(BITSELECT,143)@3
    assign i_arrayidx222_stencil_2d0_dupName_0_trunc_sel_x_b = i_idxprom21_stencil_2d13_vt_join_q[11:0];

    // i_arrayidx222_stencil_2d0_narrow_x(BITSELECT,136)@3
    assign i_arrayidx222_stencil_2d0_narrow_x_b = i_arrayidx222_stencil_2d0_dupName_0_trunc_sel_x_b[9:0];

    // redist28_i_arrayidx222_stencil_2d0_narrow_x_b_1(DELAY,239)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist28_i_arrayidx222_stencil_2d0_narrow_x_b_1_q <= $unsigned(i_arrayidx222_stencil_2d0_narrow_x_b);
        end
    end

    // i_arrayidx222_stencil_2d0_shift_join_x(BITJOIN,137)@4
    assign i_arrayidx222_stencil_2d0_shift_join_x_q = {redist28_i_arrayidx222_stencil_2d0_narrow_x_b_1_q, i_arrayidx1_stencil_2d9_vt_const_1_q};

    // i_arrayidx222_stencil_2d0_add_x(ADD,133)@4
    assign i_arrayidx222_stencil_2d0_add_x_a = {1'b0, i_arrayidx222_stencil_2d0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx222_stencil_2d0_add_x_b = {1'b0, i_arrayidx222_stencil_2d0_shift_join_x_q};
    assign i_arrayidx222_stencil_2d0_add_x_o = $unsigned(i_arrayidx222_stencil_2d0_add_x_a) + $unsigned(i_arrayidx222_stencil_2d0_add_x_b);
    assign i_arrayidx222_stencil_2d0_add_x_q = i_arrayidx222_stencil_2d0_add_x_o[12:0];

    // i_arrayidx222_stencil_2d0_dupName_2_trunc_sel_x(BITSELECT,144)@4
    assign i_arrayidx222_stencil_2d0_dupName_2_trunc_sel_x_b = i_arrayidx222_stencil_2d0_add_x_q[11:0];

    // i_arrayidx222_stencil_2d0_append_upper_bits_x(BITJOIN,134)@4
    assign i_arrayidx222_stencil_2d0_append_upper_bits_x_q = {i_arrayidx222_stencil_2d0_upper_bits_x_merged_bit_select_b, i_arrayidx222_stencil_2d0_dupName_2_trunc_sel_x_b};

    // i_arrayidx222_stencil_2d14_vt_select_63(BITSELECT,58)@4
    assign i_arrayidx222_stencil_2d14_vt_select_63_b = i_arrayidx222_stencil_2d0_append_upper_bits_x_q[63:2];

    // i_arrayidx222_stencil_2d14_vt_join(BITJOIN,57)@4
    assign i_arrayidx222_stencil_2d14_vt_join_q = {i_arrayidx222_stencil_2d14_vt_select_63_b, i_arrayidx1_stencil_2d9_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d15(BLACKBOX,74)@4
    // in in_i_stall@20000000
    // out out_o_readdata@9
    // out out_o_stall@8
    // out out_o_valid@9
    // out out_unnamed_stencil_2d8_stencil_2d_avm_address@20000000
    // out out_unnamed_stencil_2d8_stencil_2d_avm_burstcount@20000000
    // out out_unnamed_stencil_2d8_stencil_2d_avm_byteenable@20000000
    // out out_unnamed_stencil_2d8_stencil_2d_avm_enable@20000000
    // out out_unnamed_stencil_2d8_stencil_2d_avm_read@20000000
    // out out_unnamed_stencil_2d8_stencil_2d_avm_write@20000000
    // out out_unnamed_stencil_2d8_stencil_2d_avm_writedata@20000000
    stencil_2d_i_llvm_fpga_mem_unnamed_8_stencil_2d0 thei_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d15 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx222_stencil_2d14_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg6_q),
        .in_unnamed_stencil_2d8_stencil_2d_avm_readdata(in_unnamed_stencil_2d8_stencil_2d_avm_readdata),
        .in_unnamed_stencil_2d8_stencil_2d_avm_readdatavalid(in_unnamed_stencil_2d8_stencil_2d_avm_readdatavalid),
        .in_unnamed_stencil_2d8_stencil_2d_avm_waitrequest(in_unnamed_stencil_2d8_stencil_2d_avm_waitrequest),
        .in_unnamed_stencil_2d8_stencil_2d_avm_writeack(in_unnamed_stencil_2d8_stencil_2d_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d15_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_stencil_2d8_stencil_2d_avm_address(i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d15_out_unnamed_stencil_2d8_stencil_2d_avm_address),
        .out_unnamed_stencil_2d8_stencil_2d_avm_burstcount(i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d15_out_unnamed_stencil_2d8_stencil_2d_avm_burstcount),
        .out_unnamed_stencil_2d8_stencil_2d_avm_byteenable(i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d15_out_unnamed_stencil_2d8_stencil_2d_avm_byteenable),
        .out_unnamed_stencil_2d8_stencil_2d_avm_enable(i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d15_out_unnamed_stencil_2d8_stencil_2d_avm_enable),
        .out_unnamed_stencil_2d8_stencil_2d_avm_read(i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d15_out_unnamed_stencil_2d8_stencil_2d_avm_read),
        .out_unnamed_stencil_2d8_stencil_2d_avm_write(i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d15_out_unnamed_stencil_2d8_stencil_2d_avm_write),
        .out_unnamed_stencil_2d8_stencil_2d_avm_writedata(i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d15_out_unnamed_stencil_2d8_stencil_2d_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul23_stencil_2d16_bs1_merged_bit_select(BITSELECT,210)@9
    assign i_mul23_stencil_2d16_bs1_merged_bit_select_b = i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d15_out_o_readdata[31:18];
    assign i_mul23_stencil_2d16_bs1_merged_bit_select_c = i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d15_out_o_readdata[17:0];

    // i_mul23_stencil_2d16_ma5_cma(CHAINMULTADD,206)@9 + 5
    // out q@15
    assign i_mul23_stencil_2d16_ma5_cma_reset = ~ (resetn);
    assign i_mul23_stencil_2d16_ma5_cma_ena0 = 1'b1;
    assign i_mul23_stencil_2d16_ma5_cma_ena1 = i_mul23_stencil_2d16_ma5_cma_ena0;
    assign i_mul23_stencil_2d16_ma5_cma_ena2 = i_mul23_stencil_2d16_ma5_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul23_stencil_2d16_ma5_cma_ah[0] <= i_mul23_stencil_2d16_bs1_merged_bit_select_b;
            i_mul23_stencil_2d16_ma5_cma_ah[1] <= i_mul23_stencil_2d16_bs3_merged_bit_select_b;
            i_mul23_stencil_2d16_ma5_cma_ch[0] <= i_mul23_stencil_2d16_bs3_merged_bit_select_c;
            i_mul23_stencil_2d16_ma5_cma_ch[1] <= i_mul23_stencil_2d16_bs1_merged_bit_select_c;
        end
    end

    assign i_mul23_stencil_2d16_ma5_cma_a0 = i_mul23_stencil_2d16_ma5_cma_ah[0];
    assign i_mul23_stencil_2d16_ma5_cma_c0 = i_mul23_stencil_2d16_ma5_cma_ch[0];
    assign i_mul23_stencil_2d16_ma5_cma_a1 = i_mul23_stencil_2d16_ma5_cma_ah[1];
    assign i_mul23_stencil_2d16_ma5_cma_c1 = i_mul23_stencil_2d16_ma5_cma_ch[1];
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
    ) i_mul23_stencil_2d16_ma5_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul23_stencil_2d16_ma5_cma_ena2, i_mul23_stencil_2d16_ma5_cma_ena1, i_mul23_stencil_2d16_ma5_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul23_stencil_2d16_ma5_cma_a1),
        .by(i_mul23_stencil_2d16_ma5_cma_a0),
        .ax(i_mul23_stencil_2d16_ma5_cma_c1),
        .bx(i_mul23_stencil_2d16_ma5_cma_c0),
        .resulta(i_mul23_stencil_2d16_ma5_cma_s0),
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
    i_mul23_stencil_2d16_ma5_cma_delay ( .xin(i_mul23_stencil_2d16_ma5_cma_s0), .xout(i_mul23_stencil_2d16_ma5_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul23_stencil_2d16_ma5_cma_q = $unsigned(i_mul23_stencil_2d16_ma5_cma_qq[32:0]);

    // redist0_i_mul23_stencil_2d16_ma5_cma_q_1(DELAY,211)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_mul23_stencil_2d16_ma5_cma_q_1_q <= $unsigned(i_mul23_stencil_2d16_ma5_cma_q);
        end
    end

    // i_mul23_stencil_2d16_sums_align_1(BITSHIFT,201)@16
    assign i_mul23_stencil_2d16_sums_align_1_qint = { redist0_i_mul23_stencil_2d16_ma5_cma_q_1_q, 18'b000000000000000000 };
    assign i_mul23_stencil_2d16_sums_align_1_q = i_mul23_stencil_2d16_sums_align_1_qint[50:0];

    // i_mul23_stencil_2d16_bjB4(BITJOIN,191)@9
    assign i_mul23_stencil_2d16_bjB4_q = {GND_q, i_mul23_stencil_2d16_bs3_merged_bit_select_b};

    // i_mul23_stencil_2d16_bjA2(BITJOIN,189)@9
    assign i_mul23_stencil_2d16_bjA2_q = {GND_q, i_mul23_stencil_2d16_bs1_merged_bit_select_b};

    // i_mul23_stencil_2d16_im0_cma(CHAINMULTADD,204)@9 + 5
    // out q@15
    assign i_mul23_stencil_2d16_im0_cma_reset = ~ (resetn);
    assign i_mul23_stencil_2d16_im0_cma_ena0 = 1'b1;
    assign i_mul23_stencil_2d16_im0_cma_ena1 = i_mul23_stencil_2d16_im0_cma_ena0;
    assign i_mul23_stencil_2d16_im0_cma_ena2 = i_mul23_stencil_2d16_im0_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul23_stencil_2d16_im0_cma_ah[0] <= i_mul23_stencil_2d16_bjA2_q;
            i_mul23_stencil_2d16_im0_cma_ch[0] <= i_mul23_stencil_2d16_bjB4_q;
        end
    end

    assign i_mul23_stencil_2d16_im0_cma_a0 = $unsigned(i_mul23_stencil_2d16_im0_cma_ah[0]);
    assign i_mul23_stencil_2d16_im0_cma_c0 = $unsigned(i_mul23_stencil_2d16_im0_cma_ch[0]);
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
    ) i_mul23_stencil_2d16_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul23_stencil_2d16_im0_cma_ena2, i_mul23_stencil_2d16_im0_cma_ena1, i_mul23_stencil_2d16_im0_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul23_stencil_2d16_im0_cma_a0),
        .ax(i_mul23_stencil_2d16_im0_cma_c0),
        .resulta(i_mul23_stencil_2d16_im0_cma_s0),
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
    i_mul23_stencil_2d16_im0_cma_delay ( .xin(i_mul23_stencil_2d16_im0_cma_s0), .xout(i_mul23_stencil_2d16_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul23_stencil_2d16_im0_cma_q = $unsigned(i_mul23_stencil_2d16_im0_cma_qq[29:0]);

    // redist2_i_mul23_stencil_2d16_im0_cma_q_1(DELAY,213)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_i_mul23_stencil_2d16_im0_cma_q_1_q <= $unsigned(i_mul23_stencil_2d16_im0_cma_q);
        end
    end

    // i_mul23_stencil_2d16_im10_cma(CHAINMULTADD,205)@9 + 5
    // out q@15
    assign i_mul23_stencil_2d16_im10_cma_reset = ~ (resetn);
    assign i_mul23_stencil_2d16_im10_cma_ena0 = 1'b1;
    assign i_mul23_stencil_2d16_im10_cma_ena1 = i_mul23_stencil_2d16_im10_cma_ena0;
    assign i_mul23_stencil_2d16_im10_cma_ena2 = i_mul23_stencil_2d16_im10_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul23_stencil_2d16_im10_cma_ah[0] <= i_mul23_stencil_2d16_bs1_merged_bit_select_c;
            i_mul23_stencil_2d16_im10_cma_ch[0] <= i_mul23_stencil_2d16_bs3_merged_bit_select_c;
        end
    end

    assign i_mul23_stencil_2d16_im10_cma_a0 = i_mul23_stencil_2d16_im10_cma_ah[0];
    assign i_mul23_stencil_2d16_im10_cma_c0 = i_mul23_stencil_2d16_im10_cma_ch[0];
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
    ) i_mul23_stencil_2d16_im10_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul23_stencil_2d16_im10_cma_ena2, i_mul23_stencil_2d16_im10_cma_ena1, i_mul23_stencil_2d16_im10_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul23_stencil_2d16_im10_cma_a0),
        .ax(i_mul23_stencil_2d16_im10_cma_c0),
        .resulta(i_mul23_stencil_2d16_im10_cma_s0),
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
    i_mul23_stencil_2d16_im10_cma_delay ( .xin(i_mul23_stencil_2d16_im10_cma_s0), .xout(i_mul23_stencil_2d16_im10_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul23_stencil_2d16_im10_cma_q = $unsigned(i_mul23_stencil_2d16_im10_cma_qq[35:0]);

    // redist1_i_mul23_stencil_2d16_im10_cma_q_1(DELAY,212)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_mul23_stencil_2d16_im10_cma_q_1_q <= $unsigned(i_mul23_stencil_2d16_im10_cma_q);
        end
    end

    // i_mul23_stencil_2d16_sums_join_0(BITJOIN,200)@16
    assign i_mul23_stencil_2d16_sums_join_0_q = {redist2_i_mul23_stencil_2d16_im0_cma_q_1_q, redist1_i_mul23_stencil_2d16_im10_cma_q_1_q};

    // i_mul23_stencil_2d16_sums_result_add_0_0(ADD,203)@16
    assign i_mul23_stencil_2d16_sums_result_add_0_0_a = {1'b0, i_mul23_stencil_2d16_sums_join_0_q};
    assign i_mul23_stencil_2d16_sums_result_add_0_0_b = {16'b0000000000000000, i_mul23_stencil_2d16_sums_align_1_q};
    assign i_mul23_stencil_2d16_sums_result_add_0_0_o = $unsigned(i_mul23_stencil_2d16_sums_result_add_0_0_a) + $unsigned(i_mul23_stencil_2d16_sums_result_add_0_0_b);
    assign i_mul23_stencil_2d16_sums_result_add_0_0_q = i_mul23_stencil_2d16_sums_result_add_0_0_o[66:0];

    // bgTrunc_i_mul23_stencil_2d16_sel_x(BITSELECT,116)@16
    assign bgTrunc_i_mul23_stencil_2d16_sel_x_in = i_mul23_stencil_2d16_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul23_stencil_2d16_sel_x_b = bgTrunc_i_mul23_stencil_2d16_sel_x_in[31:0];

    // redist30_bgTrunc_i_mul23_stencil_2d16_sel_x_b_1(DELAY,241)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist30_bgTrunc_i_mul23_stencil_2d16_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul23_stencil_2d16_sel_x_b);
        end
    end

    // i_add24_stencil_2d18(ADD,51)@17
    assign i_add24_stencil_2d18_a = {1'b0, redist30_bgTrunc_i_mul23_stencil_2d16_sel_x_b_1_q};
    assign i_add24_stencil_2d18_b = {1'b0, i_llvm_fpga_pop_i32_temp_321_pop28_stencil_2d17_out_data_out};
    assign i_add24_stencil_2d18_o = $unsigned(i_add24_stencil_2d18_a) + $unsigned(i_add24_stencil_2d18_b);
    assign i_add24_stencil_2d18_q = i_add24_stencil_2d18_o[32:0];

    // bgTrunc_i_add24_stencil_2d18_sel_x(BITSELECT,112)@17
    assign bgTrunc_i_add24_stencil_2d18_sel_x_b = i_add24_stencil_2d18_q[31:0];

    // i_llvm_fpga_ffwd_source_i32_unnamed_stencil_2d9_stencil_2d35(BLACKBOX,72)@17
    // out out_intel_reserved_ffwd_0_0@20000000
    stencil_2d_i_llvm_fpga_ffwd_source_i32_unnamed_9_stencil_2d0 thei_llvm_fpga_ffwd_source_i32_unnamed_stencil_2d9_stencil_2d35 (
        .in_predicate_in(GND_q),
        .in_src_data_in_0_0(bgTrunc_i_add24_stencil_2d18_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_i32_unnamed_stencil_2d9_stencil_2d35_out_intel_reserved_ffwd_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,109)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_i32_unnamed_stencil_2d9_stencil_2d35_out_intel_reserved_ffwd_0_0;

    // dupName_0_ext_sig_sync_out_x(GPOUT,119)
    assign out_unnamed_stencil_2d7_stencil_2d_avm_address = i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d10_out_unnamed_stencil_2d7_stencil_2d_avm_address;
    assign out_unnamed_stencil_2d7_stencil_2d_avm_enable = i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d10_out_unnamed_stencil_2d7_stencil_2d_avm_enable;
    assign out_unnamed_stencil_2d7_stencil_2d_avm_read = i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d10_out_unnamed_stencil_2d7_stencil_2d_avm_read;
    assign out_unnamed_stencil_2d7_stencil_2d_avm_write = i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d10_out_unnamed_stencil_2d7_stencil_2d_avm_write;
    assign out_unnamed_stencil_2d7_stencil_2d_avm_writedata = i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d10_out_unnamed_stencil_2d7_stencil_2d_avm_writedata;
    assign out_unnamed_stencil_2d7_stencil_2d_avm_byteenable = i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d10_out_unnamed_stencil_2d7_stencil_2d_avm_byteenable;
    assign out_unnamed_stencil_2d7_stencil_2d_avm_burstcount = i_llvm_fpga_mem_unnamed_stencil_2d7_stencil_2d10_out_unnamed_stencil_2d7_stencil_2d_avm_burstcount;

    // dupName_1_ext_sig_sync_out_x(GPOUT,120)
    assign out_unnamed_stencil_2d8_stencil_2d_avm_address = i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d15_out_unnamed_stencil_2d8_stencil_2d_avm_address;
    assign out_unnamed_stencil_2d8_stencil_2d_avm_enable = i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d15_out_unnamed_stencil_2d8_stencil_2d_avm_enable;
    assign out_unnamed_stencil_2d8_stencil_2d_avm_read = i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d15_out_unnamed_stencil_2d8_stencil_2d_avm_read;
    assign out_unnamed_stencil_2d8_stencil_2d_avm_write = i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d15_out_unnamed_stencil_2d8_stencil_2d_avm_write;
    assign out_unnamed_stencil_2d8_stencil_2d_avm_writedata = i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d15_out_unnamed_stencil_2d8_stencil_2d_avm_writedata;
    assign out_unnamed_stencil_2d8_stencil_2d_avm_byteenable = i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d15_out_unnamed_stencil_2d8_stencil_2d_avm_byteenable;
    assign out_unnamed_stencil_2d8_stencil_2d_avm_burstcount = i_llvm_fpga_mem_unnamed_stencil_2d8_stencil_2d15_out_unnamed_stencil_2d8_stencil_2d_avm_burstcount;

    // valid_fanout_reg0(REG,149)@16 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist27_sync_together118_aunroll_x_in_i_valid_15_q);
        end
    end

    // redist24_sync_together118_aunroll_x_in_c0_eni19_19_tpl_16(DELAY,235)
    dspba_delay_ver #( .width(1), .depth(16), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist24_sync_together118_aunroll_x_in_c0_eni19_19_tpl_16 ( .xin(in_c0_eni19_19_tpl), .xout(redist24_sync_together118_aunroll_x_in_c0_eni19_19_tpl_16_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_offset(CONSTANT,257)
    assign redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_offset_q = $unsigned(4'b0101);

    // redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_rdcnt(ADD,282)
    assign redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_rdcnt_a = {1'b0, redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_wraddr_q};
    assign redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_rdcnt_b = {1'b0, redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_rdcnt_o <= $unsigned(redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_rdcnt_a) + $unsigned(redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_rdcnt_b);
        end
    end
    assign redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_rdcnt_q = redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_rdcnt_o[4:0];

    // redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_inputreg0(DELAY,277)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_inputreg0_q <= $unsigned(in_c0_eni19_18_tpl);
        end
    end

    // redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_wraddr(COUNTER,280)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_wraddr_i <= $unsigned(redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_wraddr_q = redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_wraddr_i[3:0];

    // redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_mem(DUALMEM,279)
    assign redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_mem_ia = $unsigned(redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_inputreg0_q);
    assign redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_mem_aa = redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_wraddr_q;
    assign redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_mem_ab = redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_rdcnt_q[3:0];
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
    ) redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_mem_aa),
        .data_a(redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_mem_ab),
        .q_b(redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_mem_iq),
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
    assign redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_mem_q = redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_mem_iq[31:0];

    // redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_outputreg0(DELAY,278)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_outputreg0_q <= $unsigned(redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_mem_q);
        end
    end

    // redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_rdcnt(ADD,276)
    assign redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_rdcnt_a = {1'b0, redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_wraddr_q};
    assign redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_rdcnt_b = {1'b0, redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_rdcnt_o <= $unsigned(redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_rdcnt_a) + $unsigned(redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_rdcnt_b);
        end
    end
    assign redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_rdcnt_q = redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_rdcnt_o[4:0];

    // redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_inputreg0(DELAY,271)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_inputreg0_q <= $unsigned(in_c0_eni19_17_tpl);
        end
    end

    // redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_wraddr(COUNTER,274)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_wraddr_i <= $unsigned(redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_wraddr_q = redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_wraddr_i[3:0];

    // redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_mem(DUALMEM,273)
    assign redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_mem_ia = $unsigned(redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_inputreg0_q);
    assign redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_mem_aa = redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_wraddr_q;
    assign redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_mem_ab = redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_rdcnt_q[3:0];
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
    ) redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_mem_aa),
        .data_a(redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_mem_ab),
        .q_b(redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_mem_iq),
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
    assign redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_mem_q = redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_mem_iq[31:0];

    // redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_outputreg0(DELAY,272)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_outputreg0_q <= $unsigned(redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_mem_q);
        end
    end

    // redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_rdcnt(ADD,270)
    assign redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_rdcnt_a = {1'b0, redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_wraddr_q};
    assign redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_rdcnt_b = {1'b0, redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_rdcnt_o <= $unsigned(redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_rdcnt_a) + $unsigned(redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_rdcnt_b);
        end
    end
    assign redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_rdcnt_q = redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_rdcnt_o[4:0];

    // redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_inputreg0(DELAY,265)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_inputreg0_q <= $unsigned(in_c0_eni19_16_tpl);
        end
    end

    // redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_wraddr(COUNTER,268)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_wraddr_i <= $unsigned(redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_wraddr_q = redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_wraddr_i[3:0];

    // redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_mem(DUALMEM,267)
    assign redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_mem_ia = $unsigned(redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_inputreg0_q);
    assign redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_mem_aa = redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_wraddr_q;
    assign redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_mem_ab = redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_rdcnt_q[3:0];
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
    ) redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_mem_aa),
        .data_a(redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_mem_ab),
        .q_b(redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_mem_iq),
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
    assign redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_mem_q = redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_mem_iq[31:0];

    // redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_outputreg0(DELAY,266)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_outputreg0_q <= $unsigned(redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_mem_q);
        end
    end

    // redist20_sync_together118_aunroll_x_in_c0_eni19_15_tpl_16(DELAY,231)
    dspba_delay_ver #( .width(1), .depth(16), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist20_sync_together118_aunroll_x_in_c0_eni19_15_tpl_16 ( .xin(in_c0_eni19_15_tpl), .xout(redist20_sync_together118_aunroll_x_in_c0_eni19_15_tpl_16_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist19_sync_together118_aunroll_x_in_c0_eni19_14_tpl_16(DELAY,230)
    dspba_delay_ver #( .width(1), .depth(16), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist19_sync_together118_aunroll_x_in_c0_eni19_14_tpl_16 ( .xin(in_c0_eni19_14_tpl), .xout(redist19_sync_together118_aunroll_x_in_c0_eni19_14_tpl_16_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_rdcnt(ADD,264)
    assign redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_rdcnt_a = {1'b0, redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_wraddr_q};
    assign redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_rdcnt_b = {1'b0, redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_rdcnt_o <= $unsigned(redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_rdcnt_a) + $unsigned(redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_rdcnt_b);
        end
    end
    assign redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_rdcnt_q = redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_rdcnt_o[4:0];

    // redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_inputreg0(DELAY,259)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_inputreg0_q <= $unsigned(in_c0_eni19_13_tpl);
        end
    end

    // redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_wraddr(COUNTER,262)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_wraddr_i <= $unsigned(redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_wraddr_q = redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_wraddr_i[3:0];

    // redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_mem(DUALMEM,261)
    assign redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_mem_ia = $unsigned(redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_inputreg0_q);
    assign redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_mem_aa = redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_wraddr_q;
    assign redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_mem_ab = redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_rdcnt_q[3:0];
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
    ) redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_mem_aa),
        .data_a(redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_mem_ab),
        .q_b(redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_mem_iq),
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
    assign redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_mem_q = redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_mem_iq[31:0];

    // redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_outputreg0(DELAY,260)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_outputreg0_q <= $unsigned(redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_mem_q);
        end
    end

    // redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_rdcnt(ADD,258)
    assign redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_rdcnt_a = {1'b0, redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_wraddr_q};
    assign redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_rdcnt_b = {1'b0, redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_rdcnt_o <= $unsigned(redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_rdcnt_a) + $unsigned(redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_rdcnt_b);
        end
    end
    assign redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_rdcnt_q = redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_rdcnt_o[4:0];

    // redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_inputreg0(DELAY,253)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_inputreg0_q <= $unsigned(in_c0_eni19_12_tpl);
        end
    end

    // redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_wraddr(COUNTER,256)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_wraddr_i <= $unsigned(redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_wraddr_q = redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_wraddr_i[3:0];

    // redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_mem(DUALMEM,255)
    assign redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_mem_ia = $unsigned(redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_inputreg0_q);
    assign redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_mem_aa = redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_wraddr_q;
    assign redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_mem_ab = redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_rdcnt_q[3:0];
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
    ) redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_mem_aa),
        .data_a(redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_mem_ab),
        .q_b(redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_mem_iq),
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
    assign redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_mem_q = redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_mem_iq[31:0];

    // redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_outputreg0(DELAY,254)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_outputreg0_q <= $unsigned(redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_mem_q);
        end
    end

    // valid_fanout_reg26(REG,175)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg26_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg27(REG,176)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp1352_push38_stencil_2d47(BLACKBOX,91)@2
    // out out_feedback_out_38@20000000
    // out out_feedback_valid_out_38@20000000
    stencil_2d_i_llvm_fpga_push_i1_notcmp1352_push38_0 thei_llvm_fpga_push_i1_notcmp1352_push38_stencil_2d47 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp1352_pop38_stencil_2d46_out_data_out),
        .in_exitcond(redist3_i_exitcond_stencil_2d21_cmp_nsign_q_1_q),
        .in_feedback_stall_in_38(i_llvm_fpga_pop_i1_notcmp1352_pop38_stencil_2d46_out_feedback_stall_out_38),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg27_q),
        .out_data_out(),
        .out_feedback_out_38(i_llvm_fpga_push_i1_notcmp1352_push38_stencil_2d47_out_feedback_out_38),
        .out_feedback_valid_out_38(i_llvm_fpga_push_i1_notcmp1352_push38_stencil_2d47_out_feedback_valid_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist16_sync_together118_aunroll_x_in_c0_eni19_11_tpl_1(DELAY,227)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_sync_together118_aunroll_x_in_c0_eni19_11_tpl_1_q <= $unsigned(in_c0_eni19_11_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp1352_pop38_stencil_2d46(BLACKBOX,78)@2
    // out out_feedback_stall_out_38@20000000
    stencil_2d_i_llvm_fpga_pop_i1_notcmp1352_pop38_0 thei_llvm_fpga_pop_i1_notcmp1352_pop38_stencil_2d46 (
        .in_data_in(redist16_sync_together118_aunroll_x_in_c0_eni19_11_tpl_1_q),
        .in_dir(redist7_sync_together118_aunroll_x_in_c0_eni19_2_tpl_1_q),
        .in_feedback_in_38(i_llvm_fpga_push_i1_notcmp1352_push38_stencil_2d47_out_feedback_out_38),
        .in_feedback_valid_in_38(i_llvm_fpga_push_i1_notcmp1352_push38_stencil_2d47_out_feedback_valid_out_38),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp1352_pop38_stencil_2d46_out_data_out),
        .out_feedback_stall_out_38(i_llvm_fpga_pop_i1_notcmp1352_pop38_stencil_2d46_out_feedback_stall_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist38_i_llvm_fpga_pop_i1_notcmp1352_pop38_stencil_2d46_out_data_out_15(DELAY,249)
    dspba_delay_ver #( .width(1), .depth(15), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist38_i_llvm_fpga_pop_i1_notcmp1352_pop38_stencil_2d46_out_data_out_15 ( .xin(i_llvm_fpga_pop_i1_notcmp1352_pop38_stencil_2d46_out_data_out), .xout(redist38_i_llvm_fpga_pop_i1_notcmp1352_pop38_stencil_2d46_out_data_out_15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_offset(CONSTANT,287)
    assign redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_offset_q = $unsigned(4'b0110);

    // redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_rdcnt(ADD,294)
    assign redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_rdcnt_a = {1'b0, redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_wraddr_q};
    assign redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_rdcnt_b = {1'b0, redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_rdcnt_o <= $unsigned(redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_rdcnt_a) + $unsigned(redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_rdcnt_b);
        end
    end
    assign redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_rdcnt_q = redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_rdcnt_o[4:0];

    // valid_fanout_reg24(REG,173)@1 + 1
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

    // valid_fanout_reg25(REG,174)@1 + 1
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

    // i_llvm_fpga_push_i32_c_025_pop1547_push33_stencil_2d45(BLACKBOX,96)@2
    // out out_feedback_out_33@20000000
    // out out_feedback_valid_out_33@20000000
    stencil_2d_i_llvm_fpga_push_i32_c_025_pop1547_push33_0 thei_llvm_fpga_push_i32_c_025_pop1547_push33_stencil_2d45 (
        .in_data_in(i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out),
        .in_exitcond(redist3_i_exitcond_stencil_2d21_cmp_nsign_q_1_q),
        .in_feedback_stall_in_33(i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_feedback_stall_out_33),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_data_out(),
        .out_feedback_out_33(i_llvm_fpga_push_i32_c_025_pop1547_push33_stencil_2d45_out_feedback_out_33),
        .out_feedback_valid_out_33(i_llvm_fpga_push_i32_c_025_pop1547_push33_stencil_2d45_out_feedback_valid_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist15_sync_together118_aunroll_x_in_c0_eni19_10_tpl_1(DELAY,226)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist15_sync_together118_aunroll_x_in_c0_eni19_10_tpl_1_q <= $unsigned(in_c0_eni19_10_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44(BLACKBOX,82)@2
    // out out_feedback_stall_out_33@20000000
    stencil_2d_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_0 thei_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44 (
        .in_data_in(redist15_sync_together118_aunroll_x_in_c0_eni19_10_tpl_1_q),
        .in_dir(redist7_sync_together118_aunroll_x_in_c0_eni19_2_tpl_1_q),
        .in_feedback_in_33(i_llvm_fpga_push_i32_c_025_pop1547_push33_stencil_2d45_out_feedback_out_33),
        .in_feedback_valid_in_33(i_llvm_fpga_push_i32_c_025_pop1547_push33_stencil_2d45_out_feedback_valid_out_33),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_data_out(i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out),
        .out_feedback_stall_out_33(i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_feedback_stall_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_inputreg0(DELAY,289)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_inputreg0_q <= $unsigned(i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out);
        end
    end

    // redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_wraddr(COUNTER,292)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_wraddr_i <= $unsigned(redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_wraddr_q = redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_wraddr_i[3:0];

    // redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_mem(DUALMEM,291)
    assign redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_mem_ia = $unsigned(redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_inputreg0_q);
    assign redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_mem_aa = redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_wraddr_q;
    assign redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_mem_ab = redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_rdcnt_q[3:0];
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
    ) redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_mem_aa),
        .data_a(redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_mem_ab),
        .q_b(redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_mem_iq),
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
    assign redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_mem_q = redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_mem_iq[31:0];

    // redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_outputreg0(DELAY,290)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_outputreg0_q <= $unsigned(redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_mem_q);
        end
    end

    // valid_fanout_reg22(REG,171)@1 + 1
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

    // valid_fanout_reg23(REG,172)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_notcmp1845_push32_stencil_2d43(BLACKBOX,92)@2
    // out out_feedback_out_32@20000000
    // out out_feedback_valid_out_32@20000000
    stencil_2d_i_llvm_fpga_push_i1_notcmp1845_push32_0 thei_llvm_fpga_push_i1_notcmp1845_push32_stencil_2d43 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp1845_pop32_stencil_2d42_out_data_out),
        .in_exitcond(redist3_i_exitcond_stencil_2d21_cmp_nsign_q_1_q),
        .in_feedback_stall_in_32(i_llvm_fpga_pop_i1_notcmp1845_pop32_stencil_2d42_out_feedback_stall_out_32),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(),
        .out_feedback_out_32(i_llvm_fpga_push_i1_notcmp1845_push32_stencil_2d43_out_feedback_out_32),
        .out_feedback_valid_out_32(i_llvm_fpga_push_i1_notcmp1845_push32_stencil_2d43_out_feedback_valid_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist14_sync_together118_aunroll_x_in_c0_eni19_9_tpl_1(DELAY,225)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_sync_together118_aunroll_x_in_c0_eni19_9_tpl_1_q <= $unsigned(in_c0_eni19_9_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp1845_pop32_stencil_2d42(BLACKBOX,79)@2
    // out out_feedback_stall_out_32@20000000
    stencil_2d_i_llvm_fpga_pop_i1_notcmp1845_pop32_0 thei_llvm_fpga_pop_i1_notcmp1845_pop32_stencil_2d42 (
        .in_data_in(redist14_sync_together118_aunroll_x_in_c0_eni19_9_tpl_1_q),
        .in_dir(redist7_sync_together118_aunroll_x_in_c0_eni19_2_tpl_1_q),
        .in_feedback_in_32(i_llvm_fpga_push_i1_notcmp1845_push32_stencil_2d43_out_feedback_out_32),
        .in_feedback_valid_in_32(i_llvm_fpga_push_i1_notcmp1845_push32_stencil_2d43_out_feedback_valid_out_32),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp1845_pop32_stencil_2d42_out_data_out),
        .out_feedback_stall_out_32(i_llvm_fpga_pop_i1_notcmp1845_pop32_stencil_2d42_out_feedback_stall_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist37_i_llvm_fpga_pop_i1_notcmp1845_pop32_stencil_2d42_out_data_out_15(DELAY,248)
    dspba_delay_ver #( .width(1), .depth(15), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist37_i_llvm_fpga_pop_i1_notcmp1845_pop32_stencil_2d42_out_data_out_15 ( .xin(i_llvm_fpga_pop_i1_notcmp1845_pop32_stencil_2d42_out_data_out), .xout(redist37_i_llvm_fpga_pop_i1_notcmp1845_pop32_stencil_2d42_out_data_out_15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg20(REG,169)@1 + 1
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

    // valid_fanout_reg21(REG,170)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp2343_push31_stencil_2d41(BLACKBOX,93)@2
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    stencil_2d_i_llvm_fpga_push_i1_notcmp2343_push31_0 thei_llvm_fpga_push_i1_notcmp2343_push31_stencil_2d41 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp2343_pop31_stencil_2d40_out_data_out),
        .in_exitcond(redist3_i_exitcond_stencil_2d21_cmp_nsign_q_1_q),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_i1_notcmp2343_pop31_stencil_2d40_out_feedback_stall_out_31),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_i1_notcmp2343_push31_stencil_2d41_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_i1_notcmp2343_push31_stencil_2d41_out_feedback_valid_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist13_sync_together118_aunroll_x_in_c0_eni19_8_tpl_1(DELAY,224)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_sync_together118_aunroll_x_in_c0_eni19_8_tpl_1_q <= $unsigned(in_c0_eni19_8_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp2343_pop31_stencil_2d40(BLACKBOX,80)@2
    // out out_feedback_stall_out_31@20000000
    stencil_2d_i_llvm_fpga_pop_i1_notcmp2343_pop31_0 thei_llvm_fpga_pop_i1_notcmp2343_pop31_stencil_2d40 (
        .in_data_in(redist13_sync_together118_aunroll_x_in_c0_eni19_8_tpl_1_q),
        .in_dir(redist7_sync_together118_aunroll_x_in_c0_eni19_2_tpl_1_q),
        .in_feedback_in_31(i_llvm_fpga_push_i1_notcmp2343_push31_stencil_2d41_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_i1_notcmp2343_push31_stencil_2d41_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp2343_pop31_stencil_2d40_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_i1_notcmp2343_pop31_stencil_2d40_out_feedback_stall_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist36_i_llvm_fpga_pop_i1_notcmp2343_pop31_stencil_2d40_out_data_out_15(DELAY,247)
    dspba_delay_ver #( .width(1), .depth(15), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist36_i_llvm_fpga_pop_i1_notcmp2343_pop31_stencil_2d40_out_data_out_15 ( .xin(i_llvm_fpga_pop_i1_notcmp2343_pop31_stencil_2d40_out_data_out), .xout(redist36_i_llvm_fpga_pop_i1_notcmp2343_pop31_stencil_2d40_out_data_out_15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_rdcnt(ADD,288)
    assign redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_rdcnt_a = {1'b0, redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_wraddr_q};
    assign redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_rdcnt_b = {1'b0, redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_rdcnt_o <= $unsigned(redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_rdcnt_a) + $unsigned(redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_rdcnt_b);
        end
    end
    assign redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_rdcnt_q = redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_rdcnt_o[4:0];

    // valid_fanout_reg18(REG,167)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg19(REG,168)@1 + 1
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

    // i_llvm_fpga_push_i32_mul2840_push30_stencil_2d39(BLACKBOX,99)@2
    // out out_feedback_out_30@20000000
    // out out_feedback_valid_out_30@20000000
    stencil_2d_i_llvm_fpga_push_i32_mul2840_push30_0 thei_llvm_fpga_push_i32_mul2840_push30_stencil_2d39 (
        .in_data_in(i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out),
        .in_exitcond(redist3_i_exitcond_stencil_2d21_cmp_nsign_q_1_q),
        .in_feedback_stall_in_30(i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_feedback_stall_out_30),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(),
        .out_feedback_out_30(i_llvm_fpga_push_i32_mul2840_push30_stencil_2d39_out_feedback_out_30),
        .out_feedback_valid_out_30(i_llvm_fpga_push_i32_mul2840_push30_stencil_2d39_out_feedback_valid_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist12_sync_together118_aunroll_x_in_c0_eni19_7_tpl_1(DELAY,223)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_sync_together118_aunroll_x_in_c0_eni19_7_tpl_1_q <= $unsigned(in_c0_eni19_7_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38(BLACKBOX,85)@2
    // out out_feedback_stall_out_30@20000000
    stencil_2d_i_llvm_fpga_pop_i32_mul2840_pop30_0 thei_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38 (
        .in_data_in(redist12_sync_together118_aunroll_x_in_c0_eni19_7_tpl_1_q),
        .in_dir(redist7_sync_together118_aunroll_x_in_c0_eni19_2_tpl_1_q),
        .in_feedback_in_30(i_llvm_fpga_push_i32_mul2840_push30_stencil_2d39_out_feedback_out_30),
        .in_feedback_valid_in_30(i_llvm_fpga_push_i32_mul2840_push30_stencil_2d39_out_feedback_valid_out_30),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_feedback_stall_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_inputreg0(DELAY,283)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_inputreg0_q <= $unsigned(i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out);
        end
    end

    // redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_wraddr(COUNTER,286)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_wraddr_i <= $unsigned(redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_wraddr_q = redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_wraddr_i[3:0];

    // redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_mem(DUALMEM,285)
    assign redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_mem_ia = $unsigned(redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_inputreg0_q);
    assign redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_mem_aa = redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_wraddr_q;
    assign redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_mem_ab = redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_rdcnt_q[3:0];
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
    ) redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_mem_aa),
        .data_a(redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_mem_ab),
        .q_b(redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_mem_iq),
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
    assign redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_mem_q = redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_mem_iq[31:0];

    // redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_outputreg0(DELAY,284)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_outputreg0_q <= $unsigned(redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_mem_q);
        end
    end

    // i_notcmp_stencil_2d31(LOGICAL,104)@17
    assign i_notcmp_stencil_2d31_q = redist5_i_exitcond_stencil_2d21_cmp_nsign_q_16_q ^ VCC_q;

    // sync_out_aunroll_x(GPOUT,147)@17
    assign out_c0_exi16195_0_tpl = GND_q;
    assign out_c0_exi16195_1_tpl = bgTrunc_i_add24_stencil_2d18_sel_x_b;
    assign out_c0_exi16195_2_tpl = redist5_i_exitcond_stencil_2d21_cmp_nsign_q_16_q;
    assign out_c0_exi16195_3_tpl = i_notcmp_stencil_2d31_q;
    assign out_c0_exi16195_4_tpl = redist31_i_llvm_fpga_pop_i32_mul2840_pop30_stencil_2d38_out_data_out_15_outputreg0_q;
    assign out_c0_exi16195_5_tpl = redist36_i_llvm_fpga_pop_i1_notcmp2343_pop31_stencil_2d40_out_data_out_15_q;
    assign out_c0_exi16195_6_tpl = redist37_i_llvm_fpga_pop_i1_notcmp1845_pop32_stencil_2d42_out_data_out_15_q;
    assign out_c0_exi16195_7_tpl = redist34_i_llvm_fpga_pop_i32_c_025_pop1547_pop33_stencil_2d44_out_data_out_15_outputreg0_q;
    assign out_c0_exi16195_8_tpl = redist38_i_llvm_fpga_pop_i1_notcmp1352_pop38_stencil_2d46_out_data_out_15_q;
    assign out_c0_exi16195_9_tpl = redist17_sync_together118_aunroll_x_in_c0_eni19_12_tpl_16_outputreg0_q;
    assign out_c0_exi16195_10_tpl = redist18_sync_together118_aunroll_x_in_c0_eni19_13_tpl_16_outputreg0_q;
    assign out_c0_exi16195_11_tpl = redist19_sync_together118_aunroll_x_in_c0_eni19_14_tpl_16_q;
    assign out_c0_exi16195_12_tpl = redist20_sync_together118_aunroll_x_in_c0_eni19_15_tpl_16_q;
    assign out_c0_exi16195_13_tpl = redist21_sync_together118_aunroll_x_in_c0_eni19_16_tpl_16_outputreg0_q;
    assign out_c0_exi16195_14_tpl = redist22_sync_together118_aunroll_x_in_c0_eni19_17_tpl_16_outputreg0_q;
    assign out_c0_exi16195_15_tpl = redist23_sync_together118_aunroll_x_in_c0_eni19_18_tpl_16_outputreg0_q;
    assign out_c0_exi16195_16_tpl = redist24_sync_together118_aunroll_x_in_c0_eni19_19_tpl_16_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_stencil_2d3 = GND_q;

    // i_llvm_fpga_pop_i32_r_026_pop1337_pop29_stencil_2d36(BLACKBOX,86)@2
    // out out_feedback_stall_out_29@20000000
    stencil_2d_i_llvm_fpga_pop_i32_r_026_pop1337_pop29_0 thei_llvm_fpga_pop_i32_r_026_pop1337_pop29_stencil_2d36 (
        .in_data_in(redist11_sync_together118_aunroll_x_in_c0_eni19_6_tpl_1_q),
        .in_dir(redist7_sync_together118_aunroll_x_in_c0_eni19_2_tpl_1_q),
        .in_feedback_in_29(i_llvm_fpga_push_i32_r_026_pop1337_push29_stencil_2d37_out_feedback_out_29),
        .in_feedback_valid_in_29(i_llvm_fpga_push_i32_r_026_pop1337_push29_stencil_2d37_out_feedback_valid_out_29),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(i_llvm_fpga_pop_i32_r_026_pop1337_pop29_stencil_2d36_out_data_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_i32_r_026_pop1337_pop29_stencil_2d36_out_feedback_stall_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i32_r_026_pop1337_push29_stencil_2d37(BLACKBOX,100)@2
    // out out_feedback_out_29@20000000
    // out out_feedback_valid_out_29@20000000
    stencil_2d_i_llvm_fpga_push_i32_r_026_pop1337_push29_0 thei_llvm_fpga_push_i32_r_026_pop1337_push29_stencil_2d37 (
        .in_data_in(i_llvm_fpga_pop_i32_r_026_pop1337_pop29_stencil_2d36_out_data_out),
        .in_exitcond(redist3_i_exitcond_stencil_2d21_cmp_nsign_q_1_q),
        .in_feedback_stall_in_29(i_llvm_fpga_pop_i32_r_026_pop1337_pop29_stencil_2d36_out_feedback_stall_out_29),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(),
        .out_feedback_out_29(i_llvm_fpga_push_i32_r_026_pop1337_push29_stencil_2d37_out_feedback_out_29),
        .out_feedback_valid_out_29(i_llvm_fpga_push_i32_r_026_pop1337_push29_stencil_2d37_out_feedback_valid_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg16(REG,165)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg17(REG,166)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(in_i_valid);
        end
    end

    // redist11_sync_together118_aunroll_x_in_c0_eni19_6_tpl_1(DELAY,222)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_sync_together118_aunroll_x_in_c0_eni19_6_tpl_1_q <= $unsigned(in_c0_eni19_6_tpl);
        end
    end

endmodule
