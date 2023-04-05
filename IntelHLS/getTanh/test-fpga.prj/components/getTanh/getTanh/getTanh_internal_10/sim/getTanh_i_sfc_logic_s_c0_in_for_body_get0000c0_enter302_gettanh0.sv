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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body_gettanhs_c0_enter302_gettanh0
// Created for function/kernel getTanh
// SystemVerilog created on Tue Apr  4 23:44:28 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module getTanh_i_sfc_logic_s_c0_in_for_body_get0000c0_enter302_gettanh0 (
    input wire [31:0] in_memdep_getTanh_avm_readdata,
    input wire [0:0] in_memdep_getTanh_avm_writeack,
    input wire [0:0] in_memdep_getTanh_avm_waitrequest,
    input wire [0:0] in_memdep_getTanh_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_gettanh6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_gettanh6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [31:0] in_memdep_1_getTanh_avm_readdata,
    input wire [0:0] in_memdep_1_getTanh_avm_writeack,
    input wire [0:0] in_memdep_1_getTanh_avm_waitrequest,
    input wire [0:0] in_memdep_1_getTanh_avm_readdatavalid,
    output wire [31:0] out_memdep_getTanh_avm_address,
    output wire [0:0] out_memdep_getTanh_avm_enable,
    output wire [0:0] out_memdep_getTanh_avm_read,
    output wire [0:0] out_memdep_getTanh_avm_write,
    output wire [31:0] out_memdep_getTanh_avm_writedata,
    output wire [3:0] out_memdep_getTanh_avm_byteenable,
    output wire [0:0] out_memdep_getTanh_avm_burstcount,
    input wire [31:0] in_memdep_2_getTanh_avm_readdata,
    input wire [0:0] in_memdep_2_getTanh_avm_writeack,
    input wire [0:0] in_memdep_2_getTanh_avm_waitrequest,
    input wire [0:0] in_memdep_2_getTanh_avm_readdatavalid,
    output wire [31:0] out_memdep_1_getTanh_avm_address,
    output wire [0:0] out_memdep_1_getTanh_avm_enable,
    output wire [0:0] out_memdep_1_getTanh_avm_read,
    output wire [0:0] out_memdep_1_getTanh_avm_write,
    output wire [31:0] out_memdep_1_getTanh_avm_writedata,
    output wire [3:0] out_memdep_1_getTanh_avm_byteenable,
    output wire [0:0] out_memdep_1_getTanh_avm_burstcount,
    output wire [31:0] out_memdep_2_getTanh_avm_address,
    output wire [0:0] out_memdep_2_getTanh_avm_enable,
    output wire [0:0] out_memdep_2_getTanh_avm_read,
    output wire [0:0] out_memdep_2_getTanh_avm_write,
    output wire [31:0] out_memdep_2_getTanh_avm_writedata,
    output wire [3:0] out_memdep_2_getTanh_avm_byteenable,
    output wire [0:0] out_memdep_2_getTanh_avm_burstcount,
    output wire [0:0] out_c0_exi2_0_tpl,
    output wire [0:0] out_c0_exi2_1_tpl,
    output wire [0:0] out_c0_exi2_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_getTanh1,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_float_0_000000e_00138_q;
    wire [63:0] c_getTanh_A_pmem_q;
    wire [63:0] c_getTanh_addr_pmem_q;
    wire [10:0] c_i11_1142_q;
    wire [10:0] c_i11_998140_q;
    wire [15:0] c_i16_0135_q;
    wire [15:0] c_i16_100137_q;
    wire [31:0] c_i32_0132_q;
    wire [31:0] c_i32_1139_q;
    wire [3:0] c_i4_7129_q;
    wire [7:0] c_i8_222_q;
    wire [1:0] i_arrayidx1_gettanh15_vt_const_1_q;
    wire [63:0] i_arrayidx1_gettanh15_vt_join_q;
    wire [61:0] i_arrayidx1_gettanh15_vt_select_63_b;
    wire [63:0] i_arrayidx42_gettanh17_vt_join_q;
    wire [61:0] i_arrayidx42_gettanh17_vt_select_63_b;
    wire [3:0] i_cleanups_shl17_gettanh5_vt_join_q;
    wire [2:0] i_cleanups_shl17_gettanh5_vt_select_3_b;
    wire [17:0] i_cmp13_i_10_i_gettanh69_a;
    wire [17:0] i_cmp13_i_10_i_gettanh69_b;
    logic [17:0] i_cmp13_i_10_i_gettanh69_o;
    wire [0:0] i_cmp13_i_10_i_gettanh69_c;
    wire [17:0] i_cmp13_i_11_i_gettanh74_a;
    wire [17:0] i_cmp13_i_11_i_gettanh74_b;
    logic [17:0] i_cmp13_i_11_i_gettanh74_o;
    wire [0:0] i_cmp13_i_11_i_gettanh74_c;
    wire [17:0] i_cmp13_i_12_i_gettanh79_a;
    wire [17:0] i_cmp13_i_12_i_gettanh79_b;
    logic [17:0] i_cmp13_i_12_i_gettanh79_o;
    wire [0:0] i_cmp13_i_12_i_gettanh79_c;
    wire [17:0] i_cmp13_i_13_i_gettanh84_a;
    wire [17:0] i_cmp13_i_13_i_gettanh84_b;
    logic [17:0] i_cmp13_i_13_i_gettanh84_o;
    wire [0:0] i_cmp13_i_13_i_gettanh84_c;
    wire [17:0] i_cmp13_i_14_i_gettanh89_a;
    wire [17:0] i_cmp13_i_14_i_gettanh89_b;
    logic [17:0] i_cmp13_i_14_i_gettanh89_o;
    wire [0:0] i_cmp13_i_14_i_gettanh89_c;
    wire [17:0] i_cmp13_i_15_i_gettanh94_a;
    wire [17:0] i_cmp13_i_15_i_gettanh94_b;
    logic [17:0] i_cmp13_i_15_i_gettanh94_o;
    wire [0:0] i_cmp13_i_15_i_gettanh94_c;
    wire [17:0] i_cmp13_i_1_i_gettanh24_a;
    wire [17:0] i_cmp13_i_1_i_gettanh24_b;
    logic [17:0] i_cmp13_i_1_i_gettanh24_o;
    wire [0:0] i_cmp13_i_1_i_gettanh24_c;
    wire [17:0] i_cmp13_i_2_i_gettanh29_a;
    wire [17:0] i_cmp13_i_2_i_gettanh29_b;
    logic [17:0] i_cmp13_i_2_i_gettanh29_o;
    wire [0:0] i_cmp13_i_2_i_gettanh29_c;
    wire [17:0] i_cmp13_i_3_i_gettanh34_a;
    wire [17:0] i_cmp13_i_3_i_gettanh34_b;
    logic [17:0] i_cmp13_i_3_i_gettanh34_o;
    wire [0:0] i_cmp13_i_3_i_gettanh34_c;
    wire [17:0] i_cmp13_i_4_i_gettanh39_a;
    wire [17:0] i_cmp13_i_4_i_gettanh39_b;
    logic [17:0] i_cmp13_i_4_i_gettanh39_o;
    wire [0:0] i_cmp13_i_4_i_gettanh39_c;
    wire [17:0] i_cmp13_i_5_i_gettanh44_a;
    wire [17:0] i_cmp13_i_5_i_gettanh44_b;
    logic [17:0] i_cmp13_i_5_i_gettanh44_o;
    wire [0:0] i_cmp13_i_5_i_gettanh44_c;
    wire [17:0] i_cmp13_i_6_i_gettanh49_a;
    wire [17:0] i_cmp13_i_6_i_gettanh49_b;
    logic [17:0] i_cmp13_i_6_i_gettanh49_o;
    wire [0:0] i_cmp13_i_6_i_gettanh49_c;
    wire [17:0] i_cmp13_i_7_i_gettanh54_a;
    wire [17:0] i_cmp13_i_7_i_gettanh54_b;
    logic [17:0] i_cmp13_i_7_i_gettanh54_o;
    wire [0:0] i_cmp13_i_7_i_gettanh54_c;
    wire [17:0] i_cmp13_i_8_i_gettanh59_a;
    wire [17:0] i_cmp13_i_8_i_gettanh59_b;
    logic [17:0] i_cmp13_i_8_i_gettanh59_o;
    wire [0:0] i_cmp13_i_8_i_gettanh59_c;
    wire [17:0] i_cmp13_i_9_i_gettanh64_a;
    wire [17:0] i_cmp13_i_9_i_gettanh64_b;
    logic [17:0] i_cmp13_i_9_i_gettanh64_o;
    wire [0:0] i_cmp13_i_9_i_gettanh64_c;
    wire [0:0] i_cmp5_gettanh97_q;
    wire [31:0] i_conv_gettanh13_out_primWireOut;
    wire [0:0] i_first_cleanup_xor19_gettanh4_q;
    wire [0:0] i_first_cleanup_xor19_or_gettanh99_q;
    wire [11:0] i_fpga_indvars_iv_next_gettanh111_a;
    wire [11:0] i_fpga_indvars_iv_next_gettanh111_b;
    logic [11:0] i_fpga_indvars_iv_next_gettanh111_o;
    wire [11:0] i_fpga_indvars_iv_next_gettanh111_q;
    wire [63:0] i_idxprom_gettanh14_vt_join_q;
    wire [31:0] i_idxprom_gettanh14_vt_select_31_b;
    wire [32:0] i_inc_gettanh101_a;
    wire [32:0] i_inc_gettanh101_b;
    logic [32:0] i_inc_gettanh101_o;
    wire [32:0] i_inc_gettanh101_q;
    wire [31:0] i_llvm_fpga_mem_memdep_1_gettanh18_out_memdep_1_getTanh_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_1_gettanh18_out_memdep_1_getTanh_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_1_gettanh18_out_memdep_1_getTanh_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_1_gettanh18_out_memdep_1_getTanh_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_1_gettanh18_out_memdep_1_getTanh_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_1_gettanh18_out_memdep_1_getTanh_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_1_gettanh18_out_memdep_1_getTanh_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_memdep_2_gettanh100_out_memdep_2_getTanh_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_2_gettanh100_out_memdep_2_getTanh_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_2_gettanh100_out_memdep_2_getTanh_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_2_gettanh100_out_memdep_2_getTanh_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_2_gettanh100_out_memdep_2_getTanh_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_2_gettanh100_out_memdep_2_getTanh_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_2_gettanh100_out_memdep_2_getTanh_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_memdep_gettanh16_out_memdep_getTanh_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_gettanh16_out_memdep_getTanh_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_gettanh16_out_memdep_getTanh_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_gettanh16_out_memdep_getTanh_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_gettanh16_out_memdep_getTanh_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_gettanh16_out_memdep_getTanh_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_gettanh16_out_memdep_getTanh_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_gettanh16_out_o_writeack;
    wire [0:0] i_llvm_fpga_pipeline_keep_going13_gettanh6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going13_gettanh6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going13_gettanh6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going13_gettanh6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going13_gettanh6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going13_gettanh6_out_pipeline_valid_out;
    wire [10:0] i_llvm_fpga_pop_i11_fpga_indvars_iv_pop8_gettanh103_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i11_fpga_indvars_iv_pop8_gettanh103_out_feedback_stall_out_8;
    wire [31:0] i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_feedback_stall_out_9;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups16_pop11_gettanh2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups16_pop11_gettanh2_out_feedback_stall_out_11;
    wire [3:0] i_llvm_fpga_pop_i4_initerations11_pop10_gettanh7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations11_pop10_gettanh7_out_feedback_stall_out_10;
    wire [15:0] i_llvm_fpga_push_i11_fpga_indvars_iv_push8_gettanh112_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i11_fpga_indvars_iv_push8_gettanh112_out_feedback_valid_out_8;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration15_gettanh11_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration15_gettanh11_out_feedback_valid_out_4;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond23_gettanh107_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond23_gettanh107_out_feedback_valid_out_5;
    wire [31:0] i_llvm_fpga_push_i32_j_024_push9_gettanh102_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i32_j_024_push9_gettanh102_out_feedback_valid_out_9;
    wire [7:0] i_llvm_fpga_push_i4_cleanups16_push11_gettanh110_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i4_cleanups16_push11_gettanh110_out_feedback_valid_out_11;
    wire [7:0] i_llvm_fpga_push_i4_initerations11_push10_gettanh9_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i4_initerations11_push10_gettanh9_out_feedback_valid_out_10;
    wire [0:0] i_masked22_gettanh113_qi;
    reg [0:0] i_masked22_gettanh113_q;
    wire [0:0] i_narrow_10_i_gettanh70_s;
    reg [15:0] i_narrow_10_i_gettanh70_q;
    wire [8:0] i_narrow_10_i_gettanh70_vt_const_15_q;
    wire [15:0] i_narrow_10_i_gettanh70_vt_join_q;
    wire [0:0] i_narrow_11_i_gettanh75_s;
    reg [15:0] i_narrow_11_i_gettanh75_q;
    wire [15:0] i_narrow_11_i_gettanh75_vt_join_q;
    wire [0:0] i_narrow_12_i_gettanh80_s;
    reg [15:0] i_narrow_12_i_gettanh80_q;
    wire [15:0] i_narrow_12_i_gettanh80_vt_join_q;
    wire [0:0] i_narrow_13_i_gettanh85_s;
    reg [15:0] i_narrow_13_i_gettanh85_q;
    wire [15:0] i_narrow_13_i_gettanh85_vt_join_q;
    wire [0:0] i_narrow_14_i_gettanh90_s;
    reg [15:0] i_narrow_14_i_gettanh90_q;
    wire [15:0] i_narrow_14_i_gettanh90_vt_join_q;
    wire [0:0] i_narrow_15_i_gettanh95_s;
    reg [15:0] i_narrow_15_i_gettanh95_q;
    wire [15:0] i_narrow_15_i_gettanh95_vt_join_q;
    wire [0:0] i_narrow_1_i_gettanh25_s;
    reg [15:0] i_narrow_1_i_gettanh25_q;
    wire [15:0] i_narrow_1_i_gettanh25_vt_join_q;
    wire [0:0] i_narrow_2_i_gettanh30_s;
    reg [15:0] i_narrow_2_i_gettanh30_q;
    wire [15:0] i_narrow_2_i_gettanh30_vt_join_q;
    wire [0:0] i_narrow_3_i_gettanh35_s;
    reg [15:0] i_narrow_3_i_gettanh35_q;
    wire [15:0] i_narrow_3_i_gettanh35_vt_join_q;
    wire [0:0] i_narrow_4_i_gettanh40_s;
    reg [15:0] i_narrow_4_i_gettanh40_q;
    wire [15:0] i_narrow_4_i_gettanh40_vt_join_q;
    wire [0:0] i_narrow_5_i_gettanh45_s;
    reg [15:0] i_narrow_5_i_gettanh45_q;
    wire [15:0] i_narrow_5_i_gettanh45_vt_join_q;
    wire [0:0] i_narrow_6_i_gettanh50_s;
    reg [15:0] i_narrow_6_i_gettanh50_q;
    wire [15:0] i_narrow_6_i_gettanh50_vt_join_q;
    wire [0:0] i_narrow_7_i_gettanh55_s;
    reg [15:0] i_narrow_7_i_gettanh55_q;
    wire [15:0] i_narrow_7_i_gettanh55_vt_join_q;
    wire [0:0] i_narrow_8_i_gettanh60_s;
    reg [15:0] i_narrow_8_i_gettanh60_q;
    wire [15:0] i_narrow_8_i_gettanh60_vt_join_q;
    wire [0:0] i_narrow_9_i_gettanh65_s;
    reg [15:0] i_narrow_9_i_gettanh65_q;
    wire [15:0] i_narrow_9_i_gettanh65_vt_join_q;
    wire [0:0] i_next_cleanups21_gettanh109_s;
    reg [3:0] i_next_cleanups21_gettanh109_q;
    wire [3:0] i_next_initerations12_gettanh8_vt_join_q;
    wire [2:0] i_next_initerations12_gettanh8_vt_select_2_b;
    wire [0:0] i_notcmp9_gettanh106_q;
    wire [0:0] i_or20_gettanh108_q;
    wire [16:0] i_sub16_i_10_i_gettanh71_a;
    wire [16:0] i_sub16_i_10_i_gettanh71_b;
    logic [16:0] i_sub16_i_10_i_gettanh71_o;
    wire [16:0] i_sub16_i_10_i_gettanh71_q;
    wire [16:0] i_sub16_i_11_i_gettanh76_a;
    wire [16:0] i_sub16_i_11_i_gettanh76_b;
    logic [16:0] i_sub16_i_11_i_gettanh76_o;
    wire [16:0] i_sub16_i_11_i_gettanh76_q;
    wire [16:0] i_sub16_i_12_i_gettanh81_a;
    wire [16:0] i_sub16_i_12_i_gettanh81_b;
    logic [16:0] i_sub16_i_12_i_gettanh81_o;
    wire [16:0] i_sub16_i_12_i_gettanh81_q;
    wire [16:0] i_sub16_i_13_i_gettanh86_a;
    wire [16:0] i_sub16_i_13_i_gettanh86_b;
    logic [16:0] i_sub16_i_13_i_gettanh86_o;
    wire [16:0] i_sub16_i_13_i_gettanh86_q;
    wire [16:0] i_sub16_i_14_i_gettanh91_a;
    wire [16:0] i_sub16_i_14_i_gettanh91_b;
    logic [16:0] i_sub16_i_14_i_gettanh91_o;
    wire [16:0] i_sub16_i_14_i_gettanh91_q;
    wire [16:0] i_sub16_i_15_i_gettanh96_a;
    wire [16:0] i_sub16_i_15_i_gettanh96_b;
    logic [16:0] i_sub16_i_15_i_gettanh96_o;
    wire [16:0] i_sub16_i_15_i_gettanh96_q;
    wire [16:0] i_sub16_i_1_i_gettanh26_a;
    wire [16:0] i_sub16_i_1_i_gettanh26_b;
    logic [16:0] i_sub16_i_1_i_gettanh26_o;
    wire [16:0] i_sub16_i_1_i_gettanh26_q;
    wire [16:0] i_sub16_i_2_i_gettanh31_a;
    wire [16:0] i_sub16_i_2_i_gettanh31_b;
    logic [16:0] i_sub16_i_2_i_gettanh31_o;
    wire [16:0] i_sub16_i_2_i_gettanh31_q;
    wire [16:0] i_sub16_i_3_i_gettanh36_a;
    wire [16:0] i_sub16_i_3_i_gettanh36_b;
    logic [16:0] i_sub16_i_3_i_gettanh36_o;
    wire [16:0] i_sub16_i_3_i_gettanh36_q;
    wire [16:0] i_sub16_i_4_i_gettanh41_a;
    wire [16:0] i_sub16_i_4_i_gettanh41_b;
    logic [16:0] i_sub16_i_4_i_gettanh41_o;
    wire [16:0] i_sub16_i_4_i_gettanh41_q;
    wire [16:0] i_sub16_i_5_i_gettanh46_a;
    wire [16:0] i_sub16_i_5_i_gettanh46_b;
    logic [16:0] i_sub16_i_5_i_gettanh46_o;
    wire [16:0] i_sub16_i_5_i_gettanh46_q;
    wire [16:0] i_sub16_i_6_i_gettanh51_a;
    wire [16:0] i_sub16_i_6_i_gettanh51_b;
    logic [16:0] i_sub16_i_6_i_gettanh51_o;
    wire [16:0] i_sub16_i_6_i_gettanh51_q;
    wire [16:0] i_sub16_i_7_i_gettanh56_a;
    wire [16:0] i_sub16_i_7_i_gettanh56_b;
    logic [16:0] i_sub16_i_7_i_gettanh56_o;
    wire [16:0] i_sub16_i_7_i_gettanh56_q;
    wire [16:0] i_sub16_i_8_i_gettanh61_a;
    wire [16:0] i_sub16_i_8_i_gettanh61_b;
    logic [16:0] i_sub16_i_8_i_gettanh61_o;
    wire [16:0] i_sub16_i_8_i_gettanh61_q;
    wire [16:0] i_sub16_i_9_i_gettanh66_a;
    wire [16:0] i_sub16_i_9_i_gettanh66_b;
    logic [16:0] i_sub16_i_9_i_gettanh66_o;
    wire [16:0] i_sub16_i_9_i_gettanh66_q;
    wire [14:0] i_unnamed_gettanh20_vt_const_15_q;
    wire [15:0] i_unnamed_gettanh20_vt_join_q;
    wire [0:0] i_unnamed_gettanh20_vt_select_0_b;
    wire [10:0] bgTrunc_i_fpga_indvars_iv_next_gettanh111_sel_x_b;
    wire [31:0] bgTrunc_i_inc_gettanh101_sel_x_b;
    wire [15:0] bgTrunc_i_sub16_i_10_i_gettanh71_sel_x_b;
    wire [15:0] bgTrunc_i_sub16_i_11_i_gettanh76_sel_x_b;
    wire [15:0] bgTrunc_i_sub16_i_12_i_gettanh81_sel_x_b;
    wire [15:0] bgTrunc_i_sub16_i_13_i_gettanh86_sel_x_b;
    wire [15:0] bgTrunc_i_sub16_i_14_i_gettanh91_sel_x_b;
    wire [15:0] bgTrunc_i_sub16_i_15_i_gettanh96_sel_x_b;
    wire [15:0] bgTrunc_i_sub16_i_1_i_gettanh26_sel_x_b;
    wire [15:0] bgTrunc_i_sub16_i_2_i_gettanh31_sel_x_b;
    wire [15:0] bgTrunc_i_sub16_i_3_i_gettanh36_sel_x_b;
    wire [15:0] bgTrunc_i_sub16_i_4_i_gettanh41_sel_x_b;
    wire [15:0] bgTrunc_i_sub16_i_5_i_gettanh46_sel_x_b;
    wire [15:0] bgTrunc_i_sub16_i_6_i_gettanh51_sel_x_b;
    wire [15:0] bgTrunc_i_sub16_i_7_i_gettanh56_sel_x_b;
    wire [15:0] bgTrunc_i_sub16_i_8_i_gettanh61_sel_x_b;
    wire [15:0] bgTrunc_i_sub16_i_9_i_gettanh66_sel_x_b;
    wire [12:0] i_arrayidx1_gettanh0_add_x_a;
    wire [12:0] i_arrayidx1_gettanh0_add_x_b;
    logic [12:0] i_arrayidx1_gettanh0_add_x_o;
    wire [12:0] i_arrayidx1_gettanh0_add_x_q;
    wire [63:0] i_arrayidx1_gettanh0_append_upper_bits_x_q;
    wire [9:0] i_arrayidx1_gettanh0_narrow_x_b;
    wire [11:0] i_arrayidx1_gettanh0_shift_join_x_q;
    wire [11:0] i_arrayidx1_gettanh0_dupName_0_trunc_sel_x_b;
    wire [11:0] i_arrayidx1_gettanh0_dupName_2_trunc_sel_x_b;
    wire [12:0] i_arrayidx42_gettanh0_add_x_a;
    wire [12:0] i_arrayidx42_gettanh0_add_x_b;
    logic [12:0] i_arrayidx42_gettanh0_add_x_o;
    wire [12:0] i_arrayidx42_gettanh0_add_x_q;
    wire [63:0] i_arrayidx42_gettanh0_append_upper_bits_x_q;
    wire [11:0] i_arrayidx42_gettanh0_dupName_2_trunc_sel_x_b;
    wire [0:0] i_first_cleanup18_gettanh3_sel_x_b;
    wire [63:0] i_idxprom_gettanh14_sel_x_b;
    wire [0:0] i_last_initeration14_gettanh10_sel_x_b;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_gettanh0_NO_NAME_x_a;
    wire [15:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_gettanh0_NO_NAME_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_gettanh0_NO_NAME_x_a;
    wire [15:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_gettanh0_NO_NAME_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_gettanh0_NO_NAME_x_a;
    wire [15:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_gettanh0_NO_NAME_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_gettanh0_NO_NAME_x_a;
    wire [15:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_gettanh0_NO_NAME_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_gettanh0_NO_NAME_x_a;
    wire [15:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_gettanh0_NO_NAME_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_gettanh0_NO_NAME_x_a;
    wire [15:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_gettanh0_NO_NAME_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_gettanh0_NO_NAME_x_a;
    wire [15:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_gettanh0_NO_NAME_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_gettanh0_NO_NAME_x_a;
    wire [15:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_gettanh0_NO_NAME_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_gettanh0_NO_NAME_x_a;
    wire [15:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_gettanh0_NO_NAME_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_gettanh0_NO_NAME_x_a;
    wire [15:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_gettanh0_NO_NAME_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_gettanh0_NO_NAME_x_a;
    wire [15:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_gettanh0_NO_NAME_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_gettanh0_NO_NAME_x_a;
    wire [15:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_gettanh0_NO_NAME_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_gettanh0_NO_NAME_x_a;
    wire [15:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_gettanh0_NO_NAME_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_gettanh0_NO_NAME_x_a;
    wire [15:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_gettanh0_NO_NAME_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_gettanh0_NO_NAME_x_a;
    wire [15:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_gettanh0_NO_NAME_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [15:0] i_rem_lhs_trunc_gettanh19_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    wire [0:0] i_exitcond_gettanh104_cmp_nsign_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid388_i_cleanups_shl17_gettanh0_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid388_i_cleanups_shl17_gettanh0_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid389_i_cleanups_shl17_gettanh0_shift_x_q;
    wire [0:0] leftShiftStage0_uid391_i_cleanups_shl17_gettanh0_shift_x_s;
    reg [3:0] leftShiftStage0_uid391_i_cleanups_shl17_gettanh0_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid395_i_next_initerations12_gettanh0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid397_i_next_initerations12_gettanh0_shift_x_q;
    wire [0:0] rightShiftStage0_uid399_i_next_initerations12_gettanh0_shift_x_s;
    reg [3:0] rightShiftStage0_uid399_i_next_initerations12_gettanh0_shift_x_q;
    wire [14:0] rightShiftStage0Idx1Rng1_uid403_i_unnamed_gettanh0_shift_x_b;
    wire [15:0] rightShiftStage0Idx1_uid405_i_unnamed_gettanh0_shift_x_q;
    wire [0:0] rightShiftStage0_uid407_i_unnamed_gettanh0_shift_x_s;
    reg [15:0] rightShiftStage0_uid407_i_unnamed_gettanh0_shift_x_q;
    wire [13:0] rightShiftStage1Idx1Rng2_uid408_i_unnamed_gettanh0_shift_x_b;
    wire [15:0] rightShiftStage1Idx1_uid410_i_unnamed_gettanh0_shift_x_q;
    wire [0:0] rightShiftStage1_uid412_i_unnamed_gettanh0_shift_x_s;
    reg [15:0] rightShiftStage1_uid412_i_unnamed_gettanh0_shift_x_q;
    wire [11:0] rightShiftStage2Idx1Rng4_uid413_i_unnamed_gettanh0_shift_x_b;
    wire [3:0] rightShiftStage2Idx1Pad4_uid414_i_unnamed_gettanh0_shift_x_q;
    wire [15:0] rightShiftStage2Idx1_uid415_i_unnamed_gettanh0_shift_x_q;
    wire [0:0] rightShiftStage2_uid417_i_unnamed_gettanh0_shift_x_s;
    reg [15:0] rightShiftStage2_uid417_i_unnamed_gettanh0_shift_x_q;
    wire [7:0] rightShiftStage3Idx1Rng8_uid418_i_unnamed_gettanh0_shift_x_b;
    wire [7:0] rightShiftStage3Idx1Pad8_uid419_i_unnamed_gettanh0_shift_x_q;
    wire [15:0] rightShiftStage3Idx1_uid420_i_unnamed_gettanh0_shift_x_q;
    wire [0:0] rightShiftStage3_uid422_i_unnamed_gettanh0_shift_x_s;
    reg [15:0] rightShiftStage3_uid422_i_unnamed_gettanh0_shift_x_q;
    wire [51:0] i_arrayidx1_gettanh0_upper_bits_x_merged_bit_select_b;
    wire [11:0] i_arrayidx1_gettanh0_upper_bits_x_merged_bit_select_c;
    wire [51:0] i_arrayidx42_gettanh0_upper_bits_x_merged_bit_select_b;
    wire [11:0] i_arrayidx42_gettanh0_upper_bits_x_merged_bit_select_c;
    wire [6:0] i_narrow_10_i_gettanh70_vt_select_2_merged_bit_select_in;
    wire [0:0] i_narrow_10_i_gettanh70_vt_select_2_merged_bit_select_b;
    wire [1:0] i_narrow_10_i_gettanh70_vt_select_2_merged_bit_select_c;
    wire [6:0] i_narrow_11_i_gettanh75_vt_select_2_merged_bit_select_in;
    wire [0:0] i_narrow_11_i_gettanh75_vt_select_2_merged_bit_select_b;
    wire [1:0] i_narrow_11_i_gettanh75_vt_select_2_merged_bit_select_c;
    wire [6:0] i_narrow_12_i_gettanh80_vt_select_2_merged_bit_select_in;
    wire [0:0] i_narrow_12_i_gettanh80_vt_select_2_merged_bit_select_b;
    wire [1:0] i_narrow_12_i_gettanh80_vt_select_2_merged_bit_select_c;
    wire [6:0] i_narrow_13_i_gettanh85_vt_select_2_merged_bit_select_in;
    wire [0:0] i_narrow_13_i_gettanh85_vt_select_2_merged_bit_select_b;
    wire [1:0] i_narrow_13_i_gettanh85_vt_select_2_merged_bit_select_c;
    wire [6:0] i_narrow_14_i_gettanh90_vt_select_2_merged_bit_select_in;
    wire [0:0] i_narrow_14_i_gettanh90_vt_select_2_merged_bit_select_b;
    wire [1:0] i_narrow_14_i_gettanh90_vt_select_2_merged_bit_select_c;
    wire [6:0] i_narrow_15_i_gettanh95_vt_select_2_merged_bit_select_in;
    wire [0:0] i_narrow_15_i_gettanh95_vt_select_2_merged_bit_select_b;
    wire [1:0] i_narrow_15_i_gettanh95_vt_select_2_merged_bit_select_c;
    wire [6:0] i_narrow_1_i_gettanh25_vt_select_2_merged_bit_select_in;
    wire [0:0] i_narrow_1_i_gettanh25_vt_select_2_merged_bit_select_b;
    wire [1:0] i_narrow_1_i_gettanh25_vt_select_2_merged_bit_select_c;
    wire [6:0] i_narrow_2_i_gettanh30_vt_select_2_merged_bit_select_in;
    wire [0:0] i_narrow_2_i_gettanh30_vt_select_2_merged_bit_select_b;
    wire [1:0] i_narrow_2_i_gettanh30_vt_select_2_merged_bit_select_c;
    wire [6:0] i_narrow_3_i_gettanh35_vt_select_2_merged_bit_select_in;
    wire [0:0] i_narrow_3_i_gettanh35_vt_select_2_merged_bit_select_b;
    wire [1:0] i_narrow_3_i_gettanh35_vt_select_2_merged_bit_select_c;
    wire [6:0] i_narrow_4_i_gettanh40_vt_select_2_merged_bit_select_in;
    wire [0:0] i_narrow_4_i_gettanh40_vt_select_2_merged_bit_select_b;
    wire [1:0] i_narrow_4_i_gettanh40_vt_select_2_merged_bit_select_c;
    wire [6:0] i_narrow_5_i_gettanh45_vt_select_2_merged_bit_select_in;
    wire [0:0] i_narrow_5_i_gettanh45_vt_select_2_merged_bit_select_b;
    wire [1:0] i_narrow_5_i_gettanh45_vt_select_2_merged_bit_select_c;
    wire [6:0] i_narrow_6_i_gettanh50_vt_select_2_merged_bit_select_in;
    wire [0:0] i_narrow_6_i_gettanh50_vt_select_2_merged_bit_select_b;
    wire [1:0] i_narrow_6_i_gettanh50_vt_select_2_merged_bit_select_c;
    wire [6:0] i_narrow_7_i_gettanh55_vt_select_2_merged_bit_select_in;
    wire [0:0] i_narrow_7_i_gettanh55_vt_select_2_merged_bit_select_b;
    wire [1:0] i_narrow_7_i_gettanh55_vt_select_2_merged_bit_select_c;
    wire [6:0] i_narrow_8_i_gettanh60_vt_select_2_merged_bit_select_in;
    wire [0:0] i_narrow_8_i_gettanh60_vt_select_2_merged_bit_select_b;
    wire [1:0] i_narrow_8_i_gettanh60_vt_select_2_merged_bit_select_c;
    wire [6:0] i_narrow_9_i_gettanh65_vt_select_2_merged_bit_select_in;
    wire [0:0] i_narrow_9_i_gettanh65_vt_select_2_merged_bit_select_b;
    wire [1:0] i_narrow_9_i_gettanh65_vt_select_2_merged_bit_select_c;
    reg [0:0] redist0_valid_fanout_reg0_q_1_q;
    reg [0:0] redist1_sync_together157_aunroll_x_in_c0_eni1_1_tpl_1_q;
    reg [0:0] redist2_sync_together157_aunroll_x_in_c0_eni1_1_tpl_3_q;
    reg [0:0] redist2_sync_together157_aunroll_x_in_c0_eni1_1_tpl_3_delay_0;
    reg [0:0] redist3_sync_together157_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist3_sync_together157_aunroll_x_in_i_valid_3_delay_0;
    reg [0:0] redist3_sync_together157_aunroll_x_in_i_valid_3_delay_1;
    reg [0:0] redist4_sync_together157_aunroll_x_in_i_valid_9_q;
    reg [0:0] redist5_sync_together157_aunroll_x_in_i_valid_14_q;
    reg [0:0] redist5_sync_together157_aunroll_x_in_i_valid_14_delay_0;
    reg [0:0] redist5_sync_together157_aunroll_x_in_i_valid_14_delay_1;
    reg [0:0] redist5_sync_together157_aunroll_x_in_i_valid_14_delay_2;
    reg [0:0] redist5_sync_together157_aunroll_x_in_i_valid_14_delay_3;
    reg [0:0] redist6_sync_together157_aunroll_x_in_i_valid_15_q;
    reg [15:0] redist7_i_rem_lhs_trunc_gettanh19_sel_x_b_1_q;
    reg [15:0] redist8_i_rem_lhs_trunc_gettanh19_sel_x_b_2_q;
    reg [15:0] redist9_i_rem_lhs_trunc_gettanh19_sel_x_b_3_q;
    reg [15:0] redist10_i_rem_lhs_trunc_gettanh19_sel_x_b_4_q;
    reg [15:0] redist11_i_rem_lhs_trunc_gettanh19_sel_x_b_5_q;
    reg [15:0] redist12_i_rem_lhs_trunc_gettanh19_sel_x_b_6_q;
    reg [15:0] redist13_i_rem_lhs_trunc_gettanh19_sel_x_b_7_q;
    reg [15:0] redist14_i_rem_lhs_trunc_gettanh19_sel_x_b_9_q;
    reg [15:0] redist14_i_rem_lhs_trunc_gettanh19_sel_x_b_9_delay_0;
    reg [15:0] redist15_i_rem_lhs_trunc_gettanh19_sel_x_b_11_q;
    reg [15:0] redist15_i_rem_lhs_trunc_gettanh19_sel_x_b_11_delay_0;
    reg [15:0] redist16_i_rem_lhs_trunc_gettanh19_sel_x_b_12_q;
    reg [15:0] redist17_i_rem_lhs_trunc_gettanh19_sel_x_b_13_q;
    reg [15:0] redist18_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_gettanh0_NO_NAME_x_q_1_q;
    reg [15:0] redist19_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_gettanh0_NO_NAME_x_q_1_q;
    reg [15:0] redist20_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_gettanh0_NO_NAME_x_q_1_q;
    reg [15:0] redist21_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_gettanh0_NO_NAME_x_q_1_q;
    reg [15:0] redist22_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_gettanh0_NO_NAME_x_q_1_q;
    reg [15:0] redist23_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_gettanh0_NO_NAME_x_q_1_q;
    reg [15:0] redist24_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_gettanh0_NO_NAME_x_q_1_q;
    reg [15:0] redist25_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_gettanh0_NO_NAME_x_q_1_q;
    reg [15:0] redist26_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_gettanh0_NO_NAME_x_q_1_q;
    reg [15:0] redist28_bgTrunc_i_sub16_i_9_i_gettanh66_sel_x_b_1_q;
    reg [15:0] redist29_bgTrunc_i_sub16_i_1_i_gettanh26_sel_x_b_1_q;
    reg [15:0] redist30_bgTrunc_i_sub16_i_15_i_gettanh96_sel_x_b_1_q;
    reg [15:0] redist31_bgTrunc_i_sub16_i_13_i_gettanh86_sel_x_b_1_q;
    reg [15:0] redist32_bgTrunc_i_sub16_i_12_i_gettanh81_sel_x_b_1_q;
    reg [15:0] redist33_bgTrunc_i_sub16_i_11_i_gettanh76_sel_x_b_1_q;
    reg [0:0] redist34_i_masked22_gettanh113_q_14_q;
    reg [0:0] redist36_i_llvm_fpga_pipeline_keep_going13_gettanh6_out_data_out_1_q;
    reg [0:0] redist37_i_llvm_fpga_pipeline_keep_going13_gettanh6_out_data_out_3_q;
    reg [0:0] redist37_i_llvm_fpga_pipeline_keep_going13_gettanh6_out_data_out_3_delay_0;
    reg [0:0] redist38_i_llvm_fpga_pipeline_keep_going13_gettanh6_out_data_out_17_q;
    reg [0:0] redist39_i_first_cleanup_xor19_gettanh4_q_7_q;
    reg [0:0] redist40_i_first_cleanup_xor19_gettanh4_q_12_q;
    reg [0:0] redist40_i_first_cleanup_xor19_gettanh4_q_12_delay_0;
    reg [0:0] redist40_i_first_cleanup_xor19_gettanh4_q_12_delay_1;
    reg [0:0] redist40_i_first_cleanup_xor19_gettanh4_q_12_delay_2;
    reg [0:0] redist40_i_first_cleanup_xor19_gettanh4_q_12_delay_3;
    reg [0:0] redist41_i_first_cleanup_xor19_gettanh4_q_13_q;
    reg [63:0] redist42_i_arrayidx1_gettanh15_vt_join_q_1_q;
    reg [11:0] redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_outputreg0_q;
    wire redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_mem_reset0;
    wire [11:0] redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_mem_ia;
    wire [1:0] redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_mem_aa;
    wire [1:0] redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_mem_ab;
    wire [11:0] redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_mem_iq;
    wire [11:0] redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_mem_q;
    wire [1:0] redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_rdcnt_q;
    (* preserve *) reg [1:0] redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_rdcnt_i;
    (* preserve *) reg redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_rdcnt_eq;
    reg [1:0] redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_wraddr_q;
    wire [1:0] redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_mem_last_q;
    wire [0:0] redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_cmp_q;
    (* dont_merge *) reg [0:0] redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_cmpReg_q;
    wire [0:0] redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_notEnable_q;
    wire [0:0] redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_nor_q;
    (* dont_merge *) reg [0:0] redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_sticky_ena_q;
    wire [0:0] redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_enaAnd_q;
    reg [31:0] redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_inputreg0_q;
    reg [31:0] redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_outputreg0_q;
    wire redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_mem_reset0;
    wire [31:0] redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_mem_ia;
    wire [2:0] redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_mem_aa;
    wire [2:0] redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_mem_ab;
    wire [31:0] redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_mem_iq;
    wire [31:0] redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_mem_q;
    wire [2:0] redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_rdcnt_q;
    (* preserve *) reg [2:0] redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_rdcnt_i;
    (* preserve *) reg redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_rdcnt_eq;
    reg [2:0] redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_wraddr_q;
    wire [3:0] redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_mem_last_q;
    wire [3:0] redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_cmp_b;
    wire [0:0] redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_cmp_q;
    (* dont_merge *) reg [0:0] redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_cmpReg_q;
    wire [0:0] redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_notEnable_q;
    wire [0:0] redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_nor_q;
    (* dont_merge *) reg [0:0] redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_sticky_ena_q;
    wire [0:0] redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_enaAnd_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist3_sync_together157_aunroll_x_in_i_valid_3(DELAY,443)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together157_aunroll_x_in_i_valid_3_delay_0 <= '0;
            redist3_sync_together157_aunroll_x_in_i_valid_3_delay_1 <= '0;
            redist3_sync_together157_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist3_sync_together157_aunroll_x_in_i_valid_3_delay_0 <= $unsigned(in_i_valid);
            redist3_sync_together157_aunroll_x_in_i_valid_3_delay_1 <= redist3_sync_together157_aunroll_x_in_i_valid_3_delay_0;
            redist3_sync_together157_aunroll_x_in_i_valid_3_q <= redist3_sync_together157_aunroll_x_in_i_valid_3_delay_1;
        end
    end

    // redist36_i_llvm_fpga_pipeline_keep_going13_gettanh6_out_data_out_1(DELAY,476)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_llvm_fpga_pipeline_keep_going13_gettanh6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist36_i_llvm_fpga_pipeline_keep_going13_gettanh6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going13_gettanh6_out_data_out);
        end
    end

    // redist37_i_llvm_fpga_pipeline_keep_going13_gettanh6_out_data_out_3(DELAY,477)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_llvm_fpga_pipeline_keep_going13_gettanh6_out_data_out_3_delay_0 <= '0;
            redist37_i_llvm_fpga_pipeline_keep_going13_gettanh6_out_data_out_3_q <= '0;
        end
        else
        begin
            redist37_i_llvm_fpga_pipeline_keep_going13_gettanh6_out_data_out_3_delay_0 <= $unsigned(redist36_i_llvm_fpga_pipeline_keep_going13_gettanh6_out_data_out_1_q);
            redist37_i_llvm_fpga_pipeline_keep_going13_gettanh6_out_data_out_3_q <= redist37_i_llvm_fpga_pipeline_keep_going13_gettanh6_out_data_out_3_delay_0;
        end
    end

    // leftShiftStage0Idx1Rng1_uid388_i_cleanups_shl17_gettanh0_shift_x(BITSELECT,387)@4
    assign leftShiftStage0Idx1Rng1_uid388_i_cleanups_shl17_gettanh0_shift_x_in = i_llvm_fpga_pop_i4_cleanups16_pop11_gettanh2_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid388_i_cleanups_shl17_gettanh0_shift_x_b = leftShiftStage0Idx1Rng1_uid388_i_cleanups_shl17_gettanh0_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid389_i_cleanups_shl17_gettanh0_shift_x(BITJOIN,388)@4
    assign leftShiftStage0Idx1_uid389_i_cleanups_shl17_gettanh0_shift_x_q = {leftShiftStage0Idx1Rng1_uid388_i_cleanups_shl17_gettanh0_shift_x_b, GND_q};

    // leftShiftStage0_uid391_i_cleanups_shl17_gettanh0_shift_x(MUX,390)@4
    assign leftShiftStage0_uid391_i_cleanups_shl17_gettanh0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid391_i_cleanups_shl17_gettanh0_shift_x_s or i_llvm_fpga_pop_i4_cleanups16_pop11_gettanh2_out_data_out or leftShiftStage0Idx1_uid389_i_cleanups_shl17_gettanh0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid391_i_cleanups_shl17_gettanh0_shift_x_s)
            1'b0 : leftShiftStage0_uid391_i_cleanups_shl17_gettanh0_shift_x_q = i_llvm_fpga_pop_i4_cleanups16_pop11_gettanh2_out_data_out;
            1'b1 : leftShiftStage0_uid391_i_cleanups_shl17_gettanh0_shift_x_q = leftShiftStage0Idx1_uid389_i_cleanups_shl17_gettanh0_shift_x_q;
            default : leftShiftStage0_uid391_i_cleanups_shl17_gettanh0_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl17_gettanh5_vt_select_3(BITSELECT,57)@4
    assign i_cleanups_shl17_gettanh5_vt_select_3_b = leftShiftStage0_uid391_i_cleanups_shl17_gettanh0_shift_x_q[3:1];

    // i_cleanups_shl17_gettanh5_vt_join(BITJOIN,56)@4
    assign i_cleanups_shl17_gettanh5_vt_join_q = {i_cleanups_shl17_gettanh5_vt_select_3_b, GND_q};

    // i_first_cleanup_xor19_gettanh4(LOGICAL,77)@4
    assign i_first_cleanup_xor19_gettanh4_q = i_first_cleanup18_gettanh3_sel_x_b ^ VCC_q;

    // i_notcmp9_gettanh106(LOGICAL,210)@4
    assign i_notcmp9_gettanh106_q = i_exitcond_gettanh104_cmp_nsign_q ^ VCC_q;

    // i_or20_gettanh108(LOGICAL,211)@4
    assign i_or20_gettanh108_q = i_notcmp9_gettanh106_q | i_first_cleanup_xor19_gettanh4_q;

    // i_next_cleanups21_gettanh109(MUX,206)@4
    assign i_next_cleanups21_gettanh109_s = i_or20_gettanh108_q;
    always @(i_next_cleanups21_gettanh109_s or i_llvm_fpga_pop_i4_cleanups16_pop11_gettanh2_out_data_out or i_cleanups_shl17_gettanh5_vt_join_q)
    begin
        unique case (i_next_cleanups21_gettanh109_s)
            1'b0 : i_next_cleanups21_gettanh109_q = i_llvm_fpga_pop_i4_cleanups16_pop11_gettanh2_out_data_out;
            1'b1 : i_next_cleanups21_gettanh109_q = i_cleanups_shl17_gettanh5_vt_join_q;
            default : i_next_cleanups21_gettanh109_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups16_push11_gettanh110(BLACKBOX,98)@4
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    getTanh_i_llvm_fpga_push_i4_cleanups16_push11_gettanh0 thei_llvm_fpga_push_i4_cleanups16_push11_gettanh110 (
        .in_data_in(i_next_cleanups21_gettanh109_q),
        .in_feedback_stall_in_11(i_llvm_fpga_pop_i4_cleanups16_pop11_gettanh2_out_feedback_stall_out_11),
        .in_keep_going13(redist37_i_llvm_fpga_pipeline_keep_going13_gettanh6_out_data_out_3_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together157_aunroll_x_in_i_valid_3_q),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i4_cleanups16_push11_gettanh110_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i4_cleanups16_push11_gettanh110_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together157_aunroll_x_in_c0_eni1_1_tpl_1(DELAY,441)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together157_aunroll_x_in_c0_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together157_aunroll_x_in_c0_eni1_1_tpl_1_q <= $unsigned(in_c0_eni1_1_tpl);
        end
    end

    // redist2_sync_together157_aunroll_x_in_c0_eni1_1_tpl_3(DELAY,442)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together157_aunroll_x_in_c0_eni1_1_tpl_3_delay_0 <= '0;
            redist2_sync_together157_aunroll_x_in_c0_eni1_1_tpl_3_q <= '0;
        end
        else
        begin
            redist2_sync_together157_aunroll_x_in_c0_eni1_1_tpl_3_delay_0 <= $unsigned(redist1_sync_together157_aunroll_x_in_c0_eni1_1_tpl_1_q);
            redist2_sync_together157_aunroll_x_in_c0_eni1_1_tpl_3_q <= redist2_sync_together157_aunroll_x_in_c0_eni1_1_tpl_3_delay_0;
        end
    end

    // c_i4_7129(CONSTANT,45)
    assign c_i4_7129_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups16_pop11_gettanh2(BLACKBOX,92)@4
    // out out_feedback_stall_out_11@20000000
    getTanh_i_llvm_fpga_pop_i4_cleanups16_pop11_gettanh0 thei_llvm_fpga_pop_i4_cleanups16_pop11_gettanh2 (
        .in_data_in(c_i4_7129_q),
        .in_dir(redist2_sync_together157_aunroll_x_in_c0_eni1_1_tpl_3_q),
        .in_feedback_in_11(i_llvm_fpga_push_i4_cleanups16_push11_gettanh110_out_feedback_out_11),
        .in_feedback_valid_in_11(i_llvm_fpga_push_i4_cleanups16_push11_gettanh110_out_feedback_valid_out_11),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together157_aunroll_x_in_i_valid_3_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups16_pop11_gettanh2_out_data_out),
        .out_feedback_stall_out_11(i_llvm_fpga_pop_i4_cleanups16_pop11_gettanh2_out_feedback_stall_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup18_gettanh3_sel_x(BITSELECT,290)@4
    assign i_first_cleanup18_gettanh3_sel_x_b = i_llvm_fpga_pop_i4_cleanups16_pop11_gettanh2_out_data_out[0:0];

    // c_i11_1142(CONSTANT,22)
    assign c_i11_1142_q = $unsigned(11'b11111111111);

    // i_fpga_indvars_iv_next_gettanh111(ADD,79)@4
    assign i_fpga_indvars_iv_next_gettanh111_a = {1'b0, i_llvm_fpga_pop_i11_fpga_indvars_iv_pop8_gettanh103_out_data_out};
    assign i_fpga_indvars_iv_next_gettanh111_b = {1'b0, c_i11_1142_q};
    assign i_fpga_indvars_iv_next_gettanh111_o = $unsigned(i_fpga_indvars_iv_next_gettanh111_a) + $unsigned(i_fpga_indvars_iv_next_gettanh111_b);
    assign i_fpga_indvars_iv_next_gettanh111_q = i_fpga_indvars_iv_next_gettanh111_o[11:0];

    // bgTrunc_i_fpga_indvars_iv_next_gettanh111_sel_x(BITSELECT,238)@4
    assign bgTrunc_i_fpga_indvars_iv_next_gettanh111_sel_x_b = i_fpga_indvars_iv_next_gettanh111_q[10:0];

    // i_llvm_fpga_push_i11_fpga_indvars_iv_push8_gettanh112(BLACKBOX,94)@4
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    getTanh_i_llvm_fpga_push_i11_fpga_indvars_iv_push8_gettanh0 thei_llvm_fpga_push_i11_fpga_indvars_iv_push8_gettanh112 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_gettanh111_sel_x_b),
        .in_feedback_stall_in_8(i_llvm_fpga_pop_i11_fpga_indvars_iv_pop8_gettanh103_out_feedback_stall_out_8),
        .in_keep_going13(redist37_i_llvm_fpga_pipeline_keep_going13_gettanh6_out_data_out_3_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together157_aunroll_x_in_i_valid_3_q),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i11_fpga_indvars_iv_push8_gettanh112_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i11_fpga_indvars_iv_push8_gettanh112_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i11_998140(CONSTANT,23)
    assign c_i11_998140_q = $unsigned(11'b01111100110);

    // i_llvm_fpga_pop_i11_fpga_indvars_iv_pop8_gettanh103(BLACKBOX,90)@4
    // out out_feedback_stall_out_8@20000000
    getTanh_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop8_gettanh0 thei_llvm_fpga_pop_i11_fpga_indvars_iv_pop8_gettanh103 (
        .in_data_in(c_i11_998140_q),
        .in_dir(redist2_sync_together157_aunroll_x_in_c0_eni1_1_tpl_3_q),
        .in_feedback_in_8(i_llvm_fpga_push_i11_fpga_indvars_iv_push8_gettanh112_out_feedback_out_8),
        .in_feedback_valid_in_8(i_llvm_fpga_push_i11_fpga_indvars_iv_push8_gettanh112_out_feedback_valid_out_8),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together157_aunroll_x_in_i_valid_3_q),
        .out_data_out(i_llvm_fpga_pop_i11_fpga_indvars_iv_pop8_gettanh103_out_data_out),
        .out_feedback_stall_out_8(i_llvm_fpga_pop_i11_fpga_indvars_iv_pop8_gettanh103_out_feedback_stall_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_gettanh104_cmp_nsign(LOGICAL,383)@4
    assign i_exitcond_gettanh104_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i11_fpga_indvars_iv_pop8_gettanh103_out_data_out[10:10]));

    // i_llvm_fpga_push_i1_notexitcond23_gettanh107(BLACKBOX,96)@4
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    getTanh_i_llvm_fpga_push_i1_notexitcond23_gettanh0 thei_llvm_fpga_push_i1_notexitcond23_gettanh107 (
        .in_data_in(i_exitcond_gettanh104_cmp_nsign_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going13_gettanh6_out_not_exitcond_stall_out),
        .in_first_cleanup18(i_first_cleanup18_gettanh3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together157_aunroll_x_in_i_valid_3_q),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond23_gettanh107_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond23_gettanh107_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,352)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid395_i_next_initerations12_gettanh0_shift_x(BITSELECT,394)@2
    assign rightShiftStage0Idx1Rng1_uid395_i_next_initerations12_gettanh0_shift_x_b = i_llvm_fpga_pop_i4_initerations11_pop10_gettanh7_out_data_out[3:1];

    // rightShiftStage0Idx1_uid397_i_next_initerations12_gettanh0_shift_x(BITJOIN,396)@2
    assign rightShiftStage0Idx1_uid397_i_next_initerations12_gettanh0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid395_i_next_initerations12_gettanh0_shift_x_b};

    // valid_fanout_reg1(REG,350)@1 + 1
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

    // valid_fanout_reg2(REG,351)@1 + 1
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

    // i_llvm_fpga_push_i4_initerations11_push10_gettanh9(BLACKBOX,99)@2
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    getTanh_i_llvm_fpga_push_i4_initerations11_push10_gettanh0 thei_llvm_fpga_push_i4_initerations11_push10_gettanh9 (
        .in_data_in(i_next_initerations12_gettanh8_vt_join_q),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_i4_initerations11_pop10_gettanh7_out_feedback_stall_out_10),
        .in_keep_going13(redist36_i_llvm_fpga_pipeline_keep_going13_gettanh6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i4_initerations11_push10_gettanh9_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i4_initerations11_push10_gettanh9_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations11_pop10_gettanh7(BLACKBOX,93)@2
    // out out_feedback_stall_out_10@20000000
    getTanh_i_llvm_fpga_pop_i4_initerations11_pop10_gettanh0 thei_llvm_fpga_pop_i4_initerations11_pop10_gettanh7 (
        .in_data_in(c_i4_7129_q),
        .in_dir(redist1_sync_together157_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_10(i_llvm_fpga_push_i4_initerations11_push10_gettanh9_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_i4_initerations11_push10_gettanh9_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_initerations11_pop10_gettanh7_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i4_initerations11_pop10_gettanh7_out_feedback_stall_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid399_i_next_initerations12_gettanh0_shift_x(MUX,398)@2
    assign rightShiftStage0_uid399_i_next_initerations12_gettanh0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid399_i_next_initerations12_gettanh0_shift_x_s or i_llvm_fpga_pop_i4_initerations11_pop10_gettanh7_out_data_out or rightShiftStage0Idx1_uid397_i_next_initerations12_gettanh0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid399_i_next_initerations12_gettanh0_shift_x_s)
            1'b0 : rightShiftStage0_uid399_i_next_initerations12_gettanh0_shift_x_q = i_llvm_fpga_pop_i4_initerations11_pop10_gettanh7_out_data_out;
            1'b1 : rightShiftStage0_uid399_i_next_initerations12_gettanh0_shift_x_q = rightShiftStage0Idx1_uid397_i_next_initerations12_gettanh0_shift_x_q;
            default : rightShiftStage0_uid399_i_next_initerations12_gettanh0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations12_gettanh8_vt_select_2(BITSELECT,209)@2
    assign i_next_initerations12_gettanh8_vt_select_2_b = rightShiftStage0_uid399_i_next_initerations12_gettanh0_shift_x_q[2:0];

    // i_next_initerations12_gettanh8_vt_join(BITJOIN,208)@2
    assign i_next_initerations12_gettanh8_vt_join_q = {GND_q, i_next_initerations12_gettanh8_vt_select_2_b};

    // i_last_initeration14_gettanh10_sel_x(BITSELECT,292)@2
    assign i_last_initeration14_gettanh10_sel_x_b = i_next_initerations12_gettanh8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration15_gettanh11(BLACKBOX,95)@2
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    getTanh_i_llvm_fpga_push_i1_lastiniteration15_gettanh0 thei_llvm_fpga_push_i1_lastiniteration15_gettanh11 (
        .in_data_in(i_last_initeration14_gettanh10_sel_x_b),
        .in_feedback_stall_in_4(i_llvm_fpga_pipeline_keep_going13_gettanh6_out_initeration_stall_out),
        .in_keep_going13(redist36_i_llvm_fpga_pipeline_keep_going13_gettanh6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i1_lastiniteration15_gettanh11_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i1_lastiniteration15_gettanh11_out_feedback_valid_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going13_gettanh6(BLACKBOX,89)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    getTanh_i_llvm_fpga_pipeline_keep_going13_gettanh0 thei_llvm_fpga_pipeline_keep_going13_gettanh6 (
        .in_data_in(in_c0_eni1_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration15_gettanh11_out_feedback_out_4),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration15_gettanh11_out_feedback_valid_out_4),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond23_gettanh107_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond23_gettanh107_out_feedback_valid_out_5),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going13_gettanh6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going13_gettanh6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going13_gettanh6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going13_gettanh6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going13_gettanh6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going13_gettanh6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,48)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_gettanh6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going13_gettanh6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_gettanh6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going13_gettanh6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,235)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going13_gettanh6_out_pipeline_valid_out;

    // redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_notEnable(LOGICAL,502)
    assign redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_nor(LOGICAL,503)
    assign redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_nor_q = ~ (redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_notEnable_q | redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_sticky_ena_q);

    // redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_mem_last(CONSTANT,499)
    assign redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_mem_last_q = $unsigned(4'b0100);

    // redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_cmp(LOGICAL,500)
    assign redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_cmp_b = {1'b0, redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_rdcnt_q};
    assign redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_cmp_q = $unsigned(redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_mem_last_q == redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_cmp_b ? 1'b1 : 1'b0);

    // redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_cmpReg(REG,501)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_cmpReg_q <= $unsigned(redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_cmp_q);
        end
    end

    // redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_sticky_ena(REG,504)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_nor_q == 1'b1)
        begin
            redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_sticky_ena_q <= $unsigned(redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_cmpReg_q);
        end
    end

    // redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_enaAnd(LOGICAL,505)
    assign redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_enaAnd_q = redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_sticky_ena_q & VCC_q;

    // redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_rdcnt(COUNTER,497)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_rdcnt_i <= 3'd0;
            redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_rdcnt_i == 3'd4)
            begin
                redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_rdcnt_eq <= 1'b0;
            end
            if (redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_rdcnt_eq == 1'b1)
            begin
                redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_rdcnt_i <= $unsigned(redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_rdcnt_i <= $unsigned(redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_rdcnt_q = redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_rdcnt_i[2:0];

    // valid_fanout_reg4(REG,353)@1 + 1
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

    // valid_fanout_reg8(REG,357)@1 + 1
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

    // c_i32_1139(CONSTANT,43)
    assign c_i32_1139_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_gettanh101(ADD,84)@2
    assign i_inc_gettanh101_a = {1'b0, i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out};
    assign i_inc_gettanh101_b = {1'b0, c_i32_1139_q};
    assign i_inc_gettanh101_o = $unsigned(i_inc_gettanh101_a) + $unsigned(i_inc_gettanh101_b);
    assign i_inc_gettanh101_q = i_inc_gettanh101_o[32:0];

    // bgTrunc_i_inc_gettanh101_sel_x(BITSELECT,239)@2
    assign bgTrunc_i_inc_gettanh101_sel_x_b = i_inc_gettanh101_q[31:0];

    // i_llvm_fpga_push_i32_j_024_push9_gettanh102(BLACKBOX,97)@2
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    getTanh_i_llvm_fpga_push_i32_j_024_push9_gettanh0 thei_llvm_fpga_push_i32_j_024_push9_gettanh102 (
        .in_data_in(bgTrunc_i_inc_gettanh101_sel_x_b),
        .in_feedback_stall_in_9(i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_feedback_stall_out_9),
        .in_keep_going13(redist36_i_llvm_fpga_pipeline_keep_going13_gettanh6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i32_j_024_push9_gettanh102_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i32_j_024_push9_gettanh102_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_0132(CONSTANT,42)
    assign c_i32_0132_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_j_024_pop9_gettanh12(BLACKBOX,91)@2
    // out out_feedback_stall_out_9@20000000
    getTanh_i_llvm_fpga_pop_i32_j_024_pop9_gettanh0 thei_llvm_fpga_pop_i32_j_024_pop9_gettanh12 (
        .in_data_in(c_i32_0132_q),
        .in_dir(redist1_sync_together157_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_9(i_llvm_fpga_push_i32_j_024_push9_gettanh102_out_feedback_out_9),
        .in_feedback_valid_in_9(i_llvm_fpga_push_i32_j_024_push9_gettanh102_out_feedback_valid_out_9),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out),
        .out_feedback_stall_out_9(i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_feedback_stall_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_inputreg0(DELAY,494)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_inputreg0_q <= '0;
        end
        else
        begin
            redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_inputreg0_q <= $unsigned(i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out);
        end
    end

    // redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_wraddr(REG,498)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_wraddr_q <= $unsigned(redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_rdcnt_q);
        end
    end

    // redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_mem(DUALMEM,496)
    assign redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_mem_ia = $unsigned(redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_inputreg0_q);
    assign redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_mem_aa = redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_wraddr_q;
    assign redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_mem_ab = redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_rdcnt_q;
    assign redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(6),
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
    ) redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_mem_dmem (
        .clocken1(redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_mem_reset0),
        .clock1(clock),
        .address_a(redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_mem_aa),
        .data_a(redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_mem_ab),
        .q_b(redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_mem_iq),
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
    assign redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_mem_q = redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_mem_iq[31:0];

    // redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_outputreg0(DELAY,495)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_outputreg0_q <= '0;
        end
        else
        begin
            redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_outputreg0_q <= $unsigned(redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_mem_q);
        end
    end

    // i_conv_gettanh13(BLACKBOX,74)@11
    // out out_primWireOut@16
    getTanh_flt_i_sfc_logic_s_c0_in_for_body00006uq0cp0ju20cp0jo0ouz thei_conv_gettanh13 (
        .in_0(redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_outputreg0_q),
        .out_primWireOut(i_conv_gettanh13_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together157_aunroll_x_in_i_valid_9(DELAY,444)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist4_sync_together157_aunroll_x_in_i_valid_9 ( .xin(redist3_sync_together157_aunroll_x_in_i_valid_3_q), .xout(redist4_sync_together157_aunroll_x_in_i_valid_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist5_sync_together157_aunroll_x_in_i_valid_14(DELAY,445)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together157_aunroll_x_in_i_valid_14_delay_0 <= '0;
            redist5_sync_together157_aunroll_x_in_i_valid_14_delay_1 <= '0;
            redist5_sync_together157_aunroll_x_in_i_valid_14_delay_2 <= '0;
            redist5_sync_together157_aunroll_x_in_i_valid_14_delay_3 <= '0;
            redist5_sync_together157_aunroll_x_in_i_valid_14_q <= '0;
        end
        else
        begin
            redist5_sync_together157_aunroll_x_in_i_valid_14_delay_0 <= $unsigned(redist4_sync_together157_aunroll_x_in_i_valid_9_q);
            redist5_sync_together157_aunroll_x_in_i_valid_14_delay_1 <= redist5_sync_together157_aunroll_x_in_i_valid_14_delay_0;
            redist5_sync_together157_aunroll_x_in_i_valid_14_delay_2 <= redist5_sync_together157_aunroll_x_in_i_valid_14_delay_1;
            redist5_sync_together157_aunroll_x_in_i_valid_14_delay_3 <= redist5_sync_together157_aunroll_x_in_i_valid_14_delay_2;
            redist5_sync_together157_aunroll_x_in_i_valid_14_q <= redist5_sync_together157_aunroll_x_in_i_valid_14_delay_3;
        end
    end

    // valid_fanout_reg5(REG,354)@15 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist5_sync_together157_aunroll_x_in_i_valid_14_q);
        end
    end

    // redist39_i_first_cleanup_xor19_gettanh4_q_7(DELAY,479)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist39_i_first_cleanup_xor19_gettanh4_q_7 ( .xin(i_first_cleanup_xor19_gettanh4_q), .xout(redist39_i_first_cleanup_xor19_gettanh4_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist40_i_first_cleanup_xor19_gettanh4_q_12(DELAY,480)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_first_cleanup_xor19_gettanh4_q_12_delay_0 <= '0;
            redist40_i_first_cleanup_xor19_gettanh4_q_12_delay_1 <= '0;
            redist40_i_first_cleanup_xor19_gettanh4_q_12_delay_2 <= '0;
            redist40_i_first_cleanup_xor19_gettanh4_q_12_delay_3 <= '0;
            redist40_i_first_cleanup_xor19_gettanh4_q_12_q <= '0;
        end
        else
        begin
            redist40_i_first_cleanup_xor19_gettanh4_q_12_delay_0 <= $unsigned(redist39_i_first_cleanup_xor19_gettanh4_q_7_q);
            redist40_i_first_cleanup_xor19_gettanh4_q_12_delay_1 <= redist40_i_first_cleanup_xor19_gettanh4_q_12_delay_0;
            redist40_i_first_cleanup_xor19_gettanh4_q_12_delay_2 <= redist40_i_first_cleanup_xor19_gettanh4_q_12_delay_1;
            redist40_i_first_cleanup_xor19_gettanh4_q_12_delay_3 <= redist40_i_first_cleanup_xor19_gettanh4_q_12_delay_2;
            redist40_i_first_cleanup_xor19_gettanh4_q_12_q <= redist40_i_first_cleanup_xor19_gettanh4_q_12_delay_3;
        end
    end

    // c_getTanh_A_pmem(CONSTANT,20)
    assign c_getTanh_A_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx1_gettanh0_upper_bits_x_merged_bit_select(BITSELECT,423)@16
    assign i_arrayidx1_gettanh0_upper_bits_x_merged_bit_select_b = c_getTanh_A_pmem_q[63:12];
    assign i_arrayidx1_gettanh0_upper_bits_x_merged_bit_select_c = c_getTanh_A_pmem_q[11:0];

    // redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_notEnable(LOGICAL,490)
    assign redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_nor(LOGICAL,491)
    assign redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_nor_q = ~ (redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_notEnable_q | redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_sticky_ena_q);

    // redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_mem_last(CONSTANT,487)
    assign redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_mem_last_q = $unsigned(2'b01);

    // redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_cmp(LOGICAL,488)
    assign redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_cmp_q = $unsigned(redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_mem_last_q == redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_rdcnt_q ? 1'b1 : 1'b0);

    // redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_cmpReg(REG,489)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_cmpReg_q <= $unsigned(redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_cmp_q);
        end
    end

    // redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_sticky_ena(REG,492)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_nor_q == 1'b1)
        begin
            redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_sticky_ena_q <= $unsigned(redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_cmpReg_q);
        end
    end

    // redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_enaAnd(LOGICAL,493)
    assign redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_enaAnd_q = redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_sticky_ena_q & VCC_q;

    // redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_rdcnt(COUNTER,485)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_rdcnt_i <= 2'd0;
            redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_rdcnt_i == 2'd1)
            begin
                redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_rdcnt_eq <= 1'b0;
            end
            if (redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_rdcnt_eq == 1'b1)
            begin
                redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_rdcnt_i <= $unsigned(redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_rdcnt_i <= $unsigned(redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_rdcnt_q = redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_rdcnt_i[1:0];

    // i_idxprom_gettanh14_sel_x(BITSELECT,291)@11
    assign i_idxprom_gettanh14_sel_x_b = {32'b00000000000000000000000000000000, redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_outputreg0_q[31:0]};

    // i_idxprom_gettanh14_vt_select_31(BITSELECT,83)@11
    assign i_idxprom_gettanh14_vt_select_31_b = i_idxprom_gettanh14_sel_x_b[31:0];

    // i_idxprom_gettanh14_vt_join(BITJOIN,82)@11
    assign i_idxprom_gettanh14_vt_join_q = {c_i32_0132_q, i_idxprom_gettanh14_vt_select_31_b};

    // i_arrayidx1_gettanh0_dupName_0_trunc_sel_x(BITSELECT,272)@11
    assign i_arrayidx1_gettanh0_dupName_0_trunc_sel_x_b = i_idxprom_gettanh14_vt_join_q[11:0];

    // i_arrayidx1_gettanh0_narrow_x(BITSELECT,265)@11
    assign i_arrayidx1_gettanh0_narrow_x_b = i_arrayidx1_gettanh0_dupName_0_trunc_sel_x_b[9:0];

    // i_arrayidx1_gettanh0_shift_join_x(BITJOIN,266)@11
    assign i_arrayidx1_gettanh0_shift_join_x_q = {i_arrayidx1_gettanh0_narrow_x_b, i_arrayidx1_gettanh15_vt_const_1_q};

    // redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_wraddr(REG,486)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_wraddr_q <= $unsigned(redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_rdcnt_q);
        end
    end

    // redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_mem(DUALMEM,484)
    assign redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_mem_ia = $unsigned(i_arrayidx1_gettanh0_shift_join_x_q);
    assign redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_mem_aa = redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_wraddr_q;
    assign redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_mem_ab = redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_rdcnt_q;
    assign redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(12),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(12),
        .widthad_b(2),
        .numwords_b(3),
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
    ) redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_mem_dmem (
        .clocken1(redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_mem_reset0),
        .clock1(clock),
        .address_a(redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_mem_aa),
        .data_a(redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_mem_ab),
        .q_b(redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_mem_iq),
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
    assign redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_mem_q = redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_mem_iq[11:0];

    // redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_outputreg0(DELAY,483)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_outputreg0_q <= '0;
        end
        else
        begin
            redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_outputreg0_q <= $unsigned(redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_mem_q);
        end
    end

    // i_arrayidx1_gettanh0_add_x(ADD,262)@16
    assign i_arrayidx1_gettanh0_add_x_a = {1'b0, i_arrayidx1_gettanh0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx1_gettanh0_add_x_b = {1'b0, redist27_i_arrayidx1_gettanh0_shift_join_x_q_5_outputreg0_q};
    assign i_arrayidx1_gettanh0_add_x_o = $unsigned(i_arrayidx1_gettanh0_add_x_a) + $unsigned(i_arrayidx1_gettanh0_add_x_b);
    assign i_arrayidx1_gettanh0_add_x_q = i_arrayidx1_gettanh0_add_x_o[12:0];

    // i_arrayidx1_gettanh0_dupName_2_trunc_sel_x(BITSELECT,273)@16
    assign i_arrayidx1_gettanh0_dupName_2_trunc_sel_x_b = i_arrayidx1_gettanh0_add_x_q[11:0];

    // i_arrayidx1_gettanh0_append_upper_bits_x(BITJOIN,263)@16
    assign i_arrayidx1_gettanh0_append_upper_bits_x_q = {i_arrayidx1_gettanh0_upper_bits_x_merged_bit_select_b, i_arrayidx1_gettanh0_dupName_2_trunc_sel_x_b};

    // i_arrayidx1_gettanh15_vt_select_63(BITSELECT,51)@16
    assign i_arrayidx1_gettanh15_vt_select_63_b = i_arrayidx1_gettanh0_append_upper_bits_x_q[63:2];

    // i_arrayidx1_gettanh15_vt_const_1(CONSTANT,49)
    assign i_arrayidx1_gettanh15_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx1_gettanh15_vt_join(BITJOIN,50)@16
    assign i_arrayidx1_gettanh15_vt_join_q = {i_arrayidx1_gettanh15_vt_select_63_b, i_arrayidx1_gettanh15_vt_const_1_q};

    // i_llvm_fpga_mem_memdep_gettanh16(BLACKBOX,88)@16
    // out out_memdep_getTanh_avm_address@20000000
    // out out_memdep_getTanh_avm_burstcount@20000000
    // out out_memdep_getTanh_avm_byteenable@20000000
    // out out_memdep_getTanh_avm_enable@20000000
    // out out_memdep_getTanh_avm_read@20000000
    // out out_memdep_getTanh_avm_write@20000000
    // out out_memdep_getTanh_avm_writedata@20000000
    // out out_o_stall@17
    // out out_o_valid@17
    // out out_o_writeack@17
    getTanh_i_llvm_fpga_mem_memdep_gettanh0 thei_llvm_fpga_mem_memdep_gettanh16 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx1_gettanh15_vt_join_q),
        .in_i_predicate(redist40_i_first_cleanup_xor19_gettanh4_q_12_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg5_q),
        .in_i_writedata(i_conv_gettanh13_out_primWireOut),
        .in_memdep_getTanh_avm_readdata(in_memdep_getTanh_avm_readdata),
        .in_memdep_getTanh_avm_readdatavalid(in_memdep_getTanh_avm_readdatavalid),
        .in_memdep_getTanh_avm_waitrequest(in_memdep_getTanh_avm_waitrequest),
        .in_memdep_getTanh_avm_writeack(in_memdep_getTanh_avm_writeack),
        .out_memdep_getTanh_avm_address(i_llvm_fpga_mem_memdep_gettanh16_out_memdep_getTanh_avm_address),
        .out_memdep_getTanh_avm_burstcount(i_llvm_fpga_mem_memdep_gettanh16_out_memdep_getTanh_avm_burstcount),
        .out_memdep_getTanh_avm_byteenable(i_llvm_fpga_mem_memdep_gettanh16_out_memdep_getTanh_avm_byteenable),
        .out_memdep_getTanh_avm_enable(i_llvm_fpga_mem_memdep_gettanh16_out_memdep_getTanh_avm_enable),
        .out_memdep_getTanh_avm_read(i_llvm_fpga_mem_memdep_gettanh16_out_memdep_getTanh_avm_read),
        .out_memdep_getTanh_avm_write(i_llvm_fpga_mem_memdep_gettanh16_out_memdep_getTanh_avm_write),
        .out_memdep_getTanh_avm_writedata(i_llvm_fpga_mem_memdep_gettanh16_out_memdep_getTanh_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(i_llvm_fpga_mem_memdep_gettanh16_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,258)
    assign out_memdep_getTanh_avm_address = i_llvm_fpga_mem_memdep_gettanh16_out_memdep_getTanh_avm_address;
    assign out_memdep_getTanh_avm_enable = i_llvm_fpga_mem_memdep_gettanh16_out_memdep_getTanh_avm_enable;
    assign out_memdep_getTanh_avm_read = i_llvm_fpga_mem_memdep_gettanh16_out_memdep_getTanh_avm_read;
    assign out_memdep_getTanh_avm_write = i_llvm_fpga_mem_memdep_gettanh16_out_memdep_getTanh_avm_write;
    assign out_memdep_getTanh_avm_writedata = i_llvm_fpga_mem_memdep_gettanh16_out_memdep_getTanh_avm_writedata;
    assign out_memdep_getTanh_avm_byteenable = i_llvm_fpga_mem_memdep_gettanh16_out_memdep_getTanh_avm_byteenable;
    assign out_memdep_getTanh_avm_burstcount = i_llvm_fpga_mem_memdep_gettanh16_out_memdep_getTanh_avm_burstcount;

    // valid_fanout_reg6(REG,355)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist4_sync_together157_aunroll_x_in_i_valid_9_q);
        end
    end

    // c_getTanh_addr_pmem(CONSTANT,21)
    assign c_getTanh_addr_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx42_gettanh0_upper_bits_x_merged_bit_select(BITSELECT,424)@11
    assign i_arrayidx42_gettanh0_upper_bits_x_merged_bit_select_b = c_getTanh_addr_pmem_q[63:12];
    assign i_arrayidx42_gettanh0_upper_bits_x_merged_bit_select_c = c_getTanh_addr_pmem_q[11:0];

    // i_arrayidx42_gettanh0_add_x(ADD,274)@11
    assign i_arrayidx42_gettanh0_add_x_a = {1'b0, i_arrayidx42_gettanh0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx42_gettanh0_add_x_b = {1'b0, i_arrayidx1_gettanh0_shift_join_x_q};
    assign i_arrayidx42_gettanh0_add_x_o = $unsigned(i_arrayidx42_gettanh0_add_x_a) + $unsigned(i_arrayidx42_gettanh0_add_x_b);
    assign i_arrayidx42_gettanh0_add_x_q = i_arrayidx42_gettanh0_add_x_o[12:0];

    // i_arrayidx42_gettanh0_dupName_2_trunc_sel_x(BITSELECT,285)@11
    assign i_arrayidx42_gettanh0_dupName_2_trunc_sel_x_b = i_arrayidx42_gettanh0_add_x_q[11:0];

    // i_arrayidx42_gettanh0_append_upper_bits_x(BITJOIN,275)@11
    assign i_arrayidx42_gettanh0_append_upper_bits_x_q = {i_arrayidx42_gettanh0_upper_bits_x_merged_bit_select_b, i_arrayidx42_gettanh0_dupName_2_trunc_sel_x_b};

    // i_arrayidx42_gettanh17_vt_select_63(BITSELECT,54)@11
    assign i_arrayidx42_gettanh17_vt_select_63_b = i_arrayidx42_gettanh0_append_upper_bits_x_q[63:2];

    // i_arrayidx42_gettanh17_vt_join(BITJOIN,53)@11
    assign i_arrayidx42_gettanh17_vt_join_q = {i_arrayidx42_gettanh17_vt_select_63_b, i_arrayidx1_gettanh15_vt_const_1_q};

    // i_llvm_fpga_mem_memdep_1_gettanh18(BLACKBOX,86)@11
    // out out_memdep_1_getTanh_avm_address@20000000
    // out out_memdep_1_getTanh_avm_burstcount@20000000
    // out out_memdep_1_getTanh_avm_byteenable@20000000
    // out out_memdep_1_getTanh_avm_enable@20000000
    // out out_memdep_1_getTanh_avm_read@20000000
    // out out_memdep_1_getTanh_avm_write@20000000
    // out out_memdep_1_getTanh_avm_writedata@20000000
    // out out_o_stall@12
    // out out_o_valid@12
    // out out_o_writeack@12
    getTanh_i_llvm_fpga_mem_memdep_1_gettanh0 thei_llvm_fpga_mem_memdep_1_gettanh18 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx42_gettanh17_vt_join_q),
        .in_i_predicate(redist39_i_first_cleanup_xor19_gettanh4_q_7_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg6_q),
        .in_i_writedata(redist35_i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out_9_outputreg0_q),
        .in_memdep_1_getTanh_avm_readdata(in_memdep_1_getTanh_avm_readdata),
        .in_memdep_1_getTanh_avm_readdatavalid(in_memdep_1_getTanh_avm_readdatavalid),
        .in_memdep_1_getTanh_avm_waitrequest(in_memdep_1_getTanh_avm_waitrequest),
        .in_memdep_1_getTanh_avm_writeack(in_memdep_1_getTanh_avm_writeack),
        .out_memdep_1_getTanh_avm_address(i_llvm_fpga_mem_memdep_1_gettanh18_out_memdep_1_getTanh_avm_address),
        .out_memdep_1_getTanh_avm_burstcount(i_llvm_fpga_mem_memdep_1_gettanh18_out_memdep_1_getTanh_avm_burstcount),
        .out_memdep_1_getTanh_avm_byteenable(i_llvm_fpga_mem_memdep_1_gettanh18_out_memdep_1_getTanh_avm_byteenable),
        .out_memdep_1_getTanh_avm_enable(i_llvm_fpga_mem_memdep_1_gettanh18_out_memdep_1_getTanh_avm_enable),
        .out_memdep_1_getTanh_avm_read(i_llvm_fpga_mem_memdep_1_gettanh18_out_memdep_1_getTanh_avm_read),
        .out_memdep_1_getTanh_avm_write(i_llvm_fpga_mem_memdep_1_gettanh18_out_memdep_1_getTanh_avm_write),
        .out_memdep_1_getTanh_avm_writedata(i_llvm_fpga_mem_memdep_1_gettanh18_out_memdep_1_getTanh_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,260)
    assign out_memdep_1_getTanh_avm_address = i_llvm_fpga_mem_memdep_1_gettanh18_out_memdep_1_getTanh_avm_address;
    assign out_memdep_1_getTanh_avm_enable = i_llvm_fpga_mem_memdep_1_gettanh18_out_memdep_1_getTanh_avm_enable;
    assign out_memdep_1_getTanh_avm_read = i_llvm_fpga_mem_memdep_1_gettanh18_out_memdep_1_getTanh_avm_read;
    assign out_memdep_1_getTanh_avm_write = i_llvm_fpga_mem_memdep_1_gettanh18_out_memdep_1_getTanh_avm_write;
    assign out_memdep_1_getTanh_avm_writedata = i_llvm_fpga_mem_memdep_1_gettanh18_out_memdep_1_getTanh_avm_writedata;
    assign out_memdep_1_getTanh_avm_byteenable = i_llvm_fpga_mem_memdep_1_gettanh18_out_memdep_1_getTanh_avm_byteenable;
    assign out_memdep_1_getTanh_avm_burstcount = i_llvm_fpga_mem_memdep_1_gettanh18_out_memdep_1_getTanh_avm_burstcount;

    // c_float_0_000000e_00138(FLOATCONSTANT,19)
    assign c_float_0_000000e_00138_q = $unsigned(32'b00000000000000000000000000000000);

    // redist6_sync_together157_aunroll_x_in_i_valid_15(DELAY,446)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together157_aunroll_x_in_i_valid_15_q <= '0;
        end
        else
        begin
            redist6_sync_together157_aunroll_x_in_i_valid_15_q <= $unsigned(redist5_sync_together157_aunroll_x_in_i_valid_14_q);
        end
    end

    // valid_fanout_reg7(REG,356)@16 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist6_sync_together157_aunroll_x_in_i_valid_15_q);
        end
    end

    // redist41_i_first_cleanup_xor19_gettanh4_q_13(DELAY,481)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_first_cleanup_xor19_gettanh4_q_13_q <= '0;
        end
        else
        begin
            redist41_i_first_cleanup_xor19_gettanh4_q_13_q <= $unsigned(redist40_i_first_cleanup_xor19_gettanh4_q_12_q);
        end
    end

    // c_i16_0135(CONSTANT,24)
    assign c_i16_0135_q = $unsigned(16'b0000000000000000);

    // i_narrow_10_i_gettanh70_vt_const_15(CONSTANT,103)
    assign i_narrow_10_i_gettanh70_vt_const_15_q = $unsigned(9'b000000000);

    // c_i16_100137(CONSTANT,25)
    assign c_i16_100137_q = $unsigned(16'b0000000001100100);

    // i_cmp13_i_15_i_gettanh94(COMPARE,63)@16
    assign i_cmp13_i_15_i_gettanh94_a = {2'b00, redist25_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_gettanh0_NO_NAME_x_q_1_q};
    assign i_cmp13_i_15_i_gettanh94_b = {2'b00, c_i16_100137_q};
    assign i_cmp13_i_15_i_gettanh94_o = $unsigned(i_cmp13_i_15_i_gettanh94_a) - $unsigned(i_cmp13_i_15_i_gettanh94_b);
    assign i_cmp13_i_15_i_gettanh94_c[0] = i_cmp13_i_15_i_gettanh94_o[17];

    // i_narrow_15_i_gettanh95(MUX,136)@16
    assign i_narrow_15_i_gettanh95_s = i_cmp13_i_15_i_gettanh94_c;
    always @(i_narrow_15_i_gettanh95_s or c_i16_100137_q or c_i16_0135_q)
    begin
        unique case (i_narrow_15_i_gettanh95_s)
            1'b0 : i_narrow_15_i_gettanh95_q = c_i16_100137_q;
            1'b1 : i_narrow_15_i_gettanh95_q = c_i16_0135_q;
            default : i_narrow_15_i_gettanh95_q = 16'b0;
        endcase
    end

    // i_narrow_15_i_gettanh95_vt_select_2_merged_bit_select(BITSELECT,430)@16
    assign i_narrow_15_i_gettanh95_vt_select_2_merged_bit_select_in = i_narrow_15_i_gettanh95_q[6:0];
    assign i_narrow_15_i_gettanh95_vt_select_2_merged_bit_select_b = i_narrow_15_i_gettanh95_vt_select_2_merged_bit_select_in[2:2];
    assign i_narrow_15_i_gettanh95_vt_select_2_merged_bit_select_c = i_narrow_15_i_gettanh95_vt_select_2_merged_bit_select_in[6:5];

    // i_narrow_15_i_gettanh95_vt_join(BITJOIN,140)@16
    assign i_narrow_15_i_gettanh95_vt_join_q = {i_narrow_10_i_gettanh70_vt_const_15_q, i_narrow_15_i_gettanh95_vt_select_2_merged_bit_select_c, i_arrayidx1_gettanh15_vt_const_1_q, i_narrow_15_i_gettanh95_vt_select_2_merged_bit_select_b, i_arrayidx1_gettanh15_vt_const_1_q};

    // c_i8_222(CONSTANT,46)
    assign c_i8_222_q = $unsigned(8'b00000010);

    // i_cmp13_i_14_i_gettanh89(COMPARE,62)@15
    assign i_cmp13_i_14_i_gettanh89_a = {2'b00, i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_gettanh0_NO_NAME_x_q};
    assign i_cmp13_i_14_i_gettanh89_b = {2'b00, c_i16_100137_q};
    assign i_cmp13_i_14_i_gettanh89_o = $unsigned(i_cmp13_i_14_i_gettanh89_a) - $unsigned(i_cmp13_i_14_i_gettanh89_b);
    assign i_cmp13_i_14_i_gettanh89_c[0] = i_cmp13_i_14_i_gettanh89_o[17];

    // i_narrow_14_i_gettanh90(MUX,129)@15
    assign i_narrow_14_i_gettanh90_s = i_cmp13_i_14_i_gettanh89_c;
    always @(i_narrow_14_i_gettanh90_s or c_i16_100137_q or c_i16_0135_q)
    begin
        unique case (i_narrow_14_i_gettanh90_s)
            1'b0 : i_narrow_14_i_gettanh90_q = c_i16_100137_q;
            1'b1 : i_narrow_14_i_gettanh90_q = c_i16_0135_q;
            default : i_narrow_14_i_gettanh90_q = 16'b0;
        endcase
    end

    // i_narrow_14_i_gettanh90_vt_select_2_merged_bit_select(BITSELECT,429)@15
    assign i_narrow_14_i_gettanh90_vt_select_2_merged_bit_select_in = i_narrow_14_i_gettanh90_q[6:0];
    assign i_narrow_14_i_gettanh90_vt_select_2_merged_bit_select_b = i_narrow_14_i_gettanh90_vt_select_2_merged_bit_select_in[2:2];
    assign i_narrow_14_i_gettanh90_vt_select_2_merged_bit_select_c = i_narrow_14_i_gettanh90_vt_select_2_merged_bit_select_in[6:5];

    // i_narrow_14_i_gettanh90_vt_join(BITJOIN,133)@15
    assign i_narrow_14_i_gettanh90_vt_join_q = {i_narrow_10_i_gettanh70_vt_const_15_q, i_narrow_14_i_gettanh90_vt_select_2_merged_bit_select_c, i_arrayidx1_gettanh15_vt_const_1_q, i_narrow_14_i_gettanh90_vt_select_2_merged_bit_select_b, i_arrayidx1_gettanh15_vt_const_1_q};

    // i_cmp13_i_13_i_gettanh84(COMPARE,61)@14
    assign i_cmp13_i_13_i_gettanh84_a = {2'b00, i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_gettanh0_NO_NAME_x_q};
    assign i_cmp13_i_13_i_gettanh84_b = {2'b00, c_i16_100137_q};
    assign i_cmp13_i_13_i_gettanh84_o = $unsigned(i_cmp13_i_13_i_gettanh84_a) - $unsigned(i_cmp13_i_13_i_gettanh84_b);
    assign i_cmp13_i_13_i_gettanh84_c[0] = i_cmp13_i_13_i_gettanh84_o[17];

    // i_narrow_13_i_gettanh85(MUX,122)@14
    assign i_narrow_13_i_gettanh85_s = i_cmp13_i_13_i_gettanh84_c;
    always @(i_narrow_13_i_gettanh85_s or c_i16_100137_q or c_i16_0135_q)
    begin
        unique case (i_narrow_13_i_gettanh85_s)
            1'b0 : i_narrow_13_i_gettanh85_q = c_i16_100137_q;
            1'b1 : i_narrow_13_i_gettanh85_q = c_i16_0135_q;
            default : i_narrow_13_i_gettanh85_q = 16'b0;
        endcase
    end

    // i_narrow_13_i_gettanh85_vt_select_2_merged_bit_select(BITSELECT,428)@14
    assign i_narrow_13_i_gettanh85_vt_select_2_merged_bit_select_in = i_narrow_13_i_gettanh85_q[6:0];
    assign i_narrow_13_i_gettanh85_vt_select_2_merged_bit_select_b = i_narrow_13_i_gettanh85_vt_select_2_merged_bit_select_in[2:2];
    assign i_narrow_13_i_gettanh85_vt_select_2_merged_bit_select_c = i_narrow_13_i_gettanh85_vt_select_2_merged_bit_select_in[6:5];

    // i_narrow_13_i_gettanh85_vt_join(BITJOIN,126)@14
    assign i_narrow_13_i_gettanh85_vt_join_q = {i_narrow_10_i_gettanh70_vt_const_15_q, i_narrow_13_i_gettanh85_vt_select_2_merged_bit_select_c, i_arrayidx1_gettanh15_vt_const_1_q, i_narrow_13_i_gettanh85_vt_select_2_merged_bit_select_b, i_arrayidx1_gettanh15_vt_const_1_q};

    // i_cmp13_i_12_i_gettanh79(COMPARE,60)@13
    assign i_cmp13_i_12_i_gettanh79_a = {2'b00, i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_gettanh0_NO_NAME_x_q};
    assign i_cmp13_i_12_i_gettanh79_b = {2'b00, c_i16_100137_q};
    assign i_cmp13_i_12_i_gettanh79_o = $unsigned(i_cmp13_i_12_i_gettanh79_a) - $unsigned(i_cmp13_i_12_i_gettanh79_b);
    assign i_cmp13_i_12_i_gettanh79_c[0] = i_cmp13_i_12_i_gettanh79_o[17];

    // i_narrow_12_i_gettanh80(MUX,115)@13
    assign i_narrow_12_i_gettanh80_s = i_cmp13_i_12_i_gettanh79_c;
    always @(i_narrow_12_i_gettanh80_s or c_i16_100137_q or c_i16_0135_q)
    begin
        unique case (i_narrow_12_i_gettanh80_s)
            1'b0 : i_narrow_12_i_gettanh80_q = c_i16_100137_q;
            1'b1 : i_narrow_12_i_gettanh80_q = c_i16_0135_q;
            default : i_narrow_12_i_gettanh80_q = 16'b0;
        endcase
    end

    // i_narrow_12_i_gettanh80_vt_select_2_merged_bit_select(BITSELECT,427)@13
    assign i_narrow_12_i_gettanh80_vt_select_2_merged_bit_select_in = i_narrow_12_i_gettanh80_q[6:0];
    assign i_narrow_12_i_gettanh80_vt_select_2_merged_bit_select_b = i_narrow_12_i_gettanh80_vt_select_2_merged_bit_select_in[2:2];
    assign i_narrow_12_i_gettanh80_vt_select_2_merged_bit_select_c = i_narrow_12_i_gettanh80_vt_select_2_merged_bit_select_in[6:5];

    // i_narrow_12_i_gettanh80_vt_join(BITJOIN,119)@13
    assign i_narrow_12_i_gettanh80_vt_join_q = {i_narrow_10_i_gettanh70_vt_const_15_q, i_narrow_12_i_gettanh80_vt_select_2_merged_bit_select_c, i_arrayidx1_gettanh15_vt_const_1_q, i_narrow_12_i_gettanh80_vt_select_2_merged_bit_select_b, i_arrayidx1_gettanh15_vt_const_1_q};

    // i_cmp13_i_11_i_gettanh74(COMPARE,59)@12
    assign i_cmp13_i_11_i_gettanh74_a = {2'b00, redist26_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_gettanh0_NO_NAME_x_q_1_q};
    assign i_cmp13_i_11_i_gettanh74_b = {2'b00, c_i16_100137_q};
    assign i_cmp13_i_11_i_gettanh74_o = $unsigned(i_cmp13_i_11_i_gettanh74_a) - $unsigned(i_cmp13_i_11_i_gettanh74_b);
    assign i_cmp13_i_11_i_gettanh74_c[0] = i_cmp13_i_11_i_gettanh74_o[17];

    // i_narrow_11_i_gettanh75(MUX,108)@12
    assign i_narrow_11_i_gettanh75_s = i_cmp13_i_11_i_gettanh74_c;
    always @(i_narrow_11_i_gettanh75_s or c_i16_100137_q or c_i16_0135_q)
    begin
        unique case (i_narrow_11_i_gettanh75_s)
            1'b0 : i_narrow_11_i_gettanh75_q = c_i16_100137_q;
            1'b1 : i_narrow_11_i_gettanh75_q = c_i16_0135_q;
            default : i_narrow_11_i_gettanh75_q = 16'b0;
        endcase
    end

    // i_narrow_11_i_gettanh75_vt_select_2_merged_bit_select(BITSELECT,426)@12
    assign i_narrow_11_i_gettanh75_vt_select_2_merged_bit_select_in = i_narrow_11_i_gettanh75_q[6:0];
    assign i_narrow_11_i_gettanh75_vt_select_2_merged_bit_select_b = i_narrow_11_i_gettanh75_vt_select_2_merged_bit_select_in[2:2];
    assign i_narrow_11_i_gettanh75_vt_select_2_merged_bit_select_c = i_narrow_11_i_gettanh75_vt_select_2_merged_bit_select_in[6:5];

    // i_narrow_11_i_gettanh75_vt_join(BITJOIN,112)@12
    assign i_narrow_11_i_gettanh75_vt_join_q = {i_narrow_10_i_gettanh70_vt_const_15_q, i_narrow_11_i_gettanh75_vt_select_2_merged_bit_select_c, i_arrayidx1_gettanh15_vt_const_1_q, i_narrow_11_i_gettanh75_vt_select_2_merged_bit_select_b, i_arrayidx1_gettanh15_vt_const_1_q};

    // i_cmp13_i_10_i_gettanh69(COMPARE,58)@11
    assign i_cmp13_i_10_i_gettanh69_a = {2'b00, i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_gettanh0_NO_NAME_x_q};
    assign i_cmp13_i_10_i_gettanh69_b = {2'b00, c_i16_100137_q};
    assign i_cmp13_i_10_i_gettanh69_o = $unsigned(i_cmp13_i_10_i_gettanh69_a) - $unsigned(i_cmp13_i_10_i_gettanh69_b);
    assign i_cmp13_i_10_i_gettanh69_c[0] = i_cmp13_i_10_i_gettanh69_o[17];

    // i_narrow_10_i_gettanh70(MUX,101)@11
    assign i_narrow_10_i_gettanh70_s = i_cmp13_i_10_i_gettanh69_c;
    always @(i_narrow_10_i_gettanh70_s or c_i16_100137_q or c_i16_0135_q)
    begin
        unique case (i_narrow_10_i_gettanh70_s)
            1'b0 : i_narrow_10_i_gettanh70_q = c_i16_100137_q;
            1'b1 : i_narrow_10_i_gettanh70_q = c_i16_0135_q;
            default : i_narrow_10_i_gettanh70_q = 16'b0;
        endcase
    end

    // i_narrow_10_i_gettanh70_vt_select_2_merged_bit_select(BITSELECT,425)@11
    assign i_narrow_10_i_gettanh70_vt_select_2_merged_bit_select_in = i_narrow_10_i_gettanh70_q[6:0];
    assign i_narrow_10_i_gettanh70_vt_select_2_merged_bit_select_b = i_narrow_10_i_gettanh70_vt_select_2_merged_bit_select_in[2:2];
    assign i_narrow_10_i_gettanh70_vt_select_2_merged_bit_select_c = i_narrow_10_i_gettanh70_vt_select_2_merged_bit_select_in[6:5];

    // i_narrow_10_i_gettanh70_vt_join(BITJOIN,105)@11
    assign i_narrow_10_i_gettanh70_vt_join_q = {i_narrow_10_i_gettanh70_vt_const_15_q, i_narrow_10_i_gettanh70_vt_select_2_merged_bit_select_c, i_arrayidx1_gettanh15_vt_const_1_q, i_narrow_10_i_gettanh70_vt_select_2_merged_bit_select_b, i_arrayidx1_gettanh15_vt_const_1_q};

    // i_cmp13_i_9_i_gettanh64(COMPARE,72)@10
    assign i_cmp13_i_9_i_gettanh64_a = {2'b00, redist18_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_gettanh0_NO_NAME_x_q_1_q};
    assign i_cmp13_i_9_i_gettanh64_b = {2'b00, c_i16_100137_q};
    assign i_cmp13_i_9_i_gettanh64_o = $unsigned(i_cmp13_i_9_i_gettanh64_a) - $unsigned(i_cmp13_i_9_i_gettanh64_b);
    assign i_cmp13_i_9_i_gettanh64_c[0] = i_cmp13_i_9_i_gettanh64_o[17];

    // i_narrow_9_i_gettanh65(MUX,199)@10
    assign i_narrow_9_i_gettanh65_s = i_cmp13_i_9_i_gettanh64_c;
    always @(i_narrow_9_i_gettanh65_s or c_i16_100137_q or c_i16_0135_q)
    begin
        unique case (i_narrow_9_i_gettanh65_s)
            1'b0 : i_narrow_9_i_gettanh65_q = c_i16_100137_q;
            1'b1 : i_narrow_9_i_gettanh65_q = c_i16_0135_q;
            default : i_narrow_9_i_gettanh65_q = 16'b0;
        endcase
    end

    // i_narrow_9_i_gettanh65_vt_select_2_merged_bit_select(BITSELECT,439)@10
    assign i_narrow_9_i_gettanh65_vt_select_2_merged_bit_select_in = i_narrow_9_i_gettanh65_q[6:0];
    assign i_narrow_9_i_gettanh65_vt_select_2_merged_bit_select_b = i_narrow_9_i_gettanh65_vt_select_2_merged_bit_select_in[2:2];
    assign i_narrow_9_i_gettanh65_vt_select_2_merged_bit_select_c = i_narrow_9_i_gettanh65_vt_select_2_merged_bit_select_in[6:5];

    // i_narrow_9_i_gettanh65_vt_join(BITJOIN,203)@10
    assign i_narrow_9_i_gettanh65_vt_join_q = {i_narrow_10_i_gettanh70_vt_const_15_q, i_narrow_9_i_gettanh65_vt_select_2_merged_bit_select_c, i_arrayidx1_gettanh15_vt_const_1_q, i_narrow_9_i_gettanh65_vt_select_2_merged_bit_select_b, i_arrayidx1_gettanh15_vt_const_1_q};

    // i_cmp13_i_8_i_gettanh59(COMPARE,71)@9
    assign i_cmp13_i_8_i_gettanh59_a = {2'b00, redist19_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_gettanh0_NO_NAME_x_q_1_q};
    assign i_cmp13_i_8_i_gettanh59_b = {2'b00, c_i16_100137_q};
    assign i_cmp13_i_8_i_gettanh59_o = $unsigned(i_cmp13_i_8_i_gettanh59_a) - $unsigned(i_cmp13_i_8_i_gettanh59_b);
    assign i_cmp13_i_8_i_gettanh59_c[0] = i_cmp13_i_8_i_gettanh59_o[17];

    // i_narrow_8_i_gettanh60(MUX,192)@9
    assign i_narrow_8_i_gettanh60_s = i_cmp13_i_8_i_gettanh59_c;
    always @(i_narrow_8_i_gettanh60_s or c_i16_100137_q or c_i16_0135_q)
    begin
        unique case (i_narrow_8_i_gettanh60_s)
            1'b0 : i_narrow_8_i_gettanh60_q = c_i16_100137_q;
            1'b1 : i_narrow_8_i_gettanh60_q = c_i16_0135_q;
            default : i_narrow_8_i_gettanh60_q = 16'b0;
        endcase
    end

    // i_narrow_8_i_gettanh60_vt_select_2_merged_bit_select(BITSELECT,438)@9
    assign i_narrow_8_i_gettanh60_vt_select_2_merged_bit_select_in = i_narrow_8_i_gettanh60_q[6:0];
    assign i_narrow_8_i_gettanh60_vt_select_2_merged_bit_select_b = i_narrow_8_i_gettanh60_vt_select_2_merged_bit_select_in[2:2];
    assign i_narrow_8_i_gettanh60_vt_select_2_merged_bit_select_c = i_narrow_8_i_gettanh60_vt_select_2_merged_bit_select_in[6:5];

    // i_narrow_8_i_gettanh60_vt_join(BITJOIN,196)@9
    assign i_narrow_8_i_gettanh60_vt_join_q = {i_narrow_10_i_gettanh70_vt_const_15_q, i_narrow_8_i_gettanh60_vt_select_2_merged_bit_select_c, i_arrayidx1_gettanh15_vt_const_1_q, i_narrow_8_i_gettanh60_vt_select_2_merged_bit_select_b, i_arrayidx1_gettanh15_vt_const_1_q};

    // i_cmp13_i_7_i_gettanh54(COMPARE,70)@8
    assign i_cmp13_i_7_i_gettanh54_a = {2'b00, redist20_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_gettanh0_NO_NAME_x_q_1_q};
    assign i_cmp13_i_7_i_gettanh54_b = {2'b00, c_i16_100137_q};
    assign i_cmp13_i_7_i_gettanh54_o = $unsigned(i_cmp13_i_7_i_gettanh54_a) - $unsigned(i_cmp13_i_7_i_gettanh54_b);
    assign i_cmp13_i_7_i_gettanh54_c[0] = i_cmp13_i_7_i_gettanh54_o[17];

    // i_narrow_7_i_gettanh55(MUX,185)@8
    assign i_narrow_7_i_gettanh55_s = i_cmp13_i_7_i_gettanh54_c;
    always @(i_narrow_7_i_gettanh55_s or c_i16_100137_q or c_i16_0135_q)
    begin
        unique case (i_narrow_7_i_gettanh55_s)
            1'b0 : i_narrow_7_i_gettanh55_q = c_i16_100137_q;
            1'b1 : i_narrow_7_i_gettanh55_q = c_i16_0135_q;
            default : i_narrow_7_i_gettanh55_q = 16'b0;
        endcase
    end

    // i_narrow_7_i_gettanh55_vt_select_2_merged_bit_select(BITSELECT,437)@8
    assign i_narrow_7_i_gettanh55_vt_select_2_merged_bit_select_in = i_narrow_7_i_gettanh55_q[6:0];
    assign i_narrow_7_i_gettanh55_vt_select_2_merged_bit_select_b = i_narrow_7_i_gettanh55_vt_select_2_merged_bit_select_in[2:2];
    assign i_narrow_7_i_gettanh55_vt_select_2_merged_bit_select_c = i_narrow_7_i_gettanh55_vt_select_2_merged_bit_select_in[6:5];

    // i_narrow_7_i_gettanh55_vt_join(BITJOIN,189)@8
    assign i_narrow_7_i_gettanh55_vt_join_q = {i_narrow_10_i_gettanh70_vt_const_15_q, i_narrow_7_i_gettanh55_vt_select_2_merged_bit_select_c, i_arrayidx1_gettanh15_vt_const_1_q, i_narrow_7_i_gettanh55_vt_select_2_merged_bit_select_b, i_arrayidx1_gettanh15_vt_const_1_q};

    // i_cmp13_i_6_i_gettanh49(COMPARE,69)@7
    assign i_cmp13_i_6_i_gettanh49_a = {2'b00, redist21_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_gettanh0_NO_NAME_x_q_1_q};
    assign i_cmp13_i_6_i_gettanh49_b = {2'b00, c_i16_100137_q};
    assign i_cmp13_i_6_i_gettanh49_o = $unsigned(i_cmp13_i_6_i_gettanh49_a) - $unsigned(i_cmp13_i_6_i_gettanh49_b);
    assign i_cmp13_i_6_i_gettanh49_c[0] = i_cmp13_i_6_i_gettanh49_o[17];

    // i_narrow_6_i_gettanh50(MUX,178)@7
    assign i_narrow_6_i_gettanh50_s = i_cmp13_i_6_i_gettanh49_c;
    always @(i_narrow_6_i_gettanh50_s or c_i16_100137_q or c_i16_0135_q)
    begin
        unique case (i_narrow_6_i_gettanh50_s)
            1'b0 : i_narrow_6_i_gettanh50_q = c_i16_100137_q;
            1'b1 : i_narrow_6_i_gettanh50_q = c_i16_0135_q;
            default : i_narrow_6_i_gettanh50_q = 16'b0;
        endcase
    end

    // i_narrow_6_i_gettanh50_vt_select_2_merged_bit_select(BITSELECT,436)@7
    assign i_narrow_6_i_gettanh50_vt_select_2_merged_bit_select_in = i_narrow_6_i_gettanh50_q[6:0];
    assign i_narrow_6_i_gettanh50_vt_select_2_merged_bit_select_b = i_narrow_6_i_gettanh50_vt_select_2_merged_bit_select_in[2:2];
    assign i_narrow_6_i_gettanh50_vt_select_2_merged_bit_select_c = i_narrow_6_i_gettanh50_vt_select_2_merged_bit_select_in[6:5];

    // i_narrow_6_i_gettanh50_vt_join(BITJOIN,182)@7
    assign i_narrow_6_i_gettanh50_vt_join_q = {i_narrow_10_i_gettanh70_vt_const_15_q, i_narrow_6_i_gettanh50_vt_select_2_merged_bit_select_c, i_arrayidx1_gettanh15_vt_const_1_q, i_narrow_6_i_gettanh50_vt_select_2_merged_bit_select_b, i_arrayidx1_gettanh15_vt_const_1_q};

    // i_cmp13_i_5_i_gettanh44(COMPARE,68)@6
    assign i_cmp13_i_5_i_gettanh44_a = {2'b00, redist22_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_gettanh0_NO_NAME_x_q_1_q};
    assign i_cmp13_i_5_i_gettanh44_b = {2'b00, c_i16_100137_q};
    assign i_cmp13_i_5_i_gettanh44_o = $unsigned(i_cmp13_i_5_i_gettanh44_a) - $unsigned(i_cmp13_i_5_i_gettanh44_b);
    assign i_cmp13_i_5_i_gettanh44_c[0] = i_cmp13_i_5_i_gettanh44_o[17];

    // i_narrow_5_i_gettanh45(MUX,171)@6
    assign i_narrow_5_i_gettanh45_s = i_cmp13_i_5_i_gettanh44_c;
    always @(i_narrow_5_i_gettanh45_s or c_i16_100137_q or c_i16_0135_q)
    begin
        unique case (i_narrow_5_i_gettanh45_s)
            1'b0 : i_narrow_5_i_gettanh45_q = c_i16_100137_q;
            1'b1 : i_narrow_5_i_gettanh45_q = c_i16_0135_q;
            default : i_narrow_5_i_gettanh45_q = 16'b0;
        endcase
    end

    // i_narrow_5_i_gettanh45_vt_select_2_merged_bit_select(BITSELECT,435)@6
    assign i_narrow_5_i_gettanh45_vt_select_2_merged_bit_select_in = i_narrow_5_i_gettanh45_q[6:0];
    assign i_narrow_5_i_gettanh45_vt_select_2_merged_bit_select_b = i_narrow_5_i_gettanh45_vt_select_2_merged_bit_select_in[2:2];
    assign i_narrow_5_i_gettanh45_vt_select_2_merged_bit_select_c = i_narrow_5_i_gettanh45_vt_select_2_merged_bit_select_in[6:5];

    // i_narrow_5_i_gettanh45_vt_join(BITJOIN,175)@6
    assign i_narrow_5_i_gettanh45_vt_join_q = {i_narrow_10_i_gettanh70_vt_const_15_q, i_narrow_5_i_gettanh45_vt_select_2_merged_bit_select_c, i_arrayidx1_gettanh15_vt_const_1_q, i_narrow_5_i_gettanh45_vt_select_2_merged_bit_select_b, i_arrayidx1_gettanh15_vt_const_1_q};

    // i_cmp13_i_4_i_gettanh39(COMPARE,67)@5
    assign i_cmp13_i_4_i_gettanh39_a = {2'b00, redist23_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_gettanh0_NO_NAME_x_q_1_q};
    assign i_cmp13_i_4_i_gettanh39_b = {2'b00, c_i16_100137_q};
    assign i_cmp13_i_4_i_gettanh39_o = $unsigned(i_cmp13_i_4_i_gettanh39_a) - $unsigned(i_cmp13_i_4_i_gettanh39_b);
    assign i_cmp13_i_4_i_gettanh39_c[0] = i_cmp13_i_4_i_gettanh39_o[17];

    // i_narrow_4_i_gettanh40(MUX,164)@5
    assign i_narrow_4_i_gettanh40_s = i_cmp13_i_4_i_gettanh39_c;
    always @(i_narrow_4_i_gettanh40_s or c_i16_100137_q or c_i16_0135_q)
    begin
        unique case (i_narrow_4_i_gettanh40_s)
            1'b0 : i_narrow_4_i_gettanh40_q = c_i16_100137_q;
            1'b1 : i_narrow_4_i_gettanh40_q = c_i16_0135_q;
            default : i_narrow_4_i_gettanh40_q = 16'b0;
        endcase
    end

    // i_narrow_4_i_gettanh40_vt_select_2_merged_bit_select(BITSELECT,434)@5
    assign i_narrow_4_i_gettanh40_vt_select_2_merged_bit_select_in = i_narrow_4_i_gettanh40_q[6:0];
    assign i_narrow_4_i_gettanh40_vt_select_2_merged_bit_select_b = i_narrow_4_i_gettanh40_vt_select_2_merged_bit_select_in[2:2];
    assign i_narrow_4_i_gettanh40_vt_select_2_merged_bit_select_c = i_narrow_4_i_gettanh40_vt_select_2_merged_bit_select_in[6:5];

    // i_narrow_4_i_gettanh40_vt_join(BITJOIN,168)@5
    assign i_narrow_4_i_gettanh40_vt_join_q = {i_narrow_10_i_gettanh70_vt_const_15_q, i_narrow_4_i_gettanh40_vt_select_2_merged_bit_select_c, i_arrayidx1_gettanh15_vt_const_1_q, i_narrow_4_i_gettanh40_vt_select_2_merged_bit_select_b, i_arrayidx1_gettanh15_vt_const_1_q};

    // i_cmp13_i_3_i_gettanh34(COMPARE,66)@4
    assign i_cmp13_i_3_i_gettanh34_a = {2'b00, redist24_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_gettanh0_NO_NAME_x_q_1_q};
    assign i_cmp13_i_3_i_gettanh34_b = {2'b00, c_i16_100137_q};
    assign i_cmp13_i_3_i_gettanh34_o = $unsigned(i_cmp13_i_3_i_gettanh34_a) - $unsigned(i_cmp13_i_3_i_gettanh34_b);
    assign i_cmp13_i_3_i_gettanh34_c[0] = i_cmp13_i_3_i_gettanh34_o[17];

    // i_narrow_3_i_gettanh35(MUX,157)@4
    assign i_narrow_3_i_gettanh35_s = i_cmp13_i_3_i_gettanh34_c;
    always @(i_narrow_3_i_gettanh35_s or c_i16_100137_q or c_i16_0135_q)
    begin
        unique case (i_narrow_3_i_gettanh35_s)
            1'b0 : i_narrow_3_i_gettanh35_q = c_i16_100137_q;
            1'b1 : i_narrow_3_i_gettanh35_q = c_i16_0135_q;
            default : i_narrow_3_i_gettanh35_q = 16'b0;
        endcase
    end

    // i_narrow_3_i_gettanh35_vt_select_2_merged_bit_select(BITSELECT,433)@4
    assign i_narrow_3_i_gettanh35_vt_select_2_merged_bit_select_in = i_narrow_3_i_gettanh35_q[6:0];
    assign i_narrow_3_i_gettanh35_vt_select_2_merged_bit_select_b = i_narrow_3_i_gettanh35_vt_select_2_merged_bit_select_in[2:2];
    assign i_narrow_3_i_gettanh35_vt_select_2_merged_bit_select_c = i_narrow_3_i_gettanh35_vt_select_2_merged_bit_select_in[6:5];

    // i_narrow_3_i_gettanh35_vt_join(BITJOIN,161)@4
    assign i_narrow_3_i_gettanh35_vt_join_q = {i_narrow_10_i_gettanh70_vt_const_15_q, i_narrow_3_i_gettanh35_vt_select_2_merged_bit_select_c, i_arrayidx1_gettanh15_vt_const_1_q, i_narrow_3_i_gettanh35_vt_select_2_merged_bit_select_b, i_arrayidx1_gettanh15_vt_const_1_q};

    // i_cmp13_i_2_i_gettanh29(COMPARE,65)@3
    assign i_cmp13_i_2_i_gettanh29_a = {2'b00, i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_gettanh0_NO_NAME_x_q};
    assign i_cmp13_i_2_i_gettanh29_b = {2'b00, c_i16_100137_q};
    assign i_cmp13_i_2_i_gettanh29_o = $unsigned(i_cmp13_i_2_i_gettanh29_a) - $unsigned(i_cmp13_i_2_i_gettanh29_b);
    assign i_cmp13_i_2_i_gettanh29_c[0] = i_cmp13_i_2_i_gettanh29_o[17];

    // i_narrow_2_i_gettanh30(MUX,150)@3
    assign i_narrow_2_i_gettanh30_s = i_cmp13_i_2_i_gettanh29_c;
    always @(i_narrow_2_i_gettanh30_s or c_i16_100137_q or c_i16_0135_q)
    begin
        unique case (i_narrow_2_i_gettanh30_s)
            1'b0 : i_narrow_2_i_gettanh30_q = c_i16_100137_q;
            1'b1 : i_narrow_2_i_gettanh30_q = c_i16_0135_q;
            default : i_narrow_2_i_gettanh30_q = 16'b0;
        endcase
    end

    // i_narrow_2_i_gettanh30_vt_select_2_merged_bit_select(BITSELECT,432)@3
    assign i_narrow_2_i_gettanh30_vt_select_2_merged_bit_select_in = i_narrow_2_i_gettanh30_q[6:0];
    assign i_narrow_2_i_gettanh30_vt_select_2_merged_bit_select_b = i_narrow_2_i_gettanh30_vt_select_2_merged_bit_select_in[2:2];
    assign i_narrow_2_i_gettanh30_vt_select_2_merged_bit_select_c = i_narrow_2_i_gettanh30_vt_select_2_merged_bit_select_in[6:5];

    // i_narrow_2_i_gettanh30_vt_join(BITJOIN,154)@3
    assign i_narrow_2_i_gettanh30_vt_join_q = {i_narrow_10_i_gettanh70_vt_const_15_q, i_narrow_2_i_gettanh30_vt_select_2_merged_bit_select_c, i_arrayidx1_gettanh15_vt_const_1_q, i_narrow_2_i_gettanh30_vt_select_2_merged_bit_select_b, i_arrayidx1_gettanh15_vt_const_1_q};

    // i_cmp13_i_1_i_gettanh24(COMPARE,64)@2
    assign i_cmp13_i_1_i_gettanh24_a = {2'b00, i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_gettanh0_NO_NAME_x_q};
    assign i_cmp13_i_1_i_gettanh24_b = {2'b00, c_i16_100137_q};
    assign i_cmp13_i_1_i_gettanh24_o = $unsigned(i_cmp13_i_1_i_gettanh24_a) - $unsigned(i_cmp13_i_1_i_gettanh24_b);
    assign i_cmp13_i_1_i_gettanh24_c[0] = i_cmp13_i_1_i_gettanh24_o[17];

    // i_narrow_1_i_gettanh25(MUX,143)@2
    assign i_narrow_1_i_gettanh25_s = i_cmp13_i_1_i_gettanh24_c;
    always @(i_narrow_1_i_gettanh25_s or c_i16_100137_q or c_i16_0135_q)
    begin
        unique case (i_narrow_1_i_gettanh25_s)
            1'b0 : i_narrow_1_i_gettanh25_q = c_i16_100137_q;
            1'b1 : i_narrow_1_i_gettanh25_q = c_i16_0135_q;
            default : i_narrow_1_i_gettanh25_q = 16'b0;
        endcase
    end

    // i_narrow_1_i_gettanh25_vt_select_2_merged_bit_select(BITSELECT,431)@2
    assign i_narrow_1_i_gettanh25_vt_select_2_merged_bit_select_in = i_narrow_1_i_gettanh25_q[6:0];
    assign i_narrow_1_i_gettanh25_vt_select_2_merged_bit_select_b = i_narrow_1_i_gettanh25_vt_select_2_merged_bit_select_in[2:2];
    assign i_narrow_1_i_gettanh25_vt_select_2_merged_bit_select_c = i_narrow_1_i_gettanh25_vt_select_2_merged_bit_select_in[6:5];

    // i_narrow_1_i_gettanh25_vt_join(BITJOIN,147)@2
    assign i_narrow_1_i_gettanh25_vt_join_q = {i_narrow_10_i_gettanh70_vt_const_15_q, i_narrow_1_i_gettanh25_vt_select_2_merged_bit_select_c, i_arrayidx1_gettanh15_vt_const_1_q, i_narrow_1_i_gettanh25_vt_select_2_merged_bit_select_b, i_arrayidx1_gettanh15_vt_const_1_q};

    // i_unnamed_gettanh20_vt_const_15(CONSTANT,228)
    assign i_unnamed_gettanh20_vt_const_15_q = $unsigned(15'b000000000000000);

    // rightShiftStage3Idx1Pad8_uid419_i_unnamed_gettanh0_shift_x(CONSTANT,418)
    assign rightShiftStage3Idx1Pad8_uid419_i_unnamed_gettanh0_shift_x_q = $unsigned(8'b00000000);

    // rightShiftStage3Idx1Rng8_uid418_i_unnamed_gettanh0_shift_x(BITSELECT,417)@2
    assign rightShiftStage3Idx1Rng8_uid418_i_unnamed_gettanh0_shift_x_b = rightShiftStage2_uid417_i_unnamed_gettanh0_shift_x_q[15:8];

    // rightShiftStage3Idx1_uid420_i_unnamed_gettanh0_shift_x(BITJOIN,419)@2
    assign rightShiftStage3Idx1_uid420_i_unnamed_gettanh0_shift_x_q = {rightShiftStage3Idx1Pad8_uid419_i_unnamed_gettanh0_shift_x_q, rightShiftStage3Idx1Rng8_uid418_i_unnamed_gettanh0_shift_x_b};

    // rightShiftStage2Idx1Pad4_uid414_i_unnamed_gettanh0_shift_x(CONSTANT,413)
    assign rightShiftStage2Idx1Pad4_uid414_i_unnamed_gettanh0_shift_x_q = $unsigned(4'b0000);

    // rightShiftStage2Idx1Rng4_uid413_i_unnamed_gettanh0_shift_x(BITSELECT,412)@2
    assign rightShiftStage2Idx1Rng4_uid413_i_unnamed_gettanh0_shift_x_b = rightShiftStage1_uid412_i_unnamed_gettanh0_shift_x_q[15:4];

    // rightShiftStage2Idx1_uid415_i_unnamed_gettanh0_shift_x(BITJOIN,414)@2
    assign rightShiftStage2Idx1_uid415_i_unnamed_gettanh0_shift_x_q = {rightShiftStage2Idx1Pad4_uid414_i_unnamed_gettanh0_shift_x_q, rightShiftStage2Idx1Rng4_uid413_i_unnamed_gettanh0_shift_x_b};

    // rightShiftStage1Idx1Rng2_uid408_i_unnamed_gettanh0_shift_x(BITSELECT,407)@2
    assign rightShiftStage1Idx1Rng2_uid408_i_unnamed_gettanh0_shift_x_b = rightShiftStage0_uid407_i_unnamed_gettanh0_shift_x_q[15:2];

    // rightShiftStage1Idx1_uid410_i_unnamed_gettanh0_shift_x(BITJOIN,409)@2
    assign rightShiftStage1Idx1_uid410_i_unnamed_gettanh0_shift_x_q = {i_arrayidx1_gettanh15_vt_const_1_q, rightShiftStage1Idx1Rng2_uid408_i_unnamed_gettanh0_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid403_i_unnamed_gettanh0_shift_x(BITSELECT,402)@2
    assign rightShiftStage0Idx1Rng1_uid403_i_unnamed_gettanh0_shift_x_b = i_rem_lhs_trunc_gettanh19_sel_x_b[15:1];

    // rightShiftStage0Idx1_uid405_i_unnamed_gettanh0_shift_x(BITJOIN,404)@2
    assign rightShiftStage0Idx1_uid405_i_unnamed_gettanh0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid403_i_unnamed_gettanh0_shift_x_b};

    // rightShiftStage0_uid407_i_unnamed_gettanh0_shift_x(MUX,406)@2
    assign rightShiftStage0_uid407_i_unnamed_gettanh0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid407_i_unnamed_gettanh0_shift_x_s or i_rem_lhs_trunc_gettanh19_sel_x_b or rightShiftStage0Idx1_uid405_i_unnamed_gettanh0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid407_i_unnamed_gettanh0_shift_x_s)
            1'b0 : rightShiftStage0_uid407_i_unnamed_gettanh0_shift_x_q = i_rem_lhs_trunc_gettanh19_sel_x_b;
            1'b1 : rightShiftStage0_uid407_i_unnamed_gettanh0_shift_x_q = rightShiftStage0Idx1_uid405_i_unnamed_gettanh0_shift_x_q;
            default : rightShiftStage0_uid407_i_unnamed_gettanh0_shift_x_q = 16'b0;
        endcase
    end

    // rightShiftStage1_uid412_i_unnamed_gettanh0_shift_x(MUX,411)@2
    assign rightShiftStage1_uid412_i_unnamed_gettanh0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid412_i_unnamed_gettanh0_shift_x_s or rightShiftStage0_uid407_i_unnamed_gettanh0_shift_x_q or rightShiftStage1Idx1_uid410_i_unnamed_gettanh0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid412_i_unnamed_gettanh0_shift_x_s)
            1'b0 : rightShiftStage1_uid412_i_unnamed_gettanh0_shift_x_q = rightShiftStage0_uid407_i_unnamed_gettanh0_shift_x_q;
            1'b1 : rightShiftStage1_uid412_i_unnamed_gettanh0_shift_x_q = rightShiftStage1Idx1_uid410_i_unnamed_gettanh0_shift_x_q;
            default : rightShiftStage1_uid412_i_unnamed_gettanh0_shift_x_q = 16'b0;
        endcase
    end

    // rightShiftStage2_uid417_i_unnamed_gettanh0_shift_x(MUX,416)@2
    assign rightShiftStage2_uid417_i_unnamed_gettanh0_shift_x_s = VCC_q;
    always @(rightShiftStage2_uid417_i_unnamed_gettanh0_shift_x_s or rightShiftStage1_uid412_i_unnamed_gettanh0_shift_x_q or rightShiftStage2Idx1_uid415_i_unnamed_gettanh0_shift_x_q)
    begin
        unique case (rightShiftStage2_uid417_i_unnamed_gettanh0_shift_x_s)
            1'b0 : rightShiftStage2_uid417_i_unnamed_gettanh0_shift_x_q = rightShiftStage1_uid412_i_unnamed_gettanh0_shift_x_q;
            1'b1 : rightShiftStage2_uid417_i_unnamed_gettanh0_shift_x_q = rightShiftStage2Idx1_uid415_i_unnamed_gettanh0_shift_x_q;
            default : rightShiftStage2_uid417_i_unnamed_gettanh0_shift_x_q = 16'b0;
        endcase
    end

    // rightShiftStage3_uid422_i_unnamed_gettanh0_shift_x(MUX,421)@2
    assign rightShiftStage3_uid422_i_unnamed_gettanh0_shift_x_s = VCC_q;
    always @(rightShiftStage3_uid422_i_unnamed_gettanh0_shift_x_s or rightShiftStage2_uid417_i_unnamed_gettanh0_shift_x_q or rightShiftStage3Idx1_uid420_i_unnamed_gettanh0_shift_x_q)
    begin
        unique case (rightShiftStage3_uid422_i_unnamed_gettanh0_shift_x_s)
            1'b0 : rightShiftStage3_uid422_i_unnamed_gettanh0_shift_x_q = rightShiftStage2_uid417_i_unnamed_gettanh0_shift_x_q;
            1'b1 : rightShiftStage3_uid422_i_unnamed_gettanh0_shift_x_q = rightShiftStage3Idx1_uid420_i_unnamed_gettanh0_shift_x_q;
            default : rightShiftStage3_uid422_i_unnamed_gettanh0_shift_x_q = 16'b0;
        endcase
    end

    // i_unnamed_gettanh20_vt_select_0(BITSELECT,230)@2
    assign i_unnamed_gettanh20_vt_select_0_b = rightShiftStage3_uid422_i_unnamed_gettanh0_shift_x_q[0:0];

    // i_unnamed_gettanh20_vt_join(BITJOIN,229)@2
    assign i_unnamed_gettanh20_vt_join_q = {i_unnamed_gettanh20_vt_const_15_q, i_unnamed_gettanh20_vt_select_0_b};

    // i_rem_lhs_trunc_gettanh19_sel_x(BITSELECT,342)@2
    assign i_rem_lhs_trunc_gettanh19_sel_x_b = i_llvm_fpga_pop_i32_j_024_pop9_gettanh12_out_data_out[15:0];

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,312)@2
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_222_q, i_unnamed_gettanh20_vt_join_q, i_rem_lhs_trunc_gettanh19_sel_x_b};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_gettanh0_NO_NAME_x(CHOOSEBITS,311)@2
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_gettanh0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_gettanh0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_gettanh0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_gettanh0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_gettanh0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_gettanh0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_gettanh0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_gettanh0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_gettanh0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_gettanh0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_gettanh0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_gettanh0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_gettanh0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_gettanh0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_gettanh0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_gettanh0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_gettanh0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_gettanh0_NO_NAME_x_a[14:14]};

    // i_sub16_i_1_i_gettanh26(SUB,219)@2
    assign i_sub16_i_1_i_gettanh26_a = {1'b0, i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_gettanh0_NO_NAME_x_q};
    assign i_sub16_i_1_i_gettanh26_b = {1'b0, i_narrow_1_i_gettanh25_vt_join_q};
    assign i_sub16_i_1_i_gettanh26_o = $unsigned(i_sub16_i_1_i_gettanh26_a) - $unsigned(i_sub16_i_1_i_gettanh26_b);
    assign i_sub16_i_1_i_gettanh26_q = i_sub16_i_1_i_gettanh26_o[16:0];

    // bgTrunc_i_sub16_i_1_i_gettanh26_sel_x(BITSELECT,246)@2
    assign bgTrunc_i_sub16_i_1_i_gettanh26_sel_x_b = $unsigned(i_sub16_i_1_i_gettanh26_q[15:0]);

    // redist29_bgTrunc_i_sub16_i_1_i_gettanh26_sel_x_b_1(DELAY,469)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_bgTrunc_i_sub16_i_1_i_gettanh26_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist29_bgTrunc_i_sub16_i_1_i_gettanh26_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub16_i_1_i_gettanh26_sel_x_b);
        end
    end

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,315)@3
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_222_q, redist29_bgTrunc_i_sub16_i_1_i_gettanh26_sel_x_b_1_q, redist7_i_rem_lhs_trunc_gettanh19_sel_x_b_1_q};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_gettanh0_NO_NAME_x(CHOOSEBITS,314)@3
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_gettanh0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_gettanh0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_gettanh0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_gettanh0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_gettanh0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_gettanh0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_gettanh0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_gettanh0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_gettanh0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_gettanh0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_gettanh0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_gettanh0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_gettanh0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_gettanh0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_gettanh0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_gettanh0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_gettanh0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_gettanh0_NO_NAME_x_a[13:13]};

    // i_sub16_i_2_i_gettanh31(SUB,220)@3
    assign i_sub16_i_2_i_gettanh31_a = {1'b0, i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_gettanh0_NO_NAME_x_q};
    assign i_sub16_i_2_i_gettanh31_b = {1'b0, i_narrow_2_i_gettanh30_vt_join_q};
    assign i_sub16_i_2_i_gettanh31_o = $unsigned(i_sub16_i_2_i_gettanh31_a) - $unsigned(i_sub16_i_2_i_gettanh31_b);
    assign i_sub16_i_2_i_gettanh31_q = i_sub16_i_2_i_gettanh31_o[16:0];

    // bgTrunc_i_sub16_i_2_i_gettanh31_sel_x(BITSELECT,247)@3
    assign bgTrunc_i_sub16_i_2_i_gettanh31_sel_x_b = $unsigned(i_sub16_i_2_i_gettanh31_q[15:0]);

    // redist7_i_rem_lhs_trunc_gettanh19_sel_x_b_1(DELAY,447)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_rem_lhs_trunc_gettanh19_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist7_i_rem_lhs_trunc_gettanh19_sel_x_b_1_q <= $unsigned(i_rem_lhs_trunc_gettanh19_sel_x_b);
        end
    end

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,318)@3
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_222_q, bgTrunc_i_sub16_i_2_i_gettanh31_sel_x_b, redist7_i_rem_lhs_trunc_gettanh19_sel_x_b_1_q};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_gettanh0_NO_NAME_x(CHOOSEBITS,317)@3
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_gettanh0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_gettanh0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_gettanh0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_gettanh0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_gettanh0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_gettanh0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_gettanh0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_gettanh0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_gettanh0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_gettanh0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_gettanh0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_gettanh0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_gettanh0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_gettanh0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_gettanh0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_gettanh0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_gettanh0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_gettanh0_NO_NAME_x_a[12:12]};

    // redist24_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_gettanh0_NO_NAME_x_q_1(DELAY,464)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_gettanh0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist24_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_gettanh0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_gettanh0_NO_NAME_x_q);
        end
    end

    // i_sub16_i_3_i_gettanh36(SUB,221)@4
    assign i_sub16_i_3_i_gettanh36_a = {1'b0, redist24_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_gettanh0_NO_NAME_x_q_1_q};
    assign i_sub16_i_3_i_gettanh36_b = {1'b0, i_narrow_3_i_gettanh35_vt_join_q};
    assign i_sub16_i_3_i_gettanh36_o = $unsigned(i_sub16_i_3_i_gettanh36_a) - $unsigned(i_sub16_i_3_i_gettanh36_b);
    assign i_sub16_i_3_i_gettanh36_q = i_sub16_i_3_i_gettanh36_o[16:0];

    // bgTrunc_i_sub16_i_3_i_gettanh36_sel_x(BITSELECT,248)@4
    assign bgTrunc_i_sub16_i_3_i_gettanh36_sel_x_b = $unsigned(i_sub16_i_3_i_gettanh36_q[15:0]);

    // redist8_i_rem_lhs_trunc_gettanh19_sel_x_b_2(DELAY,448)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_rem_lhs_trunc_gettanh19_sel_x_b_2_q <= '0;
        end
        else
        begin
            redist8_i_rem_lhs_trunc_gettanh19_sel_x_b_2_q <= $unsigned(redist7_i_rem_lhs_trunc_gettanh19_sel_x_b_1_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,321)@4
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_222_q, bgTrunc_i_sub16_i_3_i_gettanh36_sel_x_b, redist8_i_rem_lhs_trunc_gettanh19_sel_x_b_2_q};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_gettanh0_NO_NAME_x(CHOOSEBITS,320)@4
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_gettanh0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_gettanh0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_gettanh0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_gettanh0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_gettanh0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_gettanh0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_gettanh0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_gettanh0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_gettanh0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_gettanh0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_gettanh0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_gettanh0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_gettanh0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_gettanh0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_gettanh0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_gettanh0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_gettanh0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_gettanh0_NO_NAME_x_a[11:11]};

    // redist23_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_gettanh0_NO_NAME_x_q_1(DELAY,463)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_gettanh0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist23_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_gettanh0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_gettanh0_NO_NAME_x_q);
        end
    end

    // i_sub16_i_4_i_gettanh41(SUB,222)@5
    assign i_sub16_i_4_i_gettanh41_a = {1'b0, redist23_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_gettanh0_NO_NAME_x_q_1_q};
    assign i_sub16_i_4_i_gettanh41_b = {1'b0, i_narrow_4_i_gettanh40_vt_join_q};
    assign i_sub16_i_4_i_gettanh41_o = $unsigned(i_sub16_i_4_i_gettanh41_a) - $unsigned(i_sub16_i_4_i_gettanh41_b);
    assign i_sub16_i_4_i_gettanh41_q = i_sub16_i_4_i_gettanh41_o[16:0];

    // bgTrunc_i_sub16_i_4_i_gettanh41_sel_x(BITSELECT,249)@5
    assign bgTrunc_i_sub16_i_4_i_gettanh41_sel_x_b = $unsigned(i_sub16_i_4_i_gettanh41_q[15:0]);

    // redist9_i_rem_lhs_trunc_gettanh19_sel_x_b_3(DELAY,449)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_rem_lhs_trunc_gettanh19_sel_x_b_3_q <= '0;
        end
        else
        begin
            redist9_i_rem_lhs_trunc_gettanh19_sel_x_b_3_q <= $unsigned(redist8_i_rem_lhs_trunc_gettanh19_sel_x_b_2_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,324)@5
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_222_q, bgTrunc_i_sub16_i_4_i_gettanh41_sel_x_b, redist9_i_rem_lhs_trunc_gettanh19_sel_x_b_3_q};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_gettanh0_NO_NAME_x(CHOOSEBITS,323)@5
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_gettanh0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_gettanh0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_gettanh0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_gettanh0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_gettanh0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_gettanh0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_gettanh0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_gettanh0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_gettanh0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_gettanh0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_gettanh0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_gettanh0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_gettanh0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_gettanh0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_gettanh0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_gettanh0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_gettanh0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_gettanh0_NO_NAME_x_a[10:10]};

    // redist22_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_gettanh0_NO_NAME_x_q_1(DELAY,462)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_gettanh0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist22_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_gettanh0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_gettanh0_NO_NAME_x_q);
        end
    end

    // i_sub16_i_5_i_gettanh46(SUB,223)@6
    assign i_sub16_i_5_i_gettanh46_a = {1'b0, redist22_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_gettanh0_NO_NAME_x_q_1_q};
    assign i_sub16_i_5_i_gettanh46_b = {1'b0, i_narrow_5_i_gettanh45_vt_join_q};
    assign i_sub16_i_5_i_gettanh46_o = $unsigned(i_sub16_i_5_i_gettanh46_a) - $unsigned(i_sub16_i_5_i_gettanh46_b);
    assign i_sub16_i_5_i_gettanh46_q = i_sub16_i_5_i_gettanh46_o[16:0];

    // bgTrunc_i_sub16_i_5_i_gettanh46_sel_x(BITSELECT,250)@6
    assign bgTrunc_i_sub16_i_5_i_gettanh46_sel_x_b = $unsigned(i_sub16_i_5_i_gettanh46_q[15:0]);

    // redist10_i_rem_lhs_trunc_gettanh19_sel_x_b_4(DELAY,450)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_rem_lhs_trunc_gettanh19_sel_x_b_4_q <= '0;
        end
        else
        begin
            redist10_i_rem_lhs_trunc_gettanh19_sel_x_b_4_q <= $unsigned(redist9_i_rem_lhs_trunc_gettanh19_sel_x_b_3_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,327)@6
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_222_q, bgTrunc_i_sub16_i_5_i_gettanh46_sel_x_b, redist10_i_rem_lhs_trunc_gettanh19_sel_x_b_4_q};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_gettanh0_NO_NAME_x(CHOOSEBITS,326)@6
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_gettanh0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_gettanh0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_gettanh0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_gettanh0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_gettanh0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_gettanh0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_gettanh0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_gettanh0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_gettanh0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_gettanh0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_gettanh0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_gettanh0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_gettanh0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_gettanh0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_gettanh0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_gettanh0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_gettanh0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_gettanh0_NO_NAME_x_a[9:9]};

    // redist21_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_gettanh0_NO_NAME_x_q_1(DELAY,461)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_gettanh0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist21_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_gettanh0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_gettanh0_NO_NAME_x_q);
        end
    end

    // i_sub16_i_6_i_gettanh51(SUB,224)@7
    assign i_sub16_i_6_i_gettanh51_a = {1'b0, redist21_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_gettanh0_NO_NAME_x_q_1_q};
    assign i_sub16_i_6_i_gettanh51_b = {1'b0, i_narrow_6_i_gettanh50_vt_join_q};
    assign i_sub16_i_6_i_gettanh51_o = $unsigned(i_sub16_i_6_i_gettanh51_a) - $unsigned(i_sub16_i_6_i_gettanh51_b);
    assign i_sub16_i_6_i_gettanh51_q = i_sub16_i_6_i_gettanh51_o[16:0];

    // bgTrunc_i_sub16_i_6_i_gettanh51_sel_x(BITSELECT,251)@7
    assign bgTrunc_i_sub16_i_6_i_gettanh51_sel_x_b = $unsigned(i_sub16_i_6_i_gettanh51_q[15:0]);

    // redist11_i_rem_lhs_trunc_gettanh19_sel_x_b_5(DELAY,451)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_rem_lhs_trunc_gettanh19_sel_x_b_5_q <= '0;
        end
        else
        begin
            redist11_i_rem_lhs_trunc_gettanh19_sel_x_b_5_q <= $unsigned(redist10_i_rem_lhs_trunc_gettanh19_sel_x_b_4_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,330)@7
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_222_q, bgTrunc_i_sub16_i_6_i_gettanh51_sel_x_b, redist11_i_rem_lhs_trunc_gettanh19_sel_x_b_5_q};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_gettanh0_NO_NAME_x(CHOOSEBITS,329)@7
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_gettanh0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_gettanh0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_gettanh0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_gettanh0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_gettanh0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_gettanh0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_gettanh0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_gettanh0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_gettanh0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_gettanh0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_gettanh0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_gettanh0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_gettanh0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_gettanh0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_gettanh0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_gettanh0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_gettanh0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_gettanh0_NO_NAME_x_a[8:8]};

    // redist20_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_gettanh0_NO_NAME_x_q_1(DELAY,460)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_gettanh0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist20_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_gettanh0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_gettanh0_NO_NAME_x_q);
        end
    end

    // i_sub16_i_7_i_gettanh56(SUB,225)@8
    assign i_sub16_i_7_i_gettanh56_a = {1'b0, redist20_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_gettanh0_NO_NAME_x_q_1_q};
    assign i_sub16_i_7_i_gettanh56_b = {1'b0, i_narrow_7_i_gettanh55_vt_join_q};
    assign i_sub16_i_7_i_gettanh56_o = $unsigned(i_sub16_i_7_i_gettanh56_a) - $unsigned(i_sub16_i_7_i_gettanh56_b);
    assign i_sub16_i_7_i_gettanh56_q = i_sub16_i_7_i_gettanh56_o[16:0];

    // bgTrunc_i_sub16_i_7_i_gettanh56_sel_x(BITSELECT,252)@8
    assign bgTrunc_i_sub16_i_7_i_gettanh56_sel_x_b = $unsigned(i_sub16_i_7_i_gettanh56_q[15:0]);

    // redist12_i_rem_lhs_trunc_gettanh19_sel_x_b_6(DELAY,452)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_rem_lhs_trunc_gettanh19_sel_x_b_6_q <= '0;
        end
        else
        begin
            redist12_i_rem_lhs_trunc_gettanh19_sel_x_b_6_q <= $unsigned(redist11_i_rem_lhs_trunc_gettanh19_sel_x_b_5_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,333)@8
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_222_q, bgTrunc_i_sub16_i_7_i_gettanh56_sel_x_b, redist12_i_rem_lhs_trunc_gettanh19_sel_x_b_6_q};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_gettanh0_NO_NAME_x(CHOOSEBITS,332)@8
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_gettanh0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_gettanh0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_gettanh0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_gettanh0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_gettanh0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_gettanh0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_gettanh0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_gettanh0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_gettanh0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_gettanh0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_gettanh0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_gettanh0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_gettanh0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_gettanh0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_gettanh0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_gettanh0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_gettanh0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_gettanh0_NO_NAME_x_a[7:7]};

    // redist19_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_gettanh0_NO_NAME_x_q_1(DELAY,459)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_gettanh0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist19_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_gettanh0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_gettanh0_NO_NAME_x_q);
        end
    end

    // i_sub16_i_8_i_gettanh61(SUB,226)@9
    assign i_sub16_i_8_i_gettanh61_a = {1'b0, redist19_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_gettanh0_NO_NAME_x_q_1_q};
    assign i_sub16_i_8_i_gettanh61_b = {1'b0, i_narrow_8_i_gettanh60_vt_join_q};
    assign i_sub16_i_8_i_gettanh61_o = $unsigned(i_sub16_i_8_i_gettanh61_a) - $unsigned(i_sub16_i_8_i_gettanh61_b);
    assign i_sub16_i_8_i_gettanh61_q = i_sub16_i_8_i_gettanh61_o[16:0];

    // bgTrunc_i_sub16_i_8_i_gettanh61_sel_x(BITSELECT,253)@9
    assign bgTrunc_i_sub16_i_8_i_gettanh61_sel_x_b = $unsigned(i_sub16_i_8_i_gettanh61_q[15:0]);

    // redist13_i_rem_lhs_trunc_gettanh19_sel_x_b_7(DELAY,453)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_rem_lhs_trunc_gettanh19_sel_x_b_7_q <= '0;
        end
        else
        begin
            redist13_i_rem_lhs_trunc_gettanh19_sel_x_b_7_q <= $unsigned(redist12_i_rem_lhs_trunc_gettanh19_sel_x_b_6_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,336)@9
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_222_q, bgTrunc_i_sub16_i_8_i_gettanh61_sel_x_b, redist13_i_rem_lhs_trunc_gettanh19_sel_x_b_7_q};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_gettanh0_NO_NAME_x(CHOOSEBITS,335)@9
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_gettanh0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_gettanh0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_gettanh0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_gettanh0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_gettanh0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_gettanh0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_gettanh0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_gettanh0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_gettanh0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_gettanh0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_gettanh0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_gettanh0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_gettanh0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_gettanh0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_gettanh0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_gettanh0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_gettanh0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_gettanh0_NO_NAME_x_a[6:6]};

    // redist18_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_gettanh0_NO_NAME_x_q_1(DELAY,458)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_gettanh0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist18_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_gettanh0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_gettanh0_NO_NAME_x_q);
        end
    end

    // i_sub16_i_9_i_gettanh66(SUB,227)@10
    assign i_sub16_i_9_i_gettanh66_a = {1'b0, redist18_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_gettanh0_NO_NAME_x_q_1_q};
    assign i_sub16_i_9_i_gettanh66_b = {1'b0, i_narrow_9_i_gettanh65_vt_join_q};
    assign i_sub16_i_9_i_gettanh66_o = $unsigned(i_sub16_i_9_i_gettanh66_a) - $unsigned(i_sub16_i_9_i_gettanh66_b);
    assign i_sub16_i_9_i_gettanh66_q = i_sub16_i_9_i_gettanh66_o[16:0];

    // bgTrunc_i_sub16_i_9_i_gettanh66_sel_x(BITSELECT,254)@10
    assign bgTrunc_i_sub16_i_9_i_gettanh66_sel_x_b = $unsigned(i_sub16_i_9_i_gettanh66_q[15:0]);

    // redist28_bgTrunc_i_sub16_i_9_i_gettanh66_sel_x_b_1(DELAY,468)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_bgTrunc_i_sub16_i_9_i_gettanh66_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist28_bgTrunc_i_sub16_i_9_i_gettanh66_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub16_i_9_i_gettanh66_sel_x_b);
        end
    end

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,294)@11
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_222_q, redist28_bgTrunc_i_sub16_i_9_i_gettanh66_sel_x_b_1_q, redist14_i_rem_lhs_trunc_gettanh19_sel_x_b_9_q};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_gettanh0_NO_NAME_x(CHOOSEBITS,293)@11
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_gettanh0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_gettanh0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_gettanh0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_gettanh0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_gettanh0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_gettanh0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_gettanh0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_gettanh0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_gettanh0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_gettanh0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_gettanh0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_gettanh0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_gettanh0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_gettanh0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_gettanh0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_gettanh0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_gettanh0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_gettanh0_NO_NAME_x_a[5:5]};

    // i_sub16_i_10_i_gettanh71(SUB,213)@11
    assign i_sub16_i_10_i_gettanh71_a = {1'b0, i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_gettanh0_NO_NAME_x_q};
    assign i_sub16_i_10_i_gettanh71_b = {1'b0, i_narrow_10_i_gettanh70_vt_join_q};
    assign i_sub16_i_10_i_gettanh71_o = $unsigned(i_sub16_i_10_i_gettanh71_a) - $unsigned(i_sub16_i_10_i_gettanh71_b);
    assign i_sub16_i_10_i_gettanh71_q = i_sub16_i_10_i_gettanh71_o[16:0];

    // bgTrunc_i_sub16_i_10_i_gettanh71_sel_x(BITSELECT,240)@11
    assign bgTrunc_i_sub16_i_10_i_gettanh71_sel_x_b = $unsigned(i_sub16_i_10_i_gettanh71_q[15:0]);

    // redist14_i_rem_lhs_trunc_gettanh19_sel_x_b_9(DELAY,454)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_rem_lhs_trunc_gettanh19_sel_x_b_9_delay_0 <= '0;
            redist14_i_rem_lhs_trunc_gettanh19_sel_x_b_9_q <= '0;
        end
        else
        begin
            redist14_i_rem_lhs_trunc_gettanh19_sel_x_b_9_delay_0 <= $unsigned(redist13_i_rem_lhs_trunc_gettanh19_sel_x_b_7_q);
            redist14_i_rem_lhs_trunc_gettanh19_sel_x_b_9_q <= redist14_i_rem_lhs_trunc_gettanh19_sel_x_b_9_delay_0;
        end
    end

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,297)@11
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_222_q, bgTrunc_i_sub16_i_10_i_gettanh71_sel_x_b, redist14_i_rem_lhs_trunc_gettanh19_sel_x_b_9_q};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_gettanh0_NO_NAME_x(CHOOSEBITS,296)@11
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_gettanh0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_gettanh0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_gettanh0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_gettanh0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_gettanh0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_gettanh0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_gettanh0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_gettanh0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_gettanh0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_gettanh0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_gettanh0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_gettanh0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_gettanh0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_gettanh0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_gettanh0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_gettanh0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_gettanh0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_gettanh0_NO_NAME_x_a[4:4]};

    // redist26_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_gettanh0_NO_NAME_x_q_1(DELAY,466)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_gettanh0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist26_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_gettanh0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_gettanh0_NO_NAME_x_q);
        end
    end

    // i_sub16_i_11_i_gettanh76(SUB,214)@12
    assign i_sub16_i_11_i_gettanh76_a = {1'b0, redist26_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_gettanh0_NO_NAME_x_q_1_q};
    assign i_sub16_i_11_i_gettanh76_b = {1'b0, i_narrow_11_i_gettanh75_vt_join_q};
    assign i_sub16_i_11_i_gettanh76_o = $unsigned(i_sub16_i_11_i_gettanh76_a) - $unsigned(i_sub16_i_11_i_gettanh76_b);
    assign i_sub16_i_11_i_gettanh76_q = i_sub16_i_11_i_gettanh76_o[16:0];

    // bgTrunc_i_sub16_i_11_i_gettanh76_sel_x(BITSELECT,241)@12
    assign bgTrunc_i_sub16_i_11_i_gettanh76_sel_x_b = $unsigned(i_sub16_i_11_i_gettanh76_q[15:0]);

    // redist33_bgTrunc_i_sub16_i_11_i_gettanh76_sel_x_b_1(DELAY,473)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_bgTrunc_i_sub16_i_11_i_gettanh76_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist33_bgTrunc_i_sub16_i_11_i_gettanh76_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub16_i_11_i_gettanh76_sel_x_b);
        end
    end

    // redist15_i_rem_lhs_trunc_gettanh19_sel_x_b_11(DELAY,455)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_rem_lhs_trunc_gettanh19_sel_x_b_11_delay_0 <= '0;
            redist15_i_rem_lhs_trunc_gettanh19_sel_x_b_11_q <= '0;
        end
        else
        begin
            redist15_i_rem_lhs_trunc_gettanh19_sel_x_b_11_delay_0 <= $unsigned(redist14_i_rem_lhs_trunc_gettanh19_sel_x_b_9_q);
            redist15_i_rem_lhs_trunc_gettanh19_sel_x_b_11_q <= redist15_i_rem_lhs_trunc_gettanh19_sel_x_b_11_delay_0;
        end
    end

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,300)@13
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_222_q, redist33_bgTrunc_i_sub16_i_11_i_gettanh76_sel_x_b_1_q, redist15_i_rem_lhs_trunc_gettanh19_sel_x_b_11_q};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_gettanh0_NO_NAME_x(CHOOSEBITS,299)@13
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_gettanh0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_gettanh0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_gettanh0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_gettanh0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_gettanh0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_gettanh0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_gettanh0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_gettanh0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_gettanh0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_gettanh0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_gettanh0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_gettanh0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_gettanh0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_gettanh0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_gettanh0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_gettanh0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_gettanh0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_gettanh0_NO_NAME_x_a[3:3]};

    // i_sub16_i_12_i_gettanh81(SUB,215)@13
    assign i_sub16_i_12_i_gettanh81_a = {1'b0, i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_gettanh0_NO_NAME_x_q};
    assign i_sub16_i_12_i_gettanh81_b = {1'b0, i_narrow_12_i_gettanh80_vt_join_q};
    assign i_sub16_i_12_i_gettanh81_o = $unsigned(i_sub16_i_12_i_gettanh81_a) - $unsigned(i_sub16_i_12_i_gettanh81_b);
    assign i_sub16_i_12_i_gettanh81_q = i_sub16_i_12_i_gettanh81_o[16:0];

    // bgTrunc_i_sub16_i_12_i_gettanh81_sel_x(BITSELECT,242)@13
    assign bgTrunc_i_sub16_i_12_i_gettanh81_sel_x_b = $unsigned(i_sub16_i_12_i_gettanh81_q[15:0]);

    // redist32_bgTrunc_i_sub16_i_12_i_gettanh81_sel_x_b_1(DELAY,472)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_bgTrunc_i_sub16_i_12_i_gettanh81_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist32_bgTrunc_i_sub16_i_12_i_gettanh81_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub16_i_12_i_gettanh81_sel_x_b);
        end
    end

    // redist16_i_rem_lhs_trunc_gettanh19_sel_x_b_12(DELAY,456)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_rem_lhs_trunc_gettanh19_sel_x_b_12_q <= '0;
        end
        else
        begin
            redist16_i_rem_lhs_trunc_gettanh19_sel_x_b_12_q <= $unsigned(redist15_i_rem_lhs_trunc_gettanh19_sel_x_b_11_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,303)@14
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_222_q, redist32_bgTrunc_i_sub16_i_12_i_gettanh81_sel_x_b_1_q, redist16_i_rem_lhs_trunc_gettanh19_sel_x_b_12_q};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_gettanh0_NO_NAME_x(CHOOSEBITS,302)@14
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_gettanh0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_gettanh0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_gettanh0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_gettanh0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_gettanh0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_gettanh0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_gettanh0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_gettanh0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_gettanh0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_gettanh0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_gettanh0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_gettanh0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_gettanh0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_gettanh0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_gettanh0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_gettanh0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_gettanh0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_gettanh0_NO_NAME_x_a[2:2]};

    // i_sub16_i_13_i_gettanh86(SUB,216)@14
    assign i_sub16_i_13_i_gettanh86_a = {1'b0, i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_gettanh0_NO_NAME_x_q};
    assign i_sub16_i_13_i_gettanh86_b = {1'b0, i_narrow_13_i_gettanh85_vt_join_q};
    assign i_sub16_i_13_i_gettanh86_o = $unsigned(i_sub16_i_13_i_gettanh86_a) - $unsigned(i_sub16_i_13_i_gettanh86_b);
    assign i_sub16_i_13_i_gettanh86_q = i_sub16_i_13_i_gettanh86_o[16:0];

    // bgTrunc_i_sub16_i_13_i_gettanh86_sel_x(BITSELECT,243)@14
    assign bgTrunc_i_sub16_i_13_i_gettanh86_sel_x_b = $unsigned(i_sub16_i_13_i_gettanh86_q[15:0]);

    // redist31_bgTrunc_i_sub16_i_13_i_gettanh86_sel_x_b_1(DELAY,471)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_bgTrunc_i_sub16_i_13_i_gettanh86_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist31_bgTrunc_i_sub16_i_13_i_gettanh86_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub16_i_13_i_gettanh86_sel_x_b);
        end
    end

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,306)@15
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_222_q, redist31_bgTrunc_i_sub16_i_13_i_gettanh86_sel_x_b_1_q, redist17_i_rem_lhs_trunc_gettanh19_sel_x_b_13_q};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_gettanh0_NO_NAME_x(CHOOSEBITS,305)@15
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_gettanh0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_gettanh0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_gettanh0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_gettanh0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_gettanh0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_gettanh0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_gettanh0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_gettanh0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_gettanh0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_gettanh0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_gettanh0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_gettanh0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_gettanh0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_gettanh0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_gettanh0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_gettanh0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_gettanh0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_gettanh0_NO_NAME_x_a[1:1]};

    // i_sub16_i_14_i_gettanh91(SUB,217)@15
    assign i_sub16_i_14_i_gettanh91_a = {1'b0, i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_gettanh0_NO_NAME_x_q};
    assign i_sub16_i_14_i_gettanh91_b = {1'b0, i_narrow_14_i_gettanh90_vt_join_q};
    assign i_sub16_i_14_i_gettanh91_o = $unsigned(i_sub16_i_14_i_gettanh91_a) - $unsigned(i_sub16_i_14_i_gettanh91_b);
    assign i_sub16_i_14_i_gettanh91_q = i_sub16_i_14_i_gettanh91_o[16:0];

    // bgTrunc_i_sub16_i_14_i_gettanh91_sel_x(BITSELECT,244)@15
    assign bgTrunc_i_sub16_i_14_i_gettanh91_sel_x_b = $unsigned(i_sub16_i_14_i_gettanh91_q[15:0]);

    // redist17_i_rem_lhs_trunc_gettanh19_sel_x_b_13(DELAY,457)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_rem_lhs_trunc_gettanh19_sel_x_b_13_q <= '0;
        end
        else
        begin
            redist17_i_rem_lhs_trunc_gettanh19_sel_x_b_13_q <= $unsigned(redist16_i_rem_lhs_trunc_gettanh19_sel_x_b_12_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,309)@15
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_222_q, bgTrunc_i_sub16_i_14_i_gettanh91_sel_x_b, redist17_i_rem_lhs_trunc_gettanh19_sel_x_b_13_q};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_gettanh0_NO_NAME_x(CHOOSEBITS,308)@15
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_gettanh0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_gettanh0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_gettanh0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_gettanh0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_gettanh0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_gettanh0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_gettanh0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_gettanh0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_gettanh0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_gettanh0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_gettanh0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_gettanh0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_gettanh0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_gettanh0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_gettanh0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_gettanh0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_gettanh0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_gettanh0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_gettanh0_NO_NAME_x_a[0:0]};

    // redist25_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_gettanh0_NO_NAME_x_q_1(DELAY,465)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_gettanh0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist25_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_gettanh0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_gettanh0_NO_NAME_x_q);
        end
    end

    // i_sub16_i_15_i_gettanh96(SUB,218)@16
    assign i_sub16_i_15_i_gettanh96_a = {1'b0, redist25_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_gettanh0_NO_NAME_x_q_1_q};
    assign i_sub16_i_15_i_gettanh96_b = {1'b0, i_narrow_15_i_gettanh95_vt_join_q};
    assign i_sub16_i_15_i_gettanh96_o = $unsigned(i_sub16_i_15_i_gettanh96_a) - $unsigned(i_sub16_i_15_i_gettanh96_b);
    assign i_sub16_i_15_i_gettanh96_q = i_sub16_i_15_i_gettanh96_o[16:0];

    // bgTrunc_i_sub16_i_15_i_gettanh96_sel_x(BITSELECT,245)@16
    assign bgTrunc_i_sub16_i_15_i_gettanh96_sel_x_b = $unsigned(i_sub16_i_15_i_gettanh96_q[15:0]);

    // redist30_bgTrunc_i_sub16_i_15_i_gettanh96_sel_x_b_1(DELAY,470)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_bgTrunc_i_sub16_i_15_i_gettanh96_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist30_bgTrunc_i_sub16_i_15_i_gettanh96_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub16_i_15_i_gettanh96_sel_x_b);
        end
    end

    // i_cmp5_gettanh97(LOGICAL,73)@17
    assign i_cmp5_gettanh97_q = $unsigned(redist30_bgTrunc_i_sub16_i_15_i_gettanh96_sel_x_b_1_q != c_i16_0135_q ? 1'b1 : 1'b0);

    // i_first_cleanup_xor19_or_gettanh99(LOGICAL,78)@17
    assign i_first_cleanup_xor19_or_gettanh99_q = i_cmp5_gettanh97_q | redist41_i_first_cleanup_xor19_gettanh4_q_13_q;

    // redist42_i_arrayidx1_gettanh15_vt_join_q_1(DELAY,482)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_i_arrayidx1_gettanh15_vt_join_q_1_q <= '0;
        end
        else
        begin
            redist42_i_arrayidx1_gettanh15_vt_join_q_1_q <= $unsigned(i_arrayidx1_gettanh15_vt_join_q);
        end
    end

    // i_llvm_fpga_mem_memdep_2_gettanh100(BLACKBOX,87)@17
    // out out_memdep_2_getTanh_avm_address@20000000
    // out out_memdep_2_getTanh_avm_burstcount@20000000
    // out out_memdep_2_getTanh_avm_byteenable@20000000
    // out out_memdep_2_getTanh_avm_enable@20000000
    // out out_memdep_2_getTanh_avm_read@20000000
    // out out_memdep_2_getTanh_avm_write@20000000
    // out out_memdep_2_getTanh_avm_writedata@20000000
    // out out_o_stall@18
    // out out_o_valid@18
    // out out_o_writeack@18
    getTanh_i_llvm_fpga_mem_memdep_2_gettanh0 thei_llvm_fpga_mem_memdep_2_gettanh100 (
        .in_flush(in_flush),
        .in_i_address(redist42_i_arrayidx1_gettanh15_vt_join_q_1_q),
        .in_i_dependence(i_llvm_fpga_mem_memdep_gettanh16_out_o_writeack),
        .in_i_predicate(i_first_cleanup_xor19_or_gettanh99_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_i_writedata(c_float_0_000000e_00138_q),
        .in_memdep_2_getTanh_avm_readdata(in_memdep_2_getTanh_avm_readdata),
        .in_memdep_2_getTanh_avm_readdatavalid(in_memdep_2_getTanh_avm_readdatavalid),
        .in_memdep_2_getTanh_avm_waitrequest(in_memdep_2_getTanh_avm_waitrequest),
        .in_memdep_2_getTanh_avm_writeack(in_memdep_2_getTanh_avm_writeack),
        .out_memdep_2_getTanh_avm_address(i_llvm_fpga_mem_memdep_2_gettanh100_out_memdep_2_getTanh_avm_address),
        .out_memdep_2_getTanh_avm_burstcount(i_llvm_fpga_mem_memdep_2_gettanh100_out_memdep_2_getTanh_avm_burstcount),
        .out_memdep_2_getTanh_avm_byteenable(i_llvm_fpga_mem_memdep_2_gettanh100_out_memdep_2_getTanh_avm_byteenable),
        .out_memdep_2_getTanh_avm_enable(i_llvm_fpga_mem_memdep_2_gettanh100_out_memdep_2_getTanh_avm_enable),
        .out_memdep_2_getTanh_avm_read(i_llvm_fpga_mem_memdep_2_gettanh100_out_memdep_2_getTanh_avm_read),
        .out_memdep_2_getTanh_avm_write(i_llvm_fpga_mem_memdep_2_gettanh100_out_memdep_2_getTanh_avm_write),
        .out_memdep_2_getTanh_avm_writedata(i_llvm_fpga_mem_memdep_2_gettanh100_out_memdep_2_getTanh_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_ext_sig_sync_out_x(GPOUT,261)
    assign out_memdep_2_getTanh_avm_address = i_llvm_fpga_mem_memdep_2_gettanh100_out_memdep_2_getTanh_avm_address;
    assign out_memdep_2_getTanh_avm_enable = i_llvm_fpga_mem_memdep_2_gettanh100_out_memdep_2_getTanh_avm_enable;
    assign out_memdep_2_getTanh_avm_read = i_llvm_fpga_mem_memdep_2_gettanh100_out_memdep_2_getTanh_avm_read;
    assign out_memdep_2_getTanh_avm_write = i_llvm_fpga_mem_memdep_2_gettanh100_out_memdep_2_getTanh_avm_write;
    assign out_memdep_2_getTanh_avm_writedata = i_llvm_fpga_mem_memdep_2_gettanh100_out_memdep_2_getTanh_avm_writedata;
    assign out_memdep_2_getTanh_avm_byteenable = i_llvm_fpga_mem_memdep_2_gettanh100_out_memdep_2_getTanh_avm_byteenable;
    assign out_memdep_2_getTanh_avm_burstcount = i_llvm_fpga_mem_memdep_2_gettanh100_out_memdep_2_getTanh_avm_burstcount;

    // valid_fanout_reg0(REG,349)@16 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist6_sync_together157_aunroll_x_in_i_valid_15_q);
        end
    end

    // redist0_valid_fanout_reg0_q_1(DELAY,440)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_valid_fanout_reg0_q_1_q <= '0;
        end
        else
        begin
            redist0_valid_fanout_reg0_q_1_q <= $unsigned(valid_fanout_reg0_q);
        end
    end

    // i_masked22_gettanh113(LOGICAL,100)@4 + 1
    assign i_masked22_gettanh113_qi = i_notcmp9_gettanh106_q & i_first_cleanup18_gettanh3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked22_gettanh113_delay ( .xin(i_masked22_gettanh113_qi), .xout(i_masked22_gettanh113_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist34_i_masked22_gettanh113_q_14(DELAY,474)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist34_i_masked22_gettanh113_q_14 ( .xin(i_masked22_gettanh113_q), .xout(redist34_i_masked22_gettanh113_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist38_i_llvm_fpga_pipeline_keep_going13_gettanh6_out_data_out_17(DELAY,478)
    dspba_delay_ver #( .width(1), .depth(14), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist38_i_llvm_fpga_pipeline_keep_going13_gettanh6_out_data_out_17 ( .xin(redist37_i_llvm_fpga_pipeline_keep_going13_gettanh6_out_data_out_3_q), .xout(redist38_i_llvm_fpga_pipeline_keep_going13_gettanh6_out_data_out_17_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,347)@18
    assign out_c0_exi2_0_tpl = GND_q;
    assign out_c0_exi2_1_tpl = redist38_i_llvm_fpga_pipeline_keep_going13_gettanh6_out_data_out_17_q;
    assign out_c0_exi2_2_tpl = redist34_i_masked22_gettanh113_q_14_q;
    assign out_o_valid = redist0_valid_fanout_reg0_q_1_q;
    assign out_unnamed_getTanh1 = GND_q;

endmodule
