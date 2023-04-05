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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body8_stencil_2ds_c0_enter16615_stencil_2d0
// Created for function/kernel stencil_2d
// SystemVerilog created on Tue Apr  4 22:01:35 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_i_sfc_logic_s_c0_in_for_body80000ter16615_stencil_2d0 (
    input wire [31:0] in_memdep_1_stencil_2d_avm_readdata,
    input wire [0:0] in_memdep_1_stencil_2d_avm_writeack,
    input wire [0:0] in_memdep_1_stencil_2d_avm_waitrequest,
    input wire [0:0] in_memdep_1_stencil_2d_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_stencil_2d6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_stencil_2d6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    output wire [31:0] out_memdep_1_stencil_2d_avm_address,
    output wire [0:0] out_memdep_1_stencil_2d_avm_enable,
    output wire [0:0] out_memdep_1_stencil_2d_avm_read,
    output wire [0:0] out_memdep_1_stencil_2d_avm_write,
    output wire [31:0] out_memdep_1_stencil_2d_avm_writedata,
    output wire [3:0] out_memdep_1_stencil_2d_avm_byteenable,
    output wire [0:0] out_memdep_1_stencil_2d_avm_burstcount,
    output wire [0:0] out_c0_exi2169_0_tpl,
    output wire [0:0] out_c0_exi2169_1_tpl,
    output wire [0:0] out_c0_exi2169_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_stencil_2d1,
    input wire [0:0] in_c0_eni1165_0_tpl,
    input wire [0:0] in_c0_eni1165_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [15:0] c_i16_019_q;
    wire [15:0] c_i16_100140_q;
    wire [31:0] c_i32_0133_q;
    wire [31:0] c_i32_1141_q;
    wire [3:0] c_i4_7130_q;
    wire [4:0] c_i5_1144_q;
    wire [4:0] c_i5_8142_q;
    wire [7:0] c_i8_225_q;
    wire [63:0] c_stencil_2d_filter_pmem_q;
    wire [1:0] i_arrayidx122_stencil_2d102_vt_const_1_q;
    wire [63:0] i_arrayidx122_stencil_2d102_vt_join_q;
    wire [61:0] i_arrayidx122_stencil_2d102_vt_select_63_b;
    wire [3:0] i_cleanups_shl52_stencil_2d5_vt_join_q;
    wire [2:0] i_cleanups_shl52_stencil_2d5_vt_select_3_b;
    wire [17:0] i_cmp13_i_10_i68_stencil_2d72_a;
    wire [17:0] i_cmp13_i_10_i68_stencil_2d72_b;
    logic [17:0] i_cmp13_i_10_i68_stencil_2d72_o;
    wire [0:0] i_cmp13_i_10_i68_stencil_2d72_c;
    wire [17:0] i_cmp13_i_11_i75_stencil_2d77_a;
    wire [17:0] i_cmp13_i_11_i75_stencil_2d77_b;
    logic [17:0] i_cmp13_i_11_i75_stencil_2d77_o;
    wire [0:0] i_cmp13_i_11_i75_stencil_2d77_c;
    wire [17:0] i_cmp13_i_12_i82_stencil_2d82_a;
    wire [17:0] i_cmp13_i_12_i82_stencil_2d82_b;
    logic [17:0] i_cmp13_i_12_i82_stencil_2d82_o;
    wire [0:0] i_cmp13_i_12_i82_stencil_2d82_c;
    wire [17:0] i_cmp13_i_13_i89_stencil_2d87_a;
    wire [17:0] i_cmp13_i_13_i89_stencil_2d87_b;
    logic [17:0] i_cmp13_i_13_i89_stencil_2d87_o;
    wire [0:0] i_cmp13_i_13_i89_stencil_2d87_c;
    wire [17:0] i_cmp13_i_14_i96_stencil_2d92_a;
    wire [17:0] i_cmp13_i_14_i96_stencil_2d92_b;
    logic [17:0] i_cmp13_i_14_i96_stencil_2d92_o;
    wire [0:0] i_cmp13_i_14_i96_stencil_2d92_c;
    wire [17:0] i_cmp13_i_15_i103_stencil_2d97_a;
    wire [17:0] i_cmp13_i_15_i103_stencil_2d97_b;
    logic [17:0] i_cmp13_i_15_i103_stencil_2d97_o;
    wire [0:0] i_cmp13_i_15_i103_stencil_2d97_c;
    wire [17:0] i_cmp13_i_1_i5_stencil_2d27_a;
    wire [17:0] i_cmp13_i_1_i5_stencil_2d27_b;
    logic [17:0] i_cmp13_i_1_i5_stencil_2d27_o;
    wire [0:0] i_cmp13_i_1_i5_stencil_2d27_c;
    wire [17:0] i_cmp13_i_2_i12_stencil_2d32_a;
    wire [17:0] i_cmp13_i_2_i12_stencil_2d32_b;
    logic [17:0] i_cmp13_i_2_i12_stencil_2d32_o;
    wire [0:0] i_cmp13_i_2_i12_stencil_2d32_c;
    wire [17:0] i_cmp13_i_3_i19_stencil_2d37_a;
    wire [17:0] i_cmp13_i_3_i19_stencil_2d37_b;
    logic [17:0] i_cmp13_i_3_i19_stencil_2d37_o;
    wire [0:0] i_cmp13_i_3_i19_stencil_2d37_c;
    wire [17:0] i_cmp13_i_4_i26_stencil_2d42_a;
    wire [17:0] i_cmp13_i_4_i26_stencil_2d42_b;
    logic [17:0] i_cmp13_i_4_i26_stencil_2d42_o;
    wire [0:0] i_cmp13_i_4_i26_stencil_2d42_c;
    wire [17:0] i_cmp13_i_5_i33_stencil_2d47_a;
    wire [17:0] i_cmp13_i_5_i33_stencil_2d47_b;
    logic [17:0] i_cmp13_i_5_i33_stencil_2d47_o;
    wire [0:0] i_cmp13_i_5_i33_stencil_2d47_c;
    wire [17:0] i_cmp13_i_6_i40_stencil_2d52_a;
    wire [17:0] i_cmp13_i_6_i40_stencil_2d52_b;
    logic [17:0] i_cmp13_i_6_i40_stencil_2d52_o;
    wire [0:0] i_cmp13_i_6_i40_stencil_2d52_c;
    wire [17:0] i_cmp13_i_7_i47_stencil_2d57_a;
    wire [17:0] i_cmp13_i_7_i47_stencil_2d57_b;
    logic [17:0] i_cmp13_i_7_i47_stencil_2d57_o;
    wire [0:0] i_cmp13_i_7_i47_stencil_2d57_c;
    wire [17:0] i_cmp13_i_8_i54_stencil_2d62_a;
    wire [17:0] i_cmp13_i_8_i54_stencil_2d62_b;
    logic [17:0] i_cmp13_i_8_i54_stencil_2d62_o;
    wire [0:0] i_cmp13_i_8_i54_stencil_2d62_c;
    wire [17:0] i_cmp13_i_9_i61_stencil_2d67_a;
    wire [17:0] i_cmp13_i_9_i61_stencil_2d67_b;
    logic [17:0] i_cmp13_i_9_i61_stencil_2d67_o;
    wire [0:0] i_cmp13_i_9_i61_stencil_2d67_c;
    wire [0:0] i_first_cleanup_xor54_stencil_2d4_q;
    wire [5:0] i_fpga_indvars_iv_next3_stencil_2d114_a;
    wire [5:0] i_fpga_indvars_iv_next3_stencil_2d114_b;
    logic [5:0] i_fpga_indvars_iv_next3_stencil_2d114_o;
    wire [5:0] i_fpga_indvars_iv_next3_stencil_2d114_q;
    wire [63:0] i_idxprom11_stencil_2d101_vt_join_q;
    wire [31:0] i_idxprom11_stencil_2d101_vt_select_31_b;
    wire [32:0] i_inc14_stencil_2d104_a;
    wire [32:0] i_inc14_stencil_2d104_b;
    logic [32:0] i_inc14_stencil_2d104_o;
    wire [32:0] i_inc14_stencil_2d104_q;
    wire [31:0] i_llvm_fpga_mem_memdep_1_stencil_2d103_out_memdep_1_stencil_2d_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_1_stencil_2d103_out_memdep_1_stencil_2d_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_1_stencil_2d103_out_memdep_1_stencil_2d_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_1_stencil_2d103_out_memdep_1_stencil_2d_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_1_stencil_2d103_out_memdep_1_stencil_2d_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_1_stencil_2d103_out_memdep_1_stencil_2d_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_1_stencil_2d103_out_memdep_1_stencil_2d_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_stencil_2d6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_stencil_2d6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_stencil_2d6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_stencil_2d6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_stencil_2d6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_stencil_2d6_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_j4_037_pop21_stencil_2d12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j4_037_pop21_stencil_2d12_out_feedback_stall_out_21;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups51_pop23_stencil_2d2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups51_pop23_stencil_2d2_out_feedback_stall_out_23;
    wire [3:0] i_llvm_fpga_pop_i4_initerations46_pop22_stencil_2d7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations46_pop22_stencil_2d7_out_feedback_stall_out_22;
    wire [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv2_pop20_stencil_2d106_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv2_pop20_stencil_2d106_out_feedback_stall_out_20;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration50_stencil_2d11_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration50_stencil_2d11_out_feedback_valid_out_10;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond58_stencil_2d110_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond58_stencil_2d110_out_feedback_valid_out_11;
    wire [31:0] i_llvm_fpga_push_i32_j4_037_push21_stencil_2d105_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i32_j4_037_push21_stencil_2d105_out_feedback_valid_out_21;
    wire [7:0] i_llvm_fpga_push_i4_cleanups51_push23_stencil_2d113_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i4_cleanups51_push23_stencil_2d113_out_feedback_valid_out_23;
    wire [7:0] i_llvm_fpga_push_i4_initerations46_push22_stencil_2d9_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_i4_initerations46_push22_stencil_2d9_out_feedback_valid_out_22;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv2_push20_stencil_2d115_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv2_push20_stencil_2d115_out_feedback_valid_out_20;
    wire [0:0] i_masked57_stencil_2d116_qi;
    reg [0:0] i_masked57_stencil_2d116_q;
    wire [0:0] i_narrow_10_i69_stencil_2d73_s;
    reg [15:0] i_narrow_10_i69_stencil_2d73_q;
    wire [8:0] i_narrow_10_i69_stencil_2d73_vt_const_15_q;
    wire [15:0] i_narrow_10_i69_stencil_2d73_vt_join_q;
    wire [0:0] i_narrow_11_i76_stencil_2d78_s;
    reg [15:0] i_narrow_11_i76_stencil_2d78_q;
    wire [15:0] i_narrow_11_i76_stencil_2d78_vt_join_q;
    wire [0:0] i_narrow_12_i83_stencil_2d83_s;
    reg [15:0] i_narrow_12_i83_stencil_2d83_q;
    wire [15:0] i_narrow_12_i83_stencil_2d83_vt_join_q;
    wire [0:0] i_narrow_13_i90_stencil_2d88_s;
    reg [15:0] i_narrow_13_i90_stencil_2d88_q;
    wire [15:0] i_narrow_13_i90_stencil_2d88_vt_join_q;
    wire [0:0] i_narrow_14_i97_stencil_2d93_s;
    reg [15:0] i_narrow_14_i97_stencil_2d93_q;
    wire [15:0] i_narrow_14_i97_stencil_2d93_vt_join_q;
    wire [0:0] i_narrow_15_i104_stencil_2d98_s;
    reg [15:0] i_narrow_15_i104_stencil_2d98_q;
    wire [15:0] i_narrow_15_i104_stencil_2d98_vt_join_q;
    wire [0:0] i_narrow_1_i6_stencil_2d28_s;
    reg [15:0] i_narrow_1_i6_stencil_2d28_q;
    wire [15:0] i_narrow_1_i6_stencil_2d28_vt_join_q;
    wire [0:0] i_narrow_2_i13_stencil_2d33_s;
    reg [15:0] i_narrow_2_i13_stencil_2d33_q;
    wire [15:0] i_narrow_2_i13_stencil_2d33_vt_join_q;
    wire [0:0] i_narrow_3_i20_stencil_2d38_s;
    reg [15:0] i_narrow_3_i20_stencil_2d38_q;
    wire [15:0] i_narrow_3_i20_stencil_2d38_vt_join_q;
    wire [0:0] i_narrow_4_i27_stencil_2d43_s;
    reg [15:0] i_narrow_4_i27_stencil_2d43_q;
    wire [15:0] i_narrow_4_i27_stencil_2d43_vt_join_q;
    wire [0:0] i_narrow_5_i34_stencil_2d48_s;
    reg [15:0] i_narrow_5_i34_stencil_2d48_q;
    wire [15:0] i_narrow_5_i34_stencil_2d48_vt_join_q;
    wire [0:0] i_narrow_6_i41_stencil_2d53_s;
    reg [15:0] i_narrow_6_i41_stencil_2d53_q;
    wire [15:0] i_narrow_6_i41_stencil_2d53_vt_join_q;
    wire [0:0] i_narrow_7_i48_stencil_2d58_s;
    reg [15:0] i_narrow_7_i48_stencil_2d58_q;
    wire [15:0] i_narrow_7_i48_stencil_2d58_vt_join_q;
    wire [0:0] i_narrow_8_i55_stencil_2d63_s;
    reg [15:0] i_narrow_8_i55_stencil_2d63_q;
    wire [15:0] i_narrow_8_i55_stencil_2d63_vt_join_q;
    wire [0:0] i_narrow_9_i62_stencil_2d68_s;
    reg [15:0] i_narrow_9_i62_stencil_2d68_q;
    wire [15:0] i_narrow_9_i62_stencil_2d68_vt_join_q;
    wire [0:0] i_next_cleanups56_stencil_2d112_s;
    reg [3:0] i_next_cleanups56_stencil_2d112_q;
    wire [3:0] i_next_initerations47_stencil_2d8_vt_join_q;
    wire [2:0] i_next_initerations47_stencil_2d8_vt_select_2_b;
    wire [0:0] i_notcmp44_stencil_2d109_q;
    wire [0:0] i_or55_stencil_2d111_q;
    wire [31:0] i_rem10_zext_stencil_2d100_vt_join_q;
    wire [15:0] i_rem10_zext_stencil_2d100_vt_select_15_b;
    wire [16:0] i_sub16_i_10_i70_stencil_2d74_a;
    wire [16:0] i_sub16_i_10_i70_stencil_2d74_b;
    logic [16:0] i_sub16_i_10_i70_stencil_2d74_o;
    wire [16:0] i_sub16_i_10_i70_stencil_2d74_q;
    wire [16:0] i_sub16_i_11_i77_stencil_2d79_a;
    wire [16:0] i_sub16_i_11_i77_stencil_2d79_b;
    logic [16:0] i_sub16_i_11_i77_stencil_2d79_o;
    wire [16:0] i_sub16_i_11_i77_stencil_2d79_q;
    wire [16:0] i_sub16_i_12_i84_stencil_2d84_a;
    wire [16:0] i_sub16_i_12_i84_stencil_2d84_b;
    logic [16:0] i_sub16_i_12_i84_stencil_2d84_o;
    wire [16:0] i_sub16_i_12_i84_stencil_2d84_q;
    wire [16:0] i_sub16_i_13_i91_stencil_2d89_a;
    wire [16:0] i_sub16_i_13_i91_stencil_2d89_b;
    logic [16:0] i_sub16_i_13_i91_stencil_2d89_o;
    wire [16:0] i_sub16_i_13_i91_stencil_2d89_q;
    wire [16:0] i_sub16_i_14_i98_stencil_2d94_a;
    wire [16:0] i_sub16_i_14_i98_stencil_2d94_b;
    logic [16:0] i_sub16_i_14_i98_stencil_2d94_o;
    wire [16:0] i_sub16_i_14_i98_stencil_2d94_q;
    wire [16:0] i_sub16_i_15_i105_stencil_2d99_a;
    wire [16:0] i_sub16_i_15_i105_stencil_2d99_b;
    logic [16:0] i_sub16_i_15_i105_stencil_2d99_o;
    wire [16:0] i_sub16_i_15_i105_stencil_2d99_q;
    wire [16:0] i_sub16_i_1_i7_stencil_2d29_a;
    wire [16:0] i_sub16_i_1_i7_stencil_2d29_b;
    logic [16:0] i_sub16_i_1_i7_stencil_2d29_o;
    wire [16:0] i_sub16_i_1_i7_stencil_2d29_q;
    wire [16:0] i_sub16_i_2_i14_stencil_2d34_a;
    wire [16:0] i_sub16_i_2_i14_stencil_2d34_b;
    logic [16:0] i_sub16_i_2_i14_stencil_2d34_o;
    wire [16:0] i_sub16_i_2_i14_stencil_2d34_q;
    wire [16:0] i_sub16_i_3_i21_stencil_2d39_a;
    wire [16:0] i_sub16_i_3_i21_stencil_2d39_b;
    logic [16:0] i_sub16_i_3_i21_stencil_2d39_o;
    wire [16:0] i_sub16_i_3_i21_stencil_2d39_q;
    wire [16:0] i_sub16_i_4_i28_stencil_2d44_a;
    wire [16:0] i_sub16_i_4_i28_stencil_2d44_b;
    logic [16:0] i_sub16_i_4_i28_stencil_2d44_o;
    wire [16:0] i_sub16_i_4_i28_stencil_2d44_q;
    wire [16:0] i_sub16_i_5_i35_stencil_2d49_a;
    wire [16:0] i_sub16_i_5_i35_stencil_2d49_b;
    logic [16:0] i_sub16_i_5_i35_stencil_2d49_o;
    wire [16:0] i_sub16_i_5_i35_stencil_2d49_q;
    wire [16:0] i_sub16_i_6_i42_stencil_2d54_a;
    wire [16:0] i_sub16_i_6_i42_stencil_2d54_b;
    logic [16:0] i_sub16_i_6_i42_stencil_2d54_o;
    wire [16:0] i_sub16_i_6_i42_stencil_2d54_q;
    wire [16:0] i_sub16_i_7_i49_stencil_2d59_a;
    wire [16:0] i_sub16_i_7_i49_stencil_2d59_b;
    logic [16:0] i_sub16_i_7_i49_stencil_2d59_o;
    wire [16:0] i_sub16_i_7_i49_stencil_2d59_q;
    wire [16:0] i_sub16_i_8_i56_stencil_2d64_a;
    wire [16:0] i_sub16_i_8_i56_stencil_2d64_b;
    logic [16:0] i_sub16_i_8_i56_stencil_2d64_o;
    wire [16:0] i_sub16_i_8_i56_stencil_2d64_q;
    wire [16:0] i_sub16_i_9_i63_stencil_2d69_a;
    wire [16:0] i_sub16_i_9_i63_stencil_2d69_b;
    logic [16:0] i_sub16_i_9_i63_stencil_2d69_o;
    wire [16:0] i_sub16_i_9_i63_stencil_2d69_q;
    wire [15:0] i_unnamed_stencil_2d14_vt_join_q;
    wire [14:0] i_unnamed_stencil_2d14_vt_select_15_b;
    wire [2:0] i_unnamed_stencil_2d15_vt_const_2_q;
    wire [15:0] i_unnamed_stencil_2d15_vt_join_q;
    wire [12:0] i_unnamed_stencil_2d15_vt_select_15_b;
    wire [4:0] i_unnamed_stencil_2d16_vt_const_4_q;
    wire [15:0] i_unnamed_stencil_2d16_vt_join_q;
    wire [10:0] i_unnamed_stencil_2d16_vt_select_15_b;
    wire [14:0] i_unnamed_stencil_2d23_vt_const_15_q;
    wire [15:0] i_unnamed_stencil_2d23_vt_join_q;
    wire [0:0] i_unnamed_stencil_2d23_vt_select_0_b;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next3_stencil_2d114_sel_x_b;
    wire [31:0] bgTrunc_i_inc14_stencil_2d104_sel_x_b;
    wire [15:0] bgTrunc_i_sub16_i_10_i70_stencil_2d74_sel_x_b;
    wire [15:0] bgTrunc_i_sub16_i_11_i77_stencil_2d79_sel_x_b;
    wire [15:0] bgTrunc_i_sub16_i_12_i84_stencil_2d84_sel_x_b;
    wire [15:0] bgTrunc_i_sub16_i_13_i91_stencil_2d89_sel_x_b;
    wire [15:0] bgTrunc_i_sub16_i_14_i98_stencil_2d94_sel_x_b;
    wire [15:0] bgTrunc_i_sub16_i_15_i105_stencil_2d99_sel_x_b;
    wire [15:0] bgTrunc_i_sub16_i_1_i7_stencil_2d29_sel_x_b;
    wire [15:0] bgTrunc_i_sub16_i_2_i14_stencil_2d34_sel_x_b;
    wire [15:0] bgTrunc_i_sub16_i_3_i21_stencil_2d39_sel_x_b;
    wire [15:0] bgTrunc_i_sub16_i_4_i28_stencil_2d44_sel_x_b;
    wire [15:0] bgTrunc_i_sub16_i_5_i35_stencil_2d49_sel_x_b;
    wire [15:0] bgTrunc_i_sub16_i_6_i42_stencil_2d54_sel_x_b;
    wire [15:0] bgTrunc_i_sub16_i_7_i49_stencil_2d59_sel_x_b;
    wire [15:0] bgTrunc_i_sub16_i_8_i56_stencil_2d64_sel_x_b;
    wire [15:0] bgTrunc_i_sub16_i_9_i63_stencil_2d69_sel_x_b;
    wire [6:0] i_arrayidx122_stencil_2d0_add_x_a;
    wire [6:0] i_arrayidx122_stencil_2d0_add_x_b;
    logic [6:0] i_arrayidx122_stencil_2d0_add_x_o;
    wire [6:0] i_arrayidx122_stencil_2d0_add_x_q;
    wire [63:0] i_arrayidx122_stencil_2d0_append_upper_bits_x_q;
    wire [3:0] i_arrayidx122_stencil_2d0_narrow_x_b;
    wire [5:0] i_arrayidx122_stencil_2d0_shift_join_x_q;
    wire [5:0] i_arrayidx122_stencil_2d0_dupName_0_trunc_sel_x_b;
    wire [5:0] i_arrayidx122_stencil_2d0_dupName_2_trunc_sel_x_b;
    wire [0:0] i_first_cleanup53_stencil_2d3_sel_x_b;
    wire [63:0] i_idxprom11_stencil_2d101_sel_x_b;
    wire [0:0] i_last_initeration49_stencil_2d10_sel_x_b;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i67_stencil_2d0_NO_NAME_x_a;
    wire [15:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i67_stencil_2d0_NO_NAME_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i67_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i74_stencil_2d0_NO_NAME_x_a;
    wire [15:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i74_stencil_2d0_NO_NAME_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i74_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i81_stencil_2d0_NO_NAME_x_a;
    wire [15:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i81_stencil_2d0_NO_NAME_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i81_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i88_stencil_2d0_NO_NAME_x_a;
    wire [15:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i88_stencil_2d0_NO_NAME_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i88_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i95_stencil_2d0_NO_NAME_x_a;
    wire [15:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i95_stencil_2d0_NO_NAME_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i95_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i102_stencil_2d0_NO_NAME_x_a;
    wire [15:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i102_stencil_2d0_NO_NAME_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i102_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i4_stencil_2d0_NO_NAME_x_a;
    wire [15:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i4_stencil_2d0_NO_NAME_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i4_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i11_stencil_2d0_NO_NAME_x_a;
    wire [15:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i11_stencil_2d0_NO_NAME_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i11_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i18_stencil_2d0_NO_NAME_x_a;
    wire [15:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i18_stencil_2d0_NO_NAME_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i18_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i25_stencil_2d0_NO_NAME_x_a;
    wire [15:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i25_stencil_2d0_NO_NAME_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i25_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i32_stencil_2d0_NO_NAME_x_a;
    wire [15:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i32_stencil_2d0_NO_NAME_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i32_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i39_stencil_2d0_NO_NAME_x_a;
    wire [15:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i39_stencil_2d0_NO_NAME_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i39_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i46_stencil_2d0_NO_NAME_x_a;
    wire [15:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i46_stencil_2d0_NO_NAME_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i46_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i53_stencil_2d0_NO_NAME_x_a;
    wire [15:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i53_stencil_2d0_NO_NAME_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i53_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i60_stencil_2d0_NO_NAME_x_a;
    wire [15:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i60_stencil_2d0_NO_NAME_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i60_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [31:0] i_rem10_zext_stencil_2d100_sel_x_b;
    wire [15:0] i_unnamed_stencil_2d13_sel_x_b;
    wire [16:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_0_0_a;
    wire [16:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_0_0_b;
    logic [16:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_0_0_o;
    wire [16:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_0_0_q;
    wire [15:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_a;
    wire [15:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_b;
    logic [15:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_o;
    wire [15:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    wire [0:0] i_exitcond4_stencil_2d107_cmp_nsign_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid391_i_cleanups_shl52_stencil_2d0_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid391_i_cleanups_shl52_stencil_2d0_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid392_i_cleanups_shl52_stencil_2d0_shift_x_q;
    wire [0:0] leftShiftStage0_uid394_i_cleanups_shl52_stencil_2d0_shift_x_s;
    reg [3:0] leftShiftStage0_uid394_i_cleanups_shl52_stencil_2d0_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid398_i_next_initerations47_stencil_2d0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid400_i_next_initerations47_stencil_2d0_shift_x_q;
    wire [0:0] rightShiftStage0_uid402_i_next_initerations47_stencil_2d0_shift_x_s;
    reg [3:0] rightShiftStage0_uid402_i_next_initerations47_stencil_2d0_shift_x_q;
    wire [14:0] leftShiftStage0Idx1Rng1_uid407_dupName_2_i_unnamed_stencil_2d0_shift_x_in;
    wire [14:0] leftShiftStage0Idx1Rng1_uid407_dupName_2_i_unnamed_stencil_2d0_shift_x_b;
    wire [15:0] leftShiftStage0Idx1_uid408_dupName_2_i_unnamed_stencil_2d0_shift_x_q;
    wire [0:0] leftShiftStage0_uid410_dupName_2_i_unnamed_stencil_2d0_shift_x_s;
    reg [15:0] leftShiftStage0_uid410_dupName_2_i_unnamed_stencil_2d0_shift_x_q;
    wire [13:0] leftShiftStage1Idx1Rng2_uid420_dupName_3_i_unnamed_stencil_2d0_shift_x_in;
    wire [13:0] leftShiftStage1Idx1Rng2_uid420_dupName_3_i_unnamed_stencil_2d0_shift_x_b;
    wire [15:0] leftShiftStage1Idx1_uid421_dupName_3_i_unnamed_stencil_2d0_shift_x_q;
    wire [0:0] leftShiftStage1_uid423_dupName_3_i_unnamed_stencil_2d0_shift_x_s;
    reg [15:0] leftShiftStage1_uid423_dupName_3_i_unnamed_stencil_2d0_shift_x_q;
    wire [3:0] leftShiftStage1Idx1Pad4_uid432_dupName_4_i_unnamed_stencil_2d0_shift_x_q;
    wire [11:0] leftShiftStage1Idx1Rng4_uid433_dupName_4_i_unnamed_stencil_2d0_shift_x_in;
    wire [11:0] leftShiftStage1Idx1Rng4_uid433_dupName_4_i_unnamed_stencil_2d0_shift_x_b;
    wire [15:0] leftShiftStage1Idx1_uid434_dupName_4_i_unnamed_stencil_2d0_shift_x_q;
    wire [0:0] leftShiftStage1_uid436_dupName_4_i_unnamed_stencil_2d0_shift_x_s;
    reg [15:0] leftShiftStage1_uid436_dupName_4_i_unnamed_stencil_2d0_shift_x_q;
    wire [14:0] rightShiftStage0Idx1Rng1_uid440_dupName_5_i_unnamed_stencil_2d0_shift_x_b;
    wire [15:0] rightShiftStage0Idx1_uid442_dupName_5_i_unnamed_stencil_2d0_shift_x_q;
    wire [0:0] rightShiftStage0_uid444_dupName_5_i_unnamed_stencil_2d0_shift_x_s;
    reg [15:0] rightShiftStage0_uid444_dupName_5_i_unnamed_stencil_2d0_shift_x_q;
    wire [13:0] rightShiftStage1Idx1Rng2_uid445_dupName_5_i_unnamed_stencil_2d0_shift_x_b;
    wire [15:0] rightShiftStage1Idx1_uid447_dupName_5_i_unnamed_stencil_2d0_shift_x_q;
    wire [0:0] rightShiftStage1_uid449_dupName_5_i_unnamed_stencil_2d0_shift_x_s;
    reg [15:0] rightShiftStage1_uid449_dupName_5_i_unnamed_stencil_2d0_shift_x_q;
    wire [11:0] rightShiftStage2Idx1Rng4_uid450_dupName_5_i_unnamed_stencil_2d0_shift_x_b;
    wire [15:0] rightShiftStage2Idx1_uid452_dupName_5_i_unnamed_stencil_2d0_shift_x_q;
    wire [0:0] rightShiftStage2_uid454_dupName_5_i_unnamed_stencil_2d0_shift_x_s;
    reg [15:0] rightShiftStage2_uid454_dupName_5_i_unnamed_stencil_2d0_shift_x_q;
    wire [7:0] rightShiftStage3Idx1Rng8_uid455_dupName_5_i_unnamed_stencil_2d0_shift_x_b;
    wire [7:0] rightShiftStage3Idx1Pad8_uid456_dupName_5_i_unnamed_stencil_2d0_shift_x_q;
    wire [15:0] rightShiftStage3Idx1_uid457_dupName_5_i_unnamed_stencil_2d0_shift_x_q;
    wire [0:0] rightShiftStage3_uid459_dupName_5_i_unnamed_stencil_2d0_shift_x_s;
    reg [15:0] rightShiftStage3_uid459_dupName_5_i_unnamed_stencil_2d0_shift_x_q;
    wire [57:0] i_arrayidx122_stencil_2d0_upper_bits_x_merged_bit_select_b;
    wire [5:0] i_arrayidx122_stencil_2d0_upper_bits_x_merged_bit_select_c;
    wire [6:0] i_narrow_10_i69_stencil_2d73_vt_select_2_merged_bit_select_in;
    wire [0:0] i_narrow_10_i69_stencil_2d73_vt_select_2_merged_bit_select_b;
    wire [1:0] i_narrow_10_i69_stencil_2d73_vt_select_2_merged_bit_select_c;
    wire [6:0] i_narrow_11_i76_stencil_2d78_vt_select_2_merged_bit_select_in;
    wire [0:0] i_narrow_11_i76_stencil_2d78_vt_select_2_merged_bit_select_b;
    wire [1:0] i_narrow_11_i76_stencil_2d78_vt_select_2_merged_bit_select_c;
    wire [6:0] i_narrow_12_i83_stencil_2d83_vt_select_2_merged_bit_select_in;
    wire [0:0] i_narrow_12_i83_stencil_2d83_vt_select_2_merged_bit_select_b;
    wire [1:0] i_narrow_12_i83_stencil_2d83_vt_select_2_merged_bit_select_c;
    wire [6:0] i_narrow_13_i90_stencil_2d88_vt_select_2_merged_bit_select_in;
    wire [0:0] i_narrow_13_i90_stencil_2d88_vt_select_2_merged_bit_select_b;
    wire [1:0] i_narrow_13_i90_stencil_2d88_vt_select_2_merged_bit_select_c;
    wire [6:0] i_narrow_14_i97_stencil_2d93_vt_select_2_merged_bit_select_in;
    wire [0:0] i_narrow_14_i97_stencil_2d93_vt_select_2_merged_bit_select_b;
    wire [1:0] i_narrow_14_i97_stencil_2d93_vt_select_2_merged_bit_select_c;
    wire [6:0] i_narrow_15_i104_stencil_2d98_vt_select_2_merged_bit_select_in;
    wire [0:0] i_narrow_15_i104_stencil_2d98_vt_select_2_merged_bit_select_b;
    wire [1:0] i_narrow_15_i104_stencil_2d98_vt_select_2_merged_bit_select_c;
    wire [6:0] i_narrow_1_i6_stencil_2d28_vt_select_2_merged_bit_select_in;
    wire [0:0] i_narrow_1_i6_stencil_2d28_vt_select_2_merged_bit_select_b;
    wire [1:0] i_narrow_1_i6_stencil_2d28_vt_select_2_merged_bit_select_c;
    wire [6:0] i_narrow_2_i13_stencil_2d33_vt_select_2_merged_bit_select_in;
    wire [0:0] i_narrow_2_i13_stencil_2d33_vt_select_2_merged_bit_select_b;
    wire [1:0] i_narrow_2_i13_stencil_2d33_vt_select_2_merged_bit_select_c;
    wire [6:0] i_narrow_3_i20_stencil_2d38_vt_select_2_merged_bit_select_in;
    wire [0:0] i_narrow_3_i20_stencil_2d38_vt_select_2_merged_bit_select_b;
    wire [1:0] i_narrow_3_i20_stencil_2d38_vt_select_2_merged_bit_select_c;
    wire [6:0] i_narrow_4_i27_stencil_2d43_vt_select_2_merged_bit_select_in;
    wire [0:0] i_narrow_4_i27_stencil_2d43_vt_select_2_merged_bit_select_b;
    wire [1:0] i_narrow_4_i27_stencil_2d43_vt_select_2_merged_bit_select_c;
    wire [6:0] i_narrow_5_i34_stencil_2d48_vt_select_2_merged_bit_select_in;
    wire [0:0] i_narrow_5_i34_stencil_2d48_vt_select_2_merged_bit_select_b;
    wire [1:0] i_narrow_5_i34_stencil_2d48_vt_select_2_merged_bit_select_c;
    wire [6:0] i_narrow_6_i41_stencil_2d53_vt_select_2_merged_bit_select_in;
    wire [0:0] i_narrow_6_i41_stencil_2d53_vt_select_2_merged_bit_select_b;
    wire [1:0] i_narrow_6_i41_stencil_2d53_vt_select_2_merged_bit_select_c;
    wire [6:0] i_narrow_7_i48_stencil_2d58_vt_select_2_merged_bit_select_in;
    wire [0:0] i_narrow_7_i48_stencil_2d58_vt_select_2_merged_bit_select_b;
    wire [1:0] i_narrow_7_i48_stencil_2d58_vt_select_2_merged_bit_select_c;
    wire [6:0] i_narrow_8_i55_stencil_2d63_vt_select_2_merged_bit_select_in;
    wire [0:0] i_narrow_8_i55_stencil_2d63_vt_select_2_merged_bit_select_b;
    wire [1:0] i_narrow_8_i55_stencil_2d63_vt_select_2_merged_bit_select_c;
    wire [6:0] i_narrow_9_i62_stencil_2d68_vt_select_2_merged_bit_select_in;
    wire [0:0] i_narrow_9_i62_stencil_2d68_vt_select_2_merged_bit_select_b;
    wire [1:0] i_narrow_9_i62_stencil_2d68_vt_select_2_merged_bit_select_c;
    reg [15:0] redist0_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_3_q;
    reg [15:0] redist0_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_3_delay_0;
    reg [15:0] redist1_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_4_q;
    reg [15:0] redist2_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_5_q;
    reg [15:0] redist3_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_6_q;
    reg [15:0] redist4_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_7_q;
    reg [15:0] redist5_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_8_q;
    reg [15:0] redist6_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_9_q;
    reg [15:0] redist7_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_10_q;
    reg [15:0] redist8_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_11_q;
    reg [15:0] redist9_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_12_q;
    reg [15:0] redist10_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_13_q;
    reg [15:0] redist11_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_14_q;
    reg [0:0] redist12_sync_together159_aunroll_x_in_c0_eni1165_1_tpl_1_q;
    reg [0:0] redist13_sync_together159_aunroll_x_in_c0_eni1165_1_tpl_3_q;
    reg [0:0] redist13_sync_together159_aunroll_x_in_c0_eni1165_1_tpl_3_delay_0;
    reg [0:0] redist14_sync_together159_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist14_sync_together159_aunroll_x_in_i_valid_3_delay_0;
    reg [0:0] redist14_sync_together159_aunroll_x_in_i_valid_3_delay_1;
    reg [0:0] redist15_sync_together159_aunroll_x_in_i_valid_15_q;
    reg [0:0] redist16_sync_together159_aunroll_x_in_i_valid_16_q;
    reg [15:0] redist17_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i11_stencil_2d0_NO_NAME_x_q_1_q;
    reg [15:0] redist18_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i102_stencil_2d0_NO_NAME_x_q_1_q;
    reg [15:0] redist20_bgTrunc_i_sub16_i_9_i63_stencil_2d69_sel_x_b_1_q;
    reg [15:0] redist21_bgTrunc_i_sub16_i_8_i56_stencil_2d64_sel_x_b_1_q;
    reg [15:0] redist22_bgTrunc_i_sub16_i_7_i49_stencil_2d59_sel_x_b_1_q;
    reg [15:0] redist23_bgTrunc_i_sub16_i_6_i42_stencil_2d54_sel_x_b_1_q;
    reg [15:0] redist24_bgTrunc_i_sub16_i_5_i35_stencil_2d49_sel_x_b_1_q;
    reg [15:0] redist25_bgTrunc_i_sub16_i_4_i28_stencil_2d44_sel_x_b_1_q;
    reg [15:0] redist26_bgTrunc_i_sub16_i_3_i21_stencil_2d39_sel_x_b_1_q;
    reg [15:0] redist27_bgTrunc_i_sub16_i_2_i14_stencil_2d34_sel_x_b_1_q;
    reg [15:0] redist28_bgTrunc_i_sub16_i_13_i91_stencil_2d89_sel_x_b_1_q;
    reg [15:0] redist29_bgTrunc_i_sub16_i_12_i84_stencil_2d84_sel_x_b_1_q;
    reg [15:0] redist30_bgTrunc_i_sub16_i_11_i77_stencil_2d79_sel_x_b_1_q;
    reg [15:0] redist31_bgTrunc_i_sub16_i_10_i70_stencil_2d74_sel_x_b_1_q;
    reg [0:0] redist32_i_masked57_stencil_2d116_q_14_q;
    reg [0:0] redist33_i_llvm_fpga_pipeline_keep_going48_stencil_2d6_out_data_out_1_q;
    reg [0:0] redist34_i_llvm_fpga_pipeline_keep_going48_stencil_2d6_out_data_out_3_q;
    reg [0:0] redist34_i_llvm_fpga_pipeline_keep_going48_stencil_2d6_out_data_out_3_delay_0;
    reg [0:0] redist35_i_llvm_fpga_pipeline_keep_going48_stencil_2d6_out_data_out_17_q;
    reg [0:0] redist36_i_first_cleanup_xor54_stencil_2d4_q_13_q;
    reg [3:0] redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_inputreg0_q;
    reg [3:0] redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_outputreg0_q;
    wire redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_mem_reset0;
    wire [3:0] redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_mem_ia;
    wire [3:0] redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_mem_aa;
    wire [3:0] redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_mem_ab;
    wire [3:0] redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_mem_iq;
    wire [3:0] redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_mem_q;
    wire [3:0] redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_rdcnt_q;
    (* preserve *) reg [3:0] redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_rdcnt_i;
    (* preserve *) reg redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_rdcnt_eq;
    reg [3:0] redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_wraddr_q;
    wire [4:0] redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_mem_last_q;
    wire [4:0] redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_cmp_b;
    wire [0:0] redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_cmp_q;
    (* dont_merge *) reg [0:0] redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_cmpReg_q;
    wire [0:0] redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_notEnable_q;
    wire [0:0] redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_nor_q;
    (* dont_merge *) reg [0:0] redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_sticky_ena_q;
    wire [0:0] redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_enaAnd_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist14_sync_together159_aunroll_x_in_i_valid_3(DELAY,490)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together159_aunroll_x_in_i_valid_3_delay_0 <= '0;
            redist14_sync_together159_aunroll_x_in_i_valid_3_delay_1 <= '0;
            redist14_sync_together159_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist14_sync_together159_aunroll_x_in_i_valid_3_delay_0 <= $unsigned(in_i_valid);
            redist14_sync_together159_aunroll_x_in_i_valid_3_delay_1 <= redist14_sync_together159_aunroll_x_in_i_valid_3_delay_0;
            redist14_sync_together159_aunroll_x_in_i_valid_3_q <= redist14_sync_together159_aunroll_x_in_i_valid_3_delay_1;
        end
    end

    // redist33_i_llvm_fpga_pipeline_keep_going48_stencil_2d6_out_data_out_1(DELAY,509)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_llvm_fpga_pipeline_keep_going48_stencil_2d6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist33_i_llvm_fpga_pipeline_keep_going48_stencil_2d6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going48_stencil_2d6_out_data_out);
        end
    end

    // redist34_i_llvm_fpga_pipeline_keep_going48_stencil_2d6_out_data_out_3(DELAY,510)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_llvm_fpga_pipeline_keep_going48_stencil_2d6_out_data_out_3_delay_0 <= '0;
            redist34_i_llvm_fpga_pipeline_keep_going48_stencil_2d6_out_data_out_3_q <= '0;
        end
        else
        begin
            redist34_i_llvm_fpga_pipeline_keep_going48_stencil_2d6_out_data_out_3_delay_0 <= $unsigned(redist33_i_llvm_fpga_pipeline_keep_going48_stencil_2d6_out_data_out_1_q);
            redist34_i_llvm_fpga_pipeline_keep_going48_stencil_2d6_out_data_out_3_q <= redist34_i_llvm_fpga_pipeline_keep_going48_stencil_2d6_out_data_out_3_delay_0;
        end
    end

    // leftShiftStage0Idx1Rng1_uid391_i_cleanups_shl52_stencil_2d0_shift_x(BITSELECT,390)@4
    assign leftShiftStage0Idx1Rng1_uid391_i_cleanups_shl52_stencil_2d0_shift_x_in = i_llvm_fpga_pop_i4_cleanups51_pop23_stencil_2d2_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid391_i_cleanups_shl52_stencil_2d0_shift_x_b = leftShiftStage0Idx1Rng1_uid391_i_cleanups_shl52_stencil_2d0_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid392_i_cleanups_shl52_stencil_2d0_shift_x(BITJOIN,391)@4
    assign leftShiftStage0Idx1_uid392_i_cleanups_shl52_stencil_2d0_shift_x_q = {leftShiftStage0Idx1Rng1_uid391_i_cleanups_shl52_stencil_2d0_shift_x_b, GND_q};

    // leftShiftStage0_uid394_i_cleanups_shl52_stencil_2d0_shift_x(MUX,393)@4
    assign leftShiftStage0_uid394_i_cleanups_shl52_stencil_2d0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid394_i_cleanups_shl52_stencil_2d0_shift_x_s or i_llvm_fpga_pop_i4_cleanups51_pop23_stencil_2d2_out_data_out or leftShiftStage0Idx1_uid392_i_cleanups_shl52_stencil_2d0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid394_i_cleanups_shl52_stencil_2d0_shift_x_s)
            1'b0 : leftShiftStage0_uid394_i_cleanups_shl52_stencil_2d0_shift_x_q = i_llvm_fpga_pop_i4_cleanups51_pop23_stencil_2d2_out_data_out;
            1'b1 : leftShiftStage0_uid394_i_cleanups_shl52_stencil_2d0_shift_x_q = leftShiftStage0Idx1_uid392_i_cleanups_shl52_stencil_2d0_shift_x_q;
            default : leftShiftStage0_uid394_i_cleanups_shl52_stencil_2d0_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl52_stencil_2d5_vt_select_3(BITSELECT,53)@4
    assign i_cleanups_shl52_stencil_2d5_vt_select_3_b = leftShiftStage0_uid394_i_cleanups_shl52_stencil_2d0_shift_x_q[3:1];

    // i_cleanups_shl52_stencil_2d5_vt_join(BITJOIN,52)@4
    assign i_cleanups_shl52_stencil_2d5_vt_join_q = {i_cleanups_shl52_stencil_2d5_vt_select_3_b, GND_q};

    // i_first_cleanup_xor54_stencil_2d4(LOGICAL,71)@4
    assign i_first_cleanup_xor54_stencil_2d4_q = i_first_cleanup53_stencil_2d3_sel_x_b ^ VCC_q;

    // i_notcmp44_stencil_2d109(LOGICAL,202)@4
    assign i_notcmp44_stencil_2d109_q = i_exitcond4_stencil_2d107_cmp_nsign_q ^ VCC_q;

    // i_or55_stencil_2d111(LOGICAL,203)@4
    assign i_or55_stencil_2d111_q = i_notcmp44_stencil_2d109_q | i_first_cleanup_xor54_stencil_2d4_q;

    // i_next_cleanups56_stencil_2d112(MUX,198)@4
    assign i_next_cleanups56_stencil_2d112_s = i_or55_stencil_2d111_q;
    always @(i_next_cleanups56_stencil_2d112_s or i_llvm_fpga_pop_i4_cleanups51_pop23_stencil_2d2_out_data_out or i_cleanups_shl52_stencil_2d5_vt_join_q)
    begin
        unique case (i_next_cleanups56_stencil_2d112_s)
            1'b0 : i_next_cleanups56_stencil_2d112_q = i_llvm_fpga_pop_i4_cleanups51_pop23_stencil_2d2_out_data_out;
            1'b1 : i_next_cleanups56_stencil_2d112_q = i_cleanups_shl52_stencil_2d5_vt_join_q;
            default : i_next_cleanups56_stencil_2d112_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups51_push23_stencil_2d113(BLACKBOX,89)@4
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    stencil_2d_i_llvm_fpga_push_i4_cleanups51_push23_0 thei_llvm_fpga_push_i4_cleanups51_push23_stencil_2d113 (
        .in_data_in(i_next_cleanups56_stencil_2d112_q),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_i4_cleanups51_pop23_stencil_2d2_out_feedback_stall_out_23),
        .in_keep_going48(redist34_i_llvm_fpga_pipeline_keep_going48_stencil_2d6_out_data_out_3_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist14_sync_together159_aunroll_x_in_i_valid_3_q),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i4_cleanups51_push23_stencil_2d113_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i4_cleanups51_push23_stencil_2d113_out_feedback_valid_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist12_sync_together159_aunroll_x_in_c0_eni1165_1_tpl_1(DELAY,488)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together159_aunroll_x_in_c0_eni1165_1_tpl_1_q <= '0;
        end
        else
        begin
            redist12_sync_together159_aunroll_x_in_c0_eni1165_1_tpl_1_q <= $unsigned(in_c0_eni1165_1_tpl);
        end
    end

    // redist13_sync_together159_aunroll_x_in_c0_eni1165_1_tpl_3(DELAY,489)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together159_aunroll_x_in_c0_eni1165_1_tpl_3_delay_0 <= '0;
            redist13_sync_together159_aunroll_x_in_c0_eni1165_1_tpl_3_q <= '0;
        end
        else
        begin
            redist13_sync_together159_aunroll_x_in_c0_eni1165_1_tpl_3_delay_0 <= $unsigned(redist12_sync_together159_aunroll_x_in_c0_eni1165_1_tpl_1_q);
            redist13_sync_together159_aunroll_x_in_c0_eni1165_1_tpl_3_q <= redist13_sync_together159_aunroll_x_in_c0_eni1165_1_tpl_3_delay_0;
        end
    end

    // c_i4_7130(CONSTANT,41)
    assign c_i4_7130_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups51_pop23_stencil_2d2(BLACKBOX,83)@4
    // out out_feedback_stall_out_23@20000000
    stencil_2d_i_llvm_fpga_pop_i4_cleanups51_pop23_0 thei_llvm_fpga_pop_i4_cleanups51_pop23_stencil_2d2 (
        .in_data_in(c_i4_7130_q),
        .in_dir(redist13_sync_together159_aunroll_x_in_c0_eni1165_1_tpl_3_q),
        .in_feedback_in_23(i_llvm_fpga_push_i4_cleanups51_push23_stencil_2d113_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i4_cleanups51_push23_stencil_2d113_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist14_sync_together159_aunroll_x_in_i_valid_3_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups51_pop23_stencil_2d2_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i4_cleanups51_pop23_stencil_2d2_out_feedback_stall_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup53_stencil_2d3_sel_x(BITSELECT,276)@4
    assign i_first_cleanup53_stencil_2d3_sel_x_b = i_llvm_fpga_pop_i4_cleanups51_pop23_stencil_2d2_out_data_out[0:0];

    // c_i5_1144(CONSTANT,42)
    assign c_i5_1144_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next3_stencil_2d114(ADD,72)@4
    assign i_fpga_indvars_iv_next3_stencil_2d114_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv2_pop20_stencil_2d106_out_data_out};
    assign i_fpga_indvars_iv_next3_stencil_2d114_b = {1'b0, c_i5_1144_q};
    assign i_fpga_indvars_iv_next3_stencil_2d114_o = $unsigned(i_fpga_indvars_iv_next3_stencil_2d114_a) + $unsigned(i_fpga_indvars_iv_next3_stencil_2d114_b);
    assign i_fpga_indvars_iv_next3_stencil_2d114_q = i_fpga_indvars_iv_next3_stencil_2d114_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next3_stencil_2d114_sel_x(BITSELECT,241)@4
    assign bgTrunc_i_fpga_indvars_iv_next3_stencil_2d114_sel_x_b = i_fpga_indvars_iv_next3_stencil_2d114_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv2_push20_stencil_2d115(BLACKBOX,91)@4
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    stencil_2d_i_llvm_fpga_push_i5_fpga_indvars_iv2_push20_0 thei_llvm_fpga_push_i5_fpga_indvars_iv2_push20_stencil_2d115 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next3_stencil_2d114_sel_x_b),
        .in_feedback_stall_in_20(i_llvm_fpga_pop_i5_fpga_indvars_iv2_pop20_stencil_2d106_out_feedback_stall_out_20),
        .in_keep_going48(redist34_i_llvm_fpga_pipeline_keep_going48_stencil_2d6_out_data_out_3_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist14_sync_together159_aunroll_x_in_i_valid_3_q),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_i5_fpga_indvars_iv2_push20_stencil_2d115_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_i5_fpga_indvars_iv2_push20_stencil_2d115_out_feedback_valid_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_8142(CONSTANT,43)
    assign c_i5_8142_q = $unsigned(5'b01000);

    // i_llvm_fpga_pop_i5_fpga_indvars_iv2_pop20_stencil_2d106(BLACKBOX,85)@4
    // out out_feedback_stall_out_20@20000000
    stencil_2d_i_llvm_fpga_pop_i5_fpga_indvars_iv2_pop20_0 thei_llvm_fpga_pop_i5_fpga_indvars_iv2_pop20_stencil_2d106 (
        .in_data_in(c_i5_8142_q),
        .in_dir(redist13_sync_together159_aunroll_x_in_c0_eni1165_1_tpl_3_q),
        .in_feedback_in_20(i_llvm_fpga_push_i5_fpga_indvars_iv2_push20_stencil_2d115_out_feedback_out_20),
        .in_feedback_valid_in_20(i_llvm_fpga_push_i5_fpga_indvars_iv2_push20_stencil_2d115_out_feedback_valid_out_20),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist14_sync_together159_aunroll_x_in_i_valid_3_q),
        .out_data_out(i_llvm_fpga_pop_i5_fpga_indvars_iv2_pop20_stencil_2d106_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_i5_fpga_indvars_iv2_pop20_stencil_2d106_out_feedback_stall_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond4_stencil_2d107_cmp_nsign(LOGICAL,386)@4
    assign i_exitcond4_stencil_2d107_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i5_fpga_indvars_iv2_pop20_stencil_2d106_out_data_out[4:4]));

    // i_llvm_fpga_push_i1_notexitcond58_stencil_2d110(BLACKBOX,87)@4
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    stencil_2d_i_llvm_fpga_push_i1_notexitcond58_0 thei_llvm_fpga_push_i1_notexitcond58_stencil_2d110 (
        .in_data_in(i_exitcond4_stencil_2d107_cmp_nsign_q),
        .in_feedback_stall_in_11(i_llvm_fpga_pipeline_keep_going48_stencil_2d6_out_not_exitcond_stall_out),
        .in_first_cleanup53(i_first_cleanup53_stencil_2d3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist14_sync_together159_aunroll_x_in_i_valid_3_q),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i1_notexitcond58_stencil_2d110_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i1_notexitcond58_stencil_2d110_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,353)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid398_i_next_initerations47_stencil_2d0_shift_x(BITSELECT,397)@2
    assign rightShiftStage0Idx1Rng1_uid398_i_next_initerations47_stencil_2d0_shift_x_b = i_llvm_fpga_pop_i4_initerations46_pop22_stencil_2d7_out_data_out[3:1];

    // rightShiftStage0Idx1_uid400_i_next_initerations47_stencil_2d0_shift_x(BITJOIN,399)@2
    assign rightShiftStage0Idx1_uid400_i_next_initerations47_stencil_2d0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid398_i_next_initerations47_stencil_2d0_shift_x_b};

    // valid_fanout_reg1(REG,351)@1 + 1
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

    // valid_fanout_reg2(REG,352)@1 + 1
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

    // i_llvm_fpga_push_i4_initerations46_push22_stencil_2d9(BLACKBOX,90)@2
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    stencil_2d_i_llvm_fpga_push_i4_initerations46_push22_0 thei_llvm_fpga_push_i4_initerations46_push22_stencil_2d9 (
        .in_data_in(i_next_initerations47_stencil_2d8_vt_join_q),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_i4_initerations46_pop22_stencil_2d7_out_feedback_stall_out_22),
        .in_keep_going48(redist33_i_llvm_fpga_pipeline_keep_going48_stencil_2d6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_i4_initerations46_push22_stencil_2d9_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_i4_initerations46_push22_stencil_2d9_out_feedback_valid_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations46_pop22_stencil_2d7(BLACKBOX,84)@2
    // out out_feedback_stall_out_22@20000000
    stencil_2d_i_llvm_fpga_pop_i4_initerations46_pop22_0 thei_llvm_fpga_pop_i4_initerations46_pop22_stencil_2d7 (
        .in_data_in(c_i4_7130_q),
        .in_dir(redist12_sync_together159_aunroll_x_in_c0_eni1165_1_tpl_1_q),
        .in_feedback_in_22(i_llvm_fpga_push_i4_initerations46_push22_stencil_2d9_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_i4_initerations46_push22_stencil_2d9_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_initerations46_pop22_stencil_2d7_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_i4_initerations46_pop22_stencil_2d7_out_feedback_stall_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid402_i_next_initerations47_stencil_2d0_shift_x(MUX,401)@2
    assign rightShiftStage0_uid402_i_next_initerations47_stencil_2d0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid402_i_next_initerations47_stencil_2d0_shift_x_s or i_llvm_fpga_pop_i4_initerations46_pop22_stencil_2d7_out_data_out or rightShiftStage0Idx1_uid400_i_next_initerations47_stencil_2d0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid402_i_next_initerations47_stencil_2d0_shift_x_s)
            1'b0 : rightShiftStage0_uid402_i_next_initerations47_stencil_2d0_shift_x_q = i_llvm_fpga_pop_i4_initerations46_pop22_stencil_2d7_out_data_out;
            1'b1 : rightShiftStage0_uid402_i_next_initerations47_stencil_2d0_shift_x_q = rightShiftStage0Idx1_uid400_i_next_initerations47_stencil_2d0_shift_x_q;
            default : rightShiftStage0_uid402_i_next_initerations47_stencil_2d0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations47_stencil_2d8_vt_select_2(BITSELECT,201)@2
    assign i_next_initerations47_stencil_2d8_vt_select_2_b = rightShiftStage0_uid402_i_next_initerations47_stencil_2d0_shift_x_q[2:0];

    // i_next_initerations47_stencil_2d8_vt_join(BITJOIN,200)@2
    assign i_next_initerations47_stencil_2d8_vt_join_q = {GND_q, i_next_initerations47_stencil_2d8_vt_select_2_b};

    // i_last_initeration49_stencil_2d10_sel_x(BITSELECT,278)@2
    assign i_last_initeration49_stencil_2d10_sel_x_b = i_next_initerations47_stencil_2d8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration50_stencil_2d11(BLACKBOX,86)@2
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    stencil_2d_i_llvm_fpga_push_i1_lastiniteration50_0 thei_llvm_fpga_push_i1_lastiniteration50_stencil_2d11 (
        .in_data_in(i_last_initeration49_stencil_2d10_sel_x_b),
        .in_feedback_stall_in_10(i_llvm_fpga_pipeline_keep_going48_stencil_2d6_out_initeration_stall_out),
        .in_keep_going48(redist33_i_llvm_fpga_pipeline_keep_going48_stencil_2d6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i1_lastiniteration50_stencil_2d11_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i1_lastiniteration50_stencil_2d11_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going48_stencil_2d6(BLACKBOX,81)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    stencil_2d_i_llvm_fpga_pipeline_keep_going48_0 thei_llvm_fpga_pipeline_keep_going48_stencil_2d6 (
        .in_data_in(in_c0_eni1165_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration50_stencil_2d11_out_feedback_out_10),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration50_stencil_2d11_out_feedback_valid_out_10),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond58_stencil_2d110_out_feedback_out_11),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond58_stencil_2d110_out_feedback_valid_out_11),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going48_stencil_2d6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going48_stencil_2d6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going48_stencil_2d6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going48_stencil_2d6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going48_stencil_2d6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going48_stencil_2d6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,47)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_stencil_2d6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going48_stencil_2d6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_stencil_2d6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going48_stencil_2d6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,238)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going48_stencil_2d6_out_pipeline_valid_out;

    // c_i16_019(CONSTANT,19)
    assign c_i16_019_q = $unsigned(16'b0000000000000000);

    // i_narrow_10_i69_stencil_2d73_vt_const_15(CONSTANT,95)
    assign i_narrow_10_i69_stencil_2d73_vt_const_15_q = $unsigned(9'b000000000);

    // c_i16_100140(CONSTANT,20)
    assign c_i16_100140_q = $unsigned(16'b0000000001100100);

    // i_cmp13_i_15_i103_stencil_2d97(COMPARE,59)@17
    assign i_cmp13_i_15_i103_stencil_2d97_a = {2'b00, redist18_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i102_stencil_2d0_NO_NAME_x_q_1_q};
    assign i_cmp13_i_15_i103_stencil_2d97_b = {2'b00, c_i16_100140_q};
    assign i_cmp13_i_15_i103_stencil_2d97_o = $unsigned(i_cmp13_i_15_i103_stencil_2d97_a) - $unsigned(i_cmp13_i_15_i103_stencil_2d97_b);
    assign i_cmp13_i_15_i103_stencil_2d97_c[0] = i_cmp13_i_15_i103_stencil_2d97_o[17];

    // i_narrow_15_i104_stencil_2d98(MUX,128)@17
    assign i_narrow_15_i104_stencil_2d98_s = i_cmp13_i_15_i103_stencil_2d97_c;
    always @(i_narrow_15_i104_stencil_2d98_s or c_i16_100140_q or c_i16_019_q)
    begin
        unique case (i_narrow_15_i104_stencil_2d98_s)
            1'b0 : i_narrow_15_i104_stencil_2d98_q = c_i16_100140_q;
            1'b1 : i_narrow_15_i104_stencil_2d98_q = c_i16_019_q;
            default : i_narrow_15_i104_stencil_2d98_q = 16'b0;
        endcase
    end

    // i_narrow_15_i104_stencil_2d98_vt_select_2_merged_bit_select(BITSELECT,466)@17
    assign i_narrow_15_i104_stencil_2d98_vt_select_2_merged_bit_select_in = i_narrow_15_i104_stencil_2d98_q[6:0];
    assign i_narrow_15_i104_stencil_2d98_vt_select_2_merged_bit_select_b = i_narrow_15_i104_stencil_2d98_vt_select_2_merged_bit_select_in[2:2];
    assign i_narrow_15_i104_stencil_2d98_vt_select_2_merged_bit_select_c = i_narrow_15_i104_stencil_2d98_vt_select_2_merged_bit_select_in[6:5];

    // i_arrayidx122_stencil_2d102_vt_const_1(CONSTANT,48)
    assign i_arrayidx122_stencil_2d102_vt_const_1_q = $unsigned(2'b00);

    // i_narrow_15_i104_stencil_2d98_vt_join(BITJOIN,132)@17
    assign i_narrow_15_i104_stencil_2d98_vt_join_q = {i_narrow_10_i69_stencil_2d73_vt_const_15_q, i_narrow_15_i104_stencil_2d98_vt_select_2_merged_bit_select_c, i_arrayidx122_stencil_2d102_vt_const_1_q, i_narrow_15_i104_stencil_2d98_vt_select_2_merged_bit_select_b, i_arrayidx122_stencil_2d102_vt_const_1_q};

    // c_i8_225(CONSTANT,44)
    assign c_i8_225_q = $unsigned(8'b00000010);

    // i_cmp13_i_14_i96_stencil_2d92(COMPARE,58)@16
    assign i_cmp13_i_14_i96_stencil_2d92_a = {2'b00, i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i95_stencil_2d0_NO_NAME_x_q};
    assign i_cmp13_i_14_i96_stencil_2d92_b = {2'b00, c_i16_100140_q};
    assign i_cmp13_i_14_i96_stencil_2d92_o = $unsigned(i_cmp13_i_14_i96_stencil_2d92_a) - $unsigned(i_cmp13_i_14_i96_stencil_2d92_b);
    assign i_cmp13_i_14_i96_stencil_2d92_c[0] = i_cmp13_i_14_i96_stencil_2d92_o[17];

    // i_narrow_14_i97_stencil_2d93(MUX,121)@16
    assign i_narrow_14_i97_stencil_2d93_s = i_cmp13_i_14_i96_stencil_2d92_c;
    always @(i_narrow_14_i97_stencil_2d93_s or c_i16_100140_q or c_i16_019_q)
    begin
        unique case (i_narrow_14_i97_stencil_2d93_s)
            1'b0 : i_narrow_14_i97_stencil_2d93_q = c_i16_100140_q;
            1'b1 : i_narrow_14_i97_stencil_2d93_q = c_i16_019_q;
            default : i_narrow_14_i97_stencil_2d93_q = 16'b0;
        endcase
    end

    // i_narrow_14_i97_stencil_2d93_vt_select_2_merged_bit_select(BITSELECT,465)@16
    assign i_narrow_14_i97_stencil_2d93_vt_select_2_merged_bit_select_in = i_narrow_14_i97_stencil_2d93_q[6:0];
    assign i_narrow_14_i97_stencil_2d93_vt_select_2_merged_bit_select_b = i_narrow_14_i97_stencil_2d93_vt_select_2_merged_bit_select_in[2:2];
    assign i_narrow_14_i97_stencil_2d93_vt_select_2_merged_bit_select_c = i_narrow_14_i97_stencil_2d93_vt_select_2_merged_bit_select_in[6:5];

    // i_narrow_14_i97_stencil_2d93_vt_join(BITJOIN,125)@16
    assign i_narrow_14_i97_stencil_2d93_vt_join_q = {i_narrow_10_i69_stencil_2d73_vt_const_15_q, i_narrow_14_i97_stencil_2d93_vt_select_2_merged_bit_select_c, i_arrayidx122_stencil_2d102_vt_const_1_q, i_narrow_14_i97_stencil_2d93_vt_select_2_merged_bit_select_b, i_arrayidx122_stencil_2d102_vt_const_1_q};

    // i_cmp13_i_13_i89_stencil_2d87(COMPARE,57)@15
    assign i_cmp13_i_13_i89_stencil_2d87_a = {2'b00, i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i88_stencil_2d0_NO_NAME_x_q};
    assign i_cmp13_i_13_i89_stencil_2d87_b = {2'b00, c_i16_100140_q};
    assign i_cmp13_i_13_i89_stencil_2d87_o = $unsigned(i_cmp13_i_13_i89_stencil_2d87_a) - $unsigned(i_cmp13_i_13_i89_stencil_2d87_b);
    assign i_cmp13_i_13_i89_stencil_2d87_c[0] = i_cmp13_i_13_i89_stencil_2d87_o[17];

    // i_narrow_13_i90_stencil_2d88(MUX,114)@15
    assign i_narrow_13_i90_stencil_2d88_s = i_cmp13_i_13_i89_stencil_2d87_c;
    always @(i_narrow_13_i90_stencil_2d88_s or c_i16_100140_q or c_i16_019_q)
    begin
        unique case (i_narrow_13_i90_stencil_2d88_s)
            1'b0 : i_narrow_13_i90_stencil_2d88_q = c_i16_100140_q;
            1'b1 : i_narrow_13_i90_stencil_2d88_q = c_i16_019_q;
            default : i_narrow_13_i90_stencil_2d88_q = 16'b0;
        endcase
    end

    // i_narrow_13_i90_stencil_2d88_vt_select_2_merged_bit_select(BITSELECT,464)@15
    assign i_narrow_13_i90_stencil_2d88_vt_select_2_merged_bit_select_in = i_narrow_13_i90_stencil_2d88_q[6:0];
    assign i_narrow_13_i90_stencil_2d88_vt_select_2_merged_bit_select_b = i_narrow_13_i90_stencil_2d88_vt_select_2_merged_bit_select_in[2:2];
    assign i_narrow_13_i90_stencil_2d88_vt_select_2_merged_bit_select_c = i_narrow_13_i90_stencil_2d88_vt_select_2_merged_bit_select_in[6:5];

    // i_narrow_13_i90_stencil_2d88_vt_join(BITJOIN,118)@15
    assign i_narrow_13_i90_stencil_2d88_vt_join_q = {i_narrow_10_i69_stencil_2d73_vt_const_15_q, i_narrow_13_i90_stencil_2d88_vt_select_2_merged_bit_select_c, i_arrayidx122_stencil_2d102_vt_const_1_q, i_narrow_13_i90_stencil_2d88_vt_select_2_merged_bit_select_b, i_arrayidx122_stencil_2d102_vt_const_1_q};

    // i_cmp13_i_12_i82_stencil_2d82(COMPARE,56)@14
    assign i_cmp13_i_12_i82_stencil_2d82_a = {2'b00, i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i81_stencil_2d0_NO_NAME_x_q};
    assign i_cmp13_i_12_i82_stencil_2d82_b = {2'b00, c_i16_100140_q};
    assign i_cmp13_i_12_i82_stencil_2d82_o = $unsigned(i_cmp13_i_12_i82_stencil_2d82_a) - $unsigned(i_cmp13_i_12_i82_stencil_2d82_b);
    assign i_cmp13_i_12_i82_stencil_2d82_c[0] = i_cmp13_i_12_i82_stencil_2d82_o[17];

    // i_narrow_12_i83_stencil_2d83(MUX,107)@14
    assign i_narrow_12_i83_stencil_2d83_s = i_cmp13_i_12_i82_stencil_2d82_c;
    always @(i_narrow_12_i83_stencil_2d83_s or c_i16_100140_q or c_i16_019_q)
    begin
        unique case (i_narrow_12_i83_stencil_2d83_s)
            1'b0 : i_narrow_12_i83_stencil_2d83_q = c_i16_100140_q;
            1'b1 : i_narrow_12_i83_stencil_2d83_q = c_i16_019_q;
            default : i_narrow_12_i83_stencil_2d83_q = 16'b0;
        endcase
    end

    // i_narrow_12_i83_stencil_2d83_vt_select_2_merged_bit_select(BITSELECT,463)@14
    assign i_narrow_12_i83_stencil_2d83_vt_select_2_merged_bit_select_in = i_narrow_12_i83_stencil_2d83_q[6:0];
    assign i_narrow_12_i83_stencil_2d83_vt_select_2_merged_bit_select_b = i_narrow_12_i83_stencil_2d83_vt_select_2_merged_bit_select_in[2:2];
    assign i_narrow_12_i83_stencil_2d83_vt_select_2_merged_bit_select_c = i_narrow_12_i83_stencil_2d83_vt_select_2_merged_bit_select_in[6:5];

    // i_narrow_12_i83_stencil_2d83_vt_join(BITJOIN,111)@14
    assign i_narrow_12_i83_stencil_2d83_vt_join_q = {i_narrow_10_i69_stencil_2d73_vt_const_15_q, i_narrow_12_i83_stencil_2d83_vt_select_2_merged_bit_select_c, i_arrayidx122_stencil_2d102_vt_const_1_q, i_narrow_12_i83_stencil_2d83_vt_select_2_merged_bit_select_b, i_arrayidx122_stencil_2d102_vt_const_1_q};

    // i_cmp13_i_11_i75_stencil_2d77(COMPARE,55)@13
    assign i_cmp13_i_11_i75_stencil_2d77_a = {2'b00, i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i74_stencil_2d0_NO_NAME_x_q};
    assign i_cmp13_i_11_i75_stencil_2d77_b = {2'b00, c_i16_100140_q};
    assign i_cmp13_i_11_i75_stencil_2d77_o = $unsigned(i_cmp13_i_11_i75_stencil_2d77_a) - $unsigned(i_cmp13_i_11_i75_stencil_2d77_b);
    assign i_cmp13_i_11_i75_stencil_2d77_c[0] = i_cmp13_i_11_i75_stencil_2d77_o[17];

    // i_narrow_11_i76_stencil_2d78(MUX,100)@13
    assign i_narrow_11_i76_stencil_2d78_s = i_cmp13_i_11_i75_stencil_2d77_c;
    always @(i_narrow_11_i76_stencil_2d78_s or c_i16_100140_q or c_i16_019_q)
    begin
        unique case (i_narrow_11_i76_stencil_2d78_s)
            1'b0 : i_narrow_11_i76_stencil_2d78_q = c_i16_100140_q;
            1'b1 : i_narrow_11_i76_stencil_2d78_q = c_i16_019_q;
            default : i_narrow_11_i76_stencil_2d78_q = 16'b0;
        endcase
    end

    // i_narrow_11_i76_stencil_2d78_vt_select_2_merged_bit_select(BITSELECT,462)@13
    assign i_narrow_11_i76_stencil_2d78_vt_select_2_merged_bit_select_in = i_narrow_11_i76_stencil_2d78_q[6:0];
    assign i_narrow_11_i76_stencil_2d78_vt_select_2_merged_bit_select_b = i_narrow_11_i76_stencil_2d78_vt_select_2_merged_bit_select_in[2:2];
    assign i_narrow_11_i76_stencil_2d78_vt_select_2_merged_bit_select_c = i_narrow_11_i76_stencil_2d78_vt_select_2_merged_bit_select_in[6:5];

    // i_narrow_11_i76_stencil_2d78_vt_join(BITJOIN,104)@13
    assign i_narrow_11_i76_stencil_2d78_vt_join_q = {i_narrow_10_i69_stencil_2d73_vt_const_15_q, i_narrow_11_i76_stencil_2d78_vt_select_2_merged_bit_select_c, i_arrayidx122_stencil_2d102_vt_const_1_q, i_narrow_11_i76_stencil_2d78_vt_select_2_merged_bit_select_b, i_arrayidx122_stencil_2d102_vt_const_1_q};

    // i_cmp13_i_10_i68_stencil_2d72(COMPARE,54)@12
    assign i_cmp13_i_10_i68_stencil_2d72_a = {2'b00, i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i67_stencil_2d0_NO_NAME_x_q};
    assign i_cmp13_i_10_i68_stencil_2d72_b = {2'b00, c_i16_100140_q};
    assign i_cmp13_i_10_i68_stencil_2d72_o = $unsigned(i_cmp13_i_10_i68_stencil_2d72_a) - $unsigned(i_cmp13_i_10_i68_stencil_2d72_b);
    assign i_cmp13_i_10_i68_stencil_2d72_c[0] = i_cmp13_i_10_i68_stencil_2d72_o[17];

    // i_narrow_10_i69_stencil_2d73(MUX,93)@12
    assign i_narrow_10_i69_stencil_2d73_s = i_cmp13_i_10_i68_stencil_2d72_c;
    always @(i_narrow_10_i69_stencil_2d73_s or c_i16_100140_q or c_i16_019_q)
    begin
        unique case (i_narrow_10_i69_stencil_2d73_s)
            1'b0 : i_narrow_10_i69_stencil_2d73_q = c_i16_100140_q;
            1'b1 : i_narrow_10_i69_stencil_2d73_q = c_i16_019_q;
            default : i_narrow_10_i69_stencil_2d73_q = 16'b0;
        endcase
    end

    // i_narrow_10_i69_stencil_2d73_vt_select_2_merged_bit_select(BITSELECT,461)@12
    assign i_narrow_10_i69_stencil_2d73_vt_select_2_merged_bit_select_in = i_narrow_10_i69_stencil_2d73_q[6:0];
    assign i_narrow_10_i69_stencil_2d73_vt_select_2_merged_bit_select_b = i_narrow_10_i69_stencil_2d73_vt_select_2_merged_bit_select_in[2:2];
    assign i_narrow_10_i69_stencil_2d73_vt_select_2_merged_bit_select_c = i_narrow_10_i69_stencil_2d73_vt_select_2_merged_bit_select_in[6:5];

    // i_narrow_10_i69_stencil_2d73_vt_join(BITJOIN,97)@12
    assign i_narrow_10_i69_stencil_2d73_vt_join_q = {i_narrow_10_i69_stencil_2d73_vt_const_15_q, i_narrow_10_i69_stencil_2d73_vt_select_2_merged_bit_select_c, i_arrayidx122_stencil_2d102_vt_const_1_q, i_narrow_10_i69_stencil_2d73_vt_select_2_merged_bit_select_b, i_arrayidx122_stencil_2d102_vt_const_1_q};

    // i_cmp13_i_9_i61_stencil_2d67(COMPARE,68)@11
    assign i_cmp13_i_9_i61_stencil_2d67_a = {2'b00, i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i60_stencil_2d0_NO_NAME_x_q};
    assign i_cmp13_i_9_i61_stencil_2d67_b = {2'b00, c_i16_100140_q};
    assign i_cmp13_i_9_i61_stencil_2d67_o = $unsigned(i_cmp13_i_9_i61_stencil_2d67_a) - $unsigned(i_cmp13_i_9_i61_stencil_2d67_b);
    assign i_cmp13_i_9_i61_stencil_2d67_c[0] = i_cmp13_i_9_i61_stencil_2d67_o[17];

    // i_narrow_9_i62_stencil_2d68(MUX,191)@11
    assign i_narrow_9_i62_stencil_2d68_s = i_cmp13_i_9_i61_stencil_2d67_c;
    always @(i_narrow_9_i62_stencil_2d68_s or c_i16_100140_q or c_i16_019_q)
    begin
        unique case (i_narrow_9_i62_stencil_2d68_s)
            1'b0 : i_narrow_9_i62_stencil_2d68_q = c_i16_100140_q;
            1'b1 : i_narrow_9_i62_stencil_2d68_q = c_i16_019_q;
            default : i_narrow_9_i62_stencil_2d68_q = 16'b0;
        endcase
    end

    // i_narrow_9_i62_stencil_2d68_vt_select_2_merged_bit_select(BITSELECT,475)@11
    assign i_narrow_9_i62_stencil_2d68_vt_select_2_merged_bit_select_in = i_narrow_9_i62_stencil_2d68_q[6:0];
    assign i_narrow_9_i62_stencil_2d68_vt_select_2_merged_bit_select_b = i_narrow_9_i62_stencil_2d68_vt_select_2_merged_bit_select_in[2:2];
    assign i_narrow_9_i62_stencil_2d68_vt_select_2_merged_bit_select_c = i_narrow_9_i62_stencil_2d68_vt_select_2_merged_bit_select_in[6:5];

    // i_narrow_9_i62_stencil_2d68_vt_join(BITJOIN,195)@11
    assign i_narrow_9_i62_stencil_2d68_vt_join_q = {i_narrow_10_i69_stencil_2d73_vt_const_15_q, i_narrow_9_i62_stencil_2d68_vt_select_2_merged_bit_select_c, i_arrayidx122_stencil_2d102_vt_const_1_q, i_narrow_9_i62_stencil_2d68_vt_select_2_merged_bit_select_b, i_arrayidx122_stencil_2d102_vt_const_1_q};

    // i_cmp13_i_8_i54_stencil_2d62(COMPARE,67)@10
    assign i_cmp13_i_8_i54_stencil_2d62_a = {2'b00, i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i53_stencil_2d0_NO_NAME_x_q};
    assign i_cmp13_i_8_i54_stencil_2d62_b = {2'b00, c_i16_100140_q};
    assign i_cmp13_i_8_i54_stencil_2d62_o = $unsigned(i_cmp13_i_8_i54_stencil_2d62_a) - $unsigned(i_cmp13_i_8_i54_stencil_2d62_b);
    assign i_cmp13_i_8_i54_stencil_2d62_c[0] = i_cmp13_i_8_i54_stencil_2d62_o[17];

    // i_narrow_8_i55_stencil_2d63(MUX,184)@10
    assign i_narrow_8_i55_stencil_2d63_s = i_cmp13_i_8_i54_stencil_2d62_c;
    always @(i_narrow_8_i55_stencil_2d63_s or c_i16_100140_q or c_i16_019_q)
    begin
        unique case (i_narrow_8_i55_stencil_2d63_s)
            1'b0 : i_narrow_8_i55_stencil_2d63_q = c_i16_100140_q;
            1'b1 : i_narrow_8_i55_stencil_2d63_q = c_i16_019_q;
            default : i_narrow_8_i55_stencil_2d63_q = 16'b0;
        endcase
    end

    // i_narrow_8_i55_stencil_2d63_vt_select_2_merged_bit_select(BITSELECT,474)@10
    assign i_narrow_8_i55_stencil_2d63_vt_select_2_merged_bit_select_in = i_narrow_8_i55_stencil_2d63_q[6:0];
    assign i_narrow_8_i55_stencil_2d63_vt_select_2_merged_bit_select_b = i_narrow_8_i55_stencil_2d63_vt_select_2_merged_bit_select_in[2:2];
    assign i_narrow_8_i55_stencil_2d63_vt_select_2_merged_bit_select_c = i_narrow_8_i55_stencil_2d63_vt_select_2_merged_bit_select_in[6:5];

    // i_narrow_8_i55_stencil_2d63_vt_join(BITJOIN,188)@10
    assign i_narrow_8_i55_stencil_2d63_vt_join_q = {i_narrow_10_i69_stencil_2d73_vt_const_15_q, i_narrow_8_i55_stencil_2d63_vt_select_2_merged_bit_select_c, i_arrayidx122_stencil_2d102_vt_const_1_q, i_narrow_8_i55_stencil_2d63_vt_select_2_merged_bit_select_b, i_arrayidx122_stencil_2d102_vt_const_1_q};

    // i_cmp13_i_7_i47_stencil_2d57(COMPARE,66)@9
    assign i_cmp13_i_7_i47_stencil_2d57_a = {2'b00, i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i46_stencil_2d0_NO_NAME_x_q};
    assign i_cmp13_i_7_i47_stencil_2d57_b = {2'b00, c_i16_100140_q};
    assign i_cmp13_i_7_i47_stencil_2d57_o = $unsigned(i_cmp13_i_7_i47_stencil_2d57_a) - $unsigned(i_cmp13_i_7_i47_stencil_2d57_b);
    assign i_cmp13_i_7_i47_stencil_2d57_c[0] = i_cmp13_i_7_i47_stencil_2d57_o[17];

    // i_narrow_7_i48_stencil_2d58(MUX,177)@9
    assign i_narrow_7_i48_stencil_2d58_s = i_cmp13_i_7_i47_stencil_2d57_c;
    always @(i_narrow_7_i48_stencil_2d58_s or c_i16_100140_q or c_i16_019_q)
    begin
        unique case (i_narrow_7_i48_stencil_2d58_s)
            1'b0 : i_narrow_7_i48_stencil_2d58_q = c_i16_100140_q;
            1'b1 : i_narrow_7_i48_stencil_2d58_q = c_i16_019_q;
            default : i_narrow_7_i48_stencil_2d58_q = 16'b0;
        endcase
    end

    // i_narrow_7_i48_stencil_2d58_vt_select_2_merged_bit_select(BITSELECT,473)@9
    assign i_narrow_7_i48_stencil_2d58_vt_select_2_merged_bit_select_in = i_narrow_7_i48_stencil_2d58_q[6:0];
    assign i_narrow_7_i48_stencil_2d58_vt_select_2_merged_bit_select_b = i_narrow_7_i48_stencil_2d58_vt_select_2_merged_bit_select_in[2:2];
    assign i_narrow_7_i48_stencil_2d58_vt_select_2_merged_bit_select_c = i_narrow_7_i48_stencil_2d58_vt_select_2_merged_bit_select_in[6:5];

    // i_narrow_7_i48_stencil_2d58_vt_join(BITJOIN,181)@9
    assign i_narrow_7_i48_stencil_2d58_vt_join_q = {i_narrow_10_i69_stencil_2d73_vt_const_15_q, i_narrow_7_i48_stencil_2d58_vt_select_2_merged_bit_select_c, i_arrayidx122_stencil_2d102_vt_const_1_q, i_narrow_7_i48_stencil_2d58_vt_select_2_merged_bit_select_b, i_arrayidx122_stencil_2d102_vt_const_1_q};

    // i_cmp13_i_6_i40_stencil_2d52(COMPARE,65)@8
    assign i_cmp13_i_6_i40_stencil_2d52_a = {2'b00, i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i39_stencil_2d0_NO_NAME_x_q};
    assign i_cmp13_i_6_i40_stencil_2d52_b = {2'b00, c_i16_100140_q};
    assign i_cmp13_i_6_i40_stencil_2d52_o = $unsigned(i_cmp13_i_6_i40_stencil_2d52_a) - $unsigned(i_cmp13_i_6_i40_stencil_2d52_b);
    assign i_cmp13_i_6_i40_stencil_2d52_c[0] = i_cmp13_i_6_i40_stencil_2d52_o[17];

    // i_narrow_6_i41_stencil_2d53(MUX,170)@8
    assign i_narrow_6_i41_stencil_2d53_s = i_cmp13_i_6_i40_stencil_2d52_c;
    always @(i_narrow_6_i41_stencil_2d53_s or c_i16_100140_q or c_i16_019_q)
    begin
        unique case (i_narrow_6_i41_stencil_2d53_s)
            1'b0 : i_narrow_6_i41_stencil_2d53_q = c_i16_100140_q;
            1'b1 : i_narrow_6_i41_stencil_2d53_q = c_i16_019_q;
            default : i_narrow_6_i41_stencil_2d53_q = 16'b0;
        endcase
    end

    // i_narrow_6_i41_stencil_2d53_vt_select_2_merged_bit_select(BITSELECT,472)@8
    assign i_narrow_6_i41_stencil_2d53_vt_select_2_merged_bit_select_in = i_narrow_6_i41_stencil_2d53_q[6:0];
    assign i_narrow_6_i41_stencil_2d53_vt_select_2_merged_bit_select_b = i_narrow_6_i41_stencil_2d53_vt_select_2_merged_bit_select_in[2:2];
    assign i_narrow_6_i41_stencil_2d53_vt_select_2_merged_bit_select_c = i_narrow_6_i41_stencil_2d53_vt_select_2_merged_bit_select_in[6:5];

    // i_narrow_6_i41_stencil_2d53_vt_join(BITJOIN,174)@8
    assign i_narrow_6_i41_stencil_2d53_vt_join_q = {i_narrow_10_i69_stencil_2d73_vt_const_15_q, i_narrow_6_i41_stencil_2d53_vt_select_2_merged_bit_select_c, i_arrayidx122_stencil_2d102_vt_const_1_q, i_narrow_6_i41_stencil_2d53_vt_select_2_merged_bit_select_b, i_arrayidx122_stencil_2d102_vt_const_1_q};

    // i_cmp13_i_5_i33_stencil_2d47(COMPARE,64)@7
    assign i_cmp13_i_5_i33_stencil_2d47_a = {2'b00, i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i32_stencil_2d0_NO_NAME_x_q};
    assign i_cmp13_i_5_i33_stencil_2d47_b = {2'b00, c_i16_100140_q};
    assign i_cmp13_i_5_i33_stencil_2d47_o = $unsigned(i_cmp13_i_5_i33_stencil_2d47_a) - $unsigned(i_cmp13_i_5_i33_stencil_2d47_b);
    assign i_cmp13_i_5_i33_stencil_2d47_c[0] = i_cmp13_i_5_i33_stencil_2d47_o[17];

    // i_narrow_5_i34_stencil_2d48(MUX,163)@7
    assign i_narrow_5_i34_stencil_2d48_s = i_cmp13_i_5_i33_stencil_2d47_c;
    always @(i_narrow_5_i34_stencil_2d48_s or c_i16_100140_q or c_i16_019_q)
    begin
        unique case (i_narrow_5_i34_stencil_2d48_s)
            1'b0 : i_narrow_5_i34_stencil_2d48_q = c_i16_100140_q;
            1'b1 : i_narrow_5_i34_stencil_2d48_q = c_i16_019_q;
            default : i_narrow_5_i34_stencil_2d48_q = 16'b0;
        endcase
    end

    // i_narrow_5_i34_stencil_2d48_vt_select_2_merged_bit_select(BITSELECT,471)@7
    assign i_narrow_5_i34_stencil_2d48_vt_select_2_merged_bit_select_in = i_narrow_5_i34_stencil_2d48_q[6:0];
    assign i_narrow_5_i34_stencil_2d48_vt_select_2_merged_bit_select_b = i_narrow_5_i34_stencil_2d48_vt_select_2_merged_bit_select_in[2:2];
    assign i_narrow_5_i34_stencil_2d48_vt_select_2_merged_bit_select_c = i_narrow_5_i34_stencil_2d48_vt_select_2_merged_bit_select_in[6:5];

    // i_narrow_5_i34_stencil_2d48_vt_join(BITJOIN,167)@7
    assign i_narrow_5_i34_stencil_2d48_vt_join_q = {i_narrow_10_i69_stencil_2d73_vt_const_15_q, i_narrow_5_i34_stencil_2d48_vt_select_2_merged_bit_select_c, i_arrayidx122_stencil_2d102_vt_const_1_q, i_narrow_5_i34_stencil_2d48_vt_select_2_merged_bit_select_b, i_arrayidx122_stencil_2d102_vt_const_1_q};

    // i_cmp13_i_4_i26_stencil_2d42(COMPARE,63)@6
    assign i_cmp13_i_4_i26_stencil_2d42_a = {2'b00, i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i25_stencil_2d0_NO_NAME_x_q};
    assign i_cmp13_i_4_i26_stencil_2d42_b = {2'b00, c_i16_100140_q};
    assign i_cmp13_i_4_i26_stencil_2d42_o = $unsigned(i_cmp13_i_4_i26_stencil_2d42_a) - $unsigned(i_cmp13_i_4_i26_stencil_2d42_b);
    assign i_cmp13_i_4_i26_stencil_2d42_c[0] = i_cmp13_i_4_i26_stencil_2d42_o[17];

    // i_narrow_4_i27_stencil_2d43(MUX,156)@6
    assign i_narrow_4_i27_stencil_2d43_s = i_cmp13_i_4_i26_stencil_2d42_c;
    always @(i_narrow_4_i27_stencil_2d43_s or c_i16_100140_q or c_i16_019_q)
    begin
        unique case (i_narrow_4_i27_stencil_2d43_s)
            1'b0 : i_narrow_4_i27_stencil_2d43_q = c_i16_100140_q;
            1'b1 : i_narrow_4_i27_stencil_2d43_q = c_i16_019_q;
            default : i_narrow_4_i27_stencil_2d43_q = 16'b0;
        endcase
    end

    // i_narrow_4_i27_stencil_2d43_vt_select_2_merged_bit_select(BITSELECT,470)@6
    assign i_narrow_4_i27_stencil_2d43_vt_select_2_merged_bit_select_in = i_narrow_4_i27_stencil_2d43_q[6:0];
    assign i_narrow_4_i27_stencil_2d43_vt_select_2_merged_bit_select_b = i_narrow_4_i27_stencil_2d43_vt_select_2_merged_bit_select_in[2:2];
    assign i_narrow_4_i27_stencil_2d43_vt_select_2_merged_bit_select_c = i_narrow_4_i27_stencil_2d43_vt_select_2_merged_bit_select_in[6:5];

    // i_narrow_4_i27_stencil_2d43_vt_join(BITJOIN,160)@6
    assign i_narrow_4_i27_stencil_2d43_vt_join_q = {i_narrow_10_i69_stencil_2d73_vt_const_15_q, i_narrow_4_i27_stencil_2d43_vt_select_2_merged_bit_select_c, i_arrayidx122_stencil_2d102_vt_const_1_q, i_narrow_4_i27_stencil_2d43_vt_select_2_merged_bit_select_b, i_arrayidx122_stencil_2d102_vt_const_1_q};

    // i_cmp13_i_3_i19_stencil_2d37(COMPARE,62)@5
    assign i_cmp13_i_3_i19_stencil_2d37_a = {2'b00, i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i18_stencil_2d0_NO_NAME_x_q};
    assign i_cmp13_i_3_i19_stencil_2d37_b = {2'b00, c_i16_100140_q};
    assign i_cmp13_i_3_i19_stencil_2d37_o = $unsigned(i_cmp13_i_3_i19_stencil_2d37_a) - $unsigned(i_cmp13_i_3_i19_stencil_2d37_b);
    assign i_cmp13_i_3_i19_stencil_2d37_c[0] = i_cmp13_i_3_i19_stencil_2d37_o[17];

    // i_narrow_3_i20_stencil_2d38(MUX,149)@5
    assign i_narrow_3_i20_stencil_2d38_s = i_cmp13_i_3_i19_stencil_2d37_c;
    always @(i_narrow_3_i20_stencil_2d38_s or c_i16_100140_q or c_i16_019_q)
    begin
        unique case (i_narrow_3_i20_stencil_2d38_s)
            1'b0 : i_narrow_3_i20_stencil_2d38_q = c_i16_100140_q;
            1'b1 : i_narrow_3_i20_stencil_2d38_q = c_i16_019_q;
            default : i_narrow_3_i20_stencil_2d38_q = 16'b0;
        endcase
    end

    // i_narrow_3_i20_stencil_2d38_vt_select_2_merged_bit_select(BITSELECT,469)@5
    assign i_narrow_3_i20_stencil_2d38_vt_select_2_merged_bit_select_in = i_narrow_3_i20_stencil_2d38_q[6:0];
    assign i_narrow_3_i20_stencil_2d38_vt_select_2_merged_bit_select_b = i_narrow_3_i20_stencil_2d38_vt_select_2_merged_bit_select_in[2:2];
    assign i_narrow_3_i20_stencil_2d38_vt_select_2_merged_bit_select_c = i_narrow_3_i20_stencil_2d38_vt_select_2_merged_bit_select_in[6:5];

    // i_narrow_3_i20_stencil_2d38_vt_join(BITJOIN,153)@5
    assign i_narrow_3_i20_stencil_2d38_vt_join_q = {i_narrow_10_i69_stencil_2d73_vt_const_15_q, i_narrow_3_i20_stencil_2d38_vt_select_2_merged_bit_select_c, i_arrayidx122_stencil_2d102_vt_const_1_q, i_narrow_3_i20_stencil_2d38_vt_select_2_merged_bit_select_b, i_arrayidx122_stencil_2d102_vt_const_1_q};

    // i_cmp13_i_2_i12_stencil_2d32(COMPARE,61)@4
    assign i_cmp13_i_2_i12_stencil_2d32_a = {2'b00, redist17_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i11_stencil_2d0_NO_NAME_x_q_1_q};
    assign i_cmp13_i_2_i12_stencil_2d32_b = {2'b00, c_i16_100140_q};
    assign i_cmp13_i_2_i12_stencil_2d32_o = $unsigned(i_cmp13_i_2_i12_stencil_2d32_a) - $unsigned(i_cmp13_i_2_i12_stencil_2d32_b);
    assign i_cmp13_i_2_i12_stencil_2d32_c[0] = i_cmp13_i_2_i12_stencil_2d32_o[17];

    // i_narrow_2_i13_stencil_2d33(MUX,142)@4
    assign i_narrow_2_i13_stencil_2d33_s = i_cmp13_i_2_i12_stencil_2d32_c;
    always @(i_narrow_2_i13_stencil_2d33_s or c_i16_100140_q or c_i16_019_q)
    begin
        unique case (i_narrow_2_i13_stencil_2d33_s)
            1'b0 : i_narrow_2_i13_stencil_2d33_q = c_i16_100140_q;
            1'b1 : i_narrow_2_i13_stencil_2d33_q = c_i16_019_q;
            default : i_narrow_2_i13_stencil_2d33_q = 16'b0;
        endcase
    end

    // i_narrow_2_i13_stencil_2d33_vt_select_2_merged_bit_select(BITSELECT,468)@4
    assign i_narrow_2_i13_stencil_2d33_vt_select_2_merged_bit_select_in = i_narrow_2_i13_stencil_2d33_q[6:0];
    assign i_narrow_2_i13_stencil_2d33_vt_select_2_merged_bit_select_b = i_narrow_2_i13_stencil_2d33_vt_select_2_merged_bit_select_in[2:2];
    assign i_narrow_2_i13_stencil_2d33_vt_select_2_merged_bit_select_c = i_narrow_2_i13_stencil_2d33_vt_select_2_merged_bit_select_in[6:5];

    // i_narrow_2_i13_stencil_2d33_vt_join(BITJOIN,146)@4
    assign i_narrow_2_i13_stencil_2d33_vt_join_q = {i_narrow_10_i69_stencil_2d73_vt_const_15_q, i_narrow_2_i13_stencil_2d33_vt_select_2_merged_bit_select_c, i_arrayidx122_stencil_2d102_vt_const_1_q, i_narrow_2_i13_stencil_2d33_vt_select_2_merged_bit_select_b, i_arrayidx122_stencil_2d102_vt_const_1_q};

    // i_cmp13_i_1_i5_stencil_2d27(COMPARE,60)@3
    assign i_cmp13_i_1_i5_stencil_2d27_a = {2'b00, i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i4_stencil_2d0_NO_NAME_x_q};
    assign i_cmp13_i_1_i5_stencil_2d27_b = {2'b00, c_i16_100140_q};
    assign i_cmp13_i_1_i5_stencil_2d27_o = $unsigned(i_cmp13_i_1_i5_stencil_2d27_a) - $unsigned(i_cmp13_i_1_i5_stencil_2d27_b);
    assign i_cmp13_i_1_i5_stencil_2d27_c[0] = i_cmp13_i_1_i5_stencil_2d27_o[17];

    // i_narrow_1_i6_stencil_2d28(MUX,135)@3
    assign i_narrow_1_i6_stencil_2d28_s = i_cmp13_i_1_i5_stencil_2d27_c;
    always @(i_narrow_1_i6_stencil_2d28_s or c_i16_100140_q or c_i16_019_q)
    begin
        unique case (i_narrow_1_i6_stencil_2d28_s)
            1'b0 : i_narrow_1_i6_stencil_2d28_q = c_i16_100140_q;
            1'b1 : i_narrow_1_i6_stencil_2d28_q = c_i16_019_q;
            default : i_narrow_1_i6_stencil_2d28_q = 16'b0;
        endcase
    end

    // i_narrow_1_i6_stencil_2d28_vt_select_2_merged_bit_select(BITSELECT,467)@3
    assign i_narrow_1_i6_stencil_2d28_vt_select_2_merged_bit_select_in = i_narrow_1_i6_stencil_2d28_q[6:0];
    assign i_narrow_1_i6_stencil_2d28_vt_select_2_merged_bit_select_b = i_narrow_1_i6_stencil_2d28_vt_select_2_merged_bit_select_in[2:2];
    assign i_narrow_1_i6_stencil_2d28_vt_select_2_merged_bit_select_c = i_narrow_1_i6_stencil_2d28_vt_select_2_merged_bit_select_in[6:5];

    // i_narrow_1_i6_stencil_2d28_vt_join(BITJOIN,139)@3
    assign i_narrow_1_i6_stencil_2d28_vt_join_q = {i_narrow_10_i69_stencil_2d73_vt_const_15_q, i_narrow_1_i6_stencil_2d28_vt_select_2_merged_bit_select_c, i_arrayidx122_stencil_2d102_vt_const_1_q, i_narrow_1_i6_stencil_2d28_vt_select_2_merged_bit_select_b, i_arrayidx122_stencil_2d102_vt_const_1_q};

    // i_unnamed_stencil_2d23_vt_const_15(CONSTANT,233)
    assign i_unnamed_stencil_2d23_vt_const_15_q = $unsigned(15'b000000000000000);

    // rightShiftStage3Idx1Pad8_uid456_dupName_5_i_unnamed_stencil_2d0_shift_x(CONSTANT,455)
    assign rightShiftStage3Idx1Pad8_uid456_dupName_5_i_unnamed_stencil_2d0_shift_x_q = $unsigned(8'b00000000);

    // rightShiftStage3Idx1Rng8_uid455_dupName_5_i_unnamed_stencil_2d0_shift_x(BITSELECT,454)@3
    assign rightShiftStage3Idx1Rng8_uid455_dupName_5_i_unnamed_stencil_2d0_shift_x_b = rightShiftStage2_uid454_dupName_5_i_unnamed_stencil_2d0_shift_x_q[15:8];

    // rightShiftStage3Idx1_uid457_dupName_5_i_unnamed_stencil_2d0_shift_x(BITJOIN,456)@3
    assign rightShiftStage3Idx1_uid457_dupName_5_i_unnamed_stencil_2d0_shift_x_q = {rightShiftStage3Idx1Pad8_uid456_dupName_5_i_unnamed_stencil_2d0_shift_x_q, rightShiftStage3Idx1Rng8_uid455_dupName_5_i_unnamed_stencil_2d0_shift_x_b};

    // leftShiftStage1Idx1Pad4_uid432_dupName_4_i_unnamed_stencil_2d0_shift_x(CONSTANT,431)
    assign leftShiftStage1Idx1Pad4_uid432_dupName_4_i_unnamed_stencil_2d0_shift_x_q = $unsigned(4'b0000);

    // rightShiftStage2Idx1Rng4_uid450_dupName_5_i_unnamed_stencil_2d0_shift_x(BITSELECT,449)@3
    assign rightShiftStage2Idx1Rng4_uid450_dupName_5_i_unnamed_stencil_2d0_shift_x_b = rightShiftStage1_uid449_dupName_5_i_unnamed_stencil_2d0_shift_x_q[15:4];

    // rightShiftStage2Idx1_uid452_dupName_5_i_unnamed_stencil_2d0_shift_x(BITJOIN,451)@3
    assign rightShiftStage2Idx1_uid452_dupName_5_i_unnamed_stencil_2d0_shift_x_q = {leftShiftStage1Idx1Pad4_uid432_dupName_4_i_unnamed_stencil_2d0_shift_x_q, rightShiftStage2Idx1Rng4_uid450_dupName_5_i_unnamed_stencil_2d0_shift_x_b};

    // rightShiftStage1Idx1Rng2_uid445_dupName_5_i_unnamed_stencil_2d0_shift_x(BITSELECT,444)@3
    assign rightShiftStage1Idx1Rng2_uid445_dupName_5_i_unnamed_stencil_2d0_shift_x_b = rightShiftStage0_uid444_dupName_5_i_unnamed_stencil_2d0_shift_x_q[15:2];

    // rightShiftStage1Idx1_uid447_dupName_5_i_unnamed_stencil_2d0_shift_x(BITJOIN,446)@3
    assign rightShiftStage1Idx1_uid447_dupName_5_i_unnamed_stencil_2d0_shift_x_q = {i_arrayidx122_stencil_2d102_vt_const_1_q, rightShiftStage1Idx1Rng2_uid445_dupName_5_i_unnamed_stencil_2d0_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid440_dupName_5_i_unnamed_stencil_2d0_shift_x(BITSELECT,439)@3
    assign rightShiftStage0Idx1Rng1_uid440_dupName_5_i_unnamed_stencil_2d0_shift_x_b = i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q[15:1];

    // rightShiftStage0Idx1_uid442_dupName_5_i_unnamed_stencil_2d0_shift_x(BITJOIN,441)@3
    assign rightShiftStage0Idx1_uid442_dupName_5_i_unnamed_stencil_2d0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid440_dupName_5_i_unnamed_stencil_2d0_shift_x_b};

    // rightShiftStage0_uid444_dupName_5_i_unnamed_stencil_2d0_shift_x(MUX,443)@3
    assign rightShiftStage0_uid444_dupName_5_i_unnamed_stencil_2d0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid444_dupName_5_i_unnamed_stencil_2d0_shift_x_s or i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q or rightShiftStage0Idx1_uid442_dupName_5_i_unnamed_stencil_2d0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid444_dupName_5_i_unnamed_stencil_2d0_shift_x_s)
            1'b0 : rightShiftStage0_uid444_dupName_5_i_unnamed_stencil_2d0_shift_x_q = i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q;
            1'b1 : rightShiftStage0_uid444_dupName_5_i_unnamed_stencil_2d0_shift_x_q = rightShiftStage0Idx1_uid442_dupName_5_i_unnamed_stencil_2d0_shift_x_q;
            default : rightShiftStage0_uid444_dupName_5_i_unnamed_stencil_2d0_shift_x_q = 16'b0;
        endcase
    end

    // rightShiftStage1_uid449_dupName_5_i_unnamed_stencil_2d0_shift_x(MUX,448)@3
    assign rightShiftStage1_uid449_dupName_5_i_unnamed_stencil_2d0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid449_dupName_5_i_unnamed_stencil_2d0_shift_x_s or rightShiftStage0_uid444_dupName_5_i_unnamed_stencil_2d0_shift_x_q or rightShiftStage1Idx1_uid447_dupName_5_i_unnamed_stencil_2d0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid449_dupName_5_i_unnamed_stencil_2d0_shift_x_s)
            1'b0 : rightShiftStage1_uid449_dupName_5_i_unnamed_stencil_2d0_shift_x_q = rightShiftStage0_uid444_dupName_5_i_unnamed_stencil_2d0_shift_x_q;
            1'b1 : rightShiftStage1_uid449_dupName_5_i_unnamed_stencil_2d0_shift_x_q = rightShiftStage1Idx1_uid447_dupName_5_i_unnamed_stencil_2d0_shift_x_q;
            default : rightShiftStage1_uid449_dupName_5_i_unnamed_stencil_2d0_shift_x_q = 16'b0;
        endcase
    end

    // rightShiftStage2_uid454_dupName_5_i_unnamed_stencil_2d0_shift_x(MUX,453)@3
    assign rightShiftStage2_uid454_dupName_5_i_unnamed_stencil_2d0_shift_x_s = VCC_q;
    always @(rightShiftStage2_uid454_dupName_5_i_unnamed_stencil_2d0_shift_x_s or rightShiftStage1_uid449_dupName_5_i_unnamed_stencil_2d0_shift_x_q or rightShiftStage2Idx1_uid452_dupName_5_i_unnamed_stencil_2d0_shift_x_q)
    begin
        unique case (rightShiftStage2_uid454_dupName_5_i_unnamed_stencil_2d0_shift_x_s)
            1'b0 : rightShiftStage2_uid454_dupName_5_i_unnamed_stencil_2d0_shift_x_q = rightShiftStage1_uid449_dupName_5_i_unnamed_stencil_2d0_shift_x_q;
            1'b1 : rightShiftStage2_uid454_dupName_5_i_unnamed_stencil_2d0_shift_x_q = rightShiftStage2Idx1_uid452_dupName_5_i_unnamed_stencil_2d0_shift_x_q;
            default : rightShiftStage2_uid454_dupName_5_i_unnamed_stencil_2d0_shift_x_q = 16'b0;
        endcase
    end

    // rightShiftStage3_uid459_dupName_5_i_unnamed_stencil_2d0_shift_x(MUX,458)@3
    assign rightShiftStage3_uid459_dupName_5_i_unnamed_stencil_2d0_shift_x_s = VCC_q;
    always @(rightShiftStage3_uid459_dupName_5_i_unnamed_stencil_2d0_shift_x_s or rightShiftStage2_uid454_dupName_5_i_unnamed_stencil_2d0_shift_x_q or rightShiftStage3Idx1_uid457_dupName_5_i_unnamed_stencil_2d0_shift_x_q)
    begin
        unique case (rightShiftStage3_uid459_dupName_5_i_unnamed_stencil_2d0_shift_x_s)
            1'b0 : rightShiftStage3_uid459_dupName_5_i_unnamed_stencil_2d0_shift_x_q = rightShiftStage2_uid454_dupName_5_i_unnamed_stencil_2d0_shift_x_q;
            1'b1 : rightShiftStage3_uid459_dupName_5_i_unnamed_stencil_2d0_shift_x_q = rightShiftStage3Idx1_uid457_dupName_5_i_unnamed_stencil_2d0_shift_x_q;
            default : rightShiftStage3_uid459_dupName_5_i_unnamed_stencil_2d0_shift_x_q = 16'b0;
        endcase
    end

    // i_unnamed_stencil_2d23_vt_select_0(BITSELECT,235)@3
    assign i_unnamed_stencil_2d23_vt_select_0_b = rightShiftStage3_uid459_dupName_5_i_unnamed_stencil_2d0_shift_x_q[0:0];

    // i_unnamed_stencil_2d23_vt_join(BITJOIN,234)@3
    assign i_unnamed_stencil_2d23_vt_join_q = {i_unnamed_stencil_2d23_vt_const_15_q, i_unnamed_stencil_2d23_vt_select_0_b};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i4_stencil_2d0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,298)@3
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i4_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_225_q, i_unnamed_stencil_2d23_vt_join_q, i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i4_stencil_2d0_NO_NAME_x(CHOOSEBITS,297)@3
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i4_stencil_2d0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i4_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i4_stencil_2d0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i4_stencil_2d0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i4_stencil_2d0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i4_stencil_2d0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i4_stencil_2d0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i4_stencil_2d0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i4_stencil_2d0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i4_stencil_2d0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i4_stencil_2d0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i4_stencil_2d0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i4_stencil_2d0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i4_stencil_2d0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i4_stencil_2d0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i4_stencil_2d0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i4_stencil_2d0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i4_stencil_2d0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i4_stencil_2d0_NO_NAME_x_a[14:14]};

    // i_sub16_i_1_i7_stencil_2d29(SUB,214)@3
    assign i_sub16_i_1_i7_stencil_2d29_a = {1'b0, i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i4_stencil_2d0_NO_NAME_x_q};
    assign i_sub16_i_1_i7_stencil_2d29_b = {1'b0, i_narrow_1_i6_stencil_2d28_vt_join_q};
    assign i_sub16_i_1_i7_stencil_2d29_o = $unsigned(i_sub16_i_1_i7_stencil_2d29_a) - $unsigned(i_sub16_i_1_i7_stencil_2d29_b);
    assign i_sub16_i_1_i7_stencil_2d29_q = i_sub16_i_1_i7_stencil_2d29_o[16:0];

    // bgTrunc_i_sub16_i_1_i7_stencil_2d29_sel_x(BITSELECT,249)@3
    assign bgTrunc_i_sub16_i_1_i7_stencil_2d29_sel_x_b = $unsigned(i_sub16_i_1_i7_stencil_2d29_q[15:0]);

    // leftShiftStage1Idx1Rng2_uid420_dupName_3_i_unnamed_stencil_2d0_shift_x(BITSELECT,419)@2
    assign leftShiftStage1Idx1Rng2_uid420_dupName_3_i_unnamed_stencil_2d0_shift_x_in = leftShiftStage0_uid410_dupName_2_i_unnamed_stencil_2d0_shift_x_q[13:0];
    assign leftShiftStage1Idx1Rng2_uid420_dupName_3_i_unnamed_stencil_2d0_shift_x_b = leftShiftStage1Idx1Rng2_uid420_dupName_3_i_unnamed_stencil_2d0_shift_x_in[13:0];

    // leftShiftStage1Idx1_uid421_dupName_3_i_unnamed_stencil_2d0_shift_x(BITJOIN,420)@2
    assign leftShiftStage1Idx1_uid421_dupName_3_i_unnamed_stencil_2d0_shift_x_q = {leftShiftStage1Idx1Rng2_uid420_dupName_3_i_unnamed_stencil_2d0_shift_x_b, i_arrayidx122_stencil_2d102_vt_const_1_q};

    // leftShiftStage0Idx1Rng1_uid407_dupName_2_i_unnamed_stencil_2d0_shift_x(BITSELECT,406)@2
    assign leftShiftStage0Idx1Rng1_uid407_dupName_2_i_unnamed_stencil_2d0_shift_x_in = i_unnamed_stencil_2d13_sel_x_b[14:0];
    assign leftShiftStage0Idx1Rng1_uid407_dupName_2_i_unnamed_stencil_2d0_shift_x_b = leftShiftStage0Idx1Rng1_uid407_dupName_2_i_unnamed_stencil_2d0_shift_x_in[14:0];

    // leftShiftStage0Idx1_uid408_dupName_2_i_unnamed_stencil_2d0_shift_x(BITJOIN,407)@2
    assign leftShiftStage0Idx1_uid408_dupName_2_i_unnamed_stencil_2d0_shift_x_q = {leftShiftStage0Idx1Rng1_uid407_dupName_2_i_unnamed_stencil_2d0_shift_x_b, GND_q};

    // valid_fanout_reg4(REG,354)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg6(REG,356)@1 + 1
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

    // c_i32_1141(CONSTANT,39)
    assign c_i32_1141_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc14_stencil_2d104(ADD,77)@2
    assign i_inc14_stencil_2d104_a = {1'b0, i_llvm_fpga_pop_i32_j4_037_pop21_stencil_2d12_out_data_out};
    assign i_inc14_stencil_2d104_b = {1'b0, c_i32_1141_q};
    assign i_inc14_stencil_2d104_o = $unsigned(i_inc14_stencil_2d104_a) + $unsigned(i_inc14_stencil_2d104_b);
    assign i_inc14_stencil_2d104_q = i_inc14_stencil_2d104_o[32:0];

    // bgTrunc_i_inc14_stencil_2d104_sel_x(BITSELECT,242)@2
    assign bgTrunc_i_inc14_stencil_2d104_sel_x_b = i_inc14_stencil_2d104_q[31:0];

    // i_llvm_fpga_push_i32_j4_037_push21_stencil_2d105(BLACKBOX,88)@2
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    stencil_2d_i_llvm_fpga_push_i32_j4_037_push21_0 thei_llvm_fpga_push_i32_j4_037_push21_stencil_2d105 (
        .in_data_in(bgTrunc_i_inc14_stencil_2d104_sel_x_b),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_i32_j4_037_pop21_stencil_2d12_out_feedback_stall_out_21),
        .in_keep_going48(redist33_i_llvm_fpga_pipeline_keep_going48_stencil_2d6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i32_j4_037_push21_stencil_2d105_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i32_j4_037_push21_stencil_2d105_out_feedback_valid_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_0133(CONSTANT,38)
    assign c_i32_0133_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_j4_037_pop21_stencil_2d12(BLACKBOX,82)@2
    // out out_feedback_stall_out_21@20000000
    stencil_2d_i_llvm_fpga_pop_i32_j4_037_pop21_0 thei_llvm_fpga_pop_i32_j4_037_pop21_stencil_2d12 (
        .in_data_in(c_i32_0133_q),
        .in_dir(redist12_sync_together159_aunroll_x_in_c0_eni1165_1_tpl_1_q),
        .in_feedback_in_21(i_llvm_fpga_push_i32_j4_037_push21_stencil_2d105_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_i32_j4_037_push21_stencil_2d105_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_j4_037_pop21_stencil_2d12_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i32_j4_037_pop21_stencil_2d12_out_feedback_stall_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_stencil_2d13_sel_x(BITSELECT,329)@2
    assign i_unnamed_stencil_2d13_sel_x_b = i_llvm_fpga_pop_i32_j4_037_pop21_stencil_2d12_out_data_out[15:0];

    // leftShiftStage0_uid410_dupName_2_i_unnamed_stencil_2d0_shift_x(MUX,409)@2
    assign leftShiftStage0_uid410_dupName_2_i_unnamed_stencil_2d0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid410_dupName_2_i_unnamed_stencil_2d0_shift_x_s or i_unnamed_stencil_2d13_sel_x_b or leftShiftStage0Idx1_uid408_dupName_2_i_unnamed_stencil_2d0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid410_dupName_2_i_unnamed_stencil_2d0_shift_x_s)
            1'b0 : leftShiftStage0_uid410_dupName_2_i_unnamed_stencil_2d0_shift_x_q = i_unnamed_stencil_2d13_sel_x_b;
            1'b1 : leftShiftStage0_uid410_dupName_2_i_unnamed_stencil_2d0_shift_x_q = leftShiftStage0Idx1_uid408_dupName_2_i_unnamed_stencil_2d0_shift_x_q;
            default : leftShiftStage0_uid410_dupName_2_i_unnamed_stencil_2d0_shift_x_q = 16'b0;
        endcase
    end

    // leftShiftStage1_uid423_dupName_3_i_unnamed_stencil_2d0_shift_x(MUX,422)@2
    assign leftShiftStage1_uid423_dupName_3_i_unnamed_stencil_2d0_shift_x_s = VCC_q;
    always @(leftShiftStage1_uid423_dupName_3_i_unnamed_stencil_2d0_shift_x_s or leftShiftStage0_uid410_dupName_2_i_unnamed_stencil_2d0_shift_x_q or leftShiftStage1Idx1_uid421_dupName_3_i_unnamed_stencil_2d0_shift_x_q)
    begin
        unique case (leftShiftStage1_uid423_dupName_3_i_unnamed_stencil_2d0_shift_x_s)
            1'b0 : leftShiftStage1_uid423_dupName_3_i_unnamed_stencil_2d0_shift_x_q = leftShiftStage0_uid410_dupName_2_i_unnamed_stencil_2d0_shift_x_q;
            1'b1 : leftShiftStage1_uid423_dupName_3_i_unnamed_stencil_2d0_shift_x_q = leftShiftStage1Idx1_uid421_dupName_3_i_unnamed_stencil_2d0_shift_x_q;
            default : leftShiftStage1_uid423_dupName_3_i_unnamed_stencil_2d0_shift_x_q = 16'b0;
        endcase
    end

    // i_unnamed_stencil_2d15_vt_select_15(BITSELECT,229)@2
    assign i_unnamed_stencil_2d15_vt_select_15_b = leftShiftStage1_uid423_dupName_3_i_unnamed_stencil_2d0_shift_x_q[15:3];

    // i_unnamed_stencil_2d15_vt_const_2(CONSTANT,227)
    assign i_unnamed_stencil_2d15_vt_const_2_q = $unsigned(3'b000);

    // i_unnamed_stencil_2d15_vt_join(BITJOIN,228)@2
    assign i_unnamed_stencil_2d15_vt_join_q = {i_unnamed_stencil_2d15_vt_select_15_b, i_unnamed_stencil_2d15_vt_const_2_q};

    // leftShiftStage1Idx1Rng4_uid433_dupName_4_i_unnamed_stencil_2d0_shift_x(BITSELECT,432)@2
    assign leftShiftStage1Idx1Rng4_uid433_dupName_4_i_unnamed_stencil_2d0_shift_x_in = leftShiftStage0_uid410_dupName_2_i_unnamed_stencil_2d0_shift_x_q[11:0];
    assign leftShiftStage1Idx1Rng4_uid433_dupName_4_i_unnamed_stencil_2d0_shift_x_b = leftShiftStage1Idx1Rng4_uid433_dupName_4_i_unnamed_stencil_2d0_shift_x_in[11:0];

    // leftShiftStage1Idx1_uid434_dupName_4_i_unnamed_stencil_2d0_shift_x(BITJOIN,433)@2
    assign leftShiftStage1Idx1_uid434_dupName_4_i_unnamed_stencil_2d0_shift_x_q = {leftShiftStage1Idx1Rng4_uid433_dupName_4_i_unnamed_stencil_2d0_shift_x_b, leftShiftStage1Idx1Pad4_uid432_dupName_4_i_unnamed_stencil_2d0_shift_x_q};

    // leftShiftStage1_uid436_dupName_4_i_unnamed_stencil_2d0_shift_x(MUX,435)@2
    assign leftShiftStage1_uid436_dupName_4_i_unnamed_stencil_2d0_shift_x_s = VCC_q;
    always @(leftShiftStage1_uid436_dupName_4_i_unnamed_stencil_2d0_shift_x_s or leftShiftStage0_uid410_dupName_2_i_unnamed_stencil_2d0_shift_x_q or leftShiftStage1Idx1_uid434_dupName_4_i_unnamed_stencil_2d0_shift_x_q)
    begin
        unique case (leftShiftStage1_uid436_dupName_4_i_unnamed_stencil_2d0_shift_x_s)
            1'b0 : leftShiftStage1_uid436_dupName_4_i_unnamed_stencil_2d0_shift_x_q = leftShiftStage0_uid410_dupName_2_i_unnamed_stencil_2d0_shift_x_q;
            1'b1 : leftShiftStage1_uid436_dupName_4_i_unnamed_stencil_2d0_shift_x_q = leftShiftStage1Idx1_uid434_dupName_4_i_unnamed_stencil_2d0_shift_x_q;
            default : leftShiftStage1_uid436_dupName_4_i_unnamed_stencil_2d0_shift_x_q = 16'b0;
        endcase
    end

    // i_unnamed_stencil_2d16_vt_select_15(BITSELECT,232)@2
    assign i_unnamed_stencil_2d16_vt_select_15_b = leftShiftStage1_uid436_dupName_4_i_unnamed_stencil_2d0_shift_x_q[15:5];

    // i_unnamed_stencil_2d16_vt_const_4(CONSTANT,230)
    assign i_unnamed_stencil_2d16_vt_const_4_q = $unsigned(5'b00000);

    // i_unnamed_stencil_2d16_vt_join(BITJOIN,231)@2
    assign i_unnamed_stencil_2d16_vt_join_q = {i_unnamed_stencil_2d16_vt_select_15_b, i_unnamed_stencil_2d16_vt_const_4_q};

    // i_unnamed_stencil_2d14_vt_select_15(BITSELECT,226)@2
    assign i_unnamed_stencil_2d14_vt_select_15_b = leftShiftStage0_uid410_dupName_2_i_unnamed_stencil_2d0_shift_x_q[15:1];

    // i_unnamed_stencil_2d14_vt_join(BITJOIN,225)@2
    assign i_unnamed_stencil_2d14_vt_join_q = {i_unnamed_stencil_2d14_vt_select_15_b, GND_q};

    // i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_0_0(ADD,348)@2
    assign i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_0_0_a = {1'b0, i_unnamed_stencil_2d14_vt_join_q};
    assign i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_0_0_b = {1'b0, i_unnamed_stencil_2d16_vt_join_q};
    assign i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_0_0_o = $unsigned(i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_0_0_a) + $unsigned(i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_0_0_b);
    assign i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_0_0_q = i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_0_0_o[16:0];

    // i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0(ADD,349)@2 + 1
    assign i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_a = i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_0_0_q[15:0];
    assign i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_b = i_unnamed_stencil_2d15_vt_join_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_o <= 16'b0;
        end
        else
        begin
            i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_o <= $unsigned(i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_a) + $unsigned(i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_b);
        end
    end
    assign i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q = i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_o[15:0];

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i11_stencil_2d0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,301)@3
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i11_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_225_q, bgTrunc_i_sub16_i_1_i7_stencil_2d29_sel_x_b, i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i11_stencil_2d0_NO_NAME_x(CHOOSEBITS,300)@3
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i11_stencil_2d0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i11_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i11_stencil_2d0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i11_stencil_2d0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i11_stencil_2d0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i11_stencil_2d0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i11_stencil_2d0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i11_stencil_2d0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i11_stencil_2d0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i11_stencil_2d0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i11_stencil_2d0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i11_stencil_2d0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i11_stencil_2d0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i11_stencil_2d0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i11_stencil_2d0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i11_stencil_2d0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i11_stencil_2d0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i11_stencil_2d0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i11_stencil_2d0_NO_NAME_x_a[13:13]};

    // redist17_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i11_stencil_2d0_NO_NAME_x_q_1(DELAY,493)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i11_stencil_2d0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist17_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i11_stencil_2d0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i11_stencil_2d0_NO_NAME_x_q);
        end
    end

    // i_sub16_i_2_i14_stencil_2d34(SUB,215)@4
    assign i_sub16_i_2_i14_stencil_2d34_a = {1'b0, redist17_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i11_stencil_2d0_NO_NAME_x_q_1_q};
    assign i_sub16_i_2_i14_stencil_2d34_b = {1'b0, i_narrow_2_i13_stencil_2d33_vt_join_q};
    assign i_sub16_i_2_i14_stencil_2d34_o = $unsigned(i_sub16_i_2_i14_stencil_2d34_a) - $unsigned(i_sub16_i_2_i14_stencil_2d34_b);
    assign i_sub16_i_2_i14_stencil_2d34_q = i_sub16_i_2_i14_stencil_2d34_o[16:0];

    // bgTrunc_i_sub16_i_2_i14_stencil_2d34_sel_x(BITSELECT,250)@4
    assign bgTrunc_i_sub16_i_2_i14_stencil_2d34_sel_x_b = $unsigned(i_sub16_i_2_i14_stencil_2d34_q[15:0]);

    // redist27_bgTrunc_i_sub16_i_2_i14_stencil_2d34_sel_x_b_1(DELAY,503)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_bgTrunc_i_sub16_i_2_i14_stencil_2d34_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist27_bgTrunc_i_sub16_i_2_i14_stencil_2d34_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub16_i_2_i14_stencil_2d34_sel_x_b);
        end
    end

    // redist0_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_3(DELAY,476)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_3_delay_0 <= '0;
            redist0_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_3_q <= '0;
        end
        else
        begin
            redist0_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_3_delay_0 <= $unsigned(i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q);
            redist0_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_3_q <= redist0_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_3_delay_0;
        end
    end

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i18_stencil_2d0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,304)@5
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i18_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_225_q, redist27_bgTrunc_i_sub16_i_2_i14_stencil_2d34_sel_x_b_1_q, redist0_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_3_q};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i18_stencil_2d0_NO_NAME_x(CHOOSEBITS,303)@5
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i18_stencil_2d0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i18_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i18_stencil_2d0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i18_stencil_2d0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i18_stencil_2d0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i18_stencil_2d0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i18_stencil_2d0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i18_stencil_2d0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i18_stencil_2d0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i18_stencil_2d0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i18_stencil_2d0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i18_stencil_2d0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i18_stencil_2d0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i18_stencil_2d0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i18_stencil_2d0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i18_stencil_2d0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i18_stencil_2d0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i18_stencil_2d0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i18_stencil_2d0_NO_NAME_x_a[12:12]};

    // i_sub16_i_3_i21_stencil_2d39(SUB,216)@5
    assign i_sub16_i_3_i21_stencil_2d39_a = {1'b0, i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i18_stencil_2d0_NO_NAME_x_q};
    assign i_sub16_i_3_i21_stencil_2d39_b = {1'b0, i_narrow_3_i20_stencil_2d38_vt_join_q};
    assign i_sub16_i_3_i21_stencil_2d39_o = $unsigned(i_sub16_i_3_i21_stencil_2d39_a) - $unsigned(i_sub16_i_3_i21_stencil_2d39_b);
    assign i_sub16_i_3_i21_stencil_2d39_q = i_sub16_i_3_i21_stencil_2d39_o[16:0];

    // bgTrunc_i_sub16_i_3_i21_stencil_2d39_sel_x(BITSELECT,251)@5
    assign bgTrunc_i_sub16_i_3_i21_stencil_2d39_sel_x_b = $unsigned(i_sub16_i_3_i21_stencil_2d39_q[15:0]);

    // redist26_bgTrunc_i_sub16_i_3_i21_stencil_2d39_sel_x_b_1(DELAY,502)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_bgTrunc_i_sub16_i_3_i21_stencil_2d39_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist26_bgTrunc_i_sub16_i_3_i21_stencil_2d39_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub16_i_3_i21_stencil_2d39_sel_x_b);
        end
    end

    // redist1_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_4(DELAY,477)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_4_q <= '0;
        end
        else
        begin
            redist1_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_4_q <= $unsigned(redist0_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_3_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i25_stencil_2d0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,307)@6
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i25_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_225_q, redist26_bgTrunc_i_sub16_i_3_i21_stencil_2d39_sel_x_b_1_q, redist1_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_4_q};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i25_stencil_2d0_NO_NAME_x(CHOOSEBITS,306)@6
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i25_stencil_2d0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i25_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i25_stencil_2d0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i25_stencil_2d0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i25_stencil_2d0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i25_stencil_2d0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i25_stencil_2d0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i25_stencil_2d0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i25_stencil_2d0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i25_stencil_2d0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i25_stencil_2d0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i25_stencil_2d0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i25_stencil_2d0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i25_stencil_2d0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i25_stencil_2d0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i25_stencil_2d0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i25_stencil_2d0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i25_stencil_2d0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i25_stencil_2d0_NO_NAME_x_a[11:11]};

    // i_sub16_i_4_i28_stencil_2d44(SUB,217)@6
    assign i_sub16_i_4_i28_stencil_2d44_a = {1'b0, i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i25_stencil_2d0_NO_NAME_x_q};
    assign i_sub16_i_4_i28_stencil_2d44_b = {1'b0, i_narrow_4_i27_stencil_2d43_vt_join_q};
    assign i_sub16_i_4_i28_stencil_2d44_o = $unsigned(i_sub16_i_4_i28_stencil_2d44_a) - $unsigned(i_sub16_i_4_i28_stencil_2d44_b);
    assign i_sub16_i_4_i28_stencil_2d44_q = i_sub16_i_4_i28_stencil_2d44_o[16:0];

    // bgTrunc_i_sub16_i_4_i28_stencil_2d44_sel_x(BITSELECT,252)@6
    assign bgTrunc_i_sub16_i_4_i28_stencil_2d44_sel_x_b = $unsigned(i_sub16_i_4_i28_stencil_2d44_q[15:0]);

    // redist25_bgTrunc_i_sub16_i_4_i28_stencil_2d44_sel_x_b_1(DELAY,501)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_bgTrunc_i_sub16_i_4_i28_stencil_2d44_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist25_bgTrunc_i_sub16_i_4_i28_stencil_2d44_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub16_i_4_i28_stencil_2d44_sel_x_b);
        end
    end

    // redist2_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_5(DELAY,478)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_5_q <= '0;
        end
        else
        begin
            redist2_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_5_q <= $unsigned(redist1_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_4_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i32_stencil_2d0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,310)@7
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i32_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_225_q, redist25_bgTrunc_i_sub16_i_4_i28_stencil_2d44_sel_x_b_1_q, redist2_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_5_q};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i32_stencil_2d0_NO_NAME_x(CHOOSEBITS,309)@7
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i32_stencil_2d0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i32_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i32_stencil_2d0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i32_stencil_2d0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i32_stencil_2d0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i32_stencil_2d0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i32_stencil_2d0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i32_stencil_2d0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i32_stencil_2d0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i32_stencil_2d0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i32_stencil_2d0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i32_stencil_2d0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i32_stencil_2d0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i32_stencil_2d0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i32_stencil_2d0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i32_stencil_2d0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i32_stencil_2d0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i32_stencil_2d0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i32_stencil_2d0_NO_NAME_x_a[10:10]};

    // i_sub16_i_5_i35_stencil_2d49(SUB,218)@7
    assign i_sub16_i_5_i35_stencil_2d49_a = {1'b0, i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i32_stencil_2d0_NO_NAME_x_q};
    assign i_sub16_i_5_i35_stencil_2d49_b = {1'b0, i_narrow_5_i34_stencil_2d48_vt_join_q};
    assign i_sub16_i_5_i35_stencil_2d49_o = $unsigned(i_sub16_i_5_i35_stencil_2d49_a) - $unsigned(i_sub16_i_5_i35_stencil_2d49_b);
    assign i_sub16_i_5_i35_stencil_2d49_q = i_sub16_i_5_i35_stencil_2d49_o[16:0];

    // bgTrunc_i_sub16_i_5_i35_stencil_2d49_sel_x(BITSELECT,253)@7
    assign bgTrunc_i_sub16_i_5_i35_stencil_2d49_sel_x_b = $unsigned(i_sub16_i_5_i35_stencil_2d49_q[15:0]);

    // redist24_bgTrunc_i_sub16_i_5_i35_stencil_2d49_sel_x_b_1(DELAY,500)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_bgTrunc_i_sub16_i_5_i35_stencil_2d49_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist24_bgTrunc_i_sub16_i_5_i35_stencil_2d49_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub16_i_5_i35_stencil_2d49_sel_x_b);
        end
    end

    // redist3_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_6(DELAY,479)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_6_q <= '0;
        end
        else
        begin
            redist3_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_6_q <= $unsigned(redist2_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_5_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i39_stencil_2d0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,313)@8
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i39_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_225_q, redist24_bgTrunc_i_sub16_i_5_i35_stencil_2d49_sel_x_b_1_q, redist3_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_6_q};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i39_stencil_2d0_NO_NAME_x(CHOOSEBITS,312)@8
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i39_stencil_2d0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i39_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i39_stencil_2d0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i39_stencil_2d0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i39_stencil_2d0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i39_stencil_2d0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i39_stencil_2d0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i39_stencil_2d0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i39_stencil_2d0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i39_stencil_2d0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i39_stencil_2d0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i39_stencil_2d0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i39_stencil_2d0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i39_stencil_2d0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i39_stencil_2d0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i39_stencil_2d0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i39_stencil_2d0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i39_stencil_2d0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i39_stencil_2d0_NO_NAME_x_a[9:9]};

    // i_sub16_i_6_i42_stencil_2d54(SUB,219)@8
    assign i_sub16_i_6_i42_stencil_2d54_a = {1'b0, i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i39_stencil_2d0_NO_NAME_x_q};
    assign i_sub16_i_6_i42_stencil_2d54_b = {1'b0, i_narrow_6_i41_stencil_2d53_vt_join_q};
    assign i_sub16_i_6_i42_stencil_2d54_o = $unsigned(i_sub16_i_6_i42_stencil_2d54_a) - $unsigned(i_sub16_i_6_i42_stencil_2d54_b);
    assign i_sub16_i_6_i42_stencil_2d54_q = i_sub16_i_6_i42_stencil_2d54_o[16:0];

    // bgTrunc_i_sub16_i_6_i42_stencil_2d54_sel_x(BITSELECT,254)@8
    assign bgTrunc_i_sub16_i_6_i42_stencil_2d54_sel_x_b = $unsigned(i_sub16_i_6_i42_stencil_2d54_q[15:0]);

    // redist23_bgTrunc_i_sub16_i_6_i42_stencil_2d54_sel_x_b_1(DELAY,499)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_bgTrunc_i_sub16_i_6_i42_stencil_2d54_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist23_bgTrunc_i_sub16_i_6_i42_stencil_2d54_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub16_i_6_i42_stencil_2d54_sel_x_b);
        end
    end

    // redist4_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_7(DELAY,480)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_7_q <= '0;
        end
        else
        begin
            redist4_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_7_q <= $unsigned(redist3_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_6_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i46_stencil_2d0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,316)@9
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i46_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_225_q, redist23_bgTrunc_i_sub16_i_6_i42_stencil_2d54_sel_x_b_1_q, redist4_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_7_q};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i46_stencil_2d0_NO_NAME_x(CHOOSEBITS,315)@9
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i46_stencil_2d0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i46_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i46_stencil_2d0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i46_stencil_2d0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i46_stencil_2d0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i46_stencil_2d0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i46_stencil_2d0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i46_stencil_2d0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i46_stencil_2d0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i46_stencil_2d0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i46_stencil_2d0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i46_stencil_2d0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i46_stencil_2d0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i46_stencil_2d0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i46_stencil_2d0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i46_stencil_2d0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i46_stencil_2d0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i46_stencil_2d0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i46_stencil_2d0_NO_NAME_x_a[8:8]};

    // i_sub16_i_7_i49_stencil_2d59(SUB,220)@9
    assign i_sub16_i_7_i49_stencil_2d59_a = {1'b0, i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i46_stencil_2d0_NO_NAME_x_q};
    assign i_sub16_i_7_i49_stencil_2d59_b = {1'b0, i_narrow_7_i48_stencil_2d58_vt_join_q};
    assign i_sub16_i_7_i49_stencil_2d59_o = $unsigned(i_sub16_i_7_i49_stencil_2d59_a) - $unsigned(i_sub16_i_7_i49_stencil_2d59_b);
    assign i_sub16_i_7_i49_stencil_2d59_q = i_sub16_i_7_i49_stencil_2d59_o[16:0];

    // bgTrunc_i_sub16_i_7_i49_stencil_2d59_sel_x(BITSELECT,255)@9
    assign bgTrunc_i_sub16_i_7_i49_stencil_2d59_sel_x_b = $unsigned(i_sub16_i_7_i49_stencil_2d59_q[15:0]);

    // redist22_bgTrunc_i_sub16_i_7_i49_stencil_2d59_sel_x_b_1(DELAY,498)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_bgTrunc_i_sub16_i_7_i49_stencil_2d59_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist22_bgTrunc_i_sub16_i_7_i49_stencil_2d59_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub16_i_7_i49_stencil_2d59_sel_x_b);
        end
    end

    // redist5_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_8(DELAY,481)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_8_q <= '0;
        end
        else
        begin
            redist5_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_8_q <= $unsigned(redist4_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_7_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i53_stencil_2d0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,319)@10
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i53_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_225_q, redist22_bgTrunc_i_sub16_i_7_i49_stencil_2d59_sel_x_b_1_q, redist5_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_8_q};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i53_stencil_2d0_NO_NAME_x(CHOOSEBITS,318)@10
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i53_stencil_2d0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i53_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i53_stencil_2d0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i53_stencil_2d0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i53_stencil_2d0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i53_stencil_2d0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i53_stencil_2d0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i53_stencil_2d0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i53_stencil_2d0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i53_stencil_2d0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i53_stencil_2d0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i53_stencil_2d0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i53_stencil_2d0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i53_stencil_2d0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i53_stencil_2d0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i53_stencil_2d0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i53_stencil_2d0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i53_stencil_2d0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i53_stencil_2d0_NO_NAME_x_a[7:7]};

    // i_sub16_i_8_i56_stencil_2d64(SUB,221)@10
    assign i_sub16_i_8_i56_stencil_2d64_a = {1'b0, i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i53_stencil_2d0_NO_NAME_x_q};
    assign i_sub16_i_8_i56_stencil_2d64_b = {1'b0, i_narrow_8_i55_stencil_2d63_vt_join_q};
    assign i_sub16_i_8_i56_stencil_2d64_o = $unsigned(i_sub16_i_8_i56_stencil_2d64_a) - $unsigned(i_sub16_i_8_i56_stencil_2d64_b);
    assign i_sub16_i_8_i56_stencil_2d64_q = i_sub16_i_8_i56_stencil_2d64_o[16:0];

    // bgTrunc_i_sub16_i_8_i56_stencil_2d64_sel_x(BITSELECT,256)@10
    assign bgTrunc_i_sub16_i_8_i56_stencil_2d64_sel_x_b = $unsigned(i_sub16_i_8_i56_stencil_2d64_q[15:0]);

    // redist21_bgTrunc_i_sub16_i_8_i56_stencil_2d64_sel_x_b_1(DELAY,497)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_bgTrunc_i_sub16_i_8_i56_stencil_2d64_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist21_bgTrunc_i_sub16_i_8_i56_stencil_2d64_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub16_i_8_i56_stencil_2d64_sel_x_b);
        end
    end

    // redist6_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_9(DELAY,482)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_9_q <= '0;
        end
        else
        begin
            redist6_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_9_q <= $unsigned(redist5_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_8_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i60_stencil_2d0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,322)@11
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i60_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_225_q, redist21_bgTrunc_i_sub16_i_8_i56_stencil_2d64_sel_x_b_1_q, redist6_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_9_q};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i60_stencil_2d0_NO_NAME_x(CHOOSEBITS,321)@11
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i60_stencil_2d0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i60_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i60_stencil_2d0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i60_stencil_2d0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i60_stencil_2d0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i60_stencil_2d0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i60_stencil_2d0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i60_stencil_2d0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i60_stencil_2d0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i60_stencil_2d0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i60_stencil_2d0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i60_stencil_2d0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i60_stencil_2d0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i60_stencil_2d0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i60_stencil_2d0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i60_stencil_2d0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i60_stencil_2d0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i60_stencil_2d0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i60_stencil_2d0_NO_NAME_x_a[6:6]};

    // i_sub16_i_9_i63_stencil_2d69(SUB,222)@11
    assign i_sub16_i_9_i63_stencil_2d69_a = {1'b0, i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i60_stencil_2d0_NO_NAME_x_q};
    assign i_sub16_i_9_i63_stencil_2d69_b = {1'b0, i_narrow_9_i62_stencil_2d68_vt_join_q};
    assign i_sub16_i_9_i63_stencil_2d69_o = $unsigned(i_sub16_i_9_i63_stencil_2d69_a) - $unsigned(i_sub16_i_9_i63_stencil_2d69_b);
    assign i_sub16_i_9_i63_stencil_2d69_q = i_sub16_i_9_i63_stencil_2d69_o[16:0];

    // bgTrunc_i_sub16_i_9_i63_stencil_2d69_sel_x(BITSELECT,257)@11
    assign bgTrunc_i_sub16_i_9_i63_stencil_2d69_sel_x_b = $unsigned(i_sub16_i_9_i63_stencil_2d69_q[15:0]);

    // redist20_bgTrunc_i_sub16_i_9_i63_stencil_2d69_sel_x_b_1(DELAY,496)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_bgTrunc_i_sub16_i_9_i63_stencil_2d69_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist20_bgTrunc_i_sub16_i_9_i63_stencil_2d69_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub16_i_9_i63_stencil_2d69_sel_x_b);
        end
    end

    // redist7_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_10(DELAY,483)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_10_q <= '0;
        end
        else
        begin
            redist7_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_10_q <= $unsigned(redist6_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_9_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i67_stencil_2d0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,280)@12
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i67_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_225_q, redist20_bgTrunc_i_sub16_i_9_i63_stencil_2d69_sel_x_b_1_q, redist7_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_10_q};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i67_stencil_2d0_NO_NAME_x(CHOOSEBITS,279)@12
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i67_stencil_2d0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i67_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i67_stencil_2d0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i67_stencil_2d0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i67_stencil_2d0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i67_stencil_2d0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i67_stencil_2d0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i67_stencil_2d0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i67_stencil_2d0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i67_stencil_2d0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i67_stencil_2d0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i67_stencil_2d0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i67_stencil_2d0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i67_stencil_2d0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i67_stencil_2d0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i67_stencil_2d0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i67_stencil_2d0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i67_stencil_2d0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i67_stencil_2d0_NO_NAME_x_a[5:5]};

    // i_sub16_i_10_i70_stencil_2d74(SUB,208)@12
    assign i_sub16_i_10_i70_stencil_2d74_a = {1'b0, i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i67_stencil_2d0_NO_NAME_x_q};
    assign i_sub16_i_10_i70_stencil_2d74_b = {1'b0, i_narrow_10_i69_stencil_2d73_vt_join_q};
    assign i_sub16_i_10_i70_stencil_2d74_o = $unsigned(i_sub16_i_10_i70_stencil_2d74_a) - $unsigned(i_sub16_i_10_i70_stencil_2d74_b);
    assign i_sub16_i_10_i70_stencil_2d74_q = i_sub16_i_10_i70_stencil_2d74_o[16:0];

    // bgTrunc_i_sub16_i_10_i70_stencil_2d74_sel_x(BITSELECT,243)@12
    assign bgTrunc_i_sub16_i_10_i70_stencil_2d74_sel_x_b = $unsigned(i_sub16_i_10_i70_stencil_2d74_q[15:0]);

    // redist31_bgTrunc_i_sub16_i_10_i70_stencil_2d74_sel_x_b_1(DELAY,507)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_bgTrunc_i_sub16_i_10_i70_stencil_2d74_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist31_bgTrunc_i_sub16_i_10_i70_stencil_2d74_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub16_i_10_i70_stencil_2d74_sel_x_b);
        end
    end

    // redist8_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_11(DELAY,484)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_11_q <= '0;
        end
        else
        begin
            redist8_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_11_q <= $unsigned(redist7_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_10_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i74_stencil_2d0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,283)@13
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i74_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_225_q, redist31_bgTrunc_i_sub16_i_10_i70_stencil_2d74_sel_x_b_1_q, redist8_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_11_q};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i74_stencil_2d0_NO_NAME_x(CHOOSEBITS,282)@13
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i74_stencil_2d0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i74_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i74_stencil_2d0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i74_stencil_2d0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i74_stencil_2d0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i74_stencil_2d0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i74_stencil_2d0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i74_stencil_2d0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i74_stencil_2d0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i74_stencil_2d0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i74_stencil_2d0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i74_stencil_2d0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i74_stencil_2d0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i74_stencil_2d0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i74_stencil_2d0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i74_stencil_2d0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i74_stencil_2d0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i74_stencil_2d0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i74_stencil_2d0_NO_NAME_x_a[4:4]};

    // i_sub16_i_11_i77_stencil_2d79(SUB,209)@13
    assign i_sub16_i_11_i77_stencil_2d79_a = {1'b0, i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i74_stencil_2d0_NO_NAME_x_q};
    assign i_sub16_i_11_i77_stencil_2d79_b = {1'b0, i_narrow_11_i76_stencil_2d78_vt_join_q};
    assign i_sub16_i_11_i77_stencil_2d79_o = $unsigned(i_sub16_i_11_i77_stencil_2d79_a) - $unsigned(i_sub16_i_11_i77_stencil_2d79_b);
    assign i_sub16_i_11_i77_stencil_2d79_q = i_sub16_i_11_i77_stencil_2d79_o[16:0];

    // bgTrunc_i_sub16_i_11_i77_stencil_2d79_sel_x(BITSELECT,244)@13
    assign bgTrunc_i_sub16_i_11_i77_stencil_2d79_sel_x_b = $unsigned(i_sub16_i_11_i77_stencil_2d79_q[15:0]);

    // redist30_bgTrunc_i_sub16_i_11_i77_stencil_2d79_sel_x_b_1(DELAY,506)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_bgTrunc_i_sub16_i_11_i77_stencil_2d79_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist30_bgTrunc_i_sub16_i_11_i77_stencil_2d79_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub16_i_11_i77_stencil_2d79_sel_x_b);
        end
    end

    // redist9_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_12(DELAY,485)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_12_q <= '0;
        end
        else
        begin
            redist9_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_12_q <= $unsigned(redist8_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_11_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i81_stencil_2d0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,286)@14
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i81_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_225_q, redist30_bgTrunc_i_sub16_i_11_i77_stencil_2d79_sel_x_b_1_q, redist9_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_12_q};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i81_stencil_2d0_NO_NAME_x(CHOOSEBITS,285)@14
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i81_stencil_2d0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i81_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i81_stencil_2d0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i81_stencil_2d0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i81_stencil_2d0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i81_stencil_2d0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i81_stencil_2d0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i81_stencil_2d0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i81_stencil_2d0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i81_stencil_2d0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i81_stencil_2d0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i81_stencil_2d0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i81_stencil_2d0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i81_stencil_2d0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i81_stencil_2d0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i81_stencil_2d0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i81_stencil_2d0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i81_stencil_2d0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i81_stencil_2d0_NO_NAME_x_a[3:3]};

    // i_sub16_i_12_i84_stencil_2d84(SUB,210)@14
    assign i_sub16_i_12_i84_stencil_2d84_a = {1'b0, i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i81_stencil_2d0_NO_NAME_x_q};
    assign i_sub16_i_12_i84_stencil_2d84_b = {1'b0, i_narrow_12_i83_stencil_2d83_vt_join_q};
    assign i_sub16_i_12_i84_stencil_2d84_o = $unsigned(i_sub16_i_12_i84_stencil_2d84_a) - $unsigned(i_sub16_i_12_i84_stencil_2d84_b);
    assign i_sub16_i_12_i84_stencil_2d84_q = i_sub16_i_12_i84_stencil_2d84_o[16:0];

    // bgTrunc_i_sub16_i_12_i84_stencil_2d84_sel_x(BITSELECT,245)@14
    assign bgTrunc_i_sub16_i_12_i84_stencil_2d84_sel_x_b = $unsigned(i_sub16_i_12_i84_stencil_2d84_q[15:0]);

    // redist29_bgTrunc_i_sub16_i_12_i84_stencil_2d84_sel_x_b_1(DELAY,505)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_bgTrunc_i_sub16_i_12_i84_stencil_2d84_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist29_bgTrunc_i_sub16_i_12_i84_stencil_2d84_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub16_i_12_i84_stencil_2d84_sel_x_b);
        end
    end

    // redist10_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_13(DELAY,486)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_13_q <= '0;
        end
        else
        begin
            redist10_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_13_q <= $unsigned(redist9_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_12_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i88_stencil_2d0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,289)@15
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i88_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_225_q, redist29_bgTrunc_i_sub16_i_12_i84_stencil_2d84_sel_x_b_1_q, redist10_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_13_q};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i88_stencil_2d0_NO_NAME_x(CHOOSEBITS,288)@15
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i88_stencil_2d0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i88_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i88_stencil_2d0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i88_stencil_2d0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i88_stencil_2d0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i88_stencil_2d0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i88_stencil_2d0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i88_stencil_2d0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i88_stencil_2d0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i88_stencil_2d0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i88_stencil_2d0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i88_stencil_2d0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i88_stencil_2d0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i88_stencil_2d0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i88_stencil_2d0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i88_stencil_2d0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i88_stencil_2d0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i88_stencil_2d0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i88_stencil_2d0_NO_NAME_x_a[2:2]};

    // i_sub16_i_13_i91_stencil_2d89(SUB,211)@15
    assign i_sub16_i_13_i91_stencil_2d89_a = {1'b0, i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i88_stencil_2d0_NO_NAME_x_q};
    assign i_sub16_i_13_i91_stencil_2d89_b = {1'b0, i_narrow_13_i90_stencil_2d88_vt_join_q};
    assign i_sub16_i_13_i91_stencil_2d89_o = $unsigned(i_sub16_i_13_i91_stencil_2d89_a) - $unsigned(i_sub16_i_13_i91_stencil_2d89_b);
    assign i_sub16_i_13_i91_stencil_2d89_q = i_sub16_i_13_i91_stencil_2d89_o[16:0];

    // bgTrunc_i_sub16_i_13_i91_stencil_2d89_sel_x(BITSELECT,246)@15
    assign bgTrunc_i_sub16_i_13_i91_stencil_2d89_sel_x_b = $unsigned(i_sub16_i_13_i91_stencil_2d89_q[15:0]);

    // redist28_bgTrunc_i_sub16_i_13_i91_stencil_2d89_sel_x_b_1(DELAY,504)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_bgTrunc_i_sub16_i_13_i91_stencil_2d89_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist28_bgTrunc_i_sub16_i_13_i91_stencil_2d89_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub16_i_13_i91_stencil_2d89_sel_x_b);
        end
    end

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i95_stencil_2d0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,292)@16
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i95_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_225_q, redist28_bgTrunc_i_sub16_i_13_i91_stencil_2d89_sel_x_b_1_q, redist11_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_14_q};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i95_stencil_2d0_NO_NAME_x(CHOOSEBITS,291)@16
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i95_stencil_2d0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i95_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i95_stencil_2d0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i95_stencil_2d0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i95_stencil_2d0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i95_stencil_2d0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i95_stencil_2d0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i95_stencil_2d0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i95_stencil_2d0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i95_stencil_2d0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i95_stencil_2d0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i95_stencil_2d0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i95_stencil_2d0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i95_stencil_2d0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i95_stencil_2d0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i95_stencil_2d0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i95_stencil_2d0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i95_stencil_2d0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i95_stencil_2d0_NO_NAME_x_a[1:1]};

    // i_sub16_i_14_i98_stencil_2d94(SUB,212)@16
    assign i_sub16_i_14_i98_stencil_2d94_a = {1'b0, i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i95_stencil_2d0_NO_NAME_x_q};
    assign i_sub16_i_14_i98_stencil_2d94_b = {1'b0, i_narrow_14_i97_stencil_2d93_vt_join_q};
    assign i_sub16_i_14_i98_stencil_2d94_o = $unsigned(i_sub16_i_14_i98_stencil_2d94_a) - $unsigned(i_sub16_i_14_i98_stencil_2d94_b);
    assign i_sub16_i_14_i98_stencil_2d94_q = i_sub16_i_14_i98_stencil_2d94_o[16:0];

    // bgTrunc_i_sub16_i_14_i98_stencil_2d94_sel_x(BITSELECT,247)@16
    assign bgTrunc_i_sub16_i_14_i98_stencil_2d94_sel_x_b = $unsigned(i_sub16_i_14_i98_stencil_2d94_q[15:0]);

    // redist11_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_14(DELAY,487)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_14_q <= '0;
        end
        else
        begin
            redist11_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_14_q <= $unsigned(redist10_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_13_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i102_stencil_2d0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,295)@16
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i102_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_225_q, bgTrunc_i_sub16_i_14_i98_stencil_2d94_sel_x_b, redist11_i_llvm_experimental_vector_reduce_add_v3i16_add_red108_stencil_2d22_vunroll_re_add_1_0_q_14_q};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i102_stencil_2d0_NO_NAME_x(CHOOSEBITS,294)@16
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i102_stencil_2d0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i102_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i102_stencil_2d0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i102_stencil_2d0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i102_stencil_2d0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i102_stencil_2d0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i102_stencil_2d0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i102_stencil_2d0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i102_stencil_2d0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i102_stencil_2d0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i102_stencil_2d0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i102_stencil_2d0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i102_stencil_2d0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i102_stencil_2d0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i102_stencil_2d0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i102_stencil_2d0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i102_stencil_2d0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i102_stencil_2d0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i102_stencil_2d0_NO_NAME_x_a[0:0]};

    // redist18_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i102_stencil_2d0_NO_NAME_x_q_1(DELAY,494)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i102_stencil_2d0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist18_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i102_stencil_2d0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i102_stencil_2d0_NO_NAME_x_q);
        end
    end

    // i_sub16_i_15_i105_stencil_2d99(SUB,213)@17
    assign i_sub16_i_15_i105_stencil_2d99_a = {1'b0, redist18_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i102_stencil_2d0_NO_NAME_x_q_1_q};
    assign i_sub16_i_15_i105_stencil_2d99_b = {1'b0, i_narrow_15_i104_stencil_2d98_vt_join_q};
    assign i_sub16_i_15_i105_stencil_2d99_o = $unsigned(i_sub16_i_15_i105_stencil_2d99_a) - $unsigned(i_sub16_i_15_i105_stencil_2d99_b);
    assign i_sub16_i_15_i105_stencil_2d99_q = i_sub16_i_15_i105_stencil_2d99_o[16:0];

    // bgTrunc_i_sub16_i_15_i105_stencil_2d99_sel_x(BITSELECT,248)@17
    assign bgTrunc_i_sub16_i_15_i105_stencil_2d99_sel_x_b = $unsigned(i_sub16_i_15_i105_stencil_2d99_q[15:0]);

    // i_rem10_zext_stencil_2d100_sel_x(BITSELECT,328)@17
    assign i_rem10_zext_stencil_2d100_sel_x_b = {16'b0000000000000000, bgTrunc_i_sub16_i_15_i105_stencil_2d99_sel_x_b[15:0]};

    // i_rem10_zext_stencil_2d100_vt_select_15(BITSELECT,207)@17
    assign i_rem10_zext_stencil_2d100_vt_select_15_b = i_rem10_zext_stencil_2d100_sel_x_b[15:0];

    // i_rem10_zext_stencil_2d100_vt_join(BITJOIN,206)@17
    assign i_rem10_zext_stencil_2d100_vt_join_q = {c_i16_019_q, i_rem10_zext_stencil_2d100_vt_select_15_b};

    // redist15_sync_together159_aunroll_x_in_i_valid_15(DELAY,491)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist15_sync_together159_aunroll_x_in_i_valid_15 ( .xin(redist14_sync_together159_aunroll_x_in_i_valid_3_q), .xout(redist15_sync_together159_aunroll_x_in_i_valid_15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg5(REG,355)@16 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist15_sync_together159_aunroll_x_in_i_valid_15_q);
        end
    end

    // redist36_i_first_cleanup_xor54_stencil_2d4_q_13(DELAY,512)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist36_i_first_cleanup_xor54_stencil_2d4_q_13 ( .xin(i_first_cleanup_xor54_stencil_2d4_q), .xout(redist36_i_first_cleanup_xor54_stencil_2d4_q_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_stencil_2d_filter_pmem(CONSTANT,45)
    assign c_stencil_2d_filter_pmem_q = $unsigned(64'b0100000001000010000000000000000000000000000000000000000000000000);

    // i_arrayidx122_stencil_2d0_upper_bits_x_merged_bit_select(BITSELECT,460)@17
    assign i_arrayidx122_stencil_2d0_upper_bits_x_merged_bit_select_b = c_stencil_2d_filter_pmem_q[63:6];
    assign i_arrayidx122_stencil_2d0_upper_bits_x_merged_bit_select_c = c_stencil_2d_filter_pmem_q[5:0];

    // redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_notEnable(LOGICAL,521)
    assign redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_notEnable_q = $unsigned(~ (VCC_q));

    // redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_nor(LOGICAL,522)
    assign redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_nor_q = ~ (redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_notEnable_q | redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_sticky_ena_q);

    // redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_mem_last(CONSTANT,518)
    assign redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_mem_last_q = $unsigned(5'b01010);

    // redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_cmp(LOGICAL,519)
    assign redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_cmp_b = {1'b0, redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_rdcnt_q};
    assign redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_cmp_q = $unsigned(redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_mem_last_q == redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_cmp_b ? 1'b1 : 1'b0);

    // redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_cmpReg(REG,520)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_cmpReg_q <= $unsigned(redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_cmp_q);
        end
    end

    // redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_sticky_ena(REG,523)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_nor_q == 1'b1)
        begin
            redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_sticky_ena_q <= $unsigned(redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_cmpReg_q);
        end
    end

    // redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_enaAnd(LOGICAL,524)
    assign redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_enaAnd_q = redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_sticky_ena_q & VCC_q;

    // redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_rdcnt(COUNTER,516)
    // low=0, high=11, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_rdcnt_i <= 4'd0;
            redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_rdcnt_i == 4'd10)
            begin
                redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_rdcnt_eq <= 1'b0;
            end
            if (redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_rdcnt_eq == 1'b1)
            begin
                redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_rdcnt_i <= $unsigned(redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_rdcnt_i) + $unsigned(4'd5);
            end
            else
            begin
                redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_rdcnt_i <= $unsigned(redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_rdcnt_q = redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_rdcnt_i[3:0];

    // i_idxprom11_stencil_2d101_sel_x(BITSELECT,277)@2
    assign i_idxprom11_stencil_2d101_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j4_037_pop21_stencil_2d12_out_data_out[31:0]};

    // i_idxprom11_stencil_2d101_vt_select_31(BITSELECT,76)@2
    assign i_idxprom11_stencil_2d101_vt_select_31_b = i_idxprom11_stencil_2d101_sel_x_b[31:0];

    // i_idxprom11_stencil_2d101_vt_join(BITJOIN,75)@2
    assign i_idxprom11_stencil_2d101_vt_join_q = {c_i32_0133_q, i_idxprom11_stencil_2d101_vt_select_31_b};

    // i_arrayidx122_stencil_2d0_dupName_0_trunc_sel_x(BITSELECT,270)@2
    assign i_arrayidx122_stencil_2d0_dupName_0_trunc_sel_x_b = i_idxprom11_stencil_2d101_vt_join_q[5:0];

    // i_arrayidx122_stencil_2d0_narrow_x(BITSELECT,263)@2
    assign i_arrayidx122_stencil_2d0_narrow_x_b = i_arrayidx122_stencil_2d0_dupName_0_trunc_sel_x_b[3:0];

    // redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_inputreg0(DELAY,513)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_inputreg0_q <= '0;
        end
        else
        begin
            redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_inputreg0_q <= $unsigned(i_arrayidx122_stencil_2d0_narrow_x_b);
        end
    end

    // redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_wraddr(REG,517)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_wraddr_q <= $unsigned(4'b1011);
        end
        else
        begin
            redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_wraddr_q <= $unsigned(redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_rdcnt_q);
        end
    end

    // redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_mem(DUALMEM,515)
    assign redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_mem_ia = $unsigned(redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_inputreg0_q);
    assign redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_mem_aa = redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_wraddr_q;
    assign redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_mem_ab = redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_rdcnt_q;
    assign redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(4),
        .widthad_a(4),
        .numwords_a(12),
        .width_b(4),
        .widthad_b(4),
        .numwords_b(12),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_mem_dmem (
        .clocken1(redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_mem_reset0),
        .clock1(clock),
        .address_a(redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_mem_aa),
        .data_a(redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_mem_ab),
        .q_b(redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
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
    assign redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_mem_q = redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_mem_iq[3:0];

    // redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_outputreg0(DELAY,514)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_outputreg0_q <= '0;
        end
        else
        begin
            redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_outputreg0_q <= $unsigned(redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_mem_q);
        end
    end

    // i_arrayidx122_stencil_2d0_shift_join_x(BITJOIN,264)@17
    assign i_arrayidx122_stencil_2d0_shift_join_x_q = {redist19_i_arrayidx122_stencil_2d0_narrow_x_b_15_outputreg0_q, i_arrayidx122_stencil_2d102_vt_const_1_q};

    // i_arrayidx122_stencil_2d0_add_x(ADD,260)@17
    assign i_arrayidx122_stencil_2d0_add_x_a = {1'b0, i_arrayidx122_stencil_2d0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx122_stencil_2d0_add_x_b = {1'b0, i_arrayidx122_stencil_2d0_shift_join_x_q};
    assign i_arrayidx122_stencil_2d0_add_x_o = $unsigned(i_arrayidx122_stencil_2d0_add_x_a) + $unsigned(i_arrayidx122_stencil_2d0_add_x_b);
    assign i_arrayidx122_stencil_2d0_add_x_q = i_arrayidx122_stencil_2d0_add_x_o[6:0];

    // i_arrayidx122_stencil_2d0_dupName_2_trunc_sel_x(BITSELECT,271)@17
    assign i_arrayidx122_stencil_2d0_dupName_2_trunc_sel_x_b = i_arrayidx122_stencil_2d0_add_x_q[5:0];

    // i_arrayidx122_stencil_2d0_append_upper_bits_x(BITJOIN,261)@17
    assign i_arrayidx122_stencil_2d0_append_upper_bits_x_q = {i_arrayidx122_stencil_2d0_upper_bits_x_merged_bit_select_b, i_arrayidx122_stencil_2d0_dupName_2_trunc_sel_x_b};

    // i_arrayidx122_stencil_2d102_vt_select_63(BITSELECT,50)@17
    assign i_arrayidx122_stencil_2d102_vt_select_63_b = i_arrayidx122_stencil_2d0_append_upper_bits_x_q[63:2];

    // i_arrayidx122_stencil_2d102_vt_join(BITJOIN,49)@17
    assign i_arrayidx122_stencil_2d102_vt_join_q = {i_arrayidx122_stencil_2d102_vt_select_63_b, i_arrayidx122_stencil_2d102_vt_const_1_q};

    // i_llvm_fpga_mem_memdep_1_stencil_2d103(BLACKBOX,80)@17
    // out out_memdep_1_stencil_2d_avm_address@20000000
    // out out_memdep_1_stencil_2d_avm_burstcount@20000000
    // out out_memdep_1_stencil_2d_avm_byteenable@20000000
    // out out_memdep_1_stencil_2d_avm_enable@20000000
    // out out_memdep_1_stencil_2d_avm_read@20000000
    // out out_memdep_1_stencil_2d_avm_write@20000000
    // out out_memdep_1_stencil_2d_avm_writedata@20000000
    // out out_o_stall@18
    // out out_o_valid@18
    // out out_o_writeack@18
    stencil_2d_i_llvm_fpga_mem_memdep_1_0 thei_llvm_fpga_mem_memdep_1_stencil_2d103 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx122_stencil_2d102_vt_join_q),
        .in_i_predicate(redist36_i_first_cleanup_xor54_stencil_2d4_q_13_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg5_q),
        .in_i_writedata(i_rem10_zext_stencil_2d100_vt_join_q),
        .in_memdep_1_stencil_2d_avm_readdata(in_memdep_1_stencil_2d_avm_readdata),
        .in_memdep_1_stencil_2d_avm_readdatavalid(in_memdep_1_stencil_2d_avm_readdatavalid),
        .in_memdep_1_stencil_2d_avm_waitrequest(in_memdep_1_stencil_2d_avm_waitrequest),
        .in_memdep_1_stencil_2d_avm_writeack(in_memdep_1_stencil_2d_avm_writeack),
        .out_memdep_1_stencil_2d_avm_address(i_llvm_fpga_mem_memdep_1_stencil_2d103_out_memdep_1_stencil_2d_avm_address),
        .out_memdep_1_stencil_2d_avm_burstcount(i_llvm_fpga_mem_memdep_1_stencil_2d103_out_memdep_1_stencil_2d_avm_burstcount),
        .out_memdep_1_stencil_2d_avm_byteenable(i_llvm_fpga_mem_memdep_1_stencil_2d103_out_memdep_1_stencil_2d_avm_byteenable),
        .out_memdep_1_stencil_2d_avm_enable(i_llvm_fpga_mem_memdep_1_stencil_2d103_out_memdep_1_stencil_2d_avm_enable),
        .out_memdep_1_stencil_2d_avm_read(i_llvm_fpga_mem_memdep_1_stencil_2d103_out_memdep_1_stencil_2d_avm_read),
        .out_memdep_1_stencil_2d_avm_write(i_llvm_fpga_mem_memdep_1_stencil_2d103_out_memdep_1_stencil_2d_avm_write),
        .out_memdep_1_stencil_2d_avm_writedata(i_llvm_fpga_mem_memdep_1_stencil_2d103_out_memdep_1_stencil_2d_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,259)
    assign out_memdep_1_stencil_2d_avm_address = i_llvm_fpga_mem_memdep_1_stencil_2d103_out_memdep_1_stencil_2d_avm_address;
    assign out_memdep_1_stencil_2d_avm_enable = i_llvm_fpga_mem_memdep_1_stencil_2d103_out_memdep_1_stencil_2d_avm_enable;
    assign out_memdep_1_stencil_2d_avm_read = i_llvm_fpga_mem_memdep_1_stencil_2d103_out_memdep_1_stencil_2d_avm_read;
    assign out_memdep_1_stencil_2d_avm_write = i_llvm_fpga_mem_memdep_1_stencil_2d103_out_memdep_1_stencil_2d_avm_write;
    assign out_memdep_1_stencil_2d_avm_writedata = i_llvm_fpga_mem_memdep_1_stencil_2d103_out_memdep_1_stencil_2d_avm_writedata;
    assign out_memdep_1_stencil_2d_avm_byteenable = i_llvm_fpga_mem_memdep_1_stencil_2d103_out_memdep_1_stencil_2d_avm_byteenable;
    assign out_memdep_1_stencil_2d_avm_burstcount = i_llvm_fpga_mem_memdep_1_stencil_2d103_out_memdep_1_stencil_2d_avm_burstcount;

    // redist16_sync_together159_aunroll_x_in_i_valid_16(DELAY,492)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together159_aunroll_x_in_i_valid_16_q <= '0;
        end
        else
        begin
            redist16_sync_together159_aunroll_x_in_i_valid_16_q <= $unsigned(redist15_sync_together159_aunroll_x_in_i_valid_15_q);
        end
    end

    // valid_fanout_reg0(REG,350)@17 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist16_sync_together159_aunroll_x_in_i_valid_16_q);
        end
    end

    // i_masked57_stencil_2d116(LOGICAL,92)@4 + 1
    assign i_masked57_stencil_2d116_qi = i_notcmp44_stencil_2d109_q & i_first_cleanup53_stencil_2d3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked57_stencil_2d116_delay ( .xin(i_masked57_stencil_2d116_qi), .xout(i_masked57_stencil_2d116_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist32_i_masked57_stencil_2d116_q_14(DELAY,508)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist32_i_masked57_stencil_2d116_q_14 ( .xin(i_masked57_stencil_2d116_q), .xout(redist32_i_masked57_stencil_2d116_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist35_i_llvm_fpga_pipeline_keep_going48_stencil_2d6_out_data_out_17(DELAY,511)
    dspba_delay_ver #( .width(1), .depth(14), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist35_i_llvm_fpga_pipeline_keep_going48_stencil_2d6_out_data_out_17 ( .xin(redist34_i_llvm_fpga_pipeline_keep_going48_stencil_2d6_out_data_out_3_q), .xout(redist35_i_llvm_fpga_pipeline_keep_going48_stencil_2d6_out_data_out_17_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,330)@18
    assign out_c0_exi2169_0_tpl = GND_q;
    assign out_c0_exi2169_1_tpl = redist35_i_llvm_fpga_pipeline_keep_going48_stencil_2d6_out_data_out_17_q;
    assign out_c0_exi2169_2_tpl = redist32_i_masked57_stencil_2d116_q_14_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_stencil_2d1 = GND_q;

endmodule
