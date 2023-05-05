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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body_if_loop_3s_c0_enter132_if_loop_30
// Created for function/kernel if_loop_3
// SystemVerilog created on Fri May  5 14:34:33 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module if_loop_3_i_sfc_logic_s_c0_in_for_body_s_c0_enter132_if_loop_30 (
    input wire [255:0] in_lm1_if_loop_3_avm_readdata,
    input wire [0:0] in_lm1_if_loop_3_avm_writeack,
    input wire [0:0] in_lm1_if_loop_3_avm_waitrequest,
    input wire [0:0] in_lm1_if_loop_3_avm_readdatavalid,
    output wire [31:0] out_lm1_if_loop_3_avm_address,
    output wire [0:0] out_lm1_if_loop_3_avm_enable,
    output wire [0:0] out_lm1_if_loop_3_avm_read,
    output wire [0:0] out_lm1_if_loop_3_avm_write,
    output wire [255:0] out_lm1_if_loop_3_avm_writedata,
    output wire [31:0] out_lm1_if_loop_3_avm_byteenable,
    output wire [0:0] out_lm1_if_loop_3_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [32:0] in_intel_reserved_ffwd_3_0,
    output wire [0:0] out_exiting_valid_out,
    input wire [255:0] in_lm22_if_loop_3_avm_readdata,
    input wire [0:0] in_lm22_if_loop_3_avm_writeack,
    input wire [0:0] in_lm22_if_loop_3_avm_waitrequest,
    input wire [0:0] in_lm22_if_loop_3_avm_readdatavalid,
    output wire [31:0] out_lm22_if_loop_3_avm_address,
    output wire [0:0] out_lm22_if_loop_3_avm_enable,
    output wire [0:0] out_lm22_if_loop_3_avm_read,
    output wire [0:0] out_lm22_if_loop_3_avm_write,
    output wire [255:0] out_lm22_if_loop_3_avm_writedata,
    output wire [31:0] out_lm22_if_loop_3_avm_byteenable,
    output wire [0:0] out_lm22_if_loop_3_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_4_0,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi2_0_tpl,
    output wire [0:0] out_c0_exi2_1_tpl,
    output wire [0:0] out_c0_exi2_2_tpl,
    output wire [0:0] out_if_loop_3_B2_current_iter_isspec,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_076_q;
    wire [31:0] c_i32_100078_q;
    wire [31:0] c_i32_179_q;
    wire [32:0] c_i33_181_q;
    wire [32:0] c_i33_undef75_q;
    wire [0:0] i_acl_if_loop_329_s;
    reg [31:0] i_acl_if_loop_329_q;
    wire [33:0] i_cmp2_if_loop_325_a;
    wire [33:0] i_cmp2_if_loop_325_b;
    logic [33:0] i_cmp2_if_loop_325_o;
    wire [0:0] i_cmp2_if_loop_325_c;
    wire [33:0] i_fpga_indvars_iv_next_if_loop_333_a;
    wire [33:0] i_fpga_indvars_iv_next_if_loop_333_b;
    logic [33:0] i_fpga_indvars_iv_next_if_loop_333_o;
    wire [33:0] i_fpga_indvars_iv_next_if_loop_333_q;
    wire [0:0] i_fpga_indvars_iv_replace_phi_if_loop_311_s;
    reg [32:0] i_fpga_indvars_iv_replace_phi_if_loop_311_q;
    wire [0:0] i_if_loop_3_b2_current_iter_isspec_if_loop_35_q;
    wire [0:0] i_if_loop_3_b2_current_iter_isspec_or3_if_loop_322_q;
    wire [0:0] i_if_loop_3_b2_next_iter_isreal_if_loop_37_q;
    wire [32:0] i_inc_if_loop_330_a;
    wire [32:0] i_inc_if_loop_330_b;
    logic [32:0] i_inc_if_loop_330_o;
    wire [32:0] i_inc_if_loop_330_q;
    wire [0:0] i_llvm_fpga_dummy_thread_if_loop_3_b2_dummy_if_loop_32_out_dummy_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp214_if_loop_334_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp215_if_loop_312_out_dest_data_out_0_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_38_if_loop_39_out_dest_data_out_3_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast266_if_loop_316_out_dest_data_out_1_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1028i32_mptr_bitcast24277_if_loop_320_out_dest_data_out_2_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_if_loop_310_if_loop_341_out_intel_reserved_ffwd_4_0;
    wire [0:0] i_llvm_fpga_forked_if_loop_3_b2_forked_if_loop_33_out_buffer_out;
    wire [31:0] i_llvm_fpga_mem_lm1_if_loop_319_out_lm1_if_loop_3_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm1_if_loop_319_out_lm1_if_loop_3_avm_burstcount;
    wire [31:0] i_llvm_fpga_mem_lm1_if_loop_319_out_lm1_if_loop_3_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm1_if_loop_319_out_lm1_if_loop_3_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm1_if_loop_319_out_lm1_if_loop_3_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm1_if_loop_319_out_lm1_if_loop_3_avm_write;
    wire [255:0] i_llvm_fpga_mem_lm1_if_loop_319_out_lm1_if_loop_3_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm1_if_loop_319_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_lm22_if_loop_323_out_lm22_if_loop_3_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm22_if_loop_323_out_lm22_if_loop_3_avm_burstcount;
    wire [31:0] i_llvm_fpga_mem_lm22_if_loop_323_out_lm22_if_loop_3_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm22_if_loop_323_out_lm22_if_loop_3_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm22_if_loop_323_out_lm22_if_loop_3_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm22_if_loop_323_out_lm22_if_loop_3_avm_write;
    wire [255:0] i_llvm_fpga_mem_lm22_if_loop_323_out_lm22_if_loop_3_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm22_if_loop_323_out_o_readdata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_36_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_36_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_36_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_36_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_36_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_if_loop_340_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_if_loop_340_out_feedback_valid_out_3;
    wire [0:0] i_notcmp_if_loop_339_q;
    wire [32:0] i_sub_if_loop_324_a;
    wire [32:0] i_sub_if_loop_324_b;
    logic [32:0] i_sub_if_loop_324_o;
    wire [32:0] i_sub_if_loop_324_q;
    wire [0:0] i_unnamed_if_loop_313_q;
    wire [63:0] i_unnamed_if_loop_315_vt_join_q;
    wire [31:0] i_unnamed_if_loop_315_vt_select_31_b;
    wire [0:0] i_unnamed_if_loop_335_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next_if_loop_333_sel_x_b;
    wire [31:0] bgTrunc_i_inc_if_loop_330_sel_x_b;
    wire [31:0] bgTrunc_i_sub_if_loop_324_sel_x_b;
    wire [31:0] c_i32_177_recast_x_q;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_if_loop_3_b2_current_iter_isreal_if_loop_30_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b2_current_iter_isreal_if_loop_34_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_if_loop_3_b2_current_iter_isreal_if_loop_30_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b2_current_iter_isreal_if_loop_34_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_i_022_pop8_if_loop_30_i_llvm_fpga_pop_i32_i_022_pop8_if_loop_314_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_i_022_pop8_if_loop_30_i_llvm_fpga_pop_i32_i_022_pop8_if_loop_314_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_30_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_310_mux_x_s;
    reg [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_30_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_310_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_c_i7_03_x_q;
    wire [7:0] i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_31_x_i_valid;
    wire i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_31_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_31_x_i_stall;
    wire i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_31_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_31_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_31_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_i_022_push8_if_loop_30_i_llvm_fpga_push_i32_i_022_push8_if_loop_31_x_i_valid;
    wire i_llvm_fpga_push_i32_i_022_push8_if_loop_30_i_llvm_fpga_push_i32_i_022_push8_if_loop_31_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_i_022_push8_if_loop_30_i_llvm_fpga_push_i32_i_022_push8_if_loop_31_x_i_stall;
    wire i_llvm_fpga_push_i32_i_022_push8_if_loop_30_i_llvm_fpga_push_i32_i_022_push8_if_loop_31_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_i_022_push8_if_loop_30_i_llvm_fpga_push_i32_i_022_push8_if_loop_31_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_i_022_push8_if_loop_30_i_llvm_fpga_push_i32_i_022_push8_if_loop_31_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_sum_023_push7_if_loop_30_i_llvm_fpga_push_i32_sum_023_push7_if_loop_31_x_i_valid;
    wire i_llvm_fpga_push_i32_sum_023_push7_if_loop_30_i_llvm_fpga_push_i32_sum_023_push7_if_loop_31_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_sum_023_push7_if_loop_30_i_llvm_fpga_push_i32_sum_023_push7_if_loop_31_x_i_stall;
    wire i_llvm_fpga_push_i32_sum_023_push7_if_loop_30_i_llvm_fpga_push_i32_sum_023_push7_if_loop_31_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_sum_023_push7_if_loop_30_i_llvm_fpga_push_i32_sum_023_push7_if_loop_31_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_sum_023_push7_if_loop_30_i_llvm_fpga_push_i32_sum_023_push7_if_loop_31_x_o_data;
    wire [30:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_30_c_i31_03_x_q;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_30_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_30_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_31_x_i_valid;
    wire i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_30_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_31_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_30_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_31_x_i_stall;
    wire i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_30_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_31_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_30_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_31_x_i_data;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_30_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_31_x_o_data;
    wire [32:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_30_adapt_scalar_trunc4_sel_x_b;
    wire [64:0] i_mptr_bitcast_index25_if_loop_30_add_x_a;
    wire [64:0] i_mptr_bitcast_index25_if_loop_30_add_x_b;
    logic [64:0] i_mptr_bitcast_index25_if_loop_30_add_x_o;
    wire [64:0] i_mptr_bitcast_index25_if_loop_30_add_x_q;
    wire [1:0] i_mptr_bitcast_index25_if_loop_30_c_i2_01_x_q;
    wire [61:0] i_mptr_bitcast_index25_if_loop_30_narrow_x_b;
    wire [63:0] i_mptr_bitcast_index25_if_loop_30_shift_join_x_q;
    wire [63:0] i_mptr_bitcast_index25_if_loop_30_dupName_0_trunc_sel_x_b;
    wire [64:0] i_mptr_bitcast_index_if_loop_30_add_x_a;
    wire [64:0] i_mptr_bitcast_index_if_loop_30_add_x_b;
    logic [64:0] i_mptr_bitcast_index_if_loop_30_add_x_o;
    wire [64:0] i_mptr_bitcast_index_if_loop_30_add_x_q;
    wire [63:0] i_mptr_bitcast_index_if_loop_30_dupName_0_trunc_sel_x_b;
    wire [63:0] i_unnamed_if_loop_315_sel_x_b;
    wire [0:0] xMSB_uid137_i_div_if_loop_328_b;
    wire [31:0] yPSE_uid139_i_div_if_loop_328_b;
    wire [31:0] yPSE_uid139_i_div_if_loop_328_qi;
    reg [31:0] yPSE_uid139_i_div_if_loop_328_q;
    wire [32:0] yPSEA_uid141_i_div_if_loop_328_a;
    wire [32:0] yPSEA_uid141_i_div_if_loop_328_b;
    logic [32:0] yPSEA_uid141_i_div_if_loop_328_o;
    wire [32:0] yPSEA_uid141_i_div_if_loop_328_q;
    wire [31:0] yPS_uid142_i_div_if_loop_328_in;
    wire [31:0] yPS_uid142_i_div_if_loop_328_b;
    wire [30:0] normYNoLeadOne_uid145_i_div_if_loop_328_in;
    wire [30:0] normYNoLeadOne_uid145_i_div_if_loop_328_b;
    wire [31:0] updatedY_uid147_i_div_if_loop_328_q;
    wire [31:0] normYIsOneC2_uid146_i_div_if_loop_328_a;
    wire [0:0] normYIsOneC2_uid146_i_div_if_loop_328_qi;
    reg [0:0] normYIsOneC2_uid146_i_div_if_loop_328_q;
    wire [0:0] normYIsOneC2_uid149_i_div_if_loop_328_b;
    wire [0:0] normYIsOne_uid150_i_div_if_loop_328_qi;
    reg [0:0] normYIsOne_uid150_i_div_if_loop_328_q;
    wire [31:0] yIsZero_uid151_i_div_if_loop_328_b;
    wire [0:0] yIsZero_uid151_i_div_if_loop_328_q;
    wire [38:0] fxpInverseRes_uid156_i_div_if_loop_328_in;
    wire [32:0] fxpInverseRes_uid156_i_div_if_loop_328_b;
    wire [32:0] oneInvRes_uid157_i_div_if_loop_328_q;
    wire [0:0] invResPostOneHandling2_uid158_i_div_if_loop_328_s;
    reg [32:0] invResPostOneHandling2_uid158_i_div_if_loop_328_q;
    wire [5:0] cWOut_uid159_i_div_if_loop_328_q;
    wire [6:0] rShiftCount_uid160_i_div_if_loop_328_a;
    wire [6:0] rShiftCount_uid160_i_div_if_loop_328_b;
    logic [6:0] rShiftCount_uid160_i_div_if_loop_328_o;
    wire [6:0] rShiftCount_uid160_i_div_if_loop_328_q;
    wire [31:0] xPSX_uid161_i_div_if_loop_328_b;
    wire [31:0] xPSX_uid161_i_div_if_loop_328_q;
    wire [1:0] zMsbY0_uid163_i_div_if_loop_328_q;
    wire [32:0] xPSXE_uid164_i_div_if_loop_328_a;
    wire [32:0] xPSXE_uid164_i_div_if_loop_328_b;
    logic [32:0] xPSXE_uid164_i_div_if_loop_328_o;
    wire [32:0] xPSXE_uid164_i_div_if_loop_328_q;
    wire [64:0] rightShiftInput_uid167_i_div_if_loop_328_in;
    wire [64:0] rightShiftInput_uid167_i_div_if_loop_328_b;
    wire [62:0] prodPostRightShiftPost_uid169_i_div_if_loop_328_in;
    wire [32:0] prodPostRightShiftPost_uid169_i_div_if_loop_328_b;
    wire [33:0] prodPostRightShiftPostRnd_uid171_i_div_if_loop_328_a;
    wire [33:0] prodPostRightShiftPostRnd_uid171_i_div_if_loop_328_b;
    logic [33:0] prodPostRightShiftPostRnd_uid171_i_div_if_loop_328_o;
    wire [33:0] prodPostRightShiftPostRnd_uid171_i_div_if_loop_328_q;
    wire [32:0] prodPostRightShiftPostRndRange_uid172_i_div_if_loop_328_in;
    wire [31:0] prodPostRightShiftPostRndRange_uid172_i_div_if_loop_328_b;
    wire [31:0] cstValOvfPos_uid173_i_div_if_loop_328_q;
    wire [31:0] cstValOvfneg_uid174_i_div_if_loop_328_q;
    wire [0:0] signX_uid175_i_div_if_loop_328_b;
    wire [0:0] cstOvf_uid176_i_div_if_loop_328_s;
    reg [31:0] cstOvf_uid176_i_div_if_loop_328_q;
    wire [0:0] resFinal_uid177_i_div_if_loop_328_s;
    reg [31:0] resFinal_uid177_i_div_if_loop_328_q;
    wire [65:0] prod_qy_GT_x_uid179_i_div_if_loop_328_a;
    wire [65:0] prod_qy_GT_x_uid179_i_div_if_loop_328_b;
    logic [65:0] prod_qy_GT_x_uid179_i_div_if_loop_328_o;
    wire [0:0] prod_qy_GT_x_uid179_i_div_if_loop_328_c;
    wire [65:0] prod_qy_LT_x_uid180_i_div_if_loop_328_a;
    wire [65:0] prod_qy_LT_x_uid180_i_div_if_loop_328_b;
    logic [65:0] prod_qy_LT_x_uid180_i_div_if_loop_328_o;
    wire [0:0] prod_qy_LT_x_uid180_i_div_if_loop_328_c;
    wire [0:0] resultSign_uid185_i_div_if_loop_328_qi;
    reg [0:0] resultSign_uid185_i_div_if_loop_328_q;
    wire [0:0] signResFinal_uid186_i_div_if_loop_328_b;
    wire [0:0] OverflowCond_uid187_i_div_if_loop_328_qi;
    reg [0:0] OverflowCond_uid187_i_div_if_loop_328_q;
    wire [0:0] CondNegX_uid188_i_div_if_loop_328_q;
    wire [0:0] invSignX_uid189_i_div_if_loop_328_q;
    wire [0:0] CondPosX_uid190_i_div_if_loop_328_q;
    wire [0:0] postMuxSelect_uid191_i_div_if_loop_328_q;
    wire [1:0] cstSubFinal_uid193_i_div_if_loop_328_q;
    wire [32:0] resFinalMP1_uid194_i_div_if_loop_328_a;
    wire [32:0] resFinalMP1_uid194_i_div_if_loop_328_b;
    logic [32:0] resFinalMP1_uid194_i_div_if_loop_328_o;
    wire [32:0] resFinalMP1_uid194_i_div_if_loop_328_q;
    wire [31:0] resFinalPostMux_uid195_i_div_if_loop_328_in;
    wire [31:0] resFinalPostMux_uid195_i_div_if_loop_328_b;
    wire [0:0] resFinalIntDiv_uid196_i_div_if_loop_328_s;
    reg [31:0] resFinalIntDiv_uid196_i_div_if_loop_328_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg5_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg7_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg9_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg10_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg11_q;
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
    wire [0:0] vCount_uid223_zCount_uid143_i_div_if_loop_328_qi;
    reg [0:0] vCount_uid223_zCount_uid143_i_div_if_loop_328_q;
    wire [0:0] vStagei_uid226_zCount_uid143_i_div_if_loop_328_s;
    reg [31:0] vStagei_uid226_zCount_uid143_i_div_if_loop_328_q;
    wire [15:0] zs_uid227_zCount_uid143_i_div_if_loop_328_q;
    wire [0:0] vCount_uid229_zCount_uid143_i_div_if_loop_328_qi;
    reg [0:0] vCount_uid229_zCount_uid143_i_div_if_loop_328_q;
    wire [0:0] vStagei_uid232_zCount_uid143_i_div_if_loop_328_s;
    reg [15:0] vStagei_uid232_zCount_uid143_i_div_if_loop_328_q;
    wire [7:0] zs_uid233_zCount_uid143_i_div_if_loop_328_q;
    wire [0:0] vCount_uid235_zCount_uid143_i_div_if_loop_328_qi;
    reg [0:0] vCount_uid235_zCount_uid143_i_div_if_loop_328_q;
    wire [0:0] vStagei_uid238_zCount_uid143_i_div_if_loop_328_s;
    reg [7:0] vStagei_uid238_zCount_uid143_i_div_if_loop_328_q;
    wire [3:0] zs_uid239_zCount_uid143_i_div_if_loop_328_q;
    wire [0:0] vCount_uid241_zCount_uid143_i_div_if_loop_328_q;
    wire [0:0] vStagei_uid244_zCount_uid143_i_div_if_loop_328_s;
    reg [3:0] vStagei_uid244_zCount_uid143_i_div_if_loop_328_q;
    wire [0:0] vCount_uid247_zCount_uid143_i_div_if_loop_328_q;
    wire [0:0] vStagei_uid250_zCount_uid143_i_div_if_loop_328_s;
    reg [1:0] vStagei_uid250_zCount_uid143_i_div_if_loop_328_q;
    wire [0:0] rVStage_uid252_zCount_uid143_i_div_if_loop_328_b;
    wire [0:0] vCount_uid253_zCount_uid143_i_div_if_loop_328_q;
    wire [5:0] r_uid254_zCount_uid143_i_div_if_loop_328_q;
    wire [13:0] yT1_uid272_invPolyEval_b;
    wire [0:0] lowRangeB_uid274_invPolyEval_in;
    wire [0:0] lowRangeB_uid274_invPolyEval_b;
    wire [12:0] highBBits_uid275_invPolyEval_b;
    wire [21:0] s1sumAHighB_uid276_invPolyEval_a;
    wire [21:0] s1sumAHighB_uid276_invPolyEval_b;
    logic [21:0] s1sumAHighB_uid276_invPolyEval_o;
    wire [21:0] s1sumAHighB_uid276_invPolyEval_q;
    wire [22:0] s1_uid277_invPolyEval_q;
    wire [20:0] yT2_uid278_invPolyEval_b;
    wire [0:0] lowRangeB_uid280_invPolyEval_in;
    wire [0:0] lowRangeB_uid280_invPolyEval_b;
    wire [21:0] highBBits_uid281_invPolyEval_b;
    wire [29:0] s2sumAHighB_uid282_invPolyEval_a;
    wire [29:0] s2sumAHighB_uid282_invPolyEval_b;
    logic [29:0] s2sumAHighB_uid282_invPolyEval_o;
    wire [29:0] s2sumAHighB_uid282_invPolyEval_q;
    wire [30:0] s2_uid283_invPolyEval_q;
    wire [1:0] lowRangeB_uid286_invPolyEval_in;
    wire [1:0] lowRangeB_uid286_invPolyEval_b;
    wire [29:0] highBBits_uid287_invPolyEval_b;
    wire [38:0] s3sumAHighB_uid288_invPolyEval_a;
    wire [38:0] s3sumAHighB_uid288_invPolyEval_b;
    logic [38:0] s3sumAHighB_uid288_invPolyEval_o;
    wire [38:0] s3sumAHighB_uid288_invPolyEval_q;
    wire [40:0] s3_uid289_invPolyEval_q;
    wire [13:0] osig_uid292_pT1_uid273_invPolyEval_b;
    wire [22:0] osig_uid295_pT2_uid279_invPolyEval_b;
    wire [23:0] nx_mergedSignalTM_uid309_pT3_uid285_invPolyEval_q;
    wire [4:0] aboveLeftY_bottomExtension_uid314_pT3_uid285_invPolyEval_q;
    wire [17:0] aboveLeftY_mergedSignalTM_uid316_pT3_uid285_invPolyEval_q;
    wire [11:0] rightBottomX_bottomExtension_uid318_pT3_uid285_invPolyEval_q;
    wire [17:0] rightBottomX_mergedSignalTM_uid320_pT3_uid285_invPolyEval_q;
    wire [17:0] lowRangeB_uid326_pT3_uid285_invPolyEval_in;
    wire [17:0] lowRangeB_uid326_pT3_uid285_invPolyEval_b;
    wire [18:0] highBBits_uid327_pT3_uid285_invPolyEval_b;
    wire [36:0] lev1_a0sumAHighB_uid328_pT3_uid285_invPolyEval_a;
    wire [36:0] lev1_a0sumAHighB_uid328_pT3_uid285_invPolyEval_b;
    logic [36:0] lev1_a0sumAHighB_uid328_pT3_uid285_invPolyEval_o;
    wire [36:0] lev1_a0sumAHighB_uid328_pT3_uid285_invPolyEval_q;
    wire [54:0] lev1_a0_uid329_pT3_uid285_invPolyEval_q;
    wire [52:0] os_uid330_pT3_uid285_invPolyEval_in;
    wire [31:0] os_uid330_pT3_uid285_invPolyEval_b;
    wire [0:0] i_exitcond_if_loop_331_cmp_nsign_q;
    wire [15:0] leftShiftStage0Idx1Rng16_uid343_normY_uid144_i_div_if_loop_328_in;
    wire [15:0] leftShiftStage0Idx1Rng16_uid343_normY_uid144_i_div_if_loop_328_b;
    wire [31:0] leftShiftStage0Idx1_uid344_normY_uid144_i_div_if_loop_328_q;
    wire [1:0] leftShiftStage0_uid348_normY_uid144_i_div_if_loop_328_s;
    reg [31:0] leftShiftStage0_uid348_normY_uid144_i_div_if_loop_328_q;
    wire [27:0] leftShiftStage1Idx1Rng4_uid350_normY_uid144_i_div_if_loop_328_in;
    wire [27:0] leftShiftStage1Idx1Rng4_uid350_normY_uid144_i_div_if_loop_328_b;
    wire [31:0] leftShiftStage1Idx1_uid351_normY_uid144_i_div_if_loop_328_q;
    wire [23:0] leftShiftStage1Idx2Rng8_uid353_normY_uid144_i_div_if_loop_328_in;
    wire [23:0] leftShiftStage1Idx2Rng8_uid353_normY_uid144_i_div_if_loop_328_b;
    wire [31:0] leftShiftStage1Idx2_uid354_normY_uid144_i_div_if_loop_328_q;
    wire [19:0] leftShiftStage1Idx3Rng12_uid356_normY_uid144_i_div_if_loop_328_in;
    wire [19:0] leftShiftStage1Idx3Rng12_uid356_normY_uid144_i_div_if_loop_328_b;
    wire [31:0] leftShiftStage1Idx3_uid357_normY_uid144_i_div_if_loop_328_q;
    wire [1:0] leftShiftStage1_uid359_normY_uid144_i_div_if_loop_328_s;
    reg [31:0] leftShiftStage1_uid359_normY_uid144_i_div_if_loop_328_q;
    wire [30:0] leftShiftStage2Idx1Rng1_uid361_normY_uid144_i_div_if_loop_328_in;
    wire [30:0] leftShiftStage2Idx1Rng1_uid361_normY_uid144_i_div_if_loop_328_b;
    wire [31:0] leftShiftStage2Idx1_uid362_normY_uid144_i_div_if_loop_328_q;
    wire [29:0] leftShiftStage2Idx2Rng2_uid364_normY_uid144_i_div_if_loop_328_in;
    wire [29:0] leftShiftStage2Idx2Rng2_uid364_normY_uid144_i_div_if_loop_328_b;
    wire [31:0] leftShiftStage2Idx2_uid365_normY_uid144_i_div_if_loop_328_q;
    wire [2:0] leftShiftStage2Idx3Pad3_uid366_normY_uid144_i_div_if_loop_328_q;
    wire [28:0] leftShiftStage2Idx3Rng3_uid367_normY_uid144_i_div_if_loop_328_in;
    wire [28:0] leftShiftStage2Idx3Rng3_uid367_normY_uid144_i_div_if_loop_328_b;
    wire [31:0] leftShiftStage2Idx3_uid368_normY_uid144_i_div_if_loop_328_q;
    wire [1:0] leftShiftStage2_uid370_normY_uid144_i_div_if_loop_328_s;
    reg [31:0] leftShiftStage2_uid370_normY_uid144_i_div_if_loop_328_q;
    wire [15:0] prodXInvY_uid166_i_div_if_loop_328_bjB3_q;
    wire [66:0] prodXInvY_uid166_i_div_if_loop_328_sums_join_0_q;
    wire [52:0] prodXInvY_uid166_i_div_if_loop_328_sums_align_1_q;
    wire [52:0] prodXInvY_uid166_i_div_if_loop_328_sums_align_1_qint;
    wire [67:0] prodXInvY_uid166_i_div_if_loop_328_sums_result_add_0_0_a;
    wire [67:0] prodXInvY_uid166_i_div_if_loop_328_sums_result_add_0_0_b;
    logic [67:0] prodXInvY_uid166_i_div_if_loop_328_sums_result_add_0_0_o;
    wire [67:0] prodXInvY_uid166_i_div_if_loop_328_sums_result_add_0_0_q;
    wire [0:0] xMSB_uid389_prodPostRightShift_uid168_i_div_if_loop_328_b;
    wire [63:0] rightShiftStage0Idx1Rng1_uid391_prodPostRightShift_uid168_i_div_if_loop_328_b;
    wire [64:0] rightShiftStage0Idx1_uid392_prodPostRightShift_uid168_i_div_if_loop_328_q;
    wire [1:0] seMsb_to2_uid393_in;
    wire [1:0] seMsb_to2_uid393_b;
    wire [62:0] rightShiftStage0Idx2Rng2_uid394_prodPostRightShift_uid168_i_div_if_loop_328_b;
    wire [64:0] rightShiftStage0Idx2_uid395_prodPostRightShift_uid168_i_div_if_loop_328_q;
    wire [2:0] seMsb_to3_uid396_in;
    wire [2:0] seMsb_to3_uid396_b;
    wire [61:0] rightShiftStage0Idx3Rng3_uid397_prodPostRightShift_uid168_i_div_if_loop_328_b;
    wire [64:0] rightShiftStage0Idx3_uid398_prodPostRightShift_uid168_i_div_if_loop_328_q;
    wire [1:0] rightShiftStage0_uid400_prodPostRightShift_uid168_i_div_if_loop_328_s;
    reg [64:0] rightShiftStage0_uid400_prodPostRightShift_uid168_i_div_if_loop_328_q;
    wire [3:0] seMsb_to4_uid401_in;
    wire [3:0] seMsb_to4_uid401_b;
    wire [60:0] rightShiftStage1Idx1Rng4_uid402_prodPostRightShift_uid168_i_div_if_loop_328_b;
    wire [64:0] rightShiftStage1Idx1_uid403_prodPostRightShift_uid168_i_div_if_loop_328_q;
    wire [7:0] seMsb_to8_uid404_in;
    wire [7:0] seMsb_to8_uid404_b;
    wire [56:0] rightShiftStage1Idx2Rng8_uid405_prodPostRightShift_uid168_i_div_if_loop_328_b;
    wire [64:0] rightShiftStage1Idx2_uid406_prodPostRightShift_uid168_i_div_if_loop_328_q;
    wire [11:0] seMsb_to12_uid407_in;
    wire [11:0] seMsb_to12_uid407_b;
    wire [52:0] rightShiftStage1Idx3Rng12_uid408_prodPostRightShift_uid168_i_div_if_loop_328_b;
    wire [64:0] rightShiftStage1Idx3_uid409_prodPostRightShift_uid168_i_div_if_loop_328_q;
    wire [1:0] rightShiftStage1_uid411_prodPostRightShift_uid168_i_div_if_loop_328_s;
    reg [64:0] rightShiftStage1_uid411_prodPostRightShift_uid168_i_div_if_loop_328_q;
    wire [15:0] seMsb_to16_uid412_in;
    wire [15:0] seMsb_to16_uid412_b;
    wire [48:0] rightShiftStage2Idx1Rng16_uid413_prodPostRightShift_uid168_i_div_if_loop_328_b;
    wire [64:0] rightShiftStage2Idx1_uid414_prodPostRightShift_uid168_i_div_if_loop_328_q;
    wire [31:0] seMsb_to32_uid415_in;
    wire [31:0] seMsb_to32_uid415_b;
    wire [32:0] rightShiftStage2Idx2Rng32_uid416_prodPostRightShift_uid168_i_div_if_loop_328_b;
    wire [64:0] rightShiftStage2Idx2_uid417_prodPostRightShift_uid168_i_div_if_loop_328_q;
    wire [47:0] seMsb_to48_uid418_in;
    wire [47:0] seMsb_to48_uid418_b;
    wire [16:0] rightShiftStage2Idx3Rng48_uid419_prodPostRightShift_uid168_i_div_if_loop_328_b;
    wire [64:0] rightShiftStage2Idx3_uid420_prodPostRightShift_uid168_i_div_if_loop_328_q;
    wire [1:0] rightShiftStage2_uid422_prodPostRightShift_uid168_i_div_if_loop_328_s;
    reg [64:0] rightShiftStage2_uid422_prodPostRightShift_uid168_i_div_if_loop_328_q;
    wire [63:0] seMsb_to64_uid423_in;
    wire [63:0] seMsb_to64_uid423_b;
    wire [0:0] rightShiftStage3Idx1Rng64_uid424_prodPostRightShift_uid168_i_div_if_loop_328_b;
    wire [64:0] rightShiftStage3Idx1_uid425_prodPostRightShift_uid168_i_div_if_loop_328_q;
    wire [0:0] rightShiftStage3_uid427_prodPostRightShift_uid168_i_div_if_loop_328_s;
    reg [64:0] rightShiftStage3_uid427_prodPostRightShift_uid168_i_div_if_loop_328_q;
    wire [13:0] prodResY_uid178_i_div_if_loop_328_bs1_b;
    wire [13:0] prodResY_uid178_i_div_if_loop_328_bs2_b;
    wire [17:0] prodResY_uid178_i_div_if_loop_328_bs4_in;
    wire [17:0] prodResY_uid178_i_div_if_loop_328_bs4_b;
    wire [17:0] prodResY_uid178_i_div_if_loop_328_bs7_in;
    wire [17:0] prodResY_uid178_i_div_if_loop_328_bs7_b;
    wire [63:0] prodResY_uid178_i_div_if_loop_328_sums_join_0_q;
    wire [50:0] prodResY_uid178_i_div_if_loop_328_sums_align_1_q;
    wire [50:0] prodResY_uid178_i_div_if_loop_328_sums_align_1_qint;
    wire [64:0] prodResY_uid178_i_div_if_loop_328_sums_result_add_0_0_a;
    wire [64:0] prodResY_uid178_i_div_if_loop_328_sums_result_add_0_0_b;
    logic [64:0] prodResY_uid178_i_div_if_loop_328_sums_result_add_0_0_o;
    wire [64:0] prodResY_uid178_i_div_if_loop_328_sums_result_add_0_0_q;
    wire memoryC0_uid256_invTabGen_lutmem_reset0;
    wire [37:0] memoryC0_uid256_invTabGen_lutmem_ia;
    wire [7:0] memoryC0_uid256_invTabGen_lutmem_aa;
    wire [7:0] memoryC0_uid256_invTabGen_lutmem_ab;
    wire [37:0] memoryC0_uid256_invTabGen_lutmem_ir;
    wire [37:0] memoryC0_uid256_invTabGen_lutmem_r;
    wire memoryC1_uid259_invTabGen_lutmem_reset0;
    wire [28:0] memoryC1_uid259_invTabGen_lutmem_ia;
    wire [7:0] memoryC1_uid259_invTabGen_lutmem_aa;
    wire [7:0] memoryC1_uid259_invTabGen_lutmem_ab;
    wire [28:0] memoryC1_uid259_invTabGen_lutmem_ir;
    wire [28:0] memoryC1_uid259_invTabGen_lutmem_r;
    wire memoryC2_uid262_invTabGen_lutmem_reset0;
    wire [20:0] memoryC2_uid262_invTabGen_lutmem_ia;
    wire [7:0] memoryC2_uid262_invTabGen_lutmem_aa;
    wire [7:0] memoryC2_uid262_invTabGen_lutmem_ab;
    wire [20:0] memoryC2_uid262_invTabGen_lutmem_ir;
    wire [20:0] memoryC2_uid262_invTabGen_lutmem_r;
    wire memoryC3_uid265_invTabGen_lutmem_reset0;
    wire [13:0] memoryC3_uid265_invTabGen_lutmem_ia;
    wire [7:0] memoryC3_uid265_invTabGen_lutmem_aa;
    wire [7:0] memoryC3_uid265_invTabGen_lutmem_ab;
    wire [13:0] memoryC3_uid265_invTabGen_lutmem_ir;
    wire [13:0] memoryC3_uid265_invTabGen_lutmem_r;
    wire prodXY_uid291_pT1_uid273_invPolyEval_cma_reset;
    (* preserve_syn_only *) reg [13:0] prodXY_uid291_pT1_uid273_invPolyEval_cma_ah [0:0];
    (* preserve_syn_only *) reg signed [13:0] prodXY_uid291_pT1_uid273_invPolyEval_cma_ch [0:0];
    wire [13:0] prodXY_uid291_pT1_uid273_invPolyEval_cma_a0;
    wire [13:0] prodXY_uid291_pT1_uid273_invPolyEval_cma_c0;
    wire [27:0] prodXY_uid291_pT1_uid273_invPolyEval_cma_s0;
    wire [27:0] prodXY_uid291_pT1_uid273_invPolyEval_cma_qq;
    reg [27:0] prodXY_uid291_pT1_uid273_invPolyEval_cma_q;
    wire prodXY_uid291_pT1_uid273_invPolyEval_cma_ena0;
    wire prodXY_uid291_pT1_uid273_invPolyEval_cma_ena1;
    wire prodXY_uid291_pT1_uid273_invPolyEval_cma_ena2;
    wire prodXY_uid294_pT2_uid279_invPolyEval_cma_reset;
    (* preserve_syn_only *) reg [20:0] prodXY_uid294_pT2_uid279_invPolyEval_cma_ah [0:0];
    (* preserve_syn_only *) reg signed [22:0] prodXY_uid294_pT2_uid279_invPolyEval_cma_ch [0:0];
    wire [20:0] prodXY_uid294_pT2_uid279_invPolyEval_cma_a0;
    wire [22:0] prodXY_uid294_pT2_uid279_invPolyEval_cma_c0;
    wire [43:0] prodXY_uid294_pT2_uid279_invPolyEval_cma_s0;
    wire [43:0] prodXY_uid294_pT2_uid279_invPolyEval_cma_qq;
    reg [43:0] prodXY_uid294_pT2_uid279_invPolyEval_cma_q;
    wire prodXY_uid294_pT2_uid279_invPolyEval_cma_ena0;
    wire prodXY_uid294_pT2_uid279_invPolyEval_cma_ena1;
    wire prodXY_uid294_pT2_uid279_invPolyEval_cma_ena2;
    wire sm0_uid323_pT3_uid285_invPolyEval_cma_reset;
    (* preserve_syn_only *) reg signed [17:0] sm0_uid323_pT3_uid285_invPolyEval_cma_ah [0:0];
    (* preserve_syn_only *) reg signed [17:0] sm0_uid323_pT3_uid285_invPolyEval_cma_ch [0:0];
    wire [17:0] sm0_uid323_pT3_uid285_invPolyEval_cma_a0;
    wire [17:0] sm0_uid323_pT3_uid285_invPolyEval_cma_c0;
    wire [35:0] sm0_uid323_pT3_uid285_invPolyEval_cma_s0;
    wire [35:0] sm0_uid323_pT3_uid285_invPolyEval_cma_qq;
    reg [35:0] sm0_uid323_pT3_uid285_invPolyEval_cma_q;
    wire sm0_uid323_pT3_uid285_invPolyEval_cma_ena0;
    wire sm0_uid323_pT3_uid285_invPolyEval_cma_ena1;
    wire sm0_uid323_pT3_uid285_invPolyEval_cma_ena2;
    wire prodXInvY_uid166_i_div_if_loop_328_im0_cma_reset;
    (* preserve_syn_only *) reg signed [14:0] prodXInvY_uid166_i_div_if_loop_328_im0_cma_ah [0:0];
    (* preserve_syn_only *) reg signed [15:0] prodXInvY_uid166_i_div_if_loop_328_im0_cma_ch [0:0];
    wire [14:0] prodXInvY_uid166_i_div_if_loop_328_im0_cma_a0;
    wire [15:0] prodXInvY_uid166_i_div_if_loop_328_im0_cma_c0;
    wire [30:0] prodXInvY_uid166_i_div_if_loop_328_im0_cma_s0;
    wire [30:0] prodXInvY_uid166_i_div_if_loop_328_im0_cma_qq;
    reg [30:0] prodXInvY_uid166_i_div_if_loop_328_im0_cma_q;
    wire prodXInvY_uid166_i_div_if_loop_328_im0_cma_ena0;
    wire prodXInvY_uid166_i_div_if_loop_328_im0_cma_ena1;
    wire prodXInvY_uid166_i_div_if_loop_328_im0_cma_ena2;
    wire prodXInvY_uid166_i_div_if_loop_328_im10_cma_reset;
    (* preserve_syn_only *) reg [17:0] prodXInvY_uid166_i_div_if_loop_328_im10_cma_ah [0:0];
    (* preserve_syn_only *) reg [17:0] prodXInvY_uid166_i_div_if_loop_328_im10_cma_ch [0:0];
    wire [17:0] prodXInvY_uid166_i_div_if_loop_328_im10_cma_a0;
    wire [17:0] prodXInvY_uid166_i_div_if_loop_328_im10_cma_c0;
    wire [35:0] prodXInvY_uid166_i_div_if_loop_328_im10_cma_s0;
    wire [35:0] prodXInvY_uid166_i_div_if_loop_328_im10_cma_qq;
    reg [35:0] prodXInvY_uid166_i_div_if_loop_328_im10_cma_q;
    wire prodXInvY_uid166_i_div_if_loop_328_im10_cma_ena0;
    wire prodXInvY_uid166_i_div_if_loop_328_im10_cma_ena1;
    wire prodXInvY_uid166_i_div_if_loop_328_im10_cma_ena2;
    wire prodResY_uid178_i_div_if_loop_328_im0_cma_reset;
    (* preserve_syn_only *) reg signed [13:0] prodResY_uid178_i_div_if_loop_328_im0_cma_ah [0:0];
    (* preserve_syn_only *) reg signed [13:0] prodResY_uid178_i_div_if_loop_328_im0_cma_ch [0:0];
    wire [13:0] prodResY_uid178_i_div_if_loop_328_im0_cma_a0;
    wire [13:0] prodResY_uid178_i_div_if_loop_328_im0_cma_c0;
    wire [27:0] prodResY_uid178_i_div_if_loop_328_im0_cma_s0;
    wire [27:0] prodResY_uid178_i_div_if_loop_328_im0_cma_qq;
    reg [27:0] prodResY_uid178_i_div_if_loop_328_im0_cma_q;
    wire prodResY_uid178_i_div_if_loop_328_im0_cma_ena0;
    wire prodResY_uid178_i_div_if_loop_328_im0_cma_ena1;
    wire prodResY_uid178_i_div_if_loop_328_im0_cma_ena2;
    wire prodResY_uid178_i_div_if_loop_328_im8_cma_reset;
    (* preserve_syn_only *) reg [17:0] prodResY_uid178_i_div_if_loop_328_im8_cma_ah [0:0];
    (* preserve_syn_only *) reg [17:0] prodResY_uid178_i_div_if_loop_328_im8_cma_ch [0:0];
    wire [17:0] prodResY_uid178_i_div_if_loop_328_im8_cma_a0;
    wire [17:0] prodResY_uid178_i_div_if_loop_328_im8_cma_c0;
    wire [35:0] prodResY_uid178_i_div_if_loop_328_im8_cma_s0;
    wire [35:0] prodResY_uid178_i_div_if_loop_328_im8_cma_qq;
    reg [35:0] prodResY_uid178_i_div_if_loop_328_im8_cma_q;
    wire prodResY_uid178_i_div_if_loop_328_im8_cma_ena0;
    wire prodResY_uid178_i_div_if_loop_328_im8_cma_ena1;
    wire prodResY_uid178_i_div_if_loop_328_im8_cma_ena2;
    wire multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_reset;
    (* preserve_syn_only *) reg [17:0] multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_ah [0:1];
    (* preserve_syn_only *) reg signed [17:0] multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_ch [0:1];
    wire [17:0] multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_a0;
    wire [17:0] multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_c0;
    wire [17:0] multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_a1;
    wire [17:0] multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_c1;
    wire [36:0] multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_s0;
    wire [36:0] multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_qq;
    reg [36:0] multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_q;
    wire multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_ena0;
    wire multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_ena1;
    wire multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_ena2;
    wire prodXInvY_uid166_i_div_if_loop_328_ma4_cma_reset;
    (* preserve_syn_only *) reg signed [15:0] prodXInvY_uid166_i_div_if_loop_328_ma4_cma_ah [0:1];
    (* preserve_syn_only *) reg [17:0] prodXInvY_uid166_i_div_if_loop_328_ma4_cma_ch [0:1];
    wire [15:0] prodXInvY_uid166_i_div_if_loop_328_ma4_cma_a0;
    wire [17:0] prodXInvY_uid166_i_div_if_loop_328_ma4_cma_c0;
    wire [15:0] prodXInvY_uid166_i_div_if_loop_328_ma4_cma_a1;
    wire [17:0] prodXInvY_uid166_i_div_if_loop_328_ma4_cma_c1;
    wire [34:0] prodXInvY_uid166_i_div_if_loop_328_ma4_cma_s0;
    wire [34:0] prodXInvY_uid166_i_div_if_loop_328_ma4_cma_qq;
    reg [34:0] prodXInvY_uid166_i_div_if_loop_328_ma4_cma_q;
    wire prodXInvY_uid166_i_div_if_loop_328_ma4_cma_ena0;
    wire prodXInvY_uid166_i_div_if_loop_328_ma4_cma_ena1;
    wire prodXInvY_uid166_i_div_if_loop_328_ma4_cma_ena2;
    wire prodResY_uid178_i_div_if_loop_328_ma3_cma_reset;
    (* preserve_syn_only *) reg signed [13:0] prodResY_uid178_i_div_if_loop_328_ma3_cma_ah [0:1];
    (* preserve_syn_only *) reg [17:0] prodResY_uid178_i_div_if_loop_328_ma3_cma_ch [0:1];
    wire [13:0] prodResY_uid178_i_div_if_loop_328_ma3_cma_a0;
    wire [17:0] prodResY_uid178_i_div_if_loop_328_ma3_cma_c0;
    wire [13:0] prodResY_uid178_i_div_if_loop_328_ma3_cma_a1;
    wire [17:0] prodResY_uid178_i_div_if_loop_328_ma3_cma_c1;
    wire [32:0] prodResY_uid178_i_div_if_loop_328_ma3_cma_s0;
    wire [32:0] prodResY_uid178_i_div_if_loop_328_ma3_cma_qq;
    reg [32:0] prodResY_uid178_i_div_if_loop_328_ma3_cma_q;
    wire prodResY_uid178_i_div_if_loop_328_ma3_cma_ena0;
    wire prodResY_uid178_i_div_if_loop_328_ma3_cma_ena1;
    wire prodResY_uid178_i_div_if_loop_328_ma3_cma_ena2;
    wire [7:0] yAddr_uid153_i_div_if_loop_328_merged_bit_select_b;
    wire [22:0] yAddr_uid153_i_div_if_loop_328_merged_bit_select_c;
    wire [14:0] prodXInvY_uid166_i_div_if_loop_328_bs2_merged_bit_select_b;
    wire [17:0] prodXInvY_uid166_i_div_if_loop_328_bs2_merged_bit_select_c;
    wire [1:0] rightShiftStageSel0Dto0_uid399_prodPostRightShift_uid168_i_div_if_loop_328_merged_bit_select_b;
    wire [1:0] rightShiftStageSel0Dto0_uid399_prodPostRightShift_uid168_i_div_if_loop_328_merged_bit_select_c;
    wire [1:0] rightShiftStageSel0Dto0_uid399_prodPostRightShift_uid168_i_div_if_loop_328_merged_bit_select_d;
    wire [0:0] rightShiftStageSel0Dto0_uid399_prodPostRightShift_uid168_i_div_if_loop_328_merged_bit_select_e;
    wire [14:0] prodXInvY_uid166_i_div_if_loop_328_bs1_merged_bit_select_b;
    wire [17:0] prodXInvY_uid166_i_div_if_loop_328_bs1_merged_bit_select_c;
    wire [15:0] rVStage_uid228_zCount_uid143_i_div_if_loop_328_merged_bit_select_b;
    wire [15:0] rVStage_uid228_zCount_uid143_i_div_if_loop_328_merged_bit_select_c;
    wire [7:0] rVStage_uid234_zCount_uid143_i_div_if_loop_328_merged_bit_select_b;
    wire [7:0] rVStage_uid234_zCount_uid143_i_div_if_loop_328_merged_bit_select_c;
    wire [3:0] rVStage_uid240_zCount_uid143_i_div_if_loop_328_merged_bit_select_b;
    wire [3:0] rVStage_uid240_zCount_uid143_i_div_if_loop_328_merged_bit_select_c;
    wire [1:0] rVStage_uid246_zCount_uid143_i_div_if_loop_328_merged_bit_select_b;
    wire [1:0] rVStage_uid246_zCount_uid143_i_div_if_loop_328_merged_bit_select_c;
    wire [1:0] leftShiftStageSel0Dto4_uid347_normY_uid144_i_div_if_loop_328_merged_bit_select_b;
    wire [1:0] leftShiftStageSel0Dto4_uid347_normY_uid144_i_div_if_loop_328_merged_bit_select_c;
    wire [1:0] leftShiftStageSel0Dto4_uid347_normY_uid144_i_div_if_loop_328_merged_bit_select_d;
    wire [17:0] topRangeY_uid312_pT3_uid285_invPolyEval_merged_bit_select_b;
    wire [12:0] topRangeY_uid312_pT3_uid285_invPolyEval_merged_bit_select_c;
    wire [17:0] topRangeX_uid311_pT3_uid285_invPolyEval_merged_bit_select_b;
    wire [5:0] topRangeX_uid311_pT3_uid285_invPolyEval_merged_bit_select_c;
    reg [1:0] redist0_leftShiftStageSel0Dto4_uid347_normY_uid144_i_div_if_loop_328_merged_bit_select_c_1_q;
    reg [1:0] redist1_leftShiftStageSel0Dto4_uid347_normY_uid144_i_div_if_loop_328_merged_bit_select_d_1_q;
    reg [7:0] redist2_rVStage_uid234_zCount_uid143_i_div_if_loop_328_merged_bit_select_b_1_q;
    reg [7:0] redist3_rVStage_uid234_zCount_uid143_i_div_if_loop_328_merged_bit_select_c_1_q;
    reg [15:0] redist4_rVStage_uid228_zCount_uid143_i_div_if_loop_328_merged_bit_select_b_1_q;
    reg [15:0] redist5_rVStage_uid228_zCount_uid143_i_div_if_loop_328_merged_bit_select_c_1_q;
    reg [7:0] redist7_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_14_q;
    reg [7:0] redist7_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_14_delay_0;
    reg [7:0] redist7_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_14_delay_1;
    reg [7:0] redist7_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_14_delay_2;
    reg [7:0] redist7_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_14_delay_3;
    reg [22:0] redist9_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_3_q;
    reg [22:0] redist9_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_3_delay_0;
    reg [22:0] redist9_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_3_delay_1;
    reg [35:0] redist12_sm0_uid323_pT3_uid285_invPolyEval_cma_q_1_q;
    reg [13:0] redist13_memoryC3_uid265_invTabGen_lutmem_r_1_q;
    reg [37:0] redist14_memoryC0_uid256_invTabGen_lutmem_r_1_q;
    reg [31:0] redist15_os_uid330_pT3_uid285_invPolyEval_b_1_q;
    reg [18:0] redist16_highBBits_uid327_pT3_uid285_invPolyEval_b_1_q;
    reg [17:0] redist17_lowRangeB_uid326_pT3_uid285_invPolyEval_b_1_q;
    reg [0:0] redist18_lowRangeB_uid280_invPolyEval_b_1_q;
    reg [0:0] redist19_lowRangeB_uid274_invPolyEval_b_1_q;
    reg [0:0] redist21_vCount_uid241_zCount_uid143_i_div_if_loop_328_q_1_q;
    reg [0:0] redist22_vCount_uid235_zCount_uid143_i_div_if_loop_328_q_2_q;
    reg [0:0] redist23_vCount_uid229_zCount_uid143_i_div_if_loop_328_q_3_q;
    reg [0:0] redist23_vCount_uid229_zCount_uid143_i_div_if_loop_328_q_3_delay_0;
    reg [0:0] redist24_vCount_uid223_zCount_uid143_i_div_if_loop_328_q_4_q;
    reg [0:0] redist24_vCount_uid223_zCount_uid143_i_div_if_loop_328_q_4_delay_0;
    reg [0:0] redist24_vCount_uid223_zCount_uid143_i_div_if_loop_328_q_4_delay_1;
    reg [31:0] redist25_resFinalPostMux_uid195_i_div_if_loop_328_b_1_q;
    reg [0:0] redist26_OverflowCond_uid187_i_div_if_loop_328_q_2_q;
    reg [31:0] redist27_resFinal_uid177_i_div_if_loop_328_q_4_q;
    reg [31:0] redist27_resFinal_uid177_i_div_if_loop_328_q_4_delay_0;
    reg [31:0] redist27_resFinal_uid177_i_div_if_loop_328_q_4_delay_1;
    reg [31:0] redist28_resFinal_uid177_i_div_if_loop_328_q_5_q;
    reg [31:0] redist29_resFinal_uid177_i_div_if_loop_328_q_6_q;
    reg [0:0] redist30_signX_uid175_i_div_if_loop_328_b_4_q;
    reg [0:0] redist30_signX_uid175_i_div_if_loop_328_b_4_delay_0;
    reg [0:0] redist30_signX_uid175_i_div_if_loop_328_b_4_delay_1;
    reg [0:0] redist30_signX_uid175_i_div_if_loop_328_b_4_delay_2;
    reg [0:0] redist31_signX_uid175_i_div_if_loop_328_b_6_q;
    reg [0:0] redist31_signX_uid175_i_div_if_loop_328_b_6_delay_0;
    reg [32:0] redist32_fxpInverseRes_uid156_i_div_if_loop_328_b_1_q;
    reg [0:0] redist33_normYIsOne_uid150_i_div_if_loop_328_q_24_q;
    reg [0:0] redist34_normYIsOneC2_uid149_i_div_if_loop_328_b_2_q;
    reg [0:0] redist34_normYIsOneC2_uid149_i_div_if_loop_328_b_2_delay_0;
    reg [30:0] redist35_normYNoLeadOne_uid145_i_div_if_loop_328_b_1_q;
    reg [31:0] redist36_yPS_uid142_i_div_if_loop_328_b_1_q;
    reg [31:0] redist37_yPS_uid142_i_div_if_loop_328_b_2_q;
    reg [31:0] redist38_yPS_uid142_i_div_if_loop_328_b_5_q;
    reg [31:0] redist38_yPS_uid142_i_div_if_loop_328_b_5_delay_0;
    reg [31:0] redist38_yPS_uid142_i_div_if_loop_328_b_5_delay_1;
    reg [0:0] redist39_xMSB_uid137_i_div_if_loop_328_b_1_q;
    reg [0:0] redist40_xMSB_uid137_i_div_if_loop_328_b_33_q;
    reg [0:0] redist41_xMSB_uid137_i_div_if_loop_328_b_43_q;
    reg [0:0] redist42_sync_together91_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist43_sync_together91_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist43_sync_together91_aunroll_x_in_i_valid_3_delay_0;
    reg [0:0] redist44_sync_together91_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist45_sync_together91_aunroll_x_in_i_valid_39_q;
    reg [0:0] redist46_sync_together91_aunroll_x_in_i_valid_53_q;
    reg [0:0] redist47_sync_together91_aunroll_x_in_i_valid_54_q;
    reg [0:0] redist48_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_inv_pred_x_q_1_q;
    reg [0:0] redist49_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_inv_pred_x_q_3_q;
    reg [0:0] redist49_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_inv_pred_x_q_3_delay_0;
    reg [0:0] redist50_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_inv_pred_x_q_4_q;
    reg [0:0] redist51_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_inv_pred_x_q_39_q;
    reg [0:0] redist52_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_inv_pred_x_q_53_q;
    reg [31:0] redist55_bgTrunc_i_sub_if_loop_324_sel_x_b_1_q;
    reg [31:0] redist57_bgTrunc_i_inc_if_loop_330_sel_x_b_1_q;
    reg [32:0] redist58_bgTrunc_i_fpga_indvars_iv_next_if_loop_333_sel_x_b_1_q;
    reg [0:0] redist59_i_unnamed_if_loop_335_q_50_q;
    reg [0:0] redist60_i_llvm_fpga_forked_if_loop_3_b2_forked_if_loop_33_out_buffer_out_4_q;
    reg [0:0] redist60_i_llvm_fpga_forked_if_loop_3_b2_forked_if_loop_33_out_buffer_out_4_delay_0;
    reg [0:0] redist60_i_llvm_fpga_forked_if_loop_3_b2_forked_if_loop_33_out_buffer_out_4_delay_1;
    reg [0:0] redist60_i_llvm_fpga_forked_if_loop_3_b2_forked_if_loop_33_out_buffer_out_4_delay_2;
    reg [0:0] redist61_i_llvm_fpga_forked_if_loop_3_b2_forked_if_loop_33_out_buffer_out_5_q;
    reg [0:0] redist62_i_llvm_fpga_forked_if_loop_3_b2_forked_if_loop_33_out_buffer_out_43_q;
    reg [0:0] redist63_i_llvm_fpga_dummy_thread_if_loop_3_b2_dummy_if_loop_32_out_dummy_out_5_q;
    reg [0:0] redist63_i_llvm_fpga_dummy_thread_if_loop_3_b2_dummy_if_loop_32_out_dummy_out_5_delay_0;
    reg [0:0] redist63_i_llvm_fpga_dummy_thread_if_loop_3_b2_dummy_if_loop_32_out_dummy_out_5_delay_1;
    reg [0:0] redist63_i_llvm_fpga_dummy_thread_if_loop_3_b2_dummy_if_loop_32_out_dummy_out_5_delay_2;
    reg [0:0] redist63_i_llvm_fpga_dummy_thread_if_loop_3_b2_dummy_if_loop_32_out_dummy_out_5_delay_3;
    reg [0:0] redist64_i_if_loop_3_b2_current_iter_isspec_if_loop_35_q_50_q;
    reg [0:0] redist65_i_cmp2_if_loop_325_c_6_q;
    reg [0:0] redist65_i_cmp2_if_loop_325_c_6_delay_0;
    reg [0:0] redist65_i_cmp2_if_loop_325_c_6_delay_1;
    reg [0:0] redist65_i_cmp2_if_loop_325_c_6_delay_2;
    reg [0:0] redist65_i_cmp2_if_loop_325_c_6_delay_3;
    reg [7:0] redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_outputreg0_q;
    wire redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_mem_reset0;
    wire [7:0] redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_mem_ia;
    wire [2:0] redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_mem_aa;
    wire [2:0] redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_mem_ab;
    wire [7:0] redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_mem_iq;
    wire [7:0] redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_mem_q;
    wire [2:0] redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [2:0] redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_wraddr_i = 3'b111;
    wire [2:0] redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_offset_q;
    wire [3:0] redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_rdcnt_a;
    wire [3:0] redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_rdcnt_b;
    logic [3:0] redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_rdcnt_o;
    wire [3:0] redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_rdcnt_q;
    reg [7:0] redist7_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_14_inputreg0_q;
    reg [7:0] redist7_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_14_outputreg0_q;
    reg [7:0] redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_inputreg0_q;
    reg [7:0] redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_outputreg0_q;
    wire redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_mem_reset0;
    wire [7:0] redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_mem_ia;
    wire [2:0] redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_mem_aa;
    wire [2:0] redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_mem_ab;
    wire [7:0] redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_mem_iq;
    wire [7:0] redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_mem_q;
    wire [2:0] redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [2:0] redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_wraddr_i = 3'b111;
    wire [3:0] redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_rdcnt_a;
    wire [3:0] redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_rdcnt_b;
    logic [3:0] redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_rdcnt_o;
    wire [3:0] redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_rdcnt_q;
    reg [22:0] redist10_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_10_outputreg0_q;
    wire redist10_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_10_mem_reset0;
    wire [22:0] redist10_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_10_mem_ia;
    wire [2:0] redist10_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_10_mem_aa;
    wire [2:0] redist10_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_10_mem_ab;
    wire [22:0] redist10_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_10_mem_iq;
    wire [22:0] redist10_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_10_mem_q;
    wire [2:0] redist10_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_10_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [2:0] redist10_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_10_wraddr_i = 3'b111;
    wire [3:0] redist10_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_10_rdcnt_a;
    wire [3:0] redist10_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_10_rdcnt_b;
    logic [3:0] redist10_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_10_rdcnt_o;
    wire [3:0] redist10_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_10_rdcnt_q;
    reg [22:0] redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_inputreg0_q;
    reg [22:0] redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_outputreg0_q;
    wire redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_mem_reset0;
    wire [22:0] redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_mem_ia;
    wire [1:0] redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_mem_aa;
    wire [1:0] redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_mem_ab;
    wire [22:0] redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_mem_iq;
    wire [22:0] redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_mem_q;
    wire [1:0] redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [1:0] redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_wraddr_i = 2'b11;
    wire [1:0] redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_offset_q;
    wire [2:0] redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_rdcnt_a;
    wire [2:0] redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_rdcnt_b;
    logic [2:0] redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_rdcnt_o;
    wire [2:0] redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_rdcnt_q;
    reg [5:0] redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_outputreg0_q;
    wire redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_mem_reset0;
    wire [5:0] redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_mem_ia;
    wire [4:0] redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_mem_aa;
    wire [4:0] redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_mem_ab;
    wire [5:0] redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_mem_iq;
    wire [5:0] redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_mem_q;
    wire [4:0] redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [4:0] redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_wraddr_i = 5'b11111;
    wire [4:0] redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_offset_q;
    wire [5:0] redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_rdcnt_a;
    wire [5:0] redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_rdcnt_b;
    logic [5:0] redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_rdcnt_o;
    wire [5:0] redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_rdcnt_q;
    reg [31:0] redist27_resFinal_uid177_i_div_if_loop_328_q_4_inputreg0_q;
    reg [31:0] redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_inputreg0_q;
    reg [31:0] redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_outputreg0_q;
    wire redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_mem_reset0;
    wire [31:0] redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_mem_ia;
    wire [1:0] redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_mem_aa;
    wire [1:0] redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_mem_ab;
    wire [31:0] redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_mem_iq;
    wire [31:0] redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_mem_q;
    wire [1:0] redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [1:0] redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_wraddr_i = 2'b11;
    wire [1:0] redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_offset_q;
    wire [2:0] redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_rdcnt_a;
    wire [2:0] redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_rdcnt_b;
    logic [2:0] redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_rdcnt_o;
    wire [2:0] redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_rdcnt_q;
    reg [31:0] redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_inputreg0_q;
    reg [31:0] redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_outputreg0_q;
    wire redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_mem_reset0;
    wire [31:0] redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_mem_ia;
    wire [1:0] redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_mem_aa;
    wire [1:0] redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_mem_ab;
    wire [31:0] redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_mem_iq;
    wire [31:0] redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_mem_q;
    wire [1:0] redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [1:0] redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_wraddr_i = 2'b11;
    wire [2:0] redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_rdcnt_a;
    wire [2:0] redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_rdcnt_b;
    logic [2:0] redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_rdcnt_o;
    wire [2:0] redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_rdcnt_q;
    reg [31:0] redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_inputreg0_q;
    reg [31:0] redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_outputreg0_q;
    wire redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_mem_reset0;
    wire [31:0] redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_mem_ia;
    wire [1:0] redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_mem_aa;
    wire [1:0] redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_mem_ab;
    wire [31:0] redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_mem_iq;
    wire [31:0] redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_mem_q;
    wire [1:0] redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [1:0] redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_wraddr_i = 2'b11;
    wire [2:0] redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_rdcnt_a;
    wire [2:0] redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_rdcnt_b;
    logic [2:0] redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_rdcnt_o;
    wire [2:0] redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_rdcnt_q;
    reg [31:0] redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_inputreg0_q;
    reg [31:0] redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_outputreg0_q;
    wire redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_mem_reset0;
    wire [31:0] redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_mem_ia;
    wire [4:0] redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_mem_aa;
    wire [4:0] redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_mem_ab;
    wire [31:0] redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_mem_iq;
    wire [31:0] redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_mem_q;
    wire [4:0] redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [4:0] redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_wraddr_i = 5'b11111;
    wire [4:0] redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_offset_q;
    wire [5:0] redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_rdcnt_a;
    wire [5:0] redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_rdcnt_b;
    logic [5:0] redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_rdcnt_o;
    wire [5:0] redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_rdcnt_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist42_sync_together91_aunroll_x_in_i_valid_1(DELAY,510)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist42_sync_together91_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist42_sync_together91_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist43_sync_together91_aunroll_x_in_i_valid_3(DELAY,511)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist43_sync_together91_aunroll_x_in_i_valid_3_delay_0 <= $unsigned(redist42_sync_together91_aunroll_x_in_i_valid_1_q);
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist43_sync_together91_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist43_sync_together91_aunroll_x_in_i_valid_3_q <= redist43_sync_together91_aunroll_x_in_i_valid_3_delay_0;
        end
    end

    // redist44_sync_together91_aunroll_x_in_i_valid_4(DELAY,512)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist44_sync_together91_aunroll_x_in_i_valid_4_q <= $unsigned(redist43_sync_together91_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg10(REG,207)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist44_sync_together91_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_c_i7_03_x(CONSTANT,104)
    assign i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_c_i7_03_x_q = $unsigned(7'b0000000);

    // valid_fanout_reg2(REG,199)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist44_sync_together91_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg21(REG,218)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist44_sync_together91_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg5(REG,202)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist43_sync_together91_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_38_if_loop_39(BLACKBOX,60)@4
    if_loop_3_i_llvm_fpga_ffwd_dest_i33_unnamed_8_if_loop_30 thei_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_38_if_loop_39 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_38_if_loop_39_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef75(CONSTANT,42)
    assign c_i33_undef75_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_30_c_i31_03_x(CONSTANT,116)
    assign i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_30_c_i31_03_x_q = $unsigned(31'b0000000000000000000000000000000);

    // c_i33_181(CONSTANT,41)
    assign c_i33_181_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next_if_loop_333(ADD,50)@5
    assign i_fpga_indvars_iv_next_if_loop_333_a = {1'b0, i_fpga_indvars_iv_replace_phi_if_loop_311_q};
    assign i_fpga_indvars_iv_next_if_loop_333_b = {1'b0, c_i33_181_q};
    assign i_fpga_indvars_iv_next_if_loop_333_o = $unsigned(i_fpga_indvars_iv_next_if_loop_333_a) + $unsigned(i_fpga_indvars_iv_next_if_loop_333_b);
    assign i_fpga_indvars_iv_next_if_loop_333_q = i_fpga_indvars_iv_next_if_loop_333_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next_if_loop_333_sel_x(BITSELECT,88)@5
    assign bgTrunc_i_fpga_indvars_iv_next_if_loop_333_sel_x_b = i_fpga_indvars_iv_next_if_loop_333_q[32:0];

    // redist58_bgTrunc_i_fpga_indvars_iv_next_if_loop_333_sel_x_b_1(DELAY,526)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist58_bgTrunc_i_fpga_indvars_iv_next_if_loop_333_sel_x_b_1_q <= $unsigned(bgTrunc_i_fpga_indvars_iv_next_if_loop_333_sel_x_b);
        end
    end

    // i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_30_element_extension2_x(BITJOIN,117)@6
    assign i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_30_element_extension2_x_q = {i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_30_c_i31_03_x_q, redist58_bgTrunc_i_fpga_indvars_iv_next_if_loop_333_sel_x_b_1_q};

    // i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_inv_pred_x(LOGICAL,107)@1
    assign i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg20(REG,217)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(in_i_valid);
        end
    end

    // redist50_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_inv_pred_x_q_4(DELAY,518)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist50_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_inv_pred_x_q_4_q <= $unsigned(redist49_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_inv_pred_x_q_3_q);
        end
    end

    // valid_fanout_reg19(REG,216)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist44_sync_together91_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_30_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_31_x(FIFODELAY,118)@1 + 10
    // in i_valid@5
    // in i_write_pred@5
    // in i_data@6
    // out o_data@4
    assign i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_30_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_31_x_i_stall = ~ (valid_fanout_reg20_q & i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_inv_pred_x_q);
    assign i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_30_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_31_x_i_valid = valid_fanout_reg19_q & redist50_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_30_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_31_x_i_data = i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_30_element_extension2_x_q;
    assign i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_30_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_31_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_30_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_31_x_i_valid[0];
    assign i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_30_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_31_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_30_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_31_x_i_stall[0];
    hld_fifo #(
        .DEPTH(10),
        .WIDTH(64),
        .STYLE("ms"),
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
    ) thei_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_30_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_31_x (
        .i_valid(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_30_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_31_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_30_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_31_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_30_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_30_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_31_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_30_adapt_scalar_trunc4_sel_x(BITSELECT,120)@4
    assign i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_30_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_30_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_31_x_o_data[32:0];

    // i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_30_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_310_mux_x(MUX,102)@4
    assign i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_30_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_310_mux_x_s = redist60_i_llvm_fpga_forked_if_loop_3_b2_forked_if_loop_33_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_30_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_310_mux_x_s or i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_30_adapt_scalar_trunc4_sel_x_b or c_i33_undef75_q)
    begin
        unique case (i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_30_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_310_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_30_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_310_mux_x_q = i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_30_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_30_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_310_mux_x_q = c_i33_undef75_q;
            default : i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_30_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_310_mux_x_q = 33'b0;
        endcase
    end

    // i_llvm_fpga_forked_if_loop_3_b2_forked_if_loop_33(BLACKBOX,64)@0
    // in in_stall_in@20000000
    if_loop_3_i_llvm_fpga_forked_b2_forked_if_loop_30 thei_llvm_fpga_forked_if_loop_3_b2_forked_if_loop_33 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_if_loop_3_b2_forked_if_loop_33_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist60_i_llvm_fpga_forked_if_loop_3_b2_forked_if_loop_33_out_buffer_out_4(DELAY,528)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist60_i_llvm_fpga_forked_if_loop_3_b2_forked_if_loop_33_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_if_loop_3_b2_forked_if_loop_33_out_buffer_out);
            redist60_i_llvm_fpga_forked_if_loop_3_b2_forked_if_loop_33_out_buffer_out_4_delay_1 <= redist60_i_llvm_fpga_forked_if_loop_3_b2_forked_if_loop_33_out_buffer_out_4_delay_0;
            redist60_i_llvm_fpga_forked_if_loop_3_b2_forked_if_loop_33_out_buffer_out_4_delay_2 <= redist60_i_llvm_fpga_forked_if_loop_3_b2_forked_if_loop_33_out_buffer_out_4_delay_1;
            redist60_i_llvm_fpga_forked_if_loop_3_b2_forked_if_loop_33_out_buffer_out_4_q <= redist60_i_llvm_fpga_forked_if_loop_3_b2_forked_if_loop_33_out_buffer_out_4_delay_2;
        end
    end

    // i_fpga_indvars_iv_replace_phi_if_loop_311(MUX,51)@4 + 1
    assign i_fpga_indvars_iv_replace_phi_if_loop_311_s = redist60_i_llvm_fpga_forked_if_loop_3_b2_forked_if_loop_33_out_buffer_out_4_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_fpga_indvars_iv_replace_phi_if_loop_311_s)
                1'b0 : i_fpga_indvars_iv_replace_phi_if_loop_311_q <= i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_30_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_310_mux_x_q;
                1'b1 : i_fpga_indvars_iv_replace_phi_if_loop_311_q <= i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_38_if_loop_39_out_dest_data_out_3_0;
                default : i_fpga_indvars_iv_replace_phi_if_loop_311_q <= 33'b0;
            endcase
        end
    end

    // i_exitcond_if_loop_331_cmp_nsign(LOGICAL,338)@5
    assign i_exitcond_if_loop_331_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv_replace_phi_if_loop_311_q[32:32]));

    // valid_fanout_reg14(REG,211)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist44_sync_together91_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp214_if_loop_334(BLACKBOX,58)@5
    if_loop_3_i_llvm_fpga_ffwd_dest_i1_cmp214_0 thei_llvm_fpga_ffwd_dest_i1_cmp214_if_loop_334 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp214_if_loop_334_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_if_loop_335(LOGICAL,76)@5
    assign i_unnamed_if_loop_335_q = i_llvm_fpga_ffwd_dest_i1_cmp214_if_loop_334_out_dest_data_out_0_0 & i_exitcond_if_loop_331_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond_if_loop_340(BLACKBOX,68)@5
    // in in_empty_in@20000000
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    if_loop_3_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_if_loop_340 (
        .in_almost_empty_in(GND_q),
        .in_data_in(i_unnamed_if_loop_335_q),
        .in_empty_in(GND_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_if_loop_36_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_if_loop_340_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_if_loop_340_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_if_loop_3_b2_dummy_if_loop_32(BLACKBOX,57)@0
    // in in_stall_in@20000000
    if_loop_3_i_llvm_fpga_dummy_thread_b2_dummy_if_loop_30 thei_llvm_fpga_dummy_thread_if_loop_3_b2_dummy_if_loop_32 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_if_loop_3_b2_dummy_if_loop_32_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist63_i_llvm_fpga_dummy_thread_if_loop_3_b2_dummy_if_loop_32_out_dummy_out_5(DELAY,531)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist63_i_llvm_fpga_dummy_thread_if_loop_3_b2_dummy_if_loop_32_out_dummy_out_5_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_if_loop_3_b2_dummy_if_loop_32_out_dummy_out);
            redist63_i_llvm_fpga_dummy_thread_if_loop_3_b2_dummy_if_loop_32_out_dummy_out_5_delay_1 <= redist63_i_llvm_fpga_dummy_thread_if_loop_3_b2_dummy_if_loop_32_out_dummy_out_5_delay_0;
            redist63_i_llvm_fpga_dummy_thread_if_loop_3_b2_dummy_if_loop_32_out_dummy_out_5_delay_2 <= redist63_i_llvm_fpga_dummy_thread_if_loop_3_b2_dummy_if_loop_32_out_dummy_out_5_delay_1;
            redist63_i_llvm_fpga_dummy_thread_if_loop_3_b2_dummy_if_loop_32_out_dummy_out_5_delay_3 <= redist63_i_llvm_fpga_dummy_thread_if_loop_3_b2_dummy_if_loop_32_out_dummy_out_5_delay_2;
            redist63_i_llvm_fpga_dummy_thread_if_loop_3_b2_dummy_if_loop_32_out_dummy_out_5_q <= redist63_i_llvm_fpga_dummy_thread_if_loop_3_b2_dummy_if_loop_32_out_dummy_out_5_delay_3;
        end
    end

    // i_llvm_fpga_pipeline_keep_going_if_loop_36(BLACKBOX,67)@5
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    if_loop_3_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_if_loop_36 (
        .in_data_in(redist61_i_llvm_fpga_forked_if_loop_3_b2_forked_if_loop_33_out_buffer_out_5_q),
        .in_dummy_in(redist63_i_llvm_fpga_dummy_thread_if_loop_3_b2_dummy_if_loop_32_out_dummy_out_5_q),
        .in_forked_in(redist61_i_llvm_fpga_forked_if_loop_3_b2_forked_if_loop_33_out_buffer_out_5_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_if_loop_340_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_if_loop_340_out_feedback_valid_out_3),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_if_loop_36_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_if_loop_36_out_not_exitcond_stall_out),
        .out_pipeline_dummy_out(i_llvm_fpga_pipeline_keep_going_if_loop_36_out_pipeline_dummy_out),
        .out_pipeline_forked_out(i_llvm_fpga_pipeline_keep_going_if_loop_36_out_pipeline_forked_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_if_loop_36_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_if_loop_3_b2_next_iter_isreal_if_loop_37(LOGICAL,55)@5
    assign i_if_loop_3_b2_next_iter_isreal_if_loop_37_q = i_llvm_fpga_pop_coalesce_i1_if_loop_3_b2_current_iter_isreal_if_loop_30_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b2_current_iter_isreal_if_loop_34_mux_x_q & i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out;

    // i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_element_extension2_x(BITJOIN,105)@5
    assign i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_element_extension2_x_q = {i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_c_i7_03_x_q, i_if_loop_3_b2_next_iter_isreal_if_loop_37_q};

    // redist48_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_inv_pred_x_q_1(DELAY,516)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist48_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_inv_pred_x_q_1_q <= $unsigned(i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_inv_pred_x_q);
        end
    end

    // valid_fanout_reg4(REG,201)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist42_sync_together91_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist49_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_inv_pred_x_q_3(DELAY,517)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist49_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_inv_pred_x_q_3_delay_0 <= $unsigned(redist48_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_inv_pred_x_q_1_q);
            redist49_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_inv_pred_x_q_3_q <= redist49_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_inv_pred_x_q_3_delay_0;
        end
    end

    // valid_fanout_reg3(REG,200)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist43_sync_together91_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_31_x(FIFODELAY,106)@2 + 12
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@5
    assign i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_31_x_i_stall = ~ (valid_fanout_reg4_q & redist48_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_inv_pred_x_q_1_q);
    assign i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_31_x_i_valid = valid_fanout_reg3_q & redist49_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_31_x_i_data = i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_31_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_31_x_i_valid[0];
    assign i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_31_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_31_x_i_stall[0];
    hld_fifo #(
        .DEPTH(12),
        .WIDTH(8),
        .STYLE("ms"),
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
    ) thei_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_31_x (
        .i_valid(i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_31_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_31_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_31_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_adapt_scalar_trunc4_sel_x(BITSELECT,108)@5
    assign i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_31_x_o_data[0:0];

    // redist61_i_llvm_fpga_forked_if_loop_3_b2_forked_if_loop_33_out_buffer_out_5(DELAY,529)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist61_i_llvm_fpga_forked_if_loop_3_b2_forked_if_loop_33_out_buffer_out_5_q <= $unsigned(redist60_i_llvm_fpga_forked_if_loop_3_b2_forked_if_loop_33_out_buffer_out_4_q);
        end
    end

    // i_llvm_fpga_pop_coalesce_i1_if_loop_3_b2_current_iter_isreal_if_loop_30_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b2_current_iter_isreal_if_loop_34_mux_x(MUX,99)@5
    assign i_llvm_fpga_pop_coalesce_i1_if_loop_3_b2_current_iter_isreal_if_loop_30_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b2_current_iter_isreal_if_loop_34_mux_x_s = redist61_i_llvm_fpga_forked_if_loop_3_b2_forked_if_loop_33_out_buffer_out_5_q;
    always @(i_llvm_fpga_pop_coalesce_i1_if_loop_3_b2_current_iter_isreal_if_loop_30_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b2_current_iter_isreal_if_loop_34_mux_x_s or i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_if_loop_3_b2_current_iter_isreal_if_loop_30_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b2_current_iter_isreal_if_loop_34_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_if_loop_3_b2_current_iter_isreal_if_loop_30_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b2_current_iter_isreal_if_loop_34_mux_x_q = i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_if_loop_3_b2_current_iter_isreal_if_loop_30_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b2_current_iter_isreal_if_loop_34_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_if_loop_3_b2_current_iter_isreal_if_loop_30_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b2_current_iter_isreal_if_loop_34_mux_x_q = 1'b0;
        endcase
    end

    // i_if_loop_3_b2_current_iter_isspec_if_loop_35(LOGICAL,52)@5
    assign i_if_loop_3_b2_current_iter_isspec_if_loop_35_q = i_llvm_fpga_pop_coalesce_i1_if_loop_3_b2_current_iter_isreal_if_loop_30_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b2_current_iter_isreal_if_loop_34_mux_x_q ^ VCC_q;

    // valid_fanout_reg7(REG,204)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist44_sync_together91_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp215_if_loop_312(BLACKBOX,59)@5
    if_loop_3_i_llvm_fpga_ffwd_dest_i1_cmp215_0 thei_llvm_fpga_ffwd_dest_i1_cmp215_if_loop_312 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp215_if_loop_312_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_if_loop_313(LOGICAL,71)@5
    assign i_unnamed_if_loop_313_q = i_llvm_fpga_ffwd_dest_i1_cmp215_if_loop_312_out_dest_data_out_0_0 ^ VCC_q;

    // i_if_loop_3_b2_current_iter_isspec_or3_if_loop_322(LOGICAL,53)@5
    assign i_if_loop_3_b2_current_iter_isspec_or3_if_loop_322_q = i_unnamed_if_loop_313_q | i_if_loop_3_b2_current_iter_isspec_if_loop_35_q;

    // c_i32_076(CONSTANT,38)
    assign c_i32_076_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_179(CONSTANT,40)
    assign c_i32_179_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_if_loop_330(ADD,56)@5
    assign i_inc_if_loop_330_a = {1'b0, i_llvm_fpga_pop_i32_i_022_pop8_if_loop_30_i_llvm_fpga_pop_i32_i_022_pop8_if_loop_314_mux_x_q};
    assign i_inc_if_loop_330_b = {1'b0, c_i32_179_q};
    assign i_inc_if_loop_330_o = $unsigned(i_inc_if_loop_330_a) + $unsigned(i_inc_if_loop_330_b);
    assign i_inc_if_loop_330_q = i_inc_if_loop_330_o[32:0];

    // bgTrunc_i_inc_if_loop_330_sel_x(BITSELECT,89)@5
    assign bgTrunc_i_inc_if_loop_330_sel_x_b = i_inc_if_loop_330_q[31:0];

    // redist57_bgTrunc_i_inc_if_loop_330_sel_x_b_1(DELAY,525)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist57_bgTrunc_i_inc_if_loop_330_sel_x_b_1_q <= $unsigned(bgTrunc_i_inc_if_loop_330_sel_x_b);
        end
    end

    // valid_fanout_reg16(REG,213)@0 + 1
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

    // valid_fanout_reg15(REG,212)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist44_sync_together91_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i32_i_022_push8_if_loop_30_i_llvm_fpga_push_i32_i_022_push8_if_loop_31_x(FIFODELAY,109)@1 + 10
    // in i_valid@5
    // in i_write_pred@5
    // in i_data@6
    // out o_data@4
    assign i_llvm_fpga_push_i32_i_022_push8_if_loop_30_i_llvm_fpga_push_i32_i_022_push8_if_loop_31_x_i_stall = ~ (valid_fanout_reg16_q & i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_i_022_push8_if_loop_30_i_llvm_fpga_push_i32_i_022_push8_if_loop_31_x_i_valid = valid_fanout_reg15_q & redist50_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_i32_i_022_push8_if_loop_30_i_llvm_fpga_push_i32_i_022_push8_if_loop_31_x_i_data = redist57_bgTrunc_i_inc_if_loop_330_sel_x_b_1_q;
    assign i_llvm_fpga_push_i32_i_022_push8_if_loop_30_i_llvm_fpga_push_i32_i_022_push8_if_loop_31_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_i_022_push8_if_loop_30_i_llvm_fpga_push_i32_i_022_push8_if_loop_31_x_i_valid[0];
    assign i_llvm_fpga_push_i32_i_022_push8_if_loop_30_i_llvm_fpga_push_i32_i_022_push8_if_loop_31_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_i_022_push8_if_loop_30_i_llvm_fpga_push_i32_i_022_push8_if_loop_31_x_i_stall[0];
    hld_fifo #(
        .DEPTH(10),
        .WIDTH(32),
        .STYLE("ms"),
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
    ) thei_llvm_fpga_push_i32_i_022_push8_if_loop_30_i_llvm_fpga_push_i32_i_022_push8_if_loop_31_x (
        .i_valid(i_llvm_fpga_push_i32_i_022_push8_if_loop_30_i_llvm_fpga_push_i32_i_022_push8_if_loop_31_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_i_022_push8_if_loop_30_i_llvm_fpga_push_i32_i_022_push8_if_loop_31_x_i_stall_bitsignaltemp),
        .i_data(redist57_bgTrunc_i_inc_if_loop_330_sel_x_b_1_q),
        .o_data(i_llvm_fpga_push_i32_i_022_push8_if_loop_30_i_llvm_fpga_push_i32_i_022_push8_if_loop_31_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_022_pop8_if_loop_30_i_llvm_fpga_pop_i32_i_022_pop8_if_loop_314_mux_x(MUX,100)@4 + 1
    assign i_llvm_fpga_pop_i32_i_022_pop8_if_loop_30_i_llvm_fpga_pop_i32_i_022_pop8_if_loop_314_mux_x_s = redist60_i_llvm_fpga_forked_if_loop_3_b2_forked_if_loop_33_out_buffer_out_4_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i32_i_022_pop8_if_loop_30_i_llvm_fpga_pop_i32_i_022_pop8_if_loop_314_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i32_i_022_pop8_if_loop_30_i_llvm_fpga_pop_i32_i_022_pop8_if_loop_314_mux_x_q <= i_llvm_fpga_push_i32_i_022_push8_if_loop_30_i_llvm_fpga_push_i32_i_022_push8_if_loop_31_x_o_data;
                1'b1 : i_llvm_fpga_pop_i32_i_022_pop8_if_loop_30_i_llvm_fpga_pop_i32_i_022_pop8_if_loop_314_mux_x_q <= c_i32_076_q;
                default : i_llvm_fpga_pop_i32_i_022_pop8_if_loop_30_i_llvm_fpga_pop_i32_i_022_pop8_if_loop_314_mux_x_q <= 32'b0;
            endcase
        end
    end

    // i_unnamed_if_loop_315_sel_x(BITSELECT,133)@5
    assign i_unnamed_if_loop_315_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_022_pop8_if_loop_30_i_llvm_fpga_pop_i32_i_022_pop8_if_loop_314_mux_x_q[31:0]};

    // i_unnamed_if_loop_315_vt_select_31(BITSELECT,75)@5
    assign i_unnamed_if_loop_315_vt_select_31_b = i_unnamed_if_loop_315_sel_x_b[31:0];

    // i_unnamed_if_loop_315_vt_join(BITJOIN,74)@5
    assign i_unnamed_if_loop_315_vt_join_q = {c_i32_076_q, i_unnamed_if_loop_315_vt_select_31_b};

    // i_mptr_bitcast_index25_if_loop_30_narrow_x(BITSELECT,123)@5
    assign i_mptr_bitcast_index25_if_loop_30_narrow_x_b = i_unnamed_if_loop_315_vt_join_q[61:0];

    // i_mptr_bitcast_index25_if_loop_30_c_i2_01_x(CONSTANT,122)
    assign i_mptr_bitcast_index25_if_loop_30_c_i2_01_x_q = $unsigned(2'b00);

    // i_mptr_bitcast_index25_if_loop_30_shift_join_x(BITJOIN,124)@5
    assign i_mptr_bitcast_index25_if_loop_30_shift_join_x_q = {i_mptr_bitcast_index25_if_loop_30_narrow_x_b, i_mptr_bitcast_index25_if_loop_30_c_i2_01_x_q};

    // valid_fanout_reg9(REG,206)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist44_sync_together91_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast266_if_loop_316(BLACKBOX,61)@5
    if_loop_3_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast266_0 thei_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast266_if_loop_316 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast266_if_loop_316_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mptr_bitcast_index_if_loop_30_add_x(ADD,127)@5
    assign i_mptr_bitcast_index_if_loop_30_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast266_if_loop_316_out_dest_data_out_1_0};
    assign i_mptr_bitcast_index_if_loop_30_add_x_b = {1'b0, i_mptr_bitcast_index25_if_loop_30_shift_join_x_q};
    assign i_mptr_bitcast_index_if_loop_30_add_x_o = $unsigned(i_mptr_bitcast_index_if_loop_30_add_x_a) + $unsigned(i_mptr_bitcast_index_if_loop_30_add_x_b);
    assign i_mptr_bitcast_index_if_loop_30_add_x_q = i_mptr_bitcast_index_if_loop_30_add_x_o[64:0];

    // i_mptr_bitcast_index_if_loop_30_dupName_0_trunc_sel_x(BITSELECT,132)@5
    assign i_mptr_bitcast_index_if_loop_30_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index_if_loop_30_add_x_q[63:0];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_mem_lm1_if_loop_319(BLACKBOX,65)@5
    // out out_lm1_if_loop_3_avm_address@20000000
    // out out_lm1_if_loop_3_avm_burstcount@20000000
    // out out_lm1_if_loop_3_avm_byteenable@20000000
    // out out_lm1_if_loop_3_avm_enable@20000000
    // out out_lm1_if_loop_3_avm_read@20000000
    // out out_lm1_if_loop_3_avm_write@20000000
    // out out_lm1_if_loop_3_avm_writedata@20000000
    // out out_o_almost_empty@9
    // out out_o_empty@9
    // out out_o_readdata@9
    // out out_o_stall@9
    // out out_o_valid@9
    if_loop_3_i_llvm_fpga_mem_lm1_0 thei_llvm_fpga_mem_lm1_if_loop_319 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_mptr_bitcast_index_if_loop_30_dupName_0_trunc_sel_x_b),
        .in_i_predicate(i_if_loop_3_b2_current_iter_isspec_or3_if_loop_322_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg10_q),
        .in_lm1_if_loop_3_avm_readdata(in_lm1_if_loop_3_avm_readdata),
        .in_lm1_if_loop_3_avm_readdatavalid(in_lm1_if_loop_3_avm_readdatavalid),
        .in_lm1_if_loop_3_avm_waitrequest(in_lm1_if_loop_3_avm_waitrequest),
        .in_lm1_if_loop_3_avm_writeack(in_lm1_if_loop_3_avm_writeack),
        .out_lm1_if_loop_3_avm_address(i_llvm_fpga_mem_lm1_if_loop_319_out_lm1_if_loop_3_avm_address),
        .out_lm1_if_loop_3_avm_burstcount(i_llvm_fpga_mem_lm1_if_loop_319_out_lm1_if_loop_3_avm_burstcount),
        .out_lm1_if_loop_3_avm_byteenable(i_llvm_fpga_mem_lm1_if_loop_319_out_lm1_if_loop_3_avm_byteenable),
        .out_lm1_if_loop_3_avm_enable(i_llvm_fpga_mem_lm1_if_loop_319_out_lm1_if_loop_3_avm_enable),
        .out_lm1_if_loop_3_avm_read(i_llvm_fpga_mem_lm1_if_loop_319_out_lm1_if_loop_3_avm_read),
        .out_lm1_if_loop_3_avm_write(i_llvm_fpga_mem_lm1_if_loop_319_out_lm1_if_loop_3_avm_write),
        .out_lm1_if_loop_3_avm_writedata(i_llvm_fpga_mem_lm1_if_loop_319_out_lm1_if_loop_3_avm_writedata),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_lm1_if_loop_319_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,44)
    assign out_lm1_if_loop_3_avm_address = i_llvm_fpga_mem_lm1_if_loop_319_out_lm1_if_loop_3_avm_address;
    assign out_lm1_if_loop_3_avm_enable = i_llvm_fpga_mem_lm1_if_loop_319_out_lm1_if_loop_3_avm_enable;
    assign out_lm1_if_loop_3_avm_read = i_llvm_fpga_mem_lm1_if_loop_319_out_lm1_if_loop_3_avm_read;
    assign out_lm1_if_loop_3_avm_write = i_llvm_fpga_mem_lm1_if_loop_319_out_lm1_if_loop_3_avm_write;
    assign out_lm1_if_loop_3_avm_writedata = i_llvm_fpga_mem_lm1_if_loop_319_out_lm1_if_loop_3_avm_writedata;
    assign out_lm1_if_loop_3_avm_byteenable = i_llvm_fpga_mem_lm1_if_loop_319_out_lm1_if_loop_3_avm_byteenable;
    assign out_lm1_if_loop_3_avm_burstcount = i_llvm_fpga_mem_lm1_if_loop_319_out_lm1_if_loop_3_avm_burstcount;

    // regfree_osync(GPOUT,85)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_if_loop_36_out_exiting_valid_out;

    // valid_fanout_reg12(REG,209)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist44_sync_together91_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg11(REG,208)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist44_sync_together91_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1028i32_mptr_bitcast24277_if_loop_320(BLACKBOX,62)@5
    if_loop_3_i_llvm_fpga_ffwd_dest_p1028i32_mptr_bitcast24277_0 thei_llvm_fpga_ffwd_dest_p1028i32_mptr_bitcast24277_if_loop_320 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_p1028i32_mptr_bitcast24277_if_loop_320_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mptr_bitcast_index25_if_loop_30_add_x(ADD,121)@5
    assign i_mptr_bitcast_index25_if_loop_30_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1028i32_mptr_bitcast24277_if_loop_320_out_dest_data_out_2_0};
    assign i_mptr_bitcast_index25_if_loop_30_add_x_b = {1'b0, i_mptr_bitcast_index25_if_loop_30_shift_join_x_q};
    assign i_mptr_bitcast_index25_if_loop_30_add_x_o = $unsigned(i_mptr_bitcast_index25_if_loop_30_add_x_a) + $unsigned(i_mptr_bitcast_index25_if_loop_30_add_x_b);
    assign i_mptr_bitcast_index25_if_loop_30_add_x_q = i_mptr_bitcast_index25_if_loop_30_add_x_o[64:0];

    // i_mptr_bitcast_index25_if_loop_30_dupName_0_trunc_sel_x(BITSELECT,126)@5
    assign i_mptr_bitcast_index25_if_loop_30_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index25_if_loop_30_add_x_q[63:0];

    // i_llvm_fpga_mem_lm22_if_loop_323(BLACKBOX,66)@5
    // out out_lm22_if_loop_3_avm_address@20000000
    // out out_lm22_if_loop_3_avm_burstcount@20000000
    // out out_lm22_if_loop_3_avm_byteenable@20000000
    // out out_lm22_if_loop_3_avm_enable@20000000
    // out out_lm22_if_loop_3_avm_read@20000000
    // out out_lm22_if_loop_3_avm_write@20000000
    // out out_lm22_if_loop_3_avm_writedata@20000000
    // out out_o_almost_empty@9
    // out out_o_empty@9
    // out out_o_readdata@9
    // out out_o_stall@9
    // out out_o_valid@9
    if_loop_3_i_llvm_fpga_mem_lm22_0 thei_llvm_fpga_mem_lm22_if_loop_323 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_mptr_bitcast_index25_if_loop_30_dupName_0_trunc_sel_x_b),
        .in_i_predicate(i_if_loop_3_b2_current_iter_isspec_or3_if_loop_322_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg12_q),
        .in_lm22_if_loop_3_avm_readdata(in_lm22_if_loop_3_avm_readdata),
        .in_lm22_if_loop_3_avm_readdatavalid(in_lm22_if_loop_3_avm_readdatavalid),
        .in_lm22_if_loop_3_avm_waitrequest(in_lm22_if_loop_3_avm_waitrequest),
        .in_lm22_if_loop_3_avm_writeack(in_lm22_if_loop_3_avm_writeack),
        .out_lm22_if_loop_3_avm_address(i_llvm_fpga_mem_lm22_if_loop_323_out_lm22_if_loop_3_avm_address),
        .out_lm22_if_loop_3_avm_burstcount(i_llvm_fpga_mem_lm22_if_loop_323_out_lm22_if_loop_3_avm_burstcount),
        .out_lm22_if_loop_3_avm_byteenable(i_llvm_fpga_mem_lm22_if_loop_323_out_lm22_if_loop_3_avm_byteenable),
        .out_lm22_if_loop_3_avm_enable(i_llvm_fpga_mem_lm22_if_loop_323_out_lm22_if_loop_3_avm_enable),
        .out_lm22_if_loop_3_avm_read(i_llvm_fpga_mem_lm22_if_loop_323_out_lm22_if_loop_3_avm_read),
        .out_lm22_if_loop_3_avm_write(i_llvm_fpga_mem_lm22_if_loop_323_out_lm22_if_loop_3_avm_write),
        .out_lm22_if_loop_3_avm_writedata(i_llvm_fpga_mem_lm22_if_loop_323_out_lm22_if_loop_3_avm_writedata),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_lm22_if_loop_323_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,94)
    assign out_lm22_if_loop_3_avm_address = i_llvm_fpga_mem_lm22_if_loop_323_out_lm22_if_loop_3_avm_address;
    assign out_lm22_if_loop_3_avm_enable = i_llvm_fpga_mem_lm22_if_loop_323_out_lm22_if_loop_3_avm_enable;
    assign out_lm22_if_loop_3_avm_read = i_llvm_fpga_mem_lm22_if_loop_323_out_lm22_if_loop_3_avm_read;
    assign out_lm22_if_loop_3_avm_write = i_llvm_fpga_mem_lm22_if_loop_323_out_lm22_if_loop_3_avm_write;
    assign out_lm22_if_loop_3_avm_writedata = i_llvm_fpga_mem_lm22_if_loop_323_out_lm22_if_loop_3_avm_writedata;
    assign out_lm22_if_loop_3_avm_byteenable = i_llvm_fpga_mem_lm22_if_loop_323_out_lm22_if_loop_3_avm_byteenable;
    assign out_lm22_if_loop_3_avm_burstcount = i_llvm_fpga_mem_lm22_if_loop_323_out_lm22_if_loop_3_avm_burstcount;

    // redist45_sync_together91_aunroll_x_in_i_valid_39(DELAY,513)
    dspba_delay_ver #( .width(1), .depth(35), .reset_kind("SYNC"), .phase(4), .modulus(2), .reset_high(1'b0) )
    redist45_sync_together91_aunroll_x_in_i_valid_39 ( .xin(redist44_sync_together91_aunroll_x_in_i_valid_4_q), .xout(redist45_sync_together91_aunroll_x_in_i_valid_39_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist46_sync_together91_aunroll_x_in_i_valid_53(DELAY,514)
    dspba_delay_ver #( .width(1), .depth(14), .reset_kind("SYNC"), .phase(39), .modulus(2), .reset_high(1'b0) )
    redist46_sync_together91_aunroll_x_in_i_valid_53 ( .xin(redist45_sync_together91_aunroll_x_in_i_valid_39_q), .xout(redist46_sync_together91_aunroll_x_in_i_valid_53_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist47_sync_together91_aunroll_x_in_i_valid_54(DELAY,515)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist47_sync_together91_aunroll_x_in_i_valid_54_q <= $unsigned(redist46_sync_together91_aunroll_x_in_i_valid_53_q);
        end
    end

    // valid_fanout_reg22(REG,219)@54 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist47_sync_together91_aunroll_x_in_i_valid_54_q);
        end
    end

    // i_sub_if_loop_324(SUB,70)@9
    assign i_sub_if_loop_324_a = {1'b0, i_llvm_fpga_mem_lm1_if_loop_319_out_o_readdata};
    assign i_sub_if_loop_324_b = {1'b0, i_llvm_fpga_mem_lm22_if_loop_323_out_o_readdata};
    assign i_sub_if_loop_324_o = $unsigned(i_sub_if_loop_324_a) - $unsigned(i_sub_if_loop_324_b);
    assign i_sub_if_loop_324_q = i_sub_if_loop_324_o[32:0];

    // bgTrunc_i_sub_if_loop_324_sel_x(BITSELECT,90)@9
    assign bgTrunc_i_sub_if_loop_324_sel_x_b = $unsigned(i_sub_if_loop_324_q[31:0]);

    // redist55_bgTrunc_i_sub_if_loop_324_sel_x_b_1(DELAY,523)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist55_bgTrunc_i_sub_if_loop_324_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub_if_loop_324_sel_x_b);
        end
    end

    // xMSB_uid137_i_div_if_loop_328(BITSELECT,136)@10
    assign xMSB_uid137_i_div_if_loop_328_b = $unsigned(redist55_bgTrunc_i_sub_if_loop_324_sel_x_b_1_q[31:31]);

    // redist39_xMSB_uid137_i_div_if_loop_328_b_1(DELAY,507)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist39_xMSB_uid137_i_div_if_loop_328_b_1_q <= $unsigned(xMSB_uid137_i_div_if_loop_328_b);
        end
    end

    // redist40_xMSB_uid137_i_div_if_loop_328_b_33(DELAY,508)
    dspba_delay_ver #( .width(1), .depth(32), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist40_xMSB_uid137_i_div_if_loop_328_b_33 ( .xin(redist39_xMSB_uid137_i_div_if_loop_328_b_1_q), .xout(redist40_xMSB_uid137_i_div_if_loop_328_b_33_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist41_xMSB_uid137_i_div_if_loop_328_b_43(DELAY,509)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist41_xMSB_uid137_i_div_if_loop_328_b_43 ( .xin(redist40_xMSB_uid137_i_div_if_loop_328_b_33_q), .xout(redist41_xMSB_uid137_i_div_if_loop_328_b_43_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_offset(CONSTANT,569)
    assign redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_offset_q = $unsigned(2'b11);

    // redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_rdcnt(ADD,570)
    assign redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_rdcnt_a = {1'b0, redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_wraddr_q};
    assign redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_rdcnt_b = {1'b0, redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_rdcnt_o <= $unsigned(redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_rdcnt_a) + $unsigned(redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_rdcnt_b);
        end
    end
    assign redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_rdcnt_q = redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_rdcnt_o[2:0];

    // c_i32_100078(CONSTANT,39)
    assign c_i32_100078_q = $unsigned(32'b00000000000000000000001111101000);

    // redist51_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_inv_pred_x_q_39(DELAY,519)
    dspba_delay_ver #( .width(1), .depth(35), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist51_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_inv_pred_x_q_39 ( .xin(redist50_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_inv_pred_x_q_4_q), .xout(redist51_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_inv_pred_x_q_39_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg18(REG,215)@39 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist45_sync_together91_aunroll_x_in_i_valid_39_q);
        end
    end

    // redist52_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_inv_pred_x_q_53(DELAY,520)
    dspba_delay_ver #( .width(1), .depth(14), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist52_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_inv_pred_x_q_53 ( .xin(redist51_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_inv_pred_x_q_39_q), .xout(redist52_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_inv_pred_x_q_53_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg17(REG,214)@53 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist46_sync_together91_aunroll_x_in_i_valid_53_q);
        end
    end

    // i_llvm_fpga_push_i32_sum_023_push7_if_loop_30_i_llvm_fpga_push_i32_sum_023_push7_if_loop_31_x(FIFODELAY,112)@40
    // in i_valid@54
    // in i_write_pred@54
    // in i_data@55
    // out o_data@43
    assign i_llvm_fpga_push_i32_sum_023_push7_if_loop_30_i_llvm_fpga_push_i32_sum_023_push7_if_loop_31_x_i_stall = ~ (valid_fanout_reg18_q & redist51_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_inv_pred_x_q_39_q);
    assign i_llvm_fpga_push_i32_sum_023_push7_if_loop_30_i_llvm_fpga_push_i32_sum_023_push7_if_loop_31_x_i_valid = valid_fanout_reg17_q & redist52_i_llvm_fpga_push_i1_if_loop_3_b2_next_iter_isreal_push_if_loop_30_inv_pred_x_q_53_q;
    assign i_llvm_fpga_push_i32_sum_023_push7_if_loop_30_i_llvm_fpga_push_i32_sum_023_push7_if_loop_31_x_i_data = i_acl_if_loop_329_q;
    assign i_llvm_fpga_push_i32_sum_023_push7_if_loop_30_i_llvm_fpga_push_i32_sum_023_push7_if_loop_31_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_sum_023_push7_if_loop_30_i_llvm_fpga_push_i32_sum_023_push7_if_loop_31_x_i_valid[0];
    assign i_llvm_fpga_push_i32_sum_023_push7_if_loop_30_i_llvm_fpga_push_i32_sum_023_push7_if_loop_31_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_sum_023_push7_if_loop_30_i_llvm_fpga_push_i32_sum_023_push7_if_loop_31_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_sum_023_push7_if_loop_30_i_llvm_fpga_push_i32_sum_023_push7_if_loop_31_x (
        .i_valid(i_llvm_fpga_push_i32_sum_023_push7_if_loop_30_i_llvm_fpga_push_i32_sum_023_push7_if_loop_31_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_sum_023_push7_if_loop_30_i_llvm_fpga_push_i32_sum_023_push7_if_loop_31_x_i_stall_bitsignaltemp),
        .i_data(i_acl_if_loop_329_q),
        .o_data(i_llvm_fpga_push_i32_sum_023_push7_if_loop_30_i_llvm_fpga_push_i32_sum_023_push7_if_loop_31_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // redist62_i_llvm_fpga_forked_if_loop_3_b2_forked_if_loop_33_out_buffer_out_43(DELAY,530)
    dspba_delay_ver #( .width(1), .depth(38), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist62_i_llvm_fpga_forked_if_loop_3_b2_forked_if_loop_33_out_buffer_out_43 ( .xin(redist61_i_llvm_fpga_forked_if_loop_3_b2_forked_if_loop_33_out_buffer_out_5_q), .xout(redist62_i_llvm_fpga_forked_if_loop_3_b2_forked_if_loop_33_out_buffer_out_43_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x(MUX,101)@43
    assign i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_s = redist62_i_llvm_fpga_forked_if_loop_3_b2_forked_if_loop_33_out_buffer_out_43_q;
    always @(i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_s or i_llvm_fpga_push_i32_sum_023_push7_if_loop_30_i_llvm_fpga_push_i32_sum_023_push7_if_loop_31_x_o_data or c_i32_100078_q)
    begin
        unique case (i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q = i_llvm_fpga_push_i32_sum_023_push7_if_loop_30_i_llvm_fpga_push_i32_sum_023_push7_if_loop_31_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q = c_i32_100078_q;
            default : i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q = 32'b0;
        endcase
    end

    // redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_inputreg0(DELAY,565)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_inputreg0_q <= $unsigned(i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q);
        end
    end

    // redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_wraddr(COUNTER,568)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_wraddr_i <= $unsigned(redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_wraddr_i) + $unsigned(2'd1);
        end
    end
    assign redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_wraddr_q = redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_wraddr_i[1:0];

    // redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_mem(DUALMEM,567)
    assign redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_mem_ia = $unsigned(redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_inputreg0_q);
    assign redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_mem_aa = redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_wraddr_q;
    assign redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_mem_ab = redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_rdcnt_q[1:0];
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
    ) redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_mem_aa),
        .data_a(redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_mem_ab),
        .q_b(redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_mem_iq),
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
    assign redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_mem_q = redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_mem_iq[31:0];

    // redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_outputreg0(DELAY,566)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_outputreg0_q <= $unsigned(redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_mem_q);
        end
    end

    // signX_uid175_i_div_if_loop_328(BITSELECT,174)@49
    assign signX_uid175_i_div_if_loop_328_b = $unsigned(redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_outputreg0_q[31:31]);

    // redist30_signX_uid175_i_div_if_loop_328_b_4(DELAY,498)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist30_signX_uid175_i_div_if_loop_328_b_4_delay_0 <= $unsigned(signX_uid175_i_div_if_loop_328_b);
            redist30_signX_uid175_i_div_if_loop_328_b_4_delay_1 <= redist30_signX_uid175_i_div_if_loop_328_b_4_delay_0;
            redist30_signX_uid175_i_div_if_loop_328_b_4_delay_2 <= redist30_signX_uid175_i_div_if_loop_328_b_4_delay_1;
            redist30_signX_uid175_i_div_if_loop_328_b_4_q <= redist30_signX_uid175_i_div_if_loop_328_b_4_delay_2;
        end
    end

    // resultSign_uid185_i_div_if_loop_328(LOGICAL,184)@53 + 1
    assign resultSign_uid185_i_div_if_loop_328_qi = redist30_signX_uid175_i_div_if_loop_328_b_4_q ^ redist41_xMSB_uid137_i_div_if_loop_328_b_43_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    resultSign_uid185_i_div_if_loop_328_delay ( .xin(resultSign_uid185_i_div_if_loop_328_qi), .xout(resultSign_uid185_i_div_if_loop_328_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // cstSubFinal_uid193_i_div_if_loop_328(BITJOIN,192)@54
    assign cstSubFinal_uid193_i_div_if_loop_328_q = {resultSign_uid185_i_div_if_loop_328_q, VCC_q};

    // cstValOvfneg_uid174_i_div_if_loop_328(CONSTANT,173)
    assign cstValOvfneg_uid174_i_div_if_loop_328_q = $unsigned(32'b10000000000000000000000000000000);

    // cstValOvfPos_uid173_i_div_if_loop_328(CONSTANT,172)
    assign cstValOvfPos_uid173_i_div_if_loop_328_q = $unsigned(32'b01111111111111111111111111111111);

    // cstOvf_uid176_i_div_if_loop_328(MUX,175)@49
    assign cstOvf_uid176_i_div_if_loop_328_s = signX_uid175_i_div_if_loop_328_b;
    always @(cstOvf_uid176_i_div_if_loop_328_s or cstValOvfPos_uid173_i_div_if_loop_328_q or cstValOvfneg_uid174_i_div_if_loop_328_q)
    begin
        unique case (cstOvf_uid176_i_div_if_loop_328_s)
            1'b0 : cstOvf_uid176_i_div_if_loop_328_q = cstValOvfPos_uid173_i_div_if_loop_328_q;
            1'b1 : cstOvf_uid176_i_div_if_loop_328_q = cstValOvfneg_uid174_i_div_if_loop_328_q;
            default : cstOvf_uid176_i_div_if_loop_328_q = 32'b0;
        endcase
    end

    // prodXInvY_uid166_i_div_if_loop_328_bjB3(BITJOIN,374)@43
    assign prodXInvY_uid166_i_div_if_loop_328_bjB3_q = {GND_q, prodXInvY_uid166_i_div_if_loop_328_bs2_merged_bit_select_b};

    // oneInvRes_uid157_i_div_if_loop_328(CONSTANT,156)
    assign oneInvRes_uid157_i_div_if_loop_328_q = $unsigned(33'b100000000000000000000000000000000);

    // redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_offset(CONSTANT,557)
    assign redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_offset_q = $unsigned(2'b10);

    // redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_rdcnt(ADD,558)
    assign redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_rdcnt_a = {1'b0, redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_wraddr_q};
    assign redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_rdcnt_b = {1'b0, redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_rdcnt_o <= $unsigned(redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_rdcnt_a) + $unsigned(redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_rdcnt_b);
        end
    end
    assign redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_rdcnt_q = redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_rdcnt_o[2:0];

    // redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_offset(CONSTANT,538)
    assign redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_offset_q = $unsigned(3'b101);

    // redist10_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_10_rdcnt(ADD,552)
    assign redist10_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_10_rdcnt_a = {1'b0, redist10_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_10_wraddr_q};
    assign redist10_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_10_rdcnt_b = {1'b0, redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_10_rdcnt_o <= $unsigned(redist10_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_10_rdcnt_a) + $unsigned(redist10_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_10_rdcnt_b);
        end
    end
    assign redist10_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_10_rdcnt_q = redist10_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_10_rdcnt_o[3:0];

    // leftShiftStage2Idx3Rng3_uid367_normY_uid144_i_div_if_loop_328(BITSELECT,366)@17
    assign leftShiftStage2Idx3Rng3_uid367_normY_uid144_i_div_if_loop_328_in = leftShiftStage1_uid359_normY_uid144_i_div_if_loop_328_q[28:0];
    assign leftShiftStage2Idx3Rng3_uid367_normY_uid144_i_div_if_loop_328_b = leftShiftStage2Idx3Rng3_uid367_normY_uid144_i_div_if_loop_328_in[28:0];

    // leftShiftStage2Idx3Pad3_uid366_normY_uid144_i_div_if_loop_328(CONSTANT,365)
    assign leftShiftStage2Idx3Pad3_uid366_normY_uid144_i_div_if_loop_328_q = $unsigned(3'b000);

    // leftShiftStage2Idx3_uid368_normY_uid144_i_div_if_loop_328(BITJOIN,367)@17
    assign leftShiftStage2Idx3_uid368_normY_uid144_i_div_if_loop_328_q = {leftShiftStage2Idx3Rng3_uid367_normY_uid144_i_div_if_loop_328_b, leftShiftStage2Idx3Pad3_uid366_normY_uid144_i_div_if_loop_328_q};

    // leftShiftStage2Idx2Rng2_uid364_normY_uid144_i_div_if_loop_328(BITSELECT,363)@17
    assign leftShiftStage2Idx2Rng2_uid364_normY_uid144_i_div_if_loop_328_in = leftShiftStage1_uid359_normY_uid144_i_div_if_loop_328_q[29:0];
    assign leftShiftStage2Idx2Rng2_uid364_normY_uid144_i_div_if_loop_328_b = leftShiftStage2Idx2Rng2_uid364_normY_uid144_i_div_if_loop_328_in[29:0];

    // leftShiftStage2Idx2_uid365_normY_uid144_i_div_if_loop_328(BITJOIN,364)@17
    assign leftShiftStage2Idx2_uid365_normY_uid144_i_div_if_loop_328_q = {leftShiftStage2Idx2Rng2_uid364_normY_uid144_i_div_if_loop_328_b, i_mptr_bitcast_index25_if_loop_30_c_i2_01_x_q};

    // leftShiftStage2Idx1Rng1_uid361_normY_uid144_i_div_if_loop_328(BITSELECT,360)@17
    assign leftShiftStage2Idx1Rng1_uid361_normY_uid144_i_div_if_loop_328_in = leftShiftStage1_uid359_normY_uid144_i_div_if_loop_328_q[30:0];
    assign leftShiftStage2Idx1Rng1_uid361_normY_uid144_i_div_if_loop_328_b = leftShiftStage2Idx1Rng1_uid361_normY_uid144_i_div_if_loop_328_in[30:0];

    // leftShiftStage2Idx1_uid362_normY_uid144_i_div_if_loop_328(BITJOIN,361)@17
    assign leftShiftStage2Idx1_uid362_normY_uid144_i_div_if_loop_328_q = {leftShiftStage2Idx1Rng1_uid361_normY_uid144_i_div_if_loop_328_b, GND_q};

    // leftShiftStage1Idx3Rng12_uid356_normY_uid144_i_div_if_loop_328(BITSELECT,355)@17
    assign leftShiftStage1Idx3Rng12_uid356_normY_uid144_i_div_if_loop_328_in = leftShiftStage0_uid348_normY_uid144_i_div_if_loop_328_q[19:0];
    assign leftShiftStage1Idx3Rng12_uid356_normY_uid144_i_div_if_loop_328_b = leftShiftStage1Idx3Rng12_uid356_normY_uid144_i_div_if_loop_328_in[19:0];

    // rightBottomX_bottomExtension_uid318_pT3_uid285_invPolyEval(CONSTANT,317)
    assign rightBottomX_bottomExtension_uid318_pT3_uid285_invPolyEval_q = $unsigned(12'b000000000000);

    // leftShiftStage1Idx3_uid357_normY_uid144_i_div_if_loop_328(BITJOIN,356)@17
    assign leftShiftStage1Idx3_uid357_normY_uid144_i_div_if_loop_328_q = {leftShiftStage1Idx3Rng12_uid356_normY_uid144_i_div_if_loop_328_b, rightBottomX_bottomExtension_uid318_pT3_uid285_invPolyEval_q};

    // leftShiftStage1Idx2Rng8_uid353_normY_uid144_i_div_if_loop_328(BITSELECT,352)@17
    assign leftShiftStage1Idx2Rng8_uid353_normY_uid144_i_div_if_loop_328_in = leftShiftStage0_uid348_normY_uid144_i_div_if_loop_328_q[23:0];
    assign leftShiftStage1Idx2Rng8_uid353_normY_uid144_i_div_if_loop_328_b = leftShiftStage1Idx2Rng8_uid353_normY_uid144_i_div_if_loop_328_in[23:0];

    // zs_uid233_zCount_uid143_i_div_if_loop_328(CONSTANT,232)
    assign zs_uid233_zCount_uid143_i_div_if_loop_328_q = $unsigned(8'b00000000);

    // leftShiftStage1Idx2_uid354_normY_uid144_i_div_if_loop_328(BITJOIN,353)@17
    assign leftShiftStage1Idx2_uid354_normY_uid144_i_div_if_loop_328_q = {leftShiftStage1Idx2Rng8_uid353_normY_uid144_i_div_if_loop_328_b, zs_uid233_zCount_uid143_i_div_if_loop_328_q};

    // leftShiftStage1Idx1Rng4_uid350_normY_uid144_i_div_if_loop_328(BITSELECT,349)@17
    assign leftShiftStage1Idx1Rng4_uid350_normY_uid144_i_div_if_loop_328_in = leftShiftStage0_uid348_normY_uid144_i_div_if_loop_328_q[27:0];
    assign leftShiftStage1Idx1Rng4_uid350_normY_uid144_i_div_if_loop_328_b = leftShiftStage1Idx1Rng4_uid350_normY_uid144_i_div_if_loop_328_in[27:0];

    // zs_uid239_zCount_uid143_i_div_if_loop_328(CONSTANT,238)
    assign zs_uid239_zCount_uid143_i_div_if_loop_328_q = $unsigned(4'b0000);

    // leftShiftStage1Idx1_uid351_normY_uid144_i_div_if_loop_328(BITJOIN,350)@17
    assign leftShiftStage1Idx1_uid351_normY_uid144_i_div_if_loop_328_q = {leftShiftStage1Idx1Rng4_uid350_normY_uid144_i_div_if_loop_328_b, zs_uid239_zCount_uid143_i_div_if_loop_328_q};

    // leftShiftStage0Idx1Rng16_uid343_normY_uid144_i_div_if_loop_328(BITSELECT,342)@16
    assign leftShiftStage0Idx1Rng16_uid343_normY_uid144_i_div_if_loop_328_in = redist38_yPS_uid142_i_div_if_loop_328_b_5_q[15:0];
    assign leftShiftStage0Idx1Rng16_uid343_normY_uid144_i_div_if_loop_328_b = leftShiftStage0Idx1Rng16_uid343_normY_uid144_i_div_if_loop_328_in[15:0];

    // zs_uid227_zCount_uid143_i_div_if_loop_328(CONSTANT,226)
    assign zs_uid227_zCount_uid143_i_div_if_loop_328_q = $unsigned(16'b0000000000000000);

    // leftShiftStage0Idx1_uid344_normY_uid144_i_div_if_loop_328(BITJOIN,343)@16
    assign leftShiftStage0Idx1_uid344_normY_uid144_i_div_if_loop_328_q = {leftShiftStage0Idx1Rng16_uid343_normY_uid144_i_div_if_loop_328_b, zs_uid227_zCount_uid143_i_div_if_loop_328_q};

    // yPSE_uid139_i_div_if_loop_328(LOGICAL,138)@10 + 1
    assign yPSE_uid139_i_div_if_loop_328_b = $unsigned({{31{xMSB_uid137_i_div_if_loop_328_b[0]}}, xMSB_uid137_i_div_if_loop_328_b});
    assign yPSE_uid139_i_div_if_loop_328_qi = redist55_bgTrunc_i_sub_if_loop_324_sel_x_b_1_q ^ yPSE_uid139_i_div_if_loop_328_b;
    dspba_delay_ver #( .width(32), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    yPSE_uid139_i_div_if_loop_328_delay ( .xin(yPSE_uid139_i_div_if_loop_328_qi), .xout(yPSE_uid139_i_div_if_loop_328_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // yPSEA_uid141_i_div_if_loop_328(ADD,140)@11
    assign yPSEA_uid141_i_div_if_loop_328_a = {1'b0, yPSE_uid139_i_div_if_loop_328_q};
    assign yPSEA_uid141_i_div_if_loop_328_b = {32'b00000000000000000000000000000000, redist39_xMSB_uid137_i_div_if_loop_328_b_1_q};
    assign yPSEA_uid141_i_div_if_loop_328_o = $unsigned(yPSEA_uid141_i_div_if_loop_328_a) + $unsigned(yPSEA_uid141_i_div_if_loop_328_b);
    assign yPSEA_uid141_i_div_if_loop_328_q = yPSEA_uid141_i_div_if_loop_328_o[32:0];

    // yPS_uid142_i_div_if_loop_328(BITSELECT,141)@11
    assign yPS_uid142_i_div_if_loop_328_in = $unsigned(yPSEA_uid141_i_div_if_loop_328_q[31:0]);
    assign yPS_uid142_i_div_if_loop_328_b = $unsigned(yPS_uid142_i_div_if_loop_328_in[31:0]);

    // redist36_yPS_uid142_i_div_if_loop_328_b_1(DELAY,504)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist36_yPS_uid142_i_div_if_loop_328_b_1_q <= $unsigned(yPS_uid142_i_div_if_loop_328_b);
        end
    end

    // redist37_yPS_uid142_i_div_if_loop_328_b_2(DELAY,505)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist37_yPS_uid142_i_div_if_loop_328_b_2_q <= $unsigned(redist36_yPS_uid142_i_div_if_loop_328_b_1_q);
        end
    end

    // redist38_yPS_uid142_i_div_if_loop_328_b_5(DELAY,506)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist38_yPS_uid142_i_div_if_loop_328_b_5_delay_0 <= $unsigned(redist37_yPS_uid142_i_div_if_loop_328_b_2_q);
            redist38_yPS_uid142_i_div_if_loop_328_b_5_delay_1 <= redist38_yPS_uid142_i_div_if_loop_328_b_5_delay_0;
            redist38_yPS_uid142_i_div_if_loop_328_b_5_q <= redist38_yPS_uid142_i_div_if_loop_328_b_5_delay_1;
        end
    end

    // vCount_uid223_zCount_uid143_i_div_if_loop_328(LOGICAL,222)@12 + 1
    assign vCount_uid223_zCount_uid143_i_div_if_loop_328_qi = $unsigned(redist36_yPS_uid142_i_div_if_loop_328_b_1_q == c_i32_076_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    vCount_uid223_zCount_uid143_i_div_if_loop_328_delay ( .xin(vCount_uid223_zCount_uid143_i_div_if_loop_328_qi), .xout(vCount_uid223_zCount_uid143_i_div_if_loop_328_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist24_vCount_uid223_zCount_uid143_i_div_if_loop_328_q_4(DELAY,492)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist24_vCount_uid223_zCount_uid143_i_div_if_loop_328_q_4_delay_0 <= $unsigned(vCount_uid223_zCount_uid143_i_div_if_loop_328_q);
            redist24_vCount_uid223_zCount_uid143_i_div_if_loop_328_q_4_delay_1 <= redist24_vCount_uid223_zCount_uid143_i_div_if_loop_328_q_4_delay_0;
            redist24_vCount_uid223_zCount_uid143_i_div_if_loop_328_q_4_q <= redist24_vCount_uid223_zCount_uid143_i_div_if_loop_328_q_4_delay_1;
        end
    end

    // c_i32_177_recast_x(CONSTANT,91)
    assign c_i32_177_recast_x_q = $unsigned(32'b11111111111111111111111111111111);

    // vStagei_uid226_zCount_uid143_i_div_if_loop_328(MUX,225)@13
    assign vStagei_uid226_zCount_uid143_i_div_if_loop_328_s = vCount_uid223_zCount_uid143_i_div_if_loop_328_q;
    always @(vStagei_uid226_zCount_uid143_i_div_if_loop_328_s or redist37_yPS_uid142_i_div_if_loop_328_b_2_q or c_i32_177_recast_x_q)
    begin
        unique case (vStagei_uid226_zCount_uid143_i_div_if_loop_328_s)
            1'b0 : vStagei_uid226_zCount_uid143_i_div_if_loop_328_q = redist37_yPS_uid142_i_div_if_loop_328_b_2_q;
            1'b1 : vStagei_uid226_zCount_uid143_i_div_if_loop_328_q = c_i32_177_recast_x_q;
            default : vStagei_uid226_zCount_uid143_i_div_if_loop_328_q = 32'b0;
        endcase
    end

    // rVStage_uid228_zCount_uid143_i_div_if_loop_328_merged_bit_select(BITSELECT,461)@13
    assign rVStage_uid228_zCount_uid143_i_div_if_loop_328_merged_bit_select_b = vStagei_uid226_zCount_uid143_i_div_if_loop_328_q[31:16];
    assign rVStage_uid228_zCount_uid143_i_div_if_loop_328_merged_bit_select_c = vStagei_uid226_zCount_uid143_i_div_if_loop_328_q[15:0];

    // vCount_uid229_zCount_uid143_i_div_if_loop_328(LOGICAL,228)@13 + 1
    assign vCount_uid229_zCount_uid143_i_div_if_loop_328_qi = $unsigned(rVStage_uid228_zCount_uid143_i_div_if_loop_328_merged_bit_select_b == zs_uid227_zCount_uid143_i_div_if_loop_328_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    vCount_uid229_zCount_uid143_i_div_if_loop_328_delay ( .xin(vCount_uid229_zCount_uid143_i_div_if_loop_328_qi), .xout(vCount_uid229_zCount_uid143_i_div_if_loop_328_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist23_vCount_uid229_zCount_uid143_i_div_if_loop_328_q_3(DELAY,491)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist23_vCount_uid229_zCount_uid143_i_div_if_loop_328_q_3_delay_0 <= $unsigned(vCount_uid229_zCount_uid143_i_div_if_loop_328_q);
            redist23_vCount_uid229_zCount_uid143_i_div_if_loop_328_q_3_q <= redist23_vCount_uid229_zCount_uid143_i_div_if_loop_328_q_3_delay_0;
        end
    end

    // redist5_rVStage_uid228_zCount_uid143_i_div_if_loop_328_merged_bit_select_c_1(DELAY,473)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_rVStage_uid228_zCount_uid143_i_div_if_loop_328_merged_bit_select_c_1_q <= $unsigned(rVStage_uid228_zCount_uid143_i_div_if_loop_328_merged_bit_select_c);
        end
    end

    // redist4_rVStage_uid228_zCount_uid143_i_div_if_loop_328_merged_bit_select_b_1(DELAY,472)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_rVStage_uid228_zCount_uid143_i_div_if_loop_328_merged_bit_select_b_1_q <= $unsigned(rVStage_uid228_zCount_uid143_i_div_if_loop_328_merged_bit_select_b);
        end
    end

    // vStagei_uid232_zCount_uid143_i_div_if_loop_328(MUX,231)@14
    assign vStagei_uid232_zCount_uid143_i_div_if_loop_328_s = vCount_uid229_zCount_uid143_i_div_if_loop_328_q;
    always @(vStagei_uid232_zCount_uid143_i_div_if_loop_328_s or redist4_rVStage_uid228_zCount_uid143_i_div_if_loop_328_merged_bit_select_b_1_q or redist5_rVStage_uid228_zCount_uid143_i_div_if_loop_328_merged_bit_select_c_1_q)
    begin
        unique case (vStagei_uid232_zCount_uid143_i_div_if_loop_328_s)
            1'b0 : vStagei_uid232_zCount_uid143_i_div_if_loop_328_q = redist4_rVStage_uid228_zCount_uid143_i_div_if_loop_328_merged_bit_select_b_1_q;
            1'b1 : vStagei_uid232_zCount_uid143_i_div_if_loop_328_q = redist5_rVStage_uid228_zCount_uid143_i_div_if_loop_328_merged_bit_select_c_1_q;
            default : vStagei_uid232_zCount_uid143_i_div_if_loop_328_q = 16'b0;
        endcase
    end

    // rVStage_uid234_zCount_uid143_i_div_if_loop_328_merged_bit_select(BITSELECT,462)@14
    assign rVStage_uid234_zCount_uid143_i_div_if_loop_328_merged_bit_select_b = vStagei_uid232_zCount_uid143_i_div_if_loop_328_q[15:8];
    assign rVStage_uid234_zCount_uid143_i_div_if_loop_328_merged_bit_select_c = vStagei_uid232_zCount_uid143_i_div_if_loop_328_q[7:0];

    // vCount_uid235_zCount_uid143_i_div_if_loop_328(LOGICAL,234)@14 + 1
    assign vCount_uid235_zCount_uid143_i_div_if_loop_328_qi = $unsigned(rVStage_uid234_zCount_uid143_i_div_if_loop_328_merged_bit_select_b == zs_uid233_zCount_uid143_i_div_if_loop_328_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    vCount_uid235_zCount_uid143_i_div_if_loop_328_delay ( .xin(vCount_uid235_zCount_uid143_i_div_if_loop_328_qi), .xout(vCount_uid235_zCount_uid143_i_div_if_loop_328_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist22_vCount_uid235_zCount_uid143_i_div_if_loop_328_q_2(DELAY,490)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist22_vCount_uid235_zCount_uid143_i_div_if_loop_328_q_2_q <= $unsigned(vCount_uid235_zCount_uid143_i_div_if_loop_328_q);
        end
    end

    // redist3_rVStage_uid234_zCount_uid143_i_div_if_loop_328_merged_bit_select_c_1(DELAY,471)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_rVStage_uid234_zCount_uid143_i_div_if_loop_328_merged_bit_select_c_1_q <= $unsigned(rVStage_uid234_zCount_uid143_i_div_if_loop_328_merged_bit_select_c);
        end
    end

    // redist2_rVStage_uid234_zCount_uid143_i_div_if_loop_328_merged_bit_select_b_1(DELAY,470)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_rVStage_uid234_zCount_uid143_i_div_if_loop_328_merged_bit_select_b_1_q <= $unsigned(rVStage_uid234_zCount_uid143_i_div_if_loop_328_merged_bit_select_b);
        end
    end

    // vStagei_uid238_zCount_uid143_i_div_if_loop_328(MUX,237)@15
    assign vStagei_uid238_zCount_uid143_i_div_if_loop_328_s = vCount_uid235_zCount_uid143_i_div_if_loop_328_q;
    always @(vStagei_uid238_zCount_uid143_i_div_if_loop_328_s or redist2_rVStage_uid234_zCount_uid143_i_div_if_loop_328_merged_bit_select_b_1_q or redist3_rVStage_uid234_zCount_uid143_i_div_if_loop_328_merged_bit_select_c_1_q)
    begin
        unique case (vStagei_uid238_zCount_uid143_i_div_if_loop_328_s)
            1'b0 : vStagei_uid238_zCount_uid143_i_div_if_loop_328_q = redist2_rVStage_uid234_zCount_uid143_i_div_if_loop_328_merged_bit_select_b_1_q;
            1'b1 : vStagei_uid238_zCount_uid143_i_div_if_loop_328_q = redist3_rVStage_uid234_zCount_uid143_i_div_if_loop_328_merged_bit_select_c_1_q;
            default : vStagei_uid238_zCount_uid143_i_div_if_loop_328_q = 8'b0;
        endcase
    end

    // rVStage_uid240_zCount_uid143_i_div_if_loop_328_merged_bit_select(BITSELECT,463)@15
    assign rVStage_uid240_zCount_uid143_i_div_if_loop_328_merged_bit_select_b = vStagei_uid238_zCount_uid143_i_div_if_loop_328_q[7:4];
    assign rVStage_uid240_zCount_uid143_i_div_if_loop_328_merged_bit_select_c = vStagei_uid238_zCount_uid143_i_div_if_loop_328_q[3:0];

    // vCount_uid241_zCount_uid143_i_div_if_loop_328(LOGICAL,240)@15
    assign vCount_uid241_zCount_uid143_i_div_if_loop_328_q = $unsigned(rVStage_uid240_zCount_uid143_i_div_if_loop_328_merged_bit_select_b == zs_uid239_zCount_uid143_i_div_if_loop_328_q ? 1'b1 : 1'b0);

    // redist21_vCount_uid241_zCount_uid143_i_div_if_loop_328_q_1(DELAY,489)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist21_vCount_uid241_zCount_uid143_i_div_if_loop_328_q_1_q <= $unsigned(vCount_uid241_zCount_uid143_i_div_if_loop_328_q);
        end
    end

    // vStagei_uid244_zCount_uid143_i_div_if_loop_328(MUX,243)@15 + 1
    assign vStagei_uid244_zCount_uid143_i_div_if_loop_328_s = vCount_uid241_zCount_uid143_i_div_if_loop_328_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (vStagei_uid244_zCount_uid143_i_div_if_loop_328_s)
                1'b0 : vStagei_uid244_zCount_uid143_i_div_if_loop_328_q <= rVStage_uid240_zCount_uid143_i_div_if_loop_328_merged_bit_select_b;
                1'b1 : vStagei_uid244_zCount_uid143_i_div_if_loop_328_q <= rVStage_uid240_zCount_uid143_i_div_if_loop_328_merged_bit_select_c;
                default : vStagei_uid244_zCount_uid143_i_div_if_loop_328_q <= 4'b0;
            endcase
        end
    end

    // rVStage_uid246_zCount_uid143_i_div_if_loop_328_merged_bit_select(BITSELECT,464)@16
    assign rVStage_uid246_zCount_uid143_i_div_if_loop_328_merged_bit_select_b = vStagei_uid244_zCount_uid143_i_div_if_loop_328_q[3:2];
    assign rVStage_uid246_zCount_uid143_i_div_if_loop_328_merged_bit_select_c = vStagei_uid244_zCount_uid143_i_div_if_loop_328_q[1:0];

    // vCount_uid247_zCount_uid143_i_div_if_loop_328(LOGICAL,246)@16
    assign vCount_uid247_zCount_uid143_i_div_if_loop_328_q = $unsigned(rVStage_uid246_zCount_uid143_i_div_if_loop_328_merged_bit_select_b == i_mptr_bitcast_index25_if_loop_30_c_i2_01_x_q ? 1'b1 : 1'b0);

    // vStagei_uid250_zCount_uid143_i_div_if_loop_328(MUX,249)@16
    assign vStagei_uid250_zCount_uid143_i_div_if_loop_328_s = vCount_uid247_zCount_uid143_i_div_if_loop_328_q;
    always @(vStagei_uid250_zCount_uid143_i_div_if_loop_328_s or rVStage_uid246_zCount_uid143_i_div_if_loop_328_merged_bit_select_b or rVStage_uid246_zCount_uid143_i_div_if_loop_328_merged_bit_select_c)
    begin
        unique case (vStagei_uid250_zCount_uid143_i_div_if_loop_328_s)
            1'b0 : vStagei_uid250_zCount_uid143_i_div_if_loop_328_q = rVStage_uid246_zCount_uid143_i_div_if_loop_328_merged_bit_select_b;
            1'b1 : vStagei_uid250_zCount_uid143_i_div_if_loop_328_q = rVStage_uid246_zCount_uid143_i_div_if_loop_328_merged_bit_select_c;
            default : vStagei_uid250_zCount_uid143_i_div_if_loop_328_q = 2'b0;
        endcase
    end

    // rVStage_uid252_zCount_uid143_i_div_if_loop_328(BITSELECT,251)@16
    assign rVStage_uid252_zCount_uid143_i_div_if_loop_328_b = vStagei_uid250_zCount_uid143_i_div_if_loop_328_q[1:1];

    // vCount_uid253_zCount_uid143_i_div_if_loop_328(LOGICAL,252)@16
    assign vCount_uid253_zCount_uid143_i_div_if_loop_328_q = $unsigned(rVStage_uid252_zCount_uid143_i_div_if_loop_328_b == GND_q ? 1'b1 : 1'b0);

    // r_uid254_zCount_uid143_i_div_if_loop_328(BITJOIN,253)@16
    assign r_uid254_zCount_uid143_i_div_if_loop_328_q = {redist24_vCount_uid223_zCount_uid143_i_div_if_loop_328_q_4_q, redist23_vCount_uid229_zCount_uid143_i_div_if_loop_328_q_3_q, redist22_vCount_uid235_zCount_uid143_i_div_if_loop_328_q_2_q, redist21_vCount_uid241_zCount_uid143_i_div_if_loop_328_q_1_q, vCount_uid247_zCount_uid143_i_div_if_loop_328_q, vCount_uid253_zCount_uid143_i_div_if_loop_328_q};

    // leftShiftStageSel0Dto4_uid347_normY_uid144_i_div_if_loop_328_merged_bit_select(BITSELECT,465)@16
    assign leftShiftStageSel0Dto4_uid347_normY_uid144_i_div_if_loop_328_merged_bit_select_b = r_uid254_zCount_uid143_i_div_if_loop_328_q[5:4];
    assign leftShiftStageSel0Dto4_uid347_normY_uid144_i_div_if_loop_328_merged_bit_select_c = r_uid254_zCount_uid143_i_div_if_loop_328_q[3:2];
    assign leftShiftStageSel0Dto4_uid347_normY_uid144_i_div_if_loop_328_merged_bit_select_d = r_uid254_zCount_uid143_i_div_if_loop_328_q[1:0];

    // leftShiftStage0_uid348_normY_uid144_i_div_if_loop_328(MUX,347)@16 + 1
    assign leftShiftStage0_uid348_normY_uid144_i_div_if_loop_328_s = leftShiftStageSel0Dto4_uid347_normY_uid144_i_div_if_loop_328_merged_bit_select_b;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (leftShiftStage0_uid348_normY_uid144_i_div_if_loop_328_s)
                2'b00 : leftShiftStage0_uid348_normY_uid144_i_div_if_loop_328_q <= redist38_yPS_uid142_i_div_if_loop_328_b_5_q;
                2'b01 : leftShiftStage0_uid348_normY_uid144_i_div_if_loop_328_q <= leftShiftStage0Idx1_uid344_normY_uid144_i_div_if_loop_328_q;
                2'b10 : leftShiftStage0_uid348_normY_uid144_i_div_if_loop_328_q <= c_i32_076_q;
                2'b11 : leftShiftStage0_uid348_normY_uid144_i_div_if_loop_328_q <= c_i32_076_q;
                default : leftShiftStage0_uid348_normY_uid144_i_div_if_loop_328_q <= 32'b0;
            endcase
        end
    end

    // redist0_leftShiftStageSel0Dto4_uid347_normY_uid144_i_div_if_loop_328_merged_bit_select_c_1(DELAY,468)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_leftShiftStageSel0Dto4_uid347_normY_uid144_i_div_if_loop_328_merged_bit_select_c_1_q <= $unsigned(leftShiftStageSel0Dto4_uid347_normY_uid144_i_div_if_loop_328_merged_bit_select_c);
        end
    end

    // leftShiftStage1_uid359_normY_uid144_i_div_if_loop_328(MUX,358)@17
    assign leftShiftStage1_uid359_normY_uid144_i_div_if_loop_328_s = redist0_leftShiftStageSel0Dto4_uid347_normY_uid144_i_div_if_loop_328_merged_bit_select_c_1_q;
    always @(leftShiftStage1_uid359_normY_uid144_i_div_if_loop_328_s or leftShiftStage0_uid348_normY_uid144_i_div_if_loop_328_q or leftShiftStage1Idx1_uid351_normY_uid144_i_div_if_loop_328_q or leftShiftStage1Idx2_uid354_normY_uid144_i_div_if_loop_328_q or leftShiftStage1Idx3_uid357_normY_uid144_i_div_if_loop_328_q)
    begin
        unique case (leftShiftStage1_uid359_normY_uid144_i_div_if_loop_328_s)
            2'b00 : leftShiftStage1_uid359_normY_uid144_i_div_if_loop_328_q = leftShiftStage0_uid348_normY_uid144_i_div_if_loop_328_q;
            2'b01 : leftShiftStage1_uid359_normY_uid144_i_div_if_loop_328_q = leftShiftStage1Idx1_uid351_normY_uid144_i_div_if_loop_328_q;
            2'b10 : leftShiftStage1_uid359_normY_uid144_i_div_if_loop_328_q = leftShiftStage1Idx2_uid354_normY_uid144_i_div_if_loop_328_q;
            2'b11 : leftShiftStage1_uid359_normY_uid144_i_div_if_loop_328_q = leftShiftStage1Idx3_uid357_normY_uid144_i_div_if_loop_328_q;
            default : leftShiftStage1_uid359_normY_uid144_i_div_if_loop_328_q = 32'b0;
        endcase
    end

    // redist1_leftShiftStageSel0Dto4_uid347_normY_uid144_i_div_if_loop_328_merged_bit_select_d_1(DELAY,469)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_leftShiftStageSel0Dto4_uid347_normY_uid144_i_div_if_loop_328_merged_bit_select_d_1_q <= $unsigned(leftShiftStageSel0Dto4_uid347_normY_uid144_i_div_if_loop_328_merged_bit_select_d);
        end
    end

    // leftShiftStage2_uid370_normY_uid144_i_div_if_loop_328(MUX,369)@17
    assign leftShiftStage2_uid370_normY_uid144_i_div_if_loop_328_s = redist1_leftShiftStageSel0Dto4_uid347_normY_uid144_i_div_if_loop_328_merged_bit_select_d_1_q;
    always @(leftShiftStage2_uid370_normY_uid144_i_div_if_loop_328_s or leftShiftStage1_uid359_normY_uid144_i_div_if_loop_328_q or leftShiftStage2Idx1_uid362_normY_uid144_i_div_if_loop_328_q or leftShiftStage2Idx2_uid365_normY_uid144_i_div_if_loop_328_q or leftShiftStage2Idx3_uid368_normY_uid144_i_div_if_loop_328_q)
    begin
        unique case (leftShiftStage2_uid370_normY_uid144_i_div_if_loop_328_s)
            2'b00 : leftShiftStage2_uid370_normY_uid144_i_div_if_loop_328_q = leftShiftStage1_uid359_normY_uid144_i_div_if_loop_328_q;
            2'b01 : leftShiftStage2_uid370_normY_uid144_i_div_if_loop_328_q = leftShiftStage2Idx1_uid362_normY_uid144_i_div_if_loop_328_q;
            2'b10 : leftShiftStage2_uid370_normY_uid144_i_div_if_loop_328_q = leftShiftStage2Idx2_uid365_normY_uid144_i_div_if_loop_328_q;
            2'b11 : leftShiftStage2_uid370_normY_uid144_i_div_if_loop_328_q = leftShiftStage2Idx3_uid368_normY_uid144_i_div_if_loop_328_q;
            default : leftShiftStage2_uid370_normY_uid144_i_div_if_loop_328_q = 32'b0;
        endcase
    end

    // normYNoLeadOne_uid145_i_div_if_loop_328(BITSELECT,144)@17
    assign normYNoLeadOne_uid145_i_div_if_loop_328_in = leftShiftStage2_uid370_normY_uid144_i_div_if_loop_328_q[30:0];
    assign normYNoLeadOne_uid145_i_div_if_loop_328_b = normYNoLeadOne_uid145_i_div_if_loop_328_in[30:0];

    // yAddr_uid153_i_div_if_loop_328_merged_bit_select(BITSELECT,457)@17
    assign yAddr_uid153_i_div_if_loop_328_merged_bit_select_b = normYNoLeadOne_uid145_i_div_if_loop_328_b[30:23];
    assign yAddr_uid153_i_div_if_loop_328_merged_bit_select_c = normYNoLeadOne_uid145_i_div_if_loop_328_b[22:0];

    // redist9_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_3(DELAY,477)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_3_delay_0 <= $unsigned(yAddr_uid153_i_div_if_loop_328_merged_bit_select_c);
            redist9_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_3_delay_1 <= redist9_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_3_delay_0;
            redist9_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_3_q <= redist9_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_3_delay_1;
        end
    end

    // redist10_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_10_wraddr(COUNTER,550)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_10_wraddr_i <= $unsigned(redist10_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_10_wraddr_i) + $unsigned(3'd1);
        end
    end
    assign redist10_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_10_wraddr_q = redist10_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_10_wraddr_i[2:0];

    // redist10_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_10_mem(DUALMEM,549)
    assign redist10_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_10_mem_ia = $unsigned(redist9_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_3_q);
    assign redist10_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_10_mem_aa = redist10_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_10_wraddr_q;
    assign redist10_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_10_mem_ab = redist10_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_10_rdcnt_q[2:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(23),
        .widthad_a(3),
        .numwords_a(8),
        .width_b(23),
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
    ) redist10_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_10_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist10_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_10_mem_aa),
        .data_a(redist10_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_10_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist10_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_10_mem_ab),
        .q_b(redist10_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_10_mem_iq),
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
    assign redist10_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_10_mem_q = redist10_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_10_mem_iq[22:0];

    // redist10_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_10_outputreg0(DELAY,548)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_10_outputreg0_q <= $unsigned(redist10_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_10_mem_q);
        end
    end

    // redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_inputreg0(DELAY,553)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_inputreg0_q <= $unsigned(redist10_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_10_outputreg0_q);
        end
    end

    // redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_wraddr(COUNTER,556)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_wraddr_i <= $unsigned(redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_wraddr_i) + $unsigned(2'd1);
        end
    end
    assign redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_wraddr_q = redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_wraddr_i[1:0];

    // redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_mem(DUALMEM,555)
    assign redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_mem_ia = $unsigned(redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_inputreg0_q);
    assign redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_mem_aa = redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_wraddr_q;
    assign redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_mem_ab = redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_rdcnt_q[1:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(23),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(23),
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
    ) redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_mem_aa),
        .data_a(redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_mem_ab),
        .q_b(redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_mem_iq),
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
    assign redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_mem_q = redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_mem_iq[22:0];

    // redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_outputreg0(DELAY,554)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_outputreg0_q <= $unsigned(redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_mem_q);
        end
    end

    // nx_mergedSignalTM_uid309_pT3_uid285_invPolyEval(BITJOIN,308)@34
    assign nx_mergedSignalTM_uid309_pT3_uid285_invPolyEval_q = {GND_q, redist11_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_17_outputreg0_q};

    // topRangeX_uid311_pT3_uid285_invPolyEval_merged_bit_select(BITSELECT,467)@34
    assign topRangeX_uid311_pT3_uid285_invPolyEval_merged_bit_select_b = $unsigned(nx_mergedSignalTM_uid309_pT3_uid285_invPolyEval_q[23:6]);
    assign topRangeX_uid311_pT3_uid285_invPolyEval_merged_bit_select_c = $unsigned(nx_mergedSignalTM_uid309_pT3_uid285_invPolyEval_q[5:0]);

    // aboveLeftY_bottomExtension_uid314_pT3_uid285_invPolyEval(CONSTANT,313)
    assign aboveLeftY_bottomExtension_uid314_pT3_uid285_invPolyEval_q = $unsigned(5'b00000);

    // aboveLeftY_mergedSignalTM_uid316_pT3_uid285_invPolyEval(BITJOIN,315)@34
    assign aboveLeftY_mergedSignalTM_uid316_pT3_uid285_invPolyEval_q = {topRangeY_uid312_pT3_uid285_invPolyEval_merged_bit_select_c, aboveLeftY_bottomExtension_uid314_pT3_uid285_invPolyEval_q};

    // memoryC3_uid265_invTabGen_lutmem(DUALMEM,446)@17 + 2
    // in j@20000000
    assign memoryC3_uid265_invTabGen_lutmem_aa = yAddr_uid153_i_div_if_loop_328_merged_bit_select_b;
    altera_syncram #(
        .ram_block_type("M20K"),
        .operation_mode("ROM"),
        .width_a(14),
        .widthad_a(8),
        .numwords_a(256),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_sclr_a("NONE"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("if_loop_3_i_sfc_logic_s_c0_in_for_body_s0000265_invTabGen_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Stratix 10")
    ) memoryC3_uid265_invTabGen_lutmem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(memoryC3_uid265_invTabGen_lutmem_aa),
        .q_a(memoryC3_uid265_invTabGen_lutmem_ir),
        .wren_a(),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_a(),
        .data_b(),
        .address_b(),
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
        .q_b(),
        .eccstatus()
    );
    assign memoryC3_uid265_invTabGen_lutmem_r = memoryC3_uid265_invTabGen_lutmem_ir[13:0];

    // redist13_memoryC3_uid265_invTabGen_lutmem_r_1(DELAY,481)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_memoryC3_uid265_invTabGen_lutmem_r_1_q <= $unsigned(memoryC3_uid265_invTabGen_lutmem_r);
        end
    end

    // yT1_uid272_invPolyEval(BITSELECT,271)@20
    assign yT1_uid272_invPolyEval_b = redist9_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_3_q[22:9];

    // prodXY_uid291_pT1_uid273_invPolyEval_cma(CHAINMULTADD,447)@20 + 5
    // out q@26
    assign prodXY_uid291_pT1_uid273_invPolyEval_cma_reset = ~ (resetn);
    assign prodXY_uid291_pT1_uid273_invPolyEval_cma_ena0 = 1'b1;
    assign prodXY_uid291_pT1_uid273_invPolyEval_cma_ena1 = prodXY_uid291_pT1_uid273_invPolyEval_cma_ena0;
    assign prodXY_uid291_pT1_uid273_invPolyEval_cma_ena2 = prodXY_uid291_pT1_uid273_invPolyEval_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            prodXY_uid291_pT1_uid273_invPolyEval_cma_ah[0] <= yT1_uid272_invPolyEval_b;
            prodXY_uid291_pT1_uid273_invPolyEval_cma_ch[0] <= redist13_memoryC3_uid265_invTabGen_lutmem_r_1_q;
        end
    end

    assign prodXY_uid291_pT1_uid273_invPolyEval_cma_a0 = prodXY_uid291_pT1_uid273_invPolyEval_cma_ah[0];
    assign prodXY_uid291_pT1_uid273_invPolyEval_cma_c0 = $unsigned(prodXY_uid291_pT1_uid273_invPolyEval_cma_ch[0]);
    fourteennm_mac #(
        .operation_mode("m18x18_full"),
        .clear_type("none"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .ax_clock("0"),
        .ax_width(14),
        .signed_may("false"),
        .signed_max("true"),
        .input_pipeline_clock("2"),
        .second_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(28)
    ) prodXY_uid291_pT1_uid273_invPolyEval_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ prodXY_uid291_pT1_uid273_invPolyEval_cma_ena2, prodXY_uid291_pT1_uid273_invPolyEval_cma_ena1, prodXY_uid291_pT1_uid273_invPolyEval_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(prodXY_uid291_pT1_uid273_invPolyEval_cma_a0),
        .ax(prodXY_uid291_pT1_uid273_invPolyEval_cma_c0),
        .resulta(prodXY_uid291_pT1_uid273_invPolyEval_cma_s0),
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
    dspba_delay_ver #( .width(28), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXY_uid291_pT1_uid273_invPolyEval_cma_delay ( .xin(prodXY_uid291_pT1_uid273_invPolyEval_cma_s0), .xout(prodXY_uid291_pT1_uid273_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXY_uid291_pT1_uid273_invPolyEval_cma_q = $unsigned(prodXY_uid291_pT1_uid273_invPolyEval_cma_qq[27:0]);

    // osig_uid292_pT1_uid273_invPolyEval(BITSELECT,291)@26
    assign osig_uid292_pT1_uid273_invPolyEval_b = $unsigned(prodXY_uid291_pT1_uid273_invPolyEval_cma_q[27:14]);

    // highBBits_uid275_invPolyEval(BITSELECT,274)@26
    assign highBBits_uid275_invPolyEval_b = $unsigned(osig_uid292_pT1_uid273_invPolyEval_b[13:1]);

    // redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_rdcnt(ADD,539)
    assign redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_rdcnt_a = {1'b0, redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_wraddr_q};
    assign redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_rdcnt_b = {1'b0, redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_rdcnt_o <= $unsigned(redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_rdcnt_a) + $unsigned(redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_rdcnt_b);
        end
    end
    assign redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_rdcnt_q = redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_rdcnt_o[3:0];

    // redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_wraddr(COUNTER,537)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_wraddr_i <= $unsigned(redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_wraddr_i) + $unsigned(3'd1);
        end
    end
    assign redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_wraddr_q = redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_wraddr_i[2:0];

    // redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_mem(DUALMEM,536)
    assign redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_mem_ia = $unsigned(yAddr_uid153_i_div_if_loop_328_merged_bit_select_b);
    assign redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_mem_aa = redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_wraddr_q;
    assign redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_mem_ab = redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_rdcnt_q[2:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(8),
        .widthad_a(3),
        .numwords_a(8),
        .width_b(8),
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
    ) redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_mem_aa),
        .data_a(redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_mem_ab),
        .q_b(redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_mem_iq),
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
    assign redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_mem_q = redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_mem_iq[7:0];

    // redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_outputreg0(DELAY,535)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_outputreg0_q <= $unsigned(redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_mem_q);
        end
    end

    // memoryC2_uid262_invTabGen_lutmem(DUALMEM,445)@24 + 2
    // in j@20000000
    assign memoryC2_uid262_invTabGen_lutmem_aa = redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_outputreg0_q;
    altera_syncram #(
        .ram_block_type("M20K"),
        .operation_mode("ROM"),
        .width_a(21),
        .widthad_a(8),
        .numwords_a(256),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_sclr_a("NONE"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("if_loop_3_i_sfc_logic_s_c0_in_for_body_s0000262_invTabGen_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Stratix 10")
    ) memoryC2_uid262_invTabGen_lutmem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(memoryC2_uid262_invTabGen_lutmem_aa),
        .q_a(memoryC2_uid262_invTabGen_lutmem_ir),
        .wren_a(),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_a(),
        .data_b(),
        .address_b(),
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
        .q_b(),
        .eccstatus()
    );
    assign memoryC2_uid262_invTabGen_lutmem_r = memoryC2_uid262_invTabGen_lutmem_ir[20:0];

    // s1sumAHighB_uid276_invPolyEval(ADD,275)@26 + 1
    assign s1sumAHighB_uid276_invPolyEval_a = $unsigned({{1{memoryC2_uid262_invTabGen_lutmem_r[20]}}, memoryC2_uid262_invTabGen_lutmem_r});
    assign s1sumAHighB_uid276_invPolyEval_b = $unsigned({{9{highBBits_uid275_invPolyEval_b[12]}}, highBBits_uid275_invPolyEval_b});
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            s1sumAHighB_uid276_invPolyEval_o <= $unsigned($signed(s1sumAHighB_uid276_invPolyEval_a) + $signed(s1sumAHighB_uid276_invPolyEval_b));
        end
    end
    assign s1sumAHighB_uid276_invPolyEval_q = s1sumAHighB_uid276_invPolyEval_o[21:0];

    // lowRangeB_uid274_invPolyEval(BITSELECT,273)@26
    assign lowRangeB_uid274_invPolyEval_in = osig_uid292_pT1_uid273_invPolyEval_b[0:0];
    assign lowRangeB_uid274_invPolyEval_b = lowRangeB_uid274_invPolyEval_in[0:0];

    // redist19_lowRangeB_uid274_invPolyEval_b_1(DELAY,487)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist19_lowRangeB_uid274_invPolyEval_b_1_q <= $unsigned(lowRangeB_uid274_invPolyEval_b);
        end
    end

    // s1_uid277_invPolyEval(BITJOIN,276)@27
    assign s1_uid277_invPolyEval_q = {s1sumAHighB_uid276_invPolyEval_q, redist19_lowRangeB_uid274_invPolyEval_b_1_q};

    // yT2_uid278_invPolyEval(BITSELECT,277)@27
    assign yT2_uid278_invPolyEval_b = redist10_yAddr_uid153_i_div_if_loop_328_merged_bit_select_c_10_outputreg0_q[22:2];

    // prodXY_uid294_pT2_uid279_invPolyEval_cma(CHAINMULTADD,448)@27 + 5
    // out q@33
    assign prodXY_uid294_pT2_uid279_invPolyEval_cma_reset = ~ (resetn);
    assign prodXY_uid294_pT2_uid279_invPolyEval_cma_ena0 = 1'b1;
    assign prodXY_uid294_pT2_uid279_invPolyEval_cma_ena1 = prodXY_uid294_pT2_uid279_invPolyEval_cma_ena0;
    assign prodXY_uid294_pT2_uid279_invPolyEval_cma_ena2 = prodXY_uid294_pT2_uid279_invPolyEval_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            prodXY_uid294_pT2_uid279_invPolyEval_cma_ah[0] <= yT2_uid278_invPolyEval_b;
            prodXY_uid294_pT2_uid279_invPolyEval_cma_ch[0] <= s1_uid277_invPolyEval_q;
        end
    end

    assign prodXY_uid294_pT2_uid279_invPolyEval_cma_a0 = prodXY_uid294_pT2_uid279_invPolyEval_cma_ah[0];
    assign prodXY_uid294_pT2_uid279_invPolyEval_cma_c0 = $unsigned(prodXY_uid294_pT2_uid279_invPolyEval_cma_ch[0]);
    fourteennm_mac #(
        .operation_mode("m27x27"),
        .clear_type("none"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(21),
        .ax_clock("0"),
        .ax_width(23),
        .signed_may("false"),
        .signed_max("true"),
        .input_pipeline_clock("2"),
        .second_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(44)
    ) prodXY_uid294_pT2_uid279_invPolyEval_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ prodXY_uid294_pT2_uid279_invPolyEval_cma_ena2, prodXY_uid294_pT2_uid279_invPolyEval_cma_ena1, prodXY_uid294_pT2_uid279_invPolyEval_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(prodXY_uid294_pT2_uid279_invPolyEval_cma_a0),
        .ax(prodXY_uid294_pT2_uid279_invPolyEval_cma_c0),
        .resulta(prodXY_uid294_pT2_uid279_invPolyEval_cma_s0),
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
    dspba_delay_ver #( .width(44), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXY_uid294_pT2_uid279_invPolyEval_cma_delay ( .xin(prodXY_uid294_pT2_uid279_invPolyEval_cma_s0), .xout(prodXY_uid294_pT2_uid279_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXY_uid294_pT2_uid279_invPolyEval_cma_q = $unsigned(prodXY_uid294_pT2_uid279_invPolyEval_cma_qq[43:0]);

    // osig_uid295_pT2_uid279_invPolyEval(BITSELECT,294)@33
    assign osig_uid295_pT2_uid279_invPolyEval_b = $unsigned(prodXY_uid294_pT2_uid279_invPolyEval_cma_q[43:21]);

    // highBBits_uid281_invPolyEval(BITSELECT,280)@33
    assign highBBits_uid281_invPolyEval_b = $unsigned(osig_uid295_pT2_uid279_invPolyEval_b[22:1]);

    // redist7_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_14_inputreg0(DELAY,540)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_14_inputreg0_q <= $unsigned(redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_outputreg0_q);
        end
    end

    // redist7_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_14(DELAY,475)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_14_delay_0 <= $unsigned(redist7_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_14_inputreg0_q);
            redist7_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_14_delay_1 <= redist7_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_14_delay_0;
            redist7_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_14_delay_2 <= redist7_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_14_delay_1;
            redist7_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_14_delay_3 <= redist7_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_14_delay_2;
            redist7_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_14_q <= redist7_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_14_delay_3;
        end
    end

    // redist7_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_14_outputreg0(DELAY,541)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_14_outputreg0_q <= $unsigned(redist7_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_14_q);
        end
    end

    // memoryC1_uid259_invTabGen_lutmem(DUALMEM,444)@31 + 2
    // in j@20000000
    assign memoryC1_uid259_invTabGen_lutmem_aa = redist7_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_14_outputreg0_q;
    altera_syncram #(
        .ram_block_type("M20K"),
        .operation_mode("ROM"),
        .width_a(29),
        .widthad_a(8),
        .numwords_a(256),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_sclr_a("NONE"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("if_loop_3_i_sfc_logic_s_c0_in_for_body_s0000259_invTabGen_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Stratix 10")
    ) memoryC1_uid259_invTabGen_lutmem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(memoryC1_uid259_invTabGen_lutmem_aa),
        .q_a(memoryC1_uid259_invTabGen_lutmem_ir),
        .wren_a(),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_a(),
        .data_b(),
        .address_b(),
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
        .q_b(),
        .eccstatus()
    );
    assign memoryC1_uid259_invTabGen_lutmem_r = memoryC1_uid259_invTabGen_lutmem_ir[28:0];

    // s2sumAHighB_uid282_invPolyEval(ADD,281)@33 + 1
    assign s2sumAHighB_uid282_invPolyEval_a = $unsigned({{1{memoryC1_uid259_invTabGen_lutmem_r[28]}}, memoryC1_uid259_invTabGen_lutmem_r});
    assign s2sumAHighB_uid282_invPolyEval_b = $unsigned({{8{highBBits_uid281_invPolyEval_b[21]}}, highBBits_uid281_invPolyEval_b});
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            s2sumAHighB_uid282_invPolyEval_o <= $unsigned($signed(s2sumAHighB_uid282_invPolyEval_a) + $signed(s2sumAHighB_uid282_invPolyEval_b));
        end
    end
    assign s2sumAHighB_uid282_invPolyEval_q = s2sumAHighB_uid282_invPolyEval_o[29:0];

    // lowRangeB_uid280_invPolyEval(BITSELECT,279)@33
    assign lowRangeB_uid280_invPolyEval_in = osig_uid295_pT2_uid279_invPolyEval_b[0:0];
    assign lowRangeB_uid280_invPolyEval_b = lowRangeB_uid280_invPolyEval_in[0:0];

    // redist18_lowRangeB_uid280_invPolyEval_b_1(DELAY,486)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist18_lowRangeB_uid280_invPolyEval_b_1_q <= $unsigned(lowRangeB_uid280_invPolyEval_b);
        end
    end

    // s2_uid283_invPolyEval(BITJOIN,282)@34
    assign s2_uid283_invPolyEval_q = {s2sumAHighB_uid282_invPolyEval_q, redist18_lowRangeB_uid280_invPolyEval_b_1_q};

    // topRangeY_uid312_pT3_uid285_invPolyEval_merged_bit_select(BITSELECT,466)@34
    assign topRangeY_uid312_pT3_uid285_invPolyEval_merged_bit_select_b = $unsigned(s2_uid283_invPolyEval_q[30:13]);
    assign topRangeY_uid312_pT3_uid285_invPolyEval_merged_bit_select_c = $unsigned(s2_uid283_invPolyEval_q[12:0]);

    // rightBottomX_mergedSignalTM_uid320_pT3_uid285_invPolyEval(BITJOIN,319)@34
    assign rightBottomX_mergedSignalTM_uid320_pT3_uid285_invPolyEval_q = {topRangeX_uid311_pT3_uid285_invPolyEval_merged_bit_select_c, rightBottomX_bottomExtension_uid318_pT3_uid285_invPolyEval_q};

    // multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma(CHAINMULTADD,454)@34 + 5
    // out q@40
    assign multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_reset = ~ (resetn);
    assign multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_ena0 = 1'b1;
    assign multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_ena1 = multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_ena0;
    assign multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_ena2 = multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_ah[0] <= rightBottomX_mergedSignalTM_uid320_pT3_uid285_invPolyEval_q;
            multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_ah[1] <= aboveLeftY_mergedSignalTM_uid316_pT3_uid285_invPolyEval_q;
            multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_ch[0] <= topRangeY_uid312_pT3_uid285_invPolyEval_merged_bit_select_b;
            multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_ch[1] <= topRangeX_uid311_pT3_uid285_invPolyEval_merged_bit_select_b;
        end
    end

    assign multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_a0 = multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_ah[0];
    assign multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_c0 = $unsigned(multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_ch[0]);
    assign multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_a1 = multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_ah[1];
    assign multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_c1 = $unsigned(multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_ch[1]);
    fourteennm_mac #(
        .operation_mode("m18x18_sumof2"),
        .clear_type("none"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .by_clock("0"),
        .by_width(18),
        .ax_clock("0"),
        .bx_clock("0"),
        .ax_width(18),
        .bx_width(18),
        .signed_may("false"),
        .signed_mby("false"),
        .signed_max("true"),
        .signed_mbx("true"),
        .input_pipeline_clock("2"),
        .second_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(37)
    ) multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_ena2, multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_ena1, multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_a1),
        .by(multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_a0),
        .ax(multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_c1),
        .bx(multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_c0),
        .resulta(multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_s0),
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
    dspba_delay_ver #( .width(37), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_delay ( .xin(multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_s0), .xout(multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_q = $unsigned(multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_qq[36:0]);

    // highBBits_uid327_pT3_uid285_invPolyEval(BITSELECT,326)@40
    assign highBBits_uid327_pT3_uid285_invPolyEval_b = $unsigned(multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_q[36:18]);

    // redist16_highBBits_uid327_pT3_uid285_invPolyEval_b_1(DELAY,484)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_highBBits_uid327_pT3_uid285_invPolyEval_b_1_q <= $unsigned(highBBits_uid327_pT3_uid285_invPolyEval_b);
        end
    end

    // sm0_uid323_pT3_uid285_invPolyEval_cma(CHAINMULTADD,449)@34 + 5
    // out q@40
    assign sm0_uid323_pT3_uid285_invPolyEval_cma_reset = ~ (resetn);
    assign sm0_uid323_pT3_uid285_invPolyEval_cma_ena0 = 1'b1;
    assign sm0_uid323_pT3_uid285_invPolyEval_cma_ena1 = sm0_uid323_pT3_uid285_invPolyEval_cma_ena0;
    assign sm0_uid323_pT3_uid285_invPolyEval_cma_ena2 = sm0_uid323_pT3_uid285_invPolyEval_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            sm0_uid323_pT3_uid285_invPolyEval_cma_ah[0] <= topRangeX_uid311_pT3_uid285_invPolyEval_merged_bit_select_b;
            sm0_uid323_pT3_uid285_invPolyEval_cma_ch[0] <= topRangeY_uid312_pT3_uid285_invPolyEval_merged_bit_select_b;
        end
    end

    assign sm0_uid323_pT3_uid285_invPolyEval_cma_a0 = $unsigned(sm0_uid323_pT3_uid285_invPolyEval_cma_ah[0]);
    assign sm0_uid323_pT3_uid285_invPolyEval_cma_c0 = $unsigned(sm0_uid323_pT3_uid285_invPolyEval_cma_ch[0]);
    fourteennm_mac #(
        .operation_mode("m18x18_full"),
        .clear_type("none"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .ax_clock("0"),
        .ax_width(18),
        .signed_may("true"),
        .signed_max("true"),
        .input_pipeline_clock("2"),
        .second_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(36)
    ) sm0_uid323_pT3_uid285_invPolyEval_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ sm0_uid323_pT3_uid285_invPolyEval_cma_ena2, sm0_uid323_pT3_uid285_invPolyEval_cma_ena1, sm0_uid323_pT3_uid285_invPolyEval_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(sm0_uid323_pT3_uid285_invPolyEval_cma_a0),
        .ax(sm0_uid323_pT3_uid285_invPolyEval_cma_c0),
        .resulta(sm0_uid323_pT3_uid285_invPolyEval_cma_s0),
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
    sm0_uid323_pT3_uid285_invPolyEval_cma_delay ( .xin(sm0_uid323_pT3_uid285_invPolyEval_cma_s0), .xout(sm0_uid323_pT3_uid285_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign sm0_uid323_pT3_uid285_invPolyEval_cma_q = $unsigned(sm0_uid323_pT3_uid285_invPolyEval_cma_qq[35:0]);

    // redist12_sm0_uid323_pT3_uid285_invPolyEval_cma_q_1(DELAY,480)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_sm0_uid323_pT3_uid285_invPolyEval_cma_q_1_q <= $unsigned(sm0_uid323_pT3_uid285_invPolyEval_cma_q);
        end
    end

    // lev1_a0sumAHighB_uid328_pT3_uid285_invPolyEval(ADD,327)@41
    assign lev1_a0sumAHighB_uid328_pT3_uid285_invPolyEval_a = $unsigned({{1{redist12_sm0_uid323_pT3_uid285_invPolyEval_cma_q_1_q[35]}}, redist12_sm0_uid323_pT3_uid285_invPolyEval_cma_q_1_q});
    assign lev1_a0sumAHighB_uid328_pT3_uid285_invPolyEval_b = $unsigned({{18{redist16_highBBits_uid327_pT3_uid285_invPolyEval_b_1_q[18]}}, redist16_highBBits_uid327_pT3_uid285_invPolyEval_b_1_q});
    assign lev1_a0sumAHighB_uid328_pT3_uid285_invPolyEval_o = $unsigned($signed(lev1_a0sumAHighB_uid328_pT3_uid285_invPolyEval_a) + $signed(lev1_a0sumAHighB_uid328_pT3_uid285_invPolyEval_b));
    assign lev1_a0sumAHighB_uid328_pT3_uid285_invPolyEval_q = lev1_a0sumAHighB_uid328_pT3_uid285_invPolyEval_o[36:0];

    // lowRangeB_uid326_pT3_uid285_invPolyEval(BITSELECT,325)@40
    assign lowRangeB_uid326_pT3_uid285_invPolyEval_in = multSumOfTwoTS_uid324_pT3_uid285_invPolyEval_cma_q[17:0];
    assign lowRangeB_uid326_pT3_uid285_invPolyEval_b = lowRangeB_uid326_pT3_uid285_invPolyEval_in[17:0];

    // redist17_lowRangeB_uid326_pT3_uid285_invPolyEval_b_1(DELAY,485)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_lowRangeB_uid326_pT3_uid285_invPolyEval_b_1_q <= $unsigned(lowRangeB_uid326_pT3_uid285_invPolyEval_b);
        end
    end

    // lev1_a0_uid329_pT3_uid285_invPolyEval(BITJOIN,328)@41
    assign lev1_a0_uid329_pT3_uid285_invPolyEval_q = {lev1_a0sumAHighB_uid328_pT3_uid285_invPolyEval_q, redist17_lowRangeB_uid326_pT3_uid285_invPolyEval_b_1_q};

    // os_uid330_pT3_uid285_invPolyEval(BITSELECT,329)@41
    assign os_uid330_pT3_uid285_invPolyEval_in = $unsigned(lev1_a0_uid329_pT3_uid285_invPolyEval_q[52:0]);
    assign os_uid330_pT3_uid285_invPolyEval_b = $unsigned(os_uid330_pT3_uid285_invPolyEval_in[52:21]);

    // redist15_os_uid330_pT3_uid285_invPolyEval_b_1(DELAY,483)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist15_os_uid330_pT3_uid285_invPolyEval_b_1_q <= $unsigned(os_uid330_pT3_uid285_invPolyEval_b);
        end
    end

    // highBBits_uid287_invPolyEval(BITSELECT,286)@42
    assign highBBits_uid287_invPolyEval_b = $unsigned(redist15_os_uid330_pT3_uid285_invPolyEval_b_1_q[31:2]);

    // redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_rdcnt(ADD,547)
    assign redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_rdcnt_a = {1'b0, redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_wraddr_q};
    assign redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_rdcnt_b = {1'b0, redist6_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_7_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_rdcnt_o <= $unsigned(redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_rdcnt_a) + $unsigned(redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_rdcnt_b);
        end
    end
    assign redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_rdcnt_q = redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_rdcnt_o[3:0];

    // redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_inputreg0(DELAY,542)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_inputreg0_q <= $unsigned(redist7_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_14_outputreg0_q);
        end
    end

    // redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_wraddr(COUNTER,545)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_wraddr_i <= $unsigned(redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_wraddr_i) + $unsigned(3'd1);
        end
    end
    assign redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_wraddr_q = redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_wraddr_i[2:0];

    // redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_mem(DUALMEM,544)
    assign redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_mem_ia = $unsigned(redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_inputreg0_q);
    assign redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_mem_aa = redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_wraddr_q;
    assign redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_mem_ab = redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_rdcnt_q[2:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(8),
        .widthad_a(3),
        .numwords_a(8),
        .width_b(8),
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
    ) redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_mem_aa),
        .data_a(redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_mem_ab),
        .q_b(redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_mem_iq),
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
    assign redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_mem_q = redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_mem_iq[7:0];

    // redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_outputreg0(DELAY,543)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_outputreg0_q <= $unsigned(redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_mem_q);
        end
    end

    // memoryC0_uid256_invTabGen_lutmem(DUALMEM,443)@39 + 2
    // in j@20000000
    assign memoryC0_uid256_invTabGen_lutmem_aa = redist8_yAddr_uid153_i_div_if_loop_328_merged_bit_select_b_22_outputreg0_q;
    altera_syncram #(
        .ram_block_type("M20K"),
        .operation_mode("ROM"),
        .width_a(38),
        .widthad_a(8),
        .numwords_a(256),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_sclr_a("NONE"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("if_loop_3_i_sfc_logic_s_c0_in_for_body_s0000256_invTabGen_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Stratix 10")
    ) memoryC0_uid256_invTabGen_lutmem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(memoryC0_uid256_invTabGen_lutmem_aa),
        .q_a(memoryC0_uid256_invTabGen_lutmem_ir),
        .wren_a(),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_a(),
        .data_b(),
        .address_b(),
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
        .q_b(),
        .eccstatus()
    );
    assign memoryC0_uid256_invTabGen_lutmem_r = memoryC0_uid256_invTabGen_lutmem_ir[37:0];

    // redist14_memoryC0_uid256_invTabGen_lutmem_r_1(DELAY,482)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_memoryC0_uid256_invTabGen_lutmem_r_1_q <= $unsigned(memoryC0_uid256_invTabGen_lutmem_r);
        end
    end

    // s3sumAHighB_uid288_invPolyEval(ADD,287)@42
    assign s3sumAHighB_uid288_invPolyEval_a = $unsigned({{1{redist14_memoryC0_uid256_invTabGen_lutmem_r_1_q[37]}}, redist14_memoryC0_uid256_invTabGen_lutmem_r_1_q});
    assign s3sumAHighB_uid288_invPolyEval_b = $unsigned({{9{highBBits_uid287_invPolyEval_b[29]}}, highBBits_uid287_invPolyEval_b});
    assign s3sumAHighB_uid288_invPolyEval_o = $unsigned($signed(s3sumAHighB_uid288_invPolyEval_a) + $signed(s3sumAHighB_uid288_invPolyEval_b));
    assign s3sumAHighB_uid288_invPolyEval_q = s3sumAHighB_uid288_invPolyEval_o[38:0];

    // lowRangeB_uid286_invPolyEval(BITSELECT,285)@42
    assign lowRangeB_uid286_invPolyEval_in = redist15_os_uid330_pT3_uid285_invPolyEval_b_1_q[1:0];
    assign lowRangeB_uid286_invPolyEval_b = lowRangeB_uid286_invPolyEval_in[1:0];

    // s3_uid289_invPolyEval(BITJOIN,288)@42
    assign s3_uid289_invPolyEval_q = {s3sumAHighB_uid288_invPolyEval_q, lowRangeB_uid286_invPolyEval_b};

    // fxpInverseRes_uid156_i_div_if_loop_328(BITSELECT,155)@42
    assign fxpInverseRes_uid156_i_div_if_loop_328_in = s3_uid289_invPolyEval_q[38:0];
    assign fxpInverseRes_uid156_i_div_if_loop_328_b = fxpInverseRes_uid156_i_div_if_loop_328_in[38:6];

    // redist32_fxpInverseRes_uid156_i_div_if_loop_328_b_1(DELAY,500)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist32_fxpInverseRes_uid156_i_div_if_loop_328_b_1_q <= $unsigned(fxpInverseRes_uid156_i_div_if_loop_328_b);
        end
    end

    // updatedY_uid147_i_div_if_loop_328(BITJOIN,146)@18
    assign updatedY_uid147_i_div_if_loop_328_q = {GND_q, i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_30_c_i31_03_x_q};

    // redist35_normYNoLeadOne_uid145_i_div_if_loop_328_b_1(DELAY,503)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist35_normYNoLeadOne_uid145_i_div_if_loop_328_b_1_q <= $unsigned(normYNoLeadOne_uid145_i_div_if_loop_328_b);
        end
    end

    // normYIsOneC2_uid146_i_div_if_loop_328(LOGICAL,147)@18 + 1
    assign normYIsOneC2_uid146_i_div_if_loop_328_a = {1'b0, redist35_normYNoLeadOne_uid145_i_div_if_loop_328_b_1_q};
    assign normYIsOneC2_uid146_i_div_if_loop_328_qi = $unsigned(normYIsOneC2_uid146_i_div_if_loop_328_a == updatedY_uid147_i_div_if_loop_328_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    normYIsOneC2_uid146_i_div_if_loop_328_delay ( .xin(normYIsOneC2_uid146_i_div_if_loop_328_qi), .xout(normYIsOneC2_uid146_i_div_if_loop_328_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // normYIsOneC2_uid149_i_div_if_loop_328(BITSELECT,148)@17
    assign normYIsOneC2_uid149_i_div_if_loop_328_b = $unsigned(leftShiftStage2_uid370_normY_uid144_i_div_if_loop_328_q[31:31]);

    // redist34_normYIsOneC2_uid149_i_div_if_loop_328_b_2(DELAY,502)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist34_normYIsOneC2_uid149_i_div_if_loop_328_b_2_delay_0 <= $unsigned(normYIsOneC2_uid149_i_div_if_loop_328_b);
            redist34_normYIsOneC2_uid149_i_div_if_loop_328_b_2_q <= redist34_normYIsOneC2_uid149_i_div_if_loop_328_b_2_delay_0;
        end
    end

    // normYIsOne_uid150_i_div_if_loop_328(LOGICAL,149)@19 + 1
    assign normYIsOne_uid150_i_div_if_loop_328_qi = redist34_normYIsOneC2_uid149_i_div_if_loop_328_b_2_q & normYIsOneC2_uid146_i_div_if_loop_328_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    normYIsOne_uid150_i_div_if_loop_328_delay ( .xin(normYIsOne_uid150_i_div_if_loop_328_qi), .xout(normYIsOne_uid150_i_div_if_loop_328_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist33_normYIsOne_uid150_i_div_if_loop_328_q_24(DELAY,501)
    dspba_delay_ver #( .width(1), .depth(23), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist33_normYIsOne_uid150_i_div_if_loop_328_q_24 ( .xin(normYIsOne_uid150_i_div_if_loop_328_q), .xout(redist33_normYIsOne_uid150_i_div_if_loop_328_q_24_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // invResPostOneHandling2_uid158_i_div_if_loop_328(MUX,157)@43
    assign invResPostOneHandling2_uid158_i_div_if_loop_328_s = redist33_normYIsOne_uid150_i_div_if_loop_328_q_24_q;
    always @(invResPostOneHandling2_uid158_i_div_if_loop_328_s or redist32_fxpInverseRes_uid156_i_div_if_loop_328_b_1_q or oneInvRes_uid157_i_div_if_loop_328_q)
    begin
        unique case (invResPostOneHandling2_uid158_i_div_if_loop_328_s)
            1'b0 : invResPostOneHandling2_uid158_i_div_if_loop_328_q = redist32_fxpInverseRes_uid156_i_div_if_loop_328_b_1_q;
            1'b1 : invResPostOneHandling2_uid158_i_div_if_loop_328_q = oneInvRes_uid157_i_div_if_loop_328_q;
            default : invResPostOneHandling2_uid158_i_div_if_loop_328_q = 33'b0;
        endcase
    end

    // prodXInvY_uid166_i_div_if_loop_328_bs2_merged_bit_select(BITSELECT,458)@43
    assign prodXInvY_uid166_i_div_if_loop_328_bs2_merged_bit_select_b = invResPostOneHandling2_uid158_i_div_if_loop_328_q[32:18];
    assign prodXInvY_uid166_i_div_if_loop_328_bs2_merged_bit_select_c = invResPostOneHandling2_uid158_i_div_if_loop_328_q[17:0];

    // zMsbY0_uid163_i_div_if_loop_328(BITJOIN,162)@43
    assign zMsbY0_uid163_i_div_if_loop_328_q = {GND_q, redist40_xMSB_uid137_i_div_if_loop_328_b_33_q};

    // xPSX_uid161_i_div_if_loop_328(LOGICAL,160)@43
    assign xPSX_uid161_i_div_if_loop_328_b = $unsigned({{31{redist40_xMSB_uid137_i_div_if_loop_328_b_33_q[0]}}, redist40_xMSB_uid137_i_div_if_loop_328_b_33_q});
    assign xPSX_uid161_i_div_if_loop_328_q = i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q ^ xPSX_uid161_i_div_if_loop_328_b;

    // xPSXE_uid164_i_div_if_loop_328(ADD,163)@43
    assign xPSXE_uid164_i_div_if_loop_328_a = $unsigned({{1{xPSX_uid161_i_div_if_loop_328_q[31]}}, xPSX_uid161_i_div_if_loop_328_q});
    assign xPSXE_uid164_i_div_if_loop_328_b = $unsigned({{31{zMsbY0_uid163_i_div_if_loop_328_q[1]}}, zMsbY0_uid163_i_div_if_loop_328_q});
    assign xPSXE_uid164_i_div_if_loop_328_o = $unsigned($signed(xPSXE_uid164_i_div_if_loop_328_a) + $signed(xPSXE_uid164_i_div_if_loop_328_b));
    assign xPSXE_uid164_i_div_if_loop_328_q = xPSXE_uid164_i_div_if_loop_328_o[32:0];

    // prodXInvY_uid166_i_div_if_loop_328_bs1_merged_bit_select(BITSELECT,460)@43
    assign prodXInvY_uid166_i_div_if_loop_328_bs1_merged_bit_select_b = $unsigned(xPSXE_uid164_i_div_if_loop_328_q[32:18]);
    assign prodXInvY_uid166_i_div_if_loop_328_bs1_merged_bit_select_c = $unsigned(xPSXE_uid164_i_div_if_loop_328_q[17:0]);

    // prodXInvY_uid166_i_div_if_loop_328_ma4_cma(CHAINMULTADD,455)@43 + 5
    // out q@49
    assign prodXInvY_uid166_i_div_if_loop_328_ma4_cma_reset = ~ (resetn);
    assign prodXInvY_uid166_i_div_if_loop_328_ma4_cma_ena0 = 1'b1;
    assign prodXInvY_uid166_i_div_if_loop_328_ma4_cma_ena1 = prodXInvY_uid166_i_div_if_loop_328_ma4_cma_ena0;
    assign prodXInvY_uid166_i_div_if_loop_328_ma4_cma_ena2 = prodXInvY_uid166_i_div_if_loop_328_ma4_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            prodXInvY_uid166_i_div_if_loop_328_ma4_cma_ah[0] <= {{1{prodXInvY_uid166_i_div_if_loop_328_bs1_merged_bit_select_b[14]}}, prodXInvY_uid166_i_div_if_loop_328_bs1_merged_bit_select_b[14:0]};
            prodXInvY_uid166_i_div_if_loop_328_ma4_cma_ah[1] <= prodXInvY_uid166_i_div_if_loop_328_bjB3_q;
            prodXInvY_uid166_i_div_if_loop_328_ma4_cma_ch[0] <= prodXInvY_uid166_i_div_if_loop_328_bs2_merged_bit_select_c;
            prodXInvY_uid166_i_div_if_loop_328_ma4_cma_ch[1] <= prodXInvY_uid166_i_div_if_loop_328_bs1_merged_bit_select_c;
        end
    end

    assign prodXInvY_uid166_i_div_if_loop_328_ma4_cma_a0 = $unsigned(prodXInvY_uid166_i_div_if_loop_328_ma4_cma_ah[0]);
    assign prodXInvY_uid166_i_div_if_loop_328_ma4_cma_c0 = prodXInvY_uid166_i_div_if_loop_328_ma4_cma_ch[0];
    assign prodXInvY_uid166_i_div_if_loop_328_ma4_cma_a1 = $unsigned(prodXInvY_uid166_i_div_if_loop_328_ma4_cma_ah[1]);
    assign prodXInvY_uid166_i_div_if_loop_328_ma4_cma_c1 = prodXInvY_uid166_i_div_if_loop_328_ma4_cma_ch[1];
    fourteennm_mac #(
        .operation_mode("m18x18_sumof2"),
        .clear_type("none"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(16),
        .by_clock("0"),
        .by_width(16),
        .ax_clock("0"),
        .bx_clock("0"),
        .ax_width(18),
        .bx_width(18),
        .signed_may("true"),
        .signed_mby("true"),
        .signed_max("false"),
        .signed_mbx("false"),
        .input_pipeline_clock("2"),
        .second_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(35)
    ) prodXInvY_uid166_i_div_if_loop_328_ma4_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ prodXInvY_uid166_i_div_if_loop_328_ma4_cma_ena2, prodXInvY_uid166_i_div_if_loop_328_ma4_cma_ena1, prodXInvY_uid166_i_div_if_loop_328_ma4_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(prodXInvY_uid166_i_div_if_loop_328_ma4_cma_a1),
        .by(prodXInvY_uid166_i_div_if_loop_328_ma4_cma_a0),
        .ax(prodXInvY_uid166_i_div_if_loop_328_ma4_cma_c1),
        .bx(prodXInvY_uid166_i_div_if_loop_328_ma4_cma_c0),
        .resulta(prodXInvY_uid166_i_div_if_loop_328_ma4_cma_s0),
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
    dspba_delay_ver #( .width(35), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXInvY_uid166_i_div_if_loop_328_ma4_cma_delay ( .xin(prodXInvY_uid166_i_div_if_loop_328_ma4_cma_s0), .xout(prodXInvY_uid166_i_div_if_loop_328_ma4_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXInvY_uid166_i_div_if_loop_328_ma4_cma_q = $unsigned(prodXInvY_uid166_i_div_if_loop_328_ma4_cma_qq[34:0]);

    // prodXInvY_uid166_i_div_if_loop_328_sums_align_1(BITSHIFT,385)@49
    assign prodXInvY_uid166_i_div_if_loop_328_sums_align_1_qint = { prodXInvY_uid166_i_div_if_loop_328_ma4_cma_q, 18'b000000000000000000 };
    assign prodXInvY_uid166_i_div_if_loop_328_sums_align_1_q = prodXInvY_uid166_i_div_if_loop_328_sums_align_1_qint[52:0];

    // prodXInvY_uid166_i_div_if_loop_328_im0_cma(CHAINMULTADD,450)@43 + 5
    // out q@49
    assign prodXInvY_uid166_i_div_if_loop_328_im0_cma_reset = ~ (resetn);
    assign prodXInvY_uid166_i_div_if_loop_328_im0_cma_ena0 = 1'b1;
    assign prodXInvY_uid166_i_div_if_loop_328_im0_cma_ena1 = prodXInvY_uid166_i_div_if_loop_328_im0_cma_ena0;
    assign prodXInvY_uid166_i_div_if_loop_328_im0_cma_ena2 = prodXInvY_uid166_i_div_if_loop_328_im0_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            prodXInvY_uid166_i_div_if_loop_328_im0_cma_ah[0] <= prodXInvY_uid166_i_div_if_loop_328_bs1_merged_bit_select_b;
            prodXInvY_uid166_i_div_if_loop_328_im0_cma_ch[0] <= prodXInvY_uid166_i_div_if_loop_328_bjB3_q;
        end
    end

    assign prodXInvY_uid166_i_div_if_loop_328_im0_cma_a0 = $unsigned(prodXInvY_uid166_i_div_if_loop_328_im0_cma_ah[0]);
    assign prodXInvY_uid166_i_div_if_loop_328_im0_cma_c0 = $unsigned(prodXInvY_uid166_i_div_if_loop_328_im0_cma_ch[0]);
    fourteennm_mac #(
        .operation_mode("m18x18_full"),
        .clear_type("none"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(15),
        .ax_clock("0"),
        .ax_width(16),
        .signed_may("true"),
        .signed_max("true"),
        .input_pipeline_clock("2"),
        .second_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(31)
    ) prodXInvY_uid166_i_div_if_loop_328_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ prodXInvY_uid166_i_div_if_loop_328_im0_cma_ena2, prodXInvY_uid166_i_div_if_loop_328_im0_cma_ena1, prodXInvY_uid166_i_div_if_loop_328_im0_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(prodXInvY_uid166_i_div_if_loop_328_im0_cma_a0),
        .ax(prodXInvY_uid166_i_div_if_loop_328_im0_cma_c0),
        .resulta(prodXInvY_uid166_i_div_if_loop_328_im0_cma_s0),
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
    dspba_delay_ver #( .width(31), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXInvY_uid166_i_div_if_loop_328_im0_cma_delay ( .xin(prodXInvY_uid166_i_div_if_loop_328_im0_cma_s0), .xout(prodXInvY_uid166_i_div_if_loop_328_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXInvY_uid166_i_div_if_loop_328_im0_cma_q = $unsigned(prodXInvY_uid166_i_div_if_loop_328_im0_cma_qq[30:0]);

    // prodXInvY_uid166_i_div_if_loop_328_im10_cma(CHAINMULTADD,451)@43 + 5
    // out q@49
    assign prodXInvY_uid166_i_div_if_loop_328_im10_cma_reset = ~ (resetn);
    assign prodXInvY_uid166_i_div_if_loop_328_im10_cma_ena0 = 1'b1;
    assign prodXInvY_uid166_i_div_if_loop_328_im10_cma_ena1 = prodXInvY_uid166_i_div_if_loop_328_im10_cma_ena0;
    assign prodXInvY_uid166_i_div_if_loop_328_im10_cma_ena2 = prodXInvY_uid166_i_div_if_loop_328_im10_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            prodXInvY_uid166_i_div_if_loop_328_im10_cma_ah[0] <= prodXInvY_uid166_i_div_if_loop_328_bs1_merged_bit_select_c;
            prodXInvY_uid166_i_div_if_loop_328_im10_cma_ch[0] <= prodXInvY_uid166_i_div_if_loop_328_bs2_merged_bit_select_c;
        end
    end

    assign prodXInvY_uid166_i_div_if_loop_328_im10_cma_a0 = prodXInvY_uid166_i_div_if_loop_328_im10_cma_ah[0];
    assign prodXInvY_uid166_i_div_if_loop_328_im10_cma_c0 = prodXInvY_uid166_i_div_if_loop_328_im10_cma_ch[0];
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
    ) prodXInvY_uid166_i_div_if_loop_328_im10_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ prodXInvY_uid166_i_div_if_loop_328_im10_cma_ena2, prodXInvY_uid166_i_div_if_loop_328_im10_cma_ena1, prodXInvY_uid166_i_div_if_loop_328_im10_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(prodXInvY_uid166_i_div_if_loop_328_im10_cma_a0),
        .ax(prodXInvY_uid166_i_div_if_loop_328_im10_cma_c0),
        .resulta(prodXInvY_uid166_i_div_if_loop_328_im10_cma_s0),
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
    prodXInvY_uid166_i_div_if_loop_328_im10_cma_delay ( .xin(prodXInvY_uid166_i_div_if_loop_328_im10_cma_s0), .xout(prodXInvY_uid166_i_div_if_loop_328_im10_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXInvY_uid166_i_div_if_loop_328_im10_cma_q = $unsigned(prodXInvY_uid166_i_div_if_loop_328_im10_cma_qq[35:0]);

    // prodXInvY_uid166_i_div_if_loop_328_sums_join_0(BITJOIN,384)@49
    assign prodXInvY_uid166_i_div_if_loop_328_sums_join_0_q = {prodXInvY_uid166_i_div_if_loop_328_im0_cma_q, prodXInvY_uid166_i_div_if_loop_328_im10_cma_q};

    // prodXInvY_uid166_i_div_if_loop_328_sums_result_add_0_0(ADD,387)@49
    assign prodXInvY_uid166_i_div_if_loop_328_sums_result_add_0_0_a = $unsigned({{1{prodXInvY_uid166_i_div_if_loop_328_sums_join_0_q[66]}}, prodXInvY_uid166_i_div_if_loop_328_sums_join_0_q});
    assign prodXInvY_uid166_i_div_if_loop_328_sums_result_add_0_0_b = $unsigned({{15{prodXInvY_uid166_i_div_if_loop_328_sums_align_1_q[52]}}, prodXInvY_uid166_i_div_if_loop_328_sums_align_1_q});
    assign prodXInvY_uid166_i_div_if_loop_328_sums_result_add_0_0_o = $unsigned($signed(prodXInvY_uid166_i_div_if_loop_328_sums_result_add_0_0_a) + $signed(prodXInvY_uid166_i_div_if_loop_328_sums_result_add_0_0_b));
    assign prodXInvY_uid166_i_div_if_loop_328_sums_result_add_0_0_q = prodXInvY_uid166_i_div_if_loop_328_sums_result_add_0_0_o[67:0];

    // rightShiftInput_uid167_i_div_if_loop_328(BITSELECT,166)@49
    assign rightShiftInput_uid167_i_div_if_loop_328_in = $unsigned(prodXInvY_uid166_i_div_if_loop_328_sums_result_add_0_0_q[64:0]);
    assign rightShiftInput_uid167_i_div_if_loop_328_b = $unsigned(rightShiftInput_uid167_i_div_if_loop_328_in[64:0]);

    // xMSB_uid389_prodPostRightShift_uid168_i_div_if_loop_328(BITSELECT,388)@49
    assign xMSB_uid389_prodPostRightShift_uid168_i_div_if_loop_328_b = $unsigned(rightShiftInput_uid167_i_div_if_loop_328_b[64:64]);

    // seMsb_to64_uid423(BITSELECT,422)@49
    assign seMsb_to64_uid423_in = $unsigned({{63{xMSB_uid389_prodPostRightShift_uid168_i_div_if_loop_328_b[0]}}, xMSB_uid389_prodPostRightShift_uid168_i_div_if_loop_328_b});
    assign seMsb_to64_uid423_b = $unsigned(seMsb_to64_uid423_in[63:0]);

    // rightShiftStage3Idx1Rng64_uid424_prodPostRightShift_uid168_i_div_if_loop_328(BITSELECT,423)@49
    assign rightShiftStage3Idx1Rng64_uid424_prodPostRightShift_uid168_i_div_if_loop_328_b = $unsigned(rightShiftStage2_uid422_prodPostRightShift_uid168_i_div_if_loop_328_q[64:64]);

    // rightShiftStage3Idx1_uid425_prodPostRightShift_uid168_i_div_if_loop_328(BITJOIN,424)@49
    assign rightShiftStage3Idx1_uid425_prodPostRightShift_uid168_i_div_if_loop_328_q = {seMsb_to64_uid423_b, rightShiftStage3Idx1Rng64_uid424_prodPostRightShift_uid168_i_div_if_loop_328_b};

    // seMsb_to48_uid418(BITSELECT,417)@49
    assign seMsb_to48_uid418_in = $unsigned({{47{xMSB_uid389_prodPostRightShift_uid168_i_div_if_loop_328_b[0]}}, xMSB_uid389_prodPostRightShift_uid168_i_div_if_loop_328_b});
    assign seMsb_to48_uid418_b = $unsigned(seMsb_to48_uid418_in[47:0]);

    // rightShiftStage2Idx3Rng48_uid419_prodPostRightShift_uid168_i_div_if_loop_328(BITSELECT,418)@49
    assign rightShiftStage2Idx3Rng48_uid419_prodPostRightShift_uid168_i_div_if_loop_328_b = $unsigned(rightShiftStage1_uid411_prodPostRightShift_uid168_i_div_if_loop_328_q[64:48]);

    // rightShiftStage2Idx3_uid420_prodPostRightShift_uid168_i_div_if_loop_328(BITJOIN,419)@49
    assign rightShiftStage2Idx3_uid420_prodPostRightShift_uid168_i_div_if_loop_328_q = {seMsb_to48_uid418_b, rightShiftStage2Idx3Rng48_uid419_prodPostRightShift_uid168_i_div_if_loop_328_b};

    // seMsb_to32_uid415(BITSELECT,414)@49
    assign seMsb_to32_uid415_in = $unsigned({{31{xMSB_uid389_prodPostRightShift_uid168_i_div_if_loop_328_b[0]}}, xMSB_uid389_prodPostRightShift_uid168_i_div_if_loop_328_b});
    assign seMsb_to32_uid415_b = $unsigned(seMsb_to32_uid415_in[31:0]);

    // rightShiftStage2Idx2Rng32_uid416_prodPostRightShift_uid168_i_div_if_loop_328(BITSELECT,415)@49
    assign rightShiftStage2Idx2Rng32_uid416_prodPostRightShift_uid168_i_div_if_loop_328_b = $unsigned(rightShiftStage1_uid411_prodPostRightShift_uid168_i_div_if_loop_328_q[64:32]);

    // rightShiftStage2Idx2_uid417_prodPostRightShift_uid168_i_div_if_loop_328(BITJOIN,416)@49
    assign rightShiftStage2Idx2_uid417_prodPostRightShift_uid168_i_div_if_loop_328_q = {seMsb_to32_uid415_b, rightShiftStage2Idx2Rng32_uid416_prodPostRightShift_uid168_i_div_if_loop_328_b};

    // seMsb_to16_uid412(BITSELECT,411)@49
    assign seMsb_to16_uid412_in = $unsigned({{15{xMSB_uid389_prodPostRightShift_uid168_i_div_if_loop_328_b[0]}}, xMSB_uid389_prodPostRightShift_uid168_i_div_if_loop_328_b});
    assign seMsb_to16_uid412_b = $unsigned(seMsb_to16_uid412_in[15:0]);

    // rightShiftStage2Idx1Rng16_uid413_prodPostRightShift_uid168_i_div_if_loop_328(BITSELECT,412)@49
    assign rightShiftStage2Idx1Rng16_uid413_prodPostRightShift_uid168_i_div_if_loop_328_b = $unsigned(rightShiftStage1_uid411_prodPostRightShift_uid168_i_div_if_loop_328_q[64:16]);

    // rightShiftStage2Idx1_uid414_prodPostRightShift_uid168_i_div_if_loop_328(BITJOIN,413)@49
    assign rightShiftStage2Idx1_uid414_prodPostRightShift_uid168_i_div_if_loop_328_q = {seMsb_to16_uid412_b, rightShiftStage2Idx1Rng16_uid413_prodPostRightShift_uid168_i_div_if_loop_328_b};

    // seMsb_to12_uid407(BITSELECT,406)@49
    assign seMsb_to12_uid407_in = $unsigned({{11{xMSB_uid389_prodPostRightShift_uid168_i_div_if_loop_328_b[0]}}, xMSB_uid389_prodPostRightShift_uid168_i_div_if_loop_328_b});
    assign seMsb_to12_uid407_b = $unsigned(seMsb_to12_uid407_in[11:0]);

    // rightShiftStage1Idx3Rng12_uid408_prodPostRightShift_uid168_i_div_if_loop_328(BITSELECT,407)@49
    assign rightShiftStage1Idx3Rng12_uid408_prodPostRightShift_uid168_i_div_if_loop_328_b = $unsigned(rightShiftStage0_uid400_prodPostRightShift_uid168_i_div_if_loop_328_q[64:12]);

    // rightShiftStage1Idx3_uid409_prodPostRightShift_uid168_i_div_if_loop_328(BITJOIN,408)@49
    assign rightShiftStage1Idx3_uid409_prodPostRightShift_uid168_i_div_if_loop_328_q = {seMsb_to12_uid407_b, rightShiftStage1Idx3Rng12_uid408_prodPostRightShift_uid168_i_div_if_loop_328_b};

    // seMsb_to8_uid404(BITSELECT,403)@49
    assign seMsb_to8_uid404_in = $unsigned({{7{xMSB_uid389_prodPostRightShift_uid168_i_div_if_loop_328_b[0]}}, xMSB_uid389_prodPostRightShift_uid168_i_div_if_loop_328_b});
    assign seMsb_to8_uid404_b = $unsigned(seMsb_to8_uid404_in[7:0]);

    // rightShiftStage1Idx2Rng8_uid405_prodPostRightShift_uid168_i_div_if_loop_328(BITSELECT,404)@49
    assign rightShiftStage1Idx2Rng8_uid405_prodPostRightShift_uid168_i_div_if_loop_328_b = $unsigned(rightShiftStage0_uid400_prodPostRightShift_uid168_i_div_if_loop_328_q[64:8]);

    // rightShiftStage1Idx2_uid406_prodPostRightShift_uid168_i_div_if_loop_328(BITJOIN,405)@49
    assign rightShiftStage1Idx2_uid406_prodPostRightShift_uid168_i_div_if_loop_328_q = {seMsb_to8_uid404_b, rightShiftStage1Idx2Rng8_uid405_prodPostRightShift_uid168_i_div_if_loop_328_b};

    // seMsb_to4_uid401(BITSELECT,400)@49
    assign seMsb_to4_uid401_in = $unsigned({{3{xMSB_uid389_prodPostRightShift_uid168_i_div_if_loop_328_b[0]}}, xMSB_uid389_prodPostRightShift_uid168_i_div_if_loop_328_b});
    assign seMsb_to4_uid401_b = $unsigned(seMsb_to4_uid401_in[3:0]);

    // rightShiftStage1Idx1Rng4_uid402_prodPostRightShift_uid168_i_div_if_loop_328(BITSELECT,401)@49
    assign rightShiftStage1Idx1Rng4_uid402_prodPostRightShift_uid168_i_div_if_loop_328_b = $unsigned(rightShiftStage0_uid400_prodPostRightShift_uid168_i_div_if_loop_328_q[64:4]);

    // rightShiftStage1Idx1_uid403_prodPostRightShift_uid168_i_div_if_loop_328(BITJOIN,402)@49
    assign rightShiftStage1Idx1_uid403_prodPostRightShift_uid168_i_div_if_loop_328_q = {seMsb_to4_uid401_b, rightShiftStage1Idx1Rng4_uid402_prodPostRightShift_uid168_i_div_if_loop_328_b};

    // seMsb_to3_uid396(BITSELECT,395)@49
    assign seMsb_to3_uid396_in = $unsigned({{2{xMSB_uid389_prodPostRightShift_uid168_i_div_if_loop_328_b[0]}}, xMSB_uid389_prodPostRightShift_uid168_i_div_if_loop_328_b});
    assign seMsb_to3_uid396_b = $unsigned(seMsb_to3_uid396_in[2:0]);

    // rightShiftStage0Idx3Rng3_uid397_prodPostRightShift_uid168_i_div_if_loop_328(BITSELECT,396)@49
    assign rightShiftStage0Idx3Rng3_uid397_prodPostRightShift_uid168_i_div_if_loop_328_b = $unsigned(rightShiftInput_uid167_i_div_if_loop_328_b[64:3]);

    // rightShiftStage0Idx3_uid398_prodPostRightShift_uid168_i_div_if_loop_328(BITJOIN,397)@49
    assign rightShiftStage0Idx3_uid398_prodPostRightShift_uid168_i_div_if_loop_328_q = {seMsb_to3_uid396_b, rightShiftStage0Idx3Rng3_uid397_prodPostRightShift_uid168_i_div_if_loop_328_b};

    // seMsb_to2_uid393(BITSELECT,392)@49
    assign seMsb_to2_uid393_in = $unsigned({{1{xMSB_uid389_prodPostRightShift_uid168_i_div_if_loop_328_b[0]}}, xMSB_uid389_prodPostRightShift_uid168_i_div_if_loop_328_b});
    assign seMsb_to2_uid393_b = $unsigned(seMsb_to2_uid393_in[1:0]);

    // rightShiftStage0Idx2Rng2_uid394_prodPostRightShift_uid168_i_div_if_loop_328(BITSELECT,393)@49
    assign rightShiftStage0Idx2Rng2_uid394_prodPostRightShift_uid168_i_div_if_loop_328_b = $unsigned(rightShiftInput_uid167_i_div_if_loop_328_b[64:2]);

    // rightShiftStage0Idx2_uid395_prodPostRightShift_uid168_i_div_if_loop_328(BITJOIN,394)@49
    assign rightShiftStage0Idx2_uid395_prodPostRightShift_uid168_i_div_if_loop_328_q = {seMsb_to2_uid393_b, rightShiftStage0Idx2Rng2_uid394_prodPostRightShift_uid168_i_div_if_loop_328_b};

    // rightShiftStage0Idx1Rng1_uid391_prodPostRightShift_uid168_i_div_if_loop_328(BITSELECT,390)@49
    assign rightShiftStage0Idx1Rng1_uid391_prodPostRightShift_uid168_i_div_if_loop_328_b = $unsigned(rightShiftInput_uid167_i_div_if_loop_328_b[64:1]);

    // rightShiftStage0Idx1_uid392_prodPostRightShift_uid168_i_div_if_loop_328(BITJOIN,391)@49
    assign rightShiftStage0Idx1_uid392_prodPostRightShift_uid168_i_div_if_loop_328_q = {xMSB_uid389_prodPostRightShift_uid168_i_div_if_loop_328_b, rightShiftStage0Idx1Rng1_uid391_prodPostRightShift_uid168_i_div_if_loop_328_b};

    // rightShiftStage0_uid400_prodPostRightShift_uid168_i_div_if_loop_328(MUX,399)@49
    assign rightShiftStage0_uid400_prodPostRightShift_uid168_i_div_if_loop_328_s = rightShiftStageSel0Dto0_uid399_prodPostRightShift_uid168_i_div_if_loop_328_merged_bit_select_b;
    always @(rightShiftStage0_uid400_prodPostRightShift_uid168_i_div_if_loop_328_s or rightShiftInput_uid167_i_div_if_loop_328_b or rightShiftStage0Idx1_uid392_prodPostRightShift_uid168_i_div_if_loop_328_q or rightShiftStage0Idx2_uid395_prodPostRightShift_uid168_i_div_if_loop_328_q or rightShiftStage0Idx3_uid398_prodPostRightShift_uid168_i_div_if_loop_328_q)
    begin
        unique case (rightShiftStage0_uid400_prodPostRightShift_uid168_i_div_if_loop_328_s)
            2'b00 : rightShiftStage0_uid400_prodPostRightShift_uid168_i_div_if_loop_328_q = rightShiftInput_uid167_i_div_if_loop_328_b;
            2'b01 : rightShiftStage0_uid400_prodPostRightShift_uid168_i_div_if_loop_328_q = rightShiftStage0Idx1_uid392_prodPostRightShift_uid168_i_div_if_loop_328_q;
            2'b10 : rightShiftStage0_uid400_prodPostRightShift_uid168_i_div_if_loop_328_q = rightShiftStage0Idx2_uid395_prodPostRightShift_uid168_i_div_if_loop_328_q;
            2'b11 : rightShiftStage0_uid400_prodPostRightShift_uid168_i_div_if_loop_328_q = rightShiftStage0Idx3_uid398_prodPostRightShift_uid168_i_div_if_loop_328_q;
            default : rightShiftStage0_uid400_prodPostRightShift_uid168_i_div_if_loop_328_q = 65'b0;
        endcase
    end

    // rightShiftStage1_uid411_prodPostRightShift_uid168_i_div_if_loop_328(MUX,410)@49
    assign rightShiftStage1_uid411_prodPostRightShift_uid168_i_div_if_loop_328_s = rightShiftStageSel0Dto0_uid399_prodPostRightShift_uid168_i_div_if_loop_328_merged_bit_select_c;
    always @(rightShiftStage1_uid411_prodPostRightShift_uid168_i_div_if_loop_328_s or rightShiftStage0_uid400_prodPostRightShift_uid168_i_div_if_loop_328_q or rightShiftStage1Idx1_uid403_prodPostRightShift_uid168_i_div_if_loop_328_q or rightShiftStage1Idx2_uid406_prodPostRightShift_uid168_i_div_if_loop_328_q or rightShiftStage1Idx3_uid409_prodPostRightShift_uid168_i_div_if_loop_328_q)
    begin
        unique case (rightShiftStage1_uid411_prodPostRightShift_uid168_i_div_if_loop_328_s)
            2'b00 : rightShiftStage1_uid411_prodPostRightShift_uid168_i_div_if_loop_328_q = rightShiftStage0_uid400_prodPostRightShift_uid168_i_div_if_loop_328_q;
            2'b01 : rightShiftStage1_uid411_prodPostRightShift_uid168_i_div_if_loop_328_q = rightShiftStage1Idx1_uid403_prodPostRightShift_uid168_i_div_if_loop_328_q;
            2'b10 : rightShiftStage1_uid411_prodPostRightShift_uid168_i_div_if_loop_328_q = rightShiftStage1Idx2_uid406_prodPostRightShift_uid168_i_div_if_loop_328_q;
            2'b11 : rightShiftStage1_uid411_prodPostRightShift_uid168_i_div_if_loop_328_q = rightShiftStage1Idx3_uid409_prodPostRightShift_uid168_i_div_if_loop_328_q;
            default : rightShiftStage1_uid411_prodPostRightShift_uid168_i_div_if_loop_328_q = 65'b0;
        endcase
    end

    // rightShiftStage2_uid422_prodPostRightShift_uid168_i_div_if_loop_328(MUX,421)@49
    assign rightShiftStage2_uid422_prodPostRightShift_uid168_i_div_if_loop_328_s = rightShiftStageSel0Dto0_uid399_prodPostRightShift_uid168_i_div_if_loop_328_merged_bit_select_d;
    always @(rightShiftStage2_uid422_prodPostRightShift_uid168_i_div_if_loop_328_s or rightShiftStage1_uid411_prodPostRightShift_uid168_i_div_if_loop_328_q or rightShiftStage2Idx1_uid414_prodPostRightShift_uid168_i_div_if_loop_328_q or rightShiftStage2Idx2_uid417_prodPostRightShift_uid168_i_div_if_loop_328_q or rightShiftStage2Idx3_uid420_prodPostRightShift_uid168_i_div_if_loop_328_q)
    begin
        unique case (rightShiftStage2_uid422_prodPostRightShift_uid168_i_div_if_loop_328_s)
            2'b00 : rightShiftStage2_uid422_prodPostRightShift_uid168_i_div_if_loop_328_q = rightShiftStage1_uid411_prodPostRightShift_uid168_i_div_if_loop_328_q;
            2'b01 : rightShiftStage2_uid422_prodPostRightShift_uid168_i_div_if_loop_328_q = rightShiftStage2Idx1_uid414_prodPostRightShift_uid168_i_div_if_loop_328_q;
            2'b10 : rightShiftStage2_uid422_prodPostRightShift_uid168_i_div_if_loop_328_q = rightShiftStage2Idx2_uid417_prodPostRightShift_uid168_i_div_if_loop_328_q;
            2'b11 : rightShiftStage2_uid422_prodPostRightShift_uid168_i_div_if_loop_328_q = rightShiftStage2Idx3_uid420_prodPostRightShift_uid168_i_div_if_loop_328_q;
            default : rightShiftStage2_uid422_prodPostRightShift_uid168_i_div_if_loop_328_q = 65'b0;
        endcase
    end

    // redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_offset(CONSTANT,562)
    assign redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_offset_q = $unsigned(5'b00011);

    // redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_rdcnt(ADD,563)
    assign redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_rdcnt_a = {1'b0, redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_wraddr_q};
    assign redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_rdcnt_b = {1'b0, redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_rdcnt_o <= $unsigned(redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_rdcnt_a) + $unsigned(redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_rdcnt_b);
        end
    end
    assign redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_rdcnt_q = redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_rdcnt_o[5:0];

    // redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_wraddr(COUNTER,561)
    // low=0, high=31, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_wraddr_i <= $unsigned(redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_wraddr_i) + $unsigned(5'd1);
        end
    end
    assign redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_wraddr_q = redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_wraddr_i[4:0];

    // redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_mem(DUALMEM,560)
    assign redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_mem_ia = $unsigned(r_uid254_zCount_uid143_i_div_if_loop_328_q);
    assign redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_mem_aa = redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_wraddr_q;
    assign redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_mem_ab = redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_rdcnt_q[4:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(6),
        .widthad_a(5),
        .numwords_a(32),
        .width_b(6),
        .widthad_b(5),
        .numwords_b(32),
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
    ) redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_mem_aa),
        .data_a(redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_mem_ab),
        .q_b(redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_mem_iq),
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
    assign redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_mem_q = redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_mem_iq[5:0];

    // redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_outputreg0(DELAY,559)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_outputreg0_q <= $unsigned(redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_mem_q);
        end
    end

    // cWOut_uid159_i_div_if_loop_328(CONSTANT,158)
    assign cWOut_uid159_i_div_if_loop_328_q = $unsigned(6'b100000);

    // rShiftCount_uid160_i_div_if_loop_328(SUB,159)@49
    assign rShiftCount_uid160_i_div_if_loop_328_a = {1'b0, cWOut_uid159_i_div_if_loop_328_q};
    assign rShiftCount_uid160_i_div_if_loop_328_b = {1'b0, redist20_r_uid254_zCount_uid143_i_div_if_loop_328_q_33_outputreg0_q};
    assign rShiftCount_uid160_i_div_if_loop_328_o = $unsigned(rShiftCount_uid160_i_div_if_loop_328_a) - $unsigned(rShiftCount_uid160_i_div_if_loop_328_b);
    assign rShiftCount_uid160_i_div_if_loop_328_q = rShiftCount_uid160_i_div_if_loop_328_o[6:0];

    // rightShiftStageSel0Dto0_uid399_prodPostRightShift_uid168_i_div_if_loop_328_merged_bit_select(BITSELECT,459)@49
    assign rightShiftStageSel0Dto0_uid399_prodPostRightShift_uid168_i_div_if_loop_328_merged_bit_select_b = rShiftCount_uid160_i_div_if_loop_328_q[1:0];
    assign rightShiftStageSel0Dto0_uid399_prodPostRightShift_uid168_i_div_if_loop_328_merged_bit_select_c = rShiftCount_uid160_i_div_if_loop_328_q[3:2];
    assign rightShiftStageSel0Dto0_uid399_prodPostRightShift_uid168_i_div_if_loop_328_merged_bit_select_d = rShiftCount_uid160_i_div_if_loop_328_q[5:4];
    assign rightShiftStageSel0Dto0_uid399_prodPostRightShift_uid168_i_div_if_loop_328_merged_bit_select_e = rShiftCount_uid160_i_div_if_loop_328_q[6:6];

    // rightShiftStage3_uid427_prodPostRightShift_uid168_i_div_if_loop_328(MUX,426)@49
    assign rightShiftStage3_uid427_prodPostRightShift_uid168_i_div_if_loop_328_s = rightShiftStageSel0Dto0_uid399_prodPostRightShift_uid168_i_div_if_loop_328_merged_bit_select_e;
    always @(rightShiftStage3_uid427_prodPostRightShift_uid168_i_div_if_loop_328_s or rightShiftStage2_uid422_prodPostRightShift_uid168_i_div_if_loop_328_q or rightShiftStage3Idx1_uid425_prodPostRightShift_uid168_i_div_if_loop_328_q)
    begin
        unique case (rightShiftStage3_uid427_prodPostRightShift_uid168_i_div_if_loop_328_s)
            1'b0 : rightShiftStage3_uid427_prodPostRightShift_uid168_i_div_if_loop_328_q = rightShiftStage2_uid422_prodPostRightShift_uid168_i_div_if_loop_328_q;
            1'b1 : rightShiftStage3_uid427_prodPostRightShift_uid168_i_div_if_loop_328_q = rightShiftStage3Idx1_uid425_prodPostRightShift_uid168_i_div_if_loop_328_q;
            default : rightShiftStage3_uid427_prodPostRightShift_uid168_i_div_if_loop_328_q = 65'b0;
        endcase
    end

    // prodPostRightShiftPost_uid169_i_div_if_loop_328(BITSELECT,168)@49
    assign prodPostRightShiftPost_uid169_i_div_if_loop_328_in = rightShiftStage3_uid427_prodPostRightShift_uid168_i_div_if_loop_328_q[62:0];
    assign prodPostRightShiftPost_uid169_i_div_if_loop_328_b = prodPostRightShiftPost_uid169_i_div_if_loop_328_in[62:30];

    // prodPostRightShiftPostRnd_uid171_i_div_if_loop_328(ADD,170)@49
    assign prodPostRightShiftPostRnd_uid171_i_div_if_loop_328_a = {1'b0, prodPostRightShiftPost_uid169_i_div_if_loop_328_b};
    assign prodPostRightShiftPostRnd_uid171_i_div_if_loop_328_b = {33'b000000000000000000000000000000000, VCC_q};
    assign prodPostRightShiftPostRnd_uid171_i_div_if_loop_328_o = $unsigned(prodPostRightShiftPostRnd_uid171_i_div_if_loop_328_a) + $unsigned(prodPostRightShiftPostRnd_uid171_i_div_if_loop_328_b);
    assign prodPostRightShiftPostRnd_uid171_i_div_if_loop_328_q = prodPostRightShiftPostRnd_uid171_i_div_if_loop_328_o[33:0];

    // prodPostRightShiftPostRndRange_uid172_i_div_if_loop_328(BITSELECT,171)@49
    assign prodPostRightShiftPostRndRange_uid172_i_div_if_loop_328_in = prodPostRightShiftPostRnd_uid171_i_div_if_loop_328_q[32:0];
    assign prodPostRightShiftPostRndRange_uid172_i_div_if_loop_328_b = prodPostRightShiftPostRndRange_uid172_i_div_if_loop_328_in[32:1];

    // redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_rdcnt(ADD,582)
    assign redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_rdcnt_a = {1'b0, redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_wraddr_q};
    assign redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_rdcnt_b = {1'b0, redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_rdcnt_o <= $unsigned(redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_rdcnt_a) + $unsigned(redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_rdcnt_b);
        end
    end
    assign redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_rdcnt_q = redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_rdcnt_o[2:0];

    // redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_offset(CONSTANT,587)
    assign redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_offset_q = $unsigned(5'b00100);

    // redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_rdcnt(ADD,588)
    assign redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_rdcnt_a = {1'b0, redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_wraddr_q};
    assign redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_rdcnt_b = {1'b0, redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_rdcnt_o <= $unsigned(redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_rdcnt_a) + $unsigned(redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_rdcnt_b);
        end
    end
    assign redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_rdcnt_q = redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_rdcnt_o[5:0];

    // redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_inputreg0(DELAY,583)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_inputreg0_q <= $unsigned(redist55_bgTrunc_i_sub_if_loop_324_sel_x_b_1_q);
        end
    end

    // redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_wraddr(COUNTER,586)
    // low=0, high=31, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_wraddr_i <= $unsigned(redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_wraddr_i) + $unsigned(5'd1);
        end
    end
    assign redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_wraddr_q = redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_wraddr_i[4:0];

    // redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_mem(DUALMEM,585)
    assign redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_mem_ia = $unsigned(redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_inputreg0_q);
    assign redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_mem_aa = redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_wraddr_q;
    assign redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_mem_ab = redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_rdcnt_q[4:0];
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(5),
        .numwords_a(32),
        .width_b(32),
        .widthad_b(5),
        .numwords_b(32),
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
    ) redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_mem_aa),
        .data_a(redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_mem_ab),
        .q_b(redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_mem_iq),
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
    assign redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_mem_q = redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_mem_iq[31:0];

    // redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_outputreg0(DELAY,584)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_outputreg0_q <= $unsigned(redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_mem_q);
        end
    end

    // redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_inputreg0(DELAY,577)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_inputreg0_q <= $unsigned(redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_split_0_outputreg0_q);
        end
    end

    // redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_wraddr(COUNTER,580)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_wraddr_i <= $unsigned(redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_wraddr_i) + $unsigned(2'd1);
        end
    end
    assign redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_wraddr_q = redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_wraddr_i[1:0];

    // redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_mem(DUALMEM,579)
    assign redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_mem_ia = $unsigned(redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_inputreg0_q);
    assign redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_mem_aa = redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_wraddr_q;
    assign redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_mem_ab = redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_rdcnt_q[1:0];
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
    ) redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_mem_aa),
        .data_a(redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_mem_ab),
        .q_b(redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_mem_iq),
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
    assign redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_mem_q = redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_mem_iq[31:0];

    // redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_outputreg0(DELAY,578)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_outputreg0_q <= $unsigned(redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_mem_q);
        end
    end

    // yIsZero_uid151_i_div_if_loop_328(LOGICAL,150)@49
    assign yIsZero_uid151_i_div_if_loop_328_b = {31'b0000000000000000000000000000000, GND_q};
    assign yIsZero_uid151_i_div_if_loop_328_q = $unsigned(redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_outputreg0_q == yIsZero_uid151_i_div_if_loop_328_b ? 1'b1 : 1'b0);

    // resFinal_uid177_i_div_if_loop_328(MUX,176)@49
    assign resFinal_uid177_i_div_if_loop_328_s = yIsZero_uid151_i_div_if_loop_328_q;
    always @(resFinal_uid177_i_div_if_loop_328_s or prodPostRightShiftPostRndRange_uid172_i_div_if_loop_328_b or cstOvf_uid176_i_div_if_loop_328_q)
    begin
        unique case (resFinal_uid177_i_div_if_loop_328_s)
            1'b0 : resFinal_uid177_i_div_if_loop_328_q = prodPostRightShiftPostRndRange_uid172_i_div_if_loop_328_b;
            1'b1 : resFinal_uid177_i_div_if_loop_328_q = cstOvf_uid176_i_div_if_loop_328_q;
            default : resFinal_uid177_i_div_if_loop_328_q = 32'b0;
        endcase
    end

    // redist27_resFinal_uid177_i_div_if_loop_328_q_4_inputreg0(DELAY,564)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist27_resFinal_uid177_i_div_if_loop_328_q_4_inputreg0_q <= $unsigned(resFinal_uid177_i_div_if_loop_328_q);
        end
    end

    // redist27_resFinal_uid177_i_div_if_loop_328_q_4(DELAY,495)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist27_resFinal_uid177_i_div_if_loop_328_q_4_delay_0 <= $unsigned(redist27_resFinal_uid177_i_div_if_loop_328_q_4_inputreg0_q);
            redist27_resFinal_uid177_i_div_if_loop_328_q_4_delay_1 <= redist27_resFinal_uid177_i_div_if_loop_328_q_4_delay_0;
            redist27_resFinal_uid177_i_div_if_loop_328_q_4_q <= redist27_resFinal_uid177_i_div_if_loop_328_q_4_delay_1;
        end
    end

    // redist28_resFinal_uid177_i_div_if_loop_328_q_5(DELAY,496)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist28_resFinal_uid177_i_div_if_loop_328_q_5_q <= $unsigned(redist27_resFinal_uid177_i_div_if_loop_328_q_4_q);
        end
    end

    // resFinalMP1_uid194_i_div_if_loop_328(SUB,193)@54
    assign resFinalMP1_uid194_i_div_if_loop_328_a = $unsigned({{1{redist28_resFinal_uid177_i_div_if_loop_328_q_5_q[31]}}, redist28_resFinal_uid177_i_div_if_loop_328_q_5_q});
    assign resFinalMP1_uid194_i_div_if_loop_328_b = $unsigned({{31{cstSubFinal_uid193_i_div_if_loop_328_q[1]}}, cstSubFinal_uid193_i_div_if_loop_328_q});
    assign resFinalMP1_uid194_i_div_if_loop_328_o = $unsigned($signed(resFinalMP1_uid194_i_div_if_loop_328_a) - $signed(resFinalMP1_uid194_i_div_if_loop_328_b));
    assign resFinalMP1_uid194_i_div_if_loop_328_q = resFinalMP1_uid194_i_div_if_loop_328_o[32:0];

    // resFinalPostMux_uid195_i_div_if_loop_328(BITSELECT,194)@54
    assign resFinalPostMux_uid195_i_div_if_loop_328_in = $unsigned(resFinalMP1_uid194_i_div_if_loop_328_q[31:0]);
    assign resFinalPostMux_uid195_i_div_if_loop_328_b = $unsigned(resFinalPostMux_uid195_i_div_if_loop_328_in[31:0]);

    // redist25_resFinalPostMux_uid195_i_div_if_loop_328_b_1(DELAY,493)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist25_resFinalPostMux_uid195_i_div_if_loop_328_b_1_q <= $unsigned(resFinalPostMux_uid195_i_div_if_loop_328_b);
        end
    end

    // redist29_resFinal_uid177_i_div_if_loop_328_q_6(DELAY,497)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist29_resFinal_uid177_i_div_if_loop_328_q_6_q <= $unsigned(redist28_resFinal_uid177_i_div_if_loop_328_q_5_q);
        end
    end

    // signResFinal_uid186_i_div_if_loop_328(BITSELECT,185)@53
    assign signResFinal_uid186_i_div_if_loop_328_b = $unsigned(redist27_resFinal_uid177_i_div_if_loop_328_q_4_q[31:31]);

    // OverflowCond_uid187_i_div_if_loop_328(LOGICAL,186)@53 + 1
    assign OverflowCond_uid187_i_div_if_loop_328_qi = redist30_signX_uid175_i_div_if_loop_328_b_4_q & redist41_xMSB_uid137_i_div_if_loop_328_b_43_q & signResFinal_uid186_i_div_if_loop_328_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    OverflowCond_uid187_i_div_if_loop_328_delay ( .xin(OverflowCond_uid187_i_div_if_loop_328_qi), .xout(OverflowCond_uid187_i_div_if_loop_328_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist26_OverflowCond_uid187_i_div_if_loop_328_q_2(DELAY,494)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist26_OverflowCond_uid187_i_div_if_loop_328_q_2_q <= $unsigned(OverflowCond_uid187_i_div_if_loop_328_q);
        end
    end

    // redist31_signX_uid175_i_div_if_loop_328_b_6(DELAY,499)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist31_signX_uid175_i_div_if_loop_328_b_6_delay_0 <= $unsigned(redist30_signX_uid175_i_div_if_loop_328_b_4_q);
            redist31_signX_uid175_i_div_if_loop_328_b_6_q <= redist31_signX_uid175_i_div_if_loop_328_b_6_delay_0;
        end
    end

    // prodResY_uid178_i_div_if_loop_328_bs4(BITSELECT,432)@49
    assign prodResY_uid178_i_div_if_loop_328_bs4_in = $unsigned(resFinal_uid177_i_div_if_loop_328_q[17:0]);
    assign prodResY_uid178_i_div_if_loop_328_bs4_b = $unsigned(prodResY_uid178_i_div_if_loop_328_bs4_in[17:0]);

    // prodResY_uid178_i_div_if_loop_328_bs2(BITSELECT,430)@49
    assign prodResY_uid178_i_div_if_loop_328_bs2_b = $unsigned(redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_outputreg0_q[31:18]);

    // prodResY_uid178_i_div_if_loop_328_bs7(BITSELECT,435)@49
    assign prodResY_uid178_i_div_if_loop_328_bs7_in = $unsigned(redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_outputreg0_q[17:0]);
    assign prodResY_uid178_i_div_if_loop_328_bs7_b = $unsigned(prodResY_uid178_i_div_if_loop_328_bs7_in[17:0]);

    // prodResY_uid178_i_div_if_loop_328_bs1(BITSELECT,429)@49
    assign prodResY_uid178_i_div_if_loop_328_bs1_b = $unsigned(resFinal_uid177_i_div_if_loop_328_q[31:18]);

    // prodResY_uid178_i_div_if_loop_328_ma3_cma(CHAINMULTADD,456)@49 + 5
    // out q@55
    assign prodResY_uid178_i_div_if_loop_328_ma3_cma_reset = ~ (resetn);
    assign prodResY_uid178_i_div_if_loop_328_ma3_cma_ena0 = 1'b1;
    assign prodResY_uid178_i_div_if_loop_328_ma3_cma_ena1 = prodResY_uid178_i_div_if_loop_328_ma3_cma_ena0;
    assign prodResY_uid178_i_div_if_loop_328_ma3_cma_ena2 = prodResY_uid178_i_div_if_loop_328_ma3_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            prodResY_uid178_i_div_if_loop_328_ma3_cma_ah[0] <= prodResY_uid178_i_div_if_loop_328_bs1_b;
            prodResY_uid178_i_div_if_loop_328_ma3_cma_ah[1] <= prodResY_uid178_i_div_if_loop_328_bs2_b;
            prodResY_uid178_i_div_if_loop_328_ma3_cma_ch[0] <= prodResY_uid178_i_div_if_loop_328_bs7_b;
            prodResY_uid178_i_div_if_loop_328_ma3_cma_ch[1] <= prodResY_uid178_i_div_if_loop_328_bs4_b;
        end
    end

    assign prodResY_uid178_i_div_if_loop_328_ma3_cma_a0 = $unsigned(prodResY_uid178_i_div_if_loop_328_ma3_cma_ah[0]);
    assign prodResY_uid178_i_div_if_loop_328_ma3_cma_c0 = prodResY_uid178_i_div_if_loop_328_ma3_cma_ch[0];
    assign prodResY_uid178_i_div_if_loop_328_ma3_cma_a1 = $unsigned(prodResY_uid178_i_div_if_loop_328_ma3_cma_ah[1]);
    assign prodResY_uid178_i_div_if_loop_328_ma3_cma_c1 = prodResY_uid178_i_div_if_loop_328_ma3_cma_ch[1];
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
        .signed_may("true"),
        .signed_mby("true"),
        .signed_max("false"),
        .signed_mbx("false"),
        .input_pipeline_clock("2"),
        .second_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(33)
    ) prodResY_uid178_i_div_if_loop_328_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ prodResY_uid178_i_div_if_loop_328_ma3_cma_ena2, prodResY_uid178_i_div_if_loop_328_ma3_cma_ena1, prodResY_uid178_i_div_if_loop_328_ma3_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(prodResY_uid178_i_div_if_loop_328_ma3_cma_a1),
        .by(prodResY_uid178_i_div_if_loop_328_ma3_cma_a0),
        .ax(prodResY_uid178_i_div_if_loop_328_ma3_cma_c1),
        .bx(prodResY_uid178_i_div_if_loop_328_ma3_cma_c0),
        .resulta(prodResY_uid178_i_div_if_loop_328_ma3_cma_s0),
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
    prodResY_uid178_i_div_if_loop_328_ma3_cma_delay ( .xin(prodResY_uid178_i_div_if_loop_328_ma3_cma_s0), .xout(prodResY_uid178_i_div_if_loop_328_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodResY_uid178_i_div_if_loop_328_ma3_cma_q = $unsigned(prodResY_uid178_i_div_if_loop_328_ma3_cma_qq[32:0]);

    // prodResY_uid178_i_div_if_loop_328_sums_align_1(BITSHIFT,440)@55
    assign prodResY_uid178_i_div_if_loop_328_sums_align_1_qint = { prodResY_uid178_i_div_if_loop_328_ma3_cma_q, 18'b000000000000000000 };
    assign prodResY_uid178_i_div_if_loop_328_sums_align_1_q = prodResY_uid178_i_div_if_loop_328_sums_align_1_qint[50:0];

    // prodResY_uid178_i_div_if_loop_328_im0_cma(CHAINMULTADD,452)@49 + 5
    // out q@55
    assign prodResY_uid178_i_div_if_loop_328_im0_cma_reset = ~ (resetn);
    assign prodResY_uid178_i_div_if_loop_328_im0_cma_ena0 = 1'b1;
    assign prodResY_uid178_i_div_if_loop_328_im0_cma_ena1 = prodResY_uid178_i_div_if_loop_328_im0_cma_ena0;
    assign prodResY_uid178_i_div_if_loop_328_im0_cma_ena2 = prodResY_uid178_i_div_if_loop_328_im0_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            prodResY_uid178_i_div_if_loop_328_im0_cma_ah[0] <= prodResY_uid178_i_div_if_loop_328_bs1_b;
            prodResY_uid178_i_div_if_loop_328_im0_cma_ch[0] <= prodResY_uid178_i_div_if_loop_328_bs2_b;
        end
    end

    assign prodResY_uid178_i_div_if_loop_328_im0_cma_a0 = $unsigned(prodResY_uid178_i_div_if_loop_328_im0_cma_ah[0]);
    assign prodResY_uid178_i_div_if_loop_328_im0_cma_c0 = $unsigned(prodResY_uid178_i_div_if_loop_328_im0_cma_ch[0]);
    fourteennm_mac #(
        .operation_mode("m18x18_full"),
        .clear_type("none"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .ax_clock("0"),
        .ax_width(14),
        .signed_may("true"),
        .signed_max("true"),
        .input_pipeline_clock("2"),
        .second_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(28)
    ) prodResY_uid178_i_div_if_loop_328_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ prodResY_uid178_i_div_if_loop_328_im0_cma_ena2, prodResY_uid178_i_div_if_loop_328_im0_cma_ena1, prodResY_uid178_i_div_if_loop_328_im0_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(prodResY_uid178_i_div_if_loop_328_im0_cma_a0),
        .ax(prodResY_uid178_i_div_if_loop_328_im0_cma_c0),
        .resulta(prodResY_uid178_i_div_if_loop_328_im0_cma_s0),
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
    dspba_delay_ver #( .width(28), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodResY_uid178_i_div_if_loop_328_im0_cma_delay ( .xin(prodResY_uid178_i_div_if_loop_328_im0_cma_s0), .xout(prodResY_uid178_i_div_if_loop_328_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodResY_uid178_i_div_if_loop_328_im0_cma_q = $unsigned(prodResY_uid178_i_div_if_loop_328_im0_cma_qq[27:0]);

    // prodResY_uid178_i_div_if_loop_328_im8_cma(CHAINMULTADD,453)@49 + 5
    // out q@55
    assign prodResY_uid178_i_div_if_loop_328_im8_cma_reset = ~ (resetn);
    assign prodResY_uid178_i_div_if_loop_328_im8_cma_ena0 = 1'b1;
    assign prodResY_uid178_i_div_if_loop_328_im8_cma_ena1 = prodResY_uid178_i_div_if_loop_328_im8_cma_ena0;
    assign prodResY_uid178_i_div_if_loop_328_im8_cma_ena2 = prodResY_uid178_i_div_if_loop_328_im8_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            prodResY_uid178_i_div_if_loop_328_im8_cma_ah[0] <= prodResY_uid178_i_div_if_loop_328_bs4_b;
            prodResY_uid178_i_div_if_loop_328_im8_cma_ch[0] <= prodResY_uid178_i_div_if_loop_328_bs7_b;
        end
    end

    assign prodResY_uid178_i_div_if_loop_328_im8_cma_a0 = prodResY_uid178_i_div_if_loop_328_im8_cma_ah[0];
    assign prodResY_uid178_i_div_if_loop_328_im8_cma_c0 = prodResY_uid178_i_div_if_loop_328_im8_cma_ch[0];
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
    ) prodResY_uid178_i_div_if_loop_328_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ prodResY_uid178_i_div_if_loop_328_im8_cma_ena2, prodResY_uid178_i_div_if_loop_328_im8_cma_ena1, prodResY_uid178_i_div_if_loop_328_im8_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(prodResY_uid178_i_div_if_loop_328_im8_cma_a0),
        .ax(prodResY_uid178_i_div_if_loop_328_im8_cma_c0),
        .resulta(prodResY_uid178_i_div_if_loop_328_im8_cma_s0),
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
    prodResY_uid178_i_div_if_loop_328_im8_cma_delay ( .xin(prodResY_uid178_i_div_if_loop_328_im8_cma_s0), .xout(prodResY_uid178_i_div_if_loop_328_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodResY_uid178_i_div_if_loop_328_im8_cma_q = $unsigned(prodResY_uid178_i_div_if_loop_328_im8_cma_qq[35:0]);

    // prodResY_uid178_i_div_if_loop_328_sums_join_0(BITJOIN,439)@55
    assign prodResY_uid178_i_div_if_loop_328_sums_join_0_q = {prodResY_uid178_i_div_if_loop_328_im0_cma_q, prodResY_uid178_i_div_if_loop_328_im8_cma_q};

    // prodResY_uid178_i_div_if_loop_328_sums_result_add_0_0(ADD,442)@55
    assign prodResY_uid178_i_div_if_loop_328_sums_result_add_0_0_a = $unsigned({{1{prodResY_uid178_i_div_if_loop_328_sums_join_0_q[63]}}, prodResY_uid178_i_div_if_loop_328_sums_join_0_q});
    assign prodResY_uid178_i_div_if_loop_328_sums_result_add_0_0_b = $unsigned({{14{prodResY_uid178_i_div_if_loop_328_sums_align_1_q[50]}}, prodResY_uid178_i_div_if_loop_328_sums_align_1_q});
    assign prodResY_uid178_i_div_if_loop_328_sums_result_add_0_0_o = $unsigned($signed(prodResY_uid178_i_div_if_loop_328_sums_result_add_0_0_a) + $signed(prodResY_uid178_i_div_if_loop_328_sums_result_add_0_0_b));
    assign prodResY_uid178_i_div_if_loop_328_sums_result_add_0_0_q = prodResY_uid178_i_div_if_loop_328_sums_result_add_0_0_o[64:0];

    // prod_qy_LT_x_uid180_i_div_if_loop_328(COMPARE,179)@55
    assign prod_qy_LT_x_uid180_i_div_if_loop_328_a = $unsigned({{1{prodResY_uid178_i_div_if_loop_328_sums_result_add_0_0_q[64]}}, prodResY_uid178_i_div_if_loop_328_sums_result_add_0_0_q});
    assign prod_qy_LT_x_uid180_i_div_if_loop_328_b = $unsigned({{34{redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_outputreg0_q[31]}}, redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_outputreg0_q});
    assign prod_qy_LT_x_uid180_i_div_if_loop_328_o = $unsigned($signed(prod_qy_LT_x_uid180_i_div_if_loop_328_a) - $signed(prod_qy_LT_x_uid180_i_div_if_loop_328_b));
    assign prod_qy_LT_x_uid180_i_div_if_loop_328_c[0] = prod_qy_LT_x_uid180_i_div_if_loop_328_o[65];

    // CondNegX_uid188_i_div_if_loop_328(LOGICAL,187)@55
    assign CondNegX_uid188_i_div_if_loop_328_q = prod_qy_LT_x_uid180_i_div_if_loop_328_c & redist31_signX_uid175_i_div_if_loop_328_b_6_q;

    // invSignX_uid189_i_div_if_loop_328(LOGICAL,188)@55
    assign invSignX_uid189_i_div_if_loop_328_q = ~ (redist31_signX_uid175_i_div_if_loop_328_b_6_q);

    // prod_qy_GT_x_uid179_i_div_if_loop_328(COMPARE,178)@55
    assign prod_qy_GT_x_uid179_i_div_if_loop_328_a = $unsigned({{34{redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_outputreg0_q[31]}}, redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_outputreg0_q});
    assign prod_qy_GT_x_uid179_i_div_if_loop_328_b = $unsigned({{1{prodResY_uid178_i_div_if_loop_328_sums_result_add_0_0_q[64]}}, prodResY_uid178_i_div_if_loop_328_sums_result_add_0_0_q});
    assign prod_qy_GT_x_uid179_i_div_if_loop_328_o = $unsigned($signed(prod_qy_GT_x_uid179_i_div_if_loop_328_a) - $signed(prod_qy_GT_x_uid179_i_div_if_loop_328_b));
    assign prod_qy_GT_x_uid179_i_div_if_loop_328_c[0] = prod_qy_GT_x_uid179_i_div_if_loop_328_o[65];

    // CondPosX_uid190_i_div_if_loop_328(LOGICAL,189)@55
    assign CondPosX_uid190_i_div_if_loop_328_q = prod_qy_GT_x_uid179_i_div_if_loop_328_c & invSignX_uid189_i_div_if_loop_328_q;

    // postMuxSelect_uid191_i_div_if_loop_328(LOGICAL,190)@55
    assign postMuxSelect_uid191_i_div_if_loop_328_q = CondPosX_uid190_i_div_if_loop_328_q | CondNegX_uid188_i_div_if_loop_328_q | redist26_OverflowCond_uid187_i_div_if_loop_328_q_2_q;

    // resFinalIntDiv_uid196_i_div_if_loop_328(MUX,195)@55
    assign resFinalIntDiv_uid196_i_div_if_loop_328_s = postMuxSelect_uid191_i_div_if_loop_328_q;
    always @(resFinalIntDiv_uid196_i_div_if_loop_328_s or redist29_resFinal_uid177_i_div_if_loop_328_q_6_q or redist25_resFinalPostMux_uid195_i_div_if_loop_328_b_1_q)
    begin
        unique case (resFinalIntDiv_uid196_i_div_if_loop_328_s)
            1'b0 : resFinalIntDiv_uid196_i_div_if_loop_328_q = redist29_resFinal_uid177_i_div_if_loop_328_q_6_q;
            1'b1 : resFinalIntDiv_uid196_i_div_if_loop_328_q = redist25_resFinalPostMux_uid195_i_div_if_loop_328_b_1_q;
            default : resFinalIntDiv_uid196_i_div_if_loop_328_q = 32'b0;
        endcase
    end

    // redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_rdcnt(ADD,576)
    assign redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_rdcnt_a = {1'b0, redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_wraddr_q};
    assign redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_rdcnt_b = {1'b0, redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_rdcnt_o <= $unsigned(redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_rdcnt_a) + $unsigned(redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_rdcnt_b);
        end
    end
    assign redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_rdcnt_q = redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_rdcnt_o[2:0];

    // redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_inputreg0(DELAY,571)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_inputreg0_q <= $unsigned(redist53_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_6_outputreg0_q);
        end
    end

    // redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_wraddr(COUNTER,574)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_wraddr_i <= $unsigned(redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_wraddr_i) + $unsigned(2'd1);
        end
    end
    assign redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_wraddr_q = redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_wraddr_i[1:0];

    // redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_mem(DUALMEM,573)
    assign redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_mem_ia = $unsigned(redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_inputreg0_q);
    assign redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_mem_aa = redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_wraddr_q;
    assign redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_mem_ab = redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_rdcnt_q[1:0];
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
    ) redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_mem_aa),
        .data_a(redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_mem_ab),
        .q_b(redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_mem_iq),
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
    assign redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_mem_q = redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_mem_iq[31:0];

    // redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_outputreg0(DELAY,572)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_outputreg0_q <= $unsigned(redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_mem_q);
        end
    end

    // i_cmp2_if_loop_325(COMPARE,46)@49 + 1
    assign i_cmp2_if_loop_325_a = $unsigned({{2{c_i32_177_recast_x_q[31]}}, c_i32_177_recast_x_q});
    assign i_cmp2_if_loop_325_b = $unsigned({{2{redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_outputreg0_q[31]}}, redist56_bgTrunc_i_sub_if_loop_324_sel_x_b_40_outputreg0_q});
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_cmp2_if_loop_325_o <= $unsigned($signed(i_cmp2_if_loop_325_a) - $signed(i_cmp2_if_loop_325_b));
        end
    end
    assign i_cmp2_if_loop_325_c[0] = i_cmp2_if_loop_325_o[33];

    // redist65_i_cmp2_if_loop_325_c_6(DELAY,533)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist65_i_cmp2_if_loop_325_c_6_delay_0 <= $unsigned(i_cmp2_if_loop_325_c);
            redist65_i_cmp2_if_loop_325_c_6_delay_1 <= redist65_i_cmp2_if_loop_325_c_6_delay_0;
            redist65_i_cmp2_if_loop_325_c_6_delay_2 <= redist65_i_cmp2_if_loop_325_c_6_delay_1;
            redist65_i_cmp2_if_loop_325_c_6_delay_3 <= redist65_i_cmp2_if_loop_325_c_6_delay_2;
            redist65_i_cmp2_if_loop_325_c_6_q <= redist65_i_cmp2_if_loop_325_c_6_delay_3;
        end
    end

    // i_acl_if_loop_329(MUX,45)@55
    assign i_acl_if_loop_329_s = redist65_i_cmp2_if_loop_325_c_6_q;
    always @(i_acl_if_loop_329_s or redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_outputreg0_q or resFinalIntDiv_uid196_i_div_if_loop_328_q)
    begin
        unique case (i_acl_if_loop_329_s)
            1'b0 : i_acl_if_loop_329_q = redist54_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_30_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_327_mux_x_q_12_outputreg0_q;
            1'b1 : i_acl_if_loop_329_q = resFinalIntDiv_uid196_i_div_if_loop_328_q;
            default : i_acl_if_loop_329_q = 32'b0;
        endcase
    end

    // redist64_i_if_loop_3_b2_current_iter_isspec_if_loop_35_q_50(DELAY,532)
    dspba_delay_ver #( .width(1), .depth(50), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist64_i_if_loop_3_b2_current_iter_isspec_if_loop_35_q_50 ( .xin(i_if_loop_3_b2_current_iter_isspec_if_loop_35_q), .xout(redist64_i_if_loop_3_b2_current_iter_isspec_if_loop_35_q_50_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_ffwd_source_i32_unnamed_if_loop_310_if_loop_341(BLACKBOX,63)@55
    // out out_intel_reserved_ffwd_4_0@20000000
    if_loop_3_i_llvm_fpga_ffwd_source_i32_unnamed_10_if_loop_30 thei_llvm_fpga_ffwd_source_i32_unnamed_if_loop_310_if_loop_341 (
        .in_predicate_in(redist64_i_if_loop_3_b2_current_iter_isspec_if_loop_35_q_50_q),
        .in_src_data_in_4_0(i_acl_if_loop_329_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_intel_reserved_ffwd_4_0(i_llvm_fpga_ffwd_source_i32_unnamed_if_loop_310_if_loop_341_out_intel_reserved_ffwd_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,95)
    assign out_intel_reserved_ffwd_4_0 = i_llvm_fpga_ffwd_source_i32_unnamed_if_loop_310_if_loop_341_out_intel_reserved_ffwd_4_0;

    // dupName_1_regfree_osync_x(GPOUT,96)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going_if_loop_36_out_pipeline_dummy_out;

    // dupName_2_regfree_osync_x(GPOUT,97)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going_if_loop_36_out_pipeline_forked_out;

    // dupName_3_regfree_osync_x(GPOUT,98)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_if_loop_36_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,197)@54 + 1
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist47_sync_together91_aunroll_x_in_i_valid_54_q);
        end
    end

    // i_notcmp_if_loop_339(LOGICAL,69)@55
    assign i_notcmp_if_loop_339_q = redist59_i_unnamed_if_loop_335_q_50_q ^ VCC_q;

    // redist59_i_unnamed_if_loop_335_q_50(DELAY,527)
    dspba_delay_ver #( .width(1), .depth(50), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist59_i_unnamed_if_loop_335_q_50 ( .xin(i_unnamed_if_loop_335_q), .xout(redist59_i_unnamed_if_loop_335_q_50_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,134)@55
    assign out_c0_exi2_0_tpl = GND_q;
    assign out_c0_exi2_1_tpl = redist59_i_unnamed_if_loop_335_q_50_q;
    assign out_c0_exi2_2_tpl = i_notcmp_if_loop_339_q;
    assign out_if_loop_3_B2_current_iter_isspec = redist64_i_if_loop_3_b2_current_iter_isspec_if_loop_35_q_50_q;
    assign out_o_valid = valid_fanout_reg0_q;

endmodule
