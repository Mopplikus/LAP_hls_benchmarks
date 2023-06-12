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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body44_kernel_2mms_c0_enter14516_kernel_2mm0
// Created for function/kernel kernel_2mm
// SystemVerilog created on Thu Apr 27 14:25:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_i_sfc_logic_s_c0_in_for_body40000ter14516_kernel_2mm0 (
    input wire [31:0] in_unnamed_kernel_2mm12_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm12_kernel_2mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_2mm12_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm12_kernel_2mm_avm_readdatavalid,
    output wire [31:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [31:0] in_intel_reserved_ffwd_1_0,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi9157_0_tpl,
    output wire [63:0] out_c0_exi9157_1_tpl,
    output wire [63:0] out_c0_exi9157_2_tpl,
    output wire [63:0] out_c0_exi9157_3_tpl,
    output wire [31:0] out_c0_exi9157_4_tpl,
    output wire [0:0] out_c0_exi9157_5_tpl,
    output wire [0:0] out_c0_exi9157_6_tpl,
    output wire [0:0] out_c0_exi9157_7_tpl,
    output wire [63:0] out_c0_exi9157_8_tpl,
    output wire [0:0] out_c0_exi9157_9_tpl,
    output wire [0:0] out_kernel_2mm_B9_current_iter_isspec,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni3144_0_tpl,
    input wire [0:0] in_c0_eni3144_1_tpl,
    input wire [63:0] in_c0_eni3144_2_tpl,
    input wire [0:0] in_c0_eni3144_3_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_058_q;
    wire [31:0] c_i32_162_q;
    wire [4:0] c_i5_161_q;
    wire [4:0] c_i5_859_q;
    wire [63:0] c_kernel_2mm_D_local_pmem_q;
    wire [1:0] i_arrayidx494_kernel_2mm12_vt_const_1_q;
    wire [63:0] i_arrayidx494_kernel_2mm12_vt_join_q;
    wire [61:0] i_arrayidx494_kernel_2mm12_vt_select_63_b;
    wire [5:0] i_fpga_indvars_iv_next9_kernel_2mm22_a;
    wire [5:0] i_fpga_indvars_iv_next9_kernel_2mm22_b;
    logic [5:0] i_fpga_indvars_iv_next9_kernel_2mm22_o;
    wire [5:0] i_fpga_indvars_iv_next9_kernel_2mm22_q;
    wire [63:0] i_idxprom48_kernel_2mm10_vt_join_q;
    wire [31:0] i_idxprom48_kernel_2mm10_vt_select_31_b;
    wire [32:0] i_inc74_kernel_2mm24_a;
    wire [32:0] i_inc74_kernel_2mm24_b;
    logic [32:0] i_inc74_kernel_2mm24_o;
    wire [32:0] i_inc74_kernel_2mm24_q;
    wire [0:0] i_kernel_2mm_b9_current_iter_isspec_kernel_2mm5_q;
    wire [0:0] i_kernel_2mm_b9_next_iter_isreal_kernel_2mm7_q;
    wire [0:0] i_llvm_fpga_dummy_thread_kernel_2mm_b9_dummy_kernel_2mm2_out_dummy_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_beta4215_kernel_2mm14_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_forked_kernel_2mm_b9_forked_kernel_2mm3_out_buffer_out;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm13_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm13_out_unnamed_kernel_2mm12_kernel_2mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm13_out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm13_out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm13_out_unnamed_kernel_2mm12_kernel_2mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm13_out_unnamed_kernel_2mm12_kernel_2mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm13_out_unnamed_kernel_2mm12_kernel_2mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm13_out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going18_kernel_2mm6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going18_kernel_2mm6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going18_kernel_2mm6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going18_kernel_2mm6_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going18_kernel_2mm6_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going18_kernel_2mm6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond19_kernel_2mm21_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond19_kernel_2mm21_out_feedback_valid_out_5;
    wire [0:0] i_notcmp16_kernel_2mm20_q;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next9_kernel_2mm22_sel_x_b;
    wire [31:0] bgTrunc_i_inc74_kernel_2mm24_sel_x_b;
    wire [63:0] bgTrunc_i_mul50_kernel_2mm15_sel_x_in;
    wire [31:0] bgTrunc_i_mul50_kernel_2mm15_sel_x_b;
    wire [9:0] i_arrayidx494_kernel_2mm0_add_x_a;
    wire [9:0] i_arrayidx494_kernel_2mm0_add_x_b;
    logic [9:0] i_arrayidx494_kernel_2mm0_add_x_o;
    wire [9:0] i_arrayidx494_kernel_2mm0_add_x_q;
    wire [63:0] i_arrayidx494_kernel_2mm0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx494_kernel_2mm0_narrow_x_b;
    wire [8:0] i_arrayidx494_kernel_2mm0_shift_join_x_q;
    wire [9:0] i_arrayidx494_kernel_2mm0_dupName_0_add_x_a;
    wire [9:0] i_arrayidx494_kernel_2mm0_dupName_0_add_x_b;
    logic [9:0] i_arrayidx494_kernel_2mm0_dupName_0_add_x_o;
    wire [9:0] i_arrayidx494_kernel_2mm0_dupName_0_add_x_q;
    wire [17:0] i_arrayidx494_kernel_2mm0_mult_extender_x_q;
    wire [2:0] i_arrayidx494_kernel_2mm0_mult_multconst_x_q;
    wire [8:0] i_arrayidx494_kernel_2mm0_dupName_0_trunc_sel_x_b;
    wire [8:0] i_arrayidx494_kernel_2mm0_dupName_1_trunc_sel_x_b;
    wire [8:0] i_arrayidx494_kernel_2mm0_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx494_kernel_2mm0_dupName_3_trunc_sel_x_b;
    wire [8:0] i_arrayidx494_kernel_2mm0_dupName_5_trunc_sel_x_b;
    wire [63:0] i_idxprom48_kernel_2mm10_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b9_current_iter_isreal_kernel_2mm0_i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b9_current_iter_isreal_kernel_2mm4_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b9_current_iter_isreal_kernel_2mm0_i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b9_current_iter_isreal_kernel_2mm4_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3143_pop22_kernel_2mm0_i_llvm_fpga_pop_i1_notcmp3143_pop22_kernel_2mm26_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_notcmp3143_pop22_kernel_2mm0_i_llvm_fpga_pop_i1_notcmp3143_pop22_kernel_2mm26_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_j40_035_pop21_kernel_2mm0_i_llvm_fpga_pop_i32_j40_035_pop21_kernel_2mm9_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_j40_035_pop21_kernel_2mm0_i_llvm_fpga_pop_i32_j40_035_pop21_kernel_2mm9_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop20_kernel_2mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop20_kernel_2mm16_mux_x_s;
    reg [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop20_kernel_2mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop20_kernel_2mm16_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_c_i7_03_x_q;
    wire [7:0] i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm1_x_i_valid;
    wire i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm1_x_i_stall;
    wire i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm0_i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm1_x_i_valid;
    wire i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm0_i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm0_i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm1_x_i_stall;
    wire i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm0_i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm0_i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm0_i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm0_i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm1_x_i_valid;
    wire i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm0_i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm0_i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm1_x_i_stall;
    wire i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm0_i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm0_i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm0_i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm1_x_o_data;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm0_i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm1_x_i_valid;
    wire i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm0_i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm0_i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm1_x_i_stall;
    wire i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm0_i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm0_i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm0_i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm1_x_o_data;
    wire [4:0] i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i64_idxprom49_push23_kernel_2mm0_i_llvm_fpga_push_i64_idxprom49_push23_kernel_2mm1_x_i_valid;
    wire i_llvm_fpga_push_i64_idxprom49_push23_kernel_2mm0_i_llvm_fpga_push_i64_idxprom49_push23_kernel_2mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_idxprom49_push23_kernel_2mm0_i_llvm_fpga_push_i64_idxprom49_push23_kernel_2mm1_x_i_stall;
    wire i_llvm_fpga_push_i64_idxprom49_push23_kernel_2mm0_i_llvm_fpga_push_i64_idxprom49_push23_kernel_2mm1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_idxprom49_push23_kernel_2mm0_i_llvm_fpga_push_i64_idxprom49_push23_kernel_2mm1_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_idxprom49_push23_kernel_2mm0_i_llvm_fpga_push_i64_idxprom49_push23_kernel_2mm1_x_o_data;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg7_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg8_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg10_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg11_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg12_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg13_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg14_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg15_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg16_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg18_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg19_q;
    wire [0:0] i_exitcond10_kernel_2mm17_cmp_nsign_q;
    wire [14:0] i_mul50_kernel_2mm15_bjA2_q;
    wire [14:0] i_mul50_kernel_2mm15_bjB4_q;
    wire [65:0] i_mul50_kernel_2mm15_sums_join_0_q;
    wire [50:0] i_mul50_kernel_2mm15_sums_align_1_q;
    wire [50:0] i_mul50_kernel_2mm15_sums_align_1_qint;
    wire [66:0] i_mul50_kernel_2mm15_sums_result_add_0_0_a;
    wire [66:0] i_mul50_kernel_2mm15_sums_result_add_0_0_b;
    logic [66:0] i_mul50_kernel_2mm15_sums_result_add_0_0_o;
    wire [66:0] i_mul50_kernel_2mm15_sums_result_add_0_0_q;
    wire [9:0] addsumAHighB_uid186_i_arrayidx494_kernel_2mm0_mult_x_a;
    wire [9:0] addsumAHighB_uid186_i_arrayidx494_kernel_2mm0_mult_x_b;
    logic [9:0] addsumAHighB_uid186_i_arrayidx494_kernel_2mm0_mult_x_o;
    wire [9:0] addsumAHighB_uid186_i_arrayidx494_kernel_2mm0_mult_x_q;
    wire [11:0] add_uid187_i_arrayidx494_kernel_2mm0_mult_x_q;
    wire [14:0] sR_mergedSignalTM_uid192_i_arrayidx494_kernel_2mm0_mult_x_q;
    wire i_mul50_kernel_2mm15_im0_cma_reset;
    (* preserve_syn_only *) reg signed [14:0] i_mul50_kernel_2mm15_im0_cma_ah [0:0];
    (* preserve_syn_only *) reg signed [14:0] i_mul50_kernel_2mm15_im0_cma_ch [0:0];
    wire [14:0] i_mul50_kernel_2mm15_im0_cma_a0;
    wire [14:0] i_mul50_kernel_2mm15_im0_cma_c0;
    wire [29:0] i_mul50_kernel_2mm15_im0_cma_s0;
    wire [29:0] i_mul50_kernel_2mm15_im0_cma_qq;
    reg [29:0] i_mul50_kernel_2mm15_im0_cma_q;
    wire i_mul50_kernel_2mm15_im0_cma_ena0;
    wire i_mul50_kernel_2mm15_im0_cma_ena1;
    wire i_mul50_kernel_2mm15_im0_cma_ena2;
    wire i_mul50_kernel_2mm15_im10_cma_reset;
    (* preserve_syn_only *) reg [17:0] i_mul50_kernel_2mm15_im10_cma_ah [0:0];
    (* preserve_syn_only *) reg [17:0] i_mul50_kernel_2mm15_im10_cma_ch [0:0];
    wire [17:0] i_mul50_kernel_2mm15_im10_cma_a0;
    wire [17:0] i_mul50_kernel_2mm15_im10_cma_c0;
    wire [35:0] i_mul50_kernel_2mm15_im10_cma_s0;
    wire [35:0] i_mul50_kernel_2mm15_im10_cma_qq;
    reg [35:0] i_mul50_kernel_2mm15_im10_cma_q;
    wire i_mul50_kernel_2mm15_im10_cma_ena0;
    wire i_mul50_kernel_2mm15_im10_cma_ena1;
    wire i_mul50_kernel_2mm15_im10_cma_ena2;
    wire i_mul50_kernel_2mm15_ma5_cma_reset;
    (* preserve_syn_only *) reg [13:0] i_mul50_kernel_2mm15_ma5_cma_ah [0:1];
    (* preserve_syn_only *) reg [17:0] i_mul50_kernel_2mm15_ma5_cma_ch [0:1];
    wire [13:0] i_mul50_kernel_2mm15_ma5_cma_a0;
    wire [17:0] i_mul50_kernel_2mm15_ma5_cma_c0;
    wire [13:0] i_mul50_kernel_2mm15_ma5_cma_a1;
    wire [17:0] i_mul50_kernel_2mm15_ma5_cma_c1;
    wire [32:0] i_mul50_kernel_2mm15_ma5_cma_s0;
    wire [32:0] i_mul50_kernel_2mm15_ma5_cma_qq;
    reg [32:0] i_mul50_kernel_2mm15_ma5_cma_q;
    wire i_mul50_kernel_2mm15_ma5_cma_ena0;
    wire i_mul50_kernel_2mm15_ma5_cma_ena1;
    wire i_mul50_kernel_2mm15_ma5_cma_ena2;
    wire [54:0] i_arrayidx494_kernel_2mm0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx494_kernel_2mm0_upper_bits_x_merged_bit_select_c;
    wire [13:0] i_mul50_kernel_2mm15_bs3_merged_bit_select_b;
    wire [17:0] i_mul50_kernel_2mm15_bs3_merged_bit_select_c;
    wire [13:0] i_mul50_kernel_2mm15_bs1_merged_bit_select_b;
    wire [17:0] i_mul50_kernel_2mm15_bs1_merged_bit_select_c;
    wire [1:0] lowRangeB_uid184_i_arrayidx494_kernel_2mm0_mult_x_merged_bit_select_b;
    wire [6:0] lowRangeB_uid184_i_arrayidx494_kernel_2mm0_mult_x_merged_bit_select_c;
    reg [54:0] redist0_i_arrayidx494_kernel_2mm0_upper_bits_x_merged_bit_select_b_1_q;
    reg [32:0] redist1_i_mul50_kernel_2mm15_ma5_cma_q_1_q;
    reg [35:0] redist2_i_mul50_kernel_2mm15_im10_cma_q_1_q;
    reg [29:0] redist3_i_mul50_kernel_2mm15_im0_cma_q_1_q;
    reg [0:0] redist4_i_exitcond10_kernel_2mm17_cmp_nsign_q_13_q;
    reg [0:0] redist5_valid_fanout_reg0_q_7_q;
    reg [63:0] redist6_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_4_q;
    reg [63:0] redist6_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_4_delay_0;
    reg [63:0] redist6_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_4_delay_1;
    reg [0:0] redist8_sync_together70_aunroll_x_in_c0_eni3144_3_tpl_6_q;
    reg [0:0] redist9_sync_together70_aunroll_x_in_c0_eni3144_3_tpl_17_q;
    reg [0:0] redist10_sync_together70_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist10_sync_together70_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist11_sync_together70_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist12_sync_together70_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist13_sync_together70_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist14_sync_together70_aunroll_x_in_i_valid_9_q;
    reg [0:0] redist14_sync_together70_aunroll_x_in_i_valid_9_delay_0;
    reg [0:0] redist14_sync_together70_aunroll_x_in_i_valid_9_delay_1;
    reg [0:0] redist14_sync_together70_aunroll_x_in_i_valid_9_delay_2;
    reg [0:0] redist15_i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_2_q;
    reg [0:0] redist15_i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_2_delay_0;
    reg [0:0] redist16_i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_4_q;
    reg [0:0] redist16_i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_4_delay_0;
    reg [0:0] redist18_i_llvm_fpga_pop_i1_notcmp3143_pop22_kernel_2mm0_i_llvm_fpga_pop_i1_notcmp3143_pop22_kernel_2mm26_mux_x_q_11_q;
    reg [8:0] redist19_i_arrayidx494_kernel_2mm0_dupName_2_trunc_sel_x_b_1_q;
    reg [8:0] redist20_i_arrayidx494_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q;
    reg [0:0] redist21_i_llvm_fpga_pipeline_keep_going18_kernel_2mm6_out_data_out_2_q;
    reg [0:0] redist21_i_llvm_fpga_pipeline_keep_going18_kernel_2mm6_out_data_out_2_delay_0;
    reg [0:0] redist22_i_llvm_fpga_forked_kernel_2mm_b9_forked_kernel_2mm3_out_buffer_out_4_q;
    reg [0:0] redist22_i_llvm_fpga_forked_kernel_2mm_b9_forked_kernel_2mm3_out_buffer_out_4_delay_0;
    reg [0:0] redist22_i_llvm_fpga_forked_kernel_2mm_b9_forked_kernel_2mm3_out_buffer_out_4_delay_1;
    reg [0:0] redist22_i_llvm_fpga_forked_kernel_2mm_b9_forked_kernel_2mm3_out_buffer_out_4_delay_2;
    reg [0:0] redist23_i_llvm_fpga_forked_kernel_2mm_b9_forked_kernel_2mm3_out_buffer_out_6_q;
    reg [0:0] redist23_i_llvm_fpga_forked_kernel_2mm_b9_forked_kernel_2mm3_out_buffer_out_6_delay_0;
    reg [0:0] redist24_i_llvm_fpga_dummy_thread_kernel_2mm_b9_dummy_kernel_2mm2_out_dummy_out_4_q;
    reg [0:0] redist24_i_llvm_fpga_dummy_thread_kernel_2mm_b9_dummy_kernel_2mm2_out_dummy_out_4_delay_0;
    reg [0:0] redist24_i_llvm_fpga_dummy_thread_kernel_2mm_b9_dummy_kernel_2mm2_out_dummy_out_4_delay_1;
    reg [0:0] redist24_i_llvm_fpga_dummy_thread_kernel_2mm_b9_dummy_kernel_2mm2_out_dummy_out_4_delay_2;
    reg [0:0] redist25_i_kernel_2mm_b9_current_iter_isspec_kernel_2mm5_q_11_q;
    reg [63:0] redist6_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_4_inputreg0_q;
    reg [63:0] redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_inputreg0_q;
    reg [63:0] redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_outputreg0_q;
    wire redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_mem_reset0;
    wire [63:0] redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_mem_ia;
    wire [3:0] redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_mem_aa;
    wire [3:0] redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_mem_ab;
    wire [63:0] redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_mem_iq;
    wire [63:0] redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_mem_q;
    wire [3:0] redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_wraddr_i = 4'b1111;
    wire [3:0] redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_offset_q;
    wire [4:0] redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_rdcnt_a;
    wire [4:0] redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_rdcnt_b;
    logic [4:0] redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_rdcnt_o;
    wire [4:0] redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_rdcnt_q;
    reg [63:0] redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_inputreg0_q;
    reg [63:0] redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_outputreg0_q;
    wire redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_mem_reset0;
    wire [63:0] redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_mem_ia;
    wire [3:0] redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_mem_aa;
    wire [3:0] redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_mem_ab;
    wire [63:0] redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_mem_iq;
    wire [63:0] redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_mem_q;
    wire [3:0] redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_wraddr_i = 4'b1111;
    wire [4:0] redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_rdcnt_a;
    wire [4:0] redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_rdcnt_b;
    logic [4:0] redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_rdcnt_o;
    wire [4:0] redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_rdcnt_q;
    reg [63:0] redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_inputreg0_q;
    reg [63:0] redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_outputreg0_q;
    wire redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_mem_reset0;
    wire [63:0] redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_mem_ia;
    wire [2:0] redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_mem_aa;
    wire [2:0] redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_mem_ab;
    wire [63:0] redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_mem_iq;
    wire [63:0] redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_mem_q;
    wire [2:0] redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [2:0] redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_wraddr_i = 3'b111;
    wire [2:0] redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_offset_q;
    wire [3:0] redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_rdcnt_a;
    wire [3:0] redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_rdcnt_b;
    logic [3:0] redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_rdcnt_o;
    wire [3:0] redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_rdcnt_q;
    reg [63:0] redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_inputreg0_q;
    reg [63:0] redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_outputreg0_q;
    wire redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_mem_reset0;
    wire [63:0] redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_mem_ia;
    wire [2:0] redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_mem_aa;
    wire [2:0] redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_mem_ab;
    wire [63:0] redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_mem_iq;
    wire [63:0] redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_mem_q;
    wire [2:0] redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [2:0] redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_wraddr_i = 3'b111;
    wire [3:0] redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_rdcnt_a;
    wire [3:0] redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_rdcnt_b;
    logic [3:0] redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_rdcnt_o;
    wire [3:0] redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_rdcnt_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist10_sync_together70_aunroll_x_in_i_valid_2(DELAY,239)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist10_sync_together70_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist10_sync_together70_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_sync_together70_aunroll_x_in_i_valid_2_q <= redist10_sync_together70_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist11_sync_together70_aunroll_x_in_i_valid_3(DELAY,240)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist11_sync_together70_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist11_sync_together70_aunroll_x_in_i_valid_3_q <= $unsigned(redist10_sync_together70_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist12_sync_together70_aunroll_x_in_i_valid_4(DELAY,241)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_sync_together70_aunroll_x_in_i_valid_4_q <= $unsigned(redist11_sync_together70_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist13_sync_together70_aunroll_x_in_i_valid_5(DELAY,242)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist13_sync_together70_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist13_sync_together70_aunroll_x_in_i_valid_5_q <= $unsigned(redist12_sync_together70_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg7(REG,137)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist13_sync_together70_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_c_i7_03_x(CONSTANT,105)
    assign i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_c_i7_03_x_q = $unsigned(7'b0000000);

    // valid_fanout_reg2(REG,132)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist11_sync_together70_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg12(REG,142)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist11_sync_together70_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_i5_859(CONSTANT,38)
    assign c_i5_859_q = $unsigned(5'b01000);

    // i_arrayidx494_kernel_2mm0_mult_multconst_x(CONSTANT,91)
    assign i_arrayidx494_kernel_2mm0_mult_multconst_x_q = $unsigned(3'b000);

    // c_i5_161(CONSTANT,37)
    assign c_i5_161_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next9_kernel_2mm22(ADD,46)@4
    assign i_fpga_indvars_iv_next9_kernel_2mm22_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop20_kernel_2mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop20_kernel_2mm16_mux_x_q};
    assign i_fpga_indvars_iv_next9_kernel_2mm22_b = {1'b0, c_i5_161_q};
    assign i_fpga_indvars_iv_next9_kernel_2mm22_o = $unsigned(i_fpga_indvars_iv_next9_kernel_2mm22_a) + $unsigned(i_fpga_indvars_iv_next9_kernel_2mm22_b);
    assign i_fpga_indvars_iv_next9_kernel_2mm22_q = i_fpga_indvars_iv_next9_kernel_2mm22_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next9_kernel_2mm22_sel_x(BITSELECT,67)@4
    assign bgTrunc_i_fpga_indvars_iv_next9_kernel_2mm22_sel_x_b = i_fpga_indvars_iv_next9_kernel_2mm22_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm0_element_extension2_x(BITJOIN,121)@4
    assign i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm0_element_extension2_x_q = {i_arrayidx494_kernel_2mm0_mult_multconst_x_q, bgTrunc_i_fpga_indvars_iv_next9_kernel_2mm22_sel_x_b};

    // i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_inv_pred_x(LOGICAL,108)@1
    assign i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg14(REG,144)@0 + 1
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

    // valid_fanout_reg13(REG,143)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist10_sync_together70_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm0_i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm1_x(FIFODELAY,122)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm0_i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm1_x_i_stall = ~ (valid_fanout_reg14_q & i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q);
    assign i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm0_i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm1_x_i_valid = valid_fanout_reg13_q & redist15_i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm0_i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm1_x_i_data = i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm0_i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm0_i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm0_i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm0_i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm0_i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm1_x (
        .i_valid(i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm0_i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm0_i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm0_i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm0_adapt_scalar_trunc4_sel_x(BITSELECT,124)@4
    assign i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm0_i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm1_x_o_data[4:0];

    // i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop20_kernel_2mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop20_kernel_2mm16_mux_x(MUX,102)@4
    assign i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop20_kernel_2mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop20_kernel_2mm16_mux_x_s = redist22_i_llvm_fpga_forked_kernel_2mm_b9_forked_kernel_2mm3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop20_kernel_2mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop20_kernel_2mm16_mux_x_s or i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm0_adapt_scalar_trunc4_sel_x_b or c_i5_859_q)
    begin
        unique case (i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop20_kernel_2mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop20_kernel_2mm16_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop20_kernel_2mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop20_kernel_2mm16_mux_x_q = i_llvm_fpga_push_i5_fpga_indvars_iv8_push20_kernel_2mm0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop20_kernel_2mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop20_kernel_2mm16_mux_x_q = c_i5_859_q;
            default : i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop20_kernel_2mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop20_kernel_2mm16_mux_x_q = 5'b0;
        endcase
    end

    // i_exitcond10_kernel_2mm17_cmp_nsign(LOGICAL,158)@4
    assign i_exitcond10_kernel_2mm17_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop20_kernel_2mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv8_pop20_kernel_2mm16_mux_x_q[4:4]));

    // i_llvm_fpga_push_i1_notexitcond19_kernel_2mm21(BLACKBOX,59)@4
    // in in_empty_in@20000000
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    kernel_2mm_i_llvm_fpga_push_i1_notexitcond19_0 thei_llvm_fpga_push_i1_notexitcond19_kernel_2mm21 (
        .in_almost_empty_in(GND_q),
        .in_data_in(i_exitcond10_kernel_2mm17_cmp_nsign_q),
        .in_empty_in(GND_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going18_kernel_2mm6_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond19_kernel_2mm21_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond19_kernel_2mm21_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_kernel_2mm_b9_dummy_kernel_2mm2(BLACKBOX,54)@0
    // in in_stall_in@20000000
    kernel_2mm_i_llvm_fpga_dummy_thread_b9_dummy_kernel_2mm0 thei_llvm_fpga_dummy_thread_kernel_2mm_b9_dummy_kernel_2mm2 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_kernel_2mm_b9_dummy_kernel_2mm2_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist24_i_llvm_fpga_dummy_thread_kernel_2mm_b9_dummy_kernel_2mm2_out_dummy_out_4(DELAY,253)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist24_i_llvm_fpga_dummy_thread_kernel_2mm_b9_dummy_kernel_2mm2_out_dummy_out_4_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_kernel_2mm_b9_dummy_kernel_2mm2_out_dummy_out);
            redist24_i_llvm_fpga_dummy_thread_kernel_2mm_b9_dummy_kernel_2mm2_out_dummy_out_4_delay_1 <= redist24_i_llvm_fpga_dummy_thread_kernel_2mm_b9_dummy_kernel_2mm2_out_dummy_out_4_delay_0;
            redist24_i_llvm_fpga_dummy_thread_kernel_2mm_b9_dummy_kernel_2mm2_out_dummy_out_4_delay_2 <= redist24_i_llvm_fpga_dummy_thread_kernel_2mm_b9_dummy_kernel_2mm2_out_dummy_out_4_delay_1;
            redist24_i_llvm_fpga_dummy_thread_kernel_2mm_b9_dummy_kernel_2mm2_out_dummy_out_4_q <= redist24_i_llvm_fpga_dummy_thread_kernel_2mm_b9_dummy_kernel_2mm2_out_dummy_out_4_delay_2;
        end
    end

    // i_llvm_fpga_forked_kernel_2mm_b9_forked_kernel_2mm3(BLACKBOX,56)@0
    // in in_stall_in@20000000
    kernel_2mm_i_llvm_fpga_forked_b9_forked_kernel_2mm0 thei_llvm_fpga_forked_kernel_2mm_b9_forked_kernel_2mm3 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_kernel_2mm_b9_forked_kernel_2mm3_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist22_i_llvm_fpga_forked_kernel_2mm_b9_forked_kernel_2mm3_out_buffer_out_4(DELAY,251)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist22_i_llvm_fpga_forked_kernel_2mm_b9_forked_kernel_2mm3_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_kernel_2mm_b9_forked_kernel_2mm3_out_buffer_out);
            redist22_i_llvm_fpga_forked_kernel_2mm_b9_forked_kernel_2mm3_out_buffer_out_4_delay_1 <= redist22_i_llvm_fpga_forked_kernel_2mm_b9_forked_kernel_2mm3_out_buffer_out_4_delay_0;
            redist22_i_llvm_fpga_forked_kernel_2mm_b9_forked_kernel_2mm3_out_buffer_out_4_delay_2 <= redist22_i_llvm_fpga_forked_kernel_2mm_b9_forked_kernel_2mm3_out_buffer_out_4_delay_1;
            redist22_i_llvm_fpga_forked_kernel_2mm_b9_forked_kernel_2mm3_out_buffer_out_4_q <= redist22_i_llvm_fpga_forked_kernel_2mm_b9_forked_kernel_2mm3_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pipeline_keep_going18_kernel_2mm6(BLACKBOX,58)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    kernel_2mm_i_llvm_fpga_pipeline_keep_going18_0 thei_llvm_fpga_pipeline_keep_going18_kernel_2mm6 (
        .in_data_in(redist22_i_llvm_fpga_forked_kernel_2mm_b9_forked_kernel_2mm3_out_buffer_out_4_q),
        .in_dummy_in(redist24_i_llvm_fpga_dummy_thread_kernel_2mm_b9_dummy_kernel_2mm2_out_dummy_out_4_q),
        .in_forked_in(redist22_i_llvm_fpga_forked_kernel_2mm_b9_forked_kernel_2mm3_out_buffer_out_4_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond19_kernel_2mm21_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond19_kernel_2mm21_out_feedback_valid_out_5),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going18_kernel_2mm6_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going18_kernel_2mm6_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going18_kernel_2mm6_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going18_kernel_2mm6_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going18_kernel_2mm6_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going18_kernel_2mm6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist21_i_llvm_fpga_pipeline_keep_going18_kernel_2mm6_out_data_out_2(DELAY,250)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist21_i_llvm_fpga_pipeline_keep_going18_kernel_2mm6_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pipeline_keep_going18_kernel_2mm6_out_data_out);
            redist21_i_llvm_fpga_pipeline_keep_going18_kernel_2mm6_out_data_out_2_q <= redist21_i_llvm_fpga_pipeline_keep_going18_kernel_2mm6_out_data_out_2_delay_0;
        end
    end

    // i_kernel_2mm_b9_next_iter_isreal_kernel_2mm7(LOGICAL,53)@6
    assign i_kernel_2mm_b9_next_iter_isreal_kernel_2mm7_q = i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b9_current_iter_isreal_kernel_2mm0_i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b9_current_iter_isreal_kernel_2mm4_mux_x_q & redist21_i_llvm_fpga_pipeline_keep_going18_kernel_2mm6_out_data_out_2_q;

    // i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_element_extension2_x(BITJOIN,106)@6
    assign i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_element_extension2_x_q = {i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_c_i7_03_x_q, i_kernel_2mm_b9_next_iter_isreal_kernel_2mm7_q};

    // redist15_i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_2(DELAY,244)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist15_i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q);
            redist15_i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_2_q <= redist15_i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_2_delay_0;
        end
    end

    // valid_fanout_reg4(REG,134)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist10_sync_together70_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist16_i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_4(DELAY,245)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_4_delay_0 <= $unsigned(redist15_i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_2_q);
            redist16_i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_4_q <= redist16_i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_4_delay_0;
        end
    end

    // valid_fanout_reg3(REG,133)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist12_sync_together70_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm1_x(FIFODELAY,107)@3 + 1
    // in i_valid@5
    // in i_write_pred@5
    // in i_data@6
    // out o_data@6
    assign i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm1_x_i_stall = ~ (valid_fanout_reg4_q & redist15_i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_2_q);
    assign i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm1_x_i_valid = valid_fanout_reg3_q & redist16_i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm1_x_i_data = i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm1_x (
        .i_valid(i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_adapt_scalar_trunc4_sel_x(BITSELECT,109)@6
    assign i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm1_x_o_data[0:0];

    // redist23_i_llvm_fpga_forked_kernel_2mm_b9_forked_kernel_2mm3_out_buffer_out_6(DELAY,252)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist23_i_llvm_fpga_forked_kernel_2mm_b9_forked_kernel_2mm3_out_buffer_out_6_delay_0 <= $unsigned(redist22_i_llvm_fpga_forked_kernel_2mm_b9_forked_kernel_2mm3_out_buffer_out_4_q);
            redist23_i_llvm_fpga_forked_kernel_2mm_b9_forked_kernel_2mm3_out_buffer_out_6_q <= redist23_i_llvm_fpga_forked_kernel_2mm_b9_forked_kernel_2mm3_out_buffer_out_6_delay_0;
        end
    end

    // i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b9_current_iter_isreal_kernel_2mm0_i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b9_current_iter_isreal_kernel_2mm4_mux_x(MUX,99)@6
    assign i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b9_current_iter_isreal_kernel_2mm0_i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b9_current_iter_isreal_kernel_2mm4_mux_x_s = redist23_i_llvm_fpga_forked_kernel_2mm_b9_forked_kernel_2mm3_out_buffer_out_6_q;
    always @(i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b9_current_iter_isreal_kernel_2mm0_i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b9_current_iter_isreal_kernel_2mm4_mux_x_s or i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b9_current_iter_isreal_kernel_2mm0_i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b9_current_iter_isreal_kernel_2mm4_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b9_current_iter_isreal_kernel_2mm0_i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b9_current_iter_isreal_kernel_2mm4_mux_x_q = i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b9_current_iter_isreal_kernel_2mm0_i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b9_current_iter_isreal_kernel_2mm4_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b9_current_iter_isreal_kernel_2mm0_i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b9_current_iter_isreal_kernel_2mm4_mux_x_q = 1'b0;
        endcase
    end

    // i_kernel_2mm_b9_current_iter_isspec_kernel_2mm5(LOGICAL,52)@6
    assign i_kernel_2mm_b9_current_iter_isspec_kernel_2mm5_q = i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b9_current_iter_isreal_kernel_2mm0_i_llvm_fpga_pop_coalesce_i1_kernel_2mm_b9_current_iter_isreal_kernel_2mm4_mux_x_q ^ VCC_q;

    // c_kernel_2mm_D_local_pmem(CONSTANT,39)
    assign c_kernel_2mm_D_local_pmem_q = $unsigned(64'b0100000001000100000000000000000000000000000000000000000000000000);

    // i_arrayidx494_kernel_2mm0_upper_bits_x_merged_bit_select(BITSELECT,225)@5
    assign i_arrayidx494_kernel_2mm0_upper_bits_x_merged_bit_select_b = c_kernel_2mm_D_local_pmem_q[63:9];
    assign i_arrayidx494_kernel_2mm0_upper_bits_x_merged_bit_select_c = c_kernel_2mm_D_local_pmem_q[8:0];

    // redist0_i_arrayidx494_kernel_2mm0_upper_bits_x_merged_bit_select_b_1(DELAY,229)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_arrayidx494_kernel_2mm0_upper_bits_x_merged_bit_select_b_1_q <= $unsigned(i_arrayidx494_kernel_2mm0_upper_bits_x_merged_bit_select_b);
        end
    end

    // c_i32_058(CONSTANT,35)
    assign c_i32_058_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_162(CONSTANT,36)
    assign c_i32_162_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc74_kernel_2mm24(ADD,51)@6
    assign i_inc74_kernel_2mm24_a = {1'b0, i_llvm_fpga_pop_i32_j40_035_pop21_kernel_2mm0_i_llvm_fpga_pop_i32_j40_035_pop21_kernel_2mm9_mux_x_q};
    assign i_inc74_kernel_2mm24_b = {1'b0, c_i32_162_q};
    assign i_inc74_kernel_2mm24_o = $unsigned(i_inc74_kernel_2mm24_a) + $unsigned(i_inc74_kernel_2mm24_b);
    assign i_inc74_kernel_2mm24_q = i_inc74_kernel_2mm24_o[32:0];

    // bgTrunc_i_inc74_kernel_2mm24_sel_x(BITSELECT,68)@6
    assign bgTrunc_i_inc74_kernel_2mm24_sel_x_b = i_inc74_kernel_2mm24_q[31:0];

    // valid_fanout_reg16(REG,146)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist10_sync_together70_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg15(REG,145)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist12_sync_together70_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm0_i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm1_x(FIFODELAY,116)@3 + 1
    // in i_valid@5
    // in i_write_pred@5
    // in i_data@6
    // out o_data@6
    assign i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm0_i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm1_x_i_stall = ~ (valid_fanout_reg16_q & redist15_i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_2_q);
    assign i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm0_i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm1_x_i_valid = valid_fanout_reg15_q & redist16_i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm0_i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm1_x_i_data = bgTrunc_i_inc74_kernel_2mm24_sel_x_b;
    assign i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm0_i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm0_i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm0_i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm0_i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_j40_035_push21_kernel_2mm0_i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm1_x (
        .i_valid(i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm0_i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm0_i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm1_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_inc74_kernel_2mm24_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm0_i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_j40_035_pop21_kernel_2mm0_i_llvm_fpga_pop_i32_j40_035_pop21_kernel_2mm9_mux_x(MUX,101)@6
    assign i_llvm_fpga_pop_i32_j40_035_pop21_kernel_2mm0_i_llvm_fpga_pop_i32_j40_035_pop21_kernel_2mm9_mux_x_s = redist23_i_llvm_fpga_forked_kernel_2mm_b9_forked_kernel_2mm3_out_buffer_out_6_q;
    always @(i_llvm_fpga_pop_i32_j40_035_pop21_kernel_2mm0_i_llvm_fpga_pop_i32_j40_035_pop21_kernel_2mm9_mux_x_s or i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm0_i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm1_x_o_data or c_i32_058_q)
    begin
        unique case (i_llvm_fpga_pop_i32_j40_035_pop21_kernel_2mm0_i_llvm_fpga_pop_i32_j40_035_pop21_kernel_2mm9_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_j40_035_pop21_kernel_2mm0_i_llvm_fpga_pop_i32_j40_035_pop21_kernel_2mm9_mux_x_q = i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm0_i_llvm_fpga_push_i32_j40_035_push21_kernel_2mm1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_j40_035_pop21_kernel_2mm0_i_llvm_fpga_pop_i32_j40_035_pop21_kernel_2mm9_mux_x_q = c_i32_058_q;
            default : i_llvm_fpga_pop_i32_j40_035_pop21_kernel_2mm0_i_llvm_fpga_pop_i32_j40_035_pop21_kernel_2mm9_mux_x_q = 32'b0;
        endcase
    end

    // i_idxprom48_kernel_2mm10_sel_x(BITSELECT,98)@6
    assign i_idxprom48_kernel_2mm10_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j40_035_pop21_kernel_2mm0_i_llvm_fpga_pop_i32_j40_035_pop21_kernel_2mm9_mux_x_q[31:0]};

    // i_idxprom48_kernel_2mm10_vt_select_31(BITSELECT,50)@6
    assign i_idxprom48_kernel_2mm10_vt_select_31_b = i_idxprom48_kernel_2mm10_sel_x_b[31:0];

    // i_idxprom48_kernel_2mm10_vt_join(BITJOIN,49)@6
    assign i_idxprom48_kernel_2mm10_vt_join_q = {c_i32_058_q, i_idxprom48_kernel_2mm10_vt_select_31_b};

    // i_arrayidx494_kernel_2mm0_dupName_3_trunc_sel_x(BITSELECT,96)@6
    assign i_arrayidx494_kernel_2mm0_dupName_3_trunc_sel_x_b = i_idxprom48_kernel_2mm10_vt_join_q[8:0];

    // i_arrayidx494_kernel_2mm0_narrow_x(BITSELECT,79)@6
    assign i_arrayidx494_kernel_2mm0_narrow_x_b = i_arrayidx494_kernel_2mm0_dupName_3_trunc_sel_x_b[6:0];

    // i_arrayidx494_kernel_2mm0_shift_join_x(BITJOIN,80)@6
    assign i_arrayidx494_kernel_2mm0_shift_join_x_q = {i_arrayidx494_kernel_2mm0_narrow_x_b, i_arrayidx494_kernel_2mm12_vt_const_1_q};

    // redist6_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_4_inputreg0(DELAY,257)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_4_inputreg0_q <= $unsigned(in_c0_eni3144_2_tpl);
        end
    end

    // redist6_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_4(DELAY,235)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_4_delay_0 <= $unsigned(redist6_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_4_inputreg0_q);
            redist6_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_4_delay_1 <= redist6_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_4_delay_0;
            redist6_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_4_q <= redist6_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg11(REG,141)@0 + 1
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

    // valid_fanout_reg10(REG,140)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist10_sync_together70_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i64_idxprom49_push23_kernel_2mm0_i_llvm_fpga_push_i64_idxprom49_push23_kernel_2mm1_x(FIFODELAY,125)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i64_idxprom49_push23_kernel_2mm0_i_llvm_fpga_push_i64_idxprom49_push23_kernel_2mm1_x_i_stall = ~ (valid_fanout_reg11_q & i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q);
    assign i_llvm_fpga_push_i64_idxprom49_push23_kernel_2mm0_i_llvm_fpga_push_i64_idxprom49_push23_kernel_2mm1_x_i_valid = valid_fanout_reg10_q & redist15_i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i64_idxprom49_push23_kernel_2mm0_i_llvm_fpga_push_i64_idxprom49_push23_kernel_2mm1_x_i_data = i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q;
    assign i_llvm_fpga_push_i64_idxprom49_push23_kernel_2mm0_i_llvm_fpga_push_i64_idxprom49_push23_kernel_2mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_idxprom49_push23_kernel_2mm0_i_llvm_fpga_push_i64_idxprom49_push23_kernel_2mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i64_idxprom49_push23_kernel_2mm0_i_llvm_fpga_push_i64_idxprom49_push23_kernel_2mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_idxprom49_push23_kernel_2mm0_i_llvm_fpga_push_i64_idxprom49_push23_kernel_2mm1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(64),
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
    ) thei_llvm_fpga_push_i64_idxprom49_push23_kernel_2mm0_i_llvm_fpga_push_i64_idxprom49_push23_kernel_2mm1_x (
        .i_valid(i_llvm_fpga_push_i64_idxprom49_push23_kernel_2mm0_i_llvm_fpga_push_i64_idxprom49_push23_kernel_2mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_idxprom49_push23_kernel_2mm0_i_llvm_fpga_push_i64_idxprom49_push23_kernel_2mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q),
        .o_data(i_llvm_fpga_push_i64_idxprom49_push23_kernel_2mm0_i_llvm_fpga_push_i64_idxprom49_push23_kernel_2mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x(MUX,103)@4
    assign i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_s = redist22_i_llvm_fpga_forked_kernel_2mm_b9_forked_kernel_2mm3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_s or i_llvm_fpga_push_i64_idxprom49_push23_kernel_2mm0_i_llvm_fpga_push_i64_idxprom49_push23_kernel_2mm1_x_o_data or redist6_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q = i_llvm_fpga_push_i64_idxprom49_push23_kernel_2mm0_i_llvm_fpga_push_i64_idxprom49_push23_kernel_2mm1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q = redist6_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_4_q;
            default : i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q = 64'b0;
        endcase
    end

    // i_arrayidx494_kernel_2mm0_dupName_0_trunc_sel_x(BITSELECT,93)@4
    assign i_arrayidx494_kernel_2mm0_dupName_0_trunc_sel_x_b = i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q[8:0];

    // addsumAHighB_uid186_i_arrayidx494_kernel_2mm0_mult_x(ADD,185)@4
    assign addsumAHighB_uid186_i_arrayidx494_kernel_2mm0_mult_x_a = {1'b0, i_arrayidx494_kernel_2mm0_dupName_0_trunc_sel_x_b};
    assign addsumAHighB_uid186_i_arrayidx494_kernel_2mm0_mult_x_b = {3'b000, lowRangeB_uid184_i_arrayidx494_kernel_2mm0_mult_x_merged_bit_select_c};
    assign addsumAHighB_uid186_i_arrayidx494_kernel_2mm0_mult_x_o = $unsigned(addsumAHighB_uid186_i_arrayidx494_kernel_2mm0_mult_x_a) + $unsigned(addsumAHighB_uid186_i_arrayidx494_kernel_2mm0_mult_x_b);
    assign addsumAHighB_uid186_i_arrayidx494_kernel_2mm0_mult_x_q = addsumAHighB_uid186_i_arrayidx494_kernel_2mm0_mult_x_o[9:0];

    // lowRangeB_uid184_i_arrayidx494_kernel_2mm0_mult_x_merged_bit_select(BITSELECT,228)@4
    assign lowRangeB_uid184_i_arrayidx494_kernel_2mm0_mult_x_merged_bit_select_b = i_arrayidx494_kernel_2mm0_dupName_0_trunc_sel_x_b[1:0];
    assign lowRangeB_uid184_i_arrayidx494_kernel_2mm0_mult_x_merged_bit_select_c = i_arrayidx494_kernel_2mm0_dupName_0_trunc_sel_x_b[8:2];

    // add_uid187_i_arrayidx494_kernel_2mm0_mult_x(BITJOIN,186)@4
    assign add_uid187_i_arrayidx494_kernel_2mm0_mult_x_q = {addsumAHighB_uid186_i_arrayidx494_kernel_2mm0_mult_x_q, lowRangeB_uid184_i_arrayidx494_kernel_2mm0_mult_x_merged_bit_select_b};

    // sR_mergedSignalTM_uid192_i_arrayidx494_kernel_2mm0_mult_x(BITJOIN,191)@4
    assign sR_mergedSignalTM_uid192_i_arrayidx494_kernel_2mm0_mult_x_q = {add_uid187_i_arrayidx494_kernel_2mm0_mult_x_q, i_arrayidx494_kernel_2mm0_mult_multconst_x_q};

    // i_arrayidx494_kernel_2mm0_mult_extender_x(BITJOIN,90)@4
    assign i_arrayidx494_kernel_2mm0_mult_extender_x_q = {i_arrayidx494_kernel_2mm0_mult_multconst_x_q, sR_mergedSignalTM_uid192_i_arrayidx494_kernel_2mm0_mult_x_q};

    // i_arrayidx494_kernel_2mm0_dupName_1_trunc_sel_x(BITSELECT,94)@4
    assign i_arrayidx494_kernel_2mm0_dupName_1_trunc_sel_x_b = i_arrayidx494_kernel_2mm0_mult_extender_x_q[8:0];

    // redist20_i_arrayidx494_kernel_2mm0_dupName_1_trunc_sel_x_b_1(DELAY,249)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist20_i_arrayidx494_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx494_kernel_2mm0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx494_kernel_2mm0_add_x(ADD,74)@5
    assign i_arrayidx494_kernel_2mm0_add_x_a = {1'b0, i_arrayidx494_kernel_2mm0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx494_kernel_2mm0_add_x_b = {1'b0, redist20_i_arrayidx494_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx494_kernel_2mm0_add_x_o = $unsigned(i_arrayidx494_kernel_2mm0_add_x_a) + $unsigned(i_arrayidx494_kernel_2mm0_add_x_b);
    assign i_arrayidx494_kernel_2mm0_add_x_q = i_arrayidx494_kernel_2mm0_add_x_o[9:0];

    // i_arrayidx494_kernel_2mm0_dupName_2_trunc_sel_x(BITSELECT,95)@5
    assign i_arrayidx494_kernel_2mm0_dupName_2_trunc_sel_x_b = i_arrayidx494_kernel_2mm0_add_x_q[8:0];

    // redist19_i_arrayidx494_kernel_2mm0_dupName_2_trunc_sel_x_b_1(DELAY,248)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist19_i_arrayidx494_kernel_2mm0_dupName_2_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx494_kernel_2mm0_dupName_2_trunc_sel_x_b);
        end
    end

    // i_arrayidx494_kernel_2mm0_dupName_0_add_x(ADD,84)@6
    assign i_arrayidx494_kernel_2mm0_dupName_0_add_x_a = {1'b0, redist19_i_arrayidx494_kernel_2mm0_dupName_2_trunc_sel_x_b_1_q};
    assign i_arrayidx494_kernel_2mm0_dupName_0_add_x_b = {1'b0, i_arrayidx494_kernel_2mm0_shift_join_x_q};
    assign i_arrayidx494_kernel_2mm0_dupName_0_add_x_o = $unsigned(i_arrayidx494_kernel_2mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx494_kernel_2mm0_dupName_0_add_x_b);
    assign i_arrayidx494_kernel_2mm0_dupName_0_add_x_q = i_arrayidx494_kernel_2mm0_dupName_0_add_x_o[9:0];

    // i_arrayidx494_kernel_2mm0_dupName_5_trunc_sel_x(BITSELECT,97)@6
    assign i_arrayidx494_kernel_2mm0_dupName_5_trunc_sel_x_b = i_arrayidx494_kernel_2mm0_dupName_0_add_x_q[8:0];

    // i_arrayidx494_kernel_2mm0_append_upper_bits_x(BITJOIN,75)@6
    assign i_arrayidx494_kernel_2mm0_append_upper_bits_x_q = {redist0_i_arrayidx494_kernel_2mm0_upper_bits_x_merged_bit_select_b_1_q, i_arrayidx494_kernel_2mm0_dupName_5_trunc_sel_x_b};

    // i_arrayidx494_kernel_2mm12_vt_select_63(BITSELECT,44)@6
    assign i_arrayidx494_kernel_2mm12_vt_select_63_b = i_arrayidx494_kernel_2mm0_append_upper_bits_x_q[63:2];

    // i_arrayidx494_kernel_2mm12_vt_const_1(CONSTANT,42)
    assign i_arrayidx494_kernel_2mm12_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx494_kernel_2mm12_vt_join(BITJOIN,43)@6
    assign i_arrayidx494_kernel_2mm12_vt_join_q = {i_arrayidx494_kernel_2mm12_vt_select_63_b, i_arrayidx494_kernel_2mm12_vt_const_1_q};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm13(BLACKBOX,57)@6
    // out out_o_almost_empty@10
    // out out_o_empty@10
    // out out_o_readdata@10
    // out out_o_stall@10
    // out out_o_valid@10
    // out out_unnamed_kernel_2mm12_kernel_2mm_avm_address@20000000
    // out out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount@20000000
    // out out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable@20000000
    // out out_unnamed_kernel_2mm12_kernel_2mm_avm_enable@20000000
    // out out_unnamed_kernel_2mm12_kernel_2mm_avm_read@20000000
    // out out_unnamed_kernel_2mm12_kernel_2mm_avm_write@20000000
    // out out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata@20000000
    kernel_2mm_i_llvm_fpga_mem_unnamed_12_kernel_2mm0 thei_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm13 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx494_kernel_2mm12_vt_join_q),
        .in_i_predicate(i_kernel_2mm_b9_current_iter_isspec_kernel_2mm5_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_unnamed_kernel_2mm12_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm12_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm12_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm12_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm12_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm12_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm12_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm12_kernel_2mm_avm_writeack),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm13_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_address(i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm13_out_unnamed_kernel_2mm12_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount(i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm13_out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable(i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm13_out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_enable(i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm13_out_unnamed_kernel_2mm12_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_read(i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm13_out_unnamed_kernel_2mm12_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_write(i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm13_out_unnamed_kernel_2mm12_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata(i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm13_out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,41)
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_address = i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm13_out_unnamed_kernel_2mm12_kernel_2mm_avm_address;
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_enable = i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm13_out_unnamed_kernel_2mm12_kernel_2mm_avm_enable;
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_read = i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm13_out_unnamed_kernel_2mm12_kernel_2mm_avm_read;
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_write = i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm13_out_unnamed_kernel_2mm12_kernel_2mm_avm_write;
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata = i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm13_out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata;
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable = i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm13_out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable;
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount = i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm13_out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount;

    // regfree_osync(GPOUT,65)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going18_kernel_2mm6_out_exiting_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,71)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going18_kernel_2mm6_out_pipeline_dummy_out;

    // dupName_1_regfree_osync_x(GPOUT,72)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going18_kernel_2mm6_out_pipeline_forked_out;

    // dupName_2_regfree_osync_x(GPOUT,73)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going18_kernel_2mm6_out_pipeline_valid_out;

    // redist14_sync_together70_aunroll_x_in_i_valid_9(DELAY,243)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_sync_together70_aunroll_x_in_i_valid_9_delay_0 <= $unsigned(redist13_sync_together70_aunroll_x_in_i_valid_5_q);
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist14_sync_together70_aunroll_x_in_i_valid_9_delay_1 <= '0;
        end
        else
        begin
            redist14_sync_together70_aunroll_x_in_i_valid_9_delay_1 <= redist14_sync_together70_aunroll_x_in_i_valid_9_delay_0;
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_sync_together70_aunroll_x_in_i_valid_9_delay_2 <= redist14_sync_together70_aunroll_x_in_i_valid_9_delay_1;
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist14_sync_together70_aunroll_x_in_i_valid_9_q <= '0;
        end
        else
        begin
            redist14_sync_together70_aunroll_x_in_i_valid_9_q <= redist14_sync_together70_aunroll_x_in_i_valid_9_delay_2;
        end
    end

    // valid_fanout_reg0(REG,130)@9 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist14_sync_together70_aunroll_x_in_i_valid_9_q);
        end
    end

    // redist5_valid_fanout_reg0_q_7(DELAY,234)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("SYNC"), .phase(10), .modulus(2), .reset_high(1'b0) )
    redist5_valid_fanout_reg0_q_7 ( .xin(valid_fanout_reg0_q), .xout(redist5_valid_fanout_reg0_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist25_i_kernel_2mm_b9_current_iter_isspec_kernel_2mm5_q_11(DELAY,254)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist25_i_kernel_2mm_b9_current_iter_isspec_kernel_2mm5_q_11 ( .xin(i_kernel_2mm_b9_current_iter_isspec_kernel_2mm5_q), .xout(redist25_i_kernel_2mm_b9_current_iter_isspec_kernel_2mm5_q_11_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist8_sync_together70_aunroll_x_in_c0_eni3144_3_tpl_6(DELAY,237)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist8_sync_together70_aunroll_x_in_c0_eni3144_3_tpl_6 ( .xin(in_c0_eni3144_3_tpl), .xout(redist8_sync_together70_aunroll_x_in_c0_eni3144_3_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist9_sync_together70_aunroll_x_in_c0_eni3144_3_tpl_17(DELAY,238)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist9_sync_together70_aunroll_x_in_c0_eni3144_3_tpl_17 ( .xin(redist8_sync_together70_aunroll_x_in_c0_eni3144_3_tpl_6_q), .xout(redist9_sync_together70_aunroll_x_in_c0_eni3144_3_tpl_17_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_offset(CONSTANT,262)
    assign redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_offset_q = $unsigned(4'b1000);

    // redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_rdcnt(ADD,263)
    assign redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_rdcnt_a = {1'b0, redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_wraddr_q};
    assign redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_rdcnt_b = {1'b0, redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_rdcnt_o <= $unsigned(redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_rdcnt_a) + $unsigned(redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_rdcnt_b);
        end
    end
    assign redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_rdcnt_q = redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_rdcnt_o[4:0];

    // redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_inputreg0(DELAY,258)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_inputreg0_q <= $unsigned(redist6_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_4_q);
        end
    end

    // redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_wraddr(COUNTER,261)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_wraddr_i <= $unsigned(redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_wraddr_q = redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_wraddr_i[3:0];

    // redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_mem(DUALMEM,260)
    assign redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_mem_ia = $unsigned(redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_inputreg0_q);
    assign redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_mem_aa = redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_wraddr_q;
    assign redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_mem_ab = redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_rdcnt_q[3:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(4),
        .numwords_a(16),
        .width_b(64),
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
    ) redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_mem_aa),
        .data_a(redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_mem_ab),
        .q_b(redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_mem_iq),
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
    assign redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_mem_q = redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_mem_iq[63:0];

    // redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_outputreg0(DELAY,259)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_outputreg0_q <= $unsigned(redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_mem_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm0_element_extension2_x(BITJOIN,112)@6
    assign i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm0_element_extension2_x_q = {i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_c_i7_03_x_q, i_llvm_fpga_pop_i1_notcmp3143_pop22_kernel_2mm0_i_llvm_fpga_pop_i1_notcmp3143_pop22_kernel_2mm26_mux_x_q};

    // valid_fanout_reg19(REG,149)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist10_sync_together70_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg18(REG,148)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist12_sync_together70_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm0_i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm1_x(FIFODELAY,113)@3 + 1
    // in i_valid@5
    // in i_write_pred@5
    // in i_data@6
    // out o_data@6
    assign i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm0_i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm1_x_i_stall = ~ (valid_fanout_reg19_q & redist15_i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_2_q);
    assign i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm0_i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm1_x_i_valid = valid_fanout_reg18_q & redist16_i_llvm_fpga_push_i1_kernel_2mm_b9_next_iter_isreal_push_kernel_2mm0_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm0_i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm1_x_i_data = i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm0_i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm0_i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm0_i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm0_i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm0_i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm1_x (
        .i_valid(i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm0_i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm0_i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm0_i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm0_adapt_scalar_trunc4_sel_x(BITSELECT,115)@6
    assign i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm0_i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_notcmp3143_pop22_kernel_2mm0_i_llvm_fpga_pop_i1_notcmp3143_pop22_kernel_2mm26_mux_x(MUX,100)@6
    assign i_llvm_fpga_pop_i1_notcmp3143_pop22_kernel_2mm0_i_llvm_fpga_pop_i1_notcmp3143_pop22_kernel_2mm26_mux_x_s = redist23_i_llvm_fpga_forked_kernel_2mm_b9_forked_kernel_2mm3_out_buffer_out_6_q;
    always @(i_llvm_fpga_pop_i1_notcmp3143_pop22_kernel_2mm0_i_llvm_fpga_pop_i1_notcmp3143_pop22_kernel_2mm26_mux_x_s or i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm0_adapt_scalar_trunc4_sel_x_b or redist8_sync_together70_aunroll_x_in_c0_eni3144_3_tpl_6_q)
    begin
        unique case (i_llvm_fpga_pop_i1_notcmp3143_pop22_kernel_2mm0_i_llvm_fpga_pop_i1_notcmp3143_pop22_kernel_2mm26_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_notcmp3143_pop22_kernel_2mm0_i_llvm_fpga_pop_i1_notcmp3143_pop22_kernel_2mm26_mux_x_q = i_llvm_fpga_push_i1_notcmp3143_push22_kernel_2mm0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_notcmp3143_pop22_kernel_2mm0_i_llvm_fpga_pop_i1_notcmp3143_pop22_kernel_2mm26_mux_x_q = redist8_sync_together70_aunroll_x_in_c0_eni3144_3_tpl_6_q;
            default : i_llvm_fpga_pop_i1_notcmp3143_pop22_kernel_2mm0_i_llvm_fpga_pop_i1_notcmp3143_pop22_kernel_2mm26_mux_x_q = 1'b0;
        endcase
    end

    // redist18_i_llvm_fpga_pop_i1_notcmp3143_pop22_kernel_2mm0_i_llvm_fpga_pop_i1_notcmp3143_pop22_kernel_2mm26_mux_x_q_11(DELAY,247)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist18_i_llvm_fpga_pop_i1_notcmp3143_pop22_kernel_2mm0_i_llvm_fpga_pop_i1_notcmp3143_pop22_kernel_2mm26_mux_x_q_11 ( .xin(i_llvm_fpga_pop_i1_notcmp3143_pop22_kernel_2mm0_i_llvm_fpga_pop_i1_notcmp3143_pop22_kernel_2mm26_mux_x_q), .xout(redist18_i_llvm_fpga_pop_i1_notcmp3143_pop22_kernel_2mm0_i_llvm_fpga_pop_i1_notcmp3143_pop22_kernel_2mm26_mux_x_q_11_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_notcmp16_kernel_2mm20(LOGICAL,61)@17
    assign i_notcmp16_kernel_2mm20_q = redist4_i_exitcond10_kernel_2mm17_cmp_nsign_q_13_q ^ VCC_q;

    // redist4_i_exitcond10_kernel_2mm17_cmp_nsign_q_13(DELAY,233)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist4_i_exitcond10_kernel_2mm17_cmp_nsign_q_13 ( .xin(i_exitcond10_kernel_2mm17_cmp_nsign_q), .xout(redist4_i_exitcond10_kernel_2mm17_cmp_nsign_q_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg8(REG,138)@9 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist14_sync_together70_aunroll_x_in_i_valid_9_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_beta4215_kernel_2mm14(BLACKBOX,55)@10
    kernel_2mm_i_llvm_fpga_ffwd_dest_i32_beta4215_0 thei_llvm_fpga_ffwd_dest_i32_beta4215_kernel_2mm14 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i32_beta4215_kernel_2mm14_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul50_kernel_2mm15_bs3_merged_bit_select(BITSELECT,226)@10
    assign i_mul50_kernel_2mm15_bs3_merged_bit_select_b = i_llvm_fpga_ffwd_dest_i32_beta4215_kernel_2mm14_out_dest_data_out_1_0[31:18];
    assign i_mul50_kernel_2mm15_bs3_merged_bit_select_c = i_llvm_fpga_ffwd_dest_i32_beta4215_kernel_2mm14_out_dest_data_out_1_0[17:0];

    // i_mul50_kernel_2mm15_bs1_merged_bit_select(BITSELECT,227)@10
    assign i_mul50_kernel_2mm15_bs1_merged_bit_select_b = i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm13_out_o_readdata[31:18];
    assign i_mul50_kernel_2mm15_bs1_merged_bit_select_c = i_llvm_fpga_mem_unnamed_kernel_2mm12_kernel_2mm13_out_o_readdata[17:0];

    // i_mul50_kernel_2mm15_ma5_cma(CHAINMULTADD,224)@10 + 5
    // out q@16
    assign i_mul50_kernel_2mm15_ma5_cma_reset = ~ (resetn);
    assign i_mul50_kernel_2mm15_ma5_cma_ena0 = 1'b1;
    assign i_mul50_kernel_2mm15_ma5_cma_ena1 = i_mul50_kernel_2mm15_ma5_cma_ena0;
    assign i_mul50_kernel_2mm15_ma5_cma_ena2 = i_mul50_kernel_2mm15_ma5_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul50_kernel_2mm15_ma5_cma_ah[0] <= i_mul50_kernel_2mm15_bs1_merged_bit_select_b;
            i_mul50_kernel_2mm15_ma5_cma_ah[1] <= i_mul50_kernel_2mm15_bs3_merged_bit_select_b;
            i_mul50_kernel_2mm15_ma5_cma_ch[0] <= i_mul50_kernel_2mm15_bs3_merged_bit_select_c;
            i_mul50_kernel_2mm15_ma5_cma_ch[1] <= i_mul50_kernel_2mm15_bs1_merged_bit_select_c;
        end
    end

    assign i_mul50_kernel_2mm15_ma5_cma_a0 = i_mul50_kernel_2mm15_ma5_cma_ah[0];
    assign i_mul50_kernel_2mm15_ma5_cma_c0 = i_mul50_kernel_2mm15_ma5_cma_ch[0];
    assign i_mul50_kernel_2mm15_ma5_cma_a1 = i_mul50_kernel_2mm15_ma5_cma_ah[1];
    assign i_mul50_kernel_2mm15_ma5_cma_c1 = i_mul50_kernel_2mm15_ma5_cma_ch[1];
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
    ) i_mul50_kernel_2mm15_ma5_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul50_kernel_2mm15_ma5_cma_ena2, i_mul50_kernel_2mm15_ma5_cma_ena1, i_mul50_kernel_2mm15_ma5_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul50_kernel_2mm15_ma5_cma_a1),
        .by(i_mul50_kernel_2mm15_ma5_cma_a0),
        .ax(i_mul50_kernel_2mm15_ma5_cma_c1),
        .bx(i_mul50_kernel_2mm15_ma5_cma_c0),
        .resulta(i_mul50_kernel_2mm15_ma5_cma_s0),
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
    i_mul50_kernel_2mm15_ma5_cma_delay ( .xin(i_mul50_kernel_2mm15_ma5_cma_s0), .xout(i_mul50_kernel_2mm15_ma5_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul50_kernel_2mm15_ma5_cma_q = $unsigned(i_mul50_kernel_2mm15_ma5_cma_qq[32:0]);

    // redist1_i_mul50_kernel_2mm15_ma5_cma_q_1(DELAY,230)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_mul50_kernel_2mm15_ma5_cma_q_1_q <= $unsigned(i_mul50_kernel_2mm15_ma5_cma_q);
        end
    end

    // i_mul50_kernel_2mm15_sums_align_1(BITSHIFT,173)@17
    assign i_mul50_kernel_2mm15_sums_align_1_qint = { redist1_i_mul50_kernel_2mm15_ma5_cma_q_1_q, 18'b000000000000000000 };
    assign i_mul50_kernel_2mm15_sums_align_1_q = i_mul50_kernel_2mm15_sums_align_1_qint[50:0];

    // i_mul50_kernel_2mm15_bjB4(BITJOIN,163)@10
    assign i_mul50_kernel_2mm15_bjB4_q = {GND_q, i_mul50_kernel_2mm15_bs3_merged_bit_select_b};

    // i_mul50_kernel_2mm15_bjA2(BITJOIN,161)@10
    assign i_mul50_kernel_2mm15_bjA2_q = {GND_q, i_mul50_kernel_2mm15_bs1_merged_bit_select_b};

    // i_mul50_kernel_2mm15_im0_cma(CHAINMULTADD,222)@10 + 5
    // out q@16
    assign i_mul50_kernel_2mm15_im0_cma_reset = ~ (resetn);
    assign i_mul50_kernel_2mm15_im0_cma_ena0 = 1'b1;
    assign i_mul50_kernel_2mm15_im0_cma_ena1 = i_mul50_kernel_2mm15_im0_cma_ena0;
    assign i_mul50_kernel_2mm15_im0_cma_ena2 = i_mul50_kernel_2mm15_im0_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul50_kernel_2mm15_im0_cma_ah[0] <= i_mul50_kernel_2mm15_bjA2_q;
            i_mul50_kernel_2mm15_im0_cma_ch[0] <= i_mul50_kernel_2mm15_bjB4_q;
        end
    end

    assign i_mul50_kernel_2mm15_im0_cma_a0 = $unsigned(i_mul50_kernel_2mm15_im0_cma_ah[0]);
    assign i_mul50_kernel_2mm15_im0_cma_c0 = $unsigned(i_mul50_kernel_2mm15_im0_cma_ch[0]);
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
    ) i_mul50_kernel_2mm15_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul50_kernel_2mm15_im0_cma_ena2, i_mul50_kernel_2mm15_im0_cma_ena1, i_mul50_kernel_2mm15_im0_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul50_kernel_2mm15_im0_cma_a0),
        .ax(i_mul50_kernel_2mm15_im0_cma_c0),
        .resulta(i_mul50_kernel_2mm15_im0_cma_s0),
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
    i_mul50_kernel_2mm15_im0_cma_delay ( .xin(i_mul50_kernel_2mm15_im0_cma_s0), .xout(i_mul50_kernel_2mm15_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul50_kernel_2mm15_im0_cma_q = $unsigned(i_mul50_kernel_2mm15_im0_cma_qq[29:0]);

    // redist3_i_mul50_kernel_2mm15_im0_cma_q_1(DELAY,232)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_i_mul50_kernel_2mm15_im0_cma_q_1_q <= $unsigned(i_mul50_kernel_2mm15_im0_cma_q);
        end
    end

    // i_mul50_kernel_2mm15_im10_cma(CHAINMULTADD,223)@10 + 5
    // out q@16
    assign i_mul50_kernel_2mm15_im10_cma_reset = ~ (resetn);
    assign i_mul50_kernel_2mm15_im10_cma_ena0 = 1'b1;
    assign i_mul50_kernel_2mm15_im10_cma_ena1 = i_mul50_kernel_2mm15_im10_cma_ena0;
    assign i_mul50_kernel_2mm15_im10_cma_ena2 = i_mul50_kernel_2mm15_im10_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul50_kernel_2mm15_im10_cma_ah[0] <= i_mul50_kernel_2mm15_bs1_merged_bit_select_c;
            i_mul50_kernel_2mm15_im10_cma_ch[0] <= i_mul50_kernel_2mm15_bs3_merged_bit_select_c;
        end
    end

    assign i_mul50_kernel_2mm15_im10_cma_a0 = i_mul50_kernel_2mm15_im10_cma_ah[0];
    assign i_mul50_kernel_2mm15_im10_cma_c0 = i_mul50_kernel_2mm15_im10_cma_ch[0];
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
    ) i_mul50_kernel_2mm15_im10_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul50_kernel_2mm15_im10_cma_ena2, i_mul50_kernel_2mm15_im10_cma_ena1, i_mul50_kernel_2mm15_im10_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul50_kernel_2mm15_im10_cma_a0),
        .ax(i_mul50_kernel_2mm15_im10_cma_c0),
        .resulta(i_mul50_kernel_2mm15_im10_cma_s0),
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
    i_mul50_kernel_2mm15_im10_cma_delay ( .xin(i_mul50_kernel_2mm15_im10_cma_s0), .xout(i_mul50_kernel_2mm15_im10_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul50_kernel_2mm15_im10_cma_q = $unsigned(i_mul50_kernel_2mm15_im10_cma_qq[35:0]);

    // redist2_i_mul50_kernel_2mm15_im10_cma_q_1(DELAY,231)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_i_mul50_kernel_2mm15_im10_cma_q_1_q <= $unsigned(i_mul50_kernel_2mm15_im10_cma_q);
        end
    end

    // i_mul50_kernel_2mm15_sums_join_0(BITJOIN,172)@17
    assign i_mul50_kernel_2mm15_sums_join_0_q = {redist3_i_mul50_kernel_2mm15_im0_cma_q_1_q, redist2_i_mul50_kernel_2mm15_im10_cma_q_1_q};

    // i_mul50_kernel_2mm15_sums_result_add_0_0(ADD,175)@17
    assign i_mul50_kernel_2mm15_sums_result_add_0_0_a = {1'b0, i_mul50_kernel_2mm15_sums_join_0_q};
    assign i_mul50_kernel_2mm15_sums_result_add_0_0_b = {16'b0000000000000000, i_mul50_kernel_2mm15_sums_align_1_q};
    assign i_mul50_kernel_2mm15_sums_result_add_0_0_o = $unsigned(i_mul50_kernel_2mm15_sums_result_add_0_0_a) + $unsigned(i_mul50_kernel_2mm15_sums_result_add_0_0_b);
    assign i_mul50_kernel_2mm15_sums_result_add_0_0_q = i_mul50_kernel_2mm15_sums_result_add_0_0_o[66:0];

    // bgTrunc_i_mul50_kernel_2mm15_sel_x(BITSELECT,69)@17
    assign bgTrunc_i_mul50_kernel_2mm15_sel_x_in = i_mul50_kernel_2mm15_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul50_kernel_2mm15_sel_x_b = bgTrunc_i_mul50_kernel_2mm15_sel_x_in[31:0];

    // redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_offset(CONSTANT,274)
    assign redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_offset_q = $unsigned(3'b010);

    // redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_rdcnt(ADD,281)
    assign redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_rdcnt_a = {1'b0, redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_wraddr_q};
    assign redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_rdcnt_b = {1'b0, redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_rdcnt_o <= $unsigned(redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_rdcnt_a) + $unsigned(redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_rdcnt_b);
        end
    end
    assign redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_rdcnt_q = redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_rdcnt_o[3:0];

    // redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_inputreg0(DELAY,276)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_inputreg0_q <= $unsigned(i_arrayidx494_kernel_2mm12_vt_join_q);
        end
    end

    // redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_wraddr(COUNTER,279)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_wraddr_i <= $unsigned(redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_wraddr_i) + $unsigned(3'd1);
        end
    end
    assign redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_wraddr_q = redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_wraddr_i[2:0];

    // redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_mem(DUALMEM,278)
    assign redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_mem_ia = $unsigned(redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_inputreg0_q);
    assign redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_mem_aa = redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_wraddr_q;
    assign redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_mem_ab = redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_rdcnt_q[2:0];
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
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Stratix 10")
    ) redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_mem_aa),
        .data_a(redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_mem_ab),
        .q_b(redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_mem_iq),
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
    assign redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_mem_q = redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_mem_iq[63:0];

    // redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_outputreg0(DELAY,277)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_outputreg0_q <= $unsigned(redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_mem_q);
        end
    end

    // redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_rdcnt(ADD,269)
    assign redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_rdcnt_a = {1'b0, redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_wraddr_q};
    assign redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_rdcnt_b = {1'b0, redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_rdcnt_o <= $unsigned(redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_rdcnt_a) + $unsigned(redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_rdcnt_b);
        end
    end
    assign redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_rdcnt_q = redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_rdcnt_o[4:0];

    // redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_inputreg0(DELAY,264)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_inputreg0_q <= $unsigned(i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q);
        end
    end

    // redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_wraddr(COUNTER,267)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_wraddr_i <= $unsigned(redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_wraddr_q = redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_wraddr_i[3:0];

    // redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_mem(DUALMEM,266)
    assign redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_mem_ia = $unsigned(redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_inputreg0_q);
    assign redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_mem_aa = redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_wraddr_q;
    assign redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_mem_ab = redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_rdcnt_q[3:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(4),
        .numwords_a(16),
        .width_b(64),
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
    ) redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_mem_aa),
        .data_a(redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_mem_ab),
        .q_b(redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_mem_iq),
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
    assign redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_mem_q = redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_mem_iq[63:0];

    // redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_outputreg0(DELAY,265)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_outputreg0_q <= $unsigned(redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_mem_q);
        end
    end

    // redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_rdcnt(ADD,275)
    assign redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_rdcnt_a = {1'b0, redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_wraddr_q};
    assign redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_rdcnt_b = {1'b0, redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_rdcnt_o <= $unsigned(redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_rdcnt_a) + $unsigned(redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_rdcnt_b);
        end
    end
    assign redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_rdcnt_q = redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_rdcnt_o[3:0];

    // redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_inputreg0(DELAY,270)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_inputreg0_q <= $unsigned(i_idxprom48_kernel_2mm10_vt_join_q);
        end
    end

    // redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_wraddr(COUNTER,273)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_wraddr_i <= $unsigned(redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_wraddr_i) + $unsigned(3'd1);
        end
    end
    assign redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_wraddr_q = redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_wraddr_i[2:0];

    // redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_mem(DUALMEM,272)
    assign redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_mem_ia = $unsigned(redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_inputreg0_q);
    assign redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_mem_aa = redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_wraddr_q;
    assign redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_mem_ab = redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_rdcnt_q[2:0];
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
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Stratix 10")
    ) redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_mem_aa),
        .data_a(redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_mem_ab),
        .q_b(redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_mem_iq),
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
    assign redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_mem_q = redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_mem_iq[63:0];

    // redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_outputreg0(DELAY,271)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_outputreg0_q <= $unsigned(redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_mem_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,128)@17
    assign out_c0_exi9157_0_tpl = GND_q;
    assign out_c0_exi9157_1_tpl = redist26_i_idxprom48_kernel_2mm10_vt_join_q_11_outputreg0_q;
    assign out_c0_exi9157_2_tpl = redist17_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm0_i_llvm_fpga_pop_i64_idxprom49_pop23_kernel_2mm11_mux_x_q_13_outputreg0_q;
    assign out_c0_exi9157_3_tpl = redist27_i_arrayidx494_kernel_2mm12_vt_join_q_11_outputreg0_q;
    assign out_c0_exi9157_4_tpl = bgTrunc_i_mul50_kernel_2mm15_sel_x_b;
    assign out_c0_exi9157_5_tpl = redist4_i_exitcond10_kernel_2mm17_cmp_nsign_q_13_q;
    assign out_c0_exi9157_6_tpl = i_notcmp16_kernel_2mm20_q;
    assign out_c0_exi9157_7_tpl = redist18_i_llvm_fpga_pop_i1_notcmp3143_pop22_kernel_2mm0_i_llvm_fpga_pop_i1_notcmp3143_pop22_kernel_2mm26_mux_x_q_11_q;
    assign out_c0_exi9157_8_tpl = redist7_sync_together70_aunroll_x_in_c0_eni3144_2_tpl_17_outputreg0_q;
    assign out_c0_exi9157_9_tpl = redist9_sync_together70_aunroll_x_in_c0_eni3144_3_tpl_17_q;
    assign out_kernel_2mm_B9_current_iter_isspec = redist25_i_kernel_2mm_b9_current_iter_isspec_kernel_2mm5_q_11_q;
    assign out_o_valid = redist5_valid_fanout_reg0_q_7_q;

endmodule
