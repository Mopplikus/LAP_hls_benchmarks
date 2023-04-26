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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body_ataxs_c0_enter8418_atax0
// Created for function/kernel atax
// SystemVerilog created on Wed Apr 26 13:39:40 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_i_sfc_logic_s_c0_in_for_body_s_c0_enter8418_atax0 (
    input wire [31:0] in_unnamed_atax2_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax2_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax2_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax2_atax_avm_readdatavalid,
    output wire [31:0] out_unnamed_atax2_atax_avm_address,
    output wire [0:0] out_unnamed_atax2_atax_avm_enable,
    output wire [0:0] out_unnamed_atax2_atax_avm_read,
    output wire [0:0] out_unnamed_atax2_atax_avm_write,
    output wire [31:0] out_unnamed_atax2_atax_avm_writedata,
    output wire [3:0] out_unnamed_atax2_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax2_atax_avm_burstcount,
    input wire [0:0] in_flush,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_atax_B3_current_iter_isspec,
    output wire [0:0] out_c0_exi10_0_tpl,
    output wire [63:0] out_c0_exi10_1_tpl,
    output wire [63:0] out_c0_exi10_2_tpl,
    output wire [0:0] out_c0_exi10_3_tpl,
    output wire [31:0] out_c0_exi10_4_tpl,
    output wire [0:0] out_c0_exi10_5_tpl,
    output wire [0:0] out_c0_exi10_6_tpl,
    output wire [0:0] out_c0_exi10_7_tpl,
    output wire [0:0] out_c0_exi10_8_tpl,
    output wire [0:0] out_c0_exi10_9_tpl,
    output wire [0:0] out_c0_exi10_10_tpl,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni3_0_tpl,
    input wire [0:0] in_c0_eni3_1_tpl,
    input wire [0:0] in_c0_eni3_2_tpl,
    input wire [0:0] in_c0_eni3_3_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_atax_tmp_local_pmem_q;
    wire [31:0] c_i32_055_q;
    wire [31:0] c_i32_159_q;
    wire [5:0] c_i6_158_q;
    wire [5:0] c_i6_1856_q;
    wire [1:0] i_arrayidx1_atax11_vt_const_1_q;
    wire [63:0] i_arrayidx1_atax11_vt_join_q;
    wire [61:0] i_arrayidx1_atax11_vt_select_63_b;
    wire [0:0] i_atax_b3_current_iter_isspec_atax5_q;
    wire [0:0] i_atax_b3_next_iter_isreal_atax7_q;
    wire [6:0] i_fpga_indvars_iv_next8_atax20_a;
    wire [6:0] i_fpga_indvars_iv_next8_atax20_b;
    logic [6:0] i_fpga_indvars_iv_next8_atax20_o;
    wire [6:0] i_fpga_indvars_iv_next8_atax20_q;
    wire [63:0] i_idxprom_atax10_vt_join_q;
    wire [31:0] i_idxprom_atax10_vt_select_31_b;
    wire [32:0] i_inc36_atax22_a;
    wire [32:0] i_inc36_atax22_b;
    logic [32:0] i_inc36_atax22_o;
    wire [32:0] i_inc36_atax22_q;
    wire [0:0] i_llvm_fpga_dummy_thread_atax_b3_dummy_atax2_out_dummy_out;
    wire [0:0] i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax2_atax13_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax2_atax13_out_unnamed_atax2_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax2_atax13_out_unnamed_atax2_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_atax2_atax13_out_unnamed_atax2_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax2_atax13_out_unnamed_atax2_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax2_atax13_out_unnamed_atax2_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax2_atax13_out_unnamed_atax2_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax2_atax13_out_unnamed_atax2_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going17_atax6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going17_atax6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going17_atax6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going17_atax6_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going17_atax6_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going17_atax6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond18_atax19_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond18_atax19_out_feedback_valid_out_6;
    wire [0:0] i_notcmp15_atax18_q;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next8_atax20_sel_x_b;
    wire [31:0] bgTrunc_i_inc36_atax22_sel_x_b;
    wire [7:0] i_arrayidx1_atax0_add_x_a;
    wire [7:0] i_arrayidx1_atax0_add_x_b;
    logic [7:0] i_arrayidx1_atax0_add_x_o;
    wire [7:0] i_arrayidx1_atax0_add_x_q;
    wire [63:0] i_arrayidx1_atax0_append_upper_bits_x_q;
    wire [4:0] i_arrayidx1_atax0_narrow_x_b;
    wire [6:0] i_arrayidx1_atax0_shift_join_x_q;
    wire [6:0] i_arrayidx1_atax0_dupName_0_trunc_sel_x_b;
    wire [6:0] i_arrayidx1_atax0_dupName_2_trunc_sel_x_b;
    wire [63:0] i_idxprom_atax10_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_atax_b3_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b3_current_iter_isreal_atax4_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_atax_b3_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b3_current_iter_isreal_atax4_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop1027_pop15_atax0_i_llvm_fpga_pop_i1_memdep_phi3_pop1027_pop15_atax24_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop1027_pop15_atax0_i_llvm_fpga_pop_i1_memdep_phi3_pop1027_pop15_atax24_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax12_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax12_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_i_022_pop12_atax0_i_llvm_fpga_pop_i32_i_022_pop12_atax9_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_i_022_pop12_atax0_i_llvm_fpga_pop_i32_i_022_pop12_atax9_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop11_atax0_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop11_atax14_mux_x_s;
    reg [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop11_atax0_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop11_atax14_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_c_i7_03_x_q;
    wire [7:0] i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax1_x_i_valid;
    wire i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax1_x_i_stall;
    wire i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax1_x_i_valid;
    wire i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax1_x_i_stall;
    wire i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax0_i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax1_x_i_valid;
    wire i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax0_i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax0_i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax1_x_i_stall;
    wire i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax0_i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax0_i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax0_i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_i_022_push12_atax0_i_llvm_fpga_push_i32_i_022_push12_atax1_x_i_valid;
    wire i_llvm_fpga_push_i32_i_022_push12_atax0_i_llvm_fpga_push_i32_i_022_push12_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_i_022_push12_atax0_i_llvm_fpga_push_i32_i_022_push12_atax1_x_i_stall;
    wire i_llvm_fpga_push_i32_i_022_push12_atax0_i_llvm_fpga_push_i32_i_022_push12_atax1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_i_022_push12_atax0_i_llvm_fpga_push_i32_i_022_push12_atax1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_i_022_push12_atax0_i_llvm_fpga_push_i32_i_022_push12_atax1_x_o_data;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax1_x_i_valid;
    wire i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax1_x_i_stall;
    wire i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax1_x_o_data;
    wire [5:0] i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax0_adapt_scalar_trunc4_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg7_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg9_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg10_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg11_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg12_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg13_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg14_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg15_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg17_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg18_q;
    wire [0:0] i_exitcond9_atax15_cmp_nsign_q;
    wire [56:0] i_arrayidx1_atax0_upper_bits_x_merged_bit_select_b;
    wire [6:0] i_arrayidx1_atax0_upper_bits_x_merged_bit_select_c;
    reg [0:0] redist0_i_exitcond9_atax15_cmp_nsign_q_4_q;
    reg [0:0] redist0_i_exitcond9_atax15_cmp_nsign_q_4_delay_0;
    reg [0:0] redist0_i_exitcond9_atax15_cmp_nsign_q_4_delay_1;
    reg [0:0] redist0_i_exitcond9_atax15_cmp_nsign_q_4_delay_2;
    reg [0:0] redist1_valid_fanout_reg0_q_1_q;
    reg [0:0] redist2_sync_together66_aunroll_x_in_c0_eni3_2_tpl_4_q;
    reg [0:0] redist2_sync_together66_aunroll_x_in_c0_eni3_2_tpl_4_delay_0;
    reg [0:0] redist2_sync_together66_aunroll_x_in_c0_eni3_2_tpl_4_delay_1;
    reg [0:0] redist2_sync_together66_aunroll_x_in_c0_eni3_2_tpl_4_delay_2;
    reg [0:0] redist3_sync_together66_aunroll_x_in_c0_eni3_2_tpl_8_q;
    reg [0:0] redist3_sync_together66_aunroll_x_in_c0_eni3_2_tpl_8_delay_0;
    reg [0:0] redist3_sync_together66_aunroll_x_in_c0_eni3_2_tpl_8_delay_1;
    reg [0:0] redist3_sync_together66_aunroll_x_in_c0_eni3_2_tpl_8_delay_2;
    reg [0:0] redist4_sync_together66_aunroll_x_in_c0_eni3_3_tpl_8_q;
    reg [0:0] redist5_sync_together66_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist5_sync_together66_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist6_sync_together66_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist7_sync_together66_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist8_sync_together66_aunroll_x_in_i_valid_6_q;
    reg [0:0] redist8_sync_together66_aunroll_x_in_i_valid_6_delay_0;
    reg [0:0] redist9_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q_2_q;
    reg [0:0] redist9_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q_2_delay_0;
    reg [0:0] redist10_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q_3_q;
    reg [0:0] redist11_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q_4_q;
    reg [0:0] redist12_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q_6_q;
    reg [0:0] redist12_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q_6_delay_0;
    reg [0:0] redist13_i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax12_mux_x_q_1_q;
    reg [0:0] redist14_i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax12_mux_x_q_4_q;
    reg [0:0] redist14_i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax12_mux_x_q_4_delay_0;
    reg [0:0] redist14_i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax12_mux_x_q_4_delay_1;
    reg [0:0] redist15_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_4_q;
    reg [0:0] redist15_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_4_delay_0;
    reg [0:0] redist15_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_4_delay_1;
    reg [0:0] redist15_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_4_delay_2;
    reg [0:0] redist16_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_8_q;
    reg [0:0] redist16_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_8_delay_0;
    reg [0:0] redist16_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_8_delay_1;
    reg [0:0] redist16_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_8_delay_2;
    reg [0:0] redist17_i_llvm_fpga_dummy_thread_atax_b3_dummy_atax2_out_dummy_out_4_q;
    reg [0:0] redist17_i_llvm_fpga_dummy_thread_atax_b3_dummy_atax2_out_dummy_out_4_delay_0;
    reg [0:0] redist17_i_llvm_fpga_dummy_thread_atax_b3_dummy_atax2_out_dummy_out_4_delay_1;
    reg [0:0] redist17_i_llvm_fpga_dummy_thread_atax_b3_dummy_atax2_out_dummy_out_4_delay_2;
    reg [63:0] redist18_i_idxprom_atax10_vt_join_q_4_q;
    reg [63:0] redist18_i_idxprom_atax10_vt_join_q_4_delay_0;
    reg [63:0] redist18_i_idxprom_atax10_vt_join_q_4_delay_1;
    reg [0:0] redist19_i_atax_b3_current_iter_isspec_atax5_q_4_q;
    reg [0:0] redist19_i_atax_b3_current_iter_isspec_atax5_q_4_delay_0;
    reg [0:0] redist19_i_atax_b3_current_iter_isspec_atax5_q_4_delay_1;
    reg [0:0] redist19_i_atax_b3_current_iter_isspec_atax5_q_4_delay_2;
    reg [63:0] redist20_i_arrayidx1_atax11_vt_join_q_4_q;
    reg [63:0] redist20_i_arrayidx1_atax11_vt_join_q_4_delay_0;
    reg [63:0] redist20_i_arrayidx1_atax11_vt_join_q_4_delay_1;
    reg [63:0] redist18_i_idxprom_atax10_vt_join_q_4_inputreg0_q;
    reg [63:0] redist20_i_arrayidx1_atax11_vt_join_q_4_inputreg0_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist5_sync_together66_aunroll_x_in_i_valid_2(DELAY,149)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist5_sync_together66_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist5_sync_together66_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_together66_aunroll_x_in_i_valid_2_q <= redist5_sync_together66_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist6_sync_together66_aunroll_x_in_i_valid_3(DELAY,150)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist6_sync_together66_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist6_sync_together66_aunroll_x_in_i_valid_3_q <= $unsigned(redist5_sync_together66_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg7(REG,122)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist6_sync_together66_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_c_i7_03_x(CONSTANT,87)
    assign i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_c_i7_03_x_q = $unsigned(7'b0000000);

    // valid_fanout_reg2(REG,117)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist6_sync_together66_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg11(REG,126)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist6_sync_together66_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_i6_1856(CONSTANT,37)
    assign c_i6_1856_q = $unsigned(6'b010010);

    // i_arrayidx1_atax11_vt_const_1(CONSTANT,40)
    assign i_arrayidx1_atax11_vt_const_1_q = $unsigned(2'b00);

    // c_i6_158(CONSTANT,36)
    assign c_i6_158_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next8_atax20(ADD,46)@4
    assign i_fpga_indvars_iv_next8_atax20_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop11_atax0_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop11_atax14_mux_x_q};
    assign i_fpga_indvars_iv_next8_atax20_b = {1'b0, c_i6_158_q};
    assign i_fpga_indvars_iv_next8_atax20_o = $unsigned(i_fpga_indvars_iv_next8_atax20_a) + $unsigned(i_fpga_indvars_iv_next8_atax20_b);
    assign i_fpga_indvars_iv_next8_atax20_q = i_fpga_indvars_iv_next8_atax20_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next8_atax20_sel_x(BITSELECT,62)@4
    assign bgTrunc_i_fpga_indvars_iv_next8_atax20_sel_x_b = i_fpga_indvars_iv_next8_atax20_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax0_element_extension2_x(BITJOIN,109)@4
    assign i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax0_element_extension2_x_q = {i_arrayidx1_atax11_vt_const_1_q, bgTrunc_i_fpga_indvars_iv_next8_atax20_sel_x_b};

    // valid_fanout_reg13(REG,128)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg12(REG,127)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist5_sync_together66_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax1_x(FIFODELAY,110)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax1_x_i_stall = ~ (valid_fanout_reg13_q & i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q);
    assign i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax1_x_i_valid = valid_fanout_reg12_q & redist9_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax1_x_i_data = i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax0_element_extension2_x_q;
    assign i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
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
    ) thei_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax1_x (
        .i_valid(i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax0_adapt_scalar_trunc4_sel_x(BITSELECT,112)@4
    assign i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax0_i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax1_x_o_data[5:0];

    // i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop11_atax0_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop11_atax14_mux_x(MUX,85)@4
    assign i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop11_atax0_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop11_atax14_mux_x_s = redist15_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop11_atax0_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop11_atax14_mux_x_s or i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax0_adapt_scalar_trunc4_sel_x_b or c_i6_1856_q)
    begin
        unique case (i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop11_atax0_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop11_atax14_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop11_atax0_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop11_atax14_mux_x_q = i_llvm_fpga_push_i6_fpga_indvars_iv7_push11_atax0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop11_atax0_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop11_atax14_mux_x_q = c_i6_1856_q;
            default : i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop11_atax0_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop11_atax14_mux_x_q = 6'b0;
        endcase
    end

    // i_exitcond9_atax15_cmp_nsign(LOGICAL,142)@4
    assign i_exitcond9_atax15_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop11_atax0_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop11_atax14_mux_x_q[5:5]));

    // i_llvm_fpga_push_i1_notexitcond18_atax19(BLACKBOX,56)@4
    // in in_empty_in@20000000
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    atax_i_llvm_fpga_push_i1_notexitcond18_0 thei_llvm_fpga_push_i1_notexitcond18_atax19 (
        .in_almost_empty_in(GND_q),
        .in_data_in(i_exitcond9_atax15_cmp_nsign_q),
        .in_empty_in(GND_q),
        .in_feedback_stall_in_6(i_llvm_fpga_pipeline_keep_going17_atax6_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i1_notexitcond18_atax19_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i1_notexitcond18_atax19_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_atax_b3_dummy_atax2(BLACKBOX,52)@0
    // in in_stall_in@20000000
    atax_i_llvm_fpga_dummy_thread_b3_dummy_atax0 thei_llvm_fpga_dummy_thread_atax_b3_dummy_atax2 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_atax_b3_dummy_atax2_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist17_i_llvm_fpga_dummy_thread_atax_b3_dummy_atax2_out_dummy_out_4(DELAY,161)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_i_llvm_fpga_dummy_thread_atax_b3_dummy_atax2_out_dummy_out_4_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_atax_b3_dummy_atax2_out_dummy_out);
            redist17_i_llvm_fpga_dummy_thread_atax_b3_dummy_atax2_out_dummy_out_4_delay_1 <= redist17_i_llvm_fpga_dummy_thread_atax_b3_dummy_atax2_out_dummy_out_4_delay_0;
            redist17_i_llvm_fpga_dummy_thread_atax_b3_dummy_atax2_out_dummy_out_4_delay_2 <= redist17_i_llvm_fpga_dummy_thread_atax_b3_dummy_atax2_out_dummy_out_4_delay_1;
            redist17_i_llvm_fpga_dummy_thread_atax_b3_dummy_atax2_out_dummy_out_4_q <= redist17_i_llvm_fpga_dummy_thread_atax_b3_dummy_atax2_out_dummy_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pipeline_keep_going17_atax6(BLACKBOX,55)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    atax_i_llvm_fpga_pipeline_keep_going17_0 thei_llvm_fpga_pipeline_keep_going17_atax6 (
        .in_data_in(redist15_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_4_q),
        .in_dummy_in(redist17_i_llvm_fpga_dummy_thread_atax_b3_dummy_atax2_out_dummy_out_4_q),
        .in_forked_in(redist15_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_4_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond18_atax19_out_feedback_out_6),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond18_atax19_out_feedback_valid_out_6),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going17_atax6_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going17_atax6_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going17_atax6_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going17_atax6_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going17_atax6_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going17_atax6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_atax_b3_next_iter_isreal_atax7(LOGICAL,44)@4
    assign i_atax_b3_next_iter_isreal_atax7_q = i_llvm_fpga_pop_coalesce_i1_atax_b3_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b3_current_iter_isreal_atax4_mux_x_q & i_llvm_fpga_pipeline_keep_going17_atax6_out_data_out;

    // i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_element_extension2_x(BITJOIN,88)@4
    assign i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_element_extension2_x_q = {i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_c_i7_03_x_q, i_atax_b3_next_iter_isreal_atax7_q};

    // i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x(LOGICAL,90)@1
    assign i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg4(REG,119)@0 + 1
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

    // redist9_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q_2(DELAY,153)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q);
            redist9_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q_2_q <= redist9_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q_2_delay_0;
        end
    end

    // valid_fanout_reg3(REG,118)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist5_sync_together66_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax1_x(FIFODELAY,89)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax1_x_i_stall = ~ (valid_fanout_reg4_q & i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax1_x_i_valid = valid_fanout_reg3_q & redist9_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax1_x_i_data = i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
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
    ) thei_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax1_x (
        .i_valid(i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_adapt_scalar_trunc4_sel_x(BITSELECT,91)@4
    assign i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax1_x_o_data[0:0];

    // i_llvm_fpga_forked_atax_b3_forked_atax3(BLACKBOX,53)@0
    // in in_stall_in@20000000
    atax_i_llvm_fpga_forked_b3_forked_atax0 thei_llvm_fpga_forked_atax_b3_forked_atax3 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist15_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_4(DELAY,159)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist15_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out);
            redist15_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_4_delay_1 <= redist15_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_4_delay_0;
            redist15_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_4_delay_2 <= redist15_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_4_delay_1;
            redist15_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_4_q <= redist15_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pop_coalesce_i1_atax_b3_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b3_current_iter_isreal_atax4_mux_x(MUX,81)@4
    assign i_llvm_fpga_pop_coalesce_i1_atax_b3_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b3_current_iter_isreal_atax4_mux_x_s = redist15_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_coalesce_i1_atax_b3_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b3_current_iter_isreal_atax4_mux_x_s or i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_atax_b3_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b3_current_iter_isreal_atax4_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_atax_b3_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b3_current_iter_isreal_atax4_mux_x_q = i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_atax_b3_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b3_current_iter_isreal_atax4_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_atax_b3_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b3_current_iter_isreal_atax4_mux_x_q = 1'b0;
        endcase
    end

    // i_atax_b3_current_iter_isspec_atax5(LOGICAL,43)@4
    assign i_atax_b3_current_iter_isspec_atax5_q = i_llvm_fpga_pop_coalesce_i1_atax_b3_current_iter_isreal_atax0_i_llvm_fpga_pop_coalesce_i1_atax_b3_current_iter_isreal_atax4_mux_x_q ^ VCC_q;

    // redist2_sync_together66_aunroll_x_in_c0_eni3_2_tpl_4(DELAY,146)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together66_aunroll_x_in_c0_eni3_2_tpl_4_delay_0 <= $unsigned(in_c0_eni3_2_tpl);
            redist2_sync_together66_aunroll_x_in_c0_eni3_2_tpl_4_delay_1 <= redist2_sync_together66_aunroll_x_in_c0_eni3_2_tpl_4_delay_0;
            redist2_sync_together66_aunroll_x_in_c0_eni3_2_tpl_4_delay_2 <= redist2_sync_together66_aunroll_x_in_c0_eni3_2_tpl_4_delay_1;
            redist2_sync_together66_aunroll_x_in_c0_eni3_2_tpl_4_q <= redist2_sync_together66_aunroll_x_in_c0_eni3_2_tpl_4_delay_2;
        end
    end

    // redist13_i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax12_mux_x_q_1(DELAY,157)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax12_mux_x_q_1_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax12_mux_x_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax0_element_extension2_x(BITJOIN,100)@5
    assign i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax0_element_extension2_x_q = {i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_c_i7_03_x_q, redist13_i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax12_mux_x_q_1_q};

    // valid_fanout_reg10(REG,125)@0 + 1
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

    // redist10_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q_3(DELAY,154)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q_3_q <= $unsigned(redist9_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q_2_q);
        end
    end

    // valid_fanout_reg9(REG,124)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist6_sync_together66_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax0_i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax1_x(FIFODELAY,101)@1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@4
    assign i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax0_i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax1_x_i_stall = ~ (valid_fanout_reg10_q & i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax0_i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax1_x_i_valid = valid_fanout_reg9_q & redist10_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax0_i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax1_x_i_data = i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax0_i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax0_i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax0_i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax0_i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax0_i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax1_x (
        .i_valid(i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax0_i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax0_i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax0_i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax0_adapt_scalar_trunc4_sel_x(BITSELECT,103)@4
    assign i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax0_i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax12_mux_x(MUX,83)@4
    assign i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax12_mux_x_s = redist15_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax12_mux_x_s or i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax0_adapt_scalar_trunc4_sel_x_b or redist2_sync_together66_aunroll_x_in_c0_eni3_2_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax12_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax12_mux_x_q = i_llvm_fpga_push_i1_memdep_phi_pop924_push14_atax0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax12_mux_x_q = redist2_sync_together66_aunroll_x_in_c0_eni3_2_tpl_4_q;
            default : i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax12_mux_x_q = 1'b0;
        endcase
    end

    // c_atax_tmp_local_pmem(CONSTANT,4)
    assign c_atax_tmp_local_pmem_q = $unsigned(64'b0100000001000011000000000000000000000000000000000000000000000000);

    // i_arrayidx1_atax0_upper_bits_x_merged_bit_select(BITSELECT,143)@4
    assign i_arrayidx1_atax0_upper_bits_x_merged_bit_select_b = c_atax_tmp_local_pmem_q[63:7];
    assign i_arrayidx1_atax0_upper_bits_x_merged_bit_select_c = c_atax_tmp_local_pmem_q[6:0];

    // c_i32_055(CONSTANT,34)
    assign c_i32_055_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_159(CONSTANT,35)
    assign c_i32_159_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc36_atax22(ADD,51)@4
    assign i_inc36_atax22_a = {1'b0, i_llvm_fpga_pop_i32_i_022_pop12_atax0_i_llvm_fpga_pop_i32_i_022_pop12_atax9_mux_x_q};
    assign i_inc36_atax22_b = {1'b0, c_i32_159_q};
    assign i_inc36_atax22_o = $unsigned(i_inc36_atax22_a) + $unsigned(i_inc36_atax22_b);
    assign i_inc36_atax22_q = i_inc36_atax22_o[32:0];

    // bgTrunc_i_inc36_atax22_sel_x(BITSELECT,63)@4
    assign bgTrunc_i_inc36_atax22_sel_x_b = i_inc36_atax22_q[31:0];

    // valid_fanout_reg15(REG,130)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg14(REG,129)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist5_sync_together66_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_i_022_push12_atax0_i_llvm_fpga_push_i32_i_022_push12_atax1_x(FIFODELAY,104)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_i_022_push12_atax0_i_llvm_fpga_push_i32_i_022_push12_atax1_x_i_stall = ~ (valid_fanout_reg15_q & i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_i_022_push12_atax0_i_llvm_fpga_push_i32_i_022_push12_atax1_x_i_valid = valid_fanout_reg14_q & redist9_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_i_022_push12_atax0_i_llvm_fpga_push_i32_i_022_push12_atax1_x_i_data = bgTrunc_i_inc36_atax22_sel_x_b;
    assign i_llvm_fpga_push_i32_i_022_push12_atax0_i_llvm_fpga_push_i32_i_022_push12_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_i_022_push12_atax0_i_llvm_fpga_push_i32_i_022_push12_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_i_022_push12_atax0_i_llvm_fpga_push_i32_i_022_push12_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_i_022_push12_atax0_i_llvm_fpga_push_i32_i_022_push12_atax1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
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
    ) thei_llvm_fpga_push_i32_i_022_push12_atax0_i_llvm_fpga_push_i32_i_022_push12_atax1_x (
        .i_valid(i_llvm_fpga_push_i32_i_022_push12_atax0_i_llvm_fpga_push_i32_i_022_push12_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_i_022_push12_atax0_i_llvm_fpga_push_i32_i_022_push12_atax1_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_inc36_atax22_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_i_022_push12_atax0_i_llvm_fpga_push_i32_i_022_push12_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_022_pop12_atax0_i_llvm_fpga_pop_i32_i_022_pop12_atax9_mux_x(MUX,84)@4
    assign i_llvm_fpga_pop_i32_i_022_pop12_atax0_i_llvm_fpga_pop_i32_i_022_pop12_atax9_mux_x_s = redist15_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_i_022_pop12_atax0_i_llvm_fpga_pop_i32_i_022_pop12_atax9_mux_x_s or i_llvm_fpga_push_i32_i_022_push12_atax0_i_llvm_fpga_push_i32_i_022_push12_atax1_x_o_data or c_i32_055_q)
    begin
        unique case (i_llvm_fpga_pop_i32_i_022_pop12_atax0_i_llvm_fpga_pop_i32_i_022_pop12_atax9_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_i_022_pop12_atax0_i_llvm_fpga_pop_i32_i_022_pop12_atax9_mux_x_q = i_llvm_fpga_push_i32_i_022_push12_atax0_i_llvm_fpga_push_i32_i_022_push12_atax1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_i_022_pop12_atax0_i_llvm_fpga_pop_i32_i_022_pop12_atax9_mux_x_q = c_i32_055_q;
            default : i_llvm_fpga_pop_i32_i_022_pop12_atax0_i_llvm_fpga_pop_i32_i_022_pop12_atax9_mux_x_q = 32'b0;
        endcase
    end

    // i_idxprom_atax10_sel_x(BITSELECT,80)@4
    assign i_idxprom_atax10_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_022_pop12_atax0_i_llvm_fpga_pop_i32_i_022_pop12_atax9_mux_x_q[31:0]};

    // i_idxprom_atax10_vt_select_31(BITSELECT,50)@4
    assign i_idxprom_atax10_vt_select_31_b = i_idxprom_atax10_sel_x_b[31:0];

    // i_idxprom_atax10_vt_join(BITJOIN,49)@4
    assign i_idxprom_atax10_vt_join_q = {c_i32_055_q, i_idxprom_atax10_vt_select_31_b};

    // i_arrayidx1_atax0_dupName_0_trunc_sel_x(BITSELECT,78)@4
    assign i_arrayidx1_atax0_dupName_0_trunc_sel_x_b = i_idxprom_atax10_vt_join_q[6:0];

    // i_arrayidx1_atax0_narrow_x(BITSELECT,71)@4
    assign i_arrayidx1_atax0_narrow_x_b = i_arrayidx1_atax0_dupName_0_trunc_sel_x_b[4:0];

    // i_arrayidx1_atax0_shift_join_x(BITJOIN,72)@4
    assign i_arrayidx1_atax0_shift_join_x_q = {i_arrayidx1_atax0_narrow_x_b, i_arrayidx1_atax11_vt_const_1_q};

    // i_arrayidx1_atax0_add_x(ADD,68)@4
    assign i_arrayidx1_atax0_add_x_a = {1'b0, i_arrayidx1_atax0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx1_atax0_add_x_b = {1'b0, i_arrayidx1_atax0_shift_join_x_q};
    assign i_arrayidx1_atax0_add_x_o = $unsigned(i_arrayidx1_atax0_add_x_a) + $unsigned(i_arrayidx1_atax0_add_x_b);
    assign i_arrayidx1_atax0_add_x_q = i_arrayidx1_atax0_add_x_o[7:0];

    // i_arrayidx1_atax0_dupName_2_trunc_sel_x(BITSELECT,79)@4
    assign i_arrayidx1_atax0_dupName_2_trunc_sel_x_b = i_arrayidx1_atax0_add_x_q[6:0];

    // i_arrayidx1_atax0_append_upper_bits_x(BITJOIN,69)@4
    assign i_arrayidx1_atax0_append_upper_bits_x_q = {i_arrayidx1_atax0_upper_bits_x_merged_bit_select_b, i_arrayidx1_atax0_dupName_2_trunc_sel_x_b};

    // i_arrayidx1_atax11_vt_select_63(BITSELECT,42)@4
    assign i_arrayidx1_atax11_vt_select_63_b = i_arrayidx1_atax0_append_upper_bits_x_q[63:2];

    // i_arrayidx1_atax11_vt_join(BITJOIN,41)@4
    assign i_arrayidx1_atax11_vt_join_q = {i_arrayidx1_atax11_vt_select_63_b, i_arrayidx1_atax11_vt_const_1_q};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_mem_unnamed_atax2_atax13(BLACKBOX,54)@4
    // out out_o_almost_empty@8
    // out out_o_empty@8
    // out out_o_readdata@8
    // out out_o_stall@8
    // out out_o_valid@8
    // out out_unnamed_atax2_atax_avm_address@20000000
    // out out_unnamed_atax2_atax_avm_burstcount@20000000
    // out out_unnamed_atax2_atax_avm_byteenable@20000000
    // out out_unnamed_atax2_atax_avm_enable@20000000
    // out out_unnamed_atax2_atax_avm_read@20000000
    // out out_unnamed_atax2_atax_avm_write@20000000
    // out out_unnamed_atax2_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_2_atax0 thei_llvm_fpga_mem_unnamed_atax2_atax13 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx1_atax11_vt_join_q),
        .in_i_dependence(i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax12_mux_x_q),
        .in_i_predicate(i_atax_b3_current_iter_isspec_atax5_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_unnamed_atax2_atax_avm_readdata(in_unnamed_atax2_atax_avm_readdata),
        .in_unnamed_atax2_atax_avm_readdatavalid(in_unnamed_atax2_atax_avm_readdatavalid),
        .in_unnamed_atax2_atax_avm_waitrequest(in_unnamed_atax2_atax_avm_waitrequest),
        .in_unnamed_atax2_atax_avm_writeack(in_unnamed_atax2_atax_avm_writeack),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_atax2_atax13_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_atax2_atax_avm_address(i_llvm_fpga_mem_unnamed_atax2_atax13_out_unnamed_atax2_atax_avm_address),
        .out_unnamed_atax2_atax_avm_burstcount(i_llvm_fpga_mem_unnamed_atax2_atax13_out_unnamed_atax2_atax_avm_burstcount),
        .out_unnamed_atax2_atax_avm_byteenable(i_llvm_fpga_mem_unnamed_atax2_atax13_out_unnamed_atax2_atax_avm_byteenable),
        .out_unnamed_atax2_atax_avm_enable(i_llvm_fpga_mem_unnamed_atax2_atax13_out_unnamed_atax2_atax_avm_enable),
        .out_unnamed_atax2_atax_avm_read(i_llvm_fpga_mem_unnamed_atax2_atax13_out_unnamed_atax2_atax_avm_read),
        .out_unnamed_atax2_atax_avm_write(i_llvm_fpga_mem_unnamed_atax2_atax13_out_unnamed_atax2_atax_avm_write),
        .out_unnamed_atax2_atax_avm_writedata(i_llvm_fpga_mem_unnamed_atax2_atax13_out_unnamed_atax2_atax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,39)
    assign out_unnamed_atax2_atax_avm_address = i_llvm_fpga_mem_unnamed_atax2_atax13_out_unnamed_atax2_atax_avm_address;
    assign out_unnamed_atax2_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax2_atax13_out_unnamed_atax2_atax_avm_enable;
    assign out_unnamed_atax2_atax_avm_read = i_llvm_fpga_mem_unnamed_atax2_atax13_out_unnamed_atax2_atax_avm_read;
    assign out_unnamed_atax2_atax_avm_write = i_llvm_fpga_mem_unnamed_atax2_atax13_out_unnamed_atax2_atax_avm_write;
    assign out_unnamed_atax2_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax2_atax13_out_unnamed_atax2_atax_avm_writedata;
    assign out_unnamed_atax2_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax2_atax13_out_unnamed_atax2_atax_avm_byteenable;
    assign out_unnamed_atax2_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax2_atax13_out_unnamed_atax2_atax_avm_burstcount;

    // regfree_osync(GPOUT,60)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going17_atax6_out_exiting_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,65)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going17_atax6_out_pipeline_dummy_out;

    // dupName_1_regfree_osync_x(GPOUT,66)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going17_atax6_out_pipeline_forked_out;

    // dupName_2_regfree_osync_x(GPOUT,67)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going17_atax6_out_pipeline_valid_out;

    // redist7_sync_together66_aunroll_x_in_i_valid_4(DELAY,151)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together66_aunroll_x_in_i_valid_4_q <= $unsigned(redist6_sync_together66_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist8_sync_together66_aunroll_x_in_i_valid_6(DELAY,152)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist8_sync_together66_aunroll_x_in_i_valid_6_delay_0 <= '0;
        end
        else
        begin
            redist8_sync_together66_aunroll_x_in_i_valid_6_delay_0 <= $unsigned(redist7_sync_together66_aunroll_x_in_i_valid_4_q);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_sync_together66_aunroll_x_in_i_valid_6_q <= redist8_sync_together66_aunroll_x_in_i_valid_6_delay_0;
        end
    end

    // valid_fanout_reg0(REG,115)@6 + 1
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist8_sync_together66_aunroll_x_in_i_valid_6_q);
        end
    end

    // redist1_valid_fanout_reg0_q_1(DELAY,145)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_valid_fanout_reg0_q_1_q <= $unsigned(valid_fanout_reg0_q);
        end
    end

    // redist4_sync_together66_aunroll_x_in_c0_eni3_3_tpl_8(DELAY,148)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist4_sync_together66_aunroll_x_in_c0_eni3_3_tpl_8 ( .xin(in_c0_eni3_3_tpl), .xout(redist4_sync_together66_aunroll_x_in_c0_eni3_3_tpl_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist3_sync_together66_aunroll_x_in_c0_eni3_2_tpl_8(DELAY,147)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together66_aunroll_x_in_c0_eni3_2_tpl_8_delay_0 <= $unsigned(redist2_sync_together66_aunroll_x_in_c0_eni3_2_tpl_4_q);
            redist3_sync_together66_aunroll_x_in_c0_eni3_2_tpl_8_delay_1 <= redist3_sync_together66_aunroll_x_in_c0_eni3_2_tpl_8_delay_0;
            redist3_sync_together66_aunroll_x_in_c0_eni3_2_tpl_8_delay_2 <= redist3_sync_together66_aunroll_x_in_c0_eni3_2_tpl_8_delay_1;
            redist3_sync_together66_aunroll_x_in_c0_eni3_2_tpl_8_q <= redist3_sync_together66_aunroll_x_in_c0_eni3_2_tpl_8_delay_2;
        end
    end

    // redist16_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_8(DELAY,160)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_8_delay_0 <= $unsigned(redist15_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_4_q);
            redist16_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_8_delay_1 <= redist16_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_8_delay_0;
            redist16_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_8_delay_2 <= redist16_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_8_delay_1;
            redist16_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_8_q <= redist16_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_8_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax0_element_extension2_x(BITJOIN,94)@8
    assign i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax0_element_extension2_x_q = {i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_c_i7_03_x_q, i_llvm_fpga_pop_i1_memdep_phi3_pop1027_pop15_atax0_i_llvm_fpga_pop_i1_memdep_phi3_pop1027_pop15_atax24_mux_x_q};

    // redist11_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q_4(DELAY,155)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q_4_q <= $unsigned(redist10_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q_3_q);
        end
    end

    // valid_fanout_reg18(REG,133)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist7_sync_together66_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist12_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q_6(DELAY,156)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q_6_delay_0 <= $unsigned(redist11_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q_4_q);
            redist12_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q_6_q <= redist12_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q_6_delay_0;
        end
    end

    // valid_fanout_reg17(REG,132)@6 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist8_sync_together66_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax1_x(FIFODELAY,95)@5 + 1
    // in i_valid@7
    // in i_write_pred@7
    // in i_data@8
    // out o_data@8
    assign i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax1_x_i_stall = ~ (valid_fanout_reg18_q & redist11_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q_4_q);
    assign i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax1_x_i_valid = valid_fanout_reg17_q & redist12_i_llvm_fpga_push_i1_atax_b3_next_iter_isreal_push_atax0_inv_pred_x_q_6_q;
    assign i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax1_x_i_data = i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
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
    ) thei_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax1_x (
        .i_valid(i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax0_adapt_scalar_trunc4_sel_x(BITSELECT,97)@8
    assign i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax0_i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_memdep_phi3_pop1027_pop15_atax0_i_llvm_fpga_pop_i1_memdep_phi3_pop1027_pop15_atax24_mux_x(MUX,82)@8
    assign i_llvm_fpga_pop_i1_memdep_phi3_pop1027_pop15_atax0_i_llvm_fpga_pop_i1_memdep_phi3_pop1027_pop15_atax24_mux_x_s = redist16_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_8_q;
    always @(i_llvm_fpga_pop_i1_memdep_phi3_pop1027_pop15_atax0_i_llvm_fpga_pop_i1_memdep_phi3_pop1027_pop15_atax24_mux_x_s or i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax0_adapt_scalar_trunc4_sel_x_b or redist4_sync_together66_aunroll_x_in_c0_eni3_3_tpl_8_q)
    begin
        unique case (i_llvm_fpga_pop_i1_memdep_phi3_pop1027_pop15_atax0_i_llvm_fpga_pop_i1_memdep_phi3_pop1027_pop15_atax24_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_memdep_phi3_pop1027_pop15_atax0_i_llvm_fpga_pop_i1_memdep_phi3_pop1027_pop15_atax24_mux_x_q = i_llvm_fpga_push_i1_memdep_phi3_pop1027_push15_atax0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_memdep_phi3_pop1027_pop15_atax0_i_llvm_fpga_pop_i1_memdep_phi3_pop1027_pop15_atax24_mux_x_q = redist4_sync_together66_aunroll_x_in_c0_eni3_3_tpl_8_q;
            default : i_llvm_fpga_pop_i1_memdep_phi3_pop1027_pop15_atax0_i_llvm_fpga_pop_i1_memdep_phi3_pop1027_pop15_atax24_mux_x_q = 1'b0;
        endcase
    end

    // i_notcmp15_atax18(LOGICAL,57)@8
    assign i_notcmp15_atax18_q = redist0_i_exitcond9_atax15_cmp_nsign_q_4_q ^ VCC_q;

    // redist0_i_exitcond9_atax15_cmp_nsign_q_4(DELAY,144)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_exitcond9_atax15_cmp_nsign_q_4_delay_0 <= $unsigned(i_exitcond9_atax15_cmp_nsign_q);
            redist0_i_exitcond9_atax15_cmp_nsign_q_4_delay_1 <= redist0_i_exitcond9_atax15_cmp_nsign_q_4_delay_0;
            redist0_i_exitcond9_atax15_cmp_nsign_q_4_delay_2 <= redist0_i_exitcond9_atax15_cmp_nsign_q_4_delay_1;
            redist0_i_exitcond9_atax15_cmp_nsign_q_4_q <= redist0_i_exitcond9_atax15_cmp_nsign_q_4_delay_2;
        end
    end

    // redist14_i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax12_mux_x_q_4(DELAY,158)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax12_mux_x_q_4_delay_0 <= $unsigned(redist13_i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax12_mux_x_q_1_q);
            redist14_i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax12_mux_x_q_4_delay_1 <= redist14_i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax12_mux_x_q_4_delay_0;
            redist14_i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax12_mux_x_q_4_q <= redist14_i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax12_mux_x_q_4_delay_1;
        end
    end

    // redist20_i_arrayidx1_atax11_vt_join_q_4_inputreg0(DELAY,166)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist20_i_arrayidx1_atax11_vt_join_q_4_inputreg0_q <= $unsigned(i_arrayidx1_atax11_vt_join_q);
        end
    end

    // redist20_i_arrayidx1_atax11_vt_join_q_4(DELAY,164)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist20_i_arrayidx1_atax11_vt_join_q_4_delay_0 <= $unsigned(redist20_i_arrayidx1_atax11_vt_join_q_4_inputreg0_q);
            redist20_i_arrayidx1_atax11_vt_join_q_4_delay_1 <= redist20_i_arrayidx1_atax11_vt_join_q_4_delay_0;
            redist20_i_arrayidx1_atax11_vt_join_q_4_q <= redist20_i_arrayidx1_atax11_vt_join_q_4_delay_1;
        end
    end

    // redist18_i_idxprom_atax10_vt_join_q_4_inputreg0(DELAY,165)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist18_i_idxprom_atax10_vt_join_q_4_inputreg0_q <= $unsigned(i_idxprom_atax10_vt_join_q);
        end
    end

    // redist18_i_idxprom_atax10_vt_join_q_4(DELAY,162)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist18_i_idxprom_atax10_vt_join_q_4_delay_0 <= $unsigned(redist18_i_idxprom_atax10_vt_join_q_4_inputreg0_q);
            redist18_i_idxprom_atax10_vt_join_q_4_delay_1 <= redist18_i_idxprom_atax10_vt_join_q_4_delay_0;
            redist18_i_idxprom_atax10_vt_join_q_4_q <= redist18_i_idxprom_atax10_vt_join_q_4_delay_1;
        end
    end

    // redist19_i_atax_b3_current_iter_isspec_atax5_q_4(DELAY,163)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist19_i_atax_b3_current_iter_isspec_atax5_q_4_delay_0 <= $unsigned(i_atax_b3_current_iter_isspec_atax5_q);
            redist19_i_atax_b3_current_iter_isspec_atax5_q_4_delay_1 <= redist19_i_atax_b3_current_iter_isspec_atax5_q_4_delay_0;
            redist19_i_atax_b3_current_iter_isspec_atax5_q_4_delay_2 <= redist19_i_atax_b3_current_iter_isspec_atax5_q_4_delay_1;
            redist19_i_atax_b3_current_iter_isspec_atax5_q_4_q <= redist19_i_atax_b3_current_iter_isspec_atax5_q_4_delay_2;
        end
    end

    // sync_out_aunroll_x(GPOUT,113)@8
    assign out_atax_B3_current_iter_isspec = redist19_i_atax_b3_current_iter_isspec_atax5_q_4_q;
    assign out_c0_exi10_0_tpl = GND_q;
    assign out_c0_exi10_1_tpl = redist18_i_idxprom_atax10_vt_join_q_4_q;
    assign out_c0_exi10_2_tpl = redist20_i_arrayidx1_atax11_vt_join_q_4_q;
    assign out_c0_exi10_3_tpl = redist14_i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax0_i_llvm_fpga_pop_i1_memdep_phi_pop924_pop14_atax12_mux_x_q_4_q;
    assign out_c0_exi10_4_tpl = i_llvm_fpga_mem_unnamed_atax2_atax13_out_o_readdata;
    assign out_c0_exi10_5_tpl = redist0_i_exitcond9_atax15_cmp_nsign_q_4_q;
    assign out_c0_exi10_6_tpl = i_notcmp15_atax18_q;
    assign out_c0_exi10_7_tpl = i_llvm_fpga_pop_i1_memdep_phi3_pop1027_pop15_atax0_i_llvm_fpga_pop_i1_memdep_phi3_pop1027_pop15_atax24_mux_x_q;
    assign out_c0_exi10_8_tpl = redist16_i_llvm_fpga_forked_atax_b3_forked_atax3_out_buffer_out_8_q;
    assign out_c0_exi10_9_tpl = redist3_sync_together66_aunroll_x_in_c0_eni3_2_tpl_8_q;
    assign out_c0_exi10_10_tpl = redist4_sync_together66_aunroll_x_in_c0_eni3_3_tpl_8_q;
    assign out_o_valid = redist1_valid_fanout_reg0_q_1_q;

endmodule
