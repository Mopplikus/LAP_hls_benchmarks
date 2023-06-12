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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_cond8_preheader_kernel_3mms_c0_enter26647_kernel_3mm0
// Created for function/kernel kernel_3mm
// SystemVerilog created on Thu Apr 27 14:26:50 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_i_sfc_logic_s_c0_in_for_cond80000ter26647_kernel_3mm0 (
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi13_0_tpl,
    output wire [31:0] out_c0_exi13_1_tpl,
    output wire [0:0] out_c0_exi13_2_tpl,
    output wire [0:0] out_c0_exi13_3_tpl,
    output wire [0:0] out_c0_exi13_4_tpl,
    output wire [0:0] out_c0_exi13_5_tpl,
    output wire [0:0] out_c0_exi13_6_tpl,
    output wire [0:0] out_c0_exi13_7_tpl,
    output wire [0:0] out_c0_exi13_8_tpl,
    output wire [0:0] out_c0_exi13_9_tpl,
    output wire [0:0] out_c0_exi13_10_tpl,
    output wire [0:0] out_c0_exi13_11_tpl,
    output wire [0:0] out_c0_exi13_12_tpl,
    output wire [0:0] out_c0_exi13_13_tpl,
    output wire [0:0] out_kernel_3mm_B2_current_iter_isspec,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni6_0_tpl,
    input wire [0:0] in_c0_eni6_1_tpl,
    input wire [0:0] in_c0_eni6_2_tpl,
    input wire [0:0] in_c0_eni6_3_tpl,
    input wire [0:0] in_c0_eni6_4_tpl,
    input wire [0:0] in_c0_eni6_5_tpl,
    input wire [0:0] in_c0_eni6_6_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_068_q;
    wire [31:0] c_i32_169_q;
    wire [4:0] c_i5_172_q;
    wire [4:0] c_i5_870_q;
    wire [5:0] i_fpga_indvars_iv_next15_kernel_3mm17_a;
    wire [5:0] i_fpga_indvars_iv_next15_kernel_3mm17_b;
    logic [5:0] i_fpga_indvars_iv_next15_kernel_3mm17_o;
    wire [5:0] i_fpga_indvars_iv_next15_kernel_3mm17_q;
    wire [32:0] i_inc32_kernel_3mm10_a;
    wire [32:0] i_inc32_kernel_3mm10_b;
    logic [32:0] i_inc32_kernel_3mm10_o;
    wire [32:0] i_inc32_kernel_3mm10_q;
    wire [0:0] i_kernel_3mm_b2_current_iter_isspec_kernel_3mm5_q;
    wire [0:0] i_kernel_3mm_b2_next_iter_isreal_kernel_3mm7_q;
    wire [0:0] i_llvm_fpga_dummy_thread_kernel_3mm_b2_dummy_kernel_3mm2_out_dummy_out;
    wire [0:0] i_llvm_fpga_forked_kernel_3mm_b2_forked_kernel_3mm3_out_buffer_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going53_kernel_3mm6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going53_kernel_3mm6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going53_kernel_3mm6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going53_kernel_3mm6_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going53_kernel_3mm6_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going53_kernel_3mm6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond54_kernel_3mm16_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond54_kernel_3mm16_out_feedback_valid_out_14;
    wire [0:0] i_notcmp51_kernel_3mm15_q;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next15_kernel_3mm17_sel_x_b;
    wire [31:0] bgTrunc_i_inc32_kernel_3mm10_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b2_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b2_current_iter_isreal_kernel_3mm4_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b2_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b2_current_iter_isreal_kernel_3mm4_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_forked60_pop24_kernel_3mm0_i_llvm_fpga_pop_i1_forked60_pop24_kernel_3mm19_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_forked60_pop24_kernel_3mm0_i_llvm_fpga_pop_i1_forked60_pop24_kernel_3mm19_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1868_pop26_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi2_pop1868_pop26_kernel_3mm23_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1868_pop26_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi2_pop1868_pop26_kernel_3mm23_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop1972_pop27_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi3_pop1972_pop27_kernel_3mm25_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop1972_pop27_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi3_pop1972_pop27_kernel_3mm25_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi5_pop2076_pop28_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2076_pop28_kernel_3mm27_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi5_pop2076_pop28_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2076_pop28_kernel_3mm27_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop1764_pop25_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1764_pop25_kernel_3mm21_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop1764_pop25_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1764_pop25_kernel_3mm21_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_i_060_pop23_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop23_kernel_3mm9_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_i_060_pop23_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop23_kernel_3mm9_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv14_pop22_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv14_pop22_kernel_3mm11_mux_x_s;
    reg [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv14_pop22_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv14_pop22_kernel_3mm11_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_c_i7_03_x_q;
    wire [7:0] i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_i_llvm_fpga_push_i1_forked60_push24_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_i_llvm_fpga_push_i1_forked60_push24_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_i_llvm_fpga_push_i1_forked60_push24_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_i_llvm_fpga_push_i1_forked60_push24_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_i_llvm_fpga_push_i1_forked60_push24_kernel_3mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_i_llvm_fpga_push_i1_forked60_push24_kernel_3mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_i_060_push23_kernel_3mm0_i_llvm_fpga_push_i32_i_060_push23_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i32_i_060_push23_kernel_3mm0_i_llvm_fpga_push_i32_i_060_push23_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_i_060_push23_kernel_3mm0_i_llvm_fpga_push_i32_i_060_push23_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i32_i_060_push23_kernel_3mm0_i_llvm_fpga_push_i32_i_060_push23_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_i_060_push23_kernel_3mm0_i_llvm_fpga_push_i32_i_060_push23_kernel_3mm1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_i_060_push23_kernel_3mm0_i_llvm_fpga_push_i32_i_060_push23_kernel_3mm1_x_o_data;
    wire [2:0] i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm0_c_i3_03_x_q;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm1_x_o_data;
    wire [4:0] i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg7_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg8_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg9_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg10_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg11_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg13_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg14_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg16_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg17_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg19_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg20_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg22_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg23_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg25_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg26_q;
    wire [0:0] i_exitcond16_kernel_3mm12_cmp_nsign_q;
    reg [0:0] redist0_sync_together77_aunroll_x_in_c0_eni6_2_tpl_4_q;
    reg [0:0] redist0_sync_together77_aunroll_x_in_c0_eni6_2_tpl_4_delay_0;
    reg [0:0] redist0_sync_together77_aunroll_x_in_c0_eni6_2_tpl_4_delay_1;
    reg [0:0] redist0_sync_together77_aunroll_x_in_c0_eni6_2_tpl_4_delay_2;
    reg [0:0] redist1_sync_together77_aunroll_x_in_c0_eni6_3_tpl_4_q;
    reg [0:0] redist1_sync_together77_aunroll_x_in_c0_eni6_3_tpl_4_delay_0;
    reg [0:0] redist1_sync_together77_aunroll_x_in_c0_eni6_3_tpl_4_delay_1;
    reg [0:0] redist1_sync_together77_aunroll_x_in_c0_eni6_3_tpl_4_delay_2;
    reg [0:0] redist2_sync_together77_aunroll_x_in_c0_eni6_4_tpl_4_q;
    reg [0:0] redist2_sync_together77_aunroll_x_in_c0_eni6_4_tpl_4_delay_0;
    reg [0:0] redist2_sync_together77_aunroll_x_in_c0_eni6_4_tpl_4_delay_1;
    reg [0:0] redist2_sync_together77_aunroll_x_in_c0_eni6_4_tpl_4_delay_2;
    reg [0:0] redist3_sync_together77_aunroll_x_in_c0_eni6_5_tpl_4_q;
    reg [0:0] redist3_sync_together77_aunroll_x_in_c0_eni6_5_tpl_4_delay_0;
    reg [0:0] redist3_sync_together77_aunroll_x_in_c0_eni6_5_tpl_4_delay_1;
    reg [0:0] redist3_sync_together77_aunroll_x_in_c0_eni6_5_tpl_4_delay_2;
    reg [0:0] redist4_sync_together77_aunroll_x_in_c0_eni6_6_tpl_4_q;
    reg [0:0] redist4_sync_together77_aunroll_x_in_c0_eni6_6_tpl_4_delay_0;
    reg [0:0] redist4_sync_together77_aunroll_x_in_c0_eni6_6_tpl_4_delay_1;
    reg [0:0] redist4_sync_together77_aunroll_x_in_c0_eni6_6_tpl_4_delay_2;
    reg [0:0] redist5_sync_together77_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist5_sync_together77_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist6_sync_together77_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist7_i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_inv_pred_x_q_2_q;
    reg [0:0] redist7_i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_inv_pred_x_q_2_delay_0;
    reg [0:0] redist8_i_llvm_fpga_forked_kernel_3mm_b2_forked_kernel_3mm3_out_buffer_out_4_q;
    reg [0:0] redist8_i_llvm_fpga_forked_kernel_3mm_b2_forked_kernel_3mm3_out_buffer_out_4_delay_0;
    reg [0:0] redist8_i_llvm_fpga_forked_kernel_3mm_b2_forked_kernel_3mm3_out_buffer_out_4_delay_1;
    reg [0:0] redist8_i_llvm_fpga_forked_kernel_3mm_b2_forked_kernel_3mm3_out_buffer_out_4_delay_2;
    reg [0:0] redist9_i_llvm_fpga_dummy_thread_kernel_3mm_b2_dummy_kernel_3mm2_out_dummy_out_4_q;
    reg [0:0] redist9_i_llvm_fpga_dummy_thread_kernel_3mm_b2_dummy_kernel_3mm2_out_dummy_out_4_delay_0;
    reg [0:0] redist9_i_llvm_fpga_dummy_thread_kernel_3mm_b2_dummy_kernel_3mm2_out_dummy_out_4_delay_1;
    reg [0:0] redist9_i_llvm_fpga_dummy_thread_kernel_3mm_b2_dummy_kernel_3mm2_out_dummy_out_4_delay_2;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist5_sync_together77_aunroll_x_in_i_valid_2(DELAY,164)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist5_sync_together77_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist5_sync_together77_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_together77_aunroll_x_in_i_valid_2_q <= redist5_sync_together77_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist6_sync_together77_aunroll_x_in_i_valid_3(DELAY,165)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist6_sync_together77_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist6_sync_together77_aunroll_x_in_i_valid_3_q <= $unsigned(redist5_sync_together77_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg2(REG,123)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist6_sync_together77_aunroll_x_in_i_valid_3_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // valid_fanout_reg9(REG,130)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist6_sync_together77_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_i5_870(CONSTANT,46)
    assign c_i5_870_q = $unsigned(5'b01000);

    // i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm0_c_i3_03_x(CONSTANT,114)
    assign i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm0_c_i3_03_x_q = $unsigned(3'b000);

    // c_i5_172(CONSTANT,45)
    assign c_i5_172_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next15_kernel_3mm17(ADD,48)@4
    assign i_fpga_indvars_iv_next15_kernel_3mm17_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv14_pop22_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv14_pop22_kernel_3mm11_mux_x_q};
    assign i_fpga_indvars_iv_next15_kernel_3mm17_b = {1'b0, c_i5_172_q};
    assign i_fpga_indvars_iv_next15_kernel_3mm17_o = $unsigned(i_fpga_indvars_iv_next15_kernel_3mm17_a) + $unsigned(i_fpga_indvars_iv_next15_kernel_3mm17_b);
    assign i_fpga_indvars_iv_next15_kernel_3mm17_q = i_fpga_indvars_iv_next15_kernel_3mm17_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next15_kernel_3mm17_sel_x(BITSELECT,60)@4
    assign bgTrunc_i_fpga_indvars_iv_next15_kernel_3mm17_sel_x_b = i_fpga_indvars_iv_next15_kernel_3mm17_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm0_element_extension2_x(BITJOIN,115)@4
    assign i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm0_element_extension2_x_q = {i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm0_c_i3_03_x_q, bgTrunc_i_fpga_indvars_iv_next15_kernel_3mm17_sel_x_b};

    // i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_inv_pred_x(LOGICAL,78)@1
    assign i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg11(REG,132)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(in_i_valid);
        end
    end

    // redist7_i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_inv_pred_x_q_2(DELAY,166)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_inv_pred_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_inv_pred_x_q);
            redist7_i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_inv_pred_x_q_2_q <= redist7_i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_inv_pred_x_q_2_delay_0;
        end
    end

    // valid_fanout_reg10(REG,131)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist5_sync_together77_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm1_x(FIFODELAY,116)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg11_q & i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_inv_pred_x_q);
    assign i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm1_x_i_valid = valid_fanout_reg10_q & redist7_i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm1_x_i_data = i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm0_adapt_scalar_trunc4_sel_x(BITSELECT,118)@4
    assign i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm1_x_o_data[4:0];

    // i_llvm_fpga_pop_i5_fpga_indvars_iv14_pop22_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv14_pop22_kernel_3mm11_mux_x(MUX,73)@4
    assign i_llvm_fpga_pop_i5_fpga_indvars_iv14_pop22_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv14_pop22_kernel_3mm11_mux_x_s = redist8_i_llvm_fpga_forked_kernel_3mm_b2_forked_kernel_3mm3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i5_fpga_indvars_iv14_pop22_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv14_pop22_kernel_3mm11_mux_x_s or i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm0_adapt_scalar_trunc4_sel_x_b or c_i5_870_q)
    begin
        unique case (i_llvm_fpga_pop_i5_fpga_indvars_iv14_pop22_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv14_pop22_kernel_3mm11_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i5_fpga_indvars_iv14_pop22_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv14_pop22_kernel_3mm11_mux_x_q = i_llvm_fpga_push_i5_fpga_indvars_iv14_push22_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i5_fpga_indvars_iv14_pop22_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv14_pop22_kernel_3mm11_mux_x_q = c_i5_870_q;
            default : i_llvm_fpga_pop_i5_fpga_indvars_iv14_pop22_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv14_pop22_kernel_3mm11_mux_x_q = 5'b0;
        endcase
    end

    // i_exitcond16_kernel_3mm12_cmp_nsign(LOGICAL,158)@4
    assign i_exitcond16_kernel_3mm12_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i5_fpga_indvars_iv14_pop22_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv14_pop22_kernel_3mm11_mux_x_q[4:4]));

    // i_llvm_fpga_push_i1_notexitcond54_kernel_3mm16(BLACKBOX,55)@4
    // in in_empty_in@20000000
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    kernel_3mm_i_llvm_fpga_push_i1_notexitcond54_0 thei_llvm_fpga_push_i1_notexitcond54_kernel_3mm16 (
        .in_almost_empty_in(GND_q),
        .in_data_in(i_exitcond16_kernel_3mm12_cmp_nsign_q),
        .in_empty_in(GND_q),
        .in_feedback_stall_in_14(i_llvm_fpga_pipeline_keep_going53_kernel_3mm6_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i1_notexitcond54_kernel_3mm16_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i1_notexitcond54_kernel_3mm16_out_feedback_valid_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_kernel_3mm_b2_dummy_kernel_3mm2(BLACKBOX,52)@0
    // in in_stall_in@20000000
    kernel_3mm_i_llvm_fpga_dummy_thread_b2_dummy_kernel_3mm0 thei_llvm_fpga_dummy_thread_kernel_3mm_b2_dummy_kernel_3mm2 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_kernel_3mm_b2_dummy_kernel_3mm2_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_i_llvm_fpga_dummy_thread_kernel_3mm_b2_dummy_kernel_3mm2_out_dummy_out_4(DELAY,168)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_i_llvm_fpga_dummy_thread_kernel_3mm_b2_dummy_kernel_3mm2_out_dummy_out_4_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_kernel_3mm_b2_dummy_kernel_3mm2_out_dummy_out);
            redist9_i_llvm_fpga_dummy_thread_kernel_3mm_b2_dummy_kernel_3mm2_out_dummy_out_4_delay_1 <= redist9_i_llvm_fpga_dummy_thread_kernel_3mm_b2_dummy_kernel_3mm2_out_dummy_out_4_delay_0;
            redist9_i_llvm_fpga_dummy_thread_kernel_3mm_b2_dummy_kernel_3mm2_out_dummy_out_4_delay_2 <= redist9_i_llvm_fpga_dummy_thread_kernel_3mm_b2_dummy_kernel_3mm2_out_dummy_out_4_delay_1;
            redist9_i_llvm_fpga_dummy_thread_kernel_3mm_b2_dummy_kernel_3mm2_out_dummy_out_4_q <= redist9_i_llvm_fpga_dummy_thread_kernel_3mm_b2_dummy_kernel_3mm2_out_dummy_out_4_delay_2;
        end
    end

    // i_llvm_fpga_forked_kernel_3mm_b2_forked_kernel_3mm3(BLACKBOX,53)@0
    // in in_stall_in@20000000
    kernel_3mm_i_llvm_fpga_forked_b2_forked_kernel_3mm0 thei_llvm_fpga_forked_kernel_3mm_b2_forked_kernel_3mm3 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_kernel_3mm_b2_forked_kernel_3mm3_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_i_llvm_fpga_forked_kernel_3mm_b2_forked_kernel_3mm3_out_buffer_out_4(DELAY,167)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_i_llvm_fpga_forked_kernel_3mm_b2_forked_kernel_3mm3_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_kernel_3mm_b2_forked_kernel_3mm3_out_buffer_out);
            redist8_i_llvm_fpga_forked_kernel_3mm_b2_forked_kernel_3mm3_out_buffer_out_4_delay_1 <= redist8_i_llvm_fpga_forked_kernel_3mm_b2_forked_kernel_3mm3_out_buffer_out_4_delay_0;
            redist8_i_llvm_fpga_forked_kernel_3mm_b2_forked_kernel_3mm3_out_buffer_out_4_delay_2 <= redist8_i_llvm_fpga_forked_kernel_3mm_b2_forked_kernel_3mm3_out_buffer_out_4_delay_1;
            redist8_i_llvm_fpga_forked_kernel_3mm_b2_forked_kernel_3mm3_out_buffer_out_4_q <= redist8_i_llvm_fpga_forked_kernel_3mm_b2_forked_kernel_3mm3_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pipeline_keep_going53_kernel_3mm6(BLACKBOX,54)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    kernel_3mm_i_llvm_fpga_pipeline_keep_going53_0 thei_llvm_fpga_pipeline_keep_going53_kernel_3mm6 (
        .in_data_in(redist8_i_llvm_fpga_forked_kernel_3mm_b2_forked_kernel_3mm3_out_buffer_out_4_q),
        .in_dummy_in(redist9_i_llvm_fpga_dummy_thread_kernel_3mm_b2_dummy_kernel_3mm2_out_dummy_out_4_q),
        .in_forked_in(redist8_i_llvm_fpga_forked_kernel_3mm_b2_forked_kernel_3mm3_out_buffer_out_4_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond54_kernel_3mm16_out_feedback_out_14),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond54_kernel_3mm16_out_feedback_valid_out_14),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going53_kernel_3mm6_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going53_kernel_3mm6_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going53_kernel_3mm6_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going53_kernel_3mm6_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going53_kernel_3mm6_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going53_kernel_3mm6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,58)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going53_kernel_3mm6_out_exiting_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,63)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going53_kernel_3mm6_out_pipeline_dummy_out;

    // dupName_1_regfree_osync_x(GPOUT,64)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going53_kernel_3mm6_out_pipeline_forked_out;

    // dupName_2_regfree_osync_x(GPOUT,65)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going53_kernel_3mm6_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,121)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist6_sync_together77_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_c_i7_03_x(CONSTANT,75)
    assign i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_c_i7_03_x_q = $unsigned(7'b0000000);

    // i_kernel_3mm_b2_next_iter_isreal_kernel_3mm7(LOGICAL,51)@4
    assign i_kernel_3mm_b2_next_iter_isreal_kernel_3mm7_q = i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b2_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b2_current_iter_isreal_kernel_3mm4_mux_x_q & i_llvm_fpga_pipeline_keep_going53_kernel_3mm6_out_data_out;

    // i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm0_element_extension2_x(BITJOIN,82)@4
    assign i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm0_element_extension2_x_q = {i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_c_i7_03_x_q, i_kernel_3mm_b2_next_iter_isreal_kernel_3mm7_q};

    // valid_fanout_reg4(REG,125)@0 + 1
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

    // valid_fanout_reg3(REG,124)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist5_sync_together77_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm1_x(FIFODELAY,83)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg4_q & i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm1_x_i_valid = valid_fanout_reg3_q & redist7_i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm1_x_i_data = i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm0_adapt_scalar_trunc4_sel_x(BITSELECT,85)@4
    assign i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm1_x_o_data[0:0];

    // i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b2_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b2_current_iter_isreal_kernel_3mm4_mux_x(MUX,66)@4
    assign i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b2_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b2_current_iter_isreal_kernel_3mm4_mux_x_s = redist8_i_llvm_fpga_forked_kernel_3mm_b2_forked_kernel_3mm3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b2_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b2_current_iter_isreal_kernel_3mm4_mux_x_s or i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm0_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b2_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b2_current_iter_isreal_kernel_3mm4_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b2_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b2_current_iter_isreal_kernel_3mm4_mux_x_q = i_llvm_fpga_push_i1_kernel_3mm_b2_next_iter_isreal_push_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b2_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b2_current_iter_isreal_kernel_3mm4_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b2_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b2_current_iter_isreal_kernel_3mm4_mux_x_q = 1'b0;
        endcase
    end

    // i_kernel_3mm_b2_current_iter_isspec_kernel_3mm5(LOGICAL,50)@4
    assign i_kernel_3mm_b2_current_iter_isspec_kernel_3mm5_q = i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b2_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b2_current_iter_isreal_kernel_3mm4_mux_x_q ^ VCC_q;

    // redist4_sync_together77_aunroll_x_in_c0_eni6_6_tpl_4(DELAY,163)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_together77_aunroll_x_in_c0_eni6_6_tpl_4_delay_0 <= $unsigned(in_c0_eni6_6_tpl);
            redist4_sync_together77_aunroll_x_in_c0_eni6_6_tpl_4_delay_1 <= redist4_sync_together77_aunroll_x_in_c0_eni6_6_tpl_4_delay_0;
            redist4_sync_together77_aunroll_x_in_c0_eni6_6_tpl_4_delay_2 <= redist4_sync_together77_aunroll_x_in_c0_eni6_6_tpl_4_delay_1;
            redist4_sync_together77_aunroll_x_in_c0_eni6_6_tpl_4_q <= redist4_sync_together77_aunroll_x_in_c0_eni6_6_tpl_4_delay_2;
        end
    end

    // redist3_sync_together77_aunroll_x_in_c0_eni6_5_tpl_4(DELAY,162)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together77_aunroll_x_in_c0_eni6_5_tpl_4_delay_0 <= $unsigned(in_c0_eni6_5_tpl);
            redist3_sync_together77_aunroll_x_in_c0_eni6_5_tpl_4_delay_1 <= redist3_sync_together77_aunroll_x_in_c0_eni6_5_tpl_4_delay_0;
            redist3_sync_together77_aunroll_x_in_c0_eni6_5_tpl_4_delay_2 <= redist3_sync_together77_aunroll_x_in_c0_eni6_5_tpl_4_delay_1;
            redist3_sync_together77_aunroll_x_in_c0_eni6_5_tpl_4_q <= redist3_sync_together77_aunroll_x_in_c0_eni6_5_tpl_4_delay_2;
        end
    end

    // redist2_sync_together77_aunroll_x_in_c0_eni6_4_tpl_4(DELAY,161)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together77_aunroll_x_in_c0_eni6_4_tpl_4_delay_0 <= $unsigned(in_c0_eni6_4_tpl);
            redist2_sync_together77_aunroll_x_in_c0_eni6_4_tpl_4_delay_1 <= redist2_sync_together77_aunroll_x_in_c0_eni6_4_tpl_4_delay_0;
            redist2_sync_together77_aunroll_x_in_c0_eni6_4_tpl_4_delay_2 <= redist2_sync_together77_aunroll_x_in_c0_eni6_4_tpl_4_delay_1;
            redist2_sync_together77_aunroll_x_in_c0_eni6_4_tpl_4_q <= redist2_sync_together77_aunroll_x_in_c0_eni6_4_tpl_4_delay_2;
        end
    end

    // redist1_sync_together77_aunroll_x_in_c0_eni6_3_tpl_4(DELAY,160)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together77_aunroll_x_in_c0_eni6_3_tpl_4_delay_0 <= $unsigned(in_c0_eni6_3_tpl);
            redist1_sync_together77_aunroll_x_in_c0_eni6_3_tpl_4_delay_1 <= redist1_sync_together77_aunroll_x_in_c0_eni6_3_tpl_4_delay_0;
            redist1_sync_together77_aunroll_x_in_c0_eni6_3_tpl_4_delay_2 <= redist1_sync_together77_aunroll_x_in_c0_eni6_3_tpl_4_delay_1;
            redist1_sync_together77_aunroll_x_in_c0_eni6_3_tpl_4_q <= redist1_sync_together77_aunroll_x_in_c0_eni6_3_tpl_4_delay_2;
        end
    end

    // redist0_sync_together77_aunroll_x_in_c0_eni6_2_tpl_4(DELAY,159)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together77_aunroll_x_in_c0_eni6_2_tpl_4_delay_0 <= $unsigned(in_c0_eni6_2_tpl);
            redist0_sync_together77_aunroll_x_in_c0_eni6_2_tpl_4_delay_1 <= redist0_sync_together77_aunroll_x_in_c0_eni6_2_tpl_4_delay_0;
            redist0_sync_together77_aunroll_x_in_c0_eni6_2_tpl_4_delay_2 <= redist0_sync_together77_aunroll_x_in_c0_eni6_2_tpl_4_delay_1;
            redist0_sync_together77_aunroll_x_in_c0_eni6_2_tpl_4_q <= redist0_sync_together77_aunroll_x_in_c0_eni6_2_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm0_element_extension2_x(BITJOIN,100)@4
    assign i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm0_element_extension2_x_q = {i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_c_i7_03_x_q, i_llvm_fpga_pop_i1_memdep_phi5_pop2076_pop28_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2076_pop28_kernel_3mm27_mux_x_q};

    // valid_fanout_reg26(REG,147)@0 + 1
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

    // valid_fanout_reg25(REG,146)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(redist5_sync_together77_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm1_x(FIFODELAY,101)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg26_q & i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm1_x_i_valid = valid_fanout_reg25_q & redist7_i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm1_x_i_data = i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm0_adapt_scalar_trunc4_sel_x(BITSELECT,103)@4
    assign i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_memdep_phi5_pop2076_pop28_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2076_pop28_kernel_3mm27_mux_x(MUX,70)@4
    assign i_llvm_fpga_pop_i1_memdep_phi5_pop2076_pop28_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2076_pop28_kernel_3mm27_mux_x_s = redist8_i_llvm_fpga_forked_kernel_3mm_b2_forked_kernel_3mm3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i1_memdep_phi5_pop2076_pop28_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2076_pop28_kernel_3mm27_mux_x_s or i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm0_adapt_scalar_trunc4_sel_x_b or redist4_sync_together77_aunroll_x_in_c0_eni6_6_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i1_memdep_phi5_pop2076_pop28_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2076_pop28_kernel_3mm27_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_memdep_phi5_pop2076_pop28_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2076_pop28_kernel_3mm27_mux_x_q = i_llvm_fpga_push_i1_memdep_phi5_pop2076_push28_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_memdep_phi5_pop2076_pop28_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2076_pop28_kernel_3mm27_mux_x_q = redist4_sync_together77_aunroll_x_in_c0_eni6_6_tpl_4_q;
            default : i_llvm_fpga_pop_i1_memdep_phi5_pop2076_pop28_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2076_pop28_kernel_3mm27_mux_x_q = 1'b0;
        endcase
    end

    // i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm0_element_extension2_x(BITJOIN,94)@4
    assign i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm0_element_extension2_x_q = {i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_c_i7_03_x_q, i_llvm_fpga_pop_i1_memdep_phi3_pop1972_pop27_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi3_pop1972_pop27_kernel_3mm25_mux_x_q};

    // valid_fanout_reg23(REG,144)@0 + 1
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

    // valid_fanout_reg22(REG,143)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist5_sync_together77_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm1_x(FIFODELAY,95)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg23_q & i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm1_x_i_valid = valid_fanout_reg22_q & redist7_i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm1_x_i_data = i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm0_adapt_scalar_trunc4_sel_x(BITSELECT,97)@4
    assign i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_memdep_phi3_pop1972_pop27_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi3_pop1972_pop27_kernel_3mm25_mux_x(MUX,69)@4
    assign i_llvm_fpga_pop_i1_memdep_phi3_pop1972_pop27_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi3_pop1972_pop27_kernel_3mm25_mux_x_s = redist8_i_llvm_fpga_forked_kernel_3mm_b2_forked_kernel_3mm3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i1_memdep_phi3_pop1972_pop27_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi3_pop1972_pop27_kernel_3mm25_mux_x_s or i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm0_adapt_scalar_trunc4_sel_x_b or redist3_sync_together77_aunroll_x_in_c0_eni6_5_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i1_memdep_phi3_pop1972_pop27_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi3_pop1972_pop27_kernel_3mm25_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_memdep_phi3_pop1972_pop27_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi3_pop1972_pop27_kernel_3mm25_mux_x_q = i_llvm_fpga_push_i1_memdep_phi3_pop1972_push27_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_memdep_phi3_pop1972_pop27_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi3_pop1972_pop27_kernel_3mm25_mux_x_q = redist3_sync_together77_aunroll_x_in_c0_eni6_5_tpl_4_q;
            default : i_llvm_fpga_pop_i1_memdep_phi3_pop1972_pop27_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi3_pop1972_pop27_kernel_3mm25_mux_x_q = 1'b0;
        endcase
    end

    // i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm0_element_extension2_x(BITJOIN,88)@4
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm0_element_extension2_x_q = {i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_c_i7_03_x_q, i_llvm_fpga_pop_i1_memdep_phi2_pop1868_pop26_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi2_pop1868_pop26_kernel_3mm23_mux_x_q};

    // valid_fanout_reg20(REG,141)@0 + 1
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

    // valid_fanout_reg19(REG,140)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist5_sync_together77_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm1_x(FIFODELAY,89)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg20_q & i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm1_x_i_valid = valid_fanout_reg19_q & redist7_i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm1_x_i_data = i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm0_adapt_scalar_trunc4_sel_x(BITSELECT,91)@4
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_memdep_phi2_pop1868_pop26_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi2_pop1868_pop26_kernel_3mm23_mux_x(MUX,68)@4
    assign i_llvm_fpga_pop_i1_memdep_phi2_pop1868_pop26_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi2_pop1868_pop26_kernel_3mm23_mux_x_s = redist8_i_llvm_fpga_forked_kernel_3mm_b2_forked_kernel_3mm3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i1_memdep_phi2_pop1868_pop26_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi2_pop1868_pop26_kernel_3mm23_mux_x_s or i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm0_adapt_scalar_trunc4_sel_x_b or redist2_sync_together77_aunroll_x_in_c0_eni6_4_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i1_memdep_phi2_pop1868_pop26_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi2_pop1868_pop26_kernel_3mm23_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_memdep_phi2_pop1868_pop26_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi2_pop1868_pop26_kernel_3mm23_mux_x_q = i_llvm_fpga_push_i1_memdep_phi2_pop1868_push26_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_memdep_phi2_pop1868_pop26_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi2_pop1868_pop26_kernel_3mm23_mux_x_q = redist2_sync_together77_aunroll_x_in_c0_eni6_4_tpl_4_q;
            default : i_llvm_fpga_pop_i1_memdep_phi2_pop1868_pop26_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi2_pop1868_pop26_kernel_3mm23_mux_x_q = 1'b0;
        endcase
    end

    // i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm0_element_extension2_x(BITJOIN,106)@4
    assign i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm0_element_extension2_x_q = {i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_c_i7_03_x_q, i_llvm_fpga_pop_i1_memdep_phi_pop1764_pop25_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1764_pop25_kernel_3mm21_mux_x_q};

    // valid_fanout_reg17(REG,138)@0 + 1
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

    // valid_fanout_reg16(REG,137)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist5_sync_together77_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm1_x(FIFODELAY,107)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg17_q & i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm1_x_i_valid = valid_fanout_reg16_q & redist7_i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm1_x_i_data = i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm0_adapt_scalar_trunc4_sel_x(BITSELECT,109)@4
    assign i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_memdep_phi_pop1764_pop25_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1764_pop25_kernel_3mm21_mux_x(MUX,71)@4
    assign i_llvm_fpga_pop_i1_memdep_phi_pop1764_pop25_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1764_pop25_kernel_3mm21_mux_x_s = redist8_i_llvm_fpga_forked_kernel_3mm_b2_forked_kernel_3mm3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i1_memdep_phi_pop1764_pop25_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1764_pop25_kernel_3mm21_mux_x_s or i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm0_adapt_scalar_trunc4_sel_x_b or redist1_sync_together77_aunroll_x_in_c0_eni6_3_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i1_memdep_phi_pop1764_pop25_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1764_pop25_kernel_3mm21_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_memdep_phi_pop1764_pop25_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1764_pop25_kernel_3mm21_mux_x_q = i_llvm_fpga_push_i1_memdep_phi_pop1764_push25_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_memdep_phi_pop1764_pop25_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1764_pop25_kernel_3mm21_mux_x_q = redist1_sync_together77_aunroll_x_in_c0_eni6_3_tpl_4_q;
            default : i_llvm_fpga_pop_i1_memdep_phi_pop1764_pop25_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1764_pop25_kernel_3mm21_mux_x_q = 1'b0;
        endcase
    end

    // i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_element_extension2_x(BITJOIN,76)@4
    assign i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_element_extension2_x_q = {i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_c_i7_03_x_q, i_llvm_fpga_pop_i1_forked60_pop24_kernel_3mm0_i_llvm_fpga_pop_i1_forked60_pop24_kernel_3mm19_mux_x_q};

    // valid_fanout_reg14(REG,135)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg13(REG,134)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist5_sync_together77_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_i_llvm_fpga_push_i1_forked60_push24_kernel_3mm1_x(FIFODELAY,77)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_i_llvm_fpga_push_i1_forked60_push24_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg14_q & i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_i_llvm_fpga_push_i1_forked60_push24_kernel_3mm1_x_i_valid = valid_fanout_reg13_q & redist7_i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_i_llvm_fpga_push_i1_forked60_push24_kernel_3mm1_x_i_data = i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_i_llvm_fpga_push_i1_forked60_push24_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_i_llvm_fpga_push_i1_forked60_push24_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_i_llvm_fpga_push_i1_forked60_push24_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_i_llvm_fpga_push_i1_forked60_push24_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_i_llvm_fpga_push_i1_forked60_push24_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_i_llvm_fpga_push_i1_forked60_push24_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_i_llvm_fpga_push_i1_forked60_push24_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_i_llvm_fpga_push_i1_forked60_push24_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_adapt_scalar_trunc4_sel_x(BITSELECT,79)@4
    assign i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_i_llvm_fpga_push_i1_forked60_push24_kernel_3mm1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_forked60_pop24_kernel_3mm0_i_llvm_fpga_pop_i1_forked60_pop24_kernel_3mm19_mux_x(MUX,67)@4
    assign i_llvm_fpga_pop_i1_forked60_pop24_kernel_3mm0_i_llvm_fpga_pop_i1_forked60_pop24_kernel_3mm19_mux_x_s = redist8_i_llvm_fpga_forked_kernel_3mm_b2_forked_kernel_3mm3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i1_forked60_pop24_kernel_3mm0_i_llvm_fpga_pop_i1_forked60_pop24_kernel_3mm19_mux_x_s or i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_adapt_scalar_trunc4_sel_x_b or redist0_sync_together77_aunroll_x_in_c0_eni6_2_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i1_forked60_pop24_kernel_3mm0_i_llvm_fpga_pop_i1_forked60_pop24_kernel_3mm19_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_forked60_pop24_kernel_3mm0_i_llvm_fpga_pop_i1_forked60_pop24_kernel_3mm19_mux_x_q = i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_forked60_pop24_kernel_3mm0_i_llvm_fpga_pop_i1_forked60_pop24_kernel_3mm19_mux_x_q = redist0_sync_together77_aunroll_x_in_c0_eni6_2_tpl_4_q;
            default : i_llvm_fpga_pop_i1_forked60_pop24_kernel_3mm0_i_llvm_fpga_pop_i1_forked60_pop24_kernel_3mm19_mux_x_q = 1'b0;
        endcase
    end

    // i_notcmp51_kernel_3mm15(LOGICAL,56)@4
    assign i_notcmp51_kernel_3mm15_q = i_exitcond16_kernel_3mm12_cmp_nsign_q ^ VCC_q;

    // c_i32_068(CONSTANT,43)
    assign c_i32_068_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_169(CONSTANT,44)
    assign c_i32_169_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc32_kernel_3mm10(ADD,49)@4
    assign i_inc32_kernel_3mm10_a = {1'b0, i_llvm_fpga_pop_i32_i_060_pop23_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop23_kernel_3mm9_mux_x_q};
    assign i_inc32_kernel_3mm10_b = {1'b0, c_i32_169_q};
    assign i_inc32_kernel_3mm10_o = $unsigned(i_inc32_kernel_3mm10_a) + $unsigned(i_inc32_kernel_3mm10_b);
    assign i_inc32_kernel_3mm10_q = i_inc32_kernel_3mm10_o[32:0];

    // bgTrunc_i_inc32_kernel_3mm10_sel_x(BITSELECT,61)@4
    assign bgTrunc_i_inc32_kernel_3mm10_sel_x_b = i_inc32_kernel_3mm10_q[31:0];

    // valid_fanout_reg8(REG,129)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg7(REG,128)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist5_sync_together77_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_i_060_push23_kernel_3mm0_i_llvm_fpga_push_i32_i_060_push23_kernel_3mm1_x(FIFODELAY,110)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_i_060_push23_kernel_3mm0_i_llvm_fpga_push_i32_i_060_push23_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg8_q & i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_i_060_push23_kernel_3mm0_i_llvm_fpga_push_i32_i_060_push23_kernel_3mm1_x_i_valid = valid_fanout_reg7_q & redist7_i_llvm_fpga_push_i1_forked60_push24_kernel_3mm0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_i_060_push23_kernel_3mm0_i_llvm_fpga_push_i32_i_060_push23_kernel_3mm1_x_i_data = bgTrunc_i_inc32_kernel_3mm10_sel_x_b;
    assign i_llvm_fpga_push_i32_i_060_push23_kernel_3mm0_i_llvm_fpga_push_i32_i_060_push23_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_i_060_push23_kernel_3mm0_i_llvm_fpga_push_i32_i_060_push23_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_i_060_push23_kernel_3mm0_i_llvm_fpga_push_i32_i_060_push23_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_i_060_push23_kernel_3mm0_i_llvm_fpga_push_i32_i_060_push23_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_i_060_push23_kernel_3mm0_i_llvm_fpga_push_i32_i_060_push23_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i32_i_060_push23_kernel_3mm0_i_llvm_fpga_push_i32_i_060_push23_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_i_060_push23_kernel_3mm0_i_llvm_fpga_push_i32_i_060_push23_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_inc32_kernel_3mm10_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_i_060_push23_kernel_3mm0_i_llvm_fpga_push_i32_i_060_push23_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_060_pop23_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop23_kernel_3mm9_mux_x(MUX,72)@4
    assign i_llvm_fpga_pop_i32_i_060_pop23_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop23_kernel_3mm9_mux_x_s = redist8_i_llvm_fpga_forked_kernel_3mm_b2_forked_kernel_3mm3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_i_060_pop23_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop23_kernel_3mm9_mux_x_s or i_llvm_fpga_push_i32_i_060_push23_kernel_3mm0_i_llvm_fpga_push_i32_i_060_push23_kernel_3mm1_x_o_data or c_i32_068_q)
    begin
        unique case (i_llvm_fpga_pop_i32_i_060_pop23_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop23_kernel_3mm9_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_i_060_pop23_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop23_kernel_3mm9_mux_x_q = i_llvm_fpga_push_i32_i_060_push23_kernel_3mm0_i_llvm_fpga_push_i32_i_060_push23_kernel_3mm1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_i_060_pop23_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop23_kernel_3mm9_mux_x_q = c_i32_068_q;
            default : i_llvm_fpga_pop_i32_i_060_pop23_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop23_kernel_3mm9_mux_x_q = 32'b0;
        endcase
    end

    // sync_out_aunroll_x(GPOUT,119)@4
    assign out_c0_exi13_0_tpl = GND_q;
    assign out_c0_exi13_1_tpl = i_llvm_fpga_pop_i32_i_060_pop23_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop23_kernel_3mm9_mux_x_q;
    assign out_c0_exi13_2_tpl = i_exitcond16_kernel_3mm12_cmp_nsign_q;
    assign out_c0_exi13_3_tpl = i_notcmp51_kernel_3mm15_q;
    assign out_c0_exi13_4_tpl = i_llvm_fpga_pop_i1_forked60_pop24_kernel_3mm0_i_llvm_fpga_pop_i1_forked60_pop24_kernel_3mm19_mux_x_q;
    assign out_c0_exi13_5_tpl = i_llvm_fpga_pop_i1_memdep_phi_pop1764_pop25_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1764_pop25_kernel_3mm21_mux_x_q;
    assign out_c0_exi13_6_tpl = i_llvm_fpga_pop_i1_memdep_phi2_pop1868_pop26_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi2_pop1868_pop26_kernel_3mm23_mux_x_q;
    assign out_c0_exi13_7_tpl = i_llvm_fpga_pop_i1_memdep_phi3_pop1972_pop27_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi3_pop1972_pop27_kernel_3mm25_mux_x_q;
    assign out_c0_exi13_8_tpl = i_llvm_fpga_pop_i1_memdep_phi5_pop2076_pop28_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2076_pop28_kernel_3mm27_mux_x_q;
    assign out_c0_exi13_9_tpl = redist0_sync_together77_aunroll_x_in_c0_eni6_2_tpl_4_q;
    assign out_c0_exi13_10_tpl = redist1_sync_together77_aunroll_x_in_c0_eni6_3_tpl_4_q;
    assign out_c0_exi13_11_tpl = redist2_sync_together77_aunroll_x_in_c0_eni6_4_tpl_4_q;
    assign out_c0_exi13_12_tpl = redist3_sync_together77_aunroll_x_in_c0_eni6_5_tpl_4_q;
    assign out_c0_exi13_13_tpl = redist4_sync_together77_aunroll_x_in_c0_eni6_6_tpl_4_q;
    assign out_kernel_3mm_B2_current_iter_isspec = i_kernel_3mm_b2_current_iter_isspec_kernel_3mm5_q;
    assign out_o_valid = valid_fanout_reg0_q;

endmodule
