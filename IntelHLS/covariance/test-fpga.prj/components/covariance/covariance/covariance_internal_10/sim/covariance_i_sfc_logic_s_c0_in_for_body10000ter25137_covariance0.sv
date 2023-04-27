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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body13_covariances_c0_enter25137_covariance0
// Created for function/kernel covariance
// SystemVerilog created on Thu Apr 27 14:28:38 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_i_sfc_logic_s_c0_in_for_body10000ter25137_covariance0 (
    input wire [31:0] in_unnamed_covariance3_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance3_covariance_avm_writeack,
    input wire [0:0] in_unnamed_covariance3_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance3_covariance_avm_readdatavalid,
    output wire [31:0] out_unnamed_covariance3_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance3_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance3_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance3_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance3_covariance_avm_writedata,
    output wire [3:0] out_unnamed_covariance3_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance3_covariance_avm_burstcount,
    input wire [0:0] in_flush,
    output wire [0:0] out_exiting_valid_out,
    input wire [31:0] in_memdep_covariance_avm_readdata,
    input wire [0:0] in_memdep_covariance_avm_writeack,
    input wire [0:0] in_memdep_covariance_avm_waitrequest,
    input wire [0:0] in_memdep_covariance_avm_readdatavalid,
    output wire [31:0] out_memdep_covariance_avm_address,
    output wire [0:0] out_memdep_covariance_avm_enable,
    output wire [0:0] out_memdep_covariance_avm_read,
    output wire [0:0] out_memdep_covariance_avm_write,
    output wire [31:0] out_memdep_covariance_avm_writedata,
    output wire [3:0] out_memdep_covariance_avm_byteenable,
    output wire [0:0] out_memdep_covariance_avm_burstcount,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi10274_0_tpl,
    output wire [0:0] out_c0_exi10274_1_tpl,
    output wire [0:0] out_c0_exi10274_2_tpl,
    output wire [0:0] out_c0_exi10274_3_tpl,
    output wire [31:0] out_c0_exi10274_4_tpl,
    output wire [0:0] out_c0_exi10274_5_tpl,
    output wire [0:0] out_c0_exi10274_6_tpl,
    output wire [31:0] out_c0_exi10274_7_tpl,
    output wire [0:0] out_c0_exi10274_8_tpl,
    output wire [0:0] out_c0_exi10274_9_tpl,
    output wire [0:0] out_c0_exi10274_10_tpl,
    output wire [0:0] out_covariance_B7_current_iter_isspec,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_profile_loop_o_valid,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni13250_0_tpl,
    input wire [0:0] in_c0_eni13250_1_tpl,
    input wire [63:0] in_c0_eni13250_2_tpl,
    input wire [0:0] in_c0_eni13250_3_tpl,
    input wire [31:0] in_c0_eni13250_4_tpl,
    input wire [0:0] in_c0_eni13250_5_tpl,
    input wire [0:0] in_c0_eni13250_6_tpl,
    input wire [31:0] in_c0_eni13250_7_tpl,
    input wire [0:0] in_c0_eni13250_8_tpl,
    input wire [0:0] in_c0_eni13250_9_tpl,
    input wire [31:0] in_c0_eni13250_10_tpl,
    input wire [0:0] in_c0_eni13250_11_tpl,
    input wire [0:0] in_c0_eni13250_12_tpl,
    input wire [0:0] in_c0_eni13250_13_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_covariance_data_local_pmem_q;
    wire [31:0] c_i32_071_q;
    wire [31:0] c_i32_172_q;
    wire [5:0] c_i6_175_q;
    wire [5:0] c_i6_3073_q;
    wire [1:0] i_arrayidx172_covariance12_vt_const_1_q;
    wire [63:0] i_arrayidx172_covariance12_vt_join_q;
    wire [61:0] i_arrayidx172_covariance12_vt_select_63_b;
    wire [0:0] i_covariance_b7_current_iter_isspec_covariance5_q;
    wire [0:0] i_covariance_b7_next_iter_isreal_covariance7_q;
    wire [6:0] i_fpga_indvars_iv_next6_covariance33_a;
    wire [6:0] i_fpga_indvars_iv_next6_covariance33_b;
    logic [6:0] i_fpga_indvars_iv_next6_covariance33_o;
    wire [6:0] i_fpga_indvars_iv_next6_covariance33_q;
    wire [63:0] i_idxprom14_covariance10_vt_join_q;
    wire [31:0] i_idxprom14_covariance10_vt_select_31_b;
    wire [32:0] i_inc19_covariance21_a;
    wire [32:0] i_inc19_covariance21_b;
    logic [32:0] i_inc19_covariance21_o;
    wire [32:0] i_inc19_covariance21_q;
    wire [0:0] i_llvm_fpga_dummy_thread_covariance_b7_dummy_covariance2_out_dummy_out;
    wire [0:0] i_llvm_fpga_forked_covariance_b7_forked_covariance3_out_buffer_out;
    wire [31:0] i_llvm_fpga_mem_memdep_covariance20_out_memdep_covariance_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_covariance20_out_memdep_covariance_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_covariance20_out_memdep_covariance_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_covariance20_out_memdep_covariance_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_covariance20_out_memdep_covariance_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_covariance20_out_memdep_covariance_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_covariance20_out_memdep_covariance_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_covariance20_out_o_writeack;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance3_covariance14_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance3_covariance14_out_unnamed_covariance3_covariance_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance3_covariance14_out_unnamed_covariance3_covariance_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_covariance3_covariance14_out_unnamed_covariance3_covariance_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance3_covariance14_out_unnamed_covariance3_covariance_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance3_covariance14_out_unnamed_covariance3_covariance_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance3_covariance14_out_unnamed_covariance3_covariance_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance3_covariance14_out_unnamed_covariance3_covariance_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going35_covariance6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going35_covariance6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going35_covariance6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going35_covariance6_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going35_covariance6_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going35_covariance6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond36_covariance32_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond36_covariance32_out_feedback_valid_out_9;
    wire [0:0] i_memdep_phi4_or_covariance19_qi;
    reg [0:0] i_memdep_phi4_or_covariance19_q;
    wire [0:0] i_notcmp33_covariance31_q;
    wire [32:0] i_sub_covariance16_a;
    wire [32:0] i_sub_covariance16_b;
    logic [32:0] i_sub_covariance16_o;
    wire [32:0] i_sub_covariance16_q;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next6_covariance33_sel_x_b;
    wire [31:0] bgTrunc_i_inc19_covariance21_sel_x_b;
    wire [31:0] bgTrunc_i_sub_covariance16_sel_x_b;
    wire [12:0] i_arrayidx172_covariance0_add_x_a;
    wire [12:0] i_arrayidx172_covariance0_add_x_b;
    logic [12:0] i_arrayidx172_covariance0_add_x_o;
    wire [12:0] i_arrayidx172_covariance0_add_x_q;
    wire [63:0] i_arrayidx172_covariance0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx172_covariance0_c_i7_01_x_q;
    wire [4:0] i_arrayidx172_covariance0_narrow_x_b;
    wire [11:0] i_arrayidx172_covariance0_shift_join_x_q;
    wire [12:0] i_arrayidx172_covariance0_dupName_0_add_x_a;
    wire [12:0] i_arrayidx172_covariance0_dupName_0_add_x_b;
    logic [12:0] i_arrayidx172_covariance0_dupName_0_add_x_o;
    wire [12:0] i_arrayidx172_covariance0_dupName_0_add_x_q;
    wire [9:0] i_arrayidx172_covariance0_dupName_0_narrow_x_b;
    wire [11:0] i_arrayidx172_covariance0_dupName_0_shift_join_x_q;
    wire [11:0] i_arrayidx172_covariance0_dupName_0_trunc_sel_x_b;
    wire [11:0] i_arrayidx172_covariance0_dupName_2_trunc_sel_x_b;
    wire [11:0] i_arrayidx172_covariance0_dupName_3_trunc_sel_x_b;
    wire [11:0] i_arrayidx172_covariance0_dupName_5_trunc_sel_x_b;
    wire [63:0] i_idxprom14_covariance10_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_covariance_b7_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b7_current_iter_isreal_covariance4_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_covariance_b7_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b7_current_iter_isreal_covariance4_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1073_pop49_covariance0_i_llvm_fpga_pop_i1_exitcond1073_pop49_covariance37_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_exitcond1073_pop49_covariance0_i_llvm_fpga_pop_i1_exitcond1073_pop49_covariance37_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop1660_pop46_covariance0_i_llvm_fpga_pop_i1_memdep_phi1_pop1660_pop46_covariance13_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop1660_pop46_covariance0_i_llvm_fpga_pop_i1_memdep_phi1_pop1660_pop46_covariance13_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1763_pop47_covariance0_i_llvm_fpga_pop_i1_memdep_phi2_pop1763_pop47_covariance17_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1763_pop47_covariance0_i_llvm_fpga_pop_i1_memdep_phi2_pop1763_pop47_covariance17_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop1866_pop48_covariance0_i_llvm_fpga_pop_i1_memdep_phi4_pop1866_pop48_covariance18_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop1866_pop48_covariance0_i_llvm_fpga_pop_i1_memdep_phi4_pop1866_pop48_covariance18_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp4375_pop50_covariance0_i_llvm_fpga_pop_i1_notcmp4375_pop50_covariance39_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_notcmp4375_pop50_covariance0_i_llvm_fpga_pop_i1_notcmp4375_pop50_covariance39_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_i9_038_pop44_covariance0_i_llvm_fpga_pop_i32_i9_038_pop44_covariance9_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_i9_038_pop44_covariance0_i_llvm_fpga_pop_i32_i9_038_pop44_covariance9_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_idxprom780_pop52_covariance0_i_llvm_fpga_pop_i64_idxprom780_pop52_covariance11_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_idxprom780_pop52_covariance0_i_llvm_fpga_pop_i64_idxprom780_pop52_covariance11_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv5_pop43_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv5_pop43_covariance22_mux_x_s;
    reg [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv5_pop43_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv5_pop43_covariance22_mux_x_q;
    wire [7:0] i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_exitcond1073_push49_covariance0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1073_push49_covariance0_i_llvm_fpga_push_i1_exitcond1073_push49_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i1_exitcond1073_push49_covariance0_i_llvm_fpga_push_i1_exitcond1073_push49_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1073_push49_covariance0_i_llvm_fpga_push_i1_exitcond1073_push49_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i1_exitcond1073_push49_covariance0_i_llvm_fpga_push_i1_exitcond1073_push49_covariance1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_exitcond1073_push49_covariance0_i_llvm_fpga_push_i1_exitcond1073_push49_covariance1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_exitcond1073_push49_covariance0_i_llvm_fpga_push_i1_exitcond1073_push49_covariance1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1073_push49_covariance0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_notcmp4375_push50_covariance0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_notcmp4375_push50_covariance0_i_llvm_fpga_push_i1_notcmp4375_push50_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i1_notcmp4375_push50_covariance0_i_llvm_fpga_push_i1_notcmp4375_push50_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_notcmp4375_push50_covariance0_i_llvm_fpga_push_i1_notcmp4375_push50_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i1_notcmp4375_push50_covariance0_i_llvm_fpga_push_i1_notcmp4375_push50_covariance1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_notcmp4375_push50_covariance0_i_llvm_fpga_push_i1_notcmp4375_push50_covariance1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_notcmp4375_push50_covariance0_i_llvm_fpga_push_i1_notcmp4375_push50_covariance1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_notcmp4375_push50_covariance0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_i9_038_push44_covariance0_i_llvm_fpga_push_i32_i9_038_push44_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i32_i9_038_push44_covariance0_i_llvm_fpga_push_i32_i9_038_push44_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_i9_038_push44_covariance0_i_llvm_fpga_push_i32_i9_038_push44_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i32_i9_038_push44_covariance0_i_llvm_fpga_push_i32_i9_038_push44_covariance1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_i9_038_push44_covariance0_i_llvm_fpga_push_i32_i9_038_push44_covariance1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_i9_038_push44_covariance0_i_llvm_fpga_push_i32_i9_038_push44_covariance1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_lim_ext54_push45_covariance0_i_llvm_fpga_push_i32_lim_ext54_push45_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i32_lim_ext54_push45_covariance0_i_llvm_fpga_push_i32_lim_ext54_push45_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_lim_ext54_push45_covariance0_i_llvm_fpga_push_i32_lim_ext54_push45_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i32_lim_ext54_push45_covariance0_i_llvm_fpga_push_i32_lim_ext54_push45_covariance1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_lim_ext54_push45_covariance0_i_llvm_fpga_push_i32_lim_ext54_push45_covariance1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_lim_ext54_push45_covariance0_i_llvm_fpga_push_i32_lim_ext54_push45_covariance1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_mul79_push51_covariance0_i_llvm_fpga_push_i32_mul79_push51_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i32_mul79_push51_covariance0_i_llvm_fpga_push_i32_mul79_push51_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_mul79_push51_covariance0_i_llvm_fpga_push_i32_mul79_push51_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i32_mul79_push51_covariance0_i_llvm_fpga_push_i32_mul79_push51_covariance1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_mul79_push51_covariance0_i_llvm_fpga_push_i32_mul79_push51_covariance1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_mul79_push51_covariance0_i_llvm_fpga_push_i32_mul79_push51_covariance1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i64_idxprom780_push52_covariance0_i_llvm_fpga_push_i64_idxprom780_push52_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i64_idxprom780_push52_covariance0_i_llvm_fpga_push_i64_idxprom780_push52_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_idxprom780_push52_covariance0_i_llvm_fpga_push_i64_idxprom780_push52_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i64_idxprom780_push52_covariance0_i_llvm_fpga_push_i64_idxprom780_push52_covariance1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_idxprom780_push52_covariance0_i_llvm_fpga_push_i64_idxprom780_push52_covariance1_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_idxprom780_push52_covariance0_i_llvm_fpga_push_i64_idxprom780_push52_covariance1_x_o_data;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance1_x_i_valid;
    wire i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance1_x_i_stall;
    wire i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance1_x_o_data;
    wire [5:0] i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance0_adapt_scalar_trunc4_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg8_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg12_q;
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
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg28_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg30_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg31_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg33_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg34_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg36_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg37_q;
    wire [0:0] i_exitcond7_covariance23_cmp_nsign_q;
    wire [51:0] i_arrayidx172_covariance0_upper_bits_x_merged_bit_select_b;
    wire [11:0] i_arrayidx172_covariance0_upper_bits_x_merged_bit_select_c;
    reg [51:0] redist0_i_arrayidx172_covariance0_upper_bits_x_merged_bit_select_b_1_q;
    reg [0:0] redist1_i_exitcond7_covariance23_cmp_nsign_q_7_q;
    reg [63:0] redist2_sync_together81_aunroll_x_in_c0_eni13250_2_tpl_4_q;
    reg [63:0] redist2_sync_together81_aunroll_x_in_c0_eni13250_2_tpl_4_delay_0;
    reg [63:0] redist2_sync_together81_aunroll_x_in_c0_eni13250_2_tpl_4_delay_1;
    reg [0:0] redist3_sync_together81_aunroll_x_in_c0_eni13250_3_tpl_4_q;
    reg [0:0] redist3_sync_together81_aunroll_x_in_c0_eni13250_3_tpl_4_delay_0;
    reg [0:0] redist3_sync_together81_aunroll_x_in_c0_eni13250_3_tpl_4_delay_1;
    reg [0:0] redist3_sync_together81_aunroll_x_in_c0_eni13250_3_tpl_4_delay_2;
    reg [31:0] redist4_sync_together81_aunroll_x_in_c0_eni13250_4_tpl_4_q;
    reg [31:0] redist4_sync_together81_aunroll_x_in_c0_eni13250_4_tpl_4_delay_0;
    reg [31:0] redist4_sync_together81_aunroll_x_in_c0_eni13250_4_tpl_4_delay_1;
    reg [0:0] redist5_sync_together81_aunroll_x_in_c0_eni13250_5_tpl_4_q;
    reg [0:0] redist5_sync_together81_aunroll_x_in_c0_eni13250_5_tpl_4_delay_0;
    reg [0:0] redist5_sync_together81_aunroll_x_in_c0_eni13250_5_tpl_4_delay_1;
    reg [0:0] redist5_sync_together81_aunroll_x_in_c0_eni13250_5_tpl_4_delay_2;
    reg [0:0] redist6_sync_together81_aunroll_x_in_c0_eni13250_6_tpl_4_q;
    reg [0:0] redist6_sync_together81_aunroll_x_in_c0_eni13250_6_tpl_4_delay_0;
    reg [0:0] redist6_sync_together81_aunroll_x_in_c0_eni13250_6_tpl_4_delay_1;
    reg [0:0] redist6_sync_together81_aunroll_x_in_c0_eni13250_6_tpl_4_delay_2;
    reg [31:0] redist7_sync_together81_aunroll_x_in_c0_eni13250_7_tpl_4_q;
    reg [31:0] redist7_sync_together81_aunroll_x_in_c0_eni13250_7_tpl_4_delay_0;
    reg [31:0] redist7_sync_together81_aunroll_x_in_c0_eni13250_7_tpl_4_delay_1;
    reg [0:0] redist8_sync_together81_aunroll_x_in_c0_eni13250_8_tpl_4_q;
    reg [0:0] redist8_sync_together81_aunroll_x_in_c0_eni13250_8_tpl_4_delay_0;
    reg [0:0] redist8_sync_together81_aunroll_x_in_c0_eni13250_8_tpl_4_delay_1;
    reg [0:0] redist8_sync_together81_aunroll_x_in_c0_eni13250_8_tpl_4_delay_2;
    reg [0:0] redist9_sync_together81_aunroll_x_in_c0_eni13250_9_tpl_4_q;
    reg [0:0] redist9_sync_together81_aunroll_x_in_c0_eni13250_9_tpl_4_delay_0;
    reg [0:0] redist9_sync_together81_aunroll_x_in_c0_eni13250_9_tpl_4_delay_1;
    reg [0:0] redist9_sync_together81_aunroll_x_in_c0_eni13250_9_tpl_4_delay_2;
    reg [0:0] redist11_sync_together81_aunroll_x_in_c0_eni13250_11_tpl_11_q;
    reg [0:0] redist12_sync_together81_aunroll_x_in_c0_eni13250_12_tpl_11_q;
    reg [0:0] redist13_sync_together81_aunroll_x_in_c0_eni13250_13_tpl_11_q;
    reg [0:0] redist14_sync_together81_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist14_sync_together81_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist15_sync_together81_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist16_sync_together81_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist17_sync_together81_aunroll_x_in_i_valid_9_q;
    reg [0:0] redist17_sync_together81_aunroll_x_in_i_valid_9_delay_0;
    reg [0:0] redist17_sync_together81_aunroll_x_in_i_valid_9_delay_1;
    reg [0:0] redist17_sync_together81_aunroll_x_in_i_valid_9_delay_2;
    reg [0:0] redist17_sync_together81_aunroll_x_in_i_valid_9_delay_3;
    reg [0:0] redist18_sync_together81_aunroll_x_in_i_valid_10_q;
    reg [0:0] redist19_sync_together81_aunroll_x_in_i_valid_11_q;
    reg [0:0] redist20_i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    reg [0:0] redist20_i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_inv_pred_x_q_2_delay_0;
    reg [0:0] redist23_i_llvm_fpga_pop_i1_notcmp4375_pop50_covariance0_i_llvm_fpga_pop_i1_notcmp4375_pop50_covariance39_mux_x_q_7_q;
    reg [0:0] redist24_i_llvm_fpga_pop_i1_memdep_phi1_pop1660_pop46_covariance0_i_llvm_fpga_pop_i1_memdep_phi1_pop1660_pop46_covariance13_mux_x_q_1_q;
    reg [0:0] redist25_i_llvm_fpga_pop_i1_exitcond1073_pop49_covariance0_i_llvm_fpga_pop_i1_exitcond1073_pop49_covariance37_mux_x_q_7_q;
    reg [0:0] redist26_i_llvm_fpga_pop_coalesce_i1_covariance_b7_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b7_current_iter_isreal_covariance4_mux_x_q_1_q;
    reg [11:0] redist27_i_arrayidx172_covariance0_dupName_2_trunc_sel_x_b_1_q;
    reg [9:0] redist28_i_arrayidx172_covariance0_dupName_0_narrow_x_b_1_q;
    reg [0:0] redist29_i_memdep_phi4_or_covariance19_q_6_q;
    reg [0:0] redist29_i_memdep_phi4_or_covariance19_q_6_delay_0;
    reg [0:0] redist29_i_memdep_phi4_or_covariance19_q_6_delay_1;
    reg [0:0] redist29_i_memdep_phi4_or_covariance19_q_6_delay_2;
    reg [0:0] redist29_i_memdep_phi4_or_covariance19_q_6_delay_3;
    reg [0:0] redist30_i_llvm_fpga_forked_covariance_b7_forked_covariance3_out_buffer_out_4_q;
    reg [0:0] redist30_i_llvm_fpga_forked_covariance_b7_forked_covariance3_out_buffer_out_4_delay_0;
    reg [0:0] redist30_i_llvm_fpga_forked_covariance_b7_forked_covariance3_out_buffer_out_4_delay_1;
    reg [0:0] redist30_i_llvm_fpga_forked_covariance_b7_forked_covariance3_out_buffer_out_4_delay_2;
    reg [0:0] redist31_i_llvm_fpga_dummy_thread_covariance_b7_dummy_covariance2_out_dummy_out_4_q;
    reg [0:0] redist31_i_llvm_fpga_dummy_thread_covariance_b7_dummy_covariance2_out_dummy_out_4_delay_0;
    reg [0:0] redist31_i_llvm_fpga_dummy_thread_covariance_b7_dummy_covariance2_out_dummy_out_4_delay_1;
    reg [0:0] redist31_i_llvm_fpga_dummy_thread_covariance_b7_dummy_covariance2_out_dummy_out_4_delay_2;
    reg [0:0] redist32_i_covariance_b7_current_iter_isspec_covariance5_q_5_q;
    reg [0:0] redist32_i_covariance_b7_current_iter_isspec_covariance5_q_5_delay_0;
    reg [0:0] redist32_i_covariance_b7_current_iter_isspec_covariance5_q_5_delay_1;
    reg [0:0] redist32_i_covariance_b7_current_iter_isspec_covariance5_q_5_delay_2;
    reg [0:0] redist32_i_covariance_b7_current_iter_isspec_covariance5_q_5_delay_3;
    reg [0:0] redist33_i_covariance_b7_current_iter_isspec_covariance5_q_6_q;
    reg [63:0] redist34_i_arrayidx172_covariance12_vt_join_q_5_q;
    reg [63:0] redist34_i_arrayidx172_covariance12_vt_join_q_5_delay_0;
    reg [63:0] redist34_i_arrayidx172_covariance12_vt_join_q_5_delay_1;
    reg [63:0] redist2_sync_together81_aunroll_x_in_c0_eni13250_2_tpl_4_inputreg0_q;
    reg [31:0] redist4_sync_together81_aunroll_x_in_c0_eni13250_4_tpl_4_inputreg0_q;
    reg [31:0] redist7_sync_together81_aunroll_x_in_c0_eni13250_7_tpl_4_inputreg0_q;
    reg [31:0] redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_inputreg0_q;
    reg [31:0] redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_outputreg0_q;
    wire redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_mem_reset0;
    wire [31:0] redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_mem_ia;
    wire [2:0] redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_mem_aa;
    wire [2:0] redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_mem_ab;
    wire [31:0] redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_mem_iq;
    wire [31:0] redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_mem_q;
    wire [2:0] redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [2:0] redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_wraddr_i = 3'b111;
    wire [2:0] redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_offset_q;
    wire [3:0] redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_rdcnt_a;
    wire [3:0] redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_rdcnt_b;
    logic [3:0] redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_rdcnt_o;
    wire [3:0] redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_rdcnt_q;
    reg [31:0] redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_inputreg0_q;
    reg [31:0] redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_outputreg0_q;
    wire redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_mem_reset0;
    wire [31:0] redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_mem_ia;
    wire [1:0] redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_mem_aa;
    wire [1:0] redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_mem_ab;
    wire [31:0] redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_mem_iq;
    wire [31:0] redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_mem_q;
    wire [1:0] redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [1:0] redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_wraddr_i = 2'b11;
    wire [1:0] redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_offset_q;
    wire [2:0] redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_rdcnt_a;
    wire [2:0] redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_rdcnt_b;
    logic [2:0] redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_rdcnt_o;
    wire [2:0] redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_rdcnt_q;
    reg [31:0] redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_inputreg0_q;
    reg [31:0] redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_outputreg0_q;
    wire redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_mem_reset0;
    wire [31:0] redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_mem_ia;
    wire [1:0] redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_mem_aa;
    wire [1:0] redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_mem_ab;
    wire [31:0] redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_mem_iq;
    wire [31:0] redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_mem_q;
    wire [1:0] redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [1:0] redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_wraddr_i = 2'b11;
    wire [1:0] redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_offset_q;
    wire [2:0] redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_rdcnt_a;
    wire [2:0] redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_rdcnt_b;
    logic [2:0] redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_rdcnt_o;
    wire [2:0] redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_rdcnt_q;
    reg [63:0] redist34_i_arrayidx172_covariance12_vt_join_q_5_inputreg0_q;
    reg [63:0] redist34_i_arrayidx172_covariance12_vt_join_q_5_outputreg0_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist14_sync_together81_aunroll_x_in_i_valid_2(DELAY,230)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist14_sync_together81_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist14_sync_together81_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_sync_together81_aunroll_x_in_i_valid_2_q <= redist14_sync_together81_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist15_sync_together81_aunroll_x_in_i_valid_3(DELAY,231)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist15_sync_together81_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist15_sync_together81_aunroll_x_in_i_valid_3_q <= $unsigned(redist14_sync_together81_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist16_sync_together81_aunroll_x_in_i_valid_4(DELAY,232)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_sync_together81_aunroll_x_in_i_valid_4_q <= $unsigned(redist15_sync_together81_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg8(REG,172)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist16_sync_together81_aunroll_x_in_i_valid_4_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_arrayidx172_covariance0_c_i7_01_x(CONSTANT,79)
    assign i_arrayidx172_covariance0_c_i7_01_x_q = $unsigned(7'b0000000);

    // valid_fanout_reg2(REG,166)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist15_sync_together81_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg26(REG,190)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg26_q <= $unsigned(redist15_sync_together81_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_i6_3073(CONSTANT,39)
    assign c_i6_3073_q = $unsigned(6'b011110);

    // i_arrayidx172_covariance12_vt_const_1(CONSTANT,42)
    assign i_arrayidx172_covariance12_vt_const_1_q = $unsigned(2'b00);

    // c_i6_175(CONSTANT,38)
    assign c_i6_175_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next6_covariance33(ADD,48)@4
    assign i_fpga_indvars_iv_next6_covariance33_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv5_pop43_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv5_pop43_covariance22_mux_x_q};
    assign i_fpga_indvars_iv_next6_covariance33_b = {1'b0, c_i6_175_q};
    assign i_fpga_indvars_iv_next6_covariance33_o = $unsigned(i_fpga_indvars_iv_next6_covariance33_a) + $unsigned(i_fpga_indvars_iv_next6_covariance33_b);
    assign i_fpga_indvars_iv_next6_covariance33_q = i_fpga_indvars_iv_next6_covariance33_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next6_covariance33_sel_x(BITSELECT,67)@4
    assign bgTrunc_i_fpga_indvars_iv_next6_covariance33_sel_x_b = i_fpga_indvars_iv_next6_covariance33_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance0_element_extension2_x(BITJOIN,158)@4
    assign i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance0_element_extension2_x_q = {i_arrayidx172_covariance12_vt_const_1_q, bgTrunc_i_fpga_indvars_iv_next6_covariance33_sel_x_b};

    // valid_fanout_reg28(REG,192)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg28_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg27(REG,191)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg27_q <= $unsigned(redist14_sync_together81_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance1_x(FIFODELAY,159)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance1_x_i_stall = ~ (valid_fanout_reg28_q & i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance1_x_i_valid = valid_fanout_reg27_q & redist20_i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance1_x_i_data = i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance0_element_extension2_x_q;
    assign i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance1_x (
        .i_valid(i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance0_adapt_scalar_trunc4_sel_x(BITSELECT,161)@4
    assign i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance0_i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance1_x_o_data[5:0];

    // i_llvm_fpga_pop_i6_fpga_indvars_iv5_pop43_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv5_pop43_covariance22_mux_x(MUX,107)@4
    assign i_llvm_fpga_pop_i6_fpga_indvars_iv5_pop43_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv5_pop43_covariance22_mux_x_s = redist30_i_llvm_fpga_forked_covariance_b7_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i6_fpga_indvars_iv5_pop43_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv5_pop43_covariance22_mux_x_s or i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance0_adapt_scalar_trunc4_sel_x_b or c_i6_3073_q)
    begin
        unique case (i_llvm_fpga_pop_i6_fpga_indvars_iv5_pop43_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv5_pop43_covariance22_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i6_fpga_indvars_iv5_pop43_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv5_pop43_covariance22_mux_x_q = i_llvm_fpga_push_i6_fpga_indvars_iv5_push43_covariance0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i6_fpga_indvars_iv5_pop43_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv5_pop43_covariance22_mux_x_q = c_i6_3073_q;
            default : i_llvm_fpga_pop_i6_fpga_indvars_iv5_pop43_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv5_pop43_covariance22_mux_x_q = 6'b0;
        endcase
    end

    // i_exitcond7_covariance23_cmp_nsign(LOGICAL,214)@4
    assign i_exitcond7_covariance23_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv5_pop43_covariance0_i_llvm_fpga_pop_i6_fpga_indvars_iv5_pop43_covariance22_mux_x_q[5:5]));

    // i_llvm_fpga_push_i1_notexitcond36_covariance32(BLACKBOX,59)@4
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    covariance_i_llvm_fpga_push_i1_notexitcond36_0 thei_llvm_fpga_push_i1_notexitcond36_covariance32 (
        .in_data_in(i_exitcond7_covariance23_cmp_nsign_q),
        .in_feedback_stall_in_9(i_llvm_fpga_pipeline_keep_going35_covariance6_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i1_notexitcond36_covariance32_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i1_notexitcond36_covariance32_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_covariance_b7_dummy_covariance2(BLACKBOX,54)@0
    // in in_stall_in@20000000
    covariance_i_llvm_fpga_dummy_thread_b7_dummy_covariance0 thei_llvm_fpga_dummy_thread_covariance_b7_dummy_covariance2 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_covariance_b7_dummy_covariance2_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist31_i_llvm_fpga_dummy_thread_covariance_b7_dummy_covariance2_out_dummy_out_4(DELAY,247)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist31_i_llvm_fpga_dummy_thread_covariance_b7_dummy_covariance2_out_dummy_out_4_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_covariance_b7_dummy_covariance2_out_dummy_out);
            redist31_i_llvm_fpga_dummy_thread_covariance_b7_dummy_covariance2_out_dummy_out_4_delay_1 <= redist31_i_llvm_fpga_dummy_thread_covariance_b7_dummy_covariance2_out_dummy_out_4_delay_0;
            redist31_i_llvm_fpga_dummy_thread_covariance_b7_dummy_covariance2_out_dummy_out_4_delay_2 <= redist31_i_llvm_fpga_dummy_thread_covariance_b7_dummy_covariance2_out_dummy_out_4_delay_1;
            redist31_i_llvm_fpga_dummy_thread_covariance_b7_dummy_covariance2_out_dummy_out_4_q <= redist31_i_llvm_fpga_dummy_thread_covariance_b7_dummy_covariance2_out_dummy_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pipeline_keep_going35_covariance6(BLACKBOX,58)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    covariance_i_llvm_fpga_pipeline_keep_going35_0 thei_llvm_fpga_pipeline_keep_going35_covariance6 (
        .in_data_in(redist30_i_llvm_fpga_forked_covariance_b7_forked_covariance3_out_buffer_out_4_q),
        .in_dummy_in(redist31_i_llvm_fpga_dummy_thread_covariance_b7_dummy_covariance2_out_dummy_out_4_q),
        .in_forked_in(redist30_i_llvm_fpga_forked_covariance_b7_forked_covariance3_out_buffer_out_4_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond36_covariance32_out_feedback_out_9),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond36_covariance32_out_feedback_valid_out_9),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going35_covariance6_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going35_covariance6_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going35_covariance6_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going35_covariance6_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going35_covariance6_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going35_covariance6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_covariance_b7_next_iter_isreal_covariance7(LOGICAL,46)@4
    assign i_covariance_b7_next_iter_isreal_covariance7_q = i_llvm_fpga_pop_coalesce_i1_covariance_b7_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b7_current_iter_isreal_covariance4_mux_x_q & i_llvm_fpga_pipeline_keep_going35_covariance6_out_data_out;

    // i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_element_extension2_x(BITJOIN,110)@4
    assign i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_element_extension2_x_q = {i_arrayidx172_covariance0_c_i7_01_x_q, i_covariance_b7_next_iter_isreal_covariance7_q};

    // i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_inv_pred_x(LOGICAL,112)@1
    assign i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg4(REG,168)@0 + 1
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

    // redist20_i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_inv_pred_x_q_2(DELAY,236)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist20_i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_inv_pred_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_inv_pred_x_q);
            redist20_i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q <= redist20_i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_inv_pred_x_q_2_delay_0;
        end
    end

    // valid_fanout_reg3(REG,167)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist14_sync_together81_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance1_x(FIFODELAY,111)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance1_x_i_stall = ~ (valid_fanout_reg4_q & i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance1_x_i_valid = valid_fanout_reg3_q & redist20_i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance1_x_i_data = i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance1_x (
        .i_valid(i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_adapt_scalar_trunc4_sel_x(BITSELECT,113)@4
    assign i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance1_x_o_data[0:0];

    // i_llvm_fpga_forked_covariance_b7_forked_covariance3(BLACKBOX,55)@0
    // in in_stall_in@20000000
    covariance_i_llvm_fpga_forked_b7_forked_covariance0 thei_llvm_fpga_forked_covariance_b7_forked_covariance3 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_covariance_b7_forked_covariance3_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist30_i_llvm_fpga_forked_covariance_b7_forked_covariance3_out_buffer_out_4(DELAY,246)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist30_i_llvm_fpga_forked_covariance_b7_forked_covariance3_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_covariance_b7_forked_covariance3_out_buffer_out);
            redist30_i_llvm_fpga_forked_covariance_b7_forked_covariance3_out_buffer_out_4_delay_1 <= redist30_i_llvm_fpga_forked_covariance_b7_forked_covariance3_out_buffer_out_4_delay_0;
            redist30_i_llvm_fpga_forked_covariance_b7_forked_covariance3_out_buffer_out_4_delay_2 <= redist30_i_llvm_fpga_forked_covariance_b7_forked_covariance3_out_buffer_out_4_delay_1;
            redist30_i_llvm_fpga_forked_covariance_b7_forked_covariance3_out_buffer_out_4_q <= redist30_i_llvm_fpga_forked_covariance_b7_forked_covariance3_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pop_coalesce_i1_covariance_b7_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b7_current_iter_isreal_covariance4_mux_x(MUX,97)@4
    assign i_llvm_fpga_pop_coalesce_i1_covariance_b7_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b7_current_iter_isreal_covariance4_mux_x_s = redist30_i_llvm_fpga_forked_covariance_b7_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_coalesce_i1_covariance_b7_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b7_current_iter_isreal_covariance4_mux_x_s or i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_covariance_b7_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b7_current_iter_isreal_covariance4_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_covariance_b7_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b7_current_iter_isreal_covariance4_mux_x_q = i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_covariance_b7_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b7_current_iter_isreal_covariance4_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_covariance_b7_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b7_current_iter_isreal_covariance4_mux_x_q = 1'b0;
        endcase
    end

    // redist26_i_llvm_fpga_pop_coalesce_i1_covariance_b7_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b7_current_iter_isreal_covariance4_mux_x_q_1(DELAY,242)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist26_i_llvm_fpga_pop_coalesce_i1_covariance_b7_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b7_current_iter_isreal_covariance4_mux_x_q_1_q <= $unsigned(i_llvm_fpga_pop_coalesce_i1_covariance_b7_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b7_current_iter_isreal_covariance4_mux_x_q);
        end
    end

    // i_covariance_b7_current_iter_isspec_covariance5(LOGICAL,45)@5
    assign i_covariance_b7_current_iter_isspec_covariance5_q = redist26_i_llvm_fpga_pop_coalesce_i1_covariance_b7_current_iter_isreal_covariance0_i_llvm_fpga_pop_coalesce_i1_covariance_b7_current_iter_isreal_covariance4_mux_x_q_1_q ^ VCC_q;

    // redist3_sync_together81_aunroll_x_in_c0_eni13250_3_tpl_4(DELAY,219)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together81_aunroll_x_in_c0_eni13250_3_tpl_4_delay_0 <= $unsigned(in_c0_eni13250_3_tpl);
            redist3_sync_together81_aunroll_x_in_c0_eni13250_3_tpl_4_delay_1 <= redist3_sync_together81_aunroll_x_in_c0_eni13250_3_tpl_4_delay_0;
            redist3_sync_together81_aunroll_x_in_c0_eni13250_3_tpl_4_delay_2 <= redist3_sync_together81_aunroll_x_in_c0_eni13250_3_tpl_4_delay_1;
            redist3_sync_together81_aunroll_x_in_c0_eni13250_3_tpl_4_q <= redist3_sync_together81_aunroll_x_in_c0_eni13250_3_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance0_element_extension2_x(BITJOIN,122)@4
    assign i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance0_element_extension2_x_q = {i_arrayidx172_covariance0_c_i7_01_x_q, i_llvm_fpga_pop_i1_memdep_phi1_pop1660_pop46_covariance0_i_llvm_fpga_pop_i1_memdep_phi1_pop1660_pop46_covariance13_mux_x_q};

    // valid_fanout_reg23(REG,187)@0 + 1
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

    // valid_fanout_reg22(REG,186)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist14_sync_together81_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance1_x(FIFODELAY,123)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance1_x_i_stall = ~ (valid_fanout_reg23_q & i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance1_x_i_valid = valid_fanout_reg22_q & redist20_i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance1_x_i_data = i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance1_x (
        .i_valid(i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance0_adapt_scalar_trunc4_sel_x(BITSELECT,125)@4
    assign i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance0_i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_memdep_phi1_pop1660_pop46_covariance0_i_llvm_fpga_pop_i1_memdep_phi1_pop1660_pop46_covariance13_mux_x(MUX,99)@4
    assign i_llvm_fpga_pop_i1_memdep_phi1_pop1660_pop46_covariance0_i_llvm_fpga_pop_i1_memdep_phi1_pop1660_pop46_covariance13_mux_x_s = redist30_i_llvm_fpga_forked_covariance_b7_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i1_memdep_phi1_pop1660_pop46_covariance0_i_llvm_fpga_pop_i1_memdep_phi1_pop1660_pop46_covariance13_mux_x_s or i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance0_adapt_scalar_trunc4_sel_x_b or redist3_sync_together81_aunroll_x_in_c0_eni13250_3_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i1_memdep_phi1_pop1660_pop46_covariance0_i_llvm_fpga_pop_i1_memdep_phi1_pop1660_pop46_covariance13_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_memdep_phi1_pop1660_pop46_covariance0_i_llvm_fpga_pop_i1_memdep_phi1_pop1660_pop46_covariance13_mux_x_q = i_llvm_fpga_push_i1_memdep_phi1_pop1660_push46_covariance0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_memdep_phi1_pop1660_pop46_covariance0_i_llvm_fpga_pop_i1_memdep_phi1_pop1660_pop46_covariance13_mux_x_q = redist3_sync_together81_aunroll_x_in_c0_eni13250_3_tpl_4_q;
            default : i_llvm_fpga_pop_i1_memdep_phi1_pop1660_pop46_covariance0_i_llvm_fpga_pop_i1_memdep_phi1_pop1660_pop46_covariance13_mux_x_q = 1'b0;
        endcase
    end

    // redist24_i_llvm_fpga_pop_i1_memdep_phi1_pop1660_pop46_covariance0_i_llvm_fpga_pop_i1_memdep_phi1_pop1660_pop46_covariance13_mux_x_q_1(DELAY,240)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist24_i_llvm_fpga_pop_i1_memdep_phi1_pop1660_pop46_covariance0_i_llvm_fpga_pop_i1_memdep_phi1_pop1660_pop46_covariance13_mux_x_q_1_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi1_pop1660_pop46_covariance0_i_llvm_fpga_pop_i1_memdep_phi1_pop1660_pop46_covariance13_mux_x_q);
        end
    end

    // c_covariance_data_local_pmem(CONSTANT,5)
    assign c_covariance_data_local_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx172_covariance0_upper_bits_x_merged_bit_select(BITSELECT,215)@4
    assign i_arrayidx172_covariance0_upper_bits_x_merged_bit_select_b = c_covariance_data_local_pmem_q[63:12];
    assign i_arrayidx172_covariance0_upper_bits_x_merged_bit_select_c = c_covariance_data_local_pmem_q[11:0];

    // redist0_i_arrayidx172_covariance0_upper_bits_x_merged_bit_select_b_1(DELAY,216)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_arrayidx172_covariance0_upper_bits_x_merged_bit_select_b_1_q <= $unsigned(i_arrayidx172_covariance0_upper_bits_x_merged_bit_select_b);
        end
    end

    // redist2_sync_together81_aunroll_x_in_c0_eni13250_2_tpl_4_inputreg0(DELAY,251)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together81_aunroll_x_in_c0_eni13250_2_tpl_4_inputreg0_q <= $unsigned(in_c0_eni13250_2_tpl);
        end
    end

    // redist2_sync_together81_aunroll_x_in_c0_eni13250_2_tpl_4(DELAY,218)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together81_aunroll_x_in_c0_eni13250_2_tpl_4_delay_0 <= $unsigned(redist2_sync_together81_aunroll_x_in_c0_eni13250_2_tpl_4_inputreg0_q);
            redist2_sync_together81_aunroll_x_in_c0_eni13250_2_tpl_4_delay_1 <= redist2_sync_together81_aunroll_x_in_c0_eni13250_2_tpl_4_delay_0;
            redist2_sync_together81_aunroll_x_in_c0_eni13250_2_tpl_4_q <= redist2_sync_together81_aunroll_x_in_c0_eni13250_2_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg15(REG,179)@0 + 1
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

    // valid_fanout_reg14(REG,178)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist14_sync_together81_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i64_idxprom780_push52_covariance0_i_llvm_fpga_push_i64_idxprom780_push52_covariance1_x(FIFODELAY,153)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i64_idxprom780_push52_covariance0_i_llvm_fpga_push_i64_idxprom780_push52_covariance1_x_i_stall = ~ (valid_fanout_reg15_q & i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i64_idxprom780_push52_covariance0_i_llvm_fpga_push_i64_idxprom780_push52_covariance1_x_i_valid = valid_fanout_reg14_q & redist20_i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i64_idxprom780_push52_covariance0_i_llvm_fpga_push_i64_idxprom780_push52_covariance1_x_i_data = i_llvm_fpga_pop_i64_idxprom780_pop52_covariance0_i_llvm_fpga_pop_i64_idxprom780_pop52_covariance11_mux_x_q;
    assign i_llvm_fpga_push_i64_idxprom780_push52_covariance0_i_llvm_fpga_push_i64_idxprom780_push52_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_idxprom780_push52_covariance0_i_llvm_fpga_push_i64_idxprom780_push52_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i64_idxprom780_push52_covariance0_i_llvm_fpga_push_i64_idxprom780_push52_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_idxprom780_push52_covariance0_i_llvm_fpga_push_i64_idxprom780_push52_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i64_idxprom780_push52_covariance0_i_llvm_fpga_push_i64_idxprom780_push52_covariance1_x (
        .i_valid(i_llvm_fpga_push_i64_idxprom780_push52_covariance0_i_llvm_fpga_push_i64_idxprom780_push52_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_idxprom780_push52_covariance0_i_llvm_fpga_push_i64_idxprom780_push52_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i64_idxprom780_pop52_covariance0_i_llvm_fpga_pop_i64_idxprom780_pop52_covariance11_mux_x_q),
        .o_data(i_llvm_fpga_push_i64_idxprom780_push52_covariance0_i_llvm_fpga_push_i64_idxprom780_push52_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_idxprom780_pop52_covariance0_i_llvm_fpga_pop_i64_idxprom780_pop52_covariance11_mux_x(MUX,106)@4
    assign i_llvm_fpga_pop_i64_idxprom780_pop52_covariance0_i_llvm_fpga_pop_i64_idxprom780_pop52_covariance11_mux_x_s = redist30_i_llvm_fpga_forked_covariance_b7_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i64_idxprom780_pop52_covariance0_i_llvm_fpga_pop_i64_idxprom780_pop52_covariance11_mux_x_s or i_llvm_fpga_push_i64_idxprom780_push52_covariance0_i_llvm_fpga_push_i64_idxprom780_push52_covariance1_x_o_data or redist2_sync_together81_aunroll_x_in_c0_eni13250_2_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i64_idxprom780_pop52_covariance0_i_llvm_fpga_pop_i64_idxprom780_pop52_covariance11_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_idxprom780_pop52_covariance0_i_llvm_fpga_pop_i64_idxprom780_pop52_covariance11_mux_x_q = i_llvm_fpga_push_i64_idxprom780_push52_covariance0_i_llvm_fpga_push_i64_idxprom780_push52_covariance1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_idxprom780_pop52_covariance0_i_llvm_fpga_pop_i64_idxprom780_pop52_covariance11_mux_x_q = redist2_sync_together81_aunroll_x_in_c0_eni13250_2_tpl_4_q;
            default : i_llvm_fpga_pop_i64_idxprom780_pop52_covariance0_i_llvm_fpga_pop_i64_idxprom780_pop52_covariance11_mux_x_q = 64'b0;
        endcase
    end

    // i_arrayidx172_covariance0_dupName_3_trunc_sel_x(BITSELECT,94)@4
    assign i_arrayidx172_covariance0_dupName_3_trunc_sel_x_b = i_llvm_fpga_pop_i64_idxprom780_pop52_covariance0_i_llvm_fpga_pop_i64_idxprom780_pop52_covariance11_mux_x_q[11:0];

    // i_arrayidx172_covariance0_dupName_0_narrow_x(BITSELECT,85)@4
    assign i_arrayidx172_covariance0_dupName_0_narrow_x_b = i_arrayidx172_covariance0_dupName_3_trunc_sel_x_b[9:0];

    // redist28_i_arrayidx172_covariance0_dupName_0_narrow_x_b_1(DELAY,244)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist28_i_arrayidx172_covariance0_dupName_0_narrow_x_b_1_q <= $unsigned(i_arrayidx172_covariance0_dupName_0_narrow_x_b);
        end
    end

    // i_arrayidx172_covariance0_dupName_0_shift_join_x(BITJOIN,86)@5
    assign i_arrayidx172_covariance0_dupName_0_shift_join_x_q = {redist28_i_arrayidx172_covariance0_dupName_0_narrow_x_b_1_q, i_arrayidx172_covariance12_vt_const_1_q};

    // c_i32_071(CONSTANT,36)
    assign c_i32_071_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_172(CONSTANT,37)
    assign c_i32_172_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc19_covariance21(ADD,53)@4
    assign i_inc19_covariance21_a = {1'b0, i_llvm_fpga_pop_i32_i9_038_pop44_covariance0_i_llvm_fpga_pop_i32_i9_038_pop44_covariance9_mux_x_q};
    assign i_inc19_covariance21_b = {1'b0, c_i32_172_q};
    assign i_inc19_covariance21_o = $unsigned(i_inc19_covariance21_a) + $unsigned(i_inc19_covariance21_b);
    assign i_inc19_covariance21_q = i_inc19_covariance21_o[32:0];

    // bgTrunc_i_inc19_covariance21_sel_x(BITSELECT,68)@4
    assign bgTrunc_i_inc19_covariance21_sel_x_b = i_inc19_covariance21_q[31:0];

    // valid_fanout_reg25(REG,189)@0 + 1
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

    // valid_fanout_reg24(REG,188)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(redist14_sync_together81_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_i9_038_push44_covariance0_i_llvm_fpga_push_i32_i9_038_push44_covariance1_x(FIFODELAY,144)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_i9_038_push44_covariance0_i_llvm_fpga_push_i32_i9_038_push44_covariance1_x_i_stall = ~ (valid_fanout_reg25_q & i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_i9_038_push44_covariance0_i_llvm_fpga_push_i32_i9_038_push44_covariance1_x_i_valid = valid_fanout_reg24_q & redist20_i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_i9_038_push44_covariance0_i_llvm_fpga_push_i32_i9_038_push44_covariance1_x_i_data = bgTrunc_i_inc19_covariance21_sel_x_b;
    assign i_llvm_fpga_push_i32_i9_038_push44_covariance0_i_llvm_fpga_push_i32_i9_038_push44_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_i9_038_push44_covariance0_i_llvm_fpga_push_i32_i9_038_push44_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_i9_038_push44_covariance0_i_llvm_fpga_push_i32_i9_038_push44_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_i9_038_push44_covariance0_i_llvm_fpga_push_i32_i9_038_push44_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_i9_038_push44_covariance0_i_llvm_fpga_push_i32_i9_038_push44_covariance1_x (
        .i_valid(i_llvm_fpga_push_i32_i9_038_push44_covariance0_i_llvm_fpga_push_i32_i9_038_push44_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_i9_038_push44_covariance0_i_llvm_fpga_push_i32_i9_038_push44_covariance1_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_inc19_covariance21_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_i9_038_push44_covariance0_i_llvm_fpga_push_i32_i9_038_push44_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i9_038_pop44_covariance0_i_llvm_fpga_pop_i32_i9_038_pop44_covariance9_mux_x(MUX,103)@4
    assign i_llvm_fpga_pop_i32_i9_038_pop44_covariance0_i_llvm_fpga_pop_i32_i9_038_pop44_covariance9_mux_x_s = redist30_i_llvm_fpga_forked_covariance_b7_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_i9_038_pop44_covariance0_i_llvm_fpga_pop_i32_i9_038_pop44_covariance9_mux_x_s or i_llvm_fpga_push_i32_i9_038_push44_covariance0_i_llvm_fpga_push_i32_i9_038_push44_covariance1_x_o_data or c_i32_071_q)
    begin
        unique case (i_llvm_fpga_pop_i32_i9_038_pop44_covariance0_i_llvm_fpga_pop_i32_i9_038_pop44_covariance9_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_i9_038_pop44_covariance0_i_llvm_fpga_pop_i32_i9_038_pop44_covariance9_mux_x_q = i_llvm_fpga_push_i32_i9_038_push44_covariance0_i_llvm_fpga_push_i32_i9_038_push44_covariance1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_i9_038_pop44_covariance0_i_llvm_fpga_pop_i32_i9_038_pop44_covariance9_mux_x_q = c_i32_071_q;
            default : i_llvm_fpga_pop_i32_i9_038_pop44_covariance0_i_llvm_fpga_pop_i32_i9_038_pop44_covariance9_mux_x_q = 32'b0;
        endcase
    end

    // i_idxprom14_covariance10_sel_x(BITSELECT,96)@4
    assign i_idxprom14_covariance10_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i9_038_pop44_covariance0_i_llvm_fpga_pop_i32_i9_038_pop44_covariance9_mux_x_q[31:0]};

    // i_idxprom14_covariance10_vt_select_31(BITSELECT,52)@4
    assign i_idxprom14_covariance10_vt_select_31_b = i_idxprom14_covariance10_sel_x_b[31:0];

    // i_idxprom14_covariance10_vt_join(BITJOIN,51)@4
    assign i_idxprom14_covariance10_vt_join_q = {c_i32_071_q, i_idxprom14_covariance10_vt_select_31_b};

    // i_arrayidx172_covariance0_dupName_0_trunc_sel_x(BITSELECT,92)@4
    assign i_arrayidx172_covariance0_dupName_0_trunc_sel_x_b = i_idxprom14_covariance10_vt_join_q[11:0];

    // i_arrayidx172_covariance0_narrow_x(BITSELECT,80)@4
    assign i_arrayidx172_covariance0_narrow_x_b = i_arrayidx172_covariance0_dupName_0_trunc_sel_x_b[4:0];

    // i_arrayidx172_covariance0_shift_join_x(BITJOIN,81)@4
    assign i_arrayidx172_covariance0_shift_join_x_q = {i_arrayidx172_covariance0_narrow_x_b, i_arrayidx172_covariance0_c_i7_01_x_q};

    // i_arrayidx172_covariance0_add_x(ADD,76)@4
    assign i_arrayidx172_covariance0_add_x_a = {1'b0, i_arrayidx172_covariance0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx172_covariance0_add_x_b = {1'b0, i_arrayidx172_covariance0_shift_join_x_q};
    assign i_arrayidx172_covariance0_add_x_o = $unsigned(i_arrayidx172_covariance0_add_x_a) + $unsigned(i_arrayidx172_covariance0_add_x_b);
    assign i_arrayidx172_covariance0_add_x_q = i_arrayidx172_covariance0_add_x_o[12:0];

    // i_arrayidx172_covariance0_dupName_2_trunc_sel_x(BITSELECT,93)@4
    assign i_arrayidx172_covariance0_dupName_2_trunc_sel_x_b = i_arrayidx172_covariance0_add_x_q[11:0];

    // redist27_i_arrayidx172_covariance0_dupName_2_trunc_sel_x_b_1(DELAY,243)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist27_i_arrayidx172_covariance0_dupName_2_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx172_covariance0_dupName_2_trunc_sel_x_b);
        end
    end

    // i_arrayidx172_covariance0_dupName_0_add_x(ADD,84)@5
    assign i_arrayidx172_covariance0_dupName_0_add_x_a = {1'b0, redist27_i_arrayidx172_covariance0_dupName_2_trunc_sel_x_b_1_q};
    assign i_arrayidx172_covariance0_dupName_0_add_x_b = {1'b0, i_arrayidx172_covariance0_dupName_0_shift_join_x_q};
    assign i_arrayidx172_covariance0_dupName_0_add_x_o = $unsigned(i_arrayidx172_covariance0_dupName_0_add_x_a) + $unsigned(i_arrayidx172_covariance0_dupName_0_add_x_b);
    assign i_arrayidx172_covariance0_dupName_0_add_x_q = i_arrayidx172_covariance0_dupName_0_add_x_o[12:0];

    // i_arrayidx172_covariance0_dupName_5_trunc_sel_x(BITSELECT,95)@5
    assign i_arrayidx172_covariance0_dupName_5_trunc_sel_x_b = i_arrayidx172_covariance0_dupName_0_add_x_q[11:0];

    // i_arrayidx172_covariance0_append_upper_bits_x(BITJOIN,77)@5
    assign i_arrayidx172_covariance0_append_upper_bits_x_q = {redist0_i_arrayidx172_covariance0_upper_bits_x_merged_bit_select_b_1_q, i_arrayidx172_covariance0_dupName_5_trunc_sel_x_b};

    // i_arrayidx172_covariance12_vt_select_63(BITSELECT,44)@5
    assign i_arrayidx172_covariance12_vt_select_63_b = i_arrayidx172_covariance0_append_upper_bits_x_q[63:2];

    // i_arrayidx172_covariance12_vt_join(BITJOIN,43)@5
    assign i_arrayidx172_covariance12_vt_join_q = {i_arrayidx172_covariance12_vt_select_63_b, i_arrayidx172_covariance12_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_covariance3_covariance14(BLACKBOX,57)@5
    // in in_i_stall@20000000
    // out out_o_readdata@10
    // out out_o_stall@9
    // out out_o_valid@10
    // out out_unnamed_covariance3_covariance_avm_address@20000000
    // out out_unnamed_covariance3_covariance_avm_burstcount@20000000
    // out out_unnamed_covariance3_covariance_avm_byteenable@20000000
    // out out_unnamed_covariance3_covariance_avm_enable@20000000
    // out out_unnamed_covariance3_covariance_avm_read@20000000
    // out out_unnamed_covariance3_covariance_avm_write@20000000
    // out out_unnamed_covariance3_covariance_avm_writedata@20000000
    covariance_i_llvm_fpga_mem_unnamed_3_covariance0 thei_llvm_fpga_mem_unnamed_covariance3_covariance14 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx172_covariance12_vt_join_q),
        .in_i_dependence(redist24_i_llvm_fpga_pop_i1_memdep_phi1_pop1660_pop46_covariance0_i_llvm_fpga_pop_i1_memdep_phi1_pop1660_pop46_covariance13_mux_x_q_1_q),
        .in_i_predicate(i_covariance_b7_current_iter_isspec_covariance5_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg8_q),
        .in_unnamed_covariance3_covariance_avm_readdata(in_unnamed_covariance3_covariance_avm_readdata),
        .in_unnamed_covariance3_covariance_avm_readdatavalid(in_unnamed_covariance3_covariance_avm_readdatavalid),
        .in_unnamed_covariance3_covariance_avm_waitrequest(in_unnamed_covariance3_covariance_avm_waitrequest),
        .in_unnamed_covariance3_covariance_avm_writeack(in_unnamed_covariance3_covariance_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_covariance3_covariance14_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_covariance3_covariance_avm_address(i_llvm_fpga_mem_unnamed_covariance3_covariance14_out_unnamed_covariance3_covariance_avm_address),
        .out_unnamed_covariance3_covariance_avm_burstcount(i_llvm_fpga_mem_unnamed_covariance3_covariance14_out_unnamed_covariance3_covariance_avm_burstcount),
        .out_unnamed_covariance3_covariance_avm_byteenable(i_llvm_fpga_mem_unnamed_covariance3_covariance14_out_unnamed_covariance3_covariance_avm_byteenable),
        .out_unnamed_covariance3_covariance_avm_enable(i_llvm_fpga_mem_unnamed_covariance3_covariance14_out_unnamed_covariance3_covariance_avm_enable),
        .out_unnamed_covariance3_covariance_avm_read(i_llvm_fpga_mem_unnamed_covariance3_covariance14_out_unnamed_covariance3_covariance_avm_read),
        .out_unnamed_covariance3_covariance_avm_write(i_llvm_fpga_mem_unnamed_covariance3_covariance14_out_unnamed_covariance3_covariance_avm_write),
        .out_unnamed_covariance3_covariance_avm_writedata(i_llvm_fpga_mem_unnamed_covariance3_covariance14_out_unnamed_covariance3_covariance_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,41)
    assign out_unnamed_covariance3_covariance_avm_address = i_llvm_fpga_mem_unnamed_covariance3_covariance14_out_unnamed_covariance3_covariance_avm_address;
    assign out_unnamed_covariance3_covariance_avm_enable = i_llvm_fpga_mem_unnamed_covariance3_covariance14_out_unnamed_covariance3_covariance_avm_enable;
    assign out_unnamed_covariance3_covariance_avm_read = i_llvm_fpga_mem_unnamed_covariance3_covariance14_out_unnamed_covariance3_covariance_avm_read;
    assign out_unnamed_covariance3_covariance_avm_write = i_llvm_fpga_mem_unnamed_covariance3_covariance14_out_unnamed_covariance3_covariance_avm_write;
    assign out_unnamed_covariance3_covariance_avm_writedata = i_llvm_fpga_mem_unnamed_covariance3_covariance14_out_unnamed_covariance3_covariance_avm_writedata;
    assign out_unnamed_covariance3_covariance_avm_byteenable = i_llvm_fpga_mem_unnamed_covariance3_covariance14_out_unnamed_covariance3_covariance_avm_byteenable;
    assign out_unnamed_covariance3_covariance_avm_burstcount = i_llvm_fpga_mem_unnamed_covariance3_covariance14_out_unnamed_covariance3_covariance_avm_burstcount;

    // regfree_osync(GPOUT,65)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going35_covariance6_out_exiting_valid_out;

    // redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_offset(CONSTANT,264)
    assign redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_offset_q = $unsigned(2'b11);

    // redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_rdcnt(ADD,265)
    assign redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_rdcnt_a = {1'b0, redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_wraddr_q};
    assign redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_rdcnt_b = {1'b0, redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_rdcnt_o <= $unsigned(redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_rdcnt_a) + $unsigned(redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_rdcnt_b);
        end
    end
    assign redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_rdcnt_q = redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_rdcnt_o[2:0];

    // redist4_sync_together81_aunroll_x_in_c0_eni13250_4_tpl_4_inputreg0(DELAY,252)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_together81_aunroll_x_in_c0_eni13250_4_tpl_4_inputreg0_q <= $unsigned(in_c0_eni13250_4_tpl);
        end
    end

    // redist4_sync_together81_aunroll_x_in_c0_eni13250_4_tpl_4(DELAY,220)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_together81_aunroll_x_in_c0_eni13250_4_tpl_4_delay_0 <= $unsigned(redist4_sync_together81_aunroll_x_in_c0_eni13250_4_tpl_4_inputreg0_q);
            redist4_sync_together81_aunroll_x_in_c0_eni13250_4_tpl_4_delay_1 <= redist4_sync_together81_aunroll_x_in_c0_eni13250_4_tpl_4_delay_0;
            redist4_sync_together81_aunroll_x_in_c0_eni13250_4_tpl_4_q <= redist4_sync_together81_aunroll_x_in_c0_eni13250_4_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg17(REG,181)@0 + 1
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

    // valid_fanout_reg16(REG,180)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist14_sync_together81_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_mul79_push51_covariance0_i_llvm_fpga_push_i32_mul79_push51_covariance1_x(FIFODELAY,150)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_mul79_push51_covariance0_i_llvm_fpga_push_i32_mul79_push51_covariance1_x_i_stall = ~ (valid_fanout_reg17_q & i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_mul79_push51_covariance0_i_llvm_fpga_push_i32_mul79_push51_covariance1_x_i_valid = valid_fanout_reg16_q & redist20_i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_mul79_push51_covariance0_i_llvm_fpga_push_i32_mul79_push51_covariance1_x_i_data = i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q;
    assign i_llvm_fpga_push_i32_mul79_push51_covariance0_i_llvm_fpga_push_i32_mul79_push51_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_mul79_push51_covariance0_i_llvm_fpga_push_i32_mul79_push51_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_mul79_push51_covariance0_i_llvm_fpga_push_i32_mul79_push51_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_mul79_push51_covariance0_i_llvm_fpga_push_i32_mul79_push51_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_mul79_push51_covariance0_i_llvm_fpga_push_i32_mul79_push51_covariance1_x (
        .i_valid(i_llvm_fpga_push_i32_mul79_push51_covariance0_i_llvm_fpga_push_i32_mul79_push51_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_mul79_push51_covariance0_i_llvm_fpga_push_i32_mul79_push51_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_mul79_push51_covariance0_i_llvm_fpga_push_i32_mul79_push51_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x(MUX,105)@4
    assign i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_s = redist30_i_llvm_fpga_forked_covariance_b7_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_s or i_llvm_fpga_push_i32_mul79_push51_covariance0_i_llvm_fpga_push_i32_mul79_push51_covariance1_x_o_data or redist4_sync_together81_aunroll_x_in_c0_eni13250_4_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q = i_llvm_fpga_push_i32_mul79_push51_covariance0_i_llvm_fpga_push_i32_mul79_push51_covariance1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q = redist4_sync_together81_aunroll_x_in_c0_eni13250_4_tpl_4_q;
            default : i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q = 32'b0;
        endcase
    end

    // redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_inputreg0(DELAY,260)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_inputreg0_q <= $unsigned(i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q);
        end
    end

    // redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_wraddr(COUNTER,263)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_wraddr_i <= $unsigned(redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_wraddr_i) + $unsigned(2'd1);
        end
    end
    assign redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_wraddr_q = redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_wraddr_i[1:0];

    // redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_mem(DUALMEM,262)
    assign redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_mem_ia = $unsigned(redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_inputreg0_q);
    assign redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_mem_aa = redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_wraddr_q;
    assign redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_mem_ab = redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_rdcnt_q[1:0];
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
    ) redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_mem_aa),
        .data_a(redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_mem_ab),
        .q_b(redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_mem_iq),
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
    assign redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_mem_q = redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_mem_iq[31:0];

    // redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_outputreg0(DELAY,261)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_outputreg0_q <= $unsigned(redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_mem_q);
        end
    end

    // i_sub_covariance16(SUB,62)@10
    assign i_sub_covariance16_a = {1'b0, i_llvm_fpga_mem_unnamed_covariance3_covariance14_out_o_readdata};
    assign i_sub_covariance16_b = {1'b0, redist21_i_llvm_fpga_pop_i32_mul79_pop51_covariance0_i_llvm_fpga_pop_i32_mul79_pop51_covariance15_mux_x_q_6_outputreg0_q};
    assign i_sub_covariance16_o = $unsigned(i_sub_covariance16_a) - $unsigned(i_sub_covariance16_b);
    assign i_sub_covariance16_q = i_sub_covariance16_o[32:0];

    // bgTrunc_i_sub_covariance16_sel_x(BITSELECT,69)@10
    assign bgTrunc_i_sub_covariance16_sel_x_b = $unsigned(i_sub_covariance16_q[31:0]);

    // redist17_sync_together81_aunroll_x_in_i_valid_9(DELAY,233)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist17_sync_together81_aunroll_x_in_i_valid_9_delay_0 <= '0;
        end
        else
        begin
            redist17_sync_together81_aunroll_x_in_i_valid_9_delay_0 <= $unsigned(redist16_sync_together81_aunroll_x_in_i_valid_4_q);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_sync_together81_aunroll_x_in_i_valid_9_delay_1 <= redist17_sync_together81_aunroll_x_in_i_valid_9_delay_0;
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist17_sync_together81_aunroll_x_in_i_valid_9_delay_2 <= '0;
        end
        else
        begin
            redist17_sync_together81_aunroll_x_in_i_valid_9_delay_2 <= redist17_sync_together81_aunroll_x_in_i_valid_9_delay_1;
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_sync_together81_aunroll_x_in_i_valid_9_delay_3 <= redist17_sync_together81_aunroll_x_in_i_valid_9_delay_2;
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist17_sync_together81_aunroll_x_in_i_valid_9_q <= '0;
        end
        else
        begin
            redist17_sync_together81_aunroll_x_in_i_valid_9_q <= redist17_sync_together81_aunroll_x_in_i_valid_9_delay_3;
        end
    end

    // valid_fanout_reg12(REG,176)@9 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist17_sync_together81_aunroll_x_in_i_valid_9_q);
        end
    end

    // redist32_i_covariance_b7_current_iter_isspec_covariance5_q_5(DELAY,248)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist32_i_covariance_b7_current_iter_isspec_covariance5_q_5_delay_0 <= $unsigned(i_covariance_b7_current_iter_isspec_covariance5_q);
            redist32_i_covariance_b7_current_iter_isspec_covariance5_q_5_delay_1 <= redist32_i_covariance_b7_current_iter_isspec_covariance5_q_5_delay_0;
            redist32_i_covariance_b7_current_iter_isspec_covariance5_q_5_delay_2 <= redist32_i_covariance_b7_current_iter_isspec_covariance5_q_5_delay_1;
            redist32_i_covariance_b7_current_iter_isspec_covariance5_q_5_delay_3 <= redist32_i_covariance_b7_current_iter_isspec_covariance5_q_5_delay_2;
            redist32_i_covariance_b7_current_iter_isspec_covariance5_q_5_q <= redist32_i_covariance_b7_current_iter_isspec_covariance5_q_5_delay_3;
        end
    end

    // redist6_sync_together81_aunroll_x_in_c0_eni13250_6_tpl_4(DELAY,222)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_together81_aunroll_x_in_c0_eni13250_6_tpl_4_delay_0 <= $unsigned(in_c0_eni13250_6_tpl);
            redist6_sync_together81_aunroll_x_in_c0_eni13250_6_tpl_4_delay_1 <= redist6_sync_together81_aunroll_x_in_c0_eni13250_6_tpl_4_delay_0;
            redist6_sync_together81_aunroll_x_in_c0_eni13250_6_tpl_4_delay_2 <= redist6_sync_together81_aunroll_x_in_c0_eni13250_6_tpl_4_delay_1;
            redist6_sync_together81_aunroll_x_in_c0_eni13250_6_tpl_4_q <= redist6_sync_together81_aunroll_x_in_c0_eni13250_6_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance0_element_extension2_x(BITJOIN,134)@4
    assign i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance0_element_extension2_x_q = {i_arrayidx172_covariance0_c_i7_01_x_q, i_llvm_fpga_pop_i1_memdep_phi4_pop1866_pop48_covariance0_i_llvm_fpga_pop_i1_memdep_phi4_pop1866_pop48_covariance18_mux_x_q};

    // valid_fanout_reg19(REG,183)@0 + 1
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

    // valid_fanout_reg18(REG,182)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist14_sync_together81_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance1_x(FIFODELAY,135)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance1_x_i_stall = ~ (valid_fanout_reg19_q & i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance1_x_i_valid = valid_fanout_reg18_q & redist20_i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance1_x_i_data = i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance1_x (
        .i_valid(i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance0_adapt_scalar_trunc4_sel_x(BITSELECT,137)@4
    assign i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance0_i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_memdep_phi4_pop1866_pop48_covariance0_i_llvm_fpga_pop_i1_memdep_phi4_pop1866_pop48_covariance18_mux_x(MUX,101)@4
    assign i_llvm_fpga_pop_i1_memdep_phi4_pop1866_pop48_covariance0_i_llvm_fpga_pop_i1_memdep_phi4_pop1866_pop48_covariance18_mux_x_s = redist30_i_llvm_fpga_forked_covariance_b7_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i1_memdep_phi4_pop1866_pop48_covariance0_i_llvm_fpga_pop_i1_memdep_phi4_pop1866_pop48_covariance18_mux_x_s or i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance0_adapt_scalar_trunc4_sel_x_b or redist6_sync_together81_aunroll_x_in_c0_eni13250_6_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i1_memdep_phi4_pop1866_pop48_covariance0_i_llvm_fpga_pop_i1_memdep_phi4_pop1866_pop48_covariance18_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_memdep_phi4_pop1866_pop48_covariance0_i_llvm_fpga_pop_i1_memdep_phi4_pop1866_pop48_covariance18_mux_x_q = i_llvm_fpga_push_i1_memdep_phi4_pop1866_push48_covariance0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_memdep_phi4_pop1866_pop48_covariance0_i_llvm_fpga_pop_i1_memdep_phi4_pop1866_pop48_covariance18_mux_x_q = redist6_sync_together81_aunroll_x_in_c0_eni13250_6_tpl_4_q;
            default : i_llvm_fpga_pop_i1_memdep_phi4_pop1866_pop48_covariance0_i_llvm_fpga_pop_i1_memdep_phi4_pop1866_pop48_covariance18_mux_x_q = 1'b0;
        endcase
    end

    // redist5_sync_together81_aunroll_x_in_c0_eni13250_5_tpl_4(DELAY,221)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_together81_aunroll_x_in_c0_eni13250_5_tpl_4_delay_0 <= $unsigned(in_c0_eni13250_5_tpl);
            redist5_sync_together81_aunroll_x_in_c0_eni13250_5_tpl_4_delay_1 <= redist5_sync_together81_aunroll_x_in_c0_eni13250_5_tpl_4_delay_0;
            redist5_sync_together81_aunroll_x_in_c0_eni13250_5_tpl_4_delay_2 <= redist5_sync_together81_aunroll_x_in_c0_eni13250_5_tpl_4_delay_1;
            redist5_sync_together81_aunroll_x_in_c0_eni13250_5_tpl_4_q <= redist5_sync_together81_aunroll_x_in_c0_eni13250_5_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance0_element_extension2_x(BITJOIN,128)@4
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance0_element_extension2_x_q = {i_arrayidx172_covariance0_c_i7_01_x_q, i_llvm_fpga_pop_i1_memdep_phi2_pop1763_pop47_covariance0_i_llvm_fpga_pop_i1_memdep_phi2_pop1763_pop47_covariance17_mux_x_q};

    // valid_fanout_reg21(REG,185)@0 + 1
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

    // valid_fanout_reg20(REG,184)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist14_sync_together81_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance1_x(FIFODELAY,129)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance1_x_i_stall = ~ (valid_fanout_reg21_q & i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance1_x_i_valid = valid_fanout_reg20_q & redist20_i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance1_x_i_data = i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance1_x (
        .i_valid(i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance0_adapt_scalar_trunc4_sel_x(BITSELECT,131)@4
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance0_i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_memdep_phi2_pop1763_pop47_covariance0_i_llvm_fpga_pop_i1_memdep_phi2_pop1763_pop47_covariance17_mux_x(MUX,100)@4
    assign i_llvm_fpga_pop_i1_memdep_phi2_pop1763_pop47_covariance0_i_llvm_fpga_pop_i1_memdep_phi2_pop1763_pop47_covariance17_mux_x_s = redist30_i_llvm_fpga_forked_covariance_b7_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i1_memdep_phi2_pop1763_pop47_covariance0_i_llvm_fpga_pop_i1_memdep_phi2_pop1763_pop47_covariance17_mux_x_s or i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance0_adapt_scalar_trunc4_sel_x_b or redist5_sync_together81_aunroll_x_in_c0_eni13250_5_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i1_memdep_phi2_pop1763_pop47_covariance0_i_llvm_fpga_pop_i1_memdep_phi2_pop1763_pop47_covariance17_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_memdep_phi2_pop1763_pop47_covariance0_i_llvm_fpga_pop_i1_memdep_phi2_pop1763_pop47_covariance17_mux_x_q = i_llvm_fpga_push_i1_memdep_phi2_pop1763_push47_covariance0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_memdep_phi2_pop1763_pop47_covariance0_i_llvm_fpga_pop_i1_memdep_phi2_pop1763_pop47_covariance17_mux_x_q = redist5_sync_together81_aunroll_x_in_c0_eni13250_5_tpl_4_q;
            default : i_llvm_fpga_pop_i1_memdep_phi2_pop1763_pop47_covariance0_i_llvm_fpga_pop_i1_memdep_phi2_pop1763_pop47_covariance17_mux_x_q = 1'b0;
        endcase
    end

    // i_memdep_phi4_or_covariance19(LOGICAL,60)@4 + 1
    assign i_memdep_phi4_or_covariance19_qi = i_llvm_fpga_pop_i1_memdep_phi2_pop1763_pop47_covariance0_i_llvm_fpga_pop_i1_memdep_phi2_pop1763_pop47_covariance17_mux_x_q | i_llvm_fpga_pop_i1_memdep_phi4_pop1866_pop48_covariance0_i_llvm_fpga_pop_i1_memdep_phi4_pop1866_pop48_covariance18_mux_x_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_memdep_phi4_or_covariance19_delay ( .xin(i_memdep_phi4_or_covariance19_qi), .xout(i_memdep_phi4_or_covariance19_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist29_i_memdep_phi4_or_covariance19_q_6(DELAY,245)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist29_i_memdep_phi4_or_covariance19_q_6_delay_0 <= $unsigned(i_memdep_phi4_or_covariance19_q);
            redist29_i_memdep_phi4_or_covariance19_q_6_delay_1 <= redist29_i_memdep_phi4_or_covariance19_q_6_delay_0;
            redist29_i_memdep_phi4_or_covariance19_q_6_delay_2 <= redist29_i_memdep_phi4_or_covariance19_q_6_delay_1;
            redist29_i_memdep_phi4_or_covariance19_q_6_delay_3 <= redist29_i_memdep_phi4_or_covariance19_q_6_delay_2;
            redist29_i_memdep_phi4_or_covariance19_q_6_q <= redist29_i_memdep_phi4_or_covariance19_q_6_delay_3;
        end
    end

    // redist34_i_arrayidx172_covariance12_vt_join_q_5_inputreg0(DELAY,272)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist34_i_arrayidx172_covariance12_vt_join_q_5_inputreg0_q <= $unsigned(i_arrayidx172_covariance12_vt_join_q);
        end
    end

    // redist34_i_arrayidx172_covariance12_vt_join_q_5(DELAY,250)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist34_i_arrayidx172_covariance12_vt_join_q_5_delay_0 <= $unsigned(redist34_i_arrayidx172_covariance12_vt_join_q_5_inputreg0_q);
            redist34_i_arrayidx172_covariance12_vt_join_q_5_delay_1 <= redist34_i_arrayidx172_covariance12_vt_join_q_5_delay_0;
            redist34_i_arrayidx172_covariance12_vt_join_q_5_q <= redist34_i_arrayidx172_covariance12_vt_join_q_5_delay_1;
        end
    end

    // redist34_i_arrayidx172_covariance12_vt_join_q_5_outputreg0(DELAY,273)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist34_i_arrayidx172_covariance12_vt_join_q_5_outputreg0_q <= $unsigned(redist34_i_arrayidx172_covariance12_vt_join_q_5_q);
        end
    end

    // i_llvm_fpga_mem_memdep_covariance20(BLACKBOX,56)@10
    // out out_memdep_covariance_avm_address@20000000
    // out out_memdep_covariance_avm_burstcount@20000000
    // out out_memdep_covariance_avm_byteenable@20000000
    // out out_memdep_covariance_avm_enable@20000000
    // out out_memdep_covariance_avm_read@20000000
    // out out_memdep_covariance_avm_write@20000000
    // out out_memdep_covariance_avm_writedata@20000000
    // out out_o_stall@11
    // out out_o_valid@11
    // out out_o_writeack@11
    covariance_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_covariance20 (
        .in_flush(in_flush),
        .in_i_address(redist34_i_arrayidx172_covariance12_vt_join_q_5_outputreg0_q),
        .in_i_dependence(redist29_i_memdep_phi4_or_covariance19_q_6_q),
        .in_i_predicate(redist32_i_covariance_b7_current_iter_isspec_covariance5_q_5_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg12_q),
        .in_i_writedata(bgTrunc_i_sub_covariance16_sel_x_b),
        .in_memdep_covariance_avm_readdata(in_memdep_covariance_avm_readdata),
        .in_memdep_covariance_avm_readdatavalid(in_memdep_covariance_avm_readdatavalid),
        .in_memdep_covariance_avm_waitrequest(in_memdep_covariance_avm_waitrequest),
        .in_memdep_covariance_avm_writeack(in_memdep_covariance_avm_writeack),
        .out_memdep_covariance_avm_address(i_llvm_fpga_mem_memdep_covariance20_out_memdep_covariance_avm_address),
        .out_memdep_covariance_avm_burstcount(i_llvm_fpga_mem_memdep_covariance20_out_memdep_covariance_avm_burstcount),
        .out_memdep_covariance_avm_byteenable(i_llvm_fpga_mem_memdep_covariance20_out_memdep_covariance_avm_byteenable),
        .out_memdep_covariance_avm_enable(i_llvm_fpga_mem_memdep_covariance20_out_memdep_covariance_avm_enable),
        .out_memdep_covariance_avm_read(i_llvm_fpga_mem_memdep_covariance20_out_memdep_covariance_avm_read),
        .out_memdep_covariance_avm_write(i_llvm_fpga_mem_memdep_covariance20_out_memdep_covariance_avm_write),
        .out_memdep_covariance_avm_writedata(i_llvm_fpga_mem_memdep_covariance20_out_memdep_covariance_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(i_llvm_fpga_mem_memdep_covariance20_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,72)
    assign out_memdep_covariance_avm_address = i_llvm_fpga_mem_memdep_covariance20_out_memdep_covariance_avm_address;
    assign out_memdep_covariance_avm_enable = i_llvm_fpga_mem_memdep_covariance20_out_memdep_covariance_avm_enable;
    assign out_memdep_covariance_avm_read = i_llvm_fpga_mem_memdep_covariance20_out_memdep_covariance_avm_read;
    assign out_memdep_covariance_avm_write = i_llvm_fpga_mem_memdep_covariance20_out_memdep_covariance_avm_write;
    assign out_memdep_covariance_avm_writedata = i_llvm_fpga_mem_memdep_covariance20_out_memdep_covariance_avm_writedata;
    assign out_memdep_covariance_avm_byteenable = i_llvm_fpga_mem_memdep_covariance20_out_memdep_covariance_avm_byteenable;
    assign out_memdep_covariance_avm_burstcount = i_llvm_fpga_mem_memdep_covariance20_out_memdep_covariance_avm_burstcount;

    // dupName_0_regfree_osync_x(GPOUT,73)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going35_covariance6_out_pipeline_dummy_out;

    // dupName_1_regfree_osync_x(GPOUT,74)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going35_covariance6_out_pipeline_forked_out;

    // dupName_2_regfree_osync_x(GPOUT,75)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going35_covariance6_out_pipeline_valid_out;

    // redist18_sync_together81_aunroll_x_in_i_valid_10(DELAY,234)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist18_sync_together81_aunroll_x_in_i_valid_10_q <= $unsigned(redist17_sync_together81_aunroll_x_in_i_valid_9_q);
        end
    end

    // redist19_sync_together81_aunroll_x_in_i_valid_11(DELAY,235)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist19_sync_together81_aunroll_x_in_i_valid_11_q <= $unsigned(redist18_sync_together81_aunroll_x_in_i_valid_10_q);
        end
    end

    // valid_fanout_reg0(REG,164)@10 + 1
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist18_sync_together81_aunroll_x_in_i_valid_10_q);
        end
    end

    // redist33_i_covariance_b7_current_iter_isspec_covariance5_q_6(DELAY,249)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist33_i_covariance_b7_current_iter_isspec_covariance5_q_6_q <= $unsigned(redist32_i_covariance_b7_current_iter_isspec_covariance5_q_5_q);
        end
    end

    // redist13_sync_together81_aunroll_x_in_c0_eni13250_13_tpl_11(DELAY,229)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist13_sync_together81_aunroll_x_in_c0_eni13250_13_tpl_11 ( .xin(in_c0_eni13250_13_tpl), .xout(redist13_sync_together81_aunroll_x_in_c0_eni13250_13_tpl_11_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist12_sync_together81_aunroll_x_in_c0_eni13250_12_tpl_11(DELAY,228)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist12_sync_together81_aunroll_x_in_c0_eni13250_12_tpl_11 ( .xin(in_c0_eni13250_12_tpl), .xout(redist12_sync_together81_aunroll_x_in_c0_eni13250_12_tpl_11_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist11_sync_together81_aunroll_x_in_c0_eni13250_11_tpl_11(DELAY,227)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist11_sync_together81_aunroll_x_in_c0_eni13250_11_tpl_11 ( .xin(in_c0_eni13250_11_tpl), .xout(redist11_sync_together81_aunroll_x_in_c0_eni13250_11_tpl_11_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_offset(CONSTANT,258)
    assign redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_offset_q = $unsigned(3'b010);

    // redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_rdcnt(ADD,259)
    assign redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_rdcnt_a = {1'b0, redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_wraddr_q};
    assign redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_rdcnt_b = {1'b0, redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_rdcnt_o <= $unsigned(redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_rdcnt_a) + $unsigned(redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_rdcnt_b);
        end
    end
    assign redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_rdcnt_q = redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_rdcnt_o[3:0];

    // redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_inputreg0(DELAY,254)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_inputreg0_q <= $unsigned(in_c0_eni13250_10_tpl);
        end
    end

    // redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_wraddr(COUNTER,257)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_wraddr_i <= $unsigned(redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_wraddr_i) + $unsigned(3'd1);
        end
    end
    assign redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_wraddr_q = redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_wraddr_i[2:0];

    // redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_mem(DUALMEM,256)
    assign redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_mem_ia = $unsigned(redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_inputreg0_q);
    assign redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_mem_aa = redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_wraddr_q;
    assign redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_mem_ab = redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_rdcnt_q[2:0];
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
        .outdata_reg_b("CLOCK0"),
        .outdata_sclr_b("NONE"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Stratix 10")
    ) redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_mem_aa),
        .data_a(redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_mem_ab),
        .q_b(redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_mem_iq),
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
    assign redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_mem_q = redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_mem_iq[31:0];

    // redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_outputreg0(DELAY,255)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_outputreg0_q <= $unsigned(redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_mem_q);
        end
    end

    // redist9_sync_together81_aunroll_x_in_c0_eni13250_9_tpl_4(DELAY,225)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_sync_together81_aunroll_x_in_c0_eni13250_9_tpl_4_delay_0 <= $unsigned(in_c0_eni13250_9_tpl);
            redist9_sync_together81_aunroll_x_in_c0_eni13250_9_tpl_4_delay_1 <= redist9_sync_together81_aunroll_x_in_c0_eni13250_9_tpl_4_delay_0;
            redist9_sync_together81_aunroll_x_in_c0_eni13250_9_tpl_4_delay_2 <= redist9_sync_together81_aunroll_x_in_c0_eni13250_9_tpl_4_delay_1;
            redist9_sync_together81_aunroll_x_in_c0_eni13250_9_tpl_4_q <= redist9_sync_together81_aunroll_x_in_c0_eni13250_9_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_notcmp4375_push50_covariance0_element_extension2_x(BITJOIN,140)@4
    assign i_llvm_fpga_push_i1_notcmp4375_push50_covariance0_element_extension2_x_q = {i_arrayidx172_covariance0_c_i7_01_x_q, i_llvm_fpga_pop_i1_notcmp4375_pop50_covariance0_i_llvm_fpga_pop_i1_notcmp4375_pop50_covariance39_mux_x_q};

    // valid_fanout_reg37(REG,201)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg37_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg36(REG,200)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg36_q <= $unsigned(redist14_sync_together81_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp4375_push50_covariance0_i_llvm_fpga_push_i1_notcmp4375_push50_covariance1_x(FIFODELAY,141)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_notcmp4375_push50_covariance0_i_llvm_fpga_push_i1_notcmp4375_push50_covariance1_x_i_stall = ~ (valid_fanout_reg37_q & i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_notcmp4375_push50_covariance0_i_llvm_fpga_push_i1_notcmp4375_push50_covariance1_x_i_valid = valid_fanout_reg36_q & redist20_i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_notcmp4375_push50_covariance0_i_llvm_fpga_push_i1_notcmp4375_push50_covariance1_x_i_data = i_llvm_fpga_push_i1_notcmp4375_push50_covariance0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_notcmp4375_push50_covariance0_i_llvm_fpga_push_i1_notcmp4375_push50_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_notcmp4375_push50_covariance0_i_llvm_fpga_push_i1_notcmp4375_push50_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_notcmp4375_push50_covariance0_i_llvm_fpga_push_i1_notcmp4375_push50_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_notcmp4375_push50_covariance0_i_llvm_fpga_push_i1_notcmp4375_push50_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_notcmp4375_push50_covariance0_i_llvm_fpga_push_i1_notcmp4375_push50_covariance1_x (
        .i_valid(i_llvm_fpga_push_i1_notcmp4375_push50_covariance0_i_llvm_fpga_push_i1_notcmp4375_push50_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_notcmp4375_push50_covariance0_i_llvm_fpga_push_i1_notcmp4375_push50_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_notcmp4375_push50_covariance0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_notcmp4375_push50_covariance0_i_llvm_fpga_push_i1_notcmp4375_push50_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_notcmp4375_push50_covariance0_adapt_scalar_trunc4_sel_x(BITSELECT,143)@4
    assign i_llvm_fpga_push_i1_notcmp4375_push50_covariance0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_notcmp4375_push50_covariance0_i_llvm_fpga_push_i1_notcmp4375_push50_covariance1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_notcmp4375_pop50_covariance0_i_llvm_fpga_pop_i1_notcmp4375_pop50_covariance39_mux_x(MUX,102)@4
    assign i_llvm_fpga_pop_i1_notcmp4375_pop50_covariance0_i_llvm_fpga_pop_i1_notcmp4375_pop50_covariance39_mux_x_s = redist30_i_llvm_fpga_forked_covariance_b7_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i1_notcmp4375_pop50_covariance0_i_llvm_fpga_pop_i1_notcmp4375_pop50_covariance39_mux_x_s or i_llvm_fpga_push_i1_notcmp4375_push50_covariance0_adapt_scalar_trunc4_sel_x_b or redist9_sync_together81_aunroll_x_in_c0_eni13250_9_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i1_notcmp4375_pop50_covariance0_i_llvm_fpga_pop_i1_notcmp4375_pop50_covariance39_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_notcmp4375_pop50_covariance0_i_llvm_fpga_pop_i1_notcmp4375_pop50_covariance39_mux_x_q = i_llvm_fpga_push_i1_notcmp4375_push50_covariance0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_notcmp4375_pop50_covariance0_i_llvm_fpga_pop_i1_notcmp4375_pop50_covariance39_mux_x_q = redist9_sync_together81_aunroll_x_in_c0_eni13250_9_tpl_4_q;
            default : i_llvm_fpga_pop_i1_notcmp4375_pop50_covariance0_i_llvm_fpga_pop_i1_notcmp4375_pop50_covariance39_mux_x_q = 1'b0;
        endcase
    end

    // redist23_i_llvm_fpga_pop_i1_notcmp4375_pop50_covariance0_i_llvm_fpga_pop_i1_notcmp4375_pop50_covariance39_mux_x_q_7(DELAY,239)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist23_i_llvm_fpga_pop_i1_notcmp4375_pop50_covariance0_i_llvm_fpga_pop_i1_notcmp4375_pop50_covariance39_mux_x_q_7 ( .xin(i_llvm_fpga_pop_i1_notcmp4375_pop50_covariance0_i_llvm_fpga_pop_i1_notcmp4375_pop50_covariance39_mux_x_q), .xout(redist23_i_llvm_fpga_pop_i1_notcmp4375_pop50_covariance0_i_llvm_fpga_pop_i1_notcmp4375_pop50_covariance39_mux_x_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist8_sync_together81_aunroll_x_in_c0_eni13250_8_tpl_4(DELAY,224)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_sync_together81_aunroll_x_in_c0_eni13250_8_tpl_4_delay_0 <= $unsigned(in_c0_eni13250_8_tpl);
            redist8_sync_together81_aunroll_x_in_c0_eni13250_8_tpl_4_delay_1 <= redist8_sync_together81_aunroll_x_in_c0_eni13250_8_tpl_4_delay_0;
            redist8_sync_together81_aunroll_x_in_c0_eni13250_8_tpl_4_delay_2 <= redist8_sync_together81_aunroll_x_in_c0_eni13250_8_tpl_4_delay_1;
            redist8_sync_together81_aunroll_x_in_c0_eni13250_8_tpl_4_q <= redist8_sync_together81_aunroll_x_in_c0_eni13250_8_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_exitcond1073_push49_covariance0_element_extension2_x(BITJOIN,116)@4
    assign i_llvm_fpga_push_i1_exitcond1073_push49_covariance0_element_extension2_x_q = {i_arrayidx172_covariance0_c_i7_01_x_q, i_llvm_fpga_pop_i1_exitcond1073_pop49_covariance0_i_llvm_fpga_pop_i1_exitcond1073_pop49_covariance37_mux_x_q};

    // valid_fanout_reg34(REG,198)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg34_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg33(REG,197)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg33_q <= $unsigned(redist14_sync_together81_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_exitcond1073_push49_covariance0_i_llvm_fpga_push_i1_exitcond1073_push49_covariance1_x(FIFODELAY,117)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i1_exitcond1073_push49_covariance0_i_llvm_fpga_push_i1_exitcond1073_push49_covariance1_x_i_stall = ~ (valid_fanout_reg34_q & i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_exitcond1073_push49_covariance0_i_llvm_fpga_push_i1_exitcond1073_push49_covariance1_x_i_valid = valid_fanout_reg33_q & redist20_i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i1_exitcond1073_push49_covariance0_i_llvm_fpga_push_i1_exitcond1073_push49_covariance1_x_i_data = i_llvm_fpga_push_i1_exitcond1073_push49_covariance0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_exitcond1073_push49_covariance0_i_llvm_fpga_push_i1_exitcond1073_push49_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_exitcond1073_push49_covariance0_i_llvm_fpga_push_i1_exitcond1073_push49_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_exitcond1073_push49_covariance0_i_llvm_fpga_push_i1_exitcond1073_push49_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_exitcond1073_push49_covariance0_i_llvm_fpga_push_i1_exitcond1073_push49_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_exitcond1073_push49_covariance0_i_llvm_fpga_push_i1_exitcond1073_push49_covariance1_x (
        .i_valid(i_llvm_fpga_push_i1_exitcond1073_push49_covariance0_i_llvm_fpga_push_i1_exitcond1073_push49_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_exitcond1073_push49_covariance0_i_llvm_fpga_push_i1_exitcond1073_push49_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_exitcond1073_push49_covariance0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_exitcond1073_push49_covariance0_i_llvm_fpga_push_i1_exitcond1073_push49_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_exitcond1073_push49_covariance0_adapt_scalar_trunc4_sel_x(BITSELECT,119)@4
    assign i_llvm_fpga_push_i1_exitcond1073_push49_covariance0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_exitcond1073_push49_covariance0_i_llvm_fpga_push_i1_exitcond1073_push49_covariance1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_exitcond1073_pop49_covariance0_i_llvm_fpga_pop_i1_exitcond1073_pop49_covariance37_mux_x(MUX,98)@4
    assign i_llvm_fpga_pop_i1_exitcond1073_pop49_covariance0_i_llvm_fpga_pop_i1_exitcond1073_pop49_covariance37_mux_x_s = redist30_i_llvm_fpga_forked_covariance_b7_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i1_exitcond1073_pop49_covariance0_i_llvm_fpga_pop_i1_exitcond1073_pop49_covariance37_mux_x_s or i_llvm_fpga_push_i1_exitcond1073_push49_covariance0_adapt_scalar_trunc4_sel_x_b or redist8_sync_together81_aunroll_x_in_c0_eni13250_8_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i1_exitcond1073_pop49_covariance0_i_llvm_fpga_pop_i1_exitcond1073_pop49_covariance37_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_exitcond1073_pop49_covariance0_i_llvm_fpga_pop_i1_exitcond1073_pop49_covariance37_mux_x_q = i_llvm_fpga_push_i1_exitcond1073_push49_covariance0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_exitcond1073_pop49_covariance0_i_llvm_fpga_pop_i1_exitcond1073_pop49_covariance37_mux_x_q = redist8_sync_together81_aunroll_x_in_c0_eni13250_8_tpl_4_q;
            default : i_llvm_fpga_pop_i1_exitcond1073_pop49_covariance0_i_llvm_fpga_pop_i1_exitcond1073_pop49_covariance37_mux_x_q = 1'b0;
        endcase
    end

    // redist25_i_llvm_fpga_pop_i1_exitcond1073_pop49_covariance0_i_llvm_fpga_pop_i1_exitcond1073_pop49_covariance37_mux_x_q_7(DELAY,241)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist25_i_llvm_fpga_pop_i1_exitcond1073_pop49_covariance0_i_llvm_fpga_pop_i1_exitcond1073_pop49_covariance37_mux_x_q_7 ( .xin(i_llvm_fpga_pop_i1_exitcond1073_pop49_covariance0_i_llvm_fpga_pop_i1_exitcond1073_pop49_covariance37_mux_x_q), .xout(redist25_i_llvm_fpga_pop_i1_exitcond1073_pop49_covariance0_i_llvm_fpga_pop_i1_exitcond1073_pop49_covariance37_mux_x_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_offset(CONSTANT,270)
    assign redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_offset_q = $unsigned(2'b10);

    // redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_rdcnt(ADD,271)
    assign redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_rdcnt_a = {1'b0, redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_wraddr_q};
    assign redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_rdcnt_b = {1'b0, redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_rdcnt_o <= $unsigned(redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_rdcnt_a) + $unsigned(redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_rdcnt_b);
        end
    end
    assign redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_rdcnt_q = redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_rdcnt_o[2:0];

    // redist7_sync_together81_aunroll_x_in_c0_eni13250_7_tpl_4_inputreg0(DELAY,253)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together81_aunroll_x_in_c0_eni13250_7_tpl_4_inputreg0_q <= $unsigned(in_c0_eni13250_7_tpl);
        end
    end

    // redist7_sync_together81_aunroll_x_in_c0_eni13250_7_tpl_4(DELAY,223)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together81_aunroll_x_in_c0_eni13250_7_tpl_4_delay_0 <= $unsigned(redist7_sync_together81_aunroll_x_in_c0_eni13250_7_tpl_4_inputreg0_q);
            redist7_sync_together81_aunroll_x_in_c0_eni13250_7_tpl_4_delay_1 <= redist7_sync_together81_aunroll_x_in_c0_eni13250_7_tpl_4_delay_0;
            redist7_sync_together81_aunroll_x_in_c0_eni13250_7_tpl_4_q <= redist7_sync_together81_aunroll_x_in_c0_eni13250_7_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg31(REG,195)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg31_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg30(REG,194)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg30_q <= $unsigned(redist14_sync_together81_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_lim_ext54_push45_covariance0_i_llvm_fpga_push_i32_lim_ext54_push45_covariance1_x(FIFODELAY,147)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_lim_ext54_push45_covariance0_i_llvm_fpga_push_i32_lim_ext54_push45_covariance1_x_i_stall = ~ (valid_fanout_reg31_q & i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_lim_ext54_push45_covariance0_i_llvm_fpga_push_i32_lim_ext54_push45_covariance1_x_i_valid = valid_fanout_reg30_q & redist20_i_llvm_fpga_push_i1_covariance_b7_next_iter_isreal_push_covariance0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_lim_ext54_push45_covariance0_i_llvm_fpga_push_i32_lim_ext54_push45_covariance1_x_i_data = i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q;
    assign i_llvm_fpga_push_i32_lim_ext54_push45_covariance0_i_llvm_fpga_push_i32_lim_ext54_push45_covariance1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_lim_ext54_push45_covariance0_i_llvm_fpga_push_i32_lim_ext54_push45_covariance1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_lim_ext54_push45_covariance0_i_llvm_fpga_push_i32_lim_ext54_push45_covariance1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_lim_ext54_push45_covariance0_i_llvm_fpga_push_i32_lim_ext54_push45_covariance1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_lim_ext54_push45_covariance0_i_llvm_fpga_push_i32_lim_ext54_push45_covariance1_x (
        .i_valid(i_llvm_fpga_push_i32_lim_ext54_push45_covariance0_i_llvm_fpga_push_i32_lim_ext54_push45_covariance1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_lim_ext54_push45_covariance0_i_llvm_fpga_push_i32_lim_ext54_push45_covariance1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_lim_ext54_push45_covariance0_i_llvm_fpga_push_i32_lim_ext54_push45_covariance1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x(MUX,104)@4
    assign i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_s = redist30_i_llvm_fpga_forked_covariance_b7_forked_covariance3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_s or i_llvm_fpga_push_i32_lim_ext54_push45_covariance0_i_llvm_fpga_push_i32_lim_ext54_push45_covariance1_x_o_data or redist7_sync_together81_aunroll_x_in_c0_eni13250_7_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q = i_llvm_fpga_push_i32_lim_ext54_push45_covariance0_i_llvm_fpga_push_i32_lim_ext54_push45_covariance1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q = redist7_sync_together81_aunroll_x_in_c0_eni13250_7_tpl_4_q;
            default : i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q = 32'b0;
        endcase
    end

    // redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_inputreg0(DELAY,266)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_inputreg0_q <= $unsigned(i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q);
        end
    end

    // redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_wraddr(COUNTER,269)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_wraddr_i <= $unsigned(redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_wraddr_i) + $unsigned(2'd1);
        end
    end
    assign redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_wraddr_q = redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_wraddr_i[1:0];

    // redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_mem(DUALMEM,268)
    assign redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_mem_ia = $unsigned(redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_inputreg0_q);
    assign redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_mem_aa = redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_wraddr_q;
    assign redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_mem_ab = redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_rdcnt_q[1:0];
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
    ) redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_mem_aa),
        .data_a(redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_mem_ab),
        .q_b(redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_mem_iq),
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
    assign redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_mem_q = redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_mem_iq[31:0];

    // redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_outputreg0(DELAY,267)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_outputreg0_q <= $unsigned(redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_mem_q);
        end
    end

    // i_notcmp33_covariance31(LOGICAL,61)@11
    assign i_notcmp33_covariance31_q = redist1_i_exitcond7_covariance23_cmp_nsign_q_7_q ^ VCC_q;

    // redist1_i_exitcond7_covariance23_cmp_nsign_q_7(DELAY,217)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist1_i_exitcond7_covariance23_cmp_nsign_q_7 ( .xin(i_exitcond7_covariance23_cmp_nsign_q), .xout(redist1_i_exitcond7_covariance23_cmp_nsign_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,162)@11
    assign out_c0_exi10274_0_tpl = GND_q;
    assign out_c0_exi10274_1_tpl = i_llvm_fpga_mem_memdep_covariance20_out_o_writeack;
    assign out_c0_exi10274_2_tpl = redist1_i_exitcond7_covariance23_cmp_nsign_q_7_q;
    assign out_c0_exi10274_3_tpl = i_notcmp33_covariance31_q;
    assign out_c0_exi10274_4_tpl = redist22_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance0_i_llvm_fpga_pop_i32_lim_ext54_pop45_covariance35_mux_x_q_7_outputreg0_q;
    assign out_c0_exi10274_5_tpl = redist25_i_llvm_fpga_pop_i1_exitcond1073_pop49_covariance0_i_llvm_fpga_pop_i1_exitcond1073_pop49_covariance37_mux_x_q_7_q;
    assign out_c0_exi10274_6_tpl = redist23_i_llvm_fpga_pop_i1_notcmp4375_pop50_covariance0_i_llvm_fpga_pop_i1_notcmp4375_pop50_covariance39_mux_x_q_7_q;
    assign out_c0_exi10274_7_tpl = redist10_sync_together81_aunroll_x_in_c0_eni13250_10_tpl_11_outputreg0_q;
    assign out_c0_exi10274_8_tpl = redist11_sync_together81_aunroll_x_in_c0_eni13250_11_tpl_11_q;
    assign out_c0_exi10274_9_tpl = redist12_sync_together81_aunroll_x_in_c0_eni13250_12_tpl_11_q;
    assign out_c0_exi10274_10_tpl = redist13_sync_together81_aunroll_x_in_c0_eni13250_13_tpl_11_q;
    assign out_covariance_B7_current_iter_isspec = redist33_i_covariance_b7_current_iter_isspec_covariance5_q_6_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_profile_loop_o_valid = redist19_sync_together81_aunroll_x_in_i_valid_11_q;

endmodule
