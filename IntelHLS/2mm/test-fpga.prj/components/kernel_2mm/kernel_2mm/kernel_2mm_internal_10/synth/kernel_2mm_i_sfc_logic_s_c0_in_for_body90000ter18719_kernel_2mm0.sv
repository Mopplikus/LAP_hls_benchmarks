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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body9_kernel_2mms_c0_enter18719_kernel_2mm0
// Created for function/kernel kernel_2mm
// SystemVerilog created on Wed Apr  5 01:12:29 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_i_sfc_logic_s_c0_in_for_body90000ter18719_kernel_2mm0 (
    input wire [31:0] in_memdep_4_kernel_2mm_avm_readdata,
    input wire [0:0] in_memdep_4_kernel_2mm_avm_writeack,
    input wire [0:0] in_memdep_4_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_memdep_4_kernel_2mm_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    input wire [63:0] in_intel_reserved_ffwd_4_0,
    input wire [63:0] in_intel_reserved_ffwd_5_0,
    output wire [31:0] out_memdep_4_kernel_2mm_avm_address,
    output wire [0:0] out_memdep_4_kernel_2mm_avm_enable,
    output wire [0:0] out_memdep_4_kernel_2mm_avm_read,
    output wire [0:0] out_memdep_4_kernel_2mm_avm_write,
    output wire [31:0] out_memdep_4_kernel_2mm_avm_writedata,
    output wire [3:0] out_memdep_4_kernel_2mm_avm_byteenable,
    output wire [0:0] out_memdep_4_kernel_2mm_avm_burstcount,
    output wire [0:0] out_c0_exi12_0_tpl,
    output wire [0:0] out_c0_exi12_1_tpl,
    output wire [0:0] out_c0_exi12_2_tpl,
    output wire [63:0] out_c0_exi12_3_tpl,
    output wire [63:0] out_c0_exi12_4_tpl,
    output wire [63:0] out_c0_exi12_5_tpl,
    output wire [63:0] out_c0_exi12_6_tpl,
    output wire [63:0] out_c0_exi12_7_tpl,
    output wire [63:0] out_c0_exi12_8_tpl,
    output wire [63:0] out_c0_exi12_9_tpl,
    output wire [63:0] out_c0_exi12_10_tpl,
    output wire [0:0] out_c0_exi12_11_tpl,
    output wire [0:0] out_c0_exi12_12_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_kernel_2mm1,
    input wire [0:0] in_c0_eni3_0_tpl,
    input wire [0:0] in_c0_eni3_1_tpl,
    input wire [31:0] in_c0_eni3_2_tpl,
    input wire [0:0] in_c0_eni3_3_tpl,
    input wire [0:0] in_enable,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] c_i2_149_q;
    wire [31:0] c_i32_051_q;
    wire [31:0] c_i32_152_q;
    wire [4:0] c_i5_155_q;
    wire [4:0] c_i5_853_q;
    wire [63:0] c_kernel_2mm_A_local_pmem_q;
    wire [63:0] c_kernel_2mm_B_local_pmem_q;
    wire [63:0] c_kernel_2mm_C_local_pmem_q;
    wire [63:0] c_kernel_2mm_D_local_pmem_q;
    wire [63:0] c_kernel_2mm_tmp_local_pmem_q;
    wire [1:0] i_arrayidx151_kernel_2mm19_vt_const_1_q;
    wire [63:0] i_arrayidx151_kernel_2mm19_vt_join_q;
    wire [61:0] i_arrayidx151_kernel_2mm19_vt_select_63_b;
    wire [63:0] i_arrayidx232_kernel_2mm22_vt_join_q;
    wire [61:0] i_arrayidx232_kernel_2mm22_vt_select_63_b;
    wire [63:0] i_arrayidx313_kernel_2mm25_vt_join_q;
    wire [61:0] i_arrayidx313_kernel_2mm25_vt_select_63_b;
    wire [63:0] i_arrayidx394_kernel_2mm28_vt_join_q;
    wire [61:0] i_arrayidx394_kernel_2mm28_vt_select_63_b;
    wire [63:0] i_arrayidx435_kernel_2mm29_vt_join_q;
    wire [61:0] i_arrayidx435_kernel_2mm29_vt_select_63_b;
    wire [1:0] i_cleanups_shl99_kernel_2mm5_vt_join_q;
    wire [0:0] i_cleanups_shl99_kernel_2mm5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor101_kernel_2mm4_q;
    wire [5:0] i_fpga_indvars_iv_next_kernel_2mm41_a;
    wire [5:0] i_fpga_indvars_iv_next_kernel_2mm41_b;
    logic [5:0] i_fpga_indvars_iv_next_kernel_2mm41_o;
    wire [5:0] i_fpga_indvars_iv_next_kernel_2mm41_q;
    wire [63:0] i_idxprom10_kernel_2mm16_vt_join_q;
    wire [31:0] i_idxprom10_kernel_2mm16_vt_select_31_b;
    wire [63:0] i_idxprom_kernel_2mm14_vt_join_q;
    wire [31:0] i_idxprom_kernel_2mm14_vt_select_31_b;
    wire [32:0] i_inc_kernel_2mm31_a;
    wire [32:0] i_inc_kernel_2mm31_b;
    logic [32:0] i_inc_kernel_2mm31_o;
    wire [32:0] i_inc_kernel_2mm31_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024a10i32_a7834_kernel_2mm17_out_dest_data_out_2_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024a10i32_b7935_kernel_2mm20_out_dest_data_out_3_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024a10i32_c8036_kernel_2mm23_out_dest_data_out_4_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024a10i32_d8138_kernel_2mm26_out_dest_data_out_5_0;
    wire [31:0] i_llvm_fpga_mem_memdep_4_kernel_2mm30_out_memdep_4_kernel_2mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_4_kernel_2mm30_out_memdep_4_kernel_2mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_4_kernel_2mm30_out_memdep_4_kernel_2mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_4_kernel_2mm30_out_memdep_4_kernel_2mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_4_kernel_2mm30_out_memdep_4_kernel_2mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_4_kernel_2mm30_out_memdep_4_kernel_2mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_4_kernel_2mm30_out_memdep_4_kernel_2mm_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp107119_pop32_kernel_2mm44_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp107119_pop32_kernel_2mm44_out_feedback_stall_out_32;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups98_pop31_kernel_2mm2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups98_pop31_kernel_2mm2_out_feedback_stall_out_31;
    wire [1:0] i_llvm_fpga_pop_i2_initerations93_pop30_kernel_2mm7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations93_pop30_kernel_2mm7_out_feedback_stall_out_30;
    wire [31:0] i_llvm_fpga_pop_i32_i_075_pop23120_pop33_kernel_2mm12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_075_pop23120_pop33_kernel_2mm12_out_feedback_stall_out_33;
    wire [31:0] i_llvm_fpga_pop_i32_j_074_pop29_kernel_2mm15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_074_pop29_kernel_2mm15_out_feedback_stall_out_29;
    wire [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv_pop28_kernel_2mm33_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv_pop28_kernel_2mm33_out_feedback_stall_out_28;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration97_kernel_2mm11_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration97_kernel_2mm11_out_feedback_valid_out_16;
    wire [0:0] i_llvm_fpga_push_i1_notcmp107119_push32_kernel_2mm45_out_feedback_out_32;
    wire [0:0] i_llvm_fpga_push_i1_notcmp107119_push32_kernel_2mm45_out_feedback_valid_out_32;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond105_kernel_2mm37_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond105_kernel_2mm37_out_feedback_valid_out_17;
    wire [7:0] i_llvm_fpga_push_i2_cleanups98_push31_kernel_2mm40_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_i2_cleanups98_push31_kernel_2mm40_out_feedback_valid_out_31;
    wire [7:0] i_llvm_fpga_push_i2_initerations93_push30_kernel_2mm9_out_feedback_out_30;
    wire [0:0] i_llvm_fpga_push_i2_initerations93_push30_kernel_2mm9_out_feedback_valid_out_30;
    wire [31:0] i_llvm_fpga_push_i32_i_075_pop23120_push33_kernel_2mm13_out_feedback_out_33;
    wire [0:0] i_llvm_fpga_push_i32_i_075_pop23120_push33_kernel_2mm13_out_feedback_valid_out_33;
    wire [31:0] i_llvm_fpga_push_i32_j_074_push29_kernel_2mm32_out_feedback_out_29;
    wire [0:0] i_llvm_fpga_push_i32_j_074_push29_kernel_2mm32_out_feedback_valid_out_29;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push28_kernel_2mm42_out_feedback_out_28;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push28_kernel_2mm42_out_feedback_valid_out_28;
    wire [0:0] i_masked104_kernel_2mm43_qi;
    reg [0:0] i_masked104_kernel_2mm43_q;
    wire [0:0] i_next_cleanups103_kernel_2mm39_s;
    reg [1:0] i_next_cleanups103_kernel_2mm39_q;
    wire [1:0] i_next_initerations94_kernel_2mm8_vt_join_q;
    wire [0:0] i_next_initerations94_kernel_2mm8_vt_select_0_b;
    wire [0:0] i_notcmp91_kernel_2mm36_q;
    wire [0:0] i_or102_kernel_2mm38_q;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next_kernel_2mm41_sel_x_b;
    wire [31:0] bgTrunc_i_inc_kernel_2mm31_sel_x_b;
    wire [64:0] i_arrayidx11_kernel_2mm0_add_x_a;
    wire [64:0] i_arrayidx11_kernel_2mm0_add_x_b;
    logic [64:0] i_arrayidx11_kernel_2mm0_add_x_o;
    wire [64:0] i_arrayidx11_kernel_2mm0_add_x_q;
    wire [61:0] i_arrayidx11_kernel_2mm0_narrow_x_b;
    wire [63:0] i_arrayidx11_kernel_2mm0_shift_join_x_q;
    wire [64:0] i_arrayidx11_kernel_2mm0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx11_kernel_2mm0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx11_kernel_2mm0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx11_kernel_2mm0_dupName_0_add_x_q;
    wire [127:0] i_arrayidx11_kernel_2mm0_mult_extender_x_q;
    wire [57:0] i_arrayidx11_kernel_2mm0_mult_multconst_x_q;
    wire [63:0] i_arrayidx11_kernel_2mm0_trunc_sel_x_b;
    wire [63:0] i_arrayidx11_kernel_2mm0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx11_kernel_2mm0_dupName_2_trunc_sel_x_b;
    wire [9:0] i_arrayidx151_kernel_2mm0_add_x_a;
    wire [9:0] i_arrayidx151_kernel_2mm0_add_x_b;
    logic [9:0] i_arrayidx151_kernel_2mm0_add_x_o;
    wire [9:0] i_arrayidx151_kernel_2mm0_add_x_q;
    wire [63:0] i_arrayidx151_kernel_2mm0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx151_kernel_2mm0_narrow_x_b;
    wire [8:0] i_arrayidx151_kernel_2mm0_shift_join_x_q;
    wire [9:0] i_arrayidx151_kernel_2mm0_dupName_0_add_x_a;
    wire [9:0] i_arrayidx151_kernel_2mm0_dupName_0_add_x_b;
    logic [9:0] i_arrayidx151_kernel_2mm0_dupName_0_add_x_o;
    wire [9:0] i_arrayidx151_kernel_2mm0_dupName_0_add_x_q;
    wire [17:0] i_arrayidx151_kernel_2mm0_mult_extender_x_q;
    wire [2:0] i_arrayidx151_kernel_2mm0_mult_multconst_x_q;
    wire [8:0] i_arrayidx151_kernel_2mm0_dupName_0_trunc_sel_x_b;
    wire [8:0] i_arrayidx151_kernel_2mm0_dupName_1_trunc_sel_x_b;
    wire [8:0] i_arrayidx151_kernel_2mm0_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx151_kernel_2mm0_dupName_3_trunc_sel_x_b;
    wire [8:0] i_arrayidx151_kernel_2mm0_dupName_5_trunc_sel_x_b;
    wire [64:0] i_arrayidx19_kernel_2mm0_add_x_a;
    wire [64:0] i_arrayidx19_kernel_2mm0_add_x_b;
    logic [64:0] i_arrayidx19_kernel_2mm0_add_x_o;
    wire [64:0] i_arrayidx19_kernel_2mm0_add_x_q;
    wire [64:0] i_arrayidx19_kernel_2mm0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx19_kernel_2mm0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx19_kernel_2mm0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx19_kernel_2mm0_dupName_0_add_x_q;
    wire [127:0] i_arrayidx19_kernel_2mm0_mult_extender_x_q;
    wire [63:0] i_arrayidx19_kernel_2mm0_trunc_sel_x_b;
    wire [63:0] i_arrayidx19_kernel_2mm0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx19_kernel_2mm0_dupName_2_trunc_sel_x_b;
    wire [9:0] i_arrayidx232_kernel_2mm0_add_x_a;
    wire [9:0] i_arrayidx232_kernel_2mm0_add_x_b;
    logic [9:0] i_arrayidx232_kernel_2mm0_add_x_o;
    wire [9:0] i_arrayidx232_kernel_2mm0_add_x_q;
    wire [63:0] i_arrayidx232_kernel_2mm0_append_upper_bits_x_q;
    wire [9:0] i_arrayidx232_kernel_2mm0_dupName_0_add_x_a;
    wire [9:0] i_arrayidx232_kernel_2mm0_dupName_0_add_x_b;
    logic [9:0] i_arrayidx232_kernel_2mm0_dupName_0_add_x_o;
    wire [9:0] i_arrayidx232_kernel_2mm0_dupName_0_add_x_q;
    wire [8:0] i_arrayidx232_kernel_2mm0_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx232_kernel_2mm0_dupName_5_trunc_sel_x_b;
    wire [64:0] i_arrayidx27_kernel_2mm0_add_x_a;
    wire [64:0] i_arrayidx27_kernel_2mm0_add_x_b;
    logic [64:0] i_arrayidx27_kernel_2mm0_add_x_o;
    wire [64:0] i_arrayidx27_kernel_2mm0_add_x_q;
    wire [64:0] i_arrayidx27_kernel_2mm0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx27_kernel_2mm0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx27_kernel_2mm0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx27_kernel_2mm0_dupName_0_add_x_q;
    wire [127:0] i_arrayidx27_kernel_2mm0_mult_extender_x_q;
    wire [63:0] i_arrayidx27_kernel_2mm0_trunc_sel_x_b;
    wire [63:0] i_arrayidx27_kernel_2mm0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx27_kernel_2mm0_dupName_2_trunc_sel_x_b;
    wire [9:0] i_arrayidx313_kernel_2mm0_add_x_a;
    wire [9:0] i_arrayidx313_kernel_2mm0_add_x_b;
    logic [9:0] i_arrayidx313_kernel_2mm0_add_x_o;
    wire [9:0] i_arrayidx313_kernel_2mm0_add_x_q;
    wire [63:0] i_arrayidx313_kernel_2mm0_append_upper_bits_x_q;
    wire [9:0] i_arrayidx313_kernel_2mm0_dupName_0_add_x_a;
    wire [9:0] i_arrayidx313_kernel_2mm0_dupName_0_add_x_b;
    logic [9:0] i_arrayidx313_kernel_2mm0_dupName_0_add_x_o;
    wire [9:0] i_arrayidx313_kernel_2mm0_dupName_0_add_x_q;
    wire [8:0] i_arrayidx313_kernel_2mm0_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx313_kernel_2mm0_dupName_5_trunc_sel_x_b;
    wire [64:0] i_arrayidx35_kernel_2mm0_add_x_a;
    wire [64:0] i_arrayidx35_kernel_2mm0_add_x_b;
    logic [64:0] i_arrayidx35_kernel_2mm0_add_x_o;
    wire [64:0] i_arrayidx35_kernel_2mm0_add_x_q;
    wire [64:0] i_arrayidx35_kernel_2mm0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx35_kernel_2mm0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx35_kernel_2mm0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx35_kernel_2mm0_dupName_0_add_x_q;
    wire [127:0] i_arrayidx35_kernel_2mm0_mult_extender_x_q;
    wire [63:0] i_arrayidx35_kernel_2mm0_trunc_sel_x_b;
    wire [63:0] i_arrayidx35_kernel_2mm0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx35_kernel_2mm0_dupName_2_trunc_sel_x_b;
    wire [9:0] i_arrayidx394_kernel_2mm0_add_x_a;
    wire [9:0] i_arrayidx394_kernel_2mm0_add_x_b;
    logic [9:0] i_arrayidx394_kernel_2mm0_add_x_o;
    wire [9:0] i_arrayidx394_kernel_2mm0_add_x_q;
    wire [63:0] i_arrayidx394_kernel_2mm0_append_upper_bits_x_q;
    wire [9:0] i_arrayidx394_kernel_2mm0_dupName_0_add_x_a;
    wire [9:0] i_arrayidx394_kernel_2mm0_dupName_0_add_x_b;
    logic [9:0] i_arrayidx394_kernel_2mm0_dupName_0_add_x_o;
    wire [9:0] i_arrayidx394_kernel_2mm0_dupName_0_add_x_q;
    wire [8:0] i_arrayidx394_kernel_2mm0_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx394_kernel_2mm0_dupName_5_trunc_sel_x_b;
    wire [9:0] i_arrayidx435_kernel_2mm0_add_x_a;
    wire [9:0] i_arrayidx435_kernel_2mm0_add_x_b;
    logic [9:0] i_arrayidx435_kernel_2mm0_add_x_o;
    wire [9:0] i_arrayidx435_kernel_2mm0_add_x_q;
    wire [63:0] i_arrayidx435_kernel_2mm0_append_upper_bits_x_q;
    wire [9:0] i_arrayidx435_kernel_2mm0_dupName_0_add_x_a;
    wire [9:0] i_arrayidx435_kernel_2mm0_dupName_0_add_x_b;
    logic [9:0] i_arrayidx435_kernel_2mm0_dupName_0_add_x_o;
    wire [9:0] i_arrayidx435_kernel_2mm0_dupName_0_add_x_q;
    wire [8:0] i_arrayidx435_kernel_2mm0_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx435_kernel_2mm0_dupName_5_trunc_sel_x_b;
    wire [0:0] i_first_cleanup100_kernel_2mm3_sel_x_b;
    wire [63:0] i_idxprom10_kernel_2mm16_sel_x_b;
    wire [63:0] i_idxprom_kernel_2mm14_sel_x_b;
    wire [0:0] i_last_initeration96_kernel_2mm10_sel_x_b;
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
    wire [0:0] i_exitcond_kernel_2mm34_cmp_nsign_q;
    wire [9:0] i_arrayidx11_kernel_2mm0_mult_x_bs1_b;
    wire [53:0] i_arrayidx11_kernel_2mm0_mult_x_bs4_in;
    wire [17:0] i_arrayidx11_kernel_2mm0_mult_x_bs4_b;
    wire [35:0] i_arrayidx11_kernel_2mm0_mult_x_bs7_in;
    wire [17:0] i_arrayidx11_kernel_2mm0_mult_x_bs7_b;
    wire [17:0] i_arrayidx11_kernel_2mm0_mult_x_bs10_in;
    wire [17:0] i_arrayidx11_kernel_2mm0_mult_x_bs10_b;
    wire [35:0] i_arrayidx11_kernel_2mm0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx11_kernel_2mm0_mult_x_sums_align_0_qint;
    wire [59:0] i_arrayidx11_kernel_2mm0_mult_x_sums_join_1_q;
    wire [41:0] i_arrayidx11_kernel_2mm0_mult_x_sums_align_2_q;
    wire [41:0] i_arrayidx11_kernel_2mm0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx11_kernel_2mm0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx11_kernel_2mm0_mult_x_sums_align_3_qint;
    wire [69:0] i_arrayidx11_kernel_2mm0_mult_x_sums_join_4_q;
    wire [70:0] i_arrayidx11_kernel_2mm0_mult_x_sums_result_add_0_0_a;
    wire [70:0] i_arrayidx11_kernel_2mm0_mult_x_sums_result_add_0_0_b;
    logic [70:0] i_arrayidx11_kernel_2mm0_mult_x_sums_result_add_0_0_o;
    wire [70:0] i_arrayidx11_kernel_2mm0_mult_x_sums_result_add_0_0_q;
    wire [9:0] addsumAHighB_uid362_i_arrayidx151_kernel_2mm0_mult_x_a;
    wire [9:0] addsumAHighB_uid362_i_arrayidx151_kernel_2mm0_mult_x_b;
    logic [9:0] addsumAHighB_uid362_i_arrayidx151_kernel_2mm0_mult_x_o;
    wire [9:0] addsumAHighB_uid362_i_arrayidx151_kernel_2mm0_mult_x_q;
    wire [11:0] add_uid363_i_arrayidx151_kernel_2mm0_mult_x_q;
    wire [14:0] sR_mergedSignalTM_uid368_i_arrayidx151_kernel_2mm0_mult_x_q;
    wire [35:0] i_arrayidx19_kernel_2mm0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx19_kernel_2mm0_mult_x_sums_align_0_qint;
    wire [59:0] i_arrayidx19_kernel_2mm0_mult_x_sums_join_1_q;
    wire [41:0] i_arrayidx19_kernel_2mm0_mult_x_sums_align_2_q;
    wire [41:0] i_arrayidx19_kernel_2mm0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx19_kernel_2mm0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx19_kernel_2mm0_mult_x_sums_align_3_qint;
    wire [69:0] i_arrayidx19_kernel_2mm0_mult_x_sums_join_4_q;
    wire [70:0] i_arrayidx19_kernel_2mm0_mult_x_sums_result_add_0_0_a;
    wire [70:0] i_arrayidx19_kernel_2mm0_mult_x_sums_result_add_0_0_b;
    logic [70:0] i_arrayidx19_kernel_2mm0_mult_x_sums_result_add_0_0_o;
    wire [70:0] i_arrayidx19_kernel_2mm0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx27_kernel_2mm0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx27_kernel_2mm0_mult_x_sums_align_0_qint;
    wire [59:0] i_arrayidx27_kernel_2mm0_mult_x_sums_join_1_q;
    wire [41:0] i_arrayidx27_kernel_2mm0_mult_x_sums_align_2_q;
    wire [41:0] i_arrayidx27_kernel_2mm0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx27_kernel_2mm0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx27_kernel_2mm0_mult_x_sums_align_3_qint;
    wire [69:0] i_arrayidx27_kernel_2mm0_mult_x_sums_join_4_q;
    wire [70:0] i_arrayidx27_kernel_2mm0_mult_x_sums_result_add_0_0_a;
    wire [70:0] i_arrayidx27_kernel_2mm0_mult_x_sums_result_add_0_0_b;
    logic [70:0] i_arrayidx27_kernel_2mm0_mult_x_sums_result_add_0_0_o;
    wire [70:0] i_arrayidx27_kernel_2mm0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx35_kernel_2mm0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx35_kernel_2mm0_mult_x_sums_align_0_qint;
    wire [59:0] i_arrayidx35_kernel_2mm0_mult_x_sums_join_1_q;
    wire [41:0] i_arrayidx35_kernel_2mm0_mult_x_sums_align_2_q;
    wire [41:0] i_arrayidx35_kernel_2mm0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx35_kernel_2mm0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx35_kernel_2mm0_mult_x_sums_align_3_qint;
    wire [69:0] i_arrayidx35_kernel_2mm0_mult_x_sums_join_4_q;
    wire [70:0] i_arrayidx35_kernel_2mm0_mult_x_sums_result_add_0_0_a;
    wire [70:0] i_arrayidx35_kernel_2mm0_mult_x_sums_result_add_0_0_b;
    logic [70:0] i_arrayidx35_kernel_2mm0_mult_x_sums_result_add_0_0_o;
    wire [70:0] i_arrayidx35_kernel_2mm0_mult_x_sums_result_add_0_0_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid640_i_cleanups_shl99_kernel_2mm0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid640_i_cleanups_shl99_kernel_2mm0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid641_i_cleanups_shl99_kernel_2mm0_shift_x_q;
    wire [0:0] leftShiftStage0_uid643_i_cleanups_shl99_kernel_2mm0_shift_x_s;
    reg [1:0] leftShiftStage0_uid643_i_cleanups_shl99_kernel_2mm0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid647_i_next_initerations94_kernel_2mm0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid649_i_next_initerations94_kernel_2mm0_shift_x_q;
    wire [0:0] rightShiftStage0_uid651_i_next_initerations94_kernel_2mm0_shift_x_s;
    reg [1:0] rightShiftStage0_uid651_i_next_initerations94_kernel_2mm0_shift_x_q;
    wire [10:0] addsumAHighB_uid662_i_arrayidx11_kernel_2mm0_mult_x_im0_a;
    wire [10:0] addsumAHighB_uid662_i_arrayidx11_kernel_2mm0_mult_x_im0_b;
    logic [10:0] addsumAHighB_uid662_i_arrayidx11_kernel_2mm0_mult_x_im0_o;
    wire [10:0] addsumAHighB_uid662_i_arrayidx11_kernel_2mm0_mult_x_im0_q;
    wire [12:0] add_uid663_i_arrayidx11_kernel_2mm0_mult_x_im0_q;
    wire [15:0] sR_mergedSignalTM_uid668_i_arrayidx11_kernel_2mm0_mult_x_im0_q;
    wire [18:0] addsumAHighB_uid708_i_arrayidx11_kernel_2mm0_mult_x_im3_a;
    wire [18:0] addsumAHighB_uid708_i_arrayidx11_kernel_2mm0_mult_x_im3_b;
    logic [18:0] addsumAHighB_uid708_i_arrayidx11_kernel_2mm0_mult_x_im3_o;
    wire [18:0] addsumAHighB_uid708_i_arrayidx11_kernel_2mm0_mult_x_im3_q;
    wire [20:0] add_uid709_i_arrayidx11_kernel_2mm0_mult_x_im3_q;
    wire [23:0] sR_mergedSignalTM_uid714_i_arrayidx11_kernel_2mm0_mult_x_im3_q;
    wire [18:0] addsumAHighB_uid766_i_arrayidx11_kernel_2mm0_mult_x_im6_a;
    wire [18:0] addsumAHighB_uid766_i_arrayidx11_kernel_2mm0_mult_x_im6_b;
    logic [18:0] addsumAHighB_uid766_i_arrayidx11_kernel_2mm0_mult_x_im6_o;
    wire [18:0] addsumAHighB_uid766_i_arrayidx11_kernel_2mm0_mult_x_im6_q;
    wire [20:0] add_uid767_i_arrayidx11_kernel_2mm0_mult_x_im6_q;
    wire [23:0] sR_mergedSignalTM_uid772_i_arrayidx11_kernel_2mm0_mult_x_im6_q;
    wire [18:0] addsumAHighB_uid824_i_arrayidx11_kernel_2mm0_mult_x_im9_a;
    wire [18:0] addsumAHighB_uid824_i_arrayidx11_kernel_2mm0_mult_x_im9_b;
    logic [18:0] addsumAHighB_uid824_i_arrayidx11_kernel_2mm0_mult_x_im9_o;
    wire [18:0] addsumAHighB_uid824_i_arrayidx11_kernel_2mm0_mult_x_im9_q;
    wire [20:0] add_uid825_i_arrayidx11_kernel_2mm0_mult_x_im9_q;
    wire [23:0] sR_mergedSignalTM_uid830_i_arrayidx11_kernel_2mm0_mult_x_im9_q;
    wire [54:0] i_arrayidx151_kernel_2mm0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx151_kernel_2mm0_upper_bits_x_merged_bit_select_c;
    wire [54:0] i_arrayidx232_kernel_2mm0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx232_kernel_2mm0_upper_bits_x_merged_bit_select_c;
    wire [54:0] i_arrayidx313_kernel_2mm0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx313_kernel_2mm0_upper_bits_x_merged_bit_select_c;
    wire [54:0] i_arrayidx394_kernel_2mm0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx394_kernel_2mm0_upper_bits_x_merged_bit_select_c;
    wire [54:0] i_arrayidx435_kernel_2mm0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx435_kernel_2mm0_upper_bits_x_merged_bit_select_c;
    wire [1:0] lowRangeB_uid360_i_arrayidx151_kernel_2mm0_mult_x_merged_bit_select_b;
    wire [6:0] lowRangeB_uid360_i_arrayidx151_kernel_2mm0_mult_x_merged_bit_select_c;
    wire [1:0] lowRangeB_uid660_i_arrayidx11_kernel_2mm0_mult_x_im0_merged_bit_select_b;
    wire [7:0] lowRangeB_uid660_i_arrayidx11_kernel_2mm0_mult_x_im0_merged_bit_select_c;
    wire [1:0] lowRangeB_uid706_i_arrayidx11_kernel_2mm0_mult_x_im3_merged_bit_select_b;
    wire [15:0] lowRangeB_uid706_i_arrayidx11_kernel_2mm0_mult_x_im3_merged_bit_select_c;
    wire [1:0] lowRangeB_uid764_i_arrayidx11_kernel_2mm0_mult_x_im6_merged_bit_select_b;
    wire [15:0] lowRangeB_uid764_i_arrayidx11_kernel_2mm0_mult_x_im6_merged_bit_select_c;
    wire [1:0] lowRangeB_uid822_i_arrayidx11_kernel_2mm0_mult_x_im9_merged_bit_select_b;
    wire [15:0] lowRangeB_uid822_i_arrayidx11_kernel_2mm0_mult_x_im9_merged_bit_select_c;
    reg [0:0] redist0_sync_together78_aunroll_x_in_c0_eni3_1_tpl_1_q;
    reg [0:0] redist1_sync_together78_aunroll_x_in_c0_eni3_1_tpl_2_q;
    reg [31:0] redist2_sync_together78_aunroll_x_in_c0_eni3_2_tpl_1_q;
    reg [0:0] redist3_sync_together78_aunroll_x_in_c0_eni3_3_tpl_1_q;
    reg [0:0] redist4_sync_together78_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist5_sync_together78_aunroll_x_in_i_valid_2_q;
    reg [63:0] redist6_i_arrayidx35_kernel_2mm0_trunc_sel_x_b_1_q;
    reg [63:0] redist7_i_arrayidx27_kernel_2mm0_trunc_sel_x_b_1_q;
    reg [63:0] redist8_i_arrayidx19_kernel_2mm0_trunc_sel_x_b_1_q;
    reg [8:0] redist9_i_arrayidx151_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q;
    reg [8:0] redist10_i_arrayidx151_kernel_2mm0_dupName_1_trunc_sel_x_b_2_q;
    reg [8:0] redist11_i_arrayidx151_kernel_2mm0_shift_join_x_q_1_q;
    reg [63:0] redist12_i_arrayidx11_kernel_2mm0_trunc_sel_x_b_1_q;
    reg [61:0] redist13_i_arrayidx11_kernel_2mm0_narrow_x_b_1_q;
    reg [0:0] redist14_i_masked104_kernel_2mm43_q_2_q;
    reg [0:0] redist15_i_llvm_fpga_pop_i1_notcmp107119_pop32_kernel_2mm44_out_data_out_2_q;
    reg [0:0] redist15_i_llvm_fpga_pop_i1_notcmp107119_pop32_kernel_2mm44_out_data_out_2_delay_0;
    reg [0:0] redist16_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_out_data_out_1_q;
    reg [0:0] redist17_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_out_data_out_2_q;
    reg [0:0] redist18_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_out_data_out_3_q;
    reg [63:0] redist19_i_idxprom_kernel_2mm14_vt_join_q_1_q;
    reg [0:0] redist20_i_first_cleanup_xor101_kernel_2mm4_q_1_q;
    reg [0:0] redist21_i_first_cleanup_xor101_kernel_2mm4_q_2_q;
    wire [0:0] enable_stall_connector_not_enable_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // enable_stall_connector_not_enable(LOGICAL,1564)
    assign enable_stall_connector_not_enable_q = $unsigned(~ (in_enable));

    // redist4_sync_together78_aunroll_x_in_i_valid_1(DELAY,1546)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together78_aunroll_x_in_i_valid_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist4_sync_together78_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // redist16_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_out_data_out_1(DELAY,1558)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_out_data_out_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist16_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid640_i_cleanups_shl99_kernel_2mm0_shift_x(BITSELECT,639)@2
    assign leftShiftStage0Idx1Rng1_uid640_i_cleanups_shl99_kernel_2mm0_shift_x_in = i_llvm_fpga_pop_i2_cleanups98_pop31_kernel_2mm2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid640_i_cleanups_shl99_kernel_2mm0_shift_x_b = leftShiftStage0Idx1Rng1_uid640_i_cleanups_shl99_kernel_2mm0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid641_i_cleanups_shl99_kernel_2mm0_shift_x(BITJOIN,640)@2
    assign leftShiftStage0Idx1_uid641_i_cleanups_shl99_kernel_2mm0_shift_x_q = {leftShiftStage0Idx1Rng1_uid640_i_cleanups_shl99_kernel_2mm0_shift_x_b, GND_q};

    // leftShiftStage0_uid643_i_cleanups_shl99_kernel_2mm0_shift_x(MUX,642)@2
    assign leftShiftStage0_uid643_i_cleanups_shl99_kernel_2mm0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid643_i_cleanups_shl99_kernel_2mm0_shift_x_s or i_llvm_fpga_pop_i2_cleanups98_pop31_kernel_2mm2_out_data_out or leftShiftStage0Idx1_uid641_i_cleanups_shl99_kernel_2mm0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid643_i_cleanups_shl99_kernel_2mm0_shift_x_s)
            1'b0 : leftShiftStage0_uid643_i_cleanups_shl99_kernel_2mm0_shift_x_q = i_llvm_fpga_pop_i2_cleanups98_pop31_kernel_2mm2_out_data_out;
            1'b1 : leftShiftStage0_uid643_i_cleanups_shl99_kernel_2mm0_shift_x_q = leftShiftStage0Idx1_uid641_i_cleanups_shl99_kernel_2mm0_shift_x_q;
            default : leftShiftStage0_uid643_i_cleanups_shl99_kernel_2mm0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl99_kernel_2mm5_vt_select_1(BITSELECT,37)@2
    assign i_cleanups_shl99_kernel_2mm5_vt_select_1_b = leftShiftStage0_uid643_i_cleanups_shl99_kernel_2mm0_shift_x_q[1:1];

    // i_cleanups_shl99_kernel_2mm5_vt_join(BITJOIN,36)@2
    assign i_cleanups_shl99_kernel_2mm5_vt_join_q = {i_cleanups_shl99_kernel_2mm5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor101_kernel_2mm4(LOGICAL,40)@2
    assign i_first_cleanup_xor101_kernel_2mm4_q = i_first_cleanup100_kernel_2mm3_sel_x_b ^ VCC_q;

    // i_notcmp91_kernel_2mm36(LOGICAL,77)@2
    assign i_notcmp91_kernel_2mm36_q = i_exitcond_kernel_2mm34_cmp_nsign_q ^ VCC_q;

    // i_or102_kernel_2mm38(LOGICAL,78)@2
    assign i_or102_kernel_2mm38_q = i_notcmp91_kernel_2mm36_q | i_first_cleanup_xor101_kernel_2mm4_q;

    // i_next_cleanups103_kernel_2mm39(MUX,73)@2
    assign i_next_cleanups103_kernel_2mm39_s = i_or102_kernel_2mm38_q;
    always @(i_next_cleanups103_kernel_2mm39_s or i_llvm_fpga_pop_i2_cleanups98_pop31_kernel_2mm2_out_data_out or i_cleanups_shl99_kernel_2mm5_vt_join_q)
    begin
        unique case (i_next_cleanups103_kernel_2mm39_s)
            1'b0 : i_next_cleanups103_kernel_2mm39_q = i_llvm_fpga_pop_i2_cleanups98_pop31_kernel_2mm2_out_data_out;
            1'b1 : i_next_cleanups103_kernel_2mm39_q = i_cleanups_shl99_kernel_2mm5_vt_join_q;
            default : i_next_cleanups103_kernel_2mm39_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups98_push31_kernel_2mm40(BLACKBOX,67)@2
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    kernel_2mm_i_llvm_fpga_push_i2_cleanups98_push31_0 thei_llvm_fpga_push_i2_cleanups98_push31_kernel_2mm40 (
        .in_data_in(i_next_cleanups103_kernel_2mm39_q),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_i2_cleanups98_pop31_kernel_2mm2_out_feedback_stall_out_31),
        .in_keep_going95(redist16_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist4_sync_together78_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_i2_cleanups98_push31_kernel_2mm40_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_i2_cleanups98_push31_kernel_2mm40_out_feedback_valid_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together78_aunroll_x_in_c0_eni3_1_tpl_1(DELAY,1542)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together78_aunroll_x_in_c0_eni3_1_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist0_sync_together78_aunroll_x_in_c0_eni3_1_tpl_1_q <= $unsigned(in_c0_eni3_1_tpl);
        end
    end

    // c_i2_149(CONSTANT,6)
    assign c_i2_149_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups98_pop31_kernel_2mm2(BLACKBOX,59)@2
    // out out_feedback_stall_out_31@20000000
    kernel_2mm_i_llvm_fpga_pop_i2_cleanups98_pop31_0 thei_llvm_fpga_pop_i2_cleanups98_pop31_kernel_2mm2 (
        .in_data_in(c_i2_149_q),
        .in_dir(redist0_sync_together78_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_31(i_llvm_fpga_push_i2_cleanups98_push31_kernel_2mm40_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_i2_cleanups98_push31_kernel_2mm40_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist4_sync_together78_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups98_pop31_kernel_2mm2_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_i2_cleanups98_pop31_kernel_2mm2_out_feedback_stall_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup100_kernel_2mm3_sel_x(BITSELECT,299)@2
    assign i_first_cleanup100_kernel_2mm3_sel_x_b = i_llvm_fpga_pop_i2_cleanups98_pop31_kernel_2mm2_out_data_out[0:0];

    // c_i5_155(CONSTANT,9)
    assign c_i5_155_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next_kernel_2mm41(ADD,41)@2
    assign i_fpga_indvars_iv_next_kernel_2mm41_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv_pop28_kernel_2mm33_out_data_out};
    assign i_fpga_indvars_iv_next_kernel_2mm41_b = {1'b0, c_i5_155_q};
    assign i_fpga_indvars_iv_next_kernel_2mm41_o = $unsigned(i_fpga_indvars_iv_next_kernel_2mm41_a) + $unsigned(i_fpga_indvars_iv_next_kernel_2mm41_b);
    assign i_fpga_indvars_iv_next_kernel_2mm41_q = i_fpga_indvars_iv_next_kernel_2mm41_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next_kernel_2mm41_sel_x(BITSELECT,88)@2
    assign bgTrunc_i_fpga_indvars_iv_next_kernel_2mm41_sel_x_b = i_fpga_indvars_iv_next_kernel_2mm41_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv_push28_kernel_2mm42(BLACKBOX,71)@2
    // out out_feedback_out_28@20000000
    // out out_feedback_valid_out_28@20000000
    kernel_2mm_i_llvm_fpga_push_i5_fpga_indvars_iv_push28_0 thei_llvm_fpga_push_i5_fpga_indvars_iv_push28_kernel_2mm42 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_kernel_2mm41_sel_x_b),
        .in_feedback_stall_in_28(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop28_kernel_2mm33_out_feedback_stall_out_28),
        .in_keep_going95(redist16_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist4_sync_together78_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_28(i_llvm_fpga_push_i5_fpga_indvars_iv_push28_kernel_2mm42_out_feedback_out_28),
        .out_feedback_valid_out_28(i_llvm_fpga_push_i5_fpga_indvars_iv_push28_kernel_2mm42_out_feedback_valid_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_853(CONSTANT,10)
    assign c_i5_853_q = $unsigned(5'b01000);

    // i_llvm_fpga_pop_i5_fpga_indvars_iv_pop28_kernel_2mm33(BLACKBOX,63)@2
    // out out_feedback_stall_out_28@20000000
    kernel_2mm_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop28_0 thei_llvm_fpga_pop_i5_fpga_indvars_iv_pop28_kernel_2mm33 (
        .in_data_in(c_i5_853_q),
        .in_dir(redist0_sync_together78_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_28(i_llvm_fpga_push_i5_fpga_indvars_iv_push28_kernel_2mm42_out_feedback_out_28),
        .in_feedback_valid_in_28(i_llvm_fpga_push_i5_fpga_indvars_iv_push28_kernel_2mm42_out_feedback_valid_out_28),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist4_sync_together78_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop28_kernel_2mm33_out_data_out),
        .out_feedback_stall_out_28(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop28_kernel_2mm33_out_feedback_stall_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_kernel_2mm34_cmp_nsign(LOGICAL,333)@2
    assign i_exitcond_kernel_2mm34_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i5_fpga_indvars_iv_pop28_kernel_2mm33_out_data_out[4:4]));

    // i_llvm_fpga_push_i1_notexitcond105_kernel_2mm37(BLACKBOX,66)@2
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    kernel_2mm_i_llvm_fpga_push_i1_notexitcond105_0 thei_llvm_fpga_push_i1_notexitcond105_kernel_2mm37 (
        .in_data_in(i_exitcond_kernel_2mm34_cmp_nsign_q),
        .in_feedback_stall_in_17(i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_out_not_exitcond_stall_out),
        .in_first_cleanup100(i_first_cleanup100_kernel_2mm3_sel_x_b),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist4_sync_together78_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i1_notexitcond105_kernel_2mm37_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i1_notexitcond105_kernel_2mm37_out_feedback_valid_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,312)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg3_q <= $unsigned(in_i_valid);
        end
    end

    // rightShiftStage0Idx1Rng1_uid647_i_next_initerations94_kernel_2mm0_shift_x(BITSELECT,646)@2
    assign rightShiftStage0Idx1Rng1_uid647_i_next_initerations94_kernel_2mm0_shift_x_b = i_llvm_fpga_pop_i2_initerations93_pop30_kernel_2mm7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid649_i_next_initerations94_kernel_2mm0_shift_x(BITJOIN,648)@2
    assign rightShiftStage0Idx1_uid649_i_next_initerations94_kernel_2mm0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid647_i_next_initerations94_kernel_2mm0_shift_x_b};

    // valid_fanout_reg1(REG,310)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg2(REG,311)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i2_initerations93_push30_kernel_2mm9(BLACKBOX,68)@2
    // out out_feedback_out_30@20000000
    // out out_feedback_valid_out_30@20000000
    kernel_2mm_i_llvm_fpga_push_i2_initerations93_push30_0 thei_llvm_fpga_push_i2_initerations93_push30_kernel_2mm9 (
        .in_data_in(i_next_initerations94_kernel_2mm8_vt_join_q),
        .in_feedback_stall_in_30(i_llvm_fpga_pop_i2_initerations93_pop30_kernel_2mm7_out_feedback_stall_out_30),
        .in_keep_going95(redist16_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_30(i_llvm_fpga_push_i2_initerations93_push30_kernel_2mm9_out_feedback_out_30),
        .out_feedback_valid_out_30(i_llvm_fpga_push_i2_initerations93_push30_kernel_2mm9_out_feedback_valid_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations93_pop30_kernel_2mm7(BLACKBOX,60)@2
    // out out_feedback_stall_out_30@20000000
    kernel_2mm_i_llvm_fpga_pop_i2_initerations93_pop30_0 thei_llvm_fpga_pop_i2_initerations93_pop30_kernel_2mm7 (
        .in_data_in(c_i2_149_q),
        .in_dir(redist0_sync_together78_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_30(i_llvm_fpga_push_i2_initerations93_push30_kernel_2mm9_out_feedback_out_30),
        .in_feedback_valid_in_30(i_llvm_fpga_push_i2_initerations93_push30_kernel_2mm9_out_feedback_valid_out_30),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations93_pop30_kernel_2mm7_out_data_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_i2_initerations93_pop30_kernel_2mm7_out_feedback_stall_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid651_i_next_initerations94_kernel_2mm0_shift_x(MUX,650)@2
    assign rightShiftStage0_uid651_i_next_initerations94_kernel_2mm0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid651_i_next_initerations94_kernel_2mm0_shift_x_s or i_llvm_fpga_pop_i2_initerations93_pop30_kernel_2mm7_out_data_out or rightShiftStage0Idx1_uid649_i_next_initerations94_kernel_2mm0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid651_i_next_initerations94_kernel_2mm0_shift_x_s)
            1'b0 : rightShiftStage0_uid651_i_next_initerations94_kernel_2mm0_shift_x_q = i_llvm_fpga_pop_i2_initerations93_pop30_kernel_2mm7_out_data_out;
            1'b1 : rightShiftStage0_uid651_i_next_initerations94_kernel_2mm0_shift_x_q = rightShiftStage0Idx1_uid649_i_next_initerations94_kernel_2mm0_shift_x_q;
            default : rightShiftStage0_uid651_i_next_initerations94_kernel_2mm0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations94_kernel_2mm8_vt_select_0(BITSELECT,76)@2
    assign i_next_initerations94_kernel_2mm8_vt_select_0_b = rightShiftStage0_uid651_i_next_initerations94_kernel_2mm0_shift_x_q[0:0];

    // i_next_initerations94_kernel_2mm8_vt_join(BITJOIN,75)@2
    assign i_next_initerations94_kernel_2mm8_vt_join_q = {GND_q, i_next_initerations94_kernel_2mm8_vt_select_0_b};

    // i_last_initeration96_kernel_2mm10_sel_x(BITSELECT,302)@2
    assign i_last_initeration96_kernel_2mm10_sel_x_b = i_next_initerations94_kernel_2mm8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration97_kernel_2mm11(BLACKBOX,64)@2
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    kernel_2mm_i_llvm_fpga_push_i1_lastiniteration97_0 thei_llvm_fpga_push_i1_lastiniteration97_kernel_2mm11 (
        .in_data_in(i_last_initeration96_kernel_2mm10_sel_x_b),
        .in_feedback_stall_in_16(i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_out_initeration_stall_out),
        .in_keep_going95(redist16_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i1_lastiniteration97_kernel_2mm11_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i1_lastiniteration97_kernel_2mm11_out_feedback_valid_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going95_kernel_2mm6(BLACKBOX,57)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    kernel_2mm_i_llvm_fpga_pipeline_keep_going95_0 thei_llvm_fpga_pipeline_keep_going95_kernel_2mm6 (
        .in_data_in(in_c0_eni3_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration97_kernel_2mm11_out_feedback_out_16),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration97_kernel_2mm11_out_feedback_valid_out_16),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond105_kernel_2mm37_out_feedback_out_17),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond105_kernel_2mm37_out_feedback_valid_out_17),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,19)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,81)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_out_pipeline_valid_out;

    // c_i32_051(CONSTANT,7)
    assign c_i32_051_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg11(REG,320)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg11_q <= $unsigned(redist4_sync_together78_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist20_i_first_cleanup_xor101_kernel_2mm4_q_1(DELAY,1562)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_first_cleanup_xor101_kernel_2mm4_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist20_i_first_cleanup_xor101_kernel_2mm4_q_1_q <= $unsigned(i_first_cleanup_xor101_kernel_2mm4_q);
        end
    end

    // c_kernel_2mm_tmp_local_pmem(CONSTANT,15)
    assign c_kernel_2mm_tmp_local_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx435_kernel_2mm0_upper_bits_x_merged_bit_select(BITSELECT,1536)@3
    assign i_arrayidx435_kernel_2mm0_upper_bits_x_merged_bit_select_b = c_kernel_2mm_tmp_local_pmem_q[63:9];
    assign i_arrayidx435_kernel_2mm0_upper_bits_x_merged_bit_select_c = c_kernel_2mm_tmp_local_pmem_q[8:0];

    // valid_fanout_reg6(REG,315)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg6_q <= $unsigned(redist4_sync_together78_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg12(REG,321)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg12_q <= $unsigned(redist4_sync_together78_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist17_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_out_data_out_2(DELAY,1559)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_out_data_out_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist17_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_out_data_out_2_q <= $unsigned(redist16_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_out_data_out_1_q);
        end
    end

    // c_i32_152(CONSTANT,8)
    assign c_i32_152_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_kernel_2mm31(ADD,50)@3
    assign i_inc_kernel_2mm31_a = {1'b0, i_llvm_fpga_pop_i32_j_074_pop29_kernel_2mm15_out_data_out};
    assign i_inc_kernel_2mm31_b = {1'b0, c_i32_152_q};
    assign i_inc_kernel_2mm31_o = $unsigned(i_inc_kernel_2mm31_a) + $unsigned(i_inc_kernel_2mm31_b);
    assign i_inc_kernel_2mm31_q = i_inc_kernel_2mm31_o[32:0];

    // bgTrunc_i_inc_kernel_2mm31_sel_x(BITSELECT,89)@3
    assign bgTrunc_i_inc_kernel_2mm31_sel_x_b = i_inc_kernel_2mm31_q[31:0];

    // i_llvm_fpga_push_i32_j_074_push29_kernel_2mm32(BLACKBOX,70)@3
    // out out_feedback_out_29@20000000
    // out out_feedback_valid_out_29@20000000
    kernel_2mm_i_llvm_fpga_push_i32_j_074_push29_0 thei_llvm_fpga_push_i32_j_074_push29_kernel_2mm32 (
        .in_data_in(bgTrunc_i_inc_kernel_2mm31_sel_x_b),
        .in_feedback_stall_in_29(i_llvm_fpga_pop_i32_j_074_pop29_kernel_2mm15_out_feedback_stall_out_29),
        .in_keep_going95(redist17_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_out_data_out_2_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_29(i_llvm_fpga_push_i32_j_074_push29_kernel_2mm32_out_feedback_out_29),
        .out_feedback_valid_out_29(i_llvm_fpga_push_i32_j_074_push29_kernel_2mm32_out_feedback_valid_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together78_aunroll_x_in_c0_eni3_1_tpl_2(DELAY,1543)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together78_aunroll_x_in_c0_eni3_1_tpl_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist1_sync_together78_aunroll_x_in_c0_eni3_1_tpl_2_q <= $unsigned(redist0_sync_together78_aunroll_x_in_c0_eni3_1_tpl_1_q);
        end
    end

    // i_llvm_fpga_pop_i32_j_074_pop29_kernel_2mm15(BLACKBOX,62)@3
    // out out_feedback_stall_out_29@20000000
    kernel_2mm_i_llvm_fpga_pop_i32_j_074_pop29_0 thei_llvm_fpga_pop_i32_j_074_pop29_kernel_2mm15 (
        .in_data_in(c_i32_051_q),
        .in_dir(redist1_sync_together78_aunroll_x_in_c0_eni3_1_tpl_2_q),
        .in_feedback_in_29(i_llvm_fpga_push_i32_j_074_push29_kernel_2mm32_out_feedback_out_29),
        .in_feedback_valid_in_29(i_llvm_fpga_push_i32_j_074_push29_kernel_2mm32_out_feedback_valid_out_29),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_074_pop29_kernel_2mm15_out_data_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_i32_j_074_pop29_kernel_2mm15_out_feedback_stall_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom10_kernel_2mm16_sel_x(BITSELECT,300)@3
    assign i_idxprom10_kernel_2mm16_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j_074_pop29_kernel_2mm15_out_data_out[31:0]};

    // i_idxprom10_kernel_2mm16_vt_select_31(BITSELECT,45)@3
    assign i_idxprom10_kernel_2mm16_vt_select_31_b = i_idxprom10_kernel_2mm16_sel_x_b[31:0];

    // i_idxprom10_kernel_2mm16_vt_join(BITJOIN,44)@3
    assign i_idxprom10_kernel_2mm16_vt_join_q = {c_i32_051_q, i_idxprom10_kernel_2mm16_vt_select_31_b};

    // i_arrayidx151_kernel_2mm0_dupName_3_trunc_sel_x(BITSELECT,149)@3
    assign i_arrayidx151_kernel_2mm0_dupName_3_trunc_sel_x_b = i_idxprom10_kernel_2mm16_vt_join_q[8:0];

    // i_arrayidx151_kernel_2mm0_narrow_x(BITSELECT,132)@3
    assign i_arrayidx151_kernel_2mm0_narrow_x_b = i_arrayidx151_kernel_2mm0_dupName_3_trunc_sel_x_b[6:0];

    // i_arrayidx151_kernel_2mm0_shift_join_x(BITJOIN,133)@3
    assign i_arrayidx151_kernel_2mm0_shift_join_x_q = {i_arrayidx151_kernel_2mm0_narrow_x_b, i_arrayidx151_kernel_2mm19_vt_const_1_q};

    // i_arrayidx151_kernel_2mm0_mult_multconst_x(CONSTANT,144)
    assign i_arrayidx151_kernel_2mm0_mult_multconst_x_q = $unsigned(3'b000);

    // valid_fanout_reg4(REG,313)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg4_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg5(REG,314)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg5_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_i_075_pop23120_push33_kernel_2mm13(BLACKBOX,69)@2
    // out out_feedback_out_33@20000000
    // out out_feedback_valid_out_33@20000000
    kernel_2mm_i_llvm_fpga_push_i32_i_075_pop23120_push33_0 thei_llvm_fpga_push_i32_i_075_pop23120_push33_kernel_2mm13 (
        .in_data_in(i_llvm_fpga_pop_i32_i_075_pop23120_pop33_kernel_2mm12_out_data_out),
        .in_feedback_stall_in_33(i_llvm_fpga_pop_i32_i_075_pop23120_pop33_kernel_2mm12_out_feedback_stall_out_33),
        .in_keep_going95(redist16_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_33(i_llvm_fpga_push_i32_i_075_pop23120_push33_kernel_2mm13_out_feedback_out_33),
        .out_feedback_valid_out_33(i_llvm_fpga_push_i32_i_075_pop23120_push33_kernel_2mm13_out_feedback_valid_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together78_aunroll_x_in_c0_eni3_2_tpl_1(DELAY,1544)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together78_aunroll_x_in_c0_eni3_2_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist2_sync_together78_aunroll_x_in_c0_eni3_2_tpl_1_q <= $unsigned(in_c0_eni3_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_i_075_pop23120_pop33_kernel_2mm12(BLACKBOX,61)@2
    // out out_feedback_stall_out_33@20000000
    kernel_2mm_i_llvm_fpga_pop_i32_i_075_pop23120_pop33_0 thei_llvm_fpga_pop_i32_i_075_pop23120_pop33_kernel_2mm12 (
        .in_data_in(redist2_sync_together78_aunroll_x_in_c0_eni3_2_tpl_1_q),
        .in_dir(redist0_sync_together78_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_33(i_llvm_fpga_push_i32_i_075_pop23120_push33_kernel_2mm13_out_feedback_out_33),
        .in_feedback_valid_in_33(i_llvm_fpga_push_i32_i_075_pop23120_push33_kernel_2mm13_out_feedback_valid_out_33),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_075_pop23120_pop33_kernel_2mm12_out_data_out),
        .out_feedback_stall_out_33(i_llvm_fpga_pop_i32_i_075_pop23120_pop33_kernel_2mm12_out_feedback_stall_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom_kernel_2mm14_sel_x(BITSELECT,301)@2
    assign i_idxprom_kernel_2mm14_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_075_pop23120_pop33_kernel_2mm12_out_data_out[31:0]};

    // i_idxprom_kernel_2mm14_vt_select_31(BITSELECT,49)@2
    assign i_idxprom_kernel_2mm14_vt_select_31_b = i_idxprom_kernel_2mm14_sel_x_b[31:0];

    // i_idxprom_kernel_2mm14_vt_join(BITJOIN,48)@2
    assign i_idxprom_kernel_2mm14_vt_join_q = {c_i32_051_q, i_idxprom_kernel_2mm14_vt_select_31_b};

    // i_arrayidx151_kernel_2mm0_dupName_0_trunc_sel_x(BITSELECT,146)@2
    assign i_arrayidx151_kernel_2mm0_dupName_0_trunc_sel_x_b = i_idxprom_kernel_2mm14_vt_join_q[8:0];

    // addsumAHighB_uid362_i_arrayidx151_kernel_2mm0_mult_x(ADD,361)@2
    assign addsumAHighB_uid362_i_arrayidx151_kernel_2mm0_mult_x_a = {1'b0, i_arrayidx151_kernel_2mm0_dupName_0_trunc_sel_x_b};
    assign addsumAHighB_uid362_i_arrayidx151_kernel_2mm0_mult_x_b = {3'b000, lowRangeB_uid360_i_arrayidx151_kernel_2mm0_mult_x_merged_bit_select_c};
    assign addsumAHighB_uid362_i_arrayidx151_kernel_2mm0_mult_x_o = $unsigned(addsumAHighB_uid362_i_arrayidx151_kernel_2mm0_mult_x_a) + $unsigned(addsumAHighB_uid362_i_arrayidx151_kernel_2mm0_mult_x_b);
    assign addsumAHighB_uid362_i_arrayidx151_kernel_2mm0_mult_x_q = addsumAHighB_uid362_i_arrayidx151_kernel_2mm0_mult_x_o[9:0];

    // lowRangeB_uid360_i_arrayidx151_kernel_2mm0_mult_x_merged_bit_select(BITSELECT,1537)@2
    assign lowRangeB_uid360_i_arrayidx151_kernel_2mm0_mult_x_merged_bit_select_b = i_arrayidx151_kernel_2mm0_dupName_0_trunc_sel_x_b[1:0];
    assign lowRangeB_uid360_i_arrayidx151_kernel_2mm0_mult_x_merged_bit_select_c = i_arrayidx151_kernel_2mm0_dupName_0_trunc_sel_x_b[8:2];

    // add_uid363_i_arrayidx151_kernel_2mm0_mult_x(BITJOIN,362)@2
    assign add_uid363_i_arrayidx151_kernel_2mm0_mult_x_q = {addsumAHighB_uid362_i_arrayidx151_kernel_2mm0_mult_x_q, lowRangeB_uid360_i_arrayidx151_kernel_2mm0_mult_x_merged_bit_select_b};

    // sR_mergedSignalTM_uid368_i_arrayidx151_kernel_2mm0_mult_x(BITJOIN,367)@2
    assign sR_mergedSignalTM_uid368_i_arrayidx151_kernel_2mm0_mult_x_q = {add_uid363_i_arrayidx151_kernel_2mm0_mult_x_q, i_arrayidx151_kernel_2mm0_mult_multconst_x_q};

    // i_arrayidx151_kernel_2mm0_mult_extender_x(BITJOIN,143)@2
    assign i_arrayidx151_kernel_2mm0_mult_extender_x_q = {i_arrayidx151_kernel_2mm0_mult_multconst_x_q, sR_mergedSignalTM_uid368_i_arrayidx151_kernel_2mm0_mult_x_q};

    // i_arrayidx151_kernel_2mm0_dupName_1_trunc_sel_x(BITSELECT,147)@2
    assign i_arrayidx151_kernel_2mm0_dupName_1_trunc_sel_x_b = i_arrayidx151_kernel_2mm0_mult_extender_x_q[8:0];

    // redist9_i_arrayidx151_kernel_2mm0_dupName_1_trunc_sel_x_b_1(DELAY,1551)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_arrayidx151_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist9_i_arrayidx151_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx151_kernel_2mm0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx435_kernel_2mm0_add_x(ADD,271)@3
    assign i_arrayidx435_kernel_2mm0_add_x_a = {1'b0, i_arrayidx435_kernel_2mm0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx435_kernel_2mm0_add_x_b = {1'b0, redist9_i_arrayidx151_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx435_kernel_2mm0_add_x_o = $unsigned(i_arrayidx435_kernel_2mm0_add_x_a) + $unsigned(i_arrayidx435_kernel_2mm0_add_x_b);
    assign i_arrayidx435_kernel_2mm0_add_x_q = i_arrayidx435_kernel_2mm0_add_x_o[9:0];

    // i_arrayidx435_kernel_2mm0_dupName_2_trunc_sel_x(BITSELECT,292)@3
    assign i_arrayidx435_kernel_2mm0_dupName_2_trunc_sel_x_b = i_arrayidx435_kernel_2mm0_add_x_q[8:0];

    // i_arrayidx435_kernel_2mm0_dupName_0_add_x(ADD,281)@3
    assign i_arrayidx435_kernel_2mm0_dupName_0_add_x_a = {1'b0, i_arrayidx435_kernel_2mm0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx435_kernel_2mm0_dupName_0_add_x_b = {1'b0, i_arrayidx151_kernel_2mm0_shift_join_x_q};
    assign i_arrayidx435_kernel_2mm0_dupName_0_add_x_o = $unsigned(i_arrayidx435_kernel_2mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx435_kernel_2mm0_dupName_0_add_x_b);
    assign i_arrayidx435_kernel_2mm0_dupName_0_add_x_q = i_arrayidx435_kernel_2mm0_dupName_0_add_x_o[9:0];

    // i_arrayidx435_kernel_2mm0_dupName_5_trunc_sel_x(BITSELECT,294)@3
    assign i_arrayidx435_kernel_2mm0_dupName_5_trunc_sel_x_b = i_arrayidx435_kernel_2mm0_dupName_0_add_x_q[8:0];

    // i_arrayidx435_kernel_2mm0_append_upper_bits_x(BITJOIN,272)@3
    assign i_arrayidx435_kernel_2mm0_append_upper_bits_x_q = {i_arrayidx435_kernel_2mm0_upper_bits_x_merged_bit_select_b, i_arrayidx435_kernel_2mm0_dupName_5_trunc_sel_x_b};

    // i_arrayidx435_kernel_2mm29_vt_select_63(BITSELECT,34)@3
    assign i_arrayidx435_kernel_2mm29_vt_select_63_b = i_arrayidx435_kernel_2mm0_append_upper_bits_x_q[63:2];

    // i_arrayidx151_kernel_2mm19_vt_const_1(CONSTANT,20)
    assign i_arrayidx151_kernel_2mm19_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx435_kernel_2mm29_vt_join(BITJOIN,33)@3
    assign i_arrayidx435_kernel_2mm29_vt_join_q = {i_arrayidx435_kernel_2mm29_vt_select_63_b, i_arrayidx151_kernel_2mm19_vt_const_1_q};

    // i_llvm_fpga_mem_memdep_4_kernel_2mm30(BLACKBOX,56)@3
    // out out_memdep_4_kernel_2mm_avm_address@20000000
    // out out_memdep_4_kernel_2mm_avm_burstcount@20000000
    // out out_memdep_4_kernel_2mm_avm_byteenable@20000000
    // out out_memdep_4_kernel_2mm_avm_enable@20000000
    // out out_memdep_4_kernel_2mm_avm_read@20000000
    // out out_memdep_4_kernel_2mm_avm_write@20000000
    // out out_memdep_4_kernel_2mm_avm_writedata@20000000
    // out out_o_stall@4
    // out out_o_valid@4
    // out out_o_writeack@4
    kernel_2mm_i_llvm_fpga_mem_memdep_4_0 thei_llvm_fpga_mem_memdep_4_kernel_2mm30 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx435_kernel_2mm29_vt_join_q),
        .in_i_predicate(redist20_i_first_cleanup_xor101_kernel_2mm4_q_1_q),
        .in_i_stall(enable_stall_connector_not_enable_q),
        .in_i_valid(valid_fanout_reg11_q),
        .in_i_writedata(c_i32_051_q),
        .in_memdep_4_kernel_2mm_avm_readdata(in_memdep_4_kernel_2mm_avm_readdata),
        .in_memdep_4_kernel_2mm_avm_readdatavalid(in_memdep_4_kernel_2mm_avm_readdatavalid),
        .in_memdep_4_kernel_2mm_avm_waitrequest(in_memdep_4_kernel_2mm_avm_waitrequest),
        .in_memdep_4_kernel_2mm_avm_writeack(in_memdep_4_kernel_2mm_avm_writeack),
        .out_memdep_4_kernel_2mm_avm_address(i_llvm_fpga_mem_memdep_4_kernel_2mm30_out_memdep_4_kernel_2mm_avm_address),
        .out_memdep_4_kernel_2mm_avm_burstcount(i_llvm_fpga_mem_memdep_4_kernel_2mm30_out_memdep_4_kernel_2mm_avm_burstcount),
        .out_memdep_4_kernel_2mm_avm_byteenable(i_llvm_fpga_mem_memdep_4_kernel_2mm30_out_memdep_4_kernel_2mm_avm_byteenable),
        .out_memdep_4_kernel_2mm_avm_enable(i_llvm_fpga_mem_memdep_4_kernel_2mm30_out_memdep_4_kernel_2mm_avm_enable),
        .out_memdep_4_kernel_2mm_avm_read(i_llvm_fpga_mem_memdep_4_kernel_2mm30_out_memdep_4_kernel_2mm_avm_read),
        .out_memdep_4_kernel_2mm_avm_write(i_llvm_fpga_mem_memdep_4_kernel_2mm30_out_memdep_4_kernel_2mm_avm_write),
        .out_memdep_4_kernel_2mm_avm_writedata(i_llvm_fpga_mem_memdep_4_kernel_2mm30_out_memdep_4_kernel_2mm_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,92)
    assign out_memdep_4_kernel_2mm_avm_address = i_llvm_fpga_mem_memdep_4_kernel_2mm30_out_memdep_4_kernel_2mm_avm_address;
    assign out_memdep_4_kernel_2mm_avm_enable = i_llvm_fpga_mem_memdep_4_kernel_2mm30_out_memdep_4_kernel_2mm_avm_enable;
    assign out_memdep_4_kernel_2mm_avm_read = i_llvm_fpga_mem_memdep_4_kernel_2mm30_out_memdep_4_kernel_2mm_avm_read;
    assign out_memdep_4_kernel_2mm_avm_write = i_llvm_fpga_mem_memdep_4_kernel_2mm30_out_memdep_4_kernel_2mm_avm_write;
    assign out_memdep_4_kernel_2mm_avm_writedata = i_llvm_fpga_mem_memdep_4_kernel_2mm30_out_memdep_4_kernel_2mm_avm_writedata;
    assign out_memdep_4_kernel_2mm_avm_byteenable = i_llvm_fpga_mem_memdep_4_kernel_2mm30_out_memdep_4_kernel_2mm_avm_byteenable;
    assign out_memdep_4_kernel_2mm_avm_burstcount = i_llvm_fpga_mem_memdep_4_kernel_2mm30_out_memdep_4_kernel_2mm_avm_burstcount;

    // redist5_sync_together78_aunroll_x_in_i_valid_2(DELAY,1547)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together78_aunroll_x_in_i_valid_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist5_sync_together78_aunroll_x_in_i_valid_2_q <= $unsigned(redist4_sync_together78_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg0(REG,309)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg0_q <= $unsigned(redist5_sync_together78_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg13(REG,322)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg13_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg14(REG,323)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg14_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_notcmp107119_push32_kernel_2mm45(BLACKBOX,65)@2
    // out out_feedback_out_32@20000000
    // out out_feedback_valid_out_32@20000000
    kernel_2mm_i_llvm_fpga_push_i1_notcmp107119_push32_0 thei_llvm_fpga_push_i1_notcmp107119_push32_kernel_2mm45 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp107119_pop32_kernel_2mm44_out_data_out),
        .in_feedback_stall_in_32(i_llvm_fpga_pop_i1_notcmp107119_pop32_kernel_2mm44_out_feedback_stall_out_32),
        .in_keep_going95(redist16_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_32(i_llvm_fpga_push_i1_notcmp107119_push32_kernel_2mm45_out_feedback_out_32),
        .out_feedback_valid_out_32(i_llvm_fpga_push_i1_notcmp107119_push32_kernel_2mm45_out_feedback_valid_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together78_aunroll_x_in_c0_eni3_3_tpl_1(DELAY,1545)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together78_aunroll_x_in_c0_eni3_3_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist3_sync_together78_aunroll_x_in_c0_eni3_3_tpl_1_q <= $unsigned(in_c0_eni3_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp107119_pop32_kernel_2mm44(BLACKBOX,58)@2
    // out out_feedback_stall_out_32@20000000
    kernel_2mm_i_llvm_fpga_pop_i1_notcmp107119_pop32_0 thei_llvm_fpga_pop_i1_notcmp107119_pop32_kernel_2mm44 (
        .in_data_in(redist3_sync_together78_aunroll_x_in_c0_eni3_3_tpl_1_q),
        .in_dir(redist0_sync_together78_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_32(i_llvm_fpga_push_i1_notcmp107119_push32_kernel_2mm45_out_feedback_out_32),
        .in_feedback_valid_in_32(i_llvm_fpga_push_i1_notcmp107119_push32_kernel_2mm45_out_feedback_valid_out_32),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp107119_pop32_kernel_2mm44_out_data_out),
        .out_feedback_stall_out_32(i_llvm_fpga_pop_i1_notcmp107119_pop32_kernel_2mm44_out_feedback_stall_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist15_i_llvm_fpga_pop_i1_notcmp107119_pop32_kernel_2mm44_out_data_out_2(DELAY,1557)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_llvm_fpga_pop_i1_notcmp107119_pop32_kernel_2mm44_out_data_out_2_delay_0 <= '0;
            redist15_i_llvm_fpga_pop_i1_notcmp107119_pop32_kernel_2mm44_out_data_out_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist15_i_llvm_fpga_pop_i1_notcmp107119_pop32_kernel_2mm44_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_notcmp107119_pop32_kernel_2mm44_out_data_out);
            redist15_i_llvm_fpga_pop_i1_notcmp107119_pop32_kernel_2mm44_out_data_out_2_q <= redist15_i_llvm_fpga_pop_i1_notcmp107119_pop32_kernel_2mm44_out_data_out_2_delay_0;
        end
    end

    // i_masked104_kernel_2mm43(LOGICAL,72)@2 + 1
    assign i_masked104_kernel_2mm43_qi = i_notcmp91_kernel_2mm36_q & i_first_cleanup100_kernel_2mm3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked104_kernel_2mm43_delay ( .xin(i_masked104_kernel_2mm43_qi), .xout(i_masked104_kernel_2mm43_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // redist14_i_masked104_kernel_2mm43_q_2(DELAY,1556)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_masked104_kernel_2mm43_q_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist14_i_masked104_kernel_2mm43_q_2_q <= $unsigned(i_masked104_kernel_2mm43_q);
        end
    end

    // c_kernel_2mm_D_local_pmem(CONSTANT,14)
    assign c_kernel_2mm_D_local_pmem_q = $unsigned(64'b0100000001000100000000000000000000000000000000000000000000000000);

    // i_arrayidx394_kernel_2mm0_upper_bits_x_merged_bit_select(BITSELECT,1535)@4
    assign i_arrayidx394_kernel_2mm0_upper_bits_x_merged_bit_select_b = c_kernel_2mm_D_local_pmem_q[63:9];
    assign i_arrayidx394_kernel_2mm0_upper_bits_x_merged_bit_select_c = c_kernel_2mm_D_local_pmem_q[8:0];

    // redist11_i_arrayidx151_kernel_2mm0_shift_join_x_q_1(DELAY,1553)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_arrayidx151_kernel_2mm0_shift_join_x_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist11_i_arrayidx151_kernel_2mm0_shift_join_x_q_1_q <= $unsigned(i_arrayidx151_kernel_2mm0_shift_join_x_q);
        end
    end

    // redist10_i_arrayidx151_kernel_2mm0_dupName_1_trunc_sel_x_b_2(DELAY,1552)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_arrayidx151_kernel_2mm0_dupName_1_trunc_sel_x_b_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist10_i_arrayidx151_kernel_2mm0_dupName_1_trunc_sel_x_b_2_q <= $unsigned(redist9_i_arrayidx151_kernel_2mm0_dupName_1_trunc_sel_x_b_1_q);
        end
    end

    // i_arrayidx394_kernel_2mm0_add_x(ADD,247)@4
    assign i_arrayidx394_kernel_2mm0_add_x_a = {1'b0, i_arrayidx394_kernel_2mm0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx394_kernel_2mm0_add_x_b = {1'b0, redist10_i_arrayidx151_kernel_2mm0_dupName_1_trunc_sel_x_b_2_q};
    assign i_arrayidx394_kernel_2mm0_add_x_o = $unsigned(i_arrayidx394_kernel_2mm0_add_x_a) + $unsigned(i_arrayidx394_kernel_2mm0_add_x_b);
    assign i_arrayidx394_kernel_2mm0_add_x_q = i_arrayidx394_kernel_2mm0_add_x_o[9:0];

    // i_arrayidx394_kernel_2mm0_dupName_2_trunc_sel_x(BITSELECT,268)@4
    assign i_arrayidx394_kernel_2mm0_dupName_2_trunc_sel_x_b = i_arrayidx394_kernel_2mm0_add_x_q[8:0];

    // i_arrayidx394_kernel_2mm0_dupName_0_add_x(ADD,257)@4
    assign i_arrayidx394_kernel_2mm0_dupName_0_add_x_a = {1'b0, i_arrayidx394_kernel_2mm0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx394_kernel_2mm0_dupName_0_add_x_b = {1'b0, redist11_i_arrayidx151_kernel_2mm0_shift_join_x_q_1_q};
    assign i_arrayidx394_kernel_2mm0_dupName_0_add_x_o = $unsigned(i_arrayidx394_kernel_2mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx394_kernel_2mm0_dupName_0_add_x_b);
    assign i_arrayidx394_kernel_2mm0_dupName_0_add_x_q = i_arrayidx394_kernel_2mm0_dupName_0_add_x_o[9:0];

    // i_arrayidx394_kernel_2mm0_dupName_5_trunc_sel_x(BITSELECT,270)@4
    assign i_arrayidx394_kernel_2mm0_dupName_5_trunc_sel_x_b = i_arrayidx394_kernel_2mm0_dupName_0_add_x_q[8:0];

    // i_arrayidx394_kernel_2mm0_append_upper_bits_x(BITJOIN,248)@4
    assign i_arrayidx394_kernel_2mm0_append_upper_bits_x_q = {i_arrayidx394_kernel_2mm0_upper_bits_x_merged_bit_select_b, i_arrayidx394_kernel_2mm0_dupName_5_trunc_sel_x_b};

    // i_arrayidx394_kernel_2mm28_vt_select_63(BITSELECT,31)@4
    assign i_arrayidx394_kernel_2mm28_vt_select_63_b = i_arrayidx394_kernel_2mm0_append_upper_bits_x_q[63:2];

    // i_arrayidx394_kernel_2mm28_vt_join(BITJOIN,30)@4
    assign i_arrayidx394_kernel_2mm28_vt_join_q = {i_arrayidx394_kernel_2mm28_vt_select_63_b, i_arrayidx151_kernel_2mm19_vt_const_1_q};

    // i_arrayidx11_kernel_2mm0_narrow_x(BITSELECT,115)@3
    assign i_arrayidx11_kernel_2mm0_narrow_x_b = i_idxprom10_kernel_2mm16_vt_join_q[61:0];

    // redist13_i_arrayidx11_kernel_2mm0_narrow_x_b_1(DELAY,1555)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_arrayidx11_kernel_2mm0_narrow_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist13_i_arrayidx11_kernel_2mm0_narrow_x_b_1_q <= $unsigned(i_arrayidx11_kernel_2mm0_narrow_x_b);
        end
    end

    // i_arrayidx11_kernel_2mm0_shift_join_x(BITJOIN,116)@4
    assign i_arrayidx11_kernel_2mm0_shift_join_x_q = {redist13_i_arrayidx11_kernel_2mm0_narrow_x_b_1_q, i_arrayidx151_kernel_2mm19_vt_const_1_q};

    // i_arrayidx11_kernel_2mm0_mult_multconst_x(CONSTANT,123)
    assign i_arrayidx11_kernel_2mm0_mult_multconst_x_q = $unsigned(58'b0000000000000000000000000000000000000000000000000000000000);

    // redist19_i_idxprom_kernel_2mm14_vt_join_q_1(DELAY,1561)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_idxprom_kernel_2mm14_vt_join_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist19_i_idxprom_kernel_2mm14_vt_join_q_1_q <= $unsigned(i_idxprom_kernel_2mm14_vt_join_q);
        end
    end

    // i_arrayidx11_kernel_2mm0_mult_x_bs1(BITSELECT,335)@3
    assign i_arrayidx11_kernel_2mm0_mult_x_bs1_b = redist19_i_idxprom_kernel_2mm14_vt_join_q_1_q[63:54];

    // addsumAHighB_uid662_i_arrayidx11_kernel_2mm0_mult_x_im0(ADD,661)@3
    assign addsumAHighB_uid662_i_arrayidx11_kernel_2mm0_mult_x_im0_a = {1'b0, i_arrayidx11_kernel_2mm0_mult_x_bs1_b};
    assign addsumAHighB_uid662_i_arrayidx11_kernel_2mm0_mult_x_im0_b = {3'b000, lowRangeB_uid660_i_arrayidx11_kernel_2mm0_mult_x_im0_merged_bit_select_c};
    assign addsumAHighB_uid662_i_arrayidx11_kernel_2mm0_mult_x_im0_o = $unsigned(addsumAHighB_uid662_i_arrayidx11_kernel_2mm0_mult_x_im0_a) + $unsigned(addsumAHighB_uid662_i_arrayidx11_kernel_2mm0_mult_x_im0_b);
    assign addsumAHighB_uid662_i_arrayidx11_kernel_2mm0_mult_x_im0_q = addsumAHighB_uid662_i_arrayidx11_kernel_2mm0_mult_x_im0_o[10:0];

    // lowRangeB_uid660_i_arrayidx11_kernel_2mm0_mult_x_im0_merged_bit_select(BITSELECT,1538)@3
    assign lowRangeB_uid660_i_arrayidx11_kernel_2mm0_mult_x_im0_merged_bit_select_b = i_arrayidx11_kernel_2mm0_mult_x_bs1_b[1:0];
    assign lowRangeB_uid660_i_arrayidx11_kernel_2mm0_mult_x_im0_merged_bit_select_c = i_arrayidx11_kernel_2mm0_mult_x_bs1_b[9:2];

    // add_uid663_i_arrayidx11_kernel_2mm0_mult_x_im0(BITJOIN,662)@3
    assign add_uid663_i_arrayidx11_kernel_2mm0_mult_x_im0_q = {addsumAHighB_uid662_i_arrayidx11_kernel_2mm0_mult_x_im0_q, lowRangeB_uid660_i_arrayidx11_kernel_2mm0_mult_x_im0_merged_bit_select_b};

    // sR_mergedSignalTM_uid668_i_arrayidx11_kernel_2mm0_mult_x_im0(BITJOIN,667)@3
    assign sR_mergedSignalTM_uid668_i_arrayidx11_kernel_2mm0_mult_x_im0_q = {add_uid663_i_arrayidx11_kernel_2mm0_mult_x_im0_q, i_arrayidx151_kernel_2mm0_mult_multconst_x_q};

    // i_arrayidx35_kernel_2mm0_mult_x_sums_align_3(BITSHIFT,541)@3
    assign i_arrayidx35_kernel_2mm0_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid668_i_arrayidx11_kernel_2mm0_mult_x_im0_q, 12'b000000000000 };
    assign i_arrayidx35_kernel_2mm0_mult_x_sums_align_3_q = i_arrayidx35_kernel_2mm0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx11_kernel_2mm0_mult_x_bs7(BITSELECT,341)@3
    assign i_arrayidx11_kernel_2mm0_mult_x_bs7_in = redist19_i_idxprom_kernel_2mm14_vt_join_q_1_q[35:0];
    assign i_arrayidx11_kernel_2mm0_mult_x_bs7_b = i_arrayidx11_kernel_2mm0_mult_x_bs7_in[35:18];

    // addsumAHighB_uid766_i_arrayidx11_kernel_2mm0_mult_x_im6(ADD,765)@3
    assign addsumAHighB_uid766_i_arrayidx11_kernel_2mm0_mult_x_im6_a = {1'b0, i_arrayidx11_kernel_2mm0_mult_x_bs7_b};
    assign addsumAHighB_uid766_i_arrayidx11_kernel_2mm0_mult_x_im6_b = {3'b000, lowRangeB_uid764_i_arrayidx11_kernel_2mm0_mult_x_im6_merged_bit_select_c};
    assign addsumAHighB_uid766_i_arrayidx11_kernel_2mm0_mult_x_im6_o = $unsigned(addsumAHighB_uid766_i_arrayidx11_kernel_2mm0_mult_x_im6_a) + $unsigned(addsumAHighB_uid766_i_arrayidx11_kernel_2mm0_mult_x_im6_b);
    assign addsumAHighB_uid766_i_arrayidx11_kernel_2mm0_mult_x_im6_q = addsumAHighB_uid766_i_arrayidx11_kernel_2mm0_mult_x_im6_o[18:0];

    // lowRangeB_uid764_i_arrayidx11_kernel_2mm0_mult_x_im6_merged_bit_select(BITSELECT,1540)@3
    assign lowRangeB_uid764_i_arrayidx11_kernel_2mm0_mult_x_im6_merged_bit_select_b = i_arrayidx11_kernel_2mm0_mult_x_bs7_b[1:0];
    assign lowRangeB_uid764_i_arrayidx11_kernel_2mm0_mult_x_im6_merged_bit_select_c = i_arrayidx11_kernel_2mm0_mult_x_bs7_b[17:2];

    // add_uid767_i_arrayidx11_kernel_2mm0_mult_x_im6(BITJOIN,766)@3
    assign add_uid767_i_arrayidx11_kernel_2mm0_mult_x_im6_q = {addsumAHighB_uid766_i_arrayidx11_kernel_2mm0_mult_x_im6_q, lowRangeB_uid764_i_arrayidx11_kernel_2mm0_mult_x_im6_merged_bit_select_b};

    // sR_mergedSignalTM_uid772_i_arrayidx11_kernel_2mm0_mult_x_im6(BITJOIN,771)@3
    assign sR_mergedSignalTM_uid772_i_arrayidx11_kernel_2mm0_mult_x_im6_q = {add_uid767_i_arrayidx11_kernel_2mm0_mult_x_im6_q, i_arrayidx151_kernel_2mm0_mult_multconst_x_q};

    // i_arrayidx35_kernel_2mm0_mult_x_sums_align_2(BITSHIFT,540)@3
    assign i_arrayidx35_kernel_2mm0_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid772_i_arrayidx11_kernel_2mm0_mult_x_im6_q, 18'b000000000000000000 };
    assign i_arrayidx35_kernel_2mm0_mult_x_sums_align_2_q = i_arrayidx35_kernel_2mm0_mult_x_sums_align_2_qint[41:0];

    // i_arrayidx35_kernel_2mm0_mult_x_sums_join_4(BITJOIN,542)@3
    assign i_arrayidx35_kernel_2mm0_mult_x_sums_join_4_q = {i_arrayidx35_kernel_2mm0_mult_x_sums_align_3_q, i_arrayidx35_kernel_2mm0_mult_x_sums_align_2_q};

    // i_arrayidx11_kernel_2mm0_mult_x_bs4(BITSELECT,338)@3
    assign i_arrayidx11_kernel_2mm0_mult_x_bs4_in = redist19_i_idxprom_kernel_2mm14_vt_join_q_1_q[53:0];
    assign i_arrayidx11_kernel_2mm0_mult_x_bs4_b = i_arrayidx11_kernel_2mm0_mult_x_bs4_in[53:36];

    // addsumAHighB_uid708_i_arrayidx11_kernel_2mm0_mult_x_im3(ADD,707)@3
    assign addsumAHighB_uid708_i_arrayidx11_kernel_2mm0_mult_x_im3_a = {1'b0, i_arrayidx11_kernel_2mm0_mult_x_bs4_b};
    assign addsumAHighB_uid708_i_arrayidx11_kernel_2mm0_mult_x_im3_b = {3'b000, lowRangeB_uid706_i_arrayidx11_kernel_2mm0_mult_x_im3_merged_bit_select_c};
    assign addsumAHighB_uid708_i_arrayidx11_kernel_2mm0_mult_x_im3_o = $unsigned(addsumAHighB_uid708_i_arrayidx11_kernel_2mm0_mult_x_im3_a) + $unsigned(addsumAHighB_uid708_i_arrayidx11_kernel_2mm0_mult_x_im3_b);
    assign addsumAHighB_uid708_i_arrayidx11_kernel_2mm0_mult_x_im3_q = addsumAHighB_uid708_i_arrayidx11_kernel_2mm0_mult_x_im3_o[18:0];

    // lowRangeB_uid706_i_arrayidx11_kernel_2mm0_mult_x_im3_merged_bit_select(BITSELECT,1539)@3
    assign lowRangeB_uid706_i_arrayidx11_kernel_2mm0_mult_x_im3_merged_bit_select_b = i_arrayidx11_kernel_2mm0_mult_x_bs4_b[1:0];
    assign lowRangeB_uid706_i_arrayidx11_kernel_2mm0_mult_x_im3_merged_bit_select_c = i_arrayidx11_kernel_2mm0_mult_x_bs4_b[17:2];

    // add_uid709_i_arrayidx11_kernel_2mm0_mult_x_im3(BITJOIN,708)@3
    assign add_uid709_i_arrayidx11_kernel_2mm0_mult_x_im3_q = {addsumAHighB_uid708_i_arrayidx11_kernel_2mm0_mult_x_im3_q, lowRangeB_uid706_i_arrayidx11_kernel_2mm0_mult_x_im3_merged_bit_select_b};

    // sR_mergedSignalTM_uid714_i_arrayidx11_kernel_2mm0_mult_x_im3(BITJOIN,713)@3
    assign sR_mergedSignalTM_uid714_i_arrayidx11_kernel_2mm0_mult_x_im3_q = {add_uid709_i_arrayidx11_kernel_2mm0_mult_x_im3_q, i_arrayidx151_kernel_2mm0_mult_multconst_x_q};

    // i_arrayidx35_kernel_2mm0_mult_x_sums_align_0(BITSHIFT,538)@3
    assign i_arrayidx35_kernel_2mm0_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid714_i_arrayidx11_kernel_2mm0_mult_x_im3_q, 12'b000000000000 };
    assign i_arrayidx35_kernel_2mm0_mult_x_sums_align_0_q = i_arrayidx35_kernel_2mm0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx11_kernel_2mm0_mult_x_bs10(BITSELECT,344)@3
    assign i_arrayidx11_kernel_2mm0_mult_x_bs10_in = redist19_i_idxprom_kernel_2mm14_vt_join_q_1_q[17:0];
    assign i_arrayidx11_kernel_2mm0_mult_x_bs10_b = i_arrayidx11_kernel_2mm0_mult_x_bs10_in[17:0];

    // addsumAHighB_uid824_i_arrayidx11_kernel_2mm0_mult_x_im9(ADD,823)@3
    assign addsumAHighB_uid824_i_arrayidx11_kernel_2mm0_mult_x_im9_a = {1'b0, i_arrayidx11_kernel_2mm0_mult_x_bs10_b};
    assign addsumAHighB_uid824_i_arrayidx11_kernel_2mm0_mult_x_im9_b = {3'b000, lowRangeB_uid822_i_arrayidx11_kernel_2mm0_mult_x_im9_merged_bit_select_c};
    assign addsumAHighB_uid824_i_arrayidx11_kernel_2mm0_mult_x_im9_o = $unsigned(addsumAHighB_uid824_i_arrayidx11_kernel_2mm0_mult_x_im9_a) + $unsigned(addsumAHighB_uid824_i_arrayidx11_kernel_2mm0_mult_x_im9_b);
    assign addsumAHighB_uid824_i_arrayidx11_kernel_2mm0_mult_x_im9_q = addsumAHighB_uid824_i_arrayidx11_kernel_2mm0_mult_x_im9_o[18:0];

    // lowRangeB_uid822_i_arrayidx11_kernel_2mm0_mult_x_im9_merged_bit_select(BITSELECT,1541)@3
    assign lowRangeB_uid822_i_arrayidx11_kernel_2mm0_mult_x_im9_merged_bit_select_b = i_arrayidx11_kernel_2mm0_mult_x_bs10_b[1:0];
    assign lowRangeB_uid822_i_arrayidx11_kernel_2mm0_mult_x_im9_merged_bit_select_c = i_arrayidx11_kernel_2mm0_mult_x_bs10_b[17:2];

    // add_uid825_i_arrayidx11_kernel_2mm0_mult_x_im9(BITJOIN,824)@3
    assign add_uid825_i_arrayidx11_kernel_2mm0_mult_x_im9_q = {addsumAHighB_uid824_i_arrayidx11_kernel_2mm0_mult_x_im9_q, lowRangeB_uid822_i_arrayidx11_kernel_2mm0_mult_x_im9_merged_bit_select_b};

    // sR_mergedSignalTM_uid830_i_arrayidx11_kernel_2mm0_mult_x_im9(BITJOIN,829)@3
    assign sR_mergedSignalTM_uid830_i_arrayidx11_kernel_2mm0_mult_x_im9_q = {add_uid825_i_arrayidx11_kernel_2mm0_mult_x_im9_q, i_arrayidx151_kernel_2mm0_mult_multconst_x_q};

    // i_arrayidx35_kernel_2mm0_mult_x_sums_join_1(BITJOIN,539)@3
    assign i_arrayidx35_kernel_2mm0_mult_x_sums_join_1_q = {i_arrayidx35_kernel_2mm0_mult_x_sums_align_0_q, sR_mergedSignalTM_uid830_i_arrayidx11_kernel_2mm0_mult_x_im9_q};

    // i_arrayidx35_kernel_2mm0_mult_x_sums_result_add_0_0(ADD,543)@3
    assign i_arrayidx35_kernel_2mm0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx35_kernel_2mm0_mult_x_sums_join_1_q};
    assign i_arrayidx35_kernel_2mm0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx35_kernel_2mm0_mult_x_sums_join_4_q};
    assign i_arrayidx35_kernel_2mm0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx35_kernel_2mm0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx35_kernel_2mm0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx35_kernel_2mm0_mult_x_sums_result_add_0_0_q = i_arrayidx35_kernel_2mm0_mult_x_sums_result_add_0_0_o[70:0];

    // i_arrayidx35_kernel_2mm0_mult_extender_x(BITJOIN,242)@3
    assign i_arrayidx35_kernel_2mm0_mult_extender_x_q = {i_arrayidx11_kernel_2mm0_mult_multconst_x_q, i_arrayidx35_kernel_2mm0_mult_x_sums_result_add_0_0_q[69:0]};

    // i_arrayidx35_kernel_2mm0_trunc_sel_x(BITSELECT,244)@3
    assign i_arrayidx35_kernel_2mm0_trunc_sel_x_b = i_arrayidx35_kernel_2mm0_mult_extender_x_q[63:0];

    // redist6_i_arrayidx35_kernel_2mm0_trunc_sel_x_b_1(DELAY,1548)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_arrayidx35_kernel_2mm0_trunc_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist6_i_arrayidx35_kernel_2mm0_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx35_kernel_2mm0_trunc_sel_x_b);
        end
    end

    // valid_fanout_reg10(REG,319)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg10_q <= $unsigned(redist5_sync_together78_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024a10i32_d8138_kernel_2mm26(BLACKBOX,55)@4
    kernel_2mm_i_llvm_fpga_ffwd_dest_p1024a10i32_d8138_0 thei_llvm_fpga_ffwd_dest_p1024a10i32_d8138_kernel_2mm26 (
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_dest_data_out_5_0(i_llvm_fpga_ffwd_dest_p1024a10i32_d8138_kernel_2mm26_out_dest_data_out_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx35_kernel_2mm0_add_x(ADD,231)@4
    assign i_arrayidx35_kernel_2mm0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1024a10i32_d8138_kernel_2mm26_out_dest_data_out_5_0};
    assign i_arrayidx35_kernel_2mm0_add_x_b = {1'b0, redist6_i_arrayidx35_kernel_2mm0_trunc_sel_x_b_1_q};
    assign i_arrayidx35_kernel_2mm0_add_x_o = $unsigned(i_arrayidx35_kernel_2mm0_add_x_a) + $unsigned(i_arrayidx35_kernel_2mm0_add_x_b);
    assign i_arrayidx35_kernel_2mm0_add_x_q = i_arrayidx35_kernel_2mm0_add_x_o[64:0];

    // i_arrayidx35_kernel_2mm0_dupName_0_trunc_sel_x(BITSELECT,245)@4
    assign i_arrayidx35_kernel_2mm0_dupName_0_trunc_sel_x_b = i_arrayidx35_kernel_2mm0_add_x_q[63:0];

    // i_arrayidx35_kernel_2mm0_dupName_0_add_x(ADD,239)@4
    assign i_arrayidx35_kernel_2mm0_dupName_0_add_x_a = {1'b0, i_arrayidx35_kernel_2mm0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx35_kernel_2mm0_dupName_0_add_x_b = {1'b0, i_arrayidx11_kernel_2mm0_shift_join_x_q};
    assign i_arrayidx35_kernel_2mm0_dupName_0_add_x_o = $unsigned(i_arrayidx35_kernel_2mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx35_kernel_2mm0_dupName_0_add_x_b);
    assign i_arrayidx35_kernel_2mm0_dupName_0_add_x_q = i_arrayidx35_kernel_2mm0_dupName_0_add_x_o[64:0];

    // i_arrayidx35_kernel_2mm0_dupName_2_trunc_sel_x(BITSELECT,246)@4
    assign i_arrayidx35_kernel_2mm0_dupName_2_trunc_sel_x_b = i_arrayidx35_kernel_2mm0_dupName_0_add_x_q[63:0];

    // c_kernel_2mm_C_local_pmem(CONSTANT,13)
    assign c_kernel_2mm_C_local_pmem_q = $unsigned(64'b0100000001000011000000000000000000000000000000000000000000000000);

    // i_arrayidx313_kernel_2mm0_upper_bits_x_merged_bit_select(BITSELECT,1534)@4
    assign i_arrayidx313_kernel_2mm0_upper_bits_x_merged_bit_select_b = c_kernel_2mm_C_local_pmem_q[63:9];
    assign i_arrayidx313_kernel_2mm0_upper_bits_x_merged_bit_select_c = c_kernel_2mm_C_local_pmem_q[8:0];

    // i_arrayidx313_kernel_2mm0_add_x(ADD,207)@4
    assign i_arrayidx313_kernel_2mm0_add_x_a = {1'b0, i_arrayidx313_kernel_2mm0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx313_kernel_2mm0_add_x_b = {1'b0, redist10_i_arrayidx151_kernel_2mm0_dupName_1_trunc_sel_x_b_2_q};
    assign i_arrayidx313_kernel_2mm0_add_x_o = $unsigned(i_arrayidx313_kernel_2mm0_add_x_a) + $unsigned(i_arrayidx313_kernel_2mm0_add_x_b);
    assign i_arrayidx313_kernel_2mm0_add_x_q = i_arrayidx313_kernel_2mm0_add_x_o[9:0];

    // i_arrayidx313_kernel_2mm0_dupName_2_trunc_sel_x(BITSELECT,228)@4
    assign i_arrayidx313_kernel_2mm0_dupName_2_trunc_sel_x_b = i_arrayidx313_kernel_2mm0_add_x_q[8:0];

    // i_arrayidx313_kernel_2mm0_dupName_0_add_x(ADD,217)@4
    assign i_arrayidx313_kernel_2mm0_dupName_0_add_x_a = {1'b0, i_arrayidx313_kernel_2mm0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx313_kernel_2mm0_dupName_0_add_x_b = {1'b0, redist11_i_arrayidx151_kernel_2mm0_shift_join_x_q_1_q};
    assign i_arrayidx313_kernel_2mm0_dupName_0_add_x_o = $unsigned(i_arrayidx313_kernel_2mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx313_kernel_2mm0_dupName_0_add_x_b);
    assign i_arrayidx313_kernel_2mm0_dupName_0_add_x_q = i_arrayidx313_kernel_2mm0_dupName_0_add_x_o[9:0];

    // i_arrayidx313_kernel_2mm0_dupName_5_trunc_sel_x(BITSELECT,230)@4
    assign i_arrayidx313_kernel_2mm0_dupName_5_trunc_sel_x_b = i_arrayidx313_kernel_2mm0_dupName_0_add_x_q[8:0];

    // i_arrayidx313_kernel_2mm0_append_upper_bits_x(BITJOIN,208)@4
    assign i_arrayidx313_kernel_2mm0_append_upper_bits_x_q = {i_arrayidx313_kernel_2mm0_upper_bits_x_merged_bit_select_b, i_arrayidx313_kernel_2mm0_dupName_5_trunc_sel_x_b};

    // i_arrayidx313_kernel_2mm25_vt_select_63(BITSELECT,28)@4
    assign i_arrayidx313_kernel_2mm25_vt_select_63_b = i_arrayidx313_kernel_2mm0_append_upper_bits_x_q[63:2];

    // i_arrayidx313_kernel_2mm25_vt_join(BITJOIN,27)@4
    assign i_arrayidx313_kernel_2mm25_vt_join_q = {i_arrayidx313_kernel_2mm25_vt_select_63_b, i_arrayidx151_kernel_2mm19_vt_const_1_q};

    // i_arrayidx27_kernel_2mm0_mult_x_sums_align_3(BITSHIFT,477)@3
    assign i_arrayidx27_kernel_2mm0_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid668_i_arrayidx11_kernel_2mm0_mult_x_im0_q, 12'b000000000000 };
    assign i_arrayidx27_kernel_2mm0_mult_x_sums_align_3_q = i_arrayidx27_kernel_2mm0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx27_kernel_2mm0_mult_x_sums_align_2(BITSHIFT,476)@3
    assign i_arrayidx27_kernel_2mm0_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid772_i_arrayidx11_kernel_2mm0_mult_x_im6_q, 18'b000000000000000000 };
    assign i_arrayidx27_kernel_2mm0_mult_x_sums_align_2_q = i_arrayidx27_kernel_2mm0_mult_x_sums_align_2_qint[41:0];

    // i_arrayidx27_kernel_2mm0_mult_x_sums_join_4(BITJOIN,478)@3
    assign i_arrayidx27_kernel_2mm0_mult_x_sums_join_4_q = {i_arrayidx27_kernel_2mm0_mult_x_sums_align_3_q, i_arrayidx27_kernel_2mm0_mult_x_sums_align_2_q};

    // i_arrayidx27_kernel_2mm0_mult_x_sums_align_0(BITSHIFT,474)@3
    assign i_arrayidx27_kernel_2mm0_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid714_i_arrayidx11_kernel_2mm0_mult_x_im3_q, 12'b000000000000 };
    assign i_arrayidx27_kernel_2mm0_mult_x_sums_align_0_q = i_arrayidx27_kernel_2mm0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx27_kernel_2mm0_mult_x_sums_join_1(BITJOIN,475)@3
    assign i_arrayidx27_kernel_2mm0_mult_x_sums_join_1_q = {i_arrayidx27_kernel_2mm0_mult_x_sums_align_0_q, sR_mergedSignalTM_uid830_i_arrayidx11_kernel_2mm0_mult_x_im9_q};

    // i_arrayidx27_kernel_2mm0_mult_x_sums_result_add_0_0(ADD,479)@3
    assign i_arrayidx27_kernel_2mm0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx27_kernel_2mm0_mult_x_sums_join_1_q};
    assign i_arrayidx27_kernel_2mm0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx27_kernel_2mm0_mult_x_sums_join_4_q};
    assign i_arrayidx27_kernel_2mm0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx27_kernel_2mm0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx27_kernel_2mm0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx27_kernel_2mm0_mult_x_sums_result_add_0_0_q = i_arrayidx27_kernel_2mm0_mult_x_sums_result_add_0_0_o[70:0];

    // i_arrayidx27_kernel_2mm0_mult_extender_x(BITJOIN,202)@3
    assign i_arrayidx27_kernel_2mm0_mult_extender_x_q = {i_arrayidx11_kernel_2mm0_mult_multconst_x_q, i_arrayidx27_kernel_2mm0_mult_x_sums_result_add_0_0_q[69:0]};

    // i_arrayidx27_kernel_2mm0_trunc_sel_x(BITSELECT,204)@3
    assign i_arrayidx27_kernel_2mm0_trunc_sel_x_b = i_arrayidx27_kernel_2mm0_mult_extender_x_q[63:0];

    // redist7_i_arrayidx27_kernel_2mm0_trunc_sel_x_b_1(DELAY,1549)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_arrayidx27_kernel_2mm0_trunc_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist7_i_arrayidx27_kernel_2mm0_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx27_kernel_2mm0_trunc_sel_x_b);
        end
    end

    // valid_fanout_reg9(REG,318)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg9_q <= $unsigned(redist5_sync_together78_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024a10i32_c8036_kernel_2mm23(BLACKBOX,54)@4
    kernel_2mm_i_llvm_fpga_ffwd_dest_p1024a10i32_c8036_0 thei_llvm_fpga_ffwd_dest_p1024a10i32_c8036_kernel_2mm23 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_p1024a10i32_c8036_kernel_2mm23_out_dest_data_out_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx27_kernel_2mm0_add_x(ADD,191)@4
    assign i_arrayidx27_kernel_2mm0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1024a10i32_c8036_kernel_2mm23_out_dest_data_out_4_0};
    assign i_arrayidx27_kernel_2mm0_add_x_b = {1'b0, redist7_i_arrayidx27_kernel_2mm0_trunc_sel_x_b_1_q};
    assign i_arrayidx27_kernel_2mm0_add_x_o = $unsigned(i_arrayidx27_kernel_2mm0_add_x_a) + $unsigned(i_arrayidx27_kernel_2mm0_add_x_b);
    assign i_arrayidx27_kernel_2mm0_add_x_q = i_arrayidx27_kernel_2mm0_add_x_o[64:0];

    // i_arrayidx27_kernel_2mm0_dupName_0_trunc_sel_x(BITSELECT,205)@4
    assign i_arrayidx27_kernel_2mm0_dupName_0_trunc_sel_x_b = i_arrayidx27_kernel_2mm0_add_x_q[63:0];

    // i_arrayidx27_kernel_2mm0_dupName_0_add_x(ADD,199)@4
    assign i_arrayidx27_kernel_2mm0_dupName_0_add_x_a = {1'b0, i_arrayidx27_kernel_2mm0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx27_kernel_2mm0_dupName_0_add_x_b = {1'b0, i_arrayidx11_kernel_2mm0_shift_join_x_q};
    assign i_arrayidx27_kernel_2mm0_dupName_0_add_x_o = $unsigned(i_arrayidx27_kernel_2mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx27_kernel_2mm0_dupName_0_add_x_b);
    assign i_arrayidx27_kernel_2mm0_dupName_0_add_x_q = i_arrayidx27_kernel_2mm0_dupName_0_add_x_o[64:0];

    // i_arrayidx27_kernel_2mm0_dupName_2_trunc_sel_x(BITSELECT,206)@4
    assign i_arrayidx27_kernel_2mm0_dupName_2_trunc_sel_x_b = i_arrayidx27_kernel_2mm0_dupName_0_add_x_q[63:0];

    // c_kernel_2mm_B_local_pmem(CONSTANT,12)
    assign c_kernel_2mm_B_local_pmem_q = $unsigned(64'b0100000001000010000000000000000000000000000000000000000000000000);

    // i_arrayidx232_kernel_2mm0_upper_bits_x_merged_bit_select(BITSELECT,1533)@4
    assign i_arrayidx232_kernel_2mm0_upper_bits_x_merged_bit_select_b = c_kernel_2mm_B_local_pmem_q[63:9];
    assign i_arrayidx232_kernel_2mm0_upper_bits_x_merged_bit_select_c = c_kernel_2mm_B_local_pmem_q[8:0];

    // i_arrayidx232_kernel_2mm0_add_x(ADD,167)@4
    assign i_arrayidx232_kernel_2mm0_add_x_a = {1'b0, i_arrayidx232_kernel_2mm0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx232_kernel_2mm0_add_x_b = {1'b0, redist10_i_arrayidx151_kernel_2mm0_dupName_1_trunc_sel_x_b_2_q};
    assign i_arrayidx232_kernel_2mm0_add_x_o = $unsigned(i_arrayidx232_kernel_2mm0_add_x_a) + $unsigned(i_arrayidx232_kernel_2mm0_add_x_b);
    assign i_arrayidx232_kernel_2mm0_add_x_q = i_arrayidx232_kernel_2mm0_add_x_o[9:0];

    // i_arrayidx232_kernel_2mm0_dupName_2_trunc_sel_x(BITSELECT,188)@4
    assign i_arrayidx232_kernel_2mm0_dupName_2_trunc_sel_x_b = i_arrayidx232_kernel_2mm0_add_x_q[8:0];

    // i_arrayidx232_kernel_2mm0_dupName_0_add_x(ADD,177)@4
    assign i_arrayidx232_kernel_2mm0_dupName_0_add_x_a = {1'b0, i_arrayidx232_kernel_2mm0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx232_kernel_2mm0_dupName_0_add_x_b = {1'b0, redist11_i_arrayidx151_kernel_2mm0_shift_join_x_q_1_q};
    assign i_arrayidx232_kernel_2mm0_dupName_0_add_x_o = $unsigned(i_arrayidx232_kernel_2mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx232_kernel_2mm0_dupName_0_add_x_b);
    assign i_arrayidx232_kernel_2mm0_dupName_0_add_x_q = i_arrayidx232_kernel_2mm0_dupName_0_add_x_o[9:0];

    // i_arrayidx232_kernel_2mm0_dupName_5_trunc_sel_x(BITSELECT,190)@4
    assign i_arrayidx232_kernel_2mm0_dupName_5_trunc_sel_x_b = i_arrayidx232_kernel_2mm0_dupName_0_add_x_q[8:0];

    // i_arrayidx232_kernel_2mm0_append_upper_bits_x(BITJOIN,168)@4
    assign i_arrayidx232_kernel_2mm0_append_upper_bits_x_q = {i_arrayidx232_kernel_2mm0_upper_bits_x_merged_bit_select_b, i_arrayidx232_kernel_2mm0_dupName_5_trunc_sel_x_b};

    // i_arrayidx232_kernel_2mm22_vt_select_63(BITSELECT,25)@4
    assign i_arrayidx232_kernel_2mm22_vt_select_63_b = i_arrayidx232_kernel_2mm0_append_upper_bits_x_q[63:2];

    // i_arrayidx232_kernel_2mm22_vt_join(BITJOIN,24)@4
    assign i_arrayidx232_kernel_2mm22_vt_join_q = {i_arrayidx232_kernel_2mm22_vt_select_63_b, i_arrayidx151_kernel_2mm19_vt_const_1_q};

    // i_arrayidx19_kernel_2mm0_mult_x_sums_align_3(BITSHIFT,413)@3
    assign i_arrayidx19_kernel_2mm0_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid668_i_arrayidx11_kernel_2mm0_mult_x_im0_q, 12'b000000000000 };
    assign i_arrayidx19_kernel_2mm0_mult_x_sums_align_3_q = i_arrayidx19_kernel_2mm0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx19_kernel_2mm0_mult_x_sums_align_2(BITSHIFT,412)@3
    assign i_arrayidx19_kernel_2mm0_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid772_i_arrayidx11_kernel_2mm0_mult_x_im6_q, 18'b000000000000000000 };
    assign i_arrayidx19_kernel_2mm0_mult_x_sums_align_2_q = i_arrayidx19_kernel_2mm0_mult_x_sums_align_2_qint[41:0];

    // i_arrayidx19_kernel_2mm0_mult_x_sums_join_4(BITJOIN,414)@3
    assign i_arrayidx19_kernel_2mm0_mult_x_sums_join_4_q = {i_arrayidx19_kernel_2mm0_mult_x_sums_align_3_q, i_arrayidx19_kernel_2mm0_mult_x_sums_align_2_q};

    // i_arrayidx19_kernel_2mm0_mult_x_sums_align_0(BITSHIFT,410)@3
    assign i_arrayidx19_kernel_2mm0_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid714_i_arrayidx11_kernel_2mm0_mult_x_im3_q, 12'b000000000000 };
    assign i_arrayidx19_kernel_2mm0_mult_x_sums_align_0_q = i_arrayidx19_kernel_2mm0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx19_kernel_2mm0_mult_x_sums_join_1(BITJOIN,411)@3
    assign i_arrayidx19_kernel_2mm0_mult_x_sums_join_1_q = {i_arrayidx19_kernel_2mm0_mult_x_sums_align_0_q, sR_mergedSignalTM_uid830_i_arrayidx11_kernel_2mm0_mult_x_im9_q};

    // i_arrayidx19_kernel_2mm0_mult_x_sums_result_add_0_0(ADD,415)@3
    assign i_arrayidx19_kernel_2mm0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx19_kernel_2mm0_mult_x_sums_join_1_q};
    assign i_arrayidx19_kernel_2mm0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx19_kernel_2mm0_mult_x_sums_join_4_q};
    assign i_arrayidx19_kernel_2mm0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx19_kernel_2mm0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx19_kernel_2mm0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx19_kernel_2mm0_mult_x_sums_result_add_0_0_q = i_arrayidx19_kernel_2mm0_mult_x_sums_result_add_0_0_o[70:0];

    // i_arrayidx19_kernel_2mm0_mult_extender_x(BITJOIN,162)@3
    assign i_arrayidx19_kernel_2mm0_mult_extender_x_q = {i_arrayidx11_kernel_2mm0_mult_multconst_x_q, i_arrayidx19_kernel_2mm0_mult_x_sums_result_add_0_0_q[69:0]};

    // i_arrayidx19_kernel_2mm0_trunc_sel_x(BITSELECT,164)@3
    assign i_arrayidx19_kernel_2mm0_trunc_sel_x_b = i_arrayidx19_kernel_2mm0_mult_extender_x_q[63:0];

    // redist8_i_arrayidx19_kernel_2mm0_trunc_sel_x_b_1(DELAY,1550)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_arrayidx19_kernel_2mm0_trunc_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist8_i_arrayidx19_kernel_2mm0_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx19_kernel_2mm0_trunc_sel_x_b);
        end
    end

    // valid_fanout_reg8(REG,317)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg8_q <= $unsigned(redist5_sync_together78_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024a10i32_b7935_kernel_2mm20(BLACKBOX,53)@4
    kernel_2mm_i_llvm_fpga_ffwd_dest_p1024a10i32_b7935_0 thei_llvm_fpga_ffwd_dest_p1024a10i32_b7935_kernel_2mm20 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_p1024a10i32_b7935_kernel_2mm20_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx19_kernel_2mm0_add_x(ADD,151)@4
    assign i_arrayidx19_kernel_2mm0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1024a10i32_b7935_kernel_2mm20_out_dest_data_out_3_0};
    assign i_arrayidx19_kernel_2mm0_add_x_b = {1'b0, redist8_i_arrayidx19_kernel_2mm0_trunc_sel_x_b_1_q};
    assign i_arrayidx19_kernel_2mm0_add_x_o = $unsigned(i_arrayidx19_kernel_2mm0_add_x_a) + $unsigned(i_arrayidx19_kernel_2mm0_add_x_b);
    assign i_arrayidx19_kernel_2mm0_add_x_q = i_arrayidx19_kernel_2mm0_add_x_o[64:0];

    // i_arrayidx19_kernel_2mm0_dupName_0_trunc_sel_x(BITSELECT,165)@4
    assign i_arrayidx19_kernel_2mm0_dupName_0_trunc_sel_x_b = i_arrayidx19_kernel_2mm0_add_x_q[63:0];

    // i_arrayidx19_kernel_2mm0_dupName_0_add_x(ADD,159)@4
    assign i_arrayidx19_kernel_2mm0_dupName_0_add_x_a = {1'b0, i_arrayidx19_kernel_2mm0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx19_kernel_2mm0_dupName_0_add_x_b = {1'b0, i_arrayidx11_kernel_2mm0_shift_join_x_q};
    assign i_arrayidx19_kernel_2mm0_dupName_0_add_x_o = $unsigned(i_arrayidx19_kernel_2mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx19_kernel_2mm0_dupName_0_add_x_b);
    assign i_arrayidx19_kernel_2mm0_dupName_0_add_x_q = i_arrayidx19_kernel_2mm0_dupName_0_add_x_o[64:0];

    // i_arrayidx19_kernel_2mm0_dupName_2_trunc_sel_x(BITSELECT,166)@4
    assign i_arrayidx19_kernel_2mm0_dupName_2_trunc_sel_x_b = i_arrayidx19_kernel_2mm0_dupName_0_add_x_q[63:0];

    // c_kernel_2mm_A_local_pmem(CONSTANT,11)
    assign c_kernel_2mm_A_local_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx151_kernel_2mm0_upper_bits_x_merged_bit_select(BITSELECT,1532)@4
    assign i_arrayidx151_kernel_2mm0_upper_bits_x_merged_bit_select_b = c_kernel_2mm_A_local_pmem_q[63:9];
    assign i_arrayidx151_kernel_2mm0_upper_bits_x_merged_bit_select_c = c_kernel_2mm_A_local_pmem_q[8:0];

    // i_arrayidx151_kernel_2mm0_add_x(ADD,127)@4
    assign i_arrayidx151_kernel_2mm0_add_x_a = {1'b0, i_arrayidx151_kernel_2mm0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx151_kernel_2mm0_add_x_b = {1'b0, redist10_i_arrayidx151_kernel_2mm0_dupName_1_trunc_sel_x_b_2_q};
    assign i_arrayidx151_kernel_2mm0_add_x_o = $unsigned(i_arrayidx151_kernel_2mm0_add_x_a) + $unsigned(i_arrayidx151_kernel_2mm0_add_x_b);
    assign i_arrayidx151_kernel_2mm0_add_x_q = i_arrayidx151_kernel_2mm0_add_x_o[9:0];

    // i_arrayidx151_kernel_2mm0_dupName_2_trunc_sel_x(BITSELECT,148)@4
    assign i_arrayidx151_kernel_2mm0_dupName_2_trunc_sel_x_b = i_arrayidx151_kernel_2mm0_add_x_q[8:0];

    // i_arrayidx151_kernel_2mm0_dupName_0_add_x(ADD,137)@4
    assign i_arrayidx151_kernel_2mm0_dupName_0_add_x_a = {1'b0, i_arrayidx151_kernel_2mm0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx151_kernel_2mm0_dupName_0_add_x_b = {1'b0, redist11_i_arrayidx151_kernel_2mm0_shift_join_x_q_1_q};
    assign i_arrayidx151_kernel_2mm0_dupName_0_add_x_o = $unsigned(i_arrayidx151_kernel_2mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx151_kernel_2mm0_dupName_0_add_x_b);
    assign i_arrayidx151_kernel_2mm0_dupName_0_add_x_q = i_arrayidx151_kernel_2mm0_dupName_0_add_x_o[9:0];

    // i_arrayidx151_kernel_2mm0_dupName_5_trunc_sel_x(BITSELECT,150)@4
    assign i_arrayidx151_kernel_2mm0_dupName_5_trunc_sel_x_b = i_arrayidx151_kernel_2mm0_dupName_0_add_x_q[8:0];

    // i_arrayidx151_kernel_2mm0_append_upper_bits_x(BITJOIN,128)@4
    assign i_arrayidx151_kernel_2mm0_append_upper_bits_x_q = {i_arrayidx151_kernel_2mm0_upper_bits_x_merged_bit_select_b, i_arrayidx151_kernel_2mm0_dupName_5_trunc_sel_x_b};

    // i_arrayidx151_kernel_2mm19_vt_select_63(BITSELECT,22)@4
    assign i_arrayidx151_kernel_2mm19_vt_select_63_b = i_arrayidx151_kernel_2mm0_append_upper_bits_x_q[63:2];

    // i_arrayidx151_kernel_2mm19_vt_join(BITJOIN,21)@4
    assign i_arrayidx151_kernel_2mm19_vt_join_q = {i_arrayidx151_kernel_2mm19_vt_select_63_b, i_arrayidx151_kernel_2mm19_vt_const_1_q};

    // i_arrayidx11_kernel_2mm0_mult_x_sums_align_3(BITSHIFT,349)@3
    assign i_arrayidx11_kernel_2mm0_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid668_i_arrayidx11_kernel_2mm0_mult_x_im0_q, 12'b000000000000 };
    assign i_arrayidx11_kernel_2mm0_mult_x_sums_align_3_q = i_arrayidx11_kernel_2mm0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx11_kernel_2mm0_mult_x_sums_align_2(BITSHIFT,348)@3
    assign i_arrayidx11_kernel_2mm0_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid772_i_arrayidx11_kernel_2mm0_mult_x_im6_q, 18'b000000000000000000 };
    assign i_arrayidx11_kernel_2mm0_mult_x_sums_align_2_q = i_arrayidx11_kernel_2mm0_mult_x_sums_align_2_qint[41:0];

    // i_arrayidx11_kernel_2mm0_mult_x_sums_join_4(BITJOIN,350)@3
    assign i_arrayidx11_kernel_2mm0_mult_x_sums_join_4_q = {i_arrayidx11_kernel_2mm0_mult_x_sums_align_3_q, i_arrayidx11_kernel_2mm0_mult_x_sums_align_2_q};

    // i_arrayidx11_kernel_2mm0_mult_x_sums_align_0(BITSHIFT,346)@3
    assign i_arrayidx11_kernel_2mm0_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid714_i_arrayidx11_kernel_2mm0_mult_x_im3_q, 12'b000000000000 };
    assign i_arrayidx11_kernel_2mm0_mult_x_sums_align_0_q = i_arrayidx11_kernel_2mm0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx11_kernel_2mm0_mult_x_sums_join_1(BITJOIN,347)@3
    assign i_arrayidx11_kernel_2mm0_mult_x_sums_join_1_q = {i_arrayidx11_kernel_2mm0_mult_x_sums_align_0_q, sR_mergedSignalTM_uid830_i_arrayidx11_kernel_2mm0_mult_x_im9_q};

    // i_arrayidx11_kernel_2mm0_mult_x_sums_result_add_0_0(ADD,351)@3
    assign i_arrayidx11_kernel_2mm0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx11_kernel_2mm0_mult_x_sums_join_1_q};
    assign i_arrayidx11_kernel_2mm0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx11_kernel_2mm0_mult_x_sums_join_4_q};
    assign i_arrayidx11_kernel_2mm0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx11_kernel_2mm0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx11_kernel_2mm0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx11_kernel_2mm0_mult_x_sums_result_add_0_0_q = i_arrayidx11_kernel_2mm0_mult_x_sums_result_add_0_0_o[70:0];

    // i_arrayidx11_kernel_2mm0_mult_extender_x(BITJOIN,122)@3
    assign i_arrayidx11_kernel_2mm0_mult_extender_x_q = {i_arrayidx11_kernel_2mm0_mult_multconst_x_q, i_arrayidx11_kernel_2mm0_mult_x_sums_result_add_0_0_q[69:0]};

    // i_arrayidx11_kernel_2mm0_trunc_sel_x(BITSELECT,124)@3
    assign i_arrayidx11_kernel_2mm0_trunc_sel_x_b = i_arrayidx11_kernel_2mm0_mult_extender_x_q[63:0];

    // redist12_i_arrayidx11_kernel_2mm0_trunc_sel_x_b_1(DELAY,1554)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_arrayidx11_kernel_2mm0_trunc_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist12_i_arrayidx11_kernel_2mm0_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx11_kernel_2mm0_trunc_sel_x_b);
        end
    end

    // valid_fanout_reg7(REG,316)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg7_q <= $unsigned(redist5_sync_together78_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024a10i32_a7834_kernel_2mm17(BLACKBOX,52)@4
    kernel_2mm_i_llvm_fpga_ffwd_dest_p1024a10i32_a7834_0 thei_llvm_fpga_ffwd_dest_p1024a10i32_a7834_kernel_2mm17 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_p1024a10i32_a7834_kernel_2mm17_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx11_kernel_2mm0_add_x(ADD,111)@4
    assign i_arrayidx11_kernel_2mm0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1024a10i32_a7834_kernel_2mm17_out_dest_data_out_2_0};
    assign i_arrayidx11_kernel_2mm0_add_x_b = {1'b0, redist12_i_arrayidx11_kernel_2mm0_trunc_sel_x_b_1_q};
    assign i_arrayidx11_kernel_2mm0_add_x_o = $unsigned(i_arrayidx11_kernel_2mm0_add_x_a) + $unsigned(i_arrayidx11_kernel_2mm0_add_x_b);
    assign i_arrayidx11_kernel_2mm0_add_x_q = i_arrayidx11_kernel_2mm0_add_x_o[64:0];

    // i_arrayidx11_kernel_2mm0_dupName_0_trunc_sel_x(BITSELECT,125)@4
    assign i_arrayidx11_kernel_2mm0_dupName_0_trunc_sel_x_b = i_arrayidx11_kernel_2mm0_add_x_q[63:0];

    // i_arrayidx11_kernel_2mm0_dupName_0_add_x(ADD,119)@4
    assign i_arrayidx11_kernel_2mm0_dupName_0_add_x_a = {1'b0, i_arrayidx11_kernel_2mm0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx11_kernel_2mm0_dupName_0_add_x_b = {1'b0, i_arrayidx11_kernel_2mm0_shift_join_x_q};
    assign i_arrayidx11_kernel_2mm0_dupName_0_add_x_o = $unsigned(i_arrayidx11_kernel_2mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx11_kernel_2mm0_dupName_0_add_x_b);
    assign i_arrayidx11_kernel_2mm0_dupName_0_add_x_q = i_arrayidx11_kernel_2mm0_dupName_0_add_x_o[64:0];

    // i_arrayidx11_kernel_2mm0_dupName_2_trunc_sel_x(BITSELECT,126)@4
    assign i_arrayidx11_kernel_2mm0_dupName_2_trunc_sel_x_b = i_arrayidx11_kernel_2mm0_dupName_0_add_x_q[63:0];

    // redist18_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_out_data_out_3(DELAY,1560)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_out_data_out_3_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist18_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_out_data_out_3_q <= $unsigned(redist17_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_out_data_out_2_q);
        end
    end

    // redist21_i_first_cleanup_xor101_kernel_2mm4_q_2(DELAY,1563)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_first_cleanup_xor101_kernel_2mm4_q_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist21_i_first_cleanup_xor101_kernel_2mm4_q_2_q <= $unsigned(redist20_i_first_cleanup_xor101_kernel_2mm4_q_1_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,307)@4
    assign out_c0_exi12_0_tpl = GND_q;
    assign out_c0_exi12_1_tpl = redist21_i_first_cleanup_xor101_kernel_2mm4_q_2_q;
    assign out_c0_exi12_2_tpl = redist18_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_out_data_out_3_q;
    assign out_c0_exi12_3_tpl = i_arrayidx11_kernel_2mm0_dupName_2_trunc_sel_x_b;
    assign out_c0_exi12_4_tpl = i_arrayidx151_kernel_2mm19_vt_join_q;
    assign out_c0_exi12_5_tpl = i_arrayidx19_kernel_2mm0_dupName_2_trunc_sel_x_b;
    assign out_c0_exi12_6_tpl = i_arrayidx232_kernel_2mm22_vt_join_q;
    assign out_c0_exi12_7_tpl = i_arrayidx27_kernel_2mm0_dupName_2_trunc_sel_x_b;
    assign out_c0_exi12_8_tpl = i_arrayidx313_kernel_2mm25_vt_join_q;
    assign out_c0_exi12_9_tpl = i_arrayidx35_kernel_2mm0_dupName_2_trunc_sel_x_b;
    assign out_c0_exi12_10_tpl = i_arrayidx394_kernel_2mm28_vt_join_q;
    assign out_c0_exi12_11_tpl = redist14_i_masked104_kernel_2mm43_q_2_q;
    assign out_c0_exi12_12_tpl = redist15_i_llvm_fpga_pop_i1_notcmp107119_pop32_kernel_2mm44_out_data_out_2_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_kernel_2mm1 = GND_q;

endmodule
