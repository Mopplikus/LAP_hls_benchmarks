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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body11_if_loop_3s_c0_enter373_if_loop_30
// Created for function/kernel if_loop_3
// SystemVerilog created on Thu May  4 08:54:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module if_loop_3_i_sfc_logic_s_c0_in_for_body110000_enter373_if_loop_30 (
    input wire [31:0] in_lm1_if_loop_3_avm_readdata,
    input wire [0:0] in_lm1_if_loop_3_avm_writeack,
    input wire [0:0] in_lm1_if_loop_3_avm_waitrequest,
    input wire [0:0] in_lm1_if_loop_3_avm_readdatavalid,
    output wire [31:0] out_lm1_if_loop_3_avm_address,
    output wire [0:0] out_lm1_if_loop_3_avm_enable,
    output wire [0:0] out_lm1_if_loop_3_avm_read,
    output wire [0:0] out_lm1_if_loop_3_avm_write,
    output wire [31:0] out_lm1_if_loop_3_avm_writedata,
    output wire [3:0] out_lm1_if_loop_3_avm_byteenable,
    output wire [0:0] out_lm1_if_loop_3_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [0:0] in_intel_reserved_ffwd_3_0,
    input wire [32:0] in_intel_reserved_ffwd_4_0,
    output wire [0:0] out_exiting_valid_out,
    input wire [31:0] in_lm62_if_loop_3_avm_readdata,
    input wire [0:0] in_lm62_if_loop_3_avm_writeack,
    input wire [0:0] in_lm62_if_loop_3_avm_waitrequest,
    input wire [0:0] in_lm62_if_loop_3_avm_readdatavalid,
    output wire [31:0] out_lm62_if_loop_3_avm_address,
    output wire [0:0] out_lm62_if_loop_3_avm_enable,
    output wire [0:0] out_lm62_if_loop_3_avm_read,
    output wire [0:0] out_lm62_if_loop_3_avm_write,
    output wire [31:0] out_lm62_if_loop_3_avm_writedata,
    output wire [3:0] out_lm62_if_loop_3_avm_byteenable,
    output wire [0:0] out_lm62_if_loop_3_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_5_0,
    output wire [0:0] out_pipeline_dummy_out,
    output wire [0:0] out_pipeline_forked_out,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi240_0_tpl,
    output wire [0:0] out_c0_exi240_1_tpl,
    output wire [0:0] out_c0_exi240_2_tpl,
    output wire [0:0] out_if_loop_3_B4_current_iter_isspec,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni136_0_tpl,
    input wire [0:0] in_c0_eni136_1_tpl,
    input wire [0:0] in_dummy_in,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_072_q;
    wire [31:0] c_i32_100074_q;
    wire [31:0] c_i32_175_q;
    wire [32:0] c_i33_177_q;
    wire [32:0] c_i33_undef71_q;
    wire [63:0] c_if_loop_3_a_local_pmem_q;
    wire [63:0] c_if_loop_3_b_local_pmem_q;
    wire [0:0] i_acl_if_loop_327_s;
    reg [31:0] i_acl_if_loop_327_q;
    wire [1:0] i_arrayidx133_if_loop_316_vt_const_1_q;
    wire [63:0] i_arrayidx133_if_loop_316_vt_join_q;
    wire [61:0] i_arrayidx133_if_loop_316_vt_select_63_b;
    wire [63:0] i_arrayidx154_if_loop_319_vt_join_q;
    wire [61:0] i_arrayidx154_if_loop_319_vt_select_63_b;
    wire [33:0] i_cmp16_if_loop_323_a;
    wire [33:0] i_cmp16_if_loop_323_b;
    logic [33:0] i_cmp16_if_loop_323_o;
    wire [0:0] i_cmp16_if_loop_323_c;
    wire [0:0] i_fpga_indvars_iv4_replace_phi_if_loop_311_s;
    reg [32:0] i_fpga_indvars_iv4_replace_phi_if_loop_311_q;
    wire [33:0] i_fpga_indvars_iv_next5_if_loop_331_a;
    wire [33:0] i_fpga_indvars_iv_next5_if_loop_331_b;
    logic [33:0] i_fpga_indvars_iv_next5_if_loop_331_o;
    wire [33:0] i_fpga_indvars_iv_next5_if_loop_331_q;
    wire [63:0] i_idxprom12_if_loop_315_vt_join_q;
    wire [31:0] i_idxprom12_if_loop_315_vt_select_31_b;
    wire [0:0] i_if_loop_3_b4_current_iter_isspec_if_loop_35_q;
    wire [0:0] i_if_loop_3_b4_current_iter_isspec_or4_if_loop_320_q;
    wire [0:0] i_if_loop_3_b4_next_iter_isreal_if_loop_37_q;
    wire [32:0] i_inc18_if_loop_328_a;
    wire [32:0] i_inc18_if_loop_328_b;
    logic [32:0] i_inc18_if_loop_328_o;
    wire [32:0] i_inc18_if_loop_328_q;
    wire [0:0] i_llvm_fpga_dummy_thread_if_loop_3_b4_dummy_if_loop_32_out_dummy_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp101513_if_loop_332_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp101514_if_loop_312_out_dest_data_out_3_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_314_if_loop_39_out_dest_data_out_4_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_if_loop_315_if_loop_339_out_intel_reserved_ffwd_5_0;
    wire [0:0] i_llvm_fpga_forked_if_loop_3_b4_forked_if_loop_33_out_buffer_out;
    wire [31:0] i_llvm_fpga_mem_lm1_if_loop_318_out_lm1_if_loop_3_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm1_if_loop_318_out_lm1_if_loop_3_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_lm1_if_loop_318_out_lm1_if_loop_3_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm1_if_loop_318_out_lm1_if_loop_3_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm1_if_loop_318_out_lm1_if_loop_3_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm1_if_loop_318_out_lm1_if_loop_3_avm_write;
    wire [31:0] i_llvm_fpga_mem_lm1_if_loop_318_out_lm1_if_loop_3_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm1_if_loop_318_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_lm62_if_loop_321_out_lm62_if_loop_3_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm62_if_loop_321_out_lm62_if_loop_3_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_lm62_if_loop_321_out_lm62_if_loop_3_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm62_if_loop_321_out_lm62_if_loop_3_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm62_if_loop_321_out_lm62_if_loop_3_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm62_if_loop_321_out_lm62_if_loop_3_avm_write;
    wire [31:0] i_llvm_fpga_mem_lm62_if_loop_321_out_lm62_if_loop_3_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm62_if_loop_321_out_o_readdata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_36_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_36_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_36_out_pipeline_dummy_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_36_out_pipeline_forked_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_36_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_if_loop_338_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_if_loop_338_out_feedback_valid_out_3;
    wire [0:0] i_notcmp_if_loop_337_q;
    wire [32:0] i_sub_if_loop_322_a;
    wire [32:0] i_sub_if_loop_322_b;
    logic [32:0] i_sub_if_loop_322_o;
    wire [32:0] i_sub_if_loop_322_q;
    wire [0:0] i_unnamed_if_loop_313_q;
    wire [0:0] i_unnamed_if_loop_333_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next5_if_loop_331_sel_x_b;
    wire [31:0] bgTrunc_i_inc18_if_loop_328_sel_x_b;
    wire [31:0] bgTrunc_i_sub_if_loop_322_sel_x_b;
    wire [31:0] c_i32_173_recast_x_q;
    wire [9:0] i_arrayidx133_if_loop_30_add_x_a;
    wire [9:0] i_arrayidx133_if_loop_30_add_x_b;
    logic [9:0] i_arrayidx133_if_loop_30_add_x_o;
    wire [9:0] i_arrayidx133_if_loop_30_add_x_q;
    wire [63:0] i_arrayidx133_if_loop_30_append_upper_bits_x_q;
    wire [6:0] i_arrayidx133_if_loop_30_narrow_x_b;
    wire [8:0] i_arrayidx133_if_loop_30_shift_join_x_q;
    wire [8:0] i_arrayidx133_if_loop_30_dupName_0_trunc_sel_x_b;
    wire [8:0] i_arrayidx133_if_loop_30_dupName_2_trunc_sel_x_b;
    wire [9:0] i_arrayidx154_if_loop_30_add_x_a;
    wire [9:0] i_arrayidx154_if_loop_30_add_x_b;
    logic [9:0] i_arrayidx154_if_loop_30_add_x_o;
    wire [9:0] i_arrayidx154_if_loop_30_add_x_q;
    wire [63:0] i_arrayidx154_if_loop_30_append_upper_bits_x_q;
    wire [8:0] i_arrayidx154_if_loop_30_dupName_2_trunc_sel_x_b;
    wire [63:0] i_idxprom12_if_loop_315_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_if_loop_3_b4_current_iter_isreal_if_loop_30_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b4_current_iter_isreal_if_loop_34_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_if_loop_3_b4_current_iter_isreal_if_loop_30_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b4_current_iter_isreal_if_loop_34_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_i_116_pop12_if_loop_30_i_llvm_fpga_pop_i32_i_116_pop12_if_loop_314_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_i_116_pop12_if_loop_30_i_llvm_fpga_pop_i32_i_116_pop12_if_loop_314_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_s;
    reg [31:0] i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv4_pop10_if_loop_30_i_llvm_fpga_pop_i33_fpga_indvars_iv4_pop10_if_loop_310_mux_x_s;
    reg [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv4_pop10_if_loop_30_i_llvm_fpga_pop_i33_fpga_indvars_iv4_pop10_if_loop_310_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_c_i7_03_x_q;
    wire [7:0] i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_31_x_i_valid;
    wire i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_31_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_31_x_i_stall;
    wire i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_31_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_31_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_31_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i32_i_116_push12_if_loop_30_i_llvm_fpga_push_i32_i_116_push12_if_loop_31_x_i_valid;
    wire i_llvm_fpga_push_i32_i_116_push12_if_loop_30_i_llvm_fpga_push_i32_i_116_push12_if_loop_31_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_i_116_push12_if_loop_30_i_llvm_fpga_push_i32_i_116_push12_if_loop_31_x_i_stall;
    wire i_llvm_fpga_push_i32_i_116_push12_if_loop_30_i_llvm_fpga_push_i32_i_116_push12_if_loop_31_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_i_116_push12_if_loop_30_i_llvm_fpga_push_i32_i_116_push12_if_loop_31_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_i_116_push12_if_loop_30_i_llvm_fpga_push_i32_i_116_push12_if_loop_31_x_o_data;
    wire [0:0] i_llvm_fpga_push_i32_sum_017_push11_if_loop_30_i_llvm_fpga_push_i32_sum_017_push11_if_loop_31_x_i_valid;
    wire i_llvm_fpga_push_i32_sum_017_push11_if_loop_30_i_llvm_fpga_push_i32_sum_017_push11_if_loop_31_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i32_sum_017_push11_if_loop_30_i_llvm_fpga_push_i32_sum_017_push11_if_loop_31_x_i_stall;
    wire i_llvm_fpga_push_i32_sum_017_push11_if_loop_30_i_llvm_fpga_push_i32_sum_017_push11_if_loop_31_x_i_stall_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i32_sum_017_push11_if_loop_30_i_llvm_fpga_push_i32_sum_017_push11_if_loop_31_x_i_data;
    wire [31:0] i_llvm_fpga_push_i32_sum_017_push11_if_loop_30_i_llvm_fpga_push_i32_sum_017_push11_if_loop_31_x_o_data;
    wire [30:0] i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_30_c_i31_03_x_q;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_30_element_extension2_x_q;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_30_i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_31_x_i_valid;
    wire i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_30_i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_31_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_30_i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_31_x_i_stall;
    wire i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_30_i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_31_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_30_i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_31_x_i_data;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_30_i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_31_x_o_data;
    wire [32:0] i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_30_adapt_scalar_trunc4_sel_x_b;
    wire [0:0] xMSB_uid151_i_div_if_loop_326_b;
    wire [31:0] yPSE_uid153_i_div_if_loop_326_b;
    wire [31:0] yPSE_uid153_i_div_if_loop_326_qi;
    reg [31:0] yPSE_uid153_i_div_if_loop_326_q;
    wire [32:0] yPSEA_uid155_i_div_if_loop_326_a;
    wire [32:0] yPSEA_uid155_i_div_if_loop_326_b;
    logic [32:0] yPSEA_uid155_i_div_if_loop_326_o;
    wire [32:0] yPSEA_uid155_i_div_if_loop_326_q;
    wire [31:0] yPS_uid156_i_div_if_loop_326_in;
    wire [31:0] yPS_uid156_i_div_if_loop_326_b;
    wire [30:0] normYNoLeadOne_uid159_i_div_if_loop_326_in;
    wire [30:0] normYNoLeadOne_uid159_i_div_if_loop_326_b;
    wire [31:0] updatedY_uid161_i_div_if_loop_326_q;
    wire [31:0] normYIsOneC2_uid160_i_div_if_loop_326_a;
    wire [0:0] normYIsOneC2_uid160_i_div_if_loop_326_qi;
    reg [0:0] normYIsOneC2_uid160_i_div_if_loop_326_q;
    wire [0:0] normYIsOneC2_uid163_i_div_if_loop_326_b;
    wire [0:0] normYIsOne_uid164_i_div_if_loop_326_qi;
    reg [0:0] normYIsOne_uid164_i_div_if_loop_326_q;
    wire [31:0] yIsZero_uid165_i_div_if_loop_326_b;
    wire [0:0] yIsZero_uid165_i_div_if_loop_326_qi;
    reg [0:0] yIsZero_uid165_i_div_if_loop_326_q;
    wire [38:0] fxpInverseRes_uid170_i_div_if_loop_326_in;
    wire [32:0] fxpInverseRes_uid170_i_div_if_loop_326_b;
    wire [32:0] oneInvRes_uid171_i_div_if_loop_326_q;
    wire [0:0] invResPostOneHandling2_uid172_i_div_if_loop_326_s;
    reg [32:0] invResPostOneHandling2_uid172_i_div_if_loop_326_q;
    wire [5:0] cWOut_uid173_i_div_if_loop_326_q;
    wire [6:0] rShiftCount_uid174_i_div_if_loop_326_a;
    wire [6:0] rShiftCount_uid174_i_div_if_loop_326_b;
    logic [6:0] rShiftCount_uid174_i_div_if_loop_326_o;
    wire [6:0] rShiftCount_uid174_i_div_if_loop_326_q;
    wire [31:0] xPSX_uid175_i_div_if_loop_326_b;
    wire [31:0] xPSX_uid175_i_div_if_loop_326_qi;
    reg [31:0] xPSX_uid175_i_div_if_loop_326_q;
    wire [1:0] zMsbY0_uid177_i_div_if_loop_326_q;
    wire [32:0] xPSXE_uid178_i_div_if_loop_326_a;
    wire [32:0] xPSXE_uid178_i_div_if_loop_326_b;
    logic [32:0] xPSXE_uid178_i_div_if_loop_326_o;
    wire [32:0] xPSXE_uid178_i_div_if_loop_326_q;
    wire [64:0] rightShiftInput_uid181_i_div_if_loop_326_in;
    wire [64:0] rightShiftInput_uid181_i_div_if_loop_326_b;
    wire [62:0] prodPostRightShiftPost_uid183_i_div_if_loop_326_in;
    wire [32:0] prodPostRightShiftPost_uid183_i_div_if_loop_326_b;
    wire [33:0] prodPostRightShiftPostRnd_uid185_i_div_if_loop_326_a;
    wire [33:0] prodPostRightShiftPostRnd_uid185_i_div_if_loop_326_b;
    logic [33:0] prodPostRightShiftPostRnd_uid185_i_div_if_loop_326_o;
    wire [33:0] prodPostRightShiftPostRnd_uid185_i_div_if_loop_326_q;
    wire [32:0] prodPostRightShiftPostRndRange_uid186_i_div_if_loop_326_in;
    wire [31:0] prodPostRightShiftPostRndRange_uid186_i_div_if_loop_326_b;
    wire [31:0] cstValOvfPos_uid187_i_div_if_loop_326_q;
    wire [31:0] cstValOvfneg_uid188_i_div_if_loop_326_q;
    wire [0:0] signX_uid189_i_div_if_loop_326_b;
    wire [0:0] cstOvf_uid190_i_div_if_loop_326_s;
    reg [31:0] cstOvf_uid190_i_div_if_loop_326_q;
    wire [0:0] resFinal_uid191_i_div_if_loop_326_s;
    reg [31:0] resFinal_uid191_i_div_if_loop_326_q;
    wire [65:0] prod_qy_GT_x_uid193_i_div_if_loop_326_a;
    wire [65:0] prod_qy_GT_x_uid193_i_div_if_loop_326_b;
    logic [65:0] prod_qy_GT_x_uid193_i_div_if_loop_326_o;
    wire [0:0] prod_qy_GT_x_uid193_i_div_if_loop_326_c;
    wire [65:0] prod_qy_LT_x_uid194_i_div_if_loop_326_a;
    wire [65:0] prod_qy_LT_x_uid194_i_div_if_loop_326_b;
    logic [65:0] prod_qy_LT_x_uid194_i_div_if_loop_326_o;
    wire [0:0] prod_qy_LT_x_uid194_i_div_if_loop_326_c;
    wire [0:0] resultSign_uid199_i_div_if_loop_326_qi;
    reg [0:0] resultSign_uid199_i_div_if_loop_326_q;
    wire [0:0] signResFinal_uid200_i_div_if_loop_326_b;
    wire [0:0] OverflowCond_uid201_i_div_if_loop_326_q;
    wire [0:0] CondNegX_uid202_i_div_if_loop_326_q;
    wire [0:0] invSignX_uid203_i_div_if_loop_326_q;
    wire [0:0] CondPosX_uid204_i_div_if_loop_326_q;
    wire [0:0] postMuxSelect_uid205_i_div_if_loop_326_q;
    wire [1:0] cstSubFinal_uid207_i_div_if_loop_326_q;
    wire [32:0] resFinalMP1_uid208_i_div_if_loop_326_a;
    wire [32:0] resFinalMP1_uid208_i_div_if_loop_326_b;
    logic [32:0] resFinalMP1_uid208_i_div_if_loop_326_o;
    wire [32:0] resFinalMP1_uid208_i_div_if_loop_326_q;
    wire [31:0] resFinalPostMux_uid209_i_div_if_loop_326_in;
    wire [31:0] resFinalPostMux_uid209_i_div_if_loop_326_b;
    wire [0:0] resFinalIntDiv_uid210_i_div_if_loop_326_s;
    reg [31:0] resFinalIntDiv_uid210_i_div_if_loop_326_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg5_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg7_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg9_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg10_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg12_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg13_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg14_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg15_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg16_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg17_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg18_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg19_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg20_q;
    wire [0:0] vCount_uid235_zCount_uid157_i_div_if_loop_326_qi;
    reg [0:0] vCount_uid235_zCount_uid157_i_div_if_loop_326_q;
    wire [0:0] vStagei_uid238_zCount_uid157_i_div_if_loop_326_s;
    reg [31:0] vStagei_uid238_zCount_uid157_i_div_if_loop_326_q;
    wire [15:0] zs_uid239_zCount_uid157_i_div_if_loop_326_q;
    wire [0:0] vCount_uid241_zCount_uid157_i_div_if_loop_326_qi;
    reg [0:0] vCount_uid241_zCount_uid157_i_div_if_loop_326_q;
    wire [0:0] vStagei_uid244_zCount_uid157_i_div_if_loop_326_s;
    reg [15:0] vStagei_uid244_zCount_uid157_i_div_if_loop_326_q;
    wire [7:0] zs_uid245_zCount_uid157_i_div_if_loop_326_q;
    wire [0:0] vCount_uid247_zCount_uid157_i_div_if_loop_326_qi;
    reg [0:0] vCount_uid247_zCount_uid157_i_div_if_loop_326_q;
    wire [0:0] vStagei_uid250_zCount_uid157_i_div_if_loop_326_s;
    reg [7:0] vStagei_uid250_zCount_uid157_i_div_if_loop_326_q;
    wire [3:0] zs_uid251_zCount_uid157_i_div_if_loop_326_q;
    wire [0:0] vCount_uid253_zCount_uid157_i_div_if_loop_326_q;
    wire [0:0] vStagei_uid256_zCount_uid157_i_div_if_loop_326_s;
    reg [3:0] vStagei_uid256_zCount_uid157_i_div_if_loop_326_q;
    wire [0:0] vCount_uid259_zCount_uid157_i_div_if_loop_326_q;
    wire [0:0] vStagei_uid262_zCount_uid157_i_div_if_loop_326_s;
    reg [1:0] vStagei_uid262_zCount_uid157_i_div_if_loop_326_q;
    wire [0:0] rVStage_uid264_zCount_uid157_i_div_if_loop_326_b;
    wire [0:0] vCount_uid265_zCount_uid157_i_div_if_loop_326_q;
    wire [5:0] r_uid266_zCount_uid157_i_div_if_loop_326_q;
    wire [13:0] yT1_uid284_invPolyEval_b;
    wire [0:0] lowRangeB_uid286_invPolyEval_in;
    wire [0:0] lowRangeB_uid286_invPolyEval_b;
    wire [12:0] highBBits_uid287_invPolyEval_b;
    wire [21:0] s1sumAHighB_uid288_invPolyEval_a;
    wire [21:0] s1sumAHighB_uid288_invPolyEval_b;
    logic [21:0] s1sumAHighB_uid288_invPolyEval_o;
    wire [21:0] s1sumAHighB_uid288_invPolyEval_q;
    wire [22:0] s1_uid289_invPolyEval_q;
    wire [20:0] yT2_uid290_invPolyEval_b;
    wire [0:0] lowRangeB_uid292_invPolyEval_in;
    wire [0:0] lowRangeB_uid292_invPolyEval_b;
    wire [21:0] highBBits_uid293_invPolyEval_b;
    wire [29:0] s2sumAHighB_uid294_invPolyEval_a;
    wire [29:0] s2sumAHighB_uid294_invPolyEval_b;
    logic [29:0] s2sumAHighB_uid294_invPolyEval_o;
    wire [29:0] s2sumAHighB_uid294_invPolyEval_q;
    wire [30:0] s2_uid295_invPolyEval_q;
    wire [1:0] lowRangeB_uid298_invPolyEval_in;
    wire [1:0] lowRangeB_uid298_invPolyEval_b;
    wire [29:0] highBBits_uid299_invPolyEval_b;
    wire [38:0] s3sumAHighB_uid300_invPolyEval_a;
    wire [38:0] s3sumAHighB_uid300_invPolyEval_b;
    logic [38:0] s3sumAHighB_uid300_invPolyEval_o;
    wire [38:0] s3sumAHighB_uid300_invPolyEval_q;
    wire [40:0] s3_uid301_invPolyEval_q;
    wire [13:0] osig_uid304_pT1_uid285_invPolyEval_b;
    wire [22:0] osig_uid307_pT2_uid291_invPolyEval_b;
    wire [23:0] nx_mergedSignalTM_uid321_pT3_uid297_invPolyEval_q;
    wire [4:0] aboveLeftY_bottomExtension_uid326_pT3_uid297_invPolyEval_q;
    wire [17:0] aboveLeftY_mergedSignalTM_uid328_pT3_uid297_invPolyEval_q;
    wire [11:0] rightBottomX_bottomExtension_uid330_pT3_uid297_invPolyEval_q;
    wire [17:0] rightBottomX_mergedSignalTM_uid332_pT3_uid297_invPolyEval_q;
    wire [17:0] lowRangeB_uid338_pT3_uid297_invPolyEval_in;
    wire [17:0] lowRangeB_uid338_pT3_uid297_invPolyEval_b;
    wire [18:0] highBBits_uid339_pT3_uid297_invPolyEval_b;
    wire [36:0] lev1_a0sumAHighB_uid340_pT3_uid297_invPolyEval_a;
    wire [36:0] lev1_a0sumAHighB_uid340_pT3_uid297_invPolyEval_b;
    logic [36:0] lev1_a0sumAHighB_uid340_pT3_uid297_invPolyEval_o;
    wire [36:0] lev1_a0sumAHighB_uid340_pT3_uid297_invPolyEval_q;
    wire [54:0] lev1_a0_uid341_pT3_uid297_invPolyEval_q;
    wire [52:0] os_uid342_pT3_uid297_invPolyEval_in;
    wire [31:0] os_uid342_pT3_uid297_invPolyEval_b;
    wire [0:0] i_exitcond6_if_loop_329_cmp_nsign_q;
    wire [15:0] leftShiftStage0Idx1Rng16_uid355_normY_uid158_i_div_if_loop_326_in;
    wire [15:0] leftShiftStage0Idx1Rng16_uid355_normY_uid158_i_div_if_loop_326_b;
    wire [31:0] leftShiftStage0Idx1_uid356_normY_uid158_i_div_if_loop_326_q;
    wire [1:0] leftShiftStage0_uid360_normY_uid158_i_div_if_loop_326_s;
    reg [31:0] leftShiftStage0_uid360_normY_uid158_i_div_if_loop_326_q;
    wire [27:0] leftShiftStage1Idx1Rng4_uid362_normY_uid158_i_div_if_loop_326_in;
    wire [27:0] leftShiftStage1Idx1Rng4_uid362_normY_uid158_i_div_if_loop_326_b;
    wire [31:0] leftShiftStage1Idx1_uid363_normY_uid158_i_div_if_loop_326_q;
    wire [23:0] leftShiftStage1Idx2Rng8_uid365_normY_uid158_i_div_if_loop_326_in;
    wire [23:0] leftShiftStage1Idx2Rng8_uid365_normY_uid158_i_div_if_loop_326_b;
    wire [31:0] leftShiftStage1Idx2_uid366_normY_uid158_i_div_if_loop_326_q;
    wire [19:0] leftShiftStage1Idx3Rng12_uid368_normY_uid158_i_div_if_loop_326_in;
    wire [19:0] leftShiftStage1Idx3Rng12_uid368_normY_uid158_i_div_if_loop_326_b;
    wire [31:0] leftShiftStage1Idx3_uid369_normY_uid158_i_div_if_loop_326_q;
    wire [1:0] leftShiftStage1_uid371_normY_uid158_i_div_if_loop_326_s;
    reg [31:0] leftShiftStage1_uid371_normY_uid158_i_div_if_loop_326_q;
    wire [30:0] leftShiftStage2Idx1Rng1_uid373_normY_uid158_i_div_if_loop_326_in;
    wire [30:0] leftShiftStage2Idx1Rng1_uid373_normY_uid158_i_div_if_loop_326_b;
    wire [31:0] leftShiftStage2Idx1_uid374_normY_uid158_i_div_if_loop_326_q;
    wire [29:0] leftShiftStage2Idx2Rng2_uid376_normY_uid158_i_div_if_loop_326_in;
    wire [29:0] leftShiftStage2Idx2Rng2_uid376_normY_uid158_i_div_if_loop_326_b;
    wire [31:0] leftShiftStage2Idx2_uid377_normY_uid158_i_div_if_loop_326_q;
    wire [2:0] leftShiftStage2Idx3Pad3_uid378_normY_uid158_i_div_if_loop_326_q;
    wire [28:0] leftShiftStage2Idx3Rng3_uid379_normY_uid158_i_div_if_loop_326_in;
    wire [28:0] leftShiftStage2Idx3Rng3_uid379_normY_uid158_i_div_if_loop_326_b;
    wire [31:0] leftShiftStage2Idx3_uid380_normY_uid158_i_div_if_loop_326_q;
    wire [1:0] leftShiftStage2_uid382_normY_uid158_i_div_if_loop_326_s;
    reg [31:0] leftShiftStage2_uid382_normY_uid158_i_div_if_loop_326_q;
    wire [15:0] prodXInvY_uid180_i_div_if_loop_326_bjB3_q;
    wire [66:0] prodXInvY_uid180_i_div_if_loop_326_sums_join_0_q;
    wire [52:0] prodXInvY_uid180_i_div_if_loop_326_sums_align_1_q;
    wire [52:0] prodXInvY_uid180_i_div_if_loop_326_sums_align_1_qint;
    wire [67:0] prodXInvY_uid180_i_div_if_loop_326_sums_result_add_0_0_a;
    wire [67:0] prodXInvY_uid180_i_div_if_loop_326_sums_result_add_0_0_b;
    logic [67:0] prodXInvY_uid180_i_div_if_loop_326_sums_result_add_0_0_o;
    wire [67:0] prodXInvY_uid180_i_div_if_loop_326_sums_result_add_0_0_q;
    wire [0:0] xMSB_uid401_prodPostRightShift_uid182_i_div_if_loop_326_b;
    wire [63:0] rightShiftStage0Idx1Rng1_uid403_prodPostRightShift_uid182_i_div_if_loop_326_b;
    wire [64:0] rightShiftStage0Idx1_uid404_prodPostRightShift_uid182_i_div_if_loop_326_q;
    wire [1:0] seMsb_to2_uid405_in;
    wire [1:0] seMsb_to2_uid405_b;
    wire [62:0] rightShiftStage0Idx2Rng2_uid406_prodPostRightShift_uid182_i_div_if_loop_326_b;
    wire [64:0] rightShiftStage0Idx2_uid407_prodPostRightShift_uid182_i_div_if_loop_326_q;
    wire [2:0] seMsb_to3_uid408_in;
    wire [2:0] seMsb_to3_uid408_b;
    wire [61:0] rightShiftStage0Idx3Rng3_uid409_prodPostRightShift_uid182_i_div_if_loop_326_b;
    wire [64:0] rightShiftStage0Idx3_uid410_prodPostRightShift_uid182_i_div_if_loop_326_q;
    wire [1:0] rightShiftStage0_uid412_prodPostRightShift_uid182_i_div_if_loop_326_s;
    reg [64:0] rightShiftStage0_uid412_prodPostRightShift_uid182_i_div_if_loop_326_q;
    wire [3:0] seMsb_to4_uid413_in;
    wire [3:0] seMsb_to4_uid413_b;
    wire [60:0] rightShiftStage1Idx1Rng4_uid414_prodPostRightShift_uid182_i_div_if_loop_326_b;
    wire [64:0] rightShiftStage1Idx1_uid415_prodPostRightShift_uid182_i_div_if_loop_326_q;
    wire [7:0] seMsb_to8_uid416_in;
    wire [7:0] seMsb_to8_uid416_b;
    wire [56:0] rightShiftStage1Idx2Rng8_uid417_prodPostRightShift_uid182_i_div_if_loop_326_b;
    wire [64:0] rightShiftStage1Idx2_uid418_prodPostRightShift_uid182_i_div_if_loop_326_q;
    wire [11:0] seMsb_to12_uid419_in;
    wire [11:0] seMsb_to12_uid419_b;
    wire [52:0] rightShiftStage1Idx3Rng12_uid420_prodPostRightShift_uid182_i_div_if_loop_326_b;
    wire [64:0] rightShiftStage1Idx3_uid421_prodPostRightShift_uid182_i_div_if_loop_326_q;
    wire [1:0] rightShiftStage1_uid423_prodPostRightShift_uid182_i_div_if_loop_326_s;
    reg [64:0] rightShiftStage1_uid423_prodPostRightShift_uid182_i_div_if_loop_326_q;
    wire [15:0] seMsb_to16_uid424_in;
    wire [15:0] seMsb_to16_uid424_b;
    wire [48:0] rightShiftStage2Idx1Rng16_uid425_prodPostRightShift_uid182_i_div_if_loop_326_b;
    wire [64:0] rightShiftStage2Idx1_uid426_prodPostRightShift_uid182_i_div_if_loop_326_q;
    wire [31:0] seMsb_to32_uid427_in;
    wire [31:0] seMsb_to32_uid427_b;
    wire [32:0] rightShiftStage2Idx2Rng32_uid428_prodPostRightShift_uid182_i_div_if_loop_326_b;
    wire [64:0] rightShiftStage2Idx2_uid429_prodPostRightShift_uid182_i_div_if_loop_326_q;
    wire [47:0] seMsb_to48_uid430_in;
    wire [47:0] seMsb_to48_uid430_b;
    wire [16:0] rightShiftStage2Idx3Rng48_uid431_prodPostRightShift_uid182_i_div_if_loop_326_b;
    wire [64:0] rightShiftStage2Idx3_uid432_prodPostRightShift_uid182_i_div_if_loop_326_q;
    wire [1:0] rightShiftStage2_uid434_prodPostRightShift_uid182_i_div_if_loop_326_s;
    reg [64:0] rightShiftStage2_uid434_prodPostRightShift_uid182_i_div_if_loop_326_q;
    wire [63:0] seMsb_to64_uid435_in;
    wire [63:0] seMsb_to64_uid435_b;
    wire [0:0] rightShiftStage3Idx1Rng64_uid436_prodPostRightShift_uid182_i_div_if_loop_326_b;
    wire [64:0] rightShiftStage3Idx1_uid437_prodPostRightShift_uid182_i_div_if_loop_326_q;
    wire [0:0] rightShiftStage3_uid439_prodPostRightShift_uid182_i_div_if_loop_326_s;
    reg [64:0] rightShiftStage3_uid439_prodPostRightShift_uid182_i_div_if_loop_326_q;
    wire [13:0] prodResY_uid192_i_div_if_loop_326_bs1_b;
    wire [13:0] prodResY_uid192_i_div_if_loop_326_bs2_b;
    wire [17:0] prodResY_uid192_i_div_if_loop_326_bs4_in;
    wire [17:0] prodResY_uid192_i_div_if_loop_326_bs4_b;
    wire [17:0] prodResY_uid192_i_div_if_loop_326_bs7_in;
    wire [17:0] prodResY_uid192_i_div_if_loop_326_bs7_b;
    wire [63:0] prodResY_uid192_i_div_if_loop_326_sums_join_0_q;
    wire [50:0] prodResY_uid192_i_div_if_loop_326_sums_align_1_q;
    wire [50:0] prodResY_uid192_i_div_if_loop_326_sums_align_1_qint;
    wire [64:0] prodResY_uid192_i_div_if_loop_326_sums_result_add_0_0_a;
    wire [64:0] prodResY_uid192_i_div_if_loop_326_sums_result_add_0_0_b;
    logic [64:0] prodResY_uid192_i_div_if_loop_326_sums_result_add_0_0_o;
    wire [64:0] prodResY_uid192_i_div_if_loop_326_sums_result_add_0_0_q;
    wire memoryC0_uid268_invTabGen_lutmem_reset0;
    wire [37:0] memoryC0_uid268_invTabGen_lutmem_ia;
    wire [7:0] memoryC0_uid268_invTabGen_lutmem_aa;
    wire [7:0] memoryC0_uid268_invTabGen_lutmem_ab;
    wire [37:0] memoryC0_uid268_invTabGen_lutmem_ir;
    wire [37:0] memoryC0_uid268_invTabGen_lutmem_r;
    wire memoryC1_uid271_invTabGen_lutmem_reset0;
    wire [28:0] memoryC1_uid271_invTabGen_lutmem_ia;
    wire [7:0] memoryC1_uid271_invTabGen_lutmem_aa;
    wire [7:0] memoryC1_uid271_invTabGen_lutmem_ab;
    wire [28:0] memoryC1_uid271_invTabGen_lutmem_ir;
    wire [28:0] memoryC1_uid271_invTabGen_lutmem_r;
    wire memoryC2_uid274_invTabGen_lutmem_reset0;
    wire [20:0] memoryC2_uid274_invTabGen_lutmem_ia;
    wire [7:0] memoryC2_uid274_invTabGen_lutmem_aa;
    wire [7:0] memoryC2_uid274_invTabGen_lutmem_ab;
    wire [20:0] memoryC2_uid274_invTabGen_lutmem_ir;
    wire [20:0] memoryC2_uid274_invTabGen_lutmem_r;
    wire memoryC3_uid277_invTabGen_lutmem_reset0;
    wire [13:0] memoryC3_uid277_invTabGen_lutmem_ia;
    wire [7:0] memoryC3_uid277_invTabGen_lutmem_aa;
    wire [7:0] memoryC3_uid277_invTabGen_lutmem_ab;
    wire [13:0] memoryC3_uid277_invTabGen_lutmem_ir;
    wire [13:0] memoryC3_uid277_invTabGen_lutmem_r;
    wire prodXY_uid303_pT1_uid285_invPolyEval_cma_reset;
    (* preserve_syn_only *) reg [13:0] prodXY_uid303_pT1_uid285_invPolyEval_cma_ah [0:0];
    (* preserve_syn_only *) reg signed [13:0] prodXY_uid303_pT1_uid285_invPolyEval_cma_ch [0:0];
    wire [13:0] prodXY_uid303_pT1_uid285_invPolyEval_cma_a0;
    wire [13:0] prodXY_uid303_pT1_uid285_invPolyEval_cma_c0;
    wire [27:0] prodXY_uid303_pT1_uid285_invPolyEval_cma_s0;
    wire [27:0] prodXY_uid303_pT1_uid285_invPolyEval_cma_qq;
    reg [27:0] prodXY_uid303_pT1_uid285_invPolyEval_cma_q;
    wire prodXY_uid303_pT1_uid285_invPolyEval_cma_ena0;
    wire prodXY_uid303_pT1_uid285_invPolyEval_cma_ena1;
    wire prodXY_uid303_pT1_uid285_invPolyEval_cma_ena2;
    wire prodXY_uid306_pT2_uid291_invPolyEval_cma_reset;
    (* preserve_syn_only *) reg [20:0] prodXY_uid306_pT2_uid291_invPolyEval_cma_ah [0:0];
    (* preserve_syn_only *) reg signed [22:0] prodXY_uid306_pT2_uid291_invPolyEval_cma_ch [0:0];
    wire [20:0] prodXY_uid306_pT2_uid291_invPolyEval_cma_a0;
    wire [22:0] prodXY_uid306_pT2_uid291_invPolyEval_cma_c0;
    wire [43:0] prodXY_uid306_pT2_uid291_invPolyEval_cma_s0;
    wire [43:0] prodXY_uid306_pT2_uid291_invPolyEval_cma_qq;
    reg [43:0] prodXY_uid306_pT2_uid291_invPolyEval_cma_q;
    wire prodXY_uid306_pT2_uid291_invPolyEval_cma_ena0;
    wire prodXY_uid306_pT2_uid291_invPolyEval_cma_ena1;
    wire prodXY_uid306_pT2_uid291_invPolyEval_cma_ena2;
    wire sm0_uid335_pT3_uid297_invPolyEval_cma_reset;
    (* preserve_syn_only *) reg signed [17:0] sm0_uid335_pT3_uid297_invPolyEval_cma_ah [0:0];
    (* preserve_syn_only *) reg signed [17:0] sm0_uid335_pT3_uid297_invPolyEval_cma_ch [0:0];
    wire [17:0] sm0_uid335_pT3_uid297_invPolyEval_cma_a0;
    wire [17:0] sm0_uid335_pT3_uid297_invPolyEval_cma_c0;
    wire [35:0] sm0_uid335_pT3_uid297_invPolyEval_cma_s0;
    wire [35:0] sm0_uid335_pT3_uid297_invPolyEval_cma_qq;
    reg [35:0] sm0_uid335_pT3_uid297_invPolyEval_cma_q;
    wire sm0_uid335_pT3_uid297_invPolyEval_cma_ena0;
    wire sm0_uid335_pT3_uid297_invPolyEval_cma_ena1;
    wire sm0_uid335_pT3_uid297_invPolyEval_cma_ena2;
    wire prodXInvY_uid180_i_div_if_loop_326_im0_cma_reset;
    (* preserve_syn_only *) reg signed [14:0] prodXInvY_uid180_i_div_if_loop_326_im0_cma_ah [0:0];
    (* preserve_syn_only *) reg signed [15:0] prodXInvY_uid180_i_div_if_loop_326_im0_cma_ch [0:0];
    wire [14:0] prodXInvY_uid180_i_div_if_loop_326_im0_cma_a0;
    wire [15:0] prodXInvY_uid180_i_div_if_loop_326_im0_cma_c0;
    wire [30:0] prodXInvY_uid180_i_div_if_loop_326_im0_cma_s0;
    wire [30:0] prodXInvY_uid180_i_div_if_loop_326_im0_cma_qq;
    reg [30:0] prodXInvY_uid180_i_div_if_loop_326_im0_cma_q;
    wire prodXInvY_uid180_i_div_if_loop_326_im0_cma_ena0;
    wire prodXInvY_uid180_i_div_if_loop_326_im0_cma_ena1;
    wire prodXInvY_uid180_i_div_if_loop_326_im0_cma_ena2;
    wire prodXInvY_uid180_i_div_if_loop_326_im10_cma_reset;
    (* preserve_syn_only *) reg [17:0] prodXInvY_uid180_i_div_if_loop_326_im10_cma_ah [0:0];
    (* preserve_syn_only *) reg [17:0] prodXInvY_uid180_i_div_if_loop_326_im10_cma_ch [0:0];
    wire [17:0] prodXInvY_uid180_i_div_if_loop_326_im10_cma_a0;
    wire [17:0] prodXInvY_uid180_i_div_if_loop_326_im10_cma_c0;
    wire [35:0] prodXInvY_uid180_i_div_if_loop_326_im10_cma_s0;
    wire [35:0] prodXInvY_uid180_i_div_if_loop_326_im10_cma_qq;
    reg [35:0] prodXInvY_uid180_i_div_if_loop_326_im10_cma_q;
    wire prodXInvY_uid180_i_div_if_loop_326_im10_cma_ena0;
    wire prodXInvY_uid180_i_div_if_loop_326_im10_cma_ena1;
    wire prodXInvY_uid180_i_div_if_loop_326_im10_cma_ena2;
    wire prodResY_uid192_i_div_if_loop_326_im0_cma_reset;
    (* preserve_syn_only *) reg signed [13:0] prodResY_uid192_i_div_if_loop_326_im0_cma_ah [0:0];
    (* preserve_syn_only *) reg signed [13:0] prodResY_uid192_i_div_if_loop_326_im0_cma_ch [0:0];
    wire [13:0] prodResY_uid192_i_div_if_loop_326_im0_cma_a0;
    wire [13:0] prodResY_uid192_i_div_if_loop_326_im0_cma_c0;
    wire [27:0] prodResY_uid192_i_div_if_loop_326_im0_cma_s0;
    wire [27:0] prodResY_uid192_i_div_if_loop_326_im0_cma_qq;
    reg [27:0] prodResY_uid192_i_div_if_loop_326_im0_cma_q;
    wire prodResY_uid192_i_div_if_loop_326_im0_cma_ena0;
    wire prodResY_uid192_i_div_if_loop_326_im0_cma_ena1;
    wire prodResY_uid192_i_div_if_loop_326_im0_cma_ena2;
    wire prodResY_uid192_i_div_if_loop_326_im8_cma_reset;
    (* preserve_syn_only *) reg [17:0] prodResY_uid192_i_div_if_loop_326_im8_cma_ah [0:0];
    (* preserve_syn_only *) reg [17:0] prodResY_uid192_i_div_if_loop_326_im8_cma_ch [0:0];
    wire [17:0] prodResY_uid192_i_div_if_loop_326_im8_cma_a0;
    wire [17:0] prodResY_uid192_i_div_if_loop_326_im8_cma_c0;
    wire [35:0] prodResY_uid192_i_div_if_loop_326_im8_cma_s0;
    wire [35:0] prodResY_uid192_i_div_if_loop_326_im8_cma_qq;
    reg [35:0] prodResY_uid192_i_div_if_loop_326_im8_cma_q;
    wire prodResY_uid192_i_div_if_loop_326_im8_cma_ena0;
    wire prodResY_uid192_i_div_if_loop_326_im8_cma_ena1;
    wire prodResY_uid192_i_div_if_loop_326_im8_cma_ena2;
    wire multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_reset;
    (* preserve_syn_only *) reg [17:0] multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_ah [0:1];
    (* preserve_syn_only *) reg signed [17:0] multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_ch [0:1];
    wire [17:0] multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_a0;
    wire [17:0] multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_c0;
    wire [17:0] multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_a1;
    wire [17:0] multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_c1;
    wire [36:0] multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_s0;
    wire [36:0] multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_qq;
    reg [36:0] multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_q;
    wire multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_ena0;
    wire multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_ena1;
    wire multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_ena2;
    wire prodXInvY_uid180_i_div_if_loop_326_ma4_cma_reset;
    (* preserve_syn_only *) reg signed [15:0] prodXInvY_uid180_i_div_if_loop_326_ma4_cma_ah [0:1];
    (* preserve_syn_only *) reg [17:0] prodXInvY_uid180_i_div_if_loop_326_ma4_cma_ch [0:1];
    wire [15:0] prodXInvY_uid180_i_div_if_loop_326_ma4_cma_a0;
    wire [17:0] prodXInvY_uid180_i_div_if_loop_326_ma4_cma_c0;
    wire [15:0] prodXInvY_uid180_i_div_if_loop_326_ma4_cma_a1;
    wire [17:0] prodXInvY_uid180_i_div_if_loop_326_ma4_cma_c1;
    wire [34:0] prodXInvY_uid180_i_div_if_loop_326_ma4_cma_s0;
    wire [34:0] prodXInvY_uid180_i_div_if_loop_326_ma4_cma_qq;
    reg [34:0] prodXInvY_uid180_i_div_if_loop_326_ma4_cma_q;
    wire prodXInvY_uid180_i_div_if_loop_326_ma4_cma_ena0;
    wire prodXInvY_uid180_i_div_if_loop_326_ma4_cma_ena1;
    wire prodXInvY_uid180_i_div_if_loop_326_ma4_cma_ena2;
    wire prodResY_uid192_i_div_if_loop_326_ma3_cma_reset;
    (* preserve_syn_only *) reg signed [13:0] prodResY_uid192_i_div_if_loop_326_ma3_cma_ah [0:1];
    (* preserve_syn_only *) reg [17:0] prodResY_uid192_i_div_if_loop_326_ma3_cma_ch [0:1];
    wire [13:0] prodResY_uid192_i_div_if_loop_326_ma3_cma_a0;
    wire [17:0] prodResY_uid192_i_div_if_loop_326_ma3_cma_c0;
    wire [13:0] prodResY_uid192_i_div_if_loop_326_ma3_cma_a1;
    wire [17:0] prodResY_uid192_i_div_if_loop_326_ma3_cma_c1;
    wire [32:0] prodResY_uid192_i_div_if_loop_326_ma3_cma_s0;
    wire [32:0] prodResY_uid192_i_div_if_loop_326_ma3_cma_qq;
    reg [32:0] prodResY_uid192_i_div_if_loop_326_ma3_cma_q;
    wire prodResY_uid192_i_div_if_loop_326_ma3_cma_ena0;
    wire prodResY_uid192_i_div_if_loop_326_ma3_cma_ena1;
    wire prodResY_uid192_i_div_if_loop_326_ma3_cma_ena2;
    wire [54:0] i_arrayidx133_if_loop_30_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx133_if_loop_30_upper_bits_x_merged_bit_select_c;
    wire [54:0] i_arrayidx154_if_loop_30_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx154_if_loop_30_upper_bits_x_merged_bit_select_c;
    wire [7:0] yAddr_uid167_i_div_if_loop_326_merged_bit_select_b;
    wire [22:0] yAddr_uid167_i_div_if_loop_326_merged_bit_select_c;
    wire [14:0] prodXInvY_uid180_i_div_if_loop_326_bs2_merged_bit_select_b;
    wire [17:0] prodXInvY_uid180_i_div_if_loop_326_bs2_merged_bit_select_c;
    wire [1:0] rightShiftStageSel0Dto0_uid411_prodPostRightShift_uid182_i_div_if_loop_326_merged_bit_select_b;
    wire [1:0] rightShiftStageSel0Dto0_uid411_prodPostRightShift_uid182_i_div_if_loop_326_merged_bit_select_c;
    wire [1:0] rightShiftStageSel0Dto0_uid411_prodPostRightShift_uid182_i_div_if_loop_326_merged_bit_select_d;
    wire [0:0] rightShiftStageSel0Dto0_uid411_prodPostRightShift_uid182_i_div_if_loop_326_merged_bit_select_e;
    wire [14:0] prodXInvY_uid180_i_div_if_loop_326_bs1_merged_bit_select_b;
    wire [17:0] prodXInvY_uid180_i_div_if_loop_326_bs1_merged_bit_select_c;
    wire [15:0] rVStage_uid240_zCount_uid157_i_div_if_loop_326_merged_bit_select_b;
    wire [15:0] rVStage_uid240_zCount_uid157_i_div_if_loop_326_merged_bit_select_c;
    wire [7:0] rVStage_uid246_zCount_uid157_i_div_if_loop_326_merged_bit_select_b;
    wire [7:0] rVStage_uid246_zCount_uid157_i_div_if_loop_326_merged_bit_select_c;
    wire [3:0] rVStage_uid252_zCount_uid157_i_div_if_loop_326_merged_bit_select_b;
    wire [3:0] rVStage_uid252_zCount_uid157_i_div_if_loop_326_merged_bit_select_c;
    wire [1:0] rVStage_uid258_zCount_uid157_i_div_if_loop_326_merged_bit_select_b;
    wire [1:0] rVStage_uid258_zCount_uid157_i_div_if_loop_326_merged_bit_select_c;
    wire [1:0] leftShiftStageSel0Dto4_uid359_normY_uid158_i_div_if_loop_326_merged_bit_select_b;
    wire [1:0] leftShiftStageSel0Dto4_uid359_normY_uid158_i_div_if_loop_326_merged_bit_select_c;
    wire [1:0] leftShiftStageSel0Dto4_uid359_normY_uid158_i_div_if_loop_326_merged_bit_select_d;
    wire [17:0] topRangeY_uid324_pT3_uid297_invPolyEval_merged_bit_select_b;
    wire [12:0] topRangeY_uid324_pT3_uid297_invPolyEval_merged_bit_select_c;
    wire [17:0] topRangeX_uid323_pT3_uid297_invPolyEval_merged_bit_select_b;
    wire [5:0] topRangeX_uid323_pT3_uid297_invPolyEval_merged_bit_select_c;
    reg [1:0] redist0_leftShiftStageSel0Dto4_uid359_normY_uid158_i_div_if_loop_326_merged_bit_select_c_1_q;
    reg [1:0] redist1_leftShiftStageSel0Dto4_uid359_normY_uid158_i_div_if_loop_326_merged_bit_select_d_1_q;
    reg [7:0] redist2_rVStage_uid246_zCount_uid157_i_div_if_loop_326_merged_bit_select_b_1_q;
    reg [7:0] redist3_rVStage_uid246_zCount_uid157_i_div_if_loop_326_merged_bit_select_c_1_q;
    reg [15:0] redist4_rVStage_uid240_zCount_uid157_i_div_if_loop_326_merged_bit_select_b_1_q;
    reg [15:0] redist5_rVStage_uid240_zCount_uid157_i_div_if_loop_326_merged_bit_select_c_1_q;
    reg [1:0] redist6_rightShiftStageSel0Dto0_uid411_prodPostRightShift_uid182_i_div_if_loop_326_merged_bit_select_d_1_q;
    reg [0:0] redist7_rightShiftStageSel0Dto0_uid411_prodPostRightShift_uid182_i_div_if_loop_326_merged_bit_select_e_1_q;
    reg [7:0] redist9_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_14_q;
    reg [7:0] redist9_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_14_delay_0;
    reg [7:0] redist9_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_14_delay_1;
    reg [7:0] redist9_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_14_delay_2;
    reg [7:0] redist9_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_14_delay_3;
    reg [22:0] redist11_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_3_q;
    reg [22:0] redist11_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_3_delay_0;
    reg [22:0] redist11_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_3_delay_1;
    reg [32:0] redist14_prodResY_uid192_i_div_if_loop_326_ma3_cma_q_1_q;
    reg [34:0] redist15_prodXInvY_uid180_i_div_if_loop_326_ma4_cma_q_1_q;
    reg [36:0] redist16_multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_q_1_q;
    reg [35:0] redist17_prodResY_uid192_i_div_if_loop_326_im8_cma_q_1_q;
    reg [27:0] redist18_prodResY_uid192_i_div_if_loop_326_im0_cma_q_1_q;
    reg [35:0] redist19_prodXInvY_uid180_i_div_if_loop_326_im10_cma_q_1_q;
    reg [30:0] redist20_prodXInvY_uid180_i_div_if_loop_326_im0_cma_q_1_q;
    reg [35:0] redist21_sm0_uid335_pT3_uid297_invPolyEval_cma_q_1_q;
    reg [13:0] redist22_memoryC3_uid277_invTabGen_lutmem_r_1_q;
    reg [37:0] redist23_memoryC0_uid268_invTabGen_lutmem_r_1_q;
    reg [0:0] redist24_xMSB_uid401_prodPostRightShift_uid182_i_div_if_loop_326_b_1_q;
    reg [29:0] redist25_highBBits_uid299_invPolyEval_b_1_q;
    reg [1:0] redist26_lowRangeB_uid298_invPolyEval_b_1_q;
    reg [0:0] redist27_lowRangeB_uid292_invPolyEval_b_1_q;
    reg [0:0] redist28_lowRangeB_uid286_invPolyEval_b_1_q;
    reg [5:0] redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_q;
    reg [0:0] redist30_vCount_uid253_zCount_uid157_i_div_if_loop_326_q_1_q;
    reg [0:0] redist31_vCount_uid247_zCount_uid157_i_div_if_loop_326_q_2_q;
    reg [0:0] redist32_vCount_uid241_zCount_uid157_i_div_if_loop_326_q_3_q;
    reg [0:0] redist32_vCount_uid241_zCount_uid157_i_div_if_loop_326_q_3_delay_0;
    reg [0:0] redist33_vCount_uid235_zCount_uid157_i_div_if_loop_326_q_4_q;
    reg [0:0] redist33_vCount_uid235_zCount_uid157_i_div_if_loop_326_q_4_delay_0;
    reg [0:0] redist33_vCount_uid235_zCount_uid157_i_div_if_loop_326_q_4_delay_1;
    reg [31:0] redist34_resFinalPostMux_uid209_i_div_if_loop_326_b_1_q;
    reg [31:0] redist36_resFinal_uid191_i_div_if_loop_326_q_9_q;
    reg [0:0] redist37_signX_uid189_i_div_if_loop_326_b_7_q;
    reg [0:0] redist38_signX_uid189_i_div_if_loop_326_b_9_q;
    reg [0:0] redist38_signX_uid189_i_div_if_loop_326_b_9_delay_0;
    reg [31:0] redist39_prodPostRightShiftPostRndRange_uid186_i_div_if_loop_326_b_1_q;
    reg [32:0] redist40_prodPostRightShiftPost_uid183_i_div_if_loop_326_b_1_q;
    reg [64:0] redist41_rightShiftInput_uid181_i_div_if_loop_326_b_1_q;
    reg [32:0] redist42_fxpInverseRes_uid170_i_div_if_loop_326_b_1_q;
    reg [0:0] redist43_normYIsOne_uid164_i_div_if_loop_326_q_24_q;
    reg [0:0] redist44_normYIsOneC2_uid163_i_div_if_loop_326_b_2_q;
    reg [0:0] redist44_normYIsOneC2_uid163_i_div_if_loop_326_b_2_delay_0;
    reg [30:0] redist45_normYNoLeadOne_uid159_i_div_if_loop_326_b_1_q;
    reg [31:0] redist46_yPS_uid156_i_div_if_loop_326_b_1_q;
    reg [31:0] redist47_yPS_uid156_i_div_if_loop_326_b_2_q;
    reg [31:0] redist48_yPS_uid156_i_div_if_loop_326_b_5_q;
    reg [31:0] redist48_yPS_uid156_i_div_if_loop_326_b_5_delay_0;
    reg [31:0] redist48_yPS_uid156_i_div_if_loop_326_b_5_delay_1;
    reg [0:0] redist49_xMSB_uid151_i_div_if_loop_326_b_1_q;
    reg [0:0] redist50_xMSB_uid151_i_div_if_loop_326_b_31_q;
    reg [0:0] redist51_xMSB_uid151_i_div_if_loop_326_b_32_q;
    reg [0:0] redist52_xMSB_uid151_i_div_if_loop_326_b_51_q;
    reg [0:0] redist53_xMSB_uid151_i_div_if_loop_326_b_53_q;
    reg [0:0] redist53_xMSB_uid151_i_div_if_loop_326_b_53_delay_0;
    reg [0:0] redist54_sync_together85_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist54_sync_together85_aunroll_x_in_i_valid_3_delay_0;
    reg [0:0] redist54_sync_together85_aunroll_x_in_i_valid_3_delay_1;
    reg [0:0] redist55_sync_together85_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist56_sync_together85_aunroll_x_in_i_valid_36_q;
    reg [0:0] redist57_sync_together85_aunroll_x_in_i_valid_61_q;
    reg [0:0] redist58_sync_together85_aunroll_x_in_i_valid_62_q;
    reg [0:0] redist59_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_inv_pred_x_q_3_q;
    reg [0:0] redist59_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_inv_pred_x_q_3_delay_0;
    reg [0:0] redist59_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_inv_pred_x_q_3_delay_1;
    reg [0:0] redist60_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_inv_pred_x_q_4_q;
    reg [0:0] redist61_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_inv_pred_x_q_36_q;
    reg [0:0] redist62_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_inv_pred_x_q_61_q;
    reg [31:0] redist65_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_23_q;
    reg [31:0] redist65_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_23_delay_0;
    reg [31:0] redist66_i_llvm_fpga_pop_i32_i_116_pop12_if_loop_30_i_llvm_fpga_pop_i32_i_116_pop12_if_loop_314_mux_x_q_1_q;
    reg [0:0] redist67_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b4_current_iter_isreal_if_loop_30_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b4_current_iter_isreal_if_loop_34_mux_x_q_1_q;
    reg [31:0] redist68_bgTrunc_i_sub_if_loop_322_sel_x_b_1_q;
    reg [31:0] redist70_bgTrunc_i_sub_if_loop_322_sel_x_b_45_q;
    reg [31:0] redist71_bgTrunc_i_inc18_if_loop_328_sel_x_b_1_q;
    reg [32:0] redist72_bgTrunc_i_fpga_indvars_iv_next5_if_loop_331_sel_x_b_1_q;
    reg [0:0] redist73_i_unnamed_if_loop_333_q_58_q;
    reg [0:0] redist74_i_llvm_fpga_forked_if_loop_3_b4_forked_if_loop_33_out_buffer_out_4_q;
    reg [0:0] redist74_i_llvm_fpga_forked_if_loop_3_b4_forked_if_loop_33_out_buffer_out_4_delay_0;
    reg [0:0] redist74_i_llvm_fpga_forked_if_loop_3_b4_forked_if_loop_33_out_buffer_out_4_delay_1;
    reg [0:0] redist74_i_llvm_fpga_forked_if_loop_3_b4_forked_if_loop_33_out_buffer_out_4_delay_2;
    reg [0:0] redist75_i_llvm_fpga_forked_if_loop_3_b4_forked_if_loop_33_out_buffer_out_5_q;
    reg [0:0] redist76_i_llvm_fpga_forked_if_loop_3_b4_forked_if_loop_33_out_buffer_out_40_q;
    reg [0:0] redist77_i_llvm_fpga_dummy_thread_if_loop_3_b4_dummy_if_loop_32_out_dummy_out_5_q;
    reg [0:0] redist77_i_llvm_fpga_dummy_thread_if_loop_3_b4_dummy_if_loop_32_out_dummy_out_5_delay_0;
    reg [0:0] redist77_i_llvm_fpga_dummy_thread_if_loop_3_b4_dummy_if_loop_32_out_dummy_out_5_delay_1;
    reg [0:0] redist77_i_llvm_fpga_dummy_thread_if_loop_3_b4_dummy_if_loop_32_out_dummy_out_5_delay_2;
    reg [0:0] redist77_i_llvm_fpga_dummy_thread_if_loop_3_b4_dummy_if_loop_32_out_dummy_out_5_delay_3;
    reg [0:0] redist78_i_if_loop_3_b4_current_iter_isspec_if_loop_35_q_59_q;
    reg [0:0] redist79_i_cmp16_if_loop_323_c_10_q;
    reg [7:0] redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_outputreg0_q;
    wire redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_mem_reset0;
    wire [7:0] redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_mem_ia;
    wire [2:0] redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_mem_aa;
    wire [2:0] redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_mem_ab;
    wire [7:0] redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_mem_iq;
    wire [7:0] redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_mem_q;
    wire [2:0] redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [2:0] redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_wraddr_i = 3'b111;
    wire [2:0] redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_offset_q;
    wire [3:0] redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_rdcnt_a;
    wire [3:0] redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_rdcnt_b;
    logic [3:0] redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_rdcnt_o;
    wire [3:0] redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_rdcnt_q;
    reg [7:0] redist9_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_14_inputreg0_q;
    reg [7:0] redist9_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_14_outputreg0_q;
    reg [7:0] redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_inputreg0_q;
    reg [7:0] redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_outputreg0_q;
    wire redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_mem_reset0;
    wire [7:0] redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_mem_ia;
    wire [2:0] redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_mem_aa;
    wire [2:0] redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_mem_ab;
    wire [7:0] redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_mem_iq;
    wire [7:0] redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_mem_q;
    wire [2:0] redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [2:0] redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_wraddr_i = 3'b111;
    wire [3:0] redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_rdcnt_a;
    wire [3:0] redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_rdcnt_b;
    logic [3:0] redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_rdcnt_o;
    wire [3:0] redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_rdcnt_q;
    reg [22:0] redist12_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_10_outputreg0_q;
    wire redist12_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_10_mem_reset0;
    wire [22:0] redist12_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_10_mem_ia;
    wire [2:0] redist12_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_10_mem_aa;
    wire [2:0] redist12_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_10_mem_ab;
    wire [22:0] redist12_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_10_mem_iq;
    wire [22:0] redist12_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_10_mem_q;
    wire [2:0] redist12_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_10_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [2:0] redist12_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_10_wraddr_i = 3'b111;
    wire [3:0] redist12_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_10_rdcnt_a;
    wire [3:0] redist12_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_10_rdcnt_b;
    logic [3:0] redist12_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_10_rdcnt_o;
    wire [3:0] redist12_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_10_rdcnt_q;
    reg [22:0] redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_inputreg0_q;
    reg [22:0] redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_outputreg0_q;
    wire redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_mem_reset0;
    wire [22:0] redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_mem_ia;
    wire [1:0] redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_mem_aa;
    wire [1:0] redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_mem_ab;
    wire [22:0] redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_mem_iq;
    wire [22:0] redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_mem_q;
    wire [1:0] redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [1:0] redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_wraddr_i = 2'b11;
    wire [1:0] redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_offset_q;
    wire [2:0] redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_rdcnt_a;
    wire [2:0] redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_rdcnt_b;
    logic [2:0] redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_rdcnt_o;
    wire [2:0] redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_rdcnt_q;
    reg [31:0] redist35_resFinal_uid191_i_div_if_loop_326_q_8_inputreg0_q;
    reg [31:0] redist35_resFinal_uid191_i_div_if_loop_326_q_8_outputreg0_q;
    wire redist35_resFinal_uid191_i_div_if_loop_326_q_8_mem_reset0;
    wire [31:0] redist35_resFinal_uid191_i_div_if_loop_326_q_8_mem_ia;
    wire [2:0] redist35_resFinal_uid191_i_div_if_loop_326_q_8_mem_aa;
    wire [2:0] redist35_resFinal_uid191_i_div_if_loop_326_q_8_mem_ab;
    wire [31:0] redist35_resFinal_uid191_i_div_if_loop_326_q_8_mem_iq;
    wire [31:0] redist35_resFinal_uid191_i_div_if_loop_326_q_8_mem_q;
    wire [2:0] redist35_resFinal_uid191_i_div_if_loop_326_q_8_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [2:0] redist35_resFinal_uid191_i_div_if_loop_326_q_8_wraddr_i = 3'b111;
    wire [3:0] redist35_resFinal_uid191_i_div_if_loop_326_q_8_rdcnt_a;
    wire [3:0] redist35_resFinal_uid191_i_div_if_loop_326_q_8_rdcnt_b;
    logic [3:0] redist35_resFinal_uid191_i_div_if_loop_326_q_8_rdcnt_o;
    wire [3:0] redist35_resFinal_uid191_i_div_if_loop_326_q_8_rdcnt_q;
    reg [31:0] redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_inputreg0_q;
    reg [31:0] redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_outputreg0_q;
    wire redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_mem_reset0;
    wire [31:0] redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_mem_ia;
    wire [3:0] redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_mem_aa;
    wire [3:0] redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_mem_ab;
    wire [31:0] redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_mem_iq;
    wire [31:0] redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_mem_q;
    wire [3:0] redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [3:0] redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_wraddr_i = 4'b1111;
    wire [3:0] redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_offset_q;
    wire [4:0] redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_rdcnt_a;
    wire [4:0] redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_rdcnt_b;
    logic [4:0] redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_rdcnt_o;
    wire [4:0] redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_rdcnt_q;
    reg [31:0] redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_inputreg0_q;
    wire redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_mem_reset0;
    wire [31:0] redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_mem_ia;
    wire [2:0] redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_mem_aa;
    wire [2:0] redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_mem_ab;
    wire [31:0] redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_mem_iq;
    wire [31:0] redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_mem_q;
    wire [2:0] redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [2:0] redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_wraddr_i = 3'b111;
    wire [2:0] redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_offset_q;
    wire [3:0] redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_rdcnt_a;
    wire [3:0] redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_rdcnt_b;
    logic [3:0] redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_rdcnt_o;
    wire [3:0] redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_rdcnt_q;
    reg [31:0] redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_inputreg0_q;
    reg [31:0] redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_outputreg0_q;
    wire redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_mem_reset0;
    wire [31:0] redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_mem_ia;
    wire [5:0] redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_mem_aa;
    wire [5:0] redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_mem_ab;
    wire [31:0] redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_mem_iq;
    wire [31:0] redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_mem_q;
    wire [5:0] redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [5:0] redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_wraddr_i = 6'b111111;
    wire [5:0] redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_offset_q;
    wire [6:0] redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_rdcnt_a;
    wire [6:0] redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_rdcnt_b;
    logic [6:0] redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_rdcnt_o;
    wire [6:0] redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_rdcnt_q;
    wire redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_split_0_mem_reset0;
    wire [5:0] redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_split_0_mem_ia;
    wire [4:0] redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_split_0_mem_aa;
    wire [4:0] redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_split_0_mem_ab;
    wire [5:0] redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_split_0_mem_iq;
    wire [5:0] redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_split_0_mem_q;
    wire [4:0] redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_split_0_wraddr_q;
    // Initial-value here is arbitrary, but a resolved value is necessary for simulation.
    (* preserve_syn_only *) reg [4:0] redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_split_0_wraddr_i = 5'b11111;
    wire [4:0] redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_split_0_offset_q;
    wire [5:0] redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_split_0_rdcnt_a;
    wire [5:0] redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_split_0_rdcnt_b;
    logic [5:0] redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_split_0_rdcnt_o;
    wire [5:0] redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_split_0_rdcnt_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist54_sync_together85_aunroll_x_in_i_valid_3(DELAY,536)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist54_sync_together85_aunroll_x_in_i_valid_3_delay_0 <= '0;
        end
        else
        begin
            redist54_sync_together85_aunroll_x_in_i_valid_3_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist54_sync_together85_aunroll_x_in_i_valid_3_delay_1 <= redist54_sync_together85_aunroll_x_in_i_valid_3_delay_0;
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist54_sync_together85_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist54_sync_together85_aunroll_x_in_i_valid_3_q <= redist54_sync_together85_aunroll_x_in_i_valid_3_delay_1;
        end
    end

    // valid_fanout_reg9(REG,220)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist54_sync_together85_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_c_i7_03_x(CONSTANT,131)
    assign i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_c_i7_03_x_q = $unsigned(7'b0000000);

    // redist55_sync_together85_aunroll_x_in_i_valid_4(DELAY,537)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist55_sync_together85_aunroll_x_in_i_valid_4_q <= $unsigned(redist54_sync_together85_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg2(REG,213)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist55_sync_together85_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg19(REG,230)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist55_sync_together85_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg5(REG,216)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist54_sync_together85_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_314_if_loop_39(BLACKBOX,70)@4
    if_loop_3_i_llvm_fpga_ffwd_dest_i33_unnamed_14_if_loop_30 thei_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_314_if_loop_39 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_314_if_loop_39_out_dest_data_out_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef71(CONSTANT,40)
    assign c_i33_undef71_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_30_c_i31_03_x(CONSTANT,143)
    assign i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_30_c_i31_03_x_q = $unsigned(31'b0000000000000000000000000000000);

    // c_i33_177(CONSTANT,39)
    assign c_i33_177_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next5_if_loop_331(ADD,57)@5
    assign i_fpga_indvars_iv_next5_if_loop_331_a = {1'b0, i_fpga_indvars_iv4_replace_phi_if_loop_311_q};
    assign i_fpga_indvars_iv_next5_if_loop_331_b = {1'b0, c_i33_177_q};
    assign i_fpga_indvars_iv_next5_if_loop_331_o = $unsigned(i_fpga_indvars_iv_next5_if_loop_331_a) + $unsigned(i_fpga_indvars_iv_next5_if_loop_331_b);
    assign i_fpga_indvars_iv_next5_if_loop_331_q = i_fpga_indvars_iv_next5_if_loop_331_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next5_if_loop_331_sel_x(BITSELECT,90)@5
    assign bgTrunc_i_fpga_indvars_iv_next5_if_loop_331_sel_x_b = i_fpga_indvars_iv_next5_if_loop_331_q[32:0];

    // redist72_bgTrunc_i_fpga_indvars_iv_next5_if_loop_331_sel_x_b_1(DELAY,554)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist72_bgTrunc_i_fpga_indvars_iv_next5_if_loop_331_sel_x_b_1_q <= $unsigned(bgTrunc_i_fpga_indvars_iv_next5_if_loop_331_sel_x_b);
        end
    end

    // i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_30_element_extension2_x(BITJOIN,144)@6
    assign i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_30_element_extension2_x_q = {i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_30_c_i31_03_x_q, redist72_bgTrunc_i_fpga_indvars_iv_next5_if_loop_331_sel_x_b_1_q};

    // valid_fanout_reg18(REG,229)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(in_i_valid);
        end
    end

    // redist60_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_inv_pred_x_q_4(DELAY,542)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist60_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_inv_pred_x_q_4_q <= $unsigned(redist59_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_inv_pred_x_q_3_q);
        end
    end

    // valid_fanout_reg17(REG,228)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist55_sync_together85_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_30_i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_31_x(FIFODELAY,145)@1 + 22
    // in i_valid@5
    // in i_write_pred@5
    // in i_data@6
    // out o_data@4
    assign i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_30_i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_31_x_i_stall = ~ (valid_fanout_reg18_q & i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_inv_pred_x_q);
    assign i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_30_i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_31_x_i_valid = valid_fanout_reg17_q & redist60_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_30_i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_31_x_i_data = i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_30_element_extension2_x_q;
    assign i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_30_i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_31_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_30_i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_31_x_i_valid[0];
    assign i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_30_i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_31_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_30_i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_31_x_i_stall[0];
    hld_fifo #(
        .DEPTH(22),
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
    ) thei_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_30_i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_31_x (
        .i_valid(i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_30_i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_31_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_30_i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_31_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_30_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_30_i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_31_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_30_adapt_scalar_trunc4_sel_x(BITSELECT,147)@4
    assign i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_30_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_30_i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_31_x_o_data[32:0];

    // i_llvm_fpga_pop_i33_fpga_indvars_iv4_pop10_if_loop_30_i_llvm_fpga_pop_i33_fpga_indvars_iv4_pop10_if_loop_310_mux_x(MUX,129)@4
    assign i_llvm_fpga_pop_i33_fpga_indvars_iv4_pop10_if_loop_30_i_llvm_fpga_pop_i33_fpga_indvars_iv4_pop10_if_loop_310_mux_x_s = redist74_i_llvm_fpga_forked_if_loop_3_b4_forked_if_loop_33_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i33_fpga_indvars_iv4_pop10_if_loop_30_i_llvm_fpga_pop_i33_fpga_indvars_iv4_pop10_if_loop_310_mux_x_s or i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_30_adapt_scalar_trunc4_sel_x_b or c_i33_undef71_q)
    begin
        unique case (i_llvm_fpga_pop_i33_fpga_indvars_iv4_pop10_if_loop_30_i_llvm_fpga_pop_i33_fpga_indvars_iv4_pop10_if_loop_310_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i33_fpga_indvars_iv4_pop10_if_loop_30_i_llvm_fpga_pop_i33_fpga_indvars_iv4_pop10_if_loop_310_mux_x_q = i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_30_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i33_fpga_indvars_iv4_pop10_if_loop_30_i_llvm_fpga_pop_i33_fpga_indvars_iv4_pop10_if_loop_310_mux_x_q = c_i33_undef71_q;
            default : i_llvm_fpga_pop_i33_fpga_indvars_iv4_pop10_if_loop_30_i_llvm_fpga_pop_i33_fpga_indvars_iv4_pop10_if_loop_310_mux_x_q = 33'b0;
        endcase
    end

    // i_fpga_indvars_iv4_replace_phi_if_loop_311(MUX,56)@4 + 1
    assign i_fpga_indvars_iv4_replace_phi_if_loop_311_s = redist74_i_llvm_fpga_forked_if_loop_3_b4_forked_if_loop_33_out_buffer_out_4_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_fpga_indvars_iv4_replace_phi_if_loop_311_s)
                1'b0 : i_fpga_indvars_iv4_replace_phi_if_loop_311_q <= i_llvm_fpga_pop_i33_fpga_indvars_iv4_pop10_if_loop_30_i_llvm_fpga_pop_i33_fpga_indvars_iv4_pop10_if_loop_310_mux_x_q;
                1'b1 : i_fpga_indvars_iv4_replace_phi_if_loop_311_q <= i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_314_if_loop_39_out_dest_data_out_4_0;
                default : i_fpga_indvars_iv4_replace_phi_if_loop_311_q <= 33'b0;
            endcase
        end
    end

    // i_exitcond6_if_loop_329_cmp_nsign(LOGICAL,350)@5
    assign i_exitcond6_if_loop_329_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv4_replace_phi_if_loop_311_q[32:32]));

    // valid_fanout_reg12(REG,223)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist55_sync_together85_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp101513_if_loop_332(BLACKBOX,68)@5
    if_loop_3_i_llvm_fpga_ffwd_dest_i1_cmp101513_0 thei_llvm_fpga_ffwd_dest_i1_cmp101513_if_loop_332 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i1_cmp101513_if_loop_332_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_if_loop_333(LOGICAL,80)@5
    assign i_unnamed_if_loop_333_q = i_llvm_fpga_ffwd_dest_i1_cmp101513_if_loop_332_out_dest_data_out_3_0 & i_exitcond6_if_loop_329_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond_if_loop_338(BLACKBOX,76)@5
    // in in_empty_in@20000000
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    if_loop_3_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_if_loop_338 (
        .in_almost_empty_in(GND_q),
        .in_data_in(i_unnamed_if_loop_333_q),
        .in_empty_in(GND_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_if_loop_36_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_if_loop_338_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_if_loop_338_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dummy_thread_if_loop_3_b4_dummy_if_loop_32(BLACKBOX,67)@0
    // in in_stall_in@20000000
    if_loop_3_i_llvm_fpga_dummy_thread_b4_dummy_if_loop_30 thei_llvm_fpga_dummy_thread_if_loop_3_b4_dummy_if_loop_32 (
        .in_dummy_in(in_dummy_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dummy_out(i_llvm_fpga_dummy_thread_if_loop_3_b4_dummy_if_loop_32_out_dummy_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist77_i_llvm_fpga_dummy_thread_if_loop_3_b4_dummy_if_loop_32_out_dummy_out_5(DELAY,559)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist77_i_llvm_fpga_dummy_thread_if_loop_3_b4_dummy_if_loop_32_out_dummy_out_5_delay_0 <= $unsigned(i_llvm_fpga_dummy_thread_if_loop_3_b4_dummy_if_loop_32_out_dummy_out);
            redist77_i_llvm_fpga_dummy_thread_if_loop_3_b4_dummy_if_loop_32_out_dummy_out_5_delay_1 <= redist77_i_llvm_fpga_dummy_thread_if_loop_3_b4_dummy_if_loop_32_out_dummy_out_5_delay_0;
            redist77_i_llvm_fpga_dummy_thread_if_loop_3_b4_dummy_if_loop_32_out_dummy_out_5_delay_2 <= redist77_i_llvm_fpga_dummy_thread_if_loop_3_b4_dummy_if_loop_32_out_dummy_out_5_delay_1;
            redist77_i_llvm_fpga_dummy_thread_if_loop_3_b4_dummy_if_loop_32_out_dummy_out_5_delay_3 <= redist77_i_llvm_fpga_dummy_thread_if_loop_3_b4_dummy_if_loop_32_out_dummy_out_5_delay_2;
            redist77_i_llvm_fpga_dummy_thread_if_loop_3_b4_dummy_if_loop_32_out_dummy_out_5_q <= redist77_i_llvm_fpga_dummy_thread_if_loop_3_b4_dummy_if_loop_32_out_dummy_out_5_delay_3;
        end
    end

    // redist75_i_llvm_fpga_forked_if_loop_3_b4_forked_if_loop_33_out_buffer_out_5(DELAY,557)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist75_i_llvm_fpga_forked_if_loop_3_b4_forked_if_loop_33_out_buffer_out_5_q <= $unsigned(redist74_i_llvm_fpga_forked_if_loop_3_b4_forked_if_loop_33_out_buffer_out_4_q);
        end
    end

    // i_llvm_fpga_pipeline_keep_going_if_loop_36(BLACKBOX,75)@5
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_dummy_out@20000000
    // out out_pipeline_forked_out@20000000
    // out out_pipeline_valid_out@20000000
    if_loop_3_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_if_loop_36 (
        .in_data_in(redist75_i_llvm_fpga_forked_if_loop_3_b4_forked_if_loop_33_out_buffer_out_5_q),
        .in_dummy_in(redist77_i_llvm_fpga_dummy_thread_if_loop_3_b4_dummy_if_loop_32_out_dummy_out_5_q),
        .in_forked_in(redist75_i_llvm_fpga_forked_if_loop_3_b4_forked_if_loop_33_out_buffer_out_5_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_if_loop_338_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_if_loop_338_out_feedback_valid_out_3),
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

    // redist67_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b4_current_iter_isreal_if_loop_30_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b4_current_iter_isreal_if_loop_34_mux_x_q_1(DELAY,549)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist67_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b4_current_iter_isreal_if_loop_30_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b4_current_iter_isreal_if_loop_34_mux_x_q_1_q <= $unsigned(i_llvm_fpga_pop_coalesce_i1_if_loop_3_b4_current_iter_isreal_if_loop_30_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b4_current_iter_isreal_if_loop_34_mux_x_q);
        end
    end

    // i_if_loop_3_b4_next_iter_isreal_if_loop_37(LOGICAL,65)@5
    assign i_if_loop_3_b4_next_iter_isreal_if_loop_37_q = redist67_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b4_current_iter_isreal_if_loop_30_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b4_current_iter_isreal_if_loop_34_mux_x_q_1_q & i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out;

    // i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_element_extension2_x(BITJOIN,132)@5
    assign i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_element_extension2_x_q = {i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_c_i7_03_x_q, i_if_loop_3_b4_next_iter_isreal_if_loop_37_q};

    // i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_inv_pred_x(LOGICAL,134)@1
    assign i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg4(REG,215)@0 + 1
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

    // redist59_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_inv_pred_x_q_3(DELAY,541)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist59_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_inv_pred_x_q_3_delay_0 <= $unsigned(i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_inv_pred_x_q);
            redist59_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_inv_pred_x_q_3_delay_1 <= redist59_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_inv_pred_x_q_3_delay_0;
            redist59_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_inv_pred_x_q_3_q <= redist59_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_inv_pred_x_q_3_delay_1;
        end
    end

    // valid_fanout_reg3(REG,214)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist54_sync_together85_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_31_x(FIFODELAY,133)@1 + 23
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@4
    assign i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_31_x_i_stall = ~ (valid_fanout_reg4_q & i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_31_x_i_valid = valid_fanout_reg3_q & redist59_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_31_x_i_data = i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_element_extension2_x_q;
    assign i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_31_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_31_x_i_valid[0];
    assign i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_31_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_31_x_i_stall[0];
    hld_fifo #(
        .DEPTH(23),
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
    ) thei_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_31_x (
        .i_valid(i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_31_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_31_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_element_extension2_x_q),
        .o_data(i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_31_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_adapt_scalar_trunc4_sel_x(BITSELECT,135)@4
    assign i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_31_x_o_data[0:0];

    // i_llvm_fpga_forked_if_loop_3_b4_forked_if_loop_33(BLACKBOX,72)@0
    // in in_stall_in@20000000
    if_loop_3_i_llvm_fpga_forked_b4_forked_if_loop_30 thei_llvm_fpga_forked_if_loop_3_b4_forked_if_loop_33 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_if_loop_3_b4_forked_if_loop_33_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist74_i_llvm_fpga_forked_if_loop_3_b4_forked_if_loop_33_out_buffer_out_4(DELAY,556)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist74_i_llvm_fpga_forked_if_loop_3_b4_forked_if_loop_33_out_buffer_out_4_delay_0 <= $unsigned(i_llvm_fpga_forked_if_loop_3_b4_forked_if_loop_33_out_buffer_out);
            redist74_i_llvm_fpga_forked_if_loop_3_b4_forked_if_loop_33_out_buffer_out_4_delay_1 <= redist74_i_llvm_fpga_forked_if_loop_3_b4_forked_if_loop_33_out_buffer_out_4_delay_0;
            redist74_i_llvm_fpga_forked_if_loop_3_b4_forked_if_loop_33_out_buffer_out_4_delay_2 <= redist74_i_llvm_fpga_forked_if_loop_3_b4_forked_if_loop_33_out_buffer_out_4_delay_1;
            redist74_i_llvm_fpga_forked_if_loop_3_b4_forked_if_loop_33_out_buffer_out_4_q <= redist74_i_llvm_fpga_forked_if_loop_3_b4_forked_if_loop_33_out_buffer_out_4_delay_2;
        end
    end

    // i_llvm_fpga_pop_coalesce_i1_if_loop_3_b4_current_iter_isreal_if_loop_30_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b4_current_iter_isreal_if_loop_34_mux_x(MUX,126)@4
    assign i_llvm_fpga_pop_coalesce_i1_if_loop_3_b4_current_iter_isreal_if_loop_30_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b4_current_iter_isreal_if_loop_34_mux_x_s = redist74_i_llvm_fpga_forked_if_loop_3_b4_forked_if_loop_33_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_coalesce_i1_if_loop_3_b4_current_iter_isreal_if_loop_30_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b4_current_iter_isreal_if_loop_34_mux_x_s or i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_adapt_scalar_trunc4_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_if_loop_3_b4_current_iter_isreal_if_loop_30_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b4_current_iter_isreal_if_loop_34_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_if_loop_3_b4_current_iter_isreal_if_loop_30_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b4_current_iter_isreal_if_loop_34_mux_x_q = i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_adapt_scalar_trunc4_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_if_loop_3_b4_current_iter_isreal_if_loop_30_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b4_current_iter_isreal_if_loop_34_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_if_loop_3_b4_current_iter_isreal_if_loop_30_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b4_current_iter_isreal_if_loop_34_mux_x_q = 1'b0;
        endcase
    end

    // i_if_loop_3_b4_current_iter_isspec_if_loop_35(LOGICAL,62)@4
    assign i_if_loop_3_b4_current_iter_isspec_if_loop_35_q = i_llvm_fpga_pop_coalesce_i1_if_loop_3_b4_current_iter_isreal_if_loop_30_i_llvm_fpga_pop_coalesce_i1_if_loop_3_b4_current_iter_isreal_if_loop_34_mux_x_q ^ VCC_q;

    // valid_fanout_reg7(REG,218)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist54_sync_together85_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp101514_if_loop_312(BLACKBOX,69)@4
    if_loop_3_i_llvm_fpga_ffwd_dest_i1_cmp101514_0 thei_llvm_fpga_ffwd_dest_i1_cmp101514_if_loop_312 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i1_cmp101514_if_loop_312_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_if_loop_313(LOGICAL,79)@4
    assign i_unnamed_if_loop_313_q = i_llvm_fpga_ffwd_dest_i1_cmp101514_if_loop_312_out_dest_data_out_3_0 ^ VCC_q;

    // i_if_loop_3_b4_current_iter_isspec_or4_if_loop_320(LOGICAL,63)@4
    assign i_if_loop_3_b4_current_iter_isspec_or4_if_loop_320_q = i_unnamed_if_loop_313_q | i_if_loop_3_b4_current_iter_isspec_if_loop_35_q;

    // c_if_loop_3_a_local_pmem(CONSTANT,41)
    assign c_if_loop_3_a_local_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx133_if_loop_30_upper_bits_x_merged_bit_select(BITSELECT,469)@4
    assign i_arrayidx133_if_loop_30_upper_bits_x_merged_bit_select_b = c_if_loop_3_a_local_pmem_q[63:9];
    assign i_arrayidx133_if_loop_30_upper_bits_x_merged_bit_select_c = c_if_loop_3_a_local_pmem_q[8:0];

    // c_i32_072(CONSTANT,36)
    assign c_i32_072_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_175(CONSTANT,38)
    assign c_i32_175_q = $unsigned(32'b00000000000000000000000000000001);

    // redist66_i_llvm_fpga_pop_i32_i_116_pop12_if_loop_30_i_llvm_fpga_pop_i32_i_116_pop12_if_loop_314_mux_x_q_1(DELAY,548)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist66_i_llvm_fpga_pop_i32_i_116_pop12_if_loop_30_i_llvm_fpga_pop_i32_i_116_pop12_if_loop_314_mux_x_q_1_q <= $unsigned(i_llvm_fpga_pop_i32_i_116_pop12_if_loop_30_i_llvm_fpga_pop_i32_i_116_pop12_if_loop_314_mux_x_q);
        end
    end

    // i_inc18_if_loop_328(ADD,66)@5
    assign i_inc18_if_loop_328_a = {1'b0, redist66_i_llvm_fpga_pop_i32_i_116_pop12_if_loop_30_i_llvm_fpga_pop_i32_i_116_pop12_if_loop_314_mux_x_q_1_q};
    assign i_inc18_if_loop_328_b = {1'b0, c_i32_175_q};
    assign i_inc18_if_loop_328_o = $unsigned(i_inc18_if_loop_328_a) + $unsigned(i_inc18_if_loop_328_b);
    assign i_inc18_if_loop_328_q = i_inc18_if_loop_328_o[32:0];

    // bgTrunc_i_inc18_if_loop_328_sel_x(BITSELECT,91)@5
    assign bgTrunc_i_inc18_if_loop_328_sel_x_b = i_inc18_if_loop_328_q[31:0];

    // redist71_bgTrunc_i_inc18_if_loop_328_sel_x_b_1(DELAY,553)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist71_bgTrunc_i_inc18_if_loop_328_sel_x_b_1_q <= $unsigned(bgTrunc_i_inc18_if_loop_328_sel_x_b);
        end
    end

    // valid_fanout_reg14(REG,225)@0 + 1
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

    // valid_fanout_reg13(REG,224)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist55_sync_together85_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i32_i_116_push12_if_loop_30_i_llvm_fpga_push_i32_i_116_push12_if_loop_31_x(FIFODELAY,136)@1 + 22
    // in i_valid@5
    // in i_write_pred@5
    // in i_data@6
    // out o_data@4
    assign i_llvm_fpga_push_i32_i_116_push12_if_loop_30_i_llvm_fpga_push_i32_i_116_push12_if_loop_31_x_i_stall = ~ (valid_fanout_reg14_q & i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_inv_pred_x_q);
    assign i_llvm_fpga_push_i32_i_116_push12_if_loop_30_i_llvm_fpga_push_i32_i_116_push12_if_loop_31_x_i_valid = valid_fanout_reg13_q & redist60_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_inv_pred_x_q_4_q;
    assign i_llvm_fpga_push_i32_i_116_push12_if_loop_30_i_llvm_fpga_push_i32_i_116_push12_if_loop_31_x_i_data = redist71_bgTrunc_i_inc18_if_loop_328_sel_x_b_1_q;
    assign i_llvm_fpga_push_i32_i_116_push12_if_loop_30_i_llvm_fpga_push_i32_i_116_push12_if_loop_31_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_i_116_push12_if_loop_30_i_llvm_fpga_push_i32_i_116_push12_if_loop_31_x_i_valid[0];
    assign i_llvm_fpga_push_i32_i_116_push12_if_loop_30_i_llvm_fpga_push_i32_i_116_push12_if_loop_31_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_i_116_push12_if_loop_30_i_llvm_fpga_push_i32_i_116_push12_if_loop_31_x_i_stall[0];
    hld_fifo #(
        .DEPTH(22),
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
    ) thei_llvm_fpga_push_i32_i_116_push12_if_loop_30_i_llvm_fpga_push_i32_i_116_push12_if_loop_31_x (
        .i_valid(i_llvm_fpga_push_i32_i_116_push12_if_loop_30_i_llvm_fpga_push_i32_i_116_push12_if_loop_31_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_i_116_push12_if_loop_30_i_llvm_fpga_push_i32_i_116_push12_if_loop_31_x_i_stall_bitsignaltemp),
        .i_data(redist71_bgTrunc_i_inc18_if_loop_328_sel_x_b_1_q),
        .o_data(i_llvm_fpga_push_i32_i_116_push12_if_loop_30_i_llvm_fpga_push_i32_i_116_push12_if_loop_31_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_116_pop12_if_loop_30_i_llvm_fpga_pop_i32_i_116_pop12_if_loop_314_mux_x(MUX,127)@4
    assign i_llvm_fpga_pop_i32_i_116_pop12_if_loop_30_i_llvm_fpga_pop_i32_i_116_pop12_if_loop_314_mux_x_s = redist74_i_llvm_fpga_forked_if_loop_3_b4_forked_if_loop_33_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i32_i_116_pop12_if_loop_30_i_llvm_fpga_pop_i32_i_116_pop12_if_loop_314_mux_x_s or i_llvm_fpga_push_i32_i_116_push12_if_loop_30_i_llvm_fpga_push_i32_i_116_push12_if_loop_31_x_o_data or c_i32_072_q)
    begin
        unique case (i_llvm_fpga_pop_i32_i_116_pop12_if_loop_30_i_llvm_fpga_pop_i32_i_116_pop12_if_loop_314_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_i_116_pop12_if_loop_30_i_llvm_fpga_pop_i32_i_116_pop12_if_loop_314_mux_x_q = i_llvm_fpga_push_i32_i_116_push12_if_loop_30_i_llvm_fpga_push_i32_i_116_push12_if_loop_31_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_i_116_pop12_if_loop_30_i_llvm_fpga_pop_i32_i_116_pop12_if_loop_314_mux_x_q = c_i32_072_q;
            default : i_llvm_fpga_pop_i32_i_116_pop12_if_loop_30_i_llvm_fpga_pop_i32_i_116_pop12_if_loop_314_mux_x_q = 32'b0;
        endcase
    end

    // i_idxprom12_if_loop_315_sel_x(BITSELECT,125)@4
    assign i_idxprom12_if_loop_315_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_116_pop12_if_loop_30_i_llvm_fpga_pop_i32_i_116_pop12_if_loop_314_mux_x_q[31:0]};

    // i_idxprom12_if_loop_315_vt_select_31(BITSELECT,61)@4
    assign i_idxprom12_if_loop_315_vt_select_31_b = i_idxprom12_if_loop_315_sel_x_b[31:0];

    // i_idxprom12_if_loop_315_vt_join(BITJOIN,60)@4
    assign i_idxprom12_if_loop_315_vt_join_q = {c_i32_072_q, i_idxprom12_if_loop_315_vt_select_31_b};

    // i_arrayidx133_if_loop_30_dupName_0_trunc_sel_x(BITSELECT,111)@4
    assign i_arrayidx133_if_loop_30_dupName_0_trunc_sel_x_b = i_idxprom12_if_loop_315_vt_join_q[8:0];

    // i_arrayidx133_if_loop_30_narrow_x(BITSELECT,104)@4
    assign i_arrayidx133_if_loop_30_narrow_x_b = i_arrayidx133_if_loop_30_dupName_0_trunc_sel_x_b[6:0];

    // i_arrayidx133_if_loop_30_shift_join_x(BITJOIN,105)@4
    assign i_arrayidx133_if_loop_30_shift_join_x_q = {i_arrayidx133_if_loop_30_narrow_x_b, i_arrayidx133_if_loop_316_vt_const_1_q};

    // i_arrayidx133_if_loop_30_add_x(ADD,101)@4
    assign i_arrayidx133_if_loop_30_add_x_a = {1'b0, i_arrayidx133_if_loop_30_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx133_if_loop_30_add_x_b = {1'b0, i_arrayidx133_if_loop_30_shift_join_x_q};
    assign i_arrayidx133_if_loop_30_add_x_o = $unsigned(i_arrayidx133_if_loop_30_add_x_a) + $unsigned(i_arrayidx133_if_loop_30_add_x_b);
    assign i_arrayidx133_if_loop_30_add_x_q = i_arrayidx133_if_loop_30_add_x_o[9:0];

    // i_arrayidx133_if_loop_30_dupName_2_trunc_sel_x(BITSELECT,112)@4
    assign i_arrayidx133_if_loop_30_dupName_2_trunc_sel_x_b = i_arrayidx133_if_loop_30_add_x_q[8:0];

    // i_arrayidx133_if_loop_30_append_upper_bits_x(BITJOIN,102)@4
    assign i_arrayidx133_if_loop_30_append_upper_bits_x_q = {i_arrayidx133_if_loop_30_upper_bits_x_merged_bit_select_b, i_arrayidx133_if_loop_30_dupName_2_trunc_sel_x_b};

    // i_arrayidx133_if_loop_316_vt_select_63(BITSELECT,48)@4
    assign i_arrayidx133_if_loop_316_vt_select_63_b = i_arrayidx133_if_loop_30_append_upper_bits_x_q[63:2];

    // i_arrayidx133_if_loop_316_vt_const_1(CONSTANT,46)
    assign i_arrayidx133_if_loop_316_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx133_if_loop_316_vt_join(BITJOIN,47)@4
    assign i_arrayidx133_if_loop_316_vt_join_q = {i_arrayidx133_if_loop_316_vt_select_63_b, i_arrayidx133_if_loop_316_vt_const_1_q};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_mem_lm1_if_loop_318(BLACKBOX,73)@4
    // out out_lm1_if_loop_3_avm_address@20000000
    // out out_lm1_if_loop_3_avm_burstcount@20000000
    // out out_lm1_if_loop_3_avm_byteenable@20000000
    // out out_lm1_if_loop_3_avm_enable@20000000
    // out out_lm1_if_loop_3_avm_read@20000000
    // out out_lm1_if_loop_3_avm_write@20000000
    // out out_lm1_if_loop_3_avm_writedata@20000000
    // out out_o_almost_empty@8
    // out out_o_empty@8
    // out out_o_readdata@8
    // out out_o_stall@8
    // out out_o_valid@8
    if_loop_3_i_llvm_fpga_mem_lm1_0 thei_llvm_fpga_mem_lm1_if_loop_318 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx133_if_loop_316_vt_join_q),
        .in_i_predicate(i_if_loop_3_b4_current_iter_isspec_or4_if_loop_320_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg9_q),
        .in_lm1_if_loop_3_avm_readdata(in_lm1_if_loop_3_avm_readdata),
        .in_lm1_if_loop_3_avm_readdatavalid(in_lm1_if_loop_3_avm_readdatavalid),
        .in_lm1_if_loop_3_avm_waitrequest(in_lm1_if_loop_3_avm_waitrequest),
        .in_lm1_if_loop_3_avm_writeack(in_lm1_if_loop_3_avm_writeack),
        .out_lm1_if_loop_3_avm_address(i_llvm_fpga_mem_lm1_if_loop_318_out_lm1_if_loop_3_avm_address),
        .out_lm1_if_loop_3_avm_burstcount(i_llvm_fpga_mem_lm1_if_loop_318_out_lm1_if_loop_3_avm_burstcount),
        .out_lm1_if_loop_3_avm_byteenable(i_llvm_fpga_mem_lm1_if_loop_318_out_lm1_if_loop_3_avm_byteenable),
        .out_lm1_if_loop_3_avm_enable(i_llvm_fpga_mem_lm1_if_loop_318_out_lm1_if_loop_3_avm_enable),
        .out_lm1_if_loop_3_avm_read(i_llvm_fpga_mem_lm1_if_loop_318_out_lm1_if_loop_3_avm_read),
        .out_lm1_if_loop_3_avm_write(i_llvm_fpga_mem_lm1_if_loop_318_out_lm1_if_loop_3_avm_write),
        .out_lm1_if_loop_3_avm_writedata(i_llvm_fpga_mem_lm1_if_loop_318_out_lm1_if_loop_3_avm_writedata),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_lm1_if_loop_318_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,44)
    assign out_lm1_if_loop_3_avm_address = i_llvm_fpga_mem_lm1_if_loop_318_out_lm1_if_loop_3_avm_address;
    assign out_lm1_if_loop_3_avm_enable = i_llvm_fpga_mem_lm1_if_loop_318_out_lm1_if_loop_3_avm_enable;
    assign out_lm1_if_loop_3_avm_read = i_llvm_fpga_mem_lm1_if_loop_318_out_lm1_if_loop_3_avm_read;
    assign out_lm1_if_loop_3_avm_write = i_llvm_fpga_mem_lm1_if_loop_318_out_lm1_if_loop_3_avm_write;
    assign out_lm1_if_loop_3_avm_writedata = i_llvm_fpga_mem_lm1_if_loop_318_out_lm1_if_loop_3_avm_writedata;
    assign out_lm1_if_loop_3_avm_byteenable = i_llvm_fpga_mem_lm1_if_loop_318_out_lm1_if_loop_3_avm_byteenable;
    assign out_lm1_if_loop_3_avm_burstcount = i_llvm_fpga_mem_lm1_if_loop_318_out_lm1_if_loop_3_avm_burstcount;

    // regfree_osync(GPOUT,87)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_if_loop_36_out_exiting_valid_out;

    // valid_fanout_reg10(REG,221)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist54_sync_together85_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_if_loop_3_b_local_pmem(CONSTANT,42)
    assign c_if_loop_3_b_local_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx154_if_loop_30_upper_bits_x_merged_bit_select(BITSELECT,470)@4
    assign i_arrayidx154_if_loop_30_upper_bits_x_merged_bit_select_b = c_if_loop_3_b_local_pmem_q[63:9];
    assign i_arrayidx154_if_loop_30_upper_bits_x_merged_bit_select_c = c_if_loop_3_b_local_pmem_q[8:0];

    // i_arrayidx154_if_loop_30_add_x(ADD,113)@4
    assign i_arrayidx154_if_loop_30_add_x_a = {1'b0, i_arrayidx154_if_loop_30_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx154_if_loop_30_add_x_b = {1'b0, i_arrayidx133_if_loop_30_shift_join_x_q};
    assign i_arrayidx154_if_loop_30_add_x_o = $unsigned(i_arrayidx154_if_loop_30_add_x_a) + $unsigned(i_arrayidx154_if_loop_30_add_x_b);
    assign i_arrayidx154_if_loop_30_add_x_q = i_arrayidx154_if_loop_30_add_x_o[9:0];

    // i_arrayidx154_if_loop_30_dupName_2_trunc_sel_x(BITSELECT,124)@4
    assign i_arrayidx154_if_loop_30_dupName_2_trunc_sel_x_b = i_arrayidx154_if_loop_30_add_x_q[8:0];

    // i_arrayidx154_if_loop_30_append_upper_bits_x(BITJOIN,114)@4
    assign i_arrayidx154_if_loop_30_append_upper_bits_x_q = {i_arrayidx154_if_loop_30_upper_bits_x_merged_bit_select_b, i_arrayidx154_if_loop_30_dupName_2_trunc_sel_x_b};

    // i_arrayidx154_if_loop_319_vt_select_63(BITSELECT,51)@4
    assign i_arrayidx154_if_loop_319_vt_select_63_b = i_arrayidx154_if_loop_30_append_upper_bits_x_q[63:2];

    // i_arrayidx154_if_loop_319_vt_join(BITJOIN,50)@4
    assign i_arrayidx154_if_loop_319_vt_join_q = {i_arrayidx154_if_loop_319_vt_select_63_b, i_arrayidx133_if_loop_316_vt_const_1_q};

    // i_llvm_fpga_mem_lm62_if_loop_321(BLACKBOX,74)@4
    // out out_lm62_if_loop_3_avm_address@20000000
    // out out_lm62_if_loop_3_avm_burstcount@20000000
    // out out_lm62_if_loop_3_avm_byteenable@20000000
    // out out_lm62_if_loop_3_avm_enable@20000000
    // out out_lm62_if_loop_3_avm_read@20000000
    // out out_lm62_if_loop_3_avm_write@20000000
    // out out_lm62_if_loop_3_avm_writedata@20000000
    // out out_o_almost_empty@8
    // out out_o_empty@8
    // out out_o_readdata@8
    // out out_o_stall@8
    // out out_o_valid@8
    if_loop_3_i_llvm_fpga_mem_lm62_0 thei_llvm_fpga_mem_lm62_if_loop_321 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx154_if_loop_319_vt_join_q),
        .in_i_predicate(i_if_loop_3_b4_current_iter_isspec_or4_if_loop_320_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg10_q),
        .in_lm62_if_loop_3_avm_readdata(in_lm62_if_loop_3_avm_readdata),
        .in_lm62_if_loop_3_avm_readdatavalid(in_lm62_if_loop_3_avm_readdatavalid),
        .in_lm62_if_loop_3_avm_waitrequest(in_lm62_if_loop_3_avm_waitrequest),
        .in_lm62_if_loop_3_avm_writeack(in_lm62_if_loop_3_avm_writeack),
        .out_lm62_if_loop_3_avm_address(i_llvm_fpga_mem_lm62_if_loop_321_out_lm62_if_loop_3_avm_address),
        .out_lm62_if_loop_3_avm_burstcount(i_llvm_fpga_mem_lm62_if_loop_321_out_lm62_if_loop_3_avm_burstcount),
        .out_lm62_if_loop_3_avm_byteenable(i_llvm_fpga_mem_lm62_if_loop_321_out_lm62_if_loop_3_avm_byteenable),
        .out_lm62_if_loop_3_avm_enable(i_llvm_fpga_mem_lm62_if_loop_321_out_lm62_if_loop_3_avm_enable),
        .out_lm62_if_loop_3_avm_read(i_llvm_fpga_mem_lm62_if_loop_321_out_lm62_if_loop_3_avm_read),
        .out_lm62_if_loop_3_avm_write(i_llvm_fpga_mem_lm62_if_loop_321_out_lm62_if_loop_3_avm_write),
        .out_lm62_if_loop_3_avm_writedata(i_llvm_fpga_mem_lm62_if_loop_321_out_lm62_if_loop_3_avm_writedata),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_lm62_if_loop_321_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,96)
    assign out_lm62_if_loop_3_avm_address = i_llvm_fpga_mem_lm62_if_loop_321_out_lm62_if_loop_3_avm_address;
    assign out_lm62_if_loop_3_avm_enable = i_llvm_fpga_mem_lm62_if_loop_321_out_lm62_if_loop_3_avm_enable;
    assign out_lm62_if_loop_3_avm_read = i_llvm_fpga_mem_lm62_if_loop_321_out_lm62_if_loop_3_avm_read;
    assign out_lm62_if_loop_3_avm_write = i_llvm_fpga_mem_lm62_if_loop_321_out_lm62_if_loop_3_avm_write;
    assign out_lm62_if_loop_3_avm_writedata = i_llvm_fpga_mem_lm62_if_loop_321_out_lm62_if_loop_3_avm_writedata;
    assign out_lm62_if_loop_3_avm_byteenable = i_llvm_fpga_mem_lm62_if_loop_321_out_lm62_if_loop_3_avm_byteenable;
    assign out_lm62_if_loop_3_avm_burstcount = i_llvm_fpga_mem_lm62_if_loop_321_out_lm62_if_loop_3_avm_burstcount;

    // redist56_sync_together85_aunroll_x_in_i_valid_36(DELAY,538)
    dspba_delay_ver #( .width(1), .depth(32), .reset_kind("SYNC"), .phase(4), .modulus(2), .reset_high(1'b0) )
    redist56_sync_together85_aunroll_x_in_i_valid_36 ( .xin(redist55_sync_together85_aunroll_x_in_i_valid_4_q), .xout(redist56_sync_together85_aunroll_x_in_i_valid_36_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist57_sync_together85_aunroll_x_in_i_valid_61(DELAY,539)
    dspba_delay_ver #( .width(1), .depth(25), .reset_kind("SYNC"), .phase(36), .modulus(2), .reset_high(1'b0) )
    redist57_sync_together85_aunroll_x_in_i_valid_61 ( .xin(redist56_sync_together85_aunroll_x_in_i_valid_36_q), .xout(redist57_sync_together85_aunroll_x_in_i_valid_61_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist58_sync_together85_aunroll_x_in_i_valid_62(DELAY,540)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist58_sync_together85_aunroll_x_in_i_valid_62_q <= $unsigned(redist57_sync_together85_aunroll_x_in_i_valid_61_q);
        end
    end

    // valid_fanout_reg20(REG,231)@62 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist58_sync_together85_aunroll_x_in_i_valid_62_q);
        end
    end

    // i_sub_if_loop_322(SUB,78)@8
    assign i_sub_if_loop_322_a = {1'b0, i_llvm_fpga_mem_lm1_if_loop_318_out_o_readdata};
    assign i_sub_if_loop_322_b = {1'b0, i_llvm_fpga_mem_lm62_if_loop_321_out_o_readdata};
    assign i_sub_if_loop_322_o = $unsigned(i_sub_if_loop_322_a) - $unsigned(i_sub_if_loop_322_b);
    assign i_sub_if_loop_322_q = i_sub_if_loop_322_o[32:0];

    // bgTrunc_i_sub_if_loop_322_sel_x(BITSELECT,92)@8
    assign bgTrunc_i_sub_if_loop_322_sel_x_b = $unsigned(i_sub_if_loop_322_q[31:0]);

    // redist68_bgTrunc_i_sub_if_loop_322_sel_x_b_1(DELAY,550)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist68_bgTrunc_i_sub_if_loop_322_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub_if_loop_322_sel_x_b);
        end
    end

    // xMSB_uid151_i_div_if_loop_326(BITSELECT,150)@9
    assign xMSB_uid151_i_div_if_loop_326_b = $unsigned(redist68_bgTrunc_i_sub_if_loop_322_sel_x_b_1_q[31:31]);

    // redist49_xMSB_uid151_i_div_if_loop_326_b_1(DELAY,531)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist49_xMSB_uid151_i_div_if_loop_326_b_1_q <= $unsigned(xMSB_uid151_i_div_if_loop_326_b);
        end
    end

    // redist50_xMSB_uid151_i_div_if_loop_326_b_31(DELAY,532)
    dspba_delay_ver #( .width(1), .depth(30), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist50_xMSB_uid151_i_div_if_loop_326_b_31 ( .xin(redist49_xMSB_uid151_i_div_if_loop_326_b_1_q), .xout(redist50_xMSB_uid151_i_div_if_loop_326_b_31_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist51_xMSB_uid151_i_div_if_loop_326_b_32(DELAY,533)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist51_xMSB_uid151_i_div_if_loop_326_b_32_q <= $unsigned(redist50_xMSB_uid151_i_div_if_loop_326_b_31_q);
        end
    end

    // redist52_xMSB_uid151_i_div_if_loop_326_b_51(DELAY,534)
    dspba_delay_ver #( .width(1), .depth(19), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist52_xMSB_uid151_i_div_if_loop_326_b_51 ( .xin(redist51_xMSB_uid151_i_div_if_loop_326_b_32_q), .xout(redist52_xMSB_uid151_i_div_if_loop_326_b_51_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_offset(CONSTANT,597)
    assign redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_offset_q = $unsigned(4'b1000);

    // redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_rdcnt(ADD,598)
    assign redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_rdcnt_a = {1'b0, redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_wraddr_q};
    assign redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_rdcnt_b = {1'b0, redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_rdcnt_o <= $unsigned(redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_rdcnt_a) + $unsigned(redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_rdcnt_b);
        end
    end
    assign redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_rdcnt_q = redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_rdcnt_o[4:0];

    // c_i32_100074(CONSTANT,37)
    assign c_i32_100074_q = $unsigned(32'b00000000000000000000001111101000);

    // redist61_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_inv_pred_x_q_36(DELAY,543)
    dspba_delay_ver #( .width(1), .depth(32), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist61_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_inv_pred_x_q_36 ( .xin(redist60_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_inv_pred_x_q_4_q), .xout(redist61_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_inv_pred_x_q_36_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg16(REG,227)@36 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist56_sync_together85_aunroll_x_in_i_valid_36_q);
        end
    end

    // redist62_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_inv_pred_x_q_61(DELAY,544)
    dspba_delay_ver #( .width(1), .depth(25), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist62_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_inv_pred_x_q_61 ( .xin(redist61_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_inv_pred_x_q_36_q), .xout(redist62_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_inv_pred_x_q_61_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg15(REG,226)@61 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist57_sync_together85_aunroll_x_in_i_valid_61_q);
        end
    end

    // i_llvm_fpga_push_i32_sum_017_push11_if_loop_30_i_llvm_fpga_push_i32_sum_017_push11_if_loop_31_x(FIFODELAY,139)@37 + 1
    // in i_valid@62
    // in i_write_pred@62
    // in i_data@63
    // out o_data@40
    assign i_llvm_fpga_push_i32_sum_017_push11_if_loop_30_i_llvm_fpga_push_i32_sum_017_push11_if_loop_31_x_i_stall = ~ (valid_fanout_reg16_q & redist61_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_inv_pred_x_q_36_q);
    assign i_llvm_fpga_push_i32_sum_017_push11_if_loop_30_i_llvm_fpga_push_i32_sum_017_push11_if_loop_31_x_i_valid = valid_fanout_reg15_q & redist62_i_llvm_fpga_push_i1_if_loop_3_b4_next_iter_isreal_push_if_loop_30_inv_pred_x_q_61_q;
    assign i_llvm_fpga_push_i32_sum_017_push11_if_loop_30_i_llvm_fpga_push_i32_sum_017_push11_if_loop_31_x_i_data = i_acl_if_loop_327_q;
    assign i_llvm_fpga_push_i32_sum_017_push11_if_loop_30_i_llvm_fpga_push_i32_sum_017_push11_if_loop_31_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i32_sum_017_push11_if_loop_30_i_llvm_fpga_push_i32_sum_017_push11_if_loop_31_x_i_valid[0];
    assign i_llvm_fpga_push_i32_sum_017_push11_if_loop_30_i_llvm_fpga_push_i32_sum_017_push11_if_loop_31_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i32_sum_017_push11_if_loop_30_i_llvm_fpga_push_i32_sum_017_push11_if_loop_31_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i32_sum_017_push11_if_loop_30_i_llvm_fpga_push_i32_sum_017_push11_if_loop_31_x (
        .i_valid(i_llvm_fpga_push_i32_sum_017_push11_if_loop_30_i_llvm_fpga_push_i32_sum_017_push11_if_loop_31_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i32_sum_017_push11_if_loop_30_i_llvm_fpga_push_i32_sum_017_push11_if_loop_31_x_i_stall_bitsignaltemp),
        .i_data(i_acl_if_loop_327_q),
        .o_data(i_llvm_fpga_push_i32_sum_017_push11_if_loop_30_i_llvm_fpga_push_i32_sum_017_push11_if_loop_31_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // redist76_i_llvm_fpga_forked_if_loop_3_b4_forked_if_loop_33_out_buffer_out_40(DELAY,558)
    dspba_delay_ver #( .width(1), .depth(35), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist76_i_llvm_fpga_forked_if_loop_3_b4_forked_if_loop_33_out_buffer_out_40 ( .xin(redist75_i_llvm_fpga_forked_if_loop_3_b4_forked_if_loop_33_out_buffer_out_5_q), .xout(redist76_i_llvm_fpga_forked_if_loop_3_b4_forked_if_loop_33_out_buffer_out_40_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x(MUX,128)@40
    assign i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_s = redist76_i_llvm_fpga_forked_if_loop_3_b4_forked_if_loop_33_out_buffer_out_40_q;
    always @(i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_s or i_llvm_fpga_push_i32_sum_017_push11_if_loop_30_i_llvm_fpga_push_i32_sum_017_push11_if_loop_31_x_o_data or c_i32_100074_q)
    begin
        unique case (i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q = i_llvm_fpga_push_i32_sum_017_push11_if_loop_30_i_llvm_fpga_push_i32_sum_017_push11_if_loop_31_x_o_data;
            1'b1 : i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q = c_i32_100074_q;
            default : i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q = 32'b0;
        endcase
    end

    // redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_inputreg0(DELAY,593)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_inputreg0_q <= $unsigned(i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q);
        end
    end

    // redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_wraddr(COUNTER,596)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_wraddr_i <= $unsigned(redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_wraddr_i) + $unsigned(4'd1);
        end
    end
    assign redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_wraddr_q = redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_wraddr_i[3:0];

    // redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_mem(DUALMEM,595)
    assign redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_mem_ia = $unsigned(redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_inputreg0_q);
    assign redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_mem_aa = redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_wraddr_q;
    assign redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_mem_ab = redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_rdcnt_q[3:0];
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
    ) redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_mem_aa),
        .data_a(redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_mem_ab),
        .q_b(redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_mem_iq),
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
    assign redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_mem_q = redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_mem_iq[31:0];

    // redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_outputreg0(DELAY,594)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_outputreg0_q <= $unsigned(redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_mem_q);
        end
    end

    // signX_uid189_i_div_if_loop_326(BITSELECT,188)@53
    assign signX_uid189_i_div_if_loop_326_b = $unsigned(redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_outputreg0_q[31:31]);

    // redist37_signX_uid189_i_div_if_loop_326_b_7(DELAY,519)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist37_signX_uid189_i_div_if_loop_326_b_7 ( .xin(signX_uid189_i_div_if_loop_326_b), .xout(redist37_signX_uid189_i_div_if_loop_326_b_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // resultSign_uid199_i_div_if_loop_326(LOGICAL,198)@60 + 1
    assign resultSign_uid199_i_div_if_loop_326_qi = redist37_signX_uid189_i_div_if_loop_326_b_7_q ^ redist52_xMSB_uid151_i_div_if_loop_326_b_51_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    resultSign_uid199_i_div_if_loop_326_delay ( .xin(resultSign_uid199_i_div_if_loop_326_qi), .xout(resultSign_uid199_i_div_if_loop_326_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // cstSubFinal_uid207_i_div_if_loop_326(BITJOIN,206)@61
    assign cstSubFinal_uid207_i_div_if_loop_326_q = {resultSign_uid199_i_div_if_loop_326_q, VCC_q};

    // redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_offset(CONSTANT,566)
    assign redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_offset_q = $unsigned(3'b101);

    // redist35_resFinal_uid191_i_div_if_loop_326_q_8_rdcnt(ADD,592)
    assign redist35_resFinal_uid191_i_div_if_loop_326_q_8_rdcnt_a = {1'b0, redist35_resFinal_uid191_i_div_if_loop_326_q_8_wraddr_q};
    assign redist35_resFinal_uid191_i_div_if_loop_326_q_8_rdcnt_b = {1'b0, redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist35_resFinal_uid191_i_div_if_loop_326_q_8_rdcnt_o <= $unsigned(redist35_resFinal_uid191_i_div_if_loop_326_q_8_rdcnt_a) + $unsigned(redist35_resFinal_uid191_i_div_if_loop_326_q_8_rdcnt_b);
        end
    end
    assign redist35_resFinal_uid191_i_div_if_loop_326_q_8_rdcnt_q = redist35_resFinal_uid191_i_div_if_loop_326_q_8_rdcnt_o[3:0];

    // cstValOvfneg_uid188_i_div_if_loop_326(CONSTANT,187)
    assign cstValOvfneg_uid188_i_div_if_loop_326_q = $unsigned(32'b10000000000000000000000000000000);

    // cstValOvfPos_uid187_i_div_if_loop_326(CONSTANT,186)
    assign cstValOvfPos_uid187_i_div_if_loop_326_q = $unsigned(32'b01111111111111111111111111111111);

    // cstOvf_uid190_i_div_if_loop_326(MUX,189)@53
    assign cstOvf_uid190_i_div_if_loop_326_s = signX_uid189_i_div_if_loop_326_b;
    always @(cstOvf_uid190_i_div_if_loop_326_s or cstValOvfPos_uid187_i_div_if_loop_326_q or cstValOvfneg_uid188_i_div_if_loop_326_q)
    begin
        unique case (cstOvf_uid190_i_div_if_loop_326_s)
            1'b0 : cstOvf_uid190_i_div_if_loop_326_q = cstValOvfPos_uid187_i_div_if_loop_326_q;
            1'b1 : cstOvf_uid190_i_div_if_loop_326_q = cstValOvfneg_uid188_i_div_if_loop_326_q;
            default : cstOvf_uid190_i_div_if_loop_326_q = 32'b0;
        endcase
    end

    // prodXInvY_uid180_i_div_if_loop_326_bjB3(BITJOIN,386)@42
    assign prodXInvY_uid180_i_div_if_loop_326_bjB3_q = {GND_q, prodXInvY_uid180_i_div_if_loop_326_bs2_merged_bit_select_b};

    // oneInvRes_uid171_i_div_if_loop_326(CONSTANT,170)
    assign oneInvRes_uid171_i_div_if_loop_326_q = $unsigned(33'b100000000000000000000000000000000);

    // redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_offset(CONSTANT,585)
    assign redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_offset_q = $unsigned(2'b10);

    // redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_rdcnt(ADD,586)
    assign redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_rdcnt_a = {1'b0, redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_wraddr_q};
    assign redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_rdcnt_b = {1'b0, redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_rdcnt_o <= $unsigned(redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_rdcnt_a) + $unsigned(redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_rdcnt_b);
        end
    end
    assign redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_rdcnt_q = redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_rdcnt_o[2:0];

    // redist12_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_10_rdcnt(ADD,580)
    assign redist12_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_10_rdcnt_a = {1'b0, redist12_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_10_wraddr_q};
    assign redist12_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_10_rdcnt_b = {1'b0, redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_10_rdcnt_o <= $unsigned(redist12_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_10_rdcnt_a) + $unsigned(redist12_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_10_rdcnt_b);
        end
    end
    assign redist12_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_10_rdcnt_q = redist12_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_10_rdcnt_o[3:0];

    // leftShiftStage2Idx3Rng3_uid379_normY_uid158_i_div_if_loop_326(BITSELECT,378)@16
    assign leftShiftStage2Idx3Rng3_uid379_normY_uid158_i_div_if_loop_326_in = leftShiftStage1_uid371_normY_uid158_i_div_if_loop_326_q[28:0];
    assign leftShiftStage2Idx3Rng3_uid379_normY_uid158_i_div_if_loop_326_b = leftShiftStage2Idx3Rng3_uid379_normY_uid158_i_div_if_loop_326_in[28:0];

    // leftShiftStage2Idx3Pad3_uid378_normY_uid158_i_div_if_loop_326(CONSTANT,377)
    assign leftShiftStage2Idx3Pad3_uid378_normY_uid158_i_div_if_loop_326_q = $unsigned(3'b000);

    // leftShiftStage2Idx3_uid380_normY_uid158_i_div_if_loop_326(BITJOIN,379)@16
    assign leftShiftStage2Idx3_uid380_normY_uid158_i_div_if_loop_326_q = {leftShiftStage2Idx3Rng3_uid379_normY_uid158_i_div_if_loop_326_b, leftShiftStage2Idx3Pad3_uid378_normY_uid158_i_div_if_loop_326_q};

    // leftShiftStage2Idx2Rng2_uid376_normY_uid158_i_div_if_loop_326(BITSELECT,375)@16
    assign leftShiftStage2Idx2Rng2_uid376_normY_uid158_i_div_if_loop_326_in = leftShiftStage1_uid371_normY_uid158_i_div_if_loop_326_q[29:0];
    assign leftShiftStage2Idx2Rng2_uid376_normY_uid158_i_div_if_loop_326_b = leftShiftStage2Idx2Rng2_uid376_normY_uid158_i_div_if_loop_326_in[29:0];

    // leftShiftStage2Idx2_uid377_normY_uid158_i_div_if_loop_326(BITJOIN,376)@16
    assign leftShiftStage2Idx2_uid377_normY_uid158_i_div_if_loop_326_q = {leftShiftStage2Idx2Rng2_uid376_normY_uid158_i_div_if_loop_326_b, i_arrayidx133_if_loop_316_vt_const_1_q};

    // leftShiftStage2Idx1Rng1_uid373_normY_uid158_i_div_if_loop_326(BITSELECT,372)@16
    assign leftShiftStage2Idx1Rng1_uid373_normY_uid158_i_div_if_loop_326_in = leftShiftStage1_uid371_normY_uid158_i_div_if_loop_326_q[30:0];
    assign leftShiftStage2Idx1Rng1_uid373_normY_uid158_i_div_if_loop_326_b = leftShiftStage2Idx1Rng1_uid373_normY_uid158_i_div_if_loop_326_in[30:0];

    // leftShiftStage2Idx1_uid374_normY_uid158_i_div_if_loop_326(BITJOIN,373)@16
    assign leftShiftStage2Idx1_uid374_normY_uid158_i_div_if_loop_326_q = {leftShiftStage2Idx1Rng1_uid373_normY_uid158_i_div_if_loop_326_b, GND_q};

    // leftShiftStage1Idx3Rng12_uid368_normY_uid158_i_div_if_loop_326(BITSELECT,367)@16
    assign leftShiftStage1Idx3Rng12_uid368_normY_uid158_i_div_if_loop_326_in = leftShiftStage0_uid360_normY_uid158_i_div_if_loop_326_q[19:0];
    assign leftShiftStage1Idx3Rng12_uid368_normY_uid158_i_div_if_loop_326_b = leftShiftStage1Idx3Rng12_uid368_normY_uid158_i_div_if_loop_326_in[19:0];

    // rightBottomX_bottomExtension_uid330_pT3_uid297_invPolyEval(CONSTANT,329)
    assign rightBottomX_bottomExtension_uid330_pT3_uid297_invPolyEval_q = $unsigned(12'b000000000000);

    // leftShiftStage1Idx3_uid369_normY_uid158_i_div_if_loop_326(BITJOIN,368)@16
    assign leftShiftStage1Idx3_uid369_normY_uid158_i_div_if_loop_326_q = {leftShiftStage1Idx3Rng12_uid368_normY_uid158_i_div_if_loop_326_b, rightBottomX_bottomExtension_uid330_pT3_uid297_invPolyEval_q};

    // leftShiftStage1Idx2Rng8_uid365_normY_uid158_i_div_if_loop_326(BITSELECT,364)@16
    assign leftShiftStage1Idx2Rng8_uid365_normY_uid158_i_div_if_loop_326_in = leftShiftStage0_uid360_normY_uid158_i_div_if_loop_326_q[23:0];
    assign leftShiftStage1Idx2Rng8_uid365_normY_uid158_i_div_if_loop_326_b = leftShiftStage1Idx2Rng8_uid365_normY_uid158_i_div_if_loop_326_in[23:0];

    // zs_uid245_zCount_uid157_i_div_if_loop_326(CONSTANT,244)
    assign zs_uid245_zCount_uid157_i_div_if_loop_326_q = $unsigned(8'b00000000);

    // leftShiftStage1Idx2_uid366_normY_uid158_i_div_if_loop_326(BITJOIN,365)@16
    assign leftShiftStage1Idx2_uid366_normY_uid158_i_div_if_loop_326_q = {leftShiftStage1Idx2Rng8_uid365_normY_uid158_i_div_if_loop_326_b, zs_uid245_zCount_uid157_i_div_if_loop_326_q};

    // leftShiftStage1Idx1Rng4_uid362_normY_uid158_i_div_if_loop_326(BITSELECT,361)@16
    assign leftShiftStage1Idx1Rng4_uid362_normY_uid158_i_div_if_loop_326_in = leftShiftStage0_uid360_normY_uid158_i_div_if_loop_326_q[27:0];
    assign leftShiftStage1Idx1Rng4_uid362_normY_uid158_i_div_if_loop_326_b = leftShiftStage1Idx1Rng4_uid362_normY_uid158_i_div_if_loop_326_in[27:0];

    // zs_uid251_zCount_uid157_i_div_if_loop_326(CONSTANT,250)
    assign zs_uid251_zCount_uid157_i_div_if_loop_326_q = $unsigned(4'b0000);

    // leftShiftStage1Idx1_uid363_normY_uid158_i_div_if_loop_326(BITJOIN,362)@16
    assign leftShiftStage1Idx1_uid363_normY_uid158_i_div_if_loop_326_q = {leftShiftStage1Idx1Rng4_uid362_normY_uid158_i_div_if_loop_326_b, zs_uid251_zCount_uid157_i_div_if_loop_326_q};

    // leftShiftStage0Idx1Rng16_uid355_normY_uid158_i_div_if_loop_326(BITSELECT,354)@15
    assign leftShiftStage0Idx1Rng16_uid355_normY_uid158_i_div_if_loop_326_in = redist48_yPS_uid156_i_div_if_loop_326_b_5_q[15:0];
    assign leftShiftStage0Idx1Rng16_uid355_normY_uid158_i_div_if_loop_326_b = leftShiftStage0Idx1Rng16_uid355_normY_uid158_i_div_if_loop_326_in[15:0];

    // zs_uid239_zCount_uid157_i_div_if_loop_326(CONSTANT,238)
    assign zs_uid239_zCount_uid157_i_div_if_loop_326_q = $unsigned(16'b0000000000000000);

    // leftShiftStage0Idx1_uid356_normY_uid158_i_div_if_loop_326(BITJOIN,355)@15
    assign leftShiftStage0Idx1_uid356_normY_uid158_i_div_if_loop_326_q = {leftShiftStage0Idx1Rng16_uid355_normY_uid158_i_div_if_loop_326_b, zs_uid239_zCount_uid157_i_div_if_loop_326_q};

    // yPSE_uid153_i_div_if_loop_326(LOGICAL,152)@9 + 1
    assign yPSE_uid153_i_div_if_loop_326_b = $unsigned({{31{xMSB_uid151_i_div_if_loop_326_b[0]}}, xMSB_uid151_i_div_if_loop_326_b});
    assign yPSE_uid153_i_div_if_loop_326_qi = redist68_bgTrunc_i_sub_if_loop_322_sel_x_b_1_q ^ yPSE_uid153_i_div_if_loop_326_b;
    dspba_delay_ver #( .width(32), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    yPSE_uid153_i_div_if_loop_326_delay ( .xin(yPSE_uid153_i_div_if_loop_326_qi), .xout(yPSE_uid153_i_div_if_loop_326_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // yPSEA_uid155_i_div_if_loop_326(ADD,154)@10
    assign yPSEA_uid155_i_div_if_loop_326_a = {1'b0, yPSE_uid153_i_div_if_loop_326_q};
    assign yPSEA_uid155_i_div_if_loop_326_b = {32'b00000000000000000000000000000000, redist49_xMSB_uid151_i_div_if_loop_326_b_1_q};
    assign yPSEA_uid155_i_div_if_loop_326_o = $unsigned(yPSEA_uid155_i_div_if_loop_326_a) + $unsigned(yPSEA_uid155_i_div_if_loop_326_b);
    assign yPSEA_uid155_i_div_if_loop_326_q = yPSEA_uid155_i_div_if_loop_326_o[32:0];

    // yPS_uid156_i_div_if_loop_326(BITSELECT,155)@10
    assign yPS_uid156_i_div_if_loop_326_in = $unsigned(yPSEA_uid155_i_div_if_loop_326_q[31:0]);
    assign yPS_uid156_i_div_if_loop_326_b = $unsigned(yPS_uid156_i_div_if_loop_326_in[31:0]);

    // redist46_yPS_uid156_i_div_if_loop_326_b_1(DELAY,528)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist46_yPS_uid156_i_div_if_loop_326_b_1_q <= $unsigned(yPS_uid156_i_div_if_loop_326_b);
        end
    end

    // redist47_yPS_uid156_i_div_if_loop_326_b_2(DELAY,529)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist47_yPS_uid156_i_div_if_loop_326_b_2_q <= $unsigned(redist46_yPS_uid156_i_div_if_loop_326_b_1_q);
        end
    end

    // redist48_yPS_uid156_i_div_if_loop_326_b_5(DELAY,530)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist48_yPS_uid156_i_div_if_loop_326_b_5_delay_0 <= $unsigned(redist47_yPS_uid156_i_div_if_loop_326_b_2_q);
            redist48_yPS_uid156_i_div_if_loop_326_b_5_delay_1 <= redist48_yPS_uid156_i_div_if_loop_326_b_5_delay_0;
            redist48_yPS_uid156_i_div_if_loop_326_b_5_q <= redist48_yPS_uid156_i_div_if_loop_326_b_5_delay_1;
        end
    end

    // vCount_uid235_zCount_uid157_i_div_if_loop_326(LOGICAL,234)@11 + 1
    assign vCount_uid235_zCount_uid157_i_div_if_loop_326_qi = $unsigned(redist46_yPS_uid156_i_div_if_loop_326_b_1_q == c_i32_072_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    vCount_uid235_zCount_uid157_i_div_if_loop_326_delay ( .xin(vCount_uid235_zCount_uid157_i_div_if_loop_326_qi), .xout(vCount_uid235_zCount_uid157_i_div_if_loop_326_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist33_vCount_uid235_zCount_uid157_i_div_if_loop_326_q_4(DELAY,515)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist33_vCount_uid235_zCount_uid157_i_div_if_loop_326_q_4_delay_0 <= $unsigned(vCount_uid235_zCount_uid157_i_div_if_loop_326_q);
            redist33_vCount_uid235_zCount_uid157_i_div_if_loop_326_q_4_delay_1 <= redist33_vCount_uid235_zCount_uid157_i_div_if_loop_326_q_4_delay_0;
            redist33_vCount_uid235_zCount_uid157_i_div_if_loop_326_q_4_q <= redist33_vCount_uid235_zCount_uid157_i_div_if_loop_326_q_4_delay_1;
        end
    end

    // c_i32_173_recast_x(CONSTANT,93)
    assign c_i32_173_recast_x_q = $unsigned(32'b11111111111111111111111111111111);

    // vStagei_uid238_zCount_uid157_i_div_if_loop_326(MUX,237)@12
    assign vStagei_uid238_zCount_uid157_i_div_if_loop_326_s = vCount_uid235_zCount_uid157_i_div_if_loop_326_q;
    always @(vStagei_uid238_zCount_uid157_i_div_if_loop_326_s or redist47_yPS_uid156_i_div_if_loop_326_b_2_q or c_i32_173_recast_x_q)
    begin
        unique case (vStagei_uid238_zCount_uid157_i_div_if_loop_326_s)
            1'b0 : vStagei_uid238_zCount_uid157_i_div_if_loop_326_q = redist47_yPS_uid156_i_div_if_loop_326_b_2_q;
            1'b1 : vStagei_uid238_zCount_uid157_i_div_if_loop_326_q = c_i32_173_recast_x_q;
            default : vStagei_uid238_zCount_uid157_i_div_if_loop_326_q = 32'b0;
        endcase
    end

    // rVStage_uid240_zCount_uid157_i_div_if_loop_326_merged_bit_select(BITSELECT,475)@12
    assign rVStage_uid240_zCount_uid157_i_div_if_loop_326_merged_bit_select_b = vStagei_uid238_zCount_uid157_i_div_if_loop_326_q[31:16];
    assign rVStage_uid240_zCount_uid157_i_div_if_loop_326_merged_bit_select_c = vStagei_uid238_zCount_uid157_i_div_if_loop_326_q[15:0];

    // vCount_uid241_zCount_uid157_i_div_if_loop_326(LOGICAL,240)@12 + 1
    assign vCount_uid241_zCount_uid157_i_div_if_loop_326_qi = $unsigned(rVStage_uid240_zCount_uid157_i_div_if_loop_326_merged_bit_select_b == zs_uid239_zCount_uid157_i_div_if_loop_326_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    vCount_uid241_zCount_uid157_i_div_if_loop_326_delay ( .xin(vCount_uid241_zCount_uid157_i_div_if_loop_326_qi), .xout(vCount_uid241_zCount_uid157_i_div_if_loop_326_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist32_vCount_uid241_zCount_uid157_i_div_if_loop_326_q_3(DELAY,514)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist32_vCount_uid241_zCount_uid157_i_div_if_loop_326_q_3_delay_0 <= $unsigned(vCount_uid241_zCount_uid157_i_div_if_loop_326_q);
            redist32_vCount_uid241_zCount_uid157_i_div_if_loop_326_q_3_q <= redist32_vCount_uid241_zCount_uid157_i_div_if_loop_326_q_3_delay_0;
        end
    end

    // redist5_rVStage_uid240_zCount_uid157_i_div_if_loop_326_merged_bit_select_c_1(DELAY,487)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_rVStage_uid240_zCount_uid157_i_div_if_loop_326_merged_bit_select_c_1_q <= $unsigned(rVStage_uid240_zCount_uid157_i_div_if_loop_326_merged_bit_select_c);
        end
    end

    // redist4_rVStage_uid240_zCount_uid157_i_div_if_loop_326_merged_bit_select_b_1(DELAY,486)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_rVStage_uid240_zCount_uid157_i_div_if_loop_326_merged_bit_select_b_1_q <= $unsigned(rVStage_uid240_zCount_uid157_i_div_if_loop_326_merged_bit_select_b);
        end
    end

    // vStagei_uid244_zCount_uid157_i_div_if_loop_326(MUX,243)@13
    assign vStagei_uid244_zCount_uid157_i_div_if_loop_326_s = vCount_uid241_zCount_uid157_i_div_if_loop_326_q;
    always @(vStagei_uid244_zCount_uid157_i_div_if_loop_326_s or redist4_rVStage_uid240_zCount_uid157_i_div_if_loop_326_merged_bit_select_b_1_q or redist5_rVStage_uid240_zCount_uid157_i_div_if_loop_326_merged_bit_select_c_1_q)
    begin
        unique case (vStagei_uid244_zCount_uid157_i_div_if_loop_326_s)
            1'b0 : vStagei_uid244_zCount_uid157_i_div_if_loop_326_q = redist4_rVStage_uid240_zCount_uid157_i_div_if_loop_326_merged_bit_select_b_1_q;
            1'b1 : vStagei_uid244_zCount_uid157_i_div_if_loop_326_q = redist5_rVStage_uid240_zCount_uid157_i_div_if_loop_326_merged_bit_select_c_1_q;
            default : vStagei_uid244_zCount_uid157_i_div_if_loop_326_q = 16'b0;
        endcase
    end

    // rVStage_uid246_zCount_uid157_i_div_if_loop_326_merged_bit_select(BITSELECT,476)@13
    assign rVStage_uid246_zCount_uid157_i_div_if_loop_326_merged_bit_select_b = vStagei_uid244_zCount_uid157_i_div_if_loop_326_q[15:8];
    assign rVStage_uid246_zCount_uid157_i_div_if_loop_326_merged_bit_select_c = vStagei_uid244_zCount_uid157_i_div_if_loop_326_q[7:0];

    // vCount_uid247_zCount_uid157_i_div_if_loop_326(LOGICAL,246)@13 + 1
    assign vCount_uid247_zCount_uid157_i_div_if_loop_326_qi = $unsigned(rVStage_uid246_zCount_uid157_i_div_if_loop_326_merged_bit_select_b == zs_uid245_zCount_uid157_i_div_if_loop_326_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    vCount_uid247_zCount_uid157_i_div_if_loop_326_delay ( .xin(vCount_uid247_zCount_uid157_i_div_if_loop_326_qi), .xout(vCount_uid247_zCount_uid157_i_div_if_loop_326_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist31_vCount_uid247_zCount_uid157_i_div_if_loop_326_q_2(DELAY,513)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist31_vCount_uid247_zCount_uid157_i_div_if_loop_326_q_2_q <= $unsigned(vCount_uid247_zCount_uid157_i_div_if_loop_326_q);
        end
    end

    // redist3_rVStage_uid246_zCount_uid157_i_div_if_loop_326_merged_bit_select_c_1(DELAY,485)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_rVStage_uid246_zCount_uid157_i_div_if_loop_326_merged_bit_select_c_1_q <= $unsigned(rVStage_uid246_zCount_uid157_i_div_if_loop_326_merged_bit_select_c);
        end
    end

    // redist2_rVStage_uid246_zCount_uid157_i_div_if_loop_326_merged_bit_select_b_1(DELAY,484)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_rVStage_uid246_zCount_uid157_i_div_if_loop_326_merged_bit_select_b_1_q <= $unsigned(rVStage_uid246_zCount_uid157_i_div_if_loop_326_merged_bit_select_b);
        end
    end

    // vStagei_uid250_zCount_uid157_i_div_if_loop_326(MUX,249)@14
    assign vStagei_uid250_zCount_uid157_i_div_if_loop_326_s = vCount_uid247_zCount_uid157_i_div_if_loop_326_q;
    always @(vStagei_uid250_zCount_uid157_i_div_if_loop_326_s or redist2_rVStage_uid246_zCount_uid157_i_div_if_loop_326_merged_bit_select_b_1_q or redist3_rVStage_uid246_zCount_uid157_i_div_if_loop_326_merged_bit_select_c_1_q)
    begin
        unique case (vStagei_uid250_zCount_uid157_i_div_if_loop_326_s)
            1'b0 : vStagei_uid250_zCount_uid157_i_div_if_loop_326_q = redist2_rVStage_uid246_zCount_uid157_i_div_if_loop_326_merged_bit_select_b_1_q;
            1'b1 : vStagei_uid250_zCount_uid157_i_div_if_loop_326_q = redist3_rVStage_uid246_zCount_uid157_i_div_if_loop_326_merged_bit_select_c_1_q;
            default : vStagei_uid250_zCount_uid157_i_div_if_loop_326_q = 8'b0;
        endcase
    end

    // rVStage_uid252_zCount_uid157_i_div_if_loop_326_merged_bit_select(BITSELECT,477)@14
    assign rVStage_uid252_zCount_uid157_i_div_if_loop_326_merged_bit_select_b = vStagei_uid250_zCount_uid157_i_div_if_loop_326_q[7:4];
    assign rVStage_uid252_zCount_uid157_i_div_if_loop_326_merged_bit_select_c = vStagei_uid250_zCount_uid157_i_div_if_loop_326_q[3:0];

    // vCount_uid253_zCount_uid157_i_div_if_loop_326(LOGICAL,252)@14
    assign vCount_uid253_zCount_uid157_i_div_if_loop_326_q = $unsigned(rVStage_uid252_zCount_uid157_i_div_if_loop_326_merged_bit_select_b == zs_uid251_zCount_uid157_i_div_if_loop_326_q ? 1'b1 : 1'b0);

    // redist30_vCount_uid253_zCount_uid157_i_div_if_loop_326_q_1(DELAY,512)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist30_vCount_uid253_zCount_uid157_i_div_if_loop_326_q_1_q <= $unsigned(vCount_uid253_zCount_uid157_i_div_if_loop_326_q);
        end
    end

    // vStagei_uid256_zCount_uid157_i_div_if_loop_326(MUX,255)@14 + 1
    assign vStagei_uid256_zCount_uid157_i_div_if_loop_326_s = vCount_uid253_zCount_uid157_i_div_if_loop_326_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (vStagei_uid256_zCount_uid157_i_div_if_loop_326_s)
                1'b0 : vStagei_uid256_zCount_uid157_i_div_if_loop_326_q <= rVStage_uid252_zCount_uid157_i_div_if_loop_326_merged_bit_select_b;
                1'b1 : vStagei_uid256_zCount_uid157_i_div_if_loop_326_q <= rVStage_uid252_zCount_uid157_i_div_if_loop_326_merged_bit_select_c;
                default : vStagei_uid256_zCount_uid157_i_div_if_loop_326_q <= 4'b0;
            endcase
        end
    end

    // rVStage_uid258_zCount_uid157_i_div_if_loop_326_merged_bit_select(BITSELECT,478)@15
    assign rVStage_uid258_zCount_uid157_i_div_if_loop_326_merged_bit_select_b = vStagei_uid256_zCount_uid157_i_div_if_loop_326_q[3:2];
    assign rVStage_uid258_zCount_uid157_i_div_if_loop_326_merged_bit_select_c = vStagei_uid256_zCount_uid157_i_div_if_loop_326_q[1:0];

    // vCount_uid259_zCount_uid157_i_div_if_loop_326(LOGICAL,258)@15
    assign vCount_uid259_zCount_uid157_i_div_if_loop_326_q = $unsigned(rVStage_uid258_zCount_uid157_i_div_if_loop_326_merged_bit_select_b == i_arrayidx133_if_loop_316_vt_const_1_q ? 1'b1 : 1'b0);

    // vStagei_uid262_zCount_uid157_i_div_if_loop_326(MUX,261)@15
    assign vStagei_uid262_zCount_uid157_i_div_if_loop_326_s = vCount_uid259_zCount_uid157_i_div_if_loop_326_q;
    always @(vStagei_uid262_zCount_uid157_i_div_if_loop_326_s or rVStage_uid258_zCount_uid157_i_div_if_loop_326_merged_bit_select_b or rVStage_uid258_zCount_uid157_i_div_if_loop_326_merged_bit_select_c)
    begin
        unique case (vStagei_uid262_zCount_uid157_i_div_if_loop_326_s)
            1'b0 : vStagei_uid262_zCount_uid157_i_div_if_loop_326_q = rVStage_uid258_zCount_uid157_i_div_if_loop_326_merged_bit_select_b;
            1'b1 : vStagei_uid262_zCount_uid157_i_div_if_loop_326_q = rVStage_uid258_zCount_uid157_i_div_if_loop_326_merged_bit_select_c;
            default : vStagei_uid262_zCount_uid157_i_div_if_loop_326_q = 2'b0;
        endcase
    end

    // rVStage_uid264_zCount_uid157_i_div_if_loop_326(BITSELECT,263)@15
    assign rVStage_uid264_zCount_uid157_i_div_if_loop_326_b = vStagei_uid262_zCount_uid157_i_div_if_loop_326_q[1:1];

    // vCount_uid265_zCount_uid157_i_div_if_loop_326(LOGICAL,264)@15
    assign vCount_uid265_zCount_uid157_i_div_if_loop_326_q = $unsigned(rVStage_uid264_zCount_uid157_i_div_if_loop_326_b == GND_q ? 1'b1 : 1'b0);

    // r_uid266_zCount_uid157_i_div_if_loop_326(BITJOIN,265)@15
    assign r_uid266_zCount_uid157_i_div_if_loop_326_q = {redist33_vCount_uid235_zCount_uid157_i_div_if_loop_326_q_4_q, redist32_vCount_uid241_zCount_uid157_i_div_if_loop_326_q_3_q, redist31_vCount_uid247_zCount_uid157_i_div_if_loop_326_q_2_q, redist30_vCount_uid253_zCount_uid157_i_div_if_loop_326_q_1_q, vCount_uid259_zCount_uid157_i_div_if_loop_326_q, vCount_uid265_zCount_uid157_i_div_if_loop_326_q};

    // leftShiftStageSel0Dto4_uid359_normY_uid158_i_div_if_loop_326_merged_bit_select(BITSELECT,479)@15
    assign leftShiftStageSel0Dto4_uid359_normY_uid158_i_div_if_loop_326_merged_bit_select_b = r_uid266_zCount_uid157_i_div_if_loop_326_q[5:4];
    assign leftShiftStageSel0Dto4_uid359_normY_uid158_i_div_if_loop_326_merged_bit_select_c = r_uid266_zCount_uid157_i_div_if_loop_326_q[3:2];
    assign leftShiftStageSel0Dto4_uid359_normY_uid158_i_div_if_loop_326_merged_bit_select_d = r_uid266_zCount_uid157_i_div_if_loop_326_q[1:0];

    // leftShiftStage0_uid360_normY_uid158_i_div_if_loop_326(MUX,359)@15 + 1
    assign leftShiftStage0_uid360_normY_uid158_i_div_if_loop_326_s = leftShiftStageSel0Dto4_uid359_normY_uid158_i_div_if_loop_326_merged_bit_select_b;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (leftShiftStage0_uid360_normY_uid158_i_div_if_loop_326_s)
                2'b00 : leftShiftStage0_uid360_normY_uid158_i_div_if_loop_326_q <= redist48_yPS_uid156_i_div_if_loop_326_b_5_q;
                2'b01 : leftShiftStage0_uid360_normY_uid158_i_div_if_loop_326_q <= leftShiftStage0Idx1_uid356_normY_uid158_i_div_if_loop_326_q;
                2'b10 : leftShiftStage0_uid360_normY_uid158_i_div_if_loop_326_q <= c_i32_072_q;
                2'b11 : leftShiftStage0_uid360_normY_uid158_i_div_if_loop_326_q <= c_i32_072_q;
                default : leftShiftStage0_uid360_normY_uid158_i_div_if_loop_326_q <= 32'b0;
            endcase
        end
    end

    // redist0_leftShiftStageSel0Dto4_uid359_normY_uid158_i_div_if_loop_326_merged_bit_select_c_1(DELAY,482)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_leftShiftStageSel0Dto4_uid359_normY_uid158_i_div_if_loop_326_merged_bit_select_c_1_q <= $unsigned(leftShiftStageSel0Dto4_uid359_normY_uid158_i_div_if_loop_326_merged_bit_select_c);
        end
    end

    // leftShiftStage1_uid371_normY_uid158_i_div_if_loop_326(MUX,370)@16
    assign leftShiftStage1_uid371_normY_uid158_i_div_if_loop_326_s = redist0_leftShiftStageSel0Dto4_uid359_normY_uid158_i_div_if_loop_326_merged_bit_select_c_1_q;
    always @(leftShiftStage1_uid371_normY_uid158_i_div_if_loop_326_s or leftShiftStage0_uid360_normY_uid158_i_div_if_loop_326_q or leftShiftStage1Idx1_uid363_normY_uid158_i_div_if_loop_326_q or leftShiftStage1Idx2_uid366_normY_uid158_i_div_if_loop_326_q or leftShiftStage1Idx3_uid369_normY_uid158_i_div_if_loop_326_q)
    begin
        unique case (leftShiftStage1_uid371_normY_uid158_i_div_if_loop_326_s)
            2'b00 : leftShiftStage1_uid371_normY_uid158_i_div_if_loop_326_q = leftShiftStage0_uid360_normY_uid158_i_div_if_loop_326_q;
            2'b01 : leftShiftStage1_uid371_normY_uid158_i_div_if_loop_326_q = leftShiftStage1Idx1_uid363_normY_uid158_i_div_if_loop_326_q;
            2'b10 : leftShiftStage1_uid371_normY_uid158_i_div_if_loop_326_q = leftShiftStage1Idx2_uid366_normY_uid158_i_div_if_loop_326_q;
            2'b11 : leftShiftStage1_uid371_normY_uid158_i_div_if_loop_326_q = leftShiftStage1Idx3_uid369_normY_uid158_i_div_if_loop_326_q;
            default : leftShiftStage1_uid371_normY_uid158_i_div_if_loop_326_q = 32'b0;
        endcase
    end

    // redist1_leftShiftStageSel0Dto4_uid359_normY_uid158_i_div_if_loop_326_merged_bit_select_d_1(DELAY,483)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_leftShiftStageSel0Dto4_uid359_normY_uid158_i_div_if_loop_326_merged_bit_select_d_1_q <= $unsigned(leftShiftStageSel0Dto4_uid359_normY_uid158_i_div_if_loop_326_merged_bit_select_d);
        end
    end

    // leftShiftStage2_uid382_normY_uid158_i_div_if_loop_326(MUX,381)@16
    assign leftShiftStage2_uid382_normY_uid158_i_div_if_loop_326_s = redist1_leftShiftStageSel0Dto4_uid359_normY_uid158_i_div_if_loop_326_merged_bit_select_d_1_q;
    always @(leftShiftStage2_uid382_normY_uid158_i_div_if_loop_326_s or leftShiftStage1_uid371_normY_uid158_i_div_if_loop_326_q or leftShiftStage2Idx1_uid374_normY_uid158_i_div_if_loop_326_q or leftShiftStage2Idx2_uid377_normY_uid158_i_div_if_loop_326_q or leftShiftStage2Idx3_uid380_normY_uid158_i_div_if_loop_326_q)
    begin
        unique case (leftShiftStage2_uid382_normY_uid158_i_div_if_loop_326_s)
            2'b00 : leftShiftStage2_uid382_normY_uid158_i_div_if_loop_326_q = leftShiftStage1_uid371_normY_uid158_i_div_if_loop_326_q;
            2'b01 : leftShiftStage2_uid382_normY_uid158_i_div_if_loop_326_q = leftShiftStage2Idx1_uid374_normY_uid158_i_div_if_loop_326_q;
            2'b10 : leftShiftStage2_uid382_normY_uid158_i_div_if_loop_326_q = leftShiftStage2Idx2_uid377_normY_uid158_i_div_if_loop_326_q;
            2'b11 : leftShiftStage2_uid382_normY_uid158_i_div_if_loop_326_q = leftShiftStage2Idx3_uid380_normY_uid158_i_div_if_loop_326_q;
            default : leftShiftStage2_uid382_normY_uid158_i_div_if_loop_326_q = 32'b0;
        endcase
    end

    // normYNoLeadOne_uid159_i_div_if_loop_326(BITSELECT,158)@16
    assign normYNoLeadOne_uid159_i_div_if_loop_326_in = leftShiftStage2_uid382_normY_uid158_i_div_if_loop_326_q[30:0];
    assign normYNoLeadOne_uid159_i_div_if_loop_326_b = normYNoLeadOne_uid159_i_div_if_loop_326_in[30:0];

    // yAddr_uid167_i_div_if_loop_326_merged_bit_select(BITSELECT,471)@16
    assign yAddr_uid167_i_div_if_loop_326_merged_bit_select_b = normYNoLeadOne_uid159_i_div_if_loop_326_b[30:23];
    assign yAddr_uid167_i_div_if_loop_326_merged_bit_select_c = normYNoLeadOne_uid159_i_div_if_loop_326_b[22:0];

    // redist11_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_3(DELAY,493)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_3_delay_0 <= $unsigned(yAddr_uid167_i_div_if_loop_326_merged_bit_select_c);
            redist11_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_3_delay_1 <= redist11_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_3_delay_0;
            redist11_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_3_q <= redist11_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_3_delay_1;
        end
    end

    // redist12_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_10_wraddr(COUNTER,578)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_10_wraddr_i <= $unsigned(redist12_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_10_wraddr_i) + $unsigned(3'd1);
        end
    end
    assign redist12_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_10_wraddr_q = redist12_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_10_wraddr_i[2:0];

    // redist12_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_10_mem(DUALMEM,577)
    assign redist12_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_10_mem_ia = $unsigned(redist11_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_3_q);
    assign redist12_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_10_mem_aa = redist12_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_10_wraddr_q;
    assign redist12_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_10_mem_ab = redist12_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_10_rdcnt_q[2:0];
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
    ) redist12_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_10_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist12_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_10_mem_aa),
        .data_a(redist12_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_10_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist12_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_10_mem_ab),
        .q_b(redist12_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_10_mem_iq),
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
    assign redist12_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_10_mem_q = redist12_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_10_mem_iq[22:0];

    // redist12_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_10_outputreg0(DELAY,576)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_10_outputreg0_q <= $unsigned(redist12_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_10_mem_q);
        end
    end

    // redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_inputreg0(DELAY,581)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_inputreg0_q <= $unsigned(redist12_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_10_outputreg0_q);
        end
    end

    // redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_wraddr(COUNTER,584)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_wraddr_i <= $unsigned(redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_wraddr_i) + $unsigned(2'd1);
        end
    end
    assign redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_wraddr_q = redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_wraddr_i[1:0];

    // redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_mem(DUALMEM,583)
    assign redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_mem_ia = $unsigned(redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_inputreg0_q);
    assign redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_mem_aa = redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_wraddr_q;
    assign redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_mem_ab = redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_rdcnt_q[1:0];
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
    ) redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_mem_aa),
        .data_a(redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_mem_ab),
        .q_b(redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_mem_iq),
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
    assign redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_mem_q = redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_mem_iq[22:0];

    // redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_outputreg0(DELAY,582)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_outputreg0_q <= $unsigned(redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_mem_q);
        end
    end

    // nx_mergedSignalTM_uid321_pT3_uid297_invPolyEval(BITJOIN,320)@33
    assign nx_mergedSignalTM_uid321_pT3_uid297_invPolyEval_q = {GND_q, redist13_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_17_outputreg0_q};

    // topRangeX_uid323_pT3_uid297_invPolyEval_merged_bit_select(BITSELECT,481)@33
    assign topRangeX_uid323_pT3_uid297_invPolyEval_merged_bit_select_b = $unsigned(nx_mergedSignalTM_uid321_pT3_uid297_invPolyEval_q[23:6]);
    assign topRangeX_uid323_pT3_uid297_invPolyEval_merged_bit_select_c = $unsigned(nx_mergedSignalTM_uid321_pT3_uid297_invPolyEval_q[5:0]);

    // aboveLeftY_bottomExtension_uid326_pT3_uid297_invPolyEval(CONSTANT,325)
    assign aboveLeftY_bottomExtension_uid326_pT3_uid297_invPolyEval_q = $unsigned(5'b00000);

    // aboveLeftY_mergedSignalTM_uid328_pT3_uid297_invPolyEval(BITJOIN,327)@33
    assign aboveLeftY_mergedSignalTM_uid328_pT3_uid297_invPolyEval_q = {topRangeY_uid324_pT3_uid297_invPolyEval_merged_bit_select_c, aboveLeftY_bottomExtension_uid326_pT3_uid297_invPolyEval_q};

    // memoryC3_uid277_invTabGen_lutmem(DUALMEM,458)@16 + 2
    // in j@20000000
    assign memoryC3_uid277_invTabGen_lutmem_aa = yAddr_uid167_i_div_if_loop_326_merged_bit_select_b;
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
        .init_file("if_loop_3_i_sfc_logic_s_c0_in_for_body110000277_invTabGen_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Stratix 10")
    ) memoryC3_uid277_invTabGen_lutmem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(memoryC3_uid277_invTabGen_lutmem_aa),
        .q_a(memoryC3_uid277_invTabGen_lutmem_ir),
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
    assign memoryC3_uid277_invTabGen_lutmem_r = memoryC3_uid277_invTabGen_lutmem_ir[13:0];

    // redist22_memoryC3_uid277_invTabGen_lutmem_r_1(DELAY,504)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist22_memoryC3_uid277_invTabGen_lutmem_r_1_q <= $unsigned(memoryC3_uid277_invTabGen_lutmem_r);
        end
    end

    // yT1_uid284_invPolyEval(BITSELECT,283)@19
    assign yT1_uid284_invPolyEval_b = redist11_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_3_q[22:9];

    // prodXY_uid303_pT1_uid285_invPolyEval_cma(CHAINMULTADD,459)@19 + 5
    // out q@25
    assign prodXY_uid303_pT1_uid285_invPolyEval_cma_reset = ~ (resetn);
    assign prodXY_uid303_pT1_uid285_invPolyEval_cma_ena0 = 1'b1;
    assign prodXY_uid303_pT1_uid285_invPolyEval_cma_ena1 = prodXY_uid303_pT1_uid285_invPolyEval_cma_ena0;
    assign prodXY_uid303_pT1_uid285_invPolyEval_cma_ena2 = prodXY_uid303_pT1_uid285_invPolyEval_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            prodXY_uid303_pT1_uid285_invPolyEval_cma_ah[0] <= yT1_uid284_invPolyEval_b;
            prodXY_uid303_pT1_uid285_invPolyEval_cma_ch[0] <= redist22_memoryC3_uid277_invTabGen_lutmem_r_1_q;
        end
    end

    assign prodXY_uid303_pT1_uid285_invPolyEval_cma_a0 = prodXY_uid303_pT1_uid285_invPolyEval_cma_ah[0];
    assign prodXY_uid303_pT1_uid285_invPolyEval_cma_c0 = $unsigned(prodXY_uid303_pT1_uid285_invPolyEval_cma_ch[0]);
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
    ) prodXY_uid303_pT1_uid285_invPolyEval_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ prodXY_uid303_pT1_uid285_invPolyEval_cma_ena2, prodXY_uid303_pT1_uid285_invPolyEval_cma_ena1, prodXY_uid303_pT1_uid285_invPolyEval_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(prodXY_uid303_pT1_uid285_invPolyEval_cma_a0),
        .ax(prodXY_uid303_pT1_uid285_invPolyEval_cma_c0),
        .resulta(prodXY_uid303_pT1_uid285_invPolyEval_cma_s0),
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
    prodXY_uid303_pT1_uid285_invPolyEval_cma_delay ( .xin(prodXY_uid303_pT1_uid285_invPolyEval_cma_s0), .xout(prodXY_uid303_pT1_uid285_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXY_uid303_pT1_uid285_invPolyEval_cma_q = $unsigned(prodXY_uid303_pT1_uid285_invPolyEval_cma_qq[27:0]);

    // osig_uid304_pT1_uid285_invPolyEval(BITSELECT,303)@25
    assign osig_uid304_pT1_uid285_invPolyEval_b = $unsigned(prodXY_uid303_pT1_uid285_invPolyEval_cma_q[27:14]);

    // highBBits_uid287_invPolyEval(BITSELECT,286)@25
    assign highBBits_uid287_invPolyEval_b = $unsigned(osig_uid304_pT1_uid285_invPolyEval_b[13:1]);

    // redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_rdcnt(ADD,567)
    assign redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_rdcnt_a = {1'b0, redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_wraddr_q};
    assign redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_rdcnt_b = {1'b0, redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_rdcnt_o <= $unsigned(redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_rdcnt_a) + $unsigned(redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_rdcnt_b);
        end
    end
    assign redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_rdcnt_q = redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_rdcnt_o[3:0];

    // redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_wraddr(COUNTER,565)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_wraddr_i <= $unsigned(redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_wraddr_i) + $unsigned(3'd1);
        end
    end
    assign redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_wraddr_q = redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_wraddr_i[2:0];

    // redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_mem(DUALMEM,564)
    assign redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_mem_ia = $unsigned(yAddr_uid167_i_div_if_loop_326_merged_bit_select_b);
    assign redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_mem_aa = redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_wraddr_q;
    assign redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_mem_ab = redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_rdcnt_q[2:0];
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
    ) redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_mem_aa),
        .data_a(redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_mem_ab),
        .q_b(redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_mem_iq),
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
    assign redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_mem_q = redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_mem_iq[7:0];

    // redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_outputreg0(DELAY,563)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_outputreg0_q <= $unsigned(redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_mem_q);
        end
    end

    // memoryC2_uid274_invTabGen_lutmem(DUALMEM,457)@23 + 2
    // in j@20000000
    assign memoryC2_uid274_invTabGen_lutmem_aa = redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_outputreg0_q;
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
        .init_file("if_loop_3_i_sfc_logic_s_c0_in_for_body110000274_invTabGen_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Stratix 10")
    ) memoryC2_uid274_invTabGen_lutmem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(memoryC2_uid274_invTabGen_lutmem_aa),
        .q_a(memoryC2_uid274_invTabGen_lutmem_ir),
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
    assign memoryC2_uid274_invTabGen_lutmem_r = memoryC2_uid274_invTabGen_lutmem_ir[20:0];

    // s1sumAHighB_uid288_invPolyEval(ADD,287)@25 + 1
    assign s1sumAHighB_uid288_invPolyEval_a = $unsigned({{1{memoryC2_uid274_invTabGen_lutmem_r[20]}}, memoryC2_uid274_invTabGen_lutmem_r});
    assign s1sumAHighB_uid288_invPolyEval_b = $unsigned({{9{highBBits_uid287_invPolyEval_b[12]}}, highBBits_uid287_invPolyEval_b});
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            s1sumAHighB_uid288_invPolyEval_o <= $unsigned($signed(s1sumAHighB_uid288_invPolyEval_a) + $signed(s1sumAHighB_uid288_invPolyEval_b));
        end
    end
    assign s1sumAHighB_uid288_invPolyEval_q = s1sumAHighB_uid288_invPolyEval_o[21:0];

    // lowRangeB_uid286_invPolyEval(BITSELECT,285)@25
    assign lowRangeB_uid286_invPolyEval_in = osig_uid304_pT1_uid285_invPolyEval_b[0:0];
    assign lowRangeB_uid286_invPolyEval_b = lowRangeB_uid286_invPolyEval_in[0:0];

    // redist28_lowRangeB_uid286_invPolyEval_b_1(DELAY,510)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist28_lowRangeB_uid286_invPolyEval_b_1_q <= $unsigned(lowRangeB_uid286_invPolyEval_b);
        end
    end

    // s1_uid289_invPolyEval(BITJOIN,288)@26
    assign s1_uid289_invPolyEval_q = {s1sumAHighB_uid288_invPolyEval_q, redist28_lowRangeB_uid286_invPolyEval_b_1_q};

    // yT2_uid290_invPolyEval(BITSELECT,289)@26
    assign yT2_uid290_invPolyEval_b = redist12_yAddr_uid167_i_div_if_loop_326_merged_bit_select_c_10_outputreg0_q[22:2];

    // prodXY_uid306_pT2_uid291_invPolyEval_cma(CHAINMULTADD,460)@26 + 5
    // out q@32
    assign prodXY_uid306_pT2_uid291_invPolyEval_cma_reset = ~ (resetn);
    assign prodXY_uid306_pT2_uid291_invPolyEval_cma_ena0 = 1'b1;
    assign prodXY_uid306_pT2_uid291_invPolyEval_cma_ena1 = prodXY_uid306_pT2_uid291_invPolyEval_cma_ena0;
    assign prodXY_uid306_pT2_uid291_invPolyEval_cma_ena2 = prodXY_uid306_pT2_uid291_invPolyEval_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            prodXY_uid306_pT2_uid291_invPolyEval_cma_ah[0] <= yT2_uid290_invPolyEval_b;
            prodXY_uid306_pT2_uid291_invPolyEval_cma_ch[0] <= s1_uid289_invPolyEval_q;
        end
    end

    assign prodXY_uid306_pT2_uid291_invPolyEval_cma_a0 = prodXY_uid306_pT2_uid291_invPolyEval_cma_ah[0];
    assign prodXY_uid306_pT2_uid291_invPolyEval_cma_c0 = $unsigned(prodXY_uid306_pT2_uid291_invPolyEval_cma_ch[0]);
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
    ) prodXY_uid306_pT2_uid291_invPolyEval_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ prodXY_uid306_pT2_uid291_invPolyEval_cma_ena2, prodXY_uid306_pT2_uid291_invPolyEval_cma_ena1, prodXY_uid306_pT2_uid291_invPolyEval_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(prodXY_uid306_pT2_uid291_invPolyEval_cma_a0),
        .ax(prodXY_uid306_pT2_uid291_invPolyEval_cma_c0),
        .resulta(prodXY_uid306_pT2_uid291_invPolyEval_cma_s0),
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
    prodXY_uid306_pT2_uid291_invPolyEval_cma_delay ( .xin(prodXY_uid306_pT2_uid291_invPolyEval_cma_s0), .xout(prodXY_uid306_pT2_uid291_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXY_uid306_pT2_uid291_invPolyEval_cma_q = $unsigned(prodXY_uid306_pT2_uid291_invPolyEval_cma_qq[43:0]);

    // osig_uid307_pT2_uid291_invPolyEval(BITSELECT,306)@32
    assign osig_uid307_pT2_uid291_invPolyEval_b = $unsigned(prodXY_uid306_pT2_uid291_invPolyEval_cma_q[43:21]);

    // highBBits_uid293_invPolyEval(BITSELECT,292)@32
    assign highBBits_uid293_invPolyEval_b = $unsigned(osig_uid307_pT2_uid291_invPolyEval_b[22:1]);

    // redist9_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_14_inputreg0(DELAY,568)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_14_inputreg0_q <= $unsigned(redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_outputreg0_q);
        end
    end

    // redist9_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_14(DELAY,491)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_14_delay_0 <= $unsigned(redist9_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_14_inputreg0_q);
            redist9_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_14_delay_1 <= redist9_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_14_delay_0;
            redist9_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_14_delay_2 <= redist9_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_14_delay_1;
            redist9_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_14_delay_3 <= redist9_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_14_delay_2;
            redist9_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_14_q <= redist9_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_14_delay_3;
        end
    end

    // redist9_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_14_outputreg0(DELAY,569)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_14_outputreg0_q <= $unsigned(redist9_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_14_q);
        end
    end

    // memoryC1_uid271_invTabGen_lutmem(DUALMEM,456)@30 + 2
    // in j@20000000
    assign memoryC1_uid271_invTabGen_lutmem_aa = redist9_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_14_outputreg0_q;
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
        .init_file("if_loop_3_i_sfc_logic_s_c0_in_for_body110000271_invTabGen_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Stratix 10")
    ) memoryC1_uid271_invTabGen_lutmem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(memoryC1_uid271_invTabGen_lutmem_aa),
        .q_a(memoryC1_uid271_invTabGen_lutmem_ir),
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
    assign memoryC1_uid271_invTabGen_lutmem_r = memoryC1_uid271_invTabGen_lutmem_ir[28:0];

    // s2sumAHighB_uid294_invPolyEval(ADD,293)@32 + 1
    assign s2sumAHighB_uid294_invPolyEval_a = $unsigned({{1{memoryC1_uid271_invTabGen_lutmem_r[28]}}, memoryC1_uid271_invTabGen_lutmem_r});
    assign s2sumAHighB_uid294_invPolyEval_b = $unsigned({{8{highBBits_uid293_invPolyEval_b[21]}}, highBBits_uid293_invPolyEval_b});
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            s2sumAHighB_uid294_invPolyEval_o <= $unsigned($signed(s2sumAHighB_uid294_invPolyEval_a) + $signed(s2sumAHighB_uid294_invPolyEval_b));
        end
    end
    assign s2sumAHighB_uid294_invPolyEval_q = s2sumAHighB_uid294_invPolyEval_o[29:0];

    // lowRangeB_uid292_invPolyEval(BITSELECT,291)@32
    assign lowRangeB_uid292_invPolyEval_in = osig_uid307_pT2_uid291_invPolyEval_b[0:0];
    assign lowRangeB_uid292_invPolyEval_b = lowRangeB_uid292_invPolyEval_in[0:0];

    // redist27_lowRangeB_uid292_invPolyEval_b_1(DELAY,509)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist27_lowRangeB_uid292_invPolyEval_b_1_q <= $unsigned(lowRangeB_uid292_invPolyEval_b);
        end
    end

    // s2_uid295_invPolyEval(BITJOIN,294)@33
    assign s2_uid295_invPolyEval_q = {s2sumAHighB_uid294_invPolyEval_q, redist27_lowRangeB_uid292_invPolyEval_b_1_q};

    // topRangeY_uid324_pT3_uid297_invPolyEval_merged_bit_select(BITSELECT,480)@33
    assign topRangeY_uid324_pT3_uid297_invPolyEval_merged_bit_select_b = $unsigned(s2_uid295_invPolyEval_q[30:13]);
    assign topRangeY_uid324_pT3_uid297_invPolyEval_merged_bit_select_c = $unsigned(s2_uid295_invPolyEval_q[12:0]);

    // rightBottomX_mergedSignalTM_uid332_pT3_uid297_invPolyEval(BITJOIN,331)@33
    assign rightBottomX_mergedSignalTM_uid332_pT3_uid297_invPolyEval_q = {topRangeX_uid323_pT3_uid297_invPolyEval_merged_bit_select_c, rightBottomX_bottomExtension_uid330_pT3_uid297_invPolyEval_q};

    // multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma(CHAINMULTADD,466)@33 + 5
    // out q@39
    assign multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_reset = ~ (resetn);
    assign multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_ena0 = 1'b1;
    assign multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_ena1 = multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_ena0;
    assign multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_ena2 = multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_ah[0] <= rightBottomX_mergedSignalTM_uid332_pT3_uid297_invPolyEval_q;
            multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_ah[1] <= aboveLeftY_mergedSignalTM_uid328_pT3_uid297_invPolyEval_q;
            multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_ch[0] <= topRangeY_uid324_pT3_uid297_invPolyEval_merged_bit_select_b;
            multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_ch[1] <= topRangeX_uid323_pT3_uid297_invPolyEval_merged_bit_select_b;
        end
    end

    assign multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_a0 = multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_ah[0];
    assign multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_c0 = $unsigned(multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_ch[0]);
    assign multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_a1 = multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_ah[1];
    assign multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_c1 = $unsigned(multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_ch[1]);
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
    ) multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_ena2, multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_ena1, multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_a1),
        .by(multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_a0),
        .ax(multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_c1),
        .bx(multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_c0),
        .resulta(multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_s0),
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
    multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_delay ( .xin(multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_s0), .xout(multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_q = $unsigned(multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_qq[36:0]);

    // redist16_multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_q_1(DELAY,498)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_q_1_q <= $unsigned(multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_q);
        end
    end

    // highBBits_uid339_pT3_uid297_invPolyEval(BITSELECT,338)@40
    assign highBBits_uid339_pT3_uid297_invPolyEval_b = $unsigned(redist16_multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_q_1_q[36:18]);

    // sm0_uid335_pT3_uid297_invPolyEval_cma(CHAINMULTADD,461)@33 + 5
    // out q@39
    assign sm0_uid335_pT3_uid297_invPolyEval_cma_reset = ~ (resetn);
    assign sm0_uid335_pT3_uid297_invPolyEval_cma_ena0 = 1'b1;
    assign sm0_uid335_pT3_uid297_invPolyEval_cma_ena1 = sm0_uid335_pT3_uid297_invPolyEval_cma_ena0;
    assign sm0_uid335_pT3_uid297_invPolyEval_cma_ena2 = sm0_uid335_pT3_uid297_invPolyEval_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            sm0_uid335_pT3_uid297_invPolyEval_cma_ah[0] <= topRangeX_uid323_pT3_uid297_invPolyEval_merged_bit_select_b;
            sm0_uid335_pT3_uid297_invPolyEval_cma_ch[0] <= topRangeY_uid324_pT3_uid297_invPolyEval_merged_bit_select_b;
        end
    end

    assign sm0_uid335_pT3_uid297_invPolyEval_cma_a0 = $unsigned(sm0_uid335_pT3_uid297_invPolyEval_cma_ah[0]);
    assign sm0_uid335_pT3_uid297_invPolyEval_cma_c0 = $unsigned(sm0_uid335_pT3_uid297_invPolyEval_cma_ch[0]);
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
    ) sm0_uid335_pT3_uid297_invPolyEval_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ sm0_uid335_pT3_uid297_invPolyEval_cma_ena2, sm0_uid335_pT3_uid297_invPolyEval_cma_ena1, sm0_uid335_pT3_uid297_invPolyEval_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(sm0_uid335_pT3_uid297_invPolyEval_cma_a0),
        .ax(sm0_uid335_pT3_uid297_invPolyEval_cma_c0),
        .resulta(sm0_uid335_pT3_uid297_invPolyEval_cma_s0),
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
    sm0_uid335_pT3_uid297_invPolyEval_cma_delay ( .xin(sm0_uid335_pT3_uid297_invPolyEval_cma_s0), .xout(sm0_uid335_pT3_uid297_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign sm0_uid335_pT3_uid297_invPolyEval_cma_q = $unsigned(sm0_uid335_pT3_uid297_invPolyEval_cma_qq[35:0]);

    // redist21_sm0_uid335_pT3_uid297_invPolyEval_cma_q_1(DELAY,503)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist21_sm0_uid335_pT3_uid297_invPolyEval_cma_q_1_q <= $unsigned(sm0_uid335_pT3_uid297_invPolyEval_cma_q);
        end
    end

    // lev1_a0sumAHighB_uid340_pT3_uid297_invPolyEval(ADD,339)@40
    assign lev1_a0sumAHighB_uid340_pT3_uid297_invPolyEval_a = $unsigned({{1{redist21_sm0_uid335_pT3_uid297_invPolyEval_cma_q_1_q[35]}}, redist21_sm0_uid335_pT3_uid297_invPolyEval_cma_q_1_q});
    assign lev1_a0sumAHighB_uid340_pT3_uid297_invPolyEval_b = $unsigned({{18{highBBits_uid339_pT3_uid297_invPolyEval_b[18]}}, highBBits_uid339_pT3_uid297_invPolyEval_b});
    assign lev1_a0sumAHighB_uid340_pT3_uid297_invPolyEval_o = $unsigned($signed(lev1_a0sumAHighB_uid340_pT3_uid297_invPolyEval_a) + $signed(lev1_a0sumAHighB_uid340_pT3_uid297_invPolyEval_b));
    assign lev1_a0sumAHighB_uid340_pT3_uid297_invPolyEval_q = lev1_a0sumAHighB_uid340_pT3_uid297_invPolyEval_o[36:0];

    // lowRangeB_uid338_pT3_uid297_invPolyEval(BITSELECT,337)@40
    assign lowRangeB_uid338_pT3_uid297_invPolyEval_in = redist16_multSumOfTwoTS_uid336_pT3_uid297_invPolyEval_cma_q_1_q[17:0];
    assign lowRangeB_uid338_pT3_uid297_invPolyEval_b = lowRangeB_uid338_pT3_uid297_invPolyEval_in[17:0];

    // lev1_a0_uid341_pT3_uid297_invPolyEval(BITJOIN,340)@40
    assign lev1_a0_uid341_pT3_uid297_invPolyEval_q = {lev1_a0sumAHighB_uid340_pT3_uid297_invPolyEval_q, lowRangeB_uid338_pT3_uid297_invPolyEval_b};

    // os_uid342_pT3_uid297_invPolyEval(BITSELECT,341)@40
    assign os_uid342_pT3_uid297_invPolyEval_in = $unsigned(lev1_a0_uid341_pT3_uid297_invPolyEval_q[52:0]);
    assign os_uid342_pT3_uid297_invPolyEval_b = $unsigned(os_uid342_pT3_uid297_invPolyEval_in[52:21]);

    // highBBits_uid299_invPolyEval(BITSELECT,298)@40
    assign highBBits_uid299_invPolyEval_b = $unsigned(os_uid342_pT3_uid297_invPolyEval_b[31:2]);

    // redist25_highBBits_uid299_invPolyEval_b_1(DELAY,507)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist25_highBBits_uid299_invPolyEval_b_1_q <= $unsigned(highBBits_uid299_invPolyEval_b);
        end
    end

    // redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_rdcnt(ADD,575)
    assign redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_rdcnt_a = {1'b0, redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_wraddr_q};
    assign redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_rdcnt_b = {1'b0, redist8_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_7_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_rdcnt_o <= $unsigned(redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_rdcnt_a) + $unsigned(redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_rdcnt_b);
        end
    end
    assign redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_rdcnt_q = redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_rdcnt_o[3:0];

    // redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_inputreg0(DELAY,570)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_inputreg0_q <= $unsigned(redist9_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_14_outputreg0_q);
        end
    end

    // redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_wraddr(COUNTER,573)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_wraddr_i <= $unsigned(redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_wraddr_i) + $unsigned(3'd1);
        end
    end
    assign redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_wraddr_q = redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_wraddr_i[2:0];

    // redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_mem(DUALMEM,572)
    assign redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_mem_ia = $unsigned(redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_inputreg0_q);
    assign redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_mem_aa = redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_wraddr_q;
    assign redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_mem_ab = redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_rdcnt_q[2:0];
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
    ) redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_mem_aa),
        .data_a(redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_mem_ab),
        .q_b(redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_mem_iq),
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
    assign redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_mem_q = redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_mem_iq[7:0];

    // redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_outputreg0(DELAY,571)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_outputreg0_q <= $unsigned(redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_mem_q);
        end
    end

    // memoryC0_uid268_invTabGen_lutmem(DUALMEM,455)@38 + 2
    // in j@20000000
    assign memoryC0_uid268_invTabGen_lutmem_aa = redist10_yAddr_uid167_i_div_if_loop_326_merged_bit_select_b_22_outputreg0_q;
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
        .init_file("if_loop_3_i_sfc_logic_s_c0_in_for_body110000268_invTabGen_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Stratix 10")
    ) memoryC0_uid268_invTabGen_lutmem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(memoryC0_uid268_invTabGen_lutmem_aa),
        .q_a(memoryC0_uid268_invTabGen_lutmem_ir),
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
    assign memoryC0_uid268_invTabGen_lutmem_r = memoryC0_uid268_invTabGen_lutmem_ir[37:0];

    // redist23_memoryC0_uid268_invTabGen_lutmem_r_1(DELAY,505)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist23_memoryC0_uid268_invTabGen_lutmem_r_1_q <= $unsigned(memoryC0_uid268_invTabGen_lutmem_r);
        end
    end

    // s3sumAHighB_uid300_invPolyEval(ADD,299)@41
    assign s3sumAHighB_uid300_invPolyEval_a = $unsigned({{1{redist23_memoryC0_uid268_invTabGen_lutmem_r_1_q[37]}}, redist23_memoryC0_uid268_invTabGen_lutmem_r_1_q});
    assign s3sumAHighB_uid300_invPolyEval_b = $unsigned({{9{redist25_highBBits_uid299_invPolyEval_b_1_q[29]}}, redist25_highBBits_uid299_invPolyEval_b_1_q});
    assign s3sumAHighB_uid300_invPolyEval_o = $unsigned($signed(s3sumAHighB_uid300_invPolyEval_a) + $signed(s3sumAHighB_uid300_invPolyEval_b));
    assign s3sumAHighB_uid300_invPolyEval_q = s3sumAHighB_uid300_invPolyEval_o[38:0];

    // lowRangeB_uid298_invPolyEval(BITSELECT,297)@40
    assign lowRangeB_uid298_invPolyEval_in = os_uid342_pT3_uid297_invPolyEval_b[1:0];
    assign lowRangeB_uid298_invPolyEval_b = lowRangeB_uid298_invPolyEval_in[1:0];

    // redist26_lowRangeB_uid298_invPolyEval_b_1(DELAY,508)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist26_lowRangeB_uid298_invPolyEval_b_1_q <= $unsigned(lowRangeB_uid298_invPolyEval_b);
        end
    end

    // s3_uid301_invPolyEval(BITJOIN,300)@41
    assign s3_uid301_invPolyEval_q = {s3sumAHighB_uid300_invPolyEval_q, redist26_lowRangeB_uid298_invPolyEval_b_1_q};

    // fxpInverseRes_uid170_i_div_if_loop_326(BITSELECT,169)@41
    assign fxpInverseRes_uid170_i_div_if_loop_326_in = s3_uid301_invPolyEval_q[38:0];
    assign fxpInverseRes_uid170_i_div_if_loop_326_b = fxpInverseRes_uid170_i_div_if_loop_326_in[38:6];

    // redist42_fxpInverseRes_uid170_i_div_if_loop_326_b_1(DELAY,524)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist42_fxpInverseRes_uid170_i_div_if_loop_326_b_1_q <= $unsigned(fxpInverseRes_uid170_i_div_if_loop_326_b);
        end
    end

    // updatedY_uid161_i_div_if_loop_326(BITJOIN,160)@17
    assign updatedY_uid161_i_div_if_loop_326_q = {GND_q, i_llvm_fpga_push_i33_fpga_indvars_iv4_push10_if_loop_30_c_i31_03_x_q};

    // redist45_normYNoLeadOne_uid159_i_div_if_loop_326_b_1(DELAY,527)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist45_normYNoLeadOne_uid159_i_div_if_loop_326_b_1_q <= $unsigned(normYNoLeadOne_uid159_i_div_if_loop_326_b);
        end
    end

    // normYIsOneC2_uid160_i_div_if_loop_326(LOGICAL,161)@17 + 1
    assign normYIsOneC2_uid160_i_div_if_loop_326_a = {1'b0, redist45_normYNoLeadOne_uid159_i_div_if_loop_326_b_1_q};
    assign normYIsOneC2_uid160_i_div_if_loop_326_qi = $unsigned(normYIsOneC2_uid160_i_div_if_loop_326_a == updatedY_uid161_i_div_if_loop_326_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    normYIsOneC2_uid160_i_div_if_loop_326_delay ( .xin(normYIsOneC2_uid160_i_div_if_loop_326_qi), .xout(normYIsOneC2_uid160_i_div_if_loop_326_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // normYIsOneC2_uid163_i_div_if_loop_326(BITSELECT,162)@16
    assign normYIsOneC2_uid163_i_div_if_loop_326_b = $unsigned(leftShiftStage2_uid382_normY_uid158_i_div_if_loop_326_q[31:31]);

    // redist44_normYIsOneC2_uid163_i_div_if_loop_326_b_2(DELAY,526)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist44_normYIsOneC2_uid163_i_div_if_loop_326_b_2_delay_0 <= $unsigned(normYIsOneC2_uid163_i_div_if_loop_326_b);
            redist44_normYIsOneC2_uid163_i_div_if_loop_326_b_2_q <= redist44_normYIsOneC2_uid163_i_div_if_loop_326_b_2_delay_0;
        end
    end

    // normYIsOne_uid164_i_div_if_loop_326(LOGICAL,163)@18 + 1
    assign normYIsOne_uid164_i_div_if_loop_326_qi = redist44_normYIsOneC2_uid163_i_div_if_loop_326_b_2_q & normYIsOneC2_uid160_i_div_if_loop_326_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    normYIsOne_uid164_i_div_if_loop_326_delay ( .xin(normYIsOne_uid164_i_div_if_loop_326_qi), .xout(normYIsOne_uid164_i_div_if_loop_326_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist43_normYIsOne_uid164_i_div_if_loop_326_q_24(DELAY,525)
    dspba_delay_ver #( .width(1), .depth(23), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist43_normYIsOne_uid164_i_div_if_loop_326_q_24 ( .xin(normYIsOne_uid164_i_div_if_loop_326_q), .xout(redist43_normYIsOne_uid164_i_div_if_loop_326_q_24_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // invResPostOneHandling2_uid172_i_div_if_loop_326(MUX,171)@42
    assign invResPostOneHandling2_uid172_i_div_if_loop_326_s = redist43_normYIsOne_uid164_i_div_if_loop_326_q_24_q;
    always @(invResPostOneHandling2_uid172_i_div_if_loop_326_s or redist42_fxpInverseRes_uid170_i_div_if_loop_326_b_1_q or oneInvRes_uid171_i_div_if_loop_326_q)
    begin
        unique case (invResPostOneHandling2_uid172_i_div_if_loop_326_s)
            1'b0 : invResPostOneHandling2_uid172_i_div_if_loop_326_q = redist42_fxpInverseRes_uid170_i_div_if_loop_326_b_1_q;
            1'b1 : invResPostOneHandling2_uid172_i_div_if_loop_326_q = oneInvRes_uid171_i_div_if_loop_326_q;
            default : invResPostOneHandling2_uid172_i_div_if_loop_326_q = 33'b0;
        endcase
    end

    // prodXInvY_uid180_i_div_if_loop_326_bs2_merged_bit_select(BITSELECT,472)@42
    assign prodXInvY_uid180_i_div_if_loop_326_bs2_merged_bit_select_b = invResPostOneHandling2_uid172_i_div_if_loop_326_q[32:18];
    assign prodXInvY_uid180_i_div_if_loop_326_bs2_merged_bit_select_c = invResPostOneHandling2_uid172_i_div_if_loop_326_q[17:0];

    // zMsbY0_uid177_i_div_if_loop_326(BITJOIN,176)@41
    assign zMsbY0_uid177_i_div_if_loop_326_q = {GND_q, redist51_xMSB_uid151_i_div_if_loop_326_b_32_q};

    // xPSX_uid175_i_div_if_loop_326(LOGICAL,174)@40 + 1
    assign xPSX_uid175_i_div_if_loop_326_b = $unsigned({{31{redist50_xMSB_uid151_i_div_if_loop_326_b_31_q[0]}}, redist50_xMSB_uid151_i_div_if_loop_326_b_31_q});
    assign xPSX_uid175_i_div_if_loop_326_qi = i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q ^ xPSX_uid175_i_div_if_loop_326_b;
    dspba_delay_ver #( .width(32), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    xPSX_uid175_i_div_if_loop_326_delay ( .xin(xPSX_uid175_i_div_if_loop_326_qi), .xout(xPSX_uid175_i_div_if_loop_326_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // xPSXE_uid178_i_div_if_loop_326(ADD,177)@41 + 1
    assign xPSXE_uid178_i_div_if_loop_326_a = $unsigned({{1{xPSX_uid175_i_div_if_loop_326_q[31]}}, xPSX_uid175_i_div_if_loop_326_q});
    assign xPSXE_uid178_i_div_if_loop_326_b = $unsigned({{31{zMsbY0_uid177_i_div_if_loop_326_q[1]}}, zMsbY0_uid177_i_div_if_loop_326_q});
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            xPSXE_uid178_i_div_if_loop_326_o <= $unsigned($signed(xPSXE_uid178_i_div_if_loop_326_a) + $signed(xPSXE_uid178_i_div_if_loop_326_b));
        end
    end
    assign xPSXE_uid178_i_div_if_loop_326_q = xPSXE_uid178_i_div_if_loop_326_o[32:0];

    // prodXInvY_uid180_i_div_if_loop_326_bs1_merged_bit_select(BITSELECT,474)@42
    assign prodXInvY_uid180_i_div_if_loop_326_bs1_merged_bit_select_b = $unsigned(xPSXE_uid178_i_div_if_loop_326_q[32:18]);
    assign prodXInvY_uid180_i_div_if_loop_326_bs1_merged_bit_select_c = $unsigned(xPSXE_uid178_i_div_if_loop_326_q[17:0]);

    // prodXInvY_uid180_i_div_if_loop_326_ma4_cma(CHAINMULTADD,467)@42 + 5
    // out q@48
    assign prodXInvY_uid180_i_div_if_loop_326_ma4_cma_reset = ~ (resetn);
    assign prodXInvY_uid180_i_div_if_loop_326_ma4_cma_ena0 = 1'b1;
    assign prodXInvY_uid180_i_div_if_loop_326_ma4_cma_ena1 = prodXInvY_uid180_i_div_if_loop_326_ma4_cma_ena0;
    assign prodXInvY_uid180_i_div_if_loop_326_ma4_cma_ena2 = prodXInvY_uid180_i_div_if_loop_326_ma4_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            prodXInvY_uid180_i_div_if_loop_326_ma4_cma_ah[0] <= {{1{prodXInvY_uid180_i_div_if_loop_326_bs1_merged_bit_select_b[14]}}, prodXInvY_uid180_i_div_if_loop_326_bs1_merged_bit_select_b[14:0]};
            prodXInvY_uid180_i_div_if_loop_326_ma4_cma_ah[1] <= prodXInvY_uid180_i_div_if_loop_326_bjB3_q;
            prodXInvY_uid180_i_div_if_loop_326_ma4_cma_ch[0] <= prodXInvY_uid180_i_div_if_loop_326_bs2_merged_bit_select_c;
            prodXInvY_uid180_i_div_if_loop_326_ma4_cma_ch[1] <= prodXInvY_uid180_i_div_if_loop_326_bs1_merged_bit_select_c;
        end
    end

    assign prodXInvY_uid180_i_div_if_loop_326_ma4_cma_a0 = $unsigned(prodXInvY_uid180_i_div_if_loop_326_ma4_cma_ah[0]);
    assign prodXInvY_uid180_i_div_if_loop_326_ma4_cma_c0 = prodXInvY_uid180_i_div_if_loop_326_ma4_cma_ch[0];
    assign prodXInvY_uid180_i_div_if_loop_326_ma4_cma_a1 = $unsigned(prodXInvY_uid180_i_div_if_loop_326_ma4_cma_ah[1]);
    assign prodXInvY_uid180_i_div_if_loop_326_ma4_cma_c1 = prodXInvY_uid180_i_div_if_loop_326_ma4_cma_ch[1];
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
    ) prodXInvY_uid180_i_div_if_loop_326_ma4_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ prodXInvY_uid180_i_div_if_loop_326_ma4_cma_ena2, prodXInvY_uid180_i_div_if_loop_326_ma4_cma_ena1, prodXInvY_uid180_i_div_if_loop_326_ma4_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(prodXInvY_uid180_i_div_if_loop_326_ma4_cma_a1),
        .by(prodXInvY_uid180_i_div_if_loop_326_ma4_cma_a0),
        .ax(prodXInvY_uid180_i_div_if_loop_326_ma4_cma_c1),
        .bx(prodXInvY_uid180_i_div_if_loop_326_ma4_cma_c0),
        .resulta(prodXInvY_uid180_i_div_if_loop_326_ma4_cma_s0),
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
    prodXInvY_uid180_i_div_if_loop_326_ma4_cma_delay ( .xin(prodXInvY_uid180_i_div_if_loop_326_ma4_cma_s0), .xout(prodXInvY_uid180_i_div_if_loop_326_ma4_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXInvY_uid180_i_div_if_loop_326_ma4_cma_q = $unsigned(prodXInvY_uid180_i_div_if_loop_326_ma4_cma_qq[34:0]);

    // redist15_prodXInvY_uid180_i_div_if_loop_326_ma4_cma_q_1(DELAY,497)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist15_prodXInvY_uid180_i_div_if_loop_326_ma4_cma_q_1_q <= $unsigned(prodXInvY_uid180_i_div_if_loop_326_ma4_cma_q);
        end
    end

    // prodXInvY_uid180_i_div_if_loop_326_sums_align_1(BITSHIFT,397)@49
    assign prodXInvY_uid180_i_div_if_loop_326_sums_align_1_qint = { redist15_prodXInvY_uid180_i_div_if_loop_326_ma4_cma_q_1_q, 18'b000000000000000000 };
    assign prodXInvY_uid180_i_div_if_loop_326_sums_align_1_q = prodXInvY_uid180_i_div_if_loop_326_sums_align_1_qint[52:0];

    // prodXInvY_uid180_i_div_if_loop_326_im0_cma(CHAINMULTADD,462)@42 + 5
    // out q@48
    assign prodXInvY_uid180_i_div_if_loop_326_im0_cma_reset = ~ (resetn);
    assign prodXInvY_uid180_i_div_if_loop_326_im0_cma_ena0 = 1'b1;
    assign prodXInvY_uid180_i_div_if_loop_326_im0_cma_ena1 = prodXInvY_uid180_i_div_if_loop_326_im0_cma_ena0;
    assign prodXInvY_uid180_i_div_if_loop_326_im0_cma_ena2 = prodXInvY_uid180_i_div_if_loop_326_im0_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            prodXInvY_uid180_i_div_if_loop_326_im0_cma_ah[0] <= prodXInvY_uid180_i_div_if_loop_326_bs1_merged_bit_select_b;
            prodXInvY_uid180_i_div_if_loop_326_im0_cma_ch[0] <= prodXInvY_uid180_i_div_if_loop_326_bjB3_q;
        end
    end

    assign prodXInvY_uid180_i_div_if_loop_326_im0_cma_a0 = $unsigned(prodXInvY_uid180_i_div_if_loop_326_im0_cma_ah[0]);
    assign prodXInvY_uid180_i_div_if_loop_326_im0_cma_c0 = $unsigned(prodXInvY_uid180_i_div_if_loop_326_im0_cma_ch[0]);
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
    ) prodXInvY_uid180_i_div_if_loop_326_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ prodXInvY_uid180_i_div_if_loop_326_im0_cma_ena2, prodXInvY_uid180_i_div_if_loop_326_im0_cma_ena1, prodXInvY_uid180_i_div_if_loop_326_im0_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(prodXInvY_uid180_i_div_if_loop_326_im0_cma_a0),
        .ax(prodXInvY_uid180_i_div_if_loop_326_im0_cma_c0),
        .resulta(prodXInvY_uid180_i_div_if_loop_326_im0_cma_s0),
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
    prodXInvY_uid180_i_div_if_loop_326_im0_cma_delay ( .xin(prodXInvY_uid180_i_div_if_loop_326_im0_cma_s0), .xout(prodXInvY_uid180_i_div_if_loop_326_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXInvY_uid180_i_div_if_loop_326_im0_cma_q = $unsigned(prodXInvY_uid180_i_div_if_loop_326_im0_cma_qq[30:0]);

    // redist20_prodXInvY_uid180_i_div_if_loop_326_im0_cma_q_1(DELAY,502)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist20_prodXInvY_uid180_i_div_if_loop_326_im0_cma_q_1_q <= $unsigned(prodXInvY_uid180_i_div_if_loop_326_im0_cma_q);
        end
    end

    // prodXInvY_uid180_i_div_if_loop_326_im10_cma(CHAINMULTADD,463)@42 + 5
    // out q@48
    assign prodXInvY_uid180_i_div_if_loop_326_im10_cma_reset = ~ (resetn);
    assign prodXInvY_uid180_i_div_if_loop_326_im10_cma_ena0 = 1'b1;
    assign prodXInvY_uid180_i_div_if_loop_326_im10_cma_ena1 = prodXInvY_uid180_i_div_if_loop_326_im10_cma_ena0;
    assign prodXInvY_uid180_i_div_if_loop_326_im10_cma_ena2 = prodXInvY_uid180_i_div_if_loop_326_im10_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            prodXInvY_uid180_i_div_if_loop_326_im10_cma_ah[0] <= prodXInvY_uid180_i_div_if_loop_326_bs1_merged_bit_select_c;
            prodXInvY_uid180_i_div_if_loop_326_im10_cma_ch[0] <= prodXInvY_uid180_i_div_if_loop_326_bs2_merged_bit_select_c;
        end
    end

    assign prodXInvY_uid180_i_div_if_loop_326_im10_cma_a0 = prodXInvY_uid180_i_div_if_loop_326_im10_cma_ah[0];
    assign prodXInvY_uid180_i_div_if_loop_326_im10_cma_c0 = prodXInvY_uid180_i_div_if_loop_326_im10_cma_ch[0];
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
    ) prodXInvY_uid180_i_div_if_loop_326_im10_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ prodXInvY_uid180_i_div_if_loop_326_im10_cma_ena2, prodXInvY_uid180_i_div_if_loop_326_im10_cma_ena1, prodXInvY_uid180_i_div_if_loop_326_im10_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(prodXInvY_uid180_i_div_if_loop_326_im10_cma_a0),
        .ax(prodXInvY_uid180_i_div_if_loop_326_im10_cma_c0),
        .resulta(prodXInvY_uid180_i_div_if_loop_326_im10_cma_s0),
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
    prodXInvY_uid180_i_div_if_loop_326_im10_cma_delay ( .xin(prodXInvY_uid180_i_div_if_loop_326_im10_cma_s0), .xout(prodXInvY_uid180_i_div_if_loop_326_im10_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXInvY_uid180_i_div_if_loop_326_im10_cma_q = $unsigned(prodXInvY_uid180_i_div_if_loop_326_im10_cma_qq[35:0]);

    // redist19_prodXInvY_uid180_i_div_if_loop_326_im10_cma_q_1(DELAY,501)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist19_prodXInvY_uid180_i_div_if_loop_326_im10_cma_q_1_q <= $unsigned(prodXInvY_uid180_i_div_if_loop_326_im10_cma_q);
        end
    end

    // prodXInvY_uid180_i_div_if_loop_326_sums_join_0(BITJOIN,396)@49
    assign prodXInvY_uid180_i_div_if_loop_326_sums_join_0_q = {redist20_prodXInvY_uid180_i_div_if_loop_326_im0_cma_q_1_q, redist19_prodXInvY_uid180_i_div_if_loop_326_im10_cma_q_1_q};

    // prodXInvY_uid180_i_div_if_loop_326_sums_result_add_0_0(ADD,399)@49
    assign prodXInvY_uid180_i_div_if_loop_326_sums_result_add_0_0_a = $unsigned({{1{prodXInvY_uid180_i_div_if_loop_326_sums_join_0_q[66]}}, prodXInvY_uid180_i_div_if_loop_326_sums_join_0_q});
    assign prodXInvY_uid180_i_div_if_loop_326_sums_result_add_0_0_b = $unsigned({{15{prodXInvY_uid180_i_div_if_loop_326_sums_align_1_q[52]}}, prodXInvY_uid180_i_div_if_loop_326_sums_align_1_q});
    assign prodXInvY_uid180_i_div_if_loop_326_sums_result_add_0_0_o = $unsigned($signed(prodXInvY_uid180_i_div_if_loop_326_sums_result_add_0_0_a) + $signed(prodXInvY_uid180_i_div_if_loop_326_sums_result_add_0_0_b));
    assign prodXInvY_uid180_i_div_if_loop_326_sums_result_add_0_0_q = prodXInvY_uid180_i_div_if_loop_326_sums_result_add_0_0_o[67:0];

    // rightShiftInput_uid181_i_div_if_loop_326(BITSELECT,180)@49
    assign rightShiftInput_uid181_i_div_if_loop_326_in = $unsigned(prodXInvY_uid180_i_div_if_loop_326_sums_result_add_0_0_q[64:0]);
    assign rightShiftInput_uid181_i_div_if_loop_326_b = $unsigned(rightShiftInput_uid181_i_div_if_loop_326_in[64:0]);

    // redist41_rightShiftInput_uid181_i_div_if_loop_326_b_1(DELAY,523)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist41_rightShiftInput_uid181_i_div_if_loop_326_b_1_q <= $unsigned(rightShiftInput_uid181_i_div_if_loop_326_b);
        end
    end

    // xMSB_uid401_prodPostRightShift_uid182_i_div_if_loop_326(BITSELECT,400)@50
    assign xMSB_uid401_prodPostRightShift_uid182_i_div_if_loop_326_b = $unsigned(redist41_rightShiftInput_uid181_i_div_if_loop_326_b_1_q[64:64]);

    // redist24_xMSB_uid401_prodPostRightShift_uid182_i_div_if_loop_326_b_1(DELAY,506)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist24_xMSB_uid401_prodPostRightShift_uid182_i_div_if_loop_326_b_1_q <= $unsigned(xMSB_uid401_prodPostRightShift_uid182_i_div_if_loop_326_b);
        end
    end

    // seMsb_to64_uid435(BITSELECT,434)@51
    assign seMsb_to64_uid435_in = $unsigned({{63{redist24_xMSB_uid401_prodPostRightShift_uid182_i_div_if_loop_326_b_1_q[0]}}, redist24_xMSB_uid401_prodPostRightShift_uid182_i_div_if_loop_326_b_1_q});
    assign seMsb_to64_uid435_b = $unsigned(seMsb_to64_uid435_in[63:0]);

    // rightShiftStage3Idx1Rng64_uid436_prodPostRightShift_uid182_i_div_if_loop_326(BITSELECT,435)@51
    assign rightShiftStage3Idx1Rng64_uid436_prodPostRightShift_uid182_i_div_if_loop_326_b = $unsigned(rightShiftStage2_uid434_prodPostRightShift_uid182_i_div_if_loop_326_q[64:64]);

    // rightShiftStage3Idx1_uid437_prodPostRightShift_uid182_i_div_if_loop_326(BITJOIN,436)@51
    assign rightShiftStage3Idx1_uid437_prodPostRightShift_uid182_i_div_if_loop_326_q = {seMsb_to64_uid435_b, rightShiftStage3Idx1Rng64_uid436_prodPostRightShift_uid182_i_div_if_loop_326_b};

    // seMsb_to48_uid430(BITSELECT,429)@51
    assign seMsb_to48_uid430_in = $unsigned({{47{redist24_xMSB_uid401_prodPostRightShift_uid182_i_div_if_loop_326_b_1_q[0]}}, redist24_xMSB_uid401_prodPostRightShift_uid182_i_div_if_loop_326_b_1_q});
    assign seMsb_to48_uid430_b = $unsigned(seMsb_to48_uid430_in[47:0]);

    // rightShiftStage2Idx3Rng48_uid431_prodPostRightShift_uid182_i_div_if_loop_326(BITSELECT,430)@51
    assign rightShiftStage2Idx3Rng48_uid431_prodPostRightShift_uid182_i_div_if_loop_326_b = $unsigned(rightShiftStage1_uid423_prodPostRightShift_uid182_i_div_if_loop_326_q[64:48]);

    // rightShiftStage2Idx3_uid432_prodPostRightShift_uid182_i_div_if_loop_326(BITJOIN,431)@51
    assign rightShiftStage2Idx3_uid432_prodPostRightShift_uid182_i_div_if_loop_326_q = {seMsb_to48_uid430_b, rightShiftStage2Idx3Rng48_uid431_prodPostRightShift_uid182_i_div_if_loop_326_b};

    // seMsb_to32_uid427(BITSELECT,426)@51
    assign seMsb_to32_uid427_in = $unsigned({{31{redist24_xMSB_uid401_prodPostRightShift_uid182_i_div_if_loop_326_b_1_q[0]}}, redist24_xMSB_uid401_prodPostRightShift_uid182_i_div_if_loop_326_b_1_q});
    assign seMsb_to32_uid427_b = $unsigned(seMsb_to32_uid427_in[31:0]);

    // rightShiftStage2Idx2Rng32_uid428_prodPostRightShift_uid182_i_div_if_loop_326(BITSELECT,427)@51
    assign rightShiftStage2Idx2Rng32_uid428_prodPostRightShift_uid182_i_div_if_loop_326_b = $unsigned(rightShiftStage1_uid423_prodPostRightShift_uid182_i_div_if_loop_326_q[64:32]);

    // rightShiftStage2Idx2_uid429_prodPostRightShift_uid182_i_div_if_loop_326(BITJOIN,428)@51
    assign rightShiftStage2Idx2_uid429_prodPostRightShift_uid182_i_div_if_loop_326_q = {seMsb_to32_uid427_b, rightShiftStage2Idx2Rng32_uid428_prodPostRightShift_uid182_i_div_if_loop_326_b};

    // seMsb_to16_uid424(BITSELECT,423)@51
    assign seMsb_to16_uid424_in = $unsigned({{15{redist24_xMSB_uid401_prodPostRightShift_uid182_i_div_if_loop_326_b_1_q[0]}}, redist24_xMSB_uid401_prodPostRightShift_uid182_i_div_if_loop_326_b_1_q});
    assign seMsb_to16_uid424_b = $unsigned(seMsb_to16_uid424_in[15:0]);

    // rightShiftStage2Idx1Rng16_uid425_prodPostRightShift_uid182_i_div_if_loop_326(BITSELECT,424)@51
    assign rightShiftStage2Idx1Rng16_uid425_prodPostRightShift_uid182_i_div_if_loop_326_b = $unsigned(rightShiftStage1_uid423_prodPostRightShift_uid182_i_div_if_loop_326_q[64:16]);

    // rightShiftStage2Idx1_uid426_prodPostRightShift_uid182_i_div_if_loop_326(BITJOIN,425)@51
    assign rightShiftStage2Idx1_uid426_prodPostRightShift_uid182_i_div_if_loop_326_q = {seMsb_to16_uid424_b, rightShiftStage2Idx1Rng16_uid425_prodPostRightShift_uid182_i_div_if_loop_326_b};

    // seMsb_to12_uid419(BITSELECT,418)@50
    assign seMsb_to12_uid419_in = $unsigned({{11{xMSB_uid401_prodPostRightShift_uid182_i_div_if_loop_326_b[0]}}, xMSB_uid401_prodPostRightShift_uid182_i_div_if_loop_326_b});
    assign seMsb_to12_uid419_b = $unsigned(seMsb_to12_uid419_in[11:0]);

    // rightShiftStage1Idx3Rng12_uid420_prodPostRightShift_uid182_i_div_if_loop_326(BITSELECT,419)@50
    assign rightShiftStage1Idx3Rng12_uid420_prodPostRightShift_uid182_i_div_if_loop_326_b = $unsigned(rightShiftStage0_uid412_prodPostRightShift_uid182_i_div_if_loop_326_q[64:12]);

    // rightShiftStage1Idx3_uid421_prodPostRightShift_uid182_i_div_if_loop_326(BITJOIN,420)@50
    assign rightShiftStage1Idx3_uid421_prodPostRightShift_uid182_i_div_if_loop_326_q = {seMsb_to12_uid419_b, rightShiftStage1Idx3Rng12_uid420_prodPostRightShift_uid182_i_div_if_loop_326_b};

    // seMsb_to8_uid416(BITSELECT,415)@50
    assign seMsb_to8_uid416_in = $unsigned({{7{xMSB_uid401_prodPostRightShift_uid182_i_div_if_loop_326_b[0]}}, xMSB_uid401_prodPostRightShift_uid182_i_div_if_loop_326_b});
    assign seMsb_to8_uid416_b = $unsigned(seMsb_to8_uid416_in[7:0]);

    // rightShiftStage1Idx2Rng8_uid417_prodPostRightShift_uid182_i_div_if_loop_326(BITSELECT,416)@50
    assign rightShiftStage1Idx2Rng8_uid417_prodPostRightShift_uid182_i_div_if_loop_326_b = $unsigned(rightShiftStage0_uid412_prodPostRightShift_uid182_i_div_if_loop_326_q[64:8]);

    // rightShiftStage1Idx2_uid418_prodPostRightShift_uid182_i_div_if_loop_326(BITJOIN,417)@50
    assign rightShiftStage1Idx2_uid418_prodPostRightShift_uid182_i_div_if_loop_326_q = {seMsb_to8_uid416_b, rightShiftStage1Idx2Rng8_uid417_prodPostRightShift_uid182_i_div_if_loop_326_b};

    // seMsb_to4_uid413(BITSELECT,412)@50
    assign seMsb_to4_uid413_in = $unsigned({{3{xMSB_uid401_prodPostRightShift_uid182_i_div_if_loop_326_b[0]}}, xMSB_uid401_prodPostRightShift_uid182_i_div_if_loop_326_b});
    assign seMsb_to4_uid413_b = $unsigned(seMsb_to4_uid413_in[3:0]);

    // rightShiftStage1Idx1Rng4_uid414_prodPostRightShift_uid182_i_div_if_loop_326(BITSELECT,413)@50
    assign rightShiftStage1Idx1Rng4_uid414_prodPostRightShift_uid182_i_div_if_loop_326_b = $unsigned(rightShiftStage0_uid412_prodPostRightShift_uid182_i_div_if_loop_326_q[64:4]);

    // rightShiftStage1Idx1_uid415_prodPostRightShift_uid182_i_div_if_loop_326(BITJOIN,414)@50
    assign rightShiftStage1Idx1_uid415_prodPostRightShift_uid182_i_div_if_loop_326_q = {seMsb_to4_uid413_b, rightShiftStage1Idx1Rng4_uid414_prodPostRightShift_uid182_i_div_if_loop_326_b};

    // seMsb_to3_uid408(BITSELECT,407)@50
    assign seMsb_to3_uid408_in = $unsigned({{2{xMSB_uid401_prodPostRightShift_uid182_i_div_if_loop_326_b[0]}}, xMSB_uid401_prodPostRightShift_uid182_i_div_if_loop_326_b});
    assign seMsb_to3_uid408_b = $unsigned(seMsb_to3_uid408_in[2:0]);

    // rightShiftStage0Idx3Rng3_uid409_prodPostRightShift_uid182_i_div_if_loop_326(BITSELECT,408)@50
    assign rightShiftStage0Idx3Rng3_uid409_prodPostRightShift_uid182_i_div_if_loop_326_b = $unsigned(redist41_rightShiftInput_uid181_i_div_if_loop_326_b_1_q[64:3]);

    // rightShiftStage0Idx3_uid410_prodPostRightShift_uid182_i_div_if_loop_326(BITJOIN,409)@50
    assign rightShiftStage0Idx3_uid410_prodPostRightShift_uid182_i_div_if_loop_326_q = {seMsb_to3_uid408_b, rightShiftStage0Idx3Rng3_uid409_prodPostRightShift_uid182_i_div_if_loop_326_b};

    // seMsb_to2_uid405(BITSELECT,404)@50
    assign seMsb_to2_uid405_in = $unsigned({{1{xMSB_uid401_prodPostRightShift_uid182_i_div_if_loop_326_b[0]}}, xMSB_uid401_prodPostRightShift_uid182_i_div_if_loop_326_b});
    assign seMsb_to2_uid405_b = $unsigned(seMsb_to2_uid405_in[1:0]);

    // rightShiftStage0Idx2Rng2_uid406_prodPostRightShift_uid182_i_div_if_loop_326(BITSELECT,405)@50
    assign rightShiftStage0Idx2Rng2_uid406_prodPostRightShift_uid182_i_div_if_loop_326_b = $unsigned(redist41_rightShiftInput_uid181_i_div_if_loop_326_b_1_q[64:2]);

    // rightShiftStage0Idx2_uid407_prodPostRightShift_uid182_i_div_if_loop_326(BITJOIN,406)@50
    assign rightShiftStage0Idx2_uid407_prodPostRightShift_uid182_i_div_if_loop_326_q = {seMsb_to2_uid405_b, rightShiftStage0Idx2Rng2_uid406_prodPostRightShift_uid182_i_div_if_loop_326_b};

    // rightShiftStage0Idx1Rng1_uid403_prodPostRightShift_uid182_i_div_if_loop_326(BITSELECT,402)@50
    assign rightShiftStage0Idx1Rng1_uid403_prodPostRightShift_uid182_i_div_if_loop_326_b = $unsigned(redist41_rightShiftInput_uid181_i_div_if_loop_326_b_1_q[64:1]);

    // rightShiftStage0Idx1_uid404_prodPostRightShift_uid182_i_div_if_loop_326(BITJOIN,403)@50
    assign rightShiftStage0Idx1_uid404_prodPostRightShift_uid182_i_div_if_loop_326_q = {xMSB_uid401_prodPostRightShift_uid182_i_div_if_loop_326_b, rightShiftStage0Idx1Rng1_uid403_prodPostRightShift_uid182_i_div_if_loop_326_b};

    // rightShiftStage0_uid412_prodPostRightShift_uid182_i_div_if_loop_326(MUX,411)@50
    assign rightShiftStage0_uid412_prodPostRightShift_uid182_i_div_if_loop_326_s = rightShiftStageSel0Dto0_uid411_prodPostRightShift_uid182_i_div_if_loop_326_merged_bit_select_b;
    always @(rightShiftStage0_uid412_prodPostRightShift_uid182_i_div_if_loop_326_s or redist41_rightShiftInput_uid181_i_div_if_loop_326_b_1_q or rightShiftStage0Idx1_uid404_prodPostRightShift_uid182_i_div_if_loop_326_q or rightShiftStage0Idx2_uid407_prodPostRightShift_uid182_i_div_if_loop_326_q or rightShiftStage0Idx3_uid410_prodPostRightShift_uid182_i_div_if_loop_326_q)
    begin
        unique case (rightShiftStage0_uid412_prodPostRightShift_uid182_i_div_if_loop_326_s)
            2'b00 : rightShiftStage0_uid412_prodPostRightShift_uid182_i_div_if_loop_326_q = redist41_rightShiftInput_uid181_i_div_if_loop_326_b_1_q;
            2'b01 : rightShiftStage0_uid412_prodPostRightShift_uid182_i_div_if_loop_326_q = rightShiftStage0Idx1_uid404_prodPostRightShift_uid182_i_div_if_loop_326_q;
            2'b10 : rightShiftStage0_uid412_prodPostRightShift_uid182_i_div_if_loop_326_q = rightShiftStage0Idx2_uid407_prodPostRightShift_uid182_i_div_if_loop_326_q;
            2'b11 : rightShiftStage0_uid412_prodPostRightShift_uid182_i_div_if_loop_326_q = rightShiftStage0Idx3_uid410_prodPostRightShift_uid182_i_div_if_loop_326_q;
            default : rightShiftStage0_uid412_prodPostRightShift_uid182_i_div_if_loop_326_q = 65'b0;
        endcase
    end

    // redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_split_0_offset(CONSTANT,612)
    assign redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_split_0_offset_q = $unsigned(5'b00010);

    // redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_split_0_rdcnt(ADD,613)
    assign redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_split_0_rdcnt_a = {1'b0, redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_split_0_wraddr_q};
    assign redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_split_0_rdcnt_b = {1'b0, redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_split_0_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_split_0_rdcnt_o <= $unsigned(redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_split_0_rdcnt_a) + $unsigned(redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_split_0_rdcnt_b);
        end
    end
    assign redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_split_0_rdcnt_q = redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_split_0_rdcnt_o[5:0];

    // redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_split_0_wraddr(COUNTER,611)
    // low=0, high=31, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_split_0_wraddr_i <= $unsigned(redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_split_0_wraddr_i) + $unsigned(5'd1);
        end
    end
    assign redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_split_0_wraddr_q = redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_split_0_wraddr_i[4:0];

    // redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_split_0_mem(DUALMEM,610)
    assign redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_split_0_mem_ia = $unsigned(r_uid266_zCount_uid157_i_div_if_loop_326_q);
    assign redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_split_0_mem_aa = redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_split_0_wraddr_q;
    assign redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_split_0_mem_ab = redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_split_0_rdcnt_q[4:0];
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
    ) redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_split_0_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_split_0_mem_aa),
        .data_a(redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_split_0_mem_ab),
        .q_b(redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_split_0_mem_iq),
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
    assign redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_split_0_mem_q = redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_split_0_mem_iq[5:0];

    // redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34(DELAY,511)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_q <= $unsigned(redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_split_0_mem_q);
        end
    end

    // cWOut_uid173_i_div_if_loop_326(CONSTANT,172)
    assign cWOut_uid173_i_div_if_loop_326_q = $unsigned(6'b100000);

    // rShiftCount_uid174_i_div_if_loop_326(SUB,173)@49 + 1
    assign rShiftCount_uid174_i_div_if_loop_326_a = {1'b0, cWOut_uid173_i_div_if_loop_326_q};
    assign rShiftCount_uid174_i_div_if_loop_326_b = {1'b0, redist29_r_uid266_zCount_uid157_i_div_if_loop_326_q_34_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            rShiftCount_uid174_i_div_if_loop_326_o <= $unsigned(rShiftCount_uid174_i_div_if_loop_326_a) - $unsigned(rShiftCount_uid174_i_div_if_loop_326_b);
        end
    end
    assign rShiftCount_uid174_i_div_if_loop_326_q = rShiftCount_uid174_i_div_if_loop_326_o[6:0];

    // rightShiftStageSel0Dto0_uid411_prodPostRightShift_uid182_i_div_if_loop_326_merged_bit_select(BITSELECT,473)@50
    assign rightShiftStageSel0Dto0_uid411_prodPostRightShift_uid182_i_div_if_loop_326_merged_bit_select_b = rShiftCount_uid174_i_div_if_loop_326_q[1:0];
    assign rightShiftStageSel0Dto0_uid411_prodPostRightShift_uid182_i_div_if_loop_326_merged_bit_select_c = rShiftCount_uid174_i_div_if_loop_326_q[3:2];
    assign rightShiftStageSel0Dto0_uid411_prodPostRightShift_uid182_i_div_if_loop_326_merged_bit_select_d = rShiftCount_uid174_i_div_if_loop_326_q[5:4];
    assign rightShiftStageSel0Dto0_uid411_prodPostRightShift_uid182_i_div_if_loop_326_merged_bit_select_e = rShiftCount_uid174_i_div_if_loop_326_q[6:6];

    // rightShiftStage1_uid423_prodPostRightShift_uid182_i_div_if_loop_326(MUX,422)@50 + 1
    assign rightShiftStage1_uid423_prodPostRightShift_uid182_i_div_if_loop_326_s = rightShiftStageSel0Dto0_uid411_prodPostRightShift_uid182_i_div_if_loop_326_merged_bit_select_c;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (rightShiftStage1_uid423_prodPostRightShift_uid182_i_div_if_loop_326_s)
                2'b00 : rightShiftStage1_uid423_prodPostRightShift_uid182_i_div_if_loop_326_q <= rightShiftStage0_uid412_prodPostRightShift_uid182_i_div_if_loop_326_q;
                2'b01 : rightShiftStage1_uid423_prodPostRightShift_uid182_i_div_if_loop_326_q <= rightShiftStage1Idx1_uid415_prodPostRightShift_uid182_i_div_if_loop_326_q;
                2'b10 : rightShiftStage1_uid423_prodPostRightShift_uid182_i_div_if_loop_326_q <= rightShiftStage1Idx2_uid418_prodPostRightShift_uid182_i_div_if_loop_326_q;
                2'b11 : rightShiftStage1_uid423_prodPostRightShift_uid182_i_div_if_loop_326_q <= rightShiftStage1Idx3_uid421_prodPostRightShift_uid182_i_div_if_loop_326_q;
                default : rightShiftStage1_uid423_prodPostRightShift_uid182_i_div_if_loop_326_q <= 65'b0;
            endcase
        end
    end

    // redist6_rightShiftStageSel0Dto0_uid411_prodPostRightShift_uid182_i_div_if_loop_326_merged_bit_select_d_1(DELAY,488)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_rightShiftStageSel0Dto0_uid411_prodPostRightShift_uid182_i_div_if_loop_326_merged_bit_select_d_1_q <= $unsigned(rightShiftStageSel0Dto0_uid411_prodPostRightShift_uid182_i_div_if_loop_326_merged_bit_select_d);
        end
    end

    // rightShiftStage2_uid434_prodPostRightShift_uid182_i_div_if_loop_326(MUX,433)@51
    assign rightShiftStage2_uid434_prodPostRightShift_uid182_i_div_if_loop_326_s = redist6_rightShiftStageSel0Dto0_uid411_prodPostRightShift_uid182_i_div_if_loop_326_merged_bit_select_d_1_q;
    always @(rightShiftStage2_uid434_prodPostRightShift_uid182_i_div_if_loop_326_s or rightShiftStage1_uid423_prodPostRightShift_uid182_i_div_if_loop_326_q or rightShiftStage2Idx1_uid426_prodPostRightShift_uid182_i_div_if_loop_326_q or rightShiftStage2Idx2_uid429_prodPostRightShift_uid182_i_div_if_loop_326_q or rightShiftStage2Idx3_uid432_prodPostRightShift_uid182_i_div_if_loop_326_q)
    begin
        unique case (rightShiftStage2_uid434_prodPostRightShift_uid182_i_div_if_loop_326_s)
            2'b00 : rightShiftStage2_uid434_prodPostRightShift_uid182_i_div_if_loop_326_q = rightShiftStage1_uid423_prodPostRightShift_uid182_i_div_if_loop_326_q;
            2'b01 : rightShiftStage2_uid434_prodPostRightShift_uid182_i_div_if_loop_326_q = rightShiftStage2Idx1_uid426_prodPostRightShift_uid182_i_div_if_loop_326_q;
            2'b10 : rightShiftStage2_uid434_prodPostRightShift_uid182_i_div_if_loop_326_q = rightShiftStage2Idx2_uid429_prodPostRightShift_uid182_i_div_if_loop_326_q;
            2'b11 : rightShiftStage2_uid434_prodPostRightShift_uid182_i_div_if_loop_326_q = rightShiftStage2Idx3_uid432_prodPostRightShift_uid182_i_div_if_loop_326_q;
            default : rightShiftStage2_uid434_prodPostRightShift_uid182_i_div_if_loop_326_q = 65'b0;
        endcase
    end

    // redist7_rightShiftStageSel0Dto0_uid411_prodPostRightShift_uid182_i_div_if_loop_326_merged_bit_select_e_1(DELAY,489)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_rightShiftStageSel0Dto0_uid411_prodPostRightShift_uid182_i_div_if_loop_326_merged_bit_select_e_1_q <= $unsigned(rightShiftStageSel0Dto0_uid411_prodPostRightShift_uid182_i_div_if_loop_326_merged_bit_select_e);
        end
    end

    // rightShiftStage3_uid439_prodPostRightShift_uid182_i_div_if_loop_326(MUX,438)@51
    assign rightShiftStage3_uid439_prodPostRightShift_uid182_i_div_if_loop_326_s = redist7_rightShiftStageSel0Dto0_uid411_prodPostRightShift_uid182_i_div_if_loop_326_merged_bit_select_e_1_q;
    always @(rightShiftStage3_uid439_prodPostRightShift_uid182_i_div_if_loop_326_s or rightShiftStage2_uid434_prodPostRightShift_uid182_i_div_if_loop_326_q or rightShiftStage3Idx1_uid437_prodPostRightShift_uid182_i_div_if_loop_326_q)
    begin
        unique case (rightShiftStage3_uid439_prodPostRightShift_uid182_i_div_if_loop_326_s)
            1'b0 : rightShiftStage3_uid439_prodPostRightShift_uid182_i_div_if_loop_326_q = rightShiftStage2_uid434_prodPostRightShift_uid182_i_div_if_loop_326_q;
            1'b1 : rightShiftStage3_uid439_prodPostRightShift_uid182_i_div_if_loop_326_q = rightShiftStage3Idx1_uid437_prodPostRightShift_uid182_i_div_if_loop_326_q;
            default : rightShiftStage3_uid439_prodPostRightShift_uid182_i_div_if_loop_326_q = 65'b0;
        endcase
    end

    // prodPostRightShiftPost_uid183_i_div_if_loop_326(BITSELECT,182)@51
    assign prodPostRightShiftPost_uid183_i_div_if_loop_326_in = rightShiftStage3_uid439_prodPostRightShift_uid182_i_div_if_loop_326_q[62:0];
    assign prodPostRightShiftPost_uid183_i_div_if_loop_326_b = prodPostRightShiftPost_uid183_i_div_if_loop_326_in[62:30];

    // redist40_prodPostRightShiftPost_uid183_i_div_if_loop_326_b_1(DELAY,522)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist40_prodPostRightShiftPost_uid183_i_div_if_loop_326_b_1_q <= $unsigned(prodPostRightShiftPost_uid183_i_div_if_loop_326_b);
        end
    end

    // prodPostRightShiftPostRnd_uid185_i_div_if_loop_326(ADD,184)@52
    assign prodPostRightShiftPostRnd_uid185_i_div_if_loop_326_a = {1'b0, redist40_prodPostRightShiftPost_uid183_i_div_if_loop_326_b_1_q};
    assign prodPostRightShiftPostRnd_uid185_i_div_if_loop_326_b = {33'b000000000000000000000000000000000, VCC_q};
    assign prodPostRightShiftPostRnd_uid185_i_div_if_loop_326_o = $unsigned(prodPostRightShiftPostRnd_uid185_i_div_if_loop_326_a) + $unsigned(prodPostRightShiftPostRnd_uid185_i_div_if_loop_326_b);
    assign prodPostRightShiftPostRnd_uid185_i_div_if_loop_326_q = prodPostRightShiftPostRnd_uid185_i_div_if_loop_326_o[33:0];

    // prodPostRightShiftPostRndRange_uid186_i_div_if_loop_326(BITSELECT,185)@52
    assign prodPostRightShiftPostRndRange_uid186_i_div_if_loop_326_in = prodPostRightShiftPostRnd_uid185_i_div_if_loop_326_q[32:0];
    assign prodPostRightShiftPostRndRange_uid186_i_div_if_loop_326_b = prodPostRightShiftPostRndRange_uid186_i_div_if_loop_326_in[32:1];

    // redist39_prodPostRightShiftPostRndRange_uid186_i_div_if_loop_326_b_1(DELAY,521)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist39_prodPostRightShiftPostRndRange_uid186_i_div_if_loop_326_b_1_q <= $unsigned(prodPostRightShiftPostRndRange_uid186_i_div_if_loop_326_b);
        end
    end

    // redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_offset(CONSTANT,608)
    assign redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_offset_q = $unsigned(6'b011010);

    // redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_rdcnt(ADD,609)
    assign redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_rdcnt_a = {1'b0, redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_wraddr_q};
    assign redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_rdcnt_b = {1'b0, redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_rdcnt_o <= $unsigned(redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_rdcnt_a) + $unsigned(redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_rdcnt_b);
        end
    end
    assign redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_rdcnt_q = redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_rdcnt_o[6:0];

    // redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_inputreg0(DELAY,604)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_inputreg0_q <= $unsigned(redist68_bgTrunc_i_sub_if_loop_322_sel_x_b_1_q);
        end
    end

    // redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_wraddr(COUNTER,607)
    // low=0, high=63, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_wraddr_i <= $unsigned(redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_wraddr_i) + $unsigned(6'd1);
        end
    end
    assign redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_wraddr_q = redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_wraddr_i[5:0];

    // redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_mem(DUALMEM,606)
    assign redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_mem_ia = $unsigned(redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_inputreg0_q);
    assign redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_mem_aa = redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_wraddr_q;
    assign redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_mem_ab = redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_rdcnt_q[5:0];
    altera_syncram #(
        .ram_block_type("M20K"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(6),
        .numwords_a(64),
        .width_b(32),
        .widthad_b(6),
        .numwords_b(64),
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
    ) redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_mem_aa),
        .data_a(redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_mem_ab),
        .q_b(redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_mem_iq),
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
    assign redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_mem_q = redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_mem_iq[31:0];

    // redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_outputreg0(DELAY,605)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_outputreg0_q <= $unsigned(redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_mem_q);
        end
    end

    // yIsZero_uid165_i_div_if_loop_326(LOGICAL,164)@52 + 1
    assign yIsZero_uid165_i_div_if_loop_326_b = {31'b0000000000000000000000000000000, GND_q};
    assign yIsZero_uid165_i_div_if_loop_326_qi = $unsigned(redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_outputreg0_q == yIsZero_uid165_i_div_if_loop_326_b ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    yIsZero_uid165_i_div_if_loop_326_delay ( .xin(yIsZero_uid165_i_div_if_loop_326_qi), .xout(yIsZero_uid165_i_div_if_loop_326_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // resFinal_uid191_i_div_if_loop_326(MUX,190)@53
    assign resFinal_uid191_i_div_if_loop_326_s = yIsZero_uid165_i_div_if_loop_326_q;
    always @(resFinal_uid191_i_div_if_loop_326_s or redist39_prodPostRightShiftPostRndRange_uid186_i_div_if_loop_326_b_1_q or cstOvf_uid190_i_div_if_loop_326_q)
    begin
        unique case (resFinal_uid191_i_div_if_loop_326_s)
            1'b0 : resFinal_uid191_i_div_if_loop_326_q = redist39_prodPostRightShiftPostRndRange_uid186_i_div_if_loop_326_b_1_q;
            1'b1 : resFinal_uid191_i_div_if_loop_326_q = cstOvf_uid190_i_div_if_loop_326_q;
            default : resFinal_uid191_i_div_if_loop_326_q = 32'b0;
        endcase
    end

    // redist35_resFinal_uid191_i_div_if_loop_326_q_8_inputreg0(DELAY,587)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist35_resFinal_uid191_i_div_if_loop_326_q_8_inputreg0_q <= $unsigned(resFinal_uid191_i_div_if_loop_326_q);
        end
    end

    // redist35_resFinal_uid191_i_div_if_loop_326_q_8_wraddr(COUNTER,590)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist35_resFinal_uid191_i_div_if_loop_326_q_8_wraddr_i <= $unsigned(redist35_resFinal_uid191_i_div_if_loop_326_q_8_wraddr_i) + $unsigned(3'd1);
        end
    end
    assign redist35_resFinal_uid191_i_div_if_loop_326_q_8_wraddr_q = redist35_resFinal_uid191_i_div_if_loop_326_q_8_wraddr_i[2:0];

    // redist35_resFinal_uid191_i_div_if_loop_326_q_8_mem(DUALMEM,589)
    assign redist35_resFinal_uid191_i_div_if_loop_326_q_8_mem_ia = $unsigned(redist35_resFinal_uid191_i_div_if_loop_326_q_8_inputreg0_q);
    assign redist35_resFinal_uid191_i_div_if_loop_326_q_8_mem_aa = redist35_resFinal_uid191_i_div_if_loop_326_q_8_wraddr_q;
    assign redist35_resFinal_uid191_i_div_if_loop_326_q_8_mem_ab = redist35_resFinal_uid191_i_div_if_loop_326_q_8_rdcnt_q[2:0];
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
    ) redist35_resFinal_uid191_i_div_if_loop_326_q_8_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist35_resFinal_uid191_i_div_if_loop_326_q_8_mem_aa),
        .data_a(redist35_resFinal_uid191_i_div_if_loop_326_q_8_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist35_resFinal_uid191_i_div_if_loop_326_q_8_mem_ab),
        .q_b(redist35_resFinal_uid191_i_div_if_loop_326_q_8_mem_iq),
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
    assign redist35_resFinal_uid191_i_div_if_loop_326_q_8_mem_q = redist35_resFinal_uid191_i_div_if_loop_326_q_8_mem_iq[31:0];

    // redist35_resFinal_uid191_i_div_if_loop_326_q_8_outputreg0(DELAY,588)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist35_resFinal_uid191_i_div_if_loop_326_q_8_outputreg0_q <= $unsigned(redist35_resFinal_uid191_i_div_if_loop_326_q_8_mem_q);
        end
    end

    // resFinalMP1_uid208_i_div_if_loop_326(SUB,207)@61
    assign resFinalMP1_uid208_i_div_if_loop_326_a = $unsigned({{1{redist35_resFinal_uid191_i_div_if_loop_326_q_8_outputreg0_q[31]}}, redist35_resFinal_uid191_i_div_if_loop_326_q_8_outputreg0_q});
    assign resFinalMP1_uid208_i_div_if_loop_326_b = $unsigned({{31{cstSubFinal_uid207_i_div_if_loop_326_q[1]}}, cstSubFinal_uid207_i_div_if_loop_326_q});
    assign resFinalMP1_uid208_i_div_if_loop_326_o = $unsigned($signed(resFinalMP1_uid208_i_div_if_loop_326_a) - $signed(resFinalMP1_uid208_i_div_if_loop_326_b));
    assign resFinalMP1_uid208_i_div_if_loop_326_q = resFinalMP1_uid208_i_div_if_loop_326_o[32:0];

    // resFinalPostMux_uid209_i_div_if_loop_326(BITSELECT,208)@61
    assign resFinalPostMux_uid209_i_div_if_loop_326_in = $unsigned(resFinalMP1_uid208_i_div_if_loop_326_q[31:0]);
    assign resFinalPostMux_uid209_i_div_if_loop_326_b = $unsigned(resFinalPostMux_uid209_i_div_if_loop_326_in[31:0]);

    // redist34_resFinalPostMux_uid209_i_div_if_loop_326_b_1(DELAY,516)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist34_resFinalPostMux_uid209_i_div_if_loop_326_b_1_q <= $unsigned(resFinalPostMux_uid209_i_div_if_loop_326_b);
        end
    end

    // redist36_resFinal_uid191_i_div_if_loop_326_q_9(DELAY,518)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist36_resFinal_uid191_i_div_if_loop_326_q_9_q <= $unsigned(redist35_resFinal_uid191_i_div_if_loop_326_q_8_outputreg0_q);
        end
    end

    // signResFinal_uid200_i_div_if_loop_326(BITSELECT,199)@62
    assign signResFinal_uid200_i_div_if_loop_326_b = $unsigned(redist36_resFinal_uid191_i_div_if_loop_326_q_9_q[31:31]);

    // redist53_xMSB_uid151_i_div_if_loop_326_b_53(DELAY,535)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist53_xMSB_uid151_i_div_if_loop_326_b_53_delay_0 <= $unsigned(redist52_xMSB_uid151_i_div_if_loop_326_b_51_q);
            redist53_xMSB_uid151_i_div_if_loop_326_b_53_q <= redist53_xMSB_uid151_i_div_if_loop_326_b_53_delay_0;
        end
    end

    // redist38_signX_uid189_i_div_if_loop_326_b_9(DELAY,520)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist38_signX_uid189_i_div_if_loop_326_b_9_delay_0 <= $unsigned(redist37_signX_uid189_i_div_if_loop_326_b_7_q);
            redist38_signX_uid189_i_div_if_loop_326_b_9_q <= redist38_signX_uid189_i_div_if_loop_326_b_9_delay_0;
        end
    end

    // OverflowCond_uid201_i_div_if_loop_326(LOGICAL,200)@62
    assign OverflowCond_uid201_i_div_if_loop_326_q = redist38_signX_uid189_i_div_if_loop_326_b_9_q & redist53_xMSB_uid151_i_div_if_loop_326_b_53_q & signResFinal_uid200_i_div_if_loop_326_b;

    // redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_offset(CONSTANT,602)
    assign redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_offset_q = $unsigned(3'b100);

    // redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_rdcnt(ADD,603)
    assign redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_rdcnt_a = {1'b0, redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_wraddr_q};
    assign redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_rdcnt_b = {1'b0, redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_offset_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_rdcnt_o <= $unsigned(redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_rdcnt_a) + $unsigned(redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_rdcnt_b);
        end
    end
    assign redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_rdcnt_q = redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_rdcnt_o[3:0];

    // redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_inputreg0(DELAY,599)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_inputreg0_q <= $unsigned(redist63_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_13_outputreg0_q);
        end
    end

    // redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_wraddr(COUNTER,601)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_wraddr_i <= $unsigned(redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_wraddr_i) + $unsigned(3'd1);
        end
    end
    assign redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_wraddr_q = redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_wraddr_i[2:0];

    // redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_mem(DUALMEM,600)
    assign redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_mem_ia = $unsigned(redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_inputreg0_q);
    assign redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_mem_aa = redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_wraddr_q;
    assign redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_mem_ab = redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_rdcnt_q[2:0];
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
    ) redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_mem_dmem (
        .clocken0(1'b1),
        .clock0(clock),
        .address_a(redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_mem_aa),
        .data_a(redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_mem_ab),
        .q_b(redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_mem_iq),
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
    assign redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_mem_q = redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_mem_iq[31:0];

    // prodResY_uid192_i_div_if_loop_326_bs4(BITSELECT,444)@53
    assign prodResY_uid192_i_div_if_loop_326_bs4_in = $unsigned(resFinal_uid191_i_div_if_loop_326_q[17:0]);
    assign prodResY_uid192_i_div_if_loop_326_bs4_b = $unsigned(prodResY_uid192_i_div_if_loop_326_bs4_in[17:0]);

    // redist70_bgTrunc_i_sub_if_loop_322_sel_x_b_45(DELAY,552)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist70_bgTrunc_i_sub_if_loop_322_sel_x_b_45_q <= $unsigned(redist69_bgTrunc_i_sub_if_loop_322_sel_x_b_44_outputreg0_q);
        end
    end

    // prodResY_uid192_i_div_if_loop_326_bs2(BITSELECT,442)@53
    assign prodResY_uid192_i_div_if_loop_326_bs2_b = $unsigned(redist70_bgTrunc_i_sub_if_loop_322_sel_x_b_45_q[31:18]);

    // prodResY_uid192_i_div_if_loop_326_bs7(BITSELECT,447)@53
    assign prodResY_uid192_i_div_if_loop_326_bs7_in = $unsigned(redist70_bgTrunc_i_sub_if_loop_322_sel_x_b_45_q[17:0]);
    assign prodResY_uid192_i_div_if_loop_326_bs7_b = $unsigned(prodResY_uid192_i_div_if_loop_326_bs7_in[17:0]);

    // prodResY_uid192_i_div_if_loop_326_bs1(BITSELECT,441)@53
    assign prodResY_uid192_i_div_if_loop_326_bs1_b = $unsigned(resFinal_uid191_i_div_if_loop_326_q[31:18]);

    // prodResY_uid192_i_div_if_loop_326_ma3_cma(CHAINMULTADD,468)@53 + 5
    // out q@59
    assign prodResY_uid192_i_div_if_loop_326_ma3_cma_reset = ~ (resetn);
    assign prodResY_uid192_i_div_if_loop_326_ma3_cma_ena0 = 1'b1;
    assign prodResY_uid192_i_div_if_loop_326_ma3_cma_ena1 = prodResY_uid192_i_div_if_loop_326_ma3_cma_ena0;
    assign prodResY_uid192_i_div_if_loop_326_ma3_cma_ena2 = prodResY_uid192_i_div_if_loop_326_ma3_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            prodResY_uid192_i_div_if_loop_326_ma3_cma_ah[0] <= prodResY_uid192_i_div_if_loop_326_bs1_b;
            prodResY_uid192_i_div_if_loop_326_ma3_cma_ah[1] <= prodResY_uid192_i_div_if_loop_326_bs2_b;
            prodResY_uid192_i_div_if_loop_326_ma3_cma_ch[0] <= prodResY_uid192_i_div_if_loop_326_bs7_b;
            prodResY_uid192_i_div_if_loop_326_ma3_cma_ch[1] <= prodResY_uid192_i_div_if_loop_326_bs4_b;
        end
    end

    assign prodResY_uid192_i_div_if_loop_326_ma3_cma_a0 = $unsigned(prodResY_uid192_i_div_if_loop_326_ma3_cma_ah[0]);
    assign prodResY_uid192_i_div_if_loop_326_ma3_cma_c0 = prodResY_uid192_i_div_if_loop_326_ma3_cma_ch[0];
    assign prodResY_uid192_i_div_if_loop_326_ma3_cma_a1 = $unsigned(prodResY_uid192_i_div_if_loop_326_ma3_cma_ah[1]);
    assign prodResY_uid192_i_div_if_loop_326_ma3_cma_c1 = prodResY_uid192_i_div_if_loop_326_ma3_cma_ch[1];
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
    ) prodResY_uid192_i_div_if_loop_326_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ prodResY_uid192_i_div_if_loop_326_ma3_cma_ena2, prodResY_uid192_i_div_if_loop_326_ma3_cma_ena1, prodResY_uid192_i_div_if_loop_326_ma3_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(prodResY_uid192_i_div_if_loop_326_ma3_cma_a1),
        .by(prodResY_uid192_i_div_if_loop_326_ma3_cma_a0),
        .ax(prodResY_uid192_i_div_if_loop_326_ma3_cma_c1),
        .bx(prodResY_uid192_i_div_if_loop_326_ma3_cma_c0),
        .resulta(prodResY_uid192_i_div_if_loop_326_ma3_cma_s0),
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
    prodResY_uid192_i_div_if_loop_326_ma3_cma_delay ( .xin(prodResY_uid192_i_div_if_loop_326_ma3_cma_s0), .xout(prodResY_uid192_i_div_if_loop_326_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodResY_uid192_i_div_if_loop_326_ma3_cma_q = $unsigned(prodResY_uid192_i_div_if_loop_326_ma3_cma_qq[32:0]);

    // redist14_prodResY_uid192_i_div_if_loop_326_ma3_cma_q_1(DELAY,496)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_prodResY_uid192_i_div_if_loop_326_ma3_cma_q_1_q <= $unsigned(prodResY_uid192_i_div_if_loop_326_ma3_cma_q);
        end
    end

    // prodResY_uid192_i_div_if_loop_326_sums_align_1(BITSHIFT,452)@60
    assign prodResY_uid192_i_div_if_loop_326_sums_align_1_qint = { redist14_prodResY_uid192_i_div_if_loop_326_ma3_cma_q_1_q, 18'b000000000000000000 };
    assign prodResY_uid192_i_div_if_loop_326_sums_align_1_q = prodResY_uid192_i_div_if_loop_326_sums_align_1_qint[50:0];

    // prodResY_uid192_i_div_if_loop_326_im0_cma(CHAINMULTADD,464)@53 + 5
    // out q@59
    assign prodResY_uid192_i_div_if_loop_326_im0_cma_reset = ~ (resetn);
    assign prodResY_uid192_i_div_if_loop_326_im0_cma_ena0 = 1'b1;
    assign prodResY_uid192_i_div_if_loop_326_im0_cma_ena1 = prodResY_uid192_i_div_if_loop_326_im0_cma_ena0;
    assign prodResY_uid192_i_div_if_loop_326_im0_cma_ena2 = prodResY_uid192_i_div_if_loop_326_im0_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            prodResY_uid192_i_div_if_loop_326_im0_cma_ah[0] <= prodResY_uid192_i_div_if_loop_326_bs1_b;
            prodResY_uid192_i_div_if_loop_326_im0_cma_ch[0] <= prodResY_uid192_i_div_if_loop_326_bs2_b;
        end
    end

    assign prodResY_uid192_i_div_if_loop_326_im0_cma_a0 = $unsigned(prodResY_uid192_i_div_if_loop_326_im0_cma_ah[0]);
    assign prodResY_uid192_i_div_if_loop_326_im0_cma_c0 = $unsigned(prodResY_uid192_i_div_if_loop_326_im0_cma_ch[0]);
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
    ) prodResY_uid192_i_div_if_loop_326_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ prodResY_uid192_i_div_if_loop_326_im0_cma_ena2, prodResY_uid192_i_div_if_loop_326_im0_cma_ena1, prodResY_uid192_i_div_if_loop_326_im0_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(prodResY_uid192_i_div_if_loop_326_im0_cma_a0),
        .ax(prodResY_uid192_i_div_if_loop_326_im0_cma_c0),
        .resulta(prodResY_uid192_i_div_if_loop_326_im0_cma_s0),
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
    prodResY_uid192_i_div_if_loop_326_im0_cma_delay ( .xin(prodResY_uid192_i_div_if_loop_326_im0_cma_s0), .xout(prodResY_uid192_i_div_if_loop_326_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodResY_uid192_i_div_if_loop_326_im0_cma_q = $unsigned(prodResY_uid192_i_div_if_loop_326_im0_cma_qq[27:0]);

    // redist18_prodResY_uid192_i_div_if_loop_326_im0_cma_q_1(DELAY,500)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist18_prodResY_uid192_i_div_if_loop_326_im0_cma_q_1_q <= $unsigned(prodResY_uid192_i_div_if_loop_326_im0_cma_q);
        end
    end

    // prodResY_uid192_i_div_if_loop_326_im8_cma(CHAINMULTADD,465)@53 + 5
    // out q@59
    assign prodResY_uid192_i_div_if_loop_326_im8_cma_reset = ~ (resetn);
    assign prodResY_uid192_i_div_if_loop_326_im8_cma_ena0 = 1'b1;
    assign prodResY_uid192_i_div_if_loop_326_im8_cma_ena1 = prodResY_uid192_i_div_if_loop_326_im8_cma_ena0;
    assign prodResY_uid192_i_div_if_loop_326_im8_cma_ena2 = prodResY_uid192_i_div_if_loop_326_im8_cma_ena0;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            prodResY_uid192_i_div_if_loop_326_im8_cma_ah[0] <= prodResY_uid192_i_div_if_loop_326_bs4_b;
            prodResY_uid192_i_div_if_loop_326_im8_cma_ch[0] <= prodResY_uid192_i_div_if_loop_326_bs7_b;
        end
    end

    assign prodResY_uid192_i_div_if_loop_326_im8_cma_a0 = prodResY_uid192_i_div_if_loop_326_im8_cma_ah[0];
    assign prodResY_uid192_i_div_if_loop_326_im8_cma_c0 = prodResY_uid192_i_div_if_loop_326_im8_cma_ch[0];
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
    ) prodResY_uid192_i_div_if_loop_326_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ prodResY_uid192_i_div_if_loop_326_im8_cma_ena2, prodResY_uid192_i_div_if_loop_326_im8_cma_ena1, prodResY_uid192_i_div_if_loop_326_im8_cma_ena0 }),
        .clr({ 1'b0, 1'b0 }),
        .ay(prodResY_uid192_i_div_if_loop_326_im8_cma_a0),
        .ax(prodResY_uid192_i_div_if_loop_326_im8_cma_c0),
        .resulta(prodResY_uid192_i_div_if_loop_326_im8_cma_s0),
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
    prodResY_uid192_i_div_if_loop_326_im8_cma_delay ( .xin(prodResY_uid192_i_div_if_loop_326_im8_cma_s0), .xout(prodResY_uid192_i_div_if_loop_326_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodResY_uid192_i_div_if_loop_326_im8_cma_q = $unsigned(prodResY_uid192_i_div_if_loop_326_im8_cma_qq[35:0]);

    // redist17_prodResY_uid192_i_div_if_loop_326_im8_cma_q_1(DELAY,499)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_prodResY_uid192_i_div_if_loop_326_im8_cma_q_1_q <= $unsigned(prodResY_uid192_i_div_if_loop_326_im8_cma_q);
        end
    end

    // prodResY_uid192_i_div_if_loop_326_sums_join_0(BITJOIN,451)@60
    assign prodResY_uid192_i_div_if_loop_326_sums_join_0_q = {redist18_prodResY_uid192_i_div_if_loop_326_im0_cma_q_1_q, redist17_prodResY_uid192_i_div_if_loop_326_im8_cma_q_1_q};

    // prodResY_uid192_i_div_if_loop_326_sums_result_add_0_0(ADD,454)@60 + 1
    assign prodResY_uid192_i_div_if_loop_326_sums_result_add_0_0_a = $unsigned({{1{prodResY_uid192_i_div_if_loop_326_sums_join_0_q[63]}}, prodResY_uid192_i_div_if_loop_326_sums_join_0_q});
    assign prodResY_uid192_i_div_if_loop_326_sums_result_add_0_0_b = $unsigned({{14{prodResY_uid192_i_div_if_loop_326_sums_align_1_q[50]}}, prodResY_uid192_i_div_if_loop_326_sums_align_1_q});
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            prodResY_uid192_i_div_if_loop_326_sums_result_add_0_0_o <= $unsigned($signed(prodResY_uid192_i_div_if_loop_326_sums_result_add_0_0_a) + $signed(prodResY_uid192_i_div_if_loop_326_sums_result_add_0_0_b));
        end
    end
    assign prodResY_uid192_i_div_if_loop_326_sums_result_add_0_0_q = prodResY_uid192_i_div_if_loop_326_sums_result_add_0_0_o[64:0];

    // prod_qy_LT_x_uid194_i_div_if_loop_326(COMPARE,193)@61 + 1
    assign prod_qy_LT_x_uid194_i_div_if_loop_326_a = $unsigned({{1{prodResY_uid192_i_div_if_loop_326_sums_result_add_0_0_q[64]}}, prodResY_uid192_i_div_if_loop_326_sums_result_add_0_0_q});
    assign prod_qy_LT_x_uid194_i_div_if_loop_326_b = $unsigned({{34{redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_mem_q[31]}}, redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_mem_q});
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            prod_qy_LT_x_uid194_i_div_if_loop_326_o <= $unsigned($signed(prod_qy_LT_x_uid194_i_div_if_loop_326_a) - $signed(prod_qy_LT_x_uid194_i_div_if_loop_326_b));
        end
    end
    assign prod_qy_LT_x_uid194_i_div_if_loop_326_c[0] = prod_qy_LT_x_uid194_i_div_if_loop_326_o[65];

    // CondNegX_uid202_i_div_if_loop_326(LOGICAL,201)@62
    assign CondNegX_uid202_i_div_if_loop_326_q = prod_qy_LT_x_uid194_i_div_if_loop_326_c & redist38_signX_uid189_i_div_if_loop_326_b_9_q;

    // invSignX_uid203_i_div_if_loop_326(LOGICAL,202)@62
    assign invSignX_uid203_i_div_if_loop_326_q = ~ (redist38_signX_uid189_i_div_if_loop_326_b_9_q);

    // prod_qy_GT_x_uid193_i_div_if_loop_326(COMPARE,192)@61 + 1
    assign prod_qy_GT_x_uid193_i_div_if_loop_326_a = $unsigned({{34{redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_mem_q[31]}}, redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_mem_q});
    assign prod_qy_GT_x_uid193_i_div_if_loop_326_b = $unsigned({{1{prodResY_uid192_i_div_if_loop_326_sums_result_add_0_0_q[64]}}, prodResY_uid192_i_div_if_loop_326_sums_result_add_0_0_q});
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            prod_qy_GT_x_uid193_i_div_if_loop_326_o <= $unsigned($signed(prod_qy_GT_x_uid193_i_div_if_loop_326_a) - $signed(prod_qy_GT_x_uid193_i_div_if_loop_326_b));
        end
    end
    assign prod_qy_GT_x_uid193_i_div_if_loop_326_c[0] = prod_qy_GT_x_uid193_i_div_if_loop_326_o[65];

    // CondPosX_uid204_i_div_if_loop_326(LOGICAL,203)@62
    assign CondPosX_uid204_i_div_if_loop_326_q = prod_qy_GT_x_uid193_i_div_if_loop_326_c & invSignX_uid203_i_div_if_loop_326_q;

    // postMuxSelect_uid205_i_div_if_loop_326(LOGICAL,204)@62
    assign postMuxSelect_uid205_i_div_if_loop_326_q = CondPosX_uid204_i_div_if_loop_326_q | CondNegX_uid202_i_div_if_loop_326_q | OverflowCond_uid201_i_div_if_loop_326_q;

    // resFinalIntDiv_uid210_i_div_if_loop_326(MUX,209)@62 + 1
    assign resFinalIntDiv_uid210_i_div_if_loop_326_s = postMuxSelect_uid205_i_div_if_loop_326_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (resFinalIntDiv_uid210_i_div_if_loop_326_s)
                1'b0 : resFinalIntDiv_uid210_i_div_if_loop_326_q <= redist36_resFinal_uid191_i_div_if_loop_326_q_9_q;
                1'b1 : resFinalIntDiv_uid210_i_div_if_loop_326_q <= redist34_resFinalPostMux_uid209_i_div_if_loop_326_b_1_q;
                default : resFinalIntDiv_uid210_i_div_if_loop_326_q <= 32'b0;
            endcase
        end
    end

    // redist65_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_23(DELAY,547)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist65_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_23_delay_0 <= $unsigned(redist64_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_21_mem_q);
            redist65_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_23_q <= redist65_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_23_delay_0;
        end
    end

    // i_cmp16_if_loop_323(COMPARE,52)@53 + 1
    assign i_cmp16_if_loop_323_a = $unsigned({{2{c_i32_173_recast_x_q[31]}}, c_i32_173_recast_x_q});
    assign i_cmp16_if_loop_323_b = $unsigned({{2{redist70_bgTrunc_i_sub_if_loop_322_sel_x_b_45_q[31]}}, redist70_bgTrunc_i_sub_if_loop_322_sel_x_b_45_q});
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_cmp16_if_loop_323_o <= $unsigned($signed(i_cmp16_if_loop_323_a) - $signed(i_cmp16_if_loop_323_b));
        end
    end
    assign i_cmp16_if_loop_323_c[0] = i_cmp16_if_loop_323_o[33];

    // redist79_i_cmp16_if_loop_323_c_10(DELAY,561)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist79_i_cmp16_if_loop_323_c_10 ( .xin(i_cmp16_if_loop_323_c), .xout(redist79_i_cmp16_if_loop_323_c_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_if_loop_327(MUX,45)@63
    assign i_acl_if_loop_327_s = redist79_i_cmp16_if_loop_323_c_10_q;
    always @(i_acl_if_loop_327_s or redist65_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_23_q or resFinalIntDiv_uid210_i_div_if_loop_326_q)
    begin
        unique case (i_acl_if_loop_327_s)
            1'b0 : i_acl_if_loop_327_q = redist65_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_30_i_llvm_fpga_pop_i32_sum_017_pop11_if_loop_325_mux_x_q_23_q;
            1'b1 : i_acl_if_loop_327_q = resFinalIntDiv_uid210_i_div_if_loop_326_q;
            default : i_acl_if_loop_327_q = 32'b0;
        endcase
    end

    // redist78_i_if_loop_3_b4_current_iter_isspec_if_loop_35_q_59(DELAY,560)
    dspba_delay_ver #( .width(1), .depth(59), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist78_i_if_loop_3_b4_current_iter_isspec_if_loop_35_q_59 ( .xin(i_if_loop_3_b4_current_iter_isspec_if_loop_35_q), .xout(redist78_i_if_loop_3_b4_current_iter_isspec_if_loop_35_q_59_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_ffwd_source_i32_unnamed_if_loop_315_if_loop_339(BLACKBOX,71)@63
    // out out_intel_reserved_ffwd_5_0@20000000
    if_loop_3_i_llvm_fpga_ffwd_source_i32_unnamed_15_if_loop_30 thei_llvm_fpga_ffwd_source_i32_unnamed_if_loop_315_if_loop_339 (
        .in_predicate_in(redist78_i_if_loop_3_b4_current_iter_isspec_if_loop_35_q_59_q),
        .in_src_data_in_5_0(i_acl_if_loop_327_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_intel_reserved_ffwd_5_0(i_llvm_fpga_ffwd_source_i32_unnamed_if_loop_315_if_loop_339_out_intel_reserved_ffwd_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,97)
    assign out_intel_reserved_ffwd_5_0 = i_llvm_fpga_ffwd_source_i32_unnamed_if_loop_315_if_loop_339_out_intel_reserved_ffwd_5_0;

    // dupName_1_regfree_osync_x(GPOUT,98)
    assign out_pipeline_dummy_out = i_llvm_fpga_pipeline_keep_going_if_loop_36_out_pipeline_dummy_out;

    // dupName_2_regfree_osync_x(GPOUT,99)
    assign out_pipeline_forked_out = i_llvm_fpga_pipeline_keep_going_if_loop_36_out_pipeline_forked_out;

    // dupName_3_regfree_osync_x(GPOUT,100)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_if_loop_36_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,211)@62 + 1
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist58_sync_together85_aunroll_x_in_i_valid_62_q);
        end
    end

    // i_notcmp_if_loop_337(LOGICAL,77)@63
    assign i_notcmp_if_loop_337_q = redist73_i_unnamed_if_loop_333_q_58_q ^ VCC_q;

    // redist73_i_unnamed_if_loop_333_q_58(DELAY,555)
    dspba_delay_ver #( .width(1), .depth(58), .reset_kind("NONE"), .phase(0), .modulus(2), .reset_high(1'b0) )
    redist73_i_unnamed_if_loop_333_q_58 ( .xin(i_unnamed_if_loop_333_q), .xout(redist73_i_unnamed_if_loop_333_q_58_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,148)@63
    assign out_c0_exi240_0_tpl = GND_q;
    assign out_c0_exi240_1_tpl = redist73_i_unnamed_if_loop_333_q_58_q;
    assign out_c0_exi240_2_tpl = i_notcmp_if_loop_337_q;
    assign out_if_loop_3_B4_current_iter_isspec = redist78_i_if_loop_3_b4_current_iter_isspec_if_loop_35_q_59_q;
    assign out_o_valid = valid_fanout_reg0_q;

endmodule
