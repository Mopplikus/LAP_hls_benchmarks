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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body_stencil_2ds_c0_enter16114_stencil_2d0
// Created for function/kernel stencil_2d
// SystemVerilog created on Tue Apr  4 22:01:35 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_i_sfc_logic_s_c0_in_for_body_0000ter16114_stencil_2d0 (
    input wire [31:0] in_memdep_stencil_2d_avm_readdata,
    input wire [0:0] in_memdep_stencil_2d_avm_writeack,
    input wire [0:0] in_memdep_stencil_2d_avm_waitrequest,
    input wire [0:0] in_memdep_stencil_2d_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going64_stencil_2d6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going64_stencil_2d6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    output wire [31:0] out_memdep_stencil_2d_avm_address,
    output wire [0:0] out_memdep_stencil_2d_avm_enable,
    output wire [0:0] out_memdep_stencil_2d_avm_read,
    output wire [0:0] out_memdep_stencil_2d_avm_write,
    output wire [31:0] out_memdep_stencil_2d_avm_writedata,
    output wire [3:0] out_memdep_stencil_2d_avm_byteenable,
    output wire [0:0] out_memdep_stencil_2d_avm_burstcount,
    output wire [0:0] out_c0_exi2_0_tpl,
    output wire [0:0] out_c0_exi2_1_tpl,
    output wire [0:0] out_c0_exi2_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_stencil_2d1,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [10:0] c_i11_1142_q;
    wire [10:0] c_i11_898140_q;
    wire [15:0] c_i16_018_q;
    wire [15:0] c_i16_100138_q;
    wire [31:0] c_i32_0132_q;
    wire [31:0] c_i32_1139_q;
    wire [3:0] c_i4_7129_q;
    wire [7:0] c_i8_224_q;
    wire [63:0] c_stencil_2d_orig_pmem_q;
    wire [1:0] i_arrayidx1_stencil_2d101_vt_const_1_q;
    wire [63:0] i_arrayidx1_stencil_2d101_vt_join_q;
    wire [61:0] i_arrayidx1_stencil_2d101_vt_select_63_b;
    wire [3:0] i_cleanups_shl68_stencil_2d5_vt_join_q;
    wire [2:0] i_cleanups_shl68_stencil_2d5_vt_select_3_b;
    wire [17:0] i_cmp13_i_10_i_stencil_2d71_a;
    wire [17:0] i_cmp13_i_10_i_stencil_2d71_b;
    logic [17:0] i_cmp13_i_10_i_stencil_2d71_o;
    wire [0:0] i_cmp13_i_10_i_stencil_2d71_c;
    wire [17:0] i_cmp13_i_11_i_stencil_2d76_a;
    wire [17:0] i_cmp13_i_11_i_stencil_2d76_b;
    logic [17:0] i_cmp13_i_11_i_stencil_2d76_o;
    wire [0:0] i_cmp13_i_11_i_stencil_2d76_c;
    wire [17:0] i_cmp13_i_12_i_stencil_2d81_a;
    wire [17:0] i_cmp13_i_12_i_stencil_2d81_b;
    logic [17:0] i_cmp13_i_12_i_stencil_2d81_o;
    wire [0:0] i_cmp13_i_12_i_stencil_2d81_c;
    wire [17:0] i_cmp13_i_13_i_stencil_2d86_a;
    wire [17:0] i_cmp13_i_13_i_stencil_2d86_b;
    logic [17:0] i_cmp13_i_13_i_stencil_2d86_o;
    wire [0:0] i_cmp13_i_13_i_stencil_2d86_c;
    wire [17:0] i_cmp13_i_14_i_stencil_2d91_a;
    wire [17:0] i_cmp13_i_14_i_stencil_2d91_b;
    logic [17:0] i_cmp13_i_14_i_stencil_2d91_o;
    wire [0:0] i_cmp13_i_14_i_stencil_2d91_c;
    wire [17:0] i_cmp13_i_15_i_stencil_2d96_a;
    wire [17:0] i_cmp13_i_15_i_stencil_2d96_b;
    logic [17:0] i_cmp13_i_15_i_stencil_2d96_o;
    wire [0:0] i_cmp13_i_15_i_stencil_2d96_c;
    wire [17:0] i_cmp13_i_1_i_stencil_2d26_a;
    wire [17:0] i_cmp13_i_1_i_stencil_2d26_b;
    logic [17:0] i_cmp13_i_1_i_stencil_2d26_o;
    wire [0:0] i_cmp13_i_1_i_stencil_2d26_c;
    wire [17:0] i_cmp13_i_2_i_stencil_2d31_a;
    wire [17:0] i_cmp13_i_2_i_stencil_2d31_b;
    logic [17:0] i_cmp13_i_2_i_stencil_2d31_o;
    wire [0:0] i_cmp13_i_2_i_stencil_2d31_c;
    wire [17:0] i_cmp13_i_3_i_stencil_2d36_a;
    wire [17:0] i_cmp13_i_3_i_stencil_2d36_b;
    logic [17:0] i_cmp13_i_3_i_stencil_2d36_o;
    wire [0:0] i_cmp13_i_3_i_stencil_2d36_c;
    wire [17:0] i_cmp13_i_4_i_stencil_2d41_a;
    wire [17:0] i_cmp13_i_4_i_stencil_2d41_b;
    logic [17:0] i_cmp13_i_4_i_stencil_2d41_o;
    wire [0:0] i_cmp13_i_4_i_stencil_2d41_c;
    wire [17:0] i_cmp13_i_5_i_stencil_2d46_a;
    wire [17:0] i_cmp13_i_5_i_stencil_2d46_b;
    logic [17:0] i_cmp13_i_5_i_stencil_2d46_o;
    wire [0:0] i_cmp13_i_5_i_stencil_2d46_c;
    wire [17:0] i_cmp13_i_6_i_stencil_2d51_a;
    wire [17:0] i_cmp13_i_6_i_stencil_2d51_b;
    logic [17:0] i_cmp13_i_6_i_stencil_2d51_o;
    wire [0:0] i_cmp13_i_6_i_stencil_2d51_c;
    wire [17:0] i_cmp13_i_7_i_stencil_2d56_a;
    wire [17:0] i_cmp13_i_7_i_stencil_2d56_b;
    logic [17:0] i_cmp13_i_7_i_stencil_2d56_o;
    wire [0:0] i_cmp13_i_7_i_stencil_2d56_c;
    wire [17:0] i_cmp13_i_8_i_stencil_2d61_a;
    wire [17:0] i_cmp13_i_8_i_stencil_2d61_b;
    logic [17:0] i_cmp13_i_8_i_stencil_2d61_o;
    wire [0:0] i_cmp13_i_8_i_stencil_2d61_c;
    wire [17:0] i_cmp13_i_9_i_stencil_2d66_a;
    wire [17:0] i_cmp13_i_9_i_stencil_2d66_b;
    logic [17:0] i_cmp13_i_9_i_stencil_2d66_o;
    wire [0:0] i_cmp13_i_9_i_stencil_2d66_c;
    wire [0:0] i_first_cleanup_xor70_stencil_2d4_q;
    wire [11:0] i_fpga_indvars_iv_next_stencil_2d113_a;
    wire [11:0] i_fpga_indvars_iv_next_stencil_2d113_b;
    logic [11:0] i_fpga_indvars_iv_next_stencil_2d113_o;
    wire [11:0] i_fpga_indvars_iv_next_stencil_2d113_q;
    wire [63:0] i_idxprom_stencil_2d100_vt_join_q;
    wire [31:0] i_idxprom_stencil_2d100_vt_select_31_b;
    wire [32:0] i_inc_stencil_2d103_a;
    wire [32:0] i_inc_stencil_2d103_b;
    logic [32:0] i_inc_stencil_2d103_o;
    wire [32:0] i_inc_stencil_2d103_q;
    wire [31:0] i_llvm_fpga_mem_memdep_stencil_2d102_out_memdep_stencil_2d_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_stencil_2d102_out_memdep_stencil_2d_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_stencil_2d102_out_memdep_stencil_2d_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_stencil_2d102_out_memdep_stencil_2d_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_stencil_2d102_out_memdep_stencil_2d_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_stencil_2d102_out_memdep_stencil_2d_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_stencil_2d102_out_memdep_stencil_2d_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going64_stencil_2d6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going64_stencil_2d6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going64_stencil_2d6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going64_stencil_2d6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going64_stencil_2d6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going64_stencil_2d6_out_pipeline_valid_out;
    wire [10:0] i_llvm_fpga_pop_i11_fpga_indvars_iv_pop16_stencil_2d105_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i11_fpga_indvars_iv_pop16_stencil_2d105_out_feedback_stall_out_16;
    wire [31:0] i_llvm_fpga_pop_i32_j_038_pop17_stencil_2d12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_038_pop17_stencil_2d12_out_feedback_stall_out_17;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups67_pop19_stencil_2d2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups67_pop19_stencil_2d2_out_feedback_stall_out_19;
    wire [3:0] i_llvm_fpga_pop_i4_initerations62_pop18_stencil_2d7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations62_pop18_stencil_2d7_out_feedback_stall_out_18;
    wire [15:0] i_llvm_fpga_push_i11_fpga_indvars_iv_push16_stencil_2d114_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i11_fpga_indvars_iv_push16_stencil_2d114_out_feedback_valid_out_16;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration66_stencil_2d11_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration66_stencil_2d11_out_feedback_valid_out_12;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond74_stencil_2d109_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond74_stencil_2d109_out_feedback_valid_out_13;
    wire [31:0] i_llvm_fpga_push_i32_j_038_push17_stencil_2d104_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i32_j_038_push17_stencil_2d104_out_feedback_valid_out_17;
    wire [7:0] i_llvm_fpga_push_i4_cleanups67_push19_stencil_2d112_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_i4_cleanups67_push19_stencil_2d112_out_feedback_valid_out_19;
    wire [7:0] i_llvm_fpga_push_i4_initerations62_push18_stencil_2d9_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i4_initerations62_push18_stencil_2d9_out_feedback_valid_out_18;
    wire [0:0] i_masked73_stencil_2d115_qi;
    reg [0:0] i_masked73_stencil_2d115_q;
    wire [0:0] i_narrow_10_i_stencil_2d72_s;
    reg [15:0] i_narrow_10_i_stencil_2d72_q;
    wire [8:0] i_narrow_10_i_stencil_2d72_vt_const_15_q;
    wire [15:0] i_narrow_10_i_stencil_2d72_vt_join_q;
    wire [0:0] i_narrow_11_i_stencil_2d77_s;
    reg [15:0] i_narrow_11_i_stencil_2d77_q;
    wire [15:0] i_narrow_11_i_stencil_2d77_vt_join_q;
    wire [0:0] i_narrow_12_i_stencil_2d82_s;
    reg [15:0] i_narrow_12_i_stencil_2d82_q;
    wire [15:0] i_narrow_12_i_stencil_2d82_vt_join_q;
    wire [0:0] i_narrow_13_i_stencil_2d87_s;
    reg [15:0] i_narrow_13_i_stencil_2d87_q;
    wire [15:0] i_narrow_13_i_stencil_2d87_vt_join_q;
    wire [0:0] i_narrow_14_i_stencil_2d92_s;
    reg [15:0] i_narrow_14_i_stencil_2d92_q;
    wire [15:0] i_narrow_14_i_stencil_2d92_vt_join_q;
    wire [0:0] i_narrow_15_i_stencil_2d97_s;
    reg [15:0] i_narrow_15_i_stencil_2d97_q;
    wire [15:0] i_narrow_15_i_stencil_2d97_vt_join_q;
    wire [0:0] i_narrow_1_i_stencil_2d27_s;
    reg [15:0] i_narrow_1_i_stencil_2d27_q;
    wire [15:0] i_narrow_1_i_stencil_2d27_vt_join_q;
    wire [0:0] i_narrow_2_i_stencil_2d32_s;
    reg [15:0] i_narrow_2_i_stencil_2d32_q;
    wire [15:0] i_narrow_2_i_stencil_2d32_vt_join_q;
    wire [0:0] i_narrow_3_i_stencil_2d37_s;
    reg [15:0] i_narrow_3_i_stencil_2d37_q;
    wire [15:0] i_narrow_3_i_stencil_2d37_vt_join_q;
    wire [0:0] i_narrow_4_i_stencil_2d42_s;
    reg [15:0] i_narrow_4_i_stencil_2d42_q;
    wire [15:0] i_narrow_4_i_stencil_2d42_vt_join_q;
    wire [0:0] i_narrow_5_i_stencil_2d47_s;
    reg [15:0] i_narrow_5_i_stencil_2d47_q;
    wire [15:0] i_narrow_5_i_stencil_2d47_vt_join_q;
    wire [0:0] i_narrow_6_i_stencil_2d52_s;
    reg [15:0] i_narrow_6_i_stencil_2d52_q;
    wire [15:0] i_narrow_6_i_stencil_2d52_vt_join_q;
    wire [0:0] i_narrow_7_i_stencil_2d57_s;
    reg [15:0] i_narrow_7_i_stencil_2d57_q;
    wire [15:0] i_narrow_7_i_stencil_2d57_vt_join_q;
    wire [0:0] i_narrow_8_i_stencil_2d62_s;
    reg [15:0] i_narrow_8_i_stencil_2d62_q;
    wire [15:0] i_narrow_8_i_stencil_2d62_vt_join_q;
    wire [0:0] i_narrow_9_i_stencil_2d67_s;
    reg [15:0] i_narrow_9_i_stencil_2d67_q;
    wire [15:0] i_narrow_9_i_stencil_2d67_vt_join_q;
    wire [0:0] i_next_cleanups72_stencil_2d111_s;
    reg [3:0] i_next_cleanups72_stencil_2d111_q;
    wire [3:0] i_next_initerations63_stencil_2d8_vt_join_q;
    wire [2:0] i_next_initerations63_stencil_2d8_vt_select_2_b;
    wire [0:0] i_notcmp60_stencil_2d108_q;
    wire [0:0] i_or71_stencil_2d110_q;
    wire [31:0] i_rem_zext_stencil_2d99_vt_join_q;
    wire [15:0] i_rem_zext_stencil_2d99_vt_select_15_b;
    wire [16:0] i_sub16_i_10_i_stencil_2d73_a;
    wire [16:0] i_sub16_i_10_i_stencil_2d73_b;
    logic [16:0] i_sub16_i_10_i_stencil_2d73_o;
    wire [16:0] i_sub16_i_10_i_stencil_2d73_q;
    wire [16:0] i_sub16_i_11_i_stencil_2d78_a;
    wire [16:0] i_sub16_i_11_i_stencil_2d78_b;
    logic [16:0] i_sub16_i_11_i_stencil_2d78_o;
    wire [16:0] i_sub16_i_11_i_stencil_2d78_q;
    wire [16:0] i_sub16_i_12_i_stencil_2d83_a;
    wire [16:0] i_sub16_i_12_i_stencil_2d83_b;
    logic [16:0] i_sub16_i_12_i_stencil_2d83_o;
    wire [16:0] i_sub16_i_12_i_stencil_2d83_q;
    wire [16:0] i_sub16_i_13_i_stencil_2d88_a;
    wire [16:0] i_sub16_i_13_i_stencil_2d88_b;
    logic [16:0] i_sub16_i_13_i_stencil_2d88_o;
    wire [16:0] i_sub16_i_13_i_stencil_2d88_q;
    wire [16:0] i_sub16_i_14_i_stencil_2d93_a;
    wire [16:0] i_sub16_i_14_i_stencil_2d93_b;
    logic [16:0] i_sub16_i_14_i_stencil_2d93_o;
    wire [16:0] i_sub16_i_14_i_stencil_2d93_q;
    wire [16:0] i_sub16_i_15_i_stencil_2d98_a;
    wire [16:0] i_sub16_i_15_i_stencil_2d98_b;
    logic [16:0] i_sub16_i_15_i_stencil_2d98_o;
    wire [16:0] i_sub16_i_15_i_stencil_2d98_q;
    wire [16:0] i_sub16_i_1_i_stencil_2d28_a;
    wire [16:0] i_sub16_i_1_i_stencil_2d28_b;
    logic [16:0] i_sub16_i_1_i_stencil_2d28_o;
    wire [16:0] i_sub16_i_1_i_stencil_2d28_q;
    wire [16:0] i_sub16_i_2_i_stencil_2d33_a;
    wire [16:0] i_sub16_i_2_i_stencil_2d33_b;
    logic [16:0] i_sub16_i_2_i_stencil_2d33_o;
    wire [16:0] i_sub16_i_2_i_stencil_2d33_q;
    wire [16:0] i_sub16_i_3_i_stencil_2d38_a;
    wire [16:0] i_sub16_i_3_i_stencil_2d38_b;
    logic [16:0] i_sub16_i_3_i_stencil_2d38_o;
    wire [16:0] i_sub16_i_3_i_stencil_2d38_q;
    wire [16:0] i_sub16_i_4_i_stencil_2d43_a;
    wire [16:0] i_sub16_i_4_i_stencil_2d43_b;
    logic [16:0] i_sub16_i_4_i_stencil_2d43_o;
    wire [16:0] i_sub16_i_4_i_stencil_2d43_q;
    wire [16:0] i_sub16_i_5_i_stencil_2d48_a;
    wire [16:0] i_sub16_i_5_i_stencil_2d48_b;
    logic [16:0] i_sub16_i_5_i_stencil_2d48_o;
    wire [16:0] i_sub16_i_5_i_stencil_2d48_q;
    wire [16:0] i_sub16_i_6_i_stencil_2d53_a;
    wire [16:0] i_sub16_i_6_i_stencil_2d53_b;
    logic [16:0] i_sub16_i_6_i_stencil_2d53_o;
    wire [16:0] i_sub16_i_6_i_stencil_2d53_q;
    wire [16:0] i_sub16_i_7_i_stencil_2d58_a;
    wire [16:0] i_sub16_i_7_i_stencil_2d58_b;
    logic [16:0] i_sub16_i_7_i_stencil_2d58_o;
    wire [16:0] i_sub16_i_7_i_stencil_2d58_q;
    wire [16:0] i_sub16_i_8_i_stencil_2d63_a;
    wire [16:0] i_sub16_i_8_i_stencil_2d63_b;
    logic [16:0] i_sub16_i_8_i_stencil_2d63_o;
    wire [16:0] i_sub16_i_8_i_stencil_2d63_q;
    wire [16:0] i_sub16_i_9_i_stencil_2d68_a;
    wire [16:0] i_sub16_i_9_i_stencil_2d68_b;
    logic [16:0] i_sub16_i_9_i_stencil_2d68_o;
    wire [16:0] i_sub16_i_9_i_stencil_2d68_q;
    wire [15:0] i_unnamed_stencil_2d14_vt_join_q;
    wire [14:0] i_unnamed_stencil_2d14_vt_select_15_b;
    wire [4:0] i_unnamed_stencil_2d15_vt_const_4_q;
    wire [15:0] i_unnamed_stencil_2d15_vt_join_q;
    wire [10:0] i_unnamed_stencil_2d15_vt_select_15_b;
    wire [14:0] i_unnamed_stencil_2d22_vt_const_15_q;
    wire [15:0] i_unnamed_stencil_2d22_vt_join_q;
    wire [0:0] i_unnamed_stencil_2d22_vt_select_0_b;
    wire [10:0] bgTrunc_i_fpga_indvars_iv_next_stencil_2d113_sel_x_b;
    wire [31:0] bgTrunc_i_inc_stencil_2d103_sel_x_b;
    wire [15:0] bgTrunc_i_sub16_i_10_i_stencil_2d73_sel_x_b;
    wire [15:0] bgTrunc_i_sub16_i_11_i_stencil_2d78_sel_x_b;
    wire [15:0] bgTrunc_i_sub16_i_12_i_stencil_2d83_sel_x_b;
    wire [15:0] bgTrunc_i_sub16_i_13_i_stencil_2d88_sel_x_b;
    wire [15:0] bgTrunc_i_sub16_i_14_i_stencil_2d93_sel_x_b;
    wire [15:0] bgTrunc_i_sub16_i_15_i_stencil_2d98_sel_x_b;
    wire [15:0] bgTrunc_i_sub16_i_1_i_stencil_2d28_sel_x_b;
    wire [15:0] bgTrunc_i_sub16_i_2_i_stencil_2d33_sel_x_b;
    wire [15:0] bgTrunc_i_sub16_i_3_i_stencil_2d38_sel_x_b;
    wire [15:0] bgTrunc_i_sub16_i_4_i_stencil_2d43_sel_x_b;
    wire [15:0] bgTrunc_i_sub16_i_5_i_stencil_2d48_sel_x_b;
    wire [15:0] bgTrunc_i_sub16_i_6_i_stencil_2d53_sel_x_b;
    wire [15:0] bgTrunc_i_sub16_i_7_i_stencil_2d58_sel_x_b;
    wire [15:0] bgTrunc_i_sub16_i_8_i_stencil_2d63_sel_x_b;
    wire [15:0] bgTrunc_i_sub16_i_9_i_stencil_2d68_sel_x_b;
    wire [12:0] i_arrayidx1_stencil_2d0_add_x_a;
    wire [12:0] i_arrayidx1_stencil_2d0_add_x_b;
    logic [12:0] i_arrayidx1_stencil_2d0_add_x_o;
    wire [12:0] i_arrayidx1_stencil_2d0_add_x_q;
    wire [63:0] i_arrayidx1_stencil_2d0_append_upper_bits_x_q;
    wire [9:0] i_arrayidx1_stencil_2d0_narrow_x_b;
    wire [11:0] i_arrayidx1_stencil_2d0_shift_join_x_q;
    wire [11:0] i_arrayidx1_stencil_2d0_dupName_0_trunc_sel_x_b;
    wire [11:0] i_arrayidx1_stencil_2d0_dupName_2_trunc_sel_x_b;
    wire [0:0] i_first_cleanup69_stencil_2d3_sel_x_b;
    wire [63:0] i_idxprom_stencil_2d100_sel_x_b;
    wire [0:0] i_last_initeration65_stencil_2d10_sel_x_b;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_stencil_2d0_NO_NAME_x_a;
    wire [15:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_stencil_2d0_NO_NAME_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_stencil_2d0_NO_NAME_x_a;
    wire [15:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_stencil_2d0_NO_NAME_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_stencil_2d0_NO_NAME_x_a;
    wire [15:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_stencil_2d0_NO_NAME_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_stencil_2d0_NO_NAME_x_a;
    wire [15:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_stencil_2d0_NO_NAME_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_stencil_2d0_NO_NAME_x_a;
    wire [15:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_stencil_2d0_NO_NAME_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_stencil_2d0_NO_NAME_x_a;
    wire [15:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_stencil_2d0_NO_NAME_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_stencil_2d0_NO_NAME_x_a;
    wire [15:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_stencil_2d0_NO_NAME_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_stencil_2d0_NO_NAME_x_a;
    wire [15:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_stencil_2d0_NO_NAME_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_stencil_2d0_NO_NAME_x_a;
    wire [15:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_stencil_2d0_NO_NAME_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_stencil_2d0_NO_NAME_x_a;
    wire [15:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_stencil_2d0_NO_NAME_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_stencil_2d0_NO_NAME_x_a;
    wire [15:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_stencil_2d0_NO_NAME_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_stencil_2d0_NO_NAME_x_a;
    wire [15:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_stencil_2d0_NO_NAME_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_stencil_2d0_NO_NAME_x_a;
    wire [15:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_stencil_2d0_NO_NAME_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_stencil_2d0_NO_NAME_x_a;
    wire [15:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_stencil_2d0_NO_NAME_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_stencil_2d0_NO_NAME_x_a;
    wire [15:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_stencil_2d0_NO_NAME_x_q;
    wire [39:0] i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [31:0] i_rem_zext_stencil_2d99_sel_x_b;
    wire [15:0] i_unnamed_stencil_2d13_sel_x_b;
    wire [16:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_0_0_a;
    wire [16:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_0_0_b;
    logic [16:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_0_0_o;
    wire [16:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_0_0_q;
    wire [15:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_a;
    wire [15:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_b;
    logic [15:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_o;
    wire [15:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    wire [0:0] i_exitcond_stencil_2d106_cmp_nsign_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid382_i_cleanups_shl68_stencil_2d0_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid382_i_cleanups_shl68_stencil_2d0_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid383_i_cleanups_shl68_stencil_2d0_shift_x_q;
    wire [0:0] leftShiftStage0_uid385_i_cleanups_shl68_stencil_2d0_shift_x_s;
    reg [3:0] leftShiftStage0_uid385_i_cleanups_shl68_stencil_2d0_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid389_i_next_initerations63_stencil_2d0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid391_i_next_initerations63_stencil_2d0_shift_x_q;
    wire [0:0] rightShiftStage0_uid393_i_next_initerations63_stencil_2d0_shift_x_s;
    reg [3:0] rightShiftStage0_uid393_i_next_initerations63_stencil_2d0_shift_x_q;
    wire [14:0] leftShiftStage0Idx1Rng1_uid398_i_unnamed_stencil_2d0_shift_x_in;
    wire [14:0] leftShiftStage0Idx1Rng1_uid398_i_unnamed_stencil_2d0_shift_x_b;
    wire [15:0] leftShiftStage0Idx1_uid399_i_unnamed_stencil_2d0_shift_x_q;
    wire [0:0] leftShiftStage0_uid401_i_unnamed_stencil_2d0_shift_x_s;
    reg [15:0] leftShiftStage0_uid401_i_unnamed_stencil_2d0_shift_x_q;
    wire [3:0] leftShiftStage1Idx1Pad4_uid410_dupName_0_i_unnamed_stencil_2d0_shift_x_q;
    wire [11:0] leftShiftStage1Idx1Rng4_uid411_dupName_0_i_unnamed_stencil_2d0_shift_x_in;
    wire [11:0] leftShiftStage1Idx1Rng4_uid411_dupName_0_i_unnamed_stencil_2d0_shift_x_b;
    wire [15:0] leftShiftStage1Idx1_uid412_dupName_0_i_unnamed_stencil_2d0_shift_x_q;
    wire [0:0] leftShiftStage1_uid414_dupName_0_i_unnamed_stencil_2d0_shift_x_s;
    reg [15:0] leftShiftStage1_uid414_dupName_0_i_unnamed_stencil_2d0_shift_x_q;
    wire [14:0] rightShiftStage0Idx1Rng1_uid418_dupName_1_i_unnamed_stencil_2d0_shift_x_b;
    wire [15:0] rightShiftStage0Idx1_uid420_dupName_1_i_unnamed_stencil_2d0_shift_x_q;
    wire [0:0] rightShiftStage0_uid422_dupName_1_i_unnamed_stencil_2d0_shift_x_s;
    reg [15:0] rightShiftStage0_uid422_dupName_1_i_unnamed_stencil_2d0_shift_x_q;
    wire [13:0] rightShiftStage1Idx1Rng2_uid423_dupName_1_i_unnamed_stencil_2d0_shift_x_b;
    wire [15:0] rightShiftStage1Idx1_uid425_dupName_1_i_unnamed_stencil_2d0_shift_x_q;
    wire [0:0] rightShiftStage1_uid427_dupName_1_i_unnamed_stencil_2d0_shift_x_s;
    reg [15:0] rightShiftStage1_uid427_dupName_1_i_unnamed_stencil_2d0_shift_x_q;
    wire [11:0] rightShiftStage2Idx1Rng4_uid428_dupName_1_i_unnamed_stencil_2d0_shift_x_b;
    wire [15:0] rightShiftStage2Idx1_uid430_dupName_1_i_unnamed_stencil_2d0_shift_x_q;
    wire [0:0] rightShiftStage2_uid432_dupName_1_i_unnamed_stencil_2d0_shift_x_s;
    reg [15:0] rightShiftStage2_uid432_dupName_1_i_unnamed_stencil_2d0_shift_x_q;
    wire [7:0] rightShiftStage3Idx1Rng8_uid433_dupName_1_i_unnamed_stencil_2d0_shift_x_b;
    wire [7:0] rightShiftStage3Idx1Pad8_uid434_dupName_1_i_unnamed_stencil_2d0_shift_x_q;
    wire [15:0] rightShiftStage3Idx1_uid435_dupName_1_i_unnamed_stencil_2d0_shift_x_q;
    wire [0:0] rightShiftStage3_uid437_dupName_1_i_unnamed_stencil_2d0_shift_x_s;
    reg [15:0] rightShiftStage3_uid437_dupName_1_i_unnamed_stencil_2d0_shift_x_q;
    wire [51:0] i_arrayidx1_stencil_2d0_upper_bits_x_merged_bit_select_b;
    wire [11:0] i_arrayidx1_stencil_2d0_upper_bits_x_merged_bit_select_c;
    wire [6:0] i_narrow_10_i_stencil_2d72_vt_select_2_merged_bit_select_in;
    wire [0:0] i_narrow_10_i_stencil_2d72_vt_select_2_merged_bit_select_b;
    wire [1:0] i_narrow_10_i_stencil_2d72_vt_select_2_merged_bit_select_c;
    wire [6:0] i_narrow_11_i_stencil_2d77_vt_select_2_merged_bit_select_in;
    wire [0:0] i_narrow_11_i_stencil_2d77_vt_select_2_merged_bit_select_b;
    wire [1:0] i_narrow_11_i_stencil_2d77_vt_select_2_merged_bit_select_c;
    wire [6:0] i_narrow_12_i_stencil_2d82_vt_select_2_merged_bit_select_in;
    wire [0:0] i_narrow_12_i_stencil_2d82_vt_select_2_merged_bit_select_b;
    wire [1:0] i_narrow_12_i_stencil_2d82_vt_select_2_merged_bit_select_c;
    wire [6:0] i_narrow_13_i_stencil_2d87_vt_select_2_merged_bit_select_in;
    wire [0:0] i_narrow_13_i_stencil_2d87_vt_select_2_merged_bit_select_b;
    wire [1:0] i_narrow_13_i_stencil_2d87_vt_select_2_merged_bit_select_c;
    wire [6:0] i_narrow_14_i_stencil_2d92_vt_select_2_merged_bit_select_in;
    wire [0:0] i_narrow_14_i_stencil_2d92_vt_select_2_merged_bit_select_b;
    wire [1:0] i_narrow_14_i_stencil_2d92_vt_select_2_merged_bit_select_c;
    wire [6:0] i_narrow_15_i_stencil_2d97_vt_select_2_merged_bit_select_in;
    wire [0:0] i_narrow_15_i_stencil_2d97_vt_select_2_merged_bit_select_b;
    wire [1:0] i_narrow_15_i_stencil_2d97_vt_select_2_merged_bit_select_c;
    wire [6:0] i_narrow_1_i_stencil_2d27_vt_select_2_merged_bit_select_in;
    wire [0:0] i_narrow_1_i_stencil_2d27_vt_select_2_merged_bit_select_b;
    wire [1:0] i_narrow_1_i_stencil_2d27_vt_select_2_merged_bit_select_c;
    wire [6:0] i_narrow_2_i_stencil_2d32_vt_select_2_merged_bit_select_in;
    wire [0:0] i_narrow_2_i_stencil_2d32_vt_select_2_merged_bit_select_b;
    wire [1:0] i_narrow_2_i_stencil_2d32_vt_select_2_merged_bit_select_c;
    wire [6:0] i_narrow_3_i_stencil_2d37_vt_select_2_merged_bit_select_in;
    wire [0:0] i_narrow_3_i_stencil_2d37_vt_select_2_merged_bit_select_b;
    wire [1:0] i_narrow_3_i_stencil_2d37_vt_select_2_merged_bit_select_c;
    wire [6:0] i_narrow_4_i_stencil_2d42_vt_select_2_merged_bit_select_in;
    wire [0:0] i_narrow_4_i_stencil_2d42_vt_select_2_merged_bit_select_b;
    wire [1:0] i_narrow_4_i_stencil_2d42_vt_select_2_merged_bit_select_c;
    wire [6:0] i_narrow_5_i_stencil_2d47_vt_select_2_merged_bit_select_in;
    wire [0:0] i_narrow_5_i_stencil_2d47_vt_select_2_merged_bit_select_b;
    wire [1:0] i_narrow_5_i_stencil_2d47_vt_select_2_merged_bit_select_c;
    wire [6:0] i_narrow_6_i_stencil_2d52_vt_select_2_merged_bit_select_in;
    wire [0:0] i_narrow_6_i_stencil_2d52_vt_select_2_merged_bit_select_b;
    wire [1:0] i_narrow_6_i_stencil_2d52_vt_select_2_merged_bit_select_c;
    wire [6:0] i_narrow_7_i_stencil_2d57_vt_select_2_merged_bit_select_in;
    wire [0:0] i_narrow_7_i_stencil_2d57_vt_select_2_merged_bit_select_b;
    wire [1:0] i_narrow_7_i_stencil_2d57_vt_select_2_merged_bit_select_c;
    wire [6:0] i_narrow_8_i_stencil_2d62_vt_select_2_merged_bit_select_in;
    wire [0:0] i_narrow_8_i_stencil_2d62_vt_select_2_merged_bit_select_b;
    wire [1:0] i_narrow_8_i_stencil_2d62_vt_select_2_merged_bit_select_c;
    wire [6:0] i_narrow_9_i_stencil_2d67_vt_select_2_merged_bit_select_in;
    wire [0:0] i_narrow_9_i_stencil_2d67_vt_select_2_merged_bit_select_b;
    wire [1:0] i_narrow_9_i_stencil_2d67_vt_select_2_merged_bit_select_c;
    reg [15:0] redist0_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_2_q;
    reg [15:0] redist1_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_3_q;
    reg [15:0] redist2_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_4_q;
    reg [15:0] redist3_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_5_q;
    reg [15:0] redist4_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_6_q;
    reg [15:0] redist5_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_7_q;
    reg [15:0] redist6_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_8_q;
    reg [15:0] redist7_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_10_q;
    reg [15:0] redist7_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_10_delay_0;
    reg [15:0] redist8_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_11_q;
    reg [15:0] redist9_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_12_q;
    reg [15:0] redist10_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_13_q;
    reg [15:0] redist11_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_14_q;
    reg [0:0] redist12_sync_together157_aunroll_x_in_c0_eni1_1_tpl_1_q;
    reg [0:0] redist13_sync_together157_aunroll_x_in_c0_eni1_1_tpl_3_q;
    reg [0:0] redist13_sync_together157_aunroll_x_in_c0_eni1_1_tpl_3_delay_0;
    reg [0:0] redist14_sync_together157_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist14_sync_together157_aunroll_x_in_i_valid_3_delay_0;
    reg [0:0] redist14_sync_together157_aunroll_x_in_i_valid_3_delay_1;
    reg [0:0] redist15_sync_together157_aunroll_x_in_i_valid_15_q;
    reg [0:0] redist16_sync_together157_aunroll_x_in_i_valid_16_q;
    reg [15:0] redist17_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q;
    reg [15:0] redist18_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q;
    reg [15:0] redist19_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q;
    reg [15:0] redist20_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q;
    reg [15:0] redist21_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q;
    reg [15:0] redist22_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q;
    reg [15:0] redist23_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q;
    reg [15:0] redist24_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q;
    reg [15:0] redist25_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q;
    reg [15:0] redist26_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q;
    reg [15:0] redist27_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q;
    reg [15:0] redist28_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q;
    reg [15:0] redist29_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q;
    reg [15:0] redist31_bgTrunc_i_sub16_i_9_i_stencil_2d68_sel_x_b_1_q;
    reg [0:0] redist32_i_masked73_stencil_2d115_q_14_q;
    reg [0:0] redist33_i_llvm_fpga_pipeline_keep_going64_stencil_2d6_out_data_out_1_q;
    reg [0:0] redist34_i_llvm_fpga_pipeline_keep_going64_stencil_2d6_out_data_out_3_q;
    reg [0:0] redist34_i_llvm_fpga_pipeline_keep_going64_stencil_2d6_out_data_out_3_delay_0;
    reg [0:0] redist35_i_llvm_fpga_pipeline_keep_going64_stencil_2d6_out_data_out_17_q;
    reg [0:0] redist36_i_first_cleanup_xor70_stencil_2d4_q_13_q;
    reg [9:0] redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_inputreg0_q;
    reg [9:0] redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_outputreg0_q;
    wire redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_mem_reset0;
    wire [9:0] redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_mem_ia;
    wire [3:0] redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_mem_aa;
    wire [3:0] redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_mem_ab;
    wire [9:0] redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_mem_iq;
    wire [9:0] redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_mem_q;
    wire [3:0] redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_rdcnt_q;
    (* preserve *) reg [3:0] redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_rdcnt_i;
    (* preserve *) reg redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_rdcnt_eq;
    reg [3:0] redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_wraddr_q;
    wire [4:0] redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_mem_last_q;
    wire [4:0] redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_cmp_b;
    wire [0:0] redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_cmp_q;
    (* dont_merge *) reg [0:0] redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_cmpReg_q;
    wire [0:0] redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_notEnable_q;
    wire [0:0] redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_nor_q;
    (* dont_merge *) reg [0:0] redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_sticky_ena_q;
    wire [0:0] redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_enaAnd_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist14_sync_together157_aunroll_x_in_i_valid_3(DELAY,468)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together157_aunroll_x_in_i_valid_3_delay_0 <= '0;
            redist14_sync_together157_aunroll_x_in_i_valid_3_delay_1 <= '0;
            redist14_sync_together157_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist14_sync_together157_aunroll_x_in_i_valid_3_delay_0 <= $unsigned(in_i_valid);
            redist14_sync_together157_aunroll_x_in_i_valid_3_delay_1 <= redist14_sync_together157_aunroll_x_in_i_valid_3_delay_0;
            redist14_sync_together157_aunroll_x_in_i_valid_3_q <= redist14_sync_together157_aunroll_x_in_i_valid_3_delay_1;
        end
    end

    // redist33_i_llvm_fpga_pipeline_keep_going64_stencil_2d6_out_data_out_1(DELAY,487)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_llvm_fpga_pipeline_keep_going64_stencil_2d6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist33_i_llvm_fpga_pipeline_keep_going64_stencil_2d6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going64_stencil_2d6_out_data_out);
        end
    end

    // redist34_i_llvm_fpga_pipeline_keep_going64_stencil_2d6_out_data_out_3(DELAY,488)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_llvm_fpga_pipeline_keep_going64_stencil_2d6_out_data_out_3_delay_0 <= '0;
            redist34_i_llvm_fpga_pipeline_keep_going64_stencil_2d6_out_data_out_3_q <= '0;
        end
        else
        begin
            redist34_i_llvm_fpga_pipeline_keep_going64_stencil_2d6_out_data_out_3_delay_0 <= $unsigned(redist33_i_llvm_fpga_pipeline_keep_going64_stencil_2d6_out_data_out_1_q);
            redist34_i_llvm_fpga_pipeline_keep_going64_stencil_2d6_out_data_out_3_q <= redist34_i_llvm_fpga_pipeline_keep_going64_stencil_2d6_out_data_out_3_delay_0;
        end
    end

    // leftShiftStage0Idx1Rng1_uid382_i_cleanups_shl68_stencil_2d0_shift_x(BITSELECT,381)@4
    assign leftShiftStage0Idx1Rng1_uid382_i_cleanups_shl68_stencil_2d0_shift_x_in = i_llvm_fpga_pop_i4_cleanups67_pop19_stencil_2d2_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid382_i_cleanups_shl68_stencil_2d0_shift_x_b = leftShiftStage0Idx1Rng1_uid382_i_cleanups_shl68_stencil_2d0_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid383_i_cleanups_shl68_stencil_2d0_shift_x(BITJOIN,382)@4
    assign leftShiftStage0Idx1_uid383_i_cleanups_shl68_stencil_2d0_shift_x_q = {leftShiftStage0Idx1Rng1_uid382_i_cleanups_shl68_stencil_2d0_shift_x_b, GND_q};

    // leftShiftStage0_uid385_i_cleanups_shl68_stencil_2d0_shift_x(MUX,384)@4
    assign leftShiftStage0_uid385_i_cleanups_shl68_stencil_2d0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid385_i_cleanups_shl68_stencil_2d0_shift_x_s or i_llvm_fpga_pop_i4_cleanups67_pop19_stencil_2d2_out_data_out or leftShiftStage0Idx1_uid383_i_cleanups_shl68_stencil_2d0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid385_i_cleanups_shl68_stencil_2d0_shift_x_s)
            1'b0 : leftShiftStage0_uid385_i_cleanups_shl68_stencil_2d0_shift_x_q = i_llvm_fpga_pop_i4_cleanups67_pop19_stencil_2d2_out_data_out;
            1'b1 : leftShiftStage0_uid385_i_cleanups_shl68_stencil_2d0_shift_x_q = leftShiftStage0Idx1_uid383_i_cleanups_shl68_stencil_2d0_shift_x_q;
            default : leftShiftStage0_uid385_i_cleanups_shl68_stencil_2d0_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl68_stencil_2d5_vt_select_3(BITSELECT,52)@4
    assign i_cleanups_shl68_stencil_2d5_vt_select_3_b = leftShiftStage0_uid385_i_cleanups_shl68_stencil_2d0_shift_x_q[3:1];

    // i_cleanups_shl68_stencil_2d5_vt_join(BITJOIN,51)@4
    assign i_cleanups_shl68_stencil_2d5_vt_join_q = {i_cleanups_shl68_stencil_2d5_vt_select_3_b, GND_q};

    // i_first_cleanup_xor70_stencil_2d4(LOGICAL,70)@4
    assign i_first_cleanup_xor70_stencil_2d4_q = i_first_cleanup69_stencil_2d3_sel_x_b ^ VCC_q;

    // i_notcmp60_stencil_2d108(LOGICAL,201)@4
    assign i_notcmp60_stencil_2d108_q = i_exitcond_stencil_2d106_cmp_nsign_q ^ VCC_q;

    // i_or71_stencil_2d110(LOGICAL,202)@4
    assign i_or71_stencil_2d110_q = i_notcmp60_stencil_2d108_q | i_first_cleanup_xor70_stencil_2d4_q;

    // i_next_cleanups72_stencil_2d111(MUX,197)@4
    assign i_next_cleanups72_stencil_2d111_s = i_or71_stencil_2d110_q;
    always @(i_next_cleanups72_stencil_2d111_s or i_llvm_fpga_pop_i4_cleanups67_pop19_stencil_2d2_out_data_out or i_cleanups_shl68_stencil_2d5_vt_join_q)
    begin
        unique case (i_next_cleanups72_stencil_2d111_s)
            1'b0 : i_next_cleanups72_stencil_2d111_q = i_llvm_fpga_pop_i4_cleanups67_pop19_stencil_2d2_out_data_out;
            1'b1 : i_next_cleanups72_stencil_2d111_q = i_cleanups_shl68_stencil_2d5_vt_join_q;
            default : i_next_cleanups72_stencil_2d111_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups67_push19_stencil_2d112(BLACKBOX,89)@4
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    stencil_2d_i_llvm_fpga_push_i4_cleanups67_push19_0 thei_llvm_fpga_push_i4_cleanups67_push19_stencil_2d112 (
        .in_data_in(i_next_cleanups72_stencil_2d111_q),
        .in_feedback_stall_in_19(i_llvm_fpga_pop_i4_cleanups67_pop19_stencil_2d2_out_feedback_stall_out_19),
        .in_keep_going64(redist34_i_llvm_fpga_pipeline_keep_going64_stencil_2d6_out_data_out_3_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist14_sync_together157_aunroll_x_in_i_valid_3_q),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_i4_cleanups67_push19_stencil_2d112_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_i4_cleanups67_push19_stencil_2d112_out_feedback_valid_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist12_sync_together157_aunroll_x_in_c0_eni1_1_tpl_1(DELAY,466)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together157_aunroll_x_in_c0_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist12_sync_together157_aunroll_x_in_c0_eni1_1_tpl_1_q <= $unsigned(in_c0_eni1_1_tpl);
        end
    end

    // redist13_sync_together157_aunroll_x_in_c0_eni1_1_tpl_3(DELAY,467)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together157_aunroll_x_in_c0_eni1_1_tpl_3_delay_0 <= '0;
            redist13_sync_together157_aunroll_x_in_c0_eni1_1_tpl_3_q <= '0;
        end
        else
        begin
            redist13_sync_together157_aunroll_x_in_c0_eni1_1_tpl_3_delay_0 <= $unsigned(redist12_sync_together157_aunroll_x_in_c0_eni1_1_tpl_1_q);
            redist13_sync_together157_aunroll_x_in_c0_eni1_1_tpl_3_q <= redist13_sync_together157_aunroll_x_in_c0_eni1_1_tpl_3_delay_0;
        end
    end

    // c_i4_7129(CONSTANT,42)
    assign c_i4_7129_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups67_pop19_stencil_2d2(BLACKBOX,83)@4
    // out out_feedback_stall_out_19@20000000
    stencil_2d_i_llvm_fpga_pop_i4_cleanups67_pop19_0 thei_llvm_fpga_pop_i4_cleanups67_pop19_stencil_2d2 (
        .in_data_in(c_i4_7129_q),
        .in_dir(redist13_sync_together157_aunroll_x_in_c0_eni1_1_tpl_3_q),
        .in_feedback_in_19(i_llvm_fpga_push_i4_cleanups67_push19_stencil_2d112_out_feedback_out_19),
        .in_feedback_valid_in_19(i_llvm_fpga_push_i4_cleanups67_push19_stencil_2d112_out_feedback_valid_out_19),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist14_sync_together157_aunroll_x_in_i_valid_3_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups67_pop19_stencil_2d2_out_data_out),
        .out_feedback_stall_out_19(i_llvm_fpga_pop_i4_cleanups67_pop19_stencil_2d2_out_feedback_stall_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup69_stencil_2d3_sel_x(BITSELECT,272)@4
    assign i_first_cleanup69_stencil_2d3_sel_x_b = i_llvm_fpga_pop_i4_cleanups67_pop19_stencil_2d2_out_data_out[0:0];

    // c_i11_1142(CONSTANT,19)
    assign c_i11_1142_q = $unsigned(11'b11111111111);

    // i_fpga_indvars_iv_next_stencil_2d113(ADD,71)@4
    assign i_fpga_indvars_iv_next_stencil_2d113_a = {1'b0, i_llvm_fpga_pop_i11_fpga_indvars_iv_pop16_stencil_2d105_out_data_out};
    assign i_fpga_indvars_iv_next_stencil_2d113_b = {1'b0, c_i11_1142_q};
    assign i_fpga_indvars_iv_next_stencil_2d113_o = $unsigned(i_fpga_indvars_iv_next_stencil_2d113_a) + $unsigned(i_fpga_indvars_iv_next_stencil_2d113_b);
    assign i_fpga_indvars_iv_next_stencil_2d113_q = i_fpga_indvars_iv_next_stencil_2d113_o[11:0];

    // bgTrunc_i_fpga_indvars_iv_next_stencil_2d113_sel_x(BITSELECT,237)@4
    assign bgTrunc_i_fpga_indvars_iv_next_stencil_2d113_sel_x_b = i_fpga_indvars_iv_next_stencil_2d113_q[10:0];

    // i_llvm_fpga_push_i11_fpga_indvars_iv_push16_stencil_2d114(BLACKBOX,85)@4
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    stencil_2d_i_llvm_fpga_push_i11_fpga_indvars_iv_push16_0 thei_llvm_fpga_push_i11_fpga_indvars_iv_push16_stencil_2d114 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_stencil_2d113_sel_x_b),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i11_fpga_indvars_iv_pop16_stencil_2d105_out_feedback_stall_out_16),
        .in_keep_going64(redist34_i_llvm_fpga_pipeline_keep_going64_stencil_2d6_out_data_out_3_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist14_sync_together157_aunroll_x_in_i_valid_3_q),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i11_fpga_indvars_iv_push16_stencil_2d114_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i11_fpga_indvars_iv_push16_stencil_2d114_out_feedback_valid_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i11_898140(CONSTANT,20)
    assign c_i11_898140_q = $unsigned(11'b01110000010);

    // i_llvm_fpga_pop_i11_fpga_indvars_iv_pop16_stencil_2d105(BLACKBOX,81)@4
    // out out_feedback_stall_out_16@20000000
    stencil_2d_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop16_0 thei_llvm_fpga_pop_i11_fpga_indvars_iv_pop16_stencil_2d105 (
        .in_data_in(c_i11_898140_q),
        .in_dir(redist13_sync_together157_aunroll_x_in_c0_eni1_1_tpl_3_q),
        .in_feedback_in_16(i_llvm_fpga_push_i11_fpga_indvars_iv_push16_stencil_2d114_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i11_fpga_indvars_iv_push16_stencil_2d114_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist14_sync_together157_aunroll_x_in_i_valid_3_q),
        .out_data_out(i_llvm_fpga_pop_i11_fpga_indvars_iv_pop16_stencil_2d105_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i11_fpga_indvars_iv_pop16_stencil_2d105_out_feedback_stall_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_stencil_2d106_cmp_nsign(LOGICAL,377)@4
    assign i_exitcond_stencil_2d106_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i11_fpga_indvars_iv_pop16_stencil_2d105_out_data_out[10:10]));

    // i_llvm_fpga_push_i1_notexitcond74_stencil_2d109(BLACKBOX,87)@4
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    stencil_2d_i_llvm_fpga_push_i1_notexitcond74_0 thei_llvm_fpga_push_i1_notexitcond74_stencil_2d109 (
        .in_data_in(i_exitcond_stencil_2d106_cmp_nsign_q),
        .in_feedback_stall_in_13(i_llvm_fpga_pipeline_keep_going64_stencil_2d6_out_not_exitcond_stall_out),
        .in_first_cleanup69(i_first_cleanup69_stencil_2d3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist14_sync_together157_aunroll_x_in_i_valid_3_q),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i1_notexitcond74_stencil_2d109_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i1_notexitcond74_stencil_2d109_out_feedback_valid_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,345)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid389_i_next_initerations63_stencil_2d0_shift_x(BITSELECT,388)@2
    assign rightShiftStage0Idx1Rng1_uid389_i_next_initerations63_stencil_2d0_shift_x_b = i_llvm_fpga_pop_i4_initerations62_pop18_stencil_2d7_out_data_out[3:1];

    // rightShiftStage0Idx1_uid391_i_next_initerations63_stencil_2d0_shift_x(BITJOIN,390)@2
    assign rightShiftStage0Idx1_uid391_i_next_initerations63_stencil_2d0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid389_i_next_initerations63_stencil_2d0_shift_x_b};

    // valid_fanout_reg1(REG,343)@1 + 1
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

    // valid_fanout_reg2(REG,344)@1 + 1
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

    // i_llvm_fpga_push_i4_initerations62_push18_stencil_2d9(BLACKBOX,90)@2
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    stencil_2d_i_llvm_fpga_push_i4_initerations62_push18_0 thei_llvm_fpga_push_i4_initerations62_push18_stencil_2d9 (
        .in_data_in(i_next_initerations63_stencil_2d8_vt_join_q),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i4_initerations62_pop18_stencil_2d7_out_feedback_stall_out_18),
        .in_keep_going64(redist33_i_llvm_fpga_pipeline_keep_going64_stencil_2d6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i4_initerations62_push18_stencil_2d9_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i4_initerations62_push18_stencil_2d9_out_feedback_valid_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations62_pop18_stencil_2d7(BLACKBOX,84)@2
    // out out_feedback_stall_out_18@20000000
    stencil_2d_i_llvm_fpga_pop_i4_initerations62_pop18_0 thei_llvm_fpga_pop_i4_initerations62_pop18_stencil_2d7 (
        .in_data_in(c_i4_7129_q),
        .in_dir(redist12_sync_together157_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_18(i_llvm_fpga_push_i4_initerations62_push18_stencil_2d9_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i4_initerations62_push18_stencil_2d9_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_initerations62_pop18_stencil_2d7_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i4_initerations62_pop18_stencil_2d7_out_feedback_stall_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid393_i_next_initerations63_stencil_2d0_shift_x(MUX,392)@2
    assign rightShiftStage0_uid393_i_next_initerations63_stencil_2d0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid393_i_next_initerations63_stencil_2d0_shift_x_s or i_llvm_fpga_pop_i4_initerations62_pop18_stencil_2d7_out_data_out or rightShiftStage0Idx1_uid391_i_next_initerations63_stencil_2d0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid393_i_next_initerations63_stencil_2d0_shift_x_s)
            1'b0 : rightShiftStage0_uid393_i_next_initerations63_stencil_2d0_shift_x_q = i_llvm_fpga_pop_i4_initerations62_pop18_stencil_2d7_out_data_out;
            1'b1 : rightShiftStage0_uid393_i_next_initerations63_stencil_2d0_shift_x_q = rightShiftStage0Idx1_uid391_i_next_initerations63_stencil_2d0_shift_x_q;
            default : rightShiftStage0_uid393_i_next_initerations63_stencil_2d0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations63_stencil_2d8_vt_select_2(BITSELECT,200)@2
    assign i_next_initerations63_stencil_2d8_vt_select_2_b = rightShiftStage0_uid393_i_next_initerations63_stencil_2d0_shift_x_q[2:0];

    // i_next_initerations63_stencil_2d8_vt_join(BITJOIN,199)@2
    assign i_next_initerations63_stencil_2d8_vt_join_q = {GND_q, i_next_initerations63_stencil_2d8_vt_select_2_b};

    // i_last_initeration65_stencil_2d10_sel_x(BITSELECT,274)@2
    assign i_last_initeration65_stencil_2d10_sel_x_b = i_next_initerations63_stencil_2d8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration66_stencil_2d11(BLACKBOX,86)@2
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    stencil_2d_i_llvm_fpga_push_i1_lastiniteration66_0 thei_llvm_fpga_push_i1_lastiniteration66_stencil_2d11 (
        .in_data_in(i_last_initeration65_stencil_2d10_sel_x_b),
        .in_feedback_stall_in_12(i_llvm_fpga_pipeline_keep_going64_stencil_2d6_out_initeration_stall_out),
        .in_keep_going64(redist33_i_llvm_fpga_pipeline_keep_going64_stencil_2d6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_12(i_llvm_fpga_push_i1_lastiniteration66_stencil_2d11_out_feedback_out_12),
        .out_feedback_valid_out_12(i_llvm_fpga_push_i1_lastiniteration66_stencil_2d11_out_feedback_valid_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going64_stencil_2d6(BLACKBOX,80)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    stencil_2d_i_llvm_fpga_pipeline_keep_going64_0 thei_llvm_fpga_pipeline_keep_going64_stencil_2d6 (
        .in_data_in(in_c0_eni1_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration66_stencil_2d11_out_feedback_out_12),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration66_stencil_2d11_out_feedback_valid_out_12),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond74_stencil_2d109_out_feedback_out_13),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond74_stencil_2d109_out_feedback_valid_out_13),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going64_stencil_2d6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going64_stencil_2d6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going64_stencil_2d6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going64_stencil_2d6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going64_stencil_2d6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going64_stencil_2d6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,46)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going64_stencil_2d6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going64_stencil_2d6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going64_stencil_2d6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going64_stencil_2d6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,234)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going64_stencil_2d6_out_pipeline_valid_out;

    // c_i16_018(CONSTANT,21)
    assign c_i16_018_q = $unsigned(16'b0000000000000000);

    // i_narrow_10_i_stencil_2d72_vt_const_15(CONSTANT,94)
    assign i_narrow_10_i_stencil_2d72_vt_const_15_q = $unsigned(9'b000000000);

    // c_i16_100138(CONSTANT,22)
    assign c_i16_100138_q = $unsigned(16'b0000000001100100);

    // i_cmp13_i_15_i_stencil_2d96(COMPARE,58)@17
    assign i_cmp13_i_15_i_stencil_2d96_a = {2'b00, redist25_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q};
    assign i_cmp13_i_15_i_stencil_2d96_b = {2'b00, c_i16_100138_q};
    assign i_cmp13_i_15_i_stencil_2d96_o = $unsigned(i_cmp13_i_15_i_stencil_2d96_a) - $unsigned(i_cmp13_i_15_i_stencil_2d96_b);
    assign i_cmp13_i_15_i_stencil_2d96_c[0] = i_cmp13_i_15_i_stencil_2d96_o[17];

    // i_narrow_15_i_stencil_2d97(MUX,127)@17
    assign i_narrow_15_i_stencil_2d97_s = i_cmp13_i_15_i_stencil_2d96_c;
    always @(i_narrow_15_i_stencil_2d97_s or c_i16_100138_q or c_i16_018_q)
    begin
        unique case (i_narrow_15_i_stencil_2d97_s)
            1'b0 : i_narrow_15_i_stencil_2d97_q = c_i16_100138_q;
            1'b1 : i_narrow_15_i_stencil_2d97_q = c_i16_018_q;
            default : i_narrow_15_i_stencil_2d97_q = 16'b0;
        endcase
    end

    // i_narrow_15_i_stencil_2d97_vt_select_2_merged_bit_select(BITSELECT,444)@17
    assign i_narrow_15_i_stencil_2d97_vt_select_2_merged_bit_select_in = i_narrow_15_i_stencil_2d97_q[6:0];
    assign i_narrow_15_i_stencil_2d97_vt_select_2_merged_bit_select_b = i_narrow_15_i_stencil_2d97_vt_select_2_merged_bit_select_in[2:2];
    assign i_narrow_15_i_stencil_2d97_vt_select_2_merged_bit_select_c = i_narrow_15_i_stencil_2d97_vt_select_2_merged_bit_select_in[6:5];

    // i_arrayidx1_stencil_2d101_vt_const_1(CONSTANT,47)
    assign i_arrayidx1_stencil_2d101_vt_const_1_q = $unsigned(2'b00);

    // i_narrow_15_i_stencil_2d97_vt_join(BITJOIN,131)@17
    assign i_narrow_15_i_stencil_2d97_vt_join_q = {i_narrow_10_i_stencil_2d72_vt_const_15_q, i_narrow_15_i_stencil_2d97_vt_select_2_merged_bit_select_c, i_arrayidx1_stencil_2d101_vt_const_1_q, i_narrow_15_i_stencil_2d97_vt_select_2_merged_bit_select_b, i_arrayidx1_stencil_2d101_vt_const_1_q};

    // c_i8_224(CONSTANT,43)
    assign c_i8_224_q = $unsigned(8'b00000010);

    // i_cmp13_i_14_i_stencil_2d91(COMPARE,57)@16
    assign i_cmp13_i_14_i_stencil_2d91_a = {2'b00, redist26_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q};
    assign i_cmp13_i_14_i_stencil_2d91_b = {2'b00, c_i16_100138_q};
    assign i_cmp13_i_14_i_stencil_2d91_o = $unsigned(i_cmp13_i_14_i_stencil_2d91_a) - $unsigned(i_cmp13_i_14_i_stencil_2d91_b);
    assign i_cmp13_i_14_i_stencil_2d91_c[0] = i_cmp13_i_14_i_stencil_2d91_o[17];

    // i_narrow_14_i_stencil_2d92(MUX,120)@16
    assign i_narrow_14_i_stencil_2d92_s = i_cmp13_i_14_i_stencil_2d91_c;
    always @(i_narrow_14_i_stencil_2d92_s or c_i16_100138_q or c_i16_018_q)
    begin
        unique case (i_narrow_14_i_stencil_2d92_s)
            1'b0 : i_narrow_14_i_stencil_2d92_q = c_i16_100138_q;
            1'b1 : i_narrow_14_i_stencil_2d92_q = c_i16_018_q;
            default : i_narrow_14_i_stencil_2d92_q = 16'b0;
        endcase
    end

    // i_narrow_14_i_stencil_2d92_vt_select_2_merged_bit_select(BITSELECT,443)@16
    assign i_narrow_14_i_stencil_2d92_vt_select_2_merged_bit_select_in = i_narrow_14_i_stencil_2d92_q[6:0];
    assign i_narrow_14_i_stencil_2d92_vt_select_2_merged_bit_select_b = i_narrow_14_i_stencil_2d92_vt_select_2_merged_bit_select_in[2:2];
    assign i_narrow_14_i_stencil_2d92_vt_select_2_merged_bit_select_c = i_narrow_14_i_stencil_2d92_vt_select_2_merged_bit_select_in[6:5];

    // i_narrow_14_i_stencil_2d92_vt_join(BITJOIN,124)@16
    assign i_narrow_14_i_stencil_2d92_vt_join_q = {i_narrow_10_i_stencil_2d72_vt_const_15_q, i_narrow_14_i_stencil_2d92_vt_select_2_merged_bit_select_c, i_arrayidx1_stencil_2d101_vt_const_1_q, i_narrow_14_i_stencil_2d92_vt_select_2_merged_bit_select_b, i_arrayidx1_stencil_2d101_vt_const_1_q};

    // i_cmp13_i_13_i_stencil_2d86(COMPARE,56)@15
    assign i_cmp13_i_13_i_stencil_2d86_a = {2'b00, redist27_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q};
    assign i_cmp13_i_13_i_stencil_2d86_b = {2'b00, c_i16_100138_q};
    assign i_cmp13_i_13_i_stencil_2d86_o = $unsigned(i_cmp13_i_13_i_stencil_2d86_a) - $unsigned(i_cmp13_i_13_i_stencil_2d86_b);
    assign i_cmp13_i_13_i_stencil_2d86_c[0] = i_cmp13_i_13_i_stencil_2d86_o[17];

    // i_narrow_13_i_stencil_2d87(MUX,113)@15
    assign i_narrow_13_i_stencil_2d87_s = i_cmp13_i_13_i_stencil_2d86_c;
    always @(i_narrow_13_i_stencil_2d87_s or c_i16_100138_q or c_i16_018_q)
    begin
        unique case (i_narrow_13_i_stencil_2d87_s)
            1'b0 : i_narrow_13_i_stencil_2d87_q = c_i16_100138_q;
            1'b1 : i_narrow_13_i_stencil_2d87_q = c_i16_018_q;
            default : i_narrow_13_i_stencil_2d87_q = 16'b0;
        endcase
    end

    // i_narrow_13_i_stencil_2d87_vt_select_2_merged_bit_select(BITSELECT,442)@15
    assign i_narrow_13_i_stencil_2d87_vt_select_2_merged_bit_select_in = i_narrow_13_i_stencil_2d87_q[6:0];
    assign i_narrow_13_i_stencil_2d87_vt_select_2_merged_bit_select_b = i_narrow_13_i_stencil_2d87_vt_select_2_merged_bit_select_in[2:2];
    assign i_narrow_13_i_stencil_2d87_vt_select_2_merged_bit_select_c = i_narrow_13_i_stencil_2d87_vt_select_2_merged_bit_select_in[6:5];

    // i_narrow_13_i_stencil_2d87_vt_join(BITJOIN,117)@15
    assign i_narrow_13_i_stencil_2d87_vt_join_q = {i_narrow_10_i_stencil_2d72_vt_const_15_q, i_narrow_13_i_stencil_2d87_vt_select_2_merged_bit_select_c, i_arrayidx1_stencil_2d101_vt_const_1_q, i_narrow_13_i_stencil_2d87_vt_select_2_merged_bit_select_b, i_arrayidx1_stencil_2d101_vt_const_1_q};

    // i_cmp13_i_12_i_stencil_2d81(COMPARE,55)@14
    assign i_cmp13_i_12_i_stencil_2d81_a = {2'b00, redist28_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q};
    assign i_cmp13_i_12_i_stencil_2d81_b = {2'b00, c_i16_100138_q};
    assign i_cmp13_i_12_i_stencil_2d81_o = $unsigned(i_cmp13_i_12_i_stencil_2d81_a) - $unsigned(i_cmp13_i_12_i_stencil_2d81_b);
    assign i_cmp13_i_12_i_stencil_2d81_c[0] = i_cmp13_i_12_i_stencil_2d81_o[17];

    // i_narrow_12_i_stencil_2d82(MUX,106)@14
    assign i_narrow_12_i_stencil_2d82_s = i_cmp13_i_12_i_stencil_2d81_c;
    always @(i_narrow_12_i_stencil_2d82_s or c_i16_100138_q or c_i16_018_q)
    begin
        unique case (i_narrow_12_i_stencil_2d82_s)
            1'b0 : i_narrow_12_i_stencil_2d82_q = c_i16_100138_q;
            1'b1 : i_narrow_12_i_stencil_2d82_q = c_i16_018_q;
            default : i_narrow_12_i_stencil_2d82_q = 16'b0;
        endcase
    end

    // i_narrow_12_i_stencil_2d82_vt_select_2_merged_bit_select(BITSELECT,441)@14
    assign i_narrow_12_i_stencil_2d82_vt_select_2_merged_bit_select_in = i_narrow_12_i_stencil_2d82_q[6:0];
    assign i_narrow_12_i_stencil_2d82_vt_select_2_merged_bit_select_b = i_narrow_12_i_stencil_2d82_vt_select_2_merged_bit_select_in[2:2];
    assign i_narrow_12_i_stencil_2d82_vt_select_2_merged_bit_select_c = i_narrow_12_i_stencil_2d82_vt_select_2_merged_bit_select_in[6:5];

    // i_narrow_12_i_stencil_2d82_vt_join(BITJOIN,110)@14
    assign i_narrow_12_i_stencil_2d82_vt_join_q = {i_narrow_10_i_stencil_2d72_vt_const_15_q, i_narrow_12_i_stencil_2d82_vt_select_2_merged_bit_select_c, i_arrayidx1_stencil_2d101_vt_const_1_q, i_narrow_12_i_stencil_2d82_vt_select_2_merged_bit_select_b, i_arrayidx1_stencil_2d101_vt_const_1_q};

    // i_cmp13_i_11_i_stencil_2d76(COMPARE,54)@13
    assign i_cmp13_i_11_i_stencil_2d76_a = {2'b00, redist29_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q};
    assign i_cmp13_i_11_i_stencil_2d76_b = {2'b00, c_i16_100138_q};
    assign i_cmp13_i_11_i_stencil_2d76_o = $unsigned(i_cmp13_i_11_i_stencil_2d76_a) - $unsigned(i_cmp13_i_11_i_stencil_2d76_b);
    assign i_cmp13_i_11_i_stencil_2d76_c[0] = i_cmp13_i_11_i_stencil_2d76_o[17];

    // i_narrow_11_i_stencil_2d77(MUX,99)@13
    assign i_narrow_11_i_stencil_2d77_s = i_cmp13_i_11_i_stencil_2d76_c;
    always @(i_narrow_11_i_stencil_2d77_s or c_i16_100138_q or c_i16_018_q)
    begin
        unique case (i_narrow_11_i_stencil_2d77_s)
            1'b0 : i_narrow_11_i_stencil_2d77_q = c_i16_100138_q;
            1'b1 : i_narrow_11_i_stencil_2d77_q = c_i16_018_q;
            default : i_narrow_11_i_stencil_2d77_q = 16'b0;
        endcase
    end

    // i_narrow_11_i_stencil_2d77_vt_select_2_merged_bit_select(BITSELECT,440)@13
    assign i_narrow_11_i_stencil_2d77_vt_select_2_merged_bit_select_in = i_narrow_11_i_stencil_2d77_q[6:0];
    assign i_narrow_11_i_stencil_2d77_vt_select_2_merged_bit_select_b = i_narrow_11_i_stencil_2d77_vt_select_2_merged_bit_select_in[2:2];
    assign i_narrow_11_i_stencil_2d77_vt_select_2_merged_bit_select_c = i_narrow_11_i_stencil_2d77_vt_select_2_merged_bit_select_in[6:5];

    // i_narrow_11_i_stencil_2d77_vt_join(BITJOIN,103)@13
    assign i_narrow_11_i_stencil_2d77_vt_join_q = {i_narrow_10_i_stencil_2d72_vt_const_15_q, i_narrow_11_i_stencil_2d77_vt_select_2_merged_bit_select_c, i_arrayidx1_stencil_2d101_vt_const_1_q, i_narrow_11_i_stencil_2d77_vt_select_2_merged_bit_select_b, i_arrayidx1_stencil_2d101_vt_const_1_q};

    // i_cmp13_i_10_i_stencil_2d71(COMPARE,53)@12
    assign i_cmp13_i_10_i_stencil_2d71_a = {2'b00, i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_stencil_2d0_NO_NAME_x_q};
    assign i_cmp13_i_10_i_stencil_2d71_b = {2'b00, c_i16_100138_q};
    assign i_cmp13_i_10_i_stencil_2d71_o = $unsigned(i_cmp13_i_10_i_stencil_2d71_a) - $unsigned(i_cmp13_i_10_i_stencil_2d71_b);
    assign i_cmp13_i_10_i_stencil_2d71_c[0] = i_cmp13_i_10_i_stencil_2d71_o[17];

    // i_narrow_10_i_stencil_2d72(MUX,92)@12
    assign i_narrow_10_i_stencil_2d72_s = i_cmp13_i_10_i_stencil_2d71_c;
    always @(i_narrow_10_i_stencil_2d72_s or c_i16_100138_q or c_i16_018_q)
    begin
        unique case (i_narrow_10_i_stencil_2d72_s)
            1'b0 : i_narrow_10_i_stencil_2d72_q = c_i16_100138_q;
            1'b1 : i_narrow_10_i_stencil_2d72_q = c_i16_018_q;
            default : i_narrow_10_i_stencil_2d72_q = 16'b0;
        endcase
    end

    // i_narrow_10_i_stencil_2d72_vt_select_2_merged_bit_select(BITSELECT,439)@12
    assign i_narrow_10_i_stencil_2d72_vt_select_2_merged_bit_select_in = i_narrow_10_i_stencil_2d72_q[6:0];
    assign i_narrow_10_i_stencil_2d72_vt_select_2_merged_bit_select_b = i_narrow_10_i_stencil_2d72_vt_select_2_merged_bit_select_in[2:2];
    assign i_narrow_10_i_stencil_2d72_vt_select_2_merged_bit_select_c = i_narrow_10_i_stencil_2d72_vt_select_2_merged_bit_select_in[6:5];

    // i_narrow_10_i_stencil_2d72_vt_join(BITJOIN,96)@12
    assign i_narrow_10_i_stencil_2d72_vt_join_q = {i_narrow_10_i_stencil_2d72_vt_const_15_q, i_narrow_10_i_stencil_2d72_vt_select_2_merged_bit_select_c, i_arrayidx1_stencil_2d101_vt_const_1_q, i_narrow_10_i_stencil_2d72_vt_select_2_merged_bit_select_b, i_arrayidx1_stencil_2d101_vt_const_1_q};

    // i_cmp13_i_9_i_stencil_2d66(COMPARE,67)@11
    assign i_cmp13_i_9_i_stencil_2d66_a = {2'b00, redist17_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q};
    assign i_cmp13_i_9_i_stencil_2d66_b = {2'b00, c_i16_100138_q};
    assign i_cmp13_i_9_i_stencil_2d66_o = $unsigned(i_cmp13_i_9_i_stencil_2d66_a) - $unsigned(i_cmp13_i_9_i_stencil_2d66_b);
    assign i_cmp13_i_9_i_stencil_2d66_c[0] = i_cmp13_i_9_i_stencil_2d66_o[17];

    // i_narrow_9_i_stencil_2d67(MUX,190)@11
    assign i_narrow_9_i_stencil_2d67_s = i_cmp13_i_9_i_stencil_2d66_c;
    always @(i_narrow_9_i_stencil_2d67_s or c_i16_100138_q or c_i16_018_q)
    begin
        unique case (i_narrow_9_i_stencil_2d67_s)
            1'b0 : i_narrow_9_i_stencil_2d67_q = c_i16_100138_q;
            1'b1 : i_narrow_9_i_stencil_2d67_q = c_i16_018_q;
            default : i_narrow_9_i_stencil_2d67_q = 16'b0;
        endcase
    end

    // i_narrow_9_i_stencil_2d67_vt_select_2_merged_bit_select(BITSELECT,453)@11
    assign i_narrow_9_i_stencil_2d67_vt_select_2_merged_bit_select_in = i_narrow_9_i_stencil_2d67_q[6:0];
    assign i_narrow_9_i_stencil_2d67_vt_select_2_merged_bit_select_b = i_narrow_9_i_stencil_2d67_vt_select_2_merged_bit_select_in[2:2];
    assign i_narrow_9_i_stencil_2d67_vt_select_2_merged_bit_select_c = i_narrow_9_i_stencil_2d67_vt_select_2_merged_bit_select_in[6:5];

    // i_narrow_9_i_stencil_2d67_vt_join(BITJOIN,194)@11
    assign i_narrow_9_i_stencil_2d67_vt_join_q = {i_narrow_10_i_stencil_2d72_vt_const_15_q, i_narrow_9_i_stencil_2d67_vt_select_2_merged_bit_select_c, i_arrayidx1_stencil_2d101_vt_const_1_q, i_narrow_9_i_stencil_2d67_vt_select_2_merged_bit_select_b, i_arrayidx1_stencil_2d101_vt_const_1_q};

    // i_cmp13_i_8_i_stencil_2d61(COMPARE,66)@10
    assign i_cmp13_i_8_i_stencil_2d61_a = {2'b00, redist18_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q};
    assign i_cmp13_i_8_i_stencil_2d61_b = {2'b00, c_i16_100138_q};
    assign i_cmp13_i_8_i_stencil_2d61_o = $unsigned(i_cmp13_i_8_i_stencil_2d61_a) - $unsigned(i_cmp13_i_8_i_stencil_2d61_b);
    assign i_cmp13_i_8_i_stencil_2d61_c[0] = i_cmp13_i_8_i_stencil_2d61_o[17];

    // i_narrow_8_i_stencil_2d62(MUX,183)@10
    assign i_narrow_8_i_stencil_2d62_s = i_cmp13_i_8_i_stencil_2d61_c;
    always @(i_narrow_8_i_stencil_2d62_s or c_i16_100138_q or c_i16_018_q)
    begin
        unique case (i_narrow_8_i_stencil_2d62_s)
            1'b0 : i_narrow_8_i_stencil_2d62_q = c_i16_100138_q;
            1'b1 : i_narrow_8_i_stencil_2d62_q = c_i16_018_q;
            default : i_narrow_8_i_stencil_2d62_q = 16'b0;
        endcase
    end

    // i_narrow_8_i_stencil_2d62_vt_select_2_merged_bit_select(BITSELECT,452)@10
    assign i_narrow_8_i_stencil_2d62_vt_select_2_merged_bit_select_in = i_narrow_8_i_stencil_2d62_q[6:0];
    assign i_narrow_8_i_stencil_2d62_vt_select_2_merged_bit_select_b = i_narrow_8_i_stencil_2d62_vt_select_2_merged_bit_select_in[2:2];
    assign i_narrow_8_i_stencil_2d62_vt_select_2_merged_bit_select_c = i_narrow_8_i_stencil_2d62_vt_select_2_merged_bit_select_in[6:5];

    // i_narrow_8_i_stencil_2d62_vt_join(BITJOIN,187)@10
    assign i_narrow_8_i_stencil_2d62_vt_join_q = {i_narrow_10_i_stencil_2d72_vt_const_15_q, i_narrow_8_i_stencil_2d62_vt_select_2_merged_bit_select_c, i_arrayidx1_stencil_2d101_vt_const_1_q, i_narrow_8_i_stencil_2d62_vt_select_2_merged_bit_select_b, i_arrayidx1_stencil_2d101_vt_const_1_q};

    // i_cmp13_i_7_i_stencil_2d56(COMPARE,65)@9
    assign i_cmp13_i_7_i_stencil_2d56_a = {2'b00, redist19_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q};
    assign i_cmp13_i_7_i_stencil_2d56_b = {2'b00, c_i16_100138_q};
    assign i_cmp13_i_7_i_stencil_2d56_o = $unsigned(i_cmp13_i_7_i_stencil_2d56_a) - $unsigned(i_cmp13_i_7_i_stencil_2d56_b);
    assign i_cmp13_i_7_i_stencil_2d56_c[0] = i_cmp13_i_7_i_stencil_2d56_o[17];

    // i_narrow_7_i_stencil_2d57(MUX,176)@9
    assign i_narrow_7_i_stencil_2d57_s = i_cmp13_i_7_i_stencil_2d56_c;
    always @(i_narrow_7_i_stencil_2d57_s or c_i16_100138_q or c_i16_018_q)
    begin
        unique case (i_narrow_7_i_stencil_2d57_s)
            1'b0 : i_narrow_7_i_stencil_2d57_q = c_i16_100138_q;
            1'b1 : i_narrow_7_i_stencil_2d57_q = c_i16_018_q;
            default : i_narrow_7_i_stencil_2d57_q = 16'b0;
        endcase
    end

    // i_narrow_7_i_stencil_2d57_vt_select_2_merged_bit_select(BITSELECT,451)@9
    assign i_narrow_7_i_stencil_2d57_vt_select_2_merged_bit_select_in = i_narrow_7_i_stencil_2d57_q[6:0];
    assign i_narrow_7_i_stencil_2d57_vt_select_2_merged_bit_select_b = i_narrow_7_i_stencil_2d57_vt_select_2_merged_bit_select_in[2:2];
    assign i_narrow_7_i_stencil_2d57_vt_select_2_merged_bit_select_c = i_narrow_7_i_stencil_2d57_vt_select_2_merged_bit_select_in[6:5];

    // i_narrow_7_i_stencil_2d57_vt_join(BITJOIN,180)@9
    assign i_narrow_7_i_stencil_2d57_vt_join_q = {i_narrow_10_i_stencil_2d72_vt_const_15_q, i_narrow_7_i_stencil_2d57_vt_select_2_merged_bit_select_c, i_arrayidx1_stencil_2d101_vt_const_1_q, i_narrow_7_i_stencil_2d57_vt_select_2_merged_bit_select_b, i_arrayidx1_stencil_2d101_vt_const_1_q};

    // i_cmp13_i_6_i_stencil_2d51(COMPARE,64)@8
    assign i_cmp13_i_6_i_stencil_2d51_a = {2'b00, redist20_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q};
    assign i_cmp13_i_6_i_stencil_2d51_b = {2'b00, c_i16_100138_q};
    assign i_cmp13_i_6_i_stencil_2d51_o = $unsigned(i_cmp13_i_6_i_stencil_2d51_a) - $unsigned(i_cmp13_i_6_i_stencil_2d51_b);
    assign i_cmp13_i_6_i_stencil_2d51_c[0] = i_cmp13_i_6_i_stencil_2d51_o[17];

    // i_narrow_6_i_stencil_2d52(MUX,169)@8
    assign i_narrow_6_i_stencil_2d52_s = i_cmp13_i_6_i_stencil_2d51_c;
    always @(i_narrow_6_i_stencil_2d52_s or c_i16_100138_q or c_i16_018_q)
    begin
        unique case (i_narrow_6_i_stencil_2d52_s)
            1'b0 : i_narrow_6_i_stencil_2d52_q = c_i16_100138_q;
            1'b1 : i_narrow_6_i_stencil_2d52_q = c_i16_018_q;
            default : i_narrow_6_i_stencil_2d52_q = 16'b0;
        endcase
    end

    // i_narrow_6_i_stencil_2d52_vt_select_2_merged_bit_select(BITSELECT,450)@8
    assign i_narrow_6_i_stencil_2d52_vt_select_2_merged_bit_select_in = i_narrow_6_i_stencil_2d52_q[6:0];
    assign i_narrow_6_i_stencil_2d52_vt_select_2_merged_bit_select_b = i_narrow_6_i_stencil_2d52_vt_select_2_merged_bit_select_in[2:2];
    assign i_narrow_6_i_stencil_2d52_vt_select_2_merged_bit_select_c = i_narrow_6_i_stencil_2d52_vt_select_2_merged_bit_select_in[6:5];

    // i_narrow_6_i_stencil_2d52_vt_join(BITJOIN,173)@8
    assign i_narrow_6_i_stencil_2d52_vt_join_q = {i_narrow_10_i_stencil_2d72_vt_const_15_q, i_narrow_6_i_stencil_2d52_vt_select_2_merged_bit_select_c, i_arrayidx1_stencil_2d101_vt_const_1_q, i_narrow_6_i_stencil_2d52_vt_select_2_merged_bit_select_b, i_arrayidx1_stencil_2d101_vt_const_1_q};

    // i_cmp13_i_5_i_stencil_2d46(COMPARE,63)@7
    assign i_cmp13_i_5_i_stencil_2d46_a = {2'b00, redist21_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q};
    assign i_cmp13_i_5_i_stencil_2d46_b = {2'b00, c_i16_100138_q};
    assign i_cmp13_i_5_i_stencil_2d46_o = $unsigned(i_cmp13_i_5_i_stencil_2d46_a) - $unsigned(i_cmp13_i_5_i_stencil_2d46_b);
    assign i_cmp13_i_5_i_stencil_2d46_c[0] = i_cmp13_i_5_i_stencil_2d46_o[17];

    // i_narrow_5_i_stencil_2d47(MUX,162)@7
    assign i_narrow_5_i_stencil_2d47_s = i_cmp13_i_5_i_stencil_2d46_c;
    always @(i_narrow_5_i_stencil_2d47_s or c_i16_100138_q or c_i16_018_q)
    begin
        unique case (i_narrow_5_i_stencil_2d47_s)
            1'b0 : i_narrow_5_i_stencil_2d47_q = c_i16_100138_q;
            1'b1 : i_narrow_5_i_stencil_2d47_q = c_i16_018_q;
            default : i_narrow_5_i_stencil_2d47_q = 16'b0;
        endcase
    end

    // i_narrow_5_i_stencil_2d47_vt_select_2_merged_bit_select(BITSELECT,449)@7
    assign i_narrow_5_i_stencil_2d47_vt_select_2_merged_bit_select_in = i_narrow_5_i_stencil_2d47_q[6:0];
    assign i_narrow_5_i_stencil_2d47_vt_select_2_merged_bit_select_b = i_narrow_5_i_stencil_2d47_vt_select_2_merged_bit_select_in[2:2];
    assign i_narrow_5_i_stencil_2d47_vt_select_2_merged_bit_select_c = i_narrow_5_i_stencil_2d47_vt_select_2_merged_bit_select_in[6:5];

    // i_narrow_5_i_stencil_2d47_vt_join(BITJOIN,166)@7
    assign i_narrow_5_i_stencil_2d47_vt_join_q = {i_narrow_10_i_stencil_2d72_vt_const_15_q, i_narrow_5_i_stencil_2d47_vt_select_2_merged_bit_select_c, i_arrayidx1_stencil_2d101_vt_const_1_q, i_narrow_5_i_stencil_2d47_vt_select_2_merged_bit_select_b, i_arrayidx1_stencil_2d101_vt_const_1_q};

    // i_cmp13_i_4_i_stencil_2d41(COMPARE,62)@6
    assign i_cmp13_i_4_i_stencil_2d41_a = {2'b00, redist22_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q};
    assign i_cmp13_i_4_i_stencil_2d41_b = {2'b00, c_i16_100138_q};
    assign i_cmp13_i_4_i_stencil_2d41_o = $unsigned(i_cmp13_i_4_i_stencil_2d41_a) - $unsigned(i_cmp13_i_4_i_stencil_2d41_b);
    assign i_cmp13_i_4_i_stencil_2d41_c[0] = i_cmp13_i_4_i_stencil_2d41_o[17];

    // i_narrow_4_i_stencil_2d42(MUX,155)@6
    assign i_narrow_4_i_stencil_2d42_s = i_cmp13_i_4_i_stencil_2d41_c;
    always @(i_narrow_4_i_stencil_2d42_s or c_i16_100138_q or c_i16_018_q)
    begin
        unique case (i_narrow_4_i_stencil_2d42_s)
            1'b0 : i_narrow_4_i_stencil_2d42_q = c_i16_100138_q;
            1'b1 : i_narrow_4_i_stencil_2d42_q = c_i16_018_q;
            default : i_narrow_4_i_stencil_2d42_q = 16'b0;
        endcase
    end

    // i_narrow_4_i_stencil_2d42_vt_select_2_merged_bit_select(BITSELECT,448)@6
    assign i_narrow_4_i_stencil_2d42_vt_select_2_merged_bit_select_in = i_narrow_4_i_stencil_2d42_q[6:0];
    assign i_narrow_4_i_stencil_2d42_vt_select_2_merged_bit_select_b = i_narrow_4_i_stencil_2d42_vt_select_2_merged_bit_select_in[2:2];
    assign i_narrow_4_i_stencil_2d42_vt_select_2_merged_bit_select_c = i_narrow_4_i_stencil_2d42_vt_select_2_merged_bit_select_in[6:5];

    // i_narrow_4_i_stencil_2d42_vt_join(BITJOIN,159)@6
    assign i_narrow_4_i_stencil_2d42_vt_join_q = {i_narrow_10_i_stencil_2d72_vt_const_15_q, i_narrow_4_i_stencil_2d42_vt_select_2_merged_bit_select_c, i_arrayidx1_stencil_2d101_vt_const_1_q, i_narrow_4_i_stencil_2d42_vt_select_2_merged_bit_select_b, i_arrayidx1_stencil_2d101_vt_const_1_q};

    // i_cmp13_i_3_i_stencil_2d36(COMPARE,61)@5
    assign i_cmp13_i_3_i_stencil_2d36_a = {2'b00, redist23_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q};
    assign i_cmp13_i_3_i_stencil_2d36_b = {2'b00, c_i16_100138_q};
    assign i_cmp13_i_3_i_stencil_2d36_o = $unsigned(i_cmp13_i_3_i_stencil_2d36_a) - $unsigned(i_cmp13_i_3_i_stencil_2d36_b);
    assign i_cmp13_i_3_i_stencil_2d36_c[0] = i_cmp13_i_3_i_stencil_2d36_o[17];

    // i_narrow_3_i_stencil_2d37(MUX,148)@5
    assign i_narrow_3_i_stencil_2d37_s = i_cmp13_i_3_i_stencil_2d36_c;
    always @(i_narrow_3_i_stencil_2d37_s or c_i16_100138_q or c_i16_018_q)
    begin
        unique case (i_narrow_3_i_stencil_2d37_s)
            1'b0 : i_narrow_3_i_stencil_2d37_q = c_i16_100138_q;
            1'b1 : i_narrow_3_i_stencil_2d37_q = c_i16_018_q;
            default : i_narrow_3_i_stencil_2d37_q = 16'b0;
        endcase
    end

    // i_narrow_3_i_stencil_2d37_vt_select_2_merged_bit_select(BITSELECT,447)@5
    assign i_narrow_3_i_stencil_2d37_vt_select_2_merged_bit_select_in = i_narrow_3_i_stencil_2d37_q[6:0];
    assign i_narrow_3_i_stencil_2d37_vt_select_2_merged_bit_select_b = i_narrow_3_i_stencil_2d37_vt_select_2_merged_bit_select_in[2:2];
    assign i_narrow_3_i_stencil_2d37_vt_select_2_merged_bit_select_c = i_narrow_3_i_stencil_2d37_vt_select_2_merged_bit_select_in[6:5];

    // i_narrow_3_i_stencil_2d37_vt_join(BITJOIN,152)@5
    assign i_narrow_3_i_stencil_2d37_vt_join_q = {i_narrow_10_i_stencil_2d72_vt_const_15_q, i_narrow_3_i_stencil_2d37_vt_select_2_merged_bit_select_c, i_arrayidx1_stencil_2d101_vt_const_1_q, i_narrow_3_i_stencil_2d37_vt_select_2_merged_bit_select_b, i_arrayidx1_stencil_2d101_vt_const_1_q};

    // i_cmp13_i_2_i_stencil_2d31(COMPARE,60)@4
    assign i_cmp13_i_2_i_stencil_2d31_a = {2'b00, redist24_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q};
    assign i_cmp13_i_2_i_stencil_2d31_b = {2'b00, c_i16_100138_q};
    assign i_cmp13_i_2_i_stencil_2d31_o = $unsigned(i_cmp13_i_2_i_stencil_2d31_a) - $unsigned(i_cmp13_i_2_i_stencil_2d31_b);
    assign i_cmp13_i_2_i_stencil_2d31_c[0] = i_cmp13_i_2_i_stencil_2d31_o[17];

    // i_narrow_2_i_stencil_2d32(MUX,141)@4
    assign i_narrow_2_i_stencil_2d32_s = i_cmp13_i_2_i_stencil_2d31_c;
    always @(i_narrow_2_i_stencil_2d32_s or c_i16_100138_q or c_i16_018_q)
    begin
        unique case (i_narrow_2_i_stencil_2d32_s)
            1'b0 : i_narrow_2_i_stencil_2d32_q = c_i16_100138_q;
            1'b1 : i_narrow_2_i_stencil_2d32_q = c_i16_018_q;
            default : i_narrow_2_i_stencil_2d32_q = 16'b0;
        endcase
    end

    // i_narrow_2_i_stencil_2d32_vt_select_2_merged_bit_select(BITSELECT,446)@4
    assign i_narrow_2_i_stencil_2d32_vt_select_2_merged_bit_select_in = i_narrow_2_i_stencil_2d32_q[6:0];
    assign i_narrow_2_i_stencil_2d32_vt_select_2_merged_bit_select_b = i_narrow_2_i_stencil_2d32_vt_select_2_merged_bit_select_in[2:2];
    assign i_narrow_2_i_stencil_2d32_vt_select_2_merged_bit_select_c = i_narrow_2_i_stencil_2d32_vt_select_2_merged_bit_select_in[6:5];

    // i_narrow_2_i_stencil_2d32_vt_join(BITJOIN,145)@4
    assign i_narrow_2_i_stencil_2d32_vt_join_q = {i_narrow_10_i_stencil_2d72_vt_const_15_q, i_narrow_2_i_stencil_2d32_vt_select_2_merged_bit_select_c, i_arrayidx1_stencil_2d101_vt_const_1_q, i_narrow_2_i_stencil_2d32_vt_select_2_merged_bit_select_b, i_arrayidx1_stencil_2d101_vt_const_1_q};

    // i_cmp13_i_1_i_stencil_2d26(COMPARE,59)@3
    assign i_cmp13_i_1_i_stencil_2d26_a = {2'b00, i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_stencil_2d0_NO_NAME_x_q};
    assign i_cmp13_i_1_i_stencil_2d26_b = {2'b00, c_i16_100138_q};
    assign i_cmp13_i_1_i_stencil_2d26_o = $unsigned(i_cmp13_i_1_i_stencil_2d26_a) - $unsigned(i_cmp13_i_1_i_stencil_2d26_b);
    assign i_cmp13_i_1_i_stencil_2d26_c[0] = i_cmp13_i_1_i_stencil_2d26_o[17];

    // i_narrow_1_i_stencil_2d27(MUX,134)@3
    assign i_narrow_1_i_stencil_2d27_s = i_cmp13_i_1_i_stencil_2d26_c;
    always @(i_narrow_1_i_stencil_2d27_s or c_i16_100138_q or c_i16_018_q)
    begin
        unique case (i_narrow_1_i_stencil_2d27_s)
            1'b0 : i_narrow_1_i_stencil_2d27_q = c_i16_100138_q;
            1'b1 : i_narrow_1_i_stencil_2d27_q = c_i16_018_q;
            default : i_narrow_1_i_stencil_2d27_q = 16'b0;
        endcase
    end

    // i_narrow_1_i_stencil_2d27_vt_select_2_merged_bit_select(BITSELECT,445)@3
    assign i_narrow_1_i_stencil_2d27_vt_select_2_merged_bit_select_in = i_narrow_1_i_stencil_2d27_q[6:0];
    assign i_narrow_1_i_stencil_2d27_vt_select_2_merged_bit_select_b = i_narrow_1_i_stencil_2d27_vt_select_2_merged_bit_select_in[2:2];
    assign i_narrow_1_i_stencil_2d27_vt_select_2_merged_bit_select_c = i_narrow_1_i_stencil_2d27_vt_select_2_merged_bit_select_in[6:5];

    // i_narrow_1_i_stencil_2d27_vt_join(BITJOIN,138)@3
    assign i_narrow_1_i_stencil_2d27_vt_join_q = {i_narrow_10_i_stencil_2d72_vt_const_15_q, i_narrow_1_i_stencil_2d27_vt_select_2_merged_bit_select_c, i_arrayidx1_stencil_2d101_vt_const_1_q, i_narrow_1_i_stencil_2d27_vt_select_2_merged_bit_select_b, i_arrayidx1_stencil_2d101_vt_const_1_q};

    // i_unnamed_stencil_2d22_vt_const_15(CONSTANT,229)
    assign i_unnamed_stencil_2d22_vt_const_15_q = $unsigned(15'b000000000000000);

    // rightShiftStage3Idx1Pad8_uid434_dupName_1_i_unnamed_stencil_2d0_shift_x(CONSTANT,433)
    assign rightShiftStage3Idx1Pad8_uid434_dupName_1_i_unnamed_stencil_2d0_shift_x_q = $unsigned(8'b00000000);

    // rightShiftStage3Idx1Rng8_uid433_dupName_1_i_unnamed_stencil_2d0_shift_x(BITSELECT,432)@3
    assign rightShiftStage3Idx1Rng8_uid433_dupName_1_i_unnamed_stencil_2d0_shift_x_b = rightShiftStage2_uid432_dupName_1_i_unnamed_stencil_2d0_shift_x_q[15:8];

    // rightShiftStage3Idx1_uid435_dupName_1_i_unnamed_stencil_2d0_shift_x(BITJOIN,434)@3
    assign rightShiftStage3Idx1_uid435_dupName_1_i_unnamed_stencil_2d0_shift_x_q = {rightShiftStage3Idx1Pad8_uid434_dupName_1_i_unnamed_stencil_2d0_shift_x_q, rightShiftStage3Idx1Rng8_uid433_dupName_1_i_unnamed_stencil_2d0_shift_x_b};

    // leftShiftStage1Idx1Pad4_uid410_dupName_0_i_unnamed_stencil_2d0_shift_x(CONSTANT,409)
    assign leftShiftStage1Idx1Pad4_uid410_dupName_0_i_unnamed_stencil_2d0_shift_x_q = $unsigned(4'b0000);

    // rightShiftStage2Idx1Rng4_uid428_dupName_1_i_unnamed_stencil_2d0_shift_x(BITSELECT,427)@3
    assign rightShiftStage2Idx1Rng4_uid428_dupName_1_i_unnamed_stencil_2d0_shift_x_b = rightShiftStage1_uid427_dupName_1_i_unnamed_stencil_2d0_shift_x_q[15:4];

    // rightShiftStage2Idx1_uid430_dupName_1_i_unnamed_stencil_2d0_shift_x(BITJOIN,429)@3
    assign rightShiftStage2Idx1_uid430_dupName_1_i_unnamed_stencil_2d0_shift_x_q = {leftShiftStage1Idx1Pad4_uid410_dupName_0_i_unnamed_stencil_2d0_shift_x_q, rightShiftStage2Idx1Rng4_uid428_dupName_1_i_unnamed_stencil_2d0_shift_x_b};

    // rightShiftStage1Idx1Rng2_uid423_dupName_1_i_unnamed_stencil_2d0_shift_x(BITSELECT,422)@3
    assign rightShiftStage1Idx1Rng2_uid423_dupName_1_i_unnamed_stencil_2d0_shift_x_b = rightShiftStage0_uid422_dupName_1_i_unnamed_stencil_2d0_shift_x_q[15:2];

    // rightShiftStage1Idx1_uid425_dupName_1_i_unnamed_stencil_2d0_shift_x(BITJOIN,424)@3
    assign rightShiftStage1Idx1_uid425_dupName_1_i_unnamed_stencil_2d0_shift_x_q = {i_arrayidx1_stencil_2d101_vt_const_1_q, rightShiftStage1Idx1Rng2_uid423_dupName_1_i_unnamed_stencil_2d0_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid418_dupName_1_i_unnamed_stencil_2d0_shift_x(BITSELECT,417)@3
    assign rightShiftStage0Idx1Rng1_uid418_dupName_1_i_unnamed_stencil_2d0_shift_x_b = i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q[15:1];

    // rightShiftStage0Idx1_uid420_dupName_1_i_unnamed_stencil_2d0_shift_x(BITJOIN,419)@3
    assign rightShiftStage0Idx1_uid420_dupName_1_i_unnamed_stencil_2d0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid418_dupName_1_i_unnamed_stencil_2d0_shift_x_b};

    // rightShiftStage0_uid422_dupName_1_i_unnamed_stencil_2d0_shift_x(MUX,421)@3
    assign rightShiftStage0_uid422_dupName_1_i_unnamed_stencil_2d0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid422_dupName_1_i_unnamed_stencil_2d0_shift_x_s or i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q or rightShiftStage0Idx1_uid420_dupName_1_i_unnamed_stencil_2d0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid422_dupName_1_i_unnamed_stencil_2d0_shift_x_s)
            1'b0 : rightShiftStage0_uid422_dupName_1_i_unnamed_stencil_2d0_shift_x_q = i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q;
            1'b1 : rightShiftStage0_uid422_dupName_1_i_unnamed_stencil_2d0_shift_x_q = rightShiftStage0Idx1_uid420_dupName_1_i_unnamed_stencil_2d0_shift_x_q;
            default : rightShiftStage0_uid422_dupName_1_i_unnamed_stencil_2d0_shift_x_q = 16'b0;
        endcase
    end

    // rightShiftStage1_uid427_dupName_1_i_unnamed_stencil_2d0_shift_x(MUX,426)@3
    assign rightShiftStage1_uid427_dupName_1_i_unnamed_stencil_2d0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid427_dupName_1_i_unnamed_stencil_2d0_shift_x_s or rightShiftStage0_uid422_dupName_1_i_unnamed_stencil_2d0_shift_x_q or rightShiftStage1Idx1_uid425_dupName_1_i_unnamed_stencil_2d0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid427_dupName_1_i_unnamed_stencil_2d0_shift_x_s)
            1'b0 : rightShiftStage1_uid427_dupName_1_i_unnamed_stencil_2d0_shift_x_q = rightShiftStage0_uid422_dupName_1_i_unnamed_stencil_2d0_shift_x_q;
            1'b1 : rightShiftStage1_uid427_dupName_1_i_unnamed_stencil_2d0_shift_x_q = rightShiftStage1Idx1_uid425_dupName_1_i_unnamed_stencil_2d0_shift_x_q;
            default : rightShiftStage1_uid427_dupName_1_i_unnamed_stencil_2d0_shift_x_q = 16'b0;
        endcase
    end

    // rightShiftStage2_uid432_dupName_1_i_unnamed_stencil_2d0_shift_x(MUX,431)@3
    assign rightShiftStage2_uid432_dupName_1_i_unnamed_stencil_2d0_shift_x_s = VCC_q;
    always @(rightShiftStage2_uid432_dupName_1_i_unnamed_stencil_2d0_shift_x_s or rightShiftStage1_uid427_dupName_1_i_unnamed_stencil_2d0_shift_x_q or rightShiftStage2Idx1_uid430_dupName_1_i_unnamed_stencil_2d0_shift_x_q)
    begin
        unique case (rightShiftStage2_uid432_dupName_1_i_unnamed_stencil_2d0_shift_x_s)
            1'b0 : rightShiftStage2_uid432_dupName_1_i_unnamed_stencil_2d0_shift_x_q = rightShiftStage1_uid427_dupName_1_i_unnamed_stencil_2d0_shift_x_q;
            1'b1 : rightShiftStage2_uid432_dupName_1_i_unnamed_stencil_2d0_shift_x_q = rightShiftStage2Idx1_uid430_dupName_1_i_unnamed_stencil_2d0_shift_x_q;
            default : rightShiftStage2_uid432_dupName_1_i_unnamed_stencil_2d0_shift_x_q = 16'b0;
        endcase
    end

    // rightShiftStage3_uid437_dupName_1_i_unnamed_stencil_2d0_shift_x(MUX,436)@3
    assign rightShiftStage3_uid437_dupName_1_i_unnamed_stencil_2d0_shift_x_s = VCC_q;
    always @(rightShiftStage3_uid437_dupName_1_i_unnamed_stencil_2d0_shift_x_s or rightShiftStage2_uid432_dupName_1_i_unnamed_stencil_2d0_shift_x_q or rightShiftStage3Idx1_uid435_dupName_1_i_unnamed_stencil_2d0_shift_x_q)
    begin
        unique case (rightShiftStage3_uid437_dupName_1_i_unnamed_stencil_2d0_shift_x_s)
            1'b0 : rightShiftStage3_uid437_dupName_1_i_unnamed_stencil_2d0_shift_x_q = rightShiftStage2_uid432_dupName_1_i_unnamed_stencil_2d0_shift_x_q;
            1'b1 : rightShiftStage3_uid437_dupName_1_i_unnamed_stencil_2d0_shift_x_q = rightShiftStage3Idx1_uid435_dupName_1_i_unnamed_stencil_2d0_shift_x_q;
            default : rightShiftStage3_uid437_dupName_1_i_unnamed_stencil_2d0_shift_x_q = 16'b0;
        endcase
    end

    // i_unnamed_stencil_2d22_vt_select_0(BITSELECT,231)@3
    assign i_unnamed_stencil_2d22_vt_select_0_b = rightShiftStage3_uid437_dupName_1_i_unnamed_stencil_2d0_shift_x_q[0:0];

    // i_unnamed_stencil_2d22_vt_join(BITJOIN,230)@3
    assign i_unnamed_stencil_2d22_vt_join_q = {i_unnamed_stencil_2d22_vt_const_15_q, i_unnamed_stencil_2d22_vt_select_0_b};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,294)@3
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_224_q, i_unnamed_stencil_2d22_vt_join_q, i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_stencil_2d0_NO_NAME_x(CHOOSEBITS,293)@3
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_stencil_2d0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_stencil_2d0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_stencil_2d0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_stencil_2d0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_stencil_2d0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_stencil_2d0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_stencil_2d0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_stencil_2d0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_stencil_2d0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_stencil_2d0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_stencil_2d0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_stencil_2d0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_stencil_2d0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_stencil_2d0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_stencil_2d0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_stencil_2d0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_stencil_2d0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_stencil_2d0_NO_NAME_x_a[14:14]};

    // i_sub16_i_1_i_stencil_2d28(SUB,213)@3
    assign i_sub16_i_1_i_stencil_2d28_a = {1'b0, i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_1_shuffle_i_stencil_2d0_NO_NAME_x_q};
    assign i_sub16_i_1_i_stencil_2d28_b = {1'b0, i_narrow_1_i_stencil_2d27_vt_join_q};
    assign i_sub16_i_1_i_stencil_2d28_o = $unsigned(i_sub16_i_1_i_stencil_2d28_a) - $unsigned(i_sub16_i_1_i_stencil_2d28_b);
    assign i_sub16_i_1_i_stencil_2d28_q = i_sub16_i_1_i_stencil_2d28_o[16:0];

    // bgTrunc_i_sub16_i_1_i_stencil_2d28_sel_x(BITSELECT,245)@3
    assign bgTrunc_i_sub16_i_1_i_stencil_2d28_sel_x_b = $unsigned(i_sub16_i_1_i_stencil_2d28_q[15:0]);

    // leftShiftStage0Idx1Rng1_uid398_i_unnamed_stencil_2d0_shift_x(BITSELECT,397)@2
    assign leftShiftStage0Idx1Rng1_uid398_i_unnamed_stencil_2d0_shift_x_in = i_unnamed_stencil_2d13_sel_x_b[14:0];
    assign leftShiftStage0Idx1Rng1_uid398_i_unnamed_stencil_2d0_shift_x_b = leftShiftStage0Idx1Rng1_uid398_i_unnamed_stencil_2d0_shift_x_in[14:0];

    // leftShiftStage0Idx1_uid399_i_unnamed_stencil_2d0_shift_x(BITJOIN,398)@2
    assign leftShiftStage0Idx1_uid399_i_unnamed_stencil_2d0_shift_x_q = {leftShiftStage0Idx1Rng1_uid398_i_unnamed_stencil_2d0_shift_x_b, GND_q};

    // valid_fanout_reg4(REG,346)@1 + 1
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

    // valid_fanout_reg6(REG,348)@1 + 1
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

    // c_i32_1139(CONSTANT,40)
    assign c_i32_1139_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_stencil_2d103(ADD,76)@2
    assign i_inc_stencil_2d103_a = {1'b0, i_llvm_fpga_pop_i32_j_038_pop17_stencil_2d12_out_data_out};
    assign i_inc_stencil_2d103_b = {1'b0, c_i32_1139_q};
    assign i_inc_stencil_2d103_o = $unsigned(i_inc_stencil_2d103_a) + $unsigned(i_inc_stencil_2d103_b);
    assign i_inc_stencil_2d103_q = i_inc_stencil_2d103_o[32:0];

    // bgTrunc_i_inc_stencil_2d103_sel_x(BITSELECT,238)@2
    assign bgTrunc_i_inc_stencil_2d103_sel_x_b = i_inc_stencil_2d103_q[31:0];

    // i_llvm_fpga_push_i32_j_038_push17_stencil_2d104(BLACKBOX,88)@2
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    stencil_2d_i_llvm_fpga_push_i32_j_038_push17_0 thei_llvm_fpga_push_i32_j_038_push17_stencil_2d104 (
        .in_data_in(bgTrunc_i_inc_stencil_2d103_sel_x_b),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i32_j_038_pop17_stencil_2d12_out_feedback_stall_out_17),
        .in_keep_going64(redist33_i_llvm_fpga_pipeline_keep_going64_stencil_2d6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i32_j_038_push17_stencil_2d104_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i32_j_038_push17_stencil_2d104_out_feedback_valid_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_0132(CONSTANT,39)
    assign c_i32_0132_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_j_038_pop17_stencil_2d12(BLACKBOX,82)@2
    // out out_feedback_stall_out_17@20000000
    stencil_2d_i_llvm_fpga_pop_i32_j_038_pop17_0 thei_llvm_fpga_pop_i32_j_038_pop17_stencil_2d12 (
        .in_data_in(c_i32_0132_q),
        .in_dir(redist12_sync_together157_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_17(i_llvm_fpga_push_i32_j_038_push17_stencil_2d104_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i32_j_038_push17_stencil_2d104_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_038_pop17_stencil_2d12_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i32_j_038_pop17_stencil_2d12_out_feedback_stall_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_stencil_2d13_sel_x(BITSELECT,329)@2
    assign i_unnamed_stencil_2d13_sel_x_b = i_llvm_fpga_pop_i32_j_038_pop17_stencil_2d12_out_data_out[15:0];

    // leftShiftStage0_uid401_i_unnamed_stencil_2d0_shift_x(MUX,400)@2
    assign leftShiftStage0_uid401_i_unnamed_stencil_2d0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid401_i_unnamed_stencil_2d0_shift_x_s or i_unnamed_stencil_2d13_sel_x_b or leftShiftStage0Idx1_uid399_i_unnamed_stencil_2d0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid401_i_unnamed_stencil_2d0_shift_x_s)
            1'b0 : leftShiftStage0_uid401_i_unnamed_stencil_2d0_shift_x_q = i_unnamed_stencil_2d13_sel_x_b;
            1'b1 : leftShiftStage0_uid401_i_unnamed_stencil_2d0_shift_x_q = leftShiftStage0Idx1_uid399_i_unnamed_stencil_2d0_shift_x_q;
            default : leftShiftStage0_uid401_i_unnamed_stencil_2d0_shift_x_q = 16'b0;
        endcase
    end

    // i_unnamed_stencil_2d14_vt_select_15(BITSELECT,225)@2
    assign i_unnamed_stencil_2d14_vt_select_15_b = leftShiftStage0_uid401_i_unnamed_stencil_2d0_shift_x_q[15:1];

    // i_unnamed_stencil_2d14_vt_join(BITJOIN,224)@2
    assign i_unnamed_stencil_2d14_vt_join_q = {i_unnamed_stencil_2d14_vt_select_15_b, GND_q};

    // leftShiftStage1Idx1Rng4_uid411_dupName_0_i_unnamed_stencil_2d0_shift_x(BITSELECT,410)@2
    assign leftShiftStage1Idx1Rng4_uid411_dupName_0_i_unnamed_stencil_2d0_shift_x_in = leftShiftStage0_uid401_i_unnamed_stencil_2d0_shift_x_q[11:0];
    assign leftShiftStage1Idx1Rng4_uid411_dupName_0_i_unnamed_stencil_2d0_shift_x_b = leftShiftStage1Idx1Rng4_uid411_dupName_0_i_unnamed_stencil_2d0_shift_x_in[11:0];

    // leftShiftStage1Idx1_uid412_dupName_0_i_unnamed_stencil_2d0_shift_x(BITJOIN,411)@2
    assign leftShiftStage1Idx1_uid412_dupName_0_i_unnamed_stencil_2d0_shift_x_q = {leftShiftStage1Idx1Rng4_uid411_dupName_0_i_unnamed_stencil_2d0_shift_x_b, leftShiftStage1Idx1Pad4_uid410_dupName_0_i_unnamed_stencil_2d0_shift_x_q};

    // leftShiftStage1_uid414_dupName_0_i_unnamed_stencil_2d0_shift_x(MUX,413)@2
    assign leftShiftStage1_uid414_dupName_0_i_unnamed_stencil_2d0_shift_x_s = VCC_q;
    always @(leftShiftStage1_uid414_dupName_0_i_unnamed_stencil_2d0_shift_x_s or leftShiftStage0_uid401_i_unnamed_stencil_2d0_shift_x_q or leftShiftStage1Idx1_uid412_dupName_0_i_unnamed_stencil_2d0_shift_x_q)
    begin
        unique case (leftShiftStage1_uid414_dupName_0_i_unnamed_stencil_2d0_shift_x_s)
            1'b0 : leftShiftStage1_uid414_dupName_0_i_unnamed_stencil_2d0_shift_x_q = leftShiftStage0_uid401_i_unnamed_stencil_2d0_shift_x_q;
            1'b1 : leftShiftStage1_uid414_dupName_0_i_unnamed_stencil_2d0_shift_x_q = leftShiftStage1Idx1_uid412_dupName_0_i_unnamed_stencil_2d0_shift_x_q;
            default : leftShiftStage1_uid414_dupName_0_i_unnamed_stencil_2d0_shift_x_q = 16'b0;
        endcase
    end

    // i_unnamed_stencil_2d15_vt_select_15(BITSELECT,228)@2
    assign i_unnamed_stencil_2d15_vt_select_15_b = leftShiftStage1_uid414_dupName_0_i_unnamed_stencil_2d0_shift_x_q[15:5];

    // i_unnamed_stencil_2d15_vt_const_4(CONSTANT,226)
    assign i_unnamed_stencil_2d15_vt_const_4_q = $unsigned(5'b00000);

    // i_unnamed_stencil_2d15_vt_join(BITJOIN,227)@2
    assign i_unnamed_stencil_2d15_vt_join_q = {i_unnamed_stencil_2d15_vt_select_15_b, i_unnamed_stencil_2d15_vt_const_4_q};

    // i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_0_0(ADD,340)@2
    assign i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_0_0_a = {1'b0, i_unnamed_stencil_2d13_sel_x_b};
    assign i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_0_0_b = {1'b0, i_unnamed_stencil_2d15_vt_join_q};
    assign i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_0_0_o = $unsigned(i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_0_0_a) + $unsigned(i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_0_0_b);
    assign i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_0_0_q = i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_0_0_o[16:0];

    // i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0(ADD,341)@2 + 1
    assign i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_a = i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_0_0_q[15:0];
    assign i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_b = i_unnamed_stencil_2d14_vt_join_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_o <= 16'b0;
        end
        else
        begin
            i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_o <= $unsigned(i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_a) + $unsigned(i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_b);
        end
    end
    assign i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q = i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_o[15:0];

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,297)@3
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_224_q, bgTrunc_i_sub16_i_1_i_stencil_2d28_sel_x_b, i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_stencil_2d0_NO_NAME_x(CHOOSEBITS,296)@3
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_stencil_2d0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_stencil_2d0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_stencil_2d0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_stencil_2d0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_stencil_2d0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_stencil_2d0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_stencil_2d0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_stencil_2d0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_stencil_2d0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_stencil_2d0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_stencil_2d0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_stencil_2d0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_stencil_2d0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_stencil_2d0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_stencil_2d0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_stencil_2d0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_stencil_2d0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_stencil_2d0_NO_NAME_x_a[13:13]};

    // redist24_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_stencil_2d0_NO_NAME_x_q_1(DELAY,478)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist24_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_stencil_2d0_NO_NAME_x_q);
        end
    end

    // i_sub16_i_2_i_stencil_2d33(SUB,214)@4
    assign i_sub16_i_2_i_stencil_2d33_a = {1'b0, redist24_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_2_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q};
    assign i_sub16_i_2_i_stencil_2d33_b = {1'b0, i_narrow_2_i_stencil_2d32_vt_join_q};
    assign i_sub16_i_2_i_stencil_2d33_o = $unsigned(i_sub16_i_2_i_stencil_2d33_a) - $unsigned(i_sub16_i_2_i_stencil_2d33_b);
    assign i_sub16_i_2_i_stencil_2d33_q = i_sub16_i_2_i_stencil_2d33_o[16:0];

    // bgTrunc_i_sub16_i_2_i_stencil_2d33_sel_x(BITSELECT,246)@4
    assign bgTrunc_i_sub16_i_2_i_stencil_2d33_sel_x_b = $unsigned(i_sub16_i_2_i_stencil_2d33_q[15:0]);

    // redist0_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_2(DELAY,454)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_2_q <= '0;
        end
        else
        begin
            redist0_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_2_q <= $unsigned(i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,300)@4
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_224_q, bgTrunc_i_sub16_i_2_i_stencil_2d33_sel_x_b, redist0_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_2_q};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_stencil_2d0_NO_NAME_x(CHOOSEBITS,299)@4
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_stencil_2d0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_stencil_2d0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_stencil_2d0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_stencil_2d0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_stencil_2d0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_stencil_2d0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_stencil_2d0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_stencil_2d0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_stencil_2d0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_stencil_2d0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_stencil_2d0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_stencil_2d0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_stencil_2d0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_stencil_2d0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_stencil_2d0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_stencil_2d0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_stencil_2d0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_stencil_2d0_NO_NAME_x_a[12:12]};

    // redist23_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_stencil_2d0_NO_NAME_x_q_1(DELAY,477)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist23_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_stencil_2d0_NO_NAME_x_q);
        end
    end

    // i_sub16_i_3_i_stencil_2d38(SUB,215)@5
    assign i_sub16_i_3_i_stencil_2d38_a = {1'b0, redist23_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_3_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q};
    assign i_sub16_i_3_i_stencil_2d38_b = {1'b0, i_narrow_3_i_stencil_2d37_vt_join_q};
    assign i_sub16_i_3_i_stencil_2d38_o = $unsigned(i_sub16_i_3_i_stencil_2d38_a) - $unsigned(i_sub16_i_3_i_stencil_2d38_b);
    assign i_sub16_i_3_i_stencil_2d38_q = i_sub16_i_3_i_stencil_2d38_o[16:0];

    // bgTrunc_i_sub16_i_3_i_stencil_2d38_sel_x(BITSELECT,247)@5
    assign bgTrunc_i_sub16_i_3_i_stencil_2d38_sel_x_b = $unsigned(i_sub16_i_3_i_stencil_2d38_q[15:0]);

    // redist1_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_3(DELAY,455)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_3_q <= '0;
        end
        else
        begin
            redist1_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_3_q <= $unsigned(redist0_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_2_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,303)@5
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_224_q, bgTrunc_i_sub16_i_3_i_stencil_2d38_sel_x_b, redist1_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_3_q};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_stencil_2d0_NO_NAME_x(CHOOSEBITS,302)@5
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_stencil_2d0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_stencil_2d0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_stencil_2d0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_stencil_2d0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_stencil_2d0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_stencil_2d0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_stencil_2d0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_stencil_2d0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_stencil_2d0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_stencil_2d0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_stencil_2d0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_stencil_2d0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_stencil_2d0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_stencil_2d0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_stencil_2d0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_stencil_2d0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_stencil_2d0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_stencil_2d0_NO_NAME_x_a[11:11]};

    // redist22_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_stencil_2d0_NO_NAME_x_q_1(DELAY,476)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist22_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_stencil_2d0_NO_NAME_x_q);
        end
    end

    // i_sub16_i_4_i_stencil_2d43(SUB,216)@6
    assign i_sub16_i_4_i_stencil_2d43_a = {1'b0, redist22_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_4_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q};
    assign i_sub16_i_4_i_stencil_2d43_b = {1'b0, i_narrow_4_i_stencil_2d42_vt_join_q};
    assign i_sub16_i_4_i_stencil_2d43_o = $unsigned(i_sub16_i_4_i_stencil_2d43_a) - $unsigned(i_sub16_i_4_i_stencil_2d43_b);
    assign i_sub16_i_4_i_stencil_2d43_q = i_sub16_i_4_i_stencil_2d43_o[16:0];

    // bgTrunc_i_sub16_i_4_i_stencil_2d43_sel_x(BITSELECT,248)@6
    assign bgTrunc_i_sub16_i_4_i_stencil_2d43_sel_x_b = $unsigned(i_sub16_i_4_i_stencil_2d43_q[15:0]);

    // redist2_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_4(DELAY,456)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_4_q <= '0;
        end
        else
        begin
            redist2_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_4_q <= $unsigned(redist1_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_3_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,306)@6
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_224_q, bgTrunc_i_sub16_i_4_i_stencil_2d43_sel_x_b, redist2_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_4_q};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_stencil_2d0_NO_NAME_x(CHOOSEBITS,305)@6
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_stencil_2d0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_stencil_2d0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_stencil_2d0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_stencil_2d0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_stencil_2d0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_stencil_2d0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_stencil_2d0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_stencil_2d0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_stencil_2d0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_stencil_2d0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_stencil_2d0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_stencil_2d0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_stencil_2d0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_stencil_2d0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_stencil_2d0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_stencil_2d0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_stencil_2d0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_stencil_2d0_NO_NAME_x_a[10:10]};

    // redist21_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_stencil_2d0_NO_NAME_x_q_1(DELAY,475)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist21_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_stencil_2d0_NO_NAME_x_q);
        end
    end

    // i_sub16_i_5_i_stencil_2d48(SUB,217)@7
    assign i_sub16_i_5_i_stencil_2d48_a = {1'b0, redist21_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_5_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q};
    assign i_sub16_i_5_i_stencil_2d48_b = {1'b0, i_narrow_5_i_stencil_2d47_vt_join_q};
    assign i_sub16_i_5_i_stencil_2d48_o = $unsigned(i_sub16_i_5_i_stencil_2d48_a) - $unsigned(i_sub16_i_5_i_stencil_2d48_b);
    assign i_sub16_i_5_i_stencil_2d48_q = i_sub16_i_5_i_stencil_2d48_o[16:0];

    // bgTrunc_i_sub16_i_5_i_stencil_2d48_sel_x(BITSELECT,249)@7
    assign bgTrunc_i_sub16_i_5_i_stencil_2d48_sel_x_b = $unsigned(i_sub16_i_5_i_stencil_2d48_q[15:0]);

    // redist3_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_5(DELAY,457)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_5_q <= '0;
        end
        else
        begin
            redist3_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_5_q <= $unsigned(redist2_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_4_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,309)@7
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_224_q, bgTrunc_i_sub16_i_5_i_stencil_2d48_sel_x_b, redist3_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_5_q};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_stencil_2d0_NO_NAME_x(CHOOSEBITS,308)@7
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_stencil_2d0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_stencil_2d0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_stencil_2d0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_stencil_2d0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_stencil_2d0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_stencil_2d0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_stencil_2d0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_stencil_2d0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_stencil_2d0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_stencil_2d0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_stencil_2d0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_stencil_2d0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_stencil_2d0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_stencil_2d0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_stencil_2d0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_stencil_2d0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_stencil_2d0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_stencil_2d0_NO_NAME_x_a[9:9]};

    // redist20_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_stencil_2d0_NO_NAME_x_q_1(DELAY,474)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist20_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_stencil_2d0_NO_NAME_x_q);
        end
    end

    // i_sub16_i_6_i_stencil_2d53(SUB,218)@8
    assign i_sub16_i_6_i_stencil_2d53_a = {1'b0, redist20_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_6_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q};
    assign i_sub16_i_6_i_stencil_2d53_b = {1'b0, i_narrow_6_i_stencil_2d52_vt_join_q};
    assign i_sub16_i_6_i_stencil_2d53_o = $unsigned(i_sub16_i_6_i_stencil_2d53_a) - $unsigned(i_sub16_i_6_i_stencil_2d53_b);
    assign i_sub16_i_6_i_stencil_2d53_q = i_sub16_i_6_i_stencil_2d53_o[16:0];

    // bgTrunc_i_sub16_i_6_i_stencil_2d53_sel_x(BITSELECT,250)@8
    assign bgTrunc_i_sub16_i_6_i_stencil_2d53_sel_x_b = $unsigned(i_sub16_i_6_i_stencil_2d53_q[15:0]);

    // redist4_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_6(DELAY,458)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_6_q <= '0;
        end
        else
        begin
            redist4_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_6_q <= $unsigned(redist3_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_5_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,312)@8
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_224_q, bgTrunc_i_sub16_i_6_i_stencil_2d53_sel_x_b, redist4_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_6_q};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_stencil_2d0_NO_NAME_x(CHOOSEBITS,311)@8
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_stencil_2d0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_stencil_2d0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_stencil_2d0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_stencil_2d0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_stencil_2d0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_stencil_2d0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_stencil_2d0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_stencil_2d0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_stencil_2d0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_stencil_2d0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_stencil_2d0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_stencil_2d0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_stencil_2d0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_stencil_2d0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_stencil_2d0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_stencil_2d0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_stencil_2d0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_stencil_2d0_NO_NAME_x_a[8:8]};

    // redist19_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_stencil_2d0_NO_NAME_x_q_1(DELAY,473)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist19_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_stencil_2d0_NO_NAME_x_q);
        end
    end

    // i_sub16_i_7_i_stencil_2d58(SUB,219)@9
    assign i_sub16_i_7_i_stencil_2d58_a = {1'b0, redist19_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_7_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q};
    assign i_sub16_i_7_i_stencil_2d58_b = {1'b0, i_narrow_7_i_stencil_2d57_vt_join_q};
    assign i_sub16_i_7_i_stencil_2d58_o = $unsigned(i_sub16_i_7_i_stencil_2d58_a) - $unsigned(i_sub16_i_7_i_stencil_2d58_b);
    assign i_sub16_i_7_i_stencil_2d58_q = i_sub16_i_7_i_stencil_2d58_o[16:0];

    // bgTrunc_i_sub16_i_7_i_stencil_2d58_sel_x(BITSELECT,251)@9
    assign bgTrunc_i_sub16_i_7_i_stencil_2d58_sel_x_b = $unsigned(i_sub16_i_7_i_stencil_2d58_q[15:0]);

    // redist5_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_7(DELAY,459)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_7_q <= '0;
        end
        else
        begin
            redist5_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_7_q <= $unsigned(redist4_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_6_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,315)@9
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_224_q, bgTrunc_i_sub16_i_7_i_stencil_2d58_sel_x_b, redist5_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_7_q};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_stencil_2d0_NO_NAME_x(CHOOSEBITS,314)@9
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_stencil_2d0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_stencil_2d0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_stencil_2d0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_stencil_2d0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_stencil_2d0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_stencil_2d0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_stencil_2d0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_stencil_2d0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_stencil_2d0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_stencil_2d0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_stencil_2d0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_stencil_2d0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_stencil_2d0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_stencil_2d0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_stencil_2d0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_stencil_2d0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_stencil_2d0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_stencil_2d0_NO_NAME_x_a[7:7]};

    // redist18_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_stencil_2d0_NO_NAME_x_q_1(DELAY,472)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist18_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_stencil_2d0_NO_NAME_x_q);
        end
    end

    // i_sub16_i_8_i_stencil_2d63(SUB,220)@10
    assign i_sub16_i_8_i_stencil_2d63_a = {1'b0, redist18_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_8_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q};
    assign i_sub16_i_8_i_stencil_2d63_b = {1'b0, i_narrow_8_i_stencil_2d62_vt_join_q};
    assign i_sub16_i_8_i_stencil_2d63_o = $unsigned(i_sub16_i_8_i_stencil_2d63_a) - $unsigned(i_sub16_i_8_i_stencil_2d63_b);
    assign i_sub16_i_8_i_stencil_2d63_q = i_sub16_i_8_i_stencil_2d63_o[16:0];

    // bgTrunc_i_sub16_i_8_i_stencil_2d63_sel_x(BITSELECT,252)@10
    assign bgTrunc_i_sub16_i_8_i_stencil_2d63_sel_x_b = $unsigned(i_sub16_i_8_i_stencil_2d63_q[15:0]);

    // redist6_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_8(DELAY,460)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_8_q <= '0;
        end
        else
        begin
            redist6_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_8_q <= $unsigned(redist5_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_7_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,318)@10
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_224_q, bgTrunc_i_sub16_i_8_i_stencil_2d63_sel_x_b, redist6_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_8_q};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_stencil_2d0_NO_NAME_x(CHOOSEBITS,317)@10
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_stencil_2d0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_stencil_2d0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_stencil_2d0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_stencil_2d0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_stencil_2d0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_stencil_2d0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_stencil_2d0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_stencil_2d0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_stencil_2d0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_stencil_2d0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_stencil_2d0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_stencil_2d0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_stencil_2d0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_stencil_2d0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_stencil_2d0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_stencil_2d0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_stencil_2d0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_stencil_2d0_NO_NAME_x_a[6:6]};

    // redist17_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_stencil_2d0_NO_NAME_x_q_1(DELAY,471)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist17_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_stencil_2d0_NO_NAME_x_q);
        end
    end

    // i_sub16_i_9_i_stencil_2d68(SUB,221)@11
    assign i_sub16_i_9_i_stencil_2d68_a = {1'b0, redist17_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_9_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q};
    assign i_sub16_i_9_i_stencil_2d68_b = {1'b0, i_narrow_9_i_stencil_2d67_vt_join_q};
    assign i_sub16_i_9_i_stencil_2d68_o = $unsigned(i_sub16_i_9_i_stencil_2d68_a) - $unsigned(i_sub16_i_9_i_stencil_2d68_b);
    assign i_sub16_i_9_i_stencil_2d68_q = i_sub16_i_9_i_stencil_2d68_o[16:0];

    // bgTrunc_i_sub16_i_9_i_stencil_2d68_sel_x(BITSELECT,253)@11
    assign bgTrunc_i_sub16_i_9_i_stencil_2d68_sel_x_b = $unsigned(i_sub16_i_9_i_stencil_2d68_q[15:0]);

    // redist31_bgTrunc_i_sub16_i_9_i_stencil_2d68_sel_x_b_1(DELAY,485)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_bgTrunc_i_sub16_i_9_i_stencil_2d68_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist31_bgTrunc_i_sub16_i_9_i_stencil_2d68_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub16_i_9_i_stencil_2d68_sel_x_b);
        end
    end

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,276)@12
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_224_q, redist31_bgTrunc_i_sub16_i_9_i_stencil_2d68_sel_x_b_1_q, redist7_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_10_q};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_stencil_2d0_NO_NAME_x(CHOOSEBITS,275)@12
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_stencil_2d0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_stencil_2d0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_stencil_2d0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_stencil_2d0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_stencil_2d0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_stencil_2d0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_stencil_2d0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_stencil_2d0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_stencil_2d0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_stencil_2d0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_stencil_2d0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_stencil_2d0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_stencil_2d0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_stencil_2d0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_stencil_2d0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_stencil_2d0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_stencil_2d0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_stencil_2d0_NO_NAME_x_a[5:5]};

    // i_sub16_i_10_i_stencil_2d73(SUB,207)@12
    assign i_sub16_i_10_i_stencil_2d73_a = {1'b0, i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_10_shuffle_i_stencil_2d0_NO_NAME_x_q};
    assign i_sub16_i_10_i_stencil_2d73_b = {1'b0, i_narrow_10_i_stencil_2d72_vt_join_q};
    assign i_sub16_i_10_i_stencil_2d73_o = $unsigned(i_sub16_i_10_i_stencil_2d73_a) - $unsigned(i_sub16_i_10_i_stencil_2d73_b);
    assign i_sub16_i_10_i_stencil_2d73_q = i_sub16_i_10_i_stencil_2d73_o[16:0];

    // bgTrunc_i_sub16_i_10_i_stencil_2d73_sel_x(BITSELECT,239)@12
    assign bgTrunc_i_sub16_i_10_i_stencil_2d73_sel_x_b = $unsigned(i_sub16_i_10_i_stencil_2d73_q[15:0]);

    // redist7_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_10(DELAY,461)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_10_delay_0 <= '0;
            redist7_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_10_q <= '0;
        end
        else
        begin
            redist7_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_10_delay_0 <= $unsigned(redist6_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_8_q);
            redist7_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_10_q <= redist7_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_10_delay_0;
        end
    end

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,279)@12
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_224_q, bgTrunc_i_sub16_i_10_i_stencil_2d73_sel_x_b, redist7_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_10_q};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_stencil_2d0_NO_NAME_x(CHOOSEBITS,278)@12
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_stencil_2d0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_stencil_2d0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_stencil_2d0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_stencil_2d0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_stencil_2d0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_stencil_2d0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_stencil_2d0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_stencil_2d0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_stencil_2d0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_stencil_2d0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_stencil_2d0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_stencil_2d0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_stencil_2d0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_stencil_2d0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_stencil_2d0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_stencil_2d0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_stencil_2d0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_stencil_2d0_NO_NAME_x_a[4:4]};

    // redist29_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_stencil_2d0_NO_NAME_x_q_1(DELAY,483)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist29_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_stencil_2d0_NO_NAME_x_q);
        end
    end

    // i_sub16_i_11_i_stencil_2d78(SUB,208)@13
    assign i_sub16_i_11_i_stencil_2d78_a = {1'b0, redist29_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_11_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q};
    assign i_sub16_i_11_i_stencil_2d78_b = {1'b0, i_narrow_11_i_stencil_2d77_vt_join_q};
    assign i_sub16_i_11_i_stencil_2d78_o = $unsigned(i_sub16_i_11_i_stencil_2d78_a) - $unsigned(i_sub16_i_11_i_stencil_2d78_b);
    assign i_sub16_i_11_i_stencil_2d78_q = i_sub16_i_11_i_stencil_2d78_o[16:0];

    // bgTrunc_i_sub16_i_11_i_stencil_2d78_sel_x(BITSELECT,240)@13
    assign bgTrunc_i_sub16_i_11_i_stencil_2d78_sel_x_b = $unsigned(i_sub16_i_11_i_stencil_2d78_q[15:0]);

    // redist8_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_11(DELAY,462)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_11_q <= '0;
        end
        else
        begin
            redist8_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_11_q <= $unsigned(redist7_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_10_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,282)@13
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_224_q, bgTrunc_i_sub16_i_11_i_stencil_2d78_sel_x_b, redist8_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_11_q};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_stencil_2d0_NO_NAME_x(CHOOSEBITS,281)@13
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_stencil_2d0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_stencil_2d0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_stencil_2d0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_stencil_2d0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_stencil_2d0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_stencil_2d0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_stencil_2d0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_stencil_2d0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_stencil_2d0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_stencil_2d0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_stencil_2d0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_stencil_2d0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_stencil_2d0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_stencil_2d0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_stencil_2d0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_stencil_2d0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_stencil_2d0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_stencil_2d0_NO_NAME_x_a[3:3]};

    // redist28_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_stencil_2d0_NO_NAME_x_q_1(DELAY,482)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist28_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_stencil_2d0_NO_NAME_x_q);
        end
    end

    // i_sub16_i_12_i_stencil_2d83(SUB,209)@14
    assign i_sub16_i_12_i_stencil_2d83_a = {1'b0, redist28_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_12_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q};
    assign i_sub16_i_12_i_stencil_2d83_b = {1'b0, i_narrow_12_i_stencil_2d82_vt_join_q};
    assign i_sub16_i_12_i_stencil_2d83_o = $unsigned(i_sub16_i_12_i_stencil_2d83_a) - $unsigned(i_sub16_i_12_i_stencil_2d83_b);
    assign i_sub16_i_12_i_stencil_2d83_q = i_sub16_i_12_i_stencil_2d83_o[16:0];

    // bgTrunc_i_sub16_i_12_i_stencil_2d83_sel_x(BITSELECT,241)@14
    assign bgTrunc_i_sub16_i_12_i_stencil_2d83_sel_x_b = $unsigned(i_sub16_i_12_i_stencil_2d83_q[15:0]);

    // redist9_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_12(DELAY,463)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_12_q <= '0;
        end
        else
        begin
            redist9_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_12_q <= $unsigned(redist8_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_11_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,285)@14
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_224_q, bgTrunc_i_sub16_i_12_i_stencil_2d83_sel_x_b, redist9_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_12_q};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_stencil_2d0_NO_NAME_x(CHOOSEBITS,284)@14
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_stencil_2d0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_stencil_2d0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_stencil_2d0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_stencil_2d0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_stencil_2d0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_stencil_2d0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_stencil_2d0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_stencil_2d0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_stencil_2d0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_stencil_2d0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_stencil_2d0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_stencil_2d0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_stencil_2d0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_stencil_2d0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_stencil_2d0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_stencil_2d0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_stencil_2d0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_stencil_2d0_NO_NAME_x_a[2:2]};

    // redist27_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_stencil_2d0_NO_NAME_x_q_1(DELAY,481)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist27_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_stencil_2d0_NO_NAME_x_q);
        end
    end

    // i_sub16_i_13_i_stencil_2d88(SUB,210)@15
    assign i_sub16_i_13_i_stencil_2d88_a = {1'b0, redist27_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_13_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q};
    assign i_sub16_i_13_i_stencil_2d88_b = {1'b0, i_narrow_13_i_stencil_2d87_vt_join_q};
    assign i_sub16_i_13_i_stencil_2d88_o = $unsigned(i_sub16_i_13_i_stencil_2d88_a) - $unsigned(i_sub16_i_13_i_stencil_2d88_b);
    assign i_sub16_i_13_i_stencil_2d88_q = i_sub16_i_13_i_stencil_2d88_o[16:0];

    // bgTrunc_i_sub16_i_13_i_stencil_2d88_sel_x(BITSELECT,242)@15
    assign bgTrunc_i_sub16_i_13_i_stencil_2d88_sel_x_b = $unsigned(i_sub16_i_13_i_stencil_2d88_q[15:0]);

    // redist10_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_13(DELAY,464)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_13_q <= '0;
        end
        else
        begin
            redist10_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_13_q <= $unsigned(redist9_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_12_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,288)@15
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_224_q, bgTrunc_i_sub16_i_13_i_stencil_2d88_sel_x_b, redist10_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_13_q};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_stencil_2d0_NO_NAME_x(CHOOSEBITS,287)@15
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_stencil_2d0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_stencil_2d0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_stencil_2d0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_stencil_2d0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_stencil_2d0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_stencil_2d0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_stencil_2d0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_stencil_2d0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_stencil_2d0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_stencil_2d0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_stencil_2d0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_stencil_2d0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_stencil_2d0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_stencil_2d0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_stencil_2d0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_stencil_2d0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_stencil_2d0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_stencil_2d0_NO_NAME_x_a[1:1]};

    // redist26_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_stencil_2d0_NO_NAME_x_q_1(DELAY,480)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist26_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_stencil_2d0_NO_NAME_x_q);
        end
    end

    // i_sub16_i_14_i_stencil_2d93(SUB,211)@16
    assign i_sub16_i_14_i_stencil_2d93_a = {1'b0, redist26_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_14_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q};
    assign i_sub16_i_14_i_stencil_2d93_b = {1'b0, i_narrow_14_i_stencil_2d92_vt_join_q};
    assign i_sub16_i_14_i_stencil_2d93_o = $unsigned(i_sub16_i_14_i_stencil_2d93_a) - $unsigned(i_sub16_i_14_i_stencil_2d93_b);
    assign i_sub16_i_14_i_stencil_2d93_q = i_sub16_i_14_i_stencil_2d93_o[16:0];

    // bgTrunc_i_sub16_i_14_i_stencil_2d93_sel_x(BITSELECT,243)@16
    assign bgTrunc_i_sub16_i_14_i_stencil_2d93_sel_x_b = $unsigned(i_sub16_i_14_i_stencil_2d93_q[15:0]);

    // redist11_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_14(DELAY,465)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_14_q <= '0;
        end
        else
        begin
            redist11_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_14_q <= $unsigned(redist10_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_13_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,291)@16
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_224_q, bgTrunc_i_sub16_i_14_i_stencil_2d93_sel_x_b, redist11_i_llvm_experimental_vector_reduce_add_v3i16_add_red_stencil_2d21_vunroll_re_add_1_0_q_14_q};

    // i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_stencil_2d0_NO_NAME_x(CHOOSEBITS,290)@16
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_stencil_2d0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_stencil_2d0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_stencil_2d0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_stencil_2d0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_stencil_2d0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_stencil_2d0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_stencil_2d0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_stencil_2d0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_stencil_2d0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_stencil_2d0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_stencil_2d0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_stencil_2d0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_stencil_2d0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_stencil_2d0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_stencil_2d0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_stencil_2d0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_stencil_2d0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_stencil_2d0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_stencil_2d0_NO_NAME_x_a[0:0]};

    // redist25_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_stencil_2d0_NO_NAME_x_q_1(DELAY,479)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist25_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_stencil_2d0_NO_NAME_x_q);
        end
    end

    // i_sub16_i_15_i_stencil_2d98(SUB,212)@17
    assign i_sub16_i_15_i_stencil_2d98_a = {1'b0, redist25_i_llvm_fpga_bit_shuffle_i16_s_s_in_entry_acl_soft_int16_mod_fpgaunique_14s_v16i32_or_i_15_shuffle_i_stencil_2d0_NO_NAME_x_q_1_q};
    assign i_sub16_i_15_i_stencil_2d98_b = {1'b0, i_narrow_15_i_stencil_2d97_vt_join_q};
    assign i_sub16_i_15_i_stencil_2d98_o = $unsigned(i_sub16_i_15_i_stencil_2d98_a) - $unsigned(i_sub16_i_15_i_stencil_2d98_b);
    assign i_sub16_i_15_i_stencil_2d98_q = i_sub16_i_15_i_stencil_2d98_o[16:0];

    // bgTrunc_i_sub16_i_15_i_stencil_2d98_sel_x(BITSELECT,244)@17
    assign bgTrunc_i_sub16_i_15_i_stencil_2d98_sel_x_b = $unsigned(i_sub16_i_15_i_stencil_2d98_q[15:0]);

    // i_rem_zext_stencil_2d99_sel_x(BITSELECT,324)@17
    assign i_rem_zext_stencil_2d99_sel_x_b = {16'b0000000000000000, bgTrunc_i_sub16_i_15_i_stencil_2d98_sel_x_b[15:0]};

    // i_rem_zext_stencil_2d99_vt_select_15(BITSELECT,206)@17
    assign i_rem_zext_stencil_2d99_vt_select_15_b = i_rem_zext_stencil_2d99_sel_x_b[15:0];

    // i_rem_zext_stencil_2d99_vt_join(BITJOIN,205)@17
    assign i_rem_zext_stencil_2d99_vt_join_q = {c_i16_018_q, i_rem_zext_stencil_2d99_vt_select_15_b};

    // redist15_sync_together157_aunroll_x_in_i_valid_15(DELAY,469)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist15_sync_together157_aunroll_x_in_i_valid_15 ( .xin(redist14_sync_together157_aunroll_x_in_i_valid_3_q), .xout(redist15_sync_together157_aunroll_x_in_i_valid_15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg5(REG,347)@16 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist15_sync_together157_aunroll_x_in_i_valid_15_q);
        end
    end

    // redist36_i_first_cleanup_xor70_stencil_2d4_q_13(DELAY,490)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist36_i_first_cleanup_xor70_stencil_2d4_q_13 ( .xin(i_first_cleanup_xor70_stencil_2d4_q), .xout(redist36_i_first_cleanup_xor70_stencil_2d4_q_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_stencil_2d_orig_pmem(CONSTANT,44)
    assign c_stencil_2d_orig_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx1_stencil_2d0_upper_bits_x_merged_bit_select(BITSELECT,438)@17
    assign i_arrayidx1_stencil_2d0_upper_bits_x_merged_bit_select_b = c_stencil_2d_orig_pmem_q[63:12];
    assign i_arrayidx1_stencil_2d0_upper_bits_x_merged_bit_select_c = c_stencil_2d_orig_pmem_q[11:0];

    // redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_notEnable(LOGICAL,499)
    assign redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_notEnable_q = $unsigned(~ (VCC_q));

    // redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_nor(LOGICAL,500)
    assign redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_nor_q = ~ (redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_notEnable_q | redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_sticky_ena_q);

    // redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_mem_last(CONSTANT,496)
    assign redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_mem_last_q = $unsigned(5'b01010);

    // redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_cmp(LOGICAL,497)
    assign redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_cmp_b = {1'b0, redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_rdcnt_q};
    assign redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_cmp_q = $unsigned(redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_mem_last_q == redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_cmp_b ? 1'b1 : 1'b0);

    // redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_cmpReg(REG,498)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_cmpReg_q <= $unsigned(redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_cmp_q);
        end
    end

    // redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_sticky_ena(REG,501)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_nor_q == 1'b1)
        begin
            redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_sticky_ena_q <= $unsigned(redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_cmpReg_q);
        end
    end

    // redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_enaAnd(LOGICAL,502)
    assign redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_enaAnd_q = redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_sticky_ena_q & VCC_q;

    // redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_rdcnt(COUNTER,494)
    // low=0, high=11, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_rdcnt_i <= 4'd0;
            redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_rdcnt_i == 4'd10)
            begin
                redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_rdcnt_eq <= 1'b0;
            end
            if (redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_rdcnt_eq == 1'b1)
            begin
                redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_rdcnt_i <= $unsigned(redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_rdcnt_i) + $unsigned(4'd5);
            end
            else
            begin
                redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_rdcnt_i <= $unsigned(redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_rdcnt_q = redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_rdcnt_i[3:0];

    // i_idxprom_stencil_2d100_sel_x(BITSELECT,273)@2
    assign i_idxprom_stencil_2d100_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j_038_pop17_stencil_2d12_out_data_out[31:0]};

    // i_idxprom_stencil_2d100_vt_select_31(BITSELECT,75)@2
    assign i_idxprom_stencil_2d100_vt_select_31_b = i_idxprom_stencil_2d100_sel_x_b[31:0];

    // i_idxprom_stencil_2d100_vt_join(BITJOIN,74)@2
    assign i_idxprom_stencil_2d100_vt_join_q = {c_i32_0132_q, i_idxprom_stencil_2d100_vt_select_31_b};

    // i_arrayidx1_stencil_2d0_dupName_0_trunc_sel_x(BITSELECT,266)@2
    assign i_arrayidx1_stencil_2d0_dupName_0_trunc_sel_x_b = i_idxprom_stencil_2d100_vt_join_q[11:0];

    // i_arrayidx1_stencil_2d0_narrow_x(BITSELECT,259)@2
    assign i_arrayidx1_stencil_2d0_narrow_x_b = i_arrayidx1_stencil_2d0_dupName_0_trunc_sel_x_b[9:0];

    // redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_inputreg0(DELAY,491)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_inputreg0_q <= '0;
        end
        else
        begin
            redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_inputreg0_q <= $unsigned(i_arrayidx1_stencil_2d0_narrow_x_b);
        end
    end

    // redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_wraddr(REG,495)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_wraddr_q <= $unsigned(4'b1011);
        end
        else
        begin
            redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_wraddr_q <= $unsigned(redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_rdcnt_q);
        end
    end

    // redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_mem(DUALMEM,493)
    assign redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_mem_ia = $unsigned(redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_inputreg0_q);
    assign redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_mem_aa = redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_wraddr_q;
    assign redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_mem_ab = redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_rdcnt_q;
    assign redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(10),
        .widthad_a(4),
        .numwords_a(12),
        .width_b(10),
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
    ) redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_mem_dmem (
        .clocken1(redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_mem_reset0),
        .clock1(clock),
        .address_a(redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_mem_aa),
        .data_a(redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_mem_ab),
        .q_b(redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_mem_iq),
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
    assign redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_mem_q = redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_mem_iq[9:0];

    // redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_outputreg0(DELAY,492)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_outputreg0_q <= '0;
        end
        else
        begin
            redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_outputreg0_q <= $unsigned(redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_mem_q);
        end
    end

    // i_arrayidx1_stencil_2d0_shift_join_x(BITJOIN,260)@17
    assign i_arrayidx1_stencil_2d0_shift_join_x_q = {redist30_i_arrayidx1_stencil_2d0_narrow_x_b_15_outputreg0_q, i_arrayidx1_stencil_2d101_vt_const_1_q};

    // i_arrayidx1_stencil_2d0_add_x(ADD,256)@17
    assign i_arrayidx1_stencil_2d0_add_x_a = {1'b0, i_arrayidx1_stencil_2d0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx1_stencil_2d0_add_x_b = {1'b0, i_arrayidx1_stencil_2d0_shift_join_x_q};
    assign i_arrayidx1_stencil_2d0_add_x_o = $unsigned(i_arrayidx1_stencil_2d0_add_x_a) + $unsigned(i_arrayidx1_stencil_2d0_add_x_b);
    assign i_arrayidx1_stencil_2d0_add_x_q = i_arrayidx1_stencil_2d0_add_x_o[12:0];

    // i_arrayidx1_stencil_2d0_dupName_2_trunc_sel_x(BITSELECT,267)@17
    assign i_arrayidx1_stencil_2d0_dupName_2_trunc_sel_x_b = i_arrayidx1_stencil_2d0_add_x_q[11:0];

    // i_arrayidx1_stencil_2d0_append_upper_bits_x(BITJOIN,257)@17
    assign i_arrayidx1_stencil_2d0_append_upper_bits_x_q = {i_arrayidx1_stencil_2d0_upper_bits_x_merged_bit_select_b, i_arrayidx1_stencil_2d0_dupName_2_trunc_sel_x_b};

    // i_arrayidx1_stencil_2d101_vt_select_63(BITSELECT,49)@17
    assign i_arrayidx1_stencil_2d101_vt_select_63_b = i_arrayidx1_stencil_2d0_append_upper_bits_x_q[63:2];

    // i_arrayidx1_stencil_2d101_vt_join(BITJOIN,48)@17
    assign i_arrayidx1_stencil_2d101_vt_join_q = {i_arrayidx1_stencil_2d101_vt_select_63_b, i_arrayidx1_stencil_2d101_vt_const_1_q};

    // i_llvm_fpga_mem_memdep_stencil_2d102(BLACKBOX,79)@17
    // out out_memdep_stencil_2d_avm_address@20000000
    // out out_memdep_stencil_2d_avm_burstcount@20000000
    // out out_memdep_stencil_2d_avm_byteenable@20000000
    // out out_memdep_stencil_2d_avm_enable@20000000
    // out out_memdep_stencil_2d_avm_read@20000000
    // out out_memdep_stencil_2d_avm_write@20000000
    // out out_memdep_stencil_2d_avm_writedata@20000000
    // out out_o_stall@18
    // out out_o_valid@18
    // out out_o_writeack@18
    stencil_2d_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_stencil_2d102 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx1_stencil_2d101_vt_join_q),
        .in_i_predicate(redist36_i_first_cleanup_xor70_stencil_2d4_q_13_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg5_q),
        .in_i_writedata(i_rem_zext_stencil_2d99_vt_join_q),
        .in_memdep_stencil_2d_avm_readdata(in_memdep_stencil_2d_avm_readdata),
        .in_memdep_stencil_2d_avm_readdatavalid(in_memdep_stencil_2d_avm_readdatavalid),
        .in_memdep_stencil_2d_avm_waitrequest(in_memdep_stencil_2d_avm_waitrequest),
        .in_memdep_stencil_2d_avm_writeack(in_memdep_stencil_2d_avm_writeack),
        .out_memdep_stencil_2d_avm_address(i_llvm_fpga_mem_memdep_stencil_2d102_out_memdep_stencil_2d_avm_address),
        .out_memdep_stencil_2d_avm_burstcount(i_llvm_fpga_mem_memdep_stencil_2d102_out_memdep_stencil_2d_avm_burstcount),
        .out_memdep_stencil_2d_avm_byteenable(i_llvm_fpga_mem_memdep_stencil_2d102_out_memdep_stencil_2d_avm_byteenable),
        .out_memdep_stencil_2d_avm_enable(i_llvm_fpga_mem_memdep_stencil_2d102_out_memdep_stencil_2d_avm_enable),
        .out_memdep_stencil_2d_avm_read(i_llvm_fpga_mem_memdep_stencil_2d102_out_memdep_stencil_2d_avm_read),
        .out_memdep_stencil_2d_avm_write(i_llvm_fpga_mem_memdep_stencil_2d102_out_memdep_stencil_2d_avm_write),
        .out_memdep_stencil_2d_avm_writedata(i_llvm_fpga_mem_memdep_stencil_2d102_out_memdep_stencil_2d_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,255)
    assign out_memdep_stencil_2d_avm_address = i_llvm_fpga_mem_memdep_stencil_2d102_out_memdep_stencil_2d_avm_address;
    assign out_memdep_stencil_2d_avm_enable = i_llvm_fpga_mem_memdep_stencil_2d102_out_memdep_stencil_2d_avm_enable;
    assign out_memdep_stencil_2d_avm_read = i_llvm_fpga_mem_memdep_stencil_2d102_out_memdep_stencil_2d_avm_read;
    assign out_memdep_stencil_2d_avm_write = i_llvm_fpga_mem_memdep_stencil_2d102_out_memdep_stencil_2d_avm_write;
    assign out_memdep_stencil_2d_avm_writedata = i_llvm_fpga_mem_memdep_stencil_2d102_out_memdep_stencil_2d_avm_writedata;
    assign out_memdep_stencil_2d_avm_byteenable = i_llvm_fpga_mem_memdep_stencil_2d102_out_memdep_stencil_2d_avm_byteenable;
    assign out_memdep_stencil_2d_avm_burstcount = i_llvm_fpga_mem_memdep_stencil_2d102_out_memdep_stencil_2d_avm_burstcount;

    // redist16_sync_together157_aunroll_x_in_i_valid_16(DELAY,470)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together157_aunroll_x_in_i_valid_16_q <= '0;
        end
        else
        begin
            redist16_sync_together157_aunroll_x_in_i_valid_16_q <= $unsigned(redist15_sync_together157_aunroll_x_in_i_valid_15_q);
        end
    end

    // valid_fanout_reg0(REG,342)@17 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist16_sync_together157_aunroll_x_in_i_valid_16_q);
        end
    end

    // i_masked73_stencil_2d115(LOGICAL,91)@4 + 1
    assign i_masked73_stencil_2d115_qi = i_notcmp60_stencil_2d108_q & i_first_cleanup69_stencil_2d3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked73_stencil_2d115_delay ( .xin(i_masked73_stencil_2d115_qi), .xout(i_masked73_stencil_2d115_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist32_i_masked73_stencil_2d115_q_14(DELAY,486)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist32_i_masked73_stencil_2d115_q_14 ( .xin(i_masked73_stencil_2d115_q), .xout(redist32_i_masked73_stencil_2d115_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist35_i_llvm_fpga_pipeline_keep_going64_stencil_2d6_out_data_out_17(DELAY,489)
    dspba_delay_ver #( .width(1), .depth(14), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist35_i_llvm_fpga_pipeline_keep_going64_stencil_2d6_out_data_out_17 ( .xin(redist34_i_llvm_fpga_pipeline_keep_going64_stencil_2d6_out_data_out_3_q), .xout(redist35_i_llvm_fpga_pipeline_keep_going64_stencil_2d6_out_data_out_17_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,330)@18
    assign out_c0_exi2_0_tpl = GND_q;
    assign out_c0_exi2_1_tpl = redist35_i_llvm_fpga_pipeline_keep_going64_stencil_2d6_out_data_out_17_q;
    assign out_c0_exi2_2_tpl = redist32_i_masked73_stencil_2d115_q_14_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_stencil_2d1 = GND_q;

endmodule
