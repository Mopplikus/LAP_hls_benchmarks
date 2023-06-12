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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body15_kernel_3mms_c0_enter32651_kernel_3mm0
// Created for function/kernel kernel_3mm
// SystemVerilog created on Thu Apr 27 14:26:50 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_i_sfc_logic_s_c0_in_for_body10000ter32651_kernel_3mm0 (
    input wire [31:0] in_unnamed_kernel_3mm3_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm3_kernel_3mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_3mm3_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm3_kernel_3mm_avm_readdatavalid,
    output wire [31:0] out_unnamed_kernel_3mm3_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm3_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm3_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm3_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm3_kernel_3mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_3mm3_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm3_kernel_3mm_avm_burstcount,
    input wire [0:0] in_flush,
    output wire [0:0] out_exiting_valid_out,
    input wire [31:0] in_unnamed_kernel_3mm4_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm4_kernel_3mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_3mm4_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm4_kernel_3mm_avm_readdatavalid,
    output wire [31:0] out_unnamed_kernel_3mm4_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm4_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm4_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm4_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi26_0_tpl,
    output wire [63:0] out_c0_exi26_1_tpl,
    output wire [63:0] out_c0_exi26_2_tpl,
    output wire [31:0] out_c0_exi26_3_tpl,
    output wire [0:0] out_c0_exi26_4_tpl,
    output wire [0:0] out_c0_exi26_5_tpl,
    output wire [0:0] out_c0_exi26_6_tpl,
    output wire [0:0] out_c0_exi26_7_tpl,
    output wire [0:0] out_c0_exi26_8_tpl,
    output wire [0:0] out_c0_exi26_9_tpl,
    output wire [0:0] out_c0_exi26_10_tpl,
    output wire [31:0] out_c0_exi26_11_tpl,
    output wire [0:0] out_c0_exi26_12_tpl,
    output wire [63:0] out_c0_exi26_13_tpl,
    output wire [0:0] out_c0_exi26_14_tpl,
    output wire [0:0] out_c0_exi26_15_tpl,
    output wire [0:0] out_c0_exi26_16_tpl,
    output wire [0:0] out_c0_exi26_17_tpl,
    output wire [0:0] out_c0_exi26_18_tpl,
    output wire [0:0] out_c0_exi26_19_tpl,
    output wire [31:0] out_c0_exi26_20_tpl,
    output wire [0:0] out_c0_exi26_21_tpl,
    output wire [0:0] out_c0_exi26_22_tpl,
    output wire [0:0] out_c0_exi26_23_tpl,
    output wire [0:0] out_c0_exi26_24_tpl,
    output wire [0:0] out_c0_exi26_25_tpl,
    output wire [0:0] out_c0_exi26_26_tpl,
    output wire [0:0] out_kernel_3mm_B4_current_iter_isspec,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni25_0_tpl,
    input wire [0:0] in_c0_eni25_1_tpl,
    input wire [63:0] in_c0_eni25_2_tpl,
    input wire [63:0] in_c0_eni25_3_tpl,
    input wire [31:0] in_c0_eni25_4_tpl,
    input wire [0:0] in_c0_eni25_5_tpl,
    input wire [0:0] in_c0_eni25_6_tpl,
    input wire [0:0] in_c0_eni25_7_tpl,
    input wire [0:0] in_c0_eni25_8_tpl,
    input wire [0:0] in_c0_eni25_9_tpl,
    input wire [31:0] in_c0_eni25_10_tpl,
    input wire [0:0] in_c0_eni25_11_tpl,
    input wire [63:0] in_c0_eni25_12_tpl,
    input wire [0:0] in_c0_eni25_13_tpl,
    input wire [0:0] in_c0_eni25_14_tpl,
    input wire [0:0] in_c0_eni25_15_tpl,
    input wire [0:0] in_c0_eni25_16_tpl,
    input wire [0:0] in_c0_eni25_17_tpl,
    input wire [0:0] in_c0_eni25_18_tpl,
    input wire [31:0] in_c0_eni25_19_tpl,
    input wire [0:0] in_c0_eni25_20_tpl,
    input wire [0:0] in_c0_eni25_21_tpl,
    input wire [0:0] in_c0_eni25_22_tpl,
    input wire [0:0] in_c0_eni25_23_tpl,
    input wire [0:0] in_c0_eni25_24_tpl,
    input wire [0:0] in_c0_eni25_25_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_0121_q;
    wire [31:0] c_i32_1122_q;
    wire [4:0] c_i5_1125_q;
    wire [4:0] c_i5_8123_q;
    wire [63:0] c_kernel_3mm_A_local_pmem_q;
    wire [63:0] c_kernel_3mm_B_local_pmem_q;
    wire [32:0] i_add_kernel_3mm19_a;
    wire [32:0] i_add_kernel_3mm19_b;
    logic [32:0] i_add_kernel_3mm19_o;
    wire [32:0] i_add_kernel_3mm19_q;
    wire [1:0] i_arrayidx192_kernel_3mm12_vt_const_1_q;
    wire [63:0] i_arrayidx192_kernel_3mm12_vt_join_q;
    wire [61:0] i_arrayidx192_kernel_3mm12_vt_select_63_b;
    wire [63:0] i_arrayidx233_kernel_3mm15_vt_join_q;
    wire [61:0] i_arrayidx233_kernel_3mm15_vt_select_63_b;
    wire [5:0] i_fpga_indvars_iv_next_kernel_3mm30_a;
    wire [5:0] i_fpga_indvars_iv_next_kernel_3mm30_b;
    logic [5:0] i_fpga_indvars_iv_next_kernel_3mm30_o;
    wire [5:0] i_fpga_indvars_iv_next_kernel_3mm30_q;
    wire [63:0] i_idxprom18_kernel_3mm10_vt_join_q;
    wire [31:0] i_idxprom18_kernel_3mm10_vt_select_31_b;
    wire [32:0] i_inc_kernel_3mm20_a;
    wire [32:0] i_inc_kernel_3mm20_b;
    logic [32:0] i_inc_kernel_3mm20_o;
    wire [32:0] i_inc_kernel_3mm20_q;
    wire [0:0] i_kernel_3mm_b4_current_iter_isspec_kernel_3mm5_q;
    wire [0:0] i_kernel_3mm_b4_next_iter_isreal_kernel_3mm7_q;
    wire [0:0] i_llvm_fpga_dummy_thread_kernel_3mm_b4_dummy_kernel_3mm2_out_dummy_out;
    wire [0:0] i_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3_out_buffer_out;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm3_kernel_3mm13_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm3_kernel_3mm13_out_unnamed_kernel_3mm3_kernel_3mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm3_kernel_3mm13_out_unnamed_kernel_3mm3_kernel_3mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_kernel_3mm3_kernel_3mm13_out_unnamed_kernel_3mm3_kernel_3mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm3_kernel_3mm13_out_unnamed_kernel_3mm3_kernel_3mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm3_kernel_3mm13_out_unnamed_kernel_3mm3_kernel_3mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm3_kernel_3mm13_out_unnamed_kernel_3mm3_kernel_3mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm3_kernel_3mm13_out_unnamed_kernel_3mm3_kernel_3mm_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm16_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm16_out_unnamed_kernel_3mm4_kernel_3mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm16_out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm16_out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm16_out_unnamed_kernel_3mm4_kernel_3mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm16_out_unnamed_kernel_3mm4_kernel_3mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm16_out_unnamed_kernel_3mm4_kernel_3mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm16_out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_kernel_3mm6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_kernel_3mm6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_kernel_3mm6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_kernel_3mm6_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_kernel_3mm6_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_kernel_3mm6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond44_kernel_3mm29_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond44_kernel_3mm29_out_feedback_valid_out_10;
    wire [0:0] i_notcmp41_kernel_3mm28_q;
    wire [31:0] bgTrunc_i_add_kernel_3mm19_sel_x_b;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next_kernel_3mm30_sel_x_b;
    wire [31:0] bgTrunc_i_inc_kernel_3mm20_sel_x_b;
    wire [63:0] bgTrunc_i_mul_kernel_3mm17_sel_x_in;
    wire [31:0] bgTrunc_i_mul_kernel_3mm17_sel_x_b;
    wire [9:0] i_arrayidx192_kernel_3mm0_add_x_a;
    wire [9:0] i_arrayidx192_kernel_3mm0_add_x_b;
    logic [9:0] i_arrayidx192_kernel_3mm0_add_x_o;
    wire [9:0] i_arrayidx192_kernel_3mm0_add_x_q;
    wire [63:0] i_arrayidx192_kernel_3mm0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx192_kernel_3mm0_narrow_x_b;
    wire [8:0] i_arrayidx192_kernel_3mm0_shift_join_x_q;
    wire [9:0] i_arrayidx192_kernel_3mm0_dupName_0_add_x_a;
    wire [9:0] i_arrayidx192_kernel_3mm0_dupName_0_add_x_b;
    logic [9:0] i_arrayidx192_kernel_3mm0_dupName_0_add_x_o;
    wire [9:0] i_arrayidx192_kernel_3mm0_dupName_0_add_x_q;
    wire [17:0] i_arrayidx192_kernel_3mm0_mult_extender_x_q;
    wire [2:0] i_arrayidx192_kernel_3mm0_mult_multconst_x_q;
    wire [8:0] i_arrayidx192_kernel_3mm0_dupName_0_trunc_sel_x_b;
    wire [8:0] i_arrayidx192_kernel_3mm0_dupName_1_trunc_sel_x_b;
    wire [8:0] i_arrayidx192_kernel_3mm0_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx192_kernel_3mm0_dupName_3_trunc_sel_x_b;
    wire [8:0] i_arrayidx192_kernel_3mm0_dupName_5_trunc_sel_x_b;
    wire [9:0] i_arrayidx233_kernel_3mm0_add_x_a;
    wire [9:0] i_arrayidx233_kernel_3mm0_add_x_b;
    logic [9:0] i_arrayidx233_kernel_3mm0_add_x_o;
    wire [9:0] i_arrayidx233_kernel_3mm0_add_x_q;
    wire [63:0] i_arrayidx233_kernel_3mm0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx233_kernel_3mm0_narrow_x_b;
    wire [8:0] i_arrayidx233_kernel_3mm0_shift_join_x_q;
    wire [9:0] i_arrayidx233_kernel_3mm0_dupName_0_add_x_a;
    wire [9:0] i_arrayidx233_kernel_3mm0_dupName_0_add_x_b;
    logic [9:0] i_arrayidx233_kernel_3mm0_dupName_0_add_x_o;
    wire [9:0] i_arrayidx233_kernel_3mm0_dupName_0_add_x_q;
    wire [17:0] i_arrayidx233_kernel_3mm0_mult_extender_x_q;
    wire [8:0] i_arrayidx233_kernel_3mm0_dupName_1_trunc_sel_x_b;
    wire [8:0] i_arrayidx233_kernel_3mm0_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx233_kernel_3mm0_dupName_3_trunc_sel_x_b;
    wire [8:0] i_arrayidx233_kernel_3mm0_dupName_5_trunc_sel_x_b;
    wire [63:0] i_idxprom18_kernel_3mm10_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b4_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b4_current_iter_isreal_kernel_3mm4_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b4_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b4_current_iter_isreal_kernel_3mm4_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_forked62_pop49_kernel_3mm0_i_llvm_fpga_pop_i1_forked62_pop49_kernel_3mm32_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_forked62_pop49_kernel_3mm0_i_llvm_fpga_pop_i1_forked62_pop49_kernel_3mm32_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1870_pop51_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi2_pop1870_pop51_kernel_3mm36_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1870_pop51_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi2_pop1870_pop51_kernel_3mm36_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop1974_pop52_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi3_pop1974_pop52_kernel_3mm38_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop1974_pop52_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi3_pop1974_pop52_kernel_3mm38_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi5_pop2078_pop53_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2078_pop53_kernel_3mm40_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi5_pop2078_pop53_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2078_pop53_kernel_3mm40_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop1766_pop50_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1766_pop50_kernel_3mm34_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop1766_pop50_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1766_pop50_kernel_3mm34_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp46102_pop59_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp46102_pop59_kernel_3mm48_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_notcmp46102_pop59_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp46102_pop59_kernel_3mm48_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp5189_pop55_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp5189_pop55_kernel_3mm44_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_notcmp5189_pop55_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp5189_pop55_kernel_3mm44_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_i_060_pop2386_pop54_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2386_pop54_kernel_3mm42_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_i_060_pop2386_pop54_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2386_pop54_kernel_3mm42_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_k_057_pop48_kernel_3mm0_i_llvm_fpga_pop_i32_k_057_pop48_kernel_3mm9_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_k_057_pop48_kernel_3mm0_i_llvm_fpga_pop_i32_k_057_pop48_kernel_3mm9_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_tmp_058_pop47_kernel_3mm0_i_llvm_fpga_pop_i32_tmp_058_pop47_kernel_3mm18_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_tmp_058_pop47_kernel_3mm0_i_llvm_fpga_pop_i32_tmp_058_pop47_kernel_3mm18_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv_pop46_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop46_kernel_3mm21_mux_x_s;
    reg [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv_pop46_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop46_kernel_3mm21_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_c_i7_03_x_q;
    wire [7:0] i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm0_i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm0_i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm0_i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm0_i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm0_i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm0_i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_i_060_pop2386_push54_kernel_3mm0_i_llvm_fpga_push_i32_i_060_pop2386_push54_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i32_i_060_pop2386_push54_kernel_3mm0_i_llvm_fpga_push_i32_i_060_pop2386_push54_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_i_060_pop2386_push54_kernel_3mm0_i_llvm_fpga_push_i32_i_060_pop2386_push54_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i32_i_060_pop2386_push54_kernel_3mm0_i_llvm_fpga_push_i32_i_060_pop2386_push54_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_i_060_pop2386_push54_kernel_3mm0_i_llvm_fpga_push_i32_i_060_pop2386_push54_kernel_3mm1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_i_060_pop2386_push54_kernel_3mm0_i_llvm_fpga_push_i32_i_060_pop2386_push54_kernel_3mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_k_057_push48_kernel_3mm0_i_llvm_fpga_push_i32_k_057_push48_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i32_k_057_push48_kernel_3mm0_i_llvm_fpga_push_i32_k_057_push48_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_k_057_push48_kernel_3mm0_i_llvm_fpga_push_i32_k_057_push48_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i32_k_057_push48_kernel_3mm0_i_llvm_fpga_push_i32_k_057_push48_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_k_057_push48_kernel_3mm0_i_llvm_fpga_push_i32_k_057_push48_kernel_3mm1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_k_057_push48_kernel_3mm0_i_llvm_fpga_push_i32_k_057_push48_kernel_3mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm0_i_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm0_i_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm0_i_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm0_i_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm0_i_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm1_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm0_i_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm1_x_o_data;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm0_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm1_x_i_data;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm1_x_o_data;
    wire [4:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i64_idxprom1199_push57_kernel_3mm0_i_llvm_fpga_push_i64_idxprom1199_push57_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i64_idxprom1199_push57_kernel_3mm0_i_llvm_fpga_push_i64_idxprom1199_push57_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_idxprom1199_push57_kernel_3mm0_i_llvm_fpga_push_i64_idxprom1199_push57_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i64_idxprom1199_push57_kernel_3mm0_i_llvm_fpga_push_i64_idxprom1199_push57_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_idxprom1199_push57_kernel_3mm0_i_llvm_fpga_push_i64_idxprom1199_push57_kernel_3mm1_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_idxprom1199_push57_kernel_3mm0_i_llvm_fpga_push_i64_idxprom1199_push57_kernel_3mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i64_idxprom97_push56_kernel_3mm0_i_llvm_fpga_push_i64_idxprom97_push56_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_i64_idxprom97_push56_kernel_3mm0_i_llvm_fpga_push_i64_idxprom97_push56_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_idxprom97_push56_kernel_3mm0_i_llvm_fpga_push_i64_idxprom97_push56_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_i64_idxprom97_push56_kernel_3mm0_i_llvm_fpga_push_i64_idxprom97_push56_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_idxprom97_push56_kernel_3mm0_i_llvm_fpga_push_i64_idxprom97_push56_kernel_3mm1_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_idxprom97_push56_kernel_3mm0_i_llvm_fpga_push_i64_idxprom97_push56_kernel_3mm1_x_o_data;
    wire [0:0] i_llvm_fpga_push_p68i32_arrayidx121101_push58_kernel_3mm0_i_llvm_fpga_push_p68i32_arrayidx121101_push58_kernel_3mm1_x_i_valid;
    wire i_llvm_fpga_push_p68i32_arrayidx121101_push58_kernel_3mm0_i_llvm_fpga_push_p68i32_arrayidx121101_push58_kernel_3mm1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_p68i32_arrayidx121101_push58_kernel_3mm0_i_llvm_fpga_push_p68i32_arrayidx121101_push58_kernel_3mm1_x_i_stall;
    wire i_llvm_fpga_push_p68i32_arrayidx121101_push58_kernel_3mm0_i_llvm_fpga_push_p68i32_arrayidx121101_push58_kernel_3mm1_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_p68i32_arrayidx121101_push58_kernel_3mm0_i_llvm_fpga_push_p68i32_arrayidx121101_push58_kernel_3mm1_x_i_data;
    wire [63:0] i_llvm_fpga_push_p68i32_arrayidx121101_push58_kernel_3mm0_i_llvm_fpga_push_p68i32_arrayidx121101_push58_kernel_3mm1_x_o_data;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg7_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg9_q;
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
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg24_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg25_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg27_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg28_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg30_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg31_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg33_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg34_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg36_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg37_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg39_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg40_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg42_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg43_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg45_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg46_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg48_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg49_q;
    wire [0:0] i_exitcond_kernel_3mm22_cmp_nsign_q;
    wire [14:0] i_mul_kernel_3mm17_bjA2_q;
    wire [14:0] i_mul_kernel_3mm17_bjB4_q;
    wire [65:0] i_mul_kernel_3mm17_sums_join_0_q;
    wire [50:0] i_mul_kernel_3mm17_sums_align_1_q;
    wire [50:0] i_mul_kernel_3mm17_sums_align_1_qint;
    wire [66:0] i_mul_kernel_3mm17_sums_result_add_0_0_a;
    wire [66:0] i_mul_kernel_3mm17_sums_result_add_0_0_b;
    logic [66:0] i_mul_kernel_3mm17_sums_result_add_0_0_o;
    wire [66:0] i_mul_kernel_3mm17_sums_result_add_0_0_q;
    wire [9:0] addsumAHighB_uid354_i_arrayidx192_kernel_3mm0_mult_x_a;
    wire [9:0] addsumAHighB_uid354_i_arrayidx192_kernel_3mm0_mult_x_b;
    logic [9:0] addsumAHighB_uid354_i_arrayidx192_kernel_3mm0_mult_x_o;
    wire [9:0] addsumAHighB_uid354_i_arrayidx192_kernel_3mm0_mult_x_q;
    wire [11:0] add_uid355_i_arrayidx192_kernel_3mm0_mult_x_q;
    wire [14:0] sR_mergedSignalTM_uid360_i_arrayidx192_kernel_3mm0_mult_x_q;
    wire [1:0] lowRangeB_uid398_i_arrayidx233_kernel_3mm0_mult_x_in;
    wire [1:0] lowRangeB_uid398_i_arrayidx233_kernel_3mm0_mult_x_b;
    wire [6:0] highBBits_uid399_i_arrayidx233_kernel_3mm0_mult_x_b;
    wire [9:0] addsumAHighB_uid400_i_arrayidx233_kernel_3mm0_mult_x_a;
    wire [9:0] addsumAHighB_uid400_i_arrayidx233_kernel_3mm0_mult_x_b;
    logic [9:0] addsumAHighB_uid400_i_arrayidx233_kernel_3mm0_mult_x_o;
    wire [9:0] addsumAHighB_uid400_i_arrayidx233_kernel_3mm0_mult_x_q;
    wire [11:0] add_uid401_i_arrayidx233_kernel_3mm0_mult_x_q;
    wire [14:0] sR_mergedSignalTM_uid406_i_arrayidx233_kernel_3mm0_mult_x_q;
    wire i_mul_kernel_3mm17_im0_cma_reset;
    (* preserve_syn_only *) reg signed [14:0] i_mul_kernel_3mm17_im0_cma_ah [0:0];
    (* preserve_syn_only *) reg signed [14:0] i_mul_kernel_3mm17_im0_cma_ch [0:0];
    wire [14:0] i_mul_kernel_3mm17_im0_cma_a0;
    wire [14:0] i_mul_kernel_3mm17_im0_cma_c0;
    wire [29:0] i_mul_kernel_3mm17_im0_cma_s0;
    wire [29:0] i_mul_kernel_3mm17_im0_cma_qq;
    reg [29:0] i_mul_kernel_3mm17_im0_cma_q;
    wire i_mul_kernel_3mm17_im0_cma_ena0;
    wire i_mul_kernel_3mm17_im0_cma_ena1;
    wire i_mul_kernel_3mm17_im0_cma_ena2;
    wire i_mul_kernel_3mm17_im10_cma_reset;
    (* preserve_syn_only *) reg [17:0] i_mul_kernel_3mm17_im10_cma_ah [0:0];
    (* preserve_syn_only *) reg [17:0] i_mul_kernel_3mm17_im10_cma_ch [0:0];
    wire [17:0] i_mul_kernel_3mm17_im10_cma_a0;
    wire [17:0] i_mul_kernel_3mm17_im10_cma_c0;
    wire [35:0] i_mul_kernel_3mm17_im10_cma_s0;
    wire [35:0] i_mul_kernel_3mm17_im10_cma_qq;
    reg [35:0] i_mul_kernel_3mm17_im10_cma_q;
    wire i_mul_kernel_3mm17_im10_cma_ena0;
    wire i_mul_kernel_3mm17_im10_cma_ena1;
    wire i_mul_kernel_3mm17_im10_cma_ena2;
    wire i_mul_kernel_3mm17_ma5_cma_reset;
    (* preserve_syn_only *) reg [13:0] i_mul_kernel_3mm17_ma5_cma_ah [0:1];
    (* preserve_syn_only *) reg [17:0] i_mul_kernel_3mm17_ma5_cma_ch [0:1];
    wire [13:0] i_mul_kernel_3mm17_ma5_cma_a0;
    wire [17:0] i_mul_kernel_3mm17_ma5_cma_c0;
    wire [13:0] i_mul_kernel_3mm17_ma5_cma_a1;
    wire [17:0] i_mul_kernel_3mm17_ma5_cma_c1;
    wire [32:0] i_mul_kernel_3mm17_ma5_cma_s0;
    wire [32:0] i_mul_kernel_3mm17_ma5_cma_qq;
    reg [32:0] i_mul_kernel_3mm17_ma5_cma_q;
    wire i_mul_kernel_3mm17_ma5_cma_ena0;
    wire i_mul_kernel_3mm17_ma5_cma_ena1;
    wire i_mul_kernel_3mm17_ma5_cma_ena2;
    wire [54:0] i_arrayidx192_kernel_3mm0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx192_kernel_3mm0_upper_bits_x_merged_bit_select_c;
    wire [54:0] i_arrayidx233_kernel_3mm0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx233_kernel_3mm0_upper_bits_x_merged_bit_select_c;
    wire [13:0] i_mul_kernel_3mm17_bs3_merged_bit_select_b;
    wire [17:0] i_mul_kernel_3mm17_bs3_merged_bit_select_c;
    wire [13:0] i_mul_kernel_3mm17_bs1_merged_bit_select_b;
    wire [17:0] i_mul_kernel_3mm17_bs1_merged_bit_select_c;
    wire [1:0] lowRangeB_uid352_i_arrayidx192_kernel_3mm0_mult_x_merged_bit_select_b;
    wire [6:0] lowRangeB_uid352_i_arrayidx192_kernel_3mm0_mult_x_merged_bit_select_c;
    reg [54:0] redist0_i_arrayidx233_kernel_3mm0_upper_bits_x_merged_bit_select_b_1_q;
    reg [54:0] redist1_i_arrayidx192_kernel_3mm0_upper_bits_x_merged_bit_select_b_1_q;
    reg [32:0] redist2_i_mul_kernel_3mm17_ma5_cma_q_1_q;
    reg [35:0] redist3_i_mul_kernel_3mm17_im10_cma_q_1_q;
    reg [29:0] redist4_i_mul_kernel_3mm17_im0_cma_q_1_q;
    reg [0:0] redist5_i_exitcond_kernel_3mm22_cmp_nsign_q_14_q;
    reg [0:0] redist6_valid_fanout_reg0_q_1_q;
    reg [63:0] redist7_sync_together132_aunroll_x_in_c0_eni25_2_tpl_4_q;
    reg [63:0] redist7_sync_together132_aunroll_x_in_c0_eni25_2_tpl_4_delay_0;
    reg [63:0] redist7_sync_together132_aunroll_x_in_c0_eni25_2_tpl_4_delay_1;
    reg [0:0] redist10_sync_together132_aunroll_x_in_c0_eni25_5_tpl_17_q;
    reg [0:0] redist11_sync_together132_aunroll_x_in_c0_eni25_6_tpl_4_q;
    reg [0:0] redist11_sync_together132_aunroll_x_in_c0_eni25_6_tpl_4_delay_0;
    reg [0:0] redist11_sync_together132_aunroll_x_in_c0_eni25_6_tpl_4_delay_1;
    reg [0:0] redist11_sync_together132_aunroll_x_in_c0_eni25_6_tpl_4_delay_2;
    reg [0:0] redist12_sync_together132_aunroll_x_in_c0_eni25_7_tpl_17_q;
    reg [0:0] redist13_sync_together132_aunroll_x_in_c0_eni25_8_tpl_4_q;
    reg [0:0] redist13_sync_together132_aunroll_x_in_c0_eni25_8_tpl_4_delay_0;
    reg [0:0] redist13_sync_together132_aunroll_x_in_c0_eni25_8_tpl_4_delay_1;
    reg [0:0] redist13_sync_together132_aunroll_x_in_c0_eni25_8_tpl_4_delay_2;
    reg [0:0] redist14_sync_together132_aunroll_x_in_c0_eni25_9_tpl_4_q;
    reg [0:0] redist14_sync_together132_aunroll_x_in_c0_eni25_9_tpl_4_delay_0;
    reg [0:0] redist14_sync_together132_aunroll_x_in_c0_eni25_9_tpl_4_delay_1;
    reg [0:0] redist14_sync_together132_aunroll_x_in_c0_eni25_9_tpl_4_delay_2;
    reg [0:0] redist16_sync_together132_aunroll_x_in_c0_eni25_11_tpl_4_q;
    reg [0:0] redist16_sync_together132_aunroll_x_in_c0_eni25_11_tpl_4_delay_0;
    reg [0:0] redist16_sync_together132_aunroll_x_in_c0_eni25_11_tpl_4_delay_1;
    reg [0:0] redist16_sync_together132_aunroll_x_in_c0_eni25_11_tpl_4_delay_2;
    reg [63:0] redist17_sync_together132_aunroll_x_in_c0_eni25_12_tpl_4_q;
    reg [63:0] redist17_sync_together132_aunroll_x_in_c0_eni25_12_tpl_4_delay_0;
    reg [63:0] redist17_sync_together132_aunroll_x_in_c0_eni25_12_tpl_4_delay_1;
    reg [0:0] redist18_sync_together132_aunroll_x_in_c0_eni25_13_tpl_4_q;
    reg [0:0] redist18_sync_together132_aunroll_x_in_c0_eni25_13_tpl_4_delay_0;
    reg [0:0] redist18_sync_together132_aunroll_x_in_c0_eni25_13_tpl_4_delay_1;
    reg [0:0] redist18_sync_together132_aunroll_x_in_c0_eni25_13_tpl_4_delay_2;
    reg [0:0] redist19_sync_together132_aunroll_x_in_c0_eni25_14_tpl_18_q;
    reg [0:0] redist20_sync_together132_aunroll_x_in_c0_eni25_15_tpl_18_q;
    reg [0:0] redist21_sync_together132_aunroll_x_in_c0_eni25_16_tpl_18_q;
    reg [0:0] redist22_sync_together132_aunroll_x_in_c0_eni25_17_tpl_18_q;
    reg [0:0] redist23_sync_together132_aunroll_x_in_c0_eni25_18_tpl_18_q;
    reg [0:0] redist25_sync_together132_aunroll_x_in_c0_eni25_20_tpl_18_q;
    reg [0:0] redist26_sync_together132_aunroll_x_in_c0_eni25_21_tpl_18_q;
    reg [0:0] redist27_sync_together132_aunroll_x_in_c0_eni25_22_tpl_18_q;
    reg [0:0] redist28_sync_together132_aunroll_x_in_c0_eni25_23_tpl_18_q;
    reg [0:0] redist29_sync_together132_aunroll_x_in_c0_eni25_24_tpl_18_q;
    reg [0:0] redist30_sync_together132_aunroll_x_in_c0_eni25_25_tpl_18_q;
    reg [0:0] redist31_sync_together132_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist31_sync_together132_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist32_sync_together132_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist33_sync_together132_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist34_sync_together132_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist35_sync_together132_aunroll_x_in_i_valid_13_q;
    reg [0:0] redist36_sync_together132_aunroll_x_in_i_valid_16_q;
    reg [0:0] redist36_sync_together132_aunroll_x_in_i_valid_16_delay_0;
    reg [0:0] redist36_sync_together132_aunroll_x_in_i_valid_16_delay_1;
    reg [0:0] redist37_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_2_q;
    reg [0:0] redist37_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_2_delay_0;
    reg [0:0] redist38_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_3_q;
    reg [0:0] redist39_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_4_q;
    reg [0:0] redist40_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_13_q;
    reg [0:0] redist41_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_16_q;
    reg [0:0] redist41_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_16_delay_0;
    reg [0:0] redist41_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_16_delay_1;
    reg [0:0] redist45_i_llvm_fpga_pop_i1_notcmp5189_pop55_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp5189_pop55_kernel_3mm44_mux_x_q_14_q;
    reg [0:0] redist46_i_llvm_fpga_pop_i1_notcmp46102_pop59_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp46102_pop59_kernel_3mm48_mux_x_q_14_q;
    reg [0:0] redist47_i_llvm_fpga_pop_i1_memdep_phi_pop1766_pop50_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1766_pop50_kernel_3mm34_mux_x_q_14_q;
    reg [0:0] redist48_i_llvm_fpga_pop_i1_memdep_phi5_pop2078_pop53_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2078_pop53_kernel_3mm40_mux_x_q_14_q;
    reg [0:0] redist49_i_llvm_fpga_pop_i1_memdep_phi3_pop1974_pop52_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi3_pop1974_pop52_kernel_3mm38_mux_x_q_14_q;
    reg [8:0] redist50_i_arrayidx233_kernel_3mm0_dupName_2_trunc_sel_x_b_1_q;
    reg [8:0] redist51_i_arrayidx233_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q;
    reg [8:0] redist52_i_arrayidx192_kernel_3mm0_dupName_2_trunc_sel_x_b_1_q;
    reg [8:0] redist53_i_arrayidx192_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q;
    reg [6:0] redist54_i_arrayidx192_kernel_3mm0_narrow_x_b_2_q;
    reg [6:0] redist54_i_arrayidx192_kernel_3mm0_narrow_x_b_2_delay_0;
    reg [31:0] redist55_bgTrunc_i_mul_kernel_3mm17_sel_x_b_1_q;
    reg [0:0] redist56_i_llvm_fpga_pipeline_keep_going43_kernel_3mm6_out_data_out_2_q;
    reg [0:0] redist56_i_llvm_fpga_pipeline_keep_going43_kernel_3mm6_out_data_out_2_delay_0;
    reg [0:0] redist57_i_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3_out_buffer_out_4_q;
    reg [0:0] redist57_i_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3_out_buffer_out_4_delay_0;
    reg [0:0] redist57_i_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3_out_buffer_out_4_delay_1;
    reg [0:0] redist57_i_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3_out_buffer_out_4_delay_2;
    reg [0:0] redist58_i_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3_out_buffer_out_6_q;
    reg [0:0] redist58_i_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3_out_buffer_out_6_delay_0;
    reg [0:0] redist59_i_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3_out_buffer_out_17_q;
    reg [0:0] redist60_i_llvm_fpga_dummy_thread_kernel_3mm_b4_dummy_kernel_3mm2_out_dummy_out_4_q;
    reg [0:0] redist60_i_llvm_fpga_dummy_thread_kernel_3mm_b4_dummy_kernel_3mm2_out_dummy_out_4_delay_0;
    reg [0:0] redist60_i_llvm_fpga_dummy_thread_kernel_3mm_b4_dummy_kernel_3mm2_out_dummy_out_4_delay_1;
    reg [0:0] redist60_i_llvm_fpga_dummy_thread_kernel_3mm_b4_dummy_kernel_3mm2_out_dummy_out_4_delay_2;
    reg [0:0] redist61_i_kernel_3mm_b4_current_iter_isspec_kernel_3mm5_q_12_q;
    reg [63:0] redist7_sync_together132_aunroll_x_in_c0_eni25_2_tpl_4_inputreg0_q;
    reg [63:0] redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_inputreg0_q;
    reg [63:0] redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_outputreg0_q;
    wire redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_mem_reset0;
    wire [63:0] redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_mem_ia;
    wire [1:0] redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_mem_aa;
    wire [1:0] redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_mem_ab;
    wire [63:0] redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_mem_iq;
    wire [63:0] redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_mem_q;
    wire [1:0] redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [1:0] redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_wraddr_i = 2'b11;
    wire [1:0] redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_offset_q;
    wire [2:0] redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_rdcnt_a;
    wire [2:0] redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_rdcnt_b;
    logic [2:0] redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_rdcnt_o;
    wire [2:0] redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_rdcnt_q;
    reg [31:0] redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_inputreg0_q;
    reg [31:0] redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_outputreg0_q;
    wire redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_mem_reset0;
    wire [31:0] redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_mem_ia;
    wire [3:0] redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_mem_aa;
    wire [3:0] redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_mem_ab;
    wire [31:0] redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_mem_iq;
    wire [31:0] redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_mem_q;
    wire [3:0] redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_wraddr_i = 4'b1111;
    wire [3:0] redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_offset_q;
    wire [4:0] redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_rdcnt_a;
    wire [4:0] redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_rdcnt_b;
    logic [4:0] redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_rdcnt_o;
    wire [4:0] redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_rdcnt_q;
    reg [31:0] redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_inputreg0_q;
    wire redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_mem_reset0;
    wire [31:0] redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_mem_ia;
    wire [3:0] redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_mem_aa;
    wire [3:0] redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_mem_ab;
    wire [31:0] redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_mem_iq;
    wire [31:0] redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_mem_q;
    wire [3:0] redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_wraddr_i = 4'b1111;
    wire [3:0] redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_offset_q;
    wire [4:0] redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_rdcnt_a;
    wire [4:0] redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_rdcnt_b;
    logic [4:0] redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_rdcnt_o;
    wire [4:0] redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_rdcnt_q;
    reg [63:0] redist17_sync_together132_aunroll_x_in_c0_eni25_12_tpl_4_inputreg0_q;
    reg [31:0] redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_inputreg0_q;
    reg [31:0] redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_outputreg0_q;
    wire redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_mem_reset0;
    wire [31:0] redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_mem_ia;
    wire [3:0] redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_mem_aa;
    wire [3:0] redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_mem_ab;
    wire [31:0] redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_mem_iq;
    wire [31:0] redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_mem_q;
    wire [3:0] redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_wraddr_i = 4'b1111;
    wire [4:0] redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_rdcnt_a;
    wire [4:0] redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_rdcnt_b;
    logic [4:0] redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_rdcnt_o;
    wire [4:0] redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_rdcnt_q;
    reg [63:0] redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_inputreg0_q;
    reg [63:0] redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_outputreg0_q;
    wire redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_mem_reset0;
    wire [63:0] redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_mem_ia;
    wire [3:0] redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_mem_aa;
    wire [3:0] redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_mem_ab;
    wire [63:0] redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_mem_iq;
    wire [63:0] redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_mem_q;
    wire [3:0] redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_wraddr_i = 4'b1111;
    wire [3:0] redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_offset_q;
    wire [4:0] redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_rdcnt_a;
    wire [4:0] redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_rdcnt_b;
    logic [4:0] redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_rdcnt_o;
    wire [4:0] redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_rdcnt_q;
    reg [63:0] redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_inputreg0_q;
    reg [63:0] redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_outputreg0_q;
    wire redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_mem_reset0;
    wire [63:0] redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_mem_ia;
    wire [3:0] redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_mem_aa;
    wire [3:0] redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_mem_ab;
    wire [63:0] redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_mem_iq;
    wire [63:0] redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_mem_q;
    wire [3:0] redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_wraddr_i = 4'b1111;
    wire [4:0] redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_rdcnt_a;
    wire [4:0] redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_rdcnt_b;
    logic [4:0] redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_rdcnt_o;
    wire [4:0] redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_rdcnt_q;
    reg [63:0] redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_inputreg0_q;
    reg [63:0] redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_outputreg0_q;
    wire redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_mem_reset0;
    wire [63:0] redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_mem_ia;
    wire [3:0] redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_mem_aa;
    wire [3:0] redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_mem_ab;
    wire [63:0] redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_mem_iq;
    wire [63:0] redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_mem_q;
    wire [3:0] redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_wraddr_i = 4'b1111;
    wire [3:0] redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_offset_q;
    wire [4:0] redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_rdcnt_a;
    wire [4:0] redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_rdcnt_b;
    logic [4:0] redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_rdcnt_o;
    wire [4:0] redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_rdcnt_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist31_sync_together132_aunroll_x_in_i_valid_2(DELAY,475)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist31_sync_together132_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist31_sync_together132_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist31_sync_together132_aunroll_x_in_i_valid_2_q <= redist31_sync_together132_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist32_sync_together132_aunroll_x_in_i_valid_3(DELAY,476)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist32_sync_together132_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist32_sync_together132_aunroll_x_in_i_valid_3_q <= $unsigned(redist31_sync_together132_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist33_sync_together132_aunroll_x_in_i_valid_4(DELAY,477)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist33_sync_together132_aunroll_x_in_i_valid_4_q <= $unsigned(redist32_sync_together132_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist34_sync_together132_aunroll_x_in_i_valid_5(DELAY,478)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist34_sync_together132_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist34_sync_together132_aunroll_x_in_i_valid_5_q <= $unsigned(redist33_sync_together132_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg7(REG,268)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist34_sync_together132_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_c_i7_03_x(CONSTANT,188)
    assign i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_c_i7_03_x_q = $unsigned(7'b0000000);

    // valid_fanout_reg2(REG,263)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist32_sync_together132_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg20(REG,281)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist32_sync_together132_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_i5_8123(CONSTANT,80)
    assign c_i5_8123_q = $unsigned(5'b01000);

    // i_arrayidx192_kernel_3mm0_mult_multconst_x(CONSTANT,140)
    assign i_arrayidx192_kernel_3mm0_mult_multconst_x_q = $unsigned(3'b000);

    // c_i5_1125(CONSTANT,79)
    assign c_i5_1125_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next_kernel_3mm30(ADD,93)@4
    assign i_fpga_indvars_iv_next_kernel_3mm30_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv_pop46_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop46_kernel_3mm21_mux_x_q};
    assign i_fpga_indvars_iv_next_kernel_3mm30_b = {1'b0, c_i5_1125_q};
    assign i_fpga_indvars_iv_next_kernel_3mm30_o = $unsigned(i_fpga_indvars_iv_next_kernel_3mm30_a) + $unsigned(i_fpga_indvars_iv_next_kernel_3mm30_b);
    assign i_fpga_indvars_iv_next_kernel_3mm30_q = i_fpga_indvars_iv_next_kernel_3mm30_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next_kernel_3mm30_sel_x(BITSELECT,114)@4
    assign bgTrunc_i_fpga_indvars_iv_next_kernel_3mm30_sel_x_b = i_fpga_indvars_iv_next_kernel_3mm30_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm0_element_extension2_x(BITJOIN,246)@4
    assign i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm0_element_extension2_x_q = {i_arrayidx192_kernel_3mm0_mult_multconst_x_q, bgTrunc_i_fpga_indvars_iv_next_kernel_3mm30_sel_x_b};

    // i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x(LOGICAL,191)@1
    assign i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg22(REG,283)@0 + 1
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

    // valid_fanout_reg21(REG,282)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist31_sync_together132_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm1_x(FIFODELAY,247)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg22_q & i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q);
    assign i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm1_x_i_valid = valid_fanout_reg21_q & redist37_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm1_x_i_data = i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm0_adapt_scalar_trunc4_sel_x(BITSELECT,249)@4
    assign i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm0_i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm1_x_o_data[4:0];

    // i_llvm_fpga_pop_i5_fpga_indvars_iv_pop46_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop46_kernel_3mm21_mux_x(MUX,183)@4
    assign i_llvm_fpga_pop_i5_fpga_indvars_iv_pop46_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop46_kernel_3mm21_mux_x_s = redist57_i_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop46_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop46_kernel_3mm21_mux_x_s or i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm0_adapt_scalar_trunc4_sel_x_b or c_i5_8123_q)
    begin
        unique case (i_llvm_fpga_pop_i5_fpga_indvars_iv_pop46_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop46_kernel_3mm21_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i5_fpga_indvars_iv_pop46_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop46_kernel_3mm21_mux_x_q = i_llvm_fpga_push_i5_fpga_indvars_iv_push46_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i5_fpga_indvars_iv_pop46_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop46_kernel_3mm21_mux_x_q = c_i5_8123_q;
            default : i_llvm_fpga_pop_i5_fpga_indvars_iv_pop46_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop46_kernel_3mm21_mux_x_q = 5'b0;
        endcase
    end

    // i_exitcond_kernel_3mm22_cmp_nsign(LOGICAL,326)@4
    assign i_exitcond_kernel_3mm22_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i5_fpga_indvars_iv_pop46_kernel_3mm0_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop46_kernel_3mm21_mux_x_q[4:4]));

    // i_llvm_fpga_push_i1_notexitcond44_kernel_3mm29(BLACKBOX,106)@4
    // in in_empty_in@20000000
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    kernel_3mm_i_llvm_fpga_push_i1_notexitcond44_0 thei_llvm_fpga_push_i1_notexitcond44_kernel_3mm29 (
        .in_almost_empty_in(GND_q),
        .in_data_in(i_exitcond_kernel_3mm22_cmp_nsign_q),
        .in_empty_in(GND_q),
        .in_feedback_stall_in_10(i_llvm_fpga_pipeline_keep_going43_kernel_3mm6_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i1_notexitcond44_kernel_3mm29_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i1_notexitcond44_kernel_3mm29_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_kernel_3mm_b4_dummy_kernel_3mm2(BLACKBOX,101)@0
    // in in_stall_in@20000000
    kernel_3mm_i_llvm_fpga_dummy_thread_b4_dummy_kernel_3mm0 thei_llvm_fpga_dummy_thread_kernel_3mm_b4_dummy_kernel_3mm2 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_kernel_3mm_b4_dummy_kernel_3mm2_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist60_i_llvm_fpga_dummy_thread_kernel_3mm_b4_dummy_kernel_3mm2_out_dummy_out_4(DELAY,504)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist60_i_llvm_fpga_dummy_thread_kernel_3mm_b4_dummy_kernel_3mm2_out_dummy_out_4_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_kernel_3mm_b4_dummy_kernel_3mm2_out_dummy_out);
            redist60_i_llvm_fpga_dummy_thread_kernel_3mm_b4_dummy_kernel_3mm2_out_dummy_out_4_delay_1 <= redist60_i_llvm_fpga_dummy_thread_kernel_3mm_b4_dummy_kernel_3mm2_out_dummy_out_4_delay_0;
            redist60_i_llvm_fpga_dummy_thread_kernel_3mm_b4_dummy_kernel_3mm2_out_dummy_out_4_delay_2 <= redist60_i_llvm_fpga_dummy_thread_kernel_3mm_b4_dummy_kernel_3mm2_out_dummy_out_4_delay_1;
            redist60_i_llvm_fpga_dummy_thread_kernel_3mm_b4_dummy_kernel_3mm2_out_dummy_out_4_q <= redist60_i_llvm_fpga_dummy_thread_kernel_3mm_b4_dummy_kernel_3mm2_out_dummy_out_4_delay_2;
        end
    end

    // i_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3(BLACKBOX,102)@0
    // in in_stall_in@20000000
    kernel_3mm_i_llvm_fpga_forked_b4_forked_kernel_3mm0 thei_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist57_i_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3_out_buffer_out_4(DELAY,501)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist57_i_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3_out_buffer_out);
            redist57_i_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3_out_buffer_out_4_delay_1 <= redist57_i_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3_out_buffer_out_4_delay_0;
            redist57_i_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3_out_buffer_out_4_delay_2 <= redist57_i_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3_out_buffer_out_4_delay_1;
            redist57_i_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3_out_buffer_out_4_q <= redist57_i_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pipeline_keep_going43_kernel_3mm6(BLACKBOX,105)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    kernel_3mm_i_llvm_fpga_pipeline_keep_going43_0 thei_llvm_fpga_pipeline_keep_going43_kernel_3mm6 (
        .in_data_in(redist57_i_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3_out_buffer_out_4_q),
        .in_dummy_in(redist60_i_llvm_fpga_dummy_thread_kernel_3mm_b4_dummy_kernel_3mm2_out_dummy_out_4_q),
        .in_forked_in(redist57_i_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3_out_buffer_out_4_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond44_kernel_3mm29_out_feedback_out_10),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond44_kernel_3mm29_out_feedback_valid_out_10),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going43_kernel_3mm6_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going43_kernel_3mm6_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going43_kernel_3mm6_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going43_kernel_3mm6_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going43_kernel_3mm6_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going43_kernel_3mm6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist56_i_llvm_fpga_pipeline_keep_going43_kernel_3mm6_out_data_out_2(DELAY,500)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist56_i_llvm_fpga_pipeline_keep_going43_kernel_3mm6_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pipeline_keep_going43_kernel_3mm6_out_data_out);
            redist56_i_llvm_fpga_pipeline_keep_going43_kernel_3mm6_out_data_out_2_q <= redist56_i_llvm_fpga_pipeline_keep_going43_kernel_3mm6_out_data_out_2_delay_0;
        end
    end

    // i_kernel_3mm_b4_next_iter_isreal_kernel_3mm7(LOGICAL,100)@6
    assign i_kernel_3mm_b4_next_iter_isreal_kernel_3mm7_q = i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b4_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b4_current_iter_isreal_kernel_3mm4_mux_x_q & redist56_i_llvm_fpga_pipeline_keep_going43_kernel_3mm6_out_data_out_2_q;

    // i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm0_element_extension2_x(BITJOIN,195)@6
    assign i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm0_element_extension2_x_q = {i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_c_i7_03_x_q, i_kernel_3mm_b4_next_iter_isreal_kernel_3mm7_q};

    // redist37_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_2(DELAY,481)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist37_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q);
            redist37_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_2_q <= redist37_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_2_delay_0;
        end
    end

    // valid_fanout_reg4(REG,265)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist31_sync_together132_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist38_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_3(DELAY,482)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist38_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_3_q <= $unsigned(redist37_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_2_q);
        end
    end

    // redist39_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_4(DELAY,483)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist39_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_4_q <= $unsigned(redist38_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_3_q);
        end
    end

    // valid_fanout_reg3(REG,264)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist33_sync_together132_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm1_x(FIFODELAY,196)@3 + 1
    // in i_valid@5
    // in i_write_pred@5
    // in i_data@6
    // out o_data@6
    assign i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg4_q & redist37_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_2_q);
    assign i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm1_x_i_valid = valid_fanout_reg3_q & redist39_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm1_x_i_data = i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm0_adapt_scalar_trunc4_sel_x(BITSELECT,198)@6
    assign i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm0_i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm1_x_o_data[0:0];

    // redist58_i_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3_out_buffer_out_6(DELAY,502)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist58_i_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3_out_buffer_out_6_delay_0 <= $unsigned(redist57_i_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3_out_buffer_out_4_q);
            redist58_i_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3_out_buffer_out_6_q <= redist58_i_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3_out_buffer_out_6_delay_0;
        end
    end

    // i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b4_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b4_current_iter_isreal_kernel_3mm4_mux_x(MUX,172)@6
    assign i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b4_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b4_current_iter_isreal_kernel_3mm4_mux_x_s = redist58_i_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3_out_buffer_out_6_q;
    always @(i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b4_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b4_current_iter_isreal_kernel_3mm4_mux_x_s or i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm0_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b4_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b4_current_iter_isreal_kernel_3mm4_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b4_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b4_current_iter_isreal_kernel_3mm4_mux_x_q = i_llvm_fpga_push_i1_kernel_3mm_b4_next_iter_isreal_push_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b4_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b4_current_iter_isreal_kernel_3mm4_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b4_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b4_current_iter_isreal_kernel_3mm4_mux_x_q = 1'b0;
        endcase
    end

    // i_kernel_3mm_b4_current_iter_isspec_kernel_3mm5(LOGICAL,99)@6
    assign i_kernel_3mm_b4_current_iter_isspec_kernel_3mm5_q = i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b4_current_iter_isreal_kernel_3mm0_i_llvm_fpga_pop_coalesce_i1_kernel_3mm_b4_current_iter_isreal_kernel_3mm4_mux_x_q ^ VCC_q;

    // c_kernel_3mm_A_local_pmem(CONSTANT,81)
    assign c_kernel_3mm_A_local_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx192_kernel_3mm0_upper_bits_x_merged_bit_select(BITSELECT,439)@5
    assign i_arrayidx192_kernel_3mm0_upper_bits_x_merged_bit_select_b = c_kernel_3mm_A_local_pmem_q[63:9];
    assign i_arrayidx192_kernel_3mm0_upper_bits_x_merged_bit_select_c = c_kernel_3mm_A_local_pmem_q[8:0];

    // redist1_i_arrayidx192_kernel_3mm0_upper_bits_x_merged_bit_select_b_1(DELAY,445)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_arrayidx192_kernel_3mm0_upper_bits_x_merged_bit_select_b_1_q <= $unsigned(i_arrayidx192_kernel_3mm0_upper_bits_x_merged_bit_select_b);
        end
    end

    // c_i32_0121(CONSTANT,77)
    assign c_i32_0121_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_1122(CONSTANT,78)
    assign c_i32_1122_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_kernel_3mm20(ADD,98)@4
    assign i_inc_kernel_3mm20_a = {1'b0, i_llvm_fpga_pop_i32_k_057_pop48_kernel_3mm0_i_llvm_fpga_pop_i32_k_057_pop48_kernel_3mm9_mux_x_q};
    assign i_inc_kernel_3mm20_b = {1'b0, c_i32_1122_q};
    assign i_inc_kernel_3mm20_o = $unsigned(i_inc_kernel_3mm20_a) + $unsigned(i_inc_kernel_3mm20_b);
    assign i_inc_kernel_3mm20_q = i_inc_kernel_3mm20_o[32:0];

    // bgTrunc_i_inc_kernel_3mm20_sel_x(BITSELECT,115)@4
    assign bgTrunc_i_inc_kernel_3mm20_sel_x_b = i_inc_kernel_3mm20_q[31:0];

    // valid_fanout_reg17(REG,278)@0 + 1
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

    // valid_fanout_reg16(REG,277)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist31_sync_together132_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_k_057_push48_kernel_3mm0_i_llvm_fpga_push_i32_k_057_push48_kernel_3mm1_x(FIFODELAY,238)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i32_k_057_push48_kernel_3mm0_i_llvm_fpga_push_i32_k_057_push48_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg17_q & i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_k_057_push48_kernel_3mm0_i_llvm_fpga_push_i32_k_057_push48_kernel_3mm1_x_i_valid = valid_fanout_reg16_q & redist37_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i32_k_057_push48_kernel_3mm0_i_llvm_fpga_push_i32_k_057_push48_kernel_3mm1_x_i_data = bgTrunc_i_inc_kernel_3mm20_sel_x_b;
    assign i_llvm_fpga_push_i32_k_057_push48_kernel_3mm0_i_llvm_fpga_push_i32_k_057_push48_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_k_057_push48_kernel_3mm0_i_llvm_fpga_push_i32_k_057_push48_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_k_057_push48_kernel_3mm0_i_llvm_fpga_push_i32_k_057_push48_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_k_057_push48_kernel_3mm0_i_llvm_fpga_push_i32_k_057_push48_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_k_057_push48_kernel_3mm0_i_llvm_fpga_push_i32_k_057_push48_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i32_k_057_push48_kernel_3mm0_i_llvm_fpga_push_i32_k_057_push48_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_k_057_push48_kernel_3mm0_i_llvm_fpga_push_i32_k_057_push48_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_inc_kernel_3mm20_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_k_057_push48_kernel_3mm0_i_llvm_fpga_push_i32_k_057_push48_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_k_057_pop48_kernel_3mm0_i_llvm_fpga_pop_i32_k_057_pop48_kernel_3mm9_mux_x(MUX,181)@4
    assign i_llvm_fpga_pop_i32_k_057_pop48_kernel_3mm0_i_llvm_fpga_pop_i32_k_057_pop48_kernel_3mm9_mux_x_s = redist57_i_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_k_057_pop48_kernel_3mm0_i_llvm_fpga_pop_i32_k_057_pop48_kernel_3mm9_mux_x_s or i_llvm_fpga_push_i32_k_057_push48_kernel_3mm0_i_llvm_fpga_push_i32_k_057_push48_kernel_3mm1_x_o_data or c_i32_0121_q)
    begin
        unique case (i_llvm_fpga_pop_i32_k_057_pop48_kernel_3mm0_i_llvm_fpga_pop_i32_k_057_pop48_kernel_3mm9_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_k_057_pop48_kernel_3mm0_i_llvm_fpga_pop_i32_k_057_pop48_kernel_3mm9_mux_x_q = i_llvm_fpga_push_i32_k_057_push48_kernel_3mm0_i_llvm_fpga_push_i32_k_057_push48_kernel_3mm1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_k_057_pop48_kernel_3mm0_i_llvm_fpga_pop_i32_k_057_pop48_kernel_3mm9_mux_x_q = c_i32_0121_q;
            default : i_llvm_fpga_pop_i32_k_057_pop48_kernel_3mm0_i_llvm_fpga_pop_i32_k_057_pop48_kernel_3mm9_mux_x_q = 32'b0;
        endcase
    end

    // i_idxprom18_kernel_3mm10_sel_x(BITSELECT,171)@4
    assign i_idxprom18_kernel_3mm10_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_k_057_pop48_kernel_3mm0_i_llvm_fpga_pop_i32_k_057_pop48_kernel_3mm9_mux_x_q[31:0]};

    // i_idxprom18_kernel_3mm10_vt_select_31(BITSELECT,97)@4
    assign i_idxprom18_kernel_3mm10_vt_select_31_b = i_idxprom18_kernel_3mm10_sel_x_b[31:0];

    // i_idxprom18_kernel_3mm10_vt_join(BITJOIN,96)@4
    assign i_idxprom18_kernel_3mm10_vt_join_q = {c_i32_0121_q, i_idxprom18_kernel_3mm10_vt_select_31_b};

    // i_arrayidx192_kernel_3mm0_dupName_3_trunc_sel_x(BITSELECT,145)@4
    assign i_arrayidx192_kernel_3mm0_dupName_3_trunc_sel_x_b = i_idxprom18_kernel_3mm10_vt_join_q[8:0];

    // i_arrayidx192_kernel_3mm0_narrow_x(BITSELECT,128)@4
    assign i_arrayidx192_kernel_3mm0_narrow_x_b = i_arrayidx192_kernel_3mm0_dupName_3_trunc_sel_x_b[6:0];

    // redist54_i_arrayidx192_kernel_3mm0_narrow_x_b_2(DELAY,498)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist54_i_arrayidx192_kernel_3mm0_narrow_x_b_2_delay_0 <= $unsigned(i_arrayidx192_kernel_3mm0_narrow_x_b);
            redist54_i_arrayidx192_kernel_3mm0_narrow_x_b_2_q <= redist54_i_arrayidx192_kernel_3mm0_narrow_x_b_2_delay_0;
        end
    end

    // i_arrayidx192_kernel_3mm0_shift_join_x(BITJOIN,129)@6
    assign i_arrayidx192_kernel_3mm0_shift_join_x_q = {redist54_i_arrayidx192_kernel_3mm0_narrow_x_b_2_q, i_arrayidx192_kernel_3mm12_vt_const_1_q};

    // redist7_sync_together132_aunroll_x_in_c0_eni25_2_tpl_4_inputreg0(DELAY,506)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together132_aunroll_x_in_c0_eni25_2_tpl_4_inputreg0_q <= $unsigned(in_c0_eni25_2_tpl);
        end
    end

    // redist7_sync_together132_aunroll_x_in_c0_eni25_2_tpl_4(DELAY,451)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_together132_aunroll_x_in_c0_eni25_2_tpl_4_delay_0 <= $unsigned(redist7_sync_together132_aunroll_x_in_c0_eni25_2_tpl_4_inputreg0_q);
            redist7_sync_together132_aunroll_x_in_c0_eni25_2_tpl_4_delay_1 <= redist7_sync_together132_aunroll_x_in_c0_eni25_2_tpl_4_delay_0;
            redist7_sync_together132_aunroll_x_in_c0_eni25_2_tpl_4_q <= redist7_sync_together132_aunroll_x_in_c0_eni25_2_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg15(REG,276)@0 + 1
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

    // valid_fanout_reg14(REG,275)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist31_sync_together132_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i64_idxprom97_push56_kernel_3mm0_i_llvm_fpga_push_i64_idxprom97_push56_kernel_3mm1_x(FIFODELAY,253)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i64_idxprom97_push56_kernel_3mm0_i_llvm_fpga_push_i64_idxprom97_push56_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg15_q & i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q);
    assign i_llvm_fpga_push_i64_idxprom97_push56_kernel_3mm0_i_llvm_fpga_push_i64_idxprom97_push56_kernel_3mm1_x_i_valid = valid_fanout_reg14_q & redist37_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i64_idxprom97_push56_kernel_3mm0_i_llvm_fpga_push_i64_idxprom97_push56_kernel_3mm1_x_i_data = i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q;
    assign i_llvm_fpga_push_i64_idxprom97_push56_kernel_3mm0_i_llvm_fpga_push_i64_idxprom97_push56_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_idxprom97_push56_kernel_3mm0_i_llvm_fpga_push_i64_idxprom97_push56_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i64_idxprom97_push56_kernel_3mm0_i_llvm_fpga_push_i64_idxprom97_push56_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_idxprom97_push56_kernel_3mm0_i_llvm_fpga_push_i64_idxprom97_push56_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i64_idxprom97_push56_kernel_3mm0_i_llvm_fpga_push_i64_idxprom97_push56_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i64_idxprom97_push56_kernel_3mm0_i_llvm_fpga_push_i64_idxprom97_push56_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_idxprom97_push56_kernel_3mm0_i_llvm_fpga_push_i64_idxprom97_push56_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q),
        .o_data(i_llvm_fpga_push_i64_idxprom97_push56_kernel_3mm0_i_llvm_fpga_push_i64_idxprom97_push56_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x(MUX,185)@4
    assign i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_s = redist57_i_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_s or i_llvm_fpga_push_i64_idxprom97_push56_kernel_3mm0_i_llvm_fpga_push_i64_idxprom97_push56_kernel_3mm1_x_o_data or redist7_sync_together132_aunroll_x_in_c0_eni25_2_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q = i_llvm_fpga_push_i64_idxprom97_push56_kernel_3mm0_i_llvm_fpga_push_i64_idxprom97_push56_kernel_3mm1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q = redist7_sync_together132_aunroll_x_in_c0_eni25_2_tpl_4_q;
            default : i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q = 64'b0;
        endcase
    end

    // i_arrayidx192_kernel_3mm0_dupName_0_trunc_sel_x(BITSELECT,142)@4
    assign i_arrayidx192_kernel_3mm0_dupName_0_trunc_sel_x_b = i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q[8:0];

    // addsumAHighB_uid354_i_arrayidx192_kernel_3mm0_mult_x(ADD,353)@4
    assign addsumAHighB_uid354_i_arrayidx192_kernel_3mm0_mult_x_a = {1'b0, i_arrayidx192_kernel_3mm0_dupName_0_trunc_sel_x_b};
    assign addsumAHighB_uid354_i_arrayidx192_kernel_3mm0_mult_x_b = {3'b000, lowRangeB_uid352_i_arrayidx192_kernel_3mm0_mult_x_merged_bit_select_c};
    assign addsumAHighB_uid354_i_arrayidx192_kernel_3mm0_mult_x_o = $unsigned(addsumAHighB_uid354_i_arrayidx192_kernel_3mm0_mult_x_a) + $unsigned(addsumAHighB_uid354_i_arrayidx192_kernel_3mm0_mult_x_b);
    assign addsumAHighB_uid354_i_arrayidx192_kernel_3mm0_mult_x_q = addsumAHighB_uid354_i_arrayidx192_kernel_3mm0_mult_x_o[9:0];

    // lowRangeB_uid352_i_arrayidx192_kernel_3mm0_mult_x_merged_bit_select(BITSELECT,443)@4
    assign lowRangeB_uid352_i_arrayidx192_kernel_3mm0_mult_x_merged_bit_select_b = i_arrayidx192_kernel_3mm0_dupName_0_trunc_sel_x_b[1:0];
    assign lowRangeB_uid352_i_arrayidx192_kernel_3mm0_mult_x_merged_bit_select_c = i_arrayidx192_kernel_3mm0_dupName_0_trunc_sel_x_b[8:2];

    // add_uid355_i_arrayidx192_kernel_3mm0_mult_x(BITJOIN,354)@4
    assign add_uid355_i_arrayidx192_kernel_3mm0_mult_x_q = {addsumAHighB_uid354_i_arrayidx192_kernel_3mm0_mult_x_q, lowRangeB_uid352_i_arrayidx192_kernel_3mm0_mult_x_merged_bit_select_b};

    // sR_mergedSignalTM_uid360_i_arrayidx192_kernel_3mm0_mult_x(BITJOIN,359)@4
    assign sR_mergedSignalTM_uid360_i_arrayidx192_kernel_3mm0_mult_x_q = {add_uid355_i_arrayidx192_kernel_3mm0_mult_x_q, i_arrayidx192_kernel_3mm0_mult_multconst_x_q};

    // i_arrayidx192_kernel_3mm0_mult_extender_x(BITJOIN,139)@4
    assign i_arrayidx192_kernel_3mm0_mult_extender_x_q = {i_arrayidx192_kernel_3mm0_mult_multconst_x_q, sR_mergedSignalTM_uid360_i_arrayidx192_kernel_3mm0_mult_x_q};

    // i_arrayidx192_kernel_3mm0_dupName_1_trunc_sel_x(BITSELECT,143)@4
    assign i_arrayidx192_kernel_3mm0_dupName_1_trunc_sel_x_b = i_arrayidx192_kernel_3mm0_mult_extender_x_q[8:0];

    // redist53_i_arrayidx192_kernel_3mm0_dupName_1_trunc_sel_x_b_1(DELAY,497)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist53_i_arrayidx192_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx192_kernel_3mm0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx192_kernel_3mm0_add_x(ADD,123)@5
    assign i_arrayidx192_kernel_3mm0_add_x_a = {1'b0, i_arrayidx192_kernel_3mm0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx192_kernel_3mm0_add_x_b = {1'b0, redist53_i_arrayidx192_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx192_kernel_3mm0_add_x_o = $unsigned(i_arrayidx192_kernel_3mm0_add_x_a) + $unsigned(i_arrayidx192_kernel_3mm0_add_x_b);
    assign i_arrayidx192_kernel_3mm0_add_x_q = i_arrayidx192_kernel_3mm0_add_x_o[9:0];

    // i_arrayidx192_kernel_3mm0_dupName_2_trunc_sel_x(BITSELECT,144)@5
    assign i_arrayidx192_kernel_3mm0_dupName_2_trunc_sel_x_b = i_arrayidx192_kernel_3mm0_add_x_q[8:0];

    // redist52_i_arrayidx192_kernel_3mm0_dupName_2_trunc_sel_x_b_1(DELAY,496)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist52_i_arrayidx192_kernel_3mm0_dupName_2_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx192_kernel_3mm0_dupName_2_trunc_sel_x_b);
        end
    end

    // i_arrayidx192_kernel_3mm0_dupName_0_add_x(ADD,133)@6
    assign i_arrayidx192_kernel_3mm0_dupName_0_add_x_a = {1'b0, redist52_i_arrayidx192_kernel_3mm0_dupName_2_trunc_sel_x_b_1_q};
    assign i_arrayidx192_kernel_3mm0_dupName_0_add_x_b = {1'b0, i_arrayidx192_kernel_3mm0_shift_join_x_q};
    assign i_arrayidx192_kernel_3mm0_dupName_0_add_x_o = $unsigned(i_arrayidx192_kernel_3mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx192_kernel_3mm0_dupName_0_add_x_b);
    assign i_arrayidx192_kernel_3mm0_dupName_0_add_x_q = i_arrayidx192_kernel_3mm0_dupName_0_add_x_o[9:0];

    // i_arrayidx192_kernel_3mm0_dupName_5_trunc_sel_x(BITSELECT,146)@6
    assign i_arrayidx192_kernel_3mm0_dupName_5_trunc_sel_x_b = i_arrayidx192_kernel_3mm0_dupName_0_add_x_q[8:0];

    // i_arrayidx192_kernel_3mm0_append_upper_bits_x(BITJOIN,124)@6
    assign i_arrayidx192_kernel_3mm0_append_upper_bits_x_q = {redist1_i_arrayidx192_kernel_3mm0_upper_bits_x_merged_bit_select_b_1_q, i_arrayidx192_kernel_3mm0_dupName_5_trunc_sel_x_b};

    // i_arrayidx192_kernel_3mm12_vt_select_63(BITSELECT,88)@6
    assign i_arrayidx192_kernel_3mm12_vt_select_63_b = i_arrayidx192_kernel_3mm0_append_upper_bits_x_q[63:2];

    // i_arrayidx192_kernel_3mm12_vt_const_1(CONSTANT,86)
    assign i_arrayidx192_kernel_3mm12_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx192_kernel_3mm12_vt_join(BITJOIN,87)@6
    assign i_arrayidx192_kernel_3mm12_vt_join_q = {i_arrayidx192_kernel_3mm12_vt_select_63_b, i_arrayidx192_kernel_3mm12_vt_const_1_q};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_mem_unnamed_kernel_3mm3_kernel_3mm13(BLACKBOX,103)@6
    // out out_o_almost_empty@10
    // out out_o_empty@10
    // out out_o_readdata@10
    // out out_o_stall@10
    // out out_o_valid@10
    // out out_unnamed_kernel_3mm3_kernel_3mm_avm_address@20000000
    // out out_unnamed_kernel_3mm3_kernel_3mm_avm_burstcount@20000000
    // out out_unnamed_kernel_3mm3_kernel_3mm_avm_byteenable@20000000
    // out out_unnamed_kernel_3mm3_kernel_3mm_avm_enable@20000000
    // out out_unnamed_kernel_3mm3_kernel_3mm_avm_read@20000000
    // out out_unnamed_kernel_3mm3_kernel_3mm_avm_write@20000000
    // out out_unnamed_kernel_3mm3_kernel_3mm_avm_writedata@20000000
    kernel_3mm_i_llvm_fpga_mem_unnamed_3_kernel_3mm0 thei_llvm_fpga_mem_unnamed_kernel_3mm3_kernel_3mm13 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx192_kernel_3mm12_vt_join_q),
        .in_i_predicate(i_kernel_3mm_b4_current_iter_isspec_kernel_3mm5_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_unnamed_kernel_3mm3_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm3_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm3_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm3_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm3_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm3_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm3_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm3_kernel_3mm_avm_writeack),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_kernel_3mm3_kernel_3mm13_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_kernel_3mm3_kernel_3mm_avm_address(i_llvm_fpga_mem_unnamed_kernel_3mm3_kernel_3mm13_out_unnamed_kernel_3mm3_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm3_kernel_3mm_avm_burstcount(i_llvm_fpga_mem_unnamed_kernel_3mm3_kernel_3mm13_out_unnamed_kernel_3mm3_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm3_kernel_3mm_avm_byteenable(i_llvm_fpga_mem_unnamed_kernel_3mm3_kernel_3mm13_out_unnamed_kernel_3mm3_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm3_kernel_3mm_avm_enable(i_llvm_fpga_mem_unnamed_kernel_3mm3_kernel_3mm13_out_unnamed_kernel_3mm3_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm3_kernel_3mm_avm_read(i_llvm_fpga_mem_unnamed_kernel_3mm3_kernel_3mm13_out_unnamed_kernel_3mm3_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm3_kernel_3mm_avm_write(i_llvm_fpga_mem_unnamed_kernel_3mm3_kernel_3mm13_out_unnamed_kernel_3mm3_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm3_kernel_3mm_avm_writedata(i_llvm_fpga_mem_unnamed_kernel_3mm3_kernel_3mm13_out_unnamed_kernel_3mm3_kernel_3mm_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,84)
    assign out_unnamed_kernel_3mm3_kernel_3mm_avm_address = i_llvm_fpga_mem_unnamed_kernel_3mm3_kernel_3mm13_out_unnamed_kernel_3mm3_kernel_3mm_avm_address;
    assign out_unnamed_kernel_3mm3_kernel_3mm_avm_enable = i_llvm_fpga_mem_unnamed_kernel_3mm3_kernel_3mm13_out_unnamed_kernel_3mm3_kernel_3mm_avm_enable;
    assign out_unnamed_kernel_3mm3_kernel_3mm_avm_read = i_llvm_fpga_mem_unnamed_kernel_3mm3_kernel_3mm13_out_unnamed_kernel_3mm3_kernel_3mm_avm_read;
    assign out_unnamed_kernel_3mm3_kernel_3mm_avm_write = i_llvm_fpga_mem_unnamed_kernel_3mm3_kernel_3mm13_out_unnamed_kernel_3mm3_kernel_3mm_avm_write;
    assign out_unnamed_kernel_3mm3_kernel_3mm_avm_writedata = i_llvm_fpga_mem_unnamed_kernel_3mm3_kernel_3mm13_out_unnamed_kernel_3mm3_kernel_3mm_avm_writedata;
    assign out_unnamed_kernel_3mm3_kernel_3mm_avm_byteenable = i_llvm_fpga_mem_unnamed_kernel_3mm3_kernel_3mm13_out_unnamed_kernel_3mm3_kernel_3mm_avm_byteenable;
    assign out_unnamed_kernel_3mm3_kernel_3mm_avm_burstcount = i_llvm_fpga_mem_unnamed_kernel_3mm3_kernel_3mm13_out_unnamed_kernel_3mm3_kernel_3mm_avm_burstcount;

    // regfree_osync(GPOUT,111)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going43_kernel_3mm6_out_exiting_valid_out;

    // valid_fanout_reg9(REG,270)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist34_sync_together132_aunroll_x_in_i_valid_5_q);
        end
    end

    // c_kernel_3mm_B_local_pmem(CONSTANT,82)
    assign c_kernel_3mm_B_local_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx233_kernel_3mm0_upper_bits_x_merged_bit_select(BITSELECT,440)@5
    assign i_arrayidx233_kernel_3mm0_upper_bits_x_merged_bit_select_b = c_kernel_3mm_B_local_pmem_q[63:9];
    assign i_arrayidx233_kernel_3mm0_upper_bits_x_merged_bit_select_c = c_kernel_3mm_B_local_pmem_q[8:0];

    // redist0_i_arrayidx233_kernel_3mm0_upper_bits_x_merged_bit_select_b_1(DELAY,444)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_arrayidx233_kernel_3mm0_upper_bits_x_merged_bit_select_b_1_q <= $unsigned(i_arrayidx233_kernel_3mm0_upper_bits_x_merged_bit_select_b);
        end
    end

    // redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_offset(CONSTANT,511)
    assign redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_offset_q = $unsigned(2'b11);

    // redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_rdcnt(ADD,512)
    assign redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_rdcnt_a = {1'b0, redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_wraddr_q};
    assign redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_rdcnt_b = {1'b0, redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_rdcnt_o <= $unsigned(redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_rdcnt_a) + $unsigned(redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_rdcnt_b);
        end
    end
    assign redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_rdcnt_q = redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_rdcnt_o[2:0];

    // redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_inputreg0(DELAY,507)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_inputreg0_q <= $unsigned(in_c0_eni25_3_tpl);
        end
    end

    // redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_wraddr(COUNTER,510)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_wraddr_i <= $unsigned(redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_wraddr_i) + $unsigned(2'd1);
        end
    end
    assign redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_wraddr_q = redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_wraddr_i[1:0];

    // redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_mem(DUALMEM,509)
    assign redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_mem_ia = $unsigned(redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_inputreg0_q);
    assign redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_mem_aa = redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_wraddr_q;
    assign redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_mem_ab = redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_rdcnt_q[1:0];
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
    ) redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_mem_aa),
        .data_a(redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_mem_ab),
        .q_b(redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_mem_iq),
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
    assign redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_mem_q = redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_mem_iq[63:0];

    // redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_outputreg0(DELAY,508)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_outputreg0_q <= $unsigned(redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_mem_q);
        end
    end

    // valid_fanout_reg13(REG,274)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist31_sync_together132_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg12(REG,273)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist33_sync_together132_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i64_idxprom1199_push57_kernel_3mm0_i_llvm_fpga_push_i64_idxprom1199_push57_kernel_3mm1_x(FIFODELAY,250)@3 + 1
    // in i_valid@5
    // in i_write_pred@5
    // in i_data@6
    // out o_data@6
    assign i_llvm_fpga_push_i64_idxprom1199_push57_kernel_3mm0_i_llvm_fpga_push_i64_idxprom1199_push57_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg13_q & redist37_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_2_q);
    assign i_llvm_fpga_push_i64_idxprom1199_push57_kernel_3mm0_i_llvm_fpga_push_i64_idxprom1199_push57_kernel_3mm1_x_i_valid = valid_fanout_reg12_q & redist39_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_i64_idxprom1199_push57_kernel_3mm0_i_llvm_fpga_push_i64_idxprom1199_push57_kernel_3mm1_x_i_data = i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q;
    assign i_llvm_fpga_push_i64_idxprom1199_push57_kernel_3mm0_i_llvm_fpga_push_i64_idxprom1199_push57_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_idxprom1199_push57_kernel_3mm0_i_llvm_fpga_push_i64_idxprom1199_push57_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i64_idxprom1199_push57_kernel_3mm0_i_llvm_fpga_push_i64_idxprom1199_push57_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_idxprom1199_push57_kernel_3mm0_i_llvm_fpga_push_i64_idxprom1199_push57_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i64_idxprom1199_push57_kernel_3mm0_i_llvm_fpga_push_i64_idxprom1199_push57_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i64_idxprom1199_push57_kernel_3mm0_i_llvm_fpga_push_i64_idxprom1199_push57_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_idxprom1199_push57_kernel_3mm0_i_llvm_fpga_push_i64_idxprom1199_push57_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q),
        .o_data(i_llvm_fpga_push_i64_idxprom1199_push57_kernel_3mm0_i_llvm_fpga_push_i64_idxprom1199_push57_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x(MUX,184)@6
    assign i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_s = redist58_i_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3_out_buffer_out_6_q;
    always @(i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_s or i_llvm_fpga_push_i64_idxprom1199_push57_kernel_3mm0_i_llvm_fpga_push_i64_idxprom1199_push57_kernel_3mm1_x_o_data or redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_outputreg0_q)
    begin
        unique case (i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q = i_llvm_fpga_push_i64_idxprom1199_push57_kernel_3mm0_i_llvm_fpga_push_i64_idxprom1199_push57_kernel_3mm1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q = redist8_sync_together132_aunroll_x_in_c0_eni25_3_tpl_6_outputreg0_q;
            default : i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q = 64'b0;
        endcase
    end

    // i_arrayidx233_kernel_3mm0_dupName_3_trunc_sel_x(BITSELECT,169)@6
    assign i_arrayidx233_kernel_3mm0_dupName_3_trunc_sel_x_b = i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q[8:0];

    // i_arrayidx233_kernel_3mm0_narrow_x(BITSELECT,152)@6
    assign i_arrayidx233_kernel_3mm0_narrow_x_b = i_arrayidx233_kernel_3mm0_dupName_3_trunc_sel_x_b[6:0];

    // i_arrayidx233_kernel_3mm0_shift_join_x(BITJOIN,153)@6
    assign i_arrayidx233_kernel_3mm0_shift_join_x_q = {i_arrayidx233_kernel_3mm0_narrow_x_b, i_arrayidx192_kernel_3mm12_vt_const_1_q};

    // highBBits_uid399_i_arrayidx233_kernel_3mm0_mult_x(BITSELECT,398)@4
    assign highBBits_uid399_i_arrayidx233_kernel_3mm0_mult_x_b = i_arrayidx192_kernel_3mm0_dupName_3_trunc_sel_x_b[8:2];

    // addsumAHighB_uid400_i_arrayidx233_kernel_3mm0_mult_x(ADD,399)@4
    assign addsumAHighB_uid400_i_arrayidx233_kernel_3mm0_mult_x_a = {1'b0, i_arrayidx192_kernel_3mm0_dupName_3_trunc_sel_x_b};
    assign addsumAHighB_uid400_i_arrayidx233_kernel_3mm0_mult_x_b = {3'b000, highBBits_uid399_i_arrayidx233_kernel_3mm0_mult_x_b};
    assign addsumAHighB_uid400_i_arrayidx233_kernel_3mm0_mult_x_o = $unsigned(addsumAHighB_uid400_i_arrayidx233_kernel_3mm0_mult_x_a) + $unsigned(addsumAHighB_uid400_i_arrayidx233_kernel_3mm0_mult_x_b);
    assign addsumAHighB_uid400_i_arrayidx233_kernel_3mm0_mult_x_q = addsumAHighB_uid400_i_arrayidx233_kernel_3mm0_mult_x_o[9:0];

    // lowRangeB_uid398_i_arrayidx233_kernel_3mm0_mult_x(BITSELECT,397)@4
    assign lowRangeB_uid398_i_arrayidx233_kernel_3mm0_mult_x_in = i_arrayidx192_kernel_3mm0_dupName_3_trunc_sel_x_b[1:0];
    assign lowRangeB_uid398_i_arrayidx233_kernel_3mm0_mult_x_b = lowRangeB_uid398_i_arrayidx233_kernel_3mm0_mult_x_in[1:0];

    // add_uid401_i_arrayidx233_kernel_3mm0_mult_x(BITJOIN,400)@4
    assign add_uid401_i_arrayidx233_kernel_3mm0_mult_x_q = {addsumAHighB_uid400_i_arrayidx233_kernel_3mm0_mult_x_q, lowRangeB_uid398_i_arrayidx233_kernel_3mm0_mult_x_b};

    // sR_mergedSignalTM_uid406_i_arrayidx233_kernel_3mm0_mult_x(BITJOIN,405)@4
    assign sR_mergedSignalTM_uid406_i_arrayidx233_kernel_3mm0_mult_x_q = {add_uid401_i_arrayidx233_kernel_3mm0_mult_x_q, i_arrayidx192_kernel_3mm0_mult_multconst_x_q};

    // i_arrayidx233_kernel_3mm0_mult_extender_x(BITJOIN,163)@4
    assign i_arrayidx233_kernel_3mm0_mult_extender_x_q = {i_arrayidx192_kernel_3mm0_mult_multconst_x_q, sR_mergedSignalTM_uid406_i_arrayidx233_kernel_3mm0_mult_x_q};

    // i_arrayidx233_kernel_3mm0_dupName_1_trunc_sel_x(BITSELECT,167)@4
    assign i_arrayidx233_kernel_3mm0_dupName_1_trunc_sel_x_b = i_arrayidx233_kernel_3mm0_mult_extender_x_q[8:0];

    // redist51_i_arrayidx233_kernel_3mm0_dupName_1_trunc_sel_x_b_1(DELAY,495)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist51_i_arrayidx233_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx233_kernel_3mm0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx233_kernel_3mm0_add_x(ADD,147)@5
    assign i_arrayidx233_kernel_3mm0_add_x_a = {1'b0, i_arrayidx233_kernel_3mm0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx233_kernel_3mm0_add_x_b = {1'b0, redist51_i_arrayidx233_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx233_kernel_3mm0_add_x_o = $unsigned(i_arrayidx233_kernel_3mm0_add_x_a) + $unsigned(i_arrayidx233_kernel_3mm0_add_x_b);
    assign i_arrayidx233_kernel_3mm0_add_x_q = i_arrayidx233_kernel_3mm0_add_x_o[9:0];

    // i_arrayidx233_kernel_3mm0_dupName_2_trunc_sel_x(BITSELECT,168)@5
    assign i_arrayidx233_kernel_3mm0_dupName_2_trunc_sel_x_b = i_arrayidx233_kernel_3mm0_add_x_q[8:0];

    // redist50_i_arrayidx233_kernel_3mm0_dupName_2_trunc_sel_x_b_1(DELAY,494)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist50_i_arrayidx233_kernel_3mm0_dupName_2_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx233_kernel_3mm0_dupName_2_trunc_sel_x_b);
        end
    end

    // i_arrayidx233_kernel_3mm0_dupName_0_add_x(ADD,157)@6
    assign i_arrayidx233_kernel_3mm0_dupName_0_add_x_a = {1'b0, redist50_i_arrayidx233_kernel_3mm0_dupName_2_trunc_sel_x_b_1_q};
    assign i_arrayidx233_kernel_3mm0_dupName_0_add_x_b = {1'b0, i_arrayidx233_kernel_3mm0_shift_join_x_q};
    assign i_arrayidx233_kernel_3mm0_dupName_0_add_x_o = $unsigned(i_arrayidx233_kernel_3mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx233_kernel_3mm0_dupName_0_add_x_b);
    assign i_arrayidx233_kernel_3mm0_dupName_0_add_x_q = i_arrayidx233_kernel_3mm0_dupName_0_add_x_o[9:0];

    // i_arrayidx233_kernel_3mm0_dupName_5_trunc_sel_x(BITSELECT,170)@6
    assign i_arrayidx233_kernel_3mm0_dupName_5_trunc_sel_x_b = i_arrayidx233_kernel_3mm0_dupName_0_add_x_q[8:0];

    // i_arrayidx233_kernel_3mm0_append_upper_bits_x(BITJOIN,148)@6
    assign i_arrayidx233_kernel_3mm0_append_upper_bits_x_q = {redist0_i_arrayidx233_kernel_3mm0_upper_bits_x_merged_bit_select_b_1_q, i_arrayidx233_kernel_3mm0_dupName_5_trunc_sel_x_b};

    // i_arrayidx233_kernel_3mm15_vt_select_63(BITSELECT,91)@6
    assign i_arrayidx233_kernel_3mm15_vt_select_63_b = i_arrayidx233_kernel_3mm0_append_upper_bits_x_q[63:2];

    // i_arrayidx233_kernel_3mm15_vt_join(BITJOIN,90)@6
    assign i_arrayidx233_kernel_3mm15_vt_join_q = {i_arrayidx233_kernel_3mm15_vt_select_63_b, i_arrayidx192_kernel_3mm12_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm16(BLACKBOX,104)@6
    // out out_o_almost_empty@10
    // out out_o_empty@10
    // out out_o_readdata@10
    // out out_o_stall@10
    // out out_o_valid@10
    // out out_unnamed_kernel_3mm4_kernel_3mm_avm_address@20000000
    // out out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount@20000000
    // out out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable@20000000
    // out out_unnamed_kernel_3mm4_kernel_3mm_avm_enable@20000000
    // out out_unnamed_kernel_3mm4_kernel_3mm_avm_read@20000000
    // out out_unnamed_kernel_3mm4_kernel_3mm_avm_write@20000000
    // out out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata@20000000
    kernel_3mm_i_llvm_fpga_mem_unnamed_4_kernel_3mm0 thei_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm16 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx233_kernel_3mm15_vt_join_q),
        .in_i_predicate(i_kernel_3mm_b4_current_iter_isspec_kernel_3mm5_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg9_q),
        .in_unnamed_kernel_3mm4_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm4_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm4_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm4_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm4_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm4_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm4_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm4_kernel_3mm_avm_writeack),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm16_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_address(i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm16_out_unnamed_kernel_3mm4_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount(i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm16_out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable(i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm16_out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_enable(i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm16_out_unnamed_kernel_3mm4_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_read(i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm16_out_unnamed_kernel_3mm4_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_write(i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm16_out_unnamed_kernel_3mm4_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata(i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm16_out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,119)
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_address = i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm16_out_unnamed_kernel_3mm4_kernel_3mm_avm_address;
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_enable = i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm16_out_unnamed_kernel_3mm4_kernel_3mm_avm_enable;
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_read = i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm16_out_unnamed_kernel_3mm4_kernel_3mm_avm_read;
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_write = i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm16_out_unnamed_kernel_3mm4_kernel_3mm_avm_write;
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata = i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm16_out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata;
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable = i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm16_out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable;
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount = i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm16_out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount;

    // dupName_0_regfree_osync_x(GPOUT,120)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going43_kernel_3mm6_out_pipeline_dummy_out;

    // dupName_1_regfree_osync_x(GPOUT,121)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going43_kernel_3mm6_out_pipeline_forked_out;

    // dupName_2_regfree_osync_x(GPOUT,122)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going43_kernel_3mm6_out_pipeline_valid_out;

    // redist35_sync_together132_aunroll_x_in_i_valid_13(DELAY,479)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("SYNC"), .phase(5), .modulus(2), .reset_high(1'b0) )
    redist35_sync_together132_aunroll_x_in_i_valid_13 ( .xin(redist34_sync_together132_aunroll_x_in_i_valid_5_q), .xout(redist35_sync_together132_aunroll_x_in_i_valid_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist36_sync_together132_aunroll_x_in_i_valid_16(DELAY,480)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist36_sync_together132_aunroll_x_in_i_valid_16_delay_0 <= $unsigned(redist35_sync_together132_aunroll_x_in_i_valid_13_q);
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist36_sync_together132_aunroll_x_in_i_valid_16_delay_1 <= '0;
        end
        else
        begin
            redist36_sync_together132_aunroll_x_in_i_valid_16_delay_1 <= redist36_sync_together132_aunroll_x_in_i_valid_16_delay_0;
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist36_sync_together132_aunroll_x_in_i_valid_16_q <= redist36_sync_together132_aunroll_x_in_i_valid_16_delay_1;
        end
    end

    // valid_fanout_reg0(REG,261)@16 + 1
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist36_sync_together132_aunroll_x_in_i_valid_16_q);
        end
    end

    // redist6_valid_fanout_reg0_q_1(DELAY,450)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_valid_fanout_reg0_q_1_q <= $unsigned(valid_fanout_reg0_q);
        end
    end

    // redist61_i_kernel_3mm_b4_current_iter_isspec_kernel_3mm5_q_12(DELAY,505)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist61_i_kernel_3mm_b4_current_iter_isspec_kernel_3mm5_q_12 ( .xin(i_kernel_3mm_b4_current_iter_isspec_kernel_3mm5_q), .xout(redist61_i_kernel_3mm_b4_current_iter_isspec_kernel_3mm5_q_12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist30_sync_together132_aunroll_x_in_c0_eni25_25_tpl_18(DELAY,474)
    dspba_delay_ver #( .width(1), .depth(18), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist30_sync_together132_aunroll_x_in_c0_eni25_25_tpl_18 ( .xin(in_c0_eni25_25_tpl), .xout(redist30_sync_together132_aunroll_x_in_c0_eni25_25_tpl_18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist29_sync_together132_aunroll_x_in_c0_eni25_24_tpl_18(DELAY,473)
    dspba_delay_ver #( .width(1), .depth(18), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist29_sync_together132_aunroll_x_in_c0_eni25_24_tpl_18 ( .xin(in_c0_eni25_24_tpl), .xout(redist29_sync_together132_aunroll_x_in_c0_eni25_24_tpl_18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist28_sync_together132_aunroll_x_in_c0_eni25_23_tpl_18(DELAY,472)
    dspba_delay_ver #( .width(1), .depth(18), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist28_sync_together132_aunroll_x_in_c0_eni25_23_tpl_18 ( .xin(in_c0_eni25_23_tpl), .xout(redist28_sync_together132_aunroll_x_in_c0_eni25_23_tpl_18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist27_sync_together132_aunroll_x_in_c0_eni25_22_tpl_18(DELAY,471)
    dspba_delay_ver #( .width(1), .depth(18), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist27_sync_together132_aunroll_x_in_c0_eni25_22_tpl_18 ( .xin(in_c0_eni25_22_tpl), .xout(redist27_sync_together132_aunroll_x_in_c0_eni25_22_tpl_18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist26_sync_together132_aunroll_x_in_c0_eni25_21_tpl_18(DELAY,470)
    dspba_delay_ver #( .width(1), .depth(18), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist26_sync_together132_aunroll_x_in_c0_eni25_21_tpl_18 ( .xin(in_c0_eni25_21_tpl), .xout(redist26_sync_together132_aunroll_x_in_c0_eni25_21_tpl_18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist25_sync_together132_aunroll_x_in_c0_eni25_20_tpl_18(DELAY,469)
    dspba_delay_ver #( .width(1), .depth(18), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist25_sync_together132_aunroll_x_in_c0_eni25_20_tpl_18 ( .xin(in_c0_eni25_20_tpl), .xout(redist25_sync_together132_aunroll_x_in_c0_eni25_20_tpl_18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_offset(CONSTANT,522)
    assign redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_offset_q = $unsigned(4'b0011);

    // redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_rdcnt(ADD,530)
    assign redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_rdcnt_a = {1'b0, redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_wraddr_q};
    assign redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_rdcnt_b = {1'b0, redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_rdcnt_o <= $unsigned(redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_rdcnt_a) + $unsigned(redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_rdcnt_b);
        end
    end
    assign redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_rdcnt_q = redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_rdcnt_o[4:0];

    // redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_inputreg0(DELAY,525)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_inputreg0_q <= $unsigned(in_c0_eni25_19_tpl);
        end
    end

    // redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_wraddr(COUNTER,528)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_wraddr_i <= $unsigned(redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_wraddr_q = redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_wraddr_i[3:0];

    // redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_mem(DUALMEM,527)
    assign redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_mem_ia = $unsigned(redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_inputreg0_q);
    assign redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_mem_aa = redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_wraddr_q;
    assign redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_mem_ab = redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_rdcnt_q[3:0];
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
    ) redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_mem_aa),
        .data_a(redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_mem_ab),
        .q_b(redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_mem_iq),
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
    assign redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_mem_q = redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_mem_iq[31:0];

    // redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_outputreg0(DELAY,526)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_outputreg0_q <= $unsigned(redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_mem_q);
        end
    end

    // redist23_sync_together132_aunroll_x_in_c0_eni25_18_tpl_18(DELAY,467)
    dspba_delay_ver #( .width(1), .depth(18), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist23_sync_together132_aunroll_x_in_c0_eni25_18_tpl_18 ( .xin(in_c0_eni25_18_tpl), .xout(redist23_sync_together132_aunroll_x_in_c0_eni25_18_tpl_18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist22_sync_together132_aunroll_x_in_c0_eni25_17_tpl_18(DELAY,466)
    dspba_delay_ver #( .width(1), .depth(18), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist22_sync_together132_aunroll_x_in_c0_eni25_17_tpl_18 ( .xin(in_c0_eni25_17_tpl), .xout(redist22_sync_together132_aunroll_x_in_c0_eni25_17_tpl_18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist21_sync_together132_aunroll_x_in_c0_eni25_16_tpl_18(DELAY,465)
    dspba_delay_ver #( .width(1), .depth(18), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist21_sync_together132_aunroll_x_in_c0_eni25_16_tpl_18 ( .xin(in_c0_eni25_16_tpl), .xout(redist21_sync_together132_aunroll_x_in_c0_eni25_16_tpl_18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist20_sync_together132_aunroll_x_in_c0_eni25_15_tpl_18(DELAY,464)
    dspba_delay_ver #( .width(1), .depth(18), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist20_sync_together132_aunroll_x_in_c0_eni25_15_tpl_18 ( .xin(in_c0_eni25_15_tpl), .xout(redist20_sync_together132_aunroll_x_in_c0_eni25_15_tpl_18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist19_sync_together132_aunroll_x_in_c0_eni25_14_tpl_18(DELAY,463)
    dspba_delay_ver #( .width(1), .depth(18), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist19_sync_together132_aunroll_x_in_c0_eni25_14_tpl_18 ( .xin(in_c0_eni25_14_tpl), .xout(redist19_sync_together132_aunroll_x_in_c0_eni25_14_tpl_18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist18_sync_together132_aunroll_x_in_c0_eni25_13_tpl_4(DELAY,462)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist18_sync_together132_aunroll_x_in_c0_eni25_13_tpl_4_delay_0 <= $unsigned(in_c0_eni25_13_tpl);
            redist18_sync_together132_aunroll_x_in_c0_eni25_13_tpl_4_delay_1 <= redist18_sync_together132_aunroll_x_in_c0_eni25_13_tpl_4_delay_0;
            redist18_sync_together132_aunroll_x_in_c0_eni25_13_tpl_4_delay_2 <= redist18_sync_together132_aunroll_x_in_c0_eni25_13_tpl_4_delay_1;
            redist18_sync_together132_aunroll_x_in_c0_eni25_13_tpl_4_q <= redist18_sync_together132_aunroll_x_in_c0_eni25_13_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm0_element_extension2_x(BITJOIN,225)@5
    assign i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm0_element_extension2_x_q = {i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_c_i7_03_x_q, i_llvm_fpga_pop_i1_notcmp46102_pop59_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp46102_pop59_kernel_3mm48_mux_x_q};

    // valid_fanout_reg49(REG,310)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg49_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg48(REG,309)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg48_q <= $unsigned(redist32_sync_together132_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm0_i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm1_x(FIFODELAY,226)@1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@4
    assign i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm0_i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg49_q & i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm0_i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm1_x_i_valid = valid_fanout_reg48_q & redist38_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm0_i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm1_x_i_data = i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm0_i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm0_i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm0_i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm0_i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm0_i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm0_i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm0_i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm0_i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm0_adapt_scalar_trunc4_sel_x(BITSELECT,228)@4
    assign i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm0_i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_notcmp46102_pop59_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp46102_pop59_kernel_3mm48_mux_x(MUX,178)@4 + 1
    assign i_llvm_fpga_pop_i1_notcmp46102_pop59_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp46102_pop59_kernel_3mm48_mux_x_s = redist57_i_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3_out_buffer_out_4_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i1_notcmp46102_pop59_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp46102_pop59_kernel_3mm48_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i1_notcmp46102_pop59_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp46102_pop59_kernel_3mm48_mux_x_q <= i_llvm_fpga_push_i1_notcmp46102_push59_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
                1'b1 : i_llvm_fpga_pop_i1_notcmp46102_pop59_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp46102_pop59_kernel_3mm48_mux_x_q <= redist18_sync_together132_aunroll_x_in_c0_eni25_13_tpl_4_q;
                default : i_llvm_fpga_pop_i1_notcmp46102_pop59_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp46102_pop59_kernel_3mm48_mux_x_q <= 1'b0;
            endcase
        end
    end

    // redist46_i_llvm_fpga_pop_i1_notcmp46102_pop59_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp46102_pop59_kernel_3mm48_mux_x_q_14(DELAY,490)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist46_i_llvm_fpga_pop_i1_notcmp46102_pop59_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp46102_pop59_kernel_3mm48_mux_x_q_14 ( .xin(i_llvm_fpga_pop_i1_notcmp46102_pop59_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp46102_pop59_kernel_3mm48_mux_x_q), .xout(redist46_i_llvm_fpga_pop_i1_notcmp46102_pop59_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp46102_pop59_kernel_3mm48_mux_x_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_offset(CONSTANT,535)
    assign redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_offset_q = $unsigned(4'b0111);

    // redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_rdcnt(ADD,536)
    assign redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_rdcnt_a = {1'b0, redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_wraddr_q};
    assign redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_rdcnt_b = {1'b0, redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_rdcnt_o <= $unsigned(redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_rdcnt_a) + $unsigned(redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_rdcnt_b);
        end
    end
    assign redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_rdcnt_q = redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_rdcnt_o[4:0];

    // redist17_sync_together132_aunroll_x_in_c0_eni25_12_tpl_4_inputreg0(DELAY,524)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_sync_together132_aunroll_x_in_c0_eni25_12_tpl_4_inputreg0_q <= $unsigned(in_c0_eni25_12_tpl);
        end
    end

    // redist17_sync_together132_aunroll_x_in_c0_eni25_12_tpl_4(DELAY,461)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_sync_together132_aunroll_x_in_c0_eni25_12_tpl_4_delay_0 <= $unsigned(redist17_sync_together132_aunroll_x_in_c0_eni25_12_tpl_4_inputreg0_q);
            redist17_sync_together132_aunroll_x_in_c0_eni25_12_tpl_4_delay_1 <= redist17_sync_together132_aunroll_x_in_c0_eni25_12_tpl_4_delay_0;
            redist17_sync_together132_aunroll_x_in_c0_eni25_12_tpl_4_q <= redist17_sync_together132_aunroll_x_in_c0_eni25_12_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg46(REG,307)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg46_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg45(REG,306)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg45_q <= $unsigned(redist31_sync_together132_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_p68i32_arrayidx121101_push58_kernel_3mm0_i_llvm_fpga_push_p68i32_arrayidx121101_push58_kernel_3mm1_x(FIFODELAY,256)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_p68i32_arrayidx121101_push58_kernel_3mm0_i_llvm_fpga_push_p68i32_arrayidx121101_push58_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg46_q & i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q);
    assign i_llvm_fpga_push_p68i32_arrayidx121101_push58_kernel_3mm0_i_llvm_fpga_push_p68i32_arrayidx121101_push58_kernel_3mm1_x_i_valid = valid_fanout_reg45_q & redist37_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_p68i32_arrayidx121101_push58_kernel_3mm0_i_llvm_fpga_push_p68i32_arrayidx121101_push58_kernel_3mm1_x_i_data = i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q;
    assign i_llvm_fpga_push_p68i32_arrayidx121101_push58_kernel_3mm0_i_llvm_fpga_push_p68i32_arrayidx121101_push58_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_p68i32_arrayidx121101_push58_kernel_3mm0_i_llvm_fpga_push_p68i32_arrayidx121101_push58_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_p68i32_arrayidx121101_push58_kernel_3mm0_i_llvm_fpga_push_p68i32_arrayidx121101_push58_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_p68i32_arrayidx121101_push58_kernel_3mm0_i_llvm_fpga_push_p68i32_arrayidx121101_push58_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_p68i32_arrayidx121101_push58_kernel_3mm0_i_llvm_fpga_push_p68i32_arrayidx121101_push58_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_p68i32_arrayidx121101_push58_kernel_3mm0_i_llvm_fpga_push_p68i32_arrayidx121101_push58_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_p68i32_arrayidx121101_push58_kernel_3mm0_i_llvm_fpga_push_p68i32_arrayidx121101_push58_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q),
        .o_data(i_llvm_fpga_push_p68i32_arrayidx121101_push58_kernel_3mm0_i_llvm_fpga_push_p68i32_arrayidx121101_push58_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x(MUX,186)@4
    assign i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_s = redist57_i_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_s or i_llvm_fpga_push_p68i32_arrayidx121101_push58_kernel_3mm0_i_llvm_fpga_push_p68i32_arrayidx121101_push58_kernel_3mm1_x_o_data or redist17_sync_together132_aunroll_x_in_c0_eni25_12_tpl_4_q)
    begin
        unique case (i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_s)
            1'b0 : i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q = i_llvm_fpga_push_p68i32_arrayidx121101_push58_kernel_3mm0_i_llvm_fpga_push_p68i32_arrayidx121101_push58_kernel_3mm1_x_o_data;
            1'b1 : i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q = redist17_sync_together132_aunroll_x_in_c0_eni25_12_tpl_4_q;
            default : i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q = 64'b0;
        endcase
    end

    // redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_inputreg0(DELAY,531)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_inputreg0_q <= $unsigned(i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q);
        end
    end

    // redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_wraddr(COUNTER,534)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_wraddr_i <= $unsigned(redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_wraddr_q = redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_wraddr_i[3:0];

    // redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_mem(DUALMEM,533)
    assign redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_mem_ia = $unsigned(redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_inputreg0_q);
    assign redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_mem_aa = redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_wraddr_q;
    assign redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_mem_ab = redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_rdcnt_q[3:0];
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
    ) redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_mem_aa),
        .data_a(redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_mem_ab),
        .q_b(redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_mem_iq),
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
    assign redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_mem_q = redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_mem_iq[63:0];

    // redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_outputreg0(DELAY,532)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_outputreg0_q <= $unsigned(redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_mem_q);
        end
    end

    // redist16_sync_together132_aunroll_x_in_c0_eni25_11_tpl_4(DELAY,460)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_sync_together132_aunroll_x_in_c0_eni25_11_tpl_4_delay_0 <= $unsigned(in_c0_eni25_11_tpl);
            redist16_sync_together132_aunroll_x_in_c0_eni25_11_tpl_4_delay_1 <= redist16_sync_together132_aunroll_x_in_c0_eni25_11_tpl_4_delay_0;
            redist16_sync_together132_aunroll_x_in_c0_eni25_11_tpl_4_delay_2 <= redist16_sync_together132_aunroll_x_in_c0_eni25_11_tpl_4_delay_1;
            redist16_sync_together132_aunroll_x_in_c0_eni25_11_tpl_4_q <= redist16_sync_together132_aunroll_x_in_c0_eni25_11_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm0_element_extension2_x(BITJOIN,231)@5
    assign i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm0_element_extension2_x_q = {i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_c_i7_03_x_q, i_llvm_fpga_pop_i1_notcmp5189_pop55_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp5189_pop55_kernel_3mm44_mux_x_q};

    // valid_fanout_reg43(REG,304)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg43_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg42(REG,303)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg42_q <= $unsigned(redist32_sync_together132_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm1_x(FIFODELAY,232)@1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@4
    assign i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg43_q & i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm1_x_i_valid = valid_fanout_reg42_q & redist38_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm1_x_i_data = i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm0_adapt_scalar_trunc4_sel_x(BITSELECT,234)@4
    assign i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm0_i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_notcmp5189_pop55_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp5189_pop55_kernel_3mm44_mux_x(MUX,179)@4 + 1
    assign i_llvm_fpga_pop_i1_notcmp5189_pop55_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp5189_pop55_kernel_3mm44_mux_x_s = redist57_i_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3_out_buffer_out_4_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i1_notcmp5189_pop55_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp5189_pop55_kernel_3mm44_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i1_notcmp5189_pop55_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp5189_pop55_kernel_3mm44_mux_x_q <= i_llvm_fpga_push_i1_notcmp5189_push55_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
                1'b1 : i_llvm_fpga_pop_i1_notcmp5189_pop55_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp5189_pop55_kernel_3mm44_mux_x_q <= redist16_sync_together132_aunroll_x_in_c0_eni25_11_tpl_4_q;
                default : i_llvm_fpga_pop_i1_notcmp5189_pop55_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp5189_pop55_kernel_3mm44_mux_x_q <= 1'b0;
            endcase
        end
    end

    // redist45_i_llvm_fpga_pop_i1_notcmp5189_pop55_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp5189_pop55_kernel_3mm44_mux_x_q_14(DELAY,489)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist45_i_llvm_fpga_pop_i1_notcmp5189_pop55_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp5189_pop55_kernel_3mm44_mux_x_q_14 ( .xin(i_llvm_fpga_pop_i1_notcmp5189_pop55_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp5189_pop55_kernel_3mm44_mux_x_q), .xout(redist45_i_llvm_fpga_pop_i1_notcmp5189_pop55_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp5189_pop55_kernel_3mm44_mux_x_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_rdcnt(ADD,523)
    assign redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_rdcnt_a = {1'b0, redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_wraddr_q};
    assign redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_rdcnt_b = {1'b0, redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_rdcnt_o <= $unsigned(redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_rdcnt_a) + $unsigned(redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_rdcnt_b);
        end
    end
    assign redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_rdcnt_q = redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_rdcnt_o[4:0];

    // redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_inputreg0(DELAY,519)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_inputreg0_q <= $unsigned(in_c0_eni25_10_tpl);
        end
    end

    // redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_wraddr(COUNTER,521)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_wraddr_i <= $unsigned(redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_wraddr_q = redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_wraddr_i[3:0];

    // redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_mem(DUALMEM,520)
    assign redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_mem_ia = $unsigned(redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_inputreg0_q);
    assign redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_mem_aa = redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_wraddr_q;
    assign redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_mem_ab = redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_rdcnt_q[3:0];
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
    ) redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_mem_aa),
        .data_a(redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_mem_ab),
        .q_b(redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_mem_iq),
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
    assign redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_mem_q = redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_mem_iq[31:0];

    // redist40_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_13(DELAY,484)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist40_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_13 ( .xin(redist39_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_4_q), .xout(redist40_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg40(REG,301)@13 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg40_q <= $unsigned(redist35_sync_together132_aunroll_x_in_i_valid_13_q);
        end
    end

    // redist41_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_16(DELAY,485)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist41_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_16_delay_0 <= $unsigned(redist40_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_13_q);
            redist41_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_16_delay_1 <= redist41_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_16_delay_0;
            redist41_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_16_q <= redist41_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_16_delay_1;
        end
    end

    // valid_fanout_reg39(REG,300)@16 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg39_q <= $unsigned(redist36_sync_together132_aunroll_x_in_i_valid_16_q);
        end
    end

    // i_llvm_fpga_push_i32_i_060_pop2386_push54_kernel_3mm0_i_llvm_fpga_push_i32_i_060_pop2386_push54_kernel_3mm1_x(FIFODELAY,235)@14
    // in i_valid@17
    // in i_write_pred@17
    // in i_data@18
    // out o_data@17
    assign i_llvm_fpga_push_i32_i_060_pop2386_push54_kernel_3mm0_i_llvm_fpga_push_i32_i_060_pop2386_push54_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg40_q & redist40_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_13_q);
    assign i_llvm_fpga_push_i32_i_060_pop2386_push54_kernel_3mm0_i_llvm_fpga_push_i32_i_060_pop2386_push54_kernel_3mm1_x_i_valid = valid_fanout_reg39_q & redist41_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_16_q;
    assign i_llvm_fpga_push_i32_i_060_pop2386_push54_kernel_3mm0_i_llvm_fpga_push_i32_i_060_pop2386_push54_kernel_3mm1_x_i_data = i_llvm_fpga_pop_i32_i_060_pop2386_pop54_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2386_pop54_kernel_3mm42_mux_x_q;
    assign i_llvm_fpga_push_i32_i_060_pop2386_push54_kernel_3mm0_i_llvm_fpga_push_i32_i_060_pop2386_push54_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_i_060_pop2386_push54_kernel_3mm0_i_llvm_fpga_push_i32_i_060_pop2386_push54_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_i_060_pop2386_push54_kernel_3mm0_i_llvm_fpga_push_i32_i_060_pop2386_push54_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_i_060_pop2386_push54_kernel_3mm0_i_llvm_fpga_push_i32_i_060_pop2386_push54_kernel_3mm1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(32),
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
    ) thei_llvm_fpga_push_i32_i_060_pop2386_push54_kernel_3mm0_i_llvm_fpga_push_i32_i_060_pop2386_push54_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i32_i_060_pop2386_push54_kernel_3mm0_i_llvm_fpga_push_i32_i_060_pop2386_push54_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_i_060_pop2386_push54_kernel_3mm0_i_llvm_fpga_push_i32_i_060_pop2386_push54_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i32_i_060_pop2386_pop54_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2386_pop54_kernel_3mm42_mux_x_q),
        .o_data(i_llvm_fpga_push_i32_i_060_pop2386_push54_kernel_3mm0_i_llvm_fpga_push_i32_i_060_pop2386_push54_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // redist59_i_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3_out_buffer_out_17(DELAY,503)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist59_i_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3_out_buffer_out_17 ( .xin(redist58_i_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3_out_buffer_out_6_q), .xout(redist59_i_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3_out_buffer_out_17_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i32_i_060_pop2386_pop54_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2386_pop54_kernel_3mm42_mux_x(MUX,180)@17 + 1
    assign i_llvm_fpga_pop_i32_i_060_pop2386_pop54_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2386_pop54_kernel_3mm42_mux_x_s = redist59_i_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3_out_buffer_out_17_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i32_i_060_pop2386_pop54_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2386_pop54_kernel_3mm42_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i32_i_060_pop2386_pop54_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2386_pop54_kernel_3mm42_mux_x_q <= i_llvm_fpga_push_i32_i_060_pop2386_push54_kernel_3mm0_i_llvm_fpga_push_i32_i_060_pop2386_push54_kernel_3mm1_x_o_data;
                1'b1 : i_llvm_fpga_pop_i32_i_060_pop2386_pop54_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2386_pop54_kernel_3mm42_mux_x_q <= redist15_sync_together132_aunroll_x_in_c0_eni25_10_tpl_17_mem_q;
                default : i_llvm_fpga_pop_i32_i_060_pop2386_pop54_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2386_pop54_kernel_3mm42_mux_x_q <= 32'b0;
            endcase
        end
    end

    // redist14_sync_together132_aunroll_x_in_c0_eni25_9_tpl_4(DELAY,458)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_sync_together132_aunroll_x_in_c0_eni25_9_tpl_4_delay_0 <= $unsigned(in_c0_eni25_9_tpl);
            redist14_sync_together132_aunroll_x_in_c0_eni25_9_tpl_4_delay_1 <= redist14_sync_together132_aunroll_x_in_c0_eni25_9_tpl_4_delay_0;
            redist14_sync_together132_aunroll_x_in_c0_eni25_9_tpl_4_delay_2 <= redist14_sync_together132_aunroll_x_in_c0_eni25_9_tpl_4_delay_1;
            redist14_sync_together132_aunroll_x_in_c0_eni25_9_tpl_4_q <= redist14_sync_together132_aunroll_x_in_c0_eni25_9_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm0_element_extension2_x(BITJOIN,213)@5
    assign i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm0_element_extension2_x_q = {i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_c_i7_03_x_q, i_llvm_fpga_pop_i1_memdep_phi5_pop2078_pop53_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2078_pop53_kernel_3mm40_mux_x_q};

    // valid_fanout_reg37(REG,298)@0 + 1
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

    // valid_fanout_reg36(REG,297)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg36_q <= $unsigned(redist32_sync_together132_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm1_x(FIFODELAY,214)@1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@4
    assign i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg37_q & i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm1_x_i_valid = valid_fanout_reg36_q & redist38_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm1_x_i_data = i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm0_adapt_scalar_trunc4_sel_x(BITSELECT,216)@4
    assign i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_memdep_phi5_pop2078_pop53_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2078_pop53_kernel_3mm40_mux_x(MUX,176)@4 + 1
    assign i_llvm_fpga_pop_i1_memdep_phi5_pop2078_pop53_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2078_pop53_kernel_3mm40_mux_x_s = redist57_i_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3_out_buffer_out_4_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i1_memdep_phi5_pop2078_pop53_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2078_pop53_kernel_3mm40_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i1_memdep_phi5_pop2078_pop53_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2078_pop53_kernel_3mm40_mux_x_q <= i_llvm_fpga_push_i1_memdep_phi5_pop2078_push53_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
                1'b1 : i_llvm_fpga_pop_i1_memdep_phi5_pop2078_pop53_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2078_pop53_kernel_3mm40_mux_x_q <= redist14_sync_together132_aunroll_x_in_c0_eni25_9_tpl_4_q;
                default : i_llvm_fpga_pop_i1_memdep_phi5_pop2078_pop53_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2078_pop53_kernel_3mm40_mux_x_q <= 1'b0;
            endcase
        end
    end

    // redist48_i_llvm_fpga_pop_i1_memdep_phi5_pop2078_pop53_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2078_pop53_kernel_3mm40_mux_x_q_14(DELAY,492)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist48_i_llvm_fpga_pop_i1_memdep_phi5_pop2078_pop53_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2078_pop53_kernel_3mm40_mux_x_q_14 ( .xin(i_llvm_fpga_pop_i1_memdep_phi5_pop2078_pop53_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2078_pop53_kernel_3mm40_mux_x_q), .xout(redist48_i_llvm_fpga_pop_i1_memdep_phi5_pop2078_pop53_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2078_pop53_kernel_3mm40_mux_x_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist13_sync_together132_aunroll_x_in_c0_eni25_8_tpl_4(DELAY,457)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_sync_together132_aunroll_x_in_c0_eni25_8_tpl_4_delay_0 <= $unsigned(in_c0_eni25_8_tpl);
            redist13_sync_together132_aunroll_x_in_c0_eni25_8_tpl_4_delay_1 <= redist13_sync_together132_aunroll_x_in_c0_eni25_8_tpl_4_delay_0;
            redist13_sync_together132_aunroll_x_in_c0_eni25_8_tpl_4_delay_2 <= redist13_sync_together132_aunroll_x_in_c0_eni25_8_tpl_4_delay_1;
            redist13_sync_together132_aunroll_x_in_c0_eni25_8_tpl_4_q <= redist13_sync_together132_aunroll_x_in_c0_eni25_8_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm0_element_extension2_x(BITJOIN,207)@5
    assign i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm0_element_extension2_x_q = {i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_c_i7_03_x_q, i_llvm_fpga_pop_i1_memdep_phi3_pop1974_pop52_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi3_pop1974_pop52_kernel_3mm38_mux_x_q};

    // valid_fanout_reg34(REG,295)@0 + 1
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

    // valid_fanout_reg33(REG,294)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg33_q <= $unsigned(redist32_sync_together132_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm1_x(FIFODELAY,208)@1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@4
    assign i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg34_q & i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm1_x_i_valid = valid_fanout_reg33_q & redist38_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm1_x_i_data = i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm0_adapt_scalar_trunc4_sel_x(BITSELECT,210)@4
    assign i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_memdep_phi3_pop1974_pop52_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi3_pop1974_pop52_kernel_3mm38_mux_x(MUX,175)@4 + 1
    assign i_llvm_fpga_pop_i1_memdep_phi3_pop1974_pop52_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi3_pop1974_pop52_kernel_3mm38_mux_x_s = redist57_i_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3_out_buffer_out_4_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i1_memdep_phi3_pop1974_pop52_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi3_pop1974_pop52_kernel_3mm38_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i1_memdep_phi3_pop1974_pop52_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi3_pop1974_pop52_kernel_3mm38_mux_x_q <= i_llvm_fpga_push_i1_memdep_phi3_pop1974_push52_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
                1'b1 : i_llvm_fpga_pop_i1_memdep_phi3_pop1974_pop52_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi3_pop1974_pop52_kernel_3mm38_mux_x_q <= redist13_sync_together132_aunroll_x_in_c0_eni25_8_tpl_4_q;
                default : i_llvm_fpga_pop_i1_memdep_phi3_pop1974_pop52_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi3_pop1974_pop52_kernel_3mm38_mux_x_q <= 1'b0;
            endcase
        end
    end

    // redist49_i_llvm_fpga_pop_i1_memdep_phi3_pop1974_pop52_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi3_pop1974_pop52_kernel_3mm38_mux_x_q_14(DELAY,493)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist49_i_llvm_fpga_pop_i1_memdep_phi3_pop1974_pop52_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi3_pop1974_pop52_kernel_3mm38_mux_x_q_14 ( .xin(i_llvm_fpga_pop_i1_memdep_phi3_pop1974_pop52_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi3_pop1974_pop52_kernel_3mm38_mux_x_q), .xout(redist49_i_llvm_fpga_pop_i1_memdep_phi3_pop1974_pop52_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi3_pop1974_pop52_kernel_3mm38_mux_x_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist12_sync_together132_aunroll_x_in_c0_eni25_7_tpl_17(DELAY,456)
    dspba_delay_ver #( .width(1), .depth(17), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist12_sync_together132_aunroll_x_in_c0_eni25_7_tpl_17 ( .xin(in_c0_eni25_7_tpl), .xout(redist12_sync_together132_aunroll_x_in_c0_eni25_7_tpl_17_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm0_element_extension2_x(BITJOIN,201)@18
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm0_element_extension2_x_q = {i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_c_i7_03_x_q, i_llvm_fpga_pop_i1_memdep_phi2_pop1870_pop51_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi2_pop1870_pop51_kernel_3mm36_mux_x_q};

    // valid_fanout_reg31(REG,292)@13 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg31_q <= $unsigned(redist35_sync_together132_aunroll_x_in_i_valid_13_q);
        end
    end

    // valid_fanout_reg30(REG,291)@16 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg30_q <= $unsigned(redist36_sync_together132_aunroll_x_in_i_valid_16_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm1_x(FIFODELAY,202)@14
    // in i_valid@17
    // in i_write_pred@17
    // in i_data@18
    // out o_data@17
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg31_q & redist40_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_13_q);
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm1_x_i_valid = valid_fanout_reg30_q & redist41_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_16_q;
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm1_x_i_data = i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm0_adapt_scalar_trunc4_sel_x(BITSELECT,204)@17
    assign i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_memdep_phi2_pop1870_pop51_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi2_pop1870_pop51_kernel_3mm36_mux_x(MUX,174)@17 + 1
    assign i_llvm_fpga_pop_i1_memdep_phi2_pop1870_pop51_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi2_pop1870_pop51_kernel_3mm36_mux_x_s = redist59_i_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3_out_buffer_out_17_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i1_memdep_phi2_pop1870_pop51_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi2_pop1870_pop51_kernel_3mm36_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i1_memdep_phi2_pop1870_pop51_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi2_pop1870_pop51_kernel_3mm36_mux_x_q <= i_llvm_fpga_push_i1_memdep_phi2_pop1870_push51_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
                1'b1 : i_llvm_fpga_pop_i1_memdep_phi2_pop1870_pop51_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi2_pop1870_pop51_kernel_3mm36_mux_x_q <= redist12_sync_together132_aunroll_x_in_c0_eni25_7_tpl_17_q;
                default : i_llvm_fpga_pop_i1_memdep_phi2_pop1870_pop51_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi2_pop1870_pop51_kernel_3mm36_mux_x_q <= 1'b0;
            endcase
        end
    end

    // redist11_sync_together132_aunroll_x_in_c0_eni25_6_tpl_4(DELAY,455)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_sync_together132_aunroll_x_in_c0_eni25_6_tpl_4_delay_0 <= $unsigned(in_c0_eni25_6_tpl);
            redist11_sync_together132_aunroll_x_in_c0_eni25_6_tpl_4_delay_1 <= redist11_sync_together132_aunroll_x_in_c0_eni25_6_tpl_4_delay_0;
            redist11_sync_together132_aunroll_x_in_c0_eni25_6_tpl_4_delay_2 <= redist11_sync_together132_aunroll_x_in_c0_eni25_6_tpl_4_delay_1;
            redist11_sync_together132_aunroll_x_in_c0_eni25_6_tpl_4_q <= redist11_sync_together132_aunroll_x_in_c0_eni25_6_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm0_element_extension2_x(BITJOIN,219)@5
    assign i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm0_element_extension2_x_q = {i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_c_i7_03_x_q, i_llvm_fpga_pop_i1_memdep_phi_pop1766_pop50_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1766_pop50_kernel_3mm34_mux_x_q};

    // valid_fanout_reg28(REG,289)@0 + 1
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

    // valid_fanout_reg27(REG,288)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg27_q <= $unsigned(redist32_sync_together132_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm1_x(FIFODELAY,220)@1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@4
    assign i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg28_q & i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm1_x_i_valid = valid_fanout_reg27_q & redist38_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm1_x_i_data = i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm0_adapt_scalar_trunc4_sel_x(BITSELECT,222)@4
    assign i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm0_i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_memdep_phi_pop1766_pop50_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1766_pop50_kernel_3mm34_mux_x(MUX,177)@4 + 1
    assign i_llvm_fpga_pop_i1_memdep_phi_pop1766_pop50_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1766_pop50_kernel_3mm34_mux_x_s = redist57_i_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3_out_buffer_out_4_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i1_memdep_phi_pop1766_pop50_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1766_pop50_kernel_3mm34_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i1_memdep_phi_pop1766_pop50_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1766_pop50_kernel_3mm34_mux_x_q <= i_llvm_fpga_push_i1_memdep_phi_pop1766_push50_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
                1'b1 : i_llvm_fpga_pop_i1_memdep_phi_pop1766_pop50_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1766_pop50_kernel_3mm34_mux_x_q <= redist11_sync_together132_aunroll_x_in_c0_eni25_6_tpl_4_q;
                default : i_llvm_fpga_pop_i1_memdep_phi_pop1766_pop50_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1766_pop50_kernel_3mm34_mux_x_q <= 1'b0;
            endcase
        end
    end

    // redist47_i_llvm_fpga_pop_i1_memdep_phi_pop1766_pop50_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1766_pop50_kernel_3mm34_mux_x_q_14(DELAY,491)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist47_i_llvm_fpga_pop_i1_memdep_phi_pop1766_pop50_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1766_pop50_kernel_3mm34_mux_x_q_14 ( .xin(i_llvm_fpga_pop_i1_memdep_phi_pop1766_pop50_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1766_pop50_kernel_3mm34_mux_x_q), .xout(redist47_i_llvm_fpga_pop_i1_memdep_phi_pop1766_pop50_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1766_pop50_kernel_3mm34_mux_x_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist10_sync_together132_aunroll_x_in_c0_eni25_5_tpl_17(DELAY,454)
    dspba_delay_ver #( .width(1), .depth(17), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist10_sync_together132_aunroll_x_in_c0_eni25_5_tpl_17 ( .xin(in_c0_eni25_5_tpl), .xout(redist10_sync_together132_aunroll_x_in_c0_eni25_5_tpl_17_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_element_extension2_x(BITJOIN,189)@18
    assign i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_element_extension2_x_q = {i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_c_i7_03_x_q, i_llvm_fpga_pop_i1_forked62_pop49_kernel_3mm0_i_llvm_fpga_pop_i1_forked62_pop49_kernel_3mm32_mux_x_q};

    // valid_fanout_reg25(REG,286)@13 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(redist35_sync_together132_aunroll_x_in_i_valid_13_q);
        end
    end

    // valid_fanout_reg24(REG,285)@16 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(redist36_sync_together132_aunroll_x_in_i_valid_16_q);
        end
    end

    // i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm1_x(FIFODELAY,190)@14
    // in i_valid@17
    // in i_write_pred@17
    // in i_data@18
    // out o_data@17
    assign i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg25_q & redist40_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_13_q);
    assign i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm1_x_i_valid = valid_fanout_reg24_q & redist41_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_16_q;
    assign i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm1_x_i_data = i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm1_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_adapt_scalar_trunc4_sel_x(BITSELECT,192)@17
    assign i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm1_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_forked62_pop49_kernel_3mm0_i_llvm_fpga_pop_i1_forked62_pop49_kernel_3mm32_mux_x(MUX,173)@17 + 1
    assign i_llvm_fpga_pop_i1_forked62_pop49_kernel_3mm0_i_llvm_fpga_pop_i1_forked62_pop49_kernel_3mm32_mux_x_s = redist59_i_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3_out_buffer_out_17_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i1_forked62_pop49_kernel_3mm0_i_llvm_fpga_pop_i1_forked62_pop49_kernel_3mm32_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i1_forked62_pop49_kernel_3mm0_i_llvm_fpga_pop_i1_forked62_pop49_kernel_3mm32_mux_x_q <= i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_adapt_scalar_trunc4_sel_x_b;
                1'b1 : i_llvm_fpga_pop_i1_forked62_pop49_kernel_3mm0_i_llvm_fpga_pop_i1_forked62_pop49_kernel_3mm32_mux_x_q <= redist10_sync_together132_aunroll_x_in_c0_eni25_5_tpl_17_q;
                default : i_llvm_fpga_pop_i1_forked62_pop49_kernel_3mm0_i_llvm_fpga_pop_i1_forked62_pop49_kernel_3mm32_mux_x_q <= 1'b0;
            endcase
        end
    end

    // i_notcmp41_kernel_3mm28(LOGICAL,108)@18
    assign i_notcmp41_kernel_3mm28_q = redist5_i_exitcond_kernel_3mm22_cmp_nsign_q_14_q ^ VCC_q;

    // redist5_i_exitcond_kernel_3mm22_cmp_nsign_q_14(DELAY,449)
    dspba_delay_ver #( .width(1), .depth(14), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist5_i_exitcond_kernel_3mm22_cmp_nsign_q_14 ( .xin(i_exitcond_kernel_3mm22_cmp_nsign_q), .xout(redist5_i_exitcond_kernel_3mm22_cmp_nsign_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_offset(CONSTANT,517)
    assign redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_offset_q = $unsigned(4'b0100);

    // redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_rdcnt(ADD,518)
    assign redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_rdcnt_a = {1'b0, redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_wraddr_q};
    assign redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_rdcnt_b = {1'b0, redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_rdcnt_o <= $unsigned(redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_rdcnt_a) + $unsigned(redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_rdcnt_b);
        end
    end
    assign redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_rdcnt_q = redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_rdcnt_o[4:0];

    // redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_inputreg0(DELAY,513)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_inputreg0_q <= $unsigned(in_c0_eni25_4_tpl);
        end
    end

    // redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_wraddr(COUNTER,516)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_wraddr_i <= $unsigned(redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_wraddr_q = redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_wraddr_i[3:0];

    // redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_mem(DUALMEM,515)
    assign redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_mem_ia = $unsigned(redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_inputreg0_q);
    assign redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_mem_aa = redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_wraddr_q;
    assign redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_mem_ab = redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_rdcnt_q[3:0];
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
    ) redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_mem_aa),
        .data_a(redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_mem_ab),
        .q_b(redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_mem_iq),
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
    assign redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_mem_q = redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_mem_iq[31:0];

    // redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_outputreg0(DELAY,514)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_outputreg0_q <= $unsigned(redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_mem_q);
        end
    end

    // valid_fanout_reg19(REG,280)@13 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist35_sync_together132_aunroll_x_in_i_valid_13_q);
        end
    end

    // valid_fanout_reg18(REG,279)@16 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist36_sync_together132_aunroll_x_in_i_valid_16_q);
        end
    end

    // i_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm0_i_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm1_x(FIFODELAY,241)@14
    // in i_valid@17
    // in i_write_pred@17
    // in i_data@18
    // out o_data@17
    assign i_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm0_i_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm1_x_i_stall = ~ (valid_fanout_reg19_q & redist40_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_13_q);
    assign i_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm0_i_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm1_x_i_valid = valid_fanout_reg18_q & redist41_i_llvm_fpga_push_i1_forked62_push49_kernel_3mm0_inv_pred_x_q_16_q;
    assign i_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm0_i_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm1_x_i_data = bgTrunc_i_add_kernel_3mm19_sel_x_b;
    assign i_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm0_i_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm0_i_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm1_x_i_valid[0];
    assign i_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm0_i_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm0_i_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(32),
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
    ) thei_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm0_i_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm1_x (
        .i_valid(i_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm0_i_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm0_i_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm1_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_add_kernel_3mm19_sel_x_b),
        .o_data(i_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm0_i_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_tmp_058_pop47_kernel_3mm0_i_llvm_fpga_pop_i32_tmp_058_pop47_kernel_3mm18_mux_x(MUX,182)@17 + 1
    assign i_llvm_fpga_pop_i32_tmp_058_pop47_kernel_3mm0_i_llvm_fpga_pop_i32_tmp_058_pop47_kernel_3mm18_mux_x_s = redist59_i_llvm_fpga_forked_kernel_3mm_b4_forked_kernel_3mm3_out_buffer_out_17_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i32_tmp_058_pop47_kernel_3mm0_i_llvm_fpga_pop_i32_tmp_058_pop47_kernel_3mm18_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i32_tmp_058_pop47_kernel_3mm0_i_llvm_fpga_pop_i32_tmp_058_pop47_kernel_3mm18_mux_x_q <= i_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm0_i_llvm_fpga_push_i32_tmp_058_push47_kernel_3mm1_x_o_data;
                1'b1 : i_llvm_fpga_pop_i32_tmp_058_pop47_kernel_3mm0_i_llvm_fpga_pop_i32_tmp_058_pop47_kernel_3mm18_mux_x_q <= redist9_sync_together132_aunroll_x_in_c0_eni25_4_tpl_17_outputreg0_q;
                default : i_llvm_fpga_pop_i32_tmp_058_pop47_kernel_3mm0_i_llvm_fpga_pop_i32_tmp_058_pop47_kernel_3mm18_mux_x_q <= 32'b0;
            endcase
        end
    end

    // i_mul_kernel_3mm17_bs3_merged_bit_select(BITSELECT,441)@10
    assign i_mul_kernel_3mm17_bs3_merged_bit_select_b = i_llvm_fpga_mem_unnamed_kernel_3mm3_kernel_3mm13_out_o_readdata[31:18];
    assign i_mul_kernel_3mm17_bs3_merged_bit_select_c = i_llvm_fpga_mem_unnamed_kernel_3mm3_kernel_3mm13_out_o_readdata[17:0];

    // i_mul_kernel_3mm17_bs1_merged_bit_select(BITSELECT,442)@10
    assign i_mul_kernel_3mm17_bs1_merged_bit_select_b = i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm16_out_o_readdata[31:18];
    assign i_mul_kernel_3mm17_bs1_merged_bit_select_c = i_llvm_fpga_mem_unnamed_kernel_3mm4_kernel_3mm16_out_o_readdata[17:0];

    // i_mul_kernel_3mm17_ma5_cma(CHAINMULTADD,438)@10 + 5
    // out q@16
    assign i_mul_kernel_3mm17_ma5_cma_reset = ~ (resetn);
    assign i_mul_kernel_3mm17_ma5_cma_ena0 = 1'b1;
    assign i_mul_kernel_3mm17_ma5_cma_ena1 = i_mul_kernel_3mm17_ma5_cma_ena0;
    assign i_mul_kernel_3mm17_ma5_cma_ena2 = i_mul_kernel_3mm17_ma5_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_kernel_3mm17_ma5_cma_ah[0] <= i_mul_kernel_3mm17_bs1_merged_bit_select_b;
            i_mul_kernel_3mm17_ma5_cma_ah[1] <= i_mul_kernel_3mm17_bs3_merged_bit_select_b;
            i_mul_kernel_3mm17_ma5_cma_ch[0] <= i_mul_kernel_3mm17_bs3_merged_bit_select_c;
            i_mul_kernel_3mm17_ma5_cma_ch[1] <= i_mul_kernel_3mm17_bs1_merged_bit_select_c;
        end
    end

    assign i_mul_kernel_3mm17_ma5_cma_a0 = i_mul_kernel_3mm17_ma5_cma_ah[0];
    assign i_mul_kernel_3mm17_ma5_cma_c0 = i_mul_kernel_3mm17_ma5_cma_ch[0];
    assign i_mul_kernel_3mm17_ma5_cma_a1 = i_mul_kernel_3mm17_ma5_cma_ah[1];
    assign i_mul_kernel_3mm17_ma5_cma_c1 = i_mul_kernel_3mm17_ma5_cma_ch[1];
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
    ) i_mul_kernel_3mm17_ma5_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_kernel_3mm17_ma5_cma_ena2, i_mul_kernel_3mm17_ma5_cma_ena1, i_mul_kernel_3mm17_ma5_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_kernel_3mm17_ma5_cma_a1),
        .by(i_mul_kernel_3mm17_ma5_cma_a0),
        .ax(i_mul_kernel_3mm17_ma5_cma_c1),
        .bx(i_mul_kernel_3mm17_ma5_cma_c0),
        .resulta(i_mul_kernel_3mm17_ma5_cma_s0),
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
    i_mul_kernel_3mm17_ma5_cma_delay ( .xin(i_mul_kernel_3mm17_ma5_cma_s0), .xout(i_mul_kernel_3mm17_ma5_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_kernel_3mm17_ma5_cma_q = $unsigned(i_mul_kernel_3mm17_ma5_cma_qq[32:0]);

    // redist2_i_mul_kernel_3mm17_ma5_cma_q_1(DELAY,446)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_i_mul_kernel_3mm17_ma5_cma_q_1_q <= $unsigned(i_mul_kernel_3mm17_ma5_cma_q);
        end
    end

    // i_mul_kernel_3mm17_sums_align_1(BITSHIFT,341)@17
    assign i_mul_kernel_3mm17_sums_align_1_qint = { redist2_i_mul_kernel_3mm17_ma5_cma_q_1_q, 18'b000000000000000000 };
    assign i_mul_kernel_3mm17_sums_align_1_q = i_mul_kernel_3mm17_sums_align_1_qint[50:0];

    // i_mul_kernel_3mm17_bjB4(BITJOIN,331)@10
    assign i_mul_kernel_3mm17_bjB4_q = {GND_q, i_mul_kernel_3mm17_bs3_merged_bit_select_b};

    // i_mul_kernel_3mm17_bjA2(BITJOIN,329)@10
    assign i_mul_kernel_3mm17_bjA2_q = {GND_q, i_mul_kernel_3mm17_bs1_merged_bit_select_b};

    // i_mul_kernel_3mm17_im0_cma(CHAINMULTADD,436)@10 + 5
    // out q@16
    assign i_mul_kernel_3mm17_im0_cma_reset = ~ (resetn);
    assign i_mul_kernel_3mm17_im0_cma_ena0 = 1'b1;
    assign i_mul_kernel_3mm17_im0_cma_ena1 = i_mul_kernel_3mm17_im0_cma_ena0;
    assign i_mul_kernel_3mm17_im0_cma_ena2 = i_mul_kernel_3mm17_im0_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_kernel_3mm17_im0_cma_ah[0] <= i_mul_kernel_3mm17_bjA2_q;
            i_mul_kernel_3mm17_im0_cma_ch[0] <= i_mul_kernel_3mm17_bjB4_q;
        end
    end

    assign i_mul_kernel_3mm17_im0_cma_a0 = $unsigned(i_mul_kernel_3mm17_im0_cma_ah[0]);
    assign i_mul_kernel_3mm17_im0_cma_c0 = $unsigned(i_mul_kernel_3mm17_im0_cma_ch[0]);
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
    ) i_mul_kernel_3mm17_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_kernel_3mm17_im0_cma_ena2, i_mul_kernel_3mm17_im0_cma_ena1, i_mul_kernel_3mm17_im0_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_kernel_3mm17_im0_cma_a0),
        .ax(i_mul_kernel_3mm17_im0_cma_c0),
        .resulta(i_mul_kernel_3mm17_im0_cma_s0),
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
    i_mul_kernel_3mm17_im0_cma_delay ( .xin(i_mul_kernel_3mm17_im0_cma_s0), .xout(i_mul_kernel_3mm17_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_kernel_3mm17_im0_cma_q = $unsigned(i_mul_kernel_3mm17_im0_cma_qq[29:0]);

    // redist4_i_mul_kernel_3mm17_im0_cma_q_1(DELAY,448)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_i_mul_kernel_3mm17_im0_cma_q_1_q <= $unsigned(i_mul_kernel_3mm17_im0_cma_q);
        end
    end

    // i_mul_kernel_3mm17_im10_cma(CHAINMULTADD,437)@10 + 5
    // out q@16
    assign i_mul_kernel_3mm17_im10_cma_reset = ~ (resetn);
    assign i_mul_kernel_3mm17_im10_cma_ena0 = 1'b1;
    assign i_mul_kernel_3mm17_im10_cma_ena1 = i_mul_kernel_3mm17_im10_cma_ena0;
    assign i_mul_kernel_3mm17_im10_cma_ena2 = i_mul_kernel_3mm17_im10_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_mul_kernel_3mm17_im10_cma_ah[0] <= i_mul_kernel_3mm17_bs1_merged_bit_select_c;
            i_mul_kernel_3mm17_im10_cma_ch[0] <= i_mul_kernel_3mm17_bs3_merged_bit_select_c;
        end
    end

    assign i_mul_kernel_3mm17_im10_cma_a0 = i_mul_kernel_3mm17_im10_cma_ah[0];
    assign i_mul_kernel_3mm17_im10_cma_c0 = i_mul_kernel_3mm17_im10_cma_ch[0];
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
    ) i_mul_kernel_3mm17_im10_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_kernel_3mm17_im10_cma_ena2, i_mul_kernel_3mm17_im10_cma_ena1, i_mul_kernel_3mm17_im10_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(i_mul_kernel_3mm17_im10_cma_a0),
        .ax(i_mul_kernel_3mm17_im10_cma_c0),
        .resulta(i_mul_kernel_3mm17_im10_cma_s0),
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
    i_mul_kernel_3mm17_im10_cma_delay ( .xin(i_mul_kernel_3mm17_im10_cma_s0), .xout(i_mul_kernel_3mm17_im10_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_kernel_3mm17_im10_cma_q = $unsigned(i_mul_kernel_3mm17_im10_cma_qq[35:0]);

    // redist3_i_mul_kernel_3mm17_im10_cma_q_1(DELAY,447)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_i_mul_kernel_3mm17_im10_cma_q_1_q <= $unsigned(i_mul_kernel_3mm17_im10_cma_q);
        end
    end

    // i_mul_kernel_3mm17_sums_join_0(BITJOIN,340)@17
    assign i_mul_kernel_3mm17_sums_join_0_q = {redist4_i_mul_kernel_3mm17_im0_cma_q_1_q, redist3_i_mul_kernel_3mm17_im10_cma_q_1_q};

    // i_mul_kernel_3mm17_sums_result_add_0_0(ADD,343)@17
    assign i_mul_kernel_3mm17_sums_result_add_0_0_a = {1'b0, i_mul_kernel_3mm17_sums_join_0_q};
    assign i_mul_kernel_3mm17_sums_result_add_0_0_b = {16'b0000000000000000, i_mul_kernel_3mm17_sums_align_1_q};
    assign i_mul_kernel_3mm17_sums_result_add_0_0_o = $unsigned(i_mul_kernel_3mm17_sums_result_add_0_0_a) + $unsigned(i_mul_kernel_3mm17_sums_result_add_0_0_b);
    assign i_mul_kernel_3mm17_sums_result_add_0_0_q = i_mul_kernel_3mm17_sums_result_add_0_0_o[66:0];

    // bgTrunc_i_mul_kernel_3mm17_sel_x(BITSELECT,116)@17
    assign bgTrunc_i_mul_kernel_3mm17_sel_x_in = i_mul_kernel_3mm17_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul_kernel_3mm17_sel_x_b = bgTrunc_i_mul_kernel_3mm17_sel_x_in[31:0];

    // redist55_bgTrunc_i_mul_kernel_3mm17_sel_x_b_1(DELAY,499)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist55_bgTrunc_i_mul_kernel_3mm17_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul_kernel_3mm17_sel_x_b);
        end
    end

    // i_add_kernel_3mm19(ADD,85)@18
    assign i_add_kernel_3mm19_a = {1'b0, redist55_bgTrunc_i_mul_kernel_3mm17_sel_x_b_1_q};
    assign i_add_kernel_3mm19_b = {1'b0, i_llvm_fpga_pop_i32_tmp_058_pop47_kernel_3mm0_i_llvm_fpga_pop_i32_tmp_058_pop47_kernel_3mm18_mux_x_q};
    assign i_add_kernel_3mm19_o = $unsigned(i_add_kernel_3mm19_a) + $unsigned(i_add_kernel_3mm19_b);
    assign i_add_kernel_3mm19_q = i_add_kernel_3mm19_o[32:0];

    // bgTrunc_i_add_kernel_3mm19_sel_x(BITSELECT,113)@18
    assign bgTrunc_i_add_kernel_3mm19_sel_x_b = i_add_kernel_3mm19_q[31:0];

    // redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_offset(CONSTANT,547)
    assign redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_offset_q = $unsigned(4'b1001);

    // redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_rdcnt(ADD,548)
    assign redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_rdcnt_a = {1'b0, redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_wraddr_q};
    assign redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_rdcnt_b = {1'b0, redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_rdcnt_o <= $unsigned(redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_rdcnt_a) + $unsigned(redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_rdcnt_b);
        end
    end
    assign redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_rdcnt_q = redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_rdcnt_o[4:0];

    // redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_inputreg0(DELAY,543)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_inputreg0_q <= $unsigned(i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q);
        end
    end

    // redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_wraddr(COUNTER,546)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_wraddr_i <= $unsigned(redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_wraddr_q = redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_wraddr_i[3:0];

    // redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_mem(DUALMEM,545)
    assign redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_mem_ia = $unsigned(redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_inputreg0_q);
    assign redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_mem_aa = redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_wraddr_q;
    assign redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_mem_ab = redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_rdcnt_q[3:0];
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
    ) redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_mem_aa),
        .data_a(redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_mem_ab),
        .q_b(redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_mem_iq),
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
    assign redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_mem_q = redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_mem_iq[63:0];

    // redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_outputreg0(DELAY,544)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_outputreg0_q <= $unsigned(redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_mem_q);
        end
    end

    // redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_rdcnt(ADD,542)
    assign redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_rdcnt_a = {1'b0, redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_wraddr_q};
    assign redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_rdcnt_b = {1'b0, redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_rdcnt_o <= $unsigned(redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_rdcnt_a) + $unsigned(redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_rdcnt_b);
        end
    end
    assign redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_rdcnt_q = redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_rdcnt_o[4:0];

    // redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_inputreg0(DELAY,537)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_inputreg0_q <= $unsigned(i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q);
        end
    end

    // redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_wraddr(COUNTER,540)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_wraddr_i <= $unsigned(redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_wraddr_q = redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_wraddr_i[3:0];

    // redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_mem(DUALMEM,539)
    assign redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_mem_ia = $unsigned(redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_inputreg0_q);
    assign redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_mem_aa = redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_wraddr_q;
    assign redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_mem_ab = redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_rdcnt_q[3:0];
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
    ) redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_mem_aa),
        .data_a(redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_mem_ab),
        .q_b(redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_mem_iq),
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
    assign redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_mem_q = redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_mem_iq[63:0];

    // redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_outputreg0(DELAY,538)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_outputreg0_q <= $unsigned(redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_mem_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,259)@18
    assign out_c0_exi26_0_tpl = GND_q;
    assign out_c0_exi26_1_tpl = redist43_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom97_pop56_kernel_3mm11_mux_x_q_14_outputreg0_q;
    assign out_c0_exi26_2_tpl = redist44_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm0_i_llvm_fpga_pop_i64_idxprom1199_pop57_kernel_3mm14_mux_x_q_12_outputreg0_q;
    assign out_c0_exi26_3_tpl = bgTrunc_i_add_kernel_3mm19_sel_x_b;
    assign out_c0_exi26_4_tpl = redist5_i_exitcond_kernel_3mm22_cmp_nsign_q_14_q;
    assign out_c0_exi26_5_tpl = i_notcmp41_kernel_3mm28_q;
    assign out_c0_exi26_6_tpl = i_llvm_fpga_pop_i1_forked62_pop49_kernel_3mm0_i_llvm_fpga_pop_i1_forked62_pop49_kernel_3mm32_mux_x_q;
    assign out_c0_exi26_7_tpl = redist47_i_llvm_fpga_pop_i1_memdep_phi_pop1766_pop50_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi_pop1766_pop50_kernel_3mm34_mux_x_q_14_q;
    assign out_c0_exi26_8_tpl = i_llvm_fpga_pop_i1_memdep_phi2_pop1870_pop51_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi2_pop1870_pop51_kernel_3mm36_mux_x_q;
    assign out_c0_exi26_9_tpl = redist49_i_llvm_fpga_pop_i1_memdep_phi3_pop1974_pop52_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi3_pop1974_pop52_kernel_3mm38_mux_x_q_14_q;
    assign out_c0_exi26_10_tpl = redist48_i_llvm_fpga_pop_i1_memdep_phi5_pop2078_pop53_kernel_3mm0_i_llvm_fpga_pop_i1_memdep_phi5_pop2078_pop53_kernel_3mm40_mux_x_q_14_q;
    assign out_c0_exi26_11_tpl = i_llvm_fpga_pop_i32_i_060_pop2386_pop54_kernel_3mm0_i_llvm_fpga_pop_i32_i_060_pop2386_pop54_kernel_3mm42_mux_x_q;
    assign out_c0_exi26_12_tpl = redist45_i_llvm_fpga_pop_i1_notcmp5189_pop55_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp5189_pop55_kernel_3mm44_mux_x_q_14_q;
    assign out_c0_exi26_13_tpl = redist42_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm0_i_llvm_fpga_pop_p68i32_arrayidx121101_pop58_kernel_3mm46_mux_x_q_14_outputreg0_q;
    assign out_c0_exi26_14_tpl = redist46_i_llvm_fpga_pop_i1_notcmp46102_pop59_kernel_3mm0_i_llvm_fpga_pop_i1_notcmp46102_pop59_kernel_3mm48_mux_x_q_14_q;
    assign out_c0_exi26_15_tpl = redist19_sync_together132_aunroll_x_in_c0_eni25_14_tpl_18_q;
    assign out_c0_exi26_16_tpl = redist20_sync_together132_aunroll_x_in_c0_eni25_15_tpl_18_q;
    assign out_c0_exi26_17_tpl = redist21_sync_together132_aunroll_x_in_c0_eni25_16_tpl_18_q;
    assign out_c0_exi26_18_tpl = redist22_sync_together132_aunroll_x_in_c0_eni25_17_tpl_18_q;
    assign out_c0_exi26_19_tpl = redist23_sync_together132_aunroll_x_in_c0_eni25_18_tpl_18_q;
    assign out_c0_exi26_20_tpl = redist24_sync_together132_aunroll_x_in_c0_eni25_19_tpl_18_outputreg0_q;
    assign out_c0_exi26_21_tpl = redist25_sync_together132_aunroll_x_in_c0_eni25_20_tpl_18_q;
    assign out_c0_exi26_22_tpl = redist26_sync_together132_aunroll_x_in_c0_eni25_21_tpl_18_q;
    assign out_c0_exi26_23_tpl = redist27_sync_together132_aunroll_x_in_c0_eni25_22_tpl_18_q;
    assign out_c0_exi26_24_tpl = redist28_sync_together132_aunroll_x_in_c0_eni25_23_tpl_18_q;
    assign out_c0_exi26_25_tpl = redist29_sync_together132_aunroll_x_in_c0_eni25_24_tpl_18_q;
    assign out_c0_exi26_26_tpl = redist30_sync_together132_aunroll_x_in_c0_eni25_25_tpl_18_q;
    assign out_kernel_3mm_B4_current_iter_isspec = redist61_i_kernel_3mm_b4_current_iter_isspec_kernel_3mm5_q_12_q;
    assign out_o_valid = redist6_valid_fanout_reg0_q_1_q;

endmodule
