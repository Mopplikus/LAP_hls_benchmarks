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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body20_jacobi_1ds_c0_enter856_jacobi_1d0
// Created for function/kernel jacobi_1d
// SystemVerilog created on Wed Apr  5 13:32:10 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module jacobi_1d_i_sfc_logic_s_c0_in_for_body200000_enter856_jacobi_1d0 (
    input wire [31:0] in_unnamed_jacobi_1d12_jacobi_1d_avm_readdata,
    input wire [0:0] in_unnamed_jacobi_1d12_jacobi_1d_avm_writeack,
    input wire [0:0] in_unnamed_jacobi_1d12_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_unnamed_jacobi_1d12_jacobi_1d_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [31:0] in_intel_reserved_ffwd_3_0,
    input wire [31:0] in_unnamed_jacobi_1d13_jacobi_1d_avm_readdata,
    input wire [0:0] in_unnamed_jacobi_1d13_jacobi_1d_avm_writeack,
    input wire [0:0] in_unnamed_jacobi_1d13_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_unnamed_jacobi_1d13_jacobi_1d_avm_readdatavalid,
    output wire [31:0] out_unnamed_jacobi_1d12_jacobi_1d_avm_address,
    output wire [0:0] out_unnamed_jacobi_1d12_jacobi_1d_avm_enable,
    output wire [0:0] out_unnamed_jacobi_1d12_jacobi_1d_avm_read,
    output wire [0:0] out_unnamed_jacobi_1d12_jacobi_1d_avm_write,
    output wire [31:0] out_unnamed_jacobi_1d12_jacobi_1d_avm_writedata,
    output wire [3:0] out_unnamed_jacobi_1d12_jacobi_1d_avm_byteenable,
    output wire [0:0] out_unnamed_jacobi_1d12_jacobi_1d_avm_burstcount,
    input wire [31:0] in_memdep_4_jacobi_1d_avm_readdata,
    input wire [0:0] in_memdep_4_jacobi_1d_avm_writeack,
    input wire [0:0] in_memdep_4_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_memdep_4_jacobi_1d_avm_readdatavalid,
    output wire [31:0] out_unnamed_jacobi_1d13_jacobi_1d_avm_address,
    output wire [0:0] out_unnamed_jacobi_1d13_jacobi_1d_avm_enable,
    output wire [0:0] out_unnamed_jacobi_1d13_jacobi_1d_avm_read,
    output wire [0:0] out_unnamed_jacobi_1d13_jacobi_1d_avm_write,
    output wire [31:0] out_unnamed_jacobi_1d13_jacobi_1d_avm_writedata,
    output wire [3:0] out_unnamed_jacobi_1d13_jacobi_1d_avm_byteenable,
    output wire [0:0] out_unnamed_jacobi_1d13_jacobi_1d_avm_burstcount,
    input wire [31:0] in_memdep_5_jacobi_1d_avm_readdata,
    input wire [0:0] in_memdep_5_jacobi_1d_avm_writeack,
    input wire [0:0] in_memdep_5_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_memdep_5_jacobi_1d_avm_readdatavalid,
    output wire [31:0] out_memdep_4_jacobi_1d_avm_address,
    output wire [0:0] out_memdep_4_jacobi_1d_avm_enable,
    output wire [0:0] out_memdep_4_jacobi_1d_avm_read,
    output wire [0:0] out_memdep_4_jacobi_1d_avm_write,
    output wire [31:0] out_memdep_4_jacobi_1d_avm_writedata,
    output wire [3:0] out_memdep_4_jacobi_1d_avm_byteenable,
    output wire [0:0] out_memdep_4_jacobi_1d_avm_burstcount,
    output wire [31:0] out_memdep_5_jacobi_1d_avm_address,
    output wire [0:0] out_memdep_5_jacobi_1d_avm_enable,
    output wire [0:0] out_memdep_5_jacobi_1d_avm_read,
    output wire [0:0] out_memdep_5_jacobi_1d_avm_write,
    output wire [31:0] out_memdep_5_jacobi_1d_avm_writedata,
    output wire [3:0] out_memdep_5_jacobi_1d_avm_byteenable,
    output wire [0:0] out_memdep_5_jacobi_1d_avm_burstcount,
    output wire [0:0] out_c0_exi389_0_tpl,
    output wire [0:0] out_c0_exi389_1_tpl,
    output wire [0:0] out_c0_exi389_2_tpl,
    output wire [0:0] out_c0_exi389_3_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_jacobi_1d1,
    input wire [0:0] in_c0_eni2_0_tpl,
    input wire [0:0] in_c0_eni2_1_tpl,
    input wire [0:0] in_c0_eni2_2_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] c_i2_169_q;
    wire [31:0] c_i32_172_q;
    wire [31:0] c_i32_173_q;
    wire [31:0] c_i32_undef71_q;
    wire [7:0] c_i8_176_q;
    wire [7:0] c_i8_9674_q;
    wire [63:0] c_jacobi_1d_A_1_local_pmem_q;
    wire [63:0] c_jacobi_1d_A_2_local_pmem_q;
    wire [63:0] c_jacobi_1d_B_local_pmem_q;
    wire [32:0] i_add25_jacobi_1d22_a;
    wire [32:0] i_add25_jacobi_1d22_b;
    logic [32:0] i_add25_jacobi_1d22_o;
    wire [32:0] i_add25_jacobi_1d22_q;
    wire [32:0] i_add28_jacobi_1d28_a;
    wire [32:0] i_add28_jacobi_1d28_b;
    logic [32:0] i_add28_jacobi_1d28_o;
    wire [32:0] i_add28_jacobi_1d28_q;
    wire [32:0] i_add_jacobi_1d21_a;
    wire [32:0] i_add_jacobi_1d21_b;
    logic [32:0] i_add_jacobi_1d21_o;
    wire [32:0] i_add_jacobi_1d21_q;
    wire [1:0] i_arrayidx225_jacobi_1d18_vt_const_1_q;
    wire [63:0] i_arrayidx225_jacobi_1d18_vt_join_q;
    wire [61:0] i_arrayidx225_jacobi_1d18_vt_select_63_b;
    wire [63:0] i_arrayidx276_jacobi_1d25_vt_join_q;
    wire [61:0] i_arrayidx276_jacobi_1d25_vt_select_63_b;
    wire [63:0] i_arrayidx307_jacobi_1d31_vt_join_q;
    wire [61:0] i_arrayidx307_jacobi_1d31_vt_select_63_b;
    wire [63:0] i_arrayidx409_jacobi_1d33_vt_join_q;
    wire [61:0] i_arrayidx409_jacobi_1d33_vt_select_63_b;
    wire [1:0] i_cleanups_shl33_jacobi_1d5_vt_join_q;
    wire [0:0] i_cleanups_shl33_jacobi_1d5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor35_jacobi_1d4_q;
    wire [8:0] i_fpga_indvars_iv_next9_jacobi_1d43_a;
    wire [8:0] i_fpga_indvars_iv_next9_jacobi_1d43_b;
    logic [8:0] i_fpga_indvars_iv_next9_jacobi_1d43_o;
    wire [8:0] i_fpga_indvars_iv_next9_jacobi_1d43_q;
    wire [63:0] i_idxprom23_jacobi_1d20_vt_join_q;
    wire [31:0] i_idxprom23_jacobi_1d20_vt_select_31_b;
    wire [63:0] i_idxprom26_jacobi_1d24_vt_join_q;
    wire [31:0] i_idxprom26_jacobi_1d24_vt_select_31_b;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_pre_pre124_jacobi_1d12_out_dest_data_out_3_0;
    wire [31:0] i_llvm_fpga_mem_memdep_4_jacobi_1d32_out_memdep_4_jacobi_1d_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_4_jacobi_1d32_out_memdep_4_jacobi_1d_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_4_jacobi_1d32_out_memdep_4_jacobi_1d_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_4_jacobi_1d32_out_memdep_4_jacobi_1d_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_4_jacobi_1d32_out_memdep_4_jacobi_1d_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_4_jacobi_1d32_out_memdep_4_jacobi_1d_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_4_jacobi_1d32_out_memdep_4_jacobi_1d_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_memdep_5_jacobi_1d34_out_memdep_5_jacobi_1d_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_5_jacobi_1d34_out_memdep_5_jacobi_1d_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_5_jacobi_1d34_out_memdep_5_jacobi_1d_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_5_jacobi_1d34_out_memdep_5_jacobi_1d_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_5_jacobi_1d34_out_memdep_5_jacobi_1d_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_5_jacobi_1d34_out_memdep_5_jacobi_1d_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_5_jacobi_1d34_out_memdep_5_jacobi_1d_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_jacobi_1d12_jacobi_1d19_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_jacobi_1d12_jacobi_1d19_out_unnamed_jacobi_1d12_jacobi_1d_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d12_jacobi_1d19_out_unnamed_jacobi_1d12_jacobi_1d_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_jacobi_1d12_jacobi_1d19_out_unnamed_jacobi_1d12_jacobi_1d_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d12_jacobi_1d19_out_unnamed_jacobi_1d12_jacobi_1d_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d12_jacobi_1d19_out_unnamed_jacobi_1d12_jacobi_1d_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d12_jacobi_1d19_out_unnamed_jacobi_1d12_jacobi_1d_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_jacobi_1d12_jacobi_1d19_out_unnamed_jacobi_1d12_jacobi_1d_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d26_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d26_out_unnamed_jacobi_1d13_jacobi_1d_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d26_out_unnamed_jacobi_1d13_jacobi_1d_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d26_out_unnamed_jacobi_1d13_jacobi_1d_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d26_out_unnamed_jacobi_1d13_jacobi_1d_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d26_out_unnamed_jacobi_1d13_jacobi_1d_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d26_out_unnamed_jacobi_1d13_jacobi_1d_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d26_out_unnamed_jacobi_1d13_jacobi_1d_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp4167_pop27_jacobi_1d46_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp4167_pop27_jacobi_1d46_out_feedback_stall_out_27;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups32_pop26_jacobi_1d2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups32_pop26_jacobi_1d2_out_feedback_stall_out_26;
    wire [1:0] i_llvm_fpga_pop_i2_initerations27_pop25_jacobi_1d7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations27_pop25_jacobi_1d7_out_feedback_stall_out_25;
    wire [31:0] i_llvm_fpga_pop_i32_i14_030_pop24_jacobi_1d15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i14_030_pop24_jacobi_1d15_out_feedback_stall_out_24;
    wire [31:0] i_llvm_fpga_pop_i32_pop23_jacobi_1d13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_pop23_jacobi_1d13_out_feedback_stall_out_23;
    wire [7:0] i_llvm_fpga_pop_i8_fpga_indvars_iv8_pop22_jacobi_1d35_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i8_fpga_indvars_iv8_pop22_jacobi_1d35_out_feedback_stall_out_22;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration31_jacobi_1d11_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration31_jacobi_1d11_out_feedback_valid_out_4;
    wire [0:0] i_llvm_fpga_push_i1_notcmp4167_push27_jacobi_1d47_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_i1_notcmp4167_push27_jacobi_1d47_out_feedback_valid_out_27;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond39_jacobi_1d39_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond39_jacobi_1d39_out_feedback_valid_out_5;
    wire [7:0] i_llvm_fpga_push_i2_cleanups32_push26_jacobi_1d42_out_feedback_out_26;
    wire [0:0] i_llvm_fpga_push_i2_cleanups32_push26_jacobi_1d42_out_feedback_valid_out_26;
    wire [7:0] i_llvm_fpga_push_i2_initerations27_push25_jacobi_1d9_out_feedback_out_25;
    wire [0:0] i_llvm_fpga_push_i2_initerations27_push25_jacobi_1d9_out_feedback_valid_out_25;
    wire [31:0] i_llvm_fpga_push_i32_i14_030_push24_jacobi_1d23_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_i32_i14_030_push24_jacobi_1d23_out_feedback_valid_out_24;
    wire [31:0] i_llvm_fpga_push_i32_push23_jacobi_1d27_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i32_push23_jacobi_1d27_out_feedback_valid_out_23;
    wire [7:0] i_llvm_fpga_push_i8_fpga_indvars_iv8_push22_jacobi_1d44_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_i8_fpga_indvars_iv8_push22_jacobi_1d44_out_feedback_valid_out_22;
    wire [0:0] i_masked38_jacobi_1d45_qi;
    reg [0:0] i_masked38_jacobi_1d45_q;
    wire [32:0] i_mul_add18_jacobi_1d30_a;
    wire [32:0] i_mul_add18_jacobi_1d30_b;
    logic [32:0] i_mul_add18_jacobi_1d30_o;
    wire [32:0] i_mul_add18_jacobi_1d30_q;
    wire [0:0] i_next_cleanups37_jacobi_1d41_s;
    reg [1:0] i_next_cleanups37_jacobi_1d41_q;
    wire [1:0] i_next_initerations28_jacobi_1d8_vt_join_q;
    wire [0:0] i_next_initerations28_jacobi_1d8_vt_select_0_b;
    wire [0:0] i_notcmp26_jacobi_1d38_q;
    wire [0:0] i_or36_jacobi_1d40_q;
    wire [0:0] i_replace_phi_jacobi_1d14_s;
    reg [31:0] i_replace_phi_jacobi_1d14_q;
    wire [32:0] i_sub_jacobi_1d16_a;
    wire [32:0] i_sub_jacobi_1d16_b;
    logic [32:0] i_sub_jacobi_1d16_o;
    wire [32:0] i_sub_jacobi_1d16_q;
    wire [31:0] i_unnamed_jacobi_1d29_vt_join_q;
    wire [30:0] i_unnamed_jacobi_1d29_vt_select_31_b;
    wire [31:0] bgTrunc_i_add25_jacobi_1d22_sel_x_b;
    wire [31:0] bgTrunc_i_add28_jacobi_1d28_sel_x_b;
    wire [31:0] bgTrunc_i_add_jacobi_1d21_sel_x_b;
    wire [7:0] bgTrunc_i_fpga_indvars_iv_next9_jacobi_1d43_sel_x_b;
    wire [31:0] bgTrunc_i_mul_add18_jacobi_1d30_sel_x_b;
    wire [31:0] bgTrunc_i_sub_jacobi_1d16_sel_x_b;
    wire [9:0] i_arrayidx225_jacobi_1d0_add_x_a;
    wire [9:0] i_arrayidx225_jacobi_1d0_add_x_b;
    logic [9:0] i_arrayidx225_jacobi_1d0_add_x_o;
    wire [9:0] i_arrayidx225_jacobi_1d0_add_x_q;
    wire [63:0] i_arrayidx225_jacobi_1d0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx225_jacobi_1d0_narrow_x_b;
    wire [8:0] i_arrayidx225_jacobi_1d0_shift_join_x_q;
    wire [8:0] i_arrayidx225_jacobi_1d0_dupName_0_trunc_sel_x_b;
    wire [8:0] i_arrayidx225_jacobi_1d0_dupName_2_trunc_sel_x_b;
    wire [9:0] i_arrayidx276_jacobi_1d0_add_x_a;
    wire [9:0] i_arrayidx276_jacobi_1d0_add_x_b;
    logic [9:0] i_arrayidx276_jacobi_1d0_add_x_o;
    wire [9:0] i_arrayidx276_jacobi_1d0_add_x_q;
    wire [63:0] i_arrayidx276_jacobi_1d0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx276_jacobi_1d0_narrow_x_b;
    wire [8:0] i_arrayidx276_jacobi_1d0_shift_join_x_q;
    wire [8:0] i_arrayidx276_jacobi_1d0_dupName_0_trunc_sel_x_b;
    wire [8:0] i_arrayidx276_jacobi_1d0_dupName_2_trunc_sel_x_b;
    wire [9:0] i_arrayidx307_jacobi_1d0_add_x_a;
    wire [9:0] i_arrayidx307_jacobi_1d0_add_x_b;
    logic [9:0] i_arrayidx307_jacobi_1d0_add_x_o;
    wire [9:0] i_arrayidx307_jacobi_1d0_add_x_q;
    wire [63:0] i_arrayidx307_jacobi_1d0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx307_jacobi_1d0_narrow_x_b;
    wire [8:0] i_arrayidx307_jacobi_1d0_shift_join_x_q;
    wire [8:0] i_arrayidx307_jacobi_1d0_dupName_0_trunc_sel_x_b;
    wire [8:0] i_arrayidx307_jacobi_1d0_dupName_2_trunc_sel_x_b;
    wire [9:0] i_arrayidx409_jacobi_1d0_add_x_a;
    wire [9:0] i_arrayidx409_jacobi_1d0_add_x_b;
    logic [9:0] i_arrayidx409_jacobi_1d0_add_x_o;
    wire [9:0] i_arrayidx409_jacobi_1d0_add_x_q;
    wire [63:0] i_arrayidx409_jacobi_1d0_append_upper_bits_x_q;
    wire [8:0] i_arrayidx409_jacobi_1d0_dupName_2_trunc_sel_x_b;
    wire [0:0] i_first_cleanup34_jacobi_1d3_sel_x_b;
    wire [63:0] i_idxprom21_jacobi_1d17_sel_x_b;
    wire [63:0] i_idxprom23_jacobi_1d20_sel_x_b;
    wire [63:0] i_idxprom26_jacobi_1d24_sel_x_b;
    wire [0:0] i_last_initeration30_jacobi_1d10_sel_x_b;
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
    wire [0:0] i_exitcond10_jacobi_1d36_cmp_nsign_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid229_i_cleanups_shl33_jacobi_1d0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid229_i_cleanups_shl33_jacobi_1d0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid230_i_cleanups_shl33_jacobi_1d0_shift_x_q;
    wire [0:0] leftShiftStage0_uid232_i_cleanups_shl33_jacobi_1d0_shift_x_s;
    reg [1:0] leftShiftStage0_uid232_i_cleanups_shl33_jacobi_1d0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid236_i_next_initerations28_jacobi_1d0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid238_i_next_initerations28_jacobi_1d0_shift_x_q;
    wire [0:0] rightShiftStage0_uid240_i_next_initerations28_jacobi_1d0_shift_x_s;
    reg [1:0] rightShiftStage0_uid240_i_next_initerations28_jacobi_1d0_shift_x_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid245_i_unnamed_jacobi_1d0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid245_i_unnamed_jacobi_1d0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid246_i_unnamed_jacobi_1d0_shift_x_q;
    wire [0:0] leftShiftStage0_uid248_i_unnamed_jacobi_1d0_shift_x_s;
    reg [31:0] leftShiftStage0_uid248_i_unnamed_jacobi_1d0_shift_x_q;
    wire [54:0] i_arrayidx225_jacobi_1d0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx225_jacobi_1d0_upper_bits_x_merged_bit_select_c;
    wire [54:0] i_arrayidx409_jacobi_1d0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx409_jacobi_1d0_upper_bits_x_merged_bit_select_c;
    wire [54:0] i_arrayidx307_jacobi_1d0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx307_jacobi_1d0_upper_bits_x_merged_bit_select_c;
    reg [0:0] redist0_sync_together96_aunroll_x_in_c0_eni2_1_tpl_1_q;
    reg [0:0] redist1_sync_together96_aunroll_x_in_c0_eni2_1_tpl_5_q;
    reg [0:0] redist1_sync_together96_aunroll_x_in_c0_eni2_1_tpl_5_delay_0;
    reg [0:0] redist1_sync_together96_aunroll_x_in_c0_eni2_1_tpl_5_delay_1;
    reg [0:0] redist1_sync_together96_aunroll_x_in_c0_eni2_1_tpl_5_delay_2;
    reg [0:0] redist2_sync_together96_aunroll_x_in_c0_eni2_2_tpl_5_q;
    reg [0:0] redist2_sync_together96_aunroll_x_in_c0_eni2_2_tpl_5_delay_0;
    reg [0:0] redist2_sync_together96_aunroll_x_in_c0_eni2_2_tpl_5_delay_1;
    reg [0:0] redist2_sync_together96_aunroll_x_in_c0_eni2_2_tpl_5_delay_2;
    reg [0:0] redist2_sync_together96_aunroll_x_in_c0_eni2_2_tpl_5_delay_3;
    reg [0:0] redist3_sync_together96_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist4_sync_together96_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist4_sync_together96_aunroll_x_in_i_valid_4_delay_0;
    reg [0:0] redist4_sync_together96_aunroll_x_in_i_valid_4_delay_1;
    reg [0:0] redist5_sync_together96_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist6_sync_together96_aunroll_x_in_i_valid_6_q;
    reg [0:0] redist7_sync_together96_aunroll_x_in_i_valid_7_q;
    reg [6:0] redist8_i_arrayidx307_jacobi_1d0_narrow_x_b_6_q;
    reg [6:0] redist8_i_arrayidx307_jacobi_1d0_narrow_x_b_6_delay_0;
    reg [6:0] redist8_i_arrayidx307_jacobi_1d0_narrow_x_b_6_delay_1;
    reg [6:0] redist8_i_arrayidx307_jacobi_1d0_narrow_x_b_6_delay_2;
    reg [6:0] redist8_i_arrayidx307_jacobi_1d0_narrow_x_b_6_delay_3;
    reg [6:0] redist9_i_arrayidx276_jacobi_1d0_narrow_x_b_1_q;
    reg [6:0] redist10_i_arrayidx225_jacobi_1d0_narrow_x_b_1_q;
    reg [31:0] redist11_bgTrunc_i_add28_jacobi_1d28_sel_x_b_1_q;
    reg [0:0] redist12_i_masked38_jacobi_1d45_q_7_q;
    reg [0:0] redist13_i_llvm_fpga_pop_i1_notcmp4167_pop27_jacobi_1d46_out_data_out_1_q;
    reg [0:0] redist14_i_llvm_fpga_pop_i1_notcmp4167_pop27_jacobi_1d46_out_data_out_3_q;
    reg [0:0] redist14_i_llvm_fpga_pop_i1_notcmp4167_pop27_jacobi_1d46_out_data_out_3_delay_0;
    reg [0:0] redist15_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_data_out_1_q;
    reg [0:0] redist16_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_data_out_6_q;
    reg [0:0] redist16_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_data_out_6_delay_0;
    reg [0:0] redist16_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_data_out_6_delay_1;
    reg [0:0] redist16_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_data_out_6_delay_2;
    reg [0:0] redist16_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_data_out_6_delay_3;
    reg [0:0] redist17_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_data_out_8_q;
    reg [0:0] redist17_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_data_out_8_delay_0;
    reg [0:0] redist18_i_first_cleanup_xor35_jacobi_1d4_q_1_q;
    reg [0:0] redist19_i_first_cleanup_xor35_jacobi_1d4_q_6_q;
    reg [0:0] redist19_i_first_cleanup_xor35_jacobi_1d4_q_6_delay_0;
    reg [0:0] redist19_i_first_cleanup_xor35_jacobi_1d4_q_6_delay_1;
    reg [0:0] redist19_i_first_cleanup_xor35_jacobi_1d4_q_6_delay_2;
    reg [0:0] redist19_i_first_cleanup_xor35_jacobi_1d4_q_6_delay_3;
    reg [6:0] redist8_i_arrayidx307_jacobi_1d0_narrow_x_b_6_inputreg0_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist3_sync_together96_aunroll_x_in_i_valid_1(DELAY,255)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together96_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist3_sync_together96_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist15_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_data_out_1(DELAY,267)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist15_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid229_i_cleanups_shl33_jacobi_1d0_shift_x(BITSELECT,228)@2
    assign leftShiftStage0Idx1Rng1_uid229_i_cleanups_shl33_jacobi_1d0_shift_x_in = i_llvm_fpga_pop_i2_cleanups32_pop26_jacobi_1d2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid229_i_cleanups_shl33_jacobi_1d0_shift_x_b = leftShiftStage0Idx1Rng1_uid229_i_cleanups_shl33_jacobi_1d0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid230_i_cleanups_shl33_jacobi_1d0_shift_x(BITJOIN,229)@2
    assign leftShiftStage0Idx1_uid230_i_cleanups_shl33_jacobi_1d0_shift_x_q = {leftShiftStage0Idx1Rng1_uid229_i_cleanups_shl33_jacobi_1d0_shift_x_b, GND_q};

    // leftShiftStage0_uid232_i_cleanups_shl33_jacobi_1d0_shift_x(MUX,231)@2
    assign leftShiftStage0_uid232_i_cleanups_shl33_jacobi_1d0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid232_i_cleanups_shl33_jacobi_1d0_shift_x_s or i_llvm_fpga_pop_i2_cleanups32_pop26_jacobi_1d2_out_data_out or leftShiftStage0Idx1_uid230_i_cleanups_shl33_jacobi_1d0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid232_i_cleanups_shl33_jacobi_1d0_shift_x_s)
            1'b0 : leftShiftStage0_uid232_i_cleanups_shl33_jacobi_1d0_shift_x_q = i_llvm_fpga_pop_i2_cleanups32_pop26_jacobi_1d2_out_data_out;
            1'b1 : leftShiftStage0_uid232_i_cleanups_shl33_jacobi_1d0_shift_x_q = leftShiftStage0Idx1_uid230_i_cleanups_shl33_jacobi_1d0_shift_x_q;
            default : leftShiftStage0_uid232_i_cleanups_shl33_jacobi_1d0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl33_jacobi_1d5_vt_select_1(BITSELECT,57)@2
    assign i_cleanups_shl33_jacobi_1d5_vt_select_1_b = leftShiftStage0_uid232_i_cleanups_shl33_jacobi_1d0_shift_x_q[1:1];

    // i_cleanups_shl33_jacobi_1d5_vt_join(BITJOIN,56)@2
    assign i_cleanups_shl33_jacobi_1d5_vt_join_q = {i_cleanups_shl33_jacobi_1d5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor35_jacobi_1d4(LOGICAL,60)@2
    assign i_first_cleanup_xor35_jacobi_1d4_q = i_first_cleanup34_jacobi_1d3_sel_x_b ^ VCC_q;

    // i_notcmp26_jacobi_1d38(LOGICAL,99)@2
    assign i_notcmp26_jacobi_1d38_q = i_exitcond10_jacobi_1d36_cmp_nsign_q ^ VCC_q;

    // i_or36_jacobi_1d40(LOGICAL,100)@2
    assign i_or36_jacobi_1d40_q = i_notcmp26_jacobi_1d38_q | i_first_cleanup_xor35_jacobi_1d4_q;

    // i_next_cleanups37_jacobi_1d41(MUX,95)@2
    assign i_next_cleanups37_jacobi_1d41_s = i_or36_jacobi_1d40_q;
    always @(i_next_cleanups37_jacobi_1d41_s or i_llvm_fpga_pop_i2_cleanups32_pop26_jacobi_1d2_out_data_out or i_cleanups_shl33_jacobi_1d5_vt_join_q)
    begin
        unique case (i_next_cleanups37_jacobi_1d41_s)
            1'b0 : i_next_cleanups37_jacobi_1d41_q = i_llvm_fpga_pop_i2_cleanups32_pop26_jacobi_1d2_out_data_out;
            1'b1 : i_next_cleanups37_jacobi_1d41_q = i_cleanups_shl33_jacobi_1d5_vt_join_q;
            default : i_next_cleanups37_jacobi_1d41_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups32_push26_jacobi_1d42(BLACKBOX,88)@2
    // out out_feedback_out_26@20000000
    // out out_feedback_valid_out_26@20000000
    jacobi_1d_i_llvm_fpga_push_i2_cleanups32_push26_0 thei_llvm_fpga_push_i2_cleanups32_push26_jacobi_1d42 (
        .in_data_in(i_next_cleanups37_jacobi_1d41_q),
        .in_feedback_stall_in_26(i_llvm_fpga_pop_i2_cleanups32_pop26_jacobi_1d2_out_feedback_stall_out_26),
        .in_keep_going29(redist15_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together96_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_26(i_llvm_fpga_push_i2_cleanups32_push26_jacobi_1d42_out_feedback_out_26),
        .out_feedback_valid_out_26(i_llvm_fpga_push_i2_cleanups32_push26_jacobi_1d42_out_feedback_valid_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together96_aunroll_x_in_c0_eni2_1_tpl_1(DELAY,252)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together96_aunroll_x_in_c0_eni2_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together96_aunroll_x_in_c0_eni2_1_tpl_1_q <= $unsigned(in_c0_eni2_1_tpl);
        end
    end

    // c_i2_169(CONSTANT,29)
    assign c_i2_169_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups32_pop26_jacobi_1d2(BLACKBOX,80)@2
    // out out_feedback_stall_out_26@20000000
    jacobi_1d_i_llvm_fpga_pop_i2_cleanups32_pop26_0 thei_llvm_fpga_pop_i2_cleanups32_pop26_jacobi_1d2 (
        .in_data_in(c_i2_169_q),
        .in_dir(redist0_sync_together96_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_26(i_llvm_fpga_push_i2_cleanups32_push26_jacobi_1d42_out_feedback_out_26),
        .in_feedback_valid_in_26(i_llvm_fpga_push_i2_cleanups32_push26_jacobi_1d42_out_feedback_valid_out_26),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together96_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups32_pop26_jacobi_1d2_out_data_out),
        .out_feedback_stall_out_26(i_llvm_fpga_pop_i2_cleanups32_pop26_jacobi_1d2_out_feedback_stall_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup34_jacobi_1d3_sel_x(BITSELECT,179)@2
    assign i_first_cleanup34_jacobi_1d3_sel_x_b = i_llvm_fpga_pop_i2_cleanups32_pop26_jacobi_1d2_out_data_out[0:0];

    // c_i8_176(CONSTANT,33)
    assign c_i8_176_q = $unsigned(8'b11111111);

    // i_fpga_indvars_iv_next9_jacobi_1d43(ADD,61)@2
    assign i_fpga_indvars_iv_next9_jacobi_1d43_a = {1'b0, i_llvm_fpga_pop_i8_fpga_indvars_iv8_pop22_jacobi_1d35_out_data_out};
    assign i_fpga_indvars_iv_next9_jacobi_1d43_b = {1'b0, c_i8_176_q};
    assign i_fpga_indvars_iv_next9_jacobi_1d43_o = $unsigned(i_fpga_indvars_iv_next9_jacobi_1d43_a) + $unsigned(i_fpga_indvars_iv_next9_jacobi_1d43_b);
    assign i_fpga_indvars_iv_next9_jacobi_1d43_q = i_fpga_indvars_iv_next9_jacobi_1d43_o[8:0];

    // bgTrunc_i_fpga_indvars_iv_next9_jacobi_1d43_sel_x(BITSELECT,116)@2
    assign bgTrunc_i_fpga_indvars_iv_next9_jacobi_1d43_sel_x_b = i_fpga_indvars_iv_next9_jacobi_1d43_q[7:0];

    // i_llvm_fpga_push_i8_fpga_indvars_iv8_push22_jacobi_1d44(BLACKBOX,92)@2
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    jacobi_1d_i_llvm_fpga_push_i8_fpga_indvars_iv8_push22_0 thei_llvm_fpga_push_i8_fpga_indvars_iv8_push22_jacobi_1d44 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next9_jacobi_1d43_sel_x_b),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_i8_fpga_indvars_iv8_pop22_jacobi_1d35_out_feedback_stall_out_22),
        .in_keep_going29(redist15_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together96_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_i8_fpga_indvars_iv8_push22_jacobi_1d44_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_i8_fpga_indvars_iv8_push22_jacobi_1d44_out_feedback_valid_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i8_9674(CONSTANT,34)
    assign c_i8_9674_q = $unsigned(8'b01100000);

    // i_llvm_fpga_pop_i8_fpga_indvars_iv8_pop22_jacobi_1d35(BLACKBOX,84)@2
    // out out_feedback_stall_out_22@20000000
    jacobi_1d_i_llvm_fpga_pop_i8_fpga_indvars_iv8_pop22_0 thei_llvm_fpga_pop_i8_fpga_indvars_iv8_pop22_jacobi_1d35 (
        .in_data_in(c_i8_9674_q),
        .in_dir(redist0_sync_together96_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_22(i_llvm_fpga_push_i8_fpga_indvars_iv8_push22_jacobi_1d44_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_i8_fpga_indvars_iv8_push22_jacobi_1d44_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together96_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i8_fpga_indvars_iv8_pop22_jacobi_1d35_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_i8_fpga_indvars_iv8_pop22_jacobi_1d35_out_feedback_stall_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond10_jacobi_1d36_cmp_nsign(LOGICAL,224)@2
    assign i_exitcond10_jacobi_1d36_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i8_fpga_indvars_iv8_pop22_jacobi_1d35_out_data_out[7:7]));

    // i_llvm_fpga_push_i1_notexitcond39_jacobi_1d39(BLACKBOX,87)@2
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    jacobi_1d_i_llvm_fpga_push_i1_notexitcond39_0 thei_llvm_fpga_push_i1_notexitcond39_jacobi_1d39 (
        .in_data_in(i_exitcond10_jacobi_1d36_cmp_nsign_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_not_exitcond_stall_out),
        .in_first_cleanup34(i_first_cleanup34_jacobi_1d3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together96_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond39_jacobi_1d39_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond39_jacobi_1d39_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,197)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid236_i_next_initerations28_jacobi_1d0_shift_x(BITSELECT,235)@2
    assign rightShiftStage0Idx1Rng1_uid236_i_next_initerations28_jacobi_1d0_shift_x_b = i_llvm_fpga_pop_i2_initerations27_pop25_jacobi_1d7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid238_i_next_initerations28_jacobi_1d0_shift_x(BITJOIN,237)@2
    assign rightShiftStage0Idx1_uid238_i_next_initerations28_jacobi_1d0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid236_i_next_initerations28_jacobi_1d0_shift_x_b};

    // valid_fanout_reg1(REG,195)@1 + 1
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

    // valid_fanout_reg2(REG,196)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations27_push25_jacobi_1d9(BLACKBOX,89)@2
    // out out_feedback_out_25@20000000
    // out out_feedback_valid_out_25@20000000
    jacobi_1d_i_llvm_fpga_push_i2_initerations27_push25_0 thei_llvm_fpga_push_i2_initerations27_push25_jacobi_1d9 (
        .in_data_in(i_next_initerations28_jacobi_1d8_vt_join_q),
        .in_feedback_stall_in_25(i_llvm_fpga_pop_i2_initerations27_pop25_jacobi_1d7_out_feedback_stall_out_25),
        .in_keep_going29(redist15_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_25(i_llvm_fpga_push_i2_initerations27_push25_jacobi_1d9_out_feedback_out_25),
        .out_feedback_valid_out_25(i_llvm_fpga_push_i2_initerations27_push25_jacobi_1d9_out_feedback_valid_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations27_pop25_jacobi_1d7(BLACKBOX,81)@2
    // out out_feedback_stall_out_25@20000000
    jacobi_1d_i_llvm_fpga_pop_i2_initerations27_pop25_0 thei_llvm_fpga_pop_i2_initerations27_pop25_jacobi_1d7 (
        .in_data_in(c_i2_169_q),
        .in_dir(redist0_sync_together96_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_25(i_llvm_fpga_push_i2_initerations27_push25_jacobi_1d9_out_feedback_out_25),
        .in_feedback_valid_in_25(i_llvm_fpga_push_i2_initerations27_push25_jacobi_1d9_out_feedback_valid_out_25),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations27_pop25_jacobi_1d7_out_data_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_i2_initerations27_pop25_jacobi_1d7_out_feedback_stall_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid240_i_next_initerations28_jacobi_1d0_shift_x(MUX,239)@2
    assign rightShiftStage0_uid240_i_next_initerations28_jacobi_1d0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid240_i_next_initerations28_jacobi_1d0_shift_x_s or i_llvm_fpga_pop_i2_initerations27_pop25_jacobi_1d7_out_data_out or rightShiftStage0Idx1_uid238_i_next_initerations28_jacobi_1d0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid240_i_next_initerations28_jacobi_1d0_shift_x_s)
            1'b0 : rightShiftStage0_uid240_i_next_initerations28_jacobi_1d0_shift_x_q = i_llvm_fpga_pop_i2_initerations27_pop25_jacobi_1d7_out_data_out;
            1'b1 : rightShiftStage0_uid240_i_next_initerations28_jacobi_1d0_shift_x_q = rightShiftStage0Idx1_uid238_i_next_initerations28_jacobi_1d0_shift_x_q;
            default : rightShiftStage0_uid240_i_next_initerations28_jacobi_1d0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations28_jacobi_1d8_vt_select_0(BITSELECT,98)@2
    assign i_next_initerations28_jacobi_1d8_vt_select_0_b = rightShiftStage0_uid240_i_next_initerations28_jacobi_1d0_shift_x_q[0:0];

    // i_next_initerations28_jacobi_1d8_vt_join(BITJOIN,97)@2
    assign i_next_initerations28_jacobi_1d8_vt_join_q = {GND_q, i_next_initerations28_jacobi_1d8_vt_select_0_b};

    // i_last_initeration30_jacobi_1d10_sel_x(BITSELECT,183)@2
    assign i_last_initeration30_jacobi_1d10_sel_x_b = i_next_initerations28_jacobi_1d8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration31_jacobi_1d11(BLACKBOX,85)@2
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    jacobi_1d_i_llvm_fpga_push_i1_lastiniteration31_0 thei_llvm_fpga_push_i1_lastiniteration31_jacobi_1d11 (
        .in_data_in(i_last_initeration30_jacobi_1d10_sel_x_b),
        .in_feedback_stall_in_4(i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_initeration_stall_out),
        .in_keep_going29(redist15_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i1_lastiniteration31_jacobi_1d11_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i1_lastiniteration31_jacobi_1d11_out_feedback_valid_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going29_jacobi_1d6(BLACKBOX,78)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    jacobi_1d_i_llvm_fpga_pipeline_keep_going29_0 thei_llvm_fpga_pipeline_keep_going29_jacobi_1d6 (
        .in_data_in(in_c0_eni2_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration31_jacobi_1d11_out_feedback_out_4),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration31_jacobi_1d11_out_feedback_valid_out_4),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond39_jacobi_1d39_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond39_jacobi_1d39_out_feedback_valid_out_5),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,39)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,109)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_pipeline_valid_out;

    // valid_fanout_reg7(REG,201)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist3_sync_together96_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist18_i_first_cleanup_xor35_jacobi_1d4_q_1(DELAY,270)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_first_cleanup_xor35_jacobi_1d4_q_1_q <= '0;
        end
        else
        begin
            redist18_i_first_cleanup_xor35_jacobi_1d4_q_1_q <= $unsigned(i_first_cleanup_xor35_jacobi_1d4_q);
        end
    end

    // c_jacobi_1d_A_1_local_pmem(CONSTANT,35)
    assign c_jacobi_1d_A_1_local_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx225_jacobi_1d0_upper_bits_x_merged_bit_select(BITSELECT,249)@3
    assign i_arrayidx225_jacobi_1d0_upper_bits_x_merged_bit_select_b = c_jacobi_1d_A_1_local_pmem_q[63:9];
    assign i_arrayidx225_jacobi_1d0_upper_bits_x_merged_bit_select_c = c_jacobi_1d_A_1_local_pmem_q[8:0];

    // c_i32_173(CONSTANT,31)
    assign c_i32_173_q = $unsigned(32'b11111111111111111111111111111111);

    // valid_fanout_reg6(REG,200)@1 + 1
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

    // valid_fanout_reg8(REG,202)@1 + 1
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

    // i_add25_jacobi_1d22(ADD,40)@2
    assign i_add25_jacobi_1d22_a = {1'b0, i_llvm_fpga_pop_i32_i14_030_pop24_jacobi_1d15_out_data_out};
    assign i_add25_jacobi_1d22_b = {1'b0, c_i32_172_q};
    assign i_add25_jacobi_1d22_o = $unsigned(i_add25_jacobi_1d22_a) + $unsigned(i_add25_jacobi_1d22_b);
    assign i_add25_jacobi_1d22_q = i_add25_jacobi_1d22_o[32:0];

    // bgTrunc_i_add25_jacobi_1d22_sel_x(BITSELECT,113)@2
    assign bgTrunc_i_add25_jacobi_1d22_sel_x_b = i_add25_jacobi_1d22_q[31:0];

    // i_llvm_fpga_push_i32_i14_030_push24_jacobi_1d23(BLACKBOX,90)@2
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    jacobi_1d_i_llvm_fpga_push_i32_i14_030_push24_0 thei_llvm_fpga_push_i32_i14_030_push24_jacobi_1d23 (
        .in_data_in(bgTrunc_i_add25_jacobi_1d22_sel_x_b),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_i32_i14_030_pop24_jacobi_1d15_out_feedback_stall_out_24),
        .in_keep_going29(redist15_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_i32_i14_030_push24_jacobi_1d23_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_i32_i14_030_push24_jacobi_1d23_out_feedback_valid_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_172(CONSTANT,30)
    assign c_i32_172_q = $unsigned(32'b00000000000000000000000000000001);

    // i_llvm_fpga_pop_i32_i14_030_pop24_jacobi_1d15(BLACKBOX,82)@2
    // out out_feedback_stall_out_24@20000000
    jacobi_1d_i_llvm_fpga_pop_i32_i14_030_pop24_0 thei_llvm_fpga_pop_i32_i14_030_pop24_jacobi_1d15 (
        .in_data_in(c_i32_172_q),
        .in_dir(redist0_sync_together96_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_24(i_llvm_fpga_push_i32_i14_030_push24_jacobi_1d23_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_i32_i14_030_push24_jacobi_1d23_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_i14_030_pop24_jacobi_1d15_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_i32_i14_030_pop24_jacobi_1d15_out_feedback_stall_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sub_jacobi_1d16(ADD,102)@2
    assign i_sub_jacobi_1d16_a = {1'b0, i_llvm_fpga_pop_i32_i14_030_pop24_jacobi_1d15_out_data_out};
    assign i_sub_jacobi_1d16_b = {1'b0, c_i32_173_q};
    assign i_sub_jacobi_1d16_o = $unsigned(i_sub_jacobi_1d16_a) + $unsigned(i_sub_jacobi_1d16_b);
    assign i_sub_jacobi_1d16_q = i_sub_jacobi_1d16_o[32:0];

    // bgTrunc_i_sub_jacobi_1d16_sel_x(BITSELECT,118)@2
    assign bgTrunc_i_sub_jacobi_1d16_sel_x_b = i_sub_jacobi_1d16_q[31:0];

    // i_idxprom21_jacobi_1d17_sel_x(BITSELECT,180)@2
    assign i_idxprom21_jacobi_1d17_sel_x_b = $unsigned({{32{bgTrunc_i_sub_jacobi_1d16_sel_x_b[31]}}, bgTrunc_i_sub_jacobi_1d16_sel_x_b[31:0]});

    // i_arrayidx225_jacobi_1d0_dupName_0_trunc_sel_x(BITSELECT,137)@2
    assign i_arrayidx225_jacobi_1d0_dupName_0_trunc_sel_x_b = i_idxprom21_jacobi_1d17_sel_x_b[8:0];

    // i_arrayidx225_jacobi_1d0_narrow_x(BITSELECT,130)@2
    assign i_arrayidx225_jacobi_1d0_narrow_x_b = i_arrayidx225_jacobi_1d0_dupName_0_trunc_sel_x_b[6:0];

    // redist10_i_arrayidx225_jacobi_1d0_narrow_x_b_1(DELAY,262)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_arrayidx225_jacobi_1d0_narrow_x_b_1_q <= '0;
        end
        else
        begin
            redist10_i_arrayidx225_jacobi_1d0_narrow_x_b_1_q <= $unsigned(i_arrayidx225_jacobi_1d0_narrow_x_b);
        end
    end

    // i_arrayidx225_jacobi_1d0_shift_join_x(BITJOIN,131)@3
    assign i_arrayidx225_jacobi_1d0_shift_join_x_q = {redist10_i_arrayidx225_jacobi_1d0_narrow_x_b_1_q, i_arrayidx225_jacobi_1d18_vt_const_1_q};

    // i_arrayidx225_jacobi_1d0_add_x(ADD,127)@3
    assign i_arrayidx225_jacobi_1d0_add_x_a = {1'b0, i_arrayidx225_jacobi_1d0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx225_jacobi_1d0_add_x_b = {1'b0, i_arrayidx225_jacobi_1d0_shift_join_x_q};
    assign i_arrayidx225_jacobi_1d0_add_x_o = $unsigned(i_arrayidx225_jacobi_1d0_add_x_a) + $unsigned(i_arrayidx225_jacobi_1d0_add_x_b);
    assign i_arrayidx225_jacobi_1d0_add_x_q = i_arrayidx225_jacobi_1d0_add_x_o[9:0];

    // i_arrayidx225_jacobi_1d0_dupName_2_trunc_sel_x(BITSELECT,138)@3
    assign i_arrayidx225_jacobi_1d0_dupName_2_trunc_sel_x_b = i_arrayidx225_jacobi_1d0_add_x_q[8:0];

    // i_arrayidx225_jacobi_1d0_append_upper_bits_x(BITJOIN,128)@3
    assign i_arrayidx225_jacobi_1d0_append_upper_bits_x_q = {i_arrayidx225_jacobi_1d0_upper_bits_x_merged_bit_select_b, i_arrayidx225_jacobi_1d0_dupName_2_trunc_sel_x_b};

    // i_arrayidx225_jacobi_1d18_vt_select_63(BITSELECT,45)@3
    assign i_arrayidx225_jacobi_1d18_vt_select_63_b = i_arrayidx225_jacobi_1d0_append_upper_bits_x_q[63:2];

    // i_arrayidx225_jacobi_1d18_vt_const_1(CONSTANT,43)
    assign i_arrayidx225_jacobi_1d18_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx225_jacobi_1d18_vt_join(BITJOIN,44)@3
    assign i_arrayidx225_jacobi_1d18_vt_join_q = {i_arrayidx225_jacobi_1d18_vt_select_63_b, i_arrayidx225_jacobi_1d18_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_jacobi_1d12_jacobi_1d19(BLACKBOX,76)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_jacobi_1d12_jacobi_1d_avm_address@20000000
    // out out_unnamed_jacobi_1d12_jacobi_1d_avm_burstcount@20000000
    // out out_unnamed_jacobi_1d12_jacobi_1d_avm_byteenable@20000000
    // out out_unnamed_jacobi_1d12_jacobi_1d_avm_enable@20000000
    // out out_unnamed_jacobi_1d12_jacobi_1d_avm_read@20000000
    // out out_unnamed_jacobi_1d12_jacobi_1d_avm_write@20000000
    // out out_unnamed_jacobi_1d12_jacobi_1d_avm_writedata@20000000
    jacobi_1d_i_llvm_fpga_mem_unnamed_12_jacobi_1d0 thei_llvm_fpga_mem_unnamed_jacobi_1d12_jacobi_1d19 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx225_jacobi_1d18_vt_join_q),
        .in_i_predicate(redist18_i_first_cleanup_xor35_jacobi_1d4_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_unnamed_jacobi_1d12_jacobi_1d_avm_readdata(in_unnamed_jacobi_1d12_jacobi_1d_avm_readdata),
        .in_unnamed_jacobi_1d12_jacobi_1d_avm_readdatavalid(in_unnamed_jacobi_1d12_jacobi_1d_avm_readdatavalid),
        .in_unnamed_jacobi_1d12_jacobi_1d_avm_waitrequest(in_unnamed_jacobi_1d12_jacobi_1d_avm_waitrequest),
        .in_unnamed_jacobi_1d12_jacobi_1d_avm_writeack(in_unnamed_jacobi_1d12_jacobi_1d_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_jacobi_1d12_jacobi_1d19_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_jacobi_1d12_jacobi_1d_avm_address(i_llvm_fpga_mem_unnamed_jacobi_1d12_jacobi_1d19_out_unnamed_jacobi_1d12_jacobi_1d_avm_address),
        .out_unnamed_jacobi_1d12_jacobi_1d_avm_burstcount(i_llvm_fpga_mem_unnamed_jacobi_1d12_jacobi_1d19_out_unnamed_jacobi_1d12_jacobi_1d_avm_burstcount),
        .out_unnamed_jacobi_1d12_jacobi_1d_avm_byteenable(i_llvm_fpga_mem_unnamed_jacobi_1d12_jacobi_1d19_out_unnamed_jacobi_1d12_jacobi_1d_avm_byteenable),
        .out_unnamed_jacobi_1d12_jacobi_1d_avm_enable(i_llvm_fpga_mem_unnamed_jacobi_1d12_jacobi_1d19_out_unnamed_jacobi_1d12_jacobi_1d_avm_enable),
        .out_unnamed_jacobi_1d12_jacobi_1d_avm_read(i_llvm_fpga_mem_unnamed_jacobi_1d12_jacobi_1d19_out_unnamed_jacobi_1d12_jacobi_1d_avm_read),
        .out_unnamed_jacobi_1d12_jacobi_1d_avm_write(i_llvm_fpga_mem_unnamed_jacobi_1d12_jacobi_1d19_out_unnamed_jacobi_1d12_jacobi_1d_avm_write),
        .out_unnamed_jacobi_1d12_jacobi_1d_avm_writedata(i_llvm_fpga_mem_unnamed_jacobi_1d12_jacobi_1d19_out_unnamed_jacobi_1d12_jacobi_1d_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,121)
    assign out_unnamed_jacobi_1d12_jacobi_1d_avm_address = i_llvm_fpga_mem_unnamed_jacobi_1d12_jacobi_1d19_out_unnamed_jacobi_1d12_jacobi_1d_avm_address;
    assign out_unnamed_jacobi_1d12_jacobi_1d_avm_enable = i_llvm_fpga_mem_unnamed_jacobi_1d12_jacobi_1d19_out_unnamed_jacobi_1d12_jacobi_1d_avm_enable;
    assign out_unnamed_jacobi_1d12_jacobi_1d_avm_read = i_llvm_fpga_mem_unnamed_jacobi_1d12_jacobi_1d19_out_unnamed_jacobi_1d12_jacobi_1d_avm_read;
    assign out_unnamed_jacobi_1d12_jacobi_1d_avm_write = i_llvm_fpga_mem_unnamed_jacobi_1d12_jacobi_1d19_out_unnamed_jacobi_1d12_jacobi_1d_avm_write;
    assign out_unnamed_jacobi_1d12_jacobi_1d_avm_writedata = i_llvm_fpga_mem_unnamed_jacobi_1d12_jacobi_1d19_out_unnamed_jacobi_1d12_jacobi_1d_avm_writedata;
    assign out_unnamed_jacobi_1d12_jacobi_1d_avm_byteenable = i_llvm_fpga_mem_unnamed_jacobi_1d12_jacobi_1d19_out_unnamed_jacobi_1d12_jacobi_1d_avm_byteenable;
    assign out_unnamed_jacobi_1d12_jacobi_1d_avm_burstcount = i_llvm_fpga_mem_unnamed_jacobi_1d12_jacobi_1d19_out_unnamed_jacobi_1d12_jacobi_1d_avm_burstcount;

    // valid_fanout_reg9(REG,203)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist3_sync_together96_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_i32_undef71(CONSTANT,32)
    assign c_i32_undef71_q = $unsigned(32'b00000000000000000000000000000000);

    // i_idxprom26_jacobi_1d24_sel_x(BITSELECT,182)@2
    assign i_idxprom26_jacobi_1d24_sel_x_b = {32'b00000000000000000000000000000000, bgTrunc_i_add25_jacobi_1d22_sel_x_b[31:0]};

    // i_idxprom26_jacobi_1d24_vt_select_31(BITSELECT,71)@2
    assign i_idxprom26_jacobi_1d24_vt_select_31_b = i_idxprom26_jacobi_1d24_sel_x_b[31:0];

    // i_idxprom26_jacobi_1d24_vt_join(BITJOIN,70)@2
    assign i_idxprom26_jacobi_1d24_vt_join_q = {c_i32_undef71_q, i_idxprom26_jacobi_1d24_vt_select_31_b};

    // i_arrayidx276_jacobi_1d0_dupName_0_trunc_sel_x(BITSELECT,149)@2
    assign i_arrayidx276_jacobi_1d0_dupName_0_trunc_sel_x_b = i_idxprom26_jacobi_1d24_vt_join_q[8:0];

    // i_arrayidx276_jacobi_1d0_narrow_x(BITSELECT,142)@2
    assign i_arrayidx276_jacobi_1d0_narrow_x_b = i_arrayidx276_jacobi_1d0_dupName_0_trunc_sel_x_b[6:0];

    // redist9_i_arrayidx276_jacobi_1d0_narrow_x_b_1(DELAY,261)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_arrayidx276_jacobi_1d0_narrow_x_b_1_q <= '0;
        end
        else
        begin
            redist9_i_arrayidx276_jacobi_1d0_narrow_x_b_1_q <= $unsigned(i_arrayidx276_jacobi_1d0_narrow_x_b);
        end
    end

    // i_arrayidx276_jacobi_1d0_shift_join_x(BITJOIN,143)@3
    assign i_arrayidx276_jacobi_1d0_shift_join_x_q = {redist9_i_arrayidx276_jacobi_1d0_narrow_x_b_1_q, i_arrayidx225_jacobi_1d18_vt_const_1_q};

    // i_arrayidx276_jacobi_1d0_add_x(ADD,139)@3
    assign i_arrayidx276_jacobi_1d0_add_x_a = {1'b0, i_arrayidx225_jacobi_1d0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx276_jacobi_1d0_add_x_b = {1'b0, i_arrayidx276_jacobi_1d0_shift_join_x_q};
    assign i_arrayidx276_jacobi_1d0_add_x_o = $unsigned(i_arrayidx276_jacobi_1d0_add_x_a) + $unsigned(i_arrayidx276_jacobi_1d0_add_x_b);
    assign i_arrayidx276_jacobi_1d0_add_x_q = i_arrayidx276_jacobi_1d0_add_x_o[9:0];

    // i_arrayidx276_jacobi_1d0_dupName_2_trunc_sel_x(BITSELECT,150)@3
    assign i_arrayidx276_jacobi_1d0_dupName_2_trunc_sel_x_b = i_arrayidx276_jacobi_1d0_add_x_q[8:0];

    // i_arrayidx276_jacobi_1d0_append_upper_bits_x(BITJOIN,140)@3
    assign i_arrayidx276_jacobi_1d0_append_upper_bits_x_q = {i_arrayidx225_jacobi_1d0_upper_bits_x_merged_bit_select_b, i_arrayidx276_jacobi_1d0_dupName_2_trunc_sel_x_b};

    // i_arrayidx276_jacobi_1d25_vt_select_63(BITSELECT,48)@3
    assign i_arrayidx276_jacobi_1d25_vt_select_63_b = i_arrayidx276_jacobi_1d0_append_upper_bits_x_q[63:2];

    // i_arrayidx276_jacobi_1d25_vt_join(BITJOIN,47)@3
    assign i_arrayidx276_jacobi_1d25_vt_join_q = {i_arrayidx276_jacobi_1d25_vt_select_63_b, i_arrayidx225_jacobi_1d18_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d26(BLACKBOX,77)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_jacobi_1d13_jacobi_1d_avm_address@20000000
    // out out_unnamed_jacobi_1d13_jacobi_1d_avm_burstcount@20000000
    // out out_unnamed_jacobi_1d13_jacobi_1d_avm_byteenable@20000000
    // out out_unnamed_jacobi_1d13_jacobi_1d_avm_enable@20000000
    // out out_unnamed_jacobi_1d13_jacobi_1d_avm_read@20000000
    // out out_unnamed_jacobi_1d13_jacobi_1d_avm_write@20000000
    // out out_unnamed_jacobi_1d13_jacobi_1d_avm_writedata@20000000
    jacobi_1d_i_llvm_fpga_mem_unnamed_13_jacobi_1d0 thei_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d26 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx276_jacobi_1d25_vt_join_q),
        .in_i_predicate(redist18_i_first_cleanup_xor35_jacobi_1d4_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg9_q),
        .in_unnamed_jacobi_1d13_jacobi_1d_avm_readdata(in_unnamed_jacobi_1d13_jacobi_1d_avm_readdata),
        .in_unnamed_jacobi_1d13_jacobi_1d_avm_readdatavalid(in_unnamed_jacobi_1d13_jacobi_1d_avm_readdatavalid),
        .in_unnamed_jacobi_1d13_jacobi_1d_avm_waitrequest(in_unnamed_jacobi_1d13_jacobi_1d_avm_waitrequest),
        .in_unnamed_jacobi_1d13_jacobi_1d_avm_writeack(in_unnamed_jacobi_1d13_jacobi_1d_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d26_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_jacobi_1d13_jacobi_1d_avm_address(i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d26_out_unnamed_jacobi_1d13_jacobi_1d_avm_address),
        .out_unnamed_jacobi_1d13_jacobi_1d_avm_burstcount(i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d26_out_unnamed_jacobi_1d13_jacobi_1d_avm_burstcount),
        .out_unnamed_jacobi_1d13_jacobi_1d_avm_byteenable(i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d26_out_unnamed_jacobi_1d13_jacobi_1d_avm_byteenable),
        .out_unnamed_jacobi_1d13_jacobi_1d_avm_enable(i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d26_out_unnamed_jacobi_1d13_jacobi_1d_avm_enable),
        .out_unnamed_jacobi_1d13_jacobi_1d_avm_read(i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d26_out_unnamed_jacobi_1d13_jacobi_1d_avm_read),
        .out_unnamed_jacobi_1d13_jacobi_1d_avm_write(i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d26_out_unnamed_jacobi_1d13_jacobi_1d_avm_write),
        .out_unnamed_jacobi_1d13_jacobi_1d_avm_writedata(i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d26_out_unnamed_jacobi_1d13_jacobi_1d_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,123)
    assign out_unnamed_jacobi_1d13_jacobi_1d_avm_address = i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d26_out_unnamed_jacobi_1d13_jacobi_1d_avm_address;
    assign out_unnamed_jacobi_1d13_jacobi_1d_avm_enable = i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d26_out_unnamed_jacobi_1d13_jacobi_1d_avm_enable;
    assign out_unnamed_jacobi_1d13_jacobi_1d_avm_read = i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d26_out_unnamed_jacobi_1d13_jacobi_1d_avm_read;
    assign out_unnamed_jacobi_1d13_jacobi_1d_avm_write = i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d26_out_unnamed_jacobi_1d13_jacobi_1d_avm_write;
    assign out_unnamed_jacobi_1d13_jacobi_1d_avm_writedata = i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d26_out_unnamed_jacobi_1d13_jacobi_1d_avm_writedata;
    assign out_unnamed_jacobi_1d13_jacobi_1d_avm_byteenable = i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d26_out_unnamed_jacobi_1d13_jacobi_1d_avm_byteenable;
    assign out_unnamed_jacobi_1d13_jacobi_1d_avm_burstcount = i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d26_out_unnamed_jacobi_1d13_jacobi_1d_avm_burstcount;

    // leftShiftStage0Idx1Rng1_uid245_i_unnamed_jacobi_1d0_shift_x(BITSELECT,244)@8
    assign leftShiftStage0Idx1Rng1_uid245_i_unnamed_jacobi_1d0_shift_x_in = redist11_bgTrunc_i_add28_jacobi_1d28_sel_x_b_1_q[30:0];
    assign leftShiftStage0Idx1Rng1_uid245_i_unnamed_jacobi_1d0_shift_x_b = leftShiftStage0Idx1Rng1_uid245_i_unnamed_jacobi_1d0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid246_i_unnamed_jacobi_1d0_shift_x(BITJOIN,245)@8
    assign leftShiftStage0Idx1_uid246_i_unnamed_jacobi_1d0_shift_x_q = {leftShiftStage0Idx1Rng1_uid245_i_unnamed_jacobi_1d0_shift_x_b, GND_q};

    // leftShiftStage0_uid248_i_unnamed_jacobi_1d0_shift_x(MUX,247)@8
    assign leftShiftStage0_uid248_i_unnamed_jacobi_1d0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid248_i_unnamed_jacobi_1d0_shift_x_s or redist11_bgTrunc_i_add28_jacobi_1d28_sel_x_b_1_q or leftShiftStage0Idx1_uid246_i_unnamed_jacobi_1d0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid248_i_unnamed_jacobi_1d0_shift_x_s)
            1'b0 : leftShiftStage0_uid248_i_unnamed_jacobi_1d0_shift_x_q = redist11_bgTrunc_i_add28_jacobi_1d28_sel_x_b_1_q;
            1'b1 : leftShiftStage0_uid248_i_unnamed_jacobi_1d0_shift_x_q = leftShiftStage0Idx1_uid246_i_unnamed_jacobi_1d0_shift_x_q;
            default : leftShiftStage0_uid248_i_unnamed_jacobi_1d0_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_jacobi_1d29_vt_select_31(BITSELECT,105)@8
    assign i_unnamed_jacobi_1d29_vt_select_31_b = leftShiftStage0_uid248_i_unnamed_jacobi_1d0_shift_x_q[31:1];

    // i_unnamed_jacobi_1d29_vt_join(BITJOIN,104)@8
    assign i_unnamed_jacobi_1d29_vt_join_q = {i_unnamed_jacobi_1d29_vt_select_31_b, GND_q};

    // redist4_sync_together96_aunroll_x_in_i_valid_4(DELAY,256)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together96_aunroll_x_in_i_valid_4_delay_0 <= '0;
            redist4_sync_together96_aunroll_x_in_i_valid_4_delay_1 <= '0;
            redist4_sync_together96_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist4_sync_together96_aunroll_x_in_i_valid_4_delay_0 <= $unsigned(redist3_sync_together96_aunroll_x_in_i_valid_1_q);
            redist4_sync_together96_aunroll_x_in_i_valid_4_delay_1 <= redist4_sync_together96_aunroll_x_in_i_valid_4_delay_0;
            redist4_sync_together96_aunroll_x_in_i_valid_4_q <= redist4_sync_together96_aunroll_x_in_i_valid_4_delay_1;
        end
    end

    // valid_fanout_reg4(REG,198)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist4_sync_together96_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_pre_pre124_jacobi_1d12(BLACKBOX,73)@6
    jacobi_1d_i_llvm_fpga_ffwd_dest_i32_pre_pre124_0 thei_llvm_fpga_ffwd_dest_i32_pre_pre124_jacobi_1d12 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i32_pre_pre124_jacobi_1d12_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg5(REG,199)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist4_sync_together96_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist5_sync_together96_aunroll_x_in_i_valid_5(DELAY,257)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together96_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist5_sync_together96_aunroll_x_in_i_valid_5_q <= $unsigned(redist4_sync_together96_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg10(REG,204)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist5_sync_together96_aunroll_x_in_i_valid_5_q);
        end
    end

    // redist16_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_data_out_6(DELAY,268)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_data_out_6_delay_0 <= '0;
            redist16_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_data_out_6_delay_1 <= '0;
            redist16_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_data_out_6_delay_2 <= '0;
            redist16_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_data_out_6_delay_3 <= '0;
            redist16_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_data_out_6_q <= '0;
        end
        else
        begin
            redist16_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_data_out_6_delay_0 <= $unsigned(redist15_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_data_out_1_q);
            redist16_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_data_out_6_delay_1 <= redist16_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_data_out_6_delay_0;
            redist16_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_data_out_6_delay_2 <= redist16_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_data_out_6_delay_1;
            redist16_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_data_out_6_delay_3 <= redist16_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_data_out_6_delay_2;
            redist16_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_data_out_6_q <= redist16_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_data_out_6_delay_3;
        end
    end

    // i_llvm_fpga_push_i32_push23_jacobi_1d27(BLACKBOX,91)@7
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    jacobi_1d_i_llvm_fpga_push_i32_push23_0 thei_llvm_fpga_push_i32_push23_jacobi_1d27 (
        .in_data_in(i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d26_out_o_readdata),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_i32_pop23_jacobi_1d13_out_feedback_stall_out_23),
        .in_keep_going29(redist16_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_data_out_6_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i32_push23_jacobi_1d27_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i32_push23_jacobi_1d27_out_feedback_valid_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_pop23_jacobi_1d13(BLACKBOX,83)@6
    // out out_feedback_stall_out_23@20000000
    jacobi_1d_i_llvm_fpga_pop_i32_pop23_0 thei_llvm_fpga_pop_i32_pop23_jacobi_1d13 (
        .in_data_in(c_i32_undef71_q),
        .in_dir(redist1_sync_together96_aunroll_x_in_c0_eni2_1_tpl_5_q),
        .in_feedback_in_23(i_llvm_fpga_push_i32_push23_jacobi_1d27_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i32_push23_jacobi_1d27_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i32_pop23_jacobi_1d13_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i32_pop23_jacobi_1d13_out_feedback_stall_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together96_aunroll_x_in_c0_eni2_1_tpl_5(DELAY,253)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together96_aunroll_x_in_c0_eni2_1_tpl_5_delay_0 <= '0;
            redist1_sync_together96_aunroll_x_in_c0_eni2_1_tpl_5_delay_1 <= '0;
            redist1_sync_together96_aunroll_x_in_c0_eni2_1_tpl_5_delay_2 <= '0;
            redist1_sync_together96_aunroll_x_in_c0_eni2_1_tpl_5_q <= '0;
        end
        else
        begin
            redist1_sync_together96_aunroll_x_in_c0_eni2_1_tpl_5_delay_0 <= $unsigned(redist0_sync_together96_aunroll_x_in_c0_eni2_1_tpl_1_q);
            redist1_sync_together96_aunroll_x_in_c0_eni2_1_tpl_5_delay_1 <= redist1_sync_together96_aunroll_x_in_c0_eni2_1_tpl_5_delay_0;
            redist1_sync_together96_aunroll_x_in_c0_eni2_1_tpl_5_delay_2 <= redist1_sync_together96_aunroll_x_in_c0_eni2_1_tpl_5_delay_1;
            redist1_sync_together96_aunroll_x_in_c0_eni2_1_tpl_5_q <= redist1_sync_together96_aunroll_x_in_c0_eni2_1_tpl_5_delay_2;
        end
    end

    // i_replace_phi_jacobi_1d14(MUX,101)@6 + 1
    assign i_replace_phi_jacobi_1d14_s = redist1_sync_together96_aunroll_x_in_c0_eni2_1_tpl_5_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_replace_phi_jacobi_1d14_q <= 32'b0;
        end
        else
        begin
            unique case (i_replace_phi_jacobi_1d14_s)
                1'b0 : i_replace_phi_jacobi_1d14_q <= i_llvm_fpga_pop_i32_pop23_jacobi_1d13_out_data_out;
                1'b1 : i_replace_phi_jacobi_1d14_q <= i_llvm_fpga_ffwd_dest_i32_pre_pre124_jacobi_1d12_out_dest_data_out_3_0;
                default : i_replace_phi_jacobi_1d14_q <= 32'b0;
            endcase
        end
    end

    // i_add_jacobi_1d21(ADD,42)@7
    assign i_add_jacobi_1d21_a = {1'b0, i_replace_phi_jacobi_1d14_q};
    assign i_add_jacobi_1d21_b = {1'b0, i_llvm_fpga_mem_unnamed_jacobi_1d12_jacobi_1d19_out_o_readdata};
    assign i_add_jacobi_1d21_o = $unsigned(i_add_jacobi_1d21_a) + $unsigned(i_add_jacobi_1d21_b);
    assign i_add_jacobi_1d21_q = i_add_jacobi_1d21_o[32:0];

    // bgTrunc_i_add_jacobi_1d21_sel_x(BITSELECT,115)@7
    assign bgTrunc_i_add_jacobi_1d21_sel_x_b = i_add_jacobi_1d21_q[31:0];

    // i_add28_jacobi_1d28(ADD,41)@7
    assign i_add28_jacobi_1d28_a = {1'b0, bgTrunc_i_add_jacobi_1d21_sel_x_b};
    assign i_add28_jacobi_1d28_b = {1'b0, i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d26_out_o_readdata};
    assign i_add28_jacobi_1d28_o = $unsigned(i_add28_jacobi_1d28_a) + $unsigned(i_add28_jacobi_1d28_b);
    assign i_add28_jacobi_1d28_q = i_add28_jacobi_1d28_o[32:0];

    // bgTrunc_i_add28_jacobi_1d28_sel_x(BITSELECT,114)@7
    assign bgTrunc_i_add28_jacobi_1d28_sel_x_b = i_add28_jacobi_1d28_q[31:0];

    // redist11_bgTrunc_i_add28_jacobi_1d28_sel_x_b_1(DELAY,263)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_bgTrunc_i_add28_jacobi_1d28_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist11_bgTrunc_i_add28_jacobi_1d28_sel_x_b_1_q <= $unsigned(bgTrunc_i_add28_jacobi_1d28_sel_x_b);
        end
    end

    // i_mul_add18_jacobi_1d30(ADD,94)@8
    assign i_mul_add18_jacobi_1d30_a = {1'b0, redist11_bgTrunc_i_add28_jacobi_1d28_sel_x_b_1_q};
    assign i_mul_add18_jacobi_1d30_b = {1'b0, i_unnamed_jacobi_1d29_vt_join_q};
    assign i_mul_add18_jacobi_1d30_o = $unsigned(i_mul_add18_jacobi_1d30_a) + $unsigned(i_mul_add18_jacobi_1d30_b);
    assign i_mul_add18_jacobi_1d30_q = i_mul_add18_jacobi_1d30_o[32:0];

    // bgTrunc_i_mul_add18_jacobi_1d30_sel_x(BITSELECT,117)@8
    assign bgTrunc_i_mul_add18_jacobi_1d30_sel_x_b = i_mul_add18_jacobi_1d30_q[31:0];

    // redist6_sync_together96_aunroll_x_in_i_valid_6(DELAY,258)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together96_aunroll_x_in_i_valid_6_q <= '0;
        end
        else
        begin
            redist6_sync_together96_aunroll_x_in_i_valid_6_q <= $unsigned(redist5_sync_together96_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg11(REG,205)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist6_sync_together96_aunroll_x_in_i_valid_6_q);
        end
    end

    // redist19_i_first_cleanup_xor35_jacobi_1d4_q_6(DELAY,271)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_first_cleanup_xor35_jacobi_1d4_q_6_delay_0 <= '0;
            redist19_i_first_cleanup_xor35_jacobi_1d4_q_6_delay_1 <= '0;
            redist19_i_first_cleanup_xor35_jacobi_1d4_q_6_delay_2 <= '0;
            redist19_i_first_cleanup_xor35_jacobi_1d4_q_6_delay_3 <= '0;
            redist19_i_first_cleanup_xor35_jacobi_1d4_q_6_q <= '0;
        end
        else
        begin
            redist19_i_first_cleanup_xor35_jacobi_1d4_q_6_delay_0 <= $unsigned(redist18_i_first_cleanup_xor35_jacobi_1d4_q_1_q);
            redist19_i_first_cleanup_xor35_jacobi_1d4_q_6_delay_1 <= redist19_i_first_cleanup_xor35_jacobi_1d4_q_6_delay_0;
            redist19_i_first_cleanup_xor35_jacobi_1d4_q_6_delay_2 <= redist19_i_first_cleanup_xor35_jacobi_1d4_q_6_delay_1;
            redist19_i_first_cleanup_xor35_jacobi_1d4_q_6_delay_3 <= redist19_i_first_cleanup_xor35_jacobi_1d4_q_6_delay_2;
            redist19_i_first_cleanup_xor35_jacobi_1d4_q_6_q <= redist19_i_first_cleanup_xor35_jacobi_1d4_q_6_delay_3;
        end
    end

    // c_jacobi_1d_B_local_pmem(CONSTANT,37)
    assign c_jacobi_1d_B_local_pmem_q = $unsigned(64'b0100000001000010000000000000000000000000000000000000000000000000);

    // i_arrayidx307_jacobi_1d0_upper_bits_x_merged_bit_select(BITSELECT,251)@8
    assign i_arrayidx307_jacobi_1d0_upper_bits_x_merged_bit_select_b = c_jacobi_1d_B_local_pmem_q[63:9];
    assign i_arrayidx307_jacobi_1d0_upper_bits_x_merged_bit_select_c = c_jacobi_1d_B_local_pmem_q[8:0];

    // i_idxprom23_jacobi_1d20_sel_x(BITSELECT,181)@2
    assign i_idxprom23_jacobi_1d20_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i14_030_pop24_jacobi_1d15_out_data_out[31:0]};

    // i_idxprom23_jacobi_1d20_vt_select_31(BITSELECT,67)@2
    assign i_idxprom23_jacobi_1d20_vt_select_31_b = i_idxprom23_jacobi_1d20_sel_x_b[31:0];

    // i_idxprom23_jacobi_1d20_vt_join(BITJOIN,66)@2
    assign i_idxprom23_jacobi_1d20_vt_join_q = {c_i32_undef71_q, i_idxprom23_jacobi_1d20_vt_select_31_b};

    // i_arrayidx307_jacobi_1d0_dupName_0_trunc_sel_x(BITSELECT,161)@2
    assign i_arrayidx307_jacobi_1d0_dupName_0_trunc_sel_x_b = i_idxprom23_jacobi_1d20_vt_join_q[8:0];

    // i_arrayidx307_jacobi_1d0_narrow_x(BITSELECT,154)@2
    assign i_arrayidx307_jacobi_1d0_narrow_x_b = i_arrayidx307_jacobi_1d0_dupName_0_trunc_sel_x_b[6:0];

    // redist8_i_arrayidx307_jacobi_1d0_narrow_x_b_6_inputreg0(DELAY,272)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_arrayidx307_jacobi_1d0_narrow_x_b_6_inputreg0_q <= '0;
        end
        else
        begin
            redist8_i_arrayidx307_jacobi_1d0_narrow_x_b_6_inputreg0_q <= $unsigned(i_arrayidx307_jacobi_1d0_narrow_x_b);
        end
    end

    // redist8_i_arrayidx307_jacobi_1d0_narrow_x_b_6(DELAY,260)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_arrayidx307_jacobi_1d0_narrow_x_b_6_delay_0 <= '0;
            redist8_i_arrayidx307_jacobi_1d0_narrow_x_b_6_delay_1 <= '0;
            redist8_i_arrayidx307_jacobi_1d0_narrow_x_b_6_delay_2 <= '0;
            redist8_i_arrayidx307_jacobi_1d0_narrow_x_b_6_delay_3 <= '0;
            redist8_i_arrayidx307_jacobi_1d0_narrow_x_b_6_q <= '0;
        end
        else
        begin
            redist8_i_arrayidx307_jacobi_1d0_narrow_x_b_6_delay_0 <= $unsigned(redist8_i_arrayidx307_jacobi_1d0_narrow_x_b_6_inputreg0_q);
            redist8_i_arrayidx307_jacobi_1d0_narrow_x_b_6_delay_1 <= redist8_i_arrayidx307_jacobi_1d0_narrow_x_b_6_delay_0;
            redist8_i_arrayidx307_jacobi_1d0_narrow_x_b_6_delay_2 <= redist8_i_arrayidx307_jacobi_1d0_narrow_x_b_6_delay_1;
            redist8_i_arrayidx307_jacobi_1d0_narrow_x_b_6_delay_3 <= redist8_i_arrayidx307_jacobi_1d0_narrow_x_b_6_delay_2;
            redist8_i_arrayidx307_jacobi_1d0_narrow_x_b_6_q <= redist8_i_arrayidx307_jacobi_1d0_narrow_x_b_6_delay_3;
        end
    end

    // i_arrayidx307_jacobi_1d0_shift_join_x(BITJOIN,155)@8
    assign i_arrayidx307_jacobi_1d0_shift_join_x_q = {redist8_i_arrayidx307_jacobi_1d0_narrow_x_b_6_q, i_arrayidx225_jacobi_1d18_vt_const_1_q};

    // i_arrayidx307_jacobi_1d0_add_x(ADD,151)@8
    assign i_arrayidx307_jacobi_1d0_add_x_a = {1'b0, i_arrayidx307_jacobi_1d0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx307_jacobi_1d0_add_x_b = {1'b0, i_arrayidx307_jacobi_1d0_shift_join_x_q};
    assign i_arrayidx307_jacobi_1d0_add_x_o = $unsigned(i_arrayidx307_jacobi_1d0_add_x_a) + $unsigned(i_arrayidx307_jacobi_1d0_add_x_b);
    assign i_arrayidx307_jacobi_1d0_add_x_q = i_arrayidx307_jacobi_1d0_add_x_o[9:0];

    // i_arrayidx307_jacobi_1d0_dupName_2_trunc_sel_x(BITSELECT,162)@8
    assign i_arrayidx307_jacobi_1d0_dupName_2_trunc_sel_x_b = i_arrayidx307_jacobi_1d0_add_x_q[8:0];

    // i_arrayidx307_jacobi_1d0_append_upper_bits_x(BITJOIN,152)@8
    assign i_arrayidx307_jacobi_1d0_append_upper_bits_x_q = {i_arrayidx307_jacobi_1d0_upper_bits_x_merged_bit_select_b, i_arrayidx307_jacobi_1d0_dupName_2_trunc_sel_x_b};

    // i_arrayidx307_jacobi_1d31_vt_select_63(BITSELECT,51)@8
    assign i_arrayidx307_jacobi_1d31_vt_select_63_b = i_arrayidx307_jacobi_1d0_append_upper_bits_x_q[63:2];

    // i_arrayidx307_jacobi_1d31_vt_join(BITJOIN,50)@8
    assign i_arrayidx307_jacobi_1d31_vt_join_q = {i_arrayidx307_jacobi_1d31_vt_select_63_b, i_arrayidx225_jacobi_1d18_vt_const_1_q};

    // i_llvm_fpga_mem_memdep_4_jacobi_1d32(BLACKBOX,74)@8
    // out out_memdep_4_jacobi_1d_avm_address@20000000
    // out out_memdep_4_jacobi_1d_avm_burstcount@20000000
    // out out_memdep_4_jacobi_1d_avm_byteenable@20000000
    // out out_memdep_4_jacobi_1d_avm_enable@20000000
    // out out_memdep_4_jacobi_1d_avm_read@20000000
    // out out_memdep_4_jacobi_1d_avm_write@20000000
    // out out_memdep_4_jacobi_1d_avm_writedata@20000000
    // out out_o_stall@9
    // out out_o_valid@9
    // out out_o_writeack@9
    jacobi_1d_i_llvm_fpga_mem_memdep_4_0 thei_llvm_fpga_mem_memdep_4_jacobi_1d32 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx307_jacobi_1d31_vt_join_q),
        .in_i_predicate(redist19_i_first_cleanup_xor35_jacobi_1d4_q_6_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg11_q),
        .in_i_writedata(bgTrunc_i_mul_add18_jacobi_1d30_sel_x_b),
        .in_memdep_4_jacobi_1d_avm_readdata(in_memdep_4_jacobi_1d_avm_readdata),
        .in_memdep_4_jacobi_1d_avm_readdatavalid(in_memdep_4_jacobi_1d_avm_readdatavalid),
        .in_memdep_4_jacobi_1d_avm_waitrequest(in_memdep_4_jacobi_1d_avm_waitrequest),
        .in_memdep_4_jacobi_1d_avm_writeack(in_memdep_4_jacobi_1d_avm_writeack),
        .out_memdep_4_jacobi_1d_avm_address(i_llvm_fpga_mem_memdep_4_jacobi_1d32_out_memdep_4_jacobi_1d_avm_address),
        .out_memdep_4_jacobi_1d_avm_burstcount(i_llvm_fpga_mem_memdep_4_jacobi_1d32_out_memdep_4_jacobi_1d_avm_burstcount),
        .out_memdep_4_jacobi_1d_avm_byteenable(i_llvm_fpga_mem_memdep_4_jacobi_1d32_out_memdep_4_jacobi_1d_avm_byteenable),
        .out_memdep_4_jacobi_1d_avm_enable(i_llvm_fpga_mem_memdep_4_jacobi_1d32_out_memdep_4_jacobi_1d_avm_enable),
        .out_memdep_4_jacobi_1d_avm_read(i_llvm_fpga_mem_memdep_4_jacobi_1d32_out_memdep_4_jacobi_1d_avm_read),
        .out_memdep_4_jacobi_1d_avm_write(i_llvm_fpga_mem_memdep_4_jacobi_1d32_out_memdep_4_jacobi_1d_avm_write),
        .out_memdep_4_jacobi_1d_avm_writedata(i_llvm_fpga_mem_memdep_4_jacobi_1d32_out_memdep_4_jacobi_1d_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_ext_sig_sync_out_x(GPOUT,125)
    assign out_memdep_4_jacobi_1d_avm_address = i_llvm_fpga_mem_memdep_4_jacobi_1d32_out_memdep_4_jacobi_1d_avm_address;
    assign out_memdep_4_jacobi_1d_avm_enable = i_llvm_fpga_mem_memdep_4_jacobi_1d32_out_memdep_4_jacobi_1d_avm_enable;
    assign out_memdep_4_jacobi_1d_avm_read = i_llvm_fpga_mem_memdep_4_jacobi_1d32_out_memdep_4_jacobi_1d_avm_read;
    assign out_memdep_4_jacobi_1d_avm_write = i_llvm_fpga_mem_memdep_4_jacobi_1d32_out_memdep_4_jacobi_1d_avm_write;
    assign out_memdep_4_jacobi_1d_avm_writedata = i_llvm_fpga_mem_memdep_4_jacobi_1d32_out_memdep_4_jacobi_1d_avm_writedata;
    assign out_memdep_4_jacobi_1d_avm_byteenable = i_llvm_fpga_mem_memdep_4_jacobi_1d32_out_memdep_4_jacobi_1d_avm_byteenable;
    assign out_memdep_4_jacobi_1d_avm_burstcount = i_llvm_fpga_mem_memdep_4_jacobi_1d32_out_memdep_4_jacobi_1d_avm_burstcount;

    // valid_fanout_reg12(REG,206)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist6_sync_together96_aunroll_x_in_i_valid_6_q);
        end
    end

    // c_jacobi_1d_A_2_local_pmem(CONSTANT,36)
    assign c_jacobi_1d_A_2_local_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx409_jacobi_1d0_upper_bits_x_merged_bit_select(BITSELECT,250)@8
    assign i_arrayidx409_jacobi_1d0_upper_bits_x_merged_bit_select_b = c_jacobi_1d_A_2_local_pmem_q[63:9];
    assign i_arrayidx409_jacobi_1d0_upper_bits_x_merged_bit_select_c = c_jacobi_1d_A_2_local_pmem_q[8:0];

    // i_arrayidx409_jacobi_1d0_add_x(ADD,163)@8
    assign i_arrayidx409_jacobi_1d0_add_x_a = {1'b0, i_arrayidx409_jacobi_1d0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx409_jacobi_1d0_add_x_b = {1'b0, i_arrayidx307_jacobi_1d0_shift_join_x_q};
    assign i_arrayidx409_jacobi_1d0_add_x_o = $unsigned(i_arrayidx409_jacobi_1d0_add_x_a) + $unsigned(i_arrayidx409_jacobi_1d0_add_x_b);
    assign i_arrayidx409_jacobi_1d0_add_x_q = i_arrayidx409_jacobi_1d0_add_x_o[9:0];

    // i_arrayidx409_jacobi_1d0_dupName_2_trunc_sel_x(BITSELECT,174)@8
    assign i_arrayidx409_jacobi_1d0_dupName_2_trunc_sel_x_b = i_arrayidx409_jacobi_1d0_add_x_q[8:0];

    // i_arrayidx409_jacobi_1d0_append_upper_bits_x(BITJOIN,164)@8
    assign i_arrayidx409_jacobi_1d0_append_upper_bits_x_q = {i_arrayidx409_jacobi_1d0_upper_bits_x_merged_bit_select_b, i_arrayidx409_jacobi_1d0_dupName_2_trunc_sel_x_b};

    // i_arrayidx409_jacobi_1d33_vt_select_63(BITSELECT,54)@8
    assign i_arrayidx409_jacobi_1d33_vt_select_63_b = i_arrayidx409_jacobi_1d0_append_upper_bits_x_q[63:2];

    // i_arrayidx409_jacobi_1d33_vt_join(BITJOIN,53)@8
    assign i_arrayidx409_jacobi_1d33_vt_join_q = {i_arrayidx409_jacobi_1d33_vt_select_63_b, i_arrayidx225_jacobi_1d18_vt_const_1_q};

    // i_llvm_fpga_mem_memdep_5_jacobi_1d34(BLACKBOX,75)@8
    // out out_memdep_5_jacobi_1d_avm_address@20000000
    // out out_memdep_5_jacobi_1d_avm_burstcount@20000000
    // out out_memdep_5_jacobi_1d_avm_byteenable@20000000
    // out out_memdep_5_jacobi_1d_avm_enable@20000000
    // out out_memdep_5_jacobi_1d_avm_read@20000000
    // out out_memdep_5_jacobi_1d_avm_write@20000000
    // out out_memdep_5_jacobi_1d_avm_writedata@20000000
    // out out_o_stall@9
    // out out_o_valid@9
    // out out_o_writeack@9
    jacobi_1d_i_llvm_fpga_mem_memdep_5_0 thei_llvm_fpga_mem_memdep_5_jacobi_1d34 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx409_jacobi_1d33_vt_join_q),
        .in_i_predicate(redist19_i_first_cleanup_xor35_jacobi_1d4_q_6_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg12_q),
        .in_i_writedata(bgTrunc_i_mul_add18_jacobi_1d30_sel_x_b),
        .in_memdep_5_jacobi_1d_avm_readdata(in_memdep_5_jacobi_1d_avm_readdata),
        .in_memdep_5_jacobi_1d_avm_readdatavalid(in_memdep_5_jacobi_1d_avm_readdatavalid),
        .in_memdep_5_jacobi_1d_avm_waitrequest(in_memdep_5_jacobi_1d_avm_waitrequest),
        .in_memdep_5_jacobi_1d_avm_writeack(in_memdep_5_jacobi_1d_avm_writeack),
        .out_memdep_5_jacobi_1d_avm_address(i_llvm_fpga_mem_memdep_5_jacobi_1d34_out_memdep_5_jacobi_1d_avm_address),
        .out_memdep_5_jacobi_1d_avm_burstcount(i_llvm_fpga_mem_memdep_5_jacobi_1d34_out_memdep_5_jacobi_1d_avm_burstcount),
        .out_memdep_5_jacobi_1d_avm_byteenable(i_llvm_fpga_mem_memdep_5_jacobi_1d34_out_memdep_5_jacobi_1d_avm_byteenable),
        .out_memdep_5_jacobi_1d_avm_enable(i_llvm_fpga_mem_memdep_5_jacobi_1d34_out_memdep_5_jacobi_1d_avm_enable),
        .out_memdep_5_jacobi_1d_avm_read(i_llvm_fpga_mem_memdep_5_jacobi_1d34_out_memdep_5_jacobi_1d_avm_read),
        .out_memdep_5_jacobi_1d_avm_write(i_llvm_fpga_mem_memdep_5_jacobi_1d34_out_memdep_5_jacobi_1d_avm_write),
        .out_memdep_5_jacobi_1d_avm_writedata(i_llvm_fpga_mem_memdep_5_jacobi_1d34_out_memdep_5_jacobi_1d_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_ext_sig_sync_out_x(GPOUT,126)
    assign out_memdep_5_jacobi_1d_avm_address = i_llvm_fpga_mem_memdep_5_jacobi_1d34_out_memdep_5_jacobi_1d_avm_address;
    assign out_memdep_5_jacobi_1d_avm_enable = i_llvm_fpga_mem_memdep_5_jacobi_1d34_out_memdep_5_jacobi_1d_avm_enable;
    assign out_memdep_5_jacobi_1d_avm_read = i_llvm_fpga_mem_memdep_5_jacobi_1d34_out_memdep_5_jacobi_1d_avm_read;
    assign out_memdep_5_jacobi_1d_avm_write = i_llvm_fpga_mem_memdep_5_jacobi_1d34_out_memdep_5_jacobi_1d_avm_write;
    assign out_memdep_5_jacobi_1d_avm_writedata = i_llvm_fpga_mem_memdep_5_jacobi_1d34_out_memdep_5_jacobi_1d_avm_writedata;
    assign out_memdep_5_jacobi_1d_avm_byteenable = i_llvm_fpga_mem_memdep_5_jacobi_1d34_out_memdep_5_jacobi_1d_avm_byteenable;
    assign out_memdep_5_jacobi_1d_avm_burstcount = i_llvm_fpga_mem_memdep_5_jacobi_1d34_out_memdep_5_jacobi_1d_avm_burstcount;

    // redist7_sync_together96_aunroll_x_in_i_valid_7(DELAY,259)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together96_aunroll_x_in_i_valid_7_q <= '0;
        end
        else
        begin
            redist7_sync_together96_aunroll_x_in_i_valid_7_q <= $unsigned(redist6_sync_together96_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg0(REG,194)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist7_sync_together96_aunroll_x_in_i_valid_7_q);
        end
    end

    // valid_fanout_reg13(REG,207)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist4_sync_together96_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg14(REG,208)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist5_sync_together96_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp4167_push27_jacobi_1d47(BLACKBOX,86)@7
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    jacobi_1d_i_llvm_fpga_push_i1_notcmp4167_push27_0 thei_llvm_fpga_push_i1_notcmp4167_push27_jacobi_1d47 (
        .in_data_in(redist13_i_llvm_fpga_pop_i1_notcmp4167_pop27_jacobi_1d46_out_data_out_1_q),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_i1_notcmp4167_pop27_jacobi_1d46_out_feedback_stall_out_27),
        .in_keep_going29(redist16_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_data_out_6_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_i1_notcmp4167_push27_jacobi_1d47_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_i1_notcmp4167_push27_jacobi_1d47_out_feedback_valid_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together96_aunroll_x_in_c0_eni2_2_tpl_5(DELAY,254)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together96_aunroll_x_in_c0_eni2_2_tpl_5_delay_0 <= '0;
            redist2_sync_together96_aunroll_x_in_c0_eni2_2_tpl_5_delay_1 <= '0;
            redist2_sync_together96_aunroll_x_in_c0_eni2_2_tpl_5_delay_2 <= '0;
            redist2_sync_together96_aunroll_x_in_c0_eni2_2_tpl_5_delay_3 <= '0;
            redist2_sync_together96_aunroll_x_in_c0_eni2_2_tpl_5_q <= '0;
        end
        else
        begin
            redist2_sync_together96_aunroll_x_in_c0_eni2_2_tpl_5_delay_0 <= $unsigned(in_c0_eni2_2_tpl);
            redist2_sync_together96_aunroll_x_in_c0_eni2_2_tpl_5_delay_1 <= redist2_sync_together96_aunroll_x_in_c0_eni2_2_tpl_5_delay_0;
            redist2_sync_together96_aunroll_x_in_c0_eni2_2_tpl_5_delay_2 <= redist2_sync_together96_aunroll_x_in_c0_eni2_2_tpl_5_delay_1;
            redist2_sync_together96_aunroll_x_in_c0_eni2_2_tpl_5_delay_3 <= redist2_sync_together96_aunroll_x_in_c0_eni2_2_tpl_5_delay_2;
            redist2_sync_together96_aunroll_x_in_c0_eni2_2_tpl_5_q <= redist2_sync_together96_aunroll_x_in_c0_eni2_2_tpl_5_delay_3;
        end
    end

    // i_llvm_fpga_pop_i1_notcmp4167_pop27_jacobi_1d46(BLACKBOX,79)@6
    // out out_feedback_stall_out_27@20000000
    jacobi_1d_i_llvm_fpga_pop_i1_notcmp4167_pop27_0 thei_llvm_fpga_pop_i1_notcmp4167_pop27_jacobi_1d46 (
        .in_data_in(redist2_sync_together96_aunroll_x_in_c0_eni2_2_tpl_5_q),
        .in_dir(redist1_sync_together96_aunroll_x_in_c0_eni2_1_tpl_5_q),
        .in_feedback_in_27(i_llvm_fpga_push_i1_notcmp4167_push27_jacobi_1d47_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_i1_notcmp4167_push27_jacobi_1d47_out_feedback_valid_out_27),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp4167_pop27_jacobi_1d46_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_i1_notcmp4167_pop27_jacobi_1d46_out_feedback_stall_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist13_i_llvm_fpga_pop_i1_notcmp4167_pop27_jacobi_1d46_out_data_out_1(DELAY,265)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_llvm_fpga_pop_i1_notcmp4167_pop27_jacobi_1d46_out_data_out_1_q <= '0;
        end
        else
        begin
            redist13_i_llvm_fpga_pop_i1_notcmp4167_pop27_jacobi_1d46_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_notcmp4167_pop27_jacobi_1d46_out_data_out);
        end
    end

    // redist14_i_llvm_fpga_pop_i1_notcmp4167_pop27_jacobi_1d46_out_data_out_3(DELAY,266)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_pop_i1_notcmp4167_pop27_jacobi_1d46_out_data_out_3_delay_0 <= '0;
            redist14_i_llvm_fpga_pop_i1_notcmp4167_pop27_jacobi_1d46_out_data_out_3_q <= '0;
        end
        else
        begin
            redist14_i_llvm_fpga_pop_i1_notcmp4167_pop27_jacobi_1d46_out_data_out_3_delay_0 <= $unsigned(redist13_i_llvm_fpga_pop_i1_notcmp4167_pop27_jacobi_1d46_out_data_out_1_q);
            redist14_i_llvm_fpga_pop_i1_notcmp4167_pop27_jacobi_1d46_out_data_out_3_q <= redist14_i_llvm_fpga_pop_i1_notcmp4167_pop27_jacobi_1d46_out_data_out_3_delay_0;
        end
    end

    // i_masked38_jacobi_1d45(LOGICAL,93)@2 + 1
    assign i_masked38_jacobi_1d45_qi = i_notcmp26_jacobi_1d38_q & i_first_cleanup34_jacobi_1d3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked38_jacobi_1d45_delay ( .xin(i_masked38_jacobi_1d45_qi), .xout(i_masked38_jacobi_1d45_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist12_i_masked38_jacobi_1d45_q_7(DELAY,264)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist12_i_masked38_jacobi_1d45_q_7 ( .xin(i_masked38_jacobi_1d45_q), .xout(redist12_i_masked38_jacobi_1d45_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist17_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_data_out_8(DELAY,269)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_data_out_8_delay_0 <= '0;
            redist17_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_data_out_8_q <= '0;
        end
        else
        begin
            redist17_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_data_out_8_delay_0 <= $unsigned(redist16_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_data_out_6_q);
            redist17_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_data_out_8_q <= redist17_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_data_out_8_delay_0;
        end
    end

    // sync_out_aunroll_x(GPOUT,192)@9
    assign out_c0_exi389_0_tpl = GND_q;
    assign out_c0_exi389_1_tpl = redist17_i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_out_data_out_8_q;
    assign out_c0_exi389_2_tpl = redist12_i_masked38_jacobi_1d45_q_7_q;
    assign out_c0_exi389_3_tpl = redist14_i_llvm_fpga_pop_i1_notcmp4167_pop27_jacobi_1d46_out_data_out_3_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_jacobi_1d1 = GND_q;

endmodule
