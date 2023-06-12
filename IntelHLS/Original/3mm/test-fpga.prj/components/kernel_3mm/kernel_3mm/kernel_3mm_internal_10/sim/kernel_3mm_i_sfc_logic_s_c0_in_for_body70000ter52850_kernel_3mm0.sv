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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body76_kernel_3mms_c0_enter52850_kernel_3mm0
// Created for function/kernel kernel_3mm
// SystemVerilog created on Thu Apr 27 14:26:49 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_i_sfc_logic_s_c0_in_for_body70000ter52850_kernel_3mm0 (
    input wire [31:0] in_unnamed_kernel_3mm10_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm10_kernel_3mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_3mm10_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm10_kernel_3mm_avm_readdatavalid,
    output wire [31:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount,
    input wire [0:0] in_flush,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi13546_0_tpl,
    output wire [31:0] out_c0_exi13546_1_tpl,
    output wire [63:0] out_c0_exi13546_2_tpl,
    output wire [63:0] out_c0_exi13546_3_tpl,
    output wire [63:0] out_c0_exi13546_4_tpl,
    output wire [0:0] out_c0_exi13546_5_tpl,
    output wire [31:0] out_c0_exi13546_6_tpl,
    output wire [0:0] out_c0_exi13546_7_tpl,
    output wire [0:0] out_c0_exi13546_8_tpl,
    output wire [0:0] out_c0_exi13546_9_tpl,
    output wire [0:0] out_c0_exi13546_10_tpl,
    output wire [0:0] out_c0_exi13546_11_tpl,
    output wire [31:0] out_c0_exi13546_12_tpl,
    output wire [0:0] out_c0_exi13546_13_tpl,
    output wire [0:0] out_kernel_3mm_B11_current_iter_isspec,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni5527_0_tpl,
    input wire [31:0] in_c0_eni5527_1_tpl,
    input wire [0:0] in_c0_eni5527_2_tpl,
    input wire [0:0] in_c0_eni5527_3_tpl,
    input wire [0:0] in_c0_eni5527_4_tpl,
    input wire [0:0] in_c0_eni5527_5_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_062_q;
    wire [31:0] c_i32_166_q;
    wire [4:0] c_i5_165_q;
    wire [4:0] c_i5_863_q;
    wire [63:0] c_kernel_3mm_G_local_pmem_q;
    wire [1:0] i_arrayidx817_kernel_3mm13_vt_const_1_q;
    wire [63:0] i_arrayidx817_kernel_3mm13_vt_join_q;
    wire [61:0] i_arrayidx817_kernel_3mm13_vt_select_63_b;
    wire [5:0] i_fpga_indvars_iv_next21_kernel_3mm23_a;
    wire [5:0] i_fpga_indvars_iv_next21_kernel_3mm23_b;
    logic [5:0] i_fpga_indvars_iv_next21_kernel_3mm23_o;
    wire [5:0] i_fpga_indvars_iv_next21_kernel_3mm23_q;
    wire [63:0] i_idxprom78_kernel_3mm10_vt_join_q;
    wire [31:0] i_idxprom78_kernel_3mm10_vt_select_31_b;
    wire [63:0] i_idxprom80_kernel_3mm12_vt_join_q;
    wire [31:0] i_idxprom80_kernel_3mm12_vt_select_31_b;
    wire [32:0] i_inc103_kernel_3mm25_a;
    wire [32:0] i_inc103_kernel_3mm25_b;
    logic [32:0] i_inc103_kernel_3mm25_o;
    wire [32:0] i_inc103_kernel_3mm25_q;
    wire [0:0] i_kernel_3mm_b11_current_iter_isspec_kernel_3mm5_q;
    wire [0:0] i_kernel_3mm_b11_next_iter_isreal_kernel_3mm7_q;
    wire [0:0] i_llvm_fpga_dummy_thread_kernel_3mm_b11_dummy_kernel_3mm2_out_dummy_out;
    wire [0:0] i_llvm_fpga_forked_kernel_3mm_b11_forked_kernel_3mm3_out_buffer_out;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm15_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm15_out_unnamed_kernel_3mm10_kernel_3mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm15_out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm15_out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm15_out_unnamed_kernel_3mm10_kernel_3mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm15_out_unnamed_kernel_3mm10_kernel_3mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm15_out_unnamed_kernel_3mm10_kernel_3mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm15_out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_kernel_3mm6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_kernel_3mm6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_kernel_3mm6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_kernel_3mm6_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_kernel_3mm6_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_kernel_3mm6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond29_kernel_3mm22_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond29_kernel_3mm22_out_feedback_valid_out_4;
    wire [0:0] i_notcmp26_kernel_3mm21_q;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next21_kernel_3mm23_sel_x_b;
    wire [31:0] bgTrunc_i_inc103_kernel_3mm25_sel_x_b;
    wire [9:0] i_arrayidx817_kernel_3mm0_add_x_a;
    wire [9:0] i_arrayidx817_kernel_3mm0_add_x_b;
    logic [9:0] i_arrayidx817_kernel_3mm0_add_x_o;
    wire [9:0] i_arrayidx817_kernel_3mm0_add_x_q;
    wire [63:0] i_arrayidx817_kernel_3mm0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx817_kernel_3mm0_narrow_x_b;
    wire [8:0] i_arrayidx817_kernel_3mm0_shift_join_x_q;
    wire [9:0] i_arrayidx817_kernel_3mm0_dupName_0_add_x_a;
    wire [9:0] i_arrayidx817_kernel_3mm0_dupName_0_add_x_b;
    logic [9:0] i_arrayidx817_kernel_3mm0_dupName_0_add_x_o;
    wire [9:0] i_arrayidx817_kernel_3mm0_dupName_0_add_x_q;
    wire [17:0] i_arrayidx817_kernel_3mm0_mult_extender_x_q;
    wire [2:0] i_arrayidx817_kernel_3mm0_mult_multconst_x_q;
    wire [8:0] i_arrayidx817_kernel_3mm0_dupName_0_trunc_sel_x_b;
    wire [8:0] i_arrayidx817_kernel_3mm0_dupName_1_trunc_sel_x_b;
    wire [8:0] i_arrayidx817_kernel_3mm0_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx817_kernel_3mm0_dupName_3_trunc_sel_x_b;
    wire [8:0] i_arrayidx817_kernel_3mm0_dupName_5_trunc_sel_x_b;
    wire [63:0] i_idxprom78_kernel_3mm10_sel_x_b;
    wire [63:0] i_idxprom80_kernel_3mm12_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b11_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b11_current_iter_isreal_kernel_3mm4_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b11_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b11_current_iter_isreal_kernel_3mm4_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm14_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm14_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm27_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm27_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_j_251_pop42_kernel_3mm0_i_llvm_fpga_pop_i32_j_251_pop42_kernel_3mm11_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_j_251_pop42_kernel_3mm0_i_llvm_fpga_pop_i32_j_251_pop42_kernel_3mm11_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv20_pop41_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv20_pop41_kernel_3mm16_mux_x_s;
    reg [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv20_pop41_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv20_pop41_kernel_3mm16_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_c_i7_03_x_q;
    wire [7:0] i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm0_i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm0_i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm0_i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm0_i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm0_i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm0_i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_i_252_pop3094_push45_kernel_3mm0_i_llvm_fpga_push_i32_i_252_pop3094_push45_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i32_i_252_pop3094_push45_kernel_3mm0_i_llvm_fpga_push_i32_i_252_pop3094_push45_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_i_252_pop3094_push45_kernel_3mm0_i_llvm_fpga_push_i32_i_252_pop3094_push45_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i32_i_252_pop3094_push45_kernel_3mm0_i_llvm_fpga_push_i32_i_252_pop3094_push45_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_i_252_pop3094_push45_kernel_3mm0_i_llvm_fpga_push_i32_i_252_pop3094_push45_kernel_3mm1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_i_252_pop3094_push45_kernel_3mm0_i_llvm_fpga_push_i32_i_252_pop3094_push45_kernel_3mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_j_251_push42_kernel_3mm0_i_llvm_fpga_push_i32_j_251_push42_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i32_j_251_push42_kernel_3mm0_i_llvm_fpga_push_i32_j_251_push42_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_j_251_push42_kernel_3mm0_i_llvm_fpga_push_i32_j_251_push42_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i32_j_251_push42_kernel_3mm0_i_llvm_fpga_push_i32_j_251_push42_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_j_251_push42_kernel_3mm0_i_llvm_fpga_push_i32_j_251_push42_kernel_3mm1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_j_251_push42_kernel_3mm0_i_llvm_fpga_push_i32_j_251_push42_kernel_3mm1_x_o_data;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm1_x_o_data;
    wire [4:0] i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
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
    wire [0:0] i_exitcond22_kernel_3mm17_cmp_nsign_q;
    wire [9:0] addsumAHighB_uid182_i_arrayidx817_kernel_3mm0_mult_x_a;
    wire [9:0] addsumAHighB_uid182_i_arrayidx817_kernel_3mm0_mult_x_b;
    logic [9:0] addsumAHighB_uid182_i_arrayidx817_kernel_3mm0_mult_x_o;
    wire [9:0] addsumAHighB_uid182_i_arrayidx817_kernel_3mm0_mult_x_q;
    wire [11:0] add_uid183_i_arrayidx817_kernel_3mm0_mult_x_q;
    wire [14:0] sR_mergedSignalTM_uid188_i_arrayidx817_kernel_3mm0_mult_x_q;
    wire [54:0] i_arrayidx817_kernel_3mm0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx817_kernel_3mm0_upper_bits_x_merged_bit_select_c;
    wire [1:0] lowRangeB_uid180_i_arrayidx817_kernel_3mm0_mult_x_merged_bit_select_b;
    wire [6:0] lowRangeB_uid180_i_arrayidx817_kernel_3mm0_mult_x_merged_bit_select_c;
    reg [54:0] redist0_i_arrayidx817_kernel_3mm0_upper_bits_x_merged_bit_select_b_1_q;
    reg [0:0] redist1_i_exitcond22_kernel_3mm17_cmp_nsign_q_6_q;
    reg [31:0] redist2_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_4_q;
    reg [31:0] redist2_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_4_delay_0;
    reg [31:0] redist2_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_4_delay_1;
    reg [0:0] redist4_sync_together73_aunroll_x_in_c0_eni5527_3_tpl_6_q;
    reg [0:0] redist5_sync_together73_aunroll_x_in_c0_eni5527_3_tpl_10_q;
    reg [0:0] redist5_sync_together73_aunroll_x_in_c0_eni5527_3_tpl_10_delay_0;
    reg [0:0] redist5_sync_together73_aunroll_x_in_c0_eni5527_3_tpl_10_delay_1;
    reg [0:0] redist5_sync_together73_aunroll_x_in_c0_eni5527_3_tpl_10_delay_2;
    reg [0:0] redist6_sync_together73_aunroll_x_in_c0_eni5527_4_tpl_6_q;
    reg [0:0] redist7_sync_together73_aunroll_x_in_c0_eni5527_4_tpl_10_q;
    reg [0:0] redist7_sync_together73_aunroll_x_in_c0_eni5527_4_tpl_10_delay_0;
    reg [0:0] redist7_sync_together73_aunroll_x_in_c0_eni5527_4_tpl_10_delay_1;
    reg [0:0] redist7_sync_together73_aunroll_x_in_c0_eni5527_4_tpl_10_delay_2;
    reg [0:0] redist8_sync_together73_aunroll_x_in_c0_eni5527_5_tpl_10_q;
    reg [0:0] redist9_sync_together73_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist9_sync_together73_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist10_sync_together73_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist11_sync_together73_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist12_sync_together73_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist13_sync_together73_aunroll_x_in_i_valid_9_q;
    reg [0:0] redist13_sync_together73_aunroll_x_in_i_valid_9_delay_0;
    reg [0:0] redist13_sync_together73_aunroll_x_in_i_valid_9_delay_1;
    reg [0:0] redist13_sync_together73_aunroll_x_in_i_valid_9_delay_2;
    reg [0:0] redist14_i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_2_q;
    reg [0:0] redist14_i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_2_delay_0;
    reg [0:0] redist15_i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_4_q;
    reg [0:0] redist15_i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_4_delay_0;
    reg [0:0] redist17_i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm27_mux_x_q_4_q;
    reg [0:0] redist17_i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm27_mux_x_q_4_delay_0;
    reg [0:0] redist17_i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm27_mux_x_q_4_delay_1;
    reg [0:0] redist17_i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm27_mux_x_q_4_delay_2;
    reg [0:0] redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm14_mux_x_q_4_q;
    reg [0:0] redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm14_mux_x_q_4_delay_0;
    reg [0:0] redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm14_mux_x_q_4_delay_1;
    reg [0:0] redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm14_mux_x_q_4_delay_2;
    reg [8:0] redist19_i_arrayidx817_kernel_3mm0_dupName_2_trunc_sel_x_b_1_q;
    reg [8:0] redist20_i_arrayidx817_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q;
    reg [0:0] redist21_i_llvm_fpga_pipeline_keep_going28_kernel_3mm6_out_data_out_2_q;
    reg [0:0] redist21_i_llvm_fpga_pipeline_keep_going28_kernel_3mm6_out_data_out_2_delay_0;
    reg [0:0] redist22_i_llvm_fpga_forked_kernel_3mm_b11_forked_kernel_3mm3_out_buffer_out_4_q;
    reg [0:0] redist22_i_llvm_fpga_forked_kernel_3mm_b11_forked_kernel_3mm3_out_buffer_out_4_delay_0;
    reg [0:0] redist22_i_llvm_fpga_forked_kernel_3mm_b11_forked_kernel_3mm3_out_buffer_out_4_delay_1;
    reg [0:0] redist22_i_llvm_fpga_forked_kernel_3mm_b11_forked_kernel_3mm3_out_buffer_out_4_delay_2;
    reg [0:0] redist23_i_llvm_fpga_forked_kernel_3mm_b11_forked_kernel_3mm3_out_buffer_out_6_q;
    reg [0:0] redist23_i_llvm_fpga_forked_kernel_3mm_b11_forked_kernel_3mm3_out_buffer_out_6_delay_0;
    reg [0:0] redist24_i_llvm_fpga_dummy_thread_kernel_3mm_b11_dummy_kernel_3mm2_out_dummy_out_4_q;
    reg [0:0] redist24_i_llvm_fpga_dummy_thread_kernel_3mm_b11_dummy_kernel_3mm2_out_dummy_out_4_delay_0;
    reg [0:0] redist24_i_llvm_fpga_dummy_thread_kernel_3mm_b11_dummy_kernel_3mm2_out_dummy_out_4_delay_1;
    reg [0:0] redist24_i_llvm_fpga_dummy_thread_kernel_3mm_b11_dummy_kernel_3mm2_out_dummy_out_4_delay_2;
    reg [0:0] redist25_i_kernel_3mm_b11_current_iter_isspec_kernel_3mm5_q_4_q;
    reg [0:0] redist25_i_kernel_3mm_b11_current_iter_isspec_kernel_3mm5_q_4_delay_0;
    reg [0:0] redist25_i_kernel_3mm_b11_current_iter_isspec_kernel_3mm5_q_4_delay_1;
    reg [0:0] redist25_i_kernel_3mm_b11_current_iter_isspec_kernel_3mm5_q_4_delay_2;
    reg [63:0] redist26_i_idxprom80_kernel_3mm12_vt_join_q_4_q;
    reg [63:0] redist26_i_idxprom80_kernel_3mm12_vt_join_q_4_delay_0;
    reg [63:0] redist26_i_idxprom80_kernel_3mm12_vt_join_q_4_delay_1;
    reg [63:0] redist28_i_arrayidx817_kernel_3mm13_vt_join_q_4_q;
    reg [63:0] redist28_i_arrayidx817_kernel_3mm13_vt_join_q_4_delay_0;
    reg [63:0] redist28_i_arrayidx817_kernel_3mm13_vt_join_q_4_delay_1;
    reg [31:0] redist2_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_4_inputreg0_q;
    reg [31:0] redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_inputreg0_q;
    reg [31:0] redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_outputreg0_q;
    wire redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_mem_reset0;
    wire [31:0] redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_mem_ia;
    wire [1:0] redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_mem_aa;
    wire [1:0] redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_mem_ab;
    wire [31:0] redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_mem_iq;
    wire [31:0] redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_mem_q;
    wire [1:0] redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [1:0] redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_wraddr_i = 2'b11;
    wire [1:0] redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_offset_q;
    wire [2:0] redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_rdcnt_a;
    wire [2:0] redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_rdcnt_b;
    logic [2:0] redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_rdcnt_o;
    wire [2:0] redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_rdcnt_q;
    reg [31:0] redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_inputreg0_q;
    reg [31:0] redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_outputreg0_q;
    wire redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_mem_reset0;
    wire [31:0] redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_mem_ia;
    wire [1:0] redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_mem_aa;
    wire [1:0] redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_mem_ab;
    wire [31:0] redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_mem_iq;
    wire [31:0] redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_mem_q;
    wire [1:0] redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [1:0] redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_wraddr_i = 2'b11;
    wire [2:0] redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_rdcnt_a;
    wire [2:0] redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_rdcnt_b;
    logic [2:0] redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_rdcnt_o;
    wire [2:0] redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_rdcnt_q;
    reg [63:0] redist26_i_idxprom80_kernel_3mm12_vt_join_q_4_inputreg0_q;
    reg [63:0] redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_inputreg0_q;
    reg [63:0] redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_outputreg0_q;
    wire redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_mem_reset0;
    wire [63:0] redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_mem_ia;
    wire [1:0] redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_mem_aa;
    wire [1:0] redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_mem_ab;
    wire [63:0] redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_mem_iq;
    wire [63:0] redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_mem_q;
    wire [1:0] redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [1:0] redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_wraddr_i = 2'b11;
    wire [2:0] redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_rdcnt_a;
    wire [2:0] redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_rdcnt_b;
    logic [2:0] redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_rdcnt_o;
    wire [2:0] redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_rdcnt_q;
    reg [63:0] redist28_i_arrayidx817_kernel_3mm13_vt_join_q_4_inputreg0_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist9_sync_together73_aunroll_x_in_i_valid_2(DELAY,229)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist9_sync_together73_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist9_sync_together73_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_sync_together73_aunroll_x_in_i_valid_2_q <= redist9_sync_together73_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist10_sync_together73_aunroll_x_in_i_valid_3(DELAY,230)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist10_sync_together73_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist10_sync_together73_aunroll_x_in_i_valid_3_q <= $unsigned(redist9_sync_together73_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist11_sync_together73_aunroll_x_in_i_valid_4(DELAY,231)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_sync_together73_aunroll_x_in_i_valid_4_q <= $unsigned(redist10_sync_together73_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist12_sync_together73_aunroll_x_in_i_valid_5(DELAY,232)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist12_sync_together73_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist12_sync_together73_aunroll_x_in_i_valid_5_q <= $unsigned(redist11_sync_together73_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg8(REG,148)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist12_sync_together73_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_c_i7_03_x(CONSTANT,109)
    assign i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_c_i7_03_x_q = $unsigned(7'b0000000);

    // valid_fanout_reg2(REG,142)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist10_sync_together73_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg14(REG,154)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist10_sync_together73_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_i5_863(CONSTANT,40)
    assign c_i5_863_q = $unsigned(5'b01000);

    // i_arrayidx817_kernel_3mm0_mult_multconst_x(CONSTANT,93)
    assign i_arrayidx817_kernel_3mm0_mult_multconst_x_q = $unsigned(3'b000);

    // c_i5_165(CONSTANT,39)
    assign c_i5_165_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next21_kernel_3mm23(ADD,48)@4
    assign i_fpga_indvars_iv_next21_kernel_3mm23_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv20_pop41_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv20_pop41_kernel_3mm16_mux_x_q};
    assign i_fpga_indvars_iv_next21_kernel_3mm23_b = {1'b0, c_i5_165_q};
    assign i_fpga_indvars_iv_next21_kernel_3mm23_o = $unsigned(i_fpga_indvars_iv_next21_kernel_3mm23_a) + $unsigned(i_fpga_indvars_iv_next21_kernel_3mm23_b);
    assign i_fpga_indvars_iv_next21_kernel_3mm23_q = i_fpga_indvars_iv_next21_kernel_3mm23_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next21_kernel_3mm23_sel_x(BITSELECT,70)@4
    assign bgTrunc_i_fpga_indvars_iv_next21_kernel_3mm23_sel_x_b = i_fpga_indvars_iv_next21_kernel_3mm23_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm0_element_extension2_x(BITJOIN,134)@4
    assign i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm0_element_extension2_x_q = {i_arrayidx817_kernel_3mm0_mult_multconst_x_q, bgTrunc_i_fpga_indvars_iv_next21_kernel_3mm23_sel_x_b};

    // i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_inv_pred_x(LOGICAL,112)@1
    assign i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg16(REG,156)@0 + 1
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

    // valid_fanout_reg15(REG,155)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist9_sync_together73_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm1_x(FIFODELAY,135)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg16_q & i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q);
    assign i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm1_x_i_valid = valid_fanout_reg15_q & redist14_i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm1_x_i_data = i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm0_adapt_scalar_trunc4_sel_x(BITSELECT,137)@4
    assign i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm1_x_o_data[4:0];

    // i_llvm_fpga_pop_i5_fpga_indvars_iv20_pop41_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv20_pop41_kernel_3mm16_mux_x(MUX,107)@4
    assign i_llvm_fpga_pop_i5_fpga_indvars_iv20_pop41_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv20_pop41_kernel_3mm16_mux_x_s = redist22_i_llvm_fpga_forked_kernel_3mm_b11_forked_kernel_3mm3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i5_fpga_indvars_iv20_pop41_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv20_pop41_kernel_3mm16_mux_x_s or i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm0_adapt_scalar_trunc4_sel_x_b or c_i5_863_q)
    begin
        unique case (i_llvm_fpga_pop_i5_fpga_indvars_iv20_pop41_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv20_pop41_kernel_3mm16_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i5_fpga_indvars_iv20_pop41_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv20_pop41_kernel_3mm16_mux_x_q = i_llvm_fpga_push_i5_fpga_indvars_iv20_push41_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i5_fpga_indvars_iv20_pop41_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv20_pop41_kernel_3mm16_mux_x_q = c_i5_863_q;
            default : i_llvm_fpga_pop_i5_fpga_indvars_iv20_pop41_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv20_pop41_kernel_3mm16_mux_x_q = 5'b0;
        endcase
    end

    // i_exitcond22_kernel_3mm17_cmp_nsign(LOGICAL,171)@4
    assign i_exitcond22_kernel_3mm17_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i5_fpga_indvars_iv20_pop41_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv20_pop41_kernel_3mm16_mux_x_q[4:4]));

    // i_llvm_fpga_push_i1_notexitcond29_kernel_3mm22(BLACKBOX,64)@4
    // in in_empty_in@20000000
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    kernel_3mm_i_llvm_fpga_push_i1_notexitcond29_0 thei_llvm_fpga_push_i1_notexitcond29_kernel_3mm22 (
        .in_almost_empty_in(GND_q),
        .in_data_in(i_exitcond22_kernel_3mm17_cmp_nsign_q),
        .in_empty_in(GND_q),
        .in_feedback_stall_in_4(i_llvm_fpga_pipeline_keep_going28_kernel_3mm6_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i1_notexitcond29_kernel_3mm22_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i1_notexitcond29_kernel_3mm22_out_feedback_valid_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_kernel_3mm_b11_dummy_kernel_3mm2(BLACKBOX,60)@0
    // in in_stall_in@20000000
    kernel_3mm_i_llvm_fpga_dummy_thread_b11_dummy_kernel_3mm0 thei_llvm_fpga_dummy_thread_kernel_3mm_b11_dummy_kernel_3mm2 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_kernel_3mm_b11_dummy_kernel_3mm2_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist24_i_llvm_fpga_dummy_thread_kernel_3mm_b11_dummy_kernel_3mm2_out_dummy_out_4(DELAY,244)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist24_i_llvm_fpga_dummy_thread_kernel_3mm_b11_dummy_kernel_3mm2_out_dummy_out_4_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_kernel_3mm_b11_dummy_kernel_3mm2_out_dummy_out);
            redist24_i_llvm_fpga_dummy_thread_kernel_3mm_b11_dummy_kernel_3mm2_out_dummy_out_4_delay_1 <= redist24_i_llvm_fpga_dummy_thread_kernel_3mm_b11_dummy_kernel_3mm2_out_dummy_out_4_delay_0;
            redist24_i_llvm_fpga_dummy_thread_kernel_3mm_b11_dummy_kernel_3mm2_out_dummy_out_4_delay_2 <= redist24_i_llvm_fpga_dummy_thread_kernel_3mm_b11_dummy_kernel_3mm2_out_dummy_out_4_delay_1;
            redist24_i_llvm_fpga_dummy_thread_kernel_3mm_b11_dummy_kernel_3mm2_out_dummy_out_4_q <= redist24_i_llvm_fpga_dummy_thread_kernel_3mm_b11_dummy_kernel_3mm2_out_dummy_out_4_delay_2;
        end
    end

    // i_llvm_fpga_forked_kernel_3mm_b11_forked_kernel_3mm3(BLACKBOX,61)@0
    // in in_stall_in@20000000
    kernel_3mm_i_llvm_fpga_forked_b11_forked_kernel_3mm0 thei_llvm_fpga_forked_kernel_3mm_b11_forked_kernel_3mm3 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_kernel_3mm_b11_forked_kernel_3mm3_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist22_i_llvm_fpga_forked_kernel_3mm_b11_forked_kernel_3mm3_out_buffer_out_4(DELAY,242)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist22_i_llvm_fpga_forked_kernel_3mm_b11_forked_kernel_3mm3_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_kernel_3mm_b11_forked_kernel_3mm3_out_buffer_out);
            redist22_i_llvm_fpga_forked_kernel_3mm_b11_forked_kernel_3mm3_out_buffer_out_4_delay_1 <= redist22_i_llvm_fpga_forked_kernel_3mm_b11_forked_kernel_3mm3_out_buffer_out_4_delay_0;
            redist22_i_llvm_fpga_forked_kernel_3mm_b11_forked_kernel_3mm3_out_buffer_out_4_delay_2 <= redist22_i_llvm_fpga_forked_kernel_3mm_b11_forked_kernel_3mm3_out_buffer_out_4_delay_1;
            redist22_i_llvm_fpga_forked_kernel_3mm_b11_forked_kernel_3mm3_out_buffer_out_4_q <= redist22_i_llvm_fpga_forked_kernel_3mm_b11_forked_kernel_3mm3_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pipeline_keep_going28_kernel_3mm6(BLACKBOX,63)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    kernel_3mm_i_llvm_fpga_pipeline_keep_going28_0 thei_llvm_fpga_pipeline_keep_going28_kernel_3mm6 (
        .in_data_in(redist22_i_llvm_fpga_forked_kernel_3mm_b11_forked_kernel_3mm3_out_buffer_out_4_q),
        .in_dummy_in(redist24_i_llvm_fpga_dummy_thread_kernel_3mm_b11_dummy_kernel_3mm2_out_dummy_out_4_q),
        .in_forked_in(redist22_i_llvm_fpga_forked_kernel_3mm_b11_forked_kernel_3mm3_out_buffer_out_4_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond29_kernel_3mm22_out_feedback_out_4),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond29_kernel_3mm22_out_feedback_valid_out_4),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going28_kernel_3mm6_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going28_kernel_3mm6_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going28_kernel_3mm6_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going28_kernel_3mm6_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going28_kernel_3mm6_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going28_kernel_3mm6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist21_i_llvm_fpga_pipeline_keep_going28_kernel_3mm6_out_data_out_2(DELAY,241)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist21_i_llvm_fpga_pipeline_keep_going28_kernel_3mm6_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pipeline_keep_going28_kernel_3mm6_out_data_out);
            redist21_i_llvm_fpga_pipeline_keep_going28_kernel_3mm6_out_data_out_2_q <= redist21_i_llvm_fpga_pipeline_keep_going28_kernel_3mm6_out_data_out_2_delay_0;
        end
    end

    // i_kernel_3mm_b11_next_iter_isreal_kernel_3mm7(LOGICAL,59)@6
    assign i_kernel_3mm_b11_next_iter_isreal_kernel_3mm7_q = i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b11_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b11_current_iter_isreal_kernel_3mm4_mux_x_q & redist21_i_llvm_fpga_pipeline_keep_going28_kernel_3mm6_out_data_out_2_q;

    // i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_element_extension2_x(BITJOIN,110)@6
    assign i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_element_extension2_x_q = {i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_c_i7_03_x_q, i_kernel_3mm_b11_next_iter_isreal_kernel_3mm7_q};

    // redist14_i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_2(DELAY,234)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q);
            redist14_i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_2_q <= redist14_i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_2_delay_0;
        end
    end

    // valid_fanout_reg4(REG,144)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist9_sync_together73_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist15_i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_4(DELAY,235)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist15_i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_4_delay_0 <= $unsigned(redist14_i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_2_q);
            redist15_i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_4_q <= redist15_i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_4_delay_0;
        end
    end

    // valid_fanout_reg3(REG,143)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist11_sync_together73_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm1_x(FIFODELAY,111)@3 + 1
    // in i_valid@5
    // in i_write_pred@5
    // in i_data@6
    // out o_data@6
    assign i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg4_q & redist14_i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_2_q);
    assign i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm1_x_i_valid = valid_fanout_reg3_q & redist15_i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm1_x_i_data = i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_adapt_scalar_trunc4_sel_x(BITSELECT,113)@6
    assign i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm1_x_o_data[0:0];

    // redist23_i_llvm_fpga_forked_kernel_3mm_b11_forked_kernel_3mm3_out_buffer_out_6(DELAY,243)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist23_i_llvm_fpga_forked_kernel_3mm_b11_forked_kernel_3mm3_out_buffer_out_6_delay_0 <= $unsigned(redist22_i_llvm_fpga_forked_kernel_3mm_b11_forked_kernel_3mm3_out_buffer_out_4_q);
            redist23_i_llvm_fpga_forked_kernel_3mm_b11_forked_kernel_3mm3_out_buffer_out_6_q <= redist23_i_llvm_fpga_forked_kernel_3mm_b11_forked_kernel_3mm3_out_buffer_out_6_delay_0;
        end
    end

    // i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b11_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b11_current_iter_isreal_kernel_3mm4_mux_x(MUX,102)@6
    assign i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b11_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b11_current_iter_isreal_kernel_3mm4_mux_x_s = redist23_i_llvm_fpga_forked_kernel_3mm_b11_forked_kernel_3mm3_out_buffer_out_6_q;
    always @(i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b11_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b11_current_iter_isreal_kernel_3mm4_mux_x_s or i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b11_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b11_current_iter_isreal_kernel_3mm4_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b11_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b11_current_iter_isreal_kernel_3mm4_mux_x_q = i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b11_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b11_current_iter_isreal_kernel_3mm4_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b11_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b11_current_iter_isreal_kernel_3mm4_mux_x_q = 1'b0;
        endcase
    end

    // i_kernel_3mm_b11_current_iter_isspec_kernel_3mm5(LOGICAL,58)@6
    assign i_kernel_3mm_b11_current_iter_isspec_kernel_3mm5_q = i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b11_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b11_current_iter_isreal_kernel_3mm4_mux_x_q ^ VCC_q;

    // redist4_sync_together73_aunroll_x_in_c0_eni5527_3_tpl_6(DELAY,224)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist4_sync_together73_aunroll_x_in_c0_eni5527_3_tpl_6 ( .xin(in_c0_eni5527_3_tpl), .xout(redist4_sync_together73_aunroll_x_in_c0_eni5527_3_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm0_element_extension2_x(BITJOIN,116)@6
    assign i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm0_element_extension2_x_q = {i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_c_i7_03_x_q, i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm14_mux_x_q};

    // valid_fanout_reg13(REG,153)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist9_sync_together73_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg12(REG,152)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist11_sync_together73_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm1_x(FIFODELAY,117)@3 + 1
    // in i_valid@5
    // in i_write_pred@5
    // in i_data@6
    // out o_data@6
    assign i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg13_q & redist14_i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_2_q);
    assign i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm1_x_i_valid = valid_fanout_reg12_q & redist15_i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm1_x_i_data = i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm0_adapt_scalar_trunc4_sel_x(BITSELECT,119)@6
    assign i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm14_mux_x(MUX,103)@6
    assign i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm14_mux_x_s = redist23_i_llvm_fpga_forked_kernel_3mm_b11_forked_kernel_3mm3_out_buffer_out_6_q;
    always @(i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm14_mux_x_s or i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm0_adapt_scalar_trunc4_sel_x_b or redist4_sync_together73_aunroll_x_in_c0_eni5527_3_tpl_6_q)
    begin
        unique case (i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm14_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm14_mux_x_q = i_llvm_fpga_push_i1_memdep_phi7_pop2182_push43_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm14_mux_x_q = redist4_sync_together73_aunroll_x_in_c0_eni5527_3_tpl_6_q;
            default : i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm14_mux_x_q = 1'b0;
        endcase
    end

    // c_kernel_3mm_G_local_pmem(CONSTANT,41)
    assign c_kernel_3mm_G_local_pmem_q = $unsigned(64'b0100000001000110000000000000000000000000000000000000000000000000);

    // i_arrayidx817_kernel_3mm0_upper_bits_x_merged_bit_select(BITSELECT,218)@5
    assign i_arrayidx817_kernel_3mm0_upper_bits_x_merged_bit_select_b = c_kernel_3mm_G_local_pmem_q[63:9];
    assign i_arrayidx817_kernel_3mm0_upper_bits_x_merged_bit_select_c = c_kernel_3mm_G_local_pmem_q[8:0];

    // redist0_i_arrayidx817_kernel_3mm0_upper_bits_x_merged_bit_select_b_1(DELAY,220)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_arrayidx817_kernel_3mm0_upper_bits_x_merged_bit_select_b_1_q <= $unsigned(i_arrayidx817_kernel_3mm0_upper_bits_x_merged_bit_select_b);
        end
    end

    // c_i32_062(CONSTANT,37)
    assign c_i32_062_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_166(CONSTANT,38)
    assign c_i32_166_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc103_kernel_3mm25(ADD,57)@6
    assign i_inc103_kernel_3mm25_a = {1'b0, i_llvm_fpga_pop_i32_j_251_pop42_kernel_3mm0_i_llvm_fpga_pop_i32_j_251_pop42_kernel_3mm11_mux_x_q};
    assign i_inc103_kernel_3mm25_b = {1'b0, c_i32_166_q};
    assign i_inc103_kernel_3mm25_o = $unsigned(i_inc103_kernel_3mm25_a) + $unsigned(i_inc103_kernel_3mm25_b);
    assign i_inc103_kernel_3mm25_q = i_inc103_kernel_3mm25_o[32:0];

    // bgTrunc_i_inc103_kernel_3mm25_sel_x(BITSELECT,71)@6
    assign bgTrunc_i_inc103_kernel_3mm25_sel_x_b = i_inc103_kernel_3mm25_q[31:0];

    // valid_fanout_reg18(REG,158)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist9_sync_together73_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg17(REG,157)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist11_sync_together73_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i32_j_251_push42_kernel_3mm0_i_llvm_fpga_push_i32_j_251_push42_kernel_3mm1_x(FIFODELAY,129)@3 + 1
    // in i_valid@5
    // in i_write_pred@5
    // in i_data@6
    // out o_data@6
    assign i_llvm_fpga_push_i32_j_251_push42_kernel_3mm0_i_llvm_fpga_push_i32_j_251_push42_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg18_q & redist14_i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_2_q);
    assign i_llvm_fpga_push_i32_j_251_push42_kernel_3mm0_i_llvm_fpga_push_i32_j_251_push42_kernel_3mm1_x_i_valid = valid_fanout_reg17_q & redist15_i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_i32_j_251_push42_kernel_3mm0_i_llvm_fpga_push_i32_j_251_push42_kernel_3mm1_x_i_data = bgTrunc_i_inc103_kernel_3mm25_sel_x_b;
    assign i_llvm_fpga_push_i32_j_251_push42_kernel_3mm0_i_llvm_fpga_push_i32_j_251_push42_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_j_251_push42_kernel_3mm0_i_llvm_fpga_push_i32_j_251_push42_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_j_251_push42_kernel_3mm0_i_llvm_fpga_push_i32_j_251_push42_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_j_251_push42_kernel_3mm0_i_llvm_fpga_push_i32_j_251_push42_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_j_251_push42_kernel_3mm0_i_llvm_fpga_push_i32_j_251_push42_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i32_j_251_push42_kernel_3mm0_i_llvm_fpga_push_i32_j_251_push42_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_j_251_push42_kernel_3mm0_i_llvm_fpga_push_i32_j_251_push42_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_inc103_kernel_3mm25_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_j_251_push42_kernel_3mm0_i_llvm_fpga_push_i32_j_251_push42_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_j_251_pop42_kernel_3mm0_i_llvm_fpga_pop_i32_j_251_pop42_kernel_3mm11_mux_x(MUX,106)@6
    assign i_llvm_fpga_pop_i32_j_251_pop42_kernel_3mm0_i_llvm_fpga_pop_i32_j_251_pop42_kernel_3mm11_mux_x_s = redist23_i_llvm_fpga_forked_kernel_3mm_b11_forked_kernel_3mm3_out_buffer_out_6_q;
    always @(i_llvm_fpga_pop_i32_j_251_pop42_kernel_3mm0_i_llvm_fpga_pop_i32_j_251_pop42_kernel_3mm11_mux_x_s or i_llvm_fpga_push_i32_j_251_push42_kernel_3mm0_i_llvm_fpga_push_i32_j_251_push42_kernel_3mm1_x_o_data or c_i32_062_q)
    begin
        unique case (i_llvm_fpga_pop_i32_j_251_pop42_kernel_3mm0_i_llvm_fpga_pop_i32_j_251_pop42_kernel_3mm11_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_j_251_pop42_kernel_3mm0_i_llvm_fpga_pop_i32_j_251_pop42_kernel_3mm11_mux_x_q = i_llvm_fpga_push_i32_j_251_push42_kernel_3mm0_i_llvm_fpga_push_i32_j_251_push42_kernel_3mm1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_j_251_pop42_kernel_3mm0_i_llvm_fpga_pop_i32_j_251_pop42_kernel_3mm11_mux_x_q = c_i32_062_q;
            default : i_llvm_fpga_pop_i32_j_251_pop42_kernel_3mm0_i_llvm_fpga_pop_i32_j_251_pop42_kernel_3mm11_mux_x_q = 32'b0;
        endcase
    end

    // i_idxprom80_kernel_3mm12_sel_x(BITSELECT,101)@6
    assign i_idxprom80_kernel_3mm12_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j_251_pop42_kernel_3mm0_i_llvm_fpga_pop_i32_j_251_pop42_kernel_3mm11_mux_x_q[31:0]};

    // i_idxprom80_kernel_3mm12_vt_select_31(BITSELECT,56)@6
    assign i_idxprom80_kernel_3mm12_vt_select_31_b = i_idxprom80_kernel_3mm12_sel_x_b[31:0];

    // i_idxprom80_kernel_3mm12_vt_join(BITJOIN,55)@6
    assign i_idxprom80_kernel_3mm12_vt_join_q = {c_i32_062_q, i_idxprom80_kernel_3mm12_vt_select_31_b};

    // i_arrayidx817_kernel_3mm0_dupName_3_trunc_sel_x(BITSELECT,98)@6
    assign i_arrayidx817_kernel_3mm0_dupName_3_trunc_sel_x_b = i_idxprom80_kernel_3mm12_vt_join_q[8:0];

    // i_arrayidx817_kernel_3mm0_narrow_x(BITSELECT,81)@6
    assign i_arrayidx817_kernel_3mm0_narrow_x_b = i_arrayidx817_kernel_3mm0_dupName_3_trunc_sel_x_b[6:0];

    // i_arrayidx817_kernel_3mm0_shift_join_x(BITJOIN,82)@6
    assign i_arrayidx817_kernel_3mm0_shift_join_x_q = {i_arrayidx817_kernel_3mm0_narrow_x_b, i_arrayidx817_kernel_3mm13_vt_const_1_q};

    // redist2_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_4_inputreg0(DELAY,249)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_4_inputreg0_q <= $unsigned(in_c0_eni5527_1_tpl);
        end
    end

    // redist2_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_4(DELAY,222)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_4_delay_0 <= $unsigned(redist2_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_4_inputreg0_q);
            redist2_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_4_delay_1 <= redist2_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_4_delay_0;
            redist2_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_4_q <= redist2_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg11(REG,151)@0 + 1
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

    // valid_fanout_reg10(REG,150)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist9_sync_together73_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_i_252_pop3094_push45_kernel_3mm0_i_llvm_fpga_push_i32_i_252_pop3094_push45_kernel_3mm1_x(FIFODELAY,126)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_i_252_pop3094_push45_kernel_3mm0_i_llvm_fpga_push_i32_i_252_pop3094_push45_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg11_q & i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_i_252_pop3094_push45_kernel_3mm0_i_llvm_fpga_push_i32_i_252_pop3094_push45_kernel_3mm1_x_i_valid = valid_fanout_reg10_q & redist14_i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_i_252_pop3094_push45_kernel_3mm0_i_llvm_fpga_push_i32_i_252_pop3094_push45_kernel_3mm1_x_i_data = i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q;
    assign i_llvm_fpga_push_i32_i_252_pop3094_push45_kernel_3mm0_i_llvm_fpga_push_i32_i_252_pop3094_push45_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_i_252_pop3094_push45_kernel_3mm0_i_llvm_fpga_push_i32_i_252_pop3094_push45_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_i_252_pop3094_push45_kernel_3mm0_i_llvm_fpga_push_i32_i_252_pop3094_push45_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_i_252_pop3094_push45_kernel_3mm0_i_llvm_fpga_push_i32_i_252_pop3094_push45_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_i_252_pop3094_push45_kernel_3mm0_i_llvm_fpga_push_i32_i_252_pop3094_push45_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i32_i_252_pop3094_push45_kernel_3mm0_i_llvm_fpga_push_i32_i_252_pop3094_push45_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_i_252_pop3094_push45_kernel_3mm0_i_llvm_fpga_push_i32_i_252_pop3094_push45_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_i_252_pop3094_push45_kernel_3mm0_i_llvm_fpga_push_i32_i_252_pop3094_push45_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x(MUX,105)@4
    assign i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_s = redist22_i_llvm_fpga_forked_kernel_3mm_b11_forked_kernel_3mm3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_s or i_llvm_fpga_push_i32_i_252_pop3094_push45_kernel_3mm0_i_llvm_fpga_push_i32_i_252_pop3094_push45_kernel_3mm1_x_o_data or redist2_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q = i_llvm_fpga_push_i32_i_252_pop3094_push45_kernel_3mm0_i_llvm_fpga_push_i32_i_252_pop3094_push45_kernel_3mm1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q = redist2_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_4_q;
            default : i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q = 32'b0;
        endcase
    end

    // i_idxprom78_kernel_3mm10_sel_x(BITSELECT,100)@4
    assign i_idxprom78_kernel_3mm10_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q[31:0]};

    // i_idxprom78_kernel_3mm10_vt_select_31(BITSELECT,52)@4
    assign i_idxprom78_kernel_3mm10_vt_select_31_b = i_idxprom78_kernel_3mm10_sel_x_b[31:0];

    // i_idxprom78_kernel_3mm10_vt_join(BITJOIN,51)@4
    assign i_idxprom78_kernel_3mm10_vt_join_q = {c_i32_062_q, i_idxprom78_kernel_3mm10_vt_select_31_b};

    // i_arrayidx817_kernel_3mm0_dupName_0_trunc_sel_x(BITSELECT,95)@4
    assign i_arrayidx817_kernel_3mm0_dupName_0_trunc_sel_x_b = i_idxprom78_kernel_3mm10_vt_join_q[8:0];

    // addsumAHighB_uid182_i_arrayidx817_kernel_3mm0_mult_x(ADD,181)@4
    assign addsumAHighB_uid182_i_arrayidx817_kernel_3mm0_mult_x_a = {1'b0, i_arrayidx817_kernel_3mm0_dupName_0_trunc_sel_x_b};
    assign addsumAHighB_uid182_i_arrayidx817_kernel_3mm0_mult_x_b = {3'b000, lowRangeB_uid180_i_arrayidx817_kernel_3mm0_mult_x_merged_bit_select_c};
    assign addsumAHighB_uid182_i_arrayidx817_kernel_3mm0_mult_x_o = $unsigned(addsumAHighB_uid182_i_arrayidx817_kernel_3mm0_mult_x_a) + $unsigned(addsumAHighB_uid182_i_arrayidx817_kernel_3mm0_mult_x_b);
    assign addsumAHighB_uid182_i_arrayidx817_kernel_3mm0_mult_x_q = addsumAHighB_uid182_i_arrayidx817_kernel_3mm0_mult_x_o[9:0];

    // lowRangeB_uid180_i_arrayidx817_kernel_3mm0_mult_x_merged_bit_select(BITSELECT,219)@4
    assign lowRangeB_uid180_i_arrayidx817_kernel_3mm0_mult_x_merged_bit_select_b = i_arrayidx817_kernel_3mm0_dupName_0_trunc_sel_x_b[1:0];
    assign lowRangeB_uid180_i_arrayidx817_kernel_3mm0_mult_x_merged_bit_select_c = i_arrayidx817_kernel_3mm0_dupName_0_trunc_sel_x_b[8:2];

    // add_uid183_i_arrayidx817_kernel_3mm0_mult_x(BITJOIN,182)@4
    assign add_uid183_i_arrayidx817_kernel_3mm0_mult_x_q = {addsumAHighB_uid182_i_arrayidx817_kernel_3mm0_mult_x_q, lowRangeB_uid180_i_arrayidx817_kernel_3mm0_mult_x_merged_bit_select_b};

    // sR_mergedSignalTM_uid188_i_arrayidx817_kernel_3mm0_mult_x(BITJOIN,187)@4
    assign sR_mergedSignalTM_uid188_i_arrayidx817_kernel_3mm0_mult_x_q = {add_uid183_i_arrayidx817_kernel_3mm0_mult_x_q, i_arrayidx817_kernel_3mm0_mult_multconst_x_q};

    // i_arrayidx817_kernel_3mm0_mult_extender_x(BITJOIN,92)@4
    assign i_arrayidx817_kernel_3mm0_mult_extender_x_q = {i_arrayidx817_kernel_3mm0_mult_multconst_x_q, sR_mergedSignalTM_uid188_i_arrayidx817_kernel_3mm0_mult_x_q};

    // i_arrayidx817_kernel_3mm0_dupName_1_trunc_sel_x(BITSELECT,96)@4
    assign i_arrayidx817_kernel_3mm0_dupName_1_trunc_sel_x_b = i_arrayidx817_kernel_3mm0_mult_extender_x_q[8:0];

    // redist20_i_arrayidx817_kernel_3mm0_dupName_1_trunc_sel_x_b_1(DELAY,240)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist20_i_arrayidx817_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx817_kernel_3mm0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx817_kernel_3mm0_add_x(ADD,76)@5
    assign i_arrayidx817_kernel_3mm0_add_x_a = {1'b0, i_arrayidx817_kernel_3mm0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx817_kernel_3mm0_add_x_b = {1'b0, redist20_i_arrayidx817_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx817_kernel_3mm0_add_x_o = $unsigned(i_arrayidx817_kernel_3mm0_add_x_a) + $unsigned(i_arrayidx817_kernel_3mm0_add_x_b);
    assign i_arrayidx817_kernel_3mm0_add_x_q = i_arrayidx817_kernel_3mm0_add_x_o[9:0];

    // i_arrayidx817_kernel_3mm0_dupName_2_trunc_sel_x(BITSELECT,97)@5
    assign i_arrayidx817_kernel_3mm0_dupName_2_trunc_sel_x_b = i_arrayidx817_kernel_3mm0_add_x_q[8:0];

    // redist19_i_arrayidx817_kernel_3mm0_dupName_2_trunc_sel_x_b_1(DELAY,239)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist19_i_arrayidx817_kernel_3mm0_dupName_2_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx817_kernel_3mm0_dupName_2_trunc_sel_x_b);
        end
    end

    // i_arrayidx817_kernel_3mm0_dupName_0_add_x(ADD,86)@6
    assign i_arrayidx817_kernel_3mm0_dupName_0_add_x_a = {1'b0, redist19_i_arrayidx817_kernel_3mm0_dupName_2_trunc_sel_x_b_1_q};
    assign i_arrayidx817_kernel_3mm0_dupName_0_add_x_b = {1'b0, i_arrayidx817_kernel_3mm0_shift_join_x_q};
    assign i_arrayidx817_kernel_3mm0_dupName_0_add_x_o = $unsigned(i_arrayidx817_kernel_3mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx817_kernel_3mm0_dupName_0_add_x_b);
    assign i_arrayidx817_kernel_3mm0_dupName_0_add_x_q = i_arrayidx817_kernel_3mm0_dupName_0_add_x_o[9:0];

    // i_arrayidx817_kernel_3mm0_dupName_5_trunc_sel_x(BITSELECT,99)@6
    assign i_arrayidx817_kernel_3mm0_dupName_5_trunc_sel_x_b = i_arrayidx817_kernel_3mm0_dupName_0_add_x_q[8:0];

    // i_arrayidx817_kernel_3mm0_append_upper_bits_x(BITJOIN,77)@6
    assign i_arrayidx817_kernel_3mm0_append_upper_bits_x_q = {redist0_i_arrayidx817_kernel_3mm0_upper_bits_x_merged_bit_select_b_1_q, i_arrayidx817_kernel_3mm0_dupName_5_trunc_sel_x_b};

    // i_arrayidx817_kernel_3mm13_vt_select_63(BITSELECT,46)@6
    assign i_arrayidx817_kernel_3mm13_vt_select_63_b = i_arrayidx817_kernel_3mm0_append_upper_bits_x_q[63:2];

    // i_arrayidx817_kernel_3mm13_vt_const_1(CONSTANT,44)
    assign i_arrayidx817_kernel_3mm13_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx817_kernel_3mm13_vt_join(BITJOIN,45)@6
    assign i_arrayidx817_kernel_3mm13_vt_join_q = {i_arrayidx817_kernel_3mm13_vt_select_63_b, i_arrayidx817_kernel_3mm13_vt_const_1_q};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm15(BLACKBOX,62)@6
    // out out_o_almost_empty@10
    // out out_o_empty@10
    // out out_o_readdata@10
    // out out_o_stall@10
    // out out_o_valid@10
    // out out_unnamed_kernel_3mm10_kernel_3mm_avm_address@20000000
    // out out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount@20000000
    // out out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable@20000000
    // out out_unnamed_kernel_3mm10_kernel_3mm_avm_enable@20000000
    // out out_unnamed_kernel_3mm10_kernel_3mm_avm_read@20000000
    // out out_unnamed_kernel_3mm10_kernel_3mm_avm_write@20000000
    // out out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata@20000000
    kernel_3mm_i_llvm_fpga_mem_unnamed_10_kernel_3mm0 thei_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm15 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx817_kernel_3mm13_vt_join_q),
        .in_i_dependence(i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm14_mux_x_q),
        .in_i_predicate(i_kernel_3mm_b11_current_iter_isspec_kernel_3mm5_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg8_q),
        .in_unnamed_kernel_3mm10_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm10_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm10_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm10_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm10_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm10_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm10_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm10_kernel_3mm_avm_writeack),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm15_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_address(i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm15_out_unnamed_kernel_3mm10_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount(i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm15_out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable(i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm15_out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_enable(i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm15_out_unnamed_kernel_3mm10_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_read(i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm15_out_unnamed_kernel_3mm10_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_write(i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm15_out_unnamed_kernel_3mm10_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata(i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm15_out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,43)
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_address = i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm15_out_unnamed_kernel_3mm10_kernel_3mm_avm_address;
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_enable = i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm15_out_unnamed_kernel_3mm10_kernel_3mm_avm_enable;
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_read = i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm15_out_unnamed_kernel_3mm10_kernel_3mm_avm_read;
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_write = i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm15_out_unnamed_kernel_3mm10_kernel_3mm_avm_write;
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata = i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm15_out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata;
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable = i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm15_out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable;
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount = i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm15_out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount;

    // regfree_osync(GPOUT,68)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going28_kernel_3mm6_out_exiting_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,73)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going28_kernel_3mm6_out_pipeline_dummy_out;

    // dupName_1_regfree_osync_x(GPOUT,74)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going28_kernel_3mm6_out_pipeline_forked_out;

    // dupName_2_regfree_osync_x(GPOUT,75)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going28_kernel_3mm6_out_pipeline_valid_out;

    // redist13_sync_together73_aunroll_x_in_i_valid_9(DELAY,233)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_sync_together73_aunroll_x_in_i_valid_9_delay_0 <= $unsigned(redist12_sync_together73_aunroll_x_in_i_valid_5_q);
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist13_sync_together73_aunroll_x_in_i_valid_9_delay_1 <= '0;
        end
        else
        begin
            redist13_sync_together73_aunroll_x_in_i_valid_9_delay_1 <= redist13_sync_together73_aunroll_x_in_i_valid_9_delay_0;
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_sync_together73_aunroll_x_in_i_valid_9_delay_2 <= redist13_sync_together73_aunroll_x_in_i_valid_9_delay_1;
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist13_sync_together73_aunroll_x_in_i_valid_9_q <= '0;
        end
        else
        begin
            redist13_sync_together73_aunroll_x_in_i_valid_9_q <= redist13_sync_together73_aunroll_x_in_i_valid_9_delay_2;
        end
    end

    // valid_fanout_reg0(REG,140)@9 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist13_sync_together73_aunroll_x_in_i_valid_9_q);
        end
    end

    // redist25_i_kernel_3mm_b11_current_iter_isspec_kernel_3mm5_q_4(DELAY,245)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist25_i_kernel_3mm_b11_current_iter_isspec_kernel_3mm5_q_4_delay_0 <= $unsigned(i_kernel_3mm_b11_current_iter_isspec_kernel_3mm5_q);
            redist25_i_kernel_3mm_b11_current_iter_isspec_kernel_3mm5_q_4_delay_1 <= redist25_i_kernel_3mm_b11_current_iter_isspec_kernel_3mm5_q_4_delay_0;
            redist25_i_kernel_3mm_b11_current_iter_isspec_kernel_3mm5_q_4_delay_2 <= redist25_i_kernel_3mm_b11_current_iter_isspec_kernel_3mm5_q_4_delay_1;
            redist25_i_kernel_3mm_b11_current_iter_isspec_kernel_3mm5_q_4_q <= redist25_i_kernel_3mm_b11_current_iter_isspec_kernel_3mm5_q_4_delay_2;
        end
    end

    // redist5_sync_together73_aunroll_x_in_c0_eni5527_3_tpl_10(DELAY,225)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_together73_aunroll_x_in_c0_eni5527_3_tpl_10_delay_0 <= $unsigned(redist4_sync_together73_aunroll_x_in_c0_eni5527_3_tpl_6_q);
            redist5_sync_together73_aunroll_x_in_c0_eni5527_3_tpl_10_delay_1 <= redist5_sync_together73_aunroll_x_in_c0_eni5527_3_tpl_10_delay_0;
            redist5_sync_together73_aunroll_x_in_c0_eni5527_3_tpl_10_delay_2 <= redist5_sync_together73_aunroll_x_in_c0_eni5527_3_tpl_10_delay_1;
            redist5_sync_together73_aunroll_x_in_c0_eni5527_3_tpl_10_q <= redist5_sync_together73_aunroll_x_in_c0_eni5527_3_tpl_10_delay_2;
        end
    end

    // redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_offset(CONSTANT,254)
    assign redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_offset_q = $unsigned(2'b11);

    // redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_rdcnt(ADD,255)
    assign redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_rdcnt_a = {1'b0, redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_wraddr_q};
    assign redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_rdcnt_b = {1'b0, redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_rdcnt_o <= $unsigned(redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_rdcnt_a) + $unsigned(redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_rdcnt_b);
        end
    end
    assign redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_rdcnt_q = redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_rdcnt_o[2:0];

    // redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_inputreg0(DELAY,250)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_inputreg0_q <= $unsigned(redist2_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_4_q);
        end
    end

    // redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_wraddr(COUNTER,253)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_wraddr_i <= $unsigned(redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_wraddr_i) + $unsigned(2'd1);
        end
    end
    assign redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_wraddr_q = redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_wraddr_i[1:0];

    // redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_mem(DUALMEM,252)
    assign redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_mem_ia = $unsigned(redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_inputreg0_q);
    assign redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_mem_aa = redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_wraddr_q;
    assign redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_mem_ab = redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_rdcnt_q[1:0];
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
    ) redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_mem_aa),
        .data_a(redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_mem_ab),
        .q_b(redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_mem_iq),
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
    assign redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_mem_q = redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_mem_iq[31:0];

    // redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_outputreg0(DELAY,251)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_outputreg0_q <= $unsigned(redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_mem_q);
        end
    end

    // redist6_sync_together73_aunroll_x_in_c0_eni5527_4_tpl_6(DELAY,226)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist6_sync_together73_aunroll_x_in_c0_eni5527_4_tpl_6 ( .xin(in_c0_eni5527_4_tpl), .xout(redist6_sync_together73_aunroll_x_in_c0_eni5527_4_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist7_sync_together73_aunroll_x_in_c0_eni5527_4_tpl_10(DELAY,227)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together73_aunroll_x_in_c0_eni5527_4_tpl_10_delay_0 <= $unsigned(redist6_sync_together73_aunroll_x_in_c0_eni5527_4_tpl_6_q);
            redist7_sync_together73_aunroll_x_in_c0_eni5527_4_tpl_10_delay_1 <= redist7_sync_together73_aunroll_x_in_c0_eni5527_4_tpl_10_delay_0;
            redist7_sync_together73_aunroll_x_in_c0_eni5527_4_tpl_10_delay_2 <= redist7_sync_together73_aunroll_x_in_c0_eni5527_4_tpl_10_delay_1;
            redist7_sync_together73_aunroll_x_in_c0_eni5527_4_tpl_10_q <= redist7_sync_together73_aunroll_x_in_c0_eni5527_4_tpl_10_delay_2;
        end
    end

    // redist8_sync_together73_aunroll_x_in_c0_eni5527_5_tpl_10(DELAY,228)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist8_sync_together73_aunroll_x_in_c0_eni5527_5_tpl_10 ( .xin(in_c0_eni5527_5_tpl), .xout(redist8_sync_together73_aunroll_x_in_c0_eni5527_5_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm0_element_extension2_x(BITJOIN,122)@6
    assign i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm0_element_extension2_x_q = {i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_c_i7_03_x_q, i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm27_mux_x_q};

    // valid_fanout_reg21(REG,161)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist9_sync_together73_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg20(REG,160)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist11_sync_together73_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm0_i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm1_x(FIFODELAY,123)@3 + 1
    // in i_valid@5
    // in i_write_pred@5
    // in i_data@6
    // out o_data@6
    assign i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm0_i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg21_q & redist14_i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_2_q);
    assign i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm0_i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm1_x_i_valid = valid_fanout_reg20_q & redist15_i_llvm_fpga_push_i1_kernel_3mm_b11_next_iter_isreal_push_kernel_3mm0_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm0_i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm1_x_i_data = i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm0_i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm0_i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm0_i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm0_i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm0_i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm0_i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm0_i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm0_i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm0_adapt_scalar_trunc4_sel_x(BITSELECT,125)@6
    assign i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm0_i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm27_mux_x(MUX,104)@6
    assign i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm27_mux_x_s = redist23_i_llvm_fpga_forked_kernel_3mm_b11_forked_kernel_3mm3_out_buffer_out_6_q;
    always @(i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm27_mux_x_s or i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm0_adapt_scalar_trunc4_sel_x_b or redist6_sync_together73_aunroll_x_in_c0_eni5527_4_tpl_6_q)
    begin
        unique case (i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm27_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm27_mux_x_q = i_llvm_fpga_push_i1_notcmp3192_push44_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm27_mux_x_q = redist6_sync_together73_aunroll_x_in_c0_eni5527_4_tpl_6_q;
            default : i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm27_mux_x_q = 1'b0;
        endcase
    end

    // redist17_i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm27_mux_x_q_4(DELAY,237)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm27_mux_x_q_4_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm27_mux_x_q);
            redist17_i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm27_mux_x_q_4_delay_1 <= redist17_i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm27_mux_x_q_4_delay_0;
            redist17_i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm27_mux_x_q_4_delay_2 <= redist17_i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm27_mux_x_q_4_delay_1;
            redist17_i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm27_mux_x_q_4_q <= redist17_i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm27_mux_x_q_4_delay_2;
        end
    end

    // i_notcmp26_kernel_3mm21(LOGICAL,65)@10
    assign i_notcmp26_kernel_3mm21_q = redist1_i_exitcond22_kernel_3mm17_cmp_nsign_q_6_q ^ VCC_q;

    // redist1_i_exitcond22_kernel_3mm17_cmp_nsign_q_6(DELAY,221)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist1_i_exitcond22_kernel_3mm17_cmp_nsign_q_6 ( .xin(i_exitcond22_kernel_3mm17_cmp_nsign_q), .xout(redist1_i_exitcond22_kernel_3mm17_cmp_nsign_q_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm14_mux_x_q_4(DELAY,238)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm14_mux_x_q_4_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm14_mux_x_q);
            redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm14_mux_x_q_4_delay_1 <= redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm14_mux_x_q_4_delay_0;
            redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm14_mux_x_q_4_delay_2 <= redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm14_mux_x_q_4_delay_1;
            redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm14_mux_x_q_4_q <= redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm14_mux_x_q_4_delay_2;
        end
    end

    // redist28_i_arrayidx817_kernel_3mm13_vt_join_q_4_inputreg0(DELAY,269)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist28_i_arrayidx817_kernel_3mm13_vt_join_q_4_inputreg0_q <= $unsigned(i_arrayidx817_kernel_3mm13_vt_join_q);
        end
    end

    // redist28_i_arrayidx817_kernel_3mm13_vt_join_q_4(DELAY,248)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist28_i_arrayidx817_kernel_3mm13_vt_join_q_4_delay_0 <= $unsigned(redist28_i_arrayidx817_kernel_3mm13_vt_join_q_4_inputreg0_q);
            redist28_i_arrayidx817_kernel_3mm13_vt_join_q_4_delay_1 <= redist28_i_arrayidx817_kernel_3mm13_vt_join_q_4_delay_0;
            redist28_i_arrayidx817_kernel_3mm13_vt_join_q_4_q <= redist28_i_arrayidx817_kernel_3mm13_vt_join_q_4_delay_1;
        end
    end

    // redist26_i_idxprom80_kernel_3mm12_vt_join_q_4_inputreg0(DELAY,262)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist26_i_idxprom80_kernel_3mm12_vt_join_q_4_inputreg0_q <= $unsigned(i_idxprom80_kernel_3mm12_vt_join_q);
        end
    end

    // redist26_i_idxprom80_kernel_3mm12_vt_join_q_4(DELAY,246)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist26_i_idxprom80_kernel_3mm12_vt_join_q_4_delay_0 <= $unsigned(redist26_i_idxprom80_kernel_3mm12_vt_join_q_4_inputreg0_q);
            redist26_i_idxprom80_kernel_3mm12_vt_join_q_4_delay_1 <= redist26_i_idxprom80_kernel_3mm12_vt_join_q_4_delay_0;
            redist26_i_idxprom80_kernel_3mm12_vt_join_q_4_q <= redist26_i_idxprom80_kernel_3mm12_vt_join_q_4_delay_1;
        end
    end

    // redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_rdcnt(ADD,268)
    assign redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_rdcnt_a = {1'b0, redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_wraddr_q};
    assign redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_rdcnt_b = {1'b0, redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_rdcnt_o <= $unsigned(redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_rdcnt_a) + $unsigned(redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_rdcnt_b);
        end
    end
    assign redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_rdcnt_q = redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_rdcnt_o[2:0];

    // redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_inputreg0(DELAY,263)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_inputreg0_q <= $unsigned(i_idxprom78_kernel_3mm10_vt_join_q);
        end
    end

    // redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_wraddr(COUNTER,266)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_wraddr_i <= $unsigned(redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_wraddr_i) + $unsigned(2'd1);
        end
    end
    assign redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_wraddr_q = redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_wraddr_i[1:0];

    // redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_mem(DUALMEM,265)
    assign redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_mem_ia = $unsigned(redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_inputreg0_q);
    assign redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_mem_aa = redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_wraddr_q;
    assign redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_mem_ab = redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_rdcnt_q[1:0];
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
    ) redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_mem_aa),
        .data_a(redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_mem_ab),
        .q_b(redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_mem_iq),
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
    assign redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_mem_q = redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_mem_iq[63:0];

    // redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_outputreg0(DELAY,264)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_outputreg0_q <= $unsigned(redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_mem_q);
        end
    end

    // redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_rdcnt(ADD,261)
    assign redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_rdcnt_a = {1'b0, redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_wraddr_q};
    assign redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_rdcnt_b = {1'b0, redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_rdcnt_o <= $unsigned(redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_rdcnt_a) + $unsigned(redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_rdcnt_b);
        end
    end
    assign redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_rdcnt_q = redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_rdcnt_o[2:0];

    // redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_inputreg0(DELAY,256)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_inputreg0_q <= $unsigned(i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q);
        end
    end

    // redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_wraddr(COUNTER,259)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_wraddr_i <= $unsigned(redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_wraddr_i) + $unsigned(2'd1);
        end
    end
    assign redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_wraddr_q = redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_wraddr_i[1:0];

    // redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_mem(DUALMEM,258)
    assign redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_mem_ia = $unsigned(redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_inputreg0_q);
    assign redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_mem_aa = redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_wraddr_q;
    assign redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_mem_ab = redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_rdcnt_q[1:0];
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
    ) redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_mem_aa),
        .data_a(redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_mem_ab),
        .q_b(redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_mem_iq),
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
    assign redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_mem_q = redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_mem_iq[31:0];

    // redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_outputreg0(DELAY,257)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_outputreg0_q <= $unsigned(redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_mem_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,138)@10
    assign out_c0_exi13546_0_tpl = GND_q;
    assign out_c0_exi13546_1_tpl = redist16_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm0_i_llvm_fpga_pop_i32_i_252_pop3094_pop45_kernel_3mm9_mux_x_q_6_outputreg0_q;
    assign out_c0_exi13546_2_tpl = redist27_i_idxprom78_kernel_3mm10_vt_join_q_6_outputreg0_q;
    assign out_c0_exi13546_3_tpl = redist26_i_idxprom80_kernel_3mm12_vt_join_q_4_q;
    assign out_c0_exi13546_4_tpl = redist28_i_arrayidx817_kernel_3mm13_vt_join_q_4_q;
    assign out_c0_exi13546_5_tpl = redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi7_pop2182_pop43_kernel_3mm14_mux_x_q_4_q;
    assign out_c0_exi13546_6_tpl = i_llvm_fpga_mem_unnamed_kernel_3mm10_kernel_3mm15_out_o_readdata;
    assign out_c0_exi13546_7_tpl = redist1_i_exitcond22_kernel_3mm17_cmp_nsign_q_6_q;
    assign out_c0_exi13546_8_tpl = i_notcmp26_kernel_3mm21_q;
    assign out_c0_exi13546_9_tpl = redist17_i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp3192_pop44_kernel_3mm27_mux_x_q_4_q;
    assign out_c0_exi13546_10_tpl = redist8_sync_together73_aunroll_x_in_c0_eni5527_5_tpl_10_q;
    assign out_c0_exi13546_11_tpl = redist7_sync_together73_aunroll_x_in_c0_eni5527_4_tpl_10_q;
    assign out_c0_exi13546_12_tpl = redist3_sync_together73_aunroll_x_in_c0_eni5527_1_tpl_10_outputreg0_q;
    assign out_c0_exi13546_13_tpl = redist5_sync_together73_aunroll_x_in_c0_eni5527_3_tpl_10_q;
    assign out_kernel_3mm_B11_current_iter_isspec = redist25_i_kernel_3mm_b11_current_iter_isspec_kernel_3mm5_q_4_q;
    assign out_o_valid = valid_fanout_reg0_q;

endmodule
