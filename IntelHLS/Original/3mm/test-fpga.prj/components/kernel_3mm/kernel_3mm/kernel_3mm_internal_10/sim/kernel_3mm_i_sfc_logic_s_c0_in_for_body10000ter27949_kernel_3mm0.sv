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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body10_kernel_3mms_c0_enter27949_kernel_3mm0
// Created for function/kernel kernel_3mm
// SystemVerilog created on Thu Apr 27 14:26:50 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_i_sfc_logic_s_c0_in_for_body10000ter27949_kernel_3mm0 (
    input wire [31:0] in_unnamed_kernel_3mm1_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm1_kernel_3mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_3mm1_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm1_kernel_3mm_avm_readdatavalid,
    output wire [31:0] out_unnamed_kernel_3mm1_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm1_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm1_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm1_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm1_kernel_3mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_3mm1_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm1_kernel_3mm_avm_burstcount,
    input wire [0:0] in_flush,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi25_0_tpl,
    output wire [31:0] out_c0_exi25_1_tpl,
    output wire [63:0] out_c0_exi25_2_tpl,
    output wire [63:0] out_c0_exi25_3_tpl,
    output wire [63:0] out_c0_exi25_4_tpl,
    output wire [0:0] out_c0_exi25_5_tpl,
    output wire [31:0] out_c0_exi25_6_tpl,
    output wire [0:0] out_c0_exi25_7_tpl,
    output wire [0:0] out_c0_exi25_8_tpl,
    output wire [0:0] out_c0_exi25_9_tpl,
    output wire [0:0] out_c0_exi25_10_tpl,
    output wire [0:0] out_c0_exi25_11_tpl,
    output wire [0:0] out_c0_exi25_12_tpl,
    output wire [0:0] out_c0_exi25_13_tpl,
    output wire [0:0] out_c0_exi25_14_tpl,
    output wire [0:0] out_c0_exi25_15_tpl,
    output wire [0:0] out_c0_exi25_16_tpl,
    output wire [0:0] out_c0_exi25_17_tpl,
    output wire [0:0] out_c0_exi25_18_tpl,
    output wire [31:0] out_c0_exi25_19_tpl,
    output wire [0:0] out_c0_exi25_20_tpl,
    output wire [0:0] out_c0_exi25_21_tpl,
    output wire [0:0] out_c0_exi25_22_tpl,
    output wire [0:0] out_c0_exi25_23_tpl,
    output wire [0:0] out_c0_exi25_24_tpl,
    output wire [0:0] out_c0_exi25_25_tpl,
    output wire [0:0] out_kernel_3mm_B3_current_iter_isspec,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni13_0_tpl,
    input wire [31:0] in_c0_eni13_1_tpl,
    input wire [0:0] in_c0_eni13_2_tpl,
    input wire [0:0] in_c0_eni13_3_tpl,
    input wire [0:0] in_c0_eni13_4_tpl,
    input wire [0:0] in_c0_eni13_5_tpl,
    input wire [0:0] in_c0_eni13_6_tpl,
    input wire [0:0] in_c0_eni13_7_tpl,
    input wire [0:0] in_c0_eni13_8_tpl,
    input wire [0:0] in_c0_eni13_9_tpl,
    input wire [0:0] in_c0_eni13_10_tpl,
    input wire [0:0] in_c0_eni13_11_tpl,
    input wire [0:0] in_c0_eni13_12_tpl,
    input wire [0:0] in_c0_eni13_13_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_086_q;
    wire [31:0] c_i32_190_q;
    wire [4:0] c_i5_189_q;
    wire [4:0] c_i5_887_q;
    wire [63:0] c_kernel_3mm_E_local_pmem_q;
    wire [1:0] i_arrayidx121_kernel_3mm13_vt_const_1_q;
    wire [63:0] i_arrayidx121_kernel_3mm13_vt_join_q;
    wire [61:0] i_arrayidx121_kernel_3mm13_vt_select_63_b;
    wire [5:0] i_fpga_indvars_iv_next12_kernel_3mm23_a;
    wire [5:0] i_fpga_indvars_iv_next12_kernel_3mm23_b;
    logic [5:0] i_fpga_indvars_iv_next12_kernel_3mm23_o;
    wire [5:0] i_fpga_indvars_iv_next12_kernel_3mm23_q;
    wire [63:0] i_idxprom11_kernel_3mm12_vt_join_q;
    wire [31:0] i_idxprom11_kernel_3mm12_vt_select_31_b;
    wire [63:0] i_idxprom_kernel_3mm10_vt_join_q;
    wire [31:0] i_idxprom_kernel_3mm10_vt_select_31_b;
    wire [32:0] i_inc29_kernel_3mm25_a;
    wire [32:0] i_inc29_kernel_3mm25_b;
    logic [32:0] i_inc29_kernel_3mm25_o;
    wire [32:0] i_inc29_kernel_3mm25_q;
    wire [0:0] i_kernel_3mm_b3_current_iter_isspec_kernel_3mm5_q;
    wire [0:0] i_kernel_3mm_b3_next_iter_isreal_kernel_3mm7_q;
    wire [0:0] i_llvm_fpga_dummy_thread_kernel_3mm_b3_dummy_kernel_3mm2_out_dummy_out;
    wire [0:0] i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm1_kernel_3mm15_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm1_kernel_3mm15_out_unnamed_kernel_3mm1_kernel_3mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm1_kernel_3mm15_out_unnamed_kernel_3mm1_kernel_3mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_kernel_3mm1_kernel_3mm15_out_unnamed_kernel_3mm1_kernel_3mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm1_kernel_3mm15_out_unnamed_kernel_3mm1_kernel_3mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm1_kernel_3mm15_out_unnamed_kernel_3mm1_kernel_3mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm1_kernel_3mm15_out_unnamed_kernel_3mm1_kernel_3mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm1_kernel_3mm15_out_unnamed_kernel_3mm1_kernel_3mm_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_kernel_3mm6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_kernel_3mm6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_kernel_3mm6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_kernel_3mm6_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_kernel_3mm6_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_kernel_3mm6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond49_kernel_3mm22_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond49_kernel_3mm22_out_feedback_valid_out_12;
    wire [0:0] i_notcmp46_kernel_3mm21_q;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next12_kernel_3mm23_sel_x_b;
    wire [31:0] bgTrunc_i_inc29_kernel_3mm25_sel_x_b;
    wire [9:0] i_arrayidx121_kernel_3mm0_add_x_a;
    wire [9:0] i_arrayidx121_kernel_3mm0_add_x_b;
    logic [9:0] i_arrayidx121_kernel_3mm0_add_x_o;
    wire [9:0] i_arrayidx121_kernel_3mm0_add_x_q;
    wire [63:0] i_arrayidx121_kernel_3mm0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx121_kernel_3mm0_narrow_x_b;
    wire [8:0] i_arrayidx121_kernel_3mm0_shift_join_x_q;
    wire [9:0] i_arrayidx121_kernel_3mm0_dupName_0_add_x_a;
    wire [9:0] i_arrayidx121_kernel_3mm0_dupName_0_add_x_b;
    logic [9:0] i_arrayidx121_kernel_3mm0_dupName_0_add_x_o;
    wire [9:0] i_arrayidx121_kernel_3mm0_dupName_0_add_x_q;
    wire [17:0] i_arrayidx121_kernel_3mm0_mult_extender_x_q;
    wire [2:0] i_arrayidx121_kernel_3mm0_mult_multconst_x_q;
    wire [8:0] i_arrayidx121_kernel_3mm0_dupName_0_trunc_sel_x_b;
    wire [8:0] i_arrayidx121_kernel_3mm0_dupName_1_trunc_sel_x_b;
    wire [8:0] i_arrayidx121_kernel_3mm0_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx121_kernel_3mm0_dupName_3_trunc_sel_x_b;
    wire [8:0] i_arrayidx121_kernel_3mm0_dupName_5_trunc_sel_x_b;
    wire [63:0] i_idxprom11_kernel_3mm12_sel_x_b;
    wire [63:0] i_idxprom_kernel_3mm10_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b3_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b3_current_iter_isreal_kernel_3mm4_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b3_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b3_current_iter_isreal_kernel_3mm4_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_forked61_pop34_kernel_3mm0_i_llvm_fpga_pop_i1_forked61_pop34_kernel_3mm27_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_forked61_pop34_kernel_3mm0_i_llvm_fpga_pop_i1_forked61_pop34_kernel_3mm27_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1869_pop36_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi2_pop1869_pop36_kernel_3mm29_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1869_pop36_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi2_pop1869_pop36_kernel_3mm29_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop1973_pop37_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi3_pop1973_pop37_kernel_3mm31_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop1973_pop37_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi3_pop1973_pop37_kernel_3mm31_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi5_pop2077_pop38_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2077_pop38_kernel_3mm33_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi5_pop2077_pop38_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2077_pop38_kernel_3mm33_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm14_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm14_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp5188_pop40_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp5188_pop40_kernel_3mm35_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_notcmp5188_pop40_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp5188_pop40_kernel_3mm35_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_j_059_pop33_kernel_3mm0_i_llvm_fpga_pop_i32_j_059_pop33_kernel_3mm11_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_j_059_pop33_kernel_3mm0_i_llvm_fpga_pop_i32_j_059_pop33_kernel_3mm11_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv11_pop32_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv11_pop32_kernel_3mm16_mux_x_s;
    reg [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv11_pop32_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv11_pop32_kernel_3mm16_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_c_i7_03_x_q;
    wire [7:0] i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_i_060_pop2385_push39_kernel_3mm0_i_llvm_fpga_push_i32_i_060_pop2385_push39_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i32_i_060_pop2385_push39_kernel_3mm0_i_llvm_fpga_push_i32_i_060_pop2385_push39_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_i_060_pop2385_push39_kernel_3mm0_i_llvm_fpga_push_i32_i_060_pop2385_push39_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i32_i_060_pop2385_push39_kernel_3mm0_i_llvm_fpga_push_i32_i_060_pop2385_push39_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_i_060_pop2385_push39_kernel_3mm0_i_llvm_fpga_push_i32_i_060_pop2385_push39_kernel_3mm1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_i_060_pop2385_push39_kernel_3mm0_i_llvm_fpga_push_i32_i_060_pop2385_push39_kernel_3mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_j_059_push33_kernel_3mm0_i_llvm_fpga_push_i32_j_059_push33_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i32_j_059_push33_kernel_3mm0_i_llvm_fpga_push_i32_j_059_push33_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_j_059_push33_kernel_3mm0_i_llvm_fpga_push_i32_j_059_push33_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i32_j_059_push33_kernel_3mm0_i_llvm_fpga_push_i32_j_059_push33_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_j_059_push33_kernel_3mm0_i_llvm_fpga_push_i32_j_059_push33_kernel_3mm1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_j_059_push33_kernel_3mm0_i_llvm_fpga_push_i32_j_059_push33_kernel_3mm1_x_o_data;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm1_x_o_data;
    wire [4:0] i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg8_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg10_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg11_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg12_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg13_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg14_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg15_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg16_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg17_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg18_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg20_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg21_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg23_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg24_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg26_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg27_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg29_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg30_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg32_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg33_q;
    wire [0:0] i_exitcond13_kernel_3mm17_cmp_nsign_q;
    wire [9:0] addsumAHighB_uid242_i_arrayidx121_kernel_3mm0_mult_x_a;
    wire [9:0] addsumAHighB_uid242_i_arrayidx121_kernel_3mm0_mult_x_b;
    logic [9:0] addsumAHighB_uid242_i_arrayidx121_kernel_3mm0_mult_x_o;
    wire [9:0] addsumAHighB_uid242_i_arrayidx121_kernel_3mm0_mult_x_q;
    wire [11:0] add_uid243_i_arrayidx121_kernel_3mm0_mult_x_q;
    wire [14:0] sR_mergedSignalTM_uid248_i_arrayidx121_kernel_3mm0_mult_x_q;
    wire [54:0] i_arrayidx121_kernel_3mm0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx121_kernel_3mm0_upper_bits_x_merged_bit_select_c;
    wire [1:0] lowRangeB_uid240_i_arrayidx121_kernel_3mm0_mult_x_merged_bit_select_b;
    wire [6:0] lowRangeB_uid240_i_arrayidx121_kernel_3mm0_mult_x_merged_bit_select_c;
    reg [54:0] redist0_i_arrayidx121_kernel_3mm0_upper_bits_x_merged_bit_select_b_1_q;
    reg [0:0] redist1_i_exitcond13_kernel_3mm17_cmp_nsign_q_6_q;
    reg [0:0] redist2_valid_fanout_reg0_q_1_q;
    reg [31:0] redist3_sync_together97_aunroll_x_in_c0_eni13_1_tpl_4_q;
    reg [31:0] redist3_sync_together97_aunroll_x_in_c0_eni13_1_tpl_4_delay_0;
    reg [31:0] redist3_sync_together97_aunroll_x_in_c0_eni13_1_tpl_4_delay_1;
    reg [0:0] redist5_sync_together97_aunroll_x_in_c0_eni13_3_tpl_6_q;
    reg [0:0] redist6_sync_together97_aunroll_x_in_c0_eni13_3_tpl_10_q;
    reg [0:0] redist6_sync_together97_aunroll_x_in_c0_eni13_3_tpl_10_delay_0;
    reg [0:0] redist6_sync_together97_aunroll_x_in_c0_eni13_3_tpl_10_delay_1;
    reg [0:0] redist6_sync_together97_aunroll_x_in_c0_eni13_3_tpl_10_delay_2;
    reg [0:0] redist7_sync_together97_aunroll_x_in_c0_eni13_4_tpl_10_q;
    reg [0:0] redist8_sync_together97_aunroll_x_in_c0_eni13_5_tpl_10_q;
    reg [0:0] redist9_sync_together97_aunroll_x_in_c0_eni13_6_tpl_10_q;
    reg [0:0] redist10_sync_together97_aunroll_x_in_c0_eni13_7_tpl_10_q;
    reg [0:0] redist11_sync_together97_aunroll_x_in_c0_eni13_8_tpl_10_q;
    reg [0:0] redist12_sync_together97_aunroll_x_in_c0_eni13_9_tpl_10_q;
    reg [0:0] redist13_sync_together97_aunroll_x_in_c0_eni13_10_tpl_10_q;
    reg [0:0] redist14_sync_together97_aunroll_x_in_c0_eni13_11_tpl_10_q;
    reg [0:0] redist15_sync_together97_aunroll_x_in_c0_eni13_12_tpl_10_q;
    reg [0:0] redist16_sync_together97_aunroll_x_in_c0_eni13_13_tpl_10_q;
    reg [0:0] redist17_sync_together97_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist17_sync_together97_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist18_sync_together97_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist19_sync_together97_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist20_sync_together97_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist21_sync_together97_aunroll_x_in_i_valid_6_q;
    reg [0:0] redist22_sync_together97_aunroll_x_in_i_valid_8_q;
    reg [0:0] redist22_sync_together97_aunroll_x_in_i_valid_8_delay_0;
    reg [0:0] redist23_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_2_q;
    reg [0:0] redist23_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_2_delay_0;
    reg [0:0] redist24_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_4_q;
    reg [0:0] redist24_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_4_delay_0;
    reg [0:0] redist25_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_5_q;
    reg [0:0] redist26_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_6_q;
    reg [0:0] redist27_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_8_q;
    reg [0:0] redist27_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_8_delay_0;
    reg [0:0] redist29_i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm14_mux_x_q_1_q;
    reg [0:0] redist30_i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm14_mux_x_q_4_q;
    reg [0:0] redist30_i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm14_mux_x_q_4_delay_0;
    reg [0:0] redist30_i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm14_mux_x_q_4_delay_1;
    reg [8:0] redist31_i_arrayidx121_kernel_3mm0_dupName_2_trunc_sel_x_b_1_q;
    reg [8:0] redist32_i_arrayidx121_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q;
    reg [0:0] redist33_i_llvm_fpga_pipeline_keep_going48_kernel_3mm6_out_data_out_2_q;
    reg [0:0] redist33_i_llvm_fpga_pipeline_keep_going48_kernel_3mm6_out_data_out_2_delay_0;
    reg [0:0] redist34_i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out_4_q;
    reg [0:0] redist34_i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out_4_delay_0;
    reg [0:0] redist34_i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out_4_delay_1;
    reg [0:0] redist34_i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out_4_delay_2;
    reg [0:0] redist35_i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out_6_q;
    reg [0:0] redist35_i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out_6_delay_0;
    reg [0:0] redist36_i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out_10_q;
    reg [0:0] redist36_i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out_10_delay_0;
    reg [0:0] redist36_i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out_10_delay_1;
    reg [0:0] redist36_i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out_10_delay_2;
    reg [0:0] redist37_i_llvm_fpga_dummy_thread_kernel_3mm_b3_dummy_kernel_3mm2_out_dummy_out_4_q;
    reg [0:0] redist37_i_llvm_fpga_dummy_thread_kernel_3mm_b3_dummy_kernel_3mm2_out_dummy_out_4_delay_0;
    reg [0:0] redist37_i_llvm_fpga_dummy_thread_kernel_3mm_b3_dummy_kernel_3mm2_out_dummy_out_4_delay_1;
    reg [0:0] redist37_i_llvm_fpga_dummy_thread_kernel_3mm_b3_dummy_kernel_3mm2_out_dummy_out_4_delay_2;
    reg [0:0] redist38_i_kernel_3mm_b3_current_iter_isspec_kernel_3mm5_q_4_q;
    reg [0:0] redist38_i_kernel_3mm_b3_current_iter_isspec_kernel_3mm5_q_4_delay_0;
    reg [0:0] redist38_i_kernel_3mm_b3_current_iter_isspec_kernel_3mm5_q_4_delay_1;
    reg [0:0] redist38_i_kernel_3mm_b3_current_iter_isspec_kernel_3mm5_q_4_delay_2;
    reg [63:0] redist40_i_idxprom11_kernel_3mm12_vt_join_q_4_q;
    reg [63:0] redist40_i_idxprom11_kernel_3mm12_vt_join_q_4_delay_0;
    reg [63:0] redist40_i_idxprom11_kernel_3mm12_vt_join_q_4_delay_1;
    reg [63:0] redist41_i_arrayidx121_kernel_3mm13_vt_join_q_4_q;
    reg [63:0] redist41_i_arrayidx121_kernel_3mm13_vt_join_q_4_delay_0;
    reg [63:0] redist41_i_arrayidx121_kernel_3mm13_vt_join_q_4_delay_1;
    reg [31:0] redist3_sync_together97_aunroll_x_in_c0_eni13_1_tpl_4_inputreg0_q;
    reg [31:0] redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_inputreg0_q;
    reg [31:0] redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_outputreg0_q;
    wire redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_mem_reset0;
    wire [31:0] redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_mem_ia;
    wire [1:0] redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_mem_aa;
    wire [1:0] redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_mem_ab;
    wire [31:0] redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_mem_iq;
    wire [31:0] redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_mem_q;
    wire [1:0] redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [1:0] redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_wraddr_i = 2'b11;
    wire [1:0] redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_offset_q;
    wire [2:0] redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_rdcnt_a;
    wire [2:0] redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_rdcnt_b;
    logic [2:0] redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_rdcnt_o;
    wire [2:0] redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_rdcnt_q;
    reg [31:0] redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_inputreg0_q;
    reg [31:0] redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_outputreg0_q;
    wire redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_mem_reset0;
    wire [31:0] redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_mem_ia;
    wire [1:0] redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_mem_aa;
    wire [1:0] redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_mem_ab;
    wire [31:0] redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_mem_iq;
    wire [31:0] redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_mem_q;
    wire [1:0] redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [1:0] redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_wraddr_i = 2'b11;
    wire [2:0] redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_rdcnt_a;
    wire [2:0] redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_rdcnt_b;
    logic [2:0] redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_rdcnt_o;
    wire [2:0] redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_rdcnt_q;
    reg [63:0] redist39_i_idxprom_kernel_3mm10_vt_join_q_6_inputreg0_q;
    reg [63:0] redist39_i_idxprom_kernel_3mm10_vt_join_q_6_outputreg0_q;
    wire redist39_i_idxprom_kernel_3mm10_vt_join_q_6_mem_reset0;
    wire [63:0] redist39_i_idxprom_kernel_3mm10_vt_join_q_6_mem_ia;
    wire [1:0] redist39_i_idxprom_kernel_3mm10_vt_join_q_6_mem_aa;
    wire [1:0] redist39_i_idxprom_kernel_3mm10_vt_join_q_6_mem_ab;
    wire [63:0] redist39_i_idxprom_kernel_3mm10_vt_join_q_6_mem_iq;
    wire [63:0] redist39_i_idxprom_kernel_3mm10_vt_join_q_6_mem_q;
    wire [1:0] redist39_i_idxprom_kernel_3mm10_vt_join_q_6_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [1:0] redist39_i_idxprom_kernel_3mm10_vt_join_q_6_wraddr_i = 2'b11;
    wire [2:0] redist39_i_idxprom_kernel_3mm10_vt_join_q_6_rdcnt_a;
    wire [2:0] redist39_i_idxprom_kernel_3mm10_vt_join_q_6_rdcnt_b;
    logic [2:0] redist39_i_idxprom_kernel_3mm10_vt_join_q_6_rdcnt_o;
    wire [2:0] redist39_i_idxprom_kernel_3mm10_vt_join_q_6_rdcnt_q;
    reg [63:0] redist40_i_idxprom11_kernel_3mm12_vt_join_q_4_inputreg0_q;
    reg [63:0] redist41_i_arrayidx121_kernel_3mm13_vt_join_q_4_inputreg0_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist17_sync_together97_aunroll_x_in_i_valid_2(DELAY,297)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist17_sync_together97_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist17_sync_together97_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_sync_together97_aunroll_x_in_i_valid_2_q <= redist17_sync_together97_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist18_sync_together97_aunroll_x_in_i_valid_3(DELAY,298)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist18_sync_together97_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist18_sync_together97_aunroll_x_in_i_valid_3_q <= $unsigned(redist17_sync_together97_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist19_sync_together97_aunroll_x_in_i_valid_4(DELAY,299)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist19_sync_together97_aunroll_x_in_i_valid_4_q <= $unsigned(redist18_sync_together97_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist20_sync_together97_aunroll_x_in_i_valid_5(DELAY,300)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist20_sync_together97_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist20_sync_together97_aunroll_x_in_i_valid_5_q <= $unsigned(redist19_sync_together97_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg8(REG,192)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist20_sync_together97_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_c_i7_03_x(CONSTANT,129)
    assign i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_c_i7_03_x_q = $unsigned(7'b0000000);

    // valid_fanout_reg2(REG,186)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist18_sync_together97_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg14(REG,198)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist18_sync_together97_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_i5_887(CONSTANT,56)
    assign c_i5_887_q = $unsigned(5'b01000);

    // i_arrayidx121_kernel_3mm0_mult_multconst_x(CONSTANT,109)
    assign i_arrayidx121_kernel_3mm0_mult_multconst_x_q = $unsigned(3'b000);

    // c_i5_189(CONSTANT,55)
    assign c_i5_189_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next12_kernel_3mm23(ADD,64)@4
    assign i_fpga_indvars_iv_next12_kernel_3mm23_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv11_pop32_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv11_pop32_kernel_3mm16_mux_x_q};
    assign i_fpga_indvars_iv_next12_kernel_3mm23_b = {1'b0, c_i5_189_q};
    assign i_fpga_indvars_iv_next12_kernel_3mm23_o = $unsigned(i_fpga_indvars_iv_next12_kernel_3mm23_a) + $unsigned(i_fpga_indvars_iv_next12_kernel_3mm23_b);
    assign i_fpga_indvars_iv_next12_kernel_3mm23_q = i_fpga_indvars_iv_next12_kernel_3mm23_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next12_kernel_3mm23_sel_x(BITSELECT,86)@4
    assign bgTrunc_i_fpga_indvars_iv_next12_kernel_3mm23_sel_x_b = i_fpga_indvars_iv_next12_kernel_3mm23_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm0_element_extension2_x(BITJOIN,178)@4
    assign i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm0_element_extension2_x_q = {i_arrayidx121_kernel_3mm0_mult_multconst_x_q, bgTrunc_i_fpga_indvars_iv_next12_kernel_3mm23_sel_x_b};

    // i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x(LOGICAL,132)@1
    assign i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg16(REG,200)@0 + 1
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

    // valid_fanout_reg15(REG,199)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist17_sync_together97_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm1_x(FIFODELAY,179)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg16_q & i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q);
    assign i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm1_x_i_valid = valid_fanout_reg15_q & redist23_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm1_x_i_data = i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm0_adapt_scalar_trunc4_sel_x(BITSELECT,181)@4
    assign i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm1_x_o_data[4:0];

    // i_llvm_fpga_pop_i5_fpga_indvars_iv11_pop32_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv11_pop32_kernel_3mm16_mux_x(MUX,127)@4
    assign i_llvm_fpga_pop_i5_fpga_indvars_iv11_pop32_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv11_pop32_kernel_3mm16_mux_x_s = redist34_i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i5_fpga_indvars_iv11_pop32_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv11_pop32_kernel_3mm16_mux_x_s or i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm0_adapt_scalar_trunc4_sel_x_b or c_i5_887_q)
    begin
        unique case (i_llvm_fpga_pop_i5_fpga_indvars_iv11_pop32_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv11_pop32_kernel_3mm16_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i5_fpga_indvars_iv11_pop32_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv11_pop32_kernel_3mm16_mux_x_q = i_llvm_fpga_push_i5_fpga_indvars_iv11_push32_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i5_fpga_indvars_iv11_pop32_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv11_pop32_kernel_3mm16_mux_x_q = c_i5_887_q;
            default : i_llvm_fpga_pop_i5_fpga_indvars_iv11_pop32_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv11_pop32_kernel_3mm16_mux_x_q = 5'b0;
        endcase
    end

    // i_exitcond13_kernel_3mm17_cmp_nsign(LOGICAL,231)@4
    assign i_exitcond13_kernel_3mm17_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i5_fpga_indvars_iv11_pop32_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv11_pop32_kernel_3mm16_mux_x_q[4:4]));

    // i_llvm_fpga_push_i1_notexitcond49_kernel_3mm22(BLACKBOX,80)@4
    // in in_empty_in@20000000
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    kernel_3mm_i_llvm_fpga_push_i1_notexitcond49_0 thei_llvm_fpga_push_i1_notexitcond49_kernel_3mm22 (
        .in_almost_empty_in(GND_q),
        .in_data_in(i_exitcond13_kernel_3mm17_cmp_nsign_q),
        .in_empty_in(GND_q),
        .in_feedback_stall_in_12(i_llvm_fpga_pipeline_keep_going48_kernel_3mm6_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_12(i_llvm_fpga_push_i1_notexitcond49_kernel_3mm22_out_feedback_out_12),
        .out_feedback_valid_out_12(i_llvm_fpga_push_i1_notexitcond49_kernel_3mm22_out_feedback_valid_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_kernel_3mm_b3_dummy_kernel_3mm2(BLACKBOX,76)@0
    // in in_stall_in@20000000
    kernel_3mm_i_llvm_fpga_dummy_thread_b3_dummy_kernel_3mm0 thei_llvm_fpga_dummy_thread_kernel_3mm_b3_dummy_kernel_3mm2 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_kernel_3mm_b3_dummy_kernel_3mm2_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist37_i_llvm_fpga_dummy_thread_kernel_3mm_b3_dummy_kernel_3mm2_out_dummy_out_4(DELAY,317)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist37_i_llvm_fpga_dummy_thread_kernel_3mm_b3_dummy_kernel_3mm2_out_dummy_out_4_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_kernel_3mm_b3_dummy_kernel_3mm2_out_dummy_out);
            redist37_i_llvm_fpga_dummy_thread_kernel_3mm_b3_dummy_kernel_3mm2_out_dummy_out_4_delay_1 <= redist37_i_llvm_fpga_dummy_thread_kernel_3mm_b3_dummy_kernel_3mm2_out_dummy_out_4_delay_0;
            redist37_i_llvm_fpga_dummy_thread_kernel_3mm_b3_dummy_kernel_3mm2_out_dummy_out_4_delay_2 <= redist37_i_llvm_fpga_dummy_thread_kernel_3mm_b3_dummy_kernel_3mm2_out_dummy_out_4_delay_1;
            redist37_i_llvm_fpga_dummy_thread_kernel_3mm_b3_dummy_kernel_3mm2_out_dummy_out_4_q <= redist37_i_llvm_fpga_dummy_thread_kernel_3mm_b3_dummy_kernel_3mm2_out_dummy_out_4_delay_2;
        end
    end

    // i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3(BLACKBOX,77)@0
    // in in_stall_in@20000000
    kernel_3mm_i_llvm_fpga_forked_b3_forked_kernel_3mm0 thei_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist34_i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out_4(DELAY,314)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist34_i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out);
            redist34_i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out_4_delay_1 <= redist34_i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out_4_delay_0;
            redist34_i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out_4_delay_2 <= redist34_i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out_4_delay_1;
            redist34_i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out_4_q <= redist34_i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pipeline_keep_going48_kernel_3mm6(BLACKBOX,79)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    kernel_3mm_i_llvm_fpga_pipeline_keep_going48_0 thei_llvm_fpga_pipeline_keep_going48_kernel_3mm6 (
        .in_data_in(redist34_i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out_4_q),
        .in_dummy_in(redist37_i_llvm_fpga_dummy_thread_kernel_3mm_b3_dummy_kernel_3mm2_out_dummy_out_4_q),
        .in_forked_in(redist34_i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out_4_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond49_kernel_3mm22_out_feedback_out_12),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond49_kernel_3mm22_out_feedback_valid_out_12),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going48_kernel_3mm6_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going48_kernel_3mm6_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going48_kernel_3mm6_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going48_kernel_3mm6_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going48_kernel_3mm6_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going48_kernel_3mm6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist33_i_llvm_fpga_pipeline_keep_going48_kernel_3mm6_out_data_out_2(DELAY,313)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist33_i_llvm_fpga_pipeline_keep_going48_kernel_3mm6_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pipeline_keep_going48_kernel_3mm6_out_data_out);
            redist33_i_llvm_fpga_pipeline_keep_going48_kernel_3mm6_out_data_out_2_q <= redist33_i_llvm_fpga_pipeline_keep_going48_kernel_3mm6_out_data_out_2_delay_0;
        end
    end

    // i_kernel_3mm_b3_next_iter_isreal_kernel_3mm7(LOGICAL,75)@6
    assign i_kernel_3mm_b3_next_iter_isreal_kernel_3mm7_q = i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b3_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b3_current_iter_isreal_kernel_3mm4_mux_x_q & redist33_i_llvm_fpga_pipeline_keep_going48_kernel_3mm6_out_data_out_2_q;

    // i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm0_element_extension2_x(BITJOIN,136)@6
    assign i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm0_element_extension2_x_q = {i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_c_i7_03_x_q, i_kernel_3mm_b3_next_iter_isreal_kernel_3mm7_q};

    // redist23_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_2(DELAY,303)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist23_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q);
            redist23_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_2_q <= redist23_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_2_delay_0;
        end
    end

    // valid_fanout_reg4(REG,188)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist17_sync_together97_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist24_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_4(DELAY,304)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist24_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_4_delay_0 <= $unsigned(redist23_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_2_q);
            redist24_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_4_q <= redist24_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_4_delay_0;
        end
    end

    // valid_fanout_reg3(REG,187)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist19_sync_together97_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm1_x(FIFODELAY,137)@3 + 1
    // in i_valid@5
    // in i_write_pred@5
    // in i_data@6
    // out o_data@6
    assign i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg4_q & redist23_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_2_q);
    assign i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm1_x_i_valid = valid_fanout_reg3_q & redist24_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm1_x_i_data = i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm0_adapt_scalar_trunc4_sel_x(BITSELECT,139)@6
    assign i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm1_x_o_data[0:0];

    // redist35_i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out_6(DELAY,315)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist35_i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out_6_delay_0 <= $unsigned(redist34_i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out_4_q);
            redist35_i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out_6_q <= redist35_i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out_6_delay_0;
        end
    end

    // i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b3_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b3_current_iter_isreal_kernel_3mm4_mux_x(MUX,118)@6
    assign i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b3_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b3_current_iter_isreal_kernel_3mm4_mux_x_s = redist35_i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out_6_q;
    always @(i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b3_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b3_current_iter_isreal_kernel_3mm4_mux_x_s or i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm0_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b3_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b3_current_iter_isreal_kernel_3mm4_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b3_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b3_current_iter_isreal_kernel_3mm4_mux_x_q = i_llvm_fpga_push_i1_kernel_3mm_b3_next_iter_isreal_push_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b3_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b3_current_iter_isreal_kernel_3mm4_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b3_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b3_current_iter_isreal_kernel_3mm4_mux_x_q = 1'b0;
        endcase
    end

    // i_kernel_3mm_b3_current_iter_isspec_kernel_3mm5(LOGICAL,74)@6
    assign i_kernel_3mm_b3_current_iter_isspec_kernel_3mm5_q = i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b3_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b3_current_iter_isreal_kernel_3mm4_mux_x_q ^ VCC_q;

    // redist5_sync_together97_aunroll_x_in_c0_eni13_3_tpl_6(DELAY,285)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist5_sync_together97_aunroll_x_in_c0_eni13_3_tpl_6 ( .xin(in_c0_eni13_3_tpl), .xout(redist5_sync_together97_aunroll_x_in_c0_eni13_3_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist29_i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm14_mux_x_q_1(DELAY,309)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist29_i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm14_mux_x_q_1_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm14_mux_x_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm0_element_extension2_x(BITJOIN,160)@7
    assign i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm0_element_extension2_x_q = {i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_c_i7_03_x_q, redist29_i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm14_mux_x_q_1_q};

    // valid_fanout_reg13(REG,197)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist17_sync_together97_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist25_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_5(DELAY,305)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist25_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_5_q <= $unsigned(redist24_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_4_q);
        end
    end

    // valid_fanout_reg12(REG,196)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist20_sync_together97_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm1_x(FIFODELAY,161)@3
    // in i_valid@6
    // in i_write_pred@6
    // in i_data@7
    // out o_data@6
    assign i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg13_q & redist23_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_2_q);
    assign i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm1_x_i_valid = valid_fanout_reg12_q & redist25_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_5_q;
    assign i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm1_x_i_data = i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm0_adapt_scalar_trunc4_sel_x(BITSELECT,163)@6
    assign i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm14_mux_x(MUX,123)@6
    assign i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm14_mux_x_s = redist35_i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out_6_q;
    always @(i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm14_mux_x_s or i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm0_adapt_scalar_trunc4_sel_x_b or redist5_sync_together97_aunroll_x_in_c0_eni13_3_tpl_6_q)
    begin
        unique case (i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm14_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm14_mux_x_q = i_llvm_fpga_push_i1_memdep_phi_pop1765_push35_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm14_mux_x_q = redist5_sync_together97_aunroll_x_in_c0_eni13_3_tpl_6_q;
            default : i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm14_mux_x_q = 1'b0;
        endcase
    end

    // c_kernel_3mm_E_local_pmem(CONSTANT,57)
    assign c_kernel_3mm_E_local_pmem_q = $unsigned(64'b0100000001000100000000000000000000000000000000000000000000000000);

    // i_arrayidx121_kernel_3mm0_upper_bits_x_merged_bit_select(BITSELECT,278)@5
    assign i_arrayidx121_kernel_3mm0_upper_bits_x_merged_bit_select_b = c_kernel_3mm_E_local_pmem_q[63:9];
    assign i_arrayidx121_kernel_3mm0_upper_bits_x_merged_bit_select_c = c_kernel_3mm_E_local_pmem_q[8:0];

    // redist0_i_arrayidx121_kernel_3mm0_upper_bits_x_merged_bit_select_b_1(DELAY,280)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_arrayidx121_kernel_3mm0_upper_bits_x_merged_bit_select_b_1_q <= $unsigned(i_arrayidx121_kernel_3mm0_upper_bits_x_merged_bit_select_b);
        end
    end

    // c_i32_086(CONSTANT,53)
    assign c_i32_086_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_190(CONSTANT,54)
    assign c_i32_190_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc29_kernel_3mm25(ADD,73)@6
    assign i_inc29_kernel_3mm25_a = {1'b0, i_llvm_fpga_pop_i32_j_059_pop33_kernel_3mm0_i_llvm_fpga_pop_i32_j_059_pop33_kernel_3mm11_mux_x_q};
    assign i_inc29_kernel_3mm25_b = {1'b0, c_i32_190_q};
    assign i_inc29_kernel_3mm25_o = $unsigned(i_inc29_kernel_3mm25_a) + $unsigned(i_inc29_kernel_3mm25_b);
    assign i_inc29_kernel_3mm25_q = i_inc29_kernel_3mm25_o[32:0];

    // bgTrunc_i_inc29_kernel_3mm25_sel_x(BITSELECT,87)@6
    assign bgTrunc_i_inc29_kernel_3mm25_sel_x_b = i_inc29_kernel_3mm25_q[31:0];

    // valid_fanout_reg18(REG,202)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist17_sync_together97_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg17(REG,201)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist19_sync_together97_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i32_j_059_push33_kernel_3mm0_i_llvm_fpga_push_i32_j_059_push33_kernel_3mm1_x(FIFODELAY,173)@3 + 1
    // in i_valid@5
    // in i_write_pred@5
    // in i_data@6
    // out o_data@6
    assign i_llvm_fpga_push_i32_j_059_push33_kernel_3mm0_i_llvm_fpga_push_i32_j_059_push33_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg18_q & redist23_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_2_q);
    assign i_llvm_fpga_push_i32_j_059_push33_kernel_3mm0_i_llvm_fpga_push_i32_j_059_push33_kernel_3mm1_x_i_valid = valid_fanout_reg17_q & redist24_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_i32_j_059_push33_kernel_3mm0_i_llvm_fpga_push_i32_j_059_push33_kernel_3mm1_x_i_data = bgTrunc_i_inc29_kernel_3mm25_sel_x_b;
    assign i_llvm_fpga_push_i32_j_059_push33_kernel_3mm0_i_llvm_fpga_push_i32_j_059_push33_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_j_059_push33_kernel_3mm0_i_llvm_fpga_push_i32_j_059_push33_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_j_059_push33_kernel_3mm0_i_llvm_fpga_push_i32_j_059_push33_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_j_059_push33_kernel_3mm0_i_llvm_fpga_push_i32_j_059_push33_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_j_059_push33_kernel_3mm0_i_llvm_fpga_push_i32_j_059_push33_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i32_j_059_push33_kernel_3mm0_i_llvm_fpga_push_i32_j_059_push33_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_j_059_push33_kernel_3mm0_i_llvm_fpga_push_i32_j_059_push33_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_inc29_kernel_3mm25_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_j_059_push33_kernel_3mm0_i_llvm_fpga_push_i32_j_059_push33_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_j_059_pop33_kernel_3mm0_i_llvm_fpga_pop_i32_j_059_pop33_kernel_3mm11_mux_x(MUX,126)@6
    assign i_llvm_fpga_pop_i32_j_059_pop33_kernel_3mm0_i_llvm_fpga_pop_i32_j_059_pop33_kernel_3mm11_mux_x_s = redist35_i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out_6_q;
    always @(i_llvm_fpga_pop_i32_j_059_pop33_kernel_3mm0_i_llvm_fpga_pop_i32_j_059_pop33_kernel_3mm11_mux_x_s or i_llvm_fpga_push_i32_j_059_push33_kernel_3mm0_i_llvm_fpga_push_i32_j_059_push33_kernel_3mm1_x_o_data or c_i32_086_q)
    begin
        unique case (i_llvm_fpga_pop_i32_j_059_pop33_kernel_3mm0_i_llvm_fpga_pop_i32_j_059_pop33_kernel_3mm11_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_j_059_pop33_kernel_3mm0_i_llvm_fpga_pop_i32_j_059_pop33_kernel_3mm11_mux_x_q = i_llvm_fpga_push_i32_j_059_push33_kernel_3mm0_i_llvm_fpga_push_i32_j_059_push33_kernel_3mm1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_j_059_pop33_kernel_3mm0_i_llvm_fpga_pop_i32_j_059_pop33_kernel_3mm11_mux_x_q = c_i32_086_q;
            default : i_llvm_fpga_pop_i32_j_059_pop33_kernel_3mm0_i_llvm_fpga_pop_i32_j_059_pop33_kernel_3mm11_mux_x_q = 32'b0;
        endcase
    end

    // i_idxprom11_kernel_3mm12_sel_x(BITSELECT,116)@6
    assign i_idxprom11_kernel_3mm12_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j_059_pop33_kernel_3mm0_i_llvm_fpga_pop_i32_j_059_pop33_kernel_3mm11_mux_x_q[31:0]};

    // i_idxprom11_kernel_3mm12_vt_select_31(BITSELECT,68)@6
    assign i_idxprom11_kernel_3mm12_vt_select_31_b = i_idxprom11_kernel_3mm12_sel_x_b[31:0];

    // i_idxprom11_kernel_3mm12_vt_join(BITJOIN,67)@6
    assign i_idxprom11_kernel_3mm12_vt_join_q = {c_i32_086_q, i_idxprom11_kernel_3mm12_vt_select_31_b};

    // i_arrayidx121_kernel_3mm0_dupName_3_trunc_sel_x(BITSELECT,114)@6
    assign i_arrayidx121_kernel_3mm0_dupName_3_trunc_sel_x_b = i_idxprom11_kernel_3mm12_vt_join_q[8:0];

    // i_arrayidx121_kernel_3mm0_narrow_x(BITSELECT,97)@6
    assign i_arrayidx121_kernel_3mm0_narrow_x_b = i_arrayidx121_kernel_3mm0_dupName_3_trunc_sel_x_b[6:0];

    // i_arrayidx121_kernel_3mm0_shift_join_x(BITJOIN,98)@6
    assign i_arrayidx121_kernel_3mm0_shift_join_x_q = {i_arrayidx121_kernel_3mm0_narrow_x_b, i_arrayidx121_kernel_3mm13_vt_const_1_q};

    // redist3_sync_together97_aunroll_x_in_c0_eni13_1_tpl_4_inputreg0(DELAY,322)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together97_aunroll_x_in_c0_eni13_1_tpl_4_inputreg0_q <= $unsigned(in_c0_eni13_1_tpl);
        end
    end

    // redist3_sync_together97_aunroll_x_in_c0_eni13_1_tpl_4(DELAY,283)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together97_aunroll_x_in_c0_eni13_1_tpl_4_delay_0 <= $unsigned(redist3_sync_together97_aunroll_x_in_c0_eni13_1_tpl_4_inputreg0_q);
            redist3_sync_together97_aunroll_x_in_c0_eni13_1_tpl_4_delay_1 <= redist3_sync_together97_aunroll_x_in_c0_eni13_1_tpl_4_delay_0;
            redist3_sync_together97_aunroll_x_in_c0_eni13_1_tpl_4_q <= redist3_sync_together97_aunroll_x_in_c0_eni13_1_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg11(REG,195)@0 + 1
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

    // valid_fanout_reg10(REG,194)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist17_sync_together97_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_i_060_pop2385_push39_kernel_3mm0_i_llvm_fpga_push_i32_i_060_pop2385_push39_kernel_3mm1_x(FIFODELAY,170)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_i_060_pop2385_push39_kernel_3mm0_i_llvm_fpga_push_i32_i_060_pop2385_push39_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg11_q & i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_i_060_pop2385_push39_kernel_3mm0_i_llvm_fpga_push_i32_i_060_pop2385_push39_kernel_3mm1_x_i_valid = valid_fanout_reg10_q & redist23_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_i_060_pop2385_push39_kernel_3mm0_i_llvm_fpga_push_i32_i_060_pop2385_push39_kernel_3mm1_x_i_data = i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q;
    assign i_llvm_fpga_push_i32_i_060_pop2385_push39_kernel_3mm0_i_llvm_fpga_push_i32_i_060_pop2385_push39_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_i_060_pop2385_push39_kernel_3mm0_i_llvm_fpga_push_i32_i_060_pop2385_push39_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_i_060_pop2385_push39_kernel_3mm0_i_llvm_fpga_push_i32_i_060_pop2385_push39_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_i_060_pop2385_push39_kernel_3mm0_i_llvm_fpga_push_i32_i_060_pop2385_push39_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_i_060_pop2385_push39_kernel_3mm0_i_llvm_fpga_push_i32_i_060_pop2385_push39_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i32_i_060_pop2385_push39_kernel_3mm0_i_llvm_fpga_push_i32_i_060_pop2385_push39_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_i_060_pop2385_push39_kernel_3mm0_i_llvm_fpga_push_i32_i_060_pop2385_push39_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_i_060_pop2385_push39_kernel_3mm0_i_llvm_fpga_push_i32_i_060_pop2385_push39_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x(MUX,125)@4
    assign i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_s = redist34_i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_s or i_llvm_fpga_push_i32_i_060_pop2385_push39_kernel_3mm0_i_llvm_fpga_push_i32_i_060_pop2385_push39_kernel_3mm1_x_o_data or redist3_sync_together97_aunroll_x_in_c0_eni13_1_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q = i_llvm_fpga_push_i32_i_060_pop2385_push39_kernel_3mm0_i_llvm_fpga_push_i32_i_060_pop2385_push39_kernel_3mm1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q = redist3_sync_together97_aunroll_x_in_c0_eni13_1_tpl_4_q;
            default : i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q = 32'b0;
        endcase
    end

    // i_idxprom_kernel_3mm10_sel_x(BITSELECT,117)@4
    assign i_idxprom_kernel_3mm10_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q[31:0]};

    // i_idxprom_kernel_3mm10_vt_select_31(BITSELECT,72)@4
    assign i_idxprom_kernel_3mm10_vt_select_31_b = i_idxprom_kernel_3mm10_sel_x_b[31:0];

    // i_idxprom_kernel_3mm10_vt_join(BITJOIN,71)@4
    assign i_idxprom_kernel_3mm10_vt_join_q = {c_i32_086_q, i_idxprom_kernel_3mm10_vt_select_31_b};

    // i_arrayidx121_kernel_3mm0_dupName_0_trunc_sel_x(BITSELECT,111)@4
    assign i_arrayidx121_kernel_3mm0_dupName_0_trunc_sel_x_b = i_idxprom_kernel_3mm10_vt_join_q[8:0];

    // addsumAHighB_uid242_i_arrayidx121_kernel_3mm0_mult_x(ADD,241)@4
    assign addsumAHighB_uid242_i_arrayidx121_kernel_3mm0_mult_x_a = {1'b0, i_arrayidx121_kernel_3mm0_dupName_0_trunc_sel_x_b};
    assign addsumAHighB_uid242_i_arrayidx121_kernel_3mm0_mult_x_b = {3'b000, lowRangeB_uid240_i_arrayidx121_kernel_3mm0_mult_x_merged_bit_select_c};
    assign addsumAHighB_uid242_i_arrayidx121_kernel_3mm0_mult_x_o = $unsigned(addsumAHighB_uid242_i_arrayidx121_kernel_3mm0_mult_x_a) + $unsigned(addsumAHighB_uid242_i_arrayidx121_kernel_3mm0_mult_x_b);
    assign addsumAHighB_uid242_i_arrayidx121_kernel_3mm0_mult_x_q = addsumAHighB_uid242_i_arrayidx121_kernel_3mm0_mult_x_o[9:0];

    // lowRangeB_uid240_i_arrayidx121_kernel_3mm0_mult_x_merged_bit_select(BITSELECT,279)@4
    assign lowRangeB_uid240_i_arrayidx121_kernel_3mm0_mult_x_merged_bit_select_b = i_arrayidx121_kernel_3mm0_dupName_0_trunc_sel_x_b[1:0];
    assign lowRangeB_uid240_i_arrayidx121_kernel_3mm0_mult_x_merged_bit_select_c = i_arrayidx121_kernel_3mm0_dupName_0_trunc_sel_x_b[8:2];

    // add_uid243_i_arrayidx121_kernel_3mm0_mult_x(BITJOIN,242)@4
    assign add_uid243_i_arrayidx121_kernel_3mm0_mult_x_q = {addsumAHighB_uid242_i_arrayidx121_kernel_3mm0_mult_x_q, lowRangeB_uid240_i_arrayidx121_kernel_3mm0_mult_x_merged_bit_select_b};

    // sR_mergedSignalTM_uid248_i_arrayidx121_kernel_3mm0_mult_x(BITJOIN,247)@4
    assign sR_mergedSignalTM_uid248_i_arrayidx121_kernel_3mm0_mult_x_q = {add_uid243_i_arrayidx121_kernel_3mm0_mult_x_q, i_arrayidx121_kernel_3mm0_mult_multconst_x_q};

    // i_arrayidx121_kernel_3mm0_mult_extender_x(BITJOIN,108)@4
    assign i_arrayidx121_kernel_3mm0_mult_extender_x_q = {i_arrayidx121_kernel_3mm0_mult_multconst_x_q, sR_mergedSignalTM_uid248_i_arrayidx121_kernel_3mm0_mult_x_q};

    // i_arrayidx121_kernel_3mm0_dupName_1_trunc_sel_x(BITSELECT,112)@4
    assign i_arrayidx121_kernel_3mm0_dupName_1_trunc_sel_x_b = i_arrayidx121_kernel_3mm0_mult_extender_x_q[8:0];

    // redist32_i_arrayidx121_kernel_3mm0_dupName_1_trunc_sel_x_b_1(DELAY,312)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist32_i_arrayidx121_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx121_kernel_3mm0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx121_kernel_3mm0_add_x(ADD,92)@5
    assign i_arrayidx121_kernel_3mm0_add_x_a = {1'b0, i_arrayidx121_kernel_3mm0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx121_kernel_3mm0_add_x_b = {1'b0, redist32_i_arrayidx121_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx121_kernel_3mm0_add_x_o = $unsigned(i_arrayidx121_kernel_3mm0_add_x_a) + $unsigned(i_arrayidx121_kernel_3mm0_add_x_b);
    assign i_arrayidx121_kernel_3mm0_add_x_q = i_arrayidx121_kernel_3mm0_add_x_o[9:0];

    // i_arrayidx121_kernel_3mm0_dupName_2_trunc_sel_x(BITSELECT,113)@5
    assign i_arrayidx121_kernel_3mm0_dupName_2_trunc_sel_x_b = i_arrayidx121_kernel_3mm0_add_x_q[8:0];

    // redist31_i_arrayidx121_kernel_3mm0_dupName_2_trunc_sel_x_b_1(DELAY,311)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist31_i_arrayidx121_kernel_3mm0_dupName_2_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx121_kernel_3mm0_dupName_2_trunc_sel_x_b);
        end
    end

    // i_arrayidx121_kernel_3mm0_dupName_0_add_x(ADD,102)@6
    assign i_arrayidx121_kernel_3mm0_dupName_0_add_x_a = {1'b0, redist31_i_arrayidx121_kernel_3mm0_dupName_2_trunc_sel_x_b_1_q};
    assign i_arrayidx121_kernel_3mm0_dupName_0_add_x_b = {1'b0, i_arrayidx121_kernel_3mm0_shift_join_x_q};
    assign i_arrayidx121_kernel_3mm0_dupName_0_add_x_o = $unsigned(i_arrayidx121_kernel_3mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx121_kernel_3mm0_dupName_0_add_x_b);
    assign i_arrayidx121_kernel_3mm0_dupName_0_add_x_q = i_arrayidx121_kernel_3mm0_dupName_0_add_x_o[9:0];

    // i_arrayidx121_kernel_3mm0_dupName_5_trunc_sel_x(BITSELECT,115)@6
    assign i_arrayidx121_kernel_3mm0_dupName_5_trunc_sel_x_b = i_arrayidx121_kernel_3mm0_dupName_0_add_x_q[8:0];

    // i_arrayidx121_kernel_3mm0_append_upper_bits_x(BITJOIN,93)@6
    assign i_arrayidx121_kernel_3mm0_append_upper_bits_x_q = {redist0_i_arrayidx121_kernel_3mm0_upper_bits_x_merged_bit_select_b_1_q, i_arrayidx121_kernel_3mm0_dupName_5_trunc_sel_x_b};

    // i_arrayidx121_kernel_3mm13_vt_select_63(BITSELECT,62)@6
    assign i_arrayidx121_kernel_3mm13_vt_select_63_b = i_arrayidx121_kernel_3mm0_append_upper_bits_x_q[63:2];

    // i_arrayidx121_kernel_3mm13_vt_const_1(CONSTANT,60)
    assign i_arrayidx121_kernel_3mm13_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx121_kernel_3mm13_vt_join(BITJOIN,61)@6
    assign i_arrayidx121_kernel_3mm13_vt_join_q = {i_arrayidx121_kernel_3mm13_vt_select_63_b, i_arrayidx121_kernel_3mm13_vt_const_1_q};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_mem_unnamed_kernel_3mm1_kernel_3mm15(BLACKBOX,78)@6
    // out out_o_almost_empty@10
    // out out_o_empty@10
    // out out_o_readdata@10
    // out out_o_stall@10
    // out out_o_valid@10
    // out out_unnamed_kernel_3mm1_kernel_3mm_avm_address@20000000
    // out out_unnamed_kernel_3mm1_kernel_3mm_avm_burstcount@20000000
    // out out_unnamed_kernel_3mm1_kernel_3mm_avm_byteenable@20000000
    // out out_unnamed_kernel_3mm1_kernel_3mm_avm_enable@20000000
    // out out_unnamed_kernel_3mm1_kernel_3mm_avm_read@20000000
    // out out_unnamed_kernel_3mm1_kernel_3mm_avm_write@20000000
    // out out_unnamed_kernel_3mm1_kernel_3mm_avm_writedata@20000000
    kernel_3mm_i_llvm_fpga_mem_unnamed_1_kernel_3mm0 thei_llvm_fpga_mem_unnamed_kernel_3mm1_kernel_3mm15 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx121_kernel_3mm13_vt_join_q),
        .in_i_dependence(i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm14_mux_x_q),
        .in_i_predicate(i_kernel_3mm_b3_current_iter_isspec_kernel_3mm5_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg8_q),
        .in_unnamed_kernel_3mm1_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm1_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm1_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm1_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm1_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm1_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm1_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm1_kernel_3mm_avm_writeack),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_kernel_3mm1_kernel_3mm15_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_kernel_3mm1_kernel_3mm_avm_address(i_llvm_fpga_mem_unnamed_kernel_3mm1_kernel_3mm15_out_unnamed_kernel_3mm1_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm1_kernel_3mm_avm_burstcount(i_llvm_fpga_mem_unnamed_kernel_3mm1_kernel_3mm15_out_unnamed_kernel_3mm1_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm1_kernel_3mm_avm_byteenable(i_llvm_fpga_mem_unnamed_kernel_3mm1_kernel_3mm15_out_unnamed_kernel_3mm1_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm1_kernel_3mm_avm_enable(i_llvm_fpga_mem_unnamed_kernel_3mm1_kernel_3mm15_out_unnamed_kernel_3mm1_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm1_kernel_3mm_avm_read(i_llvm_fpga_mem_unnamed_kernel_3mm1_kernel_3mm15_out_unnamed_kernel_3mm1_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm1_kernel_3mm_avm_write(i_llvm_fpga_mem_unnamed_kernel_3mm1_kernel_3mm15_out_unnamed_kernel_3mm1_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm1_kernel_3mm_avm_writedata(i_llvm_fpga_mem_unnamed_kernel_3mm1_kernel_3mm15_out_unnamed_kernel_3mm1_kernel_3mm_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,59)
    assign out_unnamed_kernel_3mm1_kernel_3mm_avm_address = i_llvm_fpga_mem_unnamed_kernel_3mm1_kernel_3mm15_out_unnamed_kernel_3mm1_kernel_3mm_avm_address;
    assign out_unnamed_kernel_3mm1_kernel_3mm_avm_enable = i_llvm_fpga_mem_unnamed_kernel_3mm1_kernel_3mm15_out_unnamed_kernel_3mm1_kernel_3mm_avm_enable;
    assign out_unnamed_kernel_3mm1_kernel_3mm_avm_read = i_llvm_fpga_mem_unnamed_kernel_3mm1_kernel_3mm15_out_unnamed_kernel_3mm1_kernel_3mm_avm_read;
    assign out_unnamed_kernel_3mm1_kernel_3mm_avm_write = i_llvm_fpga_mem_unnamed_kernel_3mm1_kernel_3mm15_out_unnamed_kernel_3mm1_kernel_3mm_avm_write;
    assign out_unnamed_kernel_3mm1_kernel_3mm_avm_writedata = i_llvm_fpga_mem_unnamed_kernel_3mm1_kernel_3mm15_out_unnamed_kernel_3mm1_kernel_3mm_avm_writedata;
    assign out_unnamed_kernel_3mm1_kernel_3mm_avm_byteenable = i_llvm_fpga_mem_unnamed_kernel_3mm1_kernel_3mm15_out_unnamed_kernel_3mm1_kernel_3mm_avm_byteenable;
    assign out_unnamed_kernel_3mm1_kernel_3mm_avm_burstcount = i_llvm_fpga_mem_unnamed_kernel_3mm1_kernel_3mm15_out_unnamed_kernel_3mm1_kernel_3mm_avm_burstcount;

    // regfree_osync(GPOUT,84)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going48_kernel_3mm6_out_exiting_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,89)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going48_kernel_3mm6_out_pipeline_dummy_out;

    // dupName_1_regfree_osync_x(GPOUT,90)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going48_kernel_3mm6_out_pipeline_forked_out;

    // dupName_2_regfree_osync_x(GPOUT,91)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going48_kernel_3mm6_out_pipeline_valid_out;

    // redist21_sync_together97_aunroll_x_in_i_valid_6(DELAY,301)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist21_sync_together97_aunroll_x_in_i_valid_6_q <= $unsigned(redist20_sync_together97_aunroll_x_in_i_valid_5_q);
        end
    end

    // redist22_sync_together97_aunroll_x_in_i_valid_8(DELAY,302)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist22_sync_together97_aunroll_x_in_i_valid_8_delay_0 <= '0;
        end
        else
        begin
            redist22_sync_together97_aunroll_x_in_i_valid_8_delay_0 <= $unsigned(redist21_sync_together97_aunroll_x_in_i_valid_6_q);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist22_sync_together97_aunroll_x_in_i_valid_8_q <= redist22_sync_together97_aunroll_x_in_i_valid_8_delay_0;
        end
    end

    // valid_fanout_reg0(REG,184)@8 + 1
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist22_sync_together97_aunroll_x_in_i_valid_8_q);
        end
    end

    // redist2_valid_fanout_reg0_q_1(DELAY,282)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_valid_fanout_reg0_q_1_q <= $unsigned(valid_fanout_reg0_q);
        end
    end

    // redist38_i_kernel_3mm_b3_current_iter_isspec_kernel_3mm5_q_4(DELAY,318)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist38_i_kernel_3mm_b3_current_iter_isspec_kernel_3mm5_q_4_delay_0 <= $unsigned(i_kernel_3mm_b3_current_iter_isspec_kernel_3mm5_q);
            redist38_i_kernel_3mm_b3_current_iter_isspec_kernel_3mm5_q_4_delay_1 <= redist38_i_kernel_3mm_b3_current_iter_isspec_kernel_3mm5_q_4_delay_0;
            redist38_i_kernel_3mm_b3_current_iter_isspec_kernel_3mm5_q_4_delay_2 <= redist38_i_kernel_3mm_b3_current_iter_isspec_kernel_3mm5_q_4_delay_1;
            redist38_i_kernel_3mm_b3_current_iter_isspec_kernel_3mm5_q_4_q <= redist38_i_kernel_3mm_b3_current_iter_isspec_kernel_3mm5_q_4_delay_2;
        end
    end

    // redist10_sync_together97_aunroll_x_in_c0_eni13_7_tpl_10(DELAY,290)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist10_sync_together97_aunroll_x_in_c0_eni13_7_tpl_10 ( .xin(in_c0_eni13_7_tpl), .xout(redist10_sync_together97_aunroll_x_in_c0_eni13_7_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist9_sync_together97_aunroll_x_in_c0_eni13_6_tpl_10(DELAY,289)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist9_sync_together97_aunroll_x_in_c0_eni13_6_tpl_10 ( .xin(in_c0_eni13_6_tpl), .xout(redist9_sync_together97_aunroll_x_in_c0_eni13_6_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist8_sync_together97_aunroll_x_in_c0_eni13_5_tpl_10(DELAY,288)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist8_sync_together97_aunroll_x_in_c0_eni13_5_tpl_10 ( .xin(in_c0_eni13_5_tpl), .xout(redist8_sync_together97_aunroll_x_in_c0_eni13_5_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist6_sync_together97_aunroll_x_in_c0_eni13_3_tpl_10(DELAY,286)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_together97_aunroll_x_in_c0_eni13_3_tpl_10_delay_0 <= $unsigned(redist5_sync_together97_aunroll_x_in_c0_eni13_3_tpl_6_q);
            redist6_sync_together97_aunroll_x_in_c0_eni13_3_tpl_10_delay_1 <= redist6_sync_together97_aunroll_x_in_c0_eni13_3_tpl_10_delay_0;
            redist6_sync_together97_aunroll_x_in_c0_eni13_3_tpl_10_delay_2 <= redist6_sync_together97_aunroll_x_in_c0_eni13_3_tpl_10_delay_1;
            redist6_sync_together97_aunroll_x_in_c0_eni13_3_tpl_10_q <= redist6_sync_together97_aunroll_x_in_c0_eni13_3_tpl_10_delay_2;
        end
    end

    // redist7_sync_together97_aunroll_x_in_c0_eni13_4_tpl_10(DELAY,287)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist7_sync_together97_aunroll_x_in_c0_eni13_4_tpl_10 ( .xin(in_c0_eni13_4_tpl), .xout(redist7_sync_together97_aunroll_x_in_c0_eni13_4_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist11_sync_together97_aunroll_x_in_c0_eni13_8_tpl_10(DELAY,291)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist11_sync_together97_aunroll_x_in_c0_eni13_8_tpl_10 ( .xin(in_c0_eni13_8_tpl), .xout(redist11_sync_together97_aunroll_x_in_c0_eni13_8_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_offset(CONSTANT,327)
    assign redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_offset_q = $unsigned(2'b11);

    // redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_rdcnt(ADD,328)
    assign redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_rdcnt_a = {1'b0, redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_wraddr_q};
    assign redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_rdcnt_b = {1'b0, redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_rdcnt_o <= $unsigned(redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_rdcnt_a) + $unsigned(redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_rdcnt_b);
        end
    end
    assign redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_rdcnt_q = redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_rdcnt_o[2:0];

    // redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_inputreg0(DELAY,323)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_inputreg0_q <= $unsigned(redist3_sync_together97_aunroll_x_in_c0_eni13_1_tpl_4_q);
        end
    end

    // redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_wraddr(COUNTER,326)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_wraddr_i <= $unsigned(redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_wraddr_i) + $unsigned(2'd1);
        end
    end
    assign redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_wraddr_q = redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_wraddr_i[1:0];

    // redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_mem(DUALMEM,325)
    assign redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_mem_ia = $unsigned(redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_inputreg0_q);
    assign redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_mem_aa = redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_wraddr_q;
    assign redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_mem_ab = redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_rdcnt_q[1:0];
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
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Stratix 10")
    ) redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_mem_aa),
        .data_a(redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_mem_ab),
        .q_b(redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_mem_iq),
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
    assign redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_mem_q = redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_mem_iq[31:0];

    // redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_outputreg0(DELAY,324)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_outputreg0_q <= $unsigned(redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_mem_q);
        end
    end

    // redist16_sync_together97_aunroll_x_in_c0_eni13_13_tpl_10(DELAY,296)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist16_sync_together97_aunroll_x_in_c0_eni13_13_tpl_10 ( .xin(in_c0_eni13_13_tpl), .xout(redist16_sync_together97_aunroll_x_in_c0_eni13_13_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist15_sync_together97_aunroll_x_in_c0_eni13_12_tpl_10(DELAY,295)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist15_sync_together97_aunroll_x_in_c0_eni13_12_tpl_10 ( .xin(in_c0_eni13_12_tpl), .xout(redist15_sync_together97_aunroll_x_in_c0_eni13_12_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist14_sync_together97_aunroll_x_in_c0_eni13_11_tpl_10(DELAY,294)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist14_sync_together97_aunroll_x_in_c0_eni13_11_tpl_10 ( .xin(in_c0_eni13_11_tpl), .xout(redist14_sync_together97_aunroll_x_in_c0_eni13_11_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist13_sync_together97_aunroll_x_in_c0_eni13_10_tpl_10(DELAY,293)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist13_sync_together97_aunroll_x_in_c0_eni13_10_tpl_10 ( .xin(in_c0_eni13_10_tpl), .xout(redist13_sync_together97_aunroll_x_in_c0_eni13_10_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist12_sync_together97_aunroll_x_in_c0_eni13_9_tpl_10(DELAY,292)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist12_sync_together97_aunroll_x_in_c0_eni13_9_tpl_10 ( .xin(in_c0_eni13_9_tpl), .xout(redist12_sync_together97_aunroll_x_in_c0_eni13_9_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm0_element_extension2_x(BITJOIN,166)@10
    assign i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm0_element_extension2_x_q = {i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_c_i7_03_x_q, i_llvm_fpga_pop_i1_notcmp5188_pop40_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp5188_pop40_kernel_3mm35_mux_x_q};

    // redist26_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_6(DELAY,306)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist26_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_6_q <= $unsigned(redist25_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_5_q);
        end
    end

    // valid_fanout_reg33(REG,217)@6 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg33_q <= $unsigned(redist21_sync_together97_aunroll_x_in_i_valid_6_q);
        end
    end

    // redist27_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_8(DELAY,307)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist27_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_8_delay_0 <= $unsigned(redist26_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_6_q);
            redist27_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_8_q <= redist27_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_8_delay_0;
        end
    end

    // valid_fanout_reg32(REG,216)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg32_q <= $unsigned(redist22_sync_together97_aunroll_x_in_i_valid_8_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm1_x(FIFODELAY,167)@7 + 1
    // in i_valid@9
    // in i_write_pred@9
    // in i_data@10
    // out o_data@10
    assign i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg33_q & redist26_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_6_q);
    assign i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm1_x_i_valid = valid_fanout_reg32_q & redist27_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_8_q;
    assign i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm1_x_i_data = i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm0_adapt_scalar_trunc4_sel_x(BITSELECT,169)@10
    assign i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm1_x_o_data[0:0];

    // redist36_i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out_10(DELAY,316)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist36_i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out_10_delay_0 <= $unsigned(redist35_i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out_6_q);
            redist36_i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out_10_delay_1 <= redist36_i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out_10_delay_0;
            redist36_i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out_10_delay_2 <= redist36_i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out_10_delay_1;
            redist36_i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out_10_q <= redist36_i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out_10_delay_2;
        end
    end

    // i_llvm_fpga_pop_i1_notcmp5188_pop40_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp5188_pop40_kernel_3mm35_mux_x(MUX,124)@10
    assign i_llvm_fpga_pop_i1_notcmp5188_pop40_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp5188_pop40_kernel_3mm35_mux_x_s = redist36_i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out_10_q;
    always @(i_llvm_fpga_pop_i1_notcmp5188_pop40_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp5188_pop40_kernel_3mm35_mux_x_s or i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm0_adapt_scalar_trunc4_sel_x_b or redist11_sync_together97_aunroll_x_in_c0_eni13_8_tpl_10_q)
    begin
        unique case (i_llvm_fpga_pop_i1_notcmp5188_pop40_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp5188_pop40_kernel_3mm35_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_notcmp5188_pop40_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp5188_pop40_kernel_3mm35_mux_x_q = i_llvm_fpga_push_i1_notcmp5188_push40_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_notcmp5188_pop40_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp5188_pop40_kernel_3mm35_mux_x_q = redist11_sync_together97_aunroll_x_in_c0_eni13_8_tpl_10_q;
            default : i_llvm_fpga_pop_i1_notcmp5188_pop40_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp5188_pop40_kernel_3mm35_mux_x_q = 1'b0;
        endcase
    end

    // i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm0_element_extension2_x(BITJOIN,154)@10
    assign i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm0_element_extension2_x_q = {i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_c_i7_03_x_q, i_llvm_fpga_pop_i1_memdep_phi5_pop2077_pop38_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2077_pop38_kernel_3mm33_mux_x_q};

    // valid_fanout_reg30(REG,214)@6 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg30_q <= $unsigned(redist21_sync_together97_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg29(REG,213)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg29_q <= $unsigned(redist22_sync_together97_aunroll_x_in_i_valid_8_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm1_x(FIFODELAY,155)@7 + 1
    // in i_valid@9
    // in i_write_pred@9
    // in i_data@10
    // out o_data@10
    assign i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg30_q & redist26_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_6_q);
    assign i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm1_x_i_valid = valid_fanout_reg29_q & redist27_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_8_q;
    assign i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm1_x_i_data = i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm0_adapt_scalar_trunc4_sel_x(BITSELECT,157)@10
    assign i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_memdep_phi5_pop2077_pop38_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2077_pop38_kernel_3mm33_mux_x(MUX,122)@10
    assign i_llvm_fpga_pop_i1_memdep_phi5_pop2077_pop38_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2077_pop38_kernel_3mm33_mux_x_s = redist36_i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out_10_q;
    always @(i_llvm_fpga_pop_i1_memdep_phi5_pop2077_pop38_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2077_pop38_kernel_3mm33_mux_x_s or i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm0_adapt_scalar_trunc4_sel_x_b or redist10_sync_together97_aunroll_x_in_c0_eni13_7_tpl_10_q)
    begin
        unique case (i_llvm_fpga_pop_i1_memdep_phi5_pop2077_pop38_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2077_pop38_kernel_3mm33_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_memdep_phi5_pop2077_pop38_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2077_pop38_kernel_3mm33_mux_x_q = i_llvm_fpga_push_i1_memdep_phi5_pop2077_push38_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_memdep_phi5_pop2077_pop38_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2077_pop38_kernel_3mm33_mux_x_q = redist10_sync_together97_aunroll_x_in_c0_eni13_7_tpl_10_q;
            default : i_llvm_fpga_pop_i1_memdep_phi5_pop2077_pop38_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2077_pop38_kernel_3mm33_mux_x_q = 1'b0;
        endcase
    end

    // i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm0_element_extension2_x(BITJOIN,148)@10
    assign i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm0_element_extension2_x_q = {i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_c_i7_03_x_q, i_llvm_fpga_pop_i1_memdep_phi3_pop1973_pop37_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi3_pop1973_pop37_kernel_3mm31_mux_x_q};

    // valid_fanout_reg27(REG,211)@6 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg27_q <= $unsigned(redist21_sync_together97_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg26(REG,210)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg26_q <= $unsigned(redist22_sync_together97_aunroll_x_in_i_valid_8_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm1_x(FIFODELAY,149)@7 + 1
    // in i_valid@9
    // in i_write_pred@9
    // in i_data@10
    // out o_data@10
    assign i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg27_q & redist26_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_6_q);
    assign i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm1_x_i_valid = valid_fanout_reg26_q & redist27_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_8_q;
    assign i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm1_x_i_data = i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm0_adapt_scalar_trunc4_sel_x(BITSELECT,151)@10
    assign i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_memdep_phi3_pop1973_pop37_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi3_pop1973_pop37_kernel_3mm31_mux_x(MUX,121)@10
    assign i_llvm_fpga_pop_i1_memdep_phi3_pop1973_pop37_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi3_pop1973_pop37_kernel_3mm31_mux_x_s = redist36_i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out_10_q;
    always @(i_llvm_fpga_pop_i1_memdep_phi3_pop1973_pop37_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi3_pop1973_pop37_kernel_3mm31_mux_x_s or i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm0_adapt_scalar_trunc4_sel_x_b or redist9_sync_together97_aunroll_x_in_c0_eni13_6_tpl_10_q)
    begin
        unique case (i_llvm_fpga_pop_i1_memdep_phi3_pop1973_pop37_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi3_pop1973_pop37_kernel_3mm31_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_memdep_phi3_pop1973_pop37_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi3_pop1973_pop37_kernel_3mm31_mux_x_q = i_llvm_fpga_push_i1_memdep_phi3_pop1973_push37_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_memdep_phi3_pop1973_pop37_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi3_pop1973_pop37_kernel_3mm31_mux_x_q = redist9_sync_together97_aunroll_x_in_c0_eni13_6_tpl_10_q;
            default : i_llvm_fpga_pop_i1_memdep_phi3_pop1973_pop37_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi3_pop1973_pop37_kernel_3mm31_mux_x_q = 1'b0;
        endcase
    end

    // i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm0_element_extension2_x(BITJOIN,142)@10
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm0_element_extension2_x_q = {i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_c_i7_03_x_q, i_llvm_fpga_pop_i1_memdep_phi2_pop1869_pop36_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi2_pop1869_pop36_kernel_3mm29_mux_x_q};

    // valid_fanout_reg24(REG,208)@6 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(redist21_sync_together97_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg23(REG,207)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(redist22_sync_together97_aunroll_x_in_i_valid_8_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm1_x(FIFODELAY,143)@7 + 1
    // in i_valid@9
    // in i_write_pred@9
    // in i_data@10
    // out o_data@10
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg24_q & redist26_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_6_q);
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm1_x_i_valid = valid_fanout_reg23_q & redist27_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_8_q;
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm1_x_i_data = i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm0_adapt_scalar_trunc4_sel_x(BITSELECT,145)@10
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_memdep_phi2_pop1869_pop36_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi2_pop1869_pop36_kernel_3mm29_mux_x(MUX,120)@10
    assign i_llvm_fpga_pop_i1_memdep_phi2_pop1869_pop36_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi2_pop1869_pop36_kernel_3mm29_mux_x_s = redist36_i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out_10_q;
    always @(i_llvm_fpga_pop_i1_memdep_phi2_pop1869_pop36_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi2_pop1869_pop36_kernel_3mm29_mux_x_s or i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm0_adapt_scalar_trunc4_sel_x_b or redist8_sync_together97_aunroll_x_in_c0_eni13_5_tpl_10_q)
    begin
        unique case (i_llvm_fpga_pop_i1_memdep_phi2_pop1869_pop36_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi2_pop1869_pop36_kernel_3mm29_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_memdep_phi2_pop1869_pop36_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi2_pop1869_pop36_kernel_3mm29_mux_x_q = i_llvm_fpga_push_i1_memdep_phi2_pop1869_push36_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_memdep_phi2_pop1869_pop36_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi2_pop1869_pop36_kernel_3mm29_mux_x_q = redist8_sync_together97_aunroll_x_in_c0_eni13_5_tpl_10_q;
            default : i_llvm_fpga_pop_i1_memdep_phi2_pop1869_pop36_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi2_pop1869_pop36_kernel_3mm29_mux_x_q = 1'b0;
        endcase
    end

    // i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_element_extension2_x(BITJOIN,130)@10
    assign i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_element_extension2_x_q = {i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_c_i7_03_x_q, i_llvm_fpga_pop_i1_forked61_pop34_kernel_3mm0_i_llvm_fpga_pop_i1_forked61_pop34_kernel_3mm27_mux_x_q};

    // valid_fanout_reg21(REG,205)@6 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist21_sync_together97_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg20(REG,204)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist22_sync_together97_aunroll_x_in_i_valid_8_q);
        end
    end

    // i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm1_x(FIFODELAY,131)@7 + 1
    // in i_valid@9
    // in i_write_pred@9
    // in i_data@10
    // out o_data@10
    assign i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg21_q & redist26_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_6_q);
    assign i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm1_x_i_valid = valid_fanout_reg20_q & redist27_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_inv_pred_x_q_8_q;
    assign i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm1_x_i_data = i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_adapt_scalar_trunc4_sel_x(BITSELECT,133)@10
    assign i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_i_llvm_fpga_push_i1_forked61_push34_kernel_3mm1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_forked61_pop34_kernel_3mm0_i_llvm_fpga_pop_i1_forked61_pop34_kernel_3mm27_mux_x(MUX,119)@10
    assign i_llvm_fpga_pop_i1_forked61_pop34_kernel_3mm0_i_llvm_fpga_pop_i1_forked61_pop34_kernel_3mm27_mux_x_s = redist36_i_llvm_fpga_forked_kernel_3mm_b3_forked_kernel_3mm3_out_buffer_out_10_q;
    always @(i_llvm_fpga_pop_i1_forked61_pop34_kernel_3mm0_i_llvm_fpga_pop_i1_forked61_pop34_kernel_3mm27_mux_x_s or i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_adapt_scalar_trunc4_sel_x_b or redist7_sync_together97_aunroll_x_in_c0_eni13_4_tpl_10_q)
    begin
        unique case (i_llvm_fpga_pop_i1_forked61_pop34_kernel_3mm0_i_llvm_fpga_pop_i1_forked61_pop34_kernel_3mm27_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_forked61_pop34_kernel_3mm0_i_llvm_fpga_pop_i1_forked61_pop34_kernel_3mm27_mux_x_q = i_llvm_fpga_push_i1_forked61_push34_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_forked61_pop34_kernel_3mm0_i_llvm_fpga_pop_i1_forked61_pop34_kernel_3mm27_mux_x_q = redist7_sync_together97_aunroll_x_in_c0_eni13_4_tpl_10_q;
            default : i_llvm_fpga_pop_i1_forked61_pop34_kernel_3mm0_i_llvm_fpga_pop_i1_forked61_pop34_kernel_3mm27_mux_x_q = 1'b0;
        endcase
    end

    // i_notcmp46_kernel_3mm21(LOGICAL,81)@10
    assign i_notcmp46_kernel_3mm21_q = redist1_i_exitcond13_kernel_3mm17_cmp_nsign_q_6_q ^ VCC_q;

    // redist1_i_exitcond13_kernel_3mm17_cmp_nsign_q_6(DELAY,281)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist1_i_exitcond13_kernel_3mm17_cmp_nsign_q_6 ( .xin(i_exitcond13_kernel_3mm17_cmp_nsign_q), .xout(redist1_i_exitcond13_kernel_3mm17_cmp_nsign_q_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist30_i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm14_mux_x_q_4(DELAY,310)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist30_i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm14_mux_x_q_4_delay_0 <= $unsigned(redist29_i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm14_mux_x_q_1_q);
            redist30_i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm14_mux_x_q_4_delay_1 <= redist30_i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm14_mux_x_q_4_delay_0;
            redist30_i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm14_mux_x_q_4_q <= redist30_i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm14_mux_x_q_4_delay_1;
        end
    end

    // redist41_i_arrayidx121_kernel_3mm13_vt_join_q_4_inputreg0(DELAY,342)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist41_i_arrayidx121_kernel_3mm13_vt_join_q_4_inputreg0_q <= $unsigned(i_arrayidx121_kernel_3mm13_vt_join_q);
        end
    end

    // redist41_i_arrayidx121_kernel_3mm13_vt_join_q_4(DELAY,321)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist41_i_arrayidx121_kernel_3mm13_vt_join_q_4_delay_0 <= $unsigned(redist41_i_arrayidx121_kernel_3mm13_vt_join_q_4_inputreg0_q);
            redist41_i_arrayidx121_kernel_3mm13_vt_join_q_4_delay_1 <= redist41_i_arrayidx121_kernel_3mm13_vt_join_q_4_delay_0;
            redist41_i_arrayidx121_kernel_3mm13_vt_join_q_4_q <= redist41_i_arrayidx121_kernel_3mm13_vt_join_q_4_delay_1;
        end
    end

    // redist40_i_idxprom11_kernel_3mm12_vt_join_q_4_inputreg0(DELAY,341)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist40_i_idxprom11_kernel_3mm12_vt_join_q_4_inputreg0_q <= $unsigned(i_idxprom11_kernel_3mm12_vt_join_q);
        end
    end

    // redist40_i_idxprom11_kernel_3mm12_vt_join_q_4(DELAY,320)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist40_i_idxprom11_kernel_3mm12_vt_join_q_4_delay_0 <= $unsigned(redist40_i_idxprom11_kernel_3mm12_vt_join_q_4_inputreg0_q);
            redist40_i_idxprom11_kernel_3mm12_vt_join_q_4_delay_1 <= redist40_i_idxprom11_kernel_3mm12_vt_join_q_4_delay_0;
            redist40_i_idxprom11_kernel_3mm12_vt_join_q_4_q <= redist40_i_idxprom11_kernel_3mm12_vt_join_q_4_delay_1;
        end
    end

    // redist39_i_idxprom_kernel_3mm10_vt_join_q_6_rdcnt(ADD,340)
    assign redist39_i_idxprom_kernel_3mm10_vt_join_q_6_rdcnt_a = {1'b0, redist39_i_idxprom_kernel_3mm10_vt_join_q_6_wraddr_q};
    assign redist39_i_idxprom_kernel_3mm10_vt_join_q_6_rdcnt_b = {1'b0, redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist39_i_idxprom_kernel_3mm10_vt_join_q_6_rdcnt_o <= $unsigned(redist39_i_idxprom_kernel_3mm10_vt_join_q_6_rdcnt_a) + $unsigned(redist39_i_idxprom_kernel_3mm10_vt_join_q_6_rdcnt_b);
        end
    end
    assign redist39_i_idxprom_kernel_3mm10_vt_join_q_6_rdcnt_q = redist39_i_idxprom_kernel_3mm10_vt_join_q_6_rdcnt_o[2:0];

    // redist39_i_idxprom_kernel_3mm10_vt_join_q_6_inputreg0(DELAY,335)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist39_i_idxprom_kernel_3mm10_vt_join_q_6_inputreg0_q <= $unsigned(i_idxprom_kernel_3mm10_vt_join_q);
        end
    end

    // redist39_i_idxprom_kernel_3mm10_vt_join_q_6_wraddr(COUNTER,338)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist39_i_idxprom_kernel_3mm10_vt_join_q_6_wraddr_i <= $unsigned(redist39_i_idxprom_kernel_3mm10_vt_join_q_6_wraddr_i) + $unsigned(2'd1);
        end
    end
    assign redist39_i_idxprom_kernel_3mm10_vt_join_q_6_wraddr_q = redist39_i_idxprom_kernel_3mm10_vt_join_q_6_wraddr_i[1:0];

    // redist39_i_idxprom_kernel_3mm10_vt_join_q_6_mem(DUALMEM,337)
    assign redist39_i_idxprom_kernel_3mm10_vt_join_q_6_mem_ia = $unsigned(redist39_i_idxprom_kernel_3mm10_vt_join_q_6_inputreg0_q);
    assign redist39_i_idxprom_kernel_3mm10_vt_join_q_6_mem_aa = redist39_i_idxprom_kernel_3mm10_vt_join_q_6_wraddr_q;
    assign redist39_i_idxprom_kernel_3mm10_vt_join_q_6_mem_ab = redist39_i_idxprom_kernel_3mm10_vt_join_q_6_rdcnt_q[1:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(64),
        .widthad_b(2),
        .numwords_b(4),
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
    ) redist39_i_idxprom_kernel_3mm10_vt_join_q_6_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist39_i_idxprom_kernel_3mm10_vt_join_q_6_mem_aa),
        .data_a(redist39_i_idxprom_kernel_3mm10_vt_join_q_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist39_i_idxprom_kernel_3mm10_vt_join_q_6_mem_ab),
        .q_b(redist39_i_idxprom_kernel_3mm10_vt_join_q_6_mem_iq),
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
    assign redist39_i_idxprom_kernel_3mm10_vt_join_q_6_mem_q = redist39_i_idxprom_kernel_3mm10_vt_join_q_6_mem_iq[63:0];

    // redist39_i_idxprom_kernel_3mm10_vt_join_q_6_outputreg0(DELAY,336)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist39_i_idxprom_kernel_3mm10_vt_join_q_6_outputreg0_q <= $unsigned(redist39_i_idxprom_kernel_3mm10_vt_join_q_6_mem_q);
        end
    end

    // redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_rdcnt(ADD,334)
    assign redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_rdcnt_a = {1'b0, redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_wraddr_q};
    assign redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_rdcnt_b = {1'b0, redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_rdcnt_o <= $unsigned(redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_rdcnt_a) + $unsigned(redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_rdcnt_b);
        end
    end
    assign redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_rdcnt_q = redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_rdcnt_o[2:0];

    // redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_inputreg0(DELAY,329)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_inputreg0_q <= $unsigned(i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q);
        end
    end

    // redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_wraddr(COUNTER,332)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_wraddr_i <= $unsigned(redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_wraddr_i) + $unsigned(2'd1);
        end
    end
    assign redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_wraddr_q = redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_wraddr_i[1:0];

    // redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_mem(DUALMEM,331)
    assign redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_mem_ia = $unsigned(redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_inputreg0_q);
    assign redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_mem_aa = redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_wraddr_q;
    assign redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_mem_ab = redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_rdcnt_q[1:0];
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
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Stratix 10")
    ) redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_mem_aa),
        .data_a(redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_mem_ab),
        .q_b(redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_mem_iq),
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
    assign redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_mem_q = redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_mem_iq[31:0];

    // redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_outputreg0(DELAY,330)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_outputreg0_q <= $unsigned(redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_mem_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,182)@10
    assign out_c0_exi25_0_tpl = GND_q;
    assign out_c0_exi25_1_tpl = redist28_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2385_pop39_kernel_3mm9_mux_x_q_6_outputreg0_q;
    assign out_c0_exi25_2_tpl = redist39_i_idxprom_kernel_3mm10_vt_join_q_6_outputreg0_q;
    assign out_c0_exi25_3_tpl = redist40_i_idxprom11_kernel_3mm12_vt_join_q_4_q;
    assign out_c0_exi25_4_tpl = redist41_i_arrayidx121_kernel_3mm13_vt_join_q_4_q;
    assign out_c0_exi25_5_tpl = redist30_i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1765_pop35_kernel_3mm14_mux_x_q_4_q;
    assign out_c0_exi25_6_tpl = i_llvm_fpga_mem_unnamed_kernel_3mm1_kernel_3mm15_out_o_readdata;
    assign out_c0_exi25_7_tpl = redist1_i_exitcond13_kernel_3mm17_cmp_nsign_q_6_q;
    assign out_c0_exi25_8_tpl = i_notcmp46_kernel_3mm21_q;
    assign out_c0_exi25_9_tpl = i_llvm_fpga_pop_i1_forked61_pop34_kernel_3mm0_i_llvm_fpga_pop_i1_forked61_pop34_kernel_3mm27_mux_x_q;
    assign out_c0_exi25_10_tpl = i_llvm_fpga_pop_i1_memdep_phi2_pop1869_pop36_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi2_pop1869_pop36_kernel_3mm29_mux_x_q;
    assign out_c0_exi25_11_tpl = i_llvm_fpga_pop_i1_memdep_phi3_pop1973_pop37_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi3_pop1973_pop37_kernel_3mm31_mux_x_q;
    assign out_c0_exi25_12_tpl = i_llvm_fpga_pop_i1_memdep_phi5_pop2077_pop38_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2077_pop38_kernel_3mm33_mux_x_q;
    assign out_c0_exi25_13_tpl = i_llvm_fpga_pop_i1_notcmp5188_pop40_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp5188_pop40_kernel_3mm35_mux_x_q;
    assign out_c0_exi25_14_tpl = redist12_sync_together97_aunroll_x_in_c0_eni13_9_tpl_10_q;
    assign out_c0_exi25_15_tpl = redist13_sync_together97_aunroll_x_in_c0_eni13_10_tpl_10_q;
    assign out_c0_exi25_16_tpl = redist14_sync_together97_aunroll_x_in_c0_eni13_11_tpl_10_q;
    assign out_c0_exi25_17_tpl = redist15_sync_together97_aunroll_x_in_c0_eni13_12_tpl_10_q;
    assign out_c0_exi25_18_tpl = redist16_sync_together97_aunroll_x_in_c0_eni13_13_tpl_10_q;
    assign out_c0_exi25_19_tpl = redist4_sync_together97_aunroll_x_in_c0_eni13_1_tpl_10_outputreg0_q;
    assign out_c0_exi25_20_tpl = redist11_sync_together97_aunroll_x_in_c0_eni13_8_tpl_10_q;
    assign out_c0_exi25_21_tpl = redist7_sync_together97_aunroll_x_in_c0_eni13_4_tpl_10_q;
    assign out_c0_exi25_22_tpl = redist6_sync_together97_aunroll_x_in_c0_eni13_3_tpl_10_q;
    assign out_c0_exi25_23_tpl = redist8_sync_together97_aunroll_x_in_c0_eni13_5_tpl_10_q;
    assign out_c0_exi25_24_tpl = redist9_sync_together97_aunroll_x_in_c0_eni13_6_tpl_10_q;
    assign out_c0_exi25_25_tpl = redist10_sync_together97_aunroll_x_in_c0_eni13_7_tpl_10_q;
    assign out_kernel_3mm_B3_current_iter_isspec = redist38_i_kernel_3mm_b3_current_iter_isspec_kernel_3mm5_q_4_q;
    assign out_o_valid = redist2_valid_fanout_reg0_q_1_q;

endmodule
